uint64_t sub_1E18746F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  sub_1E13C0418(v3);

  sub_1E13C0418(v3);
  sub_1E13C045C(0);

  sub_1E13C045C(v3);

  sub_1E13C0418(v3);
  sub_1E13C045C(v3);

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1E18747E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  v6 = a6;
  v13 = *(a1 + 40);
  v12 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  if (!v13)
  {
    sub_1E13C0418(0);
    if (!a2)
    {
      sub_1E13C0418(0);
      sub_1E13C045C(0);
      v17 = 0;
      goto LABEL_22;
    }

    v24 = v6;
    sub_1E13C0418(a2);
    goto LABEL_12;
  }

  v24 = a6;
  if (!a2)
  {
    sub_1E13C0418(v13);
    sub_1E13C0418(0);
    sub_1E13C0418(v13);

LABEL_12:
    sub_1E13C045C(v13);
    v16 = a2;
LABEL_19:
    sub_1E13C045C(v16);
    goto LABEL_20;
  }

  sub_1E13C0418(v13);
  sub_1E13C0418(v13);
  sub_1E13C0418(a2);
  sub_1E13C0418(v13);
  if ((sub_1E15704CC(v13, a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!v14)
  {
    sub_1E13C045C(v13);
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (!a4)
  {
LABEL_16:
    sub_1E13C045C(v13);
LABEL_17:
    sub_1E13C045C(a2);
LABEL_18:

    v16 = v13;
    goto LABEL_19;
  }

  if (v12 == a3 && v14 == a4)
  {
    sub_1E13C045C(v13);
LABEL_15:
    sub_1E13C045C(a2);
    goto LABEL_31;
  }

  v23 = sub_1E1AF74AC();
  sub_1E13C045C(v13);
  sub_1E13C045C(a2);
  if ((v23 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_31:

  sub_1E13C045C(v13);
  if (((v15 ^ a5) & 1) == 0)
  {
    v17 = 0;
    goto LABEL_21;
  }

LABEL_20:
  v18 = *(a1 + 40);
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  *(a1 + 64) = a5;
  sub_1E13C0418(a2);
  sub_1E13C045C(v18);
  v17 = 1;
LABEL_21:
  v6 = v24;
LABEL_22:

  v20 = sub_1E14F9568(v19, v6);

  if ((v20 & 1) == 0)
  {
    *(a1 + 72) = v6;
  }

  v21 = *(a1 + 40);
  sub_1E13C0418(v21);

  sub_1E13C0418(v21);
  sub_1E13C045C(0);

  sub_1E13C045C(v21);

  if (v17 || (v20 & 1) == 0)
  {
    sub_1E1AF35BC();
    sub_1E13C045C(v21);
  }

  else
  {
    sub_1E13C045C(v21);
  }
}

uint64_t sub_1E1874C7C(uint64_t a1)
{
  if (qword_1EE1DCB90 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE1DCB98;
  v3 = qword_1EE1DCBA0;
  v4 = qword_1EE1DCBA8;
  v5 = qword_1EE1DCBB8;
  v6 = *(a1 + 40);
  *(a1 + 40) = qword_1EE1DCB98;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = byte_1EE1DCBB0;
  *(a1 + 72) = v5;
  sub_1E13C0418(v2);

  sub_1E13C045C(v6);

  v7 = *(a1 + 40);
  sub_1E13C0418(v7);

  sub_1E13C0418(v7);
  sub_1E13C045C(0);

  sub_1E13C045C(v7);

  sub_1E1AF35BC();
  sub_1E13C045C(v7);
}

uint64_t sub_1E1874E1C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E1AF320C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF324C();
  v9 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 80);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v11, v8, v12);
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);
}

uint64_t sub_1E18750C0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  if (!v2)
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_48:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5DE0);
      v11 = sub_1E1AF72CC();
      goto LABEL_49;
    }

LABEL_9:
    v11 = MEMORY[0x1E69E7CC8];
LABEL_49:
    *&v51 = v11;
    sub_1E1877424(v10, 1, &v51);

    *(v1 + 72) = v51;

    v42 = *(v1 + 40);
    v43 = *(v1 + 48);
    v44 = *(v1 + 56);
    v45 = *(v1 + 72);
    v46 = *(v1 + 64);
    sub_1E13C0418(v42);

    sub_1E13C0418(v42);
    sub_1E13C045C(0);

    sub_1E13C045C(v42);

    *&v51 = v42;
    *(&v51 + 1) = v43;
    *&v52 = v44;
    BYTE8(v52) = v46;
    *&v53 = v45;
    sub_1E1AF35BC();
    sub_1E13C045C(v42);
  }

  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    *&v51 = MEMORY[0x1E69E7CC0];

    sub_1E135CB28(0, v3, 0);
    v5 = 48;
    v6 = v51;
    do
    {
      v7 = *(v2 + v5);
      *&v51 = v6;
      v9 = v6[2];
      v8 = v6[3];

      if (v9 >= v8 >> 1)
      {
        sub_1E135CB28((v8 > 1), v9 + 1, 1);
        v6 = v51;
      }

      v6[2] = v9 + 1;
      v6[v9 + 4] = v7;
      v5 += 24;
      --v3;
    }

    while (v3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v12 = v6[2];
  v13 = v6 + 4;
  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v15 = *(v13[v14] + 16);
      v16 = v15 == 0;
      if (v15)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v14 = v6[2];
        break;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_1E1876ED0(v14, 0, v16, v12, 0, 1, v6);
  if (!v17)
  {

    v10 = MEMORY[0x1E69E7CC0];
LABEL_47:
    v1 = a1;
    if (*(v10 + 16))
    {
      goto LABEL_48;
    }

    goto LABEL_9;
  }

  v18 = v17;
  v60 = v4;
  sub_1E135CB08(0, v17 & ~(v17 >> 63), 0);
  v19 = v6[2];
  if (v19)
  {
    v20 = 0;
    while (1)
    {
      v21 = *(v13[v20] + 16);
      v22 = v21 == 0;
      if (v21)
      {
        break;
      }

      if (v19 == ++v20)
      {
        v20 = v6[2];
        break;
      }
    }
  }

  else
  {
    v20 = 0;
    v22 = 1;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v24 = 0;
    v10 = v60;
    while (v23 < v18)
    {
      v25 = __OFADD__(v23++, 1);
      if (v25)
      {
        goto LABEL_51;
      }

      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_52;
      }

      if (v20 >= v6[2])
      {
        goto LABEL_53;
      }

      if (v22)
      {
        goto LABEL_58;
      }

      v26 = v13[v20];
      if (v24 >= *(v26 + 16))
      {
        goto LABEL_54;
      }

      sub_1E141D0E8(v26 + 136 * v24 + 32, v49);
      sub_1E141D0E8(v49, &v51);
      v27 = v50;

      sub_1E141D144(v49);
      *(&v59 + 1) = v27;
      v60 = v10;
      v29 = *(v10 + 16);
      v28 = *(v10 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1E135CB08((v28 > 1), v29 + 1, 1);
        v10 = v60;
      }

      *(v10 + 16) = v29 + 1;
      v30 = (v10 + 144 * v29);
      v30[2] = v51;
      v31 = v52;
      v32 = v53;
      v33 = v55;
      v30[5] = v54;
      v30[6] = v33;
      v30[3] = v31;
      v30[4] = v32;
      v34 = v56;
      v35 = v57;
      v36 = v59;
      v30[9] = v58;
      v30[10] = v36;
      v30[7] = v34;
      v30[8] = v35;
      v37 = v6[2];
      if (v20 >= v37)
      {
        goto LABEL_55;
      }

      if (++v24 == *(v13[v20] + 16))
      {
        ++v20;
        while (1)
        {
          v22 = v20 == v37;
          if (v20 == v37)
          {
            v24 = 0;
            v20 = v37;
            goto LABEL_37;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA610);
          sub_1E1302CD4(&qword_1ECEBA618, &qword_1ECEBA610);
          v38 = sub_1E1545FB4(&v51, v20, v6);
          v40 = *v39;

          (v38)(&v51, 0);
          v41 = *(v40 + 16);

          if (v41)
          {
            break;
          }

          v25 = __OFADD__(v20++, 1);
          if (v25)
          {
            goto LABEL_57;
          }
        }

        v24 = 0;
      }

      else
      {
        v22 = 0;
      }

LABEL_37:
      if (v23 == v18)
      {

        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t PageFacetsPresenter.didSelect(option:in:)(__int128 *a1, uint64_t a2)
{
  v5 = sub_1E1AF320C();
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E1AF324C();
  v8 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v29 = *a1;
  v30 = v11;
  v12 = a1[3];
  v31 = a1[2];
  v32 = v12;
  v22 = *(v2 + 80);
  sub_1E141D0E8(a2, v27);
  v13 = swift_allocObject();
  v14 = v27[4];
  *(v13 + 104) = v27[5];
  v15 = v27[7];
  *(v13 + 120) = v27[6];
  *(v13 + 136) = v15;
  v16 = v27[0];
  *(v13 + 40) = v27[1];
  v17 = v27[3];
  *(v13 + 56) = v27[2];
  *(v13 + 72) = v17;
  *(v13 + 16) = v2;
  *(v13 + 152) = v28;
  *(v13 + 88) = v14;
  *(v13 + 24) = v16;
  v18 = v30;
  *(v13 + 160) = v29;
  *(v13 + 176) = v18;
  v19 = v32;
  *(v13 + 192) = v31;
  *(v13 + 208) = v19;
  v26[4] = sub_1E18772F0;
  v26[5] = v13;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 1107296256;
  v26[2] = sub_1E1302D64;
  v26[3] = &block_descriptor_12_3;
  v20 = _Block_copy(v26);

  sub_1E134FD1C(&v29, v25, &qword_1ECEB9F70);
  sub_1E1AF322C();
  v25[0] = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v10, v7, v20);
  _Block_release(v20);
  (*(v24 + 8))(v7, v5);
  (*(v8 + 8))(v10, v23);
}

uint64_t sub_1E1875938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v10 = *(a1 + 64);
  sub_1E13C0418(v6);

  sub_1E13C0418(v6);
  sub_1E13C045C(0);
  v65 = v6;
  v66 = v7;
  v67 = v8;
  v68 = v10;

  sub_1E13C045C(v6);

  v69 = v9;
  v49 = a2;
  if (!*(v9 + 16) || (v11 = sub_1E15951A4(a2), (v12 & 1) == 0))
  {
    v17 = *(a3 + 24);
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2630);
      v18 = swift_allocObject();
      v19 = *a3;
      *(v18 + 16) = xmmword_1E1B02CC0;
      *(v18 + 32) = v19;
      *(v18 + 48) = *(a3 + 16);
      *(v18 + 56) = v17;
      v20 = *(a3 + 48);
      *(v18 + 64) = *(a3 + 32);
      *(v18 + 80) = v20;
      sub_1E134FD1C(a3, &v56, &qword_1ECEB9F70);
      v21 = sub_1E14984B8(v18);
      swift_setDeallocating();
      sub_1E13C5094(v18 + 32);
      swift_deallocClassInstance();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v9;
      v23 = v21;
LABEL_12:
      sub_1E15998E0(v23, a2, isUniquelyReferenced_nonNull_native);
      v69 = v56;
      goto LABEL_13;
    }

LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v9;
    v23 = MEMORY[0x1E69E7CD0];
    goto LABEL_12;
  }

  v13 = *(a3 + 24);
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = *(*(v9 + 56) + 8 * v11);
  v70 = *a3;
  *&v71 = *(a3 + 16);
  *(&v71 + 1) = v13;
  v15 = *(a3 + 48);
  v72 = *(a3 + 32);
  v73 = v15;
  if (!*(a2 + 48))
  {
    if (!*(v14 + 16))
    {

      v46 = sub_1E13C4838(v48);

      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if (*(a2 + 48) != 1)
  {

    sub_1E134FD1C(a3, &v56, &qword_1ECEB9F70);
    v37 = sub_1E14AB4B0(&v70, v14);

    if (v37)
    {
      sub_1E141D0E8(a2, &v56);
      v38 = sub_1E1A0C654(v55, &v56);
      if (*v39)
      {
        sub_1E154E7FC(&v70, &v61);
        sub_1E1308058(a3, &qword_1ECEB9F70);
        v51 = v61;
        v52 = v62;
        v53 = v63;
        v54 = v64;
        v40 = &v51;
LABEL_26:
        sub_1E1308058(v40, &qword_1ECEB9F70);
        goto LABEL_27;
      }
    }

    else
    {
      sub_1E141D0E8(a2, &v56);
      v38 = sub_1E1A0C654(v55, &v56);
      if (*v47)
      {
        sub_1E1893960(&v61, &v70);
        v51 = v61;
        v52 = v62;
        v53 = v63;
        v54 = v64;
        sub_1E13C5094(&v51);
LABEL_27:
        (v38)(v55, 0);
        sub_1E141D144(&v56);
        goto LABEL_13;
      }
    }

    v40 = a3;
    goto LABEL_26;
  }

  sub_1E134FD1C(a3, &v56, &qword_1ECEB9F70);
  v16 = sub_1E14AB4B0(&v70, v14);

  if ((v16 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2630);
    v41 = swift_allocObject();
    v42 = v70;
    v43 = v71;
    v41[1] = xmmword_1E1B02CC0;
    v41[2] = v42;
    v44 = v72;
    v45 = v73;
    v41[3] = v43;
    v41[4] = v44;
    v41[5] = v45;
    v46 = sub_1E14984B8(v41);
    swift_setDeallocating();
    sub_1E13C5094((v41 + 2));
    swift_deallocClassInstance();
LABEL_24:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v9;
    v23 = v46;
    goto LABEL_12;
  }

  sub_1E1308058(a3, &qword_1ECEB9F70);
LABEL_13:
  v25 = v65;
  v24 = v66;
  v26 = v67;
  v27 = v69;
  v56 = v65;
  v57 = v66;
  v58 = v67;
  v59 = v68;
  v60 = v69;
  v28 = *(a1 + 40);
  v29 = *(a1 + 48);
  v30 = *(a1 + 56);
  v31 = a1;
  v32 = *(a1 + 72);
  v33 = *(v31 + 64);
  *&v61 = v28;
  *(&v61 + 1) = v29;
  *&v62 = v30;
  BYTE8(v62) = v33;
  *&v63 = v32;
  v50 = v68;
  sub_1E13C0418(v65);

  sub_1E13C0418(v28);

  v34 = _s11AppStoreKit19PageFacetsPresenterC0E5StateV2eeoiySbAE_AEtFZ_0(&v56, &v61);
  sub_1E13C045C(v61);

  sub_1E13C045C(v56);

  if ((v34 & 1) == 0)
  {
    v35 = *(v31 + 40);
    *(v31 + 40) = v25;
    *(v31 + 48) = v24;
    *(v31 + 56) = v26;
    *(v31 + 64) = v50;
    *(v31 + 72) = v27;
    sub_1E13C0418(v25);

    sub_1E13C045C(v35);

    v56 = v25;
    v57 = v24;
    v58 = v26;
    v59 = v50;
    v60 = v27;
    sub_1E13C0418(v25);

    sub_1E1AF35BC();
    sub_1E13C045C(v56);

    if (*(v49 + 96))
    {
      v56 = *(v49 + 96);

      sub_1E1AF5BCC();
    }
  }

  sub_1E13C045C(v25);
}

uint64_t sub_1E1875F94(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  sub_1E1AF690C();
  return v2;
}

uint64_t sub_1E1875FEC@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  v39 = sub_1E15A0538(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 72);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v38 = v4;

  v11 = 0;
  v36 = v9;
  v37 = v5;
  while (v8)
  {
LABEL_12:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v11 << 6);
    sub_1E141D0E8(*(v38 + 48) + 136 * v15, v47);
    v16 = *(*(v38 + 56) + 8 * v15);
    v44[6] = v47[6];
    v44[7] = v47[7];
    v44[2] = v47[2];
    v44[3] = v47[3];
    v44[4] = v47[4];
    v44[5] = v47[5];
    v44[0] = v47[0];
    v44[1] = v47[1];
    v45 = v48;
    v46 = v16;
    v17 = 1 << *(v16 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v16 + 56);
    v20 = (v17 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v21 = 0;
    v49 = v3;
    while (v19)
    {
LABEL_21:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v24 = (*(v16 + 48) + ((v21 << 12) | (v23 << 6)));
      result = v24[7];
      if (result)
      {
        v35 = v24[6];
        v25 = v24[7];
LABEL_25:

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1E130C06C(0, *(v49 + 2) + 1, 1, v49);
          v49 = result;
        }

        v27 = *(v49 + 2);
        v26 = *(v49 + 3);
        v28 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          result = sub_1E130C06C((v26 > 1), v27 + 1, 1, v49);
          v28 = v27 + 1;
          v49 = result;
        }

        v29 = v49;
        *(v49 + 2) = v28;
        v30 = &v29[16 * v27];
        *(v30 + 4) = v35;
        *(v30 + 5) = v25;
        v3 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v25 = v24[1];
        if (v25)
        {
          v35 = *v24;

          goto LABEL_25;
        }
      }
    }

    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v22 >= v20)
      {
        break;
      }

      v19 = *(v16 + 56 + 8 * v22);
      ++v21;
      if (v19)
      {
        v21 = v22;
        goto LABEL_21;
      }
    }

    v31 = v49;
    if (*(v49 + 2))
    {
      sub_1E134FD1C(v44, v43, &qword_1ECEB7580);

      v33 = v43[9];
      v32 = v43[10];

      sub_1E141D144(v43);
      if (!v32)
      {
        sub_1E134FD1C(v44, v40, &qword_1ECEB7580);

        v33 = v41;
        v32 = v42;

        sub_1E141D144(v40);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43[0] = v39;
      sub_1E159C288(v31, v33, v32, isUniquelyReferenced_nonNull_native);

      v39 = v43[0];
      v9 = v36;
    }

    else
    {

      v9 = v36;
    }

    result = sub_1E1308058(v44, &qword_1ECEB7580);
    v5 = v37;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      *a2 = v39;
      return result;
    }

    v8 = *(v5 + 8 * v13);
    ++v11;
    if (v8)
    {
      v11 = v13;
      goto LABEL_12;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t static PageFacetsPresenter.selectedFacetsTitle(for:)(uint64_t *a1)
{
  v2 = a1[4];
  if (!v2 || (v3 = *a1, v4 = a1[3], v46 = *a1, v47 = *(a1 + 1), v48 = v4, v49 = v2, !*(v2 + 16)))
  {
LABEL_47:
    v30._object = 0x80000001E1B79FE0;
    v30._countAndFlagsBits = 0xD000000000000029;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    return localizedString(_:comment:)(v30, v31)._countAndFlagsBits;
  }

  if (!v3)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_44:
    v29 = *(v17 + 2);
    if (v29 == 1)
    {
      v33 = *(v17 + 4);

      return v33;
    }

    if (v29)
    {

      v34._object = 0x80000001E1B7A010;
      v34._countAndFlagsBits = 0xD000000000000029;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      localizedString(_:comment:)(v34, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1E1B02CC0;
      v37 = objc_opt_self();
      v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v39 = [v37 localizedStringFromNumber:v38 numberStyle:0];

      v40 = sub_1E1AF5DFC();
      v42 = v41;

      *(v36 + 56) = MEMORY[0x1E69E6158];
      *(v36 + 64) = sub_1E13C2F48();
      *(v36 + 32) = v40;
      *(v36 + 40) = v42;
      v43 = sub_1E1AF5E3C();

      return v43;
    }

    goto LABEL_47;
  }

  v5 = *(v3 + 16);
  if (!v5)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v18 = *(v8 + 2);
    if (v18)
    {
      v19 = 0;
      v1 = 0;
      v20 = (v8 + 32);
      v17 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v19 >= *(v8 + 2))
        {
          goto LABEL_54;
        }

        sub_1E141D0E8(v20, v45);
        sub_1E18767E0(v45, &v46, &v44);
        sub_1E141D144(v45);
        v21 = v44;
        v22 = *(v44 + 16);
        v23 = *(v17 + 2);
        v24 = v23 + v22;
        if (__OFADD__(v23, v22))
        {
          goto LABEL_55;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v24 <= *(v17 + 3) >> 1)
        {
          if (!*(v21 + 16))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v23 <= v24)
          {
            v26 = v23 + v22;
          }

          else
          {
            v26 = v23;
          }

          v17 = sub_1E130C06C(isUniquelyReferenced_nonNull_native, v26, 1, v17);
          if (!*(v21 + 16))
          {
LABEL_26:

            if (v22)
            {
              goto LABEL_56;
            }

            goto LABEL_27;
          }
        }

        if ((*(v17 + 3) >> 1) - *(v17 + 2) < v22)
        {
          goto LABEL_58;
        }

        swift_arrayInitWithCopy();

        if (v22)
        {
          v27 = *(v17 + 2);
          v15 = __OFADD__(v27, v22);
          v28 = v27 + v22;
          if (v15)
          {
            goto LABEL_60;
          }

          *(v17 + 2) = v28;
        }

LABEL_27:
        ++v19;
        v20 += 136;
        if (v18 == v19)
        {
          goto LABEL_43;
        }
      }
    }

    v17 = MEMORY[0x1E69E7CC0];
LABEL_43:

    goto LABEL_44;
  }

  v6 = 0;
  v7 = (v3 + 48);
  v8 = MEMORY[0x1E69E7CC0];
  while (v6 < *(v3 + 16))
  {
    v9 = *v7;
    v1 = *(*v7 + 16);
    v10 = *(v8 + 2);
    v11 = &v1[v10];
    if (__OFADD__(v10, v1))
    {
      goto LABEL_52;
    }

    v12 = swift_isUniquelyReferenced_nonNull_native();
    if (v12 && v11 <= *(v8 + 3) >> 1)
    {
      if (!*(v9 + 16))
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v13 = &v1[v10];
      }

      else
      {
        v13 = v10;
      }

      v8 = sub_1E172DFB0(v12, v13, 1, v8);
      if (!*(v9 + 16))
      {
LABEL_6:

        if (v1)
        {
          goto LABEL_53;
        }

        goto LABEL_7;
      }
    }

    if ((*(v8 + 3) >> 1) - *(v8 + 2) < v1)
    {
      goto LABEL_57;
    }

    swift_arrayInitWithCopy();

    if (v1)
    {
      v14 = *(v8 + 2);
      v15 = __OFADD__(v14, v1);
      v16 = &v1[v14];
      if (v15)
      {
        goto LABEL_59;
      }

      *(v8 + 2) = v16;
    }

LABEL_7:
    ++v6;
    v7 += 3;
    if (v5 == v6)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
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
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);

  sub_1E141D144(v45);

  __break(1u);
  return result;
}

uint64_t sub_1E18767E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = result;
  v5 = *(a2 + 32);
  if (!*(v5 + 16) || (result = sub_1E15951A4(result), (v6 & 1) == 0) || (v7 = *(*(v5 + 56) + 8 * result), !*(v7 + 16)))
  {
    if (*(*(v3 + 64) + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1E1B02CC0;
      v11 = *(v3 + 40);
      *(v10 + 32) = *(v3 + 32);
      *(v10 + 40) = v11;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    *a3 = v10;
    return result;
  }

  v8 = *(v3 + 64);

  result = sub_1E16B0884(v9, v8);
  if (result)
  {

LABEL_6:
    *a3 = MEMORY[0x1E69E7CC0];
    return result;
  }

  if (!*(v3 + 48))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1E1B02CC0;
    v50 = *(v3 + 40);
    *(v49 + 32) = *(v3 + 32);
    *(v49 + 40) = v50;
    *a3 = v49;
  }

  v12 = *(v3 + 56);
  v64 = *(v12 + 16);
  if (!v64)
  {
    v59 = MEMORY[0x1E69E7CC0];
    goto LABEL_68;
  }

  v13 = 0;
  v62 = v12 + 32;
  v77 = v7 + 56;
  v59 = MEMORY[0x1E69E7CC0];
  v60 = v12;
  v61 = a3;
  v63 = v7;
  do
  {
    while (1)
    {
      if (v13 >= *(v12 + 16))
      {
        __break(1u);
        return result;
      }

      v14 = (v62 + (v13 << 6));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[3];
      v74 = v14[2];
      v75 = v17;
      v72 = v15;
      v73 = v16;
      ++v13;
      if (*(v7 + 16))
      {
        break;
      }

LABEL_16:
      if (v13 == v64)
      {
        goto LABEL_68;
      }
    }

    sub_1E1AF762C();
    v18 = v72;
    if (*(&v72 + 1))
    {
      sub_1E1AF764C();
      sub_1E13C5038(&v72, v70);
      sub_1E1AF5F0C();
    }

    else
    {
      sub_1E1AF764C();
      sub_1E13C5038(&v72, v70);
    }

    v19 = v74;
    v68 = *(&v73 + 1);
    v69 = v73;
    sub_1E1AF5F0C();
    sub_1E1AF764C();
    if (*(&v19 + 1))
    {
      sub_1E1AF5F0C();
    }

    v65 = v13;
    v67 = *(&v75 + 1);
    v66 = v75;
    if (*(&v75 + 1))
    {
      sub_1E1AF764C();
      sub_1E1AF5F0C();
    }

    else
    {
      sub_1E1AF764C();
    }

    v20 = sub_1E1AF767C();
    v21 = -1 << *(v7 + 32);
    v22 = v20 & ~v21;
    v23 = *(&v18 + 1);
    if (((*(v77 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_15:
      result = sub_1E13C5094(&v72);
      a3 = v61;
      v7 = v63;
      v12 = v60;
      v13 = v65;
      goto LABEL_16;
    }

    v24 = ~v21;
    v25 = *(v63 + 48);
    while (1)
    {
      v26 = (v25 + (v22 << 6));
      v27 = v26[1];
      v28 = v26[2];
      v29 = v26[3];
      v30 = v26[4];
      v32 = v26[5];
      v31 = v26[6];
      v33 = v26[7];
      if (v27)
      {
        if (!v23)
        {
          goto LABEL_30;
        }

        if (*v26 != v18 || v27 != v23)
        {
          v35 = sub_1E1AF74AC();
          v23 = *(&v18 + 1);
          if ((v35 & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else if (v23)
      {
        goto LABEL_30;
      }

      if (v28 != v69 || v29 != v68)
      {
        v37 = sub_1E1AF74AC();
        v23 = *(&v18 + 1);
        if ((v37 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      if (v32)
      {
        if (!*(&v19 + 1))
        {
          goto LABEL_30;
        }

        if (v30 != v19 || v32 != *(&v19 + 1))
        {
          v39 = sub_1E1AF74AC();
          v23 = *(&v18 + 1);
          if ((v39 & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else if (*(&v19 + 1))
      {
        goto LABEL_30;
      }

      if (v33)
      {
        break;
      }

      if (!v67)
      {
        goto LABEL_14;
      }

LABEL_30:
      v22 = (v22 + 1) & v24;
      if (((*(v77 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (!v67)
    {
      goto LABEL_30;
    }

    if (v31 != v66 || v33 != v67)
    {
      v40 = sub_1E1AF74AC();
      v23 = *(&v18 + 1);
      if ((v40 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

LABEL_14:
    if (!v23)
    {
      goto LABEL_15;
    }

    v41 = v59;
    result = swift_isUniquelyReferenced_nonNull_native();
    v76 = v59;
    a3 = v61;
    if ((result & 1) == 0)
    {
      result = sub_1E135CB68(0, *(v59 + 16) + 1, 1);
      v41 = v76;
    }

    v43 = *(v41 + 16);
    v42 = *(v41 + 24);
    v44 = v41;
    if (v43 >= v42 >> 1)
    {
      result = sub_1E135CB68((v42 > 1), v43 + 1, 1);
      v44 = v76;
    }

    *(v44 + 16) = v43 + 1;
    v59 = v44;
    v45 = (v44 + (v43 << 6));
    v46 = v72;
    v47 = v73;
    v48 = v75;
    v45[4] = v74;
    v45[5] = v48;
    v45[2] = v46;
    v45[3] = v47;
    v13 = v65;
    v7 = v63;
    v12 = v60;
  }

  while (v65 != v64);
LABEL_68:

  v51 = *(v59 + 16);
  if (!v51)
  {

    goto LABEL_6;
  }

  v71 = MEMORY[0x1E69E7CC0];
  sub_1E135C088(0, v51, 0);
  v52 = v71;
  v53 = (v59 + 56);
  do
  {
    v55 = *(v53 - 1);
    v54 = *v53;
    v71 = v52;
    v57 = *(v52 + 16);
    v56 = *(v52 + 24);

    if (v57 >= v56 >> 1)
    {
      sub_1E135C088((v56 > 1), v57 + 1, 1);
      v52 = v71;
    }

    *(v52 + 16) = v57 + 1;
    v58 = v52 + 16 * v57;
    *(v58 + 32) = v55;
    *(v58 + 40) = v54;
    v53 += 8;
    --v51;
  }

  while (v51);

  *a3 = v52;
  return result;
}

uint64_t PageFacetsPresenter.deinit()
{

  sub_1E13C045C(*(v0 + 40));

  return v0;
}

uint64_t PageFacetsPresenter.__deallocating_deinit()
{

  sub_1E13C045C(*(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1E1876E5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA608);
  sub_1E1AF690C();
  return v1;
}

unint64_t sub_1E1876ED0(unint64_t result, uint64_t a2, char a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a4 != result)
  {
    v7 = result;
    if (a4 >= result)
    {
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v8 = *(a7 + 16);
      if (v8 <= result)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (a3)
      {
LABEL_50:
        __break(1u);
        return result;
      }

      v12 = *(*(a7 + 8 * result + 32) + 16);
      result = v12 - a2;
      if (__OFSUB__(v12, a2))
      {
        goto LABEL_45;
      }

      v10 = 1;
      a2 = a5;
      a3 = a6;
      v11 = a4;
      a4 = v7;
    }

    else
    {
      if ((a4 & 0x8000000000000000) != 0)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v8 = *(a7 + 16);
      if (v8 <= a4)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (a6)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v9 = *(*(a7 + 8 * a4 + 32) + 16);
      result = a5 - v9;
      if (__OFSUB__(a5, v9))
      {
        goto LABEL_43;
      }

      v10 = -1;
      v11 = v7;
    }

    v13 = a4 + 1;
    if ((a4 + 1) >= v11)
    {
LABEL_27:
      if (a3)
      {
        return result;
      }

      if (v11 < 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v11 >= v8)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v16 = __OFADD__(result, a2 * v10);
      result += a2 * v10;
      if (!v16)
      {
        return result;
      }

      __break(1u);
    }

    else
    {
      v14 = a7 + 8 * a4 + 40;
      while (v13 < v8)
      {
        v15 = *(*v14 + 16) * v10;
        v16 = __OFADD__(result, v15);
        result += v15;
        if (v16)
        {
          goto LABEL_34;
        }

        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_35;
        }

        ++v13;
        v14 += 8;
        if (v17 >= v11)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a6)
  {
    if (a3)
    {
      return 0;
    }

    goto LABEL_36;
  }

  if (a3)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

  if (*(a7 + 16) <= a4)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  result = a5 - a2;
  if (__OFSUB__(a5, a2))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  return result;
}

uint64_t _s11AppStoreKit19PageFacetsPresenterC0E5StateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (*a1)
  {
    v12 = *a1;
    if (v8)
    {
      sub_1E13C0418(v12);
      sub_1E13C0418(v8);
      sub_1E13C0418(v3);
      if (sub_1E15704CC(v3, v8))
      {
        if (v4)
        {
          if (v9)
          {
            if (v2 == v7 && v4 == v9)
            {
              v13 = v8;
LABEL_22:
              sub_1E13C045C(v13);
              goto LABEL_23;
            }

            v16 = sub_1E1AF74AC();
            sub_1E13C045C(v8);
            if (v16)
            {
LABEL_23:

              sub_1E13C045C(v3);
              if (((v5 ^ v10) & 1) == 0)
              {
                goto LABEL_24;
              }

              return 0;
            }

            goto LABEL_16;
          }
        }

        else if (!v9)
        {
          v13 = v8;
          goto LABEL_22;
        }
      }

      sub_1E13C045C(v8);
LABEL_16:

      v14 = v3;
      goto LABEL_17;
    }

    sub_1E13C0418(v12);
    sub_1E13C0418(0);
    sub_1E13C0418(v3);

LABEL_12:
    sub_1E13C045C(v3);
    v14 = v8;
LABEL_17:
    sub_1E13C045C(v14);
    return 0;
  }

  sub_1E13C0418(0);
  if (v8)
  {
    sub_1E13C0418(v8);
    goto LABEL_12;
  }

  sub_1E13C0418(0);
  sub_1E13C045C(0);
LABEL_24:

  return sub_1E14F9568(v6, v11);
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit10PageFacetsVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E1877384(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E18773CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E1877424(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  sub_1E134FD1C(result + 32, &v56, &qword_1ECEB2640);
  v53 = v62;
  v54 = v63;
  v7 = v65;
  v55 = v64;
  v49 = v58;
  v50 = v59;
  v51 = v60;
  v52 = v61;
  v47 = v56;
  v48 = v57;
  v8 = *a3;
  result = sub_1E15951A4(&v47);
  v10 = v8[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v14) = v9;
  if (v8[3] < v13)
  {
    sub_1E168ACD4(v13, v5 & 1);
    result = sub_1E15951A4(&v47);
    if ((v14 & 1) == (v15 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1E1AF757C();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v16 = *a3;
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_11:
    v16[(result >> 6) + 8] |= 1 << result;
    v20 = v16[6] + 136 * result;
    v22 = v50;
    v21 = v51;
    v23 = v49;
    *(v20 + 16) = v48;
    *(v20 + 32) = v23;
    *(v20 + 48) = v22;
    *(v20 + 64) = v21;
    *v20 = v47;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    *(v20 + 128) = v55;
    *(v20 + 96) = v25;
    *(v20 + 112) = v26;
    *(v20 + 80) = v24;
    *(v16[7] + 8 * result) = v7;
    v27 = v16[2];
    v12 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v12)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v16[2] = v28;
    v18 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v19 = result;
  sub_1E1417014();
  result = v19;
  v16 = *a3;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = result;
  sub_1E141D144(&v47);
  *(v16[7] + 8 * v17) = v7;

  v18 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v6 += 176;
    v5 = &qword_1ECEB2640;
    v7 = 136;
    v14 = &unk_1E1B3AB50;
    while (1)
    {
      sub_1E134FD1C(v6, &v56, &qword_1ECEB2640);
      v53 = v62;
      v54 = v63;
      v30 = v65;
      v55 = v64;
      v49 = v58;
      v50 = v59;
      v51 = v60;
      v52 = v61;
      v47 = v56;
      v48 = v57;
      v31 = *a3;
      result = sub_1E15951A4(&v47);
      v33 = v31[2];
      v34 = (v32 & 1) == 0;
      v12 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v12)
      {
        goto LABEL_23;
      }

      v3 = v32;
      if (v31[3] < v35)
      {
        sub_1E168ACD4(v35, 1);
        result = sub_1E15951A4(&v47);
        if ((v3 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      v37 = *a3;
      if (v3)
      {
        v29 = result;
        sub_1E141D144(&v47);
        *(v37[7] + 8 * v29) = v30;
      }

      else
      {
        v37[(result >> 6) + 8] |= 1 << result;
        v38 = v37[6] + 136 * result;
        v40 = v50;
        v39 = v51;
        v41 = v49;
        *(v38 + 16) = v48;
        *(v38 + 32) = v41;
        *(v38 + 48) = v40;
        *(v38 + 64) = v39;
        *v38 = v47;
        v42 = v52;
        v43 = v53;
        v44 = v54;
        *(v38 + 128) = v55;
        *(v38 + 96) = v43;
        *(v38 + 112) = v44;
        *(v38 + 80) = v42;
        *(v37[7] + 8 * result) = v30;
        v45 = v37[2];
        v12 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v12)
        {
          goto LABEL_24;
        }

        v37[2] = v46;
      }

      v6 += 144;
      if (!--v18)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t ReviewSummary.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ReviewSummary.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ReviewSummary.SubtitleArtworkAlignment.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E696C69617274;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_1E187783C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E696C69617274;
  }

  else
  {
    v3 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E696C69617274;
  }

  else
  {
    v5 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
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

uint64_t sub_1E18778E4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1877968()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E18779D8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1877A64(uint64_t *a1@<X8>)
{
  v2 = 0x676E696461656CLL;
  if (*v1)
  {
    v2 = 0x676E696C69617274;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ReviewSummary.__allocating_init(id:attributedBodyWithTitle:attributedBodyWithoutTitle:subtitle:subtitleArtwork:subtitleArtworkAlignment:flowPreviewActionsConfiguration:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9)
{
  v36 = a4;
  v37 = a5;
  v34 = a2;
  v35 = a3;
  v13 = a9;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v33 = *a7;
  v19 = v18 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_id;
  sub_1E134FD1C(a1, &v40, &unk_1ECEB5670);
  if (*(&v41 + 1))
  {
    v20 = v41;
    *v19 = v40;
    *(v19 + 16) = v20;
    *(v19 + 32) = v42;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v32 = a6;
    v22 = a8;
    v24 = v23;
    (*(v15 + 8))(v17, v14);
    v38 = v21;
    v39 = v24;
    a8 = v22;
    v13 = a9;
    a6 = v32;
    sub_1E1AF6F6C();
    sub_1E1308058(&v40, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v25 = OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_attributedBodyWithTitle;
  v26 = sub_1E1AEF91C();
  v27 = *(*(v26 - 8) + 32);
  v27(v18 + v25, v34, v26);
  v27(v18 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_attributedBodyWithoutTitle, v35, v26);
  v28 = (v18 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_subtitle);
  v29 = v37;
  *v28 = v36;
  v28[1] = v29;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_subtitleArtwork) = a6;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_subtitleArtworkAlignment) = v33;
  sub_1E134B7C8(v13, v18 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_impressionMetrics);
  *(v18 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_flowPreviewActionsConfiguration) = a8;
  return v18;
}

uint64_t ReviewSummary.init(id:attributedBodyWithTitle:attributedBodyWithoutTitle:subtitle:subtitleArtwork:subtitleArtworkAlignment:flowPreviewActionsConfiguration:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v35 = a9;
  v36 = a8;
  v15 = sub_1E1AEFEAC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a7;
  sub_1E134FD1C(a1, &v39, &unk_1ECEB5670);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v22 = v21;
    (*(v16 + 8))(v18, v15);
    v37 = v20;
    v38 = v22;
    sub_1E1AF6F6C();
    sub_1E1308058(&v39, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v23 = v10 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_id;
  v24 = v43;
  *v23 = v42;
  *(v23 + 16) = v24;
  *(v23 + 32) = v44;
  v25 = OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_attributedBodyWithTitle;
  v26 = sub_1E1AEF91C();
  v27 = *(*(v26 - 8) + 32);
  v27(v10 + v25, a2, v26);
  v27(v10 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_attributedBodyWithoutTitle, a3, v26);
  v28 = (v10 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_subtitle);
  v29 = v33;
  *v28 = v32;
  v28[1] = v29;
  v30 = v35;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_subtitleArtwork) = v34;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_subtitleArtworkAlignment) = v19;
  sub_1E134B7C8(v30, v10 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_impressionMetrics);
  *(v10 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_flowPreviewActionsConfiguration) = v36;
  return v10;
}

char *ReviewSummary.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v146 = a2;
  v5 = *v3;
  v149 = v3;
  v144 = v5;
  v147 = sub_1E1AF39DC();
  v145 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v124 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v123 = &v110 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v128 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v132 = &v110 - v12;
  v139 = sub_1E1AEF81C();
  v135 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v134 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1E1AEF82C();
  v133 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v138 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AEF84C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v126 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v130 = &v110 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B50);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v127 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v131 = &v110 - v22;
  v137 = sub_1E1AEF91C();
  v140 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v125 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v129 = &v110 - v25;
  v26 = sub_1E1AEFEAC();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_1E1AF380C();
  v30 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v122 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v141 = &v110 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v110 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v110 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v110 - v41;
  v148 = a1;
  sub_1E1AF381C();
  v43 = sub_1E1AF37CC();
  if (v44)
  {
    v150 = v43;
    v151 = v44;
  }

  else
  {
    sub_1E1AEFE9C();
    v45 = sub_1E1AEFE7C();
    v47 = v46;
    (*(v27 + 8))(v29, v26);
    v150 = v45;
    v151 = v47;
  }

  sub_1E1AF6F6C();
  v48 = *(v30 + 8);
  v49 = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48(v42, v155);
  v50 = v148;
  v51 = &v149[OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_id];
  v52 = v153;
  *v51 = v152;
  *(v51 + 16) = v52;
  v143 = v51;
  *(v51 + 32) = v154;
  sub_1E1AF381C();
  v53 = sub_1E1AF37CC();
  v55 = v54;
  v48(v39, v155);
  if (!v55)
  {
    v74 = sub_1E1AF5A7C();
    sub_1E1879E74(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v75 = 2036625250;
    v75[1] = 0xE400000000000000;
    v75[2] = v144;
    (*(*(v74 - 8) + 104))(v75, *MEMORY[0x1E69AB690], v74);
    swift_willThrow();
    (*(v145 + 8))(v146, v147);
    v48(v50, v155);
    goto LABEL_13;
  }

  v121 = v53;
  sub_1E1AF381C();
  v119 = sub_1E1AF37CC();
  v57 = v56;
  v58 = v155;
  v48(v36, v155);
  if (!v57)
  {

    v76 = sub_1E1AF5A7C();
    sub_1E1879E74(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    v78 = v50;
    swift_allocError();
    v79 = v77;
    *v77 = 0x69546F4E79646F62;
    v80 = 0xEB00000000656C74;
LABEL_12:
    v81 = v144;
    v77[1] = v80;
    v77[2] = v81;
    (*(*(v76 - 8) + 104))(v79, *MEMORY[0x1E69AB690], v76);
    swift_willThrow();
    (*(v145 + 8))(v146, v147);
    v48(v78, v58);
    goto LABEL_13;
  }

  v120 = v57;
  v59 = v141;
  sub_1E1AF381C();
  v60 = sub_1E1AF37CC();
  v62 = v61;
  v48(v59, v58);
  if (!v62)
  {
    v78 = v50;

    v76 = sub_1E1AF5A7C();
    sub_1E1879E74(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v79 = v77;
    *v77 = 0x656C746974627573;
    v80 = 0xE800000000000000;
    goto LABEL_12;
  }

  v112 = v60;
  v118 = v49;
  v141 = v48;
  KeyPath = swift_getKeyPath();
  v63 = *(v133 + 104);
  LODWORD(v133) = *MEMORY[0x1E6968750];
  v116 = v63;
  v63(v138);
  v64 = *(v135 + 104);
  v65 = v134;
  LODWORD(v135) = *MEMORY[0x1E6968728];
  v115 = v64;
  v64(v134);
  sub_1E1AEF83C();
  v66 = sub_1E1AEFCCC();
  v67 = *(v66 - 8);
  v114 = *(v67 + 56);
  v113 = v67 + 56;
  v114(v132, 1, 1, v66);
  v68 = sub_1E1879368();
  v69 = v131;
  v132 = v68;
  v70 = v136;
  sub_1E1AEF8FC();
  if (v70)
  {

    (*(v140 + 56))(v69, 1, 1, v137);
    sub_1E1308058(v69, &qword_1ECEB3B50);
    v71 = sub_1E1AF5A7C();
    sub_1E1879E74(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v72 = MEMORY[0x1E69E7CC0];
    *v73 = 2036625250;
    v73[1] = 0xE400000000000000;
    v73[2] = v144;
    v73[3] = v72;
    (*(*(v71 - 8) + 104))(v73, *MEMORY[0x1E69AB6A0], v71);
    swift_willThrow();
    (*(v145 + 8))(v146, v147);
    (v141)(v148, v155);
  }

  else
  {
    v136 = v62;
    v84 = v140;
    v85 = *(v140 + 56);
    v86 = v137;
    KeyPath = 0;
    v130 = (v140 + 56);
    v121 = v85;
    v85(v69, 0, 1, v137);
    v111 = *(v84 + 32);
    v111(v129, v69, v86);
    v131 = swift_getKeyPath();
    v116(v138, v133, v142);
    v115(v65, v135, v139);
    sub_1E1AEF83C();
    v114(v128, 1, 1, v66);
    v87 = v127;
    v88 = KeyPath;
    sub_1E1AEF8FC();
    if (!v88)
    {
      v121(v87, 0, 1, v86);
      v93 = v125;
      v111(v125, v87, v86);
      v94 = *(v140 + 16);
      v82 = v149;
      v94(&v149[OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_attributedBodyWithTitle], v129, v86);
      v94(&v82[OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_attributedBodyWithoutTitle], v93, v86);
      v95 = &v82[OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_subtitle];
      v96 = v136;
      *v95 = v112;
      v95[1] = v96;
      sub_1E1AF46DC();
      v97 = v122;
      v98 = v148;
      sub_1E1AF381C();
      v99 = v145 + 16;
      v144 = *(v145 + 16);
      v100 = v124;
      v144(v124, v146, v147);
      v143 = v99;
      v101 = v123;
      sub_1E1AF464C();
      sub_1E134B7C8(v101, &v82[OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_impressionMetrics]);
      type metadata accessor for Artwork();
      sub_1E1AF381C();
      v102 = v146;
      v144(v100, v146, v147);
      sub_1E1879E74(&qword_1EE1E4BB8, type metadata accessor for Artwork);
      v103 = v100;
      sub_1E1AF464C();
      *&v82[OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_subtitleArtwork] = v152;
      sub_1E1AF381C();
      sub_1E18793BC();
      sub_1E1AF369C();
      (v141)(v97, v155);
      v82[OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_subtitleArtworkAlignment] = v152;
      type metadata accessor for FlowPreviewActionsConfiguration();
      v104 = v98;
      sub_1E1AF381C();
      v105 = v102;
      v106 = v102;
      v107 = v147;
      v144(v103, v106, v147);
      sub_1E1879E74(qword_1EE1E7DB8, type metadata accessor for FlowPreviewActionsConfiguration);
      sub_1E1AF464C();
      (*(v145 + 8))(v105, v107);
      (v141)(v104, v155);
      v108 = *(v140 + 8);
      v109 = v137;
      v108(v125, v137);
      v108(v129, v109);
      *&v82[OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_flowPreviewActionsConfiguration] = v152;
      return v82;
    }

    v121(v87, 1, 1, v86);
    sub_1E1308058(v87, &qword_1ECEB3B50);
    v89 = sub_1E1AF5A7C();
    sub_1E1879E74(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v90 = MEMORY[0x1E69E7CC0];
    *v91 = 0x69546F4E79646F62;
    v92 = v144;
    v91[1] = 0xEB00000000656C74;
    v91[2] = v92;
    v91[3] = v90;
    (*(*(v89 - 8) + 104))(v91, *MEMORY[0x1E69AB6A0], v89);
    swift_willThrow();
    (*(v145 + 8))(v146, v147);
    (v141)(v148, v155);
    (*(v140 + 8))(v129, v86);
  }

LABEL_13:
  sub_1E134B88C(v143);
  v82 = v149;
  swift_deallocPartialClassInstance();
  return v82;
}

unint64_t sub_1E1879368()
{
  result = qword_1EE1E2348;
  if (!qword_1EE1E2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E2348);
  }

  return result;
}

unint64_t sub_1E18793BC()
{
  result = qword_1EE1E0268;
  if (!qword_1EE1E0268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0268);
  }

  return result;
}

uint64_t sub_1E1879428@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1E1AEF91C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ReviewSummary.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_subtitle);

  return v1;
}

uint64_t ReviewSummary.deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_attributedBodyWithTitle;
  v2 = sub_1E1AEF91C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_attributedBodyWithoutTitle, v2);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_impressionMetrics, &unk_1ECEB1770);

  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_id);
  return v0;
}

uint64_t ReviewSummary.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_attributedBodyWithTitle;
  v2 = sub_1E1AEF91C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_attributedBodyWithoutTitle, v2);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_impressionMetrics, &unk_1ECEB1770);

  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_id);

  return swift_deallocClassInstance();
}

char *sub_1E1879794@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = ReviewSummary.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

unint64_t JetFontAttribute.Value.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1E1879890(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = "urchase";
  }

  else
  {
    v4 = "reviewSummaryTitle";
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*a2)
  {
    v6 = "reviewSummaryTitle";
  }

  else
  {
    v6 = "urchase";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

void sub_1E1879944(unint64_t *a1@<X8>)
{
  v2 = "reviewSummaryTitle";
  v3 = 0xD000000000000011;
  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = "urchase";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1E1879A30()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1879AAC()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1879B14()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1879CF8()
{
  sub_1E1879368();

  return sub_1E1AEF6DC();
}

uint64_t sub_1E1879D44()
{
  sub_1E1879368();

  return sub_1E1AEF6DC();
}

unint64_t sub_1E1879DD8()
{
  result = qword_1ECEBA620;
  if (!qword_1ECEBA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA620);
  }

  return result;
}

uint64_t sub_1E1879E74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ReviewSummary()
{
  result = qword_1EE1F4AF0;
  if (!qword_1EE1F4AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E1879F0C()
{
  result = qword_1EE1DF1A8;
  if (!qword_1EE1DF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DF1A8);
  }

  return result;
}

unint64_t sub_1E1879F60()
{
  result = qword_1EE1DF190;
  if (!qword_1EE1DF190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DF190);
  }

  return result;
}

unint64_t sub_1E1879FB8()
{
  result = qword_1ECEBA628;
  if (!qword_1ECEBA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA628);
  }

  return result;
}

unint64_t sub_1E187A010()
{
  result = qword_1EE1E2340;
  if (!qword_1EE1E2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E2340);
  }

  return result;
}

unint64_t sub_1E187A068()
{
  result = qword_1EE1E2338;
  if (!qword_1EE1E2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E2338);
  }

  return result;
}

void sub_1E187A0C4()
{
  sub_1E1AEF91C();
  if (v0 <= 0x3F)
  {
    sub_1E134EAF4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1E187A254()
{
  result = qword_1EE1DF188;
  if (!qword_1EE1DF188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DF188);
  }

  return result;
}

unint64_t sub_1E187A2A8()
{
  result = qword_1ECEBA630;
  if (!qword_1ECEBA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA630);
  }

  return result;
}

unint64_t sub_1E187A2FC()
{
  result = qword_1EE1DF198;
  if (!qword_1EE1DF198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DF198);
  }

  return result;
}

unint64_t sub_1E187A350()
{
  result = qword_1EE1DF1A0;
  if (!qword_1EE1DF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DF1A0);
  }

  return result;
}

id sub_1E187A3B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = objc_opt_self();
  result = [v5 valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    v10 = v3;

    v8 = v7;
    v9 = [v5 valueWithObject:sub_1E1AF755C() inContext:{a1, v4, v10}];
    result = swift_unknownObjectRelease();
    if (v9)
    {
      sub_1E1AF6C5C();

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E187A4BC()
{
  result = qword_1ECEBA638;
  if (!qword_1ECEBA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA638);
  }

  return result;
}

unint64_t sub_1E187A518()
{
  result = qword_1ECEBA640;
  if (!qword_1ECEBA640)
  {
    type metadata accessor for MSOProviderData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA640);
  }

  return result;
}

uint64_t SearchResultsSegment.__allocating_init(id:name:contextCard:content:message:noResultsLink:noResultsHidesLargeTitle:pageMetrics:pageRenderEvent:transparencyLink:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = a7;
  *(v20 + 72) = a8;
  *(v20 + 80) = a9;
  v21 = OBJC_IVAR____TtC11AppStoreKit20SearchResultsSegment_pageMetrics;
  v22 = sub_1E1AF3C3C();
  (*(*(v22 - 8) + 32))(v20 + v21, a10, v22);
  *(v20 + OBJC_IVAR____TtC11AppStoreKit20SearchResultsSegment_pageRenderEvent) = a11;
  *(v20 + 88) = a12;
  return v20;
}

uint64_t SearchResultsSegment.init(id:name:contextCard:content:message:noResultsLink:noResultsHidesLargeTitle:pageMetrics:pageRenderEvent:transparencyLink:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  *(v12 + 64) = a7;
  *(v12 + 72) = a8;
  *(v12 + 80) = a9;
  v13 = OBJC_IVAR____TtC11AppStoreKit20SearchResultsSegment_pageMetrics;
  v14 = sub_1E1AF3C3C();
  (*(*(v14 - 8) + 32))(v12 + v13, a10, v14);
  *(v12 + OBJC_IVAR____TtC11AppStoreKit20SearchResultsSegment_pageRenderEvent) = a11;
  *(v12 + 88) = a12;
  return v12;
}

uint64_t SearchResultsSegment.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v90 = a2;
  v3 = sub_1E1AF3C3C();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v81 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v80 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v82 = v64 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v84 = v64 - v11;
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v79 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v78 = v64 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v64 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v85 = v64 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v64 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v64 - v26;
  v91 = a1;
  sub_1E1AF381C();
  v75 = sub_1E1AF37CC();
  v29 = v28;
  v32 = *(v13 + 8);
  v31 = v13 + 8;
  v30 = v32;
  v32(v27, v12);
  v86 = v29;
  if (!v29)
  {
    v40 = sub_1E1AF5A7C();
    sub_1E187B2C4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v46 = 25705;
    v47 = v88;
    v46[1] = 0xE200000000000000;
    v46[2] = v47;
    (*(*(v40 - 8) + 104))(v46, *MEMORY[0x1E69AB690], v40);
    swift_willThrow();
    (*(v6 + 8))(v90, v5);
LABEL_7:
    v30(v91, v12);
    return v40;
  }

  v87 = v6;
  v89 = v30;
  sub_1E1AF381C();
  v33 = sub_1E1AF37CC();
  v30 = v89;
  v34 = v33;
  v36 = v35;
  v89(v24, v12);
  if (!v36)
  {

    v40 = sub_1E1AF5A7C();
    sub_1E187B2C4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v48 = 1701667182;
    v48[1] = 0xE400000000000000;
    v48[2] = v88;
    (*(*(v40 - 8) + 104))(v48, *MEMORY[0x1E69AB690], v40);
    swift_willThrow();
    (*(v87 + 8))(v90, v5);
    goto LABEL_7;
  }

  v69 = v34;
  v71 = v36;
  v73 = v31;
  v74 = v12;
  type metadata accessor for SearchResultsContextCard();
  sub_1E1AF381C();
  v37 = v87 + 16;
  v38 = *(v87 + 16);
  v39 = v90;
  v38(v84, v90, v5);
  sub_1E187B2C4(&qword_1EE1EB3F0, type metadata accessor for SearchResultsContextCard);
  v40 = v39;
  v41 = v5;
  sub_1E1AF464C();
  v42 = v96;
  sub_1E1AF381C();
  v43 = v82;
  v70 = v37;
  v72 = v38;
  v38(v82, v40, v41);
  type metadata accessor for SearchResultsContent();
  swift_allocObject();
  v44 = v83;
  v45 = SearchResultsContent.init(deserializing:using:)(v19, v43);
  if (v44)
  {

    (*(v87 + 8))(v40, v41);
    v89(v91, v74);
  }

  else
  {
    v82 = v45;
    v83 = v42;
    type metadata accessor for SearchResultsMessage();
    sub_1E1AF381C();
    v50 = v84;
    v72(v84, v90, v41);
    sub_1E187B2C4(qword_1EE1DB638, type metadata accessor for SearchResultsMessage);
    v51 = v90;
    sub_1E1AF464C();
    v68 = v95;
    v52 = type metadata accessor for LinkableText();
    sub_1E1AF381C();
    v72(v50, v51, v41);
    v64[1] = sub_1E187B2C4(&qword_1EE1F5FA0, type metadata accessor for LinkableText);
    v66 = v52;
    sub_1E1AF464C();
    v67 = v94;
    v53 = v78;
    sub_1E1AF381C();
    v65 = sub_1E1AF370C();
    v89(v53, v74);
    sub_1E1AF381C();
    v54 = v51;
    v72(v80, v51, v41);
    sub_1E1AF3BAC();
    type metadata accessor for PageRenderMetricsEvent();
    v64[0] = v41;
    v55 = v91;
    sub_1E1AF381C();
    v56 = v41;
    v57 = v72;
    v72(v50, v51, v56);
    sub_1E187B2C4(&qword_1EE1EC280, type metadata accessor for PageRenderMetricsEvent);
    sub_1E1AF464C();
    v80 = v93;
    sub_1E1AF381C();
    v58 = v64[0];
    v57(v50, v54, v64[0]);
    sub_1E1AF464C();
    (*(v87 + 8))(v54, v58);
    v89(v55, v74);
    v59 = v92;
    v40 = swift_allocObject();
    v60 = v86;
    *(v40 + 16) = v75;
    *(v40 + 24) = v60;
    v61 = v71;
    *(v40 + 32) = v69;
    *(v40 + 40) = v61;
    v62 = v82;
    *(v40 + 48) = v83;
    *(v40 + 56) = v62;
    v63 = v67;
    *(v40 + 64) = v68;
    *(v40 + 72) = v63;
    *(v40 + 80) = v65 & 1;
    (*(v76 + 32))(v40 + OBJC_IVAR____TtC11AppStoreKit20SearchResultsSegment_pageMetrics, v81, v77);
    *(v40 + OBJC_IVAR____TtC11AppStoreKit20SearchResultsSegment_pageRenderEvent) = v80;
    *(v40 + 88) = v59;
  }

  return v40;
}

uint64_t sub_1E187B2C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SearchResultsSegment.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchResultsSegment.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SearchResultsSegment.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit20SearchResultsSegment_pageMetrics;
  v4 = sub_1E1AF3C3C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultsSegment.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit20SearchResultsSegment_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SearchResultsSegment.__deallocating_deinit()
{
  SearchResultsSegment.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E187B51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = SearchResultsSegment.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E187B55C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit20SearchResultsSegment_pageMetrics;
  v5 = sub_1E1AF3C3C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for SearchResultsSegment()
{
  result = qword_1ECEBA648;
  if (!qword_1ECEBA648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E187B62C()
{
  result = sub_1E1AF3C3C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E187B758()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2DE8 = result;
  return result;
}

uint64_t sub_1E187B7B0()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3150 = result;
  return result;
}

uint64_t sub_1E187B810()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3138 = result;
  return result;
}

uint64_t sub_1E187B874()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3060 = result;
  return result;
}

uint64_t sub_1E187B8D0()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E30E8 = result;
  return result;
}

uint64_t sub_1E187B92C()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA658 = result;
  return result;
}

uint64_t sub_1E187B988()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA660 = result;
  return result;
}

uint64_t sub_1E187B9E4()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3128 = result;
  return result;
}

uint64_t sub_1E187BA48()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3158 = result;
  return result;
}

uint64_t sub_1E187BAA8()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA668 = result;
  return result;
}

uint64_t sub_1E187BAF8()
{
  result = sub_1E1AF5DBC();
  qword_1EE1D2268 = result;
  return result;
}

uint64_t sub_1E187BB58()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3090 = result;
  return result;
}

uint64_t sub_1E187BBB4()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2FD8 = result;
  return result;
}

uint64_t sub_1E187BC10()
{
  result = sub_1E1AF5DBC();
  qword_1EE1D2160 = result;
  return result;
}

uint64_t sub_1E187BC6C()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2DF0 = result;
  return result;
}

uint64_t sub_1E187BCC4()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2F50 = result;
  return result;
}

uint64_t sub_1E187BD20()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2E48 = result;
  return result;
}

uint64_t sub_1E187BD7C()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA670 = result;
  return result;
}

uint64_t sub_1E187BDD8()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA678 = result;
  return result;
}

uint64_t sub_1E187BE34()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2F40 = result;
  return result;
}

uint64_t sub_1E187BE90()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E30D8 = result;
  return result;
}

uint64_t sub_1E187BEEC()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2F90 = result;
  return result;
}

uint64_t sub_1E187BF48()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E30A8 = result;
  return result;
}

uint64_t sub_1E187BFA4()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2FF0 = result;
  return result;
}

uint64_t sub_1E187C000()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2E98 = result;
  return result;
}

uint64_t sub_1E187C05C()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3018 = result;
  return result;
}

uint64_t sub_1E187C0B8()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2F18 = result;
  return result;
}

uint64_t sub_1E187C114()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3020 = result;
  return result;
}

uint64_t sub_1E187C170()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3160 = result;
  return result;
}

uint64_t sub_1E187C1D0()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2EC8 = result;
  return result;
}

uint64_t sub_1E187C22C()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2EF8 = result;
  return result;
}

uint64_t sub_1E187C288()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2F30 = result;
  return result;
}

uint64_t sub_1E187C2E4()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E30E0 = result;
  return result;
}

uint64_t sub_1E187C340()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2E50 = result;
  return result;
}

uint64_t sub_1E187C39C()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3190 = result;
  return result;
}

uint64_t sub_1E187C3F8()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2F60 = result;
  return result;
}

uint64_t sub_1E187C454()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3008 = result;
  return result;
}

uint64_t sub_1E187C4B0()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3120 = result;
  return result;
}

uint64_t sub_1E187C510()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA680 = result;
  return result;
}

uint64_t sub_1E187C56C()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3078 = result;
  return result;
}

uint64_t sub_1E187C5C8()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3170 = result;
  return result;
}

uint64_t sub_1E187C624()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2DD8 = result;
  return result;
}

uint64_t sub_1E187C680()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3168 = result;
  return result;
}

uint64_t sub_1E187C6DC()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3010 = result;
  return result;
}

uint64_t sub_1E187C738()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2FC0 = result;
  return result;
}

uint64_t sub_1E187C794()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2FB8 = result;
  return result;
}

uint64_t sub_1E187C7F0()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2F08 = result;
  return result;
}

uint64_t sub_1E187C84C()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3188 = result;
  return result;
}

uint64_t sub_1E187C8A8()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3048 = result;
  return result;
}

uint64_t sub_1E187C904()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3118 = result;
  return result;
}

uint64_t sub_1E187C960()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA688 = result;
  return result;
}

uint64_t sub_1E187C9BC()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA690 = result;
  return result;
}

uint64_t sub_1E187CA20()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3038 = result;
  return result;
}

uint64_t sub_1E187CA7C()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3110 = result;
  return result;
}

uint64_t sub_1E187CAD8()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2EC0 = result;
  return result;
}

uint64_t sub_1E187CB34()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2F78 = result;
  return result;
}

uint64_t sub_1E187CB90()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E30F8 = result;
  return result;
}

uint64_t sub_1E187CBF4()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E31C0 = result;
  return result;
}

uint64_t sub_1E187CC50()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2E88 = result;
  return result;
}

uint64_t sub_1E187CCAC()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2E80 = result;
  return result;
}

uint64_t sub_1E187CD08()
{
  result = sub_1E1AF5DBC();
  qword_1EE1D2148 = result;
  return result;
}

uint64_t sub_1E187CD64()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA698 = result;
  return result;
}

uint64_t sub_1E187CDC0()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA6A0 = result;
  return result;
}

uint64_t sub_1E187CE1C()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA6A8 = result;
  return result;
}

uint64_t sub_1E187CE78()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA6B0 = result;
  return result;
}

uint64_t sub_1E187CED4()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA6B8 = result;
  return result;
}

uint64_t sub_1E187CF30()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA6C0 = result;
  return result;
}

uint64_t sub_1E187CF8C()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA6C8 = result;
  return result;
}

uint64_t sub_1E187CFE8()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA6D0 = result;
  return result;
}

uint64_t sub_1E187D044()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA6D8 = result;
  return result;
}

uint64_t sub_1E187D0A0()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA6E0 = result;
  return result;
}

uint64_t sub_1E187D0FC()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA6E8 = result;
  return result;
}

uint64_t sub_1E187D158()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA6F0 = result;
  return result;
}

uint64_t sub_1E187D1B4()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3198 = result;
  return result;
}

uint64_t sub_1E187D210()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2F58 = result;
  return result;
}

uint64_t sub_1E187D26C()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA6F8 = result;
  return result;
}

uint64_t sub_1E187D2C8()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA700 = result;
  return result;
}

uint64_t sub_1E187D324()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2F10 = result;
  return result;
}

uint64_t sub_1E187D380()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2E30 = result;
  return result;
}

uint64_t sub_1E187D3DC()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3028 = result;
  return result;
}

uint64_t sub_1E187D438()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA708 = result;
  return result;
}

uint64_t sub_1E187D494()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA710 = result;
  return result;
}

uint64_t sub_1E187D4F0()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA718 = result;
  return result;
}

uint64_t sub_1E187D54C()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2EF0 = result;
  return result;
}

uint64_t sub_1E187D5A8()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA720 = result;
  return result;
}

uint64_t sub_1E187D604()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA728 = result;
  return result;
}

uint64_t sub_1E187D660()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA730 = result;
  return result;
}

uint64_t sub_1E187D6BC()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA738 = result;
  return result;
}

uint64_t sub_1E187D718()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA740 = result;
  return result;
}

uint64_t sub_1E187D774()
{
  result = sub_1E1AF5DBC();
  qword_1EE1D21B0 = result;
  return result;
}

uint64_t sub_1E187D7D0()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA748 = result;
  return result;
}

uint64_t sub_1E187D82C()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3000 = result;
  return result;
}

uint64_t sub_1E187D888()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2E28 = result;
  return result;
}

uint64_t sub_1E187D8E4()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2E10 = result;
  return result;
}

uint64_t sub_1E187D940()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E30B8 = result;
  return result;
}

uint64_t sub_1E187D99C()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3180 = result;
  return result;
}

uint64_t sub_1E187D9F8()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E30C8 = result;
  return result;
}

uint64_t sub_1E187DA54()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2E40 = result;
  return result;
}

uint64_t sub_1E187DAB0()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2EB8 = result;
  return result;
}

uint64_t sub_1E187DB0C()
{
  result = sub_1E1AF5DBC();
  qword_1EE1D2130 = result;
  return result;
}

uint64_t sub_1E187DB68()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA750 = result;
  return result;
}

uint64_t sub_1E187DBC4()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA758 = result;
  return result;
}

uint64_t sub_1E187DC20()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA760 = result;
  return result;
}

uint64_t sub_1E187DC7C()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA768 = result;
  return result;
}

uint64_t sub_1E187DCD8()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA770 = result;
  return result;
}

uint64_t sub_1E187DD34()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2F70 = result;
  return result;
}

uint64_t sub_1E187DD90()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E31A8 = result;
  return result;
}

uint64_t sub_1E187DDEC()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2EE0 = result;
  return result;
}

uint64_t sub_1E187DE48()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2E68 = result;
  return result;
}

uint64_t sub_1E187DEA4()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA778 = result;
  return result;
}

uint64_t sub_1E187DF00()
{
  result = sub_1E1AF5DBC();
  qword_1EE1D2198 = result;
  return result;
}

uint64_t sub_1E187DF5C()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2E00 = result;
  return result;
}

uint64_t sub_1E187DFB8()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA780 = result;
  return result;
}

uint64_t sub_1E187E014()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2FA0 = result;
  return result;
}

uint64_t sub_1E187E070()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3108 = result;
  return result;
}

uint64_t sub_1E187E0CC()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2FB0 = result;
  return result;
}

uint64_t sub_1E187E128()
{
  result = sub_1E1AF5DBC();
  qword_1EE1D2118 = result;
  return result;
}

uint64_t sub_1E187E184()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA788 = result;
  return result;
}

uint64_t sub_1E187E1E0()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA790 = result;
  return result;
}

uint64_t sub_1E187E23C()
{
  result = sub_1E1AF5DBC();
  qword_1EE1D2210 = result;
  return result;
}

uint64_t sub_1E187E298()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA798 = result;
  return result;
}

uint64_t sub_1E187E2F4()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3070 = result;
  return result;
}

uint64_t sub_1E187E350()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA7A0 = result;
  return result;
}

uint64_t sub_1E187E3AC()
{
  result = sub_1E1AF5DBC();
  qword_1ECEBA7A8 = result;
  return result;
}

uint64_t sub_1E187E408()
{
  result = sub_1E1AF5DBC();
  qword_1EE1D2248 = result;
  return result;
}

uint64_t sub_1E187E464()
{
  result = sub_1E1AF5DBC();
  qword_1EE1D21E0 = result;
  return result;
}

uint64_t sub_1E187E4C0()
{
  result = sub_1E1AF5DBC();
  qword_1EE1D2228 = result;
  return result;
}

uint64_t sub_1E187E51C()
{
  result = sub_1E1AF5DBC();
  qword_1EE1D21D0 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit35AMSEngagementRequestPerformingErrorO(uint64_t *a1)
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

uint64_t sub_1E187E5C4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E187E620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1E187E67C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t RibbonBar.__allocating_init(id:items:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_1E134FD1C(a1, &v17, &unk_1ECEB5670);
  if (*(&v18 + 1))
  {
    sub_1E1308058(a1, &unk_1ECEB5670);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v11 = sub_1E1AEFE7C();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_1E1AF6F6C();
    sub_1E1308058(a1, &unk_1ECEB5670);
    sub_1E1308058(&v17, &unk_1ECEB5670);
  }

  v14 = v21;
  *(v10 + 24) = v20;
  *(v10 + 40) = v14;
  *(v10 + 56) = v22;
  *(v10 + 16) = a2;
  sub_1E134B7C8(a3, v10 + OBJC_IVAR____TtC11AppStoreKit9RibbonBar_impressionMetrics);
  return v10;
}

uint64_t RibbonBar.init(id:items:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v18, &unk_1ECEB5670);
  if (*(&v19 + 1))
  {
    sub_1E1308058(a1, &unk_1ECEB5670);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_1E1AEFE9C();
    v12 = sub_1E1AEFE7C();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_1E1AF6F6C();
    sub_1E1308058(a1, &unk_1ECEB5670);
    sub_1E1308058(&v18, &unk_1ECEB5670);
  }

  v15 = v22;
  *(v4 + 24) = v21;
  *(v4 + 40) = v15;
  *(v4 + 56) = v23;
  *(v4 + 16) = a2;
  sub_1E134B7C8(a3, v4 + OBJC_IVAR____TtC11AppStoreKit9RibbonBar_impressionMetrics);
  return v4;
}

uint64_t RibbonBar.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v62 = a1;
  v3 = sub_1E1AEFEAC();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = sub_1E1AF380C();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v50 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v54 = v6;
  v19 = *(v6 + 16);
  v51 = v10;
  v19(v10, a2, v5);
  v55 = v18;
  sub_1E1AF464C();
  v20 = v58;
  v57 = a2;
  v21 = v5;
  v19(v58, a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA7B0);
  sub_1E1AF381C();
  v22 = v20;
  v19(v51, v20, v5);
  sub_1E187F0BC();
  sub_1E1AF464C();
  v23 = v61[0];
  if (v61[0])
  {
    v25 = v52;
    v24 = v53;
    v26 = v54;
    v27 = v49;
    sub_1E1AF381C();
    v28 = sub_1E1AF37CC();
    if (v29)
    {
      v59 = v28;
      v60 = v29;
    }

    else
    {
      v34 = v46;
      sub_1E1AEFE9C();
      v35 = sub_1E1AEFE7C();
      v37 = v36;
      (*(v47 + 8))(v34, v48);
      v59 = v35;
      v60 = v37;
    }

    sub_1E1AF6F6C();
    v38 = *(v25 + 8);
    v39 = v27;
    v40 = v24;
    v38(v39, v24);
    v41 = v26;
    v42 = v55;
    v43 = v50;
    sub_1E134FD1C(v55, v50, &unk_1ECEB1770);
    v33 = swift_allocObject();
    RibbonBar.init(id:items:impressionMetrics:)(v61, v23, v43);
    v44 = *(v41 + 8);
    v44(v57, v21);
    v38(v62, v40);
    v44(v58, v21);
    sub_1E1308058(v42, &unk_1ECEB1770);
  }

  else
  {
    v30 = sub_1E1AF5A7C();
    sub_1E187F284(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v31 = 0x736D657469;
    v31[1] = 0xE500000000000000;
    v31[2] = v56;
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x1E69AB690], v30);
    swift_willThrow();
    v33 = v54 + 8;
    v32 = *(v54 + 8);
    v32(v57, v5);
    (*(v52 + 8))(v62, v53);
    v32(v22, v5);
    sub_1E1308058(v55, &unk_1ECEB1770);
  }

  return v33;
}

unint64_t sub_1E187F0BC()
{
  result = qword_1ECEBA7B8;
  if (!qword_1ECEBA7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBA7B0);
    sub_1E187F284(&qword_1EE1F4A00, type metadata accessor for RibbonBarItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA7B8);
  }

  return result;
}

uint64_t RibbonBar.deinit()
{

  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit9RibbonBar_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t RibbonBar.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit9RibbonBar_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E187F284(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RibbonBar()
{
  result = qword_1ECEBA7C8;
  if (!qword_1ECEBA7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E187F318@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = RibbonBar.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1E187F388()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E187F4D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA020);
  __swift_allocate_value_buffer(v0, qword_1ECEBA7D8);
  __swift_project_value_buffer(v0, qword_1ECEBA7D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBA028);
  return sub_1E1AF3F9C();
}

uint64_t static RateLimitedAction.preferencesKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECEB1560 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA020);
  v3 = __swift_project_value_buffer(v2, qword_1ECEBA7D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t RateLimitedAction.actionKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_actionKey);

  return v1;
}

void *RateLimitedAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v69 = a2;
  v6 = *v4;
  v64 = v3;
  v65 = v6;
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  v66 = v7;
  v67 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v61 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v59 = &v59 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v59 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v59 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v59 - v22;
  v68 = a1;
  sub_1E1AF381C();
  v24 = sub_1E1AF37CC();
  v26 = v25;
  v60 = v11;
  v27 = *(v11 + 8);
  v27(v23, v10);
  if (!v26)
  {
    v34 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v35 = 0x654B6E6F69746361;
    v36 = v65;
    v35[1] = 0xE900000000000079;
    v35[2] = v36;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x1E69AB690], v34);
    swift_willThrow();
    (*(v67 + 8))(v69, v66);
    v27(v68, v10);
    goto LABEL_5;
  }

  v63 = v27;
  v28 = (v4 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_actionKey);
  *v28 = v24;
  v28[1] = v26;
  type metadata accessor for Action();
  sub_1E1AF381C();
  v29 = v64;
  v30 = static Action.makeInstance(byDeserializing:using:)(v21, v69);
  v64 = v29;
  if (v29)
  {
    (*(v67 + 8))(v69, v66);
    v31 = v10;
    v32 = v10;
    v33 = v63;
    v63(v68, v32);
    v33(v21, v31);

LABEL_5:
    swift_deallocPartialClassInstance();
    return v4;
  }

  v38 = v30;
  v39 = v10;
  v40 = v63;
  v63(v21, v10);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_primaryAction) = v38;
  v41 = v68;
  sub_1E1AF381C();
  v42 = v69;
  v43 = static Action.tryToMakeInstance(byDeserializing:using:)(v18, v69);
  v40(v18, v39);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_fallbackAction) = v43;
  v44 = v59;
  sub_1E1AF381C();
  v45 = sub_1E1AF36EC();
  v47 = v46;
  v40(v44, v39);
  v48 = v41;
  v49 = v42;
  v50 = OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_rateLimit;
  if (v47)
  {
    *(v4 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_rateLimit) = 0;
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_rateLimit) = v45;
  }

  v51 = v64;
  *(v4 + v50 + 8) = v47 & 1;
  v52 = v61;
  (*(v60 + 16))(v61, v48, v39);
  v53 = v67;
  v54 = v62;
  v55 = v49;
  v56 = v66;
  (*(v67 + 16))(v62, v55, v66);
  v57 = Action.init(deserializing:using:)(v52, v54);
  v58 = v63;
  if (!v51)
  {
    v4 = v57;
  }

  (*(v53 + 8))(v69, v56);
  v58(v48, v39);
  return v4;
}

void *RateLimitedAction.__allocating_init(actionKey:primaryAction:fallbackAction:rateLimit:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v35 = a4;
  v11 = sub_1E1AEFEAC();
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v33 - v15;
  v17 = sub_1E1AF3E1C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v22 = (v21 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_actionKey);
  *v22 = a1;
  v22[1] = a2;
  v23 = a5;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_primaryAction) = a3;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_fallbackAction) = v35;
  v24 = (v21 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_rateLimit);
  *v24 = a6;
  *(v24 + 8) = 0;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v18 + 16))(v20, a5, v17);
  v25 = sub_1E1AF46DC();
  (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  v26 = (v21 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v26 = 0u;
  v26[1] = 0u;
  v27 = v21 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v41, &v38);
  if (*(&v39 + 1))
  {
    v28 = v39;
    *v27 = v38;
    *(v27 + 1) = v28;
    *(v27 + 4) = v40;
  }

  else
  {
    sub_1E1AEFE9C();
    v29 = sub_1E1AEFE7C();
    v31 = v30;
    (*(v33 + 8))(v13, v34);
    v36 = v29;
    v37 = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v38, &unk_1ECEB5670);
  }

  (*(v18 + 8))(v23, v17);
  sub_1E1308058(v41, &unk_1ECEB5670);
  sub_1E134B7C8(v16, v21 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v21[2] = 0xD000000000000013;
  v21[3] = 0x80000001E1B7B430;
  v21[4] = 0;
  v21[5] = 0;
  (*(v18 + 32))(v21 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v20, v17);
  return v21;
}

void *RateLimitedAction.init(actionKey:primaryAction:fallbackAction:rateLimit:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v35 = a4;
  v34 = sub_1E1AEFEAC();
  v33 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v33 - v16;
  v18 = sub_1E1AF3E1C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (v7 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_actionKey);
  *v22 = a1;
  v22[1] = a2;
  *(v7 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_primaryAction) = a3;
  v23 = a5;
  *(v7 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_fallbackAction) = v35;
  v24 = (v7 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_rateLimit);
  *v24 = a6;
  *(v24 + 8) = 0;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  (*(v19 + 16))(v21, a5, v18);
  v25 = sub_1E1AF46DC();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = (v7 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v26 = 0u;
  v26[1] = 0u;
  sub_1E138853C(v44, &v38);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_1E1AEFE9C();
    v27 = sub_1E1AEFE7C();
    v29 = v28;
    (*(v33 + 8))(v14, v34);
    v36 = v27;
    v37 = v29;
    sub_1E1AF6F6C();
    sub_1E1308058(&v38, &unk_1ECEB5670);
  }

  (*(v19 + 8))(v23, v18);
  sub_1E1308058(v44, &unk_1ECEB5670);
  v30 = v7 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v30 + 4) = v43;
  v31 = v42;
  *v30 = v41;
  *(v30 + 1) = v31;
  sub_1E134B7C8(v17, v7 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v7[2] = 0xD000000000000013;
  v7[3] = 0x80000001E1B7B430;
  v7[4] = 0;
  v7[5] = 0;
  (*(v19 + 32))(v7 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v21, v18);
  return v7;
}

uint64_t sub_1E188042C()
{
}

uint64_t RateLimitedAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t RateLimitedAction.__deallocating_deinit()
{
  RateLimitedAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RateLimitedAction()
{
  result = qword_1EE1F0908;
  if (!qword_1EE1F0908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProductDescriptionLayout.init(metrics:bodyText:tagRibbon:developerLink:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1[3];
  *(a5 + 152) = a1[2];
  *(a5 + 168) = v8;
  v9 = a1[5];
  *(a5 + 184) = a1[4];
  *(a5 + 200) = v9;
  v10 = a1[1];
  *(a5 + 120) = *a1;
  *(a5 + 136) = v10;
  sub_1E1308EC0(a2, a5);
  v11 = *(a3 + 16);
  *(a5 + 40) = *a3;
  *(a5 + 56) = v11;
  *(a5 + 72) = *(a3 + 32);

  return sub_1E1308EC0(a4, a5 + 80);
}

uint64_t ProductDescriptionLayout.Metrics.init(topPadding:developerTopPadding:horizontalTextPadding:horizontalDeveloperSpace:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v7 = *a2;
  *a5 = *a1;
  a5[1] = v7;
  sub_1E1308EC0(a3, (a5 + 2));

  return sub_1E1308EC0(a4, (a5 + 7));
}

uint64_t ProductDescriptionLayout.Metrics.topPadding.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t ProductDescriptionLayout.Metrics.developerTopPadding.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t ProductDescriptionLayout.Metrics.horizontalTextPadding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);

  return sub_1E1308EC0(a1, v1 + 16);
}

uint64_t ProductDescriptionLayout.Metrics.horizontalDeveloperSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 56);

  return sub_1E1308EC0(a1, v1 + 56);
}

double ProductDescriptionLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_1E1AF745C();
  v69 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF162C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF165C();
  v68 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v67 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 traitCollection];
  if (sub_1E1AF695C() & 1) != 0 || (sub_1E1AF698C())
  {
    v65 = v13;
    v66 = v16;
    sub_1E134FD1C((v2 + 5), &v70, &qword_1ECEB4E00);
    v63 = v12;
    v64 = a1;
    if (v71)
    {
      sub_1E1308EC0(&v70, v73);
      (*(v10 + 104))(v12, *MEMORY[0x1E69AB970], v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1E1B070F0;
      *&v70 = v2[15];

      sub_1E1AF102C();
      Conditional<>.value(in:rounded:)(a1, v8);
      v19 = v18;
      v69 = *(v69 + 8);
      (v69)(v8, v6);

      v71 = MEMORY[0x1E69E7DE0];
      v72 = MEMORY[0x1E69AB858];
      *&v70 = v19;
      v20 = sub_1E1AF1A1C();
      v21 = MEMORY[0x1E69ABA90];
      *(v17 + 56) = v20;
      *(v17 + 64) = v21;
      __swift_allocate_boxed_opaque_existential_0((v17 + 32));
      sub_1E1AF1A2C();
      v22 = v6;
      v62 = v6;
      v23 = v2[3];
      v24 = v3[4];
      v25 = __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
      *(v17 + 96) = v23;
      *(v17 + 104) = *(v24 + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v17 + 72));
      (*(*(v23 - 8) + 16))(boxed_opaque_existential_0, v25, v23);
      *&v70 = v3[15];

      sub_1E1AF102C();
      Conditional<>.value(in:rounded:)(a1, v8);
      v28 = v27;
      v29 = v22;
      v30 = v69;
      (v69)(v8, v29);

      v71 = MEMORY[0x1E69E7DE0];
      v72 = MEMORY[0x1E69AB858];
      *&v70 = v28;
      *(v17 + 136) = v20;
      *(v17 + 144) = MEMORY[0x1E69ABA90];
      __swift_allocate_boxed_opaque_existential_0((v17 + 112));
      sub_1E1AF1A2C();
      v31 = v74;
      v32 = v75;
      v33 = __swift_project_boxed_opaque_existential_1Tm(v73, v74);
      *(v17 + 176) = v31;
      *(v17 + 184) = *(v32 + 8);
      v34 = __swift_allocate_boxed_opaque_existential_0((v17 + 152));
      (*(*(v31 - 8) + 16))(v34, v33, v31);
      *&v70 = v3[16];

      sub_1E1AF102C();
      Conditional<>.value(in:rounded:)(a1, v8);
      v36 = v35;
      v30(v8, v62);

      v71 = MEMORY[0x1E69E7DE0];
      v72 = MEMORY[0x1E69AB858];
      *&v70 = v36;
      *(v17 + 216) = v20;
      *(v17 + 224) = MEMORY[0x1E69ABA90];
      __swift_allocate_boxed_opaque_existential_0((v17 + 192));
      sub_1E1AF1A2C();
      v37 = v3[13];
      v38 = v3[14];
      v39 = __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v37);
      *(v17 + 256) = v37;
      *(v17 + 264) = *(v38 + 8);
      v40 = __swift_allocate_boxed_opaque_existential_0((v17 + 232));
      (*(*(v37 - 8) + 16))(v40, v39, v37);
      v41 = v67;
      sub_1E1AF163C();
      __swift_destroy_boxed_opaque_existential_1(v73);
    }

    else
    {
      sub_1E1308058(&v70, &qword_1ECEB4E00);
      (*(v10 + 104))(v12, *MEMORY[0x1E69AB970], v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1E1B05090;
      v73[0] = v2[15];

      sub_1E1AF102C();
      Conditional<>.value(in:rounded:)(a1, v8);
      v44 = v43;
      v69 = *(v69 + 8);
      (v69)(v8, v6);

      v74 = MEMORY[0x1E69E7DE0];
      v75 = MEMORY[0x1E69AB858];
      v73[0] = v44;
      v45 = sub_1E1AF1A1C();
      v46 = MEMORY[0x1E69ABA90];
      *(v42 + 56) = v45;
      *(v42 + 64) = v46;
      __swift_allocate_boxed_opaque_existential_0((v42 + 32));
      sub_1E1AF1A2C();
      v47 = v6;
      v48 = v2[3];
      v49 = v3[4];
      v50 = __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
      *(v42 + 96) = v48;
      *(v42 + 104) = *(v49 + 8);
      v51 = __swift_allocate_boxed_opaque_existential_0((v42 + 72));
      (*(*(v48 - 8) + 16))(v51, v50, v48);
      v73[0] = v3[16];

      sub_1E1AF102C();
      Conditional<>.value(in:rounded:)(a1, v8);
      v53 = v52;
      (v69)(v8, v47);

      v74 = MEMORY[0x1E69E7DE0];
      v75 = MEMORY[0x1E69AB858];
      v73[0] = v53;
      *(v42 + 136) = v45;
      *(v42 + 144) = MEMORY[0x1E69ABA90];
      __swift_allocate_boxed_opaque_existential_0((v42 + 112));
      sub_1E1AF1A2C();
      v54 = v3[13];
      v55 = v3[14];
      v56 = __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v54);
      *(v42 + 176) = v54;
      *(v42 + 184) = *(v55 + 8);
      v57 = __swift_allocate_boxed_opaque_existential_0((v42 + 152));
      (*(*(v54 - 8) + 16))(v57, v56, v54);
      v41 = v67;
      sub_1E1AF163C();
    }

    sub_1E1AF161C();
    a2 = v58;

    (*(v68 + 8))(v41, v65);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v2 + 17, v2[20]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v59 = *(v69 + 8);
    v59(v8, v6);
    __swift_project_boxed_opaque_existential_1Tm(v2 + 22, v2[25]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v59(v8, v6);
    __swift_project_boxed_opaque_existential_1Tm(v2 + 10, v2[13]);
    sub_1E1AF11DC();
    __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
    sub_1E1AF11CC();
    v73[0] = v2[16];

    sub_1E1AF102C();
    Conditional<>.value(in:rounded:)(a1, v8);
    v59(v8, v6);

    v73[0] = v2[15];

    sub_1E1AF102C();
    Conditional<>.value(in:rounded:)(a1, v8);

    v59(v8, v6);
  }

  return a2;
}

void ProductDescriptionLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v76 = a2;
  v12 = sub_1E1AF745C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 traitCollection];
  __swift_project_boxed_opaque_existential_1Tm(v6 + 22, v6[25]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v19 = v18;
  v20 = *(v13 + 8);
  v20(v16, v12);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 17, v6[20]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v20(v16, v12);
  v21 = sub_1E1AF695C();
  v75 = v17;
  v67 = v19;
  if (v21 & 1) != 0 || (sub_1E1AF698C())
  {
    v82.origin.x = a3;
    v82.origin.y = a4;
    v82.size.width = a5;
    v82.size.height = a6;
    CGRectGetWidth(v82);
    v22 = 1;
  }

  else
  {
    v83.origin.x = a3;
    v83.origin.y = a4;
    v83.size.width = a5;
    v83.size.height = a6;
    CGRectGetWidth(v83);
    v22 = 0;
  }

  v84.origin.x = a3;
  v84.origin.y = a4;
  v84.size.width = a5;
  v84.size.height = a6;
  CGRectGetHeight(v84);
  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  sub_1E1AF11CC();
  v24 = v23;
  v26 = v25;
  v85.origin.x = a3;
  v85.origin.y = a4;
  v85.size.width = a5;
  v85.size.height = a6;
  MinY = CGRectGetMinY(v85);
  v80[0] = v6[15];

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a1, v16);
  v29 = v28;
  v20(v16, v12);

  v30 = MinY + v29;
  v86.origin.x = a3;
  v86.origin.y = a4;
  v86.size.width = a5;
  v86.size.height = a6;
  MinX = CGRectGetMinX(v86);
  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  v77 = a4;
  v74 = v24;
  v73 = v26;
  v72 = v30;
  v71 = MinX;
  v69 = a6;
  v68 = a5;
  if (v22)
  {
    v87.origin.x = MinX;
    v87.origin.y = v30;
    v87.size.width = v24;
    v87.size.height = v26;
    MaxY = CGRectGetMaxY(v87);
    sub_1E134FD1C((v6 + 5), &v78, &qword_1ECEB4E00);
    if (v79)
    {
      sub_1E1308EC0(&v78, v80);
      v88.origin.x = a3;
      v88.origin.y = a4;
      v88.size.width = a5;
      v88.size.height = a6;
      CGRectGetWidth(v88);
      v89.origin.x = a3;
      v89.origin.y = a4;
      v89.size.width = a5;
      v89.size.height = a6;
      CGRectGetHeight(v89);
      __swift_project_boxed_opaque_existential_1Tm(v80, v81);
      sub_1E1AF11CC();
      v34 = v33;
      v36 = v35;
      v90.origin.x = a3;
      v90.origin.y = v77;
      v90.size.width = a5;
      v90.size.height = a6;
      v37 = CGRectGetMinX(v90);
      __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
      sub_1E1AF115C();
      v38 = CGRectGetMaxY(v91);
      *&v78 = v6[16];

      sub_1E1AF102C();
      Conditional<>.value(in:rounded:)(a1, v16);
      v40 = v39;
      v20(v16, v12);

      __swift_project_boxed_opaque_existential_1Tm(v80, v81);
      sub_1E1AF116C();
      v92.origin.x = v37;
      v92.origin.y = v38 + v40;
      v92.size.width = v34;
      a4 = v77;
      v92.size.height = v36;
      MaxY = CGRectGetMaxY(v92);
      __swift_destroy_boxed_opaque_existential_1(v80);
    }

    else
    {
      sub_1E1308058(&v78, &qword_1ECEB4E00);
    }

    v95.origin.x = a3;
    v95.origin.y = a4;
    v95.size.width = a5;
    v95.size.height = a6;
    Width = CGRectGetWidth(v95);
    v96.origin.x = a3;
    v96.origin.y = a4;
    v96.size.width = a5;
    v96.size.height = a6;
    v70 = CGRectGetMinX(v96);
    v80[0] = v6[16];

    sub_1E1AF102C();
    Conditional<>.value(in:rounded:)(a1, v16);
    v54 = v53;
    v20(v16, v12);

    v52 = a4;
    v48 = MaxY + v54;
    v51 = a3;
  }

  else
  {
    v93.origin.x = a3;
    v93.origin.y = a4;
    v93.size.width = a5;
    v93.size.height = a6;
    v41 = CGRectGetMinY(v93);
    v80[0] = v6[15];

    sub_1E1AF102C();
    Conditional<>.value(in:rounded:)(a1, v16);
    v43 = v42;
    v20(v16, v12);

    v44 = v41 + v43;
    v80[0] = v6[16];

    sub_1E1AF102C();
    Conditional<>.value(in:rounded:)(a1, v16);
    v46 = v45;
    v20(v16, v12);

    v47 = a4;
    v48 = v44 + v46;
    v94.origin.x = a3;
    v94.origin.y = v47;
    v94.size.width = a5;
    v94.size.height = a6;
    MaxX = CGRectGetMaxX(v94);
    Width = v67;
    v70 = MaxX - v67;
    v51 = a3;
    v52 = v47;
  }

  v55 = a5;
  v56 = a6;
  Height = CGRectGetHeight(*&v51);
  v58 = v75;
  __swift_project_boxed_opaque_existential_1Tm(v6 + 10, v6[13]);
  sub_1E1AF11DC();
  v60 = v59;
  v67 = v61;
  v62 = v70;
  v97.origin.x = v70;
  v97.origin.y = v48;
  v97.size.width = Width;
  v97.size.height = Height;
  v63 = CGRectGetMinX(v97);
  v98.origin.x = v62;
  v98.origin.y = v48;
  v98.size.width = Width;
  v98.size.height = Height;
  v70 = CGRectGetMinY(v98);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 10, v6[13]);
  v64 = v77;
  v65 = v68;
  v66 = v69;
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  v99.origin.x = a3;
  v99.origin.y = v64;
  v99.size.width = v65;
  v99.size.height = v66;
  CGRectGetMinX(v99);
  v100.origin.x = a3;
  v100.origin.y = v64;
  v100.size.width = v65;
  v100.size.height = v66;
  CGRectGetMinY(v100);
  v101.origin.x = a3;
  v101.origin.y = v64;
  v101.size.width = v65;
  v101.size.height = v66;
  CGRectGetWidth(v101);
  v102.origin.x = v63;
  v102.origin.y = v70;
  v102.size.width = v60;
  v102.size.height = v67;
  CGRectGetMaxY(v102);
  v103.origin.x = v71;
  v103.origin.y = v72;
  v103.size.width = v74;
  v103.size.height = v73;
  CGRectGetMaxY(v103);
  sub_1E1AF106C();
}

uint64_t ProductDescriptionLayout.DeveloperLinkLayout.init(metrics:primaryText:secondaryText:disclosureView:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1E1881CB8(a1, a5);
  v9 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout(0);
  sub_1E1308EC0(a2, a5 + v9[5]);
  sub_1E1308EC0(a3, a5 + v9[6]);
  v10 = a5 + v9[7];

  return sub_1E1308EC0(a4, v10);
}

uint64_t sub_1E1881CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ProductDescriptionLayout.DeveloperLinkLayout.Metrics.init(primaryTextSpace:secondaryTextSpace:disclosureMargin:disclosureSize:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = *a1;
  v11 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  v12 = v11[5];
  v13 = sub_1E1AF166C();
  (*(*(v13 - 8) + 32))(&a4[v12], a2, v13);
  result = sub_1E1308EC0(a3, &a4[v11[6]]);
  v15 = &a4[v11[7]];
  *v15 = a5;
  v15[1] = a6;
  return result;
}

uint64_t ProductDescriptionLayout.DeveloperLinkLayout.Metrics.secondaryTextSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0) + 20);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E1881EE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double ProductDescriptionLayout.DeveloperLinkLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_1E1AF162C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1E1AF165C();
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E1AF745C();
  v43 = *(v44 - 8);
  v11 = MEMORY[0x1EEE9AC00](v44);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v14 = [a1 traitCollection];
  v15 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout(0);
  __swift_project_boxed_opaque_existential_1Tm((v2 + v15[7]), *(v2 + v15[7] + 24));
  if (sub_1E1AF117C() & 1) == 0 && ((sub_1E1AF695C() & 1) != 0 || (sub_1E1AF698C()))
  {
    v17 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
    __swift_project_boxed_opaque_existential_1Tm((v2 + *(v17 + 24)), *(v2 + *(v17 + 24) + 24));
    v42 = v15;
    sub_1E13BC274();
    v15 = v42;
    sub_1E1AF12DC();
    v19 = v18;
    (*(v43 + 8))(v13, v44);
    v16.n128_f64[0] = v19 + *(v2 + *(v17 + 28));
  }

  v45 = v14;
  v46 = v9;
  (*(v7 + 104))(v9, *MEMORY[0x1E69AB970], v6, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E1B02CD0;
  v21 = (v3 + v15[5]);
  v22 = v21[3];
  v23 = v21[4];
  v24 = __swift_project_boxed_opaque_existential_1Tm(v21, v22);
  v58 = v22;
  v59 = *(*(v23 + 8) + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v57);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v24, v22);
  v26 = *v3;
  v55 = &type metadata for AnyDimensionWrapper;
  v56 = sub_1E1868D7C();
  v54[0] = v26;
  v27 = sub_1E1AF140C();
  v28 = MEMORY[0x1E69AB908];
  v52 = v27;
  v53 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(v51);

  sub_1E1AF13FC();
  v29 = sub_1E1AF1A6C();
  v30 = MEMORY[0x1E69ABAA0];
  *(v20 + 56) = v29;
  *(v20 + 64) = v30;
  __swift_allocate_boxed_opaque_existential_0((v20 + 32));
  sub_1E1AF1A5C();
  v31 = (v3 + v15[6]);
  v32 = v31[3];
  v33 = v31[4];
  v34 = __swift_project_boxed_opaque_existential_1Tm(v31, v32);
  v58 = v32;
  v59 = *(*(v33 + 8) + 8);
  v35 = __swift_allocate_boxed_opaque_existential_0(v57);
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  v36 = *(type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0) + 20);
  v37 = sub_1E1AF166C();
  v55 = v37;
  v56 = MEMORY[0x1E69AB980];
  v38 = __swift_allocate_boxed_opaque_existential_0(v54);
  (*(*(v37 - 8) + 16))(v38, v3 + v36, v37);
  v52 = v27;
  v53 = v28;
  __swift_allocate_boxed_opaque_existential_0(v51);
  sub_1E1AF13FC();
  *(v20 + 96) = v29;
  *(v20 + 104) = v30;
  __swift_allocate_boxed_opaque_existential_0((v20 + 72));
  sub_1E1AF1A5C();
  v39 = v47;
  sub_1E1AF163C();
  sub_1E1AF161C();

  (*(v48 + 8))(v39, v49);
  return a2;
}

uint64_t ProductDescriptionLayout.DeveloperLinkLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v62 = a2;
  v63 = a1;
  v12 = sub_1E1AF1D6C();
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v55 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF111C();
  v60 = *(v14 - 8);
  v61 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v59 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF745C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  v22 = *(v20 + 24);
  v21 = *(v20 + 28);
  v58 = v20;
  v23 = (v6 + v21);
  v24 = *v23;
  v54[1] = v23[1];
  sub_1E1300B24(v6 + v22, v73);
  v25 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout(0);
  v26 = (v6 + v25[7]);
  __swift_project_boxed_opaque_existential_1Tm(v26, v26[3]);
  v27 = sub_1E1AF117C();
  v74.origin.x = a3;
  v74.origin.y = a4;
  v74.size.width = a5;
  v74.size.height = a6;
  CGRectGetWidth(v74);
  if ((v27 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1Tm(v73, v73[3]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    (*(v17 + 8))(v19, v16);
  }

  v54[2] = v24;
  v75.origin.x = a3;
  v75.origin.y = a4;
  v75.size.width = a5;
  v75.size.height = a6;
  CGRectGetMinX(v75);
  v76.origin.x = a3;
  v76.origin.y = a4;
  v76.size.width = a5;
  v76.size.height = a6;
  CGRectGetMinY(v76);
  v77.origin.x = a3;
  v77.origin.y = a4;
  v77.size.width = a5;
  v77.size.height = a6;
  CGRectGetHeight(v77);
  sub_1E1AF6B1C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CD0;
  v37 = (v7 + v25[5]);
  v38 = v37[3];
  v39 = v37[4];
  v40 = __swift_project_boxed_opaque_existential_1Tm(v37, v38);
  v71 = v38;
  v72 = *(v39 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v70);
  (*(*(v38 - 8) + 16))(boxed_opaque_existential_0, v40, v38);
  v42 = *v7;
  v68 = &type metadata for AnyDimensionWrapper;
  v69 = sub_1E1868D7C();
  v67[0] = v42;
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  sub_1E1300B24(v70, inited + 32);
  sub_1E1300B24(v67, inited + 80);
  sub_1E134FD1C(&v64, inited + 120, &unk_1ECEB47F0);
  *(inited + 72) = 1;
  *(inited + 160) = 8;

  sub_1E1308058(&v64, &unk_1ECEB47F0);
  __swift_destroy_boxed_opaque_existential_1(v67);
  __swift_destroy_boxed_opaque_existential_1(v70);
  v43 = (v7 + v25[6]);
  v44 = v43[3];
  v45 = v43[4];
  v46 = __swift_project_boxed_opaque_existential_1Tm(v43, v44);
  v71 = v44;
  v72 = *(v45 + 8);
  v47 = __swift_allocate_boxed_opaque_existential_0(v70);
  (*(*(v44 - 8) + 16))(v47, v46, v44);
  v48 = *(v58 + 20);
  v49 = sub_1E1AF166C();
  v68 = v49;
  v69 = MEMORY[0x1E69AB980];
  v50 = __swift_allocate_boxed_opaque_existential_0(v67);
  (*(*(v49 - 8) + 16))(v50, v7 + v48, v49);
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  sub_1E1300B24(v70, inited + 168);
  sub_1E1300B24(v67, inited + 216);
  sub_1E134FD1C(&v64, inited + 256, &unk_1ECEB47F0);
  *(inited + 208) = 1;
  *(inited + 296) = 8;
  sub_1E1308058(&v64, &unk_1ECEB47F0);
  __swift_destroy_boxed_opaque_existential_1(v67);
  __swift_destroy_boxed_opaque_existential_1(v70);
  LOBYTE(v70[0]) = 1;
  v70[1] = inited;
  v51 = v59;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v59, v29, v31, v33, v35);
  __swift_project_boxed_opaque_existential_1Tm(v26, v26[3]);
  if ((sub_1E1AF117C() & 1) == 0)
  {
    v52 = v55;
    sub_1E1AF110C();
    sub_1E1AF1D2C();
    (*(v56 + 8))(v52, v57);
    v78.origin.x = a3;
    v78.origin.y = a4;
    v78.size.width = a5;
    v78.size.height = a6;
    CGRectGetMaxX(v78);
  }

  __swift_project_boxed_opaque_existential_1Tm(v26, v26[3]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  sub_1E1AF10EC();
  sub_1E1AF10EC();
  v79.origin.x = a3;
  v79.origin.y = a4;
  v79.size.width = a5;
  v79.size.height = a6;
  CGRectGetWidth(v79);
  sub_1E1AF109C();
  sub_1E1AF106C();
  (*(v60 + 8))(v51, v61);

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

uint64_t ProductDescriptionLayout.DeveloperExtendedLinkLayout.init(metrics:primaryText:linkItems:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v6;
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = *(a1 + 112);
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  v8 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v8;
  result = sub_1E1308EC0(a2, a4 + 120);
  *(a4 + 160) = a3;
  return result;
}

uint64_t ProductDescriptionLayout.DeveloperExtendedLinkLayout.Metrics.init(primaryTextSpace:secondaryContentMargin:secondaryTextSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E1308EC0(a1, a4);
  sub_1E1308EC0(a2, a4 + 40);

  return sub_1E1308EC0(a3, a4 + 80);
}

double ProductDescriptionLayout.DeveloperExtendedLinkLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  v3 = v2;
  v66 = a1;
  v58 = sub_1E1AF162C();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1E1AF165C();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF1A6C();
  v51 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1E1AF1A1C();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v52 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF745C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E1B02CC0;
  v15 = v2[18];
  v16 = v3[19];
  v17 = __swift_project_boxed_opaque_existential_1Tm(v3 + 15, v15);
  v74 = v15;
  v75 = *(*(v16 + 8) + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v73);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v17, v15);
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_1E13BC274();
  v19 = v10;
  sub_1E1AF12DC();
  v21 = v20;
  v22 = v11 + 8;
  v23 = *(v11 + 8);
  v23(v13, v19);
  v71 = MEMORY[0x1E69E7DE0];
  v72 = MEMORY[0x1E69AB858];
  v70 = v21;
  v63 = sub_1E1AF140C();
  v68 = v63;
  v69 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(v67);
  sub_1E1AF13FC();
  v24 = MEMORY[0x1E69ABAA0];
  v64 = v7;
  *(v14 + 56) = v7;
  *(v14 + 64) = v24;
  __swift_allocate_boxed_opaque_existential_0((v14 + 32));
  sub_1E1AF1A5C();
  v25 = v3[20];
  if (*(v25 + 16))
  {
    __swift_project_boxed_opaque_existential_1Tm(v3 + 5, v3[8]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v27 = v26;
    v61 = v23;
    v23(v13, v19);
    v74 = MEMORY[0x1E69E7DE0];
    v75 = MEMORY[0x1E69AB858];
    *&v73 = v27;
    v28 = v52;
    sub_1E1AF1A2C();
    v30 = *(v14 + 16);
    v29 = *(v14 + 24);
    v62 = v19;
    if (v30 >= v29 >> 1)
    {
      v14 = sub_1E172D4BC((v29 > 1), v30 + 1, 1, v14);
    }

    v31 = v60;
    v74 = v60;
    v75 = MEMORY[0x1E69ABA90];
    v32 = __swift_allocate_boxed_opaque_existential_0(&v73);
    v33 = v59;
    (*(v59 + 16))(v32, v28, v31);
    *(v14 + 16) = v30 + 1;
    sub_1E1308EC0(&v73, v14 + 40 * v30 + 32);
    (*(v33 + 8))(v28, v31);
    v34 = *(v25 + 16);
    if (v34)
    {
      v59 = v22;
      v60 = v3;
      v35 = (v25 + 32);
      v36 = (v51 + 16);
      v37 = (v51 + 8);
      do
      {
        v38 = v35[3];
        v39 = v35[4];
        v40 = __swift_project_boxed_opaque_existential_1Tm(v35, v38);
        v74 = v38;
        v75 = *(v39 + 8);
        v41 = __swift_allocate_boxed_opaque_existential_0(&v73);
        (*(*(v38 - 8) + 16))(v41, v40, v38);
        __swift_project_boxed_opaque_existential_1Tm((v60 + 80), *(v60 + 104));
        sub_1E13BC274();
        sub_1E1AF12DC();
        v43 = v42;
        v61(v13, v62);
        v71 = MEMORY[0x1E69E7DE0];
        v72 = MEMORY[0x1E69AB858];
        v70 = v43;
        v68 = v63;
        v69 = MEMORY[0x1E69AB908];
        __swift_allocate_boxed_opaque_existential_0(v67);
        sub_1E1AF13FC();
        sub_1E1AF1A5C();
        v45 = *(v14 + 16);
        v44 = *(v14 + 24);
        if (v45 >= v44 >> 1)
        {
          v14 = sub_1E172D4BC((v44 > 1), v45 + 1, 1, v14);
        }

        v46 = v64;
        v74 = v64;
        v75 = MEMORY[0x1E69ABAA0];
        v47 = __swift_allocate_boxed_opaque_existential_0(&v73);
        v48 = v65;
        (*v36)(v47, v65, v46);
        *(v14 + 16) = v45 + 1;
        sub_1E1308EC0(&v73, v14 + 40 * v45 + 32);
        (*v37)(v48, v46);
        v35 += 5;
        --v34;
      }

      while (v34);
    }
  }

  (*(v56 + 104))(v54, *MEMORY[0x1E69AB970], v58);
  v49 = v53;
  sub_1E1AF163C();
  sub_1E1AF161C();
  (*(v55 + 8))(v49, v57);
  return a2;
}

uint64_t ProductDescriptionLayout.DeveloperExtendedLinkLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v45 = a2;
  v40 = sub_1E1AF745C();
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E1AF111C();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v38 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF18BC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1E1AF18DC();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v34 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 15, v6[18]);
  v36 = a6;
  sub_1E1AF11CC();
  v33[1] = v20;
  __swift_project_boxed_opaque_existential_1Tm(v7 + 15, v7[18]);
  v35 = a3;
  v50.origin.x = a3;
  v50.origin.y = a4;
  v50.size.width = a5;
  v50.size.height = a6;
  CGRectGetMinX(v50);
  v51.origin.x = a3;
  v51.origin.y = a4;
  v51.size.width = a5;
  v51.size.height = a6;
  CGRectGetMinY(v51);
  __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
  sub_1E1AF12FC();
  v21 = a5;
  sub_1E1AF116C();
  (*(v16 + 104))(v18, *MEMORY[0x1E69ABA28], v15);
  v22 = v6[20];
  v47 = v6;
  v48 = a1;
  sub_1E14A09F0(sub_1E1883F7C, v46, v22);
  v49[3] = sub_1E1AF140C();
  v49[4] = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(v49);
  sub_1E1AF13FC();
  v23 = v34;
  sub_1E1AF18CC();
  __swift_project_boxed_opaque_existential_1Tm(v7 + 15, v7[18]);
  sub_1E1AF115C();
  MaxY = CGRectGetMaxY(v52);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 5, v7[8]);
  v25 = v37;
  sub_1E13BC274();
  sub_1E1AF12DC();
  v27 = v26;
  (*(v39 + 8))(v25, v40);
  v28 = MaxY + v27;
  v29 = v35;
  v53.origin.x = v35;
  v53.origin.y = a4;
  v53.size.width = v21;
  v30 = v36;
  v53.size.height = v36;
  CGRectOffset(v53, 0.0, v28);
  v31 = v38;
  sub_1E1AF182C();
  v54.origin.x = v29;
  v54.origin.y = a4;
  v54.size.width = v21;
  v54.size.height = v30;
  CGRectGetMinX(v54);
  v55.origin.x = v29;
  v55.origin.y = a4;
  v55.size.width = v21;
  v55.size.height = v30;
  CGRectGetMinY(v55);
  v56.origin.x = v29;
  v56.origin.y = a4;
  v56.size.width = v21;
  v56.size.height = v30;
  CGRectGetWidth(v56);
  sub_1E1AF109C();
  sub_1E1AF10EC();
  sub_1E1AF109C();
  sub_1E1AF106C();
  (*(v43 + 8))(v31, v44);
  return (*(v41 + 8))(v23, v42);
}

uint64_t sub_1E1883C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v23 = a3;
  v26 = a4;
  v5 = sub_1E1AF184C();
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E1AF188C();
  v9 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF745C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((a2 + 80), *(a2 + 104));
  sub_1E13BC274();
  sub_1E1AF12DC();
  v17 = v16;
  (*(v13 + 8))(v15, v12);
  v29[3] = MEMORY[0x1E69E7DE0];
  v29[4] = MEMORY[0x1E69AB858];
  v29[0] = v17;
  v18 = v22;
  (*(v9 + 104))(v11, *MEMORY[0x1E69ABA10], v22);
  v28 = MEMORY[0x1E69E7CC0];
  sub_1E1425840();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0);
  sub_1E1383E14();
  v19 = v24;
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  (*(v25 + 8))(v8, v19);
  (*(v9 + 8))(v11, v18);
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_1E1883F9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_1E1883FE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1884068(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1E18840B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1884140()
{
  result = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    result = sub_1E138432C(319, &qword_1EE1D2AB0);
    if (v2 <= 0x3F)
    {
      result = sub_1E138432C(319, &qword_1EE1D2AE0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1E1884224()
{
  sub_1E18842E8();
  if (v0 <= 0x3F)
  {
    sub_1E1AF166C();
    if (v1 <= 0x3F)
    {
      sub_1E138432C(319, &qword_1EE1D2AC0);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E18842E8()
{
  if (!qword_1EE1E0798[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB4000);
    v0 = type metadata accessor for Conditional();
    if (!v1)
    {
      atomic_store(v0, qword_1EE1E0798);
    }
  }
}

uint64_t *TodayCardMediaGrid.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v78 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = &v65 - v6;
  v88 = sub_1E1AF5A6C();
  v76 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v72 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v65 - v9;
  v86 = sub_1E1AF39DC();
  v10 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v71 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v65 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - v15;
  v89 = sub_1E1AF380C();
  v83 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v70 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v75 = &v65 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v65 - v26;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v80 = v10;
  v28 = *(v10 + 16);
  v29 = v86;
  v28(v16, a2, v86);
  v79 = v27;
  v74 = v24;
  v69 = v16;
  v30 = v85;
  sub_1E1AF464C();
  v81 = a2;
  v68 = v10 + 16;
  v67 = v28;
  v28(v30, a2, v29);
  v31 = v75;
  v87 = a1;
  sub_1E1AF381C();
  v32 = v77;
  sub_1E1AF374C();
  v33 = (v83 + 8);
  v34 = *(v83 + 8);
  v34(v31, v89);
  v35 = v76;
  if ((*(v76 + 48))(v32, 1, v88) == 1)
  {
    sub_1E1308058(v32, &qword_1ECEB1F90);
    v36 = v30;
    v37 = sub_1E1AF5A7C();
    sub_1E14C1104(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v38 = 0x7370756B636F6CLL;
    v38[1] = 0xE700000000000000;
    v38[2] = v78;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E69AB690], v37);
    swift_willThrow();
    v39 = *(v80 + 8);
    v40 = v86;
    (v39)(v81, v86);
    v34(v87, v89);
    (v39)(v36, v40);
LABEL_5:
    sub_1E1308058(v79, &unk_1ECEB1770);
    swift_deallocPartialClassInstance();
    return v39;
  }

  v41 = v78;
  v42 = v34;
  v43 = v35;
  (*(v35 + 32))(v84, v32, v88);
  v44 = v74;
  sub_1E1AF381C();
  sub_1E1460790();
  sub_1E1AF36DC();
  v77 = v33;
  v75 = v42;
  (v42)(v44, v89);
  v45 = v90;
  if (v90 == 4)
  {
    v46 = sub_1E1AF5A7C();
    sub_1E14C1104(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v47 = 0x476B726F77747261;
    v47[1] = 0xEF65707954646972;
    v47[2] = v41;
    (*(*(v46 - 8) + 104))(v47, *MEMORY[0x1E69AB690], v46);
    swift_willThrow();
    v39 = *(v80 + 8);
    v48 = v86;
    (v39)(v81, v86);
    (v75)(v87, v89);
    (*(v35 + 8))(v84, v88);
    (v39)(v85, v48);
    goto LABEL_5;
  }

  v50 = v66;
  sub_1E1AF381C();
  v51 = sub_1E1AF36EC();
  v53 = v52;
  (v75)(v50, v89);
  v54 = 3;
  if ((v53 & 1) == 0)
  {
    v54 = v51;
  }

  v55 = v82;
  *(v82 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaGrid_lockupImpressionLimit) = v54;
  (*(v43 + 16))(v72, v84, v88);
  v56 = v86;
  v57 = v67;
  v67(v69, v85, v86);
  type metadata accessor for Lockup();
  sub_1E14C1104(&qword_1EE1E4F60, type metadata accessor for Lockup);
  *(v55 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaGrid_lockups) = sub_1E1AF631C();
  *(v55 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaGrid_artworkGridType) = v45;
  v58 = v70;
  (*(v83 + 16))(v70, v87, v89);
  v59 = v71;
  v60 = v81;
  v57(v71, v81, v56);
  v61 = v73;
  v62 = TodayCardMedia.init(deserializing:using:)(v58, v59);
  if (v61)
  {
    v39 = *(v80 + 8);
    (v39)(v60, v56);
    (v75)(v87, v89);
    (*(v43 + 8))(v84, v88);
    (v39)(v85, v56);
  }

  else
  {
    v39 = v62;
    v63 = v56;
    v64 = *(v80 + 8);
    v64(v60, v63);
    (v75)(v87, v89);
    (*(v43 + 8))(v84, v88);
    v64(v85, v63);
  }

  sub_1E1308058(v79, &unk_1ECEB1770);
  return v39;
}

uint64_t TodayCardMediaGrid.__allocating_init(lockups:artworkGridType:lockupImpressionLimit:impressionMetrics:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *a2;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaGrid_lockups) = a1;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaGrid_artworkGridType) = v13;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaGrid_lockupImpressionLimit) = a3;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_1E134FD1C(a4, v12 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);
  sub_1E134FD1C(v23, &v20, &unk_1ECEB5670);
  if (*(&v21 + 1))
  {
    v14 = v21;
    *(v12 + 32) = v20;
    *(v12 + 48) = v14;
    *(v12 + 64) = v22;
  }

  else
  {
    sub_1E1AEFE9C();
    v15 = sub_1E1AEFE7C();
    v17 = v16;
    (*(v9 + 8))(v11, v8);
    v19[1] = v15;
    v19[2] = v17;
    sub_1E1AF6F6C();
    sub_1E1308058(&v20, &unk_1ECEB5670);
  }

  sub_1E1308058(a4, &unk_1ECEB1770);
  sub_1E1308058(v23, &unk_1ECEB5670);
  *(v12 + 16) = 7;
  *(v12 + 24) = 1;
  return v12;
}

uint64_t TodayCardMediaGrid.init(lockups:artworkGridType:lockupImpressionLimit:impressionMetrics:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1E1AEFEAC();
  v21[0] = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v21 - v14;
  LOBYTE(v14) = *a2;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaGrid_lockups) = a1;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaGrid_artworkGridType) = v14;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaGrid_lockupImpressionLimit) = a3;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_1E134FD1C(a4, v15, &unk_1ECEB1770);
  sub_1E134FD1C(v28, &v22, &unk_1ECEB5670);
  if (*(&v23 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
  }

  else
  {
    sub_1E1AEFE9C();
    v16 = sub_1E1AEFE7C();
    v18 = v17;
    (*(v21[0] + 8))(v12, v10);
    v21[1] = v16;
    v21[2] = v18;
    sub_1E1AF6F6C();
    sub_1E1308058(&v22, &unk_1ECEB5670);
  }

  sub_1E1308058(a4, &unk_1ECEB1770);
  sub_1E1308058(v28, &unk_1ECEB5670);
  v19 = v26;
  *(v5 + 32) = v25;
  *(v5 + 48) = v19;
  *(v5 + 64) = v27;
  sub_1E134B7C8(v15, v5 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics);
  *(v5 + 16) = 7;
  *(v5 + 24) = 1;
  return v5;
}

uint64_t TodayCardMediaGrid.lockups.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaGrid_lockups;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t TodayCardMediaGrid.artworkGridType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaGrid_artworkGridType;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t TodayCardMediaGrid.artworkGridType.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaGrid_artworkGridType;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

char *TodayCardMediaGrid.offerAdamIds.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaGrid_lockups;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E68FFD80](v4, v2);
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v4 + 32);

        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v3 = sub_1E1AF71CC();
          goto LABEL_3;
        }
      }

      v9 = *(v6 + 16);
      v8 = *(v6 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1E172DC1C(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1E172DC1C((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      ++v4;
      if (v7 == v3)
      {
        goto LABEL_18;
      }
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v5;
}

uint64_t TodayCardMediaGrid.deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t TodayCardMediaGrid.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaGrid()
{
  result = qword_1EE1DDAD0;
  if (!qword_1EE1DDAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Promise.pipe(to:)()
{
  swift_retain_n();
  sub_1E1365864(v1);
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_1E188596C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = -1 << *(a1 + 32);
  v4 = ~v3;
  *a3 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = -v3;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  *(a3 + 8) = result;
  *(a3 + 16) = v4;
  *(a3 + 24) = 0;
  *(a3 + 32) = v9 & v6;
  v10 = -1 << *(a2 + 32);
  v11 = ~v10;
  *(a3 + 40) = a2;
  v14 = *(a2 + 64);
  v12 = a2 + 64;
  v13 = v14;
  v15 = -v10;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  *(a3 + 48) = v12;
  *(a3 + 56) = v11;
  *(a3 + 64) = 0;
  *(a3 + 72) = v16 & v13;
  *(a3 + 80) = 0;
  return result;
}

uint64_t GenericDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_1E188763C(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t sub_1E1885A6C(char a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = qword_1EE2166A0;
  swift_beginAccess();

  v10 = sub_1E1887F78(v9, a2, a3);

  if (!a1)
  {
LABEL_30:
    *(v4 + v8) = v10;

    v29 = *(v4 + qword_1EE1E9DF8);
    v30 = MEMORY[0x1E69E7CC0];
    *&v38 = MEMORY[0x1E69E7CC0];
    v31 = *(v29 + 16);

    if (!v31)
    {
      goto LABEL_41;
    }

    v32 = 0;
    v33 = v29 + 32;
    while (1)
    {
      v34 = v33 + 40 * v32;
      v35 = v32;
      while (1)
      {
        if (v35 >= *(v29 + 16))
        {
          __break(1u);
          goto LABEL_43;
        }

        sub_1E134E724(v34, &v44);
        if (*(*(v4 + v8) + 16))
        {
          break;
        }

LABEL_33:
        ++v35;
        result = sub_1E134B88C(&v44);
        v34 += 40;
        if (v31 == v35)
        {
          goto LABEL_41;
        }
      }

      sub_1E135FCF4(&v44);
      if ((v36 & 1) == 0)
      {
        break;
      }

      v37 = sub_1E134B88C(&v44);
      MEMORY[0x1E68FEF20](v37);
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v32 = v35 + 1;
      result = sub_1E1AF62AC();
      v33 = v29 + 32;
      v30 = v38;
      if (v31 - 1 == v35)
      {
LABEL_41:

        *&v44 = v30;
        BYTE8(v44) = 0;
        sub_1E1AF5BCC();
        return sub_1E1360914(v44, SBYTE8(v44));
      }
    }

    goto LABEL_33;
  }

  if (a1 != 1)
  {
    goto LABEL_28;
  }

  v11 = *(v4 + v8);
  sub_1E188596C(v11, v10, &v44);
  result = v11;
  v13 = &v46;
  v14 = *(&v45 + 1);
  v15 = (v45 + 64) >> 6;
  v16 = (*(&v47 + 1) + 64) >> 6;
  v17 = v46;
  v18 = *(&v48 + 1);
  v19 = v48;
LABEL_5:
  if (v49)
  {
    goto LABEL_27;
  }

  if (v17)
  {
    goto LABEL_12;
  }

  v21 = v14;
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v15)
    {
      if (v15 <= v14 + 1)
      {
        v27 = v14 + 1;
      }

      else
      {
        v27 = (v45 + 64) >> 6;
      }

      *&v48 = v19;
      *(&v48 + 1) = v18;
      *(&v45 + 1) = v27 - 1;
      goto LABEL_26;
    }

    v17 = *(*(&v44 + 1) + 8 * v22);
    ++v21;
    if (v17)
    {
      v14 = v22;
LABEL_12:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = *(*(v44 + 56) + ((v14 << 9) | (8 * v23)));
      if (v18)
      {
        goto LABEL_4;
      }

      v25 = v19;
      while (2)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_44;
        }

        if (v26 >= v16)
        {
          if (v16 <= v19 + 1)
          {
            v28 = v19 + 1;
          }

          else
          {
            v28 = (*(&v47 + 1) + 64) >> 6;
          }

          *(&v45 + 1) = v14;
          *&v46 = v17;
          *&v48 = v28 - 1;
          v13 = (&v48 + 8);
LABEL_26:
          *v13 = 0;
          v49 = 1;
LABEL_27:
          v40 = v46;
          v41 = v47;
          v42 = v48;
          v43 = v49;
          v38 = v44;
          v39 = v45;

          sub_1E1308058(&v38, &qword_1ECEB9C48);
LABEL_28:
          *(v4 + v8) = v10;
        }

        v18 = *(v47 + 8 * v26);
        ++v25;
        if (!v18)
        {
          continue;
        }

        break;
      }

      v19 = v26;
LABEL_4:
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      if (*(v24 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) != *(*(*(*(&v46 + 1) + 56) + ((v19 << 9) | (8 * v20))) + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden))
      {
        *(&v45 + 1) = v14;
        *&v46 = v17;
        *&v48 = v19;
        *(&v48 + 1) = v18;
        v40 = v46;
        v41 = v47;
        v42 = v48;
        v43 = v49;
        v38 = v44;
        v39 = v45;

        sub_1E1308058(&v38, &qword_1ECEB9C48);
        goto LABEL_30;
      }

      goto LABEL_5;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t GenericDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1E188763C(a1, a2, a3, a4, a5);

  return v5;
}

uint64_t sub_1E1885EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v30 = a3;
  v31 = a4;
  v6 = type metadata accessor for ClosedGenericPageIntent();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2870);
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v29 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - v12;
  v14 = sub_1E1AEFCCC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - v19;
  sub_1E134FD1C(a2, v13, &unk_1ECEB4B60);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1E1308058(v13, &unk_1ECEB4B60);
    v21 = v30;
    if (v30)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2878);
      v38[0] = v21;

      return sub_1E1AF582C();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2878);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9580);
      sub_1E1302CD4(&qword_1ECEB9588, &qword_1ECEB9580);
      swift_allocError();
      *v28 = 0;
      return sub_1E1AF581C();
    }
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    v36 = 0xD000000000000023;
    v37 = 0x80000001E1B3B8F0;
    sub_1E1AF6F6C();
    v23 = *(v15 + 16);
    v23(v17, v20, v14);
    sub_1E134E724(v38, v8);
    v23(&v8[*(v6 + 20)], v17, v14);
    sub_1E1888244();
    v24 = v32;
    sub_1E1AF439C();
    v25 = *(v15 + 8);
    v25(v17, v14);
    sub_1E134B88C(v38);
    type metadata accessor for JSIntentDispatcher();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    sub_1E1AF4C1C();

    sub_1E1AF422C();
    sub_1E1AF4BEC();

    v26 = sub_1E1AF4BFC();

    v27 = sub_1E136B440(v24, v26, "AppStoreKit/GenericDiffablePageContentPresenter.swift", 53, 2);

    (*(v34 + 8))(v24, v35);
    v25(v20, v14);
    return v27;
  }
}

uint64_t sub_1E18863BC(uint64_t a1)
{
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  sub_1E1AF4BEC();

  v2 = sub_1E1AF4C0C();

  v3 = sub_1E1367B40(a1, v2, "AppStoreKit/GenericDiffablePageContentPresenter.swift", 53, 2);

  return v3;
}

uint64_t sub_1E18864AC(uint64_t a1, uint64_t a2)
{
  sub_1E134FD1C(a1, &v6, &qword_1ECEB2DF0);
  if (v7)
  {
    sub_1E1301CF0(&v6, v8);
    type metadata accessor for JSIntentDispatcher();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    sub_1E137A5C4(v8, &v6);
    v3 = sub_1E1368D30(&v6, a2, "AppStoreKit/GenericDiffablePageContentPresenter.swift", 53, 2);

    sub_1E137A630(&v6);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    sub_1E1308058(&v6, &qword_1ECEB2DF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2878);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9580);
    sub_1E1302CD4(&qword_1ECEB9588, &qword_1ECEB9580);
    swift_allocError();
    *v5 = 2;
    return sub_1E1AF581C();
  }
}

uint64_t sub_1E188661C(uint64_t a1)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28B8);
  v54 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v49 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v6 = qword_1EE2166A0;
  v7 = Strong;
  swift_beginAccess();

  v9 = a1;
  v10 = sub_1E1887280(v8, v7);

  *(v7 + v6) = v10;

  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1E159D714(MEMORY[0x1E69E7CC0]);
  v13 = qword_1EE1D4010;
  swift_beginAccess();
  v58 = v13;
  v53 = v7;
  *(v7 + v13) = v12;

  v14 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v15 = *(v9 + v14);
  v62[0] = v11;
  v16 = *(v15 + 16);
  v17 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;

  v55 = v9;
  swift_beginAccess();
  if (!v16)
  {
    goto LABEL_13;
  }

  v18 = 0;
  while (2)
  {
    v19 = v15 + 32 + 40 * v18;
    v20 = v18;
    v21 = v55;
    while (1)
    {
      if (v20 >= *(v15 + 16))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      sub_1E134E724(v19, v63);
      if (*(*(v21 + v17) + 16))
      {
        break;
      }

LABEL_5:
      ++v20;
      sub_1E134B88C(v63);
      v19 += 40;
      if (v16 == v20)
      {
        goto LABEL_13;
      }
    }

    sub_1E135FCF4(v63);
    if ((v22 & 1) == 0)
    {

      goto LABEL_5;
    }

    v23 = sub_1E134B88C(v63);
    MEMORY[0x1E68FEF20](v23);
    if (*((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v18 = v20 + 1;
    sub_1E1AF62AC();
    v11 = v62[0];
    if (v16 - 1 != v20)
    {
      continue;
    }

    break;
  }

LABEL_13:

  if (v11 >> 62)
  {
LABEL_44:
    v24 = sub_1E1AF71CC();
  }

  else
  {
    v24 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v53;
  if (!v24)
  {
LABEL_37:
  }

  v26 = 0;
  v57 = v11 & 0xC000000000000001;
  v50 = v11 & 0xFFFFFFFFFFFFFF8;
  v56 = (v54 + 32);
  v49 = v54 + 40;
  v51 = v24;
  while (1)
  {
    if (v57)
    {
      v27 = MEMORY[0x1E68FFD80](v26, v11);
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v26 >= *(v50 + 16))
      {
        goto LABEL_42;
      }

      v27 = *(v11 + 8 * v26 + 32);

      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_40;
      }
    }

    if (!*(v27 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel))
    {

      goto LABEL_18;
    }

    sub_1E134E724(v27 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28C8);
    sub_1E1302CD4(&qword_1EE1D2A58, &qword_1ECEB28C8);

    sub_1E1AF3CDC();
    type metadata accessor for GenericDiffablePageContentPresenter();
    v29 = v52;
    sub_1E1AF3CEC();
    __swift_destroy_boxed_opaque_existential_1(v62);
    v30 = v58;
    swift_beginAccess();
    v31 = *v56;
    (*v56)(v59, v29, v60);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v25;
    v34 = isUniquelyReferenced_nonNull_native;
    v61 = *(v33 + v30);
    v35 = v61;
    *(v33 + v30) = 0x8000000000000000;
    v37 = sub_1E135FCF4(v63);
    v38 = v35[2];
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_41;
    }

    v41 = v36;
    if (v35[3] >= v40)
    {
      if ((v34 & 1) == 0)
      {
        sub_1E14186BC();
      }

      goto LABEL_32;
    }

    sub_1E168D488(v40, v34);
    v42 = sub_1E135FCF4(v63);
    if ((v41 & 1) != (v43 & 1))
    {
      break;
    }

    v37 = v42;
LABEL_32:
    v25 = v53;
    v44 = v61;
    if (v41)
    {
      (*(v54 + 40))(v61[7] + *(v54 + 72) * v37, v59, v60);
      sub_1E134B88C(v63);
    }

    else
    {
      v61[(v37 >> 6) + 8] |= 1 << v37;
      sub_1E134E724(v63, v44[6] + 40 * v37);
      v31((v44[7] + *(v54 + 72) * v37), v59, v60);
      sub_1E134B88C(v63);
      v45 = v44[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_43;
      }

      v44[2] = v47;
    }

    *(v25 + v58) = v44;

    swift_endAccess();

    v24 = v51;
LABEL_18:
    ++v26;
    if (v28 == v24)
    {
      goto LABEL_37;
    }
  }

  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E1886D6C(uint64_t a1, uint64_t a2)
{
  sub_1E1300B24(a1, v6);
  sub_1E1300B24(a2, &v7);
  sub_1E134FD1C(v6, v4, &qword_1ECEB2858);
  sub_1E1886E84(v4, v5);
  sub_1E1308058(v6, &qword_1ECEB2858);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t (*sub_1E1886E0C(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E188823C;
  *(v2 + 24) = a1;

  return sub_1E137B768;
}

uint64_t sub_1E1886E84(uint64_t a1, uint64_t a2)
{
  sub_1E1300B24(a1, v9);
  sub_1E1300B24(a2, &v10);
  v8 = MEMORY[0x1E69E7CC0];
  v7 = 0;
  v4[2] = v9;
  v4[3] = &v7;
  v4[4] = &v8;
  sub_1E1885A6C(1, sub_1E1887F6C, v4);
  v5 = v8;
  v6 = 17;

  sub_1E1AF5BCC();
  sub_1E1360914(v5, v6);

  return sub_1E1308058(v9, &qword_1ECEB2858);
}

void *sub_1E1886F68(void *a1, void *a2, _BYTE *a3, void *a4)
{
  v8 = OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  sub_1E1AF3FEC();
  v9 = MEMORY[0x1E68FFC60](a1 + v8, v17);
  v10 = sub_1E134B88C(v17);
  if (v9)
  {
    v11 = a1[3];
    MEMORY[0x1EEE9AC00](v10);
    v16[2] = a2;

    v12 = sub_1E188E208(sub_1E1543C80, v16, v11);
    if (*(a1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden))
    {
      v13 = 1;
    }

    else if (*(v11 + 16))
    {
      v13 = *(v12 + 16) == 0;
    }

    else
    {
      v13 = 0;
    }

    *a3 = v13;
    v17[0] = 100;
    a1 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v12, v17, 1, v13);

    MEMORY[0x1E68FEF20](v14);
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    sub_1E1AF62AC();
  }

  else
  {
  }

  return a1;
}

uint64_t GenericDiffablePageContentPresenter.deinit()
{
  v0 = _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0();

  return v0;
}

uint64_t GenericDiffablePageContentPresenter.__deallocating_deinit()
{
  _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_1E1887218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1E1300EA8(a10);
  sub_1E1300EA8(a6);
  sub_1E1300EA8(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1E1887280(uint64_t a1, uint64_t a2)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28B8);
  v4 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v38 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = v36 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB60B0);
  v8 = sub_1E1AF729C();
  v49 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v41 = qword_1EE1D4010;
  v42 = a2;
  result = swift_beginAccess();
  v16 = 0;
  v17 = (v12 + 63) >> 6;
  v36[3] = v4 + 16;
  v36[2] = v4 + 32;
  v39 = v4;
  v36[1] = v4 + 8;
  v43 = v8 + 8;
  if (v14)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v21 = v18 | (v16 << 6);
      v22 = v49;
      sub_1E134E724(*(v49 + 48) + 40 * v21, v47);
      v23 = *(*(v22 + 56) + 8 * v21);
      v44 = v47[0];
      v45 = v47[1];
      v46 = v48;
      if (*(v23 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel) && (v24 = *(v42 + v41), *(v24 + 16)))
      {
        v25 = OBJC_IVAR____TtC11AppStoreKit5Shelf_id;

        v26 = sub_1E135FCF4(v23 + v25);
        if (v27)
        {
          (*(v39 + 16))(v38, *(v24 + 56) + *(v39 + 72) * v26, v40);

          v28 = *(v39 + 32);
          v36[0] = v8;
          v29 = v37;
          v28(v37, v38, v40);
          sub_1E1AF35AC();

          v30 = v29;
          v8 = v36[0];
          result = (*(v39 + 8))(v30, v40);
        }

        else
        {
        }
      }

      else
      {
      }

      *(v43 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v31 = v8[6] + 40 * v21;
      v32 = v45;
      *v31 = v44;
      *(v31 + 16) = v32;
      *(v31 + 32) = v46;
      *(v8[7] + 8 * v21) = v23;
      v33 = v8[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      v8[2] = v35;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v16;
    while (1)
    {
      v16 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v16 >= v17)
      {

        return v8;
      }

      v20 = *(v10 + 8 * v16);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E188763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v76 = a3;
  v84 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v79 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v81 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75 - v13;
  v77 = &v75 - v13;
  v15 = qword_1EE1D4010;
  v16 = MEMORY[0x1E69E7CC0];
  *(v6 + v15) = sub_1E159D714(MEMORY[0x1E69E7CC0]);
  v83 = a2;
  sub_1E134FD1C(a2, v14, &unk_1ECEB4B60);
  *(v6 + qword_1EE1E9D48) = 0;
  *(v6 + qword_1EE1E9DF8) = v16;
  v17 = qword_1EE2166A0;
  v82 = a5;

  v80 = a4;

  *(v6 + v17) = sub_1E159D6F0(v16);
  v18 = (v6 + qword_1EE1E9E00);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v6 + qword_1EE1E9EA0);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v6 + qword_1EE1E9E08);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v6 + qword_1EE1E9DF0);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v6 + qword_1EE1E9E98);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v6 + qword_1EE216698);
  *v23 = 0u;
  v23[1] = 0u;
  *(v23 + 25) = 0u;
  *(v6 + qword_1EE2166D0) = 0;
  *(v6 + qword_1EE1E9D50) = 0;
  *(v6 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v6 + qword_1EE2166C8) = 0;
  v24 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33F0);
  swift_allocObject();
  *(v6 + v24) = sub_1E1AF5BEC();
  v25 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v6 + v25) = sub_1E1AF5BEC();
  v26 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3400);
  swift_allocObject();
  *(v6 + v26) = sub_1E1AF5BEC();
  v27 = qword_1EE2166B0;
  swift_allocObject();
  *(v6 + v27) = sub_1E1AF5BEC();
  v28 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v6 + v28) = sub_1E1AF5BEC();
  v29 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  *(v6 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE1E9DD8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v32 = *(*(v31 - 8) + 56);
  v32(v6 + v30, 1, 1, v31);
  v32(v6 + qword_1EE1E9DE0, 1, 1, v31);
  v34 = v76;
  v33 = v77;
  *(v6 + 16) = v84;
  sub_1E13E23F8(v33, v6 + qword_1EE216678);
  v35 = *v18;
  *v18 = 0;
  v18[1] = 0;
  sub_1E1300EA8(v35);
  v36 = *v20;
  *v20 = 0;
  v20[1] = 0;
  sub_1E1300EA8(v36);
  if (v34)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = v34;
    v38 = sub_1E1445E6C;
  }

  else
  {
    v38 = 0;
    v37 = 0;
  }

  v39 = *v19;
  *v19 = v38;
  v19[1] = v37;
  sub_1E1300EA8(v39);
  v40 = *v21;
  *v21 = 0;
  v21[1] = 0;
  sub_1E1300EA8(v40);
  v41 = *v22;
  *v22 = 0;
  v22[1] = 0;
  sub_1E1300EA8(v41);
  v42 = v81;
  *(v6 + qword_1EE1E9E90) = v80;
  v44 = v82;
  v43 = v83;
  *(v6 + qword_1EE216690) = v82;
  sub_1E134FD1C(v43, v42, &unk_1ECEB4B60);
  v45 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v46 = (v78 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  sub_1E13E23F8(v42, v48 + v45);
  *(v48 + v46) = v34;
  v49 = v84;
  *(v48 + v47) = v84;
  *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v44;
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  *(v50 + 24) = v44;
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1E188822C;
  *(v52 + 24) = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1E1888164;
  *(v53 + 24) = v48;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1E13E2498;
  *(v54 + 24) = v53;
  v55 = (v6 + qword_1EE1E9E00);
  v56 = *(v6 + qword_1EE1E9E00);
  *v55 = sub_1E13E24A0;
  v55[1] = v54;
  swift_retain_n();
  v57 = v51;
  swift_retain_n();
  swift_retain_n();

  sub_1E1300EA8(v56);
  v58 = (v6 + qword_1EE1E9EA0);
  v59 = *(v6 + qword_1EE1E9EA0);
  v60 = *(v6 + qword_1EE1E9EA0 + 8);
  if (v59)
  {
    v61 = swift_allocObject();
    *(v61 + 16) = v59;
    *(v61 + 24) = v60;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_1E13E24B8;
    *(v62 + 24) = v61;
    v63 = sub_1E13E24C0;
  }

  else
  {
    v63 = 0;
    v62 = *(v6 + qword_1EE1E9EA0 + 8);
  }

  *v58 = v63;
  v58[1] = v62;
  sub_1E1300E34(v59);
  sub_1E1300EA8(v59);
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1E1888234;
  *(v64 + 24) = v57;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1E13E24A8;
  *(v65 + 24) = v64;
  v66 = (v6 + qword_1EE1E9E08);
  v67 = *(v6 + qword_1EE1E9E08);
  *v66 = sub_1E13E24B0;
  v66[1] = v65;

  sub_1E1300EA8(v67);
  v68 = (v6 + qword_1EE1E9DF0);
  v69 = *(v6 + qword_1EE1E9DF0);
  *v68 = sub_1E1888224;
  v68[1] = v50;

  sub_1E1300EA8(v69);
  v70 = swift_allocObject();
  *(v70 + 16) = sub_1E155BC10;
  *(v70 + 24) = v52;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_1E13E2498;
  *(v71 + 24) = v70;
  v72 = (v6 + qword_1EE1E9E98);
  v73 = *(v6 + qword_1EE1E9E98);
  *v72 = sub_1E13E24A0;
  v72[1] = v71;

  sub_1E1300EA8(v73);

  sub_1E1308058(v83, &unk_1ECEB4B60);
  return v6;
}

uint64_t type metadata accessor for GenericDiffablePageContentPresenter()
{
  result = qword_1EE1D4000;
  if (!qword_1EE1D4000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1887F78(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v36 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB60B0);
  result = sub_1E1AF729C();
  v6 = 0;
  v28 = result;
  v29 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v27 = result + 64;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      sub_1E134E724(*(v29 + 48) + 40 * v17, v34);
      v31 = v34[0];
      v32 = v34[1];
      v33 = v35;

      v19 = a2(v18);
      if (v3)
      {
        break;
      }

      v20 = v19;

      result = v28;
      *(v27 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v21 = v28[6] + 40 * v17;
      v22 = v31;
      v23 = v32;
      *(v21 + 32) = v33;
      *v21 = v22;
      *(v21 + 16) = v23;
      *(v28[7] + 8 * v17) = v20;
      v24 = v28[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_17;
      }

      v28[2] = v26;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    sub_1E134B88C(&v31);

    return v28;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E1888164(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E1885EF0(a1, v1 + v4, v7, v8, v9);
}

unint64_t sub_1E1888244()
{
  result = qword_1EE1D9C48[0];
  if (!qword_1EE1D9C48[0])
  {
    type metadata accessor for ClosedGenericPageIntent();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1D9C48);
  }

  return result;
}

uint64_t AppleSilicon.isRosettaAvailable.getter()
{
  v1 = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB71D0);
  sub_1E1AF690C();

  v2 = v6;
  if (v6 == 2)
  {
    v3 = OBJC_IVAR____TtC11AppStoreKit12AppleSilicon_rosettaAvailabilityConditionLock;
    v4 = [*(v1 + OBJC_IVAR____TtC11AppStoreKit12AppleSilicon_rosettaAvailabilityConditionLock) lockWhenCondition_];
    MEMORY[0x1EEE9AC00](v4);

    sub_1E1AF690C();

    v2 = (v6 == 2) | v6;
    [*(v1 + v3) unlock];
  }

  return v2 & 1;
}

id static AppleSilicon.makeEnableAlmondFeatureFlag()()
{
  v0 = sub_1E1AF5DBC();
  v1 = sub_1E1AF5DBC();
  v2 = [objc_opt_self() flagForFeature:v0 domain:v1];

  return v2;
}

id sub_1E18884E8()
{
  v1 = sub_1E1AF320C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11AppStoreKit12AppleSilicon_isSupportEnabled;
  result = swift_beginAccess();
  if (*(v0 + v5) == 1)
  {
    v7 = OBJC_IVAR____TtC11AppStoreKit12AppleSilicon_rosettaAvailabilityConditionLock;
    [*(v0 + OBJC_IVAR____TtC11AppStoreKit12AppleSilicon_rosettaAvailabilityConditionLock) lock];
    v8 = *(v0 + OBJC_IVAR____TtC11AppStoreKit12AppleSilicon_isRosettaAvailableBox);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    v11[2] = v9;
    sub_1E139D5D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    v10 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v10);
    v11[-4] = sub_1E18888F8;
    v11[-3] = 0;
    v11[-2] = v8;
    sub_1E1AF68FC();
    (*(v2 + 8))(v4, v1);

    return [*(v0 + v7) unlockWithCondition_];
  }

  return result;
}

uint64_t AppleSilicon.isSupportEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit12AppleSilicon_isSupportEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AppleSilicon.isSupportEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit12AppleSilicon_isSupportEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id AppleSilicon.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppleSilicon.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1E1888A1C@<X0>(void *(*a1)(uint64_t *__return_ptr, char *)@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(a2 + 24);
  result = a1(&v8, &v7);
  *a3 = v8;
  return result;
}

void *sub_1E1888AB8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  swift_beginAccess();
  v6 = *(v4 + 24);
  result = v3(&v7, &v6);
  *a1 = v7;
  return result;
}

uint64_t VideoPlaybackScrollObserver.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return v2;
}

uint64_t VideoPlaybackScrollObserver.init(_:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return v1;
}

uint64_t VideoPlaybackScrollObserver.__deallocating_deinit()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1E1888C84()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
    if (v2)
    {
      v3 = *(Strong + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo + 8);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 8);
      v6 = *(v5 + 8);

      v7 = v2;
      v6(v9, ObjectType, v5);
    }

    else
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));

      v7 = 0;
    }

    v8 = sub_1E1547654(v9);

    sub_1E13E2E98(v9);
    if (!v8)
    {
      sub_1E140DE80();
      sub_1E140EEAC();
    }
  }
}

uint64_t ShelfSupplementaryProvider.dequeueSupplementaryView(elementKind:at:for:in:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(a8 + 24))(&v14, a1, a2, a4, a6, a7, a8);
  if (v15)
  {
    sub_1E1361B28(&v14, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v12 = (*(v11 + 24))(a3, a5, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_1E1488CF4(&v14);
    return 0;
  }

  return v12;
}

double ShelfSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t PageRefreshGate.__allocating_init(policy:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1E188BA60(a1);

  return v2;
}

uint64_t PageRefreshGate.viewWillAppear(on:)(uint64_t a1)
{
  *(v1 + 40) = 1;
  sub_1E1889F10();

  return sub_1E188B030(a1);
}

uint64_t PageRefreshGate.appWillForeground(on:)(uint64_t a1)
{
  *(v1 + 41) = 1;
  sub_1E1889F10();

  return sub_1E188B030(a1);
}

uint64_t PageRefreshGate.init(policy:)(uint64_t a1)
{
  v1 = sub_1E188BA60(a1);

  return v1;
}

uint64_t sub_1E1889090()
{
  v1 = sub_1E1AF326C();
  v47 = *(v1 - 8);
  v48 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v45 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v46 = v34 - v4;
  v43 = sub_1E1AF320C();
  MEMORY[0x1EEE9AC00](v43);
  v44 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v34 - v7;
  v9 = sub_1E1AEFE6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v34 - v14;
  v16 = *(v0 + 32);
  sub_1E134FD1C(v16 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_strategy, v8, &qword_1ECEB7F60);
  refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
  if ((*(*(refreshed - 8) + 48))(v8, 1, refreshed) == 1)
  {
    return sub_1E1308058(v8, &qword_1ECEB7F60);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1E16F7568(v8);
  }

  v19 = v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F68) + 48)];
  v41 = *(v10 + 32);
  v42 = v10 + 32;
  v41(v15, v8, v9);
  if (v19 != 1)
  {
    return (*(v10 + 8))(v15, v9);
  }

  v20 = OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_delayedRefresh;
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_delayedRefresh))
  {
    return (*(v10 + 8))(v15, v9);
  }

  v40 = v0;
  sub_1E1AEFDFC();
  if (v21 <= 0.0)
  {
    return (*(v10 + 8))(v15, v9);
  }

  v38 = v20;
  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v37 = sub_1E1AF591C();
  v36 = __swift_project_value_buffer(v37, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  v34[1] = 8 * *(*(sub_1E1AF38EC() - 8) + 72);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1E1B07790;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E1AF382C();
  v51 = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(aBlock);
  v39 = v10;
  v34[0] = *(v10 + 16);
  (v34[0])(boxed_opaque_existential_0, v15, v9);
  sub_1E1AF38BC();
  sub_1E1308058(aBlock, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v51 = MEMORY[0x1E69E6370];
  LOBYTE(aBlock[0]) = 1;
  sub_1E1AF38BC();
  sub_1E1308058(aBlock, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v23 = *(v16 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_updateDelayInterval);
  v51 = MEMORY[0x1E69E63B0];
  aBlock[0] = v23;
  sub_1E1AF38BC();
  sub_1E1308058(aBlock, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  v24 = swift_allocObject();
  swift_weakInit();
  (v34[0])(v13, v15, v9);
  v25 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v41((v26 + v25), v13, v9);
  *(v26 + v25 + v11) = 1;
  v52 = sub_1E188BD74;
  v53 = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  v51 = &block_descriptor_82;
  _Block_copy(aBlock);
  v49 = MEMORY[0x1E69E7CC0];
  sub_1E188BDF8(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  sub_1E1AF32AC();
  swift_allocObject();
  v27 = sub_1E1AF328C();

  sub_1E1361A80();
  v28 = sub_1E1AF68EC();
  v29 = v45;
  sub_1E1AF325C();
  v30 = v46;
  sub_1E1AF32DC();
  v31 = *(v47 + 8);
  v32 = v29;
  v33 = v48;
  v31(v32, v48);
  sub_1E1AF68CC();

  v31(v30, v33);
  (*(v39 + 8))(v15, v9);
  *(v40 + v38) = v27;
}

void sub_1E1889908()
{
  if (*(*(v0 + 32) + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) == 1)
  {
    v1 = [objc_opt_self() defaultCenter];
    if (qword_1ECEB0F98 != -1)
    {
      swift_once();
    }

    v2 = qword_1ECEF4608;
    v3 = [objc_opt_self() mainQueue];
    v4 = swift_allocObject();
    swift_weakInit();
    v10 = sub_1E188BE40;
    v11 = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1395DC0;
    ObjectType = &block_descriptor_15;
    v5 = _Block_copy(aBlock);

    v6 = [v1 addObserverForName:v2 object:0 queue:v3 usingBlock:v5];
    _Block_release(v5);

    ObjectType = swift_getObjectType();
    aBlock[0] = v6;
    v7 = OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_displayDeviceDrivenContentChangeToken;
    swift_beginAccess();
    sub_1E13619D8(aBlock, v0 + v7, &qword_1ECEB2DF0);
    swift_endAccess();
  }
}

uint64_t PageRefreshGate.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_delayedRefresh))
  {

    sub_1E1AF329C();
  }

  v2 = OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_displayDeviceDrivenContentChangeToken;
  swift_beginAccess();
  sub_1E134FD1C(v0 + v2, &v5, &qword_1ECEB2DF0);
  if (v6)
  {
    sub_1E1301CF0(&v5, &v7);
    v3 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_1Tm(&v7, v8);
    [v3 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    sub_1E1308058(&v5, &qword_1ECEB2DF0);
  }

  sub_1E1361B18(*(v1 + 16), *(v1 + 24));

  sub_1E1308058(v1 + OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_lastOffscreenDate, &unk_1ECEBB780);

  sub_1E1308058(v1 + v2, &qword_1ECEB2DF0);
  return v1;
}

uint64_t PageRefreshGate.__deallocating_deinit()
{
  PageRefreshGate.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1889CCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E17B87D4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4);
}

uint64_t sub_1E1889D60(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E188BD3C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_1E1300E34(v3);
  return sub_1E1361B18(v8, v9);
}

uint64_t PageRefreshGate.performRefresh.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1E1300E34(v1);
  return v1;
}

uint64_t PageRefreshGate.performRefresh.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1E1361B18(v5, v6);
}

uint64_t sub_1E1889F10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v51 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v51 - v5;
  v7 = sub_1E1AEFE6C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v51 - v15;
  if (*(v0 + 40) == 1 && *(v0 + 41) == 1)
  {
    v17 = OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_lastOffscreenDate;
    swift_beginAccess();
    sub_1E134FD1C(v0 + v17, v6, &unk_1ECEBB780);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1E1308058(v6, &unk_1ECEBB780);
      if (qword_1EE1E35B0 != -1)
      {
        swift_once();
      }

      v18 = sub_1E1AF591C();
      __swift_project_value_buffer(v18, qword_1EE216158);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF38CC();
      sub_1E1AF382C();
      sub_1E1AF548C();
    }

    v57 = v8;
    v21 = *(v8 + 32);
    v21(v16, v6, v7);
    v22 = *(v0 + 32);
    if (*(v22 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) == 1 && *(v0 + OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_displayDeviceDrivenContentChanged) == 1)
    {
      if (qword_1EE1E35B0 != -1)
      {
        swift_once();
      }

      v23 = sub_1E1AF591C();
      __swift_project_value_buffer(v23, qword_1EE216158);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF38CC();
      sub_1E1AF382C();
      sub_1E1AF548C();

      swift_beginAccess();
      v24 = *(v0 + 16);
      v25 = v57;
      if (v24)
      {
        v26 = *(v0 + 24);
        swift_endAccess();

        v24(v22);
        sub_1E1361B18(v24, v26);
        return (*(v25 + 8))(v16, v7);
      }

      (*(v57 + 8))(v16, v7);
      return swift_endAccess();
    }

    v56 = v16;
    sub_1E134FD1C(v22 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_strategy, v3, &qword_1ECEB7F60);
    refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
    if ((*(*(refreshed - 8) + 48))(v3, 1, refreshed) == 1)
    {
      return (*(v57 + 8))(v56, v7);
    }

    v55 = v0;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21(v14, v3, v7);
      sub_1E1AEFE5C();
      sub_1E188BDF8(&qword_1EE1FADC0, MEMORY[0x1E6969530]);
      v28 = sub_1E1AF5D7C();
      v29 = v57;
      v53 = *(v57 + 8);
      v54 = v57 + 8;
      v53(v11, v7);
      if (v28)
      {
        if (qword_1EE1E35B0 != -1)
        {
          swift_once();
        }

        v52 = sub_1E1AF591C();
        v51 = __swift_project_value_buffer(v52, qword_1EE216158);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B070F0;
        sub_1E1AF38CC();
        sub_1E1AF382C();
        sub_1E1AF382C();
        v59 = v7;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v58);
        (*(v29 + 16))(boxed_opaque_existential_0, v14, v7);
        sub_1E1AF38BC();
        sub_1E1308058(v58, &qword_1ECEB2DF0);
        sub_1E1AF382C();
        v31 = *(v22 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_updateDelayInterval);
        v59 = MEMORY[0x1E69E63B0];
        v58[0] = v31;
        sub_1E1AF38BC();
        sub_1E1308058(v58, &qword_1ECEB2DF0);
        sub_1E1AF548C();

        sub_1E1889090();
        goto LABEL_35;
      }

      if (qword_1EE1E35B0 != -1)
      {
        swift_once();
      }

      v40 = sub_1E1AF591C();
      v52 = __swift_project_value_buffer(v40, qword_1EE216158);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B070F0;
      sub_1E1AF38CC();
      sub_1E1AF382C();
      sub_1E1AF382C();
      v59 = v7;
      v41 = __swift_allocate_boxed_opaque_existential_0(v58);
      (*(v29 + 16))(v41, v14, v7);
      sub_1E1AF38BC();
      sub_1E1308058(v58, &qword_1ECEB2DF0);
      sub_1E1AF382C();
      v42 = *(v22 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_updateDelayInterval);
      v59 = MEMORY[0x1E69E63B0];
      v58[0] = v42;
      sub_1E1AF38BC();
      sub_1E1308058(v58, &qword_1ECEB2DF0);
      sub_1E1AF548C();
      v43 = v55;

      swift_beginAccess();
      v44 = *(v43 + 16);
      if (v44)
      {
        v45 = *(v43 + 24);
        swift_endAccess();

        v44(v22);
        sub_1E1361B18(v44, v45);
LABEL_35:
        v46 = v53;
        v53(v14, v7);
        return v46(v56, v7);
      }

      v50 = v53;
      v53(v14, v7);
      v50(v56, v7);
    }

    else
    {
      v32 = *v3;
      sub_1E1AEFD9C();
      if (v32 >= v33)
      {
        if (qword_1EE1E35B0 != -1)
        {
          swift_once();
        }

        v47 = sub_1E1AF591C();
        v54 = __swift_project_value_buffer(v47, qword_1EE216158);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B070F0;
        sub_1E1AF38CC();
        sub_1E1AF382C();
        sub_1E1AF382C();
        v48 = MEMORY[0x1E69E63B0];
        v59 = MEMORY[0x1E69E63B0];
        *v58 = v32;
        sub_1E1AF38BC();
        sub_1E1308058(v58, &qword_1ECEB2DF0);
        sub_1E1AF382C();
        v49 = *(v22 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_updateDelayInterval);
        v59 = v48;
        v58[0] = v49;
        sub_1E1AF38BC();
        sub_1E1308058(v58, &qword_1ECEB2DF0);
        sub_1E1AF548C();

        return (*(v57 + 8))(v56, v7);
      }

      if (qword_1EE1E35B0 != -1)
      {
        swift_once();
      }

      v34 = sub_1E1AF591C();
      v54 = __swift_project_value_buffer(v34, qword_1EE216158);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B070F0;
      sub_1E1AF38CC();
      sub_1E1AF382C();
      sub_1E1AF382C();
      v35 = MEMORY[0x1E69E63B0];
      v59 = MEMORY[0x1E69E63B0];
      *v58 = v32;
      sub_1E1AF38BC();
      sub_1E1308058(v58, &qword_1ECEB2DF0);
      sub_1E1AF382C();
      v36 = *(v22 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_updateDelayInterval);
      v59 = v35;
      v58[0] = v36;
      sub_1E1AF38BC();
      sub_1E1308058(v58, &qword_1ECEB2DF0);
      sub_1E1AF548C();
      v37 = v55;

      swift_beginAccess();
      v38 = *(v37 + 16);
      if (v38)
      {
        v39 = *(v37 + 24);
        swift_endAccess();

        v38(v22);
        sub_1E1361B18(v38, v39);
        return (*(v57 + 8))(v56, v7);
      }

      (*(v57 + 8))(v56, v7);
    }

    return swift_endAccess();
  }

  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v20 = sub_1E1AF591C();
  __swift_project_value_buffer(v20, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E1AF548C();
}

uint64_t sub_1E188B030(uint64_t a1)
{
  v3 = sub_1E1AF591C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v24 - v12;
  if ((v1[40] & 1) == 0)
  {
    if (v1[42] != 1)
    {
      return result;
    }

    v1[42] = 0;
    goto LABEL_7;
  }

  v14 = v1[41];
  if (v14 == v1[42])
  {
    return result;
  }

  v1[42] = v14;
  if (!v14)
  {
LABEL_7:
    v16 = sub_1E1AEFE6C();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v13, a1, v16);
    (*(v17 + 56))(v13, 0, 1, v16);
    goto LABEL_8;
  }

  v15 = sub_1E1AEFE6C();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
LABEL_8:
  v18 = OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_lastOffscreenDate;
  swift_beginAccess();
  sub_1E13619D8(v13, &v1[v18], &unk_1ECEBB780);
  swift_endAccess();
  if ((v1[42] & 1) == 0)
  {
    v19 = OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_delayedRefresh;
    if (*&v1[OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_delayedRefresh])
    {

      sub_1E1AF329C();
    }

    *&v1[v19] = 0;
  }

  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v3, qword_1EE216158);
  (*(v4 + 16))(v6, v20, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B03760;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E134FD1C(&v1[v18], v10, &unk_1ECEBB780);
  v21 = sub_1E1AEFE6C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v10, 1, v21) == 1)
  {
    sub_1E1308058(v10, &unk_1ECEBB780);
    v24 = 0u;
    v25 = 0u;
  }

  else
  {
    *(&v25 + 1) = v21;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
    (*(v22 + 32))(boxed_opaque_existential_0, v10, v21);
  }

  sub_1E1AF38BC();
  sub_1E1308058(&v24, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E188B528(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_delayedRefresh))
    {
      v6 = result;

      if ((sub_1E1AF327C() & 1) == 0)
      {
        if (qword_1EE1E35B0 != -1)
        {
          swift_once();
        }

        v13 = sub_1E1AF591C();
        __swift_project_value_buffer(v13, qword_1EE216158);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B07790;

        sub_1E1AF38CC();

        sub_1E1AF382C();
        sub_1E1AF382C();
        v7 = sub_1E1AEFE6C();
        v15 = v7;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
        (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a2, v7);
        sub_1E1AF38BC();
        sub_1E1308058(v14, &qword_1ECEB2DF0);
        sub_1E1AF382C();
        v15 = MEMORY[0x1E69E6370];
        LOBYTE(v14[0]) = a3 & 1;
        sub_1E1AF38BC();
        sub_1E1308058(v14, &qword_1ECEB2DF0);
        sub_1E1AF382C();
        v9 = *(v6[4] + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_updateDelayInterval);
        v15 = MEMORY[0x1E69E63B0];
        v14[0] = v9;
        sub_1E1AF38BC();
        sub_1E1308058(v14, &qword_1ECEB2DF0);
        sub_1E1AF548C();

        swift_beginAccess();
        v10 = v6[2];
        if (v10)
        {
          v11 = v6[3];
          sub_1E1300E34(v6[2]);

          v10(v12);
          sub_1E1361B18(v10, v11);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E188B8B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v2 = sub_1E1AF591C();
    __swift_project_value_buffer(v2, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;

    sub_1E1AF38CC();

    sub_1E1AF382C();
    sub_1E1AF548C();

    *(v1 + OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_displayDeviceDrivenContentChanged) = 1;
  }

  return result;
}

uint64_t sub_1E188BA60(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v6 = OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_lastOffscreenDate;
  v7 = sub_1E1AEFE6C();
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_delayedRefresh) = 0;
  *(v1 + OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_displayDeviceDrivenContentChanged) = 0;
  v9 = (v1 + OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_displayDeviceDrivenContentChangeToken);
  *v9 = 0u;
  v9[1] = 0u;
  *(v1 + 32) = a1;
  *(v1 + 40) = 257;
  *(v1 + 42) = 1;
  v8(v5, 1, 1, v7);
  v10 = OBJC_IVAR____TtC11AppStoreKit15PageRefreshGate_lastOffscreenDate;
  swift_beginAccess();

  sub_1E13619D8(v5, v1 + v10, &unk_1ECEBB780);
  swift_endAccess();
  sub_1E1889090();
  sub_1E1889908();
  return v1;
}

uint64_t type metadata accessor for PageRefreshGate()
{
  result = qword_1EE1F3030;
  if (!qword_1EE1F3030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E188BC44()
{
  sub_1E13A8B64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E188BD3C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1E188BD74()
{
  v1 = *(sub_1E1AEFE6C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  return sub_1E188B528(v2, v3, v4);
}

uint64_t sub_1E188BDF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EmptyUpdateRegistry.entry(forAdamID:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1AF319C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1E188BECC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1AF319C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t UniversalFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF524C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UniversalFieldsProvider.category.setter(uint64_t a1)
{
  v3 = sub_1E1AF524C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1E188C038()
{
  v0 = sub_1E1AF543C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF542C();
  v5 = MEMORY[0x1E68FE100](v4);
  v7 = v6;
  result = (*(v1 + 8))(v3, v0);
  qword_1ECEBA808 = *&v5;
  qword_1ECEBA810 = v7;
  return result;
}

uint64_t sub_1E188C118()
{
  v0 = sub_1E1AF543C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF542C();
  v5 = MEMORY[0x1E68FE120](v4);
  result = (*(v1 + 8))(v3, v0);
  qword_1ECEBA818 = *&v5;
  return result;
}

uint64_t UniversalFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  v6 = [objc_allocWithZone(ASKCapacityData) init];
  v7 = [v6 totalSystemCapacity];
  v8 = sub_1E1380D6C();
  v37 = v8;
  v35 = v7;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1E1AF4A1C();
  if (!v1)
  {
    v38 = v5;
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v9 = [v6 totalSystemAvailable];
    v37 = v8;
    v35 = v9;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1E1AF4A1C();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v10 = [v6 totalDataCapacity];
    v37 = v8;
    v35 = v10;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1E1AF4A1C();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v11 = [v6 totalDataAvailable];
    v37 = v8;
    v35 = v11;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1E1AF4A1C();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v13 = ASKMetricsGetNetworkConnectionTypeString();
    if (v13)
    {
      v14 = v13;
      v15 = sub_1E1AF5DFC();
      v17 = v16;

      v37 = MEMORY[0x1E69E6158];
      v35 = v15;
      v36 = v17;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_1E1AF4A1C();
      __swift_destroy_boxed_opaque_existential_1(&v35);
    }

    v18 = [v6 totalDiskCapacity];
    v37 = v8;
    v35 = v18;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1E1AF4A1C();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v19 = ASKMetricsGetCookieString();
    v20 = sub_1E1AF5DFC();
    v22 = v21;

    v23 = MEMORY[0x1E69E6158];
    v37 = MEMORY[0x1E69E6158];
    v35 = v20;
    v36 = v22;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1E1AF4A1C();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    sub_1E1AF59DC();
    sub_1E1AF59CC();
    v24 = v38;
    MEMORY[0x1E68FE6D0]();

    v25 = sub_1E1AF594C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      sub_1E15887EC(v24);
    }

    else
    {
      v27 = sub_1E1AF593C();
      (*(v26 + 8))(v24, v25);
      v28 = [v27 ams_DSID];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 stringValue];
        v31 = sub_1E1AF5DFC();
        v33 = v32;

        v37 = v23;
        v35 = v31;
        v36 = v33;
        __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
        sub_1E1AF4A1C();

        __swift_destroy_boxed_opaque_existential_1(&v35);
      }

      else
      {
      }
    }

    if (qword_1ECEB1570 != -1)
    {
      swift_once();
    }

    v34 = MEMORY[0x1E69E7DE0];
    v37 = MEMORY[0x1E69E7DE0];
    v35 = qword_1ECEBA818;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1E1AF4A1C();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    if (qword_1ECEB1568 != -1)
    {
      swift_once();
    }

    v37 = v34;
    v35 = qword_1ECEBA810;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1E1AF4A1C();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v37 = v34;
    v35 = qword_1ECEBA808;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1E1AF4A1C();
  }

  return __swift_destroy_boxed_opaque_existential_1(&v35);
}

uint64_t type metadata accessor for UniversalFieldsProvider()
{
  result = qword_1EE1EBC10;
  if (!qword_1EE1EBC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t tryToFetch(artworkFor:into:on:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E137A5C4(a2, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA820);
  if (swift_dynamicCast())
  {
    v8 = *(&v18 + 1);
    sub_1E188CD64(a1, v16);
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA850);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          sub_1E1308EC0(&v18, v21);
          swift_getObjectType();
          v9 = v22;
          v10 = v23;
          __swift_project_boxed_opaque_existential_1Tm(v21, v22);
          (*(v10 + 8))(v9, v10);
          (*(v8 + 8))();
          swift_unknownObjectRelease();

          return __swift_destroy_boxed_opaque_existential_1(v21);
        }
      }

      else
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1E1308058(v16, &qword_1ECEB4CE0);
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
    }

    sub_1E1308058(&v18, &qword_1ECEBA848);
  }

  sub_1E137A5C4(a2, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA828);
  if (swift_dynamicCast())
  {
    v11 = *(&v18 + 1);
    sub_1E188CD64(a1, v16);
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA840);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          sub_1E1308EC0(&v18, v21);
          ObjectType = swift_getObjectType();
          (*(v11 + 8))(v21, a3, a4, ObjectType, v11);
LABEL_22:
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v21);
        }
      }

      else
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1E1308058(v16, &qword_1ECEB4CE0);
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
    }

    sub_1E1308058(&v18, &qword_1ECEBA838);
  }

  sub_1E137A5C4(a2, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA830);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v14 = *(&v18 + 1);
  sub_1E188CD64(a1, &v18);
  if (*(&v19 + 1))
  {
    sub_1E1308EC0(&v18, v21);
    v15 = swift_getObjectType();
    (*(v14 + 8))(v21, a3, v15, v14);
    goto LABEL_22;
  }

  swift_unknownObjectRelease();
  return sub_1E1308058(&v18, &qword_1ECEB4CE0);
}

uint64_t sub_1E188CD64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t tryToCancelArtworkFetch(into:on:asPartOf:deprioritizingFetches:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1E137A5C4(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA820);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  sub_1E137A5C4(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA828);
  if (swift_dynamicCast())
  {
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(a2, a3, a4 & 1, ObjectType);
    return swift_unknownObjectRelease();
  }

  sub_1E137A5C4(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA830);
  result = swift_dynamicCast();
  if (result)
  {
LABEL_2:
    v8 = swift_getObjectType();
    (*(v11 + 16))(a2, a4 & 1, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

id Shelf.withItems(_:ofType:removeMarkers:isHidden:)(uint64_t a1, unsigned __int8 *a2, char a3, int a4)
{
  v5 = v4;
  v145 = *v4;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A0);
  v10 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v100 - v11;
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v100 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v140 = &v100 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v139 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v141 = &v100 - v23;
  v24 = *a2;
  sub_1E134E724(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v171);
  if (v24 == 100)
  {
    v24 = *(v5 + 16);
  }

  if (a3)
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v5 + 18);
  }

  v132 = v25;
  v26 = *(v5 + 17);
  v133 = v5[5];
  sub_1E134FD1C(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, v141, &unk_1ECEB4B60);
  v27 = (v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  v28 = (v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  v149 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle);
  v103 = v12;
  v104 = v10;
  v136 = v24;
  v134 = a1;
  v102 = v13;
  v130 = v26;
  if (a4 == 2)
  {
    LODWORD(v135) = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden);
  }

  else
  {
    LODWORD(v135) = a4;
  }

  v122 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched);
  v123 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy);
  v106 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction);
  v116 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal);
  v30 = *v27;
  v29 = v27[1];
  v121 = v30;
  v131 = v29;
  v115 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior);
  v114 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized);
  v31 = v28[1];
  v105 = *v28;
  v117 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn);
  v32 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background);
  v137 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 8);
  v120 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel);
  v34 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 16);
  v33 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 24);
  v35 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents);
  v138 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 32);
  v113 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints);
  v36 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 8);
  v124 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata);
  v125 = v36;
  v37 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 24);
  v126 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 16);
  v127 = v37;
  v38 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 40);
  v128 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 32);
  v129 = v38;
  *&v142 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 48);
  sub_1E134FD1C(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, v140, &unk_1ECEBB780);
  sub_1E134FD1C(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, v17, &unk_1ECEB1770);
  sub_1E134FD1C(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, v139, &unk_1ECEB4B60);
  v39 = v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata;
  v40 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata);
  v41 = *(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata + 8);
  v42 = *(v39 + 3);
  v108 = *(v39 + 2);
  v109 = v40;
  v43 = swift_allocObject();
  sub_1E134FD1C(v171, &v165, &unk_1ECEB5670);
  v146 = v43;
  v147 = v41;
  v148 = v42;
  v118 = v35;
  v119 = v32;
  v111 = v33;
  v112 = v31;
  v110 = v34;
  if (*(&v166 + 1))
  {
    v168 = v165;
    v169 = v166;
    v170 = v167;

    sub_1E15470AC(v149);

    sub_1E151F120(v32, v137, v34, v33, v138);
  }

  else
  {

    sub_1E15470AC(v149);

    sub_1E151F120(v32, v137, v34, v33, v138);

    v44 = v101;
    sub_1E1AEFE9C();
    v45 = v17;
    v46 = sub_1E1AEFE7C();
    v48 = v47;
    (*(v102 + 8))(v44, v103);
    *&v161 = v46;
    v17 = v45;
    *(&v161 + 1) = v48;
    v43 = v146;
    v41 = v147;
    sub_1E1AF6F6C();
    sub_1E1308058(&v165, &unk_1ECEB5670);
  }

  v49 = v43 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
  v50 = v169;
  *v49 = v168;
  *(v49 + 16) = v50;
  *(v49 + 32) = v170;
  sub_1E134FD1C(v17, v43 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, &unk_1ECEB1770);
  v51 = v136;
  *(v43 + 16) = v136;
  *(v43 + 17) = v130;
  *(v43 + 18) = v132;
  *(v43 + 24) = v134;
  LOBYTE(v168) = v51;

  *(v43 + 32) = sub_1E1956360(v52, &v168);
  sub_1E134FD1C(v141, v43 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, &unk_1ECEB4B60);
  *(v43 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched) = v122;
  v53 = (v43 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  v54 = v131;
  *v53 = v121;
  v53[1] = v54;
  *(v43 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) = v123;
  *(v43 + 40) = v133;
  *(v43 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) = v135 & 1;
  v55 = (v43 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata);
  v56 = v124;
  v57 = v125;
  *v55 = v124;
  v55[1] = v57;
  v59 = v126;
  v58 = v127;
  v55[2] = v126;
  v55[3] = v58;
  v60 = v17;
  v61 = v128;
  v62 = v129;
  v55[4] = v128;
  v55[5] = v62;
  v55[6] = v142;
  v107 = v60;
  if (v149 < 2)
  {

    sub_1E189EE00(v56, v57, v59, v58, v61, v62, v142);
    v63 = v118;
LABEL_16:
    v68 = v146;
    v69 = (v146 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
    v70 = v106;
    v71 = v112;
    *v69 = v105;
    v69[1] = v71;
    *(v68 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = v70;
    *(v68 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = v149;

    goto LABEL_18;
  }

  v135 = objc_opt_self();

  sub_1E189EE00(v56, v57, v59, v58, v61, v62, v142);
  result = [v135 defaultWorkspace];
  if (!result)
  {
    goto LABEL_59;
  }

  v65 = result;
  v66 = sub_1E1AF5DBC();
  v67 = [v65 applicationIsInstalled_];

  v63 = v118;
  if (v67)
  {
    goto LABEL_16;
  }

  sub_1E1547120(v149);

  v68 = v146;
  v72 = (v146 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  *v72 = 0;
  v72[1] = 0;
  *(v68 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = 0;
  *(v68 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = 1;
LABEL_18:
  sub_1E134FD1C(v140, v68 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_1ECEBB780);
  sub_1E134FD1C(v139, v68 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, &unk_1ECEB4B60);
  *(v68 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics) = 0;
  *(v68 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) = v113;
  v73 = v115;
  *(v68 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal) = v116;
  *(v68 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior) = v73;
  *(v68 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized) = v114;
  v74 = v119;
  v75 = v117;
  if (!v117)
  {
    LOBYTE(v168) = v136;
    v75 = sub_1E1956580();
  }

  *(v68 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn) = v75;
  v76 = v68 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background;
  v77 = v137;
  *v76 = v74;
  *(v76 + 8) = v77;
  v78 = v111;
  *(v76 + 16) = v110;
  *(v76 + 24) = v78;
  *(v76 + 32) = v138;
  *(v68 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel) = v120;
  *(v68 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents) = v63;
  v79 = *(v68 + 24);
  v80 = sub_1E13C50E8();

  v81 = 0;
  v164 = MEMORY[0x1E68FF2E0](0, &type metadata for PersonalizationStyle, v80);
  v149 = (v79 + 32);
  v82 = 0uLL;
  v142 = xmmword_1E1B16440;
  while (2)
  {
    while (2)
    {
      v83 = *(v79 + 16);
      if (v81 == v83)
      {
LABEL_22:
        v156 = 0;
        v81 = v83;
        v154 = v82;
        v155 = v82;
        goto LABEL_26;
      }

      while (1)
      {
        if ((v81 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        if (v81 >= *(v79 + 16))
        {
          goto LABEL_54;
        }

        sub_1E1300B24(v149 + 40 * v81++, &v154);
LABEL_26:
        v152[0] = v154;
        v152[1] = v155;
        v153 = v156;
        if (!*(&v155 + 1))
        {
          memset(v157, 0, 24);
          *(&v157[1] + 8) = v142;
LABEL_34:
          sub_1E1308058(v157, &qword_1ECEB55B8);
          v163 = 0;
          v161 = 0u;
          v162 = 0u;
          v84 = v148;
          goto LABEL_35;
        }

        sub_1E1308EC0(v152, v151);
        sub_1E1300B24(v151, &v150);
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v157, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v151);
        if (*(&v157[1] + 1) == 1)
        {
          goto LABEL_34;
        }

        v158 = v157[0];
        v159 = v157[1];
        v160 = *&v157[2];
        if (*(&v157[1] + 1))
        {
          break;
        }

        sub_1E1308058(&v158, &qword_1ECEB55B0);
        v82 = 0uLL;
        if (v81 == v83)
        {
          goto LABEL_22;
        }
      }

      *(&v159 + 1) = *(&v157[1] + 1);
      result = sub_1E134FD1C(&v158, v157, &qword_1ECEB55B0);
      v84 = v148;
      if (!*(&v157[1] + 1))
      {
        goto LABEL_58;
      }

      sub_1E1308EC0(v157, &v161);
      sub_1E1308058(&v158, &qword_1ECEB55B0);
      if (!*(&v162 + 1))
      {
LABEL_35:
        sub_1E1308058(&v161, &qword_1ECEB55B0);
        v168 = 0u;
        v169 = 0u;
        v170 = 0;
        goto LABEL_36;
      }

      sub_1E1308EC0(&v161, &v165);
      v88 = *(&v166 + 1);
      v89 = v167;
      v90 = __swift_project_boxed_opaque_existential_1Tm(&v165, *(&v166 + 1));
      v91 = v88;
      v80 = v90;
      if ((PersonalizableModel.needsClientPersonalization.getter(v91, v89) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v165);
        v41 = v147;
        v82 = 0uLL;
        continue;
      }

      break;
    }

    sub_1E1308EC0(&v165, &v168);
    v41 = v147;
LABEL_36:
    v165 = v168;
    v166 = v169;
    v167 = v170;
    if (*(&v169 + 1))
    {
      sub_1E1308EC0(&v165, &v161);
      v85 = *(&v162 + 1);
      v86 = v163;
      __swift_project_boxed_opaque_existential_1Tm(&v161, *(&v162 + 1));
      v87 = v85;
      v41 = v147;
      (*(v86 + 16))(&v158, v87, v86);
      LOBYTE(v86) = v158;
      __swift_destroy_boxed_opaque_existential_1(&v161);
      v80 = &v164;
      sub_1E1893F1C(&v168, v86);
      v82 = 0uLL;
      continue;
    }

    break;
  }

  v92 = v146;
  *(v146 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles) = v164;
  v93 = (v92 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata);
  v94 = v108;
  *v93 = v109;
  v93[1] = v41;
  v93[2] = v94;
  v93[3] = v84;
  v80 = *(v92 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents);
  if (!(v80 >> 62))
  {
    v95 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v95)
    {
      goto LABEL_45;
    }

LABEL_52:
    sub_1E1308058(v139, &unk_1ECEB4B60);
    sub_1E1308058(v107, &unk_1ECEB1770);
    sub_1E1308058(v140, &unk_1ECEBB780);
    sub_1E1308058(v141, &unk_1ECEB4B60);
    sub_1E1308058(v171, &unk_1ECEB5670);
    return v146;
  }

LABEL_55:
  v95 = sub_1E1AF71CC();
  if (!v95)
  {
    goto LABEL_52;
  }

LABEL_45:
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0);
  if (v95 >= 1)
  {
    v149 = (v80 & 0xC000000000000001);
    v96 = (v104 + 8);

    v97 = 0;
    v98 = v80;
    do
    {
      if (v149)
      {
        MEMORY[0x1E68FFD80](v97, v80);
      }

      else
      {
      }

      ++v97;
      sub_1E15470BC();
      sub_1E1AF3CDC();
      v99 = v143;
      sub_1E1AF3CEC();

      __swift_destroy_boxed_opaque_existential_1(&v168);
      (*v96)(v99, v144);
      v80 = v98;
    }

    while (v95 != v97);

    goto LABEL_52;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}