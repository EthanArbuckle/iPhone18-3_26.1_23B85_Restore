uint64_t _nw_endpoint_get_logging_description_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network8Endpoint_context];
  v2 = a1;
  sensitive_redacted = nw_context_get_sensitive_redacted(v1);
  if ((*&v2[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x80) != 0 || (sensitive_redacted & 1) == 0)
  {
    v4 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    os_unfair_lock_lock((*&v2[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
    sub_181C225C0(v2, &v7);
  }

  else
  {
    v4 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    os_unfair_lock_lock((*&v2[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
    sub_181AB6530(v2, &v7);
  }

  os_unfair_lock_unlock((*&v2[v4] + 16));

  v5 = v7;

  return v5 + 24;
}

uint64_t sub_181AB6530@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_flags);
  if ((v4 & 0x40) == 0)
  {
    *(a1 + OBJC_IVAR____TtC7Network8Endpoint_flags) = v4 | 0x40;
  }

  v5 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (*(v6 + 16) && (v7 = sub_181A41ED0(1), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    *a2 = v9;
  }

  else
  {
    swift_endAccess();
    v11 = sub_181B52D70();
    v13 = sub_181AB284C(v11, v12);
    swift_beginAccess();
    sub_181B4C354(v13, 1);
    swift_endAccess();

    swift_beginAccess();
    v14 = *(a1 + v5);
    if (*(v14 + 16) && (v15 = sub_181A41ED0(1), (v16 & 1) != 0))
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      swift_endAccess();

      *a2 = v17;
    }

    else
    {
      result = swift_endAccess();
      __break(1u);
    }
  }

  return result;
}

uint64_t Parameters.init(from:shallowCopy:)@<X0>(void *__src@<X0>, char a2@<W1>, void *a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  *&__srca[8] = 0;
  *__srca = 0;
  __srca[16] = 1;
  *&__srca[25] = 0;
  *&__srca[17] = 0;
  __srca[33] = 1;
  memset(&__srca[36], 0, 32);
  __srca[68] = 1;
  sub_181A53D78(&__srca[128]);
  *&__srca[328] = 0;
  *&__srca[336] = 0xF000000000000000;
  v64[8] = *&__srca[256];
  v64[9] = *&__srca[272];
  v64[10] = *&__srca[288];
  v64[4] = *&__srca[192];
  v64[5] = *&__srca[208];
  v64[6] = *&__srca[224];
  v64[7] = *&__srca[240];
  v64[0] = *&__srca[128];
  v64[1] = *&__srca[144];
  v64[2] = *&__srca[160];
  v64[3] = *&__srca[176];
  sub_181F481DC(__dst, v61);
  sub_181A41E7C(v64);
  sub_181D9D680(0, 0xF000000000000000);
  v5 = *&__dst[344];
  memcpy(__srca, __dst, sizeof(__srca));
  if (a2)
  {
    type metadata accessor for ProtocolStack();
    swift_allocObject();

    v7 = sub_181D384EC(v6);
    sub_181F48214(__dst);

    *&__srca[344] = v7;
  }

  else
  {
    v8 = *&__dst[360];
    v57 = *&__dst[256];
    v58 = *&__dst[272];
    v59 = *&__dst[288];
    v53 = *&__dst[192];
    v54 = *&__dst[208];
    v55 = *&__dst[224];
    v56 = *&__dst[240];
    v49 = *&__dst[128];
    v50 = *&__dst[144];
    v51 = *&__dst[160];
    v52 = *&__dst[176];
    sub_181A41E20(&__dst[128], &v48);
    sub_181AB73E4(&v49, v60);
    v61[8] = *&__srca[256];
    v61[9] = *&__srca[272];
    v61[10] = *&__srca[288];
    v61[4] = *&__srca[192];
    v61[5] = *&__srca[208];
    v61[6] = *&__srca[224];
    v61[7] = *&__srca[240];
    v61[0] = *&__srca[128];
    v61[1] = *&__srca[144];
    v61[2] = *&__srca[160];
    v61[3] = *&__srca[176];
    sub_181A41E7C(v61);
    *&__srca[256] = v60[8];
    *&__srca[272] = v60[9];
    *&__srca[288] = v60[10];
    *&__srca[192] = v60[4];
    *&__srca[208] = v60[5];
    *&__srca[224] = v60[6];
    *&__srca[240] = v60[7];
    *&__srca[128] = v60[0];
    *&__srca[144] = v60[1];
    *&__srca[160] = v60[2];
    *&__srca[176] = v60[3];
    type metadata accessor for ProtocolStack();
    swift_allocObject();
    *&__srca[344] = sub_181AB6BD4(v5);
    if (v8)
    {
      v9 = v8[2];
      v10 = v8[3];
      v11 = v8[4];
      v12 = v8[5];
      type metadata accessor for Parameters.ProxyValues.ProxyValuesBacking();
      v13 = swift_allocObject();
      v13[2] = v9;
      v13[3] = v10;
      v13[4] = v11;
      v13[5] = v12;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();

      *&__srca[360] = v13;
      v14 = v8[2];
      if (v14)
      {
        v46 = a3;

        v13[2] = *sub_182AD2388();

        v15 = v14[4];
        if (v14[2] >= v14[3] + v15)
        {
          v16 = v14[3] + v15;
        }

        else
        {
          v16 = v14[2];
        }

        *&v49 = v14;
        *(&v49 + 1) = v15;
        *&v50 = v16;

        v17 = v14;
        while (1)
        {
          if (v15 == v16)
          {
            if ((sub_181F47FDC() & 1) == 0)
            {

              a3 = v46;
              v39 = *&__dst[368];
              if (*&__dst[368])
              {
                goto LABEL_31;
              }

LABEL_33:
              v41 = 0;
              goto LABEL_34;
            }

            v15 = *(&v49 + 1);
            v17 = v49;
          }

          v18 = v15 + 1;
          *(&v49 + 1) = v15 + 1;
          v19 = &v17[2 * v15];
          v20 = v19[5];
          v21 = v19[6];
          ObjectType = swift_getObjectType();
          v48 = v20;
          v23 = *(v21 + 8);
          v24 = *(v23 + 32);
          swift_unknownObjectRetain();
          result = v24(&v47, ObjectType, v23);
          v26 = v47;
          v27 = v13[2];
          v48 = v27;
          if (v27)
          {
            v28 = v27[3];
            v29 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
              return result;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if (v27[2] < v29 || (result & 1) == 0)
            {
              result = sub_181B3CD80(result, v29);
              v27 = v48;
            }

            v30 = v27[3];
            v31 = v27[4];
            v34 = __OFADD__(v31, v30);
            v32 = v31 + v30;
            if (v34)
            {
              goto LABEL_43;
            }

            if (v30 < 0)
            {
              if (v32 < 0)
              {
                v36 = v27[2];
                v34 = __OFADD__(v32, v36);
                v32 += v36;
                if (v34)
                {
                  goto LABEL_46;
                }
              }
            }

            else
            {
              v33 = v27[2];
              v34 = __OFSUB__(v32, v33);
              v35 = v32 - v33;
              if (v35 < 0 == v34)
              {
                v32 = v35;
                if (v34)
                {
                  goto LABEL_45;
                }
              }
            }

            v37 = &v27[2 * v32];
            v37[5] = v26;
            v37[6] = v21;
            v34 = __OFADD__(v30, 1);
            v38 = v30 + 1;
            if (v34)
            {
              goto LABEL_44;
            }

            v27[3] = v38;
            swift_unknownObjectRelease();
            v13[2] = v27;
          }

          else
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v13[2] = 0;
          }

          v16 = v50;
          v15 = v18;
        }
      }
    }

    else
    {
      *&__srca[360] = 0;
    }

    v39 = *&__dst[368];
    if (!*&__dst[368])
    {
      goto LABEL_33;
    }

LABEL_31:
    v40 = v39;
    v41 = sub_181B440D4();

LABEL_34:
    *&__srca[368] = v41;
    if (*&__dst[376])
    {
      v42 = *&__dst[376];
      v43 = sub_181B440D4();
    }

    else
    {
      v43 = 0;
    }

    v44 = *&__dst[384];
    *&__srca[376] = v43;
    if (*&__dst[384])
    {
      swift_unknownObjectRetain();
      sub_181F48214(__dst);
      v45 = xpc_copy(v44);
      swift_unknownObjectRelease();
      if (v45)
      {
        swift_unknownObjectRelease();
        *&__srca[384] = v45;
      }
    }

    else
    {
      sub_181F48214(__dst);
    }
  }

  return memcpy(a3, __srca, 0x188uLL);
}

uint64_t sub_181AB6BD4(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = xmmword_182AE3C80;
  *(v1 + 56) = xmmword_182AE6A00;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = xmmword_182AE3C90;
  v79 = (v1 + 16);
  *(v1 + 104) = 0xF000000000000007;
  v3 = sub_181AC9084();
  v4 = v3;
  v5 = v3[4];
  v6 = v3[3] + v5;
  if (v3[2] < v6)
  {
    v6 = v3[2];
  }

  *&v84 = v3;
  *(&v84 + 1) = v5;
  v85 = v6;
  if (v5 == v6)
  {
LABEL_4:
    if (sub_181AC81FC(v3))
    {
      v5 = *(&v84 + 1);
      v4 = v84;
      goto LABEL_6;
    }

    v30 = sub_181A54748();
    v31 = v30;
    v32 = v30[4];
    v33 = v30[3] + v32;
    if (v30[2] < v33)
    {
      v33 = v30[2];
    }

    *&v84 = v30;
    *(&v84 + 1) = v32;
    v85 = v33;
    if (v32 == v33)
    {
LABEL_28:
      if (sub_181AC81FC(v30))
      {
        v32 = *(&v84 + 1);
        v31 = v84;
        goto LABEL_30;
      }

      v56 = a1;
      ProtocolStack.transport.getter(&v84);
      v57 = *(&v84 + 1);
      if ((~*(&v84 + 1) & 0xF000000000000007) != 0)
      {
        v58 = v84;
        sub_181B48EF4(&v84);
        v59 = v58;
        v56 = a1;
        sub_181A53008(v59, v57);
        v60 = v2[4];
        v61 = v2[5];
        *(v2 + 2) = v84;
        sub_181A5301C(v60, v61);
      }

      if ((~v56[13] & 0xF000000000000007) != 0)
      {
        sub_181B48EF4(&v84);
        v62 = v2[12];
        v63 = v2[13];
        *(v2 + 6) = v84;
        sub_181A53008(v62, v63);
      }

      if ((~v56[11] & 0xF000000000000007) != 0)
      {
        sub_181B48EF4(&v84);
        v64 = v2[10];
        v65 = v2[11];
        *(v2 + 5) = v84;
        sub_181A53008(v64, v65);
      }

      swift_beginAccess();
      v66 = v56;
      v67 = v56[7];
      if ((~v67 & 0xF000000000000007) != 0)
      {
        v68 = v66[6];
        if (v67 >> 62)
        {
          if (v67 >> 62 == 1)
          {
            ObjectType = swift_getObjectType();
            (*(*((v67 & 0x3FFFFFFFFFFFFFFFLL) + 8) + 32))(v83, ObjectType);
            v68 = v83[0];
            v67 = v67 & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
          swift_allocObject();
          sub_181B2C3E0(v68, v67);
          v70 = sub_181C0799C(v68);
          sub_181A52FE0(v68, v67);
          v67 = 0;
          v68 = v70;
        }

        swift_beginAccess();
        v71 = v2[6];
        v72 = v2[7];
        v2[6] = v68;
        v2[7] = v67;
        sub_181A52FE0(v71, v72);
      }

      ProtocolStack.link.getter(v83);
      v73 = v83[0];
      if (v83[0] == 1)
      {
      }

      else
      {
        v74 = v83[1];
        if (v83[0])
        {
          v75 = swift_getObjectType();
          v83[0] = v73;
          (*(*(v74 + 8) + 32))(&v82, v75);

          sub_181B03DAC(v73);
          v76 = v82;
        }

        else
        {

          v76 = 0;
        }

        v77 = v2[8];
        v2[8] = v76;
        v2[9] = v74;
        sub_181AC3890(v77);
      }

      return v2;
    }

    while (1)
    {
LABEL_30:
      v34 = v32 + 1;
      *(&v84 + 1) = v32 + 1;
      v35 = &v31[2 * v32];
      v37 = v35[5];
      v36 = v35[6];
      if (v36 >> 62)
      {
        v38 = v35[5];
        v39 = v35[6];
        if (v36 >> 62 == 1)
        {
          v40 = swift_getObjectType();
          v41 = *((v36 & 0x3FFFFFFFFFFFFFFFLL) + 8);
          v42 = *(v41 + 32);
          swift_unknownObjectRetain();
          v42(v83, v40, v41);
          v38 = v83[0];
          v39 = v36 & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
        swift_allocObject();

        v38 = sub_181CC4ED8(v43);
        v39 = 0;
      }

      result = sub_181A54748();
      v81 = result;
      v44 = *(result + 24);
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      v46 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (v46[2] < v45 || (result & 1) == 0)
      {
        result = sub_181B2C3FC(result, v45);
        v46 = v81;
      }

      v47 = v46[3];
      v48 = v46[4];
      v25 = __OFADD__(v48, v47);
      v49 = v48 + v47;
      if (v25)
      {
        goto LABEL_72;
      }

      if (v47 < 0)
      {
        if (v49 < 0)
        {
          v53 = v46[2];
          v25 = __OFADD__(v49, v53);
          v49 += v53;
          if (v25)
          {
            goto LABEL_77;
          }
        }
      }

      else
      {
        v50 = v46[2];
        v51 = __OFSUB__(v49, v50);
        v52 = v49 - v50;
        if (v52 < 0 == v51)
        {
          v49 = v52;
          if (v51)
          {
            goto LABEL_75;
          }
        }
      }

      v54 = &v46[2 * v49];
      v54[5] = v38;
      v54[6] = v39;
      v25 = __OFADD__(v47, 1);
      v55 = v47 + 1;
      if (v25)
      {
        goto LABEL_73;
      }

      v46[3] = v55;
      sub_181B2C3E0(v38, v39);
      sub_181AAD084(v37, v36);
      sub_181AAD084(v38, v39);
      v2[3] = v46;

      v32 = v34;
      if (v34 == v85)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_6:
      v7 = v5 + 1;
      *(&v84 + 1) = v5 + 1;
      v8 = &v4[2 * v5];
      v10 = v8[5];
      v9 = v8[6];
      if (v9 >> 62)
      {
        v11 = v8[5];
        v12 = v8[6];
        if (v9 >> 62 == 1)
        {
          v13 = swift_getObjectType();
          v14 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 8);
          v15 = *(v14 + 32);
          swift_unknownObjectRetain();
          v15(v83, v13, v14);
          v11 = v83[0];
          v12 = v9 & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
        swift_allocObject();

        v11 = sub_181CC4ED8(v16);
        v12 = 0;
      }

      result = sub_181AC9084();
      v80 = result;
      v18 = *(result + 24);
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v20 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (v20[2] < v19 || (result & 1) == 0)
      {
        result = sub_181B2C3FC(result, v19);
        v20 = v80;
      }

      v21 = v20[3];
      v22 = v20[4];
      v25 = __OFADD__(v22, v21);
      v23 = v22 + v21;
      if (v25)
      {
        goto LABEL_69;
      }

      if (v21 < 0)
      {
        if (v23 < 0)
        {
          v27 = v20[2];
          v25 = __OFADD__(v23, v27);
          v23 += v27;
          if (v25)
          {
            goto LABEL_76;
          }
        }
      }

      else
      {
        v24 = v20[2];
        v25 = __OFSUB__(v23, v24);
        v26 = v23 - v24;
        if (v26 < 0 == v25)
        {
          v23 = v26;
          if (v25)
          {
            goto LABEL_74;
          }
        }
      }

      v28 = &v20[2 * v23];
      v28[5] = v11;
      v28[6] = v12;
      v25 = __OFADD__(v21, 1);
      v29 = v21 + 1;
      if (v25)
      {
        goto LABEL_70;
      }

      v20[3] = v29;
      sub_181B2C3E0(v11, v12);
      sub_181AAD084(v10, v9);
      sub_181AAD084(v11, v12);
      *v79 = v20;

      v5 = v7;
      if (v7 == v85)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_181AB7264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_181AB72C4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  type metadata accessor for PathParameters.ProtocolValues.ProtocolValuesBacking();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_182AE3CC0;
  *(v8 + 32) = xmmword_182AE3CC0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = 1;
  v12[0] = v1;
  v12[1] = v2;
  v12[2] = v3;
  v12[3] = v4;
  v12[4] = v5;
  v12[5] = v6;
  v12[6] = v7;
  sub_181AC8268(v1, v2);
  sub_181B687F0(v3, v4);
  sub_181AB78DC(v5);

  sub_18226B9B0(v12, v13);

  v9 = v14;
  v10 = v13[1];
  *(v8 + 16) = v13[0];
  *(v8 + 32) = v10;
  *(v8 + 48) = v13[2];
  *(v8 + 64) = v9;
  sub_181A53008(0, 0xF000000000000007);
  sub_181A52FE0(0, 0xF000000000000007);
  sub_181B03DAC(1);
  return v8;
}

uint64_t sub_181AB73E4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v68 = a1[8];
  v69 = v3;
  v70 = a1[10];
  v4 = a1[5];
  v64 = a1[4];
  v65 = v4;
  v5 = a1[7];
  v66 = a1[6];
  v67 = v5;
  v6 = a1[1];
  v60 = *a1;
  v61 = v6;
  v7 = a1[3];
  v62 = a1[2];
  v63 = v7;
  v58 = 1;
  v57 = 0;
  if (nw_is_dispatch_allowed())
  {
    if (qword_1ED4106F0 != -1)
    {
      swift_once();
    }

    LODWORD(v8) = qword_1ED410700;
    LODWORD(v9) = HIDWORD(qword_1ED410700);
    v59[0] = xmmword_1ED410708;
  }

  else
  {
    v8 = sub_181A543CC(v59);
    v9 = HIDWORD(v8);
  }

  v10 = v59[0];
  v59[1] = v59[0];
  v11 = v58;
  v12 = v57;
  *a2 = v59[0];
  *(a2 + 16) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v11;
  *(a2 + 56) = 0;
  *(a2 + 64) = v12;
  *(a2 + 68) = v8;
  *(a2 + 72) = v9;
  *(a2 + 76) = 0;
  *(a2 + 80) = 1285;
  *(a2 + 84) = 1285;
  *(a2 + 86) = 0;
  *(a2 + 96) = 0u;
  v13 = (a2 + 96);
  *(a2 + 144) = 0;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  if (qword_1ED4107E8 != -1)
  {
    swift_once();
  }

  *(a2 + 152) = qword_1ED411E40;
  *(a2 + 160) = 0;
  v14 = (a2 + 160);
  *(a2 + 168) = 0;
  v15 = *(a2 + 80);
  v56[4] = *(a2 + 64);
  v56[5] = v15;
  v16 = *(a2 + 112);
  v56[6] = *(a2 + 96);
  v56[7] = v16;
  v17 = *(a2 + 16);
  v56[0] = *a2;
  v56[1] = v17;
  v18 = *(a2 + 48);
  v56[2] = *(a2 + 32);
  v56[3] = v18;
  v19 = *(a2 + 160);
  v20 = *(a2 + 144);
  v56[8] = *(a2 + 128);
  v56[9] = v20;
  v56[10] = v19;
  v21 = v66;
  v22 = v69;
  *(a2 + 128) = v68;
  *(a2 + 144) = v22;
  *(a2 + 160) = v70;
  v23 = v65;
  *(a2 + 64) = v64;
  *(a2 + 80) = v23;
  v24 = v67;
  *(a2 + 96) = v66;
  *(a2 + 112) = v24;
  v25 = v61;
  *a2 = v60;
  *(a2 + 16) = v25;
  v26 = v63;
  *(a2 + 32) = v62;
  *(a2 + 48) = v26;

  sub_181A41E20(&v60, v54);
  sub_181A41E7C(v56);
  if (v21)
  {
    v27 = *(v21 + 128);
    v50 = *(v21 + 112);
    v51 = v27;
    v52 = *(v21 + 144);
    v53 = *(v21 + 160);
    v28 = *(v21 + 64);
    v46 = *(v21 + 48);
    v47 = v28;
    v29 = *(v21 + 96);
    v48 = *(v21 + 80);
    v49 = v29;
    v30 = *(v21 + 32);
    v44 = *(v21 + 16);
    v45 = v30;
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v31 = swift_allocObject();
    *(v31 + 112) = 0u;
    *(v31 + 128) = 0u;
    *(v31 + 144) = 0;
    *(v31 + 48) = 0u;
    *(v31 + 64) = 0u;
    *(v31 + 80) = 0u;
    *(v31 + 96) = 0u;
    *(v31 + 16) = 0u;
    *(v31 + 32) = 0u;
    *(v31 + 152) = 1;
    *(v31 + 160) = 0;
    v55 = 0;
    v32 = *(v31 + 128);
    v54[6] = *(v31 + 112);
    v54[7] = v32;
    v54[8] = *(v31 + 144);
    v33 = *(v31 + 64);
    v54[2] = *(v31 + 48);
    v54[3] = v33;
    v34 = *(v31 + 96);
    v54[4] = *(v31 + 80);
    v54[5] = v34;
    v35 = *(v31 + 32);
    v54[0] = *(v31 + 16);
    v54[1] = v35;
    v36 = v51;
    *(v31 + 112) = v50;
    *(v31 + 128) = v36;
    *(v31 + 144) = v52;
    *(v31 + 160) = v53;
    v37 = v47;
    *(v31 + 48) = v46;
    *(v31 + 64) = v37;
    v38 = v49;
    *(v31 + 80) = v48;
    *(v31 + 96) = v38;
    v39 = v45;
    *(v31 + 16) = v44;
    *(v31 + 32) = v39;
    sub_181D09728(&v44, v43);
    sub_181D09760(v54);
  }

  else
  {
    v31 = 0;
  }

  *v13 = v31;

  v41 = sub_181AB72C4(v40);
  sub_181A41E7C(&v60);

  *v14 = v41;
  return result;
}

void sub_181AB76EC(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[8 * v4];
  if (v12 != __dst || &v12[8 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 8 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[8 * v8];
  if (v16 != v11 || v16 >= &v11[8 * v7])
  {

    memmove(v16, v11, 8 * v7);
  }
}

id _nw_path_copy_parameters(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  swift_beginAccess();
  v2 = objc_allocWithZone(type metadata accessor for ParametersStorage());

  v4 = sub_1821EE5B8(v3);
  swift_endAccess();

  return v4;
}

uint64_t sub_181AB78DC(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

NSObject *nw_path_copy_derived_parameters(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_parameters(v1);

    if (v3)
    {
      v4 = v2;
      v5 = _nw_path_copy_parameters(v4);

      v3 = _nw_parameters_copy(v5);
      if ((_nw_path_may_span_multiple_interfaces(v4) & 1) == 0)
      {
        v6 = v4;
        v7 = _nw_path_copy_scoped_interface(v6);

        if (v7)
        {
          nw_parameters_require_interface(v3, v7);
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_181AB79D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void nw_activity_complete_with_reason(void *a1, uint32_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_activity_complete_with_reason_and_underlying_error_string_internal(v3, a2, 0, 0, 0);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_activity_complete_with_reason";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_activity_complete_with_reason";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null activity", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_activity_complete_with_reason";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_activity_complete_with_reason";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null activity, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_activity_complete_with_reason";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void ___ZL69nw_activity_complete_with_reason_and_underlying_error_string_internalP22NWConcrete_nw_activity31nw_activity_completion_reason_tPKcii_block_invoke(uint64_t a1)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 140) & 4) == 0)
  {
    v11 = __nwlog_obj();
    *buf = 136446466;
    v26 = "nw_activity_complete_with_reason_and_underlying_error_string_internal_block_invoke";
    v27 = 2082;
    v28 = "Cannot complete activity before activation";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v12, &type, &v23))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v26 = "nw_activity_complete_with_reason_and_underlying_error_string_internal_block_invoke";
        v27 = 2082;
        v28 = "Cannot complete activity before activation";
        v15 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_43:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0x16u);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v20 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446722;
          v26 = "nw_activity_complete_with_reason_and_underlying_error_string_internal_block_invoke";
          v27 = 2082;
          v28 = "Cannot complete activity before activation";
          v29 = 2082;
          v30[0] = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(backtrace_string);
LABEL_45:
        if (!v12)
        {
LABEL_47:
          *(*(*(a1 + 40) + 8) + 24) = 0;
          return;
        }

LABEL_46:
        free(v12);
        goto LABEL_47;
      }

      if (v20)
      {
        *buf = 136446466;
        v26 = "nw_activity_complete_with_reason_and_underlying_error_string_internal_block_invoke";
        v27 = 2082;
        v28 = "Cannot complete activity before activation";
        v15 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_43;
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v26 = "nw_activity_complete_with_reason_and_underlying_error_string_internal_block_invoke";
        v27 = 2082;
        v28 = "Cannot complete activity before activation";
        v15 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
        goto LABEL_43;
      }
    }

LABEL_44:

    goto LABEL_45;
  }

  if ((*(v2 + 140) & 8) != 0)
  {
    v16 = __nwlog_obj();
    *buf = 136446466;
    v26 = "nw_activity_complete_with_reason_and_underlying_error_string_internal_block_invoke";
    v27 = 2082;
    v28 = "Cannot complete activity more than once";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v12, &type, &v23))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v26 = "nw_activity_complete_with_reason_and_underlying_error_string_internal_block_invoke";
        v27 = 2082;
        v28 = "Cannot complete activity more than once";
        v15 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
        goto LABEL_43;
      }
    }

    else
    {
      if (v23 == 1)
      {
        v21 = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v22 = os_log_type_enabled(v13, type);
        if (v21)
        {
          if (v22)
          {
            *buf = 136446722;
            v26 = "nw_activity_complete_with_reason_and_underlying_error_string_internal_block_invoke";
            v27 = 2082;
            v28 = "Cannot complete activity more than once";
            v29 = 2082;
            v30[0] = v21;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v21);
          if (!v12)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

        if (!v22)
        {
          goto LABEL_44;
        }

        *buf = 136446466;
        v26 = "nw_activity_complete_with_reason_and_underlying_error_string_internal_block_invoke";
        v27 = 2082;
        v28 = "Cannot complete activity more than once";
        v15 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_43;
      }

      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v26 = "nw_activity_complete_with_reason_and_underlying_error_string_internal_block_invoke";
        v27 = 2082;
        v28 = "Cannot complete activity more than once";
        v15 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
        goto LABEL_43;
      }
    }

    goto LABEL_44;
  }

  *(v2 + 140) |= 8u;
  v3 = *(a1 + 48);
  if (!v3)
  {
    *(*(a1 + 32) + 124) = *(a1 + 56);
LABEL_12:
    *(*(a1 + 32) + 128) = *(a1 + 60);
    return;
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  v6 = strndup(v3, 0x100uLL);
  if (v6)
  {
    *(v4 + 72) = v6;
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v17 = __nwlog_obj();
  os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v26 = "strict_strndup";
  v18 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v18))
  {
    free(v18);
    *(*(a1 + 32) + 72) = 0;
    if (!v5)
    {
LABEL_7:
      if (*(a1 + 56))
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = *(a1 + 32);
          v9 = *(a1 + 56);
          v10 = *(a1 + 48);
          *buf = 136446978;
          v26 = "nw_activity_complete_with_reason_and_underlying_error_string_internal_block_invoke";
          v27 = 2112;
          v28 = v8;
          v29 = 1024;
          LODWORD(v30[0]) = v9;
          WORD2(v30[0]) = 2080;
          *(v30 + 6) = v10;
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %@ ignoring error domain %d because error domain string %s is set", buf, 0x26u);
        }
      }

      goto LABEL_12;
    }

LABEL_6:
    free(v5);
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t nw_activity_duration_exceeds_threshold(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_activity_duration_exceeds_threshold";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v11, &type, &v28))
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_activity_duration_exceeds_threshold";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null activity", buf, 0xCu);
      }

      goto LABEL_71;
    }

    if (v28 != 1)
    {
      v12 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_activity_duration_exceeds_threshold";
        _os_log_impl(&dword_181A37000, v12, v25, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_71;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v19 = type;
    v20 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v31 = "nw_activity_duration_exceeds_threshold";
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null activity, no backtrace", buf, 0xCu);
      }

      goto LABEL_71;
    }

    if (v20)
    {
      *buf = 136446466;
      v31 = "nw_activity_duration_exceeds_threshold";
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_53;
  }

  if ((v1[140] & 4) == 0)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_activity_duration_exceeds_threshold";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v11, &type, &v28))
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_activity_duration_exceeds_threshold";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s Activity not activated, cannot check duration threshold", buf, 0xCu);
      }

      goto LABEL_71;
    }

    if (v28 != 1)
    {
      v12 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_activity_duration_exceeds_threshold";
        _os_log_impl(&dword_181A37000, v12, v26, "%{public}s Activity not activated, cannot check duration threshold, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_71;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v21 = type;
    v22 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v31 = "nw_activity_duration_exceeds_threshold";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s Activity not activated, cannot check duration threshold, no backtrace", buf, 0xCu);
      }

      goto LABEL_71;
    }

    if (v22)
    {
      *buf = 136446466;
      v31 = "nw_activity_duration_exceeds_threshold";
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v21, "%{public}s Activity not activated, cannot check duration threshold, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_53;
  }

  if ((v1[140] & 8) == 0)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_activity_duration_exceeds_threshold";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v11, &type, &v28))
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_activity_duration_exceeds_threshold";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s Activity not completed, cannot check duration threshold", buf, 0xCu);
      }

LABEL_71:

LABEL_72:
      if (v11)
      {
        free(v11);
      }

      goto LABEL_17;
    }

    if (v28 != 1)
    {
      v12 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_activity_duration_exceeds_threshold";
        _os_log_impl(&dword_181A37000, v12, v27, "%{public}s Activity not completed, cannot check duration threshold, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_71;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v23 = type;
    v24 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        v31 = "nw_activity_duration_exceeds_threshold";
        _os_log_impl(&dword_181A37000, v12, v23, "%{public}s Activity not completed, cannot check duration threshold, no backtrace", buf, 0xCu);
      }

      goto LABEL_71;
    }

    if (v24)
    {
      *buf = 136446466;
      v31 = "nw_activity_duration_exceeds_threshold";
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s Activity not completed, cannot check duration threshold, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_53:

    free(backtrace_string);
    goto LABEL_72;
  }

  if ((v1[140] & 2) != 0)
  {
    if (__nwlog_activity_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
    }

    v8 = gactivityLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v31 = v2;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "Not checking duration threshold for lightweight activity %{public}@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  duration = nw_activity_get_duration(v1);
  v4 = nw_activity_duration_threshold_for_label(v2[29], v2[28]);
  if (v4 == -1)
  {
    if (__nwlog_activity_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
    }

    v8 = gactivityLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v31 = v2;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "No threshold for activity %{public}@", buf, 0xCu);
    }

LABEL_16:

    goto LABEL_17;
  }

  if (duration <= v4)
  {
LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  v5 = v4;
  if (__nwlog_activity_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
  }

  v6 = gactivityLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v31 = v2;
    v32 = 2048;
    v33 = duration;
    v34 = 2048;
    v35 = v5;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}@ over threshold (duration %llums exceeds threshold %llums)", buf, 0x20u);
  }

  v7 = 1;
LABEL_18:

  return v7;
}

uint64_t nw_activity_duration_threshold_for_label(int a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!nw_activity_label_is_valid(a1, a2))
  {
    if (__nwlog_activity_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
    }

    v4 = gactivityLogObj;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    LOWORD(v13) = 0;
    v6 = "Returning NW_ACTIVITY_DURATION_INVALID for invalid label";
    v7 = v4;
    v8 = 2;
    goto LABEL_12;
  }

  if (a1 == 11 && a2 == 5)
  {
    if (__nwlog_activity_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
    }

    v4 = gactivityLogObj;
    v5 = 2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v13 = 134218242;
      v5 = 2;
      v14 = 2;
      v15 = 2082;
      v16 = "libnetcore:test_activity_five";
LABEL_25:
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "Returning threshold %llu for activity %{public}s", &v13, 0x16u);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v10 = a1 == 11 && a2 == 6;
  if (__nwlog_activity_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
  }

  v4 = gactivityLogObj;
  v11 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    v13 = 136446210;
    v14 = nw_activity_domain_and_label_to_string(a1, a2);
    v6 = "No threshold for %{public}s, returning NW_ACTIVITY_DURATION_INVALID";
    v7 = v4;
    v8 = 12;
LABEL_12:
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, v6, &v13, v8);
LABEL_13:
    v5 = -1;
    goto LABEL_26;
  }

  v5 = 200000;
  if (v11)
  {
    v13 = 134218242;
    v14 = 200000;
    v15 = 2082;
    v16 = "libnetcore:test_activity_six";
    goto LABEL_25;
  }

LABEL_26:

  return v5;
}

uint64_t nw_activity_get_duration(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_activity_get_duration";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v7, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "nw_activity_get_duration";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null activity", buf, 0xCu);
        }
      }

      else if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v12 = type;
        v13 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            v18 = "nw_activity_get_duration";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_34;
        }

        if (v13)
        {
          *buf = 136446210;
          v18 = "nw_activity_get_duration";
          _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null activity, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "nw_activity_get_duration";
          _os_log_impl(&dword_181A37000, v8, v14, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_34:
    if (v7)
    {
      free(v7);
    }

    goto LABEL_36;
  }

  if ((*(v1 + 140) & 8) == 0)
  {
    if (__nwlog_activity_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
    }

    v10 = gactivityLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "Activity not yet complete, returning duration 0", buf, 2u);
    }

    goto LABEL_17;
  }

  if ((*(v1 + 140) & 2) != 0)
  {
    if (__nwlog_activity_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
    }

    v10 = gactivityLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "Activity is lightweight, returning duration 0", buf, 2u);
    }

LABEL_17:

LABEL_36:
    v4 = 0;
    goto LABEL_7;
  }

  v3 = nw_delta_nanos(v1[4], v1[5]);
  if (v3 <= 0xF423FFFFFFFFFLL)
  {
    v4 = (v3 / 0xF4240);
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

LABEL_7:

  return v4;
}

void nw_activity_complete_with_reason_and_underlying_error_string_internal(void *a1, uint32_t a2, uint64_t a3, int a4, int a5)
{
  v129 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL69nw_activity_complete_with_reason_and_underlying_error_string_internalP22NWConcrete_nw_activity31nw_activity_completion_reason_tPKcii_block_invoke;
  aBlock[3] = &unk_1E6A361C0;
  v10 = v9;
  v100 = v10;
  v101 = &v106;
  v102 = a3;
  v103 = a4;
  v104 = a5;
  v11 = _Block_copy(aBlock);
  v105 = v11;
  nw_synchronize<nw::unfair_mutex,void({block_pointer} {__strong})(void)>(v9 + 20, &v105);

  if ((v107[3] & 1) == 0)
  {
    goto LABEL_102;
  }

  v12 = v10;
  v13 = v12;
  if ((~LOBYTE(v12[35]._os_unfair_lock_opaque) & 0xC) == 0)
  {
    v14 = v12 + 2;
    if (!uuid_is_null(&v12[2]))
    {
      if (nw_activity_should_log(v13))
      {
        v15 = v13;
        if (uuid_is_null(&v13[2]))
        {
          v16 = nw_activity_signpost_id_fallback();
        }

        else
        {
          v16 = *(v15 + 2) ^ *&v14->_os_unfair_lock_opaque;
        }

        if (__nwlog_activity_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
        }

        v17 = gactivityLogObj;
        v18 = v17;
        if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
        {
          v20 = *(v15 + 28);
          v19 = *(v15 + 29);
          *buf = 67109890;
          *&buf[4] = v19;
          *&buf[8] = 1024;
          *&buf[10] = v20;
          *v119 = 1040;
          *&v119[2] = 16;
          *&v119[6] = 2096;
          *&v119[8] = v14;
          _os_signpost_emit_with_name_impl(&dword_181A37000, v18, OS_SIGNPOST_INTERVAL_END, v16, "nw_activity", "<%u:%u [%{uuid_t}.16P]>", buf, 0x1Eu);
        }
      }
    }
  }

  if (a2 <= 4u)
  {
    os_unfair_lock_lock(v13 + 26);
    v21 = *&v13[22]._os_unfair_lock_opaque;
    if ((v13[24]._os_unfair_lock_opaque & 1) != 0 && v21)
    {
      *&v13[22]._os_unfair_lock_opaque = 0;

      v21 = *&v13[22]._os_unfair_lock_opaque;
    }

    *&v13[22]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(v13 + 26);
    v22 = mach_continuous_time();
    if (v22 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    *&v13[10]._os_unfair_lock_opaque = v23;
    v13[34]._os_unfair_lock_opaque = a2;
    if (!nw_activity_should_log(v13))
    {
LABEL_38:
      v34 = v13;
      if (nw_activity_duration_exceeds_threshold(v34))
      {
        *v126 = 0;
        domain = nw_activity_get_domain(v34);
        asprintf(v126, "%u", domain);
        v116 = 0;
        label = nw_activity_get_label(v34);
        asprintf(&v116, "%u", label);
        if (__nwlog_activity_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
        }

        v37 = gactivityLogObj;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v34;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ over threshold, emitting signpost event", buf, 0xCu);
        }

        if (__nwlog_activity_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
        }

        v38 = gactivityLogObj;
        v39 = os_signpost_id_generate(v38);

        if (__nwlog_activity_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
        }

        v40 = gactivityLogObj;
        v41 = v40;
        if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
        {
          v42 = *v126;
          v43 = v116;
          duration = nw_activity_get_duration(v34);
          v45 = nw_activity_duration_threshold_for_label(v34[29], v34[28]);
          *buf = 136446978;
          *&buf[4] = v42;
          *&buf[12] = 2082;
          *v119 = v43;
          *&v119[8] = 2050;
          *&v119[10] = duration;
          *&v119[18] = 2050;
          *&v119[20] = v45;
          _os_signpost_emit_with_name_impl(&dword_181A37000, v41, OS_SIGNPOST_EVENT, v39, "nw_activity over threshold", " enableTelemetry=YES Activity <nw_activity %{public, signpost.telemetry:string1, name=ActivityDomain}s:%{public, signpost.telemetry:string2, name=ActivityLabel}s> over threshold (duration %{public, signpost.telemetry:number1, name=Duration}llums exceeds threshold %{public, signpost.telemetry:number2, name=Threshold}llums)", buf, 0x2Au);
        }

        if (*v126)
        {
          free(*v126);
          *v126 = 0;
        }

        if (v116)
        {
          free(v116);
        }
      }

      v46 = v34;
      v47 = v46;
      if ((~LOBYTE(v13[35]._os_unfair_lock_opaque) & 0xC) == 0)
      {
        if ((*(v46 + 17) & 1) == 0)
        {
LABEL_101:

          goto LABEL_102;
        }

        bzero(buf, 0x250uLL);
        v48 = v47;
        nw_activity_fill_out_activity_report(v48, &buf[8]);
        *buf = nw_activity_get_duration(v48);
        value = nw_activity_get_fragments_quenched(v48);
        value_4 = nw_activity_get_underlying_error_domain(v48);
        underlying_error_code = nw_activity_get_underlying_error_code(v48);
        completion_reason = nw_activity_get_completion_reason(v48);
        underlying_error_domain_string = nw_activity_get_underlying_error_domain_string(v48);
        if (underlying_error_domain_string)
        {
          v50 = 0;
          while (1)
          {
            v51 = *(underlying_error_domain_string + v50);
            v125[v50] = v51;
            if (!v51)
            {
              break;
            }

            if (++v50 == 255)
            {
              v125[255] = 0;
              break;
            }
          }
        }

        if (!os_variant_has_internal_diagnostics() || !networkd_settings_get_BOOL(nw_setting_activity_write_metric_stream_to_log))
        {
          if (nw_connection_get_symptom_reporter_handle::once != -1)
          {
            dispatch_once(&nw_connection_get_symptom_reporter_handle::once, &__block_literal_global_83286);
          }

          symptom_new();
          symptom_set_qualifier();
          symptom_set_additional_qualifier();
          symptom_send();
          goto LABEL_101;
        }

        v52 = v48;
        v53 = xpc_dictionary_create(0, 0, 0);
        v116 = v53;
        v117 = -1;
        if (v53)
        {
          activity_dictionary = nw_activity_create_activity_dictionary(v52, &buf[8]);
          *type = activity_dictionary;
          v114 = -1;
          if (activity_dictionary)
          {
            xpc_dictionary_set_value(v53, "activity", activity_dictionary);
            xpc_dictionary_set_uint64(v53, "durationMsecs", *buf);
            xpc_dictionary_set_uint64(v53, "fragmentsQuenched", value);
            v55 = v53;
            v56 = v55;
            if ((completion_reason - 1) > 3)
            {
              v57 = "invalid";
            }

            else
            {
              v57 = off_1E6A378D0[completion_reason - 1];
            }

            xpc_dictionary_set_string(v55, "completionReason", v57);

            xpc_dictionary_set_string(v56, "underlyingErrorDomainString", v125);
            xpc_dictionary_set_int64(v56, "underlyingErrorDomain", value_4);
            xpc_dictionary_set_int64(v56, "underlyingErrorCode", underlying_error_code);

LABEL_72:
            v110 = v56;
            v111 = -1;
            v116 = 0;
            if (nw_activity_metric_object_is_valid(v56, 0, &v116))
            {
              if (__nwlog_metricstream_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_metricstream_log::onceToken, &__block_literal_global_68);
              }

              v58 = gmetricstreamLogObj;
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                *v126 = 136446210;
                *&v126[4] = v116;
                _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEFAULT, "%{public}s", v126, 0xCu);
              }

LABEL_96:
              if (v116)
              {
                free(v116);
              }

              if (v56)
              {
              }

              goto LABEL_101;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v59 = gLogObj;
            *v126 = 136446210;
            *&v126[4] = "nw_activity_write_epilogue_report_to_log";
            v60 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            v115 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v60, type, &v115))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v61 = __nwlog_obj();
                v62 = type[0];
                if (os_log_type_enabled(v61, type[0]))
                {
                  *v126 = 136446210;
                  *&v126[4] = "nw_activity_write_epilogue_report_to_log";
                  _os_log_impl(&dword_181A37000, v61, v62, "%{public}s generated activity epilogue dictionary is not valid", v126, 0xCu);
                }
              }

              else if (v115 == OS_LOG_TYPE_INFO)
              {
                backtrace_string = __nw_create_backtrace_string();
                v61 = __nwlog_obj();
                v64 = type[0];
                v65 = os_log_type_enabled(v61, type[0]);
                if (backtrace_string)
                {
                  if (v65)
                  {
                    *v126 = 136446466;
                    *&v126[4] = "nw_activity_write_epilogue_report_to_log";
                    v127 = 2082;
                    v128 = backtrace_string;
                    _os_log_impl(&dword_181A37000, v61, v64, "%{public}s generated activity epilogue dictionary is not valid, dumping backtrace:%{public}s", v126, 0x16u);
                  }

                  free(backtrace_string);
                  goto LABEL_94;
                }

                if (v65)
                {
                  *v126 = 136446210;
                  *&v126[4] = "nw_activity_write_epilogue_report_to_log";
                  _os_log_impl(&dword_181A37000, v61, v64, "%{public}s generated activity epilogue dictionary is not valid, no backtrace", v126, 0xCu);
                }
              }

              else
              {
                v61 = __nwlog_obj();
                v66 = type[0];
                if (os_log_type_enabled(v61, type[0]))
                {
                  *v126 = 136446210;
                  *&v126[4] = "nw_activity_write_epilogue_report_to_log";
                  _os_log_impl(&dword_181A37000, v61, v66, "%{public}s generated activity epilogue dictionary is not valid, backtrace limit exceeded", v126, 0xCu);
                }
              }
            }

LABEL_94:
            if (v60)
            {
              free(v60);
            }

            goto LABEL_96;
          }

          v87 = __nwlog_obj();
          *v126 = 136446210;
          *&v126[4] = "nw_activity_create_epilogue_dictionary";
          v88 = _os_log_send_and_compose_impl();

          v115 = OS_LOG_TYPE_ERROR;
          v112 = 0;
          if (!__nwlog_fault(v88, &v115, &v112))
          {
            goto LABEL_174;
          }

          if (v115 == OS_LOG_TYPE_FAULT)
          {
            v89 = __nwlog_obj();
            v90 = v115;
            if (os_log_type_enabled(v89, v115))
            {
              *v126 = 136446210;
              *&v126[4] = "nw_activity_create_epilogue_dictionary";
              _os_log_impl(&dword_181A37000, v89, v90, "%{public}s failed to get activity dictionary", v126, 0xCu);
            }
          }

          else if (v112 == 1)
          {
            v94 = __nw_create_backtrace_string();
            v89 = __nwlog_obj();
            v95 = v115;
            v96 = os_log_type_enabled(v89, v115);
            if (v94)
            {
              if (v96)
              {
                *v126 = 136446466;
                *&v126[4] = "nw_activity_create_epilogue_dictionary";
                v127 = 2082;
                v128 = v94;
                _os_log_impl(&dword_181A37000, v89, v95, "%{public}s failed to get activity dictionary, dumping backtrace:%{public}s", v126, 0x16u);
              }

              free(v94);
              goto LABEL_174;
            }

            if (v96)
            {
              *v126 = 136446210;
              *&v126[4] = "nw_activity_create_epilogue_dictionary";
              _os_log_impl(&dword_181A37000, v89, v95, "%{public}s failed to get activity dictionary, no backtrace", v126, 0xCu);
            }
          }

          else
          {
            v89 = __nwlog_obj();
            v98 = v115;
            if (os_log_type_enabled(v89, v115))
            {
              *v126 = 136446210;
              *&v126[4] = "nw_activity_create_epilogue_dictionary";
              _os_log_impl(&dword_181A37000, v89, v98, "%{public}s failed to get activity dictionary, backtrace limit exceeded", v126, 0xCu);
            }
          }

LABEL_174:
          if (v88)
          {
            free(v88);
          }

LABEL_177:
          v56 = 0;
          goto LABEL_72;
        }

        v83 = __nwlog_obj();
        *v126 = 136446210;
        *&v126[4] = "nw_activity_create_epilogue_dictionary";
        v84 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v115 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v84, type, &v115))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v85 = __nwlog_obj();
            v86 = type[0];
            if (os_log_type_enabled(v85, type[0]))
            {
              *v126 = 136446210;
              *&v126[4] = "nw_activity_create_epilogue_dictionary";
              _os_log_impl(&dword_181A37000, v85, v86, "%{public}s failed to allocate dictionary", v126, 0xCu);
            }
          }

          else if (v115 == OS_LOG_TYPE_INFO)
          {
            v91 = __nw_create_backtrace_string();
            v85 = __nwlog_obj();
            v92 = type[0];
            v93 = os_log_type_enabled(v85, type[0]);
            if (v91)
            {
              if (v93)
              {
                *v126 = 136446466;
                *&v126[4] = "nw_activity_create_epilogue_dictionary";
                v127 = 2082;
                v128 = v91;
                _os_log_impl(&dword_181A37000, v85, v92, "%{public}s failed to allocate dictionary, dumping backtrace:%{public}s", v126, 0x16u);
              }

              free(v91);
              goto LABEL_169;
            }

            if (v93)
            {
              *v126 = 136446210;
              *&v126[4] = "nw_activity_create_epilogue_dictionary";
              _os_log_impl(&dword_181A37000, v85, v92, "%{public}s failed to allocate dictionary, no backtrace", v126, 0xCu);
            }
          }

          else
          {
            v85 = __nwlog_obj();
            v97 = type[0];
            if (os_log_type_enabled(v85, type[0]))
            {
              *v126 = 136446210;
              *&v126[4] = "nw_activity_create_epilogue_dictionary";
              _os_log_impl(&dword_181A37000, v85, v97, "%{public}s failed to allocate dictionary, backtrace limit exceeded", v126, 0xCu);
            }
          }
        }

LABEL_169:
        if (v84)
        {
          free(v84);
        }

        goto LABEL_177;
      }

      v71 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_activity_epilogue_report_if_selected";
      v72 = _os_log_send_and_compose_impl();

      v126[0] = 16;
      LOBYTE(v116) = 0;
      if (__nwlog_fault(v72, v126, &v116))
      {
        if (v126[0] == 17)
        {
          v73 = __nwlog_obj();
          v74 = v126[0];
          if (os_log_type_enabled(v73, v126[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_activity_epilogue_report_if_selected";
            _os_log_impl(&dword_181A37000, v73, v74, "%{public}s Cannot report activity before activation", buf, 0xCu);
          }
        }

        else if (v116 == 1)
        {
          v78 = __nw_create_backtrace_string();
          v73 = __nwlog_obj();
          v79 = v126[0];
          v80 = os_log_type_enabled(v73, v126[0]);
          if (v78)
          {
            if (v80)
            {
              *buf = 136446466;
              *&buf[4] = "nw_activity_epilogue_report_if_selected";
              *&buf[12] = 2082;
              *v119 = v78;
              _os_log_impl(&dword_181A37000, v73, v79, "%{public}s Cannot report activity before activation, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v78);
            goto LABEL_148;
          }

          if (v80)
          {
            *buf = 136446210;
            *&buf[4] = "nw_activity_epilogue_report_if_selected";
            _os_log_impl(&dword_181A37000, v73, v79, "%{public}s Cannot report activity before activation, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v73 = __nwlog_obj();
          v82 = v126[0];
          if (os_log_type_enabled(v73, v126[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_activity_epilogue_report_if_selected";
            _os_log_impl(&dword_181A37000, v73, v82, "%{public}s Cannot report activity before activation, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_148:
      if (v72)
      {
        free(v72);
      }

      goto LABEL_101;
    }

    if (a5 | a4)
    {
      if (__nwlog_activity_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
      }

      v24 = gactivityLogObj;
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      if (a2 - 1 > 3)
      {
        v25 = "invalid";
      }

      else
      {
        v25 = off_1E6A378D0[a2 - 1];
      }

      os_unfair_lock_opaque = v13[31]._os_unfair_lock_opaque;
      v27 = v13[32]._os_unfair_lock_opaque;
      v29 = nw_activity_get_duration(v13);
      *buf = 138544642;
      *&buf[4] = v13;
      *&buf[12] = 1024;
      *v119 = a2;
      *&v119[4] = 2082;
      *&v119[6] = v25;
      *&v119[14] = 1024;
      *&v119[16] = os_unfair_lock_opaque;
      *&v119[20] = 1024;
      *&v119[22] = v27;
      *&v119[26] = 2048;
      v120 = v29;
      v30 = "%{public}@ complete with reason %u (%{public}s), underlying error %d:%d, duration %llums";
      v31 = v24;
      v32 = 50;
    }

    else
    {
      if (__nwlog_activity_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
      }

      v24 = gactivityLogObj;
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      if (a2 - 1 > 3)
      {
        v26 = "invalid";
      }

      else
      {
        v26 = off_1E6A378D0[a2 - 1];
      }

      v33 = nw_activity_get_duration(v13);
      *buf = 138544130;
      *&buf[4] = v13;
      *&buf[12] = 1024;
      *v119 = a2;
      *&v119[4] = 2082;
      *&v119[6] = v26;
      *&v119[14] = 2048;
      *&v119[16] = v33;
      v30 = "%{public}@ complete with reason %u (%{public}s), duration %llums";
      v31 = v24;
      v32 = 38;
    }

    _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
LABEL_37:

    goto LABEL_38;
  }

  v67 = __nwlog_obj();
  *buf = 136446466;
  *&buf[4] = "nw_activity_complete_with_reason_and_underlying_error_string_internal";
  *&buf[12] = 2082;
  *v119 = "Invalid completion reason";
  v68 = _os_log_send_and_compose_impl();

  v126[0] = 16;
  LOBYTE(v116) = 0;
  if (__nwlog_fault(v68, v126, &v116))
  {
    if (v126[0] == 17)
    {
      v69 = __nwlog_obj();
      v70 = v126[0];
      if (os_log_type_enabled(v69, v126[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_activity_complete_with_reason_and_underlying_error_string_internal";
        *&buf[12] = 2082;
        *v119 = "Invalid completion reason";
        _os_log_impl(&dword_181A37000, v69, v70, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 0x16u);
      }
    }

    else if (v116 == 1)
    {
      v75 = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v76 = v126[0];
      v77 = os_log_type_enabled(v69, v126[0]);
      if (v75)
      {
        if (v77)
        {
          *buf = 136446722;
          *&buf[4] = "nw_activity_complete_with_reason_and_underlying_error_string_internal";
          *&buf[12] = 2082;
          *v119 = "Invalid completion reason";
          *&v119[8] = 2082;
          *&v119[10] = v75;
          _os_log_impl(&dword_181A37000, v69, v76, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v75);
        goto LABEL_143;
      }

      if (v77)
      {
        *buf = 136446466;
        *&buf[4] = "nw_activity_complete_with_reason_and_underlying_error_string_internal";
        *&buf[12] = 2082;
        *v119 = "Invalid completion reason";
        _os_log_impl(&dword_181A37000, v69, v76, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace", buf, 0x16u);
      }
    }

    else
    {
      v69 = __nwlog_obj();
      v81 = v126[0];
      if (os_log_type_enabled(v69, v126[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_activity_complete_with_reason_and_underlying_error_string_internal";
        *&buf[12] = 2082;
        *v119 = "Invalid completion reason";
        _os_log_impl(&dword_181A37000, v69, v81, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded", buf, 0x16u);
      }
    }
  }

LABEL_143:
  if (v68)
  {
    free(v68);
  }

LABEL_102:

  _Block_object_dispose(&v106, 8);
}

void sub_181ABA63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_181ABA75C(uint64_t a1)
{
  if ((*(v1 + 158) & 0x10) != 0)
  {
    return 1;
  }

  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 116);
  v6 = *(v1 + 117);
  if (*v1)
  {
    if ((*(*v1 + 136) & 0x40) != 0)
    {
      return 1;
    }
  }

  else
  {
    v7 = *(v1 + 200);
    if (v7)
    {
      v8 = v7[4];
      v9 = v7[2];
      if (v9 >= v7[3] + v8)
      {
        v9 = v7[3] + v8;
      }

      v28 = *(v1 + 200);
      v29 = v8;
      v30 = v9;
      v10 = v7;
      while (1)
      {
        if (v8 == v9)
        {
          a1 = sub_181AC81FC(a1);
          if ((a1 & 1) == 0)
          {

            if (v5 != 1)
            {
              goto LABEL_17;
            }

LABEL_21:
            if ((!v2 || (*(v2 + 136) & 0x40) == 0) && (!v4 || (*(v4 + 136) & 0x40) == 0))
            {
              if (v3)
              {
                return (*(v3 + 136) >> 6) & 1;
              }

              else
              {
                return 0;
              }
            }

            return 1;
          }

          v10 = v28;
          v8 = v29;
        }

        v11 = v8 + 1;
        v29 = v8 + 1;
        v12 = &v10[26 * v8];
        v13 = *(v12 + 9);
        v14 = *(v12 + 13);
        v15 = *(v12 + 7);
        v26[3] = *(v12 + 11);
        v26[4] = v14;
        v26[1] = v15;
        v26[2] = v13;
        v16 = *(v12 + 17);
        v17 = *(v12 + 21);
        v18 = *(v12 + 15);
        v26[7] = *(v12 + 19);
        v26[8] = v17;
        v26[5] = v18;
        v26[6] = v16;
        v19 = *(v12 + 25);
        v20 = *(v12 + 27);
        v21 = *(v12 + 23);
        *&v27[10] = *(v12 + 226);
        v26[10] = v19;
        *v27 = v20;
        v26[9] = v21;
        v26[0] = *(v12 + 5);
        v22 = *(&v26[0] + 1);
        if (*(&v26[0] + 1) && (v27[24] & 1) != 0)
        {

          sub_181AFE6F4(v26, &v25);

          sub_181AFE6A0(v26);
          v23 = *(v22 + 136);

          if ((v23 & 0x40) != 0)
          {
            return 1;
          }

          break;
        }

        v9 = v30;
        v8 = v11;
      }
    }
  }

  if (v5 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  result = 0;
  if (v6 != 4 && v6 != 29)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t _nw_interface_functional_type_to_interface_subtype(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else if ((result - 3) > 4)
  {
    return 0;
  }

  else
  {
    return dword_182AF2F08[(result - 3)];
  }

  return result;
}

uint64_t sub_181ABA9E4(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else if ((result - 1) > 5)
  {
    return 0;
  }

  else
  {
    return dword_182AF2EF0[(result - 1)];
  }

  return result;
}

void __NWCopyInternalQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("Network.framework", v2);
  v1 = NWCopyInternalQueue_nwQueue;
  NWCopyInternalQueue_nwQueue = v0;
}

id sub_181ABAB40()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC7Network17ParametersStorage_accountIDStorage];
  if ((v0[OBJC_IVAR____TtC7Network17ParametersStorage_accountIDStorage + 16] & 1) == 0 && *v2)
  {
    MEMORY[0x1865DF520](*v2, -1, -1);
  }

  v3 = &v0[OBJC_IVAR____TtC7Network17ParametersStorage_bundleIDStorage];
  if ((v0[OBJC_IVAR____TtC7Network17ParametersStorage_bundleIDStorage + 16] & 1) == 0 && *v3)
  {
    MEMORY[0x1865DF520](*v3, -1, -1);
  }

  v4 = &v0[OBJC_IVAR____TtC7Network17ParametersStorage_attributedBundleStorage];
  if ((v0[OBJC_IVAR____TtC7Network17ParametersStorage_attributedBundleStorage + 16] & 1) == 0 && *v4)
  {
    MEMORY[0x1865DF520](*v4, -1, -1);
  }

  v5 = &v0[OBJC_IVAR____TtC7Network17ParametersStorage_attributionContextStorage];
  if ((v0[OBJC_IVAR____TtC7Network17ParametersStorage_attributionContextStorage + 16] & 1) == 0 && *v5)
  {
    MEMORY[0x1865DF520](*v5, -1, -1);
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t ProtocolStack.__deallocating_deinit()
{
  ProtocolStack.deinit();

  return swift_deallocClassInstance();
}

uint64_t ProtocolStack.deinit()
{

  sub_181A5301C(*(v0 + 32), *(v0 + 40));
  sub_181A52FE0(*(v0 + 48), *(v0 + 56));
  sub_181AC3890(*(v0 + 64));
  sub_181A53008(*(v0 + 80), *(v0 + 88));
  sub_181A53008(*(v0 + 96), *(v0 + 104));
  return v0;
}

id sub_181ABACA8()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC7Network8__NWPath_nexusKeyStorage];
  if (v2)
  {
    MEMORY[0x1865DF520](v2, -1, -1);
  }

  v3 = *&v0[OBJC_IVAR____TtC7Network8__NWPath_reasonDescriptionStorage];
  if (v3)
  {
    MEMORY[0x1865DF520](v3, -1, -1);
  }

  v4 = *&v0[OBJC_IVAR____TtC7Network8__NWPath_nat64PrefixStorage];
  if (v4)
  {
    MEMORY[0x1865DF520](v4, -1, -1);
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

unint64_t _nw_interface_get_generation(uint64_t a1)
{
  result = *(*(a1 + OBJC_IVAR____TtC7Network13__NWInterface_interface) + 32);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

char *_nw_path_is_direct(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 5) & 1);
  }

  return result;
}

char *nw_path_copy_endpoint(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_endpoint(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_endpoint";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_copy_endpoint";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_path_copy_endpoint";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_copy_endpoint";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_copy_endpoint";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

char *_nw_path_copy_scoped_interfaceTm(char *result, void (*a2)(uint64_t *__return_ptr, char *))
{
  if (result)
  {
    v3 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v4 = result;
    v5 = result;
    swift_beginAccess();
    a2(&v6, &v4[v3]);
    swift_endAccess();

    return v6;
  }

  return result;
}

char *_nw_path_copy_endpoint(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    v3 = v1[5];

    return v3;
  }

  return result;
}

char *nw_path_is_direct(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_is_direct(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_is_direct";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_is_direct";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_path_is_direct";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_is_direct";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_is_direct";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

char *nw_path_is_local(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_is_local(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_is_local";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_is_local";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_path_is_local";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_is_local";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_is_local";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

char *_nw_path_is_local(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 4) & 1);
  }

  return result;
}

uint64_t _nw_path_is_expensiveTm(char *a1, uint64_t (*a2)(void *))
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v5 = a1;
    swift_beginAccess();
    v6 = memcpy(__dst, &a1[v3], sizeof(__dst));
    v7 = a2(v6);
    swift_endAccess();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t get_enum_tag_for_layout_string_7Network15AddressEndpointV0bC4TypeO(uint64_t a1)
{
  if ((*(a1 + 26) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 26) & 7;
  }
}

void _nw_path_set_custom_ip_protocol(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v3[138] = a2;
  }
}

void *nw_path_copy_endpoint_from_tlv(int a1, size_t __n, void *__src)
{
  v3 = __n;
  v119 = *MEMORY[0x1E69E9840];
  memset(__dst, 0, sizeof(__dst));
  if ((__n - 257) <= 0xFFFFFF06)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136447234;
    *&buf[4] = "nw_path_copy_endpoint_from_tlv";
    *&buf[12] = 1024;
    *&buf[14] = a1;
    *&buf[18] = 1024;
    *&buf[20] = v3;
    *v113 = 2080;
    *&v113[2] = "nw_path_copy_endpoint_from_tlv";
    v114 = 1024;
    v115 = 1828;
    v6 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v110 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v6, type, &v110))
    {
      goto LABEL_69;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type[0];
      if (os_log_type_enabled(v7, type[0]))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1828;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
      }

LABEL_68:

      goto LABEL_69;
    }

    if (v110 != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v22 = type[0];
      if (os_log_type_enabled(v7, type[0]))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1828;
        _os_log_impl(&dword_181A37000, v7, v22, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
      }

      goto LABEL_68;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v18 = type[0];
    v19 = os_log_type_enabled(v7, type[0]);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1828;
        _os_log_impl(&dword_181A37000, v7, v18, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
      }

      goto LABEL_68;
    }

    if (v19)
    {
      *buf = 136447490;
      *&buf[4] = "nw_path_copy_endpoint_from_tlv";
      *&buf[12] = 1024;
      *&buf[14] = a1;
      *&buf[18] = 1024;
      *&buf[20] = v3;
      *v113 = 2080;
      *&v113[2] = "nw_path_copy_endpoint_from_tlv";
      v114 = 1024;
      v115 = 1828;
      v116 = 2082;
      v117 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v18, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
    }

LABEL_31:

    free(backtrace_string);
    if (!v6)
    {
      return 0;
    }

    goto LABEL_70;
  }

  memcpy(__dst, __src, __n);
  if (LOBYTE(__dst[0]) > v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136447234;
    *&buf[4] = "nw_path_copy_endpoint_from_tlv";
    *&buf[12] = 1024;
    *&buf[14] = a1;
    *&buf[18] = 1024;
    *&buf[20] = v3;
    *v113 = 2080;
    *&v113[2] = "nw_path_copy_endpoint_from_tlv";
    v114 = 1024;
    v115 = 2000;
    v6 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v110 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v6, type, &v110))
    {
      goto LABEL_69;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v10 = type[0];
      if (os_log_type_enabled(v7, type[0]))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 2000;
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
      }

      goto LABEL_68;
    }

    if (v110 != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v38 = type[0];
      if (os_log_type_enabled(v7, type[0]))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 2000;
        _os_log_impl(&dword_181A37000, v7, v38, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
      }

      goto LABEL_68;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v20 = type[0];
    v21 = os_log_type_enabled(v7, type[0]);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 2000;
        _os_log_impl(&dword_181A37000, v7, v20, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
      }

      goto LABEL_68;
    }

    if (v21)
    {
      *buf = 136447490;
      *&buf[4] = "nw_path_copy_endpoint_from_tlv";
      *&buf[12] = 1024;
      *&buf[14] = a1;
      *&buf[18] = 1024;
      *&buf[20] = v3;
      *v113 = 2080;
      *&v113[2] = "nw_path_copy_endpoint_from_tlv";
      v114 = 1024;
      v115 = 2000;
      v116 = 2082;
      v117 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v20, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
    }

    goto LABEL_31;
  }

  v11 = LOBYTE(__dst[0]) - 8;
  if (v3 - 8 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v3 - 8;
  }

  if (BYTE1(__dst[0]))
  {
    address = _nw_endpoint_create_address(__dst);
    host_with_numeric_port = address;
    if (address)
    {
      memset(buf, 0, sizeof(buf));
      *v113 = 0;
      v15 = nw_endpoint_fillout_v4v6_address(address, buf) ^ 1;
      if (v3 < 0x1D)
      {
        LOBYTE(v15) = 1;
      }

      if ((v15 & 1) == 0)
      {
        v16 = nw_txt_record_create_with_bytes(&__dst[1] + 12, v3 - 28);
        nw_endpoint_set_txt_record(host_with_numeric_port, v16);
      }
    }

    return host_with_numeric_port;
  }

  host_with_numeric_port = 0;
  if (SDWORD1(__dst[0]) <= 3)
  {
    if (DWORD1(__dst[0]) == 2)
    {
      v49 = strnlen(__dst + 8, v12);
      if (v49 >= v12)
      {
        v56 = __nwlog_obj();
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1854;
        v6 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v110 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v6, type, &v110))
        {
          goto LABEL_69;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v7 = __nwlog_obj();
          v57 = type[0];
          if (os_log_type_enabled(v7, type[0]))
          {
            *buf = 136447234;
            *&buf[4] = "nw_path_copy_endpoint_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = a1;
            *&buf[18] = 1024;
            *&buf[20] = v3;
            *v113 = 2080;
            *&v113[2] = "nw_path_copy_endpoint_from_tlv";
            v114 = 1024;
            v115 = 1854;
            _os_log_impl(&dword_181A37000, v7, v57, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
          }

          goto LABEL_68;
        }

        if (v110 != OS_LOG_TYPE_INFO)
        {
          v7 = __nwlog_obj();
          v84 = type[0];
          if (os_log_type_enabled(v7, type[0]))
          {
            *buf = 136447234;
            *&buf[4] = "nw_path_copy_endpoint_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = a1;
            *&buf[18] = 1024;
            *&buf[20] = v3;
            *v113 = 2080;
            *&v113[2] = "nw_path_copy_endpoint_from_tlv";
            v114 = 1024;
            v115 = 1854;
            _os_log_impl(&dword_181A37000, v7, v84, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
          }

          goto LABEL_68;
        }

        v67 = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v72 = type[0];
        v73 = os_log_type_enabled(v7, type[0]);
        if (!v67)
        {
          if (v73)
          {
            *buf = 136447234;
            *&buf[4] = "nw_path_copy_endpoint_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = a1;
            *&buf[18] = 1024;
            *&buf[20] = v3;
            *v113 = 2080;
            *&v113[2] = "nw_path_copy_endpoint_from_tlv";
            v114 = 1024;
            v115 = 1854;
            _os_log_impl(&dword_181A37000, v7, v72, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
          }

          goto LABEL_68;
        }

        if (v73)
        {
          *buf = 136447490;
          *&buf[4] = "nw_path_copy_endpoint_from_tlv";
          *&buf[12] = 1024;
          *&buf[14] = a1;
          *&buf[18] = 1024;
          *&buf[20] = v3;
          *v113 = 2080;
          *&v113[2] = "nw_path_copy_endpoint_from_tlv";
          v114 = 1024;
          v115 = 1854;
          v116 = 2082;
          v117 = v67;
          _os_log_impl(&dword_181A37000, v7, v72, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
        }

        goto LABEL_187;
      }

      v50 = v49;
      host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(__dst + 8, bswap32(WORD1(__dst[0])) >> 16);
      if (!host_with_numeric_port)
      {
        return host_with_numeric_port;
      }

      v44 = v50 + 1;
      v45 = v12 - (v50 + 1);
      if (v12 <= v50 + 1)
      {
        return host_with_numeric_port;
      }
    }

    else
    {
      if (DWORD1(__dst[0]) != 3)
      {
        return host_with_numeric_port;
      }

      v39 = strnlen(__dst + 8, v12);
      if (v39 >= v12)
      {
        v58 = __nwlog_obj();
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1870;
        v6 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v110 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v6, type, &v110))
        {
          goto LABEL_69;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v7 = __nwlog_obj();
          v59 = type[0];
          if (os_log_type_enabled(v7, type[0]))
          {
            *buf = 136447234;
            *&buf[4] = "nw_path_copy_endpoint_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = a1;
            *&buf[18] = 1024;
            *&buf[20] = v3;
            *v113 = 2080;
            *&v113[2] = "nw_path_copy_endpoint_from_tlv";
            v114 = 1024;
            v115 = 1870;
            _os_log_impl(&dword_181A37000, v7, v59, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
          }

          goto LABEL_68;
        }

        if (v110 != OS_LOG_TYPE_INFO)
        {
          v7 = __nwlog_obj();
          v87 = type[0];
          if (os_log_type_enabled(v7, type[0]))
          {
            *buf = 136447234;
            *&buf[4] = "nw_path_copy_endpoint_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = a1;
            *&buf[18] = 1024;
            *&buf[20] = v3;
            *v113 = 2080;
            *&v113[2] = "nw_path_copy_endpoint_from_tlv";
            v114 = 1024;
            v115 = 1870;
            _os_log_impl(&dword_181A37000, v7, v87, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
          }

          goto LABEL_68;
        }

        v67 = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v74 = type[0];
        v75 = os_log_type_enabled(v7, type[0]);
        if (!v67)
        {
          if (v75)
          {
            *buf = 136447234;
            *&buf[4] = "nw_path_copy_endpoint_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = a1;
            *&buf[18] = 1024;
            *&buf[20] = v3;
            *v113 = 2080;
            *&v113[2] = "nw_path_copy_endpoint_from_tlv";
            v114 = 1024;
            v115 = 1870;
            _os_log_impl(&dword_181A37000, v7, v74, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
          }

          goto LABEL_68;
        }

        if (v75)
        {
          *buf = 136447490;
          *&buf[4] = "nw_path_copy_endpoint_from_tlv";
          *&buf[12] = 1024;
          *&buf[14] = a1;
          *&buf[18] = 1024;
          *&buf[20] = v3;
          *v113 = 2080;
          *&v113[2] = "nw_path_copy_endpoint_from_tlv";
          v114 = 1024;
          v115 = 1870;
          v116 = 2082;
          v117 = v67;
          _os_log_impl(&dword_181A37000, v7, v74, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
        }

        goto LABEL_187;
      }

      v40 = v39 + 1;
      v41 = strnlen(__dst + v39 + 9, v12 - (v39 + 1)) + v39 + 1;
      if (v41 >= v12)
      {
        v63 = __nwlog_obj();
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1877;
        v6 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v110 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v6, type, &v110))
        {
          goto LABEL_69;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v7 = __nwlog_obj();
          v64 = type[0];
          if (os_log_type_enabled(v7, type[0]))
          {
            *buf = 136447234;
            *&buf[4] = "nw_path_copy_endpoint_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = a1;
            *&buf[18] = 1024;
            *&buf[20] = v3;
            *v113 = 2080;
            *&v113[2] = "nw_path_copy_endpoint_from_tlv";
            v114 = 1024;
            v115 = 1877;
            _os_log_impl(&dword_181A37000, v7, v64, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
          }

          goto LABEL_68;
        }

        if (v110 != OS_LOG_TYPE_INFO)
        {
          v7 = __nwlog_obj();
          v95 = type[0];
          if (os_log_type_enabled(v7, type[0]))
          {
            *buf = 136447234;
            *&buf[4] = "nw_path_copy_endpoint_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = a1;
            *&buf[18] = 1024;
            *&buf[20] = v3;
            *v113 = 2080;
            *&v113[2] = "nw_path_copy_endpoint_from_tlv";
            v114 = 1024;
            v115 = 1877;
            _os_log_impl(&dword_181A37000, v7, v95, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
          }

          goto LABEL_68;
        }

        v67 = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v85 = type[0];
        v86 = os_log_type_enabled(v7, type[0]);
        if (!v67)
        {
          if (v86)
          {
            *buf = 136447234;
            *&buf[4] = "nw_path_copy_endpoint_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = a1;
            *&buf[18] = 1024;
            *&buf[20] = v3;
            *v113 = 2080;
            *&v113[2] = "nw_path_copy_endpoint_from_tlv";
            v114 = 1024;
            v115 = 1877;
            _os_log_impl(&dword_181A37000, v7, v85, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
          }

          goto LABEL_68;
        }

        if (v86)
        {
          *buf = 136447490;
          *&buf[4] = "nw_path_copy_endpoint_from_tlv";
          *&buf[12] = 1024;
          *&buf[14] = a1;
          *&buf[18] = 1024;
          *&buf[20] = v3;
          *v113 = 2080;
          *&v113[2] = "nw_path_copy_endpoint_from_tlv";
          v114 = 1024;
          v115 = 1877;
          v116 = 2082;
          v117 = v67;
          _os_log_impl(&dword_181A37000, v7, v85, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
        }

        goto LABEL_187;
      }

      v42 = v41 + 1;
      v43 = strnlen(__dst + v41 + 9, v12 - (v41 + 1)) + v41 + 1;
      if (v43 >= v12)
      {
        v78 = __nwlog_obj();
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1884;
        v6 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v110 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v6, type, &v110))
        {
          goto LABEL_69;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v7 = __nwlog_obj();
          v79 = type[0];
          if (os_log_type_enabled(v7, type[0]))
          {
            *buf = 136447234;
            *&buf[4] = "nw_path_copy_endpoint_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = a1;
            *&buf[18] = 1024;
            *&buf[20] = v3;
            *v113 = 2080;
            *&v113[2] = "nw_path_copy_endpoint_from_tlv";
            v114 = 1024;
            v115 = 1884;
            _os_log_impl(&dword_181A37000, v7, v79, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
          }

          goto LABEL_68;
        }

        if (v110 != OS_LOG_TYPE_INFO)
        {
          v7 = __nwlog_obj();
          v101 = type[0];
          if (os_log_type_enabled(v7, type[0]))
          {
            *buf = 136447234;
            *&buf[4] = "nw_path_copy_endpoint_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = a1;
            *&buf[18] = 1024;
            *&buf[20] = v3;
            *v113 = 2080;
            *&v113[2] = "nw_path_copy_endpoint_from_tlv";
            v114 = 1024;
            v115 = 1884;
            _os_log_impl(&dword_181A37000, v7, v101, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
          }

          goto LABEL_68;
        }

        v67 = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v93 = type[0];
        v94 = os_log_type_enabled(v7, type[0]);
        if (!v67)
        {
          if (v94)
          {
            *buf = 136447234;
            *&buf[4] = "nw_path_copy_endpoint_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = a1;
            *&buf[18] = 1024;
            *&buf[20] = v3;
            *v113 = 2080;
            *&v113[2] = "nw_path_copy_endpoint_from_tlv";
            v114 = 1024;
            v115 = 1884;
            _os_log_impl(&dword_181A37000, v7, v93, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
          }

          goto LABEL_68;
        }

        if (v94)
        {
          *buf = 136447490;
          *&buf[4] = "nw_path_copy_endpoint_from_tlv";
          *&buf[12] = 1024;
          *&buf[14] = a1;
          *&buf[18] = 1024;
          *&buf[20] = v3;
          *v113 = 2080;
          *&v113[2] = "nw_path_copy_endpoint_from_tlv";
          v114 = 1024;
          v115 = 1884;
          v116 = 2082;
          v117 = v67;
          _os_log_impl(&dword_181A37000, v7, v93, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
        }

        goto LABEL_187;
      }

      host_with_numeric_port = nw_endpoint_create_bonjour_service(__dst + 8, __dst + v40 + 8, __dst + v42 + 8);
      if (!host_with_numeric_port)
      {
        return host_with_numeric_port;
      }

      v44 = v43 + 1;
      v45 = v12 - (v43 + 1);
      if (v12 <= v43 + 1)
      {
        return host_with_numeric_port;
      }
    }

LABEL_82:
    v51 = nw_txt_record_create_with_bytes(__dst + v44 + 8, v45);
    nw_endpoint_set_txt_record(host_with_numeric_port, v51);

    return host_with_numeric_port;
  }

  if (DWORD1(__dst[0]) == 4)
  {
    if (strnlen(__dst + 8, v12) < v12)
    {
      return _nw_endpoint_create_url(__dst + 8);
    }

    v52 = __nwlog_obj();
    *buf = 136447234;
    *&buf[4] = "nw_path_copy_endpoint_from_tlv";
    *&buf[12] = 1024;
    *&buf[14] = a1;
    *&buf[18] = 1024;
    *&buf[20] = v3;
    *v113 = 2080;
    *&v113[2] = "nw_path_copy_endpoint_from_tlv";
    v114 = 1024;
    v115 = 1861;
    v6 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v110 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v6, type, &v110))
    {
LABEL_69:
      if (!v6)
      {
        return 0;
      }

LABEL_70:
      free(v6);
      return 0;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v53 = type[0];
      if (os_log_type_enabled(v7, type[0]))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1861;
        _os_log_impl(&dword_181A37000, v7, v53, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
      }

      goto LABEL_68;
    }

    if (v110 != OS_LOG_TYPE_INFO)
    {
      v7 = __nwlog_obj();
      v82 = type[0];
      if (os_log_type_enabled(v7, type[0]))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1861;
        _os_log_impl(&dword_181A37000, v7, v82, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
      }

      goto LABEL_68;
    }

    v67 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v68 = type[0];
    v69 = os_log_type_enabled(v7, type[0]);
    if (!v67)
    {
      if (v69)
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1861;
        _os_log_impl(&dword_181A37000, v7, v68, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
      }

      goto LABEL_68;
    }

    if (v69)
    {
      *buf = 136447490;
      *&buf[4] = "nw_path_copy_endpoint_from_tlv";
      *&buf[12] = 1024;
      *&buf[14] = a1;
      *&buf[18] = 1024;
      *&buf[20] = v3;
      *v113 = 2080;
      *&v113[2] = "nw_path_copy_endpoint_from_tlv";
      v114 = 1024;
      v115 = 1861;
      v116 = 2082;
      v117 = v67;
      _os_log_impl(&dword_181A37000, v7, v68, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
    }

    goto LABEL_187;
  }

  if (DWORD1(__dst[0]) == 5)
  {
    v47 = strnlen(__dst + 8, v12);
    if (v47 < v12)
    {
      v48 = v47;
      host_with_numeric_port = _nw_endpoint_create_srv(__dst + 8);
      if (!host_with_numeric_port)
      {
        return host_with_numeric_port;
      }

      v44 = v48 + 1;
      v45 = v12 - (v48 + 1);
      if (v12 <= v48 + 1)
      {
        return host_with_numeric_port;
      }

      goto LABEL_82;
    }

    v54 = __nwlog_obj();
    *buf = 136447234;
    *&buf[4] = "nw_path_copy_endpoint_from_tlv";
    *&buf[12] = 1024;
    *&buf[14] = a1;
    *&buf[18] = 1024;
    *&buf[20] = v3;
    *v113 = 2080;
    *&v113[2] = "nw_path_copy_endpoint_from_tlv";
    v114 = 1024;
    v115 = 1981;
    v6 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v110 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v6, type, &v110))
    {
      goto LABEL_69;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v55 = type[0];
      if (os_log_type_enabled(v7, type[0]))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1981;
        _os_log_impl(&dword_181A37000, v7, v55, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
      }

      goto LABEL_68;
    }

    if (v110 != OS_LOG_TYPE_INFO)
    {
      v7 = __nwlog_obj();
      v83 = type[0];
      if (os_log_type_enabled(v7, type[0]))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1981;
        _os_log_impl(&dword_181A37000, v7, v83, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
      }

      goto LABEL_68;
    }

    v67 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v70 = type[0];
    v71 = os_log_type_enabled(v7, type[0]);
    if (!v67)
    {
      if (v71)
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1981;
        _os_log_impl(&dword_181A37000, v7, v70, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
      }

      goto LABEL_68;
    }

    if (v71)
    {
      *buf = 136447490;
      *&buf[4] = "nw_path_copy_endpoint_from_tlv";
      *&buf[12] = 1024;
      *&buf[14] = a1;
      *&buf[18] = 1024;
      *&buf[20] = v3;
      *v113 = 2080;
      *&v113[2] = "nw_path_copy_endpoint_from_tlv";
      v114 = 1024;
      v115 = 1981;
      v116 = 2082;
      v117 = v67;
      _os_log_impl(&dword_181A37000, v7, v70, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
    }

LABEL_187:

    goto LABEL_241;
  }

  if (DWORD1(__dst[0]) != 6)
  {
    return host_with_numeric_port;
  }

  memset(type, 0, sizeof(type));
  uuid_clear(type);
  v23 = strnlen(__dst + 8, v12);
  if (v23 >= v12)
  {
    v60 = __nwlog_obj();
    *buf = 136447234;
    *&buf[4] = "nw_path_copy_endpoint_from_tlv";
    *&buf[12] = 1024;
    *&buf[14] = a1;
    *&buf[18] = 1024;
    *&buf[20] = v3;
    *v113 = 2080;
    *&v113[2] = "nw_path_copy_endpoint_from_tlv";
    v114 = 1024;
    v115 = 1906;
    v6 = _os_log_send_and_compose_impl();

    v110 = OS_LOG_TYPE_ERROR;
    v109 = 0;
    if (!__nwlog_fault(v6, &v110, &v109))
    {
      goto LABEL_69;
    }

    if (v110 == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = v110;
      if (os_log_type_enabled(v61, v110))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1906;
        _os_log_impl(&dword_181A37000, v61, v62, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
      }

      goto LABEL_260;
    }

    if (v109 != 1)
    {
      v61 = __nwlog_obj();
      v90 = v110;
      if (os_log_type_enabled(v61, v110))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1906;
        _os_log_impl(&dword_181A37000, v61, v90, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
      }

      goto LABEL_260;
    }

    v67 = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v76 = v110;
    v77 = os_log_type_enabled(v61, v110);
    if (!v67)
    {
      if (v77)
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1906;
        _os_log_impl(&dword_181A37000, v61, v76, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
      }

      goto LABEL_260;
    }

    if (v77)
    {
      *buf = 136447490;
      *&buf[4] = "nw_path_copy_endpoint_from_tlv";
      *&buf[12] = 1024;
      *&buf[14] = a1;
      *&buf[18] = 1024;
      *&buf[20] = v3;
      *v113 = 2080;
      *&v113[2] = "nw_path_copy_endpoint_from_tlv";
      v114 = 1024;
      v115 = 1906;
      v116 = 2082;
      v117 = v67;
      _os_log_impl(&dword_181A37000, v61, v76, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
    }

LABEL_240:

LABEL_241:
    free(v67);
    if (!v6)
    {
      return 0;
    }

    goto LABEL_70;
  }

  v24 = v23 + 1;
  v25 = strnlen(__dst + v23 + 9, v12 - (v23 + 1)) + v23 + 1;
  if (v25 >= v12)
  {
    v65 = __nwlog_obj();
    *buf = 136447234;
    *&buf[4] = "nw_path_copy_endpoint_from_tlv";
    *&buf[12] = 1024;
    *&buf[14] = a1;
    *&buf[18] = 1024;
    *&buf[20] = v3;
    *v113 = 2080;
    *&v113[2] = "nw_path_copy_endpoint_from_tlv";
    v114 = 1024;
    v115 = 1913;
    v6 = _os_log_send_and_compose_impl();

    v110 = OS_LOG_TYPE_ERROR;
    v109 = 0;
    if (!__nwlog_fault(v6, &v110, &v109))
    {
      goto LABEL_69;
    }

    if (v110 == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v66 = v110;
      if (os_log_type_enabled(v61, v110))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1913;
        _os_log_impl(&dword_181A37000, v61, v66, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
      }

      goto LABEL_260;
    }

    if (v109 != 1)
    {
      v61 = __nwlog_obj();
      v98 = v110;
      if (os_log_type_enabled(v61, v110))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1913;
        _os_log_impl(&dword_181A37000, v61, v98, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
      }

      goto LABEL_260;
    }

    v67 = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v88 = v110;
    v89 = os_log_type_enabled(v61, v110);
    if (!v67)
    {
      if (v89)
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1913;
        _os_log_impl(&dword_181A37000, v61, v88, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
      }

      goto LABEL_260;
    }

    if (v89)
    {
      *buf = 136447490;
      *&buf[4] = "nw_path_copy_endpoint_from_tlv";
      *&buf[12] = 1024;
      *&buf[14] = a1;
      *&buf[18] = 1024;
      *&buf[20] = v3;
      *v113 = 2080;
      *&v113[2] = "nw_path_copy_endpoint_from_tlv";
      v114 = 1024;
      v115 = 1913;
      v116 = 2082;
      v117 = v67;
      _os_log_impl(&dword_181A37000, v61, v88, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
    }

    goto LABEL_240;
  }

  v26 = v25 + 1;
  v27 = strnlen(__dst + v25 + 9, v12 - (v25 + 1)) + v25 + 1;
  if (v27 >= v12)
  {
    v80 = __nwlog_obj();
    *buf = 136447234;
    *&buf[4] = "nw_path_copy_endpoint_from_tlv";
    *&buf[12] = 1024;
    *&buf[14] = a1;
    *&buf[18] = 1024;
    *&buf[20] = v3;
    *v113 = 2080;
    *&v113[2] = "nw_path_copy_endpoint_from_tlv";
    v114 = 1024;
    v115 = 1920;
    v6 = _os_log_send_and_compose_impl();

    v110 = OS_LOG_TYPE_ERROR;
    v109 = 0;
    if (!__nwlog_fault(v6, &v110, &v109))
    {
      goto LABEL_69;
    }

    if (v110 == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v81 = v110;
      if (os_log_type_enabled(v61, v110))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1920;
        _os_log_impl(&dword_181A37000, v61, v81, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
      }

      goto LABEL_260;
    }

    if (v109 != 1)
    {
      v61 = __nwlog_obj();
      v104 = v110;
      if (os_log_type_enabled(v61, v110))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1920;
        _os_log_impl(&dword_181A37000, v61, v104, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
      }

      goto LABEL_260;
    }

    v67 = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v96 = v110;
    v97 = os_log_type_enabled(v61, v110);
    if (!v67)
    {
      if (v97)
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1920;
        _os_log_impl(&dword_181A37000, v61, v96, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
      }

      goto LABEL_260;
    }

    if (v97)
    {
      *buf = 136447490;
      *&buf[4] = "nw_path_copy_endpoint_from_tlv";
      *&buf[12] = 1024;
      *&buf[14] = a1;
      *&buf[18] = 1024;
      *&buf[20] = v3;
      *v113 = 2080;
      *&v113[2] = "nw_path_copy_endpoint_from_tlv";
      v114 = 1024;
      v115 = 1920;
      v116 = 2082;
      v117 = v67;
      _os_log_impl(&dword_181A37000, v61, v96, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
    }

    goto LABEL_240;
  }

  v28 = v27 + 1;
  v29 = strnlen(__dst + v27 + 9, v12 - (v27 + 1)) + v27 + 1;
  if (v29 >= v12)
  {
    v91 = __nwlog_obj();
    *buf = 136447234;
    *&buf[4] = "nw_path_copy_endpoint_from_tlv";
    *&buf[12] = 1024;
    *&buf[14] = a1;
    *&buf[18] = 1024;
    *&buf[20] = v3;
    *v113 = 2080;
    *&v113[2] = "nw_path_copy_endpoint_from_tlv";
    v114 = 1024;
    v115 = 1927;
    v6 = _os_log_send_and_compose_impl();

    v110 = OS_LOG_TYPE_ERROR;
    v109 = 0;
    if (!__nwlog_fault(v6, &v110, &v109))
    {
      goto LABEL_69;
    }

    if (v110 == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v92 = v110;
      if (os_log_type_enabled(v61, v110))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1927;
        _os_log_impl(&dword_181A37000, v61, v92, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
      }

      goto LABEL_260;
    }

    if (v109 != 1)
    {
      v61 = __nwlog_obj();
      v107 = v110;
      if (os_log_type_enabled(v61, v110))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1927;
        _os_log_impl(&dword_181A37000, v61, v107, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
      }

      goto LABEL_260;
    }

    v67 = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v102 = v110;
    v103 = os_log_type_enabled(v61, v110);
    if (!v67)
    {
      if (v103)
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1927;
        _os_log_impl(&dword_181A37000, v61, v102, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
      }

      goto LABEL_260;
    }

    if (v103)
    {
      *buf = 136447490;
      *&buf[4] = "nw_path_copy_endpoint_from_tlv";
      *&buf[12] = 1024;
      *&buf[14] = a1;
      *&buf[18] = 1024;
      *&buf[20] = v3;
      *v113 = 2080;
      *&v113[2] = "nw_path_copy_endpoint_from_tlv";
      v114 = 1024;
      v115 = 1927;
      v116 = 2082;
      v117 = v67;
      _os_log_impl(&dword_181A37000, v61, v102, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
    }

    goto LABEL_240;
  }

  v30 = v29 + 1;
  v31 = strnlen(__dst + v29 + 9, v12 - (v29 + 1)) + v29 + 1;
  if (v31 >= v12)
  {
    v99 = __nwlog_obj();
    *buf = 136447234;
    *&buf[4] = "nw_path_copy_endpoint_from_tlv";
    *&buf[12] = 1024;
    *&buf[14] = a1;
    *&buf[18] = 1024;
    *&buf[20] = v3;
    *v113 = 2080;
    *&v113[2] = "nw_path_copy_endpoint_from_tlv";
    v114 = 1024;
    v115 = 1934;
    v6 = _os_log_send_and_compose_impl();

    v110 = OS_LOG_TYPE_ERROR;
    v109 = 0;
    if (!__nwlog_fault(v6, &v110, &v109))
    {
      goto LABEL_69;
    }

    if (v110 == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v100 = v110;
      if (os_log_type_enabled(v61, v110))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1934;
        _os_log_impl(&dword_181A37000, v61, v100, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
      }

LABEL_260:

      goto LABEL_69;
    }

    if (v109 != 1)
    {
      v61 = __nwlog_obj();
      v108 = v110;
      if (os_log_type_enabled(v61, v110))
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1934;
        _os_log_impl(&dword_181A37000, v61, v108, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
      }

      goto LABEL_260;
    }

    v67 = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v105 = v110;
    v106 = os_log_type_enabled(v61, v110);
    if (!v67)
    {
      if (v106)
      {
        *buf = 136447234;
        *&buf[4] = "nw_path_copy_endpoint_from_tlv";
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v3;
        *v113 = 2080;
        *&v113[2] = "nw_path_copy_endpoint_from_tlv";
        v114 = 1024;
        v115 = 1934;
        _os_log_impl(&dword_181A37000, v61, v105, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
      }

      goto LABEL_260;
    }

    if (v106)
    {
      *buf = 136447490;
      *&buf[4] = "nw_path_copy_endpoint_from_tlv";
      *&buf[12] = 1024;
      *&buf[14] = a1;
      *&buf[18] = 1024;
      *&buf[20] = v3;
      *v113 = 2080;
      *&v113[2] = "nw_path_copy_endpoint_from_tlv";
      v114 = 1024;
      v115 = 1934;
      v116 = 2082;
      v117 = v67;
      _os_log_impl(&dword_181A37000, v61, v105, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
    }

    goto LABEL_240;
  }

  v32 = *(__dst + v31 + 9);
  v33 = *(__dst + v31 + 13);
  v34 = v31 + 9;
  v35 = v31 + 25;
  if (v35 <= v12)
  {
    *type = *(__dst + v34 + 8);
    v34 = v35;
  }

  host_with_numeric_port = _nw_endpoint_create_application_service_internal(__dst + v24 + 8, __dst + 8, type, __dst + v26 + 8, __dst + v28 + 8, v32, v33, __dst + v30 + 8);
  if (host_with_numeric_port)
  {
    v36 = v34 + 1 >= v12;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    v37 = nw_txt_record_create_with_bytes(__dst + v34 + 8, v12 - v34);
    nw_endpoint_set_txt_record(host_with_numeric_port, v37);
  }

  return host_with_numeric_port;
}

BOOL sub_181ABE634()
{
  if ((*(v0 + 215) & 8) == 0)
  {
    return 0;
  }

  v2 = *(v0 + 196);
  v7 = *(v0 + 144);
  if (!SystemUUID.isUUIDNULL.getter())
  {
    v3 = *(v0 + 144);
    v6 = *(v0 + 128);
    v7 = v3;
    if (!_s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v7, &v6))
    {
      return 1;
    }
  }

  v4 = getpid();
  return v2 > 0 && v2 != v4;
}

unint64_t Parameters.description.getter()
{
  v258 = *MEMORY[0x1E69E9840];
  v164 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v164);
  v149 = &v145[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v153 = &v145[-v3];
  v4 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v148 = &v145[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v147 = &v145[-v7];
  v8 = v0[1];
  v9 = v0[3];
  v255 = v0[2];
  v256 = v9;
  v10 = v0[1];
  v253 = *v0;
  v254 = v10;
  v252[0] = *(v0 + 97);
  v11 = v0[9];
  v190 = v0[8];
  v191 = v11;
  *(v251 + 15) = *(v0 + 48);
  v251[0] = *(v0 + 177);
  v12 = *(v0 + 264);
  v249 = *(v0 + 248);
  v250 = v12;
  v13 = v0[20];
  v246 = v0[22];
  v247 = v13;
  v14 = v0[3];
  v197 = v255;
  v198 = v14;
  v233 = *(v0 + 264);
  v257 = *(v0 + 8);
  v186 = *(v0 + 80);
  v192[0] = *(v0 + 81);
  *(v192 + 3) = *(v0 + 21);
  v175 = *(v0 + 11);
  v185 = *(v0 + 96);
  *(v252 + 15) = *(v0 + 14);
  v15 = *(v0 + 30);
  v173 = *(v0 + 31);
  v16 = *(v0 + 21);
  v170 = *(v0 + 20);
  v184 = *(v0 + 176);
  v18 = *(v0 + 50);
  v17 = *(v0 + 51);
  v19 = *(v0 + 104);
  v20 = *(v0 + 210);
  v21 = *(v0 + 211);
  v22 = *(v0 + 106);
  v23 = *(v0 + 214);
  v24 = *(v0 + 215);
  v25 = *(v0 + 216);
  v26 = *(v0 + 217);
  v27 = *(v0 + 218);
  v28 = *(v0 + 219);
  v29 = *(v0 + 110);
  v30 = *(v0 + 111);
  v32 = *(v0 + 28);
  v31 = *(v0 + 29);
  v181 = *(v0 + 30);
  v34 = *(v0 + 35);
  v33 = *(v0 + 36);
  v248 = *(v0 + 42);
  v35 = *(v0 + 9);
  v199 = *(v0 + 8);
  v37 = *(v0 + 37);
  v36 = *(v0 + 38);
  v201 = v186;
  *v202 = *(v0 + 81);
  *&v202[3] = *(v0 + 21);
  v204 = v185;
  *&v205[15] = *(v0 + 14);
  v212 = v184;
  v38 = *(v0 + 49);
  *&v213[15] = *(v0 + 48);
  v39 = *(v0 + 43);
  v240 = *(v0 + 42);
  v171 = *(v0 + 39);
  v195 = v253;
  v196 = v8;
  *v205 = *(v0 + 97);
  v40 = v0[9];
  v208 = v190;
  v209 = v40;
  *v213 = *(v0 + 177);
  v232 = *(v0 + 248);
  v239 = v0[20];
  v41 = v0[22];
  v42 = *(v0 + 46);
  v43 = *(v0 + 47);
  v44 = *(v0 + 48);
  v165 = v35;
  v166 = v16;
  v200 = v35;
  v203 = v175;
  v151 = v15;
  v206 = v15;
  v207 = v173;
  v210 = v170;
  v211 = v16;
  v176 = v38;
  v214 = v38;
  v158 = v19;
  v159 = v18;
  v215 = v18;
  v178 = v27;
  v179 = v17;
  v216 = v17;
  v217 = v19;
  v162 = v20;
  v163 = v21;
  v218 = v20;
  v219 = v21;
  v156 = v26;
  v157 = v22;
  v220 = v22;
  v45 = v23;
  v221 = v23;
  v46 = v43;
  v182 = v28;
  v183 = v24;
  v222 = v24;
  v223 = v25;
  v224 = v26;
  v225 = v27;
  v226 = v28;
  v161 = v29;
  v227 = v29;
  v154 = v30;
  v228 = v30;
  v180 = v32;
  v229 = v32;
  v167 = v36;
  v168 = v31;
  v230 = v31;
  v231 = v181;
  v234 = v34;
  v155 = v33;
  v235 = v33;
  v174 = v37;
  v236 = v37;
  v47 = v171;
  v237 = v36;
  v238 = v171;
  v172 = v39;
  v241 = v39;
  v242 = v41;
  v177 = v42;
  v243 = v42;
  v244 = v43;
  v152 = v44;
  v245 = v44;
  v188 = sub_181AC9A6C();
  v189 = v48;
  v169 = v34;
  v49 = *(v34 + 16);
  v160 = v25;
  if (v25)
  {
    sensitive_redacted = nw_context_get_sensitive_redacted(v49);
  }

  else
  {
    sensitive_redacted = nw_context_get_private_redacted(v49);
  }

  v146 = sensitive_redacted;
  v150 = v45;
  v51 = v151;
  v52 = v174;
  v53 = v170;
  if (v47)
  {
    strcpy(&v195, ", bundle id: ");
    HIWORD(v195) = -4864;
    MEMORY[0x1865D9CA0](v167, v47);
    MEMORY[0x1865D9CA0](v195, *(&v195 + 1));
  }

  v54 = v179;
  if (v46)
  {
    v55 = OBJC_IVAR____TtC7Network8Endpoint_type;
    swift_beginAccess();
    v56 = &v46[v55];
    v57 = v153;
    sub_181ACC828(v56, v153, type metadata accessor for Endpoint.EndpointType);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      v67 = type metadata accessor for Endpoint.EndpointType;
      v68 = v57;
LABEL_18:
      sub_181AB7264(v68, v67);
      goto LABEL_19;
    }

    v58 = v147;
    sub_181B2BEE4(v57, v147);
    if ((v182 & 0x20) == 0)
    {
      if (v146)
      {
        *&v195 = 0;
        *(&v195 + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        *&v195 = 0xD00000000000001ALL;
        *(&v195 + 1) = 0x8000000182BD4D50;
        sub_181B4B8F0();
        if (v59)
        {
          v60 = swift_slowAlloc();
          v61 = sub_182AD3048();

          __nwlog_create_hash_from_private_string((v61 + 32), v60);

          v62 = sub_182AD3158();
          v64 = v63;
          v65 = v60;
          v58 = v147;
          v54 = v179;
          MEMORY[0x1865DF520](v65, -1, -1);
          v66 = v62;
        }

        else
        {
          v66 = 0x3E6C6C756E3CLL;
          v64 = 0xE600000000000000;
        }

        goto LABEL_16;
      }

      v69 = sub_181B4B8F0();
      if (v70)
      {
        v64 = v70;
        *&v195 = 0;
        *(&v195 + 1) = 0xE000000000000000;
        v153 = v69;
        sub_182AD3BA8();

        *&v195 = 0xD000000000000015;
        *(&v195 + 1) = 0x8000000182BD4D30;
        v66 = v153;
LABEL_16:
        MEMORY[0x1865D9CA0](v66, v64);

        MEMORY[0x1865D9CA0](v195, *(&v195 + 1));
      }
    }

    v67 = type metadata accessor for URLEndpoint;
    v68 = v58;
    goto LABEL_18;
  }

LABEL_19:
  v153 = v46;
  if (v176 != getpid())
  {
    strcpy(&v195, ", pid: ");
    *(&v195 + 1) = 0xE700000000000000;
    LODWORD(v193) = v176;
    v71 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v71);

    MEMORY[0x1865D9CA0](v195, *(&v195 + 1));
  }

  if (v181)
  {
    v72 = *(v169 + 16);

    if (nw_context_get_sensitive_redacted(v72))
    {
      v73 = 0xE000000000000000;
      *&v195 = 0;
      *(&v195 + 1) = 0xE000000000000000;
      sub_182AD3BA8();

      strcpy(&v195, ", account id: ");
      HIBYTE(v195) = -18;
      v194 = 0;
      v193 = 0;
      v74 = sub_182AD3048();
      v75 = nw_parameters_fillout_salted_hash((v74 + 32), &v193, 9);

      if (v75)
      {
        v76 = sub_182AD3158();
        v73 = v77;
      }

      else
      {
        v76 = 0;
      }

      v54 = v179;

      MEMORY[0x1865D9CA0](v76, v73);

      MEMORY[0x1865D9CA0](v195, *(&v195 + 1));
    }

    else
    {
      *&v195 = 0;
      *(&v195 + 1) = 0xE000000000000000;
      sub_182AD3BA8();

      strcpy(&v195, ", account id: ");
      HIBYTE(v195) = -18;
      MEMORY[0x1865D9CA0](v168, v181);

      MEMORY[0x1865D9CA0](v195, *(&v195 + 1));
      v54 = v179;
    }
  }

  if ((v184 & 1) == 0)
  {
    v78 = v52;
    v79 = v166;
    v80 = HIWORD(v166);
    strcpy(&v195, ", persona: ");
    HIDWORD(v195) = -352321536;
    v81 = HIBYTE(v166);
    MEMORY[0x1EEE9AC00](HIWORD(v53));
    v145[-16] = v53;
    v145[-15] = v82;
    v145[-14] = v83;
    v145[-13] = v84;
    v145[-12] = v85;
    v145[-11] = v86;
    v145[-10] = v87;
    v145[-9] = v88;
    v145[-8] = v79;
    v52 = v78;
    v145[-7] = v89;
    v145[-6] = v90;
    v145[-5] = v91;
    v145[-4] = v92;
    v145[-3] = v93;
    v145[-2] = v80;
    v145[-1] = v81;
    v94 = sub_182AD30D8();
    MEMORY[0x1865D9CA0](v94);

    MEMORY[0x1865D9CA0](v195, *(&v195 + 1));
  }

  if (v177)
  {
    v95 = OBJC_IVAR____TtC7Network8Endpoint_type;
    v96 = v177;
    swift_beginAccess();
    v97 = v96 + v95;
    v98 = v149;
    sub_181ACC828(v97, v149, type metadata accessor for Endpoint.EndpointType);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      v106 = type metadata accessor for Endpoint.EndpointType;
LABEL_44:
      sub_181AB7264(v98, v106);
      goto LABEL_45;
    }

    v99 = v98;
    v98 = v148;
    sub_181B2BEE4(v99, v148);
    if ((v182 & 0x20) == 0)
    {
      if (v146)
      {
        strcpy(&v195, ", url hash: ");
        BYTE13(v195) = 0;
        HIWORD(v195) = -5120;
        sub_181B4B8F0();
        if (v100)
        {
          v101 = swift_slowAlloc();
          v102 = sub_182AD3048();

          __nwlog_create_hash_from_private_string((v102 + 32), v101);

          v103 = sub_182AD3158();
          v105 = v104;
          MEMORY[0x1865DF520](v101, -1, -1);
        }

        else
        {
          v103 = 0x3E6C6C756E3CLL;
          v105 = 0xE600000000000000;
        }

        MEMORY[0x1865D9CA0](v103, v105);

        MEMORY[0x1865D9CA0](v195, *(&v195 + 1));
        v52 = v174;
        goto LABEL_42;
      }

      v107 = sub_181B4B8F0();
      if (v108)
      {
        strcpy(&v195, ", url: ");
        *(&v195 + 1) = 0xE700000000000000;
        MEMORY[0x1865D9CA0](v107);

        MEMORY[0x1865D9CA0](v195, *(&v195 + 1));
LABEL_42:

        v98 = v148;
      }
    }

    v106 = type metadata accessor for URLEndpoint;
    goto LABEL_44;
  }

LABEL_45:
  if (v54)
  {
    *&v195 = 0;
    *(&v195 + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v195 = 0xD000000000000011;
    *(&v195 + 1) = 0x8000000182BD4940;
    LODWORD(v187) = v54;
    v109 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v109);

    MEMORY[0x1865D9CA0](v195, *(&v195 + 1));
  }

  if ((v186 & 1) == 0)
  {
    *&v195 = 0;
    *(&v195 + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v195 = 0xD000000000000015;
    *(&v195 + 1) = 0x8000000182BD4D10;
    v187 = v165;
    v110 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v110);

    MEMORY[0x1865D9CA0](v195, *(&v195 + 1));
  }

  v111 = v150;
  if ((v185 & 1) == 0)
  {
    *&v195 = 0;
    *(&v195 + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v195 = 0xD000000000000012;
    *(&v195 + 1) = 0x8000000182BD4CF0;
    v187 = v175;
    v112 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v112);

    MEMORY[0x1865D9CA0](v195, *(&v195 + 1));
  }

  if (v180)
  {
    v113 = *(v180 + 16);
    if (v113)
    {
      strcpy(&v195, ", interface: ");
      HIWORD(v195) = -4864;
      v114 = *(v113 + 40);
      v115 = *(v113 + 48);

      MEMORY[0x1865D9CA0](v114, v115);

      MEMORY[0x1865D9CA0](v195, *(&v195 + 1));

      v52 = v174;
    }
  }

  if (v52)
  {
    strcpy(&v195, ", local: ");
    WORD5(v195) = 0;
    HIDWORD(v195) = -385875968;
    v116 = v52;
    v117 = [v116 description];
    v118 = sub_182AD2F88();
    v120 = v119;

    MEMORY[0x1865D9CA0](v118, v120);

    MEMORY[0x1865D9CA0](v195, *(&v195 + 1));
  }

  if (v178)
  {
    *&v195 = 0;
    *(&v195 + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v195 = 0xD000000000000015;
    *(&v195 + 1) = 0x8000000182BD4960;
    if (v178 <= 2)
    {
      if (v178 == 1)
      {
        v121 = 0xE800000000000000;
        v122 = 0x7265766F646E6168;
      }

      else
      {
        v121 = 0xEB00000000657669;
        v122 = 0x7463617265746E69;
      }
    }

    else if (v178 == 3)
    {
      v121 = 0xE900000000000065;
      v122 = 0x7461676572676761;
    }

    else if (v178 == 4)
    {
      v121 = 0xEB00000000646573;
      v122 = 0x6142746567726174;
    }

    else
    {
      v121 = 0xEC0000007265766FLL;
      v122 = 0x646E614865727570;
    }

    MEMORY[0x1865D9CA0](v122, v121);

    MEMORY[0x1865D9CA0](v195, *(&v195 + 1));
  }

  if ((v111 & 4) != 0)
  {
    MEMORY[0x1865D9CA0](0x79636167656C202CLL, 0xEF74656B636F732DLL);
  }

  if ((v51 & 2) != 0)
  {
    MEMORY[0x1865D9CA0](0x6F2D74736166202CLL, 0xEB000000006E6570);
  }

  v123 = 0xE300000000000000;
  v124 = sub_181FB974C();
  v125 = v124 == 39;
  if (v124 == 39)
  {
    v126 = 7564404;
  }

  else
  {
    v126 = v124;
  }

  LOWORD(v195) = 3;
  if (v124 != 39)
  {
    v123 = 0;
  }

  *(&v195 + 1) = v126;
  *&v196 = v123;
  BYTE8(v196) = v124 == 39;
  v127 = sub_181AC95F0(&v195);
  sub_181F48350(v126, v123, v125);
  if (v127)
  {
    MEMORY[0x1865D9CA0](0x736C74202CLL, 0xE500000000000000);
  }

  v128 = v173;
  v129 = v161;
  if ((v173 & 2) != 0)
  {
    if (v111)
    {
LABEL_80:
      MEMORY[0x1865D9CA0](0x707865206F6E202CLL, 0xEE00657669736E65);
      if ((v111 & 2) != 0)
      {
        goto LABEL_81;
      }

      goto LABEL_87;
    }
  }

  else
  {
    MEMORY[0x1865D9CA0](0x696E69666564202CLL, 0xEA00000000006574);
    if (v111)
    {
      goto LABEL_80;
    }
  }

  if ((v111 & 2) != 0)
  {
LABEL_81:
    MEMORY[0x1865D9CA0](0xD000000000000010, 0x8000000182BD4CD0);
    if (v183)
    {
      goto LABEL_82;
    }

    goto LABEL_88;
  }

LABEL_87:
  if (v183)
  {
LABEL_82:
    MEMORY[0x1865D9CA0](0xD000000000000019, 0x8000000182BD4CB0);
    if ((v183 & 2) != 0)
    {
      goto LABEL_83;
    }

    goto LABEL_89;
  }

LABEL_88:
  if ((v183 & 2) != 0)
  {
LABEL_83:
    MEMORY[0x1865D9CA0](0x616F72206F6E202CLL, 0xEC000000676E696DLL);
    if (!v180)
    {
LABEL_99:
      if ((v182 & 4) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_100;
    }

    goto LABEL_90;
  }

LABEL_89:
  if (!v180)
  {
    goto LABEL_99;
  }

LABEL_90:
  v130 = *(v180 + 24);
  if (!v130)
  {
    goto LABEL_99;
  }

  v131 = v130[4];
  v132 = v130[3] + v131;
  if (v130[2] < v132)
  {
    v132 = v130[2];
  }

  *&v195 = *(v180 + 24);
  *(&v195 + 1) = v131;
  *&v196 = v132;
  v133 = v130;
  while (v131 != v196)
  {
LABEL_94:
    v134 = v133 + v131++;
    *(&v195 + 1) = v131;
    if (v134[40] == 2)
    {

      MEMORY[0x1865D9CA0](0x6C6563206F6E202CLL, 0xED000072616C756CLL);
      goto LABEL_99;
    }
  }

  if (sub_181F47FDC())
  {
    v131 = *(&v195 + 1);
    v133 = v195;
    goto LABEL_94;
  }

  if ((v182 & 4) != 0)
  {
LABEL_100:
    MEMORY[0x1865D9CA0](0xD000000000000011, 0x8000000182BD4C90);
  }

LABEL_101:
  v135 = v160;
  if ((v182 & 8) != 0)
  {
    MEMORY[0x1865D9CA0](0xD000000000000019, 0x8000000182BD4C70);
    if ((v111 & 8) != 0)
    {
      goto LABEL_119;
    }

LABEL_103:
    if ((v111 & 0x20) == 0)
    {
      goto LABEL_104;
    }

LABEL_120:
    MEMORY[0x1865D9CA0](0xD00000000000001ALL, 0x8000000182BD4C30);
    if ((v182 & 0x10) != 0)
    {
LABEL_105:
      MEMORY[0x1865D9CA0](0xD000000000000023, 0x8000000182BD4C00);
    }
  }

  else
  {
    if ((v111 & 8) == 0)
    {
      goto LABEL_103;
    }

LABEL_119:
    MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD4C50);
    if ((v111 & 0x20) != 0)
    {
      goto LABEL_120;
    }

LABEL_104:
    if ((v182 & 0x10) != 0)
    {
      goto LABEL_105;
    }
  }

  v199 = v257;
  v200 = v165;
  v201 = v186;
  *v202 = v192[0];
  *&v202[3] = *(v192 + 3);
  v203 = v175;
  v204 = v185;
  *v205 = v252[0];
  *&v205[15] = *(v252 + 15);
  v210 = v53;
  v211 = v166;
  v212 = v184;
  v233 = v250;
  *&v213[15] = *(v251 + 15);
  v214 = v176;
  v215 = v159;
  v216 = v179;
  v217 = v158;
  v220 = v157;
  v221 = v111;
  v224 = v156;
  v225 = v178;
  v226 = v182;
  v228 = v154;
  v229 = v180;
  v230 = v168;
  v231 = v181;
  v234 = v169;
  v235 = v155;
  v236 = v174;
  v237 = v167;
  v238 = v171;
  v240 = v248;
  v241 = v172;
  v197 = v255;
  v198 = v256;
  v195 = v253;
  v196 = v254;
  v208 = v190;
  v209 = v191;
  *v213 = v251[0];
  v232 = v249;
  v239 = v247;
  v242 = v246;
  v243 = v177;
  v244 = v153;
  v245 = v152;
  v206 = v51;
  v207 = v128;
  v137 = v162;
  v136 = v163;
  v218 = v162;
  v219 = v163;
  v222 = v183;
  v223 = v135;
  v227 = v129;
  if (sub_181ABE634())
  {
    MEMORY[0x1865D9CA0](0xD000000000000018, 0x8000000182BD4BE0);
    if ((v183 & 0x10) != 0)
    {
      goto LABEL_108;
    }

LABEL_112:
    if ((v183 & 0x20) == 0)
    {
      goto LABEL_113;
    }

LABEL_109:
    MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD4BA0);
    if ((v129 & 0x40) == 0)
    {
      goto LABEL_115;
    }

LABEL_114:
    MEMORY[0x1865D9CA0](0x206E776F6E6B202CLL, 0xEF72656B63617274);
    goto LABEL_115;
  }

  if ((v183 & 0x10) == 0)
  {
    goto LABEL_112;
  }

LABEL_108:
  MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BD4BC0);
  if ((v183 & 0x20) != 0)
  {
    goto LABEL_109;
  }

LABEL_113:
  if ((v129 & 0x40) != 0)
  {
    goto LABEL_114;
  }

LABEL_115:
  *&v195 = 0;
  *(&v195 + 1) = 0xE000000000000000;
  sub_182AD3BA8();

  *&v195 = 0x626972747461202CLL;
  *(&v195 + 1) = 0xEF203A6E6F697475;
  if (v135)
  {
    if (v135 == 1)
    {
      v138 = 0xE400000000000000;
      v139 = 1919251317;
    }

    else
    {
      v138 = 0xE700000000000000;
      v139 = 0x65746973626577;
    }
  }

  else
  {
    v138 = 0xE900000000000072;
    v139 = 0x65706F6C65766564;
  }

  MEMORY[0x1865D9CA0](v139, v138);

  MEMORY[0x1865D9CA0](v195, *(&v195 + 1));

  if ((v129 & 0x80) != 0)
  {
    MEMORY[0x1865D9CA0](0xD000000000000019, 0x8000000182BD4B80);
  }

  if ((v129 & 0x100) != 0)
  {
    MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BD4B60);
  }

  if (v137)
  {
    *&v195 = 0;
    *(&v195 + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v195 = 0xD000000000000018;
    *(&v195 + 1) = 0x8000000182BD4980;
    if (v137 == 2)
    {
      v140 = 0x64696F7661;
    }

    else
    {
      v140 = 0x726566657270;
    }

    if (v137 == 2)
    {
      v141 = 0xE500000000000000;
    }

    else
    {
      v141 = 0xE600000000000000;
    }

    MEMORY[0x1865D9CA0](v140, v141);

    MEMORY[0x1865D9CA0](v195, *(&v195 + 1));
  }

  if ((v51 & 0x200) != 0)
  {
    MEMORY[0x1865D9CA0](0x726576726573202CLL, 0xE800000000000000);
    if ((v51 & 0x2000) != 0)
    {
      goto LABEL_170;
    }

LABEL_138:
    if ((v51 & 0x4000) == 0)
    {
      goto LABEL_139;
    }

LABEL_171:
    MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BD4B00);
    if ((v51 & 0x8000) != 0)
    {
      goto LABEL_172;
    }

LABEL_140:
    if ((v128 & 0x200) == 0)
    {
      goto LABEL_141;
    }

LABEL_173:
    MEMORY[0x1865D9CA0](0xD000000000000019, 0x8000000182BD4AC0);
    if (v136)
    {
LABEL_142:
      *&v195 = 0;
      *(&v195 + 1) = 0xE000000000000000;
      sub_182AD3BA8();

      *&v195 = 0xD000000000000018;
      *(&v195 + 1) = 0x8000000182BD4980;
      if (v136 == 2)
      {
        v142 = 0x70752069662D6977;
      }

      else
      {
        v142 = 0xD000000000000011;
      }

      if (v136 == 2)
      {
        v143 = 0xED00006564617267;
      }

      else
      {
        v143 = 0x8000000182BD4AA0;
      }

      MEMORY[0x1865D9CA0](v142, v143);

      MEMORY[0x1865D9CA0](v195, *(&v195 + 1));
    }
  }

  else
  {
    if ((v51 & 0x2000) == 0)
    {
      goto LABEL_138;
    }

LABEL_170:
    MEMORY[0x1865D9CA0](0xD00000000000001ALL, 0x8000000182BD4B20);
    if ((v51 & 0x4000) != 0)
    {
      goto LABEL_171;
    }

LABEL_139:
    if ((v51 & 0x8000) == 0)
    {
      goto LABEL_140;
    }

LABEL_172:
    MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BD4AE0);
    if ((v128 & 0x200) != 0)
    {
      goto LABEL_173;
    }

LABEL_141:
    if (v136)
    {
      goto LABEL_142;
    }
  }

  if ((v51 & 0x20000) != 0)
  {
    if ((v51 & 0x40000) == 0)
    {
      goto LABEL_160;
    }

LABEL_151:
    MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BD4A80);
    if ((v51 & 0x80000) != 0)
    {
      goto LABEL_152;
    }

LABEL_161:
    if ((v51 & 0x100000) == 0)
    {
      goto LABEL_162;
    }

LABEL_153:
    MEMORY[0x1865D9CA0](0xD000000000000011, 0x8000000182BD4A40);
    if ((v128 & 0x2000) != 0)
    {
      goto LABEL_154;
    }

LABEL_163:
    if ((v128 & 0x4000) == 0)
    {
      goto LABEL_164;
    }

LABEL_155:
    MEMORY[0x1865D9CA0](0x6E6565726373202CLL, 0xEC00000066666F20);
    if ((v128 & 0x8000) != 0)
    {
      goto LABEL_156;
    }

LABEL_165:
    if ((v51 & 0x4000000) == 0)
    {
      goto LABEL_166;
    }

LABEL_157:
    MEMORY[0x1865D9CA0](0xD000000000000029, 0x8000000182BD49F0);
    if ((v51 & 0x400000) != 0)
    {
LABEL_167:
      MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BD49D0);
    }
  }

  else
  {
    MEMORY[0x1865D9CA0](0xD000000000000023, 0x8000000182BD49A0);
    if ((v51 & 0x40000) != 0)
    {
      goto LABEL_151;
    }

LABEL_160:
    if ((v51 & 0x80000) == 0)
    {
      goto LABEL_161;
    }

LABEL_152:
    MEMORY[0x1865D9CA0](0xD00000000000001BLL, 0x8000000182BD4A60);
    if ((v51 & 0x100000) != 0)
    {
      goto LABEL_153;
    }

LABEL_162:
    if ((v128 & 0x2000) == 0)
    {
      goto LABEL_163;
    }

LABEL_154:
    MEMORY[0x1865D9CA0](0x64756C636E69202CLL, 0xED0000656C622065);
    if ((v128 & 0x4000) != 0)
    {
      goto LABEL_155;
    }

LABEL_164:
    if ((v128 & 0x8000) == 0)
    {
      goto LABEL_165;
    }

LABEL_156:
    MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD4A20);
    if ((v51 & 0x4000000) != 0)
    {
      goto LABEL_157;
    }

LABEL_166:
    if ((v51 & 0x400000) != 0)
    {
      goto LABEL_167;
    }
  }

  return v188;
}

uint64_t nw_path_evaluator_set_update_handler(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    if (v7)
    {
      nw_allow_use_of_dispatch_internal();
      if (v6)
      {
        nw_path_evaluator_set_queue(v5, v6);
      }

      v9 = v8;
      v10 = v5;
      os_unfair_lock_lock(v5 + 24);
      v11 = _Block_copy(v9);

      v12 = *&v10[16]._os_unfair_lock_opaque;
      *&v10[16]._os_unfair_lock_opaque = v11;

      os_unfair_lock_unlock(v5 + 24);
      nw_path_evaluator_start(v10);
      v13 = 1;
      goto LABEL_6;
    }

    v19 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_path_evaluator_set_update_handler";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v16, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v31 = "nw_path_evaluator_set_update_handler";
          _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null handler", buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v28 != 1)
      {
        v17 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v31 = "nw_path_evaluator_set_update_handler";
          _os_log_impl(&dword_181A37000, v17, v27, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v17, type);
      if (!backtrace_string)
      {
        if (v25)
        {
          *buf = 136446210;
          v31 = "nw_path_evaluator_set_update_handler";
          _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v25)
      {
        *buf = 136446466;
        v31 = "nw_path_evaluator_set_update_handler";
        v32 = 2082;
        v33 = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_path_evaluator_set_update_handler";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v16, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v31 = "nw_path_evaluator_set_update_handler";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null evaluator", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v28 != 1)
      {
        v17 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v31 = "nw_path_evaluator_set_update_handler";
          _os_log_impl(&dword_181A37000, v17, v26, "%{public}s called with null evaluator, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v17, type);
      if (!backtrace_string)
      {
        if (v23)
        {
          *buf = 136446210;
          v31 = "nw_path_evaluator_set_update_handler";
          _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null evaluator, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v23)
      {
        *buf = 136446466;
        v31 = "nw_path_evaluator_set_update_handler";
        v32 = 2082;
        v33 = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null evaluator, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_26:

      free(backtrace_string);
    }
  }

LABEL_39:
  if (v16)
  {
    free(v16);
  }

  v13 = 0;
LABEL_6:

  return v13;
}

uint64_t sub_181AC04E8@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v6 = 0;
  v152 = *MEMORY[0x1E69E9840];
  v137 = *a1;
  v138 = a1[1];
  v139 = a1[2];
  v140 = a1[3];
  v141 = a1[4];
  v142 = a1[5];
  v143 = a1[6];
  v146 = a1[7];
  v144 = a1[8];
  v135 = a1[9];
  v7 = a1[10];
  v8 = a1[11];
  v145 = a1[12];
  v9 = a1[13];
  v10 = a1[14];
  v11 = a1[15];
  v132 = v10;
  v134 = v8;
  v136 = v7;
  v128 = a2;
  if ((a2 & 0x100000000) == 0 || !a2)
  {
    v12 = a1[13];
    swift_beginAccess();
    v13 = v4[2];
    if (*(v13 + 16))
    {
      v14 = v144 | (v135 << 8) | (v7 << 16) | (v8 << 24) | (v145 << 32) | (v9 << 40) | (v10 << 48) | (v11 << 56);
      v15 = sub_181AC2218(v137 | (v138 << 8) | (v139 << 16) | (v140 << 24) | (v141 << 32) | (v142 << 40) | (v143 << 48) | (v146 << 56), v14);
      if (v16)
      {
        v127 = v11;
        v17 = *(*(v13 + 56) + 8 * v15);
        swift_endAccess();
        if ((v128 & 0x100000000) != 0 || *(v17 + 84) == v128)
        {
          swift_beginAccess();
          v18 = v5[4];
          v19 = *(v18 + 16);

          if (v19 && (v20 = sub_181AC2218(v137 | (v138 << 8) | (v139 << 16) | (v140 << 24) | (v141 << 32) | (v142 << 40) | (v143 << 48) | (v146 << 56), v14), (v21 & 1) != 0))
          {
            v22 = *(*(v18 + 56) + 8 * v20);
            swift_unknownObjectRetain();
          }

          else
          {
            v22 = 0;
          }

          swift_endAccess();
          v44 = 0;
          goto LABEL_49;
        }

        v106 = qword_1ED4106B8;

        if (v106 != -1)
        {
          swift_once();
        }

        v107 = sub_182AD2698();
        __swift_project_value_buffer(v107, qword_1ED411DA8);
        swift_retain_n();
        v108 = sub_182AD2678();
        v109 = sub_182AD38A8();
        LOBYTE(v8) = v134;
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          *&v150 = v126;
          *v110 = 136315650;
          MEMORY[0x1EEE9AC00](v126);
          v125 = v109;
          v111 = v12;
          v112 = sub_182AD30D8();
          v8 = v17;
          v114 = sub_181C64FFC(v112, v113, &v150);
          v11 = v127;

          *(v110 + 4) = v114;
          *(v110 + 12) = 1024;
          v115 = *(v8 + 84);

          *(v110 + 14) = v115;

          *(v110 + 18) = 1024;
          v7 = v136;
          *(v110 + 20) = v128;
          _os_log_impl(&dword_181A37000, v108, v125, "Agent for %s has new generation (%u != %u)", v110, 0x18u);
          __swift_destroy_boxed_opaque_existential_1(v126);
          MEMORY[0x1865DF520](v126, -1, -1);
          v116 = v110;
          v9 = v111;
          MEMORY[0x1865DF520](v116, -1, -1);

          LOBYTE(v8) = v134;
        }

        else
        {

          v11 = v127;
          v9 = v12;
        }

        goto LABEL_16;
      }
    }

    swift_endAccess();
    v9 = v12;
  }

  if (qword_1ED4106B8 != -1)
  {
    swift_once();
  }

  v23 = sub_182AD2698();
  __swift_project_value_buffer(v23, qword_1ED411DA8);
  v24 = sub_182AD2678();
  v25 = sub_182AD38A8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v127 = v9;
    v27 = swift_slowAlloc();
    *&v150 = v27;
    *v26 = 136315138;
    MEMORY[0x1EEE9AC00](v27);
    v28 = sub_182AD30D8();
    v8 = sub_181C64FFC(v28, v29, &v150);

    *(v26 + 4) = v8;
    LOBYTE(v8) = v134;
    _os_log_impl(&dword_181A37000, v24, v25, "Agent for %s cache miss", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v30 = v27;
    v9 = v127;
    MEMORY[0x1865DF520](v30, -1, -1);
    v31 = v26;
    v7 = v136;
    MEMORY[0x1865DF520](v31, -1, -1);

    v32 = v135;
    goto LABEL_17;
  }

LABEL_16:
  v32 = v135;
LABEL_17:
  v149 = 0;
  LOBYTE(v150) = v137;
  BYTE1(v150) = v138;
  BYTE2(v150) = v139;
  BYTE3(v150) = v140;
  BYTE4(v150) = v141;
  BYTE5(v150) = v142;
  BYTE6(v150) = v143;
  BYTE7(v150) = v146;
  BYTE8(v150) = v144;
  BYTE9(v150) = v32;
  BYTE10(v150) = v7;
  BYTE11(v150) = v8;
  BYTE12(v150) = v145;
  BYTE13(v150) = v9;
  BYTE14(v150) = v10;
  HIBYTE(v150) = v11;
  sub_181AC1C5C(&v150, v151);
  v33 = nw_network_agent_copy_data(a3);

  if (!v33)
  {
    if (qword_1ED4106B8 != -1)
    {
      swift_once();
    }

    v36 = sub_182AD2698();
    __swift_project_value_buffer(v36, qword_1ED411DA8);
    v37 = sub_182AD2678();
    v38 = sub_182AD38B8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v150 = v40;
      *v39 = 136315138;
      MEMORY[0x1EEE9AC00](v40);
      v41 = sub_182AD30D8();
      v43 = sub_181C64FFC(v41, v42, &v150);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_181A37000, v37, v38, "Unable to lookup agent %s data from kernel", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1865DF520](v40, -1, -1);
      MEMORY[0x1865DF520](v39, -1, -1);
    }

    v44 = 0;
    v22 = 0;
    v17 = 0;
    goto LABEL_49;
  }

  v127 = v11;
  if (v128)
  {
    v34 = -1;
  }

  else
  {
    v34 = 0;
  }

  if ((v128 & 0x100000000) != 0)
  {
    v35 = v34;
  }

  else
  {
    v35 = v128;
  }

  type metadata accessor for NetworkAgent.NetworkAgentBackingClass();
  v17 = swift_allocObject();
  sub_181AC3F18(v33, v33 + v149, v35, &v150);
  LOBYTE(v147) = 0;
  if (*(v17 + 56) || (*(v17 + 72) - 3) >= 3)
  {
    v22 = 0;

    v128 = 0;
    v55 = v132;
    v45 = v136;
    v56 = v146;
LABEL_41:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v148 = v5[2];
    v5[2] = 0x8000000000000000;
    v58 = v137 | (v138 << 8) | (v139 << 16) | (v140 << 24) | (v141 << 32) | (v142 << 40) | (v143 << 48) | (v56 << 56);
    v59 = v144 | (v135 << 8) | (v45 << 16) | (v134 << 24) | (v145 << 32) | (v9 << 40) | (v55 << 48) | (v127 << 56);
    sub_181AC4D20(v17, v58, v59, isUniquelyReferenced_nonNull_native);
    v5[2] = v148;
    swift_endAccess();
    v44 = nw_mach_continuous_time();
    swift_beginAccess();
    v60 = swift_isUniquelyReferenced_nonNull_native();
    *&v148 = v5[3];
    v5[3] = 0x8000000000000000;
    sub_181AC5180(v44, v58, v59, v60);
    v5[3] = v148;
    swift_endAccess();
    if (qword_1ED4106B8 != -1)
    {
      swift_once();
    }

    v61 = sub_182AD2698();
    __swift_project_value_buffer(v61, qword_1ED411DA8);
    v62 = sub_182AD2678();
    v63 = sub_182AD38A8();
    v6 = v22;
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v130 = v17;
      v65 = swift_slowAlloc();
      *&v150 = v65;
      *v64 = 136315138;
      MEMORY[0x1EEE9AC00](v65);
      v66 = sub_182AD30D8();
      v68 = sub_181C64FFC(v66, v67, &v150);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_181A37000, v62, v63, "Saved agent %s to the cache", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      v69 = v65;
      v17 = v130;
      MEMORY[0x1865DF520](v69, -1, -1);
      MEMORY[0x1865DF520](v64, -1, -1);
    }

    goto LABEL_46;
  }

  v22 = 0;
  v6 = *(v17 + 16);
  v45 = v136;
  if (!v6)
  {
    goto LABEL_92;
  }

  v46 = *(v17 + 24) - v6;
  v47 = v46 - 216;
  if (__OFSUB__(v46, 216))
  {
    __break(1u);
    goto LABEL_103;
  }

  if (v47 <= 0)
  {
LABEL_92:

    v128 = 0;
LABEL_96:
    v6 = v22;
    goto LABEL_97;
  }

  v150 = *(v17 + 32);
  v48 = sub_181AC1C5C(&v150, v151);
  swift_retain_n();
  v49 = nw_proxy_config_create_with_agent_data_extended((v6 + 27), v47, v48 + 2, &v147);

  v128 = v49;
  if (v147 != 1)
  {
LABEL_95:

    goto LABEL_96;
  }

  nw_proxy_config_set_generation(v49, v35);
  swift_beginAccess();
  swift_unknownObjectRetain();
  v50 = swift_isUniquelyReferenced_nonNull_native();
  *&v148 = v5[4];
  v5[4] = 0x8000000000000000;
  sub_181E0D4A0(v49, v137 | (v138 << 8) | (v139 << 16) | (v140 << 24) | (v141 << 32) | (v142 << 40) | (v143 << 48) | (v146 << 56), v144 | (v135 << 8) | (v136 << 16) | (v134 << 24) | (v145 << 32) | (v9 << 40) | (v132 << 48) | (v127 << 56), v50);
  v5[4] = v148;
  swift_endAccess();
  result = malloc(0xD8uLL);
  v150 = *(v17 + 16);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v52 = result;
  v6 = 0;
  v53 = result + 216;
  sub_181CA5CCC();
  sub_182AD1CE8();
  v54 = *(v17 + 16);
  if (v54)
  {
    MEMORY[0x1865DF520](v54, -1, -1);
  }

  *(v52 + 212) = 0;
  *(v17 + 16) = v52;
  *(v17 + 24) = v53;

  v45 = v136;
LABEL_97:
  v55 = v132;
  v56 = v146;
  if (v147)
  {
    goto LABEL_41;
  }

  if (qword_1ED4106B8 != -1)
  {
LABEL_103:
    swift_once();
  }

  v117 = sub_182AD2698();
  __swift_project_value_buffer(v117, qword_1ED411DA8);
  v118 = sub_182AD2678();
  v119 = sub_182AD38A8();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    *&v150 = v121;
    *v120 = 136315138;
    MEMORY[0x1EEE9AC00](v121);
    v122 = sub_182AD30D8();
    v124 = sub_181C64FFC(v122, v123, &v150);

    *(v120 + 4) = v124;
    _os_log_impl(&dword_181A37000, v118, v119, "Skipping saving agent %s to the cache due to incomplete proxy config", v120, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v121);
    MEMORY[0x1865DF520](v121, -1, -1);
    MEMORY[0x1865DF520](v120, -1, -1);
  }

  v44 = 0;
LABEL_46:
  v22 = v128;
LABEL_49:
  result = swift_beginAccess();
  if (*(v5[2] + 16) >= 0x21uLL)
  {
    if (qword_1ED4106B8 != -1)
    {
      swift_once();
    }

    v70 = sub_182AD2698();
    __swift_project_value_buffer(v70, qword_1ED411DA8);
    v71 = sub_182AD2678();
    v72 = sub_182AD38A8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 134217984;
      *(v73 + 4) = 32;
      _os_log_impl(&dword_181A37000, v71, v72, "Agent cache hit limit (%ld, purging all agents not used recently", v73, 0xCu);
      MEMORY[0x1865DF520](v73, -1, -1);
    }

    v131 = v17;
    v146 = v6;

    if (!v44)
    {
      v44 = nw_mach_continuous_time();
    }

    swift_beginAccess();
    v74 = v5[3];
    v75 = 1 << *(v74 + 32);
    v76 = -1;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    v9 = v76 & *(v74 + 64);
    v77 = (v75 + 63) >> 6;

    v78 = 0;
    v45 = MEMORY[0x1E69E7CC0];
    v17 = 2000000000;
    while (1)
    {
      v79 = v78;
      if (!v9)
      {
        break;
      }

LABEL_63:
      v80 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v81 = v80 | (v78 << 6);
      v82 = *(v74 + 56);
      v148 = *(*(v74 + 48) + 16 * v81);
      if (nw_delta_nanos(*(v82 + 8 * v81), v44) > 0x77359400)
      {
        v128 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_181C6CA4C(0, *(v45 + 2) + 1, 1, v45);
        }

        v84 = *(v45 + 2);
        v83 = *(v45 + 3);
        v85 = v84 + 1;
        if (v84 >= v83 >> 1)
        {
          v145 = v84 + 1;
          v86 = sub_181C6CA4C((v83 > 1), v84 + 1, 1, v45);
          v85 = v84 + 1;
          v45 = v86;
        }

        *(v45 + 2) = v85;
        *&v45[16 * v84 + 32] = v148;
        v22 = v128;
      }
    }

    while (1)
    {
      v78 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        __break(1u);
        goto LABEL_95;
      }

      if (v78 >= v77)
      {
        break;
      }

      v9 = *(v74 + 64 + 8 * v78);
      ++v79;
      if (v9)
      {
        goto LABEL_63;
      }
    }

    v87 = *(v45 + 2);
    if (v87)
    {
      v88 = v45 + 47;
      do
      {
        v89 = *(v88 - 15);
        v90 = *(v88 - 7);
        swift_beginAccess();
        v91 = sub_181AC2218(v89, v90);
        if (v92)
        {
          v93 = v91;
          v94 = swift_isUniquelyReferenced_nonNull_native();
          v95 = v5[2];
          v147 = v95;
          v5[2] = 0x8000000000000000;
          if (!v94)
          {
            sub_182256C70();
            v95 = v147;
          }

          sub_181FAEB54(v93, v95);
          v5[2] = v95;
        }

        swift_endAccess();
        swift_beginAccess();
        v96 = sub_181AC2218(v89, v90);
        if (v97)
        {
          v98 = v96;
          v99 = swift_isUniquelyReferenced_nonNull_native();
          v100 = v5[3];
          v147 = v100;
          v5[3] = 0x8000000000000000;
          if (!v99)
          {
            sub_182256DD0();
            v100 = v147;
          }

          sub_181FAEB54(v98, v100);
          v5[3] = v100;
        }

        swift_endAccess();
        swift_beginAccess();
        v101 = sub_181AC2218(v89, v90);
        if (v102)
        {
          v103 = v101;
          v104 = swift_isUniquelyReferenced_nonNull_native();
          v105 = v5[4];
          v147 = v105;
          v5[4] = 0x8000000000000000;
          if (!v104)
          {
            sub_182256F20();
            v105 = v147;
          }

          swift_unknownObjectRelease();
          sub_181FABC0C(v103, v105);
          v5[4] = v105;
        }

        v88 += 16;
        swift_endAccess();
        --v87;
      }

      while (v87);
    }

    v17 = v131;
  }

  if (!v17)
  {
    result = swift_unknownObjectRelease();
    v22 = 0;
  }

  *a4 = v17;
  a4[1] = v22;
  return result;
}

void *sub_181AC1BE8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_181AC1C5C(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_181AC1BE8(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void nw_path_access_agent_cache(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_path_access_agent_cache";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v12, &type, &v25))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v28 = "nw_path_access_agent_cache";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v28 = "nw_path_access_agent_cache";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v12)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v12);
        goto LABEL_6;
      }

      if (v19)
      {
        *buf = 136446210;
        v28 = "nw_path_access_agent_cache";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v28 = "nw_path_access_agent_cache";
        _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
    globals_for_path = nw_context_get_globals_for_path(v3);
    os_unfair_lock_lock((globals_for_path + 116));
    v7 = *(globals_for_path + 64);
    if (!v7)
    {
      v8 = _nw_network_agent_cache_create();
      v9 = *(globals_for_path + 64);
      *(globals_for_path + 64) = v8;

      v7 = *(globals_for_path + 64);
    }

    v10 = nw_path_shared_necp_fd(v3);
    v5[2](v5, v7, v10);
    os_unfair_lock_unlock((globals_for_path + 116));
    goto LABEL_6;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v28 = "nw_path_access_agent_cache";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (!__nwlog_fault(v12, &type, &v25))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v13 = __nwlog_obj();
    v16 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      v28 = "nw_path_access_agent_cache";
      _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null access_block", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v25 != 1)
  {
    v13 = __nwlog_obj();
    v24 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      v28 = "nw_path_access_agent_cache";
      _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null access_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v20 = __nw_create_backtrace_string();
  v13 = __nwlog_obj();
  v21 = type;
  v22 = os_log_type_enabled(v13, type);
  if (!v20)
  {
    if (v22)
    {
      *buf = 136446210;
      v28 = "nw_path_access_agent_cache";
      _os_log_impl(&dword_181A37000, v13, v21, "%{public}s called with null access_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v22)
  {
    *buf = 136446466;
    v28 = "nw_path_access_agent_cache";
    v29 = 2082;
    v30 = v20;
    _os_log_impl(&dword_181A37000, v13, v21, "%{public}s called with null access_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v20);
  if (v12)
  {
    goto LABEL_41;
  }

LABEL_6:
}

unint64_t sub_181AC2218(uint64_t a1, uint64_t a2)
{
  sub_182AD44E8();
  sub_182AD44F8();
  v4 = sub_182AD4558();
  return sub_181ADBBD8(a1, a2, v4);
}

unint64_t sub_181AC2364()
{
  result = qword_1ED4106B0;
  if (!qword_1ED4106B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4106B0);
  }

  return result;
}

uint64_t sub_181AC23B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v58[0] = 0;
  v58[1] = MEMORY[0x1E69E7CC0];
  v58[2] = MEMORY[0x1E69E7CC0];
  v59 = 0;
  v56 = MEMORY[0x1E69E7CC0];
  v57 = v4;
  v55 = MEMORY[0x1E69E7CC0];
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = *(v4 + 24) - v5;
  v7 = __OFSUB__(v6, 216);
  v8 = v6 - 216;
  if (v7)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v8 < 1)
  {
    goto LABEL_31;
  }

  v50 = v5 + 216;
  v51 = v5 + 216 + v8;
  v52 = 0;
  v53 = 0;
  v54 = 1;
  Deserializer.uint32(_:)(v58, v49);
  Deserializer.uint32(_:)(v58 + 1, v48);

  Deserializer.buffer(_:length:)(64, v47);
  Deserializer.buffer(_:length:)(120, v46);
  Deserializer.uint32(_:)(&v59, v45);
  if (v54 == 1 && v53)
  {
    goto LABEL_10;
  }

  v9 = v51 - v50;
  if (!v50)
  {
    v9 = 0;
  }

  v7 = __OFSUB__(v9, v52);
  v10 = v9 - v52;
  if (v7)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v10 < 4)
  {
LABEL_10:
    v53 = 1;
    v54 = 1;
  }

  else
  {
    v52 += 4;
  }

  result = Deserializer.uint32(_:)(&v59 + 1, &v44);
  v2 = v53;
  if (v54 != 1)
  {
    goto LABEL_26;
  }

  if (v53)
  {
    if (qword_1ED4106B8 == -1)
    {
LABEL_15:
      v12 = sub_182AD2698();
      __swift_project_value_buffer(v12, qword_1ED411DA8);

      v13 = sub_182AD2678();
      v14 = sub_182AD38B8();
      if (!os_log_type_enabled(v13, v14))
      {

LABEL_42:

        *(a2 + 32) = 0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return result;
      }

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v49[0] = v16;
      *v15 = 136315650;
      v50 = v4;
      v17 = NetworkAgent.description.getter();
      v19 = sub_181C64FFC(v17, v18, v49);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2048;
      v20 = *(v4 + 16);
      if (!v20)
      {

        v22 = 0;
LABEL_41:
        *(v15 + 14) = v22;

        *(v15 + 22) = 2080;
        v50 = v2;
        LOBYTE(v51) = 1;
        v41 = DeserializationResult.description.getter();
        v43 = sub_181C64FFC(v41, v42, v49);

        *(v15 + 24) = v43;
        _os_log_impl(&dword_181A37000, v13, v14, "Unable to deserialize nexus network agent %s with %ld bytes: '%s'", v15, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v16, -1, -1);
        MEMORY[0x1865DF520](v15, -1, -1);

        goto LABEL_42;
      }

      v21 = *(v4 + 24);

      v22 = v21 - v20 - 216;
      if (!__OFSUB__(v21 - v20, 216))
      {
        goto LABEL_41;
      }

      __break(1u);
      goto LABEL_20;
    }

LABEL_46:
    swift_once();
    goto LABEL_15;
  }

LABEL_20:
  if (v50)
  {
    v23 = v51 - v50;
  }

  else
  {
    v23 = 0;
  }

  v2 = v23 - v52;
  if (__OFSUB__(v23, v52))
  {
    __break(1u);
    goto LABEL_48;
  }

  if (v2 < 0)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  if (v2)
  {
LABEL_26:
    if (qword_1ED4106B8 == -1)
    {
LABEL_27:
      v24 = sub_182AD2698();
      __swift_project_value_buffer(v24, qword_1ED411DA8);

      v25 = sub_182AD2678();
      v26 = sub_182AD38A8();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v50 = v28;
        *v27 = 134218242;
        *(v27 + 4) = v2;
        *(v27 + 12) = 2080;
        v49[0] = v4;
        v29 = NetworkAgent.description.getter();
        v31 = v30;

        v32 = sub_181C64FFC(v29, v31, &v50);

        *(v27 + 14) = v32;
        _os_log_impl(&dword_181A37000, v25, v26, "%ld bytes remained after deserializing network agent %s", v27, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x1865DF520](v28, -1, -1);
        MEMORY[0x1865DF520](v27, -1, -1);
      }

      else
      {
      }

      goto LABEL_31;
    }

LABEL_44:
    swift_once();
    goto LABEL_27;
  }

LABEL_31:
  v33 = v56;
  v34 = *(v56 + 16);
  if (v34 >= 4)
  {
    v35 = sub_181AC2998(v34 >> 2, 0);
    memcpy(v35 + 4, (v33 + 32), v34 & 0x7FFFFFFFFFFFFFFCLL);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v36 = v55;
  v37 = *(v55 + 16);
  if (v37 >= 4)
  {
    v38 = sub_181AC2998(v37 >> 2, 0);
    memcpy(v38 + 4, (v36 + 32), v37 & 0x7FFFFFFFFFFFFFFCLL);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  v39 = v58[0];
  v40 = v59;
  *a2 = v57;
  *(a2 + 8) = v39;
  *(a2 + 16) = v35;
  *(a2 + 24) = v38;
  *(a2 + 32) = v40;
  return result;
}

uint64_t nw_path_can_use_channel_syscalls()
{
  if (nw_path_can_use_channel_syscalls::onceToken != -1)
  {
    dispatch_once(&nw_path_can_use_channel_syscalls::onceToken, &__block_literal_global_267_72904);
  }

  return nw_path_can_use_channel_syscalls::can_use_channel_syscalls;
}

void *sub_181AC2998(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838E50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_181AC2A38(int a1)
{
  v3 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v59 = v1[1];
  v60 = v6;
  v7 = v1[2];
  v57 = v1[3];
  v58 = v7;
  v8 = v1[4];
  v56 = v1[5];
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v11 = *(v1 + 5);
  v84 = *(v1 + 6);
  v85 = v9;
  v86[0] = v10;
  *(v86 + 12) = *(v1 + 140);
  v12 = *(v1 + 4);
  v81 = *(v1 + 3);
  v82 = v12;
  v83 = v11;
  LODWORD(v7) = *(v1 + 39);
  v13 = v1[25];
  v80 = v1[24];
  v14 = *(v1 + 11);
  v78 = *(v1 + 10);
  v79 = v14;
  v15 = *(v1 + 17);
  v76 = *(v1 + 16);
  v77 = v15;
  v16 = *(v1 + 15);
  v74 = *(v1 + 14);
  v75 = v16;
  v73 = *(v1 + 13);
  LODWORD(v4) = *(v1 + 72);
  v61 = v7;
  v62 = v4;
  v17 = *(v1 + 292);
  v18 = *(v1 + 308);
  v19 = *(v1 + 324);
  *(v72 + 12) = *(v1 + 21);
  v71 = v18;
  v72[0] = v19;
  v70 = v17;
  v20 = *(v1 + 88);
  v21 = *(v1 + 356);
  *(v69 + 14) = *(v1 + 370);
  v69[0] = v21;
  result = nw_path_can_use_channel_syscalls();
  if (!result)
  {
    return result;
  }

  swift_beginAccess();
  if ((v8[230] & 4) != 0)
  {
    return 0;
  }

  v54 = a1;
  memcpy(v68, v8 + 16, 0x188uLL);
  v23 = sub_181F43F90();
  v55 = v13;
  if ((v23 & 0x1FF) == 6 && v8[234])
  {
    if (v60)
    {
      if ((*(v60 + 137) & 0x40) != 0)
      {
        goto LABEL_28;
      }
    }

    else if (v13)
    {
      v24 = v13[4];
      v25 = v13[2];
      if (v25 >= v13[3] + v24)
      {
        v25 = v13[3] + v24;
      }

      v65 = v13;
      v66 = v24;
      v67 = v25;
      v26 = v13;
      while (1)
      {
        if (v24 == v25)
        {
          v23 = sub_181AC81FC(v23);
          if ((v23 & 1) == 0)
          {

            goto LABEL_21;
          }

          v26 = v65;
          v24 = v66;
        }

        v27 = v24 + 1;
        v66 = v24 + 1;
        v28 = &v26[26 * v24];
        v29 = *(v28 + 9);
        v30 = *(v28 + 13);
        v31 = *(v28 + 7);
        v68[3] = *(v28 + 11);
        v68[4] = v30;
        v68[1] = v31;
        v68[2] = v29;
        v32 = *(v28 + 17);
        v33 = *(v28 + 21);
        v34 = *(v28 + 15);
        v68[7] = *(v28 + 19);
        v68[8] = v33;
        v68[5] = v34;
        v68[6] = v32;
        v35 = *(v28 + 25);
        v36 = *(v28 + 27);
        v37 = *(v28 + 23);
        *(&v68[11] + 10) = *(v28 + 226);
        v68[10] = v35;
        v68[11] = v36;
        v68[9] = v37;
        v68[0] = *(v28 + 5);
        v38 = *(&v68[0] + 1);
        if (*(&v68[0] + 1))
        {
          if (BYTE8(v68[12]))
          {
            break;
          }
        }

        v25 = v67;
        v24 = v27;
        v13 = v55;
      }

      sub_181AFE6F4(v68, v63);

      sub_181AFE6A0(v68);
      v39 = *(v38 + 136);
      v13 = v55;

      if ((v39 & 0x4000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_28;
    }

LABEL_21:
    v63[0] = 0;
    v63[1] = 0;
    *&v68[0] = v60;
    *(&v68[0] + 1) = v59;
    *&v68[1] = v58;
    *(&v68[1] + 1) = v57;
    *&v68[2] = v8;
    *(&v68[2] + 1) = v56;
    v68[7] = v85;
    v68[8] = v86[0];
    *(&v68[8] + 12) = *(v86 + 12);
    v68[3] = v81;
    v68[4] = v82;
    v68[5] = v83;
    v68[6] = v84;
    HIDWORD(v68[9]) = v61;
    v68[10] = v78;
    v68[11] = v79;
    *&v68[12] = v80;
    *(&v68[12] + 1) = v13;
    v68[15] = v75;
    v68[16] = v76;
    v68[17] = v77;
    v68[13] = v73;
    v68[14] = v74;
    LODWORD(v68[18]) = v62;
    *(&v68[19] + 4) = v71;
    *(&v68[20] + 4) = v72[0];
    *(&v68[18] + 4) = v70;
    v68[21] = *(v72 + 12);
    LODWORD(v68[22]) = v20;
    *(&v68[23] + 2) = *(v69 + 14);
    *(&v68[22] + 4) = v69[0];
    v40 = sub_181ADEF94(0, 0, &v65, v63);

    if ((v40 & 1) == 0 || (!v59 || (*(v59 + 137) & 0x40) == 0) && (!v58 || (*(v58 + 137) & 0x40) == 0) && (!v57 || (*(v57 + 136) & 0x4000) == 0))
    {
      return 0;
    }
  }

LABEL_28:
  result = 0;
  if (!v20 && v62 != 4 && (v61 & 0x10) == 0)
  {
    v41 = v56;
    if (v56)
    {
      v42 = OBJC_IVAR____TtC7Network8Endpoint_type;
      swift_beginAccess();
      sub_181B5C0FC(v41 + v42, v5);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_181B5C160(v5);
      }

      else
      {
        v43 = *(v5 + 2);
        v44 = *(v5 + 3);
        v52 = *(v5 + 4);
        v53 = *(v5 + 20);
        v45 = v5[42];

        if (v45 <= 1)
        {
          v13 = v55;
          if (v45)
          {
            sub_181AD1DE4(v43, v44, v52, v53, 1u);
            if (v43 == 0xFF)
            {
              return 0;
            }
          }

          else
          {
            sub_181AD1DE4(v43, v44, v52, v53, 0);
            if ((v43 & 0xF0) == 0xE0)
            {
              return 0;
            }
          }
        }

        else
        {
          v13 = v55;
          if (v45 == 2)
          {
            v46 = v52;
            v47 = v53;
            v48 = 2;
          }

          else
          {
            v46 = v52;
            v47 = v53;
            if (v45 == 3)
            {
              v48 = 3;
            }

            else
            {
              v48 = 4;
            }
          }

          sub_181AD1DE4(v43, v44, v46, v47, v48);
        }
      }
    }

    *&v68[0] = v60;
    *(&v68[0] + 1) = v59;
    *&v68[1] = v58;
    *(&v68[1] + 1) = v57;
    *&v68[2] = v8;
    *(&v68[2] + 1) = v41;
    v68[7] = v85;
    v68[8] = v86[0];
    *(&v68[8] + 12) = *(v86 + 12);
    v68[3] = v81;
    v68[4] = v82;
    v68[5] = v83;
    v68[6] = v84;
    HIDWORD(v68[9]) = v61;
    v68[10] = v78;
    v68[11] = v79;
    *&v68[12] = v80;
    *(&v68[12] + 1) = v13;
    v68[16] = v76;
    v68[17] = v77;
    v68[13] = v73;
    v68[14] = v74;
    v68[15] = v75;
    LODWORD(v68[18]) = v62;
    *(&v68[19] + 4) = v71;
    *(&v68[20] + 4) = v72[0];
    *(&v68[18] + 4) = v70;
    v68[21] = *(v72 + 12);
    LODWORD(v68[22]) = 0;
    *(&v68[23] + 2) = *(v69 + 14);
    *(&v68[22] + 4) = v69[0];
    sub_181AC350C(v54 & 1, v63);
    v49 = v63[0];
    if (v63[0])
    {
      v50 = v64;
      if (!v64 || (v54 & 1) != 0)
      {
        sub_181AD1A40(v63[0]);
      }

      else
      {
        *&v68[0] = v60;
        *(&v68[0] + 1) = v59;
        *&v68[1] = v58;
        *(&v68[1] + 1) = v57;
        *&v68[2] = v8;
        *(&v68[2] + 1) = v56;
        v68[7] = v85;
        v68[8] = v86[0];
        *(&v68[8] + 12) = *(v86 + 12);
        v68[3] = v81;
        v68[4] = v82;
        v68[5] = v83;
        v68[6] = v84;
        HIDWORD(v68[9]) = v61;
        v68[10] = v78;
        v68[11] = v79;
        *&v68[12] = v80;
        *(&v68[12] + 1) = v55;
        v68[16] = v76;
        v68[17] = v77;
        v68[13] = v73;
        v68[14] = v74;
        v68[15] = v75;
        LODWORD(v68[18]) = v62;
        *(&v68[19] + 4) = v71;
        *(&v68[20] + 4) = v72[0];
        *(&v68[18] + 4) = v70;
        v68[21] = *(v72 + 12);
        LODWORD(v68[22]) = 0;
        *(&v68[23] + 2) = *(v69 + 14);
        *(&v68[22] + 4) = v69[0];
        v51 = sub_181B6C108();
        sub_181AD1A40(v49);
        if (v50 < v51)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_181AC3118()
{
  v1 = v0;
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v5 = *(v1 + 40);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC7Network8Endpoint_type;
    swift_beginAccess();
    sub_181B5C0FC(v5 + v6, v4);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_181B5C160(v4);
    }

    else
    {
      v16 = *(v4 + 2);
      v15 = *(v4 + 3);
      v17 = *(v4 + 4);
      v18 = *(v4 + 20);
      v19 = v4[42];

      if (v19)
      {
        if (!v19)
        {
          sub_181AD1DE4(v16, v15, v17, v18, v19);
          *(v1 + 116) = 1;

          *(v1 + 120) = 0xD00000000000001CLL;
          *(v1 + 128) = 0x8000000182BD7150;

          *(v1 + 360) = 0;
          *(v1 + 368) = 0;
          return result;
        }

        sub_181AD1DE4(v16, v15, v17, v18, 1u);
      }

      else
      {
        sub_181AD1DE4(v16, v15, v17, v18, 0);
      }
    }
  }

  v31 = 0;
  v30 = xmmword_182AED9E0;
  memcpy(v32, v1, 0x17AuLL);
  memcpy(v29, v1, 0x17AuLL);
  sub_181A3DF5C(v32, v33);
  v7 = sub_181ADE7DC(&v31, &v30);
  memcpy(v33, v29, 0x17AuLL);
  sub_181A3DFB8(v33);
  if (v7)
  {
    *(v1 + 376) = 1;
    v25[0] = 0;
    memcpy(v27, v1, 0x17AuLL);
    memcpy(v26, v1, sizeof(v26));
    sub_181A3DF5C(v27, v29);
    v8 = sub_181ADEF94(0, 0, v25, &v30);
    memcpy(v29, v26, 0x17AuLL);
    sub_181A3DFB8(v29);
    if (v8)
    {
      *(v1 + 116) = 1;
      v9 = 0x8000000182BD7130;

      *(v1 + 117) = 0;
      v10 = 0xD000000000000011;
      *(v1 + 360) = 0;
      *(v1 + 368) = 0;
    }

    else
    {
      v9 = *(&v30 + 1);
      v10 = v30;

      if (v25[0])
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      *(v1 + 116) = v20;
    }

    *(v1 + 120) = v10;
    *(v1 + 128) = v9;
  }

  else
  {
    if (v31 != 32)
    {
      v11 = *(&v30 + 1);
      if (*(&v30 + 1))
      {
        v12 = v30;
        if (!v31 || !*(v1 + 117) || v31 - 30 >= 0xFFFFFFFC && *(v1 + 117) - 26 > 3)
        {
          *(v1 + 117) = v31;

          *(v1 + 120) = v12;
          *(v1 + 128) = v11;
          *(v1 + 360) = 0;
          *(v1 + 368) = 0;
        }
      }
    }

    v28 = 0;
    if (*(v1 + 117) == 3 && (memcpy(v27, v1, 0x17AuLL), memcpy(v26, v1, sizeof(v26)), sub_181A3DF5C(v27, v25), v13 = sub_181ADEF94(1, 1, &v28, &v30), memcpy(v29, v26, 0x17AuLL), sub_181A3DFB8(v29), (v13 & 1) == 0))
    {
      v21 = *(&v30 + 1);
      if (*(&v30 + 1))
      {
        v22 = v30;

        *(v1 + 120) = v22;
        *(v1 + 128) = v21;
      }

      if (v28)
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = 2;
    }

    *(v1 + 116) = v14;
  }
}

void *sub_181AC350C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a2;
  v56 = *MEMORY[0x1E69E9840];
  v4 = *(v2 + 264);
  result = *(v2 + 312);
  if (result)
  {
    if (v4)
    {
      v35 = *(v2 + 264);
      v6 = result[4];
      v7 = result[3] + v6;
      if (result[2] < v7)
      {
        v7 = result[2];
      }

      v53 = *(v2 + 312);
      v54 = v6;
      v43 = v6;
      v55 = v7;
      is_null = swift_retain_n();
      v42 = is_null;
      while (1)
      {
        v9 = v43;
        if (v43 == v55)
        {
          if ((sub_181AC81FC(is_null) & 1) == 0)
          {

            v3 = a2;
            v4 = v35;
            goto LABEL_20;
          }

          v9 = v54;
          v42 = v53;
        }

        v10 = (v42 + 24 * v9);
        v43 = v9 + 1;
        v54 = v9 + 1;
        v11 = v10[50];
        v12 = v10[51];
        v13 = v10[52];
        v14 = v10[53];
        v15 = v10[54];
        v16 = v10[55];
        v17 = v10[56];
        v18 = v10[57];
        v19 = v10[58];
        v20 = v10[59];
        v21 = v10[60];
        v22 = v10[61];
        v23 = v10[62];
        v24 = v10[63];
        v40 = v10[49];
        v41 = v10[48];
        uu[0] = v10[48];
        uu[1] = v40;
        v38 = v12;
        v39 = v11;
        uu[2] = v11;
        uu[3] = v12;
        v36 = v14;
        v37 = v13;
        uu[4] = v13;
        uu[5] = v14;
        uu[6] = v15;
        uu[7] = v16;
        v45 = v17;
        v46 = v18;
        v47 = v19;
        v48 = v20;
        v49 = v21;
        v50 = v22;
        v51 = v23;
        v52 = v24;
        is_null = uuid_is_null(uu);
        if (is_null != 1)
        {
          if (*(v35 + 16))
          {
            is_null = sub_181AC2218(v41 | (v40 << 8) | (v39 << 16) | (v38 << 24) | (v37 << 32) | (v36 << 40) | (v15 << 48) | (v16 << 56), v17 | (v18 << 8) | (v19 << 16) | (v20 << 24) | (v21 << 32) | (v22 << 40) | (v23 << 48) | (v24 << 56));
            if ((v25 & 1) != 0 && (*(*(*(v35 + 56) + 8 * is_null) + 80) & 0xE080) != 0 && (*(*(*(v35 + 56) + 8 * is_null) + 80) & 0x13) != 1 && (((*(*(*(v35 + 56) + 8 * is_null) + 80) & 0x40) == 0) & a1) == 0)
            {
              *uu = *(*(v35 + 56) + 8 * is_null);
              swift_retain_n();
              sub_181AC23B8(uu, a2);
            }
          }
        }
      }
    }
  }

  else if (v4)
  {
LABEL_20:
    v26 = 0;
    v27 = 1 << *(v4 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v4 + 64);
    while (v29)
    {
LABEL_28:
      v31 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v32 = *(*(v4 + 56) + ((v26 << 9) | (8 * v31)));
      if ((*(v32 + 80) & 0xE080) != 0 && (*(v32 + 80) & 0x13) != 1 && (((*(v32 + 80) & 0x40) == 0) & a1) == 0)
      {
        v53 = *(*(v4 + 56) + ((v26 << 9) | (8 * v31)));
        swift_retain_n();

        sub_181AC23B8(&v53, v3);
      }
    }

    while (1)
    {
      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
      }

      if (v30 >= ((v27 + 63) >> 6))
      {
        break;
      }

      v29 = *(v4 + 64 + 8 * v30);
      ++v26;
      if (v29)
      {
        v26 = v30;
        goto LABEL_28;
      }
    }
  }

  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  return result;
}

uint64_t sub_181AC3890(uint64_t result)
{
  if (result != 2)
  {
    return sub_181B03DAC(result);
  }

  return result;
}

unint64_t sub_181AC38A4()
{
  result = qword_1ED410658;
  if (!qword_1ED410658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED410658);
  }

  return result;
}

void *_nw_network_agent_cache_create()
{
  type metadata accessor for NetworkAgentCache();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC8];
  result[2] = MEMORY[0x1E69E7CC8];
  result[3] = v1;
  result[4] = v1;
  return result;
}

uint64_t sub_181AC396C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_182AD2698();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_182AD2688();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t nw_network_agent_copy_data(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v29 = *MEMORY[0x1E69E9840];
  if ((v1 & 0x80000000) == 0)
  {
    v26 = *v2;
    if (!necp_client_action())
    {
      v8 = v28 + 216;
      if (v4)
      {
        *v4 = v8;
      }

      v9 = malloc_type_malloc(v8, 0xF4E4039uLL);
      if (!v9)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        v21 = "nw_network_agent_copy_data";
        v10 = _os_log_send_and_compose_impl();
        result = __nwlog_should_abort(v10);
        if (result)
        {
          __break(1u);
          return result;
        }

        free(v10);
        v9 = 0;
      }

      v11 = v9;
      memcpy(v9, __src, v28 + 216);
      return v11;
    }

    v5 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (v5 == 2)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v21 = "nw_network_agent_copy_data";
        v22 = 1024;
        v23 = 2;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s NECP_CLIENT_ACTION_COPY_AGENT %{darwin.errno}d", buf, 0x12u);
      }

      return 0;
    }

    *buf = 136446466;
    v21 = "nw_network_agent_copy_data";
    v22 = 1024;
    v23 = v5;
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v12, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_29;
        }

        *buf = 136446466;
        v21 = "nw_network_agent_copy_data";
        v22 = 1024;
        v23 = v5;
        v15 = "%{public}s NECP_CLIENT_ACTION_COPY_AGENT %{darwin.errno}d";
        goto LABEL_28;
      }

      if (v18 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_29;
        }

        *buf = 136446466;
        v21 = "nw_network_agent_copy_data";
        v22 = 1024;
        v23 = v5;
        v15 = "%{public}s NECP_CLIENT_ACTION_COPY_AGENT %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_28;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      v17 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446722;
          v21 = "nw_network_agent_copy_data";
          v22 = 1024;
          v23 = v5;
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s NECP_CLIENT_ACTION_COPY_AGENT %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(backtrace_string);
        goto LABEL_29;
      }

      if (v17)
      {
        *buf = 136446466;
        v21 = "nw_network_agent_copy_data";
        v22 = 1024;
        v23 = v5;
        v15 = "%{public}s NECP_CLIENT_ACTION_COPY_AGENT %{darwin.errno}d, no backtrace";
LABEL_28:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0x12u);
      }
    }

LABEL_29:
    if (v12)
    {
      free(v12);
    }

    return 0;
  }

  result = nw_network_agent_copy_struct(v2);
  if (result && v4)
  {
    *v4 = *(result + 212) + 216;
  }

  return result;
}

_DWORD *sub_181AC3F18(_OWORD *a1, uint64_t a2, int a3, _DWORD *a4)
{
  v8 = v4;
  v67 = 0uLL;
  v65 = 0;
  v66 = 0xE000000000000000;
  v63 = 0;
  v64 = 0xE000000000000000;
  v62 = 0;
  v57 = a1;
  v58 = a2;
  v59 = 0;
  v60 = 0;
  v61 = 1;
  v68 = v5;
  if (a1 && a2 - a1 >= 16)
  {
    v67 = *a1;
    v59 = 16;
  }

  else
  {
    v60 = 1;
  }

  Deserializer.fixedLengthUTF8(_:byteCount:)(&v65, 32, &v52);
  Deserializer.fixedLengthUTF8(_:byteCount:)(&v63, 32, v56);
  if (v61 == 1 && v60)
  {
    goto LABEL_11;
  }

  v12 = v58 - v57;
  if (!v57)
  {
    v12 = 0;
  }

  v13 = __OFSUB__(v12, v59);
  v14 = v12 - v59;
  if (v13)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v14 < 128)
  {
LABEL_11:
    v60 = 1;
    v61 = 1;
  }

  else
  {
    v59 += 128;
  }

  Deserializer.uint32(_:)(&v62 + 1, v55);
  result = Deserializer.uint32(_:)(&v62, v54);
  v6 = v60;
  if (v61 == 1 && v60)
  {
    goto LABEL_19;
  }

  v16 = v58 - v57;
  if (!v57)
  {
    v16 = 0;
  }

  if (__OFSUB__(v16, v59))
  {
    goto LABEL_39;
  }

  if (v16 - v59 < v62)
  {
LABEL_19:
    v6 = 1;
LABEL_20:
    if (qword_1ED4106B8 != -1)
    {
      swift_once();
    }

    v17 = sub_182AD2698();
    __swift_project_value_buffer(v17, qword_1ED411DA8);
    v18 = sub_182AD2678();
    v19 = sub_182AD38B8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v50 = a4;
      v21 = swift_slowAlloc();
      v56[0] = v21;
      *v20 = 136315394;
      v22 = swift_beginAccess();
      MEMORY[0x1EEE9AC00](v22);
      v23 = sub_182AD30D8();
      v25 = sub_181C64FFC(v23, v24, v56);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      v52 = v6;
      v53 = 1;
      v26 = DeserializationResult.description.getter();
      v28 = sub_181C64FFC(v26, v27, v56);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_181A37000, v18, v19, "Unable to deserialize network agent %s: '%s'", v20, 0x16u);
      swift_arrayDestroy();
      v29 = v21;
      a4 = v50;
      MEMORY[0x1865DF520](v29, -1, -1);
      MEMORY[0x1865DF520](v20, -1, -1);
    }

    if (a1)
    {
      MEMORY[0x1865DF520](a1, -1, -1);
    }

    *a4 = 22;
    LODWORD(v52) = 22;
    sub_1820CD11C();
    swift_willThrowTypedImpl();

    swift_deallocPartialClassInstance();
    return v8;
  }

  if (!v61)
  {
    goto LABEL_33;
  }

  if (v60)
  {
    goto LABEL_20;
  }

  v30 = v59 + v62;
  v6 = v16 - v30;
  if (__OFSUB__(v16, v30))
  {
    __break(1u);
  }

  else if ((v6 & 0x8000000000000000) == 0)
  {
    if (!v6)
    {
LABEL_37:
      *(v8 + 16) = a1;
      *(v8 + 24) = a2;
      v41 = v65;
      v40 = v66;
      v42 = v63;
      v43 = v64;

      v44 = sub_181AC47A8(v41, v40);
      v46 = v45;
      v47 = sub_181AC49BC(v42, v43);
      v49 = v48;

      *(v8 + 48) = v44;
      *(v8 + 56) = v46;
      *(v8 + 64) = v47;
      *(v8 + 72) = v49;
      swift_beginAccess();
      *(v8 + 32) = v67;
      *(v8 + 80) = HIDWORD(v62);
      *(v8 + 84) = a3;
      return v8;
    }

LABEL_33:
    if (qword_1ED4106B8 == -1)
    {
LABEL_34:
      v31 = sub_182AD2698();
      __swift_project_value_buffer(v31, qword_1ED411DA8);
      v32 = sub_182AD2678();
      v33 = sub_182AD38A8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v57 = v51;
        *v34 = 134218242;
        *(v34 + 4) = v6;
        *(v34 + 12) = 2080;
        v35 = swift_beginAccess();
        MEMORY[0x1EEE9AC00](v35);
        v36 = v68;
        v37 = sub_182AD30D8();
        v68 = v36;
        v39 = sub_181C64FFC(v37, v38, &v57);

        *(v34 + 14) = v39;
        _os_log_impl(&dword_181A37000, v32, v33, "%ld bytes remained after deserializing network agent %s", v34, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x1865DF520](v51, -1, -1);
        MEMORY[0x1865DF520](v34, -1, -1);
      }

      goto LABEL_37;
    }

LABEL_40:
    swift_once();
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t Deserializer.fixedLengthUTF8(_:byteCount:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_182AD3008();
  result = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  v13 = v4[2];
  if (*(v4 + 32) == 1 && v4[3])
  {
    goto LABEL_8;
  }

  if (v12)
  {
    v14 = v4[1] - v12;
  }

  else
  {
    v14 = 0;
  }

  if (__OFSUB__(v14, v13))
  {
    goto LABEL_30;
  }

  if (v14 - v13 < a2)
  {
LABEL_8:
    v15 = 1;
    v4[3] = 1;
    *(v4 + 32) = 1;
    v16 = 1;
LABEL_28:
    *a3 = v15;
    *(a3 + 8) = v16;
    return result;
  }

  v17 = v13 + a2;
  if (__OFADD__(v13, a2))
  {
    goto LABEL_31;
  }

  if (v17 < v13)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v30 = a3;
  v31 = v11;
  v28 = a1;
  v29 = a2;
  if (v13 == v17)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v32 = v18;
    sub_182AD2FD8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80);
    sub_1820E3960();
    v19 = sub_182AD2FB8();
    v21 = v20;

    if (v21)
    {
      v22 = v28;

      *v22 = v19;
      v22[1] = v21;
      result = sub_1820E2C6C(v29);
      v15 = v4[3];
      v16 = *(v4 + 32);
    }

    else
    {
      v15 = 2;
      v4[3] = 2;
      v16 = 1;
      *(v4 + 32) = 1;
    }

    a3 = v30;
    goto LABEL_28;
  }

  if (v13 < v17)
  {
    v18 = MEMORY[0x1E69E7CC0];
    v23 = v13;
    while ((v13 & 0x8000000000000000) == 0 && v23 < v14)
    {
      v26 = *(v12 + v23);
      if (v26)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v32 = v18;
        if ((result & 1) == 0)
        {
          result = sub_181FB7730(0, *(v18 + 16) + 1, 1);
          v18 = v32;
        }

        v25 = *(v18 + 16);
        v24 = *(v18 + 24);
        if (v25 >= v24 >> 1)
        {
          result = sub_181FB7730((v24 > 1), v25 + 1, 1);
          v18 = v32;
        }

        *(v18 + 16) = v25 + 1;
        *(v18 + v25 + 32) = v26;
      }

      ++v23;
      if (!--a2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_181AC47A8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 == 0x6B726F7774654ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_182AD4268() & 1) != 0 || v3 == 0x72616C756C6C6543 && a2 == 0xE800000000000000 || (sub_182AD4268() & 1) != 0 || v3 == 0x6F436D6574737953 && a2 == 0xEC0000006769666ELL || (sub_182AD4268() & 1) != 0 || v3 == 0xD000000000000010 && 0x8000000182BD7080 == a2 || (sub_182AD4268() & 1) != 0 || v3 == 0x6B6C6177796B53 && a2 == 0xE700000000000000 || (sub_182AD4268() & 1) != 0 || v3 == 0xD000000000000013 && 0x8000000182BD7060 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  return v3;
}

uint64_t sub_181AC49BC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 == 0x74656E7265746E49 && a2 == 0xE800000000000000;
  if (v4 || (sub_182AD4268() & 1) != 0 || v3 == 0x7265764F68746150 && a2 == 0xEC00000065646972 || (sub_182AD4268() & 1) != 0 || v3 == 0x65674179786F7250 && a2 == 0xEA0000000000746ELL || (sub_182AD4268() & 1) != 0 || v3 == 0x79786F7250 && a2 == 0xE500000000000000 || (sub_182AD4268() & 1) != 0 || v3 == 0x5079636176697250 && a2 == 0xEC00000079786F72 || (sub_182AD4268() & 1) != 0 || v3 == 0xD000000000000012 && 0x8000000182BD7040 == a2 || (sub_182AD4268() & 1) != 0 || v3 == 0x746E656741534E44 && a2 == 0xE800000000000000 || (sub_182AD4268() & 1) != 0 || v3 == 0x4465746176697250 && a2 == 0xEA0000000000534ELL || (sub_182AD4268() & 1) != 0 || v3 == 0xD000000000000010 && 0x8000000182BD7020 == a2 || (sub_182AD4268() & 1) != 0 || v3 == 0xD000000000000011 && 0x8000000182BD7000 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  return v3;
}

unint64_t sub_181AC4D20(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_181AC2218(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_181AC4E88(v16, a4 & 1);
      result = sub_181AC2218(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_182AD4408();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_182256C70();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}

uint64_t sub_181AC4E88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5D8);
  v6 = sub_182AD3ED8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_32:

    goto LABEL_33;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  while (v12)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_15:
    v19 = v16 | (v8 << 6);
    v31 = *(*(v5 + 48) + 16 * v19);
    v20 = *(*(v5 + 56) + 8 * v19);
    if ((a2 & 1) == 0)
    {
    }

    sub_182AD44E8();
    sub_182AD44F8();
    v21 = sub_182AD4558();
    v22 = -1 << *(v7 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) != 0)
    {
      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = 0;
      v26 = (63 - v22) >> 6;
      do
      {
        if (++v24 == v26 && (v25 & 1) != 0)
        {
          goto LABEL_35;
        }

        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        v28 = *(v14 + 8 * v24);
      }

      while (v28 == -1);
      v15 = __clz(__rbit64(~v28)) + (v24 << 6);
    }

    *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    *(*(v7 + 48) + 16 * v15) = v31;
    *(*(v7 + 56) + 8 * v15) = v20;
    ++*(v7 + 16);
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
    }

    if (v8 >= v13)
    {
      break;
    }

    v18 = v9[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v12 = (v18 - 1) & v18;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  v3 = v2;
LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t nw_mach_continuous_time()
{
  result = mach_continuous_time();
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

unint64_t sub_181AC5180(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_181AC2218(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_182256DD0();
    result = v19;
    goto LABEL_8;
  }

  sub_181AC52BC(v16, a4 & 1);
  result = sub_181AC2218(a2, a3);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_182AD4408();
  __break(1u);
  return result;
}

uint64_t sub_181AC52BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5F0);
  v6 = sub_182AD3ED8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v32 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      sub_182AD44E8();
      sub_182AD44F8();
      v21 = sub_182AD4558();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) != 0)
      {
        v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        do
        {
          if (++v24 == v26 && (v25 & 1) != 0)
          {
            goto LABEL_33;
          }

          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
        }

        while (v28 == -1);
        v15 = __clz(__rbit64(~v28)) + (v24 << 6);
      }

      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v32;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void __nw_path_can_use_channel_syscalls_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  getpid();
  if (sandbox_check())
  {
    nw_path_can_use_channel_syscalls::can_use_channel_syscalls = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v0 = gLogObj;
    if (!os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      return;
    }

    *buf = 136446210;
    v5 = "nw_path_can_use_channel_syscalls_block_invoke";
    v1 = "%{public}s Sandbox does not allow access to channel system calls";
    v2 = v0;
    v3 = OS_LOG_TYPE_ERROR;
LABEL_4:
    _os_log_impl(&dword_181A37000, v2, v3, v1, buf, 0xCu);
    goto LABEL_5;
  }

  nw_path_can_use_channel_syscalls::can_use_channel_syscalls = 1;
  if (gLogDatapath == 1)
  {
    v0 = __nwlog_obj();
    if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    *buf = 136446210;
    v5 = "nw_path_can_use_channel_syscalls_block_invoke";
    v1 = "%{public}s Sandbox allows access to channel system calls";
    v2 = v0;
    v3 = OS_LOG_TYPE_DEBUG;
    goto LABEL_4;
  }
}

uint64_t __nwlog_get_private_redacted_block_invoke()
{
  v26 = *MEMORY[0x1E69E9840];
  strcpy(__s2, "not redacted");
  __s1 = 0;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v24 = 136380675;
  v25 = __s2;
  v0 = _os_log_send_and_compose_impl();
  if (v0 == &__s1)
  {
LABEL_14:
    result = strncmp(&__s1, __s2, 0xDuLL);
    nwlog_get_private_redacted::privateRedacted = result != 0;
    return result;
  }

  if (v0)
  {
LABEL_3:
    v1 = __s1;
    *v0 = __s1;
    if (v1)
    {
      v2 = v14;
      v0[1] = v14;
      if (v2)
      {
        v3 = v15;
        v0[2] = v15;
        if (v3)
        {
          v4 = v16;
          v0[3] = v16;
          if (v4)
          {
            v5 = v17;
            v0[4] = v17;
            if (v5)
            {
              v6 = v18;
              v0[5] = v18;
              if (v6)
              {
                v7 = v19;
                v0[6] = v19;
                if (v7)
                {
                  v8 = v20;
                  v0[7] = v20;
                  if (v8)
                  {
                    v9 = v21;
                    v0[8] = v21;
                    if (v9)
                    {
                      v0[9] = v22;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    free(v0);
    goto LABEL_14;
  }

  v11 = __nwlog_obj();
  os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  v24 = 136446210;
  v25 = "_strict_strlcpy";
  v12 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v12);
  if (!result)
  {
    free(v12);
    v0 = 0;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void ____nwlog_path_log_block_invoke()
{
  if ((gHasForked & 1) == 0)
  {
    gpathLogObj = os_log_create(nw_oslog_subsystem, "path");
  }
}

void nw_path_evaluator_set_queue(void *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_path_evaluator_set_queue";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v15, &type, &v28))
    {
      goto LABEL_58;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v31 = "nw_path_evaluator_set_queue";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null evaluator", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v16, type);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v31 = "nw_path_evaluator_set_queue";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null evaluator, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_58:
        if (!v15)
        {
          goto LABEL_24;
        }

LABEL_59:
        free(v15);
        goto LABEL_24;
      }

      if (v22)
      {
        *buf = 136446210;
        v31 = "nw_path_evaluator_set_queue";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null evaluator, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v31 = "nw_path_evaluator_set_queue";
        _os_log_impl(&dword_181A37000, v16, v26, "%{public}s called with null evaluator, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_57:

    goto LABEL_58;
  }

  if (v4)
  {
    os_unfair_lock_lock(v3 + 24);
    if ((*(v3 + 107) & 0x10) != 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      *buf = 136446210;
      v31 = "nw_path_evaluator_set_queue";
      v7 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v28 = 0;
      if (__nwlog_fault(v7, &type, &v28))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (os_log_type_enabled(v8, type))
          {
            *buf = 136446210;
            v31 = "nw_path_evaluator_set_queue";
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s Client error: set queue after starting", buf, 0xCu);
          }
        }

        else if (v28 == 1)
        {
          v10 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v11 = type;
          v12 = os_log_type_enabled(v8, type);
          if (v10)
          {
            if (v12)
            {
              *buf = 136446466;
              v31 = "nw_path_evaluator_set_queue";
              v32 = 2082;
              v33 = v10;
              _os_log_impl(&dword_181A37000, v8, v11, "%{public}s Client error: set queue after starting, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v10);
            if (!v7)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }

          if (v12)
          {
            *buf = 136446210;
            v31 = "nw_path_evaluator_set_queue";
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s Client error: set queue after starting, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v13 = type;
          if (os_log_type_enabled(v8, type))
          {
            *buf = 136446210;
            v31 = "nw_path_evaluator_set_queue";
            _os_log_impl(&dword_181A37000, v8, v13, "%{public}s Client error: set queue after starting, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (v7)
      {
LABEL_22:
        free(v7);
      }
    }

LABEL_23:
    objc_storeStrong(v3 + 7, a2);
    os_unfair_lock_unlock(v3 + 24);
    goto LABEL_24;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  v31 = "nw_path_evaluator_set_queue";
  v15 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (!__nwlog_fault(v15, &type, &v28))
  {
    goto LABEL_58;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v16 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v16, type))
    {
      *buf = 136446210;
      v31 = "nw_path_evaluator_set_queue";
      _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null queue", buf, 0xCu);
    }

    goto LABEL_57;
  }

  if (v28 != 1)
  {
    v16 = __nwlog_obj();
    v27 = type;
    if (os_log_type_enabled(v16, type))
    {
      *buf = 136446210;
      v31 = "nw_path_evaluator_set_queue";
      _os_log_impl(&dword_181A37000, v16, v27, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_57;
  }

  v23 = __nw_create_backtrace_string();
  v16 = __nwlog_obj();
  v24 = type;
  v25 = os_log_type_enabled(v16, type);
  if (!v23)
  {
    if (v25)
    {
      *buf = 136446210;
      v31 = "nw_path_evaluator_set_queue";
      _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null queue, no backtrace", buf, 0xCu);
    }

    goto LABEL_57;
  }

  if (v25)
  {
    *buf = 136446466;
    v31 = "nw_path_evaluator_set_queue";
    v32 = 2082;
    v33 = v23;
    _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v23);
  if (v15)
  {
    goto LABEL_59;
  }

LABEL_24:
}

id sub_181AC6084(void *a1)
{
  v1 = a1;
  sub_1821EE68C();

  v2 = sub_182AD2F58();

  return v2;
}