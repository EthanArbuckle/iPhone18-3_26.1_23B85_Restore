id sub_1B74()
{
  v0 = objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay);

  return [v0 init];
}

uint64_t sub_1BAC(void *a1)
{
  v2 = sub_1D68(&qword_C1C8, &qword_4A80);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v10 - v5;
  *(swift_allocObject() + 16) = a1;
  sub_41C0();
  sub_40B0(&qword_C1D0, &type metadata accessor for PreferencesControllerView);
  v7 = a1;
  sub_4290();
  *(swift_allocObject() + 16) = v7;
  sub_2B38();
  v8 = v7;
  sub_4240();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DB0(uint64_t a1)
{
  v2 = *(*(sub_4200() - 8) + 64);
  __chkstk_darwin();
  sub_40FC();
  v3 = [objc_allocWithZone(PSSpecifier) init];
  [v3 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_41E0();
  return sub_41B0();
}

uint64_t sub_1E8C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = *(*(sub_1D68(&qword_C328, &qword_4C68) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = sub_4230();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = sub_4200();
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v11 = *(*(type metadata accessor for FaceTimeSettingsSpecifierIdentifiers.Action() - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v12 = sub_4220();
  v3[17] = v12;
  v13 = *(v12 - 8);
  v3[18] = v13;
  v14 = *(v13 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v15 = sub_41A0();
  v3[21] = v15;
  v16 = *(v15 - 8);
  v3[22] = v16;
  v17 = *(v16 + 64) + 15;
  v3[23] = swift_task_alloc();
  v18 = *(*(sub_1D68(&qword_C330, &qword_4C70) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v19 = sub_4190();
  v3[25] = v19;
  v20 = *(v19 - 8);
  v3[26] = v20;
  v21 = *(v20 + 64) + 15;
  v3[27] = swift_task_alloc();
  sub_42E0();
  v3[28] = sub_42D0();
  v23 = sub_42C0();

  return _swift_task_switch(sub_21DC, v23, v22);
}

uint64_t sub_21DC()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[7];

  sub_4260();
  sub_4160();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v9 = v0[20];
    v10 = v0[17];
    v11 = v0[18];
    v13 = v0[6];
    v12 = v0[7];
    sub_4050(v0[24], &qword_C330, &qword_4C70);
    sub_4250();
    sub_4280();
    (*(v11 + 8))(v9, v10);
    goto LABEL_54;
  }

  v14 = v0[19];
  v15 = v0[7];
  (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
  sub_4250();
  v111 = v0;
  v0[2] = sub_4170();
  v0[3] = v16;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_3FA8();
  v17 = sub_4310();

  v19 = *(v17 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = -v19;
    v22 = v17 + 40;
    v23 = &_swiftEmptyArrayStorage;
    v24 = v111;
    do
    {
      v25 = (v22 + 16 * v20++);
      while (1)
      {
        if ((v20 - 1) >= *(v17 + 16))
        {
          __break(1u);
          return result;
        }

        v26 = *(v25 - 1);
        v27 = *v25;
        v28 = HIBYTE(*v25) & 0xF;
        if ((*v25 & 0x2000000000000000) == 0)
        {
          v28 = v26 & 0xFFFFFFFFFFFFLL;
        }

        if (v28)
        {
          if (v26 != 0xD000000000000012 || 0x80000000000047E0 != v27)
          {
            v30 = *(v25 - 1);
            v31 = *v25;
            result = sub_4330();
            if ((result & 1) == 0)
            {
              break;
            }
          }
        }

        ++v20;
        v25 += 2;
        if (v21 + v20 == 1)
        {
          goto LABEL_23;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v114 = v23;
      if ((result & 1) == 0)
      {
        result = sub_3690(0, *(v23 + 2) + 1, 1);
      }

      v22 = v17 + 40;
      v33 = *(v23 + 2);
      v32 = *(v23 + 3);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v36 = v33 + 1;
        v109 = v33;
        result = sub_3690((v32 > 1), v33 + 1, 1);
        v34 = v36;
        v33 = v109;
        v22 = v17 + 40;
        v23 = v114;
      }

      *(v23 + 2) = v34;
      v35 = &v23[16 * v33];
      *(v35 + 4) = v26;
      *(v35 + 5) = v27;
    }

    while (v21 + v20);
  }

  else
  {
    v23 = &_swiftEmptyArrayStorage;
    v24 = v111;
  }

LABEL_23:

  v37 = *(v23 + 2);
  if (v37)
  {
    goto LABEL_24;
  }

  v74 = v24[27];
  sub_4180();
  if (v75)
  {
    v76 = v24[8];

    v77 = sub_42A0();

    [v76 setSpecifierIdentifierToScrollAndHighlight:v77];

    v24 = v111;
LABEL_53:
    v79 = v24[26];
    v78 = v24[27];
    v80 = v111[25];
    v81 = v111[19];
    v82 = v111[18];
    v83 = v111[17];
    v84 = v111[6];
    sub_4280();
    (*(v82 + 8))(v81, v83);
    v0 = v111;
    (*(v79 + 8))(v78, v80);
    goto LABEL_54;
  }

  v37 = *(v23 + 2);
  if (!v37)
  {

    goto LABEL_53;
  }

LABEL_24:
  v38 = v24[14];
  v105 = (v24[11] + 48);
  v107 = (v38 + 32);
  v110 = (v38 + 8);
  v39 = &off_8358;
  v40 = &_s10Foundation13URLComponentsV3url23resolvingAgainstBaseURLACSgAA0G0Vh_SbtcfC_ptr;
  v41 = &ConferenceRegistrationSettingsBundleController__metaData;
  while (1)
  {
    v45 = *(v23 + 4);
    v44 = *(v23 + 5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v37 - 1) > *(v23 + 3) >> 1)
    {
      v23 = sub_37BC(isUniquelyReferenced_nonNull_native, v37, 1, v23);
    }

    sub_3FFC((v23 + 32));
    v47 = *(v23 + 2);
    memmove(v23 + 32, v23 + 48, 16 * v47 - 16);
    *(v23 + 2) = v47 - 1;

    v48._rawValue = v39;
    v116._countAndFlagsBits = v45;
    v116._object = v44;
    v49 = sub_4320(v48, v116);

    if (v49 <= 1)
    {
      if (v49)
      {
        if (v49 != 1 || (v53 = [objc_allocWithZone(v40[74]) *&v41[4].flags], v54 = objc_msgSend(v53, "isFaceTimeEnabledInSettings"), v53, (v54 & 1) == 0))
        {
LABEL_51:

LABEL_52:

          goto LABEL_53;
        }

        v52 = 1;
      }

      else
      {
        v57 = [objc_allocWithZone(v40[74]) *&v41[4].flags];
        v58 = [v57 isFaceTimeEnabledInSettings];

        if (!v58)
        {
          goto LABEL_51;
        }

        v52 = 0;
      }
    }

    else
    {
      switch(v49)
      {
        case 2:
          v59 = [objc_allocWithZone(v40[74]) *&v41[4].flags];
          v60 = [v59 isShareNameAndPhotosAvailable];

          if ((v60 & 1) == 0)
          {
            goto LABEL_51;
          }

          v52 = 2;
          break;
        case 3:
          v55 = [objc_allocWithZone(v40[74]) *&v41[4].flags];
          v56 = [v55 isFaceTimeEnabledInSettings];

          if ((v56 & 1) == 0)
          {
            goto LABEL_51;
          }

          v52 = 3;
          break;
        case 4:
          v50 = [objc_allocWithZone(v40[74]) *&v41[4].flags];
          v51 = [v50 isFaceTimeEnabledInSettings];

          if ((v51 & 1) == 0)
          {
            goto LABEL_51;
          }

          v52 = 4;
          break;
        default:
          goto LABEL_51;
      }
    }

    v61 = v24[16];
    sub_2C50(v52, v61);
    v62 = sub_1D68(&qword_C1E0, qword_4A98);
    if ((*(*(v62 - 8) + 48))(v61, 1, v62) != 1)
    {
      break;
    }

    v42 = v24[8];
    v43 = sub_42A0();

    [v42 setSpecifierIdentifierToScrollAndSelect:v43];

LABEL_26:
    v37 = *(v23 + 2);
    if (!v37)
    {
      goto LABEL_52;
    }
  }

  v113 = v23;
  v63 = v41;
  v64 = v40;
  v65 = v39;
  v67 = v24[15];
  v66 = v24[16];
  v68 = v24[13];
  v69 = v24[9];
  v70 = v24[10];

  (*v107)(v67, v66, v68);
  sub_41D0();
  if ((*v105)(v69, 1, v70) == 1)
  {
    v71 = v24[19];
    v72 = v24[15];
    v73 = v24[13];
    sub_4050(v24[9], &qword_C328, &qword_4C68);
    sub_40B0(&qword_C340, &type metadata accessor for PreferencesControllerRecipe);
    sub_4210();
    (*v110)(v72, v73);
    v39 = v65;
    v40 = v64;
    v41 = v63;
    v23 = v113;
    goto LABEL_26;
  }

  v96 = v24[26];
  v95 = v24[27];
  v112 = v24[25];
  v98 = v24[18];
  v97 = v24[19];
  v106 = v24[15];
  v108 = v24[17];
  v99 = v24[12];
  v104 = v24[13];
  v101 = v24[10];
  v100 = v24[11];
  v102 = v24[9];
  v103 = v24[6];

  (*(v100 + 32))(v99, v102, v101);
  sub_4270();
  (*(v100 + 8))(v99, v101);
  (*v110)(v106, v104);
  (*(v98 + 8))(v97, v108);
  (*(v96 + 8))(v95, v112);
  v0 = v24;
LABEL_54:
  v85 = v0[27];
  v86 = v0[23];
  v87 = v0[24];
  v89 = v0[19];
  v88 = v0[20];
  v91 = v0[15];
  v90 = v0[16];
  v92 = v0[12];
  v93 = v0[9];

  v94 = v0[1];

  return v94();
}

uint64_t sub_2A88(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_4154;

  return sub_1ECC(a1, a2, v6);
}

unint64_t sub_2B38()
{
  result = qword_C1D8;
  if (!qword_C1D8)
  {
    sub_2B9C(&qword_C1C8, &qword_4A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1D8);
  }

  return result;
}

uint64_t sub_2B9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_2BE8(unsigned __int8 a1)
{
  v1 = a1;
  v2 = [objc_allocWithZone(TUConfigurationProvider) init];
  v3 = v2;
  v4 = &selRef_isShareNameAndPhotosAvailable;
  if (v1 != 2)
  {
    v4 = &selRef_isFaceTimeEnabledInSettings;
  }

  v5 = [v2 *v4];

  return v5;
}

uint64_t sub_2C50@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *(*(sub_4300() - 8) + 64);
  __chkstk_darwin();
  if (a1 == 2)
  {
    v5 = sub_1D68(&qword_C1E0, qword_4A98);
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 1, 1, v5);
  }

  else
  {
    sub_42F0();
    sub_41F0();
    v7 = sub_1D68(&qword_C1E0, qword_4A98);
    return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
  }
}

uint64_t sub_2E80()
{
  v1 = sub_1D68(&qword_C1C8, &qword_4A80);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = *v0;
  *(swift_allocObject() + 16) = v6;
  sub_41C0();
  sub_40B0(&qword_C1D0, &type metadata accessor for PreferencesControllerView);
  v7 = v6;
  sub_4290();
  *(swift_allocObject() + 16) = v7;
  sub_2B38();
  v8 = v7;
  sub_4240();
  return (*(v2 + 8))(v5, v1);
}

id sub_303C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

unint64_t sub_3078(unsigned __int8 a1)
{
  v1 = 0x45434E554F4E4E41;
  v2 = 0xD00000000000001ELL;
  v3 = 0xD00000000000002CLL;
  if (a1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (!a1)
  {
    v1 = 0xD000000000000013;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_3138(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x45434E554F4E4E41;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (v2)
    {
      v4 = 0xEE00534C4C41435FLL;
    }

    else
    {
      v4 = 0x80000000000045D0;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x8000000000004600;
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD00000000000002CLL;
    }

    if (v2 == 3)
    {
      v4 = 0x8000000000004620;
    }

    else
    {
      v4 = 0x8000000000004640;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x45434E554F4E4E41;
    }

    else
    {
      v7 = 0xD000000000000013;
    }

    if (a2)
    {
      v6 = 0xEE00534C4C41435FLL;
    }

    else
    {
      v6 = 0x80000000000045D0;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x8000000000004600;
    if (v3 != 0xD00000000000001ELL)
    {
LABEL_37:
      v8 = sub_4330();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD00000000000002CLL;
    }

    if (a2 == 3)
    {
      v6 = 0x8000000000004620;
    }

    else
    {
      v6 = 0x8000000000004640;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

Swift::Int sub_32CC()
{
  v1 = *v0;
  sub_4340();
  sub_42B0();

  return sub_4350();
}

uint64_t sub_33C8()
{
  *v0;
  sub_42B0();
}

Swift::Int sub_34B0()
{
  v1 = *v0;
  sub_4340();
  sub_42B0();

  return sub_4350();
}

uint64_t sub_35A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_38C8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_35D8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00534C4C41435FLL;
  v4 = 0x45434E554F4E4E41;
  v5 = 0x8000000000004600;
  v6 = 0xD00000000000001ELL;
  v7 = 0x8000000000004620;
  v8 = 0xD00000000000002CLL;
  if (v2 == 3)
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v7 = 0x8000000000004640;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000000000045D0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

char *sub_3690(char *a1, int64_t a2, char a3)
{
  result = sub_36B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_36B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D68(&qword_C348, &qword_4C78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_37BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D68(&qword_C348, &qword_4C78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_38C8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_8358;
  v6._object = a2;
  v4 = sub_4320(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_3918()
{
  result = qword_C1E8;
  if (!qword_C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1E8);
  }

  return result;
}

unint64_t sub_398C()
{
  result = qword_C1F0;
  if (!qword_C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FaceTimeSettingsSpecifierIdentifiers(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FaceTimeSettingsSpecifierIdentifiers(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_3B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D68(&qword_C1E0, qword_4A98);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3C28(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D68(&qword_C1E0, qword_4A98);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for FaceTimeSettingsSpecifierIdentifiers.Action()
{
  result = qword_C5E0;
  if (!qword_C5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3D00()
{
  sub_3D58();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_3D58()
{
  if (!qword_C300)
  {
    v0 = sub_4200();
    if (!v1)
    {
      atomic_store(v0, &qword_C300);
    }
  }
}

uint64_t sub_3DA0()
{
  sub_2B9C(&qword_C1C8, &qword_4A80);
  sub_2B38();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_3E04(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_3EB4;

  return sub_1ECC(a1, a2, v6);
}

uint64_t sub_3EB4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_3FA8()
{
  result = qword_C338;
  if (!qword_C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C338);
  }

  return result;
}

uint64_t sub_4050(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1D68(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_40B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_40FC()
{
  result = qword_C350;
  if (!qword_C350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C350);
  }

  return result;
}