char *sub_4505E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
  type metadata accessor for JSOrderedPlaylistSelectorItem();
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
    result = sub_ABB060();
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
        result = sub_ABB060();
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

unint64_t sub_450704(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
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

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
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

uint64_t sub_4507C4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF17F8;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_450810@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_AB2C10();
  v76 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07D68);
  v7 = __chkstk_darwin(v6 - 8);
  v74 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v75 = v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E07D40);
  __chkstk_darwin(v10 - 8);
  v12 = v66 - v11;
  v13 = sub_AB2CE0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2C40();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_12E1C(v12, &unk_E07D40);
    sub_4514F8();
    swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 4;
    return swift_willThrow();
  }

  (*(v14 + 32))(v16, v12, v13);
  v19 = sub_AB2C60();
  if (!v20)
  {
    sub_4514F8();
    swift_allocError();
    *v29 = xmmword_AF8620;
    v30 = 4;
    goto LABEL_8;
  }

  v21 = v19;
  v22 = v20;
  v70 = a1;
  v79 = v19;
  v80 = v20;
  __chkstk_darwin(v19);
  v66[-2] = &v79;
  if ((sub_1B39BC(sub_45154C, &v66[-4], &off_CF17C8) & 1) == 0)
  {
    sub_4514F8();
    swift_allocError();
    *v31 = v21;
    *(v31 + 8) = v22;
    *(v31 + 16) = 0;
    goto LABEL_10;
  }

  v79 = sub_AB2C90();
  v80 = v23;
  v77 = 47;
  v78 = 0xE100000000000000;
  sub_36A48();
  v24 = sub_ABAA30();

  v25 = *(v24 + 16);
  if (v25 < 4)
  {

    v26 = sub_AB2C90();
    v28 = v27;
    sub_4514F8();
    swift_allocError();
    *v29 = v26;
    *(v29 + 8) = v28;
    v30 = 1;
LABEL_8:
    *(v29 + 16) = v30;
LABEL_10:
    swift_willThrow();
    return (*(v14 + 8))(v16, v13);
  }

  v66[1] = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = v24;
  if (!isUniquelyReferenced_nonNull_native || v25 - 1 > *(v24 + 24) >> 1)
  {
    v24 = sub_6B0F0(isUniquelyReferenced_nonNull_native, v25, 1, v24);
    v81 = v24;
  }

  v33 = v75;
  sub_450704(0, 1, 0);
  v34 = *(v24 + 16);
  if (!v34)
  {
    goto LABEL_46;
  }

  v81 = v24;
  if ((v34 - 1) > *(v24 + 24) >> 1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    sub_450704(0, 1, 0);
    v35 = *(v24 + 16);
    if (v35)
    {
      v37 = *(v24 + 32);
      v36 = *(v24 + 40);
      v81 = v24;
      v67 = v37;
      v68 = v36;
      v69 = v24;
      v38 = *(v24 + 24);

      if (v35 - 1 <= v38 >> 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    v69 = sub_6B0F0(&dword_0 + 1, v35, 1, v69);
    v81 = v69;
LABEL_19:
    sub_450704(0, 1, 0);
    v39 = sub_AB2C20();
    v73 = v16;
    if (!v39)
    {
      break;
    }

    v40 = v39;
    v41 = v76;
    v71 = *(v39 + 16);
    if (!v71)
    {
LABEL_27:
      v33 = v75;
      (*(v41 + 56))(v75, 1, 1, v3);

      goto LABEL_31;
    }

    v33 = 0;
    v72 = v76 + 16;
    v24 = v76 + 8;
    while (v33 < *(v40 + 16))
    {
      (*(v41 + 16))(v5, v40 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v33, v3);
      if (sub_AB2BF0() == 105 && v42 == 0xE100000000000000)
      {

LABEL_30:
        v33 = v75;
        v41 = v76;
        (*(v76 + 32))(v75, v5, v3);
        (*(v41 + 56))(v33, 0, 1, v3);

        v16 = v73;
        goto LABEL_31;
      }

      v43 = sub_ABB3C0();

      if (v43)
      {
        goto LABEL_30;
      }

      ++v33;
      (*v24)(v5, v3);
      v16 = v73;
      v41 = v76;
      if (v71 == v33)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v24 = sub_6B0F0(&dword_0 + 1, v34, 1, v24);
    v81 = v24;
  }

  v41 = v76;
  (*(v76 + 56))(v33, 1, 1, v3);
LABEL_31:
  v44 = v74;
  sub_15F84(v33, v74, &qword_E07D68);
  if ((*(v41 + 48))(v44, 1, v3) == 1)
  {
    sub_12E1C(v44, &qword_E07D68);
    v45 = v69;
    goto LABEL_36;
  }

  v46 = v41;
  v47 = sub_AB2C00();
  v49 = v48;
  (*(v46 + 8))(v44, v3);
  v45 = v69;
  if (!v49)
  {
LABEL_36:
    v57 = v68;

    v58 = v67;
    v59 = sub_4507C4(v67, v57);
    if (v59 == 5)
    {

      sub_4514F8();
      swift_allocError();
      *v60 = v58;
      *(v60 + 8) = v57;
      v61 = 3;
    }

    else
    {
      v53 = v59;

      v62 = v45 + 16;
      v63 = *(v45 + 2);
      if (v63)
      {
        v55 = 0;
        v56 = 0;
        v64 = &v62[16 * v63];
        v47 = *v64;
        v49 = v64[1];
LABEL_40:

        goto LABEL_44;
      }

      sub_4514F8();
      swift_allocError();
      *v60 = xmmword_AF89D0;
      v61 = 4;
    }

    *(v60 + 16) = v61;
    swift_willThrow();
    sub_12E1C(v33, &qword_E07D68);
    return (*(v14 + 8))(v16, v13);
  }

  v52 = *(v45 + 2);
  v51 = v45 + 16;
  v50 = v52;
  if (v52)
  {
    v53 = 0;
    v54 = &v51[16 * v50];
    v55 = *v54;
    v56 = *(v54 + 1);
    goto LABEL_40;
  }

  v53 = 0;
  v55 = 0;
  v56 = 0;
LABEL_44:
  sub_12E1C(v33, &qword_E07D68);
  (*(v14 + 8))(v73, v13);

  v65 = v70;
  *v70 = v47;
  v65[1] = v49;
  *(v65 + 16) = v53;
  v65[3] = v55;
  v65[4] = v56;
  return result;
}

uint64_t objectdestroy_45Tm()
{

  return swift_deallocObject();
}

void sub_451180(void *a1)
{
  v2 = sub_AB9260();
  [a1 setStationStringID:v2];
}

uint64_t sub_4511DC()
{
  BagProvider.shared.unsafeMutableAddressor();

  v0 = BagProvider.bag.getter();

  if (!v0)
  {
    return 0;
  }

  v1 = [v0 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (v1)
  {
    v2 = v1;
    v3 = sub_AB8FF0();

    v4 = sub_16A318(v3);

    if (v4)
    {
      v5 = sub_AB92A0();
      if (*(v4 + 16))
      {
        v7 = sub_2EBF88(v5, v6);
        if (v8)
        {
          v9 = *(*(v4 + 56) + 8 * v7);
          swift_unknownObjectRetain();

          v17._countAndFlagsBits = v9;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07D60);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_13;
          }

          if (*(v18 + 16))
          {
            sub_2EBF88(0x746C7561666564, 0xE700000000000000);
            if (v10)
            {
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {
                v11 = [v0 stringForBagKey:ICURLBagKeyCountryCode];
                if (v11)
                {
                  v12 = v11;
                  v13 = sub_AB92A0();
                  v15 = v14;

                  sub_ABAD90(24);

                  sub_AB94A0(v17);
                  v19._countAndFlagsBits = 0x617461632F31762FLL;
                  v19._object = 0xEC0000002F676F6CLL;
                  sub_AB94A0(v19);
                  v20._countAndFlagsBits = v13;
                  v20._object = v15;
                  sub_AB94A0(v20);

                  return 0x2F2F3A7370747468;
                }

                goto LABEL_13;
              }
            }
          }
        }
      }

LABEL_13:
    }
  }

  return 0;
}

unint64_t sub_4514A4()
{
  result = qword_E07D50;
  if (!qword_E07D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07D50);
  }

  return result;
}

unint64_t sub_4514F8()
{
  result = qword_E07D70;
  if (!qword_E07D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07D70);
  }

  return result;
}

uint64_t sub_45154C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_ABB3C0() & 1;
  }
}

uint64_t sub_4515A4()
{

  return swift_deallocObject();
}

void sub_4515FC(uint64_t isEscapingClosureAtFileLocation, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v52 = a2;
  v4 = &selRef__authenticateReturningError_;
  v5 = [objc_allocWithZone(MPModelRequest) init];
  v6 = sub_AB9260();
  [v5 setLabel:v6];

  if (qword_DE6C40 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v54 = v5;
    v64 = qword_E71870;
    [v5 setItemProperties:{v52, v53}];
    v65 = [objc_opt_self() sharedServerObjectDatabase];
    v7 = [objc_allocWithZone(MPMutableSectionedCollection) v4[124]];
    v8 = sub_AB9260();
    v57 = v7;
    [v7 appendSection:v8];

    v9 = [objc_allocWithZone(MPMutableSectionedCollection) v4[124]];
    v10 = sub_AB9260();
    v56 = v9;
    [v9 appendSection:v10];

    v11 = swift_allocObject();
    v12 = sub_99EB0(_swiftEmptyArrayStorage);
    v55 = v11;
    *(v11 + 16) = v12;
    v13 = *(isEscapingClosureAtFileLocation + 16);
    if (!v13)
    {
      break;
    }

    v63 = objc_opt_self();
    v62 = objc_opt_self();
    v61 = objc_opt_self();
    v60 = sub_13C80(0, &qword_DE9C10);
    sub_13C80(0, &unk_E25110);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v58 = &v73;
    v14 = (isEscapingClosureAtFileLocation + 72);
    while (1)
    {
      v69 = v13;
      v17 = *(v14 - 32);
      v18 = *(v14 - 3);
      v19 = *(v14 - 2);
      v21 = *(v14 - 1);
      v20 = *v14;
      *&v77 = *(v14 - 5);
      v16 = v77;
      BYTE8(v77) = v17;
      v78 = v18;
      v79 = v19;
      v80 = v21;
      v81 = v20;
      v67 = v20;

      v66 = v16;
      v68 = v19;

      v22 = [v63 kindWithVariants:7];
      v23 = [v62 kindWithSongKind:v22];
      v24 = static MPModelPlaylistEntry.defaultMusicKind.getter();
      v25 = [v61 kindWithPlaylistEntryKind:v24 options:0];

      v26 = [ObjCClassFromMetadata identityKind];
      v4 = v26;
      v70 = v23;
      if (v17 <= 1)
      {
        if (!v17)
        {
          v23 = v22;
        }
      }

      else
      {
        v23 = v25;
        if (v17 != 2)
        {
          v23 = v22;
          if (v17 != 3)
          {
            v23 = v26;
          }
        }
      }

      v27 = v23;
      v5 = &v52;
      __chkstk_darwin(v27);
      v51[2] = &v77;
      v28 = objc_allocWithZone(MPIdentifierSet);
      v29 = swift_allocObject();
      *(v29 + 16) = sub_4522F4;
      *(v29 + 24) = v51;
      v75 = sub_C3FB8;
      v76 = v29;
      aBlock = _NSConcreteStackBlock;
      v72 = 1107296256;
      v73 = sub_41A314;
      v74 = &block_descriptor_79_1;
      v30 = _Block_copy(&aBlock);
      v31 = v27;

      v32 = [v28 initWithModelKind:v31 block:v30];

      _Block_release(v30);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      v33 = [v65 modelObjectMatchingIdentifierSet:v32 propertySet:v64];

      if (v33)
      {
        v34 = v33;
        v35 = MPModelObject.bestIdentifier(for:)(3, 2u);
        if (v36)
        {
          v37 = v35;
          v38 = v36;
          v39 = v66;

          v40 = v55;
          v41 = *(v55 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v41;
          *(v40 + 16) = 0x8000000000000000;
          sub_95060(&v77, v37, v38, isUniquelyReferenced_nonNull_native);

          *(v40 + 16) = aBlock;

          [v56 appendItem:v34];
          v15 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v34 personalizationStyle:1];

          [v57 appendItem:v15];
        }

        else
        {

          v15 = v34;
        }
      }

      else
      {

        v15 = v66;
      }

      v14 += 6;

      v13 = v69 - 1;
      if (v69 == 1)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

LABEL_17:
  v43 = objc_allocWithZone(MPStoreLibraryPersonalizationRequest);
  v44 = v54;
  v45 = v57;
  v46 = [v43 initWithUnpersonalizedRequest:v54 unpersonalizedContentDescriptors:v57];
  v47 = v56;
  [v46 setRepresentedObjects:v56];
  v48 = swift_allocObject();
  v49 = v53;
  v48[2] = v52;
  v48[3] = v49;
  v48[4] = v55;
  v75 = sub_451DFC;
  v76 = v48;
  aBlock = _NSConcreteStackBlock;
  v72 = 1107296256;
  v73 = sub_151E0;
  v74 = &block_descriptor_85_1;
  v50 = _Block_copy(&aBlock);

  [v46 performWithResponseHandler:v50];
  _Block_release(v50);
}

uint64_t sub_451DBC()
{

  return swift_deallocObject();
}

uint64_t sub_451E08()
{

  return swift_deallocObject();
}

uint64_t sub_451E68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_16MusicApplication12InterstellarO8ResolverV9HighlightV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_451ECC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_451F14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_451F58(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication12InterstellarO8ResolverV5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_451FA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_452008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_452058(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SortOptions.ViewType.Albums(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SortOptions.ViewType.Albums(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_452240()
{
  result = qword_E07DA8;
  if (!qword_E07DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07DA8);
  }

  return result;
}

void _BrowseCollectionViewCustomLayoutProviding<>._updateMetricsOfCustomCollectionViewLayout(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v6 = swift_dynamicCastUnknownClass();
  if (v6)
  {
    v7 = v6;
    v8 = *(a3 + 32);
    v9 = a1;
    v8(v7, a2, a3);
  }
}

uint64_t _BrowseCollectionViewCellArtworkPrefetching<>._artworkCatalogToPrefetch(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_ABA9C0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v19 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v9);
  v14 = v19 - v13;
  v19[1] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07E10);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (v15)
  {
    v16(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v14, v11, AssociatedTypeWitness);
    v17 = (*(a3 + 24))(v14, a2, a3);
    (*(v12 + 8))(v14, AssociatedTypeWitness);
    return v17;
  }

  else
  {
    v16(v11, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v11, v7);
    return 0;
  }
}

id _BrowseCollectionViewCellConfiguring<>._prepareCell(itemModelObject:presentationIndexPath:modelIndexPath:collectionView:reuseConfigurationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  v10 = UICollectionView.dequeueReusableBrowseCell<A>(for:)();
  a5();
  v11 = *(*(a8 + 8) + 40);
  v12 = v10;
  v11();

  return v12;
}

uint64_t _BrowseCollectionViewCellConfiguring<>._configure(cell:modelIndexPath:itemModelObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a2;
  v21 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_ABA9C0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v11);
  v16 = &v21 - v15;
  v23 = a3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07E10);
  v17 = swift_dynamicCast();
  v18 = *(v14 + 56);
  if (v17)
  {
    v18(v13, 0, 1, AssociatedTypeWitness);
    (*(v14 + 32))(v16, v13, AssociatedTypeWitness);
    swift_getAssociatedTypeWitness();
    v19 = swift_dynamicCastUnknownClassUnconditional();
    (*(a5 + 32))(v19, v16, v22, a4, a5);
    return (*(v14 + 8))(v16, AssociatedTypeWitness);
  }

  else
  {
    v18(v13, 1, 1, AssociatedTypeWitness);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t _BrowseCollectionViewCellConfiguring<>._configureForDisplay(cell:modelIndexPath:itemModelObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a2;
  v21 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_ABA9C0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v11);
  v16 = &v21 - v15;
  v23 = a3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07E10);
  v17 = swift_dynamicCast();
  v18 = *(v14 + 56);
  if (v17)
  {
    v18(v13, 0, 1, AssociatedTypeWitness);
    (*(v14 + 32))(v16, v13, AssociatedTypeWitness);
    swift_getAssociatedTypeWitness();
    v19 = swift_dynamicCastUnknownClassUnconditional();
    (*(a5 + 40))(v19, v16, v22, a4, a5);
    return (*(v14 + 8))(v16, AssociatedTypeWitness);
  }

  else
  {
    v18(v13, 1, 1, AssociatedTypeWitness);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t _BrowseCollectionViewCellConfiguring<>._artworkCatalogToPrefetch(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_ABA9C0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v19 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v9);
  v14 = v19 - v13;
  v19[1] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07E10);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (v15)
  {
    v16(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v14, v11, AssociatedTypeWitness);
    v17 = (*(a3 + 48))(v14, a2, a3);
    (*(v12 + 8))(v14, AssociatedTypeWitness);
    return v17;
  }

  else
  {
    v16(v11, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v11, v7);
    return 0;
  }
}

void sub_452F68()
{
  v1 = v0;
  v2 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v2);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v19 = v8;
    v9 = sub_17559C(v8);
    if (v9)
    {
      v10 = v9;
      v9();
      sub_17654(v10);
    }

    else
    {
      v11 = [v0 traitCollection];
      v12 = UITraitCollection.isMediaPicker.getter();

      if (!v12)
      {
        v13 = sub_175E9C();
        if (v13)
        {
          *v4 = v13;
          v14 = v13;
          swift_storeEnumTagMultiPayload();
          v23 = 0;
          memset(v22, 0, sizeof(v22));
          v21 = 0;
          memset(v20, 0, sizeof(v20));
          v15 = v14;
          v16 = v1;
          PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v4, v22, 3, 0, 0, 1, 0, 1, v7, v1, v20);
          sub_37D3DC(0);

          sub_1914D8(v7);
          return;
        }
      }
    }

    v17 = v19;
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t _BrowseCollectionViewCellConfiguring<>._performPrimaryAction(itemModelObject:at:presentationIndexPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_ABA9C0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v12);
  v17 = &v21 - v16;
  v23 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07E10);
  v18 = swift_dynamicCast();
  v19 = *(v15 + 56);
  if (v18)
  {
    v19(v14, 0, 1, AssociatedTypeWitness);
    (*(v15 + 32))(v17, v14, AssociatedTypeWitness);
    (*(a5 + 64))(v17, a2, v22, a4, a5);
    return (*(v15 + 8))(v17, AssociatedTypeWitness);
  }

  else
  {
    v19(v14, 1, 1, AssociatedTypeWitness);
    return (*(v11 + 8))(v14, v10);
  }
}

id _BrowseCollectionViewSectionHeaderConfiguring<>._prepareHeaderView(sectionModelObject:presentationIndexPath:modelIndexPath:collectionView:reuseConfigurationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a2;
  v28 = a6;
  v29 = a5;
  v27 = a4;
  v24 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_ABA9C0();
  v22 = *(v12 - 8);
  v23 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v13);
  v18 = &v22 - v17;
  sub_AB92A0();
  v25 = a7;
  swift_getAssociatedTypeWitness();
  v19 = UICollectionView.dequeueReusableBrowseSupplementaryView<A>(elementKind:forIndexPath:)();

  v20 = v19;
  v29();
  v30 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07E10);
  if (swift_dynamicCast())
  {
    (*(v16 + 56))(v15, 0, 1, AssociatedTypeWitness);
    (*(v16 + 32))(v18, v15, AssociatedTypeWitness);
    (*(a8 + 32))(v20, v18, v24, v25, a8);

    (*(v16 + 8))(v18, AssociatedTypeWitness);
  }

  else
  {

    (*(v16 + 56))(v15, 1, 1, AssociatedTypeWitness);
    (*(v22 + 8))(v15, v23);
  }

  return v20;
}

uint64_t sub_453BF4(uint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for AlbumCell();
  v7 = swift_conformsToProtocol2();
  result = 0;
  if (v7)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    return (*(v7 + 8))(a1, v6, a2, a3);
  }

  return result;
}

id sub_453D20()
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    v2 = sub_1795A0(v0);

    return v2;
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

id sub_453F30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_13C80(0, &qword_E07E18);
  if ([ObjCClassFromMetadata isSubclassOfClass:swift_getObjCClassFromMetadata()])
  {
    return &dword_0 + 1;
  }

  sub_13C80(0, &unk_DF0CF0);
  return [ObjCClassFromMetadata isSubclassOfClass:swift_getObjCClassFromMetadata()];
}

id sub_454000()
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 artworkCatalog];
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v2;
}

void sub_454074(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    sub_1B3FE4(a2);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

id sub_454390(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  a3();
  return v4;
}

id sub_4546D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t), uint64_t a10, void (*a11)(id, uint64_t, uint64_t))
{
  v13 = a9(a2);
  a5();
  swift_unknownObjectRetain();
  v14 = v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    a11(v14, v15, a3);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v14;
}

void sub_454814()
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v5 = v0;
    type metadata accessor for SongCell();
    v1 = swift_dynamicCastClassUnconditional();
    v2 = [v5 artworkCatalog];
    v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
    *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v2;
    v4 = v2;

    sub_74EA4(v2);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_454920()
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_454980(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(0);
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();
}

id sub_454A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t), uint64_t a10, void (*a11)(id, uint64_t, uint64_t))
{
  v13 = a9(a2);
  a5();
  swift_unknownObjectRetain();
  v14 = v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    a11(v14, v15, a3);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v14;
}

void sub_454B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(uint64_t, id, uint64_t))
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v13 = v11;
    a7(0);
    v12 = swift_dynamicCastClassUnconditional();
    a8(v12, v13, a2);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_454C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(uint64_t, id, uint64_t))
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v13 = v11;
    a7(0);
    v12 = swift_dynamicCastClassUnconditional();
    a8(v12, v13, a2);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

id sub_454D54()
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 playlist];
    if (v2)
    {
      v3 = v2;
      v4 = MPModelPlaylist.preferredArtworkCatalog.getter();

      return v4;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_454DF4()
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_454ED0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    a5(v8);
  }
}

uint64_t sub_45517C(uint64_t a1, double a2, double a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = swift_conformsToProtocol2();
  result = 0;
  if (v7)
  {
    v9 = AssociatedTypeWitness == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    return (*(v7 + 8))(a1, AssociatedTypeWitness, a2, a3);
  }

  return result;
}

void sub_455230()
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    type metadata accessor for SocialPersonHorizontalCell();
    v2 = swift_dynamicCastClassUnconditional();
    v3 = [v1 artworkCatalog];
    v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
    *(v2 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v3;
    v5 = v3;

    sub_74EA4(v3);
    sub_B0D4C();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

id _s16MusicApplication36_BrowseCollectionViewCellConfiguringPA2A0cdefG0RzrlE27_cellTypeImpliesTableLayoutSbyF_0()
{
  swift_getAssociatedTypeWitness();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_13C80(0, &qword_E07E18);
  if ([ObjCClassFromMetadata isSubclassOfClass:swift_getObjCClassFromMetadata()])
  {
    return &dword_0 + 1;
  }

  sub_13C80(0, &unk_DF0CF0);
  return [ObjCClassFromMetadata isSubclassOfClass:swift_getObjCClassFromMetadata()];
}

uint64_t _s16MusicApplication36_BrowseCollectionViewCellConfiguringPA2A0cdefG0RzrlE09_registerF5Class010collectionE0ySo012UICollectionE0C_tF_0()
{
  swift_getAssociatedTypeWitness();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();
}

uint64_t _s16MusicApplication45_BrowseCollectionViewSectionHeaderConfiguringPA2A0cdefgH0RzrlE09_registerfgE5Class010collectionE0ySo012UICollectionE0C_tF_0()
{
  swift_getAssociatedTypeWitness();
  sub_AB92A0();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();
}

char *JSPrivacyLinkViewController.init(privacyLinkViewModel:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewModel] = a1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", 0, 0);
  swift_beginAccess();
  v6 = objc_opt_self();

  v7 = v5;
  v8 = sub_AB9260();
  v9 = [v6 linkWithBundleIdentifier:v8];

  v10 = v7;
  if (v9)
  {
    v10 = *&v7[OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewController];
    *&v7[OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewController] = v9;
  }

  return v7;
}

void JSPrivacyLinkViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewController) = 0;
  sub_ABAFD0();
  __break(1u);
}

Swift::Void __swiftcall JSPrivacyLinkViewController.viewDidLoad()()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];

      v6 = [v3 view];
      if (v6)
      {
        v7 = v6;
        v8 = AccessibilityIdentifier.privacyTermsLink.unsafeMutableAddressor();
        v9 = *v8;
        v10 = v8[1];
        sub_74390();

        UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v9, v10);
        [v1 addChildViewController:v3];
        [v3 didMoveToParentViewController:v1];
        v11 = [v1 view];
        if (v11)
        {
          v12 = v11;
          [v11 addSubview:v7];

          sub_45592C();
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_45592C()
{
  if ([v0 isViewLoaded])
  {
    v1 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewController];
    if (v1)
    {
      v24 = v1;
      v2 = [v24 view];
      if (v2)
      {
        v3 = v2;
        v4 = [v0 view];
        if (!v4)
        {
          __break(1u);
          return;
        }

        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        v26.origin.x = v7;
        v26.origin.y = v9;
        v26.size.width = v11;
        v26.size.height = v13;
        Width = CGRectGetWidth(v26);
        LODWORD(v15) = 1148846080;
        LODWORD(v16) = 1112014848;
        [v3 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v15, v16}];
        v18 = v17;
        v20 = fmax(v19, 70.0) + 22.0;
        [v0 preferredContentSize];
        if (v22 != v18 || v21 != v20)
        {
          [v0 setPreferredContentSize:{v18, v20}];
        }
      }
    }
  }
}

Swift::Void __swiftcall JSPrivacyLinkViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidLayoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 view];
      if (v6)
      {
        v7 = v6;
        [v6 bounds];
        [v5 setFrame:?];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void JSPrivacyLinkViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_455D58;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_CF24C;
  v10[3] = &block_descriptor_144;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

uint64_t sub_455D20()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_144(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall JSPrivacyLinkViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", isa);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (!isa || v4 != [(objc_class *)isa horizontalSizeClass])
  {
    goto LABEL_7;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [(objc_class *)isa preferredContentSizeCategory];
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 == sub_AB92A0() && v10 == v11)
  {

    return;
  }

  v12 = sub_ABB3C0();

  if ((v12 & 1) == 0)
  {
LABEL_7:
    sub_45592C();
  }
}

Swift::Void __swiftcall JSPrivacyLinkViewController.systemLayoutFittingSizeDidChange(forChildViewController:)(UIViewController forChildViewController)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "systemLayoutFittingSizeDidChangeForChildViewController:", forChildViewController.super.super.isa);
  sub_45592C();
}

uint64_t sub_456244(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_subtitle);
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_subtitle);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_subtitle + 8);
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == result && v5 == a2;
      if (v6 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_458374();
LABEL_11:
}

char *sub_4562C4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundCornerRadius] = 0x4020000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication15MultilineButton_hasBackground] = 1;
  *&v4[OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive] = 0;
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets];
  *v9 = xmmword_B0B770;
  v9[1] = xmmword_B0B770;
  *&v4[OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents] = _swiftEmptyArrayStorage;
  v10 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_textStackView;
  type metadata accessor for TextStackView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImageView;
  *&v4[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImagesForStates;
  *&v4[v12] = sub_9769C(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC16MusicApplication15MultilineButton_activityIndicatorView] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for MultilineButton();
  v13 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_textStackView;
  v15 = *&v13[OBJC_IVAR____TtC16MusicApplication15MultilineButton_textStackView];
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  v16 = v13;
  v17 = v15;
  v18 = TextDrawing.Cache.init()();
  v19 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v20 = *&v17[v19];
  *&v17[v19] = v18;

  sub_2E6210(v20);

  [v16 addSubview:*&v16[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImageView]];
  [v16 addSubview:*&v13[v14]];
  sub_457634();

  return v16;
}

void sub_456524(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor;
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor];
  if (v5)
  {
    if (!a1)
    {
      goto LABEL_5;
    }

    sub_13C80(0, qword_DFAAC0);
    v6 = v5;
    v7 = a1;
    v8 = sub_ABA790();

    if (v8)
    {
      return;
    }

    v5 = *&v2[v4];
    if (v5)
    {
LABEL_5:
      v9 = v5;
      v10 = [v2 layer];
      v11 = [v9 cgColor];
      if (!v11)
      {
        __break(1u);
        return;
      }

      v12 = v11;
      [v10 setBorderColor:v12];

      v13 = [v2 layer];
      v14 = [v2 traitCollection];
      [v14 displayScale];
      v16 = v15;

      [v13 setBorderWidth:2.0 / v16];
      v17 = [v2 layer];
      [v17 setCornerRadius:*&v2[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundCornerRadius]];

      goto LABEL_9;
    }
  }

  else if (!a1)
  {
    return;
  }

  v18 = [v2 layer];
  [v18 setBorderColor:0];

  v19 = [v2 layer];
  [v19 setBorderWidth:0.0];

  v17 = [v2 layer];
  [v17 setCornerRadius:0.0];
LABEL_9:

  sub_457634();
}

void sub_45677C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents;

  LOBYTE(a1) = sub_12C54C(v4, a1);

  if ((a1 & 1) == 0)
  {
    v45 = *(v1 + v3);
    v5 = *(v45 + 16);
    v6 = _swiftEmptyArrayStorage;
    if (v5)
    {
      v58 = _swiftEmptyArrayStorage;

      sub_ABAEC0();
      type metadata accessor for TextStackView.Component();
      v7 = 0;
      for (i = v5 - 1; ; --i)
      {
        if (v46 = v7, v8 = v45 + v7, v9 = *(v8 + 32), v10 = *(v8 + 40), v11 = *(v8 + 48), v12 = *(v8 + 56), v13 = *(v8 + 64), v14 = *(v8 + 72), v15 = *(v8 + 80), v16 = *(v8 + 88), v17 = *(v8 + 96), v18 = *(v8 + 104), v19 = *(v8 + 112), v20 = *(v8 + 120), v21 = *(v8 + 128), *&v53 = v13, *(&v53 + 1) = v14, v49 = v16, v50 = v15, *&v54 = v15, *(&v54 + 1) = v16, v47 = v18, v48 = v17, *&v55 = v17, *(&v55 + 1) = v18, v56 = v19, *&v57 = v20, *(&v57 + 1) = v21, v22 = swift_allocObject(), v23 = v56, *(v22 + 64) = v55, *(v22 + 80) = v23, v25 = v55, v24 = v56, *(v22 + 96) = v57, v26 = v54, v27 = v53, v28 = v54, *(v22 + 32) = v53, *(v22 + 48) = v26, v29 = v57, *(v22 + 192) = v24, *(v22 + 208) = v29, *(v22 + 160) = v28, *(v22 + 176) = v25, *(v22 + 112) = 0, *(v22 + 128) = 0, *(v22 + 136) = 0, *(v22 + 120) = 0xE000000000000000, *(v22 + 224) = 0, *(v22 + 232) = 0xE000000000000000, *(v22 + 248) = 0, *(v22 + 256) = 0, *(v22 + 240) = 0, *(v22 + 16) = v9, *(v22 + 24) = v10, *(v22 + 144) = v27, swift_beginAccess(), *(v22 + 112) = v11, *(v22 + 120) = v12, !v11) && v12 == 0xE000000000000000 || (sub_ABB3C0())
        {
          sub_2F118(&v53, v52);
          sub_2F118(&v53, v52);
          v30 = v14;
          v31 = v19;
          v32 = v13;
          v33 = v30;
          v34 = v31;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v35 = v32;
        }

        else
        {
          *(v22 + 224) = v11;
          *(v22 + 232) = v12;
          sub_2F118(&v53, v52);

          sub_2F118(&v53, v52);
          v36 = *(v22 + 240);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v37 = v13;
          v38 = v14;
          v39 = v19;
          v35 = v37;
          v33 = v38;
          v40 = v39;
          if (v36)
          {

            v36(v41);
            sub_17654(v36);
          }
        }

        v52[0] = v13;
        v52[1] = v14;
        v52[2] = v50;
        v52[3] = v49;
        v52[4] = v48;
        v52[5] = v47;
        v52[6] = v19;
        v52[7] = 0;
        v52[8] = v20;
        v52[9] = v21;
        sub_2F174(v52);

        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();
        if (!i)
        {
          break;
        }

        v7 = v46 + 104;
      }

      v6 = v58;
    }

    TextStackView.removeAll()();
    if (v6 >> 62)
    {
      v42 = sub_ABB060();
      if (v42)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v42 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (v42)
      {
LABEL_15:
        if (v42 < 1)
        {
          __break(1u);
          return;
        }

        for (j = 0; j != v42; ++j)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v44 = sub_36003C(j, v6);
          }

          else
          {
            v44 = *(v6 + 8 * j + 32);
          }

          TextStackView.add(_:)(v44);
        }
      }
    }
  }
}

id sub_456BEC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for MultilineButton();
  v19.receiver = v2;
  v19.super_class = v4;
  v5 = objc_msgSendSuper2(&v19, "isHighlighted");
  v18.receiver = v2;
  v18.super_class = v4;
  objc_msgSendSuper2(&v18, "setHighlighted:", a1 & 1);
  result = [v2 isHighlighted];
  if (v5 != result)
  {
    v7 = *&v2[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImageView];
    v8 = [v2 state];
    v9 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImagesForStates;
    swift_beginAccess();
    v10 = *&v2[v9];
    if (*(v10 + 16) && ((v11 = sub_2F5A90(v8), (v12 & 1) != 0) || (v11 = sub_2F5A90(0), (v13 & 1) != 0)))
    {
      v14 = *(*(v10 + 56) + 8 * v11);
    }

    else
    {
      v14 = 0;
    }

    [v7 setImage:v14];

    v15 = *&v2[OBJC_IVAR____TtC16MusicApplication15MultilineButton_textStackView];
    v16 = [v2 isHighlighted];
    v17 = 1.0;
    if (v16)
    {
      v17 = 0.25;
    }

    return [v15 setAlpha:v17];
  }

  return result;
}

id sub_456D48(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for MultilineButton();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_456D9C(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v9 = type metadata accessor for MultilineButton();
  v13.receiver = a1;
  v13.super_class = v9;
  v10 = *a4;
  v11 = a1;
  LODWORD(v10) = objc_msgSendSuper2(&v13, v10);
  v12.receiver = v11;
  v12.super_class = v9;
  objc_msgSendSuper2(&v12, *a5, a3);
  if (v10 != [v11 *a4])
  {
    sub_4580D4();
  }
}

void sub_456E38()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for MultilineButton();
  objc_msgSendSuper2(&v28, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = UIEdgeInsetsInsetRect(v1, v3, v5, v7, *&v0[OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets], *&v0[OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets + 8]);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [*&v0[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImageView] setFrame:{v2, v4, v6, v8}];
  v16 = *&v0[OBJC_IVAR____TtC16MusicApplication15MultilineButton_textStackView];
  [v16 setFrame:{v9, v11, v13, v15}];
  v17 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive;
  [v16 setHidden:v0[OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive]];
  v18 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_activityIndicatorView;
  v19 = *&v0[OBJC_IVAR____TtC16MusicApplication15MultilineButton_activityIndicatorView];
  if (v0[v17] == 1)
  {
    if (v19)
    {
      v20 = *&v0[OBJC_IVAR____TtC16MusicApplication15MultilineButton_activityIndicatorView];
    }

    else
    {
      v21 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
      v22 = objc_opt_self();
      v20 = v21;
      v23 = [v22 whiteColor];
      [v20 setColor:v23];

      v24 = *&v0[v18];
      *&v0[v18] = v20;

      v19 = 0;
    }

    v25 = v19;
    v26 = [v20 isDescendantOfView:v0];

    if ((v26 & 1) == 0)
    {
      [v0 addSubview:v20];
    }

    [v20 startAnimating];
    v27 = v20;
    [v27 setFrame:{v9, v11, v13, v15}];
    [v27 setHidesWhenStopped:1];
  }

  else
  {
    [v19 stopAnimating];
  }
}

double sub_4570DC(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets);
  v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets + 8);
  v7 = *(v2 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets + 16);
  v8 = *(v2 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets + 24);
  v9 = sub_AB38D0();
  v10 = v6 + v8;
  v11 = a1 - v10;
  if (a1 - v10 <= 0.0)
  {
    v11 = 0.0;
  }

  if (v9)
  {
    a1 = v11;
  }

  v12 = sub_AB38D0();
  v13 = a2 - (v5 + v7);
  if (v13 <= 0.0)
  {
    v13 = 0.0;
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = a2;
  }

  [*(v2 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_textStackView) sizeThatFits:{a1, v14, 0, *&a2}];
  return v10 + v15;
}

uint64_t sub_4573F8()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents) + 16);

  v12 = v1;
  if (v1)
  {
    v3 = 0;
    v4 = result + 56;
    v11 = result;
    while (v3 < *(result + 16))
    {
      v13 = *(v4 - 8);
      v5 = *v4;
      v6 = *(v4 + 8);
      v7 = *(v4 + 56);
      v8 = *(v4 + 16);
      v9 = v7;

      v10 = v6;
      ++v3;
      v14._countAndFlagsBits = v13;
      v14._object = v5;
      sub_AB94A0(v14);

      v4 += 104;
      result = v11;
      if (v12 == v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

void sub_457634()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC16MusicApplication15MultilineButton_hasBackground] == 1)
  {
    v2 = [v0 tintColor];
    if (!v2)
    {
      v2 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
    }

    v3 = *&v0[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundCornerRadius];
    v118 = _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v2, v3);
    v4 = [objc_opt_self() systemGray3Color];
    v5 = _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v4, v3);

    v6 = [v2 colorWithAlphaComponent:0.5];
    v116 = _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v6, v3);

    v7 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.25];
    v8 = kCAFilterPlusD;
    v9 = [v2 _colorBlendedWithColor:v7 compositingFilter:kCAFilterPlusD];

    if (v9)
    {
      v10 = _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v9, v3);

      v11 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.25];
      v12 = [v2 _colorBlendedWithColor:v11 compositingFilter:v8];

      if (v12)
      {
        v13 = [v12 colorWithAlphaComponent:0.5];

        v14 = _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v13, v3);
        swift_beginAccess();
        if (v118)
        {
          v15 = v118;
          sub_2E4FA4(v118, 0);
          swift_endAccess();
        }

        else
        {
          v60 = sub_27B478(0);
          swift_endAccess();
        }

        v61 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImageView];
        v62 = [v1 state];
        v63 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImagesForStates;
        swift_beginAccess();
        v64 = *&v1[v63];
        if (*(v64 + 16) && ((v65 = sub_2F5A90(v62), (v66 & 1) != 0) || (v65 = sub_2F5A90(0), (v67 & 1) != 0)))
        {
          v68 = *(*(v64 + 56) + 8 * v65);
        }

        else
        {
          v68 = 0;
        }

        [v61 setImage:v68];

        swift_beginAccess();
        if (v5)
        {
          v69 = v5;
          sub_2E4FA4(v5, 2);
          swift_endAccess();
        }

        else
        {
          v70 = sub_27B478(2);
          swift_endAccess();
        }

        v71 = [v1 state];
        v72 = *&v1[v63];
        if (*(v72 + 16) && ((v73 = sub_2F5A90(v71), (v74 & 1) != 0) || (v73 = sub_2F5A90(0), (v75 & 1) != 0)))
        {
          v76 = *(*(v72 + 56) + 8 * v73);
        }

        else
        {
          v76 = 0;
        }

        [v61 setImage:v76];

        swift_beginAccess();
        if (v5)
        {
          v77 = v5;
          sub_2E4FA4(v5, 6);
          swift_endAccess();
        }

        else
        {
          v78 = sub_27B478(6);
          swift_endAccess();
        }

        v79 = [v1 state];
        v80 = *&v1[v63];
        if (*(v80 + 16) && ((v81 = sub_2F5A90(v79), (v82 & 1) != 0) || (v81 = sub_2F5A90(0), (v83 & 1) != 0)))
        {
          v84 = *(*(v80 + 56) + 8 * v81);
        }

        else
        {
          v84 = 0;
        }

        [v61 setImage:v84];

        swift_beginAccess();
        if (v117)
        {
          v85 = v117;
          sub_2E4FA4(v117, 1);
          swift_endAccess();
        }

        else
        {
          v86 = sub_27B478(1);
          swift_endAccess();
        }

        v87 = [v1 state];
        v88 = *&v1[v63];
        if (*(v88 + 16) && ((v89 = sub_2F5A90(v87), (v90 & 1) != 0) || (v89 = sub_2F5A90(0), (v91 & 1) != 0)))
        {
          v92 = *(*(v88 + 56) + 8 * v89);
        }

        else
        {
          v92 = 0;
        }

        [v61 setImage:v92];

        swift_beginAccess();
        if (v10)
        {
          v93 = v10;
          sub_2E4FA4(v10, 4);
          swift_endAccess();
        }

        else
        {
          v94 = sub_27B478(4);
          swift_endAccess();
        }

        v95 = [v1 state];
        v96 = *&v1[v63];
        if (*(v96 + 16) && ((v97 = sub_2F5A90(v95), (v98 & 1) != 0) || (v97 = sub_2F5A90(0), (v99 & 1) != 0)))
        {
          v100 = *(*(v96 + 56) + 8 * v97);
        }

        else
        {
          v100 = 0;
        }

        [v61 setImage:v100];

        swift_beginAccess();
        if (v14)
        {
          v101 = v14;
          sub_2E4FA4(v14, 5);
          swift_endAccess();
        }

        else
        {
          v102 = sub_27B478(5);
          swift_endAccess();
        }

        v103 = [v1 state];
        v104 = *&v1[v63];
        if (*(v104 + 16) && ((v105 = sub_2F5A90(v103), (v106 & 1) != 0) || (v105 = sub_2F5A90(0), (v107 & 1) != 0)))
        {
          v108 = *(*(v104 + 56) + 8 * v105);
        }

        else
        {
          v108 = 0;
        }

        [v61 setImage:v108];

        v109 = [v1 state];
        v110 = *&v1[v63];
        if (*(v110 + 16))
        {
          v111 = sub_2F5A90(v109);
          v112 = v118;
          if (v113 & 1) != 0 || (v111 = sub_2F5A90(0), (v114))
          {
            v115 = *(*(v110 + 56) + 8 * v111);
          }

          else
          {
            v115 = 0;
          }
        }

        else
        {
          v115 = 0;
          v112 = v118;
        }

        [v61 setImage:v115];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v16 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImagesForStates;
  swift_beginAccess();
  v17 = sub_27B478(0);
  swift_endAccess();

  v18 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImageView];
  v19 = [v1 state];
  v20 = *&v1[v16];
  if (*(v20 + 16) && ((v21 = sub_2F5A90(v19), (v22 & 1) != 0) || (v21 = sub_2F5A90(0), (v23 & 1) != 0)))
  {
    v24 = *(*(v20 + 56) + 8 * v21);
  }

  else
  {
    v24 = 0;
  }

  [v18 setImage:v24];

  swift_beginAccess();
  v25 = sub_27B478(2);
  swift_endAccess();

  v26 = [v1 state];
  v27 = *&v1[v16];
  if (*(v27 + 16) && ((v28 = sub_2F5A90(v26), (v29 & 1) != 0) || (v28 = sub_2F5A90(0), (v30 & 1) != 0)))
  {
    v31 = *(*(v27 + 56) + 8 * v28);
  }

  else
  {
    v31 = 0;
  }

  [v18 setImage:v31];

  swift_beginAccess();
  v32 = sub_27B478(6);
  swift_endAccess();

  v33 = [v1 state];
  v34 = *&v1[v16];
  if (*(v34 + 16) && ((v35 = sub_2F5A90(v33), (v36 & 1) != 0) || (v35 = sub_2F5A90(0), (v37 & 1) != 0)))
  {
    v38 = *(*(v34 + 56) + 8 * v35);
  }

  else
  {
    v38 = 0;
  }

  [v18 setImage:v38];

  swift_beginAccess();
  v39 = sub_27B478(1);
  swift_endAccess();

  v40 = [v1 state];
  v41 = *&v1[v16];
  if (*(v41 + 16) && ((v42 = sub_2F5A90(v40), (v43 & 1) != 0) || (v42 = sub_2F5A90(0), (v44 & 1) != 0)))
  {
    v45 = *(*(v41 + 56) + 8 * v42);
  }

  else
  {
    v45 = 0;
  }

  [v18 setImage:v45];

  swift_beginAccess();
  v46 = sub_27B478(4);
  swift_endAccess();

  v47 = [v1 state];
  v48 = *&v1[v16];
  if (*(v48 + 16) && ((v49 = sub_2F5A90(v47), (v50 & 1) != 0) || (v49 = sub_2F5A90(0), (v51 & 1) != 0)))
  {
    v52 = *(*(v48 + 56) + 8 * v49);
  }

  else
  {
    v52 = 0;
  }

  [v18 setImage:v52];

  swift_beginAccess();
  v53 = sub_27B478(5);
  swift_endAccess();

  v54 = [v1 state];
  v55 = *&v1[v16];
  if (*(v55 + 16) && ((v56 = sub_2F5A90(v54), (v57 & 1) != 0) || (v56 = sub_2F5A90(0), (v58 & 1) != 0)))
  {
    v59 = *(*(v55 + 56) + 8 * v56);
  }

  else
  {
    v59 = 0;
  }

  [v18 setImage:v59];

  [v18 setImage:0];
}

void sub_4580D4()
{
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImageView];
  v2 = [v0 state];
  v3 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImagesForStates;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (*(v4 + 16) && ((v5 = sub_2F5A90(v2), (v6 & 1) != 0) || (v5 = sub_2F5A90(0), (v7 & 1) != 0)))
  {
    v8 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v8 = 0;
  }

  [v1 setImage:v8];
}

BOOL sub_458190(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 3);
  v20[0] = *(a1 + 2);
  v20[1] = v8;
  v20[2] = *(a1 + 4);
  v21 = a1[10];
  v10 = *(a1 + 11);
  v9 = *(a1 + 12);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v23 = a2[10];
  v15 = *(a2 + 4);
  v22[1] = *(a2 + 3);
  v22[2] = v15;
  v22[0] = *(a2 + 2);
  v17 = *(a2 + 11);
  v16 = *(a2 + 12);
  if ((v4 != v11 || v5 != v12) && (sub_ABB3C0() & 1) == 0 || (v6 != v13 || v7 != v14) && (sub_ABB3C0() & 1) == 0)
  {
    return 0;
  }

  v18 = _s16MusicApplication14TextAttributesV2eeoiySbAC_ACtFZ_0(v20, v22) && v10 == v17;
  return v9 == v16 && v18;
}

id sub_458290()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultilineButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_458374()
{
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title);
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title + 8);

  sub_45882C(&v40);
  *&v34 = 0x656C746974;
  *(&v34 + 1) = 0xE500000000000000;
  *&v35 = v2;
  *(&v35 + 1) = v1;
  v36 = v40;
  LOBYTE(v37) = v41;
  *(&v37 + 1) = v42;
  *&v38 = v43;
  BYTE8(v38) = v44;
  *v39 = v45;
  *&v39[8] = xmmword_B04340;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA930);
  v3 = swift_allocObject();
  v4 = v38;
  v5 = *v39;
  v53[4] = v38;
  v53[5] = *v39;
  v54 = 0x4030000000000000;
  v6 = v34;
  v53[0] = v34;
  v53[1] = v35;
  v8 = v36;
  v7 = v37;
  v53[2] = v36;
  v53[3] = v37;
  *(v3 + 48) = v35;
  *(v3 + 64) = v8;
  *(v3 + 16) = xmmword_AF4EC0;
  *(v3 + 32) = v6;
  *(v3 + 128) = 0x4030000000000000;
  *(v3 + 96) = v4;
  *(v3 + 112) = v5;
  *(v3 + 80) = v7;
  v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_subtitle + 8);
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = *(v0 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_subtitle);
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    *&v39[8] = 0x4037000000000000;
    sub_1323DC(v53, v32);

    sub_45882C(v46);
    sub_458AC8(v46, &v36);
    sub_45882C(&v47);
    v12 = v47;
    v13 = v48;
    v14 = v49;
    v15 = v50;
    v16 = v51;
    v17 = v52;
    v19 = *(v3 + 16);
    v18 = *(v3 + 24);
    if (v19 >= v18 >> 1)
    {
      v28 = v3;
      v31 = v47;
      v29 = v48;
      v30 = sub_6B43C((v18 > 1), v19 + 1, 1, v28);
      v13 = v29;
      v12 = v31;
      v3 = v30;
    }

    *(v3 + 16) = v19 + 1;
    v20 = v3 + 104 * v19;
    *(v20 + 32) = 0x656C746974627573;
    *(v20 + 40) = 0xE800000000000000;
    *(v20 + 48) = v10;
    *(v20 + 56) = v9;
    *(v20 + 64) = v12;
    *(v20 + 80) = v13;
    *(v20 + 88) = v14;
    *(v20 + 96) = v15;
    *(v20 + 104) = v16;
    *(v20 + 112) = v17;
    __asm { FMOV            V0.2D, #16.0 }

    *(v20 + 120) = _Q0;
  }

  else
  {
LABEL_8:
    sub_1323DC(v53, v32);
  }

  v26 = *(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents);
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents) = v3;
  sub_45677C(v26);

  v32[4] = v38;
  v32[5] = *v39;
  v33 = *&v39[16];
  v32[0] = v34;
  v32[1] = v35;
  v32[2] = v36;
  v32[3] = v37;
  return sub_132438(v32);
}

void sub_45882C(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_13C80(0, &qword_DE6EE0);
  v4 = sub_ABA550();
  v5 = objc_opt_self();
  v6 = [v5 blackColor];
  v7 = [v5 clearColor];
  v8 = *(v2 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_textColor);

  *a1 = v8;
  *(a1 + 8) = v7;
  *(a1 + 16) = 3;
  *(a1 + 24) = 4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v4;
}

void sub_45890C()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_textColor);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_458A18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_458A60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_458B24()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundCornerRadius) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_hasBackground) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets);
  *v1 = xmmword_B0B770;
  v1[1] = xmmword_B0B770;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents) = _swiftEmptyArrayStorage;
  v2 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_textStackView;
  type metadata accessor for TextStackView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImagesForStates;
  *(v0 + v4) = sub_9769C(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_activityIndicatorView) = 0;
  sub_ABAFD0();
  __break(1u);
}

char *sub_458C54()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeValue] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_isBackgroundViewHidden] = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_backgroundView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeView;
  v5 = objc_allocWithZone(type metadata accessor for NotificationBadgeView());
  *&v1[v4] = sub_308B4(0);
  v6 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_chevronImageView;
  *&v1[v6] = [objc_allocWithZone(UIImageView) init];
  v7 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_titleCompositingView;
  if (qword_DE6A20 != -1)
  {
    swift_once();
  }

  v8 = qword_E713D0;
  sub_89F60();
  v9 = v8;
  v10 = sub_ABA550();
  if (qword_DE6A28 != -1)
  {
    v28 = v10;
    swift_once();
    v10 = v28;
  }

  v11 = qword_E713D8;
  LOBYTE(v30) = 0;
  *(&v30 + 1) = 0;
  v31 = v9;
  v32 = v10;
  v33 = 4;
  v34 = 0;
  v35 = 1;
  v36 = qword_E713D8;
  v12 = objc_allocWithZone(type metadata accessor for VibrancyLabelCompositingView());
  v13 = v11;
  *&v1[v7] = sub_38F7B8(&v30);
  v29.receiver = v1;
  v29.super_class = type metadata accessor for SocialProfileHeaderRow();
  v14 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v15 = [v14 layer];
  [v15 setAllowsGroupBlending:0];

  v16 = [v14 layer];
  [v16 setAllowsGroupOpacity:0];

  v17 = objc_opt_self();
  v18 = [v17 clearColor];
  [v14 setBackgroundColor:v18];

  v19 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_backgroundView;
  v20 = *&v14[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_backgroundView];
  v21 = [v14 traitCollection];
  if ([v21 horizontalSizeClass] == &dword_0 + 2)
  {
    v22 = [v17 clearColor];
  }

  else
  {
    if (qword_DE6A18 != -1)
    {
      swift_once();
    }

    v22 = qword_E713C8;
  }

  v23 = v22;

  [v20 setBackgroundColor:v23];
  v24 = [*&v14[v19] layer];
  v25 = [v14 traitCollection];

  [v25 userInterfaceStyle];
  sub_AB92A0();

  v26 = sub_AB9260();

  [v24 setCompositingFilter:v26];

  [v14 addSubview:*&v14[v19]];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_titleCompositingView]];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeView]];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_chevronImageView]];
  sub_459E74();

  return v14;
}

uint64_t sub_459108(uint64_t result, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title + 8];
  if (v4 != result || v3 != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v6 = (*&v2[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_titleCompositingView] + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text);
      v7 = *v6;
      v8 = v6[1];
      *v6 = v4;
      v6[1] = v3;

      sub_38FB24(v7, v8);

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

id sub_4592A8(char a1)
{
  v2 = a1 & 1;
  result = [v1 isHighlighted];
  if (result != v2)
  {
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_backgroundView];
    v5 = [v1 state];
    v6 = [v1 traitCollection];
    v7 = sub_45A12C(v5, v6);

    [v4 setBackgroundColor:v7];
    v8 = *&v1[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_chevronImageView];
    v9 = [v1 isHighlighted];

    return [v8 setHighlighted:v9];
  }

  return result;
}

id sub_4593A4()
{
  v33.receiver = v0;
  v33.super_class = type metadata accessor for SocialProfileHeaderRow();
  objc_msgSendSuper2(&v33, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];

  [v0 effectiveUserInterfaceLayoutDirection];
  [v0 music_inheritedLayoutInsets];
  v12 = UIEdgeInsetsInsetRect(v2, v4, v6, v8, v10, v11);
  v14 = v13;
  v31 = v15;
  v17 = v16;
  [*&v0[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_backgroundView] setFrame:{v2, v4, v6, v8}];
  v18 = *&v0[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_chevronImageView];
  [v18 sizeThatFits:?];
  v20 = v19;
  v22 = v21;
  v32 = v14;
  v34.origin.x = v12;
  v34.origin.y = v14;
  v34.size.width = v31;
  v34.size.height = v17;
  CGRectGetMaxX(v34);
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = v20;
  v35.size.height = v22;
  CGRectGetWidth(v35);
  sub_ABA470();
  v23 = v31 - (CGRectGetWidth(v36) + 12.0);
  if (*&v0[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeValue] >= 1)
  {
    [*&v0[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeView] sizeThatFits:{0.0, 0.0, *&v22}];
    v25 = v24;
    v27 = v26;
    v37.origin.y = v32;
    v37.origin.x = v12;
    v37.size.width = v23;
    v37.size.height = v17;
    CGRectGetMaxX(v37);
    v38.origin.x = 0.0;
    v38.origin.y = 0.0;
    v38.size.width = v25;
    v38.size.height = v27;
    CGRectGetWidth(v38);
    sub_ABA470();
    CGRectGetWidth(v39);
  }

  sub_ABA490();
  [v18 setFrame:?];
  v28 = *&v0[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeView];
  sub_ABA490();
  [v28 setFrame:?];
  v29 = *&v0[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_titleCompositingView];
  sub_ABA490();
  return [v29 setFrame:?];
}

double sub_4598C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title + 8);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title) & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    [*(v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_titleCompositingView) sizeThatFits:{0.0, 0.0}];
    v4 = v3 + 12.0;
  }

  else
  {
    v4 = 0.0;
  }

  if (*(v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeValue) >= 1)
  {
    [*(v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeView) sizeThatFits:{0.0, 0.0}];
    v4 = v4 + v5 + 12.0;
  }

  [*(v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_chevronImageView) sizeThatFits:{0.0, 0.0}];
  return v4 + v6;
}

void sub_4599A4(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SocialProfileHeaderRow();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_backgroundView];
  v4 = [v1 state];
  v5 = [v1 traitCollection];
  v6 = sub_45A12C(v4, v5);

  [v3 setBackgroundColor:v6];
  v7 = [v3 layer];
  v8 = [v1 traitCollection];
  [v8 userInterfaceStyle];
  sub_AB92A0();

  v9 = sub_AB9260();

  [v7 setCompositingFilter:v9];

  sub_459E74();
}

uint64_t sub_459CC4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SocialProfileHeaderRow();
  v1 = objc_msgSendSuper2(&v5, "accessibilityValue");
  if (v1)
  {
    v2 = v1;
    v3 = sub_AB92A0();
  }

  else
  {
    v3 = 0;
  }

  if (*&v0[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeValue] < 1)
  {
    return v3;
  }

  return sub_ABB330();
}

void sub_459D8C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_AB92A0();
    v6 = a1;
    v7 = sub_AB9260();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for SocialProfileHeaderRow();
  objc_msgSendSuper2(&v9, *a4, v7);
}

void sub_459E74()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_45B16C();
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = [v4 blackColor];
    v6 = [v3 flattenedImageWithColor:v5];
    v7 = [v6 imageWithRenderingMode:1];

    v3 = v7;
    v8 = [v4 whiteColor];
    v9 = [v3 flattenedImageWithColor:v8];
    v11 = [v9 imageWithRenderingMode:1];
  }

  else
  {
    v11 = 0;
  }

  v10 = *&v0[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_chevronImageView];
  [v10 setImage:v3];
  [v10 setHighlightedImage:v11];
}

id sub_45A054()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SocialProfileHeaderRow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_45A12C(char a1, id a2)
{
  if ([a2 horizontalSizeClass] == &dword_0 + 2)
  {
    v3 = [objc_opt_self() clearColor];
LABEL_7:

    return v3;
  }

  if ((a1 & 5) != 0)
  {
    if (qword_DE6A18 != -1)
    {
      swift_once();
    }

    v3 = [qword_E713C8 colorWithAlphaComponent:0.4];
    goto LABEL_7;
  }

  if (qword_DE6A18 != -1)
  {
    swift_once();
  }

  v5 = qword_E713C8;

  return v5;
}

void sub_45A240()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeValue) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_isBackgroundViewHidden) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_backgroundView;
  *(v1 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeView;
  v5 = objc_allocWithZone(type metadata accessor for NotificationBadgeView());
  *(v1 + v4) = sub_308B4(0);
  v6 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_chevronImageView;
  *(v1 + v6) = [objc_allocWithZone(UIImageView) init];
  v7 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_titleCompositingView;
  if (qword_DE6A20 != -1)
  {
    swift_once();
  }

  v8 = qword_E713D0;
  sub_89F60();
  v9 = v8;
  v10 = sub_ABA550();
  if (qword_DE6A28 != -1)
  {
    swift_once();
  }

  v11 = qword_E713D8;
  LOBYTE(v14) = 0;
  *(&v14 + 1) = 0;
  v15 = v9;
  v16 = v10;
  v17 = 4;
  v18 = 0;
  v19 = 1;
  v20 = qword_E713D8;
  v12 = objc_allocWithZone(type metadata accessor for VibrancyLabelCompositingView());
  v13 = v11;
  *(v1 + v7) = sub_38F7B8(&v14);
  sub_ABAFD0();
  __break(1u);
}

uint64_t *sub_45A430()
{
  if (qword_DE6CB8 != -1)
  {
    swift_once();
  }

  return &qword_E718F8;
}

UIImage __swiftcall UIImage.applying(tintColor:)(UIColor tintColor)
{
  v2 = [v1 flattenedImageWithColor:tintColor.super.isa];
  v3 = [v2 imageWithRenderingMode:1];

  return v3;
}

id sub_45A4E0()
{
  sub_B9A4C();
  result = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(140, 142, 148, 1.0);
  qword_E71890 = result;
  return result;
}

id sub_45A560(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != &dword_0 + 2)
  {
    v3 = &selRef_blackColor;
  }

  v4 = [v2 *v3];
  v5 = [v4 colorWithAlphaComponent:0.15];

  return v5;
}

id sub_45A618(void *a1)
{
  if ([a1 userInterfaceStyle] == &dword_0 + 2)
  {
    v1 = [objc_opt_self() tertiaryLabelColor];

    return v1;
  }

  else
  {
    if (qword_DE6C90 != -1)
    {
      swift_once();
    }

    v3 = qword_E718D0;

    return v3;
  }
}

id sub_45A72C()
{
  sub_B9A4C();
  result = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(229, 229, 234, 1.0);
  qword_E718D0 = result;
  return result;
}

id sub_45A7CC(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 userInterfaceStyle] == &dword_0 + 2)
  {
    v5 = [objc_opt_self() secondarySystemBackgroundColor];

    return v5;
  }

  else
  {
    sub_B9A4C();
    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(a2, a2, a3, 1.0);
  }
}

id sub_45A860()
{
  result = [objc_allocWithZone(AVTimeFormatter) init];
  qword_E718F0 = result;
  return result;
}

void sub_45A894()
{
  v0 = sub_AB3760();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB36A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(NSDateFormatter) init];
  [v8 setDateStyle:3];
  v9 = Calendar.musicDefaultCalendar.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v9, v4);
  sub_AB3670();
  (*(v5 + 8))(v7, v4);
  isa = sub_AB3750().super.isa;
  (*(v1 + 8))(v3, v0);
  [v8 setTimeZone:isa];

  qword_E718F8 = v8;
}

void sub_45AA70()
{
  v0 = sub_AB3760();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB36A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(NSDateFormatter) init];
  v9 = Calendar.musicDefaultCalendar.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v9, v4);
  sub_AB3670();
  (*(v5 + 8))(v7, v4);
  isa = sub_AB3750().super.isa;
  (*(v1 + 8))(v3, v0);
  [v8 setTimeZone:isa];

  qword_E07F70 = v8;
}

void sub_45AC6C(void *a1, void *a2, double *a3, void **a4, CGFloat a5)
{
  v10 = sub_AB39E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 CGContext];
  v15 = [a2 cgColor];
  if (v15)
  {
    v16 = v15;
    CGContextSetFillColorWithColor(v14, v16);

    v17 = *a3;
    v18 = a3[1];
    if (a5 <= 0.0)
    {
      [a1 fillRect:{0.0, 0.0, v17, v18}];
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v21 = CGPathCreateWithRoundedRect(*(&v17 - 2), a5, a5, 0);
      v22 = [a1 CGContext];
      CGContextAddPath(v22, v21);

      v23 = [a1 CGContext];
      (*(v11 + 104))(v13, enum case for CGPathFillRule.winding(_:), v10);
      sub_AB9E40();
      (*(v11 + 8))(v13, v10);
    }

    v24 = [a1 currentImage];
    v25 = *a4;
    *a4 = v24;
  }

  else
  {
    __break(1u);
  }
}

uint64_t _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(void *a1, double a2)
{
  __asm { FMOV            V0.2D, #1.0 }

  v26 = _Q0;
  v9 = 1.0;
  if (a2 > 0.0)
  {
    v9 = a2 + a2 + 1.0;
    *&v26 = v9;
    *(&v26 + 1) = v9;
  }

  v10 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  v11 = [objc_opt_self() mainScreen];
  [v11 scale];
  v13 = v12;

  [v10 setScale:v13];
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v10 format:{v9, v9}];
  v25 = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = &v26;
  *(v15 + 32) = a2;
  *(v15 + 40) = &v25;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_45C2D4;
  *(v16 + 24) = v15;
  aBlock[4] = sub_57B84;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_15_3;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  v19 = [v14 imageWithActions:v17];
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!v25)
  {

    v22 = 0;
    goto LABEL_10;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a2 < 9.22337204e18)
  {
    v21 = v25;
    v22 = [v21 stretchableImageWithLeftCapWidth:a2 topCapHeight:a2];

LABEL_10:
    v23 = v25;

    return v22;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_45B16C()
{
  if (sub_ABA320())
  {
    v0 = 1;
  }

  else
  {
    v0 = -1;
  }

  v1 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleSubheadline scale:v0];
  v2 = sub_AB9260();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  if (v3)
  {
    v4 = [objc_opt_self() secondaryLabelColor];
    v5 = [v3 flattenedImageWithColor:v4];
    v6 = [v5 imageWithRenderingMode:1];
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_45B2C4(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_ABA320();

  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  sub_471A4();
  if (sub_AB38F0())
  {
    if (v10)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }

  else
  {
    v15.origin.x = a2;
    v15.origin.y = a3;
    v15.size.width = a4;
    v15.size.height = a5;
    CGRectGetWidth(v15);
    if (sub_AB38F0())
    {
      if (v10)
      {
        return 6;
      }

      else
      {
        return 7;
      }
    }

    else
    {
      v16.origin.x = a2;
      v16.origin.y = a3;
      v16.size.width = a4;
      v16.size.height = a5;
      CGRectGetWidth(v16);
      if (sub_AB38F0())
      {
        if (v10)
        {
          return 5;
        }

        else
        {
          return 6;
        }
      }

      else
      {
        v17.origin.x = a2;
        v17.origin.y = a3;
        v17.size.width = a4;
        v17.size.height = a5;
        CGRectGetWidth(v17);
        if (sub_AB38F0())
        {
          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }

        else
        {
          v18.origin.x = a2;
          v18.origin.y = a3;
          v18.size.width = a4;
          v18.size.height = a5;
          CGRectGetWidth(v18);
          if (sub_AB38F0())
          {
            if (v10)
            {
              return 3;
            }

            else
            {
              return 4;
            }
          }

          else
          {
            v19.origin.x = a2;
            v19.origin.y = a3;
            v19.size.width = a4;
            v19.size.height = a5;
            CGRectGetWidth(v19);
            v12 = sub_AB38F0();
            if (v10)
            {
              v13 = 2;
            }

            else
            {
              v13 = 3;
            }

            if (v12)
            {
              return v13;
            }

            else
            {
              return 2;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_45B594()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_AB3430();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2D90();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_45BB38(v2);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    if (qword_DE6CC0 != -1)
    {
      swift_once();
    }

    v8 = qword_E07F70;
    isa = sub_AB34E0().super.isa;
    [v8 setLocale:isa];

    v10 = sub_AB9260();
    [v8 setLocalizedDateFormatFromTemplate:v10];

    v11 = sub_AB3370().super.isa;
    v12 = [v8 stringFromDate:v11];

    v13 = sub_AB92A0();
    (*(v4 + 8))(v6, v3);

    return v13;
  }
}

uint64_t sub_45B7DC(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v21 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07F78);
  __chkstk_darwin(v2 - 8);
  v20 = &v19 - v3;
  v4 = sub_AB2DC0();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB36A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = Calendar.musicDefaultCalendar.unsafeMutableAddressor();
  v19 = *(v8 + 16);
  v19(v10, v11, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07F80);
  v12 = sub_AB3690();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF4EC0;
  (*(v13 + 104))(v15 + v14, enum case for Calendar.Component.year(_:), v12);
  sub_11594(v15);
  swift_setDeallocating();
  (*(v13 + 8))(v15 + v14, v12);
  swift_deallocClassInstance();
  sub_AB3620();

  v16 = v20;
  v19(v20, v10, v7);
  (*(v8 + 56))(v16, 0, 1, v7);
  sub_AB2DB0();
  v17 = sub_45B594();
  (*(v22 + 8))(v6, v23);
  (*(v8 + 8))(v10, v7);
  return v17;
}

uint64_t sub_45BB38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_145(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_45BBB8(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_ABA320();

  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  CGRectGetWidth(v12);
  sub_471A4();
  if (sub_AB38F0())
  {
    if (v10)
    {
      return 7;
    }

    else
    {
      return 9;
    }
  }

  else
  {
    v13.origin.x = a2;
    v13.origin.y = a3;
    v13.size.width = a4;
    v13.size.height = a5;
    CGRectGetWidth(v13);
    if (sub_AB38F0())
    {
      if (v10)
      {
        return 6;
      }

      else
      {
        return 8;
      }
    }

    else
    {
      v14.origin.x = a2;
      v14.origin.y = a3;
      v14.size.width = a4;
      v14.size.height = a5;
      CGRectGetWidth(v14);
      if (sub_AB38F0())
      {
        if (v10)
        {
          return 5;
        }

        else
        {
          return 7;
        }
      }

      else
      {
        v15.origin.x = a2;
        v15.origin.y = a3;
        v15.size.width = a4;
        v15.size.height = a5;
        CGRectGetWidth(v15);
        if (sub_AB38F0())
        {
          if (v10)
          {
            return 4;
          }

          else
          {
            return 6;
          }
        }

        else
        {
          v16.origin.x = a2;
          v16.origin.y = a3;
          v16.size.width = a4;
          v16.size.height = a5;
          CGRectGetWidth(v16);
          if (sub_AB38F0())
          {
            if (v10)
            {
              return 3;
            }

            else
            {
              return 5;
            }
          }

          else
          {
            v17.origin.x = a2;
            v17.origin.y = a3;
            v17.size.width = a4;
            v17.size.height = a5;
            CGRectGetWidth(v17);
            if (sub_AB38F0())
            {
              if (v10)
              {
                return 2;
              }

              else
              {
                return 4;
              }
            }

            else if (v10)
            {
              return 2;
            }

            else
            {
              return 3;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_45BEA8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetWidth(*&a1);
  sub_471A4();
  result = sub_AB38F0();
  if ((result & 1) == 0)
  {
    v9.origin.x = a1;
    v9.origin.y = a2;
    v9.size.width = a3;
    v9.size.height = a4;
    CGRectGetWidth(v9);
    return sub_AB38F0();
  }

  return result;
}

uint64_t sub_45BF9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07F88);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07F78);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_AB2DC0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 1)
  {
    return 0;
  }

  v12 = Calendar.musicDefaultCalendar.unsafeMutableAddressor();
  v13 = sub_AB36A0();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v7, v12, v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  v15 = sub_AB3760();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_AB2DA0();
  v16 = sub_45B594();
  (*(v9 + 8))(v11, v8);
  return v16;
}

uint64_t sub_45C29C()
{

  return swift_deallocObject();
}

id sub_45C314()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112) image];

  return v1;
}

double sub_45C35C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_45C3A4(double a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  result = sub_AB38D0();
  if (result)
  {
    result = sub_35D498();
  }

  if (v4 != *&v1[v3])
  {
    result = [v1 setNeedsLayout];
    v6 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_artworkAspectRatioDidChangeHandler];
    if (v6)
    {

      v6(v7);
      return sub_17654(v6);
    }
  }

  return result;
}

void (*sub_45C488(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_45C520;
}

void sub_45C520(uint64_t a1)
{
  v1 = *a1;
  sub_45C3A4(*(*a1 + 24));

  free(v1);
}

id sub_45C560()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell____lazy_storage___playButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell____lazy_storage___playButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell____lazy_storage___playButton);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(UIButton) init];
    sub_13C80(0, &qword_DE8700);
    v6 = UIImage.init(systemName:pointSize:weight:)(34.0, 0xD000000000000010, 0x8000000000B4A550, 4);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 imageWithRenderingMode:2];
    }

    else
    {
      v8 = 0;
    }

    [v5 setImage:v8 forState:0];

    v9 = [objc_opt_self() whiteColor];
    v10 = [v9 colorWithAlphaComponent:0.8];

    [v5 setTintColor:v10];
    v11 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_45C6D4()
{
  [*(*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112) frame];
  x = v14.origin.x;
  width = v14.size.width;
  height = v14.size.height;
  MaxY = CGRectGetMaxY(v14);
  v5 = (*&stru_388.segname[(swift_isaMask & *v0) - 8])();
  v15.origin.x = x;
  v15.origin.y = MaxY;
  v15.size.width = width;
  v15.size.height = v5;
  v6 = CGRectGetHeight(v15);
  v16.origin.x = x;
  v16.origin.y = MaxY;
  v16.size.width = width;
  v16.size.height = height;
  v7 = CGRectGetHeight(v16);
  if (v6 > v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView);
  if (v9)
  {
    [v9 setFrame:{x, MaxY, width, v8}];
  }

  [*(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView) setFrame:{x, MaxY, width, v8}];
  v10 = (v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame);
  *v10 = x;
  v10[1] = MaxY;
  v10[2] = width;
  v10[3] = v5;
  v11 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialHighlightOverlayView);

  return [v11 setFrame:{x, MaxY, width, v5}];
}

void sub_45C850()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView;
  if (([*&v0[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView] isHidden] & 1) == 0)
  {
    v2 = [*&v0[v1] layer];
    v3 = [v2 animationKeys];

    if (!v3 || (v4 = sub_AB9760(), v3, v5 = *(v4 + 16), , !v5))
    {
      v6 = *(*&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 48);
      if (v6 != 255 && (v6 & 1) == 0)
      {
        v7 = objc_opt_self();
        v8 = swift_allocObject();
        *(v8 + 16) = v0;
        v18 = sub_45E13C;
        v19 = v8;
        v14 = _NSConcreteStackBlock;
        v15 = 1107296256;
        v16 = sub_1B5EB4;
        v17 = &block_descriptor_146;
        v9 = _Block_copy(&v14);
        v10 = v0;

        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        v18 = sub_45E174;
        v19 = v11;
        v14 = _NSConcreteStackBlock;
        v15 = 1107296256;
        v16 = sub_1811AC;
        v17 = &block_descriptor_71_0;
        v12 = _Block_copy(&v14);
        v13 = v10;

        [v7 animateWithDuration:v9 animations:v12 completion:0.2];
        _Block_release(v12);
        _Block_release(v9);
      }
    }
  }
}

void sub_45CA84()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_113380();
  if (v2)
  {
    v4 = v3;
    v5 = *(*(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112);
    v6 = v2;
    v7 = v2;
    v8 = v4;
    v8[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_cropStyle] = sub_37B9F4([v5 contentMode]) & 1;

    [*(v1 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView) insertSubview:v7 atIndex:0];
    v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView);
    *(v1 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView) = v6;
    v10 = v7;

    v11 = *(v1 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer);
    *(v1 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer) = v4;
  }
}

void sub_45CBB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && (v2 = *(v1 + 72)) != 0 || (v2 = *(v1 + 64)) != 0)
  {
    v7 = v2;
    v3 = [v2 existingColorAnalysisWithAlgorithm:1];
    v4 = [v3 backgroundColor];

    if (v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
  }

  v4 = [objc_opt_self() systemGrayColor];
LABEL_9:
  v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView);
  v6 = v4;
  [v5 setBackgroundColor:v6];
  [*(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView) setBackgroundColor:v6];
}

double sub_45CCF4()
{
  [*(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView) bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [*(*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112) frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v19.origin.x = v2;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v8;
  MaxY = CGRectGetMaxY(v19);
  v20.origin.x = v10;
  v20.origin.y = v12;
  v20.size.width = v14;
  v20.size.height = v16;
  return MaxY - CGRectGetMaxY(v20);
}

char *sub_45CDB0(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v73 - v10;
  v76 = sub_ABA680();
  v12 = *(v76 - 8);
  __chkstk_darwin(v76);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView;
  *&v4[v15] = [objc_allocWithZone(UIView) init];
  v16 = &v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame];
  *v16 = 0u;
  v16[1] = 0u;
  v17 = &v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_artworkAspectRatioDidChangeHandler];
  *v17 = 0;
  v17[1] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_lockupVideoArtworkCatalog] = 0;
  v18 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView;
  v19 = [objc_allocWithZone(UIView) init];
  v75 = objc_opt_self();
  v20 = [v75 clearColor];
  [v19 setBackgroundColor:v20];

  *&v4[v18] = v19;
  v21 = &v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHorizontalInsets];
  *v22 = xmmword_AFB130;
  v22[1] = xmmword_B0B770;
  *&v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell____lazy_storage___playButton] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_hasAppliedMaterialTexture] = 0;
  v23 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialHighlightOverlayView;
  v24 = [objc_allocWithZone(UIView) init];
  if (qword_DE6C60 != -1)
  {
    swift_once();
  }

  [v24 setBackgroundColor:qword_E718A0];
  [v24 setHidden:1];
  *&v4[v23] = v24;
  v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_alwaysUseCompactLayout] = 0;
  v25 = type metadata accessor for FeaturedMaterialCell();
  v77.receiver = v4;
  v77.super_class = v25;
  v26 = objc_msgSendSuper2(&v77, "initWithFrame:", a1, a2, a3, a4);
  v27 = UIView.Corner.extraLarge.unsafeMutableAddressor();
  v28 = v12;
  v74 = v12;
  v29 = *(v12 + 16);
  v30 = v14;
  v31 = v76;
  v29(v14, v27, v76);
  v73 = v14;
  sub_ABA5F0();
  v32 = *(v28 + 56);
  v32(v11, 0, 1, v31);
  VerticalLockupCollectionViewCell.artworkCornerTreatment.setter(v11);
  v33 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView;
  [*&v26[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView] setClipsToBounds:1];
  v34 = *&v26[v33];
  v29(v11, v30, v31);
  v32(v11, 0, 1, v31);
  v35 = v34;
  sub_ABA6A0();

  v36 = [v26 contentView];
  [v36 addSubview:*&v26[v33]];

  sub_45CA84();
  v37 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent;
  [*&v26[v33] addSubview:*(*&v26[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + 112)];
  [*&v26[v33] addSubview:*&v26[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView]];
  v38 = *&v26[v33];
  v39 = *&v26[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  v40 = v26;
  [v38 addSubview:v39];
  v41 = *&v26[v33];
  v42 = sub_45C560();
  [v41 addSubview:v42];

  [*&v26[v33] addSubview:*&v40[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialHighlightOverlayView]];
  v43 = *&v40[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell____lazy_storage___playButton];
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = sub_13C80(0, &qword_DF13D0);
  v46 = v43;
  ControlEventHandling<>.on(_:handler:)(64, sub_45E0E4, v44, v45);

  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = &v40[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_imageDidChangeHandler];
  v49 = *&v40[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_imageDidChangeHandler];
  *v48 = sub_45E0EC;
  v48[1] = v47;

  sub_17654(v49);

  v50 = *&v26[v37];
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = (v50 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageViewDidResetHandler);
  v53 = *(v50 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageViewDidResetHandler);
  *v52 = sub_45E0F4;
  v52[1] = v51;

  sub_17654(v53);

  v54 = *&v26[v37];
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v56 = (v54 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_contentModeDidChangeHandler);
  v57 = *(v54 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_contentModeDidChangeHandler);
  *v56 = sub_45E0FC;
  v56[1] = v55;

  sub_17654(v57);

  v58 = *&v26[v33];
  v59 = v58;
  sub_AB9EA0();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = [v75 systemLightGrayColor];
  (*(v74 + 8))(v73, v31);
  v69 = &v40[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_selectedBackgroundViewConfiguration];
  v70 = *&v40[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_selectedBackgroundViewConfiguration];
  v71 = *&v40[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_selectedBackgroundViewConfiguration + 8];
  *v69 = v58;
  *(v69 + 1) = v68;
  *(v69 + 2) = v61;
  *(v69 + 3) = v63;
  *(v69 + 4) = v65;
  *(v69 + 5) = v67;

  return v40;
}

void sub_45D4E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler);
    if (v2)
    {

      v3 = sub_45C560();
      v2(v1, v3);

      sub_17654(v2);
    }
  }
}

void sub_45D590()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_397F8();
  }
}

void sub_45D5E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView);

    v3 = [v2 layer];
    [v3 removeAllAnimations];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_397F8();
  }
}

void sub_45D6B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
    v2 = Strong;

    v3 = *(v1 + 112);

    v4 = [v3 contentMode];

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v5 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer);
      if (v7)
      {
        v8 = v7;

        v8[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_cropStyle] = sub_37B9F4(v4) & 1;
        v6 = v8;
      }
    }
  }
}

id sub_45D878(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for FeaturedMaterialCell();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_45D920(char a1, SEL *a2, SEL *a3)
{
  v7 = type metadata accessor for FeaturedMaterialCell();
  v12.receiver = v3;
  v12.super_class = v7;
  v8 = objc_msgSendSuper2(&v12, *a2);
  v11.receiver = v3;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, *a3, a1 & 1);
  result = [v3 *a2];
  if (v8 != result)
  {
    if ([v3 isHighlighted])
    {
      v10 = 0;
    }

    else
    {
      v10 = [v3 isSelected] ^ 1;
    }

    return [*&v3[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialHighlightOverlayView] setHidden:v10];
  }

  return result;
}

void sub_45DB0C()
{
  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_artworkAspectRatioDidChangeHandler));

  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler));
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialHighlightOverlayView);
}

id sub_45DBC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeaturedMaterialCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FeaturedMaterialCell()
{
  result = qword_E07FC8;
  if (!qword_E07FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_45DD94()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView);
  v2 = v1;
  return v1;
}

void *sub_45DDC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer);
  v2 = v1;
  return v1;
}

id sub_45DE50()
{
  sub_45CBB4();
  v1 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView;
  [*(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView) setAlpha:1.0];
  v2 = *(v0 + v1);

  return [v2 setHidden:0];
}

void sub_45DEB0()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_artworkAspectRatioDidChangeHandler);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_lockupVideoArtworkCatalog) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView;
  v5 = [objc_allocWithZone(UIView) init];
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:v6];

  *(v0 + v4) = v5;
  v7 = (v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHorizontalInsets);
  *v8 = xmmword_AFB130;
  v8[1] = xmmword_B0B770;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell____lazy_storage___playButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_hasAppliedMaterialTexture) = 0;
  v9 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialHighlightOverlayView;
  v10 = [objc_allocWithZone(UIView) init];
  if (qword_DE6C60 != -1)
  {
    swift_once();
  }

  [v10 setBackgroundColor:qword_E718A0];
  [v10 setHidden:1];
  *(v0 + v9) = v10;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_alwaysUseCompactLayout) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_45E0AC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_45E104()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_146(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_45E174()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView;
  [*(v1 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView) setBackgroundColor:0];
  v3 = *(v1 + v2);

  return [v3 setHidden:1];
}

void sub_45E210()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for JSLiveRadioCaseViewController();
  objc_msgSendSuper2(&v15, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;

  type metadata accessor for CGSize(0);
  v8 = &v1[qword_E08008];
  v14 = *&v1[qword_E08008];
  if ((sub_AB38D0() & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = *v8;
  if (*v8 != v5)
  {
    sub_464F8C();
  }

  *v8 = v5;
  *(v8 + 1) = v7;
  [v1 loadViewIfNeeded];
  v10 = *&v1[qword_DFE2F8];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = [v10 collectionViewLayout];
  v12 = &v1[qword_E08000];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  [swift_getObjCClassFromObject() invalidationContextClass];
  swift_getObjCClassMetadata();
  sub_13C80(0, &unk_DFED50);
  swift_dynamicCastMetatypeUnconditional();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v11 invalidateLayoutWithContext:v13];

LABEL_7:
  if (*&v1[qword_E71970])
  {

    sub_38AC10();
  }
}

void sub_45E3EC(void *a1)
{
  v1 = a1;
  sub_45E210();
}

id sub_45E434()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for JSLiveRadioCaseViewController();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  result = [v0 loadViewIfNeeded];
  v3 = *&v0[qword_DFE2F8];
  if (v3)
  {
    v4 = *&v0[qword_DFE2F0];
    type metadata accessor for CollectionViewArtworkVideoPlaybackController(0);
    swift_allocObject();
    v5 = v4;
    v6 = sub_389BA0(v3, v4);
    *(v6 + 224) = sub_464B90();
    v7 = sub_4645CC();
    v8 = *(v6 + 56);
    *(v7 + 80) = v8;
    swift_retain_n();
    if (v8 == 1)
    {
      *(v7 + 144) = 1;
    }

    swift_retain_n();

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = *(v6 + 40);
    *(v6 + 40) = sub_4667FC;
    *(v6 + 48) = v9;

    sub_17654(v10);

    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = *(v6 + 80);
    *(v6 + 80) = sub_466804;
    *(v6 + 88) = v11;
    sub_17654(v12);

    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = *(v6 + 96);
    *(v6 + 96) = sub_46680C;
    *(v6 + 104) = v13;
    sub_17654(v14);

    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = *(v6 + 112);
    *(v6 + 112) = sub_466814;
    *(v6 + 120) = v15;
    sub_17654(v16);

    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = *(v6 + 64);
    *(v6 + 64) = sub_46681C;
    *(v6 + 72) = v17;
    sub_17654(v18);

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = *(v6 + 128);
    *(v6 + 128) = sub_466824;
    *(v6 + 136) = v19;
    sub_17654(v20);

    *&v1[qword_E71970] = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E087F0);
    swift_allocObject();
    v21 = ArtworkVideoReportingController.init()();
    (*(*v21 + 136))(*(v6 + 56));
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(*v21 + 160))(sub_46682C, v22);

    *&v1[qword_E07FF8] = v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_45E7D8(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[qword_E07FF8];
    if (v4)
    {

      (*(*v4 + 136))(a1 & 1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_4645CC();

    *(v7 + 80) = a1 & 1;
    if (a1)
    {
      *(v7 + 144) = 1;
    }
  }

  return result;
}

void sub_45E8D0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *&Strong[qword_E07FF8];
    if (v6)
    {

      (*(*v6 + 192))(a1, a2 & 1);
    }

    else
    {
    }
  }
}

uint64_t sub_45E988(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[qword_E07FF8];
    if (v4)
    {

      (*(*v4 + 216))(a1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_4645CC();

    sub_4A3B04(a1);
  }

  return result;
}

void sub_45EA78(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[qword_E07FF8];
    if (v4)
    {

      (*(*v4 + 224))(a1);
    }

    else
    {
    }
  }
}

void sub_45EB24(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[qword_E07FF8];
    if (v4)
    {

      (*(*v4 + 200))(a1);
    }

    else
    {
    }
  }
}

void sub_45EBD0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[qword_E07FF8];
    if (v4)
    {

      (*(*v4 + 208))(a1);
    }

    else
    {
    }
  }
}

void sub_45EC7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[qword_DFE2F0];
    if (v2)
    {
      v3 = v2;

      v4 = [v3 results];
      if (v4)
      {
        isa = sub_AB3770().super.isa;
        v6 = [v4 itemAtIndexPath:isa];

        if (v6)
        {
          objc_opt_self();
          v7 = swift_dynamicCastObjCClass();
          if (v7 && (v8 = v7, swift_unknownObjectRetain(), v9 = [v8 contentItem], swift_unknownObjectRelease(), v9))
          {
            v10 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
            MPModelObject.bestIdentifier(for:)(*v10, 1u);

            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_45EDE8(void *a1)
{
  v1 = a1;
  sub_45E434();
}

id sub_45EE30()
{
  swift_beginAccess();

  v0 = sub_AB9260();

  return v0;
}

Class sub_45EEC0()
{
  v0 = JSViewModel.playActivityRecommendationData.getter();
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0;
    v4 = v1;
    isa = sub_AB3250().super.isa;
    sub_466A4(v3, v4);
    v2 = isa;
  }

  return v2;
}

void sub_45EF44(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_465D50(v14, v12);

  (*(v10 + 8))(v12, v9);
}

void sub_45F064(void *a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSLiveRadioCaseViewController();
  v48.receiver = v1;
  v48.super_class = v8;
  objc_msgSendSuper2(&v48, "traitCollectionDidChange:", a1);
  v9 = [v1 isViewLoaded];
  v42 = v1;
  v44 = v4;
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [v1 traitCollection];
  v11 = [v10 horizontalSizeClass];

  if (!a1 || v11 != [a1 horizontalSizeClass])
  {
    goto LABEL_8;
  }

  v12 = [v2 traitCollection];
  v13 = [v12 preferredContentSizeCategory];

  v14 = [a1 preferredContentSizeCategory];
  v15 = sub_AB92A0();
  v17 = v16;
  if (v15 == sub_AB92A0() && v17 == v18)
  {

    v2 = v42;
    v4 = v44;
    goto LABEL_9;
  }

  v19 = sub_ABB3C0();

  v2 = v42;
  v4 = v44;
  if ((v19 & 1) == 0)
  {
LABEL_8:
    sub_464F8C();
  }

LABEL_9:
  v20 = [v2 traitCollection];
  v21 = UITraitCollection.isMediaPicker.getter();

  v22 = v2;
  if (a1 && UITraitCollection.isMediaPicker.getter() == v21)
  {
    return;
  }

  [v2 loadViewIfNeeded];
  v47 = qword_DFE2F8;
  v23 = *&v2[qword_DFE2F8];
  if (!v23)
  {
    goto LABEL_33;
  }

  v24 = v23;
  v25 = [v24 indexPathsForVisibleItems];
  v26 = sub_AB9760();

  v46 = *(v26 + 16);
  if (!v46)
  {
LABEL_28:

    return;
  }

  v27 = 0;
  v43 = qword_DFE2F0;
  v45 = v5 + 16;
  v28 = (v5 + 8);
  while (v27 < *(v26 + 16))
  {
    (*(v5 + 16))(v7, v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, v4);
    [v22 loadViewIfNeeded];
    v29 = *&v22[v47];
    if (!v29)
    {
      goto LABEL_31;
    }

    v30 = v29;
    isa = sub_AB3770().super.isa;
    v32 = [v30 cellForItemAtIndexPath:isa];

    if (!v32)
    {
      goto LABEL_15;
    }

    type metadata accessor for LiveRadioCell();
    v33 = swift_dynamicCastClass();
    if (!v33)
    {

LABEL_15:
      (*v28)(v7, v4);
      goto LABEL_16;
    }

    v34 = v33;
    v35 = *&v22[v43];
    if (!v35)
    {
      goto LABEL_27;
    }

    v36 = [v35 results];
    if (!v36)
    {
      goto LABEL_32;
    }

    v37 = v36;
    v38 = sub_AB3770().super.isa;
    v39 = [v37 itemAtIndexPath:v38];

    v22 = v42;
    if (!v39)
    {
      goto LABEL_27;
    }

    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (!v40)
    {
      swift_unknownObjectRelease();
LABEL_27:
      v4 = v44;
      (*v28)(v7, v44);

      goto LABEL_16;
    }

    sub_45F6CC(v34, v40, v7);
    v41 = v44;
    (*v28)(v7, v44);

    v4 = v41;
    swift_unknownObjectRelease();
LABEL_16:
    if (v46 == ++v27)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_45F544(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_45F064(a3);
}

void sub_45F5B0(void *a1)
{
  sub_3B316C(a1);
  [a1 setShowsHorizontalScrollIndicator:0];
  [a1 setShowsVerticalScrollIndicator:0];
  type metadata accessor for LiveRadioCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for FeaturedMaterialCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  v3 = sub_AB9260();

  [a1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v3];

  sub_13C80(0, &qword_DFE230);
  v4 = swift_getObjCClassFromMetadata();
  v5 = sub_AB9260();
  [a1 registerClass:v4 forCellWithReuseIdentifier:v5];
}

void sub_45F6CC(char *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CollectionViewCellArtworkComponentLoggingContext(0);
  __chkstk_darwin(v8);
  v10 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v142 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v125 - v15;
  v144 = a2;
  v17 = [a2 contentItem];
  if (!v17)
  {
    return;
  }

  v141 = v16;
  v143 = v17;
  v18 = MPModelStoreBrowseContentItem.kind.getter();
  v20 = v18;
  if (v19 == 5)
  {
    v140 = v12;
    v137 = v11;
    v130 = v8;
    v22 = *&v4[qword_E07FF0];
    v23 = OBJC_IVAR____TtC11MusicJSCore15JSLiveRadioCase_usesFlowLayout;
    swift_beginAccess();
    a1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_alwaysUseCompactLayout] = *(v22 + v23);
    v24 = v20;
    sub_152CCC();
    v25 = sub_AB37E0();
    v26 = v25 < sub_464988();
    a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isHeaderRowCell] = v26;
    v27 = [v144 headerTitleText];
    if (v27)
    {
      v28 = v27;
      v29 = sub_AB92A0();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0xE000000000000000;
    }

    v32 = &a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTitle];
    v33 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTitle];
    v34 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTitle + 8];
    *v32 = v29;
    v32[1] = v31;
    sub_151A2C(v33, v34);

    v35 = [v144 headerSubtitleText];
    if (v35)
    {
      v36 = v35;
      v37 = sub_AB92A0();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0xE000000000000000;
    }

    v40 = &a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerSubtitle];
    v41 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerSubtitle];
    v42 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerSubtitle + 8];
    *v40 = v37;
    v40[1] = v39;
    sub_151B0C(v41, v42);

    v43 = [v144 headlineText];
    if (v43)
    {
      v44 = v43;
      v45 = sub_AB92A0();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0xE000000000000000;
    }

    v48 = &a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headline];
    v49 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headline];
    v50 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headline + 8];
    *v48 = v45;
    v48[1] = v47;
    sub_151BF0(v49, v50);

    v51 = [v144 titleText];
    if (v51 || (v51 = [v24 name]) != 0)
    {
      v52 = v51;
      v53 = sub_AB92A0();
      v55 = v54;
    }

    else
    {
      v53 = 0;
      v55 = 0xE000000000000000;
    }

    v56 = &a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_title];
    v57 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_title];
    v58 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_title + 8];
    *v56 = v53;
    v56[1] = v55;
    sub_151CE4(v57, v58);

    v59 = [v144 subtitleText];
    if (v59 || (v59 = [v24 shortEditorNotes]) != 0)
    {
      v60 = v59;
      v61 = sub_AB92A0();
      v63 = v62;
    }

    else
    {
      v61 = 0;
      v63 = 0xE000000000000000;
    }

    v64 = &a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_subtitle];
    v65 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_subtitle];
    v66 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_subtitle + 8];
    *v64 = v61;
    v64[1] = v63;
    sub_151DDC(v65, v66);

    v67 = [v144 accessoryButtonTitleText];
    v133 = v24;
    if (v67)
    {
      v68 = v67;
      v69 = sub_AB92A0();
      v71 = v70;
    }

    else
    {
      v69 = 0;
      v71 = 0xE000000000000000;
    }

    v72 = &a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonTitle];
    v73 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonTitle];
    v74 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonTitle + 8];
    *v72 = v69;
    v72[1] = v71;
    v139 = a1;
    v131 = v10;
    v134 = v20;
    v136 = v13;
    if (v73 == v69 && v74 == v71 || (sub_ABB3C0() & 1) != 0)
    {
    }

    else
    {
      v75 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButton];

      v76 = sub_AB9260();

      [v75 setTitle:v76 forState:0];

      v77 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryCalendarButton];

      v78 = sub_AB9260();

      [v77 setAccessibilityLabel:v78];

      v79 = [a1 traitCollection];
      sub_151ED4(v79);
    }

    v80 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v82 = v140;
    v81 = v141;
    v83 = v140 + 16;
    v84 = v137;
    v132 = *(v140 + 16);
    v132(v141, a3, v137);
    v135 = a3;
    v85 = *(v82 + 80);
    v127 = ~v85;
    v86 = (v85 + 24) & ~v85;
    v125 = v86 + v136;
    v87 = swift_allocObject();
    *(v87 + 16) = v80;
    v88 = *(v82 + 32);
    v126 = v86;
    v88(v87 + v86, v81, v84);
    v89 = &v139[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonHandler];
    v90 = *&v139[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonHandler];
    *v89 = sub_466114;
    v89[1] = v87;

    sub_17654(v90);

    v91 = [v4 traitCollection];
    LOBYTE(v90) = UITraitCollection.isMediaPicker.getter();

    v138 = v4;
    v140 = v82 + 32;
    v129 = v83;
    v128 = v88;
    if (v90)
    {
      v92 = v139;
      v93 = &v139[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler];
      v94 = *&v139[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler];
      *v93 = 0;
      *(v93 + 1) = 0;
      if (!v94)
      {
        goto LABEL_37;
      }

      [v92 setNeedsLayout];
    }

    else
    {
      v95 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v96 = v142;
      v132(v142, v135, v84);
      v97 = (v125 + 7) & 0xFFFFFFFFFFFFFFF8;
      v98 = swift_allocObject();
      *(v98 + 16) = v95;
      v88(v98 + v126, v96, v84);
      *(v98 + v97) = v133;
      v99 = v144;
      *(v98 + ((v97 + 15) & 0xFFFFFFFFFFFFFFF8)) = v144;
      v100 = v139;
      v101 = &v139[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler];
      v94 = *&v139[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler];
      *v101 = sub_466288;
      v101[1] = v98;
      sub_37C074(v134, 5);
      v102 = v99;
      v92 = v100;
      if (!v94)
      {
        [v100 setNeedsLayout];
LABEL_37:
        v103 = *&v92[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
        v104 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v105 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v106 = v141;
        v107 = v135;
        v108 = v137;
        v109 = v132;
        v132(v141, v135, v137);
        v110 = (v85 + 32) & v127;
        v111 = v107;
        v112 = swift_allocObject();
        *(v112 + 16) = v104;
        *(v112 + 24) = v105;
        v128(v112 + v110, v106, v108);
        v113 = (v103 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
        v114 = *(v103 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
        *v113 = sub_466410;
        v113[1] = v112;

        sub_17654(v114);

        v115 = v131;
        v109(v131, v111, v108);
        v116 = v139;
        v117 = v130;
        swift_unknownObjectWeakInit();
        v145[3] = v117;
        v145[4] = sub_466474(&unk_E087E0, type metadata accessor for CollectionViewCellArtworkComponentLoggingContext);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v145);
        sub_4666C8(v115, boxed_opaque_existential_0, type metadata accessor for CollectionViewCellArtworkComponentLoggingContext);
        v119 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_loggingContext;
        swift_beginAccess();
        sub_160B4(v145, v103 + v119, &unk_E03770);
        swift_endAccess();
        v120 = v138;
        v121 = sub_4A3F1C();
        v122 = v133;
        v123 = v134;
        v124 = sub_10AC20(v134);
        sub_3EB30(v123, 5);

        sub_1523E8([v122 shouldVisuallyDisableFor:v124]);
        sub_1522F0(v120[qword_E07FE0]);
        if (*&v120[qword_E71970])
        {

          sub_389E3C(v111, v116);
          sub_3EB30(v123, 5);
          sub_3EB30(v123, 5);
          sub_4664BC(v115, type metadata accessor for CollectionViewCellArtworkComponentLoggingContext);
        }

        else
        {
          sub_4664BC(v115, type metadata accessor for CollectionViewCellArtworkComponentLoggingContext);
          sub_3EB30(v123, 5);
          sub_3EB30(v123, 5);
        }

        return;
      }
    }

    sub_17654(v94);
    goto LABEL_37;
  }

  if (v19 != 255)
  {
    sub_3EB30(v18, v19);
  }

  v21 = v143;
}

void sub_460288(char *a1)
{
  v2 = sub_AB3430();
  v78 = *(v2 - 8);
  v79 = v2;
  __chkstk_darwin(v2);
  v77 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  v80 = v4;
  v81 = v5;
  __chkstk_darwin(v4);
  v76 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v7);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v70 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v70 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v19 - 8);
  v21 = &v70 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v23 = Strong;
  v75 = v21;
  v24 = *(Strong + qword_DFE2F0);
  if (!v24 || (type metadata accessor for JSLiveRadioCaseModelResponse(), (v25 = swift_dynamicCastClass()) == 0))
  {

    return;
  }

  v74 = v7;
  v26 = *(v25 + OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_jsResults);
  v27 = v24;
  isa = sub_AB3770().super.isa;
  v29 = [v26 itemAtIndexPath:isa];

  type metadata accessor for JSLiveRadioCaseItem();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {

    swift_unknownObjectRelease();
    return;
  }

  v72 = v30;
  v70 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v31 = *(*&a1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + 112);
  v32 = v23;
  [v31 frame];
  v96[0] = a1;
  v96[1] = v33;
  v96[2] = v34;
  v96[3] = v35;
  v96[4] = v36;
  v97 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v96, 15, v88);
  v92[0] = v88[0];
  v92[1] = v88[1];
  v93 = v89;
  v94 = v90;
  v95 = v91;
  v37 = a1;
  v71 = v32;
  PresentationSource.init(viewController:position:)(v32, v92, v87);
  v38 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v85, 0, sizeof(v85));
  v86 = 0;
  (*(*(v38 - 8) + 56))(v75, 1, 1, v38);
  sub_15F84(v85, &v82, &unk_DE8E30);
  if (*(&v83 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v39 = _s30CollectionViewSelectionHandlerVMa();
    v40 = swift_dynamicCast();
    v41 = *(v39 - 8);
    (*(v41 + 56))(v12, v40 ^ 1u, 1, v39);
    v42 = (*(v41 + 48))(v12, 1, v39);
    v43 = v80;
    if (v42 != 1)
    {
      v44 = *(v39 + 20);
      v45 = v81;
      v81[2](v18, &v12[v44], v80);
      sub_4664BC(v12, _s30CollectionViewSelectionHandlerVMa);
      v46 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    sub_12E1C(&v82, &unk_DE8E30);
    v47 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v47 - 8) + 56))(v12, 1, 1, v47);
    v43 = v80;
  }

  sub_12E1C(v12, &qword_E037A0);
  v46 = 1;
  v45 = v81;
LABEL_12:
  (v45[7])(v18, v46, 1, v43);
  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48 && (v49 = v48, sub_12B2FC(), v51 = v50, v53 = v52, v49, v51))
  {
    ObjectType = swift_getObjectType();
    (*(v53 + 8))(ObjectType, v53);
    v56 = v55;
    swift_unknownObjectRelease();
    sub_15F84(v18, v16, &unk_DE8E20);
    v57 = v81;
    if ((v81[6])(v16, 1, v43) == 1)
    {
      sub_12E1C(v16, &unk_DE8E20);
      v82 = 0u;
      v83 = 0u;
      v84 = 0;
    }

    else
    {
      v57[4](v76, v16, v43);
      sub_466474(&qword_DFAA90, &type metadata accessor for IndexPath);
      sub_ABAD10();
    }

    v59 = swift_getObjectType();
    v60 = v77;
    sub_3B8F68();
    v58 = sub_21CCAC(1, v60, &v82, v59, v56);
    (*(v78 + 8))(v60, v79);
    sub_12E1C(&v82, &qword_DF2BD0);
    sub_12E1C(v18, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v18, &unk_DE8E20);
    v58 = 0;
  }

  v81 = v29;
  v61 = swift_unknownObjectWeakLoadStrong();
  v73 = v27;
  if (v61)
  {
    v62 = v61;
    sub_12AFE8();
    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  sub_15F28(v87, &v82);
  sub_15F84(v85, (v9 + 104), &unk_DE8E30);
  v66 = v74;
  v65 = v75;
  sub_15F84(v75, &v9[*(v74 + 28)], &unk_DEA510);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 8) = 1;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
  *(v9 + 11) = 0;
  sub_160B4(&v82, v9, &unk_DEA520);
  *(v9 + 12) = 0;
  v67 = *v70;
  *(&v83 + 1) = v66;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v82);
  sub_4666C8(v9, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
  v69 = v67;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v72, 1, v58, v64, &v82);

  sub_12E1C(v65, &unk_DEA510);
  sub_12E1C(v85, &unk_DE8E30);
  sub_1611C(v87);
  sub_4664BC(v9, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v82, &unk_DE8E40);

  swift_unknownObjectRelease();
}

void sub_460BF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v58 = a4;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + qword_DFE2F0);
    if (v14 && (type metadata accessor for JSLiveRadioCaseModelResponse(), (v15 = swift_dynamicCastClass()) != 0))
    {
      v52 = a6;
      v53 = a2;
      v55 = v9;
      v54 = v15;
      v16 = *&v15[OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_jsResults];
      v17 = v13;
      v18 = v14;
      isa = sub_AB3770().super.isa;
      v20 = [v16 itemAtIndexPath:isa];

      type metadata accessor for JSLiveRadioCaseItem();
      v57 = v20;
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v22 = v17;
        v56 = v21;
        v51 = v18;
        v23 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
        v24 = MPModelObject.bestIdentifier(for:)(*v23, 1u);
        if (v25)
        {
          v49 = v24;
          v50 = v25;
          v26 = [v52 innermostModelObject];
          v48 = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
          v47 = swift_allocBox();
          v28 = v27;
          v29 = v22;
          v52 = v26;
          sub_2641C4(v26, v13, static MPMediaLibraryFilteringOptions.none.getter, 0, v28);
          v30 = v53;
          [v53 bounds];
          v68[0] = v30;
          v68[1] = v31;
          v68[2] = v32;
          v68[3] = v33;
          v68[4] = v34;
          v69 = 0;
          PresentationSource.Position.init(source:permittedArrowDirections:)(v68, 15, v60);
          v64[0] = v60[0];
          v64[1] = v60[1];
          v65 = v61;
          v66 = v62;
          v67 = v63;
          v35 = v30;
          PresentationSource.init(viewController:position:)(v29, v64, v59);
          v53 = sub_4A3F1C();

          v46 = v29;
          v36 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v37 = v55;
          (*(v55 + 16))(&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v58, v8);
          v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
          v39 = (v10 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
          v40 = swift_allocObject();
          *(v40 + 16) = v47;
          *(v40 + 24) = v36;
          (*(v37 + 32))(v40 + v38, v11, v8);
          v41 = (v40 + v39);
          v42 = v50;
          *v41 = v49;
          v41[1] = v42;
          *(v40 + ((v39 + 23) & 0xFFFFFFFFFFFFFFF8)) = v56;
          v43 = v51;

          swift_unknownObjectRetain();
          v44 = v53;
          sub_1109D4(v48, v54, 0, 1, v59, sub_466618, v40);

          v45 = v52;
          swift_unknownObjectRelease();
          sub_1611C(v59);
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_461048(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v94 = a7;
  v93 = a6;
  v92 = a5;
  v90 = a4;
  v7 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  __chkstk_darwin(v8 - 8);
  v96 = &v88 - v9;
  v95 = type metadata accessor for MetricsPageProperties();
  v99 = *(v95 - 8);
  __chkstk_darwin(v95);
  v98 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  v12 = __chkstk_darwin(v11 - 8);
  v89 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v88 - v15;
  __chkstk_darwin(v14);
  v97 = &v88 - v17;
  v18 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v18 - 8);
  v91 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_AB3820();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PlaybackIntentDescriptor(0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_projectBox();
  if (v7 == 1)
  {
    v29 = v28;
    swift_beginAccess();
    if (!(*(v25 + 48))(v29, 1, v24))
    {
      sub_4666C8(v29, v27, type metadata accessor for PlaybackIntentDescriptor);
      sub_37D3DC(0);
      sub_4664BC(v27, type metadata accessor for PlaybackIntentDescriptor);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = Strong;
      sub_12B2FC();
      v33 = v32;
      v35 = v34;

      if (v33)
      {
        ObjectType = swift_getObjectType();
        (*(v35 + 8))(ObjectType, v35);
        v38 = v37;
        swift_unknownObjectRelease();
        v39 = swift_getObjectType();
        (*(v21 + 16))(v23, v90, v20);
        sub_466474(&qword_DFAA90, &type metadata accessor for IndexPath);
        sub_ABAD10();
        v40 = (*(v38 + 128))(v100, v39, v38);
        v42 = v41;
        sub_8085C(v100);
        swift_unknownObjectRelease();
      }

      else
      {
        v42 = 0;
        v40 = 1;
      }

      v44 = v97;
      v43 = v98;
      v45 = v94;
      v46 = v95;
      v47 = v99;
      v48 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
      swift_beginAccess();
      v49 = *(v45 + v48);
      if (v49)
      {
        v50 = v49;
        v51 = [v50 URL];
        if (v51)
        {
          v52 = v51;
          sub_AB3150();

          v53 = 0;
        }

        else
        {
          v53 = 1;
        }

        v55 = sub_AB31C0();
        (*(*(v55 - 8) + 56))(v16, v53, 1, v55);
        sub_F78B4(v16, v44);
      }

      else
      {
        v54 = sub_AB31C0();
        (*(*(v54 - 8) + 56))(v44, 1, 1, v54);
      }

      v56 = v96;
      if (v40 == 1)
      {
        v57 = 0;
      }

      else
      {

        v57 = v40;
      }

      v58 = qword_E71968;
      swift_beginAccess();
      sub_15F84(v31 + v58, v56, &unk_DF1330);
      v61 = v47[6];
      v60 = v47 + 6;
      v59 = v61;
      if (v61(v56, 1, v46) == 1)
      {
        v62 = sub_AB31C0();
        v63 = *(*(v62 - 8) + 56);
        v99 = v60;
        v64 = v40;
        v65 = v42;
        v66 = v31;
        v67 = v46;
        v68 = v44;
        v69 = v57;
        v70 = v89;
        v63(v89, 1, 1, v62);
        v71 = v70;
        v57 = v69;
        v44 = v68;
        MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(0, 0xE000000000000000, 0, 0xE000000000000000, v71, 0, 0, 0, v43);
        v72 = v67;
        v31 = v66;
        v42 = v65;
        if (v59(v56, 1, v72) != 1)
        {
          sub_12E1C(v56, &unk_DF1330);
        }

        if (v64 == 1)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_465FE8(v56, v43, type metadata accessor for MetricsPageProperties);
        if (v40 == 1)
        {
          goto LABEL_33;
        }
      }

      if (v42)
      {
        if (v42 >> 62)
        {
          v73 = sub_ABB060();
          if (v73)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v73 = *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8));
          if (v73)
          {
LABEL_26:
            v101 = _swiftEmptyArrayStorage;
            sub_6D410(0, v73 & ~(v73 >> 63), 0);
            if (v73 < 0)
            {
              __break(1u);
              return;
            }

            v99 = v31;
            v74 = v101;
            if ((v42 & 0xC000000000000001) != 0)
            {
              for (i = 0; i != v73; ++i)
              {
                v76 = *(sub_35FC58(i, v42) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

                swift_unknownObjectRelease();
                v101 = v74;
                v78 = v74[2];
                v77 = v74[3];
                if (v78 >= v77 >> 1)
                {
                  sub_6D410((v77 > 1), v78 + 1, 1);
                  v74 = v101;
                }

                v74[2] = v78 + 1;
                v74[v78 + 4] = v76;
              }
            }

            else
            {
              v79 = (v42 + 32);
              do
              {
                v80 = *(*v79 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
                v101 = v74;
                v82 = v74[2];
                v81 = v74[3];

                if (v82 >= v81 >> 1)
                {
                  sub_6D410((v81 > 1), v82 + 1, 1);
                  v74 = v101;
                }

                v74[2] = v82 + 1;
                v74[v82 + 4] = v80;
                ++v79;
                --v73;
              }

              while (v73);
            }

            v44 = v97;
            v43 = v98;
            v31 = v99;
            goto LABEL_41;
          }
        }

        v74 = _swiftEmptyArrayStorage;
        goto LABEL_41;
      }

LABEL_33:
      v74 = 0;
LABEL_41:
      v83 = v93;

      v84 = v91;
      MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v92, v83, 5, 31, v44, v57, 0, 12, v91, 0, 0, 0xFF00u, v43, v74);
      v85 = MetricsReportingController.shared.unsafeMutableAddressor();
      v86 = *&stru_B8.sectname[swift_isaMask & **v85];
      v87 = *v85;
      v86(v84, 0, 0, 0, 0, 0);

      sub_4664BC(v84, type metadata accessor for MetricsEvent.Click);
    }
  }
}

void sub_461A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = *&v6[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_imageDidChangeHandler];
      v9 = v6;
      if (v8)
      {
        v10 = sub_307CC(v8);
        v8(v10);
        sub_17654(v8);
      }

      v11 = *&v7[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];

      v12 = *(v11 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 48);
      if (v12 != 255 && (v12 & 1) == 0)
      {

        v13 = *&v5[qword_E07FF8];
        if (!v13)
        {

          goto LABEL_11;
        }

        v14 = *(*v13 + 184);

        v14(a3);
      }
    }

    else
    {
      v7 = v5;
    }

LABEL_11:
  }
}

void sub_461B78(uint64_t a1, void *a2, uint64_t a3)
{
  sub_4651A0(a1);
  v6 = [a2 contentItem];
  if (!v6)
  {
    return;
  }

  v12 = v6;
  v7 = MPModelStoreBrowseContentItem.kind.getter();
  if (v8 != 5)
  {
    if (v8 == 255)
    {
LABEL_12:

      return;
    }

LABEL_11:
    sub_3EB30(v7, v8);
    goto LABEL_12;
  }

  v9 = *(v3 + qword_E07FF8);
  if (!v9)
  {
    v8 = 5;
    goto LABEL_11;
  }

  v10 = *(*v9 + 176);
  v11 = v7;

  v10(a3);
  sub_3EB30(v11, 5);
}

double sub_461CB8()
{
  v1 = [v0 traitCollection];
  v2 = &v0[qword_E08000];
  if (v0[qword_E08000 + 16])
  {
    sub_464C60();
    v4 = v3;
    v5 = [v0 traitCollection];
    v6 = *&v0[qword_E07FF0];
    v7 = OBJC_IVAR____TtC11MusicJSCore15JSLiveRadioCase_usesFlowLayout;
    swift_beginAccess();
    v8 = sub_155278(v5, *(v6 + v7));

    *v2 = v4;
    v2[1] = v8;
    *(v2 + 16) = 0;
  }

  else
  {
    v4 = *v2;
  }

  left = UIEdgeInsetsZero.left;
  right = UIEdgeInsetsZero.right;
  v11 = *&v0[qword_E71970];
  if (!v11 || (*(v11 + 56) & 1) == 0)
  {
    [v1 horizontalSizeClass];
  }

  [v1 displayScale];
  sub_AB3A00();

  return v4 - right - left;
}

void sub_461E2C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v204 = a3;
  v205 = a2;
  v206 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  __chkstk_darwin(v5 - 8);
  v200 = &v174 - v6;
  v7 = type metadata accessor for MetricsPageProperties();
  v198 = *(v7 - 8);
  v199 = v7;
  __chkstk_darwin(v7);
  v201 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  v10 = __chkstk_darwin(v9 - 8);
  v191 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v197 = &v174 - v13;
  __chkstk_darwin(v12);
  v203 = &v174 - v14;
  v15 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_AB3430();
  v189 = *(v18 - 8);
  v190 = v18;
  __chkstk_darwin(v18);
  v188 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_AB3820();
  v193 = *(v202 - 8);
  __chkstk_darwin(v202);
  v192 = &v174 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v195);
  v196 = &v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v22 - 8);
  v24 = &v174 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v26 = __chkstk_darwin(v25 - 8);
  v187 = &v174 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v194 = &v174 - v28;
  v29 = type metadata accessor for PlaybackIntentDescriptor(0);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v174 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  v34 = __chkstk_darwin(v33 - 8);
  v36 = &v174 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v174 - v37;
  v39 = *&v3[qword_DFE2F0];
  if (v39)
  {
    type metadata accessor for JSLiveRadioCaseModelResponse();
    v40 = swift_dynamicCastClass();
    if (v40)
    {
      v183 = v17;
      v186 = v38;
      v41 = *(v40 + OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_jsResults);
      v42 = v39;
      isa = sub_AB3770().super.isa;
      v44 = [v41 itemAtIndexPath:isa];

      type metadata accessor for JSLiveRadioCaseItem();
      v45 = swift_dynamicCastClass();
      if (!v45)
      {

        goto LABEL_12;
      }

      v46 = v45;
      v184 = v42;
      v185 = v44;
      swift_unknownObjectRetain();
      v47 = v46;
      v48 = [v206 contentItem];
      v49 = [v48 innerObject];

      v182 = v47;
      sub_2641C4(v49, v4, static MPMediaLibraryFilteringOptions.none.getter, 0, v186);

      v50 = [v4 traitCollection];
      v51 = UITraitCollection.mediaPickerConfiguration.getter();

      if (v51)
      {
        v52 = *&v4[qword_DFE298];
        if (v52)
        {

          v53 = [v51 selectionMode];
          v54 = [v206 pickableObjectFor:v53];
          if (v54)
          {
            v55 = v54;
            *&v181 = v52;
            v56 = [v54 musicTypeIdentifier];
            if (v56)
            {
              v57 = v56;
              swift_unknownObjectRelease();

              v58 = v186;
              sub_15F84(v186, v36, &unk_DEA510);
              if ((*(v30 + 48))(v36, 1, v29) == 1)
              {
                sub_12E1C(v58, &unk_DEA510);
                swift_unknownObjectRelease();
                sub_12E1C(v36, &unk_DEA510);

                return;
              }

              sub_465FE8(v36, v32, type metadata accessor for PlaybackIntentDescriptor);
              [v4 loadViewIfNeeded];
              v99 = *&v4[qword_DFE2F8];
              if (v99)
              {
                v100 = v99;
                v101 = sub_AB3770().super.isa;
                v102 = [v100 cellForItemAtIndexPath:v101];

                v103 = v184;
                if (v102)
                {
                  swift_getObjectType();
                  v104 = swift_conformsToProtocol2();
                  if (v104)
                  {
                    v105 = v104;
LABEL_77:
                    sub_3B8FA0(v32, v206, v102, v105);
                    swift_unknownObjectRelease();
                    sub_4664BC(v32, type metadata accessor for PlaybackIntentDescriptor);
                    sub_12E1C(v186, &unk_DEA510);

                    goto LABEL_12;
                  }

                  v102 = 0;
                }

                v105 = 0;
                goto LABEL_77;
              }

              goto LABEL_91;
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      v59 = [v206 contentItem];
      if (v59 && (v60 = v59, v61 = [v59 innerObject], v60, v61))
      {
        v62 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
        v63 = MPModelObject.bestIdentifier(for:)(*v62, 1u);
        if (v64)
        {
          v177 = v64;
          v178 = v63;
          v179 = v61;
          v65 = JSSegueCoordinator.shared.unsafeMutableAddressor();
          [v4 loadViewIfNeeded];
          v66 = qword_DFE2F8;
          v67 = *&v4[qword_DFE2F8];
          if (!v67)
          {
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
            return;
          }

          v68 = v67;
          v69 = sub_AB3770().super.isa;
          v70 = [v68 cellForItemAtIndexPath:v69];

          if (v70)
          {
            sub_D5958(v212);
            v180 = v212[1];
            v181 = v212[0];
            v71 = v213;
            v72 = v214;
            v73 = v215;

            v75 = v180;
            v74 = v181;
          }

          else
          {
            v71 = 0;
            v73 = 0;
            v74 = 0uLL;
            v72 = 255;
            v75 = 0uLL;
          }

          *&v180 = v65;
          v216[0] = v74;
          v216[1] = v75;
          v217 = v71;
          v218 = v72;
          v219 = v73;
          v76 = v4;
          *&v77 = PresentationSource.init(viewController:position:)(v76, v216, v211).n128_u64[0];
          *&v181 = v76;
          [v76 loadViewIfNeeded];
          if (!*&v4[v66])
          {
            goto LABEL_90;
          }

          v78 = _s30CollectionViewSelectionHandlerVMa();
          v210[3] = v78;
          v210[4] = &off_CF7E60;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v210);
          v80 = v193;
          v81 = v193 + 16;
          v82 = *(v193 + 16);
          v83 = v202;
          v82(boxed_opaque_existential_0 + *(v78 + 20), v204, v202);
          swift_unknownObjectWeakInit();
          sub_15F84(v210, &v207, &unk_DE8E30);
          v84 = v194;
          v176 = v81;
          if (*(&v208 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
            v85 = swift_dynamicCast();
            v86 = *(v78 - 8);
            (*(v86 + 56))(v24, v85 ^ 1u, 1, v78);
            if ((*(v86 + 48))(v24, 1, v78) != 1)
            {
              v82(v84, &v24[*(v78 + 20)], v83);
              sub_4664BC(v24, _s30CollectionViewSelectionHandlerVMa);
              v87 = 0;
LABEL_32:
              (*(v80 + 56))(v84, v87, 1, v83);
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong && (v89 = Strong, sub_12B2FC(), v91 = v90, v93 = v92, v89, v91))
              {
                ObjectType = swift_getObjectType();
                (*(v93 + 8))(ObjectType, v93);
                v96 = v95;
                swift_unknownObjectRelease();
                v97 = v187;
                sub_15F84(v84, v187, &unk_DE8E20);
                if ((*(v80 + 48))(v97, 1, v83) == 1)
                {
                  sub_12E1C(v97, &unk_DE8E20);
                  v207 = 0u;
                  v208 = 0u;
                  v209 = 0;
                }

                else
                {
                  (*(v80 + 32))(v192, v97, v83);
                  sub_466474(&qword_DFAA90, &type metadata accessor for IndexPath);
                  sub_ABAD10();
                }

                v107 = v189;
                v106 = v190;
                v108 = v188;
                v109 = swift_getObjectType();
                sub_3B8F68();
                v98 = sub_21CCAC(1, v108, &v207, v109, v96);
                (*(v107 + 8))(v108, v106);
                sub_12E1C(&v207, &qword_DF2BD0);
                sub_12E1C(v84, &unk_DE8E20);
                swift_unknownObjectRelease();
              }

              else
              {
                sub_12E1C(v84, &unk_DE8E20);
                v98 = 0;
              }

              v110 = swift_unknownObjectWeakLoadStrong();
              v175 = v82;
              if (v110)
              {
                v111 = v110;
                sub_12AFE8();
                v113 = v112;
              }

              else
              {
                v113 = 0;
              }

              sub_15F28(v211, &v207);
              v114 = v196;
              sub_15F84(v210, (v196 + 104), &unk_DE8E30);
              v115 = v195;
              sub_15F84(v186, v114 + *(v195 + 28), &unk_DEA510);
              *v114 = 0u;
              *(v114 + 16) = 0u;
              *(v114 + 32) = 0u;
              *(v114 + 48) = 0u;
              v116 = (&dword_0 + 1);
              *(v114 + 64) = 1;
              *(v114 + 72) = 0;
              *(v114 + 80) = 0;
              *(v114 + 88) = 0;
              sub_160B4(&v207, v114, &unk_DEA520);
              v117 = v206;
              *(v114 + 96) = v206;
              v118 = *v180;
              *(&v208 + 1) = v115;
              v119 = __swift_allocate_boxed_opaque_existential_0(&v207);
              sub_4666C8(v114, v119, _s23MusicPerformanceContextVMa);
              v120 = v117;
              v121 = v118;
              JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v182, 0, v98, v113, &v207);
              sub_1611C(v211);
              sub_4664BC(v114, _s23MusicPerformanceContextVMa);

              sub_12E1C(&v207, &unk_DE8E40);

              sub_12E1C(v210, &unk_DE8E30);
              sub_12B2FC();
              if (v123)
              {
                v124 = v122;
                v125 = swift_getObjectType();
                (*(v124 + 8))(v125, v124);
                v127 = v126;
                swift_unknownObjectRelease();
                v128 = swift_getObjectType();
                v175(v192, v205, v202);
                sub_466474(&qword_DFAA90, &type metadata accessor for IndexPath);
                sub_ABAD10();
                v116 = (*(v127 + 128))(v211, v128, v127);
                v130 = v129;
                sub_8085C(v211);
                swift_unknownObjectRelease();
              }

              else
              {
                v130 = 0;
              }

              v131 = v200;
              v132 = v201;
              v133 = v203;
              v134 = v199;
              v135 = v197;
              v136 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
              v137 = v182;
              swift_beginAccess();
              v138 = *&v137[v136];
              v139 = v138;
              swift_unknownObjectRelease();
              if (v138)
              {
                v140 = [v139 URL];
                if (v140)
                {
                  v141 = v140;
                  sub_AB3150();

                  v142 = 0;
                }

                else
                {
                  v142 = 1;
                }

                v144 = sub_AB31C0();
                (*(*(v144 - 8) + 56))(v135, v142, 1, v144);
                sub_F78B4(v135, v133);
              }

              else
              {
                v143 = sub_AB31C0();
                (*(*(v143 - 8) + 56))(v133, 1, 1, v143);
              }

              v145 = v186;
              if (v116 == &dword_0 + 1)
              {
                v206 = 0;
              }

              else
              {

                v206 = v116;
              }

              v146 = qword_E71968;
              v147 = v181;
              swift_beginAccess();
              sub_15F84(v147 + v146, v131, &unk_DF1330);
              v148 = *(v198 + 48);
              if (v148(v131, 1, v134) == 1)
              {
                v149 = sub_AB31C0();
                v150 = v191;
                (*(*(v149 - 8) + 56))(v191, 1, 1, v149);
                MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(0, 0xE000000000000000, 0, 0xE000000000000000, v150, 0, 0, 0, v132);
                v151 = v148(v131, 1, v134);
                v152 = v184;
                if (v151 != 1)
                {
                  sub_12E1C(v131, &unk_DF1330);
                }
              }

              else
              {
                sub_465FE8(v131, v132, type metadata accessor for MetricsPageProperties);
                v152 = v184;
              }

              if (v116 == &dword_0 + 1)
              {
                v153 = 0;
                v155 = v177;
                v154 = v178;
                v156 = v206;
                v157 = v203;
LABEL_86:
                v170 = v183;
                MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v154, v155, 7, 31, v157, v156, 0, 12, v183, 0x1CuLL, 0, 0, v132, v153);
                v171 = MetricsReportingController.shared.unsafeMutableAddressor();
                v172 = *&stru_B8.sectname[swift_isaMask & **v171];
                v173 = *v171;
                v172(v170, 0, 0, 0, 0, 0);
                swift_unknownObjectRelease();
                sub_4664BC(v170, type metadata accessor for MetricsEvent.Click);
                sub_12E1C(v145, &unk_DEA510);

                return;
              }

              v157 = v203;
              if (v130)
              {
                if (v130 >> 62)
                {
                  v167 = v203;
                  v168 = sub_ABB060();
                  v157 = v167;
                  v158 = v168;
                  if (v168)
                  {
                    goto LABEL_67;
                  }
                }

                else
                {
                  v158 = *(&dword_10 + (v130 & 0xFFFFFFFFFFFFFF8));
                  if (v158)
                  {
LABEL_67:
                    v210[0] = _swiftEmptyArrayStorage;
                    sub_6D410(0, v158 & ~(v158 >> 63), 0);
                    if ((v158 & 0x8000000000000000) == 0)
                    {
                      v153 = v210[0];
                      if ((v130 & 0xC000000000000001) != 0)
                      {
                        v159 = 0;
                        do
                        {
                          v160 = *(sub_35FC58(v159, v130) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

                          swift_unknownObjectRelease();
                          v210[0] = v153;
                          v162 = v153[2];
                          v161 = v153[3];
                          if (v162 >= v161 >> 1)
                          {
                            sub_6D410((v161 > 1), v162 + 1, 1);
                            v153 = v210[0];
                          }

                          ++v159;
                          v153[2] = v162 + 1;
                          v153[v162 + 4] = v160;
                        }

                        while (v158 != v159);
                      }

                      else
                      {
                        v163 = (v130 + 32);
                        do
                        {
                          v164 = *(*v163 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
                          v210[0] = v153;
                          v166 = v153[2];
                          v165 = v153[3];

                          if (v166 >= v165 >> 1)
                          {
                            sub_6D410((v165 > 1), v166 + 1, 1);
                            v153 = v210[0];
                          }

                          v153[2] = v166 + 1;
                          v153[v166 + 4] = v164;
                          ++v163;
                          --v158;
                        }

                        while (v158);
                      }

                      v152 = v184;
                      v145 = v186;
                      v132 = v201;
                      v157 = v203;
                      goto LABEL_85;
                    }

                    __break(1u);
                    goto LABEL_89;
                  }
                }

                v169 = v157;

                v157 = v169;
                v153 = _swiftEmptyArrayStorage;
              }

              else
              {
                v153 = 0;
              }

LABEL_85:
              v155 = v177;
              v154 = v178;
              v156 = v206;
              goto LABEL_86;
            }
          }

          else
          {
            sub_12E1C(&v207, &unk_DE8E30);
            (*(*(v78 - 8) + 56))(v24, 1, 1, v78);
          }

          sub_12E1C(v24, &qword_E037A0);
          v87 = 1;
          goto LABEL_32;
        }

        swift_unknownObjectRelease();
        sub_12E1C(v186, &unk_DEA510);
      }

      else
      {
        swift_unknownObjectRelease();
        sub_12E1C(v186, &unk_DEA510);
      }

LABEL_12:
      swift_unknownObjectRelease();
    }
  }
}

void sub_463420()
{
  v1 = *(v0 + qword_E07FF0);
  v2 = type metadata accessor for JSLiveRadioCaseModelRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC16MusicApplication27JSLiveRadioCaseModelRequest_liveRadioCaseViewModel] = v1;
  v48.receiver = v3;
  v48.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v48, "init");
  sub_13C80(0, &qword_DF9840);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v46 = v5;
  v8 = [v7 kindWithModelClass:ObjCClassFromMetadata];
  [v46 setItemKind:v8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_B00DB0;
  *(v9 + 32) = sub_AB92A0();
  *(v9 + 40) = v10;
  *(v9 + 48) = sub_AB92A0();
  *(v9 + 56) = v11;
  *(v9 + 64) = sub_AB92A0();
  *(v9 + 72) = v12;
  *(v9 + 80) = sub_AB92A0();
  *(v9 + 88) = v13;
  *(v9 + 96) = sub_AB92A0();
  *(v9 + 104) = v14;
  *(v9 + 112) = sub_AB92A0();
  *(v9 + 120) = v15;
  *(v9 + 128) = sub_AB92A0();
  *(v9 + 136) = v16;
  *(v9 + 144) = sub_AB92A0();
  *(v9 + 152) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_AF4EC0;
  *(v20 + 32) = sub_AB92A0();
  *(v20 + 40) = v21;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_AF4EC0;
  *(v22 + 32) = sub_AB92A0();
  *(v22 + 40) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_AF85F0;
  *(v24 + 32) = sub_AB92A0();
  *(v24 + 40) = v25;
  *(v24 + 48) = sub_AB92A0();
  *(v24 + 56) = v26;
  isa = sub_AB9740().super.isa;
  v28 = [objc_opt_self() propertySetWithProperties:isa];

  sub_13C80(0, &unk_E087D0);
  v29 = sub_10F414();
  v30 = [v28 propertySetByCombiningWithPropertySet:v29];

  v31 = swift_getObjCClassFromMetadata();
  v32 = [v31 requiredLibraryNavigationHandlerProperties];
  v33 = [v31 requiredStoreNavigationHandlerProperties];
  v34 = [v32 propertySetByCombiningWithPropertySet:v33];

  v35 = [v30 propertySetByCombiningWithPropertySet:v34];
  *(v22 + 48) = v35;
  sub_96EA4(v22);
  swift_setDeallocating();
  sub_12E1C(v22 + 32, &unk_DE8E80);
  v36 = objc_allocWithZone(MPPropertySet);
  v37 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v38 = sub_AB8FD0().super.isa;

  v39 = [v36 initWithProperties:v37 relationships:v38];

  *(inited + 48) = v39;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80);
  v40 = objc_allocWithZone(MPPropertySet);
  v41 = sub_AB9740().super.isa;

  v42 = sub_AB8FD0().super.isa;

  v43 = [v40 initWithProperties:v41 relationships:v42];

  [v46 setItemProperties:v43];
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_465F80;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_147;
  v45 = _Block_copy(aBlock);

  [v46 performWithResponseHandler:v45];
  _Block_release(v45);
}

void sub_463A50(void *a1)
{
  v2 = sub_AB7C10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB7C50();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_13C80(0, &qword_DE8ED0);
    v19 = sub_ABA150();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;
    aBlock[4] = sub_465FE0;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_91_0;
    v13 = _Block_copy(aBlock);
    v18 = v6;
    v14 = v13;
    v15 = a1;
    v17 = v11;

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_466474(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_36A00(&qword_DF06D0, &unk_DE9C30);
    sub_ABABB0();
    v16 = v19;
    sub_ABA160();

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v18);
    _Block_release(v14);
  }
}

uint64_t sub_463D7C(uint64_t a1, void *a2)
{
  v4 = a2;
  sub_3B4724(a2);
  v5 = *(a1 + qword_E71970);
  if (v5)
  {
    v6 = *(v5 + 216);
    *(v5 + 216) = a2;
    v7 = v4;
  }

  if (*(sub_4645CC() + 81) == 1)
  {
    v9 = sub_4A3ECC();
    if (*v8)
    {
      v10 = v8;

      *v10 = &_swiftEmptySetSingleton;
    }

    (v9)(&v12, 0);
  }

  else
  {
  }
}

void sub_463E64(void *a1)
{
  type metadata accessor for FeaturedMaterialCell();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return;
  }

  v4 = *(v1 + qword_DFE2F0);
  if (!v4)
  {
    return;
  }

  v5 = v3;
  v21 = a1;
  v6 = [v4 results];
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = v6;
  isa = sub_AB3770().super.isa;
  v9 = [v7 itemAtIndexPath:isa];

  if (!v9)
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_16:

    goto LABEL_17;
  }

  v11 = [v10 contentItem];
  if (!v11)
  {
LABEL_9:
    swift_unknownObjectRelease();
LABEL_10:

    return;
  }

  v12 = v11;
  v13 = MPModelStoreBrowseContentItem.kind.getter();
  v15 = v14;

  if (v15 != 5)
  {
    if (v15 == 255)
    {
      goto LABEL_9;
    }

    sub_3EB30(v13, v15);
    goto LABEL_16;
  }

  v16 = sub_4A3F1C();
  v17 = v13;
  v18 = sub_10AC20(v13);
  sub_3EB30(v13, 5);

  v19 = v21;
  v20 = [v17 shouldVisuallyDisableFor:v18];
  (*(&stru_158.offset + (swift_isaMask & *v5)))(v20);

  sub_3EB30(v13, 5);
LABEL_17:

  swift_unknownObjectRelease();
}

double sub_4640C8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_466730();
  v18 = v17;

  (*(v10 + 8))(v12, v9);
  return v18;
}

void sub_4641FC(void *a1)
{
  v1 = a1;
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 music_inheritedLayoutInsets];
  }

  else
  {
    __break(1u);
  }
}

void sub_46427C()
{
  v1 = v0;
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v0 isViewLoaded])
  {
    return;
  }

  [v0 loadViewIfNeeded];
  v30 = qword_DFE2F8;
  v6 = *&v0[qword_DFE2F8];
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = v6;
  v8 = [v7 indexPathsForVisibleItems];
  v9 = sub_AB9760();

  v29 = *(v9 + 16);
  if (!v29)
  {
LABEL_19:

    return;
  }

  v10 = 0;
  v25 = v1;
  v26 = qword_E07FE0;
  v27 = v2;
  v28 = v3 + 16;
  v11 = (v3 + 8);
  while (v10 < *(v9 + 16))
  {
    (*(v3 + 16))(v5, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v2);
    [v1 loadViewIfNeeded];
    v12 = *&v1[v30];
    if (!v12)
    {
      goto LABEL_22;
    }

    v13 = v12;
    isa = sub_AB3770().super.isa;
    v15 = [v13 cellForItemAtIndexPath:isa];

    if (v15)
    {
      type metadata accessor for LiveRadioCell();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = v16;
        v18 = v1[v26];
        v19 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isTopHairlineVisible;
        v20 = v16[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isTopHairlineVisible];
        v16[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isTopHairlineVisible] = v18;
        if (v18 == v20)
        {
          v2 = v27;
          (*v11)(v5, v27);
        }

        else
        {
          v21 = [v16 traitCollection];
          v22 = [v21 horizontalSizeClass];

          if (v22 == &dword_0 + 2 && v17[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_alwaysUseCompactLayout] == 1)
          {
            v23 = v17[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isHeaderRowCell] ^ 1;
          }

          else
          {
            v23 = 0;
          }

          v24 = sub_151290();
          [v24 setHidden:v23 & 1 | ((v17[v19] & 1) == 0)];
          v2 = v27;
          (*v11)(v5, v27);

          v1 = v25;
        }

        goto LABEL_7;
      }
    }

    (*v11)(v5, v2);
LABEL_7:
    if (v29 == ++v10)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void *sub_4645CC()
{
  v1 = qword_E07FE8;
  if (*&v0[qword_E07FE8])
  {
    v2 = *&v0[qword_E07FE8];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E086F0);
    swift_allocObject();
    v2 = sub_2C01E0(v0, v4, 0, 1);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_464698@<D0>(_OWORD *a1@<X8>)
{
  if (!*(v1 + qword_DFE2F0))
  {
    goto LABEL_9;
  }

  type metadata accessor for JSLiveRadioCaseModelResponse();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v3 + OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_jsResults);
  isa = sub_AB3770().super.isa;
  v6 = [v4 itemAtIndexPath:isa];

  if (!v6)
  {
    goto LABEL_9;
  }

  type metadata accessor for JSLiveRadioCaseItem();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_9:
    sub_465CC(&v59);
    goto LABEL_10;
  }

  v8 = v7;
  v27 = IndexPath.safeItem.getter();
  v9 = sub_27EEA4(v8);
  v26 = v10;
  v11 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
  swift_beginAccess();
  v12 = *(v8 + v11);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 name];
    if (v14)
    {
      v15 = v14;
      v16 = sub_AB92A0();
      v18 = v17;
    }

    else
    {

      v16 = 0;
      v18 = 0;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v24 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_videoBackgroundArtwork;
  swift_beginAccess();
  v25 = *(v8 + v24) != 0;
  *&v28 = v9;
  *(&v28 + 1) = v26;
  *&v29 = v16;
  *(&v29 + 1) = v18;
  *&v30 = v8;
  *(&v30 + 1) = v27;
  LOBYTE(v31) = v25;
  *(&v31 + 1) = 5122;
  *(&v31 + 1) = 0;
  *&v32 = 0;
  *(&v32 + 1) = v8;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36[0] = 1;
  *&v36[8] = 0;
  *&v36[16] = 0;
  v36[24] = 2;
  v37[0] = v9;
  v37[1] = v26;
  v37[2] = v16;
  v37[3] = v18;
  v37[4] = v8;
  v37[5] = v27;
  v38 = v25;
  v39 = 5122;
  v40 = 0;
  v41 = 0;
  v42 = v8;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 1;
  v47 = 0;
  v48 = 0;
  v49 = 2;
  swift_unknownObjectRetain();
  sub_465F4(&v28, &v59);
  sub_46650(v37);
  v56 = v34;
  v57 = v35;
  v58[0] = *v36;
  *(v58 + 9) = *&v36[9];
  v52 = v30;
  v53 = v31;
  v54 = v32;
  v55 = v33;
  v50 = v28;
  v51 = v29;
  UIScreen.Dimensions.size.getter(*&v28);
  v65 = v56;
  v66 = v57;
  v67[0] = v58[0];
  *(v67 + 9) = *(v58 + 9);
  v61 = v52;
  v62 = v53;
  v63 = v54;
  v64 = v55;
  v59 = v50;
  v60 = v51;
LABEL_10:
  v19 = v66;
  a1[6] = v65;
  a1[7] = v19;
  a1[8] = v67[0];
  *(a1 + 137) = *(v67 + 9);
  v20 = v62;
  a1[2] = v61;
  a1[3] = v20;
  v21 = v64;
  a1[4] = v63;
  a1[5] = v21;
  result = *&v59;
  v23 = v60;
  *a1 = v59;
  a1[1] = v23;
  return result;
}

id sub_464988()
{
  v1 = v0;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  Width = CGRectGetWidth(v26);
  sub_471A4();
  if (sub_AB38F0())
  {
    result = [v1 view];
    if (result)
    {
      v12 = result;
      [result bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v27.origin.x = v14;
      v27.origin.y = v16;
      v27.size.width = v18;
      v27.size.height = v20;
      Width = CGRectGetWidth(v27);
      if (sub_AB3900())
      {
        return &dword_0 + 2;
      }

      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    return result;
  }

LABEL_5:
  v21 = [v1 traitCollection];
  v22 = [v21 preferredContentSizeCategory];

  LOBYTE(v21) = sub_ABA320();
  if (v21)
  {
    return &dword_0 + 2;
  }

  v23 = *&v1[qword_E07FF0];
  v24 = OBJC_IVAR____TtC11MusicJSCore15JSLiveRadioCase_usesFlowLayout;
  swift_beginAccess();
  if (*(v23 + v24))
  {
    return &dword_0 + 2;
  }

  else
  {
    return &dword_0 + 3;
  }
}

id sub_464B90()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11.origin.x = v4;
    v11.origin.y = v6;
    v11.size.width = v8;
    v11.size.height = v10;
    CGRectGetWidth(v11);
    sub_471A4();
    return (sub_AB38F0() & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_464C60()
{
  v1 = v0;
  [v0 loadViewIfNeeded];
  v2 = qword_DFE2F8;
  v3 = *&v0[qword_DFE2F8];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v0 loadViewIfNeeded];
  v12 = *&v0[v2];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v24 = v11;
  v25 = v7;
  [v12 music_inheritedLayoutInsets];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v27.origin.x = v16;
  v27.origin.y = v18;
  v27.size.width = v20;
  v27.size.height = v22;
  Width = CGRectGetWidth(v27);
  sub_471A4();
  if (sub_AB38F0())
  {
    v23 = [v1 traitCollection];
    sub_464988();
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, &Width, v9);
    [v23 displayScale];
    v28.origin.x = v5;
    v28.size.height = v24;
    v28.origin.y = v25;
    v28.size.width = v9;
    CGRectGetWidth(v28);
    sub_AB3A00();
  }
}

id sub_464E60()
{
  v1 = v0;
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    Width = CGRectGetWidth(v16);
    sub_471A4();
    if ((sub_AB38F0() & 1) != 0 && (v12 = *&v1[qword_E07FF0], v13 = OBJC_IVAR____TtC11MusicJSCore15JSLiveRadioCase_usesFlowLayout, swift_beginAccess(), (*(v12 + v13) & 1) == 0))
    {
      v14 = type metadata accessor for ShelfCollectionViewLayout();
    }

    else
    {
      v14 = UICollectionViewFlowLayout;
    }

    return [objc_allocWithZone(v14) init];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_464F8C()
{
  v12 = sub_464E60();
  [v0 loadViewIfNeeded];
  v1 = qword_DFE2F8;
  v2 = *&v0[qword_DFE2F8];
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = [v2 collectionViewLayout];

  if (v3 != v12)
  {
    [v0 loadViewIfNeeded];
    v4 = *&v0[v1];
    if (v4)
    {
      [v4 setCollectionViewLayout:v12 animated:0];
      type metadata accessor for ShelfCollectionViewLayout();
      if (swift_dynamicCastClass())
      {
        [v0 loadViewIfNeeded];
        v5 = *&v0[v1];
        if (!v5)
        {
LABEL_17:
          __break(1u);
          return;
        }

        [v5 setContentOffset:0 animated:{0.0, 0.0}];
      }

      [v0 loadViewIfNeeded];
      v6 = *&v0[v1];
      if (v6)
      {
        v7 = [v6 collectionViewLayout];
        v8 = &v0[qword_E08000];
        *v8 = 0;
        *(v8 + 1) = 0;
        v8[16] = 1;
        [swift_getObjCClassFromObject() invalidationContextClass];
        swift_getObjCClassMetadata();
        sub_13C80(0, &unk_DFED50);
        swift_dynamicCastMetatypeUnconditional();
        v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        [v7 invalidateLayoutWithContext:v9];

        v10 = qword_E71970;
        v11 = *&v0[qword_E71970];
        if (v11)
        {

          *(v11 + 224) = sub_464B90();

          if (*&v0[v10])
          {

            sub_38AC10();
          }
        }

        goto LABEL_11;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_11:
}

void sub_4651A0(uint64_t a1)
{
  v3 = *(v1 + qword_DFE2F0);
  if (v3)
  {
    v4 = [v3 results];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    isa = sub_AB3770().super.isa;
    v7 = [v5 itemAtIndexPath:isa];

    if (v7)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8 || (v9 = v8, (v10 = [v8 contentItem]) == 0))
      {
LABEL_9:

        swift_unknownObjectRelease();
        return;
      }

      v11 = v10;
      v12 = MPModelStoreBrowseContentItem.kind.getter();
      v14 = v13;

      if (v14 != 5)
      {
        if (v14 != 255)
        {
          sub_3EB30(v12, v14);
        }

        goto LABEL_9;
      }

      v15 = [v9 videoBackgroundArtworkCatalog];
      v16 = *(a1 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_lockupVideoArtworkCatalog);
      *(a1 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_lockupVideoArtworkCatalog) = v15;
      v17 = v15;

      v18 = v17;
      sub_751F4(v15);
      sub_45CBB4();

      v19 = [v9 backgroundArtworkCatalog];
      if (!v19)
      {
        v19 = [v12 artworkCatalog];
      }

      v20 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
      swift_beginAccess();
      v21 = *(a1 + v20);
      *(a1 + v20) = v19;
      v22 = v19;

      sub_74EA4(v19);
      sub_3EB30(v12, 5);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_465414()
{

  sub_12E1C(v0 + qword_E71968, &unk_DF1330);
}

id sub_465494()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSLiveRadioCaseViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_4654CC(uint64_t a1)
{

  sub_12E1C(a1 + qword_E71968, &unk_DF1330);
}

uint64_t type metadata accessor for JSLiveRadioCaseViewController()
{
  result = qword_E08038;
  if (!qword_E08038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4655A4()
{
  sub_70A34();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_465738(void *a1)
{
  v3 = *v1 + qword_E08000;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  [swift_getObjCClassFromObject() invalidationContextClass];
  swift_getObjCClassMetadata();
  sub_13C80(0, &unk_DFED50);
  swift_dynamicCastMetatypeUnconditional();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [a1 invalidateLayoutWithContext:v4];
}

double sub_465830(void *a1)
{
  [a1 bounds];
  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(0, 1u, 0, v4, v1);
  v2 = *&v4[1];
  sub_464988();
  return v2;
}

uint64_t sub_4658B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_E71968;
  swift_beginAccess();
  return sub_15F84(v3 + v4, a1, &unk_DF1330);
}

uint64_t sub_465924(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_E71968;
  swift_beginAccess();
  sub_160B4(a1, v3 + v4, &unk_DF1330);
  return swift_endAccess();
}

double sub_465A14@<D0>(_OWORD *a1@<X8>)
{
  sub_464698(v7);
  v2 = v7[7];
  a1[6] = v7[6];
  a1[7] = v2;
  a1[8] = v8[0];
  *(a1 + 137) = *(v8 + 9);
  v3 = v7[3];
  a1[2] = v7[2];
  a1[3] = v3;
  v4 = v7[5];
  a1[4] = v7[4];
  a1[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

uint64_t sub_465B00(uint64_t a1)
{
  *(a1 + 8) = sub_466474(&qword_E08720, type metadata accessor for JSLiveRadioCaseViewController);
  result = sub_466474(&qword_E08728, type metadata accessor for JSLiveRadioCaseViewController);
  *(a1 + 16) = result;
  return result;
}

void sub_465B84()
{
  v1 = &v0[qword_E08000];
  if (v0[qword_E08000 + 16])
  {
    sub_464C60();
    v3 = v2;
    v4 = [v0 traitCollection];
    v5 = *&v0[qword_E07FF0];
    v6 = OBJC_IVAR____TtC11MusicJSCore15JSLiveRadioCase_usesFlowLayout;
    swift_beginAccess();
    v7 = sub_155278(v4, *(v5 + v6));

    *v1 = v3;
    v1[1] = v7;
    *(v1 + 16) = 0;
  }
}

void sub_465C4C()
{
  *(v0 + qword_E07FE0) = 0;
  *(v0 + qword_E07FE8) = 0;
  v1 = qword_E71968;
  v2 = type metadata accessor for MetricsPageProperties();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + qword_E71970) = 0;
  *(v0 + qword_E07FF8) = 0;
  v3 = v0 + qword_E08000;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = (v0 + qword_E08008);
  *v4 = 0;
  v4[1] = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_465D50(void *a1, uint64_t a2)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  [a1 clearArtworkCatalogs];
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    (*(result + 8))(ObjectType, result);
    v12 = v11;
    v13 = swift_getObjectType();
    (*(v6 + 16))(v8, a2, v5);
    sub_466474(&qword_DFAA90, &type metadata accessor for IndexPath);
    sub_ABAD10();
    (*(v12 + 120))(a1, v15, v13, v12);
    sub_8085C(v15);
    result = swift_unknownObjectRelease();
    if (*(v2 + qword_E71970))
    {

      sub_38E908(a2, a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_465F48()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_147(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_465FA0()
{

  return swift_deallocObject();
}

uint64_t sub_465FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_466050()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_466114(char *a1)
{
  sub_AB3820();

  sub_460288(a1);
}

uint64_t sub_466198()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_466288(uint64_t a1, void *a2)
{
  v5 = *(sub_AB3820() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_460BF4(a1, a2, v8, v2 + v6, v9, v10);
}

uint64_t sub_466344()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_466410()
{
  v1 = *(sub_AB3820() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_461A08(v2, v3, v4);
}

uint64_t sub_466474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4664BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_46651C()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_466618(unsigned __int8 a1)
{
  v3 = *(sub_AB3820() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);

  sub_461048(a1, v7, v8, v1 + v4, v10, v11, v12);
}

uint64_t sub_4666C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_466730()
{
  v1 = &v0[qword_E08000];
  if (v0[qword_E08000 + 16])
  {
    sub_464C60();
    v3 = v2;
    v4 = [v0 traitCollection];
    v5 = *&v0[qword_E07FF0];
    v6 = OBJC_IVAR____TtC11MusicJSCore15JSLiveRadioCase_usesFlowLayout;
    swift_beginAccess();
    v7 = sub_155278(v4, *(v5 + v6));

    v8 = v3;
    *v1 = v3;
    v1[1] = v7;
    *(v1 + 16) = 0;
  }

  else
  {
    v8 = *v1;
  }

  CGSize.nonNegative()(v8);
}

uint64_t sub_46687C(void *a1, unint64_t a2, void (*a3)(_OWORD *__return_ptr, unint64_t), uint64_t a4, uint64_t a5, void (*a6)(uint64_t, double))
{
  v42 = a1;
  v43 = a6;
  v41 = a5;
  v38 = a4;
  v8 = v6;
  v46 = a2;
  v40 = sub_AB3820();
  v9 = *(v40 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v40);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB3430();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v45 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  sub_AB3420();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v12 + 8))(v16, v11);
  }

  v18 = Strong;
  v44 = v11;
  a3(v48, v46);

  v56 = v48[6];
  v57 = v48[7];
  v58[0] = v49[0];
  *(v58 + 9) = *(v49 + 9);
  v52 = v48[2];
  v53 = v48[3];
  v54 = v48[4];
  v55 = v48[5];
  v50 = v48[0];
  v51 = v48[1];
  if (sub_A996C(&v50) == 1)
  {
    return (*(v12 + 8))(v16, v44);
  }

  v65 = v56;
  v66 = v57;
  v67[0] = v58[0];
  *(v67 + 9) = *(v58 + 9);
  v61 = v52;
  v62 = v53;
  v63 = v54;
  v64 = v55;
  v59 = v50;
  v60 = v51;
  v37 = *(v8 + 88);
  v20 = swift_allocObject();
  v38 = v20;
  swift_weakInit();
  v22 = v39;
  v21 = v40;
  (*(v9 + 16))(v39, v46, v40);
  (*(v12 + 16))(v45, v16, v44);
  v23 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v24 + 175) & 0xFFFFFFFFFFFFFFF8;
  v46 = (*(v12 + 80) + v36 + 10) & ~*(v12 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  (*(v9 + 32))(v25 + v23, v22, v21);
  v26 = v42;
  *(v25 + v24) = v42;
  v27 = (v25 + v35);
  v28 = v60;
  *v27 = v59;
  v27[1] = v28;
  v29 = v64;
  v27[4] = v63;
  v27[5] = v29;
  v30 = v62;
  v27[2] = v61;
  v27[3] = v30;
  *(v27 + 137) = *(v67 + 9);
  v31 = v67[0];
  v27[7] = v66;
  v27[8] = v31;
  v27[6] = v65;
  v32 = v25 + v36;
  *v32 = 0;
  *(v32 + 8) = 1025;
  v33 = v44;
  (*(v12 + 32))(v25 + v46, v45, v44);

  v34 = v26;
  sub_15F84(v48, &v47, qword_DF1340);
  sub_48C6A0(v43, v25);
  sub_12E1C(v48, qword_DF1340);
  (*(v12 + 8))(v16, v33);
}

uint64_t sub_466CE8()
{
  v0 = sub_AB7CC0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v3 = sub_ABA150();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v4 = sub_AB7CF0();
  result = (*(v1 + 8))(v3, v0);
  if (v4)
  {
    v6 = [objc_opt_self() sharedApplication];
    v7 = [v6 applicationState];

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        v11 = UIScrollView.isScrolling.getter();

        if ((v11 & 1) == 0)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            v14 = sub_4D39CC();
            if (v14)
            {
              v15 = v14;
              v16 = sub_4D3DD0();
              v17 = UIScrollView.isScrolling.getter();

              if ((v17 & 1) == 0)
              {
                v18 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_visibleViewControllers;
                swift_beginAccess();
                v19 = *&v15[v18];

                v8 = sub_472FF8(v13, v19);

                return v8 & 1;
              }
            }

            else
            {
            }
          }
        }
      }

      v8 = 1;
    }

    return v8 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_466F18()
{
  v0 = sub_AB7CC0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v3 = sub_ABA150();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v4 = sub_AB7CF0();
  result = (*(v1 + 8))(v3, v0);
  if (v4)
  {
    v6 = [objc_opt_self() sharedApplication];
    v7 = [v6 applicationState];

    if (!v7)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        v10 = UIScrollView.isScrolling.getter();

        if ((v10 & 1) == 0)
        {
          v11 = swift_unknownObjectWeakLoadStrong();
          if (v11)
          {
          }
        }
      }
    }

    return v7 == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_467134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v56 = a2;
  v7 = sub_AB3430();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v54[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_AB7CC0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_13C80(0, &qword_DE8ED0);
  *v14 = sub_ABA150();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = sub_AB7CF0();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_56;
  }

  if (qword_DE6D68 != -1)
  {
LABEL_56:
    swift_once();
  }

  if (byte_E71A90 & 1) == 0 && *(v4 + 145) == 1 && (sub_466F18())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v24 = sub_AB4BC0();
      __swift_project_value_buffer(v24, qword_E70EB0);
      v19 = sub_AB4BA0();
      v25 = sub_AB9F10();
      if (os_log_type_enabled(v19, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v19, v25, "Paused tracking.  Container view was deallocated", v26, 2u);
      }

      goto LABEL_50;
    }

    v17 = Strong;
    v18 = swift_unknownObjectWeakLoadStrong();
    if (!v18)
    {

      return;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v19 = v17;
    v55 = sub_4686C8(a1, v17, sub_468ABC);

    v20 = *(a1 + 88);
    if (*(a1 + 144))
    {
      v21 = *(a1 + 16);
    }

    else
    {
      v21 = 0;
    }

    if (*(a1 + 144))
    {
      v22 = *(a1 + 24);
    }

    else
    {
      v22 = 0;
    }

    if (v20)
    {
      v23 = (v20 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v21 = *v23;
      v22 = v23[1];
    }

    else if (!v22)
    {
      v57 = *(a1 + 56);
      v21 = sub_ABB330();
      v22 = v53;
LABEL_25:
      swift_beginAccess();
      v27 = *(v4 + 104);
      if (*(v27 + 16))
      {

        v28 = sub_2EBF88(v21, v22);
        if (v29)
        {
          v30 = *(*(v27 + 56) + 8 * v28);

          swift_beginAccess();
          v31 = *(v30 + 200);
          v34 = *(v31 + 16);
          v32 = v31 + 16;
          v33 = v34;
          if (v34)
          {
            v35 = *(v32 + 16 * v33 + 8);
            if ((v55 & 1) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_39;
          }

LABEL_38:
          v35 = 2;
          if ((v55 & 1) == 0)
          {
LABEL_29:
            if (v35 == 2 || (v35 & 1) != 0)
            {
              goto LABEL_47;
            }

            v36 = sub_2C21FC(a1);
            (*(v8 + 16))(v10, a3, v7);
            sub_AB33D0();
            v38 = v37;
            (*(v8 + 8))(v10, v7);
            swift_beginAccess();
            v39 = *(v36 + 200);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v36 + 200) = v39;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v39 = sub_6A900(0, *(v39 + 2) + 1, 1, v39);
              *(v36 + 200) = v39;
            }

            v42 = *(v39 + 2);
            v41 = *(v39 + 3);
            if (v42 >= v41 >> 1)
            {
              v39 = sub_6A900((v41 > 1), v42 + 1, 1, v39);
            }

            *(v39 + 2) = v42 + 1;
            v43 = &v39[16 * v42];
            *(v43 + 4) = v38;
            v43[40] = 1;
LABEL_46:
            *(v36 + 200) = v39;
            swift_endAccess();

LABEL_47:
            swift_beginAccess();
            if (!*(v4 + 152))
            {

              goto LABEL_52;
            }

            if (v30)
            {
              v50 = sub_472E58(v56, *(v4 + 152));
              v51 = v19;
              v52 = v50;

              *(v30 + 193) = v52;

LABEL_52:

              return;
            }

LABEL_50:

            return;
          }

LABEL_39:
          if (v35 != 2 && (v35 & 1) == 0)
          {
            goto LABEL_47;
          }

          v36 = sub_2C21FC(a1);
          (*(v8 + 16))(v10, a3, v7);
          sub_AB33D0();
          v45 = v44;
          (*(v8 + 8))(v10, v7);
          swift_beginAccess();
          v39 = *(v36 + 200);
          v46 = swift_isUniquelyReferenced_nonNull_native();
          *(v36 + 200) = v39;
          if ((v46 & 1) == 0)
          {
            v39 = sub_6A900(0, *(v39 + 2) + 1, 1, v39);
            *(v36 + 200) = v39;
          }

          v48 = *(v39 + 2);
          v47 = *(v39 + 3);
          if (v48 >= v47 >> 1)
          {
            v39 = sub_6A900((v47 > 1), v48 + 1, 1, v39);
          }

          *(v39 + 2) = v48 + 1;
          v49 = &v39[16 * v48];
          *(v49 + 4) = v45;
          v49[40] = 0;
          goto LABEL_46;
        }
      }

      v30 = 0;
      goto LABEL_38;
    }

    goto LABEL_25;
  }
}

void sub_467824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t, void), uint64_t (*a5)(uint64_t), uint64_t (*a6)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v58 = a6;
  v59 = a2;
  v60 = a5;
  v61 = a3;
  v8 = v6;
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AB7CC0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v17 = sub_ABA150();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v18 = sub_AB7CF0();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (qword_DE6D68 != -1)
  {
LABEL_54:
    swift_once();
  }

  if ((byte_E71A90 & 1) != 0 || *(v8 + 145) != 1 || (sub_466CE8() & 1) == 0)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_DE6888 != -1)
    {
      swift_once();
    }

    v27 = sub_AB4BC0();
    __swift_project_value_buffer(v27, qword_E70EB0);
    v20 = sub_AB4BA0();
    v28 = sub_AB9F10();
    if (os_log_type_enabled(v20, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v20, v28, "Paused tracking.  Container view was deallocated", v29, 2u);
    }

    goto LABEL_20;
  }

  v20 = Strong;
  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
LABEL_20:

    return;
  }

  sub_4684D8();
  v22 = v20;
  LODWORD(v57) = sub_4686C8(a1, v20, a4);

  v23 = *(a1 + 88);
  if (*(a1 + 144))
  {
    v24 = *(a1 + 16);
  }

  else
  {
    v24 = 0;
  }

  if (*(a1 + 144))
  {
    v25 = *(a1 + 24);
  }

  else
  {
    v25 = 0;
  }

  if (v23)
  {
    v26 = (v23 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v24 = *v26;
    v25 = v26[1];
LABEL_22:

    goto LABEL_23;
  }

  if (v25)
  {
    goto LABEL_22;
  }

  v62 = *(a1 + 56);
  v24 = sub_ABB330();
  v25 = v56;
LABEL_23:
  swift_beginAccess();
  v30 = *(v8 + 104);
  if (!*(v30 + 16))
  {
LABEL_35:

    v33 = 0;
    goto LABEL_36;
  }

  v31 = sub_2EBF88(v24, v25);
  if ((v32 & 1) == 0)
  {

    goto LABEL_35;
  }

  v33 = *(*(v30 + 56) + 8 * v31);

  swift_beginAccess();
  v34 = *(v33 + 200);
  v37 = *(v34 + 16);
  v35 = v34 + 16;
  v36 = v37;
  if (v37)
  {
    v38 = *(v35 + 16 * v36 + 8);
    if ((v57 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_37:
    if (v38 != 2 && (v38 & 1) == 0)
    {
      goto LABEL_45;
    }

    v57 = v33;
    v39 = v60(a1);
    (*(v11 + 16))(v13, v61, v10);
    sub_AB33D0();
    v49 = v48;
    (*(v11 + 8))(v13, v10);
    swift_beginAccess();
    v42 = *(v39 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v39 + 200) = v42;
    v44 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = v58(0, *(v42 + 16) + 1, 1, v42);
      *(v39 + 200) = v42;
    }

    v52 = *(v42 + 16);
    v51 = *(v42 + 24);
    if (v52 >= v51 >> 1)
    {
      v42 = v58(v51 > 1, v52 + 1, 1, v42);
    }

    *(v42 + 16) = v52 + 1;
    v53 = v42 + 16 * v52;
    *(v53 + 32) = v49;
    *(v53 + 40) = 0;
    goto LABEL_44;
  }

LABEL_36:
  v38 = 2;
  if (v57)
  {
    goto LABEL_37;
  }

LABEL_27:
  if (v38 == 2 || (v38 & 1) != 0)
  {
    goto LABEL_45;
  }

  v57 = v33;
  v39 = v60(a1);
  (*(v11 + 16))(v13, v61, v10);
  sub_AB33D0();
  v41 = v40;
  (*(v11 + 8))(v13, v10);
  swift_beginAccess();
  v42 = *(v39 + 200);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  *(v39 + 200) = v42;
  v44 = v22;
  if ((v43 & 1) == 0)
  {
    v42 = v58(0, *(v42 + 16) + 1, 1, v42);
    *(v39 + 200) = v42;
  }

  v46 = *(v42 + 16);
  v45 = *(v42 + 24);
  if (v46 >= v45 >> 1)
  {
    v42 = v58(v45 > 1, v46 + 1, 1, v42);
  }

  *(v42 + 16) = v46 + 1;
  v47 = v42 + 16 * v46;
  *(v47 + 32) = v41;
  *(v47 + 40) = 1;
LABEL_44:
  *(v39 + 200) = v42;
  swift_endAccess();

  v22 = v44;
  v33 = v57;
LABEL_45:
  swift_beginAccess();
  v54 = *(v8 + 152);
  if (!v54)
  {

    goto LABEL_49;
  }

  if (v33)
  {

    v55 = sub_4732A8(v59, v54);

    *(v33 + 193) = v55 & 1;

LABEL_49:

    return;
  }
}

void sub_467F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a2;
  v7 = sub_AB3430();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_AB7CC0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_13C80(0, &qword_DE8ED0);
  *v14 = sub_ABA150();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = sub_AB7CF0();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (qword_DE6D68 != -1)
  {
LABEL_46:
    swift_once();
  }

  if (byte_E71A90 & 1) == 0 && *(v4 + 145) == 1 && (sub_466CE8())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v24 = sub_AB4BC0();
      __swift_project_value_buffer(v24, qword_E70EB0);
      v19 = sub_AB4BA0();
      v25 = sub_AB9F10();
      if (os_log_type_enabled(v19, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v19, v25, "Paused tracking.  Container view was deallocated", v26, 2u);
      }

      goto LABEL_40;
    }

    v17 = Strong;
    v18 = swift_unknownObjectWeakLoadStrong();
    if (!v18)
    {

      return;
    }

    sub_4684D8();
    v19 = v17;
    v47 = sub_4686C8(a1, v17, sub_1298E0);

    v20 = *(a1 + 88);
    if (*(a1 + 144))
    {
      v21 = *(a1 + 16);
    }

    else
    {
      v21 = 0;
    }

    if (*(a1 + 144))
    {
      v22 = *(a1 + 24);
    }

    else
    {
      v22 = 0;
    }

    if (v20)
    {
      v23 = (v20 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v21 = *v23;
      v22 = v23[1];
    }

    else if (!v22)
    {
      v49 = *(a1 + 56);
      v21 = sub_ABB330();
      v22 = v45;
LABEL_23:
      swift_beginAccess();
      v27 = *(v4 + 104);
      if (*(v27 + 16))
      {

        v28 = sub_2EBF88(v21, v22);
        if (v29)
        {
          v30 = *(*(v27 + 56) + 8 * v28);

          swift_beginAccess();
          v31 = *(v30 + 200);
          v34 = *(v31 + 16);
          v32 = v31 + 16;
          v33 = v34;
          if (v34)
          {
            v35 = *(v32 + 16 * v33 + 8);
            if ((v47 & 1) == 0)
            {
              goto LABEL_27;
            }

            goto LABEL_33;
          }

LABEL_32:
          v35 = 2;
          if ((v47 & 1) == 0)
          {
LABEL_27:
            if (v35 == 2 || (v35 & 1) != 0)
            {
              goto LABEL_37;
            }

            sub_2C2184(a1);
            (*(v8 + 16))(v10, a3, v7);
            sub_AB33D0();
            v37 = v36;
            (*(v8 + 8))(v10, v7);
            swift_beginAccess();
            v38 = v37;
            v39 = 1;
LABEL_36:
            sub_2C1F68(v39, v38);
            swift_endAccess();

LABEL_37:
            swift_beginAccess();
            if (!*(v4 + 152))
            {

              goto LABEL_42;
            }

            if (v30)
            {
              v42 = sub_472E58(v48, *(v4 + 152));
              v43 = v19;
              v44 = v42;

              *(v30 + 193) = v44;

LABEL_42:

              return;
            }

LABEL_40:

            return;
          }

LABEL_33:
          if (v35 != 2 && (v35 & 1) == 0)
          {
            goto LABEL_37;
          }

          sub_2C2184(a1);
          (*(v8 + 16))(v10, a3, v7);
          sub_AB33D0();
          v41 = v40;
          (*(v8 + 8))(v10, v7);
          swift_beginAccess();
          v38 = v41;
          v39 = 0;
          goto LABEL_36;
        }
      }

      v30 = 0;
      goto LABEL_32;
    }

    goto LABEL_23;
  }
}

void sub_4684D8()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
LABEL_2:

    swift_unknownObjectRelease();
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v2 = [Strong parentViewController];
  if (v2)
  {
    v16 = v2;
    swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      v4 = v3;
      v5 = v0;
      v6 = v16;
LABEL_15:

      ObjectType = swift_getObjectType();
      (*(v4 + 8))(ObjectType, v4);
      v12 = v11;
      v13 = v5;
      v14 = swift_unknownObjectWeakLoadStrong();
      *(v13 + 24) = v12;
      swift_unknownObjectWeakAssign();
      sub_12DE8C(v14);

      swift_unknownObjectRelease();
      goto LABEL_2;
    }

    v6 = v16;
    while (1)
    {
      v8 = v6;

      v6 = [v6 parentViewController];
      if (!v6)
      {
        break;
      }

      swift_getObjectType();
      v9 = swift_conformsToProtocol2();
      if (v9)
      {
        v4 = v9;
        v5 = v0;
        goto LABEL_15;
      }
    }

    v7 = v16;
  }

  else
  {
    v7 = v15;
  }
}

uint64_t sub_4686C8(uint64_t a1, void *a2, uint64_t (*a3)(id, uint64_t, void))
{
  if (a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = a2;
      if ([v8 isHidden] & 1) == 0 && (objc_msgSend(v8, "_isInAWindow") & 1) != 0 && (v10 = swift_unknownObjectWeakLoadStrong(), v11 = a3(v9, v10, *(v3 + 24)), swift_unknownObjectRelease(), (v11))
      {
        [v9 visibleBounds];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        [v9 adjustedContentInset];
        UIEdgeInsetsInsetRect(v13, v15, v17, v19, v20, v21);
        [v8 frame];
        v45 = v22;
        v23 = sub_ABA450();
        if (*(a1 + 200) > 1u)
        {
          if (*(a1 + 200) == 2)
          {
            v43 = [v8 superview];
            if (v43)
            {
              v44 = v43;
              [v8 frame];
              [v44 convertRect:v9 toCoordinateSpace:?];
              v24 = sub_ABA450();

              v41 = v8;
              v8 = v44;
              goto LABEL_18;
            }

            v24 = 1;
          }

          else
          {
            [v8 frame];
            [v8 convertRect:v9 toCoordinateSpace:?];
            [v9 visibleBounds];
            v24 = sub_ABA450();
          }
        }

        else
        {
          v24 = v23;
          if (*(a1 + 200))
          {
            if ((v23 & 1) != 0 && swift_unknownObjectWeakLoadStrong() && (v25 = *(v3 + 24), ObjectType = swift_getObjectType(), v27 = (*(v25 + 88))(ObjectType, v25), swift_unknownObjectRelease(), v27))
            {
              if (v27 != a2 && (v28 = swift_unknownObjectWeakLoadStrong()) != 0 && (v29 = v28, v30 = [v28 superview], v29, v30))
              {
                [v27 visibleBounds];
                v32 = v31;
                v34 = v33;
                v36 = v35;
                v38 = v37;
                [v27 adjustedContentInset];
                UIEdgeInsetsInsetRect(v32, v34, v36, v38, v39, v40);
                [v8 frame];
                [v30 convertRect:v27 toCoordinateSpace:?];
                v24 = sub_ABA450();

                v41 = v27;
                v8 = v30;
              }

              else
              {

                v24 = 1;
                v41 = v9;
                v8 = v27;
              }
            }

            else
            {
              v24 = 1;
              v41 = v8;
              v8 = v9;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v24 = 0;
      }

      v41 = v9;
LABEL_18:

      return v24 & 1;
    }
  }

  v24 = 0;
  return v24 & 1;
}

id sub_468AD4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t, uint64_t))
{
  if (!a2)
  {
    return &dword_0 + 1;
  }

  ObjectType = swift_getObjectType();
  v8 = (*(a3 + 88))(ObjectType, a3);
  if (!v8)
  {
    return &dword_0 + 1;
  }

  v9 = v8;
  v10 = a1;
  v11 = [v10 superview];
  if (v11)
  {
    while (1)
    {

      if (v10)
      {
        v13 = [v10 superview];
        if (v13)
        {
          v14 = v13;

          if (v14 == v9)
          {
            break;
          }
        }
      }

      v12 = [v10 superview];

      v11 = [v12 superview];
      v10 = v12;
      if (!v11)
      {
        goto LABEL_10;
      }
    }
  }

  v12 = v10;
LABEL_10:
  [v9 visibleBounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = [v9 adjustedContentInset];
  if (v12)
  {
    v26 = UIEdgeInsetsInsetRect(v16, v18, v20, v22, v24, v25);
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [v12 frame];
    v42.origin.x = v33;
    v42.origin.y = v34;
    v42.size.width = v35;
    v42.size.height = v36;
    v41.origin.x = v26;
    v41.origin.y = v28;
    v41.size.width = v30;
    v41.size.height = v32;
    if (CGRectIntersectsRect(v41, v42))
    {
      v37 = swift_getObjectType();
      v38 = (*(a3 + 32))(v37, a3);
      v40 = a4(v9, v38, v39);

      swift_unknownObjectRelease();
      return (v40 & 1);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}