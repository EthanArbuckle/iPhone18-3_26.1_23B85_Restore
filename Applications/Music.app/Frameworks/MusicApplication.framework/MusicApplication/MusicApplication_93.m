uint64_t sub_877148(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_877334(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_8773C0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_8773D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_8774D8@<X0>(_BYTE *a1@<X8>)
{
  sub_877574();
  result = sub_AB6250();
  *a1 = v3;
  return result;
}

unint64_t sub_877574()
{
  result = qword_E1D180;
  if (!qword_E1D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D180);
  }

  return result;
}

uint64_t sub_8775C8()
{
  if (*(v0 + 24))
  {
  }

  sub_83315C(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_877614()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1(*(v0 + 16));
  }

  return result;
}

uint64_t sub_87764C(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v40 = sub_AB5C00();
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_AB5A60();
  v36 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_AB5B30();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D1F0);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v36 - v24;
  v44.origin.x = a3;
  v44.origin.y = a4;
  v44.size.width = a5;
  v44.size.height = a6;
  CGRectGetWidth(v44);
  v41 = a2;
  sub_878A18(&qword_E1D1F8, &type metadata accessor for LayoutSubviews);
  sub_AB9C60();
  sub_AB9CA0();
  v38 = sub_AB9C90();
  (*(v19 + 16))(v21, a1, v18);
  sub_878A18(&qword_E1D200, &type metadata accessor for LayoutSubviews);
  sub_AB95A0();
  v26 = *(v23 + 44);
  sub_AB9CA0();
  if (*&v25[v26] != v42[0])
  {
    ++v37;
    v38 = (v36 + 2);
    ++v36;
    v27 = a3;
    do
    {
      v28 = sub_AB9D80();
      (*v38)(v17);
      v28(v42, 0);
      sub_AB9CB0();
      v45.origin.x = a3;
      v45.origin.y = a4;
      v45.size.width = a5;
      v45.size.height = a6;
      CGRectGetHeight(v45);
      sub_AB7B60();
      LOBYTE(v42[0]) = 0;
      v43 = 0;
      sub_AB5A50();
      LOBYTE(v42[0]) = 0;
      v43 = 0;
      v29 = v18;
      v30 = v15;
      v31 = v39;
      sub_AB5A30();
      sub_AB5BF0();
      v33 = v32;
      v34 = v31;
      v15 = v30;
      v18 = v29;
      (*v37)(v34, v40);
      (*v36)(v17, v15);
      v27 = v27 + v33 + a7;
      sub_AB9CA0();
    }

    while (*&v25[v26] != v42[0]);
  }

  return sub_12E1C(v25, &qword_E1D1F0);
}

char *_s11MusicCoreUI22PlayIntentLayoutHelperV6layout_2in4rect13configurationySayAA12SymbolButtonCG_So6UIViewCSo6CGRectVSgAC13ConfigurationVtFZ_0(unint64_t a1, void *a2, double *a3, int a4, double a5)
{
  v77 = a5;
  LODWORD(v75) = a4;
  v5 = a3;
  v82 = a2;
  v8 = *a3;
  v7 = a3[1];
  v10 = a3[2];
  v9 = a3[3];
  v11 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v15 = 0;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v80 = *&v5;
    v81 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = sub_ABAE20();
      }

      else
      {
        if (v15 >= *(v16 + 16))
        {
          goto LABEL_15;
        }

        v17 = *(a1 + 8 * v15 + 32);
      }

      v18 = v17;
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ([v17 isHidden])
      {
      }

      else
      {
        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();
        v16 = v81;
      }

      ++v15;
      if (v5 == i)
      {
        v19 = v83;
        *&v5 = v80;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_18:
  v20 = v82;
  [v82 bounds];
  v80 = v22;
  v81 = v21;
  v78 = v24;
  v79 = v23;
  v25 = [v20 traitCollection];
  [v25 displayScale];

  v76 = [v20 effectiveUserInterfaceLayoutDirection];
  result = [v20 layoutMargins];
  v28 = v27;
  Width = v29;
  v32 = v31;
  LODWORD(v33) = v19 < 0 || (v19 & 0x4000000000000000) != 0;
  if (v33 == 1)
  {
    goto LABEL_90;
  }

  v34 = *(v19 + 16);
  v35 = v34 - 1;
  if (!__OFSUB__(v34, 1))
  {
    while (1)
    {
      v73 = v35;
      if (*(v5 + 32))
      {
        v8 = UIEdgeInsetsInsetRect(*&v81, v80, v79, v78, v28, Width);
        v7 = v36;
        v10 = v37;
        v9 = v38;
      }

      if (v33)
      {
        *&v5 = COERCE_DOUBLE(sub_ABB060());
      }

      else
      {
        v5 = *(v19 + 16);
      }

      v74 = v34;
      if (*&v5 == 0.0)
      {
        break;
      }

      v39 = 0;
      Width = 0.0;
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v40 = sub_ABAE20();
        }

        else
        {
          if (v39 >= *(v19 + 16))
          {
            goto LABEL_85;
          }

          v40 = *(v19 + 8 * v39 + 32);
        }

        v33 = v40;
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        v42 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
        swift_beginAccess();
        sub_BD494(v33 + v42, v13);
        v13[184] = 0;
        SymbolButton.setConfiguration(_:animation:updates:)(v13, 0, 0, 0, 1, _swiftEmptyArrayStorage);
        sub_878C28(v13, type metadata accessor for SymbolButton.Configuration);
        [v33 intrinsicContentSize];
        v28 = v43;
        sub_AB3A10();
        Width = Width + v44;
        sub_AB3A10();
        v46 = v45;

        ++v39;
        if (v41 == v5)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      v74 = v32;
      result = sub_ABB060();
      v32 = v74;
      v34 = result;
      v35 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_92;
      }
    }

    Width = 0.0;
    v46 = 0.0;
LABEL_38:
    v47 = LOBYTE(v75);
    v48 = BYTE1(v75);
    v49 = (v73 & ~(v73 >> 63)) * v77;
    if (BYTE1(v75))
    {
      v50 = v74;
      if (BYTE1(v75) == 1)
      {
        v51 = 0;
        Width = v49 + v46 * v74;
      }

      else
      {
        v84.origin.x = v8;
        v84.origin.y = v7;
        v84.size.width = v10;
        v84.size.height = v9;
        CGRectGetWidth(v84);
        sub_AB3A10();
        v46 = v52;
        v85.origin.x = v8;
        v85.origin.y = v7;
        v85.size.width = v10;
        v85.size.height = v9;
        Width = CGRectGetWidth(v85);
        v51 = 0;
      }
    }

    else
    {
      Width = v49 + Width;
      v51 = 1;
      v46 = 0.0;
      v50 = v74;
    }

    v86.origin.x = v8;
    v86.origin.y = v7;
    v86.size.width = v10;
    v86.size.height = v9;
    v53 = Width - CGRectGetWidth(v86);
    if (v53 < 0.0)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = v53;
    }

    if ((v51 & 1) == 0 && v28 > 0.0)
    {
      sub_AB3A10();
      v46 = v46 - v54;
      v87.origin.x = v8;
      v87.origin.y = v7;
      v87.size.width = v10;
      v87.size.height = v9;
      Width = CGRectGetWidth(v87);
    }

    if (v48 != 2 && v47)
    {
      if (v47 != 1)
      {
        v92.origin.x = v8;
        v92.origin.y = v7;
        v92.size.width = v10;
        v92.size.height = v9;
        v8 = CGRectGetMaxX(v92) - Width;
        if (*&v5 != 0.0)
        {
          goto LABEL_54;
        }
      }

      v88.origin.x = v8;
      v88.origin.y = v7;
      v88.size.width = v10;
      v88.size.height = v9;
      CGRectGetWidth(v88);
      sub_AB39F0();
      v8 = v8 + v55;
    }

    if (*&v5 != 0.0)
    {
LABEL_54:
      v33 = 0;
      v56 = v50;
      v57 = 0;
      v58 = v19 & 0xC000000000000001;
      v75 = v28 / v56;
      while (1)
      {
        if (v58)
        {
          v60 = sub_ABAE20();
        }

        else
        {
          if (v33 >= *(v19 + 16))
          {
            goto LABEL_87;
          }

          v60 = *(v19 + 8 * v33 + 32);
        }

        v61 = v60;
        v62 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
          goto LABEL_86;
        }

        v63 = [v60 superview];
        if (!v63 || (v64 = v63, v63, v64 != v82))
        {
          [v82 addSubview:v61];
        }

        v28 = v46;
        if (v51)
        {
          [v61 intrinsicContentSize];
          v66 = v65;
          sub_AB3A10();
          v28 = v66 - v67;
        }

        sub_ABA490();
        [v61 setFrame:?];
        v90.origin.x = v8;
        v90.origin.y = v7;
        v90.size.width = v28;
        v90.size.height = v9;
        CGRectGetWidth(v90);
        v91.origin.x = v8;
        v91.origin.y = v7;
        v91.size.width = v28;
        v91.size.height = v9;
        v10 = CGRectGetWidth(v91);
        if (v57)
        {

          if (v62 == v5)
          {
            if (v74 < 2)
            {
            }

LABEL_74:
            for (j = 0; ; ++j)
            {
              if (v58)
              {
                v69 = sub_ABAE20();
              }

              else
              {
                if (j >= *(v19 + 16))
                {
                  goto LABEL_89;
                }

                v69 = *(v19 + 8 * j + 32);
              }

              v33 = v69;
              v70 = j + 1;
              if (__OFADD__(j, 1))
              {
                break;
              }

              v71 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
              swift_beginAccess();
              sub_BD494(v33 + v71, v13);
              v13[184] = 1;
              SymbolButton.setConfiguration(_:animation:updates:)(v13, 0, 0, 0, 1, _swiftEmptyArrayStorage);

              sub_878C28(v13, type metadata accessor for SymbolButton.Configuration);
              if (v70 == v5)
              {
              }
            }

            goto LABEL_88;
          }

          v57 = 1;
        }

        else
        {
          [v61 intrinsicContentSize];
          Width = v59;
          v89.origin.x = v8;
          v89.origin.y = v7;
          v89.size.width = v28;
          v89.size.height = v9;
          v28 = CGRectGetWidth(v89);

          v57 = v28 < Width;
          if (v62 == v5)
          {
            if (v28 >= Width || v74 <= 1)
            {
            }

            goto LABEL_74;
          }
        }

        v8 = v8 + v10 + v77;
        ++v33;
      }
    }
  }

LABEL_92:
  __break(1u);
  return result;
}

unint64_t sub_878368()
{
  result = qword_E1D190;
  if (!qword_E1D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D190);
  }

  return result;
}

unint64_t sub_8783C0()
{
  result = qword_E1D198;
  if (!qword_E1D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D198);
  }

  return result;
}

unint64_t sub_878434()
{
  result = qword_E1D1A0;
  if (!qword_E1D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D1A0);
  }

  return result;
}

unint64_t sub_87848C()
{
  result = qword_E1D1A8;
  if (!qword_E1D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D1A8);
  }

  return result;
}

unint64_t sub_8784E4()
{
  result = qword_E1D1B0;
  if (!qword_E1D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D1B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11MusicCoreUI12SymbolButtonC6IntentOIegy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_87858C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_8785E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlayIntentLayoutHelper.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_878718()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D1C8);
  sub_AB5D50();
  sub_36A00(&qword_E1D1D0, &qword_E1D1C8);
  return swift_getWitnessTable();
}

unint64_t sub_8787E8()
{
  result = qword_E1D1D8;
  if (!qword_E1D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D1D8);
  }

  return result;
}

unint64_t sub_87883C()
{
  result = qword_E1D1E0;
  if (!qword_E1D1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D1E8);
    sub_8783C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D1E0);
  }

  return result;
}

unint64_t sub_8788C0()
{
  result = qword_E1D208;
  if (!qword_E1D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D208);
  }

  return result;
}

uint64_t sub_878914()
{

  return swift_deallocObject();
}

uint64_t sub_878954@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = *a1;
  KeyPath = swift_getKeyPath();
  *a2 = v7;
  *(a2 + 1) = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = 0;
}

unint64_t sub_8789C4()
{
  result = qword_E1D240;
  if (!qword_E1D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D240);
  }

  return result;
}

uint64_t sub_878A18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_878A60()
{
  result = qword_E1D248;
  if (!qword_E1D248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D228);
    sub_878AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D248);
  }

  return result;
}

unint64_t sub_878AEC()
{
  result = qword_E1D250;
  if (!qword_E1D250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D220);
    sub_36A00(&qword_E1D258, &qword_E1D260);
    sub_878BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D250);
  }

  return result;
}

unint64_t sub_878BA4()
{
  result = qword_E1D268;
  if (!qword_E1D268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D270);
    sub_878434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D268);
  }

  return result;
}

uint64_t sub_878C28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *PlaylistCovers.CarouselItem.pageIndicatorImage.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

__n128 PlaylistCovers.CarouselItem.init(itemType:pageIndicatorImage:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v4 = a1[5];
  v25 = a1[4];
  v26 = v4;
  v5 = a1[7];
  v27 = a1[6];
  v28 = v5;
  v6 = a1[1];
  v22[0] = *a1;
  v22[1] = v6;
  v7 = a1[3];
  v23 = a1[2];
  v24 = v7;
  v13 = v22[0];
  v14 = v6;
  v15 = v23;
  v16 = v7;
  v17 = v25;
  v18 = v4;
  v19 = v27;
  v20 = v5;
  v21 = a2;
  v29 = a2;
  sub_85C360(&v13, v12);
  sub_878EE4(v22);
  v8 = v20;
  a3[6] = v19;
  a3[7] = v8;
  a3[8].n128_u64[0] = v21;
  v9 = v16;
  a3[2] = v15;
  a3[3] = v9;
  v10 = v18;
  a3[4] = v17;
  a3[5] = v10;
  result = v14;
  *a3 = v13;
  a3[1] = result;
  return result;
}

uint64_t static PlaylistCovers.CarouselItem.CarouselItemType.__derived_enum_equals(_:_:)(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v32 = a1[4];
  v33 = v3;
  v4 = a1[7];
  v34 = a1[6];
  v35 = v4;
  v5 = a1[1];
  v28 = *a1;
  v29 = v5;
  v6 = a1[3];
  v30 = a1[2];
  v31 = v6;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v28) == 1)
  {
    v7 = a2[5];
    v40 = a2[4];
    v41 = v7;
    v8 = a2[7];
    v42 = a2[6];
    v43 = v8;
    v9 = a2[1];
    v36 = *a2;
    v37 = v9;
    v10 = a2[3];
    v38 = a2[2];
    v39 = v10;
    v11 = get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v36) == 1;
  }

  else
  {
    v40 = v32;
    v41 = v33;
    v42 = v34;
    v43 = v35;
    v36 = v28;
    v37 = v29;
    v38 = v30;
    v39 = v31;
    v12 = *a2;
    v13 = a2[1];
    v14 = a2[3];
    v21 = a2[2];
    v22 = v14;
    v19 = v12;
    v20 = v13;
    v15 = a2[4];
    v16 = a2[5];
    v17 = a2[7];
    v25 = a2[6];
    v26 = v17;
    v23 = v15;
    v24 = v16;
    if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v19) == 1)
    {
      v11 = 0;
    }

    else
    {
      v27[4] = v23;
      v27[5] = v24;
      v27[6] = v25;
      v27[7] = v26;
      v27[0] = v19;
      v27[1] = v20;
      v27[2] = v21;
      v27[3] = v22;
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)(&v36, v27);
    }
  }

  return v11 & 1;
}

uint64_t sub_879028(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v38 = a1[4];
  v39 = v3;
  v4 = a1[7];
  v40 = a1[6];
  v41 = v4;
  v5 = a1[1];
  v34 = *a1;
  v35 = v5;
  v6 = a1[3];
  v36 = a1[2];
  v37 = v6;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v34) == 1)
  {
    v7 = a2[5];
    v30 = a2[4];
    v31 = v7;
    v8 = a2[7];
    v32 = a2[6];
    v33 = v8;
    v9 = a2[1];
    v26 = *a2;
    v27 = v9;
    v10 = a2[3];
    v28 = a2[2];
    v29 = v10;
    v11 = get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v26) == 1;
  }

  else
  {
    v25[4] = v38;
    v25[5] = v39;
    v25[6] = v40;
    v25[7] = v41;
    v25[0] = v34;
    v25[1] = v35;
    v25[2] = v36;
    v25[3] = v37;
    v12 = a2[7];
    v23 = a2[6];
    v24 = v12;
    v13 = a2[5];
    v21 = a2[4];
    v22 = v13;
    v14 = a2[3];
    v19 = a2[2];
    v20 = v14;
    v15 = a2[1];
    v17 = *a2;
    v18 = v15;
    if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v17) == 1)
    {
      v11 = 0;
    }

    else
    {
      v30 = v21;
      v31 = v22;
      v32 = v23;
      v33 = v24;
      v26 = v17;
      v27 = v18;
      v28 = v19;
      v29 = v20;
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)(v25, &v26);
    }
  }

  return v11 & 1;
}

uint64_t PlaylistCovers.CarouselItem.id.getter()
{
  v1 = v0[5];
  v7[4] = v0[4];
  v7[5] = v1;
  v2 = v0[7];
  v7[6] = v0[6];
  v7[7] = v2;
  v3 = v0[1];
  v7[0] = *v0;
  v7[1] = v3;
  v4 = v0[3];
  v7[2] = v0[2];
  v7[3] = v4;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(v7) == 1)
  {
    return 0x6369506F746F6850;
  }

  v5 = *(&v7[0] + 1);

  return v5;
}

uint64_t PlaylistCovers.CarouselItem.hash(into:)()
{
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v2 = v0[7];
  v6[6] = v0[6];
  v6[7] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = v0[3];
  v6[2] = v0[2];
  v6[3] = v4;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(v6) != 1)
  {
  }

  sub_AB93F0();
}

uint64_t static PlaylistCovers.CarouselItem.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v25 = a1[4];
  v26 = v3;
  v4 = a1[7];
  v27 = a1[6];
  v28 = v4;
  v5 = a1[1];
  v21 = *a1;
  v22 = v5;
  v6 = a1[3];
  v23 = a1[2];
  v24 = v6;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v21) == 1)
  {
    v7 = a2[5];
    v33 = a2[4];
    v34 = v7;
    v8 = a2[7];
    v35 = a2[6];
    v36 = v8;
    v9 = a2[1];
    v29 = *a2;
    v30 = v9;
    v10 = a2[3];
    v31 = a2[2];
    v32 = v10;
    v11 = get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v29) == 1;
  }

  else
  {
    v19[4] = v25;
    v19[5] = v26;
    v19[6] = v27;
    v19[7] = v28;
    v19[0] = v21;
    v19[1] = v22;
    v19[2] = v23;
    v19[3] = v24;
    v12 = *a2;
    v13 = a2[1];
    v14 = a2[3];
    v31 = a2[2];
    v32 = v14;
    v29 = v12;
    v30 = v13;
    v15 = a2[4];
    v16 = a2[5];
    v17 = a2[7];
    v35 = a2[6];
    v36 = v17;
    v33 = v15;
    v34 = v16;
    if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v29) == 1)
    {
      v11 = 0;
    }

    else
    {
      v20[4] = v33;
      v20[5] = v34;
      v20[6] = v35;
      v20[7] = v36;
      v20[0] = v29;
      v20[1] = v30;
      v20[2] = v31;
      v20[3] = v32;
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)(v19, v20);
    }
  }

  return v11 & 1;
}

double PlaylistCovers.CarouselItem.cover.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v23 = v1[4];
  v24 = v3;
  v4 = v1[7];
  v25 = v1[6];
  v26 = v4;
  v5 = v1[1];
  v20[0] = *v1;
  v20[1] = v5;
  v6 = v1[3];
  v21 = v1[2];
  v22 = v6;
  v33 = v25;
  v34 = v4;
  v31 = v23;
  v32 = v3;
  v29 = v21;
  v30 = v6;
  v27 = v20[0];
  v28 = v5;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v27) == 1)
  {
    sub_11F44(&v35);
  }

  else
  {
    v16 = v31;
    v17 = v32;
    v18 = v33;
    v19 = v34;
    v12 = v27;
    v13 = v28;
    v14 = v29;
    v15 = v30;
    UIScreen.Dimensions.size.getter(*&v29);
    v39 = v16;
    v40 = v17;
    v41 = v18;
    v42 = v19;
    v35 = v12;
    v36 = v13;
    v37 = v14;
    v38 = v15;
  }

  sub_878D50(v20, &v12);
  v7 = v40;
  a1[4] = v39;
  a1[5] = v7;
  v8 = v42;
  a1[6] = v41;
  a1[7] = v8;
  v9 = v36;
  *a1 = v35;
  a1[1] = v9;
  result = *&v37;
  v11 = v38;
  a1[2] = v37;
  a1[3] = v11;
  return result;
}

__n128 static PlaylistCovers.CarouselItem.picker.getter@<Q0>(__n128 *a1@<X8>)
{
  sub_11F44(&v9);
  v2 = sub_AB9260();
  v3 = [objc_opt_self() systemImageNamed:v2];

  v26[4] = v13;
  v26[5] = v14;
  v26[6] = v15;
  v26[7] = v16;
  v26[0] = v9;
  v26[1] = v10;
  v26[2] = v11;
  v26[3] = v12;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v3;
  v27 = v3;
  sub_85C360(&v17, v8);
  sub_878EE4(v26);
  v4 = v24;
  a1[6] = v23;
  a1[7] = v4;
  a1[8].n128_u64[0] = v25;
  v5 = v20;
  a1[2] = v19;
  a1[3] = v5;
  v6 = v22;
  a1[4] = v21;
  a1[5] = v6;
  result = v18;
  *a1 = v17;
  a1[1] = result;
  return result;
}

__n128 static PlaylistCovers.CarouselItem.tracksTiled(image:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v23[-v10];
  v12 = a1;
  sub_AB91E0();
  (*(v6 + 16))(v8, v11, v5);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v13 = qword_E73660;
  sub_AB3550();
  v14 = sub_AB9320();
  v16 = v15;
  (*(v6 + 8))(v11, v5);
  v17 = AccessibilityIdentifier.playlistEditorMetadataArtwork4Up.unsafeMutableAddressor();
  v18 = PlaylistCovers.Cover.init(image:id:accessibilityLabel:accessibilityIdentifier:)(v12, 0x6954736B63617254, 0xEB0000000064656CLL, v14, v16, *v17, v17[1], v17[2], &v24, v17[3]);
  UIScreen.Dimensions.size.getter(v18);
  v41[4] = v28;
  v41[5] = v29;
  v41[6] = v30;
  v41[7] = v31;
  v41[0] = v24;
  v41[1] = v25;
  v41[2] = v26;
  v41[3] = v27;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = v29;
  v38 = v30;
  v39 = v31;
  v40 = 0;
  v42 = 0;

  sub_85C360(&v32, v23);
  sub_878EE4(v41);
  v19 = v39;
  *(a2 + 96) = v38;
  *(a2 + 112) = v19;
  *(a2 + 128) = v40;
  v20 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v20;
  v21 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v21;
  result = v33;
  *a2 = v32;
  *(a2 + 16) = result;
  return result;
}

Swift::Int PlaylistCovers.CarouselItem.hashValue.getter()
{
  sub_ABB5C0();
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v2 = v0[7];
  v6[6] = v0[6];
  v6[7] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = v0[3];
  v6[2] = v0[2];
  v6[3] = v4;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(v6) != 1)
  {
  }

  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_8798EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  v9[4] = v1[4];
  v9[5] = v3;
  v4 = v1[7];
  v9[6] = v1[6];
  v9[7] = v4;
  v5 = v1[1];
  v9[0] = *v1;
  v9[1] = v5;
  v6 = v1[3];
  v9[2] = v1[2];
  v9[3] = v6;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(v9) == 1)
  {
    result = 0xEB0000000072656BLL;
    v8 = 0x6369506F746F6850;
  }

  else
  {
    v8 = *(&v9[0] + 1);
  }

  *a1 = v8;
  a1[1] = result;
  return result;
}

Swift::Int sub_879970()
{
  sub_ABB5C0();
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v2 = v0[7];
  v6[6] = v0[6];
  v6[7] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = v0[3];
  v6[2] = v0[2];
  v6[3] = v4;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(v6) != 1)
  {
  }

  sub_AB93F0();

  return sub_ABB610();
}

uint64_t static PlaylistCovers.carouselItems(from:playlistTitle:size:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 24) = a1;
  return _swift_task_switch(sub_879A44, 0, 0);
}

uint64_t sub_879A44()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D280);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = v5;
  v7[3] = v2;
  v7[4] = v1;
  v7[5] = v4;
  v7[6] = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D288);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_879B80;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v6, v8, 0, 0, &unk_B32BA8, v7, v6);
}

uint64_t sub_879B80()
{

  return _swift_task_switch(sub_710670, 0, 0);
}

uint64_t sub_879C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 1728) = a5;
  *(v7 + 1720) = a4;
  *(v7 + 1712) = a7;
  *(v7 + 1704) = a6;
  *(v7 + 1696) = a3;
  *(v7 + 1688) = a2;
  *(v7 + 1680) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720);
  *(v7 + 1736) = swift_task_alloc();
  *(v7 + 1744) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D298);
  *(v7 + 1752) = v8;
  *(v7 + 1760) = *(v8 - 8);
  *(v7 + 1768) = swift_task_alloc();

  return _swift_task_switch(sub_879DC0, 0, 0);
}

uint64_t sub_879DC0()
{
  v1 = *(v0 + 1696);
  v2 = *(v1 + 16);
  *(v0 + 1776) = v2;
  if (v2)
  {
    v3 = (v0 + 1280);
    v36 = **(v0 + 1688);
    v4 = (v1 + 32);
    v5 = sub_AB9990();
    v6 = *(v5 - 8);
    v35 = *(v6 + 56);
    v34 = (v6 + 48);
    v33 = (v6 + 8);
    while (1)
    {
      v7 = *(v0 + 1744);
      v8 = *(v0 + 1728);
      v9 = *(v0 + 1720);
      v10 = *(v0 + 1712);
      v11 = *(v0 + 1704);
      v13 = v4[1];
      v12 = v4[2];
      v14 = *v4;
      *(v0 + 1328) = *(v4 + 6);
      *(v0 + 1296) = v13;
      *(v0 + 1312) = v12;
      *v3 = v14;
      v35(v7, 1, 1, v5);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      v17 = *(v0 + 1296);
      *(v15 + 32) = *v3;
      *(v15 + 48) = v17;
      *(v15 + 64) = *(v0 + 1312);
      *(v15 + 80) = *(v0 + 1328);
      *(v15 + 88) = v11;
      *(v15 + 96) = v10;
      *(v15 + 104) = v9;
      *(v15 + 112) = v8;
      sub_70B8A0(v0 + 1280, v0 + 1448);
      sub_70B8A0(v0 + 1280, v0 + 1504);

      v18 = swift_taskGroup_addPending();
      v19 = *(v0 + 1744);
      if (v18)
      {
        break;
      }

      sub_12E1C(v19, &qword_E1C720);

      sub_85C600(v0 + 1280);
LABEL_4:
      v4 = (v4 + 56);
      if (!--v2)
      {
        goto LABEL_14;
      }
    }

    v20 = *(v0 + 1736);
    sub_87B07C(v19, v20);
    v21 = (*v34)(v20, 1, v5);
    v22 = *(v0 + 1736);
    if (v21 == 1)
    {
      sub_12E1C(*(v0 + 1736), &qword_E1C720);
      if (*v16)
      {
LABEL_8:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = sub_AB98B0();
        v25 = v24;
        swift_unknownObjectRelease();
LABEL_11:
        v26 = swift_allocObject();
        *(v26 + 16) = &unk_B32E50;
        *(v26 + 24) = v15;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D280);
        v27 = v25 | v23;
        if (v25 | v23)
        {
          v27 = v0 + 1616;
          *(v0 + 1616) = 0;
          *(v0 + 1624) = 0;
          *(v0 + 1632) = v23;
          *(v0 + 1640) = v25;
        }

        v28 = *(v0 + 1744);
        *(v0 + 1648) = 1;
        *(v0 + 1656) = v27;
        *(v0 + 1664) = v36;
        swift_task_create();

        sub_85C600(v0 + 1280);
        sub_12E1C(v28, &qword_E1C720);
        goto LABEL_4;
      }
    }

    else
    {
      sub_AB9980();
      (*v33)(v22, v5);
      if (*v16)
      {
        goto LABEL_8;
      }
    }

    v23 = 0;
    v25 = 0;
    goto LABEL_11;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D280);
  sub_AB98F0();
  *(v0 + 1784) = _swiftEmptyDictionarySingleton;
  v29 = sub_87B018();
  v30 = swift_task_alloc();
  *(v0 + 1792) = v30;
  *v30 = v0;
  v30[1] = sub_87A1DC;
  v31 = *(v0 + 1752);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 1088, v31, v29);
}

uint64_t sub_87A1DC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[221];
    v4 = v2[220];
    v5 = v2[219];

    (*(v4 + 8))(v3, v5);

    v6 = UIScreen.Dimensions.size.getter;
  }

  else
  {
    v6 = sub_87A334;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_87A334()
{
  v1 = (v0 + 1088);
  if (*(v0 + 1096))
  {
    v2 = v0 + 424;
    v3 = (v0 + 960);
    v115 = *(v0 + 1784);
    v4 = *(v0 + 1136);
    *(v0 + 1248) = *(v0 + 1120);
    *(v0 + 1264) = v4;
    v5 = *(v0 + 1104);
    v109 = v0 + 1088;
    v110 = v0 + 1216;
    *(v0 + 1216) = *v1;
    *(v0 + 1232) = v5;
    v6 = *(v0 + 1224);
    v7 = *(v0 + 1232);
    v8 = *(v0 + 1240);
    v9 = *(v0 + 1248);
    v10 = *(v0 + 1256);
    v11 = *(v0 + 1264);
    v114 = *(v0 + 1272);
    *(v0 + 1392) = *(v0 + 1216);
    *(v0 + 1400) = v6;
    *(v0 + 1408) = v7;
    *(v0 + 1416) = v8;
    *(v0 + 1424) = v9;
    *(v0 + 1432) = v10;
    *(v0 + 1440) = v11;
    v12 = v6;
    v13 = v7;
    v112 = v8;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v17 = v114;
    v113 = v12;
    v108 = v13;
    v111 = v112;
    v18 = v14;
    v19 = (v0 + 1392);
    v107 = v18;
    v20 = v15;
    v21 = v16;
    PlaylistCovers.Cover.init(image:representation:)(v17, (v0 + 1392), v0 + 960);
    v22 = *(v0 + 1040);
    *(v0 + 896) = *(v0 + 1024);
    *(v0 + 912) = v22;
    v23 = *(v0 + 1072);
    *(v0 + 928) = *(v0 + 1056);
    *(v0 + 944) = v23;
    v24 = *(v0 + 976);
    *(v0 + 832) = *(v0 + 960);
    *(v0 + 848) = v24;
    v25 = *(v0 + 992);
    v26 = *(v0 + 1008);
    *(v0 + 864) = v25;
    *(v0 + 880) = v26;
    UIScreen.Dimensions.size.getter(*&v25);
    v27 = *(v0 + 896);
    v28 = *(v0 + 912);
    *(v0 + 352) = v27;
    *(v0 + 368) = v28;
    v29 = *(v0 + 928);
    v30 = *(v0 + 944);
    *(v0 + 384) = v29;
    *(v0 + 400) = v30;
    v31 = *(v0 + 832);
    v32 = *(v0 + 848);
    *(v0 + 288) = v31;
    *(v0 + 304) = v32;
    v33 = *(v0 + 864);
    v34 = *(v0 + 880);
    *(v0 + 320) = v33;
    *(v0 + 336) = v34;
    *(v0 + 424) = v31;
    *(v0 + 440) = v32;
    *(v0 + 456) = v33;
    *(v0 + 472) = v34;
    *(v0 + 488) = v27;
    *(v0 + 504) = v28;
    *(v0 + 520) = v29;
    *(v0 + 536) = v30;
    *(v0 + 552) = 0;
    *(v0 + 416) = 0;
    sub_85C360(v0 + 424, v0 + 560);
    sub_878EE4(v0 + 288);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 1672) = v115;
    v36 = sub_85A87C((v0 + 1392));
    v38 = *(v115 + 16);
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      LOBYTE(v12) = v37;
      v3 = (v0 + 1672);
      if (*(*(v0 + 1784) + 24) < v41)
      {
        sub_85B17C(v41, isUniquelyReferenced_nonNull_native);
        v36 = sub_85A87C(v19);
        if ((v12 & 1) != (v42 & 1))
        {

          return sub_ABB4C0();
        }

LABEL_24:
        if (v12)
        {
LABEL_25:
          v71 = *v3;
          v72 = *(*v3 + 56) + 136 * v36;
          *(v0 + 696) = *v72;
          v73 = *(v72 + 64);
          v75 = *(v72 + 16);
          v74 = *(v72 + 32);
          *(v0 + 744) = *(v72 + 48);
          *(v0 + 760) = v73;
          *(v0 + 712) = v75;
          *(v0 + 728) = v74;
          v77 = *(v72 + 96);
          v76 = *(v72 + 112);
          v78 = *(v72 + 80);
          *(v0 + 824) = *(v72 + 128);
          *(v0 + 792) = v77;
          *(v0 + 808) = v76;
          *(v0 + 776) = v78;
          *v72 = *v2;
          v79 = *(v2 + 16);
          v80 = *(v2 + 32);
          v81 = *(v2 + 64);
          *(v72 + 48) = *(v2 + 48);
          *(v72 + 64) = v81;
          *(v72 + 16) = v79;
          *(v72 + 32) = v80;
          v82 = *(v2 + 80);
          v83 = *(v2 + 96);
          v84 = *(v2 + 112);
          *(v72 + 128) = *(v2 + 128);
          *(v72 + 96) = v83;
          *(v72 + 112) = v84;
          *(v72 + 80) = v82;
          sub_878EE4(v0 + 696);

          sub_12E1C(v110, &qword_E1D2A8);
          goto LABEL_36;
        }

LABEL_34:
        v71 = *v3;
        *(*v3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
        v89 = v71[6] + 56 * v36;
        v90 = *v19;
        v91 = *(v19 + 1);
        v92 = *(v19 + 2);
        *(v89 + 48) = *(v19 + 6);
        *(v89 + 16) = v91;
        *(v89 + 32) = v92;
        *v89 = v90;
        v93 = v71[7] + 136 * v36;
        *v93 = *v2;
        v94 = *(v2 + 16);
        v95 = *(v2 + 32);
        v96 = *(v2 + 64);
        *(v93 + 48) = *(v2 + 48);
        *(v93 + 64) = v96;
        *(v93 + 16) = v94;
        *(v93 + 32) = v95;
        v97 = *(v2 + 80);
        v98 = *(v2 + 96);
        v99 = *(v2 + 112);
        *(v93 + 128) = *(v2 + 128);
        *(v93 + 96) = v98;
        *(v93 + 112) = v99;
        *(v93 + 80) = v97;

        v100 = sub_12E1C(v110, &qword_E1D2A8);
        v103 = v71[2];
        v40 = __OFADD__(v103, 1);
        v104 = v103 + 1;
        if (v40)
        {
          __break(1u);
          return dispatch thunk of AsyncIteratorProtocol.next()(v100, v101, v102);
        }

        v71[2] = v104;
LABEL_36:
        *(v0 + 1784) = v71;
        v105 = sub_87B018();
        v106 = swift_task_alloc();
        *(v0 + 1792) = v106;
        *v106 = v0;
        v106[1] = sub_87A1DC;
        v101 = *(v0 + 1752);
        v100 = v109;
        v102 = v105;

        return dispatch thunk of AsyncIteratorProtocol.next()(v100, v101, v102);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }
    }

    v87 = v21;
    v88 = v36;
    sub_85C3BC();
    v36 = v88;
    v21 = v87;
    if (v12)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v44 = *(v0 + 1776);
  (*(*(v0 + 1760) + 8))(*(v0 + 1768), *(v0 + 1752));
  v45 = *(v0 + 1104);
  *(v0 + 1152) = *v1;
  *(v0 + 1168) = v45;
  v46 = *(v0 + 1136);
  *(v0 + 1184) = *(v0 + 1120);
  *(v0 + 1200) = v46;
  v36 = sub_12E1C(v0 + 1152, &qword_E1D2A8);
  if (!v44)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v3 = 0;
  v19 = (v0 + 1336);
  v2 = *(v0 + 1784);
  v17 = (*(v0 + 1696) + 32);
  v21 = _swiftEmptyArrayStorage;
  v20 = &stru_20 + 24;
  do
  {
    v47 = *(v0 + 1776);
    v48 = &v17[56 * v3];
    v12 = v3;
    while (1)
    {
      if (v12 >= v47)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v49 = *v48;
      v50 = *(v48 + 1);
      v51 = *(v48 + 2);
      *(v0 + 1384) = *(v48 + 6);
      *(v0 + 1352) = v50;
      *(v0 + 1368) = v51;
      *v19 = v49;
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_31;
      }

      if (*(v2 + 16))
      {
        break;
      }

LABEL_11:
      ++v12;
      v48 += 56;
      if (v3 == v47)
      {
        goto LABEL_27;
      }
    }

    sub_70B8A0(v0 + 1336, v0 + 1560);
    v52 = sub_85A87C((v0 + 1336));
    if ((v53 & 1) == 0)
    {
      v36 = sub_85C600(v0 + 1336);
      v47 = *(v0 + 1776);
      goto LABEL_11;
    }

    v54 = *(v2 + 56) + 136 * v52;
    *(v0 + 16) = *v54;
    v55 = *(v54 + 16);
    v56 = *(v54 + 32);
    v57 = *(v54 + 64);
    *(v0 + 64) = *(v54 + 48);
    *(v0 + 80) = v57;
    *(v0 + 32) = v55;
    *(v0 + 48) = v56;
    v58 = *(v54 + 80);
    v59 = *(v54 + 96);
    v60 = *(v54 + 112);
    *(v0 + 144) = *(v54 + 128);
    *(v0 + 112) = v59;
    *(v0 + 128) = v60;
    *(v0 + 96) = v58;
    sub_85C360(v0 + 16, v0 + 152);
    sub_85C600(v0 + 1336);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    if ((v36 & 1) == 0)
    {
      v36 = sub_8A5080(0, v21[2] + 1, 1, v21);
      v21 = v36;
    }

    v62 = v21[2];
    v61 = v21[3];
    if (v62 >= v61 >> 1)
    {
      v36 = sub_8A5080((v61 > 1), v62 + 1, 1, v21);
      v21 = v36;
    }

    v63 = *(v0 + 1776);
    v21[2] = v62 + 1;
    v64 = &v21[17 * v62];
    *(v64 + 2) = *(v0 + 16);
    v65 = *(v0 + 32);
    v66 = *(v0 + 48);
    v67 = *(v0 + 80);
    *(v64 + 5) = *(v0 + 64);
    *(v64 + 6) = v67;
    *(v64 + 3) = v65;
    *(v64 + 4) = v66;
    v68 = *(v0 + 96);
    v69 = *(v0 + 112);
    v70 = *(v0 + 128);
    v64[20] = *(v0 + 144);
    *(v64 + 8) = v69;
    *(v64 + 9) = v70;
    *(v64 + 7) = v68;
  }

  while (v3 != v63);
LABEL_27:
  v85 = *(v0 + 1680);

  *v85 = v21;

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_87AA28(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v10 = *(v2 + 5);
  v9 = *(v2 + 6);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_17CF8;

  return sub_879C98(a1, a2, v6, v10, v9, v7, v8);
}

unint64_t sub_87AB04()
{
  result = qword_E1D290;
  if (!qword_E1D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D290);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore14PlaylistCoversO5CoverV14RepresentationVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_87ABBC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_87AC18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_87AC9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_87ACEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_87AD50(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_87ADA0(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3;
  *(v8 + 72) = a1;
  *(v8 + 80) = a6;
  return _swift_task_switch(sub_87ADC8, 0, 0);
}

uint64_t sub_87ADC8()
{
  v1 = *(v0 + 13);
  v2 = *(v0 + 14);
  v4 = v0[11];
  v3 = v0[12];
  v6 = *(v0 + 9);
  v5 = *(v0 + 10);
  v7 = *v5;
  v8 = *(v5 + 16);
  v9 = *(v5 + 32);
  *(v6 + 48) = *(v5 + 48);
  *(v6 + 16) = v8;
  *(v6 + 32) = v9;
  *v6 = v7;
  v10 = *(v5 + 8);
  v11 = *(v5 + 48);
  sub_87B1DC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_70B8A0(v5, (v0 + 2));
  v13 = [ObjCClassFromMetadata preferredFormat];
  v14 = static PlaylistCovers.playlistCoverImage(size:backgroundImage:textColor:title:graphicsFormat:)(v10, v11, v1, v2, v13, v4, v3);

  *(v6 + 56) = v14;
  v15 = *(v0 + 1);

  return v15();
}

uint64_t sub_87AED0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_87AF40(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[11];
  v7 = v1[12];
  v8 = *(v1 + 13);
  v9 = *(v1 + 14);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17BD0;

  return sub_87ADA0(a1, v6, v7, v4, v5, (v1 + 4), v8, v9);
}

unint64_t sub_87B018()
{
  result = qword_E1D2A0;
  if (!qword_E1D2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D2A0);
  }

  return result;
}

uint64_t sub_87B07C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_87B0EC()
{

  return swift_deallocObject();
}

uint64_t sub_87B124(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17BD0;

  return sub_E046C(a1, v4);
}

unint64_t sub_87B1DC()
{
  result = qword_E1D2B0;
  if (!qword_E1D2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E1D2B0);
  }

  return result;
}

uint64_t ProgressiveBlur.makeUIView(context:)(double a1, uint64_t a2, char a3)
{
  v5 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
  v6 = type metadata accessor for ProgressiveBlurView();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a1;
  v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a3;
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = 0x3FD3333333333333;
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = v5;
  v8 = v5;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = 1.0;
  v26.size.height = 1.0;
  if (CGRectIsEmpty(v26))
  {
    goto LABEL_5;
  }

  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v9 setScale:1.0];
  [v9 setPreferredRange:2];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v9 format:{0.0, 0.0, 1.0, 1.0}];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 32) = _Q0;
  *(v11 + 48) = a3;
  *(v11 + 56) = 0x3FD3333333333333;
  *(v11 + 64) = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_87C45C;
  *(v17 + 24) = v11;
  aBlock[4] = sub_57B84;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_224;
  v18 = _Block_copy(aBlock);
  v19 = v8;

  v20 = [v10 imageWithActions:v18];

  _Block_release(v18);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    if (v20)
    {
      v22 = [objc_opt_self() _effectWithVariableBlurRadius:v20 imageMask:a1 scale:1.0];

LABEL_6:
      v24.receiver = v7;
      v24.super_class = v6;
      v23 = objc_msgSendSuper2(&v24, "initWithEffect:", v22);

      return v23;
    }

LABEL_5:
    v22 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t ProgressiveBlurView.__allocating_init(blurRadius:edge:cutoff:interpolation:)(char a1, void *a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a3;
  v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a1;
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = a4;
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = a2;
  v10 = a2;
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = 1.0;
  v28.size.height = 1.0;
  if (CGRectIsEmpty(v28))
  {
    goto LABEL_5;
  }

  v11 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v11 setScale:1.0];
  [v11 setPreferredRange:2];
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v11 format:{0.0, 0.0, 1.0, 1.0}];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v13 + 32) = _Q0;
  *(v13 + 48) = a1;
  *(v13 + 56) = a4;
  *(v13 + 64) = v10;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_87C7B0;
  *(v19 + 24) = v13;
  aBlock[4] = sub_C3FB8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_14_1;
  v20 = _Block_copy(aBlock);
  v21 = v10;

  v22 = [v12 imageWithActions:v20];

  _Block_release(v20);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    if (v22)
    {
      v24 = [objc_opt_self() _effectWithVariableBlurRadius:v22 imageMask:a3 scale:1.0];

LABEL_6:
      v26.receiver = v9;
      v26.super_class = v4;
      v25 = objc_msgSendSuper2(&v26, "initWithEffect:", v24);

      return v25;
    }

LABEL_5:
    v24 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void ProgressiveBlur.updateUIView(_:context:)(uint64_t a1, double a2, uint64_t a3, char a4)
{
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius) = a2;
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge) = a4;
  ProgressiveBlurView.updateEffect()();
}

void sub_87B84C(uint64_t a1)
{
  v2 = *(v1 + 8);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius) = *v1;
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge) = v2;
  ProgressiveBlurView.updateEffect()();
}

uint64_t sub_87B890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_87C6E0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_87B8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_87C6E0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_87B958()
{
  sub_87C6E0();
  sub_AB65B0();
  __break(1u);
}

double sub_87B980(unsigned __int8 a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = a4();
    }

    else
    {
      v5 = a5();
    }
  }

  else if (a1)
  {
    v5 = a3();
  }

  else
  {
    v5 = a2();
  }

  v6 = v5;
  swift_beginAccess();
  return *v6;
}

uint64_t ProgressiveBlurView.init(blurRadius:edge:cutoff:interpolation:)(char a1, void *a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a3;
  v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a1;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = a4;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = a2;
  v8 = a2;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = 1.0;
  v26.size.height = 1.0;
  if (CGRectIsEmpty(v26))
  {
    goto LABEL_5;
  }

  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v9 setScale:1.0];
  [v9 setPreferredRange:2];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v9 format:{0.0, 0.0, 1.0, 1.0}];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 32) = _Q0;
  *(v11 + 48) = a1;
  *(v11 + 56) = a4;
  *(v11 + 64) = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_87C7B0;
  *(v17 + 24) = v11;
  aBlock[4] = sub_C3FB8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_25_1;
  v18 = _Block_copy(aBlock);
  v19 = v8;

  v20 = [v10 imageWithActions:v18];

  _Block_release(v18);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    if (v20)
    {
      v22 = [objc_opt_self() _effectWithVariableBlurRadius:v20 imageMask:a3 scale:1.0];

LABEL_6:
      v24.receiver = v4;
      v24.super_class = type metadata accessor for ProgressiveBlurView();
      v23 = objc_msgSendSuper2(&v24, "initWithEffect:", v22);

      return v23;
    }

LABEL_5:
    v22 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ProgressiveBlurView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ProgressiveBlurView();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  ProgressiveBlurView.updateEffect()();
}

Swift::Void __swiftcall ProgressiveBlurView.updateEffect()()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius];
  v10 = v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge];
  v11 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff];
  v12 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation];
  v21.origin.x = v2;
  v21.origin.y = v4;
  v21.size.width = v6;
  v21.size.height = v8;
  if (CGRectIsEmpty(v21))
  {
    goto LABEL_5;
  }

  v13 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v13 setScale:1.0];
  [v13 setPreferredRange:2];
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v13 format:{v2, v4, v6, v8}];
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v4;
  *(v15 + 32) = v6;
  *(v15 + 40) = v8;
  *(v15 + 48) = v10;
  *(v15 + 56) = v11;
  *(v15 + 64) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_87C7B0;
  *(v16 + 24) = v15;
  v20[4] = sub_C3FB8;
  v20[5] = v16;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_41A314;
  v20[3] = &block_descriptor_36_6;
  v17 = _Block_copy(v20);
  v12 = v12;

  v18 = [v14 imageWithActions:v17];

  _Block_release(v17);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    if (v18)
    {
      v19 = [objc_opt_self() _effectWithVariableBlurRadius:v18 imageMask:v9 scale:1.0];

LABEL_6:
      [v0 setEffect:v19];

      return;
    }

LABEL_5:

    v19 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void sub_87C0A8(void *a1, unsigned __int8 a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = [objc_allocWithZone(CAGradientLayer) init];
  [v16 setBounds:{a4, a5, a6, a7}];
  [v16 setStartPoint:{sub_87B980(a2, CGPoint.topCenter.unsafeMutableAddressor, CGPoint.centerLeft.unsafeMutableAddressor, CGPoint.centerRight.unsafeMutableAddressor, CGPoint.bottomCenter.unsafeMutableAddressor)}];
  [v16 setEndPoint:{sub_87B980(a2, CGPoint.bottomCenter.unsafeMutableAddressor, CGPoint.centerRight.unsafeMutableAddressor, CGPoint.centerLeft.unsafeMutableAddressor, CGPoint.topCenter.unsafeMutableAddressor)}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_AF85F0;
  v18 = objc_opt_self();
  v19 = [v18 whiteColor];
  v20 = [v19 colorWithAlphaComponent:a8];

  v21 = [v20 CGColor];
  _s3__C7CGColorCMa_1(0);
  v23 = v22;
  *(v17 + 56) = v22;
  *(v17 + 32) = v21;
  v24 = [v18 whiteColor];
  v25 = [v24 colorWithAlphaComponent:0.0];

  v26 = [v25 CGColor];
  *(v17 + 88) = v23;
  *(v17 + 64) = v26;
  isa = sub_AB9740().super.isa;

  [v16 setColors:isa];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_AF82B0;
  *(v28 + 32) = a3;
  sub_87C734();
  v29 = a3;
  v30 = sub_AB9740().super.isa;

  [v16 setInterpolations:v30];

  v31 = [a1 CGContext];
  [v16 renderInContext:v31];
}

uint64_t sub_87C424()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_224(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id ProgressiveBlurView.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect:a1];

  return v3;
}

id ProgressiveBlurView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressiveBlurView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_87C57C()
{
  result = qword_E1D2D8;
  if (!qword_E1D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D2D8);
  }

  return result;
}

unint64_t sub_87C5D4()
{
  result = qword_E1D2E0;
  if (!qword_E1D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D2E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProgressiveBlur(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ProgressiveBlur(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_87C6E0()
{
  result = qword_E1D310;
  if (!qword_E1D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D310);
  }

  return result;
}

unint64_t sub_87C734()
{
  result = qword_E1AD88;
  if (!qword_E1AD88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E1AD88);
  }

  return result;
}

id sub_87C97C(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() effectWithStyle:a2];
  *a3 = result;
  return result;
}

char *QRCodeOverlayViewController.init(qrCode:title:subtitle:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  *&v2[v4] = [objc_allocWithZone(UIVisualEffectView) init];
  v5 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *&v2[v6] = [objc_allocWithZone(CAShapeLayer) init];
  v7 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v8 = sub_AB9260();
  v9 = [objc_opt_self() _systemImageNamed:v8];

  v10 = [objc_allocWithZone(UIImageView) initWithImage:v9];
  *&v2[v7] = v10;
  v11 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *&v2[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (qword_E16B98 != -1)
  {
    swift_once();
  }

  v13 = [objc_opt_self() effectForBlurEffect:qword_E73C68];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *&v2[v15] = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] = 0;
  v16 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *&v2[v16] = [objc_allocWithZone(UIScrollView) init];
  v17 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *&v2[v17] = [objc_allocWithZone(UIView) init];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager] = 0;
  if (a1[4] == 76)
  {
    QRCode.with(errorCorrectionLevel:)(77, v38);
    v18 = v39;
    if (v39)
    {
      v19 = v40;
      v21 = v38[1];
      v20 = v38[2];
      v22 = v38[0];
    }

    else
    {
      v20 = a1[2];
      v18 = a1[3];
      v22 = *a1;
      v21 = a1[1];
      sub_880048(a1, v36);
      v19 = 76;
    }

    v25 = &v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    *v25 = v22;
    *(v25 + 1) = v21;
    *(v25 + 2) = v20;
    *(v25 + 3) = v18;
    *(v25 + 4) = v19;
  }

  else
  {
    v23 = &v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v24 = *(a1 + 1);
    *v23 = *a1;
    *(v23 + 1) = v24;
    *(v23 + 4) = a1[4];
    sub_880048(a1, v38);
  }

  v26 = type metadata accessor for QRCodeOverlayViewController();
  v37.receiver = v2;
  v37.super_class = v26;
  v27 = objc_msgSendSuper2(&v37, "initWithNibName:bundle:", 0, 0);
  v28 = *&v27[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel];
  v29 = v27;
  v30 = v28;
  v31 = sub_AB9260();

  [v30 setText:v31];

  v32 = *&v29[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel];
  v33 = sub_AB9260();

  [v32 setText:v33];

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_E19B00);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_AF4EC0;
  *(v34 + 32) = sub_AB5330();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_ABA080();
  swift_unknownObjectRelease();

  sub_880124(a1);

  return v29;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidLoad()()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == &dword_0 + 3)
  {
    v4 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] text];
    [v1 setTitle:v4];
  }

  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 clearColor];
  [v6 setBackgroundColor:v8];

  v9 = [v1 navigationItem];
  sub_13C80(0, &qword_E179F8);
  sub_13C80(0, &qword_E17A80);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44.value.super.super.isa = sub_ABA7D0();
  v44.is_nil = 0;
  isa = sub_AB9F90(UIBarButtonSystemItemDone, v44, v45).super.super.isa;
  [v9 setLeftBarButtonItem:{isa, 0, 0, 0, sub_8801B0, v10}];

  v12 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"dismissAnimated"];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  v41 = v12;
  [v13 addGestureRecognizer:v12];

  v15 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  v16 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
  v42 = &v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  v17 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 24];
  v18 = *&v16[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v16[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = v17;
  v19 = v17;
  v20 = v16;

  [*&v20[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v19];
  v40 = v15;
  [*&v1[v15] setAlpha:0.0];
  v39 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView] setContentMode:1];
  v21 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel];
  sub_13C80(0, &qword_E1C960);
  v23 = v22;
  v24 = sub_ABA550();
  [v23 setFont:v24];

  v25 = *&v1[v21];
  v26 = [v7 whiteColor];
  [v25 setTextColor:v26];

  [*&v1[v21] setTextAlignment:1];
  [*&v1[v21] setNumberOfLines:0];
  [*&v1[v21] setAlpha:0.0];
  [*&v1[v21] setAdjustsFontForContentSizeCategory:1];
  v27 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  v28 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 preferredFontForTextStyle:UIFontTextStyleBody];
  [v30 setFont:v31];

  [*&v1[v27] setTextAlignment:1];
  [*&v1[v27] setNumberOfLines:0];
  [*&v1[v27] setAlpha:0.0];
  [*&v1[v27] setAdjustsFontForContentSizeCategory:1];
  v32 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  v33 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer];
  v34 = [v7 blackColor];
  v35 = [v34 CGColor];

  [v33 setFillColor:v35];
  [*&v1[v32] setFillRule:kCAFillRuleNonZero];
  [*&v1[v32] setCompositingFilter:kCAFilterDestOut];
  if (*(v42 + 4) != 76)
  {
    v36 = [*&v1[v40] layer];
    [v36 addSublayer:*&v1[v32]];

    [*&v1[v40] addSubview:*&v1[v39]];
  }

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    [v37 addSubview:*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView]];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_87D454()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    QRCodeOverlayViewController.dismissAnimated()();
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v7 = type metadata accessor for QRCodeOverlayViewController();
  v46.receiver = v2;
  v46.super_class = v7;
  objc_msgSendSuper2(&v46, "viewIsAppearing:", a1);
  v8 = [objc_allocWithZone(UIView) init];
  v9 = [v2 traitCollection];
  [v9 userInterfaceIdiom];

  sub_ABA600();
  v10 = sub_ABA680();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  sub_ABA6A0();
  v11 = [v8 layer];
  [v11 setCornerCurve:kCACornerCurveContinuous];

  [v8 setClipsToBounds:1];
  [v8 setAlpha:0.0];
  v12 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  [v8 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView]];
  v13 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] = v8;
  v14 = v8;

  v15 = [v2 traitCollection];
  v16 = [v15 userInterfaceIdiom];

  if (v16 != &dword_0 + 3)
  {
    v33 = objc_opt_self();
    v34 = [v33 whiteColor];
    [v14 setBackgroundColor:v34];

    v35 = [*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView] contentView];
    v36 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
    [v35 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView]];

    v37 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
    [*&v2[v36] addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView]];
    [*&v2[v37] addSubview:v14];
    [*&v2[v37] addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel]];
    v38 = *&v2[v37];
    v39 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
    [v38 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView]];
    v40 = [*&v2[v39] contentView];
    [v40 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel]];

    v41 = *&v2[v12];
    v42 = [v33 blackColor];
    v43 = *&v41[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v41[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v42;
    v44 = v42;

    sub_87F828();
    v31 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView];
    v32 = [v33 blackColor];
    [v31 setTintColor:v32];
    goto LABEL_6;
  }

  v17 = *&v2[v12];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 labelColor];
  v21 = *&v19[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
  *&v19[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v20;
  v22 = v20;

  sub_87F828();
  v23 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView];
  v24 = [v18 labelColor];
  [v23 setTintColor:v24];

  v25 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_87DA74;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_119878;
  aBlock[3] = &block_descriptor_225;
  v26 = _Block_copy(aBlock);
  v27 = [v25 initWithDynamicProvider:v26];
  _Block_release(v26);

  [v14 setBackgroundColor:v27];

  v28 = [v2 view];
  if (v28)
  {
    v29 = v28;
    [v28 addSubview:v14];

    v30 = [v2 view];
    if (v30)
    {
      v31 = v30;
      v32 = *&v2[v12];
      [v31 addSubview:v32];
LABEL_6:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_87DA74(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != &dword_0 + 2)
  {
    v3 = &selRef_blackColor;
  }

  v4 = [v2 *v3];
  v5 = [v4 colorWithAlphaComponent:0.1];

  return v5;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v13, "viewDidAppear:", a1);
  v3 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager;
  if (*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager])
  {
LABEL_2:
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v12[4] = sub_8801D0;
    v12[5] = v5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1B5EB4;
    v12[3] = &block_descriptor_6_3;
    v6 = _Block_copy(v12);
    v7 = v1;

    [v4 animateWithDuration:v6 animations:0.25];
    _Block_release(v6);
    return;
  }

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 window];

    if (v10)
    {
      v11 = [v10 windowScene];

      if (v11)
      {
        type metadata accessor for BrightnessManager();
        swift_allocObject();
        *&v1[v3] = BrightnessManager.init(windowScene:)(v11);
      }
    }

    goto LABEL_2;
  }

  __break(1u);
}

void sub_87DD14(char *a1)
{
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel] setAlpha:1.0];
  v2 = *&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView];
  v3 = [a1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == &dword_0 + 3)
  {
    if (qword_E16BA0 != -1)
    {
      swift_once();
    }

    v5 = &qword_E73C70;
  }

  else
  {
    if (qword_E16B98 != -1)
    {
      swift_once();
    }

    v5 = &qword_E73C68;
  }

  [v2 setEffect:*v5];

  if (*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager])
  {

    BrightnessManager.increaseBrightnessIfNeeded()();
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v183.receiver = v0;
  v183.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v183, "viewDidLayoutSubviews");
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  v4 = [v1 view];
  v5 = v4;
  if (v3 != &dword_0 + 3)
  {
    if (!v4)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    [v4 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    if (qword_E16B58 != -1)
    {
      swift_once();
    }

    if (qword_E16B60 != -1)
    {
      swift_once();
    }

    v34 = *&qword_E73C30;
    v35 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
    v186 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v187 = v35;
    v188 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
    sub_880048(&v186, &v182);
    if (qword_E16B70 != -1)
    {
      swift_once();
    }

    v203.origin.x = v27;
    v203.origin.y = v29;
    v203.size.width = v31;
    v203.size.height = v33;
    CGRectGetWidth(v203);
    v204.origin.x = v27;
    v204.origin.y = v29;
    v204.size.width = v31;
    v204.size.height = v33;
    CGRectGetHeight(v204);
    v36 = [v1 traitCollection];
    [v36 displayScale];

    v37 = QRCode.dotAdjustedWidth(with:scale:)();
    sub_880124(&v186);
    v205.origin.x = v27;
    v205.origin.y = v29;
    v205.size.width = v31;
    v205.size.height = v33;
    Width = CGRectGetWidth(v205);
    v39 = [v1 view];
    if (!v39)
    {
      goto LABEL_44;
    }

    v40 = v39;
    [v39 safeAreaInsets];
    v42 = v41;

    v43 = [v1 view];
    if (!v43)
    {
LABEL_45:
      __break(1u);
      return;
    }

    v44 = v43;
    v181 = v37;
    v45 = v34 + v34 + v37;
    [v43 safeAreaInsets];

    v46 = UIEdgeInsetsInsetRect(v27, v29, v31, v33, v42, (Width - v45) * 0.5);
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v179 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] sizeThatFits:{v49, v51}];
    v54 = v53;
    v55 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel] sizeThatFits:{v50, v52}];
    if (qword_E16B80 != -1)
    {
      v174 = v56;
      swift_once();
      v56 = v174;
    }

    v176 = v45 + *&qword_E73C50;
    v57 = v54 + v45 + *&qword_E73C50;
    if (qword_E16B88 != -1)
    {
      v175 = v56;
      swift_once();
      v56 = v175;
    }

    v180 = v54;
    v178 = *&qword_E73C58;
    v58 = v56 + v57 + *&qword_E73C58;
    if (qword_E16B90 != -1)
    {
      swift_once();
    }

    v59 = v58 + *&qword_E73C60 + *&qword_E73C60;
    v206.origin.x = v46;
    v206.origin.y = v48;
    v206.size.width = v50;
    v206.size.height = v52;
    v60 = CGRectGetWidth(v206);
    v61 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView] setFrame:{v46, v48, v50, v52}];
    [*&v1[v61] setContentSize:{v60, v59}];
    v207.origin.x = v46;
    v207.origin.y = v48;
    v207.size.width = v50;
    v207.size.height = v52;
    CGRectGetHeight(v207);
    v62 = *&v1[v61];
    v63 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView];
    v64 = v62;
    sub_ABA460();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;

    [v63 setFrame:{v66, v68, v70, v72}];
    v73 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView] bounds];
    v77 = v76;
    v78 = v74;
    v79 = v75;
    v80 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView;
    v81 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
    v177 = v82;
    if (v81)
    {
      v83 = *&v1[v73];
      v84 = v81;
      v85 = v83;
      sub_ABA460();
      v87 = v86;
      v89 = v88;
      v91 = v90;
      v93 = v92;

      [v84 setFrame:{v87, v89, v91, v93}];
      v94 = *&v1[v80];
      v95 = v79 - v176;
      v96 = v176 + v78;
      v97 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
      if (v94)
      {
        v98 = v97;
        [v94 bounds];
LABEL_31:
        v99 = v55;
        v100 = [v1 traitCollection];
        [v100 displayScale];

        sub_ABA470();
        [v98 setFrame:*&v181];

        v101 = *&v1[v179];
        v208.origin.x = v77;
        v208.origin.y = v96;
        v208.size.width = v177;
        v208.size.height = v95;
        CGRectGetMinY(v208);
        v102 = *&v1[v73];
        sub_ABA460();
        v104 = v103;
        v106 = v105;
        v108 = v107;
        v110 = v109;

        [v101 setFrame:{v104, v106, v108, v110}];
        v111 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
        v112 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView];
        v209.origin.x = v77;
        v209.origin.y = v180 + v178 + v96;
        v209.size.width = v177;
        v209.size.height = v95 - (v180 + v178);
        CGRectGetMinY(v209);
        v113 = *&v1[v73];
        sub_ABA460();
        v115 = v114;
        v117 = v116;
        v119 = v118;
        v121 = v120;

        [v112 setFrame:{v115, v117, v119, v121}];
        v122 = *&v1[v111];
        v24 = *&v1[v99];
        [v122 bounds];
        goto LABEL_32;
      }
    }

    else
    {
      v95 = v75 - v176;
      v96 = v176 + v74;
      v97 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
    }

    v98 = v97;
    goto LABEL_31;
  }

  if (!v4)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = [v4 safeAreaLayoutGuide];

  [v6 layoutFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (qword_E16B50 != -1)
  {
    swift_once();
  }

  if (qword_E16B68 != -1)
  {
    swift_once();
  }

  v15 = *&qword_E73C38;
  v16 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
  v186 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  v187 = v16;
  v188 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
  sub_880048(&v186, &v182);
  if (qword_E16B70 != -1)
  {
    swift_once();
  }

  v201.origin.x = v8;
  v201.origin.y = v10;
  v201.size.width = v12;
  v201.size.height = v14;
  CGRectGetWidth(v201);
  v202.origin.x = v8;
  v202.origin.y = v10;
  v202.size.width = v12;
  v202.size.height = v14;
  CGRectGetHeight(v202);
  v17 = [v1 traitCollection];
  [v17 displayScale];

  v18 = QRCode.dotAdjustedWidth(with:scale:)();
  sub_880124(&v186);
  v19 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  v20 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
  v21 = [v1 traitCollection];
  [v21 displayScale];

  sub_ABA470();
  [v20 setFrame:*&v18];

  v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
  if (v22)
  {
    v23 = *&v1[v19];
    v24 = v22;
    [v23 frame];
    NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

    NSDirectionalEdgeInsets.init(edge:length:)(v25, v15);
    CGRect.outset(by:for:)();
LABEL_32:
    [v24 setFrame:?];
  }

  v123 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView];
  v124 = [v1 view];
  if (!v124)
  {
    __break(1u);
    goto LABEL_42;
  }

  v125 = v124;
  [v124 bounds];
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;

  [v123 setFrame:{v127, v129, v131, v133}];
  v134 = &v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  if (*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32] != 76)
  {
    v135 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView] frame];
    v136 = CGRectGetWidth(v210) * 0.3;
    if (qword_E16B78 != -1)
    {
      swift_once();
    }

    v137 = *&qword_E73C48;
    if (*&qword_E73C48 < v136)
    {
      v136 = *&qword_E73C48;
    }

    v138 = *&v1[v135];
    sub_ABA460();
    v140 = v139;
    v142 = v141;
    v144 = v143;
    v146 = v145;

    v147 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView] setFrame:{v140, v142, v144, v146}];
    CGAffineTransformMakeScale(&v182, v136 / v137, v136 / v137);
    a = v182.a;
    b = v182.b;
    c = v182.c;
    d = v182.d;
    tx = v182.tx;
    ty = v182.ty;
    v154 = *(v134 + 1);
    v184[0] = *v134;
    v184[1] = v154;
    v185 = *(v134 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_B10840;
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v189.x = 12.0;
    v189.y = 15.0;
    *(inited + 32) = CGPointApplyAffineTransform(v189, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v190.x = 12.0;
    v190.y = 6.0;
    *(inited + 48) = CGPointApplyAffineTransform(v190, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v191.y = 6.0;
    v191.x = 36.0;
    *(inited + 64) = CGPointApplyAffineTransform(v191, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v192.y = 0.0;
    v192.x = 36.0;
    *(inited + 80) = CGPointApplyAffineTransform(v192, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v193.y = 0.0;
    v193.x = 85.0;
    *(inited + 96) = CGPointApplyAffineTransform(v193, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v194.x = 85.0;
    v194.y = 90.0;
    *(inited + 112) = CGPointApplyAffineTransform(v194, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v195.x = 36.0;
    v195.y = 90.0;
    *(inited + 128) = CGPointApplyAffineTransform(v195, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v196.x = 36.0;
    v196.y = 95.0;
    *(inited + 144) = CGPointApplyAffineTransform(v196, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v197.x = 0.0;
    v197.y = 95.0;
    *(inited + 160) = CGPointApplyAffineTransform(v197, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v198.x = 0.0;
    v198.y = 57.0;
    *(inited + 176) = CGPointApplyAffineTransform(v198, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v199.x = 12.0;
    v199.y = 57.0;
    *(inited + 192) = CGPointApplyAffineTransform(v199, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v200.x = 12.0;
    v200.y = 15.0;
    *(inited + 208) = CGPointApplyAffineTransform(v200, &v182);
    v156 = *&v1[v147];
    sub_880048(v184, &v182);
    [v156 frame];
    v158 = v157;
    v160 = v159;
    v162 = v161;
    v164 = v163;
    [*&v1[v135] bounds];
    v169 = QRCode.dotAlignedPath(with:in:imageBounds:)(inited, v158, v160, v162, v164, v165, v166, v167, v168);
    sub_880124(v184);
    swift_setDeallocating();
    v170 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer] setPath:v169];
    v171 = *&v1[v170];
    v172 = *&v1[v135];
    v173 = v171;
    [v172 bounds];
    [v173 setFrame:?];
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.dismissAnimated()()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v12 = sub_8801D8;
  v13 = v2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1B5EB4;
  v11 = &block_descriptor_12_2;
  v3 = _Block_copy(&v8);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v12 = sub_880218;
  v13 = v5;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1811AC;
  v11 = &block_descriptor_18_3;
  v6 = _Block_copy(&v8);
  v7 = v4;

  [v1 animateWithDuration:v3 animations:v6 completion:0.25];
  _Block_release(v6);
  _Block_release(v3);
}

id sub_87EFD8(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel) setAlpha:0.0];
  result = [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView) setEffect:0];
  if (*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager))
  {

    BrightnessManager.resetBrightnessToSystemDefault()();
  }

  return result;
}

char *sub_87F26C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = 0;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = 0;
  v10 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v11 = [objc_allocWithZone(UIImageView) init];
  v12 = UIView.forAutolayout.getter();

  *&v5[v10] = v12;
  v13 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *&v5[v13] = [objc_allocWithZone(CALayer) init];
  v14 = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v36.receiver = v5;
  v36.super_class = v14;
  v15 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v17 = *&v15[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView];
  v18 = v15;
  [v18 addSubview:v17];
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_AF93E0;
  v21 = [*&v15[v16] leadingAnchor];
  v22 = [v18 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v20 + 32) = v23;
  v24 = [*&v15[v16] trailingAnchor];
  v25 = [v18 trailingAnchor];

  v26 = [v24 constraintEqualToAnchor:v25];
  *(v20 + 40) = v26;
  v27 = [*&v15[v16] topAnchor];
  v28 = [v18 topAnchor];

  v29 = [v27 constraintEqualToAnchor:v28];
  *(v20 + 48) = v29;
  v30 = [*&v15[v16] bottomAnchor];
  v31 = [v18 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v20 + 56) = v32;
  sub_13C80(0, qword_E18600);
  isa = sub_AB9740().super.isa;

  [v19 activateConstraints:isa];

  sub_13C80(0, &unk_E1DF00);
  sub_ABA1A0();
  v35[3] = v14;
  v35[0] = v18;
  sub_ABA6E0();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v35);
  return v18;
}

Swift::Void __swiftcall QRCodeOverlayViewController.ContainerView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  sub_13C80(0, &qword_E1D398);
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  static CATransaction.performWithoutAnimation(_:)(sub_880230);
}

void sub_87F6F4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView);
  v2 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer);
  [v1 bounds];
  [v2 setFrame:?];
}

void sub_87F828()
{
  v1 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
  if (v1)
  {
    v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
    v3 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];
    v4 = kCAFilterSourceIn;
    v15 = v1;
    [v3 setCompositingFilter:v4];
    v5 = *&v0[v2];
    v6 = [v0 traitCollection];
    v7 = [v15 resolvedColorWithTraitCollection:v6];

    v8 = [v7 CGColor];
    [v5 setBackgroundColor:v8];

    v9 = [*&v0[v2] superlayer];
    if (v9)
    {
      v14 = v9;

      v10 = v14;
    }

    else
    {
      v12 = [*&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] layer];
      v13 = *&v0[v2];
      [v12 addSublayer:v13];

      v10 = v15;
    }
  }

  else
  {
    v11 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];

    [v11 removeFromSuperlayer];
  }
}

id sub_87FA54(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *QRCodeOverlayViewController.ImageViewRepresentable.makeUIView(context:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = sub_AB6240();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = a4;
  v13 = a4;

  [*&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v13];

  if ((a3 & 1) == 0)
  {
    sub_AB9F40();
    v14 = sub_AB6A40();
    sub_AB4A90();

    sub_AB6230();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v8 + 8))(v10, v7);
    a2 = v19[1];
  }

  if (a2)
  {
    sub_13C80(0, &qword_E1AD80);

    v15 = sub_ABA740();
    v16 = *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v15;
    v17 = v15;

    sub_87F828();
  }

  return v11;
}

void QRCodeOverlayViewController.ImageViewRepresentable.updateUIView(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = sub_AB6240();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image);
  *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = a5;
  v14 = a5;

  [*(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView) setImage:v14];

  if ((a4 & 1) == 0)
  {
    sub_AB9F40();
    v15 = sub_AB6A40();
    sub_AB4A90();

    sub_AB6230();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v10 + 8))(v12, v9);
    a3 = v19[1];
  }

  if (a3)
  {
    sub_13C80(0, &qword_E1AD80);

    v16 = sub_ABA740();
    v17 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor);
    *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = v16;
    v18 = v16;

    sub_87F828();
  }
}

uint64_t sub_87FF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8805EC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_87FFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8805EC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_880020()
{
  sub_8805EC();
  sub_AB65B0();
  __break(1u);
}

void sub_8800C8(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_880178()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_225(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_8801E0()
{

  return swift_deallocObject();
}

unint64_t sub_880244()
{
  result = qword_E1D3A0;
  if (!qword_E1D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D3A0);
  }

  return result;
}

void sub_8802B4()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v5 = sub_AB9260();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];
  *(v0 + v4) = v7;
  v8 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *(v0 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (qword_E16B98 != -1)
  {
    swift_once();
  }

  v10 = [objc_opt_self() effectForBlurEffect:qword_E73C68];
  v11 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];

  *(v0 + v9) = v11;
  v12 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *(v0 + v12) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) = 0;
  v13 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *(v0 + v13) = [objc_allocWithZone(UIScrollView) init];
  v14 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *(v0 + v14) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_880514()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = 0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = 0;
  v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v3 = [objc_allocWithZone(UIImageView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *(v1 + v5) = [objc_allocWithZone(CALayer) init];
  sub_ABAFD0();
  __break(1u);
}

unint64_t sub_8805EC()
{
  result = qword_E1D400;
  if (!qword_E1D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D400);
  }

  return result;
}

uint64_t Radiosity.ViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25[0] = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7640();
  v6 = v26[0];
  v7 = v3[5];
  v26[4] = v3[4];
  v26[5] = v7;
  v8 = v3[7];
  v26[6] = v3[6];
  v26[7] = v8;
  v9 = v3[1];
  v26[0] = *v3;
  v26[1] = v9;
  v10 = v3[3];
  v26[2] = v3[2];
  v26[3] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D408);
  *(a2 + *(v11 + 40)) = v6;
  v12 = (a2 + *(v11 + 36));
  v13 = v3[5];
  v12[4] = v3[4];
  v12[5] = v13;
  v14 = v3[7];
  v12[6] = v3[6];
  v12[7] = v14;
  v15 = v3[1];
  *v12 = *v3;
  v12[1] = v15;
  v16 = v3[3];
  v12[2] = v3[2];
  v12[3] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D410);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  v18 = swift_allocObject();
  v19 = v3[7];
  v18[7] = v3[6];
  v18[8] = v19;
  v18[9] = v3[8];
  v20 = v3[3];
  v18[3] = v3[2];
  v18[4] = v20;
  v21 = v3[5];
  v18[5] = v3[4];
  v18[6] = v21;
  v22 = v3[1];
  v18[1] = *v3;
  v18[2] = v22;
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D418) + 36));
  *v23 = sub_880810;
  v23[1] = v18;
  sub_880814(v26, v25);
  return sub_88084C(v3, v25);
}

uint64_t sub_880884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[7];
  v31 = v2[6];
  v32 = v5;
  v33 = v2[8];
  v6 = v2[3];
  v27 = v2[2];
  v28 = v6;
  v7 = v2[5];
  v29 = v2[4];
  v30 = v7;
  v8 = v2[1];
  v25 = *v2;
  v26 = v8;
  v24[0] = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7640();
  v9 = v34[0];
  v34[4] = v29;
  v34[5] = v30;
  v34[6] = v31;
  v34[7] = v32;
  v34[0] = v25;
  v34[1] = v26;
  v34[2] = v27;
  v34[3] = v28;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D408);
  *(a2 + *(v10 + 40)) = v9;
  v11 = (a2 + *(v10 + 36));
  v12 = v30;
  v11[4] = v29;
  v11[5] = v12;
  v13 = v32;
  v11[6] = v31;
  v11[7] = v13;
  v14 = v26;
  *v11 = v25;
  v11[1] = v14;
  v15 = v28;
  v11[2] = v27;
  v11[3] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D410);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = swift_allocObject();
  v18 = v32;
  v17[7] = v31;
  v17[8] = v18;
  v17[9] = v33;
  v19 = v28;
  v17[3] = v27;
  v17[4] = v19;
  v20 = v30;
  v17[5] = v29;
  v17[6] = v20;
  v21 = v26;
  v17[1] = v25;
  v17[2] = v21;
  v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D418) + 36));
  *v22 = sub_883DB4;
  v22[1] = v17;
  sub_880814(v34, v24);
  return sub_88084C(&v25, v24);
}

uint64_t sub_880ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_880B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_880BB4()
{
  swift_getWitnessTable();
  sub_AB65B0();
  __break(1u);
}

id sub_880C04(char a1)
{
  v2 = a1 & 1;
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  result = swift_beginAccess();
  if (v1[v3] != v2)
  {
    if (v1[v3])
    {
      [v1 addSubview:*&v1[qword_E1D438]];
      return [v1 addSubview:*&v1[qword_E1D440]];
    }

    else
    {
      [*&v1[qword_E1D438] removeFromSuperview];
      return [*&v1[qword_E1D440] removeFromSuperview];
    }
  }

  return result;
}

uint64_t Radiosity.UIView.isRadiosityEnabled.getter()
{
  v1 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

id Radiosity.UIView.isRadiosityEnabled.setter(char a1)
{
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_880C04(v4);
}

void (*Radiosity.UIView.isRadiosityEnabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_880DEC;
}

void sub_880DEC(uint64_t a1)
{
  v1 = *a1;
  Radiosity.UIView.isRadiosityEnabled.setter(*(*a1 + 32));

  free(v1);
}

void sub_880E2C(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 72);
  if (!v2)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
LABEL_6:
  sub_881610(v5);
  sub_881C88();
}

double Radiosity.UIView.specs.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_882D74(v8);
  sub_880814(v8, v7);
  v2 = v12;
  a1[4] = v11;
  a1[5] = v2;
  v3 = v14;
  a1[6] = v13;
  a1[7] = v3;
  v4 = v8[1];
  *a1 = v8[0];
  a1[1] = v4;
  result = *&v9;
  v6 = v10;
  a1[2] = v9;
  a1[3] = v6;
  return result;
}

uint64_t Radiosity.UIView.specs.setter(_OWORD *a1)
{
  sub_882F44(a1);

  return sub_883018(a1);
}

void (*Radiosity.UIView.specs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x320uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 792) = v1;
  v5 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = v5[4];
  v10 = v5[5];
  v11 = v5[7];
  v4[6] = v5[6];
  v4[7] = v11;
  v4[4] = v9;
  v4[5] = v10;
  v12 = v5[7];
  v14 = v5[4];
  v13 = v5[5];
  v4[30] = v5[6];
  v4[31] = v12;
  v4[28] = v14;
  v4[29] = v13;
  v15 = *v5;
  v16 = v5[1];
  v17 = v5[3];
  v4[26] = v5[2];
  v4[27] = v17;
  v4[24] = v15;
  v4[25] = v16;
  sub_880814(v4, (v4 + 32));
  return sub_881020;
}

void sub_881020(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 464);
  if (a2)
  {
    v2[12] = v2[28];
    v2[13] = v3;
    v4 = v2[31];
    v2[14] = v2[30];
    v2[15] = v4;
    v5 = v2[25];
    v2[8] = v2[24];
    v2[9] = v5;
    v6 = v2[27];
    v2[10] = v2[26];
    v2[11] = v6;
    sub_880814((v2 + 8), (v2 + 40));
    sub_882F44(v2 + 8);
    sub_883018((v2 + 8));
    v7 = v2[29];
    v2[36] = v2[28];
    v2[37] = v7;
    v8 = v2[31];
    v2[38] = v2[30];
    v2[39] = v8;
    v9 = v2[25];
    v2[32] = v2[24];
    v2[33] = v9;
    v10 = v2[27];
    v2[34] = v2[26];
    v2[35] = v10;
    v11 = (v2 + 32);
  }

  else
  {
    v2[20] = v2[28];
    v2[21] = v3;
    v12 = v2[31];
    v2[22] = v2[30];
    v2[23] = v12;
    v13 = v2[25];
    v2[16] = v2[24];
    v2[17] = v13;
    v14 = v2[27];
    v2[18] = v2[26];
    v2[19] = v14;
    sub_882F44(v2 + 16);
    v11 = (v2 + 16);
  }

  sub_883018(v11);

  free(v2);
}

__int128 *Radiosity.Specs.containerDetailHeaderArtwork.unsafeMutableAddressor()
{
  if (qword_E16BA8 != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.containerDetailHeaderArtwork;
}

id Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[direct field offset for Radiosity.UIView.content] = a1;
  v9 = &v4[direct field offset for Radiosity.UIView.specs];
  v10 = *(a3 + 80);
  v9[4] = *(a3 + 64);
  v9[5] = v10;
  v11 = *(a3 + 112);
  v9[6] = *(a3 + 96);
  v9[7] = v11;
  v12 = *(a3 + 16);
  *v9 = *a3;
  v9[1] = v12;
  v13 = *(a3 + 48);
  v9[2] = *(a3 + 32);
  v9[3] = v13;
  v4[direct field offset for Radiosity.UIView.isRadiosityEnabled] = a2;
  if (*(a3 + 72))
  {
    v14 = objc_allocWithZone(UIView);
    v15 = a1;
    sub_880814(a3, v31);
    v16 = [v14 init];
  }

  else
  {
    v17 = objc_allocWithZone(_UIPortalView);
    v18 = a1;
    sub_880814(a3, v31);
    v16 = [v17 initWithSourceView:v18];
  }

  v19 = v16;
  *&v4[qword_E1D438] = v16;
  v20 = objc_allocWithZone(_UIPortalView);
  v21 = a1;
  v22 = v19;
  v23 = [v20 initWithSourceView:v21];
  *&v4[qword_E1D440] = v23;
  v30.receiver = v4;
  v30.super_class = type metadata accessor for Radiosity.UIView();
  v24 = v23;
  v25 = objc_msgSendSuper2(&v30, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v25 addSubview:{v21, v30.receiver, v30.super_class}];
  if (a2)
  {
    [v25 addSubview:v22];
    [v25 addSubview:v24];
  }

  [v25 bounds];
  [v21 setFrame:?];
  [v21 setAutoresizingMask:18];

  sub_881610(0);
  sub_881C88();
  v26 = [v25 traitCollection];
  v27 = [v26 userInterfaceStyle];

  sub_88218C(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_E19B00);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_AF4EC0;
  *(v28 + 32) = sub_AB4F60();
  *(v28 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(swift_allocObject() + 16) = ObjectType;
  sub_ABA6F0();

  swift_unknownObjectRelease();

  sub_883018(a3);

  return v25;
}

double sub_8814F0(void *a1)
{
  v1 = a1;
  Radiosity.UIView.intrinsicContentSize.getter();
  v3 = v2;

  return v3;
}

Swift::Void __swiftcall Radiosity.UIView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for Radiosity.UIView();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  sub_881610(0);
  sub_881C88();
}

void sub_8815B4(void *a1)
{
  v1 = a1;
  Radiosity.UIView.layoutSubviews()();
}

void sub_8815FC(uint64_t a1)
{
  v2 = *(v1 + qword_E1D438);
  *(v1 + qword_E1D438) = a1;
}

void sub_881610(char a1)
{
  v2 = v1;
  if (a1)
  {
    [*&v1[qword_E1D438] removeFromSuperview];
    v3 = &v1[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    if (*(v3 + 9))
    {
      v4 = [objc_allocWithZone(UIView) init];
    }

    else
    {
      v4 = [objc_allocWithZone(_UIPortalView) initWithSourceView:*&v2[direct field offset for Radiosity.UIView.content]];
    }

    v5 = *&v2[qword_E1D438];
    *&v2[qword_E1D438] = v4;
    v6 = v4;

    v7 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
    swift_beginAccess();
    if (v2[v7] == 1)
    {
      [v2 addSubview:v6];
    }
  }

  v8 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v9 = *(v8 + 5);
  v52 = *(v8 + 4);
  v53 = v9;
  v10 = *(v8 + 7);
  v54 = *(v8 + 6);
  v55 = v10;
  v11 = *(v8 + 1);
  *&v50.a = *v8;
  *&v50.c = v11;
  v12 = *(v8 + 3);
  *&v50.tx = *(v8 + 2);
  v51 = v12;
  sub_880814(&v50, &v49);
  [v2 bounds];
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  v49 = v50;
  v59 = CGRectApplyAffineTransform(v58, &v49);
  v17 = v59.origin.x;
  v18 = v59.origin.y;
  v19 = v59.size.width;
  v20 = v59.size.height;
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MinX = CGRectGetMinX(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v46 = CGRectGetWidth(v60);
  v61.origin.x = v17;
  v61.origin.y = v18;
  v61.size.width = v19;
  v61.size.height = v20;
  v45 = CGRectGetWidth(v61);
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v21 = CGRectGetHeight(v62);
  v63.origin.x = v17;
  v63.origin.y = v18;
  v63.size.width = v19;
  v63.size.height = v20;
  v22 = CGRectGetHeight(v63);
  sub_883018(&v50);
  v23 = *&v2[qword_E1D438];
  [v2 bounds];
  [v23 setFrame:?];

  v24 = [*&v2[qword_E1D438] layer];
  v25 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v24 setShadowColor:*(v25 + 7)];

  v26 = [*&v2[qword_E1D438] layer];
  v27 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  LODWORD(v28) = *(v27 + 12);
  [v26 setShadowOpacity:v28];

  v29 = [*&v2[qword_E1D438] layer];
  v30 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v29 setShadowRadius:v30[8]];

  v31 = [*&v2[qword_E1D438] layer];
  v32 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v57 = *(v32 + 72);
  v33 = v57;
  if (v57)
  {
    v34 = &v2[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    v35 = v34[8];
    v36 = sub_883D78(&v57, &v49);
    v37 = v33(v36, MinX + (v46 - v45) * 0.5, v21 - v22, v19, v20, v35);
    v39 = v38;
    sub_88333C(&v57);
  }

  else
  {
    v37 = 0;
  }

  [v31 setShadowPath:v37];

  v40 = [*&v2[qword_E1D438] layer];
  v41 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v56 = *(v41 + 72);
  v42 = v56;
  if (v56)
  {
    v43 = *(&v56 + 1);
    sub_883D78(&v56, v48);
    v44 = sub_881B14(v42, v43, v2);
    sub_88333C(&v56);
  }

  else
  {
    v44 = 0;
  }

  [v40 setMask:v44];
}

id sub_881B14(uint64_t (*a1)(uint64_t, double, double, double, double, double), uint64_t a2, char *a3)
{
  v5 = [objc_allocWithZone(CAShapeLayer) init];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 blackColor];
  v9 = [v8 CGColor];

  [v7 setBackgroundColor:v9];
  [a3 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &a3[direct field offset for Radiosity.UIView.specs];
  v19 = swift_beginAccess();
  v20 = a1(v19, v11, v13, v15, v17, v18[8]);
  v22 = v21;

  [v7 setPath:v22];
  [v7 setFillRule:kCAFillRuleEvenOdd];

  return v7;
}

void sub_881C88()
{
  v1 = v0;
  v2 = &v0[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v44 = *(v2 + 4);
  v45 = v3;
  v4 = *(v2 + 7);
  v46 = *(v2 + 6);
  v47 = v4;
  v5 = *(v2 + 1);
  *&v42.a = *v2;
  *&v42.c = v5;
  v6 = *(v2 + 3);
  *&v42.tx = *(v2 + 2);
  v43 = v6;
  sub_880814(&v42, &rect[3]);
  [v1 bounds];
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  *&rect[3] = v42;
  v49 = CGRectApplyAffineTransform(v48, &rect[3]);
  v11 = v49.origin.x;
  rect[0] = *&v49.origin.x;
  rect[2] = *&v49.origin.y;
  v12 = v49.size.width;
  v13 = v49.size.height;
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  rect[1] = COERCE_ID(CGRectGetMinX(v49));
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v14 = CGRectGetWidth(v50);
  v51.origin.x = v11;
  *&v51.origin.y = rect[2];
  v51.size.width = v12;
  v51.size.height = v13;
  v15 = *&rect[1] + (v14 - CGRectGetWidth(v51)) * 0.5;
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v16 = CGRectGetHeight(v52);
  *&v53.origin.x = rect[0];
  *&v53.origin.y = rect[2];
  v53.size.width = v12;
  v53.size.height = v13;
  v17 = CGRectGetHeight(v53);
  sub_883018(&v42);
  v18 = *&v1[qword_E1D440];
  [v18 setFrame:{v15, v16 - v17, v12, v13}];
  v19 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v20 = *(v19 + 1);
  *&rect[3] = *v19;
  *&rect[5] = v20;
  *&rect[7] = *(v19 + 2);
  [v18 setTransform:&rect[3]];
  rect[2] = [v18 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_AF85F0;
  v22 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v23 = *(v22 + 13);

  v24 = [v1 traitCollection];
  v25 = [v24 userInterfaceStyle];

  v26 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v23(v25);
  isa = sub_AB9A80().super.super.isa;
  [v26 setValue:isa forKey:kCAFilterInputAmount];

  v28 = sub_883D2C();
  *(v21 + 56) = v28;
  *(v21 + 32) = v26;
  swift_beginAccess();
  v29 = kCAFilterGaussianBlur;
  v30 = objc_allocWithZone(CAFilter);

  v31 = [v30 initWithType:v29];
  v32 = sub_AB9A80().super.super.isa;
  [v31 setValue:v32 forKey:kCAFilterInputRadius];

  v33 = sub_AB9890().super.super.isa;
  [v31 setValue:v33 forKey:kCAFilterInputNormalizeEdges];

  *(v21 + 88) = v28;
  *(v21 + 64) = v31;
  v34 = sub_AB9740().super.isa;

  [rect[2] setFilters:v34];

  v35 = [v18 layer];
  v36 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v37 = *(v36 + 11);

  v38 = [v1 traitCollection];
  v39 = [v38 userInterfaceStyle];

  LODWORD(v16) = v37(v39);

  LODWORD(v40) = LODWORD(v16);
  [v35 setOpacity:v40];
}

void sub_88218C(uint64_t a1)
{
  sub_881C88();
  v3 = [*(v1 + qword_E1D438) layer];
  v4 = v3;
  if (a1 == 2)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = -2.0;
  }

  if (a1 == 2)
  {
    v6 = -2.0;
  }

  else
  {
    v6 = -1.0;
  }

  [v3 setZPosition:v5];

  v7 = [*(v1 + qword_E1D440) layer];
  [v7 setZPosition:v6];
}

id Radiosity.UIView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Radiosity.UIView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_8822FC(uint64_t a1)
{
  v2 = *(a1 + direct field offset for Radiosity.UIView.specs + 80);
  v6[4] = *(a1 + direct field offset for Radiosity.UIView.specs + 64);
  v6[5] = v2;
  v3 = *(a1 + direct field offset for Radiosity.UIView.specs + 112);
  v6[6] = *(a1 + direct field offset for Radiosity.UIView.specs + 96);
  v6[7] = v3;
  v4 = *(a1 + direct field offset for Radiosity.UIView.specs + 16);
  v6[0] = *(a1 + direct field offset for Radiosity.UIView.specs);
  v6[1] = v4;
  v5 = *(a1 + direct field offset for Radiosity.UIView.specs + 48);
  v6[2] = *(a1 + direct field offset for Radiosity.UIView.specs + 32);
  v6[3] = v5;
  sub_883018(v6);
}

__n128 Radiosity.Specs.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 Radiosity.Specs.transform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t Radiosity.Specs.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = v4;
  result = sub_307CC(v7);
  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  return result;
}

__n128 Radiosity.Specs.shadow.setter(uint64_t a1)
{
  sub_17654(*(v1 + 72));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  *(v1 + 80) = *(a1 + 32);
  return result;
}

uint64_t SyncedLyricsManager.Configuration.animationDuration.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Whitetail.Binding.configurationBlock.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Radiosity.Specs.radiosity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = *(v1 + 96);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

__n128 Radiosity.Specs.radiosity.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v4;
  *(v1 + 120) = *(a1 + 32);
  return result;
}

uint64_t View.radiosity(specs:)(__int128 *a1)
{
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  sub_AB7630();
  LOBYTE(v3) = v12[0];
  *(&v3 + 1) = *(&v12[0] + 1);
  sub_880814(a1, v12);
  sub_AB7310();
  v12[6] = v10;
  v12[7] = v11;
  v12[8] = v3;
  v12[2] = v6;
  v12[3] = v7;
  v12[4] = v8;
  v12[5] = v9;
  v12[0] = v4;
  v12[1] = v5;
  return sub_8832F0(v12);
}

double Radiosity.Specs.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[5];
  v19 = v2[4];
  v20 = v5;
  v6 = v2[7];
  v21 = v2[6];
  v22 = v6;
  v7 = v2[1];
  v15 = *v2;
  v16 = v7;
  v8 = v2[3];
  v17 = v2[2];
  v18 = v8;
  sub_880814(v2, &v14);
  a1(&v15);
  v9 = v20;
  a2[4] = v19;
  a2[5] = v9;
  v10 = v22;
  a2[6] = v21;
  a2[7] = v10;
  v11 = v16;
  *a2 = v15;
  a2[1] = v11;
  result = *&v17;
  v13 = v18;
  a2[2] = v17;
  a2[3] = v13;
  return result;
}

__n128 sub_882704()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.85, 0.85);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.containerDetailHeaderArtwork = v6;
  *algn_E73C90 = v5;
  qword_E73CA0 = *&tx;
  unk_E73CA8 = *&ty;
  dword_E73CB0 = 1050253722;
  qword_E73CB8 = v3;
  unk_E73CC0 = 0x402E000000000000;
  qword_E73CC8 = 0;
  unk_E73CD0 = 0;
  qword_E73CD8 = sub_882804;
  unk_E73CE0 = 0;
  qword_E73CE8 = sub_88282C;
  unk_E73CF0 = 0;
  qword_E73CF8 = 0x4040000000000000;
  return result;
}

float sub_882804(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0.42;
  }

  else
  {
    return flt_B33614[a1];
  }
}

double sub_88282C(unint64_t a1)
{
  if (a1 > 2)
  {
    return 1.8;
  }

  else
  {
    return dbl_B33620[a1];
  }
}

__n128 sub_882874()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.94, 0.94);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.nowPlaying = v6;
  *algn_E73D10 = v5;
  qword_E73D20 = *&tx;
  unk_E73D28 = *&ty;
  dword_E73D30 = 1053609165;
  qword_E73D38 = v3;
  unk_E73D40 = 0x402E000000000000;
  qword_E73D48 = 0;
  unk_E73D50 = 0;
  qword_E73D58 = variable initialization expression of VerticalToggleSlider._maxValue;
  unk_E73D60 = 0;
  qword_E73D68 = sub_882970;
  unk_E73D70 = 0;
  qword_E73D78 = 0x4049000000000000;
  return result;
}

__int128 *Radiosity.Specs.nowPlaying.unsafeMutableAddressor()
{
  if (qword_E16BB0 != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.nowPlaying;
}

uint64_t sub_8829EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_880814(a2, v4);
}

double Radiosity.Specs.pathShadow(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *(v4 + 48);
  v25 = *(v4 + 32);
  v26 = v7;
  v27 = *(v4 + 64);
  v8 = *(v4 + 16);
  v23 = *v4;
  v24 = v8;
  v9 = (v4 + 72);
  v10 = *(v4 + 72);
  v22 = *(v4 + 120);
  v11 = *(v4 + 80);
  v12 = *(v5 + 104);
  v20 = *(v5 + 88);
  v21 = v12;
  if (a3)
  {
    sub_880814(v5, v19);
  }

  else
  {
    v28 = *v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a1;
    sub_880814(v5, v19);
    sub_88333C(&v28);
    v10 = sub_883330;
  }

  v15 = v26;
  *(a4 + 32) = v25;
  *(a4 + 48) = v15;
  v16 = v24;
  *a4 = v23;
  *(a4 + 16) = v16;
  result = *&v20;
  v18 = v21;
  *(a4 + 88) = v20;
  *(a4 + 64) = v27;
  *(a4 + 72) = v10;
  *(a4 + 80) = v11;
  *(a4 + 104) = v18;
  *(a4 + 120) = v22;
  return result;
}

id sub_882B5C(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = objc_opt_self();
  v14 = [v13 bezierPathWithRoundedRect:a1 byRoundingCorners:a2 cornerRadii:{a3, a4, a5, a7, a7}];
  v15 = [v14 CGPath];

  v16 = [v13 bezierPathWithRoundedRect:a2 cornerRadius:{a3, a4, a5, a7}];
  sub_AB9EA0();
  v19 = [v13 bezierPathWithRoundedRect:UIEdgeInsetsInsetRect(a2 cornerRadius:{a3, a4, a5, v17, v18)}];
  CGPathCreateMutable();
  v20 = [v16 CGPath];
  sub_AB9FE0();

  v21 = [v19 CGPath];
  sub_AB9FE0();

  return v15;
}

_BYTE *sub_882D18(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result == 1)
  {
    result = a2(&v4);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

__n128 sub_882D74@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v4;
  v5 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v5;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  result = *(v3 + 32);
  v8 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v8;
  return result;
}

id sub_882DDC(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_AB5C50();
  v8 = type metadata accessor for Radiosity.UIView();
  (*(v5 + 16))(v7, v2, v4);
  v9 = sub_AB5C20();
  v10 = *(v3 + 36);
  LOBYTE(v3) = *(v2 + *(v3 + 40));
  v11 = *(v2 + v10 + 80);
  v18[4] = *(v2 + v10 + 64);
  v18[5] = v11;
  v12 = *(v2 + v10 + 112);
  v18[6] = *(v2 + v10 + 96);
  v18[7] = v12;
  v13 = *(v2 + v10 + 16);
  v18[0] = *(v2 + v10);
  v18[1] = v13;
  v14 = *(v2 + v10 + 48);
  v18[2] = *(v2 + v10 + 32);
  v18[3] = v14;
  sub_880814(v18, v17);
  v15 = objc_allocWithZone(v8);
  return Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(v9, v3, v18);
}

uint64_t sub_882F44(_OWORD *a1)
{
  v3 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v4 = v3[5];
  v17 = v3[4];
  v18 = v4;
  v5 = v3[7];
  v19 = v3[6];
  v20 = v5;
  v6 = v3[1];
  v14[0] = *v3;
  v14[1] = v6;
  v7 = v3[3];
  v15 = v3[2];
  v16 = v7;
  v21[0] = v14[0];
  v21[1] = v6;
  v21[2] = v15;
  v21[3] = v7;
  v21[4] = v17;
  v21[5] = v4;
  v21[6] = v19;
  v21[7] = v5;
  v8 = a1[3];
  v3[2] = a1[2];
  v3[3] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  v10 = a1[7];
  v3[6] = a1[6];
  v3[7] = v10;
  v11 = a1[5];
  v3[4] = a1[4];
  v3[5] = v11;
  sub_880814(v14, v13);
  sub_880814(a1, v13);
  sub_883018(v21);
  sub_880E2C(v14);
  return sub_883018(v14);
}

id sub_883074(void *a1, uint64_t a2)
{
  v5 = __chkstk_darwin(a1);
  (*(v7 + 16))(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, v5);
  sub_AB5C40();
  [a1 invalidateIntrinsicContentSize];
  v8 = (v2 + *(a2 + 36));
  v9 = v8[5];
  v15[4] = v8[4];
  v15[5] = v9;
  v10 = v8[7];
  v15[6] = v8[6];
  v15[7] = v10;
  v11 = v8[1];
  v15[0] = *v8;
  v15[1] = v11;
  v12 = v8[3];
  v15[2] = v8[2];
  v15[3] = v12;
  sub_880814(v15, v14);
  sub_882F44(v15);
  sub_883018(v15);
  return Radiosity.UIView.isRadiosityEnabled.setter(*(v2 + *(a2 + 40)));
}

void sub_883208(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceStyle];

  sub_88218C(v2);
}

uint64_t get_enum_tag_for_layout_string_11MusicCoreUI9RadiosityO5SpecsV6ShadowV8DrawModeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy144_8_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_8833DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_883424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_883500(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_883548(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_8835C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_883618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_88366C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_8836B0()
{
  result = qword_E1D4C8;
  if (!qword_E1D4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D418);
    sub_36A00(&qword_E1D4D0, &qword_E1D408);
    sub_36A00(&qword_E1D4D8, &qword_E1D4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D4C8);
  }

  return result;
}

uint64_t sub_883794()
{
  sub_AB5D50();
  sub_8837F8();
  return swift_getWitnessTable();
}

unint64_t sub_8837F8()
{
  result = qword_E1D4E8[0];
  if (!qword_E1D4E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_E1D4E8);
  }

  return result;
}

uint64_t sub_88384C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_8838D4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * (((v6 + 7) & 0xF8) - 127));
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_883A28(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 120) = 0;
          result = 0.0;
          *(v19 + 104) = 0u;
          *(v19 + 88) = 0u;
          *(v19 + 72) = 0u;
          *(v19 + 56) = 0u;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 56) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

uint64_t objectdestroyTm_24()
{
  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_883D2C()
{
  result = qword_E185F8;
  if (!qword_E185F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E185F8);
  }

  return result;
}

uint64_t sub_883DDC(uint64_t a1)
{
  v2 = sub_AB5790();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_AB5FB0();
}

uint64_t Reactions.StackView.Model.reaction.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

double sub_883F68@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_883FEC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t Reactions.StackView.Model.reaction.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t (*Reactions.StackView.Model.reaction.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t Reactions.StackView.Model.$reaction.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D580);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D578);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$reaction.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D580);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D578);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t Reactions.StackView.Model.count.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_8844CC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_884550()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t Reactions.StackView.Model.count.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t (*Reactions.StackView.Model.count.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t Reactions.StackView.Model.$count.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D598);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D590);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$count.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D598);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D590);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t Reactions.StackView.Model.userImage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_884A14@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_884A98(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_AB5520();
}

uint64_t Reactions.StackView.Model.userImage.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t (*Reactions.StackView.Model.userImage.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t Reactions.StackView.Model.$userImage.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5A8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$userImage.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5A8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD154;
}

void (*Reactions.StackView.Model.isReacting.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_AB5500();
  return sub_6BCE8C;
}

uint64_t Reactions.StackView.Model.$isReacting.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5B8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$isReacting.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5B8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t sub_885344()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t (*Reactions.StackView.Model.hasAnimatedBackground.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t Reactions.StackView.Model.$hasAnimatedBackground.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5B8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$hasAnimatedBackground.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5B8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t Reactions.StackView.Model.__allocating_init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140);
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = v24 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40);
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D578);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v24 - v13;
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DBB0);
  sub_AB54D0();
  (*(v12 + 32))(v15 + v16, v14, v11);
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E175C0);
  sub_AB54D0();
  (*(v8 + 32))(v15 + v17, v10, v25);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  sub_AB54D0();
  v19 = *(v5 + 32);
  v20 = v26;
  v19(v15 + v18, v7, v26);
  v21 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  sub_AB54D0();
  v19(v15 + v21, v7, v20);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v15 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v12 + 8))(v15 + v16, v11);
  v32 = v27;
  v33 = v28;
  sub_AB54D0();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  sub_AB54D0();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  sub_AB5520();
  *(v15 + v22) = v31;
  return v15;
}

uint64_t Reactions.StackView.Model.init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140);
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D578);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DBB0);
  sub_AB54D0();
  (*(v14 + 32))(v5 + v17, v16, v13);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E175C0);
  sub_AB54D0();
  (*(v10 + 32))(v5 + v18, v12, v9);
  v19 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  sub_AB54D0();
  v20 = *(v6 + 32);
  v21 = v26;
  v20(v5 + v19, v8, v26);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  sub_AB54D0();
  v20(v5 + v22, v8, v21);
  v23 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v5 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v14 + 8))(v5 + v17, v13);
  v32 = v27;
  v33 = v28;
  sub_AB54D0();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  sub_AB54D0();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  sub_AB5520();
  *(v5 + v23) = v31;
  return v5;
}

uint64_t Reactions.StackView.Model.deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D578);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D590);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);
  return v0;
}

uint64_t Reactions.StackView.Model.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D578);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D590);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_886214@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Reactions.StackView.Model(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

uint64_t property wrapper backing initializer of Reactions.StackView.model()
{
  type metadata accessor for Reactions.StackView.Model(0);
  sub_8899FC(&qword_E1D5C8, type metadata accessor for Reactions.StackView.Model);

  return sub_AB5B50();
}

uint64_t Reactions.StackView.model.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Reactions.StackView.$model.getter()
{
  type metadata accessor for Reactions.StackView.Model(0);
  sub_8899FC(&qword_E1D5C8, type metadata accessor for Reactions.StackView.Model);

  return sub_AB5B60();
}

double Reactions.StackView.specs.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 Reactions.StackView.init(model:specs:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  v5 = v4[6];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC60);
  swift_storeEnumTagMultiPayload();
  v6 = v4[7];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CC0);
  swift_storeEnumTagMultiPayload();
  v7 = v4[8];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A190);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Reactions.StackView.Model(0);
  sub_8899FC(&qword_E1D5C8, type metadata accessor for Reactions.StackView.Model);
  *a2 = sub_AB5B50();
  *(a2 + 8) = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v10;
  *(a2 + 48) = *(a1 + 32);
  return result;
}

uint64_t Reactions.StackView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v113 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5D0);
  __chkstk_darwin(v2 - 8);
  v99 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v100 = (&v90 - v5);
  v6 = type metadata accessor for Reactions.StackView(0);
  v103 = *(v6 - 8);
  __chkstk_darwin(v6);
  v104 = v7;
  v105 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5D8);
  v108 = *(v8 - 8);
  v109 = v8;
  __chkstk_darwin(v8);
  v107 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v106 = &v90 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E178B8);
  __chkstk_darwin(v12 - 8);
  v14 = &v90 - v13;
  v98 = sub_AB5C70();
  v15 = *(v98 - 8);
  __chkstk_darwin(v98);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_AB7AC0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v102 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v20;
  v22 = __chkstk_darwin(v21);
  v23 = *(v19 + 104);
  v112 = &v90 - v24;
  v23(v22);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v26 = v114;
  v27 = *(v1 + 16);
  if (v27 < v114)
  {
    v26 = *(v1 + 16);
  }

  v28 = __OFSUB__(v26, 1);
  v29 = v26 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    v97 = v1;
    v95 = *(v1 + 48);
    v30 = *(v1 + 24);
    v31 = *(v1 + 32);
    v32 = *(v1 + 40);
    KeyPath = v29;
    v92 = v17;
    v94 = v27;
    sub_7EF870(v17);
    v110 = v19;
    v93 = *(v15 + 16);
    v33 = v17;
    v34 = v98;
    v93(v14, v33, v98);
    v111 = v18;
    v91 = *(v15 + 56);
    v91(v14, 0, 1, v34);
    v35 = sub_ABA370();
    v36 = objc_opt_self();
    v37 = [v36 traitCollectionWithPreferredContentSizeCategory:v35];
    v38 = objc_opt_self();
    v39 = [v38 defaultMetrics];
    [v39 scaledValueForValue:v37 compatibleWithTraitCollection:v30];
    v41 = v40;

    v42 = v14;
    v43 = v14;
    v44 = v92;
    v93(v42, v92, v34);
    v45 = v110;
    v46 = v113;
    v91(v43, 0, 1, v34);
    v47 = v111;
    v48 = sub_ABA370();
    v49 = [v36 traitCollectionWithPreferredContentSizeCategory:v48];
    v50 = [v38 defaultMetrics];
    [v50 scaledValueForValue:v49 compatibleWithTraitCollection:v32];
    v52 = v51;

    (*(v15 + 8))(v44, v34);
    v53 = v94;
    *&v117 = v94;
    *(&v117 + 1) = v41;
    *&v118 = v31;
    *(&v118 + 1) = v52;
    LODWORD(v49) = v95;
    v119 = v95;
    *v46 = sub_AB62E0();
    *(v46 + 8) = v31 - v41;
    *(v46 + 16) = 0;
    v93 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5E0) + 44));
    if (v49)
    {
      v54 = KeyPath & ~(KeyPath >> 63);
    }

    else
    {
      v54 = v53;
    }

    v98 = v54;
    *&v114 = 0;
    *(&v114 + 1) = KeyPath & ~(KeyPath >> 63);
    KeyPath = swift_getKeyPath();
    v55 = v97;
    v56 = v105;
    sub_888958(v97, v105);
    v57 = v102;
    v58 = v112;
    (*(v45 + 16))(v102, v112, v47);
    v59 = (*(v103 + 80) + 49) & ~*(v103 + 80);
    v60 = (v104 + *(v45 + 80) + v59) & ~*(v45 + 80);
    v61 = swift_allocObject();
    v62 = v118;
    *(v61 + 16) = v117;
    *(v61 + 32) = v62;
    *(v61 + 48) = v119;
    sub_888C58(v56, v61 + v59);
    (*(v45 + 32))(v61 + v60, v57, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5F0);
    sub_888DA4();
    sub_888F08();
    v63 = v106;
    sub_AB78B0();
    v64 = sub_AB7A30();
    v65 = v100;
    *v100 = v64;
    *(v65 + 8) = v66;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D630);
    sub_887AB4(&v117, v55, v58, v65 + *(v67 + 44));
    v69 = v108;
    v68 = v109;
    v70 = *(v108 + 16);
    v71 = v107;
    v70(v107, v63, v109);
    v72 = v99;
    sub_15F84(v65, v99, &qword_E1D5D0);
    v73 = v93;
    *v93 = 0;
    *(v73 + 8) = 1;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D638);
    v70(v73 + *(v74 + 48), v71, v68);
    sub_15F84(v72, v73 + *(v74 + 64), &qword_E1D5D0);
    sub_12E1C(v65, &qword_E1D5D0);
    v75 = *(v69 + 8);
    v75(v63, v68);
    sub_12E1C(v72, &qword_E1D5D0);
    v75(v71, v68);
    result = v98 + 1;
    if (!__OFADD__(v98, 1))
    {
      Int.seconds.getter(result);
      sub_AB7A30();
      sub_AB5970();
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D640);
      v77 = v113;
      v78 = (v113 + *(v76 + 36));
      v79 = v115;
      *v78 = v114;
      v78[1] = v79;
      v78[2] = v116;
      v80 = sub_AB6AA0();
      sub_AB5690();
      v82 = v81;
      v84 = v83;
      v86 = v85;
      v88 = v87;
      v89 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D648) + 36);
      *v89 = v80;
      *(v89 + 8) = v82;
      *(v89 + 16) = v84;
      *(v89 + 24) = v86;
      *(v89 + 32) = v88;
      *(v89 + 40) = 0;
      return (*(v110 + 8))(v112, v111);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_886FC8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v5 = sub_AB5D80();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D920);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  *a3 = sub_AB7A30();
  a3[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D9C8);
  sub_887294(a1, v22, a3 + *(v17 + 44));
  sub_AB7BB0();
  sub_AB5D90();
  sub_AB7AA0();
  v18 = sub_8899FC(&qword_E1D968, &type metadata accessor for ScaleTransition);
  sub_AB5750();

  (*(v6 + 8))(v8, v5);
  (*(v10 + 16))(v12, v15, v9);
  v23 = v5;
  v24 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = sub_AB59E0();
  (*(v10 + 8))(v15, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5F0);
  *(a3 + *(result + 36)) = v19;
  return result;
}

uint64_t sub_887294@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v43 = a1;
  v44 = a2;
  v46 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D9D0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v45 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D930);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v41 = sub_AB7490();
  sub_AB7A30();
  sub_AB5970();
  v40 = v47[1];
  LODWORD(v39) = v48;
  v15 = v49;
  v38 = v50;
  v37 = v51;
  v36 = v52;
  v16 = sub_AB74B0();
  v17 = &v14[*(v10 + 44)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D938) + 36);
  v19 = enum case for BlendMode.destinationOut(_:);
  v20 = sub_AB7AC0();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v17 + v18, v19, v20);
  *v17 = v16;
  *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D940) + 56)) = 256;
  v22 = v40;
  *v14 = v41;
  *(v14 + 1) = v22;
  v14[16] = v39;
  *(v14 + 3) = v15;
  v14[32] = v38;
  v23 = v36;
  *(v14 + 5) = v37;
  *(v14 + 6) = v23;
  v41 = sub_AB7490();
  sub_AB7A30();
  sub_AB5970();
  v24 = v53;
  LOBYTE(v15) = v54;
  v25 = v55;
  LOBYTE(v19) = v56;
  v40 = v57;
  v39 = v58;
  sub_8876FC(v47);
  v26 = v47[0];
  v27 = &v8[*(v4 + 44)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D948);
  (*(v21 + 16))(v27 + *(v28 + 36), v44, v20);
  *v27 = v26;
  *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D950) + 56)) = 256;
  v29 = v42;
  *v8 = v41;
  *(v8 + 1) = v24;
  v8[16] = v15;
  *(v8 + 3) = v25;
  v8[32] = v19;
  v30 = v39;
  *(v8 + 5) = v40;
  *(v8 + 6) = v30;
  sub_15F84(v14, v29, &qword_E1D930);
  v31 = v45;
  sub_15F84(v8, v45, &qword_E1D9D0);
  v32 = v46;
  sub_15F84(v29, v46, &qword_E1D930);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D9D8);
  sub_15F84(v31, v32 + *(v33 + 48), &qword_E1D9D0);
  sub_12E1C(v8, &qword_E1D9D0);
  sub_12E1C(v14, &qword_E1D930);
  sub_12E1C(v31, &qword_E1D9D0);
  return sub_12E1C(v29, &qword_E1D930);
}

uint64_t sub_8876FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D970);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v22 = &v21 - v5;
  v6 = sub_AB63D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB5790();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Reactions.StackView(0);
  sub_7EFCF0(v13);
  sub_7EFCA0(v9);
  v14 = *(v4 + 56);
  v15 = v11;
  v16 = v22;
  (*(v15 + 32))(v22, v13, v10);
  (*(v7 + 32))(v16 + v14, v9, v6);
  v17 = (*(v15 + 88))(v16, v10);
  if (v17 == enum case for ColorScheme.light(_:))
  {
    if ((*(v7 + 88))(v16 + v14, v6) == enum case for ColorSchemeContrast.increased(_:))
    {
      v18 = [objc_opt_self() secondarySystemFillColor];
      v24 = sub_AB7510();
LABEL_7:
      *v23 = sub_AB5980();
      return (*(v15 + 8))(v16, v10);
    }
  }

  else if (v17 == enum case for ColorScheme.dark(_:) && (*(v7 + 88))(v16 + v14, v6) == enum case for ColorSchemeContrast.increased(_:))
  {
    LODWORD(v24) = sub_AB6740();
    goto LABEL_7;
  }

  if (*(*(v2 + 8) + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) == 1)
  {
    LODWORD(v24) = sub_AB6720();
  }

  else
  {
    v20 = [objc_opt_self() secondarySystemFillColor];
    v24 = sub_AB7510();
  }

  *v23 = sub_AB5980();
  return sub_12E1C(v16, &qword_E1D970);
}

uint64_t sub_887AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a2;
  v90 = a3;
  v84 = a1;
  v93 = a4;
  v80 = sub_AB5D80();
  v77 = *(v80 - 8);
  __chkstk_darwin(v80);
  v74 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D920);
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v75 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v70 - v9;
  v10 = sub_AB7540();
  v72 = *(v10 - 8);
  v73 = v10;
  __chkstk_darwin(v10);
  v71 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADB0);
  __chkstk_darwin(v12 - 8);
  v87 = &v70 - v13;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D928) - 8;
  __chkstk_darwin(v88);
  v92 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v70 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D930);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v94 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v70 - v22;
  v91 = sub_AB7490();
  v24 = *(a1 + 8);
  sub_AB7A30();
  sub_AB5970();
  v25 = v122;
  LODWORD(v86) = v123;
  v85 = v124;
  LODWORD(v83) = v125;
  v81 = v127;
  *&v82 = v126;
  v26 = sub_AB74B0();
  v27 = &v23[*(v19 + 44)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D938) + 36);
  v29 = enum case for BlendMode.destinationOut(_:);
  v30 = sub_AB7AC0();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v27 + v28, v29, v30);
  *v27 = v26;
  *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D940) + 56)) = 256;
  *v23 = v91;
  *(v23 + 1) = v25;
  v23[16] = v86;
  *(v23 + 3) = v85;
  v23[32] = v83;
  v32 = v81;
  *(v23 + 5) = v82;
  *(v23 + 6) = v32;
  v91 = v23;
  sub_8885FC(&v128);
  v85 = *(&v130 + 1);
  v86 = v130;
  LOBYTE(v27) = v131;
  v33 = sub_AB6BC0();
  v82 = v129;
  v83 = v128;
  v34 = v87;
  (*(*(v33 - 8) + 56))(v87, 1, 1, v33);
  v35 = sub_AB6C20();
  sub_12E1C(v34, &qword_E1ADB0);
  KeyPath = swift_getKeyPath();
  LOBYTE(v128) = v27;
  sub_AB7A30();
  v87 = v24;
  sub_AB5970();
  sub_8876FC(&v128);
  v37 = v128;
  v38 = &v17[*(v88 + 44)];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D948);
  (*(v31 + 16))(&v38[*(v39 + 36)], v90, v30);
  *v38 = v37;
  *&v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D950) + 56)] = 256;
  v40 = v82;
  *v17 = v83;
  *(v17 + 1) = v40;
  v41 = v85;
  *(v17 + 4) = v86;
  *(v17 + 5) = v41;
  v17[48] = v27;
  *(v17 + 7) = KeyPath;
  *(v17 + 8) = v35;
  v42 = v139;
  *(v17 + 72) = v138;
  *(v17 + 88) = v42;
  v43 = v17;
  *(v17 + 104) = v140;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v44 = v128;
  if (!v128)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v128 != 1)
  {

LABEL_5:
    sub_C32A0(&v128);
    goto LABEL_6;
  }

  v45 = v44;
  sub_AB7520();
  v47 = v71;
  v46 = v72;
  v48 = v73;
  (*(v72 + 104))(v71, enum case for Image.ResizingMode.stretch(_:), v73);
  v90 = sub_AB7590();

  (*(v46 + 8))(v47, v48);
  v49 = sub_AB7A30();
  v88 = v50;
  v89 = v49;
  sub_AB7480();
  v86 = sub_AB74C0();

  sub_AB7BB0();
  v51 = v74;
  sub_AB5D90();
  sub_AB7AA0();
  v52 = sub_8899FC(&qword_E1D968, &type metadata accessor for ScaleTransition);
  v53 = v76;
  v54 = v80;
  sub_AB5750();

  (*(v77 + 8))(v51, v54);
  v55 = v78;
  v56 = v79;
  (*(v78 + 16))(v75, v53, v79);
  *&v128 = v54;
  *(&v128 + 1) = v52;
  swift_getOpaqueTypeConformance2();
  v57 = sub_AB59E0();
  (*(v55 + 8))(v53, v56);
  sub_AB7A30();
  sub_AB5970();

  *(v121 + 8) = v105;
  v115 = v90;
  LOWORD(v116) = 257;
  *(&v116 + 1) = v89;
  *&v117 = v88;
  *(&v117 + 1) = v86;
  *&v118 = 0x3FE0000000000000;
  BYTE8(v118) = 0;
  v119 = 0uLL;
  LOBYTE(v120) = 2;
  *(&v120 + 1) = 0x3FF0000000000000;
  *&v121[0] = v57;
  *(&v121[1] + 8) = v106;
  *(&v121[2] + 8) = v107;
  UIScreen.Dimensions.size.getter(*&v107);
  v134 = v121[0];
  v135 = v121[1];
  v136 = v121[2];
  v137 = *&v121[3];
  v130 = v117;
  v131 = v118;
  v132 = v119;
  v133 = v120;
  v128 = v115;
  v129 = v116;
LABEL_6:
  v58 = v91;
  v59 = v94;
  sub_15F84(v91, v94, &qword_E1D930);
  v60 = v92;
  sub_15F84(v43, v92, &qword_E1D928);
  v101 = v134;
  v102 = v135;
  v103 = v136;
  v104 = v137;
  v97 = v130;
  v98 = v131;
  v99 = v132;
  v100 = v133;
  v95 = v128;
  v96 = v129;
  v61 = v59;
  v62 = v93;
  sub_15F84(v61, v93, &qword_E1D930);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D958);
  sub_15F84(v60, v62 + *(v63 + 48), &qword_E1D928);
  v64 = v62 + *(v63 + 64);
  v111 = v101;
  v112 = v102;
  v113 = v103;
  v114 = v104;
  v109 = v99;
  v110 = v100;
  v107 = v97;
  v108 = v98;
  v105 = v95;
  v106 = v96;
  sub_15F84(&v105, &v115, &qword_E1D960);
  sub_12E1C(v43, &qword_E1D928);
  sub_12E1C(v58, &qword_E1D930);
  v65 = v112;
  *(v64 + 96) = v111;
  *(v64 + 112) = v65;
  *(v64 + 128) = v113;
  *(v64 + 144) = v114;
  v66 = v108;
  *(v64 + 32) = v107;
  *(v64 + 48) = v66;
  v67 = v110;
  *(v64 + 64) = v109;
  *(v64 + 80) = v67;
  v68 = v106;
  *v64 = v105;
  *(v64 + 16) = v68;
  v121[0] = v101;
  v121[1] = v102;
  v121[2] = v103;
  *&v121[3] = v104;
  v117 = v97;
  v118 = v98;
  v119 = v99;
  v120 = v100;
  v115 = v95;
  v116 = v96;
  sub_12E1C(&v115, &qword_E1D960);
  sub_12E1C(v60, &qword_E1D928);
  return sub_12E1C(v94, &qword_E1D930);
}

double sub_8885FC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_AB5D80();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (*(&v35 + 1))
  {
    sub_7ABE60();
    v9 = sub_AB6F20();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = sub_AB7AA0();
    sub_AB7BB0();
    sub_AB5D90();
    (*(v3 + 16))(v5, v8, v2);
    sub_8899FC(&qword_E1D968, &type metadata accessor for ScaleTransition);
    v17 = sub_AB59E0();
    (*(v3 + 8))(v8, v2);
    v28 = v9;
    v29 = v11;
    v30 = v13 & 1;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = 0;
  }

  else
  {
    v18 = sub_AB7550();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    if (v35 == 1)
    {
      v19 = sub_AB74D0();
    }

    else
    {
      v19 = sub_AB7430();
    }

    v20 = v19;
    v21 = sub_AB6C80();
    KeyPath = swift_getKeyPath();
    v28 = v18;
    v29 = v20;
    v30 = KeyPath;
    v31 = v21;
    v32 = 0;
    v33 = 0;
    v34 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D980);
  sub_889A44();
  sub_889B28();
  sub_AB6610();
  result = *&v35;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  *a1 = v35;
  *(a1 + 16) = v24;
  *(a1 + 32) = v25;
  *(a1 + 48) = v26;
  return result;
}

uint64_t Reactions.StackView.Specs.init(maxItemCount:platterLength:stackSpacing:fontSize:sizingMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  *(a3 + 32) = a2 & 1;
  return result;
}

uint64_t sub_888958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8889BC()
{
  v1 = type metadata accessor for Reactions.StackView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 49) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = sub_AB7AC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v3;

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_AB5790();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_AB63D0();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  v12 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_AB5C70();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v3 + v15 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_888C58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_888CBC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for Reactions.StackView(0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_AB7AC0() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_886FC8(v1 + v4, v7, a1);
}

unint64_t sub_888DA4()
{
  result = qword_E1D5F8;
  if (!qword_E1D5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D5E8);
    sub_888E28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D5F8);
  }

  return result;
}

unint64_t sub_888E28()
{
  result = qword_E1D600;
  if (!qword_E1D600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D608);
    sub_888EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D600);
  }

  return result;
}

unint64_t sub_888EB4()
{
  result = qword_E1D610;
  if (!qword_E1D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D610);
  }

  return result;
}

unint64_t sub_888F08()
{
  result = qword_E1D618;
  if (!qword_E1D618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D5F0);
    sub_36A00(&qword_E1D620, &qword_E1D628);
    sub_36A00(&qword_E1C318, &qword_E1C320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D618);
  }

  return result;
}

unint64_t sub_88900C()
{
  result = qword_E1D650;
  if (!qword_E1D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D650);
  }

  return result;
}

uint64_t sub_8890A4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A9C0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E195F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19028);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_889248(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A9C0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E195F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19028);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void sub_8893D8()
{
  sub_8894E8();
  if (v0 <= 0x3F)
  {
    sub_88957C(319, &qword_E1AA38, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_88957C(319, &unk_E19668, &type metadata accessor for ColorSchemeContrast);
      if (v2 <= 0x3F)
      {
        sub_88957C(319, &qword_E1A6A0, &type metadata accessor for DynamicTypeSize);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_8894E8()
{
  if (!qword_E1D6C0)
  {
    type metadata accessor for Reactions.StackView.Model(255);
    sub_8899FC(&qword_E1D5C8, type metadata accessor for Reactions.StackView.Model);
    v0 = sub_AB5B80();
    if (!v1)
    {
      atomic_store(v0, &qword_E1D6C0);
    }
  }
}

void sub_88957C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_AB57D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_8895D8()
{
  sub_3641C(319, &qword_E1D738, &qword_E1DBB0);
  if (v0 <= 0x3F)
  {
    sub_299798(319, &unk_E1D740);
    if (v1 <= 0x3F)
    {
      sub_3641C(319, &unk_E1BB80, &qword_E175C0);
      if (v2 <= 0x3F)
      {
        sub_299798(319, &qword_E1A2B8);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_889774(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_8897B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_889824()
{
  result = qword_E1D8F0;
  if (!qword_E1D8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D8F8);
    sub_8898B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D8F0);
  }

  return result;
}

unint64_t sub_8898B0()
{
  result = qword_E1D900;
  if (!qword_E1D900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D648);
    sub_88993C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D900);
  }

  return result;
}

unint64_t sub_88993C()
{
  result = qword_E1D908;
  if (!qword_E1D908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D640);
    sub_36A00(&qword_E1D910, &qword_E1D918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D908);
  }

  return result;
}

uint64_t sub_8899FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_889A44()
{
  result = qword_E1D988;
  if (!qword_E1D988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D978);
    sub_36A00(&qword_E1D990, &qword_E1D998);
    sub_36A00(&qword_E1C318, &qword_E1C320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D988);
  }

  return result;
}

unint64_t sub_889B28()
{
  result = qword_E1D9A0;
  if (!qword_E1D9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D980);
    sub_889BE0();
    sub_36A00(&unk_E1ACF0, &qword_E19188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D9A0);
  }

  return result;
}

unint64_t sub_889BE0()
{
  result = qword_E1D9A8;
  if (!qword_E1D9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D9B0);
    sub_36A00(&qword_E1D9B8, &qword_E1D9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D9A8);
  }

  return result;
}

id sub_889D80(uint64_t a1, uint64_t a2)
{
  sub_88E068(a1, v16);
  v5 = v17;
  if (v17)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_ABB3A0();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for SliderView.PanGestureRecognizer();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, "initWithTarget:action:", v11, a2);
  swift_unknownObjectRelease();
  sub_7A5268(a1);
  return v13;
}

uint64_t *SliderView.Specs.barHeight.unsafeMutableAddressor()
{
  if (qword_E16BB8 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.barHeight;
}

uint64_t *SliderView.Specs.expandedBarHeight.unsafeMutableAddressor()
{
  if (qword_E16BC0 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.expandedBarHeight;
}

CGFloat sub_88A0A0()
{
  CGAffineTransformMakeScale(&v1, 1.05, 1.05);
  result = v1.a;
  *static SliderView.Specs.expandedTransform = v1;
  return result;
}

char *SliderView.Specs.expandedTransform.unsafeMutableAddressor()
{
  if (qword_E16BC8 != -1)
  {
    swift_once();
  }

  return static SliderView.Specs.expandedTransform;
}

double static SliderView.Specs.expandedTransform.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_E16BC8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&static SliderView.Specs.expandedTransform[16];
  *a1 = *static SliderView.Specs.expandedTransform;
  a1[1] = v1;
  result = *&static SliderView.Specs.expandedTransform[32];
  a1[2] = *&static SliderView.Specs.expandedTransform[32];
  return result;
}

uint64_t *SliderView.Specs.stretchLimit.unsafeMutableAddressor()
{
  if (qword_E16BD0 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.stretchLimit;
}

uint64_t *SliderView.Specs.escapeHeight.unsafeMutableAddressor()
{
  if (qword_E16BD8 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.escapeHeight;
}

id sub_88A2D8()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_E73DE0 = result;
  return result;
}

double sub_88A32C()
{
  v0 = Int.seconds.getter(1);
  result = v0 / Int.seconds.getter(100);
  qword_E73DE8 = *&result;
  return result;
}

id SliderView.panRecognizer.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SliderView.PanGestureRecognizer()) initWithTarget:v0 action:"panGestureRecognized:"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void SliderView.panRecognizer.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = a1;
}

void (*SliderView.panRecognizer.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = SliderView.panRecognizer.getter();
  return sub_88A46C;
}

void sub_88A46C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = v2;
}

id SliderView.trackLayoutGuide.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.trackLayoutGuide.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SliderView.elapsedTrackColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.elapsedTrackColor.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
    swift_beginAccess();
  }

  [v6 setBackgroundColor:*v3];
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
  v9 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v8 setBackgroundColor:*(v1 + v9)];
}

void (*SliderView.elapsedTrackColor.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_88A77C;
}

void sub_88A77C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (*(v4 + v6))
    {
      v7 = (v3[9] + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
      swift_beginAccess();
      v8 = v3[9];
    }

    else
    {
      v8 = v3[9];
      v7 = (v8 + v3[10]);
    }

    [v5 setBackgroundColor:*v7];
    v9 = *(v8 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
    v10 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
    swift_beginAccess();
    [v9 setBackgroundColor:*(v8 + v10)];
  }

  free(v3);
}

id SliderView.remainingTrackColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.remainingTrackColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  }

  else
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  }

  v9 = (v1 + v8);
  swift_beginAccess();
  [v6 setBackgroundColor:*v9];
  [*(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack) setBackgroundColor:*(v1 + v3)];
}

void (*SliderView.remainingTrackColor.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_88AA58;
}

void sub_88AA58(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    v7 = &OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
    if (!*(v4 + v6))
    {
      v7 = &OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
    }

    v8 = *v7;
    v10 = v3[9];
    v9 = v3[10];
    swift_beginAccess();
    [v5 setBackgroundColor:*(v10 + v8)];
    [*(v10 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack) setBackgroundColor:*(v10 + v9)];
  }

  free(v3);
}

id SliderView.trackingColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.trackingColor.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if ((*(v1 + v7) & 1) == 0)
  {
    v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
    swift_beginAccess();
  }

  [v6 setBackgroundColor:*v3];
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
  v9 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v8 setBackgroundColor:*(v1 + v9)];
}

void (*SliderView.trackingColor.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_88AD30;
}

void sub_88AD30(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (*(v4 + v6) == 1)
    {
      v7 = v3[9];
      v8 = (v7 + v3[10]);
    }

    else
    {
      v8 = (v3[9] + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
      swift_beginAccess();
      v7 = v3[9];
    }

    [v5 setBackgroundColor:*v8];
    v9 = *(v7 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
    v10 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
    swift_beginAccess();
    [v9 setBackgroundColor:*(v7 + v10)];
  }

  free(v3);
}

double SliderView.value.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SliderView.isEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void SliderView.isEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = SliderView.panRecognizer.getter();
  [v4 setEnabled:*(v1 + v3)];
}

void (*SliderView.isEnabled.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_88AFB8;
}

void sub_88AFB8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = SliderView.panRecognizer.getter();
    [v6 setEnabled:*(v4 + v5)];
  }

  free(v3);
}

uint64_t SliderView.isTracking.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SliderView.transitionStartValue.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  swift_beginAccess();
  return *v1;
}

void SliderView.transitionStartValue.setter(uint64_t a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = *&a1;
  *(v5 + 8) = a2 & 1;
  if (v7)
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && v6 == *&a1)
  {
    return;
  }

  sub_88D820();
  if ((v5[1] & 1) == 0)
  {
    v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
    if (v8)
    {
      v9 = *v5;
      v10 = v8;
      [v2 bounds];
      [v10 setConstant:v9 * CGRectGetWidth(v11)];
    }
  }
}

void (*SliderView.transitionStartValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_88B234;
}

void sub_88B234(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 32);
  if (a2)
  {
    SliderView.transitionStartValue.setter(*&v4, v5);
    goto LABEL_3;
  }

  v6 = *(v3 + 40) + *(v3 + 48);
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = v4;
  *(v6 + 8) = v5;
  if (v8)
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (v7 == v4)
    {
      v9 = v5;
    }

    else
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v10 = *(v3 + 40) + *(v3 + 48);
  sub_88D820();
  if ((*(v10 + 8) & 1) == 0)
  {
    v11 = *(v3 + 40);
    v12 = *&v11[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
    if (v12)
    {
      v13 = *&v11[*(v3 + 48)];
      v14 = v12;
      [v11 bounds];
      [v14 setConstant:v13 * CGRectGetWidth(v16)];
    }
  }

LABEL_3:

  free(v3);
}

uint64_t sub_88B3F0(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_88B478(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id SliderView.semanticContentAttribute.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SliderView();
  return objc_msgSendSuper2(&v2, "semanticContentAttribute");
}

id SliderView.semanticContentAttribute.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SliderView();
  objc_msgSendSuper2(&v4, "setSemanticContentAttribute:", a1);
  return [*&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] setSemanticContentAttribute:{objc_msgSend(v1, "semanticContentAttribute")}];
}

uint64_t sub_88B6B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_ABA620();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v14 - 8);
  v16 = &v95 - v15;
  v17 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v18 = [objc_allocWithZone(UIStackView) init];
  v19 = UIView.forAutolayout.getter();

  *&v5[v17] = v19;
  v20 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  v21 = [objc_allocWithZone(UIView) init];
  v22 = UIView.forAutolayout.getter();

  *&v5[v20] = v22;
  v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack;
  v24 = [objc_allocWithZone(UIView) init];
  v25 = UIView.forAutolayout.getter();

  *&v5[v23] = v25;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint] = 0;
  v26 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator;
  *&v5[v26] = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  v27 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds];
  *v28 = 0u;
  v28[1] = 0u;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer] = 0;
  v29 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  *&v5[v29] = [objc_allocWithZone(UILayoutGuide) init];
  v30 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  v31 = objc_opt_self();
  *&v5[v30] = [v31 whiteColor];
  v32 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *&v5[v32] = [v31 systemFillColor];
  v33 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  if (qword_E16910 != -1)
  {
    swift_once();
  }

  v34 = static UIColor.MusicTint.normal;
  *&v5[v33] = static UIColor.MusicTint.normal;
  v35 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  *&v5[v35] = Int.seconds.getter(0);
  v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled] = 1;
  v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking] = 0;
  v36 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  *v36 = 0;
  v36[8] = 1;
  v37 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler];
  *v37 = 0;
  v37[1] = 0;
  v38 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler];
  *v38 = 0;
  v38[1] = 0;
  v39 = type metadata accessor for SliderView();
  v96.receiver = v5;
  v96.super_class = v39;
  v40 = v34;
  v41 = objc_msgSendSuper2(&v96, "initWithFrame:", a1, a2, a3, a4);
  v42 = SliderView.panRecognizer.getter();
  [v42 _setRequiresSystemGesturesToFail:0];

  v43 = *&v41[OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer];
  v44 = v41;
  [v44 addGestureRecognizer:v43];
  v45 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  [v44 addLayoutGuide:*&v44[v45]];
  [v44 setExclusiveTouch:1];
  v46 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v47 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  [*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] addArrangedSubview:*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack]];
  [*&v44[v46] addArrangedSubview:*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack]];
  [*&v44[v46] setAxis:0];
  v48 = qword_E16BB8;
  v49 = *&v44[v46];
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = *&static SliderView.Specs.barHeight;
  *v13 = *&static SliderView.Specs.barHeight * 0.5;
  *(v13 + 8) = 1;
  (*(v11 + 104))(v13, enum case for UIView.Corner.Radius.value(_:), v10);
  sub_AB9E10();
  sub_ABA640();
  v51 = sub_ABA680();
  (*(*(v51 - 8) + 56))(v16, 0, 1, v51);
  sub_ABA6A0();

  v52 = [*&v44[v46] layer];
  [v52 setMasksToBounds:1];

  [v44 addSubview:*&v44[v46]];
  v53 = [*&v44[v47] widthAnchor];
  v54 = [v53 constraintEqualToConstant:0.0];

  v55 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint;
  v56 = *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
  *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint] = v54;

  v57 = [*&v44[v46] heightAnchor];
  v58 = [v57 constraintEqualToConstant:v50];

  v59 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint;
  v60 = *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint] = v58;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70);
  result = swift_allocObject();
  *(result + 16) = xmmword_B283D0;
  v62 = *&v44[v55];
  if (v62)
  {
    v63 = result;
    *(result + 32) = v62;
    v64 = *&v44[v59];
    if (v64)
    {
      v95 = objc_opt_self();
      v63[5] = v64;
      v65 = *&v44[v46];
      v66 = v62;
      v67 = v64;
      v68 = [v65 leadingAnchor];
      v69 = [v44 leadingAnchor];

      v70 = [v68 constraintEqualToAnchor:v69];
      v63[6] = v70;
      v71 = [*&v44[v46] trailingAnchor];
      v72 = [v44 trailingAnchor];

      v73 = [v71 constraintEqualToAnchor:v72];
      v63[7] = v73;
      v74 = [*&v44[v46] topAnchor];
      v75 = [v44 topAnchor];

      v76 = [v74 constraintEqualToAnchor:v75];
      v63[8] = v76;
      v77 = [*&v44[v46] bottomAnchor];
      v78 = [v44 bottomAnchor];

      v79 = [v77 constraintEqualToAnchor:v78];
      v63[9] = v79;
      v80 = [*&v44[v46] centerYAnchor];
      v81 = [v44 centerYAnchor];

      v82 = [v80 constraintEqualToAnchor:v81];
      v63[10] = v82;
      v83 = [*&v44[v45] leadingAnchor];
      v84 = [v44 leadingAnchor];

      v85 = [v83 constraintEqualToAnchor:v84];
      v63[11] = v85;
      v86 = [*&v44[v45] trailingAnchor];
      v87 = [v44 trailingAnchor];

      v88 = [v86 constraintEqualToAnchor:v87];
      v63[12] = v88;
      v89 = [*&v44[v45] centerYAnchor];
      v90 = [v44 centerYAnchor];

      v91 = [v89 constraintEqualToAnchor:v90];
      v63[13] = v91;
      v92 = [*&v44[v45] heightAnchor];
      v93 = [v92 constraintEqualToConstant:v50];

      v63[14] = v93;
      sub_13C80(0, qword_E18600);
      isa = sub_AB9740().super.isa;

      [v95 activateConstraints:isa];

      return v44;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SliderView.layoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SliderView();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  [v0 bounds];
  v1 = &v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds];
  if (!CGRectEqualToRect(v11, *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds]))
  {
    v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (v2)
    {
      v3 = v2;
      [v0 bounds];
      Width = CGRectGetWidth(v12);
      v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
      swift_beginAccess();
      [v3 setConstant:Width * *&v0[v5]];

      [v0 bounds];
      *v1 = v6;
      *(v1 + 1) = v7;
      *(v1 + 2) = v8;
      *(v1 + 3) = v9;
    }

    else
    {
      __break(1u);
    }
  }
}

void SliderView.setValue(_:animated:)(char a1, double a2)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a2 <= 1.0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  if (v4 != *&v2[v5])
  {
    v6 = *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (v6)
    {
      v7 = v6;
      [v2 bounds];
      [v7 setConstant:v4 * CGRectGetWidth(v16)];

      sub_88D0D4();
      v8 = swift_allocObject();
      *(v8 + 16) = v2;
      *(v8 + 24) = v4;
      if (a1)
      {
        v9 = vabdd_f64(*&v2[v5], v4) * 0.25;
        if (v9 > 0.1)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0.1;
        }

        v11 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = sub_88DC30;
        *(v12 + 24) = v8;
        aBlock[4] = sub_70638;
        aBlock[5] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B5EB4;
        aBlock[3] = &block_descriptor_226;
        v13 = _Block_copy(aBlock);
        v14 = v2;

        [v11 animateWithDuration:4 delay:v13 options:0 animations:v10 completion:0.0];

        _Block_release(v13);
      }

      else
      {
        *&v2[v5] = v4;
        [v2 layoutIfNeeded];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_88C4AC(void *a1)
{
  v3 = [a1 state];
  if (v3 > 2)
  {
    if (v3 == (&dword_0 + 3))
    {
      v35 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v35] != 1)
      {
        return;
      }

      v36 = swift_allocObject();
      *(v36 + 16) = v1;
      v1[v35] = 0;
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = v1;
      *(v37 + 32) = sub_88E15C;
      *(v37 + 40) = v36;
      v27 = objc_opt_self();
      v55 = sub_88E4C8;
      v56 = v37;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v28 = &block_descriptor_66;
    }

    else
    {
      if (v3 != &dword_4)
      {
        return;
      }

      v24 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v24] != 1)
      {
        return;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = v1;
      v1[v24] = 0;
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = v1;
      *(v26 + 32) = sub_88E140;
      *(v26 + 40) = v25;
      v27 = objc_opt_self();
      v55 = sub_88E14C;
      v56 = v26;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v28 = &block_descriptor_56_3;
    }

    v53 = sub_1B5EB4;
    v54 = v28;
    v38 = _Block_copy(&aBlock);
    v39 = v1;

    [v27 _animateUsingSpringWithDuration:2 delay:v38 options:0 mass:1.0 stiffness:0.0 damping:2.0 initialVelocity:500.0 animations:40.0 completion:0.0];
    goto LABEL_39;
  }

  if (v3 == (&dword_0 + 1))
  {
    v29 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (!v29)
    {
      goto LABEL_54;
    }

    [v29 constant];
    v30 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
    *v30 = v31;
    v30[8] = 0;
    v32 = swift_allocObject();
    *(v32 + 16) = v1;
    v33 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (v1[v33] == 1)
    {
      v34 = v1;

      return;
    }

    v1[v33] = 1;
    v40 = swift_allocObject();
    *(v40 + 16) = 1;
    *(v40 + 24) = v1;
    *(v40 + 32) = sub_88E17C;
    *(v40 + 40) = v32;
    v41 = objc_opt_self();
    v55 = sub_88E4C8;
    v56 = v40;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_1B5EB4;
    v54 = &block_descriptor_76_2;
    v38 = _Block_copy(&aBlock);
    v42 = v1;

    [v41 _animateUsingSpringWithDuration:2 delay:v38 options:0 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:288.0 animations:26.5 completion:0.0];
LABEL_39:

    _Block_release(v38);
    return;
  }

  if (v3 != (&dword_0 + 2))
  {
    return;
  }

  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (v1[v4] != 1 || (v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth + 8] & 1) != 0)
  {
    return;
  }

  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
  [a1 translationInView:v1];
  v7 = v6;
  v9 = fabs(v8);
  if (qword_E16BD8 != -1)
  {
    v50 = v9;
    swift_once();
    v9 = v50;
  }

  if (v9 >= *&static SliderView.Specs.escapeHeight)
  {
    v43 = SliderView.panRecognizer.getter();
    [v43 setState:4];

    return;
  }

  v10 = [v1 effectiveUserInterfaceLayoutDirection];
  v11 = -v7;
  if (v10 != &dword_0 + 1)
  {
    v11 = v7;
  }

  v12 = v5 + v11;
  [v1 bounds];
  Width = CGRectGetWidth(v58);
  if (Width >= v12)
  {
    Width = v12;
  }

  if (Width < 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = Width;
  }

  v15 = v1;
  [v1 bounds];
  v16 = v14 / CGRectGetWidth(v59);
  if (v16 < 0.0)
  {
    v16 = 0.0;
  }

  if (v16 <= 1.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  v57 = 14;
  v18 = sub_7C40E0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v18) & 1) == 0)
  {
    v23 = 0;
    v19 = v15;
    goto LABEL_43;
  }

  v19 = v1;
  v20 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  swift_beginAccess();
  if ((v20[1] & 1) == 0)
  {
    v21 = *v20;
    if (qword_E16BE8 != -1)
    {
      swift_once();
    }

    v22 = v21 + *&qword_E73DE8;
    if (v21 - *&qword_E73DE8 <= v21 + *&qword_E73DE8)
    {
      if (v21 - *&qword_E73DE8 <= v17)
      {
        v23 = v17 <= v22;
        if (v17 <= v22)
        {
          v17 = v21;
        }

        goto LABEL_43;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

LABEL_27:
  v23 = 0;
LABEL_43:
  v44 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  if (v17 != *&v19[v44])
  {
    v45 = v17 == 1.0;
    if (v17 == 0.0)
    {
      v45 = 1;
    }

    if (v45 || v23)
    {
      [*&v19[OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator] impactOccurred];
    }
  }

  SliderView.setValue(_:animated:)(0, v17);
  v46 = v15;
  v47 = &v15[OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler];
  swift_beginAccess();
  v48 = *v47;
  if (*v47)
  {
    v49 = *&v46[v44];

    v48(1, v49);
    sub_17654(v48);
  }
}

uint64_t sub_88CBC0(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler);
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {

    v3(v4);
    return sub_17654(v3);
  }

  return result;
}

uint64_t sub_88CC34(uint64_t a1, char a2)
{
  v4 = (a1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler);
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
    swift_beginAccess();
    v8 = *(a1 + v7);

    v6(a2 & 1, v8);
    return sub_17654(v6);
  }

  return result;
}

void sub_88CD54(char a1, _BYTE *a2, void (*a3)(id))
{
  v6 = sub_ABA620();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  if ((a1 & 1) == 0)
  {
    if (v13)
    {
      v17 = qword_E16BB8;
      v15 = v13;
      if (v17 != -1)
      {
        swift_once();
      }

      v16 = &static SliderView.Specs.barHeight;
      goto LABEL_10;
    }

LABEL_21:
    __break(1u);
    return;
  }

  if (!v13)
  {
    __break(1u);
    goto LABEL_21;
  }

  v14 = qword_E16BC0;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = &static SliderView.Specs.expandedBarHeight;
LABEL_10:
  v18 = *v16;
  [v15 setConstant:*v16];

  *v9 = v18 * 0.5;
  *(v9 + 8) = 1;
  (*(v7 + 104))(v9, enum case for UIView.Corner.Radius.value(_:), v6);
  sub_AB9E10();
  sub_ABA640();
  v19 = sub_ABA680();
  (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  sub_ABA6A0();
  v20 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark];
  if (v20)
  {
    v21 = 0.0;
    if (a1)
    {
      v21 = 1.0;
    }

    v20 = [v20 setAlpha:v21];
  }

  if (a3)
  {
    a3(v20);
  }

  v22 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack];
  v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (a2[v23] == 1)
  {
    v24 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  }

  else
  {
    v24 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  }

  v25 = &a2[v24];
  swift_beginAccess();
  [v22 setBackgroundColor:*v25];
  v26 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack];
  v27 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v26 setBackgroundColor:*&a2[v27]];
  sub_88D0D4();
  [a2 layoutIfNeeded];
}

void sub_88D0D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint);
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v1;
  [v2 constant];
  v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint);
  if (!v5)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v6 = v4;
  v7 = v4 * 0.5;
  [v5 constant];
  v9 = v8;
  [*(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView) frame];
  Width = CGRectGetWidth(v24);
  v11 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v6 * 0.5 startAngle:v6 * 0.5 endAngle:v6 * 0.5 clockwise:{1.57079633, 4.71238898}];
  v12 = v11;
  v13 = Width - v7;
  if (v9 <= Width - v7)
  {
    [v11 addLineToPoint:{v9, 0.0}];
    [v12 addLineToPoint:{v9, v6}];
  }

  else if (v9 >= Width)
  {
    [v11 addLineToPoint:{Width - v7, 0.0}];
    [v12 addArcWithCenter:1 radius:Width - v7 startAngle:v6 * 0.5 endAngle:v6 * 0.5 clockwise:{4.71238898, 1.57079633}];
  }

  else
  {
    v14 = v7 - (Width - v9);
    v15 = 1.57079633 - acos(v14 / v7);
    v16 = sqrt(v7 * v7 - v14 * v14);
    v17 = v16 + v16;
    [v12 addLineToPoint:{v13, 0.0}];
    [v12 addArcWithCenter:1 radius:v13 startAngle:v7 endAngle:v7 clockwise:{4.71238898, (v15 + 4.71238898)}];
    [v12 currentPoint];
    v19 = v18;
    [v12 currentPoint];
    [v12 addLineToPoint:{v19, v17 + v20}];
    [v12 addArcWithCenter:1 radius:v13 startAngle:v7 endAngle:v7 clockwise:{(1.57079633 - v15), 1.57079633}];
  }

  [v12 closePath];
  v21 = [v3 layer];
  v22 = [v12 CGPath];
  [v21 setShadowPath:v22];
}

Swift::Void __swiftcall SliderView.addGlowIfNeeded()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow;
  if (!*&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow])
  {
    v2 = [objc_allocWithZone(UIView) init];
    v3 = v0;
    v4 = UIView.forAutolayout.getter();

    v5 = [v4 layer];
    v6 = [objc_opt_self() whiteColor];
    v7 = [v6 CGColor];

    [v5 setShadowColor:v7];
    v8 = [v4 layer];
    [v8 setShadowOpacity:0.0];

    v9 = [v4 layer];
    [v9 setShadowOffset:{0.0, 0.0}];

    v10 = [v4 layer];
    [v10 setShadowRadius:4.0];

    v11 = *&v3[v1];
    *&v3[v1] = v4;
    v12 = v4;

    [v3 addSubview:v12];
    sub_88D0D4();
    sub_13C80(0, &qword_E1E050);
    if (qword_E16BE0 != -1)
    {
      swift_once();
    }

    v13 = qword_E73DE0;
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    v15 = v12;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v13, 0, sub_88DE68, v14, 0, 0, 0.65, 0.0);
  }
}

Swift::Void __swiftcall SliderView.removeGlowIfNeeded()()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow];
  if (v1)
  {
    sub_13C80(0, &qword_E1E050);
    v2 = qword_E16BE0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = qword_E73DE0;
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = v3;
    v8 = v0;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v4, 0, sub_88DEC8, v5, sub_88DEE8, v6, 0.65, 0.0);
  }
}

void sub_88D7BC(void *a1, float a2)
{
  v4 = [a1 layer];
  *&v3 = a2;
  [v4 setShadowOpacity:v3];
}

void sub_88D820()
{
  v1 = v0;
  v2 = sub_7C40E0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = &v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
    swift_beginAccess();
    v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark;
    v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark];
    if (v3[1])
    {
      [v5 removeFromSuperview];
      v6 = *&v1[v4];
      *&v1[v4] = 0;

      isa = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
      *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = 0;
    }

    else
    {
      if (v5)
      {
        return;
      }

      v8 = *v3;
      v9 = [objc_allocWithZone(UIView) init];
      v10 = UIView.forAutolayout.getter();

      v11 = [objc_opt_self() blackColor];
      [v10 setBackgroundColor:v11];

      v12 = [v10 layer];
      [v12 setCompositingFilter:kCAFilterDestOut];

      v13 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      v14 = 0.0;
      if (v1[v13])
      {
        v14 = 1.0;
      }

      [v10 setAlpha:v14];
      [v1 addSubview:v10];
      v15 = *&v1[v4];
      *&v1[v4] = v10;
      v16 = v10;

      v17 = [v16 leadingAnchor];
      v18 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView];
      v19 = [v18 leadingAnchor];
      [v1 bounds];
      v20 = [v17 constraintEqualToAnchor:v19 constant:v8 * CGRectGetWidth(v32)];

      v21 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint;
      v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
      *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_AF82E0;
      v24 = [v16 widthAnchor];
      v25 = [v24 constraintEqualToConstant:2.0];

      *(v23 + 32) = v25;
      v26 = [v16 heightAnchor];
      v27 = [v18 heightAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v23 + 40) = v28;
      v29 = *&v1[v21];
      if (!v29)
      {
        __break(1u);
        return;
      }

      v30 = objc_opt_self();
      *(v23 + 48) = v29;
      sub_13C80(0, qword_E18600);
      v31 = v29;
      isa = sub_AB9740().super.isa;

      [v30 activateConstraints:isa];
    }
  }
}