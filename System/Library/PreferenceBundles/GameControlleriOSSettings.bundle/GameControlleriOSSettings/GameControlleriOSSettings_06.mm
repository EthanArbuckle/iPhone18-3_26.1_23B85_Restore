uint64_t sub_9E594()
{
  v1 = v0;
  v2 = sub_D6A38();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_D6868();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v17 = [*&v1[OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults] dictionaryForKey:{@"copilotFusedControllers", v14}];
  if (v17)
  {
    v61 = v10;
    v64 = v8;
    v18 = v17;
    v19 = sub_D7B48();

    v69 = _swiftEmptyArrayStorage;
    v70 = _swiftEmptyArrayStorage;
    v20 = *(v19 + 16);
    v62 = v3;
    v63 = v2;
    if (v20 && (v21 = sub_1ED4C(1635017060, 0xE400000000000000), (v22 & 1) != 0) && (sub_8BE48(*(v19 + 56) + 32 * v21, &v67), sub_450A0(0, &qword_1190C0), (swift_dynamicCast() & 1) != 0))
    {
      v59 = *&v66[0];
      v60 = v9;
      sub_D7E88();
      sub_D6858();
      while (v68)
      {
        sub_3B548(&v67, v66);
        sub_450A0(0, &qword_1190C8);
        if (swift_dynamicCast())
        {
          v23 = v65;
          v24 = [objc_allocWithZone(GCSCopilotFusedController) initWithJSONObject:v65];
          if (v24)
          {
            v58 = v24;
            sub_D7D08();
            if (*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v70 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_D7D48();
            }

            v25 = v58;
            sub_D7D68();
          }

          else
          {
          }
        }

        sub_D6858();
      }

      v9 = v60;
      (*(v61 + 8))(v16, v60);

      if (!*(v19 + 16))
      {
        goto LABEL_30;
      }
    }

    else if (!*(v19 + 16))
    {
      goto LABEL_30;
    }

    v26 = sub_1ED4C(0x6E6F7473626D6F74, 0xEA00000000007365);
    if (v27)
    {
      sub_8BE48(*(v19 + 56) + 32 * v26, &v67);

      sub_450A0(0, &qword_1190C0);
      if (swift_dynamicCast())
      {
        v59 = *&v66[0];
        v60 = v9;
        sub_D7E88();
        sub_D6858();
        if (v68)
        {
          v28 = _swiftEmptyArrayStorage;
          do
          {
            sub_3B548(&v67, v66);
            sub_450A0(0, &qword_1190C8);
            if (swift_dynamicCast())
            {
              v29 = v65;
              v30 = [objc_allocWithZone(GCSTombstone) initWithJSONObject:v65];
              if (v30)
              {
                v58 = v30;
                sub_D7D08();
                if (*(&dword_10 + (v69 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v69 & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_D7D48();
                }

                v31 = v58;
                sub_D7D68();

                v28 = v69;
              }

              else
              {
              }
            }

            sub_D6858();
          }

          while (v68);
        }

        else
        {
          v28 = _swiftEmptyArrayStorage;
        }

        (*(v61 + 8))(v12, v60);

        goto LABEL_32;
      }

LABEL_31:
      v28 = _swiftEmptyArrayStorage;
LABEL_32:
      sub_450A0(0, &unk_118F00);
      isa = sub_D7D18().super.isa;

      [v1 setCopilotFusedControllers:isa];

      v38 = sub_D7C18();
      v40 = v39;
      v41 = [v1 tombstones];
      sub_DC40(&qword_119050);
      v42 = sub_D7B48();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v67 = v42;
      sub_A2928(v28, v38, v40, isUniquelyReferenced_nonNull_native);

      v44 = sub_D7B38().super.isa;

      [v1 setTombstones:v44];

      v45 = sub_2E18C();
      v47 = v62;
      v46 = v63;
      v48 = v64;
      (*(v62 + 16))(v64, v45, v63);
      v49 = sub_D7DF8();
      v50 = sub_D6A18();
      if (os_log_type_enabled(v50, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v67 = v52;
        *v51 = 136315138;
        v53 = [v1 copilotFusedControllers];
        sub_D7D28();

        v54 = sub_D7D38();
        v56 = v55;

        v57 = sub_89FF4(v54, v56, &v67);

        *(v51 + 4) = v57;
        _os_log_impl(&dword_0, v50, v49, "Loaded copilot fused controllers = %s", v51, 0xCu);
        sub_7362C(v52);

        return (*(v47 + 8))(v64, v46);
      }

      else
      {

        return (*(v47 + 8))(v48, v46);
      }
    }

LABEL_30:

    goto LABEL_31;
  }

  v32 = sub_2E18C();
  (*(v3 + 16))(v5, v32, v2);
  v33 = sub_D7DF8();
  v34 = sub_D6A18();
  if (os_log_type_enabled(v34, v33))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v34, v33, "Unable to load copilot fused controllers data", v35, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_9EE1C()
{
  v1 = v0;
  v2 = sub_D6A38();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_D6868();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v17 = [*&v1[OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults] dictionaryForKey:{@"controllers", v14}];
  if (v17)
  {
    v61 = v10;
    v64 = v8;
    v18 = v17;
    v19 = sub_D7B48();

    v69 = _swiftEmptyArrayStorage;
    v70 = _swiftEmptyArrayStorage;
    v20 = *(v19 + 16);
    v62 = v3;
    v63 = v2;
    if (v20 && (v21 = sub_1ED4C(1635017060, 0xE400000000000000), (v22 & 1) != 0) && (sub_8BE48(*(v19 + 56) + 32 * v21, &v67), sub_450A0(0, &qword_1190C0), (swift_dynamicCast() & 1) != 0))
    {
      v59 = *&v66[0];
      v60 = v9;
      sub_D7E88();
      sub_D6858();
      while (v68)
      {
        sub_3B548(&v67, v66);
        sub_450A0(0, &qword_1190C8);
        if (swift_dynamicCast())
        {
          v23 = v65;
          v24 = [objc_allocWithZone(GCSController) initWithJSONObject:v65];
          if (v24)
          {
            v58 = v24;
            sub_D7D08();
            if (*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v70 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_D7D48();
            }

            v25 = v58;
            sub_D7D68();
          }

          else
          {
          }
        }

        sub_D6858();
      }

      v9 = v60;
      (*(v61 + 8))(v16, v60);

      if (!*(v19 + 16))
      {
        goto LABEL_30;
      }
    }

    else if (!*(v19 + 16))
    {
      goto LABEL_30;
    }

    v26 = sub_1ED4C(0x6E6F7473626D6F74, 0xEA00000000007365);
    if (v27)
    {
      sub_8BE48(*(v19 + 56) + 32 * v26, &v67);

      sub_450A0(0, &qword_1190C0);
      if (swift_dynamicCast())
      {
        v59 = *&v66[0];
        v60 = v9;
        sub_D7E88();
        sub_D6858();
        if (v68)
        {
          v28 = _swiftEmptyArrayStorage;
          do
          {
            sub_3B548(&v67, v66);
            sub_450A0(0, &qword_1190C8);
            if (swift_dynamicCast())
            {
              v29 = v65;
              v30 = [objc_allocWithZone(GCSTombstone) initWithJSONObject:v65];
              if (v30)
              {
                v58 = v30;
                sub_D7D08();
                if (*(&dword_10 + (v69 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v69 & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_D7D48();
                }

                v31 = v58;
                sub_D7D68();

                v28 = v69;
              }

              else
              {
              }
            }

            sub_D6858();
          }

          while (v68);
        }

        else
        {
          v28 = _swiftEmptyArrayStorage;
        }

        (*(v61 + 8))(v12, v60);

        goto LABEL_32;
      }

LABEL_31:
      v28 = _swiftEmptyArrayStorage;
LABEL_32:
      sub_450A0(0, &qword_117060);
      isa = sub_D7D18().super.isa;

      [v1 setAllControllers:isa];

      v38 = sub_D7C18();
      v40 = v39;
      v41 = [v1 tombstones];
      sub_DC40(&qword_119050);
      v42 = sub_D7B48();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v67 = v42;
      sub_A2928(v28, v38, v40, isUniquelyReferenced_nonNull_native);

      v44 = sub_D7B38().super.isa;

      [v1 setTombstones:v44];

      v45 = sub_2E18C();
      v47 = v62;
      v46 = v63;
      v48 = v64;
      (*(v62 + 16))(v64, v45, v63);
      v49 = sub_D7DF8();
      v50 = sub_D6A18();
      if (os_log_type_enabled(v50, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v67 = v52;
        *v51 = 136315138;
        v53 = [v1 allControllers];
        sub_D7D28();

        v54 = sub_D7D38();
        v56 = v55;

        v57 = sub_89FF4(v54, v56, &v67);

        *(v51 + 4) = v57;
        _os_log_impl(&dword_0, v50, v49, "Loaded controllers = %s", v51, 0xCu);
        sub_7362C(v52);

        return (*(v47 + 8))(v64, v46);
      }

      else
      {

        return (*(v47 + 8))(v48, v46);
      }
    }

LABEL_30:

    goto LABEL_31;
  }

  v32 = sub_2E18C();
  (*(v3 + 16))(v5, v32, v2);
  v33 = sub_D7DF8();
  v34 = sub_D6A18();
  if (os_log_type_enabled(v34, v33))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v34, v33, "Unable to load controllers data", v35, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_9F6A4()
{
  v1 = v0;
  v2 = sub_D6A38();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_D6868();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v17 = [*&v1[OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults] dictionaryForKey:{@"games", v14}];
  if (v17)
  {
    v61 = v10;
    v64 = v8;
    v18 = v17;
    v19 = sub_D7B48();

    v69 = _swiftEmptyArrayStorage;
    v70 = _swiftEmptyArrayStorage;
    v20 = *(v19 + 16);
    v62 = v3;
    v63 = v2;
    if (v20 && (v21 = sub_1ED4C(1635017060, 0xE400000000000000), (v22 & 1) != 0) && (sub_8BE48(*(v19 + 56) + 32 * v21, &v67), sub_450A0(0, &qword_1190C0), (swift_dynamicCast() & 1) != 0))
    {
      v59 = *&v66[0];
      v60 = v9;
      sub_D7E88();
      sub_D6858();
      while (v68)
      {
        sub_3B548(&v67, v66);
        sub_450A0(0, &qword_1190C8);
        if (swift_dynamicCast())
        {
          v23 = v65;
          v24 = [objc_allocWithZone(GCSGame) initWithJSONObject:v65];
          if (v24)
          {
            v58 = v24;
            sub_D7D08();
            if (*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v70 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_D7D48();
            }

            v25 = v58;
            sub_D7D68();
          }

          else
          {
          }
        }

        sub_D6858();
      }

      v9 = v60;
      (*(v61 + 8))(v16, v60);

      if (!*(v19 + 16))
      {
        goto LABEL_30;
      }
    }

    else if (!*(v19 + 16))
    {
      goto LABEL_30;
    }

    v26 = sub_1ED4C(0x6E6F7473626D6F74, 0xEA00000000007365);
    if (v27)
    {
      sub_8BE48(*(v19 + 56) + 32 * v26, &v67);

      sub_450A0(0, &qword_1190C0);
      if (swift_dynamicCast())
      {
        v59 = *&v66[0];
        v60 = v9;
        sub_D7E88();
        sub_D6858();
        if (v68)
        {
          v28 = _swiftEmptyArrayStorage;
          do
          {
            sub_3B548(&v67, v66);
            sub_450A0(0, &qword_1190C8);
            if (swift_dynamicCast())
            {
              v29 = v65;
              v30 = [objc_allocWithZone(GCSTombstone) initWithJSONObject:v65];
              if (v30)
              {
                v58 = v30;
                sub_D7D08();
                if (*(&dword_10 + (v69 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v69 & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_D7D48();
                }

                v31 = v58;
                sub_D7D68();

                v28 = v69;
              }

              else
              {
              }
            }

            sub_D6858();
          }

          while (v68);
        }

        else
        {
          v28 = _swiftEmptyArrayStorage;
        }

        (*(v61 + 8))(v12, v60);

        goto LABEL_32;
      }

LABEL_31:
      v28 = _swiftEmptyArrayStorage;
LABEL_32:
      sub_450A0(0, &qword_1164A8);
      isa = sub_D7D18().super.isa;

      [v1 setGames:isa];

      v38 = sub_D7C18();
      v40 = v39;
      v41 = [v1 tombstones];
      sub_DC40(&qword_119050);
      v42 = sub_D7B48();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v67 = v42;
      sub_A2928(v28, v38, v40, isUniquelyReferenced_nonNull_native);

      v44 = sub_D7B38().super.isa;

      [v1 setTombstones:v44];

      v45 = sub_2E18C();
      v47 = v62;
      v46 = v63;
      v48 = v64;
      (*(v62 + 16))(v64, v45, v63);
      v49 = sub_D7DF8();
      v50 = sub_D6A18();
      if (os_log_type_enabled(v50, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v67 = v52;
        *v51 = 136315138;
        v53 = [v1 games];
        sub_D7D28();

        v54 = sub_D7D38();
        v56 = v55;

        v57 = sub_89FF4(v54, v56, &v67);

        *(v51 + 4) = v57;
        _os_log_impl(&dword_0, v50, v49, "Loaded games = %s", v51, 0xCu);
        sub_7362C(v52);

        return (*(v47 + 8))(v64, v46);
      }

      else
      {

        return (*(v47 + 8))(v48, v46);
      }
    }

LABEL_30:

    goto LABEL_31;
  }

  v32 = sub_2E18C();
  (*(v3 + 16))(v5, v32, v2);
  v33 = sub_D7DF8();
  v34 = sub_D6A18();
  if (os_log_type_enabled(v34, v33))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v34, v33, "Unable to load games data", v35, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_9FF2C()
{
  v1 = v0;
  v2 = sub_D6A38();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_D6868();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v17 = [*&v1[OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults] dictionaryForKey:{@"profiles", v14}];
  if (v17)
  {
    v61 = v10;
    v64 = v8;
    v18 = v17;
    v19 = sub_D7B48();

    v69 = _swiftEmptyArrayStorage;
    v70 = _swiftEmptyArrayStorage;
    v20 = *(v19 + 16);
    v62 = v3;
    v63 = v2;
    if (v20 && (v21 = sub_1ED4C(1635017060, 0xE400000000000000), (v22 & 1) != 0) && (sub_8BE48(*(v19 + 56) + 32 * v21, &v67), sub_450A0(0, &qword_1190C0), (swift_dynamicCast() & 1) != 0))
    {
      v59 = *&v66[0];
      v60 = v9;
      sub_D7E88();
      sub_D6858();
      while (v68)
      {
        sub_3B548(&v67, v66);
        sub_450A0(0, &qword_1190C8);
        if (swift_dynamicCast())
        {
          v23 = v65;
          v24 = [objc_allocWithZone(GCSProfile) initWithJSONObject:v65];
          if (v24)
          {
            v58 = v24;
            sub_D7D08();
            if (*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v70 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_D7D48();
            }

            v25 = v58;
            sub_D7D68();
          }

          else
          {
          }
        }

        sub_D6858();
      }

      v9 = v60;
      (*(v61 + 8))(v16, v60);

      if (!*(v19 + 16))
      {
        goto LABEL_30;
      }
    }

    else if (!*(v19 + 16))
    {
      goto LABEL_30;
    }

    v26 = sub_1ED4C(0x6E6F7473626D6F74, 0xEA00000000007365);
    if (v27)
    {
      sub_8BE48(*(v19 + 56) + 32 * v26, &v67);

      sub_450A0(0, &qword_1190C0);
      if (swift_dynamicCast())
      {
        v59 = *&v66[0];
        v60 = v9;
        sub_D7E88();
        sub_D6858();
        if (v68)
        {
          v28 = _swiftEmptyArrayStorage;
          do
          {
            sub_3B548(&v67, v66);
            sub_450A0(0, &qword_1190C8);
            if (swift_dynamicCast())
            {
              v29 = v65;
              v30 = [objc_allocWithZone(GCSTombstone) initWithJSONObject:v65];
              if (v30)
              {
                v58 = v30;
                sub_D7D08();
                if (*(&dword_10 + (v69 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v69 & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_D7D48();
                }

                v31 = v58;
                sub_D7D68();

                v28 = v69;
              }

              else
              {
              }
            }

            sub_D6858();
          }

          while (v68);
        }

        else
        {
          v28 = _swiftEmptyArrayStorage;
        }

        (*(v61 + 8))(v12, v60);

        goto LABEL_32;
      }

LABEL_31:
      v28 = _swiftEmptyArrayStorage;
LABEL_32:
      sub_450A0(0, &qword_118F10);
      isa = sub_D7D18().super.isa;

      [v1 setProfiles:isa];

      v38 = sub_D7C18();
      v40 = v39;
      v41 = [v1 tombstones];
      sub_DC40(&qword_119050);
      v42 = sub_D7B48();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v67 = v42;
      sub_A2928(v28, v38, v40, isUniquelyReferenced_nonNull_native);

      v44 = sub_D7B38().super.isa;

      [v1 setTombstones:v44];

      v45 = sub_2E18C();
      v47 = v62;
      v46 = v63;
      v48 = v64;
      (*(v62 + 16))(v64, v45, v63);
      v49 = sub_D7DF8();
      v50 = sub_D6A18();
      if (os_log_type_enabled(v50, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v67 = v52;
        *v51 = 136315138;
        v53 = [v1 profiles];
        sub_D7D28();

        v54 = sub_D7D38();
        v56 = v55;

        v57 = sub_89FF4(v54, v56, &v67);

        *(v51 + 4) = v57;
        _os_log_impl(&dword_0, v50, v49, "Loaded profiles = %s", v51, 0xCu);
        sub_7362C(v52);

        return (*(v47 + 8))(v64, v46);
      }

      else
      {

        return (*(v47 + 8))(v48, v46);
      }
    }

LABEL_30:

    goto LABEL_31;
  }

  v32 = sub_2E18C();
  (*(v3 + 16))(v5, v32, v2);
  v33 = sub_D7DF8();
  v34 = sub_D6A18();
  if (os_log_type_enabled(v34, v33))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v34, v33, "Unable to load profiles data", v35, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_A07B4()
{
  v1 = [*&v0[OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults] arrayForKey:@"mouseProfiles"];
  if (v1)
  {
    v2 = v1;
    v3 = sub_D7D28();

    v11 = _swiftEmptyArrayStorage;
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 32;
      do
      {
        sub_8BE48(v5, v10);
        sub_DC40(&qword_1190B8);
        if (swift_dynamicCast())
        {
          v6 = [objc_allocWithZone(GCSMouseProfile) initWithJSONObject:v9];
          if (v6)
          {
            v7 = v6;
            sub_D7D08();
            if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v11 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_D7D48();
            }

            sub_D7D68();

            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v5 += 32;
        --v4;
      }

      while (v4);
    }

    else
    {
    }

    sub_450A0(0, &qword_118F50);
    isa = sub_D7D18().super.isa;

    [v0 setMouseProfiles:isa];
  }
}

uint64_t sub_A09B8()
{
  sub_A366C(_swiftEmptyArrayStorage, &qword_1190D0);
  sub_DC40(&qword_119050);
  isa = sub_D7B38().super.isa;

  [v0 setTombstones:isa];

  sub_9EE1C();
  sub_9FF2C();
  sub_A07B4();
  sub_9F6A4();
  sub_9E594();
  v2 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults;
  if ([*&v0[OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults] objectForKey:@"bluetoothPrefsMenuLongPressAction"])
  {
    sub_D7F58();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (*(&v16 + 1))
  {
    if (swift_dynamicCast())
    {
      [v0 setSystemButtonActionsEnabled:LOBYTE(v14)];
    }
  }

  else
  {
    sub_160BC(&v17, &qword_119330);
  }

  v3 = *&v0[v2];
  v4 = sub_D7BD8();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    sub_D7F58();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (*(&v16 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = sub_D7BD8();

      [v0 setSystemButtonLongPressAction:v6];
    }
  }

  else
  {
    sub_160BC(&v17, &qword_119330);
  }

  v7 = *&v0[v2];

  v8 = sub_D7BD8();

  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    sub_D7F58();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (*(&v16 + 1))
  {
    if (swift_dynamicCast())
    {
      [v0 setNaturalThumbstickScrollDirection:(LOBYTE(v14) & 1) == 0];
    }
  }

  else
  {
    sub_160BC(&v17, &qword_119330);
  }

  v10 = *&v0[v2];

  v11 = sub_D7BD8();

  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    sub_D7F58();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {
    return sub_160BC(&v17, &qword_119330);
  }

  result = swift_dynamicCast();
  if (result)
  {
    return [v0 setThumbstickScrollingSpeed:v14];
  }

  return result;
}

uint64_t sub_A0DE8()
{
  v1 = v0;
  v2 = sub_D6A38();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1 + OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults) stringForKey:{@"settingsVersion", v4}];
  if (v7)
  {
    v8 = v7;
    v9 = sub_D7C18();
    v11 = v10;

    if (v9 == 0x302E302E30 && v11 == 0xE500000000000000)
    {
    }

    else
    {
      v13 = sub_D8118();

      if ((v13 & 1) == 0)
      {
        v14 = sub_A09B8();
        return (*&stru_298.segname[swift_isaMask & *v1])(v14);
      }
    }
  }

  v15 = sub_2E18C();
  (*(v3 + 16))(v6, v15, v2);
  v16 = sub_D7E18();
  v17 = sub_D6A18();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v17, v16, "Saved data is not compatible. Resetting prefs store.", v18, 2u);
  }

  (*(v3 + 8))(v6, v2);
  sub_A366C(_swiftEmptyArrayStorage, &qword_1190D0);
  sub_DC40(&qword_119050);
  isa = sub_D7B38().super.isa;

  [v1 setTombstones:isa];

  sub_450A0(0, &qword_117060);
  v20 = sub_D7D18().super.isa;
  [v1 setAllControllers:v20];

  sub_DC40(&qword_118E40);
  v21 = swift_allocObject();
  v27 = xmmword_E1E00;
  *(v21 + 16) = xmmword_E1E00;
  *(v21 + 32) = [objc_opt_self() defaultProfile];
  sub_450A0(0, &qword_118F10);
  v22 = sub_D7D18().super.isa;

  [v1 setProfiles:v22];

  v23 = swift_allocObject();
  *(v23 + 16) = v27;
  *(v23 + 32) = [objc_opt_self() defaultGame];
  sub_450A0(0, &qword_1164A8);
  v24 = sub_D7D18().super.isa;

  [v1 setGames:v24];

  sub_450A0(0, &unk_118F00);
  v25 = sub_D7D18().super.isa;
  [v1 setCopilotFusedControllers:v25];

  return (*&stru_298.segname[swift_isaMask & *v1])(v14);
}

uint64_t sub_A1240@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GCSPreferencesStore();
  result = sub_D6A68();
  *a1 = result;
  return result;
}

uint64_t sub_A12A0(uint64_t a1)
{
  v2 = sub_A4DE8(&qword_118F70, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_A4DE8(&qword_119048, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_A135C(void **__dst, id *__src, id *a3, uint64_t a4, void *a5)
{
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = a4;
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v15 = &v14[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_52;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v48 = *v6;
      v47 = *v14;
      v18 = v47;
      v19 = v48;
      v20 = v18;
      v21 = sub_935C8(&v48, &v47, a5);
      if (v46)
      {

        v39 = v15 - v14 + 7;
        if (v15 - v14 >= 0)
        {
          v39 = v15 - v14;
        }

        if (v7 < v14 || v7 >= (v14 + (v39 & 0xFFFFFFFFFFFFFFF8)) || v7 != v14)
        {
          v38 = 8 * (v39 >> 3);
          v36 = v7;
          goto LABEL_58;
        }

        goto LABEL_60;
      }

      v22 = v21;

      if (v22)
      {
        break;
      }

      v16 = v14;
      v17 = v7 == v14++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    v23 = a4;
    memmove(a4, __src, 8 * v13);
    a4 = v23;
  }

  v44 = a4;
  v15 = (a4 + 8 * v13);
  if (v11 < 8 || v6 <= v7)
  {
    v14 = a4;
  }

  else
  {
    v24 = -a4;
    v42 = -a4;
    while (2)
    {
      v43 = v6;
      v25 = v6 - 1;
      v26 = v15 + v24;
      --v5;
      v27 = v15;
      while (1)
      {
        v28 = *--v27;
        v48 = v28;
        v6 = v25;
        v47 = *v25;
        v29 = v47;
        v30 = v28;
        v31 = v29;
        v32 = sub_935C8(&v48, &v47, a5);
        if (v46)
        {

          if (v26 >= 0)
          {
            v35 = v26;
          }

          else
          {
            v35 = v26 + 7;
          }

          v36 = v43;
          v37 = v44;
          if (v43 < v44 || v43 >= v44 + (v35 & 0xFFFFFFFFFFFFFFF8) || v43 != v44)
          {
            v38 = 8 * (v35 >> 3);
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        v33 = v32;

        v34 = (v5 + 1);
        if (v33)
        {
          break;
        }

        v25 = v6;
        if (v34 != v15)
        {
          *v5 = *v27;
        }

        v26 -= 8;
        --v5;
        v15 = v27;
        if (v27 <= v44)
        {
          v15 = v27;
          v6 = v43;
          v14 = v44;
          goto LABEL_52;
        }
      }

      if (v34 != v43)
      {
        *v5 = *v6;
      }

      v14 = v44;
      if (v15 > v44)
      {
        v24 = v42;
        if (v6 > v7)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_52:
  v40 = v15 - v14 + 7;
  if (v15 - v14 >= 0)
  {
    v40 = v15 - v14;
  }

  if (v6 < v14 || v6 >= (v14 + (v40 & 0xFFFFFFFFFFFFFFF8)) || v6 != v14)
  {
    v38 = 8 * (v40 >> 3);
    v36 = v6;
LABEL_58:
    v37 = v14;
LABEL_59:
    memmove(v36, v37, v38);
  }

LABEL_60:

  return 1;
}

uint64_t sub_A16C0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  sub_D8168();
  sub_D7C78();
  v8 = sub_D8198();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_D8118() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_A1A70(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_A1810()
{
  v1 = v0;
  v2 = *v0;
  sub_DC40(&unk_119130);
  result = sub_D7FA8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_D8168();
      sub_D7C78();
      result = sub_D8198();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

Swift::Int sub_A1A70(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_A1810();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_A1BF0();
      goto LABEL_16;
    }

    sub_A1D4C();
  }

  v10 = *v4;
  sub_D8168();
  sub_D7C78();
  result = sub_D8198();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_D8118();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_D8128();
  __break(1u);
  return result;
}

void *sub_A1BF0()
{
  v1 = v0;
  sub_DC40(&unk_119130);
  v2 = *v0;
  v3 = sub_D7F98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_A1D4C()
{
  v1 = v0;
  v2 = *v0;
  sub_DC40(&unk_119130);
  result = sub_D7FA8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_D8168();

      sub_D7C78();
      result = sub_D8198();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_A1F84(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_D6998();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_DC40(&qword_119128);
  v39 = a2;
  result = sub_D8098();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_A4DE8(&qword_117DE8, &type metadata accessor for UUID);
      result = sub_D7B78();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_A2360(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_DC40(&qword_1190D0);
  v34 = a2;
  result = sub_D8098();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_D8168();
      sub_D7C78();
      result = sub_D8198();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_A2608(int64_t a1, uint64_t a2)
{
  v38 = sub_D6998();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_D7F88();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_A4DE8(&qword_117DE8, &type metadata accessor for UUID);
      v22 = sub_D7B78();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_A2928(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1ED4C(a2, a3);
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
      sub_A2360(v16, a4 & 1);
      v11 = sub_1ED4C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_D8138();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_A2D18();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

char *sub_A2AA4()
{
  v1 = v0;
  v31 = sub_D6998();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_DC40(&qword_119128);
  v3 = *v0;
  v4 = sub_D8088();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_A2D18()
{
  v1 = v0;
  sub_DC40(&qword_1190D0);
  v2 = *v0;
  v3 = sub_D8088();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_A2E88(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_D8078();
  }

  return sub_D8008();
}

uint64_t sub_A2EEC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_D8078();
LABEL_9:
  result = sub_D8008();
  *v1 = result;
  return result;
}

void *sub_A2F8C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_D8078();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_4E0C8(v3, 0);
  sub_A3020((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_A3020(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_D8078();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_D8078();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_15FB8(&qword_119148, &qword_117DB8);
          for (i = 0; i != v6; ++i)
          {
            sub_DC40(&qword_117DB8);
            v9 = sub_4F1F4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_450A0(0, &qword_118F10);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_A31D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_D8078();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_D8078();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_15FB8(&unk_119110, &qword_118E08);
          for (i = 0; i != v6; ++i)
          {
            sub_DC40(&qword_118E08);
            v9 = sub_A3388(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_450A0(0, &qword_117060);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_A3388(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_D7FF8();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_A691C;
  }

  __break(1u);
  return result;
}

unint64_t sub_A3438(uint64_t a1)
{
  v2 = sub_DC40(&unk_119160);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_DC40(&qword_119128);
    v7 = sub_D80A8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_16054(v9, v5, &unk_119160);
      result = sub_5DA48(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_D6998();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_A366C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_DC40(a2);
    v4 = sub_D80A8();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1ED4C(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

Swift::Int sub_A3768(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_DC40(&unk_119130);
    v3 = sub_D7FB8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_D8168();

      sub_D7C78();
      result = sub_D8198();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_D8118();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_A38EC(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v154 = a1;
  v8 = sub_D6998();
  __chkstk_darwin(v8);
  v164 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v152 - v12;
  v162 = a3;
  v14 = a3[1];
  if (v14 < 1)
  {
    v136 = a5;
    v155 = _swiftEmptyArrayStorage;
LABEL_106:
    v171 = *v154;
    if (!v171)
    {
      goto LABEL_147;
    }

    v172 = a5;
    a5 = v155;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v175 = a5;
      v137 = *(a5 + 2);
      if (v137 >= 2)
      {
        do
        {
          v138 = *v162;
          if (!*v162)
          {
            goto LABEL_145;
          }

          v139 = *&a5[16 * v137];
          v140 = *&a5[16 * v137 + 24];
          v141 = (v138 + 8 * v139);
          v142 = (v138 + 8 * *&a5[16 * v137 + 16]);
          v143 = (v138 + 8 * v140);
          v22 = v172;
          v144 = v163;
          sub_A135C(v141, v142, v143, v171, v22);
          v163 = v144;
          if (v144)
          {

            goto LABEL_119;
          }

          if (v140 < v139)
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a5 = sub_1EC34(a5);
          }

          if (v137 - 2 >= *(a5 + 2))
          {
            goto LABEL_135;
          }

          v145 = &a5[16 * v137];
          *v145 = v139;
          *(v145 + 1) = v140;
          v175 = a5;
          sub_1EBA8(v137 - 1);
          a5 = v175;
          v137 = *(v175 + 2);
        }

        while (v137 > 1);
      }

      v146 = v172;

      return;
    }

LABEL_141:
    a5 = sub_1EC34(a5);
    goto LABEL_108;
  }

  v170 = (v11 + 8);
  v171 = a5;
  v155 = _swiftEmptyArrayStorage;
  v15 = 0;
  v160 = a5;
  v153 = a4;
  v167 = v8;
  v165 = v13;
  while (1)
  {
    v16 = v15 + 1;
    v156 = v15;
    if (v15 + 1 < v14)
    {
      v17 = v15;
      v18 = *v162;
      v19 = *(*v162 + 8 * v16);
      v173 = *(*v162 + 8 * v17);
      v20 = v173;
      v174[0] = v19;
      v21 = v19;
      v22 = v20;
      v23 = sub_935C8(v174, &v173, v171);
      if (v163)
      {
        v147 = v171;

LABEL_119:

        return;
      }

      v24 = v23;

      v25 = v17 + 2;
      v26 = 8 * v17;
      v27 = (v18 + 8 * v17 + 16);
      while (v14 != v25)
      {
        v28 = *v27;
        v173 = *(v27 - 1);
        v29 = v173;
        v174[0] = v28;
        v30 = v28;
        v31 = v29;
        v32 = sub_935C8(v174, &v173, v171) & 1;

        ++v25;
        ++v27;
        if ((v24 & 1) != v32)
        {
          v14 = v25 - 1;
          break;
        }
      }

      a5 = v160;
      a4 = v153;
      v13 = v165;
      if (v24)
      {
        v33 = v156;
        if (v14 < v156)
        {
          goto LABEL_140;
        }

        if (v156 < v14)
        {
          v34 = 8 * v14 - 8;
          v35 = v14;
          do
          {
            if (v33 != --v35)
            {
              v36 = *v162;
              if (!*v162)
              {
                goto LABEL_144;
              }

              v37 = *(v36 + v26);
              *(v36 + v26) = *(v36 + v34);
              *(v36 + v34) = v37;
            }

            ++v33;
            v34 -= 8;
            v26 += 8;
          }

          while (v33 < v35);
        }
      }

      v16 = v14;
      v8 = v167;
    }

    v38 = v162[1];
    v39 = v155;
    if (v16 >= v38)
    {
      goto LABEL_54;
    }

    v40 = v16;
    v99 = __OFSUB__(v16, v156);
    v41 = v16 - v156;
    if (v99)
    {
      goto LABEL_137;
    }

    if (v41 >= a4)
    {
LABEL_28:
      v16 = v40;
      goto LABEL_54;
    }

    if (__OFADD__(v156, a4))
    {
      goto LABEL_138;
    }

    if (v156 + a4 >= v38)
    {
      v42 = v162[1];
    }

    else
    {
      v42 = v156 + a4;
    }

    if (v42 < v156)
    {
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    if (v40 == v42)
    {
      goto LABEL_28;
    }

    v166 = *v162;
    v43 = v166 + 8 * v40 - 8;
    v44 = v156 - v40;
    v157 = v42;
LABEL_32:
    v161 = v40;
    v45 = *(v166 + 8 * v40);
    v158 = v44;
    v159 = v43;
    v46 = v44;
LABEL_33:
    v168 = v46;
    v47 = *v43;
    v48 = v45;
    v172 = v47;
    v169 = v48;
    v49 = [v48 uuid];
    sub_D6978();

    v50 = [v171 profileUsageStats];
    type metadata accessor for GCSProfileUsageStats();
    sub_A4DE8(&qword_117DE8, &type metadata accessor for UUID);
    v51 = sub_D7B48();

    if (*(v51 + 16) && (v52 = sub_5DA48(v13), (v53 & 1) != 0))
    {
      a5 = *v170;
      v54 = *(*(v51 + 56) + 8 * v52);
      v55 = v13;
      v56 = v8;
      v57 = v54;
      (a5)(v55, v56);

      v59 = (*(&stru_68.reloff + (swift_isaMask & *v57)))(v58);
    }

    else
    {

      a5 = *v170;
      (*v170)(v13, v8);
      v59 = 0;
    }

    v60 = [v172 uuid];
    v61 = v164;
    sub_D6978();

    v62 = [v171 profileUsageStats];
    v63 = sub_D7B48();

    if (!*(v63 + 16))
    {
      break;
    }

    v64 = sub_5DA48(v61);
    if ((v65 & 1) == 0)
    {
      break;
    }

    v66 = *(*(v63 + 56) + 8 * v64);
    v8 = v167;
    (a5)(v61, v167);

    v68 = (*(&stru_68.reloff + (swift_isaMask & *v66)))(v67);

    v13 = v165;
    v69 = v169;
    if (v59)
    {
      if ((v68 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_45;
    }

    if ((v68 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_31:
    v40 = v161 + 1;
    v43 = v159 + 8;
    v44 = v158 - 1;
    if (v161 + 1 != v157)
    {
      goto LABEL_32;
    }

    v16 = v157;
    v39 = v155;
    a5 = v160;
LABEL_54:
    v82 = v156;
    if (v16 < v156)
    {
      goto LABEL_136;
    }

    v161 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_1EC48(0, *(v39 + 2) + 1, 1, v39);
    }

    v84 = *(v39 + 2);
    v83 = *(v39 + 3);
    v85 = v84 + 1;
    if (v84 >= v83 >> 1)
    {
      v39 = sub_1EC48((v83 > 1), v84 + 1, 1, v39);
    }

    *(v39 + 2) = v85;
    v86 = &v39[16 * v84];
    v87 = v161;
    *(v86 + 4) = v82;
    *(v86 + 5) = v87;
    v172 = *v154;
    if (!v172)
    {
      goto LABEL_146;
    }

    if (v84)
    {
      while (2)
      {
        v88 = v85 - 1;
        if (v85 >= 4)
        {
          v93 = &v39[16 * v85 + 32];
          v94 = *(v93 - 64);
          v95 = *(v93 - 56);
          v99 = __OFSUB__(v95, v94);
          v96 = v95 - v94;
          if (v99)
          {
            goto LABEL_123;
          }

          v98 = *(v93 - 48);
          v97 = *(v93 - 40);
          v99 = __OFSUB__(v97, v98);
          v91 = v97 - v98;
          v92 = v99;
          if (v99)
          {
            goto LABEL_124;
          }

          v100 = &v39[16 * v85];
          v102 = *v100;
          v101 = *(v100 + 1);
          v99 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v99)
          {
            goto LABEL_126;
          }

          v99 = __OFADD__(v91, v103);
          v104 = v91 + v103;
          if (v99)
          {
            goto LABEL_129;
          }

          if (v104 >= v96)
          {
            v122 = &v39[16 * v88 + 32];
            v124 = *v122;
            v123 = *(v122 + 1);
            v99 = __OFSUB__(v123, v124);
            v125 = v123 - v124;
            if (v99)
            {
              goto LABEL_133;
            }

            if (v91 < v125)
            {
              v88 = v85 - 2;
            }
          }

          else
          {
LABEL_74:
            if (v92)
            {
              goto LABEL_125;
            }

            v105 = &v39[16 * v85];
            v107 = *v105;
            v106 = *(v105 + 1);
            v108 = __OFSUB__(v106, v107);
            v109 = v106 - v107;
            v110 = v108;
            if (v108)
            {
              goto LABEL_128;
            }

            v111 = &v39[16 * v88 + 32];
            v113 = *v111;
            v112 = *(v111 + 1);
            v99 = __OFSUB__(v112, v113);
            v114 = v112 - v113;
            if (v99)
            {
              goto LABEL_131;
            }

            if (__OFADD__(v109, v114))
            {
              goto LABEL_132;
            }

            if (v109 + v114 < v91)
            {
              goto LABEL_88;
            }

            if (v91 < v114)
            {
              v88 = v85 - 2;
            }
          }
        }

        else
        {
          if (v85 == 3)
          {
            v89 = *(v39 + 4);
            v90 = *(v39 + 5);
            v99 = __OFSUB__(v90, v89);
            v91 = v90 - v89;
            v92 = v99;
            goto LABEL_74;
          }

          v115 = &v39[16 * v85];
          v117 = *v115;
          v116 = *(v115 + 1);
          v99 = __OFSUB__(v116, v117);
          v109 = v116 - v117;
          v110 = v99;
LABEL_88:
          if (v110)
          {
            goto LABEL_127;
          }

          v118 = &v39[16 * v88];
          v120 = *(v118 + 4);
          v119 = *(v118 + 5);
          v99 = __OFSUB__(v119, v120);
          v121 = v119 - v120;
          if (v99)
          {
            goto LABEL_130;
          }

          if (v121 < v109)
          {
            break;
          }
        }

        v126 = v88 - 1;
        if (v88 - 1 >= v85)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        v127 = *v162;
        if (!*v162)
        {
          goto LABEL_143;
        }

        a5 = v39;
        v128 = *&v39[16 * v126 + 32];
        v129 = *&v39[16 * v88 + 40];
        v130 = (v127 + 8 * v128);
        v131 = (v127 + 8 * *&v39[16 * v88 + 32]);
        v132 = (v127 + 8 * v129);
        v133 = v171;
        v134 = v163;
        sub_A135C(v130, v131, v132, v172, v133);
        v163 = v134;
        if (v134)
        {

          return;
        }

        if (v129 < v128)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a5 = sub_1EC34(a5);
        }

        if (v126 >= *(a5 + 2))
        {
          goto LABEL_122;
        }

        v135 = &a5[16 * v126];
        *(v135 + 4) = v128;
        *(v135 + 5) = v129;
        v175 = a5;
        sub_1EBA8(v88);
        v39 = v175;
        v85 = *(v175 + 2);
        a5 = v160;
        v8 = v167;
        if (v85 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v155 = v39;
    v15 = v161;
    v14 = v162[1];
    a4 = v153;
    v13 = v165;
    if (v161 >= v14)
    {
      goto LABEL_106;
    }
  }

  v8 = v167;
  (a5)(v61, v167);
  v13 = v165;
  v69 = v169;
  if (v59)
  {
LABEL_43:

    goto LABEL_48;
  }

LABEL_45:
  a5 = &selRef_supportsBuddyController;
  v70 = [v69 name];
  v71 = sub_D7C18();
  v73 = v72;

  v74 = [v172 name];
  v75 = sub_D7C18();
  v77 = v76;

  if (v71 == v75 && v73 == v77)
  {

    v8 = v167;
    goto LABEL_31;
  }

  v78 = sub_D8118();

  v8 = v167;
  if ((v78 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_48:
  v79 = v168;
  if (v166)
  {
    v80 = *v43;
    v45 = *(v43 + 8);
    *v43 = v45;
    *(v43 + 8) = v80;
    v43 -= 8;
    v81 = __CFADD__(v79, 1);
    v46 = v79 + 1;
    if (v81)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  v148 = v171;

  __break(1u);
LABEL_143:
  v149 = v171;

  __break(1u);
LABEL_144:
  v150 = v171;

  __break(1u);
LABEL_145:

  __break(1u);
LABEL_146:
  v151 = v171;

  __break(1u);
LABEL_147:

  __break(1u);
}

void sub_A448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v19 = v10;
    v20 = v9;
    while (1)
    {
      v22 = v11;
      v21 = *v9;
      v12 = v21;
      v13 = v11;
      v14 = v12;
      v15 = sub_935C8(&v22, &v21, a5);

      if (v5)
      {
        break;
      }

      if (v15)
      {
        if (!v8)
        {
          __break(1u);
          return;
        }

        v16 = *v9;
        v11 = *(v9 + 8);
        *v9 = v11;
        *(v9 + 8) = v16;
        v9 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v20 + 8;
      v10 = v19 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_A457C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_D80E8(v3);
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_450A0(0, &qword_118F10);
        v8 = sub_D7D58();
        *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      v9 = v4;
      sub_A38EC(v10, v11, a1, v6, v9);

      *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_A448C(0, v3, 1, a1, v4);
  }
}

void sub_A46D0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_4F7E4(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_A457C(v8, v7);

  sub_D8038();
}

uint64_t sub_A47D8(void *a1)
{
  v1 = [objc_opt_self() controllers];
  sub_450A0(0, &qword_1190F8);
  v2 = sub_D7D28();

  if (v2 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
  {
    v4 = 0;
    v21 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_D7FF8();
      }

      else
      {
        if (v4 >= *(v21 + 16))
        {
          goto LABEL_24;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [objc_opt_self() gcController_persistentIdentifier:v5];
      if (v8)
      {
        v9 = v8;
        v10 = sub_D7C18();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v13 = [a1 persistentIdentifier];
      v14 = sub_D7C18();
      v16 = v15;

      if (!v12)
      {

LABEL_20:

        goto LABEL_6;
      }

      if (v10 == v14 && v12 == v16)
      {
      }

      else
      {
        v17 = sub_D8118();

        if ((v17 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      sub_D8028();
      sub_D8058();
      sub_D8068();
      sub_D8038();
LABEL_6:
      ++v4;
      if (v7 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_26:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_29;
    }

LABEL_34:

    return 0;
  }

  result = sub_D8078();
  if (!result)
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v19 = sub_D7FF8();
    goto LABEL_32;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v19 = _swiftEmptyArrayStorage[4];
LABEL_32:
    v20 = v19;

    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_A4AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_118F20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A4B14()
{
  v1 = *(v0 + 16);
  v19 = *(v0 + 32);
  v20 = *(v0 + 40);
  v2 = [v1 games];
  sub_450A0(0, &qword_1164A8);
  v3 = sub_D7D28();

  v21 = v1;
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_27:
    v5 = sub_D8078();
  }

  else
  {
    v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  v6 = 4;
  while (1)
  {
    if (v6 - v5 == 4)
    {

      goto LABEL_22;
    }

    v7 = v6 - 4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = sub_D7FF8();
    }

    else
    {
      if (v7 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v8 = *(v3 + 8 * v6);
    }

    v9 = v8;
    v10 = GCSGame.id.getter();
    v12 = v11;
    if (v10 == GCSGame.id.getter() && v12 == v13)
    {
      break;
    }

    v14 = sub_D8118();

    if (v14)
    {
      goto LABEL_17;
    }

    ++v6;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_26;
    }
  }

LABEL_17:

  v15 = v19;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v3 >> 62 || (result & 1) == 0)
  {
    result = sub_A2E88(v3);
    v3 = result;
    v4 = result & 0xFFFFFFFFFFFFFF8;
  }

  if (v7 >= *(v4 + 16))
  {
    __break(1u);
    return result;
  }

  v17 = *(v4 + 8 * v6);
  *(v4 + 8 * v6) = v15;

LABEL_22:
  if (v20)
  {
    sub_9D7F8(v3, nullsub_1, 0);
  }

  isa = sub_D7D18().super.isa;

  [v21 setGames:isa];

  return (*&stru_298.segname[swift_isaMask & *v21])();
}

uint64_t sub_A4DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_A4DE8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_A4E30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = [v1 games];
  sub_450A0(0, &qword_1164A8);
  v5 = sub_D7D28();

  v6 = v2;
  sub_D7D08();
  if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v5 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_D7D48();
  }

  sub_D7D68();
  if (v3)
  {
    sub_9D7F8(v5, nullsub_1, 0);
  }

  isa = sub_D7D18().super.isa;

  [v1 setGames:isa];
}

uint64_t sub_A4F9C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_A4FDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = [v1 copilotFusedControllers];
  sub_450A0(0, &unk_118F00);
  v5 = sub_D7D28();

  v6 = v2;
  sub_D7D08();
  if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v5 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_D7D48();
  }

  sub_D7D68();
  if (v3)
  {
    sub_9D090(v5, nullsub_1, 0);
  }

  isa = sub_D7D18().super.isa;

  [v1 setCopilotFusedControllers:isa];

  return (*&stru_298.segname[swift_isaMask & *v1])();
}

uint64_t sub_A5168()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = [v1 profiles];
  sub_450A0(0, &qword_118F10);
  v5 = sub_D7D28();

  v6 = v2;
  sub_D7D08();
  if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v5 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_D7D48();
  }

  sub_D7D68();
  if (v3)
  {
    sub_9D0E0(v5, nullsub_1, 0);
  }

  isa = sub_D7D18().super.isa;

  [v1 setProfiles:isa];

  return (*&stru_298.segname[swift_isaMask & *v1])();
}

void sub_A5300()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = [v1 mouseProfiles];
  sub_450A0(0, &qword_118F50);
  v5 = sub_D7D28();

  v6 = v2;
  sub_D7D08();
  if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v5 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_D7D48();
  }

  sub_D7D68();
  if (v3)
  {
    sub_9D108(v5);
  }

  isa = sub_D7D18().super.isa;

  [v1 setMouseProfiles:isa];
}

void sub_A5444()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = [v2 mouseProfiles];
  sub_450A0(0, &qword_118F50);
  v6 = sub_D7D28();

  v7 = sub_964E0(v1, v6, &qword_118F50);
  LOBYTE(v5) = v8;

  if (v5)
  {
    goto LABEL_9;
  }

  v9 = v3;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_A2E88(v6);
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v7 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_15:
    __break(1u);
    return;
  }

  v10 = *(&stru_20.cmd + 8 * v7 + (v6 & 0xFFFFFFFFFFFFFF8));
  *(&stru_20.cmd + 8 * v7 + (v6 & 0xFFFFFFFFFFFFFF8)) = v9;

LABEL_9:
  if (v4)
  {
    sub_9D108(v6);
  }

  isa = sub_D7D18().super.isa;

  [v2 setMouseProfiles:isa];
}

uint64_t sub_A55C8()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_A5610()
{
  v1 = *(v0 + 16);
  v32 = *(v0 + 24);
  v28 = *(v0 + 32);
  v29 = *(v0 + 40);
  v2 = [v1 allControllers];
  sub_450A0(0, &qword_117060);
  v3 = sub_D7D28();

  v27 = v3 >> 62;
  v30 = v1;
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_31:
    v5 = sub_D8078();
  }

  else
  {
    v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  v33 = v3 & 0xC000000000000001;

  v6 = -v5;
  v7 = 4;
  v31 = v4;
  while (1)
  {
    if (v6 + v7 == 4)
    {

      goto LABEL_26;
    }

    v8 = v7 - 4;
    if (v33)
    {
      v9 = v3;
      v10 = sub_D7FF8();
    }

    else
    {
      if (v8 >= *(v4 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v9 = v3;
      v10 = *(v3 + 8 * v7);
    }

    v11 = v10;
    v12 = [v10 persistentIdentifier];
    v13 = sub_D7C18();
    v15 = v14;

    v16 = [v32 persistentIdentifier];
    v17 = sub_D7C18();
    v19 = v18;

    if (v13 == v17 && v15 == v19)
    {

      v3 = v9;

      goto LABEL_20;
    }

    v21 = sub_D8118();

    if (v21)
    {
      break;
    }

    ++v7;
    v3 = v9;
    v4 = v31;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_30;
    }
  }

  v3 = v9;
LABEL_20:

  v22 = v28;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v27 || (result & 1) == 0)
  {
    result = sub_A2E88(v3);
    v3 = result;
    v24 = result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v24 = v31;
  }

  if (v8 >= *(v24 + 16))
  {
    __break(1u);
    return result;
  }

  v25 = *(v24 + 8 * v7);
  *(v24 + 8 * v7) = v22;

LABEL_26:
  if (v29)
  {
    sub_9D0B8(v3, nullsub_1, 0);
  }

  isa = sub_D7D18().super.isa;

  [v30 setAllControllers:isa];

  return (*&stru_298.segname[swift_isaMask & *v30])();
}

uint64_t sub_A5928()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t type metadata accessor for GCSPreferencesStore()
{
  result = qword_11E060;
  if (!qword_11E060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A59C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_A5A80(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_A5AC4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_A5B0C()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v1[5];
  if (sub_D7C18() == v2 && v6 == v3)
  {

    return sub_9FF2C();
  }

  v8 = sub_D8118();

  if (v8)
  {
    return sub_9FF2C();
  }

  if (sub_D7C18() == v2 && v9 == v3)
  {

    return sub_9F6A4();
  }

  v11 = sub_D8118();

  if (v11)
  {
    return sub_9F6A4();
  }

  if (sub_D7C18() == v2 && v12 == v3)
  {

    return sub_9EE1C();
  }

  v13 = sub_D8118();

  if (v13)
  {
    return sub_9EE1C();
  }

  if (sub_D7C18() == v2 && v14 == v3)
  {

    return sub_9E594();
  }

  v15 = sub_D8118();

  if (v15)
  {
    return sub_9E594();
  }

  if (sub_D7C18() == v2 && v16 == v3)
  {

    return sub_A0DE8();
  }

  v17 = sub_D8118();

  if (v17)
  {
    return sub_A0DE8();
  }

  if (sub_D7C18() == v2 && v18 == v3)
  {

    goto LABEL_33;
  }

  v19 = sub_D8118();

  if (v19)
  {
LABEL_33:
    v20 = [v5 BOOLForKey:@"bluetoothPrefsMenuLongPressAction"];
    result = [v4 systemButtonActionsEnabled];
    if (v20 != result)
    {
      v21 = "setSystemButtonActionsEnabled:";
      v22 = v4;
      v23 = v20;
      goto LABEL_35;
    }

    return result;
  }

  if (qword_118DC0 == v2 && off_118DC8 == v3 || (sub_D8118() & 1) != 0)
  {

    v24 = sub_D7BD8();

    v25 = [v5 BOOLForKey:v24];

    result = [v4 naturalThumbstickScrollDirection];
    if (v25 == result)
    {
      v21 = "setNaturalThumbstickScrollDirection:";
      v23 = (v25 ^ 1);
      v22 = v4;
LABEL_35:

      return [v22 v21];
    }
  }

  else if (qword_118DD0 == v2 && off_118DD8 == v3 || (result = sub_D8118(), (result & 1) != 0))
  {

    v26 = sub_D7BD8();

    [v5 doubleForKey:v26];
    v28 = v27;

    result = [v4 thumbstickScrollingSpeed];
    if (v28 != v29)
    {
      v21 = "setThumbstickScrollingSpeed:";
      v22 = v4;

      return [v22 v21];
    }
  }

  return result;
}

void sub_A5F24()
{
  sub_A6344(319, &qword_118FD0, &qword_118DF0);
  if (v0 <= 0x3F)
  {
    sub_A6344(319, &qword_118FD8, &qword_118E08);
    if (v1 <= 0x3F)
    {
      sub_A6344(319, &qword_118FE0, &qword_118E20);
      if (v2 <= 0x3F)
      {
        sub_A6344(319, &qword_118FE8, &qword_117DB8);
        if (v3 <= 0x3F)
        {
          sub_A6344(319, &qword_118FF0, &qword_118E58);
          if (v4 <= 0x3F)
          {
            sub_A6344(319, &qword_118FF8, &qword_118E70);
            if (v5 <= 0x3F)
            {
              sub_A6344(319, &qword_119000, &qword_118C30);
              if (v6 <= 0x3F)
              {
                sub_A6344(319, &qword_119008, &qword_118EA0);
                if (v7 <= 0x3F)
                {
                  sub_A6724(319, &qword_119010, &type metadata for Bool, &type metadata accessor for Published);
                  if (v8 <= 0x3F)
                  {
                    sub_A6344(319, &qword_119018, &qword_118ED0);
                    if (v9 <= 0x3F)
                    {
                      sub_A6724(319, &qword_119020, &type metadata for Double, &type metadata accessor for Published);
                      if (v10 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
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

void sub_A6344(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_EBC0(a3);
    v4 = sub_D6AE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_A64D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_A65E4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_A668C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_A66CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v2 >> 62)
  {
    v3 = sub_D8078();
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  return v1(v3, 0);
}

void sub_A6724(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

char *sub_A6A00()
{
  v1 = sub_DC40(&qword_119200);
  v2 = __chkstk_darwin(v1 - 8);
  v30 = &v29 - v3;
  v4 = [v0 persistentIdentifier];
  sub_D7C18();

  v5 = sub_D7C48();
  v7 = v6;

  v34 = 0x80000000000E66E0;
  v33 = sub_D69C8();
  v8 = *(v33 - 8);
  v9 = *(v8 + 56);
  v31 = v8 + 56;
  v32 = v9;

  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v39 = v5;
    v40 = v7;
    v37 = 0xD000000000000027;
    v38 = v34;
    v11 = v30;
    v32(v30, 1, 1, v33);
    sub_16000();
    sub_D7F28();
    v13 = v12;
    sub_A6D8C(v11);

    if (v13)
    {
      break;
    }

    sub_D7CF8();
    v14 = sub_D7C58();
    v16 = v15;

    v39 = v5;
    v40 = v7;
    v37 = v14;
    v38 = v16;
    v35 = 0;
    v36 = 0xE000000000000000;
    v5 = sub_D7F08();
    v18 = v17;

    v39 = v14;
    v40 = v16;
    v37 = 45;
    v38 = 0xE100000000000000;
    v35 = 0;
    v36 = 0xE000000000000000;

    v19 = sub_D7F08();
    v21 = v20;

    v39 = v19;
    v40 = v21;
    v37 = 58;
    v38 = 0xE100000000000000;
    v35 = 0;
    v36 = 0xE000000000000000;
    v22 = sub_D7F08();
    v24 = v23;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_38A50(0, *(v10 + 2) + 1, 1, v10);
    }

    v26 = *(v10 + 2);
    v25 = *(v10 + 3);
    if (v26 >= v25 >> 1)
    {
      v10 = sub_38A50((v25 > 1), v26 + 1, 1, v10);
    }

    *(v10 + 2) = v26 + 1;
    v27 = &v10[16 * v26];
    *(v27 + 4) = v22;
    *(v27 + 5) = v24;
    v7 = v18;
  }

  if (!*(v10 + 2))
  {

    return 0;
  }

  return v10;
}

uint64_t sub_A6D8C(uint64_t a1)
{
  v2 = sub_DC40(&qword_119200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Class sub_A6E0C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    v6.super.isa = sub_D7D18().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

char *sub_A6E80()
{
  v1 = sub_DC40(&qword_119200);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v23 - v3;
  v5 = [v0 persistentIdentifier];
  sub_D7C18();

  v6 = sub_D7C48();
  v8 = v7;

  v26 = 0x80000000000E6710;
  v25 = sub_D69C8();
  v9 = *(v25 - 8);
  v10 = *(v9 + 56);
  v23 = v9 + 56;
  v24 = v10;

  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v31 = v6;
    v32 = v8;
    v29 = 0xD00000000000003ELL;
    v30 = v26;
    v24(v4, 1, 1, v25);
    sub_16000();
    sub_D7F28();
    v13 = v12;
    sub_A6D8C(v4);

    if (v13)
    {
      break;
    }

    sub_D7CF8();
    v14 = sub_D7C58();
    v16 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_38A50(0, *(v11 + 2) + 1, 1, v11);
    }

    v18 = *(v11 + 2);
    v17 = *(v11 + 3);
    if (v18 >= v17 >> 1)
    {
      v11 = sub_38A50((v17 > 1), v18 + 1, 1, v11);
    }

    *(v11 + 2) = v18 + 1;
    v19 = &v11[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
    v31 = v6;
    v32 = v8;
    v29 = v14;
    v30 = v16;
    v27 = 0;
    v28 = 0xE000000000000000;
    v6 = sub_D7F08();
    v21 = v20;

    v8 = v21;
  }

  if (!*(v11 + 2))
  {

    return 0;
  }

  return v11;
}

id sub_A722C(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  result = [v2 miscellaneous];
  if (result)
  {
    v7 = result;
    sub_DC40(&qword_119268);
    v8 = sub_D7B48();

    v9 = [v5 productCategoryKey];
    v10 = sub_D7C18();
    v12 = v11;

    if (v10 == 0xD000000000000021 && 0x80000000000E6750 == v12)
    {

      if (!*(v8 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = sub_D8118();

      if ((v14 & 1) == 0 || !*(v8 + 16))
      {
        goto LABEL_14;
      }
    }

    sub_1ED4C(a1, a2);
    if (v15)
    {
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      sub_DC40(&qword_119270);
      if (swift_dynamicCast())
      {
        v16 = sub_A75C4(v17);

        swift_unknownObjectRelease();
        result = v16;
        if (v16)
        {
          return result;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      return 0;
    }

LABEL_14:

    return 0;
  }

  return result;
}

uint64_t sub_A74D0()
{
  v1 = [v0 productCategoryKey];
  v2 = sub_D7C18();
  v4 = v3;

  if (v2 == 0xD000000000000021 && 0x80000000000E6750 == v4)
  {

    v7 = 0;
  }

  else
  {
    v6 = sub_D8118();

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_A7580@<X0>(uint64_t *a1@<X8>)
{
  sub_35F0C();
  result = sub_D7FE8();
  *a1 = result;
  return result;
}

id sub_A75C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_1ED4C(0x726F6C6F63, 0xE500000000000000);
    if (v3)
    {
      sub_8BE48(*(a1 + 56) + 32 * v2, v20);
      sub_3B548(v20, v21);
      sub_8BE48(v21, v20);
      sub_DC40(&qword_119278);
      if (swift_dynamicCast())
      {
        if (*(v19 + 16))
        {
          v4 = sub_1ED4C(6579570, 0xE300000000000000);
          if (v5)
          {
            if (*(v19 + 16))
            {
              v6 = *(*(v19 + 56) + 8 * v4);
              v7 = sub_1ED4C(0x6E65657267, 0xE500000000000000);
              if (v8)
              {
                if (*(v19 + 16))
                {
                  v9 = *(*(v19 + 56) + 8 * v7);
                  v10 = sub_1ED4C(1702194274, 0xE400000000000000);
                  if (v11)
                  {
                    v12 = *(*(v19 + 56) + 8 * v10);

                    v13 = objc_allocWithZone(GCColor);
                    *&v14 = v6 / 255.0;
                    *&v15 = v9 / 255.0;
                    *&v16 = v12 / 255.0;
                    v17 = [v13 initWithRed:v14 green:v15 blue:v16];
                    sub_7362C(v21);
                    return v17;
                  }
                }
              }
            }
          }
        }
      }

      sub_7362C(v21);
    }
  }

  return 0;
}

uint64_t sub_A77B0()
{
  sub_D7A38();
  v0 = sub_D7A28();

  return v0;
}

uint64_t sub_A77F4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_D7078();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = sub_DC40(&qword_119280);
  return sub_A7848(v1, a1 + *(v3 + 44));
}

uint64_t sub_A7848@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v82 = sub_DC40(&qword_119298);
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v72 = (&v58 - v3);
  v68 = sub_D7148();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_DC40(&qword_1192A0);
  v64 = *(v67 - 8);
  __chkstk_darwin(v67);
  v6 = &v58 - v5;
  v7 = sub_DC40(&qword_1192A8);
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin(v7);
  v73 = &v58 - v8;
  v9 = sub_DC40(&qword_1192B0);
  v71 = *(v9 - 8);
  __chkstk_darwin(v9);
  v77 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v58 - v12;
  v13 = sub_DC40(&qword_1192B8);
  __chkstk_darwin(v13 - 8);
  v79 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v83 = &v58 - v16;
  v84 = sub_D6FB8();
  v17 = 1;
  LOBYTE(v95) = 1;
  v81 = sub_D7078();
  LOBYTE(v94) = 0;
  sub_A835C(a1, &v88);
  v104 = *&v90[96];
  v105 = *&v90[112];
  v106 = *&v90[128];
  v100 = *&v90[32];
  v101 = *&v90[48];
  v102 = *&v90[64];
  v103 = *&v90[80];
  v96 = v88;
  v97 = v89;
  v98 = *v90;
  v99 = *&v90[16];
  v108[8] = *&v90[96];
  v108[9] = *&v90[112];
  v108[10] = *&v90[128];
  v108[4] = *&v90[32];
  v108[5] = *&v90[48];
  v108[6] = *&v90[64];
  v108[7] = *&v90[80];
  v108[0] = v88;
  v108[1] = v89;
  v107 = *&v90[144];
  v109 = *&v90[144];
  v108[2] = *v90;
  v108[3] = *&v90[16];
  sub_16054(&v96, &v85, &qword_1192C0);
  sub_160BC(v108, &qword_1192C0);
  *(&v92[8] + 7) = v104;
  *(&v92[9] + 7) = v105;
  *(&v92[10] + 7) = v106;
  *(&v92[4] + 7) = v100;
  *(&v92[5] + 7) = v101;
  *(&v92[6] + 7) = v102;
  *(&v92[7] + 7) = v103;
  *(v92 + 7) = v96;
  *(&v92[1] + 7) = v97;
  *(&v92[2] + 7) = v98;
  *(&v92[11] + 7) = v107;
  *(&v92[3] + 7) = v99;
  v78 = v94;
  v76 = v95;
  *(&v89 + 1) = &type metadata for GameController;
  *v90 = sub_A8E78();
  v18 = sub_D69E8();
  sub_7362C(&v88);
  if (v18)
  {
    sub_D7028();
    v62 = sub_D73A8();
    v63 = v19;
    v60 = v20;
    v61 = v21;
    v22 = *a1;
    v94 = a1[1];
    v95 = v22;
    v93 = a1[2];
    v23 = swift_allocObject();
    v24 = a1[1];
    v23[1] = *a1;
    v23[2] = v24;
    v23[3] = a1[2];
    sub_16054(&v95, &v88, &qword_1192E0);
    sub_16054(&v94, &v88, &qword_1166E0);
    sub_16054(&v93, &v88, &qword_1166E0);
    v59 = v9;
    sub_DC40(&qword_1192E8);
    sub_15FB8(&qword_1192F0, &qword_1192E8);
    v25 = v6;
    sub_D7848();
    v26 = v65;
    sub_D7138();
    v27 = sub_15FB8(&qword_1192F8, &qword_1192A0);
    v28 = sub_A906C(&qword_116548, &type metadata accessor for BorderlessButtonStyle);
    v30 = v67;
    v29 = v68;
    sub_D7428();
    (*(v66 + 8))(v26, v29);
    (*(v64 + 8))(v25, v30);
    v85 = v93;
    sub_DC40(&qword_1166E0);
    sub_D7808();
    LODWORD(v66) = v89;
    type metadata accessor for GCSControllerPairingHelpView();
    *&v88 = v30;
    *(&v88 + 1) = v29;
    *&v89 = v27;
    *(&v89 + 1) = v28;
    swift_getOpaqueTypeConformance2();
    sub_A906C(&qword_119300, type metadata accessor for GCSControllerPairingHelpView);
    v31 = v73;
    v32 = v74;
    v33 = v70;
    sub_D7518();

    (*(v69 + 8))(v31, v33);
    v34 = v71;
    v35 = *(v71 + 16);
    v36 = v77;
    v37 = v59;
    v35(v77, v32, v59);
    v38 = v72;
    v39 = v62;
    v40 = v60;
    *v72 = v62;
    *(v38 + 8) = v40;
    LODWORD(v73) = v61 & 1;
    *(v38 + 16) = v61 & 1;
    *(v38 + 24) = v63;
    v41 = sub_DC40(&qword_119308);
    v35(v38 + *(v41 + 48), v36, v37);
    LOBYTE(v36) = v73;
    sub_1F900(v39, v40, v73);
    v42 = *(v34 + 8);

    v42(v74, v37);
    v42(v77, v37);
    sub_1F8F0(v62, v40, v36);

    sub_A90B4(v38, v83);
    v17 = 0;
  }

  v43 = v83;
  (*(v80 + 56))(v83, v17, 1, v82);
  v44 = v79;
  sub_A8ECC(v43, v79);
  v85 = v84;
  v45 = v76;
  LOBYTE(v86) = v76;
  *(&v86 + 1) = v110[0];
  DWORD1(v86) = *(v110 + 3);
  v46 = v81;
  *(&v86 + 1) = v81;
  *v87 = 0x4024000000000000;
  v47 = v78;
  v87[8] = v78;
  *&v87[137] = v92[8];
  *&v87[153] = v92[9];
  *&v87[169] = v92[10];
  *&v87[184] = *(&v92[10] + 15);
  *&v87[73] = v92[4];
  *&v87[89] = v92[5];
  *&v87[105] = v92[6];
  *&v87[121] = v92[7];
  *&v87[9] = v92[0];
  *&v87[25] = v92[1];
  *&v87[41] = v92[2];
  *&v87[57] = v92[3];
  v48 = *&v87[176];
  v49 = v75;
  *(v75 + 192) = *&v87[160];
  *(v49 + 208) = v48;
  *(v49 + 224) = *&v87[192];
  v50 = *&v87[112];
  *(v49 + 128) = *&v87[96];
  *(v49 + 144) = v50;
  v51 = *&v87[144];
  *(v49 + 160) = *&v87[128];
  *(v49 + 176) = v51;
  v52 = *&v87[48];
  *(v49 + 64) = *&v87[32];
  *(v49 + 80) = v52;
  v53 = *&v87[80];
  *(v49 + 96) = *&v87[64];
  *(v49 + 112) = v53;
  v54 = v86;
  *v49 = v85;
  *(v49 + 16) = v54;
  v55 = *&v87[16];
  *(v49 + 32) = *v87;
  *(v49 + 48) = v55;
  v56 = sub_DC40(&qword_1192D0);
  sub_A8ECC(v44, v49 + *(v56 + 48));
  sub_16054(&v85, &v88, &qword_1192D8);
  sub_A8F3C(v43);
  sub_A8F3C(v44);
  *&v90[137] = v92[8];
  *&v90[153] = v92[9];
  *v91 = v92[10];
  *&v91[15] = *(&v92[10] + 15);
  *&v90[73] = v92[4];
  *&v90[89] = v92[5];
  *&v90[105] = v92[6];
  *&v90[121] = v92[7];
  *&v90[9] = v92[0];
  *&v90[25] = v92[1];
  *&v90[41] = v92[2];
  v88 = v84;
  LOBYTE(v89) = v45;
  *(&v89 + 1) = v110[0];
  DWORD1(v89) = *(v110 + 3);
  *(&v89 + 1) = v46;
  *v90 = 0x4024000000000000;
  v90[8] = v47;
  *&v90[57] = v92[3];
  return sub_160BC(&v88, &qword_1192D8);
}

uint64_t sub_A835C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = sub_D7708();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_D7718();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D76F8();
  (*(v8 + 104))(v10, enum case for Image.Interpolation.high(_:), v7);
  sub_D7728();

  (*(v8 + 8))(v10, v7);
  v11 = v38;
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v38);
  v39 = sub_D7758();

  (*(v4 + 8))(v6, v11);
  sub_D7A18();
  sub_D6C28();
  LOBYTE(v43) = 1;
  *&v41[3] = *&v41[27];
  *&v41[11] = *&v41[35];
  *&v41[19] = *&v41[43];
  v44 = *a1;
  v52 = *a1;
  sub_DC40(&qword_1192E0);
  sub_D77E8();
  v12 = v45[0];
  sub_D7AA8();
  v14 = v13;
  v16 = v15;
  sub_D7A38();
  v17 = sub_D7A28();

  v52 = v44;
  sub_D77E8();
  v18 = v45[0];
  v19 = a1[1];
  v42 = a1[2];
  v43 = v19;
  v20 = swift_allocObject();
  v21 = a1[1];
  v20[1] = *a1;
  v20[2] = v21;
  v20[3] = a1[2];
  sub_16054(&v44, &v52, &qword_1192E0);
  sub_16054(&v43, &v52, &qword_1166E0);
  sub_16054(&v42, &v52, &qword_1166E0);
  *&v52 = sub_A9308(0xD000000000000017, 0x80000000000E6800);
  *(&v52 + 1) = v22;
  sub_16000();
  v23 = sub_D73B8();
  v25 = v24;
  v26 = v39;
  v45[0] = v39;
  v45[1] = 0;
  LOWORD(v46[0]) = 1;
  *(v46 + 2) = *v41;
  *(&v46[1] + 2) = *&v41[8];
  *(&v46[2] + 2) = *&v41[16];
  *&v46[3] = *&v41[23];
  *(&v46[3] + 1) = v12;
  *&v47 = v12;
  *(&v47 + 1) = v14;
  *&v48 = v16;
  *(&v48 + 1) = v17;
  *&v49 = v18;
  *(&v49 + 1) = sub_A91C4;
  v50 = v20;
  v51 = 0;
  LOBYTE(v7) = v27 & 1;
  v40 = v27 & 1;
  v28 = v46[0];
  *a2 = v39;
  *(a2 + 16) = v28;
  v29 = v46[1];
  v30 = v46[2];
  v31 = v47;
  *(a2 + 64) = v46[3];
  *(a2 + 80) = v31;
  *(a2 + 32) = v29;
  *(a2 + 48) = v30;
  v32 = v48;
  v33 = v50;
  v34 = v51;
  *(a2 + 112) = v49;
  *(a2 + 128) = v33;
  *(a2 + 96) = v32;
  *(a2 + 144) = v34;
  *(a2 + 152) = v23;
  *(a2 + 160) = v24;
  *(a2 + 168) = v27 & 1;
  *(a2 + 176) = v35;
  sub_16054(v45, &v52, &qword_119320);
  sub_1F900(v23, v25, v7);

  sub_1F8F0(v23, v25, v7);

  v54 = *v41;
  v52 = v26;
  v53 = 1;
  v55 = *&v41[8];
  *v56 = *&v41[16];
  *&v56[14] = *&v41[23];
  v57 = v12;
  v58 = v12;
  v59 = v14;
  v60 = v16;
  v61 = v17;
  v62 = v18;
  v63 = sub_A91C4;
  v64 = v20;
  v65 = 0;
  v66 = 0;
  return sub_160BC(&v52, &qword_119320);
}

uint64_t sub_A8898()
{
  sub_DC40(&qword_1166E0);
  result = sub_D77E8();
  if (v2 == 1)
  {
    sub_D7A38();
    sub_D7A28();

    __chkstk_darwin(v1);
    sub_D6C68();
  }

  return result;
}

__n128 sub_A8980@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_D6FB8();
  v14 = 1;
  sub_A89F0(&v9);
  v3 = v10;
  v4 = v12;
  v5 = v13;
  result = v9;
  v7 = v11;
  v8 = v14;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v7;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  return result;
}

uint64_t sub_A89F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_DC40(&qword_119310);
  __chkstk_darwin(v2 - 8);
  v4 = &v23[-v3];
  v5 = sub_D7308();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_A9308(0x505F4F545F574F48, 0xEB00000000524941);
  v26 = v9;
  sub_16000();
  v10 = sub_D73B8();
  v12 = v11;
  v24 = v13;
  v15 = v14;
  v16 = sub_D76F8();
  (*(v6 + 104))(v8, enum case for Font.TextStyle.footnote(_:), v5);
  v17 = sub_D7268();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_D72B8();
  sub_160BC(v4, &qword_119310);
  (*(v6 + 8))(v8, v5);
  sub_D7298();
  v18 = sub_D72D8();

  KeyPath = swift_getKeyPath();
  *a1 = v10;
  *(a1 + 8) = v12;
  v20 = v24;
  v21 = v24 & 1;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v18;
  sub_1F900(v10, v12, v20 & 1);

  sub_1F8F0(v10, v12, v21);
}

uint64_t sub_A8C90@<X0>(uint64_t a1@<X8>)
{
  sub_D77D8();
  sub_D77D8();
  result = sub_D77D8();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  return result;
}

uint64_t sub_A8D68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_A8DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_A8E78()
{
  result = qword_1192C8;
  if (!qword_1192C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1192C8);
  }

  return result;
}

uint64_t sub_A8ECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_1192B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A8F3C(uint64_t a1)
{
  v2 = sub_DC40(&qword_1192B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A8FA8()
{
  v3 = *(v0 + 48);
  v2[1] = *(v0 + 48);
  v4 = *(&v3 + 1);
  sub_16054(&v4, v2, &qword_119318);
  sub_DC40(&qword_1166E0);
  sub_D77E8();
  v2[0] = v3;
  sub_D77F8();
  return sub_160BC(&v3, &qword_1166E0);
}

uint64_t sub_A906C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A90B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_119298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A9124@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D6EE8();
  *a1 = result;
  return result;
}

uint64_t sub_A917C()
{

  return _swift_deallocObject(v0, 64, 7);
}

id sub_A923C()
{
  v0 = sub_D7BD8();
  v1 = objc_opt_self();
  v2 = [v1 bundleWithIdentifier:v0];

  if (v2)
  {
    return v2;
  }

  v4 = [v1 mainBundle];

  return v4;
}

uint64_t sub_A9308(uint64_t a1, void *a2)
{
  v4 = sub_D7BD8();
  v5 = objc_opt_self();
  v6 = [v5 bundleWithIdentifier:v4];

  if (!v6)
  {
    v6 = [v5 mainBundle];
  }

  v10._countAndFlagsBits = a2;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  v7.super.isa = v6;
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  v8 = sub_D6838(v11, v12, v7, v13, v10);

  return v8;
}

Swift::String __swiftcall String.localized(with:)(Swift::OpaquePointer with)
{
  v3 = v2;
  v4 = v1;
  v5 = sub_D7BD8();
  v6 = objc_opt_self();
  v7 = [v6 bundleWithIdentifier:v5];

  if (!v7)
  {
    v7 = [v6 mainBundle];
  }

  v15._countAndFlagsBits = v3;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEB00000000656C62;
  v16._countAndFlagsBits = v4;
  v16._object = v3;
  v8.super.isa = v7;
  v18._countAndFlagsBits = v4;
  v18._object = v3;
  sub_D6838(v16, v17, v8, v18, v15);

  v9 = sub_D7BE8();
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t sub_A9524()
{
  type metadata accessor for GCSPreferencesStore();
  sub_ABF98(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DF8();
}

uint64_t sub_A95B4()
{
  type metadata accessor for GCSAppStore();
  v0 = static MacParity.Pantheon.getter();
  return sub_4428C(v0 & 1);
}

uint64_t sub_A95E8()
{
  sub_DC40(&qword_116510);
  sub_D78B8();
  return v1;
}

void (*sub_A969C(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  v7 = *(v1 + 64);
  *(v3 + 19) = v7;
  *(v3 + 48) = v5;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  sub_16444(v3 + 48, v3 + 24);

  *(v4 + 72) = sub_DC40(&qword_116510);
  sub_D78B8();
  return sub_22030;
}

uint64_t sub_A9758()
{
  sub_DC40(&qword_116510);
  sub_D78E8();
  return v1;
}

uint64_t sub_A97B4@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v26 = sub_D70E8();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_D70F8();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_DC40(&qword_117938);
  v25 = *(v23 - 8);
  __chkstk_darwin(v23);
  v8 = &v22 - v7;
  v30 = v1;
  v22 = sub_DC40(&qword_117940);
  v9 = sub_EBC0(&qword_117948);
  v10 = sub_EBC0(&qword_117950);
  v11 = sub_EBC0(&qword_117958);
  v12 = sub_EBC0(&qword_117960);
  v13 = sub_4C2F0();
  v14 = sub_16000();
  v33 = v12;
  v34 = &type metadata for String;
  v35 = v13;
  v36 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v11;
  v34 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v17 = sub_EBC0(&qword_116998);
  v18 = sub_15FB8(&qword_1179A0, &qword_116998);
  v33 = v17;
  v34 = v18;
  v19 = swift_getOpaqueTypeConformance2();
  v33 = v9;
  v34 = v10;
  v35 = v16;
  v36 = v19;
  swift_getOpaqueTypeConformance2();
  sub_D6CB8();
  v31 = *(v1 + 88);
  v32 = *(v1 + 104);
  sub_DC40(&qword_1169A8);
  sub_D7808();
  sub_D70D8();
  sub_D70C8();
  (*(v24 + 8))(v3, v26);
  sub_15FB8(&qword_1179A8, &qword_117938);
  v20 = v23;
  sub_D7418();

  (*(v27 + 8))(v6, v28);
  return (*(v25 + 8))(v8, v20);
}

uint64_t sub_A9C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = sub_D6F98();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_D6D08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_DC40(&qword_117980);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - v10;
  v44 = sub_DC40(&qword_117960);
  __chkstk_darwin(v44);
  v13 = &v44 - v12;
  v46 = sub_DC40(&qword_117958);
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v15 = &v44 - v14;
  v49 = sub_DC40(&qword_117948);
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v45 = &v44 - v16;
  v55 = a1;
  sub_DC40(&qword_117A70);
  sub_4D6C8();
  sub_D7328();
  sub_D7A48();
  sub_15FB8(&qword_117988, &qword_117980);
  sub_ABF98(&qword_116888, &type metadata accessor for GroupedFormStyle);
  sub_D7558();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  v56 = *(a1 + 88);
  v57 = *(a1 + 104);
  sub_DC40(&qword_1169A8);
  sub_D77E8();
  v17 = v59;
  v18 = v60;
  v19 = swift_allocObject();
  v20 = *(a1 + 80);
  v19[5] = *(a1 + 64);
  v19[6] = v20;
  v19[7] = *(a1 + 96);
  v21 = *(a1 + 16);
  v19[1] = *a1;
  v19[2] = v21;
  v22 = *(a1 + 48);
  v19[3] = *(a1 + 32);
  v19[4] = v22;
  v23 = &v13[*(sub_DC40(&qword_117978) + 36)];
  *v23 = v17;
  *(v23 + 1) = v18;
  *(v23 + 2) = sub_AB638;
  *(v23 + 3) = v19;
  v24 = swift_allocObject();
  v25 = *(a1 + 80);
  *(v24 + 5) = *(a1 + 64);
  *(v24 + 6) = v25;
  *(v24 + 7) = *(a1 + 96);
  v26 = *(a1 + 16);
  *(v24 + 1) = *a1;
  *(v24 + 2) = v26;
  v27 = *(a1 + 48);
  *(v24 + 3) = *(a1 + 32);
  *(v24 + 4) = v27;
  v28 = v44;
  v29 = &v13[*(v44 + 36)];
  *v29 = sub_ABA00;
  v29[1] = v24;
  v29[2] = 0;
  v29[3] = 0;
  sub_ABB7C(a1, &v56);
  sub_ABB7C(a1, &v56);
  *&v56 = sub_A9308(0x5F5050415F444441, 0xED0000454C544954);
  *(&v56 + 1) = v30;
  v31 = sub_4C2F0();
  v32 = sub_16000();
  v33 = v28;
  sub_D7498();

  sub_4DD1C(v13);
  v34 = v51;
  v35 = v48;
  v36 = v52;
  (*(v51 + 104))(v48, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v52);
  *&v56 = v33;
  *(&v56 + 1) = &type metadata for String;
  v57 = v31;
  v58 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v45;
  v39 = v46;
  sub_D74F8();
  (*(v34 + 8))(v35, v36);
  (*(v47 + 8))(v15, v39);
  v54 = a1;
  sub_DC40(&qword_117950);
  *&v56 = v39;
  *(&v56 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v40 = sub_EBC0(&qword_116998);
  v41 = sub_15FB8(&qword_1179A0, &qword_116998);
  *&v56 = v40;
  *(&v56 + 1) = v41;
  swift_getOpaqueTypeConformance2();
  v42 = v49;
  sub_D7528();
  return (*(v50 + 8))(v38, v42);
}

id sub_AA3E8(void *a1, void **a2)
{
  v4 = sub_D6998();
  __chkstk_darwin(v4);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_D6A38();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v106 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v96 - v12;
  result = [a1 bundleIdentifier];
  if (result)
  {
    v15 = result;
    v16 = sub_D7C18();
    v109 = v17;
    v110 = v16;
    v108 = v15;
    v18 = [a1 localizedName];
    v19 = v18;
    v20 = v18;
    if (!v18)
    {
      sub_D7C18();
      v20 = sub_D7BD8();

      sub_D7C18();
      v19 = sub_D7BD8();
    }

    v103 = v8;
    v21 = *a2;
    if (!*a2)
    {
      v94 = v18;

      v95 = v108;
      type metadata accessor for GCSPreferencesStore();
      sub_ABF98(&qword_116448, type metadata accessor for GCSPreferencesStore);
      result = sub_D6DD8();
      __break(1u);
      return result;
    }

    v99 = v19;
    v22 = v21;
    v23 = v18;
    v101 = v22;
    v24 = [v22 games];
    sub_1611C();
    v25 = sub_D7D28();

    v104 = v7;
    v105 = a2;
    v102 = v4;
    v107 = v21;
    v97 = v6;
    v98 = v13;
    v100 = v20;
    if (v25 >> 62)
    {
LABEL_27:
      v26 = sub_D8078();
      if (v26)
      {
LABEL_7:
        v27 = 0;
        while (1)
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v28 = sub_D7FF8();
          }

          else
          {
            if (v27 >= *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_26;
            }

            v28 = *(v25 + 8 * v27 + 32);
          }

          v29 = v28;
          v30 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v31 = [v28 bundleIdentifier];
          v32 = sub_D7C18();
          v34 = v33;

          if (v32 == v110 && v34 == v109)
          {
            break;
          }

          v36 = sub_D8118();

          if (v36)
          {
            goto LABEL_21;
          }

          ++v27;
          if (v30 == v26)
          {
            goto LABEL_28;
          }
        }

LABEL_21:

        v37 = v29;

        v38 = v101;
        v39 = [v37 controllerToProfileMappings];
        v40 = sub_D7B48();

        v41 = [v105[5] persistentIdentifier];
        v42 = sub_D7C18();
        v44 = v43;

        v45 = (*&stru_248.segname[(swift_isaMask & *v38) - 8])();
        v46 = [v45 uuid];

        v47 = v97;
        sub_D6978();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = v40;
        sub_8B268(v47, v42, v44, isUniquelyReferenced_nonNull_native);

        v49 = [v37 controllerToCompatibilityModeMappings];
        type metadata accessor for GCSCompatibilityMode();
        sub_D7B48();

        v50 = objc_allocWithZone(GCSGame);
        isa = sub_D7B38().super.isa;

        v52 = sub_D7B38().super.isa;

        v53 = v50;
        v54 = v108;
        v55 = v99;
        v56 = [v53 initWithBundleIdentifier:v108 title:v99 controllerToProfileMappings:isa controllerToCompatibilityModeMappings:v52];

        (*(&stru_298.size + (swift_isaMask & *v38)))(v37, v56, 1);
        v57 = sub_2E18C();
        v59 = v103;
        v58 = v104;
        (*(v103 + 16))(v106, v57, v104);
        v60 = v56;
        v61 = sub_D6A18();
        v62 = sub_D7E38();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *v63 = 138412290;
          *(v63 + 4) = v60;
          *v64 = v60;
          v65 = v60;
          _os_log_impl(&dword_0, v61, v62, "Updating %@", v63, 0xCu);
          sub_160BC(v64, &qword_119120);
        }

        else
        {
          v65 = v61;
          v61 = v60;
        }

        v66 = v37;
        v68 = v105;
        v67 = v106;
        goto LABEL_31;
      }
    }

    else
    {
      v26 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
      if (v26)
      {
        goto LABEL_7;
      }
    }

LABEL_28:

    v69 = v101;

    sub_DC40(&qword_119328);
    v70 = *(sub_DC40(&qword_1172A0) - 8);
    v71 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_DCB80;
    v73 = (v72 + v71);
    v68 = v105;
    v74 = [v105[5] persistentIdentifier];
    v75 = sub_D7C18();
    v77 = v76;

    *v73 = v75;
    v73[1] = v77;
    v78 = (*&stru_248.segname[(swift_isaMask & *v69) - 8])();

    v79 = [v78 uuid];
    sub_D6978();

    sub_3DB70(v72);
    swift_setDeallocating();
    sub_160BC(v72 + v71, &qword_1172A0);
    swift_deallocClassInstance();
    sub_3DD4C(_swiftEmptyArrayStorage);
    v80 = objc_allocWithZone(GCSGame);
    v81 = sub_D7B38().super.isa;

    type metadata accessor for GCSCompatibilityMode();
    v82 = sub_D7B38().super.isa;

    v83 = v80;
    v84 = v108;
    v85 = v100;
    v86 = [v83 initWithBundleIdentifier:v108 title:v100 controllerToProfileMappings:v81 controllerToCompatibilityModeMappings:v82];

    (*(&stru_298.offset + (swift_isaMask & *v69)))(v86, 1);
    v87 = sub_2E18C();
    v59 = v103;
    v58 = v104;
    v67 = v98;
    (*(v103 + 16))(v98, v87, v104);
    v88 = v86;
    v37 = sub_D6A18();
    v89 = sub_D7E38();

    if (os_log_type_enabled(v37, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v90 = 138412290;
      *(v90 + 4) = v88;
      *v91 = v88;
      v61 = v88;
      _os_log_impl(&dword_0, v37, v89, "Adding %@", v90, 0xCu);
      sub_160BC(v91, &qword_119120);

      v66 = 0;
    }

    else
    {
      v66 = 0;
      v61 = v37;
      v37 = v88;
    }

LABEL_31:

    (*(v59 + 8))(v67, v58);
    v92 = v68[7];
    v93 = *(v68 + 64);
    v115[0] = v68[6];
    v112 = v115[0];
    v113 = v92;
    v114 = v93;
    v111[15] = 0;
    sub_16444(v115, v111);

    sub_DC40(&qword_116510);
    sub_D78C8();

    sub_164A0(v115);
  }

  return result;
}

uint64_t sub_AAF88(uint64_t a1)
{
  v2 = sub_D7128();
  __chkstk_darwin(v2 - 8);
  v3 = sub_DC40(&qword_116998);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_D7108();
  v9 = a1;
  sub_DC40(&qword_116818);
  sub_15FB8(&qword_116830, &qword_116818);
  sub_D6C08();
  sub_15FB8(&qword_1179A0, &qword_116998);
  sub_D7168();
  return (*(v4 + 8))(v6, v3);
}

__n128 sub_AB174@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for GCSPreferencesStore();
  sub_ABF98(&qword_116448, type metadata accessor for GCSPreferencesStore);
  v10 = sub_D6DF8();
  v12 = v11;
  sub_DC40(&qword_117528);
  sub_D77D8();
  sub_D77D8();
  result = v14;
  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = sub_A95B4;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 40) = a1;
  *(a5 + 48) = a2;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = v14;
  *(a5 + 88) = v14;
  *(a5 + 104) = v15;
  return result;
}

__n128 sub_AB324(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_AB348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_AB390(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_AB3FC()
{
  sub_EBC0(&qword_117938);
  sub_15FB8(&qword_1179A8, &qword_117938);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_AB494()
{
  v1 = *(v0 + 16);
  v9[0] = *(v1 + 72);
  sub_DC40(&qword_117A90);
  sub_D77E8();
  swift_getKeyPath();
  v2 = swift_allocObject();
  v4 = v1[1];
  v3 = v1[2];
  v2[1] = *v1;
  v2[2] = v4;
  v2[3] = v3;
  v5 = v1[6];
  v7 = v1[3];
  v6 = v1[4];
  v2[6] = v1[5];
  v2[7] = v5;
  v2[4] = v7;
  v2[5] = v6;
  sub_ABB7C(v1, v9);
  sub_DC40(&qword_117528);
  sub_DC40(&qword_117A88);
  sub_15FB8(&qword_117A98, &qword_117528);
  sub_4F480();
  sub_15FB8(&qword_117A80, &qword_117A88);
  return sub_D7988();
}

uint64_t sub_AB638(void *a1)
{
  v2 = a1[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  type metadata accessor for GCSAppStore();
  sub_ABF98(&qword_117920, type metadata accessor for GCSAppStore);
  v4 = sub_D6BD8();
  v5 = *(v1 + 16);
  if (v3)
  {
    if (v5)
    {
      v6 = *(v1 + 56);
      v7 = *(*v4 + 144);
      v8 = v5;
      v9 = v7(v6, v8);

      if (v9 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
      {
        v24 = v9 & 0xC000000000000001;
        v11 = v9 & 0xFFFFFFFFFFFFFF8;
        v12 = 4;
        while (1)
        {
          v13 = v12 - 4;
          if (v24)
          {
            v14 = sub_D7FF8();
          }

          else
          {
            if (v13 >= *(v11 + 16))
            {
              goto LABEL_22;
            }

            v14 = *(v9 + 8 * v12);
          }

          v15 = v14;
          v16 = v12 - 3;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          v17 = v9;
          sub_D69A8();
          isa = sub_D7D18().super.isa;

          v19 = [v15 localizedNameWithPreferredLocalizations:isa];

          sub_D7C18();
          sub_D7C48();

          sub_D7C48();
          sub_16000();
          LOBYTE(v19) = sub_D7F48();

          if (v19)
          {
            sub_D8028();
            sub_D8058();
            sub_D8068();
            sub_D8038();
          }

          else
          {
          }

          v9 = v17;
          ++v12;
          if (v16 == i)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

LABEL_24:

      goto LABEL_25;
    }
  }

  else if (v5)
  {
    v20 = *(v1 + 56);
    v21 = *(*v4 + 144);
    v22 = v5;
    v21(v20, v22);

LABEL_25:
    sub_DC40(&qword_117A90);
    return sub_D77F8();
  }

  type metadata accessor for GCSPreferencesStore();
  sub_ABF98(&qword_116448, type metadata accessor for GCSPreferencesStore);
  result = sub_D6DD8();
  __break(1u);
  return result;
}

uint64_t sub_ABA00()
{
  type metadata accessor for GCSAppStore();
  sub_ABF98(&qword_117920, type metadata accessor for GCSAppStore);
  v1 = sub_D6BD8();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 56);
    v4 = *(*v1 + 144);
    v5 = v2;
    v4(v3, v5);

    sub_DC40(&qword_117A90);
    return sub_D77F8();
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_ABF98(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_ABBBC()
{
  v1 = *(v0 + 16);
  v10[14] = sub_A9308(0x4C45434E4143, 0xE600000000000000);
  v10[15] = v2;
  v3 = swift_allocObject();
  v5 = v1[1];
  v4 = v1[2];
  v3[1] = *v1;
  v3[2] = v5;
  v3[3] = v4;
  v6 = v1[6];
  v8 = v1[3];
  v7 = v1[4];
  v3[6] = v1[5];
  v3[7] = v6;
  v3[4] = v8;
  v3[5] = v7;
  sub_ABB7C(v1, v10);
  sub_16000();
  return sub_D7868();
}

uint64_t sub_ABCDC()
{
  sub_2DAA4();

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_ABD58(void **a1)
{
  v2 = *a1;
  v3 = swift_allocObject();
  v4 = v1[3];
  *(v3 + 72) = v1[4];
  v5 = v1[6];
  *(v3 + 88) = v1[5];
  *(v3 + 104) = v5;
  *(v3 + 120) = v1[7];
  v6 = v1[2];
  *(v3 + 24) = v1[1];
  *(v3 + 40) = v6;
  *(v3 + 16) = v2;
  *(v3 + 56) = v4;
  v7 = v2;
  sub_ABB7C((v1 + 1), v9);
  sub_4F744();
  return sub_D7848();
}

uint64_t sub_ABE30()
{
  sub_2DAA4();

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_ABF98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_ABFEC()
{
  if (objc_getAssociatedObject(v0, &unk_11EB10))
  {
    sub_D7F58();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_3DEA0(v5);
  }

  return 0;
}

void sub_AC098()
{
  isa = sub_D7D78().super.super.isa;
  objc_setAssociatedObject(v0, &unk_11EB10, isa, 0);
}

void sub_AC0E8(void (*a1)(void), char *a2)
{
  v69 = a2;
  v4 = sub_D6A38();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v68 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v65 - v8;
  __chkstk_darwin(v10);
  v12 = &v65 - v11;
  v13 = sub_D68A8();
  v67 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v2 haptics];
  if (v17 && (v18 = v17, v19 = [v17 createEngineWithLocality:GCHapticsLocalityDefault], v18, v19))
  {
    v65 = v13;
    v74 = sub_ACA60;
    v75 = 0;
    aBlock = _NSConcreteStackBlock;
    v71 = 1107296256;
    v72 = sub_ACBC8;
    v73 = &unk_109E68;
    v20 = _Block_copy(&aBlock);
    [v19 setStoppedHandler:v20];
    _Block_release(v20);
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = a1;
    v66 = a1;
    v21[4] = v69;
    v74 = sub_AD960;
    v75 = v21;
    aBlock = _NSConcreteStackBlock;
    v71 = 1107296256;
    v72 = sub_284B4;
    v73 = &unk_109EB8;
    v22 = _Block_copy(&aBlock);

    v23 = v19;

    [v23 setResetHandler:v22];
    _Block_release(v22);
    v24 = sub_D7BD8();
    v25 = objc_opt_self();
    v26 = [v25 bundleWithIdentifier:v24];

    if (!v26)
    {
      v26 = [v25 mainBundle];
    }

    v27 = sub_D7BD8();
    v28 = sub_D7BD8();
    v29 = [v26 URLForResource:v27 withExtension:v28];

    if (v29)
    {
      v30 = v16;
      sub_D6898();

      aBlock = 0;
      v31 = [v23 startAndReturnError:&aBlock];
      v32 = aBlock;
      if (v31)
      {
        v33 = aBlock;
        isa = sub_D7D78().super.super.isa;
        objc_setAssociatedObject(v2, &unk_11EB10, isa, 0);

        v35 = swift_allocObject();
        v36 = v66;
        v35[2] = v2;
        v35[3] = v36;
        v35[4] = v69;
        v74 = sub_AD9AC;
        v75 = v35;
        aBlock = _NSConcreteStackBlock;
        v71 = 1107296256;
        v72 = sub_AD158;
        v73 = &unk_109F08;
        v37 = _Block_copy(&aBlock);

        v38 = v2;

        [v23 notifyWhenPlayersFinished:v37];
        _Block_release(v37);
        sub_D6888(v39);
        v41 = v40;
        aBlock = 0;
        v42 = [v23 playPatternFromURL:v40 error:&aBlock];

        v32 = aBlock;
        v43 = v65;
        if (v42)
        {
          v44 = aBlock;

LABEL_19:
          (*(v67 + 8))(v30, v43);
          return;
        }
      }

      else
      {
        v43 = v65;
      }

      v55 = v32;
      sub_D6848();

      swift_willThrow();
      v66(1);
      v56 = sub_2E18C();
      v57 = v68;
      (*(v5 + 16))(v68, v56, v4);
      swift_errorRetain();
      v58 = sub_D6A18();
      v59 = sub_D7E38();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v60 = 136315394;
        *(v60 + 4) = sub_89FF4(0x6564492F50414841, 0xED0000796669746ELL, &aBlock);
        *(v60 + 12) = 2080;
        swift_getErrorValue();
        v61 = sub_D8148();
        v63 = sub_89FF4(v61, v62, &aBlock);
        v69 = v30;
        v64 = v63;

        *(v60 + 14) = v64;
        _os_log_impl(&dword_0, v58, v59, "An error occured playing %s: %s.", v60, 0x16u);
        swift_arrayDestroy();

        (*(v5 + 8))(v68, v4);
        (*(v67 + 8))(v69, v65);
        return;
      }

      (*(v5 + 8))(v57, v4);
      goto LABEL_19;
    }

    v49 = sub_2E18C();
    (*(v5 + 16))(v12, v49, v4);
    v50 = sub_D6A18();
    v51 = sub_D7E38();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = v23;
      v54 = swift_slowAlloc();
      aBlock = v54;
      *v52 = 136315138;
      *(v52 + 4) = sub_89FF4(0x6564492F50414841, 0xED0000796669746ELL, &aBlock);
      _os_log_impl(&dword_0, v50, v51, "Unable to find haptics file named '%s'.", v52, 0xCu);
      sub_7362C(v54);
      v23 = v53;
    }

    (*(v5 + 8))(v12, v4);
    v66(1);
  }

  else
  {
    v45 = sub_2E18C();
    (*(v5 + 16))(v9, v45, v4);
    v46 = sub_D6A18();
    v47 = sub_D7E38();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_0, v46, v47, "Failed to create engine.", v48, 2u);
    }

    (*(v5 + 8))(v9, v4);
    a1(1);
  }
}

uint64_t sub_ACA60(uint64_t a1)
{
  v2 = sub_D6A38();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2E18C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_D6A18();
  v8 = sub_D7E38();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&dword_0, v7, v8, "The engine stopped because %ld", v9, 0xCu);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_ACBC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_ACC1C(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v29[2] = a3;
  v30 = a2;
  v4 = sub_D6A38();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v29 - v8;
  v10 = sub_2E18C();
  v11 = *(v5 + 16);
  v11(v9, v10, v4);
  v12 = sub_D6A18();
  v13 = sub_D7E38();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "The engine reset --> Restarting now!", v14, 2u);
  }

  v15 = *(v5 + 8);
  v15(v9, v4);
  v32 = 0;
  v16 = [a1 startAndReturnError:&v32];
  v17 = v32;
  if (v16)
  {

    return v17;
  }

  else
  {
    v29[1] = v32;
    v19 = v32;
    sub_D6848();

    swift_willThrow();
    v30(1);
    v20 = v31;
    v11(v31, v10, v4);
    swift_errorRetain();
    v21 = sub_D6A18();
    v22 = sub_D7E38();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v25 = sub_D8148();
      v27 = sub_89FF4(v25, v26, &v32);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_0, v21, v22, "Failed to restart the engine: %s", v23, 0xCu);
      sub_7362C(v24);

      v28 = v31;
    }

    else
    {

      v28 = v20;
    }

    return (v15)(v28, v4);
  }
}

uint64_t sub_ACFB4(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_D6A38();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2E18C();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_D6A18();
  v10 = sub_D7E38();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "Done!", v11, 2u);
  }

  (*(v5 + 8))(v7, v4);
  isa = sub_D7D78().super.super.isa;
  objc_setAssociatedObject(a1, &unk_11EB10, isa, 0);

  return a2(1);
}

uint64_t sub_AD158(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3(a2);

  return v5;
}

char *sub_AD1B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v50 = a3;
  v51 = a4;
  v49 = a1;
  v7 = sub_D7AC8();
  v48 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_D7AF8();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_D7AB8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = sub_D7B28();
  v15 = *(v44 - 8);
  __chkstk_darwin(v44);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v42 - v20;
  result = [v5 playerIndex];
  v23 = (result + 1);
  if (__OFADD__(result, 1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v43 = v7;
  v24 = -v23 < 0;
  v25 = -v23 & 3;
  v26 = v23 & 3;
  if (v24)
  {
    v27 = v26;
  }

  else
  {
    v27 = -v25;
  }

  result = [v5 setPlayerIndex:v27];
  v28 = __OFSUB__(a2, 1);
  v29 = a2 - 1;
  if (v28)
  {
    goto LABEL_11;
  }

  if (v29)
  {
    sub_287C0();
    v42 = sub_D7E58();
    sub_D7B08();
    *v14 = 200;
    (*(v12 + 104))(v14, enum case for DispatchTimeInterval.milliseconds(_:), v11);
    sub_D7B18();
    (*(v12 + 8))(v14, v11);
    v30 = *(v15 + 8);
    v31 = v17;
    v32 = v44;
    v30(v31, v44);
    v33 = swift_allocObject();
    v35 = v49;
    v34 = v50;
    v33[2] = v5;
    v33[3] = v35;
    v33[4] = v29;
    v33[5] = v34;
    v33[6] = v51;
    aBlock[4] = sub_ADA10;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_284B4;
    aBlock[3] = &unk_109F58;
    v36 = _Block_copy(aBlock);
    v37 = v5;

    sub_D7AE8();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_ADA40();
    sub_DC40(&unk_118F40);
    sub_ADA98();
    v38 = v46;
    v39 = v43;
    sub_D7F78();
    v40 = v42;
    sub_D7E48();
    _Block_release(v36);

    (*(v48 + 8))(v38, v39);
    (*(v45 + 8))(v10, v47);
    return (v30)(v21, v32);
  }

  else
  {
    [v5 setPlayerIndex:v49];
    isa = sub_D7D78().super.super.isa;
    objc_setAssociatedObject(v5, &unk_11EB10, isa, 0);

    return v50(1);
  }
}

BOOL sub_AD6AC()
{
  v1 = [v0 componentForProtocol:&OBJC_PROTOCOL___GCControllerSettingsComponent];
  if (v1)
  {
    swift_unknownObjectRelease();
  }

  return v1 != 0;
}

id sub_AD700()
{
  result = [v0 componentForProtocol:&OBJC_PROTOCOL___GCControllerProductInfo];
  if (result)
  {
    result = swift_dynamicCastObjCProtocolConditional();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void sub_AD770(void (*a1)(void), char *a2)
{
  if ((sub_ABFEC() & 1) == 0)
  {
    v5 = [v2 haptics];
    if (v5)
    {

      sub_AC0E8(a1, a2);
    }

    else
    {
      isa = sub_D7D78().super.super.isa;
      objc_setAssociatedObject(v2, &unk_11EB10, isa, 0);

      v7 = [v2 playerIndex];

      sub_AD1B4(v7, 9, a1, a2);
    }
  }
}

uint64_t sub_AD850()
{
  v1 = [v0 haptics];
  if (v1)
  {

    return 1;
  }

  v3 = [v0 productCategory];
  v4 = sub_D7C18();
  v6 = v5;

  if (v4 == sub_D7C18() && v6 == v7)
  {

    return [v0 isAttachedToDevice] ^ 1;
  }

  v9 = sub_D8118();

  result = 0;
  if (v9)
  {
    return [v0 isAttachedToDevice] ^ 1;
  }

  return result;
}

uint64_t sub_AD944(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_AD96C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_AD9D0()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_ADA40()
{
  result = qword_1169F0;
  if (!qword_1169F0)
  {
    sub_D7AC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1169F0);
  }

  return result;
}

unint64_t sub_ADA98()
{
  result = qword_1169F8;
  if (!qword_1169F8)
  {
    sub_EBC0(&unk_118F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1169F8);
  }

  return result;
}

void type metadata accessor for GCControllerPlayerIndex()
{
  if (!qword_1193A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1193A0);
    }
  }
}

uint64_t sub_ADB68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_D6F68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_DC40(&qword_117928);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_16054(v2, &v14 - v9, &qword_117928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_D6C48();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_D7E28();
    v13 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_ADD68()
{
  v1 = *(v0 + *(type metadata accessor for GCSControllerPairingHelpView() + 20));
  sub_4592C(v1);
  return v1;
}

uint64_t type metadata accessor for GCSControllerPairingHelpView()
{
  result = qword_11EBB0;
  if (!qword_11EBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_ADDF8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GCSControllerPairingHelpView() + 20));
  result = sub_45984(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double sub_ADE88@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_D7078();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_DC40(&qword_119470);
  sub_ADF3C(v1, (a1 + *(v3 + 44)));
  sub_D7A18();
  sub_D6C28();
  v4 = (a1 + *(sub_DC40(&qword_119478) + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

uint64_t sub_ADF3C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v71 = a1;
  v74 = a2;
  v72 = sub_DC40(&qword_119518) - 8;
  __chkstk_darwin(v72);
  v73 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v67 = (&v64 - v4);
  v70 = sub_D7978();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v76 = &v64 - v7;
  v8 = sub_DC40(&qword_119520);
  v66 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v64 - v9;
  v11 = sub_DC40(&qword_119528);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v75 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v64 - v15;
  v88 = sub_A9308(0xD000000000000011, 0x80000000000E6880);
  v89 = v17;
  sub_16000();
  v18 = sub_D73B8();
  v20 = v19;
  v22 = v21;
  sub_D7258();
  v80 = sub_D7398();
  v79 = v23;
  v25 = v24;
  v81 = v26;

  sub_1F8F0(v18, v20, v22 & 1);

  v78 = sub_D71F8();
  sub_D6B68();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v77 = v25 & 1;
  LOBYTE(v88) = v25 & 1;
  LOBYTE(v84) = 0;
  sub_D71D8();
  sub_DC40(&qword_119530);
  sub_15FB8(&qword_119538, &qword_119530);
  sub_D6B98();
  sub_D7288();
  sub_15FB8(&qword_119540, &qword_119520);
  sub_D73F8();
  (*(v66 + 8))(v10, v8);
  v35 = sub_D71F8();
  sub_D6B68();
  v36 = &v16[*(v12 + 44)];
  v65 = v16;
  *v36 = v35;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  v41 = v76;
  sub_D7968();
  v42 = sub_D6FB8();
  v43 = v67;
  *v67 = v42;
  *(v43 + 8) = 0;
  *(v43 + 16) = 1;
  v44 = sub_DC40(&qword_119548);
  sub_B13E8(v71, (v43 + *(v44 + 44)));
  v45 = sub_D71F8();
  sub_D6B68();
  v46 = v43 + *(v72 + 44);
  *v46 = v45;
  *(v46 + 8) = v47;
  *(v46 + 16) = v48;
  *(v46 + 24) = v49;
  *(v46 + 32) = v50;
  *(v46 + 40) = 0;
  v51 = v75;
  sub_16054(v16, v75, &qword_119528);
  v52 = v69;
  v53 = *(v69 + 16);
  v54 = v68;
  v55 = v70;
  v53(v68, v41, v70);
  v56 = v73;
  sub_16054(v43, v73, &qword_119518);
  *&v84 = v80;
  *(&v84 + 1) = v79;
  LOBYTE(v85) = v77;
  *(&v85 + 1) = *v83;
  DWORD1(v85) = *&v83[3];
  *(&v85 + 1) = v81;
  LOBYTE(v86) = v78;
  *(&v86 + 1) = *v82;
  DWORD1(v86) = *&v82[3];
  *(&v86 + 1) = v28;
  *v87 = v30;
  *&v87[8] = v32;
  *&v87[16] = v34;
  v87[24] = 0;
  v57 = v84;
  v58 = v85;
  v59 = v74;
  *(v74 + 57) = *&v87[9];
  v60 = *v87;
  *(v59 + 2) = v86;
  *(v59 + 3) = v60;
  *v59 = v57;
  *(v59 + 1) = v58;
  v61 = sub_DC40(&qword_119550);
  sub_16054(v51, &v59[v61[12]], &qword_119528);
  v53(&v59[v61[16]], v54, v55);
  sub_16054(v56, &v59[v61[20]], &qword_119518);
  sub_16054(&v84, &v88, &qword_119558);
  sub_160BC(v43, &qword_119518);
  v62 = *(v52 + 8);
  v62(v76, v55);
  sub_160BC(v65, &qword_119528);
  sub_160BC(v56, &qword_119518);
  v62(v54, v55);
  sub_160BC(v75, &qword_119528);
  v88 = v80;
  v89 = v79;
  v90 = v77;
  *v91 = *v83;
  *&v91[3] = *&v83[3];
  v92 = v81;
  v93 = v78;
  *v94 = *v82;
  *&v94[3] = *&v82[3];
  v95 = v28;
  v96 = v30;
  v97 = v32;
  v98 = v34;
  v99 = 0;
  return sub_160BC(&v88, &qword_119558);
}

uint64_t sub_AE744(uint64_t a1)
{
  __chkstk_darwin(a1);
  v84 = v1;
  v83 = sub_D7978();
  v79 = *(v83 - 8);
  v2 = v79;
  __chkstk_darwin(v83);
  v96 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v100 = &v79 - v5;
  __chkstk_darwin(v6);
  v101 = &v79 - v7;
  __chkstk_darwin(v8);
  v89 = &v79 - v9;
  __chkstk_darwin(v10);
  v88 = &v79 - v11;
  __chkstk_darwin(v12);
  v86 = &v79 - v13;
  __chkstk_darwin(v14);
  v85 = &v79 - v15;
  __chkstk_darwin(v16);
  v91 = &v79 - v17;
  __chkstk_darwin(v18);
  v93 = &v79 - v19;
  __chkstk_darwin(v20);
  v22 = &v79 - v21;
  *&v219 = sub_A9308(0xD00000000000001BLL, 0x80000000000E68C0);
  *(&v219 + 1) = v23;
  sub_16000();
  v24 = sub_D73B8();
  v102 = v25;
  v103 = v24;
  v82 = v26;
  v99 = v27;
  v80 = v22;
  sub_D7968();
  v98 = sub_D6FB8();
  LOBYTE(v191[0]) = 1;
  sub_AF658(&v219);
  v119 = v220[9];
  v120 = v220[10];
  v115 = v220[5];
  v116 = v220[6];
  v117 = v220[7];
  v118 = v220[8];
  v111 = v220[1];
  v112 = v220[2];
  v113 = v220[3];
  v114 = v220[4];
  v109 = v219;
  v110 = v220[0];
  v122[10] = v220[9];
  v122[11] = v220[10];
  v122[6] = v220[5];
  v122[7] = v220[6];
  v122[8] = v220[7];
  v122[9] = v220[8];
  v122[2] = v220[1];
  v122[3] = v220[2];
  v122[4] = v220[3];
  v122[5] = v220[4];
  v121 = *&v220[11];
  v123 = *&v220[11];
  v122[0] = v219;
  v122[1] = v220[0];
  sub_16054(&v109, v205, &qword_119580);
  sub_160BC(v122, &qword_119580);
  *(&v108[9] + 7) = v118;
  *(&v108[10] + 7) = v119;
  *(&v108[11] + 7) = v120;
  *(&v108[5] + 7) = v114;
  *(&v108[6] + 7) = v115;
  *(&v108[7] + 7) = v116;
  *(&v108[8] + 7) = v117;
  *(&v108[1] + 7) = v110;
  *(&v108[2] + 7) = v111;
  *(&v108[3] + 7) = v112;
  *(&v108[4] + 7) = v113;
  *(&v108[12] + 7) = v121;
  *(v108 + 7) = v109;
  v97 = LOBYTE(v191[0]);
  sub_D7968();
  v95 = sub_D6FB8();
  LOBYTE(v191[0]) = 1;
  sub_AFDBC(&v219);
  v134 = v220[9];
  v135 = v220[10];
  v130 = v220[5];
  v131 = v220[6];
  v132 = v220[7];
  v133 = v220[8];
  v126 = v220[1];
  v127 = v220[2];
  v128 = v220[3];
  v129 = v220[4];
  v124 = v219;
  v125 = v220[0];
  v137[10] = v220[9];
  v137[11] = v220[10];
  v137[6] = v220[5];
  v137[7] = v220[6];
  v137[8] = v220[7];
  v137[9] = v220[8];
  v137[2] = v220[1];
  v137[3] = v220[2];
  v137[4] = v220[3];
  v137[5] = v220[4];
  v136 = *&v220[11];
  v138 = *&v220[11];
  v137[0] = v219;
  v137[1] = v220[0];
  sub_16054(&v124, v205, &qword_119580);
  sub_160BC(v137, &qword_119580);
  *(&v107[9] + 7) = v133;
  *(&v107[10] + 7) = v134;
  *(&v107[11] + 7) = v135;
  *(&v107[5] + 7) = v129;
  *(&v107[6] + 7) = v130;
  *(&v107[7] + 7) = v131;
  *(&v107[8] + 7) = v132;
  *(&v107[1] + 7) = v125;
  *(&v107[2] + 7) = v126;
  *(&v107[3] + 7) = v127;
  *(&v107[4] + 7) = v128;
  *(&v107[12] + 7) = v136;
  *(v107 + 7) = v124;
  v94 = LOBYTE(v191[0]);
  sub_D7968();
  v92 = sub_D6FB8();
  LOBYTE(v191[0]) = 1;
  sub_B0520(&v219);
  v148 = v220[8];
  v149 = v220[9];
  v150 = v220[10];
  v144 = v220[4];
  v145 = v220[5];
  v146 = v220[6];
  v147 = v220[7];
  v140 = v220[0];
  v141 = v220[1];
  v142 = v220[2];
  v143 = v220[3];
  v139 = v219;
  v152[9] = v220[8];
  v152[10] = v220[9];
  v152[11] = v220[10];
  v152[5] = v220[4];
  v152[6] = v220[5];
  v152[7] = v220[6];
  v152[8] = v220[7];
  v152[1] = v220[0];
  v152[2] = v220[1];
  v152[3] = v220[2];
  v152[4] = v220[3];
  v151 = *&v220[11];
  v153 = *&v220[11];
  v152[0] = v219;
  sub_16054(&v139, v205, &qword_119580);
  sub_160BC(v152, &qword_119580);
  *(&v106[9] + 7) = v148;
  *(&v106[10] + 7) = v149;
  *(&v106[11] + 7) = v150;
  *(&v106[12] + 7) = v151;
  *(&v106[5] + 7) = v144;
  *(&v106[6] + 7) = v145;
  *(&v106[7] + 7) = v146;
  *(&v106[8] + 7) = v147;
  *(&v106[1] + 7) = v140;
  *(&v106[2] + 7) = v141;
  *(&v106[3] + 7) = v142;
  *(&v106[4] + 7) = v143;
  *(v106 + 7) = v139;
  v90 = LOBYTE(v191[0]);
  v28 = v85;
  sub_D7968();
  v81 = sub_D6FB8();
  LOBYTE(v191[0]) = 1;
  sub_B0C84(&v219);
  v163 = v220[8];
  v164 = v220[9];
  v165 = v220[10];
  v159 = v220[4];
  v160 = v220[5];
  v161 = v220[6];
  v162 = v220[7];
  v155 = v220[0];
  v156 = v220[1];
  v157 = v220[2];
  v158 = v220[3];
  v154 = v219;
  v167[9] = v220[8];
  v167[10] = v220[9];
  v167[11] = v220[10];
  v167[5] = v220[4];
  v167[6] = v220[5];
  v167[7] = v220[6];
  v167[8] = v220[7];
  v167[1] = v220[0];
  v167[2] = v220[1];
  v167[3] = v220[2];
  v167[4] = v220[3];
  v166 = *&v220[11];
  v168 = *&v220[11];
  v167[0] = v219;
  sub_16054(&v154, v205, &qword_119580);
  sub_160BC(v167, &qword_119580);
  *(&v105[9] + 7) = v163;
  *(&v105[10] + 7) = v164;
  *(&v105[11] + 7) = v165;
  *(&v105[12] + 7) = v166;
  *(&v105[5] + 7) = v159;
  *(&v105[6] + 7) = v160;
  *(&v105[7] + 7) = v161;
  *(&v105[8] + 7) = v162;
  *(&v105[1] + 7) = v155;
  *(&v105[2] + 7) = v156;
  *(&v105[3] + 7) = v157;
  *(&v105[4] + 7) = v158;
  *(v105 + 7) = v154;
  v87 = LOBYTE(v191[0]);
  v29 = v86;
  sub_D7968();
  v104 = v82 & 1;
  v30 = *(v2 + 16);
  v31 = v88;
  v32 = v83;
  v30(v88, v22, v83);
  v33 = v89;
  v30(v89, v93, v32);
  v30(v101, v91, v32);
  v30(v100, v28, v32);
  v30(v96, v29, v32);
  v34 = v104;
  v82 = v104;
  v35 = v102;
  v36 = v84;
  *v84 = v103;
  v36[1] = v35;
  *(v36 + 16) = v34;
  v36[3] = v99;
  v37 = sub_DC40(&qword_119588);
  v30(v36 + v37[12], v31, v32);
  v38 = v37[16];
  *(&v170[9] + 1) = v108[9];
  *(&v170[10] + 1) = v108[10];
  *(&v170[11] + 1) = v108[11];
  v170[12] = *(&v108[11] + 15);
  *(&v170[5] + 1) = v108[5];
  *(&v170[6] + 1) = v108[6];
  *(&v170[7] + 1) = v108[7];
  *(&v170[8] + 1) = v108[8];
  *(&v170[2] + 1) = v108[2];
  v39 = (v36 + v38);
  v169 = v98;
  LOBYTE(v170[0]) = v97;
  *(&v170[3] + 1) = v108[3];
  *(&v170[4] + 1) = v108[4];
  *(&v170[1] + 1) = v108[1];
  *(v170 + 1) = v108[0];
  v40 = v170[10];
  v39[10] = v170[9];
  v39[11] = v40;
  v41 = v170[12];
  v39[12] = v170[11];
  v39[13] = v41;
  v42 = v170[6];
  v39[6] = v170[5];
  v39[7] = v42;
  v43 = v170[8];
  v39[8] = v170[7];
  v39[9] = v43;
  v44 = v170[2];
  v39[2] = v170[1];
  v39[3] = v44;
  v45 = v170[4];
  v39[4] = v170[3];
  v39[5] = v45;
  v46 = v170[0];
  *v39 = v169;
  v39[1] = v46;
  v30(v36 + v37[20], v33, v32);
  v47 = v37[24];
  *(&v172[9] + 1) = v107[9];
  *(&v172[10] + 1) = v107[10];
  *(&v172[11] + 1) = v107[11];
  v172[12] = *(&v107[11] + 15);
  *(&v172[5] + 1) = v107[5];
  *(&v172[6] + 1) = v107[6];
  *(&v172[7] + 1) = v107[7];
  *(&v172[8] + 1) = v107[8];
  *(&v172[4] + 1) = v107[4];
  *(&v172[1] + 1) = v107[1];
  *(&v172[2] + 1) = v107[2];
  v48 = (v36 + v47);
  v171 = v95;
  LOBYTE(v172[0]) = v94;
  *(&v172[3] + 1) = v107[3];
  *(v172 + 1) = v107[0];
  v49 = v172[10];
  v48[10] = v172[9];
  v48[11] = v49;
  v50 = v172[12];
  v48[12] = v172[11];
  v48[13] = v50;
  v51 = v172[6];
  v48[6] = v172[5];
  v48[7] = v51;
  v52 = v172[8];
  v48[8] = v172[7];
  v48[9] = v52;
  v53 = v172[2];
  v48[2] = v172[1];
  v48[3] = v53;
  v54 = v172[4];
  v48[4] = v172[3];
  v48[5] = v54;
  v55 = v172[0];
  *v48 = v171;
  v48[1] = v55;
  v30(v36 + v37[28], v101, v32);
  v56 = v37[32];
  *(&v174[9] + 1) = v106[9];
  *(&v174[10] + 1) = v106[10];
  *(&v174[11] + 1) = v106[11];
  v174[12] = *(&v106[11] + 15);
  *(&v174[6] + 1) = v106[6];
  *(&v174[7] + 1) = v106[7];
  *(&v174[8] + 1) = v106[8];
  *(&v174[5] + 1) = v106[5];
  *(&v174[1] + 1) = v106[1];
  *(&v174[2] + 1) = v106[2];
  *(&v174[3] + 1) = v106[3];
  v57 = (v36 + v56);
  v173 = v92;
  LOBYTE(v174[0]) = v90;
  *(&v174[4] + 1) = v106[4];
  *(v174 + 1) = v106[0];
  v58 = v174[10];
  v57[10] = v174[9];
  v57[11] = v58;
  v59 = v174[12];
  v57[12] = v174[11];
  v57[13] = v59;
  v60 = v174[6];
  v57[6] = v174[5];
  v57[7] = v60;
  v61 = v174[8];
  v57[8] = v174[7];
  v57[9] = v61;
  v62 = v174[2];
  v57[2] = v174[1];
  v57[3] = v62;
  v63 = v174[4];
  v57[4] = v174[3];
  v57[5] = v63;
  v64 = v174[0];
  *v57 = v173;
  v57[1] = v64;
  v30(v36 + v37[36], v100, v32);
  v65 = v37[40];
  *(&v176[9] + 1) = v105[9];
  *(&v176[10] + 1) = v105[10];
  *(&v176[11] + 1) = v105[11];
  v176[12] = *(&v105[11] + 15);
  *(&v176[8] + 1) = v105[8];
  *(&v176[5] + 1) = v105[5];
  *(&v176[6] + 1) = v105[6];
  *(&v176[7] + 1) = v105[7];
  *(&v176[1] + 1) = v105[1];
  *(&v176[2] + 1) = v105[2];
  *(&v176[3] + 1) = v105[3];
  v66 = (v36 + v65);
  v67 = v81;
  v175 = v81;
  LOBYTE(v176[0]) = v87;
  *(&v176[4] + 1) = v105[4];
  *(v176 + 1) = v105[0];
  v68 = v176[10];
  v66[10] = v176[9];
  v66[11] = v68;
  v69 = v176[12];
  v66[12] = v176[11];
  v66[13] = v69;
  v70 = v176[6];
  v66[6] = v176[5];
  v66[7] = v70;
  v71 = v176[8];
  v66[8] = v176[7];
  v66[9] = v71;
  v72 = v176[2];
  v66[2] = v176[1];
  v66[3] = v72;
  v73 = v176[4];
  v66[4] = v176[3];
  v66[5] = v73;
  v74 = v176[0];
  *v66 = v175;
  v66[1] = v74;
  v75 = v36 + v37[44];
  v76 = v96;
  v30(v75, v96, v32);
  sub_1F900(v103, v102, v82);

  sub_16054(&v169, &v219, &qword_119590);
  sub_16054(&v171, &v219, &qword_119590);
  sub_16054(&v173, &v219, &qword_119590);
  sub_16054(&v175, &v219, &qword_119590);
  v77 = *(v79 + 8);
  v77(v86, v32);
  v77(v85, v32);
  v77(v91, v32);
  v77(v93, v32);
  v77(v80, v32);
  v77(v76, v32);
  v188 = v105[9];
  v189 = v105[10];
  *v190 = v105[11];
  *&v190[15] = *(&v105[11] + 15);
  v184 = v105[5];
  v185 = v105[6];
  v186 = v105[7];
  v187 = v105[8];
  v180 = v105[1];
  v181 = v105[2];
  v182 = v105[3];
  v183 = v105[4];
  v177[0] = v67;
  v177[1] = 0;
  v178 = v87;
  v179 = v105[0];
  sub_160BC(v177, &qword_119590);
  v77(v100, v32);
  v202 = v106[9];
  v203 = v106[10];
  *v204 = v106[11];
  *&v204[15] = *(&v106[11] + 15);
  v198 = v106[5];
  v199 = v106[6];
  v200 = v106[7];
  v201 = v106[8];
  v194 = v106[1];
  v195 = v106[2];
  v196 = v106[3];
  v197 = v106[4];
  v191[0] = v92;
  v191[1] = 0;
  v192 = v90;
  v193 = v106[0];
  sub_160BC(v191, &qword_119590);
  v77(v101, v32);
  v216 = v107[9];
  v217 = v107[10];
  *v218 = v107[11];
  *&v218[15] = *(&v107[11] + 15);
  v212 = v107[5];
  v213 = v107[6];
  v214 = v107[7];
  v215 = v107[8];
  v208 = v107[1];
  v209 = v107[2];
  v210 = v107[3];
  v211 = v107[4];
  v205[0] = v95;
  v205[1] = 0;
  v206 = v94;
  v207 = v107[0];
  sub_160BC(v205, &qword_119590);
  v77(v89, v32);
  *(&v220[9] + 1) = v108[9];
  *(&v220[10] + 1) = v108[10];
  *(&v220[11] + 1) = v108[11];
  v220[12] = *(&v108[11] + 15);
  *(&v220[5] + 1) = v108[5];
  *(&v220[6] + 1) = v108[6];
  *(&v220[7] + 1) = v108[7];
  *(&v220[8] + 1) = v108[8];
  *(&v220[1] + 1) = v108[1];
  *(&v220[2] + 1) = v108[2];
  *(&v220[3] + 1) = v108[3];
  *(&v220[4] + 1) = v108[4];
  v219 = v98;
  LOBYTE(v220[0]) = v97;
  *(v220 + 1) = v108[0];
  sub_160BC(&v219, &qword_119590);
  v77(v88, v32);
  sub_1F8F0(v103, v102, v104);
}

uint64_t sub_AF658@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_D7708();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_D7718();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D76F8();
  (*(v6 + 104))(v8, enum case for Image.Interpolation.high(_:), v5);
  sub_D7728();

  (*(v6 + 8))(v8, v5);
  (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v1);
  v45 = sub_D7758();

  (*(v2 + 8))(v4, v1);
  sub_D7A18();
  sub_D6C28();
  LOBYTE(v88) = 1;
  *&v60[3] = *&v60[27];
  *&v60[11] = *&v60[35];
  *&v60[19] = *&v60[43];
  v44 = sub_D7078();
  v59 = 1;
  v43 = sub_D6FB8();
  v88 = sub_A9308(0xD000000000000015, 0x80000000000E69C0);
  v89 = v9;
  sub_16000();
  v10 = sub_D73B8();
  v12 = v11;
  LOBYTE(v5) = v13;
  sub_D7298();
  v14 = sub_D7368();
  v16 = v15;
  LOBYTE(v2) = v17;
  v19 = v18;
  sub_1F8F0(v10, v12, v5 & 1);

  LOBYTE(v2) = v2 & 1;
  LOBYTE(v47[0]) = v2;
  LOBYTE(v68[0]) = 1;
  sub_1F900(v14, v16, v2);

  sub_1F8F0(v14, v16, v2);

  LOBYTE(v86[0]) = 1;
  LOBYTE(v2) = v68[0];
  LOBYTE(v5) = v47[0];
  v88 = sub_A9308(0xD000000000000016, 0x80000000000E69A0);
  v89 = v20;
  v21 = sub_D73B8();
  v23 = v22;
  v25 = v24;
  LOBYTE(v88) = v5;
  LOBYTE(v4) = v26 & 1;
  LOBYTE(v61) = v26 & 1;
  sub_1F900(v14, v16, v5 & 1);

  sub_1F900(v21, v23, v4);

  sub_1F8F0(v21, v23, v4);

  sub_1F8F0(v14, v16, v88);

  *(&v62 + 1) = v86[0];
  DWORD1(v62) = *(v86 + 3);
  *(&v63 + 9) = v47[0];
  HIDWORD(v63) = *(v47 + 3);
  DWORD1(v65) = *(v84 + 3);
  *(&v65 + 1) = v84[0];
  HIDWORD(v66) = *&v57[3];
  *(&v66 + 9) = *v57;
  *&v70[3] = *(v86 + 3);
  v61 = v43;
  LOBYTE(v62) = 1;
  *(&v62 + 1) = v14;
  *&v63 = v16;
  BYTE8(v63) = v5;
  v64 = v19;
  LOBYTE(v65) = v2;
  *(&v65 + 1) = v21;
  *&v66 = v23;
  BYTE8(v66) = v4;
  v67 = v25;
  v68[0] = v43;
  v68[1] = 0;
  v69 = 1;
  *v70 = v86[0];
  v71 = v14;
  v72 = v16;
  v73 = v5;
  *&v74[3] = *(v47 + 3);
  *v74 = v47[0];
  v75 = v19;
  v76 = 0;
  v77 = v2;
  *&v78[3] = *(v84 + 3);
  *v78 = v84[0];
  v79 = v21;
  v80 = v23;
  v81 = v4;
  *&v82[3] = *&v57[3];
  *v82 = *v57;
  v83 = v25;
  sub_16054(&v61, &v88, &qword_119598);
  sub_160BC(v68, &qword_119598);
  *(&v58[3] + 7) = v64;
  *(&v58[4] + 7) = v65;
  *(&v58[5] + 7) = v66;
  *(&v58[6] + 7) = v67;
  *(v58 + 7) = v61;
  *(&v58[1] + 7) = v62;
  *(&v58[2] + 7) = v63;
  v27 = v59;
  v28 = v45;
  v84[0] = v45;
  v84[1] = 0;
  *v85 = 1;
  *&v85[48] = *&v60[23];
  *&v85[34] = *&v60[16];
  *&v85[18] = *&v60[8];
  *&v85[2] = *v60;
  *&v56[0] = *&v85[48];
  v54 = *&v85[16];
  v55 = *&v85[32];
  v52 = v45;
  v53 = *v85;
  v29 = v44;
  v86[0] = v44;
  v86[1] = 0;
  LOBYTE(v87[0]) = v59;
  v30 = v58[1];
  *(v87 + 1) = v58[0];
  *(&v87[2] + 1) = v58[2];
  v31 = v58[0];
  *(&v87[1] + 1) = v58[1];
  v87[6] = *(&v58[5] + 15);
  v32 = v58[4];
  *(&v87[5] + 1) = v58[5];
  v33 = v58[3];
  *(&v87[4] + 1) = v58[4];
  v34 = v58[2];
  *(&v87[3] + 1) = v58[3];
  *(&v56[3] + 8) = v87[2];
  *(&v56[2] + 8) = v87[1];
  *(&v56[1] + 8) = v87[0];
  *(v56 + 8) = v44;
  *(&v56[7] + 8) = v87[6];
  *(&v56[6] + 8) = v87[5];
  *(&v56[5] + 8) = v87[4];
  *(&v56[4] + 8) = v87[3];
  v35 = *&v85[32];
  v36 = v46;
  *(v46 + 32) = *&v85[16];
  *(v36 + 48) = v35;
  v37 = v53;
  *v36 = v52;
  *(v36 + 16) = v37;
  v38 = v56[3];
  *(v36 + 96) = v56[2];
  *(v36 + 112) = v38;
  v39 = v56[1];
  *(v36 + 64) = v56[0];
  *(v36 + 80) = v39;
  v40 = v56[7];
  *(v36 + 160) = v56[6];
  *(v36 + 176) = v40;
  v41 = v56[5];
  *(v36 + 128) = v56[4];
  *(v36 + 144) = v41;
  v94 = v33;
  *(v36 + 192) = *&v56[8];
  v88 = v29;
  v89 = 0;
  v90 = v27;
  v95 = v32;
  v96[0] = v58[5];
  *(v96 + 15) = *(&v58[5] + 15);
  v91 = v31;
  v92 = v30;
  v93 = v34;
  sub_16054(v84, v47, &qword_1195A0);
  sub_16054(v86, v47, &qword_1195A8);
  sub_160BC(&v88, &qword_1195A8);
  v47[0] = v28;
  v47[1] = 0;
  v48 = 1;
  v49 = *v60;
  v50 = *&v60[8];
  v51[0] = *&v60[16];
  *(v51 + 14) = *&v60[23];
  return sub_160BC(v47, &qword_1195A0);
}

uint64_t sub_AFDBC@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_D7708();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_D7718();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D76F8();
  (*(v6 + 104))(v8, enum case for Image.Interpolation.high(_:), v5);
  sub_D7728();

  (*(v6 + 8))(v8, v5);
  (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v1);
  v45 = sub_D7758();

  (*(v2 + 8))(v4, v1);
  sub_D7A18();
  sub_D6C28();
  LOBYTE(v88) = 1;
  *&v60[3] = *&v60[27];
  *&v60[11] = *&v60[35];
  *&v60[19] = *&v60[43];
  v44 = sub_D7078();
  v59 = 1;
  v43 = sub_D6FB8();
  v88 = sub_A9308(0xD000000000000017, 0x80000000000E6980);
  v89 = v9;
  sub_16000();
  v10 = sub_D73B8();
  v12 = v11;
  LOBYTE(v5) = v13;
  sub_D7298();
  v14 = sub_D7368();
  v16 = v15;
  LOBYTE(v2) = v17;
  v19 = v18;
  sub_1F8F0(v10, v12, v5 & 1);

  LOBYTE(v2) = v2 & 1;
  LOBYTE(v47[0]) = v2;
  LOBYTE(v68[0]) = 1;
  sub_1F900(v14, v16, v2);

  sub_1F8F0(v14, v16, v2);

  LOBYTE(v86[0]) = 1;
  LOBYTE(v2) = v68[0];
  LOBYTE(v5) = v47[0];
  v88 = sub_A9308(0xD000000000000018, 0x80000000000E6960);
  v89 = v20;
  v21 = sub_D73B8();
  v23 = v22;
  v25 = v24;
  LOBYTE(v88) = v5;
  LOBYTE(v4) = v26 & 1;
  LOBYTE(v61) = v26 & 1;
  sub_1F900(v14, v16, v5 & 1);

  sub_1F900(v21, v23, v4);

  sub_1F8F0(v21, v23, v4);

  sub_1F8F0(v14, v16, v88);

  *(&v62 + 1) = v86[0];
  DWORD1(v62) = *(v86 + 3);
  *(&v63 + 9) = v47[0];
  HIDWORD(v63) = *(v47 + 3);
  DWORD1(v65) = *(v84 + 3);
  *(&v65 + 1) = v84[0];
  HIDWORD(v66) = *&v57[3];
  *(&v66 + 9) = *v57;
  *&v70[3] = *(v86 + 3);
  v61 = v43;
  LOBYTE(v62) = 1;
  *(&v62 + 1) = v14;
  *&v63 = v16;
  BYTE8(v63) = v5;
  v64 = v19;
  LOBYTE(v65) = v2;
  *(&v65 + 1) = v21;
  *&v66 = v23;
  BYTE8(v66) = v4;
  v67 = v25;
  v68[0] = v43;
  v68[1] = 0;
  v69 = 1;
  *v70 = v86[0];
  v71 = v14;
  v72 = v16;
  v73 = v5;
  *&v74[3] = *(v47 + 3);
  *v74 = v47[0];
  v75 = v19;
  v76 = 0;
  v77 = v2;
  *&v78[3] = *(v84 + 3);
  *v78 = v84[0];
  v79 = v21;
  v80 = v23;
  v81 = v4;
  *&v82[3] = *&v57[3];
  *v82 = *v57;
  v83 = v25;
  sub_16054(&v61, &v88, &qword_119598);
  sub_160BC(v68, &qword_119598);
  *(&v58[3] + 7) = v64;
  *(&v58[4] + 7) = v65;
  *(&v58[5] + 7) = v66;
  *(&v58[6] + 7) = v67;
  *(v58 + 7) = v61;
  *(&v58[1] + 7) = v62;
  *(&v58[2] + 7) = v63;
  v27 = v59;
  v28 = v45;
  v84[0] = v45;
  v84[1] = 0;
  *v85 = 1;
  *&v85[48] = *&v60[23];
  *&v85[34] = *&v60[16];
  *&v85[18] = *&v60[8];
  *&v85[2] = *v60;
  *&v56[0] = *&v85[48];
  v54 = *&v85[16];
  v55 = *&v85[32];
  v52 = v45;
  v53 = *v85;
  v29 = v44;
  v86[0] = v44;
  v86[1] = 0;
  LOBYTE(v87[0]) = v59;
  v30 = v58[1];
  *(v87 + 1) = v58[0];
  *(&v87[2] + 1) = v58[2];
  v31 = v58[0];
  *(&v87[1] + 1) = v58[1];
  v87[6] = *(&v58[5] + 15);
  v32 = v58[4];
  *(&v87[5] + 1) = v58[5];
  v33 = v58[3];
  *(&v87[4] + 1) = v58[4];
  v34 = v58[2];
  *(&v87[3] + 1) = v58[3];
  *(&v56[3] + 8) = v87[2];
  *(&v56[2] + 8) = v87[1];
  *(&v56[1] + 8) = v87[0];
  *(v56 + 8) = v44;
  *(&v56[7] + 8) = v87[6];
  *(&v56[6] + 8) = v87[5];
  *(&v56[5] + 8) = v87[4];
  *(&v56[4] + 8) = v87[3];
  v35 = *&v85[32];
  v36 = v46;
  *(v46 + 32) = *&v85[16];
  *(v36 + 48) = v35;
  v37 = v53;
  *v36 = v52;
  *(v36 + 16) = v37;
  v38 = v56[3];
  *(v36 + 96) = v56[2];
  *(v36 + 112) = v38;
  v39 = v56[1];
  *(v36 + 64) = v56[0];
  *(v36 + 80) = v39;
  v40 = v56[7];
  *(v36 + 160) = v56[6];
  *(v36 + 176) = v40;
  v41 = v56[5];
  *(v36 + 128) = v56[4];
  *(v36 + 144) = v41;
  v94 = v33;
  *(v36 + 192) = *&v56[8];
  v88 = v29;
  v89 = 0;
  v90 = v27;
  v95 = v32;
  v96[0] = v58[5];
  *(v96 + 15) = *(&v58[5] + 15);
  v91 = v31;
  v92 = v30;
  v93 = v34;
  sub_16054(v84, v47, &qword_1195A0);
  sub_16054(v86, v47, &qword_1195A8);
  sub_160BC(&v88, &qword_1195A8);
  v47[0] = v28;
  v47[1] = 0;
  v48 = 1;
  v49 = *v60;
  v50 = *&v60[8];
  v51[0] = *&v60[16];
  *(v51 + 14) = *&v60[23];
  return sub_160BC(v47, &qword_1195A0);
}

uint64_t sub_B0520@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_D7708();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_D7718();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D76F8();
  (*(v6 + 104))(v8, enum case for Image.Interpolation.high(_:), v5);
  sub_D7728();

  (*(v6 + 8))(v8, v5);
  (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v1);
  v45 = sub_D7758();

  (*(v2 + 8))(v4, v1);
  sub_D7A18();
  sub_D6C28();
  LOBYTE(v88) = 1;
  *&v60[3] = *&v60[27];
  *&v60[11] = *&v60[35];
  *&v60[19] = *&v60[43];
  v44 = sub_D7078();
  v59 = 1;
  v43 = sub_D6FB8();
  v88 = sub_A9308(0xD00000000000001BLL, 0x80000000000E6940);
  v89 = v9;
  sub_16000();
  v10 = sub_D73B8();
  v12 = v11;
  LOBYTE(v5) = v13;
  sub_D7298();
  v14 = sub_D7368();
  v16 = v15;
  LOBYTE(v2) = v17;
  v19 = v18;
  sub_1F8F0(v10, v12, v5 & 1);

  LOBYTE(v2) = v2 & 1;
  LOBYTE(v47[0]) = v2;
  LOBYTE(v68[0]) = 1;
  sub_1F900(v14, v16, v2);

  sub_1F8F0(v14, v16, v2);

  LOBYTE(v86[0]) = 1;
  LOBYTE(v2) = v68[0];
  LOBYTE(v5) = v47[0];
  v88 = sub_A9308(0xD00000000000001CLL, 0x80000000000E6920);
  v89 = v20;
  v21 = sub_D73B8();
  v23 = v22;
  v25 = v24;
  LOBYTE(v88) = v5;
  LOBYTE(v4) = v26 & 1;
  LOBYTE(v61) = v26 & 1;
  sub_1F900(v14, v16, v5 & 1);

  sub_1F900(v21, v23, v4);

  sub_1F8F0(v21, v23, v4);

  sub_1F8F0(v14, v16, v88);

  *(&v62 + 1) = v86[0];
  DWORD1(v62) = *(v86 + 3);
  *(&v63 + 9) = v47[0];
  HIDWORD(v63) = *(v47 + 3);
  DWORD1(v65) = *(v84 + 3);
  *(&v65 + 1) = v84[0];
  HIDWORD(v66) = *&v57[3];
  *(&v66 + 9) = *v57;
  *&v70[3] = *(v86 + 3);
  v61 = v43;
  LOBYTE(v62) = 1;
  *(&v62 + 1) = v14;
  *&v63 = v16;
  BYTE8(v63) = v5;
  v64 = v19;
  LOBYTE(v65) = v2;
  *(&v65 + 1) = v21;
  *&v66 = v23;
  BYTE8(v66) = v4;
  v67 = v25;
  v68[0] = v43;
  v68[1] = 0;
  v69 = 1;
  *v70 = v86[0];
  v71 = v14;
  v72 = v16;
  v73 = v5;
  *&v74[3] = *(v47 + 3);
  *v74 = v47[0];
  v75 = v19;
  v76 = 0;
  v77 = v2;
  *&v78[3] = *(v84 + 3);
  *v78 = v84[0];
  v79 = v21;
  v80 = v23;
  v81 = v4;
  *&v82[3] = *&v57[3];
  *v82 = *v57;
  v83 = v25;
  sub_16054(&v61, &v88, &qword_119598);
  sub_160BC(v68, &qword_119598);
  *(&v58[3] + 7) = v64;
  *(&v58[4] + 7) = v65;
  *(&v58[5] + 7) = v66;
  *(&v58[6] + 7) = v67;
  *(v58 + 7) = v61;
  *(&v58[1] + 7) = v62;
  *(&v58[2] + 7) = v63;
  v27 = v59;
  v28 = v45;
  v84[0] = v45;
  v84[1] = 0;
  *v85 = 1;
  *&v85[48] = *&v60[23];
  *&v85[34] = *&v60[16];
  *&v85[18] = *&v60[8];
  *&v85[2] = *v60;
  *&v56[0] = *&v85[48];
  v54 = *&v85[16];
  v55 = *&v85[32];
  v52 = v45;
  v53 = *v85;
  v29 = v44;
  v86[0] = v44;
  v86[1] = 0;
  LOBYTE(v87[0]) = v59;
  v30 = v58[1];
  *(v87 + 1) = v58[0];
  *(&v87[2] + 1) = v58[2];
  v31 = v58[0];
  *(&v87[1] + 1) = v58[1];
  v87[6] = *(&v58[5] + 15);
  v32 = v58[4];
  *(&v87[5] + 1) = v58[5];
  v33 = v58[3];
  *(&v87[4] + 1) = v58[4];
  v34 = v58[2];
  *(&v87[3] + 1) = v58[3];
  *(&v56[3] + 8) = v87[2];
  *(&v56[2] + 8) = v87[1];
  *(&v56[1] + 8) = v87[0];
  *(v56 + 8) = v44;
  *(&v56[7] + 8) = v87[6];
  *(&v56[6] + 8) = v87[5];
  *(&v56[5] + 8) = v87[4];
  *(&v56[4] + 8) = v87[3];
  v35 = *&v85[32];
  v36 = v46;
  *(v46 + 32) = *&v85[16];
  *(v36 + 48) = v35;
  v37 = v53;
  *v36 = v52;
  *(v36 + 16) = v37;
  v38 = v56[3];
  *(v36 + 96) = v56[2];
  *(v36 + 112) = v38;
  v39 = v56[1];
  *(v36 + 64) = v56[0];
  *(v36 + 80) = v39;
  v40 = v56[7];
  *(v36 + 160) = v56[6];
  *(v36 + 176) = v40;
  v41 = v56[5];
  *(v36 + 128) = v56[4];
  *(v36 + 144) = v41;
  v94 = v33;
  *(v36 + 192) = *&v56[8];
  v88 = v29;
  v89 = 0;
  v90 = v27;
  v95 = v32;
  v96[0] = v58[5];
  *(v96 + 15) = *(&v58[5] + 15);
  v91 = v31;
  v92 = v30;
  v93 = v34;
  sub_16054(v84, v47, &qword_1195A0);
  sub_16054(v86, v47, &qword_1195A8);
  sub_160BC(&v88, &qword_1195A8);
  v47[0] = v28;
  v47[1] = 0;
  v48 = 1;
  v49 = *v60;
  v50 = *&v60[8];
  v51[0] = *&v60[16];
  *(v51 + 14) = *&v60[23];
  return sub_160BC(v47, &qword_1195A0);
}

uint64_t sub_B0C84@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_D7708();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_D7718();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D76F8();
  (*(v6 + 104))(v8, enum case for Image.Interpolation.high(_:), v5);
  sub_D7728();

  (*(v6 + 8))(v8, v5);
  (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v1);
  v45 = sub_D7758();

  (*(v2 + 8))(v4, v1);
  sub_D7A18();
  sub_D6C28();
  LOBYTE(v88) = 1;
  *&v60[3] = *&v60[27];
  *&v60[11] = *&v60[35];
  *&v60[19] = *&v60[43];
  v44 = sub_D7078();
  v59 = 1;
  v43 = sub_D6FB8();
  v88 = sub_A9308(0xD000000000000016, 0x80000000000E6900);
  v89 = v9;
  sub_16000();
  v10 = sub_D73B8();
  v12 = v11;
  LOBYTE(v5) = v13;
  sub_D7298();
  v14 = sub_D7368();
  v16 = v15;
  LOBYTE(v2) = v17;
  v19 = v18;
  sub_1F8F0(v10, v12, v5 & 1);

  LOBYTE(v2) = v2 & 1;
  LOBYTE(v47[0]) = v2;
  LOBYTE(v68[0]) = 1;
  sub_1F900(v14, v16, v2);

  sub_1F8F0(v14, v16, v2);

  LOBYTE(v86[0]) = 1;
  LOBYTE(v2) = v68[0];
  LOBYTE(v5) = v47[0];
  v88 = sub_A9308(0xD000000000000017, 0x80000000000E68E0);
  v89 = v20;
  v21 = sub_D73B8();
  v23 = v22;
  v25 = v24;
  LOBYTE(v88) = v5;
  LOBYTE(v4) = v26 & 1;
  LOBYTE(v61) = v26 & 1;
  sub_1F900(v14, v16, v5 & 1);

  sub_1F900(v21, v23, v4);

  sub_1F8F0(v21, v23, v4);

  sub_1F8F0(v14, v16, v88);

  *(&v62 + 1) = v86[0];
  DWORD1(v62) = *(v86 + 3);
  *(&v63 + 9) = v47[0];
  HIDWORD(v63) = *(v47 + 3);
  DWORD1(v65) = *(v84 + 3);
  *(&v65 + 1) = v84[0];
  HIDWORD(v66) = *&v57[3];
  *(&v66 + 9) = *v57;
  *&v70[3] = *(v86 + 3);
  v61 = v43;
  LOBYTE(v62) = 1;
  *(&v62 + 1) = v14;
  *&v63 = v16;
  BYTE8(v63) = v5;
  v64 = v19;
  LOBYTE(v65) = v2;
  *(&v65 + 1) = v21;
  *&v66 = v23;
  BYTE8(v66) = v4;
  v67 = v25;
  v68[0] = v43;
  v68[1] = 0;
  v69 = 1;
  *v70 = v86[0];
  v71 = v14;
  v72 = v16;
  v73 = v5;
  *&v74[3] = *(v47 + 3);
  *v74 = v47[0];
  v75 = v19;
  v76 = 0;
  v77 = v2;
  *&v78[3] = *(v84 + 3);
  *v78 = v84[0];
  v79 = v21;
  v80 = v23;
  v81 = v4;
  *&v82[3] = *&v57[3];
  *v82 = *v57;
  v83 = v25;
  sub_16054(&v61, &v88, &qword_119598);
  sub_160BC(v68, &qword_119598);
  *(&v58[3] + 7) = v64;
  *(&v58[4] + 7) = v65;
  *(&v58[5] + 7) = v66;
  *(&v58[6] + 7) = v67;
  *(v58 + 7) = v61;
  *(&v58[1] + 7) = v62;
  *(&v58[2] + 7) = v63;
  v27 = v59;
  v28 = v45;
  v84[0] = v45;
  v84[1] = 0;
  *v85 = 1;
  *&v85[48] = *&v60[23];
  *&v85[34] = *&v60[16];
  *&v85[18] = *&v60[8];
  *&v85[2] = *v60;
  *&v56[0] = *&v85[48];
  v54 = *&v85[16];
  v55 = *&v85[32];
  v52 = v45;
  v53 = *v85;
  v29 = v44;
  v86[0] = v44;
  v86[1] = 0;
  LOBYTE(v87[0]) = v59;
  v30 = v58[1];
  *(v87 + 1) = v58[0];
  *(&v87[2] + 1) = v58[2];
  v31 = v58[0];
  *(&v87[1] + 1) = v58[1];
  v87[6] = *(&v58[5] + 15);
  v32 = v58[4];
  *(&v87[5] + 1) = v58[5];
  v33 = v58[3];
  *(&v87[4] + 1) = v58[4];
  v34 = v58[2];
  *(&v87[3] + 1) = v58[3];
  *(&v56[3] + 8) = v87[2];
  *(&v56[2] + 8) = v87[1];
  *(&v56[1] + 8) = v87[0];
  *(v56 + 8) = v44;
  *(&v56[7] + 8) = v87[6];
  *(&v56[6] + 8) = v87[5];
  *(&v56[5] + 8) = v87[4];
  *(&v56[4] + 8) = v87[3];
  v35 = *&v85[32];
  v36 = v46;
  *(v46 + 32) = *&v85[16];
  *(v36 + 48) = v35;
  v37 = v53;
  *v36 = v52;
  *(v36 + 16) = v37;
  v38 = v56[3];
  *(v36 + 96) = v56[2];
  *(v36 + 112) = v38;
  v39 = v56[1];
  *(v36 + 64) = v56[0];
  *(v36 + 80) = v39;
  v40 = v56[7];
  *(v36 + 160) = v56[6];
  *(v36 + 176) = v40;
  v41 = v56[5];
  *(v36 + 128) = v56[4];
  *(v36 + 144) = v41;
  v94 = v33;
  *(v36 + 192) = *&v56[8];
  v88 = v29;
  v89 = 0;
  v90 = v27;
  v95 = v32;
  v96[0] = v58[5];
  *(v96 + 15) = *(&v58[5] + 15);
  v91 = v31;
  v92 = v30;
  v93 = v34;
  sub_16054(v84, v47, &qword_1195A0);
  sub_16054(v86, v47, &qword_1195A8);
  sub_160BC(&v88, &qword_1195A8);
  v47[0] = v28;
  v47[1] = 0;
  v48 = 1;
  v49 = *v60;
  v50 = *&v60[8];
  v51[0] = *&v60[16];
  *(v51 + 14) = *&v60[23];
  return sub_160BC(v47, &qword_1195A0);
}

uint64_t sub_B13E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v62 = a1;
  v74 = a2;
  v73 = sub_D6D48();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_DC40(&qword_119560);
  v77 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v76 = &v55 - v6;
  v7 = sub_D7148();
  v8 = *(v7 - 8);
  v67 = v7;
  v68 = v8;
  __chkstk_darwin(v7);
  v64 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GCSControllerPairingHelpView();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v61 = v12;
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_DC40(&qword_116818);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v55 - v16;
  v60 = sub_DC40(&qword_119568);
  v63 = *(v60 - 8);
  __chkstk_darwin(v60);
  v19 = &v55 - v18;
  v66 = sub_DC40(&qword_119570);
  v75 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v55 - v22;
  v78 = sub_A9308(0xD000000000000015, 0x80000000000E68A0);
  v79 = v24;
  v57 = v13;
  sub_B23CC(a1, v13);
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v26 = swift_allocObject();
  sub_B2434(v13, v26 + v25);
  sub_16000();
  v27 = v17;
  v56 = v17;
  sub_D7868();
  sub_D7288();
  v28 = sub_15FB8(&qword_116830, &qword_116818);
  v29 = v19;
  v30 = v14;
  sub_D73F8();
  v31 = *(v15 + 8);
  v58 = v15 + 8;
  v59 = v31;
  v31(v27, v14);
  v32 = v64;
  sub_D7138();
  v78 = v14;
  v79 = v28;
  swift_getOpaqueTypeConformance2();
  sub_B2538();
  v33 = v23;
  v55 = v23;
  v34 = v60;
  v35 = v67;
  sub_D7428();
  (*(v68 + 8))(v32, v35);
  (*(v63 + 8))(v29, v34);
  v36 = v57;
  sub_B23CC(v62, v57);
  v37 = swift_allocObject();
  sub_B2434(v36, v37 + v25);
  v38 = v56;
  sub_D7848();
  v39 = v69;
  sub_D6D38();
  v40 = v76;
  sub_D74A8();
  (*(v71 + 8))(v39, v73);
  v59(v38, v30);
  v41 = *(v75 + 16);
  v42 = v65;
  v43 = v33;
  v44 = v66;
  v41(v65, v43, v66);
  v45 = *(v77 + 16);
  v46 = v70;
  v47 = v72;
  v45(v70, v40, v72);
  v48 = v74;
  *v74 = 0;
  *(v48 + 8) = 1;
  v49 = v48;
  v50 = sub_DC40(&qword_119578);
  v41(&v49[v50[12]], v42, v44);
  v51 = &v49[v50[16]];
  *v51 = 0;
  v51[8] = 1;
  v45(&v49[v50[20]], v46, v47);
  v52 = *(v77 + 8);
  v52(v76, v47);
  v53 = *(v75 + 8);
  v53(v55, v44);
  v52(v46, v47);
  return (v53)(v42, v44);
}

uint64_t sub_B1BE4(uint64_t a1)
{
  v15 = sub_D6F68();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_DC40(&qword_117928);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = sub_D6C48();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16054(a1, v7, &qword_117928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_D7E28();
    v12 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_D6C38();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_B1E60@<X0>(uint64_t a1@<X8>)
{
  sub_A9308(1162760004, 0xE400000000000000);
  sub_16000();
  result = sub_D73B8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_B1EC4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_DC40(&qword_117928);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for GCSControllerPairingHelpView();
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t sub_B1F30@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_DC40(&qword_117928);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_B1F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_B1FDC(a1, a4);
  result = type metadata accessor for GCSControllerPairingHelpView();
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_B1FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_1179B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B207C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_DC40(&qword_1179B0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_B2164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_DC40(&qword_1179B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_B2228()
{
  sub_4D51C();
  if (v0 <= 0x3F)
  {
    sub_B22AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_B22AC()
{
  if (!qword_117780)
  {
    sub_EBC0(&unk_117788);
    v0 = sub_D7EE8();
    if (!v1)
    {
      atomic_store(v0, &qword_117780);
    }
  }
}

unint64_t sub_B2314()
{
  result = qword_119500;
  if (!qword_119500)
  {
    sub_EBC0(&qword_119478);
    sub_15FB8(&qword_119508, &qword_119510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119500);
  }

  return result;
}

uint64_t sub_B23CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GCSControllerPairingHelpView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B2434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GCSControllerPairingHelpView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B2498()
{
  v1 = type metadata accessor for GCSControllerPairingHelpView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + *(result + 28) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (v4)
  {

    v4(v5);

    return sub_45984(v4);
  }

  return result;
}

unint64_t sub_B2538()
{
  result = qword_116548;
  if (!qword_116548)
  {
    sub_D7148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116548);
  }

  return result;
}

uint64_t sub_B2590()
{
  v1 = type metadata accessor for GCSControllerPairingHelpView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_DC40(&qword_117928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_D6C48();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  if (*(v0 + v3 + *(v1 + 20)))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_B26BC()
{
  v1 = *(type metadata accessor for GCSControllerPairingHelpView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_B1BE4(v2);
}

BOOL sub_B2724(unint64_t a1, void *a2)
{
  v2 = sub_B33DC(a1, a2);
  if (v2)
  {
  }

  return v2 != 0;
}

uint64_t sub_B2760(void *a1)
{
  v3 = (*(*v1 + 536))();
  v4 = sub_B33DC(v3, a1);

  if (v4)
  {
    return v4;
  }

  v7 = (*(*v1 + 728))(v5);
  v8 = sub_B33DC(v7, a1);

  return v8;
}

uint64_t sub_B2820(void *a1)
{
  v3 = (*(*v1 + 536))();
  v4 = sub_B33DC(v3, a1);

  if (v4)
  {
    return v4;
  }

  v6 = (*(*v1 + 728))(v5);
  v4 = sub_B33DC(v6, a1);

  if (v4)
  {
    return v4;
  }

  type metadata accessor for Device();
  return sub_7FA40(a1);
}

unint64_t sub_B28F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
LABEL_17:
    v12 = a2 & 0xFFFFFFFFFFFFFF8;
    v4 = sub_D8078();
  }

  else
  {
    v12 = a2 & 0xFFFFFFFFFFFFFF8;
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_D7FF8();
    }

    else
    {
      if (v5 >= *(v12 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    sub_B3C9C();
    v7 = (*(*v6 + 264))();
    v8 = (*(*a1 + 264))();
    v9 = sub_D7EA8();

    if (v9)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_B2A8C()
{
  v1 = v0;
  v2 = (*(*v0 + 536))();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_31;
  }

  v4 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_D7FF8();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          v4 = sub_D8078();
          goto LABEL_3;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_14;
        }
      }

      v8 = (*(*v6 + 416))();
      if (v8)
      {

        sub_D8028();
        sub_D8058();
        sub_D8068();
        sub_D8038();
      }

      else
      {
      }

      ++v5;
    }

    while (v7 != v4);
  }

  v9 = sub_B2EB4(_swiftEmptyArrayStorage);
  v10 = (*(*v0 + 728))(v9);
  v3 = v10;
  if (v10 >> 62)
  {
    v11 = sub_D8078();
    if (!v11)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      goto LABEL_33;
    }
  }

  v12 = 0;
  while ((v3 & 0xC000000000000001) != 0)
  {
    v13 = sub_D7FF8();
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_27;
    }

LABEL_23:
    v15 = (*(*v13 + 416))();
    if (v15)
    {

      sub_D8028();
      sub_D8058();
      sub_D8068();
      sub_D8038();
    }

    else
    {
    }

    ++v12;
    if (v14 == v11)
    {
      goto LABEL_33;
    }
  }

  if (v12 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_30;
  }

  v13 = *(v3 + 8 * v12 + 32);

  v14 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
LABEL_33:

  result = sub_B2EB4(_swiftEmptyArrayStorage);
  if (_swiftEmptyArrayStorage >> 62)
  {
    result = sub_D8078();
    v17 = result;
    if (!result)
    {
      goto LABEL_42;
    }

LABEL_35:
    if (v17 >= 1)
    {
      for (i = 0; i != v17; ++i)
      {
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v19 = sub_D7FF8();
        }

        else
        {
          v19 = _swiftEmptyArrayStorage[i + 4];
        }

        (*(*v19 + 424))(0);
      }

      goto LABEL_42;
    }

    __break(1u);
  }

  else
  {
    v17 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    if (v17)
    {
      goto LABEL_35;
    }

LABEL_42:

    v20 = *(*v1 + 496);

    return v20(0);
  }

  return result;
}

uint64_t sub_B2EB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_D8078();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_D8078();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_A2EEC(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_B31D4(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_B2FA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_D6808();
    if (v10)
    {
      v11 = sub_D6828();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_D6818();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_D6808();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_D6828();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_D6818();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_B31D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_D8078();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_D8078();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_B3CE8();
          for (i = 0; i != v6; ++i)
          {
            sub_DC40(&qword_115EC0);
            v9 = sub_B3354(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for Device();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_B3354(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_D7FF8();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_B33D4;
  }

  __break(1u);
  return result;
}

uint64_t sub_B33DC(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_120:
    v53 = a1;
    v6 = sub_D8078();
    a1 = v53;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v63 = v6;
      v65 = a1 & 0xFFFFFFFFFFFFFF8;
      v66 = a1 & 0xC000000000000001;
      p_attr = 1126400;
      v64 = a1;
      do
      {
        if (v66)
        {
          v9 = sub_D7FF8();
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_114:
            __break(1u);
LABEL_115:
            v51 = p_attr;
            v52 = v4;
            goto LABEL_116;
          }
        }

        else
        {
          if (v7 >= *(v65 + 16))
          {
            __break(1u);
            goto LABEL_120;
          }

          v9 = *(a1 + 8 * v7 + 32);

          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_114;
          }
        }

        v11 = (*(*v9 + 264))();
        v12 = [v11 *(p_attr + 3656)];

        if (v12)
        {
          v3 = sub_D68D8();
          v2 = v13;
        }

        else
        {
          v3 = 0;
          v2 = 0xF000000000000000;
        }

        v14 = [a2 *(p_attr + 3656)];
        if (v14)
        {
          v15 = v14;
          p_attr = sub_D68D8();
          v4 = v16;

          if (v2 >> 60 == 15)
          {
            if (v4 >> 60 == 15)
            {
              goto LABEL_117;
            }
          }

          else if (v4 >> 60 != 15)
          {
            v17 = v2 >> 62;
            v18 = v4 >> 62;
            if (v2 >> 62 == 3)
            {
              v19 = 0;
              if (!v3 && v2 == 0xC000000000000000 && v4 >> 62 == 3)
              {
                v19 = 0;
                if (!p_attr && v4 == 0xC000000000000000)
                {
                  sub_B3D4C(0, 0xC000000000000000);
                  v3 = 0;
LABEL_117:
                  sub_B3D4C(v3, v2);
                  return v9;
                }
              }

LABEL_35:
              if (v18 <= 1)
              {
                goto LABEL_36;
              }

LABEL_41:
              if (v18 == 2)
              {
                v25 = *(p_attr + 16);
                v24 = *(p_attr + 24);
                v22 = __OFSUB__(v24, v25);
                v23 = v24 - v25;
                if (v22)
                {
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
LABEL_129:
                  __break(1u);
LABEL_130:
                  __break(1u);
LABEL_131:
                  __break(1u);
LABEL_132:
                  __break(1u);
LABEL_133:
                  __break(1u);
LABEL_134:
                  __break(1u);
LABEL_135:
                  __break(1u);
LABEL_136:
                  __break(1u);
LABEL_137:
                  __break(1u);
                }

                goto LABEL_43;
              }

              if (!v19)
              {
                goto LABEL_115;
              }

LABEL_49:
              sub_B3D4C(p_attr, v4);
              sub_B3D4C(v3, v2);
LABEL_111:

              goto LABEL_6;
            }

            if (v17 > 1)
            {
              if (v17 == 2)
              {
                v21 = *(v3 + 16);
                v20 = *(v3 + 24);
                v22 = __OFSUB__(v20, v21);
                v19 = v20 - v21;
                if (v22)
                {
                  goto LABEL_126;
                }

                goto LABEL_35;
              }

              v19 = 0;
              if (v18 <= 1)
              {
                goto LABEL_36;
              }

              goto LABEL_41;
            }

            if (v17)
            {
              LODWORD(v19) = HIDWORD(v3) - v3;
              if (__OFSUB__(HIDWORD(v3), v3))
              {
                goto LABEL_125;
              }

              v19 = v19;
              goto LABEL_35;
            }

            v19 = BYTE6(v2);
            if (v18 > 1)
            {
              goto LABEL_41;
            }

LABEL_36:
            if (v18)
            {
              LODWORD(v23) = HIDWORD(p_attr) - p_attr;
              if (__OFSUB__(HIDWORD(p_attr), p_attr))
              {
                goto LABEL_124;
              }

              v23 = v23;
            }

            else
            {
              v23 = BYTE6(v4);
            }

LABEL_43:
            if (v19 != v23)
            {
              goto LABEL_49;
            }

            if (v19 < 1)
            {
              goto LABEL_115;
            }

            if (v17 > 1)
            {
              if (v17 != 2)
              {
                memset(__s2, 0, 14);
                sub_B3D60(v3, v2);
                sub_B3D60(p_attr, v4);
LABEL_59:
                sub_B2FA4(__s2, p_attr, v4, &v67);
                sub_B3D4C(p_attr, v4);
                sub_B3D4C(v3, v2);
                sub_B3D4C(p_attr, v4);
                v32 = v67;
                sub_B3D4C(v3, v2);
                if (v32)
                {
                  return v9;
                }

                goto LABEL_111;
              }

              v61 = a2;
              v26 = *(v3 + 16);
              sub_B3D60(v3, v2);
              sub_B3D60(p_attr, v4);
              v27 = sub_D6808();
              if (v27)
              {
                __s1 = v26;
                v28 = v27;
                v29 = sub_D6828();
                if (__OFSUB__(__s1, v29))
                {
                  goto LABEL_128;
                }

                __s1a = &__s1[v28 - v29];
              }

              else
              {
                __s1a = 0;
              }

              a2 = v61;
              sub_D6818();
              if (v18 != 2)
              {
                if (v18 == 1)
                {
                  if (p_attr >> 32 < p_attr)
                  {
                    goto LABEL_130;
                  }

                  v33 = sub_D6808();
                  if (v33)
                  {
                    v34 = sub_D6828();
                    if (__OFSUB__(p_attr, v34))
                    {
                      goto LABEL_136;
                    }

                    v33 += p_attr - v34;
                  }

                  a2 = v61;
                  v35 = sub_D6818();
                  v36 = (p_attr >> 32) - p_attr;
                  if (v35 < v36)
                  {
                    v36 = v35;
                  }

                  v37 = __s1a;
                  if (!__s1a)
                  {
                    goto LABEL_141;
                  }

                  if (!v33)
                  {
                    goto LABEL_140;
                  }

                  goto LABEL_106;
                }

                v37 = __s1a;
                __s2[0] = p_attr;
                LOWORD(__s2[1]) = v4;
                BYTE2(__s2[1]) = BYTE2(v4);
                BYTE3(__s2[1]) = BYTE3(v4);
                BYTE4(__s2[1]) = BYTE4(v4);
                BYTE5(__s2[1]) = BYTE5(v4);
                if (!__s1a)
                {
                  __break(1u);
LABEL_138:
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
LABEL_144:
                  __break(1u);
LABEL_145:
                  __break(1u);
LABEL_146:
                  __break(1u);

                  __break(1u);
                  return result;
                }

                goto LABEL_109;
              }

              v40 = *(p_attr + 16);
              v55 = *(p_attr + 24);
              v33 = sub_D6808();
              if (v33)
              {
                v41 = sub_D6828();
                if (__OFSUB__(v40, v41))
                {
                  goto LABEL_134;
                }

                v33 += v40 - v41;
              }

              v22 = __OFSUB__(v55, v40);
              v42 = v55 - v40;
              if (v22)
              {
                goto LABEL_131;
              }

              v43 = sub_D6818();
              if (v43 >= v42)
              {
                v36 = v42;
              }

              else
              {
                v36 = v43;
              }

              v37 = __s1a;
              if (!__s1a)
              {
                goto LABEL_143;
              }

              a2 = v61;
              if (!v33)
              {
                goto LABEL_142;
              }
            }

            else
            {
              if (!v17)
              {
                __s2[0] = v3;
                LOWORD(__s2[1]) = v2;
                BYTE2(__s2[1]) = BYTE2(v2);
                BYTE3(__s2[1]) = BYTE3(v2);
                BYTE4(__s2[1]) = BYTE4(v2);
                BYTE5(__s2[1]) = BYTE5(v2);
                sub_B3D60(v3, v2);
                sub_B3D60(p_attr, v4);
                goto LABEL_59;
              }

              v62 = a2;
              if (v3 > v3 >> 32)
              {
                goto LABEL_127;
              }

              sub_B3D60(v3, v2);
              sub_B3D60(p_attr, v4);
              v30 = sub_D6808();
              if (v30)
              {
                __s1b = v30;
                v31 = sub_D6828();
                if (__OFSUB__(v3, v31))
                {
                  goto LABEL_129;
                }

                __s1c = &__s1b[v3 - v31];
              }

              else
              {
                __s1c = 0;
              }

              sub_D6818();
              if (v18 != 2)
              {
                if (v18 == 1)
                {
                  if (p_attr >> 32 < p_attr)
                  {
                    goto LABEL_132;
                  }

                  v33 = sub_D6808();
                  if (v33)
                  {
                    v38 = sub_D6828();
                    if (__OFSUB__(p_attr, v38))
                    {
                      goto LABEL_137;
                    }

                    v33 += p_attr - v38;
                  }

                  v39 = sub_D6818();
                  v36 = (p_attr >> 32) - p_attr;
                  if (v39 < v36)
                  {
                    v36 = v39;
                  }

                  v37 = __s1c;
                  if (!__s1c)
                  {
                    goto LABEL_146;
                  }

                  if (!v33)
                  {
                    goto LABEL_145;
                  }

                  goto LABEL_106;
                }

                v37 = __s1c;
                __s2[0] = p_attr;
                LOWORD(__s2[1]) = v4;
                BYTE2(__s2[1]) = BYTE2(v4);
                BYTE3(__s2[1]) = BYTE3(v4);
                BYTE4(__s2[1]) = BYTE4(v4);
                BYTE5(__s2[1]) = BYTE5(v4);
                if (!__s1c)
                {
                  goto LABEL_144;
                }

LABEL_109:
                v48 = BYTE6(v4);
                v49 = __s2;
LABEL_110:
                v50 = memcmp(v37, v49, v48);
                sub_B3D4C(p_attr, v4);
                sub_B3D4C(p_attr, v4);
                sub_B3D4C(v3, v2);
                sub_B3D4C(v3, v2);
                if (!v50)
                {
                  return v9;
                }

                goto LABEL_111;
              }

              v44 = *(p_attr + 16);
              v56 = *(p_attr + 24);
              v33 = sub_D6808();
              if (v33)
              {
                v45 = sub_D6828();
                if (__OFSUB__(v44, v45))
                {
                  goto LABEL_135;
                }

                v33 += v44 - v45;
              }

              v22 = __OFSUB__(v56, v44);
              v46 = v56 - v44;
              if (v22)
              {
                goto LABEL_133;
              }

              v47 = sub_D6818();
              if (v47 >= v46)
              {
                v36 = v46;
              }

              else
              {
                v36 = v47;
              }

              v37 = __s1c;
              if (!__s1c)
              {
                goto LABEL_139;
              }

              a2 = v62;
              if (!v33)
              {
                goto LABEL_138;
              }
            }

LABEL_106:
            if (v37 == v33)
            {
              sub_B3D4C(p_attr, v4);
              sub_B3D4C(p_attr, v4);
              v51 = v3;
              v52 = v2;
LABEL_116:
              sub_B3D4C(v51, v52);
              goto LABEL_117;
            }

            v48 = v36;
            v49 = v33;
            goto LABEL_110;
          }
        }

        else
        {
          if (v2 >> 60 == 15)
          {
            goto LABEL_117;
          }

          p_attr = 0;
          v4 = 0xF000000000000000;
        }

        sub_B3D4C(v3, v2);
        sub_B3D4C(p_attr, v4);
LABEL_6:
        ++v7;
        a1 = v64;
        p_attr = &stru_112FF8.attr;
      }

      while (v10 != v63);
    }
  }

  return 0;
}