uint64_t sub_1A790AF54(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = *a1;
  if (result)
  {
    return sub_1A790AF98(result, a3, a2, a4, a5, a6, &v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A790AF98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  result = cckem_xwing_mlkem768x25519();
  if (result)
  {
    v12 = cckem_pub_ctx_init();
    MEMORY[0x1EEE9AC00](v12);
    result = sub_1A793D6A8();
    if (v7)
    {
      *a7 = v7;
    }

    else
    {
      *a3 = a4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A790B080(uint64_t a1)
{
  result = cckem_xwing_mlkem768x25519();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = cckem_import_pubkey();
  if (result)
  {
    v3 = result;
    sub_1A78D6484();
    swift_allocError();
    *v4 = v3;
    *(v4 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A790B114()
{
  v4[3] = *MEMORY[0x1E69E9840];
  if (!cckem_xwing_mlkem768x25519())
  {
    __break(1u);
  }

  v0 = cckem_pubkey_nbytes_info();
  v4[0] = sub_1A78CC5A0(v0);
  v4[1] = v1;
  sub_1A78CC640(v4, 0);
  sub_1A790C51C(v4);
  result = v4[0];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1A790B1BC@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  result = cckem_xwing_mlkem768x25519();
  if (!result)
  {
    goto LABEL_13;
  }

  v6 = cckem_shared_key_nbytes_info();
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  result = off_1ED5F8A18;
  *&v13 = off_1ED5F8A18;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {

      sub_1A78E00C8(v6, 0);
      v7 = v13;
      goto LABEL_8;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_8:
  v14 = v7;
  result = cckem_xwing_mlkem768x25519();
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v8 = cckem_encapsulated_key_nbytes_info();
  *&v12 = sub_1A78CC5A0(v8);
  *(&v12 + 1) = v9;
  v10 = sub_1A78CC640(&v12, 0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v10);
  sub_1A7924E08(sub_1A790CB14);
  if (v2)
  {

    result = sub_1A78C0AFC(v13, *(&v13 + 1));
    *a1 = v2;
  }

  else
  {
    v11 = v13;
    *a2 = v14;
    *(a2 + 8) = v11;
    sub_1A78C0990(v11, *(&v11 + 1));
    return sub_1A78C0AFC(v11, *(&v11 + 1));
  }

  return result;
}

void sub_1A790B360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = cckem_encapsulate();
  if (v5)
  {
    v6 = v5;
    sub_1A78D6484();
    swift_allocError();
    *v7 = v6;
    *(v7 + 4) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1A790B3E8()
{
  v33 = *MEMORY[0x1E69E9840];
  if (!cckem_xwing_mlkem768x25519())
  {
    goto LABEL_16;
  }

  v0 = cckem_privkey_nbytes_info();
  v29[0] = sub_1A78CC5A0(v0);
  v29[1] = v1;
  sub_1A78CC640(v29, 0);
  *&v32[0] = v0;
  sub_1A791D4A8(v29);
  v2 = *v29;
  if (!cckem_xwing_mlkem768x25519())
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = cckem_sizeof_pub_ctx();
  if (v3 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  if (v3)
  {
    v5 = sub_1A793DB28();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v29[0] = v4;
  if (!cckem_public_ctx())
  {
    goto LABEL_18;
  }

  if (cckem_export_pubkey())
  {
    goto LABEL_14;
  }

  if (v4 < v29[0])
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v5 + 16) = v29[0];
  v29[0] = v5;
  if (!cckem_xwing_mlkem768x25519())
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  v6 = cckem_sizeof_pub_ctx();
  v26 = MEMORY[0x1EEE9AC00](v6);
  sub_1A78C0EA8(v26, sub_1A790CC74);

  v7 = sub_1A790B114();
  v9 = v8;

  v10 = ccsha3_256_di();
  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
  inited = swift_initStackObject();
  getDigestSizeForDigestInfo();
  v13 = swift_slowAlloc();
  ccdigest_init();
  *(inited + 16) = v11;
  *(inited + 24) = v13;
  v29[0] = inited;
  sub_1A78C0990(v7, v9);
  sub_1A791D828(v7, v9);
  sub_1A78C0AFC(v7, v9);
  sub_1A78BD4B0(v32);

  sub_1A78C0AFC(v7, v9);
  v30 = &type metadata for SHA3_256Digest;
  v31 = sub_1A790CAC0();
  v14 = swift_allocObject();
  v29[0] = v14;
  v15 = v32[1];
  *(v14 + 16) = v32[0];
  *(v14 + 32) = v15;
  v16 = __swift_project_boxed_opaque_existential_1(v29, &type metadata for SHA3_256Digest);
  v27 = *v16;
  v28 = v16[1];
  v17 = sub_1A793D698();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_1A793D638() | 0x4000000000000000;
  __swift_destroy_boxed_opaque_existential_1(v29);
  v32[0] = v2;
  v30 = MEMORY[0x1E6969080];
  v31 = MEMORY[0x1E6969078];
  v29[0] = 0x2000000000;
  v29[1] = v20;
  v21 = __swift_project_boxed_opaque_existential_1(v29, MEMORY[0x1E6969080]);
  v22 = *v21;
  v23 = v21[1];
  sub_1A78C0990(v2, *(&v2 + 1));

  sub_1A7900C14(v22, v23);

  sub_1A78C0AFC(v2, *(&v2 + 1));
  __swift_destroy_boxed_opaque_existential_1(v29);
  result = *&v32[0];
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A790B754(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = *a1;
  if (result)
  {
    return sub_1A790B79C(result, a3, a4, a2, a5, a6, a7, &v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A790B79C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v39[2] = *MEMORY[0x1E69E9840];
  v14 = sub_1A78C7370(a2, a6, *(*(*(*(a7 + 8) + 8) + 8) + 8));
  v16 = v14;
  v17 = v15;
  v18 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v18 != 2)
    {
      memset(v39, 0, 14);
      v19 = v39;
LABEL_25:
      sub_1A790BA0C(v39, v19, a1, a3);
      v33 = v8;
      result = sub_1A78C0AFC(v16, v17);
      if (v8)
      {
        goto LABEL_26;
      }

LABEL_28:
      *a4 = a5;
      goto LABEL_29;
    }

    v36 = a4;
    v37 = a5;
    v38 = a8;
    v21 = *(v14 + 16);
    v20 = *(v14 + 24);
    v22 = sub_1A793D648();
    if (v22)
    {
      v23 = sub_1A793D678();
      if (__OFSUB__(v21, v23))
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v22 += v21 - v23;
    }

    v24 = __OFSUB__(v20, v21);
    v25 = v20 - v21;
    if (!v24)
    {
      v26 = sub_1A793D668();
      if (v26 >= v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = v26;
      }

      goto LABEL_19;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v18)
  {
    v39[0] = v14;
    LOWORD(v39[1]) = v15;
    BYTE2(v39[1]) = BYTE2(v15);
    BYTE3(v39[1]) = BYTE3(v15);
    BYTE4(v39[1]) = BYTE4(v15);
    BYTE5(v39[1]) = BYTE5(v15);
    v19 = v39 + BYTE6(v15);
    goto LABEL_25;
  }

  v36 = a4;
  v37 = a5;
  v28 = (v14 >> 32) - v14;
  if (v14 >> 32 < v14)
  {
    __break(1u);
    goto LABEL_31;
  }

  v38 = a8;
  v22 = sub_1A793D648();
  if (!v22)
  {
    goto LABEL_16;
  }

  v29 = sub_1A793D678();
  if (__OFSUB__(v16, v29))
  {
LABEL_33:
    __break(1u);
  }

  v22 += v16 - v29;
LABEL_16:
  v30 = sub_1A793D668();
  if (v30 >= v28)
  {
    v27 = (v16 >> 32) - v16;
  }

  else
  {
    v27 = v30;
  }

LABEL_19:
  v31 = v27 + v22;
  if (v22)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  sub_1A790BA0C(v22, v32, a1, a3);
  v33 = v8;
  result = sub_1A78C0AFC(v16, v17);
  if (!v8)
  {
    a4 = v36;
    a5 = v37;
    goto LABEL_28;
  }

  a8 = v38;
LABEL_26:
  *a8 = v33;
LABEL_29:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A790BA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!cckem_xwing_mlkem768x25519())
  {
LABEL_44:
    __break(1u);
  }

  v7 = cckem_privkey_nbytes_info();
  if (!a1)
  {
    if (!v7)
    {
      result = cckem_xwing_mlkem768x25519();
      if (result)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_8:
    sub_1A78D6484();
    swift_allocError();
    *v12 = 1;
    *(v12 + 4) = 1;
    goto LABEL_9;
  }

  if (v7 != a2 - a1)
  {
    goto LABEL_8;
  }

  result = cckem_xwing_mlkem768x25519();
  if (!result)
  {
    goto LABEL_46;
  }

  v9 = cckem_import_privkey();
  if (v9)
  {
    v10 = v9;
    sub_1A78D6484();
    swift_allocError();
    *v11 = v10;
    *(v11 + 4) = 0;
LABEL_9:
    result = swift_willThrow();
LABEL_10:
    v13 = *MEMORY[0x1E69E9840];
    return result;
  }

  result = cckem_public_ctx();
  if (!result)
  {
    goto LABEL_48;
  }

  result = cckem_xwing_mlkem768x25519();
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v14 = cckem_pubkey_nbytes_info();
  *&v47 = sub_1A78CC5A0(v14);
  *(&v47 + 1) = v15;
  sub_1A78CC640(&v47, 0);
  v50 = v47;
  v45[5] = v14;
  sub_1A790C51C(&v50);
  v16 = v50;
  if (*(a4 + 32))
  {
    goto LABEL_38;
  }

  *(&v48 + 1) = MEMORY[0x1E6969080];
  v49 = MEMORY[0x1E6969078];
  v47 = v50;
  v17 = __swift_project_boxed_opaque_existential_1(&v47, MEMORY[0x1E6969080]);
  v18 = *v17;
  v19 = v17[1];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2)
    {
      *(v44 + 6) = 0;
      *&v44[0] = 0;
      sub_1A78C0990(v16, *(&v16 + 1));
      v21 = v44;
      v22 = v44;
      goto LABEL_36;
    }

    v23 = *(v18 + 16);
    v24 = *(v18 + 24);
    sub_1A78C0990(v16, *(&v16 + 1));
    v25 = sub_1A793D648();
    if (v25)
    {
      v26 = sub_1A793D678();
      v18 = v23 - v26;
      if (__OFSUB__(v23, v26))
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v25 += v18;
    }

    v27 = __OFSUB__(v24, v23);
    v28 = v24 - v23;
    if (!v27)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v20)
  {
    *&v44[0] = *v17;
    WORD4(v44[0]) = v19;
    BYTE10(v44[0]) = BYTE2(v19);
    BYTE11(v44[0]) = BYTE3(v19);
    BYTE12(v44[0]) = BYTE4(v19);
    BYTE13(v44[0]) = BYTE5(v19);
    sub_1A78C0990(v16, *(&v16 + 1));
    v21 = v44;
    v22 = v44 + BYTE6(v19);
    goto LABEL_36;
  }

  v29 = v18;
  v30 = v18 >> 32;
  v28 = v30 - v29;
  if (v30 < v29)
  {
    __break(1u);
    goto LABEL_42;
  }

  sub_1A78C0990(v16, *(&v16 + 1));
  v25 = sub_1A793D648();
  if (v25)
  {
    v31 = sub_1A793D678();
    if (!__OFSUB__(v29, v31))
    {
      v25 += v29 - v31;
      goto LABEL_28;
    }

    goto LABEL_43;
  }

LABEL_28:
  v32 = sub_1A793D668();
  if (v32 >= v28)
  {
    v33 = v28;
  }

  else
  {
    v33 = v32;
  }

  v34 = (v33 + v25);
  if (v25)
  {
    v22 = v34;
  }

  else
  {
    v22 = 0;
  }

  v21 = v25;
LABEL_36:
  sub_1A78C2D58(v21, v22, v46);
  v35 = v46[0];
  __swift_destroy_boxed_opaque_existential_1(&v47);
  result = ccsha3_256_di();
  if (result)
  {
    v36 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v38 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v36;
    *(inited + 24) = v38;
    *&v46[0] = inited;
    sub_1A78C0990(v35, *(&v35 + 1));
    sub_1A791D828(v35, *(&v35 + 1));
    sub_1A78C0AFC(v35, *(&v35 + 1));
    sub_1A78BD4B0(&v47);

    sub_1A78C0AFC(v35, *(&v35 + 1));
    v39 = *(a4 + 16);
    v46[0] = *a4;
    v46[1] = v39;
    v44[0] = v47;
    v44[1] = v48;
    sub_1A78CBAB0(v44, v45, v46, &v47, &v43);
    if (!v43)
    {
      sub_1A790CA04();
      swift_allocError();
      *v42 = 0;
      swift_willThrow();
      v41 = *(&v50 + 1);
      v40 = v50;
      goto LABEL_40;
    }

LABEL_38:
    v41 = *(&v16 + 1);
    v40 = v16;
LABEL_40:
    result = sub_1A78C0AFC(v40, v41);
    goto LABEL_10;
  }

LABEL_50:
  __break(1u);
  return result;
}

void *sub_1A790BEA8(void *result, uint64_t a2, void *a3)
{
  if (*result)
  {
    result = cckem_xwing_mlkem768x25519();
    if (result)
    {
      cckem_full_ctx_init();
      v4 = a3[4];
      v5 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
      MEMORY[0x1EEE9AC00](v5);
      return (*(v4 + 8))(sub_1A790CA78);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1A790BF88@<X0>(void *result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, void *a4@<X8>)
{
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = cckem_xwing_mlkem768x25519();
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v9 = cckem_shared_key_nbytes_info();
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  result = off_1ED5F8A18;
  v11 = off_1ED5F8A18;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {

      sub_1A78E00C8(v9, 0);
      v10 = v11;
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_9:
  v12 = v10;
  sub_1A78C0990(a2, a3);
  sub_1A78E0E20(&v12, a2, a3, v7);
  result = v12;
  if (v4)
  {
  }

  *a4 = v12;
  return result;
}

uint64_t sub_1A790C0A0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = result;
  v25 = *MEMORY[0x1E69E9840];
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      if (result)
      {
        goto LABEL_25;
      }

      goto LABEL_33;
    }

    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    v10 = sub_1A793D648();
    if (v10)
    {
      v11 = sub_1A793D678();
      if (__OFSUB__(v9, v11))
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v10 += v9 - v11;
    }

    v12 = __OFSUB__(v8, v9);
    v13 = v8 - v9;
    if (!v12)
    {
      v14 = sub_1A793D668();
      if (v14 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

LABEL_20:
      v20 = v15 + v10;
      if (v10)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      result = sub_1A790C2F4(v10, v21, a5, v6);
      goto LABEL_27;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v7)
  {
    v16 = a3;
    v17 = (a3 >> 32) - a3;
    if (a3 >> 32 >= a3)
    {
      v10 = sub_1A793D648();
      if (!v10)
      {
        goto LABEL_17;
      }

      v18 = sub_1A793D678();
      if (!__OFSUB__(v16, v18))
      {
        v10 += v16 - v18;
LABEL_17:
        v19 = sub_1A793D668();
        if (v19 >= v17)
        {
          v15 = v17;
        }

        else
        {
          v15 = v19;
        }

        goto LABEL_20;
      }

LABEL_31:
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  if (result)
  {
LABEL_25:
    result = cckem_decapsulate();
    if (result)
    {
      v22 = result;
      sub_1A78D6484();
      swift_allocError();
      *v23 = v22;
      *(v23 + 4) = 0;
      result = swift_willThrow();
    }

LABEL_27:
    v24 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1A790C2F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a4)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = cckem_decapsulate();
  if (result)
  {
    v4 = result;
    sub_1A78D6484();
    swift_allocError();
    *v5 = v4;
    *(v5 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A790C380@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_14;
  }

  if (!cckem_xwing_mlkem768x25519())
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v4 = cckem_sizeof_pub_ctx();
  if (v4 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  if (v4)
  {
    v6 = sub_1A793DB28();
    *(v6 + 16) = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if (!cckem_public_ctx())
  {
    goto LABEL_16;
  }

  if (cckem_export_pubkey())
  {
    goto LABEL_13;
  }

  *(v6 + 16) = v5;
  if (!cckem_xwing_mlkem768x25519())
  {
    goto LABEL_17;
  }

  v7 = cckem_sizeof_pub_ctx();
  v12 = MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1A78C0EA8(v12, sub_1A790CA58);
  if (v2)
  {

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v9 = v8;

    *a2 = v9;
    v11 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t sub_1A790C51C(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v6)
    {
      sub_1A78C0AFC(v5, v4);
      LOWORD(v19) = v4;
      BYTE2(v19) = BYTE2(v4);
      HIBYTE(v19) = BYTE3(v4);
      LOBYTE(v20) = BYTE4(v4);
      HIBYTE(v20) = BYTE5(v4);
      result = cckem_export_pubkey();
      if (!result)
      {
        *a1 = v5;
        a1[1] = v19 | ((v20 | (BYTE6(v4) << 16)) << 32);
LABEL_24:
        v18 = *MEMORY[0x1E69E9840];
        return result;
      }

      __break(1u);
      goto LABEL_26;
    }

    v12 = v4 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1A78C0AFC(v5, v4);
    *a1 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    v2 = v5;
    v1 = v5 >> 32;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_18:
      if (v1 < v2)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      result = sub_1A793D648();
      if (result)
      {
        if (__OFSUB__(v2, sub_1A793D678()))
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        sub_1A793D668();
        v17 = cckem_export_pubkey();

        if (v17)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v11 = v12 | 0x4000000000000000;
        *a1 = v5;
        goto LABEL_23;
      }

      goto LABEL_34;
    }

    if (v1 < v5)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (sub_1A793D648() && __OFSUB__(v5, sub_1A793D678()))
    {
LABEL_32:
      __break(1u);
    }

LABEL_17:
    v13 = sub_1A793D698();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_1A793D628();

    v12 = v16;
    goto LABEL_18;
  }

  if (v6 != 2)
  {
    result = cckem_export_pubkey();
    if (!result)
    {
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_17;
  }

  v8 = *a1;

  sub_1A78C0AFC(v5, v4);
  *a1 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  sub_1A793D6D8();
  v9 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  v10 = *(v5 + 16);
  result = sub_1A793D648();
  if (result)
  {
    if (__OFSUB__(v10, sub_1A793D678()))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_1A793D668();
    result = cckem_export_pubkey();
    if (result)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v11 = v9 | 0x8000000000000000;
    *a1 = v5;
LABEL_23:
    a1[1] = v11;
    goto LABEL_24;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1A790C89C()
{
  result = cckem_xwing_mlkem768x25519();
  if (result)
  {
    v1 = cckem_sizeof_pub_ctx();
    v2 = MEMORY[0x1EEE9AC00](v1);
    return sub_1A78C0EA8(v2, sub_1A790CC38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A790C928(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 32);
  result = cckem_xwing_mlkem768x25519();
  if (result)
  {
    v3 = cckem_sizeof_full_ctx();
    v4 = MEMORY[0x1EEE9AC00](v3);
    return sub_1A78C05E8(v4, sub_1A790C9E0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A790CA04()
{
  result = qword_1EB2A7650;
  if (!qword_1EB2A7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7650);
  }

  return result;
}

uint64_t sub_1A790CA78()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  result = cckem_generate_key();
  if (result)
  {
    __break(1u);
  }

  else
  {
    *v2 = v3;
  }

  return result;
}

unint64_t sub_1A790CAC0()
{
  result = qword_1ED5F8998;
  if (!qword_1ED5F8998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8998);
  }

  return result;
}

uint64_t sub_1A790CB14()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  return sub_1A78C9770(sub_1A790CB68);
}

uint64_t sub_1A790CB68(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v5[3];
  v10 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v9);
  v12[2] = v6;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = v7;
  v12[6] = v8;
  return (*(v10 + 8))(sub_1A790CC14, v12, v9, v10);
}

uint64_t sub_1A790CC8C(int a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a1;
  result = (*(a3 + 40))(&v5, &v6, a2);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A790CD00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v7 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v7)
    {
      v25[0] = a3;
      LOWORD(v25[1]) = a4;
      BYTE2(v25[1]) = BYTE2(a4);
      BYTE3(v25[1]) = BYTE3(a4);
      BYTE4(v25[1]) = BYTE4(a4);
      BYTE5(v25[1]) = BYTE5(a4);
      v8 = v25 + BYTE6(a4);
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if (v7 != 2)
  {
    memset(v25, 0, 14);
    v8 = v25;
LABEL_24:
    sub_1A78CBAB0(v25, v8, a1, a2, &v24);
    if (!v4)
    {
      result = v24;
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  v9 = v4;
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  v12 = sub_1A793D648();
  if (v12)
  {
    v13 = sub_1A793D678();
    if (__OFSUB__(v10, v13))
    {
      goto LABEL_28;
    }

    v12 += v10 - v13;
  }

  v14 = __OFSUB__(v11, v10);
  v15 = v11 - v10;
  if (v14)
  {
    __break(1u);
LABEL_11:
    v16 = a3;
    v15 = (a3 >> 32) - a3;
    if (a3 >> 32 >= a3)
    {
      v9 = v4;
      v12 = sub_1A793D648();
      if (!v12)
      {
        goto LABEL_15;
      }

      v17 = sub_1A793D678();
      if (!__OFSUB__(v16, v17))
      {
        v12 += v16 - v17;
        goto LABEL_15;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_15:
  v18 = sub_1A793D668();
  if (v18 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v18;
  }

  v20 = v19 + v12;
  if (v12)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v4 = v9;
  sub_1A78CBAB0(v12, v21, a1, a2, v25);
  if (!v9)
  {
    result = LOBYTE(v25[0]);
LABEL_26:
    v23 = *MEMORY[0x1E69E9840];
    return result;
  }

LABEL_30:
  result = MEMORY[0x1AC55E410](v4);
  __break(1u);
  return result;
}

uint64_t SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X4>, char *a5@<X5>, uint64_t a6@<X6>, char *a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v20 = *v10;

  static HKDF.deriveKey<A, B>(inputKeyMaterial:salt:info:outputByteCount:)(&v20, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t SharedSecret.init<A>(withExternalSS:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1A78C2B3C();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t SharedSecret.x963DerivedSymmetricKey<A, B>(using:sharedInfo:outputByteCount:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v15 = *v7;
  swift_beginAccess();
  return sub_1A790D0BC(v15 + 32, v15 + 32 + *(v15 + 16), a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1A790D0BC@<X0>(size_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1A78C2BF8(a1, a2, &v17);
  static ANSIKDFx963.deriveKey<A>(inputKeyMaterial:info:outputByteCount:)(&v17, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t SharedSecret.hash(into:)()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  return sub_1A793DF68();
}

uint64_t SharedSecret.hashValue.getter()
{
  v1 = *v0;
  sub_1A793DF58();
  swift_beginAccess();
  v2 = *(v1 + 16);
  sub_1A793DF68();
  return sub_1A793DFA8();
}

uint64_t sub_1A790D208()
{
  v1 = *v0;
  sub_1A793DF58();
  swift_beginAccess();
  v2 = *(v1 + 16);
  sub_1A793DF68();
  return sub_1A793DFA8();
}

uint64_t sub_1A790D26C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  return sub_1A793DF68();
}

uint64_t sub_1A790D2C0()
{
  v1 = *v0;
  sub_1A793DF58();
  swift_beginAccess();
  v2 = *(v1 + 16);
  sub_1A793DF68();
  return sub_1A793DFA8();
}

uint64_t static SharedSecret.== infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1A793DC78();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v36 = v35 - v12;
  v13 = swift_checkMetadataState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v35 - v19;
  v21 = *a1;
  v22 = a2;
  sub_1A793D5A8();
  v35[1] = v8;
  v23 = sub_1A793DB98();
  v24 = *(v14 + 8);
  v24(v20, v13);
  if (v23 != 1)
  {
    v32 = sub_1A78C7370(v22, a3, *(*(*(*(a4 + 8) + 8) + 8) + 8));
    v34 = v33;
    swift_beginAccess();
    v31 = sub_1A790CD00(v21 + 32, v21 + 32 + *(v21 + 16), v32, v34);
    sub_1A78C0AFC(v32, v34);
    return v31 & 1;
  }

  v38[0] = v21;
  sub_1A793D5A8();
  v25 = v36;
  sub_1A793DBC8();
  v24(v18, v13);
  v26 = AssociatedTypeWitness;
  v27 = *(AssociatedTypeWitness - 8);
  result = (*(v27 + 48))(v25, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    v29 = sub_1A78F2924();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v31 = sub_1A78CB9C8(v38, v25, &type metadata for SharedSecret, v26, v29, AssociatedConformanceWitness);
    (*(v27 + 8))(v25, v26);
    return v31 & 1;
  }

  __break(1u);
  return result;
}

uint64_t SharedSecret.description.getter()
{
  v1 = *v0;
  strcpy(v13, "SharedSecret: ");
  HIBYTE(v13[1]) = -18;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
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

  if (v4)
  {
    v5 = sub_1A793DB28();
    *(v5 + 16) = v4;
    bzero((v5 + 32), v4);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v11 = 0;
  v12 = v5;

  sub_1A78DD080(v6, &v12, &v11);

  v7 = *(v12 + 16);
  v8 = sub_1A793D998();
  v10 = v9;

  MEMORY[0x1AC55D280](v8, v10);

  return v13[0];
}

unint64_t sub_1A790D7A0()
{
  result = qword_1EB2A7658;
  if (!qword_1EB2A7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7658);
  }

  return result;
}

uint64_t sub_1A790D928@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = a1();
  if (result)
  {
    v8 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = swift_allocObject();
    getDigestSizeForDigestInfo();
    v10 = swift_slowAlloc();
    result = ccdigest_init();
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    *a4 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A790D9DC()
{
  result = qword_1EB2A7660;
  if (!qword_1EB2A7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7660);
  }

  return result;
}

unint64_t sub_1A790DA30(uint64_t a1)
{
  result = sub_1A790DA58();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A790DA58()
{
  result = qword_1ED5F88D8;
  if (!qword_1ED5F88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F88D8);
  }

  return result;
}

unint64_t sub_1A790DAB0()
{
  result = qword_1EB2A7668;
  if (!qword_1EB2A7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7668);
  }

  return result;
}

unint64_t sub_1A790DB08()
{
  result = qword_1EB2A7670;
  if (!qword_1EB2A7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7670);
  }

  return result;
}

unint64_t sub_1A790DB60()
{
  result = qword_1EB2A7678;
  if (!qword_1EB2A7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7678);
  }

  return result;
}

uint64_t sub_1A790DBC4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Curve25519.KeyAgreement.PublicKey.init<A>(_:kem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v11 == 3)
  {
    v12 = v8;
    (*(v6 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
    Curve25519.KeyAgreement.PublicKey.init<A>(rawRepresentation:)(v10, a3, &v16);
    result = (*(v6 + 8))(a1, a3);
    if (!v3)
    {
      *v12 = v16;
    }
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    return (*(v6 + 8))(a1, a3);
  }

  return result;
}

uint64_t Curve25519.KeyAgreement.PublicKey.hpkeRepresentation(kem:)(_BYTE *a1)
{
  if (*a1 == 3)
  {
    v2 = *v1;
    v3 = sub_1A793DB18();
    v4 = sub_1A78C0DCC(v3);

    return v4;
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v6 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1A790DE50(_BYTE *a1)
{
  if (*a1 == 3)
  {
    v2 = *v1;
    v3 = sub_1A793DB18();
    v4 = sub_1A78C0DCC(v3);

    return v4;
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v6 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1A790DF48(uint64_t (*a1)(void))
{
  result = a1();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A790DF84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A790DFBC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A790E010()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_1A790E064(void **a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  result = *a1;
  if (result)
  {
    return sub_1A790E0AC(result, a3, a2, a4, a5, a6, a7, a8, &v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A790E0AC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v48 = a2;
  v42 = a3;
  v43 = a4;
  v50 = a1;
  swift_getAssociatedTypeWitness();
  v54 = a6;
  v49 = *(swift_getAssociatedConformanceWitness() + 8);
  v13 = *(v49 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1A793DC78();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v44 = &v42 - v17;
  v18 = swift_checkMetadataState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v42 - v24;
  v26 = a7[1];
  v45 = a5;
  v46 = a7;
  result = v26(a5, a7);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  ccmldsa_pub_ctx_init();
  v28 = v48;
  v29 = a8;
  sub_1A793D5A8();
  v30 = sub_1A793DB98();
  v31 = *(v19 + 8);
  v31(v25, v18);
  if (v30 == 1)
  {
    sub_1A793D5A8();
    v32 = v44;
    sub_1A793DBC8();
    v31(v23, v18);
    v33 = *(AssociatedTypeWitness - 8);
    result = (*(v33 + 48))(v32, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      v52 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
      (*(v33 + 32))(boxed_opaque_existential_1, v32, AssociatedTypeWitness);
      v35 = v52;
      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v36 = sub_1A78C7370(v28, v54, *(*(*(v29[1] + 8) + 8) + 8));
  v35 = MEMORY[0x1E6969080];
  v52 = MEMORY[0x1E6969080];
  AssociatedConformanceWitness = MEMORY[0x1E6969078];
  v51[0] = v36;
  v51[1] = v37;
LABEL_6:
  v38 = v50;
  v39 = __swift_project_boxed_opaque_existential_1(v51, v35);
  MEMORY[0x1EEE9AC00](v39);
  v40 = v54;
  *(&v42 - 6) = v45;
  *(&v42 - 5) = v40;
  v41 = v47;
  *(&v42 - 4) = v46;
  *(&v42 - 3) = v29;
  *(&v42 - 2) = v38;
  sub_1A793D6A8();
  if (v41)
  {
    result = __swift_destroy_boxed_opaque_existential_1(v51);
    *a9 = v41;
  }

  else
  {
    *v42 = v43;
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  return result;
}

uint64_t sub_1A790E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = (*(a6 + 8))(a4, a6);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = ccmldsa_import_pubkey();
  if (result)
  {
    v8 = result;
    sub_1A78D6484();
    swift_allocError();
    *v9 = v8;
    *(v9 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A790E570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  sub_1A790E620(a3 + 32, a1, a2, a5, a6, a8, &v16, a9);
  return v16;
}

uint64_t sub_1A790E620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v68 = a7;
  v73 = a3;
  v82 = a2;
  v67 = a1;
  swift_getAssociatedTypeWitness();
  v74 = a8;
  v75 = a5;
  v72 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = *(v72 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1A793DC78();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v62 = &v60 - v14;
  v15 = swift_checkMetadataState();
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = *(v70 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v61 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v60 - v19;
  v20 = a6;
  swift_getAssociatedTypeWitness();
  v21 = *(swift_getAssociatedConformanceWitness() + 8);
  v22 = *(v21 + 8);
  v66 = swift_getAssociatedTypeWitness();
  v23 = sub_1A793DC78();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v65 = &v60 - v25;
  v26 = swift_checkMetadataState();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v60 - v32;
  v34 = v82;
  sub_1A793D5A8();
  v64 = v21;
  v35 = sub_1A793DB98();
  v36 = *(v27 + 8);
  v36(v33, v26);
  if (v35 == 1)
  {
    sub_1A793D5A8();
    v37 = v65;
    sub_1A793DBC8();
    v36(v31, v26);
    v38 = v66;
    v39 = *(v66 - 8);
    result = (*(v39 + 48))(v37, 1, v66);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_11;
    }

    v80 = v38;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v79);
    (*(v39 + 32))(boxed_opaque_existential_1, v37, v38);
  }

  else
  {
    v42 = sub_1A78C7370(v34, a4, *(*(*(*(v20 + 8) + 8) + 8) + 8));
    v80 = MEMORY[0x1E6969080];
    AssociatedConformanceWitness = MEMORY[0x1E6969078];
    v79[0] = v42;
    v79[1] = v43;
  }

  v45 = v74;
  v44 = v75;
  v46 = v73;
  v48 = v69;
  v47 = v70;
  sub_1A793D5A8();
  v49 = v71;
  v50 = sub_1A793DB98();
  v51 = *(v47 + 8);
  v51(v48, v49);
  if (v50 != 1)
  {
    v57 = sub_1A78C7370(v46, v44, *(*(*(*(v45 + 8) + 8) + 8) + 8));
    v77 = MEMORY[0x1E6969080];
    v78 = MEMORY[0x1E6969078];
    v76[0] = v57;
    v76[1] = v58;
    goto LABEL_9;
  }

  v52 = v61;
  sub_1A793D5A8();
  v53 = v62;
  sub_1A793DBC8();
  v51(v52, v49);
  v54 = AssociatedTypeWitness;
  v55 = *(AssociatedTypeWitness - 8);
  result = (*(v55 + 48))(v53, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    v77 = v54;
    v78 = swift_getAssociatedConformanceWitness();
    v56 = __swift_allocate_boxed_opaque_existential_1(v76);
    (*(v55 + 32))(v56, v53, v54);
LABEL_9:
    v59 = __swift_project_boxed_opaque_existential_1(v79, v80);
    MEMORY[0x1EEE9AC00](v59);
    *(&v60 - 2) = v76;
    *(&v60 - 1) = v67;
    sub_1A793D6A8();
    __swift_destroy_boxed_opaque_existential_1(v76);
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1A790ECC4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  return sub_1A793D6A8();
}

uint64_t sub_1A790ED68@<X0>(uint64_t result@<X0>, uint64_t a2@<X3>, BOOL *a3@<X8>)
{
  if (a2)
  {
    if (result)
    {
      result = ccmldsa_verify();
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

uint64_t sub_1A790EDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  swift_beginAccess();
  sub_1A790EE90((a4 + 32), a1, a2, a3, a6, a7, a8, &v20, a9, a10, a11, a12);
  return v20;
}

uint64_t sub_1A790EE90@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v100 = a4;
  v106 = a3;
  v109 = a2;
  v94 = a1;
  v95 = a8;
  swift_getAssociatedTypeWitness();
  v101 = a12;
  v119 = a7;
  v99 = *(swift_getAssociatedConformanceWitness() + 8);
  v15 = *(v99 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1A793DC78();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v86 = &v85 - v18;
  v98 = swift_checkMetadataState();
  v97 = *(v98 - 8);
  v19 = *(v97 + 64);
  v20 = MEMORY[0x1EEE9AC00](v98);
  v85 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v85 - v22;
  swift_getAssociatedTypeWitness();
  v107 = a11;
  v108 = a6;
  v105 = *(swift_getAssociatedConformanceWitness() + 8);
  v23 = *(v105 + 8);
  v90 = swift_getAssociatedTypeWitness();
  v24 = sub_1A793DC78();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v89 = &v85 - v26;
  v104 = swift_checkMetadataState();
  v103 = *(v104 - 8);
  v27 = *(v103 + 64);
  v28 = MEMORY[0x1EEE9AC00](v104);
  v88 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v102 = &v85 - v30;
  v31 = a5;
  swift_getAssociatedTypeWitness();
  v32 = *(swift_getAssociatedConformanceWitness() + 8);
  v33 = *(v32 + 8);
  v93 = swift_getAssociatedTypeWitness();
  v34 = sub_1A793DC78();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v92 = &v85 - v36;
  v37 = swift_checkMetadataState();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v85 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v85 - v43;
  v45 = v109;
  sub_1A793D5A8();
  v91 = v32;
  v46 = sub_1A793DB98();
  v47 = *(v38 + 8);
  v47(v44, v37);
  if (v46 == 1)
  {
    sub_1A793D5A8();
    v48 = v92;
    sub_1A793DBC8();
    v47(v42, v37);
    v49 = v93;
    v50 = *(v93 - 8);
    result = (*(v50 + 48))(v48, 1, v93);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_15;
    }

    v117 = v49;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v116);
    (*(v50 + 32))(boxed_opaque_existential_1, v48, v49);
  }

  else
  {
    v53 = sub_1A78C7370(v45, v31, *(*(*(*(a10 + 8) + 8) + 8) + 8));
    v117 = MEMORY[0x1E6969080];
    AssociatedConformanceWitness = MEMORY[0x1E6969078];
    v116[0] = v53;
    v116[1] = v54;
  }

  v56 = v107;
  v55 = v108;
  v57 = v106;
  v58 = v104;
  v59 = v103;
  v60 = v102;
  sub_1A793D5A8();
  v61 = sub_1A793DB98();
  v62 = *(v59 + 8);
  v62(v60, v58);
  v63 = v119;
  if (v61 != 1)
  {
    v70 = sub_1A78C7370(v57, v55, *(*(*(*(v56 + 8) + 8) + 8) + 8));
    v114 = MEMORY[0x1E6969080];
    v115 = MEMORY[0x1E6969078];
    v113[0] = v70;
    v113[1] = v71;
    v69 = v101;
    goto LABEL_9;
  }

  v64 = v88;
  sub_1A793D5A8();
  v65 = v89;
  sub_1A793DBC8();
  v62(v64, v58);
  v66 = v90;
  v67 = *(v90 - 8);
  result = (*(v67 + 48))(v65, 1, v90);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v114 = v66;
  v115 = swift_getAssociatedConformanceWitness();
  v68 = __swift_allocate_boxed_opaque_existential_1(v113);
  (*(v67 + 32))(v68, v65, v66);
  v69 = v101;
  v63 = v119;
LABEL_9:
  v72 = v100;
  v73 = v96;
  sub_1A793D5A8();
  v74 = v98;
  v75 = sub_1A793DB98();
  v76 = *(v97 + 8);
  v76(v73, v74);
  if (v75 != 1)
  {
    v82 = sub_1A78C7370(v72, v63, *(*(*(*(v69 + 8) + 8) + 8) + 8));
    v111 = MEMORY[0x1E6969080];
    v112 = MEMORY[0x1E6969078];
    v110[0] = v82;
    v110[1] = v83;
    goto LABEL_13;
  }

  v77 = v85;
  sub_1A793D5A8();
  v78 = v86;
  sub_1A793DBC8();
  v76(v77, v74);
  v79 = AssociatedTypeWitness;
  v80 = *(AssociatedTypeWitness - 8);
  result = (*(v80 + 48))(v78, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    v111 = v79;
    v112 = swift_getAssociatedConformanceWitness();
    v81 = __swift_allocate_boxed_opaque_existential_1(v110);
    (*(v80 + 32))(v81, v78, v79);
LABEL_13:
    v84 = __swift_project_boxed_opaque_existential_1(v116, v117);
    MEMORY[0x1EEE9AC00](v84);
    *(&v85 - 4) = v113;
    *(&v85 - 3) = v110;
    *(&v85 - 2) = v94;
    sub_1A793D6A8();
    __swift_destroy_boxed_opaque_existential_1(v110);
    __swift_destroy_boxed_opaque_existential_1(v113);
    return __swift_destroy_boxed_opaque_existential_1(v116);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1A790F8B4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  return sub_1A793D6A8();
}

uint64_t sub_1A790F95C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  return sub_1A793D6A8();
}

uint64_t sub_1A790FA14@<X0>(uint64_t result@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, BOOL *a4@<X8>)
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!a3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result)
  {
    result = ccmldsa_verify_with_context();
    *a4 = result == 0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1A790FA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1A790FC48(a1, a2, a3, a4, a5);
  if (!v5)
  {
    v9 = result;
    swift_beginAccess();
    v10 = v9 + 32 + *(v9 + 16);
    sub_1A791121C(v9 + 32, a2, a4, &v11);

    return v11;
  }

  return result;
}

uint64_t sub_1A790FB3C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a2;
  v15 = a3;
  sub_1A78C0990(a2, a3);
  v11 = sub_1A78CA3EC();
  v12 = sub_1A790FC48(&v14, a6, MEMORY[0x1E6969080], a8, v11);
  result = sub_1A78C0AFC(v14, v15);
  if (!v8)
  {
    v16 = v12;
    MEMORY[0x1EEE9AC00](result);
    sub_1A7924E08(sub_1A7911E48);

    return v14;
  }

  return result;
}

unint64_t sub_1A790FC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 + 8);
  result = v8(a2, a4);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = ccmldsa_seed_nbytes_params();
  v11 = *(*(*(a5 + 8) + 8) + 8);
  if (sub_1A793DB98() != v10)
  {
    goto LABEL_6;
  }

  result = v8(a2, a4);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v12 = ccmldsa_sizeof_full_ctx();
  v14 = MEMORY[0x1EEE9AC00](v12);
  result = sub_1A78C05E8(v14, sub_1A79118AC);
  if (!v15)
  {
    return result;
  }

  swift_unexpectedError();
  __break(1u);
LABEL_6:
  sub_1A78D6484();
  swift_allocError();
  *v13 = 1;
  *(v13 + 4) = 1;
  return swift_willThrow();
}

void *sub_1A790FDC0@<X0>(void *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (result)
  {
    return sub_1A790FE0C(result, a2, a3, a4, a5, a6, &v7, a7);
  }

  __break(1u);
  return result;
}

void *sub_1A790FE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v61 = a7;
  v62 = a1;
  v57 = a8;
  v13 = sub_1A793D6F8();
  v55 = *(v13 - 8);
  v56 = v13;
  v14 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v54 = (&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAssociatedTypeWitness();
  v65 = a6;
  v64 = *(swift_getAssociatedConformanceWitness() + 8);
  v16 = *(v64 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1A793DC78();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v59 = &v53 - v19;
  v20 = swift_checkMetadataState();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v53 - v26;
  result = (*(a5 + 8))(a3, a5);
  if (!result)
  {
    goto LABEL_16;
  }

  v29 = ccmldsa_signature_nbytes_params();
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  result = off_1ED5F8A18;
  v66[0] = off_1ED5F8A18;
  v58 = v25;
  if (v29)
  {
    if ((v29 & 0x8000000000000000) == 0)
    {

      sub_1A78E00C8(v29, 0);
      v30 = a2;
      v31 = v66[0];
      goto LABEL_8;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = a2;

LABEL_8:
  v69 = v31;
  v32 = v65;
  sub_1A793D5A8();
  v33 = sub_1A793DB98();
  v34 = v21 + 8;
  v35 = *(v21 + 8);
  v35(v27, v20);
  if (v33 == 1)
  {
    v36 = v58;
    v53 = v34;
    sub_1A793D5A8();
    v37 = v59;
    sub_1A793DBC8();
    v35(v36, v20);
    v38 = AssociatedTypeWitness;
    v39 = *(AssociatedTypeWitness - 8);
    result = (*(v39 + 48))(v37, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      v67 = v38;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
      v41 = (*(v39 + 32))(boxed_opaque_existential_1, v37, v38);
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  v41 = sub_1A78C7370(v30, a4, *(*(*(*(v32 + 8) + 8) + 8) + 8));
  v67 = MEMORY[0x1E6969080];
  AssociatedConformanceWitness = MEMORY[0x1E6969078];
  v66[0] = v41;
  v66[1] = v42;
LABEL_12:
  v43 = v63;
  MEMORY[0x1EEE9AC00](v41);
  *(&v53 - 2) = v66;
  *(&v53 - 1) = v62;
  sub_1A7924E08(sub_1A7911E6C);
  if (v43)
  {

    result = __swift_destroy_boxed_opaque_existential_1(v66);
    *v61 = v43;
  }

  else
  {
    v44 = v69;
    swift_beginAccess();
    v45 = *(v44 + 16);
    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    v48 = v54;
    v47 = v55;
    *v54 = sub_1A790AE6C;
    *(v48 + 8) = v46;
    (*(v47 + 104))(v48, *MEMORY[0x1E6969028], v56);

    v49 = sub_1A78DA2C4(v44 + 32, v45, v48);
    v51 = v50;

    v52 = v57;
    *v57 = v49;
    v52[1] = v51;
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  return result;
}

uint64_t sub_1A791038C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  return sub_1A793D6A8();
}

uint64_t sub_1A7910434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!a1)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (!ccrng())
  {
    goto LABEL_9;
  }

  result = ccmldsa_sign();
  if (result)
  {
    v5 = result;
    sub_1A78D6484();
    swift_allocError();
    *v6 = v5;
    *(v6 + 4) = 0;
    result = swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7910534(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = a3;
  v16 = a4;
  sub_1A78C0990(a3, a4);
  v12 = sub_1A78CA3EC();
  v13 = sub_1A790FC48(&v15, a7, MEMORY[0x1E6969080], a10, v12);
  result = sub_1A78C0AFC(v15, v16);
  if (!v10)
  {
    v17 = v13;
    MEMORY[0x1EEE9AC00](result);
    sub_1A7924E08(sub_1A7911DB0);

    return v15;
  }

  return result;
}

uint64_t (**sub_1A7910654@<X0>(uint64_t (**result)()@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t (**a7)(void)@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10))()
{
  if (result)
  {
    return sub_1A79106AC(result, a2, a3, a4, a5, a6, a7, a9, a8, a10, &v10);
  }

  __break(1u);
  return result;
}

void *sub_1A79106AC@<X0>(uint64_t (**a1)()@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)(void)@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, void *a11)
{
  v96 = a4;
  v97 = a7;
  v91 = a3;
  v95 = a2;
  v86 = a1;
  v80 = a9;
  v79 = sub_1A793D6F8();
  v78 = *(v79 - 8);
  v14 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v77 = (&v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAssociatedTypeWitness();
  v92 = a10;
  v93 = a6;
  v90 = *(swift_getAssociatedConformanceWitness() + 8);
  v16 = *(v90 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1A793DC78();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v83 = &v77 - v19;
  v89 = swift_checkMetadataState();
  v98 = *(v89 - 8);
  v20 = *(v98 + 64);
  v21 = MEMORY[0x1EEE9AC00](v89);
  v82 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v77 - v23;
  swift_getAssociatedTypeWitness();
  v94 = a8;
  v24 = a5;
  v25 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v26 = swift_getAssociatedTypeWitness();
  v27 = sub_1A793DC78();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v85 = &v77 - v29;
  v30 = swift_checkMetadataState();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = (&v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v77 - v36;
  result = v97[1]();
  if (!result)
  {
    goto LABEL_20;
  }

  v97 = v35;
  v39 = ccmldsa_signature_nbytes_params();
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  result = off_1ED5F8A18;
  v102[0] = off_1ED5F8A18;
  v40 = v95;
  v81 = v26;
  if (v39)
  {
    if ((v39 & 0x8000000000000000) == 0)
    {

      sub_1A78E00C8(v39, 0);
      v41 = v102[0];
      goto LABEL_8;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_8:
  v105 = v41;
  v42 = v40;
  v43 = v94;
  sub_1A793D5A8();
  v44 = sub_1A793DB98();
  v45 = *(v31 + 8);
  v45(v37, v30);
  if (v44 == 1)
  {
    v46 = v97;
    sub_1A793D5A8();
    v47 = v85;
    sub_1A793DBC8();
    v45(v46, v30);
    v48 = v81;
    v49 = *(v81 - 8);
    result = (*(v49 + 48))(v47, 1, v81);
    if (result != 1)
    {
      v103 = v48;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v102);
      (*(v49 + 32))(boxed_opaque_existential_1, v47, v48);
      goto LABEL_12;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v51 = sub_1A78C7370(v42, v24, *(*(*(*(v43 + 8) + 8) + 8) + 8));
  v103 = MEMORY[0x1E6969080];
  AssociatedConformanceWitness = MEMORY[0x1E6969078];
  v102[0] = v51;
  v102[1] = v52;
LABEL_12:
  v54 = v92;
  v53 = v93;
  v55 = v91;
  v56 = v89;
  v57 = v88;
  sub_1A793D5A8();
  v58 = sub_1A793DB98();
  v59 = v98 + 8;
  v60 = *(v98 + 8);
  v60(v57, v56);
  if (v58 == 1)
  {
    v61 = v82;
    v98 = v59;
    sub_1A793D5A8();
    v62 = v83;
    sub_1A793DBC8();
    v60(v61, v56);
    v63 = AssociatedTypeWitness;
    v64 = *(AssociatedTypeWitness - 8);
    result = (*(v64 + 48))(v62, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      v100 = v63;
      v101 = swift_getAssociatedConformanceWitness();
      v65 = __swift_allocate_boxed_opaque_existential_1(v99);
      v66 = (*(v64 + 32))(v65, v62, v63);
      goto LABEL_16;
    }

LABEL_22:
    __break(1u);
    return result;
  }

  v66 = sub_1A78C7370(v55, v53, *(*(*(*(v54 + 8) + 8) + 8) + 8));
  v100 = MEMORY[0x1E6969080];
  v101 = MEMORY[0x1E6969078];
  v99[0] = v66;
  v99[1] = v67;
LABEL_16:
  MEMORY[0x1EEE9AC00](v66);
  *(&v77 - 4) = v102;
  *(&v77 - 3) = v99;
  *(&v77 - 2) = v86;
  v68 = v87;
  sub_1A7924E08(sub_1A7911DE4);
  if (v68)
  {

    __swift_destroy_boxed_opaque_existential_1(v99);
    result = __swift_destroy_boxed_opaque_existential_1(v102);
    *a11 = v68;
  }

  else
  {
    v69 = v105;
    swift_beginAccess();
    v70 = *(v69 + 16);
    v71 = swift_allocObject();
    *(v71 + 16) = v69;
    v72 = v77;
    *v77 = sub_1A78DA2BC;
    *(v72 + 8) = v71;
    (*(v78 + 104))(v72, *MEMORY[0x1E6969028], v79);

    v73 = sub_1A78DA2C4(v69 + 32, v70, v72);
    v75 = v74;

    v76 = v80;
    *v80 = v73;
    v76[1] = v75;
    __swift_destroy_boxed_opaque_existential_1(v99);
    return __swift_destroy_boxed_opaque_existential_1(v102);
  }

  return result;
}

uint64_t sub_1A7910F94(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  return sub_1A793D6A8();
}

uint64_t sub_1A7911040(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  return sub_1A793D6A8();
}

uint64_t sub_1A79110FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!a6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (!ccrng())
  {
    goto LABEL_11;
  }

  result = ccmldsa_sign_with_context();
  if (result)
  {
    v7 = result;
    sub_1A78D6484();
    swift_allocError();
    *v8 = v7;
    *(v8 + 4) = 0;
    result = swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A791121C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  if (result)
  {
    return sub_1A7911264(a2, a3, &v4, a4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7911264@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X5>, uint64_t *a4@<X8>)
{
  result = (*(a2 + 8))(a1, a2);
  if (!result)
  {
    goto LABEL_11;
  }

  result = ccmldsa_pubkey_nbytes_params();
  if (result < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v7 = result;
  if (result)
  {
    v8 = sub_1A793DB28();
    *(v8 + 16) = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  result = ccmldsa_public_ctx();
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = ccmldsa_export_pubkey();
  if (v9)
  {
    v10 = v9;
    sub_1A78D6484();
    v11 = swift_allocError();
    *v12 = v10;
    *(v12 + 4) = 0;
    swift_willThrow();
    *(v8 + 16) = v7;

    *a3 = v11;
  }

  else
  {
    *(v8 + 16) = v7;
    v13 = sub_1A78C0DCC(v8);
    v15 = v14;

    *a4 = v13;
    a4[1] = v15;
  }

  return result;
}

char *sub_1A7911390(char **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *a1;
  if (result)
  {
    result = sub_1A79113F8(result, a3, a5, a6, a7, a8, &v12);
    if (!v8)
    {
      *a2 = a4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A79113F8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v37 = a7;
  v44 = a2;
  v40 = a1;
  swift_getAssociatedTypeWitness();
  v39 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = *(v39 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1A793DC78();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v36 = &v36 - v15;
  v16 = swift_checkMetadataState();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v36 - v22;
  result = (*(a5 + 8))(a3, a5);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  ccmldsa_full_ctx_init();
  sub_1A793D5A8();
  v25 = sub_1A793DB98();
  v26 = *(v17 + 8);
  v26(v23, v16);
  if (v25 == 1)
  {
    sub_1A793D5A8();
    v27 = v36;
    sub_1A793DBC8();
    v26(v21, v16);
    v28 = *(AssociatedTypeWitness - 8);
    result = (*(v28 + 48))(v27, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      v42 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
      (*(v28 + 32))(boxed_opaque_existential_1, v27, AssociatedTypeWitness);
      v30 = v42;
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v31 = sub_1A78C7370(v44, a4, *(*(*(*(a6 + 8) + 8) + 8) + 8));
  v30 = MEMORY[0x1E6969080];
  v42 = MEMORY[0x1E6969080];
  AssociatedConformanceWitness = MEMORY[0x1E6969078];
  v41[0] = v31;
  v41[1] = v32;
LABEL_6:
  v33 = v40;
  v34 = __swift_project_boxed_opaque_existential_1(v41, v30);
  MEMORY[0x1EEE9AC00](v34);
  *(&v36 - 2) = v33;
  v35 = v38;
  sub_1A793D6A8();
  result = __swift_destroy_boxed_opaque_existential_1(v41);
  if (v35)
  {
    *v37 = v35;
  }

  return result;
}

uint64_t sub_1A79117CC(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (!ccrng())
  {
    goto LABEL_7;
  }

  result = ccmldsa_derive_key_from_seed();
  if (result)
  {
    v2 = result;
    sub_1A78D6484();
    swift_allocError();
    *v3 = v2;
    *(v3 + 4) = 0;
    result = swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1A79118F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 8))(a2, a4);
  if (result)
  {
    v5 = ccmldsa_sizeof_pub_ctx();
    v6 = MEMORY[0x1EEE9AC00](v5);
    return sub_1A78C05E8(v6, sub_1A7911F48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A79119AC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v29 = *a2;
  v30 = a2[1];
  v10 = *(a2 + 32);
  v11 = sub_1A790FA90(a1, a3, a4, a5, a6);
  if (v6)
  {
LABEL_6:
    v27 = *MEMORY[0x1E69E9840];
    return v10;
  }

  v13 = v11;
  v14 = v12;
  result = ccsha3_256_di();
  if (result)
  {
    v16 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v18 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v16;
    *(inited + 24) = v18;
    *&v32 = inited;
    sub_1A78C0990(v13, v14);
    sub_1A791D828(v13, v14);
    sub_1A78C0AFC(v13, v14);
    sub_1A78BD4B0(&v35);

    v19 = v35;
    v20 = v36;
    if ((v10 & 1) != 0 || (v35 = v29, v36 = v30, v32 = v19, v33 = v20, sub_1A78CBAB0(&v32, &v34, &v35, v37, &v31), v31))
    {
      *(&v36 + 1) = &type metadata for SHA3_256Digest;
      v37[0] = sub_1A790CAC0();
      v21 = swift_allocObject();
      *&v35 = v21;
      *(v21 + 16) = v19;
      *(v21 + 32) = v20;
      v22 = __swift_project_boxed_opaque_existential_1(&v35, &type metadata for SHA3_256Digest);
      v23 = v22[1];
      v32 = *v22;
      v33 = v23;
      v24 = sub_1A793D698();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      sub_1A793D638();
      __swift_destroy_boxed_opaque_existential_1(&v35);
      v10 = sub_1A78C7370(a1, a4, *(*(*(*(a6 + 8) + 8) + 8) + 8));
      sub_1A78C0AFC(v13, v14);
    }

    else
    {
      sub_1A78D6484();
      swift_allocError();
      *v28 = 4;
      *(v28 + 4) = 1;
      swift_willThrow();
      sub_1A78C0AFC(v13, v14);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7911C54(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = 0uLL;
  v12 = a3 >> 60;
  if (a3 >> 60 == 15)
  {
    v13 = 0uLL;
  }

  else
  {
    v21 = a7;
    v22 = a1;
    result = ccsha3_256_di();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v17 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v19 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v17;
    *(inited + 24) = v19;
    v26 = inited;
    sub_1A78C0990(a2, a3);
    sub_1A791D828(a2, a3);
    sub_1A78CEEC8(a2, a3);
    sub_1A78BD4B0(&v23);

    v11 = v23;
    v13 = v24;
    a7 = v21;
    a1 = v22;
  }

  v23 = v11;
  v24 = v13;
  v25 = v12 > 0xE;
  result = sub_1A79119AC(a1, &v23, a4, a5, a6, a7);
  if (v7)
  {
    return v20;
  }

  return result;
}

uint64_t sub_1A7911DE4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_1A7910F94(a1, a2, *(v2 + 16));
}

uint64_t sub_1A7911E04(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  return sub_1A7911040(a1, a2, *(v2 + 16));
}

uint64_t sub_1A7911EA8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_1A790F8B4(a1, a2, *(v2 + 16));
}

uint64_t sub_1A7911EC8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  return sub_1A790F95C(a1, a2, *(v2 + 16));
}

uint64_t sub_1A7911EE8@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[6];
  return sub_1A790FA14(a1, v2[3], v2[5], a2);
}

uint64_t sub_1A7911F28@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_1A790ED68(a1, v2[3], a2);
}

uint64_t MessageAuthenticationCode.makeIterator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71E8, &qword_1A79404D0);
  sub_1A793D6A8();
  return v4;
}

uint64_t MessageAuthenticationCode.description.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A793DFB8();
  v24 = v9;
  MEMORY[0x1AC55D280](8250, 0xE200000000000000);
  (*(v5 + 16))(v8, v2, a1);
  v10 = *(a2 + 32);
  result = sub_1A793DB38();
  v12 = *(result + 16);
  if (v12 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = 2 * v12;
  if (2 * v12 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v14 = result;
  if (v12)
  {
    v15 = sub_1A793DB28();
    *(v15 + 16) = v13;
    bzero((v15 + 32), v13);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v21 = 0;
  v22 = v15;
  sub_1A793DB18();
  sub_1A78DD23C(v14, &v22, &v21);

  v16 = *(v22 + 16);
  v17 = sub_1A793D998();
  v19 = v18;

  MEMORY[0x1AC55D280](v17, v19);

  return v23;
}

char *sub_1A7912214@<X0>(char *result@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  if (!result || (v5 = result, v6 = a2 - result, a2 == result) || (v4 = sub_1A78BDC10(a2 - result, 0), result = sub_1A78E259C(v4 + 4, v6, v5, v6), v7 == v6))
  {
    *a3 = v4;
    a3[1] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CryptoKitError.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v2 = 4;
      }

      else if (v1 == 4)
      {
        v2 = 5;
      }

      else
      {
        v2 = 6;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1AC55D830](v2);
  }

  else
  {
    MEMORY[0x1AC55D830](3);
    return sub_1A793DF98();
  }
}

uint64_t CryptoKitError.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1A793DF58();
  if (v2 == 1)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v3 = 4;
      }

      else if (v1 == 4)
      {
        v3 = 5;
      }

      else
      {
        v3 = 6;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1AC55D830](v3);
  }

  else
  {
    MEMORY[0x1AC55D830](3);
    sub_1A793DF98();
  }

  return sub_1A793DFA8();
}

uint64_t sub_1A7912410()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v2 = 4;
      }

      else if (v1 == 4)
      {
        v2 = 5;
      }

      else
      {
        v2 = 6;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1AC55D830](v2);
  }

  else
  {
    MEMORY[0x1AC55D830](3);
    return sub_1A793DF98();
  }
}

uint64_t sub_1A79124AC()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1A793DF58();
  if (v2 == 1)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v3 = 4;
      }

      else if (v1 == 4)
      {
        v3 = 5;
      }

      else
      {
        v3 = 6;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1AC55D830](v3);
  }

  else
  {
    MEMORY[0x1AC55D830](3);
    sub_1A793DF98();
  }

  return sub_1A793DFA8();
}

uint64_t CryptoKitASN1Error.hashValue.getter()
{
  v1 = *v0;
  sub_1A793DF58();
  MEMORY[0x1AC55D830](v1);
  return sub_1A793DFA8();
}

uint64_t _s9CryptoKit0aB5ErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 != 1)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (v3 != 2)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 3)
  {
    if (v3 != 3)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v2 == 4)
  {
    if (v3 != 4)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v3 <= 4)
  {
    v4 = 0;
  }

  return (v4 & 1) != 0;
}

unint64_t sub_1A79126BC()
{
  result = qword_1EB2A7800;
  if (!qword_1EB2A7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7800);
  }

  return result;
}

unint64_t sub_1A7912714()
{
  result = qword_1EB2A7808;
  if (!qword_1EB2A7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7808);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CryptoKitError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CryptoKitError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1A79127C8(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A79127E4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptoKitASN1Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CryptoKitASN1Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RSAPSSSPKIErrors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RSAPSSSPKIErrors(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A7912AB8()
{
  result = qword_1EB2A7810;
  if (!qword_1EB2A7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7810);
  }

  return result;
}

uint64_t Curve25519.KeyAgreement.PrivateKey.init<A>(rawRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1A791F1D0();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

unint64_t sub_1A7912BB4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A78C6074(0x20uLL);
  *a1 = result;
  return result;
}

uint64_t Curve25519.KeyAgreement.PrivateKey.rawRepresentation.getter()
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

void *sub_1A7912D24@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1A78C65E0();
  *a1 = result;
  return result;
}

uint64_t sub_1A7912D50@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = *v2;

  sub_1A793DB18();
  v7 = sub_1A78CA924(0x20uLL, v6);

  if (!v3)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1A7912DF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1A79131DC(*a1, *(a1 + 8));

  v5 = (2 * *(v3 + 16)) | 1;
  *a2 = v3;
  a2[1] = v3 + 32;
  a2[2] = 0;
  a2[3] = v5;
  return result;
}

unint64_t sub_1A7912E58()
{
  result = qword_1EB2A7818;
  if (!qword_1EB2A7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7818);
  }

  return result;
}

unint64_t sub_1A7912EBC()
{
  result = qword_1EB2A7820;
  if (!qword_1EB2A7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7820);
  }

  return result;
}

unint64_t sub_1A7912F20()
{
  result = qword_1EB2A7828;
  if (!qword_1EB2A7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7828);
  }

  return result;
}

unint64_t sub_1A7912F78()
{
  result = qword_1EB2A7830;
  if (!qword_1EB2A7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7830);
  }

  return result;
}

unint64_t sub_1A7912FD0()
{
  result = qword_1EB2A7838;
  if (!qword_1EB2A7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7838);
  }

  return result;
}

unint64_t sub_1A7913028()
{
  result = qword_1EB2A7840;
  if (!qword_1EB2A7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7840);
  }

  return result;
}

unint64_t sub_1A7913080()
{
  result = qword_1EB2A7848;
  if (!qword_1EB2A7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7848);
  }

  return result;
}

unint64_t sub_1A79130D8()
{
  result = qword_1EB2A7850;
  if (!qword_1EB2A7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7850);
  }

  return result;
}

unint64_t sub_1A7913130()
{
  result = qword_1EB2A7858;
  if (!qword_1EB2A7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7858);
  }

  return result;
}

unint64_t sub_1A7913188()
{
  result = qword_1EB2A7860;
  if (!qword_1EB2A7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7860);
  }

  return result;
}

uint64_t sub_1A79131DC(uint64_t a1, unint64_t a2)
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

  v6 = sub_1A78BDC10(v5, 0);
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

  result = sub_1A793DE48();
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
        v10 = sub_1A793D9D8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A78BDC10(v10, 0);
        result = sub_1A793DDF8();
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

unint64_t sub_1A7913360()
{
  result = qword_1EB2A7868;
  if (!qword_1EB2A7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7868);
  }

  return result;
}

unint64_t sub_1A79133B8()
{
  result = qword_1EB2A7870;
  if (!qword_1EB2A7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7870);
  }

  return result;
}

unint64_t sub_1A7913410()
{
  result = qword_1EB2A7878;
  if (!qword_1EB2A7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7878);
  }

  return result;
}

unint64_t sub_1A7913468()
{
  result = qword_1EB2A7880;
  if (!qword_1EB2A7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7880);
  }

  return result;
}

unint64_t sub_1A79134C0()
{
  result = qword_1EB2A7888;
  if (!qword_1EB2A7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7888);
  }

  return result;
}

uint64_t sub_1A7913548()
{
  result = sub_1A78D90E8(6514035, 0xE300000000000000);
  qword_1EB2A7890 = result;
  *algn_1EB2A7898 = v1;
  return result;
}

uint64_t HPKE.Sender.encapsulatedKey.getter()
{
  v1 = *(v0 + 64);
  sub_1A78C0990(v1, *(v0 + 72));
  return v1;
}

uint64_t HPKE.Sender.exportSecret<A>(context:outputByteCount:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (a1 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = a2;
    v6 = a1;
    v9 = a4;
    v26 = a3;
    v4 = *(v5 + 40);
    v7 = *(v5 + 41);
    v8 = *(v5 + 42);
    v29 = *(v5 + 32);
    v11 = qword_1EB2A6DD0;

    if (v11 == -1)
    {
      if (!(v6 >> 16))
      {
        goto LABEL_4;
      }

LABEL_8:
      __break(1u);
      goto LABEL_9;
    }
  }

  swift_once();
  if (v6 >> 16)
  {
    goto LABEL_8;
  }

LABEL_4:
  v25 = v9;
  if (qword_1EB2A6CA8 != -1)
  {
LABEL_9:
    swift_once();
  }

  v27 = qword_1EB2A6CB0;
  v28 = *algn_1EB2A6CB8;
  v12 = qword_1A79441C0[v4];
  sub_1A78C0990(qword_1EB2A6CB0, *algn_1EB2A6CB8);
  v13 = sub_1A78FE770(v12, 2);
  v15 = v14;
  sub_1A793D808();
  sub_1A78C0AFC(v13, v15);
  v16 = sub_1A78FE770(v7 + 1, 2);
  v18 = v17;
  sub_1A793D808();
  sub_1A78C0AFC(v16, v18);
  v19 = sub_1A78FE770(qword_1A79441E8[v8], 2);
  v21 = v20;
  sub_1A793D808();
  sub_1A78C0AFC(v19, v21);
  v22 = v27;
  v23 = v28;
  LOBYTE(v27) = v7;
  sub_1A791535C(&v29, v6, &v27, v25, v10, v26);
  sub_1A78C0AFC(v22, v23);
}

uint64_t HPKE.Sender.init<A>(recipientKey:ciphersuite:info:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, _OWORD *a6@<X8>)
{
  return sub_1A79137F4(a1, a2, a3, a4, a5, sub_1A78EE95C, a6);
}

{
  return sub_1A79137F4(a1, a2, a3, a4, a5, sub_1A78EEDAC, a6);
}

uint64_t sub_1A79137F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void (*a6)(_OWORD *__return_ptr, __int16 *, void, uint64_t *, void, unint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, void)@<X6>, _OWORD *a7@<X8>)
{
  v25 = a6;
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 2);
  v29 = *v18;
  v30 = v19;
  v26 = 0;
  (*(v14 + 16))(v17, a1, v20);
  v25(v27, &v29, 0, &v26, 0, 0xF000000000000000, v17, a2, a3, a4, a5, v25);
  result = (*(v14 + 8))(a1, a4);
  if (!v7)
  {
    v22 = v27[1];
    *a7 = v27[0];
    a7[1] = v22;
    v23 = v27[2];
    v24 = v28;
    a7[3] = v28;
    a7[4] = v24;
    a7[2] = v23;
    return sub_1A78C0990(v24, *(&v24 + 1));
  }

  return result;
}

uint64_t HPKE.Sender.init<A>(recipientKey:ciphersuite:info:presharedKey:presharedKeyIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X5>, unint64_t a5@<X6>, uint64_t a6@<X7>, _OWORD *a7@<X8>, uint64_t a8)
{
  v30 = a3;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 2);
  v21 = *v20;
  v35 = *v18;
  v36 = v19;
  v32 = v21;
  (*(v14 + 16))(v17, a1, v22);
  sub_1A78C0990(a4, a5);
  v23 = v31;
  v24 = sub_1A78EE95C(&v35, 1u, &v32, a4, a5, v17, a2, v30, v33, a6, a8);
  (*(v14 + 8))(a1, a6, v24);
  result = sub_1A78C0AFC(a4, a5);
  if (!v23)
  {
    v26 = v33[1];
    *a7 = v33[0];
    a7[1] = v26;
    v27 = v33[2];
    v28 = v34;
    a7[3] = v34;
    a7[4] = v28;
    a7[2] = v27;
    return sub_1A78C0990(v28, *(&v28 + 1));
  }

  return result;
}

uint64_t HPKE.Sender.init<A>(recipientKey:ciphersuite:info:authenticatedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v36 = a4;
  v34 = a5;
  v35 = a3;
  v33 = a8;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v22 = &v33 - v21;
  LOWORD(v21) = *a2;
  v23 = *(a2 + 2);
  v24 = a1;
  v25 = v34;
  v41 = v21;
  v42 = v23;
  v38 = 0;
  (*(v19 + 16))(v22, v24, AssociatedTypeWitness);
  (*(v12 + 16))(v15, v25, a6);
  v26 = v37;
  v27 = sub_1A78EEFD0(&v41, 2u, &v38, 0, 0xF000000000000000, v22, v35, v36, v39, v15, a6, a7);
  (*(v12 + 8))(v25, a6, v27);
  if (v26)
  {
    return (*(v19 + 8))(v24, AssociatedTypeWitness);
  }

  (*(v19 + 8))(v24, AssociatedTypeWitness);
  v29 = v39[1];
  v30 = v33;
  *v33 = v39[0];
  v30[1] = v29;
  v31 = v39[2];
  v32 = v40;
  v30[3] = v40;
  v30[4] = v32;
  v30[2] = v31;
  return sub_1A78C0990(v32, *(&v32 + 1));
}

uint64_t HPKE.Sender.init<A>(recipientKey:ciphersuite:info:authenticatedBy:presharedKey:presharedKeyIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v40 = a8;
  v38 = a7;
  v39 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a3;
  v34 = a9;
  v13 = *(a10 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v22 = &v33 - v21;
  LOWORD(v21) = *a2;
  v23 = *(a2 + 2);
  v24 = v35;
  v25 = *v36;
  v45 = v21;
  v46 = v23;
  v42 = v25;
  (*(v19 + 16))(v22, a1, AssociatedTypeWitness);
  (*(v13 + 16))(v16, v24, a10);
  v26 = v41;
  v27 = sub_1A78EEFD0(&v45, 3u, &v42, v38, v40, v22, v37, v39, v43, v16, a10, a11);
  (*(v13 + 8))(v24, a10, v27);
  if (v26)
  {
    return (*(v19 + 8))(a1, AssociatedTypeWitness);
  }

  (*(v19 + 8))(a1, AssociatedTypeWitness);
  v29 = v43[1];
  v30 = v34;
  *v34 = v43[0];
  v30[1] = v29;
  v31 = v43[2];
  v32 = v44;
  v30[3] = v44;
  v30[4] = v32;
  v30[2] = v31;
  return sub_1A78C0990(v32, *(&v32 + 1));
}

uint64_t HPKE.Sender.seal<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = xmmword_1A793F230;
  v6 = sub_1A78CA3EC();
  v7 = sub_1A78D43CC(a1, &v9, a2, MEMORY[0x1E6969080], a3, v6);
  sub_1A78C0AFC(v9, *(&v9 + 1));
  return v7;
}

uint64_t HPKE.Recipient.exportSecret<A>(context:outputByteCount:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (a1 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = a2;
    v6 = a1;
    v9 = a4;
    v26 = a3;
    v4 = *(v5 + 40);
    v7 = *(v5 + 41);
    v8 = *(v5 + 42);
    v29 = *(v5 + 32);
    v11 = qword_1EB2A6DD0;

    if (v11 == -1)
    {
      if (!(v6 >> 16))
      {
        goto LABEL_4;
      }

LABEL_8:
      __break(1u);
      goto LABEL_9;
    }
  }

  swift_once();
  if (v6 >> 16)
  {
    goto LABEL_8;
  }

LABEL_4:
  v25 = v9;
  if (qword_1EB2A6CA8 != -1)
  {
LABEL_9:
    swift_once();
  }

  v27 = qword_1EB2A6CB0;
  v28 = *algn_1EB2A6CB8;
  v12 = qword_1A79441C0[v4];
  sub_1A78C0990(qword_1EB2A6CB0, *algn_1EB2A6CB8);
  v13 = sub_1A78FE770(v12, 2);
  v15 = v14;
  sub_1A793D808();
  sub_1A78C0AFC(v13, v15);
  v16 = sub_1A78FE770(v7 + 1, 2);
  v18 = v17;
  sub_1A793D808();
  sub_1A78C0AFC(v16, v18);
  v19 = sub_1A78FE770(qword_1A79441E8[v8], 2);
  v21 = v20;
  sub_1A793D808();
  sub_1A78C0AFC(v19, v21);
  v22 = v27;
  v23 = v28;
  LOBYTE(v27) = v7;
  sub_1A791535C(&v29, v6, &v27, v25, v10, v26);
  sub_1A78C0AFC(v22, v23);
}

double HPKE.Recipient.init<A>(privateKey:ciphersuite:info:encapsulatedKey:)@<D0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  return sub_1A791433C(a1, a2, a3, a4, a5, a6, a7, a8, a9, &protocol requirements base descriptor for DiffieHellmanKeyAgreement, &associated type descriptor for DiffieHellmanKeyAgreement.PublicKey, sub_1A78EF7F4);
}

{
  return sub_1A791433C(a1, a2, a3, a4, a5, a6, a7, a8, a9, &protocol requirements base descriptor for KEMPrivateKey, &associated type descriptor for KEMPrivateKey.PublicKey, sub_1A78F003C);
}

double sub_1A791433C@<D0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(_OWORD *__return_ptr, __int16 *, void, uint64_t, uint64_t, uint64_t *, void, unint64_t, char *, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v39 = a6;
  v35 = a9;
  v36 = a3;
  v37 = a12;
  v38 = a5;
  v17 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_1A793DC78();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v34 - v22;
  v24 = *(a7 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v27 = &v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a2 + 2);
  v45 = *a2;
  v46 = v28;
  v41 = 0;
  (*(v24 + 16))(v27, a1, a7);
  (*(*(AssociatedTypeWitness - 8) + 56))(v23, 1, 1, AssociatedTypeWitness);
  v29 = v40;
  v37(v42, &v45, 0, v38, v39, &v41, 0, 0xF000000000000000, v27, v36, a4, v23, a7, a8);
  (*(v24 + 8))(a1, a7);
  if (!v29)
  {
    v31 = v42[1];
    v32 = v35;
    *v35 = v42[0];
    v32[1] = v31;
    result = *&v43;
    v33 = v44;
    v32[2] = v43;
    v32[3] = v33;
  }

  return result;
}

double HPKE.Recipient.init<A>(privateKey:ciphersuite:info:encapsulatedKey:presharedKey:presharedKeyIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12)
{
  v41 = a6;
  v36 = a7;
  v37 = a1;
  v39 = a3;
  v40 = a5;
  v38 = a4;
  v35 = a9;
  v14 = *(a12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1A793DC78();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v34 - v19;
  v21 = *(a11 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(v23) = *a2;
  v25 = *(a2 + 2);
  v26 = v37;
  v27 = *v36;
  v47 = v23;
  v48 = v25;
  v43 = v27;
  (*(v21 + 16))(v24, v37, a11);
  (*(*(AssociatedTypeWitness - 8) + 56))(v20, 1, 1, AssociatedTypeWitness);
  sub_1A78C0990(a8, a10);
  v28 = v42;
  v29 = sub_1A78EF7F4(&v47, 1u, v40, v41, &v43, a8, a10, v24, v44, v39, v38, v20, a11, a12);
  (*(v21 + 8))(v26, a11, v29);
  sub_1A78C0AFC(a8, a10);
  if (!v28)
  {
    v31 = v44[1];
    v32 = v35;
    *v35 = v44[0];
    v32[1] = v31;
    result = *&v45;
    v33 = v46;
    v32[2] = v45;
    v32[3] = v33;
  }

  return result;
}

double HPKE.Recipient.init<A>(privateKey:ciphersuite:info:encapsulatedKey:authenticatedBy:)@<D0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v39 = a6;
  v37 = a3;
  v38 = a5;
  v35 = a9;
  v36 = a4;
  v14 = *(a10 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1A793DC78();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v34 - v19;
  v21 = *(a8 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a2 + 2);
  v47 = *a2;
  v48 = v25;
  v42 = a1;
  v43 = 0;
  (*(v21 + 16))(v24, a1, a8);
  v26 = *(AssociatedTypeWitness - 8);
  v27 = *(v26 + 16);
  v41 = a7;
  v27(v20, a7, AssociatedTypeWitness);
  (*(v26 + 56))(v20, 0, 1, AssociatedTypeWitness);
  v28 = v40;
  v29 = sub_1A78EF7F4(&v47, 2u, v38, v39, &v43, 0, 0xF000000000000000, v24, v44, v37, v36, v20, a8, a10);
  (*(v26 + 8))(v41, AssociatedTypeWitness, v29);
  (*(v21 + 8))(v42, a8);
  if (!v28)
  {
    v31 = v44[1];
    v32 = v35;
    *v35 = v44[0];
    v32[1] = v31;
    result = *&v45;
    v33 = v46;
    v32[2] = v45;
    v32[3] = v33;
  }

  return result;
}

double HPKE.Recipient.init<A>(privateKey:ciphersuite:info:encapsulatedKey:authenticatedBy:presharedKey:presharedKeyIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  v46 = a6;
  v40 = a8;
  v41 = a4;
  v39 = a9;
  v44 = a10;
  v45 = a5;
  v42 = a3;
  v43 = a11;
  v16 = *(a13 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_1A793DC78();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v38 - v21;
  v23 = *(a12 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(v25) = *a2;
  v27 = *(a2 + 2);
  v28 = a1;
  v29 = a7;
  v30 = *v40;
  v52 = v25;
  v53 = v27;
  v48 = v30;
  (*(v23 + 16))(v26, v28, a12);
  v31 = *(AssociatedTypeWitness - 8);
  (*(v31 + 16))(v22, v29, AssociatedTypeWitness);
  (*(v31 + 56))(v22, 0, 1, AssociatedTypeWitness);
  v32 = v47;
  v33 = sub_1A78EF7F4(&v52, 3u, v45, v46, &v48, v44, v43, v26, v49, v42, v41, v22, a12, a13);
  (*(v31 + 8))(v29, AssociatedTypeWitness, v33);
  (*(v23 + 8))(v28, a12);
  if (!v32)
  {
    v35 = v49[1];
    v36 = v39;
    *v39 = v49[0];
    v36[1] = v35;
    result = *&v50;
    v37 = v51;
    v36[2] = v50;
    v36[3] = v37;
  }

  return result;
}

uint64_t HPKE.Recipient.open<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = xmmword_1A793F230;
  v6 = sub_1A78CA3EC();
  v7 = sub_1A78D4754(a1, &v9, a2, MEMORY[0x1E6969080], a3, v6);
  sub_1A78C0AFC(v9, *(&v9 + 1));
  return v7;
}

uint64_t sub_1A7914DC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1A7914E10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1A7914EA4()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = sub_1A793DB28();
  *(v0 + 16) = 57;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 73) = 0u;
  if (!ccrng())
  {
LABEL_5:
    __break(1u);
  }

  if (cced448_make_pub())
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = sub_1A79151BC(v0);

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_1A7914FA4(void *a1, void *a2, char **a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!ccrng())
  {
    goto LABEL_8;
  }

  if (!*a1)
  {
    goto LABEL_9;
  }

  v6 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1A78C57C4(0, *(v6 + 2), 0, v6);
  }

  *a3 = v6;
  result = cced448_make_key_pair();
  if (result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  *a2 = 57;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7915098(uint64_t result, uint64_t a2)
{
  if (!result || a2 - result != 57)
  {
    sub_1A78D6484();
    swift_allocError();
    *v2 = 0;
    *(v2 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

char *sub_1A7915104@<X0>(const void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1 && a2 - a1 == 57)
  {
    result = sub_1A78BDC10(57, 0);
    if (a2 <= a1)
    {
      __break(1u);
    }

    else
    {
      v7 = result;
      result = memmove(result + 32, a1, 0x39uLL);
      *a3 = v7;
    }
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v8 = 0;
    *(v8 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

void *sub_1A79151BC(uint64_t a1)
{
  if (*(a1 + 16) == 57)
  {
    v1 = sub_1A78BDC10(57, 0);
    memmove(v1 + 4, (a1 + 32), 0x39uLL);
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v3 = 0;
    *(v3 + 4) = 1;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1A7915254()
{
  result = sub_1A793D6A8();
  if (!v0)
  {
    return sub_1A78C2B3C();
  }

  return result;
}

uint64_t sub_1A79152D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
  result = sub_1A793D6A8();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1A791535C@<X0>(uint64_t *a1@<X0>, unsigned __int16 a2@<W4>, unsigned __int8 *a3@<X7>, void *a4@<X8>, uint64_t a5, uint64_t a6)
{
  v15 = *a1;
  v7 = *a3;
  v19 = sub_1A78FE770(a2, 2);
  v20 = v8;
  if (qword_1EB2A6CE8 != -1)
  {
    swift_once();
  }

  sub_1A793D808();
  sub_1A793D808();
  sub_1A793D808();
  v9 = *(*(*(*(a6 + 8) + 8) + 8) + 8);
  sub_1A793D7F8();
  v10 = v19;
  v11 = v20;
  if (v7)
  {
    if (v7 == 1)
    {
      sub_1A78CF840(v15, v19, v20, a2, &v18);
    }

    else
    {
      sub_1A78CFC48(v15, v19, v20, a2, &v18);
    }
  }

  else
  {
    sub_1A78CF454(v15, v19, v20, a2, &v18);
  }

  v12 = v18;
  swift_beginAccess();
  sub_1A78C2BF8(v12 + 32, v12 + 32 + *(v12 + 16), &v17);
  v13 = v17;

  *a4 = v13;
  return sub_1A78C0AFC(v10, v11);
}

uint64_t sub_1A7915500()
{
  result = sub_1A78D90E8(0x31762D454B5048, 0xE700000000000000);
  qword_1EB2A6CF0 = result;
  *algn_1EB2A6CF8 = v1;
  return result;
}

uint64_t sub_1A7915538()
{
  result = sub_1A78D90E8(0x6B72705F656165, 0xE700000000000000);
  qword_1EB2A6D38 = result;
  unk_1EB2A6D40 = v1;
  return result;
}

uint64_t sub_1A7915570()
{
  result = sub_1A78D90E8(0x735F646572616873, 0xED00007465726365);
  qword_1EB2A6CD0 = result;
  *algn_1EB2A6CD8 = v1;
  return result;
}

uint64_t sub_1A79155B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 32))(v6);
  sub_1A793D6A8();
  v7 = v9[2];
  (*(v3 + 8))(v6, a2);
  return v7;
}

unint64_t sub_1A79156D8()
{
  result = qword_1EB2A78A0;
  if (!qword_1EB2A78A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2A7108, &unk_1A7946860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A78A0);
  }

  return result;
}

uint64_t P256.KeyAgreement.PublicKey.init<A>(_:kem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v13)
  {
    sub_1A78D4960();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    return (*(v8 + 8))(a1, a3);
  }

  else
  {
    v16 = v10;
    (*(v8 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
    P256.KeyAgreement.PublicKey.init<A>(x963Representation:)(v12, a3, a4, &v18);
    result = (*(v8 + 8))(a1, a3);
    if (!v4)
    {
      *v16 = v18;
    }
  }

  return result;
}

uint64_t P256.KeyAgreement.PublicKey.hpkeRepresentation(kem:)(_BYTE *a1)
{
  if (*a1)
  {
    sub_1A78D4960();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }

  else
  {
    v4 = ccec_export_pub_size((*v1 + 32));
    v5 = sub_1A793DB28();
    *(v5 + 16) = v4;
    ccec_export_pub();
    *(v5 + 16) = v4;
    v6 = sub_1A78C0DCC(v5);

    return v6;
  }
}

uint64_t sub_1A79159EC(_BYTE *a1)
{
  if (*a1)
  {
    sub_1A78D4960();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }

  else
  {
    v4 = ccec_export_pub_size((*v1 + 32));
    v5 = sub_1A793DB28();
    *(v5 + 16) = v4;
    ccec_export_pub();
    *(v5 + 16) = v4;
    v6 = sub_1A78C0DCC(v5);

    return v6;
  }
}

uint64_t P384.KeyAgreement.PublicKey.init<A>(_:kem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v13 == 1)
  {
    v14 = v10;
    (*(v8 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
    P384.KeyAgreement.PublicKey.init<A>(x963Representation:)(v12, a3, a4, &v18);
    result = (*(v8 + 8))(a1, a3);
    if (!v4)
    {
      *v14 = v18;
    }
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    return (*(v8 + 8))(a1, a3);
  }

  return result;
}

uint64_t P384.KeyAgreement.PublicKey.hpkeRepresentation(kem:)(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v2 = ccec_export_pub_size((*v1 + 32));
    v3 = sub_1A793DB28();
    *(v3 + 16) = v2;
    ccec_export_pub();
    *(v3 + 16) = v2;
    v4 = sub_1A78C0DCC(v3);

    return v4;
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v6 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1A7915D60(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v2 = ccec_export_pub_size((*v1 + 32));
    v3 = sub_1A793DB28();
    *(v3 + 16) = v2;
    ccec_export_pub();
    *(v3 + 16) = v2;
    v4 = sub_1A78C0DCC(v3);

    return v4;
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v6 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1A7915E4C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, void, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  result = a1();
  if (result)
  {
    v6 = getccec_full_ctx_size();
    result = a2(v6, 0, v6);
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7915ED8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(uint64_t, void, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  result = a1();
  if (result)
  {
    v6 = getccec_full_ctx_size();
    result = a2(v6, 0, v6);
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t P521.KeyAgreement.PublicKey.init<A>(_:kem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v13 == 2)
  {
    v14 = v10;
    (*(v8 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
    P521.KeyAgreement.PublicKey.init<A>(x963Representation:)(v12, a3, a4, &v18);
    result = (*(v8 + 8))(a1, a3);
    if (!v4)
    {
      *v14 = v18;
    }
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    return (*(v8 + 8))(a1, a3);
  }

  return result;
}

uint64_t P521.KeyAgreement.PublicKey.hpkeRepresentation(kem:)(_BYTE *a1)
{
  if (*a1 == 2)
  {
    v2 = ccec_export_pub_size((*v1 + 32));
    v3 = sub_1A793DB28();
    *(v3 + 16) = v2;
    ccec_export_pub();
    *(v3 + 16) = v2;
    v4 = sub_1A78C0DCC(v3);

    return v4;
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v6 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1A7916198(_BYTE *a1)
{
  if (*a1 == 2)
  {
    v2 = ccec_export_pub_size((*v1 + 32));
    v3 = sub_1A793DB28();
    *(v3 + 16) = v2;
    ccec_export_pub();
    *(v3 + 16) = v2;
    v4 = sub_1A78C0DCC(v3);

    return v4;
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v6 = 1;
    return swift_willThrow();
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A79162D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A791631C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_1A791638C()
{
  result = qword_1EB2A78A8;
  if (!qword_1EB2A78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A78A8);
  }

  return result;
}

uint64_t sub_1A79163E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = sub_1A793DD78();
  result = sub_1A793DE68();
  v5 = v3 - result;
  if (__OFSUB__(v3, result))
  {
    __break(1u);
  }

  else
  {
    v6 = __OFADD__(v5, 7);
    v7 = v5 + 7;
    if (!v6)
    {
      return v7 / 8;
    }
  }

  __break(1u);
  return result;
}

void sub_1A791644C(__int128 *a1, unint64_t a2, unsigned __int8 a3)
{
  v6 = *(a1 + 4);
  v7 = a1[1];
  v21 = *a1;
  v22 = v7;
  v23 = v6;
  sub_1A78BF874(v24);
  v8 = v28;
  if (v28 == 255)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    return;
  }

  if (a2 > 0x1E)
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = v25;
  v10 = v26;
  v11 = v27;
  if (a3 <= 1u)
  {
    if (a3 != 1)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v12 = 64;
  }

  else if (a3 == 2)
  {
    v12 = 128;
  }

  else
  {
    v12 = 192;
  }

  if (v24[0] != (v12 | a2 | 0x20))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_1A78C2ADC(v24, &qword_1EB2A6F38, &qword_1A793F4B0);
    return;
  }

  v13 = *(&v21 + 1);
  v14 = v23;
  *a1 = v21;
  *(a1 + 1) = v13;
  a1[1] = v22;
  *(a1 + 4) = v14;
  if (v8)
  {
LABEL_20:
    swift_unknownObjectRetain();
    sub_1A78C2ADC(v24, &qword_1EB2A6F38, &qword_1A793F4B0);
    __break(1u);
    goto LABEL_21;
  }

  v18 = v9;
  v19 = v10;
  v20 = v11;
  sub_1A78BF874(v29);
  if (v29[48] == 255)
  {
    swift_unknownObjectRetain();
    sub_1A78BF9FC(v24, v17, &qword_1EB2A6F38, &qword_1A793F4B0);
    goto LABEL_17;
  }

  sub_1A78BF874(v30);
  v15 = v30[48];
  swift_unknownObjectRetain();
  if (v15 != 255)
  {
    sub_1A78BF9FC(v24, v17, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78C2ADC(v30, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78C2ADC(v29, &qword_1EB2A6F38, &qword_1A793F4B0);
LABEL_17:
    sub_1A78D6B80();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();
    sub_1A78C2ADC(v24, &qword_1EB2A6F38, &qword_1A793F4B0);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  sub_1A78C2ADC(v29, &qword_1EB2A6F38, &qword_1A793F4B0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_1A791674C(__int128 *a1, unint64_t a2, unsigned __int8 a3, void (*a4)(uint64_t *__return_ptr, _OWORD *))
{
  v8 = *(a1 + 4);
  v9 = a1[1];
  v23 = *a1;
  v24 = v9;
  v25 = v8;
  sub_1A78BF874(&v26 + 1);
  v10 = v30;
  if (v30 == 255)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    return;
  }

  if (a2 > 0x1E)
  {
    __break(1u);
LABEL_21:
    swift_unknownObjectRetain();
    sub_1A78C2ADC(&v26 + 1, &qword_1EB2A6F38, &qword_1A793F4B0);
    __break(1u);
    goto LABEL_22;
  }

  v11 = v27;
  v12 = v28;
  v13 = v29;
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v14 = 128;
    }

    else
    {
      v14 = 192;
    }

LABEL_10:
    if (BYTE1(v26) != (v14 | a2 | 0x20))
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      sub_1A78C2ADC(&v26 + 1, &qword_1EB2A6F38, &qword_1A793F4B0);
      return;
    }

    v15 = *(&v23 + 1);
    v16 = v25;
    *a1 = v23;
    *(a1 + 1) = v15;
    a1[1] = v24;
    *(a1 + 4) = v16;
    if ((v10 & 1) == 0)
    {
      v20 = v11;
      v21 = v12;
      v22 = v13;
      sub_1A78BF874(v31);
      if (v32 == 255)
      {
        swift_unknownObjectRetain();
        sub_1A78BF9FC(&v26 + 1, v19, &qword_1EB2A6F38, &qword_1A793F4B0);
      }

      else
      {
        v34[0] = v31[0];
        v34[1] = v31[1];
        v34[2] = v31[2];
        v35 = v32;
        sub_1A78BF874(v33);
        v17 = v33[48];
        swift_unknownObjectRetain();
        if (v17 == 255)
        {
          sub_1A78BF9FC(&v26 + 1, v19, &qword_1EB2A6F38, &qword_1A793F4B0);
          a4(&v26, v34);
          sub_1A78C2ADC(v31, &qword_1EB2A6F38, &qword_1A793F4B0);
          sub_1A78C2ADC(&v26 + 1, &qword_1EB2A6F38, &qword_1A793F4B0);
          goto LABEL_19;
        }

        sub_1A78BF9FC(&v26 + 1, v19, &qword_1EB2A6F38, &qword_1A793F4B0);
        sub_1A78C2ADC(v33, &qword_1EB2A6F38, &qword_1A793F4B0);
        sub_1A78C2ADC(v31, &qword_1EB2A6F38, &qword_1A793F4B0);
      }

      sub_1A78D6B80();
      swift_allocError();
      *v18 = 3;
      swift_willThrow();
      sub_1A78C2ADC(&v26 + 1, &qword_1EB2A6F38, &qword_1A793F4B0);
LABEL_19:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_21;
  }

  if (a3 == 1)
  {
    v14 = 64;
    goto LABEL_10;
  }

LABEL_22:
  __break(1u);
}

void sub_1A7916A60(__int128 *a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  v8 = *(a1 + 4);
  v9 = a1[1];
  v25 = *a1;
  v26 = v9;
  v27 = v8;
  sub_1A78BF874(v28);
  v10 = v32;
  if (v32 == 255)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    return;
  }

  if (a2 > 0x1E)
  {
    __break(1u);
LABEL_25:
    swift_unknownObjectRetain();
    sub_1A78C2ADC(v28, &qword_1EB2A6F38, &qword_1A793F4B0);
    __break(1u);
    goto LABEL_26;
  }

  v11 = v29;
  v12 = v30;
  v13 = v31;
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v14 = 128;
    }

    else
    {
      v14 = 192;
    }

LABEL_10:
    if (v28[0] != (v14 | a2 | 0x20))
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      sub_1A78C2ADC(v28, &qword_1EB2A6F38, &qword_1A793F4B0);
      return;
    }

    v15 = *(&v25 + 1);
    v16 = v27;
    *a1 = v25;
    *(a1 + 1) = v15;
    a1[1] = v26;
    *(a1 + 4) = v16;
    if ((v10 & 1) == 0)
    {
      v22 = v11;
      v23 = v12;
      v24 = v13;
      sub_1A78BF874(v33);
      if (v34 == 255)
      {
        swift_unknownObjectRetain();
        sub_1A78BF9FC(v28, v21, &qword_1EB2A6F38, &qword_1A793F4B0);
        goto LABEL_17;
      }

      v36[0] = v33[0];
      v36[1] = v33[1];
      v36[2] = v33[2];
      v37 = v34;
      sub_1A78BF874(v35);
      v17 = v35[48];
      swift_unknownObjectRetain();
      if (v17 != 255)
      {
        sub_1A78BF9FC(v28, v21, &qword_1EB2A6F38, &qword_1A793F4B0);
        sub_1A78C2ADC(v35, &qword_1EB2A6F38, &qword_1A793F4B0);
        sub_1A78C2ADC(v33, &qword_1EB2A6F38, &qword_1A793F4B0);
LABEL_17:
        sub_1A78D6B80();
        swift_allocError();
        *v18 = 3;
        swift_willThrow();
LABEL_18:
        sub_1A78C2ADC(v28, &qword_1EB2A6F38, &qword_1A793F4B0);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return;
      }

      sub_1A78BF9FC(v28, v21, &qword_1EB2A6F38, &qword_1A793F4B0);
      sub_1A78BF9FC(v33, v21, &qword_1EB2A6F38, &qword_1A793F4B0);
      sub_1A791FBE0(v36, 2u);
      if (!v4)
      {
        if (v19 == 48)
        {
          sub_1A78C2ADC(v33, &qword_1EB2A6F38, &qword_1A793F4B0);
          sub_1A78C2ADC(v28, &qword_1EB2A6F38, &qword_1A793F4B0);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return;
        }

        sub_1A791C0F8();
        swift_allocError();
        *v20 = 6;
        swift_willThrow();
      }

      sub_1A78C2ADC(v33, &qword_1EB2A6F38, &qword_1A793F4B0);
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  if (a3 == 1)
  {
    v14 = 64;
    goto LABEL_10;
  }

LABEL_26:
  __break(1u);
}

void sub_1A7916DD4(__int128 *a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  v8 = *(a1 + 4);
  v9 = a1[1];
  v23 = *a1;
  v24 = v9;
  v25 = v8;
  sub_1A78BF874(v26);
  v10 = v30;
  if (v30 == 255)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    return;
  }

  if (a2 > 0x1E)
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = v27;
  v12 = v28;
  v13 = v29;
  if (a3 <= 1u)
  {
    if (a3 != 1)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v14 = 64;
  }

  else if (a3 == 2)
  {
    v14 = 128;
  }

  else
  {
    v14 = 192;
  }

  if (v26[0] != (v14 | a2 | 0x20))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_1A78C2ADC(v26, &qword_1EB2A6F38, &qword_1A793F4B0);
    return;
  }

  v15 = *(&v23 + 1);
  v16 = v25;
  *a1 = v23;
  *(a1 + 1) = v15;
  a1[1] = v24;
  *(a1 + 4) = v16;
  if (v10)
  {
LABEL_22:
    swift_unknownObjectRetain();
    sub_1A78C2ADC(v26, &qword_1EB2A6F38, &qword_1A793F4B0);
    __break(1u);
    goto LABEL_23;
  }

  v20 = v11;
  v21 = v12;
  v22 = v13;
  sub_1A78BF874(v31);
  if (v32 == 255)
  {
    swift_unknownObjectRetain();
    sub_1A78BF9FC(v26, v19, &qword_1EB2A6F38, &qword_1A793F4B0);
    goto LABEL_17;
  }

  v34[0] = v31[0];
  v34[1] = v31[1];
  v34[2] = v31[2];
  v35 = v32;
  sub_1A78BF874(v33);
  v17 = v33[48];
  swift_unknownObjectRetain();
  if (v17 != 255)
  {
    sub_1A78BF9FC(v26, v19, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78C2ADC(v33, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78C2ADC(v31, &qword_1EB2A6F38, &qword_1A793F4B0);
LABEL_17:
    sub_1A78D6B80();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();
    sub_1A78C2ADC(v26, &qword_1EB2A6F38, &qword_1A793F4B0);
LABEL_18:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  sub_1A78BFB00(v34, 6);
  if (v4)
  {
    goto LABEL_18;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_1A79170A0(__int128 *a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  v8 = *(a1 + 4);
  v9 = a1[1];
  v23 = *a1;
  v24 = v9;
  v25 = v8;
  sub_1A78BF874(v26);
  v10 = v30;
  if (v30 == 255)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    return;
  }

  if (a2 > 0x1E)
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = v27;
  v12 = v28;
  v13 = v29;
  if (a3 <= 1u)
  {
    if (a3 != 1)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v14 = 64;
  }

  else if (a3 == 2)
  {
    v14 = 128;
  }

  else
  {
    v14 = 192;
  }

  if (v26[0] != (v14 | a2 | 0x20))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_1A78C2ADC(v26, &qword_1EB2A6F38, &qword_1A793F4B0);
    return;
  }

  v15 = *(&v23 + 1);
  v16 = v25;
  *a1 = v23;
  *(a1 + 1) = v15;
  a1[1] = v24;
  *(a1 + 4) = v16;
  if (v10)
  {
LABEL_22:
    swift_unknownObjectRetain();
    sub_1A78C2ADC(v26, &qword_1EB2A6F38, &qword_1A793F4B0);
    __break(1u);
    goto LABEL_23;
  }

  v20 = v11;
  v21 = v12;
  v22 = v13;
  sub_1A78BF874(v31);
  if (v32 == 255)
  {
    swift_unknownObjectRetain();
    sub_1A78BF9FC(v26, v19, &qword_1EB2A6F38, &qword_1A793F4B0);
    goto LABEL_17;
  }

  v34[0] = v31[0];
  v34[1] = v31[1];
  v34[2] = v31[2];
  v35 = v32;
  sub_1A78BF874(v33);
  v17 = v33[48];
  swift_unknownObjectRetain();
  if (v17 != 255)
  {
    sub_1A78BF9FC(v26, v19, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78C2ADC(v33, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78C2ADC(v31, &qword_1EB2A6F38, &qword_1A793F4B0);
LABEL_17:
    sub_1A78D6B80();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();
    sub_1A78C2ADC(v26, &qword_1EB2A6F38, &qword_1A793F4B0);
LABEL_18:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  sub_1A78C5B9C(v34, 3u);
  if (v4)
  {
    goto LABEL_18;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_1A7917390()
{
  sub_1A793DE28();

  v0 = sub_1A793DEA8();
  MEMORY[0x1AC55D280](v0);

  MEMORY[0x1AC55D280](41, 0xE100000000000000);
  MEMORY[0x1AC55D280](0x6E656449314E5341, 0xEF28726569666974);
}

uint64_t sub_1A791745C()
{
  v1 = *v0;
  sub_1A793DF88();
  MEMORY[0x1AC55D830](v0[1]);
  if (!v0[2])
  {
    return sub_1A793DF88();
  }

  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  sub_1A793DF88();
  v5 = v3 >> 1;
  result = (v3 >> 1) - v2;
  if (__OFSUB__(v3 >> 1, v2))
  {
    __break(1u);
    goto LABEL_11;
  }

  result = MEMORY[0x1AC55D830](result);
  v7 = __OFSUB__(v5, v2);
  v8 = v5 - v2;
  if (!v8)
  {
    return result;
  }

  if ((v8 < 0) ^ v7 | (v8 == 0))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v9 = (v4 + v2);
  do
  {
    v10 = *v9++;
    result = sub_1A793DF88();
    --v8;
  }

  while (v8);
  return result;
}

uint64_t sub_1A79174FC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_1A793DF58();
  sub_1A791745C();
  return sub_1A793DFA8();
}

uint64_t sub_1A7917550()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_1A791745C();
}

uint64_t sub_1A791758C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_1A793DF58();
  sub_1A791745C();
  return sub_1A793DFA8();
}

uint64_t sub_1A79175DC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1A791B224(v7, v8) & 1;
}

uint64_t sub_1A7917624()
{
  sub_1A793DE28();
  MEMORY[0x1AC55D280](0xD000000000000020, 0x80000001A7950360);
  v1 = *v0;
  sub_1A7917390();
  MEMORY[0x1AC55D280](0x3A6874706564202CLL, 0xE900000000000020);
  v5 = v0[1];
  v2 = sub_1A793DEA8();
  MEMORY[0x1AC55D280](v2);

  result = MEMORY[0x1AC55D280](0x794261746164202CLL, 0xED0000203A736574);
  if (v0[2] && __OFSUB__(v0[5] >> 1, v0[4]))
  {
    __break(1u);
  }

  else
  {
    v4 = sub_1A793DEA8();
    MEMORY[0x1AC55D280](v4);

    MEMORY[0x1AC55D280](41, 0xE100000000000000);
    return 0;
  }

  return result;
}

uint64_t sub_1A7917778()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_1A7917624();
}

uint64_t sub_1A79177B4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_1A793DF58();
  sub_1A791B6C0(v5, v1, v2, v3);
  return sub_1A793DFA8();
}

uint64_t sub_1A791781C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_1A793DF58();
  sub_1A791B6C0(v5, v1, v2, v3);
  return sub_1A793DFA8();
}

double sub_1A7917890@<D0>(uint64_t a1@<X8>)
{
  sub_1A78BF874(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_1A79178DC@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1A79178F0()
{
  v1 = sub_1A791B3C0(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1A791792C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 4);
  return sub_1A791A13C(a1, a2, a3);
}

unint64_t sub_1A791796C()
{
  result = qword_1EB2A78B0;
  if (!qword_1EB2A78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A78B0);
  }

  return result;
}

unint64_t sub_1A79179C4()
{
  result = qword_1EB2A78B8;
  if (!qword_1EB2A78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A78B8);
  }

  return result;
}

uint64_t sub_1A7917A4C(int a1, char **a2, char *a3)
{
  v5 = v3;
  LODWORD(v8) = a1;
  v9 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    v13 = v11 >> 1;
    v14 = v12 + 1;
    if (v11 >> 1 <= v12)
    {
      isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v11 > 1), v12 + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
      v11 = *(isUniquelyReferenced_nonNull_native + 24);
      v13 = v11 >> 1;
    }

    *(v9 + 2) = v14;
    v9[v12 + 32] = v8;
    v15 = v12 + 2;
    if (v13 < v15)
    {
      isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v11 > 1), v15, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    *(v9 + 2) = v15;
    v9[v14 + 32] = 0;
    *a2 = v9;
    v16 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v9 = *a3;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v26[2] = v9;
    sub_1A791B7B0(6, a2, sub_1A78D6B64, v26);
    if (v5)
    {

      v17 = *(a3 + 24);
      v27[0] = *(a3 + 8);
      v27[1] = v17;
      return sub_1A78C2ADC(v27, &qword_1EB2A6F30, &qword_1A793F4A8);
    }

    v8 = *(a3 + 1);
    if (v8)
    {
      v14 = *(a3 + 3);
      v19 = *(a3 + 4);
      v20 = *(a3 + 2);
      v21 = swift_unknownObjectRetain();
      sub_1A78C5A88(v21, v20, v14, v19);
    }

    a3 = *a2;
    v22 = *(*a2 + 2);
    v4 = v22 - v15;
    if ((v22 - v15) >= 128)
    {
      v28 = v8;
      if (v22 >= v15)
      {
        v8 = 71 - __clz(v4);
        v14 = v8 >> 3;
        sub_1A7919F9C(v8 >> 3, v15, v22);
        a3 = *a2;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_14;
        }

        goto LABEL_41;
      }

      goto LABEL_39;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    a3 = sub_1A78F5C2C(a3);
LABEL_14:
    if (v16 >= *(a3 + 2))
    {
      __break(1u);
      goto LABEL_43;
    }

    v23 = v8;
    v24 = a3 + 32;
    a3[v16 + 32] = (v8 >> 3) | 0x80;
    *a2 = a3;
    LODWORD(v8) = v28;
    if (v15 < *(a3 + 2))
    {
      v24[v15] = v4 >> (8 * ((v14 - 1) & 7));
      if (v14 == 1)
      {
        goto LABEL_35;
      }

      if (v15 + 1 < *(a3 + 2))
      {
        v24[v15 + 1] = v4 >> (8 * ((v14 - 2) & 7));
        if (v14 == 2)
        {
          goto LABEL_35;
        }

        if (v15 + 2 < *(a3 + 2))
        {
          v24[v15 + 2] = v4 >> (8 * ((v14 - 3) & 7));
          if (v14 == 3)
          {
            goto LABEL_35;
          }

          if (v15 + 3 < *(a3 + 2))
          {
            v24[v15 + 3] = v4 >> (8 * ((v14 - 4) & 7));
            if (v14 == 4)
            {
              goto LABEL_35;
            }

            if (v15 + 4 < *(a3 + 2))
            {
              v24[v15 + 4] = v4 >> (8 * ((v14 - 5) & 7));
              if (v14 == 5)
              {
                goto LABEL_35;
              }

              if (v15 + 5 < *(a3 + 2))
              {
                v24[v15 + 5] = v4 >> (8 * ((v14 - 6) & 7));
                if (v14 == 6)
                {
                  goto LABEL_35;
                }

                if (v15 + 6 < *(a3 + 2))
                {
                  v24[v15 + 6] = v4 >> (8 * ((v14 - 7) & 7));
                  if (v14 == 7)
                  {
                    goto LABEL_35;
                  }

                  if (v15 + 7 < *(a3 + 2))
                  {
                    v24[v15 + 7] = v4 >> (v23 & 0x38);
LABEL_35:

                    result = swift_unknownObjectRelease();
                    *a2 = a3;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_37:
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4(0, *(v9 + 2) + 1, 1, v9);
    v9 = isUniquelyReferenced_nonNull_native;
  }

  v25 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_33;
  }

LABEL_43:
  result = sub_1A78F5C2C(a3);
  a3 = result;
LABEL_33:
  if (v16 < *(a3 + 2))
  {
    a3[v16 + 32] = v4;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7917E1C(char a1, char **a2, uint64_t a3, unint64_t a4)
{
  v10 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1A78C57C4(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  v13 = v11 >> 1;
  v14 = v12 + 1;
  if (v11 >> 1 <= v12)
  {
    v10 = sub_1A78C57C4((v11 > 1), v12 + 1, 1, v10);
    v11 = *(v10 + 3);
    v13 = v11 >> 1;
  }

  *(v10 + 2) = v14;
  v10[v12 + 32] = a1;
  v15 = (v12 + 2);
  if (v13 < (v12 + 2))
  {
    v10 = sub_1A78C57C4((v11 > 1), v12 + 2, 1, v10);
  }

  *(v10 + 2) = v15;
  v10[v14 + 32] = 0;
  *a2 = v10;
  v16 = v12 + 1;
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  sub_1A79181FC(48, a2);
  if (v4)
  {
    return sub_1A78C0AFC(a3, a4);
  }

  sub_1A78C0990(a3, a4);
  v18 = sub_1A791EBC0(a3, a4);
  v19 = (2 * *(v18 + 16)) | 1;
  v25[2] = MEMORY[0x1EEE9AC00](v18);
  v25[3] = v20;
  v25[4] = 0;
  v25[5] = v21;
  sub_1A791B7B0(3, a2, sub_1A791C264, v25);

  v10 = *a2;
  v22 = *(*a2 + 2);
  v12 = v22 - v15;
  if ((v22 - v15) <= 127)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_38;
    }

    v24 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v22 < v15)
    {
      goto LABEL_37;
    }

    v5 = 71 - __clz(v12);
    v10 = (v5 >> 3);
    sub_1A7919F9C(v5 >> 3, v15, v22);
    v15 = *a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_39;
    }

    while (v16 < *(v15 + 2))
    {
      v23 = v15 + 32;
      v15[v16 + 32] = (v5 >> 3) | 0x80;
      *a2 = v15;
      if (v16 + 1 < *(v15 + 2))
      {
        v23[v16 + 1] = v12 >> (8 * ((v10 - 1) & 7u));
        if (v10 == 1)
        {
          goto LABEL_30;
        }

        if (v16 + 2 < *(v15 + 2))
        {
          v23[v16 + 2] = v12 >> (8 * ((v10 - 2) & 7u));
          if (v10 == 2)
          {
            goto LABEL_30;
          }

          if (v16 + 3 < *(v15 + 2))
          {
            v23[v16 + 3] = v12 >> (8 * ((v10 - 3) & 7u));
            if (v10 == 3)
            {
              goto LABEL_30;
            }

            if (v16 + 4 < *(v15 + 2))
            {
              v23[v16 + 4] = v12 >> (8 * ((v10 - 4) & 7u));
              if (v10 == 4)
              {
                goto LABEL_30;
              }

              if (v16 + 5 < *(v15 + 2))
              {
                v23[v16 + 5] = v12 >> (8 * ((v10 - 5) & 7u));
                if (v10 == 5)
                {
                  goto LABEL_30;
                }

                if (v16 + 6 < *(v15 + 2))
                {
                  v23[v16 + 6] = v12 >> (8 * ((v10 - 6) & 7u));
                  if (v10 == 6)
                  {
                    goto LABEL_30;
                  }

                  if (v16 + 7 < *(v15 + 2))
                  {
                    v23[v16 + 7] = v12 >> (8 * ((v10 - 7) & 7u));
                    if (v10 == 7)
                    {
                      goto LABEL_30;
                    }

                    if (v16 + 8 < *(v15 + 2))
                    {
                      v23[v16 + 8] = v12 >> (v5 & 0x38);
LABEL_30:
                      result = sub_1A78C0AFC(a3, a4);
                      *a2 = v15;
                      return result;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v15 = sub_1A78F5C2C(v15);
    }

    __break(1u);
  }

  result = sub_1A78F5C2C(v10);
  v10 = result;
LABEL_33:
  if (v16 >= *(v10 + 2))
  {
    __break(1u);
  }

  else
  {
    v10[v16 + 32] = v12;
    result = sub_1A78C0AFC(a3, a4);
    *a2 = v10;
  }

  return result;
}

uint64_t sub_1A79181FC(char a1, char **a2)
{
  v4 = v2;
  v7 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4(0, *(v7 + 2) + 1, 1, v7);
    v7 = isUniquelyReferenced_nonNull_native;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  v11 = v9 >> 1;
  v12 = v10 + 1;
  if (v9 >> 1 <= v10)
  {
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v9 > 1), v10 + 1, 1, v7);
    v7 = isUniquelyReferenced_nonNull_native;
    v9 = *(isUniquelyReferenced_nonNull_native + 24);
    v11 = v9 >> 1;
  }

  *(v7 + 2) = v12;
  v7[v10 + 32] = a1;
  v13 = v10 + 2;
  if (v11 < (v10 + 2))
  {
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v9 > 1), v10 + 2, 1, v7);
    v7 = isUniquelyReferenced_nonNull_native;
  }

  *(v7 + 2) = v13;
  v7[v12 + 32] = 0;
  *a2 = v7;
  v14 = v10 + 1;
  if (__OFSUB__(v13, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  v7 = &v20;
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v19[2] = &unk_1F1A76DE8;
  result = sub_1A791B7B0(6, a2, sub_1A791C330, v19);
  if (v2)
  {
    return result;
  }

  sub_1A791855C(48, a2);
  v4 = *a2;
  v16 = *(*a2 + 2);
  v10 = v16 - v13;
  if ((v16 - v13) > 127)
  {
    if (v16 < v13)
    {
      goto LABEL_37;
    }

    v3 = 71 - __clz(v10);
    v7 = (v3 >> 3);
    sub_1A7919F9C(v3 >> 3, v13, v16);
    v4 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_39;
    }

    while (v14 < *(v4 + 2))
    {
      v17 = v4 + 32;
      v4[v14 + 32] = (v3 >> 3) | 0x80;
      *a2 = v4;
      if (v13 < *(v4 + 2))
      {
        v17[v13] = v10 >> (8 * ((v7 - 1) & 7u));
        if (v7 == 1)
        {
          goto LABEL_33;
        }

        if (v13 + 1 < *(v4 + 2))
        {
          v17[v13 + 1] = v10 >> (8 * ((v7 - 2) & 7u));
          if (v7 == 2)
          {
            goto LABEL_33;
          }

          if (v13 + 2 < *(v4 + 2))
          {
            v17[v13 + 2] = v10 >> (8 * ((v7 - 3) & 7u));
            if (v7 == 3)
            {
              goto LABEL_33;
            }

            if (v13 + 3 < *(v4 + 2))
            {
              v17[v13 + 3] = v10 >> (8 * ((v7 - 4) & 7u));
              if (v7 == 4)
              {
                goto LABEL_33;
              }

              if (v13 + 4 < *(v4 + 2))
              {
                v17[v13 + 4] = v10 >> (8 * ((v7 - 5) & 7u));
                if (v7 == 5)
                {
                  goto LABEL_33;
                }

                if (v13 + 5 < *(v4 + 2))
                {
                  v17[v13 + 5] = v10 >> (8 * ((v7 - 6) & 7u));
                  if (v7 == 6)
                  {
                    goto LABEL_33;
                  }

                  if (v13 + 6 < *(v4 + 2))
                  {
                    v17[v13 + 6] = v10 >> (8 * ((v7 - 7) & 7u));
                    if (v7 == 7)
                    {
                      goto LABEL_33;
                    }

                    if (v13 + 7 < *(v4 + 2))
                    {
                      v17[v13 + 7] = v10 >> (v3 & 0x38);
                      goto LABEL_33;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      result = sub_1A78F5C2C(v4);
      v4 = result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v18 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_41:
    result = sub_1A78F5C2C(v4);
    v4 = result;
  }

  if (v14 >= *(v4 + 2))
  {
    __break(1u);
  }

  else
  {
    v4[v14 + 32] = v10;
LABEL_33:
    *a2 = v4;
  }

  return result;
}

uint64_t sub_1A791855C(char a1, char **a2)
{
  v4 = v2;
  v7 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1A78C57C4(0, *(v7 + 2) + 1, 1, v7);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v7 = sub_1A78C57C4((v8 > 1), v9 + 1, 1, v7);
    v8 = *(v7 + 3);
    v10 = v8 >> 1;
  }

  *(v7 + 2) = v11;
  v7[v9 + 32] = a1;
  v12 = v9 + 2;
  if (v10 < (v9 + 2))
  {
    v7 = sub_1A78C57C4((v8 > 1), v9 + 2, 1, v7);
  }

  *(v7 + 2) = v12;
  v7[v11 + 32] = 0;
  *a2 = v7;
  v13 = v9 + 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  result = sub_1A7918880(160, a2);
  if (v2)
  {
    return result;
  }

  sub_1A7918B98(161, a2);
  sub_1A7918E9C(162, a2);
  v4 = *a2;
  v15 = *(*a2 + 2);
  v9 = v15 - v12;
  if ((v15 - v12) > 127)
  {
    if (v15 < v12)
    {
      goto LABEL_37;
    }

    v3 = 71 - __clz(v9);
    v7 = (v3 >> 3);
    sub_1A7919F9C(v3 >> 3, v12, v15);
    v4 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_39;
    }

    while (v13 < *(v4 + 2))
    {
      v16 = v4 + 32;
      v4[v13 + 32] = (v3 >> 3) | 0x80;
      *a2 = v4;
      if (v12 < *(v4 + 2))
      {
        v16[v12] = v9 >> (8 * ((v7 - 1) & 7u));
        if (v7 == 1)
        {
          goto LABEL_33;
        }

        if (v12 + 1 < *(v4 + 2))
        {
          v16[v12 + 1] = v9 >> (8 * ((v7 - 2) & 7u));
          if (v7 == 2)
          {
            goto LABEL_33;
          }

          if (v12 + 2 < *(v4 + 2))
          {
            v16[v12 + 2] = v9 >> (8 * ((v7 - 3) & 7u));
            if (v7 == 3)
            {
              goto LABEL_33;
            }

            if (v12 + 3 < *(v4 + 2))
            {
              v16[v12 + 3] = v9 >> (8 * ((v7 - 4) & 7u));
              if (v7 == 4)
              {
                goto LABEL_33;
              }

              if (v12 + 4 < *(v4 + 2))
              {
                v16[v12 + 4] = v9 >> (8 * ((v7 - 5) & 7u));
                if (v7 == 5)
                {
                  goto LABEL_33;
                }

                if (v12 + 5 < *(v4 + 2))
                {
                  v16[v12 + 5] = v9 >> (8 * ((v7 - 6) & 7u));
                  if (v7 == 6)
                  {
                    goto LABEL_33;
                  }

                  if (v12 + 6 < *(v4 + 2))
                  {
                    v16[v12 + 6] = v9 >> (8 * ((v7 - 7) & 7u));
                    if (v7 == 7)
                    {
                      goto LABEL_33;
                    }

                    if (v12 + 7 < *(v4 + 2))
                    {
                      v16[v12 + 7] = v9 >> (v3 & 0x38);
                      goto LABEL_33;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      result = sub_1A78F5C2C(v4);
      v4 = result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v17 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_41:
    result = sub_1A78F5C2C(v4);
    v4 = result;
  }

  if (v13 >= *(v4 + 2))
  {
    __break(1u);
  }

  else
  {
    v4[v13 + 32] = v9;
LABEL_33:
    *a2 = v4;
  }

  return result;
}

uint64_t sub_1A7918880(char a1, char **a2)
{
  v4 = v2;
  LOBYTE(v6) = a1;
  v7 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v10 = v8 >> 1;
    v11 = v9 + 1;
    if (v8 >> 1 <= v9)
    {
      v7 = sub_1A78C57C4((v8 > 1), v9 + 1, 1, v7);
      v8 = *(v7 + 3);
      v10 = v8 >> 1;
    }

    *(v7 + 2) = v11;
    v7[v9 + 32] = v6;
    v6 = v9 + 2;
    if (v10 < (v9 + 2))
    {
      v7 = sub_1A78C57C4((v8 > 1), v9 + 2, 1, v7);
    }

    *(v7 + 2) = v6;
    v7[v11 + 32] = 0;
    *a2 = v7;
    v12 = v9 + 1;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = sub_1A7919568(48, a2, sub_1A791C330);
    if (v4)
    {
      return result;
    }

    v4 = *a2;
    v14 = *(*a2 + 2);
    v9 = v14 - v6;
    if ((v14 - v6) > 127)
    {
      if (v14 >= v6)
      {
        v3 = 71 - __clz(v9);
        v7 = (v3 >> 3);
        sub_1A7919F9C(v3 >> 3, v6, v14);
        v4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1A78F5C2C(v4);
    v4 = result;
LABEL_11:
    if (v12 >= *(v4 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v15 = v4 + 32;
    v4[v12 + 32] = (v3 >> 3) | 0x80;
    *a2 = v4;
    if (v6 < *(v4 + 2))
    {
      v15[v6] = v9 >> (8 * ((v7 - 1) & 7u));
      if (v7 == 1)
      {
        goto LABEL_32;
      }

      if (v6 + 1 < *(v4 + 2))
      {
        v15[v6 + 1] = v9 >> (8 * ((v7 - 2) & 7u));
        if (v7 == 2)
        {
          goto LABEL_32;
        }

        if (v6 + 2 < *(v4 + 2))
        {
          v15[v6 + 2] = v9 >> (8 * ((v7 - 3) & 7u));
          if (v7 == 3)
          {
            goto LABEL_32;
          }

          if (v6 + 3 < *(v4 + 2))
          {
            v15[v6 + 3] = v9 >> (8 * ((v7 - 4) & 7u));
            if (v7 == 4)
            {
              goto LABEL_32;
            }

            if (v6 + 4 < *(v4 + 2))
            {
              v15[v6 + 4] = v9 >> (8 * ((v7 - 5) & 7u));
              if (v7 == 5)
              {
                goto LABEL_32;
              }

              if (v6 + 5 < *(v4 + 2))
              {
                v15[v6 + 5] = v9 >> (8 * ((v7 - 6) & 7u));
                if (v7 == 6)
                {
                  goto LABEL_32;
                }

                if (v6 + 6 < *(v4 + 2))
                {
                  v15[v6 + 6] = v9 >> (8 * ((v7 - 7) & 7u));
                  if (v7 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v6 + 7 < *(v4 + 2))
                  {
                    v15[v6 + 7] = v9 >> (v3 & 0x38);
LABEL_32:
                    *a2 = v4;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    v7 = sub_1A78C57C4(0, *(v7 + 2) + 1, 1, v7);
  }

  v16 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_1A78F5C2C(v4);
  v4 = result;
LABEL_30:
  if (v12 < *(v4 + 2))
  {
    v4[v12 + 32] = v9;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7918B98(char a1, char **a2)
{
  v4 = v2;
  LOBYTE(v6) = a1;
  v7 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v10 = v8 >> 1;
    v11 = v9 + 1;
    if (v8 >> 1 <= v9)
    {
      v7 = sub_1A78C57C4((v8 > 1), v9 + 1, 1, v7);
      v8 = *(v7 + 3);
      v10 = v8 >> 1;
    }

    *(v7 + 2) = v11;
    v7[v9 + 32] = v6;
    v6 = v9 + 2;
    if (v10 < (v9 + 2))
    {
      v7 = sub_1A78C57C4((v8 > 1), v9 + 2, 1, v7);
    }

    *(v7 + 2) = v6;
    v7[v11 + 32] = 0;
    *a2 = v7;
    v12 = v9 + 1;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = sub_1A79191F4(48, a2);
    if (v4)
    {
      return result;
    }

    v4 = *a2;
    v14 = *(*a2 + 2);
    v9 = v14 - v6;
    if ((v14 - v6) > 127)
    {
      if (v14 >= v6)
      {
        v3 = 71 - __clz(v9);
        v7 = (v3 >> 3);
        sub_1A7919F9C(v3 >> 3, v6, v14);
        v4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1A78F5C2C(v4);
    v4 = result;
LABEL_11:
    if (v12 >= *(v4 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v15 = v4 + 32;
    v4[v12 + 32] = (v3 >> 3) | 0x80;
    *a2 = v4;
    if (v6 < *(v4 + 2))
    {
      v15[v6] = v9 >> (8 * ((v7 - 1) & 7u));
      if (v7 == 1)
      {
        goto LABEL_32;
      }

      if (v6 + 1 < *(v4 + 2))
      {
        v15[v6 + 1] = v9 >> (8 * ((v7 - 2) & 7u));
        if (v7 == 2)
        {
          goto LABEL_32;
        }

        if (v6 + 2 < *(v4 + 2))
        {
          v15[v6 + 2] = v9 >> (8 * ((v7 - 3) & 7u));
          if (v7 == 3)
          {
            goto LABEL_32;
          }

          if (v6 + 3 < *(v4 + 2))
          {
            v15[v6 + 3] = v9 >> (8 * ((v7 - 4) & 7u));
            if (v7 == 4)
            {
              goto LABEL_32;
            }

            if (v6 + 4 < *(v4 + 2))
            {
              v15[v6 + 4] = v9 >> (8 * ((v7 - 5) & 7u));
              if (v7 == 5)
              {
                goto LABEL_32;
              }

              if (v6 + 5 < *(v4 + 2))
              {
                v15[v6 + 5] = v9 >> (8 * ((v7 - 6) & 7u));
                if (v7 == 6)
                {
                  goto LABEL_32;
                }

                if (v6 + 6 < *(v4 + 2))
                {
                  v15[v6 + 6] = v9 >> (8 * ((v7 - 7) & 7u));
                  if (v7 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v6 + 7 < *(v4 + 2))
                  {
                    v15[v6 + 7] = v9 >> (v3 & 0x38);
LABEL_32:
                    *a2 = v4;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    v7 = sub_1A78C57C4(0, *(v7 + 2) + 1, 1, v7);
  }

  v16 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_1A78F5C2C(v4);
  v4 = result;
LABEL_30:
  if (v12 < *(v4 + 2))
  {
    v4[v12 + 32] = v9;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7918E9C(char a1, char **a2)
{
  v4 = v2;
  LOBYTE(v6) = a1;
  v7 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    v11 = v9 >> 1;
    v12 = v10 + 1;
    if (v9 >> 1 <= v10)
    {
      isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v9 > 1), v10 + 1, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v9 = *(isUniquelyReferenced_nonNull_native + 24);
      v11 = v9 >> 1;
    }

    *(v7 + 2) = v12;
    v7[v10 + 32] = v6;
    v6 = v10 + 2;
    if (v11 < (v10 + 2))
    {
      isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v9 > 1), v10 + 2, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
    }

    *(v7 + 2) = v6;
    v7[v12 + 32] = 0;
    *a2 = v7;
    v13 = v10 + 1;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v7 = &v19;
    v20 = 48;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v18[2] = &v20;
    result = sub_1A791B7B0(2, a2, sub_1A791C14C, v18);
    if (v4)
    {
      return result;
    }

    v4 = *a2;
    v15 = *(*a2 + 2);
    v10 = v15 - v6;
    if ((v15 - v6) > 127)
    {
      if (v15 >= v6)
      {
        v3 = 71 - __clz(v10);
        v7 = (v3 >> 3);
        sub_1A7919F9C(v3 >> 3, v6, v15);
        v4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1A78F5C2C(v4);
    v4 = result;
LABEL_11:
    if (v13 >= *(v4 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v16 = v4 + 32;
    v4[v13 + 32] = (v3 >> 3) | 0x80;
    *a2 = v4;
    if (v6 < *(v4 + 2))
    {
      v16[v6] = v10 >> (8 * ((v7 - 1) & 7u));
      if (v7 == 1)
      {
        goto LABEL_32;
      }

      if (v6 + 1 < *(v4 + 2))
      {
        v16[v6 + 1] = v10 >> (8 * ((v7 - 2) & 7u));
        if (v7 == 2)
        {
          goto LABEL_32;
        }

        if (v6 + 2 < *(v4 + 2))
        {
          v16[v6 + 2] = v10 >> (8 * ((v7 - 3) & 7u));
          if (v7 == 3)
          {
            goto LABEL_32;
          }

          if (v6 + 3 < *(v4 + 2))
          {
            v16[v6 + 3] = v10 >> (8 * ((v7 - 4) & 7u));
            if (v7 == 4)
            {
              goto LABEL_32;
            }

            if (v6 + 4 < *(v4 + 2))
            {
              v16[v6 + 4] = v10 >> (8 * ((v7 - 5) & 7u));
              if (v7 == 5)
              {
                goto LABEL_32;
              }

              if (v6 + 5 < *(v4 + 2))
              {
                v16[v6 + 5] = v10 >> (8 * ((v7 - 6) & 7u));
                if (v7 == 6)
                {
                  goto LABEL_32;
                }

                if (v6 + 6 < *(v4 + 2))
                {
                  v16[v6 + 6] = v10 >> (8 * ((v7 - 7) & 7u));
                  if (v7 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v6 + 7 < *(v4 + 2))
                  {
                    v16[v6 + 7] = v10 >> (v3 & 0x38);
LABEL_32:
                    *a2 = v4;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4(0, *(v7 + 2) + 1, 1, v7);
    v7 = isUniquelyReferenced_nonNull_native;
  }

  v17 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_1A78F5C2C(v4);
  v4 = result;
LABEL_30:
  if (v13 < *(v4 + 2))
  {
    v4[v13 + 32] = v10;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A79191F4(char a1, char **a2)
{
  v4 = v2;
  v7 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4(0, *(v7 + 2) + 1, 1, v7);
    v7 = isUniquelyReferenced_nonNull_native;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  v11 = v9 >> 1;
  v12 = v10 + 1;
  if (v9 >> 1 <= v10)
  {
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v9 > 1), v10 + 1, 1, v7);
    v7 = isUniquelyReferenced_nonNull_native;
    v9 = *(isUniquelyReferenced_nonNull_native + 24);
    v11 = v9 >> 1;
  }

  *(v7 + 2) = v12;
  v7[v10 + 32] = a1;
  v13 = v10 + 2;
  if (v11 < (v10 + 2))
  {
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v9 > 1), v10 + 2, 1, v7);
    v7 = isUniquelyReferenced_nonNull_native;
  }

  *(v7 + 2) = v13;
  v7[v12 + 32] = 0;
  *a2 = v7;
  v14 = v10 + 1;
  if (__OFSUB__(v13, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  v7 = &v20;
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v19[2] = &unk_1F1A76D90;
  result = sub_1A791B7B0(6, a2, sub_1A791C330, v19);
  if (v2)
  {
    return result;
  }

  sub_1A7919568(48, a2, sub_1A791C330);
  v4 = *a2;
  v16 = *(*a2 + 2);
  v10 = v16 - v13;
  if ((v16 - v13) > 127)
  {
    if (v16 < v13)
    {
      goto LABEL_37;
    }

    v3 = 71 - __clz(v10);
    v7 = (v3 >> 3);
    sub_1A7919F9C(v3 >> 3, v13, v16);
    v4 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_39;
    }

    while (v14 < *(v4 + 2))
    {
      v17 = v4 + 32;
      v4[v14 + 32] = (v3 >> 3) | 0x80;
      *a2 = v4;
      if (v13 < *(v4 + 2))
      {
        v17[v13] = v10 >> (8 * ((v7 - 1) & 7u));
        if (v7 == 1)
        {
          goto LABEL_33;
        }

        if (v13 + 1 < *(v4 + 2))
        {
          v17[v13 + 1] = v10 >> (8 * ((v7 - 2) & 7u));
          if (v7 == 2)
          {
            goto LABEL_33;
          }

          if (v13 + 2 < *(v4 + 2))
          {
            v17[v13 + 2] = v10 >> (8 * ((v7 - 3) & 7u));
            if (v7 == 3)
            {
              goto LABEL_33;
            }

            if (v13 + 3 < *(v4 + 2))
            {
              v17[v13 + 3] = v10 >> (8 * ((v7 - 4) & 7u));
              if (v7 == 4)
              {
                goto LABEL_33;
              }

              if (v13 + 4 < *(v4 + 2))
              {
                v17[v13 + 4] = v10 >> (8 * ((v7 - 5) & 7u));
                if (v7 == 5)
                {
                  goto LABEL_33;
                }

                if (v13 + 5 < *(v4 + 2))
                {
                  v17[v13 + 5] = v10 >> (8 * ((v7 - 6) & 7u));
                  if (v7 == 6)
                  {
                    goto LABEL_33;
                  }

                  if (v13 + 6 < *(v4 + 2))
                  {
                    v17[v13 + 6] = v10 >> (8 * ((v7 - 7) & 7u));
                    if (v7 == 7)
                    {
                      goto LABEL_33;
                    }

                    if (v13 + 7 < *(v4 + 2))
                    {
                      v17[v13 + 7] = v10 >> (v3 & 0x38);
                      goto LABEL_33;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      result = sub_1A78F5C2C(v4);
      v4 = result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v18 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_41:
    result = sub_1A78F5C2C(v4);
    v4 = result;
  }

  if (v14 >= *(v4 + 2))
  {
    __break(1u);
  }

  else
  {
    v4[v14 + 32] = v10;
LABEL_33:
    *a2 = v4;
  }

  return result;
}

uint64_t sub_1A7919568(char a1, char **a2, unint64_t a3)
{
  v5 = v3;
  LOBYTE(v7) = a1;
  v8 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    v12 = v10 >> 1;
    v13 = v11 + 1;
    if (v10 >> 1 <= v11)
    {
      isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v10 > 1), v11 + 1, 1, v8);
      v8 = isUniquelyReferenced_nonNull_native;
      v10 = *(isUniquelyReferenced_nonNull_native + 24);
      v12 = v10 >> 1;
    }

    *(v8 + 2) = v13;
    v8[v11 + 32] = v7;
    v7 = v11 + 2;
    if (v12 < (v11 + 2))
    {
      isUniquelyReferenced_nonNull_native = sub_1A78C57C4((v10 > 1), v11 + 2, 1, v8);
      v8 = isUniquelyReferenced_nonNull_native;
    }

    *(v8 + 2) = v7;
    v8[v13 + 32] = 0;
    *a2 = v8;
    v8 = (v11 + 1);
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v18[2] = &unk_1F1A76C88;
    result = sub_1A791B7B0(6, a2, a3, v18);
    if (v5)
    {
      return result;
    }

    v5 = *a2;
    v15 = *(*a2 + 2);
    v13 = v15 - v7;
    if ((v15 - v7) > 127)
    {
      if (v15 >= v7)
      {
        v11 = 71 - __clz(v13);
        a3 = v11 >> 3;
        sub_1A7919F9C(v11 >> 3, v7, v15);
        v5 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((v13 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1A78F5C2C(v5);
    v5 = result;
LABEL_11:
    if (v8 >= *(v5 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v16 = v5 + 32;
    v8[(v5 + 32)] = (v11 >> 3) | 0x80;
    *a2 = v5;
    if (v7 < *(v5 + 2))
    {
      v16[v7] = v13 >> (8 * ((a3 - 1) & 7));
      if (a3 == 1)
      {
        goto LABEL_32;
      }

      if (v7 + 1 < *(v5 + 2))
      {
        v16[v7 + 1] = v13 >> (8 * ((a3 - 2) & 7));
        if (a3 == 2)
        {
          goto LABEL_32;
        }

        if (v7 + 2 < *(v5 + 2))
        {
          v16[v7 + 2] = v13 >> (8 * ((a3 - 3) & 7));
          if (a3 == 3)
          {
            goto LABEL_32;
          }

          if (v7 + 3 < *(v5 + 2))
          {
            v16[v7 + 3] = v13 >> (8 * ((a3 - 4) & 7));
            if (a3 == 4)
            {
              goto LABEL_32;
            }

            if (v7 + 4 < *(v5 + 2))
            {
              v16[v7 + 4] = v13 >> (8 * ((a3 - 5) & 7));
              if (a3 == 5)
              {
                goto LABEL_32;
              }

              if (v7 + 5 < *(v5 + 2))
              {
                v16[v7 + 5] = v13 >> (8 * ((a3 - 6) & 7));
                if (a3 == 6)
                {
                  goto LABEL_32;
                }

                if (v7 + 6 < *(v5 + 2))
                {
                  v16[v7 + 6] = v13 >> (8 * ((a3 - 7) & 7));
                  if (a3 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v7 + 7 < *(v5 + 2))
                  {
                    v16[v7 + 7] = v13 >> (v11 & 0x38);
LABEL_32:
                    *a2 = v5;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    isUniquelyReferenced_nonNull_native = sub_1A78C57C4(0, *(v8 + 2) + 1, 1, v8);
    v8 = isUniquelyReferenced_nonNull_native;
  }

  v17 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_1A78F5C2C(v5);
  v5 = result;
LABEL_30:
  if (v8 < *(v5 + 2))
  {
    v8[v5 + 32] = v13;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A79198AC(unint64_t a1, char **a2, uint64_t a3)
{
  v9 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1A78C57C4(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  v12 = v10 >> 1;
  v13 = v11 + 1;
  if (v10 >> 1 <= v11)
  {
    v9 = sub_1A78C57C4((v10 > 1), v11 + 1, 1, v9);
    v10 = *(v9 + 3);
    v12 = v10 >> 1;
  }

  *(v9 + 2) = v13;
  v9[v11 + 32] = a1;
  v14 = v11 + 2;
  if (v12 < v14)
  {
    v9 = sub_1A78C57C4((v10 > 1), v14, 1, v9);
  }

  *(v9 + 2) = v14;
  v9[v13 + 32] = 0;
  *a2 = v9;
  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  v16 = *(a3 + 16);
  v29[0] = *a3;
  v29[1] = v16;
  v30 = *(a3 + 32);
  v32 = *&v29[0];
  v17 = *(a3 + 24);
  v31[0] = *(a3 + 8);
  v31[1] = v17;
  sub_1A78FF910(&v32, v28);
  sub_1A78BF9FC(v31, v28, &qword_1EB2A6F30, &qword_1A793F4A8);
  v18 = sub_1A7917A4C(48, a2, v29);
  if (v3)
  {
    return sub_1A78C5F48(a3);
  }

  v20 = *(a3 + 56);
  v21 = *(a3 + 40);
  *&v22 = MEMORY[0x1EEE9AC00](v18);
  v27[1] = v23;
  v27[2] = v22;
  sub_1A791B7B0(3, a2, sub_1A791C0D8, v27);
  v9 = *a2;
  v24 = *(*a2 + 2);
  v4 = v24 - v14;
  if ((v24 - v14) > 127)
  {
    if (v24 < v14)
    {
      goto LABEL_37;
    }

    v5 = 71 - __clz(v4);
    a1 = v5 >> 3;
    sub_1A7919F9C(v5 >> 3, v14, v24);
    v9 = *a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_39;
    }

    while (v15 < *(v9 + 2))
    {
      v25 = v9 + 32;
      v9[v15 + 32] = (v5 >> 3) | 0x80;
      *a2 = v9;
      if (v14 < *(v9 + 2))
      {
        v25[v14] = v4 >> (8 * ((a1 - 1) & 7));
        if (a1 == 1)
        {
          goto LABEL_34;
        }

        if (v14 + 1 < *(v9 + 2))
        {
          v25[v14 + 1] = v4 >> (8 * ((a1 - 2) & 7));
          if (a1 == 2)
          {
            goto LABEL_34;
          }

          if (v14 + 2 < *(v9 + 2))
          {
            v25[v14 + 2] = v4 >> (8 * ((a1 - 3) & 7));
            if (a1 == 3)
            {
              goto LABEL_34;
            }

            if (v14 + 3 < *(v9 + 2))
            {
              v25[v14 + 3] = v4 >> (8 * ((a1 - 4) & 7));
              if (a1 == 4)
              {
                goto LABEL_34;
              }

              if (v14 + 4 < *(v9 + 2))
              {
                v25[v14 + 4] = v4 >> (8 * ((a1 - 5) & 7));
                if (a1 == 5)
                {
                  goto LABEL_34;
                }

                if (v14 + 5 < *(v9 + 2))
                {
                  v25[v14 + 5] = v4 >> (8 * ((a1 - 6) & 7));
                  if (a1 == 6)
                  {
                    goto LABEL_34;
                  }

                  if (v14 + 6 < *(v9 + 2))
                  {
                    v25[v14 + 6] = v4 >> (8 * ((a1 - 7) & 7));
                    if (a1 == 7)
                    {
                      goto LABEL_34;
                    }

                    if (v14 + 7 < *(v9 + 2))
                    {
                      v25[v14 + 7] = v4 >> (v5 & 0x38);
                      goto LABEL_34;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v9 = sub_1A78F5C2C(v9);
    }

    __break(1u);
    goto LABEL_41;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v26 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_41:
    result = sub_1A78F5C2C(v9);
    v9 = result;
  }

  if (v15 >= *(v9 + 2))
  {
    __break(1u);
  }

  else
  {
    v9[v15 + 32] = v4;
LABEL_34:
    result = sub_1A78C5F48(a3);
    *a2 = v9;
  }

  return result;
}

uint64_t sub_1A7919C8C(char a1, unint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  LOBYTE(v9) = a1;
  v10 = *v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    v13 = v11 >> 1;
    v14 = v12 + 1;
    if (v11 >> 1 <= v12)
    {
      v10 = sub_1A78C57C4((v11 > 1), v12 + 1, 1, v10);
      v11 = *(v10 + 3);
      v13 = v11 >> 1;
    }

    *(v10 + 2) = v14;
    v10[v12 + 32] = v9;
    v9 = v12 + 2;
    if (v13 < (v12 + 2))
    {
      v10 = sub_1A78C57C4((v11 > 1), v12 + 2, 1, v10);
    }

    *(v10 + 2) = v9;
    v10[v14 + 32] = 0;
    *v6 = v10;
    v10 = (v12 + 1);
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = (a2)(v6);
    if (v5)
    {
      return result;
    }

    a3 = *v6;
    v16 = *(*v6 + 2);
    a2 = v16 - v9;
    if ((v16 - v9) > 127)
    {
      if (v16 >= v9)
      {
        v14 = 71 - __clz(a2);
        v5 = v14 >> 3;
        sub_1A7919F9C(v14 >> 3, v9, v16);
        a3 = *v6;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1A78F5C2C(a3);
    a3 = result;
LABEL_11:
    if (v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    v17 = a3 + 32;
    v10[a3 + 32] = (v14 >> 3) | 0x80;
    *v6 = a3;
    if (v9 < *(a3 + 16))
    {
      *(v17 + v9) = a2 >> (8 * ((v5 - 1) & 7));
      if (v5 == 1)
      {
        goto LABEL_32;
      }

      if (v12 + 3 < *(a3 + 16))
      {
        *(v17 + v12 + 3) = a2 >> (8 * ((v5 - 2) & 7));
        if (v5 == 2)
        {
          goto LABEL_32;
        }

        if (v12 + 4 < *(a3 + 16))
        {
          *(v17 + v12 + 4) = a2 >> (8 * ((v5 - 3) & 7));
          if (v5 == 3)
          {
            goto LABEL_32;
          }

          if (v12 + 5 < *(a3 + 16))
          {
            *(v17 + v12 + 5) = a2 >> (8 * ((v5 - 4) & 7));
            if (v5 == 4)
            {
              goto LABEL_32;
            }

            if (v12 + 6 < *(a3 + 16))
            {
              *(v17 + v12 + 6) = a2 >> (8 * ((v5 - 5) & 7));
              if (v5 == 5)
              {
                goto LABEL_32;
              }

              if (v12 + 7 < *(a3 + 16))
              {
                *(v17 + v12 + 7) = a2 >> (8 * ((v5 - 6) & 7));
                if (v5 == 6)
                {
                  goto LABEL_32;
                }

                if (v12 + 8 < *(a3 + 16))
                {
                  *(v17 + v12 + 8) = a2 >> (8 * ((v5 - 7) & 7));
                  if (v5 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v12 + 9 < *(a3 + 16))
                  {
                    *(v17 + v12 + 9) = a2 >> (v14 & 0x38);
LABEL_32:
                    *v6 = a3;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    v10 = sub_1A78C57C4(0, *(v10 + 2) + 1, 1, v10);
  }

  v18 = *v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_1A78F5C2C(a3);
  a3 = result;
LABEL_30:
  if (v10 < *(a3 + 16))
  {
    v10[a3 + 32] = a2;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7919F9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 1)
  {
    __break(1u);
    goto LABEL_33;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  v10 = v7 - a3;
  if (__OFSUB__(v7, a3))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = a2;
  v5 = result;
  if (v10 >= result)
  {
    goto LABEL_13;
  }

  v8 = result - v10;
  if (__OFSUB__(result, v10))
  {
    goto LABEL_34;
  }

  if (v8 < 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    result = sub_1A78C57C4(0, v7 + 1, 1, v6);
    v6 = result;
    goto LABEL_8;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = a3;
  v11 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_8:
  v12 = *(v6 + 16);
  a3 = v9;
  do
  {
    v13 = *(v6 + 24);
    if (v12 >= v13 >> 1)
    {
      result = sub_1A78C57C4((v13 > 1), v12 + 1, 1, v6);
      a3 = v9;
      v6 = result;
    }

    *(v6 + 16) = v12 + 1;
    *(v6 + v12++ + 32) = 0;
    --v8;
  }

  while (v8);
  *v4 = v6;
LABEL_13:
  if (a3 != v3)
  {
    while (a3 > v3)
    {
      v14 = a3 - 1 + v5;
      if (__OFADD__(a3 - 1, v5))
      {
        goto LABEL_26;
      }

      v15 = a3 - 1;
      if (a3 < 1)
      {
        goto LABEL_27;
      }

      if (v15 >= *(v6 + 16))
      {
        goto LABEL_28;
      }

      v16 = *(v6 + a3 + 31);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = sub_1A78F5C2C(v6);
        v6 = result;
        if ((v14 & 0x8000000000000000) != 0)
        {
LABEL_24:
          __break(1u);
          break;
        }
      }

      if (v14 >= *(v6 + 16))
      {
        goto LABEL_29;
      }

      *(v6 + v14 + 32) = v16;
      a3 = v15;
      if (v15 == v3)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    *v4 = v6;
  }

  return result;
}

uint64_t sub_1A791A13C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v26 = *(v3 + 24);
  if (!a2)
  {
LABEL_33:
    v7 = 0;
    goto LABEL_36;
  }

  v7 = a3;
  if (!a3)
  {
LABEL_36:
    *result = v4;
    *(result + 8) = v5;
    *(result + 16) = v6;
    *(result + 24) = v26;
    return v7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v25 = result;
    result = 0;
    v9 = *(v3 + 24);
    v10 = v26 >> 1;
    v11 = 1;
    while (1)
    {
      if (v6 == v10)
      {
        v6 = v26 >> 1;
        v7 = result;
LABEL_35:
        result = v25;
        goto LABEL_36;
      }

      if (v6 >= v10)
      {
        break;
      }

      v12 = v5 + 48 * v6;
      v13 = *v12;
      v14 = v6 + 1;
      if ((*v12 & 0x20) != 0)
      {
        v17 = *(v12 + 8);
        v18 = v26 >> 1;
        if (v14 != v10)
        {
          v19 = (v5 + 56 + 48 * v6);
          v18 = v6 + 1;
          while (1)
          {
            v20 = *v19;
            v19 += 6;
            if (v17 >= v20)
            {
              break;
            }

            if (v10 == ++v18)
            {
              v18 = v26 >> 1;
              break;
            }
          }
        }

        if (v18 <= v6)
        {
          goto LABEL_37;
        }

        if (v10 < v18)
        {
          goto LABEL_38;
        }

        if (v18 < 0)
        {
          goto LABEL_39;
        }

        v21 = v18 - v14;
        if (__OFSUB__(v18, v14))
        {
          goto LABEL_40;
        }

        if (v21 < 0)
        {
          goto LABEL_41;
        }

        v22 = v10 - v14;
        if (__OFSUB__(v10, v14))
        {
          goto LABEL_42;
        }

        if (!v21 || v22 < 0 || (v23 = v26 >> 1, v22 >= v21))
        {
          v23 = v18;
          if (__OFADD__(v14, v21))
          {
            goto LABEL_45;
          }

          if (v10 < v18)
          {
            goto LABEL_43;
          }
        }

        if (v23 <= v6)
        {
          goto LABEL_44;
        }

        sub_1A78BF4E8(v4, v5, v14, v26 & 1 | (2 * v18), v17, v30);
        v27 = v30[1];
        v29 = v30[0];
        v15 = v31;
        swift_unknownObjectRetain();
        v16 = v29;
        v6 = v23;
      }

      else
      {
        v28 = *(v12 + 16);
        result = *(v12 + 16);
        if (!v28)
        {
          goto LABEL_47;
        }

        v27 = *(v12 + 32);
        swift_unknownObjectRetain();
        v15 = 0;
        v6 = v14;
        v16 = v28;
      }

      *v8 = v13;
      *(v8 + 8) = v16;
      *(v8 + 24) = v27;
      *(v8 + 40) = v15;
      *(v8 + 48) = (v13 & 0x20) == 0;
      if (v11 == v7)
      {
        goto LABEL_35;
      }

      v8 += 56;
      result = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void *sub_1A791A374(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v27 = a3;
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7118, &unk_1A79446E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v25 - v7);
  v9 = v3[1];
  v30 = *v3;
  v10 = v3[2];
  *v8 = v30;
  v8[1] = 0;
  v28 = a1;
  if (v10 >> 62 == 2)
  {
    v11 = *(v9 + 16);
  }

  v12 = v3[3];
  v13 = v3[4];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7128, &qword_1A793FF00);
  v15 = *(v14 + 52);
  result = sub_1A793D838();
  v17 = *(v14 + 56);
  *(v8 + v17) = 0;
  v18 = (v8 + *(v5 + 44));
  *v18 = v12;
  v18[1] = v13;
  if (v31)
  {
    v19 = v27;
    if (v27)
    {
      if ((v27 & 0x8000000000000000) != 0)
      {
LABEL_21:
        __break(1u);
        return result;
      }

      v20 = v30;
      v21 = *(v30 + 16);
      if (v21)
      {
        v26 = v17;
        v19 = 0;
        v22 = v30 + 32;
        v29 = v27 - 1;
        while (v19 < *(v20 + 16))
        {
          v23 = *(v22 + v19);
          v8[1] = v19 + 1;
          sub_1A793D828();
          sub_1A78DA6E4();
          sub_1A793DCF8();
          if ((v32 & 0x100000000) != 0)
          {
            goto LABEL_13;
          }

          BYTE1(v32) = v23;
          BYTE2(v32) = BYTE3(v32);
          result = v12(&v32, &v32 + 1);
          *(v31 + v19) = v32;
          if (v29 == v19)
          {
            v19 = v27;
            v24 = v28;
            goto LABEL_18;
          }

          ++v19;
          v20 = v30;
          if (v21 == v19)
          {
            v19 = v21;
LABEL_13:
            v17 = v26;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_21;
      }

      v19 = 0;
LABEL_16:
      *(v8 + v17) = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  v24 = v28;
LABEL_18:
  sub_1A78DA674(v8, v24);
  return v19;
}

void *sub_1A791A5A4(_OWORD *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1[1];
  v24[0] = *a1;
  v24[1] = v1;
  v24[2] = a1[2];
  v2 = sub_1A78BDB94(v24, v25);
  v3 = v2[2];
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 0;
  if (v3)
  {
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    v7 = (v2 + 4);
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if (!v5)
      {
        v10 = v4[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71F0, &qword_1A79405C0);
        v13 = swift_allocObject();
        v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
        v13[2] = v12;
        v13[3] = v14;
        v15 = (v13 + 4);
        v16 = v4[3] >> 1;
        if (v4[2])
        {
          if (v13 != v4 || v15 >= v4 + v16 + 32)
          {
            memmove(v13 + 4, v4 + 4, v16);
          }

          v4[2] = 0;
        }

        v6 = (v15 + v16);
        v5 = (v14 >> 1) - v16;

        v4 = v13;
      }

      v18 = __OFSUB__(v5--, 1);
      if (v18)
      {
        break;
      }

      *v6++ = v8;
      if (!--v3)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_19:

  v19 = v4[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v18 = __OFSUB__(v20, v5);
    v21 = v20 - v5;
    if (v18)
    {
      goto LABEL_25;
    }

    v4[2] = v21;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v4;
}

void *sub_1A791A744(_OWORD *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1[1];
  v25[0] = *a1;
  v25[1] = v1;
  v2 = a1[3];
  v25[2] = a1[2];
  v25[3] = v2;
  v3 = sub_1A78BDB94(v25, v26);
  v4 = v3[2];
  v5 = MEMORY[0x1E69E7CC0];
  v6 = 0;
  if (v4)
  {
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = (v3 + 4);
    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      if (!v6)
      {
        v11 = v5[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71F0, &qword_1A79405C0);
        v14 = swift_allocObject();
        v15 = 2 * _swift_stdlib_malloc_size(v14) - 64;
        v14[2] = v13;
        v14[3] = v15;
        v16 = (v14 + 4);
        v17 = v5[3] >> 1;
        if (v5[2])
        {
          if (v14 != v5 || v16 >= v5 + v17 + 32)
          {
            memmove(v14 + 4, v5 + 4, v17);
          }

          v5[2] = 0;
        }

        v7 = (v16 + v17);
        v6 = (v15 >> 1) - v17;

        v5 = v14;
      }

      v19 = __OFSUB__(v6--, 1);
      if (v19)
      {
        break;
      }

      *v7++ = v9;
      if (!--v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_19:

  v20 = v5[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v19 = __OFSUB__(v21, v6);
    v22 = v21 - v6;
    if (v19)
    {
      goto LABEL_25;
    }

    v5[2] = v22;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

void *sub_1A791A8E4(uint64_t a1, unint64_t a2)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v36[0] = a1;
      LOWORD(v36[1]) = a2;
      BYTE2(v36[1]) = BYTE2(a2);
      BYTE3(v36[1]) = BYTE3(a2);
      BYTE4(v36[1]) = BYTE4(a2);
      BYTE5(v36[1]) = BYTE5(a2);
      v3 = v36 + BYTE6(a2);
      v4 = v36;
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (v2 != 2)
  {
    memset(v36, 0, 14);
    v4 = v36;
    v3 = v36;
    goto LABEL_23;
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  a1 = sub_1A793D648();
  v7 = a1;
  if (a1)
  {
    a1 = sub_1A793D678();
    if (__OFSUB__(v5, a1))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
    }

    v7 += v5 - a1;
  }

  v8 = __OFSUB__(v6, v5);
  v9 = v6 - v5;
  if (v8)
  {
    __break(1u);
LABEL_11:
    v10 = a1;
    v9 = (a1 >> 32) - a1;
    if (a1 >> 32 < a1)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v7 = sub_1A793D648();
    if (v7)
    {
      v11 = sub_1A793D678();
      if (__OFSUB__(v10, v11))
      {
        goto LABEL_50;
      }

      v7 += v10 - v11;
    }
  }

  v12 = sub_1A793D668();
  if (v12 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  v14 = (v13 + v7);
  if (v7)
  {
    v3 = v14;
  }

  else
  {
    v3 = 0;
  }

  v4 = v7;
LABEL_23:
  v15 = sub_1A78BDB94(v4, v3);
  v16 = v15[2];
  v17 = MEMORY[0x1E69E7CC0];
  v18 = 0;
  if (v16)
  {
    v19 = (MEMORY[0x1E69E7CC0] + 32);
    v20 = (v15 + 4);
    while (1)
    {
      v22 = *v20++;
      v21 = v22;
      if (!v18)
      {
        v23 = v17[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_46;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71F0, &qword_1A79405C0);
        v26 = swift_allocObject();
        v27 = 2 * _swift_stdlib_malloc_size(v26) - 64;
        v26[2] = v25;
        v26[3] = v27;
        v28 = (v26 + 4);
        v29 = v17[3] >> 1;
        if (v17[2])
        {
          if (v26 != v17 || v28 >= v17 + v29 + 32)
          {
            memmove(v26 + 4, v17 + 4, v29);
          }

          v17[2] = 0;
        }

        v19 = (v28 + v29);
        v18 = (v27 >> 1) - v29;

        v17 = v26;
      }

      v8 = __OFSUB__(v18--, 1);
      if (v8)
      {
        break;
      }

      *v19++ = v21;
      if (!--v16)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_41:

  v31 = v17[3];
  if (v31 >= 2)
  {
    v32 = v31 >> 1;
    v8 = __OFSUB__(v32, v18);
    v33 = v32 - v18;
    if (v8)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v17[2] = v33;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v17;
}

void *sub_1A791ABA8(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2)
    {
      v5 = *(a1 + 16);
      v6 = *(a1 + 24);
      v7 = sub_1A793D648();
      if (v7)
      {
        v8 = sub_1A793D678();
        if (__OFSUB__(v5, v8))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v7 += v5 - v8;
      }

      v9 = __OFSUB__(v6, v5);
      v10 = v6 - v5;
      if (v9)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
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

      v4 = MEMORY[0x1E69E7CC0];
      if (!v7)
      {
        goto LABEL_28;
      }

      if (!v12)
      {
        goto LABEL_28;
      }

      v4 = sub_1A78BDC10(v12, 0);
      sub_1A78E259C(v4 + 4, v12, v7, v12);
      if (v13 == v12)
      {
        goto LABEL_28;
      }

      __break(1u);
    }

LABEL_17:
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  if (!v2)
  {
    __src = a1;
    v42 = a2;
    v43 = BYTE2(a2);
    v44 = BYTE3(a2);
    v45 = BYTE4(a2);
    v3 = BYTE6(a2);
    v46 = BYTE5(a2);
    if (BYTE6(a2))
    {
      v4 = sub_1A78BDC10(BYTE6(a2), 0);
      memcpy(v4 + 4, &__src, v3);
      goto LABEL_28;
    }

    goto LABEL_17;
  }

  v14 = a1;
  v15 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v16 = sub_1A793D648();
  if (v16)
  {
    v17 = sub_1A793D678();
    if (__OFSUB__(v14, v17))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v16 += v14 - v17;
  }

  v18 = sub_1A793D668();
  if (v18 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v18;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    if (v19)
    {
      v4 = sub_1A78BDC10(v19, 0);
      sub_1A78E259C(v4 + 4, v19, v16, v19);
      if (v20 != v19)
      {
LABEL_57:
        __break(1u);
      }
    }
  }

LABEL_28:
  v21 = v4[2];
  v22 = MEMORY[0x1E69E7CC0];
  v23 = 0;
  if (v21)
  {
    v24 = (MEMORY[0x1E69E7CC0] + 32);
    v25 = (v4 + 4);
    while (1)
    {
      v27 = *v25++;
      v26 = v27;
      if (!v23)
      {
        v28 = v22[3];
        if (((v28 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_51;
        }

        v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
        if (v29 <= 1)
        {
          v30 = 1;
        }

        else
        {
          v30 = v29;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71F0, &qword_1A79405C0);
        v31 = swift_allocObject();
        v32 = 2 * _swift_stdlib_malloc_size(v31) - 64;
        v31[2] = v30;
        v31[3] = v32;
        v33 = (v31 + 4);
        v34 = v22[3] >> 1;
        if (v22[2])
        {
          if (v31 != v22 || v33 >= v22 + v34 + 32)
          {
            memmove(v31 + 4, v22 + 4, v34);
          }

          v22[2] = 0;
        }

        v24 = (v33 + v34);
        v23 = (v32 >> 1) - v34;

        v22 = v31;
      }

      v9 = __OFSUB__(v23--, 1);
      if (v9)
      {
        break;
      }

      *v24++ = v26;
      if (!--v21)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_46:

  v36 = v22[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v9 = __OFSUB__(v37, v23);
    v38 = v37 - v23;
    if (v9)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v22[2] = v38;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v22;
}

void *sub_1A791AEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v25[0] = a1;
  v25[1] = a2;
  v26[0] = a3;
  v3 = sub_1A78BDB94(v25, v26 + 4);
  v4 = v3[2];
  v5 = MEMORY[0x1E69E7CC0];
  v6 = 0;
  if (v4)
  {
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = (v3 + 4);
    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      if (!v6)
      {
        v11 = v5[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71F0, &qword_1A79405C0);
        v14 = swift_allocObject();
        v15 = 2 * _swift_stdlib_malloc_size(v14) - 64;
        v14[2] = v13;
        v14[3] = v15;
        v16 = (v14 + 4);
        v17 = v5[3] >> 1;
        if (v5[2])
        {
          if (v14 != v5 || v16 >= v5 + v17 + 32)
          {
            memmove(v14 + 4, v5 + 4, v17);
          }

          v5[2] = 0;
        }

        v7 = (v16 + v17);
        v6 = (v15 >> 1) - v17;

        v5 = v14;
      }

      v19 = __OFSUB__(v6--, 1);
      if (v19)
      {
        break;
      }

      *v7++ = v9;
      if (!--v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_19:

  v20 = v5[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v19 = __OFSUB__(v21, v6);
    v22 = v21 - v6;
    if (v19)
    {
      goto LABEL_25;
    }

    v5[2] = v22;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

void *sub_1A791B090(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v24[0] = a1;
  v24[1] = a2;
  v2 = sub_1A78BDB94(v24, &v25);
  v3 = v2[2];
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 0;
  if (v3)
  {
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    v7 = (v2 + 4);
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if (!v5)
      {
        v10 = v4[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71F0, &qword_1A79405C0);
        v13 = swift_allocObject();
        v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
        v13[2] = v12;
        v13[3] = v14;
        v15 = (v13 + 4);
        v16 = v4[3] >> 1;
        if (v4[2])
        {
          if (v13 != v4 || v15 >= v4 + v16 + 32)
          {
            memmove(v13 + 4, v4 + 4, v16);
          }

          v4[2] = 0;
        }

        v6 = (v15 + v16);
        v5 = (v14 >> 1) - v16;

        v4 = v13;
      }

      v18 = __OFSUB__(v5--, 1);
      if (v18)
      {
        break;
      }

      *v6++ = v8;
      if (!--v3)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_19:

  v19 = v4[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v18 = __OFSUB__(v20, v5);
    v21 = v20 - v5;
    if (v18)
    {
      goto LABEL_25;
    }

    v4[2] = v21;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v4;
}