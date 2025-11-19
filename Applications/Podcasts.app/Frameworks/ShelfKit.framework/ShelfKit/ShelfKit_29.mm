uint64_t sub_30F124()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_30F168()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_30F1A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(a1, a1 + 16);
  *a2 = result;
  return result;
}

void *sub_30F1D4@<X0>(void *a1@<X8>)
{
  result = sub_30C4C4();
  *a1 = result;
  return result;
}

unint64_t sub_30F1FC()
{
  result = qword_501358;
  if (!qword_501358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_501200);
    sub_30F2B0(&qword_501160, type metadata accessor for TabMenu.Item);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501358);
  }

  return result;
}

uint64_t sub_30F2B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_30F338(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

size_t sub_30F4C4(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5013B0);
  __chkstk_darwin(v4 - 8);
  v70 = &v66 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5014C8);
  __chkstk_darwin(v72);
  v71 = &v66 - v6;
  v79 = type metadata accessor for TabMenu.Item(0);
  v7 = *(v79 - 8);
  __chkstk_darwin(v79);
  v69 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v82 = &v66 - v10;
  __chkstk_darwin(v11);
  v80 = &v66 - v12;
  __chkstk_darwin(v13);
  v75 = &v66 - v14;
  __chkstk_darwin(v15);
  v17 = &v66 - v16;
  __chkstk_darwin(v18);
  v81 = &v66 - v19;
  v20 = TabMenu.Group.items(for:)(*(v1 + 120), 1u);
  v21 = v20;
  v22 = *(a1 + 16);
  v73 = v7;
  v78 = v22;
  if (v22)
  {
    v23 = 0;
    v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v25 = *(v7 + 72);
    v77 = a1 + v24;
    v68 = v24;
    v74 = v20 + v24;
    v76 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_307518(v77 + v25 * v23, v81);
      v26 = v21[2];
      if (!v26)
      {
LABEL_3:
        sub_30F338(v81, type metadata accessor for TabMenu.Item);
        goto LABEL_4;
      }

      v27 = 0;
      v28 = *(v79 + 28);
      v29 = *(v81 + v28);
      v30 = v74;
      while (2)
      {
        if (v27 >= v21[2])
        {
          __break(1u);
LABEL_77:
          sub_30F338(v82, type metadata accessor for TabMenu.Item);
LABEL_78:
          v40 = v73;
          v41 = v2;
          goto LABEL_79;
        }

        v2 = v21;
        sub_307518(v30, v17);
        v31 = *&v17[v28];
        switch(v29)
        {
          case 1uLL:
            if (v31 == (&dword_0 + 1))
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 2uLL:
            if (v31 == (&dword_0 + 2))
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 3uLL:
            if (v31 == (&dword_0 + 3))
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 4uLL:
            if (v31 == &dword_4)
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 5uLL:
            if (v31 == (&dword_4 + 1))
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 6uLL:
            if (v31 == (&dword_4 + 2))
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 7uLL:
            if (v31 == (&dword_4 + 3))
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 8uLL:
            if (v31 == &dword_8)
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 9uLL:
            if (v31 != (&dword_8 + 1))
            {
              goto LABEL_61;
            }

            goto LABEL_65;
          case 0xAuLL:
            if (v31 == (&dword_8 + 2))
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 0xBuLL:
            if (v31 == (&dword_8 + 3))
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 0xCuLL:
            if (v31 == &dword_C)
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 0xDuLL:
            if (v31 == (&dword_C + 1))
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 0xEuLL:
            if (v31 == (&dword_C + 2))
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 0xFuLL:
            if (v31 == (&dword_C + 3))
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 0x10uLL:
            if (v31 == &dword_10)
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 0x11uLL:
            if (v31 == (&dword_10 + 1))
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 0x12uLL:
            if (v31 == (&dword_10 + 2))
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          default:
            if (v31 - 1 < 0x12)
            {
              goto LABEL_61;
            }

            if (v29)
            {
              if (v31)
              {
                v32 = v29[2] == *(v31 + 2) && v29[3] == *(v31 + 3);
                if (v32 || (sub_3EE804() & 1) != 0)
                {
                  v33 = v29[4] == *(v31 + 4) && v29[5] == *(v31 + 5);
                  if (v33 || (sub_3EE804()) && *(v29 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) == *(v31 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount))
                  {
                    v67 = *(v29 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount);
                    v34 = *(v31 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount);
                    sub_30F338(v17, type metadata accessor for TabMenu.Item);
                    v32 = v67 == v34;
                    v21 = v2;
                    if (v32)
                    {
                      goto LABEL_66;
                    }

                    goto LABEL_62;
                  }
                }
              }

LABEL_61:
              sub_30F338(v17, type metadata accessor for TabMenu.Item);
              v21 = v2;
LABEL_62:
              ++v27;
              v30 += v25;
              if (v26 == v27)
              {
                goto LABEL_3;
              }

              continue;
            }

            if (v31)
            {
              goto LABEL_61;
            }

LABEL_65:
            sub_30F338(v17, type metadata accessor for TabMenu.Item);
            v21 = v2;
LABEL_66:
            sub_300FB0(v81, v75);
            v35 = v76;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v83 = v35;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_41D74(0, v35[2] + 1, 1);
              v35 = v83;
            }

            v37 = v35;
            v39 = v35[2];
            v38 = v35[3];
            if (v39 >= v38 >> 1)
            {
              sub_41D74(v38 > 1, v39 + 1, 1);
              v37 = v83;
            }

            v37[2] = v39 + 1;
            v76 = v37;
            sub_300FB0(v75, v37 + v68 + v39 * v25);
LABEL_4:
            if (++v23 == v78)
            {
              goto LABEL_72;
            }

            break;
        }

        break;
      }
    }
  }

  v76 = _swiftEmptyArrayStorage;
LABEL_72:
  v77 = v21[2];
  if (v77)
  {
    v26 = 0;
    v40 = v73;
    v41 = v76;
    while (1)
    {
      v43 = v21[2];
      if (v26 == v43)
      {
        goto LABEL_75;
      }

      if (v26 >= v43)
      {
        goto LABEL_157;
      }

      v81 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v44 = *(v40 + 72);
      v45 = v71;
      v46 = *(v72 + 48);
      sub_307518(v21 + v81 + v44 * v26, &v71[v46]);
      sub_300FB0(&v45[v46], v80);
      v2 = v41;
      v47 = *(v41 + 16);
      if (v47)
      {
        v48 = 0;
        v49 = *(v79 + 28);
        v50 = *(v80 + v49);
        v51 = v2 + v81;
        v78 = v50 - 1;
        while (2)
        {
          if (v48 >= v2[2])
          {
            __break(1u);
LABEL_157:
            __break(1u);
            JUMPOUT(0x310078);
          }

          v52 = v82;
          sub_307518(v51, v82);
          v53 = *(v52 + v49);
          switch(v53)
          {
            case 1uLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == (&dword_0 + 1))
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            case 2uLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == (&dword_0 + 2))
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            case 3uLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == (&dword_0 + 3))
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            case 4uLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == &dword_4)
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            case 5uLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == (&dword_4 + 1))
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            case 6uLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == (&dword_4 + 2))
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            case 7uLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == (&dword_4 + 3))
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            case 8uLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == &dword_8)
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            case 9uLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == (&dword_8 + 1))
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            case 0xAuLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == (&dword_8 + 2))
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            case 0xBuLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == (&dword_8 + 3))
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            case 0xCuLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == &dword_C)
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            case 0xDuLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == (&dword_C + 1))
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            case 0xEuLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == (&dword_C + 2))
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            case 0xFuLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == (&dword_C + 3))
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            case 0x10uLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == &dword_10)
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            case 0x11uLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == (&dword_10 + 1))
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            case 0x12uLL:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
              if (v50 == (&dword_10 + 2))
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            default:
              if (v78 < 0x12)
              {
                goto LABEL_85;
              }

              if (v53)
              {
                if (v50)
                {
                  v54 = v53[2] == *(v50 + 2) && v53[3] == *(v50 + 3);
                  if (v54 || (sub_3EE804() & 1) != 0)
                  {
                    v55 = v53[4] == *(v50 + 4) && v53[5] == *(v50 + 5);
                    if (v55 || (sub_3EE804()) && *(v53 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) == *(v50 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount))
                    {
                      v76 = *(v53 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount);
                      v56 = v21;
                      v57 = *(v50 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount);
                      sub_30F338(v82, type metadata accessor for TabMenu.Item);
                      v32 = v76 == v57;
                      v21 = v56;
                      if (v32)
                      {
                        goto LABEL_78;
                      }

                      goto LABEL_86;
                    }
                  }
                }
              }

              else if (!v50)
              {
                goto LABEL_77;
              }

LABEL_85:
              sub_30F338(v82, type metadata accessor for TabMenu.Item);
LABEL_86:
              ++v48;
              v51 += v44;
              if (v47 == v48)
              {
                break;
              }

              continue;
          }

          break;
        }
      }

      v58 = v69;
      sub_307518(v80, v69);
      v41 = v2;
      v59 = v2[2];
      v60 = v59 >= v26 ? v26 : v2[2];
      v61 = v58;
      v62 = v70;
      sub_300FB0(v61, v70);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      if (!v63 || v59 >= v2[3] >> 1)
      {
        v41 = sub_E0888(v63, v59 + 1, 1, v2);
      }

      v40 = v73;
      v64 = v41 + v81 + v60 * v44;
      swift_arrayDestroy();
      v65 = *(v41 + 16);
      if (v44 < 0 || v44 >= (v65 - v60) * v44)
      {
        break;
      }

      if (v44)
      {
        swift_arrayInitWithTakeBackToFront();
        ++*(v41 + 16);
LABEL_153:
        sub_307518(v62, v64);
        goto LABEL_155;
      }

      *(v41 + 16) = v65 + 1;
LABEL_155:
      sub_FCF8(v62, &qword_5013B0);
LABEL_79:
      ++v26;
      sub_30F338(v80, type metadata accessor for TabMenu.Item);
      if (v26 == v77)
      {
        goto LABEL_75;
      }
    }

    swift_arrayInitWithTakeFrontToBack();
    ++*(v41 + 16);
    if (v44 <= 0)
    {
      goto LABEL_155;
    }

    goto LABEL_153;
  }

  v41 = v76;
LABEL_75:

  return v41;
}

uint64_t sub_31010C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_3E9A04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() supportsLocalLibrary];
  if ((result & 1) == 0)
  {
    sub_3E9904();

    v11 = sub_3E99F4();
    v12 = sub_3ED9F4();

    if (os_log_type_enabled(v11, v12))
    {
      v25[1] = a2;
      v25[2] = v3;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136315138;
      if (a1[4])
      {
        v15 = a1[3];
        v16 = a1[4];
      }

      else
      {
        v16 = 0xE800000000000000;
        v15 = 0x656C746974206F6ELL;
      }

      v17 = sub_2EDD0(v15, v16, &v26);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v11, v12, "Processing episode and podcasts states for page %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);

      (*(v7 + 8))(v9, v6);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v18 = a1[2];
    v19 = sub_310EA0(v18, sub_311154);
    sub_310CAC(v19);
    v20._rawValue = sub_3129C4(v19);
    rawValue = v20._rawValue;
    sub_3E8EB4(v20);
    sub_3130B4(rawValue, v19, sub_37D990);

    sub_3E8E94();

    v22 = sub_310EA0(v18, sub_311638);
    v23._rawValue = sub_312E58(v22);
    v24 = v23._rawValue;
    sub_3E8EA4(v23);
    sub_3130B4(v24, v22, sub_37D990);

    sub_3E8E84();

    sub_31071C(a1);
    return sub_310888(a1);
  }

  return result;
}

uint64_t sub_310440()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5015B8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5015C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  v10[1] = sub_311B5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5015C8);
  sub_886BC(&qword_5015D0, &qword_5015C8);
  if (sub_3ED894())
  {
    sub_3E8ED4();

    swift_getOpaqueTypeConformance2();
    v8 = sub_3E9F94();
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1BF8);
    sub_3E9E04();
    sub_886BC(&qword_5015D8, &qword_5015B8);
    v8 = sub_3E9F94();
    (*(v1 + 8))(v3, v0);
  }

  return v8;
}

uint64_t sub_31071C(uint64_t a1)
{
  v2 = sub_3E63E4();
  __chkstk_darwin(v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_313380(a1 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, v4, &type metadata accessor for InteractionContext.Page);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_3133E8(v4, &type metadata accessor for InteractionContext.Page);
  }

  v5 = *v4;
  v6 = v4[8];

  if ((v6 & 1) == 0)
  {
    v8 = *(a1 + OBJC_IVAR____TtC8ShelfKit4Page_mapiInLibrary);
    if (v8 != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5015F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3F5630;
      *(inited + 32) = v5;
      *(inited + 40) = v8 & 1;
      v10 = sub_629EC(inited);
      swift_setDeallocating();
      v11._rawValue = v10;
      sub_3E8EC4(v11);
    }
  }

  return result;
}

uint64_t sub_310888(uint64_t a1)
{
  v2 = sub_3E9A04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3E63E4();
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_313380(a1 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, v8, &type metadata accessor for InteractionContext.Page);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    return sub_3133E8(v8, &type metadata accessor for InteractionContext.Page);
  }

  v9 = *v8;
  v10 = v8[8];

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F60);
  result = sub_FCF8(&v8[*(v11 + 64)], &qword_4E9FD0);
  if ((v10 & 1) == 0 && *(a1 + OBJC_IVAR____TtC8ShelfKit4Page_mapiInLibrary) != 2)
  {
    sub_3E7974();
    sub_3E9904();

    sub_313448(&v34, v32);
    v13 = sub_3E99F4();
    v14 = sub_3ED9F4();

    sub_F3B84(&v34);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v15 = 136315394;
      v16 = *(a1 + 32);
      if (v16)
      {
        v17 = *(a1 + 24);
        v18 = v16;
      }

      else
      {
        v18 = 0xE800000000000000;
        v17 = 0x656C746974206F6ELL;
      }

      v19 = sub_2EDD0(v17, v18, &v31);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v32[0] = v34;
      v32[1] = v35;
      v33 = v36;
      sub_313448(&v34, v30);
      v20 = sub_3ED2B4();
      v22 = sub_2EDD0(v20, v21, &v31);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_0, v13, v14, "Processing podcast state for page %s -> %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    (*(v3 + 8))(v5, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5015E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_3F5630;
    *(inited + 32) = v9;
    v24 = inited + 32;
    v25 = v35;
    *(inited + 40) = v34;
    *(inited + 56) = v25;
    *(inited + 72) = v36;
    v26 = sub_62ACC(inited);
    swift_setDeallocating();
    sub_FCF8(v24, &qword_5015F0);
    v27._rawValue = v26;
    sub_3E8EA4(v27);
  }

  return result;
}

char *sub_310CAC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_3EE5A4();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v2)
  {
LABEL_15:
    sub_3E9304();
  }

  result = sub_41AD4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v5 = sub_3EE3F4();
        v6 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId;
        swift_beginAccess();
        v7 = *(v5 + v6);
        swift_unknownObjectRelease();
        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        if (v9 >= v8 >> 1)
        {
          sub_41AD4((v8 > 1), v9 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v9 + 1;
        _swiftEmptyArrayStorage[v9 + 4] = v7;
      }
    }

    else
    {
      v10 = (a1 + 32);
      do
      {
        v11 = *v10;
        v12 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId;
        swift_beginAccess();
        v13 = *(v11 + v12);
        v15 = _swiftEmptyArrayStorage[2];
        v14 = _swiftEmptyArrayStorage[3];
        if (v15 >= v14 >> 1)
        {
          sub_41AD4((v14 > 1), v15 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v15 + 1;
        _swiftEmptyArrayStorage[v15 + 4] = v13;
        ++v10;
        --v2;
      }

      while (v2);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_310EA0(unint64_t a1, uint64_t (*a2)(void *, __n128))
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v21 - v4);
  v26 = type metadata accessor for ModernShelf();
  v24 = *(v26 - 8);
  v6.n128_f64[0] = __chkstk_darwin(v26);
  v25 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_3EE5A4())
  {
    v9 = 0;
    v10 = a1 & 0xC000000000000001;
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    v12 = (v24 + 48);
    v13 = _swiftEmptyArrayStorage;
    v23 = a1;
    while (1)
    {
      if (v10)
      {
        v14 = sub_3EE3F4();
      }

      else
      {
        if (v9 >= *(v11 + 16))
        {
          goto LABEL_18;
        }

        v14 = *(a1 + 8 * v9 + 32);
      }

      v15 = v14;
      v16 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      Shelf.mapToModernShelf()(v5);

      if ((*v12)(v5, 1, v26) == 1)
      {
        sub_FCF8(v5, &unk_503DA0);
      }

      else
      {
        sub_F7928(v5, v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_E02B0(0, v13[2] + 1, 1, v13);
        }

        v18 = v13[2];
        v17 = v13[3];
        if (v18 >= v17 >> 1)
        {
          v13 = sub_E02B0(v17 > 1, v18 + 1, 1, v13);
        }

        v13[2] = v18 + 1;
        sub_F7928(v25, v13 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18);
        a1 = v23;
      }

      ++v9;
      if (v16 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_21:
  v19 = v22(v13, v6);

  return v19;
}

void *sub_311154(uint64_t a1)
{
  v39 = type metadata accessor for ModernShelf();
  __chkstk_darwin(v39);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v38 - v5;
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v11 = *(a1 + 16);
  v38 = v8;
  if (v11)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = *(v8 + 72);
    v14 = a1 + v12;
    v15 = _swiftEmptyArrayStorage;
    do
    {
      sub_313380(v14, v10, type metadata accessor for ModernShelf);
      v16 = v10[*(v39 + 24)];
      v17 = (v16 - 8) > 0x3C || ((1 << (v16 - 8)) & 0x11C000000000000FLL) == 0;
      if (v17 && (v16 - 1) >= 6)
      {
        sub_3133E8(v10, type metadata accessor for ModernShelf);
      }

      else
      {
        sub_F7928(v10, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41[0] = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_41CF0(0, v15[2] + 1, 1);
          v15 = v41[0];
        }

        v20 = v15[2];
        v19 = v15[3];
        if (v20 >= v19 >> 1)
        {
          sub_41CF0(v19 > 1, v20 + 1, 1);
          v15 = v41[0];
        }

        v15[2] = v20 + 1;
        sub_F7928(v3, v15 + v12 + v20 * v13);
      }

      v14 += v13;
      --v11;
    }

    while (v11);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v21 = v15[2];
  if (!v21)
  {

    v23 = _swiftEmptyArrayStorage;
LABEL_37:
    v42 = _swiftEmptyArrayStorage;
    v34 = v23[2];
    if (v34)
    {
      v35 = (v23 + 4);
      v36 = _swiftEmptyArrayStorage;
      do
      {
        sub_1F958(v35, v41);
        sub_1F958(v41, v40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
        type metadata accessor for LegacyEpisodeLockup();
        if (swift_dynamicCast())
        {
          v37 = sub_3E94A4();
          __swift_destroy_boxed_opaque_existential_1Tm(v41);
          if (v37)
          {
          }

          else
          {
            sub_3ED564();
            if (*(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v42 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_3ED5A4();
            }

            sub_3ED604();
            v36 = v42;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v41);
        }

        v35 += 40;
        --v34;
      }

      while (v34);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }

    return v36;
  }

  v39 = *(v39 + 28);
  v22 = v15 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v23 = _swiftEmptyArrayStorage;
  v24 = *(v38 + 72);
  while (1)
  {
    sub_313380(v22, v6, type metadata accessor for ModernShelf);
    v26 = *&v6[v39];

    result = sub_3133E8(v6, type metadata accessor for ModernShelf);
    v27 = *(v26 + 16);
    v28 = v23[2];
    v29 = v28 + v27;
    if (__OFADD__(v28, v27))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v29 <= v23[3] >> 1)
    {
      if (*(v26 + 16))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v28 <= v29)
      {
        v30 = v28 + v27;
      }

      else
      {
        v30 = v28;
      }

      result = sub_E02D8(result, v30, 1, v23);
      v23 = result;
      if (*(v26 + 16))
      {
LABEL_31:
        if ((v23[3] >> 1) - v23[2] < v27)
        {
          goto LABEL_52;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
        swift_arrayInitWithCopy();

        if (v27)
        {
          v31 = v23[2];
          v32 = __OFADD__(v31, v27);
          v33 = v31 + v27;
          if (v32)
          {
            goto LABEL_53;
          }

          v23[2] = v33;
        }

        goto LABEL_21;
      }
    }

    if (v27)
    {
      goto LABEL_51;
    }

LABEL_21:
    v22 += v24;
    if (!--v21)
    {

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

void *sub_311638(uint64_t a1)
{
  v43 = type metadata accessor for ModernShelf();
  __chkstk_darwin(v43);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v42 - v5;
  __chkstk_darwin(v7);
  v10 = &v42 - v9;
  v11 = *(a1 + 16);
  v42 = v8;
  if (v11)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = *(v8 + 72);
    v14 = a1 + v12;
    v15 = _swiftEmptyArrayStorage;
    do
    {
      sub_313380(v14, v10, type metadata accessor for ModernShelf);
      v16 = v10[*(v43 + 24)] - 27;
      v17 = v16 > 0x28;
      v18 = (1 << v16) & 0x12800000041;
      if (v17 || v18 == 0)
      {
        sub_3133E8(v10, type metadata accessor for ModernShelf);
      }

      else
      {
        sub_F7928(v10, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45[0] = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_41CF0(0, v15[2] + 1, 1);
          v15 = v45[0];
        }

        v22 = v15[2];
        v21 = v15[3];
        if (v22 >= v21 >> 1)
        {
          sub_41CF0(v21 > 1, v22 + 1, 1);
          v15 = v45[0];
        }

        v15[2] = v22 + 1;
        sub_F7928(v3, v15 + v12 + v22 * v13);
      }

      v14 += v13;
      --v11;
    }

    while (v11);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v23 = v15[2];
  if (!v23)
  {

    v25 = _swiftEmptyArrayStorage;
LABEL_34:
    v46 = _swiftEmptyArrayStorage;
    v36 = v25[2];
    if (!v36)
    {

      return _swiftEmptyArrayStorage;
    }

    v37 = (v25 + 4);
    v38 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_1F958(v37, v45);
      sub_1F958(v45, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
      type metadata accessor for LegacyEpisodeLockup();
      v39 = swift_dynamicCast();
      v40 = v39;
      if (v39)
      {
      }

      sub_1F958(v45, v44);
      type metadata accessor for LegacyLockup();
      if (swift_dynamicCast())
      {
        if (v40)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v45);
        }

        else
        {
          v41 = sub_3E94A4();
          __swift_destroy_boxed_opaque_existential_1Tm(v45);
          if ((v41 & 1) == 0)
          {
            sub_3ED564();
            if (*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v46 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_3ED5A4();
            }

            sub_3ED604();
            v38 = v46;
            goto LABEL_37;
          }
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
      }

LABEL_37:
      v37 += 40;
      if (!--v36)
      {

        return v38;
      }
    }
  }

  v43 = *(v43 + 28);
  v24 = v15 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
  v25 = _swiftEmptyArrayStorage;
  v26 = *(v42 + 72);
  while (1)
  {
    sub_313380(v24, v6, type metadata accessor for ModernShelf);
    v28 = *&v6[v43];

    result = sub_3133E8(v6, type metadata accessor for ModernShelf);
    v29 = *(v28 + 16);
    v30 = v25[2];
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v31 <= v25[3] >> 1)
    {
      if (*(v28 + 16))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v30 <= v31)
      {
        v32 = v30 + v29;
      }

      else
      {
        v32 = v30;
      }

      result = sub_E02D8(result, v32, 1, v25);
      v25 = result;
      if (*(v28 + 16))
      {
LABEL_28:
        if ((v25[3] >> 1) - v25[2] < v29)
        {
          goto LABEL_53;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
        swift_arrayInitWithCopy();

        if (v29)
        {
          v33 = v25[2];
          v34 = __OFADD__(v33, v29);
          v35 = v33 + v29;
          if (v34)
          {
            goto LABEL_54;
          }

          v25[2] = v35;
        }

        goto LABEL_18;
      }
    }

    if (v29)
    {
      goto LABEL_52;
    }

LABEL_18:
    v24 += v26;
    if (!--v23)
    {

      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

void *sub_311B5C()
{
  v1 = sub_3E63E4();
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_313380(v0 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, v3, &type metadata accessor for InteractionContext.Page);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = &_swiftEmptySetSingleton;
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        return result;
      }

      if (EnumCaseMultiPayload != 1)
      {
        sub_3133E8(v3, &type metadata accessor for InteractionContext.Page);
        return &_swiftEmptySetSingleton;
      }

      v6 = v3;
    }

    else
    {
      if ((EnumCaseMultiPayload - 4) < 9)
      {
        return result;
      }

      v6 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F60) + 64)];
    }

    sub_FCF8(v6, &qword_4E9FD0);
    return &_swiftEmptySetSingleton;
  }

  if (EnumCaseMultiPayload > 0x1A)
  {
    goto LABEL_14;
  }

  if (((1 << EnumCaseMultiPayload) & 0x7D80000) != 0)
  {
    return result;
  }

  if (((1 << EnumCaseMultiPayload) & 0x70000) != 0)
  {
    goto LABEL_15;
  }

  if (((1 << EnumCaseMultiPayload) & 0x208000) == 0)
  {
LABEL_14:
    if (EnumCaseMultiPayload != 13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5015E0);
      v7 = sub_3E8994();
      v8 = *(v7 - 8);
      v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v10 = swift_allocObject();
      v11 = v10;
      *(v10 + 16) = xmmword_3F5630;
      v12 = &enum case for InMemoryStateDomain.bookmarkState(_:);
      goto LABEL_19;
    }

LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5015E0);
    v13 = sub_3E8994();
    v14 = *(v13 - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_3F5310;
    v18 = v17 + v16;
    v19 = *(v14 + 104);
    v19(v18, enum case for InMemoryStateDomain.followState(_:), v13);
    v19(v18 + v15, enum case for InMemoryStateDomain.playState(_:), v13);
    v20 = sub_35CEC(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5015E0);
  v7 = sub_3E8994();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v11 = v10;
  *(v10 + 16) = xmmword_3F5630;
  v12 = &enum case for InMemoryStateDomain.followState(_:);
LABEL_19:
  (*(v8 + 104))(v10 + v9, *v12, v7);
  v21 = sub_35CEC(v11);
  swift_setDeallocating();
  (*(v8 + 8))(v11 + v9, v7);
  swift_deallocClassInstance();
  return v21;
}

uint64_t sub_311FB8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_312538(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

char *sub_3120B0(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v46 = a1;
    v47 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v45 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v46;
          v16 = v47;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v47 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v46;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v47 << 9) | (8 * v18)));
        sub_3EE954();
        sub_3EE994(v5);
        v19 = sub_3EE9A4();
        v20 = -1 << v6[32];
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & v13[v2 >> 6]) == 0);
      v21 = *(v6 + 6);
      if (*(v21 + 8 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & v13[v2 >> 6]) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v50 = v45;
    v51 = v47;
    v52 = v11;
    v49[0] = v46;
    v49[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();
      memcpy(v39, v6 + 56, v5);
      v40 = sub_312644(v39, v14, v6, v2, v49);

      v45 = v50;
      v47 = v51;
      v6 = v40;
      goto LABEL_43;
    }

LABEL_18:
    v42 = v14;
    v43 = &v41;
    __chkstk_darwin(v22);
    v14 = &v41 - v23;
    memcpy(&v41 - v23, v6 + 56, v5);
    v24 = *(v6 + 2);
    *(v14 + 8 * v3) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v4 = v46;
LABEL_19:
    v44 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v47 << 9) | (8 * v29)));
      sub_3EE954();
      v2 = &v48;
      sub_3EE994(v5);
      v30 = sub_3EE9A4();
      v31 = -1 << v6[32];
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & v13[v32 >> 6]) != 0)
      {
        v35 = *(v6 + 6);
        if (*(v35 + 8 * v32) == v5)
        {
LABEL_20:
          v26 = *(v14 + 8 * v33);
          *(v14 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v44 - 1;
            if (__OFSUB__(v44, 1))
            {
              __break(1u);
            }

            if (v44 == 1)
            {

              v6 = &_swiftEmptySetSingleton;
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & v13[v32 >> 6]) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v47;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v47 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v47 + 1)
    {
      v37 = v47 + 1;
    }

    else
    {
      v37 = v12;
    }

    v47 = v37 - 1;
    v6 = sub_37B588(v14, v42, v44, v6);
LABEL_43:
    sub_44824();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v6;
}

uint64_t sub_312538(Swift::UInt64 a1)
{
  v3 = *v1;
  sub_3EE954();
  sub_3EE994(a1);
  v4 = sub_3EE9A4();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_3327C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_31281C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

Swift::Int sub_312644(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_3EE954();
    sub_3EE994(v17);
    result = sub_3EE9A4();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + 8 * v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return &_swiftEmptySetSingleton;
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + 8 * v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_37B588(v7, a2, v9, a3);
}

unint64_t sub_31281C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_3EE264();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_3EE954();
        sub_3EE994(v10);
        v11 = sub_3EE9A4() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_3129C4(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF420);
  __chkstk_darwin(v2 - 8);
  v4 = &v30[-v3];
  v5 = sub_3E9104();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v41 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v40 = &v30[-v9];
  if (!(a1 >> 62))
  {
    v42 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

LABEL_29:
  v42 = a1 & 0xFFFFFFFFFFFFFF8;
  v10 = sub_3EE5A4();
  if (!v10)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  v11 = 0;
  v12 = a1 & 0xC000000000000001;
  v13 = (v6 + 6);
  v37 = v6;
  v38 = (v6 + 4);
  v35 = v6 + 1;
  v36 = (v6 + 2);
  v33 = v6 + 5;
  v6 = _swiftEmptyDictionarySingleton;
  while (2)
  {
    for (i = v11; ; ++i)
    {
      if (v12)
      {
        v15 = a1;
        a1 = sub_3EE3F4();
        v11 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (i >= *(v42 + 16))
        {
          goto LABEL_28;
        }

        v15 = a1;
        a1 = *(a1 + 8 * i + 32);

        v11 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      sub_313310(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_thinClientEpisodeState, v4);
      if ((*v13)(v4, 1, v5) != 1)
      {
        break;
      }

      sub_FCF8(v4, &qword_4EF420);
      a1 = v15;
      if (v11 == v10)
      {
        return v6;
      }
    }

    v16 = v40;
    v32 = *v38;
    v32(v40, v4, v5);
    v39 = *(a1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
    (*v36)(v41, v16, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v6;
    v18 = sub_55790(v39);
    v19 = v6[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      break;
    }

    if (v6[3] >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v6 = v43;
        if ((v17 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v31 = v17;
        sub_5912C();
        v6 = v43;
        if ((v31 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_21;
    }

    v31 = v17;
    sub_56648(v21, isUniquelyReferenced_nonNull_native);
    v22 = sub_55790(v39);
    if ((v31 & 1) == (v23 & 1))
    {
      v18 = v22;
      v6 = v43;
      if ((v31 & 1) == 0)
      {
LABEL_23:
        v6[(v18 >> 6) + 8] |= 1 << v18;
        *(v6[6] + 8 * v18) = v39;
        v32((v6[7] + v37[9] * v18), v41, v5);

        (v37[1])(v40, v5);
        v26 = v6[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (!v27)
        {
          v6[2] = v28;
LABEL_25:
          a1 = v15;
          if (v11 != v10)
          {
            continue;
          }

          return v6;
        }

        goto LABEL_33;
      }

LABEL_21:
      v24 = v6[7] + v37[9] * v18;
      v25 = v37;
      (v37[5])(v24, v41, v5);

      (v25[1])(v40, v5);
      goto LABEL_25;
    }

    break;
  }

  result = sub_3EE894();
  __break(1u);
  return result;
}

void *sub_312E58(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

LABEL_28:
  v3 = sub_3EE5A4();
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  v4 = 0;
  while (2)
  {
    for (i = v4; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_3EE3F4();
        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (i >= *(v2 + 16))
        {
          goto LABEL_27;
        }

        v6 = *(a1 + 8 * i + 32);

        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      if (*(v6 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) != 2)
      {
        break;
      }

      if (v4 == v3)
      {
        return _swiftEmptyDictionarySingleton;
      }
    }

    sub_3E7974();
    v7 = *(v6 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v7;
    v9 = sub_55790(v7);
    v11 = _swiftEmptyDictionarySingleton[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      v15 = v10;
      if (_swiftEmptyDictionarySingleton[3] >= v14)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v22 = v9;
          sub_59394();
          v9 = v22;
        }
      }

      else
      {
        sub_569AC(v14, isUniquelyReferenced_nonNull_native);
        v9 = sub_55790(v24);
        if ((v15 & 1) != (v16 & 1))
        {
          goto LABEL_32;
        }
      }

      if (v15)
      {
        sub_3132B4(v25, _swiftEmptyDictionarySingleton[7] + 40 * v9);

        goto LABEL_24;
      }

      _swiftEmptyDictionarySingleton[(v9 >> 6) + 8] |= 1 << v9;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v9) = v24;
      v17 = _swiftEmptyDictionarySingleton[7] + 40 * v9;
      v18 = v25[0];
      v19 = v25[1];
      *(v17 + 32) = v26;
      *v17 = v18;
      *(v17 + 16) = v19;

      v20 = _swiftEmptyDictionarySingleton[2];
      v13 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (!v13)
      {
        _swiftEmptyDictionarySingleton[2] = v21;
LABEL_24:
        if (v4 != v3)
        {
          continue;
        }

        return _swiftEmptyDictionarySingleton;
      }
    }

    break;
  }

  __break(1u);
LABEL_32:
  result = sub_3EE894();
  __break(1u);
  return result;
}

char *sub_3130B4(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t))
{

  v6 = a3(v5);
  if (a2 >> 62)
  {
    v7 = sub_3EE5A4();
  }

  else
  {
    v7 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  if (v7)
  {
    result = sub_41AD4(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = *(sub_3EE3F4() + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
        swift_unknownObjectRelease();
        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_41AD4((v11 > 1), v12 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v12 + 1;
        _swiftEmptyArrayStorage[v12 + 4] = v10;
      }
    }

    else
    {
      v13 = (a2 + 32);
      v14 = _swiftEmptyArrayStorage[2];
      do
      {
        v15 = *(*v13 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
        v16 = _swiftEmptyArrayStorage[3];
        if (v14 >= v16 >> 1)
        {
          sub_41AD4((v16 > 1), v14 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v14 + 1;
        _swiftEmptyArrayStorage[v14 + 4] = v15;
        ++v13;
        ++v14;
        --v7;
      }

      while (v7);
    }
  }

  v17 = sub_37C884(_swiftEmptyArrayStorage);

  if (*(v6 + 16) <= v17[2] >> 3)
  {
    sub_311FB8(v6);

    return v17;
  }

  else
  {
    v18 = sub_3120B0(v6, v17);

    return v18;
  }
}

uint64_t sub_313310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_313380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3133E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t JSStoreDataCache.__allocating_init(asPartOf:)()
{
  sub_36174(0, &qword_4E9490);
  sub_3EC394();

  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t JSStoreDataCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_31356C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_3EBDF4();
  v52 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  __chkstk_darwin(v16);
  v18 = &v44 - v17;
  sub_E3D6C(a1, a2);
  sub_3EBCE4();
  if (v3)
  {
    return sub_68210(a1, a2);
  }

  v47 = a3;
  v48 = 0;
  v50 = a1;
  v51 = a2;
  v49 = v9;
  sub_3EBE04();
  v46 = sub_3EBDC4();
  v21 = v20;
  v22 = v52;
  v23 = *(v52 + 8);
  v23(v15, v7);
  sub_3EBE04();
  v24 = sub_3EBD94();
  v26 = v25;
  v27 = v12;
  v28 = v23;
  v23(v27, v7);
  if (v26)
  {

    v29 = sub_3ECEE4();
    sub_3188DC(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v31 = v30;
    v32 = type metadata accessor for JSStoreDataCacheValue();
    *v31 = 0x4164657461657263;
    v31[1] = 0xE900000000000074;
    v31[2] = v32;
    (*(*(v29 - 8) + 104))(v31, enum case for JSONError.missingProperty(_:), v29);
    swift_willThrow();
    sub_68210(v50, v51);
    return v28(v18, v7);
  }

  else
  {
    v45 = v24;
    v33 = v49;
    sub_3EBE04();
    v34 = sub_3EBDA4();
    v35 = v50;
    if (v34)
    {

      v36 = v35;
      v37 = sub_3ECEE4();
      sub_3188DC(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      v39 = v38;
      v40 = type metadata accessor for JSStoreDataCacheValue();
      *v39 = 0x7463656A626FLL;
      v39[1] = 0xE600000000000000;
      v39[2] = v40;
      (*(*(v37 - 8) + 104))(v39, enum case for JSONError.missingProperty(_:), v37);
      swift_willThrow();
      sub_68210(v36, v51);
      v28(v49, v7);
      return v28(v18, v7);
    }

    else
    {
      v28(v18, v7);
      sub_68210(v35, v51);
      v41 = type metadata accessor for JSStoreDataCacheValue();
      v42 = v47;
      result = (*(v22 + 32))(v47 + *(v41 + 24), v33, v7);
      v43 = v45;
      *v42 = v46;
      v42[1] = v21;
      v42[2] = v43;
    }
  }

  return result;
}

void *sub_313A20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501708);
  inited = swift_initStackObject();
  v2 = inited;
  *(inited + 16) = xmmword_3F5300;
  *(inited + 32) = 0x49746E756F636361;
  *(inited + 40) = 0xE900000000000044;
  v3 = v0[1];
  if (v3)
  {
    v4 = *v0;
    v5 = &type metadata for String;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 72) = v5;
  v6 = objc_opt_self();
  v2[10] = 0x4164657461657263;
  v2[11] = 0xE900000000000074;
  v2[12] = v0[2];
  v2[15] = &type metadata for Double;
  v2[16] = 0x7463656A626FLL;
  v2[17] = 0xE600000000000000;
  type metadata accessor for JSStoreDataCacheValue();

  sub_3EBDD4();
  sub_62D20(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC438);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_501090);
  isa = sub_3ED084().super.isa;

  v12 = 0;
  v8 = [v6 dataWithJSONObject:isa options:0 error:&v12];

  v9 = v12;
  if (v8)
  {
    v10 = sub_3E5E04();
  }

  else
  {
    v10 = v9;
    sub_3E5B84();

    swift_willThrow();
  }

  return v10;
}

uint64_t JSStoreDataCache.object(forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v26 = a1;
  v27 = v4;
  v5 = sub_3E97B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  if (qword_4E8B20 != -1)
  {
    swift_once();
  }

  v12 = sub_3E9854();
  __swift_project_value_buffer(v12, qword_501618);
  sub_3E9834();
  sub_3E9784();
  v13 = sub_3E9834();
  v14 = sub_3EDC84();
  if (sub_3EE014())
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_3E9794();
    _os_signpost_emit_with_name_impl(&dword_0, v13, v14, v16, "object(forKey:)", "", v15, 2u);
  }

  (*(v6 + 16))(v8, v11, v5);
  sub_3E98A4();
  swift_allocObject();
  v17 = sub_3E9894();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501660);
  if (qword_4E8B28 != -1)
  {
    swift_once();
  }

  v18 = qword_501630;
  v29 = sub_36174(0, &qword_4F10B0);
  v30 = &protocol witness table for OS_dispatch_queue;
  v28 = v18;
  v19 = swift_allocObject();
  v20 = v26;
  *(v19 + 16) = v2;
  *(v19 + 24) = v20;
  *(v19 + 32) = a2;
  *(v19 + 40) = "object(forKey:)";
  *(v19 + 48) = 15;
  *(v19 + 56) = 2;
  v21 = v27;
  *(v19 + 64) = v17;
  *(v19 + 72) = v21;
  v22 = v18;

  v23 = sub_3ECD64();
  (*(v6 + 8))(v11, v5);
  return v23;
}

uint64_t sub_313F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v52 = a8;
  v45 = a4;
  v46 = a3;
  v40[1] = a2;
  v40[0] = a1;
  v53 = a11;
  v43 = a10;
  v14 = sub_3EBE74();
  __chkstk_darwin(v14 - 8);
  v44 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_3E9864();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  __chkstk_darwin(v16);
  v18 = v40 - v17;
  v19 = sub_3E97B4();
  v50 = *(v19 - 8);
  v51 = v19;
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v22 = v40 - v21;
  v23 = sub_3EBDF4();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a6;
  v48 = a5;
  v49 = a7;
  sub_3148BC(a6, a7, v26);
  v27 = v18;
  v49 = v24;
  v28 = v40[0];
  if (qword_4E8B20 != -1)
  {
    swift_once();
  }

  v29 = sub_3E9854();
  __swift_project_value_buffer(v29, qword_501618);
  v30 = sub_3E9834();
  sub_3E9884();
  LODWORD(v48) = sub_3EDC74();
  result = sub_3EE014();
  v32 = v23;
  v33 = v49;
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v43 & 1) == 0)
  {
    if (v52)
    {
      v34 = v27;
LABEL_11:

      sub_3E98B4();

      v35 = v41;
      v36 = v42;
      if ((*(v41 + 88))(v34, v42) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v37 = "[Error] Interval already ended";
      }

      else
      {
        (*(v35 + 8))(v34, v36);
        v37 = "";
      }

      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = sub_3E9794();
      _os_signpost_emit_with_name_impl(&dword_0, v30, v48, v39, v52, v37, v38, 2u);

      v32 = v23;
      v33 = v49;
LABEL_15:

      (*(v50 + 8))(v22, v51);
      v28(v26);
      return (*(v33 + 8))(v26, v32);
    }

    __break(1u);
    goto LABEL_17;
  }

  if (v52 >> 32)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    __break(1u);
    goto LABEL_19;
  }

  if ((v52 & 0xFFFFF800) != 0xD800)
  {
    if (v52 >> 16 <= 0x10)
    {
      v34 = v27;
      v52 = &v54;
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_3148BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v54 = a1;
  v48 = type metadata accessor for JSStoreDataCacheValue();
  __chkstk_darwin(v48);
  v51 = (&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_3E5CC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_3E5DC4();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EBC24();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_4E8B28 != -1)
  {
    swift_once();
  }

  v15 = qword_501630;
  *v14 = qword_501630;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = sub_3EBC34();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v53 = v3;
    if (qword_4E8B40 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v17 = v57;
  __swift_project_value_buffer(v57, qword_501648);
  v18 = v54;
  v58 = v54;
  v59 = a2;

  v60._countAndFlagsBits = 0x6E6F736A2ELL;
  v60._object = 0xE500000000000000;
  sub_3ED3D4(v60);
  (*(v7 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
  sub_68DC4();
  v52 = a2;
  v19 = v56;
  sub_3E5DB4();
  (*(v7 + 8))(v9, v6);

  v20 = [objc_opt_self() defaultManager];
  sub_3E5D74();
  v21 = sub_3ED204();

  v22 = [v20 fileExistsAtPath:v21];

  if (!v22)
  {
    sub_318888();
    swift_allocError();
    v27 = v52;
    *v28 = v18;
    v28[1] = v27;
    swift_willThrow();
    v29 = *(v55 + 8);

    return v29(v19, v17);
  }

  v23 = v53;
  v24 = sub_3E5DD4();
  if (v23)
  {
    return (*(v55 + 8))(v19, v17);
  }

  v30 = v24;
  v31 = v25;
  sub_E3D6C(v24, v25);
  v32 = v51;
  sub_31356C(v30, v31, v51);
  v33 = *v32;
  v34 = v32[1];
  v35 = [*(v50 + 16) ams_activeiTunesAccount];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 identifier];

    if (v37)
    {
      v38 = sub_3ED244();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    v19 = v56;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  if (!v34)
  {
    if (!v40)
    {
      goto LABEL_23;
    }

LABEL_25:
    sub_318888();
    swift_allocError();
    *v46 = xmmword_40BCD0;
    goto LABEL_27;
  }

  if (!v40)
  {
    goto LABEL_25;
  }

  if (v33 != v38 || v34 != v40)
  {
    v41 = sub_3EE804();

    if (v41)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_23:
  v42 = *(v32 + 2) + 604800.0;
  sub_3E5E44();
  if (v43 < v42)
  {
    (*(v55 + 8))(v19, v57);
    sub_68210(v30, v31);
    v44 = *(v48 + 24);
    v45 = sub_3EBDF4();
    (*(*(v45 - 8) + 16))(v49, v32 + v44, v45);
    return sub_318410(v32);
  }

  sub_318888();
  swift_allocError();
  *v47 = 0;
  v47[1] = 0;
LABEL_27:
  swift_willThrow();
  sub_68210(v30, v31);
  sub_318410(v32);
  return (*(v55 + 8))(v19, v57);
}

Swift::Void __swiftcall JSStoreDataCache.removeObject(forKey:)(Swift::String forKey)
{
  v2 = v1;
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v5 = *v2;
  v6 = sub_3EBBC4();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_3EBC14();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_4E8B38 != -1)
  {
    swift_once();
  }

  v15 = qword_501640;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = "removeObject(forKey:)";
  *(v13 + 32) = 21;
  *(v13 + 40) = 2;
  *(v13 + 48) = countAndFlagsBits;
  *(v13 + 56) = object;
  *(v13 + 64) = v5;
  aBlock[4] = sub_318098;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_23;
  v14 = _Block_copy(aBlock);

  sub_3EBBE4();
  v18 = _swiftEmptyArrayStorage;
  sub_3188DC(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_318924(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v14);
  (*(v17 + 8))(v8, v6);
  (*(v9 + 8))(v11, v16);
}

uint64_t JSStoreDataCache.object<A>(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v34 = a1;
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = sub_3EC284();
  v8 = *(v7 - 8);
  v30 = v7;
  v31 = v8;
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EBF94();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  __chkstk_darwin(v17);
  v29 = &v28 - v18;
  sub_3EBF84();
  JSONContext.withActionKinds()(v16);
  v19 = *(v12 + 8);
  v19(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v20 = v30;
  sub_3EBF04();
  (*(v32 + 8))(v6, v33);
  (*(v31 + 8))(v10, v20);
  v19(v16, v11);
  v21 = v19;
  JSStoreDataCache.object(forKey:)(v34, v35);
  v22 = v29;
  (*(v12 + 16))(v16, v29, v11);
  v23 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = v37;
  *(v24 + 16) = v36;
  *(v24 + 24) = v25;
  (*(v12 + 32))(v24 + v23, v16, v11);
  sub_3EBDF4();
  v38[3] = sub_3EC654();
  v38[4] = &protocol witness table for SyncTaskScheduler;
  __swift_allocate_boxed_opaque_existential_0Tm(v38);
  sub_3EC644();
  v26 = sub_3ECD74();

  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  v21(v22, v11);
  return v26;
}

uint64_t sub_3156CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_3EBF94();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3EBDF4();
  v15 = __chkstk_darwin(v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a1, v15);
  (*(v11 + 16))(v13, a2, v10);
  sub_36174(0, &qword_4F6BF0);
  v19 = sub_3EE044();
  return ExpressibleByJSON.init(measuredDeserializing:using:performanceLog:)(v17, v13, v19, a3, a4, a5);
}

uint64_t JSStoreDataCache.setObject(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  v26 = *v3;
  v5 = sub_3EBBC4();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBC14();
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EBDF4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_4E8B30 != -1)
  {
    swift_once();
  }

  v25[1] = qword_501638;
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v12 + 16))(v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v16 = (*(v12 + 80) + 41) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = "setObject(_:forKey:)";
  *(v19 + 32) = 20;
  *(v19 + 40) = 2;
  (*(v12 + 32))(v19 + v16, v14, v11);
  v20 = (v19 + v17);
  v21 = v28;
  *v20 = v27;
  v20[1] = v21;
  *(v19 + v18) = v26;
  aBlock[4] = sub_3182CC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_16;
  v22 = _Block_copy(aBlock);

  sub_3EBBE4();
  v33 = _swiftEmptyArrayStorage;
  sub_3188DC(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_318924(&qword_506A30, &unk_503DE0);
  v23 = v32;
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v22);
  (*(v31 + 8))(v7, v23);
  (*(v29 + 8))(v10, v30);
}

uint64_t sub_315CE4(uint64_t a1, const char *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, void *a6, void *a7)
{
  v67 = a6;
  v68 = a7;
  v66 = a5;
  v69 = a2;
  v8 = sub_3EBE74();
  __chkstk_darwin(v8 - 8);
  v64 = sub_3E9864();
  v9 = *(v64 - 8);
  __chkstk_darwin(v64);
  v59 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = v57 - v12;
  v13 = sub_3E97B4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v61 = v57 - v18;
  __chkstk_darwin(v19);
  v21 = v57 - v20;
  __chkstk_darwin(v22);
  v24 = v57 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v26 = result;
  v60 = v16;
  v62 = v9;
  LODWORD(v63) = a4;
  if (qword_4E8B20 != -1)
  {
    swift_once();
  }

  v27 = sub_3E9854();
  __swift_project_value_buffer(v27, qword_501618);
  sub_3E9834();
  sub_3E9784();
  v28 = sub_3E9834();
  v29 = sub_3EDC84();
  result = sub_3EE014();
  v65 = v26;
  if (result)
  {
    if (v63)
    {
      if (!HIDWORD(v69))
      {
        if ((v69 & 0xFFFFF800) == 0xD800)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v69 >> 16 <= 0x10)
        {
          v32 = v14;
          v30 = v24;
          v33 = v13;
          v31 = &v70;
          goto LABEL_12;
        }

LABEL_32:
        __break(1u);
        __break(1u);
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      v30 = v24;
      v31 = v69;
      if (v69)
      {
        v32 = v14;
        v33 = v13;
LABEL_12:
        v34 = swift_slowAlloc();
        *v34 = 0;
        v35 = sub_3E9794();
        v36 = v31;
        v24 = v30;
        _os_signpost_emit_with_name_impl(&dword_0, v28, v29, v35, v36, "", v34, 2u);

        v13 = v33;
        v14 = v32;
        goto LABEL_13;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_13:

  (*(v14 + 16))(v21, v24, v13);
  sub_3E98A4();
  swift_allocObject();
  sub_3E9894();
  sub_31677C(v66, v67, v68);
  v37 = sub_3E9834();
  v38 = v61;
  sub_3E9884();
  v39 = sub_3EDC74();
  result = sub_3EE014();
  v40 = v62;
  if ((result & 1) == 0)
  {

    v43 = *(v14 + 8);
    v43(v38, v13);
    return (v43)(v24, v13);
  }

  if ((v63 & 1) == 0)
  {
    v41 = v64;
    v42 = v58;
    if (!v69)
    {
      __break(1u);

      v44 = *(v14 + 8);
      v64 = v14 + 8;
      v69 = v44;
      (v44)(v40, v13);
      if (qword_4E8B18 != -1)
      {
        swift_once();
      }

      v63 = sub_3ECE84();
      v62 = __swift_project_value_buffer(v63, qword_501600);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
      sub_3EBE94();
      *(swift_allocObject() + 16) = xmmword_3F5630;
      sub_3EBE64();
      v76._object = 0x800000000042D5B0;
      v76._countAndFlagsBits = 0xD00000000000001FLL;
      sub_3EBE54(v76);
      v75 = &type metadata for String;
      v45 = v67;
      v46 = v68;
      v74[0] = v67;
      v74[1] = v68;

      sub_3EBE34();
      sub_FCF8(v74, &unk_501090);
      v77._countAndFlagsBits = 2112034;
      v77._object = 0xE300000000000000;
      sub_3EBE54(v77);
      swift_getErrorValue();
      v47 = v72;
      v48 = v73;
      v75 = v73;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v74);
      (*(*(v48 - 1) + 16))(boxed_opaque_existential_0Tm, v47, v48);
      sub_3EBE34();
      sub_FCF8(v74, &unk_501090);
      v78._countAndFlagsBits = 0;
      v78._object = 0xE000000000000000;
      sub_3EBE54(v78);
      sub_3EBE84();
      sub_3ECB94();

      v50._countAndFlagsBits = v45;
      v50._object = v46;
      JSStoreDataCache.removeObject(forKey:)(v50);

      return (v69)(v66, v57[2]);
    }

    goto LABEL_25;
  }

  v41 = v64;
  v42 = v58;
  if (HIDWORD(v69))
  {
    goto LABEL_34;
  }

  if ((v69 & 0xFFFFF800) == 0xD800)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  if (v69 >> 16 > 0x10)
  {
LABEL_35:
    __break(1u);
    __break(1u);
    goto LABEL_36;
  }

  v69 = &v71;
LABEL_25:

  sub_3E98B4();

  if ((*(v40 + 88))(v42, v41) == enum case for OSSignpostError.doubleEnd(_:))
  {
    v51 = v24;
    v52 = "[Error] Interval already ended";
  }

  else
  {
    v53 = v40;
    v51 = v24;
    (*(v53 + 8))(v42, v41);
    v52 = "";
  }

  v54 = swift_slowAlloc();
  *v54 = 0;
  v55 = sub_3E9794();
  _os_signpost_emit_with_name_impl(&dword_0, v37, v39, v55, v69, v52, v54, 2u);

  v56 = *(v14 + 8);
  v56(v38, v13);
  return (v56)(v51, v13);
}

uint64_t sub_31677C(uint64_t a1, void *a2, void *a3)
{
  v57 = a1;
  v52 = a2;
  v53 = a3;
  v56 = type metadata accessor for JSStoreDataCacheValue();
  __chkstk_darwin(v56);
  v4 = (&v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_3E5CC4();
  v5 = *(v54 - 8);
  __chkstk_darwin(v54);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3E5DC4();
  v61 = *(v8 - 8);
  __chkstk_darwin(v8);
  v60 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v62 = &v52 - v11;
  v12 = sub_3EBC24();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_4E8B30 != -1)
  {
    swift_once();
  }

  v16 = qword_501638;
  *v15 = qword_501638;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  v18 = sub_3EBC34();
  (*(v13 + 8))(v15, v12);
  if (v18)
  {
    if (qword_4E8B40 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v19 = __swift_project_value_buffer(v8, qword_501648);
  v20 = *(v61 + 16);
  v59 = v8;
  v20(v62, v19, v8);
  v21 = objc_opt_self();
  v22 = [v21 defaultManager];
  v64._countAndFlagsBits = sub_3E5CD4();
  v23 = sub_3ED994(v64);

  if (!v23)
  {
    v24 = [v21 defaultManager];
    v25 = v62;
    sub_3E5D14(v26);
    v28 = v27;
    v63[0] = 0;
    v29 = [v24 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:v63];

    if (!v29)
    {
      v40 = v63[0];
      sub_3E5B84();

      swift_willThrow();
      return (*(v61 + 8))(v25, v59);
    }

    v30 = v63[0];
  }

  v63[0] = v52;
  v63[1] = v53;

  v65._countAndFlagsBits = 0x6E6F736A2ELL;
  v65._object = 0xE500000000000000;
  sub_3ED3D4(v65);
  v31 = v54;
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v54);
  sub_68DC4();
  sub_3E5DB4();
  (*(v5 + 8))(v7, v31);

  v32 = [*(v55 + 16) ams_activeiTunesAccount];
  v33 = v62;
  if (v32)
  {
    v34 = v32;
    v35 = [v32 identifier];

    v36 = v59;
    if (v35)
    {
      v37 = sub_3ED244();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }
  }

  else
  {
    v37 = 0;
    v39 = 0;
    v36 = v59;
  }

  v42 = *(v56 + 24);
  v43 = sub_3EBDF4();
  (*(*(v43 - 8) + 16))(v4 + v42, v57, v43);
  sub_3E5E44();
  *v4 = v37;
  v4[1] = v39;
  v4[2] = v44;
  v45 = v58;
  v46 = sub_313A20();
  if (v45)
  {
    sub_318410(v4);
    v48 = *(v61 + 8);
    v48(v60, v36);
  }

  else
  {
    v49 = v46;
    v50 = v47;
    v51 = v60;
    sub_3E5E14();
    sub_68210(v49, v50);
    sub_318410(v4);
    v48 = *(v61 + 8);
    v48(v51, v36);
  }

  return (v48)(v33, v36);
}

uint64_t sub_316DBC(uint64_t a1, const char *a2, uint64_t a3, unsigned __int8 a4, void *a5, void *a6)
{
  v64 = a2;
  v9 = sub_3EBE74();
  __chkstk_darwin(v9 - 8);
  v10 = sub_3E9864();
  v60 = *(v10 - 8);
  __chkstk_darwin(v10);
  v56 = &v53[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v55 = &v53[-v13];
  v14 = sub_3E97B4();
  v15 = *(v14 - 1);
  __chkstk_darwin(v14);
  v63 = &v53[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v57 = &v53[-v18];
  __chkstk_darwin(v19);
  v21 = &v53[-v20];
  __chkstk_darwin(v22);
  v24 = &v53[-v23];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v54 = v10;
  v61 = a5;
  v62 = a6;
  v58 = result;
  v59 = a4;
  if (qword_4E8B20 != -1)
  {
    swift_once();
  }

  v26 = sub_3E9854();
  __swift_project_value_buffer(v26, qword_501618);
  sub_3E9834();
  sub_3E9784();
  v27 = sub_3E9834();
  v28 = sub_3EDC84();
  result = sub_3EE014();
  if (result)
  {
    if (v59)
    {
      if (!HIDWORD(v64))
      {
        if ((v64 & 0xFFFFF800) == 0xD800)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v64 >> 16 <= 0x10)
        {
          v29 = v15;
          v32 = v24;
          v30 = v14;
          v31 = &v65;
          goto LABEL_12;
        }

LABEL_32:
        __break(1u);
        __break(1u);
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      v29 = v15;
      v30 = v14;
      v31 = v64;
      if (v64)
      {
        v32 = v24;
LABEL_12:
        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = sub_3E9794();
        _os_signpost_emit_with_name_impl(&dword_0, v27, v28, v34, v31, "", v33, 2u);
        v24 = v32;

        v14 = v30;
        v15 = v29;
        goto LABEL_13;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_13:

  (*(v15 + 16))(v21, v24, v14);
  sub_3E98A4();
  swift_allocObject();
  sub_3E9894();
  sub_31846C(v61, v62);
  v35 = sub_3E9834();
  v36 = v57;
  sub_3E9884();
  v37 = sub_3EDC74();
  result = sub_3EE014();
  if ((result & 1) == 0)
  {

    v40 = *(v15 + 8);
    v40(v36, v14);
    return (v40)(v24, v14);
  }

  if ((v59 & 1) == 0)
  {
    v38 = v60;
    v39 = v55;
    if (!v64)
    {
      __break(1u);

      v41 = *(v15 + 8);
      v63 = (v15 + 8);
      v64 = v41;
      (v41)(v36, v57);
      if (qword_4E8B18 != -1)
      {
        swift_once();
      }

      v42 = sub_3ECE84();
      v62 = __swift_project_value_buffer(v42, qword_501600);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
      sub_3EBE94();
      *(swift_allocObject() + 16) = xmmword_3F5630;
      sub_3EBE64();
      v71._object = 0x800000000042D5F0;
      v71._countAndFlagsBits = 0xD000000000000020;
      sub_3EBE54(v71);
      v70 = &type metadata for String;
      v69[0] = v35;
      v69[1] = v38;

      sub_3EBE34();
      sub_FCF8(v69, &unk_501090);
      v72._countAndFlagsBits = 2112034;
      v72._object = 0xE300000000000000;
      sub_3EBE54(v72);
      swift_getErrorValue();
      v43 = v67;
      v44 = v68;
      v70 = v68;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v69);
      (*(*(v44 - 1) + 16))(boxed_opaque_existential_0Tm, v43, v44);
      sub_3EBE34();
      sub_FCF8(v69, &unk_501090);
      v73._countAndFlagsBits = 0;
      v73._object = 0xE000000000000000;
      sub_3EBE54(v73);
      sub_3EBE84();
      sub_3ECB94();

      return (v64)(v55, v57);
    }

    goto LABEL_25;
  }

  v38 = v60;
  v39 = v55;
  if (HIDWORD(v64))
  {
    goto LABEL_34;
  }

  if ((v64 & 0xFFFFF800) == 0xD800)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  if (v64 >> 16 > 0x10)
  {
LABEL_35:
    __break(1u);
    __break(1u);
    goto LABEL_36;
  }

  v64 = &v66;
LABEL_25:

  sub_3E98B4();

  v46 = v54;
  if ((*(v38 + 88))(v39, v54) == enum case for OSSignpostError.doubleEnd(_:))
  {
    v47 = v15;
    v48 = "[Error] Interval already ended";
  }

  else
  {
    v49 = v39;
    v47 = v15;
    (*(v38 + 8))(v49, v46);
    v48 = "";
  }

  v50 = swift_slowAlloc();
  *v50 = 0;
  v51 = sub_3E9794();
  _os_signpost_emit_with_name_impl(&dword_0, v35, v37, v51, v64, v48, v50, 2u);

  v52 = *(v47 + 8);
  v52(v36, v14);
  return (v52)(v24, v14);
}

uint64_t sub_317834()
{
  v0 = sub_3ECE64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_3ECE84();
  __swift_allocate_value_buffer(v1, qword_501600);
  __swift_project_value_buffer(v1, qword_501600);
  sub_3ECE44();
  return sub_3ECE74();
}

uint64_t sub_3178F8()
{
  v0 = sub_3ECE64();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3E9854();
  __swift_allocate_value_buffer(v4, qword_501618);
  __swift_project_value_buffer(v4, qword_501618);
  sub_3ECE44();
  sub_3ECE54();
  sub_3E9844();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_317A10()
{
  v0 = sub_3EDB54();
  __chkstk_darwin(v0);
  v1 = sub_3EDBB4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3EBC14();
  __chkstk_darwin(v5 - 8);
  sub_36174(0, &qword_4F10B0);
  sub_3EBBF4();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v1);
  v7[1] = _swiftEmptyArrayStorage;
  sub_3188DC(&qword_4F1CA8, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CB0);
  sub_318924(&qword_4F1CB8, &qword_4F1CB0);
  sub_3EE244();
  result = sub_3EDBF4();
  qword_501630 = result;
  return result;
}

uint64_t sub_317C70()
{
  sub_36174(0, &qword_4F10B0);
  result = sub_3EDB44();
  qword_501638 = result;
  return result;
}

uint64_t sub_317CB4()
{
  sub_36174(0, &qword_4F10B0);
  result = sub_3EDB44();
  qword_501640 = result;
  return result;
}

uint64_t sub_317CF8()
{
  v0 = sub_3E5CC4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3E5DC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, qword_501648);
  __swift_project_value_buffer(v4, qword_501648);
  v9 = [objc_opt_self() sharedCacheDirectory];
  sub_3E5D44();

  v11[0] = 0xD000000000000013;
  v11[1] = 0x800000000042D5D0;
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.isDirectory(_:), v0);
  sub_68DC4();
  sub_3E5DB4();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_317F98()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_318020()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_318058()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3180C8()
{
  v1 = sub_3EBF94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_318150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(sub_3EBF94() - 8);
  return sub_3156CC(a1, v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v6, a2);
}

uint64_t sub_3181E0()
{
  v1 = sub_3EBDF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_3182CC()
{
  v1 = *(sub_3EBDF4() - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v0 + 40);

  return sub_315CE4(v3, v4, v5, v9, v0 + v2, v7, v8);
}

uint64_t type metadata accessor for JSStoreDataCacheValue()
{
  result = qword_501770;
  if (!qword_501770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_318410(uint64_t a1)
{
  v2 = type metadata accessor for JSStoreDataCacheValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_31846C(void *a1, void *a2)
{
  v27 = a1;
  v3 = sub_3E5CC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3E5DC4();
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBC24();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_4E8B38 != -1)
  {
    swift_once();
  }

  v14 = qword_501640;
  *v13 = qword_501640;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = sub_3EBC34();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (qword_4E8B40 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v16 = v29;
  __swift_project_value_buffer(v29, qword_501648);
  v30[0] = v27;
  v30[1] = a2;

  v31._countAndFlagsBits = 0x6E6F736A2ELL;
  v31._object = 0xE500000000000000;
  sub_3ED3D4(v31);
  (*(v4 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  sub_68DC4();
  sub_3E5DB4();
  (*(v4 + 8))(v6, v3);

  v17 = [objc_opt_self() defaultManager];
  sub_3E5D14(v18);
  v20 = v19;
  v30[0] = 0;
  v21 = [v17 removeItemAtURL:v19 error:v30];

  if (v21)
  {
    v22 = *(v28 + 8);
    v23 = v30[0];
    return v22(v9, v16);
  }

  else
  {
    v25 = v30[0];
    sub_3E5B84();

    swift_willThrow();
    return (*(v28 + 8))(v9, v16);
  }
}

unint64_t sub_318888()
{
  result = qword_501710;
  if (!qword_501710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501710);
  }

  return result;
}

uint64_t sub_3188DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_318924(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_31898C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_3EBDF4();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_318A58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_3EBDF4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_318AFC()
{
  sub_1972C();
  if (v0 <= 0x3F)
  {
    sub_3EBDF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_318B90()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_318BFC(uint64_t a1)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v1 - 8);
  v42 = &v34 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v5 = &v34 - v4;
  v6 = sub_3EC284();
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBF94();
  v35 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  sub_3EBF84();
  JSONContext.withActionKinds()(v15);
  v19 = *(v11 + 8);
  v19(&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v20 = v36;
  sub_3EBF04();
  (*(v38 + 8))(v5, v39);
  (*(v37 + 8))(v9, v20);
  v21 = v35;
  v19(v15, v35);
  v22 = v21;
  (*(v11 + 16))(v15, v18, v21);
  sub_1F958(v40 + 64, &v43);
  v23 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v11 + 32))(v25 + v23, v15, v22);
  sub_1D4F0(&v43, v25 + v24);
  *(v25 + ((v24 + 47) & 0xFFFFFFFFFFFFFFF8)) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5018C0);

  v26 = sub_3ECE04();
  v27 = sub_3ED6F4();
  v28 = v42;
  (*(*(v27 - 8) + 56))(v42, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = &unk_419640;
  v29[5] = v25;
  v29[6] = v26;

  sub_E8ECC(0, 0, v28, &unk_419650, v29);

  v30 = sub_801B4();
  v31 = sub_3EDBC4();
  v44 = v30;
  v45 = &protocol witness table for OS_dispatch_queue;
  *&v43 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2290);
  v32 = sub_3ECD74();

  v19(v18, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(&v43);
  return v32;
}

uint64_t sub_319108(uint64_t a1)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v1 - 8);
  v43 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v5 = &v33 - v4;
  v6 = sub_3EC284();
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBF94();
  v34 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  sub_3EBF84();
  JSONContext.withActionKinds()(v15);
  v19 = *(v11 + 8);
  v19(&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v39 = v11 + 8;
  v40 = v19;
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v20 = v35;
  sub_3EBF04();
  (*(v37 + 8))(v5, v38);
  (*(v36 + 8))(v9, v20);
  v21 = v34;
  v19(v15, v34);
  (*(v11 + 16))(v15, v18, v21);
  sub_1F958(v41 + 64, &v44);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v11 + 32))(v24 + v22, v15, v21);
  sub_1D4F0(&v44, v24 + v23);
  *(v24 + ((v23 + 47) & 0xFFFFFFFFFFFFFFF8)) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501860);
  v25 = sub_3ECE04();
  v26 = sub_3ED6F4();
  v27 = v43;
  (*(*(v26 - 8) + 56))(v43, 1, 1, v26);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = &unk_4195A0;
  v28[5] = v24;
  v28[6] = v25;

  sub_E8ECC(0, 0, v27, &unk_4195A8, v28);

  v29 = sub_801B4();
  v30 = sub_3EDBC4();
  v45 = v29;
  v46 = &protocol witness table for OS_dispatch_queue;
  *&v44 = v30;
  type metadata accessor for Shelf(0);
  v31 = sub_3ECD74();

  v40(v18, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(&v44);
  return v31;
}

uint64_t sub_319600()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v0 - 8);
  v39 = &v31 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v4 = &v31 - v3;
  v5 = sub_3EC284();
  v6 = *(v5 - 8);
  v32 = v5;
  v33 = v6;
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3EBF94();
  v31 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  sub_3EBF84();
  JSONContext.withActionKinds()(v14);
  v18 = *(v10 + 8);
  v18(&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v36 = v10 + 8;
  v37 = v18;
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v19 = v32;
  sub_3EBF04();
  (*(v34 + 8))(v4, v35);
  (*(v33 + 8))(v8, v19);
  v20 = v31;
  v18(v14, v31);
  (*(v10 + 16))(v14, v17, v20);
  sub_1F958(v38 + 64, &v40);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  (*(v10 + 32))(v22 + v21, v14, v20);
  sub_1D4F0(&v40, v22 + ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501880);
  v23 = sub_3ECE04();
  v24 = sub_3ED6F4();
  v25 = v39;
  (*(*(v24 - 8) + 56))(v39, 1, 1, v24);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_4194D0;
  v26[5] = v22;
  v26[6] = v23;

  sub_E8ECC(0, 0, v25, &unk_4194E0, v26);

  v27 = sub_801B4();
  v28 = sub_3EDBC4();
  v41 = v27;
  v42 = &protocol witness table for OS_dispatch_queue;
  *&v40 = v28;
  type metadata accessor for UpNextScoringWeights();
  v29 = sub_3ECD74();

  v37(v17, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(&v40);
  return v29;
}

uint64_t sub_319AE8(uint64_t a1)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v1 - 8);
  v42 = &v34 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v5 = &v34 - v4;
  v6 = sub_3EC284();
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBF94();
  v35 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  sub_3EBF84();
  JSONContext.withActionKinds()(v15);
  v19 = *(v11 + 8);
  v19(&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v20 = v36;
  sub_3EBF04();
  (*(v38 + 8))(v5, v39);
  (*(v37 + 8))(v9, v20);
  v21 = v35;
  v19(v15, v35);
  v22 = v21;
  (*(v11 + 16))(v15, v18, v21);
  sub_1F958(v40 + 64, &v43);
  v23 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v11 + 32))(v25 + v23, v15, v22);
  sub_1D4F0(&v43, v25 + v24);
  *(v25 + ((v24 + 47) & 0xFFFFFFFFFFFFFFF8)) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501890);

  v26 = sub_3ECE04();
  v27 = sub_3ED6F4();
  v28 = v42;
  (*(*(v27 - 8) + 56))(v42, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = &unk_4196E8;
  v29[5] = v25;
  v29[6] = v26;

  sub_E8ECC(0, 0, v28, &unk_4196F0, v29);

  v30 = sub_801B4();
  v31 = sub_3EDBC4();
  v44 = v30;
  v45 = &protocol witness table for OS_dispatch_queue;
  *&v43 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1F80);
  v32 = sub_3ECD74();

  v19(v18, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(&v43);
  return v32;
}

uint64_t sub_319FF4(uint64_t a1)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v1 - 8);
  v51 = &v39 - v2;
  v3 = type metadata accessor for RecommendationsShelvesIntent();
  v47 = *(v3 - 8);
  v48 = *(v47 + 64);
  __chkstk_darwin(v3 - 8);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  v8 = sub_3EC284();
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EBF94();
  v40 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  __chkstk_darwin(v18);
  v20 = &v39 - v19;
  sub_3EBF84();
  JSONContext.withActionKinds()(v17);
  v21 = *(v13 + 8);
  v21(&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v46 = v20;
  v22 = v41;
  sub_3EBF04();
  (*(v43 + 8))(v7, v44);
  (*(v42 + 8))(v11, v22);
  v23 = v40;
  v21(v17, v40);
  v24 = v20;
  v25 = v23;
  (*(v13 + 16))(v17, v24, v23);
  sub_1F958(v49 + 64, &v52);
  v26 = v45;
  sub_325788(v50, v45, type metadata accessor for RecommendationsShelvesIntent);
  v27 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v28 = (v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v47 + 80) + v28 + 40) & ~*(v47 + 80);
  v30 = swift_allocObject();
  (*(v13 + 32))(v30 + v27, v17, v25);
  sub_1D4F0(&v52, v30 + v28);
  sub_3259B8(v26, v30 + v29, type metadata accessor for RecommendationsShelvesIntent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501888);
  v31 = sub_3ECE04();
  v32 = sub_3ED6F4();
  v33 = v51;
  (*(*(v32 - 8) + 56))(v51, 1, 1, v32);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = &unk_419528;
  v34[5] = v30;
  v34[6] = v31;

  sub_E8ECC(0, 0, v33, &unk_419538, v34);

  v35 = sub_801B4();
  v36 = sub_3EDBC4();
  v53 = v35;
  v54 = &protocol witness table for OS_dispatch_queue;
  *&v52 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1668);
  v37 = sub_3ECD74();

  v21(v46, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(&v52);
  return v37;
}

uint64_t sub_31A5C0(uint64_t a1, unsigned int a2)
{
  v46 = a2;
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v2 - 8);
  v48 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  v7 = sub_3EC284();
  v8 = *(v7 - 8);
  v38 = v7;
  v39 = v8;
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EBF94();
  v37 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  sub_3EBF84();
  JSONContext.withActionKinds()(v16);
  v20 = *(v12 + 8);
  v20(&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v43 = v12 + 8;
  v44 = v20;
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v42 = v19;
  v21 = v38;
  sub_3EBF04();
  (*(v40 + 8))(v6, v41);
  (*(v39 + 8))(v10, v21);
  v22 = v37;
  v20(v16, v37);
  (*(v12 + 16))(v16, v19, v22);
  sub_1F958(v45 + 64, &v49);
  LOBYTE(v10) = v46 & 1;
  v23 = (v46 >> 8) & 1;
  v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v12 + 32))(v26 + v24, v16, v22);
  sub_1D4F0(&v49, v26 + v25);
  v27 = v26 + ((v25 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v27 = v47;
  *(v27 + 8) = v10;
  *(v27 + 9) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501878);
  v28 = sub_3ECE04();
  v29 = sub_3ED6F4();
  v30 = v48;
  (*(*(v29 - 8) + 56))(v48, 1, 1, v29);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = &unk_419490;
  v31[5] = v26;
  v31[6] = v28;

  sub_E8ECC(0, 0, v30, &unk_4194A0, v31);

  v32 = sub_801B4();
  v33 = sub_3EDBC4();
  v50 = v32;
  v51 = &protocol witness table for OS_dispatch_queue;
  *&v49 = v33;
  type metadata accessor for HeaderFooterShelves();
  v34 = sub_3ECD74();

  v44(v42, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(&v49);
  return v34;
}

uint64_t sub_31AADC(uint64_t a1)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v1 - 8);
  v52 = &v40 - v2;
  PageIntent = type metadata accessor for FetchPageIntent();
  v47 = *(PageIntent - 8);
  v48 = *(v47 + 64);
  __chkstk_darwin(PageIntent - 8);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  v8 = sub_3EC284();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EBF94();
  v41 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  sub_3EBF84();
  JSONContext.withActionKinds()(v17);
  v21 = *(v13 + 8);
  v21(&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v49 = v13 + 8;
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v22 = v42;
  sub_3EBF04();
  (*(v44 + 8))(v7, v45);
  (*(v43 + 8))(v11, v22);
  v23 = v41;
  v21(v17, v41);
  v24 = v20;
  v25 = v20;
  v26 = v23;
  (*(v13 + 16))(v17, v24, v23);
  sub_1F958(v50 + 64, &v53);
  v27 = v46;
  sub_325788(v51, v46, type metadata accessor for FetchPageIntent);
  v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v47 + 80) + v29 + 40) & ~*(v47 + 80);
  v31 = swift_allocObject();
  (*(v13 + 32))(v31 + v28, v17, v26);
  sub_1D4F0(&v53, v31 + v29);
  sub_3259B8(v27, v31 + v30, type metadata accessor for FetchPageIntent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501868);
  v32 = sub_3ECE04();
  v33 = sub_3ED6F4();
  v34 = v52;
  (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = &unk_4194B8;
  v35[5] = v31;
  v35[6] = v32;

  sub_E8ECC(0, 0, v34, &unk_4194C0, v35);

  v36 = sub_801B4();
  v37 = sub_3EDBC4();
  v54 = v36;
  v55 = &protocol witness table for OS_dispatch_queue;
  *&v53 = v37;
  type metadata accessor for Page();
  v38 = sub_3ECD74();

  v21(v25, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(&v53);
  return v38;
}

uint64_t sub_31B0A4(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v2 - 8);
  v46 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  v7 = sub_3EC284();
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EBF94();
  v36 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  sub_3EBF84();
  JSONContext.withActionKinds()(v16);
  v20 = *(v12 + 8);
  v20(&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v41 = v12 + 8;
  v42 = v20;
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v21 = v37;
  sub_3EBF04();
  (*(v39 + 8))(v6, v40);
  (*(v38 + 8))(v10, v21);
  v22 = v36;
  v20(v16, v36);
  (*(v12 + 16))(v16, v19, v22);
  sub_1F958(v43 + 64, &v47);
  v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v12 + 32))(v25 + v23, v16, v22);
  sub_1D4F0(&v47, v25 + v24);
  v26 = (v25 + ((v24 + 47) & 0xFFFFFFFFFFFFFFF8));
  v27 = v45;
  *v26 = v44;
  v26[1] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501870);

  v28 = sub_3ECE04();
  v29 = sub_3ED6F4();
  v30 = v46;
  (*(*(v29 - 8) + 56))(v46, 1, 1, v29);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = &unk_419450;
  v31[5] = v25;
  v31[6] = v28;

  sub_E8ECC(0, 0, v30, &unk_419460, v31);

  v32 = sub_801B4();
  v33 = sub_3EDBC4();
  v48 = v32;
  v49 = &protocol witness table for OS_dispatch_queue;
  *&v47 = v33;
  type metadata accessor for SearchHintsPage();
  v34 = sub_3ECD74();

  v42(v19, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(&v47);
  return v34;
}

uint64_t sub_31B5AC(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v2 - 8);
  v46 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  v7 = sub_3EC284();
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EBF94();
  v36 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  sub_3EBF84();
  JSONContext.withActionKinds()(v16);
  v20 = *(v12 + 8);
  v20(&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v41 = v12 + 8;
  v42 = v20;
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v21 = v37;
  sub_3EBF04();
  (*(v39 + 8))(v6, v40);
  (*(v38 + 8))(v10, v21);
  v22 = v36;
  v20(v16, v36);
  (*(v12 + 16))(v16, v19, v22);
  sub_1F958(v43 + 64, &v47);
  v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v12 + 32))(v25 + v23, v16, v22);
  sub_1D4F0(&v47, v25 + v24);
  v26 = (v25 + ((v24 + 47) & 0xFFFFFFFFFFFFFFF8));
  v27 = v45;
  *v26 = v44;
  v26[1] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7BF8);

  v28 = sub_3ECE04();
  v29 = sub_3ED6F4();
  v30 = v46;
  (*(*(v29 - 8) + 56))(v46, 1, 1, v29);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = &unk_419470;
  v31[5] = v25;
  v31[6] = v28;

  sub_E8ECC(0, 0, v30, &unk_419480, v31);

  v32 = sub_801B4();
  v33 = sub_3EDBC4();
  v48 = v32;
  v49 = &protocol witness table for OS_dispatch_queue;
  *&v47 = v33;
  type metadata accessor for GroupedSearchResultsPage();
  v34 = sub_3ECD74();

  v42(v19, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(&v47);
  return v34;
}

uint64_t sub_31BAB4(uint64_t a1)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v1 - 8);
  v52 = &v40 - v2;
  v3 = type metadata accessor for SearchLandingPageIntent();
  v47 = *(v3 - 8);
  v48 = *(v47 + 64);
  __chkstk_darwin(v3 - 8);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  v8 = sub_3EC284();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EBF94();
  v41 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  sub_3EBF84();
  JSONContext.withActionKinds()(v17);
  v21 = *(v13 + 8);
  v21(&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v49 = v13 + 8;
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v22 = v42;
  sub_3EBF04();
  (*(v44 + 8))(v7, v45);
  (*(v43 + 8))(v11, v22);
  v23 = v41;
  v21(v17, v41);
  v24 = v20;
  v25 = v20;
  v26 = v23;
  (*(v13 + 16))(v17, v24, v23);
  sub_1F958(v50 + 64, &v53);
  v27 = v46;
  sub_325788(v51, v46, type metadata accessor for SearchLandingPageIntent);
  v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v47 + 80) + v29 + 40) & ~*(v47 + 80);
  v31 = swift_allocObject();
  (*(v13 + 32))(v31 + v28, v17, v26);
  sub_1D4F0(&v53, v31 + v29);
  sub_3259B8(v27, v31 + v30, type metadata accessor for SearchLandingPageIntent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501868);
  v32 = sub_3ECE04();
  v33 = sub_3ED6F4();
  v34 = v52;
  (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = &unk_419430;
  v35[5] = v31;
  v35[6] = v32;

  sub_E8ECC(0, 0, v34, &unk_419440, v35);

  v36 = sub_801B4();
  v37 = sub_3EDBC4();
  v54 = v36;
  v55 = &protocol witness table for OS_dispatch_queue;
  *&v53 = v37;
  type metadata accessor for Page();
  v38 = sub_3ECD74();

  v21(v25, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(&v53);
  return v38;
}

uint64_t sub_31C07C(uint64_t a1, unsigned int a2)
{
  v44 = a2;
  v45 = a1;
  v46 = a2 >> 8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v2 - 8);
  v47 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v7 = sub_3EC284();
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EBF94();
  v36 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  sub_3EBF84();
  JSONContext.withActionKinds()(v16);
  v20 = *(v12 + 8);
  v20(&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v41 = v12 + 8;
  v42 = v20;
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v21 = v37;
  sub_3EBF04();
  (*(v39 + 8))(v6, v40);
  (*(v38 + 8))(v10, v21);
  v22 = v36;
  v20(v16, v36);
  (*(v12 + 16))(v16, v19, v22);
  sub_1F958(v43 + 64, &v48);
  v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v12 + 32))(v25 + v23, v16, v22);
  sub_1D4F0(&v48, v25 + v24);
  v26 = v25 + ((v24 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v26 = v45;
  *(v26 + 8) = v44;
  *(v26 + 9) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501868);
  v27 = sub_3ECE04();
  v28 = sub_3ED6F4();
  v29 = v47;
  (*(*(v28 - 8) + 56))(v47, 1, 1, v28);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = &unk_4196C8;
  v30[5] = v25;
  v30[6] = v27;

  sub_E8ECC(0, 0, v29, &unk_4196D0, v30);

  v31 = sub_801B4();
  v32 = sub_3EDBC4();
  v49 = v31;
  v50 = &protocol witness table for OS_dispatch_queue;
  *&v48 = v32;
  type metadata accessor for Page();
  v33 = sub_3ECD74();

  v42(v19, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(&v48);
  return v33;
}

uint64_t sub_31C598(uint64_t a1)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v1 - 8);
  v52 = &v40 - v2;
  ShelfIntent = type metadata accessor for FetchShelfIntent();
  v47 = *(ShelfIntent - 8);
  v48 = *(v47 + 64);
  __chkstk_darwin(ShelfIntent - 8);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  v8 = sub_3EC284();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EBF94();
  v41 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  sub_3EBF84();
  JSONContext.withActionKinds()(v17);
  v21 = *(v13 + 8);
  v21(&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v49 = v13 + 8;
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v22 = v42;
  sub_3EBF04();
  (*(v44 + 8))(v7, v45);
  (*(v43 + 8))(v11, v22);
  v23 = v41;
  v21(v17, v41);
  v24 = v20;
  v25 = v20;
  v26 = v23;
  (*(v13 + 16))(v17, v24, v23);
  sub_1F958(v50 + 64, &v53);
  v27 = v46;
  sub_325788(v51, v46, type metadata accessor for FetchShelfIntent);
  v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v47 + 80) + v29 + 40) & ~*(v47 + 80);
  v31 = swift_allocObject();
  (*(v13 + 32))(v31 + v28, v17, v26);
  sub_1D4F0(&v53, v31 + v29);
  sub_3259B8(v27, v31 + v30, type metadata accessor for FetchShelfIntent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501860);
  v32 = sub_3ECE04();
  v33 = sub_3ED6F4();
  v34 = v52;
  (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = &unk_419410;
  v35[5] = v31;
  v35[6] = v32;

  sub_E8ECC(0, 0, v34, &unk_419420, v35);

  v36 = sub_801B4();
  v37 = sub_3EDBC4();
  v54 = v36;
  v55 = &protocol witness table for OS_dispatch_queue;
  *&v53 = v37;
  type metadata accessor for Shelf(0);
  v38 = sub_3ECD74();

  v21(v25, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(&v53);
  return v38;
}

uint64_t sub_31CB60(uint64_t a1)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v1 - 8);
  v43 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v5 = &v33 - v4;
  v6 = sub_3EC284();
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBF94();
  v34 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  sub_3EBF84();
  JSONContext.withActionKinds()(v15);
  v19 = *(v11 + 8);
  v19(&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v39 = v11 + 8;
  v40 = v19;
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v20 = v35;
  sub_3EBF04();
  (*(v37 + 8))(v5, v38);
  (*(v36 + 8))(v9, v20);
  v21 = v34;
  v19(v15, v34);
  (*(v11 + 16))(v15, v18, v21);
  sub_1F958(v41 + 64, &v44);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v11 + 32))(v24 + v22, v15, v21);
  sub_1D4F0(&v44, v24 + v23);
  *(v24 + ((v23 + 47) & 0xFFFFFFFFFFFFFFF8)) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5018D0);
  v25 = sub_3ECE04();
  v26 = sub_3ED6F4();
  v27 = v43;
  (*(*(v26 - 8) + 56))(v43, 1, 1, v26);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = &unk_419698;
  v28[5] = v24;
  v28[6] = v25;

  sub_E8ECC(0, 0, v27, &unk_4196A8, v28);

  v29 = sub_801B4();
  v30 = sub_3EDBC4();
  v45 = v29;
  v46 = &protocol witness table for OS_dispatch_queue;
  *&v44 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1EE0);
  v31 = sub_3ECD74();

  v40(v18, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(&v44);
  return v31;
}

uint64_t sub_31D064(uint64_t a1)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v1 - 8);
  v43 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v5 = &v33 - v4;
  v6 = sub_3EC284();
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBF94();
  v34 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  sub_3EBF84();
  JSONContext.withActionKinds()(v15);
  v19 = *(v11 + 8);
  v19(&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v39 = v11 + 8;
  v40 = v19;
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v20 = v35;
  sub_3EBF04();
  (*(v37 + 8))(v5, v38);
  (*(v36 + 8))(v9, v20);
  v21 = v34;
  v19(v15, v34);
  (*(v11 + 16))(v15, v18, v21);
  sub_1F958(v41 + 64, &v44);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v11 + 32))(v24 + v22, v15, v21);
  sub_1D4F0(&v44, v24 + v23);
  *(v24 + ((v23 + 47) & 0xFFFFFFFFFFFFFFF8)) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5018C8);
  v25 = sub_3ECE04();
  v26 = sub_3ED6F4();
  v27 = v43;
  (*(*(v26 - 8) + 56))(v43, 1, 1, v26);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = &unk_419670;
  v28[5] = v24;
  v28[6] = v25;

  sub_E8ECC(0, 0, v27, &unk_419680, v28);

  v29 = sub_801B4();
  v30 = sub_3EDBC4();
  v45 = v29;
  v46 = &protocol witness table for OS_dispatch_queue;
  *&v44 = v30;
  type metadata accessor for UpsellInformation();
  v31 = sub_3ECD74();

  v40(v18, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(&v44);
  return v31;
}

uint64_t sub_31D55C(uint64_t a1)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v1 - 8);
  v42 = &v34 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v5 = &v34 - v4;
  v6 = sub_3EC284();
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBF94();
  v35 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  sub_3EBF84();
  JSONContext.withActionKinds()(v15);
  v19 = *(v11 + 8);
  v19(&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v20 = v36;
  sub_3EBF04();
  (*(v38 + 8))(v5, v39);
  (*(v37 + 8))(v9, v20);
  v21 = v35;
  v19(v15, v35);
  v22 = v21;
  (*(v11 + 16))(v15, v18, v21);
  sub_1F958(v40 + 64, &v43);
  v23 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v11 + 32))(v25 + v23, v15, v22);
  sub_1D4F0(&v43, v25 + v24);
  *(v25 + ((v24 + 47) & 0xFFFFFFFFFFFFFFF8)) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5018B8);

  v26 = sub_3ECE04();
  v27 = sub_3ED6F4();
  v28 = v42;
  (*(*(v27 - 8) + 56))(v42, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = &unk_419610;
  v29[5] = v25;
  v29[6] = v26;

  sub_E8ECC(0, 0, v28, &unk_419620, v29);

  v30 = sub_801B4();
  v31 = sub_3EDBC4();
  v44 = v30;
  v45 = &protocol witness table for OS_dispatch_queue;
  *&v43 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14C0);
  v32 = sub_3ECD74();

  v19(v18, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(&v43);
  return v32;
}

uint64_t sub_31DA68(uint64_t a1, int a2)
{
  v43 = a1;
  v44 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v2 - 8);
  v45 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v7 = sub_3EC284();
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EBF94();
  v36 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  sub_3EBF84();
  JSONContext.withActionKinds()(v16);
  v20 = *(v12 + 8);
  v20(&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v41 = v20;
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v21 = v37;
  sub_3EBF04();
  (*(v39 + 8))(v6, v40);
  (*(v38 + 8))(v10, v21);
  v22 = v36;
  v20(v16, v36);
  (*(v12 + 16))(v16, v19, v22);
  sub_1F958(v42 + 64, &v46);
  v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v12 + 32))(v25 + v23, v16, v22);
  sub_1D4F0(&v46, v25 + v24);
  v26 = v25 + ((v24 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v26 = v43;
  *(v26 + 8) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501890);
  v27 = sub_3ECE04();
  v28 = sub_3ED6F4();
  v29 = v45;
  (*(*(v28 - 8) + 56))(v45, 1, 1, v28);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = &unk_4195F0;
  v30[5] = v25;
  v30[6] = v27;

  sub_E8ECC(0, 0, v29, &unk_4195F8, v30);

  v31 = sub_801B4();
  v32 = sub_3EDBC4();
  v47 = v31;
  v48 = &protocol witness table for OS_dispatch_queue;
  *&v46 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1F80);
  v33 = sub_3ECD74();

  v41(v19, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(&v46);
  return v33;
}

uint64_t sub_31DF80(uint64_t a1)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v1 - 8);
  v43 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v5 = &v33 - v4;
  v6 = sub_3EC284();
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBF94();
  v34 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  sub_3EBF84();
  JSONContext.withActionKinds()(v15);
  v19 = *(v11 + 8);
  v19(&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v39 = v11 + 8;
  v40 = v19;
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v20 = v35;
  sub_3EBF04();
  (*(v37 + 8))(v5, v38);
  (*(v36 + 8))(v9, v20);
  v21 = v34;
  v19(v15, v34);
  (*(v11 + 16))(v15, v18, v21);
  sub_1F958(v41 + 64, &v44);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v11 + 32))(v24 + v22, v15, v21);
  sub_1D4F0(&v44, v24 + v23);
  *(v24 + ((v23 + 47) & 0xFFFFFFFFFFFFFFF8)) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5018B0);
  v25 = sub_3ECE04();
  v26 = sub_3ED6F4();
  v27 = v43;
  (*(*(v26 - 8) + 56))(v43, 1, 1, v26);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = &unk_4195C8;
  v28[5] = v24;
  v28[6] = v25;

  sub_E8ECC(0, 0, v27, &unk_4195D8, v28);

  v29 = sub_801B4();
  v30 = sub_3EDBC4();
  v45 = v29;
  v46 = &protocol witness table for OS_dispatch_queue;
  *&v44 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0878);
  v31 = sub_3ECD74();

  v40(v18, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(&v44);
  return v31;
}

uint64_t sub_31E484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a1;
  v49 = a2;
  v50 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v3 - 8);
  v51 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v7 = &v41 - v6;
  v8 = sub_3EC284();
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EBF94();
  v42 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  sub_3EBF84();
  JSONContext.withActionKinds()(v17);
  v21 = *(v13 + 8);
  v21(&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v22 = v43;
  sub_3EBF04();
  (*(v45 + 8))(v7, v46);
  (*(v44 + 8))(v11, v22);
  v23 = v42;
  v21(v17, v42);
  v24 = v21;
  v25 = v20;
  v26 = v20;
  v27 = v23;
  (*(v13 + 16))(v17, v25, v23);
  sub_1F958(v47 + 64, &v52);
  v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v13 + 32))(v30 + v28, v17, v27);
  sub_1D4F0(&v52, v30 + v29);
  v31 = (v30 + ((v29 + 47) & 0xFFFFFFFFFFFFFFF8));
  v32 = v49;
  *v31 = v48;
  v31[1] = v32;
  v31[2] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501868);

  v33 = sub_3ECE04();
  v34 = sub_3ED6F4();
  v35 = v51;
  (*(*(v34 - 8) + 56))(v51, 1, 1, v34);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = &unk_419580;
  v36[5] = v30;
  v36[6] = v33;

  sub_E8ECC(0, 0, v35, &unk_419588, v36);

  v37 = sub_801B4();
  v38 = sub_3EDBC4();
  v53 = v37;
  v54 = &protocol witness table for OS_dispatch_queue;
  *&v52 = v38;
  type metadata accessor for Page();
  v39 = sub_3ECD74();

  v24(v26, v27);
  __swift_destroy_boxed_opaque_existential_1Tm(&v52);
  return v39;
}

uint64_t sub_31E9A8(uint64_t a1)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v1 - 8);
  v52 = &v40 - v2;
  v3 = type metadata accessor for HighlightResourceIntent();
  v47 = *(v3 - 8);
  v48 = *(v47 + 64);
  __chkstk_darwin(v3 - 8);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  v8 = sub_3EC284();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EBF94();
  v41 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  sub_3EBF84();
  JSONContext.withActionKinds()(v17);
  v21 = *(v13 + 8);
  v21(&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v49 = v13 + 8;
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v22 = v42;
  sub_3EBF04();
  (*(v44 + 8))(v7, v45);
  (*(v43 + 8))(v11, v22);
  v23 = v41;
  v21(v17, v41);
  v24 = v20;
  v25 = v20;
  v26 = v23;
  (*(v13 + 16))(v17, v24, v23);
  sub_1F958(v50 + 64, &v53);
  v27 = v46;
  sub_325788(v51, v46, type metadata accessor for HighlightResourceIntent);
  v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v47 + 80) + v29 + 40) & ~*(v47 + 80);
  v31 = swift_allocObject();
  (*(v13 + 32))(v31 + v28, v17, v26);
  sub_1D4F0(&v53, v31 + v29);
  sub_3259B8(v27, v31 + v30, type metadata accessor for HighlightResourceIntent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5018A8);
  v32 = sub_3ECE04();
  v33 = sub_3ED6F4();
  v34 = v52;
  (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = &unk_419560;
  v35[5] = v31;
  v35[6] = v32;

  sub_E8ECC(0, 0, v34, &unk_419570, v35);

  v36 = sub_801B4();
  v37 = sub_3EDBC4();
  v54 = v36;
  v55 = &protocol witness table for OS_dispatch_queue;
  *&v53 = v37;
  type metadata accessor for HighlightResource();
  v38 = sub_3ECD74();

  v21(v25, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(&v53);
  return v38;
}

uint64_t sub_31EF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a1;
  v49 = a2;
  v50 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v3 - 8);
  v51 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v7 = &v41 - v6;
  v8 = sub_3EC284();
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EBF94();
  v42 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  sub_3EBF84();
  JSONContext.withActionKinds()(v17);
  v21 = *(v13 + 8);
  v21(&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  v22 = v43;
  sub_3EBF04();
  (*(v45 + 8))(v7, v46);
  (*(v44 + 8))(v11, v22);
  v23 = v42;
  v21(v17, v42);
  v24 = v21;
  v25 = v20;
  v26 = v20;
  v27 = v23;
  (*(v13 + 16))(v17, v25, v23);
  sub_1F958(v47 + 64, &v52);
  v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v13 + 32))(v30 + v28, v17, v27);
  sub_1D4F0(&v52, v30 + v29);
  v31 = (v30 + ((v29 + 47) & 0xFFFFFFFFFFFFFFF8));
  v32 = v49;
  *v31 = v48;
  v31[1] = v32;
  v31[2] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501860);

  v33 = sub_3ECE04();
  v34 = sub_3ED6F4();
  v35 = v51;
  (*(*(v34 - 8) + 56))(v51, 1, 1, v34);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = &unk_4194F8;
  v36[5] = v30;
  v36[6] = v33;

  sub_E8ECC(0, 0, v35, &unk_419500, v36);

  v37 = sub_801B4();
  v38 = sub_3EDBC4();
  v53 = v37;
  v54 = &protocol witness table for OS_dispatch_queue;
  *&v52 = v38;
  type metadata accessor for Shelf(0);
  v39 = sub_3ECD74();

  v24(v26, v27);
  __swift_destroy_boxed_opaque_existential_1Tm(&v52);
  return v39;
}

uint64_t sub_31F494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[3] = a3;
  return _swift_task_switch(sub_31F4B8, 0, 0);
}

uint64_t sub_31F4B8()
{
  v1 = v0[5];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[6] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = sub_1007BC();
  *v5 = v0;
  v5[1] = sub_31F5C4;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 2, v0 + 3, v2, &type metadata for FetchEpisodeOffersIntent, v6, v3, v4);
}

uint64_t sub_31F5C4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_327198;
  }

  else
  {
    v2 = sub_32727C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_31F6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[3] = a3;
  return _swift_task_switch(sub_31F6FC, 0, 0);
}

uint64_t sub_31F6FC()
{
  v1 = v0[5];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[6] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = sub_113FD0();
  *v5 = v0;
  v5[1] = sub_31F808;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 2, v0 + 3, v2, &type metadata for EpisodeUpsellShelfIntent, v6, v3, v4);
}

uint64_t sub_31F808()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_31F984;
  }

  else
  {
    v2 = sub_31F91C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_31F91C()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_31F984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_31F9E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_31FA08, 0, 0);
}

uint64_t sub_31FA08()
{
  v1 = v0[4];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[5] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[6] = v5;
  v7 = sub_1240A4();
  *v5 = v0;
  v5[1] = sub_31FB10;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 2, v6, v2, &type metadata for UpNextScoringWeightsIntent, v7, v3, v4);
}

uint64_t sub_31FB10()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_31FC8C;
  }

  else
  {
    v2 = sub_31FC24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_31FC24()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_31FC8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_31FCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[3] = a3;
  return _swift_task_switch(sub_31FD14, 0, 0);
}

uint64_t sub_31FD14()
{
  v1 = v0[5];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[6] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = sub_11ACBC();
  *v5 = v0;
  v5[1] = sub_31F5C4;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 2, v0 + 3, v2, &type metadata for FromChannelShelvesIntent, v6, v3, v4);
}

uint64_t sub_31FE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_31FE44, 0, 0);
}

uint64_t sub_31FE44()
{
  v1 = v0[4];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[6] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = type metadata accessor for RecommendationsShelvesIntent();
  v7 = sub_325C54(&qword_4F2AB8, type metadata accessor for RecommendationsShelvesIntent);
  *v5 = v0;
  v5[1] = sub_31FF90;
  v8 = v0[5];
  v9 = v0[2];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v9, v8, v2, v6, v7, v3, v4);
}

uint64_t sub_31FF90()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_327198;
  }

  else
  {
    v2 = sub_327288;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_3200A4(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4 & 1;
  *(v4 + 25) = HIBYTE(a4) & 1;
  return _swift_task_switch(sub_3200D8, 0, 0);
}

uint64_t sub_3200D8()
{
  v1 = v0[6];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[7] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_123A14();
  *v5 = v0;
  v5[1] = sub_3201E4;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 4, v0 + 2, v2, &type metadata for ShowPageHeaderAndFooterShelvesIntent, v6, v3, v4);
}

uint64_t sub_3201E4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_32719C;
  }

  else
  {
    v2 = sub_327280;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_3202F8(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_320328, 0, 0);
}

uint64_t sub_320328()
{
  v1 = v0[6];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[7] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_110290();
  *v5 = v0;
  v5[1] = sub_320434;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 4, v0 + 2, v2, &type metadata for ChannelPageIntent, v6, v3, v4);
}

uint64_t sub_320434()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_3205B0;
  }

  else
  {
    v2 = sub_320548;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_320548()
{

  v1 = *(v0 + 32);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_3205B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_320614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[3] = a3;
  return _swift_task_switch(sub_320638, 0, 0);
}

uint64_t sub_320638()
{
  v1 = v0[5];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[6] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = sub_1109F8();
  *v5 = v0;
  v5[1] = sub_31F5C4;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 2, v0 + 3, v2, &type metadata for ChannelSubscriptionOffersIntent, v6, v3, v4);
}

uint64_t sub_320744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[3] = a3;
  return _swift_task_switch(sub_320768, 0, 0);
}

uint64_t sub_320768()
{
  v1 = v0[5];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[6] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = sub_111078();
  *v5 = v0;
  v5[1] = sub_31F5C4;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 2, v0 + 3, v2, &type metadata for ChannelUpsellInformationIntent, v6, v3, v4);
}

uint64_t sub_320874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[3] = a3;
  return _swift_task_switch(sub_320898, 0, 0);
}

uint64_t sub_320898()
{
  v1 = v0[5];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[6] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = sub_118BD0();
  *v5 = v0;
  v5[1] = sub_31F5C4;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 2, v0 + 3, v2, &type metadata for FetchSearchEpisodeLockupsIntent, v6, v3, v4);
}

uint64_t sub_3209A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_3209CC, 0, 0);
}

uint64_t sub_3209CC()
{
  v1 = v0[6];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[7] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_111B0C();
  *v5 = v0;
  v5[1] = sub_320434;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 4, v0 + 2, v2, &type metadata for EpisodePageFooterShelvesIntent, v6, v3, v4);
}

uint64_t sub_320AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a1;
  v5[7] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  return _swift_task_switch(sub_320B00, 0, 0);
}

uint64_t sub_320B00()
{
  v1 = v0[7];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[8] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[9] = v5;
  v6 = sub_11DC5C();
  *v5 = v0;
  v5[1] = sub_320C0C;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 5, v0 + 2, v2, &type metadata for HighlightsPageIntent, v6, v3, v4);
}

uint64_t sub_320C0C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_3271A0;
  }

  else
  {
    v2 = sub_327284;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_320D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_320D44, 0, 0);
}

uint64_t sub_320D44()
{
  v1 = v0[4];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[6] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = type metadata accessor for HighlightResourceIntent();
  v7 = sub_325C54(&qword_4F2738, type metadata accessor for HighlightResourceIntent);
  *v5 = v0;
  v5[1] = sub_320E90;
  v8 = v0[5];
  v9 = v0[2];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v9, v8, v2, v6, v7, v3, v4);
}

uint64_t sub_320E90()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_31F984;
  }

  else
  {
    v2 = sub_320FA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_320FA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_321008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a1;
  v5[7] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  return _swift_task_switch(sub_321030, 0, 0);
}

uint64_t sub_321030()
{
  v1 = v0[7];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[8] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[9] = v5;
  v6 = sub_122F5C();
  *v5 = v0;
  v5[1] = sub_32113C;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 5, v0 + 2, v2, &type metadata for SharedWithYouShelfIntent, v6, v3, v4);
}

uint64_t sub_32113C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_3212B8;
  }

  else
  {
    v2 = sub_321250;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_321250()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_3212B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_321454()
{
  v38 = *v0;
  v1 = sub_3EBBD4();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v35 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - v4;
  v6 = sub_3EC284();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3EBF94();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  __chkstk_darwin(v15);
  v40 = &v30 - v16;
  v17 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v18 = sub_3ED204();
  v39 = v17;
  LODWORD(v17) = [v17 BOOLForKey:v18];

  if (v17)
  {
    sub_3EBF84();
    JSONContext.withActionKinds()(v14);
    v19 = *(v10 + 8);
    v19(&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    v31 = v19;
    sub_93FF8();
    sub_3EC294();
    sub_3EBF34();
    sub_3EBF04();
    (*(v33 + 8))(v5, v34);
    (*(v32 + 8))(v8, v6);
    v19(v14, v9);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501890);
    v20 = sub_801B4();
    v22 = v35;
    v21 = v36;
    v23 = v37;
    (*(v36 + 104))(v35, enum case for DispatchQoS.QoSClass.default(_:), v37);
    v24 = sub_3EDC04();
    (*(v21 + 8))(v22, v23);
    v42 = v20;
    v43 = &protocol witness table for OS_dispatch_queue;
    v41 = v24;
    v25 = v40;
    (*(v10 + 16))(v14, v40, v9);
    v26 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v27 = swift_allocObject();
    (*(v10 + 32))(v27 + v26, v14, v9);
    *(v27 + ((v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v38;
    v28 = sub_3ECD34();

    v31(v25, v9);
    return v28;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_32195C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a1;
  v48 = a2;
  v46 = sub_3EBF94();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3E5DC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  v10 = sub_3EBDF4();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  __chkstk_darwin(v15);
  v51 = &v42 - v16;
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  __chkstk_darwin(v20);
  v22 = &v42 - v21;
  v23 = [objc_opt_self() sharedDocumentsDirectory];
  sub_3E5D44();

  sub_3E5D24();
  v24 = *(v4 + 8);
  v24(v6, v3);
  v25 = v54;
  sub_3E5DD4();
  if (v25)
  {

    v24(v9, v3);
    v30 = objc_allocWithZone(NSError);
    v31 = sub_3ED204();
    [v30 initWithDomain:v31 code:0 userInfo:0];

    return swift_willThrow();
  }

  else
  {
    v26 = v19;
    v42 = v22;
    v54 = v14;
    v27 = v49;
    v28 = v50;
    v29 = v51;
    sub_3EBCE4();
    v24(v9, v3);
    v32 = v27;
    v33 = *(v27 + 32);
    v34 = v29;
    v35 = v28;
    v33(v26, v34, v28);
    v36 = v42;
    v33(v42, v26, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501898);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_3F5630;
    sub_3EBDD4();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5018A0);
    v52 = v37;
    v38 = v54;
    sub_3EBDE4();
    (*(v32 + 16))(v43, v38, v35);
    (*(v44 + 16))(v45, v47, v46);
    type metadata accessor for Shelf(0);
    sub_325C54(&qword_4F1F88, type metadata accessor for Shelf);
    v39 = sub_3ED644();
    v40 = *(v32 + 8);
    v40(v38, v35);
    result = (v40)(v36, v35);
    *v48 = v39;
  }

  return result;
}

uint64_t sub_321E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E5DC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HighlightResourceIntent();
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4, v10);
  *v12 = 0;
  v12[8] = 1;
  v13 = *(v9 + 28);
  (*(v5 + 32))(&v12[v13], v7, v4);
  (*(v5 + 56))(&v12[v13], 0, 1, v4);
  *&v12[*(v9 + 32)] = a2;

  sub_31E9A8(v12);
  v17[3] = sub_3EC654();
  v17[4] = &protocol witness table for SyncTaskScheduler;
  __swift_allocate_boxed_opaque_existential_0Tm(v17);
  sub_3EC644();
  type metadata accessor for HighlightIdentifier();
  v14 = sub_3ECD74();

  sub_325728(v12, type metadata accessor for HighlightResourceIntent);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v14;
}

uint64_t sub_3220C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for HighlightResource();
  __chkstk_darwin(v4 - 8);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_325788(a1, v6, type metadata accessor for HighlightResource);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];

  sub_325728(v6, type metadata accessor for HighlightResource);
  type metadata accessor for HighlightIdentifier();
  result = swift_allocObject();
  *(result + 16) = v8;
  *(result + 24) = v7;
  *(result + 32) = v9;
  *(result + 40) = 0;
  *a2 = result;
  return result;
}

uint64_t sub_3221B8(uint64_t a1, char a2)
{
  v5 = type metadata accessor for RecommendationsShelvesIntent();
  __chkstk_darwin(v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_321454();
  if (!result)
  {
    v9 = sub_3E8FB4();
    (*(*(v9 - 8) + 16))(v7, a1, v9);
    v7[*(v5 + 20)] = a2 & 1;
    sub_319FF4(v7);
    sub_1F958(v2 + 16, &v13);
    v10 = swift_allocObject();
    sub_1D4F0(&v13, v10 + 16);
    v14 = sub_3EC654();
    v15 = &protocol witness table for SyncTaskScheduler;
    __swift_allocate_boxed_opaque_existential_0Tm(&v13);
    sub_3EC644();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1F80);
    v11 = sub_3ECD74();

    sub_325728(v7, type metadata accessor for RecommendationsShelvesIntent);
    __swift_destroy_boxed_opaque_existential_1Tm(&v13);
    return v11;
  }

  return result;
}

uint64_t sub_322364@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  StoreDataCache.setObject(_:forKey:)(a1, v7, v5, v6);
  *a3 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1668) + 36));
}

uint64_t sub_32251C(uint64_t a1)
{
  sub_31DF80(a1);
  v3[3] = sub_3EC654();
  v3[4] = &protocol witness table for SyncTaskScheduler;
  __swift_allocate_boxed_opaque_existential_0Tm(v3);
  sub_3EC644();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  v1 = sub_3ECD74();

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return v1;
}

uint64_t sub_322620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightResourceIntent();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = a1;
  v7[8] = 0;
  v8 = *(v5 + 28);
  v9 = sub_3E5DC4();
  (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
  *&v7[*(v5 + 32)] = a2;

  sub_31E9A8(v7);
  v13[3] = sub_3EC654();
  v13[4] = &protocol witness table for SyncTaskScheduler;
  __swift_allocate_boxed_opaque_existential_0Tm(v13);
  sub_3EC644();
  type metadata accessor for HighlightIdentifier();
  v10 = sub_3ECD74();

  sub_325728(v7, type metadata accessor for HighlightResourceIntent);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return v10;
}

uint64_t sub_3227D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{

  v10 = a6(a1, a2, a3);

  return v10;
}

uint64_t sub_3228D0(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_31A5C0(a1, v3 & 0xFFFFFFFE | a2 & 1);
}

uint64_t sub_3229F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, double), uint64_t (*a6)(char *), uint64_t (*a7)(void))
{
  v11 = a4(0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v18 - v13;
  v15 = a5(0, v12);
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  v16 = a6(v14);
  sub_325728(v14, a7);
  return v16;
}

uint64_t sub_322AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v7 = *a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_32722C;

  return sub_31F494(a2, a3, v7);
}

uint64_t sub_322BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v7 = *a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_32722C;

  return sub_31F6D8(a2, a3, v7);
}

id sub_322C60@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_322C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_32722C;

  return sub_31F9E8(a2, a3);
}

uint64_t sub_322D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v7 = *a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_32722C;

  return sub_31FCF0(a2, a3, v7);
}

uint64_t sub_322E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a4;
  v8 = *(a4 + 8);
  v9 = *(a4 + 9);
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  if (v9)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  *v10 = v4;
  v10[1] = sub_32722C;

  return sub_3200A4(a2, a3, v7, v11 | v8);
}

uint64_t sub_322ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_322EF4, 0, 0);
}

uint64_t sub_322EF4()
{
  v1 = v0[5];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[7] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  PageIntent = type metadata accessor for FetchPageIntent();
  v7 = sub_325C54(&qword_4F22E0, type metadata accessor for FetchPageIntent);
  *v5 = v0;
  v5[1] = sub_323040;
  v8 = v0[6];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 2, v8, v2, PageIntent, v7, v3, v4);
}

uint64_t sub_323040()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_32719C;
  }

  else
  {
    v2 = sub_327230;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_323154(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[5] = a2;
  v4[6] = a3;
  v5 = a4[1];
  v4[2] = *a4;
  v4[3] = v5;
  v4[4] = a1;
  return _swift_task_switch(sub_323180, 0, 0);
}

uint64_t sub_323180()
{
  v1 = v0[6];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[7] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_1216DC();
  *v5 = v0;
  v5[1] = sub_32328C;
  v7 = v0[4];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v7, v0 + 2, v2, &type metadata for SearchHintsPageIntent, v6, v3, v4);
}

uint64_t sub_32328C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_3205B0;
  }

  else
  {
    v2 = sub_3233A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_3233A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_323404(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[5] = a2;
  v4[6] = a3;
  v5 = a4[1];
  v4[2] = *a4;
  v4[3] = v5;
  v4[4] = a1;
  return _swift_task_switch(sub_323430, 0, 0);
}

uint64_t sub_323430()
{
  v1 = v0[6];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[7] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_11B26C();
  *v5 = v0;
  v5[1] = sub_32353C;
  v7 = v0[4];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v7, v0 + 2, v2, &type metadata for GroupedSearchResultsIntent, v6, v3, v4);
}

uint64_t sub_32353C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_32719C;
  }

  else
  {
    v2 = sub_3271BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_323650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_323674, 0, 0);
}

uint64_t sub_323674()
{
  v1 = v0[5];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[7] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = type metadata accessor for SearchLandingPageIntent();
  v7 = sub_325C54(&qword_4F2C78, type metadata accessor for SearchLandingPageIntent);
  *v5 = v0;
  v5[1] = sub_3237C0;
  v8 = v0[6];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 2, v8, v2, v6, v7, v3, v4);
}

uint64_t sub_3237C0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_3205B0;
  }

  else
  {
    v2 = sub_3238D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_3238D4()
{
  v1 = v0[3];

  *v1 = v0[2];
  v2 = v0[1];

  return v2();
}

uint64_t sub_323944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a4;
  v8 = *(a4 + 8);
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_F7808;

  return sub_3202F8(a2, a3, v7, v8);
}

uint64_t sub_3239FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_323A20, 0, 0);
}

uint64_t sub_323A20()
{
  v1 = v0[5];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[7] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  ShelfIntent = type metadata accessor for FetchShelfIntent();
  v7 = sub_325C54(&qword_4F24E8, type metadata accessor for FetchShelfIntent);
  *v5 = v0;
  v5[1] = sub_323040;
  v8 = v0[6];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 2, v8, v2, ShelfIntent, v7, v3, v4);
}

uint64_t sub_323B98(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_3EBF94() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for FetchShelfIntent() - 8);
  v9 = (v7 + *(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2400C;

  return sub_3239FC(a1, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_323CF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2400C;

  return sub_E7180(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_323E00(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_3EBF94() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SearchLandingPageIntent() - 8);
  v9 = (v7 + *(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2400C;

  return sub_323650(a1, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_323F60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2400C;

  return sub_E7464(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_324040(uint64_t a1)
{
  v4 = *(sub_3EBF94() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2400C;

  return sub_323154(a1, v1 + v5, v1 + v6, (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_324168(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2400C;

  return sub_E80F4(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_20Tm_0()
{
  v1 = sub_3EBF94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_3242F4(uint64_t a1)
{
  v4 = *(sub_3EBF94() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2400C;

  return sub_323404(a1, v1 + v5, v1 + v6, (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_32441C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2400C;

  return sub_E8438(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_3244F8(uint64_t a1)
{
  v4 = *(sub_3EBF94() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2400C;

  return sub_322E00(a1, v1 + v5, v1 + v6, v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_324620(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2400C;

  return sub_E7BB4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_324728(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_3EBF94() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for FetchPageIntent() - 8);
  v9 = (v7 + *(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2400C;

  return sub_322ED0(a1, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_324888()
{
  v1 = sub_3EBF94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5);

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_324924(uint64_t a1)
{
  v4 = *(sub_3EBF94() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2400C;

  return sub_322C90(a1, v1 + v5, v1 + v6);
}

uint64_t sub_324A40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2400C;

  return sub_E7464(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_324B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v7 = *a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_32722C;

  return sub_320614(a2, a3, v7);
}

uint64_t sub_324BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v7 = *a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_32722C;

  return sub_320744(a2, a3, v7);
}

uint64_t sub_324C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v7 = *a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_32722C;

  return sub_320874(a2, a3, v7);
}

uint64_t sub_324D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a4;
  v8 = *(a4 + 8);
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_32722C;

  return sub_3209A4(a2, a3, v7, v8);
}

uint64_t sub_324DE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[4] = a2;
  v4[5] = a3;
  v4[2] = *a4;
  v4[3] = a1;
  return _swift_task_switch(sub_324E0C, 0, 0);
}

uint64_t sub_324E0C()
{
  v1 = v0[5];
  sub_3EC7F4();
  sub_3EC7E4();
  v2 = sub_3EC7D4();
  v0[6] = v2;

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = sub_1258A8();
  *v5 = v0;
  v5[1] = sub_320E90;
  v7 = v0[3];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v7, v0 + 2, v2, &type metadata for EpisodeUpsellActionIntent, v6, v3, v4);
}

uint64_t sub_324F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_32722C;

  return sub_320AD8(a2, a3, v7, v8, v9);
}

uint64_t sub_324FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_32722C;

  return sub_321008(a2, a3, v7, v8, v9);
}

uint64_t sub_3250A0(uint64_t a1)
{
  v4 = *(sub_3EBF94() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2400C;

  return sub_324FDC(a1, v1 + v5, v1 + v6, (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_3251C8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t objectdestroyTm_11(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v5 = sub_3EBF94();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(a1(0) - 8);
  v11 = *(v10 + 80);
  v12 = (v9 + v11 + 40) & ~v11;
  v13 = *(v10 + 64);
  v14 = v7 | v11;
  (*(v6 + 8))(v2 + v8, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + v9);
  v15 = a2(0);
  (*(*(v15 - 8) + 8))(v2 + v12, v15);

  return _swift_deallocObject(v2, v12 + v13, v14 | 7);
}

uint64_t sub_3253CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_3EBF94() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for RecommendationsShelvesIntent() - 8);
  v9 = (v7 + *(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2400C;

  return sub_31FE20(a1, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_325520(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2400C;

  return sub_E78E0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_3255FC()
{
  v1 = sub_3EBF94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_325728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_325788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3257F0()
{
  v1 = sub_3EBF94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for HighlightResourceIntent();
  v7 = *(*(v6 - 8) + 80);
  v8 = (v5 + v7 + 40) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5);
  v10 = *(v6 + 20);
  v11 = sub_3E5DC4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v0 + v8 + v10, v11);
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_3259B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_325A20(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_3EBF94() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for HighlightResourceIntent() - 8);
  v9 = (v7 + *(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2400C;

  return sub_320D20(a1, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_325B78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2400C;

  return sub_E8C00(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_325C54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_75Tm_0()
{
  v1 = sub_3EBF94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 24, v3 | 7);
}

uint64_t sub_325D60(uint64_t a1)
{
  v4 = *(sub_3EBF94() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2400C;

  return sub_324F18(a1, v1 + v5, v1 + v6, (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_325E8C(uint64_t a1)
{
  v4 = *(sub_3EBF94() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2400C;

  return sub_322BB0(a1, v1 + v5, v1 + v6, (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_325FB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2368C;

  return sub_E7180(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_326090(uint64_t a1)
{
  v4 = *(sub_3EBF94() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2400C;

  return sub_324DE4(a1, v1 + v5, v1 + v6, (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_3261B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2400C;

  return sub_E890C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_326294()
{
  v1 = sub_3EBF94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_326338(uint64_t a1)
{
  v4 = *(sub_3EBF94() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2400C;

  return sub_324D2C(a1, v1 + v5, v1 + v6, v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_326460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2400C;

  return sub_E766C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_326540(uint64_t a1)
{
  v4 = *(sub_3EBF94() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2400C;

  return sub_324C7C(a1, v1 + v5, v1 + v6, (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_326668(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2400C;

  return sub_E6F78(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_326744(uint64_t a1)
{
  v4 = *(sub_3EBF94() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2400C;

  return sub_322AE0(a1, v1 + v5, v1 + v6, (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_32686C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2400C;

  return sub_E6F78(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_326948(uint64_t a1)
{
  v4 = *(sub_3EBF94() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2400C;

  return sub_324BCC(a1, v1 + v5, v1 + v6, (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_326A70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2400C;

  return sub_E8704(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_127Tm()
{
  v1 = sub_3EBF94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_326BF0(uint64_t a1)
{
  v4 = *(sub_3EBF94() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2400C;

  return sub_324B1C(a1, v1 + v5, v1 + v6, (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_326D18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2400C;

  return sub_E6F78(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_40Tm()
{
  v1 = sub_3EBF94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 10, v3 | 7);
}

uint64_t sub_326E9C(uint64_t a1)
{
  v4 = *(sub_3EBF94() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2368C;

  return sub_323944(a1, v1 + v5, v1 + v6, v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t objectdestroy_162Tm()
{
  v1 = sub_3EBF94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_327070(uint64_t a1)
{
  v4 = *(sub_3EBF94() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2400C;

  return sub_322D50(a1, v1 + v5, v1 + v6, (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t StoreDataCache.fetchCachedListenNowFooter()(uint64_t a1, uint64_t a2)
{
  v3 = sub_32752C(v2, a1, a2);
  v4 = v3();

  return v4;
}

uint64_t StoreDataCache.object<A>(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_3273B8(v5, a2, a3, a4, a5);
  v7 = v6(0x6F4E6E657473694CLL, 0xEF7265746F6F4677);

  return v7;
}

uint64_t (*sub_3273B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, uint64_t a2)
{
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(a1);
  v12 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v11);
  v13 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  *(v14 + 5) = a5;
  (*(v9 + 32))(&v14[v13], v12, a2);
  return sub_32771C;
}

uint64_t (*sub_32752C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_3278AC;
}

uint64_t sub_32769C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_327788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1F80);
  v8 = sub_111B64();
  v9 = sub_3273B8(a2, a3, v7, a4, v8);
  v10 = v9(0x6F4E6E657473694CLL, 0xEF7265746F6F4677);

  return v10;
}

uint64_t sub_32782C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t StoreDataCacheError.description.getter()
{
  v1 = 0xD000000000000017;
  v2 = *(v0 + 8);
  if (v2 == 1)
  {
    v1 = 0xD000000000000035;
  }

  if (v2)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t get_enum_tag_for_layout_string_8ShelfKit19StoreDataCacheErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_327958(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3279AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_327A08(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t StoreDataCacheKey.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_4B2BD0;
  v8._object = a2;
  v6 = sub_3EE624(v5, v8);

  *a3 = v6 != 0;
  return result;
}

unint64_t sub_327AB8()
{
  result = qword_5018D8[0];
  if (!qword_5018D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_5018D8);
  }

  return result;
}

Swift::Int sub_327B0C()
{
  sub_3EE954();
  sub_3ED394();
  return sub_3EE9A4();
}

Swift::Int sub_327B90()
{
  sub_3EE954();
  sub_3ED394();
  return sub_3EE9A4();
}

uint64_t sub_327BEC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B2C08;
  v7._object = v3;
  v5 = sub_3EE624(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t ContextMenuLongPressView.init(for:content:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 56) = swift_getKeyPath();
  *(a4 + 64) = 0;
  *(a4 + 72) = swift_getKeyPath();
  *(a4 + 80) = 0;
  result = sub_1FE90(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t sub_327EAC()
{
  v1 = sub_3EAAF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  if ((v6 & 1) == 0)
  {
    sub_3ED9E4();
    v7 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

void sub_327FEC(_BYTE *a1@<X8>)
{
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 72);
  if (*(v1 + 80) == 1)
  {
    *a1 = v7;
  }

  else
  {

    sub_3ED9E4();
    v8 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v7, 0);
    (*(v4 + 8))(v6, v3);
  }
}

id ContextMenuLongPressView.makeCoordinator()()
{
  v1 = sub_327EAC();
  sub_1F958(v0, v9);
  sub_327FEC(&v8);
  v2 = v8;
  v3 = type metadata accessor for ReferenceLinkContextMenuInteractionDelegate();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC8ShelfKit43ReferenceLinkContextMenuInteractionDelegate_objectGraph] = v1;
  sub_1F958(v9, &v4[OBJC_IVAR____TtC8ShelfKit43ReferenceLinkContextMenuInteractionDelegate_model]);
  v4[OBJC_IVAR____TtC8ShelfKit43ReferenceLinkContextMenuInteractionDelegate_style] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, "init");
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v5;
}

id ContextMenuLongPressView.makeUIView(context:)(uint64_t a1)
{
  __chkstk_darwin(a1);
  sub_3EA664();
  (*(v1 + 40))();
  v2 = sub_3EA654();
  swift_getWitnessTable();
  sub_3EAFA4();
  sub_3EAF94();
  v3 = [objc_allocWithZone(UIContextMenuInteraction) initWithDelegate:v5];
  swift_unknownObjectRelease();
  [v2 addInteraction:v3];

  return v2;
}

uint64_t ContextMenuLongPressView.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, int a3, int a4, id a5)
{
  [a5 sizeThatFits:{0.0, 0.0}];
  if (a2)
  {
    return v7;
  }

  else
  {
    return a1;
  }
}

id sub_3283BC@<X0>(void *a1@<X8>)
{
  result = ContextMenuLongPressView.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t sub_328404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_328480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_3284FC()
{
  swift_getWitnessTable();
  sub_3EAD34();
  __break(1u);
}

uint64_t sub_32853C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_328584(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_3285CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ContextMenuTapView.init(provider:padding:showsFromSource:content:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  result = sub_1D4F0(a1, a5);
  *(a5 + 40) = a6;
  *(a5 + 48) = a7;
  *(a5 + 56) = a8;
  *(a5 + 64) = a9;
  *(a5 + 72) = a2;
  *(a5 + 80) = a3;
  *(a5 + 88) = a4;
  return result;
}

uint64_t ContextMenuTapView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  v5 = *(a1 + 16);
  v24 = *(v5 - 8);
  __chkstk_darwin(a1);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_501960);
  v8 = sub_3EA744();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v22 - v14;
  (*(v2 + 80))(v13);
  v16 = *(v2 + 72);
  sub_1F958(v3, v28);
  v28[40] = v16;
  v17 = *(v3 + 40);
  v22 = *(v3 + 56);
  v23 = v17;
  v28[48] = sub_3EB084();
  v29 = v23;
  v30 = v22;
  v31 = 0;
  sub_3EBA74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501968);
  v18 = *(a1 + 24);
  sub_328958();
  sub_3EB694();
  sub_328A38(v28);
  (*(v24 + 8))(v7, v5);
  v19 = sub_328AA0();
  v26 = v18;
  v27 = v19;
  swift_getWitnessTable();
  sub_E63BC(v11);
  v20 = *(v9 + 8);
  v20(v11, v8);
  sub_E63BC(v15);
  return (v20)(v15, v8);
}

unint64_t sub_328958()
{
  result = qword_501970;
  if (!qword_501970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_501968);
    sub_3289E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501970);
  }

  return result;
}

unint64_t sub_3289E4()
{
  result = qword_501978;
  if (!qword_501978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501978);
  }

  return result;
}

uint64_t sub_328A38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_328AA0()
{
  result = qword_501980[0];
  if (!qword_501980[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_501960);
    result = swift_getWitnessTable();
    atomic_store(result, qword_501980);
  }

  return result;
}

uint64_t sub_328B4C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_328BA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_328BEC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_328C5C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_501960);
  sub_3EA744();
  sub_328AA0();
  return swift_getWitnessTable();
}

uint64_t PodcastsContextMenu.init(menuProvider:showsFromSource:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = sub_1D4F0(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

id PodcastsContextMenu.makeUIView(context:)()
{
  type metadata accessor for PodcastsContextUIButton();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = v1;
  v3 = sub_3E6594();
  [v2 setMenu:v3];

  [v2 setShowsMenuAsPrimaryAction:1];
  [v2 setPreferredMenuElementOrder:2];

  [v2 setHoverStyle:0];
  return v2;
}

id PodcastsContextMenu.updateUIView(_:context:)(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(v2, *(v2 + 24));
  v4 = a1;
  v5 = sub_3E6594();

  [v4 setMenu:v5];
  v6 = *(v2 + 40);

  return [v4 setShowsMenuFromSource:v6];
}

double PodcastsContextMenu.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    result = 0.0;
  }

  if (result <= 44.0)
  {
    return 44.0;
  }

  return result;
}

uint64_t sub_328EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_329D6C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_328F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_329D6C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_328FB4()
{
  sub_329D6C();
  sub_3EAD34();
  __break(1u);
}

double sub_32905C()
{
  v1 = [objc_opt_self() mainBundle];
  v11._countAndFlagsBits = 0xE000000000000000;
  v13._object = 0x800000000042D770;
  v13._countAndFlagsBits = 0xD00000000000001CLL;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v2.super.isa = v1;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_3E5A74(v13, v14, v2, v15, v11);

  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = objc_allocWithZone(UIAccessibilityCustomAction);
  v5 = v0;
  v6 = sub_3ED204();

  aBlock[4] = sub_329378;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_329C0C;
  aBlock[3] = &block_descriptor_24;
  v7 = _Block_copy(aBlock);
  v8 = [v4 initWithName:v6 actionHandler:v7];

  _Block_release(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
  v9 = swift_allocObject();
  *&result = 1;
  *(v9 + 16) = xmmword_3F7950;
  *(v9 + 32) = v8;
  return result;
}

void sub_3292B4(uint64_t a1)
{
  if (a1)
  {
    sub_36174(0, &qword_501A08);
    v2.super.isa = sub_3ED574().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3.receiver = v1;
  v3.super_class = type metadata accessor for PodcastsContextUIButton();
  objc_msgSendSuper2(&v3, "setAccessibilityCustomActions:", v2.super.isa);
}

uint64_t sub_329340()
{

  return _swift_deallocObject(v0, 24, 7);
}

id PodcastsContextUIButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PodcastsContextUIButton();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id PodcastsContextUIButton.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PodcastsContextUIButton();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id PodcastsContextUIButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastsContextUIButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

UIMenu __swiftcall PodcastsContextMenuProvider.menu(for:)(UIButton a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = *v1;
  sub_329CB4(v1, v15);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = v15[1];
  *(v5 + 32) = v15[0];
  *(v5 + 48) = v6;
  *(v5 + 64) = v15[2];
  aBlock[4] = sub_329D3C;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_14DC28;
  aBlock[3] = &block_descriptor_9_1;
  v7 = _Block_copy(aBlock);

  v8 = [v2 elementWithUncachedProvider:v7];
  _Block_release(v7);
  sub_36174(0, &qword_4EB5D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_3F7950;
  *(v9 + 32) = v8;
  v12 = v9;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18.value._countAndFlagsBits = 0;
  v18.value._object = 0;
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  v10.value = 0;
  return sub_3EDE14(v17, v18, v16, v10, 0xFFFFFFFFFFFFFFFFLL, v12, v13);
}

uint64_t sub_329740(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a2;
  v40 = a1;
  v38 = sub_3E64E4();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v9 - 8);
  v11 = v35 - v10;
  v12 = sub_3E6434();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ActionOrigin();
  __chkstk_darwin(v16);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B8);
  v35[1] = a3;
  sub_3EC394();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v35[2] = a4;
  if (Strong)
  {
    v20 = Strong;
    v21 = sub_3EDE44();

    if (v21)
    {
      goto LABEL_5;
    }
  }

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v21 = v22;
LABEL_5:
    v23 = v21;
    sub_3EDE34();

    (*(v13 + 56))(v11, 0, 1, v12);
    (*(v13 + 32))(v15, v11, v12);
    goto LABEL_9;
  }

  (*(v13 + 56))(v11, 1, 1, v12);
  sub_3E63F4();
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    sub_2E74C0(v11);
  }

  v23 = 0;
LABEL_9:
  v24 = &v18[*(v16 + 20)];
  v25 = *(a5 + 32);
  v26 = a5;
  v27 = __swift_project_boxed_opaque_existential_1((a5 + 8), v25);
  v24[3] = v25;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v24);
  (*(*(v25 - 8) + 16))(boxed_opaque_existential_0Tm, v27, v25);
  swift_unknownObjectWeakInit();
  (*(v13 + 32))(v18, v15, v12);
  swift_unknownObjectWeakAssign();
  v29 = sub_3EC3A4();
  v30 = v43;
  v31 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  sub_1F958(v26 + 8, v41);
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v32 = v36;
  sub_3E64B4();
  v33 = (*(v31 + 240))(v29, v41, v32, v18, v30, v31);
  (*(v37 + 8))(v32, v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  v40(v33);

  sub_7F504(v18);
  return __swift_destroy_boxed_opaque_existential_1Tm(v42);
}

uint64_t sub_329C0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_329C7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_329CEC()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_329D6C()
{
  result = qword_501A38;
  if (!qword_501A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501A38);
  }

  return result;
}

uint64_t EnvironmentValues.interactionContext.getter()
{
  sub_F3CAC();
  sub_3EAB04();
  return v1;
}

uint64_t sub_329E68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3E6434();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t InteractionContextAction.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_329F14@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InteractionContextAction();
  result = swift_allocObject();
  *(result + 16) = sub_329E68;
  *(result + 24) = 0;
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.interactionContext.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_F3CAC();
  sub_3EAB04();
  return sub_329FBC;
}

uint64_t sub_329FBC(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_3EAB14();
  }

  sub_3EAB14();
}

uint64_t InteractionContextAction.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t DummyLibraryActionController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t Image.alignSymbolImages(alignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = sub_3EB834();
  a4[1] = a3;
  a4[2] = a1;
  a4[3] = a2;
}

unint64_t sub_32A184()
{
  result = qword_501AE0;
  if (!qword_501AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_501AE8);
    sub_32A210();
    sub_32A29C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501AE0);
  }

  return result;
}

unint64_t sub_32A210()
{
  result = qword_501AF0;
  if (!qword_501AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_501AF8);
    sub_2B2EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501AF0);
  }

  return result;
}

unint64_t sub_32A29C()
{
  result = qword_501B00;
  if (!qword_501B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_501B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501B00);
  }

  return result;
}

uint64_t CoalesceObservableObject.init<A>(wrappedValue:transform:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  type metadata accessor for ObservableObjectCoalescer();
  swift_allocObject();
  swift_unknownObjectRetain();

  ObservableObjectCoalescer.init<A>(_:transform:)(a1, a2, a3, a4, a5);
  swift_getWitnessTable();
  v12 = sub_3EA5B4();
  v14 = v13;
  swift_unknownObjectRelease();

  *a6 = v12;
  a6[1] = v14;
  return result;
}

uint64_t ObservableObjectCoalescer.__allocating_init<A>(_:transform:)(uint64_t a1, void (*a2)(uint64_t, double), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ObservableObjectCoalescer.init<A>(_:transform:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_32A4AC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_32A60C(v3);
}

uint64_t sub_32A56C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_32A60C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

char *ObservableObjectCoalescer.init<A>(_:transform:)(uint64_t a1, void (*a2)(uint64_t, double), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v29 = a3;
  v11 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v30 = &v28 - v12;
  v28 = v11;
  v13 = *(v11 + 80);
  v14 = *(v13 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v28 - v17;
  v32 = *(v19 + 104);
  *&v5[v32] = 0;
  a2(a1, v16);
  (*(v14 + 32))(&v6[*(*v6 + 96)], v18, v13);
  sub_3E9CC4();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v22 = v28;
  v23 = v29;
  v21[2] = v13;
  v21[3] = a4;
  v21[4] = *(v22 + 88);
  v21[5] = a5;
  v21[6] = v20;
  v21[7] = a2;
  v21[8] = v23;
  v21[9] = a1;
  v24 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  swift_unknownObjectRetain_n();
  swift_retain_n();

  v25 = v30;
  v26 = sub_3EA1A4();

  swift_unknownObjectRelease_n();

  (*(v33 + 8))(v25, v24);

  *&v6[v32] = v26;

  return v6;
}

uint64_t sub_32A9CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  __chkstk_darwin(a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a5);
    sub_32A56C(v11);
    v16 = sub_3ED174();
    v17 = *(v9 + 8);
    v17(v11, a6);
    if (v16)
    {
      v17(v14, a6);
    }

    else
    {
      (*(v9 + 16))(v11, v14, a6);
      sub_32A60C(v11);
      type metadata accessor for ObservableObjectCoalescer();
      swift_getWitnessTable();
      sub_3E9CE4();
      sub_3E9DB4();

      return (v17)(v14, a6);
    }
  }

  return result;
}

uint64_t ObservableObjectCoalescer.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t ObservableObjectCoalescer.__deallocating_deinit()
{
  ObservableObjectCoalescer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_32ACC8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ObservableObjectCoalescer();
  result = sub_3E9CE4();
  *a1 = result;
  return result;
}

uint64_t sub_32AD24()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_32AD5C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

__n128 sub_32AE0C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_32AE18()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_32AE70()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ExplicitAppendingView.init(string:isExplicit:separator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a3;
  v39 = a5;
  v8 = sub_3E6044();
  __chkstk_darwin(v8 - 8);
  v9 = sub_3ED1F4();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for ExplicitAppendingView();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB800);
  __chkstk_darwin(v14 - 8);
  v16 = &v33 - v15;
  v17 = *a4;
  v37 = a4[1];
  if (a2)
  {
    v40 = a1;
    v41 = a2;
    sub_68DC4();
    v18 = sub_3EB394();
    v35 = v19;
    v36 = v18;
    a2 = v20;
    v34 = v21 & 1;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v34 = 0;
  }

  *(v13 + 8) = swift_getKeyPath();
  v13[72] = 0;
  v22 = *(v10 + 28);
  *&v13[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
  swift_storeEnumTagMultiPayload();
  if (v38)
  {
    sub_3ED184();
    sub_3E6034();
    *(v13 + 6) = sub_3ED2A4();
    *(v13 + 7) = v23;
    if (a2)
    {
      v24 = v34 | 0x4000000000000000;
      v25 = v35;
      *v13 = v36;
      *(v13 + 1) = v25;
      *(v13 + 2) = v24;
      *(v13 + 3) = a2;
      v26 = v37;
      *(v13 + 4) = v17;
      *(v13 + 5) = v26;
LABEL_11:
      sub_32B3E0(v13, v16);
      v28 = *(v11 + 56);
      v28(v16, 0, 1, v10);
      sub_32B444(v13);
      goto LABEL_12;
    }

    sub_32B3BC(v17, v37);
    *v13 = 0;
    *(v13 + 1) = 0;
    *(v13 + 2) = 0x8000000000000000;
    *(v13 + 3) = 0;
LABEL_10:
    *(v13 + 4) = 0;
    *(v13 + 5) = 0;
    goto LABEL_11;
  }

  *(v13 + 6) = 0;
  *(v13 + 7) = 0xE000000000000000;
  sub_32B3BC(v17, v37);
  if (a2)
  {
    v27 = v35;
    *v13 = v36;
    *(v13 + 1) = v27;
    *(v13 + 2) = v34;
    *(v13 + 3) = a2;
    goto LABEL_10;
  }

  sub_FCF8(&v13[v22], &qword_4EEC10);
  v28 = *(v11 + 56);
  v28(v16, 1, 1, v10);
LABEL_12:
  if ((*(v11 + 48))(v16, 1, v10))
  {
    sub_FCF8(v16, &qword_4FB800);
    v29 = 1;
    v30 = v39;
  }

  else
  {
    v31 = v16;
    v30 = v39;
    sub_2EE1F0(v31, v39);
    v29 = 0;
  }

  return (v28)(v30, v29, 1, v10);
}

uint64_t type metadata accessor for ExplicitAppendingView()
{
  result = qword_501C70;
  if (!qword_501C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_32B3BC(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_32B3CC(a1, a2);
  }

  return a1;
}

uint64_t sub_32B3CC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_32B3E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExplicitAppendingView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_32B444(uint64_t a1)
{
  v2 = type metadata accessor for ExplicitAppendingView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_32B4A0()
{
  v1 = sub_3EAAF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);

  if ((v6 & 1) == 0)
  {
    sub_3ED9E4();
    v7 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_32B5E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ExplicitAppendingView();
  sub_94D40(v1 + *(v10 + 28), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_3EA6F4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_3ED9E4();
    v13 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_32B7D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {
      v4 = v0[4];
      v5 = v0[5];
      if (v5)
      {
        if (v5 == 1)
        {
          sub_32C90C(*v0, v0[1], v0[2], v0[3], v0[4], 1uLL);
          sub_32B3BC(v4, 1uLL);
        }

        else if (v5 == 2)
        {
          sub_243E88(*v0, v0[1], v3 & 1);

          sub_32C8E8(v4, 2uLL);
        }

        else
        {
          sub_32C90C(v1, v2, v3, v0[3], v4, v5);
          sub_32C8E8(v4, v5);
          sub_68DC4();
          v7 = sub_3EB394();
          v9 = v8;
          v11 = v10;
          v13 = sub_3EB284();
          sub_94D30(v7, v9, v11 & 1);

          sub_32B3BC(v4, v5);
          sub_94D30(v1, v2, v3 & 1);

          return v13;
        }
      }

      else
      {
        sub_243E88(*v0, v0[1], v3 & 1);

        sub_32C8E8(v4, 0);
        v6 = sub_3EB284();
        sub_32B3BC(v4, 0);
        sub_94D30(v1, v2, v3 & 1);

        return v6;
      }
    }

    else
    {
      sub_32B4A0();
      sub_3E6784();
      sub_3EC394();

      sub_3E6774();

      sub_68DC4();
      return sub_3EB394();
    }
  }

  else
  {
    sub_243E88(*v0, v0[1], v3 & 1);
  }

  return v1;
}

uint64_t sub_32BA90(uint64_t a1, uint64_t a2)
{
  v3 = sub_3EA6F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v22 - v8;
  if (a2 == 1)
  {
    sub_32B5E0(v22 - v8);
    (*(v4 + 104))(v6, enum case for LayoutDirection.rightToLeft(_:), v3);
    v10 = sub_3EA6E4();
    v11 = *(v4 + 8);
    v11(v6, v3);
    v11(v9, v3);
    if (v10)
    {
      sub_32B4A0();
      sub_3E6784();
      sub_3EC394();

      v12 = sub_3E6774();
      v14 = v13;

      v15 = sub_3ED304();
      v17 = v16;
    }

    else
    {
      v12 = sub_3ED304();
      v14 = v20;
      sub_32B4A0();
      sub_3E6784();
      sub_3EC394();

      v15 = sub_3E6774();
      v17 = v21;
    }

    v22[0] = v12;
    v22[1] = v14;

    v23._countAndFlagsBits = v15;
    v23._object = v17;
    sub_3ED3D4(v23);

    return v22[0];
  }

  else
  {
    sub_32B4A0();
    sub_3E6784();
    sub_3EC394();

    v18 = sub_3E6774();

    return v18;
  }
}

uint64_t ExplicitAppendingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v38 = sub_3EB2D4();
  v3 = *(v38 - 8);
  __chkstk_darwin(v38);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501C10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v31 - v8;
  v10 = sub_32B7D0();
  v35 = v11;
  v36 = v10;
  v42 = v10;
  v43 = v11;
  v34 = v12;
  v44 = v12 & 1;
  v37 = v13;
  v45 = v13;
  if (v1[2] >> 62 == 1)
  {
    v40 = sub_32BA90(v1[4], v1[5]);
    v41 = v14;
    sub_68DC4();
    v15 = sub_3EB394();
    v17 = v16;
    v19 = v18;
    v31[0] = v20;
    LODWORD(v40) = sub_3EAEE4();
    v21 = sub_3EB244();
    v32 = v7;
    v33 = v6;
    v23 = v22;
    v25 = v24;
    v31[1] = v26;
    sub_94D30(v15, v17, v19 & 1);

    sub_3EB2B4();
    v27 = v25 & 1;
    v28 = v23;
    v7 = v32;
    v6 = v33;
    sub_94D30(v21, v28, v27);
  }

  else
  {
    sub_3EB2C4();
  }

  sub_3EB474();
  (*(v3 + 8))(v5, v38);
  sub_94D30(v36, v35, v34 & 1);

  v29 = v2[7];
  v42 = v2[6];
  v43 = v29;
  v40 = &type metadata for Text;
  v41 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  sub_68DC4();
  sub_3EB5C4();
  return (*(v7 + 8))(v9, v6);
}

uint64_t static ExplicitAppendingView.eyebrowViewFromComponents(_:isExplicit:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v50 = a3;
  v4 = sub_3E6044();
  __chkstk_darwin(v4 - 8);
  v45[1] = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3ED1F4();
  __chkstk_darwin(v6 - 8);
  v45[0] = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ExplicitAppendingView();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_3ED304();
  v12 = result;
  v14 = v13;
  v15 = 0;
  v16 = *(a1 + 16);
  v17 = a1 + 40;
  v18 = _swiftEmptyArrayStorage;
LABEL_2:
  v19 = (v17 + 16 * v15);
  while (v16 != v15)
  {
    if (v15 >= v16)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_17;
    }

    v22 = *v19;
    v19 += 2;
    v21 = v22;
    ++v15;
    if (v22)
    {
      v46 = v14;
      v23 = v12;
      v24 = *(v19 - 3);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_DFAE8(0, *(v18 + 2) + 1, 1, v18);
        v18 = result;
      }

      v26 = *(v18 + 2);
      v25 = *(v18 + 3);
      if (v26 >= v25 >> 1)
      {
        result = sub_DFAE8((v25 > 1), v26 + 1, 1, v18);
        v18 = result;
      }

      *(v18 + 2) = v26 + 1;
      v27 = &v18[16 * v26];
      *(v27 + 4) = v24;
      *(v27 + 5) = v21;
      v15 = v20;
      v12 = v23;
      v14 = v46;
      goto LABEL_2;
    }
  }

  v51 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_9809C();
  v28 = sub_3ED134();
  v30 = v29;

  v51 = v28;
  v52 = v30;
  sub_68DC4();
  v31 = sub_3EB394();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  *(v10 + 8) = swift_getKeyPath();
  v10[72] = 0;
  v38 = v49;
  v39 = *(v49 + 28);
  *&v10[v39] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
  swift_storeEnumTagMultiPayload();
  if (v47)
  {
    sub_3ED184();
    sub_3E6034();
    v40 = sub_3ED2A4();
    v42 = v35 & 1 | 0x4000000000000000;
    v43 = 1;
  }

  else
  {
    v40 = 0;
    v43 = 0;
    v42 = v35 & 1;
    v41 = 0xE000000000000000;
  }

  *(v10 + 6) = v40;
  *(v10 + 7) = v41;
  *v10 = v31;
  *(v10 + 1) = v33;
  *(v10 + 2) = v42;
  *(v10 + 3) = v37;
  *(v10 + 4) = 0;
  *(v10 + 5) = v43;
  v44 = v50;
  sub_32B3E0(v10, v50);
  (*(v48 + 56))(v44, 0, 1, v38);
  return sub_32B444(v10);
}

uint64_t sub_32C40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 16) >> 1) > 0x80000000)
    {
      return -(*(a1 + 16) >> 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC10);
    v8 = *(*(v7 - 8) + 48);
    v9 = a1 + *(a3 + 28);

    return v8(v9, a2, v7);
  }
}

void *sub_32C4DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 2 * -a2;
    result[3] = 0;
    result[4] = 0;
    result[5] = 0;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_32C598()
{
  sub_32C66C(319, &qword_4FB3B0, &type metadata accessor for BaseObjectGraph);
  if (v0 <= 0x3F)
  {
    sub_32C66C(319, &qword_4EEC80, &type metadata accessor for LayoutDirection);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}