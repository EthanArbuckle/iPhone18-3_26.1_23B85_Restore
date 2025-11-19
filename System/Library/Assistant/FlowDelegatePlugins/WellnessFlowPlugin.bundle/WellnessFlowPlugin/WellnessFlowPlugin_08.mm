uint64_t sub_B8CB0()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 320);
  v6 = *(v4 + 312);
  v7 = *v0;
  sub_C990();
  *v8 = v7;

  sub_2D64((v2 + 96));
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_B8DB0()
{
  sub_386A8();
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);

  v4 = *(v2 + 8);
  v5 = sub_C9C8();
  v6(v5);
  sub_2D64((v0 + 56));
  v7 = *(v0 + 232);
  v8 = *(v0 + 200);
  v9 = *(v0 + 208);
  v10 = *(v0 + 192);

  sub_C9BC();

  return v11();
}

uint64_t sub_B8E60()
{
  sub_386A8();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = sub_16DBBC();
  sub_8B48();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_16DBDC();
  v6 = sub_16E36C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&def_259DC, v5, v6, "Couldn't create logMedGenericMixedStatusConfirmation_Dialog, returning generic error output.", v7, 2u);
    sub_8A2C();
  }

  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[22];

  v11 = *(v9 + 8);
  v12 = sub_C9F8();
  v13(v12);
  sub_B9A00();
  v0[41] = swift_allocError();
  v14 = swift_task_alloc();
  v0[42] = v14;
  *v14 = v0;
  v14[1] = sub_B8FD4;
  v15 = v0[20];
  v16 = v0[21];

  return sub_B7B68();
}

uint64_t sub_B8FD4()
{
  sub_386A8();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[43] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v3[41];

    v13 = v3[29];
    v15 = v3[25];
    v14 = v3[26];
    v16 = v3[24];

    sub_C9BC();

    return v17();
  }
}

uint64_t sub_B9128()
{
  sub_386A8();
  v1 = v0[41];
  v2 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];

  sub_C9BC();
  v7 = v0[43];

  return v6();
}

uint64_t sub_B91B8()
{
  v0 = sub_16C96C();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  __chkstk_darwin(v0);
  sub_4304();
  v6 = v5 - v4;
  v7 = sub_16C8BC();
  v8 = sub_42F0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  sub_16C8AC();
  sub_16C95C();
  (*(v10 + 16))(v15, v17, v7);
  sub_16C93C();
  sub_16C54C();
  sub_2440(&qword_1C5988, &unk_16F750);
  v18 = *(v1 + 72);
  v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_16F530;
  (*(v2 + 16))(v20 + v19, v6, v0);
  sub_16C53C();
  (*(v2 + 8))(v6, v0);
  return (*(v10 + 8))(v17, v7);
}

uint64_t sub_B9410(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_B94A8;

  return sub_B6B70();
}

uint64_t sub_B94A8()
{
  sub_C9EC();
  v3 = v2;
  v5 = v4;
  sub_C9D4();
  v7 = v6;
  sub_38388();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  sub_C990();
  *v12 = v11;

  if (!v0)
  {
    v13 = *(v7 + 16);
    *v13 = v5;
    v13[1] = v3;
  }

  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_B95AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_B83BC();
}

uint64_t sub_B9644()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_B7B68();
}

uint64_t sub_B96EC(unint64_t a1)
{
  v3 = sub_3B35C(a1);
  v4 = sub_3B35C(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_B9798(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_B989C(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_B9798(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_16E54C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_16E49C();
  *v1 = result;
  return result;
}

uint64_t sub_B9838(void *a1)
{
  v1 = [a1 completionStatus];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16E1BC();

  return v3;
}

uint64_t sub_B989C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_16E54C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_3B35C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_16D86C();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_B9A54();
        for (i = 0; i != v7; ++i)
        {
          sub_2440(&qword_1C9198, &qword_1751C8);
          v9 = sub_16BA80(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_B9A00()
{
  result = qword_1C9190;
  if (!qword_1C9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9190);
  }

  return result;
}

unint64_t sub_B9A54()
{
  result = qword_1C91A0;
  if (!qword_1C91A0)
  {
    sub_9790(&qword_1C9198, &qword_1751C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C91A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LogMedGenericMixedStatusConfirmationStrategyError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0xB9B54);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_B9B90()
{
  result = qword_1C91A8;
  if (!qword_1C91A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C91A8);
  }

  return result;
}

uint64_t sub_B9BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_16C46C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  (*(v7 + 16))(&v11[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v12 = a2;
  v13 = a3;
  sub_16C75C();
  return (*(v7 + 8))(a1, v6);
}

uint64_t GenericMedCompletedLogModel.init(medStatus:givenTime:url:dontDisplayGranularTime:sashBundleID:isSmartEnabled:loggedLabel:skippedLabel:takenLabel:allScheduledMedicationsLabel:snippetHeaderModel:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v71 = a7;
  v65 = a4;
  HIDWORD(v55) = a1;
  v72 = a8;
  v73 = a17;
  v69 = a6;
  v70 = a16;
  v67 = a5;
  v68 = a15;
  v66 = a14;
  v63 = a12;
  v64 = a13;
  v62 = a11;
  v60 = a3;
  v61 = a10;
  v19 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v19);
  v21 = *(v20 + 64);
  sub_433C();
  __chkstk_darwin(v22);
  v24 = &v55 - v23;
  v25 = type metadata accessor for GenericMedCompletedLogModel();
  v57 = v25[6];
  v26 = sub_16C11C();
  sub_8AB4();
  sub_214C(v27, v28, v29, v26);
  v30 = v25[7];
  v31 = (a9 + v25[8]);
  v32 = v25[10];
  v58 = v25[9];
  v59 = v30;
  v33 = (a9 + v32);
  v34 = (a9 + v25[11]);
  v35 = (a9 + v25[12]);
  v36 = v25[13];
  v56 = v25[14];
  v37 = (a9 + v36);
  type metadata accessor for SnippetHeaderModel();
  sub_8AB4();
  sub_214C(v38, v39, v40, v41);
  *a9 = BYTE4(v55);
  *(a9 + 8) = sub_BA66C();
  *(a9 + 16) = v42;
  v43 = v60;
  sub_BA70C(v60);
  sub_8748(v43, &qword_1C57F8, &unk_172510);
  v44 = sub_16BF5C();
  sub_8B38(v44);
  (*(v45 + 8))(a2);
  sub_214C(v24, 0, 1, v26);
  sub_1E634(v24, a9 + v57, &qword_1C63F0, &unk_1717F0);
  v46 = v58;
  *(a9 + v59) = v65;
  v47 = v69;
  *v31 = v67;
  v31[1] = v47;
  *(a9 + v46) = v71;
  v48 = v61;
  v49 = v62;
  *v33 = v72;
  v33[1] = v48;
  v50 = v63;
  v51 = v64;
  *v34 = v49;
  v34[1] = v50;
  v52 = v66;
  *v35 = v51;
  v35[1] = v52;
  v53 = v70;
  *v37 = v68;
  v37[1] = v53;
  return sub_1E634(v73, a9 + v56, &dword_1C63F8, &qword_171800);
}

uint64_t type metadata accessor for GenericMedCompletedLogModel()
{
  result = qword_1C9220;
  if (!qword_1C9220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SpecificMedCompletedLogModel.time.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_8B9C();
}

uint64_t SpecificMedCompletedLogModel.time.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t GenericMedCompletedLogModel.dontDisplayGranularTime.setter(char a1)
{
  result = type metadata accessor for GenericMedCompletedLogModel();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t GenericMedCompletedLogModel.sashBundleID.getter()
{
  v0 = type metadata accessor for GenericMedCompletedLogModel();
  sub_20658(*(v0 + 32));
  return sub_8B9C();
}

uint64_t GenericMedCompletedLogModel.sashBundleID.setter()
{
  v3 = sub_BC0C4();
  result = sub_66A6C(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericMedCompletedLogModel.isSmartEnabled.setter(char a1)
{
  result = type metadata accessor for GenericMedCompletedLogModel();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t GenericMedCompletedLogModel.loggedLabel.getter()
{
  v0 = type metadata accessor for GenericMedCompletedLogModel();
  sub_20658(*(v0 + 40));
  return sub_8B9C();
}

uint64_t GenericMedCompletedLogModel.loggedLabel.setter()
{
  v3 = sub_BC0C4();
  result = sub_66A6C(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericMedCompletedLogModel.skippedLabel.getter()
{
  v0 = type metadata accessor for GenericMedCompletedLogModel();
  sub_20658(*(v0 + 44));
  return sub_8B9C();
}

uint64_t GenericMedCompletedLogModel.skippedLabel.setter()
{
  v3 = sub_BC0C4();
  result = sub_66A6C(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericMedCompletedLogModel.takenLabel.getter()
{
  v0 = type metadata accessor for GenericMedCompletedLogModel();
  sub_20658(*(v0 + 48));
  return sub_8B9C();
}

uint64_t GenericMedCompletedLogModel.takenLabel.setter()
{
  v3 = sub_BC0C4();
  result = sub_66A6C(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericMedCompletedLogModel.allScheduledMedicationsLabel.getter()
{
  v0 = type metadata accessor for GenericMedCompletedLogModel();
  sub_20658(*(v0 + 52));
  return sub_8B9C();
}

uint64_t GenericMedCompletedLogModel.allScheduledMedicationsLabel.setter()
{
  v3 = sub_BC0C4();
  result = sub_66A6C(*(v3 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_BA66C()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  [v0 setTimeStyle:1];
  isa = sub_16BEEC().super.isa;
  v2 = [v0 stringFromDate:isa];

  v3 = sub_16E1BC();
  return v3;
}

uint64_t sub_BA70C(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_16BE9C();
  v9 = sub_42F0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86B0(a1, v7, &qword_1C57F8, &unk_172510);
  if (sub_369C(v7, 1, v8) == 1)
  {
    sub_8748(v7, &qword_1C57F8, &unk_172510);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v11 + 32))(v15, v7, v8);
    v17 = sub_16BE5C();
    sub_2068C(v17, v18);
    return (*(v11 + 8))(v15, v8);
  }
}

uint64_t sub_BA8B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x757461745364656DLL && a2 == 0xE900000000000073;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701669236 && a2 == 0xE400000000000000;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x800000000017F3D0 == a2;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x646E754268736173 && a2 == 0xEC0000004449656CLL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x457472616D537369 && a2 == 0xEE0064656C62616ELL;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4C64657070696B73 && a2 == 0xEC0000006C656261;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x62614C6E656B6174 && a2 == 0xEA00000000006C65;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001CLL && 0x800000000017F3F0 == a2;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000012 && 0x800000000017AE80 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_16E6BC();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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
  }
}

unint64_t sub_BAC44(char a1)
{
  result = 0x757461745364656DLL;
  switch(a1)
  {
    case 1:
      result = 1701669236;
      break;
    case 2:
      result = 0x68636E7550707061;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x646E754268736173;
      break;
    case 5:
      result = 0x457472616D537369;
      break;
    case 6:
      result = 0x614C646567676F6CLL;
      break;
    case 7:
      result = 0x4C64657070696B73;
      break;
    case 8:
      result = 0x62614C6E656B6174;
      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_BADE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_BA8B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_BAE10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_BAC3C();
  *a1 = result;
  return result;
}

uint64_t sub_BAE38(uint64_t a1)
{
  v2 = sub_BB1C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BAE74(uint64_t a1)
{
  v2 = sub_BB1C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GenericMedCompletedLogModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1C91B0, &qword_1752B8);
  sub_42F0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_433C();
  __chkstk_darwin(v10);
  v12 = &v27[-v11];
  v13 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_BB1C8();
  sub_16E77C();
  v14 = *v3;
  v27[15] = 0;
  sub_BC0B8();
  sub_16E65C();
  if (!v2)
  {
    v15 = *(v3 + 1);
    v16 = *(v3 + 2);
    v27[14] = 1;
    sub_BC068();
    sub_16E64C();
    v17 = type metadata accessor for GenericMedCompletedLogModel();
    v18 = v17[6];
    v27[13] = 2;
    sub_16C11C();
    sub_BC088();
    sub_BB9BC(v19, v20);
    sub_BC0B8();
    sub_16E63C();
    v21 = v3[v17[7]];
    v27[12] = 3;
    sub_BC0B8();
    sub_16E65C();
    sub_66A40(v17[8]);
    v27[11] = 4;
    sub_BC068();
    sub_16E64C();
    v22 = v3[v17[9]];
    v27[10] = 5;
    sub_BC0B8();
    sub_16E65C();
    sub_66A40(v17[10]);
    v27[9] = 6;
    sub_BC068();
    sub_16E61C();
    sub_66A40(v17[11]);
    v27[8] = 7;
    sub_BC068();
    sub_16E61C();
    sub_66A40(v17[12]);
    v27[7] = 8;
    sub_BC068();
    sub_16E61C();
    sub_66A40(v17[13]);
    v27[6] = 9;
    sub_BC068();
    sub_16E61C();
    v23 = v17[14];
    v27[5] = 10;
    type metadata accessor for SnippetHeaderModel();
    sub_BC0A0();
    sub_BB9BC(v24, v25);
    sub_BC0B8();
    sub_16E63C();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_BB1C8()
{
  result = qword_1C91B8;
  if (!qword_1C91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C91B8);
  }

  return result;
}

uint64_t GenericMedCompletedLogModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v3);
  v5 = *(v4 + 64);
  sub_433C();
  __chkstk_darwin(v6);
  v73 = v70 - v7;
  v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v8);
  v10 = *(v9 + 64);
  sub_433C();
  __chkstk_darwin(v11);
  v13 = v70 - v12;
  v76 = sub_2440(&qword_1C91C0, &qword_1752C0);
  sub_42F0(v76);
  v74 = v14;
  v16 = *(v15 + 64);
  sub_433C();
  __chkstk_darwin(v17);
  v19 = v70 - v18;
  v20 = type metadata accessor for GenericMedCompletedLogModel();
  v21 = sub_8B38(v20);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v24 + 24);
  v28 = sub_16C11C();
  v80 = v27;
  sub_8AB4();
  sub_214C(v29, v30, v31, v28);
  v32 = *(v20 + 56);
  v81 = v26;
  v33 = &v26[v32];
  v34 = type metadata accessor for SnippetHeaderModel();
  v78 = v33;
  sub_8AB4();
  sub_214C(v35, v36, v37, v34);
  v39 = a1[3];
  v38 = a1[4];
  v79 = a1;
  sub_2D20(a1, v39);
  sub_BB1C8();
  v75 = v19;
  v40 = v77;
  sub_16E76C();
  if (v40)
  {
    sub_BC054();
    v42 = v80;
    v43 = v81;
    sub_2D64(v79);

    sub_8748(&v43[v42], &qword_1C63F0, &unk_1717F0);

    return sub_8748(v78, &dword_1C63F8, &qword_171800);
  }

  else
  {
    v77 = 0x800000000017A2C0;
    v71 = v20;
    v92 = 0;
    v41 = sub_16E5CC();
    v45 = v81;
    *v81 = v41 & 1;
    v91 = 1;
    v46 = sub_16E5BC();
    v47 = v80;
    *(v45 + 1) = v46;
    *(v45 + 2) = v48;
    v70[1] = v48;
    v90 = 2;
    sub_BC088();
    sub_BB9BC(v49, v50);
    sub_16E5AC();
    sub_1E634(v13, &v45[v47], &qword_1C63F0, &unk_1717F0);
    v89 = 3;
    sub_BC0E0();
    v51 = sub_16E5CC();
    v52 = v71;
    v45[v71[7]] = v51 & 1;
    v88 = 4;
    sub_BC0E0();
    v53 = sub_16E5BC();
    sub_BC114(v53, v54, v52[8]);
    v87 = 5;
    sub_BC0E0();
    v45[v52[9]] = sub_16E5CC() & 1;
    v86 = 6;
    sub_BC0E0();
    v55 = sub_16E58C();
    sub_BC114(v55, v56, v52[10]);
    v77 = v57;
    v85 = 7;
    sub_BC0E0();
    v58 = sub_16E58C();
    sub_BC114(v58, v59, v52[11]);
    v84 = 8;
    sub_BC0E0();
    v60 = sub_16E58C();
    sub_BC114(v60, v61, v52[12]);
    v83 = 9;
    sub_BC0E0();
    v62 = sub_16E58C();
    v63 = &v81[v71[13]];
    *v63 = v62;
    v63[1] = v64;
    v82 = 10;
    sub_BC0A0();
    sub_BB9BC(v65, v66);
    sub_16E5AC();
    v67 = sub_BC104();
    v68(v67);
    sub_1E634(v73, v78, &dword_1C63F8, &qword_171800);
    v69 = v81;
    sub_BB86C(v81, v72);
    sub_2D64(v79);
    return sub_BB8D0(v69);
  }
}

uint64_t sub_BB86C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMedCompletedLogModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BB8D0(uint64_t a1)
{
  v2 = type metadata accessor for GenericMedCompletedLogModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BB9BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_BBA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_2440(&dword_1C63F8, &qword_171800);
      v10 = *(a3 + 56);
    }

    return sub_369C(a1 + v10, a2, v9);
  }
}

uint64_t sub_BBB40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_2440(&dword_1C63F8, &qword_171800);
      v10 = *(a4 + 56);
    }

    return sub_214C(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_BBC20()
{
  sub_BBD6C(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  if (v0 <= 0x3F)
  {
    sub_BBD1C();
    if (v1 <= 0x3F)
    {
      sub_BBD6C(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_BBD1C()
{
  if (!qword_1C64C8)
  {
    v0 = sub_16E3EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C64C8);
    }
  }
}

void sub_BBD6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16E3EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for GenericMedCompletedLogModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GenericMedCompletedLogModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xBBF14);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_BBF50()
{
  result = qword_1C9280;
  if (!qword_1C9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9280);
  }

  return result;
}

unint64_t sub_BBFA8()
{
  result = qword_1C9288;
  if (!qword_1C9288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9288);
  }

  return result;
}

unint64_t sub_BC000()
{
  result = qword_1C9290;
  if (!qword_1C9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9290);
  }

  return result;
}

uint64_t sub_BC078()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 136);
  return result;
}

uint64_t sub_BC0C4()
{

  return type metadata accessor for GenericMedCompletedLogModel();
}

uint64_t sub_BC0EC()
{

  return type metadata accessor for GenericMedCompletedLogModel();
}

uint64_t sub_BC104()
{
  result = *(v0 - 144);
  v2 = *(*(v0 - 152) + 8);
  v3 = *(v0 - 136);
  return result;
}

uint64_t sub_BC114@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t sub_BC120()
{
  sub_BC9FC();

  return sub_16C33C();
}

uint64_t sub_BC174()
{
  sub_8A88();
  v1[25] = v2;
  v1[26] = v0;
  v3 = sub_16DBEC();
  v1[27] = v3;
  sub_888C(v3);
  v1[28] = v4;
  v6 = *(v5 + 64) + 15;
  v1[29] = swift_task_alloc();
  v7 = sub_16C46C();
  v1[30] = v7;
  sub_888C(v7);
  v1[31] = v8;
  v10 = *(v9 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v11 = sub_16C7BC();
  v1[34] = v11;
  sub_888C(v11);
  v1[35] = v12;
  v14 = *(v13 + 64) + 15;
  v1[36] = swift_task_alloc();

  return _swift_task_switch(sub_BC2DC, 0, 0);
}

uint64_t sub_BC2DC()
{
  sub_8A88();
  v1 = *sub_2D20((*(v0 + 208) + 40), *(*(v0 + 208) + 64));
  v2 = swift_task_alloc();
  *(v0 + 296) = v2;
  *v2 = v0;
  v2[1] = sub_BC378;

  return sub_7AC90();
}

uint64_t sub_BC378(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 304) = v1;

  if (v1)
  {
    v8 = sub_BC64C;
  }

  else
  {
    *(v4 + 312) = a1;
    v8 = sub_BC498;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_BC498()
{
  v1 = v0[39];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v18 = v0[34];
  v5 = v0[31];
  v6 = v0[32];
  v7 = v0[30];
  v8 = v0[25];
  v9 = v0[26];
  sub_16C45C();
  (*(v5 + 16))(v6, v4, v7);
  sub_16C75C();
  (*(v5 + 8))(v4, v7);
  v10 = [v1 patternId];
  sub_16E1BC();

  sub_16C76C();
  v11 = v9[4];
  sub_2D20(v9, v9[3]);
  sub_16C2FC();
  sub_16C4FC();

  (*(v3 + 8))(v2, v18);
  v12 = v0[36];
  v13 = v0[32];
  v14 = v0[33];
  v15 = v0[29];

  v16 = v0[1];

  return v16();
}

uint64_t sub_BC64C()
{
  v1 = v0[38];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v5 = sub_16DBBC();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E37C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[38];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&def_259DC, v6, v7, "Couldn't execute wellness#outsideRetentionPolicy pattern. Error: %@", v10, 0xCu);
    sub_6450C(v11);
  }

  else
  {
    v13 = v0[38];
  }

  v14 = v0[26];
  v15 = v0[25];
  (*(v0[28] + 8))(v0[29], v0[27]);
  sub_8284(v14, (v0 + 2));
  sub_82E0();
  sub_16C4EC();
  sub_8334((v0 + 2));
  v16 = v0[36];
  v17 = v0[32];
  v18 = v0[33];
  v19 = v0[29];

  v20 = v0[1];

  return v20();
}

uint64_t sub_BC848@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_16D63C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_C1F30(a1);
  v4 = type metadata accessor for WellnessCATPatternsExecutor(0);
  sub_16D62C();
  v5 = sub_16D58C();
  a1[8] = v4;
  a1[9] = &off_1BA5B0;
  a1[5] = v5;
  v6 = type metadata accessor for WellnessLoggingCATPatternsExecutor(0);
  sub_16D62C();
  v7 = sub_16D58C();
  a1[13] = v6;
  a1[14] = &off_1BC5D0;
  a1[10] = v7;
  v8 = type metadata accessor for WellnessQueryingCATPatternsExecutor(0);
  sub_16D62C();
  result = sub_16D58C();
  a1[18] = v8;
  a1[19] = &off_1BA360;
  a1[15] = result;
  return result;
}

uint64_t sub_BC964()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C374;

  return sub_BC174();
}

unint64_t sub_BC9FC()
{
  result = qword_1C9298;
  if (!qword_1C9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9298);
  }

  return result;
}

uint64_t sub_BCA50()
{
  v1 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_first;
  v2 = sub_16D5CC();
  sub_214C(v0 + v1, 1, 1, v2);
  sub_7DED0(OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_second);
  sub_7DED0(OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_third);
  sub_7DED0(OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_fourth);
  return v0;
}

uint64_t sub_BCAC4()
{
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_first);
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_second);
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_third);
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_fourth);
  return v0;
}

uint64_t sub_BCB50(uint64_t a1)
{
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12[-v5];
  *(v1 + 16) = 0;
  v7 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_first;
  sub_8B48();
  sub_7DA9C(a1 + v7, v1 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_first);
  v8 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_second;
  sub_8B48();
  sub_7DA9C(a1 + v8, v1 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_second);
  v9 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_third;
  sub_8B48();
  sub_7DA9C(a1 + v9, v1 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_third);
  v10 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_fourth;
  sub_8B48();
  sub_7DA9C(a1 + v10, v6);

  sub_7DB0C(v6, v1 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_fourth);
  return v1;
}

uint64_t sub_BCC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_2440(&qword_1C5800, &unk_16F510);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v27 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v27 - v16;
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  v20 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v20 || (sub_BDE58() & 1) != 0)
  {
    sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_first, v19);
    sub_16D5CC();
    sub_7DEB0(v19);
    if (!v20)
    {
      goto LABEL_33;
    }

    v21 = v19;
    goto LABEL_9;
  }

  v23 = a1 == 0x646E6F636573 && a2 == 0xE600000000000000;
  if (v23 || (sub_BDE58() & 1) != 0)
  {
    sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_second, v17);
    sub_16D5CC();
    sub_7DEB0(v17);
    if (!v20)
    {
      goto LABEL_33;
    }

    v21 = v17;
    goto LABEL_9;
  }

  v24 = a1 == 0x6472696874 && a2 == 0xE500000000000000;
  if (v24 || (sub_BDE58() & 1) != 0)
  {
    sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_third, v14);
    sub_16D5CC();
    sub_7DEB0(v14);
    if (!v20)
    {
      goto LABEL_33;
    }

    v21 = v14;
    goto LABEL_9;
  }

  if (a1 != 0x687472756F66 || a2 != 0xE600000000000000)
  {
    result = sub_BDE58();
    if ((result & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_fourth, v11);
  sub_16D5CC();
  sub_7DEB0(v11);
  if (v20)
  {
    v21 = v11;
LABEL_9:
    result = sub_6261C(v21);
LABEL_10:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

LABEL_33:
  sub_BDE84();
  sub_7DE8C();
  return (*(v26 + 32))();
}

uint64_t sub_BCF90(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1B85A0;
  v6._object = a2;
  v4 = sub_16E55C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_BCFDC(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      result = 0x646E6F636573;
      break;
    case 2:
      result = 0x6472696874;
      break;
    case 3:
      result = 0x687472756F66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_BD080@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_BCF90(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_BD0B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_BCFDC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_BD0E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_BCF90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_BD118(uint64_t a1)
{
  v2 = sub_BDBD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BD154(uint64_t a1)
{
  v2 = sub_BDBD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_BD190()
{
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_first);
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_second);
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_third);
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_fourth);
  return v0;
}

uint64_t sub_BD208(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

void sub_BD28C()
{
  sub_7D0F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_BD32C(void *a1)
{
  v3 = sub_2440(&qword_1C9548, &qword_1756D8);
  v4 = sub_42F0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v15[-v9];
  v11 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_BDBD8();
  sub_16E77C();
  v15[15] = 0;
  sub_16D5CC();
  sub_BDE40();
  sub_BDB90(v12, v13);
  sub_7DE68();
  if (!v1)
  {
    v15[14] = 1;
    sub_7DE68();
    v15[13] = 2;
    sub_7DE68();
    v15[12] = 3;
    sub_7DE68();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t sub_BD4F8(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_BD604(a1);
  return v5;
}

void sub_BD570()
{
  sub_7D0F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_BD604(uint64_t *a1)
{
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v41 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = v41 - v12;
  __chkstk_darwin(v11);
  v15 = v41 - v14;
  v44 = sub_2440(&qword_1C9538, &qword_1756D0);
  v16 = sub_42F0(v44);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  v46 = v1;
  v47 = a1;
  *(v1 + 16) = 0;
  v21 = a1[3];
  v22 = a1[4];
  v23 = a1;
  v25 = v41 - v24;
  sub_2D20(v23, v21);
  sub_BDBD8();
  v26 = v45;
  sub_16E76C();
  if (v26)
  {
    v38 = v46;

    type metadata accessor for WellnessDialogStringQuartet(0);
    v32 = *(*v38 + 48);
    v33 = *(*v38 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v45 = v10;
    v27 = v18;
    v43 = v7;
    sub_16D5CC();
    v51 = 0;
    sub_BDE40();
    v30 = sub_BDB90(v28, v29);
    v31 = v44;
    sub_16E5AC();
    v35 = v25;
    v36 = v46;
    sub_7DB0C(v15, v46 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_first);
    v50 = 1;
    sub_BDE74();
    v41[1] = v30;
    v42 = v35;
    sub_16E5AC();
    sub_7DB0C(v13, v36 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_second);
    v49 = 2;
    v37 = v45;
    sub_BDE74();
    v41[0] = 0;
    sub_16E5AC();
    v38 = v36;
    sub_7DB0C(v37, v36 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_third);
    v48 = 3;
    v39 = v42;
    v40 = v43;
    sub_BDE74();
    sub_16E5AC();
    (*(v27 + 8))(v39, v31);
    sub_7DB0C(v40, v36 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_fourth);
  }

  sub_2D64(v47);
  return v38;
}

uint64_t sub_BDAB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_BD4F8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_BDB90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_BDBD8()
{
  result = qword_1C9540;
  if (!qword_1C9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9540);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WellnessDialogStringQuartet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xBDCF8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_BDD34()
{
  result = qword_1C9550;
  if (!qword_1C9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9550);
  }

  return result;
}

unint64_t sub_BDD8C()
{
  result = qword_1C9558;
  if (!qword_1C9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9558);
  }

  return result;
}

unint64_t sub_BDDE4()
{
  result = qword_1C9560;
  if (!qword_1C9560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9560);
  }

  return result;
}

uint64_t sub_BDE58()
{

  return sub_16E6BC();
}

uint64_t *sub_BDE84()
{
  v0[3] = v1;

  return sub_9910(v0);
}

unint64_t sub_BDE9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_8388(v2, v14);
  sub_8284(v2 + 40, v13);
  v5 = objc_allocWithZone(sub_16D92C());

  v6 = sub_16D91C();
  v7 = type metadata accessor for MedsLoggingCorrectionsFlow();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = sub_BDF64(a1, v14, v13, v6, v10);
  a2[3] = v7;
  result = sub_BE348();
  a2[4] = result;
  *a2 = v11;
  return result;
}

uint64_t sub_BDF64(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v34 = a4;
  v31 = a1;
  v8 = sub_16DBEC();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v33 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v15 = (a5 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_kWellnessFlowPluginIdentifier);
  *v15 = 0xD000000000000021;
  v15[1] = 0x800000000017F4D0;
  v16 = OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_correctionInput;
  v17 = sub_16C7DC();
  sub_214C(a5 + v16, 1, 1, v17);
  v18 = sub_16DBBC();
  swift_beginAccess();
  v30 = v9[2];
  v30(v14, v18, v8);
  v19 = sub_16DBDC();
  v20 = sub_16E36C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = v9;
    *v21 = 0;
    _os_log_impl(&def_259DC, v19, v20, "Initializing MedsLoggingCorrectionsFlow", v21, 2u);
    v9 = v32;
  }

  v32 = v9[1];
  (v32)(v14, v8);
  *(a5 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_matchingMeds) = v31;
  sub_8388(a2, a5 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_flowConfig);
  sub_8284(a3, a5 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_provider);
  *(a5 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_intentHandler) = v34;
  *(a5 + 16) = 0;
  v22 = a5 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_correctionsExitValue;
  strcpy((a5 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_correctionsExitValue), "initial value");
  *(v22 + 14) = -4864;
  v23 = enum case for CorrectionsExitValue.failure(_:);
  v24 = sub_16C71C();
  (*(*(v24 - 8) + 104))(v22, v23, v24);
  swift_beginAccess();
  v30(v33, v18, v8);
  swift_unknownObjectRetain();
  v25 = sub_16DBDC();
  v26 = sub_16E36C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&def_259DC, v25, v26, "Initialized LoggingCorrectionsFlow", v27, 2u);
  }

  sub_C938(a3);
  sub_2D64(a2);
  (v32)(v33, v8);
  return a5;
}

unint64_t sub_BE348()
{
  result = qword_1C9568;
  if (!qword_1C9568)
  {
    type metadata accessor for MedsLoggingCorrectionsFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9568);
  }

  return result;
}

uint64_t sub_BE3BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 200))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_BE400(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t hasStatusOrSchedule(from:)(uint64_t result)
{
  if (result)
  {
    if (sub_16CCEC() || (result = sub_16CCDC()) != 0)
    {

      return 1;
    }
  }

  return result;
}

uint64_t isTimeframeToday(from:todayDate:)(uint64_t a1, uint64_t a2)
{
  v175 = a2;
  v3 = sub_16CA4C();
  v4 = sub_42F0(v3);
  v164 = v5;
  v165 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_4304();
  v153 = v9 - v8;
  v163 = sub_2440(&qword_1C6978, &qword_172590);
  v10 = sub_8B38(v163);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v13);
  v161 = &v152 - v14;
  v15 = sub_2440(&qword_1C6980, &qword_172598);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v17);
  sub_13058();
  __chkstk_darwin(v18);
  sub_13058();
  __chkstk_darwin(v19);
  sub_13058();
  v21 = __chkstk_darwin(v20);
  v23 = &v152 - v22;
  __chkstk_darwin(v21);
  v160 = &v152 - v24;
  sub_CA04();
  v25 = sub_16DBEC();
  v26 = sub_42F0(v25);
  v169 = v27;
  v170 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_4304();
  v168 = v31 - v30;
  sub_CA04();
  v174 = sub_16C09C();
  v32 = sub_42F0(v174);
  v177 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_4304();
  v173 = v37 - v36;
  sub_CA04();
  v172 = sub_16C0BC();
  v38 = sub_42F0(v172);
  v166 = v39;
  v41 = *(v40 + 64);
  __chkstk_darwin(v38);
  sub_4304();
  v171 = v43 - v42;
  sub_CA04();
  v44 = sub_16CB8C();
  v45 = sub_42F0(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  __chkstk_darwin(v45);
  sub_4304();
  v52 = v51 - v50;
  v53 = sub_2440(&qword_1C69A8, &qword_1725A8);
  v54 = sub_8B38(v53);
  v56 = *(v55 + 64);
  __chkstk_darwin(v54);
  v58 = &v152 - v57;
  v59 = sub_2440(&qword_1C69B0, qword_1725B0);
  v60 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59 - 8);
  sub_887C();
  v63 = v61 - v62;
  v65 = __chkstk_darwin(v64);
  v67 = &v152 - v66;
  __chkstk_darwin(v65);
  v69 = &v152 - v68;
  v176 = a1;
  v155 = v23;
  if (a1 && sub_16CCFC())
  {
    sub_16CB7C();
  }

  else
  {
    sub_8AB4();
    sub_214C(v70, v71, v72, v44);
  }

  (*(v47 + 104))(v67, enum case for UsoEntity_common_DateTime.DefinedValues.common_DateTime_Now(_:), v44);
  sub_388E4();
  sub_214C(v73, v74, v75, v44);
  v76 = *(v53 + 48);
  sub_74678(v69, v58, &qword_1C69B0, qword_1725B0);
  sub_74678(v67, &v58[v76], &qword_1C69B0, qword_1725B0);
  sub_BFAB8(v58);
  if (v79)
  {
    sub_8748(v67, &qword_1C69B0, qword_1725B0);
    sub_BFA50();
    sub_BFAB8(&v58[v76]);
    if (v79)
    {
      v77 = &qword_1C69B0;
      v78 = qword_1725B0;
LABEL_61:
      sub_8748(v58, v77, v78);
      goto LABEL_62;
    }

    goto LABEL_13;
  }

  sub_74678(v58, v63, &qword_1C69B0, qword_1725B0);
  sub_BFAB8(&v58[v76]);
  if (v79)
  {
    sub_BFAA0(v67);
    sub_BFAA0(v69);
    (*(v47 + 8))(v63, v44);
LABEL_13:
    sub_8748(v58, &qword_1C69A8, &qword_1725A8);
    goto LABEL_14;
  }

  (*(v47 + 32))(v52, &v58[v76], v44);
  sub_BF9D0(&qword_1C69B8, &type metadata accessor for UsoEntity_common_DateTime.DefinedValues);
  v97 = sub_16E19C();
  v98 = *(v47 + 8);
  v98(v52, v44);
  sub_8748(v67, &qword_1C69B0, qword_1725B0);
  sub_8748(v69, &qword_1C69B0, qword_1725B0);
  v98(v63, v44);
  sub_8748(v58, &qword_1C69B0, qword_1725B0);
  if (v97)
  {
    goto LABEL_62;
  }

LABEL_14:
  v80 = v176;
  if (v176 && sub_16CCFC())
  {
    v81 = sub_16CB9C();

    if (v81)
    {
      sub_16CA5C();
      sub_BFA88();
      sub_16CB1C();
      sub_BFA6C();
      v82 = v80 ^ 1;
      v80 = v176;
      goto LABEL_20;
    }
  }

  else
  {
    v81 = 0;
  }

  v82 = 0;
LABEL_20:
  v83 = v171;
  sub_16C08C();
  v84 = v177;
  v85 = *(v177 + 104);
  v87 = v173;
  v86 = v174;
  v85(v173, enum case for Calendar.Component.year(_:), v174);
  v88 = sub_16C0AC();
  v89 = *(v84 + 8);
  v177 = v84 + 8;
  v167 = v89;
  v89(v87, v86);
  v166 = *(v166 + 8);
  (v166)(v83, v172);
  v162 = v81 == v88;
  if (v80)
  {
    v90 = sub_16CCFC();
    if (v90)
    {
      sub_16CB9C();
      sub_BFA88();
      v90 = sub_16CA2C();

      if (v90)
      {
        sub_16CC4C();
        sub_BFA88();
        sub_16CB1C();
        sub_BFA6C();
        v154 = v80 ^ 1;
        v80 = v176;
        goto LABEL_26;
      }
    }
  }

  else
  {
    v90 = 0;
  }

  v154 = 0;
LABEL_26:
  v91 = v171;
  sub_16C08C();
  v93 = v173;
  v92 = v174;
  v85(v173, enum case for Calendar.Component.month(_:), v174);
  v94 = sub_16C0AC();
  v167(v93, v92);
  (v166)(v91, v172);
  v95 = v90 == v94;
  if (v80)
  {
    if (sub_16CCFC())
    {
      v96 = sub_16CB9C();

      if (v96)
      {
        sub_16CA1C();
        sub_BFA88();
        sub_16CB1C();
        sub_BFA6C();
        LOBYTE(v80) = v80 ^ 1;
        goto LABEL_35;
      }
    }

    else
    {
      v96 = 0;
    }

    LOBYTE(v80) = 0;
  }

  else
  {
    v96 = 0;
  }

LABEL_35:
  v99 = v82 & v162;
  v162 = v154 & v95;
  v100 = v171;
  sub_16C08C();
  v102 = v173;
  v101 = v174;
  v85(v173, enum case for Calendar.Component.day(_:), v174);
  v103 = sub_16C0AC();
  v167(v102, v101);
  (v166)(v100, v172);
  v104 = v80 & (v96 == v103);
  v105 = sub_16DBBC();
  swift_beginAccess();
  (*(v169 + 16))(v168, v105, v170);
  v106 = v176;

  v107 = sub_16DBDC();
  v108 = sub_16E36C();
  if (!os_log_type_enabled(v107, v108))
  {

    v113 = v164;
    v111 = v165;
    v114 = v106;
    goto LABEL_51;
  }

  LODWORD(v174) = v108;
  v109 = swift_slowAlloc();
  *v109 = 67109888;
  LODWORD(v177) = v99;
  *(v109 + 4) = v99;
  *(v109 + 8) = 1024;
  *(v109 + 10) = v162;
  *(v109 + 14) = 1024;
  LODWORD(v175) = v104;
  *(v109 + 16) = v104;
  *(v109 + 20) = 1024;
  v110 = v164;
  v111 = v165;
  if (v106 && sub_16CCFC())
  {
    sub_16CB9C();
    sub_BFA88();
    v112 = v160;
    sub_16CA3C();
  }

  else
  {
    v112 = v160;
    sub_8AB4();
    sub_214C(v115, v116, v117, v111);
  }

  v113 = v110;
  v118 = v155;
  (*(v110 + 104))(v155, enum case for UsoEntity_common_Date.DefinedValues.common_Date_Today(_:), v111);
  sub_388E4();
  sub_214C(v119, v120, v121, v111);
  v122 = *(v163 + 48);
  v123 = v161;
  sub_74678(v112, v161, &qword_1C6980, &qword_172598);
  sub_74678(v118, v123 + v122, &qword_1C6980, &qword_172598);
  sub_BFA18(v123);
  if (!v79)
  {
    v126 = v152;
    sub_74678(v123, v152, &qword_1C6980, &qword_172598);
    sub_BFA18(v123 + v122);
    if (!v127)
    {
      v128 = v123 + v122;
      v129 = v153;
      (*(v113 + 32))(v153, v128, v111);
      sub_BFA38();
      sub_BF9D0(v130, v131);
      LODWORD(v173) = sub_16E19C();
      v132 = *(v164 + 8);
      v132(v129, v165);
      sub_8748(v118, &qword_1C6980, &qword_172598);
      sub_8748(v160, &qword_1C6980, &qword_172598);
      v132(v126, v165);
      v113 = v164;
      v111 = v165;
      sub_8748(v123, &qword_1C6980, &qword_172598);
      v125 = v173 & 1;
      goto LABEL_50;
    }

    sub_BFA50();
    v124 = v161;
    sub_8748(v160, &qword_1C6980, &qword_172598);
    (*(v113 + 8))(v126, v111);
LABEL_49:
    sub_8748(v124, &qword_1C6978, &qword_172590);
    v125 = 0;
    goto LABEL_50;
  }

  sub_BFA50();
  v124 = v161;
  sub_8748(v112, &qword_1C6980, &qword_172598);
  sub_BFA18(v124 + v122);
  if (!v79)
  {
    goto LABEL_49;
  }

  sub_8748(v124, &qword_1C6980, &qword_172598);
  v125 = 1;
LABEL_50:
  v104 = v175;
  *(v109 + 22) = v125;
  v114 = v176;

  _os_log_impl(&def_259DC, v107, v174, "isThisYear: %{BOOL}d,\nisThisMonth: %{BOOL}d,\nisThisDay: %{BOOL}d,\ndefinedValue: %{BOOL}d", v109, 0x1Au);

  v99 = v177;
LABEL_51:
  v133 = v162;
  (*(v169 + 8))(v168, v170);
  if ((v99 & v133 & v104 & 1) == 0)
  {
    if (v114 && sub_16CCFC())
    {
      sub_16CB9C();
      sub_BFA88();
      v134 = v157;
      sub_16CA3C();
    }

    else
    {
      v134 = v157;
      sub_8AB4();
      sub_214C(v135, v136, v137, v111);
    }

    v58 = v159;
    v138 = v158;
    v139 = v156;
    (*(v113 + 104))(v156, enum case for UsoEntity_common_Date.DefinedValues.common_Date_Today(_:), v111);
    sub_388E4();
    sub_214C(v140, v141, v142, v111);
    v143 = *(v163 + 48);
    sub_74678(v134, v58, &qword_1C6980, &qword_172598);
    sub_74678(v139, &v58[v143], &qword_1C6980, &qword_172598);
    sub_BFA18(v58);
    if (!v79)
    {
      sub_74678(v58, v138, &qword_1C6980, &qword_172598);
      sub_BFA18(&v58[v143]);
      if (!v146)
      {
        v147 = &v58[v143];
        v148 = v153;
        (*(v113 + 32))(v153, v147, v111);
        sub_BFA38();
        sub_BF9D0(v149, v150);
        v144 = sub_16E19C();
        v151 = *(v113 + 8);
        v151(v148, v111);
        sub_BFAA0(v139);
        sub_BFAA0(v134);
        v151(v138, v111);
        sub_BFAA0(v58);
        return v144 & 1;
      }

      sub_BFA50();
      sub_8748(v134, &qword_1C6980, &qword_172598);
      (*(v113 + 8))(v138, v111);
LABEL_67:
      sub_8748(v58, &qword_1C6978, &qword_172590);
      v144 = 0;
      return v144 & 1;
    }

    sub_BFA50();
    sub_8748(v134, &qword_1C6980, &qword_172598);
    sub_BFA18(&v58[v143]);
    if (!v79)
    {
      goto LABEL_67;
    }

    v77 = &qword_1C6980;
    v78 = &qword_172598;
    goto LABEL_61;
  }

LABEL_62:
  v144 = 1;
  return v144 & 1;
}

uint64_t isTimeframeNone(from:)(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (!sub_16CCFC())
  {
    return 1;
  }

  return 0;
}

uint64_t getMedEventDateTime(from:)(uint64_t result)
{
  if (result)
  {
    return sub_16CCFC();
  }

  return result;
}

uint64_t getMedStatus(from:)(uint64_t a1)
{
  v2 = sub_16CD4C();
  v3 = sub_42F0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_4304();
  v10 = v9 - v8;
  v11 = sub_2440(&qword_1C9570, &qword_175928);
  v12 = sub_8B38(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v17 = sub_2440(&qword_1C9578, &qword_175930);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_887C();
  v21 = v19 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v40 - v24;
  __chkstk_darwin(v23);
  v27 = &v40 - v26;
  if (a1 && sub_16CCDC())
  {
    sub_16CD3C();
  }

  else
  {
    sub_8AB4();
    sub_214C(v28, v29, v30, v2);
  }

  (*(v5 + 104))(v25, enum case for UsoEntity_common_CompletionStatus.DefinedValues.common_CompletionStatus_NotCompleted(_:), v2);
  sub_388E4();
  sub_214C(v31, v32, v33, v2);
  v34 = *(v11 + 48);
  sub_74678(v27, v16, &qword_1C9578, &qword_175930);
  sub_74678(v25, &v16[v34], &qword_1C9578, &qword_175930);
  sub_BFAD8(v16);
  if (!v36)
  {
    sub_74678(v16, v21, &qword_1C9578, &qword_175930);
    sub_BFAD8(&v16[v34]);
    if (!v36)
    {
      (*(v5 + 32))(v10, &v16[v34], v2);
      sub_BF9D0(&qword_1C9580, &type metadata accessor for UsoEntity_common_CompletionStatus.DefinedValues);
      v37 = sub_16E19C();
      v38 = *(v5 + 8);
      v38(v10, v2);
      sub_8748(v25, &qword_1C9578, &qword_175930);
      sub_8748(v27, &qword_1C9578, &qword_175930);
      v38(v21, v2);
      sub_8748(v16, &qword_1C9578, &qword_175930);
      v35 = v37 ^ 1;
      return v35 & 1;
    }

    sub_4B43C(v25);
    sub_4B43C(v27);
    (*(v5 + 8))(v21, v2);
LABEL_13:
    sub_8748(v16, &qword_1C9570, &qword_175928);
    v35 = 1;
    return v35 & 1;
  }

  sub_4B43C(v25);
  sub_4B43C(v27);
  sub_BFAD8(&v16[v34]);
  if (!v36)
  {
    goto LABEL_13;
  }

  sub_8748(v16, &qword_1C9578, &qword_175930);
  v35 = 0;
  return v35 & 1;
}

uint64_t isTimeframeTodayOrNone(from:todayDate:)(uint64_t a1, uint64_t a2)
{
  if (!a1 || !sub_16CCFC())
  {
    return 1;
  }

  return isTimeframeToday(from:todayDate:)(a1, a2);
}

uint64_t sub_BF97C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_BF9AC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_BF9D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_BFA50()
{

  return sub_8748(v2, v0, v1);
}

uint64_t sub_BFA6C()
{
}

uint64_t sub_BFA88()
{
}

uint64_t sub_BFAA0(uint64_t a1)
{

  return sub_8748(a1, v1, v2);
}

id HKActivityRingUIViewRepresentable.makeUIView(context:)()
{
  v1 = [objc_allocWithZone(HKActivitySummary) init];
  v2 = objc_opt_self();
  v3 = [v2 largeCalorieUnit];
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = v0[2];
  v7 = *(v0 + 24);
  v8 = v0[4];
  v9 = *(v0 + 40);
  v10 = v0[8];
  v11 = v0[10];
  v30 = *(v0 + 88);
  v31 = *(v0 + 72);
  if (v0[7])
  {
    v12 = 0.0;
  }

  else
  {
    v12 = *(v0 + 6);
  }

  v13 = [objc_opt_self() quantityWithUnit:v3 doubleValue:v12];

  [v1 setActiveEnergyBurned:v13];
  v14 = [v2 largeCalorieUnit];
  v15 = sub_C0000();

  sub_C001C(v16, "setActiveEnergyBurnedGoal:");
  v17 = [v2 hourUnit];
  v18 = sub_C0000();

  sub_C001C(v19, "setAppleExerciseTime:");
  v20 = [v2 hourUnit];
  v21 = sub_C0000();

  sub_C001C(v22, "setAppleExerciseTimeGoal:");
  v23 = [v2 countUnit];
  v24 = sub_C0000();

  sub_C001C(v25, "setAppleStandHours:");
  v26 = [v2 countUnit];
  v27 = sub_C0000();

  [v1 setAppleStandHoursGoal:v27];
  v28 = [objc_allocWithZone(HKActivityRingView) init];
  [v28 setActivitySummary:v1 animated:1];

  return v28;
}

unint64_t sub_BFDF4()
{
  result = qword_1C9588;
  if (!qword_1C9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9588);
  }

  return result;
}

uint64_t sub_BFEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BFFAC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_BFF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BFFAC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_BFF74()
{
  sub_BFFAC();
  sub_16DD9C();
  __break(1u);
}

unint64_t sub_BFFAC()
{
  result = qword_1C9590;
  if (!qword_1C9590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9590);
  }

  return result;
}

id sub_C0000()
{
  v4 = *(v2 + 3048);

  return [v1 v4];
}

id sub_C001C(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t SingleActivitySummaryModel.date.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SpecificMedCompletedLogModel.requestedMedName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_8B9C();
}

uint64_t SingleActivitySummaryModel.dateLabel.setter()
{
  sub_15474();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t SpecificMedCompletedLogModel.requestedMedSchedule.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_8B9C();
}

uint64_t SingleActivitySummaryModel.timeLabel.setter()
{
  sub_15474();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t SingleActivitySummaryModel.unitLabel.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return sub_8B9C();
}

uint64_t SingleActivitySummaryModel.unitLabel.setter()
{
  sub_15474();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t SingleActivitySummaryModel.dataLabel.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return sub_8B9C();
}

uint64_t SingleActivitySummaryModel.dataLabel.setter()
{
  sub_15474();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t SingleActivitySummaryModel.snippetHeaderModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SingleActivitySummaryModel() + 44);

  return sub_C0318(v3, a1);
}

uint64_t type metadata accessor for SingleActivitySummaryModel()
{
  result = qword_1C9618;
  if (!qword_1C9618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C0318(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&dword_1C63F8, &qword_171800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SingleActivitySummaryModel.snippetHeaderModel.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SingleActivitySummaryModel() + 44);

  return sub_C03CC(a1, v3);
}

uint64_t sub_C03CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&dword_1C63F8, &qword_171800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SingleActivitySummaryModel.init(totalValue:goalValue:date:unitLabel:snippetHeaderModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v14 = sub_2440(&qword_1C5800, &unk_16F510);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v39 - v19;
  v21 = type metadata accessor for SingleActivitySummaryModel();
  a5[9] = 0;
  a5[10] = 0;
  v22 = *(v21 + 44);
  v23 = type metadata accessor for SnippetHeaderModel();
  sub_214C(a5 + v22, 1, 1, v23);
  v24 = trunc(a6);
  if (a6 > -9.22337204e18 && a6 < 9.22337204e18 && v24 == a6)
  {
    *a5 = a6;
  }

  else
  {
    *a5 = 0;
  }

  if (a7 <= -9.22337204e18)
  {
    v28 = 0;
  }

  else
  {
    v27 = trunc(a7) == a7 && a7 < 9.22337204e18;
    v28 = a7;
    if (!v27)
    {
      v28 = 0;
    }
  }

  a5[1] = v28;
  a5[2] = a1;
  a5[7] = a2;
  a5[8] = a3;
  sub_5FF8C(a4, a5 + v22);
  if (a1)
  {
    sub_16D45C();
    v29 = sub_16D5CC();
    if (sub_369C(v20, 1, v29) == 1)
    {
      sub_C878(v20, &qword_1C5800, &unk_16F510);
      v30 = 0;
      v31 = 0;
    }

    else
    {
      v34 = sub_16D5BC();
      v36 = v35;
      (*(*(v29 - 8) + 8))(v20, v29);
      v39[0] = v34;
      v39[1] = v36;
      sub_9854();
      v30 = sub_16E3FC();
      v31 = v37;
    }

    a5[3] = v30;
    a5[4] = v31;
    sub_16D46C();
    if (sub_369C(v18, 1, v29) == 1)
    {
      sub_C878(a4, &dword_1C63F8, &qword_171800);
      result = sub_C878(v18, &qword_1C5800, &unk_16F510);
      v33 = 0;
      a1 = 0;
    }

    else
    {
      v33 = sub_16D5BC();
      a1 = v38;
      sub_C878(a4, &dword_1C63F8, &qword_171800);
      result = (*(*(v29 - 8) + 8))(v18, v29);
    }
  }

  else
  {
    a5[3] = 0;
    a5[4] = 0;
    result = sub_C878(a4, &dword_1C63F8, &qword_171800);
    v33 = 0;
  }

  a5[5] = v33;
  a5[6] = a1;
  return result;
}

uint64_t sub_C079C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61566C61746F74 && a2 == 0xEA00000000006575;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x756C61566C616F67 && a2 == 0xE900000000000065;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702125924 && a2 == 0xE400000000000000;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6562614C656D6974 && a2 == 0xE90000000000006CLL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6562614C74696E75 && a2 == 0xE90000000000006CLL;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6562614C61746164 && a2 == 0xE90000000000006CLL;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000012 && 0x800000000017AE80 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_16E6BC();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_C0A38(char a1)
{
  result = 0x6C61566C61746F74;
  switch(a1)
  {
    case 1:
      return 0x756C61566C616F67;
    case 2:
      return 1702125924;
    case 3:
      v3 = 1702125924;
      goto LABEL_9;
    case 4:
      v3 = 1701669236;
      goto LABEL_9;
    case 5:
      v3 = 1953066613;
      goto LABEL_9;
    case 6:
      v3 = 1635017060;
LABEL_9:
      result = v3 | 0x6562614C00000000;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_C0B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_C079C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_C0B54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_C0A30();
  *a1 = result;
  return result;
}

uint64_t sub_C0B7C(uint64_t a1)
{
  v2 = sub_C0E70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C0BB8(uint64_t a1)
{
  v2 = sub_C0E70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SingleActivitySummaryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1C9598, &qword_175AD0);
  v6 = sub_42F0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v30[-v11];
  v13 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_C0E70();
  sub_16E77C();
  v14 = *v3;
  LOBYTE(v31) = 0;
  sub_205DC();
  sub_16E66C();
  if (!v2)
  {
    v15 = v3[1];
    LOBYTE(v31) = 1;
    sub_205DC();
    sub_16E66C();
    v31 = v3[2];
    v30[7] = 2;
    sub_16D4EC();
    sub_C1A84();
    sub_C14C4(v16, v17);
    sub_205DC();
    sub_16E63C();
    v18 = v3[3];
    v19 = v3[4];
    sub_C1A5C(3);
    sub_16E61C();
    v20 = v3[5];
    v21 = v3[6];
    sub_C1A5C(4);
    sub_16E61C();
    v22 = v3[7];
    v23 = v3[8];
    sub_C1A5C(5);
    sub_16E64C();
    v24 = v3[9];
    v25 = v3[10];
    sub_C1A5C(6);
    sub_16E61C();
    v26 = *(type metadata accessor for SingleActivitySummaryModel() + 44);
    LOBYTE(v31) = 7;
    type metadata accessor for SnippetHeaderModel();
    sub_C1A9C();
    sub_C14C4(v27, v28);
    sub_205DC();
    sub_16E63C();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_C0E70()
{
  result = qword_1C95A0;
  if (!qword_1C95A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C95A0);
  }

  return result;
}

uint64_t SingleActivitySummaryModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_2440(&dword_1C63F8, &qword_171800);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v38 - v6;
  v8 = sub_2440(&qword_1C95B0, &qword_175AD8);
  v41 = sub_42F0(v8);
  v42 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v41);
  v13 = &v38 - v12;
  v14 = type metadata accessor for SingleActivitySummaryModel();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v16 + 52);
  v20 = type metadata accessor for SnippetHeaderModel();
  v44 = v19;
  v21 = v18;
  sub_214C(v18 + v19, 1, 1, v20);
  v22 = a1[3];
  v23 = a1[4];
  v43 = a1;
  v24 = sub_2D20(a1, v22);
  sub_C0E70();
  sub_16E76C();
  if (v2)
  {
    sub_C1AC8();
    v26 = v21;
    sub_2D64(v43);

    if (v24)
    {
      v27 = v21[8];
    }

    return sub_C878(v26 + v44, &dword_1C63F8, &qword_171800);
  }

  else
  {
    v25 = v41;
    v39 = v7;
    LOBYTE(v46) = 0;
    sub_C1AE8();
    *v21 = sub_16E5DC();
    sub_C1A74(1);
    sub_C1AE8();
    v21[1] = sub_16E5DC();
    sub_16D4EC();
    v45 = 2;
    sub_C1A84();
    sub_C14C4(v28, v29);
    sub_C1AE8();
    sub_16E5AC();
    v21[2] = v46;
    sub_C1A74(3);
    sub_C1AE8();
    v21[3] = sub_16E58C();
    v21[4] = v30;
    sub_C1A74(4);
    v38 = v13;
    sub_C1AE8();
    v21[5] = sub_16E58C();
    v21[6] = v31;
    sub_C1A74(5);
    v21[7] = sub_16E5BC();
    v21[8] = v32;
    sub_C1A74(6);
    v21[9] = sub_16E58C();
    v21[10] = v33;
    LOBYTE(v46) = 7;
    sub_C1A9C();
    sub_C14C4(v34, v35);
    v36 = v38;
    sub_16E5AC();
    (*(v42 + 8))(v36, v25);
    sub_C03CC(v39, v21 + v44);
    sub_C1374(v21, v40);
    sub_2D64(v43);
    return sub_C13D8(v21);
  }
}

uint64_t sub_C1374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleActivitySummaryModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C13D8(uint64_t a1)
{
  v2 = type metadata accessor for SingleActivitySummaryModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C14C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_C1550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2440(&dword_1C63F8, &qword_171800);
    v9 = a1 + *(a3 + 44);

    return sub_369C(v9, a2, v8);
  }
}

uint64_t sub_C15F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = sub_2440(&dword_1C63F8, &qword_171800);
    v8 = v5 + *(a4 + 44);

    return sub_214C(v8, a2, a2, v7);
  }

  return result;
}

void sub_C1684()
{
  sub_C1774(319, &unk_1C7AE8, &type metadata accessor for DialogCalendar);
  if (v0 <= 0x3F)
  {
    sub_BBD1C();
    if (v1 <= 0x3F)
    {
      sub_C1774(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_C1774(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16E3EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SingleActivitySummaryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SingleActivitySummaryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xC191CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_C1958()
{
  result = qword_1C9668;
  if (!qword_1C9668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9668);
  }

  return result;
}

unint64_t sub_C19B0()
{
  result = qword_1C9670;
  if (!qword_1C9670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9670);
  }

  return result;
}

unint64_t sub_C1A08()
{
  result = qword_1C9678;
  if (!qword_1C9678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9678);
  }

  return result;
}

BOOL sub_C1AF4(__int16 a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    sub_140650(*v4);
    v8 = v7;
    v10 = v9;
    sub_140650(a1);
    if (v8 == v12 && v10 == v11)
    {

      return v5 != 0;
    }

    v14 = sub_C98E4();

    ++v4;
  }

  while ((v14 & 1) == 0);
  return v5 != 0;
}

BOOL sub_C1BA4(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = sub_208C0(*v4);
    v9 = v8;
    if (v7 == sub_208C0(a1) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = sub_C98E4();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

BOOL sub_C1C54(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xEE0065636E657473;
    v8 = 0x6978456B63656863;
    switch(*v4)
    {
      case 1:
        v7 = 0xE600000000000000;
        v9 = 1634038371;
        goto LABEL_11;
      case 2:
        v7 = 0xE600000000000000;
        v9 = 1701602660;
        goto LABEL_11;
      case 3:
        v7 = 0xE600000000000000;
        v8 = 0x627265566F6ELL;
        break;
      case 4:
        v7 = 0xE400000000000000;
        v8 = 1852141679;
        break;
      case 5:
        v7 = 0xE600000000000000;
        v9 = 1633972341;
LABEL_11:
        v8 = v9 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
        break;
      case 6:
        v8 = 0x4C74736575716572;
        v7 = 0xEA0000000000676FLL;
        break;
      case 7:
        v8 = 0x736972616D6D7573;
        v7 = 0xE900000000000065;
        break;
      case 8:
        v7 = 0xE700000000000000;
        v8 = 0x74736575716572;
        break;
      default:
        break;
    }

    v10 = 0x6978456B63656863;
    v11 = 0xEE0065636E657473;
    switch(a1)
    {
      case 1:
        v11 = 0xE600000000000000;
        v12 = 1634038371;
        goto LABEL_21;
      case 2:
        v11 = 0xE600000000000000;
        v12 = 1701602660;
        goto LABEL_21;
      case 3:
        v11 = 0xE600000000000000;
        v10 = 0x627265566F6ELL;
        break;
      case 4:
        v11 = 0xE400000000000000;
        v10 = 1852141679;
        break;
      case 5:
        v11 = 0xE600000000000000;
        v12 = 1633972341;
LABEL_21:
        v10 = v12 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
        break;
      case 6:
        v10 = 0x4C74736575716572;
        v11 = 0xEA0000000000676FLL;
        break;
      case 7:
        v10 = 0x736972616D6D7573;
        v11 = 0xE900000000000065;
        break;
      case 8:
        v11 = 0xE700000000000000;
        v10 = 0x74736575716572;
        break;
      default:
        break;
    }

    if (v8 == v10 && v7 == v11)
    {

      return v5 != 0;
    }

    v14 = sub_16E6BC();

    ++v4;
  }

  while ((v14 & 1) == 0);
  return v5 != 0;
}

BOOL sub_C1F00(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_C1F30@<X0>(uint64_t *a1@<X8>)
{
  sub_16C73C();
  v2 = sub_16C58C();
  sub_8D14(v2);
  sub_16C57C();
  v3 = sub_16C2EC();
  sub_8D14(v3);
  result = sub_16C2DC();
  a1[3] = v3;
  a1[4] = &protocol witness table for PatternFlowProvider;
  *a1 = result;
  return result;
}

uint64_t sub_C1FC4()
{
  sub_A78A8();
  sub_2440(&qword_1C9680, &unk_175DE0);
  v2 = swift_allocError();
  *v3 = v0;

  return _swift_continuation_throwingResumeWithError(v1, v2);
}

BOOL sub_C2070()
{
  v0 = sub_16BF5C();
  v1 = sub_42F0(v0);
  v75 = v2;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v1);
  v79 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v77 = &v72 - v7;
  v78 = sub_16C0BC();
  v8 = sub_42F0(v78);
  v76 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_4304();
  v14 = v13 - v12;
  v15 = sub_16BE2C();
  v16 = sub_42F0(v15);
  v80 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_4304();
  v20 = sub_2440(&qword_1C5690, &dword_16F320);
  v21 = sub_4348(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v72 - v24;
  v26 = sub_16BD9C();
  v27 = sub_42F0(v26);
  v81 = v28;
  v30 = *(v29 + 64);
  __chkstk_darwin(v27);
  sub_4304();
  v33 = v32 - v31;
  sub_38B40();
  sub_A7028();
  v34 = sub_C98CC();
  sub_8B20(v34, v35, v26);
  if (v36)
  {
    sub_8748(v25, &qword_1C5690, &dword_16F320);
    return 1;
  }

  v74 = v15;
  (*(v81 + 32))(v33, v25, v26);
  v73 = v14;
  sub_16C08C();
  sub_2440(&qword_1C96C0, &qword_175E28);
  v38 = sub_16C09C();
  sub_42F0(v38);
  v40 = v39;
  v72 = v0;
  v42 = *(v41 + 72);
  v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_16F2F0;
  v45 = v44 + v43;
  v46 = v75;
  v47 = *(v40 + 104);
  v47(v45, enum case for Calendar.Component.year(_:), v38);
  v47(v45 + v42, enum case for Calendar.Component.month(_:), v38);
  v47(v45 + 2 * v42, enum case for Calendar.Component.day(_:), v38);
  sub_15EFE0();
  v48 = v77;
  sub_16BD7C();
  v49 = v79;
  sub_16BD4C();
  v50 = v73;
  sub_16C04C();

  v51 = *(v46 + 8);
  v52 = v49;
  v53 = v72;
  v51(v52, v72);
  v51(v48, v53);
  (*(v76 + 8))(v50, v78);
  v54 = sub_16BDAC();
  if (v55)
  {
    v56 = sub_C98A4();
    v57(v56, v74);
    (*(v81 + 8))(v33, v26);
    return 0;
  }

  v58 = v54;
  v59 = v81;
  v60 = sub_16BDEC();
  v61 = v74;
  if (v62)
  {
    v63 = sub_C98A4();
    v64(v63, v61);
    (*(v59 + 8))(v33, v26);
    return 0;
  }

  v65 = v60;
  v66 = sub_16BDDC();
  v68 = v67;
  v69 = sub_C98A4();
  v70(v69, v61);
  (*(v59 + 8))(v33, v26);
  if (v68)
  {
    return 0;
  }

  return !(v66 | v65) && v58 < 2;
}

uint64_t sub_C25B0()
{
  sub_8A88();
  *(v0 + 592) = v1;
  *(v0 + 352) = v2;
  *(v0 + 360) = v3;
  v4 = sub_16C0BC();
  *(v0 + 368) = v4;
  sub_888C(v4);
  *(v0 + 376) = v5;
  v7 = *(v6 + 64);
  *(v0 + 384) = sub_8BC0();
  v8 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v8);
  v10 = *(v9 + 64);
  *(v0 + 392) = sub_8BC0();
  v11 = sub_16BF5C();
  *(v0 + 400) = v11;
  sub_888C(v11);
  *(v0 + 408) = v12;
  v14 = *(v13 + 64);
  *(v0 + 416) = sub_8C38();
  *(v0 + 424) = swift_task_alloc();
  *(v0 + 432) = swift_task_alloc();
  *(v0 + 440) = swift_task_alloc();
  *(v0 + 448) = swift_task_alloc();
  v15 = sub_16DBEC();
  *(v0 + 456) = v15;
  sub_888C(v15);
  *(v0 + 464) = v16;
  v18 = *(v17 + 64);
  *(v0 + 472) = sub_8C38();
  *(v0 + 480) = swift_task_alloc();
  *(v0 + 488) = swift_task_alloc();
  v19 = sub_17960();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_C2764()
{
  v1 = v0[50];
  v2 = v0[44];
  v3 = [objc_allocWithZone(HKHealthStore) init];
  v0[62] = v3;
  v4 = sub_C98CC();
  sub_8B20(v4, v5, v1);
  if (v6)
  {
    v7 = v0[61];
    v8 = v0[57];
    v9 = v0[58];
    sub_16DBBC();
    sub_8B48();
    v10 = *(v9 + 16);
    v11 = sub_C97B8();
    v12(v11);
    v13 = sub_16DBDC();
    v14 = sub_16E37C();
    if (sub_4B3A8(v14))
    {
      *sub_1BA38() = 0;
      sub_4B3D0();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      sub_38604();
    }

    v20 = v0[61];
    v21 = v0[57];
    v22 = v0[58];

    v23 = *(v22 + 8);
    v24 = sub_C9E0();
    v25(v24);
  }

  v27 = v0[49];
  v26 = v0[50];
  v28 = v0[44];
  sub_A7028();
  v29 = sub_C98CC();
  if (sub_369C(v29, v30, v26) == 1)
  {
    v32 = v0[49];
    v31 = v0[50];
    v33 = v0[56];
    sub_16BF4C();
    v34 = sub_C98CC();
    sub_8B20(v34, v35, v31);
    if (!v6)
    {
      sub_8748(v0[49], &qword_1C57E0, &unk_171C60);
    }
  }

  else
  {
    (*(v0[51] + 32))(v0[56], v0[49], v0[50]);
  }

  v36 = v0[55];
  v37 = v0[56];
  v38 = v0[54];
  v39 = v0[50];
  v40 = v0[51];
  sub_25908(0, &qword_1C9688, HKCategoryType_ptr);
  isa = sub_16E39C(HKCategoryTypeIdentifierIntermenstrualBleeding).super.super.super.isa;
  v0[63] = isa;
  sub_25908(0, &qword_1C9690, HKCategorySample_ptr);
  v42 = *(v40 + 16);
  v0[64] = v42;
  v0[65] = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v42(v36, v37, v39);
  v42(v38, v37, v39);
  v0[66] = sub_C391C(isa, 0, v36, v38);
  v43 = async function pointer to isSiriAuthorizedToAccessHealthData(store:)[1];
  v44 = swift_task_alloc();
  v0[67] = v44;
  *v44 = v0;
  v44[1] = sub_C2A2C;

  return isSiriAuthorizedToAccessHealthData(store:)(v3);
}

uint64_t sub_C2A2C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 536);
  *v2 = *v0;
  *(v1 + 593) = v5;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_C2B14()
{
  v91 = v0;
  if (*(v0 + 593) == 1)
  {
    if ((*(v0 + 592) & 1) != 0 || *(v0 + 360) != 1)
    {
      v50 = *(v0 + 464);
      v49 = *(v0 + 472);
      v51 = *(v0 + 456);
      sub_16DBBC();
      sub_8B48();
      v52 = sub_3BD68();
      v53(v52);
      v54 = sub_16DBDC();
      v55 = sub_16E36C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = sub_1BA38();
        *v56 = 0;
        _os_log_impl(&def_259DC, v54, v55, "Saving spotting.", v56, 2u);
        sub_8A2C();
      }

      v57 = v0 + 16;
      v58 = *(v0 + 528);
      v59 = *(v0 + 496);
      v61 = *(v0 + 464);
      v60 = *(v0 + 472);
      v62 = *(v0 + 456);

      v63 = *(v61 + 8);
      v64 = sub_C98B4();
      v65(v64);
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_C34EC;
      v66 = swift_continuation_init();
      *(v0 + 200) = sub_2440(&qword_1C96A0, &qword_175E10);
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_C3A90;
      *(v0 + 168) = &unk_1BB4E8;
      *(v0 + 176) = v66;
      [v59 saveObject:v58 withCompletion:v0 + 144];
    }

    else
    {
      v86 = *(v0 + 512);
      loga = *(v0 + 520);
      v1 = *(v0 + 464);
      v79 = *(v0 + 480);
      v81 = *(v0 + 456);
      v2 = *(v0 + 440);
      v3 = *(v0 + 448);
      v82 = *(v0 + 424);
      v84 = *(v0 + 416);
      v4 = *(v0 + 400);
      v5 = *(v0 + 408);
      v7 = *(v0 + 376);
      v6 = *(v0 + 384);
      v8 = *(v0 + 368);
      v9 = objc_opt_self();
      sub_16C08C();
      sub_16C02C();
      v10 = *(v7 + 8);
      v11 = sub_C98C0();
      v77 = v12;
      v12(v11);
      isa = sub_16BEEC().super.isa;
      v14 = *(v5 + 8);
      *(v0 + 544) = v14;
      *(v0 + 552) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v14(v2, v4);
      sub_7B6B8(v2);
      v15 = sub_16BEEC().super.isa;
      v14(v2, v4);
      v78 = [v9 predicateForSamplesWithStartDate:isa endDate:v15 options:0];
      *(v0 + 560) = v78;

      sub_16DBBC();
      sub_8B48();
      v16 = *(v1 + 16);
      v17 = sub_8B9C();
      v18(v17);
      v86(v82, v3, v4);
      v86(v84, v3, v4);
      v19 = sub_16DBDC();
      v20 = sub_16E36C();
      log = v19;
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 480);
      v24 = *(v0 + 456);
      v23 = *(v0 + 464);
      if (v21)
      {
        v25 = *(v0 + 440);
        v75 = *(v0 + 424);
        v76 = *(v0 + 416);
        v83 = v20;
        v26 = *(v0 + 400);
        v27 = *(v0 + 384);
        v87 = *(v0 + 456);
        v28 = *(v0 + 368);
        v85 = *(v0 + 480);
        v29 = swift_slowAlloc();
        v90[0] = swift_slowAlloc();
        *v29 = 136315394;
        sub_16C08C();
        sub_16C02C();
        v30 = sub_C98C0();
        v77(v30);
        sub_C9498(&qword_1C96B0, &type metadata accessor for Date);
        v31 = sub_16E68C();
        v80 = v23;
        v33 = v32;
        v34 = sub_8427C();
        (v14)(v34);
        v14(v75, v26);
        v35 = sub_3AB7C(v31, v33, v90);

        *(v29 + 4) = v35;
        *(v29 + 12) = 2080;
        sub_7B6B8(v25);
        v36 = sub_16E68C();
        v38 = v37;
        v39 = sub_8427C();
        (v14)(v39);
        v14(v76, v26);
        v40 = sub_3AB7C(v36, v38, v90);

        *(v29 + 14) = v40;
        _os_log_impl(&def_259DC, log, v83, "Not spotting, preparing to delete any existing spotting entry from [%s] to [%s].", v29, 0x16u);
        swift_arrayDestroy();
        sub_8A2C();
        sub_8A2C();

        (*(v80 + 8))(v85, v87);
      }

      else
      {
        v67 = *(v0 + 416);
        v68 = *(v0 + 424);
        v69 = *(v0 + 400);

        v70 = sub_C9F8();
        (v14)(v70);
        v71 = sub_38B40();
        (v14)(v71);
        (*(v23 + 8))(v22, v24);
      }

      v57 = v0 + 80;
      v72 = *(v0 + 496);
      v73 = [*(v0 + 528) categoryType];
      *(v0 + 568) = v73;
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 344;
      *(v0 + 88) = sub_C32A0;
      v74 = swift_continuation_init();
      *(v0 + 264) = sub_2440(&qword_1C96A8, &qword_175E18);
      *(v0 + 208) = _NSConcreteStackBlock;
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_C3A0C;
      *(v0 + 232) = &unk_1BB510;
      *(v0 + 240) = v74;
      [v72 deleteObjectsOfType:v73 predicate:v78 withCompletion:v0 + 208];
    }

    return _swift_continuation_await(v57);
  }

  else
  {
    v41 = *(v0 + 528);
    v43 = *(v0 + 496);
    v42 = *(v0 + 504);
    v44 = *(v0 + 448);
    v45 = *(v0 + 400);
    v46 = *(v0 + 408);
    sub_C9418();
    swift_allocError();
    swift_willThrow();

    (*(v46 + 8))(v44, v45);
    sub_C975C();

    sub_C9BC();

    return v47();
  }
}

uint64_t sub_C32A0()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 576) = *(v3 + 112);
  sub_8ACC();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_C339C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_A7910();
  v30 = *(v24 + 568);

  sub_C9708();
  v31 = sub_16D9BC();
  isa = sub_16BEEC().super.isa;
  [v31 setDate:isa];

  if (v25)
  {
    v33 = 2;
  }

  else
  {
    v33 = v27;
  }

  [v31 setFlow:v33];

  (*(v22 + 8))(v29, v26);

  sub_5D948();
  sub_A77E4();

  return v36(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_C34EC()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 584) = *(v3 + 48);
  sub_8ACC();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_C35E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_A7910();
  sub_C9708();
  v29 = sub_16D9BC();
  isa = sub_16BEEC().super.isa;
  [v29 setDate:isa];

  if (v24)
  {
    v31 = 2;
  }

  else
  {
    v31 = v26;
  }

  [v29 setFlow:v31];

  (*(v22 + 8))(v28, v25);

  sub_5D948();
  sub_A77E4();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_C3728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  v15 = v14[72];
  v33 = v14[71];
  v16 = v14[70];
  v17 = v14[69];
  v18 = v14[68];
  v19 = v14[66];
  v20 = v14[62];
  v21 = v14[63];
  v22 = v14[56];
  v23 = v14[50];
  swift_willThrow();

  v18(v22, v23);
  v34 = v14[72];
  sub_C975C();

  sub_C9BC();
  sub_841E0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v34, a11, a12, a13, a14);
}

uint64_t sub_C382C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  v15 = v14[73];
  v16 = v14[66];
  v18 = v14[62];
  v17 = v14[63];
  v19 = v14[56];
  v20 = v14[50];
  v21 = v14[51];
  swift_willThrow();

  (*(v21 + 8))(v19, v20);
  v31 = v14[73];
  sub_C975C();

  sub_C9BC();
  sub_841E0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, a11, a12, a13, a14);
}

id sub_C391C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = sub_16BEEC().super.isa;
  v9 = sub_16BEEC().super.isa;
  v10 = [swift_getObjCClassFromMetadata() categorySampleWithType:a1 value:a2 startDate:isa endDate:v9];

  v11 = sub_16BF5C();
  v12 = *(*(v11 - 8) + 8);
  v12(a4, v11);
  v12(a3, v11);
  return v10;
}

uint64_t *sub_C3A0C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  result = sub_2D20((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a2)
  {
    v9 = *result;

    return sub_C204C(v9, a3);
  }

  else if (a4)
  {
    v10 = a4;
    return sub_C1FC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_C3A90(uint64_t a1, int a2, void *a3)
{
  result = sub_2D20((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a2)
  {
    v7 = *result;

    return j__swift_continuation_throwingResume();
  }

  else if (a3)
  {
    v8 = a3;
    return sub_C1FC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LogPeriodFlow.execute(completion:)()
{
  sub_926BC();
  sub_8427C();

  return sub_16C33C();
}

uint64_t sub_C3B5C(uint64_t a1)
{
  v2[79] = v1;
  v2[78] = a1;
  v3 = *(*(sub_16D63C() - 8) + 64) + 15;
  v2[80] = swift_task_alloc();
  v4 = sub_16DBEC();
  v2[81] = v4;
  v5 = *(v4 - 8);
  v2[82] = v5;
  v6 = *(v5 + 64) + 15;
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();

  return _swift_task_switch(sub_C3C58, 0, 0);
}

uint64_t sub_C3C58()
{
  v1 = v0[84];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[79];
  v5 = sub_C443C();
  v0[85] = v5;
  v6 = sub_16DBBC();
  v0[86] = v6;
  sub_8B48();
  v0[87] = *(v2 + 16);
  v0[88] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7 = sub_C9E0();
  v8(v7);
  v9 = v5;
  v10 = sub_16DBDC();
  LOBYTE(v1) = sub_16E36C();

  if (os_log_type_enabled(v10, v1))
  {
    sub_8BD8();
    v11 = sub_8A44();
    *v6 = 138412290;
    *(v6 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    sub_4B3D0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_8748(v11, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_38604();
  }

  v18 = v0[84];
  v19 = v0[82];
  v20 = v0[81];
  v21 = v0[79];

  v0[89] = *(v19 + 8);
  v0[90] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22 = sub_4B4EC();
  v23(v22);
  v24 = *(v21 + 240);
  v0[2] = v0;
  v0[7] = v0 + 77;
  v0[3] = sub_C3EB0;
  v25 = swift_continuation_init();
  v0[70] = sub_2440(&qword_1C96B8, &qword_175E20);
  v0[67] = v25;
  v0[63] = _NSConcreteStackBlock;
  v0[64] = 1107296256;
  v0[65] = sub_53C4;
  v0[66] = &unk_1BB538;
  [v24 handleLogPeriod:v9 completion:v0 + 63];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_C3EB0()
{
  sub_8A88();
  v7 = *v0;
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_C3F80()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 664);
  v5 = *(v0 + 648);
  v6 = *(v0 + 616);
  *(v0 + 728) = v6;
  sub_1B9B4();
  sub_8B60();
  v2();
  v7 = v6;
  v8 = sub_16DBDC();
  LOBYTE(v4) = sub_16E36C();

  if (os_log_type_enabled(v8, v4))
  {
    sub_8BD8();
    v9 = sub_8A44();
    *v1 = 138412290;
    *(v1 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    sub_4B3D0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_8748(v9, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_38604();
  }

  v16 = *(v0 + 720);
  v17 = (*(v0 + 712))(*(v0 + 664), *(v0 + 648));
  v18 = (*(&stru_20.maxprot + (swift_isaMask & *v7)))(v17);
  if (v18 == 4)
  {
    v28 = *(*(v0 + 632) + 250);
    sub_16D72C();
    v29 = swift_task_alloc();
    *(v0 + 736) = v29;
    *v29 = v0;
    v29[1] = sub_C42B4;
    v30 = *(v0 + 632);

    return sub_C467C();
  }

  else
  {
    if (v18 == 101)
    {
      v19 = *(v0 + 680);
      v20 = *(v0 + 640);
      v21 = *(v0 + 632);
      v22 = *(v0 + 624);
      v23 = *(v21 + 248);
      sub_C9294(v21 + 40, v0 + 88);
      sub_8284(v21 + 80, v0 + 128);
      v24 = sub_16C58C();
      sub_8D14(v24);
      v25 = sub_16C57C();
      *(v0 + 312) = v24;
      *(v0 + 320) = &protocol witness table for ResponseFactory;
      *(v0 + 288) = v25;
      type metadata accessor for WellnessCATsSimple();
      sub_8D2C();
      sub_8CB4();
      v26 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_8D2C();
      sub_8CB4();
      v27 = sub_16D58C();
      *(v0 + 80) = v23;
      *(v0 + 328) = v26;
      *(v0 + 336) = v27;
      sub_84F0();
      sub_16C4EC();

      sub_8544(v0 + 80);
    }

    else
    {
      v32 = *(v0 + 680);
      v33 = *(v0 + 632);
      v34 = *(v0 + 624);
      v35 = *(v33 + 250);
      sub_16D6FC();
      sub_8284(v33 + 80, v0 + 344);
      sub_82E0();
      sub_16C4EC();

      sub_8334(v0 + 344);
    }

    v36 = *(v0 + 672);
    v37 = *(v0 + 664);
    v38 = *(v0 + 640);

    sub_C9BC();

    return v39();
  }
}

uint64_t sub_C42B4()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 736);
  *v2 = *v0;
  *(v1 + 744) = v5;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_C439C()
{
  sub_386A8();
  v1 = v0[93];
  v2 = v0[91];
  v3 = v0[85];
  v4 = v0[78];
  sub_16C4FC();

  v5 = v0[84];
  v6 = v0[83];
  v7 = v0[80];

  sub_C9BC();

  return v8();
}

id sub_C443C()
{
  v1 = v0;
  v2 = sub_2440(&qword_1C5690, &dword_16F320);
  v3 = sub_4348(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - v6;
  v8 = sub_16BF5C();
  v9 = sub_42F0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_4304();
  v16 = v15 - v14;
  v17 = [objc_allocWithZone(sub_16D88C()) init];
  v18 = v0[4];
  sub_2D20(v0, v0[3]);
  v19 = *(v18 + 32);
  v20 = sub_C98B4();
  v21(v20);
  v22 = sub_16BD9C();
  sub_8B20(v7, 1, v22);
  if (v23)
  {
    sub_8748(v7, &qword_1C5690, &dword_16F320);
    v25.super.isa = 0;
  }

  else
  {
    sub_16BD7C();
    sub_5DE54(v22);
    (*(v24 + 8))(v7, v22);
    v25.super.isa = sub_16BEEC().super.isa;
    (*(v11 + 8))(v16, v8);
  }

  [v17 setDate:v25.super.isa];

  v26 = v1[3];
  v27 = v1[4];
  sub_2D20(v1, v26);
  (*(v27 + 64))(v26, v27);
  [v17 setFlow:sub_16D85C()];
  return v17;
}

uint64_t sub_C467C()
{
  sub_8A88();
  v1[135] = v0;
  v1[134] = v2;
  v3 = sub_16C46C();
  v1[136] = v3;
  sub_888C(v3);
  v1[137] = v4;
  v6 = *(v5 + 64);
  v1[138] = sub_8C38();
  v1[139] = swift_task_alloc();
  v7 = sub_16C7BC();
  v1[140] = v7;
  sub_888C(v7);
  v1[141] = v8;
  v10 = *(v9 + 64);
  v1[142] = sub_8BC0();
  v11 = sub_16DBEC();
  v1[143] = v11;
  sub_888C(v11);
  v1[144] = v12;
  v14 = *(v13 + 64);
  v1[145] = sub_8C38();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v1[150] = swift_task_alloc();
  v1[151] = swift_task_alloc();
  v1[152] = swift_task_alloc();
  v15 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v15);
  v17 = *(v16 + 64);
  v1[153] = sub_8BC0();
  v18 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v18);
  v20 = *(v19 + 64);
  v1[154] = sub_8BC0();
  v21 = type metadata accessor for CycleTrackingLogModel();
  v1[155] = v21;
  sub_4348(v21);
  v23 = *(v22 + 64);
  v1[156] = sub_8C38();
  v1[157] = swift_task_alloc();
  v1[158] = swift_task_alloc();
  v1[159] = swift_task_alloc();
  v24 = type metadata accessor for SnippetHeaderModel();
  v1[160] = v24;
  sub_4348(v24);
  v26 = *(v25 + 64);
  v1[161] = sub_8BC0();
  v27 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v27);
  v29 = *(v28 + 64);
  v1[162] = sub_8C38();
  v1[163] = swift_task_alloc();
  v1[164] = swift_task_alloc();
  v1[165] = swift_task_alloc();
  v30 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v30);
  v32 = *(v31 + 64);
  v1[166] = sub_8BC0();
  v33 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v33);
  v35 = *(v34 + 64);
  v1[167] = sub_8C38();
  v1[168] = swift_task_alloc();
  v36 = sub_16BF5C();
  v1[169] = v36;
  sub_888C(v36);
  v1[170] = v37;
  v39 = *(v38 + 64);
  v1[171] = sub_8C38();
  v1[172] = swift_task_alloc();
  v40 = sub_17960();

  return _swift_task_switch(v40, v41, v42);
}

uint64_t sub_C49EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_C9800();
  sub_C987C();
  v31 = [*(v30 + 1072) date];
  if (v31)
  {
    v32 = v31;
    v33 = *(v30 + 1376);
    v34 = *(v30 + 1368);
    v35 = *(v30 + 1360);
    v36 = *(v30 + 1352);
    v37 = *(v30 + 1080);
    sub_16BF3C();

    v38 = *(v35 + 32);
    v39 = sub_C9F8();
    v40(v39);
    v41 = v37[4];
    sub_2D20(v37, v37[3]);
    v42 = *(v41 + 24);
    v43 = sub_C9F8();
    v45 = v44(v43);
    if (v45 == 270)
    {
LABEL_3:
      v46 = 248;
      goto LABEL_17;
    }

    sub_140650(v45);
    if (v81 == 0x676E6974746F7073 && v80 == 0xE800000000000000)
    {
    }

    else
    {
      sub_8B60();
      v83 = sub_16E6BC();

      if ((v83 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v46 = 249;
LABEL_17:
    v84 = *(v30 + 1376);
    v85 = *(v30 + 1360);
    v86 = *(v30 + 1352);
    v87 = *(v30 + 1344);
    v88 = *(v30 + 1328);
    v89 = *(*(v30 + 1080) + v46);
    *(v30 + 1594) = v89;
    (*(v85 + 16))(v88, v84, v86);
    sub_388E4();
    sub_214C(v90, v91, v92, v86);
    sub_1218BC(v89, v88, v87);
    sub_8748(v88, &qword_1C57E0, &unk_171C60);
    *(v30 + 680) = &type metadata for WellnessFeatureFlagsKey;
    *(v30 + 688) = sub_3736C();
    *(v30 + 656) = 4;
    LOBYTE(v87) = sub_16C86C();
    sub_2D64((v30 + 656));
    v93 = *(v30 + 1376);
    if (v87)
    {
      v94 = *(v30 + 1072);
      sub_16D4EC();
      *(v30 + 1384) = sub_16D47C();
      *(v30 + 1392) = [v94 flow];
      v95 = swift_task_alloc();
      *(v30 + 1400) = v95;
      *v95 = v30;
      v95[1] = sub_C4F4C;
      sub_C98D8(0x617254656C637963);
      sub_A78CC();

      return sub_66A84(v96, v97);
    }

    else
    {
      v99 = *(v30 + 1344);
      v100 = *(v30 + 1080);
      v101 = *(v30 + 1072);
      v102 = sub_2D20((v100 + 160), *(v100 + 184));
      v103 = swift_task_alloc();
      *(v30 + 1568) = v103;
      v103[2] = v100;
      v103[3] = v93;
      v103[4] = v101;
      v103[5] = v99;
      v104 = *v102;
      v105 = swift_task_alloc();
      *(v30 + 1576) = v105;
      *v105 = v30;
      v105[1] = sub_C693C;
      sub_A78CC();

      return sub_10B5F4();
    }
  }

  v47 = *(v30 + 1168);
  sub_C9908();
  v48 = *(v30 + 1072);
  sub_16DBBC();
  sub_8B48();
  v49 = sub_3BD68();
  v50(v49);
  v51 = v48;
  v52 = sub_16DBDC();
  v53 = sub_16E37C();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = *(v30 + 1072);
    v55 = sub_8BD8();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    *(v55 + 4) = v54;
    *v56 = v54;
    v57 = v54;
    sub_8420C();
    _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
    sub_8748(v56, &qword_1C57B8, &qword_1715A0);
    sub_38604();
    sub_1BA00();
  }

  v63 = *(v30 + 1168);
  v64 = *(v30 + 1152);
  v65 = *(v30 + 1144);
  v66 = *(v30 + 1080);

  v67 = *(v64 + 8);
  v68 = sub_C9F8();
  v69(v68);
  sub_8284(v66 + 80, v30 + 16);
  sub_82E0();
  v107 = sub_16C32C();
  sub_8334(v30 + 16);
  sub_C961C();
  sub_C979C(v70);

  sub_8938();
  sub_A78CC();

  return v73(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v107, a28, a29, a30);
}

uint64_t sub_C4F4C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 1400);
  *v2 = *v0;
  *(v1 + 1408) = v5;
  *(v1 + 1416) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_C5038()
{
  v1 = v0[135];
  v0[178] = v1[32];
  v2 = v1[4];
  sub_2D20(v1, v1[3]);
  v3 = *(v2 + 24);
  v4 = sub_C9E0();
  v6 = v5(v4);
  if (v6 == 270)
  {
    v7 = 1;
  }

  else
  {
    v8 = v0[165];
    sub_140650(v6);
    sub_16E23C();

    v7 = 0;
  }

  v9 = v0[165];
  v10 = v0[174];
  v11 = sub_16D5CC();
  sub_214C(v9, v7, 1, v11);
  v12 = swift_task_alloc();
  v0[179] = v12;
  *v12 = v0;
  v12[1] = sub_C5178;
  sub_C98D8(v0[165]);

  return sub_164694();
}

uint64_t sub_C5178()
{
  sub_386A8();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 1432);
  v7 = *(v5 + 1320);
  v8 = *v1;
  sub_C990();
  *v9 = v8;
  v3[180] = v10;
  v3[181] = v0;

  sub_8748(v7, &qword_1C5800, &unk_16F510);
  if (v0)
  {
    v11 = v3[177];
  }

  sub_8ACC();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_C52B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_C9800();
  sub_C987C();
  v35 = [*(v30 + 1440) dialog];
  *(v30 + 1456) = sub_25908(0, &qword_1C6E48, DialogElement_ptr);
  v36 = sub_16E2CC();

  if (!sub_3B35C(v36))
  {
    v49 = *(v30 + 1440);
    v50 = *(v30 + 1416);

    goto LABEL_8;
  }

  sub_3B360(0, (v36 & 0xC000000000000001) == 0, v36);
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = sub_16E48C();
  }

  else
  {
    v37 = *(v36 + 32);
  }

  v38 = v37;
  v31 = *(v30 + 1440);
  v32 = *(v30 + 1416);

  v39 = [v38 fullPrint];

  v40 = sub_16E1BC();
  v42 = v41;

  *(v30 + 1464) = v40;
  *(v30 + 1472) = v42;
  if (!v32)
  {
    goto LABEL_8;
  }

  v43 = *(v30 + 1416);
  v44 = *(v30 + 1080);
  v31 = v44[3];
  v32 = v44[4];
  sub_2D20(v44, v31);
  v45 = *(v32 + 24);
  v46 = sub_3E1B8();
  v48 = v47(v46);
  *(v30 + 1592) = v48;
  if (v48 == 270)
  {

LABEL_8:

    v51 = *(v30 + 1184);
    sub_C9908();
    v52 = sub_16DBBC();
    sub_8B48();
    v53 = sub_3BD68();
    v54(v53);
    sub_16DBDC();
    v55 = sub_16E37C();
    if (sub_1BA1C(v55))
    {
      v56 = sub_1BA38();
      sub_1BA50(v56);
      sub_8420C();
      _os_log_impl(v57, v58, v59, v60, v61, 2u);
      sub_1BA00();
    }

    sub_C97C8();
    v62 = *(v34 + 8);
    v63 = sub_C98B4();
    v64(v63);
    sub_8284(v52 + 80, v30 + 336);
    sub_82E0();
    v79 = sub_16C32C();

    sub_8334(v30 + 336);
    sub_8748(v32, &qword_1C57F8, &unk_172510);
    (*(v33 + 8))(a26, v31);
    sub_C961C();
    sub_C979C(v65);

    sub_8938();
    sub_A78CC();

    return v68(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v79, a28, a29, a30);
  }

  v75 = swift_task_alloc();
  *(v30 + 1480) = v75;
  *v75 = v30;
  v75[1] = sub_C5688;
  sub_C98D8(0x646567676F6CLL);
  sub_A78CC();

  return sub_66A84(v76, v77);
}

uint64_t sub_C5688()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 1480);
  *v2 = *v0;
  *(v1 + 1488) = v5;
  *(v1 + 1496) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_C5774()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1488);
  v3 = *(v0 + 1416);
  v4 = *(v0 + 1408);
  v5 = *(v0 + 1384);
  v91 = *(v0 + 1336);
  v88 = *(v0 + 1312);
  v6 = *(v0 + 1288);
  v7 = *(v0 + 1280);
  v95 = *(v0 + 1344);
  v97 = *(v0 + 1264);
  v8 = *(v0 + 1232);
  v9 = *(v0 + 1594);
  sub_16E23C();

  v10 = sub_25948(v9);
  v12 = v11;
  v13 = sub_208C0(v9);
  v14 = (v6 + *(v7 + 20));
  *v14 = v10;
  v14[1] = v12;
  v15 = (v6 + *(v7 + 24));
  *v15 = v13;
  v15[1] = v16;
  v93 = v1;
  v17 = 0x646567676F4CLL;
  if (v1)
  {
    v17 = v2;
  }

  v90 = v17;
  sub_C91E4();
  sub_388E4();
  sub_214C(v18, v19, v20, v7);
  sub_A7028();
  v92 = sub_16C11C();
  sub_214C(v97, 1, 1, v92);
  swift_retain_n();
  sub_16D45C();
  v21 = sub_16D5CC();
  *(v0 + 1504) = v21;
  sub_8B20(v88, 1, v21);
  v96 = v21;
  if (v22)
  {
    sub_8748(*(v0 + 1312), &qword_1C5800, &unk_16F510);
    v31 = 0;
    v33 = 0;
  }

  else
  {
    v23 = *(v0 + 1312);
    v24 = sub_16D5BC();
    v26 = v25;
    sub_5DE54(v21);
    v28 = *(v27 + 8);
    v29 = sub_38B40();
    v30(v29);
    *(v0 + 1040) = v24;
    *(v0 + 1048) = v26;
    sub_9854();
    v31 = sub_16E3FC();
    v33 = v32;
  }

  v34 = *(v0 + 1496);
  v35 = *(v0 + 1472);
  v36 = *(v0 + 1464);
  v84 = *(v0 + 1384);
  v37 = *(v0 + 1336);
  v85 = *(v0 + 1272);
  v38 = *(v0 + 1264);
  v89 = *(v0 + 1256);
  v39 = *(v0 + 1240);
  v40 = *(v0 + 1232);
  v41 = *(v0 + 1224);
  v86 = *(v0 + 1216);
  v42 = *(v0 + 1152);
  v87 = *(v0 + 1144);
  v43 = (v38 + v39[5]);
  *v43 = v31;
  v43[1] = v33;
  v44 = (v38 + v39[6]);
  if (!v93)
  {
    v34 = 0xE600000000000000;
  }

  *v44 = v90;
  v44[1] = v34;
  v45 = (v38 + v39[7]);
  *v45 = v36;
  v45[1] = v35;
  v46 = v39[8];
  sub_A7028();
  v47 = v39[9];
  sub_A7028();
  sub_14F138(v37);

  sub_8748(v37, &qword_1C57F8, &unk_172510);
  v48 = sub_C9F8();
  sub_8748(v48, v49, &qword_171800);
  sub_388E4();
  sub_214C(v50, v51, v52, v92);
  sub_C93C0();
  sub_C9180(v38, v85);
  v53 = sub_16DBBC();
  *(v0 + 1512) = v53;
  sub_8B48();
  v54 = *(v42 + 16);
  *(v0 + 1520) = v54;
  *(v0 + 1528) = (v42 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v54(v86, v53, v87);
  sub_C96F0();
  sub_C91E4();
  v55 = sub_16DBDC();
  v56 = sub_16E36C();
  v57 = sub_4B3A8(v56);
  v58 = *(v0 + 1256);
  if (v57)
  {
    v59 = *(v0 + 1248);
    v60 = *(v0 + 1240);
    v94 = *(v0 + 1216);
    v61 = *(v0 + 1152);
    v62 = *(v0 + 1144);
    v63 = sub_8BD8();
    v98 = swift_slowAlloc();
    *v63 = 136315138;
    sub_C96F0();
    sub_C91E4();
    sub_C9F8();
    sub_16E1EC();
    sub_C96D8();
    sub_C923C(v58, v64);
    v65 = sub_C9F8();
    v68 = sub_3AB7C(v65, v66, v67);

    *(v63 + 4) = v68;
    _os_log_impl(&def_259DC, v55, v56, "#LogPeriodFlow: Snippet model %s", v63, 0xCu);
    sub_2D64(v98);
    sub_8A2C();
    sub_8A2C();

    v69 = *(v61 + 8);
    v69(v94, v62);
  }

  else
  {
    v70 = *(v0 + 1216);
    v71 = *(v0 + 1152);
    v72 = *(v0 + 1144);

    sub_C96D8();
    sub_C923C(v58, v73);
    v69 = *(v71 + 8);
    v74 = sub_C9F8();
    v69(v74, v75);
  }

  *(v0 + 1536) = v69;
  v76 = *(v0 + 1304);
  v77 = *(v0 + 1392);
  sub_140650(*(v0 + 1592));
  sub_16E23C();

  sub_388E4();
  sub_214C(v78, v79, v80, v96);
  v81 = swift_task_alloc();
  *(v0 + 1544) = v81;
  *v81 = v0;
  v81[1] = sub_C5D10;
  v82 = *(v0 + 1424);
  sub_C98D8(*(v0 + 1304));

  return sub_164294();
}

uint64_t sub_C5D10()
{
  sub_386A8();
  v2 = *v1;
  sub_38388();
  *v4 = v3;
  v5 = v2[193];
  v6 = *v1;
  sub_38440();
  *v7 = v6;
  *(v9 + 1552) = v8;

  v10 = v2[173];
  v11 = v2[163];
  if (v0)
  {

    sub_8748(v11, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v11, &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_C5E8C()
{
  sub_8430C();
  v1 = v0[194];
  v2 = v0[191];
  v3 = v0[190];
  v4 = v0[189];
  v5 = v0[151];
  v6 = v0[143];
  sub_1B9B4();
  v7 = sub_38408();
  v3(v7);
  v8 = v1;
  v9 = sub_16DBDC();
  v10 = sub_16E36C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[194];
    v12 = v0[182];
    v13 = sub_8BD8();
    v78 = swift_slowAlloc();
    *v13 = 136315138;
    v14 = [v11 dialog];
    v15 = sub_16E2CC();

    if (sub_3B35C(v15))
    {
      sub_3B360(0, (v15 & 0xC000000000000001) == 0, v15);
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = sub_16E48C();
      }

      else
      {
        v16 = *(v15 + 32);
      }

      v17 = v16;

      v18 = [v17 fullPrint];

      v19 = sub_16E1BC();
      v21 = v20;
    }

    else
    {

      v19 = 0;
      v21 = 0;
    }

    v76 = v0[192];
    v27 = v0[151];
    v28 = v0[144];
    v29 = v0[143];
    v0[128] = v19;
    v0[129] = v21;
    sub_2440(&qword_1C69C8, &qword_174150);
    sub_16E3DC();

    v30 = sub_C98C0();
    v33 = sub_3AB7C(v30, v31, v32);

    *(v13 + 4) = v33;
    sub_38EA4(&def_259DC, v34, v35, "#LogPeriodFlow: Snippet dialog is %s");
    sub_2D64(v78);
    sub_8A2C();
    sub_38604();

    v36 = sub_C98B4();
    v76(v36);
  }

  else
  {
    v22 = v0[192];
    v23 = v0[151];
    v24 = v0[144];
    v25 = v0[143];

    v26 = sub_38B40();
    v22(v26);
  }

  v37 = v0[191];
  v38 = v0[190];
  v39 = v0[189];
  v40 = v0[173];
  v41 = v0[150];
  v42 = v0[143];
  sub_1B9B4();
  v43 = sub_38408();
  v38(v43);

  v44 = sub_16DBDC();
  LOBYTE(v42) = sub_16E36C();

  if (os_log_type_enabled(v44, v42))
  {
    v45 = v0[188];
    v46 = v0[173];
    v47 = v0[162];
    v48 = sub_8BD8();
    v49 = swift_slowAlloc();
    *v48 = 136315138;
    sub_16D45C();
    sub_8B20(v47, 1, v45);
    if (v50)
    {
      sub_8748(v0[162], &qword_1C5800, &unk_16F510);
      v58 = 0;
      v60 = 0;
    }

    else
    {
      v56 = v0[188];
      v57 = v0[162];
      v58 = sub_16D5BC();
      v60 = v59;
      sub_5DE54(v56);
      (*(v61 + 8))(v57, v56);
    }

    v77 = v0[150];
    v79 = v0[192];
    v62 = v0[144];
    v63 = v0[143];
    v0[126] = v58;
    v0[127] = v60;
    sub_2440(&qword_1C69C8, &qword_174150);
    sub_16E3DC();

    v64 = sub_C98C0();
    v67 = sub_3AB7C(v64, v65, v66);

    *(v48 + 4) = v67;
    sub_38EA4(&def_259DC, v68, v69, "#LogPeriodFlow: Date is %s");
    sub_2D64(v49);
    sub_89F4();
    sub_38604();

    v79(v77, v63);
  }

  else
  {
    v51 = v0[192];
    v52 = v0[150];
    v53 = v0[144];
    v54 = v0[143];

    v55 = sub_38B40();
    v51(v55);
  }

  v70 = v0[159];
  v0[95] = type metadata accessor for WellnessSnippets();
  v0[96] = sub_C9498(&qword_1C5EE0, type metadata accessor for WellnessSnippets);
  sub_9910(v0 + 92);
  sub_C96F0();
  sub_38B40();
  sub_C91E4();
  sub_8427C();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  v0[195] = v71;
  *v71 = v72;
  v71[1] = sub_C6390;
  v73 = v0[194];
  sub_841E0();

  return sub_672C0();
}

uint64_t sub_C6390()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 1560);
  v6 = *v0;
  sub_C990();
  *v7 = v6;

  sub_2D64((v2 + 736));
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_C6474()
{
  v1 = *(v0 + 1552);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1360);
  v13 = *(v0 + 1352);
  v14 = *(v0 + 1376);
  v4 = *(v0 + 1344);
  v5 = *(v0 + 1288);
  v6 = *(v0 + 1272);
  sub_C9294(v0 + 696, v0 + 776);
  v7 = swift_allocObject();
  sub_17464((v0 + 776), v7 + 16);
  sub_16C73C();
  v8 = sub_16C1DC();
  sub_8D14(v8);
  *(v0 + 1064) = sub_16C1CC();
  v16 = sub_16C32C();

  sub_2D64((v0 + 696));
  sub_C96D8();
  sub_C923C(v6, v9);
  sub_C9784();
  sub_C923C(v5, v10);

  sub_8748(v4, &qword_1C57F8, &unk_172510);
  (*(v3 + 8))(v14, v13);
  sub_C961C();
  v15 = *(v0 + 1104);

  sub_5D948();

  return v11(v16);
}

uint64_t sub_C66E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_C9800();
  sub_C987C();
  v31 = v30[191];
  v32 = v30[190];
  v33 = v30[189];
  v34 = v30[149];
  v35 = v30[143];
  sub_1B9B4();
  v36 = sub_38408();
  v32(v36);
  v37 = sub_16DBDC();
  v38 = sub_16E37C();
  if (sub_1BA1C(v38))
  {
    v39 = sub_1BA38();
    sub_1BA50(v39);
    sub_8420C();
    _os_log_impl(v40, v41, v42, v43, v44, 2u);
    sub_1BA00();
  }

  v45 = v30[192];
  v46 = v30[173];
  sub_C9888();
  v64 = v30[161];
  v47 = v30[159];
  v48 = v30[149];
  v49 = v30[144];
  v50 = v30[143];
  v51 = v30[135];

  v45(v48, v50);
  sub_8284(v51 + 80, (v30 + 62));
  sub_82E0();
  v65 = sub_16C32C();

  sub_8334((v30 + 62));
  sub_C96D8();
  sub_C923C(v47, v52);
  sub_C9784();
  sub_C923C(v64, v53);
  sub_8748(a24, &qword_1C57F8, &unk_172510);
  (*(v34 + 8))(a26, a25);
  sub_C961C();
  sub_C979C(v54);

  sub_8938();
  sub_A78CC();

  return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v64, a24, a25, a26, v65, a28, a29, a30);
}

uint64_t sub_C693C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;
  v7 = *(v4 + 1576);
  *v6 = *v2;

  v8 = *(v4 + 1568);
  if (v1)
  {
  }

  else
  {
    *(v5 + 1584) = a1;
  }

  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_C6A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_C9800();
  sub_C987C();
  v32 = v31[198];
  sub_C9888();
  v33 = v31[142];
  v34 = v31[141];
  v55 = v31[140];
  v35 = v31[139];
  v36 = v31[138];
  v37 = v31[137];
  v38 = v31[136];
  v39 = v31[135];
  sub_16C43C();
  (*(v37 + 16))(v36, v35, v38);
  sub_16C75C();
  v40 = *(v37 + 8);
  v41 = sub_C98C0();
  v42(v41);
  v43 = [v32 patternId];
  sub_16E1BC();

  sub_16C76C();
  v44 = v39[14];
  sub_2D20(v39 + 10, v39[13]);
  sub_4B4EC();
  v31[132] = sub_16C2FC();
  sub_16C28C();
  v56 = sub_16C32C();

  (*(v34 + 8))(v33, v55);

  sub_8748(a24, &qword_1C57F8, &unk_172510);
  (*(v30 + 8))(a26, a25);
  sub_C961C();
  sub_C979C(v45);

  sub_8938();
  sub_A78CC();

  return v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v55, a24, a25, a26, v56, a28, a29, a30);
}

uint64_t sub_C6D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_C9800();
  sub_C987C();
  v31 = v30[147];
  sub_C9908();
  v32 = v30[134];
  sub_16DBBC();
  sub_8B48();
  v33 = sub_3BD68();
  v34(v33);
  v35 = v32;
  v36 = sub_16DBDC();
  v37 = sub_16E37C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = v30[134];
    v39 = sub_8BD8();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    *(v39 + 4) = v38;
    *v40 = v38;
    v41 = v38;
    sub_8420C();
    _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
    sub_8748(v40, &qword_1C57B8, &qword_1715A0);
    sub_38604();
    sub_1BA00();
  }

  v47 = v30[172];
  v48 = v30[170];
  v49 = v30[169];
  v50 = v30[168];
  v51 = v30[147];
  v52 = v30[144];
  v53 = v30[143];
  v54 = v30[135];

  v55 = *(v52 + 8);
  v56 = sub_4B4EC();
  v57(v56);
  sub_8284(v54 + 80, (v30 + 22));
  sub_82E0();
  v71 = sub_16C32C();
  sub_8334((v30 + 22));
  sub_8748(v50, &qword_1C57F8, &unk_172510);
  v58 = *(v48 + 8);
  v59 = sub_C9F8();
  v60(v59);
  sub_C961C();
  sub_C979C(v61);

  sub_8938();
  sub_A78CC();

  return v64(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v71, a28, a29, a30);
}

uint64_t sub_C6FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_C9800();
  sub_C987C();
  v33 = v30[181];
  v34 = v30[145];
  v35 = v30[144];
  v36 = v30[143];
  v37 = sub_16DBBC();
  sub_8B48();
  v39 = *(v35 + 16);
  v38 = (v35 + 16);
  v40 = sub_C97B8();
  v41(v40);
  swift_errorRetain();
  v42 = sub_16DBDC();
  LOBYTE(v36) = sub_16E37C();

  v43 = os_log_type_enabled(v42, v36);
  v44 = v30[181];
  if (v43)
  {
    sub_8BD8();
    v38 = sub_8A44();
    *v37 = 138412290;
    swift_errorRetain();
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v45;
    *v38 = v45;
    sub_4B3D0();
    _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
    sub_8748(v38, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_38604();
  }

  else
  {
    v51 = v30[181];
  }

  (*(v30[144] + 8))(v30[145], v30[143]);
  v52 = v30[148];
  sub_C9908();
  v53 = sub_16DBBC();
  sub_8B48();
  v54 = sub_3BD68();
  v55(v54);
  sub_16DBDC();
  v56 = sub_16E37C();
  if (sub_1BA1C(v56))
  {
    v57 = sub_1BA38();
    sub_1BA50(v57);
    sub_8420C();
    _os_log_impl(v58, v59, v60, v61, v62, 2u);
    sub_1BA00();
  }

  sub_C97C8();
  v63 = *(v32 + 8);
  v64 = sub_C98B4();
  v65(v64);
  sub_8284(v53 + 80, (v30 + 42));
  sub_82E0();
  v76 = sub_16C32C();

  sub_8334((v30 + 42));
  sub_8748(v38, &qword_1C57F8, &unk_172510);
  (*(v31 + 8))(a26, v37);
  sub_C961C();
  sub_C979C(v66);

  sub_8938();
  sub_A78CC();

  return v69(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v76, a28, a29, a30);
}

uint64_t sub_C72C0(uint64_t a1)
{
  v2[131] = v1;
  v2[130] = a1;
  v3 = *(*(sub_2440(&qword_1C57E0, &unk_171C60) - 8) + 64) + 15;
  v2[132] = swift_task_alloc();
  v4 = sub_16DBEC();
  v2[133] = v4;
  v5 = *(v4 - 8);
  v2[134] = v5;
  v6 = *(v5 + 64) + 15;
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v2[137] = swift_task_alloc();
  v2[138] = swift_task_alloc();
  v7 = *(*(sub_16D63C() - 8) + 64) + 15;
  v2[139] = swift_task_alloc();
  v8 = sub_16C0BC();
  v2[140] = v8;
  v9 = *(v8 - 8);
  v2[141] = v9;
  v10 = *(v9 + 64) + 15;
  v2[142] = swift_task_alloc();
  v11 = sub_16BD9C();
  v2[143] = v11;
  v12 = *(v11 - 8);
  v2[144] = v12;
  v13 = *(v12 + 64) + 15;
  v2[145] = swift_task_alloc();
  v14 = *(*(sub_2440(&qword_1C5690, &dword_16F320) - 8) + 64) + 15;
  v2[146] = swift_task_alloc();
  v2[147] = swift_task_alloc();
  v15 = sub_16BF5C();
  v2[148] = v15;
  v16 = *(v15 - 8);
  v2[149] = v16;
  v17 = *(v16 + 64) + 15;
  v2[150] = swift_task_alloc();
  v2[151] = swift_task_alloc();
  v2[152] = swift_task_alloc();
  v2[153] = swift_task_alloc();

  return _swift_task_switch(sub_C7588, 0, 0);
}

uint64_t sub_C7588()
{
  v1 = v0[131];
  v2 = v1[9];
  sub_2D20(v1 + 5, v1[8]);
  v3 = *(v2 + 8);
  v4 = sub_C9F8();
  v5(v4);
  v6 = v0[116];
  sub_2D20(v0 + 112, v0[115]);
  sub_C9F8();
  v7 = sub_16C41C();
  sub_2D64(v0 + 112);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = v0[147];
  v9 = v0[143];
  v10 = v0[131];
  v11 = v10[4];
  sub_2D20(v10, v10[3]);
  v12 = *(v11 + 32);
  v13 = sub_3E1B8();
  v14(v13);
  sub_8B20(v8, 1, v9);
  if (v15)
  {
    sub_8748(v0[147], &qword_1C5690, &dword_16F320);
LABEL_7:
    v26 = v0[138];
    v27 = v0[134];
    v28 = v0[133];
    v0[154] = sub_16DBBC();
    sub_8B48();
    v0[155] = *(v27 + 16);
    v0[156] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29 = sub_38B40();
    v30(v29);
    v31 = sub_16DBDC();
    v32 = sub_16E36C();
    if (sub_1BA1C(v32))
    {
      v33 = sub_1BA38();
      sub_1BA50(v33);
      sub_8420C();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      sub_1BA00();
    }

    v39 = v0[146];
    v40 = v0[143];
    v41 = v0[138];
    v42 = v0[134];
    v43 = v0[133];
    v44 = v0[131];

    v0[157] = *(v42 + 8);
    v45 = sub_4B4EC();
    v46(v45);
    v47 = v44[4];
    sub_2D20(v44, v44[3]);
    v48 = *(v47 + 32);
    v49 = sub_4B4EC();
    v50(v49);
    v51 = sub_C98CC();
    if (sub_369C(v51, v52, v40) == 1)
    {
      sub_8748(v0[146], &qword_1C5690, &dword_16F320);
      v53 = 1;
    }

    else
    {
      v54 = v0[144];
      v55 = v0[143];
      v56 = v0[132];
      sub_16BD7C();
      v57 = *(v54 + 8);
      v58 = sub_38B40();
      v59(v58);
      v53 = 0;
    }

    v60 = v0[131];
    sub_214C(v0[132], v53, 1, v0[148]);
    v62 = v44[3];
    v61 = v44[4];
    v63 = sub_38B40();
    sub_2D20(v63, v64);
    v65 = *(v61 + 64);
    v66 = sub_8427C();
    v67(v66);
    sub_16D85C();
    v68 = swift_task_alloc();
    v0[158] = v68;
    *v68 = v0;
    v68[1] = sub_C7B60;
    sub_C98D8(v0[132]);

    return sub_C25B0();
  }

  v16 = v0[152];
  v17 = v0[151];
  v18 = v0[149];
  v85 = v0[148];
  v86 = v0[153];
  v19 = v0[147];
  v88 = v0[150];
  v90 = v0[145];
  v20 = v0[144];
  v21 = v0[143];
  v22 = v0[142];
  v23 = v0[141];
  v87 = v0[140];
  sub_16BD7C();
  v24 = *(v20 + 8);
  v24(v19, v21);
  (*(v18 + 32))(v86, v16, v85);
  sub_16C08C();
  sub_16C02C();
  (*(v23 + 8))(v22, v87);
  sub_7B6B8(v88);
  sub_16BD5C();
  v25 = sub_16DADC();
  v24(v90, v21);
  if (v25)
  {
    (*(v0[149] + 8))(v0[153], v0[148]);
    goto LABEL_7;
  }

  v70 = v0[153];
  v71 = v0[149];
  v72 = v0[148];
  v73 = v0[139];
  v74 = v0[131];
  v75 = v0[130];
  v76 = *(v74 + 250);
  sub_16D70C();
  sub_C9294(v74, (v0 + 2));
  sub_C9294((v1 + 5), (v0 + 7));
  sub_8284(v74 + 80, (v0 + 12));
  v77 = sub_16C58C();
  sub_8D14(v77);
  v78 = sub_16C57C();
  v0[35] = v77;
  v0[36] = &protocol witness table for ResponseFactory;
  v0[32] = v78;
  type metadata accessor for WellnessLoggingCATsSimple();
  sub_16D62C();
  v79 = sub_16D5FC();
  type metadata accessor for WellnessCATs();
  sub_16D62C();
  v80 = sub_16D58C();
  v0[37] = v79;
  v0[38] = v80;
  sub_17858();
  sub_16C4EC();
  v81 = *(v71 + 8);
  v82 = sub_C9F8();
  v83(v82);
  sub_83B2C((v0 + 2));
  sub_C96A4();
  v89 = v0[135];
  v91 = v0[132];

  sub_C9BC();

  return v84();
}

uint64_t sub_C7B60()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v3 = v2;
  v5 = *(v4 + 1264);
  v6 = *(v4 + 1056);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v10 + 1272) = v9;
  *(v10 + 1280) = v0;

  sub_8748(v6, &qword_1C57E0, &unk_171C60);
  sub_8ACC();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_C7C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_5DA2C();
  if (v16[159])
  {
    v17 = swift_task_alloc();
    v16[161] = v17;
    *v17 = v16;
    v17[1] = sub_C7E9C;
    v18 = v16[131];
    sub_4B510();

    return sub_C467C();
  }

  else
  {
    v21 = v16[156];
    v22 = v16[155];
    v23 = v16[154];
    v24 = v16[137];
    v25 = v16[133];
    sub_1B9B4();
    v26 = sub_38408();
    v22(v26);
    v27 = sub_16DBDC();
    v28 = sub_16E37C();
    if (sub_1BA1C(v28))
    {
      v29 = sub_1BA38();
      sub_1BA50(v29);
      sub_8420C();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      sub_1BA00();
    }

    v35 = v16[157];
    v36 = v16[137];
    v37 = v16[134];
    v38 = v16[133];
    v39 = v16[131];
    v40 = v16[130];

    v41 = sub_C9F8();
    v35(v41);
    v42 = *(v39 + 250);
    sub_16D6FC();
    sub_8284(v39 + 80, (v16 + 92));
    sub_82E0();
    sub_16C4EC();
    sub_8334((v16 + 92));
    sub_C96A4();
    sub_C985C();

    sub_C9BC();
    sub_4B510();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_C7E9C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 1288);
  *v2 = *v0;
  *(v1 + 1296) = v5;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_C7F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_5DA2C();
  v17 = v16[162];
  v18 = v16[159];
  v19 = v16[130];
  v20 = *(v16[131] + 250);
  sub_16D72C();
  sub_16C4FC();

  sub_C96A4();
  sub_C985C();

  sub_C9BC();
  sub_4B510();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_C8080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_5DA2C();
  *(v16 + 1032) = *(v16 + 1280);
  swift_errorRetain();
  sub_2440(&qword_1C9680, &unk_175DE0);
  v17 = swift_dynamicCast();
  v18 = *(v16 + 1280);
  v19 = *(v16 + 1248);
  v20 = *(v16 + 1240);
  v21 = *(v16 + 1232);
  v22 = *(v16 + 1064);
  if (v17)
  {
    v23 = *(v16 + 1088);
    v24 = *(v16 + 1280);

    sub_1B9B4();
    sub_8B60();
    v20();
    v25 = sub_16DBDC();
    v26 = sub_16E36C();
    if (sub_1BA1C(v26))
    {
      v27 = sub_1BA38();
      sub_1BA50(v27);
      sub_8420C();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      sub_1BA00();
    }

    v33 = *(v16 + 1256);
    v34 = *(v16 + 1112);
    v35 = *(v16 + 1088);
    v36 = *(v16 + 1072);
    v37 = *(v16 + 1064);
    v38 = *(v16 + 1048);
    v39 = *(v16 + 1040);

    v33(v35, v37);
    sub_C9294(v38 + 40, v16 + 320);
    sub_8284(v38 + 80, v16 + 360);
    v40 = sub_16C58C();
    sub_8D14(v40);
    v41 = sub_16C57C();
    *(v16 + 544) = v40;
    *(v16 + 552) = &protocol witness table for ResponseFactory;
    *(v16 + 520) = v41;
    type metadata accessor for WellnessCATsSimple();
    sub_16D62C();
    v42 = sub_16D5FC();
    type metadata accessor for WellnessCATs();
    sub_16D62C();
    v43 = sub_16D58C();
    *(v16 + 312) = 42;
    *(v16 + 560) = v42;
    *(v16 + 568) = v43;
    sub_84F0();
    sub_16C4EC();
    sub_8544(v16 + 312);
    v44 = *(v16 + 1032);
  }

  else
  {
    v45 = *(v16 + 1080);
    v46 = *(v16 + 1032);

    sub_1B9B4();
    sub_8B60();
    v20();
    swift_errorRetain();
    v47 = sub_16DBDC();
    v48 = sub_16E37C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = *(v16 + 1280);
      sub_8BD8();
      v50 = sub_8A44();
      *v45 = 138412290;
      swift_errorRetain();
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v51;
      *v50 = v51;
      _os_log_impl(&def_259DC, v47, v48, "Tring to save spotting record threw %@", v45, 0xCu);
      sub_8748(v50, &qword_1C57B8, &qword_1715A0);
      sub_89F4();
      sub_38604();
    }

    v52 = *(v16 + 1280);
    v53 = *(v16 + 1256);
    v54 = *(v16 + 1080);
    v55 = *(v16 + 1072);
    v56 = *(v16 + 1064);
    v57 = *(v16 + 1048);
    v58 = *(v16 + 1040);

    v59 = sub_C9E0();
    v53(v59);
    v60 = *(v57 + 250);
    sub_16D6FC();
    sub_8284(v57 + 80, v16 + 576);
    sub_82E0();
    sub_16C4EC();

    sub_8334(v16 + 576);
  }

  sub_C96A4();
  sub_C985C();

  sub_C9BC();
  sub_4B510();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t LogPeriodFlow.execute()()
{
  sub_8A88();
  v1[50] = v2;
  v1[51] = v0;
  v3 = sub_16D63C();
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[52] = sub_8BC0();
  v6 = sub_16DBEC();
  v1[53] = v6;
  sub_888C(v6);
  v1[54] = v7;
  v9 = *(v8 + 64);
  v1[55] = sub_8C38();
  v1[56] = swift_task_alloc();
  v10 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v10);
  v12 = *(v11 + 64);
  v1[57] = sub_8BC0();
  v13 = sub_17960();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_C8538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_A7910();
  v23 = v22[51];
  v24 = *(v23 + 24);
  v25 = *(v23 + 32);
  v26 = sub_C9F8();
  sub_2D20(v26, v27);
  v28 = *(v25 + 104);
  v29 = sub_C9E0();
  v31 = v30(v29);
  if (sub_C1F00(v31, &off_1B8620))
  {
    v32 = v22[57];
    v33 = *(v23 + 32);
    sub_2D20(v22[51], *(v23 + 24));
    v34 = *(v33 + 32);
    v35 = sub_3E1B8();
    v36(v35);
    v37 = sub_C2070();
    sub_8748(v32, &qword_1C5690, &dword_16F320);
    if (v37)
    {
      v39 = *(v23 + 24);
      v38 = *(v23 + 32);
      sub_2D20(v22[51], v39);
      v40 = *(v38 + 24);
      v41 = sub_8427C();
      if (v42(v41) == 191)
      {
        swift_task_alloc();
        sub_179E8();
        v22[58] = v43;
        *v43 = v44;
        v43[1] = sub_C89F0;
        v45 = v22[50];
        v46 = v22[51];
        sub_A77E4();

        return sub_C72C0(v47);
      }

      else
      {
        swift_task_alloc();
        sub_179E8();
        v22[59] = v81;
        *v81 = v82;
        v81[1] = sub_C8B50;
        v83 = v22[50];
        v84 = v22[51];
        sub_A77E4();

        return sub_C3B5C(v85);
      }
    }

    v118 = v22 + 23;
    v50 = v22 + 56;
    v69 = v22[56];
    v70 = v22[53];
    v71 = v22[54];
    sub_16DBBC();
    sub_8B48();
    v72 = *(v71 + 16);
    v73 = sub_C97B8();
    v74(v73);
    v57 = sub_16DBDC();
    v75 = sub_16E37C();
    if (!sub_4B3A8(v75))
    {
      sub_C981C();
      v117 = v87;
      v116 = 296;
      v115 = 288;
      v114 = 264;
      v113 = 256;
      v67 = 31;
      v79 = 224;
      goto LABEL_17;
    }

    a10 = v22 + 56;
    v76 = sub_1BA38();
    sub_1BA50(v76);
    sub_C9914(&def_259DC, v77, v78, "Only one day is loggable");
    sub_C981C();
    v63 = 296;
    v64 = 288;
    v65 = 264;
    v66 = 256;
    v67 = 31;
    v68 = 224;
  }

  else
  {
    v118 = v22 + 2;
    v50 = v22 + 55;
    v52 = v22[54];
    v51 = v22[55];
    v53 = v22[53];
    sub_16DBBC();
    sub_8B48();
    v54 = *(v52 + 16);
    v55 = sub_C97B8();
    v56(v55);
    v57 = sub_16DBDC();
    v58 = sub_16E37C();
    if (!sub_4B3A8(v58))
    {
      sub_C983C();
      v117 = v80;
      v116 = 128;
      v115 = 120;
      v114 = 96;
      v113 = 88;
      v67 = 10;
      v79 = 56;
      goto LABEL_17;
    }

    a10 = v22 + 55;
    v59 = sub_1BA38();
    sub_1BA50(v59);
    sub_C9914(&def_259DC, v60, v61, "Trying to save future record, which is not allowed");
    sub_C983C();
    v63 = 128;
    v64 = 120;
    v65 = 96;
    v66 = 88;
    v67 = 10;
    v68 = 56;
  }

  v113 = v66;
  v114 = v65;
  v115 = v64;
  v116 = v63;
  v117 = v62;
  sub_1BA00();
  v50 = a10;
  v79 = v68;
LABEL_17:
  v88 = *v50;
  v90 = v22[53];
  v89 = v22[54];
  v92 = v22[51];
  v91 = v22[52];
  v93 = v22[50];

  v94 = *(v89 + 8);
  v95 = sub_4B4EC();
  v96(v95);
  v97 = *(v92 + 250);
  sub_16D74C();
  sub_C1F30(v118);
  type metadata accessor for WellnessCATPatternsExecutor(0);
  sub_8D2C();
  sub_8CB4();
  v98 = sub_16D58C();
  v22[v67] = v57;
  *(v22 + v113) = &off_1BA5B0;
  *(v22 + v79) = v98;
  type metadata accessor for WellnessLoggingCATPatternsExecutor(0);
  sub_8D2C();
  sub_8CB4();
  v99 = sub_16D58C();
  *(v22 + v115) = v57;
  *(v22 + v116) = &off_1BC5D0;
  *(v22 + v114) = v99;
  type metadata accessor for WellnessQueryingCATPatternsExecutor(0);
  sub_8D2C();
  sub_8CB4();
  v100 = sub_16D58C();
  *(v22 + a16) = v57;
  *(v22 + a17) = &off_1BA360;
  *(v22 + v117) = v100;
  *(v22 + a18) = 0;
  sub_17358();
  sub_16C4EC();
  sub_173AC(v118);
  v102 = v22[56];
  v101 = v22[57];
  v103 = v22[55];
  v104 = v22[52];

  sub_C9BC();
  sub_A77E4();

  return v106(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, v113, v114, v115, v116, v117, a16, a17, a18, v118, a20, a21, a22);
}

uint64_t sub_C89F0()
{
  sub_386A8();
  v1 = *v0;
  v2 = *(*v0 + 464);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = v1[57];
  v6 = v1[56];
  v7 = v1[55];
  v8 = v1[52];

  v9 = *(v3 + 8);

  return v9();
}

uint64_t sub_C8B50()
{
  sub_386A8();
  v1 = *v0;
  v2 = *(*v0 + 472);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = v1[57];
  v6 = v1[56];
  v7 = v1[55];
  v8 = v1[52];

  v9 = *(v3 + 8);

  return v9();
}

uint64_t sub_C8CB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_C8CD0, 0, 0);
}

uint64_t sub_C8CD0()
{
  sub_8A88();
  sub_C9294(*(v0 + 24), *(v0 + 16));
  sub_C9BC();

  return v1();
}

uint64_t sub_C8D2C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_2440(&qword_1C57F8, &unk_172510);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v33 - v9;
  v11 = sub_2440(&qword_1C5800, &unk_16F510);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = a2[3];
  v19 = a2[4];
  sub_2D20(a2, v18);
  v20 = (*(v19 + 24))(v18, v19);
  if (v20 == 270)
  {
    v21 = sub_16D5CC();
    v22 = 1;
  }

  else
  {
    sub_140650(v20);
    sub_16E23C();

    v21 = sub_16D5CC();
    v22 = 0;
  }

  sub_214C(v17, v22, 1, v21);
  v23 = type metadata accessor for WellnessLoggingMenstruationParameters(0);
  v24 = v23[5];
  sub_C93C0();
  sub_16D4EC();
  v25 = sub_16D47C();
  v26 = v23[6];
  v27 = *(a1 + v26);

  *(a1 + v26) = v25;
  v28 = [a4 flow];
  v29 = a1 + v23[8];
  *v29 = v28;
  *(v29 + 8) = 0;
  sub_A7028();
  v30 = sub_16BE9C();
  if (sub_369C(v10, 1, v30) == 1)
  {
    sub_8748(v10, &qword_1C57F8, &unk_172510);
    v31 = sub_16D5CC();
    sub_214C(v15, 1, 1, v31);
  }

  else
  {
    sub_61120(v15);
    (*(*(v30 - 8) + 8))(v10, v30);
  }

  return sub_C93C0();
}

uint64_t sub_C900C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return LogPeriodFlow.execute()();
}

uint64_t sub_C90A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 264))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_C90E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_C9180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleTrackingLogModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_C91E4()
{
  sub_A78A8();
  v2 = v1(0);
  sub_8B38(v2);
  v4 = *(v3 + 16);
  v5 = sub_8B9C();
  v6(v5);
  return v0;
}

uint64_t sub_C923C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_8B38(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_C9294(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_5DE54(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_C92F4()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_C932C()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_C8CB0(v3, v0 + 16);
}

uint64_t sub_C93C0()
{
  sub_A78A8();
  v3 = sub_2440(v1, v2);
  sub_8B38(v3);
  v5 = *(v4 + 40);
  v6 = sub_8B9C();
  v7(v6);
  return v0;
}

unint64_t sub_C9418()
{
  result = qword_1C9698;
  if (!qword_1C9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9698);
  }

  return result;
}

uint64_t sub_C9498(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for SpottingErrors(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0xC957CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_C95B8()
{
  result = qword_1C96C8;
  if (!qword_1C96C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C96C8);
  }

  return result;
}

uint64_t sub_C961C()
{
  result = v0[172];
  v2 = v0[171];
  v3 = v0[168];
  v4 = v0[167];
  v5 = v0[166];
  v6 = v0[165];
  v7 = v0[164];
  v8 = v0[163];
  v9 = v0[162];
  v10 = v0[161];
  v13 = v0[159];
  v14 = v0[158];
  v15 = v0[157];
  v16 = v0[156];
  v17 = v0[154];
  v18 = v0[153];
  v19 = v0[152];
  v20 = v0[151];
  v21 = v0[150];
  v22 = v0[149];
  v23 = v0[148];
  v24 = v0[147];
  v25 = v0[146];
  v26 = v0[145];
  v11 = v0[142];
  v12 = v0[139];
  return result;
}

uint64_t sub_C96A4()
{
  result = v0[153];
  v2 = v0[152];
  v3 = v0[151];
  v4 = v0[150];
  v5 = v0[147];
  v6 = v0[146];
  v7 = v0[145];
  v8 = v0[142];
  v9 = v0[139];
  v10 = v0[138];
  v11 = v0[137];
  v12 = v0[136];
  return result;
}

uint64_t sub_C9708()
{
  v2 = *(v0 + 528);
  v3 = *(v0 + 496);
  v11 = *(v0 + 504);
  v12 = *(v0 + 488);
  v13 = *(v0 + 480);
  v14 = *(v0 + 472);
  v4 = *(v0 + 448);
  v15 = *(v0 + 440);
  v16 = *(v0 + 432);
  v5 = *(v0 + 408);
  v17 = *(v0 + 424);
  v18 = *(v0 + 416);
  v6 = *(v0 + 392);
  v7 = *(v0 + 384);
  v8 = *(v0 + 592);
  v9 = *(v0 + 360);

  return type metadata accessor for LogPeriodIntentResponse(0);
}

uint64_t sub_C975C()
{
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[59];
  v6 = v0[55];
  v5 = v0[56];
  v8 = v0[53];
  v7 = v0[54];
  v9 = v0[52];
  v10 = v0[48];
  v11 = v0[49];
}

uint64_t sub_C979C@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 104) = v1;
  *(v3 - 96) = a1;
  *(v3 - 88) = *(v2 + 1104);
}

void sub_C97C8()
{
  v4 = v1[173];
  *(v2 - 88) = v1[172];
  v5 = v1[170];
  v6 = v1[169];
  v7 = v1[168];
  v8 = v1[148];
  v9 = v1[144];
  v10 = v1[143];
  v11 = v1[135];
}

uint64_t sub_C985C()
{
  v2 = *(v0 + 1080);
  v4 = *(v0 + 1056);
}

void sub_C9888()
{
  v2 = v0[172];
  v3 = v0[170];
  *(v1 - 96) = v0[169];
  *(v1 - 88) = v2;
  *(v1 - 104) = v0[168];
}

uint64_t sub_C98E4()
{

  return sub_16E6BC();
}

void sub_C9914(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t sub_C9934(char a1)
{
  result = 0x6B65655773696874;
  switch(a1)
  {
    case 1:
      v3 = 1936287860;
      goto LABEL_4;
    case 2:
      result = 0x7261655973696874;
      break;
    case 3:
      result = 0x6B6565577473616CLL;
      break;
    case 4:
      v3 = 1953718636;
LABEL_4:
      result = v3 | 0x746E6F4D00000000;
      break;
    case 5:
      result = 0x726165597473616CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_C99EC()
{
  sub_8A88();
  v2 = *v0;
  v1[11] = v3;
  v1[12] = v2;
  v4 = sub_16C89C();
  v1[13] = v4;
  sub_888C(v4);
  v1[14] = v5;
  v7 = *(v6 + 64);
  v1[15] = sub_8BC0();
  v8 = sub_16C80C();
  v1[16] = v8;
  sub_888C(v8);
  v1[17] = v9;
  v11 = *(v10 + 64);
  v1[18] = sub_8BC0();
  v12 = sub_16C83C();
  v1[19] = v12;
  sub_888C(v12);
  v1[20] = v13;
  v15 = *(v14 + 64);
  v1[21] = sub_8BC0();
  v16 = sub_16C7DC();
  v1[22] = v16;
  sub_888C(v16);
  v1[23] = v17;
  v19 = *(v18 + 64);
  v1[24] = sub_8BC0();
  v20 = sub_16DBEC();
  v1[25] = v20;
  sub_888C(v20);
  v1[26] = v21;
  v23 = *(v22 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_C9C08()
{
  v111 = v0;
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[22];
  v7 = v0[11];
  v8 = sub_16DBBC();
  sub_8B48();
  v109 = *(v3 + 16);
  v109(v1, v8, v2);
  (*(v4 + 16))(v5, v7, v6);
  v9 = sub_16DBDC();
  v10 = sub_16E36C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[25];
  v13 = v0[26];
  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[22];
  if (v11)
  {
    v106 = v0[29];
    v17 = v0[12];
    v18 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *v18 = 136315394;
    v19 = sub_16E7AC();
    v104 = v12;
    v21 = sub_3AB7C(v19, v20, &v110);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    sub_C8E0();
    sub_16E68C();
    (*(v15 + 8))(v14, v16);
    v22 = sub_C9F8();
    v25 = sub_3AB7C(v22, v23, v24);

    *(v18 + 14) = v25;
    _os_log_impl(&def_259DC, v9, v10, "%s received input: %s", v18, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();

    v26 = *(v13 + 8);
    v26(v106, v104);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    v26 = *(v13 + 8);
    v27 = sub_C9F8();
    v26(v27, v28);
  }

  v29 = v0[18];
  v30 = v0[17];
  v31 = v0[16];
  v32 = v0[11];
  sub_16C7CC();
  v33 = *(v30 + 88);
  v34 = sub_C9F8();
  if (v35(v34) != enum case for Parse.uso(_:))
  {
    goto LABEL_16;
  }

  v107 = v26;
  v36 = v0[21];
  v37 = v0[20];
  v38 = v0[19];
  v39 = v0[15];
  v40 = v0[14];
  v105 = v0[13];
  (*(v0[17] + 96))(v0[18], v0[16]);
  v41 = *(v37 + 32);
  v42 = sub_6B5B8();
  v43(v42);
  sub_16C82C();
  v44 = sub_10E3DC();
  (*(v40 + 8))(v39, v105);
  if (!v44)
  {
    v26 = v107;
LABEL_16:
    v68 = sub_CBF70();
    v69(v68);
    v70 = v0[27];
    v71 = v0[25];
    sub_8B48();
    v72 = sub_6B5B8();
    (v109)(v72);
    v73 = sub_16DBDC();
    v74 = sub_16E37C();
    v75 = os_log_type_enabled(v73, v74);
    v77 = v0[26];
    v76 = v0[27];
    v78 = v0[25];
    if (v75)
    {
      v79 = v0[12];
      v108 = v26;
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v110 = v81;
      *v80 = 136315138;
      v82 = sub_16E7AC();
      v84 = sub_3AB7C(v82, v83, &v110);

      *(v80 + 4) = v84;
      _os_log_impl(&def_259DC, v73, v74, "%s received unsupported input", v80, 0xCu);
      sub_2D64(v81);
      sub_8A2C();
      sub_8A2C();

      v85 = sub_C9F8();
      v108(v85);
    }

    else
    {

      v86 = sub_C9F8();
      (v26)(v86);
    }

LABEL_19:
    v49 = 0;
    v87 = 0;
    v88 = 1;
    goto LABEL_20;
  }

  v45 = sub_B337C();
  if (sub_3B35C(v45) < 2)
  {
    goto LABEL_11;
  }

  v46 = v45 & 0xC000000000000001;
  sub_3B360(0, (v45 & 0xC000000000000001) == 0, v45);
  if ((v45 & 0xC000000000000001) != 0)
  {
    sub_16E48C();
  }

  else
  {
    v47 = *(v45 + 32);
  }

  v48 = sub_16CDFC();

  if (!v48 || (v49 = sub_16CA9C(), v51 = v50, , (v51 & 1) != 0))
  {
LABEL_11:

LABEL_12:
    v52 = v0[28];
    v53 = v0[25];
    sub_8B48();
    v54 = sub_6B5B8();
    (v109)(v54);
    v55 = sub_16DBDC();
    v56 = sub_16E37C();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v0[28];
    v60 = v0[25];
    v59 = v0[26];
    v62 = v0[20];
    v61 = v0[21];
    v63 = v0[19];
    if (v57)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&def_259DC, v55, v56, "Failed to populate LogBloodPressureIntent: missing systolic/diastolic values", v64, 2u);
      sub_8A2C();
    }

    v107(v58, v60);
    v65 = *(v62 + 8);
    v66 = sub_C9C8();
    v67(v66);
    goto LABEL_19;
  }

  sub_3B360(1, v46 == 0, v45);
  if (v46)
  {
    sub_16E48C();
  }

  else
  {
    v98 = *(v45 + 40);
  }

  v99 = sub_16CDFC();

  if (!v99)
  {
    goto LABEL_12;
  }

  v87 = sub_16CA9C();
  v101 = v100;

  if (v101)
  {
    goto LABEL_12;
  }

  v102 = sub_CBF70();
  v103(v102);

  v88 = 0;
LABEL_20:
  v90 = v0[28];
  v89 = v0[29];
  v91 = v0[27];
  v92 = v0[24];
  v93 = v0[21];
  v94 = v0[18];
  v95 = v0[15];

  v96 = v0[1];

  return v96(v49, v87, v88);
}

uint64_t sub_CA2D0(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_16C7DC();
  v5 = sub_42F0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_4304();
  v12 = v11 - v10;
  v13 = sub_16DBEC();
  v14 = sub_42F0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_4304();
  v21 = v20 - v19;
  v22 = sub_16DBBC();
  sub_8B48();
  v34 = v13;
  (*(v16 + 16))(v21, v22, v13);
  (*(v7 + 16))(v12, a1, v4);
  v23 = sub_16DBDC();
  v24 = sub_16E36C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v25 = 136315394;
    v26 = sub_16E7AC();
    v28 = sub_3AB7C(v26, v27, &v35);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    sub_C8E0();
    v29 = sub_16E68C();
    v31 = v30;
    (*(v7 + 8))(v12, v4);
    v32 = sub_3AB7C(v29, v31, &v35);

    *(v25 + 14) = v32;
    _os_log_impl(&def_259DC, v23, v24, "%s handling input: %s", v25, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();
  }

  else
  {

    (*(v7 + 8))(v12, v4);
  }

  (*(v16 + 8))(v21, v34);
  return sub_16C47C();
}

uint64_t sub_CA5D4()
{
  sub_8A88();
  v1[7] = v2;
  v1[8] = v0;
  v3 = *(*(sub_2440(&qword_1C5990, &unk_16F760) - 8) + 64);
  v1[9] = sub_8BC0();
  v4 = sub_16C46C();
  v1[10] = v4;
  sub_888C(v4);
  v1[11] = v5;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v8 = sub_16C7BC();
  v1[14] = v8;
  sub_888C(v8);
  v1[15] = v9;
  v11 = *(v10 + 64);
  v1[16] = sub_8BC0();
  sub_8ACC();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_CA70C()
{
  sub_386A8();
  v1 = *sub_2D20((*(v0 + 64) + 104), *(*(v0 + 64) + 128));

  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_CA7D8;
  v3 = *(v0 + 64);

  return sub_1091CC();
}

uint64_t sub_CA7D8()
{
  sub_386A8();
  sub_C9D4();
  v3 = v2;
  sub_8A60();
  *v4 = v3;
  v6 = *(v5 + 136);
  *v4 = *v1;
  v3[18] = v7;

  if (v0)
  {
    v8 = v3[16];
    v10 = v3[12];
    v9 = v3[13];
    v11 = v3[9];

    sub_C9BC();

    return v12();
  }

  else
  {
    sub_8ACC();

    return _swift_task_switch(v14, v15, v16);
  }
}

uint64_t sub_CA92C()
{
  v1 = v0[18];
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  sub_16C44C();
  (*(v6 + 16))(v4, v3, v5);
  sub_C9A0();
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C79C();
  sub_16C77C();
  sub_CB5AC(v7);
  v9 = sub_16C55C();
  sub_214C(v7, 0, 1, v9);
  sub_16C78C();
  v10 = [v1 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_8388(v8 + 184, (v0 + 2));
  v11 = v0[5];
  v12 = v0[6];
  sub_2D20(v0 + 2, v11);
  v13 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  v0[19] = v14;
  *v14 = v0;
  v14[1] = sub_CAAE4;
  v15 = v0[18];
  v16 = v0[16];
  v17 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v17, v15, v16, v11, v12);
}

uint64_t sub_CAAE4()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  sub_C990();
  *v7 = v6;
  *(v8 + 160) = v0;

  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_CABE0()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);

  v7 = *(v2 + 8);
  v8 = sub_C9C8();
  v9(v8);
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v10();
}

uint64_t sub_CAC9C()
{
  sub_386A8();
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);

  v4 = *(v2 + 8);
  v5 = sub_C9C8();
  v6(v5);
  sub_2D64((v0 + 16));
  v7 = *(v0 + 160);
  v8 = *(v0 + 128);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = *(v0 + 72);

  sub_C9BC();

  return v12();
}

uint64_t sub_CAD4C()
{
  sub_8A88();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = *v0;
  v4 = sub_16C46C();
  v1[14] = v4;
  sub_888C(v4);
  v1[15] = v5;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v8 = sub_16C7BC();
  v1[18] = v8;
  sub_888C(v8);
  v1[19] = v9;
  v11 = *(v10 + 64);
  v1[20] = sub_8BC0();
  v12 = sub_16DBEC();
  v1[21] = v12;
  sub_888C(v12);
  v1[22] = v13;
  v15 = *(v14 + 64);
  v1[23] = sub_8BC0();
  sub_8ACC();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_CAECC()
{
  v27 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[11];
  v5 = sub_16DBBC();
  sub_8B48();
  (*(v2 + 16))(v1, v5, v3);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E36C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];
  if (v8)
  {
    v12 = v0[13];
    v13 = v0[11];
    v25 = v0[21];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v14 = 136315394;
    v17 = sub_16E7AC();
    v24 = v9;
    v19 = sub_3AB7C(v17, v18, &v26);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v15 = v20;
    _os_log_impl(&def_259DC, v6, v7, "%s makeErrorResponse called with error: %@", v14, 0x16u);
    sub_C878(v15, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_2D64(v16);
    sub_8A2C();
    sub_8A2C();

    (*(v10 + 8))(v24, v25);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = *sub_2D20((v0[12] + 64), *(v0[12] + 88));
  v22 = swift_task_alloc();
  v0[24] = v22;
  *v22 = v0;
  v22[1] = sub_CB11C;

  return sub_7AA38();
}

uint64_t sub_CB11C()
{
  sub_386A8();
  sub_C9D4();
  v3 = v2;
  sub_8A60();
  *v4 = v3;
  v6 = *(v5 + 192);
  *v4 = *v1;
  v3[25] = v7;

  if (v0)
  {
    v8 = v3[23];
    v9 = v3[20];
    v12 = v3 + 16;
    v10 = v3[16];
    v11 = v12[1];

    sub_C9BC();

    return v13();
  }

  else
  {
    sub_8ACC();

    return _swift_task_switch(v15, v16, v17);
  }
}

uint64_t sub_CB270()
{
  v1 = v0[25];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[12];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_C9A0();
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C77C();
  v8 = [v1 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_8388(v7 + 184, (v0 + 2));
  v9 = v0[5];
  v10 = v0[6];
  sub_2D20(v0 + 2, v9);
  v11 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_CB3F4;
  v13 = v0[25];
  v14 = v0[20];
  v15 = v0[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v15, v13, v14, v9, v10);
}

uint64_t sub_CB3F4()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  sub_C990();
  *v7 = v6;
  *(v8 + 216) = v0;

  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_CB4F0()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);

  v7 = *(v3 + 8);
  v8 = sub_C9F8();
  v9(v8);
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v10();
}

uint64_t sub_CB5AC@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v85 = sub_16DBEC();
  v1 = sub_42F0(v85);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_887C();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v83 = &v73 - v10;
  v11 = sub_16C55C();
  v12 = sub_42F0(v11);
  v74 = v13;
  v75 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_4304();
  v18 = v17 - v16;
  v19 = sub_16C96C();
  v20 = sub_42F0(v19);
  v81 = v21;
  v82 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  sub_4304();
  v78 = v25 - v24;
  v26 = sub_16C92C();
  v27 = sub_42F0(v26);
  v79 = v28;
  v80 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v27);
  sub_887C();
  v33 = v31 - v32;
  __chkstk_darwin(v34);
  v36 = &v73 - v35;
  v37 = sub_2440(&qword_1C5980, &qword_16F748);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v40 = &v73 - v39;
  v41 = sub_16C87C();
  v42 = sub_42F0(v41);
  v77 = v43;
  v45 = *(v44 + 64);
  __chkstk_darwin(v42);
  sub_887C();
  v48 = v46 - v47;
  __chkstk_darwin(v49);
  v76 = &v73 - v50;
  sub_16CF7C();
  v51 = sub_16CF5C();
  sub_16C9DC();
  if (sub_369C(v40, 1, v41) == 1)
  {
    sub_C878(v40, &qword_1C5980, &qword_16F748);
    v52 = sub_16DBCC();
    sub_8B48();
    (*(v3 + 16))(v8, v52, v85);
    v53 = sub_16DBDC();
    v54 = sub_16E37C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&def_259DC, v53, v54, "Failed to create protobuf UsoGraph from UsoTask", v55, 2u);
      sub_8A2C();
    }

    (*(v3 + 8))(v8, v85);
    sub_16C54C();
  }

  else
  {
    v58 = v76;
    v57 = v77;
    (*(v77 + 32))(v76, v40, v41);
    sub_16C91C();
    (*(v57 + 16))(v48, v58, v41);
    sub_16C90C();
    v59 = v78;
    sub_16C95C();
    (*(v79 + 16))(v33, v36, v80);
    sub_16C94C();
    sub_16C54C();
    sub_2440(&qword_1C5988, &unk_16F750);
    v60 = v81;
    v61 = *(v81 + 72);
    v62 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_16F530;
    (*(v60 + 16))(v63 + v62, v59, v82);
    sub_16C53C();
    v64 = sub_16DBCC();
    sub_8B48();
    (*(v3 + 16))(v83, v64, v85);

    v65 = sub_16DBDC();
    v66 = sub_16E36C();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v73 = v18;
      v68 = v67;
      v69 = swift_slowAlloc();
      v86 = v51;
      v87 = v69;
      *v68 = 136315138;
      sub_16CE4C();

      v70 = sub_16E1EC();
      v72 = sub_3AB7C(v70, v71, &v87);

      *(v68 + 4) = v72;
      _os_log_impl(&def_259DC, v65, v66, "Built nlContextUpdate with SystemPrompted for task: %s", v68, 0xCu);
      sub_2D64(v69);
      sub_8A2C();
      v18 = v73;
      sub_8A2C();
    }

    (*(v3 + 8))(v83, v85);
    (*(v81 + 8))(v78, v82);
    (*(v79 + 8))(v36, v80);
    (*(v77 + 8))(v76, v41);
    return (*(v74 + 32))(v84, v18, v75);
  }
}

uint64_t sub_CBC80(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_CBD18;

  return sub_C99EC();
}

uint64_t sub_CBD18(uint64_t a1, uint64_t a2, char a3)
{
  sub_C9D4();
  v9 = v8;
  sub_8A60();
  *v10 = v9;
  v12 = *(v11 + 24);
  v13 = *v4;
  sub_C990();
  *v14 = v13;

  if (!v3)
  {
    v15 = *(v9 + 16);
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 16) = a3 & 1;
  }

  v16 = *(v13 + 8);

  return v16();
}

uint64_t sub_CBE30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_CA5D4();
}

uint64_t sub_CBEC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_CAD4C();
}

uint64_t sub_CBF70()
{
  result = *v0;
  v4 = *v2;
  v5 = *(*v1 + 8);
  return result;
}

uint64_t sub_CBF8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 273))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_CBFCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 272) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 273) = 1;
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

    *(result + 273) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_CC064()
{
  sub_92840();
  sub_8427C();

  return sub_16C33C();
}

uint64_t sub_CC0B4()
{
  sub_8A88();
  v1[109] = v0;
  v1[108] = v2;
  v3 = type metadata accessor for UnavailableDataFlow();
  v1[110] = v3;
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[111] = sub_8BC0();
  v6 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v1[112] = sub_8C38();
  v1[113] = swift_task_alloc();
  v9 = sub_16D63C();
  sub_4348(v9);
  v11 = *(v10 + 64);
  v1[114] = sub_8BC0();
  v12 = sub_16DBEC();
  v1[115] = v12;
  sub_888C(v12);
  v1[116] = v13;
  v15 = *(v14 + 64);
  v1[117] = sub_8C38();
  v1[118] = swift_task_alloc();
  v16 = sub_16BD9C();
  v1[119] = v16;
  sub_888C(v16);
  v1[120] = v17;
  v19 = *(v18 + 64);
  v1[121] = sub_8BC0();
  v20 = sub_16BF5C();
  v1[122] = v20;
  sub_888C(v20);
  v1[123] = v21;
  v23 = *(v22 + 64);
  v1[124] = sub_8C38();
  v1[125] = swift_task_alloc();
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v24 = sub_17960();

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_CC2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  sub_D4EA4();
  v15 = *(v14 + 872);
  v16 = sub_CD350();
  *(v14 + 1040) = v16;
  *(v14 + 1128) = *(v15 + 248);
  sub_16D78C();
  v17 = *(v15 + 72);
  sub_2D20((v15 + 40), *(v15 + 64));
  v18 = *(v17 + 8);
  v19 = sub_C9E0();
  v20(v19);
  v21 = *(v14 + 760);
  sub_2D20((v14 + 728), *(v14 + 752));
  sub_C9E0();
  LOBYTE(v15) = sub_16C41C();
  sub_2D64((v14 + 728));
  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }

  v22 = [v16 start];
  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = v22;
  v24 = *(v14 + 1032);
  sub_16BF3C();

  v25 = [v16 end];
  v26 = *(v14 + 1032);
  if (!v25)
  {
    (*(*(v14 + 984) + 8))(*(v14 + 1032), *(v14 + 976));
    goto LABEL_7;
  }

  v27 = v25;
  v28 = *(v14 + 1024);
  v29 = *(v14 + 1016);
  v30 = *(v14 + 984);
  v31 = *(v14 + 976);
  v32 = *(v14 + 968);
  v33 = *(v14 + 960);
  v78 = *(v14 + 1008);
  v79 = *(v14 + 952);
  sub_16BF3C();

  v34 = *(v30 + 16);
  v34(v29, v26, v31);
  v35 = sub_389C0();
  (v34)(v35);
  sub_16BD5C();
  v36 = sub_16DA4C();
  (*(v33 + 8))(v32, v79);
  if (v36)
  {
    v37 = *(v14 + 1032);
    v38 = *(*(v14 + 984) + 8);
    (v38)(*(v14 + 1024), *(v14 + 976));
    v39 = sub_38B40();
    v38(v39);
LABEL_7:
    v40 = *(v14 + 944);
    v41 = *(v14 + 928);
    v42 = *(v14 + 920);
    *(v14 + 1048) = sub_16DBBC();
    sub_8B48();
    *(v14 + 1056) = *(v41 + 16);
    *(v14 + 1064) = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v43 = sub_389C0();
    v44(v43);
    v45 = v16;
    v46 = sub_16DBDC();
    LOBYTE(v42) = sub_16E36C();

    if (os_log_type_enabled(v46, v42))
    {
      v47 = sub_8BD8();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v45;
      *v48 = v45;
      v49 = v45;
      sub_88FC(&def_259DC, v50, v51, "Trying to fetch sleep data with intent: %@");
      sub_8748(v48, &qword_1C57B8, &qword_1715A0);
      sub_8A2C();
      sub_8A2C();
    }

    v52 = *(v14 + 944);
    v53 = *(v14 + 928);
    v54 = *(v14 + 920);
    v55 = *(v14 + 872);

    v56 = *(v53 + 8);
    *(v14 + 1072) = v56;
    *(v14 + 1080) = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56(v52, v54);
    v57 = *(v55 + 240);
    *(v14 + 16) = v14;
    *(v14 + 56) = v14 + 856;
    *(v14 + 24) = sub_CC7A8;
    v58 = swift_continuation_init();
    *(v14 + 720) = sub_2440(&qword_1C97D8, &qword_176118);
    *(v14 + 696) = v58;
    *(v14 + 664) = _NSConcreteStackBlock;
    *(v14 + 672) = 1107296256;
    *(v14 + 680) = sub_53C4;
    *(v14 + 688) = &unk_1BB688;
    [v57 handleGetSleepAnalysis:v45 completion:v14 + 664];
    sub_841E0();

    return _swift_continuation_await(v59);
  }

  v61 = *(v14 + 1032);
  v62 = *(v14 + 1024);
  v63 = *(v14 + 984);
  v64 = *(v14 + 976);
  v65 = *(v14 + 864);
  sub_BC848((v14 + 504));
  sub_BC9FC();
  sub_16C4EC();

  sub_D45A0(v14 + 504);
  v66 = *(v63 + 8);
  v67 = sub_C9E0();
  v66(v67);
  v68 = sub_389C0();
  v66(v68);
  sub_D49F8();

  sub_C9BC();
  sub_841E0();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, v78, v79, a12, a13, a14);
}

uint64_t sub_CC7A8()
{
  sub_8A88();
  v7 = *v0;
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_CC878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  sub_D4EA4();
  v15 = *(v14 + 1064);
  v16 = *(v14 + 1056);
  v17 = *(v14 + 1048);
  v18 = *(v14 + 936);
  v19 = *(v14 + 920);
  v20 = *(v14 + 856);
  *(v14 + 1088) = v20;
  sub_1B9B4();
  v16(v18, v17, v19);
  v21 = v20;
  v22 = sub_16DBDC();
  LOBYTE(v18) = sub_16E36C();

  if (os_log_type_enabled(v22, v18))
  {
    v23 = sub_8BD8();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v21;
    *v24 = v21;
    v25 = v21;
    sub_88FC(&def_259DC, v26, v27, "Received response: %@");
    sub_8748(v24, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_8A2C();
  }

  v28 = *(v14 + 1080);
  v29 = (*(v14 + 1072))(*(v14 + 936), *(v14 + 920));
  v30 = (*(&stru_20.maxprot + (swift_isaMask & *v21)))(v29);
  if (v30 == 4)
  {
    *(v14 + 792) = &type metadata for WellnessFeatureFlagsKey;
    *(v14 + 800) = sub_3736C();
    *(v14 + 768) = 4;
    v68 = sub_16C86C();
    sub_2D64((v14 + 768));
    if (v68)
    {
      v69 = swift_task_alloc();
      *(v14 + 1096) = v69;
      *v69 = v14;
      v69[1] = sub_CCFA8;
      v70 = *(v14 + 872);
      sub_C98D8(*(v14 + 1040));
      sub_841E0();

      return sub_CD8C0();
    }

    else
    {
      v77 = swift_task_alloc();
      *(v14 + 1112) = v77;
      *v77 = v14;
      v77[1] = sub_CD17C;
      v78 = *(v14 + 872);
      sub_C98D8(*(v14 + 1040));
      sub_841E0();

      return sub_D1E60();
    }
  }

  else
  {
    if (v30 == 102)
    {
      v41 = *(v14 + 1040);
      v42 = *(v14 + 952);
      v43 = *(v14 + 904);
      v44 = *(v14 + 1128);
      sub_16D6FC();
      sub_8AB4();
      sub_214C(v45, v46, v47, v42);
      v48 = [v41 start];
      if (v48)
      {
        v49 = v48;
        v50 = *(v14 + 1040);
        v51 = *(v14 + 1000);
        sub_16BF3C();

        v52 = [v50 end];
        if (v52)
        {
          v53 = v52;
          v54 = *(v14 + 1016);
          v55 = *(v14 + 1008);
          v56 = *(v14 + 1000);
          v57 = *(v14 + 992);
          v58 = *(v14 + 984);
          v59 = *(v14 + 976);
          a10 = *(v14 + 904);
          v100 = *(v14 + 952);
          a9 = *(v14 + 896);
          sub_16BF3C();

          v60 = *(v58 + 16);
          v60(v54, v56, v59);
          v60(v55, v57, v59);
          sub_16BD5C();
          v61 = *(v58 + 8);
          v62 = sub_A76B4();
          v61(v62);
          (v61)(v56, v59);
          v63 = sub_389C0();
          sub_8748(v63, v64, &dword_16F320);
          sub_388E4();
          sub_214C(v65, v66, v67, v100);
          sub_86FC(a9, a10, &qword_1C5690, &dword_16F320);
        }

        else
        {
          (*(*(v14 + 984) + 8))(*(v14 + 1000), *(v14 + 976));
        }
      }

      a11 = *(v14 + 1040);
      v80 = *(v14 + 912);
      v81 = *(v14 + 904);
      v82 = *(v14 + 888);
      v83 = *(v14 + 880);
      v84 = *(v14 + 872);
      v85 = *(v14 + 864);
      v86 = *(v84 + 272);
      sub_86B0(v81, &v82[v83[5]], &qword_1C5690, &dword_16F320);
      sub_C9294(v84 + 40, &v82[v83[6]]);
      sub_8284(v84 + 80, &v82[v83[7]]);
      v87 = sub_16C58C();
      sub_8D14(v87);
      v88 = sub_16C57C();
      v89 = &v82[v83[8]];
      v89[3] = v87;
      v89[4] = &protocol witness table for ResponseFactory;
      *v89 = v88;
      type metadata accessor for WellnessCATsSimple();
      sub_16D62C();
      v90 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_16D62C();
      v91 = sub_16D58C();
      *v82 = v86;
      *&v82[v83[9]] = v90;
      *&v82[v83[10]] = v91;
      sub_D4798(&qword_1C57C8, type metadata accessor for UnavailableDataFlow);
      sub_16C4EC();

      sub_8748(v81, &qword_1C5690, &dword_16F320);
      sub_D47F4(v82, type metadata accessor for UnavailableDataFlow);
    }

    else if (v30 == 101)
    {
      v31 = *(v14 + 1040);
      v32 = *(v14 + 912);
      v33 = *(v14 + 872);
      v34 = *(v14 + 864);
      v35 = *(v14 + 1128);
      sub_16D76C();
      v36 = *(v33 + 272);
      sub_C9294(v33 + 40, v14 + 88);
      sub_8284(v33 + 80, v14 + 128);
      v37 = sub_16C58C();
      sub_8D14(v37);
      v38 = sub_16C57C();
      *(v14 + 312) = v37;
      *(v14 + 320) = &protocol witness table for ResponseFactory;
      *(v14 + 288) = v38;
      type metadata accessor for WellnessCATsSimple();
      sub_16D62C();
      v39 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_16D62C();
      v40 = sub_16D58C();
      *(v14 + 80) = v36;
      *(v14 + 328) = v39;
      *(v14 + 336) = v40;
      sub_84F0();
      sub_16C4EC();

      sub_8544(v14 + 80);
    }

    else
    {
      v73 = *(v14 + 1040);
      v74 = *(v14 + 872);
      v75 = *(v14 + 864);
      v76 = *(v14 + 1128);
      sub_16D6FC();
      sub_8284(v74 + 80, v14 + 344);
      sub_82E0();
      sub_16C4EC();

      sub_8334(v14 + 344);
    }

    sub_D49F8();

    sub_C9BC();
    sub_841E0();

    return v93(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_CCFA8()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 1096);
  *v2 = *v0;
  *(v1 + 1104) = v5;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_CD090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  sub_D4EA4();
  v17 = *(v14 + 1104);
  sub_D4E1C();
  sub_16D72C();
  sub_16C4FC();

  sub_D49F8();

  sub_C9BC();
  sub_841E0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_CD17C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 1112);
  *v2 = *v0;
  *(v1 + 1120) = v5;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_CD264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  sub_D4EA4();
  v17 = *(v14 + 1120);
  sub_D4E1C();
  sub_16D72C();
  sub_16C4FC();

  sub_D49F8();

  sub_C9BC();
  sub_841E0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

id sub_CD350()
{
  v1 = v0;
  v70 = sub_16C0BC();
  v2 = sub_42F0(v70);
  v72 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v71 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2440(&qword_1C5690, &dword_16F320);
  v8 = sub_4348(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_38634();
  v73 = v11;
  __chkstk_darwin(v12);
  v14 = &v69 - v13;
  v15 = sub_2440(&qword_1C57E0, &unk_171C60);
  v16 = sub_4348(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_38634();
  v75 = v19;
  __chkstk_darwin(v20);
  v22 = &v69 - v21;
  v23 = sub_16BF5C();
  v24 = sub_42F0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  sub_38634();
  v74 = v29;
  v31 = __chkstk_darwin(v30);
  v33 = &v69 - v32;
  __chkstk_darwin(v31);
  v35 = &v69 - v34;
  v76 = [objc_allocWithZone(sub_16D96C()) init];
  v36 = v0[3];
  v37 = v0[4];
  sub_2D20(v0, v36);
  (*(v37 + 32))(v36, v37);
  v38 = sub_16BD9C();
  if (sub_369C(v14, 1, v38) == 1)
  {
    sub_8748(v14, &qword_1C5690, &dword_16F320);
    sub_8AB4();
    sub_214C(v39, v40, v41, v23);
    sub_16BF4C();
    v42 = v71;
    sub_16C08C();
    sub_16C02C();
    (*(v72 + 8))(v42, v70);
    (*(v26 + 8))(v33, v23);
    if (sub_369C(v22, 1, v23) != 1)
    {
      sub_8748(v22, &qword_1C57E0, &unk_171C60);
    }
  }

  else
  {
    sub_16BD7C();
    sub_5DE54(v38);
    (*(v43 + 8))(v14, v38);
    sub_388E4();
    sub_214C(v44, v45, v46, v23);
    (*(v26 + 32))(v35, v22, v23);
  }

  isa = sub_16BEEC().super.isa;
  v48 = *(v26 + 8);
  v49 = sub_8427C();
  v48(v49);
  [v76 setStart:isa];

  v50 = v1[3];
  v51 = v1[4];
  sub_2D20(v1, v50);
  v52 = v73;
  (*(v51 + 32))(v50, v51);
  if (sub_369C(v52, 1, v38) == 1)
  {
    sub_8748(v52, &qword_1C5690, &dword_16F320);
    v53 = v75;
    v54 = sub_D4B6C();
    sub_214C(v54, v55, v56, v23);
    sub_16BF4C();
    v57 = v74;
    sub_7B6B8(v74);
    (v48)(v33, v23);
    if (sub_369C(v53, 1, v23) != 1)
    {
      sub_8748(v53, &qword_1C57E0, &unk_171C60);
    }
  }

  else
  {
    v58 = v75;
    sub_16BD4C();
    sub_5DE54(v38);
    v60 = *(v59 + 8);
    v61 = sub_D4E5C();
    v62(v61);
    sub_388E4();
    sub_214C(v63, v64, v65, v23);
    v57 = v74;
    (*(v26 + 32))(v74, v58, v23);
  }

  v66 = sub_16BEEC().super.isa;
  (v48)(v57, v23);
  v67 = v76;
  [v76 setEnd:v66];

  return v67;
}

uint64_t sub_CD8C0()
{
  sub_8A88();
  v1[145] = v0;
  v1[144] = v2;
  v1[143] = v3;
  v4 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v4);
  v6 = *(v5 + 64);
  v1[146] = sub_8BC0();
  v7 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v7);
  v9 = *(v8 + 64);
  v1[147] = sub_8BC0();
  v10 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v10);
  v12 = *(v11 + 64);
  v1[148] = sub_8C38();
  v1[149] = swift_task_alloc();
  Model = type metadata accessor for SleepQueryModel();
  v1[150] = Model;
  sub_4348(Model);
  v15 = *(v14 + 64);
  v1[151] = sub_8C38();
  v1[152] = swift_task_alloc();
  v1[153] = swift_task_alloc();
  v16 = type metadata accessor for SnippetHeaderModel();
  v1[154] = v16;
  sub_4348(v16);
  v18 = *(v17 + 64);
  v1[155] = sub_8C38();
  v1[156] = swift_task_alloc();
  v1[157] = swift_task_alloc();
  v1[158] = swift_task_alloc();
  v19 = sub_16DBEC();
  v1[159] = v19;
  sub_888C(v19);
  v1[160] = v20;
  v22 = *(v21 + 64);
  v1[161] = sub_8C38();
  v1[162] = swift_task_alloc();
  v1[163] = swift_task_alloc();
  v1[164] = swift_task_alloc();
  v1[165] = swift_task_alloc();
  v1[166] = swift_task_alloc();
  v1[167] = swift_task_alloc();
  v1[168] = swift_task_alloc();
  v1[169] = swift_task_alloc();
  v23 = sub_16C09C();
  v1[170] = v23;
  sub_888C(v23);
  v1[171] = v24;
  v26 = *(v25 + 64);
  v1[172] = sub_8BC0();
  v27 = sub_16C0BC();
  v1[173] = v27;
  sub_888C(v27);
  v1[174] = v28;
  v30 = *(v29 + 64);
  v1[175] = sub_8BC0();
  v31 = sub_16BD9C();
  v1[176] = v31;
  sub_888C(v31);
  v1[177] = v32;
  v34 = *(v33 + 64);
  v1[178] = sub_8C38();
  v1[179] = swift_task_alloc();
  v35 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v35);
  v37 = *(v36 + 64);
  v1[180] = sub_8C38();
  v1[181] = swift_task_alloc();
  v38 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v38);
  v40 = *(v39 + 64);
  v1[182] = sub_8C38();
  v1[183] = swift_task_alloc();
  v1[184] = swift_task_alloc();
  v41 = sub_16BF5C();
  v1[185] = v41;
  sub_888C(v41);
  v1[186] = v42;
  v44 = *(v43 + 64);
  v1[187] = sub_8C38();
  v1[188] = swift_task_alloc();
  v1[189] = swift_task_alloc();
  v1[190] = swift_task_alloc();
  v1[191] = swift_task_alloc();
  v45 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v45);
  v47 = *(v46 + 64);
  v1[192] = sub_8C38();
  v1[193] = swift_task_alloc();
  v1[194] = swift_task_alloc();
  v1[195] = swift_task_alloc();
  v1[196] = swift_task_alloc();
  v1[197] = swift_task_alloc();
  v1[198] = swift_task_alloc();
  v1[199] = swift_task_alloc();
  v1[200] = swift_task_alloc();
  v48 = sub_17960();

  return _swift_task_switch(v48, v49, v50);
}

uint64_t sub_CDD54()
{
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1144);
  *(v0 + 1608) = sub_D4F4C();
  [v2 totalInBedDuration];
  *(v0 + 1616) = v4;
  [v2 totalAsleepDuration];
  *(v0 + 1624) = v5;
  *(v0 + 1632) = sub_D4F4C();
  *(v0 + 1640) = [v2 daysSummarized];
  v6 = sub_16D38C();
  sub_8D14(v6);
  sub_16D37C();
  v7 = &off_1C4000;
  v8 = [v3 start];
  if (v8)
  {
    v9 = v8;
    v10 = *(v0 + 1592);
    sub_16BF3C();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(v0 + 1600);
  v13 = *(v0 + 1480);
  sub_214C(*(v0 + 1592), v11, 1, v13);
  v14 = sub_8B9C();
  sub_86FC(v14, v15, v16, v17);
  v18 = sub_A76DC();
  v20 = sub_369C(v18, v19, v13);
  v21 = *(v0 + 1600);
  if (v20)
  {
    sub_8748(*(v0 + 1600), &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v22 = sub_D4CEC();
    v23(v22);
    sub_8748(v21, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v24 = *(v1 + 8);
    v1 += 8;
    v25 = sub_387CC();
    v26(v25);
  }

  v27 = *(v0 + 1144);
  sub_16D35C();

  v28 = &off_1C4000;
  v29 = [v27 end];
  if (v29)
  {
    v30 = v29;
    v31 = *(v0 + 1576);
    sub_16BF3C();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = *(v0 + 1584);
  v34 = *(v0 + 1576);
  v35 = *(v0 + 1480);
  sub_214C(v34, v32, 1, v35);
  sub_86FC(v34, v33, &qword_1C57E0, &unk_171C60);
  v36 = sub_A76DC();
  LODWORD(v34) = sub_369C(v36, v37, v35);
  v38 = *(v0 + 1584);
  if (v34)
  {
    sub_8748(*(v0 + 1584), &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v39 = sub_D4CEC();
    v40(v39);
    sub_8748(v38, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v41 = *(v1 + 8);
    v42 = sub_387CC();
    v43(v42);
  }

  v44 = *(v0 + 1472);
  v45 = *(v0 + 1408);
  v46 = *(v0 + 1144);
  sub_16D34C();

  *(v0 + 1648) = sub_16D36C();

  v47 = sub_D4B6C();
  sub_214C(v47, v48, v49, v45);
  v50 = [v46 start];
  if (v50)
  {
    v51 = v50;
    v52 = *(v0 + 1520);
    v53 = *(v0 + 1144);
    sub_16BF3C();

    v54 = [v53 end];
    if (v54)
    {
      v55 = v54;
      v56 = *(v0 + 1528);
      v57 = *(v0 + 1520);
      v58 = *(v0 + 1512);
      v59 = *(v0 + 1504);
      v60 = *(v0 + 1488);
      v61 = *(v0 + 1480);
      v62 = *(v0 + 1464);
      v192 = *(v0 + 1472);
      v194 = *(v0 + 1408);
      sub_16BF3C();

      v63 = *(v60 + 16);
      v64 = sub_387CC();
      v63(v64);
      (v63)(v59, v58, v61);
      v7 = &off_1C4000;
      sub_16BD5C();
      v65 = *(v60 + 8);
      v65(v58, v61);
      v66 = v61;
      v28 = &off_1C4000;
      v65(v57, v66);
      v67 = sub_38B40();
      sub_8748(v67, v68, &dword_16F320);
      sub_388E4();
      sub_214C(v69, v70, v71, v194);
      v72 = sub_8B9C();
      sub_86FC(v72, v73, &qword_1C5690, &dword_16F320);
    }

    else
    {
      (*(*(v0 + 1488) + 8))(*(v0 + 1520), *(v0 + 1480));
    }
  }

  v74 = *(v0 + 1472);
  v75 = *(v0 + 1456);
  v76 = *(v0 + 1448);
  v77 = *(v0 + 1408);
  v78 = *(*(v0 + 1160) + 272);
  *(v0 + 1976) = v78;
  sub_12093C(v78, v74, v76);
  v79 = sub_38B40();
  sub_86B0(v79, v80, v81, v82);
  if (sub_369C(v75, 1, v77) == 1)
  {
    sub_8748(*(v0 + 1456), &qword_1C5690, &dword_16F320);
    goto LABEL_29;
  }

  v195 = v78;
  v83 = *(v0 + 1568);
  v84 = *(v0 + 1528);
  v85 = *(v0 + 1488);
  v86 = *(v0 + 1480);
  v87 = *(v0 + 1400);
  v88 = *(v0 + 1392);
  v193 = *(v0 + 1384);
  v89 = *(v0 + 1376);
  v90 = *(v0 + 1368);
  v91 = *(v0 + 1360);
  (*(*(v0 + 1416) + 32))(*(v0 + 1432), *(v0 + 1456), *(v0 + 1408));
  sub_16C08C();
  v92 = sub_D4E68();
  v93(v92);
  sub_16BF4C();
  sub_16C06C();
  v94 = v84;
  v95 = *(v85 + 8);
  v95(v94, v86);
  v96 = *(v90 + 8);
  v97 = sub_D4D84();
  v98(v97);
  v99 = *(v88 + 8);
  v99(v87, v193);
  v100 = sub_369C(v83, 1, v86);
  v101 = *(v0 + 1568);
  if (v100 == 1)
  {
    (*(*(v0 + 1416) + 8))(*(v0 + 1432), *(v0 + 1408));
    sub_8748(v101, &qword_1C57E0, &unk_171C60);
LABEL_26:
    v7 = &off_1C4000;
    v28 = &off_1C4000;
    v78 = v195;
    goto LABEL_29;
  }

  v102 = *(v0 + 1528);
  v103 = *(v0 + 1504);
  v189 = v99;
  v190 = *(v0 + 1496);
  v104 = *(v0 + 1480);
  v105 = *(v0 + 1432);
  v106 = *(v0 + 1400);
  v107 = *(v0 + 1384);
  (*(*(v0 + 1488) + 32))();
  sub_16C08C();
  sub_16BD7C();
  sub_16BD4C();
  v188 = sub_16C07C();
  v95(v103, v104);
  v95(v102, v104);
  v189(v106, v107);
  sub_16C08C();
  sub_16BD4C();
  v108 = sub_16C07C();
  v95(v102, v104);
  v189(v106, v107);
  v109 = *(v0 + 1416);
  v110 = *(v0 + 1408);
  if ((v188 & 1) == 0 || (v108 & 1) == 0)
  {
    v139 = *(v0 + 1432);
    v95(*(v0 + 1496), *(v0 + 1480));
    v140 = *(v109 + 8);
    v141 = sub_8B9C();
    v142(v141);
    goto LABEL_26;
  }

  v191 = v95;
  v111 = *(v0 + 1432);
  v112 = *(v0 + 1424);
  v113 = *(v0 + 1352);
  v114 = *(v0 + 1280);
  v115 = *(v0 + 1272);
  sub_16DBBC();
  sub_8B48();
  v116 = *(v114 + 16);
  v117 = sub_D4E5C();
  v118(v117);
  v119 = *(v109 + 16);
  v120 = sub_8427C();
  v121(v120);
  v122 = sub_16DBDC();
  v123 = sub_16E36C();
  v124 = os_log_type_enabled(v122, v123);
  v125 = *(v0 + 1424);
  v126 = *(v0 + 1416);
  v127 = *(v0 + 1408);
  v128 = *(v0 + 1352);
  v129 = *(v0 + 1280);
  v130 = *(v0 + 1272);
  if (v124)
  {
    sub_8BD8();
    v196 = sub_5D98C();
    *v123 = 136315138;
    sub_D4C54();
    sub_D4798(v131, v132);
    sub_16E68C();
    v133 = sub_D4D68();
    v134(v133);
    v135 = sub_C9F8();
    v138 = sub_3AB7C(v135, v136, v137);

    *(v123 + 4) = v138;
    _os_log_impl(&def_259DC, v122, v123, "%s seems like a request for last night, removing intervals from deep link", v123, 0xCu);
    sub_2D64(v196);
    sub_8A2C();
    sub_8A2C();

    (*(v129 + 8))(v128, v130);
  }

  else
  {

    v143 = sub_D4D68();
    v144(v143);
    v145 = *(v129 + 8);
    v146 = sub_C9F8();
    v148(v146, v147);
  }

  v149 = *(v0 + 1496);
  v150 = *(v0 + 1480);
  v151 = *(v0 + 1464);
  v152 = *(v0 + 1448);
  v153 = *(v0 + 1440);
  v154 = *(v0 + 1432);
  v155 = *(v0 + 1408);
  v156 = sub_D4B6C();
  sub_214C(v156, v157, v158, v155);
  v78 = v195;
  sub_12093C(v195, v151, v153);
  sub_8748(v151, &qword_1C5690, &dword_16F320);
  v159 = sub_C9C8();
  v191(v159);
  v189(v154, v155);
  sub_8748(v152, &qword_1C57F8, &unk_172510);
  sub_86FC(v153, v152, &qword_1C57F8, &unk_172510);
  v7 = &off_1C4000;
  v28 = &off_1C4000;
LABEL_29:
  v160 = [*(v0 + 1144) v7[338]];
  if (v160)
  {
    v161 = v160;
    v162 = *(v0 + 1560);
    sub_16BF3C();

    v163 = 0;
  }

  else
  {
    v163 = 1;
  }

  v164 = *(v0 + 1144);
  sub_214C(*(v0 + 1560), v163, 1, *(v0 + 1480));
  v165 = [v164 v28[339]];
  if (v165)
  {
    v168 = v165;
    v169 = *(v0 + 1552);
    sub_16BF3C();
  }

  v170 = *(v0 + 1152);
  v171 = 1;
  sub_5DC74(*(v0 + 1552), v166, v167, *(v0 + 1480));
  v172 = [v170 summaryStartDate];
  if (v172)
  {
    v173 = v172;
    v174 = *(v0 + 1544);
    sub_16BF3C();

    v171 = 0;
  }

  v175 = *(v0 + 1152);
  sub_214C(*(v0 + 1544), v171, 1, *(v0 + 1480));
  v176 = [v175 summaryEndDate];
  if (v176)
  {
    v179 = v176;
    v180 = *(v0 + 1536);
    sub_16BF3C();
  }

  v181 = *(v0 + 1560);
  v182 = *(v0 + 1552);
  v183 = *(v0 + 1544);
  sub_5DC74(*(v0 + 1536), v177, v178, *(v0 + 1480));
  type metadata accessor for WellnessTime(0);
  sub_C9F8();
  sub_15BF80();
  *(v0 + 1656) = v184;
  sub_208C0(v78);
  *(v0 + 1664) = v185;
  v186 = swift_task_alloc();
  *(v0 + 1672) = v186;
  *v186 = v0;
  v186[1] = sub_CE8B8;
  sub_C9C8();

  return sub_66E84();
}

uint64_t sub_CE8B8()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 1672);
  v6 = *(v4 + 1664);
  v7 = *v0;
  sub_C990();
  *v8 = v7;
  v2[210] = v9;
  v2[211] = v10;

  v11 = swift_task_alloc();
  v2[212] = v11;
  *v11 = v7;
  v11[1] = sub_CEA08;
  v12 = sub_C98D8(0x6867694E7473616CLL);

  return sub_66A84(v12, 0xE900000000000074);
}

uint64_t sub_CEA08()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 1696);
  v6 = *v0;
  *v3 = v6;
  v2[213] = v7;
  v2[214] = v8;

  v9 = swift_task_alloc();
  v2[215] = v9;
  *v9 = v6;
  v9[1] = sub_CEB48;
  v10 = sub_C98D8(0x6D69546C61746F74);

  return sub_66A84(v10, v11);
}

uint64_t sub_CEB48()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 1720);
  *v2 = *v0;
  *(v1 + 1728) = v5;
  *(v1 + 1736) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_CEC34()
{
  v1 = (v0 + 1736);
  if (!*(v0 + 1688))
  {
    v19 = *(v0 + 1712);

    goto LABEL_12;
  }

  if (!*v1)
  {
    v20 = *(v0 + 1688);

    v1 = (v0 + 1712);
LABEL_12:
    v21 = *v1;
    v22 = *(v0 + 1288);
    v23 = *(v0 + 1280);
    v24 = *(v0 + 1272);

    sub_16DBBC();
    sub_8B48();
    v25 = *(v23 + 16);
    v26 = sub_38B40();
    v27(v26);
    v28 = sub_16DBDC();
    v29 = sub_16E37C();
    if (sub_1BA1C(v29))
    {
      v30 = sub_1BA38();
      sub_1BA50(v30);
      sub_1B9D0(&def_259DC, v31, v32, "#GetSleepAnalysisFlow: Category label or last night label is nil");
      sub_1BA00();
    }

    v33 = *(v0 + 1656);
    v34 = *(v0 + 1648);
    v35 = *(v0 + 1472);
    v36 = *(v0 + 1448);
    v37 = *(v0 + 1288);
    v38 = *(v0 + 1280);
    v39 = *(v0 + 1272);
    v40 = *(v0 + 1160);

    (*(v38 + 8))(v37, v39);
    sub_8284(v40 + 80, v0 + 176);
    sub_82E0();
    sub_16C32C();

    sub_8334(v0 + 176);
    sub_8748(v36, &qword_1C57F8, &unk_172510);
    sub_8748(v35, &qword_1C5690, &dword_16F320);
    sub_D4914();
    sub_D4AA8();
    v139 = *(v0 + 1264);
    v141 = *(v0 + 1256);
    v143 = *(v0 + 1248);
    v145 = *(v0 + 1240);
    v147 = *(v0 + 1224);
    v149 = *(v0 + 1216);
    v151 = *(v0 + 1208);
    v153 = *(v0 + 1192);
    v156 = *(v0 + 1184);
    v159 = *(v0 + 1176);
    v161 = *(v0 + 1168);

    sub_5D948();
    sub_D4DFC();

    __asm { BRAA            X2, X16 }
  }

  v2 = *(v0 + 1680);
  v3 = *(v0 + 1648);
  v4 = *(v0 + 1264);
  v5 = *(v0 + 1232);
  v6 = *(v0 + 1976);

  sub_C9F8();
  sub_16E23C();
  v7 = sub_25948(v6);
  v9 = v8;
  v10 = sub_208C0(v6);
  v11 = (v4 + *(v5 + 20));
  *v11 = v7;
  v11[1] = v9;
  v12 = (v4 + *(v5 + 24));
  *v12 = v10;
  v12[1] = v13;
  v14 = sub_16D33C();
  if (!v14)
  {
    goto LABEL_19;
  }

  v7 = v14;
  v15 = *(v0 + 1648);
  if (!sub_16D32C())
  {
    goto LABEL_18;
  }

  if ((sub_16D44C() & 1) == 0 || (sub_16D44C() & 1) == 0 || (sub_16D4DC() & 1) == 0)
  {

LABEL_18:

LABEL_19:
    v43 = *(v0 + 1648);
    if (sub_16D30C())
    {
      if (!*(*(v0 + 1656) + 48))
      {
LABEL_25:
        v18 = 0;
        v17 = 0;
        goto LABEL_27;
      }

      v44 = *(v0 + 1192);
      sub_16D45C();
      v45 = sub_16D5CC();
      v46 = sub_D4EEC(v45);
      v47 = *(v0 + 1192);
      if (v46 != 1)
      {
        sub_16D5BC();
        sub_5DE54(v7);
        v49 = *(v48 + 8);
        v50 = sub_C9C8();
        v51(v50);
        v18 = sub_16E24C();
        v17 = v52;

        goto LABEL_27;
      }
    }

    else
    {
      v53 = *(v0 + 1648);
      v54 = *(v0 + 1184);
      sub_16D31C();
      v55 = sub_16D5CC();
      v56 = sub_D4EEC(v55);
      v47 = *(v0 + 1184);
      if (v56 != 1)
      {
        v18 = sub_16D5BC();
        v17 = v57;
        sub_5DE54(v7);
        v59 = *(v58 + 8);
        v60 = sub_C9C8();
        v61(v60);
        goto LABEL_27;
      }
    }

    sub_8748(v47, &qword_1C5800, &unk_16F510);
    goto LABEL_25;
  }

  v16 = sub_16D4DC();

  if ((v16 & 1) == 0)
  {
    goto LABEL_19;
  }

  v17 = *(v0 + 1712);

  v18 = *(v0 + 1704);
LABEL_27:
  *(v0 + 1752) = v17;
  *(v0 + 1744) = v18;
  v62 = *(v0 + 1624);
  v63 = *(v0 + 1616);
  if ([*(v0 + 1152) daysSummarized] == &def_259DC + 1 || v63 <= 0.0 || v62 <= 0.0)
  {
    v154 = *(v0 + 1728);
    v157 = *(v0 + 1736);
    v150 = v17;
    v152 = v18;
    v70 = *(v0 + 1712);
    v163 = *(v0 + 1448);
    v71 = *(v0 + 1440);
    v72 = *(v0 + 1264);
    v73 = *(v0 + 1232);
    v74 = *(v0 + 1224);
    v75 = *(v0 + 1200);
    v76 = *(v0 + 1176);
    v146 = *(v0 + 1168);
    v148 = v76;
    v160 = *(v0 + 1152);

    sub_D4870();
    sub_D45F4(v72, v76, v77);
    sub_388E4();
    sub_214C(v78, v79, v80, v73);
    sub_86B0(v163, v71, &qword_1C57F8, &unk_172510);
    v81 = sub_16C11C();
    sub_8AB4();
    sub_214C(v82, v83, v84, v81);
    v144 = v75[5];
    sub_8AB4();
    sub_214C(v85, v86, v87, v73);
    v140 = (v74 + v75[6]);
    v142 = (v74 + v75[7]);
    v88 = (v74 + v75[8]);
    v138 = (v74 + v75[9]);
    v89 = v75[11];
    v90 = (v74 + v75[10]);
    v136 = v75[12];
    v137 = v75[13];
    v91 = v75[14];
    v92 = (v74 + v75[15]);
    *v92 = 0;
    v92[1] = 0;
    v162 = v92;
    v164 = v75;
    v93 = (v74 + v75[16]);
    *v93 = 0;
    v93[1] = 0;
    v94 = (v74 + v75[17]);
    *v94 = 0;
    v94[1] = 0;
    sub_152BF0(v71);
    sub_8748(v71, &qword_1C57F8, &unk_172510);
    sub_388E4();
    sub_214C(v95, v96, v97, v81);
    sub_1E634(v146, v74, &qword_1C63F0, &unk_1717F0);
    sub_1E634(v148, v74 + v144, &dword_1C63F8, &qword_171800);
    *v140 = v152;
    v140[1] = v150;
    *v142 = v154;
    v142[1] = v157;
    *v88 = 0;
    v88[1] = 0;
    *v138 = 0;
    v138[1] = 0;
    *v90 = 0;
    v90[1] = 0;
    v155 = v91;
    v158 = v89;
    *(v74 + v89) = 0;
    *(v74 + v136) = 0;
    *(v74 + v137) = 0;
    *(v74 + v91) = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v102 = &off_1C4000;
    if ([v160 daysSummarized] == &def_259DC + 1)
    {
      if (*(v0 + 1608) < 1)
      {
        v98 = 0;
        v100 = 0;
      }

      else
      {
        v103 = *(v0 + 1152);
        v104 = sub_16D53C();
        sub_8D14(v104);
        sub_16D52C();
        [v103 totalAsleepDuration];
        sub_D4DD8();

        v105 = sub_16D50C();

        v100 = v105;
        *(v74 + v137) = v105;
        v106 = *(v104 + 48);
        v107 = *(v104 + 52);
        swift_allocObject();
        sub_16D52C();
        [v103 averageAsleepDuration];
        sub_D4DD8();

        v98 = sub_16D50C();

        *(v74 + v158) = v98;
      }

      v108 = *(v0 + 1152);
      v109 = sub_16D53C();
      sub_8D14(v109);
      sub_16D52C();
      [v108 totalInBedDuration];
      sub_D4DD8();

      v101 = sub_16D50C();

      *(v74 + v155) = v101;
      v110 = *(v109 + 48);
      v111 = *(v109 + 52);
      swift_allocObject();
      sub_16D52C();
      v102 = &off_1C4000;
      [v108 averageInBedDuration];
      sub_D4DD8();

      v99 = sub_16D50C();

      *(v74 + v136) = v99;
    }

    *(v0 + 1768) = v101;
    *(v0 + 1760) = v100;
    if (*(v0 + 1616) <= 0.0 || v62 <= 0.0)
    {
      if (*(v0 + 1608) >= 1)
      {
        v112 = *(v0 + 1152);
        v113 = sub_16D53C();
        sub_8D14(v113);
        sub_16D52C();
        [v112 averageAsleepDuration];
        sub_D4DD8();

        v114 = sub_16D50C();

        *(v74 + v158) = v114;
        v98 = v114;
      }

      v115 = *(v0 + 1152);
      v116 = sub_16D53C();
      sub_8D14(v116);
      sub_16D52C();
      [v115 v102[354]];
      sub_D4DD8();

      v117 = sub_16D50C();

      *(v74 + v136) = v117;
      v99 = v117;
    }

    *(v0 + 1784) = v99;
    *(v0 + 1776) = v98;
    v118 = *(v0 + 1224);
    v119 = *(v0 + 1216);
    sub_D4960();
    sub_D45F4(v120, v119, v121);
    v122 = *(v0 + 1216);
    if (*(v119 + v164[11]) || *(v122 + v164[12]) || *(v122 + v164[13]) || *(v122 + v164[14]))
    {

      SleepQueryModel.getAbbrHoursMinDialogDuration(duration:)();
      sub_A7800();

      v122 = *(v0 + 1216);
    }

    else
    {
      v102 = 0;
      v100 = 0;
    }

    v123 = *(v0 + 1656);
    v124 = *(v0 + 1648);
    v125 = *(v0 + 1160);
    sub_D4948();
    sub_D47F4(v122, v126);
    *v162 = v102;
    v162[1] = v100;
    v127 = *(v125 + 264);

    v128 = swift_task_alloc();
    *(v0 + 1792) = v128;
    *v128 = v0;
    v128[1] = sub_CF7F8;
    sub_D4DFC();

    return sub_B0D6C(v129, v130, v131, v132, v133, v134);
  }

  else
  {
    v64 = swift_task_alloc();
    *(v0 + 1856) = v64;
    *v64 = v0;
    sub_D4E90(v64);
    sub_C98D8(v65 & 0xFFFFFFFFFFFFLL | 0x4165000000000000);
    sub_D4DFC();

    return sub_66A84(v66, v67);
  }
}