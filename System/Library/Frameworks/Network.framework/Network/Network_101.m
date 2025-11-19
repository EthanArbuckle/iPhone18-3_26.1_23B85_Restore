Swift::Int sub_1820FFC54(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v63 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - v11;
  if (*(a1 + 24) == 2)
  {
    v13 = swift_projectBox();
    sub_181AB5D28(v13, v12, &qword_1EA8398E0);
    v14 = sub_182AD2868();
    v15 = *(*(v14 - 8) + 8);
    LODWORD(v43) = a4;
    v16 = v63;

    v15(v12, v14);
    sub_1822AA288(a1, a2 & 1, a3, v43, v16, &v47);
    v17 = v47;
    if (!BYTE8(v47))
    {
      return 0;
    }

    goto LABEL_33;
  }

  HIDWORD(v42) = a2;
  v43 = v5;
  v18 = *(a1 + 16);
  v47 = *a1;
  v48 = v18;
  v49 = *(a1 + 32);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v62 = *(a1 + 208);
  v22 = *(a1 + 64);
  v21 = *(a1 + 72);
  v23 = *(a1 + 192);
  v60 = *(a1 + 176);
  v61 = v23;
  v24 = *(a1 + 128);
  v56 = *(a1 + 112);
  v57 = v24;
  v25 = *(a1 + 160);
  v58 = *(a1 + 144);
  v59 = v25;
  v26 = *(a1 + 96);
  v54 = *(a1 + 80);
  v55 = v26;
  v50 = v19;
  v51 = v20;
  v52 = v22;
  v53 = v21;
  v27 = v63;

  result = Frame.unclaimedBytes.getter();
  if (v30)
  {

    goto LABEL_6;
  }

  if (*(a1 + 24) == 5)
  {
    v31 = result;
    v32 = v29;
    v33 = nw_frame_unclaimed_length(*a1);
    v29 = v32;
    v34 = v33;
    result = v31;
    v35 = v34;
    goto LABEL_15;
  }

  if (!v21)
  {
    goto LABEL_14;
  }

  v36 = v20 + v22;
  if (__OFADD__(v20, v22))
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v35 = v21 - v36;
  if (__OFSUB__(v21, v36))
  {
    __break(1u);
LABEL_14:
    v35 = 0;
  }

LABEL_15:
  *&v47 = result;
  *(&v47 + 1) = v29;
  v48 = 0uLL;
  LOBYTE(v49) = 1;
  v37 = sub_182104788(a3, a4);
  InPlaceSerializer.vle(_:)(v37, &v46);
  sub_1821065FC(*(v27 + 16), &v45);
  result = InPlaceSerializer.buffer(_:)(v27, &v44);
  v17 = *(&v48 + 1);
  if (v49 != 1)
  {
    if ((v42 & 0x100000000) != 0)
    {
LABEL_19:
      result = v35 - v17;
      if (!__OFSUB__(v35, v17))
      {
        v39 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);

        if (v39)
        {
          return 0;
        }

        v17 = 2;
        goto LABEL_33;
      }

      goto LABEL_38;
    }

    v38 = 0;
LABEL_32:

    if (!v38)
    {
      return 0;
    }

LABEL_33:
    if (v17 > 1)
    {
      v47 = 0uLL;
      LOBYTE(v48) = 96;
      sub_181F5F494();
      swift_willThrowTypedImpl();
    }

    return 0;
  }

  if (*(&v48 + 1))
  {
    v38 = 1;
    goto LABEL_32;
  }

  if (v47)
  {
    v40 = *(&v47 + 1) - v47;
  }

  else
  {
    v40 = 0;
  }

  v17 = v40 - v48;
  if (__OFSUB__(v40, v48))
  {
    goto LABEL_39;
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    v38 = v40 == v48;
    if ((v42 & 0x100000000) != 0)
    {
      if (!v17)
      {
        v41 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v35, 0, 1);

        if (v41)
        {
          v17 = 0;
          goto LABEL_33;
        }

LABEL_6:
        v17 = 2;
        goto LABEL_33;
      }

      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_40:
  __break(1u);
  return result;
}

Swift::Int sub_182100008(Swift::Int result, uint64_t *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  v4 = v3;
  v6 = result;
  v7 = sub_182104788(*v3, *(v3 + 8));
  v8 = *(v6 + 176);
  v46 = *(v6 + 160);
  v47 = v8;
  v48 = *(v6 + 192);
  v49 = *(v6 + 208);
  v9 = *(v6 + 112);
  v42 = *(v6 + 96);
  v43 = v9;
  v10 = *(v6 + 144);
  v44 = *(v6 + 128);
  v45 = v10;
  v11 = *(v6 + 48);
  v38 = *(v6 + 32);
  v39 = v11;
  v12 = *(v6 + 80);
  v40 = *(v6 + 64);
  v41 = v12;
  v13 = *(v6 + 16);
  v36 = *v6;
  v37 = v13;
  result = Frame.unclaimedBytes.getter();
  if ((v15 & 1) == 0)
  {
    v16 = result;
    v17 = v14;
    *&v36 = result;
    *(&v36 + 1) = v14;
    v37 = 0uLL;
    LOBYTE(v38) = 1;
    result = sub_18210A58C(v7 | 2, v4, &v35);
    v18 = *(&v37 + 1);
    if (v38 == 1)
    {
      if (*(&v37 + 1))
      {
        if (*(&v37 + 1) != 1)
        {
          goto LABEL_24;
        }

        v18 = 0;
      }

      else
      {
        if (v36)
        {
          v19 = *(&v36 + 1) - v36;
        }

        else
        {
          v19 = 0;
        }

        v20 = __OFSUB__(v19, v37);
        v18 = v19 - v37;
        if (v20)
        {
          goto LABEL_42;
        }

        if (v18 < 0)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }
    }

    v21 = v17 - v16;
    if (!v16)
    {
      v21 = 0;
    }

    result = v21 - v18;
    if (!__OFSUB__(v21, v18))
    {
      result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
      if (result)
      {
        v22 = v4[4];
        if (!v22)
        {
LABEL_20:
          v25 = *a2;
          if (!*a2)
          {
            return 0;
          }

          v26 = *(v25 + 16);
          if (v26)
          {
            result = sub_181A41ED0(19);
            if (v27)
            {
              v26 = *(*(v25 + 56) + 8 * result);
            }

            else
            {
              v26 = 0;
            }
          }

          v28 = v26 + 1;
          if (!__OFADD__(v26, 1))
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v36 = *a2;
            result = sub_182258BF8(v28, 0x13u, isUniquelyReferenced_nonNull_native);
            v30 = v36;
            *a2 = v36;
            if (v30)
            {
              v31 = *(v30 + 16);
              if (v31)
              {
                result = sub_181A41ED0(20);
                if (v32)
                {
                  v31 = *(*(v30 + 56) + 8 * result);
                }

                else
                {
                  v31 = 0;
                }
              }

              v33 = v31 + v22;
              if (!__OFADD__(v31, v22))
              {
                v34 = swift_isUniquelyReferenced_nonNull_native();
                *&v36 = *a2;
                sub_182258BF8(v33, 0x14u, v34);
                *a2 = v36;
                return 0;
              }

              goto LABEL_41;
            }

            return 0;
          }

          goto LABEL_38;
        }

        v23 = v4[3];
        swift_beginAccess();
        v24 = sub_181FCEB24(v23, v22, v6);
        result = swift_endAccess();
        if (v24 == v22)
        {
          if ((v22 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v22, 0, 1);
          if ((result & 1) == 0)
          {
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          goto LABEL_20;
        }

LABEL_24:
        v36 = 0uLL;
        LOBYTE(v37) = 96;
        sub_181F5F494();
        swift_willThrowTypedImpl();
        return 0;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_44:
  __break(1u);
  return result;
}

Swift::Int sub_1821002FC(__int128 *a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - v14;
  if (*(a1 + 24) == 2)
  {
    v16 = swift_projectBox();
    sub_181AB5D28(v16, v15, &qword_1EA8398E0);
    v17 = sub_182AD2868();
    (*(*(v17 - 8) + 8))(v15, v17);
    sub_1822B0CCC(&v49, a1, a2 & 1, 0, a3, a4, a5, a6);
    v18 = v49;
    if (!BYTE8(v49))
    {
      return 0;
    }

    goto LABEL_32;
  }

  v45 = a6;
  v44 = a2;
  v65 = v6;
  v19 = a1[1];
  v49 = *a1;
  v50 = v19;
  v51 = a1[2];
  v20 = *(a1 + 6);
  v21 = *(a1 + 7);
  v64 = *(a1 + 208);
  v23 = *(a1 + 8);
  v22 = *(a1 + 9);
  v24 = a1[12];
  v62 = a1[11];
  v63 = v24;
  v25 = a1[8];
  v58 = a1[7];
  v59 = v25;
  v26 = a1[10];
  v60 = a1[9];
  v61 = v26;
  v27 = a1[6];
  v56 = a1[5];
  v57 = v27;
  v52 = v20;
  v53 = v21;
  v54 = v23;
  v55 = v22;
  result = Frame.unclaimedBytes.getter();
  if (v30)
  {
    v18 = 2;
    goto LABEL_32;
  }

  if (*(a1 + 24) == 5)
  {
    v31 = result;
    v32 = v29;
    v33 = nw_frame_unclaimed_length(*a1);
    v29 = v32;
    v34 = v33;
    result = v31;
    v43 = v34;
  }

  else
  {
    if (v22)
    {
      v35 = v21 + v23;
      if (__OFADD__(v21, v23))
      {
        __break(1u);
      }

      else
      {
        v36 = __OFSUB__(v22, v35);
        v37 = v22 - v35;
        v38 = v45;
        if (!v36)
        {
          v43 = v37;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v43 = 0;
  }

  v38 = v45;
LABEL_14:
  *&v49 = result;
  *(&v49 + 1) = v29;
  v50 = 0uLL;
  LOBYTE(v51) = 1;
  v39 = sub_182104788(a3, a4);
  InPlaceSerializer.vle(_:)(v39, &v48);
  InPlaceSerializer.vle(_:)(a5, &v47);
  result = InPlaceSerializer.vle(_:)(v38, &v46);
  v18 = *(&v50 + 1);
  if (v51 != 1)
  {
    if ((v44 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_18;
  }

  if (*(&v50 + 1))
  {
    goto LABEL_32;
  }

  if (v49)
  {
    v40 = *(&v49 + 1) - v49;
  }

  else
  {
    v40 = 0;
  }

  v18 = v40 - v50;
  if (__OFSUB__(v40, v50))
  {
    goto LABEL_39;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v41 = v40 == v50;
    if ((v44 & 1) == 0)
    {
      goto LABEL_31;
    }

    if (!v18)
    {
      if (Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v43, 0, 1))
      {
        v18 = 0;
      }

      else
      {
        v18 = 2;
      }

      goto LABEL_32;
    }

LABEL_18:
    result = v43 - v18;
    if (!__OFSUB__(v43, v18))
    {
      if (Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        return 0;
      }

      v41 = 1;
      v18 = 2;
LABEL_31:
      if (!v41)
      {
        return 0;
      }

LABEL_32:
      if (v18 > 1)
      {
        v49 = 0uLL;
        LOBYTE(v50) = 96;
        sub_181F5F494();
        swift_willThrowTypedImpl();
      }

      return 0;
    }

    goto LABEL_38;
  }

LABEL_40:
  __break(1u);
  return result;
}

Swift::Int sub_182100684(__int128 *a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(__int128 *__return_ptr, __int128 *, void, void, uint64_t, uint64_t, unint64_t))
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v41 - v14;
  if (*(a1 + 24) == 2)
  {
    v16 = swift_projectBox();
    sub_181AB5D28(v16, v15, &qword_1EA8398E0);
    v17 = sub_182AD2868();
    (*(*(v17 - 8) + 8))(v15, v17);
    a6(&v45, a1, a2 & 1, 0, a3, a4, a5);
    v18 = v45;
    if (!BYTE8(v45))
    {
      return 0;
    }

    goto LABEL_32;
  }

  v42 = a2;
  v61 = v6;
  v19 = a1[1];
  v45 = *a1;
  v46 = v19;
  v47 = a1[2];
  v20 = *(a1 + 6);
  v21 = *(a1 + 7);
  v60 = *(a1 + 208);
  v23 = *(a1 + 8);
  v22 = *(a1 + 9);
  v24 = a1[12];
  v58 = a1[11];
  v59 = v24;
  v25 = a1[8];
  v54 = a1[7];
  v55 = v25;
  v26 = a1[10];
  v56 = a1[9];
  v57 = v26;
  v27 = a1[6];
  v52 = a1[5];
  v53 = v27;
  v48 = v20;
  v49 = v21;
  v50 = v23;
  v51 = v22;
  result = Frame.unclaimedBytes.getter();
  if (v30)
  {
    v18 = 2;
    goto LABEL_32;
  }

  if (*(a1 + 24) == 5)
  {
    v31 = result;
    v32 = v29;
    v33 = nw_frame_unclaimed_length(*a1);
    v29 = v32;
    v34 = v33;
    result = v31;
    v35 = v34;
LABEL_13:
    v37 = v42;
    goto LABEL_14;
  }

  if (!v22)
  {
    v35 = 0;
    goto LABEL_13;
  }

  v36 = v21 + v23;
  if (__OFADD__(v21, v23))
  {
    __break(1u);
    goto LABEL_37;
  }

  v35 = v22 - v36;
  v37 = v42;
  if (__OFSUB__(v22, v36))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_14:
  *&v45 = result;
  *(&v45 + 1) = v29;
  v46 = 0uLL;
  LOBYTE(v47) = 1;
  v38 = sub_182104788(a3, a4);
  InPlaceSerializer.vle(_:)(v38, &v44);
  result = InPlaceSerializer.vle(_:)(a5, &v43);
  v18 = *(&v46 + 1);
  if (v47 != 1)
  {
    if ((v37 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_18;
  }

  if (*(&v46 + 1))
  {
    goto LABEL_32;
  }

  if (v45)
  {
    v39 = *(&v45 + 1) - v45;
  }

  else
  {
    v39 = 0;
  }

  v18 = v39 - v46;
  if (__OFSUB__(v39, v46))
  {
    goto LABEL_39;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v40 = v39 == v46;
    if ((v37 & 1) == 0)
    {
      goto LABEL_31;
    }

    if (!v18)
    {
      if (Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v35, 0, 1))
      {
        v18 = 0;
      }

      else
      {
        v18 = 2;
      }

      goto LABEL_32;
    }

LABEL_18:
    result = v35 - v18;
    if (!__OFSUB__(v35, v18))
    {
      if (Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        return 0;
      }

      v40 = 1;
      v18 = 2;
LABEL_31:
      if (!v40)
      {
        return 0;
      }

LABEL_32:
      if (v18 > 1)
      {
        v45 = 0uLL;
        LOBYTE(v46) = 96;
        sub_181F5F494();
        swift_willThrowTypedImpl();
      }

      return 0;
    }

    goto LABEL_38;
  }

LABEL_40:
  __break(1u);
  return result;
}

Swift::Int sub_182100A50(__int128 *a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t *a8, unsigned __int8 a9)
{
  v53 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v49 - v17;
  if (*(a1 + 24) == 2)
  {
    v19 = swift_projectBox();
    sub_181AB5D28(v19, v18, &qword_1EA8398E0);
    v20 = sub_182AD2868();
    (*(*(v20 - 8) + 8))(v18, v20);
    result = (v53)(&v57, a1, a3 & 1, 0, a4, a5, a6, a7);
    v22 = v57;
    v23 = a2;
    if (!BYTE8(v57))
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v50 = a4;
  v51 = a5;
  v52 = a3;
  v53 = a2;
  v24 = a1[1];
  v57 = *a1;
  v58 = v24;
  v59 = a1[2];
  v25 = *(a1 + 6);
  v26 = *(a1 + 7);
  v72 = *(a1 + 208);
  v28 = *(a1 + 8);
  v27 = *(a1 + 9);
  v29 = a1[12];
  v70 = a1[11];
  v71 = v29;
  v30 = a1[8];
  v66 = a1[7];
  v67 = v30;
  v31 = a1[10];
  v68 = a1[9];
  v69 = v31;
  v32 = a1[6];
  v64 = a1[5];
  v65 = v32;
  v60 = v25;
  v61 = v26;
  v62 = v28;
  v63 = v27;
  result = Frame.unclaimedBytes.getter();
  if (v34)
  {
    v22 = 2;
    v23 = v53;
    goto LABEL_32;
  }

  if (*(a1 + 24) == 5)
  {
    v35 = result;
    v36 = v33;
    v37 = nw_frame_unclaimed_length(*a1);
    v33 = v36;
    v38 = v37;
    result = v35;
    v39 = v38;
    goto LABEL_14;
  }

  if (!v27)
  {
    goto LABEL_13;
  }

  v40 = v26 + v28;
  if (__OFADD__(v26, v28))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v39 = v27 - v40;
  if (__OFSUB__(v27, v40))
  {
    __break(1u);
LABEL_13:
    v39 = 0;
  }

LABEL_14:
  *&v57 = result;
  *(&v57 + 1) = v33;
  v58 = 0uLL;
  LOBYTE(v59) = 1;
  v41 = sub_182104788(v50, v51);
  InPlaceSerializer.vle(_:)(v41, &v56);
  InPlaceSerializer.vle(_:)(a6, &v55);
  result = InPlaceSerializer.vle(_:)(a7, &v54);
  v22 = *(&v58 + 1);
  v23 = v53;
  if (v59 != 1)
  {
    if ((v52 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_18;
  }

  if (*(&v58 + 1))
  {
    goto LABEL_32;
  }

  if (v57)
  {
    v42 = *(&v57 + 1) - v57;
  }

  else
  {
    v42 = 0;
  }

  v22 = v42 - v58;
  if (__OFSUB__(v42, v58))
  {
    goto LABEL_46;
  }

  if ((v22 & 0x8000000000000000) == 0)
  {
    v43 = v42 == v58;
    if ((v52 & 1) == 0)
    {
LABEL_31:
      if (!v43)
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    if (!v22)
    {
      result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v39, 0, 1);
      if (result)
      {
        v22 = 0;
      }

      else
      {
        v22 = 2;
      }

LABEL_32:
      if (v22 > 1)
      {
        v57 = 0uLL;
        LOBYTE(v58) = 96;
        sub_181F5F494();
        swift_willThrowTypedImpl();
        return 0;
      }

LABEL_35:
      v44 = *v23;
      if (*v23)
      {
        v45 = *(v44 + 16);
        if (v45)
        {
          result = sub_181A41ED0(a9);
          if (v46)
          {
            v45 = *(*(v44 + 56) + 8 * result);
          }

          else
          {
            v45 = 0;
          }
        }

        v47 = v45 + 1;
        if (!__OFADD__(v45, 1))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v57 = *v23;
          sub_182258BF8(v47, a9, isUniquelyReferenced_nonNull_native);
          *v23 = v57;
          return 0;
        }

        __break(1u);
        goto LABEL_44;
      }

      return 0;
    }

LABEL_18:
    result = v39 - v22;
    if (__OFSUB__(v39, v22))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
    if (result)
    {
      goto LABEL_35;
    }

    v43 = 1;
    v22 = 2;
    goto LABEL_31;
  }

LABEL_47:
  __break(1u);
  return result;
}

Swift::Int sub_182100E74(__int128 *a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7, unsigned int a8)
{
  v72 = a8;
  v52 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v49 - v15;
  if (*(a1 + 24) == 2)
  {
    v17 = swift_projectBox();
    sub_181AB5D28(v17, v16, &qword_1EA8398E0);
    v18 = sub_182AD2868();
    (*(*(v18 - 8) + 8))(v16, v18);
    result = (v52)(&v55, a1, a3 & 1, 0, a4, a5, a6);
    v20 = v55;
    v21 = v72;
    v22 = a2;
    if (!BYTE8(v55))
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v71 = a5;
  v51 = a3;
  v52 = a2;
  v23 = a1[1];
  v55 = *a1;
  v56 = v23;
  v57 = a1[2];
  v24 = *(a1 + 6);
  v25 = *(a1 + 7);
  v70 = *(a1 + 208);
  v27 = *(a1 + 8);
  v26 = *(a1 + 9);
  v28 = a1[12];
  v68 = a1[11];
  v69 = v28;
  v29 = a1[8];
  v64 = a1[7];
  v65 = v29;
  v30 = a1[10];
  v66 = a1[9];
  v67 = v30;
  v31 = a1[6];
  v62 = a1[5];
  v63 = v31;
  v58 = v24;
  v59 = v25;
  v60 = v27;
  v61 = v26;
  result = Frame.unclaimedBytes.getter();
  if (v33)
  {
    v20 = 2;
    v21 = v72;
    v22 = v52;
    goto LABEL_31;
  }

  if (*(a1 + 24) == 5)
  {
    v34 = result;
    v35 = v32;
    v36 = nw_frame_unclaimed_length(*a1);
    v32 = v35;
    v37 = v36;
    result = v34;
    v50 = v37;
  }

  else if (v26)
  {
    v38 = v25 + v27;
    if (__OFADD__(v25, v27))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v39 = __OFSUB__(v26, v38);
    v40 = v26 - v38;
    if (v39)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v50 = v40;
  }

  else
  {
    v50 = 0;
  }

  *&v55 = result;
  *(&v55 + 1) = v32;
  v56 = 0uLL;
  LOBYTE(v57) = 1;
  v41 = sub_182104788(a4, v71);
  InPlaceSerializer.vle(_:)(v41, &v54);
  result = InPlaceSerializer.vle(_:)(a6, &v53);
  v20 = *(&v56 + 1);
  v21 = v72;
  v22 = v52;
  if (v57 != 1)
  {
    if ((v51 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_17;
  }

  if (*(&v56 + 1))
  {
    goto LABEL_31;
  }

  if (v55)
  {
    v42 = *(&v55 + 1) - v55;
  }

  else
  {
    v42 = 0;
  }

  v20 = v42 - v56;
  if (__OFSUB__(v42, v56))
  {
    goto LABEL_46;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    v43 = v42 == v56;
    if ((v51 & 1) == 0)
    {
LABEL_30:
      if (!v43)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    }

    if (!v20)
    {
      result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v50, 0, 1);
      if (result)
      {
        v20 = 0;
      }

      else
      {
        v20 = 2;
      }

LABEL_31:
      if (v20 > 1)
      {
        v55 = 0uLL;
        LOBYTE(v56) = 96;
        sub_181F5F494();
        swift_willThrowTypedImpl();
        return 0;
      }

LABEL_34:
      v44 = *v22;
      if (*v22)
      {
        v45 = *(v44 + 16);
        if (v45)
        {
          result = sub_181A41ED0(v21);
          if (v46)
          {
            v45 = *(*(v44 + 56) + 8 * result);
          }

          else
          {
            v45 = 0;
          }
        }

        v47 = v45 + 1;
        if (!__OFADD__(v45, 1))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v55 = *v22;
          sub_182258BF8(v47, v21, isUniquelyReferenced_nonNull_native);
          *v22 = v55;
          return 0;
        }

        __break(1u);
        goto LABEL_43;
      }

      return 0;
    }

LABEL_17:
    result = v50 - v20;
    if (__OFSUB__(v50, v20))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
    if (result)
    {
      goto LABEL_34;
    }

    v43 = 1;
    v20 = 2;
    goto LABEL_30;
  }

LABEL_47:
  __break(1u);
  return result;
}

Swift::Int sub_18210129C(__int128 *a1, int a2, void (*a3)(__int128 *__return_ptr, __int128 *, void, void, uint64_t, uint64_t, uint64_t, Swift::Int))
{
  v43 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - v7;
  v9 = *v3;
  v10 = *(v3 + 8);
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  if (*(a1 + 24) != 2)
  {
    v42[0] = *(v3 + 8);
    v18 = a1[1];
    v46 = *a1;
    v47 = v18;
    v48 = a1[2];
    v19 = *(a1 + 6);
    v20 = *(a1 + 7);
    v61 = *(a1 + 208);
    v22 = *(a1 + 8);
    v21 = *(a1 + 9);
    v23 = a1[12];
    v59 = a1[11];
    v60 = v23;
    v24 = a1[8];
    v55 = a1[7];
    v56 = v24;
    v25 = a1[10];
    v57 = a1[9];
    v58 = v25;
    v26 = a1[6];
    v53 = a1[5];
    v54 = v26;
    v49 = v19;
    v50 = v20;
    v51 = v22;
    v52 = v21;

    result = Frame.unclaimedBytes.getter();
    if (v29)
    {

LABEL_5:
      v17 = 1;
LABEL_6:
      v16 = 2;
      goto LABEL_33;
    }

    v41 = v11;
    if (*(a1 + 24) == 5)
    {
      v30 = result;
      v31 = v28;
      v32 = nw_frame_unclaimed_length(*a1);
      v28 = v31;
      v33 = v32;
      result = v30;
      v34 = v33;
      goto LABEL_15;
    }

    if (v21)
    {
      v35 = v20 + v22;
      if (__OFADD__(v20, v22))
      {
        __break(1u);
        goto LABEL_38;
      }

      v34 = v21 - v35;
      if (!__OFSUB__(v21, v35))
      {
LABEL_15:
        *&v46 = result;
        *(&v46 + 1) = v28;
        v47 = 0uLL;
        LOBYTE(v48) = 1;
        v36 = sub_182104788(v9, v42[0]);
        InPlaceSerializer.vle(_:)(v36, &v45);
        InPlaceSerializer.uint64(_:)(v12, &v44);
        v16 = *(&v47 + 1);
        if (v48 == 1)
        {
          result = v41;
          if (*(&v47 + 1))
          {
            v17 = 1;
LABEL_32:

            goto LABEL_33;
          }

          if (v46)
          {
            v38 = *(&v46 + 1) - v46;
          }

          else
          {
            v38 = 0;
          }

          v16 = v38 - v47;
          if (__OFSUB__(v38, v47))
          {
            goto LABEL_39;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
LABEL_40:
            __break(1u);
            return result;
          }

          v17 = v38 == v47;
          if ((v43 & 1) == 0)
          {
            goto LABEL_32;
          }

          if (!v16)
          {
            v17 = 1;
            v39 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v34, 0, 1);

            if (v39)
            {
              v16 = 0;
              goto LABEL_33;
            }

            goto LABEL_6;
          }
        }

        else if ((v43 & 1) == 0)
        {
          v17 = 0;
          goto LABEL_32;
        }

        result = v34 - v16;
        if (!__OFSUB__(v34, v16))
        {
          v37 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);

          if (v37)
          {
            v17 = 0;
            goto LABEL_33;
          }

          goto LABEL_5;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    v34 = 0;
    goto LABEL_15;
  }

  v13 = swift_projectBox();
  sub_181AB5D28(v13, v8, &qword_1EA8398E0);
  v14 = sub_182AD2868();
  v15 = *(*(v14 - 8) + 8);
  *v42 = a3;

  v15(v8, v14);
  (*v42)(&v46, a1, v43 & 1, 0, v9, v10, v12, v11);
  v16 = v46;
  v17 = BYTE8(v46);
LABEL_33:
  if (v17)
  {
    if (v16 > 1)
    {
      v46 = 0uLL;
      LOBYTE(v47) = 96;
      sub_181F5F494();
      swift_willThrowTypedImpl();
    }
  }

  return 0;
}

Swift::Int sub_182101620(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37[-v9];
  if (*(a1 + 24) == 2)
  {
    v11 = swift_projectBox();
    sub_181AB5D28(v11, v10, &qword_1EA8398E0);
    sub_1821232DC(v4, &v38);
    v12 = sub_182AD2868();
    (*(*(v12 - 8) + 8))(v10, v12);
    sub_1822AB628(a1, a3 & 1, v4, &v38);
    v13 = v38;
    if (!BYTE8(v38))
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v54 = a3;
  v14 = a2;
  v15 = *(a1 + 16);
  v38 = *a1;
  v39 = v15;
  v40 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v53 = *(a1 + 208);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = *(a1 + 192);
  v51 = *(a1 + 176);
  v52 = v20;
  v21 = *(a1 + 128);
  v47 = *(a1 + 112);
  v48 = v21;
  v22 = *(a1 + 160);
  v49 = *(a1 + 144);
  v50 = v22;
  v23 = *(a1 + 96);
  v45 = *(a1 + 80);
  v46 = v23;
  v41 = v16;
  v42 = v17;
  v43 = v18;
  v44 = v19;
  sub_1821232DC(v4, v37);
  result = Frame.unclaimedBytes.getter();
  if (v26)
  {
    sub_182123314(v4);
    v13 = 2;
    a2 = v14;
    goto LABEL_34;
  }

  if (*(a1 + 24) == 5)
  {
    v27 = result;
    v28 = v25;
    v29 = nw_frame_unclaimed_length(*a1);
    v25 = v28;
    v30 = v29;
    result = v27;
    v31 = v30;
    goto LABEL_14;
  }

  if (!v19)
  {
    goto LABEL_13;
  }

  v32 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v31 = v19 - v32;
  if (__OFSUB__(v19, v32))
  {
    __break(1u);
LABEL_13:
    v31 = 0;
  }

LABEL_14:
  a2 = v14;
  *&v38 = result;
  *(&v38 + 1) = v25;
  v39 = 0uLL;
  LOBYTE(v40) = 1;
  result = sub_18210C17C(v4, v37);
  v13 = *(&v39 + 1);
  if (v40 != 1)
  {
    if (v54)
    {
LABEL_18:
      result = v31 - v13;
      if (!__OFSUB__(v31, v13))
      {
        v34 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
        sub_182123314(v4);
        if (v34)
        {
          goto LABEL_36;
        }

        goto LABEL_33;
      }

      goto LABEL_39;
    }

    v33 = 0;
LABEL_31:
    sub_182123314(v4);
    if (!v33)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (*(&v39 + 1))
  {
    v33 = 1;
    goto LABEL_31;
  }

  if (v38)
  {
    v35 = *(&v38 + 1) - v38;
  }

  else
  {
    v35 = 0;
  }

  v13 = v35 - v39;
  if (__OFSUB__(v35, v39))
  {
    goto LABEL_40;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v33 = v35 == v39;
    if (v54)
    {
      if (!v13)
      {
        v36 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v31, 0, 1);
        sub_182123314(v4);
        if (v36)
        {
          v13 = 0;
          goto LABEL_34;
        }

LABEL_33:
        v13 = 2;
LABEL_34:
        if (v13 > 1)
        {
          v38 = 0uLL;
          LOBYTE(v39) = 96;
          sub_181F5F494();
          swift_willThrowTypedImpl();
          return 0;
        }

LABEL_36:
        sub_18210BECC(*(v4 + 16), *(v4 + 24), 0, a2);
        return 0;
      }

      goto LABEL_18;
    }

    goto LABEL_31;
  }

LABEL_41:
  __break(1u);
  return result;
}

Swift::Int sub_1821019B0(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37[-v9];
  if (*(a1 + 24) == 2)
  {
    v11 = swift_projectBox();
    sub_181AB5D28(v11, v10, &qword_1EA8398E0);
    sub_182123344(v4, &v38);
    v12 = sub_182AD2868();
    (*(*(v12 - 8) + 8))(v10, v12);
    sub_1822ABB9C(a1, a3 & 1, v4, &v38);
    v13 = v38;
    if (!BYTE8(v38))
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v54 = a3;
  v14 = a2;
  v15 = *(a1 + 16);
  v38 = *a1;
  v39 = v15;
  v40 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v53 = *(a1 + 208);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = *(a1 + 192);
  v51 = *(a1 + 176);
  v52 = v20;
  v21 = *(a1 + 128);
  v47 = *(a1 + 112);
  v48 = v21;
  v22 = *(a1 + 160);
  v49 = *(a1 + 144);
  v50 = v22;
  v23 = *(a1 + 96);
  v45 = *(a1 + 80);
  v46 = v23;
  v41 = v16;
  v42 = v17;
  v43 = v18;
  v44 = v19;
  sub_182123344(v4, v37);
  result = Frame.unclaimedBytes.getter();
  if (v26)
  {
    sub_18212337C(v4);
    v13 = 2;
    a2 = v14;
    goto LABEL_34;
  }

  if (*(a1 + 24) == 5)
  {
    v27 = result;
    v28 = v25;
    v29 = nw_frame_unclaimed_length(*a1);
    v25 = v28;
    v30 = v29;
    result = v27;
    v31 = v30;
    goto LABEL_14;
  }

  if (!v19)
  {
    goto LABEL_13;
  }

  v32 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v31 = v19 - v32;
  if (__OFSUB__(v19, v32))
  {
    __break(1u);
LABEL_13:
    v31 = 0;
  }

LABEL_14:
  a2 = v14;
  *&v38 = result;
  *(&v38 + 1) = v25;
  v39 = 0uLL;
  LOBYTE(v40) = 1;
  result = sub_18210C5E8(v4, v37);
  v13 = *(&v39 + 1);
  if (v40 != 1)
  {
    if (v54)
    {
LABEL_18:
      result = v31 - v13;
      if (!__OFSUB__(v31, v13))
      {
        v34 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
        sub_18212337C(v4);
        if (v34)
        {
          goto LABEL_36;
        }

        goto LABEL_33;
      }

      goto LABEL_39;
    }

    v33 = 0;
LABEL_31:
    sub_18212337C(v4);
    if (!v33)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (*(&v39 + 1))
  {
    v33 = 1;
    goto LABEL_31;
  }

  if (v38)
  {
    v35 = *(&v38 + 1) - v38;
  }

  else
  {
    v35 = 0;
  }

  v13 = v35 - v39;
  if (__OFSUB__(v35, v39))
  {
    goto LABEL_40;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v33 = v35 == v39;
    if (v54)
    {
      if (!v13)
      {
        v36 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v31, 0, 1);
        sub_18212337C(v4);
        if (v36)
        {
          v13 = 0;
          goto LABEL_34;
        }

LABEL_33:
        v13 = 2;
LABEL_34:
        if (v13 > 1)
        {
          v38 = 0uLL;
          LOBYTE(v39) = 96;
          sub_181F5F494();
          swift_willThrowTypedImpl();
          return 0;
        }

LABEL_36:
        sub_18210BECC(*(v4 + 16), *(v4 + 24), 0, a2);
        return 0;
      }

      goto LABEL_18;
    }

    goto LABEL_31;
  }

LABEL_41:
  __break(1u);
  return result;
}

Swift::Int sub_182101D6C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35[-v7 - 8];
  if (*(a1 + 24) == 2)
  {
    v9 = swift_projectBox();
    sub_181AB5D28(v9, v8, &qword_1EA8398E0);
    sub_1821233AC(v3, &v36);
    v10 = sub_182AD2868();
    (*(*(v10 - 8) + 8))(v8, v10);
    sub_1822AC128(a1, a2 & 1, v3, &v36);
    v11 = v36;
    if (!BYTE8(v36))
    {
      return 0;
    }

    goto LABEL_33;
  }

  v12 = *(a1 + 16);
  v36 = *a1;
  v37 = v12;
  v38 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v51 = *(a1 + 208);
  v16 = *(a1 + 64);
  v15 = *(a1 + 72);
  v17 = *(a1 + 192);
  v49 = *(a1 + 176);
  v50 = v17;
  v18 = *(a1 + 128);
  v45 = *(a1 + 112);
  v46 = v18;
  v19 = *(a1 + 160);
  v47 = *(a1 + 144);
  v48 = v19;
  v20 = *(a1 + 96);
  v43 = *(a1 + 80);
  v44 = v20;
  v39 = v13;
  v40 = v14;
  v41 = v16;
  v42 = v15;
  sub_1821233AC(v3, v35);
  result = Frame.unclaimedBytes.getter();
  if (v23)
  {
    sub_1821233E4(v3);
LABEL_6:
    v11 = 2;
    goto LABEL_33;
  }

  if (*(a1 + 24) == 5)
  {
    v24 = result;
    v25 = v22;
    v26 = nw_frame_unclaimed_length(*a1);
    v22 = v25;
    v27 = v26;
    result = v24;
    v28 = v27;
    goto LABEL_15;
  }

  if (!v15)
  {
    goto LABEL_14;
  }

  v29 = v14 + v16;
  if (__OFADD__(v14, v16))
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v28 = v15 - v29;
  if (__OFSUB__(v15, v29))
  {
    __break(1u);
LABEL_14:
    v28 = 0;
  }

LABEL_15:
  *&v36 = result;
  *(&v36 + 1) = v22;
  v37 = 0uLL;
  LOBYTE(v38) = 1;
  result = sub_18210CB28(v3, v35);
  v11 = *(&v37 + 1);
  if (v38 != 1)
  {
    if (a2)
    {
      goto LABEL_19;
    }

    v30 = 0;
    goto LABEL_32;
  }

  if (*(&v37 + 1))
  {
    v30 = 1;
    goto LABEL_32;
  }

  if (v36)
  {
    v32 = *(&v36 + 1) - v36;
  }

  else
  {
    v32 = 0;
  }

  v11 = v32 - v37;
  if (__OFSUB__(v32, v37))
  {
    goto LABEL_39;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v30 = v32 == v37;
    if (a2)
    {
      if (!v11)
      {
        v33 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v28, 0, 1);
        sub_1821233E4(v3);
        if (v33)
        {
          v11 = 0;
        }

        else
        {
          v11 = 2;
        }

        goto LABEL_33;
      }

LABEL_19:
      result = v28 - v11;
      if (!__OFSUB__(v28, v11))
      {
        v31 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
        sub_1821233E4(v3);
        if (v31)
        {
          return 0;
        }

        goto LABEL_6;
      }

      goto LABEL_38;
    }

LABEL_32:
    sub_1821233E4(v3);
    if (!v30)
    {
      return 0;
    }

LABEL_33:
    if (v11 > 1)
    {
      v36 = 0uLL;
      LOBYTE(v37) = 96;
      sub_181F5F494();
      swift_willThrowTypedImpl();
    }

    return 0;
  }

LABEL_40:
  __break(1u);
  return result;
}

Swift::Int sub_1821020BC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32[-v7];
  if (*(a1 + 24) != 2)
  {
    v13 = *(a1 + 16);
    v33 = *a1;
    v34 = v13;
    v35 = *(a1 + 32);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v48 = *(a1 + 208);
    v17 = *(a1 + 64);
    v16 = *(a1 + 72);
    v18 = *(a1 + 192);
    v46 = *(a1 + 176);
    v47 = v18;
    v19 = *(a1 + 128);
    v42 = *(a1 + 112);
    v43 = v19;
    v20 = *(a1 + 160);
    v44 = *(a1 + 144);
    v45 = v20;
    v21 = *(a1 + 96);
    v40 = *(a1 + 80);
    v41 = v21;
    v36 = v14;
    v37 = v15;
    v38 = v17;
    v39 = v16;
    result = Frame.unclaimedBytes.getter();
    if (v24)
    {
LABEL_4:
      v12 = 1;
LABEL_5:
      v11 = 2;
      goto LABEL_21;
    }

    if (*(a1 + 24) == 5)
    {
      v25 = result;
      v26 = v23;
      v27 = nw_frame_unclaimed_length(*a1);
      v23 = v26;
      v28 = v27;
      result = v25;
      v29 = v28;
      goto LABEL_14;
    }

    if (v16)
    {
      v30 = v15 + v17;
      if (__OFADD__(v15, v17))
      {
        __break(1u);
        goto LABEL_35;
      }

      v29 = v16 - v30;
      if (!__OFSUB__(v16, v30))
      {
LABEL_14:
        *&v33 = result;
        *(&v33 + 1) = v23;
        v34 = 0uLL;
        LOBYTE(v35) = 1;
        result = sub_18210D010(v3, v32);
        v11 = *(&v34 + 1);
        if (v35 == 1)
        {
          if (*(&v34 + 1))
          {
            v12 = 1;
            goto LABEL_21;
          }

          if (v33)
          {
            v31 = *(&v33 + 1) - v33;
          }

          else
          {
            v31 = 0;
          }

          v11 = v31 - v34;
          if (__OFSUB__(v31, v34))
          {
            goto LABEL_36;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return result;
          }

          v12 = v31 == v34;
          if ((a2 & 1) == 0)
          {
            goto LABEL_21;
          }

          if (!v11)
          {
            v12 = 1;
            if (Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v29, 0, 1))
            {
              v11 = 0;
              goto LABEL_21;
            }

            goto LABEL_5;
          }
        }

        else if ((a2 & 1) == 0)
        {
          goto LABEL_20;
        }

        result = v29 - v11;
        if (!__OFSUB__(v29, v11))
        {
          if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
          {
            goto LABEL_4;
          }

LABEL_20:
          v12 = 0;
          goto LABEL_21;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      __break(1u);
    }

    v29 = 0;
    goto LABEL_14;
  }

  v9 = swift_projectBox();
  sub_181AB5D28(v9, v8, &qword_1EA8398E0);
  v10 = sub_182AD2868();
  (*(*(v10 - 8) + 8))(v8, v10);
  sub_1822AC65C(a1, a2 & 1, v3, &v33);
  v11 = v33;
  v12 = BYTE8(v33);
LABEL_21:
  if (v12)
  {
    if (v11 > 1)
    {
      v33 = 0uLL;
      LOBYTE(v34) = 96;
      sub_181F5F494();
      swift_willThrowTypedImpl();
    }
  }

  return 0;
}

uint64_t sub_1821023F8(__int128 *a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *__return_ptr, __int128 *, void, void, uint64_t, uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  if (*(a1 + 24) != 2)
  {
    v53 = a2;
    v17 = a1[1];
    v37 = *a1;
    v38 = v17;
    v39 = a1[2];
    v18 = *(a1 + 6);
    v19 = *(a1 + 7);
    v52 = *(a1 + 208);
    v20 = *(a1 + 8);
    v21 = *(a1 + 9);
    v22 = a1[12];
    v50 = a1[11];
    v51 = v22;
    v23 = a1[8];
    v46 = a1[7];
    v47 = v23;
    v24 = a1[10];
    v48 = a1[9];
    v49 = v24;
    v25 = a1[6];
    v44 = a1[5];
    v45 = v25;
    v40 = v18;
    v41 = v19;
    v42 = v20;
    v43 = v21;
    v26 = Frame.unclaimedBytes.getter();
    if (v28)
    {
LABEL_24:
      v16 = 1;
LABEL_25:
      v15 = 2;
      goto LABEL_26;
    }

    v29 = v26;
    v30 = v27;
    if (*(a1 + 24) == 5)
    {
      v31 = nw_frame_unclaimed_length(*a1);
      goto LABEL_12;
    }

    if (v21)
    {
      v32 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_39;
      }

      v31 = v21 - v32;
      if (!__OFSUB__(v21, v32))
      {
LABEL_12:
        v33 = sub_182104788(a3, a4);
        if (v33 < 0x40)
        {
          v34 = 1;
        }

        else if (v33 < 0x4000)
        {
          v34 = 2;
        }

        else if (v33 >> 30)
        {
          if (v33 >> 62)
          {
LABEL_41:
            result = sub_182AD3EA8();
            __break(1u);
            return result;
          }

          v34 = 8;
        }

        else
        {
          v34 = 4;
        }

        if (v29)
        {
          v35 = v30 - v29;
        }

        else
        {
          v35 = 0;
        }

        if (v35 < v34)
        {
          goto LABEL_24;
        }

        sub_18207A3BC(v29, v30, 0, v33);
        v15 = v35 - v34;
        if (v15 >= 0)
        {
          v16 = v15 == 0;
          if ((v53 & 1) == 0)
          {
            goto LABEL_26;
          }

          if (!v15)
          {
            v16 = 1;
            if (Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v31, 0, 1))
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }

          if (!__OFSUB__(v31, v15))
          {
            v16 = 1;
            if (Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v31 - v15, 0, 1))
            {
              v16 = 0;
              goto LABEL_26;
            }

            goto LABEL_25;
          }

          goto LABEL_40;
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      __break(1u);
    }

    v31 = 0;
    goto LABEL_12;
  }

  v13 = swift_projectBox();
  sub_181AB5D28(v13, v12, &qword_1EA8398E0);
  v14 = sub_182AD2868();
  (*(*(v14 - 8) + 8))(v12, v14);
  a5(&v37, a1, a2 & 1, 0, a3, a4);
  v15 = v37;
  v16 = BYTE8(v37);
LABEL_26:
  if (v16)
  {
    if (v15 > 1)
    {
      v37 = 0uLL;
      LOBYTE(v38) = 96;
      sub_181F5F494();
      swift_willThrowTypedImpl();
    }
  }

  return 0;
}

void sub_182102770(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35[-v7 - 8];
  v52[0] = 0;
  if ((*(v3 + 24) & 1) == 0)
  {
    if ((*(v3 + 16) & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_41;
    }

    v52[0] = *(v3 + 16);
  }

  if (*(a1 + 24) == 2)
  {
    v9 = swift_projectBox();
    sub_181AB5D28(v9, v8, &qword_1EA8398E0);
    sub_182123414(v3, &v36);
    v10 = sub_182AD2868();
    (*(*(v10 - 8) + 8))(v8, v10);
    sub_1822AD0BC(a1, a2 & 1, v3, v52, &v36);
    v11 = v36;
    if (!BYTE8(v36))
    {
      return;
    }

    goto LABEL_36;
  }

  v12 = *(a1 + 16);
  v36 = *a1;
  v37 = v12;
  v38 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v51 = *(a1 + 208);
  v16 = *(a1 + 64);
  v15 = *(a1 + 72);
  v17 = *(a1 + 192);
  v49 = *(a1 + 176);
  v50 = v17;
  v18 = *(a1 + 128);
  v45 = *(a1 + 112);
  v46 = v18;
  v19 = *(a1 + 160);
  v47 = *(a1 + 144);
  v48 = v19;
  v20 = *(a1 + 96);
  v43 = *(a1 + 80);
  v44 = v20;
  v39 = v13;
  v40 = v14;
  v41 = v16;
  v42 = v15;
  sub_182123414(v3, v35);
  v21 = Frame.unclaimedBytes.getter();
  if ((v23 & 1) == 0)
  {
    if (*(a1 + 24) == 5)
    {
      v24 = v21;
      v25 = v22;
      v26 = nw_frame_unclaimed_length(*a1);
      v22 = v25;
      v27 = v26;
      v21 = v24;
      v28 = v27;
      goto LABEL_18;
    }

    if (!v15)
    {
      goto LABEL_17;
    }

    v29 = v14 + v16;
    if (!__OFADD__(v14, v16))
    {
      v28 = v15 - v29;
      if (!__OFSUB__(v15, v29))
      {
LABEL_18:
        *&v36 = v21;
        *(&v36 + 1) = v22;
        v37 = 0uLL;
        LOBYTE(v38) = 1;
        sub_18211477C(&v36, v3, v52, v35);
        v11 = *(&v37 + 1);
        if (v38 == 1)
        {
          if (*(&v37 + 1))
          {
            v30 = 1;
            goto LABEL_35;
          }

          if (v36)
          {
            v32 = *(&v36 + 1) - v36;
          }

          else
          {
            v32 = 0;
          }

          v11 = v32 - v37;
          if (__OFSUB__(v32, v37))
          {
            goto LABEL_43;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_44:
            __break(1u);
            return;
          }

          v30 = v32 == v37;
          if (a2)
          {
            if (!v11)
            {
              v33 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v28, 0, 1);
              sub_18212344C(v3);
              if (v33)
              {
                v11 = 0;
              }

              else
              {
                v11 = 2;
              }

              goto LABEL_36;
            }

LABEL_22:
            if (!__OFSUB__(v28, v11))
            {
              v31 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v28 - v11, 0, 1);
              sub_18212344C(v3);
              if (v31)
              {
                return;
              }

              goto LABEL_9;
            }

            goto LABEL_42;
          }
        }

        else
        {
          if (a2)
          {
            goto LABEL_22;
          }

          v30 = 0;
        }

LABEL_35:
        sub_18212344C(v3);
        if (!v30)
        {
          return;
        }

        goto LABEL_36;
      }

      __break(1u);
LABEL_17:
      v28 = 0;
      goto LABEL_18;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_18212344C(v3);
LABEL_9:
  v11 = 2;
LABEL_36:
  if (v11 > 1)
  {
    v36 = 0uLL;
    LOBYTE(v37) = 96;
    sub_181F5F494();
    swift_willThrowTypedImpl();
  }
}

void sub_182102AE4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34[-v7];
  v51 = 0;
  if ((*(v3 + 24) & 1) == 0)
  {
    if ((*(v3 + 16) & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_41;
    }

    v51 = *(v3 + 16);
  }

  if (*(a1 + 24) == 2)
  {
    v9 = swift_projectBox();
    sub_181AB5D28(v9, v8, &qword_1EA8398E0);
    sub_1821231D4(v3, &v35);
    v10 = sub_182AD2868();
    (*(*(v10 - 8) + 8))(v8, v10);
    sub_1822AD608(a1, a2 & 1, v3, &v51, &v35);
    v11 = v35;
    if (!BYTE8(v35))
    {
      return;
    }

    goto LABEL_36;
  }

  v12 = *(a1 + 16);
  v35 = *a1;
  v36 = v12;
  v37 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v50 = *(a1 + 208);
  v16 = *(a1 + 64);
  v15 = *(a1 + 72);
  v17 = *(a1 + 192);
  v48 = *(a1 + 176);
  v49 = v17;
  v18 = *(a1 + 128);
  v44 = *(a1 + 112);
  v45 = v18;
  v19 = *(a1 + 160);
  v46 = *(a1 + 144);
  v47 = v19;
  v20 = *(a1 + 96);
  v42 = *(a1 + 80);
  v43 = v20;
  v38 = v13;
  v39 = v14;
  v40 = v16;
  v41 = v15;
  sub_1821231D4(v3, v34);
  v21 = Frame.unclaimedBytes.getter();
  if ((v23 & 1) == 0)
  {
    if (*(a1 + 24) == 5)
    {
      v24 = v21;
      v25 = v22;
      v26 = nw_frame_unclaimed_length(*a1);
      v22 = v25;
      v27 = v26;
      v21 = v24;
      v28 = v27;
      goto LABEL_18;
    }

    if (!v15)
    {
      goto LABEL_17;
    }

    v29 = v14 + v16;
    if (!__OFADD__(v14, v16))
    {
      v28 = v15 - v29;
      if (!__OFSUB__(v15, v29))
      {
LABEL_18:
        *&v35 = v21;
        *(&v35 + 1) = v22;
        v36 = 0uLL;
        LOBYTE(v37) = 1;
        sub_182114FD4(&v35, v3, &v51, v34);
        v11 = *(&v36 + 1);
        if (v37 == 1)
        {
          if (*(&v36 + 1))
          {
            v30 = 1;
            goto LABEL_35;
          }

          if (v35)
          {
            v32 = *(&v35 + 1) - v35;
          }

          else
          {
            v32 = 0;
          }

          v11 = v32 - v36;
          if (__OFSUB__(v32, v36))
          {
            goto LABEL_43;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_44:
            __break(1u);
            return;
          }

          v30 = v32 == v36;
          if (a2)
          {
            if (!v11)
            {
              v33 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v28, 0, 1);
              sub_1821231A4(v3);
              if (v33)
              {
                v11 = 0;
              }

              else
              {
                v11 = 2;
              }

              goto LABEL_36;
            }

LABEL_22:
            if (!__OFSUB__(v28, v11))
            {
              v31 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v28 - v11, 0, 1);
              sub_1821231A4(v3);
              if (v31)
              {
                return;
              }

              goto LABEL_9;
            }

            goto LABEL_42;
          }
        }

        else
        {
          if (a2)
          {
            goto LABEL_22;
          }

          v30 = 0;
        }

LABEL_35:
        sub_1821231A4(v3);
        if (!v30)
        {
          return;
        }

        goto LABEL_36;
      }

      __break(1u);
LABEL_17:
      v28 = 0;
      goto LABEL_18;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_1821231A4(v3);
LABEL_9:
  v11 = 2;
LABEL_36:
  if (v11 > 1)
  {
    v35 = 0uLL;
    LOBYTE(v36) = 96;
    sub_181F5F494();
    swift_willThrowTypedImpl();
  }
}

Swift::Int sub_182102E54(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34[-v7];
  if (*(a1 + 24) == 2)
  {
    v9 = swift_projectBox();
    sub_181AB5D28(v9, v8, &qword_1EA8398E0);
    sub_18212347C(v3, &v35);
    v10 = sub_182AD2868();
    (*(*(v10 - 8) + 8))(v8, v10);
    sub_1822ADB54(a1, a2 & 1, v3, &v35);
    v11 = v35;
    if (!BYTE8(v35))
    {
      return 0;
    }

    goto LABEL_33;
  }

  v12 = *(a1 + 16);
  v35 = *a1;
  v36 = v12;
  v37 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v50 = *(a1 + 208);
  v16 = *(a1 + 64);
  v15 = *(a1 + 72);
  v17 = *(a1 + 192);
  v48 = *(a1 + 176);
  v49 = v17;
  v18 = *(a1 + 128);
  v44 = *(a1 + 112);
  v45 = v18;
  v19 = *(a1 + 160);
  v46 = *(a1 + 144);
  v47 = v19;
  v20 = *(a1 + 96);
  v42 = *(a1 + 80);
  v43 = v20;
  v38 = v13;
  v39 = v14;
  v40 = v16;
  v41 = v15;
  sub_18212347C(v3, v34);
  result = Frame.unclaimedBytes.getter();
  if (v23)
  {
    sub_1821234B4(v3);
LABEL_6:
    v11 = 2;
    goto LABEL_33;
  }

  if (*(a1 + 24) == 5)
  {
    v24 = result;
    v25 = v22;
    v26 = nw_frame_unclaimed_length(*a1);
    v22 = v25;
    v27 = v26;
    result = v24;
    v28 = v27;
    goto LABEL_15;
  }

  if (!v15)
  {
    goto LABEL_14;
  }

  v29 = v14 + v16;
  if (__OFADD__(v14, v16))
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v28 = v15 - v29;
  if (__OFSUB__(v15, v29))
  {
    __break(1u);
LABEL_14:
    v28 = 0;
  }

LABEL_15:
  *&v35 = result;
  *(&v35 + 1) = v22;
  v36 = 0uLL;
  LOBYTE(v37) = 1;
  result = sub_18210D294(v3, v34);
  v11 = *(&v36 + 1);
  if (v37 != 1)
  {
    if (a2)
    {
      goto LABEL_19;
    }

    v30 = 0;
    goto LABEL_32;
  }

  if (*(&v36 + 1))
  {
    v30 = 1;
    goto LABEL_32;
  }

  if (v35)
  {
    v32 = *(&v35 + 1) - v35;
  }

  else
  {
    v32 = 0;
  }

  v11 = v32 - v36;
  if (__OFSUB__(v32, v36))
  {
    goto LABEL_39;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v30 = v32 == v36;
    if (a2)
    {
      if (!v11)
      {
        v33 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v28, 0, 1);
        sub_1821234B4(v3);
        if (v33)
        {
          v11 = 0;
        }

        else
        {
          v11 = 2;
        }

        goto LABEL_33;
      }

LABEL_19:
      result = v28 - v11;
      if (!__OFSUB__(v28, v11))
      {
        v31 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
        sub_1821234B4(v3);
        if (v31)
        {
          return 0;
        }

        goto LABEL_6;
      }

      goto LABEL_38;
    }

LABEL_32:
    sub_1821234B4(v3);
    if (!v30)
    {
      return 0;
    }

LABEL_33:
    if (v11 > 1)
    {
      v35 = 0uLL;
      LOBYTE(v36) = 96;
      sub_181F5F494();
      swift_willThrowTypedImpl();
    }

    return 0;
  }

LABEL_40:
  __break(1u);
  return result;
}

Swift::Int sub_1821031A0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32[-v7];
  if (*(a1 + 24) != 2)
  {
    v13 = *(a1 + 16);
    v33 = *a1;
    v34 = v13;
    v35 = *(a1 + 32);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v48 = *(a1 + 208);
    v17 = *(a1 + 64);
    v16 = *(a1 + 72);
    v18 = *(a1 + 192);
    v46 = *(a1 + 176);
    v47 = v18;
    v19 = *(a1 + 128);
    v42 = *(a1 + 112);
    v43 = v19;
    v20 = *(a1 + 160);
    v44 = *(a1 + 144);
    v45 = v20;
    v21 = *(a1 + 96);
    v40 = *(a1 + 80);
    v41 = v21;
    v36 = v14;
    v37 = v15;
    v38 = v17;
    v39 = v16;
    result = Frame.unclaimedBytes.getter();
    if (v24)
    {
LABEL_4:
      v12 = 1;
LABEL_5:
      v11 = 2;
      goto LABEL_21;
    }

    if (*(a1 + 24) == 5)
    {
      v25 = result;
      v26 = v23;
      v27 = nw_frame_unclaimed_length(*a1);
      v23 = v26;
      v28 = v27;
      result = v25;
      v29 = v28;
      goto LABEL_14;
    }

    if (v16)
    {
      v30 = v15 + v17;
      if (__OFADD__(v15, v17))
      {
        __break(1u);
        goto LABEL_35;
      }

      v29 = v16 - v30;
      if (!__OFSUB__(v16, v30))
      {
LABEL_14:
        *&v33 = result;
        *(&v33 + 1) = v23;
        v34 = 0uLL;
        LOBYTE(v35) = 1;
        result = sub_18210DD38(v3, v32);
        v11 = *(&v34 + 1);
        if (v35 == 1)
        {
          if (*(&v34 + 1))
          {
            v12 = 1;
            goto LABEL_21;
          }

          if (v33)
          {
            v31 = *(&v33 + 1) - v33;
          }

          else
          {
            v31 = 0;
          }

          v11 = v31 - v34;
          if (__OFSUB__(v31, v34))
          {
            goto LABEL_36;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return result;
          }

          v12 = v31 == v34;
          if ((a2 & 1) == 0)
          {
            goto LABEL_21;
          }

          if (!v11)
          {
            v12 = 1;
            if (Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v29, 0, 1))
            {
              v11 = 0;
              goto LABEL_21;
            }

            goto LABEL_5;
          }
        }

        else if ((a2 & 1) == 0)
        {
          goto LABEL_20;
        }

        result = v29 - v11;
        if (!__OFSUB__(v29, v11))
        {
          if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
          {
            goto LABEL_4;
          }

LABEL_20:
          v12 = 0;
          goto LABEL_21;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      __break(1u);
    }

    v29 = 0;
    goto LABEL_14;
  }

  v9 = swift_projectBox();
  sub_181AB5D28(v9, v8, &qword_1EA8398E0);
  v10 = sub_182AD2868();
  (*(*(v10 - 8) + 8))(v8, v10);
  sub_1822ADB80(a1, a2 & 1, v3, &v33);
  v11 = v33;
  v12 = BYTE8(v33);
LABEL_21:
  if (v12)
  {
    if (v11 > 1)
    {
      v33 = 0uLL;
      LOBYTE(v34) = 96;
      sub_181F5F494();
      swift_willThrowTypedImpl();
    }
  }

  return 0;
}

void sub_1821034DC(uint64_t a1@<X0>, char a2@<W1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (a2)
  {
    if (a2 == 1)
    {
      sub_18211F818(a3, *(a5 + 1128), *(a5 + 1127), &v105, &v134);
      if (v7)
      {
LABEL_4:
        v11 = v105;
        v12 = v106;
        LOBYTE(v13) = v107;
LABEL_8:
        *a6 = v11;
        *(a6 + 8) = v12;
        *(a6 + 16) = v13;
        return;
      }

      v19 = v136;
      v20 = v137;
      v21 = v138;
      v22 = v139;
      v23 = v135 & 3 | 0xC800000000000000;
      v24 = v140;
      LOBYTE(v100) = v137;
      LOBYTE(v104) = v139;
      *a7 = v134;
      *(a7 + 8) = v23;
      *(a7 + 16) = v19;
      *(a7 + 24) = v20;
      *(a7 + 32) = v21;
      *(a7 + 40) = v22;
      *(a7 + 48) = v24;
    }

    else
    {
      switch(a1)
      {
        case 1:
          v11 = sub_18211D110(a3);
          v12 = v64;
          if (v7)
          {
            goto LABEL_66;
          }

          v65 = v64 & 0x1010303 | 0x800000000000000;
          goto LABEL_85;
        case 2:
          sub_18211D1E8(a3, *(a4 + 104), &v105, v111);
          if (v7)
          {
            goto LABEL_4;
          }

          v55 = v112;
          v56 = v111[0].n128_u32[2] & 0x1010303 | 0x1000000000000000;
          *a7 = v111[0].n128_u64[0];
          *(a7 + 8) = v56;
          v57 = v111[2];
          *(a7 + 16) = v111[1];
          *(a7 + 32) = v57;
          *(a7 + 48) = v111[3];
          *(a7 + 64) = v55;
          return;
        case 3:
          sub_18211D4B0(a3, *(a4 + 104), &v105, v113);
          if (v7)
          {
            goto LABEL_4;
          }

          v61 = DWORD2(v113[0]) & 0x1010303 | 0x1800000000000000;
          *a7 = *&v113[0];
          *(a7 + 8) = v61;
          v62 = v113[2];
          *(a7 + 16) = v113[1];
          *(a7 + 32) = v62;
          *(a7 + 48) = v113[3];
          return;
        case 4:
          swift_beginAccess();
          sub_18211D728(a3, (a5 + 984), &v105, &v114);
          if (v7)
          {
            goto LABEL_6;
          }

          v41 = v117;
          v42 = v115 & 3 | 0x2000000000000000;
          *a7 = v114;
          *(a7 + 8) = v42;
          *(a7 + 16) = v116;
          *(a7 + 32) = v41;
          goto LABEL_14;
        case 5:
          swift_beginAccess();
          v11 = sub_18211DEE4(a3, (a5 + 984), 5uLL, sub_1820DC45C, 18);
          v12 = v72;
          v13 = v73;
          if (v7)
          {
            goto LABEL_7;
          }

          v74 = 0x2800000000000000;
          goto LABEL_55;
        case 6:
          v85 = *(a4 + 104);
          swift_beginAccess();
          v11 = sub_18211D8B0(a3, v85, (a5 + 984));
          v12 = v87;
          v13 = v88;
          if (v7)
          {
            goto LABEL_57;
          }

          v84 = v87 & 0x303 | 0x3000000000000000;
          goto LABEL_80;
        case 7:
          v11 = sub_18211DA08(a3);
          v12 = v63;
          if (v7)
          {
            goto LABEL_64;
          }

          v39 = 0x3800000000000000;
          goto LABEL_82;
        case 8:
          v11 = sub_18211DE04(a3, 8uLL, sub_1820DDDA4);
          v12 = v93;
          if (v7)
          {
            goto LABEL_64;
          }

          v39 = 0x5000000000000000;
          goto LABEL_82;
        case 9:
          v46 = sub_18211DD10(a3);
          v11 = v46;
          v12 = v47;
          if (v7)
          {
            goto LABEL_64;
          }

          *a7 = v46;
          *(a7 + 8) = v47 & 3 | 0x5800000000000000;
          *(a7 + 16) = v37;
          *(a7 + 24) = v48;
          return;
        case 10:
          v11 = sub_18211DE04(a3, 0xAuLL, sub_1820DDDA4);
          v12 = v92;
          if (v7)
          {
            goto LABEL_64;
          }

          v39 = 0x6000000000000000;
          goto LABEL_82;
        case 11:
          v11 = sub_18211DE04(a3, 0xBuLL, sub_1820DDDA4);
          v12 = v38;
          if (v7)
          {
            goto LABEL_64;
          }

          v39 = 0x6800000000000000;
          goto LABEL_82;
        case 12:
          swift_beginAccess();
          v11 = sub_18211E064(a3, (a5 + 984), 0xCuLL, sub_1820DDDA4, 43);
          v12 = v44;
          v13 = v45;
          if (v7)
          {
            goto LABEL_57;
          }

          v36 = 0x7000000000000000;
          goto LABEL_38;
        case 13:
          swift_beginAccess();
          v11 = sub_18211DEE4(a3, (a5 + 984), 0xDuLL, sub_1820DC45C, 16);
          v12 = v82;
          v13 = v83;
          if (v7)
          {
            goto LABEL_57;
          }

          v74 = 0x7800000000000000;
LABEL_55:
          v84 = v74 & 0xFFFFFFFFFFFFFFFCLL | v12 & 3;
LABEL_80:
          *a7 = v11;
          *(a7 + 8) = v84;
          *(a7 + 16) = v13;
          *(a7 + 24) = v71;
          goto LABEL_14;
        case 14:
          swift_beginAccess();
          v11 = sub_18211E064(a3, (a5 + 984), 0xEuLL, sub_1820DDDA4, 16);
          v12 = v34;
          v13 = v35;
          if (v7)
          {
            goto LABEL_57;
          }

          v36 = 0x8000000000000000;
          goto LABEL_38;
        case 15:
          swift_beginAccess();
          v11 = sub_18211E064(a3, (a5 + 984), 0xFuLL, sub_1820DDDA4, 16);
          v12 = v59;
          v13 = v60;
          if (v7)
          {
LABEL_57:
            swift_endAccess();
            goto LABEL_8;
          }

          v36 = 0x8800000000000000;
LABEL_38:
          *a7 = v11;
          *(a7 + 8) = v36 & 0xFFFFFFFFFFFFFFFCLL | v12 & 3;
          *(a7 + 16) = v13;
          goto LABEL_14;
        case 16:
          sub_18210A898(a3, &v105, &v100);
          if (v7)
          {
            goto LABEL_4;
          }

          v30 = v101 & 3 | 0x9000000000000000;
          *a7 = v100;
          *(a7 + 8) = v30;
          v31 = v102;
          v32 = v103;
          goto LABEL_76;
        case 17:
          v11 = sub_18211DE04(a3, 0x11uLL, sub_1820DDDA4);
          v12 = v66;
          if (v7)
          {
LABEL_64:
            LOBYTE(v13) = v37;
            goto LABEL_8;
          }

          v39 = 0x9800000000000000;
LABEL_82:
          *a7 = v11;
          *(a7 + 8) = v39 & 0xFFFFFFFFFFFFFFFCLL | v12 & 3;
          *(a7 + 16) = v37;
          return;
        case 18:
          if (*(a4 + 88))
          {
            v104 = *(a4 + 88);

            sub_18210BC40(a3, &v104, &v105, 0x12uLL, sub_1820DEDC8, &v100);
            if (v7)
            {
              goto LABEL_4;
            }

            v89 = v100;
            v90 = v101;
            v91 = 0xA000000000000000;
LABEL_70:
            *a7 = v89;
            *(a7 + 8) = v91 & 0xFFFFFFFFFFFFFFFCLL | v90 & 3;
            *(a7 + 16) = v102;
          }

          else
          {
            __break(1u);
LABEL_87:
            __break(1u);
          }

          return;
        case 19:
          if (!*(a4 + 88))
          {
            goto LABEL_87;
          }

          v104 = *(a4 + 88);

          sub_18210BC40(a3, &v104, &v105, 0x13uLL, sub_1820DEDC8, &v100);
          if (v7)
          {
            goto LABEL_4;
          }

          v89 = v100;
          v90 = v101;
          v91 = 0xA800000000000000;
          goto LABEL_70;
        case 20:
          swift_beginAccess();
          sub_18211E2A4(a3, (a5 + 984), &v105, &v123);
          if (v7)
          {
            goto LABEL_6;
          }

          v68 = v124 & 0x1010303 | 0xB000000000000000;
          *a7 = v123;
          *(a7 + 8) = v68;
          v69 = v126;
          *(a7 + 16) = v125;
          *(a7 + 32) = v69;
          *(a7 + 48) = v127;
          goto LABEL_14;
        case 21:
          swift_beginAccess();
          sub_18211ED30(a3, (a5 + 984), &v105, &v128);
          if (v7)
          {
            goto LABEL_6;
          }

          v76 = v130;
          v77 = v131;
          v78 = v129 & 3 | 0xB800000000000000;
          v79 = v132;
          v80 = v133;
          LOBYTE(v104) = v131;
          *a7 = v128;
          *(a7 + 8) = v78;
          *(a7 + 16) = v76;
          *(a7 + 24) = v77;
          *(a7 + 32) = v79;
          *(a7 + 40) = v80;
          goto LABEL_14;
        case 22:
          v11 = sub_18211F748(a3);
          v12 = v94;
          if (v7)
          {
            goto LABEL_66;
          }

          v54 = 0xC000000000000000;
          goto LABEL_84;
        case 23:
          sub_1821205D8(a3, &v105, &v141);
          if (v7)
          {
            goto LABEL_4;
          }

          v15 = v144;
          v16 = v145;
          v95 = v142 & 3 | 0xD000000000000000;
          *a7 = v141;
          *(a7 + 8) = v95;
          v18 = v143;
          goto LABEL_73;
        case 24:
          v11 = sub_182120788(a3);
          v12 = v53;
          if (v7)
          {
LABEL_66:
            LOBYTE(v13) = v52;
            goto LABEL_8;
          }

          v54 = 0xD800000000000000;
LABEL_84:
          v65 = v54 & 0xFFFFFFFFFFFFFFFCLL | v12 & 3;
LABEL_85:
          *a7 = v11;
          *(a7 + 8) = v65;
          break;
        case 25:
          sub_182120858(a3, *(a4 + 104), &v105, v146);
          if (v7)
          {
            goto LABEL_4;
          }

          v49 = v147;
          v50 = DWORD2(v146[0]) & 0x1010303 | 0xE000000000000000;
          *a7 = *&v146[0];
          *(a7 + 8) = v50;
          v51 = v146[2];
          *(a7 + 16) = v146[1];
          *(a7 + 32) = v51;
          *(a7 + 48) = v49;
          return;
        case 26:
          sub_1821212A0(a3, *(a4 + 104), &v105, v148);
          if (v7)
          {
            goto LABEL_4;
          }

          v97 = DWORD2(v148[0]) & 0x1010303 | 0xE800000000000000;
          *a7 = *&v148[0];
          *(a7 + 8) = v97;
          v98 = v148[2];
          *(a7 + 16) = v148[1];
          *(a7 + 32) = v98;
          v99 = v148[4];
          *(a7 + 48) = v148[3];
          *(a7 + 64) = v99;
          return;
        case 27:
          sub_182121F6C(a3, &v105, &v149);
          if (v7)
          {
            goto LABEL_4;
          }

          v28 = v150 & 0x1010303 | 0xF000000000000000;
          *a7 = v149;
          *(a7 + 8) = v28;
          v29 = v152;
          *(a7 + 16) = v151;
          *(a7 + 32) = v29;
          *(a7 + 48) = v153;
          return;
        case 28:
          sub_1821229FC(a3, &v105, &v154);
          if (v7)
          {
            goto LABEL_4;
          }

          v96 = v155 & 3 | 0xF800000000000000;
          *a7 = v154;
          *(a7 + 8) = v96;
          v31 = v156;
          v32 = v157;
LABEL_76:
          *(a7 + 16) = v31;
          *(a7 + 32) = v32;
          return;
        default:
          sub_18211CFE4(a3, *(a4 + 104), &v105, v108);
          if (v7)
          {
            goto LABEL_4;
          }

          v15 = v109;
          v16 = v110;
          v17 = DWORD2(v108[0]) & 0x1010303;
          *a7 = *&v108[0];
          *(a7 + 8) = v17;
          v18 = v108[1];
LABEL_73:
          *(a7 + 16) = v18;
          *(a7 + 32) = v15;
          *(a7 + 40) = v16;
          return;
      }
    }
  }

  else
  {
    swift_beginAccess();
    sub_18211DB08(a3, (a5 + 984), &v105, &v118);
    if (v7)
    {
LABEL_6:
      v11 = v105;
      v12 = v106;
      LOBYTE(v13) = v107;
LABEL_7:
      swift_endAccess();
      goto LABEL_8;
    }

    v25 = v121;
    v26 = v122;
    v27 = v119 & 3 | 0x4000000000000000;
    *a7 = v118;
    *(a7 + 8) = v27;
    *(a7 + 16) = v120;
    *(a7 + 32) = v25;
    *(a7 + 40) = v26;
LABEL_14:
    swift_endAccess();
  }
}

uint64_t sub_182103E7C(uint64_t a1)
{
  v2 = *v1;
  v3 = (*(v1 + 1) << 8) | ((*(v1 + 5) | (v1[7] << 16)) << 40) | v2;
  if (!v1[8])
  {
    v5 = v3 + 8;
    if (v3 < 0xFFFFFFFFFFFFFFF8)
    {
      return sub_182118FAC(a1, v5 | 2, *(v1 + 2), *(v1 + 3), *(v1 + 4));
    }

    __break(1u);
LABEL_8:
    v5 = qword_182AF7938[v3];
    return sub_182118FAC(a1, v5 | 2, *(v1 + 2), *(v1 + 3), *(v1 + 4));
  }

  if (v1[8] != 1)
  {
    goto LABEL_8;
  }

  v4 = (v2 & 1) == 0;
  v5 = 48;
  if (!v4)
  {
    v5 = 49;
  }

  return sub_182118FAC(a1, v5 | 2, *(v1 + 2), *(v1 + 3), *(v1 + 4));
}

uint64_t sub_182103EE4()
{
  v1 = v0;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD00000000000001FLL, 0x8000000182BDE400);
    v31 = v0[2];
    v3 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v3);

    MEMORY[0x1865D9CA0](0x74657366666F202CLL, 0xEA0000000000203ALL);
    v31 = v0[3];
    v4 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v4);

    MEMORY[0x1865D9CA0](0x656C206174616420, 0xEE00203A6874676ELL);
    v31 = *(v0[4] + 16);
    v5 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v5);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843418);
    v7 = swift_allocObject();
    *(v7 + 16) = "process(connection:)";
    *(v7 + 24) = 20;
    *(v7 + 32) = 2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_181F8C258;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = 1564427099;
    *(v9 + 24) = 0xE400000000000000;
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0xE000000000000000;

    log = sub_182AD2678();
    v27 = sub_182AD38A8();
    v25 = swift_allocObject();
    *(v25 + 16) = 32;
    v24 = swift_allocObject();
    *(v24 + 16) = 8;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_181F8C264;
    *(v11 + 24) = v8;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_181F8C27C;
    *(v12 + 24) = v11;
    v26 = swift_allocObject();
    *(v26 + 16) = 32;
    v13 = swift_allocObject();
    *(v13 + 16) = 8;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_181F8C26C;
    *(v14 + 24) = v9;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_181F8C718;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = 32;
    v17 = swift_allocObject();
    *(v17 + 16) = 8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_181F8C26C;
    *(v18 + 24) = v10;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_181F8C718;
    *(v19 + 24) = v18;
    if (os_log_type_enabled(log, v27))
    {
      v23 = v17;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      v30 = 0;
      *v20 = 770;
      v22 = v21;
      v31 = v20 + 2;
      v32 = sub_181F8C274;
      v33 = v25;
      sub_181F73AE0(&v32, &v31, &v30, &v29);

      v32 = sub_181F8C728;
      v33 = v24;
      sub_181F73AE0(&v32, &v31, &v30, &v29);

      v32 = sub_181F8C284;
      v33 = v12;
      sub_181F73AE0(&v32, &v31, &v30, &v29);

      v32 = sub_181F8C728;
      v33 = v26;
      sub_181F73AE0(&v32, &v31, &v30, &v29);

      v32 = sub_181F8C728;
      v33 = v13;
      sub_181F73AE0(&v32, &v31, &v30, &v29);

      v32 = sub_181F8C714;
      v33 = v15;
      sub_181F73AE0(&v32, &v31, &v30, &v29);

      v32 = sub_181F8C728;
      v33 = v16;
      sub_181F73AE0(&v32, &v31, &v30, &v29);

      v32 = sub_181F8C728;
      v33 = v23;
      sub_181F73AE0(&v32, &v31, &v30, &v29);

      v32 = sub_181F8C714;
      v33 = v19;
      sub_181F73AE0(&v32, &v31, &v30, &v29);

      _os_log_impl(&dword_181A37000, log, v27, "%s %s %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v22, -1, -1);
      MEMORY[0x1865DF520](v20, -1, -1);
    }

    else
    {
    }
  }

  return sub_182053DD0(v1) & 1;
}

uint64_t sub_182104788(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a1)
      {
        return 49;
      }

      else
      {
        return 48;
      }
    }

    else
    {
      return qword_182AF7938[a1];
    }
  }

  else
  {
    v3 = __CFADD__(a1, 8);
    result = a1 + 8;
    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1821047C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18211CE54(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1821047F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_182104788(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

unint64_t sub_182104854()
{
  result = qword_1EA83A570;
  if (!qword_1EA83A570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A570);
  }

  return result;
}

uint64_t sub_1821048D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v6 = sub_181F7DB4C();

  return MEMORY[0x1EEE6B588](a1, a2, v5, v6);
}

uint64_t sub_18210492C(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = (*(v1 + 1) << 8) | ((*(v1 + 5) | (v1[7] << 16)) << 40) | v3;
  if (v1[8])
  {
    if (v1[8] != 1)
    {
      switch(v4)
      {
        case 1uLL:
          if (result != 1)
          {
            goto LABEL_13;
          }

          return v2;
        case 2uLL:
          if (result != 2)
          {
            goto LABEL_13;
          }

          return v2;
        case 3uLL:
          if (result != 3)
          {
            goto LABEL_13;
          }

          return v2;
        case 4uLL:
          if (result != 4)
          {
            goto LABEL_13;
          }

          return v2;
        case 5uLL:
          if (result != 5)
          {
            goto LABEL_13;
          }

          return v2;
        case 6uLL:
          if (result != 6)
          {
            goto LABEL_13;
          }

          return v2;
        case 7uLL:
          if (result != 7)
          {
            goto LABEL_13;
          }

          return v2;
        case 8uLL:
          if (result != 16)
          {
            goto LABEL_13;
          }

          return v2;
        case 9uLL:
          if (result != 17)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xAuLL:
          if (result != 18)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xBuLL:
          if (result != 19)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xCuLL:
          if (result != 20)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xDuLL:
          if (result != 21)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xEuLL:
          if (result != 22)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xFuLL:
          if (result != 23)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x10uLL:
          if (result != 24)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x11uLL:
          if (result != 25)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x12uLL:
          if (result != 26)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x13uLL:
          if (result != 27)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x14uLL:
          if (result != 28)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x15uLL:
          if (result != 29)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x16uLL:
          if (result != 30)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x17uLL:
          if (result != 175)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x18uLL:
          if (result != 172)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x19uLL:
          v5 = 12237312;
          goto LABEL_67;
        case 0x1AuLL:
          v5 = 12237313;
          goto LABEL_67;
        case 0x1BuLL:
          v5 = 12237317;
          goto LABEL_67;
        case 0x1CuLL:
          v5 = 12237318;
LABEL_67:
          if (result != v5)
          {
            goto LABEL_13;
          }

          return v2;
        default:
          if (result)
          {
            goto LABEL_13;
          }

          return v2;
      }
    }

    if (v3)
    {
      if (result == 49)
      {
        return v2;
      }
    }

    else if (result == 48)
    {
      return v2;
    }

LABEL_13:
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return v2;
  }

  if (v4 < 0xFFFFFFFFFFFFFFF8)
  {
    if (v4 + 8 == result)
    {
      return v2;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_182104B78(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = (*(v1 + 1) << 8) | ((*(v1 + 5) | (v1[7] << 16)) << 40) | v3;
  if (v1[8])
  {
    if (v1[8] != 1)
    {
      switch(v4)
      {
        case 1uLL:
          if (result != 1)
          {
            goto LABEL_13;
          }

          return v2;
        case 2uLL:
          if (result != 2)
          {
            goto LABEL_13;
          }

          return v2;
        case 3uLL:
          if (result != 3)
          {
            goto LABEL_13;
          }

          return v2;
        case 4uLL:
          if (result != 4)
          {
            goto LABEL_13;
          }

          return v2;
        case 5uLL:
          if (result != 5)
          {
            goto LABEL_13;
          }

          return v2;
        case 6uLL:
          if (result != 6)
          {
            goto LABEL_13;
          }

          return v2;
        case 7uLL:
          if (result != 7)
          {
            goto LABEL_13;
          }

          return v2;
        case 8uLL:
          if (result != 16)
          {
            goto LABEL_13;
          }

          return v2;
        case 9uLL:
          if (result != 17)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xAuLL:
          if (result != 18)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xBuLL:
          if (result != 19)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xCuLL:
          if (result != 20)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xDuLL:
          if (result != 21)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xEuLL:
          if (result != 22)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xFuLL:
          if (result != 23)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x10uLL:
          if (result != 24)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x11uLL:
          if (result != 25)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x12uLL:
          if (result != 26)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x13uLL:
          if (result != 27)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x14uLL:
          if (result != 28)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x15uLL:
          if (result != 29)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x16uLL:
          if (result != 30)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x17uLL:
          if (result != 175)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x18uLL:
          if (result != 172)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x19uLL:
          v5 = 12237312;
          goto LABEL_67;
        case 0x1AuLL:
          v5 = 12237313;
          goto LABEL_67;
        case 0x1BuLL:
          v5 = 12237317;
          goto LABEL_67;
        case 0x1CuLL:
          v5 = 12237318;
LABEL_67:
          if (result != v5)
          {
            goto LABEL_13;
          }

          return v2;
        default:
          if (result)
          {
            goto LABEL_13;
          }

          return v2;
      }
    }

    if (v3)
    {
      if (result == 49)
      {
        return v2;
      }
    }

    else if (result == 48)
    {
      return v2;
    }

LABEL_13:
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return v2;
  }

  if (v4 < 0xFFFFFFFFFFFFFFF8)
  {
    if (v4 + 8 == result)
    {
      return v2;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_182104DC4(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = (*(v1 + 1) << 8) | ((*(v1 + 5) | (v1[7] << 16)) << 40) | v3;
  if (v1[8])
  {
    if (v1[8] != 1)
    {
      switch(v4)
      {
        case 1uLL:
          if (result != 1)
          {
            goto LABEL_13;
          }

          return v2;
        case 2uLL:
          if (result != 2)
          {
            goto LABEL_13;
          }

          return v2;
        case 3uLL:
          if (result != 3)
          {
            goto LABEL_13;
          }

          return v2;
        case 4uLL:
          if (result != 4)
          {
            goto LABEL_13;
          }

          return v2;
        case 5uLL:
          if (result != 5)
          {
            goto LABEL_13;
          }

          return v2;
        case 6uLL:
          if (result != 6)
          {
            goto LABEL_13;
          }

          return v2;
        case 7uLL:
          if (result != 7)
          {
            goto LABEL_13;
          }

          return v2;
        case 8uLL:
          if (result != 16)
          {
            goto LABEL_13;
          }

          return v2;
        case 9uLL:
          if (result != 17)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xAuLL:
          if (result != 18)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xBuLL:
          if (result != 19)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xCuLL:
          if (result != 20)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xDuLL:
          if (result != 21)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xEuLL:
          if (result != 22)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xFuLL:
          if (result != 23)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x10uLL:
          if (result != 24)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x11uLL:
          if (result != 25)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x12uLL:
          if (result != 26)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x13uLL:
          if (result != 27)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x14uLL:
          if (result != 28)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x15uLL:
          if (result != 29)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x16uLL:
          if (result != 30)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x17uLL:
          if (result != 175)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x18uLL:
          if (result != 172)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x19uLL:
          v5 = 12237312;
          goto LABEL_67;
        case 0x1AuLL:
          v5 = 12237313;
          goto LABEL_67;
        case 0x1BuLL:
          v5 = 12237317;
          goto LABEL_67;
        case 0x1CuLL:
          v5 = 12237318;
LABEL_67:
          if (result != v5)
          {
            goto LABEL_13;
          }

          return v2;
        default:
          if (result)
          {
            goto LABEL_13;
          }

          return v2;
      }
    }

    if (v3)
    {
      if (result == 49)
      {
        return v2;
      }
    }

    else if (result == 48)
    {
      return v2;
    }

LABEL_13:
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return v2;
  }

  if (v4 < 0xFFFFFFFFFFFFFFF8)
  {
    if (v4 + 8 == result)
    {
      return v2;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_182105010(uint64_t result, unint64_t a2, char a3)
{
  v3 = result;
  if (a3)
  {
    if (a3 != 1)
    {
      switch(a2)
      {
        case 1uLL:
          if (result != 1)
          {
            goto LABEL_13;
          }

          return v3;
        case 2uLL:
          if (result != 2)
          {
            goto LABEL_13;
          }

          return v3;
        case 3uLL:
          if (result != 3)
          {
            goto LABEL_13;
          }

          return v3;
        case 4uLL:
          if (result != 4)
          {
            goto LABEL_13;
          }

          return v3;
        case 5uLL:
          if (result != 5)
          {
            goto LABEL_13;
          }

          return v3;
        case 6uLL:
          if (result != 6)
          {
            goto LABEL_13;
          }

          return v3;
        case 7uLL:
          if (result != 7)
          {
            goto LABEL_13;
          }

          return v3;
        case 8uLL:
          if (result != 16)
          {
            goto LABEL_13;
          }

          return v3;
        case 9uLL:
          if (result != 17)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xAuLL:
          if (result != 18)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xBuLL:
          if (result != 19)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xCuLL:
          if (result != 20)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xDuLL:
          if (result != 21)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xEuLL:
          if (result != 22)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xFuLL:
          if (result != 23)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x10uLL:
          if (result != 24)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x11uLL:
          if (result != 25)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x12uLL:
          if (result != 26)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x13uLL:
          if (result != 27)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x14uLL:
          if (result != 28)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x15uLL:
          if (result != 29)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x16uLL:
          if (result != 30)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x17uLL:
          if (result != 175)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x18uLL:
          if (result != 172)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x19uLL:
          v4 = 12237312;
          goto LABEL_67;
        case 0x1AuLL:
          v4 = 12237313;
          goto LABEL_67;
        case 0x1BuLL:
          v4 = 12237317;
          goto LABEL_67;
        case 0x1CuLL:
          v4 = 12237318;
LABEL_67:
          if (result != v4)
          {
            goto LABEL_13;
          }

          return v3;
        default:
          if (result)
          {
            goto LABEL_13;
          }

          return v3;
      }
    }

    if (a2)
    {
      if (result == 49)
      {
        return v3;
      }
    }

    else if (result == 48)
    {
      return v3;
    }

LABEL_13:
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return v3;
  }

  if (a2 < 0xFFFFFFFFFFFFFFF8)
  {
    if (a2 + 8 == result)
    {
      return v3;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_182105240(uint64_t result, unint64_t a2, char a3)
{
  v3 = result;
  if (a3)
  {
    if (a3 != 1)
    {
      switch(a2)
      {
        case 1uLL:
          if (result != 1)
          {
            goto LABEL_13;
          }

          return v3;
        case 2uLL:
          if (result != 2)
          {
            goto LABEL_13;
          }

          return v3;
        case 3uLL:
          if (result != 3)
          {
            goto LABEL_13;
          }

          return v3;
        case 4uLL:
          if (result != 4)
          {
            goto LABEL_13;
          }

          return v3;
        case 5uLL:
          if (result != 5)
          {
            goto LABEL_13;
          }

          return v3;
        case 6uLL:
          if (result != 6)
          {
            goto LABEL_13;
          }

          return v3;
        case 7uLL:
          if (result != 7)
          {
            goto LABEL_13;
          }

          return v3;
        case 8uLL:
          if (result != 16)
          {
            goto LABEL_13;
          }

          return v3;
        case 9uLL:
          if (result != 17)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xAuLL:
          if (result != 18)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xBuLL:
          if (result != 19)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xCuLL:
          if (result != 20)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xDuLL:
          if (result != 21)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xEuLL:
          if (result != 22)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xFuLL:
          if (result != 23)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x10uLL:
          if (result != 24)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x11uLL:
          if (result != 25)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x12uLL:
          if (result != 26)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x13uLL:
          if (result != 27)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x14uLL:
          if (result != 28)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x15uLL:
          if (result != 29)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x16uLL:
          if (result != 30)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x17uLL:
          if (result != 175)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x18uLL:
          if (result != 172)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x19uLL:
          v4 = 12237312;
          goto LABEL_67;
        case 0x1AuLL:
          v4 = 12237313;
          goto LABEL_67;
        case 0x1BuLL:
          v4 = 12237317;
          goto LABEL_67;
        case 0x1CuLL:
          v4 = 12237318;
LABEL_67:
          if (result != v4)
          {
            goto LABEL_13;
          }

          return v3;
        default:
          if (result)
          {
            goto LABEL_13;
          }

          return v3;
      }
    }

    if (a2)
    {
      if (result == 49)
      {
        return v3;
      }
    }

    else if (result == 48)
    {
      return v3;
    }

LABEL_13:
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return v3;
  }

  if (a2 < 0xFFFFFFFFFFFFFFF8)
  {
    if (a2 + 8 == result)
    {
      return v3;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_182105470(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = (*(v1 + 1) << 8) | ((*(v1 + 5) | (v1[7] << 16)) << 40) | v3;
  if (v1[8])
  {
    if (v1[8] != 1)
    {
      switch(v4)
      {
        case 1uLL:
          if (result != 1)
          {
            goto LABEL_13;
          }

          return v2;
        case 2uLL:
          if (result != 2)
          {
            goto LABEL_13;
          }

          return v2;
        case 3uLL:
          if (result != 3)
          {
            goto LABEL_13;
          }

          return v2;
        case 4uLL:
          if (result != 4)
          {
            goto LABEL_13;
          }

          return v2;
        case 5uLL:
          if (result != 5)
          {
            goto LABEL_13;
          }

          return v2;
        case 6uLL:
          if (result != 6)
          {
            goto LABEL_13;
          }

          return v2;
        case 7uLL:
          if (result != 7)
          {
            goto LABEL_13;
          }

          return v2;
        case 8uLL:
          if (result != 16)
          {
            goto LABEL_13;
          }

          return v2;
        case 9uLL:
          if (result != 17)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xAuLL:
          if (result != 18)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xBuLL:
          if (result != 19)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xCuLL:
          if (result != 20)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xDuLL:
          if (result != 21)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xEuLL:
          if (result != 22)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xFuLL:
          if (result != 23)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x10uLL:
          if (result != 24)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x11uLL:
          if (result != 25)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x12uLL:
          if (result != 26)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x13uLL:
          if (result != 27)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x14uLL:
          if (result != 28)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x15uLL:
          if (result != 29)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x16uLL:
          if (result != 30)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x17uLL:
          if (result != 175)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x18uLL:
          if (result != 172)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x19uLL:
          v5 = 12237312;
          goto LABEL_67;
        case 0x1AuLL:
          v5 = 12237313;
          goto LABEL_67;
        case 0x1BuLL:
          v5 = 12237317;
          goto LABEL_67;
        case 0x1CuLL:
          v5 = 12237318;
LABEL_67:
          if (result != v5)
          {
            goto LABEL_13;
          }

          return v2;
        default:
          if (result)
          {
            goto LABEL_13;
          }

          return v2;
      }
    }

    if (v3)
    {
      if (result == 49)
      {
        return v2;
      }
    }

    else if (result == 48)
    {
      return v2;
    }

LABEL_13:
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return v2;
  }

  if (v4 < 0xFFFFFFFFFFFFFFF8)
  {
    if (v4 + 8 == result)
    {
      return v2;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1821056BC(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = (*(v1 + 1) << 8) | ((*(v1 + 5) | (v1[7] << 16)) << 40) | v3;
  if (v1[8])
  {
    if (v1[8] != 1)
    {
      switch(v4)
      {
        case 1uLL:
          if (result != 1)
          {
            goto LABEL_13;
          }

          return v2;
        case 2uLL:
          if (result != 2)
          {
            goto LABEL_13;
          }

          return v2;
        case 3uLL:
          if (result != 3)
          {
            goto LABEL_13;
          }

          return v2;
        case 4uLL:
          if (result != 4)
          {
            goto LABEL_13;
          }

          return v2;
        case 5uLL:
          if (result != 5)
          {
            goto LABEL_13;
          }

          return v2;
        case 6uLL:
          if (result != 6)
          {
            goto LABEL_13;
          }

          return v2;
        case 7uLL:
          if (result != 7)
          {
            goto LABEL_13;
          }

          return v2;
        case 8uLL:
          if (result != 16)
          {
            goto LABEL_13;
          }

          return v2;
        case 9uLL:
          if (result != 17)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xAuLL:
          if (result != 18)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xBuLL:
          if (result != 19)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xCuLL:
          if (result != 20)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xDuLL:
          if (result != 21)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xEuLL:
          if (result != 22)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xFuLL:
          if (result != 23)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x10uLL:
          if (result != 24)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x11uLL:
          if (result != 25)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x12uLL:
          if (result != 26)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x13uLL:
          if (result != 27)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x14uLL:
          if (result != 28)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x15uLL:
          if (result != 29)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x16uLL:
          if (result != 30)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x17uLL:
          if (result != 175)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x18uLL:
          if (result != 172)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x19uLL:
          v5 = 12237312;
          goto LABEL_67;
        case 0x1AuLL:
          v5 = 12237313;
          goto LABEL_67;
        case 0x1BuLL:
          v5 = 12237317;
          goto LABEL_67;
        case 0x1CuLL:
          v5 = 12237318;
LABEL_67:
          if (result != v5)
          {
            goto LABEL_13;
          }

          return v2;
        default:
          if (result)
          {
            goto LABEL_13;
          }

          return v2;
      }
    }

    if (v3)
    {
      if (result == 49)
      {
        return v2;
      }
    }

    else if (result == 48)
    {
      return v2;
    }

LABEL_13:
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return v2;
  }

  if (v4 < 0xFFFFFFFFFFFFFFF8)
  {
    if (v4 + 8 == result)
    {
      return v2;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_182105908(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = (*(v1 + 1) << 8) | ((*(v1 + 5) | (v1[7] << 16)) << 40) | v3;
  if (v1[8])
  {
    if (v1[8] != 1)
    {
      switch(v4)
      {
        case 1uLL:
          if (result != 1)
          {
            goto LABEL_13;
          }

          return v2;
        case 2uLL:
          if (result != 2)
          {
            goto LABEL_13;
          }

          return v2;
        case 3uLL:
          if (result != 3)
          {
            goto LABEL_13;
          }

          return v2;
        case 4uLL:
          if (result != 4)
          {
            goto LABEL_13;
          }

          return v2;
        case 5uLL:
          if (result != 5)
          {
            goto LABEL_13;
          }

          return v2;
        case 6uLL:
          if (result != 6)
          {
            goto LABEL_13;
          }

          return v2;
        case 7uLL:
          if (result != 7)
          {
            goto LABEL_13;
          }

          return v2;
        case 8uLL:
          if (result != 16)
          {
            goto LABEL_13;
          }

          return v2;
        case 9uLL:
          if (result != 17)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xAuLL:
          if (result != 18)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xBuLL:
          if (result != 19)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xCuLL:
          if (result != 20)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xDuLL:
          if (result != 21)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xEuLL:
          if (result != 22)
          {
            goto LABEL_13;
          }

          return v2;
        case 0xFuLL:
          if (result != 23)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x10uLL:
          if (result != 24)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x11uLL:
          if (result != 25)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x12uLL:
          if (result != 26)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x13uLL:
          if (result != 27)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x14uLL:
          if (result != 28)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x15uLL:
          if (result != 29)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x16uLL:
          if (result != 30)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x17uLL:
          if (result != 175)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x18uLL:
          if (result != 172)
          {
            goto LABEL_13;
          }

          return v2;
        case 0x19uLL:
          v5 = 12237312;
          goto LABEL_67;
        case 0x1AuLL:
          v5 = 12237313;
          goto LABEL_67;
        case 0x1BuLL:
          v5 = 12237317;
          goto LABEL_67;
        case 0x1CuLL:
          v5 = 12237318;
LABEL_67:
          if (result != v5)
          {
            goto LABEL_13;
          }

          return v2;
        default:
          if (result)
          {
            goto LABEL_13;
          }

          return v2;
      }
    }

    if (v3)
    {
      if (result == 49)
      {
        return v2;
      }
    }

    else if (result == 48)
    {
      return v2;
    }

LABEL_13:
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return v2;
  }

  if (v4 < 0xFFFFFFFFFFFFFFF8)
  {
    if (v4 + 8 == result)
    {
      return v2;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_182105B54()
{
  v1 = Frame.unclaimedBytes.getter();
  if ((v3 & 1) == 0)
  {
    if (v1)
    {
      v4 = 0;
      v5 = v2 - v1;
      while (v1 != v2)
      {
        if (*v1)
        {
          v5 = v4;
          break;
        }

        ++v1;
        if (__OFADD__(v4++, 1))
        {
          __break(1u);
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v5 = 0;
    }

    if (Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v5, 0, 1))
    {
      *(v0 + 16) = v5;
      *(v0 + 24) = 0;
    }

    else
    {
      sub_181F5F494();
      swift_willThrowTypedImpl();
    }
  }

  return 0;
}

unint64_t sub_182105C78@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  *a2 = sub_1820E2CC0();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a3 + 32) = sub_1820E2CC0();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  *(a3 + 40) = sub_1820E2CC0();
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  result = sub_1820E2CC0();
  *a4 = result;
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  if (v9 == 1)
  {
    v18 = v10;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 | v12 & (v11 == 1) | v14 & (v13 == 1);
  if (v19)
  {
    v16 = 1;
  }

  *a5 = v16;
  *(a5 + 8) = (v19 | v17) & 1;
  return result;
}

unint64_t sub_182105D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 48) = v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (*(v6 + 2))
    {
      goto LABEL_3;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    v6 = sub_1820835FC(v6);
    goto LABEL_5;
  }

LABEL_32:
  v6 = sub_1820835FC(v6);
  *(a2 + 48) = v6;
  if (!*(v6 + 2))
  {
    goto LABEL_33;
  }

LABEL_3:
  result = sub_1820E2CC0();
  *(v6 + 5) = result;
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v6 = *(a2 + 48);
  v35 = *(v6 + 2);
  if (v35 < 2)
  {
    v26 = 0;
    v27 = 1;
    goto LABEL_26;
  }

  v11 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 48) = v6;
  v34 = a3;
  v33 = v10;
  v32 = v9;
  if ((v11 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_5:
  v12 = 0;
  *(a2 + 48) = v6;
  v6 = MEMORY[0x1E69E7CC0];
  v13 = 1;
  do
  {
    a3 = *(a2 + 48);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 48) = a3;
    if ((v14 & 1) == 0)
    {
      a3 = sub_1820835FC(a3);
      *(a2 + 48) = a3;
    }

    if (v13 >= *(a3 + 2))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    *&a3[v12 + 48] = sub_1820E2CC0();
    v15 = *(a2 + 48);
    if (v13 >= *(v15 + 16))
    {
      goto LABEL_31;
    }

    v16 = *(a1 + 24);
    v17 = *(a1 + 32);
    *(v15 + v12 + 56) = sub_1820E2CC0();
    v18 = *(a1 + 32);
    v19 = v16 == 1;
    v20 = v17 & v19;
    if ((v17 & v19) != 0)
    {
      v21 = 1;
    }

    else
    {
      v21 = *(a1 + 24);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_181F5A68C(0, *(v6 + 2) + 1, 1, v6);
    }

    v23 = *(v6 + 2);
    v22 = *(v6 + 3);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      v6 = sub_181F5A68C((v22 > 1), v23 + 1, 1, v6);
    }

    ++v13;
    *(v6 + 2) = v24;
    v25 = &v6[16 * v23 + 32];
    *v25 = v21;
    *(v25 + 8) = (v20 | v18) & 1;
    v12 += 16;
  }

  while (v35 != v13);
  v28 = v23 + 1;
  v29 = v6 + 40;
  v10 = v33;
  v9 = v32;
  do
  {
    if (*v29 == 1)
    {
      v26 = *(v29 - 1);
      if (v26)
      {
        v27 = 1;
        goto LABEL_25;
      }
    }

    v29 += 16;
    --v28;
  }

  while (v28);
  v30 = &v6[16 * v24 + 32];
  v26 = *(v30 - 16);
  v27 = *(v30 - 8);
LABEL_25:

  a3 = v34;
LABEL_26:
  if ((v10 & (v9 == 1)) != 0)
  {
    v31 = 1;
  }

  else
  {
    v31 = v26;
  }

  *a3 = v31;
  a3[8] = v10 & (v9 == 1) | v27 & 1;
  return result;
}

uint64_t sub_182105FC8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (v5)
  {
    if ((result & 1) == 0)
    {
      result = sub_181F5AC5C(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    v11 = v10 + 1;
    if (v10 >= v9 >> 1)
    {
      result = sub_181F5AC5C((v9 > 1), v10 + 1, 1, v6);
      v6 = result;
    }

    v7 = 0;
  }

  else
  {
    if ((result & 1) == 0)
    {
      result = sub_181F5AC5C(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v10 = *(v6 + 16);
    v12 = *(v6 + 24);
    v11 = v10 + 1;
    if (v10 >= v12 >> 1)
    {
      result = sub_181F5AC5C((v12 > 1), v10 + 1, 1, v6);
      v6 = result;
    }
  }

  *(v6 + 16) = v11;
  v13 = v6 + 16 * v10;
  *(v13 + 32) = v7;
  *(v13 + 40) = a2;
  *(v2 + 48) = v6;
  *(v2 + 56) = a1;
  *(v2 + 64) = a1 == 0;
  return result;
}

uint64_t sub_1821060E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_182104788(*a2, *(a2 + 8));
  InPlaceSerializer.vle(_:)(v6, &v61);
  InPlaceSerializer.vle(_:)(*(a2 + 32), &v59);
  InPlaceSerializer.vle(_:)(*(a2 + 40), &v57);
  v7 = *(a2 + 48);
  v8 = v7[2];
  sub_1821065FC(v8 - 1, &v55);
  if (!v8)
  {
    goto LABEL_121;
  }

  v52 = a3;
  InPlaceSerializer.vle(_:)(v7[5], &v53);
  v9 = v8 - 1;
  if (v8 == 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = *(MEMORY[0x1E69E7CC0] + 16);
LABEL_4:
    v12 = 0;
    v13 = 1;
    v14 = 1;
LABEL_5:
    while (2)
    {
      v15 = &v10[16 * v12 + 40];
      v16 = v12;
      do
      {
        if (v11 == v16)
        {
          v17 = v13;
          goto LABEL_84;
        }

        if (v16 >= v11)
        {
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        v12 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_118;
        }

        v17 = *(v15 - 1);
        if (*v15 != 1)
        {
          v13 = *(v15 - 1);
          v14 = *v15;
          goto LABEL_5;
        }

        v15 += 16;
        ++v16;
      }

      while (v17 == 1);
      v13 = v17;
      v14 = 1;
      if (!v17)
      {
        continue;
      }

      break;
    }

    v14 = 1;
LABEL_84:

    v42 = v61;
    v43 = v62;
    if (v62 == 1 && v61 > 1)
    {
      goto LABEL_109;
    }

    if ((v60 & (v59 == 1)) == 0)
    {
      v42 = v59;
      v43 = v60;
    }

    if (v43 && v42 > 1)
    {
      goto LABEL_109;
    }

    if ((v58 & (v57 == 1)) == 0)
    {
      v42 = v57;
      v43 = v58;
    }

    if (v43 && v42 > 1)
    {
      goto LABEL_109;
    }

    if ((v56 & (v55 == 1)) == 0)
    {
      v42 = v55;
      v43 = v56;
    }

    if (v43 && v42 > 1 || ((v47 = v53, (v54 & (v53 == 1)) == 0) ? (v48 = v54) : (v47 = v42, v48 = v43), v48 && v47 > 1))
    {
LABEL_109:
      LOBYTE(v48) = 1;
      v49 = 2;
    }

    else
    {
      v50 = v17 == 1;
      v51 = (v14 & v50) == 0;
      if ((v14 & v50) != 0)
      {
        v49 = v47;
      }

      else
      {
        v49 = v17;
      }

      if (v51)
      {
        LOBYTE(v48) = v14;
      }
    }

    *v52 = v49;
    *(v52 + 8) = v48 & 1;
    return result;
  }

  v18 = v7 + 7;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v19 = *(v18 - 1);
    if (v19 < 0x40)
    {
      v20 = 1;
    }

    else if (v19 < 0x4000)
    {
      v20 = 2;
    }

    else if (v19 >> 30)
    {
      if (v19 >> 62)
      {
        goto LABEL_122;
      }

      v20 = 8;
    }

    else
    {
      v20 = 4;
    }

    v21 = *a1;
    v22 = a1[1];
    v23 = a1[2];
    if (*(a1 + 32) == 1 && a1[3] > 1)
    {
      goto LABEL_30;
    }

    v24 = v22 - v21;
    if (!v21)
    {
      v24 = 0;
    }

    v25 = __OFSUB__(v24, v23);
    v26 = v24 - v23;
    if (v25)
    {
      break;
    }

    if (v26 >= v20)
    {
      if (v19 < 0x40)
      {
        if (v21)
        {
          *(v21 + v23) = v19;
        }
      }

      else if (v19 >> 14)
      {
        if (v19 >> 30)
        {
          if (v21)
          {
            *(v21 + v23) = bswap64(v19 | 0xC000000000000000);
          }
        }

        else if (v21)
        {
          *(v21 + v23) = bswap32(v19 | 0x80000000);
        }
      }

      else if (v21)
      {
        *(v21 + v23) = bswap32(v19 | 0x4000) >> 16;
      }

      v23 += v20;
      a1[2] = v23;
      v28 = a1[3];
      v27 = *(a1 + 32);
      goto LABEL_43;
    }

LABEL_30:
    a1[3] = 2;
    v27 = 1;
    *(a1 + 32) = 1;
    v28 = 2;
LABEL_43:
    v29 = *v18;
    if (*v18 <= 0x3F)
    {
      v30 = 1;
    }

    else if (v29 < 0x4000)
    {
      v30 = 2;
    }

    else if (v29 >> 30)
    {
      if (v29 >> 62)
      {
        goto LABEL_122;
      }

      v30 = 8;
    }

    else
    {
      v30 = 4;
    }

    if (v28 > 1)
    {
      v31 = v27;
    }

    else
    {
      v31 = 0;
    }

    if (v31)
    {
      goto LABEL_59;
    }

    v32 = v22 - v21;
    if (!v21)
    {
      v32 = 0;
    }

    v25 = __OFSUB__(v32, v23);
    v33 = v32 - v23;
    if (v25)
    {
      goto LABEL_120;
    }

    if (v33 < v30)
    {
LABEL_59:
      a1[3] = 2;
      v34 = 1;
      *(a1 + 32) = 1;
      v35 = 2;
    }

    else
    {
      if (v29 < 0x40)
      {
        if (v21)
        {
          *(v21 + v23) = v29;
        }
      }

      else if (v29 >> 14)
      {
        if (v29 >> 30)
        {
          if (v21)
          {
            *(v21 + v23) = bswap64(v29 | 0xC000000000000000);
          }
        }

        else if (v21)
        {
          *(v21 + v23) = bswap32(v29 | 0x80000000);
        }
      }

      else if (v21)
      {
        *(v21 + v23) = bswap32(v29 | 0x4000) >> 16;
      }

      a1[2] = v30 + v23;
      v35 = a1[3];
      v34 = *(a1 + 32);
    }

    if ((v34 & (v35 == 1)) != 0)
    {
      v35 = v28;
      v36 = v27;
    }

    else
    {
      v36 = v34;
    }

    if (v31)
    {
      v37 = 2;
    }

    else
    {
      v37 = v35;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_181F5AC70(0, *(v10 + 2) + 1, 1, v10);
    }

    v39 = *(v10 + 2);
    v38 = *(v10 + 3);
    v11 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v10 = sub_181F5AC70((v38 > 1), v39 + 1, 1, v10);
    }

    *(v10 + 2) = v11;
    v40 = &v10[16 * v39];
    *(v40 + 4) = v37;
    v40[40] = (v31 | v36) & 1;
    v18 += 2;
    if (!--v9)
    {
      goto LABEL_4;
    }
  }

LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_1821065FC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 64)
  {
    v4 = 1;
  }

  else if (a1 < 0x4000)
  {
    v4 = 2;
  }

  else if (a1 >> 30)
  {
    if (a1 >> 62)
    {
      goto LABEL_21;
    }

    v4 = 8;
  }

  else
  {
    v4 = 4;
  }

  result = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  if (*(v2 + 32) == 1 && *(v2 + 24) > 1uLL)
  {
    goto LABEL_15;
  }

  v8 = v6 - result;
  if (!result)
  {
    v8 = 0;
  }

  v9 = __OFSUB__(v8, v7);
  v10 = v8 - v7;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    if (v10 < v4)
    {
LABEL_15:
      v11 = 2;
      *(v2 + 24) = 2;
      v12 = 1;
      *(v2 + 32) = 1;
LABEL_18:
      *a2 = v11;
      *(a2 + 8) = v12;
      return result;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      v13 = a2;
      sub_18207A3BC(result, v6, v7, a1);
      result = sub_1822A6F0C(v4);
      a2 = v13;
      v11 = *(v2 + 24);
      v12 = *(v2 + 32);
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_182106734@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = 2;
  if (result >> 14)
  {
    v3 = 4;
  }

  if ((result & 0xFFC0) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  if (*(v2 + 32) == 1 && *(v2 + 24) > 1uLL)
  {
    goto LABEL_12;
  }

  v8 = v5 - v6;
  if (!v6)
  {
    v8 = 0;
  }

  v9 = __OFSUB__(v8, v7);
  v10 = v8 - v7;
  if (!v9)
  {
    if (v10 >= v4)
    {
      v13 = a2;
      sub_18207A3BC(*v2, v5, v7, result);
      result = sub_1822A6F0C(v4);
      a2 = v13;
      v11 = *(v2 + 24);
      v12 = *(v2 + 32);
      goto LABEL_14;
    }

LABEL_12:
    v11 = 2;
    *(v2 + 24) = 2;
    v12 = 1;
    *(v2 + 32) = 1;
LABEL_14:
    *a2 = v11;
    *(a2 + 8) = v12;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1821067F4(uint64_t a1, char *a2)
{
  v2 = a2;
  v3 = sub_182104788(*a2, a2[8]);
  if (v3 < 0x40)
  {
    v9 = *(v2 + 4);
    if (v9 > 0x3F)
    {
      if (v9 >> 14)
      {
        if (v9 >> 30)
        {
          if (v9 >> 62)
          {
            goto LABEL_246;
          }

          v10 = *(v2 + 5);
          if (v10 >= 0x40)
          {
            if (v10 < 0x4000)
            {
              v8 = 1;
              goto LABEL_204;
            }

            if (v10 >> 30)
            {
              if (v10 >> 62)
              {
                goto LABEL_246;
              }

              v8 = 1;
LABEL_46:
              v6 = 8;
              v7 = 8;
              goto LABEL_111;
            }

            v8 = 1;
LABEL_232:
            v7 = 8;
            v6 = 4;
            goto LABEL_111;
          }

          v7 = 8;
        }

        else
        {
          v18 = *(v2 + 5);
          if (v18 >= 0x40)
          {
            if (v18 < 0x4000)
            {
              v8 = 1;
              goto LABEL_192;
            }

            if (!(v18 >> 30))
            {
              goto LABEL_212;
            }

            if (v18 >> 62)
            {
              goto LABEL_246;
            }

            v8 = 1;
            goto LABEL_88;
          }

          v7 = 4;
        }
      }

      else
      {
        v16 = *(v2 + 5);
        if (v16 >= 0x40)
        {
          if (v16 < 0x4000)
          {
            v8 = 1;
            goto LABEL_96;
          }

          if (!(v16 >> 30))
          {
            v8 = 1;
            goto LABEL_189;
          }

          if (v16 >> 62)
          {
            goto LABEL_246;
          }

          v8 = 1;
LABEL_52:
          v7 = 2;
          v6 = 8;
          goto LABEL_111;
        }

        v7 = 2;
      }

      v6 = 1;
      v8 = 1;
      goto LABEL_111;
    }

    v13 = *(v2 + 5);
    if (v13 < 0x40)
    {
      v6 = 1;
      v7 = 1;
      v8 = 1;
      goto LABEL_111;
    }

    if (v13 < 0x4000)
    {
      v7 = 1;
      v6 = 2;
      v8 = 1;
      goto LABEL_111;
    }

    if (!(v13 >> 30))
    {
      v7 = 1;
      v6 = 4;
      v8 = 1;
      goto LABEL_111;
    }

    if (!(v13 >> 62))
    {
      v7 = 1;
      v6 = 8;
      v8 = 1;
      goto LABEL_111;
    }

    while (1)
    {
LABEL_246:
      sub_182AD3EA8();
      __break(1u);
    }
  }

  if (v3 < 0x4000)
  {
    v11 = *(v2 + 4);
    if (v11 < 0x40)
    {
      v17 = *(v2 + 5);
      if (v17 < 0x40)
      {
        v8 = 2;
        goto LABEL_110;
      }

      if (v17 >= 0x4000)
      {
        if (!(v17 >> 30))
        {
          v8 = 2;
          goto LABEL_223;
        }

        if (v17 >> 62)
        {
          goto LABEL_246;
        }

        v8 = 2;
        goto LABEL_75;
      }

      v7 = 1;
      goto LABEL_98;
    }

    if (v11 >= 0x4000)
    {
      if (v11 >> 30)
      {
        if (v11 >> 62)
        {
          goto LABEL_246;
        }

        v12 = *(v2 + 5);
        if (v12 < 0x40)
        {
          v8 = 2;
          goto LABEL_221;
        }

        if (v12 >= 0x4000)
        {
          if (v12 >> 30)
          {
            if (v12 >> 62)
            {
              goto LABEL_246;
            }

            v8 = 2;
            goto LABEL_46;
          }

          v8 = 2;
          goto LABEL_232;
        }

        v7 = 8;
LABEL_98:
        v6 = 2;
        v8 = 2;
        goto LABEL_111;
      }

      v22 = *(v2 + 5);
      if (v22 < 0x40)
      {
        v8 = 2;
        goto LABEL_226;
      }

      if (v22 < 0x4000)
      {
        v7 = 4;
        goto LABEL_98;
      }

      if (!(v22 >> 30))
      {
        v8 = 2;
        goto LABEL_242;
      }

      if (v22 >> 62)
      {
        goto LABEL_246;
      }

      v8 = 2;
LABEL_88:
      v7 = 4;
      v6 = 8;
      goto LABEL_111;
    }

    v19 = *(v2 + 5);
    if (v19 < 0x40)
    {
      v7 = 2;
      v6 = 1;
      v8 = 2;
      goto LABEL_111;
    }

    if (v19 < 0x4000)
    {
      v6 = 2;
      v7 = 2;
      v8 = 2;
      goto LABEL_111;
    }

    if (!(v19 >> 30))
    {
      v7 = 2;
      v6 = 4;
      v8 = 2;
      goto LABEL_111;
    }

    if (!(v19 >> 62))
    {
      v7 = 2;
      v6 = 8;
      v8 = 2;
      goto LABEL_111;
    }

    goto LABEL_246;
  }

  if (!(v3 >> 30))
  {
    v14 = *(v2 + 4);
    if (v14 >= 0x40)
    {
      if (v14 >= 0x4000)
      {
        if (!(v14 >> 30))
        {
          v51 = *(v2 + 5);
          if (v51 < 0x40)
          {
            v7 = 4;
            v6 = 1;
          }

          else if (v51 < 0x4000)
          {
            v7 = 4;
            v6 = 2;
          }

          else if (v51 >> 30)
          {
            if (v51 >> 62)
            {
              goto LABEL_246;
            }

            v7 = 4;
            v6 = 8;
          }

          else
          {
            v6 = 4;
            v7 = 4;
          }

LABEL_240:
          v8 = 4;
          goto LABEL_111;
        }

        if (v14 >> 62)
        {
          goto LABEL_246;
        }

        v15 = *(v2 + 5);
        if (v15 >= 0x40)
        {
          if (v15 >= 0x4000)
          {
            if (v15 >> 30)
            {
              if (v15 >> 62)
              {
                goto LABEL_246;
              }

              v8 = 4;
              goto LABEL_46;
            }

            v7 = 8;
            goto LABEL_239;
          }

          v8 = 4;
LABEL_204:
          v7 = 8;
          v6 = 2;
          goto LABEL_111;
        }

        v8 = 4;
LABEL_221:
        v7 = 8;
        v6 = 1;
        goto LABEL_111;
      }

      v23 = *(v2 + 5);
      if (v23 < 0x40)
      {
        v8 = 4;
        goto LABEL_209;
      }

      if (v23 < 0x4000)
      {
        v8 = 4;
        goto LABEL_96;
      }

      if (v23 >> 30)
      {
        if (v23 >> 62)
        {
          goto LABEL_246;
        }

        v8 = 4;
        goto LABEL_52;
      }

      v7 = 2;
LABEL_239:
      v6 = 4;
      goto LABEL_240;
    }

    v20 = *(v2 + 5);
    if (v20 < 0x40)
    {
      v8 = 4;
      goto LABEL_110;
    }

    if (v20 < 0x4000)
    {
      v8 = 4;
      goto LABEL_207;
    }

    if (!(v20 >> 30))
    {
      v7 = 1;
      goto LABEL_239;
    }

    if (v20 >> 62)
    {
      goto LABEL_246;
    }

    v8 = 4;
LABEL_75:
    v7 = 1;
    v6 = 8;
    goto LABEL_111;
  }

  if (v3 >> 62)
  {
    goto LABEL_246;
  }

  v4 = *(v2 + 4);
  if (v4 < 0x40)
  {
    v21 = *(v2 + 5);
    if (v21 >= 0x40)
    {
      if (v21 >= 0x4000)
      {
        if (v21 >> 30)
        {
          if (v21 >> 62)
          {
            goto LABEL_246;
          }

          v7 = 1;
          goto LABEL_202;
        }

        v8 = 8;
LABEL_223:
        v7 = 1;
        v6 = 4;
        goto LABEL_111;
      }

      v8 = 8;
LABEL_207:
      v7 = 1;
      v6 = 2;
      goto LABEL_111;
    }

    v8 = 8;
LABEL_110:
    v6 = 1;
    v7 = 1;
    goto LABEL_111;
  }

  if (v4 < 0x4000)
  {
    v24 = *(v2 + 5);
    if (v24 >= 0x40)
    {
      if (v24 >= 0x4000)
      {
        if (v24 >> 30)
        {
          if (v24 >> 62)
          {
            goto LABEL_246;
          }

          v7 = 2;
          goto LABEL_202;
        }

        v8 = 8;
LABEL_189:
        v7 = 2;
        v6 = 4;
        goto LABEL_111;
      }

      v8 = 8;
LABEL_96:
      v6 = 2;
      v7 = 2;
      goto LABEL_111;
    }

    v8 = 8;
LABEL_209:
    v7 = 2;
    v6 = 1;
    goto LABEL_111;
  }

  if (!(v4 >> 30))
  {
    v52 = *(v2 + 5);
    if (v52 >= 0x40)
    {
      if (v52 >= 0x4000)
      {
        if (!(v52 >> 30))
        {
          v8 = 8;
          goto LABEL_242;
        }

        if (v52 >> 62)
        {
          goto LABEL_246;
        }

        v7 = 4;
LABEL_202:
        v6 = 8;
        v8 = 8;
        goto LABEL_111;
      }

      v8 = 8;
LABEL_192:
      v7 = 4;
      v6 = 2;
      goto LABEL_111;
    }

    v8 = 8;
LABEL_226:
    v7 = 4;
    v6 = 1;
    goto LABEL_111;
  }

  if (v4 >> 62)
  {
    goto LABEL_246;
  }

  v5 = *(v2 + 5);
  if (v5 < 0x40)
  {
    v7 = 8;
    v6 = 1;
    v8 = 8;
    goto LABEL_111;
  }

  if (v5 < 0x4000)
  {
    v7 = 8;
    v6 = 2;
    v8 = 8;
    goto LABEL_111;
  }

  if (v5 >> 30)
  {
    if (!(v5 >> 62))
    {
      v6 = 8;
      v7 = 8;
      v8 = 8;
      goto LABEL_111;
    }

    goto LABEL_246;
  }

  v7 = 8;
  v6 = 4;
  v8 = 8;
  while (1)
  {
LABEL_111:
    v25 = *(v2 + 6);
    v26 = v25[2];
    if (v26 < 0x41)
    {
      if (!v26)
      {
        __break(1u);
        goto LABEL_245;
      }

      v27 = 1;
    }

    else if (v26 <= 0x4000)
    {
      v27 = 2;
    }

    else if (v26 < 0x40000001)
    {
      v27 = 4;
    }

    else
    {
      if ((v26 - 0x4000000000000001) >> 62 != 3)
      {
        goto LABEL_246;
      }

      v27 = 8;
    }

    v28 = v25[5];
    if (v28 < 0x40)
    {
      v29 = 1;
      v30 = v26 - 1;
      if (v26 == 1)
      {
        goto LABEL_127;
      }

      goto LABEL_135;
    }

    if (v28 < 0x4000)
    {
      v29 = 2;
      v30 = v26 - 1;
      if (v26 == 1)
      {
        goto LABEL_127;
      }

      goto LABEL_135;
    }

    if (v28 >> 30)
    {
      break;
    }

    v29 = 4;
    v30 = v26 - 1;
    if (v26 == 1)
    {
      goto LABEL_127;
    }

LABEL_135:
    v53 = v29;
    v54 = v27;
    v32 = v6;
    v33 = v8;
    v34 = v7;
    v41 = v25 + 7;
    v2 = MEMORY[0x1E69E7CC0];
    while (v30)
    {
      v42 = *(v41 - 1);
      if (v42 < 0x40)
      {
        v46 = *v41;
        if (*v41 < 0x40)
        {
          v44 = 1;
        }

        else if (v46 < 0x4000)
        {
          v44 = 2;
        }

        else if (v46 >> 30)
        {
          if (v46 >> 62)
          {
            goto LABEL_246;
          }

          v44 = 8;
        }

        else
        {
          v44 = 4;
        }

        v45 = 1;
      }

      else if (v42 < 0x4000)
      {
        v47 = *v41;
        if (*v41 < 0x40)
        {
          v44 = 1;
          v45 = 2;
        }

        else if (v47 < 0x4000)
        {
          v44 = 2;
          v45 = 2;
        }

        else if (v47 >> 30)
        {
          if (v47 >> 62)
          {
            goto LABEL_246;
          }

          v44 = 8;
          v45 = 2;
        }

        else
        {
          v44 = 4;
          v45 = 2;
        }
      }

      else if (v42 >> 30)
      {
        if (v42 >> 62)
        {
          goto LABEL_246;
        }

        v43 = *v41;
        if (*v41 < 0x40)
        {
          v44 = 1;
          v45 = 8;
        }

        else if (v43 < 0x4000)
        {
          v44 = 2;
          v45 = 8;
        }

        else if (v43 >> 30)
        {
          if (v43 >> 62)
          {
            goto LABEL_246;
          }

          v44 = 8;
          v45 = 8;
        }

        else
        {
          v44 = 4;
          v45 = 8;
        }
      }

      else
      {
        v48 = *v41;
        if (*v41 < 0x40)
        {
          v44 = 1;
          v45 = 4;
        }

        else if (v48 < 0x4000)
        {
          v44 = 2;
          v45 = 4;
        }

        else if (v48 >> 30)
        {
          if (v48 >> 62)
          {
            goto LABEL_246;
          }

          v44 = 8;
          v45 = 4;
        }

        else
        {
          v44 = 4;
          v45 = 4;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_181F5A904(0, *(v2 + 2) + 1, 1, v2);
      }

      v50 = *(v2 + 2);
      v49 = *(v2 + 3);
      v31 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        v2 = sub_181F5A904((v49 > 1), v50 + 1, 1, v2);
      }

      *(v2 + 2) = v31;
      *&v2[8 * v50 + 32] = v45 + v44;
      v41 += 2;
      if (!--v30)
      {
        goto LABEL_129;
      }
    }

LABEL_211:
    __break(1u);
LABEL_212:
    v8 = 1;
LABEL_242:
    v6 = 4;
    v7 = 4;
  }

  if (v28 >> 62)
  {
    goto LABEL_246;
  }

  v29 = 8;
  v30 = v26 - 1;
  if (v26 != 1)
  {
    goto LABEL_135;
  }

LABEL_127:
  v2 = MEMORY[0x1E69E7CC0];
  v31 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v31)
  {
    v53 = v29;
    v54 = v27;
    v32 = v6;
    v33 = v8;
    v34 = v7;
LABEL_129:
    v35 = 0;
    v36 = 32;
    v7 = v34;
    v8 = v33;
    v6 = v32;
    v29 = v53;
    v27 = v54;
    while (1)
    {
      v37 = *&v2[v36];
      v38 = __OFADD__(v35, v37);
      v35 += v37;
      if (v38)
      {
        break;
      }

      v36 += 8;
      if (!--v31)
      {
        goto LABEL_132;
      }
    }

    __break(1u);
    goto LABEL_211;
  }

  v35 = 0;
LABEL_132:

  v39 = v7 + v6 + v8 + v27 + v29;
  result = v39 + v35;
  if (__OFADD__(v39, v35))
  {
LABEL_245:
    __break(1u);
    goto LABEL_246;
  }

  return result;
}

unint64_t sub_1821071E8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  *a2 = sub_1820E2CC0();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a3 + 16) = sub_1820E2CC0();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  *(a3 + 24) = sub_1820E2CC0();
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  result = sub_1820E2CC0();
  *a4 = result;
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  if (v9 == 1)
  {
    v18 = v10;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 | v12 & (v11 == 1) | v14 & (v13 == 1);
  if (v19)
  {
    v16 = 1;
  }

  *a5 = v16;
  *(a5 + 8) = (v19 | v17) & 1;
  return result;
}

unint64_t sub_1821072B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X8>)
{
  v6 = a2[4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[4] = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_42;
  }

  if (!*(v6 + 16))
  {
    goto LABEL_43;
  }

  while (1)
  {
    *(v6 + 40) = sub_1820E2CC0();
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v6 = a2[4];
    v45 = *(v6 + 16);
    if (v45 < 2)
    {
      break;
    }

    v10 = swift_isUniquelyReferenced_nonNull_native();
    a2[4] = v6;
    v43 = v8;
    v44 = a3;
    v42 = v9;
    if ((v10 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_5:
    v11 = 0;
    a2[4] = v6;
    v6 = MEMORY[0x1E69E7CC0];
    v12 = 1;
    while (1)
    {
      v13 = a2[4];
      v14 = swift_isUniquelyReferenced_nonNull_native();
      a2[4] = v13;
      if ((v14 & 1) == 0)
      {
        v13 = sub_1820835FC(v13);
        a2[4] = v13;
      }

      if (v12 >= *(v13 + 2))
      {
        break;
      }

      *&v13[v11 + 48] = sub_1820E2CC0();
      v15 = a2[4];
      if (v12 >= *(v15 + 16))
      {
        goto LABEL_41;
      }

      v16 = *(a1 + 24);
      v17 = *(a1 + 32);
      *(v15 + v11 + 56) = sub_1820E2CC0();
      v18 = *(a1 + 32);
      v19 = v16 == 1;
      v20 = v17 & v19;
      if ((v17 & v19) != 0)
      {
        v21 = 1;
      }

      else
      {
        v21 = *(a1 + 24);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_181F5A68C(0, *(v6 + 16) + 1, 1, v6);
      }

      a3 = *(v6 + 16);
      v22 = *(v6 + 24);
      v23 = a3 + 1;
      if (a3 >= v22 >> 1)
      {
        v6 = sub_181F5A68C((v22 > 1), a3 + 1, 1, v6);
      }

      ++v12;
      *(v6 + 16) = v23;
      v24 = v6 + 32 + 16 * a3;
      *v24 = v21;
      *(v24 + 8) = (v20 | v18) & 1;
      v11 += 16;
      if (v45 == v12)
      {
        v25 = a3 + 1;
        v26 = (v6 + 40);
        v8 = v43;
        a3 = v44;
        v9 = v42;
        while (1)
        {
          if (*v26 == 1)
          {
            v27 = *(v26 - 1);
            if (v27)
            {
              break;
            }
          }

          v26 += 16;
          if (!--v25)
          {
            v29 = v6 + 32 + 16 * v23;
            v30 = *(v29 - 16);
            v31 = *(v29 - 8);

            if (v30 == 1)
            {
              v6 = v31;
            }

            else
            {
              v6 = 0;
            }

            v28 = sub_1820E2CC0();
            if ((v28 & 0x8000000000000000) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_29;
          }
        }

        if (v27 != 1)
        {
          goto LABEL_30;
        }

        v6 = 1;
        v28 = sub_1820E2CC0();
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v6 = sub_1820835FC(v6);
    a2[4] = v6;
    if (!*(v6 + 16))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }

  while (1)
  {
    v6 = 0;
    v28 = sub_1820E2CC0();
    if ((v28 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_29:
    __break(1u);
LABEL_30:
  }

LABEL_32:
  a2[5] = v28;
  v32 = *(a1 + 24);
  v33 = *(a1 + 32);
  v34 = sub_1820E2CC0();
  if ((v34 & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  a2[6] = v34;
  v35 = *(a1 + 24);
  v36 = *(a1 + 32);
  result = sub_1820E2CC0();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    v6 = sub_1820835FC(v6);
    goto LABEL_5;
  }

  a2[7] = result;
  v38 = *(a1 + 24);
  v39 = *(a1 + 32);
  if (v8 == 1)
  {
    v40 = v9;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40 | v33 & (v32 == 1) | v6 | v36 & (v35 == 1);
  if (v41)
  {
    v38 = 1;
  }

  *a3 = v38;
  *(a3 + 8) = (v41 | v39) & 1;
  return result;
}

uint64_t sub_1821075C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v6 = sub_182104788(*a2, *(a2 + 8));
  InPlaceSerializer.vle(_:)(v6, &v61);
  InPlaceSerializer.vle(_:)(*(a2 + 16), &v59);
  InPlaceSerializer.vle(_:)(*(a2 + 24), &v57);
  v7 = *(a2 + 32);
  v8 = v7[2];
  sub_1821065FC(v8 - 1, &v55);
  if (!v8)
  {
    __break(1u);
LABEL_130:
    result = sub_182AD3EA8();
    __break(1u);
    return result;
  }

  v46 = a3;
  result = InPlaceSerializer.vle(_:)(v7[5], &v53);
  v11 = v8 - 1;
  v45 = a2;
  if (v8 == 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
LABEL_4:
    v14 = 0;
    v15 = v12 + 40;
    v16 = 1;
    v17 = 1;
LABEL_5:
    while (2)
    {
      v18 = (v15 + 16 * v14);
      v19 = v14;
      do
      {
        if (v13 == v19)
        {
          v20 = v16;
          goto LABEL_84;
        }

        if (v19 >= v13)
        {
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        v14 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_123;
        }

        v20 = *(v18 - 1);
        v10 = *v18;
        if (v10 != 1)
        {
          v16 = *(v18 - 1);
          v17 = *v18;
          goto LABEL_5;
        }

        v18 += 16;
        ++v19;
      }

      while (v20 == 1);
      v16 = v20;
      v17 = 1;
      if (!v20)
      {
        continue;
      }

      break;
    }

    v17 = 1;
LABEL_84:

    v39 = v45[6];
    v40 = v45[7];
    sub_1821065FC(v45[5], &v51);
    sub_1821065FC(v39, &v49);
    result = sub_1821065FC(v40, &v47);
    v15 = v61;
    v41 = v62;
    if (v62 == 1 && v61 > 1)
    {
      goto LABEL_110;
    }

    if ((v60 & (v59 == 1)) == 0)
    {
      v15 = v59;
      v41 = v60;
    }

    if (v41 && v15 > 1)
    {
      goto LABEL_110;
    }

    if ((v58 & (v57 == 1)) == 0)
    {
      v15 = v57;
      v41 = v58;
    }

    if (v41 && v15 > 1)
    {
      goto LABEL_110;
    }

    if ((v56 & (v55 == 1)) == 0)
    {
      v15 = v55;
      v41 = v56;
    }

    if (v41 && v15 > 1)
    {
      goto LABEL_110;
    }

    if ((v54 & (v53 == 1)) == 0)
    {
      v15 = v53;
      v41 = v54;
    }

    if (v41 && v15 > 1)
    {
      goto LABEL_110;
    }

    if ((v17 & (v20 == 1)) == 0)
    {
      v15 = v20;
      LOBYTE(v41) = v17;
    }

    if ((v41 & 1) != 0 && v15 > 1)
    {
LABEL_110:
      LOBYTE(v15) = 1;
      v44 = 2;
      v10 = v46;
      goto LABEL_111;
    }

    if ((v52 & (v51 == 1)) == 0)
    {
      v15 = v51;
      LOBYTE(v41) = v52;
    }

    v10 = v46;
    if ((v41 & 1) != 0 && v15 > 1 || ((v14 = v49, (v50 & (v49 == 1)) == 0) ? (LOBYTE(v15) = v50) : (v14 = v15, LOBYTE(v15) = v41), (v15 & 1) != 0 && v14 > 1))
    {
      LOBYTE(v15) = 1;
      v44 = 2;
      goto LABEL_111;
    }

    goto LABEL_126;
  }

  v21 = v7 + 7;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = *(v21 - 1);
    if (v14 < 0x40)
    {
      v22 = 1;
    }

    else if (v14 < 0x4000)
    {
      v22 = 2;
    }

    else if (v14 >> 30)
    {
      if (v14 >> 62)
      {
        goto LABEL_130;
      }

      v22 = 8;
    }

    else
    {
      v22 = 4;
    }

    v23 = *a1;
    v24 = a1[1];
    v15 = a1[2];
    if (*(a1 + 32) == 1 && a1[3] > 1)
    {
      goto LABEL_30;
    }

    v25 = v24 - v23;
    if (!v23)
    {
      v25 = 0;
    }

    v26 = __OFSUB__(v25, v15);
    v10 = v25 - v15;
    if (v26)
    {
      break;
    }

    if (v10 >= v22)
    {
      if (v14 < 0x40)
      {
        if (v23)
        {
          *(v23 + v15) = v14;
        }
      }

      else if (v14 >> 14)
      {
        if (v14 >> 30)
        {
          if (v23)
          {
            *(v23 + v15) = bswap64(v14 | 0xC000000000000000);
          }
        }

        else if (v23)
        {
          *(v23 + v15) = bswap32(v14 | 0x80000000);
        }
      }

      else if (v23)
      {
        *(v23 + v15) = bswap32(v14 | 0x4000) >> 16;
      }

      v15 += v22;
      a1[2] = v15;
      v27 = a1[3];
      v14 = *(a1 + 32);
      goto LABEL_43;
    }

LABEL_30:
    a1[3] = 2;
    v14 = 1;
    *(a1 + 32) = 1;
    v27 = 2;
LABEL_43:
    v10 = *v21;
    if (*v21 <= 0x3F)
    {
      v28 = 1;
    }

    else if (v10 < 0x4000)
    {
      v28 = 2;
    }

    else if (v10 >> 30)
    {
      if (v10 >> 62)
      {
        goto LABEL_130;
      }

      v28 = 8;
    }

    else
    {
      v28 = 4;
    }

    if (v27 > 1)
    {
      v29 = v14;
    }

    else
    {
      v29 = 0;
    }

    if (v29)
    {
      goto LABEL_59;
    }

    v30 = v24 - v23;
    if (!v23)
    {
      v30 = 0;
    }

    v26 = __OFSUB__(v30, v15);
    v31 = v30 - v15;
    if (v26)
    {
      goto LABEL_125;
    }

    if (v31 < v28)
    {
LABEL_59:
      a1[3] = 2;
      v32 = 1;
      *(a1 + 32) = 1;
      v33 = 2;
    }

    else
    {
      if (v10 < 0x40)
      {
        if (v23)
        {
          *(v23 + v15) = v10;
        }
      }

      else if (v10 >> 14)
      {
        if (v10 >> 30)
        {
          if (v23)
          {
            *(v23 + v15) = bswap64(v10 | 0xC000000000000000);
          }
        }

        else if (v23)
        {
          *(v23 + v15) = bswap32(v10 | 0x80000000);
        }
      }

      else if (v23)
      {
        *(v23 + v15) = bswap32(v10 | 0x4000) >> 16;
      }

      a1[2] = v28 + v15;
      v33 = a1[3];
      v32 = *(a1 + 32);
    }

    if ((v32 & (v33 == 1)) != 0)
    {
      v33 = v27;
      v34 = v14;
    }

    else
    {
      v34 = v32;
    }

    if (v29)
    {
      v35 = 2;
    }

    else
    {
      v35 = v33;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_181F5AC70(0, *(v12 + 16) + 1, 1, v12);
      v12 = result;
    }

    v37 = *(v12 + 16);
    v36 = *(v12 + 24);
    v13 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_181F5AC70((v36 > 1), v37 + 1, 1, v12);
      v12 = result;
    }

    *(v12 + 16) = v13;
    v38 = v12 + 16 * v37;
    *(v38 + 32) = v35;
    *(v38 + 40) = (v29 | v34) & 1;
    v21 += 2;
    if (!--v11)
    {
      goto LABEL_4;
    }
  }

LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  v44 = v47;
  if ((v48 & (v47 == 1)) != 0)
  {
    v44 = v14;
  }

  else
  {
    LOBYTE(v15) = v48;
  }

LABEL_111:
  *v10 = v44;
  *(v10 + 8) = v15 & 1;
  return result;
}

uint64_t sub_182107B90(uint64_t a1, uint64_t a2)
{
  result = sub_182104788(*a2, *(a2 + 8));
  v35[0] = result;
  v36 = 8;
  v4 = *(a2 + 24);
  v33[0] = *(a2 + 16);
  v34 = 8;
  v31[0] = v4;
  v32 = 8;
  v5 = *(a2 + 32);
  v6 = v5[2];
  if (!v6)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = 8;
  v27[0] = v5[5];
  v28 = 8;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = v6 - 1;
  v29[0] = v6 - 1;
  if (v6 != 1)
  {
    v12 = v5 + 7;
    do
    {
      v25[0] = *(v12 - 1);
      v26 = 8;
      v23[0] = *v12;
      v24 = 8;
      sub_181F80BF8(v25, &v21);
      sub_181F80BF8(v23, &v22);
      v19[0] = MEMORY[0x1E69E7CC0];
      sub_1822A69B4(v19);
      sub_1822A69B4(v19);
      swift_arrayDestroy();
      v13 = v19[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_181F5A6A0(0, v7[2] + 1, 1, v7);
      }

      v15 = v7[2];
      v14 = v7[3];
      if (v15 >= v14 >> 1)
      {
        v7 = sub_181F5A6A0((v14 > 1), v15 + 1, 1, v7);
      }

      v12 += 2;
      sub_181F80C54(v23);
      sub_181F80C54(v25);
      v7[2] = v15 + 1;
      v7[v15 + 4] = v13;
      --v8;
    }

    while (v8);
  }

  static Serializer.buildArray(_:)(v7, v25);

  if ((*(a2 + 40) & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v23[0] = *(a2 + 40);
  v24 = 8;
  if (v10 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19[0] = v10;
  v20 = 8;
  if ((v9 & 0x8000000000000000) == 0)
  {
    v17[0] = v9;
    v18 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A580);
    v11 = swift_allocObject();
    sub_181F80BF8(v35, v11 + 32);
    sub_181F80BF8(v33, v11 + 80);
    sub_181F80BF8(v31, v11 + 128);
    sub_181F80BF8(v29, v11 + 176);
    sub_181F80BF8(v27, v11 + 224);
    sub_181F80BF8(v25, v11 + 272);
    sub_181F80BF8(v23, v11 + 320);
    sub_181F80BF8(v19, v11 + 368);
    sub_181F80BF8(v17, v11 + 416);
    v16 = MEMORY[0x1E69E7CC0];
    sub_1822A69B4(&v16);
    sub_1822A69B4(&v16);
    sub_1822A69B4(&v16);
    sub_1822A69B4(&v16);
    sub_1822A69B4(&v16);
    sub_1822A69B4(&v16);
    sub_1822A69B4(&v16);
    sub_1822A69B4(&v16);
    sub_1822A69B4(&v16);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_181F80C54(v17);
    sub_181F80C54(v19);
    sub_181F80C54(v23);
    sub_181F80C54(v25);
    sub_181F80C54(v27);
    sub_181F80C54(v29);
    sub_181F80C54(v31);
    sub_181F80C54(v33);
    sub_181F80C54(v35);
    return v16;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_182107F10@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a2 = sub_1820E2CC0();
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  a3[2] = sub_1820E2CC0();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  a3[3] = sub_1820E2CC0();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  result = sub_1820E2CC0();
  a3[4] = result;
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  if (v7 == 1)
  {
    v16 = v8;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 | v10 & (v9 == 1) | v12 & (v11 == 1);
  if (v17)
  {
    v14 = 1;
  }

  *a4 = v14;
  *(a4 + 8) = (v17 | v15) & 1;
  return result;
}

uint64_t sub_182107FDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_182104788(*a1, *(a1 + 8));
  InPlaceSerializer.vle(_:)(v4, &v18);
  InPlaceSerializer.vle(_:)(*(a1 + 16), &v16);
  InPlaceSerializer.vle(_:)(*(a1 + 24), &v14);
  result = InPlaceSerializer.vle(_:)(*(a1 + 32), &v12);
  v6 = v18;
  v7 = v19 == 1 && v18 > 1;
  if (v7 || ((v8 = v17, (v17 & (v16 == 1)) != 0) ? (v8 = v19) : (v6 = v16), v8 ? (v9 = v6 > 1) : (v9 = 0), v9 || ((v10 = v14, (v15 & (v14 == 1)) == 0) ? (v11 = v15) : (v10 = v6, v11 = v8), v11 && v10 > 1)))
  {
    LOBYTE(v11) = 1;
    v10 = 2;
  }

  else if ((v13 & (v12 == 1)) == 0)
  {
    v10 = v12;
    LOBYTE(v11) = v13;
  }

  *a2 = v10;
  *(a2 + 8) = v11;
  return result;
}

uint64_t sub_1821080E0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (!*(a2 + 8))
  {
    v3 = __CFADD__(v2, 8);
    v4 = v2 + 8;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      if (v4 < 0x40)
      {
LABEL_24:
        v10 = *(a2 + 16);
        if (v10 <= 0x3F)
        {
          v15 = *(a2 + 24);
          if (v15 < 0x40)
          {
            v19 = *(a2 + 32);
            if (v19 < 0x40)
            {
              v8 = 1;
              v9 = 1;
            }

            else if (v19 < 0x4000)
            {
              v9 = 1;
              v8 = 2;
            }

            else if (v19 >> 30)
            {
              if (v19 >> 62)
              {
                goto LABEL_688;
              }

              v9 = 1;
              v8 = 8;
            }

            else
            {
              v9 = 1;
              v8 = 4;
            }
          }

          else
          {
            if (v15 < 0x4000)
            {
              v25 = *(a2 + 32);
              if (v25 >= 0x40)
              {
                if (v25 < 0x4000)
                {
                  v14 = 1;
                  v8 = 2;
                  v9 = 2;
                }

                else if (v25 >> 30)
                {
                  if (v25 >> 62)
                  {
                    goto LABEL_688;
                  }

                  v14 = 1;
                  v9 = 2;
                  v8 = 8;
                }

                else
                {
                  v14 = 1;
                  v9 = 2;
                  v8 = 4;
                }

                goto LABEL_191;
              }

              v9 = 2;
            }

            else if (v15 >> 30)
            {
              if (v15 >> 62)
              {
                goto LABEL_688;
              }

              v16 = *(a2 + 32);
              if (v16 >= 0x40)
              {
                if (v16 < 0x4000)
                {
                  v14 = 1;
                  v9 = 8;
                  v8 = 2;
                }

                else if (v16 >> 30)
                {
                  if (v16 >> 62)
                  {
                    goto LABEL_688;
                  }

                  v14 = 1;
                  v8 = 8;
                  v9 = 8;
                }

                else
                {
                  v14 = 1;
                  v9 = 8;
                  v8 = 4;
                }

                goto LABEL_191;
              }

              v9 = 8;
            }

            else
            {
              v32 = *(a2 + 32);
              if (v32 >= 0x40)
              {
                if (v32 < 0x4000)
                {
                  v14 = 1;
                  v9 = 4;
                  v8 = 2;
                }

                else if (v32 >> 30)
                {
                  if (v32 >> 62)
                  {
                    goto LABEL_688;
                  }

                  v14 = 1;
                  v9 = 4;
                  v8 = 8;
                }

                else
                {
                  v14 = 1;
                  v8 = 4;
                  v9 = 4;
                }

                goto LABEL_191;
              }

              v9 = 4;
            }

            v8 = 1;
          }

          v14 = 1;
          goto LABEL_191;
        }

        if (v10 >> 14)
        {
          if (v10 >> 30)
          {
            if (v10 >> 62)
            {
              goto LABEL_688;
            }

            v11 = *(a2 + 24);
            if (v11 > 0x3F)
            {
              if (!(v11 >> 14))
              {
                v43 = *(a2 + 32);
                if (v43 < 0x40)
                {
                  v14 = 8;
                  v13 = 1;
                  goto LABEL_318;
                }

                if (v43 < 0x4000)
                {
                  v13 = 1;
                  v14 = 8;
                  goto LABEL_647;
                }

                if (v43 >> 30)
                {
                  if (v43 >> 62)
                  {
                    goto LABEL_688;
                  }

                  v13 = 1;
LABEL_187:
                  v14 = 8;
                  v8 = 8;
                  v9 = 2;
                  return v9 + v8 + v14 + v13;
                }

                v13 = 1;
                v14 = 8;
                goto LABEL_485;
              }

              if (!(v11 >> 30))
              {
                v55 = *(a2 + 32);
                if (v55 >= 0x40)
                {
                  if (v55 >= 0x4000)
                  {
                    if (v55 >> 30)
                    {
                      if (v55 >> 62)
                      {
                        goto LABEL_688;
                      }

                      v13 = 1;
LABEL_258:
                      v14 = 8;
                      v8 = 8;
                      v9 = 4;
                      return v9 + v8 + v14 + v13;
                    }

                    v13 = 1;
                    goto LABEL_506;
                  }

                  v13 = 1;
                  v14 = 8;
LABEL_426:
                  v8 = 2;
                  v9 = 4;
                  return v9 + v8 + v14 + v13;
                }

                v14 = 8;
                v13 = 1;
LABEL_341:
                v8 = 1;
                v9 = 4;
                return v9 + v8 + v14 + v13;
              }

              if (v11 >> 62)
              {
                goto LABEL_688;
              }

              v12 = *(a2 + 32);
              if (v12 < 0x40)
              {
                v14 = 8;
                v13 = 1;
                v8 = 1;
                v9 = 8;
                return v9 + v8 + v14 + v13;
              }

              if (v12 < 0x4000)
              {
                v13 = 1;
                v14 = 8;
                v8 = 2;
                v9 = 8;
                return v9 + v8 + v14 + v13;
              }

              if (!(v12 >> 30))
              {
                v13 = 1;
                v14 = 8;
                v8 = 4;
                v9 = 8;
                return v9 + v8 + v14 + v13;
              }

              if (v12 >> 62)
              {
                goto LABEL_688;
              }

              v13 = 1;
              v14 = 8;
              goto LABEL_150;
            }

            v35 = *(a2 + 32);
            if (v35 >= 0x40)
            {
              if (v35 >= 0x4000)
              {
                if (v35 >> 30)
                {
                  if (v35 >> 62)
                  {
                    goto LABEL_688;
                  }

                  v13 = 1;
                  goto LABEL_140;
                }

                v14 = 8;
                v13 = 1;
                goto LABEL_396;
              }

              v14 = 8;
              v13 = 1;
              goto LABEL_310;
            }

            v14 = 8;
            v9 = 1;
            v8 = 1;
LABEL_191:
            v13 = 1;
            return v9 + v8 + v14 + v13;
          }

          v23 = *(a2 + 24);
          if (v23 < 0x40)
          {
            v34 = *(a2 + 32);
            if (v34 < 0x40)
            {
              v14 = 4;
              v8 = 1;
              v9 = 1;
            }

            else if (v34 < 0x4000)
            {
              v14 = 4;
              v9 = 1;
              v8 = 2;
            }

            else if (v34 >> 30)
            {
              if (v34 >> 62)
              {
                goto LABEL_688;
              }

              v14 = 4;
              v9 = 1;
              v8 = 8;
            }

            else
            {
              v9 = 1;
              v8 = 4;
              v14 = 4;
            }

            goto LABEL_191;
          }

          if (v23 < 0x4000)
          {
            v42 = *(a2 + 32);
            if (v42 < 0x40)
            {
              v14 = 4;
              v9 = 2;
              v13 = 1;
              v8 = 1;
              return v9 + v8 + v14 + v13;
            }

            if (v42 < 0x4000)
            {
              v13 = 1;
              v14 = 4;
              v9 = 2;
              v8 = 2;
              return v9 + v8 + v14 + v13;
            }

            if (v42 >> 30)
            {
              if (!(v42 >> 62))
              {
                v13 = 1;
                v14 = 4;
                v9 = 2;
                v8 = 8;
                return v9 + v8 + v14 + v13;
              }

              goto LABEL_688;
            }

            v13 = 1;
            v9 = 2;
LABEL_418:
            v14 = 4;
            v8 = 4;
            return v9 + v8 + v14 + v13;
          }

          if (v23 >> 30)
          {
            if (v23 >> 62)
            {
              goto LABEL_688;
            }

            v24 = *(a2 + 32);
            if (v24 >= 0x40)
            {
              if (v24 >= 0x4000)
              {
                if (!(v24 >> 30))
                {
                  v13 = 1;
                  v9 = 8;
                  goto LABEL_569;
                }

                if (v24 >> 62)
                {
                  goto LABEL_688;
                }

                v13 = 1;
                v14 = 4;
                goto LABEL_150;
              }

              v13 = 1;
              v14 = 4;
              goto LABEL_530;
            }

            v14 = 4;
            goto LABEL_337;
          }

          v54 = *(a2 + 32);
          if (v54 < 0x40)
          {
            v9 = 4;
            v13 = 1;
            goto LABEL_332;
          }

          if (v54 >= 0x4000)
          {
            if (v54 >> 30)
            {
              if (v54 >> 62)
              {
                goto LABEL_688;
              }

              v13 = 1;
LABEL_243:
              v9 = 4;
              v8 = 8;
              v14 = 4;
              return v9 + v8 + v14 + v13;
            }

            v13 = 1;
            v9 = 4;
LABEL_569:
            v8 = 4;
            v14 = 4;
            return v9 + v8 + v14 + v13;
          }

          v13 = 1;
LABEL_420:
          v9 = 4;
          goto LABEL_421;
        }

        v17 = *(a2 + 24);
        if (v17 < 0x40)
        {
          v26 = *(a2 + 32);
          if (v26 < 0x40)
          {
            v13 = 1;
            v8 = 1;
          }

          else if (v26 < 0x4000)
          {
            v13 = 1;
            v8 = 2;
          }

          else
          {
            if (v26 >> 30)
            {
              if (v26 >> 62)
              {
                goto LABEL_688;
              }

              v8 = 8;
              v9 = 1;
              v14 = 2;
              goto LABEL_191;
            }

            v13 = 1;
            v8 = 4;
          }

          v9 = 1;
          v14 = 2;
          return v9 + v8 + v14 + v13;
        }

        if (v17 >= 0x4000)
        {
          if (v17 >> 30)
          {
            if (v17 >> 62)
            {
              goto LABEL_688;
            }

            v18 = *(a2 + 32);
            if (v18 >= 0x40)
            {
              if (v18 >= 0x4000)
              {
                if (!(v18 >> 30))
                {
                  v13 = 1;
                  v14 = 2;
                  v9 = 8;
                  v8 = 4;
                  return v9 + v8 + v14 + v13;
                }

                if (v18 >> 62)
                {
                  goto LABEL_688;
                }

                v13 = 1;
                goto LABEL_55;
              }

              v13 = 1;
LABEL_335:
              v9 = 8;
              goto LABEL_550;
            }

            v14 = 2;
LABEL_337:
            v9 = 8;
            v8 = 1;
            goto LABEL_191;
          }

          v41 = *(a2 + 32);
          if (v41 < 0x40)
          {
            v14 = 2;
            v9 = 4;
            v8 = 1;
            goto LABEL_191;
          }

          if (v41 < 0x4000)
          {
            v13 = 1;
            v9 = 4;
LABEL_550:
            v8 = 2;
            v14 = 2;
            return v9 + v8 + v14 + v13;
          }

          if (v41 >> 30)
          {
            if (!(v41 >> 62))
            {
              v13 = 1;
              v14 = 2;
              v9 = 4;
              v8 = 8;
              return v9 + v8 + v14 + v13;
            }

            goto LABEL_688;
          }

          v13 = 1;
LABEL_416:
          v14 = 2;
LABEL_507:
          v8 = 4;
          v9 = 4;
          return v9 + v8 + v14 + v13;
        }

        v33 = *(a2 + 32);
        if (v33 < 0x40)
        {
          v13 = 1;
          v8 = 1;
          goto LABEL_327;
        }

        if (v33 >= 0x4000)
        {
          if (v33 >> 30)
          {
            if (v33 >> 62)
            {
              goto LABEL_688;
            }

            v13 = 1;
            v8 = 8;
          }

          else
          {
            v13 = 1;
            v8 = 4;
          }

LABEL_327:
          v9 = 2;
          v14 = 2;
          return v9 + v8 + v14 + v13;
        }

        v13 = 1;
LABEL_249:
        v8 = 2;
        goto LABEL_327;
      }

      if (v4 < 0x4000)
      {
        goto LABEL_61;
      }

      if (!(v4 >> 30))
      {
        goto LABEL_94;
      }

      if (v4 >> 62)
      {
        goto LABEL_688;
      }

      v5 = *(a2 + 16);
      if (v5 < 0x40)
      {
        v48 = *(a2 + 24);
        if (v48 < 0x40)
        {
          v62 = *(a2 + 32);
          if (v62 < 0x40)
          {
            v13 = 8;
            goto LABEL_389;
          }

          if (v62 < 0x4000)
          {
            v13 = 8;
            goto LABEL_463;
          }

          if (!(v62 >> 30))
          {
            v13 = 8;
            v9 = 1;
            v8 = 4;
            v14 = 1;
            return v9 + v8 + v14 + v13;
          }

          if (v62 >> 62)
          {
            goto LABEL_688;
          }

          v9 = 1;
          v8 = 8;
        }

        else
        {
          if (v48 < 0x4000)
          {
            v73 = *(a2 + 32);
            if (v73 < 0x40)
            {
              v13 = 8;
              v9 = 2;
              goto LABEL_552;
            }

            if (v73 < 0x4000)
            {
              v13 = 8;
              v14 = 1;
              goto LABEL_647;
            }

            if (!(v73 >> 30))
            {
              v13 = 8;
              v14 = 1;
              v9 = 2;
              v8 = 4;
              return v9 + v8 + v14 + v13;
            }

            if (v73 >> 62)
            {
              goto LABEL_688;
            }

            v14 = 1;
LABEL_382:
            v9 = 2;
            goto LABEL_540;
          }

          if (!(v48 >> 30))
          {
            v81 = *(a2 + 32);
            if (v81 < 0x40)
            {
              v13 = 8;
              v9 = 4;
              goto LABEL_552;
            }

            if (v81 < 0x4000)
            {
              v13 = 8;
              v14 = 1;
              v9 = 4;
              v8 = 2;
              return v9 + v8 + v14 + v13;
            }

            if (!(v81 >> 30))
            {
              v13 = 8;
              v14 = 1;
              goto LABEL_507;
            }

            if (v81 >> 62)
            {
              goto LABEL_688;
            }

            v14 = 1;
            goto LABEL_539;
          }

          if (v48 >> 62)
          {
            goto LABEL_688;
          }

          v49 = *(a2 + 32);
          if (v49 >= 0x40)
          {
            if (v49 < 0x4000)
            {
              v14 = 1;
              goto LABEL_617;
            }

            if (v49 >> 30)
            {
              if (v49 >> 62)
              {
                goto LABEL_688;
              }

              v14 = 1;
LABEL_376:
              v8 = 8;
              v9 = 8;
              v13 = 8;
              return v9 + v8 + v14 + v13;
            }

            v14 = 1;
LABEL_676:
            v9 = 8;
            v8 = 4;
            v13 = 8;
            return v9 + v8 + v14 + v13;
          }

          v9 = 8;
          v8 = 1;
        }

        v14 = 1;
        v13 = 8;
        return v9 + v8 + v14 + v13;
      }

      if (v5 >= 0x4000)
      {
        if (v5 >> 30)
        {
          if (v5 >> 62)
          {
            goto LABEL_688;
          }

          v6 = *(a2 + 24);
          if (v6 < 0x40)
          {
            v84 = *(a2 + 32);
            if (v84 < 0x40)
            {
              v14 = 8;
              v8 = 1;
            }

            else if (v84 < 0x4000)
            {
              v14 = 8;
              v8 = 2;
            }

            else if (v84 >> 30)
            {
              if (v84 >> 62)
              {
                goto LABEL_688;
              }

              v14 = 8;
              v8 = 8;
            }

            else
            {
              v14 = 8;
              v8 = 4;
            }

            v9 = 1;
            v13 = 8;
            return v9 + v8 + v14 + v13;
          }

          if (v6 < 0x4000)
          {
            v91 = *(a2 + 32);
            if (v91 < 0x40)
            {
              v13 = 8;
              v8 = 1;
            }

            else if (v91 < 0x4000)
            {
              v13 = 8;
              v8 = 2;
            }

            else if (v91 >> 30)
            {
              if (v91 >> 62)
              {
                goto LABEL_688;
              }

              v13 = 8;
              v8 = 8;
            }

            else
            {
              v13 = 8;
              v8 = 4;
            }

            v9 = 2;
            v14 = 8;
            return v9 + v8 + v14 + v13;
          }

          if (v6 >> 30)
          {
            if (v6 >> 62)
            {
              goto LABEL_688;
            }

            v7 = *(a2 + 32);
            if (v7 < 0x40)
            {
              v9 = 8;
              v8 = 1;
            }

            else if (v7 < 0x4000)
            {
              v9 = 8;
              v8 = 2;
            }

            else if (v7 >> 30)
            {
              if (v7 >> 62)
              {
                goto LABEL_688;
              }

              v8 = 8;
              v9 = 8;
            }

            else
            {
              v9 = 8;
              v8 = 4;
            }

            goto LABEL_687;
          }

          v93 = *(a2 + 32);
          if (v93 >= 0x40)
          {
            if (v93 >= 0x4000)
            {
              if (!(v93 >> 30))
              {
                v14 = 8;
                v8 = 4;
                v9 = 4;
                v13 = 8;
                return v9 + v8 + v14 + v13;
              }

              if (v93 >> 62)
              {
                goto LABEL_688;
              }

              v9 = 4;
              v8 = 8;
LABEL_687:
              v14 = 8;
              v13 = 8;
              return v9 + v8 + v14 + v13;
            }

            v14 = 8;
            v9 = 4;
LABEL_618:
            v8 = 2;
            v13 = 8;
            return v9 + v8 + v14 + v13;
          }

          v14 = 8;
          v9 = 4;
LABEL_658:
          v8 = 1;
          v13 = 8;
          return v9 + v8 + v14 + v13;
        }

        v71 = *(a2 + 24);
        if (v71 < 0x40)
        {
          v83 = *(a2 + 32);
          if (v83 < 0x40)
          {
            v13 = 8;
            v14 = 4;
            v9 = 1;
            v8 = 1;
            return v9 + v8 + v14 + v13;
          }

          if (v83 < 0x4000)
          {
            v13 = 8;
            v14 = 4;
            v9 = 1;
            v8 = 2;
            return v9 + v8 + v14 + v13;
          }

          if (v83 >> 30)
          {
            if (!(v83 >> 62))
            {
              v14 = 4;
              v9 = 1;
              v13 = 8;
              v8 = 8;
              return v9 + v8 + v14 + v13;
            }

            goto LABEL_688;
          }

          v13 = 8;
          v9 = 1;
          goto LABEL_418;
        }

        if (v71 >= 0x4000)
        {
          if (!(v71 >> 30))
          {
            v92 = *(a2 + 32);
            if (v92 < 0x40)
            {
              v13 = 8;
              v9 = 4;
              goto LABEL_332;
            }

            if (v92 < 0x4000)
            {
              v13 = 8;
              goto LABEL_420;
            }

            if (!(v92 >> 30))
            {
              v13 = 8;
              v8 = 4;
              v9 = 4;
              v14 = 4;
              return v9 + v8 + v14 + v13;
            }

            if (v92 >> 62)
            {
              goto LABEL_688;
            }

            v9 = 4;
            v8 = 8;
            goto LABEL_684;
          }

          if (v71 >> 62)
          {
            goto LABEL_688;
          }

          v72 = *(a2 + 32);
          if (v72 >= 0x40)
          {
            if (v72 >= 0x4000)
            {
              if (v72 >> 30)
              {
                if (v72 >> 62)
                {
                  goto LABEL_688;
                }

                v14 = 4;
                goto LABEL_376;
              }

              v9 = 8;
              v8 = 4;
LABEL_684:
              v14 = 4;
              v13 = 8;
              return v9 + v8 + v14 + v13;
            }

            v14 = 4;
LABEL_617:
            v9 = 8;
            goto LABEL_618;
          }

          v14 = 4;
LABEL_653:
          v9 = 8;
          goto LABEL_658;
        }

        v90 = *(a2 + 32);
        if (v90 < 0x40)
        {
          v13 = 8;
          v14 = 4;
          v9 = 2;
          v8 = 1;
          return v9 + v8 + v14 + v13;
        }

        if (v90 < 0x4000)
        {
          v13 = 8;
          v14 = 4;
          goto LABEL_647;
        }

        if (!(v90 >> 30))
        {
          v13 = 8;
          v9 = 2;
          goto LABEL_569;
        }

        if (v90 >> 62)
        {
          goto LABEL_688;
        }

        v14 = 4;
        goto LABEL_382;
      }

      v60 = *(a2 + 24);
      if (v60 <= 0x3F)
      {
        v74 = *(a2 + 32);
        if (v74 < 0x40)
        {
          v13 = 8;
          goto LABEL_471;
        }

        if (v74 < 0x4000)
        {
          v13 = 8;
LABEL_549:
          v9 = 1;
          goto LABEL_550;
        }

        if (!(v74 >> 30))
        {
          v13 = 8;
          v14 = 2;
          v9 = 1;
          v8 = 4;
          return v9 + v8 + v14 + v13;
        }

        if (v74 >> 62)
        {
          goto LABEL_688;
        }

        v14 = 2;
        v9 = 1;
LABEL_540:
        v8 = 8;
        v13 = 8;
        return v9 + v8 + v14 + v13;
      }

      if (!(v60 >> 14))
      {
        v82 = *(a2 + 32);
        if (v82 < 0x40)
        {
          v13 = 8;
          goto LABEL_554;
        }

        if (v82 < 0x4000)
        {
          v13 = 8;
          goto LABEL_249;
        }

        if (!(v82 >> 30))
        {
          v13 = 8;
          v9 = 2;
          v8 = 4;
          v14 = 2;
          return v9 + v8 + v14 + v13;
        }

        if (v82 >> 62)
        {
          goto LABEL_688;
        }

        v9 = 2;
        v8 = 8;
        goto LABEL_651;
      }

      if (v60 >> 30)
      {
        if (v60 >> 62)
        {
          goto LABEL_688;
        }

        v61 = *(a2 + 32);
        if (v61 < 0x40)
        {
          v14 = 2;
          goto LABEL_653;
        }

        if (v61 >= 0x4000)
        {
          if (v61 >> 30)
          {
            if (v61 >> 62)
            {
              goto LABEL_688;
            }

            v14 = 2;
            goto LABEL_376;
          }

          v14 = 2;
          goto LABEL_676;
        }

        v9 = 8;
        v8 = 2;
LABEL_651:
        v14 = 2;
        v13 = 8;
        return v9 + v8 + v14 + v13;
      }

      v89 = *(a2 + 32);
      if (v89 < 0x40)
      {
        v13 = 8;
        v14 = 2;
        v9 = 4;
        v8 = 1;
        return v9 + v8 + v14 + v13;
      }

      if (v89 < 0x4000)
      {
        v13 = 8;
        v9 = 4;
        goto LABEL_550;
      }

      if (v89 >> 30)
      {
        if (v89 >> 62)
        {
          goto LABEL_688;
        }

        v14 = 2;
LABEL_539:
        v9 = 4;
        goto LABEL_540;
      }
    }

    v13 = 8;
    goto LABEL_416;
  }

  if (*(a2 + 8) == 1 || v2 < 0x17)
  {
    goto LABEL_24;
  }

  if (v2 - 25 < 4)
  {
LABEL_94:
    v27 = *(a2 + 16);
    if (v27 >= 0x40)
    {
      if (v27 >= 0x4000)
      {
        if (v27 >> 30)
        {
          if (v27 >> 62)
          {
            goto LABEL_688;
          }

          v28 = *(a2 + 24);
          if (v28 >= 0x40)
          {
            if (v28 >= 0x4000)
            {
              if (v28 >> 30)
              {
                if (v28 >> 62)
                {
                  goto LABEL_688;
                }

                v29 = *(a2 + 32);
                if (v29 < 0x40)
                {
                  v13 = 4;
                  goto LABEL_598;
                }

                if (v29 < 0x4000)
                {
                  v13 = 4;
                  v9 = 8;
                  v8 = 2;
                  v14 = 8;
                  return v9 + v8 + v14 + v13;
                }

                if (v29 >> 30)
                {
                  if (!(v29 >> 62))
                  {
                    v13 = 4;
                    goto LABEL_107;
                  }

                  goto LABEL_688;
                }

                v9 = 8;
                v8 = 4;
LABEL_670:
                v14 = 8;
                v13 = 4;
                return v9 + v8 + v14 + v13;
              }

              v88 = *(a2 + 32);
              if (v88 >= 0x40)
              {
                if (v88 >= 0x4000)
                {
                  if (v88 >> 30)
                  {
                    if (v88 >> 62)
                    {
                      goto LABEL_688;
                    }

                    v9 = 4;
                    v8 = 8;
                    goto LABEL_670;
                  }

                  v14 = 8;
LABEL_584:
                  v8 = 4;
                  v9 = 4;
                  v13 = 4;
                  return v9 + v8 + v14 + v13;
                }

                v14 = 8;
                goto LABEL_518;
              }

              v14 = 8;
              v9 = 4;
LABEL_596:
              v8 = 1;
              v13 = 4;
              return v9 + v8 + v14 + v13;
            }

            v80 = *(a2 + 32);
            if (v80 < 0x40)
            {
              v13 = 4;
              v14 = 8;
              goto LABEL_318;
            }

            if (v80 < 0x4000)
            {
              v13 = 4;
              v14 = 8;
              goto LABEL_647;
            }

            if (v80 >> 30)
            {
              if (v80 >> 62)
              {
                goto LABEL_688;
              }

              v13 = 4;
              goto LABEL_187;
            }

            v14 = 8;
            v13 = 4;
LABEL_485:
            v8 = 4;
            v9 = 2;
            return v9 + v8 + v14 + v13;
          }

          v70 = *(a2 + 32);
          if (v70 < 0x40)
          {
            v13 = 4;
            v14 = 8;
            goto LABEL_472;
          }

          if (v70 >= 0x4000)
          {
            if (v70 >> 30)
            {
              if (v70 >> 62)
              {
                goto LABEL_688;
              }

              v13 = 4;
LABEL_140:
              v14 = 8;
              goto LABEL_165;
            }

            v14 = 8;
            v13 = 4;
LABEL_396:
            v8 = 4;
            v9 = 1;
            return v9 + v8 + v14 + v13;
          }

          v13 = 4;
          v14 = 8;
LABEL_310:
          v8 = 2;
          v9 = 1;
          return v9 + v8 + v14 + v13;
        }

        v56 = *(a2 + 24);
        if (v56 >= 0x40)
        {
          if (v56 < 0x4000)
          {
            v79 = *(a2 + 32);
            if (v79 < 0x40)
            {
              v13 = 4;
              v8 = 1;
            }

            else if (v79 < 0x4000)
            {
              v13 = 4;
              v8 = 2;
            }

            else if (v79 >> 30)
            {
              if (v79 >> 62)
              {
                goto LABEL_688;
              }

              v13 = 4;
              v8 = 8;
            }

            else
            {
              v13 = 4;
              v8 = 4;
            }

            v9 = 2;
            v14 = 4;
            return v9 + v8 + v14 + v13;
          }

          if (v56 >> 30)
          {
            if (v56 >> 62)
            {
              goto LABEL_688;
            }

            v57 = *(a2 + 32);
            if (v57 < 0x40)
            {
              v14 = 4;
              v9 = 8;
              goto LABEL_596;
            }

            if (v57 < 0x4000)
            {
              v14 = 4;
              v9 = 8;
              goto LABEL_521;
            }

            if (v57 >> 30)
            {
              if (!(v57 >> 62))
              {
                v14 = 4;
                v8 = 8;
                v9 = 8;
                v13 = 4;
                return v9 + v8 + v14 + v13;
              }

              goto LABEL_688;
            }

            v9 = 8;
            goto LABEL_666;
          }

          v87 = *(a2 + 32);
          if (v87 < 0x40)
          {
            v9 = 4;
            v8 = 1;
          }

          else if (v87 < 0x4000)
          {
            v9 = 4;
            v8 = 2;
          }

          else
          {
            if (!(v87 >> 30))
            {
              v9 = 4;
LABEL_666:
              v8 = 4;
              goto LABEL_667;
            }

            if (v87 >> 62)
            {
              goto LABEL_688;
            }

            v9 = 4;
            v8 = 8;
          }

LABEL_667:
          v14 = 4;
          v13 = 4;
          return v9 + v8 + v14 + v13;
        }

        v69 = *(a2 + 32);
        if (v69 < 0x40)
        {
          v14 = 4;
          v8 = 1;
          v9 = 1;
          v13 = 4;
          return v9 + v8 + v14 + v13;
        }

        if (v69 < 0x4000)
        {
          v14 = 4;
          v9 = 1;
          goto LABEL_521;
        }

        if (v69 >> 30)
        {
          if (v69 >> 62)
          {
            goto LABEL_688;
          }

          v14 = 4;
          v9 = 1;
          goto LABEL_359;
        }

        v9 = 1;
        v14 = 4;
LABEL_637:
        v8 = 4;
        v13 = 4;
        return v9 + v8 + v14 + v13;
      }

      v45 = *(a2 + 24);
      if (v45 >= 0x40)
      {
        if (v45 >= 0x4000)
        {
          if (!(v45 >> 30))
          {
            v78 = *(a2 + 32);
            if (v78 < 0x40)
            {
              v13 = 4;
              v8 = 1;
            }

            else if (v78 < 0x4000)
            {
              v13 = 4;
              v8 = 2;
            }

            else if (v78 >> 30)
            {
              if (v78 >> 62)
              {
                goto LABEL_688;
              }

              v13 = 4;
              v8 = 8;
            }

            else
            {
              v13 = 4;
              v8 = 4;
            }

            v9 = 4;
            v14 = 2;
            return v9 + v8 + v14 + v13;
          }

          if (v45 >> 62)
          {
            goto LABEL_688;
          }

          v46 = *(a2 + 32);
          if (v46 < 0x40)
          {
            v13 = 4;
            v14 = 2;
            goto LABEL_578;
          }

          if (v46 >= 0x4000)
          {
            if (v46 >> 30)
            {
              if (v46 >> 62)
              {
                goto LABEL_688;
              }

              v13 = 4;
LABEL_55:
              v14 = 2;
              goto LABEL_150;
            }

            v14 = 2;
LABEL_636:
            v9 = 8;
            goto LABEL_637;
          }

          v13 = 4;
          goto LABEL_335;
        }

        v68 = *(a2 + 32);
        if (v68 >= 0x40)
        {
          if (v68 >= 0x4000)
          {
            if (!(v68 >> 30))
            {
              v9 = 2;
              v8 = 4;
              v14 = 2;
              v13 = 4;
              return v9 + v8 + v14 + v13;
            }

            if (!(v68 >> 62))
            {
              v13 = 4;
              v9 = 2;
              v8 = 8;
              v14 = 2;
              return v9 + v8 + v14 + v13;
            }

            goto LABEL_688;
          }

          v13 = 4;
          goto LABEL_249;
        }

        v13 = 4;
LABEL_554:
        v9 = 2;
        v8 = 1;
        v14 = 2;
        return v9 + v8 + v14 + v13;
      }

      v59 = *(a2 + 32);
      if (v59 >= 0x40)
      {
        if (v59 >= 0x4000)
        {
          if (v59 >> 30)
          {
            if (v59 >> 62)
            {
              goto LABEL_688;
            }

            v13 = 4;
            v14 = 2;
            goto LABEL_316;
          }

          v14 = 2;
          v9 = 1;
          goto LABEL_637;
        }

        v13 = 4;
        goto LABEL_549;
      }

      v13 = 4;
LABEL_471:
      v14 = 2;
      goto LABEL_472;
    }

    v36 = *(a2 + 24);
    if (v36 >= 0x40)
    {
      if (v36 < 0x4000)
      {
        v58 = *(a2 + 32);
        if (v58 < 0x40)
        {
          v13 = 4;
          v8 = 1;
          goto LABEL_515;
        }

        if (v58 < 0x4000)
        {
          v13 = 4;
          v8 = 2;
          goto LABEL_515;
        }

        if (!(v58 >> 30))
        {
          v13 = 4;
          v8 = 4;
          goto LABEL_515;
        }

        if (v58 >> 62)
        {
          goto LABEL_688;
        }

        v13 = 4;
LABEL_277:
        v8 = 8;
LABEL_515:
        v9 = 2;
        v14 = 1;
        return v9 + v8 + v14 + v13;
      }

      if (v36 >> 30)
      {
        if (v36 >> 62)
        {
          goto LABEL_688;
        }

        v37 = *(a2 + 32);
        if (v37 >= 0x40)
        {
          if (v37 >= 0x4000)
          {
            if (!(v37 >> 30))
            {
              v14 = 1;
              goto LABEL_636;
            }

            if (v37 >> 62)
            {
              goto LABEL_688;
            }

            v13 = 4;
            v14 = 1;
LABEL_150:
            v8 = 8;
            v9 = 8;
            return v9 + v8 + v14 + v13;
          }

          v13 = 4;
          v14 = 1;
LABEL_530:
          v9 = 8;
          v8 = 2;
          return v9 + v8 + v14 + v13;
        }

        v13 = 4;
        v9 = 8;
LABEL_552:
        v8 = 1;
        v14 = 1;
        return v9 + v8 + v14 + v13;
      }

      v67 = *(a2 + 32);
      if (v67 >= 0x40)
      {
        if (v67 < 0x4000)
        {
          v14 = 1;
LABEL_518:
          v9 = 4;
LABEL_521:
          v8 = 2;
          v13 = 4;
          return v9 + v8 + v14 + v13;
        }

        if (!(v67 >> 30))
        {
          v14 = 1;
          goto LABEL_584;
        }

        if (v67 >> 62)
        {
          goto LABEL_688;
        }

        v14 = 1;
        v9 = 4;
LABEL_359:
        v8 = 8;
        v13 = 4;
        return v9 + v8 + v14 + v13;
      }

      v9 = 4;
      v8 = 1;
LABEL_442:
      v14 = 1;
      v13 = 4;
      return v9 + v8 + v14 + v13;
    }

    v47 = *(a2 + 32);
    if (v47 >= 0x40)
    {
      if (v47 >= 0x4000)
      {
        if (v47 >> 30)
        {
          if (!(v47 >> 62))
          {
            v13 = 4;
            v9 = 1;
            v8 = 8;
            v14 = 1;
            return v9 + v8 + v14 + v13;
          }

          goto LABEL_688;
        }

        v9 = 1;
        v8 = 4;
        goto LABEL_442;
      }

      v13 = 4;
LABEL_463:
      v9 = 1;
      v8 = 2;
      v14 = 1;
      return v9 + v8 + v14 + v13;
    }

    v13 = 4;
LABEL_389:
    v8 = 1;
    v9 = 1;
    v14 = 1;
    return v9 + v8 + v14 + v13;
  }

LABEL_61:
  v20 = *(a2 + 16);
  if (v20 >= 0x40)
  {
    if (v20 >= 0x4000)
    {
      if (v20 >> 30)
      {
        if (v20 >> 62)
        {
          goto LABEL_688;
        }

        v21 = *(a2 + 24);
        if (v21 >= 0x40)
        {
          if (v21 >= 0x4000)
          {
            if (v21 >> 30)
            {
              if (v21 >> 62)
              {
                goto LABEL_688;
              }

              v22 = *(a2 + 32);
              if (v22 >= 0x40)
              {
                if (v22 < 0x4000)
                {
                  v9 = 8;
                  v8 = 2;
                  v14 = 8;
                  v13 = 2;
                  return v9 + v8 + v14 + v13;
                }

                if (!(v22 >> 30))
                {
                  v13 = 2;
                  v9 = 8;
                  v8 = 4;
                  v14 = 8;
                  return v9 + v8 + v14 + v13;
                }

                if (!(v22 >> 62))
                {
                  v13 = 2;
LABEL_107:
                  v8 = 8;
                  v9 = 8;
                  v14 = 8;
                  return v9 + v8 + v14 + v13;
                }

                goto LABEL_688;
              }

              v13 = 2;
LABEL_598:
              v9 = 8;
              v8 = 1;
              v14 = 8;
              return v9 + v8 + v14 + v13;
            }

            v86 = *(a2 + 32);
            if (v86 >= 0x40)
            {
              if (v86 >= 0x4000)
              {
                if (v86 >> 30)
                {
                  if (v86 >> 62)
                  {
                    goto LABEL_688;
                  }

                  v13 = 2;
                  goto LABEL_258;
                }

                v13 = 2;
LABEL_506:
                v14 = 8;
                goto LABEL_507;
              }

              v14 = 8;
              v13 = 2;
              goto LABEL_426;
            }

            v13 = 2;
            v14 = 8;
            goto LABEL_341;
          }

          v77 = *(a2 + 32);
          if (v77 >= 0x40)
          {
            if (v77 >= 0x4000)
            {
              if (v77 >> 30)
              {
                if (v77 >> 62)
                {
                  goto LABEL_688;
                }

                v13 = 2;
                goto LABEL_187;
              }

              v14 = 8;
              goto LABEL_484;
            }

            v14 = 8;
            v13 = 2;
LABEL_647:
            v8 = 2;
            v9 = 2;
            return v9 + v8 + v14 + v13;
          }

          v14 = 8;
          v13 = 2;
LABEL_318:
          v8 = 1;
          v9 = 2;
          return v9 + v8 + v14 + v13;
        }

        v66 = *(a2 + 32);
        if (v66 >= 0x40)
        {
          if (v66 >= 0x4000)
          {
            if (v66 >> 30)
            {
              if (v66 >> 62)
              {
                goto LABEL_688;
              }

              v13 = 2;
              goto LABEL_140;
            }

            v13 = 2;
            v14 = 8;
            goto LABEL_396;
          }

          v14 = 8;
          goto LABEL_309;
        }

        v13 = 2;
        v14 = 8;
        goto LABEL_472;
      }

      v50 = *(a2 + 24);
      if (v50 > 0x3F)
      {
        if (v50 >> 14)
        {
          if (v50 >> 30)
          {
            if (v50 >> 62)
            {
              goto LABEL_688;
            }

            v51 = *(a2 + 32);
            if (v51 >= 0x40)
            {
              if (v51 < 0x4000)
              {
                v14 = 4;
                v9 = 8;
                v13 = 2;
                v8 = 2;
                return v9 + v8 + v14 + v13;
              }

              if (v51 >> 30)
              {
                if (!(v51 >> 62))
                {
                  v13 = 2;
                  v14 = 4;
                  v9 = 8;
                  v8 = 8;
                  return v9 + v8 + v14 + v13;
                }

                goto LABEL_688;
              }

              v13 = 2;
              v9 = 8;
              goto LABEL_418;
            }

            v13 = 2;
            v14 = 4;
LABEL_578:
            v9 = 8;
            v8 = 1;
            return v9 + v8 + v14 + v13;
          }

          v85 = *(a2 + 32);
          if (v85 >= 0x40)
          {
            if (v85 >= 0x4000)
            {
              if (v85 >> 30)
              {
                if (v85 >> 62)
                {
                  goto LABEL_688;
                }

                v13 = 2;
                goto LABEL_243;
              }

              v13 = 2;
              v9 = 4;
              goto LABEL_569;
            }

            v9 = 4;
            v13 = 2;
LABEL_421:
            v8 = 2;
            v14 = 4;
            return v9 + v8 + v14 + v13;
          }

          v13 = 2;
          v9 = 4;
LABEL_332:
          v8 = 1;
          v14 = 4;
          return v9 + v8 + v14 + v13;
        }

        v76 = *(a2 + 32);
        if (v76 >= 0x40)
        {
          if (v76 >= 0x4000)
          {
            if (v76 >> 30)
            {
              if (v76 >> 62)
              {
                goto LABEL_688;
              }

              v14 = 4;
              v9 = 2;
              goto LABEL_236;
            }

            v9 = 2;
            v14 = 4;
LABEL_487:
            v8 = 4;
            v13 = 2;
            return v9 + v8 + v14 + v13;
          }

          v14 = 4;
          v9 = 2;
LABEL_572:
          v8 = 2;
          v13 = 2;
          return v9 + v8 + v14 + v13;
        }

        v14 = 4;
        v9 = 2;
LABEL_500:
        v8 = 1;
        v13 = 2;
        return v9 + v8 + v14 + v13;
      }

      v65 = *(a2 + 32);
      if (v65 < 0x40)
      {
        v13 = 2;
        v14 = 4;
        goto LABEL_472;
      }

      if (v65 < 0x4000)
      {
        v14 = 4;
        v9 = 1;
        goto LABEL_572;
      }

      if (!(v65 >> 30))
      {
        v13 = 2;
        v9 = 1;
        goto LABEL_569;
      }

      if (v65 >> 62)
      {
        goto LABEL_688;
      }

      v13 = 2;
      v14 = 4;
LABEL_316:
      v9 = 1;
      v8 = 8;
      return v9 + v8 + v14 + v13;
    }

    v38 = *(a2 + 24);
    if (v38 < 0x40)
    {
      v53 = *(a2 + 32);
      if (v53 < 0x40)
      {
        v14 = 2;
        v8 = 1;
        v9 = 1;
        v13 = 2;
        return v9 + v8 + v14 + v13;
      }

      if (v53 >= 0x4000)
      {
        if (!(v53 >> 30))
        {
          v14 = 2;
          v9 = 1;
          goto LABEL_487;
        }

        if (v53 >> 62)
        {
          goto LABEL_688;
        }

        v14 = 2;
        v9 = 1;
LABEL_236:
        v8 = 8;
        v13 = 2;
        return v9 + v8 + v14 + v13;
      }

      v9 = 1;
    }

    else
    {
      if (v38 < 0x4000)
      {
        v64 = *(a2 + 32);
        if (v64 < 0x40)
        {
          v9 = 2;
          v8 = 1;
        }

        else if (v64 < 0x4000)
        {
          v8 = 2;
          v9 = 2;
        }

        else if (v64 >> 30)
        {
          if (v64 >> 62)
          {
            goto LABEL_688;
          }

          v9 = 2;
          v8 = 8;
        }

        else
        {
          v9 = 2;
          v8 = 4;
        }

LABEL_567:
        v14 = 2;
        v13 = 2;
        return v9 + v8 + v14 + v13;
      }

      if (v38 >> 30)
      {
        if (v38 >> 62)
        {
          goto LABEL_688;
        }

        v39 = *(a2 + 32);
        if (v39 < 0x40)
        {
          v14 = 2;
          v9 = 8;
          goto LABEL_500;
        }

        if (v39 >= 0x4000)
        {
          if (v39 >> 30)
          {
            if (!(v39 >> 62))
            {
              v14 = 2;
              v8 = 8;
              v9 = 8;
              v13 = 2;
              return v9 + v8 + v14 + v13;
            }

            goto LABEL_688;
          }

          v14 = 2;
          v9 = 8;
          goto LABEL_487;
        }

        v9 = 8;
        goto LABEL_404;
      }

      v75 = *(a2 + 32);
      if (v75 < 0x40)
      {
        v14 = 2;
        v9 = 4;
        goto LABEL_500;
      }

      if (v75 >= 0x4000)
      {
        if (!(v75 >> 30))
        {
          v14 = 2;
          v8 = 4;
          v9 = 4;
          v13 = 2;
          return v9 + v8 + v14 + v13;
        }

        if (v75 >> 62)
        {
          goto LABEL_688;
        }

        v14 = 2;
        v9 = 4;
        goto LABEL_236;
      }

      v9 = 4;
    }

LABEL_404:
    v8 = 2;
    goto LABEL_567;
  }

  v30 = *(a2 + 24);
  if (v30 <= 0x3F)
  {
    v40 = *(a2 + 32);
    if (v40 >= 0x40)
    {
      if (v40 >= 0x4000)
      {
        if (v40 >> 30)
        {
          if (v40 >> 62)
          {
            goto LABEL_688;
          }

          v13 = 2;
          v14 = 1;
LABEL_165:
          v8 = 8;
          v9 = 1;
          return v9 + v8 + v14 + v13;
        }

        v13 = 2;
        v14 = 1;
        goto LABEL_396;
      }

      v14 = 1;
LABEL_309:
      v13 = 2;
      goto LABEL_310;
    }

    v13 = 2;
    v14 = 1;
LABEL_472:
    v8 = 1;
    v9 = 1;
    return v9 + v8 + v14 + v13;
  }

  if (!(v30 >> 14))
  {
    v52 = *(a2 + 32);
    if (v52 < 0x40)
    {
      v13 = 2;
      v14 = 1;
      goto LABEL_318;
    }

    if (v52 < 0x4000)
    {
      v14 = 1;
      v13 = 2;
      goto LABEL_647;
    }

    if (!(v52 >> 30))
    {
      v14 = 1;
LABEL_484:
      v13 = 2;
      goto LABEL_485;
    }

    if (v52 >> 62)
    {
      goto LABEL_688;
    }

    v13 = 2;
    goto LABEL_277;
  }

  if (!(v30 >> 30))
  {
    v63 = *(a2 + 32);
    if (v63 < 0x40)
    {
      v13 = 2;
      v8 = 1;
    }

    else if (v63 < 0x4000)
    {
      v13 = 2;
      v8 = 2;
    }

    else if (v63 >> 30)
    {
      if (v63 >> 62)
      {
        goto LABEL_688;
      }

      v13 = 2;
      v8 = 8;
    }

    else
    {
      v13 = 2;
      v8 = 4;
    }

    v9 = 4;
    v14 = 1;
    return v9 + v8 + v14 + v13;
  }

  if (!(v30 >> 62))
  {
    v31 = *(a2 + 32);
    if (v31 < 0x40)
    {
      v13 = 2;
      v8 = 1;
    }

    else if (v31 < 0x4000)
    {
      v13 = 2;
      v8 = 2;
    }

    else if (v31 >> 30)
    {
      if (v31 >> 62)
      {
        goto LABEL_688;
      }

      v13 = 2;
      v8 = 8;
    }

    else
    {
      v13 = 2;
      v8 = 4;
    }

    v9 = 8;
    v14 = 1;
    return v9 + v8 + v14 + v13;
  }

LABEL_688:
  result = sub_182AD3EA8();
  __break(1u);
  return result;
}