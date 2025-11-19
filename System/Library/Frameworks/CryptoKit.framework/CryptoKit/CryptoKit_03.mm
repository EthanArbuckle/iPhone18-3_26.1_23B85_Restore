void sub_1A78E8FDC(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(a5 + 8);
  if (sub_1A793DB98() == 16)
  {
    v11 = swift_beginAccess();
    v12 = *(v9 + 16);
    if (v12 >> 60)
    {
      __break(1u);
    }

    v13 = v12 > 0x20;
    v14 = (1 << v12) & 0x101010000;
    if (v13 || v14 == 0)
    {
      sub_1A78D6484();
      swift_allocError();
      *v19 = 0;
      *(v19 + 4) = 1;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v11);
      v16 = a3 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A73C8, "*g");
      sub_1A793D908();
      if (v22 == 255)
      {
        v21 = 0;
        v22 = 0;
        sub_1A78E92B4(&v21, v23, a1, v9, v16, a4, a5, &v20);
        goto LABEL_12;
      }

      if ((v22 & 1) == 0)
      {
        sub_1A78E9698(v21, v22);
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v17 = 1;
    *(v17 + 4) = 1;
  }

  swift_willThrow();
LABEL_12:
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A78E9248@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1] + *a1;
  if (!*a1)
  {
    v7 = 0;
  }

  v11 = a2;
  result = sub_1A78E96BC(v6, v7, &v11, a3 & 1);
  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = v9;
  }

  *a4 = v10;
  *(a4 + 8) = v4 != 0;
  return result;
}

uint64_t sub_1A78E92B4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void *a8)
{
  v52 = a8;
  v53 = a4;
  v56 = a7;
  LODWORD(v54) = a5;
  v12 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v47 = AssociatedTypeWitness;
  v48 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v45 = &v44 - v19;
  v20 = *(a6 - 8);
  v21 = v20[8];
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  if (a1)
  {
    v24 = a2 - a1;
  }

  else
  {
    v24 = 0;
  }

  v25 = v20 + 2;
  v26 = a3;
  v58 = v20[2];
  v58(v23, a3, a6);
  v57 = v12;
  v27 = sub_1A793DB98();
  v29 = v20[1];
  v28 = v20 + 1;
  v50 = v29;
  result = (v29)(v23, a6);
  if (v24 == v27)
  {
    v31 = v26;
    v58(v23, v26, a6);
    v32 = v49;
    sub_1A793DD08();
    v50(v23, a6);
    v60 = v53;
    v33 = v55;
    result = sub_1A78E96BC(a1, v32, &v60, v54 & 1);
    if (v33)
    {
      *v52 = v33;
    }

    else
    {
      v34 = v25;
      v44 = 0;
      v58(v23, v31, a6);
      v35 = v45;
      v55 = v34;
      sub_1A793DB88();
      v36 = v50;
      v50(v23, a6);
      v53 = v28;
      v54 = v31;
      v38 = v46;
      v37 = v47;
      if (a1)
      {
        v39 = v32;
        if (v32 != a1)
        {
          v40 = v36;
          v51 = *(v48 + 16);
          v52 = (v48 + 16);
          do
          {
            v41 = *a1++;
            v42 = v37;
            v51(v38, v35, v37);
            v59 = v41;
            v43 = v54;
            sub_1A793D938();
            v58(v23, v43, a6);
            sub_1A793DBA8();
            v40(v23, a6);
            v37 = v42;
          }

          while (a1 != v39);
        }
      }

      return (*(v48 + 8))(v35, v37);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A78E9698(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    sub_1A78E96B0(a1, a2 & 1);
  }
}

void sub_1A78E96B0(uint64_t a1, char a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55E410);
  }
}

uint64_t sub_1A78E96BC(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v7 = *a3;
  result = swift_beginAccess();
  v9 = *(v7 + 16);
  if (v9 >> 60)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9 > 0x20;
  v11 = (1 << v9) & 0x101010000;
  if (v10 || v11 == 0)
  {
    goto LABEL_17;
  }

  if (!a1 || a2 - a1 != 16)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a4)
  {
    if (ccaes_ecb_decrypt_mode())
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  result = ccaes_ecb_encrypt_mode();
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

LABEL_12:
  v13 = *(v7 + 16);
  result = ccecb_one_shot();
  if (result)
  {
    v14 = result;
    sub_1A78D6484();
    swift_allocError();
    *v15 = v14;
    *(v15 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t HPKE.AEAD.keyByteCount.getter()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      return 32;
    }

    else
    {
      result = sub_1A793DE88();
      __break(1u);
    }
  }

  else if (*v0)
  {
    return 32;
  }

  else
  {
    return 16;
  }

  return result;
}

uint64_t HPKE.AEAD.nonceByteCount.getter()
{
  if (*v0 <= 2u)
  {
    return 12;
  }

  result = sub_1A793DE88();
  __break(1u);
  return result;
}

uint64_t HPKE.AEAD.seal<A, B>(_:authenticating:nonce:using:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*v9 == 2)
  {
    *&v32 = *a5;
    sub_1A78C0990(a3, a4);
    result = sub_1A78C7ED4(a3, a4, &v36);
    if (!v10)
    {
      v33 = v36;
      v18 = static ChaChaPoly.seal<A, B>(_:using:nonce:authenticating:)(a1, &v32, &v33, a2, a6, a7, a8, a9);
      v20 = v19;
      sub_1A78CEEC8(v33, *(&v33 + 1));
      v23 = a4 >> 62;
      if ((a4 >> 62) > 1)
      {
        if (v23 != 2)
        {
          v24 = 0;
          goto LABEL_22;
        }

        v28 = *(a3 + 16);
        v27 = *(a3 + 24);
        v24 = v27 - v28;
        if (!__OFSUB__(v27, v28))
        {
          goto LABEL_22;
        }

        __break(1u);
      }

      else
      {
        if (!v23)
        {
          v24 = BYTE6(a4);
LABEL_22:
          sub_1A78C0B50(v24, v18, v20, &v34);
          return v34;
        }

        if (!__OFSUB__(HIDWORD(a3), a3))
        {
          v24 = HIDWORD(a3) - a3;
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    v37 = *a5;
    sub_1A78C0990(a3, a4);
    result = sub_1A78C32F4(a3, a4, &v33);
    if (!v10)
    {
      v32 = v33;
      static AES.GCM.seal<A, B>(_:using:nonce:authenticating:)(a1, &v37, &v32, a2, a6, a7, a8, a9, &v34);
      sub_1A78CEEC8(v32, *(&v32 + 1));
      v22 = *(&v34 + 1);
      v21 = v34;
      if (v35 != 12)
      {
        goto LABEL_31;
      }

      v25 = a4 >> 62;
      if ((a4 >> 62) > 1)
      {
        if (v25 == 2)
        {
          v30 = *(a3 + 16);
          v29 = *(a3 + 24);
          v26 = v29 - v30;
          if (__OFSUB__(v29, v30))
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        else
        {
          v26 = 0;
        }
      }

      else if (v25)
      {
        if (__OFSUB__(HIDWORD(a3), a3))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          result = sub_1A78C0AFC(v21, v22);
          __break(1u);
          return result;
        }

        v26 = HIDWORD(a3) - a3;
      }

      else
      {
        v26 = BYTE6(a4);
      }

      sub_1A78C0B50(v26, v34, *(&v34 + 1), &v36);
      return v36;
    }
  }

  return result;
}

uint64_t HPKE.AEAD.open<A, B>(_:nonce:authenticating:using:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v63 = a4;
  v64 = a7;
  v69 = *(a6 - 8);
  v16 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v70 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v18;
  v68 = *(*(v18 + 8) + 8);
  v19 = *(v68 + 8);
  *&v72 = swift_getAssociatedTypeWitness();
  v67 = *(v72 - 8);
  v20 = *(v67 + 64);
  v21 = MEMORY[0x1EEE9AC00](v72);
  v65 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v66 = &v60 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v60 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v60 - v28;
  v62 = *a5;
  v30 = *v10;
  v31 = a1;
  v32 = sub_1A793DB98();
  if (v30 < 3)
  {
    if (v32 < 16)
    {
      sub_1A78D4960();
      swift_allocError();
      *v33 = 4;
      swift_willThrow();
      return v29;
    }

    if (v30 == 2)
    {
      sub_1A78C0990(a2, a3);
      v34 = v76;
      sub_1A78C7ED4(a2, a3, &v74);
      if (v34)
      {
        return v29;
      }

      v35 = v74;
      v36 = v75;
      v37 = v70;
      v38 = *(v69 + 16);
      v38(v70, v31, a6);
      v76 = v35;
      v69 = v36;
      sub_1A78C0990(v35, v36);
      v39 = v66;
      sub_1A793D8B8();
      v38(v37, v31, a6);
      v40 = v65;
      sub_1A793D8A8();
      v41 = v72;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v43 = sub_1A78FD548(&v74, v39, v40, v41, v41, AssociatedConformanceWitness, AssociatedConformanceWitness);
      v52 = *(v67 + 8);
      v53 = v43;
      v55 = v54;
      v52(v40, v41);
      v52(v39, v41);
      v74 = v62;
      v29 = static ChaChaPoly.open<A>(_:using:authenticating:)(v53, v55, &v74, v63, v64, a9);
      sub_1A78C0AFC(v76, v69);
      v56 = v53;
      v57 = v55;
    }

    else
    {
      sub_1A78C0990(a2, a3);
      v44 = v76;
      sub_1A78C32F4(a2, a3, &v74);
      if (v44)
      {
        return v29;
      }

      v66 = a9;
      v45 = v74;
      v67 = v75;
      v73[0] = v74;
      v73[1] = v75;
      v46 = v70;
      v47 = *(v69 + 16);
      v61 = v31;
      v47(v70, v31, a6);
      v76 = v45;
      v48 = v45;
      v49 = v67;
      sub_1A78C0990(v48, v67);
      sub_1A793D8B8();
      v47(v46, v61, a6);
      sub_1A793D8A8();
      v50 = v72;
      v51 = swift_getAssociatedConformanceWitness();
      AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)(v73, v29, v27, v50, v50, v51, v51, &v74);
      v58 = v74;
      v72 = v75;
      v73[0] = v62;
      v29 = static AES.GCM.open<A>(_:using:authenticating:)(&v74, v73, v63, v64, v66);
      sub_1A78C0AFC(v76, v49);
      v57 = v72;
      v56 = v58;
    }

    sub_1A78C0AFC(v56, v57);
    return v29;
  }

  result = sub_1A793DE88();
  __break(1u);
  return result;
}

uint64_t HPKE.AEAD.tagByteCount.getter()
{
  if (*v0 <= 2u)
  {
    return 16;
  }

  result = sub_1A793DE88();
  __break(1u);
  return result;
}

uint64_t HPKE.AEAD.hashValue.getter()
{
  v1 = *v0;
  sub_1A793DF58();
  MEMORY[0x1AC55D830](v1);
  return sub_1A793DFA8();
}

unint64_t sub_1A78EA24C()
{
  result = qword_1EB2A73D0;
  if (!qword_1EB2A73D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2A73D8, &qword_1A7941108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A73D0);
  }

  return result;
}

unint64_t sub_1A78EA2B4()
{
  result = qword_1EB2A73E0;
  if (!qword_1EB2A73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A73E0);
  }

  return result;
}

uint64_t _s4AEADOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4AEADOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A78EA458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v79 = a1;
  v75 = a2;
  swift_getAssociatedTypeWitness();
  v76 = a6;
  v74 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v74 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1A793DC78();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v66 = &v62 - v15;
  v77 = a4;
  v65 = *(a4 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_checkMetadataState();
  v72 = *(v18 - 8);
  v73 = v18;
  v19 = *(v72 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v63 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v71 = &v62 - v22;
  swift_getAssociatedTypeWitness();
  v78 = *(swift_getAssociatedConformanceWitness() + 8);
  v23 = *(v78 + 8);
  v69 = swift_getAssociatedTypeWitness();
  v24 = sub_1A793DC78();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v68 = &v62 - v27;
  v67 = *(a3 - 8);
  v28 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = swift_checkMetadataState();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v62 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v62 - v37;
  v70 = *v80;
  v80 = a5;
  v39 = a5[1];
  v40 = v79;
  v41 = *(*(v39 + 8) + 8);
  if (sub_1A793DB98() != 64)
  {
    return 0;
  }

  v62 = AssociatedTypeWitness;
  sub_1A793D5A8();
  v42 = sub_1A793DB98();
  v43 = *(v32 + 8);
  v43(v38, v31);
  if (v42 == 1)
  {
    sub_1A793D5A8();
    v44 = v68;
    sub_1A793DBC8();
    v43(v36, v31);
    result = (*(*(v69 - 8) + 48))(v44, 1, v69);
    if (result == 1)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v46 = *(*(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8) + 8);
  }

  else
  {
    (*(v67 + 16))(v30, v40, a3);
    v47 = *(v41 + 8);
  }

  v80 = sub_1A793DB38();
  v49 = v76;
  v48 = v77;
  v50 = v75;
  v51 = v71;
  v52 = v72;
  sub_1A793D5A8();
  v53 = v73;
  v54 = sub_1A793DB98();
  v55 = *(v52 + 8);
  v55(v51, v53);
  if (v54 == 1)
  {
    v56 = v63;
    sub_1A793D5A8();
    v57 = v66;
    sub_1A793DBC8();
    v55(v56, v53);
    result = (*(*(v62 - 8) + 48))(v57, 1, v62);
    if (result == 1)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v58 = *(*(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8) + 8);
  }

  else
  {
    (*(v65 + 16))(v64, v50, v48);
    v59 = *(*(*(*(v49 + 8) + 8) + 8) + 8);
  }

  v60 = *(sub_1A793DB38() + 16);
  result = ccsha512_di();
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v61 = cced25519_verify();

  return v61 == 0;
}

uint64_t sub_1A78EAB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1A793DC78();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = &v41 - v13;
  v43 = *(a2 - 8);
  v14 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_checkMetadataState();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v41 - v22;
  v47 = *v4;
  v24 = a1;
  v52 = a3;
  sub_1A793D5A8();
  v44 = v8;
  v25 = sub_1A793DB98();
  v26 = *(v17 + 8);
  v26(v23, v16);
  if (v25 == 1)
  {
    sub_1A793D5A8();
    v27 = v45;
    sub_1A793DBC8();
    v26(v21, v16);
    result = (*(*(AssociatedTypeWitness - 8) + 48))(v27, 1, AssociatedTypeWitness);
    if (result == 1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v29 = *(*(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8) + 8);
  }

  else
  {
    (*(v43 + 16))(v42, v24, a2);
    v30 = *(*(*(*(v52 + 8) + 8) + 8) + 8);
  }

  v31 = sub_1A793DB38();
  v32 = sub_1A793D698();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_1A793D658();
  v48 = 0x4000000000;
  v49 = v35;
  sub_1A78CC8A8(&v48, 0);
  v50 = v48;
  v51 = v49 | 0x4000000000000000;
  v36 = sub_1A793DB28();
  *(v36 + 16) = 32;
  *(v36 + 32) = 0u;
  *(v36 + 48) = 0u;

  result = ccsha512_di();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v48 = v36;
  pub = cced25519_make_pub();
  if (pub || (pub = sub_1A78EB068(&v50, v31 + 32, v31 + 32 + *(v31 + 16), &v48), pub))
  {
    v38 = pub;
    sub_1A78D6484();
    swift_allocError();
    *v39 = v38;
    *(v39 + 4) = 0;
    swift_willThrow();

    sub_1A78C0AFC(v50, v51);
  }

  else
  {

    v38 = v50;
    v40 = v51;
    sub_1A78C0990(v50, v51);

    sub_1A78C0AFC(v38, v40);
  }

  return v38;
}

uint64_t sub_1A78EB068(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      result = ccsha512_di();
      if (result)
      {
        if (a2)
        {
          v17 = *a4;
          result = cced25519_sign();
          goto LABEL_20;
        }

        goto LABEL_37;
      }

      goto LABEL_35;
    }

    sub_1A78C0AFC(v7, v6);
    *a1 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    sub_1A793D6D8();
    v11 = *(v7 + 16);
    result = sub_1A793D648();
    if (!result)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (!__OFSUB__(v11, sub_1A793D678()))
    {
      sub_1A793D668();
      result = ccsha512_di();
      if (result)
      {
        if (a2)
        {
          v12 = *a4;
          result = cced25519_sign();
          *a1 = v7;
          a1[1] = v6 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
          v13 = *MEMORY[0x1E69E9840];
          return result;
        }

        goto LABEL_39;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v8)
  {
    sub_1A78C0AFC(v7, v6);
    LOWORD(v28) = v6;
    BYTE2(v28) = BYTE2(v6);
    HIBYTE(v28) = BYTE3(v6);
    LOBYTE(v29) = BYTE4(v6);
    HIBYTE(v29) = BYTE5(v6);
    result = ccsha512_di();
    if (result)
    {
      if (a2)
      {
        v10 = *a4;
        result = cced25519_sign();
        *a1 = v7;
        a1[1] = v28 | ((v29 | (BYTE6(v6) << 16)) << 32);
LABEL_20:
        v18 = *MEMORY[0x1E69E9840];
        return result;
      }

      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_34;
  }

  v14 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1A78C0AFC(v7, v6);
  *a1 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  v15 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v15 < v7)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (sub_1A793D648() && __OFSUB__(v7, sub_1A793D678()))
    {
LABEL_32:
      __break(1u);
    }

    v19 = sub_1A793D698();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_1A793D628();

    v14 = v22;
  }

  if (v15 < v7)
  {
    goto LABEL_29;
  }

  result = sub_1A793D648();
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (__OFSUB__(v7, sub_1A793D678()))
  {
    goto LABEL_30;
  }

  sub_1A793D668();
  result = ccsha512_di();
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (a2)
  {
    v23 = *a4;
    v24 = cced25519_sign();

    *a1 = v7;
    a1[1] = v14 | 0x4000000000000000;
    v25 = *MEMORY[0x1E69E9840];
    return v24;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1A78EB4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v81 = a2;
  v85 = a1;
  swift_getAssociatedTypeWitness();
  v82 = a6;
  v80 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v80 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1A793DC78();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v72 = &v68 - v14;
  v83 = a4;
  v71 = *(a4 - 8);
  v15 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = swift_checkMetadataState();
  v78 = *(v79 - 8);
  v17 = *(v78 + 64);
  v18 = MEMORY[0x1EEE9AC00](v79);
  v69 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v68 - v20;
  swift_getAssociatedTypeWitness();
  v84 = *(swift_getAssociatedConformanceWitness() + 8);
  v21 = *(v84 + 8);
  v76 = swift_getAssociatedTypeWitness();
  v22 = sub_1A793DC78();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v75 = &v68 - v25;
  v74 = *(a3 - 8);
  v26 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = swift_checkMetadataState();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v68 - v35;
  v37 = *v86;
  v86 = a5;
  v38 = a5[1];
  v39 = v85;
  v40 = *(*(v38 + 8) + 8);
  if (sub_1A793DB98() != 114)
  {
    return 0;
  }

  v68 = v37;
  sub_1A793D5A8();
  v41 = sub_1A793DB98();
  v42 = *(v30 + 8);
  v42(v36, v29);
  if (v41 == 1)
  {
    sub_1A793D5A8();
    v43 = v75;
    sub_1A793DBC8();
    v42(v34, v29);
    v44 = v76;
    v45 = *(v76 - 8);
    result = (*(v45 + 48))(v43, 1, v76);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_14;
    }

    v91 = v44;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v90);
    (*(v45 + 32))(boxed_opaque_existential_1, v43, v44);
    sub_1A78C78FC(&v90, v93);
  }

  else
  {
    (*(v74 + 16))(v28, v39, a3);
    v49 = *(v40 + 8);
    v50 = sub_1A793DB38();
    v93[3] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
    v93[4] = sub_1A78EC320();
    v93[0] = v50;
  }

  v52 = v82;
  v51 = v83;
  v53 = v81;
  v54 = v79;
  v55 = v78;
  v56 = v77;
  sub_1A793D5A8();
  v57 = sub_1A793DB98();
  v58 = *(v55 + 8);
  v58(v56, v54);
  if (v57 != 1)
  {
    (*(v71 + 16))(v70, v53, v51);
    v65 = *(*(*(*(v52 + 8) + 8) + 8) + 8);
    v66 = sub_1A793DB38();
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
    v91 = v64;
    AssociatedConformanceWitness = sub_1A78EC320();
    *&v90 = v66;
    goto LABEL_11;
  }

  v59 = v69;
  sub_1A793D5A8();
  v60 = v72;
  sub_1A793DBC8();
  v58(v59, v54);
  v61 = AssociatedTypeWitness;
  v62 = *(AssociatedTypeWitness - 8);
  result = (*(v62 + 48))(v60, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    v88 = v61;
    v89 = swift_getAssociatedConformanceWitness();
    v63 = __swift_allocate_boxed_opaque_existential_1(&v87);
    (*(v62 + 32))(v63, v60, v61);
    sub_1A78C78FC(&v87, &v90);
    v64 = v91;
LABEL_11:
    v67 = __swift_project_boxed_opaque_existential_1(&v90, v64);
    MEMORY[0x1EEE9AC00](v67);
    *(&v68 - 2) = v93;
    *(&v68 - 1) = v68;
    sub_1A793D6A8();
    __swift_destroy_boxed_opaque_existential_1(&v90);
    v48 = v87;
    __swift_destroy_boxed_opaque_existential_1(v93);
    return v48;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1A78EBD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v62 = *MEMORY[0x1E69E9840];
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1A793DC78();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v45 - v13;
  v47 = *(a2 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_checkMetadataState();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v45 - v22;
  v51 = *v4;
  v52 = a3;
  v24 = a1;
  sub_1A793D5A8();
  v48 = v8;
  v25 = sub_1A793DB98();
  v26 = *(v17 + 8);
  v26(v23, v16);
  if (v25 == 1)
  {
    sub_1A793D5A8();
    v27 = v49;
    sub_1A793DBC8();
    v26(v21, v16);
    v28 = AssociatedTypeWitness;
    v29 = *(AssociatedTypeWitness - 8);
    result = (*(v29 + 48))(v27, 1, AssociatedTypeWitness);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v57 = v28;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v56);
    (*(v29 + 32))(boxed_opaque_existential_1, v27, v28);
    sub_1A78C78FC(&v56, v59);
  }

  else
  {
    (*(v47 + 16))(v46, v24, a2);
    v32 = *(*(*(*(v52 + 8) + 8) + 8) + 8);
    v33 = sub_1A793DB38();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
    v61 = sub_1A78EC320();
    v59[0] = v33;
  }

  v34 = v51;
  v35 = sub_1A793D698();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = sub_1A793D658();
  v54 = 0x7200000000;
  v55 = v38;
  sub_1A78CC8A8(&v54, 0);
  *&v56 = v54;
  *(&v56 + 1) = v55 | 0x4000000000000000;
  v39 = sub_1A793DB28();
  *(v39 + 16) = 57;
  *(v39 + 32) = 0u;
  *(v39 + 48) = 0u;
  *(v39 + 64) = 0u;
  *(v39 + 73) = 0u;
  v53 = 0;

  if (!ccrng())
  {
LABEL_13:
    __break(1u);
  }

  if (v53)
  {
    __break(1u);
    goto LABEL_13;
  }

  v40 = v34 + 32;
  v54 = v39;
  pub = cced448_make_pub();
  if (pub || (v42 = __swift_project_boxed_opaque_existential_1(v59, v60), MEMORY[0x1EEE9AC00](v42), *(&v45 - 4) = &v56, *(&v45 - 3) = &v54, *(&v45 - 2) = v40, sub_1A793D6A8(), (pub = v53) != 0))
  {
    sub_1A78D6484();
    swift_allocError();
    *v43 = pub;
    *(v43 + 4) = 0;
    swift_willThrow();

    sub_1A78C0AFC(v56, *(&v56 + 1));
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  else
  {

    v40 = v56;
    sub_1A78C0990(v56, *(&v56 + 1));

    sub_1A78C0AFC(v56, *(&v56 + 1));
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v44 = *MEMORY[0x1E69E9840];
  return v40;
}

unint64_t sub_1A78EC320()
{
  result = qword_1ED5F8BD0;
  if (!qword_1ED5F8BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB2A6E88, qword_1A7940400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8BD0);
  }

  return result;
}

uint64_t sub_1A78EC384(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  return sub_1A793D6A8();
}

uint64_t sub_1A78EC428@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  if (a2)
  {
    if (result)
    {
      result = cced448_verify();
      *a3 = result == 0;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78EC480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = *(v3 + 32);
  result = sub_1A78EC4B8(*(v3 + 16), a1, a2, *(v3 + 24));
  *a3 = result;
  return result;
}

uint64_t sub_1A78EC4B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      result = ccrng();
      if (result)
      {
        if (a2)
        {
          v17 = *a4;
          result = cced448_sign();
          goto LABEL_28;
        }

        goto LABEL_39;
      }

      goto LABEL_36;
    }

    sub_1A78C0AFC(v7, v6);
    *a1 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    sub_1A793D6D8();
    v11 = *(v7 + 16);
    result = sub_1A793D648();
    if (!result)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (!__OFSUB__(v11, sub_1A793D678()))
    {
      sub_1A793D668();
      result = ccrng();
      if (!result)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (!a2)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v12 = *a4;
      result = cced448_sign();
      v13 = v6 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      *a1 = v7;
LABEL_27:
      a1[1] = v13;
      goto LABEL_28;
    }

    __break(1u);
    __break(1u);
LABEL_30:
    __break(1u);
    __break(1u);
LABEL_31:
    __break(1u);
    __break(1u);
    goto LABEL_32;
  }

  if (!v8)
  {
    sub_1A78C0AFC(v7, v6);
    LOWORD(v27) = v6;
    BYTE2(v27) = BYTE2(v6);
    HIBYTE(v27) = BYTE3(v6);
    LOBYTE(v28) = BYTE4(v6);
    HIBYTE(v28) = BYTE5(v6);
    result = ccrng();
    if (result)
    {
      if (a2)
      {
        v10 = *a4;
        result = cced448_sign();
        *a1 = v7;
        a1[1] = v27 | ((v28 | (BYTE6(v6) << 16)) << 32);
LABEL_28:
        v24 = *MEMORY[0x1E69E9840];
        return result;
      }

      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_35;
  }

  v14 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1A78C0AFC(v7, v6);
  *a1 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  v15 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v15 < v7)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (sub_1A793D648() && __OFSUB__(v7, sub_1A793D678()))
    {
LABEL_33:
      __break(1u);
    }

    v18 = sub_1A793D698();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_1A793D628();

    v14 = v21;
  }

  if (v15 < v7)
  {
    goto LABEL_30;
  }

  result = sub_1A793D648();
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (__OFSUB__(v7, sub_1A793D678()))
  {
    goto LABEL_31;
  }

  sub_1A793D668();
  result = ccrng();
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (a2)
  {
    v22 = *a4;
    v23 = cced448_sign();

    result = v23;
    v13 = v14 | 0x4000000000000000;
    *a1 = v7;
    goto LABEL_27;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1A78EC994@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_1A78EC428(a1, v2[2], a2);
}

double AES.CCM.Nonce.init()@<D0>(_OWORD *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  type metadata accessor for SecureBytes.Backing();
  v2 = swift_allocObject();
  v2[1] = xmmword_1A79411C0;
  if (_swift_stdlib_malloc_size(v2) < 44)
  {
    __break(1u);
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (!ccrng())
  {
    goto LABEL_5;
  }

  ccrng_generate_bridge();
  swift_beginAccess();
  *(v2 + 2) = 12;
  sub_1A78ECACC(v2, v5);
  result = v5[0];
  *a1 = *v5;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78ECACC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  if (*(a1 + 16) < 1)
  {

    sub_1A78D6484();
    swift_allocError();
    *v8 = 1;
    *(v8 + 4) = 1;
    return swift_willThrow();
  }

  else
  {
    v10[3] = &type metadata for SecureBytes;
    v10[4] = sub_1A78C7DD0();
    v10[0] = a1;
    v4 = *__swift_project_boxed_opaque_existential_1(v10, &type metadata for SecureBytes);
    swift_beginAccess();
    sub_1A78C2D58((v4 + 32), (v4 + 32 + *(v4 + 16)), v9);
    v5 = v9[0];
    v6 = v9[1];
    result = __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

uint64_t AES.CCM.Nonce.init<A>(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*(*(a3 + 8) + 8) + 8);
  if (sub_1A793DB98() < 1)
  {
    sub_1A78D6484();
    swift_allocError();
    *v12 = 1;
    *(v12 + 4) = 1;
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  else
  {
    v8 = sub_1A78C7370(a1, a2, *(v7 + 8));
    v10 = v9;
    result = (*(*(a2 - 8) + 8))(a1, a2);
    *a4 = v8;
    a4[1] = v10;
  }

  return result;
}

uint64_t sub_1A78ECCE4(uint64_t a1, unint64_t a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      __src = a1;
      v11 = a2;
      v12 = BYTE2(a2);
      v13 = BYTE3(a2);
      v14 = BYTE4(a2);
      v4 = BYTE6(a2);
      v15 = BYTE5(a2);
      if (BYTE6(a2))
      {
        v5 = sub_1A78BDC10(BYTE6(a2), 0);
        memcpy(v5 + 4, &__src, v4);
        result = v5;
      }

      else
      {
        result = MEMORY[0x1E69E7CC0];
      }

      goto LABEL_11;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_8:
    result = sub_1A78ED11C(v7, v8);
    goto LABEL_11;
  }

  if (v3 == 2)
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    goto LABEL_8;
  }

  memset(v16, 0, 14);
  result = sub_1A78E89EC(v16, v16, &__src);
  if (!v2)
  {
    result = __src;
  }

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AES.CCM.Nonce.withUnsafeBytes<A>(_:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1A793D7A8();
}

void *AES.CCM.Nonce.makeIterator()()
{
  __src[2] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(__src, 0, 14);
      v19 = __src;
      v18 = __src;
LABEL_24:
      result = sub_1A78BDB94(v19, v18);
      goto LABEL_25;
    }

    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    v8 = sub_1A793D648();
    if (v8)
    {
      v9 = sub_1A793D678();
      v1 = v6 - v9;
      if (__OFSUB__(v6, v9))
      {
        goto LABEL_28;
      }

      v8 += v1;
    }

    v10 = __OFSUB__(v7, v6);
    v11 = v7 - v6;
    if (!v10)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_12:
    v12 = v1;
    v13 = v1 >> 32;
    v11 = v13 - v12;
    if (v13 >= v12)
    {
      v8 = sub_1A793D648();
      if (!v8)
      {
LABEL_16:
        v15 = sub_1A793D668();
        if (v15 >= v11)
        {
          v16 = v11;
        }

        else
        {
          v16 = v15;
        }

        v17 = (v16 + v8);
        if (v8)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = v8;
        goto LABEL_24;
      }

      v14 = sub_1A793D678();
      if (!__OFSUB__(v12, v14))
      {
        v8 += v12 - v14;
        goto LABEL_16;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v3)
  {
    goto LABEL_12;
  }

  __src[0] = *v0;
  LOWORD(__src[1]) = v2;
  BYTE2(__src[1]) = BYTE2(v2);
  BYTE3(__src[1]) = BYTE3(v2);
  BYTE4(__src[1]) = BYTE4(v2);
  BYTE5(__src[1]) = BYTE5(v2);
  if (BYTE6(v2))
  {
    v4 = sub_1A78BDC10(BYTE6(v2), 0);
    memcpy(v4 + 4, __src, BYTE6(v2));
    result = v4;
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78ED068@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_1A78ECCE4(v4, v3);
  v7 = v6;
  result = sub_1A78C0AFC(v4, v3);
  *a1 = v5;
  a1[1] = v7;
  return result;
}

void *sub_1A78ED0CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1A791C360(v1, v2);
  sub_1A78C0AFC(v1, v2);
  return v3;
}

uint64_t sub_1A78ED11C(uint64_t a1, uint64_t a2)
{
  result = sub_1A793D648();
  v6 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v6 += a1 - result;
  }

  v7 = __OFSUB__(a2, a1);
  v8 = a2 - a1;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = sub_1A793D668();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = &v6[v10];
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = sub_1A78E89EC(v6, v12, &v13);
  if (!v2)
  {
    return v13;
  }

  return result;
}

unint64_t sub_1A78ED1C0()
{
  result = qword_1ED5F8A00;
  if (!qword_1ED5F8A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2A71E8, &qword_1A79404D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8A00);
  }

  return result;
}

uint64_t sub_1A78ED234()
{
  result = sub_1A78D90E8(5064011, 0xE300000000000000);
  qword_1EB2A6D08 = result;
  unk_1EB2A6D10 = v1;
  return result;
}

unint64_t sub_1A78ED2E0()
{
  result = qword_1EB2A73E8;
  if (!qword_1EB2A73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A73E8);
  }

  return result;
}

uint64_t IEEESecurity.hashValue.getter()
{
  v1 = *v0;
  sub_1A793DF58();
  MEMORY[0x1AC55D830](v1);
  return sub_1A793DFA8();
}

unint64_t sub_1A78ED3D0()
{
  result = qword_1EB2A73F0;
  if (!qword_1EB2A73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A73F0);
  }

  return result;
}

unint64_t sub_1A78ED428()
{
  result = qword_1EB2A73F8;
  if (!qword_1EB2A73F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2A7400, &qword_1A7941448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A73F8);
  }

  return result;
}

uint64_t sub_1A78ED4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  return sub_1A78ED5AC(a1, a2, *(v3 + 40), MEMORY[0x1E69E9510], a3);
}

uint64_t sub_1A78ED54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  v7 = *v3;
  v8 = *(v3 + 1);
  v5 = *(a3 + 8);
  return sub_1A793D6A8();
}

uint64_t sub_1A78ED5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X5>, uint64_t (*a4)(uint64_t)@<X6>, __int128 *a5@<X8>)
{
  v11 = sub_1A793D6F8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v13 + 104))(v15, *MEMORY[0x1E6969010]);
    v16 = sub_1A78DA2C4(a1, a2 - a1, v15);
    v18 = v17;
    v19 = sub_1A78ED778(a3);
    if (!v5)
    {
      v21 = v19;
      v22 = v20;
      sub_1A78C0990(v19, v20);
      sub_1A78ED910(v21, v22, a4, a5);
      sub_1A78C0AFC(v21, v22);
    }

    return sub_1A78C0AFC(v16, v18);
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A78ED740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  return sub_1A78ED5AC(a1, a2, *(v3 + 40), MEMORY[0x1E69E9518], a3);
}

void *sub_1A78ED778(void *a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1A793D7B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A7410, &qword_1A7941548);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A79414F0;
  v4 = *MEMORY[0x1E697B100];
  *(v3 + 32) = sub_1A793D958();
  *(v3 + 40) = v5;
  v6 = sub_1A793DAF8();

  sub_1A78FC074(MEMORY[0x1E69E7CC0]);
  v7 = sub_1A793D878();

  v13[0] = 0;
  v8 = [a1 sign:v2 algorithms:v6 parameters:v7 error:v13];

  v9 = v13[0];
  if (v8)
  {
    v10 = sub_1A793D7D8();
  }

  else
  {
    v10 = v9;
    sub_1A793D6C8();

    swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1A78ED910@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, __int128 *a4@<X8>)
{
  sub_1A78C0990(a1, a2);
  v9 = sub_1A791EBC0(a1, a2);
  sub_1A78BDFE0(v9, v9 + 32, 0, (2 * *(v9 + 16)) | 1, v39);
  if (v4)
  {
    sub_1A78C0AFC(a1, a2);
  }

  v42 = v40;
  v43[0] = v41[0];
  *(v43 + 9) = *(v41 + 9);
  sub_1A78CB1E8(&v42, &v34);
  v11 = sub_1A78CB244(v39, 0x30u, v38);
  v34 = v38[0];
  v35 = v38[1];
  v36 = v38[2];
  v37 = v38[3];
  result = a3(v11);
  if (!result)
  {
    goto LABEL_34;
  }

  v12 = result;
  sub_1A78C0AFC(a1, a2);
  v13 = objc_opt_self();
  result = [v13 groupOrderByteCountForCP_];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v14 = v35;
  v15 = (*(&v35 + 1) >> 1) - v35;
  if (__OFSUB__(*(&v35 + 1) >> 1, v35))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result < v15)
  {
LABEL_9:
    sub_1A78D6484();
    swift_allocError();
    *v17 = 1;
    *(v17 + 4) = 1;
    swift_willThrow();
    sub_1A78EE7F4(&v34);
    return sub_1A78BF494(v39);
  }

  v16 = v37;
  if (__OFSUB__(*(&v37 + 1) >> 1, v37))
  {
    goto LABEL_23;
  }

  if (result < (*(&v37 + 1) >> 1) - v37)
  {
    goto LABEL_9;
  }

  v44 = (*(&v37 + 1) >> 1) - v37;
  v27 = *(&v37 + 1);
  v28 = v36;
  v29 = v34;
  v33 = xmmword_1A793F230;
  result = [v13 groupOrderByteCountForCP_];
  if (result < 0)
  {
    goto LABEL_24;
  }

  if (result + 0x4000000000000000 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1A793D768();
  result = [v13 groupOrderByteCountForCP_];
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = __OFSUB__(result, v15);
  result -= v15;
  if (v18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1A78C3DF4(result);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7108, &unk_1A7946860);
  v31 = v19;
  v26 = sub_1A78CB614();
  v32 = v26;
  v20 = swift_allocObject();
  v30[0] = v20;
  *(v20 + 16) = v29;
  *(v20 + 32) = v14;
  result = __swift_project_boxed_opaque_existential_1(v30, v19);
  v21 = *(result + 16);
  if (__OFSUB__(*(result + 24) >> 1, v21))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v22 = *(result + 8) + v21;
  swift_unknownObjectRetain_n();
  sub_1A793D788();
  __swift_destroy_boxed_opaque_existential_1(v30);
  swift_unknownObjectRelease();
  result = [v13 groupOrderByteCountForCP_];
  if (result < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v18 = __OFSUB__(result, v44);
  result -= v44;
  if (v18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    sub_1A78C3DF4(result);
    v31 = v19;
    v32 = v26;
    v23 = swift_allocObject();
    v30[0] = v23;
    *(v23 + 16) = v28;
    *(v23 + 32) = v16;
    *(v23 + 40) = v27;
    result = __swift_project_boxed_opaque_existential_1(v30, v19);
    v24 = *(result + 16);
    if (!__OFSUB__(*(result + 24) >> 1, v24))
    {
      v25 = *(result + 8) + v24;
      swift_unknownObjectRetain();
      sub_1A793D788();
      __swift_destroy_boxed_opaque_existential_1(v30);
      sub_1A78EE7F4(&v34);
      result = sub_1A78BF494(v39);
      *a4 = v33;
      return result;
    }

    goto LABEL_33;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t SecureEnclave.P256.Signing.PrivateKey.signature<A>(for:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X8>)
{
  v36[1] = a1;
  v36[0] = a4;
  v45 = *MEMORY[0x1E69E9840];
  v7 = sub_1A793D6F8();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v36 - v14;
  v37 = *(v4 + 24);
  v16 = ccsha256_di();
  if (!v16)
  {
    __break(1u);
  }

  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71A8, &qword_1A7942350);
  inited = swift_initStackObject();
  getDigestSizeForDigestInfo();
  v19 = swift_slowAlloc();
  ccdigest_init();
  *(inited + 16) = v17;
  *(inited + 24) = v19;
  v43 = inited;
  v20 = sub_1A793D5A8();
  MEMORY[0x1EEE9AC00](v20);
  v36[-4] = a2;
  v36[-3] = a3;
  v36[-2] = &v43;
  v21 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v22 = v36[2];
  sub_1A793DAC8();
  (*(v12 + 8))(v15, AssociatedTypeWitness);

  sub_1A78BD4B0(v42);

  v40 = v42[0];
  v41 = v42[1];
  v24 = v38;
  v23 = v39;
  (*(v38 + 104))(v10, *MEMORY[0x1E6969010], v39);
  sub_1A793D6E8();
  v25 = sub_1A793D698();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  sub_1A793D628();
  v28 = sub_1A793D688();
  *v29 |= 0x8000000000000000;
  v28(v44, 0);

  (*(v24 + 8))(v10, v23);
  v30 = sub_1A78ED778(v37);
  if (!v22)
  {
    v32 = v30;
    v33 = v31;
    sub_1A78C0990(v30, v31);
    sub_1A78ED910(v32, v33, MEMORY[0x1E69E9510], v36[0]);
    sub_1A78C0AFC(v32, v33);
  }

  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SecureEnclave.P384.Signing.PrivateKey.signature<A>(for:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X8>)
{
  v35[1] = a1;
  v35[0] = a4;
  v45 = *MEMORY[0x1E69E9840];
  v38 = sub_1A793D6F8();
  v37 = *(v38 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = v35 - v13;
  v36 = *(v4 + 24);
  v15 = ccsha384_di();
  if (!v15)
  {
    __break(1u);
  }

  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71A0, qword_1A7940068);
  inited = swift_initStackObject();
  getDigestSizeForDigestInfo();
  v18 = swift_slowAlloc();
  ccdigest_init();
  *(inited + 16) = v16;
  *(inited + 24) = v18;
  v43 = inited;
  v19 = sub_1A793D5A8();
  MEMORY[0x1EEE9AC00](v19);
  v35[-4] = a2;
  v35[-3] = a3;
  v35[-2] = &v43;
  v20 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v21 = v35[2];
  sub_1A793DAC8();
  (*(v11 + 8))(v14, AssociatedTypeWitness);

  sub_1A78C4BA4(v42);

  v39 = v42[0];
  v40 = v42[1];
  v41 = v42[2];
  v22 = v37;
  v23 = v38;
  (*(v37 + 104))(v9, *MEMORY[0x1E6969010], v38);
  sub_1A793D6E8();
  v24 = sub_1A793D698();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  sub_1A793D628();
  v27 = sub_1A793D688();
  *v28 |= 0x8000000000000000;
  v27(v44, 0);

  (*(v22 + 8))(v9, v23);
  v29 = sub_1A78ED778(v36);
  if (!v21)
  {
    v31 = v29;
    v32 = v30;
    sub_1A78C0990(v29, v30);
    sub_1A78ED910(v31, v32, MEMORY[0x1E69E9518], v35[0]);
    sub_1A78C0AFC(v31, v32);
  }

  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78EE5A8()
{
  swift_getAssociatedTypeWitness();
  v0 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1A793D6A8();
}

uint64_t sub_1A78EE6A8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1A78EE5A8();
}

uint64_t sub_1A78EE6DC(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1A793D738();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1A793D648();
  if (v3)
  {
    result = sub_1A793D678();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1A793D668();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1A78C3BEC(v3, v7);

  return v8;
}

uint64_t sub_1A78EE7C0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1A78EE5A8();
}

uint64_t sub_1A78EE7F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7408, &qword_1A7941540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A78EE8B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1A78EE8FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1A78EE95C@<Q0>(char *a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v43 = a8;
  v42 = a7;
  v44 = a4;
  v45 = a5;
  v37 = a2;
  v35 = a9;
  v40 = a11;
  v14 = *(a10 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = _s5DHKEMO9PublicKeyVMa();
  v38 = *(v39 - 8);
  v18 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v20 = &v33 - v19;
  v21 = *a1;
  v36 = a1[1];
  v22 = a1[2];
  v23 = *a3;
  (*(v14 + 16))(v17, a6, a10);
  LOBYTE(v46[0]) = v21;
  v24 = v41;
  sub_1A78F03D8(v17, v46, a10, v40, v20);
  if (v24)
  {
    (*(v14 + 8))(a6, a10);

    sub_1A78C0AFC(v42, v43);
    sub_1A78CEEC8(v44, v45);
  }

  else
  {
    v26 = v23;
    v34 = v22;
    v40 = a10;
    v41 = a6;
    sub_1A78F04D4(v39, v46);
    v33 = v20;
    v27 = v46[0];
    v28 = v46[1];
    v29 = *v47;
    v49[3] = &type metadata for SymmetricKey;
    v49[4] = sub_1A78D4AE0();
    v49[0] = v27;
    v52 = v26;
    v48[0] = v21;
    v48[1] = v36;
    v48[2] = v34;
    sub_1A78C0990(v28, v29);

    sub_1A78D3074(v37, v49, v42, v43, &v52, v44, v45, v48, &v50);
    v30 = (v38 + 8);

    sub_1A78C0AFC(v28, v29);
    (*(v14 + 8))(v41, v40);
    (*v30)(v33, v39);
    *v47 = v51[0];
    *&v47[11] = *(v51 + 11);
    result = *v47;
    v31 = *&v47[16];
    v32 = v35;
    *v35 = v50;
    v32[1] = result;
    v32[2] = v31;
    *(v32 + 6) = v28;
    *(v32 + 7) = v29;
  }

  return result;
}

uint64_t sub_1A78EEDAC@<X0>(char *a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = *a3;
  (*(*(a11 + 16) + 8))(v32, a10);
  if (v11)
  {
    (*(*(a10 - 8) + 8))(a6, a10);

    sub_1A78C0AFC(a7, a8);
    return sub_1A78CEEC8(a4, a5);
  }

  else
  {
    v26 = a5;
    v27 = a6;
    v25 = a9;
    v21 = v32[0];
    v20 = v32[1];
    v22 = *v33;
    v35[3] = &type metadata for SymmetricKey;
    v35[4] = sub_1A78D4AE0();
    v35[0] = v21;
    v38 = v18;
    v34[0] = v15;
    v34[1] = v16;
    v34[2] = v17;
    sub_1A78C0990(v20, v22);

    sub_1A78D3074(a2, v35, a7, a8, &v38, a4, v26, v34, &v36);

    sub_1A78C0AFC(v20, v22);
    result = (*(*(a10 - 8) + 8))(v27, a10);
    *v33 = v37[0];
    *&v33[11] = *(v37 + 11);
    v23 = *v33;
    v24 = *&v33[16];
    *v25 = v36;
    *(v25 + 16) = v23;
    *(v25 + 32) = v24;
    *(v25 + 48) = v20;
    *(v25 + 56) = v22;
  }

  return result;
}

__n128 sub_1A78EEFD0@<Q0>(char *a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v72 = a8;
  v71 = a7;
  v75 = a6;
  v74 = a5;
  v73 = a4;
  v61 = a2;
  v58 = a9;
  v76 = a10;
  v14 = *(a12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  v16 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = &v54 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 = AssociatedTypeWitness;
  v64 = AssociatedConformanceWitness;
  v63 = _s5DHKEMO9PublicKeyVMa();
  v62 = *(v63 - 8);
  v19 = *(v62 + 64);
  v20 = MEMORY[0x1EEE9AC00](v63);
  v67 = &v54 - v21;
  v22 = *(a11 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _s5DHKEMO10PrivateKeyVMa();
  v66 = *(v26 - 8);
  v27 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v54 - v28;
  v30 = *a1;
  v60 = a1[1];
  v59 = a1[2];
  v31 = *a3;
  v32 = v76;
  (*(v22 + 16))(v25);
  v77[0] = v30;
  v33 = v69;
  sub_1A78F0CD8(v25, v77, a11, a12, v29);
  if (v33)
  {

    sub_1A78C0AFC(v71, v72);
    sub_1A78CEEC8(v73, v74);
    (*(v22 + 8))(v32, a11);
    (*(v70 + 8))(v75, v68);
  }

  else
  {
    v54 = v31;
    v55 = a11;
    v56 = v22;
    v57 = v29;
    v69 = v26;
    v34 = v70;
    v35 = v65;
    v36 = v68;
    (*(v70 + 16))(v65, v75, v68);
    v77[0] = v30;
    v37 = v67;
    sub_1A78F03D8(v35, v77, v36, v64, v67);
    v39 = sub_1A78F0EF4(v77, v37, v69);
    v40 = v54;
    v41 = *v77;
    v42 = v39;
    v44 = v43;

    sub_1A78C0990(v42, v44);

    sub_1A78C0990(v42, v44);
    v65 = v42;
    v64 = v44;
    sub_1A78C0AFC(v42, v44);
    v80[3] = &type metadata for SymmetricKey;
    v80[4] = sub_1A78D4AE0();
    v80[0] = v41;
    v83 = v40;
    v79[0] = v30;
    v79[1] = v60;
    v79[2] = v59;
    sub_1A78D3074(v61, v80, v71, v72, &v83, v73, v74, v79, &v81);
    v45 = (v56 + 8);
    v46 = (v34 + 8);
    v47 = (v62 + 8);
    v48 = (v66 + 8);
    v49 = v63;

    v50 = v65;
    v51 = v64;
    sub_1A78C0AFC(v65, v64);
    (*v45)(v76, v55);
    (*v46)(v75, v36);
    (*v47)(v67, v49);
    (*v48)(v57, v69);
    *v78 = *v82;
    *&v78[11] = *&v82[11];
    result = *v78;
    v52 = *&v78[16];
    v53 = v58;
    *v58 = v81;
    v53[1] = result;
    v53[2] = v52;
    *(v53 + 6) = v50;
    *(v53 + 7) = v51;
  }

  return result;
}

__n128 sub_1A78EF7F4@<Q0>(unsigned __int8 *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v80 = a8;
  v74 = a7;
  v73 = a6;
  v75 = a4;
  v76 = a3;
  v63 = a2;
  v64 = a9;
  v79 = a12;
  v72 = a11;
  v71 = a10;
  v16 = *(a14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = sub_1A793DC78();
  v62 = *(v77 - 8);
  v78 = v62;
  v18 = *(v62 + 64);
  v19 = MEMORY[0x1EEE9AC00](v77);
  v66 = &v56[-v20];
  v69 = AssociatedTypeWitness;
  v68 = *(AssociatedTypeWitness - 8);
  v21 = *(v68 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v65 = &v56[-v23];
  v24 = *(a13 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v56[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = _s5DHKEMO10PrivateKeyVMa();
  v67 = *(v28 - 1);
  v29 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v56[-v30];
  v32 = *a1;
  v61 = a1[1];
  v60 = a1[2];
  v33 = *a5;
  v34 = v80;
  (*(v24 + 16))(v27, v80, a13);
  v81[0] = v32;
  v35 = v70;
  sub_1A78F0CD8(v27, v81, a13, a14, v31);
  if (v35)
  {

    sub_1A78C0AFC(v71, v72);
    sub_1A78CEEC8(v73, v74);
    sub_1A78C0AFC(v76, v75);
    (*(v78 + 8))(v79, v77);
    (*(v24 + 8))(v34, a13);
  }

  else
  {
    v57 = v32;
    v37 = v65;
    v58 = a13;
    v59 = v24;
    v70 = v28;
    v38 = v76;
    v39 = v78;
    v40 = v66;
    v41 = v77;
    (*(v78 + 16))(v66, v79, v77);
    if ((*(v68 + 48))(v40, 1, v69) == 1)
    {
      v42 = *(v39 + 8);
      v78 = v39 + 8;
      v42(v40, v41);
      v43 = v38;
      v44 = v75;
      sub_1A78F29C8(v43, v75, v70, v81);
    }

    else
    {
      (*(v68 + 32))(v37, v40, v69);
      v45 = v38;
      v44 = v75;
      sub_1A78F1CF0(v45, v75, v37, v70, v81);
      (*(v68 + 8))(v37, v69);
    }

    v46 = *v81;
    v47 = v74;
    v48 = v72;
    v49 = v58;
    v50 = v71;
    v84[3] = &type metadata for SymmetricKey;
    v84[4] = sub_1A78D4AE0();
    v84[0] = v46;
    v87 = v33;
    v83[0] = v57;
    v83[1] = v61;
    v83[2] = v60;
    sub_1A78D3074(v63, v84, v50, v48, &v87, v73, v47, v83, &v85);
    v51 = (v59 + 8);
    v52 = (v67 + 8);
    v53 = v64;
    v54 = v70;
    (*(v62 + 8))(v79, v77);
    (*v51)(v80, v49);
    (*v52)(v31, v54);
    *v82 = *v86;
    *&v82[11] = *&v86[11];
    result = *v82;
    v55 = *&v82[16];
    *v53 = v85;
    *(v53 + 16) = result;
    *(v53 + 32) = v55;
    *(v53 + 48) = v76;
    *(v53 + 56) = v44;
  }

  return result;
}

uint64_t sub_1A78F003C@<X0>(char *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v29 = *a1;
  v19 = a1[1];
  v20 = a1[2];
  v21 = *a5;
  (*(*(a14 + 8) + 32))(&v33, a3, a4, a13, *(a14 + 8));
  if (v14)
  {

    sub_1A78C0AFC(a10, a11);
    sub_1A78CEEC8(a6, a7);
    sub_1A78C0AFC(a3, a4);
    swift_getAssociatedTypeWitness();
    v22 = sub_1A793DC78();
    (*(*(v22 - 8) + 8))(a12, v22);
    return (*(*(a13 - 8) + 8))(a8, a13);
  }

  else
  {
    v28 = a8;
    v24 = v33;
    v36[3] = &type metadata for SymmetricKey;
    v36[4] = sub_1A78D4AE0();
    v36[0] = v24;
    v39 = v21;
    v35[0] = v29;
    v35[1] = v19;
    v35[2] = v20;
    sub_1A78D3074(a2, v36, a10, a11, &v39, a6, a7, v35, &v37);
    swift_getAssociatedTypeWitness();
    v25 = sub_1A793DC78();
    (*(*(v25 - 8) + 8))(a12, v25);
    result = (*(*(a13 - 8) + 8))(v28, a13);
    *v34 = v38[0];
    *&v34[11] = *(v38 + 11);
    v26 = *v34;
    v27 = *&v34[16];
    *a9 = v37;
    *(a9 + 16) = v26;
    *(a9 + 32) = v27;
    *(a9 + 48) = a3;
    *(a9 + 56) = a4;
  }

  return result;
}

uint64_t sub_1A78F03D8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  v14 = *a2;
  v10 = (*(*(a4 + 8) + 16))(&v14, a3);
  if (v5)
  {
    return (*(*(a3 - 8) + 8))(a1, a3);
  }

  sub_1A78C0AFC(v10, v11);
  v13 = _s5DHKEMO9PublicKeyVMa();
  result = (*(*(a3 - 8) + 32))(&a5[*(v13 + 36)], a1, a3);
  *a5 = v9;
  return result;
}

uint64_t sub_1A78F04D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v63 = a2;
  v5 = *(a1 + 16);
  v64 = *(v5 - 8);
  v6 = *(v64 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v65 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = v56 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = *(a1 + 36);
  v17 = *(*(AssociatedConformanceWitness + 8) + 8);
  v18 = *(v17 + 24);
  v66 = v3;
  v19 = v67;
  v18(v76, &v3[v16], AssociatedTypeWitness, v17);
  if (v19)
  {
    return (*(v11 + 8))(v14, AssociatedTypeWitness);
  }

  v60 = v11;
  v59 = v76[0];
  v21 = *(v17 + 16);
  v61 = AssociatedTypeWitness;
  v21(AssociatedTypeWitness, v17);
  LOBYTE(v76[0]) = *v66;
  v22 = *(v9 + 8);
  v23 = *(v22 + 16);
  v62 = v23(v76, v5, v22);
  v67 = v24;
  (*(v64 + 8))(v65, v5);
  LOBYTE(v76[0]) = *v66;
  v25 = v23(v76, v5, v22);
  v27 = v26;
  v57 = 0;
  v28 = v25;
  v65 = v14;
  v76[3] = &type metadata for SharedSecret;
  v76[4] = sub_1A78F2924();
  v76[0] = v59;
  v29 = *v66;
  v30 = 8 * *v66;
  if (qword_1EB2A6D00 != -1)
  {
    swift_once();
  }

  v31 = 0x20100uLL >> v30;
  v74 = qword_1EB2A6D08;
  v75 = qword_1EB2A6D10;
  v32 = qword_1A7941810[v29];
  sub_1A78C0990(qword_1EB2A6D08, qword_1EB2A6D10);
  v33 = sub_1A78FE770(v32, 2);
  v35 = v34;
  sub_1A793D808();
  sub_1A78C0AFC(v33, v35);
  v71 = xmmword_1A793F230;
  sub_1A793D808();
  v59 = v28;
  sub_1A793D808();
  v58 = *(&v71 + 1);
  v66 = v71;
  if (qword_1EB2A6D30 != -1)
  {
    swift_once();
  }

  v64 = v27;
  sub_1A78D4B98(v76, &v71);
  if (qword_1EB2A6CE8 != -1)
  {
    swift_once();
  }

  v69 = qword_1EB2A6CF0;
  v70 = *algn_1EB2A6CF8;
  sub_1A78C0990(qword_1EB2A6CF0, *algn_1EB2A6CF8);
  sub_1A793D808();
  sub_1A793D808();
  v36 = v57;
  sub_1A78D4274(&v71);
  v56[1] = v36;
  v37 = v69;
  v38 = v70;
  v39 = sub_1A78F3E70(v69, v70);
  sub_1A78D2B88(0, 0xC000000000000000, v39, v31, &v77);

  sub_1A78D4A78(&v71);
  sub_1A78C0AFC(v37, v38);
  v57 = v77;
  if (qword_1EB2A6CC8 != -1)
  {
    swift_once();
  }

  v40 = 32;
  if (v29 == 2)
  {
    v40 = 64;
  }

  if (v29 == 1)
  {
    v41 = 48;
  }

  else
  {
    v41 = v40;
  }

  v69 = sub_1A78FE770(v41, 2);
  v70 = v42;
  sub_1A793D808();
  sub_1A793D808();
  sub_1A793D808();
  v72 = MEMORY[0x1E6969080];
  v73 = MEMORY[0x1E6969078];
  v43 = v66;
  v44 = v58;
  *&v71 = v66;
  *(&v71 + 1) = v58;
  v45 = __swift_project_boxed_opaque_existential_1(&v71, MEMORY[0x1E6969080]);
  v46 = *v45;
  v47 = v45[1];
  sub_1A78C0990(v43, v44);
  sub_1A7900C14(v46, v47);
  __swift_destroy_boxed_opaque_existential_1(&v71);
  if (v31)
  {
    v48 = v63;
    v49 = v61;
    v50 = v60;
    v51 = v65;
    if (v31 == 1)
    {
      sub_1A78CF840(v57, v69, v70, v41, &v77);
    }

    else
    {
      sub_1A78CFC48(v57, v69, v70, v41, &v77);
    }

    v54 = v77;
    swift_beginAccess();
    sub_1A78C2BF8(v54 + 32, v54 + 32 + *(v54 + 16), &v68);
    v53 = v68;

    sub_1A78C0AFC(v59, v64);
    sub_1A78C0AFC(v66, v44);
  }

  else
  {
    sub_1A78CF454(v57, v69, v70, v41, &v77);
    v52 = v77;
    swift_beginAccess();
    sub_1A78C2BF8(v52 + 32, v52 + 32 + *(v52 + 16), &v68);
    v53 = v68;

    sub_1A78C0AFC(v59, v64);
    sub_1A78C0AFC(v66, v44);
    v48 = v63;
    v49 = v61;
    v50 = v60;
    v51 = v65;
  }

  (*(v50 + 8))(v51, v49);
  sub_1A78C0AFC(v69, v70);

  sub_1A78C0AFC(v74, v75);
  result = __swift_destroy_boxed_opaque_existential_1(v76);
  v55 = v62;
  *v48 = v53;
  v48[1] = v55;
  v48[2] = v67;
  return result;
}

uint64_t sub_1A78F0CD8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v23 = a5;
  v9 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v23 - v13;
  v15 = *a2;
  v16 = *(v9 + 16);
  v24 = a1;
  v16(a3, v9);
  v25 = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = (*(*(AssociatedConformanceWitness + 8) + 16))(&v25, AssociatedTypeWitness);
  if (v5)
  {
    (*(*(a3 - 8) + 8))(v24, a3);
    return (*(v11 + 8))(v14, AssociatedTypeWitness);
  }

  else
  {
    sub_1A78C0AFC(v18, v19);
    (*(v11 + 8))(v14, AssociatedTypeWitness);
    v21 = _s5DHKEMO10PrivateKeyVMa();
    v22 = v23;
    result = (*(*(a3 - 8) + 32))(&v23[*(v21 + 36)], v24, a3);
    *v22 = v15;
  }

  return result;
}

uint64_t sub_1A78F0EF4(void *a1, unint64_t a2, uint64_t a3)
{
  v102 = a2;
  v91 = a1;
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  v96 = a3;
  v98 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v94 = *(AssociatedTypeWitness - 8);
  v6 = *(v94 + 64);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v92 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v86 - v9;
  v97 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v86 - v14;
  v16 = swift_getAssociatedConformanceWitness();
  (*(v16 + 16))(v11, v16);
  v17 = *(_s5DHKEMO9PublicKeyVMa() + 36);
  v18 = *(*(v16 + 8) + 8);
  v19 = *(v18 + 24);
  v112 = &type metadata for SharedSecret;
  v95 = sub_1A78F2924();
  v113 = v95;
  v99 = v17;
  v20 = v102 + v17;
  v21 = v18;
  v22 = v101;
  v19(&v111, v20, v11, v18);
  if (v22)
  {
    (*(v12 + 8))(v15, v11);
    __swift_deallocate_boxed_opaque_existential_1(&v111);
  }

  else
  {
    v88 = AssociatedTypeWitness;
    v101 = v15;
    v89 = v12;
    v90 = v11;
    v23 = v112;
    v24 = __swift_mutable_project_boxed_opaque_existential_1(&v111, v112);
    v25 = *(v23[-1].Description + 8);
    MEMORY[0x1EEE9AC00](v24);
    v27 = (&v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    v29 = *v27;
    swift_beginAccess();
    sub_1A78F6AF0(v29 + 32, v29 + 32 + *(v29 + 16), &v106);

    v30 = v106;
    __swift_destroy_boxed_opaque_existential_1(&v111);
    v114 = v30;
    v31 = *(v96 + 36);
    v32 = *(v98 + 24);
    v112 = &type metadata for SharedSecret;
    v113 = v95;
    v32(&v111, v102 + v99, v97);
    v95 = v31;
    v34 = v112;
    v35 = __swift_mutable_project_boxed_opaque_existential_1(&v111, v112);
    v36 = *(v34[-1].Description + 8);
    MEMORY[0x1EEE9AC00](v35);
    v38 = (&v86 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v38);
    v40 = *v38;
    swift_beginAccess();
    sub_1A78F6AF0(v40 + 32, v40 + 32 + *(v40 + 16), &v106);

    v41 = v106;
    __swift_destroy_boxed_opaque_existential_1(&v111);
    sub_1A793D808();
    sub_1A78C0AFC(v41, *(&v41 + 1));
    v42 = v93;
    (*(v21 + 16))(v90, v21);
    LOBYTE(v111) = *v100;
    v43 = *(AssociatedConformanceWitness + 8);
    v44 = v88;
    v96 = *(v43 + 16);
    v45 = (v96)(&v111, v88, v43);
    v86 = v46;
    v87 = v45;
    v47 = v94 + 8;
    v48 = *(v94 + 8);
    v48(v42, v44);
    v112 = MEMORY[0x1E6969080];
    v113 = MEMORY[0x1E6969078];
    v111 = v114;
    LOBYTE(v106) = *v100;
    sub_1A78C0990(v114, *(&v114 + 1));
    v49 = v96;
    v50 = (v96)(&v106, v44, v43);
    v94 = v47;
    v99 = v50;
    v102 = v51;
    v52 = v100;
    v53 = v92;
    (*(v98 + 16))(v97);
    LOBYTE(v106) = *v52;
    v54 = v49(&v106, v44, v43);
    v56 = v48;
    v57 = v54;
    v58 = v55;
    v56(v53, v44);
    v59 = *v100;
    v60 = 8 * *v100;
    if (qword_1EB2A6D00 != -1)
    {
      swift_once();
    }

    v98 = 0;
    v61 = 0x20100uLL >> v60;
    v109 = qword_1EB2A6D08;
    v110 = qword_1EB2A6D10;
    v62 = qword_1A7941810[v59];
    sub_1A78C0990(qword_1EB2A6D08, qword_1EB2A6D10);
    v63 = sub_1A78FE770(v62, 2);
    v65 = v64;
    sub_1A793D808();
    sub_1A78C0AFC(v63, v65);
    v106 = xmmword_1A793F230;
    sub_1A793D808();
    sub_1A793D808();
    sub_1A78C0990(v57, v58);
    sub_1A793D808();
    v96 = v57;
    v97 = v58;
    sub_1A78C0AFC(v57, v58);
    v95 = *(&v106 + 1);
    v100 = v106;
    if (qword_1EB2A6D30 != -1)
    {
      swift_once();
    }

    sub_1A78D4B98(&v111, &v106);
    if (qword_1EB2A6CE8 != -1)
    {
      swift_once();
    }

    v104 = qword_1EB2A6CF0;
    v105 = *algn_1EB2A6CF8;
    sub_1A78C0990(qword_1EB2A6CF0, *algn_1EB2A6CF8);
    sub_1A793D808();
    sub_1A793D808();
    v66 = v98;
    sub_1A78D4274(&v106);
    v94 = v66;
    v67 = v104;
    v68 = v105;
    v69 = sub_1A78F3E70(v104, v105);
    sub_1A78D2B88(0, 0xC000000000000000, v69, v61, &v115);

    sub_1A78D4A78(&v106);
    sub_1A78C0AFC(v67, v68);
    v98 = v115;
    if (qword_1EB2A6CC8 != -1)
    {
      swift_once();
    }

    v70 = 32;
    if (v59 == 2)
    {
      v70 = 64;
    }

    if (v59 == 1)
    {
      v71 = 48;
    }

    else
    {
      v71 = v70;
    }

    v104 = sub_1A78FE770(v71, 2);
    v105 = v72;
    sub_1A793D808();
    sub_1A793D808();
    sub_1A793D808();
    v107 = MEMORY[0x1E6969080];
    v108 = MEMORY[0x1E6969078];
    v73 = v100;
    v74 = v95;
    *&v106 = v100;
    *(&v106 + 1) = v95;
    v75 = __swift_project_boxed_opaque_existential_1(&v106, MEMORY[0x1E6969080]);
    v76 = *v75;
    v77 = v75[1];
    sub_1A78C0990(v73, v74);
    sub_1A7900C14(v76, v77);
    __swift_destroy_boxed_opaque_existential_1(&v106);
    v78 = v61;
    if (v61)
    {
      v79 = v90;
      v80 = v89;
      v11 = v87;
      v81 = v97;
      if (v78 == 1)
      {
        sub_1A78CF840(v98, v104, v105, v71, &v115);
      }

      else
      {
        sub_1A78CFC48(v98, v104, v105, v71, &v115);
      }

      v84 = v115;
      swift_beginAccess();
      sub_1A78C2BF8(v84 + 32, v84 + 32 + *(v84 + 16), &v103);
      v85 = v103;

      sub_1A78C0AFC(v100, v74);
      sub_1A78C0AFC(v96, v81);
      sub_1A78C0AFC(v99, v102);
      *v91 = v85;
    }

    else
    {
      sub_1A78CF454(v98, v104, v105, v71, &v115);
      v82 = v115;
      swift_beginAccess();
      sub_1A78C2BF8(v82 + 32, v82 + 32 + *(v82 + 16), &v103);
      v83 = v103;

      sub_1A78C0AFC(v100, v74);
      sub_1A78C0AFC(v96, v97);
      sub_1A78C0AFC(v99, v102);
      *v91 = v83;
      v79 = v90;
      v80 = v89;
      v11 = v87;
    }

    sub_1A78C0AFC(v114, *(&v114 + 1));
    (*(v80 + 8))(v101, v79);
    sub_1A78C0AFC(v104, v105);

    sub_1A78C0AFC(v109, v110);
    __swift_destroy_boxed_opaque_existential_1(&v111);
  }

  return v11;
}

uint64_t *sub_1A78F1CF0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v95 = a3;
  v94 = a5;
  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  v96 = a4;
  v97 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v99 = *(AssociatedTypeWitness - 8);
  v11 = *(v99 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v87 - v15;
  *&v110 = a1;
  *(&v110 + 1) = a2;
  v98 = v5;
  LOBYTE(v105) = *v5;
  v100 = v9;
  v17 = *(swift_getAssociatedConformanceWitness() + 8);
  v18 = *(v17 + 1);
  sub_1A78C0990(a1, a2);
  v19 = v101;
  result = v18(&v110, &v105, MEMORY[0x1E6969080], MEMORY[0x1E6969078], AssociatedTypeWitness, v17);
  if (!v19)
  {
    v91 = a2;
    v92 = v17;
    v93 = v14;
    v90 = a1;
    v101 = AssociatedTypeWitness;
    v21 = *(v96 + 9);
    v22 = v97;
    v23 = *(v97 + 24);
    v111 = &type metadata for SharedSecret;
    v24 = sub_1A78F2924();
    v112 = v24;
    v25 = v98;
    v96 = v23;
    (v23)(&v110, v16, v100, v22);
    v89 = v16;
    v26 = v111;
    v27 = __swift_mutable_project_boxed_opaque_existential_1(&v110, v111);
    v28 = *(v26[-1].Description + 8);
    MEMORY[0x1EEE9AC00](v27);
    v30 = v21;
    v31 = (&v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31);
    v33 = *v31;
    swift_beginAccess();
    sub_1A78F6AF0(v33 + 32, v33 + 32 + *(v33 + 16), &v105);
    v88 = 0;

    v34 = v105;
    __swift_destroy_boxed_opaque_existential_1(&v110);
    v113 = v34;
    v111 = &type metadata for SharedSecret;
    v112 = v24;
    v87 = v30;
    v35 = v88;
    v96(&v110, v95, v100, v22);
    if (v35)
    {
      sub_1A78C0AFC(v34, *(&v34 + 1));
      (*(v99 + 8))(v89, v101);
      return __swift_deallocate_boxed_opaque_existential_1(&v110);
    }

    else
    {
      v36 = v111;
      v37 = __swift_mutable_project_boxed_opaque_existential_1(&v110, v111);
      v38 = *(v36[-1].Description + 8);
      MEMORY[0x1EEE9AC00](v37);
      v40 = (&v87 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v41 + 16))(v40);
      v42 = *v40;
      swift_beginAccess();
      sub_1A78F6AF0(v42 + 32, v42 + 32 + *(v42 + 16), &v105);

      v43 = v105;
      __swift_destroy_boxed_opaque_existential_1(&v110);
      sub_1A793D808();
      sub_1A78C0AFC(v43, *(&v43 + 1));
      v111 = MEMORY[0x1E6969080];
      v112 = MEMORY[0x1E6969078];
      v110 = v113;
      v44 = *(v22 + 16);
      sub_1A78C0990(v113, *(&v113 + 1));
      v45 = v93;
      v44(v100, v22);
      LOBYTE(v105) = *v25;
      v46 = v92;
      v47 = *(v92 + 2);
      v48 = v101;
      v49 = v47(&v105, v101, v92);
      v100 = 0;
      v96 = v49;
      v97 = v50;
      v51 = v45;
      v52 = v99 + 8;
      v53 = *(v99 + 8);
      v53(v51, v48);
      LOBYTE(v105) = *v25;
      v54 = v100;
      v55 = v47(&v105, v48, v46);
      if (v54)
      {
        sub_1A78C0AFC(v96, v97);
        sub_1A78C0AFC(v113, *(&v113 + 1));
        v53(v89, v48);
        return __swift_destroy_boxed_opaque_existential_1(&v110);
      }

      else
      {
        v95 = v55;
        v100 = v56;
        v99 = v52;
        v57 = *v98;
        v58 = 8 * *v98;
        if (qword_1EB2A6D00 != -1)
        {
          swift_once();
        }

        v92 = v53;
        v59 = 0x20100uLL >> v58;
        v108 = qword_1EB2A6D08;
        v109 = qword_1EB2A6D10;
        v88 = v57;
        v60 = qword_1A7941810[v57];
        sub_1A78C0990(qword_1EB2A6D08, qword_1EB2A6D10);
        v61 = sub_1A78FE770(v60, 2);
        v63 = v62;
        sub_1A793D808();
        sub_1A78C0AFC(v61, v63);
        v105 = xmmword_1A793F230;
        sub_1A793D808();
        sub_1A793D808();
        v64 = v95;
        v65 = v100;
        sub_1A78C0990(v95, v100);
        sub_1A793D808();
        sub_1A78C0AFC(v64, v65);
        v98 = *(&v105 + 1);
        v93 = v105;
        if (qword_1EB2A6D30 != -1)
        {
          swift_once();
        }

        sub_1A78D4B98(&v110, &v105);
        if (qword_1EB2A6CE8 != -1)
        {
          swift_once();
        }

        v103 = qword_1EB2A6CF0;
        v104 = *algn_1EB2A6CF8;
        sub_1A78C0990(qword_1EB2A6CF0, *algn_1EB2A6CF8);
        sub_1A793D808();
        sub_1A793D808();
        sub_1A78D4274(&v105);
        v91 = 0;
        v66 = v103;
        v67 = v104;
        v68 = sub_1A78F3E70(v103, v104);
        sub_1A78D2B88(0, 0xC000000000000000, v68, v59, &v114);

        sub_1A78D4A78(&v105);
        sub_1A78C0AFC(v66, v67);
        v69 = v114;
        if (qword_1EB2A6CC8 != -1)
        {
          swift_once();
        }

        v70 = 32;
        if (v88 == 2)
        {
          v70 = 64;
        }

        if (v88 == 1)
        {
          v71 = 48;
        }

        else
        {
          v71 = v70;
        }

        v103 = sub_1A78FE770(v71, 2);
        v104 = v72;
        sub_1A793D808();
        sub_1A793D808();
        sub_1A793D808();
        v106 = MEMORY[0x1E6969080];
        v107 = MEMORY[0x1E6969078];
        v73 = v93;
        v74 = v98;
        *&v105 = v93;
        *(&v105 + 1) = v98;
        v75 = __swift_project_boxed_opaque_existential_1(&v105, MEMORY[0x1E6969080]);
        v76 = *v75;
        v77 = v75[1];
        sub_1A78C0990(v73, v74);
        sub_1A7900C14(v76, v77);
        __swift_destroy_boxed_opaque_existential_1(&v105);
        v78 = v59;
        if (v59)
        {
          v79 = v101;
          v80 = v89;
          v81 = v94;
          v82 = v92;
          if (v78 == 1)
          {
            sub_1A78CF840(v69, v103, v104, v71, &v114);
          }

          else
          {
            sub_1A78CFC48(v69, v103, v104, v71, &v114);
          }

          v85 = v114;
          swift_beginAccess();
          sub_1A78C2BF8(v85 + 32, v85 + 32 + *(v85 + 16), &v102);
          v86 = v102;

          sub_1A78C0AFC(v93, v98);
          sub_1A78C0AFC(v95, v100);
          sub_1A78C0AFC(v96, v97);
          *v81 = v86;
        }

        else
        {
          sub_1A78CF454(v69, v103, v104, v71, &v114);
          v83 = v114;
          swift_beginAccess();
          sub_1A78C2BF8(v83 + 32, v83 + 32 + *(v83 + 16), &v102);
          v84 = v102;

          sub_1A78C0AFC(v93, v98);
          sub_1A78C0AFC(v95, v100);
          sub_1A78C0AFC(v96, v97);
          *v94 = v84;
          v79 = v101;
          v80 = v89;
          v82 = v92;
        }

        sub_1A78C0AFC(v113, *(&v113 + 1));
        v82(v80, v79);
        sub_1A78C0AFC(v103, v104);

        sub_1A78C0AFC(v108, v109);
        return __swift_destroy_boxed_opaque_existential_1(&v110);
      }
    }
  }

  return result;
}

unint64_t sub_1A78F2924()
{
  result = qword_1EB2A6D20;
  if (!qword_1EB2A6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D20);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1AC55E570);
  }

  return result;
}

uint64_t sub_1A78F29C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v60 = a4;
  v8 = *(a3 + 2);
  v7 = *(a3 + 3);
  v61 = a3;
  v62 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  v10 = *(v63 + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v56 - v14;
  v75[0] = a1;
  v75[1] = a2;
  v64 = v8;
  v65 = v4;
  LOBYTE(v70) = *v4;
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  v17 = *(v16 + 8);
  sub_1A78C0990(a1, a2);
  v18 = v66;
  result = v17(v75, &v70, MEMORY[0x1E6969080], MEMORY[0x1E6969078], AssociatedTypeWitness, v16);
  if (!v18)
  {
    v20 = v13;
    v58 = a1;
    v59 = a2;
    v66 = AssociatedTypeWitness;
    v21 = *(v61 + 9);
    v22 = v62;
    v23 = v63;
    (*(v62 + 24))(v75, v15, v64, v62);
    v61 = v15;
    v24 = v75[0];
    v75[3] = &type metadata for SharedSecret;
    v75[4] = sub_1A78F2924();
    v75[0] = v24;
    v25 = v65;
    (*(v22 + 16))(v64, v22);
    LOBYTE(v70) = *v25;
    v26 = v66;
    v27 = (*(v16 + 16))(&v70, v66, v16);
    v64 = 0;
    v28 = v27;
    v30 = v29;
    v62 = *(v23 + 8);
    v63 = v23 + 8;
    (v62)(v20, v26);
    v31 = *v65;
    v32 = 8 * *v65;
    if (qword_1EB2A6D00 != -1)
    {
      swift_once();
    }

    v33 = 0x20100uLL >> v32;
    v73 = qword_1EB2A6D08;
    v74 = qword_1EB2A6D10;
    v56 = v31;
    v34 = qword_1A7941810[v31];
    sub_1A78C0990(qword_1EB2A6D08, qword_1EB2A6D10);
    v35 = sub_1A78FE770(v34, 2);
    v37 = v36;
    sub_1A793D808();
    sub_1A78C0AFC(v35, v37);
    v70 = xmmword_1A793F230;
    sub_1A793D808();
    v59 = v30;
    sub_1A793D808();
    v57 = *(&v70 + 1);
    v65 = v70;
    if (qword_1EB2A6D30 != -1)
    {
      swift_once();
    }

    v58 = v28;
    sub_1A78D4B98(v75, &v70);
    if (qword_1EB2A6CE8 != -1)
    {
      swift_once();
    }

    v68 = qword_1EB2A6CF0;
    v69 = *algn_1EB2A6CF8;
    sub_1A78C0990(qword_1EB2A6CF0, *algn_1EB2A6CF8);
    sub_1A793D808();
    sub_1A793D808();
    sub_1A78D4274(&v70);
    v38 = v68;
    v39 = v69;
    v40 = sub_1A78F3E70(v68, v69);
    sub_1A78D2B88(0, 0xC000000000000000, v40, v33, &v76);

    sub_1A78D4A78(&v70);
    sub_1A78C0AFC(v38, v39);
    v64 = v76;
    if (qword_1EB2A6CC8 != -1)
    {
      swift_once();
    }

    v41 = 32;
    if (v56 == 2)
    {
      v41 = 64;
    }

    if (v56 == 1)
    {
      v42 = 48;
    }

    else
    {
      v42 = v41;
    }

    v68 = sub_1A78FE770(v42, 2);
    v69 = v43;
    sub_1A793D808();
    sub_1A793D808();
    sub_1A793D808();
    v71 = MEMORY[0x1E6969080];
    v72 = MEMORY[0x1E6969078];
    v44 = v65;
    v45 = v57;
    *&v70 = v65;
    *(&v70 + 1) = v57;
    v46 = __swift_project_boxed_opaque_existential_1(&v70, MEMORY[0x1E6969080]);
    v47 = *v46;
    v48 = v46[1];
    sub_1A78C0990(v44, v45);
    sub_1A7900C14(v47, v48);
    __swift_destroy_boxed_opaque_existential_1(&v70);
    v49 = v33;
    if (v33)
    {
      v50 = v66;
      v51 = v58;
      if (v49 == 1)
      {
        sub_1A78CF840(v64, v68, v69, v42, &v76);
      }

      else
      {
        sub_1A78CFC48(v64, v68, v69, v42, &v76);
      }

      v54 = v76;
      swift_beginAccess();
      sub_1A78C2BF8(v54 + 32, v54 + 32 + *(v54 + 16), &v67);
      v55 = v67;

      sub_1A78C0AFC(v65, v45);
      sub_1A78C0AFC(v51, v59);
      *v60 = v55;
    }

    else
    {
      sub_1A78CF454(v64, v68, v69, v42, &v76);
      v52 = v76;
      swift_beginAccess();
      sub_1A78C2BF8(v52 + 32, v52 + 32 + *(v52 + 16), &v67);
      v53 = v67;

      sub_1A78C0AFC(v65, v45);
      sub_1A78C0AFC(v58, v59);
      *v60 = v53;
      v50 = v66;
    }

    (v62)(v61, v50);
    sub_1A78C0AFC(v68, v69);

    sub_1A78C0AFC(v73, v74);
    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  return result;
}

uint64_t sub_1A78F31B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v15 - v10;
  v12 = &v3[*(a1 + 36)];
  (*(v7 + 16))(v6, v7);
  v16 = *v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_1A78F03D8(v11, &v16, AssociatedTypeWitness, AssociatedConformanceWitness, a2);
}

uint64_t sub_1A78F334C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A78F33CC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFB)
  {
    v7 = 251;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFB)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 5)
      {
        return v15 - 4;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1A78F3550(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFB)
  {
    v8 = 251;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFB)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 4;
  }
}

uint64_t sub_1A78F37C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A78F382C(*(v2 + 24), *a1);
  if (!v3)
  {
    v7 = result;
    v8 = v6;
    v9 = sub_1A78F3E70(result, v6);
    result = sub_1A78C0AFC(v7, v8);
    *a2 = v9;
  }

  return result;
}

void *sub_1A78F382C(void *a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = ccec_export_pub_size((a2 + 32));
  v4 = sub_1A793DB28();
  *(v4 + 16) = v3;
  ccec_export_pub();
  *(v4 + 16) = v3;
  v5 = sub_1A78C0DCC(v4);
  v7 = v6;

  v8 = sub_1A793D7B8();
  sub_1A78C0AFC(v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A7410, &qword_1A7941548);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A79414F0;
  v10 = *MEMORY[0x1E697B0C8];
  *(v9 + 32) = sub_1A793D958();
  *(v9 + 40) = v11;
  v12 = sub_1A793DAF8();

  sub_1A78FC074(MEMORY[0x1E69E7CC0]);
  v13 = sub_1A793D878();

  v19[0] = 0;
  v14 = [a1 exchangeKey:v8 algorithms:v12 parameters:v13 error:v19];

  v15 = v19[0];
  if (v14)
  {
    v8 = sub_1A793D7D8();
  }

  else
  {
    v16 = v15;
    sub_1A793D6C8();

    swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t SecureEnclave.Curve25519.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A78F3A84(*(v2 + 24), *a1);
  if (!v3)
  {
    v7 = result;
    v8 = v6;
    v9 = sub_1A78F3E70(result, v6);
    result = sub_1A78C0AFC(v7, v8);
    *a2 = v9;
  }

  return result;
}

void *sub_1A78F3A84(void *a1, uint64_t a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  sub_1A793DB18();
  v4 = sub_1A78C0DCC(a2);
  v6 = v5;

  v7 = sub_1A793D7B8();
  sub_1A78C0AFC(v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A7410, &qword_1A7941548);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A79414F0;
  v9 = *MEMORY[0x1E697B0D0];
  *(v8 + 32) = sub_1A793D958();
  *(v8 + 40) = v10;
  v11 = sub_1A793DAF8();

  sub_1A78FC074(MEMORY[0x1E69E7CC0]);
  v12 = sub_1A793D878();

  v18[0] = 0;
  v13 = [a1 exchangeKey:v7 algorithms:v11 parameters:v12 error:v18];

  v14 = v18[0];
  if (v13)
  {
    v7 = sub_1A793D7D8();
  }

  else
  {
    v15 = v14;
    sub_1A793D6C8();

    swift_willThrow();
  }

  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1A78F3C4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A78F3A84(*(v2 + 24), *a1);
  if (!v3)
  {
    v7 = result;
    v8 = v6;
    v9 = sub_1A78F3E70(result, v6);
    result = sub_1A78C0AFC(v7, v8);
    *a2 = v9;
  }

  return result;
}

uint64_t sub_1A78F3CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  result = swift_beginAccess();
  v12 = a4 - a3;
  if (!a3)
  {
    v12 = 0;
  }

  if (a1 < 0 || v12 < a1)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a2 < 0 || v12 < a2)
  {
    goto LABEL_22;
  }

  v13 = v10[2];
  v14 = v13 + a2 - a1;
  if (__OFADD__(v13, a2 - a1))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = _swift_stdlib_malloc_size(v10);
  v16 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v15 - 32) >= v14)
  {
    v17 = *v5;
    return sub_1A78DEE5C(a1, a2, a3, a4);
  }

  if (v14 < 0)
  {
    goto LABEL_24;
  }

  if (HIDWORD(v14))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v14)
  {
    v18 = (v14 - 1) | ((v14 - 1) >> 1) | (((v14 - 1) | ((v14 - 1) >> 1)) >> 2);
    v19 = v18 | (v18 >> 4) | ((v18 | (v18 >> 4)) >> 8);
    v20 = v19 | HIWORD(v19);
    if (v20 == -1)
    {
      v21 = 0xFFFFFFFFLL;
    }

    else
    {
      v21 = (v20 + 1);
    }
  }

  else
  {
    v21 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = v21;
  v23 = *v5;
  result = swift_beginAccess();
  v24 = v23[2];
  if ((v24 & 0x8000000000000000) == 0)
  {
    sub_1A78DECAC(v23, 0, v24);

    *v5 = v22;
    return sub_1A78DEE5C(a1, a2, a3, a4);
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_1A78F3E70(uint64_t a1, unint64_t a2)
{
  v28[3] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      memset(v28, 0, 14);
      v3 = v28;
      goto LABEL_33;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    v6 = sub_1A793D648();
    if (v6)
    {
      v7 = sub_1A793D678();
      if (__OFSUB__(v4, v7))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
      }

      v6 += v4 - v7;
    }

    v8 = __OFSUB__(v5, v4);
    v9 = v5 - v4;
    if (!v8)
    {
      v10 = sub_1A793D668();
      if (v10 < v9)
      {
        v9 = v10;
      }

      if (v6)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v11))
        {
          if (!v11)
          {
            v15 = 1;
            goto LABEL_43;
          }

          v12 = (v11 - 1) | ((v11 - 1) >> 1) | (((v11 - 1) | ((v11 - 1) >> 1)) >> 2);
          v13 = v12 | (v12 >> 4) | ((v12 | (v12 >> 4)) >> 8);
          v14 = v13 | HIWORD(v13);
          if (v14 != -1)
          {
            v15 = (v14 + 1);
            goto LABEL_43;
          }

LABEL_42:
          v15 = 0xFFFFFFFFLL;
LABEL_43:
          type metadata accessor for SecureBytes.Backing();
          v24 = swift_allocObject();
          v24[2] = 0;
          v24[3] = v15;
          _swift_stdlib_malloc_size(v24);
          if (v6)
          {
            memmove(v24 + 4, v6, v9);
          }

          else
          {
            v9 = 0;
          }

          swift_beginAccess();
          v24[2] = v9;
          if ((_swift_stdlib_malloc_size(v24) - 32) >= v9)
          {
            goto LABEL_47;
          }

          goto LABEL_53;
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      goto LABEL_50;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v2)
  {
    v28[0] = a1;
    LOWORD(v28[1]) = a2;
    BYTE2(v28[1]) = BYTE2(a2);
    BYTE3(v28[1]) = BYTE3(a2);
    BYTE4(v28[1]) = BYTE4(a2);
    BYTE5(v28[1]) = BYTE5(a2);
    v3 = v28 + BYTE6(a2);
LABEL_33:
    sub_1A78C2BF8(v28, v3, &v27);
    v24 = v27;
    goto LABEL_47;
  }

  v16 = a1;
  v9 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_49;
  }

  v6 = sub_1A793D648();
  if (v6)
  {
    v17 = sub_1A793D678();
    if (__OFSUB__(v16, v17))
    {
      goto LABEL_55;
    }

    v6 += v16 - v17;
  }

  v18 = sub_1A793D668();
  if (v18 < v9)
  {
    v9 = v18;
  }

  if (v6)
  {
    v19 = v9;
  }

  else
  {
    v19 = 0;
  }

  if (v19 < 0)
  {
    goto LABEL_51;
  }

  if (v19)
  {
    v20 = (v19 - 1) | ((v19 - 1) >> 1) | (((v19 - 1) | ((v19 - 1) >> 1)) >> 2);
    v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
    v22 = v21 | HIWORD(v21);
    if (v22 == -1)
    {
      v23 = 0xFFFFFFFFLL;
    }

    else
    {
      v23 = (v22 + 1);
    }
  }

  else
  {
    v23 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = v23;
  _swift_stdlib_malloc_size(v24);
  if (v6)
  {
    memmove(v24 + 4, v6, v9);
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();
  v24[2] = v9;
  if ((_swift_stdlib_malloc_size(v24) - 32) < v9)
  {
    __break(1u);
    goto LABEL_42;
  }

LABEL_47:
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t static HKDF.deriveKey<A, B>(inputKeyMaterial:salt:info:outputByteCount:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v31 = a8;
  v32 = a1;
  v41 = a4;
  v34 = a2;
  v39 = a9;
  v38 = a11;
  v35 = a10;
  v36 = a3;
  v40 = sub_1A793DC78();
  v37 = *(v40 - 8);
  v14 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v16 = &v31 - v15;
  v33 = sub_1A793DC78();
  v17 = *(v33 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v20 = &v31 - v19;
  v21 = type metadata accessor for HashedAuthenticationCode();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v31 - v24);
  v42 = *v32;
  v26 = *(a6 - 1);
  (*(v26 + 16))(v20, v34, a6);
  (*(v26 + 56))(v20, 0, 1, a6);
  v27 = v31;
  static HKDF.extract<A>(inputKeyMaterial:salt:)(&v42, v20, a5, a6, v31, v35, v25);
  (*(v17 + 8))(v20, v33);
  v28 = *(a7 - 8);
  (*(v28 + 16))(v16, v36, a7);
  (*(v28 + 56))(v16, 0, 1, a7);
  WitnessTable = swift_getWitnessTable();
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)(v25, v16, v41, a5, v21, a7, v27, WitnessTable, v39, v38);
  (*(v37 + 8))(v16, v40);
  return (*(v22 + 8))(v25, v21);
}

uint64_t static HKDF.deriveKey<A>(inputKeyMaterial:info:outputByteCount:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v19 = *a1;
  v18 = MEMORY[0x1E69E7CC0];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
  v16 = sub_1A78D2A34();
  return static HKDF.deriveKey<A, B>(inputKeyMaterial:salt:info:outputByteCount:)(&v19, &v18, a2, a3, a4, v15, a5, a6, a8, v16, a7);
}

uint64_t static HKDF.deriveKey<A>(inputKeyMaterial:salt:outputByteCount:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v19 = *a1;
  v18 = MEMORY[0x1E69E7CC0];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
  v16 = sub_1A78D2A34();
  return static HKDF.deriveKey<A, B>(inputKeyMaterial:salt:info:outputByteCount:)(&v19, a2, &v18, a3, a4, a5, v15, a6, a8, a7, v16);
}

uint64_t static HKDF.deriveKey(inputKeyMaterial:outputByteCount:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, void *a5@<X8>)
{
  v14 = *a1;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
  v10 = sub_1A78D2A34();
  return static HKDF.deriveKey<A, B>(inputKeyMaterial:salt:info:outputByteCount:)(&v14, &v13, &v12, a2, a3, v9, v9, a4, a5, v10, v10);
}

uint64_t AES.CMAC.update<A>(data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13[-v9];
  sub_1A793D5A8();
  v14 = a2;
  v15 = a3;
  v16 = v3;
  v11 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  sub_1A793DAC8();
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t AES.CMAC.finalize()@<X0>(void *a1@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v3 = v1[1];
  sub_1A793DB18();
  *&v32 = sub_1A78CC5A0(v3);
  *(&v32 + 1) = v5;
  sub_1A78CC640(&v32, 0);
  v35 = v32;
  v30 = v4;
  sub_1A78F5694(&v35, &v30);
  v6 = v35;
  v33 = MEMORY[0x1E6969080];
  v34 = MEMORY[0x1E6969078];
  v32 = v35;
  v7 = __swift_project_boxed_opaque_existential_1(&v32, MEMORY[0x1E6969080]);
  v8 = *v7;
  v9 = v7[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      memset(v29, 0, 14);
      sub_1A78C0990(v6, *(&v6 + 1));
      v11 = v29;
      v12 = v29;
      goto LABEL_23;
    }

    v13 = *(v8 + 16);
    v14 = *(v8 + 24);
    sub_1A78C0990(v6, *(&v6 + 1));
    v15 = sub_1A793D648();
    if (v15)
    {
      v16 = sub_1A793D678();
      v8 = v13 - v16;
      if (__OFSUB__(v13, v16))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v15 += v8;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (!v17)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v29[0] = *v7;
    LOWORD(v29[1]) = v9;
    BYTE2(v29[1]) = BYTE2(v9);
    BYTE3(v29[1]) = BYTE3(v9);
    BYTE4(v29[1]) = BYTE4(v9);
    BYTE5(v29[1]) = BYTE5(v9);
    sub_1A78C0990(v6, *(&v6 + 1));
    v11 = v29;
    v12 = v29 + BYTE6(v9);
    goto LABEL_23;
  }

  v19 = v8;
  v20 = v8 >> 32;
  v18 = v20 - v19;
  if (v20 < v19)
  {
    __break(1u);
    goto LABEL_25;
  }

  sub_1A78C0990(v6, *(&v6 + 1));
  v15 = sub_1A793D648();
  if (v15)
  {
    v21 = sub_1A793D678();
    if (!__OFSUB__(v19, v21))
    {
      v15 += v19 - v21;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v22 = sub_1A793D668();
  if (v22 >= v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = v22;
  }

  v24 = (v23 + v15);
  if (v15)
  {
    v12 = v24;
  }

  else
  {
    v12 = 0;
  }

  v11 = v15;
LABEL_23:
  sub_1A78C2D58(v11, v12, v31);
  sub_1A78C0AFC(v6, *(&v6 + 1));
  v25 = v31[0];
  v26 = v31[1];
  __swift_destroy_boxed_opaque_existential_1(&v32);
  *a1 = v25;
  a1[1] = v26;

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AES.CMAC.init(key:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  result = AES.CMAC.init(key:outputSize:)(&v5, 16, v6);
  v4 = v6[1];
  *a2 = v6[0];
  a2[1] = v4;
  return result;
}

uint64_t AES.CMAC.init(key:outputSize:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  if (v7 >> 60)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 > 0x20;
    v9 = (1 << v7) & 0x101010000;
    if (v8 || v9 == 0)
    {
      goto LABEL_15;
    }

    result = getCMACContextSize();
    if ((result & 0x8000000000000000) == 0)
    {
      if (result)
      {
        v11 = result;
        v12 = sub_1A793DB28();
        *(v12 + 16) = v11;
        bzero((v12 + 32), v11);
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      v13 = *(v5 + 16);
      ccaes_cbc_encrypt_mode();
      LODWORD(v13) = cccmac_init();

      if (!v13)
      {
        *a3 = v12;
        a3[1] = a2;
        return result;
      }

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t AES.CMAC.update(bufferPointer:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1A78F5C2C(v3);
  v3 = result;
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  result = cccmac_update();
  if (!result)
  {
    *v1 = v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1A78F4CEC()
{
  swift_getAssociatedTypeWitness();
  v0 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1A793D6A8();
}

uint64_t sub_1A78F4DEC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1A78F4CEC();
}

uint64_t sub_1A78F4E0C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v5;
  if (result)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1A78F5C2C(v5);
  v5 = result;
  *a3 = result;
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  result = cccmac_update();
  if (!result)
  {
    *a3 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t AES.CMAC.MAC.byteCount.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      return BYTE6(v2);
    }

    v8 = __OFSUB__(HIDWORD(v1), v1);
    v9 = HIDWORD(v1) - v1;
    if (!v8)
    {
      return v9;
    }

    goto LABEL_11;
  }

  if (v3 != 2)
  {
    return 0;
  }

  v7 = v1 + 16;
  v5 = *(v1 + 16);
  v6 = *(v7 + 8);
  result = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A78F4EF0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      v6 = v13 + BYTE6(a2);
      goto LABEL_9;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v9 = sub_1A78F5AA0(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
  v6 = v13;
LABEL_9:
  v9 = sub_1A78CBAB0(v13, v6, a3, a4, &v12);
  if (!v4)
  {
    v9 = v12;
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return v9 & 1;
}

uint64_t sub_1A78F503C(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      v14[0] = a3;
      LOWORD(v14[1]) = a4;
      BYTE2(v14[1]) = BYTE2(a4);
      BYTE3(v14[1]) = BYTE3(a4);
      BYTE4(v14[1]) = BYTE4(a4);
      BYTE5(v14[1]) = BYTE5(a4);
      v7 = v14 + BYTE6(a4);
      goto LABEL_9;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1A78F6CF4(v8, v9, a1);
    goto LABEL_11;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
  v7 = v14;
LABEL_9:
  v10 = (a1)(&v13, v14, v7);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1A78F5190(uint64_t a1, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      result = MEMORY[0x1E69E7CC0];
      goto LABEL_11;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    goto LABEL_8;
  }

  if (v2)
  {
    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_8:
    result = sub_1A78F5B58(v6, v7);
    goto LABEL_11;
  }

  __src = a1;
  v10 = a2;
  v11 = BYTE2(a2);
  v12 = BYTE3(a2);
  v13 = BYTE4(a2);
  v3 = BYTE6(a2);
  v14 = BYTE5(a2);
  if (BYTE6(a2))
  {
    v4 = sub_1A78BDC10(BYTE6(a2), 0);
    memcpy(v4 + 4, &__src, v3);
    result = v4;
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

LABEL_11:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AES.CMAC.MAC.withUnsafeBytes<A>(_:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1A793D7A8();
}

uint64_t AES.CMAC.MAC.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1A793D7E8();
}

uint64_t AES.CMAC.MAC.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A793DF58();
  sub_1A793D7E8();
  return sub_1A793DFA8();
}

uint64_t sub_1A78F5364()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      return BYTE6(v2);
    }

    v8 = __OFSUB__(HIDWORD(v1), v1);
    v9 = HIDWORD(v1) - v1;
    if (!v8)
    {
      return v9;
    }

    goto LABEL_11;
  }

  if (v3 != 2)
  {
    return 0;
  }

  v7 = v1 + 16;
  v5 = *(v1 + 16);
  v6 = *(v7 + 8);
  result = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A78F53BC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A793DF58();
  sub_1A793D7E8();
  return sub_1A793DFA8();
}

uint64_t sub_1A78F5408()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1A793D7E8();
}

uint64_t sub_1A78F5410()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A793DF58();
  sub_1A793D7E8();
  return sub_1A793DFA8();
}

void *sub_1A78F5478(uint64_t a1, unint64_t a2)
{
  v13 = 0x203A43414DLL;
  v14 = 0xE500000000000000;
  result = sub_1A791ABA8(a1, a2);
  v3 = result[2];
  if (v3 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = 2 * v3;
  if (2 * v3 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v5 = result;
  if (v3)
  {
    v6 = sub_1A793DB28();
    *(v6 + 16) = v4;
    bzero((v6 + 32), v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v11 = 0;
  v12 = v6;
  sub_1A793DB18();
  sub_1A78DD23C(v5, &v12, &v11);

  v7 = *(v12 + 16);
  v8 = sub_1A793D998();
  v10 = v9;

  MEMORY[0x1AC55D280](v8, v10);

  return v13;
}

uint64_t sub_1A78F5584@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_1A78F5190(v4, v3);
  v7 = v6;
  result = sub_1A78C0AFC(v4, v3);
  *a1 = v5;
  a1[1] = v7;
  return result;
}

void *sub_1A78F55E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1A791ABA8(v1, v2);
  sub_1A78C0AFC(v1, v2);
  return v3;
}

uint64_t sub_1A78F5638(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v6 = *a2;
  v5[2] = &v6;
  return sub_1A78F503C(sub_1A78F5F24, v5, v2, v3) & 1;
}

uint64_t sub_1A78F5694(unint64_t *a1, uint64_t *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (v8)
    {

      sub_1A78C0AFC(v7, v6);
      *&v20 = v7;
      *(&v20 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1A793F230;
      sub_1A78C0AFC(0, 0xC000000000000000);
      result = sub_1A78F59C0(&v20, a2);
      v12 = v20;
      v13 = *(&v20 + 1) | 0x4000000000000000;
      goto LABEL_15;
    }

    v2 = (v7 >> 8);
    v3 = v7 >> 24;
    sub_1A78C0AFC(v7, v6);
    *&v20 = v7;
    WORD4(v20) = v6;
    BYTE10(v20) = BYTE2(v6);
    BYTE11(v20) = BYTE3(v6);
    BYTE12(v20) = BYTE4(v6);
    BYTE13(v20) = BYTE5(v6);
    BYTE14(v20) = BYTE6(v6);
    v9 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1A78F5C2C(v9);
      *a2 = v9;
    }

    result = cccmac_final_generate();
    if (!result)
    {
      *a2 = v9;
      v12 = v20;
      v13 = DWORD2(v20) | ((WORD6(v20) | (BYTE14(v20) << 16)) << 32);
LABEL_15:
      *a1 = v12;
      a1[1] = v13;
LABEL_19:
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v8 != 2)
  {
    *(&v20 + 7) = 0;
    *&v20 = 0;
    v6 = *a2;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v6;
    if (v18)
    {
LABEL_17:
      result = cccmac_final_generate();
      if (!result)
      {
        *a2 = v6;
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    v6 = sub_1A78F5C2C(v6);
    *a2 = v6;
    goto LABEL_17;
  }

  v14 = *a1;

  sub_1A78C0AFC(v7, v6);
  *&v20 = v7;
  *(&v20 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  sub_1A793D6D8();
  v6 = *(&v20 + 1);
  v3 = v20;
  v2 = *(v20 + 16);
  v15 = *(v20 + 24);
  result = sub_1A793D648();
  if (result)
  {
    if (!__OFSUB__(v2, sub_1A793D678()))
    {
      v16 = __OFSUB__(v15, v2);
      v2 = (v15 - v2);
      if (!v16)
      {
        sub_1A793D668();
        v2 = *a2;
        v17 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v2;
        if (v17)
        {
LABEL_12:
          result = cccmac_final_generate();
          if (result)
          {
            __break(1u);
          }

          *a2 = v2;
          *a1 = v3;
          a1[1] = v6 | 0x8000000000000000;
          goto LABEL_19;
        }

LABEL_25:
        v2 = sub_1A78F5C2C(v2);
        *a2 = v2;
        goto LABEL_12;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78F59C0(int *a1, uint64_t *a2)
{
  sub_1A793D708();
  v4 = *a1;
  if (a1[1] < v4)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(a1 + 1);

  result = sub_1A793D648();
  if (!result)
  {
    goto LABEL_11;
  }

  if (__OFSUB__(v4, sub_1A793D678()))
  {
    goto LABEL_8;
  }

  sub_1A793D668();
  v4 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v4 = sub_1A78F5C2C(v4);
    *a2 = v4;
  }

  result = cccmac_final_generate();
  if (!result)
  {
    *a2 = v4;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1A78F5AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1A793D648();
  v11 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = sub_1A793D668();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 + v11;
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_1A78CBAB0(v11, v17, a4, a5, &v19);
  if (!v5)
  {
    return v19;
  }

  return v18;
}

uint64_t sub_1A78F5B58(uint64_t a1, uint64_t a2)
{
  result = sub_1A793D648();
  v5 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1A793D668();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    if (v9)
    {
      v10 = sub_1A78BDC10(v9, 0);
      sub_1A78E259C(v10 + 4, v9, v5, v9);
      result = v10;
      if (v11 != v9)
      {
        goto LABEL_14;
      }
    }
  }

  return result;
}

unint64_t sub_1A78F5C44()
{
  result = qword_1EB2A7518;
  if (!qword_1EB2A7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7518);
  }

  return result;
}

unint64_t sub_1A78F5C98(void *a1)
{
  a1[1] = sub_1A78F5CD8();
  a1[2] = sub_1A78F5D2C();
  a1[3] = sub_1A78F5D80();
  result = sub_1A78F5DD4();
  a1[4] = result;
  return result;
}

unint64_t sub_1A78F5CD8()
{
  result = qword_1EB2A7520;
  if (!qword_1EB2A7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7520);
  }

  return result;
}

unint64_t sub_1A78F5D2C()
{
  result = qword_1EB2A7528;
  if (!qword_1EB2A7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7528);
  }

  return result;
}

unint64_t sub_1A78F5D80()
{
  result = qword_1EB2A7530;
  if (!qword_1EB2A7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7530);
  }

  return result;
}

unint64_t sub_1A78F5DD4()
{
  result = qword_1EB2A7538;
  if (!qword_1EB2A7538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7538);
  }

  return result;
}

unint64_t sub_1A78F5E2C()
{
  result = qword_1EB2A7540;
  if (!qword_1EB2A7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7540);
  }

  return result;
}

uint64_t sub_1A78F5E80(uint64_t *a1, int a2)
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

uint64_t sub_1A78F5EC8(uint64_t result, int a2, int a3)
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

uint64_t sub_1A78F5F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A78F4EF0(**(v3 + 16), *(*(v3 + 16) + 8), a1, a2);
  *a3 = result & 1;
  return result;
}

unint64_t sub_1A78F6008()
{
  result = qword_1EB2A7548;
  if (!qword_1EB2A7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7548);
  }

  return result;
}

unint64_t sub_1A78F6060()
{
  result = qword_1ED5F89A0;
  if (!qword_1ED5F89A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F89A0);
  }

  return result;
}

unint64_t sub_1A78F60B8()
{
  result = qword_1EB2A7550;
  if (!qword_1EB2A7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7550);
  }

  return result;
}

unint64_t sub_1A78F610C(uint64_t a1)
{
  result = sub_1A78D14CC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A78F6138()
{
  result = qword_1ED5F8A10;
  if (!qword_1ED5F8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8A10);
  }

  return result;
}

unint64_t sub_1A78F6190()
{
  result = qword_1EB2A7558;
  if (!qword_1EB2A7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7558);
  }

  return result;
}

unint64_t sub_1A78F61E4(uint64_t a1)
{
  result = sub_1A78CF35C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A78F6210()
{
  result = qword_1EB2A6D28;
  if (!qword_1EB2A6D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D28);
  }

  return result;
}

uint64_t Curve25519.KeyAgreement.PrivateKey.init(ikm:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (v5 >> 60)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v5 >> 57)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v5)
  {

    sub_1A78D6484();
    swift_allocError();
    *v15 = 1;
    *(v15 + 4) = 1;
    return swift_willThrow();
  }

  sub_1A78F6AF0(v3 + 32, v3 + 32 + v5, &v30);

  v6 = v30;
  v7 = v31;
  v8 = sub_1A78F6570(0, 0xC000000000000000, 0x6B72705F706B64, 0xE700000000000000, v30, v31);
  v10 = v9;
  result = sub_1A78F6894(v8, v9, 27507, 0xE200000000000000, 0, 0xC000000000000000, 0x20uLL);
  v12 = result;
  v13 = v11;
  v14 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v14 != 2)
    {
LABEL_31:
      sub_1A78D6484();
      swift_allocError();
      *v26 = 0;
      *(v26 + 4) = 1;
      swift_willThrow();
      sub_1A78C0AFC(v8, v10);
      sub_1A78C0AFC(v6, v7);
      return sub_1A78C0AFC(v12, v13);
    }

    v27 = v7;
    v16 = *(result + 16);
    v28 = *(result + 24);
    result = sub_1A793D648();
    v17 = result;
    v32 = a2;
    if (result)
    {
      result = sub_1A793D678();
      if (__OFSUB__(v16, result))
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      LOBYTE(v17) = v17 + v16 - result != 0;
    }

    if (!__OFSUB__(v28, v16))
    {
      v18 = sub_1A793D668();
      if (v18 >= v28 - v16)
      {
        v19 = v28 - v16;
      }

      else
      {
        v19 = v18;
      }

      if (v19 == 32)
      {
        v20 = v17;
      }

      else
      {
        v20 = 0;
      }

      a2 = v32;
      v7 = v27;
      if ((v20 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v14)
  {
    if ((v11 & 0xFF000000000000) != 0x20000000000000)
    {
      goto LABEL_31;
    }

LABEL_30:
    v24 = v6;
    v25 = sub_1A78F3E70(v12, v13);
    sub_1A78C0AFC(v8, v10);
    sub_1A78C0AFC(v24, v7);
    result = sub_1A78C0AFC(v12, v13);
    *a2 = v25;
    return result;
  }

  v32 = a2;
  v29 = (result >> 32) - result;
  if (result >> 32 < result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v21 = sub_1A793D648();
  if (!v21)
  {
    goto LABEL_26;
  }

  result = sub_1A793D678();
  if (!__OFSUB__(v12, result))
  {
    LODWORD(v21) = v21 + v12 - result != 0;
LABEL_26:
    a2 = v32;
    v22 = sub_1A793D668();
    v23 = v29;
    if (v22 < v29)
    {
      v23 = v22;
    }

    if (!v21 || v23 != 32)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1A78F6570(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v50 = *MEMORY[0x1E69E9840];
  v49 = xmmword_1A793F230;
  sub_1A793D768();
  sub_1A793B930(0x31762D454B5048, 0xE700000000000000);
  sub_1A793B930(5064011, 0xE300000000000000);
  v10 = sub_1A78FE770(0x20uLL, 2);
  v12 = v11;
  v13 = MEMORY[0x1E6969080];
  v14 = MEMORY[0x1E6969078];
  *(&v47 + 1) = MEMORY[0x1E6969080];
  v48 = MEMORY[0x1E6969078];
  *&v46 = v10;
  *(&v46 + 1) = v11;
  v15 = __swift_project_boxed_opaque_existential_1(&v46, MEMORY[0x1E6969080]);
  v16 = *v15;
  v17 = v15[1];
  sub_1A78C0990(v10, v12);
  sub_1A7900C14(v16, v17);
  sub_1A78C0AFC(v10, v12);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  sub_1A793B930(a3, a4);
  *(&v47 + 1) = v13;
  v48 = v14;
  *&v46 = a5;
  *(&v46 + 1) = a6;
  v18 = __swift_project_boxed_opaque_existential_1(&v46, v13);
  v19 = *v18;
  v20 = v18[1];
  sub_1A78C0990(a5, a6);
  sub_1A7900C14(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  v21 = v49;
  v22 = sub_1A78F3E70(v49, *(&v49 + 1));
  sub_1A78C0990(a1, a2);
  sub_1A78F3E70(a1, a2);
  sub_1A78C0AFC(a1, a2);
  swift_beginAccess();
  v23 = v22[2];

  sub_1A7901B88(v24, &v45);
  v25 = sub_1A793DAE8();
  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v25, v26);
  v27 = v45;
  sub_1A78BD4B0(&v46);
  v44 = v27;
  v41[0] = v46;
  v41[1] = v47;

  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v41, &v42);

  sub_1A78BD4B0(&v42);

  v38 = v43;
  v40 = v42;

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7560, &qword_1A7941C70);
  *(&v47 + 1) = v28;
  v48 = sub_1A78F6F00();
  v29 = swift_allocObject();
  *&v46 = v29;
  *(v29 + 16) = v40;
  *(v29 + 32) = v38;
  v30 = __swift_project_boxed_opaque_existential_1(&v46, v28);
  v31 = v30[1];
  v42 = *v30;
  v43 = v31;
  v32 = sub_1A793D698();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_1A793D638();
  __swift_destroy_boxed_opaque_existential_1(&v46);
  sub_1A78C0AFC(v21, *(&v21 + 1));
  v35 = *MEMORY[0x1E69E9840];
  return 0x2000000000;
}

uint64_t sub_1A78F6894(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v10 = sub_1A78FE770(0x20uLL, 2);
  v12 = v11;
  sub_1A792A368(5064011, 0xE300000000000000, v10, v11, &v40);
  sub_1A78C0AFC(v10, v12);
  v13 = v40;
  v14 = sub_1A78FE770(a7, 2);
  v16 = v15;
  v43 = v14;
  v44 = v15;
  sub_1A78C0990(v14, v15);
  sub_1A793B930(0x31762D454B5048, 0xE700000000000000);
  sub_1A78C0AFC(v14, v16);
  v17 = v43;
  v18 = v44;
  v45 = v43;
  v46 = v44;
  v19 = MEMORY[0x1E6969080];
  v20 = MEMORY[0x1E6969078];
  v41 = MEMORY[0x1E6969080];
  v42 = MEMORY[0x1E6969078];
  v40 = v13;
  v21 = __swift_project_boxed_opaque_existential_1(&v40, MEMORY[0x1E6969080]);
  v22 = *v21;
  v23 = v21[1];
  sub_1A78C0990(v17, v18);
  sub_1A78C0990(v13, *(&v13 + 1));
  sub_1A7900C14(v22, v23);
  sub_1A78C0AFC(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  v24 = v45;
  v25 = v46;
  v43 = v45;
  v44 = v46;
  sub_1A78C0990(v45, v46);
  sub_1A793B930(a3, a4);
  sub_1A78C0AFC(v24, v25);
  v26 = v43;
  v27 = v44;
  v45 = v43;
  v46 = v44;
  v41 = v19;
  v42 = v20;
  *&v40 = a5;
  *(&v40 + 1) = a6;
  v28 = __swift_project_boxed_opaque_existential_1(&v40, v19);
  v29 = *v28;
  v30 = v28[1];
  sub_1A78C0990(v26, v27);
  sub_1A78C0990(a5, a6);
  sub_1A7900C14(v29, v30);
  sub_1A78C0AFC(v26, v27);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  v31 = v45;
  v32 = v46;
  sub_1A78C0990(v45, v46);
  sub_1A78D0038(a1, a2, v31, v32, a7, &v40);
  sub_1A78C0AFC(v31, v32);
  v33 = v40;
  swift_beginAccess();
  sub_1A78F6AF0(v33 + 32, v33 + 32 + *(v33 + 16), &v45);
  sub_1A78C0AFC(v31, v32);
  sub_1A78C0AFC(v13, *(&v13 + 1));

  return v45;
}

uint64_t sub_1A78F6AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_1A78C3BEC(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_1A792BC64(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_1A78C0FA8(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_1A78F6BBC(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v6 = v11;
      goto LABEL_9;
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a3;
      LOWORD(v11[1]) = a4;
      BYTE2(v11[1]) = BYTE2(a4);
      BYTE3(v11[1]) = BYTE3(a4);
      BYTE4(v11[1]) = BYTE4(a4);
      BYTE5(v11[1]) = BYTE5(a4);
      v6 = v11 + BYTE6(a4);
LABEL_9:
      result = a1(v11, v6);
      goto LABEL_10;
    }

    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }
  }

  result = sub_1A78F6DA8(v7, v8, a1);
LABEL_10:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78F6CF4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = sub_1A793D648();
  v8 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_1A793D668();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  a3(&v16, v8, v14);
  if (!v3)
  {
    v15 = v16;
  }

  return v15 & 1;
}

uint64_t sub_1A78F6DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_1A793D648();
  v7 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1A793D668();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

void *sub_1A78F6E50(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = sub_1A793D648();
  v8 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_1A793D668();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

unint64_t sub_1A78F6F00()
{
  result = qword_1EB2A7568;
  if (!qword_1EB2A7568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2A7560, &qword_1A7941C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7568);
  }

  return result;
}

uint64_t sub_1A78F6F64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unint64_t *a5@<X8>)
{
  v44 = a5;
  swift_getAssociatedTypeWitness();
  v50 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = *(v50 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1A793DC78();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = &v43 - v12;
  v13 = swift_checkMetadataState();
  v49 = *(v13 - 8);
  v14 = *(v49 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  v20 = *a1;
  v51 = a4;
  v52 = a2;
  v21 = *(*(a4[1] + 8) + 8);
  sub_1A793DB98();
  v47 = ccwrap_unwrapped_size();
  result = ccaes_ecb_decrypt_mode();
  if (result)
  {
    v23 = result;
    v57 = MEMORY[0x1AC55E020]();
    v24 = swift_slowAlloc();
    swift_beginAccess();
    v25 = *(v20 + 16);
    v26 = ccecb_init();
    if (v26)
    {
      v27 = v26;
      sub_1A78D6484();
      swift_allocError();
      *v28 = v27;
      *(v28 + 4) = 0;
      swift_willThrow();
      goto LABEL_10;
    }

    v43 = v24;
    sub_1A793D5A8();
    v29 = sub_1A793DB98();
    v30 = *(v49 + 8);
    v30(v19, v13);
    if (v29 != 1)
    {
      v35 = v52;
      v37 = sub_1A78C7370(v52, a3, *(v21 + 8));
      v56[3] = MEMORY[0x1E6969080];
      v56[4] = MEMORY[0x1E6969078];
      v56[0] = v37;
      v56[1] = v38;
      v34 = v51;
      goto LABEL_8;
    }

    sub_1A793D5A8();
    v31 = v45;
    sub_1A793DBC8();
    v30(v17, v13);
    v32 = AssociatedTypeWitness;
    v33 = *(AssociatedTypeWitness - 8);
    result = (*(v33 + 48))(v31, 1, AssociatedTypeWitness);
    v34 = v51;
    v35 = v52;
    if (result != 1)
    {
      v54 = v32;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v53);
      (*(v33 + 32))(boxed_opaque_existential_1, v31, v32);
      v37 = sub_1A78C78FC(&v53, v56);
LABEL_8:
      MEMORY[0x1EEE9AC00](v37);
      *(&v43 - 6) = a3;
      *(&v43 - 5) = v34;
      *(&v43 - 4) = v56;
      *(&v43 - 3) = v23;
      v39 = v43;
      *(&v43 - 2) = v43;
      *(&v43 - 1) = v35;
      v40 = v48;
      v41 = sub_1A78C05E8(v47, sub_1A78F75B0);
      if (!v40)
      {
        *v44 = v41;
        __swift_destroy_boxed_opaque_existential_1(v56);
        memset_s(v39, v57, 0, v57);
        v42 = v39;
        return MEMORY[0x1AC55E570](v42, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1(v56);
      v24 = v39;
LABEL_10:
      memset_s(v24, v57, 0, v57);
      v42 = v24;
      return MEMORY[0x1AC55E570](v42, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78F740C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  result = sub_1A793D6A8();
  if (v6)
  {
    sub_1A78D6484();
    swift_allocError();
    *v5 = 4;
    *(v5 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A78F7510@<X0>(uint64_t result@<X0>, void *a2@<X2>, _DWORD *a3@<X8>, uint64_t a4)
{
  if (*a2)
  {
    v4 = result;
    v6 = *(*(*(a4 + 8) + 8) + 8);
    result = sub_1A793DB98();
    if (v4)
    {
      result = ccwrap_auth_decrypt();
      *a3 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78F75B0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  return sub_1A78F740C(a1, a2, *(v2 + 32));
}

uint64_t sub_1A78F75D4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  return sub_1A78F7510(a1, *(v2 + 32), a2, *(v2 + 24));
}

uint64_t sub_1A78F7608(uint64_t *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      swift_beginAccess();
      v18 = *(a2 + 16);
      v8 = ccwrap_auth_encrypt();
      goto LABEL_21;
    }

    swift_retain_n();
    sub_1A78C0990(v5, v4);
    sub_1A78C0AFC(v5, v4);
    *a1 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    sub_1A793D6D8();
    v10 = v5;
    v9 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v11 = *(v5 + 16);
    v12 = *(v10 + 24);

    result = sub_1A793D648();
    if (!result)
    {
      __break(1u);
      goto LABEL_29;
    }

    if (!__OFSUB__(v11, sub_1A793D678()))
    {
      if (!__OFSUB__(v12, v11))
      {
        sub_1A793D668();
        swift_beginAccess();
        v14 = *(a2 + 16);
        v8 = ccwrap_auth_encrypt();

        v15 = v9 | 0x8000000000000000;
        *a1 = v10;
LABEL_20:
        a1[1] = v15;
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v6)
  {
    swift_retain_n();
    sub_1A78C0AFC(v5, v4);
    LOWORD(v25) = v4;
    BYTE2(v25) = BYTE2(v4);
    HIBYTE(v25) = BYTE3(v4);
    LOBYTE(v26) = BYTE4(v4);
    HIBYTE(v26) = BYTE5(v4);
    v27 = BYTE6(v4);
    swift_beginAccess();
    v7 = *(a2 + 16);
    v8 = ccwrap_auth_encrypt();

    *a1 = v5;
    a1[1] = v25 | ((v26 | (v27 << 16)) << 32);
LABEL_21:
    v24 = *MEMORY[0x1E69E9840];
    return v8;
  }

  v16 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  swift_retain_n();
  sub_1A78C0990(v5, v4);
  sub_1A78C0AFC(v5, v4);
  *a1 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  v17 = v5 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v17 < v5)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (sub_1A793D648() && __OFSUB__(v5, sub_1A793D678()))
    {
LABEL_27:
      __break(1u);
    }

    v19 = sub_1A793D698();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_1A793D628();

    v16 = v22;
  }

  if (v17 < v5)
  {
    goto LABEL_23;
  }

  result = sub_1A793D648();
  if (result)
  {
    if (!__OFSUB__(v5, sub_1A793D678()))
    {
      sub_1A793D668();
      swift_beginAccess();
      v23 = *(a2 + 16);
      v8 = ccwrap_auth_encrypt();

      v15 = v16 | 0x4000000000000000;
      *a1 = v5;
      goto LABEL_20;
    }

    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1A78F7A68(uint64_t *a1, uint64_t *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v17 = ccwrap_wrapped_size();
  v18[0] = sub_1A78CC5A0(v17);
  v18[1] = v5;
  sub_1A78CC640(v18, 0);
  v19 = *v18;
  if (!ccaes_ecb_encrypt_mode())
  {
    __break(1u);
  }

  v6 = MEMORY[0x1AC55E020]();
  v7 = swift_slowAlloc();
  swift_beginAccess();
  v8 = *(v2 + 16);
  v9 = ccecb_init();
  if (v9)
  {
    v10 = v9;
    v11 = 0;
  }

  else
  {

    v12 = sub_1A78F7608(&v19, v3);

    if (!v12)
    {
      v16 = *(&v19 + 1);
      v11 = v19;
      sub_1A78C0990(v19, *(&v19 + 1));
      memset_s(v7, v6, 0, v6);
      MEMORY[0x1AC55E570](v7, -1, -1);
      sub_1A78C0AFC(v11, v16);
      goto LABEL_7;
    }

    v11 = 1;
    v10 = 3;
  }

  sub_1A78D6484();
  swift_allocError();
  *v13 = v10;
  *(v13 + 4) = v11;
  swift_willThrow();
  memset_s(v7, v6, 0, v6);
  MEMORY[0x1AC55E570](v7, -1, -1);
  sub_1A78C0AFC(v19, *(&v19 + 1));
LABEL_7:
  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_1A78F7C60@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v117 = *MEMORY[0x1E69E9840];
  v15 = *a2;
  v17 = *a3;
  v16 = a3[1];
  v98 = *a5;
  swift_beginAccess();
  v18 = *(v15 + 16);
  if (v18 >> 60)
  {
    __break(1u);
    goto LABEL_84;
  }

  v19 = v18 > 0x20;
  v20 = (1 << v18) & 0x101010000;
  if (v19 || v20 == 0)
  {
    sub_1A78D6484();
    swift_allocError();
    *v34 = 0;
    *(v34 + 4) = 1;
    result = swift_willThrow();
LABEL_82:
    v87 = *MEMORY[0x1E69E9840];
    return result;
  }

  v89 = a9;
  v90 = ccaes_ccm_encrypt_mode();
  v91 = a7;
  v92 = a4;
  if (v16 >> 60 != 15)
  {
    v23 = v17;
    v24 = v16;
    goto LABEL_12;
  }

  type metadata accessor for SecureBytes.Backing();
  v22 = swift_allocObject();
  v22[1] = xmmword_1A79411C0;
  if (_swift_stdlib_malloc_size(v22) < 44)
  {
LABEL_84:
    __break(1u);
    __break(1u);
    goto LABEL_85;
  }

  v104 = 0;
  if (!ccrng())
  {
    __break(1u);
    goto LABEL_94;
  }

  ccrng_generate_bridge();
  swift_beginAccess();
  *(v22 + 2) = 12;
  sub_1A78ECACC(v22, &v105);
  if (!v10)
  {
    v24 = *(&v105 + 1);
    v23 = v105;
LABEL_12:
    sub_1A78CBE8C(v17, v16);
    v25 = *(*(*(a8 + 8) + 8) + 8);
    v26 = sub_1A793DB98();
    *&v105 = sub_1A78CC5A0(v26);
    *(&v105 + 1) = v27;
    sub_1A78CC640(&v105, 0);
    v103 = v105;
    if (v98)
    {
      v28 = 16;
    }

    else
    {
      v28 = 8;
    }

    *&v105 = sub_1A78CC5A0(v28);
    *(&v105 + 1) = v29;
    sub_1A78CC640(&v105, 0);
    v102 = v105;
    v30 = v15 + 32 + *(v15 + 16);
    v106 = a6;
    v107 = v91;
    v108 = a8;
    v109 = a10;
    v110 = a1;
    v111 = &v103;
    v112 = &v102;
    v113 = v92;
    v114 = v90;
    v115 = v15 + 32;
    v116 = v30;
    sub_1A78F6BBC(sub_1A78F993C, &v105, v23, v24);
    a8 = v23;
    v16 = v24;
    if (v10)
    {
      sub_1A78C0AFC(v23, v24);
LABEL_81:
      sub_1A78C0AFC(v102, *(&v102 + 1));
      result = sub_1A78C0AFC(v103, *(&v103 + 1));
      goto LABEL_82;
    }

    v31 = v103;
    v15 = *(&v102 + 1);
    a4 = v102;
    v32 = *(&v102 + 1) >> 62;
    if ((*(&v102 + 1) >> 62) <= 1)
    {
      if (!v32)
      {
        v33 = BYTE14(v102);
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    if (v32 == 2)
    {
      v37 = *(v102 + 16);
      v36 = *(v102 + 24);
      v33 = v36 - v37;
      if (!__OFSUB__(v36, v37))
      {
        goto LABEL_27;
      }

      __break(1u);
LABEL_25:
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
        v33 = HIDWORD(a4) - a4;
LABEL_27:
        sub_1A78C0990(a4, v15);
LABEL_28:
        if (v33 == v28)
        {
          v97 = v16;
          v38 = MEMORY[0x1E6969080];
          v39 = MEMORY[0x1E6969078];
          v107 = MEMORY[0x1E6969080];
          v108 = MEMORY[0x1E6969078];
          v105 = v31;
          v40 = __swift_project_boxed_opaque_existential_1(&v105, MEMORY[0x1E6969080]);
          v41 = *v40;
          v42 = v40[1];
          v43 = v42 >> 62;
          if ((v42 >> 62) > 1)
          {
            if (v43 != 2)
            {
              memset(v99, 0, 14);
              sub_1A78C0990(v31, *(&v31 + 1));
              v47 = v99;
              goto LABEL_57;
            }

            v94 = a8;
            v48 = *(v41 + 16);
            v49 = *(v41 + 24);
            sub_1A78C0990(v31, *(&v31 + 1));
            v50 = sub_1A793D648();
            if (v50)
            {
              v51 = sub_1A793D678();
              if (__OFSUB__(v48, v51))
              {
LABEL_89:
                __break(1u);
                goto LABEL_90;
              }

              v50 += v48 - v51;
            }

            if (!__OFSUB__(v49, v48))
            {
              v52 = sub_1A793D668();
              if (v52 >= v49 - v48)
              {
                v53 = v49 - v48;
              }

              else
              {
                v53 = v52;
              }

              v54 = &v50[v53];
              if (v50)
              {
                v55 = v54;
              }

              else
              {
                v55 = 0;
              }

              sub_1A78C2D58(v50, v55, &v100);
              a8 = v94;
LABEL_55:
              v38 = MEMORY[0x1E6969080];
              v39 = MEMORY[0x1E6969078];
LABEL_58:
              v65 = v100;
              v66 = v101;
              __swift_destroy_boxed_opaque_existential_1(&v105);
              v107 = v38;
              v108 = v39;
              *&v105 = a4;
              *(&v105 + 1) = v15;
              v67 = __swift_project_boxed_opaque_existential_1(&v105, v38);
              v68 = *v67;
              v69 = v67[1];
              v70 = v69 >> 62;
              if ((v69 >> 62) > 1)
              {
                if (v70 != 2)
                {
                  memset(v99, 0, 14);
                  v72 = v99;
                  v71 = v99;
                  goto LABEL_80;
                }

                v73 = *(v68 + 16);
                v74 = *(v68 + 24);
                v75 = sub_1A793D648();
                if (v75)
                {
                  v76 = sub_1A793D678();
                  v68 = v73 - v76;
                  if (__OFSUB__(v73, v76))
                  {
LABEL_90:
                    __break(1u);
                    goto LABEL_91;
                  }

                  v75 += v68;
                }

                v77 = __OFSUB__(v74, v73);
                v78 = v74 - v73;
                if (!v77)
                {
                  goto LABEL_72;
                }

                __break(1u);
              }

              else if (!v70)
              {
                v99[0] = *v67;
                LOWORD(v99[1]) = v69;
                BYTE2(v99[1]) = BYTE2(v69);
                BYTE3(v99[1]) = BYTE3(v69);
                BYTE4(v99[1]) = BYTE4(v69);
                BYTE5(v99[1]) = BYTE5(v69);
                v71 = v99 + BYTE6(v69);
                v72 = v99;
LABEL_80:
                sub_1A78C2D58(v72, v71, &v100);
                v85 = v100;
                v86 = v101;
                __swift_destroy_boxed_opaque_existential_1(&v105);
                *v89 = v85;
                *(v89 + 8) = v86;
                *(v89 + 16) = v65;
                *(v89 + 24) = v66;
                *(v89 + 32) = a8;
                *(v89 + 40) = v97;
                *(v89 + 48) = v98;
                goto LABEL_81;
              }

              v79 = v68;
              v80 = v68 >> 32;
              v78 = v80 - v79;
              if (v80 >= v79)
              {
                v75 = sub_1A793D648();
                if (!v75)
                {
LABEL_72:
                  v82 = sub_1A793D668();
                  if (v82 >= v78)
                  {
                    v83 = v78;
                  }

                  else
                  {
                    v83 = v82;
                  }

                  v84 = (v83 + v75);
                  if (v75)
                  {
                    v71 = v84;
                  }

                  else
                  {
                    v71 = 0;
                  }

                  v72 = v75;
                  goto LABEL_80;
                }

                v81 = sub_1A793D678();
                if (!__OFSUB__(v79, v81))
                {
                  v75 += v79 - v81;
                  goto LABEL_72;
                }

LABEL_92:
                __break(1u);
              }

              goto LABEL_88;
            }

LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          if (!v43)
          {
            v99[0] = *v40;
            LOWORD(v99[1]) = v42;
            BYTE2(v99[1]) = BYTE2(v42);
            v44 = HIWORD(v42);
            BYTE3(v99[1]) = BYTE3(v42);
            BYTE4(v99[1]) = BYTE4(v42);
            BYTE5(v99[1]) = BYTE5(v42);
            v45 = v39;
            v46 = v99 + v44;
            sub_1A78C0990(v31, *(&v31 + 1));
            v47 = v46;
            v39 = v45;
LABEL_57:
            sub_1A78C2D58(v99, v47, &v100);
            goto LABEL_58;
          }

          v95 = a8;
          v56 = v41;
          v57 = v41 >> 32;
          v58 = v57 - v56;
          if (v57 >= v56)
          {
            sub_1A78C0990(v31, *(&v31 + 1));
            v59 = sub_1A793D648();
            if (v59)
            {
              v60 = sub_1A793D678();
              if (__OFSUB__(v56, v60))
              {
LABEL_91:
                __break(1u);
                goto LABEL_92;
              }

              v59 += v56 - v60;
            }

            a8 = v95;
            v61 = sub_1A793D668();
            if (v61 >= v58)
            {
              v62 = v58;
            }

            else
            {
              v62 = v61;
            }

            v63 = &v59[v62];
            if (v59)
            {
              v64 = v63;
            }

            else
            {
              v64 = 0;
            }

            sub_1A78C2D58(v59, v64, &v100);
            goto LABEL_55;
          }

LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        goto LABEL_94;
      }

LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

LABEL_94:
    sub_1A78C0AFC(a8, v16);
    sub_1A78C0AFC(a4, v15);
    sub_1A78D6484();
    swift_allocError();
    *v88 = 1;
    *(v88 + 4) = 1;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A78F83EC(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = a1[1];
  v34 = *a1;
  v35 = v9;
  v36 = a1[2];
  v37 = *(a1 + 48);
  v10 = *a2;
  v11 = ccaes_ccm_decrypt_mode();
  result = swift_beginAccess();
  v13 = *(v10 + 16);
  if (v13 >> 60)
  {
    __break(1u);
    goto LABEL_31;
  }

  v14 = v13 > 0x20;
  LOBYTE(v15) = 1;
  v16 = (1 << v13) & 0x101010000;
  if (v14 || v16 == 0)
  {
LABEL_13:
    sub_1A78D6484();
    swift_allocError();
    *v21 = 0;
    *(v21 + 4) = v15;
    swift_willThrow();
    return a5;
  }

  v38 = v35;
  v18 = *(&v35 + 1) >> 62;
  if ((*(&v35 + 1) >> 62) > 1)
  {
    if (v18 != 2)
    {
      v15 = 0;
      goto LABEL_18;
    }

    v19 = *(v35 + 16);
    v20 = *(v35 + 24);
    v15 = v20 - v19;
    if (!__OFSUB__(v20, v19))
    {
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (!v18)
  {
    v15 = BYTE14(v35);
LABEL_18:
    *&v39 = sub_1A78CC5A0(v15);
    *(&v39 + 1) = v22;
    sub_1A78CC640(&v39, 0);
    v32 = v38;
    v33 = v39;
    v23 = v34;
    if (v37)
    {
      v24 = 16;
    }

    else
    {
      v24 = 8;
    }

    *&v39 = sub_1A78CC5A0(v24);
    *(&v39 + 1) = v25;
    sub_1A78CC640(&v39, 0);
    v31 = v39;
    v26 = v10 + 32 + *(v10 + 16);
    v40 = a4;
    v41 = a5;
    v42 = &v33;
    v43 = &v32;
    v44 = &v31;
    v45 = a3;
    v46 = v11;
    v47 = v10 + 32;
    v48 = v26;
    v27 = sub_1A78E5E78(sub_1A78F9750, &v39, v36, *(&v36 + 1));
    if (!v5)
    {
      if (v27)
      {
        a5 = v27;
        sub_1A78D6484();
        swift_allocError();
        *v28 = a5;
        *(v28 + 4) = 0;
      }

      else
      {
        sub_1A78E61B4(&v34, &v39);
        if (!sub_1A78E55A0(v23, *(&v23 + 1), &v31, &v34))
        {
          a5 = v33;
          v30 = v31;
          sub_1A78C0990(v33, *(&v33 + 1));
          sub_1A78C0AFC(v30, *(&v30 + 1));
          sub_1A78C0AFC(v32, *(&v32 + 1));
          sub_1A78C0AFC(v33, *(&v33 + 1));
          return a5;
        }

        sub_1A78D6484();
        swift_allocError();
        *v29 = 2;
        *(v29 + 4) = 1;
      }

      swift_willThrow();
    }

    sub_1A78C0AFC(v31, *(&v31 + 1));
    sub_1A78C0AFC(v32, *(&v32 + 1));
    sub_1A78C0AFC(v33, *(&v33 + 1));
    return a5;
  }

  if (!__OFSUB__(DWORD1(v35), v35))
  {
    v15 = DWORD1(v35) - v35;
LABEL_16:
    sub_1A78E5FC8(&v38, &v39);
    goto LABEL_18;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1A78F86E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a2;
  v38 = a4;
  v35 = a6;
  v36 = a1;
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1A793DC78();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v33 = v32 - v13;
  v14 = swift_checkMetadataState();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v32 - v20;
  v22 = v6;
  sub_1A793D5A8();
  v32[1] = v9;
  v23 = sub_1A793DB98();
  v24 = *(v15 + 8);
  v24(v21, v14);
  if (v23 == 1)
  {
    sub_1A793D5A8();
    v25 = v33;
    sub_1A793DBC8();
    v24(v19, v14);
    v26 = AssociatedTypeWitness;
    v27 = *(AssociatedTypeWitness - 8);
    result = (*(v27 + 48))(v25, 1, AssociatedTypeWitness);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      swift_getAssociatedConformanceWitness();
      sub_1A793D6A8();
      return (*(v27 + 8))(v25, v26);
    }
  }

  else
  {
    v29 = sub_1A78C7370(v22, a3, *(*(*(*(a5 + 8) + 8) + 8) + 8));
    v31 = v30;
    sub_1A793D7A8();
    return sub_1A78C0AFC(v29, v31);
  }

  return result;
}

uint64_t sub_1A78F8A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v37 = a6;
  v38 = a7;
  v35 = a5;
  v36 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a1;
  v39 = a8;
  swift_getAssociatedTypeWitness();
  v12 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1A793DC78();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v32 - v16;
  v18 = swift_checkMetadataState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v32 - v21;
  sub_1A793D5A8();
  sub_1A793DBC8();
  (*(v19 + 8))(v22, v18);
  v23 = *(AssociatedTypeWitness - 8);
  result = (*(v23 + 48))(v17, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v32 - 12) = a10;
    *(&v32 - 11) = v25;
    *(&v32 - 10) = a12;
    *(&v32 - 9) = v26;
    v27 = v33;
    *(&v32 - 8) = v32;
    *(&v32 - 7) = v27;
    v29 = v37;
    v28 = v38;
    *(&v32 - 6) = v35;
    *(&v32 - 5) = v29;
    *(&v32 - 4) = v28;
    *(&v32 - 3) = v30;
    v31 = v36;
    *(&v32 - 2) = v34;
    *(&v32 - 1) = v31;
    swift_getAssociatedConformanceWitness();
    sub_1A793D6A8();
    return (*(v23 + 8))(v17, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1A78F8D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v44 = a6;
  v45 = a8;
  v46 = a4;
  v49 = a1;
  v50 = a7;
  v51 = a2;
  v47 = a11;
  v48 = a5;
  v17 = sub_1A793DC78();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v43 - v21;
  v23 = *(a14 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v26 = v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22, a3, v17);
  if ((*(v23 + 48))(v22, 1, a14) != 1)
  {
    v35 = (*(v23 + 32))(v26, v22, a14);
    MEMORY[0x1EEE9AC00](v35);
    v36 = v48;
    v43[-12] = v46;
    v43[-11] = v36;
    v37 = v50;
    v43[-10] = v44;
    v43[-9] = v37;
    v43[-8] = v45;
    v43[-7] = a9;
    v38 = v47;
    v43[-6] = a10;
    v43[-5] = v38;
    v39 = a12;
    v40 = v49;
    v41 = v51;
    sub_1A78F86E4(sub_1A78F9AA4, &v43[-14], a14, MEMORY[0x1E69E7CA8] + 8, a16, MEMORY[0x1E69E7CA8]);
    return (*(v23 + 8))(v26, a14);
  }

  v43[1] = a10;
  v27 = v48;
  v28 = v49;
  v29 = v51;
  v30 = v47;
  v31 = v50;
  result = (*(v18 + 8))(v22, v17);
  if (!v27)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!v31)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!a9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = v46;
  if (!v30)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!v28)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v39 = 0;
  v40 = 0;
  v41 = v29 - v28;
  v42 = v28;
  result = ccccm_one_shot();
  if (result)
  {
    v33 = result;
    sub_1A78D6484();
    swift_allocError();
    *v34 = v33;
    *(v34 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A78F9058(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a4)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!a6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!a8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!a10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!a12)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  result = ccccm_one_shot();
  if (result)
  {
    v12 = result;
    sub_1A78D6484();
    swift_allocError();
    *v13 = v12;
    *(v13 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A78F913C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _DWORD *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v44 = a6;
  v45 = a8;
  v46 = a4;
  v50 = a7;
  v51 = a2;
  v48 = a5;
  v49 = a1;
  v42 = a9;
  v47 = a12;
  v16 = sub_1A793DC78();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v41 - v20;
  v22 = *(a14 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v25 = v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21, a3, v16);
  if ((*(v22 + 48))(v21, 1, a14) == 1)
  {
    v41[1] = a11;
    v26 = v48;
    v27 = v49;
    v29 = v50;
    v28 = v51;
    v30 = v47;
    result = (*(v17 + 8))(v21, v16);
    if (v26)
    {
      if (v29)
      {
        if (a10)
        {
          result = v46;
          if (v30)
          {
            if (v27)
            {
              v37 = 0;
              v38 = 0;
              v39 = v28 - v27;
              v40 = v27;
              result = ccccm_one_shot();
              *v42 = result;
              return result;
            }

            goto LABEL_15;
          }

LABEL_14:
          __break(1u);
LABEL_15:
          __break(1u);
          return result;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  v32 = (*(v22 + 32))(v25, v21, a14);
  MEMORY[0x1EEE9AC00](v32);
  v33 = v48;
  v41[-12] = v46;
  v41[-11] = v33;
  v34 = v50;
  v41[-10] = v44;
  v41[-9] = v34;
  v41[-8] = v45;
  v41[-7] = a10;
  v35 = v47;
  v41[-6] = a11;
  v41[-5] = v35;
  v37 = a13;
  v38 = v49;
  v39 = v51;
  v36 = v43;
  sub_1A78F86E4(sub_1A78F9900, &v41[-14], a14, MEMORY[0x1E69E72F0], a15, &v52);
  result = (*(v22 + 8))(v25, a14);
  if (!v36)
  {
    *v42 = v52;
  }

  return result;
}

uint64_t sub_1A78F9454@<X0>(uint64_t result@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X7>, _DWORD *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!a3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!a4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!a7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a9)
  {
    result = ccccm_one_shot();
    *a5 = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1A78F9508@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, _DWORD *a4@<X8>)
{
  v5 = result;
  v18 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v7 = a2[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (v9)
    {
      goto LABEL_12;
    }

    *v17 = *a2;
    *&v17[8] = v7;
    v17[10] = BYTE2(v7);
    v17[11] = BYTE3(v7);
    v9 = v7 >> 40;
    v17[12] = BYTE4(v7);
    v17[13] = BYTE5(v7);
    if (result)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  if (v9 != 2)
  {
    *&v17[6] = 0;
    *v17 = 0;
    if (!result)
    {
      __break(1u);
      goto LABEL_26;
    }

LABEL_20:
    *(a3 + 48);
    result = cc_cmp_safe();
    v15 = result;
    goto LABEL_21;
  }

  v10 = *(v8 + 16);
  sub_1A78E61B4(a3, v17);
  sub_1A78C0990(v8, v7);
  v11 = sub_1A793D648();
  if (v11)
  {
    v12 = sub_1A793D678();
    if (__OFSUB__(v10, v12))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v11 += v10 - v12;
  }

  result = sub_1A793D668();
  if (!v5)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v11)
  {
LABEL_18:
    *(a3 + 48);
    v15 = cc_cmp_safe();
    sub_1A78C0AFC(v8, v7);
    result = sub_1A78E62C4(a3);
LABEL_21:
    *a4 = v15;
    v16 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
LABEL_12:
  if (v8 > v8 >> 32)
  {
    __break(1u);
    goto LABEL_23;
  }

  sub_1A78E61B4(a3, v17);
  sub_1A78C0990(v8, v7);
  v13 = sub_1A793D648();
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = sub_1A793D678();
  if (__OFSUB__(v8, v14))
  {
LABEL_24:
    __break(1u);
  }

  v13 += v8 - v14;
LABEL_16:
  result = sub_1A793D668();
  if (!v5)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v13)
  {
    goto LABEL_18;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1A78F9750@<X0>(_DWORD *a1@<X8>)
{
  v4 = *(v1 + 32);
  v6 = *(v1 + 16);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 80);
  result = sub_1A78CD4CC(sub_1A78F97CC);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A78F97CC@<X0>(_DWORD *a1@<X8>)
{
  v4 = *(v1 + 32);
  v6 = *(v1 + 16);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 72);
  v10 = *(v1 + 88);
  result = sub_1A78CD4CC(sub_1A78F9844);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A78F9844@<X0>(_DWORD *a1@<X8>)
{
  v6 = *(v1 + 16);
  v8 = *(v1 + 48);
  v4 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 64);
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  result = sub_1A78CD4CC(sub_1A78F98C4);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A78F9900@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[6];
  v7 = v2[12];
  return sub_1A78F9454(a1, v2[3], v2[5], v2[7], a2, v2[8], v2[9], v2[10], v2[11]);
}

uint64_t sub_1A78F993C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[6];
  v6 = v3[5];
  return sub_1A78F8A1C(a1, a2, v3[7], v3[8], v3[9], v3[10], v3[11], a3, v3[12], v3[2], v3[3], v3[4]);
}

uint64_t sub_1A78F9980()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 56);
  v6 = *(v0 + 72);
  v7 = *(v0 + 88);
  v8 = *(v0 + 104);
  return sub_1A78C9770(sub_1A78F99F0);
}

uint64_t sub_1A78F99F0()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v6 = *(v0 + 64);
  v1 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = *(v0 + 112);
  return sub_1A78C9770(sub_1A78F9A60);
}

uint64_t static AES.KeyWrap.wrap(_:using:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = v2;
  return sub_1A78F7A68(&v5, &v4);
}

uint64_t sub_1A78F9B58(uint64_t a1, unint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1A78F9C68(a1, a2, MEMORY[0x1E69E9510], MEMORY[0x1E69E9510], sub_1A78FC748);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78F9BE0(uint64_t a1, unint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1A78F9C68(a1, a2, MEMORY[0x1E69E9518], MEMORY[0x1E69E9518], sub_1A78FC714);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78F9C68(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(void *, uint64_t *))
{
  v6 = a5;
  v8 = a2;
  v9 = a1;
  v40 = *MEMORY[0x1E69E9840];
  v38 = a1;
  v39 = a2;
  v37 = 0;
  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v10)
    {
      v36[0] = a1;
      LOWORD(v36[1]) = a2;
      BYTE2(v36[1]) = BYTE2(a2);
      BYTE3(v36[1]) = BYTE3(a2);
      BYTE4(v36[1]) = BYTE4(a2);
      BYTE5(v36[1]) = BYTE5(a2);
      v11 = v36 + BYTE6(a2);
      goto LABEL_25;
    }

    v22 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v35 = a5;
      v12 = v5;
      v13 = a3;
      v16 = sub_1A793D648();
      if (!v16)
      {
        goto LABEL_16;
      }

      v23 = sub_1A793D678();
      if (!__OFSUB__(v9, v23))
      {
        v16 += v9 - v23;
LABEL_16:
        v24 = sub_1A793D668();
        if (v24 >= v22)
        {
          v21 = (v9 >> 32) - v9;
        }

        else
        {
          v21 = v24;
        }

        goto LABEL_19;
      }

LABEL_35:
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  if (v10 == 2)
  {
    v35 = a5;
    v12 = v5;
    v13 = a3;
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v16 = sub_1A793D648();
    if (v16)
    {
      v17 = sub_1A793D678();
      if (__OFSUB__(v15, v17))
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v16 += v15 - v17;
    }

    v18 = __OFSUB__(v14, v15);
    v19 = v14 - v15;
    if (!v18)
    {
      v20 = sub_1A793D668();
      if (v20 >= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v20;
      }

LABEL_19:
      v25 = &v16[v21];
      if (v16)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v27 = sub_1A78C5D88(v16, v26, v13);
      if (v12)
      {
        goto LABEL_29;
      }

      v6 = v35;
      goto LABEL_26;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  memset(v36, 0, 14);
  v11 = v36;
LABEL_25:
  v27 = sub_1A78C5D88(v36, v11, a3);
  if (v5)
  {
    goto LABEL_29;
  }

LABEL_26:
  result = a4(v27);
  if (result)
  {
    v29 = getccec_pub_ctx_size();
    v34 = MEMORY[0x1EEE9AC00](v29);
    v30 = sub_1A78C0EA8(v34, v6);
    if (!v37)
    {
      v33 = v30;
      sub_1A78C0AFC(v38, v39);
      result = v33;
      goto LABEL_30;
    }

    sub_1A78D6484();
    swift_allocError();
    *v31 = 1;
    *(v31 + 4) = 1;
    swift_willThrow();
    v9 = v38;
    v8 = v39;
LABEL_29:
    result = sub_1A78C0AFC(v9, v8);
LABEL_30:
    v32 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78F9FEC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *, uint64_t *))
{
  v7 = sub_1A78C5D88((a1 + 32), (a1 + 32 + *(a1 + 16)), a2);
  if (v4)
  {
  }

  result = a3(v7);
  if (result)
  {
    v9 = getccec_pub_ctx_size();
    v11 = MEMORY[0x1EEE9AC00](v9);
    v10 = sub_1A78C0EA8(v11, a4);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void SecureEnclave.P256.KeyAgreement.PrivateKey.init(from:)(__SecKey *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1A78FA380(a1, sub_1A7931B44, a2);
  v2 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1A78FA260()
{
  result = qword_1EB2A7570;
  if (!qword_1EB2A7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7570);
  }

  return result;
}

unint64_t sub_1A78FA2B4()
{
  result = qword_1EB2A7580;
  if (!qword_1EB2A7580)
  {
    sub_1A78FC438(255, &qword_1EB2A7578, 0x1E69E58C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7580);
  }

  return result;
}

void SecureEnclave.P256.Signing.PrivateKey.init(from:)(__SecKey *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1A78FA380(a1, sub_1A7931B44, a2);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A78FA380(__SecKey *a1@<X0>, uint64_t (*a2)(void, unint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v54[8] = *MEMORY[0x1E69E9840];
  v7 = SecKeyCopyAttributes(a1);
  if (!v7)
  {
    sub_1A78FA260();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();

LABEL_25:
    v33 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = v7;
  v51 = a2;
  sub_1A78FC438(0, &qword_1EB2A7578, 0x1E69E58C0);
  sub_1A78FA2B4();
  v9 = sub_1A793D888();
  v53 = v8;
  v10 = sub_1A793D948();
  v11 = v10;
  if ((v9 & 0xC000000000000001) != 0)
  {
    v50 = a3;
    v12 = sub_1A793DE78();

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!*(v9 + 16) || (v14 = sub_1A78FBD20(v10), (v15 & 1) == 0))
    {

LABEL_13:

      sub_1A78FA260();
      swift_allocError();
      *v21 = 1;
      swift_willThrow();

      goto LABEL_25;
    }

    v50 = a3;
    v16 = *(*(v9 + 56) + 8 * v14);
    swift_unknownObjectRetain();
  }

  v17 = sub_1A793D888();

  v18 = sub_1A793D948();
  v19 = v18;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v20 = sub_1A793DE78();

    if (!v20)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (!*(v17 + 16) || (v22 = sub_1A78FBD20(v18), (v23 & 1) == 0))
    {

      goto LABEL_22;
    }

    v20 = *(*(v17 + 56) + 8 * v22);
    swift_unknownObjectRetain();
  }

  if ([v20 respondsToSelector_])
  {
    if ([v20 BOOLValue])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7590, &qword_1A7941C90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A79414F0;
      v25 = *MEMORY[0x1E6966700];
      *(inited + 32) = sub_1A793D958();
      *(inited + 40) = v26;
      sub_1A78FC438(0, &qword_1EB2A7598, 0x1E696AD98);
      *(inited + 48) = sub_1A793DC48();
      v27 = sub_1A78FC1A4(inited);
      swift_setDeallocating();
      sub_1A78FC480(inited + 32);
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    swift_unknownObjectRelease();
LABEL_22:
    v27 = 0;
LABEL_23:
    swift_unknownObjectRetain();
    objc_opt_self();
    v28 = swift_dynamicCastObjCClassUnconditional();
    v29 = sub_1A793D7D8();
    v31 = v30;

    v32 = v51(0, v27);
    if (v3)
    {

      sub_1A78C0AFC(v29, v31);

      swift_unknownObjectRelease();
    }

    else
    {
      v34 = v32;
      v35 = sub_1A793D7B8();
      v54[0] = 0;
      v36 = [v34 objectForObjectID:v35 error:v54];

      if (v36)
      {
        v37 = v54[0];
        v38 = [v36 publicKey];
        v39 = v36;
        if (v38)
        {
          v40 = v38;
          v49 = v39;
          v52 = v34;
          v41 = sub_1A793D7D8();
          v43 = v42;

          sub_1A78C0990(v41, v43);
          v44 = sub_1A78F9C68(v41, v43, MEMORY[0x1E69E9510], MEMORY[0x1E69E9510], sub_1A78FC748);
          sub_1A78C0AFC(v41, v43);

          v45 = v49;
          sub_1A78C0990(v29, v31);
          sub_1A78C0AFC(v29, v31);
          v46 = v45;
          sub_1A78C0990(v29, v31);

          sub_1A78C0AFC(v29, v31);
          swift_unknownObjectRelease();

          *v50 = v44;
          v50[1] = v29;
          v50[2] = v31;
          v50[3] = v46;
        }

        else
        {

          sub_1A78FC3E4();
          swift_allocError();
          *v48 = 2;
          *(v48 + 8) = 1;
          swift_willThrow();
          sub_1A78C0AFC(v29, v31);

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v47 = v54[0];

        sub_1A793D6C8();

        swift_willThrow();
        sub_1A78C0AFC(v29, v31);

        swift_unknownObjectRelease();
      }
    }

    goto LABEL_25;
  }

  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

void SecureEnclave.P384.KeyAgreement.PrivateKey.init(from:)(__SecKey *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1A78FAA2C(a1, sub_1A7931B44, a2);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A78FAA2C(__SecKey *a1@<X0>, uint64_t (*a2)(void, unint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v54[8] = *MEMORY[0x1E69E9840];
  v7 = SecKeyCopyAttributes(a1);
  if (!v7)
  {
    sub_1A78FA260();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();

LABEL_25:
    v33 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = v7;
  v51 = a2;
  sub_1A78FC438(0, &qword_1EB2A7578, 0x1E69E58C0);
  sub_1A78FA2B4();
  v9 = sub_1A793D888();
  v53 = v8;
  v10 = sub_1A793D948();
  v11 = v10;
  if ((v9 & 0xC000000000000001) != 0)
  {
    v50 = a3;
    v12 = sub_1A793DE78();

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!*(v9 + 16) || (v14 = sub_1A78FBD20(v10), (v15 & 1) == 0))
    {

LABEL_13:

      sub_1A78FA260();
      swift_allocError();
      *v21 = 1;
      swift_willThrow();

      goto LABEL_25;
    }

    v50 = a3;
    v16 = *(*(v9 + 56) + 8 * v14);
    swift_unknownObjectRetain();
  }

  v17 = sub_1A793D888();

  v18 = sub_1A793D948();
  v19 = v18;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v20 = sub_1A793DE78();

    if (!v20)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (!*(v17 + 16) || (v22 = sub_1A78FBD20(v18), (v23 & 1) == 0))
    {

      goto LABEL_22;
    }

    v20 = *(*(v17 + 56) + 8 * v22);
    swift_unknownObjectRetain();
  }

  if ([v20 respondsToSelector_])
  {
    if ([v20 BOOLValue])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7590, &qword_1A7941C90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A79414F0;
      v25 = *MEMORY[0x1E6966700];
      *(inited + 32) = sub_1A793D958();
      *(inited + 40) = v26;
      sub_1A78FC438(0, &qword_1EB2A7598, 0x1E696AD98);
      *(inited + 48) = sub_1A793DC48();
      v27 = sub_1A78FC1A4(inited);
      swift_setDeallocating();
      sub_1A78FC480(inited + 32);
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    swift_unknownObjectRelease();
LABEL_22:
    v27 = 0;
LABEL_23:
    swift_unknownObjectRetain();
    objc_opt_self();
    v28 = swift_dynamicCastObjCClassUnconditional();
    v29 = sub_1A793D7D8();
    v31 = v30;

    v32 = v51(0, v27);
    if (v3)
    {

      sub_1A78C0AFC(v29, v31);

      swift_unknownObjectRelease();
    }

    else
    {
      v34 = v32;
      v35 = sub_1A793D7B8();
      v54[0] = 0;
      v36 = [v34 objectForObjectID:v35 error:v54];

      if (v36)
      {
        v37 = v54[0];
        v38 = [v36 publicKey];
        v39 = v36;
        if (v38)
        {
          v40 = v38;
          v49 = v39;
          v52 = v34;
          v41 = sub_1A793D7D8();
          v43 = v42;

          sub_1A78C0990(v41, v43);
          v44 = sub_1A78F9C68(v41, v43, MEMORY[0x1E69E9518], MEMORY[0x1E69E9518], sub_1A78FC714);
          sub_1A78C0AFC(v41, v43);

          v45 = v49;
          sub_1A78C0990(v29, v31);
          sub_1A78C0AFC(v29, v31);
          v46 = v45;
          sub_1A78C0990(v29, v31);

          sub_1A78C0AFC(v29, v31);
          swift_unknownObjectRelease();

          *v50 = v44;
          v50[1] = v29;
          v50[2] = v31;
          v50[3] = v46;
        }

        else
        {

          sub_1A78FC3E4();
          swift_allocError();
          *v48 = 2;
          *(v48 + 8) = 1;
          swift_willThrow();
          sub_1A78C0AFC(v29, v31);

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v47 = v54[0];

        sub_1A793D6C8();

        swift_willThrow();
        sub_1A78C0AFC(v29, v31);

        swift_unknownObjectRelease();
      }
    }

    goto LABEL_25;
  }

  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

void SecureEnclave.P384.Signing.PrivateKey.init(from:)(__SecKey *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1A78FAA2C(a1, sub_1A7931B44, a2);
  v2 = *MEMORY[0x1E69E9840];
}

void SecureEnclave.Curve25519.KeyAgreement.PrivateKey.init(from:)(__SecKey *a1@<X0>, void *a2@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1A78FB13C(a1, sub_1A7931B44, a2);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1A78FB13C(__SecKey *a1@<X0>, uint64_t (*a2)(void, unint64_t)@<X1>, void *a3@<X8>)
{
  v54[8] = *MEMORY[0x1E69E9840];
  v7 = SecKeyCopyAttributes(a1);
  if (!v7)
  {
    sub_1A78FA260();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();

LABEL_25:
    v33 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = v7;
  v51 = a2;
  sub_1A78FC438(0, &qword_1EB2A7578, 0x1E69E58C0);
  sub_1A78FA2B4();
  v9 = sub_1A793D888();
  v53 = v8;
  v10 = sub_1A793D948();
  v11 = v10;
  if ((v9 & 0xC000000000000001) != 0)
  {
    v50 = a3;
    v12 = sub_1A793DE78();

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!*(v9 + 16) || (v14 = sub_1A78FBD20(v10), (v15 & 1) == 0))
    {

LABEL_13:

      sub_1A78FA260();
      swift_allocError();
      *v21 = 1;
      swift_willThrow();

      goto LABEL_25;
    }

    v50 = a3;
    v16 = *(*(v9 + 56) + 8 * v14);
    swift_unknownObjectRetain();
  }

  v17 = sub_1A793D888();

  v18 = sub_1A793D948();
  v19 = v18;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v20 = sub_1A793DE78();

    if (!v20)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (!*(v17 + 16) || (v22 = sub_1A78FBD20(v18), (v23 & 1) == 0))
    {

      goto LABEL_22;
    }

    v20 = *(*(v17 + 56) + 8 * v22);
    swift_unknownObjectRetain();
  }

  if ([v20 respondsToSelector_])
  {
    if ([v20 BOOLValue])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7590, &qword_1A7941C90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A79414F0;
      v25 = *MEMORY[0x1E6966700];
      *(inited + 32) = sub_1A793D958();
      *(inited + 40) = v26;
      sub_1A78FC438(0, &qword_1EB2A7598, 0x1E696AD98);
      *(inited + 48) = sub_1A793DC48();
      v27 = sub_1A78FC1A4(inited);
      swift_setDeallocating();
      sub_1A78FC480(inited + 32);
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    swift_unknownObjectRelease();
LABEL_22:
    v27 = 0;
LABEL_23:
    swift_unknownObjectRetain();
    objc_opt_self();
    v28 = swift_dynamicCastObjCClassUnconditional();
    v29 = sub_1A793D7D8();
    v31 = v30;

    v32 = v51(0, v27);
    if (v3)
    {

      sub_1A78C0AFC(v29, v31);

      swift_unknownObjectRelease();
    }

    else
    {
      v34 = v32;
      v35 = sub_1A793D7B8();
      v54[0] = 0;
      v36 = [v34 objectForObjectID:v35 error:v54];

      if (v36)
      {
        v37 = v54[0];
        v38 = [v36 publicKey];
        v39 = v36;
        if (v38)
        {
          v40 = v38;
          v49 = v39;
          v52 = v34;
          v41 = sub_1A793D7D8();
          v43 = v42;

          sub_1A78C0990(v41, v43);
          v44 = sub_1A78FB7AC(v41, v43);
          sub_1A78C0AFC(v41, v43);

          v45 = v49;
          sub_1A78C0990(v29, v31);
          sub_1A78C0AFC(v29, v31);
          v46 = v45;
          sub_1A78C0990(v29, v31);

          sub_1A78C0AFC(v29, v31);
          swift_unknownObjectRelease();

          *v50 = v44;
          v50[1] = v29;
          v50[2] = v31;
          v50[3] = v46;
        }

        else
        {

          sub_1A78FC3E4();
          swift_allocError();
          *v48 = 2;
          *(v48 + 8) = 1;
          swift_willThrow();
          sub_1A78C0AFC(v29, v31);

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v47 = v54[0];

        sub_1A793D6C8();

        swift_willThrow();
        sub_1A78C0AFC(v29, v31);

        swift_unknownObjectRelease();
      }
    }

    goto LABEL_25;
  }

  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

void SecureEnclave.Curve25519.Signing.PrivateKey.init(from:)(__SecKey *a1@<X0>, void *a2@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1A78FB13C(a1, sub_1A7931B44, a2);
  v2 = *MEMORY[0x1E69E9840];
}

_BYTE *sub_1A78FB7AC(unint64_t a1, unint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_27;
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    v13 = sub_1A793D648();
    if (v13)
    {
      v14 = sub_1A793D678();
      if (__OFSUB__(v11, v14))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v13 += v11 - v14;
    }

    v15 = __OFSUB__(v12, v11);
    v16 = v12 - v11;
    if (!v15)
    {
      v2 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
      v17 = sub_1A793D668();
      if (v17 >= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      if (!v13 || v18 != 32)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v5)
  {
    v19 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v20 = sub_1A793D648();
      if (!v20)
      {
        v2 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
        sub_1A793D668();
        goto LABEL_27;
      }

      v21 = v20;
      v22 = sub_1A793D678();
      if (!__OFSUB__(a1, v22))
      {
        v13 = (a1 - v22 + v21);
        v2 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
        v23 = sub_1A793D668();
        if (!v13)
        {
          goto LABEL_27;
        }

        v24 = v23 >= v19 ? (a1 >> 32) - a1 : v23;
        if (v24 != 32)
        {
          goto LABEL_27;
        }

LABEL_24:
        v2 = sub_1A78BDB94(v13, v13 + 32);
        goto LABEL_25;
      }

LABEL_32:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  if ((a2 & 0xFF000000000000) != 0x20000000000000)
  {
LABEL_27:
    sub_1A78D6484();
    swift_allocError();
    *v25 = 0;
    *(v25 + 4) = 1;
    swift_willThrow();
    sub_1A78C0AFC(a1, a2);
    goto LABEL_28;
  }

  v33 = HIDWORD(a2);
  v34 = a2 >> 40;
  v31 = a2 >> 16;
  v32 = a2 >> 24;
  v29 = HIBYTE(a1);
  v30 = a2 >> 8;
  v28 = HIWORD(a1);
  v6 = a1 >> 40;
  v7 = HIDWORD(a1);
  v8 = a1 >> 24;
  v9 = a1 >> 16;
  v10 = a1 >> 8;
  v2 = sub_1A78BDC10(32, 0);
  v2[32] = a1;
  v2[33] = v10;
  v2[34] = v9;
  v2[35] = v8;
  v2[36] = v7;
  v2[37] = v6;
  v2[38] = v28;
  v2[39] = v29;
  v2[40] = a2;
  v2[41] = v30;
  v2[42] = v31;
  v2[43] = v32;
  v2[44] = v33;
  v2[45] = v34;
LABEL_25:
  sub_1A78C0AFC(a1, a2);
LABEL_28:
  v26 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1A78FBA0C(uint64_t result, unint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v8 = a6;
  v22 = *MEMORY[0x1E69E9840];
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      result = a7();
      if (result)
      {
LABEL_21:
        result = MEMORY[0x1AC55DB90]();
        *a3 = result;
        *a5 = v8;
        goto LABEL_22;
      }

      goto LABEL_28;
    }

    v21 = a6;
    v13 = *(result + 16);
    v14 = *(result + 24);
    v15 = sub_1A793D648();
    if (v15)
    {
      v16 = sub_1A793D678();
      if (__OFSUB__(v13, v16))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v15 += v13 - v16;
    }

    if (__OFSUB__(v14, v13))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1A793D668();
    result = a7();
    if (!result)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v15)
    {
LABEL_19:
      result = MEMORY[0x1AC55DB90]();
      *a3 = result;
      *a5 = v21;
LABEL_22:
      v20 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
  }

  else if (!v12)
  {
    result = a7();
    if (result)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = result;
  if (result >> 32 < result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v21 = v8;
  v18 = sub_1A793D648();
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = sub_1A793D678();
  if (__OFSUB__(v17, v19))
  {
LABEL_26:
    __break(1u);
  }

  v18 += v17 - v19;
LABEL_17:
  sub_1A793D668();
  result = a7();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v18)
  {
    goto LABEL_19;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1A78FBC64(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1A793DF58();
  sub_1A793D9A8();
  v6 = sub_1A793DFA8();

  return sub_1A78FBD64(a1, a2, v6);
}

unint64_t sub_1A78FBCDC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1A793DDC8();

  return sub_1A78FBE1C(a1, v5);
}

unint64_t sub_1A78FBD20(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1A793DC58();

  return sub_1A78FBEE4(a1, v5);
}

unint64_t sub_1A78FBD64(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1A793DEC8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1A78FBE1C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1A78FC5C8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1AC55D690](v9, a1);
      sub_1A78FC624(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1A78FBEE4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A78FC438(0, &qword_1EB2A7578, 0x1E69E58C0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A793DC68();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t *sub_1A78FBFB8(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  if (*result)
  {
    return sub_1A78FBA0C(*a4, *(a4 + 8), a5, *result, a2, a3, a6);
  }

  __break(1u);
  return result;
}

uint64_t *sub_1A78FBFF8(uint64_t *result, void *a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t (*a6)(void))
{
  v6 = *result;
  if (*result)
  {
    v10 = *a4;
    result = a6();
    if (result)
    {
      result = MEMORY[0x1AC55DB90](result, *(v10 + 16), v10 + 32, v6);
      *a5 = result;
      *a2 = a3;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A78FC074(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75B0, &qword_1A7941D60);
    v3 = sub_1A793DE98();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A78BF9FC(v4, &v13, &qword_1EB2A75B8, &qword_1A7941D68);
      v5 = v13;
      v6 = v14;
      result = sub_1A78FBC64(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A78FC550(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A78FC1A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75D0, &qword_1A7941D80);
    v3 = sub_1A793DE98();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1A793DB18();
      swift_unknownObjectRetain();
      result = sub_1A78FBC64(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A78FC2A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75C0, &qword_1A7941D70);
    v3 = sub_1A793DE98();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A78BF9FC(v4, v13, &qword_1EB2A75C8, &qword_1A7941D78);
      result = sub_1A78FBCDC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1A78FC550(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A78FC3E4()
{
  result = qword_1EB2A7588;
  if (!qword_1EB2A7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7588);
  }

  return result;
}

uint64_t sub_1A78FC438(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1A78FC480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75A0, &qword_1A7941C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A78FC4FC()
{
  result = qword_1EB2A75A8;
  if (!qword_1EB2A75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A75A8);
  }

  return result;
}

_OWORD *sub_1A78FC550(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_BYTE *sub_1A78FC77C(unint64_t a1, unint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1A78CE464(a1, a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Curve448.KeyAgreement.PublicKey.init<A>(rawRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1A79001A8();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t Curve448.KeyAgreement.PublicKey.rawRepresentation.getter()
{
  v1 = *v0;
  v2 = sub_1A793DB18();
  v3 = sub_1A78C0DCC(v2);

  return v3;
}

unint64_t Curve448.KeyAgreement.PrivateKey.init()@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A78E2E70(0x38uLL);
  *a1 = result;
  return result;
}

void *Curve448.KeyAgreement.PrivateKey.publicKey.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1A78FFE3C();
  *a1 = result;
  return result;
}

uint64_t Curve448.KeyAgreement.PrivateKey.init<A>(rawRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1A7900234();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t Curve448.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  sub_1A793DB18();
  v6 = sub_1A78E2CCC(0x38uLL, v5);

  *a2 = v6;
  return result;
}

uint64_t Curve448.KeyAgreement.PrivateKey.rawRepresentation.getter()
{
  v1 = sub_1A793D6F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;
  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *v5 = sub_1A78DA2BC;
  v5[1] = v8;
  (*(v2 + 104))(v5, *MEMORY[0x1E6969028], v1);

  return sub_1A78DA2C4(v6 + 32, v7, v5);
}