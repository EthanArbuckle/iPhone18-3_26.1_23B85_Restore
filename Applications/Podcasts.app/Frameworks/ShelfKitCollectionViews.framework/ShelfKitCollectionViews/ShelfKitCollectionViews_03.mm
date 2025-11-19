uint64_t sub_616AC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTMLFileReference();
  __chkstk_darwin(v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[0] = sub_3041E8();
  v7 = *(v29[0] - 8);
  __chkstk_darwin(v29[0]);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE2C8);
  __chkstk_darwin(v10 - 8);
  v12 = v29 - v11;
  v13 = [objc_opt_self() defaultManager];
  sub_301C08(*(v4 + 28));
  v15 = v14;
  v30[0] = 0;
  v16 = [v13 removeItemAtURL:v14 error:v30];

  v17 = v30[0];
  if (v16)
  {
    swift_getKeyPath();
    v30[0] = v2;
    sub_65244(&qword_3FE200, type metadata accessor for TTMLFileReferenceCache);
    v18 = v17;
    sub_302D98();

    v30[0] = v2;
    swift_getKeyPath();
    sub_302DB8();

    swift_beginAccess();
    sub_61B44(a1, v12);
    sub_EB68(v12, &qword_3FE2C8);
    swift_endAccess();
    v30[0] = v2;
    swift_getKeyPath();
    sub_302DA8();
  }

  else
  {
    v20 = v30[0];
    sub_301B48();

    swift_willThrow();
    sub_304138();
    sub_649C0(a1, v6);
    v21 = sub_3041D8();
    v22 = sub_30C798();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30[0] = v24;
      *v23 = 136315138;
      sub_301CB8();
      sub_65244(&qword_3FE2D0, &type metadata accessor for URL);
      v25 = sub_30D6D8();
      v27 = v26;
      sub_64A24(v6);
      v28 = sub_191264(v25, v27, v30);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_0, v21, v22, "Failed to remove TTML file: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {

      sub_64A24(v6);
    }

    return (*(v7 + 8))(v9, v29[0]);
  }
}

uint64_t sub_61B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTMLFileReference();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v9 = v2[1];
  v11 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v12 = *(v9 + 16);
  if (*v2)
  {

    v13 = sub_645A8(a1, v11, v12, (v10 + 16), v10 + 32);
    v15 = v14;
    v17 = v16;

    if (v15)
    {
      goto LABEL_13;
    }

LABEL_16:
    sub_637D0(v13, v17, a2);
    v25 = 0;
    return (*(v6 + 56))(a2, v25, 1, v5);
  }

  if (v12)
  {
    v28 = a2;
    v13 = 0;
    v18 = *(v6 + 72);
    while (1)
    {
      sub_649C0(v11, v8);
      v19 = *(v5 + 32);
      v20 = *&v8[v19];
      v21 = *&v8[v19 + 8];
      v22 = (a1 + v19);
      if (v20 == *v22 && v21 == v22[1])
      {
        break;
      }

      v24 = sub_30D728();
      sub_64A24(v8);
      if (v24)
      {
        goto LABEL_15;
      }

      ++v13;
      v11 += v18;
      if (v12 == v13)
      {
        v25 = 1;
        a2 = v28;
        return (*(v6 + 56))(a2, v25, 1, v5);
      }
    }

    sub_64A24(v8);
LABEL_15:
    v17 = 0;
    a2 = v28;
    goto LABEL_16;
  }

LABEL_13:
  v25 = 1;
  return (*(v6 + 56))(a2, v25, 1, v5);
}

void sub_61D18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - v1;
  v3 = sub_301CB8();
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_301B78();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultManager];
  if (qword_3FA980 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, qword_3FE110);
  if (qword_3FA978 != -1)
  {
    v22 = v10;
    swift_once();
    v10 = v22;
  }

  v11 = off_3FE108;
  v12 = *(&dword_10 + off_3FE108);
  if (v12)
  {
    v24 = v9;
    v25 = v10;
    v13 = sub_269F4C(v12, 0);
    v14 = sub_26B0F4(&v33, v13 + 4, v12, v11);
    v27 = v34;
    v28 = v14;
    v26 = v35;

    sub_649B0();
    if (v28 != v12)
    {
      __break(1u);
      return;
    }

    v9 = v24;
  }

  v15 = sub_30C768();

  if (v15)
  {
    swift_getKeyPath();
    v16 = v32;
    v33 = v32;
    sub_65244(&qword_3FE200, type metadata accessor for TTMLFileReferenceCache);
    sub_302D98();

    v33 = v16;
    swift_getKeyPath();
    sub_302DB8();

    swift_beginAccess();
    *(v16 + 16) = 0;
    *(v16 + 24) = _swiftEmptyArrayStorage;

    v33 = v16;
    swift_getKeyPath();
    sub_302DA8();

    v28 = v15;
    sub_30C6A8();
    sub_301B68();
    if (v34)
    {
      v17 = (v29 + 56);
      v18 = (v29 + 32);
      v19 = (v29 + 8);
      do
      {
        v20 = swift_dynamicCast();
        v21 = *v17;
        if (v20)
        {
          v21(v2, 0, 1, v3);
          (*v18)(v5, v2, v3);
          sub_62214(v5);
          (*v19)(v5, v3);
        }

        else
        {
          v21(v2, 1, 1, v3);
          sub_EB68(v2, &qword_3FB8E0);
        }

        sub_301B68();
      }

      while (v34);
    }

    (*(v30 + 8))(v8, v31);
  }
}

Swift::Int sub_62214(uint64_t a1)
{
  v100 = sub_301CB8();
  v89 = *(v100 - 8);
  __chkstk_darwin(v100);
  v88 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_303248();
  v87 = *(v92 - 8);
  __chkstk_darwin(v92);
  v4 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for TTMLFileReference();
  v90 = *(v99 - 8);
  v5 = __chkstk_darwin(v99);
  v94 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v96 = &v80 - v8;
  __chkstk_darwin(v7);
  v95 = &v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE208);
  __chkstk_darwin(v10 - 8);
  v12 = &v80 - v11;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE210);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v93 = &v80 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0);
  __chkstk_darwin(v14 - 8);
  v16 = &v80 - v15;
  v103 = sub_301DC8();
  v102 = *(v103 - 8);
  v17 = __chkstk_darwin(v103);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v101 = &v80 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE218);
  __chkstk_darwin(v21 - 8);
  v23 = &v80 - v22;
  v24 = sub_301AF8();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3FA978 != -1)
  {
    swift_once();
  }

  sub_301BE8();
  v86 = a1;
  (*(v25 + 56))(v23, 0, 1, v24);
  (*(v25 + 32))(v27, v23, v24);
  v29 = sub_301AD8();
  if (v29 == 2 || (v29 & 1) == 0)
  {
    return (*(v25 + 8))(v27, v24);
  }

  sub_301AC8();
  v30 = v102;
  v31 = v103;
  if ((*(v102 + 48))(v16, 1, v103) == 1)
  {
    (*(v25 + 8))(v27, v24);
    v32 = &unk_40BAB0;
    v33 = v16;
    return sub_EB68(v33, v32);
  }

  (*(v30 + 32))(v101, v16, v31);
  v34 = sub_301AE8();
  if (v35)
  {
    (*(v30 + 8))(v101, v31);
    return (*(v25 + 8))(v27, v24);
  }

  v84 = v34;
  sub_301BD8();
  if (qword_3FA980 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v100, qword_3FE110);
  v114._countAndFlagsBits = sub_301BD8();
  v85 = sub_30C188(v114);

  if (qword_3FA988 != -1)
  {
    swift_once();
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE220);
  __swift_project_value_buffer(v36, qword_3FE128);
  sub_303048();
  v37 = v103;

  v38 = v97;
  v39 = v98;
  if ((*(v97 + 48))(v12, 1, v98) == 1)
  {
    (*(v102 + 8))(v101, v37);
    (*(v25 + 8))(v27, v24);
    v32 = &qword_3FE208;
    v33 = v12;
    return sub_EB68(v33, v32);
  }

  (*(v38 + 32))(v93, v12, v39);
  sub_303058();

  v83 = *(&v106 + 1);
  v85 = v106;
  v40 = *(v102 + 16);
  v82 = v102 + 16;
  v81 = v40;
  v40(v19, v101, v37);
  sub_303058();

  result = v84;
  if (v84 < 0)
  {
    __break(1u);
  }

  else
  {
    v41 = v109;
    sub_303238();
    v42 = v89;
    v43 = v88;
    (*(v89 + 16))(v88, v86, v100);
    v44 = v99;
    v45 = v95;
    v46 = (v95 + *(v99 + 32));
    v47 = v83;
    *v46 = v85;
    v46[1] = v47;
    v81(v45, v19, v103);
    *(v45 + *(v44 + 20)) = v41;
    v48 = v87;
    (*(v87 + 16))(v45 + *(v44 + 24), v4, v92);
    sub_301BC8();
    (*(v42 + 8))(v43, v100);
    (*(v48 + 8))(v4, v92);
    v49 = *(v102 + 8);
    v102 += 8;
    v49(v19, v103);
    swift_getKeyPath();
    v50 = OBJC_IVAR____TtC23ShelfKitCollectionViews22TTMLFileReferenceCache___observationRegistrar;
    v51 = v91;
    *&v104 = v91;
    v52 = sub_65244(&qword_3FE200, type metadata accessor for TTMLFileReferenceCache);
    sub_302D98();

    *&v104 = v51;
    swift_getKeyPath();
    v100 = v50;
    v92 = v52;
    sub_302DB8();

    swift_beginAccess();
    v54 = *(v51 + 16);
    v53 = *(v51 + 24);
    v55 = v53 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v56 = v83;
    if (!v54)
    {
      v66 = *(v53 + 16);
      if (v66)
      {
        v67 = *(v90 + 72);
        while (1)
        {
          v68 = v94;
          sub_649C0(v55, v94);
          v69 = (v68 + *(v99 + 32));
          if (*v69 == v85 && v69[1] == v56)
          {
            break;
          }

          v71 = sub_30D728();
          v72 = v68;
          v73 = v71;
          sub_64A24(v72);
          if (v73)
          {
            goto LABEL_45;
          }

          v55 += v67;
          if (!--v66)
          {
            goto LABEL_41;
          }
        }

        sub_64A24(v68);
        goto LABEL_45;
      }

      goto LABEL_41;
    }

    sub_30D7F8();

    sub_30C1F8();
    result = sub_30D858();
    v57 = 1 << *(v54 + 16);
    v58 = __OFSUB__(v57, 1);
    v59 = v57 - 1;
    if (!v58)
    {
      v60 = v59 & result;
      v61 = sub_303EB8();
      *&v110 = v54 + 16;
      *(&v110 + 1) = v54 + 32;
      *&v111 = v60;
      *(&v111 + 1) = v61;
      *&v112 = v62;
      *(&v112 + 1) = v63;
      v113 = 0;
      v64 = sub_303EE8();
      if ((v65 & 1) == 0)
      {
        v94 = v54;
        v74 = *(v90 + 72);
        while (1)
        {
          v75 = v96;
          sub_649C0(v55 + v74 * v64, v96);
          v76 = (v75 + *(v99 + 32));
          if (*v76 == v85 && v76[1] == v56)
          {
            break;
          }

          v78 = sub_30D728();
          sub_64A24(v75);
          if (v78)
          {
            goto LABEL_43;
          }

          sub_303F08();
          v105 = v111;
          v104 = v110;
          v106 = v112;
          v107 = v113;
          v64 = sub_303EE8();
          if (v79)
          {
            v51 = v91;
            goto LABEL_40;
          }
        }

        sub_64A24(v75);
LABEL_43:

        v51 = v91;
        goto LABEL_45;
      }

      v51 = v91;
LABEL_40:

LABEL_41:
      sub_6479C(v95);
LABEL_45:
      swift_endAccess();
      v108 = v51;
      swift_getKeyPath();
      sub_302DA8();

      sub_64A24(v95);
      (*(v97 + 8))(v93, v98);
      v49(v101, v103);
      return (*(v25 + 8))(v27, v24);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_630A4()
{

  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews22TTMLFileReferenceCache___observationRegistrar;
  v2 = sub_302DD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTMLFileReferenceCache()
{
  result = qword_3FE170;
  if (!qword_3FE170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_631A4()
{
  result = sub_302DD8();
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

unsigned __int8 *sub_63240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_64D64();

  result = sub_30C2E8();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_2A1768();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_30D598();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_637D0@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    return sub_63934(a1, a3);
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= sub_303F28())
  {
LABEL_16:
    sub_63934(a1, a3);
    return sub_63A50();
  }

  result = swift_isUniquelyReferenced_native();
  v11 = *v3;
  if ((result & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = sub_303F38();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {

    result = sub_63AF0(a2, (v11 + 16), v11 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_63DB4(a1, a1 + 1, v6, (v11 + 16), v11 + 32);

      return sub_63934(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

size_t sub_63934@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AF820(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for TTMLFileReference() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_64A80(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_63A50()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = sub_303F48();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_642D0(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

unint64_t sub_63AF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v7 = type metadata accessor for TTMLFileReference();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_303EB8();
  *&v23 = a2;
  *(&v23 + 1) = a3;
  *&v24 = a1;
  *(&v24 + 1) = v11;
  *&v25 = v12;
  *(&v25 + 1) = v13;
  v26 = 0;
  sub_303F08();
  if (*(&v24 + 1))
  {
    v21 = a3;
    v14 = sub_303EC8();
    while (1)
    {
      v31 = v23;
      v32 = v24;
      v33 = v25;
      v34 = v26;
      result = sub_303EE8();
      if (v16)
      {
LABEL_21:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v17 = *(v22 + 8);
      if (result >= *(v17 + 16))
      {
        goto LABEL_19;
      }

      sub_649C0(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v10);
      sub_30D7F8();
      sub_30C1F8();
      v18 = sub_30D858();
      result = sub_64A24(v10);
      v19 = 1 << *a2;
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_20;
      }

      v20 = (v19 - 1) & v18;
      if (a1 >= v14)
      {
        if (v20 < v14)
        {
          goto LABEL_3;
        }
      }

      else if (v20 >= v14)
      {
        goto LABEL_13;
      }

      if (a1 >= v20)
      {
LABEL_13:
        v27 = v23;
        v28 = v24;
        v29 = v25;
        v30 = v26;
        sub_303EE8();
        a1 = v28;
        sub_303ED8();
      }

LABEL_3:
      sub_303F08();
      if (!*(&v24 + 1))
      {
        return sub_303ED8();
      }
    }
  }

  return sub_303ED8();
}

void sub_63DB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v57 = a3;
  v59 = type metadata accessor for TTMLFileReference();
  v9 = *(v59 - 8);
  v10 = __chkstk_darwin(v59);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v56 - v13;
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v15 >= 1)
  {
    v16 = *(v57 + 16);
    if (a1 >= (v16 - v15) / 2)
    {
      if (__OFSUB__(v16, a2))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if ((v16 - a2) >= sub_303F18() / 3)
      {
LABEL_51:
        v51 = sub_303EB8();
        *&v64 = a4;
        *(&v64 + 1) = a5;
        *&v65 = 0;
        *(&v65 + 1) = v51;
        *&v66 = v52;
        *(&v66 + 1) = v53;
        v67 = 0;
        while (1)
        {
          v60 = v64;
          v61 = v65;
          v62 = v66;
          v63 = v67;
          v54 = sub_303EE8();
          if ((v55 & 1) == 0 && v54 >= a2)
          {
            if (__OFSUB__(v54, v15))
            {
              goto LABEL_59;
            }

            sub_303EF8();
          }

          sub_303F08();
          if (!v65)
          {
            return;
          }
        }
      }

      if (v16 < a2)
      {
        goto LABEL_69;
      }

      if (a2 < 0)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (v16 != a2)
      {
        if (v16 <= a2)
        {
LABEL_71:
          __break(1u);
          return;
        }

        v58 = v57 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        v34 = *(v9 + 72);

        while (1)
        {
          sub_649C0(v58 + v34 * a2, v12);
          sub_30D7F8();
          sub_30C1F8();
          v35 = sub_30D858();
          v36 = 1 << *a4;
          v22 = __OFSUB__(v36, 1);
          v37 = v36 - 1;
          if (v22)
          {
            goto LABEL_60;
          }

          v38 = v37 & v35;
          v39 = sub_303EB8();
          *&v60 = a4;
          *(&v60 + 1) = a5;
          *&v61 = v38;
          *(&v61 + 1) = v39;
          *&v62 = v40;
          *(&v62 + 1) = v41;
          v63 = 0;
          while (*(&v61 + 1))
          {
            v64 = v60;
            v65 = v61;
            v66 = v62;
            v67 = v63;
            v42 = sub_303EE8();
            if ((v43 & 1) == 0 && v42 == a2)
            {
              break;
            }

            sub_303F08();
          }

          v44 = a2 + 1;
          v45 = __OFADD__(a2, 1);
          if (__OFSUB__(a2, v15))
          {
            goto LABEL_61;
          }

          sub_303EF8();
          sub_64A24(v12);
          if (v45)
          {
            goto LABEL_62;
          }

          ++a2;
          if (v44 == v16)
          {

            return;
          }
        }
      }
    }

    else
    {
      if (sub_303F18() / 3 <= a1)
      {
        v46 = sub_303EB8();
        *&v64 = a4;
        *(&v64 + 1) = a5;
        *&v65 = 0;
        *(&v65 + 1) = v46;
        *&v66 = v47;
        *(&v66 + 1) = v48;
        v67 = 0;
        while (1)
        {
          v60 = v64;
          v61 = v65;
          v62 = v66;
          v63 = v67;
          v49 = sub_303EE8();
          if ((v50 & 1) == 0 && v49 < a1)
          {
            if (__OFADD__(v49, v15))
            {
              __break(1u);
              goto LABEL_51;
            }

            sub_303EF8();
          }

          sub_303F08();
          if (!v65)
          {
            goto LABEL_18;
          }
        }
      }

      if (a1 < 0)
      {
        goto LABEL_67;
      }

      if (v16 < a1)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if (a1)
      {
        v17 = v57 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        v18 = *(v9 + 72);

        v19 = 0;
        while (1)
        {
          sub_649C0(v17 + v18 * v19, v14);
          sub_30D7F8();
          sub_30C1F8();
          v20 = sub_30D858();
          v21 = 1 << *a4;
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v22)
          {
            break;
          }

          v24 = v23 & v20;
          v25 = sub_303EB8();
          *&v60 = a4;
          *(&v60 + 1) = a5;
          *&v61 = v24;
          *(&v61 + 1) = v25;
          *&v62 = v26;
          *(&v62 + 1) = v27;
          v63 = 0;
          while (*(&v61 + 1))
          {
            v64 = v60;
            v65 = v61;
            v66 = v62;
            v67 = v63;
            v28 = sub_303EE8();
            if ((v29 & 1) == 0 && v28 == v19)
            {
              break;
            }

            sub_303F08();
          }

          if (__OFADD__(v19, v15))
          {
            goto LABEL_58;
          }

          ++v19;
          sub_303EF8();
          sub_64A24(v14);
          if (v19 == a1)
          {

            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_18:
      v30 = a4[1];
      if (__OFSUB__(v30 >> 6, v15))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v31 = 1 << *a4;
      v22 = __OFSUB__(v31, 1);
      v32 = v31 - 1;
      if (v22)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v33 = (v32 & (((v30 >> 6) - v15) >> 63)) + (v30 >> 6) - v15;
      if (v33 < v32)
      {
        v32 = 0;
      }

      a4[1] = a4[1] & 0x3FLL | ((v33 - v32) << 6);
    }
  }
}

uint64_t sub_642D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = sub_303F48();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = sub_303F58();
    sub_64350(a1, (v9 + 16), v9 + 32);
    return v9;
  }

  return result;
}

Swift::Int sub_643EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v23 = type metadata accessor for TTMLFileReference();
  result = __chkstk_darwin(v23);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2;
  if (a2)
  {
    if ((v32 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v12 = *(v8 + 72);
      while (1)
      {
        sub_649C0(v24 + v12 * v11, v10);
        sub_30D7F8();
        sub_30C1F8();
        result = sub_30D858();
        v13 = 1 << *a3;
        v14 = __OFSUB__(v13, 1);
        v15 = v13 - 1;
        if (v14)
        {
          break;
        }

        v16 = v15 & result;
        v17 = sub_303EB8();
        v19 = v18;
        v21 = v20;
        sub_64A24(v10);
        v25 = a3;
        v26 = a4;
        v27 = v16;
        v28 = v17;
        v29 = v19;
        v30 = v21;
        v31 = 0;
        while (v28)
        {
          sub_303F08();
        }

        result = sub_303EF8();
        if (++v11 == v32)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_645A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = type metadata accessor for TTMLFileReference();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30D7F8();
  v13 = (a1 + *(v9 + 32));
  v14 = *v13;
  v15 = v13[1];
  sub_30C1F8();
  result = sub_30D858();
  v17 = 1 << *a4;
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v20 = v19 & result;
    v21 = sub_303EB8();
    *&v33 = a4;
    *(&v33 + 1) = a5;
    *&v34 = v20;
    *(&v34 + 1) = v21;
    *&v35 = v22;
    *(&v35 + 1) = v23;
    v36 = 0;
    v24 = sub_303EE8();
    if ((v25 & 1) == 0)
    {
      v26 = *(v10 + 72);
      while (1)
      {
        sub_649C0(a2 + v26 * v24, v12);
        v27 = &v12[*(v9 + 32)];
        if (*v27 == v14 && *(v27 + 1) == v15)
        {
          break;
        }

        v29 = sub_30D728();
        sub_64A24(v12);
        if ((v29 & 1) == 0)
        {
          sub_303F08();
          v31[1] = v33;
          v31[2] = v34;
          v31[3] = v35;
          v32 = v36;
          v24 = sub_303EE8();
          if ((v30 & 1) == 0)
          {
            continue;
          }
        }

        return v24;
      }

      sub_64A24(v12);
    }

    return v24;
  }

  return result;
}

uint64_t sub_6479C(uint64_t a1)
{
  v3 = type metadata accessor for TTMLFileReference();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_649C0(a1, v6);
  v7 = v1 + 1;
  v8 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1752EC(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_1752EC(v10 > 1, v11 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v11 + 1;
  result = sub_64A80(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11);
  v1[1] = v8;
  if (*v1)
  {
    swift_beginAccess();
    if (sub_303F18() > v11)
    {
      result = swift_isUniquelyReferenced_native();
      v13 = *v1;
      if ((result & 1) == 0)
      {
        if (!v13)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v14 = sub_303F38();

        *v1 = v14;
        v13 = v14;
      }

      if (v13)
      {
        return sub_303ED8();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_63A50();
}

uint64_t sub_649C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTMLFileReference();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_64A24(uint64_t a1)
{
  v2 = type metadata accessor for TTMLFileReference();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_64A80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTMLFileReference();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_64AE4()
{
  result = qword_3FE288;
  if (!qword_3FE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE288);
  }

  return result;
}

uint64_t sub_64B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTMLFileReference();
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8 != *(a2 + 16))
  {
    return 0;
  }

  if (v8 && a1 != a2)
  {
    v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v10 = a1 + v9;
    v11 = a2 + v9;
    v12 = *(v5 + 72);
    do
    {
      sub_649C0(v10, v7);
      v13 = *(v4 + 32);
      v14 = *&v7[v13];
      v15 = *&v7[v13 + 8];
      v16 = (v11 + v13);
      if (v14 == *v16 && v15 == v16[1])
      {
        sub_64A24(v7);
      }

      else
      {
        v18 = sub_30D728();
        sub_64A24(v7);
        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      v11 += v12;
      v10 += v12;
      --v8;
    }

    while (v8);
  }

  return 1;
}

uint64_t sub_64C98(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_30D598();
  }

  result = sub_64DB8(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_64D64()
{
  result = qword_3FE2B8;
  if (!qword_3FE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE2B8);
  }

  return result;
}

uint64_t sub_64DB8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_2A1B60(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_30C288();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_2A1B60(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_2A1B60(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_30C288();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_65244(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_652A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD548);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_6537C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD548);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TTMLFileReferenceListView()
{
  result = qword_3FE330;
  if (!qword_3FE330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6548C()
{
  sub_655D8(319, &qword_3FD5B8, &qword_3FD540, &unk_31B390, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_65580();
    if (v1 <= 0x3F)
    {
      sub_655D8(319, &qword_3FE348, &unk_3FE350, &unk_31B398, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_65580()
{
  if (!qword_3FE340)
  {
    type metadata accessor for TTMLFileReferenceCache();
    v0 = sub_306A48();
    if (!v1)
    {
      atomic_store(v0, &qword_3FE340);
    }
  }
}

void sub_655D8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_65658()
{
  v1 = v0;
  v2 = sub_306BB8();
  v19 = *(v2 - 8);
  v20 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_305A08();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD518);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD540);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  sub_EB00(v1, v11, &qword_3FD518);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_68AFC(v11, v14);
  }

  else
  {
    sub_30C7A8();
    v15 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD7D0);
  if ((*(*(v16 - 8) + 48))(v14, 1, v16) == 1)
  {
    sub_EB68(v14, &qword_3FD540);
    v17 = 0;
  }

  else
  {
    sub_306B18();
    sub_EB68(v14, &qword_3FD7D0);
    v17 = sub_306BA8();
    (*(v19 + 8))(v4, v20);
  }

  return v17 & 1;
}

uint64_t sub_659AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = type metadata accessor for TTMLFileReferenceListView();
  v4 = v3 - 8;
  v44 = *(v3 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v3);
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE388);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE390);
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v11 = &v32 - v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE398);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v33 = &v32 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE3A0);
  __chkstk_darwin(v34);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE3A8);
  v40 = *(v15 - 8);
  v41 = v15;
  __chkstk_darwin(v15);
  v35 = &v32 - v16;
  v17 = (v2 + *(v4 + 32));
  v19 = *v17;
  v18 = v17[1];
  v50 = v19;
  v51 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE3B0);
  sub_306A38();
  v47 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE3B8);
  sub_6862C();
  sub_3062A8();
  v20 = sub_EC8C(&qword_3FE3F8, &qword_3FE388);
  sub_306658();
  (*(v7 + 8))(v9, v6);
  sub_65658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE400);
  sub_305628();
  *(swift_allocObject() + 16) = xmmword_315430;
  sub_305618();
  v48 = v6;
  v49 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v33;
  v22 = v37;
  sub_3067D8();

  (*(v39 + 8))(v11, v22);
  v23 = sub_306CA8();
  LOBYTE(v4) = sub_65658();
  (*(v36 + 32))(v14, v21, v38);
  v24 = &v14[*(v34 + 36)];
  *v24 = v23;
  v24[8] = v4 & 1;
  v46 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE408);
  sub_68810();
  sub_EC8C(&qword_3FE428, &qword_3FE408);
  v25 = v35;
  sub_3067C8();
  sub_6897C(v14);
  v26 = v42;
  sub_68A94(v2, v42, type metadata accessor for TTMLFileReferenceListView);
  v27 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v28 = swift_allocObject();
  sub_68DF4(v26, v28 + v27, type metadata accessor for TTMLFileReferenceListView);
  v29 = v45;
  (*(v40 + 32))(v45, v25, v41);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE430);
  v31 = (v29 + *(result + 36));
  *v31 = sub_689E8;
  v31[1] = v28;
  v31[2] = 0;
  v31[3] = 0;
  return result;
}

uint64_t sub_660CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for TTMLFileReferenceListView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v22 = *(a1 + *(__chkstk_darwin(v3 - 8) + 28) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE438);
  sub_306A18();
  swift_getKeyPath();
  v21 = v27;
  sub_68D98(&qword_3FE200, type metadata accessor for TTMLFileReferenceCache);
  sub_302D98();

  swift_beginAccess();
  v6 = *(v27 + 16);
  v7 = *(v27 + 24);

  v25 = v6;
  v26 = v7;
  sub_68A94(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTMLFileReferenceListView);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_68DF4(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v8, type metadata accessor for TTMLFileReferenceListView);
  v18[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE4B0);
  v18[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE4B8);
  v18[0] = sub_EC8C(&qword_3FE4C0, &qword_3FE4B0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE3C8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE3D0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB920);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE3D8);
  v13 = sub_EC8C(&qword_3FE3E0, &qword_3FB920);
  v14 = sub_EC8C(&qword_3FE3E8, &qword_3FE3D8);
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_EC8C(&qword_3FE3F0, &qword_3FE3D0);
  v21 = v9;
  v22 = v10;
  v23 = OpaqueTypeConformance2;
  v24 = v16;
  swift_getOpaqueTypeConformance2();
  sub_68D98(&qword_3FE4C8, type metadata accessor for TTMLFileReference);
  return sub_306B48();
}

uint64_t sub_664C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE3C8);
  v5 = *(v4 - 8);
  v16 = v4;
  v17 = v5;
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = sub_305BE8();
  v26 = 0;
  sub_673A4(v27);
  *&v25[55] = v28;
  *&v25[39] = v27[2];
  *&v25[23] = v27[1];
  *&v25[7] = v27[0];
  *&v24[17] = *&v25[16];
  *&v24[33] = *&v25[32];
  *&v24[49] = *&v25[48];
  *&v23 = v8;
  *(&v23 + 1) = 0x4024000000000000;
  v24[0] = v26;
  *&v24[64] = *(&v28 + 1);
  *&v24[1] = *v25;
  v21 = v2;
  v22 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB920);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE3D8);
  v11 = sub_EC8C(&qword_3FE3E0, &qword_3FB920);
  v12 = sub_EC8C(&qword_3FE3E8, &qword_3FE3D8);
  sub_306508();
  v29[2] = *&v24[16];
  v29[3] = *&v24[32];
  v29[4] = *&v24[48];
  v30 = *&v24[64];
  v29[0] = v23;
  v29[1] = *v24;
  sub_EB68(v29, &qword_3FB920);
  v19 = v15;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE3D0);
  *&v23 = v9;
  *(&v23 + 1) = v10;
  *v24 = v11;
  *&v24[8] = v12;
  swift_getOpaqueTypeConformance2();
  sub_EC8C(&qword_3FE3F0, &qword_3FE3D0);
  v13 = v16;
  sub_3065A8();
  return (*(v17 + 8))(v7, v13);
}

uint64_t sub_667D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE440);
  __chkstk_darwin(v19);
  v4 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE448);
  v5 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = &v17 - v6;
  v8 = sub_305DE8();
  __chkstk_darwin(v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE450);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  sub_305DB8();
  sub_304FF8();
  sub_68D98(&qword_3FE458, &type metadata accessor for EditButton);
  sub_305608();
  sub_305DD8();
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE460);
  sub_EC8C(&qword_3FE468, &qword_3FE460);
  sub_305608();
  v13 = *(v19 + 48);
  (*(v10 + 16))(v4, v12, v9);
  v14 = &v4[v13];
  v15 = v18;
  (*(v5 + 16))(v14, v7, v18);
  sub_305C38();
  (*(v5 + 8))(v7, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_66B40@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE470);
  v4 = __chkstk_darwin(v3 - 8);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = type metadata accessor for TTMLFileReferenceListView();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD678);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB808);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v33 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  sub_304FA8();
  v19 = sub_304FC8();
  (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  sub_68A94(a1, &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTMLFileReferenceListView);
  v20 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v21 = swift_allocObject();
  sub_68DF4(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for TTMLFileReferenceListView);
  v22 = v18;
  v32 = v18;
  sub_306A58();
  sub_66F60();
  v23 = *(v14 + 16);
  v24 = v33;
  v23(v33, v22, v13);
  v25 = v35;
  sub_EB00(v7, v35, &qword_3FE470);
  v26 = v36;
  v23(v36, v24, v13);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE478);
  v28 = &v26[*(v27 + 48)];
  *v28 = 0;
  v28[8] = 1;
  sub_EB00(v25, &v26[*(v27 + 64)], &qword_3FE470);
  sub_EB68(v7, &qword_3FE470);
  v29 = *(v14 + 8);
  v29(v32, v13);
  sub_EB68(v25, &qword_3FE470);
  return (v29)(v24, v13);
}

uint64_t sub_66F60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE480);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE488);
  __chkstk_darwin(v5);
  v7 = v17 - v6;
  v8 = type metadata accessor for TTMLFileReferenceListView();
  v9 = (v0 + *(v8 + 20));
  v11 = *v9;
  v10 = v9[1];
  v18 = v11;
  v19 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE438);
  sub_306A18();
  v12 = (v0 + *(v8 + 24));
  v14 = *v12;
  v13 = v12[1];
  v18 = v14;
  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE3B0);
  sub_306A18();
  v15 = sub_6135C(v17[1]);

  if (*(v15 + 16))
  {
    v18 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE490);
    sub_EC8C(&qword_3FE498, &qword_3FE490);
    sub_68D98(&qword_3FE4A0, type metadata accessor for TTMLFileReference);
    sub_306CD8();
    (*(v2 + 16))(v7, v4, v1);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_3FE4A8, &qword_3FE480);
    sub_305D48();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {

    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_3FE4A8, &qword_3FE480);
    return sub_305D48();
  }
}

uint64_t sub_67334()
{
  type metadata accessor for TTMLFileReferenceListView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE438);
  sub_306A18();
  sub_61D18();
}

uint64_t sub_673A4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TTMLFileReference();
  sub_E504();

  v2 = sub_3063C8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_28A88();
  v9 = sub_30D6D8();
  v11 = v10;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0;
  *(a1 + 56) = _swiftEmptyArrayStorage;
  sub_EBD8(v2, v4, v6 & 1);

  sub_EBD8(v9, v11, 0);

  sub_EBC8(v9, v11, 0);

  sub_EBC8(v2, v4, v6 & 1);
}

uint64_t sub_674F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v55 = a1;
  v58 = a3;
  v4 = type metadata accessor for TTMLFileReference();
  v5 = *(v4 - 8);
  v54 = *(v5 + 64);
  __chkstk_darwin(v4);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTMLFileReferenceListView();
  v52 = *(v7 - 8);
  v51 = *(v52 + 64);
  __chkstk_darwin(v7 - 8);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD678);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD490);
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = __chkstk_darwin(v12);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v59 = &v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE4D0);
  v17 = *(v16 - 8);
  v60 = v16;
  v61 = v17;
  v18 = __chkstk_darwin(v16);
  v50 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v47 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE4D8);
  v22 = *(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_315430;
  sub_68A94(a2, v23 + ((v22 + 32) & ~v22), type metadata accessor for TTMLFileReference);
  v62 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE490);
  sub_EC8C(&qword_3FE498, &qword_3FE490);
  sub_68D98(&qword_3FE4A0, type metadata accessor for TTMLFileReference);
  v47 = v21;
  sub_306CE8();
  sub_304FA8();
  v24 = sub_304FC8();
  (*(*(v24 - 8) + 56))(v11, 0, 1, v24);
  v25 = v49;
  sub_68A94(v55, v49, type metadata accessor for TTMLFileReferenceListView);
  v26 = a2;
  v27 = v48;
  sub_68A94(v26, v48, type metadata accessor for TTMLFileReference);
  v28 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v29 = (v51 + v22 + v28) & ~v22;
  v30 = swift_allocObject();
  sub_68DF4(v25, v30 + v28, type metadata accessor for TTMLFileReferenceListView);
  sub_68DF4(v27, v30 + v29, type metadata accessor for TTMLFileReference);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD4B8);
  sub_EC8C(&qword_3FD4C0, &qword_3FD4B8);
  v31 = v59;
  sub_306A58();
  v32 = *(v61 + 16);
  v33 = v50;
  v34 = v21;
  v35 = v60;
  v32(v50, v34, v60);
  v36 = v56;
  v37 = *(v56 + 16);
  v38 = v53;
  v39 = v31;
  v40 = v57;
  v37(v53, v39, v57);
  v41 = v58;
  v32(v58, v33, v35);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE4E8);
  v37(&v41[*(v42 + 48)], v38, v40);
  v43 = *(v36 + 8);
  v43(v59, v40);
  v44 = v60;
  v45 = *(v61 + 8);
  v45(v47, v60);
  v43(v38, v40);
  return (v45)(v33, v44);
}

uint64_t sub_67BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v42 = a2;
  v52 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE4D0);
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = __chkstk_darwin(v5);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v41 - v8;
  v9 = type metadata accessor for TTMLFileReference();
  v10 = *(v9 - 8);
  v45 = v9 - 8;
  v46 = v10;
  v44 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTMLFileReferenceListView();
  v43 = *(v13 - 8);
  v14 = *(v43 + 64);
  __chkstk_darwin(v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD678);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD490);
  v54 = *(v48 - 8);
  v18 = __chkstk_darwin(v48);
  v47 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v53 = &v41 - v20;
  sub_304FA8();
  v21 = sub_304FC8();
  (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
  sub_68A94(a1, &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTMLFileReferenceListView);
  sub_68A94(a2, v12, type metadata accessor for TTMLFileReference);
  v22 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v23 = *(v44 + 80);
  v24 = swift_allocObject();
  sub_68DF4(&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v22, type metadata accessor for TTMLFileReferenceListView);
  sub_68DF4(v12, v24 + ((v14 + v23 + v22) & ~v23), type metadata accessor for TTMLFileReference);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD4B8);
  sub_EC8C(&qword_3FD4C0, &qword_3FD4B8);
  v25 = v53;
  sub_306A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE4D8);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_315430;
  sub_68A94(v42, v26 + ((v23 + 32) & ~v23), type metadata accessor for TTMLFileReference);
  v56 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE490);
  sub_EC8C(&qword_3FE498, &qword_3FE490);
  sub_68D98(&qword_3FE4A0, type metadata accessor for TTMLFileReference);
  v27 = v55;
  sub_306CE8();
  v28 = *(v54 + 16);
  v29 = v47;
  v30 = v48;
  v28(v47, v25, v48);
  v31 = v49;
  v32 = v50;
  v33 = *(v50 + 16);
  v34 = v27;
  v35 = v51;
  v33(v49, v34, v51);
  v36 = v52;
  v28(v52, v29, v30);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE4E0);
  v33(&v36[*(v37 + 48)], v31, v35);
  v38 = *(v32 + 8);
  v38(v55, v35);
  v39 = *(v54 + 8);
  v39(v53, v30);
  v38(v31, v35);
  return (v39)(v29, v30);
}

uint64_t sub_68238(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTMLFileReferenceListView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE438);
  sub_306A18();
  sub_616AC(a2);
}

double sub_68304@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x6574656C6544;
  *a1 = xmmword_31B320;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_68324@<X0>(uint64_t *a1@<X8>)
{
  result = sub_306928();
  *a1 = result;
  return result;
}

uint64_t sub_68360(uint64_t a1)
{
  v2 = type metadata accessor for TTMLFileReference();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTMLFileReferenceListView();
  v7 = (a1 + *(v6 + 20));
  v9 = *v7;
  v8 = v7[1];
  v21 = v9;
  v22 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE438);
  sub_306A18();
  v10 = (a1 + *(v6 + 24));
  v11 = *v10;
  v12 = v10[1];
  v21 = *v10;
  v22 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE3B0);
  sub_306A18();
  v13 = sub_6135C(v19);

  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v16 = *(v3 + 72);
    do
    {
      sub_68A94(v15, v5, type metadata accessor for TTMLFileReference);
      sub_616AC(v5);
      sub_64A24(v5);
      v15 += v16;
      --v14;
    }

    while (v14);
  }

  v21 = v11;
  v22 = v12;

  sub_306A18();

  v19 = v11;
  v20 = v12;
  v18 = &_swiftEmptySetSingleton;
  sub_306A28();
}

double sub_6856C@<D0>(uint64_t a1@<X8>)
{
  result = 537274.198;
  *a1 = xmmword_31B330;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_6858C()
{
  type metadata accessor for TTMLFileReference();
  sub_E504();

  return sub_305188();
}

double sub_68600@<D0>(uint64_t a1@<X8>)
{
  result = 539193.218;
  *a1 = xmmword_31B340;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_6862C()
{
  result = qword_3FE3C0;
  if (!qword_3FE3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE3B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE3C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE3D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB920);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE3D8);
    sub_EC8C(&qword_3FE3E0, &qword_3FB920);
    sub_EC8C(&qword_3FE3E8, &qword_3FE3D8);
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_3FE3F0, &qword_3FE3D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE3C0);
  }

  return result;
}

unint64_t sub_68810()
{
  result = qword_3FE410;
  if (!qword_3FE410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE3A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE388);
    sub_EC8C(&qword_3FE3F8, &qword_3FE388);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_3FE418, &qword_3FE420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE410);
  }

  return result;
}

uint64_t sub_6897C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE3A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_68A20(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TTMLFileReferenceListView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_68A94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_68AFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_5()
{
  v1 = *(type metadata accessor for TTMLFileReferenceListView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD518);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD7D0);
    if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
    {

      v6 = *(v5 + 32);
      v7 = sub_306BB8();
      (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_68D98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_68DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(type metadata accessor for TTMLFileReferenceListView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for TTMLFileReference();
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD518);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD7D0);
    if (!(*(*(v8 - 8) + 48))(v0 + v3, 1, v8))
    {

      v9 = *(v8 + 32);
      v10 = sub_306BB8();
      (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
    }
  }

  else
  {
  }

  v11 = v2 | v6;
  v12 = (v3 + v4 + v6) & ~v6;

  v13 = sub_301DC8();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = *(v5 + 24);
  v15 = sub_303248();
  (*(*(v15 - 8) + 8))(v0 + v12 + v14, v15);
  v16 = *(v5 + 28);
  v17 = sub_301CB8();
  (*(*(v17 - 8) + 8))(v0 + v12 + v16, v17);

  return _swift_deallocObject(v0, v12 + v7, v11 | 7);
}

uint64_t sub_6913C()
{
  v1 = *(type metadata accessor for TTMLFileReferenceListView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for TTMLFileReference() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_68238(v0 + v2, v5);
}

unint64_t sub_6920C()
{
  result = qword_3FE4F0;
  if (!qword_3FE4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE3A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE408);
    sub_68810();
    sub_EC8C(&qword_3FE428, &qword_3FE408);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE4F0);
  }

  return result;
}

uint64_t sub_69374()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE518);
  sub_EC8C(&qword_3FE510, &qword_3FE518);

  return sub_306B88();
}

uint64_t sub_69418()
{
  v0 = type metadata accessor for TTMLFileReferenceListView();
  __chkstk_darwin(v0);
  v2 = (&v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD518);
  swift_storeEnumTagMultiPayload();
  v3 = (v2 + *(v0 + 20));
  type metadata accessor for TTMLFileReferenceCache();
  v4 = swift_allocObject();
  sub_302DC8();
  *(v4 + 16) = 0;
  *(v4 + 24) = _swiftEmptyArrayStorage;
  v10 = v4;
  sub_306A08();
  v5 = v12;
  *v3 = v11;
  v3[1] = v5;
  v6 = (v2 + *(v0 + 24));
  v10 = &_swiftEmptySetSingleton;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FE350);
  sub_306A08();
  v7 = v12;
  *v6 = v11;
  v6[1] = v7;
  sub_69818();
  return sub_3053B8();
}

double sub_695AC@<D0>(uint64_t a1@<X8>)
{
  result = 1.70168715e214;
  *a1 = xmmword_31B510;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_695CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE4F8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE500);
  sub_69754();
  sub_306298();
  sub_EC8C(&qword_3FE520, &qword_3FE4F8);
  sub_306658();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_69754()
{
  result = qword_3FE508;
  if (!qword_3FE508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE500);
    sub_EC8C(&qword_3FE510, &qword_3FE518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE508);
  }

  return result;
}

unint64_t sub_69818()
{
  result = qword_3FE528;
  if (!qword_3FE528)
  {
    type metadata accessor for TTMLFileReferenceListView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE528);
  }

  return result;
}

uint64_t sub_69870()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE4F8);
  sub_EC8C(&qword_3FE520, &qword_3FE4F8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_6991C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugEmptyState(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_699BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugEmptyState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_69A4C()
{
  result = type metadata accessor for DebugEmptyState(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_69ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_30A078();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_69B8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_30A078();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_69C30()
{
  sub_45558();
  if (v0 <= 0x3F)
  {
    sub_30A078();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_69CC4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_69CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_30A078();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_304A38();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  v15 = sub_33940(*v2, *(v2 + 8));
  (*(v5 + 16))(v7, v2 + *(a2 + 20), v4);
  UIContentUnavailableConfiguration.init(asPartOf:for:)(v15, v7, v14);
  sub_6A780();
  (*(v9 + 16))(v12, v14, v8);
  v16 = sub_30CB98();
  (*(v9 + 8))(v14, v8);
  return v16;
}

uint64_t sub_69ED4(uint64_t a1, char a2, int a3, int a4, id a5)
{
  [a5 bounds];
  [a5 sizeThatFits:{v8, v9}];
  if (a2)
  {
    return 0x7FF0000000000000;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_69F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6A73C(&qword_3FE720);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_69FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6A73C(&qword_3FE720);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_6A040()
{
  sub_6A73C(&qword_3FE720);
  sub_305D08();
  __break(1u);
}

uint64_t sub_6A084()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE670);
  sub_EC8C(&qword_3FE678, &qword_3FE670);
  return sub_306988();
}

uint64_t sub_6A150@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[2];
    v7 = _swiftEmptyArrayStorage;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  swift_bridgeObjectRetain_n();

  sub_EBD8(v3, v4, 0);

  sub_4A24C(v6, v5, 0, v7);
  sub_4A290(v6, v5, 0, v7);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 56) = v7;
  sub_4A290(v6, v5, 0, v7);
  sub_EBC8(v3, v4, 0);
}

uint64_t sub_6A260()
{
  v1 = v0;
  v2 = type metadata accessor for DebugEmptyState(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DebugEmptyStateView(0);
  __chkstk_darwin(v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v1;
  sub_5AC2C(v1, v5);
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = *(v3 + 32);
  v10 = *(v6 + 20);
  v11 = sub_30A078();
  (*(*(v11 - 8) + 16))(&v8[v10], &v5[v9], v11);
  sub_6A470(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE658);
  sub_EC8C(&qword_3FE660, &qword_3FE658);
  sub_6A73C(&qword_3FE668);
  return sub_3053B8();
}

uint64_t sub_6A470(uint64_t a1)
{
  v2 = type metadata accessor for DebugEmptyState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6A4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_30A078();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_6A5A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_30A078();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_6A640()
{
  sub_D7D8();
  if (v0 <= 0x3F)
  {
    sub_30A078();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_6A73C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DebugEmptyStateView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_6A780()
{
  result = qword_3FE728;
  if (!qword_3FE728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3FE728);
  }

  return result;
}

uint64_t sub_6A7E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDAC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_6A86C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDAC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DebugSettingsView()
{
  result = qword_3FE788;
  if (!qword_3FE788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6A934()
{
  sub_5938C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_6A9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE7D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE7C8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE7F8);
  sub_6C170();
  sub_306298();
  v11 = sub_EC8C(&qword_3FE7E0, &qword_3FE7D8);
  sub_306658();
  (*(v4 + 8))(v6, v3);
  v15[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE7D0);
  v16 = v3;
  v17 = v11;
  swift_getOpaqueTypeConformance2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE7E8);
  v13 = sub_EC8C(&qword_3FE7F0, &qword_3FE7E8);
  v16 = v12;
  v17 = v13;
  swift_getOpaqueTypeConformance2();
  sub_3067C8();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_6ACD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE810);
  sub_EC8C(&qword_3FE808, &qword_3FE810);
  return sub_306B68();
}

uint64_t sub_6ADA0@<X0>(char *a1@<X8>)
{
  v65 = a1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE818);
  v89 = *(v83 - 8);
  v1 = __chkstk_darwin(v83);
  v71 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v80 = &v54 - v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE820);
  v88 = *(v82 - 8);
  v4 = __chkstk_darwin(v82);
  v70 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = &v54 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE828);
  v87 = *(v81 - 8);
  v7 = __chkstk_darwin(v81);
  v79 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v54 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE830);
  v86 = *(v78 - 8);
  v10 = __chkstk_darwin(v78);
  v77 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v54 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE838);
  v85 = *(v76 - 8);
  v14 = __chkstk_darwin(v76);
  v75 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE840);
  v84 = *(v74 - 8);
  v18 = __chkstk_darwin(v74);
  v73 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v54 - v20;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE848);
  v66 = *(v72 - 8);
  v22 = __chkstk_darwin(v72);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v24;
  __chkstk_darwin(v22);
  v26 = &v54 - v25;
  _s19FairPlayDebugMangerCMa();
  v27 = swift_allocObject();
  *(v27 + 16) = _swiftEmptyArrayStorage;
  sub_302DC8();
  v90 = v27;
  sub_306A08();
  sub_6C4DC();
  v64 = v26;
  sub_3053B8();
  KeyPath = swift_getKeyPath();
  LOBYTE(v92) = 0;
  sub_6C538();
  v63 = v21;
  sub_3053B8();
  sub_6C58C();
  v62 = v17;
  sub_3053B8();
  sub_6C5E0();
  v28 = v13;
  v61 = v13;
  sub_3053B8();
  LOBYTE(KeyPath) = 0;
  sub_3036C8();
  KeyPath = sub_3022F8();
  v92 = v29;
  sub_6C634();
  v30 = v68;
  sub_3053B8();
  sub_6C688();
  v31 = v69;
  sub_3053B8();
  sub_6C6DC();
  sub_3053B8();
  v54 = *(v66 + 16);
  v54(v24, v26, v72);
  v60 = *(v84 + 16);
  v60(v73, v21, v74);
  v59 = *(v85 + 16);
  v59(v75, v17, v76);
  v58 = *(v86 + 16);
  v58(v77, v28, v78);
  v57 = *(v87 + 16);
  v57(v79, v30, v81);
  v56 = *(v88 + 16);
  v32 = v70;
  v56(v70, v31, v82);
  v55 = *(v89 + 16);
  v33 = v71;
  v55(v71, v80, v83);
  v34 = v65;
  v54(v65, v67, v72);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE888);
  v60(&v34[v35[12]], v73, v74);
  v59(&v34[v35[16]], v75, v76);
  v58(&v34[v35[20]], v77, v78);
  v36 = v81;
  v57(&v34[v35[24]], v79, v81);
  v37 = &v34[v35[28]];
  v38 = v34;
  v39 = v82;
  v56(v37, v32, v82);
  v40 = &v38[v35[32]];
  v41 = v83;
  v55(v40, v33, v83);
  v42 = *(v89 + 8);
  v89 += 8;
  v65 = v42;
  (v42)(v80, v41);
  v43 = *(v88 + 8);
  v88 += 8;
  v80 = v43;
  (v43)(v69, v39);
  v44 = *(v87 + 8);
  v87 += 8;
  v44(v68, v36);
  v45 = *(v86 + 8);
  v86 += 8;
  v46 = v78;
  v45(v61, v78);
  v47 = *(v85 + 8);
  v85 += 8;
  v48 = v76;
  v47(v62, v76);
  v49 = *(v84 + 8);
  v84 += 8;
  v50 = v74;
  v49(v63, v74);
  v51 = *(v66 + 8);
  v52 = v72;
  v51(v64, v72);
  (v65)(v71, v83);
  (v80)(v70, v82);
  v44(v79, v81);
  v45(v77, v46);
  v47(v75, v48);
  v49(v73, v50);
  return (v51)(v67, v52);
}

double sub_6B930@<D0>(uint64_t a1@<X8>)
{
  result = 4.82582451e276;
  *a1 = xmmword_31B820;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

double sub_6B950@<D0>(uint64_t a1@<X8>)
{
  result = 8.79693578e199;
  *a1 = xmmword_31B830;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

double sub_6B970@<D0>(uint64_t a1@<X8>)
{
  result = 2.26484033e-306;
  *a1 = xmmword_31B840;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

double sub_6B990@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x686372616553;
  *a1 = xmmword_31B850;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

double sub_6B9B0@<D0>(uint64_t a1@<X8>)
{
  *&result = 1936746836;
  *a1 = xmmword_31B860;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

double sub_6B9D0@<D0>(uint64_t a1@<X8>)
{
  result = 9.74103425e252;
  *a1 = xmmword_31B870;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

double sub_6B9F0@<D0>(uint64_t a1@<X8>)
{
  result = 8.79716975e199;
  *a1 = xmmword_31B880;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_6BA10(uint64_t a1)
{
  v2 = sub_305DE8();
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE7E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  v9 = a1;
  sub_305DC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB808);
  sub_EC8C(&qword_3FB838, &qword_3FB808);
  sub_305108();
  sub_EC8C(&qword_3FE7F0, &qword_3FE7E8);
  sub_305E38();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_6BBFC(uint64_t a1)
{
  v2 = type metadata accessor for DebugSettingsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_6C244(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_6C3A8(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_306A68();
}

uint64_t sub_6BD28(uint64_t a1)
{
  v2 = sub_305A08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6A8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = sub_305228();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6C46C(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_30C7A8();
    v13 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_305218();
  return (*(v10 + 8))(v12, v9);
}

double sub_6BF90@<D0>(uint64_t a1@<X8>)
{
  *&result = 1701736260;
  *a1 = xmmword_31B890;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_6BFB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE7C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE7C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE7D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE7D8);
  sub_EC8C(&qword_3FE7E0, &qword_3FE7D8);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE7E8);
  sub_EC8C(&qword_3FE7F0, &qword_3FE7E8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_305538();
}

unint64_t sub_6C170()
{
  result = qword_3FE800;
  if (!qword_3FE800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE7F8);
    sub_EC8C(&qword_3FE808, &qword_3FE810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE800);
  }

  return result;
}

uint64_t sub_6C244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugSettingsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6C2A8()
{
  v1 = *(type metadata accessor for DebugSettingsView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_305228();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_6C3A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugSettingsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6C40C()
{
  v1 = *(type metadata accessor for DebugSettingsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_6BD28(v2);
}

uint64_t sub_6C46C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_6C4DC()
{
  result = qword_3FE850;
  if (!qword_3FE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE850);
  }

  return result;
}

unint64_t sub_6C538()
{
  result = qword_3FE858;
  if (!qword_3FE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE858);
  }

  return result;
}

unint64_t sub_6C58C()
{
  result = qword_3FE860;
  if (!qword_3FE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE860);
  }

  return result;
}

unint64_t sub_6C5E0()
{
  result = qword_3FE868;
  if (!qword_3FE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE868);
  }

  return result;
}

unint64_t sub_6C634()
{
  result = qword_3FE870;
  if (!qword_3FE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE870);
  }

  return result;
}

unint64_t sub_6C688()
{
  result = qword_3FE878;
  if (!qword_3FE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE878);
  }

  return result;
}

unint64_t sub_6C6DC()
{
  result = qword_3FE880;
  if (!qword_3FE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE880);
  }

  return result;
}

uint64_t JULoadingViewController.init(label:presentationContext:pageRenderController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_3042E8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  (*(v7 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  if (a4)
  {
    sub_302518();
  }

  v9 = sub_3042F8();

  (*(v7 + 8))(a3, v6);
  return v9;
}

id sub_6C8C8(char *a1, unsigned int a2, uint64_t a3)
{
  v80 = a3;
  v78 = a1;
  v4 = sub_30D278();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v64 - v7;
  v74 = sub_3031C8();
  v8 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v10 - 8);
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v64 - v13;
  v77 = sub_307678();
  v15 = *(v77 - 8);
  __chkstk_darwin(v77);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v64 - v19;
  v21 = sub_308CB8();
  v75 = *(v21 - 8);
  v76 = v21;
  __chkstk_darwin(v21);
  v79 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_308B88();
  v25 = v24;
  if (v23 == sub_308B88() && v25 == v26)
  {
  }

  else
  {
    v27 = sub_30D728();

    if ((v27 & 1) == 0 && !_UISolariumEnabled())
    {
      v60 = v77;
      v59 = v78;
      (*(v15 + 16))(v17, v78, v77);
      type metadata accessor for GlyphButton();
      v61 = v80;

      v62 = sub_6D208(v17, a2, v61);
      v49 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCustomView:v62];

      (*(v15 + 8))(v59, v60);
      return v49;
    }
  }

  sub_308CA8();
  v28 = v74;
  v69 = *(v8 + 56);
  v69(v14, 1, 1, v74);
  v29 = v78;
  sub_307668();
  sub_307608();
  sub_307618();
  v30 = sub_308C98();
  v71 = *(v15 + 8);
  v72 = v15 + 8;
  v31 = v20;
  v32 = v77;
  v71(v31, v77);
  v33 = v28;
  v34 = v73;
  sub_307638();
  if ((*(v8 + 48))(v34, 1, v33) == 1)
  {
    v35 = v30;
    sub_EB68(v34, &unk_402FF0);
    sub_124C4(0, &qword_4019C0);
    if (sub_30C978())
    {
      sub_307658();
      v36 = v30;
      v37 = sub_30C838();
    }

    else
    {
      v40 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:1];
      v41 = v66;
      sub_30D138();
      sub_307658();
      sub_30D268();
      v42 = v40;
      v43 = sub_30C098();
      v44 = [objc_opt_self() systemImageNamed:v43 withConfiguration:v42];

      sub_30D248();
      sub_30D1B8();
      sub_30D188();
      sub_124C4(0, &qword_3FE8A0);
      v46 = v67;
      v45 = v68;
      (*(v67 + 16))(v65, v41, v68);
      v47 = sub_30D288();
      v48 = [objc_opt_self() labelColor];
      [v47 setTintColor:v48];

      [v47 setMenu:v35];
      [v47 setShowsMenuAsPrimaryAction:1];
      v37 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCustomView:v47];

      (*(v46 + 8))(v41, v45);
    }
  }

  else
  {
    v38 = v70;
    sub_6D85C(v34, v70);
    sub_307658();
    sub_307B78();
    sub_6D8C0(v38, v14);
    v69(v14, 0, 1, v33);
    sub_307B68();
    sub_EB68(v14, &unk_402FF0);
    v39 = v30;
    v37 = sub_30C838();
    sub_6D924(v38);
    v35 = v30;
  }

  v49 = v37;
  v50 = sub_30C098();
  [v49 setAccessibilityIdentifier:v50];

  v51 = sub_307658();
  v53 = v52;

  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v51 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    sub_307658();
  }

  else
  {
    v55 = [objc_opt_self() mainBundle];
    v63._countAndFlagsBits = 0xE000000000000000;
    v81._object = 0x80000000003376B0;
    v81._countAndFlagsBits = 0xD00000000000001CLL;
    v82.value._countAndFlagsBits = 0;
    v82.value._object = 0;
    v56.super.isa = v55;
    v83._countAndFlagsBits = 0;
    v83._object = 0xE000000000000000;
    sub_301AB8(v81, v82, v56, v83, v63);
  }

  v57 = sub_30C098();

  [v49 setAccessibilityLabel:v57];

  v71(v29, v32);
  (*(v75 + 8))(v79, v76);
  return v49;
}

id sub_6D208(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v55 = a3;
  v51 = a2;
  v57 = sub_307678();
  v54 = *(v57 - 8);
  __chkstk_darwin(v57);
  v53 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  __chkstk_darwin(v5 - 8);
  v48 = &v44 - v6;
  v7 = sub_3031C8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v14 - 8);
  v47 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v44 - v17;
  __chkstk_darwin(v19);
  v21 = &v44 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8A8);
  __chkstk_darwin(v22 - 8);
  v24 = &v44 - v23;
  v25 = sub_302AB8();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v45 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v46 = &v44 - v29;
  v56 = a1;
  sub_307638();
  sub_EB00(v21, v18, &unk_402FF0);
  v49 = v8;
  v50 = v7;
  if ((*(v8 + 48))(v18, 1, v7) == 1)
  {
    sub_EB68(v21, &unk_402FF0);
    (*(v26 + 56))(v24, 1, 1, v25);
  }

  else
  {
    sub_6D85C(v18, v13);
    sub_6D8C0(v13, v10);
    sub_3029C8();
    sub_6D924(v13);
    sub_EB68(v21, &unk_402FF0);
  }

  v30 = *(v26 + 48);
  v31 = v30(v24, 1, v25);
  v32 = v46;
  if (v31 == 1)
  {
    sub_3029D8();
    if (v30(v24, 1, v25) != 1)
    {
      sub_EB68(v24, &qword_3FE8A8);
    }
  }

  else
  {
    (*(v26 + 32))(v46, v24, v25);
  }

  v33 = v45;
  (*(v26 + 16))(v45, v32, v25);
  v34 = sub_3029E8();
  v35 = v48;
  (*(*(v34 - 8) + 56))(v48, 1, 1, v34);
  v36 = (*(v52 + 280))(v33, v35, v51, 0, 0, 0, 1, 0.0, 0.0, 0.0, 0.0);
  (*(v49 + 56))(v47, 1, 1, v50);
  v37 = v36;
  v38 = v56;
  sub_307668();
  sub_307608();
  v39 = v53;
  sub_307618();
  sub_30D2D8();

  v40 = *(v54 + 8);
  v41 = v38;
  v42 = v57;
  v40(v41, v57);
  v40(v39, v42);
  (*(v26 + 8))(v32, v25);
  return v37;
}

uint64_t sub_6D85C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3031C8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6D8C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3031C8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6D924(uint64_t a1)
{
  v2 = sub_3031C8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_6D980(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v75 = a4;
  v76 = a1;
  v67 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v5 - 8);
  v71 = &v57[-v6];
  v7 = sub_307678();
  v73 = *(v7 - 8);
  v74 = v7;
  __chkstk_darwin(v7);
  v72 = &v57[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  __chkstk_darwin(v9 - 8);
  v65 = &v57[-v10];
  v11 = sub_302AB8();
  v69 = *(v11 - 8);
  v70 = v11;
  __chkstk_darwin(v11);
  v64 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v66 = &v57[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8B0);
  __chkstk_darwin(v15 - 8);
  v63 = &v57[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v62 = &v57[-v18];
  __chkstk_darwin(v19);
  v21 = &v57[-v20];
  __chkstk_darwin(v22);
  v24 = &v57[-v23];
  __chkstk_darwin(v25);
  v27 = &v57[-v26];
  __chkstk_darwin(v28);
  v30 = &v57[-v29];
  __chkstk_darwin(v31);
  v33 = &v57[-v32];
  v34 = a3;
  sub_EB00(a3, &v57[-v32], &qword_3FE8B0);
  v35 = sub_302A98();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  if (v37(v33, 1, v35) == 1)
  {
    sub_EB68(v33, &qword_3FE8B0);
    v60 = 0x73697370696C6C65;
    v61 = 0xE800000000000000;
  }

  else
  {
    v60 = sub_302A48();
    v61 = v38;
    (*(v36 + 8))(v33, v35);
  }

  sub_EB00(v34, v30, &qword_3FE8B0);
  if (v37(v30, 1, v35) == 1)
  {
    sub_EB68(v30, &qword_3FE8B0);
    v59 = 0;
    v58 = 1;
  }

  else
  {
    v59 = sub_302A88();
    v58 = v39;
    (*(v36 + 8))(v30, v35);
  }

  sub_EB00(v34, v27, &qword_3FE8B0);
  if (v37(v27, 1, v35) == 1)
  {
    sub_EB68(v27, &qword_3FE8B0);
  }

  else
  {
    sub_302A78();
    (*(v36 + 8))(v27, v35);
  }

  sub_EB00(v34, v24, &qword_3FE8B0);
  if (v37(v24, 1, v35) == 1)
  {
    sub_EB68(v24, &qword_3FE8B0);
  }

  else
  {
    sub_302A58();
    (*(v36 + 8))(v24, v35);
  }

  sub_EB00(v34, v21, &qword_3FE8B0);
  if (v37(v21, 1, v35) == 1)
  {
    sub_EB68(v21, &qword_3FE8B0);
  }

  else
  {
    sub_302A18();
    (*(v36 + 8))(v21, v35);
  }

  v40 = v62;
  sub_EB00(v34, v62, &qword_3FE8B0);
  if (v37(v40, 1, v35) == 1)
  {
    sub_EB68(v40, &qword_3FE8B0);
  }

  else
  {
    sub_302A28();
    (*(v36 + 8))(v40, v35);
  }

  v41 = v63;
  sub_EB00(v34, v63, &qword_3FE8B0);
  if (v37(v41, 1, v35) == 1)
  {
    sub_EB68(v41, &qword_3FE8B0);
  }

  else
  {
    sub_302A68();
    (*(v36 + 8))(v41, v35);
  }

  v42 = v66;
  sub_3029D8();
  v44 = v69;
  v43 = v70;
  v45 = v64;
  (*(v69 + 16))(v64, v42, v70);
  v46 = sub_3029E8();
  v47 = v65;
  (*(*(v46 - 8) + 56))(v65, 1, 1, v46);
  v48 = (*(v68 + 280))(v45, v47, v67, 0, 0, 0, 1, 0.0, 0.0, 0.0, 0.0);
  v49 = sub_3031C8();
  (*(*(v49 - 8) + 56))(v71, 1, 1, v49);
  v50 = v48;
  v51 = v76;
  sub_307668();
  sub_307608();
  v52 = v72;
  sub_307618();
  sub_30D2D8();

  sub_EB68(v34, &qword_3FE8B0);
  v53 = *(v73 + 8);
  v54 = v51;
  v55 = v74;
  v53(v54, v74);
  v53(v52, v55);
  (*(v44 + 8))(v42, v43);
  return v50;
}

NSString sub_6E290()
{
  result = sub_30C098();
  qword_3FE8B8 = result;
  return result;
}

uint64_t UIContentUnavailableConfiguration.init(asPartOf:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8C0);
  v6 = __chkstk_darwin(v5 - 8);
  v43 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v40 - v8;
  v44 = sub_307BE8();
  v46 = *(v44 - 8);
  v10 = __chkstk_darwin(v44);
  v42 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v41 = v40 - v12;
  v13 = sub_309F58();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v40 - v18;
  sub_3049F8();
  sub_309F88();
  sub_309F28();
  v20 = *(v14 + 8);
  v20(v19, v13);
  sub_3049E8();
  sub_309F88();
  sub_309F18();
  v20(v19, v13);
  sub_304968();
  v47 = a2;
  sub_309F88();
  sub_309F38();
  v22 = v21;
  v20(v17, v13);
  if (v22)
  {
    v23 = sub_30C098();

    v24 = [objc_opt_self() _systemImageNamed:v23];

    sub_304A08();
  }

  sub_309F88();
  v25 = sub_309F48();
  v20(v19, v13);
  v49 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8C8);
  sub_30C388();
  v26 = v46;
  v27 = *(v46 + 48);
  v28 = v44;
  v29 = v27(v9, 1, v44);
  v40[1] = a3;
  if (v29 == 1)
  {
    sub_6E8A4(v9);
  }

  else
  {
    v30 = v41;
    (*(v26 + 32))(v41, v9, v28);
    v31 = sub_304A18();
    sub_307BC8();
    v26 = v46;
    sub_30D268();
    v31(v48, 0);
    v32 = sub_3049B8();
    sub_6E90C();
    v32(v48, 0);
    (*(v26 + 8))(v30, v28);
  }

  v33 = v43;
  sub_30C388();

  if (v27(v33, 1, v28) == 1)
  {
    v34 = sub_30A078();
    (*(*(v34 - 8) + 8))(v47, v34);

    return sub_6E8A4(v33);
  }

  else
  {
    v36 = v42;
    (*(v26 + 32))(v42, v33, v28);
    v37 = sub_304978();
    sub_307BC8();
    sub_30D268();
    v37(v48, 0);
    v38 = sub_3049D8();
    sub_6E90C();
    v38(v48, 0);

    v39 = sub_30A078();
    (*(*(v39 - 8) + 8))(v47, v39);
    return (*(v26 + 8))(v36, v28);
  }
}

uint64_t sub_6E8A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6E90C()
{
  v0 = sub_307BA8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_6EB34();
  sub_307BD8();

  sub_30D0D8();
  sub_304988();
  sub_3049A8();
  sub_307BB8();
  if ((*(v1 + 48))(v6, 1, v0) != 1)
  {
    (*(v1 + 32))(v3, v6, v0);
    v7 = (*(v1 + 88))(v3, v0);
    if (v7 != enum case for ActionButton.Role.cancel(_:) && v7 != enum case for ActionButton.Role.destructive(_:))
    {
      (*(v1 + 8))(v3, v0);
    }
  }

  return sub_304998();
}

unint64_t sub_6EB34()
{
  result = qword_408080;
  if (!qword_408080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_408080);
  }

  return result;
}

id UITabBarController.selectedNavigationController.getter()
{
  result = [v0 selectedViewController];
  if (result)
  {
    v2 = result;
    type metadata accessor for FlowNavigationController();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

id sub_6EBDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectedViewController];
  if (result)
  {
    v4 = result;
    type metadata accessor for FlowNavigationController();
    result = swift_dynamicCastClass();
    if (!result)
    {

      result = 0;
    }
  }

  *a2 = result;
  return result;
}

void UITabBarController.selectedNavigationController.setter(void *a1)
{
  [v1 setSelectedViewController:a1];
}

void (*UITabBarController.selectedNavigationController.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  v3 = [v1 selectedViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for FlowNavigationController();
    v3 = swift_dynamicCastClass();
    if (!v3)
    {

      v3 = 0;
    }
  }

  *a1 = v3;
  return sub_6ED0C;
}

void sub_6ED0C(id *a1)
{
  v1 = *a1;
  [a1[1] setSelectedViewController:?];
}

void *UITabBarController.navigationControllers.getter()
{
  v1 = [v0 tabs];
  sub_6EF48();
  v2 = sub_30C368();

  if (v2 >> 62)
  {
LABEL_22:
    v3 = sub_30D668();
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  v4 = 0;
  do
  {
    v5 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_30D578();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_21;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = [v6 managingTabGroup];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 managingNavigationController];

        if (!v10)
        {
          goto LABEL_6;
        }

        type metadata accessor for FlowNavigationController();
        v7 = v10;
        if (swift_dynamicCastClass())
        {
          break;
        }
      }

LABEL_6:
      ++v5;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    sub_30C348();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
    }

    sub_30C3C8();
  }

  while (v4 != v3);
LABEL_23:

  return _swiftEmptyArrayStorage;
}

unint64_t sub_6EF48()
{
  result = qword_3FE8D8;
  if (!qword_3FE8D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3FE8D8);
  }

  return result;
}

unint64_t sub_6EFB0()
{
  result = qword_3FE8E0;
  if (!qword_3FE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE8E0);
  }

  return result;
}

uint64_t sub_6F004@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a1;
  v54 = a5;
  v55 = sub_306008();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3055F8();
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_306278();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8F8);
  __chkstk_darwin(v51);
  v14 = (&v44 - v13);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE900);
  v15 = *(v45 - 8);
  __chkstk_darwin(v45);
  v50 = &v44 - v16;
  v17 = sub_305A08();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v21 = a2;
    v22 = a2;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_30C7A8();
  v23 = sub_306088();
  v44 = v15;
  v24 = v11;
  v25 = a4;
  v26 = v23;
  sub_304108();

  a4 = v25;
  v11 = v24;
  v15 = v44;
  sub_3059F8();
  swift_getAtKeyPath();
  sub_703E4(a2, 0);
  (*(v18 + 8))(v20, v17);
  v22 = v58;
  if (v58)
  {
LABEL_5:
    v27 = sub_306CC8();
    v28 = &v22[OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_transitionNamespace];
    *v28 = v27;
    v28[8] = 0;
  }

LABEL_6:
  *v14 = sub_306C18();
  v14[1] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE908);
  v31 = v46;
  sub_6F5D0(v46, a2, a3 & 1, a4, v14 + *(v30 + 44));
  v32 = sub_703F0(v31);
  v34 = v33;
  v35 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE910) + 36);
  type metadata accessor for CGSize(0);
  v56 = 0;
  v57 = 0;
  sub_306A08();
  v36 = v59;
  *(v35 + 1) = v58;
  *(v35 + 4) = v36;
  v37 = &v35[*(type metadata accessor for HeroBorder() + 28)];
  *v37 = swift_getKeyPath();
  *(v37 + 1) = 0;
  v37[16] = 0;
  *v35 = v32;
  *(v35 + 1) = v34;
  *&v58 = 0x4024000000000000;
  (*(v47 + 104))(v48, enum case for Font.TextStyle.body(_:), v49);
  sub_70648();
  sub_305148();
  v38 = v51;
  sub_309DF8();
  sub_306CC8();
  sub_3082A8();
  v39 = sub_7069C();
  v40 = v50;
  sub_306428();
  sub_70840(v11);
  sub_EB68(v14, &qword_3FE8F8);
  v41 = v52;
  sub_305FE8();
  *&v58 = v38;
  *(&v58 + 1) = v39;
  swift_getOpaqueTypeConformance2();
  v42 = v45;
  sub_306738();
  (*(v53 + 8))(v41, v55);
  return (*(v15 + 8))(v40, v42);
}

uint64_t sub_6F5D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v62 = a3;
  v60 = a2;
  v67 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE958);
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = __chkstk_darwin(v6);
  v64 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = &v50 - v9;
  v52 = sub_306008();
  v55 = *(v52 - 8);
  __chkstk_darwin(v52);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_308588();
  v54 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE960);
  v16 = *(v15 - 8);
  v56 = v15;
  v57 = v16;
  __chkstk_darwin(v15);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE968);
  v20 = __chkstk_darwin(v19 - 8);
  v59 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v53 = &v50 - v22;
  v23 = sub_309DE8();
  v68 = v23;
  v58 = *(v23 - 8);
  v24 = v58;
  v25 = __chkstk_darwin(v23);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v50 - v28;

  sub_309DD8();
  v51 = *(v24 + 16);
  v51(v27, v29, v23);
  sub_308578();
  sub_305FD8();
  v30 = sub_7089C(&qword_3FE970, &type metadata accessor for HeroBackground);
  sub_306738();
  (*(v55 + 8))(v11, v52);
  (*(v54 + 8))(v14, v12);
  v31 = sub_309528();
  if (v32)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0xE000000000000000;
  }

  v71 = v33;
  v72 = v34;
  v69 = v12;
  v70 = v30;
  swift_getOpaqueTypeConformance2();
  sub_E504();
  v35 = v53;
  v36 = v56;
  sub_3066C8();

  (*(v57 + 8))(v18, v36);
  v51(v27, v29, v68);
  v37 = swift_allocObject();
  v38 = v60;
  *(v37 + 16) = a1;
  *(v37 + 24) = v38;
  v39 = v62 & 1;
  *(v37 + 32) = v62 & 1;
  *(v37 + 40) = v63;

  sub_70940(v38, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE978);
  sub_EC8C(&qword_3FE980, &qword_3FE978);
  v40 = v61;
  sub_30B408();
  v41 = v59;
  sub_7094C(v35, v59);
  v43 = v64;
  v42 = v65;
  v44 = *(v65 + 16);
  v45 = v66;
  v44(v64, v40, v66);
  v46 = v67;
  sub_7094C(v41, v67);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE988);
  v44((v46 + *(v47 + 48)), v43, v45);
  v48 = *(v42 + 8);
  v48(v40, v45);
  sub_EB68(v35, &qword_3FE968);
  (*(v58 + 8))(v29, v68);
  v48(v43, v45);
  return sub_EB68(v41, &qword_3FE968);
}

uint64_t sub_6FC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_305BE8();
  sub_308278();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE990);
  return sub_6FD18(a1, (a2 + *(v6 + 44)));
}

uint64_t sub_6FD18@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = sub_306008();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE998);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v44 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  v56[0] = a1;
  v43 = a1;
  swift_retain_n();
  sub_305FE8();
  sub_709BC();
  sub_306738();
  (*(v4 + 8))(v6, v3);

  sub_308268();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  KeyPath = swift_getKeyPath();
  sub_308268();
  v23 = 0.0 - v22;
  v25 = 0.0 - v24;
  v27 = 0.0 - v26;
  v29 = 0.0 - v28;
  LOBYTE(a1) = sub_3060C8();
  LOBYTE(v56[0]) = 0;
  LOBYTE(v49) = 0;
  v30 = *(v8 + 16);
  v31 = v44;
  v30(v44, v12, v7);
  v32 = v45;
  v30(v45, v31, v7);
  v33 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE9A8) + 48)];
  v34 = v43;
  *&v49 = v43;
  *(&v49 + 1) = v14;
  *&v50 = v16;
  *(&v50 + 1) = v18;
  *&v51 = v20;
  *(&v51 + 1) = KeyPath;
  LOBYTE(v52) = 0;
  *(&v52 + 1) = *v47;
  DWORD1(v52) = *&v47[3];
  BYTE8(v52) = a1;
  *(&v52 + 9) = *v46;
  HIDWORD(v52) = *&v46[3];
  *&v53 = v23;
  *(&v53 + 1) = v25;
  *&v54 = v27;
  *(&v54 + 1) = v29;
  LOBYTE(v55) = 0;
  *(&v55 + 1) = *v48;
  DWORD1(v55) = *&v48[3];
  *(&v55 + 1) = 0x3FF0000000000000;
  v35 = v50;
  *v33 = v49;
  *(v33 + 1) = v35;
  v36 = v51;
  v37 = v52;
  v38 = v55;
  v39 = v53;
  *(v33 + 5) = v54;
  *(v33 + 6) = v38;
  *(v33 + 3) = v37;
  *(v33 + 4) = v39;
  *(v33 + 2) = v36;
  sub_70A18(&v49, v56);
  v40 = *(v8 + 8);
  v40(v12, v7);
  v56[0] = v34;
  v56[1] = v14;
  v56[2] = v16;
  v56[3] = v18;
  v56[4] = v20;
  v56[5] = KeyPath;
  v57 = 0;
  *v58 = *v47;
  *&v58[3] = *&v47[3];
  v59 = a1;
  *v60 = *v46;
  *&v60[3] = *&v46[3];
  v61 = v23;
  v62 = v25;
  v63 = v27;
  v64 = v29;
  v65 = 0;
  *v66 = *v48;
  *&v66[3] = *&v48[3];
  v67 = 0x3FF0000000000000;
  sub_70A88(v56);
  return (v40)(v31, v7);
}

uint64_t sub_701B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_307048();
  (*(*(v6 - 8) + 8))(a1, v6);
  v7 = *a2;
  result = swift_getKeyPath();
  *a3 = v7;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return result;
}

uint64_t sub_70260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_70AF0();

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

unint64_t sub_702CC()
{
  result = qword_3FE8E8;
  if (!qword_3FE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE8E8);
  }

  return result;
}

unint64_t sub_70340()
{
  result = qword_3FE8F0;
  if (!qword_3FE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE8F0);
  }

  return result;
}

void sub_703E4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_703F0(uint64_t a1)
{
  v2 = sub_303418();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (sub_309498() != 1 || sub_309488() == 3)
  {
    goto LABEL_3;
  }

  v10 = sub_303128();
  v12 = v11;
  if (v10 == sub_303128() && v12 == v13)
  {

    return 0;
  }

  v14 = sub_30D728();

  if ((v14 & 1) == 0)
  {
LABEL_3:
    sub_303458();
    v18 = sub_309548();
    v19 = sub_7089C(&qword_3FE950, &type metadata accessor for LegacyEpisodeLockup);
    v16 = a1;
    (*(v3 + 104))(v5, enum case for EyebrowBuilder.Style.default(_:), v2);
    sub_303438();
    v6 = sub_3033E8();
    if (v7)
    {
      v16 = v6;
      v17 = v7;
      sub_E504();
      v8 = sub_30D3D8();

      return v8;
    }
  }

  return 0;
}

unint64_t sub_70648()
{
  result = qword_3FE918;
  if (!qword_3FE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE918);
  }

  return result;
}

unint64_t sub_7069C()
{
  result = qword_3FE920;
  if (!qword_3FE920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE8F8);
    sub_70758();
    sub_7089C(&qword_3FE948, &type metadata accessor for HeroContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE920);
  }

  return result;
}

unint64_t sub_70758()
{
  result = qword_3FE928;
  if (!qword_3FE928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE910);
    sub_EC8C(&qword_3FE930, &qword_3FE938);
    sub_7089C(&qword_3FE940, type metadata accessor for HeroBorder);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE928);
  }

  return result;
}

uint64_t sub_70840(uint64_t a1)
{
  v2 = sub_3055F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7089C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_708E4()
{

  sub_703E4(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

id sub_70940(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_7094C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE968);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_709BC()
{
  result = qword_3FE9A0;
  if (!qword_3FE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE9A0);
  }

  return result;
}

uint64_t sub_70A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE9B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_70A88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE9B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_70AF0()
{
  result = qword_3FE9B8;
  if (!qword_3FE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE9B8);
  }

  return result;
}

uint64_t sub_70B50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_70B98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_70BE8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE900);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE8F8);
  sub_7069C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_70C8C(uint64_t a1)
{
  v3 = sub_305A08();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 48);
  v7 = *(v1 + 40);
  v15 = v7;
  v8 = v16;

  if ((v8 & 1) == 0)
  {
    sub_30C7A8();
    v9 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    sub_EB68(&v15, &qword_3FCA88);
    (*(v4 + 8))(v6, v3);
    v7 = v14[1];
  }

  *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_objectGraph) = v7;

  v10 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_playButton);
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_objectGraph;
  swift_beginAccess();
  *(v10 + v11) = v7;

  sub_7428C(v12);
}

uint64_t sub_70E64()
{
  v1 = *v0;
  v2 = sub_33940(*(v0 + 40), *(v0 + 48));

  sub_30CB58();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = objc_allocWithZone(type metadata accessor for EpisodeHeroButtonAreaUIKitView());
  return sub_71200(v2, v1, v4, v6, v8, v10);
}

uint64_t sub_70F08(uint64_t a1, char a2)
{
  PlayButton.intrinsicContentSize.getter();
  if (a2)
  {
    return 0x4024000000000000;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_70F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_74C44();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_70FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_74C44();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_71038()
{
  sub_74C44();
  sub_305D08();
  __break(1u);
}

id sub_71060()
{
  sub_124C4(0, &qword_408100);
  v0 = sub_30CCA8();
  v1 = [objc_opt_self() configurationWithFont:v0 scale:2];

  v2 = sub_30C098();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  v5 = [objc_opt_self() whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.5];

  [v4 setTintColor:v6];
  v7 = v4;
  v8 = [v7 layer];
  v9 = kCAFilterPlusL;
  [v8 setCompositingFilter:v9];

  return v7;
}

uint64_t sub_71200(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v54 = a2;
  ObjectType = swift_getObjectType();
  v13 = sub_309778();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v53 - v24;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_bookmarkStateMachine] = 0;
  v7[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_bookmarkState] = 0;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_downloadPresenter] = 0;
  v7[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_shouldShowDownloadIcon] = 0;
  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_moreIcon;
  *&v7[v26] = sub_71060();
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_bookmarkIcon] = 0;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView__downloadIcon] = 0;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView__sizingDownloadIcon] = 0;
  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_contextMenuButton;
  v28 = [objc_allocWithZone(UIButton) init];
  [v28 setShowsMenuAsPrimaryAction:1];
  [v28 setPreferredMenuElementOrder:2];
  [v28 setHoverStyle:0];
  *&v7[v27] = v28;
  v29 = v54;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_objectGraph] = a1;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_episode] = v29;
  v30 = &v7[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_padding];
  *v30 = a3;
  v30[1] = a4;
  v30[2] = a5;
  v30[3] = a6;
  swift_retain_n();
  swift_retain_n();
  sub_309758();
  sub_74B34(v25, v23);
  if ((*(v14 + 48))(v23, 1, v13) == 1)
  {
    sub_EB68(v23, &qword_3FEA58);
    v31 = 0;
  }

  else
  {
    (*(v14 + 32))(v19, v23, v13);
    (*(v14 + 16))(v17, v19, v13);
    sub_309878();
    swift_allocObject();

    v31 = sub_309788();
    (*(v14 + 8))(v19, v13);
  }

  aBlock = (&dword_0 + 1);
  LOBYTE(v57) = 1;
  v32 = objc_allocWithZone(type metadata accessor for PlayButton(0));
  sub_2A76A0(&aBlock, 0, v31);
  v34 = v33;
  sub_EB68(v25, &qword_3FEA58);
  v35 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_objectGraph;
  swift_beginAccess();
  *&v34[v35] = a1;

  v36 = OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_playButton;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_playButton] = v34;
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v7[v36] setHitTestDirectionalInsets:{-a3, -a4, -a5, 0.0}];
  v62.receiver = v7;
  v62.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v38 = [v37 layer];
  [v38 setAllowsGroupBlending:0];

  v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_playButton;
  [v37 addSubview:*&v37[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_playButton]];
  [v37 addSubview:*&v37[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_moreIcon]];
  v40 = OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_contextMenuButton;
  [v37 addSubview:*&v37[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_contextMenuButton]];
  v41 = *&v37[v39];
  v42 = *&v37[v40];
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = v42;
  v60 = sub_74BE4;
  v61 = v43;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_71CC8;
  v59 = &block_descriptor_69;
  v44 = _Block_copy(&aBlock);
  v45 = v41;
  v46 = v42;

  [v37 setAccessibilityCustomActionsBlock:v44];
  _Block_release(v44);
  v47 = objc_opt_self();
  v48 = swift_allocObject();
  *(v48 + 16) = v37;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_74D28;
  *(v49 + 24) = v48;
  v60 = sub_74D04;
  v61 = v49;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_19D688;
  v59 = &block_descriptor_80;
  v50 = _Block_copy(&aBlock);
  v51 = v37;

  [v47 performWithoutAnimation:v50];
  _Block_release(v50);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if ((v47 & 1) == 0)
  {
    return v51;
  }

  __break(1u);
  return result;
}

unint64_t sub_718EC(char *a1, void *a2)
{
  v4 = sub_309858();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_buttonState;
  swift_beginAccess();
  (*(v5 + 16))(v7, &a1[v8], v4);
  sub_3097B8();
  (*(v5 + 8))(v7, v4);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = objc_allocWithZone(UIAccessibilityCustomAction);
  v11 = a1;
  v12 = sub_30C098();

  v27 = sub_74BEC;
  v28 = v9;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_74234;
  v26 = &block_descriptor_86;
  v13 = _Block_copy(&aBlock);
  [v10 initWithName:v12 actionHandler:v13];

  _Block_release(v13);

  sub_30C348();
  if (*(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v29 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v14 = [objc_opt_self() mainBundle];
  v22._countAndFlagsBits = 0xE000000000000000;
  v30._object = 0x80000000003376B0;
  v30._countAndFlagsBits = 0xD00000000000001CLL;
  v31.value._countAndFlagsBits = 0;
  v31.value._object = 0;
  v15.super.isa = v14;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_301AB8(v30, v31, v15, v32, v22);

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v17 = objc_allocWithZone(UIAccessibilityCustomAction);
  v18 = a2;
  v19 = sub_30C098();

  v27 = sub_74C14;
  v28 = v16;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_74234;
  v26 = &block_descriptor_92;
  v20 = _Block_copy(&aBlock);
  [v17 initWithName:v19 actionHandler:v20];

  _Block_release(v20);

  sub_30C348();
  if (*(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v29 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  return v29;
}

Class sub_71CC8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_124C4(0, &qword_3FEA78);
    v4.super.isa = sub_30C358().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

id sub_71D54()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_30D6F8();
  v4 = *(v3 - 8);
  v5 = (__chkstk_darwin)(v3);
  v203 = &v202 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (__chkstk_darwin)(v5);
  v9 = &v202 - v8;
  v10 = (__chkstk_darwin)(v7);
  v12 = &v202 - v11;
  __chkstk_darwin(v10);
  v14 = &v202 - v13;
  v233.receiver = v1;
  v233.super_class = ObjectType;
  objc_msgSendSuper2(&v233, "layoutSubviews");
  v15 = [v1 effectiveUserInterfaceLayoutDirection];
  [v1 bounds];
  v20 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_padding];
  v21 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_padding + 8];
  v22 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_padding + 24];
  v207 = v22;
  if (v15 == &dword_0 + 1)
  {
    v21 = v22;
  }

  v23 = UIEdgeInsetsInsetRect(v16, v17, v18, v19, v20, v21);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v211 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_moreIcon];
  [v211 sizeThatFits:{v26, v28}];
  v31 = v30;
  v33 = v32;
  v34 = v23;
  v35 = v25;
  v36 = v27;
  v37 = v29;
  if (v15 == &dword_0 + 1)
  {
    MinX = CGRectGetMinX(*&v34);
  }

  else
  {
    MinX = CGRectGetMaxX(*&v34) - v31;
  }

  v225 = v23;
  v234.origin.x = v23;
  v222 = v25;
  v234.origin.y = v25;
  top = v27;
  v234.size.width = v27;
  v234.size.height = v29;
  MinY = CGRectGetMinY(v234);
  v215 = v29;
  v40 = (v29 - v33) * 0.5 + MinY;
  v41 = [v1 traitCollection];
  v42 = *(v4 + 104);
  v218 = enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:);
  v217 = v42;
  v42(v14);
  [v41 displayScale];
  if (v43 < COERCE_DOUBLE(1))
  {
    v44 = v4;
    v45 = [objc_opt_self() mainScreen];
    [v45 scale];

    v4 = v44;
  }

  v235.origin.x = MinX;
  v235.origin.y = v40;
  v235.size.width = v31;
  v235.size.height = v33;
  CGRectGetMinX(v235);
  sub_302E58();
  v47 = v46;
  v236.origin.x = MinX;
  v236.origin.y = v40;
  v236.size.width = v31;
  v236.size.height = v33;
  CGRectGetMinY(v236);
  sub_302E58();
  v49 = v48;
  v237.origin.x = MinX;
  v237.origin.y = v40;
  v237.size.width = v31;
  v237.size.height = v33;
  CGRectGetWidth(v237);
  sub_302E58();
  v51 = v50;
  v238.origin.x = MinX;
  v238.origin.y = v40;
  v238.size.width = v31;
  v238.size.height = v33;
  CGRectGetHeight(v238);
  sub_302E58();
  v53 = v52;

  v55 = *(v4 + 8);
  *&v54 = v4 + 8;
  v216 = v55;
  v55(v14, v3);
  v226 = v47;
  v239.origin.x = v47;
  v224 = v49;
  v239.origin.y = v49;
  v213 = v51;
  v239.size.width = v51;
  v223 = v53;
  v239.size.height = v53;
  v56 = CGRectGetWidth(v239) + 14.0;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v220 = left;
  if (v15 == &dword_0 + 1)
  {
    v59 = v56;
  }

  else
  {
    v59 = left;
  }

  v60 = v222;
  v61 = top;
  top = UIEdgeInsetsZero.top;
  v222 = bottom;
  v62 = UIEdgeInsetsInsetRect(v225, v60, v61, v215, UIEdgeInsetsZero.top, v59);
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_playButton];
  PlayButton.intrinsicContentSize.getter();
  v71 = v70;
  v73 = v72;
  v74 = v62;
  v75 = v64;
  v76 = v66;
  v77 = v68;
  if (v15 == &dword_0 + 1)
  {
    v78 = CGRectGetMaxX(*&v74) - v71;
  }

  else
  {
    v78 = CGRectGetMinX(*&v74);
  }

  v225 = v62;
  v240.origin.x = v62;
  v215 = v64;
  v240.origin.y = v64;
  v214 = v66;
  v240.size.width = v66;
  v240.size.height = v68;
  v79 = CGRectGetMinY(v240);
  v212 = v68;
  v80 = (v68 - v73) * 0.5 + v79;
  v81 = [v1 traitCollection];
  v217(v12, v218, v3);
  [v81 displayScale];
  if (v82 < COERCE_DOUBLE(1))
  {
    v83 = v54;
    v84 = [objc_opt_self() mainScreen];
    [v84 scale];

    v54 = v83;
  }

  v241.origin.x = v78;
  v241.origin.y = v80;
  v241.size.width = v71;
  v241.size.height = v73;
  CGRectGetMinX(v241);
  sub_302E58();
  v86 = v85;
  v242.origin.x = v78;
  v242.origin.y = v80;
  v242.size.width = v71;
  v242.size.height = v73;
  CGRectGetMinY(v242);
  sub_302E58();
  v88 = v87;
  v243.origin.x = v78;
  v243.origin.y = v80;
  v243.size.width = v71;
  v243.size.height = v73;
  CGRectGetWidth(v243);
  sub_302E58();
  v90 = v89;
  v244.origin.x = v78;
  v244.origin.y = v80;
  v244.size.width = v71;
  v244.size.height = v73;
  CGRectGetHeight(v244);
  sub_302E58();
  v92 = v91;

  v216(v12, v3);
  v210 = v86;
  v245.origin.x = v86;
  v209 = v88;
  v245.origin.y = v88;
  v208 = v90;
  v245.size.width = v90;
  v245.size.height = v92;
  v93 = CGRectGetWidth(v245) + 14.0;
  if (v15 == &dword_0 + 1)
  {
    v94 = v220;
  }

  else
  {
    v94 = v93;
  }

  v246.origin.x = UIEdgeInsetsInsetRect(v225, v215, v214, v212, top, v94);
  x = v246.origin.x;
  y = v246.origin.y;
  width = v246.size.width;
  height = v246.size.height;
  v99 = CGRectGetWidth(v246);
  v205 = OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_bookmarkState;
  v100 = sub_303A38();
  v101 = 0.0;
  v215 = x;
  v225 = y;
  v214 = width;
  if (v100)
  {
    v102 = sub_72FD0();
    [v102 sizeThatFits:{9.22337204e18, 9.22337204e18}];
    v104 = v103;
    v106 = v105;
    v247.origin.x = x;
    v247.origin.y = y;
    v247.size.width = width;
    v107 = v106;
    v247.size.height = height;
    v108 = height;
    v109 = CGRectGetWidth(v247);

    v110 = v104 < v109;
    height = v108;
    v111 = v110;
    LODWORD(v212) = v111;
    if (v110)
    {
      v99 = v99 - (v104 + 14.0);
    }
  }

  else
  {
    LODWORD(v212) = 0;
    v104 = 0.0;
    v107 = 0.0;
  }

  v112 = v213;
  v204 = OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_shouldShowDownloadIcon;
  if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_shouldShowDownloadIcon] == 1)
  {
    v113 = sub_731C8();
    v115 = v114;

    [v115 sizeThatFits:{9.22337204e18, 9.22337204e18}];
    v101 = v116;
    v118 = v117;

    v119 = v101 < v99;
  }

  else
  {
    v119 = 0;
    v118 = 0.0;
  }

  v120 = v225;
  [v211 setFrame:{v226, v224, v112, v223}];
  [v69 setFrame:{v210, v209, v208, v92}];
  v206 = v119;
  if (v119)
  {
    v121 = sub_731C8();

    v202 = v107;
    v123 = v215;
    v124 = v215;
    v125 = v120;
    v126 = v214;
    v127 = v214;
    v128 = height;
    if (v15 == &dword_0 + 1)
    {
      v129 = CGRectGetMinX(*&v124);
    }

    else
    {
      v129 = CGRectGetMaxX(*&v124) - v101;
    }

    v209 = v104;
    v248.origin.x = v123;
    v248.origin.y = v120;
    v248.size.width = v126;
    v248.size.height = height;
    v134 = CGRectGetMinY(v248);
    v208 = height;
    v135 = (height - v118) * 0.5 + v134;
    v136 = [v1 traitCollection];
    v217(v9, v218, v3);
    [v136 displayScale];
    if (v137 < COERCE_DOUBLE(1))
    {
      v138 = v54;
      v139 = [objc_opt_self() mainScreen];
      [v139 scale];

      v54 = v138;
    }

    v249.origin.x = v129;
    v249.origin.y = v135;
    v249.size.width = v101;
    v249.size.height = v118;
    CGRectGetMinX(v249);
    sub_302E58();
    v141 = v140;
    v250.origin.x = v129;
    v250.origin.y = v135;
    v250.size.width = v101;
    v250.size.height = v118;
    CGRectGetMinY(v250);
    sub_302E58();
    v143 = v142;
    v251.origin.x = v129;
    v251.origin.y = v135;
    v251.size.width = v101;
    v251.size.height = v118;
    CGRectGetWidth(v251);
    sub_302E58();
    v145 = v144;
    v252.origin.x = v129;
    v252.origin.y = v135;
    v252.size.width = v101;
    v252.size.height = v118;
    CGRectGetHeight(v252);
    sub_302E58();
    v147 = v146;

    v210 = v54;
    v216(v9, v3);
    v211 = v15;
    if (v15 == &dword_0 + 1)
    {
      v148 = v101 + 14.0;
    }

    else
    {
      v148 = v220;
    }

    v215 = UIEdgeInsetsInsetRect(v215, v225, v214, v208, top, v148);
    v225 = v149;
    v214 = v150;
    v152 = v151;
    v253.origin.x = v226;
    v253.size.height = v223;
    v253.origin.y = v224;
    v253.size.width = v213;
    v263.origin.x = v141;
    v263.origin.y = v143;
    v263.size.width = v145;
    v263.size.height = v147;
    v254 = CGRectUnion(v253, v263);
    v131 = v254.origin.x;
    v223 = v254.size.height;
    v224 = v254.origin.y;
    v112 = v254.size.width;
    v153 = __chkstk_darwin([v121 alpha]);
    *(&v202 - 6) = v121;
    *(&v202 - 5) = v141;
    *(&v202 - 4) = v143;
    *(&v202 - 3) = v145;
    *(&v202 - 2) = v147;
    if (v153 == 0.0)
    {
      v154 = objc_opt_self();
      v155 = swift_allocObject();
      *(v155 + 16) = sub_747D8;
      *(v155 + 24) = &v202 - 8;
      v156 = swift_allocObject();
      *(v156 + 16) = sub_74D00;
      *(v156 + 24) = v155;
      v231 = sub_74D04;
      v232 = v156;
      aBlock = _NSConcreteStackBlock;
      v228 = 1107296256;
      v229 = sub_19D688;
      v230 = &block_descriptor_20;
      v157 = _Block_copy(&aBlock);

      [v154 performWithoutAnimation:v157];

      _Block_release(v157);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      v15 = v211;
      v132 = LODWORD(v212);
      v104 = v209;
      v130 = v202;
      height = v152;
      v120 = v225;
      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return result;
      }

      v133 = &qword_3FE000;
      if (!LODWORD(v212))
      {
        goto LABEL_59;
      }
    }

    else
    {
      [v121 setFrame:{v141, v143, v145, v147}];

      v15 = v211;
      v132 = LODWORD(v212);
      v104 = v209;
      v130 = v202;
      height = v152;
      v120 = v225;
      v133 = &qword_3FE000;
      if (!LODWORD(v212))
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
    v130 = v107;
    v131 = v226;
    v132 = LODWORD(v212);
    v133 = &qword_3FE000;
    if (!LODWORD(v212))
    {
      goto LABEL_59;
    }
  }

  v226 = v131;
  v160 = v215;
  v161 = v215;
  v162 = v120;
  v163 = v214;
  v164 = v214;
  v165 = height;
  if (v15 == &dword_0 + 1)
  {
    v166 = CGRectGetMinX(*&v161);
  }

  else
  {
    v166 = CGRectGetMaxX(*&v161) - v104;
  }

  v167 = v203;
  v255.origin.x = v160;
  v255.origin.y = v120;
  v255.size.width = v163;
  v255.size.height = height;
  v168 = v130;
  v169 = (height - v130) * 0.5 + CGRectGetMinY(v255);
  v170 = [v1 traitCollection];
  v217(v167, v218, v3);
  [v170 displayScale];
  if (v171 < COERCE_DOUBLE(1))
  {
    v172 = [objc_opt_self() mainScreen];
    [v172 scale];
  }

  v256.origin.x = v166;
  v256.origin.y = v169;
  v256.size.width = v104;
  v256.size.height = v130;
  CGRectGetMinX(v256);
  sub_302E58();
  v174 = v173;
  v257.origin.x = v166;
  v257.origin.y = v169;
  v257.size.width = v104;
  v257.size.height = v130;
  CGRectGetMinY(v257);
  sub_302E58();
  v176 = v175;
  v258.origin.x = v166;
  v258.origin.y = v169;
  v258.size.width = v104;
  v258.size.height = v168;
  CGRectGetWidth(v258);
  sub_302E58();
  v259.size.height = v168;
  v131 = v177;
  v259.origin.x = v166;
  v259.origin.y = v169;
  v259.size.width = v104;
  CGRectGetHeight(v259);
  sub_302E58();
  v179 = v178;

  v216(v167, v3);
  v260.origin.x = v226;
  v260.size.height = v223;
  v260.origin.y = v224;
  v260.size.width = v112;
  v264.origin.x = v174;
  v264.origin.y = v176;
  v264.size.width = v131;
  v264.size.height = v179;
  v261 = CGRectUnion(v260, v264);
  v180 = v261.origin.x;
  v112 = v261.size.width;
  v181 = v133[321];
  v182 = *&v1[v181];
  if (v182)
  {
    v182 = [v182 alpha];
  }

  __chkstk_darwin(v182);
  *(&v202 - 6) = v1;
  *(&v202 - 5) = v174;
  *(&v202 - 4) = v176;
  *(&v202 - 3) = v131;
  *(&v202 - 2) = v179;
  if (!v183)
  {
    goto LABEL_56;
  }

  v184 = objc_opt_self();
  v181 = swift_allocObject();
  *(v181 + 16) = sub_74784;
  *(v181 + 24) = &v202 - 8;
  v185 = swift_allocObject();
  *(v185 + 16) = sub_747B0;
  *(v185 + 24) = v181;
  v231 = sub_293C0;
  v232 = v185;
  aBlock = _NSConcreteStackBlock;
  v228 = 1107296256;
  v229 = sub_19D688;
  v230 = &block_descriptor_9;
  v186 = _Block_copy(&aBlock);

  [v184 performWithoutAnimation:v186];
  _Block_release(v186);
  LOBYTE(v184) = swift_isEscapingClosureAtFileLocation();

  v131 = v180;
  if (v184)
  {
    __break(1u);
LABEL_56:
    v187 = *&v1[v181];
    if (v187)
    {
      [v187 setFrame:{v174, v176, v131, v179}];
    }

    v131 = v180;
  }

LABEL_59:
  [v1 bounds];
  v188 = CGRectGetHeight(v262);
  if (v15 == &dword_0 + 1)
  {
    v189 = -v207;
  }

  else
  {
    v189 = v220;
  }

  if (v15 == &dword_0 + 1)
  {
    v190 = v220;
  }

  else
  {
    v190 = -14.0;
  }

  v191 = v131;
  v192 = top;
  v193 = UIEdgeInsetsInsetRect(v191, 0.0, v112, v188, top, v189);
  [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_contextMenuButton] setFrame:{UIEdgeInsetsInsetRect(v193, v194, v195, v196, v192, v190)}];
  v197 = *&v1[v133[321]];
  if (v197)
  {
    v198 = v197;
    v199 = sub_303A38();
    v200 = 1.0;
    if ((v132 & v199) == 0)
    {
      v200 = 0.0;
    }

    [v198 setAlpha:v200];
  }

  result = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView__downloadIcon];
  if (result)
  {
    v201 = 0.0;
    if (v1[v204] & v206)
    {
      v201 = 1.0;
    }

    return [result setAlpha:v201];
  }

  return result;
}

id sub_72FD0()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_bookmarkIcon;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_bookmarkIcon];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_bookmarkIcon];
  }

  else
  {
    v4 = v0;
    sub_124C4(0, &qword_408100);
    v5 = sub_30CDD8();
    v6 = [objc_opt_self() configurationWithFont:v5 scale:1];

    v7 = sub_30C098();
    v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

    v9 = [objc_allocWithZone(UIImageView) initWithImage:v8];
    v10 = [objc_opt_self() whiteColor];
    v11 = [v10 colorWithAlphaComponent:0.5];

    [v9 setTintColor:v11];
    v12 = [v9 layer];
    [v12 setCompositingFilter:kCAFilterPlusL];

    [v4 addSubview:v9];
    [v9 setAlpha:0.0];

    v13 = *&v4[v1];
    *&v4[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_731C8()
{
  v1 = v0;
  v2 = sub_30D6F8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DownloadButton.Style(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v50 - v10;
  v12 = sub_302AB8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView__downloadIcon];
  if (v16 && (v17 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView__sizingDownloadIcon]) != 0)
  {
    v18 = v16;
    v17;
  }

  else
  {
    v51 = v9;
    v19 = v11;
    v20 = v15;
    v55 = v15;
    v53 = OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView__downloadIcon;
    sub_302868();
    v54 = v13;
    v21 = *(v13 + 16);
    v21(v19, v20, v12);
    (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v2);
    v22 = [v1 traitCollection];
    v23 = v12;
    v52 = v12;
    v24 = v22;
    sub_302E68();
    v26 = v25;

    (*(v3 + 8))(v5, v2);
    v27 = objc_opt_self();
    v28 = [v27 whiteColor];
    v29 = [v27 whiteColor];
    v30 = [v29 colorWithAlphaComponent:0.5];

    v57 = 1;
    v56 = 1;
    v21(&v19[v6[6]], v55, v23);
    v31 = &v19[v6[5]];
    *v31 = 0;
    *(v31 + 1) = 0;
    v31[16] = 1;
    *(v31 + 3) = 0x3FF0000000000000;
    *(v31 + 4) = v26;
    *(v31 + 5) = 0;
    *(v31 + 6) = 0;
    v31[56] = 1;
    *(v31 + 8) = 0;
    *(v31 + 9) = v28;
    *(v31 + 10) = v30;
    *(v31 + 11) = 0;
    v19[v6[7]] = 0;
    v32 = v19;
    v33 = v19;
    v34 = v51;
    sub_74800(v32, v51);
    v35 = objc_allocWithZone(type metadata accessor for DownloadButton(0));
    v36 = sub_19AB24(v34, 1, 0, 1);

    sub_19AA70(v37);
    v38 = v36;
    [v38 setUserInteractionEnabled:0];
    v39 = v38;
    v40 = [v27 whiteColor];
    v41 = [v40 colorWithAlphaComponent:0.5];

    [v39 setTintColor:v41];
    v42 = [v39 layer];
    [v42 setCompositingFilter:kCAFilterPlusL];

    [v1 addSubview:v39];
    [v39 setAlpha:0.0];
    v43 = *&v1[v53];
    *&v1[v53] = v39;
    v18 = v39;

    v44 = v55;
    v45 = sub_302A08();
    v46 = [objc_allocWithZone(UIImageView) initWithImage:v45];

    v47 = v46;
    [v47 setHidden:1];
    [v1 addSubview:v47];

    sub_74864(v33);
    (*(v54 + 8))(v44, v52);
    v48 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView__sizingDownloadIcon];
    *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView__sizingDownloadIcon] = v47;
    v47;
  }

  return v18;
}

void sub_73758(char *a1)
{
  v2 = sub_30A3F8();
  v52 = *(v2 - 8);
  v53 = v2;
  __chkstk_darwin(v2);
  v54 = (&v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_30ACB8();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  __chkstk_darwin(v7 - 8);
  v9 = &v50 - v8;
  v10 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_playButton];
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_episode;

  sub_309758();
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_data;
  swift_beginAccess();
  sub_749E4(v9, v10 + v12);
  swift_endAccess();
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_74A54;
  *(v15 + 24) = v14;
  v60 = sub_74D04;
  v61 = v15;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_19D688;
  v59 = &block_descriptor_40;
  v16 = _Block_copy(&aBlock);
  v17 = v10;

  v55 = v13;
  [v13 performWithoutAnimation:v16];
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_EB68(v9, &qword_3FEA58);
    v19 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_contextMenuButton];
    v20 = *&a1[v11];
    v59 = sub_309548();
    v60 = sub_74A9C(&qword_3FEA60, 255, &type metadata accessor for LegacyEpisodeLockup);
    aBlock = v20;

    sub_30ACA8();
    v21.super.super.super.super.isa = v19;
    isa = sub_30AC98(v21).super.super.isa;
    (*(v50 + 8))(v6, v51);
    [(objc_class *)v19 setMenu:isa];

    v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_bookmarkStateMachine;
    if (*&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_bookmarkStateMachine])
    {

      sub_303998();
    }

    v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_downloadPresenter;
    if (*&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_downloadPresenter])
    {

      sub_30A428();
    }

    v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView__downloadIcon;
    v26 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView__downloadIcon];
    if (v26)
    {
      v27 = v26;
      sub_19AA70(0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA68);

    sub_30B8E8();

    v28 = sub_303B28();

    *&a1[v23] = v28;

    v29 = v53;
    v30 = v54;
    *v54 = *&a1[v11];
    (*(v52 + 104))(v30, enum case for DownloadButtonPresenter.Data.lockup(_:), v29);
    sub_30A438();
    swift_allocObject();

    *&a1[v24] = sub_30A408();

    if (*&a1[v23])
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_303988();
    }

    if (*&a1[v24])
    {
      sub_74A9C(&qword_3FEA70, v31, type metadata accessor for EpisodeHeroButtonAreaUIKitView);

      v32 = a1;
      sub_30A428();
    }

    v33 = *&a1[v25];
    if (v33)
    {
      v34 = *&a1[v24];

      v35 = v33;
      sub_19AA70(v34);
    }

    if (*&a1[v23])
    {

      sub_3039A8();

      v36 = aBlock;
    }

    else
    {
      v36 = 0;
    }

    a1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_bookmarkState] = v36;
    v37 = sub_303A38() & 1;
    if (v37 != (sub_303A38() & 1))
    {
      v38 = swift_allocObject();
      *(v38 + 16) = a1;
      v60 = sub_74AE4;
      v61 = v38;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_914CC;
      v59 = &block_descriptor_49;
      v39 = _Block_copy(&aBlock);
      v40 = a1;

      [v55 animateWithDuration:v39 animations:0.2];
      _Block_release(v39);
    }

    if (*&a1[v24])
    {

      v41 = sub_30A3D8();
      v43 = v42;

      v44 = a1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_shouldShowDownloadIcon];
      v45 = v41 != 0 || (v43 & 1) == 0;
      a1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_shouldShowDownloadIcon] = v45;
      if (v44 != v45)
      {
LABEL_21:
        v46 = swift_allocObject();
        *(v46 + 16) = a1;
        v60 = sub_74CF8;
        v61 = v46;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = sub_914CC;
        v59 = &block_descriptor_56;
        v47 = _Block_copy(&aBlock);
        v48 = a1;

        [v55 animateWithDuration:v47 animations:0.2];

        _Block_release(v47);
        return;
      }
    }

    else
    {
      v49 = a1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_shouldShowDownloadIcon];
      a1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_shouldShowDownloadIcon] = 0;
      if (v49)
      {
        goto LABEL_21;
      }
    }
  }
}

void sub_73FAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_3039A8();
    v1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_bookmarkState] = v8;
    v2 = sub_303A38();
    if ((v2 ^ sub_303A38()))
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      v7[4] = sub_74CF8;
      v7[5] = v4;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_914CC;
      v7[3] = &block_descriptor_63;
      v5 = _Block_copy(v7);
      v6 = v1;

      [v3 animateWithDuration:v5 animations:0.2];

      _Block_release(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_74234(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_7428C(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_episode] = a1;

  v3 = sub_307D68();
  v5 = v4;
  if (v3 == sub_307D68() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_30D728();

    if (v8)
    {
    }

    else
    {
      v10 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = v2;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_749DC;
      *(v12 + 24) = v11;
      v16[4] = sub_74D04;
      v16[5] = v12;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 1107296256;
      v16[2] = sub_19D688;
      v16[3] = &block_descriptor_30;
      v13 = _Block_copy(v16);
      v14 = v2;

      [v10 performWithoutAnimation:v13];
      _Block_release(v13);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_744DC()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_bookmarkStateMachine) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_bookmarkState) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_downloadPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_shouldShowDownloadIcon) = 0;
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_moreIcon;
  *(v0 + v1) = sub_71060();
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_bookmarkIcon) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView__downloadIcon) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView__sizingDownloadIcon) = 0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_contextMenuButton;
  v3 = [objc_allocWithZone(UIButton) init];
  [v3 setShowsMenuAsPrimaryAction:1];
  [v3 setPreferredMenuElementOrder:2];
  [v3 setHoverStyle:0];
  *(v0 + v2) = v3;
  sub_30D648();
  __break(1u);
}

void sub_74604(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_shouldShowDownloadIcon];
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_shouldShowDownloadIcon] = !((a1 == 0) & a2);
  if (((a1 == 0) & a2) == v3)
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v8[4] = sub_74CF8;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_914CC;
    v8[3] = &block_descriptor_7;
    v6 = _Block_copy(v8);
    v7 = v2;

    [v4 animateWithDuration:v6 animations:0.2];
    _Block_release(v6);
  }
}

uint64_t sub_74718()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_74784()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC23ShelfKitCollectionViews30EpisodeHeroButtonAreaUIKitView_bookmarkIcon);
  if (result)
  {
    return [result setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];
  }

  return result;
}

uint64_t sub_74800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadButton.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_74864(uint64_t a1)
{
  v2 = type metadata accessor for DownloadButton.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_748DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_74924(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_74988()
{
  result = qword_3FEA50;
  if (!qword_3FEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FEA50);
  }

  return result;
}

uint64_t sub_749E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_74A5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_74A9C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_74AE8()
{
  v1 = *(v0 + 16);
  [v1 setNeedsLayout];

  return [v1 layoutIfNeeded];
}

uint64_t sub_74B34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_74BA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_74C44()
{
  result = qword_3FEA80;
  if (!qword_3FEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FEA80);
  }

  return result;
}

char *sub_74D38()
{
  v1 = sub_305A08();
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC70);
  sub_306018();
  v5 = objc_allocWithZone(type metadata accessor for EpisodeHeroTextAreaUIKitView(0));
  v6 = sub_792A4(v4, v3);

  return v6;
}

uint64_t sub_74E00()
{
  v0 = sub_305A08();
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_79A20(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC70);
  sub_306018();
  return sub_75444(v2);
}

uint64_t sub_74EC4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_305A08();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = 10.0;
  }

  else
  {
    v12 = *&a1;
  }

  if (a4)
  {
    v13 = 10.0;
  }

  else
  {
    v13 = *&a3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC70);
  sub_306018();
  v14 = sub_78900(v11, v12, v13);
  (*(v9 + 8))(v11, v8);
  return *&v14;
}

uint64_t sub_75004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_79C64();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_75068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_79C64();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_750CC()
{
  sub_79C64();
  sub_305D08();
  __break(1u);
}

Swift::Int sub_750F4()
{
  sub_30D7F8();
  sub_3020D8();
  sub_7795C(&qword_3FEC48, &type metadata accessor for PUITextStyle);
  sub_30BFD8();
  sub_30BFD8();
  sub_30BFD8();
  return sub_30D858();
}

uint64_t sub_751C8()
{
  sub_3020D8();
  sub_7795C(&qword_3FEC48, &type metadata accessor for PUITextStyle);
  sub_30BFD8();
  sub_30BFD8();
  return sub_30BFD8();
}

Swift::Int sub_75284()
{
  sub_30D7F8();
  sub_3020D8();
  sub_7795C(&qword_3FEC48, &type metadata accessor for PUITextStyle);
  sub_30BFD8();
  sub_30BFD8();
  sub_30BFD8();
  return sub_30D858();
}

uint64_t sub_75354()
{
  if ((sub_302028() & 1) == 0 || (sub_302028() & 1) == 0)
  {
    return 0;
  }

  return sub_302028();
}

BOOL sub_753D0()
{
  result = 0;
  if (sub_302028())
  {
    type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics.TextStyles(0);
    if (sub_302028() & 1) != 0 && (sub_302028())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_75444(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_3020D8();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics.TextStyles(0);
  __chkstk_darwin(v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_305478();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = sub_305A08();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics(0);
  __chkstk_darwin(v18 - 8);
  v37 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_environment;
  swift_beginAccess();
  (*(v15 + 24))(v2 + v20, v40, v14);
  swift_endAccess();
  v21 = *(v15 + 16);
  v38 = v14;
  v39 = v2;
  v21(v17, v2 + v20, v14);
  sub_788AC();
  sub_305A38();
  v22 = v41;
  sub_305758();
  sub_77C74(v22);
  (*(v8 + 104))(v10, enum case for DynamicTypeSize.xSmall(_:), v7);
  v23 = v13;
  LOBYTE(v20) = sub_305468();
  v24 = *(v8 + 8);
  v25 = v7;
  v24(v10, v7);
  if (v20)
  {
    v26 = v34;
    v27 = *(v33 + 20);
    sub_302018();
    v24(v23, v25);
    (*(v35 + 40))(&v6[v27], v26, v36);
  }

  else
  {
    v24(v23, v7);
  }

  v28 = v37;
  sub_79D38(v6, v37, type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics.TextStyles);
  v29 = *(v15 + 8);
  v30 = v38;
  v29(v17, v38);
  sub_7586C(v28);
  return (v29)(v40, v30);
}

uint64_t sub_7586C(uint64_t a1)
{
  v3 = type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_metrics;
  swift_beginAccess();
  sub_787E4(v1 + v9, v8);
  swift_beginAccess();
  sub_78848(a1, v1 + v9);
  swift_endAccess();
  sub_787E4(v1 + v9, v5);
  if (sub_302028() & 1) != 0 && (type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics.TextStyles(0), (sub_302028()))
  {
    v10 = sub_302028();
    sub_79CD8(v5, type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics);
    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_79CD8(v5, type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics);
  }

  sub_765DC();
LABEL_7:
  sub_79CD8(a1, type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics);
  return sub_79CD8(v8, type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics);
}

uint64_t sub_75A18()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView____lazy_storage___layout;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView____lazy_storage___layout))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView____lazy_storage___layout);
  }

  else
  {
    v2 = sub_75A80(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_75A80(uint64_t a1)
{
  type metadata accessor for LineCountLayoutGroup();
  v2 = swift_allocObject();
  *(v2 + 24) = _swiftEmptyArrayStorage;
  v3 = (v2 + 24);
  *(v2 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  v4 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_caption);
  v5 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_caption + 8);
  swift_beginAccess();
  v6 = v4;
  v7 = sub_CA860(0, 1, 1, _swiftEmptyArrayStorage);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_CA860((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[64 * v9];
  *(v10 + 4) = v4;
  *(v10 + 5) = 0;
  *(v10 + 6) = 0;
  *(v10 + 7) = 0;
  v10[64] = 0;
  *(v10 + 72) = xmmword_31BF90;
  *(v10 + 11) = v5;
  *v3 = v7;
  sub_77E78(v3);
  v11 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_title);
  v12 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_title + 8);
  v13 = *v3;
  v14 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_CA860(0, *(v13 + 2) + 1, 1, v13);
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_CA860((v15 > 1), v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[64 * v16];
  *(v17 + 4) = v11;
  *(v17 + 5) = 0;
  *(v17 + 6) = 0;
  *(v17 + 7) = 0;
  v17[64] = 0;
  *(v17 + 17) = *&v27[3];
  *(v17 + 65) = *v27;
  *(v17 + 72) = xmmword_31BFA0;
  *(v17 + 11) = v12;
  *v3 = v13;
  sub_77E78(v3);
  v18 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_summary);
  v19 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_summary + 8);
  v20 = *v3;
  v21 = v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_CA860(0, *(v20 + 2) + 1, 1, v20);
  }

  v23 = *(v20 + 2);
  v22 = *(v20 + 3);
  if (v23 >= v22 >> 1)
  {
    v20 = sub_CA860((v22 > 1), v23 + 1, 1, v20);
  }

  *(v20 + 2) = v23 + 1;
  v24 = &v20[64 * v23];
  *(v24 + 4) = v21;
  *(v24 + 5) = 0;
  *(v24 + 6) = 0;
  *(v24 + 7) = 0;
  v24[64] = 0;
  *(v24 + 17) = *&v26[3];
  *(v24 + 65) = *v26;
  *(v24 + 72) = xmmword_31BFB0;
  *(v24 + 11) = v19;
  *(v2 + 24) = v20;
  sub_77E78(v3);
  swift_endAccess();
  return v2;
}

id sub_75D30()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setAdjustsFontForContentSizeCategory:1];
  v1 = [objc_opt_self() whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.4];

  [v0 setTextColor:v2];
  v3 = [v0 layer];
  [v3 setCompositingFilter:kCAFilterPlusL];

  return v0;
}

id sub_75E20()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setAdjustsFontForContentSizeCategory:1];
  v1 = [objc_opt_self() whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.8];

  [v0 setTextColor:v2];
  v3 = [v0 layer];
  [v3 setCompositingFilter:kCAFilterPlusL];

  return v0;
}

void sub_75F10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_caption);

    v3 = [v2 accessibilityLabel];
    if (v3)
    {
      v4 = sub_30C0D8();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v33 = v4;
    v34 = v6;
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_title);

    v10 = [v9 accessibilityLabel];
    if (v10)
    {
      v11 = sub_30C0D8();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v35 = v11;
    v36 = v13;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = *(v14 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_summary);

    v17 = [v16 accessibilityLabel];
    if (v17)
    {
      v18 = sub_30C0D8();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v37 = v18;
    v38 = v20;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
LABEL_20:
  if (v21 <= 3)
  {
    v23 = 3;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 + 1;
  v25 = 16 * v21 + 40;
  while (1)
  {
    if (v21 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40AB30);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC78);
      sub_79DC0();
      sub_30BFF8();

      return;
    }

    if (v24 == ++v21)
    {
      break;
    }

    v26 = v25 + 16;
    v27 = *&v32[v25];
    v25 += 16;
    if (v27)
    {
      v28 = *&v32[v26 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_CAA70(0, *(v22 + 2) + 1, 1, v22);
      }

      v30 = *(v22 + 2);
      v29 = *(v22 + 3);
      if (v30 >= v29 >> 1)
      {
        v22 = sub_CAA70((v29 > 1), v30 + 1, 1, v22);
      }

      *(v22 + 2) = v30 + 1;
      v31 = &v22[16 * v30];
      *(v31 + 4) = v28;
      *(v31 + 5) = v27;
      goto LABEL_20;
    }
  }

  __break(1u);
}

id sub_76268()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC50);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - v3;
  v5 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_title];

  sub_307D88();
  v7 = v6;

  if (v7)
  {
    v8 = sub_30C098();
  }

  else
  {
    v8 = 0;
  }

  [v5 setText:v8];

  v9 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_summary];

  v10 = sub_3094E8();

  if (v10)
  {
    v11 = sub_304238();
  }

  else
  {
    v11 = 0;
  }

  [v9 setAttributedText:v11];

  [v9 setLineBreakMode:4];
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_captionSubscription;
  if (*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_captionSubscription])
  {

    sub_304D08();
  }

  sub_30A478();
  v13 = sub_3033A8();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);

  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_captionGenerator] = sub_30A458();

  sub_7795C(&qword_3FEC58, &type metadata accessor for EpisodeCaptionGenerator);
  v14 = sub_304D38();

  v17[1] = v14;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_304D98();
  v15 = sub_304F58();

  *&v1[v12] = v15;

  return [v1 setNeedsLayout];
}

void sub_76580()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsLayout];
  }
}

id sub_765DC()
{
  v1 = v0;
  v2 = sub_3020D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_caption];
  v7 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_metrics];
  swift_beginAccess();
  v8 = v3 + 16;
  v27 = *(v3 + 16);
  v27(v5, v7, v2);
  v9 = sub_302098();
  v10 = *(v3 + 8);
  v25[2] = v3 + 8;
  v26 = v10;
  v10(v5, v2);
  [v6 setFont:v9];

  v11 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_playedIcon];
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = v11;
  result = [v6 font];
  if (result)
  {
    v14 = result;
    v15 = [objc_opt_self() configurationWithFont:result scale:1];

    [v12 setPreferredSymbolConfiguration:v15];
LABEL_4:
    v16 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_title];
    v17 = type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics.TextStyles(0);
    v18 = v27;
    v27(v5, &v7[*(v17 + 20)], v2);
    v19 = sub_302098();
    v25[1] = v8;
    v20 = v1;
    v21 = v26;
    v26(v5, v2);
    [v16 setFont:v19];

    v22 = v20;
    v23 = *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_summary];
    v18(v5, &v7[*(v17 + 24)], v2);
    v24 = sub_302098();
    v21(v5, v2);
    [v23 setFont:v24];

    return [v22 setNeedsLayout];
  }

  __break(1u);
  return result;
}

void sub_7689C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_caption];
  v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_caption];
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_captionGenerator;
  if (*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_captionGenerator])
  {

    sub_30A448();
    v6 = v5;

    if (v6)
    {
      sub_30C248();

      v6 = sub_30C098();
    }
  }

  else
  {
    v6 = 0;
  }

  [v3 setText:v6];

  sub_75A18();
  [v1 bounds];
  sub_26FE68(v7, v8);

  v9 = *(v2 + 1);
  v29 = v3;
  v30 = v9;
  v10 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_title + 8];
  v31 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_title];
  v32 = v10;
  v11 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_summary + 8];
  v33 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_summary];
  v34 = v11;
  v28 = v3;
  v12 = v31;
  v13 = v33;
  v14 = 0;
  v15 = 0.0;
  while (2)
  {
    v16 = 3;
    if (v14 > 3)
    {
      v16 = v14;
    }

    v17 = -v16;
    v18 = (&v30 + 2 * v14++);
    while (1)
    {
      if (v17 + v14 == 1)
      {
        __break(1u);
        return;
      }

      v19 = *v18;
      v20 = *(v18 - 1);
      if ([v20 numberOfLines])
      {
        break;
      }

      [v20 setHidden:1];

      ++v14;
      v18 += 2;
      if (v14 == 4)
      {
        goto LABEL_14;
      }
    }

    v21 = v20;
    [v1 bounds];
    Width = CGRectGetWidth(v35);
    [v1 bounds];
    [v21 sizeThatFits:{v23, v24}];
    [v21 setFrame:{0.0, v15, Width, v25}];
    [v21 frame];
    v15 = v15 + v19 + CGRectGetHeight(v36);
    [v21 setHidden:0];

    if (v14 != 3)
    {
      continue;
    }

    break;
  }

LABEL_14:
  swift_arrayDestroy();
  if (*&v1[v4] && (, v26 = sub_30A468(), , (v26 & 1) != 0) && ([v28 isHidden] & 1) == 0)
  {
    sub_76BF0();
  }

  else
  {
    v27 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_playedIcon];
    if (v27)
    {
      [v27 setHidden:1];
    }
  }
}

void sub_76BF0()
{
  v1 = v0;
  v81 = sub_30D6F8();
  v2 = *(v81 - 8);
  __chkstk_darwin(v81);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v74 - v7;
  v9 = [v0 effectiveUserInterfaceLayoutDirection];
  v10 = sub_77140();
  [v10 sizeToFit];
  [v10 setHidden:0];
  v80 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_caption];
  [v80 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v10 frame];
  v20 = v19;
  v22 = v21;
  v82.origin.x = v12;
  v82.origin.y = v14;
  v82.size.width = v16;
  v82.size.height = v18;
  MinY = CGRectGetMinY(v82);
  v24 = v18;
  v25 = MinY;
  v26 = (v24 - v22) * 0.5;
  v79 = v9;
  v75 = v24;
  v76 = v16;
  v27 = v12;
  v28 = v14;
  v29 = v16;
  if (v9 == &dword_0 + 1)
  {
    MinX = CGRectGetMaxX(*&v27) - v20;
  }

  else
  {
    MinX = CGRectGetMinX(*&v27);
  }

  v77 = v14;
  v78 = v12;
  v31 = v25 + v26;
  v32 = [v1 traitCollection];
  v33 = enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:);
  v34 = *(v2 + 104);
  v34(v8, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v81);
  [v32 displayScale];
  if (v35 < COERCE_DOUBLE(1))
  {
    v36 = [objc_opt_self() mainScreen];
    [v36 scale];
  }

  v83.origin.x = MinX;
  v83.origin.y = v25 + v26;
  v83.size.width = v20;
  v83.size.height = v22;
  CGRectGetMinX(v83);
  sub_302E58();
  v38 = v37;
  v84.origin.x = MinX;
  v84.origin.y = v31;
  v84.size.width = v20;
  v84.size.height = v22;
  CGRectGetMinY(v84);
  sub_302E58();
  v40 = v39;
  v85.origin.x = MinX;
  v85.origin.y = v31;
  v85.size.width = v20;
  v85.size.height = v22;
  CGRectGetWidth(v85);
  sub_302E58();
  v42 = v41;
  v86.origin.x = MinX;
  v86.origin.y = v31;
  v86.size.width = v20;
  v86.size.height = v22;
  CGRectGetHeight(v86);
  sub_302E58();
  v44 = v43;

  v45 = *(v2 + 8);
  v46 = v8;
  v47 = v81;
  v45(v46, v81);
  [v10 setFrame:{v38, v40, v42, v44}];

  [v10 bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v87.origin.x = v49;
  v87.origin.y = v51;
  v87.size.width = v53;
  v87.size.height = v55;
  Width = CGRectGetWidth(v87);
  left = UIEdgeInsetsZero.left;
  v58 = [v1 traitCollection];
  v34(v4, v33, v47);
  [v58 displayScale];
  if (v59 < COERCE_DOUBLE(1))
  {
    v60 = [objc_opt_self() mainScreen];
    [v60 scale];
  }

  if (v79 == &dword_0 + 1)
  {
    v61 = left;
  }

  else
  {
    v61 = Width + 2.0;
  }

  v88.origin.x = UIEdgeInsetsInsetRect(v78, v77, v76, v75, UIEdgeInsetsZero.top, v61);
  x = v88.origin.x;
  y = v88.origin.y;
  v64 = v88.size.width;
  height = v88.size.height;
  CGRectGetMinX(v88);
  sub_302E58();
  v67 = v66;
  v89.origin.x = x;
  v89.origin.y = y;
  v89.size.width = v64;
  v89.size.height = height;
  CGRectGetMinY(v89);
  sub_302E58();
  v69 = v68;
  v90.origin.x = x;
  v90.origin.y = y;
  v90.size.width = v64;
  v90.size.height = height;
  CGRectGetWidth(v90);
  sub_302E58();
  v71 = v70;
  v91.origin.x = x;
  v91.origin.y = y;
  v91.size.width = v64;
  v91.size.height = height;
  CGRectGetHeight(v91);
  sub_302E58();
  v73 = v72;

  v45(v4, v81);
  [v80 setFrame:{v67, v69, v71, v73}];
}

id sub_77140()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_playedIcon;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_playedIcon];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_playedIcon];
LABEL_5:
    v14 = v2;
    return v3;
  }

  v4 = sub_30C098();
  v5 = [objc_opt_self() systemImageNamed:v4];

  v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];
  v7 = [objc_opt_self() whiteColor];
  v8 = [v7 colorWithAlphaComponent:0.4];

  [v6 setTintColor:v8];
  v9 = [v6 layer];
  [v9 setCompositingFilter:kCAFilterPlusL];

  result = [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_caption] font];
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() configurationWithFont:result scale:1];

    [v6 setPreferredSymbolConfiguration:v12];
    [v0 addSubview:v6];

    v13 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_77364()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EpisodeHeroTextAreaUIKitView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_774E4()
{
  result = sub_305A08();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics.TextStyles(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_77620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics.TextStyles(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_776A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics.TextStyles(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_77730()
{
  result = type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics.TextStyles(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_777B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3020D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_77830(uint64_t a1, uint64_t a2)
{
  v4 = sub_3020D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_778A0()
{
  result = sub_3020D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_7795C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_779A4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_30D838(*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_30D838(*&v2);
  type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey(0);
  sub_305478();
  sub_7795C(&unk_40C480, &type metadata accessor for DynamicTypeSize);
  return sub_30BFD8();
}

Swift::Int sub_77A68()
{
  sub_30D7F8();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_30D838(*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_30D838(*&v2);
  type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey(0);
  sub_305478();
  sub_7795C(&unk_40C480, &type metadata accessor for DynamicTypeSize);
  sub_30BFD8();
  return sub_30D858();
}

Swift::Int sub_77B50()
{
  sub_30D7F8();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_30D838(*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_30D838(*&v2);
  sub_305478();
  sub_7795C(&unk_40C480, &type metadata accessor for DynamicTypeSize);
  sub_30BFD8();
  return sub_30D858();
}

uint64_t sub_77C28(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_305468();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_77C74(double a1)
{
  v2 = sub_3020D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  sub_3020B8();
  sub_302058();
  v12 = *(v3 + 8);
  v12(v11, v2);
  if (a1 >= 280.0)
  {
    sub_302038();
    sub_302058();
    v12(v8, v2);
    type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics.TextStyles(0);
    sub_302078();
    v12(v5, v2);
    return sub_3020A8();
  }

  else
  {
    sub_3020A8();
    sub_302058();
    v12(v8, v2);
    type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics.TextStyles(0);
    sub_302078();
    v12(v5, v2);
    return sub_3020C8();
  }
}

Swift::Int sub_77E78(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_17EE44(v2);
  }

  v3 = *(v2 + 2);
  v28[0] = (v2 + 32);
  v28[1] = v3;
  result = sub_30D6C8(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 80;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*v12 >= *(v12 + 8))
          {
            break;
          }

          v13 = v12 - 48;
          v14 = *(v12 + 1);
          v15 = *(v12 + 2);
          v16 = *(v12 + 4);
          v26 = *(v12 + 3);
          v27 = v16;
          v24 = v14;
          v25 = v15;
          v17 = *(v12 - 2);
          *(v12 + 1) = *(v12 - 3);
          *(v12 + 2) = v17;
          v18 = *v12;
          *(v12 + 3) = *(v12 - 1);
          *(v12 + 4) = v18;
          v19 = v27;
          v20 = v24;
          v21 = v25;
          *(v13 + 2) = v26;
          *v12 = v19;
          *v13 = v20;
          *(v13 + 1) = v21;
          v12 -= 64;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 64;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_30C3B8();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v24 = v7 + 4;
    *(&v24 + 1) = v6;
    sub_78024(&v24, v23, v28, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_77FE4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_78024(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B0B98(v8);
      v8 = result;
    }

    v91 = v8 + 2;
    v92 = v8[2];
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = &v8[2 * v92];
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_785C8((*a3 + (*v93 << 6)), (*a3 + (*v95 << 6)), (*a3 + (v96 << 6)), v5);
        if (v4)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_114;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_115;
        }

        *v93 = v94;
        v93[1] = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_116;
        }

        v92 = *v91 - 1;
        result = memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v98 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + (v7 << 6) + 48);
      v11 = v9 << 6;
      v12 = *a3 + (v9 << 6);
      v13 = *(v12 + 48);
      v14 = v9 + 2;
      v15 = (v12 + 176);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 8;
        v18 = (v13 < v10) ^ (v16 >= v17);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = (v7 << 6) - 64;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v31 + v11);
            v23 = (v31 + v19);
            v25 = v22[2];
            v24 = v22[3];
            v27 = *v22;
            v26 = v22[1];
            v28 = v23[3];
            v30 = *v23;
            v29 = v23[1];
            v22[2] = v23[2];
            v22[3] = v28;
            *v22 = v30;
            v22[1] = v29;
            *v23 = v27;
            v23[1] = v26;
            v23[2] = v25;
            v23[3] = v24;
          }

          ++v21;
          v19 -= 64;
          v11 += 64;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_CA96C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v45 = v8[3];
    v46 = v5 + 1;
    if (v5 >= v45 >> 1)
    {
      result = sub_CA96C((v45 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v46;
    v47 = v8 + 4;
    v48 = &v8[2 * v5 + 4];
    *v48 = v9;
    v48[1] = v7;
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v49 = v8[4];
          v50 = v8[5];
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_57:
          if (v52)
          {
            goto LABEL_104;
          }

          v65 = &v8[2 * v46];
          v67 = *v65;
          v66 = v65[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_106;
          }

          v71 = &v47[2 * v5];
          v73 = *v71;
          v72 = v71[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_111;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v5 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v75 = &v8[2 * v46];
        v77 = *v75;
        v76 = v75[1];
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_72:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = &v47[2 * v5];
        v80 = *v78;
        v79 = v78[1];
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_110;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v86 = &v47[2 * v5 - 2];
        v87 = *v86;
        v88 = &v47[2 * v5];
        v89 = v88[1];
        sub_785C8((*a3 + (*v86 << 6)), (*a3 + (*v88 << 6)), (*a3 + (v89 << 6)), v100);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = v8[2];
        if (v5 >= v90)
        {
          goto LABEL_101;
        }

        v46 = v90 - 1;
        result = memmove(&v47[2 * v5], v88 + 2, 16 * (v90 - 1 - v5));
        v8[2] = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_3;
        }
      }

      v53 = &v47[2 * v46];
      v54 = *(v53 - 8);
      v55 = *(v53 - 7);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_102;
      }

      v58 = *(v53 - 6);
      v57 = *(v53 - 5);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_103;
      }

      v60 = &v8[2 * v46];
      v62 = *v60;
      v61 = v60[1];
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_105;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_107;
      }

      if (v64 >= v56)
      {
        v82 = &v47[2 * v5];
        v84 = *v82;
        v83 = v82[1];
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v51 < v85)
        {
          v5 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v98;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + (v7 << 6);
  v34 = v9 - v7;
LABEL_30:
  v35 = v34;
  v36 = v33;
  while (1)
  {
    if (*(v36 - 2) >= *(v36 + 6))
    {
LABEL_29:
      ++v7;
      v33 += 64;
      --v34;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v37 = v36 - 4;
    v39 = v36[2];
    v38 = v36[3];
    v41 = *v36;
    v40 = v36[1];
    v42 = *(v36 - 3);
    *v36 = *(v36 - 4);
    v36[1] = v42;
    v43 = *(v36 - 1);
    v36[2] = *(v36 - 2);
    v36[3] = v43;
    *v37 = v41;
    v37[1] = v40;
    v36 -= 4;
    v37[2] = v39;
    v37[3] = v38;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_785C8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v12 >> 6)
  {
    if (a4 != __dst || &__dst[64 * v10] <= a4)
    {
      memmove(a4, __dst, v10 << 6);
    }

    v14 = &v4[64 * v10];
    if (v8 < 64)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 6) < *(v6 + 6))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 64;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 64;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 64;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *v15;
    v18 = *(v15 + 1);
    v19 = *(v15 + 3);
    *(v7 + 2) = *(v15 + 2);
    *(v7 + 3) = v19;
    *v7 = v17;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[64 * v13] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v14 = &v4[64 * v13];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_24:
    v5 -= 64;
    do
    {
      v20 = v5 + 64;
      if (*(v6 - 2) < *(v14 - 2))
      {
        v25 = v6 - 64;
        if (v20 != v6)
        {
          v26 = *v25;
          v27 = *(v6 - 3);
          v28 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v28;
          *v5 = v26;
          *(v5 + 1) = v27;
        }

        if (v14 <= v4 || (v6 -= 64, v25 <= v7))
        {
          v6 = v25;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v21 = v14 - 64;
      if (v20 != v14)
      {
        v22 = *v21;
        v23 = *(v14 - 3);
        v24 = *(v14 - 1);
        *(v5 + 2) = *(v14 - 2);
        *(v5 + 3) = v24;
        *v5 = v22;
        *(v5 + 1) = v23;
      }

      v5 -= 64;
      v14 -= 64;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_35:
  v29 = v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v29 & 0xFFFFFFFFFFFFFFC0])
  {
    memmove(v6, v4, v29 >> 6 << 6);
  }

  return 1;
}

uint64_t sub_787E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_78848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_788AC()
{
  result = qword_3FEC60;
  if (!qword_3FEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FEC60);
  }

  return result;
}

double sub_78900(uint64_t a1, double a2, double a3)
{
  v75 = sub_3020D8();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics.TextStyles(0);
  __chkstk_darwin(v85);
  v79 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_305A08();
  v83 = *(v80 - 8);
  __chkstk_darwin(v80);
  v82 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics(0);
  __chkstk_darwin(v9 - 8);
  v86 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = (&v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_305478();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v73 - v20;
  __chkstk_darwin(v22);
  v24 = &v73 - v23;
  sub_788AC();
  sub_305A38();
  v25 = v93;
  sub_305758();
  v26 = *(v12 + 32);
  v27 = v16;
  v28 = v16;
  v29 = v14;
  v30 = *(v28 + 16);
  v81 = v24;
  v84 = v15;
  v30(v14 + v26, v24, v15);
  *v14 = a3;
  v14[1] = v25;
  if (qword_3FA998 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(&dword_10 + off_3FEA88) && (sub_191A20(v14), (v31 & 1) != 0))
  {
    swift_endAccess();
    sub_79CD8(v14, type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey);
    (*(v27 + 8))(v81, v84);
  }

  else
  {
    swift_endAccess();
    sub_305728();
    v33 = v32;
    v34 = v80;
    (*(v83 + 16))(v82, a1, v80);
    sub_305A38();
    v35 = v93;
    sub_305758();
    v36 = v79;
    sub_77C74(v35);
    v37 = v27;
    v38 = v84;
    (*(v27 + 104))(v18, enum case for DynamicTypeSize.xSmall(_:), v84);
    v39 = sub_305468();
    v40 = *(v37 + 8);
    v40(v18, v38);
    v78 = v37 + 8;
    v77 = v29;
    v76 = v40;
    if (v39)
    {
      v41 = *(v85 + 20);
      v42 = v73;
      sub_302018();
      v40(v21, v38);
      (*(v74 + 40))(v36 + v41, v42, v75);
    }

    else
    {
      v40(v21, v38);
    }

    sub_79D38(v36, v86, type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics.TextStyles);
    (*(v83 + 8))(v82, v34);
    type metadata accessor for LineCountLayoutGroup();
    inited = swift_initStackObject();
    *(inited + 24) = _swiftEmptyArrayStorage;
    v44 = (inited + 24);
    v94._countAndFlagsBits = 77;
    v94._object = 0xE100000000000000;
    v45 = sub_30C2D8(v94, 200);
    v47 = v46;
    v48 = sub_302098();
    swift_beginAccess();

    v49 = v48;
    v50 = sub_CA860(0, 1, 1, _swiftEmptyArrayStorage);
    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    if (v52 >= v51 >> 1)
    {
      v50 = sub_CA860((v51 > 1), v52 + 1, 1, v50);
    }

    v92 = 1;
    *(v50 + 2) = v52 + 1;
    v53 = &v50[64 * v52];
    *(v53 + 4) = v45;
    *(v53 + 5) = v47;
    *(v53 + 6) = v48;
    *(v53 + 7) = v33;
    v53[64] = 1;
    *(v53 + 72) = xmmword_31BF90;
    *(v53 + 11) = 0x3FF0000000000000;
    *v44 = v50;
    sub_77E78(v44);
    swift_endAccess();

    v54 = sub_302098();
    swift_beginAccess();
    v55 = *v44;

    v56 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_CA860(0, *(v55 + 2) + 1, 1, v55);
    }

    v58 = *(v55 + 2);
    v57 = *(v55 + 3);
    if (v58 >= v57 >> 1)
    {
      v55 = sub_CA860((v57 > 1), v58 + 1, 1, v55);
    }

    v91 = 1;
    *(v55 + 2) = v58 + 1;
    v59 = &v55[64 * v58];
    *(v59 + 4) = v45;
    *(v59 + 5) = v47;
    *(v59 + 6) = v54;
    *(v59 + 7) = v33;
    v59[64] = v91;
    v60 = *v90;
    *(v59 + 17) = *&v90[3];
    *(v59 + 65) = v60;
    *(v59 + 72) = xmmword_31BFA0;
    *(v59 + 11) = 0x4000000000000000;
    *v44 = v55;
    sub_77E78(v44);
    swift_endAccess();

    v61 = sub_302098();
    swift_beginAccess();
    v62 = *v44;

    v63 = v61;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_CA860(0, *(v62 + 2) + 1, 1, v62);
    }

    v65 = *(v62 + 2);
    v64 = *(v62 + 3);
    if (v65 >= v64 >> 1)
    {
      v62 = sub_CA860((v64 > 1), v65 + 1, 1, v62);
    }

    v89 = 1;
    *(v62 + 2) = v65 + 1;
    v66 = &v62[64 * v65];
    *(v66 + 4) = v45;
    *(v66 + 5) = v47;
    *(v66 + 6) = v61;
    *(v66 + 7) = v33;
    v66[64] = v89;
    v67 = *v88;
    *(v66 + 17) = *&v88[3];
    *(v66 + 65) = v67;
    *(v66 + 72) = xmmword_31BFB0;
    *(v66 + 11) = 0;
    *(inited + 24) = v62;
    sub_77E78(v44);
    swift_endAccess();

    sub_26FE68(a2, a3);
    v69 = v68;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = off_3FEA88;
    off_3FEA88 = 0x8000000000000000;
    v71 = v77;
    sub_295648(v77, isUniquelyReferenced_nonNull_native, v69);
    off_3FEA88 = v87;
    swift_endAccess();
    swift_setDeallocating();

    sub_79CD8(v86, type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics);
    sub_79CD8(v71, type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey);
    v76(v81, v84);
  }

  return a2;
}

char *sub_792A4(char *a1, char *a2)
{
  v3 = v2;
  v65 = a1;
  v60 = sub_3020D8();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics.TextStyles(0);
  __chkstk_darwin(v57);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_305478();
  v7 = *(v62 - 8);
  __chkstk_darwin(v62);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v56 - v11;
  v13 = sub_305A08();
  v66 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics(0);
  __chkstk_darwin(v16 - 8);
  v63 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_captionGenerator] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_captionSubscription] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView____lazy_storage___layout] = 0;
  v18 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_caption];
  *v18 = sub_75D30();
  v18[1] = v19;
  v20 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_title];
  v21 = [objc_allocWithZone(UILabel) init];
  [v21 setAdjustsFontForContentSizeCategory:1];
  v22 = [objc_opt_self() whiteColor];
  [v21 setTextColor:v22];

  *v20 = v21;
  *(v20 + 1) = 0x4000000000000000;
  v23 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_summary];
  *v23 = sub_75E20();
  v23[1] = v24;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_playedIcon] = 0;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_episode] = v65;

  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_objectGraph] = sub_3058B8();
  v25 = *(v66 + 16);
  v25(&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_environment], a2, v13);
  v65 = a2;
  v64 = v13;
  v26 = v13;
  v27 = v61;
  v25(v15, a2, v26);
  sub_788AC();
  sub_305A38();
  v28 = *aBlock;
  sub_305758();
  sub_77C74(v28);
  v29 = v62;
  (*(v7 + 104))(v9, enum case for DynamicTypeSize.xSmall(_:), v62);
  LOBYTE(v23) = sub_305468();
  v30 = *(v7 + 8);
  v31 = v29;
  v30(v9, v29);
  if (v23)
  {
    v32 = *(v57 + 20);
    v33 = v27;
    v34 = v58;
    sub_302018();
    v30(v12, v31);
    (*(v59 + 40))(v33 + v32, v34, v60);
    v35 = v33;
  }

  else
  {
    v30(v12, v29);
    v35 = v27;
  }

  v36 = v63;
  sub_79D38(v35, v63, type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics.TextStyles);
  v37 = *(v66 + 8);
  v38 = v64;
  v37(v15, v64);
  sub_79D38(v36, &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_metrics], type metadata accessor for EpisodeHeroTextAreaUIKitView.Metrics);
  v39 = type metadata accessor for EpisodeHeroTextAreaUIKitView(0);
  v74.receiver = v3;
  v74.super_class = v39;
  v40 = objc_msgSendSuper2(&v74, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v42 = *&v40[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_caption + 8];
  v68 = *&v40[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_caption];
  v41 = v68;
  v69 = v42;
  v44 = *&v40[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_title + 8];
  v70 = *&v40[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_title];
  v43 = v70;
  v71 = v44;
  v46 = *&v40[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_summary + 8];
  v72 = *&v40[OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_summary];
  v45 = v72;
  v73 = v46;
  v47 = v40;
  v48 = v41;
  v49 = v43;
  v50 = v45;
  [v47 addSubview:v48];
  [v47 addSubview:v49];
  [v47 addSubview:v50];
  swift_arrayDestroy();
  v51 = v47;
  v52 = [v51 layer];
  [v52 setAllowsGroupBlending:0];

  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_79DA0;
  aBlock[5] = v53;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21AED8;
  aBlock[3] = &block_descriptor_8;
  v54 = _Block_copy(aBlock);

  [v51 setAccessibilityLabelBlock:v54];
  _Block_release(v54);

  sub_76268();
  sub_765DC();

  v37(v65, v38);
  return v51;
}

uint64_t sub_79A20(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_episode) = a1;

  v2 = sub_307D68();
  v4 = v3;
  if (v2 == sub_307D68() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_30D728();

    if ((v7 & 1) == 0)
    {
      sub_76268();
    }
  }
}

void sub_79B10()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_captionGenerator) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_captionSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView____lazy_storage___layout) = 0;
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_caption);
  *v1 = sub_75D30();
  v1[1] = v2;
  v3 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_title);
  v4 = [objc_allocWithZone(UILabel) init];
  [v4 setAdjustsFontForContentSizeCategory:1];
  v5 = [objc_opt_self() whiteColor];
  [v4 setTextColor:v5];

  *v3 = v4;
  v3[1] = 0x4000000000000000;
  v6 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_summary);
  *v6 = sub_75E20();
  v6[1] = v7;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews28EpisodeHeroTextAreaUIKitView_playedIcon) = 0;
  sub_30D648();
  __break(1u);
}

unint64_t sub_79C64()
{
  result = qword_3FEC68;
  if (!qword_3FEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FEC68);
  }

  return result;
}