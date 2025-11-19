uint64_t DataFrame.combineColumns<A, B, C, D>(_:_:_:into:transform:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v101 = a7;
  v100 = a6;
  v109 = a5;
  v108 = a4;
  v102 = sub_21B34B474();
  v92 = *(v102 - 8);
  v17 = *(v92 + 64);
  MEMORY[0x28223BE20](v102);
  v80 = &v77 - v18;
  v99 = sub_21B34B474();
  v91 = *(v99 - 8);
  v19 = *(v91 + 64);
  MEMORY[0x28223BE20](v99);
  v82 = &v77 - v20;
  v98 = sub_21B34B474();
  v78 = *(v98 - 8);
  v21 = *(v78 + 64);
  MEMORY[0x28223BE20](v98);
  v81 = &v77 - v22;
  v116 = a11;
  v94 = sub_21B34B474();
  v77 = *(v94 - 8);
  v23 = *(v77 + 64);
  MEMORY[0x28223BE20](v94);
  v79 = &v77 - v24;
  v26 = *a1;
  v25 = a1[1];
  v28 = *a2;
  v27 = a2[1];
  v30 = *a3;
  v29 = a3[1];
  v31 = v12[2];
  v123 = *v12;
  v124 = v31;
  v85 = v26;
  v120 = v26;
  v121 = v25;
  v84 = v25;

  v104 = a8;
  DataFrame.subscript.getter(&v120);

  v97 = v128;
  v114 = v129;
  v115 = *(&v128 + 1);
  v32 = v12[2];
  v123 = *v12;
  v124 = v32;
  v87 = v28;
  v120 = v28;
  v121 = v27;
  v86 = v27;

  v105 = a9;
  DataFrame.subscript.getter(&v120);

  v96 = v128;
  v112 = v129;
  v113 = *(&v128 + 1);
  v33 = v12[2];
  v123 = *v12;
  v124 = v33;
  v120 = v30;
  v121 = v29;
  v88 = v29;

  v106 = a10;
  DataFrame.subscript.getter(&v120);

  v111 = *(&v128 + 1);
  v95 = v128;
  v110 = v129;
  v35 = *v12;
  v34 = v12[1];
  v36 = v12[2];
  v37 = *(*v12 + 16);
  v89 = v30;
  v107 = v34;
  if (v37)
  {
    sub_21B233A74(v35 + 32, &v123);
    v39 = v125;
    v38 = v126;
    __swift_project_boxed_opaque_existential_1(&v123, v125);
    v40 = *(v38 + 8);
    v41 = *(v40 + 48);
    v42 = v109;

    v43 = v41(v39, v40);
    result = sub_21B233960(&v123);
    if (v43 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v43)
    {
      v45 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v42 = v109;
  }

  v43 = 0;
  v45 = 2;
LABEL_7:
  v46 = v108;
  v47 = sub_21B2FB1D4(0, v43, v45);

  sub_21B23A9F4(0, v43, v45);
  Column.init(name:capacity:)(v46, v42, v47, v116, &v128);
  v49 = *v12;
  v48 = v12[1];
  v50 = v12[2];
  v51 = *(*v12 + 16);
  v103 = *v12;
  v109 = v50;
  if (!v51)
  {

LABEL_12:
    v57 = 2;
    sub_21B2A6400(0, 0, 2);
    v56 = 0;
    if (v60)
    {
      v58 = 0;
    }

    else
    {
      v58 = v59;
    }

    goto LABEL_15;
  }

  sub_21B233A74(v49 + 32, &v123);
  v52 = v125;
  v53 = v126;
  __swift_project_boxed_opaque_existential_1(&v123, v125);
  v54 = *(v53 + 8);
  v55 = *(v54 + 48);

  v56 = v55(v52, v54);
  result = sub_21B233960(&v123);
  if (v56 < 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v49 = v103;
  if (!v56)
  {
    goto LABEL_12;
  }

  v57 = 0;
  v58 = 0;
LABEL_15:
  v108 = v48;
  v83 = v12;
  LODWORD(v107) = v57;
  sub_21B2A6400(0, v56, v57);
  if (v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = v61;
  }

  v93 = v63;
  if (v58 == v63)
  {
LABEL_23:

    sub_21B23A9F4(0, v56, v107);
    v120 = v85;
    v121 = v84;
    v123 = v128;
    v124 = v129;

    DataFrame.replaceColumn<A, B>(_:with:)(&v120, &v123);

    v120 = v87;
    v121 = v86;
    DataFrame.removeColumn<A>(_:)(&v120);

    v120 = v89;
    v121 = v88;
    DataFrame.removeColumn<A>(_:)(&v120);
  }

  else
  {
    v90 = (v92 + 8);
    v91 += 8;
    v92 = v78 + 8;
    v64 = (v77 + 8);
    v65 = v80;
    v66 = v82;
    v67 = v81;
    v68 = v79;
    while (1)
    {
      *&v123 = v49;
      *(&v123 + 1) = v108;
      v124 = v109;
      v125 = 0;
      v69 = v56;
      v126 = v56;
      v127 = v107;
      v70 = DataFrame.Rows.index(after:)(v58);
      *&v123 = v97;
      *(&v123 + 1) = v115;
      v124 = v114;
      v71 = type metadata accessor for Column();
      Column.subscript.getter(v58, v71, v67);
      v120 = v96;
      v121 = v113;
      v122 = v112;
      v72 = type metadata accessor for Column();
      Column.subscript.getter(v58, v72, v66);
      v117 = v95;
      v118 = v111;
      v119 = v110;
      v73 = type metadata accessor for Column();
      Column.subscript.getter(v58, v73, v65);
      v74 = v130;
      v100(v67, v66, v65);
      if (v74)
      {
        break;
      }

      v130 = 0;
      (*v90)(v65, v102);
      (*v91)(v66, v99);
      (*v92)(v67, v98);
      v75 = type metadata accessor for Column();
      Column.append(_:)(v68, v75);
      (*v64)(v68, v94);
      v58 = v70;
      v76 = v70 == v93;
      v49 = v103;
      v56 = v69;
      if (v76)
      {
        goto LABEL_23;
      }
    }

    (*v90)(v65, v102);
    (*v91)(v66, v99);
    (*v92)(v67, v98);

    return sub_21B23A9F4(0, v69, v107);
  }
}

unint64_t SFrameReadingError.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 2)
  {
    if (*(v0 + 16))
    {
      if (v3 != 1)
      {
        sub_21B34B634();

        v9 = 0xD000000000000017;
        v7 = sub_21B34B944();
        MEMORY[0x21CEED5E0](v7);

        v5 = 46;
        v6 = 0xE100000000000000;
        goto LABEL_14;
      }

      sub_21B34B634();

      v4 = 0xD00000000000001CLL;
    }

    else
    {
      sub_21B34B634();

      v4 = 0xD000000000000014;
    }

LABEL_13:
    v9 = v4;
    v5 = v1;
    v6 = v2;
    goto LABEL_14;
  }

  if (*(v0 + 16) <= 4u)
  {
    if (v3 == 3)
    {
      sub_21B34B634();

      v4 = 0xD000000000000019;
    }

    else
    {
      sub_21B34B634();

      v4 = 0xD000000000000013;
    }

    goto LABEL_13;
  }

  if (v3 == 5)
  {
    sub_21B34B634();

    v9 = 0xD00000000000001ALL;
    MEMORY[0x21CEED5E0](v1, v2);
    v5 = 11815;
    v6 = 0xE200000000000000;
LABEL_14:
    MEMORY[0x21CEED5E0](v5, v6);
    return v9;
  }

  return 0xD000000000000037;
}

unint64_t SFrameReadingError.errorDescription.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  return SFrameReadingError.description.getter();
}

unint64_t sub_21B2A0A2C()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  return SFrameReadingError.description.getter();
}

uint64_t get_enum_tag_for_layout_string_11TabularData18SFrameReadingErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21B2A0AA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B2A0AEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B2A0B30(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_21B2A0B58()
{

  v0 = 0;
  while (1)
  {
    v1 = sub_21B34AE14();
    if (!v2)
    {
      break;
    }

    v3 = sub_21B2A0BE0(v1, v2);

    v4 = __OFADD__(v0, v3);
    v0 += v3;
    if (v4)
    {
      __break(1u);
      break;
    }
  }

  return v0;
}

unint64_t sub_21B2A0BE0(unint64_t a1, unint64_t a2)
{
  v4 = sub_21B34BCE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21B2A135C(a1, a2);
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_113;
  }

  v10 = 1;
  if ((result - 14) > 0xFFFFFFFB || (result - 8232) < 2 || result == 133)
  {
    return v10;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    return 0;
  }

  v51 = 4 * v11;
  v12 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v52 = 4 << v12;
  v53 = v4;
  v48 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v49 = a2 & 0xFFFFFFFFFFFFFFLL;
  v13 = (v5 + 8);

  v10 = 0;
  v14 = 15;
  v50 = v11;
  while (1)
  {
    v15 = v14;
    v16 = v14 & 0xC;
    v17 = (v14 & 1) == 0 || v16 == v52;
    v18 = v17;
    if (!v17)
    {
      break;
    }

    result = v14;
    if (v16 == v52)
    {
      result = sub_21B2E1AD0(v14, a1, a2);
      if (v11 <= result >> 16)
      {
        goto LABEL_105;
      }
    }

    else if (v11 <= v14 >> 16)
    {
      goto LABEL_105;
    }

    if ((result & 1) == 0)
    {
      result = result & 0xC | sub_21B2A15B8(result, a1, a2) & 0xFFFFFFFFFFFFFFF3 | 1;
    }

LABEL_27:
    if ((a2 & 0x1000000000000000) != 0)
    {
      v14 = sub_21B34AD74();
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v19 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v54 = a1;
        v55 = v49;
        v21 = *(&v54 + v19);
      }

      else
      {
        v20 = v48;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v20 = sub_21B34B6F4();
        }

        v21 = *(v20 + v19);
      }

      v23 = v21;
      v24 = __clz(v21 ^ 0xFF) - 24;
      if (v23 >= 0)
      {
        LOBYTE(v24) = 1;
      }

      v14 = ((v19 + v24) << 16) | 5;
      if (!v18)
      {
LABEL_33:
        v22 = v15 >> 16;
        result = v15;
        if (v15 >> 16 >= v11)
        {
          goto LABEL_106;
        }

LABEL_43:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_59;
      }
    }

    result = v15;
    if (v16 == v52)
    {
      result = sub_21B2E1AD0(v15, a1, a2);
    }

    v22 = result >> 16;
    if (result >> 16 >= v11)
    {
      goto LABEL_107;
    }

    if (result)
    {
      goto LABEL_43;
    }

    v22 = sub_21B2A15B8(result, a1, a2) >> 16;
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_44:
      if ((a2 & 0x2000000000000000) != 0)
      {
        v54 = a1;
        v55 = v49;
        v26 = &v54 + v22;
      }

      else
      {
        v25 = v48;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v25 = sub_21B34B6F4();
        }

        v26 = (v25 + v22);
      }

      v27 = *v26;
      if (*v26 < 0)
      {
        v28 = (__clz(v27 ^ 0xFF) - 24);
        if (v28 > 2)
        {
          if (v28 == 3)
          {
            v27 = ((v27 & 0xF) << 12) | ((v26[1] & 0x3F) << 6) | v26[2] & 0x3F;
          }

          else
          {
            v27 = ((v27 & 0xF) << 18) | ((v26[1] & 0x3F) << 12) | ((v26[2] & 0x3F) << 6) | v26[3] & 0x3F;
          }
        }

        else if (v28 != 1)
        {
          v27 = v26[1] & 0x3F | ((v27 & 0x1F) << 6);
        }
      }

      goto LABEL_60;
    }

LABEL_59:
    v27 = sub_21B34B624();
LABEL_60:
    sub_21B34BCF4();
    v29 = sub_21B34BCD4();
    v30 = *v13;
    (*v13)(v8, v53);
    if ((v29 & 1) == 0)
    {
      if (v27 == 8205 || (sub_21B34BCF4(), v33 = sub_21B34BCC4(), v34 = v53, v30(v8, v53), (v33 & 1) != 0) || (sub_21B34BCF4(), v35 = sub_21B34BCA4(), result = (v30)(v8, v34), (v35 & 1) != 0))
      {
        v11 = v50;
      }

      else
      {
        v36 = __OFADD__(v10++, 1);
        v11 = v50;
        if (v36)
        {
          goto LABEL_112;
        }
      }

      goto LABEL_13;
    }

    v31 = sub_21B2A14AC(v15, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v32 = sub_21B34AD74();
    }

    else
    {
      v32 = ((sub_21B34B614() + (v31 >> 16)) << 16) | 5;
    }

    v11 = v50;
    if (v51 <= v32 >> 14)
    {
      goto LABEL_91;
    }

    v37 = sub_21B2A14AC(v32, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_21B34B624();
    }

    else
    {
      v38 = v37 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v54 = a1;
        v55 = v49;
        v40 = &v54 + v38;
      }

      else
      {
        v39 = v48;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v39 = sub_21B34B6F4();
        }

        v40 = (v39 + v38);
      }

      result = *v40;
      if (*v40 < 0)
      {
        v41 = (__clz(result ^ 0xFF) - 24);
        if (v41 > 2)
        {
          if (v41 == 3)
          {
            v42 = v40[1];
            v43 = v40[2];
            v44 = ((result & 0xF) << 12) | ((v42 & 0x3F) << 6);
          }

          else
          {
            v45 = v40[1];
            v46 = v40[2];
            v43 = v40[3];
            v44 = ((result & 0xF) << 18) | ((v45 & 0x3F) << 12) | ((v46 & 0x3F) << 6);
          }

          result = v44 & 0xFFFFFFC0 | v43 & 0x3F;
        }

        else if (v41 != 1)
        {
          result = v40[1] & 0x3F | ((result & 0x1F) << 6);
        }
      }
    }

    if (result == 65038)
    {
      v36 = __OFADD__(v10++, 1);
      if (v36)
      {
        goto LABEL_111;
      }

      goto LABEL_13;
    }

    if (result == 65039)
    {
      v36 = __OFADD__(v10, 2);
      v10 += 2;
      if (v36)
      {
        goto LABEL_110;
      }
    }

    else
    {
LABEL_91:
      sub_21B34BCF4();
      v47 = sub_21B34BCB4();
      result = (v30)(v8, v53);
      if (v47)
      {
        v36 = __OFADD__(v10, 2);
        v10 += 2;
        if (v36)
        {
          goto LABEL_108;
        }
      }

      else
      {
        v36 = __OFADD__(v10++, 1);
        if (v36)
        {
          goto LABEL_109;
        }
      }
    }

LABEL_13:
    if (v51 == v14 >> 14)
    {

      return v10;
    }
  }

  result = v14;
  if (v11 > v14 >> 16)
  {
    goto LABEL_27;
  }

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
  return result;
}

uint64_t sub_21B2A11F8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  v4 = 0;
  v5 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v5 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v6 = 4 * v5;
  if (!v5 || a1 < 1)
  {
LABEL_10:
    if (v4 == v6)
    {
    }

    else
    {
      sub_21B34ADC4();
      v14 = sub_21B34AEB4();
      v15 = MEMORY[0x21CEED540](v14);

      MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

      return v15;
    }

    return v3;
  }

  v8 = 0;
  while (1)
  {
    v9 = sub_21B34AE94();
    v11 = sub_21B2A0BE0(v9, v10);

    v13 = __OFADD__(v8, v11);
    v8 += v11;
    if (v13)
    {
      break;
    }

    v4 = sub_21B34ADB4() >> 14;
    if (v4 >= v6 || v8 >= a1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21B2A135C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_21B2A14AC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_21B34B624();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_21B34B6F4() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_21B2A14AC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_21B2A1544(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_21B2A15B8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_21B2A1544(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_21B2E1AD0(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21B2A15B8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_21B34B6F4();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_21B2A16DC(uint64_t a1)
{
  v49 = sub_21B34A764();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_21B34AD44();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v45[1] = v1;
  v60 = MEMORY[0x277D84F90];
  sub_21B233014(0, v9, 0);
  v10 = v60;
  v11 = a1 + 56;
  v12 = -1 << *(a1 + 32);
  result = sub_21B34B574();
  v14 = result;
  v15 = 0;
  v52 = a1;
  v53 = (v6 + 8);
  v46 = a1 + 64;
  v47 = (v3 + 8);
  v50 = v9;
  v51 = a1 + 56;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v19 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_36;
    }

    v59 = v10;
    v57 = *(a1 + 36);
    v20 = (*(a1 + 48) + 16 * v14);
    v22 = *v20;
    v21 = v20[1];

    v23 = v54;
    sub_21B34AD34();
    v24 = sub_21B34AC94();
    v26 = v25;
    result = (*v53)(v23, v55);
    if (v26 >> 60 == 15)
    {
      goto LABEL_43;
    }

    v27 = v26 >> 62;
    v56 = v15;
    v58 = 1 << v14;
    if ((v26 >> 62) > 1)
    {
      if (v27 != 2)
      {
        goto LABEL_20;
      }

      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      v28 = v29 - v30;
      if (__OFSUB__(v29, v30))
      {
        goto LABEL_42;
      }

      if (!v28)
      {
        goto LABEL_20;
      }
    }

    else if (v27)
    {
      v33 = HIDWORD(v24) - v24;
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_41;
      }

      v28 = v33;
      if (!v33)
      {
LABEL_20:
        sub_21B260C58(v24, v26);
        v31 = MEMORY[0x277D84F90];
        goto LABEL_23;
      }
    }

    else
    {
      v28 = BYTE6(v26);
      if (!BYTE6(v26))
      {
        goto LABEL_20;
      }
    }

    if (v28 < 1)
    {
      v31 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3F8, &qword_21B351CF8);
      v31 = swift_allocObject();
      v32 = _swift_stdlib_malloc_size(v31);
      v31[2] = v28;
      v31[3] = 2 * v32 - 64;
    }

    v34 = v48;
    v35 = sub_21B34A6F4();
    sub_21B260C58(v24, v26);
    result = (*v47)(v34, v49);
    if (v35 != v28)
    {
      goto LABEL_40;
    }

LABEL_23:

    v10 = v59;
    v60 = v59;
    v37 = *(v59 + 16);
    v36 = *(v59 + 24);
    if (v37 >= v36 >> 1)
    {
      result = sub_21B233014((v36 > 1), v37 + 1, 1);
      v10 = v60;
    }

    *(v10 + 16) = v37 + 1;
    *(v10 + 8 * v37 + 32) = v31;
    a1 = v52;
    v16 = 1 << *(v52 + 32);
    if (v14 >= v16)
    {
      goto LABEL_37;
    }

    v11 = v51;
    v38 = *(v51 + 8 * v19);
    if ((v38 & v58) == 0)
    {
      goto LABEL_38;
    }

    if (v57 != *(v52 + 36))
    {
      goto LABEL_39;
    }

    v39 = v38 & (-2 << (v14 & 0x3F));
    if (v39)
    {
      v16 = __clz(__rbit64(v39)) | v14 & 0x7FFFFFFFFFFFFFC0;
      v17 = v50;
      v18 = v56;
    }

    else
    {
      v40 = v19 << 6;
      v41 = v19 + 1;
      v42 = (v46 + 8 * v19);
      v17 = v50;
      v18 = v56;
      while (v41 < (v16 + 63) >> 6)
      {
        v44 = *v42++;
        v43 = v44;
        v40 += 64;
        ++v41;
        if (v44)
        {
          result = sub_21B2A2B24(v14, v57, 0);
          v16 = __clz(__rbit64(v43)) + v40;
          goto LABEL_4;
        }
      }

      result = sub_21B2A2B24(v14, v57, 0);
    }

LABEL_4:
    v15 = v18 + 1;
    v14 = v16;
    if (v15 == v17)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_36:
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
  return result;
}

uint64_t DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v17 = *(a7 + 16);
  v77 = *a7;
  v78 = v17;
  v79[0] = *(a7 + 32);
  *(v79 + 13) = *(a7 + 45);
  v18 = sub_21B34A6E4();
  if (v8)
  {
    v20 = sub_21B34A6D4();
    (*(*(v20 - 8) + 8))(a1, v20);
    sub_21B233788(&v77);
  }

  else
  {
    v48 = a2;
    v80 = a6;
    v44 = a5;
    v47 = a1;
    v22 = *(a7 + 16);
    v68[0] = *a7;
    v68[1] = v22;
    *v69 = *(a7 + 32);
    *&v69[13] = *(a7 + 45);
    v23 = v18;
    v24 = v19;
    sub_21B260DC0(v18, v19);
    sub_21B232090(&v77, &v61);
    sub_21B2320EC(v23, v24, v68, &v70);
    v46 = a4;
    v65 = v74;
    v66 = v75;
    v67 = v76;
    v61 = v70;
    v62 = v71;
    v63 = v72;
    v64 = v73;
    v58 = v74;
    v59 = v75;
    v60 = v76;
    v54 = v70;
    v55 = v71;
    v56 = v72;
    v57 = v73;
    v25 = sub_21B233444(&v54, v77);
    v26 = v80;
    v27 = sub_21B231C40(v25, v48);

    v49 = *(v27 + 16);
    if (v49)
    {
      v28 = v27;
      v43 = v24;
      v29 = 0;
      v30 = 0;
      v31 = a8;
      while (v30 < *(v28 + 16))
      {
        v27 = v28;
        v34 = *(v28 + v29 + 32);
        v33 = *(v28 + v29 + 40);
        v80 = *(v28 + v29 + 48);
        v35 = *(v26 + 16);

        if (v35)
        {
          v36 = sub_21B24B534(v34, v33);
          if (v37)
          {
            v45 = *(*(v26 + 56) + v36);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_21B23A36C(v27);
              v27 = result;
            }

            if (v30 >= *(v27 + 16))
            {
              goto LABEL_17;
            }

            v38 = v27 + v29;
            v39 = *(v27 + v29 + 40);
            *(v38 + 32) = v34;
            *(v38 + 40) = v33;
            *(v38 + 48) = v80;
            *(v38 + 56) = v45;
          }
        }

        ++v30;

        v29 += 32;
        v32 = v46;
        v28 = v27;
        if (v49 == v30)
        {
          v40 = a3;

          v24 = v43;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    else
    {

      v31 = a8;
      v32 = v46;
      v40 = a3;
LABEL_15:
      v58 = v65;
      v59 = v66;
      v60 = v67;
      v54 = v61;
      v55 = v62;
      v56 = v63;
      v57 = v64;
      v50[0] = v77;
      v50[1] = v78;
      v51[0] = v79[0];
      *(v51 + 13) = *(v79 + 13);
      sub_21B22F2CC(&v54, v40, v32, v44 & 1, v27, v50, &v52);
      v41 = sub_21B34A6D4();
      (*(*(v41 - 8) + 8))(v47, v41);
      sub_21B234324(v23, v24);
      sub_21B233788(&v77);
      sub_21B299E64(&v61);

      v42 = v53;
      *v31 = v52;
      *(v31 + 16) = v42;
    }
  }

  return result;
}

uint64_t DataFrame.init<each A>(contentsOfCSVFile:columns:rows:options:)@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v10 = a7;
  v52 = a5;
  v54 = a4;
  v53 = a3;
  v12 = a2;
  v13 = a1;
  v51 = a9;
  v55 = a8;
  if (a7 == 1)
  {
    v14 = *(a8 & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = type metadata accessor for ColumnID();
    v16 = TupleTypeMetadata;
  }

  else
  {
    v63 = a2;
    MEMORY[0x28223BE20](a1);
    if (v10)
    {
      v19 = (v55 & 0xFFFFFFFFFFFFFFFELL);
      v20 = (v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = v10;
      do
      {
        v22 = *v19++;
        *v20++ = type metadata accessor for ColumnID();
        --v21;
      }

      while (v21);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v16 = TupleTypeMetadata;
    v13 = a1;
    v12 = v63;
  }

  v23 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v25 = v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a6[1];
  v60 = *a6;
  v61 = v26;
  v62[0] = a6[2];
  *(v62 + 13) = *(a6 + 45);
  v27 = sub_21B34A6E4();
  if (v9)
  {
    v29 = sub_21B34A6D4();
    (*(*(v29 - 8) + 8))(v13, v29);
    for (result = sub_21B233788(&v60); v10; --v10)
    {
      v43 = v12[v10 - 1][1];
    }
  }

  else
  {
    v31 = v27;
    v32 = v28;
    v49[1] = v49;
    v50 = v13;
    v63 = v12;
    v49[0] = v49;
    MEMORY[0x28223BE20](v27);
    v34 = (v49 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v10)
    {
      v35 = (v16 + 32);
      v36 = v63;
      v37 = (v49 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
      v38 = v10;
      do
      {
        if (v10 == 1)
        {
          v39 = 0;
        }

        else
        {
          v39 = *v35;
        }

        v40 = &v25[v39];
        v41 = *v36++;
        v42 = v41[1];
        *v40 = *v41;
        *(v40 + 1) = v42;
        *v37++ = v40;

        v35 += 4;
        --v38;
      }

      while (v38);
    }

    v56[0] = v60;
    v56[1] = v61;
    v57[0] = v62[0];
    *(v57 + 13) = *(v62 + 13);
    DataFrame.init<each A>(csvData:columns:rows:options:)(v31, v32, v34, v53, v54, v52 & 1, v56, v10, &v58, v55);
    v44 = sub_21B34A6D4();
    result = (*(*(v44 - 8) + 8))(v50, v44);
    v45 = v59;
    v46 = v51;
    *v51 = v58;
    *(v46 + 2) = v45;
    if (v10)
    {
      v47 = v63 - 1;
      do
      {
        v48 = v47[v10][1];

        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t DataFrame.init<each A>(csvData:columns:rows:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v85 = a3;
  v18 = *(a7 + 16);
  v82 = *a7;
  v83 = v18;
  v20 = *a7;
  v19 = *(a7 + 16);
  v84[0] = *(a7 + 32);
  *(v84 + 13) = *(a7 + 45);
  v73[0] = v20;
  v73[1] = v19;
  *v74 = *(a7 + 32);
  *&v74[13] = *(a7 + 45);
  sub_21B260DC0(a1, a2);
  sub_21B232090(&v82, &v66);
  sub_21B2320EC(a1, a2, v73, &v75);
  if (v10)
  {
    sub_21B234324(a1, a2);
    result = sub_21B233788(&v82);
    if (!a8)
    {
      return result;
    }

    goto LABEL_34;
  }

  v55 = a6;
  v70 = v79;
  v71 = v80;
  v72 = v81;
  v66 = v75;
  v67 = v76;
  v68 = v77;
  v69 = v78;
  v63 = v79;
  v64 = v80;
  v65 = v81;
  v59 = v75;
  v60 = v76;
  v61 = v77;
  v62 = v78;
  v53 = a2;
  v54 = sub_21B233444(&v59, v82);
  v51 = a5;
  v52 = a1;
  v49 = a9;
  v50 = a4;
  v22 = MEMORY[0x277D84F90];
  if (a8)
  {
    v23 = v85;
    v24 = a8;
    do
    {
      v25 = **v23;
      v26 = (*v23)[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_21B231F84(0, *(v22 + 2) + 1, 1, v22);
      }

      v28 = *(v22 + 2);
      v27 = *(v22 + 3);
      if (v28 >= v27 >> 1)
      {
        v22 = sub_21B231F84((v27 > 1), v28 + 1, 1, v22);
      }

      *(v22 + 2) = v28 + 1;
      v29 = &v22[16 * v28];
      *(v29 + 4) = v25;
      *(v29 + 5) = v26;
      ++v23;
      --v24;
    }

    while (v24);
  }

  v30 = sub_21B231C40(v54, v22);

  if (a8)
  {
    v31 = 0;
    v32 = (v22 + 40);
    v33 = 56;
    while (1)
    {
      v34 = v85[v31][1];
      v35 = nullsub_14(*((a10 & 0xFFFFFFFFFFFFFFFELL) + 8 * v31));
      if (swift_dynamicCastMetatype())
      {
        v35 = 0;
      }

      else if (swift_dynamicCastMetatype())
      {
        v35 = 1;
      }

      else if (swift_dynamicCastMetatype())
      {
        v35 = 2;
      }

      else if (swift_dynamicCastMetatype())
      {
        v35 = 3;
      }

      else
      {
        sub_21B34A834();
        if (swift_dynamicCastMetatype())
        {
          v35 = 4;
        }

        else if (swift_dynamicCastMetatype())
        {
          v35 = 5;
        }

        else
        {
          if (!swift_dynamicCastMetatype())
          {
            goto LABEL_42;
          }

          v35 = 6;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_21B23A36C(v30);
      }

      v36 = v55;
      if (v31 >= *(v30 + 16))
      {
        break;
      }

      *(v30 + v33) = v35;
      ++v31;
      v32 += 2;
      v33 += 32;
      if (a8 == v31)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_42:

    sub_21B299E64(&v66);
    sub_21B233788(&v82);

    if (v31 >= *(v22 + 2))
    {
      __break(1u);
      return result;
    }

    v43 = *(v32 - 1);
    v44 = *v32;

    *&v59 = v35;
    swift_getMetatypeMetadata();
    v45 = sub_21B34AD54();
    v47 = v46;
    sub_21B27A934();
    swift_allocError();
    *v48 = v31;
    *(v48 + 8) = v43;
    *(v48 + 16) = v44;
    *(v48 + 24) = v45;
    *(v48 + 32) = v47;
    *(v48 + 40) = 7;
    swift_willThrow();
    sub_21B234324(v52, v53);

LABEL_34:
    v37 = v85 - 1;
    do
    {
      v38 = v37[a8][1];

      --a8;
    }

    while (a8);
    return result;
  }

  v36 = v55;
LABEL_33:
  v63 = v70;
  v64 = v71;
  v65 = v72;
  v59 = v66;
  v60 = v67;
  v61 = v68;
  v62 = v69;
  v56[0] = v82;
  v56[1] = v83;
  *v57 = v84[0];
  *&v57[13] = *(v84 + 13);
  sub_21B22F2CC(&v59, v50, v51, v36 & 1, v30, v56, v58);

  sub_21B234324(v52, v53);
  sub_21B233788(&v82);
  sub_21B299E64(&v66);

  v39 = v58[1];
  v40 = v58[2];
  *v49 = v58[0];
  v49[1] = v39;
  v49[2] = v40;
  if (a8)
  {

    v41 = v85 - 1;
    do
    {
      v42 = v41[a8][1];

      --a8;
    }

    while (a8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[14];

  v7 = v0[15];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[19];

  v11 = v0[20];

  v12 = v0[22];

  v13 = v0[29];

  v14 = v0[30];

  return MEMORY[0x2821FE8E8](v0, 248, 7);
}

uint64_t sub_21B2A2B24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21B2A2B44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B2A2B8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_21B2A2C18(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_21B2A2C48@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_21B2A2C74@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_21B2A2D4C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21B2A2D7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_21B2A327C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_21B2A2DBC()
{
  v1 = *v0;
  sub_21B34BBC4();
  sub_21B34BBF4();
  return sub_21B34BC24();
}

uint64_t sub_21B2A2E30()
{
  v1 = *v0;
  sub_21B34BBC4();
  sub_21B34BBF4();
  return sub_21B34BC24();
}

uint64_t sub_21B2A2E74@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21B2A2EAC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21B2A2EAC(uint64_t result)
{
  if (result >= 0xAu)
  {
    return 10;
  }

  else
  {
    return result;
  }
}

uint64_t sub_21B2A2EC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 41))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 0xA;
  v5 = v3 - 10;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21B2A2F04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 9;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BlockInfo.ContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BlockInfo.ContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21B2A30C8()
{
  result = qword_27CD7EBE8;
  if (!qword_27CD7EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EBE8);
  }

  return result;
}

unint64_t sub_21B2A3120()
{
  result = qword_27CD7EBF0;
  if (!qword_27CD7EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EBF0);
  }

  return result;
}

unint64_t sub_21B2A3178()
{
  result = qword_27CD7EBF8;
  if (!qword_27CD7EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EBF8);
  }

  return result;
}

unint64_t sub_21B2A31D0()
{
  result = qword_27CD7EC00;
  if (!qword_27CD7EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EC00);
  }

  return result;
}

unint64_t sub_21B2A3228()
{
  result = qword_27CD7EC08;
  if (!qword_27CD7EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EC08);
  }

  return result;
}

uint64_t sub_21B2A327C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_21B2A32B8()
{
  if (!*(*v0 + 16))
  {
    return 0;
  }

  sub_21B233A74(*v0 + 32, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(*(v2 + 8) + 48))(v1);
  result = sub_21B233960(v5);
  if ((v3 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t DataFrame.base.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

double sub_21B2A33AC@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1;
  }

  if (a1 == a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * (a1 == a2);
  v25 = *v3;
  v26 = *(v3 + 2);
  v23 = *(v3 + 24);
  v24 = *(v3 + 40);
  v8 = v24;
  v9 = v23;
  sub_21B2A62E0(&v25, &v20);
  sub_21B2A62E0(&v25, &v20);
  sub_21B2A633C(&v23, &v20);
  sub_21B2A62E0(&v25, &v20);
  sub_21B2A633C(&v23, &v20);
  sub_21B254074(v9, *(&v9 + 1), v8);

  sub_21B23A9F4(v9, *(&v9 + 1), v8);
  v20 = v5;
  v21 = v6;
  v22 = v7;
  sub_21B2A55EC(v9, *(&v9 + 1), v8);
  sub_21B23A9F4(v9, *(&v9 + 1), v8);
  v10 = v22;
  if (v22 != 1)
  {
    goto LABEL_10;
  }

  v11 = *(v20 + 2);
  sub_21B23A9F4(v20, v21, 1);
  if (v11)
  {
    do
    {
      sub_21B34B824();
      __break(1u);
LABEL_10:
      ;
    }

    while (v10 != 2);
  }

  v12 = v23;
  v13 = v24;
  sub_21B254074(v23, *(&v23 + 1), v24);

  sub_21B23A9F4(v12, *(&v12 + 1), v13);
  v14 = sub_21B248CCC(v5, v6, v7, v12, *(&v12 + 1), v13);
  v16 = v15;
  v18 = v17;
  sub_21B23A9F4(v5, v6, v7);
  result = *&v25;
  *a3 = v25;
  *(a3 + 16) = v26;
  *(a3 + 24) = v14;
  *(a3 + 32) = v16;
  *(a3 + 40) = v18;
  return result;
}

uint64_t sub_21B2A35DC@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = a1 == a2;
  if (a1 == a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1;
  }

  if (a1 == a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2;
  }

  v35 = v11;
  v36 = v12;
  v34 = *(a3 + 16);
  if (!v34)
  {

LABEL_12:
    v17 = 0;
    v19 = 2;
    goto LABEL_13;
  }

  sub_21B233A74(a3 + 32, &v37);
  v13 = v40;
  v14 = v41;
  __swift_project_boxed_opaque_existential_1(&v37, v40);
  v15 = *(v14 + 8);
  v16 = *(v15 + 48);

  v17 = v16(v13, v15);
  result = sub_21B233960(&v37);
  if (v17 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v11 = v35;
  if (!v17)
  {
    goto LABEL_12;
  }

  v19 = 0;
LABEL_13:
  v20 = 2 * v10;
  sub_21B254074(0, v17, v19);

  sub_21B23A9F4(0, v17, v19);
  v37 = v11;
  v38 = v36;
  v39 = 2 * v10;
  sub_21B2A55EC(0, v17, v19);
  sub_21B23A9F4(0, v17, v19);
  v21 = v39;
  if (v39 != 1)
  {
    goto LABEL_16;
  }

  v22 = *(v37 + 2);
  sub_21B23A9F4(v37, v38, 1);
  if (v22)
  {
    do
    {
      sub_21B34B824();
      __break(1u);
LABEL_16:
      ;
    }

    while (v21 != 2);
  }

  if (!v34)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    goto LABEL_22;
  }

  sub_21B233A74(a3 + 32, &v37);
  v24 = v40;
  v23 = v41;
  __swift_project_boxed_opaque_existential_1(&v37, v40);
  v25 = *(v23 + 8);
  v26 = *(v25 + 48);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v27 = v26(v24, v25);
  result = sub_21B233960(&v37);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v11 = v35;
    if (v27)
    {
      v28 = 0;
LABEL_23:
      sub_21B254074(0, v27, v28);

      sub_21B23A9F4(0, v27, v28);
      v29 = sub_21B248CCC(v11, v36, v20, 0, v27, v28);
      v31 = v30;
      v33 = v32;
      result = sub_21B23A9F4(v11, v36, v20);
      *a6 = a3;
      *(a6 + 8) = a4;
      *(a6 + 16) = a5;
      *(a6 + 24) = v29;
      *(a6 + 32) = v31;
      *(a6 + 40) = v33;
      return result;
    }

LABEL_22:
    v27 = 0;
    v28 = 2;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

double DataFrameProtocol.subscript.getter@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1 == a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  if (a1 == a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = 2 * (a1 == a2);
  v25 = *(a4 + 32);
  v25(&v30, a3, a4);
  v9 = v31;
  v10 = v32;
  v11 = v33;
  sub_21B254074(v31, v32, v33);
  v12 = v6;

  sub_21B23A9F4(v9, v10, v11);
  *&v28 = v6;
  *(&v28 + 1) = v7;
  LOBYTE(v29) = v8;
  sub_21B2A55EC(v9, v10, v11);
  sub_21B23A9F4(v9, v10, v11);
  v13 = v8;
  if (v8 != 1)
  {
    goto LABEL_10;
  }

  v14 = *(v28 + 16);
  sub_21B23A9F4(v28, *(&v28 + 1), 1);
  if (v14)
  {
    do
    {
      sub_21B34B824();
      __break(1u);
LABEL_10:
      ;
    }

    while (v13 != 2);
  }

  (*(a4 + 24))(&v28, a3, a4);
  v15 = v29;
  v25(&v30, a3, a4);
  v16 = v31;
  v17 = v32;
  v18 = v33;
  sub_21B254074(v31, v32, v33);

  sub_21B23A9F4(v16, v17, v18);
  v19 = sub_21B248CCC(v12, v7, v8, v16, v17, v18);
  v21 = v20;
  v23 = v22;
  sub_21B23A9F4(v12, v7, v8);
  result = *&v28;
  *a5 = v28;
  *(a5 + 16) = v15;
  *(a5 + 24) = v19;
  *(a5 + 32) = v21;
  *(a5 + 40) = v23;
  return result;
}

uint64_t sub_21B2A3B5C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 9) = *(a1 + 25);
  return sub_21B2A3B90(&v5, a2, a3);
}

uint64_t sub_21B2A3B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 == a3;
  v69 = a2;
  if (a2 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  if (a2 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  v7 = v3[1];
  v8 = v3[2];
  if (*(*v3 + 16))
  {
    v65 = a2 == a3;
    sub_21B233A74(*v3 + 32, &v71);
    v10 = v74;
    v9 = v75;
    __swift_project_boxed_opaque_existential_1(&v71, v74);
    v11 = *(v9 + 8);
    v12 = *(v11 + 48);

    v13 = v12(v10, v11);
    sub_21B233960(&v71);
    if (v13 < 0)
    {
      goto LABEL_51;
    }

    v4 = v65;
    if (v13)
    {
      v14 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v15 = *v3;
  }

  v13 = 0;
  v14 = 2;
LABEL_13:
  sub_21B254074(0, v13, v14);

  sub_21B23A9F4(0, v13, v14);
  v71 = v5;
  v72 = v6;
  LOBYTE(v73) = 2 * v4;
  sub_21B2A55EC(0, v13, v14);
  sub_21B23A9F4(0, v13, v14);
  v16 = v72;
  v66 = v71;
  v17 = v73;
  if (v73 == 1)
  {
    if (*(v71 + 16))
    {
      goto LABEL_54;
    }
  }

  else if (v73 != 2)
  {
    goto LABEL_54;
  }

  if (__OFSUB__(a3, v69))
  {
    goto LABEL_52;
  }

  v79 = *a1;
  v80 = *(a1 + 16);
  v77 = *(a1 + 24);
  v18 = *(a1 + 40);
  v78 = v18;
  v19 = v77;
  v20 = sub_21B2FB1D4(v77, *(&v77 + 1), v18);
  sub_21B2A62E0(&v79, &v71);
  sub_21B2A633C(&v77, &v71);

  sub_21B23A9F4(v19, *(&v19 + 1), v18);
  if (a3 - v69 == v20)
  {
    sub_21B23A9F4(v66, v16, v17);
    v21 = v77;
    v22 = v78;
    v60 = *(&v77 + 1);
    v25 = v77;
    v23 = v25 >> 64;
    v24 = v25;
    if (v78)
    {
      if (v78 == 1 && (v26 = *(v77 + 16)) != 0)
      {
        v24 = *(v77 + 32);
        v23 = *(v77 + 16 + 16 * v26 + 8);
      }

      else
      {
        v24 = 0;
        v23 = 0;
      }
    }

    v58 = *(&v79 + 1);
    v59 = v79;
    v57 = v80;
    sub_21B2A62E0(&v79, &v71);
    sub_21B2A633C(&v77, &v71);
    if (v69 == a3)
    {
LABEL_25:
      sub_21B2A63AC(a1);

      return sub_21B23A9F4(v21, v60, v22);
    }

    if (a3 < v69)
    {
      goto LABEL_53;
    }

    v53 = v21;
    v54 = v23;
    v61 = v22;
    while (1)
    {
      if (v69 == a3)
      {
        goto LABEL_48;
      }

      if (v24 == v23)
      {
        goto LABEL_25;
      }

      v71 = v59;
      v72 = v58;
      v73 = v57;
      v74 = v21;
      v75 = v60;
      v76 = v22;
      v31 = DataFrame.Rows.index(after:)(v24);
      v32 = v79;
      v64 = v31;
      v33 = v77;
      v34 = v78;
      sub_21B2A62E0(&v79, &v71);
      sub_21B2A633C(&v77, &v71);
      sub_21B23A9F4(v33, *(&v33 + 1), v34);
      v36 = *v67;
      v35 = v67[1];
      v63 = v67[2];
      if (*(*v67 + 2))
      {
        sub_21B233A74((v36 + 32), &v71);
        v38 = v74;
        v37 = v75;
        __swift_project_boxed_opaque_existential_1(&v71, v74);
        v39 = *(v37 + 8);
        v40 = *(v39 + 48);

        v41 = v40(v38, v39);
        sub_21B233960(&v71);
        if (v41 < 0)
        {
          goto LABEL_49;
        }

        v22 = v61;
        if (v41)
        {
          v42 = 0;
          goto LABEL_38;
        }
      }

      else
      {
      }

      v41 = 0;
      v42 = 2;
LABEL_38:
      v43 = *(v32 + 16);
      if (v43 != *(v36 + 2))
      {
        break;
      }

      v62 = v42;
      if (v43)
      {
        v56 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_21B23A2F4(v36);
        }

        if (v43 <= *(v32 + 16))
        {
          v55 = v35;
          v44 = 0;
          v45 = 0;
          while (1)
          {
            sub_21B233A74(v32 + v44 + 32, &v71);
            if (v45 >= *(v36 + 2))
            {
              break;
            }

            ++v45;
            v46 = v74;
            v47 = v75;
            v48 = __swift_project_boxed_opaque_existential_1(&v71, v74);
            v70[3] = v46;
            v70[4] = *(v47 + 8);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
            (*(*(v46 - 8) + 16))(boxed_opaque_existential_1, v48, v46);
            v50 = *&v36[v44 + 56];
            v51 = *&v36[v44 + 64];
            __swift_mutable_project_boxed_opaque_existential_1(&v36[v44 + 32], v50);
            (*(v51 + 72))(v69, v24, v70, v50, v51);
            __swift_destroy_boxed_opaque_existential_1Tm(v70);
            sub_21B233960(&v71);
            v44 += 40;
            if (v43 == v45)
            {

              v21 = v53;
              v22 = v61;
              v35 = v55;
              v41 = v56;
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
        }

        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        break;
      }

LABEL_29:
      v28 = *v67;
      v29 = v67[1];
      v30 = v67[2];

      sub_21B23A9F4(0, v41, v62);
      *v67 = v36;
      v67[1] = v35;
      v24 = v64;
      v67[2] = v63;
      ++v69;
      v23 = v54;
      if (v69 == a3)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_54:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2A4284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v62 = v5;
  v64 = a2;
  if (a2 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  v7 = 2 * (a2 == a3);
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = v3[4];
  v13 = *(v3 + 40);

  sub_21B254074(v11, v12, v13);
  sub_21B254074(v11, v12, v13);

  sub_21B23A9F4(v11, v12, v13);
  v66 = v62;
  v67 = v6;
  LOBYTE(v68) = v7;
  sub_21B2A55EC(v11, v12, v13);
  v47 = v12;
  v48 = v11;
  v63 = v13;
  sub_21B23A9F4(v11, v12, v13);
  v14 = v66;
  v61 = v6;
  if (v7 == 1)
  {
    if (*(v66 + 16))
    {
      goto LABEL_40;
    }
  }

  else if (v7 != 2)
  {
    goto LABEL_40;
  }

  if (__OFSUB__(a3, v64))
  {
    goto LABEL_38;
  }

  v74 = *a1;
  v75 = *(a1 + 16);
  v72 = *(a1 + 24);
  v46 = a1;
  v15 = *(a1 + 40);
  v73 = v15;
  v16 = v72;
  v17 = sub_21B2FB1D4(v72, *(&v72 + 1), v15);
  sub_21B2A62E0(&v74, &v66);
  sub_21B2A633C(&v72, &v66);

  sub_21B23A9F4(v16, *(&v16 + 1), v15);
  if (a3 - v64 == v17)
  {
    sub_21B23A9F4(v14, v61, v7);
    v18 = v72;
    v19 = v73;
    v59 = *(&v72 + 1);
    v22 = v72;
    v20 = v22 >> 64;
    v21 = v22;
    v23 = v49;
    v24 = a3;
    v26 = v12;
    v25 = v48;
    if (v73)
    {
      if (v73 == 1 && (v27 = *(v72 + 16)) != 0)
      {
        v21 = *(v72 + 32);
        v20 = *(v72 + 16 + 16 * v27 + 8);
      }

      else
      {
        v21 = 0;
        v20 = 0;
      }
    }

    v57 = *(&v74 + 1);
    v58 = v74;
    v56 = v75;
    sub_21B2A62E0(&v74, &v66);
    sub_21B2A633C(&v72, &v66);
    if (v64 == a3)
    {
LABEL_19:
      sub_21B2A63AC(v46);

      return sub_21B23A9F4(v18, v59, v19);
    }

    if (a3 < v64)
    {
      goto LABEL_39;
    }

    v53 = v18;
    v52 = v19;
    v51 = v20;
    while (1)
    {
      if (v64 == v24)
      {
        goto LABEL_36;
      }

      if (v21 == v20)
      {
        goto LABEL_19;
      }

      v66 = v58;
      v67 = v57;
      v68 = v56;
      v69 = v18;
      v70 = v59;
      v71 = v19;
      v29 = DataFrame.Rows.index(after:)(v21);
      v30 = v74;
      v60 = v29;
      v32 = *(&v72 + 1);
      v31 = v72;
      v33 = v73;
      sub_21B2A62E0(&v74, &v66);
      sub_21B2A633C(&v72, &v66);
      sub_21B23A9F4(v31, v32, v33);
      v34 = *v23;
      v35 = *(v30 + 16);
      if (v35 != *(*v23 + 2))
      {
        goto LABEL_40;
      }

      v36 = v23[1];
      v37 = v23[2];
      sub_21B254074(v25, v26, v63);

      if (v35)
      {
        break;
      }

LABEL_23:
      v66 = v34;
      v67 = v36;
      v68 = v37;
      v69 = v25;
      v70 = v26;
      v71 = v63;
      DataFrame.Slice.rows.setter(&v66);
      v21 = v60;
      ++v64;
      v18 = v53;
      v19 = v52;
      v20 = v51;
      if (v64 == v24)
      {
        goto LABEL_19;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_21B23A2F4(v34);
    }

    if (v35 <= *(v30 + 16))
    {
      v54 = v37;
      v55 = v36;
      v38 = 0;
      v39 = 0;
      while (1)
      {
        sub_21B233A74(v30 + v38 + 32, &v66);
        if (v39 >= *(v34 + 2))
        {
          break;
        }

        ++v39;
        v40 = v69;
        v41 = v70;
        v42 = __swift_project_boxed_opaque_existential_1(&v66, v69);
        v65[3] = v40;
        v65[4] = *(v41 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
        (*(*(v40 - 8) + 16))(boxed_opaque_existential_1, v42, v40);
        v44 = *&v34[v38 + 56];
        v45 = *&v34[v38 + 64];
        __swift_mutable_project_boxed_opaque_existential_1(&v34[v38 + 32], v44);
        (*(v45 + 72))(v64, v21, v65, v44, v45);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        sub_21B233960(&v66);
        v38 += 40;
        if (v35 == v39)
        {

          v23 = v49;
          v24 = a3;
          v26 = v47;
          v25 = v48;
          v37 = v54;
          v36 = v55;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

LABEL_40:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t DataFrameProtocol.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v24 = a1[1];
  v25 = *a1;
  v7 = a1[3];
  v23 = a1[2];
  v8 = a1[4];
  v26 = *(a1 + 40);
  if (a2 == a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  if (a2 == a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  v27 = 2 * (a2 == a3);
  (*(a5 + 32))(&v32, a4, a5);
  v11 = v35;
  v12 = v36;
  v13 = v37;
  sub_21B254074(v35, v36, v37);

  sub_21B23A9F4(v11, v12, v13);
  v29 = v9;
  v30 = v10;
  v31 = v27;
  sub_21B2A55EC(v11, v12, v13);
  sub_21B23A9F4(v11, v12, v13);
  if (v27 == 1)
  {
    if (*(v29 + 16))
    {
      goto LABEL_28;
    }
  }

  else if (v27 != 2)
  {
    goto LABEL_28;
  }

  if (__OFSUB__(a3, v6))
  {
    goto LABEL_26;
  }

  v14 = sub_21B2FB1D4(v7, v8, v26);

  sub_21B254074(v7, v8, v26);

  sub_21B23A9F4(v7, v8, v26);
  if (a3 - v6 == v14)
  {
    sub_21B23A9F4(v29, v30, v27);
    v15 = v7;
    v16 = v8;
    if (v26)
    {
      if (v26 == 1 && (v17 = *(v7 + 16)) != 0)
      {
        v15 = *(v7 + 32);
        v16 = *(v7 + 16 + 16 * v17 + 8);
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }
    }

    sub_21B254074(v7, v8, v26);
    if (v6 == a3)
    {
LABEL_24:

      sub_21B23A9F4(v7, v8, v26);

      return sub_21B23A9F4(v7, v8, v26);
    }

    if (a3 < v6)
    {
      goto LABEL_27;
    }

    v20 = v16;
    while (a3 != v6)
    {
      if (v15 != v16)
      {
        v32 = v25;
        v33 = v24;
        v34 = v23;
        v35 = v7;
        v36 = v8;
        v37 = v26;
        v28 = DataFrame.Rows.index(after:)(v15);

        sub_21B254074(v7, v8, v26);
        sub_21B23A9F4(v7, v8, v26);
        v32 = v25;
        v33 = v24;
        v34 = v23;
        v35 = v15;
        v18 = (*(a5 + 48))(&v29, a4);
        DataFrame.Rows.subscript.setter(&v32, v6);
        v16 = v20;
        v18(&v29, 0);
        ++v6;
        v15 = v28;
        if (a3 != v6)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

LABEL_28:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

void (*sub_21B2A4CB8(void *a1, char *a2, char *a3))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0xD8uLL);
  }

  *a1 = v7;
  v7[25] = a3;
  v7[26] = v3;
  v7[24] = a2;
  sub_21B2A35DC(a2, a3, *v3, v3[1], v3[2], (v7 + 12));
  return sub_21B2A4D54;
}

void sub_21B2A4D54(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 25);
    v3 = *(v2 + 26);
    v5 = *(v2 + 24);
    v6 = *(v2 + 7);
    *v2 = *(v2 + 6);
    *(v2 + 1) = v6;
    *(v2 + 25) = *(v2 + 121);
    sub_21B2A6284(v2, (v2 + 144));
    sub_21B2A3B90(v2, v5, v4);
    v7 = *(v2 + 12);
    v8 = *(v2 + 13);
    v9 = *(v2 + 14);
    v10 = *(v2 + 15);
    v11 = *(v2 + 16);
    v12 = v2[136];

    sub_21B23A9F4(v10, v11, v12);
  }

  else
  {
    v13 = *(v2 + 25);
    v14 = *(v2 + 26);
    v15 = *(v2 + 24);
    v16 = *(v2 + 7);
    *(v2 + 3) = *(v2 + 6);
    *(v2 + 4) = v16;
    *(v2 + 73) = *(v2 + 121);
    sub_21B2A3B90((v2 + 48), v15, v13);
  }

  free(v2);
}

void (*DataFrameProtocol.subscript.modify(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x58uLL);
  }

  *a1 = v11;
  v11[9] = a5;
  v11[10] = v5;
  v11[7] = a3;
  v11[8] = a4;
  v11[6] = a2;
  DataFrameProtocol.subscript.getter(a2, a3, a4, a5, v11);
  return sub_21B2A4ED8;
}

void sub_21B2A4ED8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = *(*a1 + 40);
  v8 = (*a1)[9];
  v9 = (*a1)[10];
  v11 = (*a1)[7];
  v10 = (*a1)[8];
  v12 = (*a1)[6];
  v20[0] = **a1;
  v20[1] = v3;
  v20[2] = v5;
  v20[3] = v4;
  v20[4] = v6;
  v21 = v7;
  if (a2)
  {
    v13 = v8;

    sub_21B254074(v4, v6, v7);
    DataFrameProtocol.subscript.setter(v20, v12, v11, v10, v13);
    v14 = *v2;
    v15 = v2[1];
    v16 = v2[2];
    v17 = v2[3];
    v18 = v2[4];
    v19 = *(v2 + 40);

    sub_21B23A9F4(v17, v18, v19);
  }

  else
  {
    DataFrameProtocol.subscript.setter(v20, v12, v11, v10, v8);
  }

  free(v2);
}

double sub_21B2A5008@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  *v6 = v3[1];
  *&v6[9] = *(v3 + 25);
  return sub_21B2A33AC(a1, a2, a3);
}

uint64_t sub_21B2A5044(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 9) = *(a1 + 25);
  return sub_21B2A4284(&v5, a2, a3);
}

void (*sub_21B2A5078(uint64_t *a1, char *a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x108uLL);
  }

  *a1 = v7;
  *(v7 + 248) = a3;
  *(v7 + 256) = v3;
  *(v7 + 240) = a2;
  v8 = *v3;
  v9 = v3[1];
  *(v7 + 25) = *(v3 + 25);
  *v7 = v8;
  *(v7 + 16) = v9;
  sub_21B2A33AC(a2, a3, v7 + 144);
  return sub_21B2A5120;
}

void sub_21B2A5120(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 248);
    v3 = *(v2 + 256);
    v5 = *(v2 + 240);
    v6 = *(v2 + 160);
    *(v2 + 48) = *(v2 + 144);
    *(v2 + 64) = v6;
    *(v2 + 73) = *(v2 + 169);
    sub_21B2A6284(v2 + 48, v2 + 192);
    sub_21B2A4284(v2 + 48, v5, v4);
    v7 = *(v2 + 144);
    v8 = *(v2 + 152);
    v9 = *(v2 + 160);
    v10 = *(v2 + 168);
    v11 = *(v2 + 176);
    v12 = *(v2 + 184);

    sub_21B23A9F4(v10, v11, v12);
  }

  else
  {
    v13 = *(v2 + 248);
    v14 = *(v2 + 256);
    v15 = *(v2 + 240);
    v16 = *(v2 + 160);
    *(v2 + 96) = *(v2 + 144);
    *(v2 + 112) = v16;
    *(v2 + 121) = *(v2 + 169);
    sub_21B2A4284(v2 + 96, v15, v13);
  }

  free(v2);
}

unint64_t sub_21B2A51F4(unint64_t result, uint64_t a2)
{
  if (*(v2 + 16))
  {
    if (*(v2 + 16) != 1)
    {
      return result;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v2;
      v4 = *(*v2 + 16);
      if (v4 >= a2)
      {
        if (!__OFSUB__(a2, result))
        {
          v5 = result - a2;
          if (!__OFSUB__(0, a2 - result))
          {
            v6 = v4 + v5;
            if (!__OFADD__(v4, v5))
            {
              v7 = result;
              v9 = *v2;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (isUniquelyReferenced_nonNull_native && v6 <= *(v3 + 3) >> 1)
              {
                v11 = v2;
              }

              else
              {
                v11 = v2;
                if (v4 <= v6)
                {
                  v12 = v6;
                }

                else
                {
                  v12 = v4;
                }

                v3 = sub_21B2356AC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
              }

              result = sub_21B25DB84(v7, a2, 0);
              *v11 = v3;
              *(v11 + 8) = 0;
              *(v11 + 16) = 1;
              return result;
            }

LABEL_23:
            __break(1u);
            return result;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  if (result != a2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 2;
  }

  return result;
}

uint64_t sub_21B2A5304(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1 && (v5 = *(result + 16), v3 = result + 16, (v4 = v5) != 0))
    {
      v6 = (v3 + 16 * v4);
      result = *v6;
      v7 = v6[1];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_21B2A5344(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  if (*(v2 + 16))
  {
    if (v5 != 1)
    {
      return result;
    }

    v6 = *(v3 + 16);
    if (!v6 || *(v3 + 16 + 16 * v6 + 8) <= result)
    {
      return result;
    }
  }

  else
  {
    if (v4 <= result)
    {
      return result;
    }

    if (!*(v2 + 16))
    {
      v7 = 1;
      v8 = *v2;
      if (v3 > a2)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_58;
  }

  v7 = 0;
  if (*(v3 + 32) > a2)
  {
    return result;
  }

LABEL_13:
  v9 = result;
  result = sub_21B28E16C(result, a2, *v2, *(v2 + 8), v5);
  if (result == v11)
  {
    return result;
  }

  if (!v7)
  {
    goto LABEL_23;
  }

  if (result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (__OFSUB__(v11, 1))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v11 != 1)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v3 >= v9)
  {
    if (v4 > a2)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if (v4 <= a2)
  {
    goto LABEL_44;
  }

  if (v3 <= v9)
  {
LABEL_53:
    if (v4 >= a2)
    {

      return sub_21B28E49C(result, v11, v3, v9, a2, v4);
    }

    goto LABEL_67;
  }

  __break(1u);
LABEL_23:
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v12 = *(v3 + 16);
  if (result >= v12)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v13 = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
    goto LABEL_58;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v13 >= v12)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v14 = *(v3 + 32 + 16 * v13 + 8);
  if (*(v3 + 32 + 16 * result) < v9)
  {
    if (v14 > a2)
    {
      v17 = *(v3 + 16);
      if (result >= v17)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v18 = v3 + 32;
      v3 = *(v3 + 32 + 16 * result);
      if (v3 > v9)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      if (v13 >= v17)
      {
LABEL_72:
        __break(1u);
        return result;
      }

      v4 = *(v18 + 16 * v13 + 8);
      goto LABEL_53;
    }

    if (result >= *(v3 + 16))
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v3 = *(v3 + 16 * result + 32);
LABEL_44:
    if (v3 <= v9)
    {
      v15 = v3;
      v16 = v9;
      goto LABEL_46;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v14 > a2)
  {
    if (v13 >= *(v3 + 16))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v4 = *(v3 + 16 * v13 + 40);
LABEL_36:
    if (v4 >= a2)
    {
      v15 = a2;
      v16 = v4;
LABEL_46:

      return sub_21B28E6D0(result, v11, v15, v16);
    }

    goto LABEL_65;
  }

LABEL_38:

  return sub_21B2A51F4(result, v11);
}

void *sub_21B2A55EC(void *result, uint64_t a2, char a3)
{
  v3 = result;
  if (a3)
  {
    if (a3 == 1)
    {
      if (result[2])
      {
        result = sub_21B2A5344(result[4], result[5]);
        if (v3[2] != 1)
        {
          v4 = v3 + 7;
          v5 = 1;
          while (v5 < v3[2])
          {
            ++v5;
            result = sub_21B2A5344(*(v4 - 1), *v4);
            v4 += 2;
            if (v5 == v3[2])
            {
              return result;
            }
          }

          __break(1u);
        }
      }
    }
  }

  else
  {

    return sub_21B2A5344(result, a2);
  }

  return result;
}

void (*sub_21B2A56A0(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = DataFrameProtocol.subscript.modify(v10, a2, a3, a4, a5);
  return sub_21B2444C0;
}

BOOL DataFrameProtocol.isEmpty.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&v17);
  v4 = v17;

  v5 = *(v4 + 16);

  if (!v5)
  {
    return 1;
  }

  (*(a2 + 32))(&v13, a1, a2);
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v14;
  v10 = v15;
  if (v16)
  {
    if (v16 == 1 && (v11 = *(v14 + 16)) != 0)
    {
      v9 = *(v14 + 32);
      v10 = *(v14 + 16 + 16 * v11 + 8);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  sub_21B23A9F4(v6, v7, v8);
  return v9 == v10;
}

double sub_21B2A585C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  DataFrameProtocol.subscript.getter(*a1, *(a1 + 8), *(a1 + a2 - 16), *(a1 + a2 - 8), &v7);
  v4 = v8;
  v5 = v10;
  *a3 = v7;
  *(a3 + 16) = v4;
  result = *&v9;
  *(a3 + 24) = v9;
  *(a3 + 40) = v5;
  return result;
}

uint64_t sub_21B2A58BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v14[0] = *a1;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v11;
  v15 = v12;

  sub_21B254074(v10, v11, v12);
  return DataFrameProtocol.subscript.setter(v14, v6, v7, v4, v5);
}

uint64_t DataFrameProtocol.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 32))(&v17, a2, a4);
  v6 = *(&v18 + 1);
  v7 = v19;
  v8 = v20;
  v13 = v17;
  v14 = v18;
  *&v15 = v19;
  BYTE8(v15) = v20;
  if (v20)
  {
    if (v20 == 1 && (v9 = *(*(&v18 + 1) + 16)) != 0)
    {
      *&v16 = *(*(&v18 + 1) + 32);
      v10 = *(*(&v18 + 1) + 16 + 16 * v9 + 8);
    }

    else
    {
      v10 = 0;
      *&v16 = 0;
    }
  }

  else
  {
    *&v16 = *(&v18 + 1);
    v10 = v19;
  }

  *(&v16 + 1) = v10;

  sub_21B254074(v6, v7, v8);

  sub_21B23A9F4(v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  sub_21B2A5F44();
  sub_21B34AF64();
  v12[0] = v13;
  v12[1] = v14;
  v12[2] = v15;
  v12[3] = v16;
  sub_21B2803D4(v12);
  return (*(a4 + 72))(v21, v22, a2, a4);
}

double sub_21B2A5B20@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  DataFrameProtocol.subscript.getter(a1, *(a1 + a2 - 32), *(a1 + a2 - 24), *(a1 + a2 - 16));
  *a3 = v6;
  *(a3 + 16) = v7;
  result = *&v8;
  *(a3 + 24) = v8;
  *(a3 + 40) = v9;
  return result;
}

uint64_t sub_21B2A5B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v15[0] = *a1;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  v16 = v13;

  sub_21B254074(v11, v12, v13);
  return sub_21B2A5FA8(v15, a3, v5, v6, v7);
}

uint64_t DataFrameProtocol.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21B2A5FA8(a1, a2, a3, a4, a5);
  v7 = *(*(a4 - 8) + 8);

  return v7(a2, a4);
}

void (*DataFrameProtocol.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t *a1, char a2)
{
  v13 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x68uLL);
  }

  v15 = v14;
  *a1 = v14;
  v14[9] = a6;
  v14[10] = v6;
  v14[7] = a4;
  v14[8] = a5;
  v14[6] = a3;
  v16 = *(a4 - 8);
  v17 = v16;
  v14[11] = v16;
  if (v13)
  {
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v18 = malloc(*(v16 + 64));
  }

  v15[12] = v18;
  (*(v17 + 16))();
  DataFrameProtocol.subscript.getter(a2, a3, a4, a5);
  return sub_21B2A5DE8;
}

void sub_21B2A5DE8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 80);
  v8 = *(*a1 + 56);
  v7 = *(*a1 + 64);
  v9 = *(*a1 + 48);
  if (a2)
  {
    v10 = *(v2 + 8);
    v11 = *(v2 + 16);
    v12 = *(v2 + 24);
    v13 = *(v2 + 32);
    v21[0] = *v2;
    v21[1] = v10;
    v21[2] = v11;
    v21[3] = v12;
    v21[4] = v13;
    v22 = *(v2 + 40);
    v20 = v7;

    sub_21B254074(v12, v13, v22);
    sub_21B2A5FA8(v21, v3, v9, v8, v20);
    (*(v4 + 8))(v3, v8);
    v14 = *v2;
    v15 = *(v2 + 8);
    v16 = *(v2 + 16);
    v17 = *(v2 + 24);
    v18 = *(v2 + 32);
    v19 = *(v2 + 40);

    sub_21B23A9F4(v17, v18, v19);
  }

  else
  {
    sub_21B2A5FA8(*a1, v3, v9, v8, v7);
    (*(v4 + 8))(v3, v8);
  }

  free(v3);

  free(v2);
}

unint64_t sub_21B2A5F44()
{
  result = qword_27CD7EC10;
  if (!qword_27CD7EC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E510, &unk_21B351F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EC10);
  }

  return result;
}

uint64_t sub_21B2A5FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 32))(&v29, a3, a5);
  v8 = *(&v30 + 1);
  v9 = v31;
  v10 = v32;
  v25 = v29;
  v26 = v30;
  *&v27 = v31;
  BYTE8(v27) = v32;
  if (v32)
  {
    if (v32 == 1 && (v11 = *(*(&v30 + 1) + 16)) != 0)
    {
      *&v28 = *(*(&v30 + 1) + 32);
      v12 = *(*(&v30 + 1) + 16 + 16 * v11 + 8);
    }

    else
    {
      v12 = 0;
      *&v28 = 0;
    }
  }

  else
  {
    *&v28 = *(&v30 + 1);
    v12 = v31;
  }

  *(&v28 + 1) = v12;

  sub_21B254074(v8, v9, v10);

  sub_21B23A9F4(v8, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  sub_21B2A5F44();
  sub_21B34AF64();
  v24[0] = v25;
  v24[1] = v26;
  v24[2] = v27;
  v24[3] = v28;
  sub_21B2803D4(v24);
  v13 = v33;
  v21 = v34;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v22[0] = *a1;
  v22[1] = v14;
  v22[2] = v15;
  v22[3] = v16;
  v22[4] = v17;
  v18 = *(a1 + 40);
  v23 = v18;
  v19 = *(a5 + 80);

  sub_21B254074(v16, v17, v18);
  v19(v22, v13, v21, a3, a5);

  return sub_21B23A9F4(v16, v17, v18);
}

uint64_t sub_21B2A633C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7EAC0, &unk_21B3547A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AnyCategoricalSummary.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *a3 = *a1;
  *(a3 + 16) = v5;
  v7 = sub_21B34B7B4();

  *(a3 + 24) = v7;
  *(a3 + 32) = a2;
  return result;
}

uint64_t AnyCategoricalSummary.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = v3;
  v5 = sub_21B2A65E4(v4);

  v7 = MEMORY[0x277D84030];
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t AnyCategoricalSummary.totalCount.getter()
{
  v1 = v0[1];
  result = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t AnyCategoricalSummary.mode.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_21B2A65E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_21B254228(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_21B260E68(v4, &v8);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21B254228((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_21B261720(&v9, (v2 + 32 * v6 + 32));
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A66E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21B254228(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      sub_21B260DC0(*v4, *(v4 + 8));
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21B254228((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_21B261720(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A67EC(uint64_t a1)
{
  v2 = sub_21B34A834();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v19 = MEMORY[0x277D84F90];
    sub_21B254228(0, v7, 0);
    v8 = v19;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      swift_dynamicCast();
      v19 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21B254228((v14 > 1), v15 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v15 + 1;
      sub_21B261720(&v18, (v8 + 32 * v15 + 32));
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_21B2A6984(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_21B254228(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21B254228((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_21B261720(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A6A84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_21B254228(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21B254228((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_21B261720(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A6B80(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_21B254228(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21B254228((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_21B261720(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A6C7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_21B254228(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21B254228((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_21B261720(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A6D78(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_21B254228(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21B254228((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_21B261720(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A6E74(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_21B254228(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21B254228((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      sub_21B261720(&v9, (v2 + 32 * v7 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A6F6C(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2D0, &qword_21B351BE8);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC48, &qword_21B354890);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v19 = MEMORY[0x277D84F90];
    sub_21B2543C8(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_21B2615FC(v13, v5, &qword_27CD7E2D0, &qword_21B351BE8);
      swift_dynamicCast();
      v19 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21B2543C8(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      *(v12 + 16) = v16 + 1;
      sub_21B2A7C38(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_21B2A7194(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_21B254408(0, v1, 0);
    v2 = v17;
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      sub_21B260DAC(*(v4 - 4), *(v4 - 3));
      sub_21B254074(v5, v6, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2B8, &qword_21B351BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC40, &unk_21B354880);
      swift_dynamicCast();
      v8 = v14;
      v9 = v15;
      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21B254408((v10 > 1), v11 + 1, 1);
        v9 = v15;
        v8 = v14;
      }

      v4 += 40;
      *(v17 + 16) = v11 + 1;
      v12 = v17 + 40 * v11;
      *(v12 + 32) = v8;
      *(v12 + 48) = v9;
      *(v12 + 64) = v16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A72F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_21B254448(0, v1, 0);
    v4 = (a1 + 56);
    v2 = v14;
    do
    {
      v10 = *(v4 - 24);
      sub_21B254074(*(v4 - 2), *(v4 - 1), *v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2A0, &qword_21B351BB8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC38, &unk_21B354870);
      swift_dynamicCast();
      v5 = v12;
      v7 = *(v14 + 16);
      v6 = *(v14 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21B254448((v6 > 1), v7 + 1, 1);
        v5 = v12;
      }

      *(v14 + 16) = v7 + 1;
      v8 = v14 + 32 * v7;
      *(v8 + 32) = v11;
      v4 += 32;
      *(v8 + 40) = v5;
      *(v8 + 56) = v13;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A7448(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_21B254488(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 64);
    do
    {
      v10 = *(v4 - 4);
      v11 = *(v4 - 24);
      sub_21B254074(*(v4 - 2), *(v4 - 1), *v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E288, &qword_21B351BA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC30, &unk_21B354860);
      swift_dynamicCast();
      v5 = v14;
      v7 = *(v16 + 16);
      v6 = *(v16 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21B254488((v6 > 1), v7 + 1, 1);
        v5 = v14;
      }

      *(v16 + 16) = v7 + 1;
      v8 = v16 + 40 * v7;
      *(v8 + 32) = v12;
      v4 += 40;
      *(v8 + 40) = v13;
      *(v8 + 48) = v5;
      *(v8 + 64) = v15;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A75A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_21B2544C8(0, v1, 0);
    v4 = (a1 + 56);
    v2 = v16;
    do
    {
      v10 = *(v4 - 6);
      v11 = *(v4 - 20);
      sub_21B254074(*(v4 - 2), *(v4 - 1), *v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E270, &qword_21B351B88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC28, &unk_21B354850);
      swift_dynamicCast();
      v5 = v14;
      v7 = *(v16 + 16);
      v6 = *(v16 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21B2544C8((v6 > 1), v7 + 1, 1);
        v5 = v14;
      }

      *(v16 + 16) = v7 + 1;
      v8 = v16 + 32 * v7;
      *(v8 + 32) = v12;
      v4 += 32;
      *(v8 + 36) = v13;
      *(v8 + 40) = v5;
      *(v8 + 56) = v15;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A7708(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v19 = MEMORY[0x277D84F90];
    sub_21B254508(0, v1, 0);
    v2 = v19;
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v14 = *(v4 - 4);
      v15 = *(v4 - 3);

      sub_21B254074(v5, v6, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E258, &qword_21B351B70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC20, &unk_21B354840);
      swift_dynamicCast();
      v8 = v16;
      v9 = v17;
      v11 = *(v19 + 16);
      v10 = *(v19 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21B254508((v10 > 1), v11 + 1, 1);
        v9 = v17;
        v8 = v16;
      }

      v4 += 40;
      *(v19 + 16) = v11 + 1;
      v12 = v19 + 40 * v11;
      *(v12 + 32) = v8;
      *(v12 + 48) = v9;
      *(v12 + 64) = v18;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A7868(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_21B254548(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 64);
    do
    {
      v10 = *(v4 - 4);
      v11 = *(v4 - 24);
      sub_21B254074(*(v4 - 2), *(v4 - 1), *v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E240, &qword_21B351B58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC18, &unk_21B354830);
      swift_dynamicCast();
      v5 = v14;
      v7 = *(v16 + 16);
      v6 = *(v16 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21B254548((v6 > 1), v7 + 1, 1);
        v5 = v14;
      }

      *(v16 + 16) = v7 + 1;
      v8 = v16 + 40 * v7;
      *(v8 + 32) = v12;
      v4 += 40;
      *(v8 + 40) = v13;
      *(v8 + 48) = v5;
      *(v8 + 64) = v15;
      --v1;
    }

    while (v1);
  }

  return v2;
}

BOOL _s11TabularData21AnyCategoricalSummaryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  v7 = a2[3];
  v8 = a2[4];
  v9 = a1[4];
  v24 = a1[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC50, &qword_21B354898);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
  }

  v21 = v7;

  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
  }

  sub_21B2615FC(v22, v14, &qword_27CD7E200, &unk_21B352050);
  sub_21B2615FC(v19, &v16, &qword_27CD7E200, &unk_21B352050);
  if (v15)
  {
    sub_21B2615FC(v14, v13, &qword_27CD7E200, &unk_21B352050);
    if (*(&v17 + 1))
    {
      v11[0] = v16;
      v11[1] = v17;
      v12 = v18;
      v10 = MEMORY[0x21CEEDD80](v13, v11);
      sub_21B260E14(v11);
      sub_21B260E14(v13);
      sub_21B261664(v14, &qword_27CD7E200, &unk_21B352050);
      sub_21B261664(v19, &qword_27CD7E200, &unk_21B352050);
      sub_21B261664(v22, &qword_27CD7E200, &unk_21B352050);
      if ((v10 & 1) == 0)
      {
        return 0;
      }

      return v9 == v8;
    }

    sub_21B260E14(v13);
  }

  else if (!*(&v17 + 1))
  {
    sub_21B261664(v14, &qword_27CD7E200, &unk_21B352050);
    sub_21B261664(v19, &qword_27CD7E200, &unk_21B352050);
    sub_21B261664(v22, &qword_27CD7E200, &unk_21B352050);
    return v9 == v8;
  }

  sub_21B261664(v14, &qword_27CD7E208, &qword_21B351B20);
  sub_21B261664(v19, &qword_27CD7E200, &unk_21B352050);
  sub_21B261664(v22, &qword_27CD7E200, &unk_21B352050);
  return 0;
}

uint64_t sub_21B2A7C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC48, &qword_21B354890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Column.decoded<A, B>(_:using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v88 = a5;
  v89 = a6;
  v86 = a1;
  v87 = a4;
  v72 = a7;
  v71 = sub_21B34B6B4();
  v69 = *(v71 - 8);
  v10 = *(v69 + 64);
  v11 = MEMORY[0x28223BE20](v71);
  v67 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v68 = &v66 - v14;
  MEMORY[0x28223BE20](v13);
  v70 = &v66 - v15;
  v85 = sub_21B34B474();
  v91 = *(v85 - 8);
  v16 = *(v91 + 64);
  v17 = MEMORY[0x28223BE20](v85);
  v84 = &v66 - v18;
  v80 = *(a3 - 8);
  v19 = *(v80 + 64);
  MEMORY[0x28223BE20](v17);
  v83 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + 16);
  v22 = sub_21B34B474();
  v81 = *(v22 - 8);
  v23 = *(v81 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v94 = &v66 - v25;
  v95 = v21;
  v79 = *(v21 - 8);
  v26 = *(v79 + 64);
  MEMORY[0x28223BE20](v24);
  v90 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v28 = sub_21B34B474();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v66 - v30;
  v33 = v7[1];
  v34 = v7[2];
  *&v111 = *v7;
  v32 = v111;
  *(&v111 + 1) = v33;
  *&v112 = v34;
  v35 = Column.count.getter(a2);
  swift_bridgeObjectRetain_n();
  Column.init(name:capacity:)(v32, v33, v35, a3, &v114);
  *&v106 = v32;
  *(&v106 + 1) = v33;
  v107 = v34;
  swift_getWitnessTable();
  sub_21B34B194();
  v109 = v110;
  v66 = v32;
  v102 = v32;
  v103 = v33;
  v74 = v33;
  v104 = v34;
  v36 = v22;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  v38 = sub_21B2A85CC();
  WitnessTable = swift_getWitnessTable();
  sub_21B34BA54();
  v106 = v100;
  v107 = *&v101[0];
  v108 = *(v101 + 8);
  v102 = v37;
  v103 = a2;
  v98 = v38;
  v99 = a2;
  v40 = TupleTypeMetadata2;
  v104 = v38;
  v105 = WitnessTable;
  v97 = WitnessTable;
  sub_21B34B674();
  sub_21B34B644();
  v96 = v40 - 8;
  v92 = (v79 + 48);
  v93 = (v81 + 32);
  v82 = (v79 + 32);
  v76 = (v80 + 8);
  v77 = v37;
  v81 += 8;
  v80 += 56;
  v78 = (v79 + 8);
  v79 = v91 + 8;
  while (1)
  {
    while (1)
    {
      *&v100 = v37;
      *(&v100 + 1) = v99;
      *&v101[0] = v98;
      *(&v101[0] + 1) = v97;
      v43 = sub_21B34B664();
      sub_21B34B654();
      if ((*(*(v40 - 8) + 48))(v31, 1, v40) == 1)
      {

        v100 = v111;
        v101[0] = v112;
        v101[1] = v113[0];
        *(&v101[1] + 9) = *(v113 + 9);
        result = (*(*(v43 - 8) + 8))(&v100, v43);
        v55 = v72;
        *v72 = v114;
        *(v55 + 1) = v115;
        return result;
      }

      v44 = a3;
      v91 = *v31;
      v45 = v94;
      (*v93)(v94, &v31[*(v40 + 48)], v36);
      v46 = v95;
      if ((*v92)(v45, 1, v95) != 1)
      {
        break;
      }

      (*v81)(v45, v36);
      v41 = v84;
      a3 = v44;
      (*v80)(v84, 1, 1, v44);
      v42 = type metadata accessor for Column();
      Column.append(_:)(v41, v42);
      (*v79)(v41, v85);
    }

    v75 = v43;
    v47 = v31;
    v48 = v40;
    v49 = v36;
    v50 = v90;
    (*v82)(v90, v45, v46);
    v51 = v83;
    v52 = v116;
    sub_21B34A954();
    v116 = v52;
    if (v52)
    {
      break;
    }

    v53 = type metadata accessor for Column();
    Column.append(_:)(v51, v53);
    (*v76)(v51, v44);
    (*v78)(v50, v46);
    a3 = v44;
    v36 = v49;
    v40 = v48;
    v31 = v47;
    v37 = v77;
  }

  v56 = v116;
  *&v106 = v116;
  MEMORY[0x21CEEE850](v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
  v57 = v70;
  v58 = v71;
  if (swift_dynamicCast())
  {
    MEMORY[0x21CEEE840](v56);
    v59 = v68;
    v60 = v69;
    v61 = *(v69 + 32);
    v61(v68, v57, v58);
    v62 = v67;
    (*(v60 + 16))(v67, v59, v58);
    v63 = type metadata accessor for ColumnDecodingError();
    sub_21B2A86A4();
    swift_allocError();
    v64 = v74;
    *v65 = v66;
    v65[1] = v64;
    v65[2] = v91;
    v61(v65 + *(v63 + 24), v62, v58);
    swift_willThrow();
    (*(v60 + 8))(v59, v58);
  }

  else
  {
  }

  (*v78)(v90, v95);
  v100 = v111;
  v101[0] = v112;
  v101[1] = v113[0];
  *(&v101[1] + 9) = *(v113 + 9);
  (*(*(v75 - 8) + 8))(&v100);

  return MEMORY[0x21CEEE840](v106);
}

unint64_t sub_21B2A85CC()
{
  result = qword_27CD7E980;
  if (!qword_27CD7E980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E978, &qword_21B353910);
    sub_21B25DE24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E980);
  }

  return result;
}

uint64_t type metadata accessor for ColumnDecodingError()
{
  result = qword_27CD7EC70;
  if (!qword_27CD7EC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21B2A86A4()
{
  result = qword_27CD7EC58;
  if (!qword_27CD7EC58)
  {
    type metadata accessor for ColumnDecodingError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EC58);
  }

  return result;
}

uint64_t ColumnDecodingError.init(columnName:rowIndex:decodingError:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for ColumnDecodingError() + 24);
  v8 = sub_21B34B6B4();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t AnyColumn.decoded<A, B>(_:using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v8 = v6;
  v28 = a6;
  v15 = v6[3];
  v14 = v6[4];
  __swift_project_boxed_opaque_existential_1(v8, v15);
  v16 = (*(*(v14 + 8) + 80))(v15);
  if (v16 == swift_getAssociatedTypeWitness())
  {
    sub_21B233A10(v8, &v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    v17 = type metadata accessor for Column();
    swift_dynamicCast();
    Column.decoded<A, B>(_:using:)(a1, v17, a2, a3, a4, a5, &v26);

    if (!v7)
    {
      v24 = v26;
      v25 = v27;
      v19 = type metadata accessor for Column();
      Column.eraseToAnyColumn()(v19, v28);
    }
  }

  else
  {
    v24 = 0;
    *&v25 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001ELL, 0x800000021B34CD60);
    v21 = v8[3];
    v20 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v21);
    (*(*(v20 + 8) + 80))(v21);
    v22 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v22);

    MEMORY[0x21CEED5E0](0xD00000000000001ALL, 0x800000021B34CD80);
    v23 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v23);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t *AnyColumn.decode<A, B>(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v15 = v6[3];
  v14 = v6[4];
  __swift_project_boxed_opaque_existential_1(v8, v15);
  v16 = (*(*(v14 + 8) + 80))(v15);
  if (v16 == swift_getAssociatedTypeWitness())
  {
    sub_21B233A10(v8, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    v17 = type metadata accessor for Column();
    swift_dynamicCast();
    v25 = type metadata accessor for Column();
    v26 = &off_282CAA128;
    Column.decoded<A, B>(_:using:)(a2, v17, a3, a4, a5, a6, &v24);

    if (v7)
    {
      return __swift_deallocate_boxed_opaque_existential_1(&v24);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      return sub_21B234878(&v24, v8);
    }
  }

  else
  {
    *&v24 = 0;
    *(&v24 + 1) = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001ELL, 0x800000021B34CD60);
    v20 = v8[3];
    v19 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v20);
    (*(*(v19 + 8) + 80))(v20);
    v21 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v21);

    MEMORY[0x21CEED5E0](0xD00000000000001ALL, 0x800000021B34CD80);
    v22 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v22);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t DataFrame.decode<A, B>(_:inColumn:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v16 = *v8;
  v20 = v8[1];
  v21 = v8[2];

  v17 = sub_21B23AC94(a2, a3);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_21B23A2F4(v16);
  v16 = result;
  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v17 < *(v16 + 16))
  {
    result = AnyColumn.decode<A, B>(_:using:)(result, a4, a5, a6, a7, a8);
    *v9 = v16;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t DataFrame.decode<A, B>(_:inColumn:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v13 = *a2;
  v14 = a2[1];
  v15 = *v7;
  v19 = v7[1];
  v20 = v7[2];

  v16 = sub_21B23AC94(v13, v14);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_21B23A2F4(v15);
  v15 = result;
  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v16 < *(v15 + 16))
  {
    result = AnyColumn.decode<A, B>(_:using:)(result, a3, a4, a5, a6, a7);
    *v8 = v15;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t ColumnDecodingError.columnName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ColumnDecodingError.columnName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ColumnDecodingError.decodingError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ColumnDecodingError() + 24);
  v4 = sub_21B34B6B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ColumnDecodingError.decodingError.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ColumnDecodingError() + 24);
  v4 = sub_21B34B6B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ColumnDecodingError.debugDescription.getter()
{
  v1 = sub_21B34B6B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_21B34B6A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ColumnDecodingError();
  (*(v2 + 16))(v5, &v0[*(v11 + 24)], v1);
  v12 = (*(v2 + 88))(v5, v1);
  if (v12 == *MEMORY[0x277D84160] || v12 == *MEMORY[0x277D84170])
  {
    (*(v2 + 96))(v5, v1);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC60, &qword_21B3548A8);
    (*(v7 + 32))(v10, v5 + *(v13 + 48), v6);
  }

  else if (v12 == *MEMORY[0x277D84158])
  {
    (*(v2 + 96))(v5, v1);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC68, &qword_21B3548B0);
    (*(v7 + 32))(v10, v5 + *(v19 + 48), v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    if (v12 != *MEMORY[0x277D84168])
    {
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0x6D756C6F63206E49, 0xEB0000000027206ELL);
      MEMORY[0x21CEED5E0](*v0, *(v0 + 1));
      MEMORY[0x21CEED5E0](0x776F722074612027, 0xE900000000000020);
      v23 = *(v0 + 2);
      v20 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v20);

      MEMORY[0x21CEED5E0](8250, 0xE200000000000000);
      sub_21B34B7C4();
      v21 = v24;
      (*(v2 + 8))(v5, v1);
      return v21;
    }

    (*(v2 + 96))(v5, v1);
    (*(v7 + 32))(v10, v5, v6);
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  sub_21B34B634();

  v24 = 0x6D756C6F63206E49;
  v25 = 0xEB0000000027206ELL;
  MEMORY[0x21CEED5E0](*v0, *(v0 + 1));
  MEMORY[0x21CEED5E0](0x776F722074612027, 0xE900000000000020);
  v23 = *(v0 + 2);
  v14 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v14);

  MEMORY[0x21CEED5E0](8250, 0xE200000000000000);
  v15 = sub_21B34B694();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  MEMORY[0x21CEED5E0](v15, v17);

  return v24;
}

uint64_t sub_21B2A95B0()
{
  result = sub_21B34B6B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B2A965C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B2A9698(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21B2A96E0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21B2A994C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_70;
  }

  v7 = *(v6 + 8);
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v9 = *(v8 + 8);
  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
    goto LABEL_65;
  }

  v11 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v14 = *(v13 + 16);
    if (v14)
    {
      if (*v14 < v10)
      {
        sub_21B2B36B8(v10, 1, sub_21B235334);
      }

LABEL_15:

      swift_beginAccess();
      v19 = *(a3 + 16);
      if (!v19)
      {
        goto LABEL_67;
      }

      v20 = 0;
      while (1)
      {
        v23 = v19[1];
        if (v20 == v23)
        {
        }

        if (v20 >= v23)
        {
          goto LABEL_74;
        }

        v24 = *(v19 + (v20 >> 3) + 64) & (1 << (v20 & 7));
        if (v24)
        {
          v25 = *v19 + 7;
          if (__OFADD__(*v19, 7))
          {
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          if (v25 < 0)
          {
            v25 = *v19 + 14;
          }

          v26 = v25 >> 3;
          v28 = v26 - 1;
          v27 = v26 < 1;
          v29 = v26 + 62;
          if (!v27)
          {
            v29 = v28;
          }

          v30 = *(&v19[v20 + 16] + (v29 & 0xFFFFFFFFFFFFFFC0));
          v31 = *(v13 + 16);
          if (!v31)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v30 = 0;
          v31 = *(v13 + 16);
          if (!v31)
          {
            goto LABEL_68;
          }
        }

        v32 = *v31;
        v33 = v31[1];
        if (v33 >= *v31)
        {
          v44 = __OFADD__(v33, 1);
          v46 = v33 + 1;
          if (v44)
          {
            goto LABEL_59;
          }

          if (v32 < v46)
          {
            if (v32 + 0x4000000000000000 < 0)
            {
              goto LABEL_63;
            }

            if (2 * v32 <= v46)
            {
              v32 = v46;
            }

            else
            {
              v32 *= 2;
            }
          }

          v47 = *(v13 + 24);
          sub_21B235334(v31, v32, v52);
          v48 = *(v13 + 16);
          if (!v48)
          {
            goto LABEL_69;
          }

          if ((*(v48 + 8) & 0x8000000000000000) != 0)
          {
            goto LABEL_61;
          }

          MEMORY[0x21CEEEA30]();
          v21 = v52[0];
          v22 = v52[1];
          *(v13 + 16) = v52[0];
          *(v13 + 24) = v22;
          sub_21B2357B0(v30, v24 == 0, v21);
        }

        else
        {
          if (v24)
          {
            v34 = v32 + 7;
            if (__OFADD__(v32, 7))
            {
              goto LABEL_62;
            }

            v35 = v31 + 8;
            if (v34 < 0)
            {
              v34 = v32 + 14;
            }

            v36 = v34 >> 3;
            v37 = v36 - 1;
            v27 = v36 < 1;
            v38 = v36 + 62;
            if (!v27)
            {
              v38 = v37;
            }

            *(&v35[v33 + 8] + (v38 & 0xFFFFFFFFFFFFFFC0)) = v30;
            v39 = v31[1];
            v40 = v39 + 7;
            if (v39 >= 0)
            {
              v40 = v31[1];
            }

            v41 = v39 - (v40 & 0xFFFFFFFFFFFFFFF8);
            if (v41 >= 0)
            {
              v42 = 1 << v41;
            }

            else
            {
              v42 = 0;
            }

            *(v35 + (v40 >> 3)) |= v42;
            v43 = v31[1];
            v44 = __OFADD__(v43, 1);
            v45 = v43 + 1;
            if (v44)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v49 = v31[2];
            v44 = __OFADD__(v49, 1);
            v50 = v49 + 1;
            if (v44)
            {
              goto LABEL_64;
            }

            v31[2] = v50;
            v44 = __OFADD__(v33, 1);
            v45 = v33 + 1;
            if (v44)
            {
              goto LABEL_60;
            }
          }

          v31[1] = v45;
        }

        v19 = *(a3 + 16);
        ++v20;
        if (!v19)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_72;
  }

  swift_beginAccess();
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = *v15;
    if (*v15 < v10)
    {
      if (v16 + 0x4000000000000000 < 0)
      {
        goto LABEL_66;
      }

      if (2 * v16 <= v10)
      {
        v16 = v10;
      }

      else
      {
        v16 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E488, &unk_21B3544A0);
    v17 = swift_allocObject();
    v18 = *(v13 + 24);
    sub_21B2AECDC(v15, v16, &v53);
    *(v17 + 16) = v53;

    *v3 = v17;
    v13 = v17;
    goto LABEL_15;
  }

LABEL_73:
  __break(1u);
LABEL_74:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2A9D40(int64_t *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v5 = *(v4 + 8);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[4];
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v6 < 0)
  {
    goto LABEL_70;
  }

  v10 = *(v9 + 8);
  if (v10 < v6)
  {
    goto LABEL_70;
  }

  if (v7 < 0 || v10 < v7)
  {
    goto LABEL_71;
  }

  v11 = __OFADD__(v5, v7 - v6);
  v12 = v5 + v7 - v6;
  if (v11)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v13 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v17 = *(v15 + 16);
    if (!v17)
    {
      goto LABEL_80;
    }

    v18 = *v17;
    if (*v17 < v12)
    {
      if (v18 + 0x4000000000000000 < 0)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      if (2 * v18 <= v12)
      {
        v18 = v12;
      }

      else
      {
        v18 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E488, &unk_21B3544A0);
    v19 = swift_allocObject();
    v20 = *(v15 + 24);
    sub_21B2AECDC(v17, v18, v54);
    *(v19 + 16) = *v54;

    *v1 = v19;
    v15 = v19;
    goto LABEL_19;
  }

  swift_beginAccess();
  v16 = *(v15 + 16);
  if (v16)
  {
    if (*v16 < v12)
    {
      sub_21B2B36B8(v12, 1, sub_21B235334);
    }

LABEL_19:
    v21 = a1[3];
    v22 = a1[4];
    sub_21B2615FC(a1, v54, &qword_27CD7E720, &qword_21B352340);
    swift_beginAccess();
    if (v7 == v6)
    {
LABEL_20:
    }

    while (v6 < v7)
    {
      v24 = *(v8 + 16);
      if (!v24)
      {
        goto LABEL_74;
      }

      if (v6 >= v24[1])
      {
        goto LABEL_81;
      }

      v25 = *(v24 + (v6 >> 3) + 64) & (1 << (v6 & 7));
      if (v25)
      {
        v26 = *v24 + 7;
        if (__OFADD__(*v24, 7))
        {
          goto LABEL_63;
        }

        if (v26 < 0)
        {
          v26 = *v24 + 14;
        }

        v27 = v26 >> 3;
        v29 = v27 - 1;
        v28 = v27 < 1;
        v30 = v27 + 62;
        if (!v28)
        {
          v30 = v29;
        }

        v31 = *(&v24[v6 + 16] + (v30 & 0xFFFFFFFFFFFFFFC0));
        v32 = *(v15 + 16);
        if (!v32)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v31 = 0;
        v32 = *(v15 + 16);
        if (!v32)
        {
          goto LABEL_75;
        }
      }

      v33 = *v32;
      v34 = v32[1];
      if (v34 >= *v32)
      {
        v11 = __OFADD__(v34, 1);
        v46 = v34 + 1;
        if (v11)
        {
          goto LABEL_64;
        }

        if (v33 < v46)
        {
          if (v33 + 0x4000000000000000 < 0)
          {
            goto LABEL_68;
          }

          if (2 * v33 <= v46)
          {
            v33 = v46;
          }

          else
          {
            v33 *= 2;
          }
        }

        v47 = *(v15 + 24);
        sub_21B235334(v32, v33, v53);
        v48 = *(v15 + 16);
        if (!v48)
        {
          goto LABEL_76;
        }

        if ((*(v48 + 8) & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }

        MEMORY[0x21CEEEA30]();
        v49 = v53[0];
        v50 = v53[1];
        *(v15 + 16) = v53[0];
        *(v15 + 24) = v50;
        sub_21B2357B0(v31, v25 == 0, v49);
      }

      else
      {
        if (v25)
        {
          v35 = v33 + 7;
          if (__OFADD__(v33, 7))
          {
            goto LABEL_67;
          }

          v36 = v32 + 8;
          if (v35 < 0)
          {
            v35 = v33 + 14;
          }

          v37 = v35 >> 3;
          v38 = v37 - 1;
          v28 = v37 < 1;
          v39 = v37 + 62;
          if (!v28)
          {
            v39 = v38;
          }

          *(&v36[v34 + 8] + (v39 & 0xFFFFFFFFFFFFFFC0)) = v31;
          v40 = v32[1];
          v41 = v40 + 7;
          if (v40 >= 0)
          {
            v41 = v32[1];
          }

          v42 = v40 - (v41 & 0xFFFFFFFFFFFFFFF8);
          if (v42 >= 0)
          {
            v43 = 1 << v42;
          }

          else
          {
            v43 = 0;
          }

          *(v36 + (v41 >> 3)) |= v43;
          v44 = v32[1];
          v11 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v11)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v51 = v32[2];
          v11 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v11)
          {
            goto LABEL_69;
          }

          v32[2] = v52;
          v11 = __OFADD__(v34, 1);
          v45 = v34 + 1;
          if (v11)
          {
            goto LABEL_65;
          }
        }

        v32[1] = v45;
      }

      if (v7 == ++v6)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AA180(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_97;
  }

  v5 = *(a1 + 24);
  v75 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v69 = a1;
  v71 = *(v4 + 8);
  if (*(a1 + 40))
  {
    if (v7 != 1 || (v8 = v5 + 2, !v5[2]))
    {
      v12 = 0;
      goto LABEL_24;
    }

    v9 = 0;
    v10 = v5[4];
    v11 = v5[5];
  }

  else
  {
    v8 = v5 + 2;
    v9 = 1;
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
  }

  swift_beginAccess();
  v13 = *(v75 + 16);
  if (!v13)
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v10 < 0 || (v14 = *(v13 + 8), v14 < v10))
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v11 < 0 || v14 < v11)
  {
    goto LABEL_87;
  }

  v12 = v11 - v10;
  if ((v9 & 1) == 0 && *v8 != 1)
  {
    v15 = v5 + 7;
    v16 = 1;
    while (v16 < *v8)
    {
      v18 = *(v15 - 1);
      v17 = *v15;
      swift_beginAccess();
      v19 = *(v75 + 16);
      if (!v19)
      {
        goto LABEL_96;
      }

      if (v18 < 0)
      {
        goto LABEL_86;
      }

      v20 = *(v19 + 8);
      if (v20 < v18)
      {
        goto LABEL_86;
      }

      if (v17 < 0 || v20 < v17)
      {
        goto LABEL_87;
      }

      v21 = __OFADD__(v12, v17 - v18);
      v12 += v17 - v18;
      if (v21)
      {
        goto LABEL_89;
      }

      ++v16;
      v15 += 2;
      if (v16 == *v8)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_88;
  }

LABEL_24:
  v22 = v71 + v12;
  if (__OFADD__(v71, v12))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v23 = *v73;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v73;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v26 = *(v25 + 16);
    v27 = v69;
    if (!v26)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (*v26 < v22)
    {
      sub_21B2B36B8(v22, 1, sub_21B235334);
    }
  }

  else
  {
    swift_beginAccess();
    v28 = *(v25 + 16);
    if (!v28)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v29 = *v28;
    if (*v28 < v22)
    {
      if (v29 + 0x4000000000000000 < 0)
      {
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      if (2 * v29 <= v22)
      {
        v29 = v22;
      }

      else
      {
        v29 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E488, &unk_21B3544A0);
    v30 = swift_allocObject();
    v31 = *(v25 + 24);
    sub_21B2AECDC(v28, v29, &v78);
    *(v30 + 16) = v78;

    *v73 = v30;
    v25 = v30;
    v27 = v69;
  }

  v70 = *v27;
  v32 = *(v27 + 16);
  v33 = *(v27 + 32);
  v72 = v33;
  v74 = *(v27 + 24);
  v34 = v5;
  v35 = *(v27 + 40);
  if (v7)
  {
    if (v7 == 1 && v5[2])
    {
      v36 = v5 + 4;
    }

    else
    {
      swift_beginAccess();
      v37 = *(v75 + 16);
      if (!v37)
      {
LABEL_100:
        __break(1u);
        goto LABEL_103;
      }

      v36 = (v37 + 8);
    }

    v34 = *v36;
  }

  sub_21B2615FC(v27, &v78, &qword_27CD7E710, &qword_21B352330);
  swift_beginAccess();
  swift_beginAccess();
  v38 = *(v75 + 16);
  if (!v38)
  {
    goto LABEL_92;
  }

  v39 = v75;
  while (1)
  {
    if (v34 == *(v38 + 8))
    {

      return sub_21B23A9F4(v74, v72, v35);
    }

    if ((sub_21B2D3BE8(v34, v5, v6, v7) & 1) == 0)
    {
      break;
    }

    if (v34 < 0)
    {
      goto LABEL_103;
    }

    swift_beginAccess();
    v42 = *(v39 + 16);
    if (!v42)
    {
      goto LABEL_93;
    }

    v43 = v42[1];
    if (v34 >= v43)
    {
      goto LABEL_103;
    }

    v44 = *(v39 + 24);
    v45 = sub_21B2B1790(v34, v42, v43);
    v47 = v46;
    v78 = v70;
    v79 = v32;
    v80 = v74;
    v81 = v72;
    v82 = v35;
    v34 = sub_21B2B336C(v34);
    v48 = *(v25 + 16);
    if (!v48)
    {
      goto LABEL_94;
    }

    v39 = v79;
    v5 = v80;
    v6 = v81;
    LOBYTE(v7) = v82;
    v49 = *v48;
    v50 = v48[1];
    if (v50 >= *v48)
    {
      v21 = __OFADD__(v50, 1);
      v53 = v50 + 1;
      if (v21)
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if (v49 < v53)
      {
        if (v49 + 0x4000000000000000 < 0)
        {
          goto LABEL_85;
        }

        if (2 * v49 <= v53)
        {
          v49 = v53;
        }

        else
        {
          v49 *= 2;
        }
      }

      v54 = *(v25 + 24);
      sub_21B235334(v48, v49, &v76);
      v55 = *(v25 + 16);
      if (!v55)
      {
        goto LABEL_95;
      }

      if ((*(v55 + 8) & 0x8000000000000000) != 0)
      {
        goto LABEL_82;
      }

      MEMORY[0x21CEEEA30]();
      v40 = v76;
      v41 = v77;
      *(v25 + 16) = v76;
      *(v25 + 24) = v41;
      sub_21B2357B0(v45, v47 & 1, v40);
    }

    else
    {
      if (v47)
      {
        v51 = v48[2];
        v21 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v21)
        {
          goto LABEL_83;
        }

        v48[2] = v52;
      }

      else
      {
        v56 = v49 + 7;
        if (__OFADD__(v49, 7))
        {
          goto LABEL_84;
        }

        v57 = v48 + 8;
        if (v56 < 0)
        {
          v56 = v49 + 14;
        }

        v58 = v56 >> 3;
        v60 = v58 - 1;
        v59 = v58 < 1;
        v61 = v58 + 62;
        if (!v59)
        {
          v61 = v60;
        }

        *(&v57[v50 + 8] + (v61 & 0xFFFFFFFFFFFFFFC0)) = v45;
        v62 = v48[1];
        v63 = v62 + 7;
        if (v62 >= 0)
        {
          v63 = v48[1];
        }

        v64 = v62 - (v63 & 0xFFFFFFFFFFFFFFF8);
        if (v64 >= 0)
        {
          v65 = 1 << v64;
        }

        else
        {
          v65 = 0;
        }

        *(v57 + (v63 >> 3)) |= v65;
        v50 = v48[1];
      }

      v21 = __OFADD__(v50, 1);
      v66 = v50 + 1;
      if (v21)
      {
        goto LABEL_81;
      }

      v48[1] = v66;
    }

    v38 = *(v75 + 16);
    if (!v38)
    {
      goto LABEL_92;
    }
  }

  v76 = 0;
  v77 = 0xE000000000000000;
  sub_21B34B634();

  v76 = 0x6E6F697469736F70;
  v77 = 0xE900000000000020;
  v68 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v68);

  MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
LABEL_103:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AA800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_64;
  }

  v7 = *(v6 + 8);
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v9 = *(v8 + 8);
  v10 = __OFADD__(v7, v9);
  v11 = v7 + v9;
  if (v10)
  {
    goto LABEL_60;
  }

  v12 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v15 = *(v14 + 16);
    if (v15)
    {
      if (*v15 < v11)
      {
        sub_21B2B37BC(v11, 1, &qword_27CD7EC50, &qword_21B354898);
      }

LABEL_15:

      swift_beginAccess();
      v20 = *(a3 + 16);
      if (!v20)
      {
        goto LABEL_62;
      }

      v21 = 0;
      while (1)
      {
        v26 = v20[1];
        if (v21 == v26)
        {
        }

        if (v21 >= v26)
        {
          goto LABEL_68;
        }

        if ((*(v20 + (v21 >> 3) + 64) >> (v21 & 7)))
        {
          v27 = *v20 + 7;
          if (__OFADD__(*v20, 7))
          {
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
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          if (v27 < 0)
          {
            v27 = *v20 + 14;
          }

          v28 = v27 >> 3;
          v30 = v28 - 1;
          v29 = v28 < 1;
          v31 = v28 + 62;
          if (!v29)
          {
            v31 = v30;
          }

          v32 = *(&v20[v21 + 16] + (v31 & 0xFFFFFFFFFFFFFFC0));

          v33 = *(v14 + 16);
          if (!v33)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v32 = 0;
          v33 = *(v14 + 16);
          if (!v33)
          {
            goto LABEL_63;
          }
        }

        v22 = *v33;
        v34 = v33[1];
        if (v34 >= *v33)
        {
          v10 = __OFADD__(v34, 1);
          v45 = v34 + 1;
          if (v10)
          {
            goto LABEL_55;
          }

          if (v22 < v45)
          {
            if (v22 + 0x4000000000000000 < 0)
            {
              goto LABEL_58;
            }

            if (2 * v22 <= v45)
            {
              v22 = v45;
            }

            else
            {
              v22 *= 2;
            }
          }

          v23 = *(v14 + 24);
          sub_21B235334(v33, v22, v49);
          sub_21B2B0C20(*(v14 + 16), *(v14 + 24), &qword_27CD7EC50, &qword_21B354898);
          v24 = v49[0];
          v25 = v49[1];
          *(v14 + 16) = v49[0];
          *(v14 + 24) = v25;
          sub_21B2B1578(v32, v24);
        }

        else
        {
          if (v32)
          {
            v35 = v22 + 7;
            if (__OFADD__(v22, 7))
            {
              goto LABEL_57;
            }

            v36 = v33 + 8;
            if (v35 < 0)
            {
              v35 = v22 + 14;
            }

            v37 = v35 >> 3;
            v38 = v37 - 1;
            v29 = v37 < 1;
            v39 = v37 + 62;
            if (!v29)
            {
              v39 = v38;
            }

            *(&v36[v34 + 8] + (v39 & 0xFFFFFFFFFFFFFFC0)) = v32;
            v40 = v34 / 8;
            v41 = v34 - (v39 & 0xFFFFFFFFFFFFFFF8);
            if (v41 >= 0)
            {
              v42 = 1 << v41;
            }

            else
            {
              v42 = 0;
            }

            *(v36 + v40) |= v42;
            v43 = v33[1];
            v10 = __OFADD__(v43, 1);
            v44 = v43 + 1;
            if (v10)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v46 = v33[2];
            v10 = __OFADD__(v46, 1);
            v47 = v46 + 1;
            if (v10)
            {
              goto LABEL_59;
            }

            v33[2] = v47;
            v10 = __OFADD__(v34, 1);
            v44 = v34 + 1;
            if (v10)
            {
              goto LABEL_56;
            }
          }

          v33[1] = v44;
        }

        v20 = *(a3 + 16);
        ++v21;
        if (!v20)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_66;
  }

  swift_beginAccess();
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = *v16;
    if (*v16 < v11)
    {
      if (v17 + 0x4000000000000000 < 0)
      {
        goto LABEL_61;
      }

      if (2 * v17 <= v11)
      {
        v17 = v11;
      }

      else
      {
        v17 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E180, &qword_21B351AB0);
    v18 = swift_allocObject();
    v19 = *(v14 + 24);
    sub_21B2AF6C4(v16, v17, &v50);
    *(v18 + 16) = v50;

    *v3 = v18;
    v14 = v18;
    goto LABEL_15;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AABF0(int64_t *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v5 = *(v4 + 8);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[4];
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v6 < 0)
  {
    goto LABEL_66;
  }

  v10 = *(v9 + 8);
  if (v10 < v6)
  {
    goto LABEL_66;
  }

  if (v7 < 0 || v10 < v7)
  {
    goto LABEL_67;
  }

  v11 = __OFADD__(v5, v7 - v6);
  v12 = v5 + v7 - v6;
  if (v11)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v13 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v17 = *(v15 + 16);
    if (!v17)
    {
      goto LABEL_75;
    }

    v18 = *v17;
    if (*v17 < v12)
    {
      if (v18 + 0x4000000000000000 < 0)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      if (2 * v18 <= v12)
      {
        v18 = v12;
      }

      else
      {
        v18 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E180, &qword_21B351AB0);
    v19 = swift_allocObject();
    v20 = *(v15 + 24);
    sub_21B2AF6C4(v17, v18, v51);
    *(v19 + 16) = *v51;

    *v1 = v19;
    v15 = v19;
    goto LABEL_19;
  }

  swift_beginAccess();
  v16 = *(v15 + 16);
  if (v16)
  {
    if (*v16 < v12)
    {
      sub_21B2B37BC(v12, 1, &qword_27CD7EC50, &qword_21B354898);
    }

LABEL_19:
    v21 = a1[4];
    v49 = a1[3];
    sub_21B2615FC(a1, v51, &qword_27CD7ED00, &qword_21B354A58);
    swift_beginAccess();
    if (v7 == v6)
    {
LABEL_20:
    }

    while (v6 < v7)
    {
      v27 = *(v8 + 16);
      if (!v27)
      {
        goto LABEL_70;
      }

      if (v6 >= v27[1])
      {
        goto LABEL_76;
      }

      if ((*(v27 + (v6 >> 3) + 64) >> (v6 & 7)))
      {
        v28 = *v27 + 7;
        if (__OFADD__(*v27, 7))
        {
          goto LABEL_60;
        }

        if (v28 < 0)
        {
          v28 = *v27 + 14;
        }

        v29 = v28 >> 3;
        v31 = v29 - 1;
        v30 = v29 < 1;
        v32 = v29 + 62;
        if (!v30)
        {
          v32 = v31;
        }

        v33 = *(&v27[v6 + 16] + (v32 & 0xFFFFFFFFFFFFFFC0));

        v34 = *(v15 + 16);
        if (!v34)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v33 = 0;
        v34 = *(v15 + 16);
        if (!v34)
        {
          goto LABEL_71;
        }
      }

      v23 = *v34;
      v35 = v34[1];
      if (v35 >= *v34)
      {
        v11 = __OFADD__(v35, 1);
        v46 = v35 + 1;
        if (v11)
        {
          goto LABEL_61;
        }

        if (v23 < v46)
        {
          if (v23 + 0x4000000000000000 < 0)
          {
            goto LABEL_64;
          }

          if (2 * v23 <= v46)
          {
            v23 = v46;
          }

          else
          {
            v23 *= 2;
          }
        }

        v24 = *(v15 + 24);
        sub_21B235334(v34, v23, v50);
        sub_21B2B0C20(*(v15 + 16), *(v15 + 24), &qword_27CD7EC50, &qword_21B354898);
        v25 = v50[0];
        v26 = v50[1];
        *(v15 + 16) = v50[0];
        *(v15 + 24) = v26;
        sub_21B2B1578(v33, v25);
      }

      else
      {
        if (v33)
        {
          v36 = v23 + 7;
          if (__OFADD__(v23, 7))
          {
            goto LABEL_63;
          }

          v37 = v34 + 8;
          if (v36 < 0)
          {
            v36 = v23 + 14;
          }

          v38 = v36 >> 3;
          v39 = v38 - 1;
          v30 = v38 < 1;
          v40 = v38 + 62;
          if (!v30)
          {
            v40 = v39;
          }

          *(&v37[v35 + 8] + (v40 & 0xFFFFFFFFFFFFFFC0)) = v33;
          v41 = v35 / 8;
          v42 = v35 - (v40 & 0xFFFFFFFFFFFFFFF8);
          if (v42 >= 0)
          {
            v43 = 1 << v42;
          }

          else
          {
            v43 = 0;
          }

          *(v37 + v41) |= v43;
          v44 = v34[1];
          v11 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v11)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v47 = v34[2];
          v11 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v11)
          {
            goto LABEL_65;
          }

          v34[2] = v48;
          v11 = __OFADD__(v35, 1);
          v45 = v35 + 1;
          if (v11)
          {
            goto LABEL_62;
          }
        }

        v34[1] = v45;
      }

      if (v7 == ++v6)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AB028(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_92;
  }

  v68 = *(v4 + 8);
  v5 = *(a1 + 24);
  v72 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v66 = a1;
  if (*(a1 + 40))
  {
    if (v7 != 1 || (v8 = v5 + 2, !v5[2]))
    {
      v12 = 0;
      goto LABEL_24;
    }

    v9 = 0;
    v10 = v5[4];
    v11 = v5[5];
  }

  else
  {
    v8 = v5 + 2;
    v9 = 1;
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
  }

  swift_beginAccess();
  v13 = *(v72 + 16);
  if (!v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v10 < 0 || (v14 = *(v13 + 8), v14 < v10))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v11 < 0 || v14 < v11)
  {
    goto LABEL_83;
  }

  v12 = v11 - v10;
  if ((v9 & 1) == 0 && *v8 != 1)
  {
    v15 = v5 + 7;
    v16 = 1;
    while (v16 < *v8)
    {
      v18 = *(v15 - 1);
      v17 = *v15;
      swift_beginAccess();
      v19 = *(v72 + 16);
      if (!v19)
      {
        goto LABEL_91;
      }

      if (v18 < 0)
      {
        goto LABEL_82;
      }

      v20 = *(v19 + 8);
      if (v20 < v18)
      {
        goto LABEL_82;
      }

      if (v17 < 0 || v20 < v17)
      {
        goto LABEL_83;
      }

      v21 = __OFADD__(v12, v17 - v18);
      v12 += v17 - v18;
      if (v21)
      {
        goto LABEL_85;
      }

      ++v16;
      v15 += 2;
      if (v16 == *v8)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_84;
  }

LABEL_24:
  v22 = v68 + v12;
  if (__OFADD__(v68, v12))
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v23 = *v70;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v70;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v26 = *(v25 + 16);
    v27 = v66;
    if (!v26)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (*v26 < v22)
    {
      sub_21B2B37BC(v22, 1, &qword_27CD7EC50, &qword_21B354898);
    }
  }

  else
  {
    swift_beginAccess();
    v28 = *(v25 + 16);
    if (!v28)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v29 = *v28;
    if (*v28 < v22)
    {
      if (v29 + 0x4000000000000000 < 0)
      {
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if (2 * v29 <= v22)
      {
        v29 = v22;
      }

      else
      {
        v29 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E180, &qword_21B351AB0);
    v30 = swift_allocObject();
    v31 = *(v25 + 24);
    sub_21B2AF6C4(v28, v29, &v75);
    *(v30 + 16) = v75;

    *v70 = v30;
    v25 = v30;
    v27 = v66;
  }

  v32 = *(v27 + 8);
  v33 = *(v27 + 16);
  v71 = *(v27 + 24);
  v67 = *v27;
  v69 = *(v27 + 32);
  v34 = v5;
  v35 = *(v27 + 40);
  if (v7)
  {
    if (v7 == 1 && v5[2])
    {
      v36 = v5 + 4;
    }

    else
    {
      swift_beginAccess();
      v37 = *(v72 + 16);
      if (!v37)
      {
LABEL_95:
        __break(1u);
        goto LABEL_98;
      }

      v36 = (v37 + 8);
    }

    v34 = *v36;
  }

  sub_21B2615FC(v27, &v75, &qword_27CD7ED08, &qword_21B354A60);
  swift_beginAccess();
  swift_beginAccess();
  v38 = *(v72 + 16);
  if (!v38)
  {
    goto LABEL_88;
  }

  v39 = v72;
  while (1)
  {
    if (v34 == *(v38 + 8))
    {

      return sub_21B23A9F4(v71, v69, v35);
    }

    if ((sub_21B2D3BE8(v34, v5, v6, v7) & 1) == 0)
    {
      break;
    }

    if (v34 < 0)
    {
      goto LABEL_98;
    }

    swift_beginAccess();
    v44 = *(v39 + 16);
    if (!v44)
    {
      goto LABEL_89;
    }

    v45 = v44[1];
    if (v34 >= v45)
    {
      goto LABEL_98;
    }

    v46 = *(v39 + 24);
    v47 = sub_21B2B1824(v34, v44, v45);
    *&v75 = v67;
    *(&v75 + 1) = v32;
    v76 = v33;
    v77 = v71;
    v78 = v69;
    v79 = v35;
    v34 = sub_21B2B336C(v34);
    v48 = *(v25 + 16);
    if (!v48)
    {
      goto LABEL_90;
    }

    v39 = v76;
    v5 = v77;
    v6 = v78;
    LOBYTE(v7) = v79;
    v40 = *v48;
    v49 = v48[1];
    if (v49 >= *v48)
    {
      v21 = __OFADD__(v49, 1);
      v61 = v49 + 1;
      if (v21)
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      if (v40 < v61)
      {
        if (v40 + 0x4000000000000000 < 0)
        {
          goto LABEL_80;
        }

        if (2 * v40 <= v61)
        {
          v40 = v61;
        }

        else
        {
          v40 *= 2;
        }
      }

      v41 = *(v25 + 24);
      sub_21B235334(v48, v40, &v73);
      sub_21B2B0C20(*(v25 + 16), *(v25 + 24), &qword_27CD7EC50, &qword_21B354898);
      v42 = v73;
      v43 = v74;
      *(v25 + 16) = v73;
      *(v25 + 24) = v43;
      sub_21B2B1578(v47, v42);
    }

    else
    {
      if (v47)
      {
        v50 = v40 + 7;
        if (__OFADD__(v40, 7))
        {
          goto LABEL_79;
        }

        v51 = v48 + 8;
        if (v50 < 0)
        {
          v50 = v40 + 14;
        }

        v52 = v50 >> 3;
        v54 = v52 - 1;
        v53 = v52 < 1;
        v55 = v52 + 62;
        if (!v53)
        {
          v55 = v54;
        }

        *(&v51[v49 + 8] + (v55 & 0xFFFFFFFFFFFFFFC0)) = v47;
        v56 = v49 / 8;
        v57 = v49 - (v55 & 0xFFFFFFFFFFFFFFF8);
        if (v57 >= 0)
        {
          v58 = 1 << v57;
        }

        else
        {
          v58 = 0;
        }

        *(v51 + v56) |= v58;
        v59 = v48[1];
        v21 = __OFADD__(v59, 1);
        v60 = v59 + 1;
        if (v21)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v62 = v48[2];
        v21 = __OFADD__(v62, 1);
        v63 = v62 + 1;
        if (v21)
        {
          goto LABEL_81;
        }

        v48[2] = v63;
        v21 = __OFADD__(v49, 1);
        v60 = v49 + 1;
        if (v21)
        {
          goto LABEL_78;
        }
      }

      v48[1] = v60;
    }

    v38 = *(v72 + 16);
    if (!v38)
    {
      goto LABEL_88;
    }
  }

  v73 = 0;
  v74 = 0xE000000000000000;
  sub_21B34B634();

  v73 = 0x6E6F697469736F70;
  v74 = 0xE900000000000020;
  v65 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v65);

  MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
LABEL_98:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AB69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_68;
  }

  v7 = *(v6 + 8);
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v9 = *(v8 + 8);
  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
    goto LABEL_63;
  }

  v11 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v14 = *(v13 + 16);
    if (v14)
    {
      if (*v14 < v10)
      {
        sub_21B2B36B8(v10, 1, sub_21B235334);
      }

LABEL_15:

      swift_beginAccess();
      v19 = *(a3 + 16);
      if (!v19)
      {
        goto LABEL_65;
      }

      v20 = 0;
      while (1)
      {
        v23 = v19[1];
        if (v20 == v23)
        {
        }

        if (v20 >= v23)
        {
          goto LABEL_72;
        }

        v24 = *(v19 + (v20 >> 3) + 64) & (1 << (v20 & 7));
        if (v24)
        {
          v25 = *v19 + 7;
          if (__OFADD__(*v19, 7))
          {
            __break(1u);
LABEL_57:
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
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          if (v25 < 0)
          {
            v25 = *v19 + 14;
          }

          v26 = v25 >> 3;
          v28 = v26 - 1;
          v27 = v26 < 1;
          v29 = v26 + 62;
          if (!v27)
          {
            v29 = v28;
          }

          v30 = *(&v19[v20 + 16] + (v29 & 0xFFFFFFFFFFFFFFC0));
          v31 = *(v13 + 16);
          if (!v31)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v30 = 0;
          v31 = *(v13 + 16);
          if (!v31)
          {
            goto LABEL_66;
          }
        }

        v32 = *v31;
        v33 = v31[1];
        if (v33 >= *v31)
        {
          v43 = __OFADD__(v33, 1);
          v45 = v33 + 1;
          if (v43)
          {
            goto LABEL_57;
          }

          if (v32 < v45)
          {
            if (v32 + 0x4000000000000000 < 0)
            {
              goto LABEL_61;
            }

            if (2 * v32 <= v45)
            {
              v32 = v45;
            }

            else
            {
              v32 *= 2;
            }
          }

          v46 = *(v13 + 24);
          sub_21B235334(v31, v32, v51);
          v47 = *(v13 + 16);
          if (!v47)
          {
            goto LABEL_67;
          }

          if ((*(v47 + 8) & 0x8000000000000000) != 0)
          {
            goto LABEL_59;
          }

          MEMORY[0x21CEEEA30]();
          v21 = v51[0];
          v22 = v51[1];
          *(v13 + 16) = v51[0];
          *(v13 + 24) = v22;
          sub_21B2B0F30(v30, v24 == 0, v21);
        }

        else
        {
          if (v24)
          {
            v34 = v32 + 7;
            if (__OFADD__(v32, 7))
            {
              goto LABEL_60;
            }

            v35 = v31 + 8;
            if (v34 < 0)
            {
              v34 = v32 + 14;
            }

            v36 = v34 >> 3;
            v37 = v36 - 1;
            v27 = v36 < 1;
            v38 = v36 + 62;
            if (!v27)
            {
              v38 = v37;
            }

            *(&v35[v33 + 8] + (v38 & 0xFFFFFFFFFFFFFFC0)) = v30;
            v39 = v33 / 8;
            v40 = v33 - (v38 & 0xFFFFFFFFFFFFFFF8);
            if (v40 >= 0)
            {
              v41 = 1 << v40;
            }

            else
            {
              v41 = 0;
            }

            *(v35 + v39) |= v41;
            v42 = v31[1];
            v43 = __OFADD__(v42, 1);
            v44 = v42 + 1;
            if (v43)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v48 = v31[2];
            v43 = __OFADD__(v48, 1);
            v49 = v48 + 1;
            if (v43)
            {
              goto LABEL_62;
            }

            v31[2] = v49;
            v43 = __OFADD__(v33, 1);
            v44 = v33 + 1;
            if (v43)
            {
              goto LABEL_58;
            }
          }

          v31[1] = v44;
        }

        v19 = *(a3 + 16);
        ++v20;
        if (!v19)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_70;
  }

  swift_beginAccess();
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = *v15;
    if (*v15 < v10)
    {
      if (v16 + 0x4000000000000000 < 0)
      {
        goto LABEL_64;
      }

      if (2 * v16 <= v10)
      {
        v16 = v10;
      }

      else
      {
        v16 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
    v17 = swift_allocObject();
    v18 = *(v13 + 24);
    sub_21B2AEE64(v15, v16, &v52);
    *(v17 + 16) = v52;

    *v3 = v17;
    v13 = v17;
    goto LABEL_15;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2ABA8C(int64_t *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v5 = *(v4 + 8);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[4];
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v6 < 0)
  {
    goto LABEL_68;
  }

  v10 = *(v9 + 8);
  if (v10 < v6)
  {
    goto LABEL_68;
  }

  if (v7 < 0 || v10 < v7)
  {
    goto LABEL_69;
  }

  v11 = __OFADD__(v5, v7 - v6);
  v12 = v5 + v7 - v6;
  if (v11)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v13 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v17 = *(v15 + 16);
    if (!v17)
    {
      goto LABEL_78;
    }

    v18 = *v17;
    if (*v17 < v12)
    {
      if (v18 + 0x4000000000000000 < 0)
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      if (2 * v18 <= v12)
      {
        v18 = v12;
      }

      else
      {
        v18 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
    v19 = swift_allocObject();
    v20 = *(v15 + 24);
    sub_21B2AEE64(v17, v18, v53);
    *(v19 + 16) = *v53;

    *v1 = v19;
    v15 = v19;
    goto LABEL_19;
  }

  swift_beginAccess();
  v16 = *(v15 + 16);
  if (v16)
  {
    if (*v16 < v12)
    {
      sub_21B2B36B8(v12, 1, sub_21B235334);
    }

LABEL_19:
    v21 = a1[3];
    v22 = a1[4];
    sub_21B2615FC(a1, v53, &qword_27CD7E738, &qword_21B352358);
    swift_beginAccess();
    if (v7 == v6)
    {
LABEL_20:
    }

    while (v6 < v7)
    {
      v24 = *(v8 + 16);
      if (!v24)
      {
        goto LABEL_72;
      }

      if (v6 >= v24[1])
      {
        goto LABEL_79;
      }

      v25 = *(v24 + (v6 >> 3) + 64) & (1 << (v6 & 7));
      if (v25)
      {
        v26 = *v24 + 7;
        if (__OFADD__(*v24, 7))
        {
          goto LABEL_61;
        }

        if (v26 < 0)
        {
          v26 = *v24 + 14;
        }

        v27 = v26 >> 3;
        v29 = v27 - 1;
        v28 = v27 < 1;
        v30 = v27 + 62;
        if (!v28)
        {
          v30 = v29;
        }

        v31 = *(&v24[v6 + 16] + (v30 & 0xFFFFFFFFFFFFFFC0));
        v32 = *(v15 + 16);
        if (!v32)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v31 = 0;
        v32 = *(v15 + 16);
        if (!v32)
        {
          goto LABEL_73;
        }
      }

      v33 = *v32;
      v34 = v32[1];
      if (v34 >= *v32)
      {
        v11 = __OFADD__(v34, 1);
        v45 = v34 + 1;
        if (v11)
        {
          goto LABEL_62;
        }

        if (v33 < v45)
        {
          if (v33 + 0x4000000000000000 < 0)
          {
            goto LABEL_66;
          }

          if (2 * v33 <= v45)
          {
            v33 = v45;
          }

          else
          {
            v33 *= 2;
          }
        }

        v46 = *(v15 + 24);
        sub_21B235334(v32, v33, v52);
        v47 = *(v15 + 16);
        if (!v47)
        {
          goto LABEL_74;
        }

        if ((*(v47 + 8) & 0x8000000000000000) != 0)
        {
          goto LABEL_64;
        }

        MEMORY[0x21CEEEA30]();
        v48 = v52[0];
        v49 = v52[1];
        *(v15 + 16) = v52[0];
        *(v15 + 24) = v49;
        sub_21B2B0F30(v31, v25 == 0, v48);
      }

      else
      {
        if (v25)
        {
          v35 = v33 + 7;
          if (__OFADD__(v33, 7))
          {
            goto LABEL_65;
          }

          v36 = v32 + 8;
          if (v35 < 0)
          {
            v35 = v33 + 14;
          }

          v37 = v35 >> 3;
          v38 = v37 - 1;
          v28 = v37 < 1;
          v39 = v37 + 62;
          if (!v28)
          {
            v39 = v38;
          }

          *(&v36[v34 + 8] + (v39 & 0xFFFFFFFFFFFFFFC0)) = v31;
          v40 = v34 / 8;
          v41 = v34 - (v39 & 0xFFFFFFFFFFFFFFF8);
          if (v41 >= 0)
          {
            v42 = 1 << v41;
          }

          else
          {
            v42 = 0;
          }

          *(v36 + v40) |= v42;
          v43 = v32[1];
          v11 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v11)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v50 = v32[2];
          v11 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v11)
          {
            goto LABEL_67;
          }

          v32[2] = v51;
          v11 = __OFADD__(v34, 1);
          v44 = v34 + 1;
          if (v11)
          {
            goto LABEL_63;
          }
        }

        v32[1] = v44;
      }

      if (v7 == ++v6)
      {
        goto LABEL_20;
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
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2ABEC8(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_95;
  }

  v5 = *(a1 + 24);
  v74 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v68 = a1;
  v70 = *(v4 + 8);
  if (*(a1 + 40))
  {
    if (v7 != 1 || (v8 = v5 + 2, !v5[2]))
    {
      v12 = 0;
      goto LABEL_24;
    }

    v9 = 0;
    v10 = v5[4];
    v11 = v5[5];
  }

  else
  {
    v8 = v5 + 2;
    v9 = 1;
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
  }

  swift_beginAccess();
  v13 = *(v74 + 16);
  if (!v13)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v10 < 0 || (v14 = *(v13 + 8), v14 < v10))
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v11 < 0 || v14 < v11)
  {
    goto LABEL_85;
  }

  v12 = v11 - v10;
  if ((v9 & 1) == 0 && *v8 != 1)
  {
    v15 = v5 + 7;
    v16 = 1;
    while (v16 < *v8)
    {
      v18 = *(v15 - 1);
      v17 = *v15;
      swift_beginAccess();
      v19 = *(v74 + 16);
      if (!v19)
      {
        goto LABEL_94;
      }

      if (v18 < 0)
      {
        goto LABEL_84;
      }

      v20 = *(v19 + 8);
      if (v20 < v18)
      {
        goto LABEL_84;
      }

      if (v17 < 0 || v20 < v17)
      {
        goto LABEL_85;
      }

      v21 = __OFADD__(v12, v17 - v18);
      v12 += v17 - v18;
      if (v21)
      {
        goto LABEL_87;
      }

      ++v16;
      v15 += 2;
      if (v16 == *v8)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_86;
  }

LABEL_24:
  v22 = v70 + v12;
  if (__OFADD__(v70, v12))
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v23 = *v72;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v72;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v26 = *(v25 + 16);
    v27 = v68;
    if (!v26)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    if (*v26 < v22)
    {
      sub_21B2B36B8(v22, 1, sub_21B235334);
    }
  }

  else
  {
    swift_beginAccess();
    v28 = *(v25 + 16);
    if (!v28)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v29 = *v28;
    if (*v28 < v22)
    {
      if (v29 + 0x4000000000000000 < 0)
      {
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      if (2 * v29 <= v22)
      {
        v29 = v22;
      }

      else
      {
        v29 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
    v30 = swift_allocObject();
    v31 = *(v25 + 24);
    sub_21B2AEE64(v28, v29, &v77);
    *(v30 + 16) = v77;

    *v72 = v30;
    v25 = v30;
    v27 = v68;
  }

  v69 = *v27;
  v32 = *(v27 + 16);
  v33 = *(v27 + 32);
  v71 = v33;
  v73 = *(v27 + 24);
  v34 = v5;
  v35 = *(v27 + 40);
  if (v7)
  {
    if (v7 == 1 && v5[2])
    {
      v36 = v5 + 4;
    }

    else
    {
      swift_beginAccess();
      v37 = *(v74 + 16);
      if (!v37)
      {
LABEL_98:
        __break(1u);
        goto LABEL_101;
      }

      v36 = (v37 + 8);
    }

    v34 = *v36;
  }

  sub_21B2615FC(v27, &v77, &qword_27CD7E6F8, &qword_21B352318);
  swift_beginAccess();
  swift_beginAccess();
  v38 = *(v74 + 16);
  if (!v38)
  {
    goto LABEL_90;
  }

  v39 = v74;
  while (1)
  {
    if (v34 == *(v38 + 8))
    {

      return sub_21B23A9F4(v73, v71, v35);
    }

    if ((sub_21B2D3BE8(v34, v5, v6, v7) & 1) == 0)
    {
      break;
    }

    if (v34 < 0)
    {
      goto LABEL_101;
    }

    swift_beginAccess();
    v42 = *(v39 + 16);
    if (!v42)
    {
      goto LABEL_91;
    }

    v43 = v42[1];
    if (v34 >= v43)
    {
      goto LABEL_101;
    }

    v44 = *(v39 + 24);
    v45 = sub_21B2B1790(v34, v42, v43);
    v47 = v46;
    v77 = v69;
    v78 = v32;
    v79 = v73;
    v80 = v71;
    v81 = v35;
    v34 = sub_21B2B336C(v34);
    v48 = *(v25 + 16);
    if (!v48)
    {
      goto LABEL_92;
    }

    v39 = v78;
    v5 = v79;
    v6 = v80;
    LOBYTE(v7) = v81;
    v49 = *v48;
    v50 = v48[1];
    if (v50 >= *v48)
    {
      v21 = __OFADD__(v50, 1);
      v53 = v50 + 1;
      if (v21)
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (v49 < v53)
      {
        if (v49 + 0x4000000000000000 < 0)
        {
          goto LABEL_83;
        }

        if (2 * v49 <= v53)
        {
          v49 = v53;
        }

        else
        {
          v49 *= 2;
        }
      }

      v54 = *(v25 + 24);
      sub_21B235334(v48, v49, &v75);
      v55 = *(v25 + 16);
      if (!v55)
      {
        goto LABEL_93;
      }

      if ((*(v55 + 8) & 0x8000000000000000) != 0)
      {
        goto LABEL_80;
      }

      MEMORY[0x21CEEEA30]();
      v40 = v75;
      v41 = v76;
      *(v25 + 16) = v75;
      *(v25 + 24) = v41;
      sub_21B2B0F30(v45, v47 & 1, v40);
    }

    else
    {
      if (v47)
      {
        v51 = v48[2];
        v21 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v21)
        {
          goto LABEL_81;
        }

        v48[2] = v52;
      }

      else
      {
        v56 = v49 + 7;
        if (__OFADD__(v49, 7))
        {
          goto LABEL_82;
        }

        v57 = v48 + 8;
        if (v56 < 0)
        {
          v56 = v49 + 14;
        }

        v58 = v56 >> 3;
        v60 = v58 - 1;
        v59 = v58 < 1;
        v61 = v58 + 62;
        if (!v59)
        {
          v61 = v60;
        }

        *(&v57[v50 + 8] + (v61 & 0xFFFFFFFFFFFFFFC0)) = v45;
        v62 = v50 / 8;
        v63 = v50 - (v61 & 0xFFFFFFFFFFFFFFF8);
        if (v63 >= 0)
        {
          v64 = 1 << v63;
        }

        else
        {
          v64 = 0;
        }

        *(v57 + v62) |= v64;
        v50 = v48[1];
      }

      v21 = __OFADD__(v50, 1);
      v65 = v50 + 1;
      if (v21)
      {
        goto LABEL_79;
      }

      v48[1] = v65;
    }

    v38 = *(v74 + 16);
    if (!v38)
    {
      goto LABEL_90;
    }
  }

  v75 = 0;
  v76 = 0xE000000000000000;
  sub_21B34B634();

  v75 = 0x6E6F697469736F70;
  v76 = 0xE900000000000020;
  v67 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v67);

  MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
LABEL_101:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AC544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_66;
  }

  v7 = *(v6 + 8);
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v9 = *(v8 + 8);
  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
    goto LABEL_62;
  }

  v11 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v14 = *(v13 + 16);
    if (v14)
    {
      if (*v14 < v10)
      {
        sub_21B2B3560(v10, 1, sub_21B2AFD1C, sub_21B2B0954);
      }

LABEL_15:

      swift_beginAccess();
      v19 = *(a3 + 16);
      if (!v19)
      {
        goto LABEL_64;
      }

      v20 = 0;
      v21 = 0;
      while (1)
      {
        v27 = v19[1];
        if (v21 == v27)
        {
        }

        if (v21 >= v27)
        {
          goto LABEL_70;
        }

        if ((*(v19 + (v21 >> 3) + 64) >> (v21 & 7)))
        {
          v28 = *v19 + 7;
          if (__OFADD__(*v19, 7))
          {
            __break(1u);
LABEL_57:
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
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          if (v28 < 0)
          {
            v28 = *v19 + 14;
          }

          v29 = v28 >> 3;
          v31 = v29 - 1;
          v30 = v29 < 1;
          v32 = v29 + 62;
          if (!v30)
          {
            v32 = v31;
          }

          v33 = &v19[v20] + (v32 & 0xFFFFFFFFFFFFFFC0);
          v35 = *(v33 + 128);
          v34 = *(v33 + 136);

          v36 = *(v13 + 16);
          if (!v36)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v35 = 0;
          v34 = 0;
          v36 = *(v13 + 16);
          if (!v36)
          {
            goto LABEL_65;
          }
        }

        v22 = *v36;
        v37 = v36[1];
        if (v37 >= *v36)
        {
          v49 = __OFADD__(v37, 1);
          v51 = v37 + 1;
          if (v49)
          {
            goto LABEL_57;
          }

          if (v22 < v51)
          {
            if (v22 + 0x4000000000000000 < 0)
            {
              goto LABEL_60;
            }

            if (2 * v22 <= v51)
            {
              v22 = v51;
            }

            else
            {
              v22 *= 2;
            }
          }

          v23 = *(v13 + 24);
          sub_21B2AFD1C(v36, v22, v55);
          v24 = *(v13 + 24);
          sub_21B2B0954(*(v13 + 16));
          v25 = v55[0];
          v26 = v55[1];
          *(v13 + 16) = v55[0];
          *(v13 + 24) = v26;
          sub_21B22EEB8(v35, v34, v25);
        }

        else
        {
          if (v34)
          {
            v38 = v22 + 7;
            if (__OFADD__(v22, 7))
            {
              goto LABEL_59;
            }

            v39 = v36 + 8;
            if (v38 < 0)
            {
              v38 = v22 + 14;
            }

            v40 = v38 >> 3;
            v41 = v40 - 1;
            v30 = v40 < 1;
            v42 = v40 + 62;
            if (!v30)
            {
              v42 = v41;
            }

            v43 = &v39[2 * v37] + (v42 & 0xFFFFFFFFFFFFFFC0);
            *(v43 + 64) = v35;
            *(v43 + 72) = v34;
            v44 = v36[1];
            v45 = v44 + 7;
            if (v44 >= 0)
            {
              v45 = v36[1];
            }

            v46 = v44 - (v45 & 0xFFFFFFFFFFFFFFF8);
            if (v46 >= 0)
            {
              v47 = 1 << v46;
            }

            else
            {
              v47 = 0;
            }

            *(v39 + (v45 >> 3)) |= v47;
            v48 = v36[1];
            v49 = __OFADD__(v48, 1);
            v50 = v48 + 1;
            if (v49)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v52 = v36[2];
            v49 = __OFADD__(v52, 1);
            v53 = v52 + 1;
            if (v49)
            {
              goto LABEL_61;
            }

            v36[2] = v53;
            v49 = __OFADD__(v37, 1);
            v50 = v37 + 1;
            if (v49)
            {
              goto LABEL_58;
            }
          }

          v36[1] = v50;
        }

        v19 = *(a3 + 16);
        v20 += 2;
        ++v21;
        if (!v19)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_68;
  }

  swift_beginAccess();
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = *v15;
    if (*v15 < v10)
    {
      if (v16 + 0x4000000000000000 < 0)
      {
        goto LABEL_63;
      }

      if (2 * v16 <= v10)
      {
        v16 = v10;
      }

      else
      {
        v16 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
    v17 = swift_allocObject();
    v18 = *(v13 + 24);
    sub_21B2AEFEC(v15, v16, &v56);
    *(v17 + 16) = v56;

    *v3 = v17;
    v13 = v17;
    goto LABEL_15;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AC948(int64_t *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v5 = *(v4 + 8);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[4];
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v6 < 0)
  {
    goto LABEL_68;
  }

  v10 = *(v9 + 8);
  if (v10 < v6)
  {
    goto LABEL_68;
  }

  if (v7 < 0 || v10 < v7)
  {
    goto LABEL_69;
  }

  v11 = __OFADD__(v5, v7 - v6);
  v12 = v5 + v7 - v6;
  if (v11)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v13 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v17 = *(v15 + 16);
    if (!v17)
    {
      goto LABEL_77;
    }

    v18 = *v17;
    if (*v17 < v12)
    {
      if (v18 + 0x4000000000000000 < 0)
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      if (2 * v18 <= v12)
      {
        v18 = v12;
      }

      else
      {
        v18 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
    v19 = swift_allocObject();
    v20 = *(v15 + 24);
    sub_21B2AEFEC(v17, v18, v57);
    *(v19 + 16) = *v57;

    *v1 = v19;
    v15 = v19;
    goto LABEL_19;
  }

  swift_beginAccess();
  v16 = *(v15 + 16);
  if (v16)
  {
    if (*v16 < v12)
    {
      sub_21B2B3560(v12, 1, sub_21B2AFD1C, sub_21B2B0954);
    }

LABEL_19:
    v21 = a1[4];
    v55 = a1[3];
    sub_21B2615FC(a1, v57, &qword_27CD7E748, &qword_21B352368);
    swift_beginAccess();
    if (v7 == v6)
    {
LABEL_20:
    }

    v23 = 2 * v6;
    while (v6 < v7)
    {
      v29 = *(v8 + 16);
      if (!v29)
      {
        goto LABEL_72;
      }

      if (v6 >= v29[1])
      {
        goto LABEL_78;
      }

      if ((*(v29 + (v6 >> 3) + 64) >> (v6 & 7)))
      {
        v30 = *v29 + 7;
        if (__OFADD__(*v29, 7))
        {
          goto LABEL_62;
        }

        if (v30 < 0)
        {
          v30 = *v29 + 14;
        }

        v31 = v30 >> 3;
        v33 = v31 - 1;
        v32 = v31 < 1;
        v34 = v31 + 62;
        if (!v32)
        {
          v34 = v33;
        }

        v35 = &v29[v23] + (v34 & 0xFFFFFFFFFFFFFFC0);
        v37 = *(v35 + 128);
        v36 = *(v35 + 136);

        v38 = *(v15 + 16);
        if (!v38)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v37 = 0;
        v36 = 0;
        v38 = *(v15 + 16);
        if (!v38)
        {
          goto LABEL_73;
        }
      }

      v24 = *v38;
      v39 = v38[1];
      if (v39 >= *v38)
      {
        v11 = __OFADD__(v39, 1);
        v52 = v39 + 1;
        if (v11)
        {
          goto LABEL_63;
        }

        if (v24 < v52)
        {
          if (v24 + 0x4000000000000000 < 0)
          {
            goto LABEL_66;
          }

          if (2 * v24 <= v52)
          {
            v24 = v52;
          }

          else
          {
            v24 *= 2;
          }
        }

        v25 = *(v15 + 24);
        sub_21B2AFD1C(v38, v24, v56);
        v26 = *(v15 + 24);
        sub_21B2B0954(*(v15 + 16));
        v27 = v56[0];
        v28 = v56[1];
        *(v15 + 16) = v56[0];
        *(v15 + 24) = v28;
        sub_21B22EEB8(v37, v36, v27);
      }

      else
      {
        if (v36)
        {
          v40 = v24 + 7;
          if (__OFADD__(v24, 7))
          {
            goto LABEL_65;
          }

          v41 = v38 + 8;
          if (v40 < 0)
          {
            v40 = v24 + 14;
          }

          v42 = v40 >> 3;
          v43 = v42 - 1;
          v32 = v42 < 1;
          v44 = v42 + 62;
          if (!v32)
          {
            v44 = v43;
          }

          v45 = &v41[2 * v39] + (v44 & 0xFFFFFFFFFFFFFFC0);
          *(v45 + 64) = v37;
          *(v45 + 72) = v36;
          v46 = v38[1];
          v47 = v46 + 7;
          if (v46 >= 0)
          {
            v47 = v38[1];
          }

          v48 = v46 - (v47 & 0xFFFFFFFFFFFFFFF8);
          if (v48 >= 0)
          {
            v49 = 1 << v48;
          }

          else
          {
            v49 = 0;
          }

          *(v41 + (v47 >> 3)) |= v49;
          v50 = v38[1];
          v11 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v11)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v53 = v38[2];
          v11 = __OFADD__(v53, 1);
          v54 = v53 + 1;
          if (v11)
          {
            goto LABEL_67;
          }

          v38[2] = v54;
          v11 = __OFADD__(v39, 1);
          v51 = v39 + 1;
          if (v11)
          {
            goto LABEL_64;
          }
        }

        v38[1] = v51;
      }

      ++v6;
      v23 += 2;
      if (v7 == v6)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2ACD94(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_94;
  }

  v73 = *(v4 + 8);
  v5 = *(a1 + 24);
  v77 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v71 = a1;
  if (*(a1 + 40))
  {
    if (v7 != 1 || (v8 = v5 + 2, !v5[2]))
    {
      v12 = 0;
      goto LABEL_24;
    }

    v9 = 0;
    v10 = v5[4];
    v11 = v5[5];
  }

  else
  {
    v8 = v5 + 2;
    v9 = 1;
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
  }

  swift_beginAccess();
  v13 = *(v77 + 16);
  if (!v13)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v10 < 0 || (v14 = *(v13 + 8), v14 < v10))
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v11 < 0 || v14 < v11)
  {
    goto LABEL_85;
  }

  v12 = v11 - v10;
  if ((v9 & 1) == 0 && *v8 != 1)
  {
    v15 = v5 + 7;
    v16 = 1;
    while (v16 < *v8)
    {
      v18 = *(v15 - 1);
      v17 = *v15;
      swift_beginAccess();
      v19 = *(v77 + 16);
      if (!v19)
      {
        goto LABEL_93;
      }

      if (v18 < 0)
      {
        goto LABEL_84;
      }

      v20 = *(v19 + 8);
      if (v20 < v18)
      {
        goto LABEL_84;
      }

      if (v17 < 0 || v20 < v17)
      {
        goto LABEL_85;
      }

      v21 = __OFADD__(v12, v17 - v18);
      v12 += v17 - v18;
      if (v21)
      {
        goto LABEL_87;
      }

      ++v16;
      v15 += 2;
      if (v16 == *v8)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_86;
  }

LABEL_24:
  v22 = v73 + v12;
  if (__OFADD__(v73, v12))
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v23 = *v75;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v75;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v26 = *(v25 + 16);
    v27 = v71;
    if (!v26)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    if (*v26 < v22)
    {
      sub_21B2B3560(v22, 1, sub_21B2AFD1C, sub_21B2B0954);
    }
  }

  else
  {
    swift_beginAccess();
    v28 = *(v25 + 16);
    if (!v28)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v29 = *v28;
    if (*v28 < v22)
    {
      if (v29 + 0x4000000000000000 < 0)
      {
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      if (2 * v29 <= v22)
      {
        v29 = v22;
      }

      else
      {
        v29 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
    v30 = swift_allocObject();
    v31 = *(v25 + 24);
    sub_21B2AEFEC(v28, v29, &v80);
    *(v30 + 16) = v80;

    *v75 = v30;
    v25 = v30;
    v27 = v71;
  }

  v72 = *v27;
  v32 = *(v27 + 16);
  v33 = *(v27 + 32);
  v74 = v33;
  v76 = *(v27 + 24);
  v34 = v5;
  v35 = *(v27 + 40);
  if (v7)
  {
    if (v7 == 1 && v5[2])
    {
      v36 = v5 + 4;
    }

    else
    {
      swift_beginAccess();
      v37 = *(v77 + 16);
      if (!v37)
      {
LABEL_97:
        __break(1u);
        goto LABEL_100;
      }

      v36 = (v37 + 8);
    }

    v34 = *v36;
  }

  sub_21B2615FC(v27, &v80, &qword_27CD7E6E8, &qword_21B352308);
  swift_beginAccess();
  swift_beginAccess();
  v38 = *(v77 + 16);
  if (!v38)
  {
    goto LABEL_90;
  }

  v39 = v77;
  while (1)
  {
    if (v34 == *(v38 + 8))
    {

      return sub_21B23A9F4(v76, v74, v35);
    }

    if ((sub_21B2D3BE8(v34, v5, v6, v7) & 1) == 0)
    {
      break;
    }

    if (v34 < 0)
    {
      goto LABEL_100;
    }

    swift_beginAccess();
    v45 = *(v39 + 16);
    if (!v45)
    {
      goto LABEL_91;
    }

    v46 = v45[1];
    if (v34 >= v46)
    {
      goto LABEL_100;
    }

    v47 = *(v39 + 24);
    v48 = sub_21B232880(v34, v45, v46);
    v50 = v49;
    v80 = v72;
    v81 = v32;
    v82 = v76;
    v83 = v74;
    v84 = v35;
    v34 = sub_21B2B336C(v34);
    v51 = *(v25 + 16);
    if (!v51)
    {
      goto LABEL_92;
    }

    v39 = v81;
    v5 = v82;
    v6 = v83;
    LOBYTE(v7) = v84;
    v40 = *v51;
    v52 = v51[1];
    if (v52 >= *v51)
    {
      v21 = __OFADD__(v52, 1);
      v66 = v52 + 1;
      if (v21)
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (v40 < v66)
      {
        if (v40 + 0x4000000000000000 < 0)
        {
          goto LABEL_82;
        }

        if (2 * v40 <= v66)
        {
          v40 = v66;
        }

        else
        {
          v40 *= 2;
        }
      }

      v41 = *(v25 + 24);
      sub_21B2AFD1C(v51, v40, &v78);
      v42 = *(v25 + 24);
      sub_21B2B0954(*(v25 + 16));
      v43 = v78;
      v44 = v79;
      *(v25 + 16) = v78;
      *(v25 + 24) = v44;
      sub_21B22EEB8(v48, v50, v43);
    }

    else
    {
      if (v50)
      {
        v53 = v40 + 7;
        if (__OFADD__(v40, 7))
        {
          goto LABEL_81;
        }

        v54 = v51 + 8;
        if (v53 < 0)
        {
          v53 = v40 + 14;
        }

        v55 = v53 >> 3;
        v57 = v55 - 1;
        v56 = v55 < 1;
        v58 = v55 + 62;
        if (!v56)
        {
          v58 = v57;
        }

        v59 = &v54[2 * v52] + (v58 & 0xFFFFFFFFFFFFFFC0);
        *(v59 + 64) = v48;
        *(v59 + 72) = v50;
        v60 = v51[1];
        v61 = v60 + 7;
        if (v60 >= 0)
        {
          v61 = v51[1];
        }

        v62 = v60 - (v61 & 0xFFFFFFFFFFFFFFF8);
        if (v62 >= 0)
        {
          v63 = 1 << v62;
        }

        else
        {
          v63 = 0;
        }

        *(v54 + (v61 >> 3)) |= v63;
        v64 = v51[1];
        v21 = __OFADD__(v64, 1);
        v65 = v64 + 1;
        if (v21)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v67 = v51[2];
        v21 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (v21)
        {
          goto LABEL_83;
        }

        v51[2] = v68;
        v21 = __OFADD__(v52, 1);
        v65 = v52 + 1;
        if (v21)
        {
          goto LABEL_80;
        }
      }

      v51[1] = v65;
    }

    v38 = *(v77 + 16);
    if (!v38)
    {
      goto LABEL_90;
    }
  }

  v78 = 0;
  v79 = 0xE000000000000000;
  sub_21B34B634();

  v78 = 0x6E6F697469736F70;
  v79 = 0xE900000000000020;
  v70 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v70);

  MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
LABEL_100:
  result = sub_21B34B824();
  __break(1u);
  return result;
}