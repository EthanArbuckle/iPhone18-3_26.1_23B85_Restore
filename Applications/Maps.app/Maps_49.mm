uint64_t sub_10056B204(uint64_t a1)
{
  sub_10005EB40(a1, v5);
  sub_1000CE6B8(&qword_101914930);
  type metadata accessor for GEOAPHistoricalUploadTableViewCellConfiguration();
  if (swift_dynamicCast())
  {
    *(v1 + OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView_currentConfig) = v4;
    swift_retain_n();

    sub_10056BEA0(v4);
  }

  return sub_10004E3D0(a1);
}

void (*sub_10056B2B8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView_currentConfig;
  *(v3 + 88) = v1;
  *(v3 + 96) = v5;
  v6 = *(v1 + v5);
  v7 = type metadata accessor for GEOAPHistoricalUploadTableViewCellConfiguration();
  v4[13] = v7;
  v4[3] = v7;
  v4[4] = sub_10056DA5C(&qword_1019279F8, type metadata accessor for GEOAPHistoricalUploadTableViewCellConfiguration);
  *v4 = v6;

  return sub_10056B388;
}

void sub_10056B388(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10005EB40(*a1, (v2 + 5));
    sub_10056B204((v2 + 5));
  }

  else
  {
    sub_10005EB40(*a1, (v2 + 5));
    sub_1000CE6B8(&qword_101914930);
    if (swift_dynamicCast())
    {
      v3 = v2[10];
      *(v2[11] + v2[12]) = v3;
      swift_retain_n();

      sub_10056BEA0(v3);
    }
  }

  sub_10004E3D0(v2);

  free(v2);
}

id sub_10056B488(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_10056B51C()
{
  v1 = OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView____lazy_storage___histogramViewContainer;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView____lazy_storage___histogramViewContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView____lazy_storage___histogramViewContainer);
  }

  else
  {
    type metadata accessor for HistogramView();
    v4 = *(*(v0 + OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView_currentConfig) + 16);
    v5 = *(v4 + 32);
    swift_beginAccess();
    v6 = *(v4 + 48);

    v7 = v5;
    v8 = v0;
    v9 = sub_100569D2C(v7, v6);
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = *(v0 + v1);
    *(v8 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_10056B5EC()
{
  v1 = sub_10056B464();
  [v0 addSubview:v1];

  v2 = sub_10056B470();
  [v0 addSubview:v2];

  v3 = sub_10056B47C();
  [v0 addSubview:v3];

  v4 = sub_10056B51C();
  [v0 addSubview:v4];

  v65 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101210FA0;
  v6 = OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView____lazy_storage___topLabel;
  v7 = [*&v0[OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView____lazy_storage___topLabel] leadingAnchor];
  v8 = [v0 layoutMarginsGuide];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor:v9];
  *(v5 + 32) = v10;
  v11 = [*&v0[v6] topAnchor];
  v12 = [v0 layoutMarginsGuide];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor:v13];
  *(v5 + 40) = v14;
  v15 = [*&v0[v6] heightAnchor];
  v16 = [v0 layoutMarginsGuide];
  v17 = [v16 heightAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 multiplier:0.333];
  *(v5 + 48) = v18;
  v19 = OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView____lazy_storage___midLabel;
  v20 = [*&v0[OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView____lazy_storage___midLabel] leadingAnchor];
  v21 = [v0 layoutMarginsGuide];
  v22 = [v21 leadingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22];
  *(v5 + 56) = v23;
  v24 = [*&v0[v19] topAnchor];
  v25 = [*&v0[v6] bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v5 + 64) = v26;
  v27 = [*&v0[v19] heightAnchor];
  v28 = [v0 layoutMarginsGuide];
  v29 = [v28 heightAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 multiplier:0.333];
  *(v5 + 72) = v30;
  v31 = OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView____lazy_storage___bottomLabel;
  v32 = [*&v0[OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView____lazy_storage___bottomLabel] leadingAnchor];
  v33 = [v0 layoutMarginsGuide];
  v34 = [v33 leadingAnchor];

  v35 = [v32 constraintEqualToAnchor:v34];
  *(v5 + 80) = v35;
  v36 = [*&v0[v31] topAnchor];
  v37 = [*&v0[v19] bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v5 + 88) = v38;
  v39 = [*&v0[v31] bottomAnchor];
  v40 = [v0 layoutMarginsGuide];
  v41 = [v40 bottomAnchor];

  v42 = [v39 constraintEqualToAnchor:v41];
  *(v5 + 96) = v42;
  v43 = OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView____lazy_storage___histogramViewContainer;
  v44 = [*&v0[OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView____lazy_storage___histogramViewContainer] heightAnchor];
  v45 = [v44 constraintEqualToConstant:100.0];

  *(v5 + 104) = v45;
  v46 = [*&v0[v43] topAnchor];
  v47 = [v0 layoutMarginsGuide];
  v48 = [v47 topAnchor];

  v49 = [v46 constraintEqualToAnchor:v48];
  *(v5 + 112) = v49;
  v50 = [*&v0[v43] bottomAnchor];
  v51 = [v0 layoutMarginsGuide];
  v52 = [v51 bottomAnchor];

  v53 = [v50 constraintEqualToAnchor:v52];
  *(v5 + 120) = v53;
  v54 = [*&v0[v43] widthAnchor];
  v55 = [v0 layoutMarginsGuide];
  v56 = [v55 widthAnchor];

  v57 = [v54 constraintEqualToAnchor:v56 multiplier:0.7];
  *(v5 + 128) = v57;
  v58 = [*&v0[v43] trailingAnchor];
  v59 = [v0 layoutMarginsGuide];
  v60 = [v59 trailingAnchor];

  v61 = [v58 constraintEqualToAnchor:v60];
  *(v5 + 136) = v61;
  v62 = [*&v0[v43] leftAnchor];
  v63 = [*&v0[v6] rightAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v5 + 144) = v64;
  sub_100014C84(0, &qword_10190B720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v65 activateConstraints:isa];
}

uint64_t sub_10056BEA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 56);

  v3 = sub_10056B464();
  if (v2)
  {
    v4 = String._bridgeToObjectiveC()();
    [v3 setText:{v4, v15, v16}];
  }

  else
  {
    sub_1000CE6B8(&unk_10190D5C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1011E1D30;
    v6 = *(v1 + 40);
    *(v5 + 56) = &type metadata for UInt32;
    *(v5 + 64) = &protocol witness table for UInt32;
    *(v5 + 32) = v6;
    String.init(format:_:)();
    v7 = String._bridgeToObjectiveC()();

    [v3 setText:v7];

    v8 = sub_10056B470();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1011E1D30;
    v10 = *(v1 + 32);
    *(v9 + 56) = &type metadata for UInt32;
    *(v9 + 64) = &protocol witness table for UInt32;
    *(v9 + 32) = v10;
    String.init(format:_:)();
    v11 = String._bridgeToObjectiveC()();

    [v8 setText:v11];

    v3 = sub_10056B47C();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1011E1D30;
    v13 = *(v1 + 36);
    *(v12 + 56) = &type metadata for UInt32;
    *(v12 + 64) = &protocol witness table for UInt32;
    *(v12 + 32) = v13;
    String.init(format:_:)();
    v4 = String._bridgeToObjectiveC()();

    [v3 setText:{v4, 1, 2}];
  }
}

uint64_t sub_10056C1A8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView_currentConfig);
  a1[3] = type metadata accessor for GEOAPHistoricalUploadTableViewCellConfiguration();
  a1[4] = sub_10056DA5C(&qword_1019279F8, type metadata accessor for GEOAPHistoricalUploadTableViewCellConfiguration);
  *a1 = v3;
}

void (*sub_10056C230(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_10056B2B8(v2);
  return sub_10023194C;
}

id sub_10056C2C4()
{

  v1 = sub_10056D994(v0);
  sub_10056DA5C(&qword_101927A00, type metadata accessor for GEOAPHistoricalUploadTableViewCellView);
  return v1;
}

void sub_10056C548()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for GEOAPHistoricalUploadDebugController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v2 = [v0 tableView];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for GEOAPHistoricalUploadTableViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = String._bridgeToObjectiveC()();
    [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

    v6 = [v1 tableView];
    if (v6)
    {
      v7 = v6;
      sub_100569274(v6);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t getEnumTagSinglePayload for GEOAPLatencyBuckets(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GEOAPLatencyBuckets(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10056C954()
{
  result = qword_1019279C8;
  if (!qword_1019279C8)
  {
    sub_1000D6664(&qword_1019279D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019279C8);
  }

  return result;
}

unint64_t sub_10056C9BC()
{
  result = qword_1019279D8;
  if (!qword_1019279D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019279D8);
  }

  return result;
}

unint64_t sub_10056CA14()
{
  result = qword_1019279E0;
  if (!qword_1019279E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019279E0);
  }

  return result;
}

Swift::Int sub_10056CAF8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10056CCC0(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10056CBF0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10056CBF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10056CCC0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_10056D550(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10056D29C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100097874(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100097874((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10056D29C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10056D550(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10056D4C4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_10056D29C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_10056D4C4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10056D550(v3);
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

uint64_t sub_10056D62C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && *(a1 + 56) == *(a2 + 56))
  {
    swift_beginAccess();
    v7 = *(a1 + 48);
    swift_beginAccess();
    v8 = *(a2 + 48);

    v5 = sub_100226394(v7, v8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_10056D76C(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_10056D77C(unint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101927A08);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - v4;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();
  v6 = v5;
  v7 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v7 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7 + 16 * a1;
  v10 = *(v8 + 32);
  v9 = *(v8 + 40);

  v18 = v10;
  v19 = v9;
  v6 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();

  v18 = 0;
  v19 = 0xE000000000000000;
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_12:

    v13 = 0;
    goto LABEL_13;
  }

LABEL_11:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v6 + 32);

LABEL_8:

    v13 = *(v12 + 40);

LABEL_13:
    v17[3] = v13;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0x7364616F6C707520;
    v15._object = 0xE800000000000000;
    String.append(_:)(v15);
    v16 = v18;
    (*(v3 + 8))(v5, v2);
    return v16;
  }

  __break(1u);
  return result;
}

id sub_10056D994(uint64_t a1)
{
  v2 = type metadata accessor for GEOAPHistoricalUploadTableViewCellView();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView____lazy_storage___topLabel] = 0;
  *&v3[OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView____lazy_storage___midLabel] = 0;
  *&v3[OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView____lazy_storage___bottomLabel] = 0;
  *&v3[OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView____lazy_storage___histogramViewContainer] = 0;
  *&v3[OBJC_IVAR____TtC4Maps38GEOAPHistoricalUploadTableViewCellView_currentConfig] = a1;
  v6.receiver = v3;
  v6.super_class = v2;

  v4 = objc_msgSendSuper2(&v6, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10056B5EC();
  sub_10056BEA0(a1);

  return v4;
}

uint64_t sub_10056DA5C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10056DAA0()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_101927A08);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = IndexPath.section.getter();
  if (v6)
  {
    v7 = v6;
    v8 = *&v0[OBJC_IVAR____TtC4Maps36GEOAPHistoricalUploadDebugController_dataModel];
    v9 = OBJC_IVAR____TtC4Maps30GEOAPHistoricalUploadDataModel_snapshot;
    swift_beginAccess();
    (*(v3 + 16))(v5, v8 + v9, v2);
    v10 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*(v3 + 8))(v5, v2);
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *(v10 + 16))
    {
      v11 = v10 + 16 * v7;
      v13 = *(v11 + 32);
      v12 = *(v11 + 40);

      v14 = objc_allocWithZone(type metadata accessor for GEOAPSessionSpecificHistoricalDebugController());

      v15 = [v14 initWithStyle:2];
      v16 = &v15[OBJC_IVAR____TtC4Maps45GEOAPSessionSpecificHistoricalDebugController_modelSectionType];
      *v16 = v13;
      *(v16 + 1) = v12;

      v17 = [v1 navigationController];
      if (v17)
      {
        v18 = v17;
        [v17 pushViewController:v15 animated:1];
      }

      v19 = [v1 tableView];
      if (v19)
      {
        v20 = v19;

        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v20 deselectRowAtIndexPath:isa animated:1];

        return;
      }

LABEL_11:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_10056DCFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003AC4C;

  return sub_10056970C();
}

char *sub_10056DDFC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_attributedText] = 0;
  v10 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_label] = v10;
  v11 = [objc_opt_self() effectWithStyle:6];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];
  *&v4[OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_blurView] = v12;
  v13 = [objc_opt_self() effectForBlurEffect:v11 style:1];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  *&v4[OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_labelVibrantView] = v14;
  v26.receiver = v4;
  v26.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  [v15 setClipsToBounds:1];
  v16 = *&v15[OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_label];
  [v16 setNumberOfLines:1];
  v17 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption2];
  [v16 setFont:v17];

  v18 = *&v15[OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_blurView];
  [v15 addSubview:v18];
  v19 = *&v15[OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_labelVibrantView];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [v19 contentView];
  [v20 addSubview:v16];

  v21 = [v18 contentView];
  [v21 addSubview:v19];

  v22 = [objc_opt_self() sharedApplication];
  v23 = [v22 userInterfaceLayoutDirection];

  if (v23 == 1)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  [v18 _setCornerRadius:1 continuous:v24 maskedCorners:4.0];
  sub_10056E0E8();

  return v15;
}

void sub_10056E0E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_labelVibrantView);
  v2 = *(v0 + OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_label);
  v3 = [v1 contentView];
  v4 = [objc_allocWithZone(MUEdgeLayout) initWithItem:v2 container:v3];

  v5 = *(v0 + OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_blurView);
  v6 = v1;
  v7 = [v5 contentView];
  if (qword_101906958 != -1)
  {
    swift_once();
  }

  v8 = [objc_allocWithZone(MUEdgeLayout) initWithItem:v6 container:v7 insets:{3.0, *&qword_101927A10, 3.0, *&qword_101927A10}];

  v9 = [objc_allocWithZone(MUEdgeLayout) initWithItem:v5 container:v0];
  v10 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1011E47C0;
  *(v11 + 32) = v4;
  *(v11 + 40) = v8;
  *(v11 + 48) = v9;
  sub_10056E528();
  v12 = v4;
  v13 = v8;
  v14 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 _mapsui_activateLayouts:isa];
}

double sub_10056E430()
{
  result = kMUPlaceSystemSpacing;
  qword_101927A10 = kMUPlaceSystemSpacing;
  return result;
}

unint64_t sub_10056E528()
{
  result = qword_101927A60;
  if (!qword_101927A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101927A60);
  }

  return result;
}

uint64_t sub_10056E5A0(uint64_t a1)
{
  v2 = type metadata accessor for MapsDesignAccessibilityString();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PlaceCell();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR____TtC4Maps21PlaceItemRowViewModel_viewModel);
  v12[4] = type metadata accessor for ListCellViewModel();
  v12[5] = sub_10056E82C(&qword_10190B068, &type metadata accessor for ListCellViewModel);
  v12[1] = v10;

  PlaceCell.init(model:tapHandler:)();
  *v5 = 0x6574496563616C50;
  v5[1] = 0xE90000000000006DLL;
  (*(v3 + 104))(v5, enum case for MapsDesignAccessibilityString.cell(_:), v2);
  sub_10056E82C(&qword_10190D640, &type metadata accessor for PlaceCell);
  View.mapsDesignAXCombinedContainer(withID:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10056E82C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10056E8A0(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_10195CA38 == -1)
  {
    if (qword_10195CA40)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_101019F1C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_10195CA40)
    {
      return _availability_version_check();
    }
  }

  if (qword_10195CA30 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_101019F34();
    a3 = v10;
    a4 = v9;
    v8 = dword_10195CA20 < v11;
    if (dword_10195CA20 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10195CA24 > a3)
      {
        return 1;
      }

      if (dword_10195CA24 >= a3)
      {
        return dword_10195CA28 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_10195CA20 < a2;
  if (dword_10195CA20 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10056EA34(uint64_t result)
{
  v1 = qword_10195CA40;
  if (qword_10195CA40)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_10195CA40 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_10195CA20, &dword_10195CA24, &dword_10195CA28);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

void sub_10056F13C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10056F15C(id result)
{
  ++*(*(result + 4) + 40);
  if ((*(result + 48) & 1) == 0)
  {
    return [*(result + 5) setHidden:0];
  }

  return result;
}

void sub_10056F18C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[5];
    v4 = v3 == 1;
    v5 = v3 < 1;
    v6 = v3 - 1;
    if (!v5)
    {
      WeakRetained[5] = v6;
      if (v4 && *(WeakRetained + 25) == 1)
      {
        v7 = WeakRetained;
        [*(a1 + 32) setHidden:1];
        WeakRetained = v7;
      }
    }
  }
}

id sub_10056F504(uint64_t a1)
{
  if ([*(a1 + 32) trackingStateReason] == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  v3 = *(a1 + 40);

  return [v3 setCurrentState:v2];
}

void sub_100570268(id a1)
{
  v1 = qword_10195CA48;
  qword_10195CA48 = &off_1016EC620;
}

void sub_100570C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100570C44(uint64_t a1, void *a2, _BYTE *a3)
{
  v21 = a2;
  [*(a1 + 32) addSubview:v21];
  v5 = *(a1 + 40);
  v6 = [v21 trailingAnchor];
  v7 = [v6 constraintEqualToAnchor:*(*(*(a1 + 64) + 8) + 40) constant:-*(*(*(a1 + 72) + 8) + 24)];
  [v5 addObject:v7];

  v8 = [*(a1 + 48) verticalArrangement];
  v9 = *(a1 + 40);
  if (v8)
  {
    v10 = [v21 centerYAnchor];
    [*(a1 + 32) centerYAnchor];
  }

  else
  {
    v10 = [v21 topAnchor];
    [*(a1 + 32) topAnchor];
  }
  v11 = ;
  v12 = [v10 constraintEqualToAnchor:v11];
  [v9 addObject:v12];

  if ([*(a1 + 56) count] - 1 == a3)
  {
    v13 = *(a1 + 40);
    v14 = [v21 leadingAnchor];
    v15 = [*(a1 + 32) leadingAnchor];
    v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15];
    [v13 addObject:v16];
  }

  v17 = [v21 leadingAnchor];
  v18 = *(*(a1 + 64) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  [*(a1 + 48) interItemHorizontalPadding];
  *(*(*(a1 + 72) + 8) + 24) = v20;
}

void sub_100571A20(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 customizationBlock];
  v7[2](v7, v6, a3, *(a1 + 40));
}

void sub_100572DCC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) cancellationHandler];

  if (v2)
  {
    v3 = [*(*(a1 + 32) + 64) cancellationHandler];
    v3[2]();
  }
}

void sub_100572E54(uint64_t a1, void *a2)
{
  v3 = a2;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10057309C;
  v20[3] = &unk_10163BFE8;
  v22 = *(a1 + 56);
  v21 = *(a1 + 32);
  v4 = objc_retainBlock(v20);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1005730EC;
  v17 = &unk_101622060;
  v18 = *(a1 + 40);
  v5 = v4;
  v19 = v5;
  v6 = objc_retainBlock(&v14);
  v7 = *(a1 + 40);
  v8 = [UTTypeUTF8PlainText identifier];
  LODWORD(v7) = [v7 isEqualToString:v8];

  if (v7)
  {
    if (*(*(a1 + 48) + 24))
    {
      v9 = objc_alloc_init(CNContactFormatter);
      [v9 setStyle:0];
      v10 = [*(*(a1 + 48) + 24) contact];
      v11 = [v9 stringFromContact:v10];
    }

    else
    {
      v11 = [v3 name];
    }

    (v6[2])(v6, v11);
  }

  else
  {
    v12 = +[MKMapItem writableTypeIdentifiersForItemProvider];
    v13 = [v12 containsObject:*(a1 + 40)];

    if (v13)
    {
      (v6[2])(v6, v3);
    }
  }
}

id sub_10057309C(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) totalUnitCount];
  v3 = *(a1 + 32);

  return [v3 setCompletedUnitCount:v2];
}

id sub_1005730EC(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 loadDataWithTypeIdentifier:*(a1 + 32) forItemProviderCompletionHandler:*(a1 + 40)];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_100573460(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 resolvedMapItem];
  [v3 _didResolveMapItem:v4];

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void sub_100573FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100573FEC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100574004(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MKMapItem alloc];
  v5 = [v3 geoMapItem];

  v9 = [v4 initWithGeoMapItem:v5 isPlaceHolderPlace:1];
  v6 = [objc_alloc(*(a1 + 40)) initWithMapItem:v9];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_10057615C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionMonitor");
  v2 = qword_10195CA58;
  qword_10195CA58 = v1;
}

uint64_t sub_1005765F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (!a2)
  {
    a2 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, a2);
}

void sub_1005767AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005767C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = [v6 objectForKeyedSubscript:PHImageResultIsDegradedKey];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = sub_10057696C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "UGCARPPhotoCarouselController loaded asset of low-resolution image quality: %@", &v15, 0xCu);
      }
    }

    if (v5)
    {
      GEOConfigGetDouble();
      v13 = UIImageJPEGRepresentation(v5, v12);
      v14 = [[UGCPhotoWithMetadata alloc] initWithImageData:v13 PHAsset:*(a1 + 32) sourceType:2];
      [(UGCPhotoWithMetadata *)v14 setIsSuggestedPhoto:1];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

id sub_10057696C()
{
  if (qword_10195CA70 != -1)
  {
    dispatch_once(&qword_10195CA70, &stru_1016221B8);
  }

  v1 = qword_10195CA68;

  return v1;
}

void sub_1005769C0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "UGCARPPhotoCarouselController");
  v2 = qword_10195CA68;
  qword_10195CA68 = v1;
}

void sub_100576B8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100576CA0;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100576C38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 image];
  [v3 _prepareImageThumbnailWithOriginalImage:v4 targetSize:*(a1 + 40) scale:*(a1 + 48) completion:{*(a1 + 56), *(a1 + 64)}];
}

void sub_100576E6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100577038;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100576F18(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5)
{
  v9 = a2;
  v10 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100577018;
  block[3] = &unk_1016220F8;
  v11 = *(a1 + 32);
  v16 = v10;
  v17 = v11;
  v18 = a5;
  v19 = a3;
  v15 = v9;
  v12 = v10;
  v13 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100577758()
{
  if (qword_10195CA80 != -1)
  {
    dispatch_once(&qword_10195CA80, &stru_1016221D8);
  }

  v1 = qword_10195CA78;

  return v1;
}

void sub_1005777AC(uint64_t a1, char a2)
{
  if (a2)
  {
    return;
  }

  if ([*(a1 + 32) _isValidURLForWebView:*(a1 + 40)])
  {
    v6 = [[SFSafariViewController alloc] initWithURL:*(a1 + 40)];
    if (!sub_10000FA08(v6))
    {
      [v6 setModalPresentationStyle:2];
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [WeakRetained _maps_topMostPresentViewController:v6 animated:1 completion:0];

    goto LABEL_8;
  }

  if ([*(a1 + 32) _isValidURLToOpen:*(a1 + 40)])
  {
    v6 = +[MKSystemController sharedInstance];
    [v6 openURL:*(a1 + 40) completionHandler:0];
LABEL_8:

    return;
  }

  v4 = sub_100577758();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 40);
    *buf = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "can't open the URL: %@", buf, 0xCu);
  }
}

void sub_100577928(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsWebLinkPresentation");
  v2 = qword_10195CA78;
  qword_10195CA78 = v1;
}

__CFString *sub_10057AB94(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _isItemVenue:v3])
  {
    v4 = *(*(a1 + 32) + 88);
    v5 = v3;
    v6 = [v5 mapItem];
    [v4 addVenueProviderForMapItem:v6];

    v7 = [*(a1 + 32) identifierCache];
    v8 = [v7 identifierForObject:v5];

LABEL_3:
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = @"VenueDropDownIdentifier";
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [*(a1 + 32) identifierCache];
      v8 = [v7 identifierForObject:v3];
      goto LABEL_3;
    }

    v8 = +[ReportASearchAutocompleteResult identifier];
  }

LABEL_8:

  return v8;
}

_TtC4Maps28PlaceSummaryOutlineCellModel *sub_10057ACCC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = *(*(a1 + 32) + 152);
    v6 = [v4 mapItem];
    v7 = [v6 _identifier];
    v8 = [v5 objectForKey:v7];

    if (!v8)
    {
      v9 = [*(a1 + 40) placeSummaryMetadata];
      v10 = *(a1 + 48);
      v11 = [*(a1 + 40) openAt];
      v8 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithSearchResult:v4 metadata:v9 currentLocation:v10 searchAlongRoute:0 openAt:v11];

      v12 = *(*(a1 + 32) + 152);
      v13 = [v4 mapItem];
      v14 = [v13 _identifier];
      [v12 setObject:v8 forKey:v14];
    }

    v15 = [*(a1 + 32) configuration];
    v16 = [v15 collectionView];
    [v16 frame];
    [v8 setContainerWidth:v17];

    v18 = [*(a1 + 40) placeSummaryMetadata];
    [v8 setContainsPhotoCarouselLine:{objc_msgSend(v18, "containsPhotoCarouselLine")}];

    [*(a1 + 32) addMetricsForPlaceSummaryTemplate:v8];
    v19 = [[_TtC4Maps28PlaceSummaryOutlineCellModel alloc] initWithSearchResult:v4 placeSummaryViewModelTemplate:v8 delegate:*(a1 + 32) asyncDataManager:*(*(a1 + 32) + 128) curatedCollectionImageDownloader:*(*(a1 + 32) + 144)];

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v3 cellModel];
LABEL_11:
    v19 = v20;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v20 = v3;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [_TtC4Maps28PlaceSummaryOutlineCellModel alloc];
    v23 = +[_TtC4Maps36PlaceSummaryViewModelTemplateFactory addAPlaceSearchViewModel];
    v19 = [(PlaceSummaryOutlineCellModel *)v22 initWithRapObject:v3 placeSummaryViewModelTemplate:v23 delegate:*(a1 + 32) asyncDataManager:*(*(a1 + 32) + 128) curatedCollectionImageDownloader:*(*(a1 + 32) + 144)];
  }

  else
  {
    v24 = sub_1000410AC();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = v3;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "No items are returned. Item is : %@", &v25, 0xCu);
    }

    v19 = 0;
  }

LABEL_12:

  return v19;
}

id sub_10057B054(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _isItemVenue:v3])
  {
    v4 = [*(a1 + 32) _childItemsInVenueSearchResult:v3];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

id sub_10057B0C4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 expandedIdentifierPaths];
  v6 = [v4 topIdentifierPath];

  v7 = [v5 containsObject:v6];
  return v7;
}

void sub_10057B284(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 mapItem];
  v4 = [v3 _identifier];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 160);
    v6 = [v11 mapItem];
    v7 = [v6 _identifier];
    v8 = [v5 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = *(*(a1 + 32) + 136);
      v10 = [v11 mapItem];
      [v9 refreshResultForForTemplate:v8 mapItem:v10];
    }
  }
}

void sub_10057BD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10057BDA0(uint64_t a1)
{
  v2 = [*(a1 + 32) selected];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v2)
  {
    v3 = [*(a1 + 32) selectedItem];
    [WeakRetained performAction:v3 options:&__NSDictionary0__struct completion:&stru_101622248];
  }

  else
  {
    [WeakRetained performAction:*(a1 + 32) options:&__NSDictionary0__struct completion:&stru_101622268];
  }
}

void sub_10057BF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10057BFAC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained menuElementForActionItem:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_10057C970(uint64_t a1)
{
  v2 = *(a1 + 40);
  v7 = *(a1 + 32);
  [v2 addChildViewController:v7];
  v3 = [*(a1 + 40) view];
  v4 = [v7 view];
  [v3 insertSubview:v4 belowSubview:*(*(a1 + 40) + 216)];

  v5 = [v7 view];
  [v5 setAlpha:1.0];

  v6 = [*(a1 + 40) cardPresentationController];
  [v6 wantsLayout:2];

  [v7 didMoveToParentViewController:*(a1 + 40)];
}

void sub_10057D6B4(uint64_t a1)
{
  v1 = [*(a1 + 32) registrationWithCellClass:objc_opt_class() configurationHandler:&stru_1016222F0];
  v2 = qword_10195CA88;
  qword_10195CA88 = v1;
}

void sub_10057D714(id a1, VenueDropDownOutlineCell *a2, NSIndexPath *a3, MapsUIDiffableDataSourceOutlineNodeSnapshot *a4)
{
  v8 = a2;
  v5 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)a4 viewModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [(VenueDropDownOutlineCell *)v8 setCellModel:v7];
}

void sub_10057DA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10057DA7C(uint64_t a1, void *a2)
{
  v18 = a2;
  v17 = [v18 displayString];
  v3 = [v18 subcategories];
  v4 = [v3 count];

  if (v4)
  {
    v5 = +[NSMutableArray array];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [v18 subcategories];
    v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = *v26;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          v10 = [v9 displayString];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10057DE04;
          v23[3] = &unk_101660418;
          objc_copyWeak(&v24, (a1 + 48));
          v23[4] = v9;
          v11 = [UIAction actionWithTitle:v10 image:0 identifier:0 handler:v23];
          v12 = [*(*(a1 + 32) + 48) selectedCategory];
          [v11 setState:{objc_msgSend(v12, "isEqual:", v9)}];

          [v5 addObject:v11];
          objc_destroyWeak(&v24);
        }

        v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v6);
    }

    v13 = [UIMenu menuWithTitle:v17 children:v5];
    [*(a1 + 40) addObject:v13];
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10057DE54;
    v20[3] = &unk_101660418;
    objc_copyWeak(&v22, (a1 + 48));
    v14 = v18;
    v21 = v14;
    v15 = [UIAction actionWithTitle:v17 image:0 identifier:0 handler:v20];
    v16 = [*(*(a1 + 32) + 48) selectedCategory];
    [v15 setState:{objc_msgSend(v16, "isEqual:", v14)}];

    [*(a1 + 40) addObject:v15];
    objc_destroyWeak(&v22);
  }
}

void sub_10057DE04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _itemSelectedCategory:*(a1 + 32)];
}

void sub_10057DE54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _itemSelectedCategory:*(a1 + 32)];
}

id sub_10057F188()
{
  if (qword_10195CAA0 != -1)
  {
    dispatch_once(&qword_10195CAA0, &stru_101622310);
  }

  v1 = qword_10195CA98;

  return v1;
}

void sub_10057F1DC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsLoopingVideoPlayerView");
  v2 = qword_10195CA98;
  qword_10195CA98 = v1;
}

void sub_10057F61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10057F648(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained player];
    [v2 play];
  }
}

void sub_100580114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100580138(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startObserving];

  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 player];
  [v3 play];
}

uint64_t sub_1005801A8(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_100582338(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 setShowsHairline:1];
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 isMissedStep];
  if (v8)
  {
    [v10 setShowsHairline:0];
    if (a3)
    {
      v9 = [*(a1 + 32) objectAtIndexedSubscript:a3 - 1];
      [v9 setShowsHairline:0];
    }
  }
}

void sub_100582C0C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 route];
  v8 = [v7 uniqueRouteID];
  v9 = [*(a1 + 32) composedRoute];
  v10 = [v9 uniqueRouteID];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_1005831F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v3 routeIndex]);
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v7 = sub_1007A6D7C(*(*(a1 + 40) + 16), [v3 routeIndex]);
    if (!v7)
    {
      v6 = sub_100798874();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v43 = [v3 routeIndex];
        v44 = 2112;
        v45 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to create a route for index: %lu for userPath: %@", buf, 0x16u);
      }

      goto LABEL_35;
    }

    v6 = v7;
    v8 = *(a1 + 32);
    v9 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v3 routeIndex]);
    [v8 setObject:v6 forKeyedSubscript:v9];

    v10 = *(a1 + 48);
    v11 = objc_opt_new();
    [v10 setObject:v11 forKey:v6];
  }

  v12 = [*(a1 + 48) objectForKey:v6];
  [v12 addIndex:{objc_msgSend(v3, "stepIndex")}];
  if ([v3 traversal] == 2)
  {
    v13 = [*(a1 + 56) objectForKey:v6];

    if (v13)
    {
      v14 = sub_100798874();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v15 = [*(*(a1 + 40) + 16) userPaths];
        v16 = v15;
        if (v15)
        {
          if ([v15 count])
          {
            v34 = v14;
            v35 = v12;
            v36 = v6;
            v37 = v3;
            v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v16 count]);
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v18 = v16;
            v19 = [v18 countByEnumeratingWithState:&v38 objects:buf count:16];
            if (!v19)
            {
              goto LABEL_26;
            }

            v20 = v19;
            v21 = *v39;
            while (1)
            {
              v22 = 0;
              do
              {
                if (*v39 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v38 + 1) + 8 * v22);
                if (v23)
                {
                  v24 = objc_opt_class();
                  v25 = NSStringFromClass(v24);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    goto LABEL_19;
                  }

                  v26 = [v23 performSelector:"accessibilityIdentifier"];
                  v27 = v26;
                  if (v26 && ![v26 isEqualToString:v25])
                  {
                    v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];
                  }

                  else
                  {

LABEL_19:
                    v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
                  }

                  goto LABEL_22;
                }

                v28 = @"<nil>";
LABEL_22:

                [v17 addObject:v28];
                v22 = v22 + 1;
              }

              while (v20 != v22);
              v29 = [v18 countByEnumeratingWithState:&v38 objects:buf count:16];
              v20 = v29;
              if (!v29)
              {
LABEL_26:

                v30 = [v18 componentsJoinedByString:{@", "}];
                v31 = [NSString stringWithFormat:@"<%p> [%@]", v18, v30];

                v6 = v36;
                v3 = v37;
                v14 = v34;
                v12 = v35;
                goto LABEL_32;
              }
            }
          }

          v31 = [NSString stringWithFormat:@"<%p> (empty)", v16];
        }

        else
        {
          v31 = @"<nil>";
        }

LABEL_32:

        *buf = 138412290;
        v43 = v31;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "One route has multiple missed indexes. That's unexpected. userPaths: %@", buf, 0xCu);
      }
    }

    else
    {
      v32 = *(a1 + 56);
      v33 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v3 stepIndex]);
      [v32 setObject:v33 forKey:v6];
    }
  }

LABEL_35:
}

void sub_1005836D0(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v7 = [*(a1 + 40) objectForKey:v6];
  v8 = v7;
  if (v6 && [v7 count])
  {
    v9 = [*(a1 + 48) objectForKey:v6];
    v10 = v9;
    v11 = *(a1 + 56);
    if (v9)
    {
      v12 = [v9 unsignedIntegerValue];
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v13 = [v11 _buildDataSourceForRoute:v6 displayedStepIndices:v8 missedStepIndex:v12 includeOrigin:a3 == 0 includeDestination:{objc_msgSend(*(a1 + 64), "count") - 1 == a3}];
    v14 = sub_100798874();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v6 uniqueRouteID];
      v16 = 138412802;
      v17 = v5;
      v18 = 2112;
      v19 = v15;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Will create route/indices pair. index: %@, id: %@, displayedIndices: %@", &v16, 0x20u);
    }

    [*(a1 + 72) addObject:v13];
  }

  else
  {
    v10 = sub_100798874();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412802;
      v17 = v8;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create a route/indices pair for indices: %@, routeIndex: %@, route: %@", &v16, 0x20u);
    }
  }
}

int64_t sub_1005838F8(id a1, RAPUserPathEntry *a2, RAPUserPathEntry *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [(RAPUserPathEntry *)v5 routeIndex];
  if (v6 == [(RAPUserPathEntry *)v4 routeIndex])
  {
    v7 = [(RAPUserPathEntry *)v5 stepIndex];

    v8 = [NSNumber numberWithUnsignedInt:v7];
    v9 = [(RAPUserPathEntry *)v4 stepIndex];
  }

  else
  {
    v10 = [(RAPUserPathEntry *)v5 routeIndex];

    v8 = [NSNumber numberWithUnsignedInt:v10];
    v9 = [(RAPUserPathEntry *)v4 routeIndex];
  }

  v11 = [NSNumber numberWithUnsignedInt:v9];
  v12 = [v8 compare:v11];

  return v12;
}

void sub_100583E24(uint64_t a1)
{
  v2 = [*(a1 + 40) selectedVehicle];
  [*(*(a1 + 32) + 88) setVehicle:v2];
}

id sub_100585CD0(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  [*(a1 + 32) _updateTableHeightConstraint];
  [*(*(a1 + 32) + 104) cgFloatValue];
  v4 = v3;
  result = [*(a1 + 32) _cellContentWidth];
  if (vabdd_f64(v4, v6) > 2.22044605e-16)
  {
    v7 = *(a1 + 32);

    return [v7 _reloadTableViewIfNeeded];
  }

  return result;
}

void sub_100586114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100586138(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained virtualGarageDidUpdate:v3];
}

id sub_100586284(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"displayRoutes"];
  v2 = *(a1 + 32);

  return [v2 doAfterSubTestForDisplayingRoutes];
}

void sub_100586CA4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4 = [v1 object];
  v3 = [NSString stringWithFormat:@"placeRequest:geod:%@", v4];
  [v2 finishedSubTest:v3];
}

void sub_100586DCC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4 = [v1 object];
  v3 = [NSString stringWithFormat:@"placeRequest:geod:%@", v4];
  [v2 startedSubTest:v3 withMetrics:&off_1016EC680];
}

void sub_100586EFC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4 = [v1 object];
  v3 = [NSString stringWithFormat:@"placeRequest:handleResponse:%@", v4];
  [v2 finishedSubTest:v3];
}

void sub_100587024(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4 = [v1 object];
  v3 = [NSString stringWithFormat:@"placeRequest:handleResponse:%@", v4];
  [v2 startedSubTest:v3 withMetrics:&off_1016EC668];
}

void sub_100587E68(uint64_t a1)
{
  v3 = [*(a1 + 32) _mapstest_directionsPlanWithResolvedDestination:*(a1 + 40)];
  [*(a1 + 48) startedTest];
  [*(a1 + 48) startedSubTest:@"directionsSetup"];
  v2 = [*(a1 + 48) testCoordinator];
  [v2 setPPTTestDirectionsPlan:v3];
}

uint64_t sub_100588470(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100588488(uint64_t a1, void *a2)
{
  v9 = [a2 object];
  if (!v9 || ([v9 searchInfo], v3 = objc_claimAutoreleasedReturnValue(), v4 = *(*(a1 + 40) + 8), v5 = *(v4 + 40), *(v4 + 40) = v3, v5, objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "results"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v8 = v9, !v7))
  {
    [*(a1 + 32) failedTest];
    v8 = v9;
  }
}

void sub_100588534(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (v3 && ([v3 results], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5))
  {
    v6 = [*(*(*(a1 + 40) + 8) + 40) results];
    v7 = [v6 firstObject];

    v8 = [*(a1 + 32) testCoordinator];
    [v8 pptTestPresentPlaceCardForSearchResult:v7 animated:1];
  }

  else
  {
    [*(a1 + 32) failedTest];
  }
}

id sub_100588604(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"loadPlaceCard"];
  v2 = *(a1 + 32);

  return [v2 startedSubTest:@"loadRoute"];
}

id sub_100588650(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"loadRoute"];
  v2 = *(a1 + 32);

  return [v2 doAfterSubTestForDisplayingRoutes];
}

void sub_100588694(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) results];
  v3 = [v2 firstObject];

  v4 = [v3 mapItem];
  v5 = [v4 _geoMapItem];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005888AC;
  v7[3] = &unk_101622460;
  v7[4] = *(a1 + 32);
  v6 = [GEOComposedWaypoint composedWaypointForMapItem:v5 traits:0 clientAttributes:0 completionHandler:v7 networkActivityHandler:0];
}

void sub_100588794(uint64_t a1)
{
  v2 = [*(a1 + 32) testCoordinator];
  [v2 pptSelectKeyboardInteractionModel];

  v3 = dispatch_time(0, 2000000000);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100588858;
  v5[3] = &unk_101661A90;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_after(v3, &_dispatch_main_q, v5);
}

void sub_100588858(uint64_t a1)
{
  v2 = [*(a1 + 32) testCoordinator];
  [v2 pptTestSearchForFieldItem:*(a1 + 40)];
}

void sub_1005888AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) failedTest];
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v7 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1005889B0;
    v8[3] = &unk_101661340;
    objc_copyWeak(&v10, &location);
    v9 = v5;
    [v7 addFullyDrawnCallback:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void sub_100588994(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1005889B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _requestRouteWithResolvedDestination:*(a1 + 32)];
}

void sub_100588B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100588BA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startedTest];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 tapOnSearchBar];
}

void sub_100588C90(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100588DE8;
  v5[3] = &unk_101650D20;
  v5[4] = *(a1 + 32);
  [PPTNotificationCenter addOnceObserverForName:@"MapsTestingTransitRouteUpdateWillUpdateDetails" object:0 usingBlock:v5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100588DF8;
  v4[3] = &unk_101650D20;
  v4[4] = *(a1 + 32);
  [PPTNotificationCenter addOnceObserverForName:@"MapsTestingTransitRouteUpdateDidUpdateDetails" object:0 usingBlock:v4];
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100588E3C;
  block[3] = &unk_101661B18;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

id sub_100588DF8(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"transitRouteUpdate:details"];
  v2 = *(a1 + 32);

  return [v2 finishedTest];
}

void sub_100588E3C(uint64_t a1)
{
  v1 = [*(a1 + 32) testCoordinator];
  [v1 pptTestResumeRealtimeTransitUpdates];
}

void sub_100589070(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"transitRouteUpdate:summary"];
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100589114;
  block[3] = &unk_101661B18;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_1005892E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100589308(uint64_t a1)
{
  v2 = dispatch_time(0, 4000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005893B8;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, &_dispatch_main_q, block);
  objc_destroyWeak(&v4);
}

void sub_1005893B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained chromeDelegate];
  [v1 directionsPlanDidSetup];
}

void sub_100589510(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10058952C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setupDirectionsPlan:*(a1 + 32)];
}

void sub_1005896A0(uint64_t a1)
{
  v1 = [*(a1 + 32) testCoordinator];
  [v1 pptTestPresentDirectionsDetails];
}

void sub_10058992C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100589974(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained finishedSubTest:*(a1 + 32)];
    [v3 finishedTest];
    WeakRetained = v3;
  }
}

void sub_100589CF4(uint64_t a1)
{
  v2 = dispatch_time(0, 3000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100589D88;
  block[3] = &unk_101661B18;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_100589FF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10058A014(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained testCoordinator];
  v10 = [v5 pptTestContaineeForDirectionsDetails];

  v6 = [v3 userInfo];

  v7 = [v6 objectForKeyedSubscript:@"ContainerContainee"];

  v8 = v10;
  if (v7 == v10)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))();
      v8 = v10;
    }
  }
}

void sub_10058A2F4(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _clearLeachedLocations];
  }

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _notifyObserversAboutPrecision];
}

void sub_10058A4FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _notifyObserversAboutError:*(a1 + 32)];
}

void sub_10058A760(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleLeechedLocation:*(a1 + 32)];
}

void sub_10058AB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10058AB24(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = *(a1 + 152);
  v11[6] = *(a1 + 136);
  v11[7] = v7;
  v12[0] = *(a1 + 168);
  *(v12 + 12) = *(a1 + 180);
  v8 = *(a1 + 88);
  v11[2] = *(a1 + 72);
  v11[3] = v8;
  v9 = *(a1 + 120);
  v11[4] = *(a1 + 104);
  v11[5] = v9;
  v10 = *(a1 + 56);
  v11[0] = *(a1 + 40);
  v11[1] = v10;
  [WeakRetained _handleShiftedCoordinate:v11 fromClientLocation:{a2, a3}];
}

void sub_10058ABBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138478339;
    v8 = v3;
    v9 = 2049;
    v10 = v5;
    v11 = 2049;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "NavdLocationLeecher failed while shifting location: %{private}@. Original location was: %{private}f, %{private}f.", &v7, 0x20u);
  }
}

uint64_t sub_10058B224(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10058B23C(uint64_t a1)
{
  [*(a1 + 32) _pruneLeachedLocations];
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10058B3C4(uint64_t a1)
{
  [*(a1 + 32) coordinate];
  v3 = v2;
  v5 = v4;
  v12 = *(*(a1 + 40) + 56);
  v6 = [v12 firstObject];
  [v6 coordinate];
  v8 = v7;
  v10 = v9;

  if (v8 != v3 && v10 != v5)
  {
    [v12 insertObject:*(a1 + 32) atIndex:0];
  }

  [*(a1 + 40) _pruneLeachedLocations];
}

id sub_10058B5EC(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Stopping leeching locations.", v4, 2u);
  }

  result = [*(*(a1 + 32) + 8) stopUpdatingLocation];
  *(*(a1 + 32) + 24) = 0;
  return result;
}

void sub_10058B6F4(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 25) == 1)
  {
    v6 = v1;
    v7 = v2;
    *(v3 + 25) = 0;
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Unpausing location leeching.", v5, 2u);
    }
  }
}

void sub_10058B7FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 25) & 1) == 0)
  {
    *(v1 + 25) = 1;
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Pausing location leeching.", v3, 2u);
    }
  }
}

id sub_10058B904(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Starting to leech locations.", v4, 2u);
  }

  *(*(a1 + 32) + 24) = 1;
  return [*(*(a1 + 32) + 8) startUpdatingLocation];
}

void sub_10058BB40(id a1)
{
  v1 = objc_alloc_init(NavdLocationLeecher);
  v2 = qword_10195CAA8;
  qword_10195CAA8 = v1;
}

void sub_10058DDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10058DE08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _humanPresenceDidChange];
}

void sub_10058F708(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 topContext];
  [v5 configureCard:v4 forKey:*(a1 + 40)];
}

void sub_10058FA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10058FA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006CF98();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v8 = 134349056;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Chrome finished configuring cards.", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained setNeedsUpdateMapInsets];

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) chromeDidEndConfiguringCards:*(a1 + 48)];
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_100590378(id a1, int64_t a2)
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "carStatusBannerDidTapBanner: button = %ld", &v4, 0xCu);
  }

  if (a2 <= 1)
  {
    GEOConfigSetBOOL();
  }
}

void sub_1005905D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005905EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained zoomInButtonPressed];
}

void sub_100590C40(uint64_t a1)
{
  v5 = [*(a1 + 32) mapView];
  [v5 _zoomLevel];
  v3 = v2;
  v4 = [*(a1 + 32) defaultMapSettings];
  [v4 setZoomLevel:v3];
}

void sub_100590E94(uint64_t a1)
{
  v5 = [*(a1 + 32) mapView];
  [v5 _zoomLevel];
  v3 = v2;
  v4 = [*(a1 + 32) defaultMapSettings];
  [v4 setZoomLevel:v3];
}

void sub_100591570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

id sub_1005915A0(uint64_t a1)
{
  if ([*(a1 + 32) isRunningNavigationDisplay])
  {
    v2 = [*(a1 + 32) navigationDisplay];
    v3 = [v2 isCameraPanning];

    v4 = v3 ^ 1;
    if (v3)
    {
      v5 = 6;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      [v6 mapControlsConfiguration];
      v8 = v23;
      v7 = v24;
      v9 = v25;
    }

    else
    {
      v9 = 0;
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = v5;
  }

  v10 = v9;
  v11 = v7;
  v12 = v8;
  if ([*(a1 + 32) isAutohidingContentHiddenForCurrentContext])
  {
    v11 = 0;
    v12 = 0;
    *(*(*(a1 + 48) + 8) + 24) = v4;
    v10 = v5;
  }

  v13 = [*(a1 + 32) mapControlsOverlay];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v23 = v12;
  v24 = v11;
  v25 = v10;
  [v13 setConfiguration:&v23 withAnimation:WeakRetained];

  [*(a1 + 32) _reloadMapControlsInsetsForContext:*(a1 + 40)];
  LODWORD(v13) = [*(a1 + 32) isRunningNavigationDisplay];
  v15 = [*(a1 + 32) mapControlsOverlay];
  [v15 setTrackingButtonEnabled:v13 ^ 1];

  [*(a1 + 32) _update3DButton];
  [*(a1 + 32) _updateAudioControls];
  [*(a1 + 32) _updateAudioControlButton];
  v21 = v8 == 4 || v7 == 4 || v9 == 4 || v8 == 5 || v7 == 5 || v9 == 5;
  return [*(a1 + 32) _enableZoomGesture:v21];
}

id sub_100591750(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1005917CC;
  v2[3] = &unk_101661B18;
  v2[4] = *(a1 + 32);
  return [UIView performWithoutAnimation:v2];
}

void sub_100591A08(uint64_t a1)
{
  v1 = [*(a1 + 32) statusBannerOverlay];
  [v1 reloadAnimated:0];
}

void sub_100591A50(uint64_t a1)
{
  v2 = [*(a1 + 32) _hideStatusBanner];
  v3 = [*(a1 + 32) statusBannerOverlay];
  [v3 setHidden:v2 animated:*(a1 + 40)];
}

void sub_100591DD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 accessoriesOverlay];
  [v2 configureAccessoriesOverlay:v3 forContext:*(a1 + 40)];

  [*(a1 + 32) _reloadAccessoriesInsetsForContext:*(a1 + 40)];
  v4 = [*(a1 + 32) accessoriesOverlay];
  [v4 reloadAnimated:0];
}

void sub_100591E5C(uint64_t a1)
{
  v2 = [*(a1 + 32) _areAccessoriesHiddenForCurrentContext];
  v3 = [*(a1 + 32) accessoriesOverlay];
  [v3 setHidden:v2 animated:*(a1 + 40)];
}

uint64_t sub_100592630(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100592658(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v12 = [*(a1 + 32) mapControlsOverlay];
      v9 = [v12 focusOrderSubItems];

      if ([v16 flipForRHD])
      {
        v13 = [v9 reverseObjectEnumerator];
        v14 = [v13 allObjects];

        v9 = v14;
      }

      [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v9];
      goto LABEL_13;
    }

    if (a3 != 1)
    {
      goto LABEL_14;
    }

    v5 = *(a1 + 32);
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = [v5 cardsOverlay];
    goto LABEL_8;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      goto LABEL_14;
    }

    v8 = *(a1 + 32);
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = [v8 statusBannerOverlay];
LABEL_8:
    v9 = v7;
    v10 = [v7 focusOrderSubItems];
LABEL_9:
    v11 = v10;
    [v6 addObjectsFromArray:v10];

LABEL_13:
    goto LABEL_14;
  }

  if ([*(a1 + 32) _canSelectAlternateRoutes])
  {
    v15 = *(a1 + 32);
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [v15 routeSelectionController];
    v10 = [v9 focusableRouteItems];
    goto LABEL_9;
  }

LABEL_14:
}

void sub_1005927B8(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(*(a1 + 56) + 8) + 40) removeAllObjects];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v3 items];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v24 + 1) + 8 * v8) ifFocusItem:*(a1 + 40) ifRepresentativeItem:*(a1 + 48)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v9 = *(*(*(a1 + 56) + 8) + 40);
  v10 = [NSPredicate predicateWithBlock:&stru_101622678];
  [v9 filterUsingPredicate:v10];

  v11 = +[UIApplication sharedApplication];
  v12 = [v11 userInterfaceLayoutDirection];

  if (v12 == 1)
  {
    v13 = [*(*(*(a1 + 56) + 8) + 40) reverseObjectEnumerator];
    v14 = [v13 allObjects];
    v15 = [v14 mutableCopy];
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    v18 = [*(a1 + 32) firstObject];
    v19 = [v18 items];
    v20 = [v19 firstObject];

    if (v20)
    {
      [*(*(*(a1 + 56) + 8) + 40) addObject:v20];
    }

    v21 = *(a1 + 32);
    v22 = [*(*(*(a1 + 56) + 8) + 40) copy];
    v23 = +[_UIFocusLinearMovementSequence sequenceWithItems:loops:restrictEnteringSequence:](_UIFocusLinearMovementSequence, "sequenceWithItems:loops:restrictEnteringSequence:", v22, [v3 isLooping], 0);
    [v21 insertObject:v23 atIndex:0];
  }
}

void sub_100592A3C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3 == 3)
  {
    v13 = v5;
    v10 = *(a1 + 32);
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = [v10 statusBannerOverlay];
  }

  else if (a3 == 1)
  {
    v13 = v5;
    v9 = *(a1 + 32);
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = [v9 cardsOverlay];
  }

  else
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v13 = v5;
    v6 = *(a1 + 32);
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = [v6 mapControlsOverlay];
  }

  v11 = v8;
  v12 = [v8 preferredFocusEnvironments];
  [v7 addObjectsFromArray:v12];

  v5 = v13;
LABEL_8:
}

BOOL sub_1005933C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 nextFocusedItem];

  return v4 == v3;
}

BOOL sub_100593418(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 previouslyFocusedItem];

  return v4 == v3;
}

void sub_1005934FC(uint64_t a1)
{
  if ([*(a1 + 32) isSuppressed])
  {
    v2 = sub_100006E1C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v12 = 134349056;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[%{public}p] Will not respond to focus deferral, chrome is suppressed", &v12, 0xCu);
    }
  }

  else if (*(*(a1 + 32) + 720) == 1)
  {
    v4 = +[CarDisplayController sharedInstance];
    v5 = [v4 window];
    v6 = [v5 windowScene];
    v7 = [v6 focusSystem];
    v8 = [v7 focusedItem];

    if (!v8)
    {
      v9 = sub_100006E1C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 32);
        v12 = 134349056;
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Restoring focus in response to focus deferral change", &v12, 0xCu);
      }

      v11 = [*(a1 + 32) topContext];
      objc_storeWeak((*(a1 + 32) + 712), v11);

      [*(a1 + 32) setNeedsFocusUpdate];
      [*(a1 + 32) updateFocusIfNeeded];
    }
  }
}

void sub_100596A88(uint64_t a1)
{
  v2 = sub_10004F508();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v10 = 134349056;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Will change mapView light level", &v10, 0xCu);
  }

  v4 = [*(a1 + 32) mapView];
  [v4 setCustomOverrideInterfaceStyle:*(a1 + 40)];

  v5 = [*(a1 + 32) mapReplacementColor];
  v6 = [v5 CGColor];
  v7 = [*(a1 + 32) mapView];
  v8 = [v7 _mapLayer];
  [v8 setBackgroundColor:v6];

  v9 = [*(a1 + 32) mapView];
  [v9 layoutIfNeeded];
}

void sub_100598094(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentAnyPendingAlert:*(a1 + 40)];
}

void sub_1005984E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [NSNumber numberWithInteger:a2];
    v11 = 134349314;
    v12 = WeakRetained;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Search refinement controller did complete (selectedIndex:%@)", &v11, 0x16u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
  }

  v8 = sub_100006E1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_loadWeakRetained((a1 + 40));
    v11 = 134349056;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Will dismiss search refinement controller", &v11, 0xCu);
  }

  v10 = objc_loadWeakRetained((a1 + 40));
  [v10 dismissViewControllerAnimated:1 completion:0];
}

void sub_10059866C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Will dismiss search refinment controller", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:a2 completion:0];
}

void sub_100599AE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 176));
  _Unwind_Resume(a1);
}

void sub_100599B0C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, a4);
  }

  v9 = *(a1 + 56);
  if (v9 == 5)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"LocationAuthorizationDismissedNotification" object:0];

    v9 = *(a1 + 56);
  }

  if (v9 == 7)
  {
    if (a4 == 1)
    {
      v11 = sub_100006E1C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        *v17 = 134349056;
        *&v17[4] = v15;
        v13 = "[%{public}p] CarChromeViewController: user accepted End Navigation prompt";
        goto LABEL_15;
      }
    }

    else
    {
      if (a4)
      {
        if (a4 != -1)
        {
          goto LABEL_17;
        }

        v11 = sub_100006E1C();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          goto LABEL_16;
        }

        v12 = *(a1 + 32);
        *v17 = 134349056;
        *&v17[4] = v12;
        v13 = "[%{public}p] CarChromeViewController: superseded End Navigation prompt";
        goto LABEL_15;
      }

      v11 = sub_100006E1C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 32);
        *v17 = 134349056;
        *&v17[4] = v14;
        v13 = "[%{public}p] CarChromeViewController: user canceled End Navigation prompt";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v13, v17, 0xCu);
      }
    }

LABEL_16:
  }

LABEL_17:
  if (a3 != 3)
  {
    [*(a1 + 32) _dismissAlertViewController:v7 animated:1];
  }

  if ([*(a1 + 40) count] && objc_msgSend(*(a1 + 40), "count") > a4)
  {
    v16 = [*(a1 + 40) objectAtIndexedSubscript:a4];
    [v16 fire];
  }
}

void sub_100599D14(uint64_t a1)
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained alertTitle];
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 alertTitle];
    v9 = [v8 length];
    if (v9 > 0x13)
    {
      v10 = 20;
    }

    else
    {
      v14 = objc_loadWeakRetained((a1 + 40));
      v1 = [v14 alertTitle];
      v10 = [v1 length];
    }

    v11 = [v6 substringToIndex:v10];
    *buf = 134349314;
    v16 = v4;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Alert was dismissed %@", buf, 0x16u);
    if (v9 <= 0x13)
    {
    }
  }

  v12 = *(a1 + 32);
  v13 = objc_loadWeakRetained((a1 + 40));
  [v12 _dismissAlertViewController:v13 animated:1];
}

id sub_10059A284(uint64_t a1)
{
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v45;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v45 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v44 + 1) + 8 * i);
        if ([*(a1 + 40) containsObject:v7] & 1) == 0 && (objc_opt_respondsToSelector())
        {
          [v7 setChromeViewController:0];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v4);
  }

  [*(a1 + 48) _preserveFocusedItemFromContext:*(a1 + 56) toContext:*(a1 + 64)];
  objc_storeWeak((*(a1 + 48) + 712), *(a1 + 64));
  v8 = sub_100006E1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    if (!v10)
    {
      v15 = @"<nil>";
LABEL_20:

      v16 = v15;
      v17 = *(a1 + 64);
      if (!v17)
      {
        v22 = @"<nil>";
        goto LABEL_28;
      }

      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      if (objc_opt_respondsToSelector())
      {
        v20 = [v17 performSelector:"accessibilityIdentifier"];
        v21 = v20;
        if (v20 && ![v20 isEqualToString:v19])
        {
          v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

          goto LABEL_26;
        }
      }

      v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_26:

LABEL_28:
      if (*(a1 + 72))
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v24 = v23;
      *buf = 134349826;
      v49 = v9;
      v50 = 2112;
      v51 = v16;
      v52 = 2112;
      v53 = v22;
      v54 = 2112;
      v55 = v24;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] %@ => %@ (animated:%@)", buf, 0x2Au);

      goto LABEL_32;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [v10 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        v15 = [NSString stringWithFormat:@"%@<%p, %@>", v12, v10, v14];

        goto LABEL_18;
      }
    }

    v15 = [NSString stringWithFormat:@"%@<%p>", v12, v10];
LABEL_18:

    goto LABEL_20;
  }

LABEL_32:

  if (*(a1 + 72) == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      v25 = [*(a1 + 64) showsMapView];
    }

    else
    {
      v25 = 1;
    }
  }

  else
  {
    v25 = 0;
  }

  [*(a1 + 48) updateCardsForContext:*(a1 + 64) animated:v25 completion:0];
  v26 = [*(a1 + 48) navigationDisplay];
  if (v26)
  {
    v27 = v26;
    v28 = objc_opt_respondsToSelector();

    if (v28)
    {
      v29 = sub_100006E1C();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = *(a1 + 48);
        *buf = 134349056;
        v49 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "[%{public}p] Will configure navigation display for incoming context", buf, 0xCu);
      }

      v31 = [*(a1 + 48) navigationDisplay];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10059A958;
      v42[3] = &unk_10164F208;
      v43 = *(a1 + 64);
      [v31 configureDisplay:v42 animated:*(a1 + 72)];
    }
  }

  [*(a1 + 48) _reloadFocusContainerGuidesForContext:*(a1 + 64)];
  if (objc_opt_respondsToSelector())
  {
    v32 = [*(a1 + 48) mapControlsOverlay];
    [v32 setTrackingController:0];
  }

  if (objc_opt_respondsToSelector())
  {
    v33 = [*(a1 + 48) mapControlsOverlay];
    v34 = [*(a1 + 64) trackingController];
    [v33 setTrackingController:v34];
  }

  v35 = *(a1 + 64);
  if ([v35 conformsToProtocol:&OBJC_PROTOCOL___NavAudioControlViewDelegate])
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;

  v38 = [*(a1 + 48) mapControlsOverlay];
  [v38 setAudioControlDelegate:v37];

  v39 = *(a1 + 48);
  v40 = [v39 topContext];
  LODWORD(v39) = [v39 _autohidingContentIsHiddenForContext:v40];

  if (v39)
  {
    [*(a1 + 48) setAutohidingContentHiddenForCurrentContext:0];
  }

  [*(a1 + 48) _requestAutohideBehaviorForContext:*(a1 + 64)];
  [*(a1 + 48) _updateAutohideBehavior];
  return [*(a1 + 48) updateHardwareBackButtonBehavior];
}

id sub_10059A874(uint64_t a1)
{
  [*(a1 + 32) _updateNudgerizer];
  [*(a1 + 32) _updateRouteSelectionController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) isDisplayingNavigation];
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (![*(a1 + 32) isDisplayingNavigation] || (isKindOfClass & 1) != 0 || *(a1 + 40) && (objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend(*(a1 + 40), "shouldTimeoutDuringNavigation"))
  {
LABEL_3:
    v2 = *(a1 + 32);

    return [v2 _stopNavigationObscuredTimeout];
  }

  v5 = *(a1 + 32);

  return [v5 _startNavigationObscuredTimeout];
}

UIColor *__cdecl sub_10059B728(id a1, UITraitCollection *a2)
{
  if ([(UITraitCollection *)a2 userInterfaceStyle]== 2)
  {
    +[UIColor lightTextColor];
  }

  else
  {
    +[UIColor darkTextColor];
  }
  v2 = ;
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v2 CGColor]);

  return v3;
}

void sub_10059D86C(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = &OBJC_IVAR___CarUserInputCell__keyboardEnabledConstraints;
  }

  else
  {
    v2 = &OBJC_IVAR___CarUserInputCell__keyboardDisabledConstraints;
  }

  [NSLayoutConstraint deactivateConstraints:*(*(a1 + 32) + *v2)];
  if (*(a1 + 40))
  {
    v3 = &OBJC_IVAR___CarUserInputCell__keyboardDisabledConstraints;
  }

  else
  {
    v3 = &OBJC_IVAR___CarUserInputCell__keyboardEnabledConstraints;
  }

  [NSLayoutConstraint activateConstraints:*(*(a1 + 32) + *v3)];
  if (*(a1 + 40))
  {
    v4 = &OBJC_IVAR___CarUserInputCell__keyboardDisabledConstraints;
  }

  else
  {
    v4 = &OBJC_IVAR___CarUserInputCell__keyboardEnabledConstraints;
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + *v4);

  objc_storeStrong((v5 + 40), v6);
}

uint64_t sub_10059D91C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(*(a1 + 32) + 16) setAlpha:(*(a1 + 56) ^ 1u)];
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10059D99C(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) contentView];
  [v2 layoutIfNeeded];
}

void sub_10059FCD4(uint64_t a1)
{
  v1 = [*(a1 + 32) registrationWithCellClass:objc_opt_class() configurationHandler:&stru_1016228A0];
  v2 = qword_10195CAB8;
  qword_10195CAB8 = v1;
}

void sub_10059FD34(id a1, HomeSearchStatusOutlineCell *a2, NSIndexPath *a3, MapsUIDiffableDataSourceOutlineNodeSnapshot *a4)
{
  v8 = a2;
  v5 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)a4 viewModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [(HomeSearchStatusOutlineCell *)v8 setCellModel:v7];
}

void sub_1005A0BFC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionStateManager");
  v2 = qword_10195CAC8;
  qword_10195CAC8 = v1;
}

void sub_1005A4064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005A4088(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setRequestingRide:0];
    if ([v3 rideStatusError] == 1)
    {
      if ([v3 phase])
      {
        v6 = objc_loadWeakRetained(v5 + 30);
        v7 = [v6 containerViewController];
        [v7 updateForDismissingDetailsPickingAnimated:0];

        v8 = objc_loadWeakRetained(v5 + 30);
        v9 = [v3 application];
        v10 = [v9 identifier];
        [v8 presentConfirmedRideWithApplicationIdentifier:v10];

        goto LABEL_11;
      }

      v16 = [RidesharingErrorAlertProvider alloc];
      v12 = [v3 application];
      v13 = [v3 userActivity];
      v14 = v16;
      v15 = 1;
    }

    else
    {
      v11 = [RidesharingErrorAlertProvider alloc];
      v12 = [v3 application];
      v13 = [v3 userActivity];
      v14 = v11;
      v15 = 0;
    }

    v8 = [(RidesharingErrorAlertProvider *)v14 _initWithCause:v15 application:v12 activity:v13];

    v17 = [v5[32] analyticsBookingSession];
    v18 = [v8 title];
    [v17 captureErrorMessage:v18];

    v19 = [v5 coordinator];
    v20 = [v19 containerViewController];
    v21 = [v20 chromeViewController];
    v22 = [v21 _maps_mapsSceneDelegate];
    v23 = [v22 topMostPresentedViewController];

    v24 = objc_loadWeakRetained(v5 + 30);
    [v24 viewController:v23 presentErrorAlertIfNeeded:v8];

    goto LABEL_11;
  }

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v25 = 136446722;
    v26 = "RidesharingDetailsPickingViewController.m";
    v27 = 1026;
    v28 = 435;
    v29 = 2082;
    v30 = "[RidesharingDetailsPickingViewController _requestRide]_block_invoke";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v25, 0x1Cu);
  }

LABEL_11:
}

void sub_1005A47C8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 248) requiresPassengerSelection])
  {
    v2 = [*(a1 + 32) requestRideStatus];
    v3 = [RidesharingPartySizeSelectionAlertController ridesharingPartySizeSelectionAlertControllerWithRequestRideStatus:v2];

    objc_initWeak(&location, *(a1 + 32));
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_1005A49B0;
    v12 = &unk_101622910;
    objc_copyWeak(&v13, &location);
    [v3 setDidFinishSelectingPartySize:&v9];
    v4 = [*(*(a1 + 32) + 168) actionButtonStackView];
    v5 = [v4 arrangedSubviews];
    v6 = [v5 firstObject];
    v7 = [v3 popoverPresentationController];
    [v7 setSourceView:v6];

    [*(a1 + 32) presentViewController:v3 animated:1 completion:0];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = *(a1 + 32);

    [v8 _requestRide];
  }
}

void sub_1005A496C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005A49B0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = [WeakRetained requestRideOptionProxy];
      [v6 updateRequestRidePassengers:v3];

      [v5 _requestRide];
    }

    else
    {
      WeakRetained[216] = 0;
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "RidesharingDetailsPickingViewController.m";
      v10 = 1026;
      v11 = 345;
      v12 = 2082;
      v13 = "[RidesharingDetailsPickingViewController _request]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void sub_1005A5B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005A5B60(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _selectPaymentType];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "RidesharingDetailsPickingViewController.m";
      v9 = 1026;
      v10 = 126;
      v11 = 2082;
      v12 = "[RidesharingDetailsPickingViewController viewDidLoad]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void sub_1005A5C80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _openApp];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "RidesharingDetailsPickingViewController.m";
      v6 = 1026;
      v7 = 134;
      v8 = 2082;
      v9 = "[RidesharingDetailsPickingViewController viewDidLoad]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void -[CarSharedTripDetailCardViewController _blockUpdatesButtonPressed:](CarSharedTripDetailCardViewController *self, SEL a2, id a3)
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sharedTripDetailCard:self didSelectAction:1];
}

id sub_1005A8514()
{
  if (qword_10195CAE0 != -1)
  {
    dispatch_once(&qword_10195CAE0, &stru_101622958);
  }

  v1 = qword_10195CAD8;

  return v1;
}

void sub_1005A8568(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ThermalWarning");
  v2 = qword_10195CAD8;
  qword_10195CAD8 = v1;
}

void sub_1005ABCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005ABCF8(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005ABDB8;
  v5[3] = &unk_101661340;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_1005ABDB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [WeakRetained editLocationMapView];
    [v3 setHidden:0];

    v4 = [v9 editLocationMapView];
    v5 = [v4 mapView];
    v6 = [*(a1 + 32) location];
    [v6 coordinate];
    [v5 setCenterCoordinate:1 animated:?];

    [v9[22] dismissViewControllerAnimated:1 completion:0];
    v7 = [v9 promptText];
    v8 = [v9 navigationItem];
    [v8 setPrompt:v7];

    [v9[23] setHidden:1];
    WeakRetained = v9;
  }
}

void sub_1005AE46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005AE4A4(uint64_t a1)
{
  +[MapsWelcomeScreenViewController _markWelcomeScreenAsDisplayed];
  byte_10195CAE8 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005AE558;
  v3[3] = &unk_101661760;
  v4 = *(a1 + 32);
  [WeakRetained dismissViewControllerAnimated:1 completion:v3];
}

uint64_t sub_1005AE558(uint64_t a1)
{
  v2 = sub_100005610();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "MapsWelcomeScreen: alert dismissed", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1005AEDE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005610();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "OpenLookAroundAction resolveMapItem: %@", &v11, 0xCu);
    }

    v8 = *(a1 + 32);
  }

  else
  {
    v8 = *(a1 + 32);
    if ([v5 count])
    {
      v9 = [v5 firstObject];

      v8 = v9;
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }
}

void sub_1005AFD64(id a1, MapsDebugTableSection *a2)
{
  v8 = a2;
  v2 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Enable Preflight" get:&stru_1016229D8 set:&stru_1016229F8];
  LODWORD(v3) = 1140457472;
  v4 = [(MapsDebugTableSection *)v8 addSliderRowWithTitle:@"Minimum number of results to display Index List" subtitleStringFormat:@"%1.0f results" min:&stru_101622A18 max:&stru_101622A38 get:0.0 set:v3];
  LODWORD(v5) = 26.0;
  v6 = [(MapsDebugTableSection *)v8 addSliderRowWithTitle:@"Minimum number of unique first letters to display index list" subtitleStringFormat:@"%1.0f letters" min:&stru_101622A58 max:&stru_101622A78 get:0.0 set:v5];
  v7 = [(MapsDebugTableSection *)v8 addSwitchRowWithTitle:@"Inject venue-go-inside style attribute" get:&stru_101622A98 set:&stru_101622AB8];
}

void sub_1005AFEF8(id a1, BOOL a2)
{
  GEOConfigSetBOOL();

  +[MapsMapDisplayDebugController completelyFlushTiles];
}

id sub_1005B0030()
{
  if (qword_10195CB08 != -1)
  {
    dispatch_once(&qword_10195CB08, &stru_101622BB8);
  }

  v1 = qword_10195CB00;

  return v1;
}

void sub_1005B0084(id a1)
{
  v1 = os_log_create("com.apple.Maps", "TrafficIncidentsStorageManager");
  v2 = qword_10195CB00;
  qword_10195CB00 = v1;
}

id sub_1005B0280(id a1, NSData *a2, unint64_t a3)
{
  v3 = a2;
  v9 = 0;
  v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];

  v5 = v9;
  if (v5)
  {
    v6 = sub_1005B0030();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "TrafficIncidentsStorageManager error decoding report %@", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

void sub_1005B0898(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1005B0914;
  v2[3] = &unk_101661B18;
  v3 = v1;
  [v3 submitWithCompletionHandler:v2];
}

void sub_1005B0914(uint64_t a1)
{
  v2 = sub_1005B0030();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "TrafficIncidentsStorageManager resubmitted last report : %@", &v4, 0xCu);
  }
}

void sub_1005B0DF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id sub_1005B0E0C()
{
  if (qword_10195CB18 != -1)
  {
    dispatch_once(&qword_10195CB18, &stru_101622BF8);
  }

  v1 = qword_10195CB10;

  return v1;
}

void sub_1005B0E60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1005B0E0C();
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "FetchingCollectionsListViewBatch", "", v11, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1005B0F5C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CuratedCollectionsListFetcher");
  v2 = qword_10195CB10;
  qword_10195CB10 = v1;
}

uint64_t sub_1005B1B14(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

double sub_1005B1E78(uint64_t a1, void *a2)
{
  if ([a2 row] == (*(a1 + 32) - 1))
  {
    return _UICollectionViewListSectionSeparatorInsetHidden;
  }

  else
  {
    return _UICollectionViewListLayoutSectionAutomaticDimension;
  }
}

void sub_1005B2620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005B2644(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] setImage:v5];
  }
}

void sub_1005B34EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005B3508(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[96] = 1;
    v3 = WeakRetained;
    v2 = [WeakRetained rowsGroup];
    [v2 checkmarkRowDidChangeChecked:v3];

    WeakRetained = v3;
  }
}

void sub_1005B3E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005B3E94(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v6 value];
      (*(v4 + 16))(v4, v5);
    }

    [WeakRetained update];
  }
}

void sub_1005B44A0(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 curatedGuides];
  v4 = [v3 count];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v7 curatedGuides];
    [v5 addObjectsFromArray:v6];
  }
}

void sub_1005B4738(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id sub_1005B475C()
{
  if (qword_10195CB28 != -1)
  {
    dispatch_once(&qword_10195CB28, &stru_101622CE0);
  }

  v1 = qword_10195CB20;

  return v1;
}

void sub_1005B47B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1005B475C();
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "FetchingGuidesHomeViewBatch", "", v12, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [WeakRetained setPlaceCollections:0];
    }

    else
    {
      [WeakRetained setPlaceCollections:v5];
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_1005B48CC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "GuidesHomeAPIController");
  v2 = qword_10195CB20;
  qword_10195CB20 = v1;
}

void sub_1005B4BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005B4BE8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = sub_1005B475C();
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "FetchingGuidesHomeView", "", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 || a3)
    {
      v16 = [WeakRetained stateHandler];
      (v16)[2](v16, [v10 state], 3);

      [v10 setState:3];
      goto LABEL_12;
    }

    if (*(a1 + 32))
    {
      v11 = [v5 filteredGuidesSection];
      v12 = [v11 filteredGuides];
      [v10 setFilteredCollections:v12];

      v13 = [v5 filteredGuidesSection];
      v14 = [v13 filteredGuideIds];
      [v10 setFilteredCollectionsIds:v14];
    }

    else
    {
      [WeakRetained setGuideHomeResult:v5];
      [v10 clearFilteredData];
      [v10 initializeSingleCollectionFromResponseIfApplicable];
      v17 = [v10 singlePlaceCollection];

      if (!v17)
      {
        goto LABEL_10;
      }

      v13 = sub_1007982D8();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Guides Home contains single guide in response, would be opening guide view.", v18, 2u);
      }
    }

LABEL_10:
    v15 = [v10 stateHandler];
    (v15)[2](v15, [v10 state], 2);

    [v10 setState:2];
    (*(*(a1 + 40) + 16))();
  }

LABEL_12:
}

void sub_1005B5CD0(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_10195CB30;
  qword_10195CB30 = v1;
}

id sub_1005B8AF4()
{
  if (qword_10195CB48 != -1)
  {
    dispatch_once(&qword_10195CB48, &stru_101622D40);
  }

  v1 = qword_10195CB40;

  return v1;
}

void sub_1005B8B48(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarTrafficAlertCardViewController");
  v2 = qword_10195CB40;
  qword_10195CB40 = v1;
}

void sub_1005B8D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005B8DBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissTrafficAlertWithResult:6];
}

void sub_1005BA280(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = [[_TtC8MapsSync22MapsSyncQueryPredicate alloc] initWithMinLatitude:WeakRetained[11] maxLatitude:WeakRetained[9] minLongitude:WeakRetained[12] maxLongitude:WeakRetained[10]];
    v4 = [_TtC8MapsSync22MapsSyncQueryPredicate alloc];
    v5 = +[MSCollectionPlaceItem excludeShadowItemsPredicate];
    v18[0] = v5;
    v18[1] = v3;
    v6 = [NSArray arrayWithObjects:v18 count:2];
    v7 = [v4 initWithAnd:v6];

    v8 = [[_TtC8MapsSync13MapsSyncRange alloc] initWithOffset:0 limit:*(WeakRetained + 14)];
    v9 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v7 sortDescriptors:0 range:v8];
    v10 = [_TtC8MapsSync20MapsSyncQueryOptions alloc];
    v11 = +[MSCollectionPlaceItem excludeShadowItemsPredicate];
    v12 = [v10 initWithPredicate:v11 sortDescriptors:0 range:0];

    v13 = objc_alloc_init(MSCollectionPlaceItemRequest);
    if (*(WeakRetained + 120))
    {
      v14 = v9;
    }

    else
    {
      v14 = v12;
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1005BA4D8;
    v15[3] = &unk_10162E3B8;
    objc_copyWeak(&v16, (a1 + 32));
    v17 = *(a1 + 40);
    [v13 fetchWithOptions:v14 completionHandler:v15];

    objc_destroyWeak(&v16);
  }
}

void sub_1005BA4D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[5];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005BA5B8;
    block[3] = &unk_101632728;
    objc_copyWeak(&v9, (a1 + 32));
    v8 = v3;
    v10 = *(a1 + 40);
    dispatch_async(v6, block);

    objc_destroyWeak(&v9);
  }
}

void sub_1005BA5B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reloadCollectionPlaceItemsWithContents:*(a1 + 32) dataChanged:*(a1 + 48)];
    WeakRetained = v3;
  }
}

void sub_1005BAB00(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

uint64_t sub_1005BAB58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1005BAB70(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1005BABC4(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

void sub_1005BAF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005BAF38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    GEOConfigGetDouble();
    WeakRetained[13] = v3;
    WeakRetained[14] = GEOConfigGetInteger();
    *(WeakRetained + 120) = GEOConfigGetBOOL();
    v4 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    [v4 subscribe:WeakRetained];

    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v5 = [NSArray arrayWithObjects:&v7 count:5];
    v6 = WeakRetained[16];
    WeakRetained[16] = v5;

    [WeakRetained mapViewRegionWillChange:{*(a1 + 32), v7, v8, v9, v10}];
    [WeakRetained storeDidChange:&__NSArray0__struct];
  }
}

void sub_1005BB69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005BB6C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setNeedsTablePartsUpdateWithSender:WeakRetained[6] scroll:0];
    WeakRetained = v2;
  }
}

void sub_1005BC930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005BC958(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (!a3 && WeakRetained)
  {
    v7 = [WeakRetained mapItem];
    v8 = [v7 _geoMapItem];
    v9 = [v8 _placeQuestionnaire];

    v10 = [v24 previousSubmission];
    v11 = [v10 images];
    v12 = [UGCPhotosForm editPhotosFormWithPlaceQuestionnaire:v9 previouslySubmittedImages:v11];

    v13 = [v24 previousSubmission];
    v14 = [v13 scorecard];
    v15 = [UGCRatingsForm editRatingFormWithPlaceQuestionnaire:v9 existingScorecard:v14];

    v16 = [*(a1 + 32) uid];
    [v12 removePhotoWithIdentifier:v16];

    v17 = +[UIApplication sharedMapsDelegate];
    v18 = [v17 submissionManager];

    v19 = [v6 mapItem];
    v20 = [UGCPOIEnrichmentForm addPOIEnrichmentFormWithMapItem:v19 photosForm:v12 ratingsForm:v15];

    v21 = [_TtC4Maps9UGCReport alloc];
    v22 = [v6 mapItem];
    v23 = [(UGCReport *)v21 initWithReportType:0 initialForm:v20 mapItem:v22 submitter:v18];

    if (MapsFeature_IsEnabled_ARPCommunityID())
    {
      -[UGCReport setShouldMigrateRatingsWithICloud:](v23, "setShouldMigrateRatingsWithICloud:", [v24 hasRatingsWithICloud]);
      [(UGCReport *)v23 submitRatingsAndPhotosWithUploadPolicy:1 progressBlock:0 completion:&stru_101622DE0];
    }

    else
    {
      [(UGCReport *)v23 submitRatingsAndPhotosSimultaneouslyUsingDSIDWithUploadPolicy:1 progressBlock:0 completion:&stru_101622E00];
    }
  }
}

void sub_1005BCBAC(id a1, GEORPFeedbackResponse *a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = sub_1007996E8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error with submission %@", &v5, 0xCu);
    }
  }

  else
  {
    [GEOAPPortal captureUserAction:331 target:76 value:0];
  }
}

void sub_1005BCC78(id a1, GEORPFeedbackResponse *a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = sub_1007996E8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error with submission %@", &v5, 0xCu);
    }
  }

  else
  {
    [GEOAPPortal captureUserAction:331 target:76 value:0];
  }
}

void sub_1005BCFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005BD000(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = sub_1007990B4();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Failed Sundew call when attempting to fetch with error %@", &v16, 0xCu);
      }

      v9 = [Result resultWithError:v6];
      v10 = *(WeakRetained + 24);
      *(WeakRetained + 24) = v9;
    }

    else if ([v5 attributePhotos])
    {
      v11 = [MUPlaceUserAttributionViewModel alloc];
      v12 = [v5 attributionName];
      v13 = [v11 initWithAttributionName:v12];
      v14 = [Result resultWithValue:v13];
      v15 = *(WeakRetained + 24);
      *(WeakRetained + 24) = v14;

      [*(WeakRetained + 16) reloadUserAttribution];
    }
  }
}

void sub_1005BD2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005BD2E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1005BD30C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1007990B4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "No view model to return with error %@", &v4, 0xCu);
  }
}

void sub_1005BE0BC(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = [a2 firstObject];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;
  }

  [*(a1 + 32) _invokeCompletionBlocksWithFinishedFlag:*(*(a1 + 32) + 24) != 0];
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  *(v7 + 8) = 0;
}

void sub_1005BEBF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005BEC20(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained[3] setCenterCoordinate:{a2, a3}];
    [v6 _didChangeCenterCoordinate:v6[3] fromEditLocationMapView:{a2, a3}];
    [v6[3] updateAnnotationTitleWithCenterCoordinate:{a2, a3}];
    [v6[9] dismissViewControllerAnimated:1 completion:0];
    WeakRetained = v6;
  }
}

void sub_1005BECD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[9] dismissViewControllerAnimated:1 completion:0];
    WeakRetained = v2;
  }
}

void sub_1005BFC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005BFC58(uint64_t a1)
{
  v2 = sub_100014EFC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "low light level timer fired", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAmbientLightLevel:{objc_msgSend(WeakRetained, "_computedLightLevel")}];
  [WeakRetained setDarkUpdateTimer:0];
}

void sub_1005BFCF0(uint64_t a1)
{
  v2 = sub_100014EFC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "regular light level timer fired", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAmbientLightLevel:{objc_msgSend(WeakRetained, "_computedLightLevel")}];
  [WeakRetained setLightUpdateTimer:0];
}

void sub_1005C065C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  if (IOHIDEventGetType() == 12)
  {
    [v5 _handleIOHIDEvent:a4];
  }
}

id sub_1005C3618()
{
  if (qword_10195CB60 != -1)
  {
    dispatch_once(&qword_10195CB60, &stru_101622E60);
  }

  v1 = qword_10195CB58;

  return v1;
}

void sub_1005C366C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ARConfigurationRecording");
  v2 = qword_10195CB58;
  qword_10195CB58 = v1;
}

void sub_1005C3768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1005C3780(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 conformsToProtocol:&OBJC_PROTOCOL___VenuePlaceCardItem];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

void sub_1005C3C78(uint64_t a1)
{
  v2 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) _muid]);
  v10 = v2;
  v3 = [NSArray arrayWithObjects:&v10 count:1];
  v4 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"collections.@count == 0 AND muid == %@" argumentArray:v3];

  v5 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v4 sortDescriptors:0 range:0];
  v6 = [[_TtC8MapsSync13MapsSyncRange alloc] initWithOffset:0 limit:1];
  [v5 setRange:v6];

  v7 = objc_alloc_init(MSCollectionPlaceItemRequest);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005C3E14;
  v8[3] = &unk_101638B10;
  v9 = *(a1 + 40);
  [v7 countWithOptions:v5 completionHandler:v8];
}

void sub_1005C3E14(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005C3ED0;
  block[3] = &unk_1016589F8;
  v9 = *(a1 + 32);
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1005C3FA4(uint64_t a1)
{
  v2 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) _muid]);
  v9 = v2;
  v3 = [NSArray arrayWithObjects:&v9 count:1];
  v4 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"collections.@count == 0 AND muid == %@" argumentArray:v3];

  v5 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v4 sortDescriptors:0 range:0];
  v6 = objc_alloc_init(MSCollectionPlaceItemRequest);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005C4114;
  v7[3] = &unk_10165EB78;
  v8 = *(a1 + 40);
  [v6 fetchWithOptions:v5 completionHandler:v7];
}

void sub_1005C4114(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1005C4280;
    v9[3] = &unk_1016610B8;
    v8 = &v10;
    v10 = *(a1 + 32);
    [v7 deleteWithObjects:v5 completionHandler:v9];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005C426C;
    block[3] = &unk_101661090;
    v8 = &v13;
    v13 = *(a1 + 32);
    v12 = v6;
    dispatch_async(&_dispatch_main_q, block);
    v7 = v12;
  }
}

void sub_1005C4280(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005C432C;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_1005C43F4(uint64_t a1)
{
  v2 = objc_alloc_init(MSCollectionPlaceItem);
  v3 = [*(a1 + 32) name];
  [v2 setCustomName:v3];

  v4 = [*(a1 + 32) _geoMapItem];
  v5 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v4];
  [v2 setMapItemStorage:v5];

  v6 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v10 = v2;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005C4568;
  v8[3] = &unk_1016610B8;
  v9 = *(a1 + 40);
  [v6 saveWithObjects:v7 completionHandler:v8];
}

void sub_1005C4568(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005C4614;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_1005C494C(uint64_t a1)
{
  v2 = [*(a1 + 32) datePicker];
  v3 = [v2 date];
  GEOConfigSetDate();

  v4 = [*(a1 + 40) tableView];
  v6 = *(a1 + 48);
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v4 reloadRowsAtIndexPaths:v5 withRowAnimation:100];
}

void sub_1005C5374(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 name];
  v6 = [NSString stringWithFormat:@"%u - %@", a3, v5];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005C5460;
  v9[3] = &unk_101622ED8;
  v7 = *(a1 + 32);
  v9[4] = *(a1 + 40);
  v9[5] = a3;
  v8 = [UIAlertAction actionWithTitle:v6 style:0 handler:v9];
  [v7 addAction:v8];
}

void sub_1005C602C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v16 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v18 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_1005C606C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1005C6084(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [v5 setText:*(a1 + 32)];
    [v5 addTarget:WeakRetained action:"_textFieldValueDidChange:" forControlEvents:0x20000];
    [v5 setAutocapitalizationType:0];
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_1005C612C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    v4 = [*(*(*(a1 + 40) + 8) + 40) text];
    (*(v3 + 16))(v3, v4);

    WeakRetained = v5;
  }
}

void sub_1005C621C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    v4 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [*(*(a1 + 32) + 8) count], 0);
    [*(*(a1 + 32) + 8) addObject:v3];
    v5 = [*(a1 + 32) tableView];
    v8 = v4;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
    [v5 insertRowsAtIndexPaths:v6 withRowAnimation:100];

    v7 = [NSSet setWithArray:*(*(a1 + 32) + 8)];
    GEOConfigSetSet();
  }
}

void sub_1005C6494(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeObjectAtIndex:{objc_msgSend(*(a1 + 40), "row")}];
  v2 = [*(a1 + 32) tableView];
  v5 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  [v2 deleteRowsAtIndexPaths:v3 withRowAnimation:100];

  v4 = [NSSet setWithArray:*(*(a1 + 32) + 8)];
  GEOConfigSetSet();
}

void sub_1005C6750(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 length];
  v5 = *(*(a1 + 32) + 8);
  v6 = [*(a1 + 40) row];
  if (v4)
  {
    [v5 setObject:v3 atIndexedSubscript:v6];
    v7 = *(a1 + 48);
    v11 = *(a1 + 40);
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    [v7 reloadRowsAtIndexPaths:v8 withRowAnimation:100];
  }

  else
  {
    [v5 removeObjectAtIndex:v6];
    v8 = [*(a1 + 32) tableView];
    v10 = *(a1 + 40);
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [v8 deleteRowsAtIndexPaths:v9 withRowAnimation:100];
  }
}

void sub_1005C785C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);
  v10 = 0;
  [v3 pruneEntriesOlderThan:v2 error:&v10];
  v4 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005C7920;
  block[3] = &unk_101661A90;
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, block);
  [*(a1 + 32) _reloadLogsAsync];
}

id sub_1005C7920(id result)
{
  v1 = *(result + 4);
  if (v1)
  {
    return [*(result + 5) _showError:v1 forTask:@"Flushing DB"];
  }

  return result;
}

void sub_1005C7C44(uint64_t a1)
{
  v2 = dispatch_get_global_queue(25, 0);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005C7CEC;
  v4[3] = &unk_101661A90;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void sub_1005C7CEC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v13 = 0;
  v3 = [v2 restoreOrphanedEntries:&v13];
  v4 = v13;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005C7DD8;
  block[3] = &unk_101623EA0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v12 = v3;
  v11 = v4;
  v7 = v4;
  dispatch_async(&_dispatch_main_q, block);
  [*(a1 + 32) _reloadLogsSync];
}

void sub_1005C7DD8(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005C7E74;
  v3[3] = &unk_101660590;
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3[4] = *(a1 + 40);
  v5 = *(a1 + 56);
  v4 = v2;
  [v1 dismissViewControllerAnimated:1 completion:v3];
}

void sub_1005C8148(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = [*(a1 + 32) tableView];
  [v5 reloadData];
}

void sub_1005C8464(uint64_t a1)
{
  v2 = *(a1 + 72);
}

uint64_t sub_1005CADD4(void *a1)
{
  [MapsRadarController _processAttachments:a1[4] logFolderPath:a1[5]];
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1005CB254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005CB28C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1005CB2A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100008F18();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    *buf = 134349314;
    *&buf[4] = WeakRetained;
    *&buf[12] = 2112;
    *&buf[14] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Generating attachments for %@", buf, 0x16u);
  }

  dispatch_group_enter(*(a1 + 32));
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = sub_1005CB28C;
  v16 = sub_1005CB29C;
  v17 = objc_opt_new();
  v6 = *(*&buf[8] + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005CBA84;
  v8[3] = &unk_101622FD8;
  objc_copyWeak(&v13, (a1 + 48));
  v7 = v3;
  v9 = v7;
  v12 = buf;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  [v7 generateAttachmentsForRadarDraft:v6 withCompletion:v8];

  objc_destroyWeak(&v13);
  _Block_object_dispose(buf, 8);
}

void sub_1005CB4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak((v11 + 64));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005CB4C8(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 removeObjectForKey:@"kMapsRadarControllerAttachmentGenerationInProgressKey"];

  v3 = sub_100008F18();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    *buf = 134349056;
    v58 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Finished collecting diagnostic attachments. Will log them below:", buf, 0xCu);
  }

  v5 = sub_100008F18();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_loadWeakRetained((a1 + 56));
    *buf = 134349056;
    v58 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] ***Attachments***", buf, 0xCu);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = [*(a1 + 32) attachments];
  v8 = [v7 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v52;
    *&v9 = 134349314;
    v41 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v51 + 1) + 8 * i);
        [v13 writeToTemporaryFolder];
        v14 = sub_100008F18();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = objc_loadWeakRetained((a1 + 56));
          *buf = v41;
          v58 = v15;
          v59 = 2112;
          v60 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] %@", buf, 0x16u);
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v10);
  }

  v16 = sub_100008F18();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = objc_loadWeakRetained((a1 + 56));
    *buf = 134349056;
    v58 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] ***Screenshots***", buf, 0xCu);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v18 = [*(a1 + 32) screenshots];
  v19 = [v18 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v19)
  {
    v21 = v19;
    v22 = *v48;
    *&v20 = 134349314;
    v42 = v20;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v48 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v47 + 1) + 8 * j);
        [v24 writeToTemporaryFolder];
        v25 = sub_100008F18();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = objc_loadWeakRetained((a1 + 56));
          *buf = v42;
          v58 = v26;
          v59 = 2112;
          v60 = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[%{public}p] %@", buf, 0x16u);
        }
      }

      v21 = [v18 countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v21);
  }

  v27 = sub_100008F18();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = objc_loadWeakRetained((a1 + 56));
    *buf = 134349056;
    v58 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%{public}p] ***Keywords***", buf, 0xCu);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = [*(a1 + 32) keywords];
  v30 = [v29 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v44;
    do
    {
      for (k = 0; k != v31; k = k + 1)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v43 + 1) + 8 * k);
        v35 = sub_100008F18();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = objc_loadWeakRetained((a1 + 56));
          *buf = 134349314;
          v58 = v36;
          v59 = 2112;
          v60 = v34;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "[%{public}p] %@", buf, 0x16u);
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v31);
  }

  v37 = sub_100008F18();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = objc_loadWeakRetained((a1 + 56));
    *buf = 134349056;
    v58 = v38;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "[%{public}p] ***Done***", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v39 = *(*(a1 + 48) + 8);
  v40 = *(v39 + 40);
  *(v39 + 40) = 0;
}

void sub_1005CBA84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = sub_100008F18();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = [*(*(*(a1 + 56) + 8) + 40) attachments];
      v6 = [*(*(*(a1 + 56) + 8) + 40) screenshots];
      v7 = [*(*(*(a1 + 56) + 8) + 40) keywords];
      *buf = 134350082;
      v15 = WeakRetained;
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Generated attachments for %@; attachments: %@, screenshots: %@, keywords: %@", buf, 0x34u);
    }

    v8 = WeakRetained[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005CBC58;
    block[3] = &unk_101660778;
    v12 = *(a1 + 40);
    v10 = *(a1 + 48);
    v9 = v10;
    v13 = v10;
    dispatch_async(v8, block);
  }
}

void sub_1005CBC58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(*(a1 + 48) + 8) + 40) attachments];
  [v2 addAttachments:v3];

  v4 = *(a1 + 32);
  v5 = [*(*(*(a1 + 48) + 8) + 40) screenshots];
  [v4 addScreenshots:v5];

  v6 = *(a1 + 32);
  v7 = [*(*(*(a1 + 48) + 8) + 40) keywords];
  [v6 addKeywords:v7];

  v8 = *(a1 + 32);
  v9 = [*(*(*(a1 + 48) + 8) + 40) collaborationContactHandles];
  [v8 addCollaborationContactHandles:v9];

  v10 = *(a1 + 32);
  v11 = [*(*(*(a1 + 48) + 8) + 40) notes];
  [v10 addNotes:v11];

  [*(a1 + 32) setCollectFullLogArchive:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "collectFullLogArchive") | objc_msgSend(*(a1 + 32), "collectFullLogArchive")}];
  v12 = *(a1 + 40);

  dispatch_group_leave(v12);
}

void sub_1005CC6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

id sub_1005CC760(uint64_t a1)
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v3 = dispatch_queue_get_label(0);
  if (label != v3)
  {
    v4 = !label || v3 == 0;
    if (v4 || strcmp(label, v3))
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = 136316418;
        v22 = "[MapsRadarController launchTTRWithRadar:promptTitle:fromViewController:]_block_invoke";
        v23 = 2080;
        v24 = "MapsRadarController.m";
        v25 = 1024;
        v26 = 150;
        v27 = 2080;
        v28 = "dispatch_get_main_queue()";
        v29 = 2080;
        v30 = dispatch_queue_get_label(&_dispatch_main_q);
        v31 = 2080;
        v32 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v21, 0x3Au);
      }

      if (sub_100E03634())
      {
        v19 = sub_10006D178();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = +[NSThread callStackSymbols];
          v21 = 138412290;
          v22 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", &v21, 0xCu);
        }
      }
    }
  }

  v5 = +[NSDate date];
  v6 = +[NSFileManager _maps_globalCachesURL];
  v7 = [v6 URLByAppendingPathComponent:@"DiagnosticLogs"];
  v8 = [v7 path];

  v9 = [v8 stringByAppendingPathComponent:@"lastLaunchedTTR.txt"];

  v10 = +[NSFileManager defaultManager];
  [v10 removeItemAtPath:v9 error:0];

  if (v5)
  {
    v11 = +[NSFileManager defaultManager];
    v12 = +[NSFileManager _maps_globalCachesURL];
    v13 = [v12 URLByAppendingPathComponent:@"DiagnosticLogs"];
    v14 = [v13 path];

    [v11 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:0];
    [v5 timeIntervalSinceReferenceDate];
    v15 = [NSNumber numberWithDouble:?];
    v16 = [v15 stringValue];
    [v16 writeToFile:v9 atomically:1 encoding:4 error:0];
  }

  return [*(*(*(a1 + 40) + 8) + 40) launchTTRWithDisplayReason:*(a1 + 32)];
}

void sub_1005CCA90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _collectAttachmentsWithRadarDraft:*(*(*(a1 + 40) + 8) + 40) completion:*(a1 + 32)];
}

void sub_1005CCCA4(uint64_t a1)
{
  notify_post("com.apple.Maps.DEMapsExtension.CollectionAcknowledgement");
  v6 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[NSFileManager _maps_globalCachesURL];
  v4 = [v3 URLByAppendingPathComponent:@"DiagnosticLogs"];
  v5 = [v4 path];

  [WeakRetained _collectAndPersistAttachmentsWithRadarDraft:v6 logFolderPath:v5 completion:&stru_101622FB0];
}

void sub_1005CCD6C(uint64_t a1)
{
  v2 = sub_100008F18();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = 134349056;
    v11 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Got CarPlay TTR button notification", &v10, 0xCu);
  }

  v4 = objc_opt_new();
  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = +[NSFileManager _maps_globalCachesURL];
  v7 = [v6 URLByAppendingPathComponent:@"DiagnosticLogs"];
  v8 = [v7 path];

  v9 = [v8 stringByAppendingPathComponent:@"__CarPlay__"];

  [v5 _collectAndPersistAttachmentsWithRadarDraft:v4 logFolderPath:v9 completion:0];
}

void sub_1005CE1DC(uint64_t a1)
{
  v2 = [*(a1 + 32) mainMKMapView];
  [v2 _setLocationPulseEnabled:0];

  v3 = [*(a1 + 32) mainVKMapView];
  v4 = *(a1 + 32);
  if (*(a1 + 40))
  {
    [v4 performSelector:?];
  }

  else
  {
    [v3 _mapstest_jumpToCoords:*(v4 + 69) pitch:*(v4 + 96) yaw:*(v4 + 104) altitudeIsRegionSize:{*(v4 + 112), *(v4 + 80), *(v4 + 88)}];
  }

  objc_initWeak(&location, *(a1 + 32));
  v5 = +[VKDebugSettings sharedSettingsExt];
  *(*(a1 + 32) + 70) = [v5 layoutContinuously];

  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 setLayoutContinuously:1];

  v7 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005CE374;
  v8[3] = &unk_101661B98;
  objc_copyWeak(&v9, &location);
  [v7 addFullyDrawnCallback:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void sub_1005CE350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005CE374(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didFinishJumping];
}

void sub_1005CFC18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = *(a1 + 40);
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          (*(*(*(&v17 + 1) + 8 * i) + 16))(*(*(&v17 + 1) + 8 * i));
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = [NSArray arrayWithArray:v5];
    objc_setAssociatedObject(*(a1 + 32), &unk_10195CB98, v7, 1);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = *(a1 + 40);
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          (*(*(*(&v21 + 1) + 8 * j) + 16))();
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }
  }

  objc_setAssociatedObject(*(a1 + 32), &unk_10195CB99, 0, 1);
}

id sub_1005D031C()
{
  if (qword_10195CBA8 != -1)
  {
    dispatch_once(&qword_10195CBA8, &stru_101623080);
  }

  v1 = qword_10195CBA0;

  return v1;
}

void sub_1005D0378(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsLocationProviderUpdater");
  v2 = qword_10195CBA0;
  qword_10195CBA0 = v1;
}

void sub_1005D20EC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = sub_10000B11C();
  v10 = v9;
  v11 = *(a1 + 40);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v11, "CoordinatedContextChange", "", v13, 2u);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v7, v8, a4);
  }
}

void sub_1005D28C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D28DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1005D28F4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1005D2A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005D2A70(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t sub_1005D2B64(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    *a4 = 1;
  }

  return isKindOfClass & 1;
}

void sub_1005D3114(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id sub_1005D3138()
{
  if (qword_10195CBC8 != -1)
  {
    dispatch_once(&qword_10195CBC8, &stru_1016231B0);
  }

  v1 = qword_10195CBC0;

  return v1;
}

void sub_1005D318C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [WeakRetained setPlaceCollections:0];
      (*(*(a1 + 32) + 16))();
      v9 = sub_1005D3138();
      v10 = v9;
      v11 = *(a1 + 48);
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v11, "FetchingAllCollectionsViewBatch", "", buf, 2u);
      }
    }

    else
    {
      v12 = sub_1005D3138();
      v13 = v12;
      v14 = *(a1 + 48);
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *v15 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v14, "FetchingAllCollectionsViewBatch", "", v15, 2u);
      }

      [v8 setPlaceCollections:v5];
      (*(*(a1 + 32) + 16))();
    }
  }
}

void sub_1005D3310(id a1)
{
  v1 = os_log_create("com.apple.Maps", "AllCollectionsAPIController");
  v2 = qword_10195CBC0;
  qword_10195CBC0 = v1;
}

void sub_1005D3620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005D3644(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (!WeakRetained)
  {
    v16 = sub_1005D3138();
    v13 = v16;
    v14 = *(a1 + 48);
    if (v14 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v16))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v15 = buf;
    goto LABEL_9;
  }

  if (a4)
  {
    v11 = [WeakRetained stateHandler];
    (v11)[2](v11, [v10 state], 3);

    [v10 setState:3];
    v12 = sub_1005D3138();
    v13 = v12;
    v14 = *(a1 + 48);
    if (v14 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v12))
    {
      goto LABEL_10;
    }

    v29 = 0;
    v15 = &v29;
LABEL_9:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v14, "FetchingAllCollectionsView", "", v15, 2u);
LABEL_10:

    goto LABEL_11;
  }

  v17 = sub_1005D3138();
  v18 = v17;
  v19 = *(a1 + 48);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *v28 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v19, "FetchingAllCollectionsView", "", v28, 2u);
  }

  if (!v7)
  {
    v20 = [v10 allCollectionViewFilters];
    v21 = [v20 count];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  v22 = [v10 allCollectionViewFilters];
  v23 = [v22 count];

  if (v7 && !v23)
  {
    v24 = [v7 resultFilters];
    [v10 setFilters:v24];
  }

  if ([v8 count])
  {
    [v10 setCollectionResults:v8];
    v25 = [v7 collectionIdentifiers];
    [v10 setCollectionIds:v25];

    v26 = [v10 stateHandler];
    (v26)[2](v26, [v10 state], 2);

    [v10 setState:2];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
LABEL_22:
    v27 = [v10 stateHandler];
    (v27)[2](v27, [v10 state], 3);

    [v10 setState:3];
  }

LABEL_11:
}

void sub_1005D43E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendOtherEVStationsRequest];
}

void sub_1005D56F0(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 136));
  _Unwind_Resume(a1);
}

void sub_1005D5744(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (v1 == 1)
  {
    v3 = [WeakRetained chromeViewController];
    [v3 interruptAutohideForIncidentalInteraction];
  }

  else
  {
    v3 = [WeakRetained guidanceCardController];
    [v3 showTemporarilyHiddenJunctionViewAnimated:0];
  }
}

uint64_t sub_1005D57C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsTogglingETACard:0];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_1005D5824(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005D596C;
  block[3] = &unk_101623200;
  objc_copyWeak(&v4, (a1 + 40));
  v5 = *(a1 + 48);
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v4);
}

void sub_1005D58D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsTogglingETACard:0];

  v5 = objc_loadWeakRetained((a1 + 40));
  v3 = [v5 chromeViewController];
  v4 = objc_loadWeakRetained((a1 + 40));
  [v3 updateCardsForContext:v4 animated:0 completion:*(a1 + 32)];
}

void sub_1005D596C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained etaCardController];
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005D5A5C;
  v5[3] = &unk_101661108;
  objc_copyWeak(&v7, (a1 + 40));
  v6 = *(a1 + 32);
  [v3 setExpanded:1 animated:v4 completion:v5];

  objc_destroyWeak(&v7);
}

uint64_t sub_1005D5A5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsTogglingETACard:0];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_1005D5D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005D5DA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained etaCardController];
    v3 = [v2 isShowingShareETASuggestion];

    if (v3)
    {
      [GEOAPPortal captureUserAction:399 target:126 value:0];
    }

    [v4 setShareEtaDisclosureAutoDismissTimer:0];
    [v4 _updateShareButtonContentAndVisibility:1];
    WeakRetained = v4;
  }
}

void sub_1005D69D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005D69FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _ppt_notityETATrayUpdateCompleted];
}

void sub_1005D79A4(uint64_t a1)
{
  v1 = [*(a1 + 32) guidanceCardController];
  [v1 setNavigationGuidanceSignStyle:0];
}

void sub_1005D7AC4(uint64_t a1)
{
  v2 = +[MSPSharedTripService sharedInstance];
  [v2 removeSendingObserver:*(a1 + 32)];

  v3 = +[MNNavigationService sharedService];
  [v3 unregisterObserver:*(a1 + 32)];

  v4 = [*(a1 + 32) guidanceObserver];
  v5 = [*(a1 + 32) guidanceCardController];
  [v4 removeOutlet:v5];

  v6 = [*(a1 + 32) guidanceObserver];
  v7 = [*(a1 + 32) etaCardController];
  [v6 removeOutlet:v7];

  [NavJunctionViewController updateJunctionImageSizeForScreenSize:CGSizeZero.width, CGSizeZero.height];
  v8 = [*(a1 + 32) waypointController];
  [v8 unregisterObserver:*(a1 + 32)];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:*(a1 + 32) name:@"ManeuverBannerViewEVStationsNotification" object:0];
}

void sub_1005D7C0C(uint64_t a1)
{
  v1 = [*(a1 + 32) etaCardController];
  [v1 setExpanded:0 animated:0 completion:0];
}

void sub_1005D7D70(uint64_t a1)
{
  v2 = [*(a1 + 32) chromeViewController];
  [v2 setHardwareBackButtonBehavior:2 forContext:*(a1 + 32)];

  v3 = [*(a1 + 32) chromeViewController];
  v4 = [v3 mapView];
  [v4 _setApplicationState:2];

  v5 = [*(a1 + 32) chromeViewController];
  v6 = [v5 mapView];
  [v6 _setDisplayedSearchResultsType:0];

  v7 = +[MNNavigationService sharedService];
  [v7 registerObserver:*(a1 + 32)];

  v8 = +[MSPSharedTripService sharedInstance];
  [v8 addSendingObserver:*(a1 + 32)];

  v9 = [*(a1 + 32) waypointController];
  [v9 registerObserver:*(a1 + 32)];

  v10 = [*(a1 + 32) waypointController];
  v11 = [v10 displayedWaypoints];
  v12 = [*(a1 + 32) waypointsOverviewCardController];
  [v12 setWaypoints:v11];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:*(a1 + 32) selector:"_maneuverBannerViewEVStationsNotification:" name:@"ManeuverBannerViewEVStationsNotification" object:0];
}

void sub_1005D7EF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 cameraStyleManager];
  [v2 setCameraStyle:objc_msgSend(v3 animated:{"centerConsoleCameraStyle"), *(a1 + 40)}];

  v4 = +[MSPSharedTripService sharedInstance];
  v5 = [v4 receivers];
  v6 = [v5 count];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 contactSharingSuggestion];
    if (!v8)
    {

      goto LABEL_8;
    }

    v9 = *(*(a1 + 32) + 17);
  }

  else
  {
    v9 = v7[17];
  }

  if ((v9 & 1) == 0)
  {
    [*(a1 + 32) _updateShareETADisclosureAutoDismissTimer];
    *(*(a1 + 32) + 17) = 1;
  }

LABEL_8:
  [*(a1 + 32) _updateShareButtonContentAndVisibility:0];
  v10 = +[MNNavigationService sharedService];
  v11 = [v10 route];
  [*(a1 + 32) setCurrentRoute:v11];

  [*(a1 + 32) _captureCurrentNavigationModeState];
  v12 = [*(a1 + 32) chromeViewController];
  v13 = [v12 userLocationView];
  [v13 setMode:1 animated:*(a1 + 40)];

  [*(a1 + 32) _setupGuidanceDisplays:*(a1 + 40)];
  v14 = [*(a1 + 32) etaCardController];
  [v14 setExpanded:0 animated:*(a1 + 40) completion:0];

  v15 = [*(a1 + 32) etaCardController];
  [v15 updateContent];
}

void sub_1005D80A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[9] - 3) <= 3)
  {
    v2 = [v1 chromeViewController];
    [v2 interruptAutohideForIncidentalInteraction];
  }

  v5 = +[CarDisplayController sharedInstance];
  if ([v5 isCurrentlyConnectedToCarAppScene])
  {
    [v5 screenSize];
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  [NavJunctionViewController updateJunctionImageSizeForScreenSize:width, height];
}

void sub_1005D90E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  if (v20)
  {
    objc_destroyWeak(v21);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005D911C(uint64_t a1, double a2, double a3)
{
  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 134218240;
    v9 = a2;
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "_configureCard: user tapped at (%f,%f)", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUserSelectionAtPoint:{a2, a3}];
}

void sub_1005D91F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleETACardAnimated:1];
}

void sub_1005D9E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005D9E7C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v14 = WeakRetained;
    v5 = WeakRetained[12];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 objectForKeyedSubscript:@"name"];

          if (v10)
          {
            v11 = [v9 objectForKeyedSubscript:@"name"];
            v15[0] = _NSConcreteStackBlock;
            v15[1] = 3221225472;
            v15[2] = sub_1005DAABC;
            v15[3] = &unk_101661340;
            v15[4] = v9;
            objc_copyWeak(&v16, (a1 + 32));
            v12 = [v3 addButtonRowWithTitle:v11 action:v15];

            objc_destroyWeak(&v16);
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v13 = [NSString stringWithFormat:@"Path: %@", v14[13]];
    [v3 setFooter:v13];

    WeakRetained = v14;
  }
}

void sub_1005DA0BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1005DA2F4;
  v14[3] = &unk_101661B98;
  objc_copyWeak(&v15, (a1 + 32));
  v4 = [v3 addButtonRowWithTitle:@"Copy File Path" action:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1005DA368;
  v12[3] = &unk_101661B98;
  objc_copyWeak(&v13, (a1 + 32));
  v5 = [v3 addButtonRowWithTitle:@"Clear All Bookmarks" action:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1005DA498;
  v10[3] = &unk_101661B98;
  objc_copyWeak(&v11, (a1 + 32));
  v6 = [v3 addButtonRowWithTitle:@"Share Bookmark File" action:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005DA580;
  v8[3] = &unk_101661B98;
  objc_copyWeak(&v9, (a1 + 32));
  v7 = [v3 addButtonRowWithTitle:@"Add Current Search Framing" action:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
}

void sub_1005DA2B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1005DA2F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[13];
    v4 = WeakRetained;
    v3 = +[UIPasteboard generalPasteboard];
    [v3 setString:v2];

    WeakRetained = v4;
  }
}

void sub_1005DA368(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [UIAlertController alertControllerWithTitle:@"Alert" message:@"Do you want to clear list" preferredStyle:1];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1005DAA70;
    v5[3] = &unk_10165F220;
    v5[4] = WeakRetained;
    v3 = [UIAlertAction actionWithTitle:@"Yes" style:0 handler:v5];
    v4 = [UIAlertAction actionWithTitle:@"Cancel" style:0 handler:&stru_101623298];
    [v2 addAction:v3];
    [v2 addAction:v4];
    [WeakRetained presentViewController:v2 animated:1 completion:0];
  }
}

void sub_1005DA498(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [NSURL fileURLWithPath:WeakRetained[13]];
    v3 = [[MapsDebugFileExportController alloc] initWithFileAtURL:v2 presentingViewController:WeakRetained];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1005DAA14;
    v5[3] = &unk_101661B18;
    v6 = v2;
    v4 = v2;
    [(MapsDebugFileExportController *)v3 startWithCompletion:v5];
  }
}

void sub_1005DA580(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = +[UIApplication sharedMapsDelegate];
    v4 = [v3 appCoordinator];
    v5 = [v4 baseActionCoordinator];

    v6 = [v5 placeCardViewController];
    v7 = [v6 placeCardItem];
    v8 = [v7 mapItem];

    if (v8)
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = [v9 delegate];
      v11 = objc_loadWeakRetained((a1 + 32));
      v12 = [v10 allVisibleMapViewsForDebugController:v11];
      v13 = [v12 firstObject];

      v40 = [v13 camera];
      v14 = [v40 copy];
      [v14 setHeading:0.0];
      [v14 setPitch:0.0];
      v45[0] = @"latitude";
      [v14 centerCoordinate];
      v15 = [NSNumber numberWithDouble:?];
      v46[0] = v15;
      v45[1] = @"longitude";
      [v14 centerCoordinate];
      v17 = [NSNumber numberWithDouble:v16];
      v46[1] = v17;
      v45[2] = @"altitude";
      v18 = [NSNumber numberWithDouble:0.0];
      v46[2] = v18;
      v19 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:3];

      [v13 frame];
      if (v20 != 0.0)
      {
        [v13 frame];
        v22 = v21;
        [v13 frame];
        v24 = v22 / v23;
        *&v24 = v22 / v23;
        [v14 enclosingMapRectForAspectRatio:v24];
        if (v25 != 0.0)
        {
          [v13 frame];
          MKZoomLevelForScaleF();
          v27 = v26;
          v44[0] = v19;
          v43[0] = @"target_point";
          v43[1] = @"heading";
          [v40 heading];
          v28 = [NSNumber numberWithDouble:?];
          v44[1] = v28;
          v43[2] = @"pitch";
          [v40 pitch];
          v29 = [NSNumber numberWithDouble:?];
          v44[2] = v29;
          v43[3] = @"distance";
          [NSNumber numberWithDouble:v27];
          v30 = v39 = v5;
          v44[3] = v30;
          v31 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:4];

          v41[0] = @"name";
          v32 = [v8 name];
          v42[0] = v32;
          v41[1] = @"muid";
          v33 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 _muid]);
          v41[2] = @"data";
          v42[1] = v33;
          v42[2] = v31;
          v34 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];

          v5 = v39;
          [WeakRetained[12] addObject:v34];
          [WeakRetained saveFileAndReload];
        }
      }
    }

    else
    {
      [UIAlertController alertControllerWithTitle:@"Alert" message:@"Failed to save preferredStyle:must search for POI and have placecard", 1];
      v36 = v35 = v5;
      v37 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:&stru_1016232B8];
      [v36 addAction:v37];
      v38 = objc_loadWeakRetained((a1 + 32));
      [v38 presentViewController:v36 animated:1 completion:0];

      v5 = v35;
    }
  }
}

void sub_1005DAA14(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];
}

id sub_1005DAA70(uint64_t a1)
{
  [*(*(a1 + 32) + 96) removeAllObjects];
  v2 = *(a1 + 32);

  return [v2 saveFileAndReload];
}

void sub_1005DAABC(uint64_t a1)
{
  v32 = [*(a1 + 32) objectForKeyedSubscript:@"data"];
  v2 = [v32 objectForKeyedSubscript:@"target_point"];
  v3 = [v2 objectForKeyedSubscript:@"latitude"];
  [v3 doubleValue];
  v5 = v4;

  v6 = [v2 objectForKeyedSubscript:@"longitude"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v32 objectForKeyedSubscript:@"heading"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v32 objectForKeyedSubscript:@"pitch"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v32 objectForKeyedSubscript:@"distance"];
  [v15 doubleValue];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = [WeakRetained delegate];
  v18 = objc_loadWeakRetained((a1 + 40));
  v19 = [v17 allVisibleMapViewsForDebugController:v18];
  v20 = [v19 firstObject];

  v34.latitude = v5;
  v34.longitude = v8;
  MKMapPointForCoordinate(v34);
  [v20 bounds];
  MKMapRectMakeWithZoomLevel();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [v20 frame];
  v31 = [MKMapCamera _cameraLookingAtMapRect:v22 forViewSize:v24, v26, v28, v29, v30];
  [v31 setPitch:v14];
  [v31 setHeading:v11];
  [v20 setCamera:v31];
}

uint64_t sub_1005DB8C8(uint64_t a1)
{
  if (GEOConfigGetBOOL())
  {
    v2 = [*(a1 + 32) internalStackLessWaitingForPresentation];
    v3 = [*(a1 + 32) uikitPresentationStack];
    v4 = [NSString stringWithFormat:@"cardsStack.%@.%p.txt", objc_opt_class(), *(a1 + 32)];
    v5 = [NSString stringWithFormat:@"internal:\n%@\n\nuikit:\n%@", v2, v3];
    v6 = [MapsRadarTextAttachment attachmentWithFileName:v4 text:v5];

    [*(a1 + 40) addAttachment:v6];
  }

  v7 = *(*(a1 + 48) + 16);

  return v7();
}

uint64_t sub_1005DBD64(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

id sub_1005DC5F8(uint64_t a1)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v8 = [v7 presentingViewController];

        if (v8)
        {
          v9 = [v7 presentingViewController];
          [v9 dismissViewControllerAnimated:0 completion:0];
        }

        v10 = [v7 cardPresentationController];
        v11 = [v10 containerViewController];
        if (v11)
        {
          [v7 setModalPresentationStyle:7];
          [v7 setModalPresentationStyle:2];
          [v10 configureForSheetPresentationWithContainer:v11 layout:{objc_msgSend(v7, "retainedLayout")}];
        }

        else
        {
          v14 = sub_10006D178();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v29 = "[ContainerViewController _sequentiallyPresentViewControllers:allowAnimations:]_block_invoke";
            v30 = 2080;
            v31 = "ContainerViewController.m";
            v32 = 1024;
            v33 = 3087;
            v34 = 2080;
            v35 = "container != nil";
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
          }

          if (sub_100E03634())
          {
            v15 = sub_10006D178();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v23 = +[NSThread callStackSymbols];
              *buf = 138412290;
              v29 = v23;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }
          }
        }

        v12 = sub_10002A8B8();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(a1 + 40);
          *buf = 138412546;
          v29 = v13;
          v30 = 2112;
          v31 = v7;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@ presenting %@ for rebuild", buf, 0x16u);
        }

        [*(a1 + 40) _maps_topMostPresentViewController:v7 animated:0 completion:0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v16 = [v2 countByEnumeratingWithState:&v24 objects:v36 count:16];
      v4 = v16;
    }

    while (v16);
  }

  v17 = sub_10002A8B8();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 40);
    *buf = 138412290;
    v29 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%@ rebuild complete, unlocking queue", buf, 0xCu);
  }

  v19 = [*(a1 + 32) lastObject];
  [*(a1 + 40) setCurrentViewController:v19];

  v20 = [*(a1 + 40) currentViewController];
  v21 = [v20 view];
  [v21 setUserInteractionEnabled:1];

  return [*(a1 + 40) _unlockCardQueue];
}

id sub_1005DCE90(uint64_t a1)
{
  v2 = [*(a1 + 32) chromeViewController];
  [v2 dismissViewControllerAnimated:0 completion:0];

  v3 = sub_10002A8B8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@ Did dismiss for rebuild, sequentially presenting %@", &v7, 0x16u);
  }

  return [*(a1 + 32) _sequentiallyPresentViewControllers:*(a1 + 40) allowAnimations:*(a1 + 48)];
}

void sub_1005DD78C(uint64_t a1)
{
  v1 = [*(a1 + 32) cardPresentationController];
  [v1 setHidden:1];
}

void sub_1005DD7D4(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1005DD874;
    v4[3] = &unk_101661AE0;
    v5 = v3;
    v6 = *(a1 + 40);
    [v5 dismissViewControllerAnimated:0 completion:v4];
  }
}

void sub_1005DD874(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) cardPresentationController];
  [v2 setHidden:v1];
}

id sub_1005DDC54(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

id sub_1005DE880(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  [*(a1 + 32) contentHeightUpdatedWithValue:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);

  return [v3 _updateVisibleContentForLayout:v4];
}

id sub_1005DE8DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[98] == 1)
  {
    v3 = [v2 view];
    [v3 layoutIfNeeded];

    [*(a1 + 32) _completeStateIfNeeded];
    v4 = *(a1 + 32);
    v5 = [v4 currentViewController];
    [v5 heightForLayout:*(*(a1 + 32) + 280)];
    [v4 contentHeightUpdatedWithValue:?];
  }

  else
  {
    v2[99] = 1;
  }

  v6 = *(a1 + 32);

  return [v6 updateContaineeStackState];
}

id sub_1005DEFA0(uint64_t a1)
{
  v2 = [*(a1 + 32) currentViewController];
  [v2 heightForLayout:*(*(a1 + 32) + 280)];
  v4 = v3;

  v5 = [*(a1 + 32) view];
  [v5 layoutIfNeeded];

  [*(a1 + 32) contentHeightUpdatedWithValue:v4];
  v6 = *(a1 + 32);
  v7 = v6[35];

  return [v6 _updateVisibleContentForLayout:v7];
}

id sub_1005DF038(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 98) == 1)
  {
    [v2 containee:*(v2 + 288) didChangeLayout:*(v2 + 280)];
    v3 = [*(a1 + 32) currentViewController];
    [v3 didChangeLayout:*(*(a1 + 32) + 280)];

    v4 = *(a1 + 32);
    v5 = [v4 currentViewController];
    [v5 heightForLayout:*(*(a1 + 32) + 280)];
    [v4 contentHeightUpdatedWithValue:?];

    [*(a1 + 32) transitionEnded];
  }

  else
  {
    *(v2 + 99) = 1;
  }

  v6 = *(a1 + 32);

  return [v6 updateContaineeStackState];
}

uint64_t sub_1005DFC68(uint64_t a1)
{
  [*(a1 + 32) didPresentContainee:*(a1 + 40) finished:1];
  [*(a1 + 40) didBecomeCurrent];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_1005DFCD0(uint64_t a1)
{
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1)
  {
    *(*(a1 + 32) + 276) = 1;
    v2 = [*(a1 + 32) containeesHidden];
    v3 = [*(a1 + 40) cardPresentationController];
    [v3 setHidden:v2];

    [*(a1 + 32) _dismissPresentedViewControllersIfNeededForViewController:*(a1 + 40)];
  }

  result = [*(a1 + 32) suspendPropagatingEdgeInsetsForReason:@"container will present controller"];
  if (*(a1 + 40) && (*(a1 + 56) & 1) == 0)
  {
    v5 = *(*(a1 + 32) + 48);
    v6 = *(a1 + 48);

    return [v5 pushContaineeState:v6];
  }

  return result;
}

void sub_1005DFDC8(uint64_t a1)
{
  if (*(a1 + 48) != 1)
  {
    goto LABEL_11;
  }

  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 48);
  if (!v2)
  {
    v6 = [v3 popAll];
LABEL_7:
    v5 = v6;
    goto LABEL_8;
  }

  v4 = [v3 indexOfContainee:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [*(*(a1 + 40) + 48) popFromIndex:v4];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:
  if ([v5 count])
  {
    [*(a1 + 40) removeControllersFromStack:v5];
  }

LABEL_11:
  [*(a1 + 40) updateMapEdgeInsets];
  [*(a1 + 40) resumePropagatingEdgeInsets];
  [*(a1 + 40) assertPresentationStackAppearsCorrect];
  [*(a1 + 40) setContaineesHidden:{objc_msgSend(*(a1 + 40), "shouldHideCard")}];
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1)
  {
    *(*(a1 + 40) + 276) = 0;
  }
}

void sub_1005E06D0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 cardPresentationController];
  v7 = [v6 usingSheetPresentation];

  if (v7)
  {
    v8 = [v12 cardPresentationController];
    [v8 setHidden:0];
  }

  v9 = [*(*(a1 + 32) + 48) containeeStateForContainee:v12];
  if (v9)
  {
    goto LABEL_6;
  }

  v10 = [*(a1 + 40) lastObject];

  v11 = v12;
  if (v10 != v12)
  {
    v9 = [[ContaineeState alloc] initWithContainee:v12];
LABEL_6:
    [*(a1 + 48) pushContaineeState:v9];

    v11 = v12;
    goto LABEL_7;
  }

  *a4 = 1;
LABEL_7:
}

id sub_1005E07D0(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
  v2 = sub_10002A8B8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%@ Did dismiss for setControllerStack, sequentially presenting %@", &v6, 0x16u);
  }

  return [*(a1 + 40) _sequentiallyPresentViewControllers:*(a1 + 48) allowAnimations:0];
}

id sub_1005E08A0(uint64_t a1)
{
  [*(a1 + 32) didResignContainee:*(a1 + 40) finished:1];
  result = [*(a1 + 40) didResignCurrent];
  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 65);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    return [v3 presentController:v5 animated:v4 useDefaultContaineeLayout:1 completion:v6];
  }

  return result;
}

id sub_1005E0CE8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [[ContaineeState alloc] initWithContainee:*(a1 + 40)];
  [v2 replaceLastOne:v3];

  v4 = *(a1 + 32);

  return [v4 assertPresentationStackAppearsCorrect];
}

id sub_1005E11E4(uint64_t a1)
{
  [*(a1 + 32) didResignContainee:*(a1 + 40) finished:1];
  v2 = *(a1 + 40);

  return [v2 didResignCurrent];
}

void sub_1005E2244(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performDeferredMapEdgeInsetUpdate];
}

void sub_1005E46E4(uint64_t a1)
{
  v2 = sub_10004B334();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Container willTransitionToTraitCollection animation block", buf, 2u);
  }

  [*(a1 + 32) _updateOverrideTraitCollectionsForStyle:{objc_msgSend(*(a1 + 32), "containerStyle")}];
  if (*(a1 + 40) == 1)
  {
    v3 = [*(a1 + 32) iosBasedChromeViewController];
    [v3 setNeedsUpdateComponent:@"statusBarStyle" animated:0];
  }

  v4 = sub_10004B334();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Container willTransitionToTraitCollection animation block end", v5, 2u);
  }
}

void sub_1005E47DC(id a1, UIViewControllerTransitionCoordinatorContext *a2)
{
  v2 = sub_10004B334();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Container willTransitionToTraitCollection completion end", v3, 2u);
  }
}

uint64_t sub_1005E4A90(uint64_t a1)
{
  v2 = 48;
  v3 = [*(*(a1 + 32) + 48) allObjects];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v21;
    while (1)
    {
      v8 = 0;
      v19 = v5;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = *(a1 + 32);
        if (v9 == v10[36])
        {
          v12 = [v10 layoutForCurrentViewControllerWithStyle:{objc_msgSend(*(a1 + 32), "containerStyle")}];
          if (v12)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v11 = [*(v10 + v2) containeeStateForContainee:*(*(&v20 + 1) + 8 * v8)];
          v12 = [v11 layoutForStyle:{objc_msgSend(*(a1 + 32), "containerStyle")}];

          if (v12)
          {
            goto LABEL_14;
          }
        }

        if (qword_10195DF00 != -1)
        {
          dispatch_once(&qword_10195DF00, &stru_1016303F0);
        }

        if ((byte_10195DF08 & 1) == 0)
        {
          v13 = [*(a1 + 32) currentViewController];
          [v13 cardPresentationController];
          v14 = v7;
          v15 = v2;
          v17 = v16 = v3;
          [v17 updateHeightForCurrentLayout];

          v3 = v16;
          v2 = v15;
          v7 = v14;
          v5 = v19;
        }

LABEL_14:
        v6 |= [*(a1 + 32) _updateContaineeIfNeeded:v9 withLayout:v12];
        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v5)
      {
        goto LABEL_18;
      }
    }
  }

  LOBYTE(v6) = 0;
LABEL_18:

  return v6 & 1;
}

void sub_1005E4CAC(uint64_t a1)
{
  v2 = sub_10004B334();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Container viewWillTransitionToSize animation block", buf, 2u);
  }

  v3 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) suspendPropagatingEdgeInsetsForReason:@"container view transitioning size"];
  [*(a1 + 32) animateAlongsideCardTransition];
  if (v3 && *(a1 + 48) == 1)
  {
    v4 = [*(a1 + 32) view];
    [v4 setNeedsLayout];
  }

  v5 = sub_10004B334();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Container viewWillTransitionToSize animation block end", v6, 2u);
  }
}

void sub_1005E4DB0(uint64_t a1)
{
  v2 = sub_10004B334();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Container viewWillTransitionToSize completion", buf, 2u);
  }

  *(*(a1 + 32) + 80) = 0;
  [PPTNotificationCenter postNotificationIfNeededWithName:@"PPTTestOrientationDidRotateNotification" object:*(a1 + 32) userInfo:0];
  [*(a1 + 32) resumePropagatingEdgeInsets];
  [*(*(a1 + 32) + 328) updateLayoutStyle];
  v3 = *(a1 + 32);
  if (v3[10] > 0.0)
  {
    v4 = [v3 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 5 && (*(*(a1 + 40) + 16))() && *(a1 + 48) == 1)
    {
      v6 = [*(a1 + 32) view];
      [v6 setNeedsLayout];
    }
  }

  v7 = sub_10004B334();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Container viewWillTransitionToSize completion end", v8, 2u);
  }
}

id sub_1005E66B0(uint64_t a1)
{
  v2 = [*(a1 + 32) results];
  v3 = [*(a1 + 40) testStatistics];
  [v2 addEntriesFromDictionary:v3];

  v4 = *(a1 + 32);

  return [v4 finishedTest];
}

void sub_1005E6B34(uint64_t a1)
{
  [*(a1 + 32) _updateTitlesFromEntry];
  v2 = [*(a1 + 32) observers];
  [v2 shortcutsRowCellModelDidUpdate:*(a1 + 32)];
}

void sub_1005E6E74(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1005E6E9C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 40) == WeakRetained[4])
    {
      [WeakRetained _setFetchedImage:v3];
      if (!v3)
      {
        v6 = sub_1000410AC();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = v5[5];
          v8 = 138412290;
          v9 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Failed to fetch icon for favorite '%@'", &v8, 0xCu);
        }
      }
    }
  }
}

void sub_1005E6F9C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 40) == WeakRetained[4])
    {
      [WeakRetained _setFetchedImage:v3];
      if (!v3)
      {
        v6 = sub_1000410AC();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = v5[5];
          v8 = 138412290;
          v9 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Failed to fetch icon for favorite '%@'", &v8, 0xCu);
        }
      }
    }
  }
}

void sub_1005E709C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && *(a1 + 40) == WeakRetained[4] && *(a1 + 48) <= 4uLL && [WeakRetained _shouldFetchMissingImage])
  {
    v4 = *(a1 + 48) + 1;
    v5 = sub_1000410AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = v3[5];
      v7 = 138413058;
      v8 = v6;
      v9 = 2048;
      v10 = v4 * 5.0;
      v11 = 1024;
      v12 = v4;
      v13 = 1024;
      v14 = 5;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Favorite '%@' icon missing after %gs. Retry %d/%d.", &v7, 0x22u);
    }

    [v3 _fetchImageWithImageCount:*(a1 + 40) retryCount:v4];
  }
}

void sub_1005E8E90(uint64_t a1)
{
  [*(a1 + 32) _alertDidFinishProcessing];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

void sub_1005E9310(id *a1)
{
  v2 = [[MapsRecordAnIssuePanView alloc] initWithParent:a1[4]];
  v3 = [[UIPanGestureRecognizer alloc] initWithTarget:v2 action:"mapsRecordAnIssueEndViewPan:"];
  [(MapsRecordAnIssuePanView *)v2 addGestureRecognizer:v3];
  [(MapsRecordAnIssuePanView *)v2 setAlpha:0.0];
  [a1[5] addSubview:v2];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005E9430;
  v5[3] = &unk_101661B18;
  v6 = v2;
  v4 = v2;
  [UIView animateWithDuration:v5 animations:0.3];
  [a1[6] stopAnimating];
  [a1[6] removeFromSuperview];
  [a1[4] rebuildSections];
}

void sub_1005E94EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1005E9508(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[MapsEventRecorder isRecording])
  {
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1005E9944;
    v14 = &unk_101661B98;
    v4 = &v15;
    objc_copyWeak(&v15, (a1 + 32));
    v5 = [v3 addButtonRowWithTitle:@"End Event Recording" action:&v11];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if ([WeakRetained tapToRadarEnabled])
    {
      v7 = @"Tap-to-Radar Enabled";
    }

    else
    {
      v7 = @"Tap-to-Radar Disabled";
    }

    [v3 addEmptySectionBannerRowWithTitle:v7];
  }

  else
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 setTapToRadarEnabled:0];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1005E9798;
    v20[3] = &unk_101661B98;
    v4 = &v21;
    objc_copyWeak(&v21, (a1 + 32));
    v9 = [v3 addButtonRowWithTitle:@"Begin Event Recording" action:v20];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1005E98BC;
    v18[3] = &unk_1016334B8;
    objc_copyWeak(&v19, (a1 + 32));
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1005E98F4;
    v16[3] = &unk_1016619A8;
    objc_copyWeak(&v17, (a1 + 32));
    v10 = [v3 addSwitchRowWithTitle:@"Tap-to-Radar" get:v18 set:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
  }

  objc_destroyWeak(v4);
}

void sub_1005E9764(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak(v1);
  _Unwind_Resume(a1);
}

void sub_1005E9798(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained tapToRadarEnabled];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 view];
  v6 = [v5 window];
  v7 = [MapsEventRecorder initializeDefaultRecorderWithTapToRadar:v3 window:v6];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005E9A44;
  v8[3] = &unk_101661B98;
  objc_copyWeak(&v9, (a1 + 32));
  [v7 beginRecordingWithCompletion:v8];
  objc_destroyWeak(&v9);
}

id sub_1005E98BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained tapToRadarEnabled];

  return v2;
}

void sub_1005E98F4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setTapToRadarEnabled:a2];
}

void sub_1005E9944(uint64_t a1)
{
  v2 = +[MapsEventRecorder defaultRecorder];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005E9A04;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, (a1 + 32));
  [v2 endRecordingWithCompletion:v3];

  objc_destroyWeak(&v4);
}

void sub_1005E9A04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_1005E9A44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_1005E9E8C(id a1)
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  qword_10195CBF8 = v1;
}

void sub_1005E9F30(id a1)
{
  v1 = objc_alloc_init(RideBookingImageCache);
  v2 = qword_10195CBE8;
  qword_10195CBE8 = v1;
}

void sub_1005E9FE4(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v4 = *(a1 + 32);
  if (isKindOfClass)
  {
    v6 = [v4 dataSource];
    v5 = [v6 snapshot];
    [v6 applySnapshot:v5 animatingDifferences:1];
  }

  else
  {

    [v4 performBatchUpdates:&stru_1016234D8 completion:0];
  }
}

void sub_1005EADCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1005EADF8(uint64_t a1, void *a2)
{
  result = [a2 count];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_1005EB794(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

uint64_t sub_1005EB8E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1005EB900(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1005EC4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005EC4D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1005EC4E8(uint64_t a1, int a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  if (a2)
  {
    if (v4)
    {
      return;
    }

    v8 = +[LoadingIndicatorController sharedController];
    v5 = [v8 beginShowingLoadingIndicator];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = v8;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    *(v3 + 40) = 0;
  }
}

void sub_1005EC584(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v22 = *(a1 + 32);
    v10 = [NSArray arrayWithObjects:&v22 count:1];
    v11 = [SearchInfo searchInfoWithResults:v10];
  }

  else
  {
    v11 = +[SearchInfo searchInfoWithTicket:addressBookAddress:searchType:forRefinementSearchForBookmark:](SearchInfo, "searchInfoWithTicket:addressBookAddress:searchType:forRefinementSearchForBookmark:", *(a1 + 40), 0, [*(a1 + 32) type], *(a1 + 32));
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [v11 results];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * i) markAsOriginatingFromBookmarks];
      }

      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }

  [*(a1 + 48) _searchReceivedResults:v11];
}

void sub_1005ECB68(uint64_t a1, void *a2)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v3 = a2;
  v4 = +[MKMapService sharedService];
  v5 = [v4 _maps_ticketForSearchHistoryEntry:v3 source:*(a1 + 56) traits:*(a1 + 32) isRedoOrAutoRedoSearch:*(a1 + 60)];

  [*(a1 + 40) _submitSearchTicket:v5 defaultSearchResultType:0 saveToHistory:0 origin:((*(a1 + 56) - 6) & 0xFFFFFFF9) == 0];
}

void sub_1005ECC24(uint64_t a1, void *a2)
{
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v3 = [a2 geoMapItem];
  v4 = [MKMapItem _itemWithGeoMapItem:v3];

  if ([v4 _hasMUID])
  {
    v5 = [*(a1 + 32) delegate];
    v6 = *(a1 + 32);
    v7 = [v6 searchFieldItem];
    [v5 searchManager:v6 willProcessSearchFieldItem:v7];

    v8 = +[MKMapService sharedService];
    v9 = [v4 _identifier];
    v15 = v9;
    v10 = [NSArray arrayWithObjects:&v15 count:1];
    v11 = [v8 ticketForIdentifiers:v10 resultProviderID:objc_msgSend(v4 contentProvider:"_resultProviderID") traits:{0, *(a1 + 40)}];

    [*(a1 + 32) _submitTicket:v11 defaultSearchResultType:0 origin:((*(a1 + 64) - 6) & 0xFFFFFFF9) == 0];
  }

  else
  {
    v11 = [[SearchResult alloc] initWithMapItem:v4];
    v12 = *(a1 + 32);
    v14 = v11;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [v12 _searchForSearchResults:v13 completedQuery:*(a1 + 48)];
  }
}

void sub_1005ED02C(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v2 searchSessionData];
  [v5 searchManager:v3 didReceiveSearchInfo:v2 searchSessionData:v4 error:0];
}

void sub_1005ED694(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = a4;
  if (v22)
  {
    v5 = NSStringFromSelector(*(a1 + 64));
    sub_1005ED9D8(v22, v6, v7, v8, v9, v10, v11, v12, v5);

    [*(a1 + 32) _handleGeocoderError:v22];
  }

  else
  {
    v13 = [*(a1 + 40) isValid];
    v14 = *(*(*(a1 + 56) + 8) + 40);
    if (v13)
    {
      v15 = [SearchInfo searchInfoWithTicket:v14 addressBookAddress:*(a1 + 40) searchType:*(a1 + 72)];
    }

    else
    {
      v15 = [SearchInfo searchInfoWithTicket:v14 searchType:*(a1 + 72)];
      if ([*(a1 + 48) length])
      {
        v16 = [v15 results];
        v17 = [v16 count];

        if (v17 == 1)
        {
          v18 = [v15 results];
          v19 = [v18 firstObject];

          v20 = *(a1 + 48);
          v21 = [v19 mapItem];
          [v21 setName:v20];
        }
      }
    }

    [*(a1 + 32) _searchReceivedResults:v15];
  }
}

void sub_1005ED7FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = NSStringFromSelector(*(a1 + 56));
    sub_1005ED9D8(v7, v8, v9, v10, v11, v12, v13, v14, v7);

    [*(a1 + 32) _handleGeocoderError:v6];
  }

  else if (v5)
  {
    v15 = [[SearchResult alloc] initWithMapItem:v5 searchResultType:*(a1 + 64) addressBookAddress:*(a1 + 40) retainedSearchMetadata:0 resultIndex:0];
    v18 = v15;
    v16 = [NSArray arrayWithObjects:&v18 count:1];
    v17 = [SearchInfo searchInfoWithResults:v16];

    [*(a1 + 32) _searchReceivedResults:v17];
  }
}

void sub_1005ED93C(uint64_t a1, int a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  if (a2)
  {
    if (v4)
    {
      return;
    }

    v8 = +[LoadingIndicatorController sharedController];
    v5 = [v8 beginShowingLoadingIndicator];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = v8;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    *(v3 + 40) = 0;
  }
}

void sub_1005ED9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (CFPreferencesGetAppBooleanValue(@"LogSearch", @"com.apple.Maps", 0) || CFPreferencesGetAppBooleanValue(@"ComprehensiveLogging", @"com.apple.Maps", 0))
  {
    v9 = [[NSString alloc] initWithFormat:@"[SearchManager %@] Failed to geocode %@ (%@)" arguments:&a9];
    NSLog(@"%@", v9);
  }
}

void sub_1005EDB1C(uint64_t a1, void *a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005EDBE4;
  block[3] = &unk_101661A40;
  v8 = a2;
  v9 = a3;
  v10 = *(a1 + 32);
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1005EDBE4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v4 = [[SearchResult alloc] initWithMapItem:*(a1 + 32)];
    v7 = v4;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    v6 = [SearchInfo searchInfoWithResults:v5];

    [*(a1 + 48) _searchReceivedResults:v6];
  }

  else
  {
    v3 = *(a1 + 48);

    [v3 _searchFailedWithError:?];
  }
}

void sub_1005EEA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1005EEA6C(uint64_t a1, void *a2)
{
  v11 = a2;
  v4 = [v11 mapItem];
  v5 = [v4 _geoMapItem];
  [v5 coordinate];
  v6 = [*(a1 + 32) mapItem];
  v7 = [v6 _geoMapItem];
  [v7 coordinate];
  GEOCalculateDistance();
  v9 = v8;

  v10 = *(*(a1 + 40) + 8);
  if (v9 < *(v10 + 24))
  {
    *(v10 + 24) = v9;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }
}