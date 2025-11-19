void sub_2FA4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_301C;
  block[3] = &unk_209D0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_301C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 168);
  *(v1 + 168) = 0;
}

void sub_33AC(uint64_t a1)
{
  [*(*(a1 + 32) + 192) setPermission:0];
  [*(*(a1 + 32) + 144) updateGrantedDelegate:*(*(a1 + 32) + 192) action:1 source:*(*(a1 + 32) + 184) completion:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  [WeakRetained didModifyDelegate:*(*(a1 + 32) + 192)];

  v4 = [*(a1 + 32) navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

id sub_4768(uint64_t a1)
{
  result = +[CalLocationAuthorization ttlLocationStatus];
  v3 = *(a1 + 32);
  if (result != *(v3 + 160))
  {
    *(v3 + 160) = result;
    v4 = *(a1 + 32);

    return [v4 _travelAdvisoriesEnabledChanged];
  }

  return result;
}

void sub_619C(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 isEqualToString:&stru_210B8])
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = *(a1 + 40);
    v5 = [v3 localizedStringForKey:@"Alternate Calendar Off" value:@"Off" table:@"MobileCalSettings"];
    [v4 addObject:v5];
  }

  else
  {
    v3 = [CUIKDateStrings overlayCalendarPickerDisplayNameForCalendarWithIdentifier:v6];
    [*(a1 + 40) addObject:v3];
  }
}

void sub_82C8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_83E8;
    block[3] = &unk_209D0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }

  if (v5)
  {
    v6 = kCSLogHandle;
    if (os_log_type_enabled(kCSLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&def_F7BC, v6, OS_LOG_TYPE_ERROR, "Failed to authenticate for locked calendar settings. Error :%@", buf, 0xCu);
    }
  }
}

void sub_8468(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = kCSLogHandle;
    if (os_log_type_enabled(kCSLogHandle, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&def_F7BC, v4, OS_LOG_TYPE_ERROR, "Failed to cancel authenticate for locked calendar settings. Error :%@", &v5, 0xCu);
    }
  }
}

BOOL sub_87E0(id a1, EKSource *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = [(EKSource *)v3 constraints];
  if ([v4 supportsDelegation])
  {
    v5 = ![(EKSource *)v3 isDelegate];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

BOOL sub_88CC(id a1, EKSource *a2, NSDictionary *a3)
{
  v3 = a2;
  if ([(EKSource *)v3 isEnabled])
  {
    v4 = [(EKSource *)v3 isWritable];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

int64_t sub_9CF8(id a1, CalGrantedDelegate *a2, CalGrantedDelegate *a3)
{
  v4 = a3;
  v5 = [(CalGrantedDelegate *)a2 displayName];
  v6 = [(CalGrantedDelegate *)v4 displayName];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

void sub_A2A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_A33C;
  v5[3] = &unk_20C18;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

id sub_A33C(uint64_t a1)
{
  *(*(a1 + 32) + 176) = 0;
  v2 = [*(a1 + 40) sortedArrayUsingComparator:&stru_20BF0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  *(v3 + 144) = v2;

  v5 = *(a1 + 32);
  if (!v5[18])
  {
    v5[18] = &__NSArray0__struct;

    v5 = *(a1 + 32);
  }

  return [v5 reloadSpecifiers];
}

int64_t sub_A448(id a1, EKSource *a2, EKSource *a3)
{
  v3 = a3;
  v4 = CUIKDisplayedTitleForSource();
  v5 = CUIKDisplayedTitleForSource();

  v6 = [v4 caseInsensitiveCompare:v5];
  return v6;
}

void sub_B018(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B090;
  block[3] = &unk_209D0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_B2D0(uint64_t a1, void *a2)
{
  v3 = [a2 uri];
  v4 = [*(a1 + 32) uri];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

BOOL sub_BD24(id a1, CNAutocompleteResult *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = ([(CNAutocompleteResult *)v3 sourceType]& 0x40) != 0 && [(CNAutocompleteResult *)v3 resultType]== 0;

  return v4;
}

id sub_BD70(uint64_t a1)
{
  [*(*(a1 + 32) + 160) addObjectsFromArray:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

void sub_BF48(id a1)
{
  v1 = +[UIApplication sharedApplication];
  [v1 setNetworkActivityIndicatorVisible:0];
}

void sub_C010(id a1)
{
  v1 = +[UIApplication sharedApplication];
  [v1 setNetworkActivityIndicatorVisible:1];
}

BOOL sub_D064(id a1, EKSource *a2, NSDictionary *a3)
{
  v3 = a2;
  if ([(EKSource *)v3 isDelegate])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(EKSource *)v3 constraints];
    v4 = [v5 supportsDelegation];
  }

  return v4;
}

int64_t sub_D2D8(id a1, EKSource *a2, EKSource *a3)
{
  v3 = a3;
  v4 = CUIKDisplayedTitleForSource();
  v5 = CUIKDisplayedTitleForSource();

  v6 = [v4 compare:v5];
  return v6;
}

void CSLogInitialize()
{
  if (qword_27B20[0] != -1)
  {
    sub_122E0();
  }
}

void sub_EB10(id a1)
{
  kCSLogHandle = os_log_create(settingsSubsystem, "CalendarSettings");

  _objc_release_x1();
}

unint64_t sub_EB8C()
{
  result = qword_27A90;
  if (!qword_27A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27A90);
  }

  return result;
}

uint64_t sub_EBFC(uint64_t a1)
{
  sub_12404();
  __chkstk_darwin();
  v2 = sub_123A4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_11F78(0, &qword_27B00);
  v6 = [objc_allocWithZone(PSSpecifier) init];
  [v6 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_123D4();
  sub_12394();
  sub_12434();
  sub_11F78(0, &unk_27B10);
  if (!sub_12584())
  {
    v7 = [objc_opt_self() mainBundle];
  }

  v8 = sub_12444();
  v10 = v9;
  v12 = v11;
  sub_11DBC(&qword_27AA8, &type metadata accessor for PreferencesControllerView);
  sub_12454();
  sub_11FC0(v8, v10, v12 & 1);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_EEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[23] = a1;
  v4[24] = a2;
  v5 = sub_12314();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  sub_10D2C(&qword_27AB8);
  v4[30] = swift_task_alloc();
  v6 = sub_12464();
  v4[31] = v6;
  v4[32] = *(v6 - 8);
  v4[33] = swift_task_alloc();
  v7 = sub_12404();
  v4[34] = v7;
  v4[35] = *(v7 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v8 = sub_12384();
  v4[38] = v8;
  v4[39] = *(v8 - 8);
  v4[40] = swift_task_alloc();
  sub_10D2C(&qword_27AC0);
  v4[41] = swift_task_alloc();
  v9 = sub_12364();
  v4[42] = v9;
  v4[43] = *(v9 - 8);
  v4[44] = swift_task_alloc();
  v10 = sub_12424();
  v4[45] = v10;
  v4[46] = *(v10 - 8);
  v4[47] = swift_task_alloc();
  sub_12564();
  v4[48] = sub_12554();
  v12 = sub_12544();

  return _swift_task_switch(sub_F21C, v12, v11);
}

uint64_t sub_F21C()
{
  v125 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);

  sub_124B4();
  sub_124C4();
  sub_12334();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(*(v0 + 344) + 32))(*(v0 + 352), *(v0 + 328), *(v0 + 336));
    *(v0 + 96) = sub_12344();
    *(v0 + 104) = v10;
    *(v0 + 112) = 47;
    *(v0 + 120) = 0xE100000000000000;
    sub_118DC();
    v11 = sub_125B4();

    v12 = *(v11 + 16);
    countAndFlagsBits = &_swiftEmptyArrayStorage;
    if (v12)
    {
      v14 = 0;
      v15 = -v12;
      v16 = v11 + 40;
      do
      {
        v17 = (v16 + 16 * v14++);
        while (1)
        {
          if ((v14 - 1) >= *(v11 + 16))
          {
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
            JUMPOUT(0x10130);
          }

          v18 = *(v17 - 1);
          v19 = *v17;
          v20 = HIBYTE(*v17) & 0xF;
          if ((*v17 & 0x2000000000000000) == 0)
          {
            v20 = v18 & 0xFFFFFFFFFFFFLL;
          }

          if (v20)
          {
            v21 = v18 == 0xD000000000000013 && 0x800000000001CC10 == v19;
            if (!v21 && (sub_12644() & 1) == 0)
            {
              break;
            }
          }

          ++v14;
          v17 += 2;
          if (v15 + v14 == 1)
          {
            goto LABEL_21;
          }
        }

        v122[0]._countAndFlagsBits = countAndFlagsBits;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_11AE4(0, *(countAndFlagsBits + 2) + 1, 1);
          countAndFlagsBits = v122[0]._countAndFlagsBits;
        }

        v16 = v11 + 40;
        v23 = *(countAndFlagsBits + 2);
        v22 = *(countAndFlagsBits + 3);
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          sub_11AE4((v22 > 1), v23 + 1, 1);
          v24 = v23 + 1;
          v16 = v11 + 40;
          countAndFlagsBits = v122[0]._countAndFlagsBits;
        }

        *(countAndFlagsBits + 2) = v24;
        v25 = &countAndFlagsBits[16 * v23];
        *(v25 + 4) = v18;
        *(v25 + 5) = v19;
      }

      while (v15 + v14);
    }

LABEL_21:

    v26 = *(countAndFlagsBits + 2);
    if (!v26)
    {
      sub_12354();
      if (v41)
      {
        v42 = *(v0 + 200);

        v43 = sub_12514();

        [v42 setSpecifierIdentifierToScrollAndHighlight:v43];

        goto LABEL_73;
      }

      v26 = *(countAndFlagsBits + 2);
      if (!v26)
      {

        goto LABEL_73;
      }
    }

    v27 = (*(v0 + 256) + 48);
    v121 = (*(v0 + 280) + 8);
    while (2)
    {
      v28 = *(countAndFlagsBits + 4);
      v29 = *(countAndFlagsBits + 5);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v26 - 1) > *(countAndFlagsBits + 3) >> 1)
      {
        countAndFlagsBits = sub_11C10(isUniquelyReferenced_nonNull_native, v26, 1, countAndFlagsBits);
      }

      sub_11D68((countAndFlagsBits + 32));
      v31 = *(countAndFlagsBits + 2);
      memmove(countAndFlagsBits + 32, countAndFlagsBits + 48, 16 * v31 - 16);
      *(countAndFlagsBits + 2) = v31 - 1;
      v32 = sub_11D1C(v28, v29);
      v33 = v32;
      v34 = v32;
      v36 = *(v0 + 240);
      v35 = *(v0 + 248);
      sub_10198(*(v0 + 208), v32);
      sub_123C4();
      if ((*v27)(v36, 1, v35) != 1)
      {
        v45 = *(v0 + 368);
        v44 = *(v0 + 376);
        v117 = *(v0 + 352);
        v119 = *(v0 + 360);
        v46 = *(v0 + 344);
        v114 = *(v0 + 296);
        v115 = *(v0 + 336);
        v47 = *(v0 + 264);
        v112 = *(v0 + 272);
        v49 = *(v0 + 248);
        v48 = *(v0 + 256);
        v50 = *(v0 + 240);

        (*(v48 + 32))(v47, v50, v49);
        sub_124D4();
        (*(v48 + 8))(v47, v49);
        (*v121)(v114, v112);
        (*(v46 + 8))(v117, v115);
        (*(v45 + 8))(v44, v119);
        goto LABEL_74;
      }

      sub_11E04(*(v0 + 240), &qword_27AB8);
      switch(v33)
      {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 12:
          v37 = sub_12644();

          if ((v37 & 1) == 0)
          {
            switch(v34)
            {
              case 0u:
              case 1u:
              case 2u:
              case 3u:
              case 4u:
              case 5u:
              case 6u:
              case 7u:
              case 8u:
              case 9u:
              case 0xAu:
              case 0xBu:
                v38 = sub_12644();

                if (v38)
                {
                  goto LABEL_39;
                }

                v39 = *(v0 + 296);
                v40 = *(v0 + 272);
                sub_11DBC(&qword_27AD0, &type metadata accessor for PreferencesControllerRecipe);
                sub_12414();
                (*v121)(v39, v40);
                v26 = *(countAndFlagsBits + 2);
                if (!v26)
                {
                  goto LABEL_32;
                }

                continue;
              case 0xCu:
                goto LABEL_38;
              default:
                JUMPOUT(0);
            }
          }

          goto LABEL_39;
        case 11:
LABEL_38:

LABEL_39:
          v51 = sub_12324();
          if (v51)
          {
            v52 = v51;
          }

          else
          {
            v52 = &_swiftEmptyArrayStorage;
          }

          v120 = v52[2];
          if (v120)
          {
            v53 = 0;
            v54 = *(v0 + 224);
            v116 = v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
            v55 = &_swiftEmptyDictionarySingleton;
            v118 = v54;
            v113 = (v54 + 8);
            while (1)
            {
              if (v53 >= v52[2])
              {
                goto LABEL_81;
              }

              (*(v118 + 16))(*(v0 + 232), &v116[*(v118 + 72) * v53], *(v0 + 216));
              v56 = sub_122F4();
              v58 = v57;
              v59 = sub_12304();
              if (v60 && (*(v0 + 144) = v59, *(v0 + 152) = v60, v61 = sub_125C4(), v63 = v62, , v63))
              {
                *(v0 + 160) = v61;
                *(v0 + 168) = v63;
                sub_125F4();
                v64 = v122[1];
                *(v0 + 56) = v122[0];
                *(v0 + 72) = v64;
                *(v0 + 88) = v123;
                v65 = swift_isUniquelyReferenced_nonNull_native();
                v66 = sub_11190(v56, v58);
                v68 = v55[2];
                v69 = (v67 & 1) == 0;
                v70 = __OFADD__(v68, v69);
                v71 = v68 + v69;
                if (v70)
                {
                  goto LABEL_82;
                }

                v72 = v67;
                if (v55[3] >= v71)
                {
                  if ((v65 & 1) == 0)
                  {
                    v91 = v66;
                    sub_11930();
                    v66 = v91;
                  }
                }

                else
                {
                  sub_112C0(v71, v65);
                  v66 = sub_11190(v56, v58);
                  if ((v72 & 1) != (v73 & 1))
                  {

                    return sub_12654();
                  }
                }

                v82 = *(v0 + 232);
                v83 = *(v0 + 216);
                if (v72)
                {
                  v84 = v66;

                  sub_11EAC(v0 + 56, v55[7] + 40 * v84);
                  (*v113)(v82, v83);
                }

                else
                {
                  v55[(v66 >> 6) + 8] |= 1 << v66;
                  v85 = (v55[6] + 16 * v66);
                  *v85 = v56;
                  v85[1] = v58;
                  v86 = v55[7] + 40 * v66;
                  v87 = *(v0 + 88);
                  v88 = *(v0 + 72);
                  *v86 = *(v0 + 56);
                  *(v86 + 16) = v88;
                  *(v86 + 32) = v87;
                  (*v113)(v82, v83);
                  v89 = v55[2];
                  v70 = __OFADD__(v89, 1);
                  v90 = v89 + 1;
                  if (v70)
                  {
                    goto LABEL_83;
                  }

                  v55[2] = v90;
                }
              }

              else
              {
                v74 = sub_11190(v56, v58);
                v76 = v75;

                if (v76)
                {
                  v122[0]._countAndFlagsBits = v55;
                  if (!swift_isUniquelyReferenced_nonNull_native())
                  {
                    sub_11930();
                    v55 = v122[0]._countAndFlagsBits;
                  }

                  v77 = *(v0 + 232);
                  v78 = *(v0 + 216);

                  v79 = v55[7] + 40 * v74;
                  v80 = *v79;
                  v81 = *(v79 + 16);
                  *(v0 + 48) = *(v79 + 32);
                  *(v0 + 16) = v80;
                  *(v0 + 32) = v81;
                  sub_11590(v74, v55);
                  (*v113)(v77, v78);
                }

                else
                {
                  (*v113)(*(v0 + 232), *(v0 + 216));
                  *(v0 + 48) = 0;
                  *(v0 + 16) = 0u;
                  *(v0 + 32) = 0u;
                }

                sub_11E04(v0 + 16, &qword_27AD8);
              }

              if (v120 == ++v53)
              {
                goto LABEL_65;
              }
            }
          }

          v55 = &_swiftEmptyDictionarySingleton;
LABEL_65:

          *(v0 + 392) = 1;
          sub_125F4();
          v92 = swift_isUniquelyReferenced_nonNull_native();
          sub_1174C(v122, 0x6574616D696E61, 0xE700000000000000, v92);
          v93 = v55;
          *(v0 + 176) = countAndFlagsBits;
          sub_10D2C(&qword_27AE0);
          sub_11E64(&qword_27AE8, &qword_27AE0);
          v94 = sub_12504();
          v96 = v95;

          v97._countAndFlagsBits = sub_12354();
          if (v97._object)
          {
            v122[0]._countAndFlagsBits = 35;
            v122[0]._object = 0xE100000000000000;
            sub_12534(v97);

            sub_12534(v122[0]);
          }

          v98 = HIBYTE(v96) & 0xF;
          if ((v96 & 0x2000000000000000) == 0)
          {
            v98 = v94 & 0xFFFFFFFFFFFFLL;
          }

          if (v98)
          {
            *(v0 + 128) = v94;
            *(v0 + 136) = v96;
            sub_125F4();
            v99 = swift_isUniquelyReferenced_nonNull_native();
            v124 = v55;
            sub_1174C(v122, 1752457584, 0xE400000000000000, v99);
            v93 = v124;
          }

          else
          {
          }

          v101 = *(v0 + 288);
          v100 = *(v0 + 296);
          v102 = *(v0 + 272);
          sub_107AC(v93);

          sub_123B4();

          sub_11DBC(&qword_27AD0, &type metadata accessor for PreferencesControllerRecipe);
          sub_12414();
          v103 = *v121;
          (*v121)(v101, v102);
          v103(v100, v102);
          break;
        default:
LABEL_32:

          goto LABEL_73;
      }

      break;
    }

LABEL_73:
    v105 = *(v0 + 368);
    v104 = *(v0 + 376);
    v107 = *(v0 + 352);
    v106 = *(v0 + 360);
    v108 = *(v0 + 336);
    v109 = *(v0 + 344);
    sub_124E4();
    (*(v109 + 8))(v107, v108);
    (*(v105 + 8))(v104, v106);
    goto LABEL_74;
  }

  v8 = *(v0 + 368);
  v7 = *(v0 + 376);
  v9 = *(v0 + 360);
  sub_11E04(*(v0 + 328), &qword_27AC0);
  sub_124E4();
  (*(v8 + 8))(v7, v9);
LABEL_74:

  v110 = *(v0 + 8);

  return v110();
}

uint64_t sub_10198(id a1, unsigned __int8 a2)
{
  sub_125A4();
  __chkstk_darwin();

  v4 = a2;
  if (a2 > 6u)
  {
LABEL_7:
    if (v4 > 9)
    {
LABEL_16:
      if ((v4 - 11) < 2)
      {
        v6 = [objc_allocWithZone(PSSpecifier) init];
        v7 = sub_12514();
        [v6 setProperty:v7 forKey:PSAppSettingsBundleIDKey];

        if (sub_10FAC(a2) == 0x53544E554F434341 && v8 == 0xE800000000000000)
        {
        }

        else
        {
          v15 = sub_12644();

          if ((v15 & 1) == 0)
          {
            v16 = 0xEB00000000544E55;
            v17 = 0x4F4343415F444441;
            goto LABEL_42;
          }
        }

        v16 = 0x800000000001CC70;
        v17 = 0xD000000000000011;
LABEL_42:
        sub_11F78(0, &qword_27B00);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        v23._countAndFlagsBits = 0xE000000000000000;
        v26.value._object = 0x800000000001B7D0;
        v25._countAndFlagsBits = v17;
        v25._object = v16;
        v26.value._countAndFlagsBits = 0xD000000000000011;
        v20.super.isa = v19;
        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        sub_12374(v25, v26, v20, v27, v23);

        v21 = sub_12514();

        [v6 setName:v21];

        sub_12594();
        return sub_123E4();
      }

LABEL_27:
      v5 = [a1 defaultEventDurationSpecifier];
      if (v5)
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_29;
    }

    if (v4 == 7)
    {
LABEL_25:
      v5 = [a1 defaultCalendarSpecifier];
      if (v5)
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_27;
    }

    if (v4 != 8)
    {
      v5 = [a1 overlayCalendarSpecifier];
      if (v5)
      {
LABEL_38:

        return PreferencesControllerRecipe.init(specifier:)(v5);
      }

      goto LABEL_44;
    }

    v5 = [a1 timeZoneSupportSpecifier];
    if (v5)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a2 <= 2u)
  {
LABEL_12:
    if (v4)
    {
      if (v4 != 1)
      {
LABEL_29:
        v5 = [a1 weekStartSpecifier];
        if (v5)
        {
          goto LABEL_38;
        }

        __break(1u);
LABEL_31:
        v11 = [objc_allocWithZone(CSDefaultAlarmsController) init];
        v12 = [a1 defaultAlarmsSpecifier];
        [v11 setSpecifier:v12];

        a1 = [v11 birthdaysAlertSpecifier];
        if (!a1)
        {
          __break(1u);
          goto LABEL_33;
        }

LABEL_34:
        v5 = a1;
        goto LABEL_38;
      }

      v5 = [a1 defaultAlarmsSpecifier];
      if (v5)
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  if (a2 <= 4u)
  {
    if (a2 != 3)
    {
      goto LABEL_31;
    }

    v5 = [a1 syncDaysSpecifier];
    if (v5)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_7;
  }

  if (a2 == 5)
  {
    v9 = [objc_allocWithZone(CSDefaultAlarmsController) init];
    v10 = [a1 defaultAlarmsSpecifier];
    [v9 setSpecifier:v10];

    a1 = [v9 timedEventsAlertSpecifier];
    if (a1)
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_23:
    v5 = [a1 showAccountsSupportingDelegationSpecifier];
    if (v5)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_33:
  v13 = [objc_allocWithZone(CSDefaultAlarmsController) init];
  v14 = [a1 defaultAlarmsSpecifier];
  [v13 setSpecifier:v14];

  a1 = [v13 allDayEventsAlertSpecifier];
  if (a1)
  {
    goto LABEL_34;
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return PreferencesControllerRecipe.init(specifier:)(v5);
}

uint64_t sub_107AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10D2C(&qword_27AF8);
    v2 = sub_12624();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_11F08(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_11F64(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_11F64(v35, v24);
    result = sub_125E4(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_11F64(v24, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10A98()
{
  v1 = sub_10D2C(&qword_27A98);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v16 - v3;
  v6 = *v0;
  v5 = *(v0 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = v6;
  v9 = v5;
  sub_10D2C(&qword_27AA0);
  v10 = sub_123A4();
  v11 = sub_11DBC(&qword_27AA8, &type metadata accessor for PreferencesControllerView);
  v16[0] = v10;
  v16[1] = v11;
  swift_getOpaqueTypeConformance2();
  sub_124F4();
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  sub_11E64(&qword_27AB0, &qword_27A98);
  v13 = v8;
  v14 = v9;
  sub_124A4();
  return (*(v2 + 8))(v4, v1);
}

id sub_10CD0@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  result = [objc_allocWithZone(CalendarSettingsPlugin) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_10D2C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10D74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10DBC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10E70;

  return sub_EEDC(a1, a2, v7, v6);
}

uint64_t sub_10E70()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10F64(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10FAC(char a1)
{
  result = 0x6565577472617473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0x61727544636E7973;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0x43746C7561666564;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x53544E554F434341;
      break;
    case 12:
      result = 0x4F4343415F444441;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

unint64_t sub_11190(uint64_t a1, uint64_t a2)
{
  sub_12664();
  sub_12524();
  v4 = sub_12674();

  return sub_11208(a1, a2, v4);
}

unint64_t sub_11208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_12644())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_112C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10D2C(&qword_27AF0);
  v38 = a2;
  result = sub_12614();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_11F08(v27, &v39);
      }

      sub_12664();
      sub_12524();
      result = sub_12674();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_11590(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_125D4() + 1) & ~v5;
    do
    {
      sub_12664();

      sub_12524();
      v11 = sub_12674();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1174C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_11190(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_112C0(v16, a4 & 1);
      v11 = sub_11190(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_12654();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_11930();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_11EAC(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = *(a1 + 16);
  *(v25 + 32) = *(a1 + 32);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

unint64_t sub_118DC()
{
  result = qword_27AC8;
  if (!qword_27AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27AC8);
  }

  return result;
}

void *sub_11930()
{
  v1 = v0;
  sub_10D2C(&qword_27AF0);
  v2 = *v0;
  v3 = sub_12604();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_11F08(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_11AE4(char *a1, int64_t a2, char a3)
{
  result = sub_11B04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_11B04(char *result, int64_t a2, char a3, char *a4)
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
    sub_10D2C(&qword_27B08);
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

char *sub_11C10(char *result, int64_t a2, char a3, char *a4)
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
    sub_10D2C(&qword_27B08);
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

uint64_t sub_11D1C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_20E90;
  v6._object = a2;
  v4 = sub_12634(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_11DBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_11E04(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10D2C(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_11E64(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10F64(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_11F64(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_11F78(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_11FC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 sub_11FD0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_11FDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_12024(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_12070()
{
  sub_10F64(&qword_27A98);
  sub_11E64(&qword_27AB0, &qword_27A98);
  return swift_getOpaqueTypeConformance2();
}

Swift::Void __swiftcall UIViewController.settingsNavigationProxy_pop()()
{
  v1 = v0;
  v2 = sub_12494();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 traitCollection];
  sub_12574();

  LOBYTE(v6) = sub_12474();
  v7 = *(v3 + 8);
  v7(v5, v2);
  if (v6)
  {
    v8 = [v1 traitCollection];
    sub_12574();

    sub_12484(1);
    v7(v5, v2);
  }

  else
  {
    v9 = [v1 navigationController];
    if (v9)
    {
      v10 = v9;
    }
  }
}