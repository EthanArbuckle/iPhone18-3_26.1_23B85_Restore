uint64_t sub_177D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  LODWORD(v98) = a3;
  v93 = a4;
  v94 = a2;
  v99 = a1;
  v4 = sub_3EBF94();
  v95 = *(v4 - 8);
  v96 = v4;
  __chkstk_darwin(v4);
  v92 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v90 = &v89 - v7;
  __chkstk_darwin(v8);
  v89 = &v89 - v9;
  __chkstk_darwin(v10);
  v91 = &v89 - v11;
  __chkstk_darwin(v12);
  v14 = &v89 - v13;
  __chkstk_darwin(v15);
  v17 = &v89 - v16;
  v18 = sub_3EBDF4();
  __chkstk_darwin(v18);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v89 - v22;
  __chkstk_darwin(v24);
  v26 = &v89 - v25;
  __chkstk_darwin(v27);
  v29 = &v89 - v28;
  __chkstk_darwin(v30);
  v32 = &v89 - v31;
  __chkstk_darwin(v33);
  v35 = &v89 - v34;
  v40 = __chkstk_darwin(v36);
  v41 = &v89 - v38;
  if (v98 > 3u)
  {
    if (v98 - 5 >= 2)
    {
      if (v98 != 4)
      {
        v76 = v37;
        v77 = v39;
        sub_3EBE04();
        sub_3EBDC4();
        if (v78)
        {
          v79 = v97;
          v80 = sub_3E9494();
          if (v79)
          {

            v81 = sub_3E9484();

            (*(v77 + 8))(v20, v76);
          }

          else
          {
            v81 = v80;
            (*(v77 + 8))(v20, v76);
          }

          v86 = v93;
          v93[3] = &type metadata for AdamID;
          result = sub_475B0();
          v86[4] = result;
          *v86 = v81;
        }

        else
        {
          (*(v77 + 8))(v20, v76);
          v84 = sub_3ECEE4();
          sub_1790DC(&qword_4E9AB8, &type metadata accessor for JSONError);
          swift_allocError();
          *v85 = &type metadata for AdamID;
          v85[1] = _swiftEmptyArrayStorage;
          (*(*(v84 - 8) + 104))(v85, enum case for JSONError.malformedDocument(_:), v84);
          return swift_willThrow();
        }

        return result;
      }

      (*(v39 + 16))(v26, v99, v40);
      v64 = v90;
      (*(v95 + 16))(v90, v94, v96);
      v65 = type metadata accessor for EpisodeOffer();
      v51 = v93;
      v93[3] = v65;
      v51[4] = sub_1790DC(&qword_4F2298, type metadata accessor for EpisodeOffer);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v51);
      v67 = v97;
      result = EpisodeOffer.init(deserializing:using:)(v26, v64, boxed_opaque_existential_0Tm);
      if (!v67)
      {
        return result;
      }
    }

    else
    {
      (*(v39 + 16))(v23, v99, v40);
      v49 = v92;
      (*(v95 + 16))(v92, v94, v96);
      v50 = type metadata accessor for ShowOffer();
      v51 = v93;
      v93[3] = v50;
      v51[4] = sub_1790DC(&qword_4F5498, type metadata accessor for ShowOffer);
      v52 = __swift_allocate_boxed_opaque_existential_0Tm(v51);
      v53 = v97;
      result = ShowOffer.init(deserializing:using:)(v23, v49, v52);
      if (!v53)
      {
        return result;
      }
    }

    return __swift_deallocate_boxed_opaque_existential_0Tm(v51);
  }

  if (v98 > 1u)
  {
    v55 = v95;
    v54 = v96;
    if (v98 == 2)
    {
      v92 = *(v39 + 16);
      v56 = v99;
      v57 = v37;
      v99 = v39;
      (v92)(v32, v56, v40);
      v90 = *(v55 + 16);
      v58 = v91;
      (v90)(v91, v94, v54);
      v59 = type metadata accessor for LegacyChannelLockup();
      v94 = swift_allocObject();
      v98 = v57;
      (v92)(v29, v32, v57);
      v60 = v58;
      v61 = v89;
      (v90)(v89, v60, v54);
      v62 = v97;
      v63 = LegacyLockup.init(deserializing:using:)(v29, v61);
      if (v62)
      {
        (*(v55 + 8))(v60, v54);
        return (*(v99 + 8))(v32, v98);
      }

      else
      {
        v82 = v63;
        (*(v55 + 8))(v60, v54);
        (*(v99 + 8))(v32, v98);
        v83 = v93;
        v93[3] = v59;
        result = sub_1790DC(&qword_4F23C0, type metadata accessor for LegacyChannelLockup);
        v83[4] = result;
        *v83 = v82;
      }
    }

    else
    {
      (*(v39 + 16))(&v89 - v38, v99, v40);
      (*(v55 + 16))(v17, v94, v54);
      v72 = type metadata accessor for LegacyEpisodeLockup();
      swift_allocObject();
      v73 = v97;
      result = LegacyEpisodeLockup.init(deserializing:using:)(v41, v17);
      if (!v73)
      {
        v74 = result;
        v75 = v93;
        v93[3] = v72;
        result = sub_1790DC(&qword_4F2460, type metadata accessor for LegacyEpisodeLockup);
        v75[4] = result;
        *v75 = v74;
      }
    }
  }

  else
  {
    v43 = v95;
    v42 = v96;
    if (v98)
    {
      (*(v39 + 16))(v35, v99, v40);
      (*(v43 + 16))(v14, v94, v42);
      v68 = type metadata accessor for LegacyLockup();
      swift_allocObject();
      v69 = v97;
      result = LegacyLockup.init(deserializing:using:)(v35, v14);
      if (!v69)
      {
        v70 = result;
        v71 = v93;
        v93[3] = v68;
        result = sub_1790DC(&qword_4EF840, type metadata accessor for LegacyLockup);
        v71[4] = result;
        *v71 = v70;
      }
    }

    else
    {
      v44 = v97;
      result = sub_3EC244();
      if (!v44)
      {
        sub_1F958(v101, v100);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
        v46 = type metadata accessor for Action();
        if (swift_dynamicCast())
        {
          v47 = v102;
          v48 = v93;
          v93[3] = v46;
          v48[4] = sub_1790DC(&qword_4F54A0, type metadata accessor for Action);
          *v48 = v47;
        }

        else
        {
          v87 = sub_3ECEE4();
          sub_1790DC(&qword_4E9AB8, &type metadata accessor for JSONError);
          swift_allocError();
          *v88 = v46;
          v88[1] = _swiftEmptyArrayStorage;
          (*(*(v87 - 8) + 104))(v88, enum case for JSONError.malformedDocument(_:), v87);
          swift_willThrow();
        }

        return __swift_destroy_boxed_opaque_existential_1Tm(v101);
      }
    }
  }

  return result;
}

uint64_t sub_17878C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1791E0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1787BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F69746341;
  v5 = 0xE900000000000072;
  v6 = 0x6566664F776F6853;
  if (v2 != 6)
  {
    v6 = 0x79726F6765746143;
    v5 = 0xE800000000000000;
  }

  v7 = 0x4F65646F73697045;
  if (v2 != 4)
  {
    v7 = 0x4F74736163646F50;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xEC00000072656666;
  }

  v8 = 0x4C6C656E6E616843;
  if (v2 != 2)
  {
    v8 = 0x4C65646F73697045;
  }

  if (*v1)
  {
    v4 = 0x70756B636F4CLL;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = 0xED000070756B636FLL;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_178990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_3DF3C4(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t _s8ShelfKit16HeaderButtonItemO0D5StyleO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B1D70;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t type metadata accessor for HeaderButtonItem()
{
  result = qword_4F5428;
  if (!qword_4F5428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_178A6C()
{
  result = qword_4F53A0;
  if (!qword_4F53A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F53A0);
  }

  return result;
}

uint64_t sub_178AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_178B28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_178B90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_178BF4()
{
  result = qword_4F53A8;
  if (!qword_4F53A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F53A8);
  }

  return result;
}

unint64_t sub_178C4C()
{
  result = qword_4F53B0;
  if (!qword_4F53B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F53B0);
  }

  return result;
}

void sub_178CA0()
{
  type metadata accessor for ActionButton();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BookmarkButtonPresenter.Data(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for DownloadButtonPresenter.Data(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for FollowButtonPresenter.Data(319);
        if (v3 <= 0x3F)
        {
          sub_178DA4();
          if (v4 <= 0x3F)
          {
            sub_178DF4();
            if (v5 <= 0x3F)
            {
              sub_178E58(319);
              if (v6 <= 0x3F)
              {
                sub_178F80();
                if (v7 <= 0x3F)
                {
                  sub_178FE4();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_178DA4()
{
  result = qword_4F5438;
  if (!qword_4F5438)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_4F5438);
  }

  return result;
}

unint64_t sub_178DF4()
{
  result = qword_4F5440;
  if (!qword_4F5440)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_4F5440);
  }

  return result;
}

void sub_178E58(uint64_t a1)
{
  if (!qword_4F5448)
  {
    __chkstk_darwin(a1);
    type metadata accessor for ActionMenu(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F5388);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_4F5448);
    }
  }
}

void sub_178F80()
{
  if (!qword_4F5450)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_4F5450);
    }
  }
}

ValueMetadata *sub_178FE4()
{
  result = qword_4F5458;
  if (!qword_4F5458)
  {
    result = &type metadata for HeaderButtonItem.ProfilePictureDisplayMode;
    atomic_store(&type metadata for HeaderButtonItem.ProfilePictureDisplayMode, &qword_4F5458);
  }

  return result;
}

unint64_t sub_179034()
{
  result = qword_4F5488;
  if (!qword_4F5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F5488);
  }

  return result;
}

unint64_t sub_179088()
{
  result = qword_4F5490;
  if (!qword_4F5490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F5490);
  }

  return result;
}

uint64_t sub_1790DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_179138()
{
  result = qword_4F54A8;
  if (!qword_4F54A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F54A8);
  }

  return result;
}

unint64_t sub_17918C()
{
  result = qword_4F54B0;
  if (!qword_4F54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F54B0);
  }

  return result;
}

uint64_t sub_1791E0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B1E28;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t ContentUnavailablePage.id.setter(uint64_t a1)
{
  v3 = sub_3ECCF4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ModernPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ModernPage() + 20);
  v4 = sub_3EC164();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ModernPage()
{
  result = qword_4F5510;
  if (!qword_4F5510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ModernPage.pageMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ModernPage() + 20);
  v4 = sub_3EC164();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ModernPage.shelves.getter()
{
  type metadata accessor for ModernPage();
}

uint64_t ModernPage.shelves.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ModernPage() + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ModernPage.init(id:pageMetrics:shelves:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_3ECCF4();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for ModernPage();
  v10 = *(v9 + 20);
  v11 = sub_3EC164();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

unint64_t sub_179600()
{
  result = qword_4F3F38;
  if (!qword_4F3F38)
  {
    sub_3ECCF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3F38);
  }

  return result;
}

uint64_t sub_17966C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3ECCF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3EC164();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_17978C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3ECCF4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_3EC164();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_179894()
{
  sub_3ECCF4();
  if (v0 <= 0x3F)
  {
    sub_3EC164();
    if (v1 <= 0x3F)
    {
      sub_179930();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_179930()
{
  if (!qword_4F5520)
  {
    type metadata accessor for ModernShelf();
    v0 = sub_3ED674();
    if (!v1)
    {
      atomic_store(v0, &qword_4F5520);
    }
  }
}

uint64_t UberStyle.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6C656E6E616863;
  v2 = 1836019570;
  if (a1 != 6)
  {
    v2 = 0x79726F6765746163;
  }

  v3 = 0x6548646972627968;
  if (a1 != 4)
  {
    v3 = 0x6E69616C70;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 1869768040;
  if (a1 != 2)
  {
    v4 = 0x746E6F7A69726F68;
  }

  if (a1)
  {
    v1 = 0x65646F73697065;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_179A90(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6C656E6E616863;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = *a2;
  v6 = 0xE400000000000000;
  v7 = 1836019570;
  if (v3 != 6)
  {
    v7 = 0x79726F6765746163;
    v6 = 0xE800000000000000;
  }

  v8 = 0x6548646972627968;
  v9 = 0xEA00000000006F72;
  if (v3 != 4)
  {
    v8 = 0x6E69616C70;
    v9 = 0xE500000000000000;
  }

  if (*a1 <= 5u)
  {
    v7 = v8;
    v6 = v9;
  }

  v10 = 0xE400000000000000;
  v11 = 1869768040;
  if (v3 != 2)
  {
    v11 = 0x746E6F7A69726F68;
    v10 = 0xEE00776F68536C61;
  }

  v12 = 0x65646F73697065;
  if (*a1)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v12 = 0x6C656E6E616863;
  }

  if (*a1 > 1u)
  {
    v4 = v10;
  }

  else
  {
    v11 = v12;
  }

  if (*a1 <= 3u)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  if (v3 <= 3)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (*a2 > 3u)
  {
    if (*a2 > 5u)
    {
      if (v5 == 6)
      {
        v15 = 0xE400000000000000;
        if (v13 != 1836019570)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v15 = 0xE800000000000000;
        if (v13 != 0x79726F6765746163)
        {
          goto LABEL_43;
        }
      }
    }

    else if (v5 == 4)
    {
      v15 = 0xEA00000000006F72;
      if (v13 != 0x6548646972627968)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v15 = 0xE500000000000000;
      if (v13 != 0x6E69616C70)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (*a2 > 1u)
    {
      if (v5 == 2)
      {
        v15 = 0xE400000000000000;
        if (v13 != 1869768040)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v2 = 0x746E6F7A69726F68;
      v15 = 0xEE00776F68536C61;
    }

    else
    {
      v15 = 0xE700000000000000;
      if (*a2)
      {
        if (v13 != 0x65646F73697065)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }
    }

    if (v13 != v2)
    {
LABEL_43:
      v16 = sub_3EE804();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v14 != v15)
  {
    goto LABEL_43;
  }

  v16 = 1;
LABEL_44:

  return v16 & 1;
}

Swift::Int sub_179CEC()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_179E2C()
{
  sub_3ED394();
}

Swift::Int sub_179F58()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_17A094@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8ShelfKit9UberStyleO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_17A0C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C656E6E616863;
  v5 = 0xE400000000000000;
  v6 = 1836019570;
  if (v2 != 6)
  {
    v6 = 0x79726F6765746163;
    v5 = 0xE800000000000000;
  }

  v7 = 0xEA00000000006F72;
  v8 = 0x6548646972627968;
  if (v2 != 4)
  {
    v8 = 0x6E69616C70;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1869768040;
  if (v2 != 2)
  {
    v10 = 0x746E6F7A69726F68;
    v9 = 0xEE00776F68536C61;
  }

  if (*v1)
  {
    v4 = 0x65646F73697065;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_17A1E8()
{
  v1 = sub_3E63E4();
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0);
  __chkstk_darwin(v7 - 8);
  v8 = *(v0 + 24);
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (!*(v8 + 24))
  {
    if (!v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_126C74(v9 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, v3);
    sub_17B364(v3, v6);
    goto LABEL_6;
  }

  if (*(v8 + 24) == 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  swift_storeEnumTagMultiPayload();
LABEL_6:
  sub_3E6384();
  sub_126CD8(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5558);
  swift_allocObject();
  return sub_3E9D94();
}

uint64_t ModernPagePresenter.appEntityAnnotation.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E63E4();
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0);
  v8 = __chkstk_darwin(v7 - 8);
  (*(a2 + 80))(a1, a2, v8);
  sub_3E6384();
  sub_126CD8(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5558);
  swift_allocObject();
  return sub_3E9D94();
}

double Paragraph.clickSender.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double ModernPagePresenter.reorderingExtension.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void *PageHeader.title.getter(void *a1, id a2, unint64_t a3)
{
  v3 = a1;
  v4 = (a3 >> 37) & 7;
  if ((v4 - 1) >= 5)
  {
    if (v4)
    {
      return 0;
    }

    else
    {
    }
  }

  else
  {
    sub_17AF44(a1, a2, a3);
  }

  return v3;
}

uint64_t _s8ShelfKit19ModernPagePresenterPAAE10pageRender7Combine7Subject_ps5NeverO7FailureRts_10PodcastsUI0dG5EventO6OutputRtsXPvg_0()
{
  v0 = sub_3E6304();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for PageRenderEvent.notImplemented(_:), v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5588);
  swift_allocObject();
  v4 = sub_3E9D94();
  sub_886BC(&qword_4F5590, &qword_4F5588);
  return v4;
}

uint64_t sub_17A730()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0);
  __chkstk_darwin(v0 - 8);
  sub_3E6384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5558);
  swift_allocObject();
  return sub_3E9D94();
}

uint64_t sub_17A7E4()
{
  v0 = sub_3E63E4();
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0);
  __chkstk_darwin(v3 - 8);
  LibraryShowProvider.interactionContextPage.getter(v2);
  sub_3E6384();
  sub_126CD8(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5558);
  swift_allocObject();
  return sub_3E9D94();
}

uint64_t _s8ShelfKit19ModernPagePresenterPAAE17headerButtonItems7Combine19CurrentValueSubjectCySayAA06HeaderG4ItemOGs5NeverOGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A90);
  swift_allocObject();
  return sub_3E9D94();
}

uint64_t sub_17A94C()
{
  v1 = sub_3E63E4();
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0);
  __chkstk_darwin(v4 - 8);
  v5 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_episodeListSettings;
  swift_beginAccess();
  v6 = sub_3E8944();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v3, v0 + v5, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  swift_storeEnumTagMultiPayload();
  sub_3E6384();
  sub_126CD8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5558);
  swift_allocObject();
  return sub_3E9D94();
}

uint64_t sub_17AB00(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_3E63E4();
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0);
  v9 = __chkstk_darwin(v8 - 8);
  (*(a2 + 80))(v4, a2, v9);
  sub_3E6384();
  sub_126CD8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5558);
  swift_allocObject();
  return sub_3E9D94();
}

uint64_t sub_17AC54()
{
  v0 = sub_3E63E4();
  __chkstk_darwin(v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0);
  __chkstk_darwin(v3 - 8);
  swift_storeEnumTagMultiPayload();
  sub_3E6384();
  sub_126CD8(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5558);
  swift_allocObject();
  return sub_3E9D94();
}

uint64_t _s8ShelfKit19ModernPagePresenterPAAE16hasLoadedContent7Combine19CurrentValueSubjectCy10PodcastsUI20ExtendedLaunchStatusOs5NeverOGvg_0()
{
  v0 = sub_3E65B4();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ExtendedLaunchStatus.notImplementedError(_:), v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5598);
  swift_allocObject();
  return sub_3E9D94();
}

uint64_t _s8ShelfKit19ModernPagePresenterPAAE3tab7Combine19CurrentValueSubjectCySo5UITabCSgs5NeverOGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5580);
  swift_allocObject();
  return sub_3E9D94();
}

uint64_t sub_17AEA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5578);
  swift_allocObject();
  return sub_3E9D94();
}

uint64_t _s8ShelfKit9UberStyleO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B1F08;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

id sub_17AF44(id result, id a2, unint64_t a3)
{
  if (((a3 >> 37) & 7) <= 5)
  {
  }

  if (((a3 >> 37) & 7) == 6)
  {
    return result;
  }

  return result;
}

unint64_t sub_17AF94()
{
  result = qword_4F5560;
  if (!qword_4F5560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F5560);
  }

  return result;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_17B05C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 21))
  {
    return (*a1 + 122);
  }

  v3 = ((*(a1 + 20) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 20) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_17B0B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 122;
    *(result + 8) = 0;
    if (a3 >= 0x7A)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 20) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_17B10C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = a1 + 16;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x1F;
  return result;
}

uint64_t sub_17B128(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = a1 + 16;
  v4 = (v3 | (*(result + 4) << 32)) & 0x1FFFFFFFFLL | (a2 << 37);
  *result = v3;
  *(result + 4) = BYTE4(v4);
  return result;
}

uint64_t sub_17B364(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E63E4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MultiSelectableExtension.isMultiSelectable.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MultiSelectableExtension.shouldSelect.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t MultiSelectableExtension.didDeselect.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t MultiSelectableExtension.didSelect.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_17B4AC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_17B910;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_7A6C8(v4);
}

uint64_t sub_17B540(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_17B8E8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 96);
  *(v7 + 96) = v6;
  *(v7 + 104) = v5;
  sub_7A6C8(v3);
  return sub_16AC0(v8);
}

uint64_t MultiSelectableExtension.manuallySelect.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  sub_7A6C8(v1);
  return v1;
}

uint64_t MultiSelectableExtension.manuallySelect.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return sub_16AC0(v5);
}

void *MultiSelectableExtension.__allocating_init(shouldDisplayMultiSelectUI:isMultiSelectable:shouldSelect:didDeselect:didSelect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = swift_allocObject();
  result[12] = 0;
  result[13] = 0;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  result[9] = a8;
  result[10] = a9;
  result[11] = a10;
  return result;
}

void *MultiSelectableExtension.init(shouldDisplayMultiSelectUI:isMultiSelectable:shouldSelect:didDeselect:didSelect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[12] = 0;
  v10[13] = 0;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v10[7] = a6;
  v10[8] = a7;
  v10[9] = a8;
  v10[10] = a9;
  v10[11] = a10;
  return v10;
}

uint64_t MultiSelectableExtension.deinit()
{

  sub_16AC0(*(v0 + 96));
  return v0;
}

uint64_t MultiSelectableExtension.__deallocating_deinit()
{

  sub_16AC0(*(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_17B8B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t static PageContent.loading.getter@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for PageContent();

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for PageContent()
{
  result = qword_4F56F0;
  if (!qword_4F56F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static PageContent.loaded(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
  sub_17D0A0(a1, a2, type metadata accessor for ModernPage);
  *(a2 + v4) = sub_3E66E4();
  type metadata accessor for PageContent();

  return swift_storeEnumTagMultiPayload();
}

uint64_t PageContent.isLoaded.getter()
{
  v1 = type metadata accessor for PageContent();
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_17D0A0(v0, v3, type metadata accessor for PageContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for PageContent;
  if (EnumCaseMultiPayload > 1)
  {
    v6 = 1;
    if (EnumCaseMultiPayload != 2)
    {
      v5 = type metadata accessor for ModernPage;
    }

    goto LABEL_6;
  }

  v6 = 0;
  if (EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for PageContent;
LABEL_6:
    sub_17C488(v3, v5);
  }

  return v6;
}

uint64_t PageContent.isLoading.getter()
{
  v1 = type metadata accessor for PageContent();
  __chkstk_darwin(v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_17D0A0(v0, v3, type metadata accessor for PageContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for PageContent;
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return 1;
    }

    v5 = type metadata accessor for ModernPage;
  }

  sub_17C488(v3, v5);
  return 0;
}

uint64_t PageContent.isLoadedAndEmpty.getter()
{
  v1 = type metadata accessor for PageContent();
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_17D0A0(v0, v3, type metadata accessor for PageContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for PageContent;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v5 = type metadata accessor for ModernPage;
    }

    goto LABEL_7;
  }

  v6 = 0;
  if (EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for PageContent;
LABEL_7:
    sub_17C488(v3, v5);
  }

  return v6;
}

uint64_t PageContent.hasFailed.getter()
{
  v1 = type metadata accessor for PageContent();
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_17D0A0(v0, v3, type metadata accessor for PageContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for PageContent;
  if (EnumCaseMultiPayload > 1)
  {
    v6 = 0;
    if (EnumCaseMultiPayload == 2)
    {
      v5 = type metadata accessor for PageContent;
    }

    else
    {
      v5 = type metadata accessor for ModernPage;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    v6 = 1;
LABEL_8:
    sub_17C488(v3, v5);
    return v6;
  }

  return 0;
}

uint64_t PageContent.automationState.getter()
{
  v1 = type metadata accessor for PageContent();
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_17D0A0(v0, v3, type metadata accessor for PageContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for PageContent;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v6 = 0xD000000000000010;
      v5 = type metadata accessor for PageContent;
    }

    else
    {
      v6 = 0x646564616F6CLL;
      v5 = type metadata accessor for ModernPage;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    v6 = 0x726F727265;
LABEL_8:
    sub_17C488(v3, v5);
    return v6;
  }

  return 0x676E6964616F6CLL;
}

uint64_t PageContent.addShelfToTop(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5670);
  __chkstk_darwin(v4 - 8);
  v30 = &v30 - v5;
  v6 = type metadata accessor for PageContent();
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ModernPage();
  __chkstk_darwin(v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v15 = type metadata accessor for ModernShelf();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_17C418(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_FCF8(v14, &unk_503DA0);
    v19 = v31;
    return sub_17D0A0(v19, a2, type metadata accessor for PageContent);
  }

  sub_17C4E8(v14, v18, type metadata accessor for ModernShelf);
  v20 = v31;
  sub_17D0A0(v31, v8, type metadata accessor for PageContent);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_17C488(v18, type metadata accessor for ModernShelf);
    sub_17C488(v8, type metadata accessor for PageContent);
    v19 = v20;
    return sub_17D0A0(v19, a2, type metadata accessor for PageContent);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668);
  v22 = v8[*(v21 + 48)];
  sub_17C4E8(v8, v11, type metadata accessor for ModernPage);
  v23 = *(v9 + 24);
  v24 = v30;
  sub_17D0A0(v18, v30, type metadata accessor for ModernShelf);
  v25 = *&v11[v23];
  v26 = v25[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v11[v23] = v25;
  if (!isUniquelyReferenced_nonNull_native || v26 >= v25[3] >> 1)
  {
    v25 = sub_E02B0(isUniquelyReferenced_nonNull_native, v26 + 1, 1, v25);
    *&v11[v23] = v25;
  }

  sub_17C7F4(0, 0, 1, v24, type metadata accessor for ModernShelf, type metadata accessor for ModernShelf, &qword_4F5670);
  *&v11[v23] = v25;
  sub_17C488(v18, type metadata accessor for ModernShelf);
  v28 = *(v21 + 48);
  sub_17C4E8(v11, a2, type metadata accessor for ModernPage);
  *(a2 + v28) = v22;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_17C418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_17C488(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_17C4E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_17C590()
{
  result = qword_4F5678;
  if (!qword_4F5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F5678);
  }

  return result;
}

void sub_17C5E4()
{
  sub_17C680();
  if (v0 <= 0x3F)
  {
    sub_17C6B0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContentUnavailablePage();
      if (v2 <= 0x3F)
      {
        sub_17C73C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

ValueMetadata *sub_17C680()
{
  result = qword_4F5700;
  if (!qword_4F5700)
  {
    result = &type metadata for PageContent.LoadingBehavior;
    atomic_store(&type metadata for PageContent.LoadingBehavior, &qword_4F5700);
  }

  return result;
}

void sub_17C6B0()
{
  if (!qword_4F5708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4E9DE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1508);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_4F5708);
    }
  }
}

void sub_17C73C()
{
  if (!qword_4F5710)
  {
    type metadata accessor for ModernPage();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_4F5710);
    }
  }
}

unint64_t sub_17C7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7)
{
  v13 = *v7;
  result = a5(0);
  v16 = *(*(result - 8) + 72);
  v17 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v29 = a7;
  v15 = *(*(result - 8) + 80);
  v18 = v13 + ((v15 + 32) & ~v15);
  v19 = v18 + v16 * a1;
  result = swift_arrayDestroy();
  v20 = a3 - v17;
  if (__OFSUB__(a3, v17))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = v16 * a3;
  if (v20)
  {
    v22 = *(v13 + 16);
    if (!__OFSUB__(v22, a2))
    {
      result = v19 + v21;
      v23 = v18 + v16 * a2;
      if (v19 + v21 < v23 || result >= v23 + (v22 - a2) * v16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v23)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v25 = *(v13 + 16);
      v26 = __OFADD__(v25, v20);
      v27 = v25 + v20;
      if (!v26)
      {
        *(v13 + 16) = v27;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_FCF8(a4, v29);
  }

  if (v21 < 1)
  {
    return sub_FCF8(a4, v29);
  }

  result = sub_17D0A0(a4, v19, a6);
  if (v16 >= v21)
  {
    return sub_FCF8(a4, v29);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_17C980(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 40 * a3;
  v15 = (v9 + 32 + 40 * a2);
  if (result != v15 || result >= v15 + 40 * v14)
  {
    result = memmove(result, v15, 40 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_17CABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for ModernShelf();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = (v11 + 32) & ~v11;
  v15 = v9 + v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = __OFSUB__(a3, v13);
  v17 = a3 - v13;
  if (v16)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = *(v9 + 16);
  if (__OFSUB__(v18, a2))
  {
    goto LABEL_23;
  }

  result = v15 + v12 * a3;
  v19 = v9 + v14 + v12 * a2;
  if (result < v19 || result >= v19 + (v18 - a2) * v12)
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v19)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v21 = *(v9 + 16);
  v16 = __OFADD__(v21, v17);
  v22 = v21 + v17;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v9 + 16) = v22;
LABEL_15:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_17CC44(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = *v7;
  v16 = v15 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v17 = __OFSUB__(a3, v8);
  v18 = a3 - v8;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v18)
  {
    v19 = *(v15 + 16);
    v17 = __OFSUB__(v19, a2);
    v20 = v19 - a2;
    if (!v17)
    {
      result = v16 + 32 * a3;
      v21 = (v15 + 32 + 32 * a2);
      if (result != v21 || result >= v21 + 32 * v20)
      {
        result = memmove(result, v21, 32 * v20);
      }

      v23 = *(v15 + 16);
      v17 = __OFADD__(v23, v18);
      v24 = v23 + v18;
      if (!v17)
      {
        *(v15 + 16) = v24;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v16 = a4;
    *(v16 + 1) = HIBYTE(a4) & 1;
    *(v16 + 8) = a5;
    *(v16 + 16) = a6;
    *(v16 + 24) = a7;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_17CD48(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_17CE20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_75918();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_3EE5A4();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_3EE5A4();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t sub_17CF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_17D0A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t PageContent.shouldAnimateShelfChanges(from:)(uint64_t a1)
{
  v3 = type metadata accessor for PageContent();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5748);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  sub_17D314(a1, &v15 - v8);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      if (*v9)
      {
        goto LABEL_17;
      }

LABEL_8:
      v11 = 0;
      goto LABEL_9;
    }

LABEL_7:
    sub_17D3E8(v9, type metadata accessor for PageContent);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_7;
  }

  sub_17D3E8(v9, type metadata accessor for ModernPage);
LABEL_17:
  v11 = 1;
LABEL_9:
  sub_17D384(v1, v6);
  v12 = swift_getEnumCaseMultiPayload();
  v13 = type metadata accessor for PageContent;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      v13 = type metadata accessor for ModernPage;
    }

    goto LABEL_14;
  }

  v11 = 0;
  if (v12)
  {
    v13 = type metadata accessor for PageContent;
LABEL_14:
    sub_17D3E8(v6, v13);
  }

  return v11;
}

uint64_t sub_17D314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5748);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_17D384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_17D3E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_17D4A0()
{
  result = qword_4F57E8;
  if (!qword_4F57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F57E8);
  }

  return result;
}

uint64_t sub_17D554(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_17D59C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SearchExtension.__allocating_init(scopes:hidesSearchBarWhenScrolling:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  SearchExtension.init(scopes:hidesSearchBarWhenScrolling:)(a1, a2);
  return v4;
}

uint64_t SearchExtension.init(scopes:hidesSearchBarWhenScrolling:)(uint64_t a1, char a2)
{
  LOBYTE(v6) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5840);
  swift_allocObject();
  *(v2 + 24) = sub_3E9D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5848);
  swift_allocObject();
  *(v2 + 32) = sub_3E9D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5850);
  swift_allocObject();
  *(v2 + 40) = sub_3E9D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5578);
  swift_allocObject();
  *(v2 + 48) = sub_3E9D94();
  swift_allocObject();
  *(v2 + 56) = sub_3E9D94();
  swift_allocObject();
  *(v2 + 64) = sub_3E9D94();
  swift_allocObject();
  *(v2 + 72) = sub_3E9D94();
  [objc_opt_self() currentTraitCollection];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5858);
  swift_allocObject();
  *(v2 + 80) = sub_3E9D94();
  swift_allocObject();
  *(v2 + 96) = sub_3E9D94();
  *(v2 + 16) = a1;
  *(v2 + 88) = a2;
  return v2;
}

uint64_t sub_17D89C()
{
}

uint64_t SearchExtension.deinit()
{

  return v0;
}

uint64_t SearchExtension.__deallocating_deinit()
{
  SearchExtension.deinit();

  return swift_deallocClassInstance();
}

uint64_t static SearchExtensionTerm.empty(state:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = result;
  return result;
}

void __swiftcall SearchExtensionTerm.init(term:searchPrefix:state:)(ShelfKit::SearchExtensionTerm_optional *__return_ptr retstr, Swift::String_optional term, Swift::String_optional searchPrefix, ShelfKit::SearchExtensionTerm::State state)
{
  if (term.value._object)
  {
    if (!searchPrefix.value._object)
    {
      countAndFlagsBits = term.value._countAndFlagsBits;
      v6 = state;
      object = term.value._object;

      term.value._countAndFlagsBits = countAndFlagsBits;
      term.value._object = object;
      state = v6;
      searchPrefix.value._countAndFlagsBits = countAndFlagsBits;
      searchPrefix.value._object = object;
    }

    retstr->value.term = term.value;
    retstr->value.searchPrefix = searchPrefix.value;
    retstr->value.state = state;
  }

  else
  {

    retstr->value.state = ShelfKit_SearchExtensionTerm_State_active;
    retstr->value.term = 0u;
    retstr->value.searchPrefix = 0u;
  }
}

void __swiftcall SearchExtensionTerm.copy(with:)(ShelfKit::SearchExtensionTerm_optional *__return_ptr retstr, ShelfKit::SearchExtensionTerm::State with)
{
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  retstr->value.term._countAndFlagsBits = *v2;
  retstr->value.term._object = v3;
  retstr->value.searchPrefix._countAndFlagsBits = v4;
  retstr->value.searchPrefix._object = v5;
  retstr->value.state = with;
}

BOOL static SearchExtensionTerm.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_3EE804()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_3EE804()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

void SearchExtensionTerm.hash(into:)()
{
  v1 = *(v0 + 32);
  sub_3ED394();
  sub_3ED394();
  sub_3EE964(v1);
}

Swift::Int SearchExtensionTerm.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_3EE954();
  sub_3ED394();
  sub_3ED394();
  sub_3EE964(v1);
  return sub_3EE9A4();
}

Swift::Int sub_17DC00()
{
  v1 = *(v0 + 32);
  sub_3EE954();
  sub_3ED394();
  sub_3ED394();
  sub_3EE964(v1);
  return sub_3EE9A4();
}

void sub_17DC7C()
{
  qword_4F57F0 = 0;
  *algn_4F57F8 = 0xE000000000000000;
  qword_4F5800 = 0;
  unk_4F5808 = 0xE000000000000000;
  byte_4F5810 = 0;
}

uint64_t static SearchExtensionTerm.emptyActiveTerm.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_4E89D8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_4F57F8;
  v2 = qword_4F5800;
  v3 = unk_4F5808;
  v4 = byte_4F5810;
  *a1 = qword_4F57F0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
}

void sub_17DD24()
{
  qword_4F5818 = 0;
  unk_4F5820 = 0xE000000000000000;
  qword_4F5828 = 0;
  unk_4F5830 = 0xE000000000000000;
  byte_4F5838 = 3;
}

uint64_t static SearchExtensionTerm.emptyCanceledTerm.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_4E89E0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_4F5820;
  v2 = qword_4F5828;
  v3 = unk_4F5830;
  v4 = byte_4F5838;
  *a1 = qword_4F5818;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
}

unint64_t sub_17DDD4()
{
  result = qword_4F5860;
  if (!qword_4F5860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F5860);
  }

  return result;
}

unint64_t sub_17DE2C()
{
  result = qword_4F5868;
  if (!qword_4F5868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F5868);
  }

  return result;
}

unint64_t sub_17DE84()
{
  result = qword_4F5870;
  if (!qword_4F5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F5870);
  }

  return result;
}

Swift::Void __swiftcall ChannelListProvider.loadPageContent()()
{
  v19 = *v0;
  v1 = v19;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5970);
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  __chkstk_darwin(v2);
  v5 = &v18 - v4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v20);
  v7 = &v18 - v6;
  v8 = v0[3];
  ObjectType = swift_getObjectType();
  v10 = [objc_opt_self() sortDescriptorsForLibraryChannelsPage];
  sub_17E554();
  v11 = sub_3ED584();

  v12 = (*(v8 + 240))(v11, 50, ObjectType, v8);

  v23 = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = 46;
  *(v13 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5988);
  sub_886BC(&qword_4F5990, &qword_4F5980);
  v14 = sub_3E8814();

  v23 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5998);
  *(swift_allocObject() + 16) = xmmword_3F5630;
  v15 = type metadata accessor for ModernShelf();
  (*(*(v15 - 8) + 56))(v7, 1, 2, v15);
  sub_3E95C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59A0);
  sub_886BC(&qword_4F59A8, &qword_4F59A0);
  v16 = sub_3E8824();

  v23 = v16;
  *(swift_allocObject() + 16) = v19;
  type metadata accessor for PageContent();
  sub_886BC(&qword_4F59B0, &qword_4F59A0);
  sub_3EA024();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  sub_886BC(&qword_4F59B8, &qword_4F5970);
  sub_886BC(&unk_4F8840, &qword_4F8830);
  v17 = v21;
  sub_3EA164();
  (*(v22 + 8))(v5, v17);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();

  swift_beginAccess();
  v0[5] = v16;
}

unint64_t sub_17E554()
{
  result = qword_4F1C40;
  if (!qword_4F1C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F1C40);
  }

  return result;
}

uint64_t sub_17E5A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5A98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  return sub_3E95B4();
}

uint64_t sub_17E64C@<X0>(unint64_t *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v29 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v27 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - v12;
  v14 = *a1;
  v15 = type metadata accessor for Header(0);
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v28 = sub_76ECC(v14);
  v16 = sub_3E5DC4();
  v17 = *(*(v16 - 8) + 56);
  v17(v10, 1, 1, v16);
  sub_3E85C4();
  sub_3EC584();

  v18 = sub_3EC634();
  (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
  v19 = type metadata accessor for ModernShelf();
  v20 = v19[9];
  v21 = &a3[v19[8]];
  v17(&a3[v20], 1, 1, v16);
  *a3 = 0xD000000000000021;
  *(a3 + 1) = 0x8000000000428F10;
  sub_FACC(v13, &a3[v19[5]], &qword_4F1AC0);
  v22 = &a3[v19[6]];
  *v22 = v29;
  v22[1] = 0;
  *(v22 + 3) = 256;
  *(v22 + 2) = 0;
  *(v22 + 1) = 1;
  v23 = v27;
  *&a3[v19[7]] = v28;
  sub_17F4C4(v23, &a3[v20]);
  a3[v19[10]] = 1;
  a3[v19[11]] = 0;
  v24 = &a3[v19[12]];
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  sub_FACC(v7, &a3[v19[13]], &unk_4E9170);
  *v21 = 0;
  *(v21 + 1) = 0;
  return (*(*(v19 - 1) + 56))(a3, 0, 2, v19);
}

uint64_t sub_17E9D0@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5988);
  sub_3E95D4();
  v5 = sub_3E95E4();
  sub_17EACC(v5 & 1, a1);
  return sub_FCF8(v4, &qword_4F5978);
}

uint64_t sub_17EACC@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  LODWORD(v42) = a1;
  v3 = sub_3EC544();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v42 - v7;
  v43 = type metadata accessor for ModernPage();
  __chkstk_darwin(v43);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for ModernShelf();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  if (sub_3E9544())
  {
    *a2 = 1;
    type metadata accessor for PageContent();

    return swift_storeEnumTagMultiPayload();
  }

  sub_3E9514();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_FCF8(v12, &unk_503DA0);
LABEL_13:
    static ContentUnavailablePage.emptyLibraryChannels.getter(a2);
    type metadata accessor for PageContent();
    return swift_storeEnumTagMultiPayload();
  }

  sub_F7928(v12, v19);
  v47 = *&v19[*(v13 + 28)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5A88);
  sub_886BC(&qword_4F5A90, &qword_4F5A88);
  if ((sub_3ED894() & 1) == 0)
  {
    sub_17F458(v19, type metadata accessor for ModernShelf);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8);
  v21 = *(v14 + 72);
  v22 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_3F5630;
  sub_17F3F0(v19, v23 + v22, type metadata accessor for ModernShelf);
  if (v42)
  {
    static ModernShelf.loadingShelf(id:)(0x53676E6964616F6CLL, 0xEE004449666C6568, v16);
    v25 = *(v23 + 16);
    v24 = *(v23 + 24);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_E02B0(v24 > 1, v25 + 1, 1, v23);
    }

    v42 = v23;
    *(v23 + 16) = v25 + 1;
    sub_F7928(v16, v23 + v22 + v25 * v21);
  }

  else
  {
    v42 = v23;
  }

  v26 = sub_3E8024();
  v28 = v27;
  v29 = sub_3E7B34();
  v31 = v30;
  v47 = v26;
  v48 = v28;
  v62._countAndFlagsBits = 95;
  v62._object = 0xE100000000000000;
  sub_3ED3D4(v62);
  v63._countAndFlagsBits = v29;
  v63._object = v31;
  sub_3ED3D4(v63);

  sub_3ECCE4();
  v32 = sub_3E7B34();
  v34 = v33;
  v35 = sub_3E8024();
  v47 = v32;
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v37 = v46;
  sub_3EC534();
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A70);
  sub_3EC0B4();
  *(swift_allocObject() + 16) = xmmword_3F5310;
  sub_3EC084();
  sub_3EC074();
  MetricsPageFields.metricsFields.getter();
  v39 = v44;
  v38 = v45;
  (*(v44 + 16))(v5, v37, v45);
  v40 = v43;
  sub_3EC0C4();
  v60 = v54;
  sub_FCF8(&v60, &unk_4F8A10);
  v59 = v55;
  sub_FCF8(&v59, &qword_4E94E0);
  v58 = v56;
  sub_FCF8(&v58, &unk_4F8A20);
  sub_16AC0(v57);
  (*(v39 + 8))(v46, v38);

  *&v9[*(v40 + 24)] = v42;
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
  sub_17F3F0(v9, a2, type metadata accessor for ModernPage);
  LOBYTE(v34) = sub_3E66E4();
  sub_17F458(v9, type metadata accessor for ModernPage);
  a2[v41] = v34;
  type metadata accessor for PageContent();
  swift_storeEnumTagMultiPayload();
  return sub_17F458(v19, type metadata accessor for ModernShelf);
}

uint64_t ChannelListProvider.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ChannelListProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_17F2DC()
{
  v1 = type metadata accessor for PageContent();
  __chkstk_darwin(v1);
  *(&v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0)) = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  swift_allocObject();
  *(v0 + 32) = sub_3E9D94();
  *(v0 + 40) = 0;
  *(v0 + 48) = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0);
  sub_3EC444();
  sub_3ECD14();
  *(v0 + 16) = v4;
  return v0;
}

uint64_t sub_17F3F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_17F458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_17F4C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_17F53C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 100;
  if (v1 == &dword_0 + 1)
  {
    v2 = 200;
  }

  qword_4F5AA0 = v2;
}

void sub_17F5CC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 50;
  if (v1 == &dword_0 + 1)
  {
    v2 = 100;
  }

  qword_4F5AA8 = v2;
}

uint64_t sub_17F65C(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_17F6B4()
{
  type metadata accessor for PresentedEpisodeUpsellBannersProvider(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F5B78);
  result = sub_3E9E64();
  qword_4F5AB0 = v0;
  return result;
}

uint64_t static PresentedEpisodeUpsellBannersProvider.shared.getter()
{
  if (qword_4E89F8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_17F78C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  *a1 = v3;
  return result;
}

uint64_t sub_17F80C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

uint64_t sub_17F888()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  return v1;
}

uint64_t sub_17F904()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

void (*sub_17F974(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_3E9E94();
  return sub_17FA18;
}

void sub_17FA18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_17FA80()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AC0);
  sub_3E9E74();
  return swift_endAccess();
}

uint64_t sub_17FAF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AC8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AC0);
  sub_3E9E84();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_17FC7C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AC0);
  sub_3E9E74();
  return swift_endAccess();
}

uint64_t sub_17FCF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AC8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AC0);
  sub_3E9E84();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_17FE28(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AC8);
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

  v9 = OBJC_IVAR____TtC8ShelfKit37PresentedEpisodeUpsellBannersProvider__episodeStoreTrackIdsForPresentedBanners;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AC0);
  sub_3E9E74();
  swift_endAccess();
  return sub_17FF98;
}

void sub_17FF98(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_3E9E84();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_3E9E84();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t PresentedEpisodeUpsellBannersProvider.deinit()
{
  v1 = OBJC_IVAR____TtC8ShelfKit37PresentedEpisodeUpsellBannersProvider__episodeStoreTrackIdsForPresentedBanners;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PresentedEpisodeUpsellBannersProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8ShelfKit37PresentedEpisodeUpsellBannersProvider__episodeStoreTrackIdsForPresentedBanners;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_180214()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  return v1;
}

uint64_t EpisodeUpsellBannerProvider.__allocating_init(graph:uuid:presentationType:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_allocObject();
  v8 = sub_182EC0(a1, a2, a3, a4);

  return v8;
}

uint64_t EpisodeUpsellBannerProvider.init(graph:uuid:presentationType:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_182EC0(a1, a2, a3, a4);

  return v4;
}

uint64_t EpisodeUpsellBannerProvider.__allocating_init(libraryActionController:storeDataProvider:episodePlayStateController:episodeAdamId:presentationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_3E8304();
  __chkstk_darwin(v9 - 8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = swift_allocObject();
  sub_1F958(a1, v12 + 24);
  sub_1830EC(a2, v12 + 64);
  *(v12 + 104) = a3;
  *(v12 + 16) = a5;

  *(v12 + 112) = sub_3E8D44();
  sub_3E8984();
  v13 = sub_3E82E4();
  sub_10A060(v11);
  swift_beginAccess();
  v15[7] = v13 & 1;
  sub_3E9E64();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_3E8964();

  sub_18319C(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t EpisodeUpsellBannerProvider.init(libraryActionController:storeDataProvider:episodePlayStateController:episodeAdamId:presentationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = sub_3E8304();
  __chkstk_darwin(v11 - 8);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1F958(a1, v6 + 24);
  sub_1830EC(a2, v6 + 64);
  *(v6 + 104) = a3;
  *(v6 + 16) = a5;

  *(v6 + 112) = sub_3E8D44();
  sub_3E8984();
  v14 = sub_3E82E4();
  sub_10A060(v13);
  swift_beginAccess();
  v16[7] = v14 & 1;
  sub_3E9E64();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_3E8964();

  sub_18319C(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t sub_180678()
{
  v0 = sub_3E8304();
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_3E9EA4();

    if (HIBYTE(v5) == 1)
    {
    }

    else
    {
      sub_3E8984();
      v4 = sub_3E82E4();
      sub_10A060(v2);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v5) = v4 & 1;
      return sub_3E9EB4();
    }
  }

  return result;
}

uint64_t EpisodeUpsellBannerProvider.deinit()
{
  v1 = v0;

  sub_3E8974();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  sub_18319C(v0 + 64);

  v2 = OBJC_IVAR____TtC8ShelfKit27EpisodeUpsellBannerProvider__hasStartedPlaying;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t EpisodeUpsellBannerProvider.__deallocating_deinit()
{
  v1 = v0;

  sub_3E8974();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  sub_18319C(v0 + 64);

  v2 = OBJC_IVAR____TtC8ShelfKit27EpisodeUpsellBannerProvider__hasStartedPlaying;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_180960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  v10[1] = sub_181020(a1, a2, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AF8);
  sub_886BC(&qword_4F5B00, &qword_4F5AF0);
  sub_3EA024();

  sub_886BC(&qword_4F5B08, &qword_4F5AE8);
  v8 = sub_3E9F94();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_180B40@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result && (v4 = OBJC_IVAR____TtC8ShelfKit5Shelf_items, result = swift_beginAccess(), v5 = *(v3 + v4), *(v5 + 16)) && (sub_1F958(v5 + 32, v8), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9B70), type metadata accessor for EpisodeUpsellBannerModel(), result = swift_dynamicCast(), (result & 1) != 0))
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

void sub_180BFC(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v24 = a5;
  v26 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5B10);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5B18);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v20 = &v23 - v19;
  if (a2 & 1) != 0 || (a4)
  {
    v21 = type metadata accessor for ModernShelf();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    sub_3E9DF4();
    sub_886BC(&qword_4F5B20, &qword_4F5B10);
    sub_3E9F94();
    (*(v13 + 8))(v15, v12);
  }

  else if ((v26 | a1) < 0)
  {
    __break(1u);
  }

  else
  {
    v22 = v18;
    v27 = sub_181020(a1, v26, v24, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AF0);
    sub_886BC(&qword_4F5B00, &qword_4F5AF0);
    sub_3EA024();

    sub_886BC(&qword_4F5B28, &qword_4F5B18);
    sub_3E9F94();
    (*(v17 + 8))(v20, v22);
  }
}

void sub_180F6C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    v5 = *a1;
    Shelf.mapToModernShelf()(a2);
  }

  else
  {
    v3 = type metadata accessor for ModernShelf();
    v4 = *(*(v3 - 8) + 56);

    v4(a2, 1, 1, v3);
  }
}

uint64_t sub_181020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v82 = a3;
  v83 = a4;
  v85 = a2;
  v81 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5D70);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v61 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5D78);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v61 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5D80);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v61 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5D88);
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v70 = &v61 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5D90);
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v74 = &v61 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5D98);
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v75 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AC8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v61 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DA0);
  v71 = *(v19 - 8);
  v72 = v19;
  __chkstk_darwin(v19);
  v86 = &v61 - v20;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DA8);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v87 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v88 = &v61 - v23;
  v24 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v25 = sub_3ED204();
  v84 = v24;
  LOBYTE(v24) = [v24 BOOLForKey:v25];

  if (v24 & 1) != 0 || (v26 = v16, v27 = v9, v28 = v6, v29 = v7, v30 = v5, v31 = *(v5 + 48), v32 = *(v5 + 56), __swift_project_boxed_opaque_existential_1((v30 + 24), v31), v33 = *(v32 + 576), v34 = v31, v35 = v32, v5 = v30, v36 = v28, v37 = v27, v16 = v26, (v33(v85, 3, v34, v35)))
  {
    v61 = v5;
    v38 = v85;
    v89 = sub_183650(v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DC0);
    sub_886BC(&qword_4F5DC8, &qword_4F5DC0);
    sub_3EA174();

    v89 = sub_183A0C(v38);
    sub_3EA174();

    if (qword_4E89F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AC0);
    sub_3E9E74();
    swift_endAccess();
    sub_886BC(&qword_4F5DD0, &qword_4F5AC8);
    sub_886BC(&qword_4F5DD8, &unk_4F5B78);
    sub_3EA174();
    (*(v16 + 8))(v18, v15);
    v39 = v61;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
    v40 = v62;
    sub_3E9E74();
    swift_endAccess();
    sub_886BC(&qword_4F5DE0, &qword_4F5D78);
    v41 = v65;
    v42 = v64;
    sub_3EA174();
    (*(v63 + 8))(v40, v42);
    sub_886BC(&qword_4F5DE8, &qword_4F5D80);
    sub_886BC(&qword_4F5DF0, &qword_4F5DA8);
    sub_886BC(&qword_4F5DF8, &qword_4F5DA0);
    v43 = v70;
    v44 = v67;
    v45 = v69;
    v46 = v72;
    sub_3E9FD4();
    (*(v66 + 8))(v41, v44);
    v47 = swift_allocObject();
    v49 = v82;
    v48 = v83;
    v47[2] = v39;
    v47[3] = v49;
    v50 = v81;
    v47[4] = v48;
    v47[5] = v50;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_183D24;
    *(v51 + 24) = v47;

    sub_7A6C8(v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AF0);
    sub_886BC(&qword_4F5E00, &qword_4F5D88);
    v52 = v74;
    v53 = v76;
    sub_3EA024();

    (*(v73 + 8))(v43, v53);
    sub_886BC(&qword_4F5E08, &qword_4F5D90);
    sub_886BC(&qword_4F5B00, &qword_4F5AF0);
    v54 = v75;
    v55 = v79;
    sub_3EA184();
    (*(v77 + 8))(v52, v55);
    sub_886BC(&qword_4F5E10, &qword_4F5D98);
    v56 = v80;
    v57 = sub_3E9F34();
    (*(v78 + 8))(v54, v56);
    v89 = v57;
    v58 = sub_3E9F94();

    (*(v71 + 8))(v86, v46);
    v59 = *(v68 + 8);
    v59(v87, v45);
    v59(v88, v45);
  }

  else
  {
    v89 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DB0);
    sub_3E9DF4();
    sub_886BC(&qword_4F5DB8, &qword_4F5D70);
    v58 = sub_3E9F94();

    (*(v29 + 8))(v37, v36);
  }

  return v58;
}

uint64_t sub_181CC4(char a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = a8;
  v71 = a5;
  v62 = a6;
  v63 = a7;
  v60 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5E18);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v61 = &v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5D70);
  v68 = *(v14 - 8);
  v69 = v14;
  __chkstk_darwin(v14);
  v67 = &v56 - v15;
  v16 = sub_3E5FC4();
  v65 = *(v16 - 8);
  v66 = v16;
  __chkstk_darwin(v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v19 - 8);
  v64 = &v56 - v20;
  v21 = sub_3EC1F4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v56 - v26;
  if ((a1 & 1) == 0 || (a2 & 1) == 0 || (a3 & 1) == 0)
  {
    v75[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DB0);
    v53 = v67;
    sub_3E9DF4();
    sub_886BC(&qword_4F5DB8, &qword_4F5D70);
    v54 = v69;
    v52 = sub_3E9F94();
LABEL_8:
    (*(v68 + 8))(v53, v54);
    return v52;
  }

  v57 = v12;
  v58 = v11;
  v28 = swift_allocObject();
  v59 = v28;
  swift_weakInit();
  v29 = swift_allocObject();
  v30 = v62;
  v31 = v63;
  *(v29 + 2) = v62;
  *(v29 + 3) = v31;
  v32 = v70;
  *(v29 + 4) = v28;
  *(v29 + 5) = v32;
  sub_7A6C8(v30);

  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for ClosureAction();
  v33 = swift_allocObject();
  v34 = (v33 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v34 = sub_183DF4;
  v34[1] = v29;
  (*(v22 + 16))(v24, v27, v21);
  v35 = sub_3EC634();
  v36 = v64;
  (*(*(v35 - 8) + 56))(v64, 1, 1, v35);

  sub_3E5FB4();
  v37 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v39 = v38;

  (*(v65 + 8))(v18, v66);
  v40 = v27;
  v41 = v71;
  (*(v22 + 8))(v40, v21);
  *(v33 + 16) = v37;
  *(v33 + 24) = v39;
  *(v33 + 32) = 0;
  *(v33 + 40) = 0;
  *(v33 + 48) = 32;
  (*(v22 + 32))(v33 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v24, v21);
  sub_14A10(v36, v33 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  sub_1830EC(v41 + 64, &v73);
  if (!v74)
  {
    sub_18319C(&v73);
    v75[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DB0);
    v53 = v67;
    sub_3E9DF4();
    sub_886BC(&qword_4F5DB8, &qword_4F5D70);
    v54 = v69;
    v52 = sub_3E9F94();

    goto LABEL_8;
  }

  sub_1D4F0(&v73, v75);
  v42 = v76;
  v43 = v77;
  __swift_project_boxed_opaque_existential_1(v75, v76);
  v44 = v70;
  v45 = sub_3E94B4();
  (*(v43 + 80))(v45, v42, v43);
  v46 = sub_3ECD54();

  *&v73 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5E20);
  sub_886BC(&qword_4F5E28, &qword_4F5E20);
  v47 = sub_3E9EF4();

  v72 = v47;
  v48 = swift_allocObject();
  v48[2] = v33;
  v48[3] = v41;
  v49 = v60;
  v48[4] = v44;
  v48[5] = v49;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DB0);
  sub_886BC(&qword_4F5B00, &qword_4F5AF0);
  v50 = v61;
  sub_3EA024();

  sub_886BC(&qword_4F5E30, &qword_4F5E18);
  v51 = v58;
  v52 = sub_3E9F94();

  (*(v57 + 8))(v50, v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v75);
  return v52;
}

uint64_t sub_1824BC(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    a1();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1F958(result + 24, v8);

    v6 = v9;
    v7 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v7 + 584))(a4, v6, v7);
    return __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  return result;
}

void sub_182574(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_14;
  }

  v12 = OBJC_IVAR____TtC8ShelfKit5Shelf_items;
  swift_beginAccess();
  v13 = *&v7[v12];
  if (!*(v13 + 16))
  {
LABEL_8:
    v7 = 0;
    goto LABEL_14;
  }

  sub_1F958(v13 + 32, v20);
  v14 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9B70);
  type metadata accessor for EpisodeUpsellBannerModel();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v15 = OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_dismissBannerAction;
  swift_beginAccess();
  *(v19[1] + v15) = a2;

  if (!*(a3 + 16))
  {
    v17 = qword_4E89F8;

    if (v17 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v18 = sub_3E9E94();
    sub_3180C(v19, a4);
    v18(v20, 0);

    goto LABEL_13;
  }

  if (*(a3 + 16) != 1)
  {

LABEL_13:

    goto LABEL_14;
  }

  v16 = sub_33C840(a4, a5);

  if (v16)
  {
    goto LABEL_7;
  }

LABEL_14:
  *a6 = v7;
}

id sub_182790@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_3E5F84();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v18 - v10;
  result = [a1 subscribed];
  if (result)
  {
    result = [a1 lastDismissedEpisodeUpsellBannerDate];
    if (v13 <= 0.0)
    {
      v17 = 1;
    }

    else
    {
      sub_3E5F74();
      [a1 lastDismissedEpisodeUpsellBannerDate];
      sub_3E5E24();
      sub_3E5E54();
      v15 = v14;
      v16 = *(v5 + 8);
      v16(v7, v4);
      result = (v16)(v11, v4);
      v17 = v15 > 7776000.0;
    }
  }

  else
  {
    v17 = 0;
  }

  *a2 = v17;
  return result;
}

void sub_18291C(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [a1 podcastForStoreId:a2];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 channel];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 storeId];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

uint64_t sub_1829AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v20 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5E58);
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v16 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5E60);
  v19 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v16 - v6;
  v8 = *a1;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_3EE3C4(31);

  v22 = 0xD00000000000001DLL;
  v23 = 0x8000000000429090;
  v21 = v8;
  v24._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v24);

  v16 = v23;
  sub_3ED244();
  v9 = [objc_opt_self() predicateForChannelWithStoreId:v8];
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 privateQueueContext];

  sub_36174(0, &qword_4F10B0);
  sub_3EDBC4();
  sub_36174(0, &qword_4F2EA0);
  sub_3E9424();
  sub_886BC(&qword_4F5E68, &qword_4F5E58);
  v12 = v18;
  sub_3EA024();
  (*(v3 + 8))(v5, v12);
  sub_886BC(&qword_4F5E70, &qword_4F5E60);
  v13 = v17;
  v14 = sub_3E9F94();
  result = (*(v19 + 8))(v7, v13);
  *v20 = v14;
  return result;
}

id sub_182D74@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 subscriptionActive];
  *a2 = result ^ 1;
  return result;
}

uint64_t sub_182DCC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  *a1 = v3;
  return result;
}

uint64_t sub_182E4C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

uint64_t sub_182EC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v7 = sub_3E8304();
  __chkstk_darwin(v7 - 8);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC444();
  sub_3ECD14();
  sub_1D4F0(v14, v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB28);
  sub_3ECD14();
  v10 = v14[1];
  *(v4 + 64) = v14[0];
  *(v4 + 80) = v10;
  *(v4 + 96) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5E98);
  sub_3ECD14();
  *(v4 + 104) = *&v14[0];
  *(v4 + 16) = a4;

  v11 = sub_3E8D54();

  *(v5 + 112) = v11;
  sub_3E8984();
  LOBYTE(v11) = sub_3E82E4();
  sub_10A060(v9);
  swift_beginAccess();
  v13[7] = v11 & 1;
  sub_3E9E64();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_3E8964();

  return v5;
}

uint64_t sub_1830EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18315C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_18319C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_183208()
{
  result = qword_4F5B30;
  if (!qword_4F5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F5B30);
  }

  return result;
}

void sub_18328C()
{
  sub_18340C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_18340C()
{
  if (!qword_4F5B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_4F5B78);
    v0 = sub_3E9EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F5B70);
    }
  }
}

void sub_183498()
{
  sub_1835E8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1835E8()
{
  if (!qword_4F5C60)
  {
    v0 = sub_3E9EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F5C60);
    }
  }
}

uint64_t sub_183650(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5E78);
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = v14 - v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5E80);
  v17 = *(v15 - 8);
  __chkstk_darwin(v15);
  v6 = v14 - v5;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_3EE3C4(31);

  v19 = 0xD00000000000001DLL;
  v20 = 0x80000000004290B0;
  v18 = a1;
  v21._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v21);

  v14[1] = v20;
  sub_3ED244();
  v7 = [objc_opt_self() predicateForPodcastStoreId:a1];
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 privateQueueContext];

  sub_36174(0, &qword_4F10B0);
  sub_3EDBC4();
  sub_36174(0, &qword_4EA188);
  sub_3E9424();
  sub_886BC(&qword_4F5E88, &qword_4F5E78);
  v10 = v16;
  sub_3EA024();
  (*(v2 + 8))(v4, v10);
  sub_886BC(&qword_4F5E90, &qword_4F5E80);
  v11 = v15;
  v12 = sub_3E9F94();
  (*(v17 + 8))(v6, v11);
  return v12;
}

uint64_t sub_183A0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5E38);
  v3 = *(v2 - 8);
  v16 = v2;
  v17 = v3;
  __chkstk_darwin(v2);
  v5 = &v15 - v4;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 privateQueueContext];

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  sub_36174(0, &qword_4F10B0);
  v9 = v7;
  v10 = sub_3EDBC4();
  v11 = sub_3EDD44();

  v18 = v11;
  sub_3E9C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DC0);
  sub_886BC(&qword_4F5E48, &qword_4F5E40);
  sub_886BC(&qword_4F5DC8, &qword_4F5DC0);
  sub_3EA1D4();

  sub_886BC(&qword_4F5E50, &qword_4F5E38);
  v12 = v16;
  v13 = sub_3E9F94();

  (*(v17 + 8))(v5, v12);
  return v13;
}

uint64_t sub_183CDC()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_183D30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_183D68@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2], *(a1 + 1));
  *a2 = result;
  return result;
}

uint64_t sub_183DAC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_183E00()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_183E54()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_183EA0(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_3EE5A4();
    if (v19)
    {
      v20 = v19;
      v1 = sub_1C3600(v19, 0);
      sub_439E0(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_3EE5A4();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = sub_3EE3F4();
          v11 = sub_3EE3F4();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_2A68C0(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_2A68C0(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void sub_1840B0(void *a1)
{
  v2 = type metadata accessor for ModernShelf();
  v14 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v15 = &v14 - v6;
  v7 = a1[2];
  if (v7 < 2)
  {
    return;
  }

  v8 = 0;
  v9 = v7 >> 1;
  for (i = v7 - 1; ; --i)
  {
    if (v8 == i)
    {
      goto LABEL_5;
    }

    v11 = a1[2];
    if (v8 >= v11)
    {
      break;
    }

    v12 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v13 = *(v14 + 72);
    sub_192678(a1 + v12 + v13 * v8, v15, type metadata accessor for ModernShelf);
    if (i >= v11)
    {
      goto LABEL_14;
    }

    sub_192678(a1 + v12 + v13 * i, v4, type metadata accessor for ModernShelf);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_2A5130(a1);
    }

    sub_192B3C(v4, a1 + v12 + v13 * v8);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    sub_192B3C(v15, a1 + v12 + v13 * i);
LABEL_5:
    if (v9 == ++v8)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t HomePageProvider.isStillLoading.getter()
{
  sub_1842EC(v3);
  ModernShelfListBuilder.areAnyImportantShelvesStillLoading.getter();
  v1 = v0;

  return v1 & 1;
}

uint64_t sub_1842EC@<X0>(char *a1@<X8>)
{
  v181 = a1;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F40);
  v173 = *(v184 - 8);
  __chkstk_darwin(v184);
  v172 = &v165 - v2;
  v171 = sub_3E9A04();
  v170 = *(v171 - 8);
  __chkstk_darwin(v171);
  v169 = &v165 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v185);
  v175 = &v165 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v174 = &v165 - v6;
  __chkstk_darwin(v7);
  v167 = &v165 - v8;
  __chkstk_darwin(v9);
  v186 = (&v165 - v10);
  __chkstk_darwin(v11);
  v191 = (&v165 - v12);
  __chkstk_darwin(v13);
  v15 = &v165 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v16 - 8);
  v180 = &v165 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v165 - v19;
  __chkstk_darwin(v21);
  v23 = &v165 - v22;
  v24 = type metadata accessor for ModernShelf();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v168 = &v165 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v166 = &v165 - v28;
  __chkstk_darwin(v29);
  v165 = &v165 - v30;
  __chkstk_darwin(v31);
  v192 = &v165 - v32;
  __chkstk_darwin(v33);
  v35 = &v165 - v34;
  __chkstk_darwin(v36);
  v38 = &v165 - v37;
  __chkstk_darwin(v39);
  v182 = &v165 - v40;
  __chkstk_darwin(v41);
  v43 = &v165 - v42;
  __chkstk_darwin(v44);
  v46 = &v165 - v45;
  v200 = _swiftEmptyArrayStorage;
  v201 = _swiftEmptyArrayStorage;
  v199 = 1;
  v47 = *(v1 + 80);
  v187 = v1;
  v190 = v25;
  v178 = v47;
  if ((v47 & 1) == 0)
  {
    v48 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_unifiedMessagingHeaderShelf;
    swift_beginAccess();
    v49 = v1 + v48;
    v25 = v190;
    sub_17C418(v49, v23);
    v50 = *(v25 + 48);
    if (v50(v23, 1, v24) != 1)
    {
      v62 = v35;
      v179 = v50;
      sub_192868(v23, v46, type metadata accessor for ModernShelf);
      sub_192678(v46, v15, type metadata accessor for ModernShelf);
      (*(v25 + 56))(v15, 0, 2, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
      sub_3E9504();
      v63 = v194;
      v64 = sub_E02FC(0, 1, 1, _swiftEmptyArrayStorage);
      v66 = v64[2];
      v65 = v64[3];
      v52 = v24;
      if (v66 >= v65 >> 1)
      {
        v64 = sub_E02FC((v65 > 1), v66 + 1, 1, v64);
      }

      v61 = _swiftEmptyArrayStorage;
      sub_FCF8(v15, &qword_4F5978);
      sub_1926E0(v46, type metadata accessor for ModernShelf);
      v64[2] = v66 + 1;
      v64[v66 + 4] = v63;
      v201 = v64;
      v35 = v62;
      goto LABEL_13;
    }

    sub_FCF8(v23, &unk_503DA0);
    v1 = v187;
  }

  v51 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_categoriesSavedTipShelf;
  swift_beginAccess();
  sub_17C418(v1 + v51, v20);
  v179 = *(v25 + 48);
  v52 = v24;
  if (v179(v20, 1, v24) == 1)
  {
    sub_FCF8(v20, &unk_503DA0);
  }

  else
  {
    v53 = v35;
    sub_192868(v20, v43, type metadata accessor for ModernShelf);
    v54 = v191;
    sub_192678(v43, v191, type metadata accessor for ModernShelf);
    (*(v25 + 56))(v54, 0, 2, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_3E9504();
    v55 = v194;
    v56 = sub_E02FC(0, 1, 1, _swiftEmptyArrayStorage);
    v58 = v56[2];
    v57 = v56[3];
    if (v58 >= v57 >> 1)
    {
      v56 = sub_E02FC((v57 > 1), v58 + 1, 1, v56);
    }

    sub_FCF8(v191, &qword_4F5978);
    v56[2] = v58 + 1;
    v56[v58 + 4] = v55;
    v201 = v56;
    v59 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    sub_3ED324();
    v60 = sub_3ED204();

    [v59 setBool:1 forKey:v60];

    sub_1926E0(v43, type metadata accessor for ModernShelf);
    v35 = v53;
  }

  v61 = _swiftEmptyArrayStorage;
LABEL_13:
  v67 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_storeShelves;
  swift_beginAccess();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F28);
  v177 = v67;
  v183 = v68;
  sub_3E89F4();
  v69 = v193;
  swift_endAccess();
  v194 = v69;
  v70 = &v194;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14E8);
  sub_3E9514();
  sub_192858(v69);
  if (v198)
  {
    v71 = v198;
  }

  else
  {
    v71 = _swiftEmptyArrayStorage;
  }

  v72 = *(v71 + 16);

  if (!v72)
  {
LABEL_30:

    v61 = v187;
    goto LABEL_92;
  }

  v73 = 0;
  v189 = 0x8000000000423550;
  v191 = v71;
  while (1)
  {
    if (v73 >= *(v71 + 16))
    {
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v188 = (*(v190 + 80) + 32) & ~*(v190 + 80);
    v61 = *(v190 + 72);
    sub_192678(v71 + v188 + v61 * v73, v38, type metadata accessor for ModernShelf);
    v74 = v52;
    v75 = v38[*(v52 + 24)];
    if (ModernShelf.ItemKind.rawValue.getter(v75) == 0xD000000000000011 && 0x8000000000423530 == v76)
    {

      goto LABEL_35;
    }

    v78 = sub_3EE804();

    if (v78)
    {
      break;
    }

    v79 = ModernShelf.ItemKind.rawValue.getter(v75);
    v70 = v80;
    if (v79 == 0xD000000000000018 && v189 == v80)
    {
      v71 = v191;

      goto LABEL_35;
    }

    v82 = sub_3EE804();

    v71 = v191;
    if (v82)
    {
      goto LABEL_35;
    }

    ++v73;
    sub_1926E0(v38, type metadata accessor for ModernShelf);
    v52 = v74;
    if (v72 == v73)
    {
      goto LABEL_30;
    }
  }

  v71 = v191;
LABEL_35:

  v83 = v182;
  sub_192868(v38, v182, type metadata accessor for ModernShelf);
  v84 = v83;
  v85 = v186;
  sub_192678(v84, v186, type metadata accessor for ModernShelf);
  v52 = v74;
  (*(v190 + 56))(v85, 0, 2, v74);
  v70 = &v199;
  ModernShelfListBuilder.addImportantShelf(_:)();
  sub_FCF8(v85, &qword_4F5978);
  v86 = *(v71 + 16);
  if (v86)
  {
    v87 = 0;
    v88 = v188;
    while (1)
    {
      if (v87 >= *(v71 + 16))
      {
        goto LABEL_140;
      }

      sub_192678(v71 + v88, v35, type metadata accessor for ModernShelf);
      v89 = *(v35 + *(v52 + 24));
      v90 = ModernShelf.ItemKind.rawValue.getter(v89);
      v70 = v91;
      if (v90 == 0xD000000000000011 && 0x8000000000423530 == v91)
      {
        break;
      }

      v93 = sub_3EE804();

      if (v93)
      {
        goto LABEL_53;
      }

      v94 = ModernShelf.ItemKind.rawValue.getter(v89);
      v70 = v95;
      if (v94 == 0xD000000000000018 && v189 == v95)
      {
        break;
      }

      v97 = sub_3EE804();

      sub_1926E0(v35, type metadata accessor for ModernShelf);
      if (v97)
      {
        goto LABEL_54;
      }

      ++v87;
      v88 += v61;
      v52 = v74;
      v71 = v191;
      if (v86 == v87)
      {
        v86 = v191[2];
        v87 = v86;
        goto LABEL_51;
      }
    }

LABEL_53:
    sub_1926E0(v35, type metadata accessor for ModernShelf);
LABEL_54:
    v86 = v87 + 1;
    v71 = v191;
    v98 = v191[2];
    if (v98 - 1 == v87)
    {
      v61 = v187;
      v52 = v74;
      goto LABEL_84;
    }

    v99 = v61 + v88;
    v52 = v74;
    while (2)
    {
      if (v86 >= v98)
      {
        goto LABEL_139;
      }

      v35 = v71;
      v100 = v192;
      sub_192678(&v99[v71], v192, type metadata accessor for ModernShelf);
      v70 = *(v100 + *(v52 + 24));
      if (ModernShelf.ItemKind.rawValue.getter(v70) == 0xD000000000000011 && 0x8000000000423530 == v101)
      {
        goto LABEL_57;
      }

      v103 = sub_3EE804();
      v52 = v74;

      if ((v103 & 1) == 0)
      {
        if (ModernShelf.ItemKind.rawValue.getter(v70) != 0xD000000000000018 || v189 != v104)
        {
          v70 = v104;
          v106 = sub_3EE804();

          result = sub_1926E0(v192, type metadata accessor for ModernShelf);
          v71 = v35;
          if (v106)
          {
            v52 = v74;
          }

          else
          {
            if (v86 == v87)
            {
              v52 = v74;
            }

            else
            {
              if (v87 < 0)
              {
                __break(1u);
LABEL_146:
                __break(1u);
LABEL_147:
                __break(1u);
LABEL_148:
                __break(1u);
                return result;
              }

              v108 = *(v35 + 16);
              if (v87 >= v108)
              {
                goto LABEL_146;
              }

              v70 = v87 * v61;
              result = sub_192678(v35 + v188 + v87 * v61, v165, type metadata accessor for ModernShelf);
              if (v86 >= v108)
              {
                goto LABEL_147;
              }

              sub_192678(&v99[v35], v166, type metadata accessor for ModernShelf);
              v52 = v74;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v71 = sub_2A5130(v35);
              }

              result = sub_192B3C(v166, v71 + v188 + v70);
              if (v86 >= *(v71 + 16))
              {
                goto LABEL_148;
              }

              sub_192B3C(v165, &v99[v71]);
            }

            ++v87;
          }

LABEL_59:
          ++v86;
          v98 = *(v71 + 16);
          v99 = v61 + v99;
          if (v86 == v98)
          {
            v61 = v187;
            if (v86 < v87)
            {
              goto LABEL_141;
            }

            if (v87 < 0)
            {
              goto LABEL_142;
            }

            goto LABEL_84;
          }

          continue;
        }

LABEL_57:
      }

      break;
    }

    sub_1926E0(v192, type metadata accessor for ModernShelf);
    v71 = v35;
    goto LABEL_59;
  }

  v87 = 0;
LABEL_51:
  v61 = v187;
LABEL_84:
  if (__OFADD__(v86, v87 - v86))
  {
    goto LABEL_143;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v198 = v71;
  if (!isUniquelyReferenced_nonNull_native || v87 > *(v71 + 24) >> 1)
  {
    if (v86 <= v87)
    {
      v110 = v87;
    }

    else
    {
      v110 = v86;
    }

    v71 = sub_E02B0(isUniquelyReferenced_nonNull_native, v110, 1, v71);
    v198 = v71;
  }

  sub_17CAA4(v87, v86, 0);
  sub_1926E0(v182, type metadata accessor for ModernShelf);
LABEL_92:
  swift_beginAccess();
  sub_3E89F4();
  v111 = v193;
  swift_endAccess();
  v194 = v111;
  sub_3E9514();
  v112 = v197;
  v35 = v186;
  if (v197)
  {
    sub_192858(v111);
    v113 = v169;
    sub_3E99D4();
    v114 = sub_3E99F4();
    v115 = sub_3ED9F4();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_0, v114, v115, "Attempting to populate player for cold start user.", v116, 2u);
    }

    (*(v170 + 8))(v113, v171);
    v117 = v61[28];
    v118 = v61[29];
    v119 = v61;
    v120 = v61[30];
    v121 = sub_3E7424();
    v195 = v121;
    v196 = sub_192AE4(&qword_4F07A0, &type metadata accessor for Podcasts);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v194);
    v123 = enum case for Podcasts.upNextSplit(_:);
    (*(*(v121 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.upNextSplit(_:), v121);
    LOBYTE(v121) = sub_3E6C64();
    __swift_destroy_boxed_opaque_existential_1Tm(&v194);
    v191 = v71;
    if (v121)
    {
      v124 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_newEpisodesShelf;
    }

    else
    {
      v124 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_upNextShelf;
    }

    v125 = v119;
    v126 = v119 + v124;
    swift_beginAccess();
    v127 = v173;
    v128 = v172;
    v129 = v126;
    v130 = v184;
    (*(v173 + 16))(v172, v129, v184);
    sub_34F7A0(v112, v128, v117, v118, v120);

    (*(v127 + 8))(v128, v130);
    v35 = v186;
    v71 = v191;
    v61 = v125;
  }

  else
  {
    sub_192858(v111);
    v123 = enum case for Podcasts.upNextSplit(_:);
  }

  v131 = sub_3E7424();
  v195 = v131;
  v196 = sub_192AE4(&qword_4F07A0, &type metadata accessor for Podcasts);
  v132 = __swift_allocate_boxed_opaque_existential_0Tm(&v194);
  (*(*(v131 - 8) + 104))(v132, v123, v131);
  v133 = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(&v194);
  v134 = v190;
  if (v133)
  {
    swift_beginAccess();
    sub_3E89F4();
    swift_endAccess();
    ModernShelfListBuilder.addImportantShelf(_:)();
    sub_FCF8(v35, &qword_4F5978);
  }

  swift_beginAccess();
  sub_3E89F4();
  swift_endAccess();
  ModernShelfListBuilder.addImportantShelf(_:)();
  sub_FCF8(v35, &qword_4F5978);
  if (v178)
  {
  }

  else
  {
    if (os_feature_enabled_prototype_up_next())
    {
      swift_beginAccess();
      sub_3E89F4();
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
      sub_3E9504();
      v135 = v194;
      v136 = v201;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v136 = sub_E02FC(0, v136[2] + 1, 1, v136);
      }

      v138 = v136[2];
      v137 = v136[3];
      if (v138 >= v137 >> 1)
      {
        v136 = sub_E02FC((v137 > 1), v138 + 1, 1, v136);
      }

      sub_FCF8(v167, &qword_4F5978);
      v136[2] = v138 + 1;
      v136[v138 + 4] = v135;
      v201 = v136;
    }

    sub_3E76B4();
    if ((sub_3E76A4() & 1) == 0)
    {
      swift_beginAccess();
      sub_3E89F4();
      v139 = v197;
      swift_endAccess();
      v140 = v200;
      sub_192B2C(v139);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v140 = sub_E02FC(0, v140[2] + 1, 1, v140);
      }

      v142 = v140[2];
      v141 = v140[3];
      if (v142 >= v141 >> 1)
      {
        v140 = sub_E02FC((v141 > 1), v142 + 1, 1, v140);
      }

      v140[2] = v142 + 1;
      v140[v142 + 4] = v139;
      v200 = v140;
      v143 = v201;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v143 = sub_E02FC(0, v143[2] + 1, 1, v143);
      }

      v145 = v143[2];
      v144 = v143[3];
      if (v145 >= v144 >> 1)
      {
        v143 = sub_E02FC((v144 > 1), v145 + 1, 1, v143);
      }

      v143[2] = v145 + 1;
      v143[v145 + 4] = v139;
      v201 = v143;
    }

    v70 = v200;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_144:
      v70 = sub_E02FC(0, *(v70 + 16) + 1, 1, v70);
    }

    v147 = *(v70 + 16);
    v146 = *(v70 + 24);
    if (v147 >= v146 >> 1)
    {
      v70 = sub_E02FC((v146 > 1), v147 + 1, 1, v70);
    }

    *(v70 + 16) = v147 + 1;
    *(v70 + 8 * v147 + 32) = v71;
    v200 = v70;
    v148 = v201;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v148 = sub_E02FC(0, v148[2] + 1, 1, v148);
    }

    v150 = v148[2];
    v149 = v148[3];
    if (v150 >= v149 >> 1)
    {
      v148 = sub_E02FC((v149 > 1), v150 + 1, 1, v148);
    }

    v148[2] = v150 + 1;
    v148[v150 + 4] = v71;

    v201 = v148;
    swift_beginAccess();
    sub_3E89F4();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_3E9504();
    v151 = v194;
    v153 = v148[2];
    v152 = v148[3];
    if (v153 >= v152 >> 1)
    {
      v148 = sub_E02FC((v152 > 1), v153 + 1, 1, v148);
    }

    sub_FCF8(v174, &qword_4F5978);
    v148[2] = v153 + 1;
    v148[v153 + 4] = v151;
    v201 = v148;
    v134 = v190;
  }

  swift_beginAccess();
  sub_3E89F4();
  swift_endAccess();
  ModernShelfListBuilder.addImportantShelf(_:)();
  sub_FCF8(v35, &qword_4F5978);
  v154 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_notFindingAnythingTipShelf;
  swift_beginAccess();
  v155 = v61 + v154;
  v156 = v180;
  sub_17C418(v155, v180);
  if (v179(v156, 1, v52) == 1)
  {
    result = sub_FCF8(v156, &unk_503DA0);
    v157 = v201;
  }

  else
  {
    v158 = v168;
    sub_192868(v156, v168, type metadata accessor for ModernShelf);
    v159 = v175;
    sub_192678(v158, v175, type metadata accessor for ModernShelf);
    (*(v134 + 56))(v159, 0, 2, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_3E9504();
    v160 = v197;
    v157 = v201;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v157 = sub_E02FC(0, v157[2] + 1, 1, v157);
    }

    v162 = v157[2];
    v161 = v157[3];
    if (v162 >= v161 >> 1)
    {
      v157 = sub_E02FC((v161 > 1), v162 + 1, 1, v157);
    }

    sub_FCF8(v175, &qword_4F5978);
    result = sub_1926E0(v158, type metadata accessor for ModernShelf);
    v157[2] = v162 + 1;
    v157[v162 + 4] = v160;
  }

  v163 = v200;
  v164 = v181;
  *v181 = v199;
  *(v164 + 1) = v163;
  *(v164 + 2) = v157;
  return result;
}

uint64_t sub_185DA8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  v5 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_upNextEpisodesQueue;
  if (*(v3 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_upNextEpisodesQueue))
  {

    sub_185E9C(v6);

    *(v3 + v5) = 0;
  }

  return result;
}

uint64_t HomePageProvider.episodeOrderingFrozen.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  v4 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_upNextEpisodesQueue;
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_upNextEpisodesQueue))
  {

    sub_185E9C(v5);

    *(v1 + v4) = 0;
  }

  return result;
}

char *sub_185E9C(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageContent();
  __chkstk_darwin(v4 - 8);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v7 - 8);
  v9 = &v89 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v89 - v11;
  v109 = type metadata accessor for Header(0);
  v96 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v14 - 8);
  v107 = &v89 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0);
  __chkstk_darwin(v16 - 8);
  v95 = (&v89 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  __chkstk_darwin(v18 - 8);
  v106 = &v89 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v20 - 8);
  v110 = &v89 - v21;
  v22 = type metadata accessor for ModernShelf();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v93);
  v94 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_upNextEpisodesQueue) = a1;

  v111 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_currentUpNextEpisodes;
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_currentUpNextEpisodes))
  {
    swift_beginAccess();
    v27 = *(v1 + 24);

    a1 = sub_2D57C8(v28, a1, v27);
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  v101 = v9;
  v102 = v6;
  v99 = v25;
  v100 = v12;
  v97 = v23;
  v98 = v22;
  if (a1 >> 62)
  {
    v29 = sub_3EE5A4();
  }

  else
  {
    v29 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v30 = _swiftEmptyArrayStorage;
  if (v29)
  {
    v112 = _swiftEmptyArrayStorage;
    sub_41BA8(0, v29 & ~(v29 >> 63), 0);
    if (v29 < 0)
    {
      __break(1u);
LABEL_41:
      v44 = sub_3EE5A4();
      goto LABEL_21;
    }

    v30 = v112;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v31 = 0;
      do
      {
        v32 = sub_3EE3F4();
        v33 = *(v32 + 16);
        v34 = *(v32 + 24);

        swift_unknownObjectRelease();
        v112 = v30;
        v36 = v30[2];
        v35 = v30[3];
        if (v36 >= v35 >> 1)
        {
          sub_41BA8((v35 > 1), v36 + 1, 1);
          v30 = v112;
        }

        ++v31;
        v30[2] = v36 + 1;
        v37 = &v30[2 * v36];
        v37[4] = v33;
        v37[5] = v34;
      }

      while (v29 != v31);
    }

    else
    {
      v38 = a1 + 32;
      do
      {
        v40 = *(*v38 + 16);
        v39 = *(*v38 + 24);
        v112 = v30;
        v42 = v30[2];
        v41 = v30[3];

        if (v42 >= v41 >> 1)
        {
          sub_41BA8((v41 > 1), v42 + 1, 1);
          v30 = v112;
        }

        v30[2] = v42 + 1;
        v43 = &v30[2 * v42];
        v43[4] = v40;
        v43[5] = v39;
        v38 += 8;
        --v29;
      }

      while (v29);
    }
  }

  v29 = *(v2 + v111);
  v104 = a1;
  v105 = v2;
  if (!v29)
  {

    goto LABEL_34;
  }

  if (v29 >> 62)
  {
    goto LABEL_41;
  }

  v44 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
LABEL_21:
  v45 = _swiftEmptyArrayStorage;
  if (v44)
  {
    v112 = _swiftEmptyArrayStorage;

    result = sub_41BA8(0, v44 & ~(v44 >> 63), 0);
    if (v44 < 0)
    {
      __break(1u);
      return result;
    }

    v47 = 0;
    v45 = v112;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v48 = sub_3EE3F4();
      }

      else
      {
        v48 = *(v29 + 8 * v47 + 32);
      }

      v49 = *(v48 + 16);
      v50 = *(v48 + 24);

      v112 = v45;
      v52 = v45[2];
      v51 = v45[3];
      if (v52 >= v51 >> 1)
      {
        sub_41BA8((v51 > 1), v52 + 1, 1);
        v45 = v112;
      }

      ++v47;
      v45[2] = v52 + 1;
      v53 = &v45[2 * v52];
      v53[4] = v49;
      v53[5] = v50;
    }

    while (v44 != v47);

    a1 = v104;
    v2 = v105;
  }

  v54 = sub_115630(v45, v30);

  if (v54)
  {
  }

LABEL_34:
  *(v2 + v111) = a1;

  v55 = [objc_opt_self() mainBundle];
  v88._countAndFlagsBits = 0xE000000000000000;
  v113._countAndFlagsBits = 0x5458454E5F5055;
  v113._object = 0xE700000000000000;
  v114.value._countAndFlagsBits = 0;
  v114.value._object = 0;
  v56.super.isa = v55;
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  v103 = sub_3E5A74(v113, v114, v56, v115, v88);
  v92 = v57;

  v58 = v94;
  *v94 = 257;
  *(v58 + 64) = 6;
  swift_storeEnumTagMultiPayload();
  v59 = _s8ShelfKit10FlowActionC6seeAllyAcA0C11DestinationOFZ_0(v58);
  v111 = v59;
  sub_1926E0(v58, type metadata accessor for FlowDestination);
  v93 = type metadata accessor for ActionMenu(0);
  v60 = *(v93 - 8);
  v91 = *(v60 + 56);
  v94 = v60 + 56;
  v91(v106, 1, 1, v93);
  v61 = v95;
  *v95 = v59;
  v62 = type metadata accessor for Header.PrimaryAction(0);
  swift_storeEnumTagMultiPayload();
  v89 = *(v62 - 8);
  v63 = *(v89 + 56);
  v63(v61, 0, 1, v62);
  v64 = sub_3E7784();
  v65 = *(*(v64 - 8) + 56);
  v65(v107, 1, 1, v64);
  v66 = v108;
  v67 = v109;
  v68 = v108;
  *(v108 + 16) = 0u;
  v69 = v68 + 16;
  *(v66 + 32) = 0;
  *v66 = 0u;
  v90 = v67[7];
  v91(v66 + v90, 1, 1, v93);
  v94 = v67[8];
  v63(v66 + v94, 1, 1, v62);
  v70 = v92;
  v71 = v67[9];
  v72 = v66 + v71;
  v73 = v103;
  v65(v72, 1, 1, v64);

  if ((sub_3EE0E4() & 1) != 0 || (*(v89 + 48))(v61, 1, v62) != 1)
  {
    v74 = v108;
    *v108 = v73;
    *(v74 + 8) = v70;
    *v69 = 0;
    *(v69 + 8) = 0;
    *(v69 + 16) = 0;

    sub_51F9C(v106, v74 + v90, &qword_4F1AB8);
    sub_B8464(v61, v74 + v94, &qword_4F1AB0);
    sub_51F9C(v107, v74 + v71, &qword_4F1D50);
    v75 = v110;
    sub_192678(v74, v110, type metadata accessor for Header);
    (*(v96 + 56))(v75, 0, 1, v109);
    sub_FCF8(v61, &qword_4F1AB0);
    sub_1926E0(v74, type metadata accessor for Header);
  }

  else
  {
    sub_FCF8(v107, &qword_4F1D50);
    sub_FCF8(v106, &qword_4F1AB8);
    sub_FCF8(v61, &qword_4F1AB0);
    sub_1926E0(v108, type metadata accessor for Header);
    (*(v96 + 56))(v110, 1, 1, v109);
  }

  v109 = sub_76CAC(v104);

  v76 = sub_3E5DC4();
  v77 = *(*(v76 - 8) + 56);
  v78 = v100;
  v77(v100, 1, 1, v76);
  v80 = v98;
  v79 = v99;
  v81 = &v99[v98[12]];
  *(v81 + 4) = 0;
  *v81 = 0u;
  *(v81 + 1) = 0u;
  v82 = v80[13];
  sub_3E8534();
  sub_3EC584();

  v83 = sub_3EC634();
  (*(*(v83 - 8) + 56))(&v79[v82], 0, 1, v83);
  v84 = v80[9];
  v85 = &v79[v80[8]];
  v77(&v79[v84], 1, 1, v76);
  *v79 = 0xD000000000000020;
  *(v79 + 1) = 0x80000000004290D0;
  sub_FACC(v110, &v79[v80[5]], &qword_4F1AC0);
  v86 = &v79[v80[6]];
  *v86 = 265;
  *(v86 + 3) = 256;
  *(v86 + 2) = 0;
  *(v86 + 1) = 1;
  *&v79[v80[7]] = v109;
  sub_51F9C(v78, &v79[v84], &unk_4E9EE0);
  v79[v80[10]] = 1;
  v79[v80[11]] = 0;
  *v85 = 0;
  *(v85 + 1) = 0;
  v87 = v101;
  sub_192678(v79, v101, type metadata accessor for ModernShelf);
  (*(v97 + 56))(v87, 0, 2, v80);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F40);
  sub_3E8A04();
  swift_endAccess();
  sub_190668(v102);
  sub_3E9D74();

  return sub_1926E0(v79, type metadata accessor for ModernShelf);
}

uint64_t (*HomePageProvider.episodeOrderingFrozen.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_186CD8;
}

uint64_t sub_186CD8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_upNextEpisodesQueue;
    if (*(v5 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_upNextEpisodesQueue))
    {

      sub_185E9C(v7);

      *(v5 + v6) = 0;
    }
  }

  return result;
}

uint64_t HomePageProvider.__allocating_init(asPartOf:platformContext:)(uint64_t a1, char a2)
{
  swift_allocObject();
  v4 = sub_191A74(a1, a2 & 1);

  return v4;
}

uint64_t HomePageProvider.init(asPartOf:platformContext:)(uint64_t a1, char a2)
{
  v2 = sub_191A74(a1, a2 & 1);

  return v2;
}

Swift::Void __swiftcall HomePageProvider.loadPageContent()()
{
  v1 = v0;
  v48 = type metadata accessor for ObserverQueue();
  __chkstk_darwin(v48);
  v49 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5EB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v50 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5EB8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5EC0);
  v51 = *(v13 - 8);
  v52 = v13;
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  v16 = sub_3E7424();
  v55 = v16;
  v47 = sub_192AE4(&qword_4F07A0, &type metadata accessor for Podcasts);
  v56 = v47;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v54);
  v18 = *(v16 - 8);
  v19 = *(v18 + 104);
  v45 = v18 + 104;
  v46 = v19;
  v19(boxed_opaque_existential_0Tm, enum case for Podcasts.upNextSplit(_:), v16);
  v20 = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(&v54);
  if (v20)
  {
    sub_18768C();
    sub_1878A8();
  }

  else
  {
    sub_187AC4();
    sub_187CD0();
  }

  sub_187FA0();
  if ((*(v1 + 80) & 1) == 0)
  {
    v40 = v4;
    v41 = v3;
    v42 = v9;
    v43 = v7;
    v44 = v6;
    sub_1881BC();
    v21 = *(v1 + 152);
    ObjectType = swift_getObjectType();
    *&v54 = (*(v21 + 8))(ObjectType, v21);
    sub_36174(0, &qword_4F10B0);
    v23 = sub_3EDBC4();
    v53 = v23;
    v24 = sub_3EDB64();
    (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503C40);
    sub_886BC(&qword_4F5EC8, &qword_503C40);
    sub_87870();
    sub_3EA114();
    sub_FCF8(v12, &qword_4F69E0);

    swift_allocObject();
    swift_weakInit();
    sub_886BC(&qword_4F5ED0, &qword_4F5EC0);
    v25 = v52;
    sub_3EA1A4();

    (*(v51 + 8))(v15, v25);
    v26 = *(v1 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_subscriptions);
    os_unfair_lock_lock(v26 + 6);
    sub_1920E4();
    os_unfair_lock_unlock(v26 + 6);

    v27 = [objc_opt_self() currentTraitCollection];
    LOBYTE(v25) = sub_3EDC24();

    if (v25 & 1) == 0 || (v55 = v16, v56 = v47, v28 = __swift_allocate_boxed_opaque_existential_0Tm(&v54), v46(v28, enum case for Podcasts.mercuryOnMac(_:), v16), v29 = sub_3E6C64(), __swift_destroy_boxed_opaque_existential_1Tm(&v54), (v29))
    {
      sub_1886BC();
    }

    sub_3E76B4();
    if ((sub_3E76A4() & 1) == 0)
    {
      v30 = *(v1 + 96);
      v31 = swift_getObjectType();
      (*(v30 + 216))(v31, v30);
      v52 = 0;
      v32 = v49;
      swift_storeEnumTagMultiPayload();
      v33 = sub_1889B8(v32);

      sub_1926E0(v32, type metadata accessor for ObserverQueue);
      v53 = v33;
      sub_1F958(v1 + 104, &v54);
      v34 = swift_allocObject();
      sub_1D4F0(&v54, v34 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5EE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5EE8);
      sub_886BC(&qword_4F5EF0, &qword_4F5EE0);
      v35 = v50;
      sub_3EA024();

      sub_886BC(&qword_4F5EF8, &qword_4F5EB0);
      sub_886BC(&qword_4F5F00, &qword_4F5EE8);
      v36 = v41;
      v37 = v42;
      sub_3EA184();
      (*(v40 + 8))(v35, v36);
      swift_allocObject();
      swift_weakInit();
      sub_886BC(&qword_4F5F08, &qword_4F5EB8);
      v38 = v44;
      sub_3EA1A4();

      (*(v43 + 8))(v37, v38);
      os_unfair_lock_lock(v26 + 6);
      sub_192D78();
      os_unfair_lock_unlock(v26 + 6);
    }

    sub_189E10();
    sub_18A6C0();
    sub_18ABF8();
  }
}

uint64_t sub_18768C()
{
  v1 = sub_3E8944();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 96);
  ObjectType = swift_getObjectType();
  v10[3] = 3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 10;
  sub_3E8954();
  v7 = LibraryDataProviderProtocol.episodeListPublisher(settings:pageSize:)(v4, 30, ObjectType, v5);
  (*(v2 + 8))(v4, v1);
  v10[2] = v7;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D00);
  sub_886BC(&qword_4F1A78, &qword_4F1D00);
  sub_3EA1A4();

  v8 = *(v0 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_subscriptions);
  os_unfair_lock_lock(v8 + 6);
  sub_192D78();
  os_unfair_lock_unlock(v8 + 6);
}

uint64_t sub_1878A8()
{
  v1 = sub_3E8944();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 96);
  ObjectType = swift_getObjectType();
  v10[3] = 4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 10;
  sub_3E8954();
  v7 = LibraryDataProviderProtocol.episodeListPublisher(settings:pageSize:)(v4, 12, ObjectType, v5);
  (*(v2 + 8))(v4, v1);
  v10[2] = v7;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D00);
  sub_886BC(&qword_4F1A78, &qword_4F1D00);
  sub_3EA1A4();

  v8 = *(v0 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_subscriptions);
  os_unfair_lock_lock(v8 + 6);
  sub_192D78();
  os_unfair_lock_unlock(v8 + 6);
}

uint64_t sub_187AC4()
{
  v1 = sub_3E8944();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 96);
  ObjectType = swift_getObjectType();
  v11 = 1;
  v12 = 6;
  sub_3E8954();
  v7 = LibraryDataProviderProtocol.episodeListPublisher(settings:pageSize:)(v4, 30, ObjectType, v5);
  (*(v2 + 8))(v4, v1);
  v10[2] = v7;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D00);
  sub_886BC(&qword_4F1A78, &qword_4F1D00);
  sub_3EA1A4();

  v8 = *(v0 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_subscriptions);
  os_unfair_lock_lock(v8 + 6);
  sub_192D78();
  os_unfair_lock_unlock(v8 + 6);
}

uint64_t sub_187CD0()
{
  v1 = sub_3E8944();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_feature_enabled_prototype_up_next();
  if (result)
  {
    v6 = v0[16];
    v7 = v0[17];
    __swift_project_boxed_opaque_existential_1(v0 + 13, v6);
    v8 = v0;
    (*(v7 + 128))(v6, v7);
    v9 = sub_36174(0, &qword_4F10B0);
    v10 = sub_3EDBC4();
    *&v18 = v9;
    *(&v18 + 1) = &protocol witness table for OS_dispatch_queue;
    v16 = v10;
    sub_3ECD94();

    __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    v11 = v8[12];
    ObjectType = swift_getObjectType();
    v16 = 2;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    v21 = 10;
    sub_3E8954();
    v13 = LibraryDataProviderProtocol.episodeListPublisher(settings:pageSize:)(v4, 30, ObjectType, v11);
    (*(v2 + 8))(v4, v1);
    v15[2] = v13;
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D00);
    sub_886BC(&qword_4F1A78, &qword_4F1D00);
    sub_3EA1A4();

    v14 = *(v8 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_subscriptions);
    os_unfair_lock_lock(v14 + 6);
    sub_192D78();
    os_unfair_lock_unlock(v14 + 6);
  }

  return result;
}

uint64_t sub_187FA0()
{
  v1 = sub_3E8944();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 96);
  ObjectType = swift_getObjectType();
  v10[3] = 1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 10;
  sub_3E8954();
  v7 = LibraryDataProviderProtocol.episodeListPublisher(settings:pageSize:)(v4, 12, ObjectType, v5);
  (*(v2 + 8))(v4, v1);
  v10[2] = v7;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D00);
  sub_886BC(&qword_4F1A78, &qword_4F1D00);
  sub_3EA1A4();

  v8 = *(v0 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_subscriptions);
  os_unfair_lock_lock(v8 + 6);
  sub_192D78();
  os_unfair_lock_unlock(v8 + 6);
}

uint64_t sub_1881BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6408);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6410);
  v7 = *(v6 - 8);
  v16 = v6;
  v17 = v7;
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = *(v0 + 200);
  v11 = *(v1 + 208);
  __swift_project_boxed_opaque_existential_1((v1 + 176), v10);
  StoreDataCache.fetchCachedListenNowFooter()(v10, v11);
  v12 = sub_3ECD24();

  v18 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1F80);
  sub_886BC(&qword_4F6420, &qword_4F6418);
  sub_3E9FA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
  sub_3E9B84();
  (*(v3 + 8))(v5, v2);
  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F6428, &qword_4F6410);
  v13 = v16;
  sub_3EA1A4();

  (*(v17 + 8))(v9, v13);
  v14 = *(v1 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_subscriptions);
  os_unfair_lock_lock(v14 + 6);
  sub_192D78();
  os_unfair_lock_unlock(v14 + 6);
}

uint64_t sub_188508(uint64_t a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v5 - 8);
  v7 = &v10[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_192678(a1, v7, type metadata accessor for ModernShelf);
    v9 = type metadata accessor for ModernShelf();
    (*(*(v9 - 8) + 56))(v7, 0, 2, v9);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F40);
    sub_3E8A04();
    swift_endAccess();
    sub_190668(v4);
    sub_3E9D74();
  }

  return result;
}

uint64_t sub_1886BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F63E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  v12[3] = UnifiedMessagingProvider.bannerShelfPublisher.getter();
  sub_36174(0, &qword_4F10B0);
  v7 = sub_3EDBC4();
  v12[2] = v7;
  v8 = sub_3EDB64();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F63F0);
  sub_886BC(&qword_4F63F8, &qword_4F63F0);
  sub_87870();
  sub_3EA114();
  sub_FCF8(v2, &qword_4F69E0);

  swift_allocObject();
  v9 = v12[0];
  swift_weakInit();
  sub_886BC(&qword_4F6400, &qword_4F63E8);
  sub_3EA1A4();

  (*(v4 + 8))(v6, v3);
  v10 = *(v9 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_subscriptions);
  os_unfair_lock_lock(v10 + 6);
  sub_192D78();
  os_unfair_lock_unlock(v10 + 6);
}

uint64_t sub_1889B8(uint64_t a1)
{
  v2 = type metadata accessor for ObserverQueue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6380);
  v6 = *(v5 - 8);
  v22 = v5;
  v23 = v6;
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6388);
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  __chkstk_darwin(v9);
  v24 = &v20 - v11;
  v21 = sub_3ECD54();
  v27 = v21;
  sub_192678(a1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ObserverQueue);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_192868(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ObserverQueue);
  sub_3E9C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5EE0);
  sub_886BC(&qword_4F6398, &qword_4F6390);
  sub_886BC(&qword_4F5EF0, &qword_4F5EE0);
  sub_3EA0E4();

  sub_886BC(&qword_4F63A0, &qword_4F6380);
  v14 = v22;
  v15 = sub_3E9F34();
  (*(v23 + 8))(v8, v14);
  v27 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F63A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F63B0);
  sub_886BC(&qword_4F63B8, &qword_4F63A8);
  sub_886BC(&qword_4F63C0, &qword_4F63B0);
  v16 = v24;
  sub_3EA054();

  sub_886BC(&qword_4F63C8, &qword_4F6388);
  v17 = v25;
  v18 = sub_3E9F94();
  (*(v26 + 8))(v16, v17);
  return v18;
}

uint64_t sub_188E58(uint64_t a1)
{
  v2 = type metadata accessor for ObserverQueue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F61C8);
  v6 = *(v5 - 8);
  v22 = v5;
  v23 = v6;
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F61D0);
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  __chkstk_darwin(v9);
  v24 = &v20 - v11;
  v21 = sub_3ECD54();
  v27 = v21;
  sub_192678(a1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ObserverQueue);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_192868(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ObserverQueue);
  sub_3E9C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F61D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F61E0);
  sub_886BC(&qword_4F61E8, &qword_4F61D8);
  sub_886BC(&qword_4F61F0, &qword_4F61E0);
  sub_3EA0E4();

  sub_886BC(&qword_4F61F8, &qword_4F61C8);
  v14 = v22;
  v15 = sub_3E9F34();
  (*(v23 + 8))(v8, v14);
  v27 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6208);
  sub_886BC(&qword_4F6210, &qword_4F6200);
  sub_886BC(&qword_4F6218, &qword_4F6208);
  v16 = v24;
  sub_3EA054();

  sub_886BC(&qword_4F6220, &qword_4F61D0);
  v17 = v25;
  v18 = sub_3E9F94();
  (*(v26 + 8))(v16, v17);
  return v18;
}

uint64_t sub_1892F8(uint64_t a1)
{
  v2 = type metadata accessor for ObserverQueue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6140);
  v6 = *(v5 - 8);
  v22 = v5;
  v23 = v6;
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6148);
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  __chkstk_darwin(v9);
  v24 = &v20 - v11;
  v21 = sub_3ECD54();
  v27 = v21;
  sub_192678(a1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ObserverQueue);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_192868(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ObserverQueue);
  sub_3E9C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6160);
  sub_886BC(&qword_4F6168, &qword_4F6158);
  sub_886BC(&qword_4F6170, &qword_4F6160);
  sub_3EA0E4();

  sub_886BC(&qword_4F6178, &qword_4F6140);
  v14 = v22;
  v15 = sub_3E9F34();
  (*(v23 + 8))(v8, v14);
  v27 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6188);
  sub_886BC(&qword_4F6190, &qword_4F6180);
  sub_886BC(&qword_4F6198, &qword_4F6188);
  v16 = v24;
  sub_3EA054();

  sub_886BC(&qword_4F61A0, &qword_4F6148);
  v17 = v25;
  v18 = sub_3E9F94();
  (*(v26 + 8))(v16, v17);
  return v18;
}

Swift::Int sub_189798@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6360);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6368);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  v14 = *a1;
  v15 = (v14 >> 62);
  if (v14 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)); i; i = sub_3EE5A4())
  {
    if ((i & 0x8000000000000000) != 0)
    {
      v6 = 2;
      if (!v15)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (i >= 2)
      {
        v6 = 2;
      }

      else
      {
        v6 = i;
      }

      if (!v15)
      {
LABEL_8:
        result = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
        goto LABEL_12;
      }
    }

    result = sub_3EE5A4();
    if (result < 0)
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return result;
    }

    result = sub_3EE5A4();
LABEL_12:
    if (result < v6)
    {
      goto LABEL_40;
    }

    v36 = v10;
    if ((v14 & 0xC000000000000001) != 0)
    {
      type metadata accessor for LegacyLockup();

      result = 0;
      do
      {
        v18 = result + 1;
        sub_3EE3D4(result);
        result = v18;
      }

      while (v6 != v18);
    }

    else
    {
    }

    v33 = a2;
    v34 = v13;
    v35 = v11;
    if (v15)
    {

      result = sub_3EE5B4();
      v9 = result;
      v20 = v21;
      v19 = v22;
      v6 = v23 >> 1;
    }

    else
    {
      v19 = 0;
      v9 = (v14 & 0xFFFFFFFFFFFFFF8);
      v20 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v10 = v6 - v19;
    if (__OFSUB__(v6, v19))
    {
      goto LABEL_41;
    }

    if (!v10)
    {
      swift_unknownObjectRelease();
      v15 = _swiftEmptyArrayStorage;
LABEL_34:
      v26 = v33[3];
      v27 = v33[4];
      __swift_project_boxed_opaque_existential_1(v33, v26);
      (*(v27 + 16))(v15, v26, v27);

      v28 = sub_3ECD54();

      v37 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6308);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
      sub_886BC(&qword_4F6310, &qword_4F6308);
      v29 = v34;
      sub_3EA024();

      sub_886BC(&qword_4F6370, &qword_4F6368);
      v30 = v36;
      v31 = sub_3E9F14();
      result = (*(v35 + 8))(v29, v30);
      goto LABEL_38;
    }

    v37 = _swiftEmptyArrayStorage;
    v14 = &v37;
    result = sub_41AD4(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      goto LABEL_42;
    }

    v32 = a3;
    v15 = v37;
    if (v6 <= v19)
    {
      v24 = v19;
    }

    else
    {
      v24 = v6;
    }

    a3 = (v24 - v19);
    v7 = v20 + 8 * v19;
    a2 = &OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId;
    while (a3)
    {
      v13 = *(*v7 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
      v37 = v15;
      v11 = v15[2];
      v25 = v15[3];
      v6 = v11 + 1;
      if (v11 >= v25 >> 1)
      {
        v14 = &v37;
        sub_41AD4((v25 > 1), v11 + 1, 1);
        v15 = v37;
      }

      v15[2] = v6;
      v15[v11 + 4] = v13;
      a3 = (a3 - 1);
      v7 += 8;
      if (!--v10)
      {
        swift_unknownObjectRelease();
        a3 = v32;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_36:
    ;
  }

  v37 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14E8);
  sub_3E9DF4();
  sub_886BC(&qword_4F6378, &qword_4F6360);
  v31 = sub_3E9F94();
  result = (*(v7 + 8))(v9, v6);
LABEL_38:
  *a3 = v31;
  return result;
}

void sub_189CC8(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = Array<A>.mapToModernShelves()(*a1);
  sub_1840B0(v3);
  *a2 = v4;
}

uint64_t sub_189CF8(unint64_t *a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7[4] = v5;
    swift_beginAccess();
    sub_192B2C(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F28);
    sub_3E8A04();
    swift_endAccess();
    sub_190668(v4);
    sub_3E9D74();
  }

  return result;
}

uint64_t sub_189E10()
{
  v1 = v0;
  v35 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v2 - 8);
  v44 = &v32 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F6890);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6278);
  v36 = *(v8 - 8);
  v37 = v8;
  __chkstk_darwin(v8);
  v34 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6280);
  v39 = *(v10 - 8);
  v40 = v10;
  __chkstk_darwin(v10);
  v38 = &v32 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6288);
  v42 = *(v12 - 8);
  v43 = v12;
  __chkstk_darwin(v12);
  v41 = &v32 - v13;
  *&v45[0] = *(v0[21] + 16);
  v14 = qword_4E8A08;

  if (v14 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6290);
  sub_886BC(&unk_4F68A0, &qword_4F6290);
  v15 = sub_3E9F44();

  *&v45[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6298);
  sub_3E8FB4();
  v32 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_886BC(&unk_4F68B0, &qword_4F6298);
  sub_3E9FA4();

  sub_886BC(&qword_4F62A0, &unk_4F6890);
  v16 = sub_3E9F94();
  (*(v5 + 8))(v7, v4);
  *&v45[0] = v16;
  v47 = sub_3E9084();
  v46 = sub_3E9054();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6AB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A10);
  sub_886BC(&qword_4F62A8, &qword_4F6AB0);
  sub_886BC(&qword_4F5DC8, &qword_4F5DC0);
  sub_886BC(&qword_4F62B0, &qword_4F6A10);
  v17 = v34;
  sub_3E9B64();
  v33 = v1;
  v18 = v1[9];
  sub_1F958((v1 + 13), v45);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  sub_1D4F0(v45, v19 + 24);
  *(v19 + 64) = v35;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1927A4;
  *(v20 + 24) = v19;

  sub_3E9C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5EE8);
  sub_886BC(&qword_4F62B8, &qword_4F6278);
  sub_886BC(&qword_4F5F00, &qword_4F5EE8);
  v21 = v38;
  v22 = v37;
  sub_3EA1D4();

  (*(v36 + 8))(v17, v22);
  sub_36174(0, &qword_4F10B0);
  v23 = sub_3EDBC4();
  *&v45[0] = v23;
  v24 = sub_3EDB64();
  v25 = v44;
  (*(*(v24 - 8) + 56))(v44, 1, 1, v24);
  sub_886BC(&qword_4F62C0, &qword_4F6280);
  sub_87870();
  v27 = v40;
  v26 = v41;
  sub_3EA114();
  sub_FCF8(v25, &qword_4F69E0);

  (*(v39 + 8))(v21, v27);
  swift_allocObject();
  v28 = v33;
  swift_weakInit();
  sub_886BC(&qword_4F62C8, &qword_4F6288);
  v29 = v43;
  sub_3EA1A4();

  (*(v42 + 8))(v26, v29);
  v30 = *(v28 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_subscriptions);
  os_unfair_lock_lock(v30 + 6);
  sub_192D78();
  os_unfair_lock_unlock(v30 + 6);
}

uint64_t sub_18A6C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_3E7274();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6240);
  v9 = *(v8 - 8);
  v27 = v8;
  v28 = v9;
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6248);
  v13 = *(v12 - 8);
  v29 = v12;
  v30 = v13;
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  if ([objc_opt_self() isRunningOnDesktop])
  {
    v16 = 3;
  }

  else
  {
    v16 = 4;
  }

  v26 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 32), *(v0 + 56));
  (*(v5 + 104))(v7, enum case for TipGroup.categories(_:), v4);
  v17 = sub_3E6DD4();
  (*(v5 + 8))(v7, v4);
  v31 = v17;
  *(swift_allocObject() + 16) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6258);
  sub_886BC(&qword_4F6260, &qword_4F6250);
  sub_3EA024();

  sub_36174(0, &qword_4F10B0);
  v18 = sub_3EDBC4();
  v31 = v18;
  v19 = sub_3EDB64();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  sub_886BC(&qword_4F6268, &qword_4F6240);
  sub_87870();
  v20 = v27;
  sub_3EA114();
  sub_FCF8(v3, &qword_4F69E0);

  (*(v28 + 8))(v11, v20);
  swift_allocObject();
  v21 = v26;
  swift_weakInit();
  sub_886BC(&qword_4F6270, &qword_4F6248);
  v22 = v29;
  sub_3EA1A4();

  (*(v30 + 8))(v15, v22);
  v23 = *(v21 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_subscriptions);
  os_unfair_lock_lock(v23 + 6);
  sub_192D78();
  os_unfair_lock_unlock(v23 + 6);
}

uint64_t sub_18ABF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_3E7274();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6240);
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6248);
  v13 = *(v12 - 8);
  v25 = v12;
  v26 = v13;
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  __swift_project_boxed_opaque_existential_1((v0 + 32), *(v0 + 56));
  (*(v5 + 104))(v7, enum case for TipGroup.categoriesSaved(_:), v4);
  v16 = sub_3E6DD4();
  (*(v5 + 8))(v7, v4);
  v27 = v16;
  *(swift_allocObject() + 16) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6258);
  sub_886BC(&qword_4F6260, &qword_4F6250);
  sub_3EA024();

  sub_36174(0, &qword_4F10B0);
  v17 = sub_3EDBC4();
  v27 = v17;
  v18 = sub_3EDB64();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  sub_886BC(&qword_4F6268, &qword_4F6240);
  sub_87870();
  v19 = v23;
  sub_3EA114();
  sub_FCF8(v3, &qword_4F69E0);

  (*(v24 + 8))(v11, v19);
  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F6270, &qword_4F6248);
  v20 = v25;
  sub_3EA1A4();

  (*(v26 + 8))(v15, v20);
  v21 = *(v0 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_subscriptions);
  os_unfair_lock_lock(v21 + 6);
  sub_192D78();
  os_unfair_lock_unlock(v21 + 6);
}

Swift::Void __swiftcall HomePageProvider.viewDidDisappear()()
{
  v1 = type metadata accessor for PageContent();
  __chkstk_darwin(v1 - 8);
  v3 = &v5[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_loadedStoreShelves))
  {
    v4 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_blockingStoreShelvesUpdatesForLaunch;
    if (*(v0 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_blockingStoreShelvesUpdatesForLaunch) == 1)
    {
      v6 = *(v0 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_loadedStoreShelves);
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F28);
      sub_3E8A04();
      swift_endAccess();
      sub_190668(v3);
      sub_3E9D74();
      *(v0 + v4) = 0;
    }
  }
}

uint64_t sub_18B238(void *a1)
{
  v63 = a1;
  v1 = type metadata accessor for PageContent();
  __chkstk_darwin(v1 - 8);
  v66 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v3 - 8);
  v65 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v5 - 8);
  v64 = &v51 - v6;
  v7 = type metadata accessor for Header(0);
  v59 = *(v7 - 1);
  __chkstk_darwin(v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v10 - 8);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0);
  __chkstk_darwin(v13 - 8);
  v15 = (&v51 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  __chkstk_darwin(v16 - 8);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v19 - 8);
  v68 = &v51 - v20;
  v21 = type metadata accessor for ModernShelf();
  v60 = *(v21 - 8);
  v61 = v21;
  __chkstk_darwin(v21);
  v62 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v23);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v25 = 2;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 0u;
  *(v25 + 7) = 0;
  v25[64] = 10;
  swift_storeEnumTagMultiPayload();
  v26 = _s8ShelfKit10FlowActionC6seeAllyAcA0C11DestinationOFZ_0(v25);
  v69 = v26;
  sub_1926E0(v25, type metadata accessor for FlowDestination);
  v67 = 0x8000000000429590;
  v27 = type metadata accessor for ActionMenu(0);
  v28 = *(v27 - 8);
  v55 = *(v28 + 56);
  v56 = v28 + 56;
  v57 = v18;
  v55(v18, 1, 1, v27);
  *v15 = v26;
  v29 = type metadata accessor for Header.PrimaryAction(0);
  v54 = v15;
  swift_storeEnumTagMultiPayload();
  v52 = *(v29 - 8);
  v30 = *(v52 + 56);
  v30(v15, 0, 1, v29);
  v31 = sub_3E7784();
  v32 = *(*(v31 - 8) + 56);
  v58 = v12;
  v32(v12, 1, 1, v31);
  *(v9 + 1) = 0u;
  v9[32] = 0;
  *v9 = 0u;
  v53 = v7[7];
  v55(&v9[v53], 1, 1, v27);
  v33 = v7[8];
  v30(&v9[v33], 1, 1, v29);
  v34 = v7[9];
  v35 = v67;
  v32(&v9[v34], 1, 1, v31);
  v36 = v54;

  if ((sub_3EE0E4() & 1) != 0 || (*(v52 + 48))(v36, 1, v29) != 1)
  {
    *v9 = 0xD000000000000011;
    *(v9 + 1) = v35;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    v9[32] = 0;
    sub_51F9C(v57, &v9[v53], &qword_4F1AB8);
    sub_B8464(v36, &v9[v33], &qword_4F1AB0);
    sub_51F9C(v58, &v9[v34], &qword_4F1D50);
    v37 = v68;
    sub_192678(v9, v68, type metadata accessor for Header);
    (*(v59 + 56))(v37, 0, 1, v7);
    sub_FCF8(v36, &qword_4F1AB0);
    sub_1926E0(v9, type metadata accessor for Header);
  }

  else
  {
    sub_FCF8(v58, &qword_4F1D50);
    sub_FCF8(v57, &qword_4F1AB8);
    sub_FCF8(v36, &qword_4F1AB0);
    sub_1926E0(v9, type metadata accessor for Header);
    (*(v59 + 56))(v68, 1, 1, v7);
  }

  v63 = sub_76CAC(v63);
  v38 = sub_3E5DC4();
  v39 = *(*(v38 - 8) + 56);
  v40 = v64;
  v39(v64, 1, 1, v38);
  v41 = v61;
  v42 = v62;
  v43 = &v62[v61[12]];
  *(v43 + 4) = 0;
  *v43 = 0u;
  *(v43 + 1) = 0u;
  v44 = v41[13];
  sub_3E85C4();
  sub_3EC584();

  v45 = sub_3EC634();
  (*(*(v45 - 8) + 56))(&v42[v44], 0, 1, v45);
  v46 = v41[9];
  v47 = &v42[v41[8]];
  v39(&v42[v46], 1, 1, v38);
  *v42 = 0xD00000000000002ALL;
  *(v42 + 1) = 0x80000000004295B0;
  sub_FACC(v68, &v42[v41[5]], &qword_4F1AC0);
  v48 = &v42[v41[6]];
  *v48 = 260;
  *(v48 + 3) = 1;
  *(v48 + 2) = 3;
  *(v48 + 1) = 1;
  *&v42[v41[7]] = v63;
  sub_51F9C(v40, &v42[v46], &unk_4E9EE0);
  v42[v41[10]] = 1;
  v42[v41[11]] = 0;
  *v47 = 0;
  *(v47 + 1) = 0;
  v49 = v65;
  sub_192678(v42, v65, type metadata accessor for ModernShelf);
  (*(v60 + 56))(v49, 0, 2, v41);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F40);
  sub_3E8A04();
  swift_endAccess();
  sub_190668(v66);
  sub_3E9D74();

  return sub_1926E0(v42, type metadata accessor for ModernShelf);
}

uint64_t sub_18BC48()
{
  v0 = sub_3E9A04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_36174(0, &qword_4F6BF0);
  sub_3EE094();
  swift_errorRetain();
  v4 = sub_3E99F4();
  v5 = sub_3ED9D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v4, v5, "Unable to fetch the prototype Up Next scoring weights: %@", v6, 0xCu);
    sub_FCF8(v7, &unk_502160);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_18BE2C(void *a1)
{
  v72 = a1;
  v1 = type metadata accessor for PageContent();
  __chkstk_darwin(v1 - 8);
  v75 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v3 - 8);
  v74 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v5 - 8);
  v73 = &v61 - v6;
  v7 = type metadata accessor for Header(0);
  v68 = *(v7 - 1);
  __chkstk_darwin(v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v10 - 8);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0);
  __chkstk_darwin(v13 - 8);
  v15 = (&v61 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  __chkstk_darwin(v16 - 8);
  v18 = &v61 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v19 - 8);
  v79 = &v61 - v20;
  v21 = type metadata accessor for ModernShelf();
  v69 = *(v21 - 8);
  v70 = v21;
  __chkstk_darwin(v21);
  v71 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v23);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_opt_self() mainBundle];
  v60._countAndFlagsBits = 0xE000000000000000;
  v80._countAndFlagsBits = 0x736970452077654ELL;
  v80._object = 0xEC0000007365646FLL;
  v81.value._countAndFlagsBits = 0;
  v81.value._object = 0;
  v27.super.isa = v26;
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  v28 = sub_3E5A74(v80, v81, v27, v82, v60);
  v76 = v29;
  v77 = v28;

  *v25 = 3;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 0u;
  *(v25 + 7) = 0;
  v25[64] = 10;
  swift_storeEnumTagMultiPayload();
  v30 = _s8ShelfKit10FlowActionC6seeAllyAcA0C11DestinationOFZ_0(v25);
  v78 = v30;
  sub_1926E0(v25, type metadata accessor for FlowDestination);
  v31 = type metadata accessor for ActionMenu(0);
  v32 = *(v31 - 8);
  v64 = *(v32 + 56);
  v65 = v32 + 56;
  v66 = v18;
  v64(v18, 1, 1, v31);
  *v15 = v30;
  v33 = type metadata accessor for Header.PrimaryAction(0);
  v63 = v15;
  swift_storeEnumTagMultiPayload();
  v61 = *(v33 - 8);
  v34 = *(v61 + 56);
  v34(v15, 0, 1, v33);
  v35 = sub_3E7784();
  v36 = *(*(v35 - 8) + 56);
  v67 = v12;
  v36(v12, 1, 1, v35);
  *(v9 + 1) = 0u;
  v9[32] = 0;
  *v9 = 0u;
  v62 = v7[7];
  v64(&v9[v62], 1, 1, v31);
  v37 = v7[8];
  v34(&v9[v37], 1, 1, v33);
  v38 = v7;
  v39 = v7[9];
  v40 = v35;
  v41 = v77;
  v36(&v9[v39], 1, 1, v40);
  v42 = v76;
  v43 = v63;

  if ((sub_3EE0E4() & 1) != 0 || (*(v61 + 48))(v43, 1, v33) != 1)
  {
    *v9 = v41;
    *(v9 + 1) = v42;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    v9[32] = 0;

    sub_51F9C(v66, &v9[v62], &qword_4F1AB8);
    sub_B8464(v43, &v9[v37], &qword_4F1AB0);
    sub_51F9C(v67, &v9[v39], &qword_4F1D50);
    v44 = v9;
    v45 = v9;
    v46 = v79;
    sub_192678(v44, v79, type metadata accessor for Header);
    (*(v68 + 56))(v46, 0, 1, v38);
    sub_FCF8(v43, &qword_4F1AB0);
    sub_1926E0(v45, type metadata accessor for Header);
  }

  else
  {
    sub_FCF8(v67, &qword_4F1D50);
    sub_FCF8(v66, &qword_4F1AB8);
    sub_FCF8(v43, &qword_4F1AB0);
    sub_1926E0(v9, type metadata accessor for Header);
    (*(v68 + 56))(v79, 1, 1, v38);
  }

  v72 = sub_76CAC(v72);
  v47 = sub_3E5DC4();
  v48 = *(*(v47 - 8) + 56);
  v49 = v73;
  v48(v73, 1, 1, v47);
  v50 = v70;
  v51 = v71;
  v52 = &v71[v70[12]];
  *(v52 + 4) = 0;
  *v52 = 0u;
  *(v52 + 1) = 0u;
  v53 = v50[13];
  sub_3E8534();
  sub_3EC584();

  v54 = sub_3EC634();
  (*(*(v54 - 8) + 56))(&v51[v53], 0, 1, v54);
  v55 = v50[9];
  v56 = &v51[v50[8]];
  v48(&v51[v55], 1, 1, v47);
  *v51 = 0xD000000000000025;
  *(v51 + 1) = 0x8000000000429100;
  sub_FACC(v79, &v51[v50[5]], &qword_4F1AC0);
  v57 = &v51[v50[6]];
  *v57 = 265;
  *(v57 + 3) = 256;
  *(v57 + 2) = 0;
  *(v57 + 1) = 1;
  *&v51[v50[7]] = v72;
  sub_51F9C(v49, &v51[v55], &unk_4E9EE0);
  v51[v50[10]] = 1;
  v51[v50[11]] = 0;
  *v56 = 0;
  *(v56 + 1) = 0;
  v58 = v74;
  sub_192678(v51, v74, type metadata accessor for ModernShelf);
  (*(v69 + 56))(v58, 0, 2, v50);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F40);
  sub_3E8A04();
  swift_endAccess();
  sub_190668(v75);
  sub_3E9D74();

  return sub_1926E0(v51, type metadata accessor for ModernShelf);
}

uint64_t sub_18C8CC(void *a1)
{
  v77 = a1;
  v1 = type metadata accessor for PageContent();
  __chkstk_darwin(v1 - 8);
  v80 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v3 - 8);
  v79 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v5 - 8);
  v78 = &v64 - v6;
  v71 = type metadata accessor for Header(0);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v9 - 8);
  v11 = &v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0);
  __chkstk_darwin(v12 - 8);
  v14 = (&v64 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  __chkstk_darwin(v15 - 8);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v18 - 8);
  v84 = &v64 - v19;
  v20 = type metadata accessor for ModernShelf();
  v74 = *(v20 - 8);
  v75 = v20;
  __chkstk_darwin(v20);
  v76 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v22);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [objc_opt_self() mainBundle];
  v85._countAndFlagsBits = 0xD000000000000010;
  v63._countAndFlagsBits = 0xE000000000000000;
  v85._object = 0x8000000000429480;
  v86.value._countAndFlagsBits = 0;
  v86.value._object = 0;
  v26.super.isa = v25;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v27 = sub_3E5A74(v85, v86, v26, v87, v63);
  v81 = v28;
  v82 = v27;

  *v24 = 4;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 0u;
  *(v24 + 7) = 0;
  v24[64] = 10;
  swift_storeEnumTagMultiPayload();
  v29 = _s8ShelfKit10FlowActionC6seeAllyAcA0C11DestinationOFZ_0(v24);
  v83 = v29;
  sub_1926E0(v24, type metadata accessor for FlowDestination);
  v30 = type metadata accessor for ActionMenu(0);
  v31 = *(v30 - 8);
  v68 = *(v31 + 56);
  v69 = v31 + 56;
  v70 = v17;
  v68(v17, 1, 1, v30);
  v32 = v14;
  *v14 = v29;
  v33 = type metadata accessor for Header.PrimaryAction(0);
  v67 = v14;
  swift_storeEnumTagMultiPayload();
  v65 = *(v33 - 8);
  v34 = *(v65 + 56);
  v34(v32, 0, 1, v33);
  v35 = sub_3E7784();
  v36 = *(*(v35 - 8) + 56);
  v72 = v11;
  v36(v11, 1, 1, v35);
  v37 = v8;
  *(v8 + 1) = 0u;
  v38 = v8 + 16;
  v8[32] = 0;
  *v8 = 0u;
  v39 = v71;
  v66 = *(v71 + 28);
  v68(v37 + v66, 1, 1, v30);
  v40 = *(v39 + 32);
  v34((v37 + v40), 1, 1, v33);
  v41 = v39;
  v42 = *(v39 + 36);
  v43 = v35;
  v44 = v82;
  v36(v37 + v42, 1, 1, v43);
  v45 = v81;
  v46 = v67;

  if ((sub_3EE0E4() & 1) != 0 || (*(v65 + 48))(v46, 1, v33) != 1)
  {
    *v37 = v44;
    v37[1] = v45;
    *v38 = 0;
    *(v38 + 1) = 0;
    v38[16] = 0;

    sub_51F9C(v70, v37 + v66, &qword_4F1AB8);
    sub_B8464(v46, v37 + v40, &qword_4F1AB0);
    sub_51F9C(v72, v37 + v42, &qword_4F1D50);
    v47 = v37;
    v48 = v37;
    v49 = v84;
    sub_192678(v47, v84, type metadata accessor for Header);
    (*(v73 + 56))(v49, 0, 1, v41);
    sub_FCF8(v46, &qword_4F1AB0);
    sub_1926E0(v48, type metadata accessor for Header);
  }

  else
  {
    sub_FCF8(v72, &qword_4F1D50);
    sub_FCF8(v70, &qword_4F1AB8);
    sub_FCF8(v46, &qword_4F1AB0);
    sub_1926E0(v37, type metadata accessor for Header);
    (*(v73 + 56))(v84, 1, 1, v41);
  }

  v77 = sub_76CAC(v77);
  v50 = sub_3E5DC4();
  v51 = *(*(v50 - 8) + 56);
  v52 = v78;
  v51(v78, 1, 1, v50);
  v54 = v75;
  v53 = v76;
  v55 = &v76[v75[12]];
  *(v55 + 4) = 0;
  *v55 = 0u;
  *(v55 + 1) = 0u;
  v56 = v54[13];
  sub_3E85C4();
  sub_3EC584();

  v57 = sub_3EC634();
  (*(*(v57 - 8) + 56))(&v53[v56], 0, 1, v57);
  v58 = v54[9];
  v59 = &v53[v54[8]];
  v51(&v53[v58], 1, 1, v50);
  *v53 = 0xD000000000000029;
  *(v53 + 1) = 0x8000000000429130;
  sub_FACC(v84, &v53[v54[5]], &qword_4F1AC0);
  v60 = &v53[v54[6]];
  *v60 = 259;
  *(v60 + 3) = 256;
  *(v60 + 2) = 0;
  *(v60 + 1) = 1;
  *&v53[v54[7]] = v77;
  sub_51F9C(v52, &v53[v58], &unk_4E9EE0);
  v53[v54[10]] = 1;
  v53[v54[11]] = 0;
  *v59 = 0;
  *(v59 + 1) = 0;
  v61 = v79;
  sub_192678(v53, v79, type metadata accessor for ModernShelf);
  (*(v74 + 56))(v61, 0, 2, v54);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F40);
  sub_3E8A04();
  swift_endAccess();
  sub_190668(v80);
  sub_3E9D74();

  return sub_1926E0(v53, type metadata accessor for ModernShelf);
}

uint64_t sub_18D384(void *a1)
{
  v77 = a1;
  v1 = type metadata accessor for PageContent();
  __chkstk_darwin(v1 - 8);
  v80 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v3 - 8);
  v79 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v5 - 8);
  v78 = &v64 - v6;
  v71 = type metadata accessor for Header(0);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v9 - 8);
  v11 = &v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0);
  __chkstk_darwin(v12 - 8);
  v14 = (&v64 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  __chkstk_darwin(v15 - 8);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v18 - 8);
  v84 = &v64 - v19;
  v20 = type metadata accessor for ModernShelf();
  v74 = *(v20 - 8);
  v75 = v20;
  __chkstk_darwin(v20);
  v76 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v22);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [objc_opt_self() mainBundle];
  v85._countAndFlagsBits = 0xD000000000000018;
  v63._countAndFlagsBits = 0xE000000000000000;
  v85._object = 0x8000000000429570;
  v86.value._countAndFlagsBits = 0;
  v86.value._object = 0;
  v26.super.isa = v25;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v27 = sub_3E5A74(v85, v86, v26, v87, v63);
  v81 = v28;
  v82 = v27;

  *v24 = 1;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 0u;
  *(v24 + 7) = 0;
  v24[64] = 10;
  swift_storeEnumTagMultiPayload();
  v29 = _s8ShelfKit10FlowActionC6seeAllyAcA0C11DestinationOFZ_0(v24);
  v83 = v29;
  sub_1926E0(v24, type metadata accessor for FlowDestination);
  v30 = type metadata accessor for ActionMenu(0);
  v31 = *(v30 - 8);
  v68 = *(v31 + 56);
  v69 = v31 + 56;
  v70 = v17;
  v68(v17, 1, 1, v30);
  v32 = v14;
  *v14 = v29;
  v33 = type metadata accessor for Header.PrimaryAction(0);
  v67 = v14;
  swift_storeEnumTagMultiPayload();
  v65 = *(v33 - 8);
  v34 = *(v65 + 56);
  v34(v32, 0, 1, v33);
  v35 = sub_3E7784();
  v36 = *(*(v35 - 8) + 56);
  v72 = v11;
  v36(v11, 1, 1, v35);
  v37 = v8;
  *(v8 + 1) = 0u;
  v38 = v8 + 16;
  v8[32] = 0;
  *v8 = 0u;
  v39 = v71;
  v66 = *(v71 + 28);
  v68(v37 + v66, 1, 1, v30);
  v40 = *(v39 + 32);
  v34((v37 + v40), 1, 1, v33);
  v41 = v39;
  v42 = *(v39 + 36);
  v43 = v35;
  v44 = v82;
  v36(v37 + v42, 1, 1, v43);
  v45 = v81;
  v46 = v67;

  if ((sub_3EE0E4() & 1) != 0 || (*(v65 + 48))(v46, 1, v33) != 1)
  {
    *v37 = v44;
    v37[1] = v45;
    *v38 = 0;
    *(v38 + 1) = 0;
    v38[16] = 0;

    sub_51F9C(v70, v37 + v66, &qword_4F1AB8);
    sub_B8464(v46, v37 + v40, &qword_4F1AB0);
    sub_51F9C(v72, v37 + v42, &qword_4F1D50);
    v47 = v37;
    v48 = v37;
    v49 = v84;
    sub_192678(v47, v84, type metadata accessor for Header);
    (*(v73 + 56))(v49, 0, 1, v41);
    sub_FCF8(v46, &qword_4F1AB0);
    sub_1926E0(v48, type metadata accessor for Header);
  }

  else
  {
    sub_FCF8(v72, &qword_4F1D50);
    sub_FCF8(v70, &qword_4F1AB8);
    sub_FCF8(v46, &qword_4F1AB0);
    sub_1926E0(v37, type metadata accessor for Header);
    (*(v73 + 56))(v84, 1, 1, v41);
  }

  v77 = sub_76CAC(v77);
  v50 = sub_3E5DC4();
  v51 = *(*(v50 - 8) + 56);
  v52 = v78;
  v51(v78, 1, 1, v50);
  v54 = v75;
  v53 = v76;
  v55 = &v76[v75[12]];
  *(v55 + 4) = 0;
  *v55 = 0u;
  *(v55 + 1) = 0u;
  v56 = v54[13];
  sub_3E85C4();
  sub_3EC584();

  v57 = sub_3EC634();
  (*(*(v57 - 8) + 56))(&v53[v56], 0, 1, v57);
  v58 = v54[9];
  v59 = &v53[v54[8]];
  v51(&v53[v58], 1, 1, v50);
  *v53 = 0xD000000000000028;
  *(v53 + 1) = 0x8000000000429160;
  sub_FACC(v84, &v53[v54[5]], &qword_4F1AC0);
  v60 = &v53[v54[6]];
  *v60 = 259;
  *(v60 + 3) = 256;
  *(v60 + 2) = 0;
  *(v60 + 1) = 1;
  *&v53[v54[7]] = v77;
  sub_51F9C(v52, &v53[v58], &unk_4E9EE0);
  v53[v54[10]] = 1;
  v53[v54[11]] = 0;
  *v59 = 0;
  *(v59 + 1) = 0;
  v61 = v79;
  sub_192678(v53, v79, type metadata accessor for ModernShelf);
  (*(v74 + 56))(v61, 0, 2, v54);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F40);
  sub_3E8A04();
  swift_endAccess();
  sub_190668(v80);
  sub_3E9D74();

  return sub_1926E0(v53, type metadata accessor for ModernShelf);
}

uint64_t sub_18DE20(uint64_t a1, uint64_t a2, void (*a3)())
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1AA0);
    sub_3E95D4();
    a3();
  }

  return result;
}

void *sub_18DEC8@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  result = Array<A>.mapToModernShelves()(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_18DEF4(unint64_t *a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for PageContent();
  __chkstk_darwin(v3 - 8);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3E9854();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_3E97B4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  v34 = *a1;
  sub_3E9824();
  sub_3E9834();
  sub_3E9784();
  v19 = *(v6 + 8);
  v35 = v5;
  v19(v11, v5);
  sub_3E9824();
  v20 = sub_3E9834();
  v21 = sub_3EDC84();
  if (sub_3EE014())
  {
    v22 = swift_slowAlloc();
    v31 = v12;
    v32 = v13;
    v23 = v22;
    *v22 = 0;
    v24 = sub_3E9794();
    _os_signpost_emit_with_name_impl(&dword_0, v20, v21, v24, "HomePageProvider.fetchCachedStoreShelves()", "", v23, 2u);
    v12 = v31;
    v13 = v32;
  }

  (*(v13 + 16))(v15, v18, v12);
  sub_3E98A4();
  swift_allocObject();
  sub_3E9894();
  v19(v8, v35);
  swift_beginAccess();
  v25 = v18;
  if (swift_weakLoadStrong())
  {
    v26 = v34;
    if (*(v34 + 16))
    {
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F28);
      sub_3E89F4();
      v27 = v37;
      swift_endAccess();
      v38 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14E8);
      v28 = sub_3E9544();
      sub_192858(v27);
      if (v28)
      {
        v37 = v26;
        swift_beginAccess();

        sub_3E8A04();
        swift_endAccess();
        sub_190668(v33);
        sub_3E9D74();
      }
    }
  }

  sub_18E340("HomePageProvider.fetchCachedStoreShelves()", 42, 2);

  return (*(v13 + 8))(v25, v12);
}

uint64_t sub_18E340(const char *a1, uint64_t a2, int a3)
{
  v26 = a3;
  v27 = a1;
  v3 = sub_3E9864();
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3E97B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3E9854();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9824();
  v14 = sub_3E9834();
  sub_3E9884();
  v23 = sub_3EDC74();
  result = sub_3EE014();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }

  v22 = v10;
  if ((v26 & 1) == 0)
  {
    if (v27)
    {
LABEL_9:

      sub_3E98B4();

      v17 = v24;
      v16 = v25;
      if ((*(v24 + 88))(v5, v25) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v17 + 8))(v5, v16);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_3E9794();
      _os_signpost_emit_with_name_impl(&dword_0, v14, v23, v20, v27, v18, v19, 2u);

      v10 = v22;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v27 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    if (v27 >> 16 <= 0x10)
    {
      v27 = &v28;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_18E684(uint64_t a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_17C418(a1, v7);
    v10 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_unifiedMessagingHeaderShelf;
    swift_beginAccess();
    sub_B8464(v7, v9 + v10, &unk_503DA0);
    swift_endAccess();
    sub_190668(v4);
    sub_3E9D74();
    sub_FCF8(v7, &unk_503DA0);
  }

  return result;
}

uint64_t sub_18E804(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a6;
  v43 = a5;
  v50 = a4;
  v10 = sub_3E8FB4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F62E8);
  v14 = *(v44 - 8);
  __chkstk_darwin(v44);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F62F0);
  v18 = *(v17 - 8);
  v47 = v17;
  v48 = v18;
  __chkstk_darwin(v17);
  v45 = &v42 - v19;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F62F8);
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v42 - v20;
  LOBYTE(a3) = a2 | (a3 > 3);
  v21 = sub_3E7424();
  v57 = v21;
  v58 = sub_192AE4(&qword_4F07A0, &type metadata accessor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v56);
  (*(*(v21 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.ponderosaForceColdStart(_:), v21);
  LOBYTE(v21) = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(&v56);
  LOBYTE(a3) = a3 & ~v21;
  sub_1F958(a5, &v56);
  (*(v11 + 16))(v13, a1, v10);
  v23 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v24 = v23 + v12;
  v25 = swift_allocObject();
  sub_1D4F0(&v56, v25 + 16);
  (*(v11 + 32))(v25 + v23, v13, v10);
  *(v25 + v24) = a3 & 1;
  *(v25 + (v24 & 0xFFFFFFFFFFFFFFF8) + 8) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6300);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F6308);
  v27 = sub_36174(255, &qword_4F10B0);
  v28 = sub_886BC(&qword_4F6310, &qword_4F6308);
  v29 = sub_87870();
  v52 = v26;
  v53 = v27;
  v54 = v28;
  v55 = v29;
  swift_getOpaqueTypeConformance2();
  sub_3E9E54();
  sub_36174(0, &qword_4F6BF0);
  v30 = sub_3EE074();
  sub_886BC(&qword_4F6318, &qword_4F62E8);
  v31 = v44;
  v32 = sub_3E9F44();

  (*(v14 + 8))(v16, v31);
  *&v56 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6320);
  sub_886BC(&qword_4F6328, &qword_4F6320);
  v33 = v45;
  sub_3EA0A4();

  sub_1F958(v43, &v56);
  v34 = swift_allocObject();
  sub_1D4F0(&v56, v34 + 16);
  *(v34 + 56) = v50;

  sub_3E9C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330);
  sub_886BC(&qword_4F6338, &qword_4F62F0);
  sub_886BC(&qword_4F6340, &qword_4F6330);
  v36 = v46;
  v35 = v47;
  sub_3EA0E4();

  (*(v48 + 8))(v33, v35);
  v37 = sub_3EE074();
  sub_886BC(&qword_4F6348, &qword_4F62F8);
  v38 = v49;
  v39 = sub_3E9F44();

  (*(v51 + 8))(v36, v38);
  *&v56 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6350);
  sub_886BC(&qword_4F6358, &qword_4F6350);
  v40 = sub_3E9F14();

  return v40;
}

uint64_t sub_18EF78(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 224);

    os_unfair_lock_lock((v3 + 20));
    *(v3 + 16) = 2;
    os_unfair_lock_unlock((v3 + 20));
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_18F064(v1);
  }

  return result;
}

uint64_t sub_18F064(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageContent();
  __chkstk_darwin(v4 - 8);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ModernShelf();
  v65 = *(v71 - 1);
  __chkstk_darwin(v71);
  v8 = (v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v61 = v55 - v10;
  __chkstk_darwin(v11);
  v13 = (v55 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F62D0);
  v70 = *(v14 - 8);
  __chkstk_darwin(v14);
  v64 = v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F62D8);
  __chkstk_darwin(v16 - 8);
  v63 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = (v55 - v19);
  *&v72 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14E8);
  sub_3E9514();
  if (!v75)
  {
    v51 = v6;
LABEL_43:
    v76 = a1;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F28);
    v52 = sub_3E89E4();
    sub_3E9534();
    v52(&v72, 0);
    swift_endAccess();
    sub_190668(v51);
    result = sub_3E9D74();
    v53 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_blockingStoreShelvesUpdatesForLaunch;
LABEL_48:
    *(v2 + v53) = 0;
    return result;
  }

  if ((*(v1 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_blockingStoreShelvesUpdatesForLaunch) & 1) == 0)
  {
    v51 = v6;

    goto LABEL_43;
  }

  v69 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_blockingStoreShelvesUpdatesForLaunch;
  v66 = v75;
  v56 = v6;
  v21 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_storeShelves;
  swift_beginAccess();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F28);
  v55[1] = v21;
  sub_3E89F4();
  v23 = v75;
  swift_endAccess();
  *&v72 = v23;
  sub_3E9514();
  if (!v76)
  {

    sub_192858(v23);
LABEL_47:
    v76 = a1;
    swift_beginAccess();
    v54 = sub_3E89E4();
    sub_3E9534();
    v54(&v72, 0);
    swift_endAccess();
    sub_190668(v56);
    result = sub_3E9D74();
    v53 = v69;
    goto LABEL_48;
  }

  v62 = v76;
  sub_192858(v23);
  v24 = v66;
  if (!*(v62 + 16))
  {

    goto LABEL_47;
  }

  v55[0] = v22;
  *(v2 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_loadedStoreShelves) = v66;
  swift_bridgeObjectRetain_n();

  v26 = 0;
  v27 = v24[2];
  v68 = (v70 + 48);
  v69 = (v70 + 56);
  v58 = v24;
  v29 = v64;
  v28 = v65;
  v30 = v63;
  v67 = v27;
  v57 = v2;
  v60 = v14;
  while (1)
  {
    if (v26 == v27)
    {
      v31 = 1;
      v26 = v27;
    }

    else
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v26 >= *(v66 + 16))
      {
        goto LABEL_50;
      }

      v32 = v66 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26;
      v33 = *(v14 + 48);
      *v29 = v26;
      sub_192678(v32, v29 + v33, type metadata accessor for ModernShelf);
      sub_FACC(v29, v30, &qword_4F62D0);
      v31 = 0;
      ++v26;
    }

    (*v69)(v30, v31, 1, v14);
    sub_FACC(v30, v20, &qword_4F62D8);
    if ((*v68)(v20, 1, v14) == 1)
    {

      v75 = v58;
      swift_beginAccess();
      sub_3E8A04();
      swift_endAccess();
      sub_190668(v56);
      return sub_3E9D74();
    }

    v70 = *v20;
    sub_192868(v20 + *(v14 + 48), v13, type metadata accessor for ModernShelf);
    v34 = v13 + v71[12];
    if (*(v34 + 24))
    {
      sub_1F958(v34, &v72);
      if (*(&v73 + 1))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v35 = *(v34 + 16);
      v72 = *v34;
      v73 = v35;
      v74 = *(v34 + 32);
      if (*(&v35 + 1))
      {
LABEL_6:
        __swift_destroy_boxed_opaque_existential_1Tm(&v72);
        goto LABEL_7;
      }
    }

    v36 = *(v62 + 16);
    if (v36)
    {
      break;
    }

    v14 = v60;
LABEL_7:
    result = sub_1926E0(v13, type metadata accessor for ModernShelf);
    v27 = v67;
  }

  v37 = *(v28 + 72);
  v59 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v38 = v62 + v59;
  while (1)
  {
    sub_192678(v38, v8, type metadata accessor for ModernShelf);
    v39 = *v8 == *v13 && v8[1] == v13[1];
    if (v39 || (sub_3EE804() & 1) != 0)
    {
      break;
    }

LABEL_20:
    sub_1926E0(v8, type metadata accessor for ModernShelf);
    v38 += v37;
    if (!--v36)
    {
      v28 = v65;
      v14 = v60;
LABEL_40:
      v30 = v63;
      v29 = v64;
      goto LABEL_7;
    }
  }

  v40 = v71[6];
  v41 = *(v13 + v40);
  v42 = ModernShelf.ItemKind.rawValue.getter(*(v8 + v40));
  v44 = v43;
  if (v42 != ModernShelf.ItemKind.rawValue.getter(v41) || v44 != v45)
  {
    v47 = sub_3EE804();

    if (v47)
    {
      goto LABEL_35;
    }

    goto LABEL_20;
  }

LABEL_35:
  v48 = v61;
  sub_192868(v8, v61, type metadata accessor for ModernShelf);
  v49 = *(v48 + v71[7]);

  sub_1926E0(v48, type metadata accessor for ModernShelf);
  v50 = v58;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2A5130(v50);
    v58 = result;
  }

  v14 = v60;
  if ((v70 & 0x8000000000000000) == 0)
  {
    if (v70 >= v58[2])
    {
      goto LABEL_52;
    }

    *(v58 + v59 + v37 * v70 + v71[7]) = v49;

    v28 = v65;
    goto LABEL_40;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_18F96C()
{
  v7 = sub_3EDBB4();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3EDB54();
  __chkstk_darwin(v3);
  v4 = sub_3EBC14();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_36174(0, &qword_4F10B0);
  sub_3EBBF4();
  v8 = _swiftEmptyArrayStorage;
  sub_192AE4(&qword_4F1CA8, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CB0);
  sub_886BC(&qword_4F1CB8, &qword_4F1CB0);
  sub_3EE244();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_3EDBF4();
  qword_4F5EA0 = result;
  return result;
}

void sub_18FBE0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v6 - 8);
  v8 = v15 - v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 112))(a2, a3, v9, v10);
  v11 = sub_3ECD54();

  v15[1] = v11;
  if (qword_4E8A00 != -1)
  {
    swift_once();
  }

  v12 = qword_4F5EA0;
  v15[0] = qword_4F5EA0;
  v13 = sub_3EDB64();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6308);
  sub_36174(0, &qword_4F10B0);
  sub_886BC(&qword_4F6310, &qword_4F6308);
  sub_87870();
  sub_3E9F54();
  sub_FCF8(v8, &qword_4F69E0);
}

void sub_18FE04(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for BubbleTip();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = *(*a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v21 = a2;
    v24 = _swiftEmptyArrayStorage;
    sub_41C8C(0, v9, 0);
    v10 = v24;
    v11 = v8 + 32;
    do
    {
      sub_1F958(v11, v22);
      v12 = v23;
      v13 = __swift_project_boxed_opaque_existential_1(v22, v23);
      v14 = __chkstk_darwin(v13);
      v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16, v14);
      BubbleTip.init<A>(from:style:)(v16, v12, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v24 = v10;
      v19 = v10[2];
      v18 = v10[3];
      if (v19 >= v18 >> 1)
      {
        sub_41C8C(v18 > 1, v19 + 1, 1);
        v10 = v24;
      }

      v10[2] = v19 + 1;
      sub_192868(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, type metadata accessor for BubbleTip);
      v11 += 40;
      --v9;
    }

    while (v9);
    a2 = v21;
  }

  *a2 = v10;
}

uint64_t sub_19004C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for PageContent();
  __chkstk_darwin(v5 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22[-v9];
  v11 = type metadata accessor for BubbleTip();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    if (*(v15 + 16))
    {
      sub_192678(v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v14, type metadata accessor for BubbleTip);
      static ModernShelf.bubbleTipShelf(for:)(v14, v10);
      v18 = type metadata accessor for ModernShelf();
      (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
      v19 = *a3;
      swift_beginAccess();
      sub_B8464(v10, v17 + v19, &unk_503DA0);
      swift_endAccess();
      sub_190668(v7);
      sub_3E9D74();
      sub_FCF8(v10, &unk_503DA0);
      sub_1926E0(v14, type metadata accessor for BubbleTip);
    }

    else
    {
      v20 = type metadata accessor for ModernShelf();
      (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
      v21 = *a3;
      swift_beginAccess();
      sub_B8464(v10, v17 + v21, &unk_503DA0);
      swift_endAccess();
      sub_190668(v7);
      sub_3E9D74();
      sub_FCF8(v10, &unk_503DA0);
    }
  }

  return result;
}

uint64_t HomePageProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 104);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_unifiedMessagingHeaderShelf, &unk_503DA0);
  v1 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_sharedWithYouShelf;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F40);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_fromChannelShelves;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F28);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_storeShelves, v5);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_notFindingAnythingTipShelf, &unk_503DA0);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_categoriesSavedTipShelf, &unk_503DA0);

  v3(v0 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_upNextShelf, v2);
  v3(v0 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_prototypeUpNextShelf, v2);
  v3(v0 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_newEpisodesShelf, v2);
  v3(v0 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_continuePlayingShelf, v2);
  v3(v0 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_recentlyPlayedShelf, v2);
  return v0;
}

uint64_t HomePageProvider.__deallocating_deinit()
{
  HomePageProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_190668@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v56 = sub_3EC544();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v49 - v6;
  v58 = type metadata accessor for ModernPage();
  __chkstk_darwin(v58);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F40);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = sub_3E7424();
  v62 = v16;
  v63 = sub_192AE4(&qword_4F07A0, &type metadata accessor for Podcasts);
  v17 = __swift_allocate_boxed_opaque_existential_0Tm(&v59);
  (*(*(v16 - 8) + 104))(v17, enum case for Podcasts.upNextSplit(_:), v16);
  LOBYTE(v16) = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(&v59);
  if (v16)
  {
    v18 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_newEpisodesShelf;
  }

  else
  {
    v18 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_upNextShelf;
  }

  v19 = v2 + v18;
  swift_beginAccess();
  (*(v13 + 16))(v15, v19, v12);
  sub_3E89F4();
  LOBYTE(v19) = sub_3E9544();
  sub_FCF8(v11, &qword_4F5978);
  if ((v19 & 1) == 0)
  {
    sub_1842EC(&v59);
    v20 = v59;
    v22 = v60;
    v21 = v61;
    ModernShelfListBuilder.hasImportantContent.getter();
    if (v23)
    {
      v24 = sub_3E8084();
      v51 = v22;
      v26 = v25;
      v27 = sub_3E7B44();
      v50 = v20;
      v28 = v27;
      v52 = a1;
      v30 = v29;
      v59 = v24;
      v60 = v26;
      v73._countAndFlagsBits = 95;
      v73._object = 0xE100000000000000;
      sub_3ED3D4(v73);
      v74._countAndFlagsBits = v28;
      v74._object = v30;
      sub_3ED3D4(v74);

      v53 = v8;
      sub_3ECCE4();
      v31 = sub_3E7B44();
      v33 = v32;
      v34 = sub_3E8084();
      v59 = v31;
      v60 = v33;
      v61 = v34;
      v62 = v35;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      sub_3EC534();
      sub_3E67A4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A70);
      sub_3EC0B4();
      *(swift_allocObject() + 16) = xmmword_3F5310;
      sub_3EC084();
      sub_3EC074();
      MetricsPageFields.metricsFields.getter();
      v36 = v55;
      v37 = *(v55 + 16);
      v49 = v21;
      v38 = v57;
      v39 = v56;
      v37(v54, v57, v56);
      sub_3EC0C4();
      v72 = v66;
      sub_FCF8(&v72, &unk_4F8A10);
      v71 = v67;
      sub_FCF8(&v71, &qword_4E94E0);
      v70 = v68;
      sub_FCF8(&v70, &unk_4F8A20);
      sub_16AC0(v69);
      (*(v36 + 8))(v38, v39);

      LOBYTE(v59) = v50;
      v60 = v51;
      v61 = v49;
      ModernShelfListBuilder.buildList()();
      v41 = v40;

      v42 = v53;
      *&v53[*(v58 + 24)] = v41;
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
      v44 = v52;
      sub_192678(v42, v52, type metadata accessor for ModernPage);
      LOBYTE(v38) = sub_3E66E4();
      sub_1926E0(v42, type metadata accessor for ModernPage);
      (*(v13 + 8))(v15, v12);
      *(v44 + v43) = v38;
      type metadata accessor for PageContent();
      return swift_storeEnumTagMultiPayload();
    }

    LOBYTE(v59) = v20;
    v60 = v22;
    v61 = v21;
    ModernShelfListBuilder.areAnyImportantShelvesStillLoading.getter();
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      v47 = static ContentUnavailablePage.emptyLibrary.getter(a1);
      (*(v13 + 8))(v15, v12, v47);
      type metadata accessor for PageContent();
      return swift_storeEnumTagMultiPayload();
    }
  }

  (*(v13 + 8))(v15, v12);
  *a1 = 0;
  type metadata accessor for PageContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_190DDC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F63D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ObserverQueue();
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F63D8);
  sub_886BC(&qword_4F63E0, &qword_4F63D8);
  v13 = sub_3E9F34();
  sub_192678(a1, v12, type metadata accessor for ObserverQueue);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v24 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5EE0);
    sub_886BC(&qword_4F5EF0, &qword_4F5EE0);
    v14 = sub_3E9F94();
  }

  else
  {
    sub_1926E0(v12, type metadata accessor for ObserverQueue);
    v24 = v13;
    v23 = sub_3A2860();
    v28 = v23;
    v15 = sub_3EDB64();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5EE0);
    v17 = sub_36174(0, &qword_4F10B0);
    v18 = sub_886BC(&qword_4F5EF0, &qword_4F5EE0);
    v19 = v6;
    v20 = v7;
    v21 = sub_87870();
    sub_3E9F54();
    sub_FCF8(v5, &qword_4F69E0);

    v24 = v16;
    v25 = v17;
    v26 = v18;
    v27 = v21;
    swift_getOpaqueTypeConformance2();
    v14 = sub_3E9F94();

    (*(v20 + 8))(v9, v19);
  }

  return v14;
}

uint64_t sub_1911C8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6228);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ObserverQueue();
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6230);
  sub_886BC(&qword_4F6238, &qword_4F6230);
  v13 = sub_3E9F34();
  sub_192678(a1, v12, type metadata accessor for ObserverQueue);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v24 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F61E0);
    sub_886BC(&qword_4F61F0, &qword_4F61E0);
    v14 = sub_3E9F94();
  }

  else
  {
    sub_1926E0(v12, type metadata accessor for ObserverQueue);
    v24 = v13;
    v23 = sub_3A2860();
    v28 = v23;
    v15 = sub_3EDB64();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F61E0);
    v17 = sub_36174(0, &qword_4F10B0);
    v18 = sub_886BC(&qword_4F61F0, &qword_4F61E0);
    v19 = v6;
    v20 = v7;
    v21 = sub_87870();
    sub_3E9F54();
    sub_FCF8(v5, &qword_4F69E0);

    v24 = v16;
    v25 = v17;
    v26 = v18;
    v27 = v21;
    swift_getOpaqueTypeConformance2();
    v14 = sub_3E9F94();

    (*(v20 + 8))(v9, v19);
  }

  return v14;
}

uint64_t sub_1915B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F61B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ObserverQueue();
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F61B8);
  sub_886BC(&qword_4F61C0, &qword_4F61B8);
  v13 = sub_3E9F34();
  sub_192678(a1, v12, type metadata accessor for ObserverQueue);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v24 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6160);
    sub_886BC(&qword_4F6170, &qword_4F6160);
    v14 = sub_3E9F94();
  }

  else
  {
    sub_1926E0(v12, type metadata accessor for ObserverQueue);
    v24 = v13;
    v23 = sub_3A2860();
    v28 = v23;
    v15 = sub_3EDB64();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6160);
    v17 = sub_36174(0, &qword_4F10B0);
    v18 = sub_886BC(&qword_4F6170, &qword_4F6160);
    v19 = v6;
    v20 = v7;
    v21 = sub_87870();
    sub_3E9F54();
    sub_FCF8(v5, &qword_4F69E0);

    v24 = v16;
    v25 = v17;
    v26 = v18;
    v27 = v21;
    swift_getOpaqueTypeConformance2();
    v14 = sub_3E9F94();

    (*(v20 + 8))(v9, v19);
  }

  return v14;
}

uint64_t sub_191A74(uint64_t a1, int a2)
{
  v3 = v2;
  v18 = a2;
  v5 = type metadata accessor for PageContent();
  __chkstk_darwin(v5);
  *(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0)) = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  swift_allocObject();
  *(v2 + 16) = sub_3E9D94();
  *(v2 + 24) = 0;
  v7 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_unifiedMessagingHeaderShelf;
  v8 = type metadata accessor for ModernShelf();
  v9 = *(*(v8 - 8) + 56);
  v9(v3 + v7, 1, 1, v8);
  sub_36174(0, &qword_4F6BF0);
  sub_3EE074();
  sub_3E89D4();
  sub_3EE074();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
  sub_3E89D4();
  sub_3EE074();
  sub_3E89D4();
  *(v3 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_loadedStoreShelves) = 0;
  *(v3 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_blockingStoreShelvesUpdatesForLaunch) = 1;
  v9(v3 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_notFindingAnythingTipShelf, 1, 1, v8);
  v9(v3 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_categoriesSavedTipShelf, 1, 1, v8);
  if (_swiftEmptyArrayStorage >> 62 && sub_3EE5A4())
  {
    v10 = sub_35A58(_swiftEmptyArrayStorage);
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  v11 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_subscriptions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6430);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v10;
  *(v3 + v11) = v12;
  *(v3 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_currentUpNextEpisodes) = 0;
  *(v3 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_upNextEpisodesQueue) = 0;
  sub_3EE074();
  sub_3E89D4();
  sub_3EE074();
  sub_3E89D4();
  sub_3EE074();
  sub_3E89D4();
  sub_3EE074();
  sub_3E89D4();
  sub_3EE074();
  sub_3E89D4();
  *(v3 + 72) = a1;
  *(v3 + 80) = v18 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0);

  sub_3EC394();
  *(v3 + 88) = v19[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB28);
  sub_3EC394();
  sub_1D4F0(v19, v3 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB30);
  sub_3EC394();
  *(v3 + 144) = v19[0];
  v13 = objc_allocWithZone(type metadata accessor for UnifiedMessagingProvider());
  *(v3 + 160) = UnifiedMessagingProvider.init(placement:)(0x6F4E6E657473696CLL, 0xEF72656461654877);
  type metadata accessor for RecommendationsMetadataProvider();
  sub_3EC394();
  *(v3 + 168) = *&v19[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB20);
  sub_3EC394();
  sub_1D4F0(v19, v3 + 176);
  sub_3E9094();
  sub_3EC394();
  *(v3 + 216) = *&v19[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6438);
  v14 = swift_allocObject();
  *(v14 + 20) = 0;
  *(v14 + 16) = 3;

  sub_3EC394();
  v15 = *&v19[0];
  *(v3 + 224) = v14;
  *(v3 + 232) = v15;
  *(v3 + 240) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1230);
  sub_3EC394();
  sub_1D4F0(v19, v3 + 32);
  return v3;
}

uint64_t sub_1920A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_19210C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_192158()
{
  result = qword_4F5F90;
  if (!qword_4F5F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F5F90);
  }

  return result;
}

uint64_t sub_1921AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t type metadata accessor for HomePageProvider()
{
  result = qword_4F5FC0;
  if (!qword_4F5FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19224C()
{
  sub_192440(319, &qword_4F5FD0, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_192440(319, &qword_4F5FD8, &type metadata accessor for PerformanceLoadable);
    if (v1 <= 0x3F)
    {
      sub_1924A0();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_192440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ModernShelf();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1924A0()
{
  if (!qword_4F5FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1A70);
    v0 = sub_3E8A14();
    if (!v1)
    {
      atomic_store(v0, &qword_4F5FE0);
    }
  }
}

uint64_t sub_192548@<X0>(uint64_t (*a1)(unint64_t)@<X1>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ObserverQueue() - 8);
  result = a1(v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));
  *a2 = result;
  return result;
}

uint64_t sub_192678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1926E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_192764()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1927B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1927EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F62E0);
  result = v5(a1, *(a1 + *(v6 + 48)), *(a1 + *(v6 + 64)));
  *a2 = result;
  return result;
}

unint64_t sub_192858(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_192868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1928D0()
{
  v1 = sub_3E8FB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_19299C()
{
  v1 = *(sub_3E8FB4() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + v2 + *(v1 + 64));

  sub_18FBE0((v0 + 16), v0 + v2, v3);
}

uint64_t sub_192A40()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_192A80@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[6];
  v4 = v2[7];
  v6 = *a1;
  v7 = v2[5];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v7);
  result = StoreDataProvider.progressivelyLoadShelfItemsPublisher(objectGraph:shelves:)(v4, v6, v7, v5);
  *a2 = result;
  return result;
}

uint64_t sub_192AE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_192B2C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_192B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModernShelf();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(type metadata accessor for ObserverQueue() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6150) + 48);
    v8 = sub_3EBC14();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_192E10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6628);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6448);
  sub_3E9E84();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_192FA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();
}

uint64_t LibraryShowProvider.interactionContextPage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6450);
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6458);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  if (v21)
  {
    v9 = *(v21 + 16);
    v10 = *(v21 + 24);
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  *a1 = v9;
  *(a1 + 8) = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  if (v21)
  {
    v12 = *(v21 + 32);
    v11 = *(v21 + 40);
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showUUID);
    v11 = *(v1 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showUUID + 8);
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F60) + 64);
  *(a1 + 16) = v12;
  *(a1 + 24) = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  sub_3E9514();
  sub_FCF8(v5, &qword_4F6450);
  v14 = type metadata accessor for ShowEpisodesShelvesProvider.Result(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_FCF8(v8, &qword_4F6458);
    v15 = sub_3E8944();
    (*(*(v15 - 8) + 56))(a1 + v13, 1, 1, v15);
  }

  else
  {
    v16 = *(v14 + 20);
    v17 = sub_3E8944();
    v18 = *(v17 - 8);
    (*(v18 + 16))(a1 + v13, &v8[v16], v17);
    sub_19C950(v8, type metadata accessor for ShowEpisodesShelvesProvider.Result);
    (*(v18 + 56))(a1 + v13, 0, 1, v17);
  }

  sub_3E63E4();
  return swift_storeEnumTagMultiPayload();
}

uint64_t LibraryShowProvider.showDetail.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  return v1;
}

uint64_t sub_193460@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  *a1 = v3;
  return result;
}

uint64_t sub_1934E4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

uint64_t LibraryShowProvider.showDetail.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

void (*LibraryShowProvider.showDetail.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_3E9E94();
  return sub_17FA18;
}

uint64_t sub_193694(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_3E9E74();
  return swift_endAccess();
}

uint64_t sub_19370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  sub_3E9E74();
  return swift_endAccess();
}

uint64_t sub_193788(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6480);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6478);
  sub_3E9E84();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t LibraryShowProvider.$showDetail.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6480);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6478);
  sub_3E9E84();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*LibraryShowProvider.$showDetail.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6480);
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

  v9 = OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider__showDetail;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6478);
  sub_3E9E74();
  swift_endAccess();
  return sub_17FF98;
}

uint64_t sub_193BB4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showDetailFetchFailedCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_FE5AC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_7A6C8(v4);
}

uint64_t sub_193C54(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_199400;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showDetailFetchFailedCallback);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_7A6C8(v3);
  return sub_16AC0(v8);
}

uint64_t LibraryShowProvider.showDetailFetchFailedCallback.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showDetailFetchFailedCallback);
  swift_beginAccess();
  v2 = *v1;
  sub_7A6C8(*v1);
  return v2;
}

uint64_t LibraryShowProvider.showDetailFetchFailedCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showDetailFetchFailedCallback);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_16AC0(v6);
}

uint64_t LibraryShowProvider.__allocating_init(asPartOf:showUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_198830(a1, a2, a3);

  return v6;
}

uint64_t LibraryShowProvider.init(asPartOf:showUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_198830(a1, a2, a3);

  return v3;
}

Swift::Void __swiftcall LibraryShowProvider.loadPageContent()()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_libraryDataProvider + 8);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 320))(*(v0 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showUUID), *(v0 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showUUID + 8), ObjectType, v1);
  if (v3)
  {
    v4 = v3;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_3E9EB4();
    type metadata accessor for LocalShowPageFeedUpdater();
    swift_allocObject();

    *(v0 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_localShowPageFeedUpdater) = sub_26D12C(v4);

    sub_26C78C();

    sub_194020(v4);
    sub_1954CC(v4);
  }
}

uint64_t sub_194020(uint64_t a1)
{
  v114 = a1;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6630);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v103 = &v75 - v4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6638);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = &v75 - v7;
  v96 = type metadata accessor for ObserverQueue();
  __chkstk_darwin(v96);
  v97 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v9 - 8);
  v76 = &v75 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5EC0);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v75 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F66B8);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v75 - v12;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6628);
  v113 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v108 = &v75 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F66C0);
  __chkstk_darwin(v86);
  v84 = &v75 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F66C8);
  v88 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v75 - v17;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F66D0);
  v90 = *(v89 - 1);
  __chkstk_darwin(v89);
  v85 = &v75 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F66D8);
  v111 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v75 - v19;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v106);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v75 - v23;
  v25 = *(v1 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_libraryDataProvider + 8);
  v116 = *(v1 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_libraryDataProvider);
  ObjectType = swift_getObjectType();
  v26 = *(v1 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showUUID);
  v27 = *(v1 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showUUID + 8);
  v112 = (*(v25 + 296))(v26, v27, ObjectType, v25);
  sub_1960A4(v114, 0, v112, v24);
  v28 = type metadata accessor for ModernShelf();
  (*(*(v28 - 8) + 56))(v24, 0, 1, v28);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_FBD0(v24, v21, &unk_503DA0);

  v115 = v1;
  sub_3E9EB4();
  sub_FCF8(v24, &unk_503DA0);
  v29 = *(v25 + 336);
  v93 = v26;
  v92 = v27;
  v30 = v25;
  v119[0] = v29(v26, v27, ObjectType, v25);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F66E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F66E8);
  sub_886BC(&qword_4F66F0, &qword_4F66E0);
  sub_886BC(&qword_4F66F8, &qword_4F66E8);
  v31 = v94;
  sub_3EA054();

  sub_886BC(&qword_4F6700, &qword_4F66D8);
  v32 = v95;
  v33 = sub_3E9F34();
  (*(v111 + 8))(v31, v32);
  v119[0] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6708);
  sub_886BC(&qword_4F6710, &qword_4F6708);
  v34 = sub_3E9F94();

  v35 = *(v115 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_graph);
  v91 = v30;
  v36 = v30;
  v37 = v114;
  v38 = sub_199520(v35, v116, v36, v115 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_storeDataProvider, v114);
  v111 = v39;
  v118 = 0;
  v119[0] = v34;
  v94 = v38;
  v117 = v38;
  v95 = v34;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6718);
  sub_886BC(&qword_4F6720, &qword_4F6718);
  sub_3E9FC4();
  sub_886BC(&qword_4F6728, &qword_4F66C0);
  v40 = v83;
  sub_3E9B54();
  v41 = swift_allocObject();
  *(v41 + 16) = v112;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_19A130;
  *(v42 + 24) = v41;
  sub_886BC(&qword_4F6730, &qword_4F66C8);

  v43 = v85;
  v44 = v87;
  sub_3EA024();

  (*(v88 + 8))(v40, v44);
  swift_beginAccess();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6448);
  v46 = v108;
  sub_3E9E74();
  swift_endAccess();
  sub_886BC(&qword_4F6738, &qword_4F66D0);
  v47 = v89;
  sub_3EA1B4();
  (*(v90 + 8))(v43, v47);
  v48 = v113;
  v49 = v109;
  v90 = *(v113 + 16);
  (v90)(v107, v46, v109);
  swift_beginAccess();
  sub_3E9E84();
  swift_endAccess();
  v50 = *(v48 + 8);
  v113 = v48 + 8;
  v50(v46, v49);
  if ((*(v37 + 24) & 1) == 0)
  {
    v89 = v50;
    v51 = *(v37 + 16);
    v52 = *(v115 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_highlightsProvider + 8);
    v53 = swift_getObjectType();
    v119[0] = (*(v52 + 24))(v51, v53, v52);
    sub_801B4();
    v54 = sub_3EDBC4();
    v117 = v54;
    v55 = sub_3EDB64();
    v56 = v76;
    (*(*(v55 - 8) + 56))(v76, 1, 1, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503C40);
    sub_886BC(&qword_4F5EC8, &qword_503C40);
    sub_19CAA4(&qword_4F1D30, sub_801B4);
    v88 = v45;
    v57 = v77;
    sub_3EA114();
    sub_FCF8(v56, &qword_4F69E0);

    sub_886BC(&qword_4F5ED0, &qword_4F5EC0);
    v58 = v80;
    v59 = v79;
    sub_3EA024();
    (*(v78 + 8))(v57, v59);
    swift_beginAccess();
    v60 = v108;
    sub_3E9E74();
    swift_endAccess();
    sub_886BC(&qword_4F6760, &qword_4F66B8);
    v61 = v82;
    sub_3EA1B4();
    (*(v81 + 8))(v58, v61);
    v62 = v109;
    (v90)(v107, v60, v109);
    swift_beginAccess();
    sub_3E9E84();
    swift_endAccess();
    (v89)(v60, v62);
    v37 = v114;
  }

  v63 = *(v37 + 40);
  v119[0] = *(v37 + 32);
  v119[1] = v63;
  v119[2] = 5;
  v120 = 2;
  v121 = 4;
  (*(v91 + 280))(v119, ObjectType);
  v64 = v97;
  swift_storeEnumTagMultiPayload();
  v116 = sub_188E58(v64);

  sub_19C950(v64, type metadata accessor for ObserverQueue);
  v65 = v95;
  v117 = ShowEpisodesShelvesProvider.shelvesPublisher(showUUID:showPublisher:)(v93, v92, v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6740);
  sub_886BC(&qword_4F6748, &qword_4F6740);
  v66 = sub_3E9F14();

  v118 = v66;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F64A8);
  v67 = v99;
  sub_3E9E74();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6750);
  sub_886BC(&qword_4F6758, &qword_4F6750);
  sub_3EA1B4();

  v68 = v100;
  v69 = v101;
  (*(v100 + 16))(v98, v67, v101);
  swift_beginAccess();
  sub_3E9E84();
  swift_endAccess();
  (*(v68 + 8))(v67, v69);
  v117 = sub_196924(v111, v65, v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330);
  sub_886BC(&qword_4F6340, &qword_4F6330);
  v70 = sub_3E9F14();

  v118 = v70;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F64B8);
  v71 = v103;
  sub_3E9E74();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5EE8);
  sub_886BC(&qword_4F5F00, &qword_4F5EE8);
  sub_3EA1B4();

  v72 = v104;
  v73 = v105;
  (*(v104 + 16))(v102, v71, v105);
  swift_beginAccess();
  sub_3E9E84();
  swift_endAccess();

  return (*(v72 + 8))(v71, v73);
}

void sub_1954CC(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_3EDBA4();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6630);
  __chkstk_darwin(v30);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6638);
  __chkstk_darwin(v26);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6628);
  __chkstk_darwin(v25);
  __chkstk_darwin(v5);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6640);
  __chkstk_darwin(v24);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6648);
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v23 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6650);
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v28 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6658);
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v33 = &v22 - v10;
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_localShowPageFeedUpdater))
  {
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6660);
    sub_3E9E74();
    swift_endAccess();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6448);
    sub_3E9E74();
    swift_endAccess();
    swift_beginAccess();
    sub_3E9E74();
    swift_endAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F64A8);
    sub_3E9E74();
    swift_endAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F64B8);
    sub_3E9E74();
    swift_endAccess();
    sub_886BC(&qword_4F6668, &qword_4F6640);
    sub_886BC(&qword_4F6670, &qword_4F6628);
    sub_886BC(&qword_4F6678, &qword_4F6638);
    sub_886BC(&qword_4F6680, &qword_4F6630);
    v11 = v23;
    sub_3E9BB4();
    v12 = v36;
    sub_3EDB84();
    sub_801B4();
    v13 = sub_3EDBC4();
    v40 = v13;
    sub_886BC(&qword_4F6688, &qword_4F6648);
    sub_19CAA4(&qword_4F1D30, sub_801B4);
    v15 = v28;
    v14 = v29;
    sub_3EA134();

    (*(v37 + 8))(v12, v38);
    (*(v27 + 8))(v11, v14);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = v39;
    v17[3] = v2;
    v17[4] = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_199488;
    *(v18 + 24) = v17;
    type metadata accessor for PageContent();
    sub_886BC(&qword_4F6690, &qword_4F6650);

    v20 = v32;
    v19 = v33;
    sub_3EA024();

    (*(v31 + 8))(v15, v20);
    swift_allocObject();
    swift_weakInit();
    sub_886BC(&qword_4F6698, &qword_4F6658);
    v21 = v35;
    sub_3EA1A4();

    (*(v34 + 8))(v19, v21);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
    sub_886BC(&qword_4F59C8, &qword_4F59C0);
    sub_3E9C94();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t LibraryShowProvider.deinit()
{
  v1 = OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider__headerShelf;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6448);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider__highlightShelf, v2);
  v4 = OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider__episodeShelfResult;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F64A8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider__footerShelves;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F64B8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_199040(v0 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showEpisodesShelvesProvider);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_storeDataProvider);

  v8 = OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider__showDetail;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6478);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  sub_16AC0(*(v0 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showDetailFetchFailedCallback));
  return v0;
}

uint64_t LibraryShowProvider.__deallocating_deinit()
{
  LibraryShowProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1960A4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v46 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v7 - 8);
  v47 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF470);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  v15 = *(a1 + 40);
  v48 = *(a1 + 32);
  v49 = v15;

  v50._countAndFlagsBits = 2128928;
  v50._object = 0xE300000000000000;
  sub_3ED3D4(v50);
  v16 = *(a1 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeToPlay);
  if (v16)
  {
    v17 = *(v16 + 64);
    v18 = *(v16 + 72);
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  v51._countAndFlagsBits = v17;
  v51._object = v18;
  sub_3ED3D4(v51);

  v19 = v48;
  v20 = v49;
  type metadata accessor for ShowHeaderFactory();
  *(swift_initStackObject() + 16) = a1;

  sub_3C3CC8(v19, v20);

  swift_setDeallocating();

  if (v16)
  {
    sub_FBD0(v16 + OBJC_IVAR____TtC8ShelfKit7Episode_listenNowReason, v11, &qword_4EF470);
    v21 = sub_3E8D24();
    v22 = *(v21 - 8);
    v23 = v16;
    if ((*(v22 + 48))(v11, 1, v21) != 1)
    {
      (*(v22 + 32))(v14, v11, v21);
      (*(v22 + 56))(v14, 0, 1, v21);

      goto LABEL_14;
    }
  }

  else
  {
    v24 = sub_3E8D24();
    v25 = *(*(v24 - 8) + 56);

    v25(v11, 1, 1, v24);
    v23 = a3;
  }

  if (a3)
  {
    sub_FBD0(a3 + OBJC_IVAR____TtC8ShelfKit7Episode_listenNowReason, v14, &qword_4EF470);
  }

  else
  {
    v26 = sub_3E8D24();
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  }

  v27 = sub_3E8D24();
  v28 = (*(*(v27 - 8) + 48))(v11, 1, v27);

  if (v28 != 1)
  {
    sub_FCF8(v11, &qword_4EF470);
  }

  if (!v23)
  {
    v29 = 0;
    goto LABEL_16;
  }

LABEL_14:
  v29 = sub_35FC98(v14);
LABEL_16:
  v30 = ShowHeader.merging(with:preferredEpisodeToPlay:)(v46, v29);
  v31 = type metadata accessor for ModernShelf();
  v32 = v31[5];
  v33 = type metadata accessor for Header(0);
  (*(*(v33 - 8) + 56))(&a4[v32], 1, 1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_3F5630;
  *(v34 + 56) = type metadata accessor for ShowHeader();
  *(v34 + 64) = sub_19CAA4(&qword_4F6868, type metadata accessor for ShowHeader);
  *(v34 + 32) = v30;

  sub_FCF8(v14, &qword_4EF470);
  v35 = sub_3E5DC4();
  v36 = *(*(v35 - 8) + 56);
  v37 = v47;
  v36(v47, 1, 1, v35);
  v38 = &a4[v31[12]];
  *(v38 + 4) = 0;
  *v38 = 0u;
  *(v38 + 1) = 0u;
  v39 = v31[13];
  v40 = sub_3EC634();
  (*(*(v40 - 8) + 56))(&a4[v39], 1, 1, v40);
  v41 = v31[9];
  v42 = &a4[v31[8]];
  v36(&a4[v41], 1, 1, v35);
  *a4 = 1869768008;
  *(a4 + 1) = 0xE400000000000000;
  v43 = &a4[v31[6]];
  *v43 = 43;
  *(v43 + 3) = 256;
  *(v43 + 2) = 0;
  *(v43 + 1) = 1;
  *&a4[v31[7]] = v34;
  result = sub_51F9C(v37, &a4[v41], &unk_4E9EE0);
  a4[v31[10]] = 1;
  a4[v31[11]] = 0;
  *v42 = 0;
  *(v42 + 1) = 0;
  return result;
}