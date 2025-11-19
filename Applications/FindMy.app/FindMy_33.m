uint64_t sub_100379A2C(void **__src, char *a2, void **a3, char *a4)
{
  v4 = a3;
  v5 = a2 - __src;
  v6 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v6 = a2 - __src;
  }

  v7 = v6 >> 3;
  v8 = a3 - a2;
  v9 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v9 = a3 - a2;
  }

  v10 = v9 >> 3;
  if (v7 >= v9 >> 3)
  {
    v55 = __src;
    if (a4 != a2 || &a2[8 * v10] <= a4)
    {
      v32 = a2;
      v33 = a4;
      memmove(a4, a2, 8 * v10);
      a2 = v32;
      a4 = v33;
    }

    __src = a2;
    v56 = &a4[8 * v10];
    v12 = a4;
    if (v8 < 8 || a2 <= v55)
    {
      goto LABEL_56;
    }

    v50 = a4;
LABEL_35:
    __dsta = __src;
    v34 = __src - 1;
    v35 = v4 - 1;
    v36 = v56;
    while (1)
    {
      v38 = *--v36;
      v37 = v38;
      v39 = &v38[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title];
      v40 = *&v38[OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title + 8];
      v51 = v35;
      if (v40)
      {
        v41 = *v39;
        v42 = v40;
      }

      else
      {
        v41 = 0;
        v42 = 0xE000000000000000;
      }

      v43 = *v34;
      v44 = *v34 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title;
      if (v44[1])
      {
        v45 = v44[1];
        if (v41 != *v44)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v45 = 0xE000000000000000;
        if (v41)
        {
          goto LABEL_46;
        }
      }

      if (v42 != v45)
      {
LABEL_46:
        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_47;
      }

      v46 = 0;
LABEL_47:

      v47 = v37;
      v48 = v43;

      if (v46)
      {
        v4 = v51;
        v12 = v50;
        if (v51 + 1 != __dsta)
        {
          *v51 = *v34;
        }

        if (v56 <= v50 || (__src = v34, v34 <= v55))
        {
          __src = v34;
          goto LABEL_56;
        }

        goto LABEL_35;
      }

      v12 = v50;
      if (v51 + 1 != v56)
      {
        *v51 = *v36;
      }

      v35 = v51 - 1;
      v56 = v36;
      if (v36 <= v50)
      {
        v56 = v36;
        __src = __dsta;
        goto LABEL_56;
      }
    }
  }

  v11 = a2;
  v12 = a4;
  if (a4 != __src || &__src[v7] <= a4)
  {
    v13 = __src;
    memmove(a4, __src, 8 * v7);
    __src = v13;
  }

  v56 = &v12[v7];
  if (v5 >= 8)
  {
    v14 = v11;
    if (v11 < v4)
    {
      v15 = v4;
      do
      {
        __dst = v14;
        v54 = __src;
        v16 = *v14;
        v17 = (*v14 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title);
        if (v17[1])
        {
          v18 = *v17;
          v19 = v17[1];
        }

        else
        {
          v18 = 0;
          v19 = 0xE000000000000000;
        }

        v20 = *v12;
        v21 = *v12 + OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title;
        if (v21[1])
        {
          v22 = v21[1];
          if (v18 != *v21)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v22 = 0xE000000000000000;
          if (v18)
          {
            goto LABEL_21;
          }
        }

        if (v19 == v22)
        {

          v23 = v16;
          v24 = v20;

LABEL_24:
          v29 = v12;
          v28 = v54;
          v31 = v54 == v12++;
          v14 = __dst;
          v30 = v15;
          if (v31)
          {
            goto LABEL_26;
          }

LABEL_25:
          *v28 = *v29;
          goto LABEL_26;
        }

LABEL_21:
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v26 = v16;
        v27 = v20;

        if ((v25 & 1) == 0)
        {
          goto LABEL_24;
        }

        v28 = v54;
        v29 = __dst;
        v14 = __dst + 1;
        v30 = v15;
        if (v54 != __dst)
        {
          goto LABEL_25;
        }

LABEL_26:
        __src = v28 + 1;
      }

      while (v12 < v56 && v14 < v30);
    }
  }

LABEL_56:
  if (__src != v12 || __src >= (v12 + ((v56 - v12 + (v56 - v12 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(__src, v12, 8 * ((v56 - v12) / 8));
  }

  return 1;
}

uint64_t sub_100379F0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100379F74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100379FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B3260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037A044(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10037A098(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_10007EBC0(&qword_1006BD040);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for LostAccessory.Capabilities();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_1003ABA74(&qword_1006BD048, &type metadata accessor for LostAccessory.Capabilities);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v26;
  sub_1003ABA74(&qword_1006BD050, &type metadata accessor for LostAccessory.Capabilities);
  v24 = a2;
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v20 = v27;
  sub_100035318(v7, v27, &qword_1006BD040);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t sub_10037A39C(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_10007EBC0(&qword_1006BD190);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for ManagedItem.Properties();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_1003ABA74(&qword_1006BD180, &type metadata accessor for ManagedItem.Properties);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v26;
  sub_1003ABA74(&qword_1006BD188, &type metadata accessor for ManagedItem.Properties);
  v24 = a2;
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v20 = v27;
  sub_100035318(v7, v27, &qword_1006BD190);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t sub_10037A6A0(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_10007EBC0(&qword_1006BD1D0);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for ManagedDevice.Properties();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_1003ABA74(&qword_1006BD1D8, &type metadata accessor for ManagedDevice.Properties);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v26;
  sub_1003ABA74(&qword_1006BD1E0, &type metadata accessor for ManagedDevice.Properties);
  v24 = a2;
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v20 = v27;
  sub_100035318(v7, v27, &qword_1006BD1D0);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t sub_10037A9A4(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_10007EBC0(&qword_1006BD1E8);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for ManagedPerson.Properties();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_1003ABA74(&qword_1006BD1F0, &type metadata accessor for ManagedPerson.Properties);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v26;
  sub_1003ABA74(&qword_1006BD1F8, &type metadata accessor for ManagedPerson.Properties);
  v24 = a2;
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v20 = v27;
  sub_100035318(v7, v27, &qword_1006BD1E8);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t sub_10037ACA8(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_10007EBC0(&qword_1006BD200);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for FMFSchedule.DaysOfWeek();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_1003ABA74(&qword_1006B0070, &type metadata accessor for FMFSchedule.DaysOfWeek);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v26;
  sub_1003ABA74(&qword_1006BD208, &type metadata accessor for FMFSchedule.DaysOfWeek);
  v24 = a2;
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v20 = v27;
  sub_100035318(v7, v27, &qword_1006BD200);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

id sub_10037AFAC(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v1[qword_1006C2B70];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  v5[48] = 0;
  *&v1[qword_1006C2B78] = _swiftEmptyArrayStorage;
  v6 = qword_1006C2B98;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for FMModernPlatterHeaderView()) init];
  v1[qword_1006C2BA0] = 0;
  *&v1[qword_1006C2BB0] = 0;
  sub_10007EBC0(&qword_1006BD100);
  v7 = swift_allocObject();
  v7[2] = sub_10015330C(_swiftEmptyArrayStorage);
  v7[3] = _swiftEmptyArrayStorage;
  v7[4] = 0;
  v7[5] = 0;
  sub_1003A63D0(_swiftEmptyArrayStorage);
  v8 = [objc_allocWithZone(type metadata accessor for FMModernPlatterTableView()) init];
  *&v2[qword_1006C2B80] = v7;
  *&v2[qword_1006C2B90] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = ObjectType;

  objc_allocWithZone(sub_10007EBC0(&qword_1006BD108));
  v10 = v8;

  *&v2[qword_1006C2B88] = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  v2[qword_1006C2BA8] = a1 & 1;
  v14.receiver = v2;
  v14.super_class = sub_10007EBC0(&qword_1006BD110);
  v11 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = String._bridgeToObjectiveC()();
  [v11 setAccessibilityIdentifier:v12];

  sub_10037B6D8();
  sub_10037CDDC();

  return v11;
}

id sub_10037B210(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v1[qword_1006C2B70];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  v5[48] = 0;
  *&v1[qword_1006C2B78] = _swiftEmptyArrayStorage;
  v6 = qword_1006C2B98;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for FMModernPlatterHeaderView()) init];
  v1[qword_1006C2BA0] = 0;
  *&v1[qword_1006C2BB0] = 0;
  sub_10007EBC0(&qword_1006BD0D0);
  v7 = swift_allocObject();
  v7[2] = sub_1001534F4(_swiftEmptyArrayStorage);
  v7[3] = _swiftEmptyArrayStorage;
  v7[4] = 0;
  v7[5] = 0;
  sub_1003A61A0(_swiftEmptyArrayStorage);
  v8 = [objc_allocWithZone(type metadata accessor for FMModernPlatterTableView()) init];
  *&v2[qword_1006C2B80] = v7;
  *&v2[qword_1006C2B90] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = ObjectType;

  objc_allocWithZone(sub_10007EBC0(&qword_1006BD0D8));
  v10 = v8;

  *&v2[qword_1006C2B88] = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  v2[qword_1006C2BA8] = a1 & 1;
  v14.receiver = v2;
  v14.super_class = sub_10007EBC0(&qword_1006BD0E0);
  v11 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = String._bridgeToObjectiveC()();
  [v11 setAccessibilityIdentifier:v12];

  sub_10037BE84();
  sub_10037CDDC();

  return v11;
}

id sub_10037B474(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v1[qword_1006C2B70];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  v5[48] = 0;
  *&v1[qword_1006C2B78] = _swiftEmptyArrayStorage;
  v6 = qword_1006C2B98;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for FMModernPlatterHeaderView()) init];
  v1[qword_1006C2BA0] = 0;
  *&v1[qword_1006C2BB0] = 0;
  sub_10007EBC0(&qword_1006BD130);
  v7 = swift_allocObject();
  v7[2] = sub_1001542A0(_swiftEmptyArrayStorage);
  v7[3] = _swiftEmptyArrayStorage;
  v7[4] = 0;
  v7[5] = 0;
  sub_1003A68A4(_swiftEmptyArrayStorage);
  v8 = [objc_allocWithZone(type metadata accessor for FMModernPlatterTableView()) init];
  *&v2[qword_1006C2B80] = v7;
  *&v2[qword_1006C2B90] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = ObjectType;

  objc_allocWithZone(sub_10007EBC0(&qword_1006BD138));
  v10 = v8;

  *&v2[qword_1006C2B88] = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  v2[qword_1006C2BA8] = a1 & 1;
  v14.receiver = v2;
  v14.super_class = sub_10007EBC0(&qword_1006BD140);
  v11 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = String._bridgeToObjectiveC()();
  [v11 setAccessibilityIdentifier:v12];

  sub_10037C630();
  sub_10037CDDC();

  return v11;
}

uint64_t sub_10037B6D8()
{
  v1 = v0;
  v2 = [v0 layer];
  [v2 setCornerCurve:kCACornerCurveContinuous];

  v3 = [v1 layer];
  v44 = &type metadata for SolariumFeatureFlag;
  v4 = sub_10000BD04();
  v45 = v4;
  v5 = isFeatureEnabled(_:)();
  sub_100006060(v43);
  v6 = _UISheetCornerRadius;
  v7 = 26.0;
  if ((v5 & 1) == 0)
  {
    v7 = _UISheetCornerRadius;
  }

  [v3 setCornerRadius:v7];

  v8 = [v1 layer];
  [v8 setMasksToBounds:0];

  if (v1[qword_1006C2BA8])
  {
    v9 = type metadata accessor for FMPlatterBackgroundView();
    v10 = objc_allocWithZone(v9);
    v10[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
    v47.receiver = v10;
    v47.super_class = v9;
    v11 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_10024610C();
    v12 = *&v1[qword_1006C2BB0];
    *&v1[qword_1006C2BB0] = v11;
    v13 = v11;

    [v1 addSubview:v13];
  }

  else
  {
    v14 = [v1 layer];
    v15 = [objc_opt_self() blackColor];
    v16 = [v15 CGColor];

    [v14 setShadowColor:v16];
    v17 = [v1 layer];
    LODWORD(v18) = 1031127695;
    [v17 setShadowOpacity:v18];

    v19 = [v1 layer];
    [v19 setShadowRadius:16.0];

    v13 = [v1 layer];
    [v13 setShadowOffset:{0.0, 0.0}];
  }

  [v1 setAxis:1];
  [v1 setDistribution:0];
  [v1 setAlignment:0];
  [v1 addArrangedSubview:*&v1[qword_1006C2B98]];
  v20 = *&v1[qword_1006C2B90];
  [v1 addArrangedSubview:v20];
  [v20 setDelegate:v1];
  [v20 setDataSource:*&v1[qword_1006C2B88]];
  v21 = objc_opt_self();
  v22 = [v21 clearColor];
  [v20 setBackgroundColor:v22];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10000905C(0, &qword_1006B00B0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = String._bridgeToObjectiveC()();
  [v20 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v24];

  [v20 setSectionHeaderTopPadding:0.0];
  [v20 setScrollEnabled:0];
  [v20 setContentInsetAdjustmentBehavior:2];
  [v20 setFrame:{CGRectInfinite.origin.x, CGRectInfinite.origin.y, CGRectInfinite.size.width, CGRectInfinite.size.height}];
  v25 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v20 setTableFooterView:v25];

  v26 = [v20 layer];
  [v26 setCornerCurve:kCACornerCurveContinuous];

  v27 = [v20 layer];
  v44 = &type metadata for SolariumFeatureFlag;
  v45 = v4;
  LOBYTE(v26) = isFeatureEnabled(_:)();
  sub_100006060(v43);
  v28 = 26.0;
  if ((v26 & 1) == 0)
  {
    v28 = v6;
  }

  [v27 setCornerRadius:v28];

  v29 = [v20 layer];
  [v29 setMasksToBounds:1];

  v44 = &type metadata for SolariumFeatureFlag;
  v45 = v4;
  v30 = isFeatureEnabled(_:)();
  sub_100006060(v43);
  if (v30)
  {
    v31 = [v21 labelColor];
    v32 = [v31 colorWithAlphaComponent:0.1];

    [v20 setSeparatorColor:v32];
    [v20 setSeparatorInset:{0.0, 16.0, 0.0, 16.0}];
    [v20 setDirectionalLayoutMargins:{0.0, 16.0, 0.0, 16.0}];
  }

  dispatch thunk of UITableViewDiffableDataSource.defaultRowAnimation.setter();
  v33 = *&v1[qword_1006C2B80];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = *(v33 + 32);
  *(v33 + 32) = sub_1003B0E60;
  *(v33 + 40) = v34;

  sub_10001835C(v35);

  v36 = objc_opt_self();
  v37 = swift_allocObject();
  *(v37 + 16) = v1;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1003AF920;
  *(v38 + 24) = v37;
  v45 = sub_1003B0D50;
  v46 = v38;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 1107296256;
  v43[2] = sub_1000095FC;
  v44 = &unk_1006399B0;
  v39 = _Block_copy(v43);
  v40 = v1;

  [v36 performWithoutAnimation:v39];
  _Block_release(v39);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10037BE84()
{
  v1 = v0;
  v2 = [v0 layer];
  [v2 setCornerCurve:kCACornerCurveContinuous];

  v3 = [v1 layer];
  v44 = &type metadata for SolariumFeatureFlag;
  v4 = sub_10000BD04();
  v45 = v4;
  v5 = isFeatureEnabled(_:)();
  sub_100006060(v43);
  v6 = _UISheetCornerRadius;
  v7 = 26.0;
  if ((v5 & 1) == 0)
  {
    v7 = _UISheetCornerRadius;
  }

  [v3 setCornerRadius:v7];

  v8 = [v1 layer];
  [v8 setMasksToBounds:0];

  if (v1[qword_1006C2BA8])
  {
    v9 = type metadata accessor for FMPlatterBackgroundView();
    v10 = objc_allocWithZone(v9);
    v10[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
    v47.receiver = v10;
    v47.super_class = v9;
    v11 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_10024610C();
    v12 = *&v1[qword_1006C2BB0];
    *&v1[qword_1006C2BB0] = v11;
    v13 = v11;

    [v1 addSubview:v13];
  }

  else
  {
    v14 = [v1 layer];
    v15 = [objc_opt_self() blackColor];
    v16 = [v15 CGColor];

    [v14 setShadowColor:v16];
    v17 = [v1 layer];
    LODWORD(v18) = 1031127695;
    [v17 setShadowOpacity:v18];

    v19 = [v1 layer];
    [v19 setShadowRadius:16.0];

    v13 = [v1 layer];
    [v13 setShadowOffset:{0.0, 0.0}];
  }

  [v1 setAxis:1];
  [v1 setDistribution:0];
  [v1 setAlignment:0];
  [v1 addArrangedSubview:*&v1[qword_1006C2B98]];
  v20 = *&v1[qword_1006C2B90];
  [v1 addArrangedSubview:v20];
  [v20 setDelegate:v1];
  [v20 setDataSource:*&v1[qword_1006C2B88]];
  v21 = objc_opt_self();
  v22 = [v21 clearColor];
  [v20 setBackgroundColor:v22];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10000905C(0, &qword_1006B00B0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = String._bridgeToObjectiveC()();
  [v20 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v24];

  [v20 setSectionHeaderTopPadding:0.0];
  [v20 setScrollEnabled:0];
  [v20 setContentInsetAdjustmentBehavior:2];
  [v20 setFrame:{CGRectInfinite.origin.x, CGRectInfinite.origin.y, CGRectInfinite.size.width, CGRectInfinite.size.height}];
  v25 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v20 setTableFooterView:v25];

  v26 = [v20 layer];
  [v26 setCornerCurve:kCACornerCurveContinuous];

  v27 = [v20 layer];
  v44 = &type metadata for SolariumFeatureFlag;
  v45 = v4;
  LOBYTE(v26) = isFeatureEnabled(_:)();
  sub_100006060(v43);
  v28 = 26.0;
  if ((v26 & 1) == 0)
  {
    v28 = v6;
  }

  [v27 setCornerRadius:v28];

  v29 = [v20 layer];
  [v29 setMasksToBounds:1];

  v44 = &type metadata for SolariumFeatureFlag;
  v45 = v4;
  v30 = isFeatureEnabled(_:)();
  sub_100006060(v43);
  if (v30)
  {
    v31 = [v21 labelColor];
    v32 = [v31 colorWithAlphaComponent:0.1];

    [v20 setSeparatorColor:v32];
    [v20 setSeparatorInset:{0.0, 16.0, 0.0, 16.0}];
    [v20 setDirectionalLayoutMargins:{0.0, 16.0, 0.0, 16.0}];
  }

  dispatch thunk of UITableViewDiffableDataSource.defaultRowAnimation.setter();
  v33 = *&v1[qword_1006C2B80];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = *(v33 + 32);
  *(v33 + 32) = sub_1003AC280;
  *(v33 + 40) = v34;

  sub_10001835C(v35);

  v36 = objc_opt_self();
  v37 = swift_allocObject();
  *(v37 + 16) = v1;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1003AC28C;
  *(v38 + 24) = v37;
  v45 = sub_10000964C;
  v46 = v38;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 1107296256;
  v43[2] = sub_1000095FC;
  v44 = &unk_100639690;
  v39 = _Block_copy(v43);
  v40 = v1;

  [v36 performWithoutAnimation:v39];
  _Block_release(v39);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10037C630()
{
  v1 = v0;
  v2 = [v0 layer];
  [v2 setCornerCurve:kCACornerCurveContinuous];

  v3 = [v1 layer];
  v44 = &type metadata for SolariumFeatureFlag;
  v4 = sub_10000BD04();
  v45 = v4;
  v5 = isFeatureEnabled(_:)();
  sub_100006060(v43);
  v6 = _UISheetCornerRadius;
  v7 = 26.0;
  if ((v5 & 1) == 0)
  {
    v7 = _UISheetCornerRadius;
  }

  [v3 setCornerRadius:v7];

  v8 = [v1 layer];
  [v8 setMasksToBounds:0];

  if (v1[qword_1006C2BA8])
  {
    v9 = type metadata accessor for FMPlatterBackgroundView();
    v10 = objc_allocWithZone(v9);
    v10[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
    v47.receiver = v10;
    v47.super_class = v9;
    v11 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_10024610C();
    v12 = *&v1[qword_1006C2BB0];
    *&v1[qword_1006C2BB0] = v11;
    v13 = v11;

    [v1 addSubview:v13];
  }

  else
  {
    v14 = [v1 layer];
    v15 = [objc_opt_self() blackColor];
    v16 = [v15 CGColor];

    [v14 setShadowColor:v16];
    v17 = [v1 layer];
    LODWORD(v18) = 1031127695;
    [v17 setShadowOpacity:v18];

    v19 = [v1 layer];
    [v19 setShadowRadius:16.0];

    v13 = [v1 layer];
    [v13 setShadowOffset:{0.0, 0.0}];
  }

  [v1 setAxis:1];
  [v1 setDistribution:0];
  [v1 setAlignment:0];
  [v1 addArrangedSubview:*&v1[qword_1006C2B98]];
  v20 = *&v1[qword_1006C2B90];
  [v1 addArrangedSubview:v20];
  [v20 setDelegate:v1];
  [v20 setDataSource:*&v1[qword_1006C2B88]];
  v21 = objc_opt_self();
  v22 = [v21 clearColor];
  [v20 setBackgroundColor:v22];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10000905C(0, &qword_1006B00B0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = String._bridgeToObjectiveC()();
  [v20 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v24];

  [v20 setSectionHeaderTopPadding:0.0];
  [v20 setScrollEnabled:0];
  [v20 setContentInsetAdjustmentBehavior:2];
  [v20 setFrame:{CGRectInfinite.origin.x, CGRectInfinite.origin.y, CGRectInfinite.size.width, CGRectInfinite.size.height}];
  v25 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v20 setTableFooterView:v25];

  v26 = [v20 layer];
  [v26 setCornerCurve:kCACornerCurveContinuous];

  v27 = [v20 layer];
  v44 = &type metadata for SolariumFeatureFlag;
  v45 = v4;
  LOBYTE(v26) = isFeatureEnabled(_:)();
  sub_100006060(v43);
  v28 = 26.0;
  if ((v26 & 1) == 0)
  {
    v28 = v6;
  }

  [v27 setCornerRadius:v28];

  v29 = [v20 layer];
  [v29 setMasksToBounds:1];

  v44 = &type metadata for SolariumFeatureFlag;
  v45 = v4;
  v30 = isFeatureEnabled(_:)();
  sub_100006060(v43);
  if (v30)
  {
    v31 = [v21 labelColor];
    v32 = [v31 colorWithAlphaComponent:0.1];

    [v20 setSeparatorColor:v32];
    [v20 setSeparatorInset:{0.0, 16.0, 0.0, 16.0}];
    [v20 setDirectionalLayoutMargins:{0.0, 16.0, 0.0, 16.0}];
  }

  dispatch thunk of UITableViewDiffableDataSource.defaultRowAnimation.setter();
  v33 = *&v1[qword_1006C2B80];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = *(v33 + 32);
  *(v33 + 32) = sub_1003AFCAC;
  *(v33 + 40) = v34;

  sub_10001835C(v35);

  v36 = objc_opt_self();
  v37 = swift_allocObject();
  *(v37 + 16) = v1;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1003AFCC8;
  *(v38 + 24) = v37;
  v45 = sub_1003B0D50;
  v46 = v38;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 1107296256;
  v43[2] = sub_1000095FC;
  v44 = &unk_100639D20;
  v39 = _Block_copy(v43);
  v40 = v1;

  [v36 performWithoutAnimation:v39];
  _Block_release(v39);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_10037CDDC()
{
  v1 = *&v0[qword_1006C2BB0];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = objc_opt_self();
    sub_10007EBC0(&qword_1006AFC30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1005521F0;
    v6 = [v3 topAnchor];
    v7 = [v2 topAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    *(v5 + 32) = v8;
    v9 = [v3 bottomAnchor];
    v10 = [v2 bottomAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    *(v5 + 40) = v11;
    v12 = [v3 leadingAnchor];
    v13 = [v2 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    *(v5 + 48) = v14;
    v15 = [v3 trailingAnchor];

    v16 = [v2 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    *(v5 + 56) = v17;
    sub_10000905C(0, &qword_1006B3A70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 activateConstraints:isa];
  }
}

void sub_10037D084(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = *(a1 + 48);
  v6 = *(v1 + qword_1006C2B98);
  if (*a1)
  {
    v7 = *(a1 + 24);
    v8 = *&v6[OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_titleLabel];
    v9 = String._bridgeToObjectiveC()();
    v10 = v7 == 0;
  }

  else
  {
    v9 = 0;
    v8 = *&v6[OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_titleLabel];
    v10 = 1;
  }

  [v8 setText:v9];

  [*&v6[OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_titleLabel] setHidden:v10];
  v11 = 0;
  v12 = *&v6[OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_subtitleLabel];
  if (v4 && *(a1 + 40))
  {

    v11 = String._bridgeToObjectiveC()();
  }

  [v12 setText:v11];

  v13 = [v12 text];
  v14 = v13;
  if (v13)
  {
  }

  [v12 setHidden:v14 == 0];
  if (v4)
  {
    v15 = v4;
  }

  v16 = OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_iconView;
  [*&v6[OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_iconView] setImage:v4];
  [*&v6[v16] setHidden:v4 == 0];

  v26 = &type metadata for SolariumFeatureFlag;
  v27 = sub_10000BD04();
  v17 = isFeatureEnabled(_:)();
  sub_100006060(v25);
  if (v17)
  {
    if (v4)
    {
      v18 = *(a1 + 8);
      if (v18)
      {
        v19 = *&v6[v16];
        v20 = v18;
        [v19 setTintColor:v20];
        [v6 setTintAdjustmentMode:1];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 &= v4 != 0;
  }

  sub_10017F75C(v5 & 1);
  v21 = v4 == 0;
  if (v4)
  {
    v22 = 12;
  }

  else
  {
    v22 = 15;
  }

  [v6 setHidden:v21];
  v23 = *(v2 + qword_1006C2B90);
  [v23 reloadData];
  v24 = [v23 layer];
  [v24 setMaskedCorners:v22];
}

uint64_t sub_10037D318(uint64_t a1)
{
  v2 = v1;
  sub_10007EBC0(&qword_1006BD0E8);
  v57 = swift_allocBox();
  sub_10007EBC0(&qword_1006BD0F0);
  sub_100004098(&qword_1006BD0F8, &qword_1006BD0F0);
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100621BA8);
  v4 = *(a1 + 16);
  v56 = a1;
  if (v4)
  {
    v65 = _swiftEmptyArrayStorage;
    sub_10016715C(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (a1 + 32);
    v58 = (a1 + 32);
    v7 = v4;
    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = v9 == 2;
      v11 = 0xD000000000000015;
      if (v9 == 2)
      {
        v11 = 0xD000000000000010;
      }

      v12 = 0x8000000100578BC0;
      if (v10)
      {
        v12 = 0x8000000100578BA0;
      }

      v13 = 0x744965766F6D6572;
      if (!v8)
      {
        v13 = 0x7449656D616E6572;
      }

      if (v8 <= 1)
      {
        v14 = v13;
      }

      else
      {
        v14 = v11;
      }

      if (v8 <= 1)
      {
        v15 = 0xEA00000000006D65;
      }

      else
      {
        v15 = v12;
      }

      v65 = v5;
      v17 = v5[2];
      v16 = v5[3];
      if (v17 >= v16 >> 1)
      {
        sub_10016715C((v16 > 1), v17 + 1, 1);
        v5 = v65;
      }

      v5[2] = v17 + 1;
      v18 = &v5[2 * v17];
      v18[4] = v14;
      v18[5] = v15;
      --v7;
    }

    while (v7);
    LOBYTE(v65) = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v2 = v1;
    v19 = *&v1[qword_1006C2B80];
    swift_beginAccess();
    while (1)
    {
      v20 = *v58++;
      v21 = 0xD000000000000015;
      if (v20 == 2)
      {
        v21 = 0xD000000000000010;
      }

      v22 = 0x8000000100578BC0;
      if (v20 == 2)
      {
        v22 = 0x8000000100578BA0;
      }

      v23 = 0x744965766F6D6572;
      if (!v20)
      {
        v23 = 0x7449656D616E6572;
      }

      if (v20 <= 1)
      {
        v24 = v23;
      }

      else
      {
        v24 = v21;
      }

      if (v20 <= 1)
      {
        v25 = 0xEA00000000006D65;
      }

      else
      {
        v25 = v22;
      }

      v26 = *(v19 + 16);
      if (!*(v26 + 16))
      {
        goto LABEL_50;
      }

      v27 = sub_10000726C(v24, v25);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        goto LABEL_50;
      }

      v30 = *(*(v26 + 56) + v27);

      if (v30 <= 1)
      {
        break;
      }

      if (v30 == 2)
      {
        v31 = 0xD000000000000010;
        v32 = 0x8000000100578BA0;
LABEL_40:
        if (v20 <= 1)
        {
          goto LABEL_41;
        }

        goto LABEL_45;
      }

      v31 = 0xD000000000000015;
      v32 = 0x8000000100578BC0;
      if (v20 <= 1)
      {
LABEL_41:
        v33 = 0x7449656D616E6572;
        v34 = 0xEA00000000006D65;
        if (!v20)
        {
          goto LABEL_47;
        }

        if (v31 != 0x744965766F6D6572)
        {
          goto LABEL_54;
        }

        goto LABEL_48;
      }

LABEL_45:
      if (v20 == 2)
      {
        v33 = 0xD000000000000010;
        v34 = 0x8000000100578BA0;
LABEL_47:
        if (v31 != v33)
        {
          goto LABEL_54;
        }

        goto LABEL_48;
      }

      v34 = 0x8000000100578BC0;
      if (v31 != 0xD000000000000015)
      {
        goto LABEL_54;
      }

LABEL_48:
      if (v32 == v34)
      {

        goto LABEL_50;
      }

LABEL_54:
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v35)
      {
        goto LABEL_51;
      }

      sub_1000EF468(v20, &v65);
      if (v66 == 2)
      {

        sub_10007EBC0(&unk_1006AF770);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_100552220;
        if (v20 > 1)
        {
          if (v20 == 2)
          {
            v37 = 0xD000000000000010;
            v38 = 0x8000000100578BA0;
          }

          else
          {
            v37 = 0xD000000000000015;
            v38 = 0x8000000100578BC0;
          }
        }

        else
        {
          v37 = 0x7449656D616E6572;
          v38 = 0xEA00000000006D65;
          if (v20)
          {
            v37 = 0x744965766F6D6572;
          }
        }

        *(v36 + 32) = v37;
        *(v36 + 40) = v38;
        NSDiffableDataSourceSnapshot.reloadItems(_:)(v36);
      }

      else
      {
        sub_1003AC310(&v65);
        sub_10007EBC0(&unk_1006AF770);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_100552220;
        if (v20 > 1)
        {
          if (v20 == 2)
          {
            v40 = 0xD000000000000010;
            v41 = 0x8000000100578BA0;
          }

          else
          {
            v40 = 0xD000000000000015;
            v41 = 0x8000000100578BC0;
          }
        }

        else
        {
          v40 = 0x7449656D616E6572;
          v41 = 0xEA00000000006D65;
          if (v20)
          {
            v40 = 0x744965766F6D6572;
          }
        }

        *(v39 + 32) = v40;
        *(v39 + 40) = v41;
        NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v39);
      }

LABEL_50:

LABEL_51:
      if (!--v4)
      {
        goto LABEL_71;
      }
    }

    v31 = 0x7449656D616E6572;
    v32 = 0xEA00000000006D65;
    if (v30)
    {
      v31 = 0x744965766F6D6572;
      if (v20 <= 1)
      {
        goto LABEL_41;
      }

      goto LABEL_45;
    }

    goto LABEL_40;
  }

  LOBYTE(v65) = 0;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

LABEL_71:
  sub_1003A61A0(v56);
  if (v2[qword_1006C2BA0])
  {
    v42 = 0.3;
  }

  else
  {
    v42 = 0.0;
  }

  v43 = *&v2[qword_1006C2B90];
  v44 = swift_allocObject();
  *(v44 + 16) = v2;
  *(v44 + 24) = v57;
  v45 = v2;
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  v47 = objc_opt_self();
  v48 = swift_allocObject();
  v48[2] = v43;
  v48[3] = sub_1003AC2CC;
  v48[4] = v44;
  v63 = sub_1003AC2F8;
  v64 = v48;
  aBlock = _NSConcreteStackBlock;
  v60 = 1107296256;
  v61 = sub_100004AE4;
  v62 = &unk_100639730;
  v49 = _Block_copy(&aBlock);
  v50 = v45;

  v51 = v43;

  v52 = swift_allocObject();
  v52[2] = sub_1003B0E5C;
  v52[3] = v46;
  v52[4] = v51;
  v63 = sub_1003AC304;
  v64 = v52;
  aBlock = _NSConcreteStackBlock;
  v60 = 1107296256;
  v61 = sub_10037A044;
  v62 = &unk_100639780;
  v53 = _Block_copy(&aBlock);
  v54 = v51;

  [v47 animateWithDuration:4 delay:v49 options:v53 animations:v42 completion:0.0];
  _Block_release(v53);
  _Block_release(v49);
}

uint64_t sub_10037DAF8(uint64_t a1)
{
  v2 = v1;
  v118 = type metadata accessor for UUID();
  v124 = *(v118 - 8);
  __chkstk_darwin(v118);
  v117 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  v123 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v109 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v108 = &v104 - v9;
  v10 = __chkstk_darwin(v8);
  v122 = &v104 - v11;
  v12 = __chkstk_darwin(v10);
  v113 = &v104 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v104 - v15;
  v17 = __chkstk_darwin(v14);
  v121 = &v104 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v104 - v20;
  __chkstk_darwin(v19);
  v23 = &v104 - v22;
  v24 = sub_10007EBC0(&qword_1006BD118);
  v107 = swift_allocBox();
  v26 = v25;
  sub_10007EBC0(&qword_1006BD120);
  sub_100004098(&qword_1006BD128, &qword_1006BD120);
  v27 = a1;
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100621F10);
  v28 = *(a1 + 16);
  v106 = v27;
  if (v28)
  {
    v111 = v26;
    v112 = v24;
    v114 = v16;
    v120 = v2;
    v131 = _swiftEmptyArrayStorage;
    sub_10016715C(0, v28, 0);
    v29 = v131;
    v30 = v27 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
    v116 = (v124 + 32);
    v115 = (v124 + 8);
    v124 = *(v123 + 72);
    v105 = v30;
    v123 = v28;
    do
    {
      sub_1003B027C(v30, v23, type metadata accessor for FMBeaconSharingModuleEntry);
      sub_1003B027C(v23, v21, type metadata accessor for FMBeaconSharingModuleEntry);
      v31 = sub_10007EBC0(&qword_1006B9D48);
      v32 = (*(*(v31 - 8) + 48))(v21, 2, v31);
      if (v32)
      {
        if (v32 == 1)
        {
          v33 = 25933;
        }

        else
        {
          v33 = 0x6F73726550646441;
        }

        if (v32 == 1)
        {
          v34 = 0xE200000000000000;
        }

        else
        {
          v34 = 0xE90000000000006ELL;
        }
      }

      else
      {
        v35 = *(v31 + 48);
        v36 = &v21[*(v31 + 64)];
        v37 = v117;
        v38 = v118;
        (*v116)(v117, v36, v118);
        v33 = UUID.uuidString.getter();
        v34 = v39;
        (*v115)(v37, v38);
        sub_1003ABABC(&v21[v35], type metadata accessor for FMBeaconSharingModuleShareState);
        sub_1003ABABC(v21, type metadata accessor for FMBeaconSharingModuleRelationshipType);
      }

      sub_1003ABABC(v23, type metadata accessor for FMBeaconSharingModuleEntry);
      v131 = v29;
      v41 = v29[2];
      v40 = v29[3];
      if (v41 >= v40 >> 1)
      {
        sub_10016715C((v40 > 1), v41 + 1, 1);
        v29 = v131;
      }

      v29[2] = v41 + 1;
      v42 = &v29[2 * v41];
      v42[4] = v33;
      v42[5] = v34;
      v30 += v124;
      --v28;
    }

    while (v28);
    LOBYTE(v131) = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v119 = *&v120[qword_1006C2B80];
    swift_beginAccess();
    v110 = xmmword_100552220;
    v43 = v114;
    v44 = v121;
    v45 = v105;
    while (1)
    {
      v47 = v45;
      sub_1003B027C(v45, v44, type metadata accessor for FMBeaconSharingModuleEntry);
      v48 = v122;
      sub_1003B027C(v44, v122, type metadata accessor for FMBeaconSharingModuleEntry);
      v49 = sub_10007EBC0(&qword_1006B9D48);
      v50 = *(*(v49 - 8) + 48);
      v51 = v50(v48, 2, v49);
      if (v51)
      {
        if (v51 == 1)
        {
          v52 = 0xE200000000000000;
          v53 = 25933;
        }

        else
        {
          v53 = 0x6F73726550646441;
          v52 = 0xE90000000000006ELL;
        }
      }

      else
      {
        v54 = *(v49 + 48);
        v55 = v122;
        v56 = v117;
        v57 = v118;
        (*v116)(v117, (v122 + *(v49 + 64)), v118);
        v53 = UUID.uuidString.getter();
        v52 = v58;
        (*v115)(v56, v57);
        v59 = v55 + v54;
        v44 = v121;
        sub_1003ABABC(v59, type metadata accessor for FMBeaconSharingModuleShareState);
        v60 = v55;
        v43 = v114;
        sub_1003ABABC(v60, type metadata accessor for FMBeaconSharingModuleRelationshipType);
      }

      v61 = *(v119 + 16);
      if (*(v61 + 16))
      {

        v62 = sub_10000726C(v53, v52);
        v64 = v63;

        if (v64)
        {
          v65 = v113;
          sub_1003B027C(*(v61 + 56) + v62 * v124, v113, type metadata accessor for FMBeaconSharingModuleEntry);

          sub_1003B0214(v65, v43, type metadata accessor for FMBeaconSharingModuleEntry);
          v44 = v121;
          if ((sub_1002AA074(v43, v121) & 1) == 0)
          {
            sub_1002924FC(&v131);
            if (v132 == 2)
            {

              sub_10007EBC0(&unk_1006AF770);
              v66 = swift_allocObject();
              *(v66 + 16) = v110;
              v67 = v108;
              sub_1003B027C(v44, v108, type metadata accessor for FMBeaconSharingModuleEntry);
              v68 = v50(v67, 2, v49);
              if (v68)
              {
                if (v68 == 1)
                {
                  v69 = 0xE200000000000000;
                  v70 = 25933;
                }

                else
                {
                  v70 = 0x6F73726550646441;
                  v69 = 0xE90000000000006ELL;
                }
              }

              else
              {
                v76 = *(v49 + 48);
                v77 = v108;
                v78 = (v108 + *(v49 + 64));
                v79 = v117;
                v80 = v118;
                (*v116)(v117, v78, v118);
                v70 = UUID.uuidString.getter();
                v69 = v81;
                (*v115)(v79, v80);
                v82 = v77 + v76;
                v44 = v121;
                sub_1003ABABC(v82, type metadata accessor for FMBeaconSharingModuleShareState);
                sub_1003ABABC(v77, type metadata accessor for FMBeaconSharingModuleRelationshipType);
              }

              v2 = v120;
              v46 = v47;
              *(v66 + 32) = v70;
              *(v66 + 40) = v69;
              NSDiffableDataSourceSnapshot.reloadItems(_:)(v66);
            }

            else
            {
              sub_1003AC310(&v131);
              sub_10007EBC0(&unk_1006AF770);
              v71 = swift_allocObject();
              *(v71 + 16) = v110;
              v72 = v109;
              sub_1003B027C(v44, v109, type metadata accessor for FMBeaconSharingModuleEntry);
              v73 = v50(v72, 2, v49);
              if (v73)
              {
                if (v73 == 1)
                {
                  v74 = 0xE200000000000000;
                  v75 = 25933;
                }

                else
                {
                  v75 = 0x6F73726550646441;
                  v74 = 0xE90000000000006ELL;
                }
              }

              else
              {
                v83 = *(v49 + 48);
                v84 = v109;
                v85 = (v109 + *(v49 + 64));
                v86 = v117;
                v87 = v118;
                (*v116)(v117, v85, v118);
                v75 = UUID.uuidString.getter();
                v74 = v88;
                (*v115)(v86, v87);
                v89 = v84 + v83;
                v44 = v121;
                sub_1003ABABC(v89, type metadata accessor for FMBeaconSharingModuleShareState);
                sub_1003ABABC(v84, type metadata accessor for FMBeaconSharingModuleRelationshipType);
              }

              v2 = v120;
              v46 = v47;
              *(v71 + 32) = v75;
              *(v71 + 40) = v74;
              NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v71);
            }

            sub_1003ABABC(v43, type metadata accessor for FMBeaconSharingModuleEntry);
            goto LABEL_17;
          }

          sub_1003ABABC(v43, type metadata accessor for FMBeaconSharingModuleEntry);
        }

        else
        {

          v44 = v121;
        }
      }

      else
      {
      }

      v2 = v120;
      v46 = v47;
LABEL_17:
      sub_1003ABABC(v44, type metadata accessor for FMBeaconSharingModuleEntry);
      v45 = v46 + v124;
      if (!--v123)
      {
        goto LABEL_43;
      }
    }
  }

  LOBYTE(v131) = 0;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

LABEL_43:
  sub_1003A63D0(v106);
  if (v2[qword_1006C2BA0])
  {
    v90 = 0.3;
  }

  else
  {
    v90 = 0.0;
  }

  v91 = *&v2[qword_1006C2B90];
  v92 = swift_allocObject();
  v93 = v107;
  *(v92 + 16) = v2;
  *(v92 + 24) = v93;
  v94 = swift_allocObject();
  *(v94 + 16) = v2;
  v95 = objc_opt_self();
  v96 = swift_allocObject();
  v96[2] = v91;
  v96[3] = sub_1003AF960;
  v96[4] = v92;
  v129 = sub_1003B0E70;
  v130 = v96;
  aBlock = _NSConcreteStackBlock;
  v126 = 1107296256;
  v127 = sub_100004AE4;
  v128 = &unk_100639A50;
  v97 = _Block_copy(&aBlock);
  v98 = v2;

  v99 = v91;

  v100 = swift_allocObject();
  v100[2] = sub_1003B0E5C;
  v100[3] = v94;
  v100[4] = v99;
  v129 = sub_1003B0D54;
  v130 = v100;
  aBlock = _NSConcreteStackBlock;
  v126 = 1107296256;
  v127 = sub_10037A044;
  v128 = &unk_100639AA0;
  v101 = _Block_copy(&aBlock);
  v102 = v99;

  [v95 animateWithDuration:4 delay:v97 options:v101 animations:v90 completion:0.0];
  _Block_release(v101);
  _Block_release(v97);
}

uint64_t sub_10037E91C(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006BD150);
  __chkstk_darwin(v2 - 8);
  v71 = &v63 - v3;
  v77 = type metadata accessor for FMModernPlatterButtonEntry(0);
  v4 = *(v77 - 8);
  v5 = __chkstk_darwin(v77);
  v72 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v63 - v8;
  __chkstk_darwin(v7);
  v76 = &v63 - v10;
  v11 = type metadata accessor for UUID();
  v80 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v73 = (&v63 - v15);
  v16 = sub_10007EBC0(&qword_1006BD158);
  v65 = swift_allocBox();
  v18 = v17;
  sub_10007EBC0(&qword_1006BD160);
  sub_100004098(&qword_1006BD168, &qword_1006BD160);
  sub_1003ABA74(&unk_1006C2410, &type metadata accessor for UUID);
  v78 = v11;
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100621F38);
  v19 = *(a1 + 16);
  v64 = a1;
  if (v19)
  {
    v68 = v18;
    v69 = v16;
    v75 = v14;
    v70 = v9;
    aBlock = _swiftEmptyArrayStorage;
    sub_10016748C(0, v19, 0);
    v20 = v4;
    v21 = aBlock;
    v22 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    *&v67 = v20;
    v79 = *(v20 + 72);
    v23 = v80;
    v81 = (v80 + 16);
    v74 = (v80 + 32);
    v24 = v22;
    v63 = v19;
    v25 = v78;
    v26 = v73;
    do
    {
      v27 = v23;
      v28 = v76;
      sub_1003B027C(v24, v76, type metadata accessor for FMModernPlatterButtonEntry);
      v80 = *v81;
      (v80)(v26, v28, v25);
      sub_1003ABABC(v28, type metadata accessor for FMModernPlatterButtonEntry);
      aBlock = v21;
      v30 = v21[2];
      v29 = v21[3];
      if (v30 >= v29 >> 1)
      {
        sub_10016748C(v29 > 1, v30 + 1, 1);
        v25 = v78;
        v21 = aBlock;
      }

      v21[2] = (v30 + 1);
      v31 = (v27[80] + 32) & ~v27[80];
      v32 = v21 + v31 + *(v27 + 9) * v30;
      v23 = v27;
      (*(v27 + 4))(v32, v26, v25);
      v24 += v79;
      --v19;
    }

    while (v19);
    LOBYTE(aBlock) = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    v33 = v78;

    v76 = *&v66[qword_1006C2B80];
    swift_beginAccess();
    v74 = (v27 + 8);
    v73 = (v67 + 56);
    v34 = (v67 + 48);
    v67 = xmmword_100552220;
    v35 = v71;
    v36 = v70;
    v37 = v63;
    while (1)
    {
      sub_1003B027C(v22, v36, type metadata accessor for FMModernPlatterButtonEntry);
      v38 = v75;
      (v80)(v75, v36, v33);
      v39 = v33;
      v40 = *(v76 + 16);
      if (!*(v40 + 16))
      {
        break;
      }

      v41 = sub_1001B3964(v38);
      if ((v42 & 1) == 0)
      {

        (*v74)(v38, v78);
        goto LABEL_14;
      }

      sub_1003B027C(*(v40 + 56) + v41 * v79, v35, type metadata accessor for FMModernPlatterButtonEntry);
      (*v74)(v38, v78);

      v43 = 0;
LABEL_15:
      v44 = v77;
      (*v73)(v35, v43, 1, v77);
      if ((*v34)(v35, 1, v44) == 1)
      {
        sub_1003ABABC(v36, type metadata accessor for FMModernPlatterButtonEntry);
        sub_100012DF0(v35, &qword_1006BD150);
      }

      else
      {
        v45 = v72;
        sub_1003B0214(v35, v72, type metadata accessor for FMModernPlatterButtonEntry);
        if ((static UUID.== infix(_:_:)() & 1) != 0 && *(v45 + *(v77 + 20)) == *(v36 + *(v77 + 20)))
        {
          v47 = v45;
        }

        else
        {
          sub_10007EBC0(&qword_1006B40E0);
          v46 = swift_allocObject();
          *(v46 + 16) = v67;
          (v80)(v46 + v31, v36, v78);
          NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v46);
          v35 = v71;

          v47 = v45;
          v36 = v70;
        }

        sub_1003ABABC(v47, type metadata accessor for FMModernPlatterButtonEntry);
        sub_1003ABABC(v36, type metadata accessor for FMModernPlatterButtonEntry);
      }

      v33 = v78;
      v22 += v79;
      if (!--v37)
      {
        goto LABEL_22;
      }
    }

    (*v74)(v38, v39);
LABEL_14:
    v43 = 1;
    goto LABEL_15;
  }

  LOBYTE(aBlock) = 0;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

LABEL_22:
  v48 = v66;
  sub_1003A68A4(v64);
  if (v48[qword_1006C2BA0])
  {
    v49 = 0.3;
  }

  else
  {
    v49 = 0.0;
  }

  v50 = *&v48[qword_1006C2B90];
  v51 = swift_allocObject();
  v52 = v65;
  *(v51 + 16) = v48;
  *(v51 + 24) = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v54 = objc_opt_self();
  v55 = swift_allocObject();
  v55[2] = v50;
  v55[3] = sub_1003AFD48;
  v55[4] = v51;
  v86 = sub_1003B0E70;
  v87 = v55;
  aBlock = _NSConcreteStackBlock;
  v83 = 1107296256;
  v84 = sub_100004AE4;
  v85 = &unk_100639DC0;
  v56 = _Block_copy(&aBlock);
  v57 = v48;

  v58 = v50;

  v59 = swift_allocObject();
  v59[2] = sub_1003AFD74;
  v59[3] = v53;
  v59[4] = v58;
  v86 = sub_1003B0D54;
  v87 = v59;
  aBlock = _NSConcreteStackBlock;
  v83 = 1107296256;
  v84 = sub_10037A044;
  v85 = &unk_100639E10;
  v60 = _Block_copy(&aBlock);
  v61 = v58;

  [v54 animateWithDuration:4 delay:v56 options:v60 animations:v49 completion:0.0];
  _Block_release(v60);
  _Block_release(v56);
}

uint64_t sub_10037F324(uint64_t a1)
{
  v2 = type metadata accessor for FMItemDetailViewModel();
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v6 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v5 + v6, v4, type metadata accessor for FMItemDetailViewModel);
  sub_10038AC90(v4);
  sub_10039C650(v4);
  sub_100392B50(v4);
  sub_1003987F8();
  result = sub_1003ABABC(v4, type metadata accessor for FMItemDetailViewModel);
  *(a1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isFirstModelUpdate) = 0;
  return result;
}

uint64_t sub_10037F428(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_showSeparationAttention];
  v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_showSeparationAttention] = a1;
  if (v14 != v4)
  {
    v20 = result;
    sub_10000905C(0, &qword_1006AEDC0);
    v19 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    aBlock[4] = sub_1003B0B2C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10063ACC0;
    v16 = _Block_copy(aBlock);
    v17 = v2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1003ABA74(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v19;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v13, v20);
  }

  return result;
}

uint64_t sub_10037F7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a3;
  v50 = a5;
  v48 = a4;
  v7 = sub_10007EBC0(&qword_1006BD0C0);
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v51 = &v46 - v8;
  v9 = type metadata accessor for DelegatedSharesReportingState();
  v55 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v46 - v13;
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = type metadata accessor for DelegationState(0);
  __chkstk_darwin(v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10007EBC0(&qword_1006BD0C8);
  __chkstk_darwin(v20 - 8);
  v22 = &v46 - v21;
  v23 = sub_10007EBC0(&qword_1006BCF10);
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v52 = a1;
  v25(v22, a1, v23);
  (*(v24 + 56))(v22, 0, 1, v23);
  v26 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesReportingStateContinuation;
  swift_beginAccess();
  v56 = a2;
  v27 = a2 + v26;
  v28 = v19;
  sub_1000BBF40(v22, v27, &qword_1006BD0C8);
  swift_endAccess();
  v29 = *(*(v48 + 24) + 64);

  sub_10037FE6C(v49, v29, v19);

  if (*v19 == 1)
  {
    sub_100007204(&v19[*(v17 + 20)], v16, &qword_1006BD088);
    v30 = v55;
    (*(v55 + 104))(v16, enum case for DelegatedSharesReportingState.hasAlreadyReported(_:), v9);
    (*(v30 + 16))(v14, v16, v9);
    v31 = v51;
    AsyncStream.Continuation.yield(_:)();
    (*(v53 + 8))(v31, v54);
    v32 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesReportingState;
    v33 = v56;
    swift_beginAccess();
    (*(v30 + 24))(v33 + v32, v16, v9);
    swift_endAccess();
    v34 = v9;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100005B14(v35, qword_1006D4630);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v36, v37))
    {
      v28 = v19;
      goto LABEL_12;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "FMItemDetailContentViewController: Has a delegated shares reporting state of hasAlreadyReported", v38, 2u);
    v28 = v19;
    goto LABEL_10;
  }

  v30 = v55;
  v16 = v47;
  (*(v55 + 104))(v47, enum case for DelegatedSharesReportingState.notStarted(_:), v9);
  (*(v30 + 16))(v14, v16, v9);
  v39 = v51;
  AsyncStream.Continuation.yield(_:)();
  (*(v53 + 8))(v39, v54);
  v40 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesReportingState;
  v41 = v56;
  swift_beginAccess();
  (*(v30 + 24))(v41 + v40, v16, v9);
  swift_endAccess();
  v34 = v9;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_100005B14(v42, qword_1006D4630);
  v36 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v36, v43, "FMItemDetailContentViewController: Has a delegated shares reporting state of notStarted", v44, 2u);
LABEL_10:
  }

LABEL_12:

  (*(v30 + 8))(v16, v34);
  return sub_1003ABABC(v28, type metadata accessor for DelegationState);
}

uint64_t sub_10037FE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v52 = a2;
  v53 = a3;
  v4 = type metadata accessor for DelegatedURLShareAccessoryType();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v47 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v50 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  __chkstk_darwin(v8 - 8);
  v49 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DelegatedURLShare();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v43 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v13 - 8);
  v15 = v41 - v14;
  v16 = type metadata accessor for URL();
  v51 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v48 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v41 - v19;
  v21 = sub_10007EBC0(&unk_1006C0240);
  __chkstk_darwin(v21 - 8);
  v23 = v41 - v22;
  v24 = type metadata accessor for FMIPBeaconShare();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  v54 = a1;
  sub_100110880(sub_1003AC158, v52, v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_100012DF0(v23, &unk_1006C0240);
    v28 = type metadata accessor for DelegationState(0);
    v29 = v53;
    result = (*(v11 + 56))(&v53[*(v28 + 20)], 1, 1, v10);
    v31 = 0;
  }

  else
  {
    v42 = v11;
    v52 = v10;
    (*(v25 + 32))(v27, v23, v24);
    FMIPBeaconShare.delegatedSharesURL.getter();
    if ((*(v51 + 48))(v15, 1, v16) == 1)
    {
      (*(v25 + 8))(v27, v24);
      sub_100012DF0(v15, &unk_1006B0120);
      v32 = type metadata accessor for DelegationState(0);
      v31 = 1;
      v29 = v53;
      result = (*(v42 + 56))(&v53[*(v32 + 20)], 1, 1, v52);
    }

    else
    {
      v33 = v51;
      (*(v51 + 32))(v20, v15, v16);
      (*(v33 + 16))(v48, v20, v16);
      FMIPBeaconShare.expirationDate.getter();
      FMIPBeaconShare.beaconIdentifier.getter();
      v41[1] = *(v44 + 96);
      type metadata accessor for FMItemDetailViewModel();

      v34 = FMIPProductType.isAirTag.getter();
      v35 = &enum case for DelegatedURLShareAccessoryType.airTag(_:);
      if ((v34 & 1) == 0)
      {
        v35 = &enum case for DelegatedURLShareAccessoryType.accessory(_:);
      }

      (*(v45 + 104))(v47, *v35, v46);
      FMIPBeaconShare.visitorCount.getter();
      v36 = v43;
      DelegatedURLShare.init(url:expirationDate:accessoryId:accessoryName:accessoryType:numberOfViews:)();
      (*(v33 + 8))(v20, v16);
      (*(v25 + 8))(v27, v24);
      v37 = *(type metadata accessor for DelegationState(0) + 20);
      v38 = v42;
      v29 = v53;
      v39 = v36;
      v40 = v52;
      (*(v42 + 32))(&v53[v37], v39, v52);
      v31 = 1;
      result = (*(v38 + 56))(&v29[v37], 0, 1, v40);
    }
  }

  *v29 = v31;
  return result;
}

uint64_t sub_1003804CC()
{
  v0 = sub_10007EBC0(&qword_1006BD0A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  type metadata accessor for LostModeReportingState();
  (*(v1 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t sub_1003805E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006BD0B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  (*(v5 + 16))(&v13 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  v10 = (a2 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_onLostModeUpdate);
  v11 = *(a2 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_onLostModeUpdate);
  *v10 = sub_1003AC204;
  v10[1] = v9;
  return sub_10001835C(v11);
}

uint64_t sub_10038072C(uint64_t a1)
{
  v2 = type metadata accessor for LostModeReportingState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006BD0B8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_reportingState;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v10, v2);
  sub_10007EBC0(&qword_1006BD0B0);
  AsyncStream.Continuation.yield(_:)();
  return (*(v7 + 8))(v9, v6);
}

void sub_1003808E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006BD0A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_10007EBC0(&unk_1006BCF20);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_itemProximityContinuation;
  swift_beginAccess();
  sub_1000BBF40(v6, a2 + v9, &qword_1006BD0A0);
  swift_endAccess();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMItemDetailContentViewController: Starting proximity stream", v13, 2u);
  }
}

void sub_100380AE8(uint64_t a1, uint64_t a2, NSObject *a3, char *a4, uint64_t a5, void (*a6)(char *, char *, uint64_t))
{
  v88 = a3;
  v89 = a6;
  v75 = a5;
  v86 = a2;
  v87 = a4;
  v91 = a1;
  v6 = sub_10007EBC0(&qword_1006BD090);
  v83 = *(v6 - 8);
  v84 = v6;
  __chkstk_darwin(v6);
  v82 = &v72 - v7;
  v74 = type metadata accessor for Date();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v78 = *(v9 - 8);
  v79 = v9;
  __chkstk_darwin(v9);
  v77 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&qword_1006BD088);
  __chkstk_darwin(v11 - 8);
  v13 = &v72 - v12;
  v14 = type metadata accessor for DelegationState(0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DelegatedURLShare();
  v85 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v81 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v90 = &v72 - v22;
  v23 = __chkstk_darwin(v21);
  v76 = &v72 - v24;
  __chkstk_darwin(v23);
  v26 = &v72 - v25;
  v27 = sub_10007EBC0(&qword_1006BD098);
  __chkstk_darwin(v27 - 8);
  v29 = &v72 - v28;
  v30 = sub_10007EBC0(&qword_1006BCF00);
  v31 = *(v30 - 8);
  (*(v31 + 16))(v29, v91, v30);
  v32 = *(v31 + 56);
  v80 = v30;
  v32(v29, 0, 1, v30);
  v33 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesUpdaterContinuation;
  v34 = v86;
  swift_beginAccess();
  v35 = v34 + v33;
  v36 = v85;
  sub_1000BBF40(v29, v35, &qword_1006BD098);
  swift_endAccess();
  v37 = *(*(v87 + 3) + 64);

  sub_10037FE6C(v88, v37, v17);

  sub_100035318(&v17[*(v15 + 28)], v13, &qword_1006BD088);
  if ((*(v36 + 48))(v13, 1, v18) == 1)
  {
    sub_100012DF0(v13, &qword_1006BD088);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100005B14(v38, qword_1006D4630);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "FMItemDetailContentViewController: No initial delegated URL shares", v41, 2u);
    }
  }

  else
  {
    (*(v36 + 32))(v26, v13, v18);
    v42 = v26;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100005B14(v43, qword_1006D4630);
    v44 = v77;
    v45 = v78;
    v46 = v79;
    (*(v78 + 16))(v77, v75, v79);
    v47 = *(v36 + 16);
    v48 = v76;
    v47(v76, v42, v18);
    v89 = v47;
    v47(v90, v42, v18);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    v88 = v49;
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      LODWORD(v75) = v50;
      v52 = v51;
      v86 = swift_slowAlloc();
      v92[0] = v86;
      *v52 = 136381187;
      sub_1003ABA74(&qword_1006B7830, &type metadata accessor for UUID);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v42;
      v54 = v53;
      v56 = v55;
      (*(v45 + 8))(v44, v46);
      v57 = sub_100005B4C(v54, v56, v92);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      v58 = v72;
      DelegatedURLShare.expirationDate.getter();
      sub_1003ABA74(&qword_1006B8DF8, &type metadata accessor for Date);
      v59 = v36;
      v60 = v74;
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      (*(v73 + 8))(v58, v60);
      v64 = *(v59 + 8);
      v64(v48, v18);
      v65 = sub_100005B4C(v61, v63, v92);

      *(v52 + 14) = v65;
      *(v52 + 22) = 2048;
      v66 = v90;
      v67 = DelegatedURLShare.numberOfViews.getter();
      v64(v66, v18);
      *(v52 + 24) = v67;
      v42 = v87;
      v68 = v88;
      _os_log_impl(&_mh_execute_header, v88, v75, "FMItemDetailContentViewController: Have an initial delegated share for accessory ID %{private}s expiration %s numberOfViews %lu", v52, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v69 = v45;
      v64 = *(v36 + 8);
      v64(v90, v18);

      v64(v48, v18);
      (*(v69 + 8))(v44, v46);
    }

    v89(v81, v42, v18);
    v70 = v42;
    v71 = v82;
    AsyncStream.Continuation.yield(_:)();
    (*(v83 + 8))(v71, v84);
    v64(v70, v18);
  }
}

uint64_t sub_100381464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_100381490, 0, 0);
}

uint64_t sub_100381490()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 56);
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 48) = v4;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = type metadata accessor for DelegatedURLShare();
  *v5 = v0;
  v5[1] = sub_1003815A8;
  v7 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0x64656D2874696E69, 0xEF293A726F746169, sub_1003ABFCC, v3, v6);
}

uint64_t sub_1003815A8()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003816E4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1003816E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100381748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, void (*a7)(char *, char *, uint64_t))
{
  v96 = a7;
  v94 = a6;
  v89 = a5;
  v90 = a4;
  v101 = a1;
  v82 = type metadata accessor for Date();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10007EBC0(&qword_1006BD080);
  v93 = *(v102 - 8);
  v88 = *(v93 + 64);
  __chkstk_darwin(v102);
  v100 = &v79 - v10;
  v11 = type metadata accessor for FMItemDetailViewModel();
  v83 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v85 = v12;
  v86 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v97 = *(v13 - 8);
  v98 = v13;
  v14 = *(v97 + 64);
  v15 = __chkstk_darwin(v13);
  v92 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v84 = &v79 - v16;
  v17 = sub_10007EBC0(&qword_1006BD088);
  __chkstk_darwin(v17 - 8);
  v19 = &v79 - v18;
  v20 = type metadata accessor for DelegationState(0);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DelegatedURLShare();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v95 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v99 = &v79 - v29;
  v30 = __chkstk_darwin(v28);
  v87 = &v79 - v31;
  __chkstk_darwin(v30);
  v33 = &v79 - v32;
  v34 = *(*(a3 + 24) + 64);

  v91 = a2;
  sub_10037FE6C(a2, v34, v23);

  v35 = &v23[*(v21 + 28)];
  v36 = v25;
  sub_100035318(v35, v19, &qword_1006BD088);
  if ((*(v25 + 48))(v19, 1, v24) == 1)
  {
    sub_100012DF0(v19, &qword_1006BD088);
    v38 = v97;
    v37 = v98;
    v39 = *(v97 + 16);
    v40 = v84;
    v41 = v89;
    v39(v84, v89, v98);
    type metadata accessor for FMIPCreateDelegatedURLShareAction();
    swift_allocObject();
    v99 = FMIPCreateDelegatedURLShareAction.init(beaconIdentifier:)();
    v39(v40, v41, v37);
    v42 = v86;
    sub_1003B027C(v91, v86, type metadata accessor for FMItemDetailViewModel);
    v43 = v93;
    v44 = v102;
    (*(v93 + 16))(v100, v101, v102);
    v45 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v46 = (v14 + *(v83 + 80) + v45) & ~*(v83 + 80);
    v47 = (v85 + *(v43 + 80) + v46) & ~*(v43 + 80);
    v48 = swift_allocObject();
    (*(v38 + 32))(v48 + v45, v40, v37);
    sub_1003B0214(v42, v48 + v46, type metadata accessor for FMItemDetailViewModel);
    (*(v43 + 32))(v48 + v47, v100, v44);
    sub_1000D80D0(v99, sub_1003ABFFC, v48);
  }

  else
  {
    v50 = v97;
    v51 = v98;
    (*(v36 + 32))(v33, v19, v24);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100005B14(v52, qword_1006D4630);
    v53 = v92;
    (*(v50 + 16))(v92, v90, v51);
    v54 = *(v36 + 16);
    v55 = v87;
    v54(v87, v33, v24);
    v100 = v33;
    v96 = v54;
    v54(v99, v33, v24);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    v94 = v56;
    v58 = v24;
    if (os_log_type_enabled(v56, v57))
    {
      v59 = swift_slowAlloc();
      LODWORD(v91) = v57;
      v60 = v50;
      v61 = v59;
      v93 = swift_slowAlloc();
      v103[0] = v93;
      *v61 = 136381187;
      sub_1003ABA74(&qword_1006B7830, &type metadata accessor for UUID);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v51;
      v65 = v64;
      (*(v60 + 8))(v53, v63);
      v66 = sub_100005B4C(v62, v65, v103);

      *(v61 + 4) = v66;
      *(v61 + 12) = 2080;
      v67 = v36;
      v68 = v80;
      DelegatedURLShare.expirationDate.getter();
      sub_1003ABA74(&qword_1006B8DF8, &type metadata accessor for Date);
      v69 = v82;
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      (*(v81 + 8))(v68, v69);
      v73 = *(v67 + 8);
      v73(v55, v58);
      v74 = sub_100005B4C(v70, v72, v103);

      *(v61 + 14) = v74;
      *(v61 + 22) = 2048;
      v75 = v99;
      v76 = DelegatedURLShare.numberOfViews.getter();
      v73(v75, v58);
      *(v61 + 24) = v76;
      v77 = v94;
      _os_log_impl(&_mh_execute_header, v94, v91, "FMItemDetailContentViewController: We already have an initial delegated share for accessory ID %{private}s expiration %s numberOfViews %lu", v61, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v73 = *(v36 + 8);
      v73(v99, v24);

      v73(v55, v24);
      (*(v50 + 8))(v53, v51);
    }

    v78 = v100;
    v96(v95, v100, v58);
    CheckedContinuation.resume(returning:)();
    return (v73)(v78, v58);
  }
}

uint64_t sub_100382130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a2;
  v43 = a6;
  v40 = a5;
  v37 = a4;
  v34 = a3;
  v41 = type metadata accessor for DelegatedURLShareAccessoryType();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for DelegatedURLShare();
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = __chkstk_darwin(v11);
  v33 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v31 - v14;
  v16 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v16 - 8);
  v18 = &v31 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v31 - v24;
  sub_100007204(v42, v18, &unk_1006B0120);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_100012DF0(v18, &unk_1006B0120);
    if (v34)
    {
      v44 = v34;
      swift_errorRetain();
      sub_10007EBC0(&qword_1006BD080);
      return CheckedContinuation.resume(throwing:)();
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    (*(v20 + 32))(v25, v18, v19);
    (*(v20 + 16))(v23, v25, v19);
    static Date.now.getter();
    (*(v31 + 16))(v9, v37, v32);
    v42 = *(v40 + 96);
    type metadata accessor for FMItemDetailViewModel();

    v27 = FMIPProductType.isAirTag.getter();
    v28 = &enum case for DelegatedURLShareAccessoryType.airTag(_:);
    if ((v27 & 1) == 0)
    {
      v28 = &enum case for DelegatedURLShareAccessoryType.accessory(_:);
    }

    (*(v39 + 104))(v38, *v28, v41);
    DelegatedURLShare.init(url:expirationDate:accessoryId:accessoryName:accessoryType:numberOfViews:)();
    v30 = v35;
    v29 = v36;
    (*(v35 + 16))(v33, v15, v36);
    sub_10007EBC0(&qword_1006BD080);
    CheckedContinuation.resume(returning:)();
    (*(v30 + 8))(v15, v29);
    return (*(v20 + 8))(v25, v19);
  }

  return result;
}

void sub_10038267C()
{
  v0 = [objc_opt_self() generalPasteboard];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  [v0 setURL:v2];
}

uint64_t sub_100382714(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100382734, 0, 0);
}

uint64_t sub_100382734()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_10038282C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0x64656D2874696E69, 0xEF293A726F746169, sub_1003ABF38, v1, &type metadata for Bool);
}

uint64_t sub_10038282C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100382964;
  }

  else
  {

    v2 = sub_100382948;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100382964()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1003829CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006BD078);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8);
  (*(v10 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  type metadata accessor for FMIPStopDelegatedURLShareAction();
  swift_allocObject();
  v11 = FMIPStopDelegatedURLShareAction.init(beaconIdentifier:)();
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v7, v4);
  sub_1000D8924(v11, sub_1003ABF40, v13);
}

uint64_t sub_100382BDC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FMIPItemActionStatus();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = a2;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006BD078);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v4 + 104))(v6, enum case for FMIPItemActionStatus.success(_:), v3);
    sub_1003ABA74(&qword_1006B6898, &type metadata accessor for FMIPItemActionStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v4 + 8))(v6, v3);
    LOBYTE(v9) = v9 == v8;
    sub_10007EBC0(&qword_1006BD078);
    return CheckedContinuation.resume(returning:)();
  }
}

id sub_100382DB8()
{
  v1 = [objc_allocWithZone(ACAccountStore) init];
  v2 = [v1 aa_primaryAppleAccount];

  if (v2)
  {
    result = [v2 aa_primaryEmail];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = *(v0 + 8);

  return v8(v5, v7);
}

uint64_t sub_100382EA4(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for FMLostModeTrackable();
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for FMIPItem();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100382F94, 0, 0);
}

uint64_t sub_100382F94()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(v0[2] + 40);
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v5 + v7));
  v8 = *(v2 + 16);
  v8(v1, v5 + v6, v4);
  os_unfair_lock_unlock((v5 + v7));

  v8(v3, v1, v4);
  swift_storeEnumTagMultiPayload();
  v9 = sub_1002842B8();
  sub_1003ABABC(v3, type metadata accessor for FMLostModeTrackable);
  (*(v2 + 8))(v1, v4);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_100383124(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CharacterSet.decimalDigits.getter();
  CharacterSet.insert(_:)();

  v8 = sub_100123328(a1, a2, v7);

  (*(v5 + 8))(v7, v4);
  return v8;
}

id sub_100383234()
{
  v0 = static String.emailPredicate.getter();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 evaluateWithObject:v1];

  return v2;
}

BOOL sub_10038329C(uint64_t a1, unint64_t a2)
{
  if (sub_100122BFC(a1, a2))
  {
    return 1;
  }

  v3._countAndFlagsBits = 12331;
  v3._object = 0xE200000000000000;
  if (String.hasPrefix(_:)(v3) && String.count.getter() > 3)
  {
    return 1;
  }

  v4._countAndFlagsBits = 48;
  v4._object = 0xE100000000000000;
  return String.hasPrefix(_:)(v4) && String.count.getter() > 2;
}

uint64_t sub_100383330(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_100383358, 0, 0);
}

uint64_t sub_100383358()
{
  v1 = v0[2].i64[0];
  v2 = v0[4].i8[0];
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  v3[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v3[2].i64[0] = v1;
  v3[2].i8[8] = v2;
  v4 = swift_task_alloc();
  v0[3].i64[0] = v4;
  *v4 = v0;
  v4[1] = sub_100383468;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x64656D2874696E69, 0xEF293A726F746169, sub_1003ABBE0, v3, &type metadata for () + 8);
}

uint64_t sub_100383468()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100383584;
  }

  else
  {

    v2 = sub_1003826FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100383584()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003835E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v43 = a5;
  v44 = a4;
  v39 = a1;
  v6 = sub_10007EBC0(&qword_1006B9FD0);
  v41 = *(v6 - 8);
  v42 = v6;
  v38 = *(v41 + 64);
  __chkstk_darwin(v6);
  v47 = &v36 - v7;
  v8 = type metadata accessor for FMIPItem();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v46 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v11;
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = *(a2 + 40);
  v15 = *(*v14 + class metadata base offset for ManagedBuffer + 16);
  v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v14 + v16));
  v40 = v9;
  v17 = *(v9 + 16);
  v49 = v8;
  v45 = v17;
  v17(v13, (v14 + v15), v8);
  os_unfair_lock_unlock((v14 + v16));

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "FMItemDetailContentViewController: Submitting lost mode info. Starting with lost mode then check NFW", v21, 2u);
  }

  v48 = v13;
  v45(v46, v13, v49);
  LostModeInfo.message.getter();
  LostModeInfo.phoneNumber.getter();
  LostModeInfo.email.getter();
  type metadata accessor for FMIPLostModeItemAction();
  swift_allocObject();
  v36 = FMIPLostModeItemAction.init(item:message:phoneNumber:email:trackingEnabled:emailUpdatesEnabled:)();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "FMItemDetailContentViewController: Finished notify when found. Submitting lost mode info", v24, 2u);
  }

  v26 = v41;
  v25 = v42;
  (*(v41 + 16))(v47, v39, v42);
  v27 = v46;
  v28 = v49;
  v45(v46, v48, v49);
  v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v30 = v40;
  v31 = (v38 + *(v40 + 80) + v29) & ~*(v40 + 80);
  v32 = v31 + v37;
  v33 = (v31 + v37) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v26 + 32))(v34 + v29, v47, v25);
  (*(v30 + 32))(v34 + v31, v27, v28);
  *(v34 + v32) = v43 & 1;
  *(v34 + v33 + 8) = v44;

  sub_1000D6A90(v36, sub_1003ABD58, v34);

  return (*(v30 + 8))(v48, v28);
}

uint64_t sub_100383AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v65 = a7;
  v66 = a6;
  v67 = a5;
  v68 = a4;
  v69 = sub_10007EBC0(&qword_1006B9FD0);
  v64 = *(v69 - 8);
  v8 = *(v64 + 64);
  __chkstk_darwin(v69);
  v10 = &v53 - v9;
  v11 = type metadata accessor for FMIPNotifyItemActionType();
  v63 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPItem();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMIPItemState();
  v19 = __chkstk_darwin(v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v25 = &v53 - v24;
  if (a3)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100005B14(v26, qword_1006D4630);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "FMItemDetailContentViewController: Error with lost mode %@", v29, 0xCu);
      sub_100012DF0(v30, &unk_1006AF760);
    }

    v70 = a3;
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v60 = v23;
    v61 = v22;
    v55 = v15;
    v56 = v14;
    v62 = v17;
    v57 = v11;
    v58 = v13;
    v59 = v8;
    v33 = v66;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100005B14(v34, qword_1006D4630);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = os_log_type_enabled(v35, v36);
    v54 = v10;
    v38 = v62;
    if (v37)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "FMItemDetailContentViewController: Success with lost mode, trying notify when found", v39, 2u);
    }

    v40 = v67;
    FMIPItem.state.getter();
    static FMIPItemState.isNotifyWhenFoundActive.getter();
    sub_1003ABA74(&qword_1006C0350, &type metadata accessor for FMIPItemState);
    v41 = v61;
    v42 = dispatch thunk of SetAlgebra.isSuperset(of:)() & 1;
    v43 = *(v60 + 8);
    v43(v21, v41);
    v43(v25, v41);
    if (v42 == (v33 & 1))
    {
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "FMItemDetailContentViewController: Notify when found hasn't changed, no need to perform action.", v52, 2u);
      }

      return CheckedContinuation.resume(returning:)();
    }

    else
    {
      (*(v55 + 16))(v38, v40, v56);
      (*(v63 + 104))(v58, enum case for FMIPNotifyItemActionType.whenFound(_:), v57);
      type metadata accessor for FMIPNotifyItemAction();
      swift_allocObject();
      v44 = FMIPNotifyItemAction.init(item:type:state:)();
      v45 = v64;
      v46 = v54;
      v47 = v69;
      (*(v64 + 16))(v54, v68, v69);
      v48 = (*(v45 + 80) + 16) & ~*(v45 + 80);
      v49 = swift_allocObject();
      (*(v45 + 32))(v49 + v48, v46, v47);
      sub_1000D6A90(v44, sub_1003ABEAC, v49);
    }
  }
}

uint64_t sub_100384194(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_1003841BC, 0, 0);
}

uint64_t sub_1003841BC()
{
  v1 = v0[2].i64[0];
  v2 = v0[4].i8[0];
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  v3[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v3[2].i64[0] = v1;
  v3[2].i8[8] = v2;
  v4 = swift_task_alloc();
  v0[3].i64[0] = v4;
  *v4 = v0;
  v4[1] = sub_1003842CC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x64656D2874696E69, 0xEF293A726F746169, sub_1003ABBB8, v3, &type metadata for () + 8);
}

uint64_t sub_1003842CC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1003B0E68;
  }

  else
  {

    v2 = sub_1003B0D58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003843E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v40 = a5;
  v41 = a4;
  v39 = a1;
  v37 = sub_10007EBC0(&qword_1006B9FD0);
  v34 = *(v37 - 8);
  v38 = *(v34 + 64);
  __chkstk_darwin(v37);
  v36 = &v31 - v6;
  v7 = type metadata accessor for FMIPItem();
  v33 = *(v7 - 8);
  v8 = v33;
  v35 = *(v33 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  v42 = &v31 - v12;
  v14 = *(a2 + 40);
  v15 = *(*v14 + class metadata base offset for ManagedBuffer + 16);
  v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v14 + v16));
  v17 = *(v8 + 16);
  v17(v13, v14 + v15, v7);
  os_unfair_lock_unlock((v14 + v16));

  v31 = v7;
  v17(v11, v13, v7);
  LostModeInfo.message.getter();
  LostModeInfo.phoneNumber.getter();
  LostModeInfo.email.getter();
  type metadata accessor for FMIPLostModeItemAction();
  swift_allocObject();
  v32 = FMIPLostModeItemAction.init(item:message:phoneNumber:email:trackingEnabled:emailUpdatesEnabled:)();
  v18 = v34;
  v20 = v36;
  v19 = v37;
  (*(v34 + 16))(v36, v39, v37);
  v17(v11, v42, v7);
  v21 = v18;
  v22 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v23 = v33;
  v24 = (v38 + *(v33 + 80) + v22) & ~*(v33 + 80);
  v25 = v24 + v35;
  v26 = (v24 + v35) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v21 + 32))(v27 + v22, v20, v19);
  v28 = v27 + v24;
  v29 = v31;
  (*(v23 + 32))(v28, v11, v31);
  *(v27 + v25) = v40;
  *(v27 + v26 + 8) = v41;

  sub_1000D6A90(v32, sub_1003ABBC8, v27);

  return (*(v23 + 8))(v42, v29);
}

uint64_t sub_1003847B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v59 = a7;
  v60 = a5;
  v61 = a6;
  v63 = a4;
  v64 = sub_10007EBC0(&qword_1006B9FD0);
  v62 = *(v64 - 8);
  v8 = *(v62 + 64);
  __chkstk_darwin(v64);
  v10 = &v48 - v9;
  v11 = type metadata accessor for FMIPNotifyItemActionType();
  v58 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPItem();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMIPItemState();
  v19 = __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v25 = &v48 - v24;
  if (a3)
  {
    v65 = a3;
    swift_errorRetain();
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v53 = v23;
    v54 = v22;
    v49 = v15;
    v50 = v17;
    v55 = v14;
    v56 = v8;
    v51 = v11;
    v52 = v13;
    v27 = v61;
    v28 = v60;
    v57 = v10;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    v48 = sub_100005B14(v29, qword_1006D4630);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v27;
    v34 = v55;
    if (v32)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "FMItemDetailContentViewController: Success with lost mode, trying notify when found", v35, 2u);
    }

    FMIPItem.state.getter();
    static FMIPItemState.isNotifyWhenFoundActive.getter();
    sub_1003ABA74(&qword_1006C0350, &type metadata accessor for FMIPItemState);
    v36 = v54;
    v37 = dispatch thunk of SetAlgebra.isSuperset(of:)() & 1;
    v38 = *(v53 + 8);
    v38(v21, v36);
    v38(v25, v36);
    v39 = v62;
    v40 = v57;
    if (v37 == (v33 & 1))
    {
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "FMItemDetailContentViewController: Notify when found hasn't changed, no need to perform action.", v47, 2u);
      }

      return CheckedContinuation.resume(returning:)();
    }

    else
    {
      (*(v49 + 16))(v50, v28, v34);
      (*(v58 + 104))(v52, enum case for FMIPNotifyItemActionType.whenFound(_:), v51);
      type metadata accessor for FMIPNotifyItemAction();
      swift_allocObject();
      v41 = FMIPNotifyItemAction.init(item:type:state:)();
      v42 = v64;
      (*(v39 + 16))(v40, v63, v64);
      v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v44 = swift_allocObject();
      (*(v39 + 32))(v44 + v43, v40, v42);
      sub_1000D6A90(v41, sub_1003B0D48, v44);
    }
  }
}

uint64_t sub_100384D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100005B14(v3, qword_1006D4630);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "FMItemDetailContentViewController: Error with notify when found %@", v6, 0xCu);
      sub_100012DF0(v7, &unk_1006AF760);
    }

    sub_10007EBC0(&qword_1006B9FD0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100005B14(v10, qword_1006D4630);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "FMItemDetailContentViewController: Notify completed successfully", v13, 2u);
    }

    sub_10007EBC0(&qword_1006B9FD0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100384FA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100384FC0, 0, 0);
}

uint64_t sub_100384FC0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1003850B4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0x64656D2874696E69, 0xEF293A726F746169, sub_1003ABB1C, v1, &type metadata for () + 8);
}

uint64_t sub_1003850B4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1003851D0;
  }

  else
  {

    v2 = sub_1003B0D58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003851D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100385234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a3;
  v26 = sub_10007EBC0(&qword_1006B9FD0);
  v4 = *(v26 - 8);
  v25 = *(v4 + 64);
  __chkstk_darwin(v26);
  v24 = &v23 - v5;
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = *(a2 + 40);
  v14 = *(*v13 + class metadata base offset for ManagedBuffer + 16);
  v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v13 + v15));
  v16 = *(v7 + 16);
  v16(v12, v13 + v14, v6);
  os_unfair_lock_unlock((v13 + v15));

  v16(v10, v12, v6);
  type metadata accessor for FMIPLostModeItemAction();
  swift_allocObject();
  v17 = FMIPLostModeItemAction.init(item:message:phoneNumber:email:trackingEnabled:emailUpdatesEnabled:)();
  v18 = v24;
  v19 = v26;
  (*(v4 + 16))(v24, v27, v26);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  (*(v4 + 32))(v21 + v20, v18, v19);
  sub_1000D6A90(v17, sub_1003ABB24, v21);

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_100385540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9FD0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10007EBC0(&qword_1006B9FD0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1003855B8(uint64_t a1)
{
  v2 = type metadata accessor for ItemContactInfoEditItemsProvider.EditType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for ItemContactInfoEditItemsProvider.EditType.add(_:))
  {
    sub_10007EBC0(&qword_1006BD070);
    type metadata accessor for ItemContactInfoEditItemsProvider.EditItems();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1005528D0;
    static ItemContactInfoEditItemsProvider.EditItems.contactInfo.getter();
    static ItemContactInfoEditItemsProvider.EditItems.message.getter();
    static ItemContactInfoEditItemsProvider.EditItems.notifyWhenFound.getter();
LABEL_5:
    v10 = v7;
    sub_1003ABA74(&qword_1006BD058, &type metadata accessor for ItemContactInfoEditItemsProvider.EditItems);
    sub_10007EBC0(&qword_1006BD060);
    sub_100004098(&qword_1006BD068, &qword_1006BD060);
    return dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  if (v6 == enum case for ItemContactInfoEditItemsProvider.EditType.edit(_:))
  {
    sub_10007EBC0(&qword_1006BD070);
    type metadata accessor for ItemContactInfoEditItemsProvider.EditItems();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100552210;
    static ItemContactInfoEditItemsProvider.EditItems.contactInfo.getter();
    static ItemContactInfoEditItemsProvider.EditItems.message.getter();
    goto LABEL_5;
  }

  type metadata accessor for ItemContactInfoEditItemsProvider.EditItems();
  v10 = _swiftEmptyArrayStorage;
  sub_1003ABA74(&qword_1006BD058, &type metadata accessor for ItemContactInfoEditItemsProvider.EditItems);
  sub_10007EBC0(&qword_1006BD060);
  sub_100004098(&qword_1006BD068, &qword_1006BD060);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1003859B4(uint64_t a1)
{
  v2 = type metadata accessor for ItemContactInfoEditItemsProvider.EditType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for ItemContactInfoEditItemsProvider.EditType.add(_:))
  {
    sub_10007EBC0(&qword_1006BD070);
    type metadata accessor for ItemContactInfoEditItemsProvider.EditItems();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100552220;
    static ItemContactInfoEditItemsProvider.EditItems.notifyWhenFound.getter();
LABEL_5:
    v10 = v7;
    sub_1003ABA74(&qword_1006BD058, &type metadata accessor for ItemContactInfoEditItemsProvider.EditItems);
    sub_10007EBC0(&qword_1006BD060);
    sub_100004098(&qword_1006BD068, &qword_1006BD060);
    return dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  if (v6 == enum case for ItemContactInfoEditItemsProvider.EditType.edit(_:))
  {
    sub_10007EBC0(&qword_1006BD070);
    type metadata accessor for ItemContactInfoEditItemsProvider.EditItems();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100552220;
    static ItemContactInfoEditItemsProvider.EditItems.contactInfo.getter();
    goto LABEL_5;
  }

  type metadata accessor for ItemContactInfoEditItemsProvider.EditItems();
  v10 = _swiftEmptyArrayStorage;
  sub_1003ABA74(&qword_1006BD058, &type metadata accessor for ItemContactInfoEditItemsProvider.EditItems);
  sub_10007EBC0(&qword_1006BD060);
  sub_100004098(&qword_1006BD068, &qword_1006BD060);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100385DB0()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_delegate);
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundDelegate);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation, &unk_1006BB1B0);

  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationEvent, &qword_1006B68E0);
}

id sub_100386094()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMItemDetailContentViewController%@: deinit", v5, 0xCu);
    sub_100012DF0(v6, &unk_1006AF760);
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for FMItemDetailContentViewController(0);
  return objc_msgSendSuper2(&v9, "dealloc");
}

id sub_100386534()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result setFrame:{0.0, 0.0, 100.0, 100.0}];

    v11.receiver = v0;
    v11.super_class = type metadata accessor for FMItemDetailContentViewController(0);
    objc_msgSendSuper2(&v11, "viewDidLoad");
    My = type metadata accessor for Feature.FindMy();
    v9 = My;
    v10 = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
    v4 = sub_100008FC0(v8);
    (*(*(My - 8) + 104))(v4, enum case for Feature.FindMy.cowardlyCarrot(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100006060(v8);
    if (My)
    {
      v5 = *&v0[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostHostingController];
      [v0 addChildViewController:v5];
      [v5 didMoveToParentViewController:v0];
    }

    v6 = *&v0[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_ownerInfoSectionViewHostingController];
    [v0 addChildViewController:v6];
    [v6 didMoveToParentViewController:v0];
    v9 = &type metadata for SolariumFeatureFlag;
    v10 = sub_10000BD04();
    LOBYTE(v6) = isFeatureEnabled(_:)();
    result = sub_100006060(v8);
    if (v6)
    {
      v7 = *&v0[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_itemManagementHostingController];
      [v0 addChildViewController:v7];
      return [v7 didMoveToParentViewController:v0];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100386764(char a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FMItemDetailContentViewController(0);
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  *(*&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource] + 96) = 1;
  sub_100104C2C();
  My = type metadata accessor for Feature.FindMy();
  v6[3] = My;
  v6[4] = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v5 = sub_100008FC0(v6);
  (*(*(My - 8) + 104))(v5, enum case for Feature.FindMy.cowardlyCarrot(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v6);
  if (My)
  {
    LostModeManagementSectionViewModel.startObservingUpdates()();
  }
}

void sub_100386934(char a1)
{
  v2 = v1;
  v83 = type metadata accessor for FMIPItem();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for FMIPBeaconShare();
  v5 = *(v92 - 8);
  v6 = __chkstk_darwin(v92);
  v84 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v79 = &v78 - v8;
  v87 = type metadata accessor for UUID();
  v86 = *(v87 - 8);
  v9 = __chkstk_darwin(v87);
  v78 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v80 = &v78 - v11;
  v12 = sub_10007EBC0(&unk_1006B8DD0);
  v13 = __chkstk_darwin(v12 - 8);
  v85 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v78 - v15;
  v17 = type metadata accessor for FMSelectionPendingAction(0);
  v93 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v88 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v78 - v21;
  __chkstk_darwin(v20);
  v90 = &v78 - v23;
  v24 = sub_10007EBC0(&qword_1006B68E0);
  __chkstk_darwin(v24 - 8);
  v26 = &v78 - v25;
  v27 = type metadata accessor for FMIPSeparationEvent();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FMItemDetailContentViewController(0);
  v98.receiver = v2;
  v98.super_class = v31;
  objc_msgSendSuper2(&v98, "viewWillDisappear:", a1 & 1);
  v89 = *&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource];
  if (*(v89 + 96) == 1)
  {
    *(v89 + 96) = 0;
    sub_100104C2C();
  }

  v91 = v5;
  My = type metadata accessor for Feature.FindMy();
  v95 = My;
  v96 = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v33 = sub_100008FC0(aBlock);
  (*(*(My - 8) + 104))(v33, enum case for Feature.FindMy.cowardlyCarrot(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  if (My)
  {
    LostModeManagementSectionViewModel.stopObservingUpdates()();
  }

  v34 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationEvent;
  swift_beginAccess();
  sub_100007204(&v2[v34], v26, &qword_1006B68E0);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_100012DF0(v26, &qword_1006B68E0);
  }

  else
  {
    (*(v28 + 32))(v30, v26, v27);

    FMIPManager.enqueue(separationEvent:)();
    (*(v28 + 8))(v30, v27);
  }

  v35 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v36 = *(*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
  v37 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();
  sub_100007204(v36 + v37, v16, &unk_1006B8DD0);
  v38 = (*(v93 + 48))(v16, 1, v17);
  v39 = v92;
  if (v38 == 1)
  {
    sub_100012DF0(v16, &unk_1006B8DD0);
    v40 = v91;
  }

  else
  {
    v41 = v90;
    sub_1003B0214(v16, v90, type metadata accessor for FMSelectionPendingAction);
    sub_1003B027C(v41, v22, type metadata accessor for FMSelectionPendingAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v40 = v91;
    if (EnumCaseMultiPayload)
    {
      sub_1003ABABC(v22, type metadata accessor for FMSelectionPendingAction);
    }

    else
    {
      (*(v86 + 8))(v22, v87);
      v43 = *(*&v2[v35] + 56);
      v44 = v85;
      (*(v93 + 56))(v85, 1, 1, v17);
      v45 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
      swift_beginAccess();

      v46 = v43 + v45;
      v41 = v90;
      sub_1000BBF40(v44, v46, &unk_1006B8DD0);
      swift_endAccess();
    }

    v47 = v41;
    v48 = v88;
    sub_1003B0214(v47, v88, type metadata accessor for FMSelectionPendingAction);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v86 + 8))(v48, v87);
      v49 = *(*&v2[v35] + 56);
      v50 = v85;
      (*(v93 + 56))(v85, 1, 1, v17);
      v51 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
      swift_beginAccess();

      sub_1000BBF40(v50, v49 + v51, &unk_1006B8DD0);
      swift_endAccess();
    }

    else
    {
      sub_1003ABABC(v48, type metadata accessor for FMSelectionPendingAction);
    }
  }

  v52 = *(*&v2[v35] + 16);
  v52[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 0;
  v53 = v52;
  sub_10041E45C();

  v54 = v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending];
  v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending] = 0;
  if ((v54 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    sub_10011D7F0();
    swift_unknownObjectRelease();
  }

  if ((v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldHoldItem] & 1) == 0 && v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isSharedLostItem] == 1 && (v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isRemovingShare] & 1) == 0)
  {
    v93 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isRemovingShare;
    v55 = *(*&v2[v35] + 24);
    v56 = *(v89 + 40);
    v57 = *(*v56 + class metadata base offset for ManagedBuffer + 16);
    v58 = (*(*v56 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v56 + v58));
    v59 = v82;
    v60 = v81;
    v61 = v83;
    (*(v82 + 16))(v81, v56 + v57, v83);
    os_unfair_lock_unlock((v56 + v58));

    v63 = *(v55 + 64);
    __chkstk_darwin(v62);
    *(&v78 - 2) = v60;

    v64 = sub_1001048C4(sub_1001098B0, (&v78 - 4), v63);

    (*(v59 + 8))(v60, v61);
    v65 = *(v64 + 16);
    v66 = v84;
    if (v65)
    {
      v67 = 0;
      while (v67 < *(v64 + 16))
      {
        (*(v40 + 16))(v66, v64 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v67, v39);
        if (FMIPBeaconShare.isSharedLostItem.getter())
        {

          v68 = v79;
          (*(v40 + 32))(v79, v66, v39);
          v69 = v78;
          FMIPBeaconShare.identifier.getter();
          (*(v40 + 8))(v68, v39);
          v70 = v86;
          v71 = v80;
          v72 = v69;
          v73 = v87;
          (*(v86 + 32))(v80, v72, v87);
          v2[v93] = 1;
          v74 = [objc_allocWithZone(SPOwnerInterface) init];
          v75 = [v74 beaconSharingSession];

          isa = UUID._bridgeToObjectiveC()().super.isa;
          v96 = sub_1003875D4;
          v97 = 0;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1004318E0;
          v95 = &unk_10063ACE8;
          v77 = _Block_copy(aBlock);
          [v75 removeImportedShare:isa completion:v77];
          _Block_release(v77);
          swift_unknownObjectRelease();

          (*(v70 + 8))(v71, v73);
          return;
        }

        ++v67;
        (*(v40 + 8))(v66, v39);
        if (v65 == v67)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_27:
    }
  }
}

void sub_1003875D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100005B14(v2, qword_1006D4630);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, oslog, v3, "FMItemDetailContentViewController: failed to remove imported share with error: %@", v4, 0xCu);
      sub_100012DF0(v5, &unk_1006AF760);
    }

    else
    {
    }
  }
}

id sub_1003877DC()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for FMItemDetailContentViewController(0);
  objc_msgSendSuper2(&v19, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result layoutMargins];
  v5 = v4;

  [v1 setSpacing:v5];
  v6 = *&v0[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_firstButtonsStackView];
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  [result layoutMargins];
  v9 = v8;

  [v6 setSpacing:v9];
  v10 = *&v0[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackBottomConstraint];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  result = [v0 view];
  if (result)
  {
    v12 = result;
    [result layoutMargins];
    v14 = v13;

    [v11 setConstant:-v14];
LABEL_6:
    v15 = *&v0[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_errorConditionsAttentionModule];
    result = [v0 view];
    if (result)
    {
      v16 = result;
      [result layoutMargins];
      v18 = v17;

      *(v15 + OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_spacing) = v18;
      return [*(v15 + OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_verticalStackView) setSpacing:v18];
    }

    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_100387B5C()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B3298);
  __chkstk_darwin(v2 - 8);
  v272 = (&v249 - v3);
  v276 = type metadata accessor for FMIPItemBatteryStatus();
  v274 = *(v276 - 1);
  __chkstk_darwin(v276);
  v275 = &v249 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMIPProductType();
  v269 = *(v5 - 8);
  v270 = v5;
  __chkstk_darwin(v5);
  v267 = &v249 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPItem();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v268 = &v249 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v249 - v11;
  sub_1002791F0();
  v13 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackView;
  [*(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackView) setAxis:1];
  [*(v1 + v13) setAlignment:0];
  v273 = v13;
  [*(v1 + v13) setDistribution:3];
  v14 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_firstButtonsStackView;
  [*(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_firstButtonsStackView) setAxis:0];
  v271 = v14;
  [*(v1 + v14) setDistribution:1];
  v15 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton);
  v15[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 1;
  sub_1000D3C9C();
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = 0;
  v282 = sub_100141408;
  v283 = v17;
  aBlock = _NSConcreteStackBlock;
  v279 = 1107296256;
  v280 = sub_100004AE4;
  v281 = &unk_100639E88;
  v18 = _Block_copy(&aBlock);
  v19 = v15;

  [v16 animateWithDuration:v18 animations:0.35];
  _Block_release(v18);
  v20 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_findButton);
  v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 1;
  sub_1000D3C9C();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = 0;
  v282 = sub_100141408;
  v283 = v21;
  aBlock = _NSConcreteStackBlock;
  v279 = 1107296256;
  v280 = sub_100004AE4;
  v281 = &unk_100639ED8;
  v22 = _Block_copy(&aBlock);
  v23 = v20;

  [v16 animateWithDuration:v22 animations:0.35];
  _Block_release(v22);
  v277 = v1;
  v24 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v25 = *(v24 + 40);
  v26 = *(*v25 + class metadata base offset for ManagedBuffer + 16);
  v27 = (*(*v25 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v25 + v27));
  v28 = *(v8 + 16);
  v28(v12, v25 + v26, v7);
  os_unfair_lock_unlock((v25 + v27));

  v29 = v267;
  FMIPItem.productType.getter();
  v30 = *(v8 + 8);
  v30(v12, v7);
  v31 = FMIPProductType.isAccessory.getter();
  (*(v269 + 8))(v29, v270);
  v250 = v24;
  v32 = *(v24 + 40);
  v33 = *(*v32 + class metadata base offset for ManagedBuffer + 16);
  v34 = (*(*v32 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v32 + v34));
  v35 = v32 + v33;
  v36 = v274;
  v37 = v268;
  v28(v268, v35, v7);
  v38 = v276;
  os_unfair_lock_unlock((v32 + v34));

  v39 = v275;
  FMIPItem.batteryStatus.getter();
  v30(v37, v7);
  v40 = v39;
  v41 = (*(v36 + 88))(v39, v38);
  if (v41 == enum case for FMIPItemBatteryStatus.replace(_:))
  {
    v42 = [objc_opt_self() orangeColor];
  }

  else
  {
    v43 = v41;
    v44 = enum case for FMIPItemBatteryStatus.dead(_:);
    v45 = objc_opt_self();
    if (v43 != v44)
    {
      v46 = [v45 clearColor];
      (*(v36 + 8))(v40, v38);
      goto LABEL_7;
    }

    v42 = [v45 redColor];
  }

  v46 = v42;
LABEL_7:
  v47 = String._bridgeToObjectiveC()();
  v48 = [objc_opt_self() systemImageNamed:v47];

  v252 = v46;
  if (v48 && (v49 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleLargeTitle], v50 = objc_msgSend(v48, "imageByApplyingSymbolConfiguration:", v49), v48, v49, v50))
  {
    v51 = [v50 imageWithTintColor:v46 renderingMode:1];
  }

  else
  {
    v51 = 0;
  }

  v52 = *(v277 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lowBatteryAttention);
  v53 = v272;
  *v272 = v51;
  v54 = type metadata accessor for FMPlatterIcon();
  *(v53 + 8) = 0;
  *(v53 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v55 = *(v54 - 8);
  v56 = *(v55 + 56);
  v275 = (v55 + 56);
  v276 = v56;
  (v56)(v53, 0, 1, v54);
  v57 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  v251 = v51;
  sub_1000BBE44(v53, v52 + v57, &qword_1006B3298);
  swift_endAccess();
  sub_10032B0BC();
  sub_100012DF0(v53, &qword_1006B3298);
  v268 = 0x800000010057FDC0;
  v269 = "_SUBTITLE_PEOPLE_GENERIC";
  v58 = objc_opt_self();
  v59 = [v58 mainBundle];
  v284._object = 0x800000010057FDC0;
  v60._countAndFlagsBits = 0xD000000000000030;
  v60._object = 0x800000010057FD80;
  v284._countAndFlagsBits = 0xD000000000000042;
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  v62 = NSLocalizedString(_:tableName:bundle:value:comment:)(v60, 0, v59, v61, v284);

  *(v52 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle) = v62;

  v63 = *(v52 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel);

  v64 = String._bridgeToObjectiveC()();

  [v63 setText:v64];

  v263 = 0xD000000000000023;
  if (v31)
  {
    v65 = 0xD00000000000002DLL;
  }

  else
  {
    v65 = 0xD000000000000023;
  }

  if (v31)
  {
    v66 = "g OLD_SHARE_ATTENTION_SUBTITLE";
  }

  else
  {
    v66 = "battery.25percent";
  }

  v67 = [v58 mainBundle];
  v68.value._countAndFlagsBits = 0xD000000000000010;
  v285._countAndFlagsBits = 0xD000000000000015;
  v267 = 0xD000000000000015;
  v285._object = 0x8000000100582000;
  v69._object = (v66 | 0x8000000000000000);
  v68.value._object = 0x8000000100581FE0;
  v69._countAndFlagsBits = v65;
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, v68, v67, v70, v285);

  *(v52 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle) = v71;

  v72 = *(v52 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel);

  v73 = String._bridgeToObjectiveC()();

  [v72 setText:v73];

  v270 = v52;
  *(v52 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = 0;
  sub_10032ADBC();
  v74 = *(v277 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_locationServicesAttention);
  v274 = v54;
  swift_storeEnumTagMultiPayload();
  (v276)(v53, 0, 1, v54);
  v75 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_1000BBE44(v53, v74 + v75, &qword_1006B3298);
  swift_endAccess();
  sub_10032B0BC();
  sub_100012DF0(v53, &qword_1006B3298);
  v76 = [v58 mainBundle];
  v77._countAndFlagsBits = 0xD000000000000021;
  v286._object = 0x8000000100593F70;
  v77._object = 0x8000000100593F40;
  v286._countAndFlagsBits = 0xD000000000000033;
  v78._countAndFlagsBits = 0;
  v78._object = 0xE000000000000000;
  v79 = NSLocalizedString(_:tableName:bundle:value:comment:)(v77, 0, v76, v78, v286);

  *(v74 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title) = v79;

  v80 = *(v74 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label);

  v81 = String._bridgeToObjectiveC()();

  [v80 setText:v81];

  v82 = [v58 mainBundle];
  v83._countAndFlagsBits = 0xD000000000000024;
  v258 = 0xD000000000000024;
  v287._object = 0x8000000100593FE0;
  v83._object = 0x8000000100593FB0;
  v287._countAndFlagsBits = 0xD000000000000036;
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  v85 = NSLocalizedString(_:tableName:bundle:value:comment:)(v83, 0, v82, v84, v287);

  *(v74 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle) = v85;

  v86 = *(v74 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel);

  v87 = String._bridgeToObjectiveC()();

  [v86 setText:v87];

  v88 = [v58 mainBundle];
  v89._countAndFlagsBits = 0xD000000000000027;
  v265 = 0xD000000000000027;
  v288._object = 0x8000000100594050;
  v89._object = 0x8000000100594020;
  v288._countAndFlagsBits = 0xD000000000000039;
  v90._countAndFlagsBits = 0;
  v90._object = 0xE000000000000000;
  v91 = NSLocalizedString(_:tableName:bundle:value:comment:)(v89, 0, v88, v90, v288);

  *(v74 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle) = v91;

  v92 = *(v74 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel);

  v93 = String._bridgeToObjectiveC()();

  [v92 setText:v93];

  v266 = v74;
  *(v74 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = 1;
  sub_10032ADBC();
  v94 = *(v277 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_inaccurateAttention);
  v95 = v274;
  swift_storeEnumTagMultiPayload();
  (v276)(v53, 0, 1, v95);
  v96 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_1000BBE44(v53, v94 + v96, &qword_1006B3298);
  swift_endAccess();
  sub_10032B0BC();
  sub_100012DF0(v53, &qword_1006B3298);
  v97 = v58;
  v98 = [v58 mainBundle];
  v289._object = 0x800000010057FC90;
  v99._object = 0x800000010057FC60;
  v289._countAndFlagsBits = 0xD000000000000035;
  v99._countAndFlagsBits = v263;
  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  v101 = NSLocalizedString(_:tableName:bundle:value:comment:)(v99, 0, v98, v100, v289);

  *(v94 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title) = v101;

  v102 = *(v94 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label);

  v103 = String._bridgeToObjectiveC()();

  [v102 setText:v103];

  v104 = [v58 mainBundle];
  v290._object = 0x80000001005940C0;
  v105._object = 0x8000000100594090;
  v290._countAndFlagsBits = 0xD00000000000003DLL;
  v105._countAndFlagsBits = 0xD00000000000002BLL;
  v106._countAndFlagsBits = 0;
  v106._object = 0xE000000000000000;
  v107 = NSLocalizedString(_:tableName:bundle:value:comment:)(v105, 0, v104, v106, v290);

  *(v94 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle) = v107;

  v108 = *(v94 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel);

  v109 = String._bridgeToObjectiveC()();

  [v108 setText:v109];

  v262 = "g CANCEL_BUTTON_TITLE";
  v261._object = 0x800000010057B940;
  v110 = [v58 mainBundle];
  v111._countAndFlagsBits = 0xD000000000000017;
  v260 = 0xD000000000000017;
  v291._countAndFlagsBits = 0xD000000000000029;
  v261._countAndFlagsBits = 0xD000000000000029;
  v291._object = 0x800000010057B940;
  v111._object = 0x800000010057B920;
  v112._countAndFlagsBits = 0;
  v112._object = 0xE000000000000000;
  v113 = NSLocalizedString(_:tableName:bundle:value:comment:)(v111, 0, v110, v112, v291);

  *(v94 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle) = v113;

  v114 = *(v94 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel);

  v115 = String._bridgeToObjectiveC()();

  [v114 setText:v115];

  v264 = v94;
  *(v94 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = 1;
  sub_10032ADBC();
  v116 = *(v277 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lostModeAttention);
  v117 = v274;
  swift_storeEnumTagMultiPayload();
  (v276)(v53, 0, 1, v117);
  v118 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_1000BBE44(v53, v116 + v118, &qword_1006B3298);
  swift_endAccess();
  sub_10032B0BC();
  sub_100012DF0(v53, &qword_1006B3298);
  v119 = [v58 mainBundle];
  v120._countAndFlagsBits = 0xD000000000000019;
  v257 = 0xD000000000000019;
  v292._object = 0x8000000100594120;
  v120._object = 0x8000000100594100;
  v121._countAndFlagsBits = 0;
  v121._object = 0xE000000000000000;
  v292._countAndFlagsBits = 0xD00000000000002BLL;
  v122 = NSLocalizedString(_:tableName:bundle:value:comment:)(v120, 0, v119, v121, v292);

  *(v116 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title) = v122;

  v123 = *(v116 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label);

  v124 = String._bridgeToObjectiveC()();

  [v123 setText:v124];

  v125 = [v58 mainBundle];
  v126._countAndFlagsBits = 0xD00000000000001CLL;
  v256 = 0xD00000000000001CLL;
  v293._object = 0x8000000100594170;
  v126._object = 0x8000000100594150;
  v293._countAndFlagsBits = 0xD00000000000002ELL;
  v127._countAndFlagsBits = 0;
  v127._object = 0xE000000000000000;
  v128 = NSLocalizedString(_:tableName:bundle:value:comment:)(v126, 0, v125, v127, v293);

  *(v116 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle) = v128;

  v129 = *(v116 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel);

  v130 = String._bridgeToObjectiveC()();

  [v129 setText:v130];

  v263 = v116;
  *(v116 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = 1;
  sub_10032ADBC();
  v131 = v277;
  v132 = *(v277 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAttention);
  v133 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAttention;
  v134 = v274;
  swift_storeEnumTagMultiPayload();
  (v276)(v53, 0, 1, v134);
  v135 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  v136 = v132;
  sub_1000BBE44(v53, v132 + v135, &qword_1006B3298);
  swift_endAccess();
  sub_10032B0BC();

  sub_100012DF0(v53, &qword_1006B3298);
  v137 = *(v131 + v133);
  v255 = "AIRPODS_DIRECTIONS_TITLE";
  v138 = v137;
  v139 = [v58 mainBundle];
  v294._object = 0x800000010057D660;
  v140._object = 0x80000001005866E0;
  v141.value._object = 0x800000010057D640;
  v140._countAndFlagsBits = v258;
  v141.value._countAndFlagsBits = 0xD000000000000016;
  v142._countAndFlagsBits = 0;
  v142._object = 0xE000000000000000;
  v294._countAndFlagsBits = 0xD00000000000001BLL;
  v143 = NSLocalizedString(_:tableName:bundle:value:comment:)(v140, v141, v139, v142, v294);

  *&v138[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle] = v143;

  v144 = *&v138[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel];

  v145 = String._bridgeToObjectiveC()();

  [v144 setText:v145];

  v259 = v133;
  v146 = *(v277 + v133);
  v147 = [v97 mainBundle];
  v148._countAndFlagsBits = 0xD000000000000020;
  v258 = 0xD000000000000020;
  v295._object = 0x800000010057D660;
  v148._object = 0x8000000100586710;
  v149.value._object = (v255 | 0x8000000000000000);
  v149.value._countAndFlagsBits = 0xD000000000000016;
  v150._countAndFlagsBits = 0;
  v150._object = 0xE000000000000000;
  v295._countAndFlagsBits = 0xD00000000000001BLL;
  v151 = NSLocalizedString(_:tableName:bundle:value:comment:)(v148, v149, v147, v150, v295);

  *&v146[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle] = v151;

  v152 = *&v146[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];

  v153 = String._bridgeToObjectiveC()();

  [v152 setText:v153];

  v154 = *(v277 + v133);
  v154[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed] = 1;
  v155 = v154;
  sub_10032ADBC();

  v156 = *(v277 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundErrorAttention);
  v156[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_isChevronVisible] = 0;
  sub_1002B1E98();
  v157 = v272;
  v158 = v274;
  swift_storeEnumTagMultiPayload();
  (v276)(v157, 0, 1, v158);
  v159 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_1000BBE44(v157, &v156[v159], &qword_1006B3298);
  swift_endAccess();
  sub_1002B23D8();
  sub_100012DF0(v157, &qword_1006B3298);
  v160 = *&v156[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_label];
  v253 = "CLEAR_TAGS_MESSAGE";
  v161 = v160;
  v254 = v97;
  v162 = [v97 mainBundle];
  v163._countAndFlagsBits = 0xD00000000000001FLL;
  v296._object = 0x8000000100579A00;
  v163._object = 0x8000000100590110;
  v164.value._object = 0x80000001005799E0;
  v164.value._countAndFlagsBits = 0xD000000000000013;
  v165._countAndFlagsBits = 0;
  v165._object = 0xE000000000000000;
  v296._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v163, v164, v162, v165, v296);

  v166 = String._bridgeToObjectiveC()();

  [v161 setText:v166];

  v167 = *&v156[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitle];
  v168 = [v97 mainBundle];
  v169._countAndFlagsBits = 0xD000000000000022;
  v297._object = 0x8000000100579A00;
  v170 = v277;
  v169._object = 0x8000000100590130;
  v171.value._object = (v253 | 0x8000000000000000);
  v171.value._countAndFlagsBits = 0xD000000000000013;
  v172._countAndFlagsBits = 0;
  v172._object = 0xE000000000000000;
  v297._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v169, v171, v168, v172, v297);

  v173 = String._bridgeToObjectiveC()();

  [v167 setText:v173];

  v255 = v156;
  v156[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed] = 1;
  sub_1002B20D8();
  v174 = *(v170 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_oldShareAttention);
  v175 = v272;
  v176 = v274;
  swift_storeEnumTagMultiPayload();
  (v276)(v175, 0, 1, v176);
  v177 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_1000BBE44(v175, v174 + v177, &qword_1006B3298);
  swift_endAccess();
  sub_10032B0BC();
  sub_100012DF0(v175, &qword_1006B3298);
  v178 = v254;
  v179 = [v254 mainBundle];
  v298._object = 0x80000001005941C0;
  v180._object = 0x80000001005941A0;
  v180._countAndFlagsBits = v257;
  v181._countAndFlagsBits = 0;
  v181._object = 0xE000000000000000;
  v298._countAndFlagsBits = 0xD00000000000002BLL;
  v182 = NSLocalizedString(_:tableName:bundle:value:comment:)(v180, 0, v179, v181, v298);

  *(v174 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title) = v182;

  v183 = *(v174 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label);

  v184 = String._bridgeToObjectiveC()();

  [v183 setText:v184];

  v185 = [v178 mainBundle];
  v299._object = 0x8000000100594210;
  v186._object = 0x80000001005941F0;
  v299._countAndFlagsBits = 0xD00000000000002ELL;
  v186._countAndFlagsBits = v256;
  v187._countAndFlagsBits = 0;
  v187._object = 0xE000000000000000;
  v188 = NSLocalizedString(_:tableName:bundle:value:comment:)(v186, 0, v185, v187, v299);

  *(v174 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle) = v188;

  v189 = *(v174 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel);

  v190 = String._bridgeToObjectiveC()();

  [v189 setText:v190];

  v191 = [v178 mainBundle];
  v192._object = (v262 | 0x8000000000000000);
  v192._countAndFlagsBits = v260;
  v193._countAndFlagsBits = 0;
  v193._object = 0xE000000000000000;
  v194 = NSLocalizedString(_:tableName:bundle:value:comment:)(v192, 0, v191, v193, v261);

  *(v174 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle) = v194;

  v195 = *(v174 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel);

  v196 = String._bridgeToObjectiveC()();

  [v195 setText:v196];

  *(v174 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = 1;
  sub_10032ADBC();
  v262 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:1];
  v197 = *(v170 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsOffAttention);
  v198 = v274;
  swift_storeEnumTagMultiPayload();
  (v276)(v175, 0, 1, v198);
  v199 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_1000BBE44(v175, v197 + v199, &qword_1006B3298);
  swift_endAccess();
  sub_10032B0BC();
  sub_100012DF0(v175, &qword_1006B3298);
  v200 = [v178 mainBundle];
  v300._object = 0x800000010057BEA0;
  v201._object = 0x800000010057BE80;
  v201._countAndFlagsBits = v267;
  v202._countAndFlagsBits = 0;
  v202._object = 0xE000000000000000;
  v300._countAndFlagsBits = v265;
  v203 = NSLocalizedString(_:tableName:bundle:value:comment:)(v201, 0, v200, v202, v300);

  *(v197 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title) = v203;

  v204 = *(v197 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label);

  v205 = String._bridgeToObjectiveC()();

  [v204 setText:v205];

  v206 = [v178 mainBundle];
  v301._object = v268;
  v207._countAndFlagsBits = 0xD000000000000030;
  v207._object = (v269 | 0x8000000000000000);
  v301._countAndFlagsBits = 0xD000000000000042;
  v208._countAndFlagsBits = 0;
  v208._object = 0xE000000000000000;
  v209 = NSLocalizedString(_:tableName:bundle:value:comment:)(v207, 0, v206, v208, v301);

  *(v197 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle) = v209;

  v210 = *(v197 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel);

  v211 = String._bridgeToObjectiveC()();

  [v210 setText:v211];

  v212 = [v178 mainBundle];
  v302._object = 0x800000010057BF60;
  v213._countAndFlagsBits = 0x45535F4F545F4F47;
  v213._object = 0xEE0053474E495454;
  v214._countAndFlagsBits = 0;
  v214._object = 0xE000000000000000;
  v302._countAndFlagsBits = v258;
  v215 = NSLocalizedString(_:tableName:bundle:value:comment:)(v213, 0, v212, v214, v302);

  *(v197 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle) = v215;

  v216 = *(v197 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel);

  v217 = String._bridgeToObjectiveC()();

  [v216 setText:v217];

  *(v197 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_delegate + 8) = &off_1006391E0;
  swift_unknownObjectWeakAssign();
  *(v197 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = 1;
  sub_10032ADBC();
  v218 = v273;
  [*(v170 + v273) insertArrangedSubview:*(v170 + v259) atIndex:0];
  [*(v170 + v218) insertArrangedSubview:v266 atIndex:0];
  [*(v170 + v218) insertArrangedSubview:v264 atIndex:0];
  [*(v170 + v218) insertArrangedSubview:v263 atIndex:0];
  [*(v170 + v218) insertArrangedSubview:v270 atIndex:0];
  [*(v170 + v218) insertArrangedSubview:v255 atIndex:0];
  [*(v170 + v218) insertArrangedSubview:v174 atIndex:0];
  [*(v170 + v218) insertArrangedSubview:v197 atIndex:0];
  [*(v170 + v218) insertArrangedSubview:*(v170 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingCircleUpdatedAttention) atIndex:0];
  [*(v170 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView) addSubview:*(v170 + v218)];
  [*(v170 + v218) addArrangedSubview:*(v170 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_errorConditionsAttentionModule)];
  [*(v170 + v218) addArrangedSubview:*(v170 + v271)];
  My = type metadata accessor for Feature.FindMy();
  v281 = My;
  v220 = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v282 = v220;
  v221 = sub_100008FC0(&aBlock);
  v222 = *(*(My - 8) + 104);
  v222(v221, enum case for Feature.FindMy.itemSharing(_:), My);
  LOBYTE(v217) = isFeatureEnabled(_:)();
  sub_100006060(&aBlock);
  if ((v217 & 1) != 0 && (*(*(*(v170 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isUnderAgeUser) & 1) == 0)
  {
    v281 = &type metadata for SolariumFeatureFlag;
    v282 = sub_10000BD04();
    v223 = isFeatureEnabled(_:)();
    sub_100006060(&aBlock);
    if (v223)
    {
      [*(v170 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingContentView) addSubview:*(v170 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingViewPlatterBackgroundView)];
    }

    v224 = *(v170 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingContentView);
    [v224 addSubview:*(v170 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingView)];
    [*(v170 + v273) addArrangedSubview:v224];
  }

  v281 = My;
  v282 = v220;
  v225 = sub_100008FC0(&aBlock);
  v222(v225, enum case for Feature.FindMy.cowardlyCarrot(_:), My);
  v226 = isFeatureEnabled(_:)();
  sub_100006060(&aBlock);
  v227 = *(v170 + v273);
  if ((v226 & 1) == 0)
  {
    [v227 addArrangedSubview:*(v170 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostView)];
    goto LABEL_29;
  }

  v228 = *(v170 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostHostingController);
  v229 = v227;
  v230 = [v228 view];
  if (!v230)
  {
    __break(1u);
    goto LABEL_38;
  }

  v231 = v230;
  [v229 addArrangedSubview:v230];

  v232 = [v228 view];
  if (!v232)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v233 = v232;
  [v232 setHidden:1];

  v234 = v250 + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  if ((*(v234 + *(type metadata accessor for FMItemDetailViewModel() + 56)) & 0x1002) == 0)
  {
LABEL_29:
    v237 = v273;
    [*(v170 + v273) addArrangedSubview:*(v170 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsView)];
    [*(v170 + v237) addArrangedSubview:*(v170 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_accessoryDetailView)];
    v281 = &type metadata for SolariumFeatureFlag;
    v282 = sub_10000BD04();
    v238 = isFeatureEnabled(_:)();
    sub_100006060(&aBlock);
    v239 = *(v170 + v237);
    if ((v238 & 1) == 0)
    {
      v246 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_bottomActionsModule;
      [v239 addArrangedSubview:*(v170 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_bottomActionsModule)];
      v247 = *(v170 + v246);
      v248 = (*(v170 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isSharedLostItem) & 1) != 0 || *(*&v247[qword_1006C2B78] + 16) == 0;
      v241 = v252;
      v245 = v251;
      v244 = v262;
      [v247 setHidden:v248];
      goto LABEL_36;
    }

    v240 = *(v170 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_itemManagementHostingController);
    v241 = v239;
    v242 = [v240 view];
    if (v242)
    {
      v243 = v242;
      [v241 addArrangedSubview:v242];

      v244 = v243;
      v245 = v251;
LABEL_36:

      return;
    }

    goto LABEL_39;
  }

  v235 = [v228 view];
  if (v235)
  {
    v236 = v235;
    [v235 setHidden:0];

    goto LABEL_29;
  }

LABEL_40:
  __break(1u);
}

void sub_10038A0D8()
{
  sub_10027A200();
  v1 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackView;
  [*&v0[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [*&v0[v1] bottomAnchor];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView];
  v4 = [v3 bottomAnchor];
  v5 = [v2 constraintLessThanOrEqualToAnchor:v4];

  sub_10007EBC0(&qword_1006AFC30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1005521F0;
  v7 = [*&v0[v1] topAnchor];
  v8 = [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_labelsStackView] bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:19.0];

  *(v6 + 32) = v9;
  v10 = [*&v0[v1] leadingAnchor];
  v11 = [v0 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v59 = v5;
  v13 = [v11 leadingAnchor];

  v14 = [v10 constraintEqualToAnchor:v13 constant:16.0];
  *(v6 + 40) = v14;
  v15 = [*&v0[v1] trailingAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = objc_opt_self();
  v19 = [v17 trailingAnchor];

  v20 = [v15 constraintEqualToAnchor:v19 constant:-16.0];
  *(v6 + 48) = v20;
  v21 = [*&v0[v1] bottomAnchor];
  v22 = [v3 bottomAnchor];
  v23 = [v21 constraintLessThanOrEqualToAnchor:v22 constant:-19.0];

  *(v6 + 56) = v23;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:isa];

  My = type metadata accessor for Feature.FindMy();
  v61 = My;
  v62 = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v26 = sub_100008FC0(v60);
  (*(*(My - 8) + 104))(v26, enum case for Feature.FindMy.itemSharing(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v60);
  if ((My & 1) != 0 && (*(*(*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isUnderAgeUser) & 1) == 0)
  {
    v27 = *&v0[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingContentView];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = *&v0[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingView];
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1005521F0;
    v30 = [v28 topAnchor];
    v31 = [v27 topAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v29 + 32) = v32;
    v33 = [v28 bottomAnchor];
    v34 = [v27 bottomAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    *(v29 + 40) = v35;
    v36 = [v28 leadingAnchor];
    v37 = [v27 leadingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    *(v29 + 48) = v38;
    v39 = [v28 trailingAnchor];
    v40 = [v27 trailingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];

    *(v29 + 56) = v41;
    v42 = Array._bridgeToObjectiveC()().super.isa;

    [v18 activateConstraints:v42];

    v61 = &type metadata for SolariumFeatureFlag;
    v62 = sub_10000BD04();
    LOBYTE(v42) = isFeatureEnabled(_:)();
    sub_100006060(v60);
    if (v42)
    {
      v43 = *&v0[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingViewPlatterBackgroundView];
      [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1005521F0;
      v45 = [v28 topAnchor];
      v46 = [v43 topAnchor];
      v47 = [v45 constraintEqualToAnchor:v46];

      *(v44 + 32) = v47;
      v48 = [v28 bottomAnchor];
      v49 = [v43 bottomAnchor];
      v50 = [v48 constraintEqualToAnchor:v49];

      *(v44 + 40) = v50;
      v51 = [v28 leadingAnchor];
      v52 = [v43 leadingAnchor];
      v53 = [v51 constraintEqualToAnchor:v52];

      *(v44 + 48) = v53;
      v54 = [v28 trailingAnchor];
      v55 = [v43 trailingAnchor];
      v56 = [v54 constraintEqualToAnchor:v55];

      *(v44 + 56) = v56;
      v57 = Array._bridgeToObjectiveC()().super.isa;

      [v18 activateConstraints:v57];
    }
  }

  v58 = *&v0[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackBottomConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackBottomConstraint] = v59;
}

void sub_10038A908()
{
  v1 = objc_allocWithZone(UITapGestureRecognizer);
  v2 = v0;
  v13 = [v1 initWithTarget:v2 action:"handleDirections"];
  [*&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_directionsButton] addGestureRecognizer:v13];
  v12 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleFind"];
  [*&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_findButton] addGestureRecognizer:v12];
  v11 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleLowBattery"];
  [*&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lowBatteryAttention] addGestureRecognizer:v11];
  v10 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handlePlaySound"];
  [*&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton] addGestureRecognizer:v10];
  v9 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleSeparation"];
  [*&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAttention] addGestureRecognizer:v9];
  v8 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleSerialNumberTap"];
  [*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel] addGestureRecognizer:v8];
  v3 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleSerialNumberTap"];
  [*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel] addGestureRecognizer:v3];
  v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleSerialNumberTap"];
  [*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_headerBackground] addGestureRecognizer:v4];
  v5 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleInnaccurateLocationAttentionTap"];
  [*&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_inaccurateAttention] addGestureRecognizer:v5];
  v6 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleLocationServicesOffTap"];
  [*&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_locationServicesAttention] addGestureRecognizer:v6];
  v7 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleOldShareAttentionTap"];
  [*&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_oldShareAttention] addGestureRecognizer:v7];
  v14 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleNotificationsOffAttentionTap"];

  [*&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsOffAttention] addGestureRecognizer:v14];
}

id sub_10038AC90(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DelegatedSharesReportingState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10038BC40(a1);
  sub_10038CE64(a1);
  sub_10038AFA0(a1);
  sub_1003912F8(a1);
  sub_100390508(a1);
  sub_10038B13C();
  sub_10038FE04(a1);
  sub_100390008();
  sub_10038E0E0(a1);
  v8 = type metadata accessor for FMItemDetailViewModel();
  v9 = *&a1[*(v8 + 80)] & 0x100;
  v10 = v9 == 0;
  v11 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsView);
  v12 = v9 >> 8;
  v11[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_disabled] = BYTE1(v9);
  [v11 setUserInteractionEnabled:v10];
  sub_1003F61C0();
  v13 = *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostView);
  v13[OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_disabled] = v12;
  [v13 setUserInteractionEnabled:v10];
  sub_1004FD044();
  v14 = *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lostModeStatusCoordinator);
  v15 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesReportingState;
  swift_beginAccess();
  (*(v5 + 16))(v7, v14 + v15, v4);
  v16 = (*(v5 + 88))(v7, v4);
  v17 = v16;
  v18 = enum case for DelegatedSharesReportingState.hasAlreadyReported(_:);
  if (v16 == enum case for DelegatedSharesReportingState.hasAlreadyReported(_:) || v16 != enum case for DelegatedSharesReportingState.unknown(_:) && v16 != enum case for DelegatedSharesReportingState.notStarted(_:))
  {
    (*(v5 + 8))(v7, v4);
  }

  v19 = v17 == v18 || (*&a1[*(v8 + 56)] & 0x40) != 0;
  sub_100390758(a1);
  v27 = &type metadata for SolariumFeatureFlag;
  v28 = sub_10000BD04();
  v20 = isFeatureEnabled(_:)();
  sub_100006060(v26);
  if (v20)
  {
    return sub_100390BA4(a1, v19);
  }

  v22 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_bottomActionsModule;
  v23 = *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_bottomActionsModule);
  sub_1000EF9B0(a1, v19);

  v24 = *(v2 + v22);
  v25 = (*(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isSharedLostItem) & 1) != 0 || *(*&v24[qword_1006C2B78] + 16) == 0;
  return [v24 setHidden:v25];
}

id sub_10038AFA0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorView);
  v5 = type metadata accessor for FMItemDetailViewModel();
  v6 = OBJC_IVAR____TtC6FindMy20FMBatteryWrapperView_batteryView;
  *(*&v4[OBJC_IVAR____TtC6FindMy20FMBatteryWrapperView_batteryView] + OBJC_IVAR____TtC6FindMy13FMBatteryView_level) = *(a1 + v5[22]);
  sub_10004802C();
  v7 = *&v4[v6];
  *(v7 + OBJC_IVAR____TtC6FindMy13FMBatteryView_isCharging) = 0;
  [*(v7 + OBJC_IVAR____TtC6FindMy13FMBatteryView_chargingView) setHidden:1];
  *(*&v4[v6] + OBJC_IVAR____TtC6FindMy13FMBatteryView_powerMode) = *(a1 + v5[24]);
  sub_100048358();
  LOBYTE(a1) = *(a1 + v5[25]);
  [v4 setHidden:(a1 & 1) == 0];
  v8 = *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_separatorDotLabel);
  [v8 setHidden:(a1 & 1) == 0];
  [*(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView) contentOffset];
  v10 = 0.0;
  if ((*(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSerialNumber) & 1) == 0)
  {
    if (v9 <= 0.0)
    {
      v9 = 0.0;
    }

    v10 = 1.0 / v9;
  }

  if (v10 >= 0.01)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  [v4 setAlpha:v11];

  return [v8 setAlpha:v11];
}

uint64_t sub_10038B13C()
{
  v1 = v0;
  v74 = type metadata accessor for FMPlatterIcon();
  __chkstk_darwin(v74);
  v3 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FMItemDetailViewModel();
  __chkstk_darwin(v4);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v8 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v7 + v8, v6, type metadata accessor for FMItemDetailViewModel);
  v85 = *&v6[*(v4 + 56)];
  v84 = v4;
  v9 = *&v6[*(v4 + 80)];
  v82 = v3;
  v81 = v6;
  v10 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_directionsButton);
  v11 = *&v10[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel];
  v12 = String._bridgeToObjectiveC()();
  [v11 setText:v12];

  v75 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isRangingServiceAvailable;
  v13 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isRangingServiceAvailable);
  v83 = v9;
  v14 = sub_100168F44(v85, v9, v13);
  v78 = v14 & 0x100;
  v93[32] = v14 & 1;
  v94 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton);
  v95 = BYTE1(v14) & 1;
  v96 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_findButton);
  v15 = v96;
  v79 = v14;
  v97 = BYTE2(v14) & 1;
  v98 = v10;
  v16 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_firstButtonsStackView;
  v86 = v94;
  v80 = v15;
  v77 = v10;
  for (i = 0; i != 48; i += 16)
  {
    v18 = v93[i + 32];
    v19 = v1;
    v20 = *(v1 + v16);
    v21 = *&v93[i + 40];
    v22 = [v20 arrangedSubviews];
    sub_10000905C(0, &qword_1006BA410);
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = v21;
    __chkstk_darwin(v24);
    *(&v73 - 2) = &aBlock;
    v25 = sub_10008FC44(sub_1003B0AC4, (&v73 - 4), v23);

    v1 = v19;
    if (v18 == 1)
    {
      if ((v25 & 1) == 0)
      {
        sub_10000905C(0, &qword_1006B4980);
        v26 = static NSObject.== infix(_:_:)();
        v27 = *(v19 + v16);
        if (v26)
        {
          [v27 insertArrangedSubview:v21 atIndex:0];
        }

        else
        {
          [v27 addArrangedSubview:v21];
        }
      }
    }

    else if (v25)
    {
      [v21 removeFromSuperview];
    }
  }

  sub_10007EBC0(&qword_1006B6960);
  swift_arrayDestroy();
  v28 = v75;
  v29 = v85;
  v30 = v83;
  v76 = sub_100169288(v85, v83, *(v19 + v75));
  v31 = *(v19 + v28);
  v32 = v81;
  v33 = FMIPProductType.isAccessory.getter();

  v34 = sub_100169288(v29, v30, v31);
  v35 = v34;
  __chkstk_darwin(v34);
  *(&v73 - 2) = v36;
  OS_dispatch_queue.sync<A>(execute:)();
  v37 = aBlock;
  v38 = sub_10041E648();
  if (v33)
  {
    v39 = v38 | (v30 >> 8) & 1;
  }

  else
  {
    v39 = v38;
  }

  if (v35)
  {
    v40 = v38 | v37;
  }

  else
  {
    v40 = (v38 | (v30 >> 8) & 1) & ((v35 & 0x100) >> 8);
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100005B14(v41, qword_1006D4630);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 67109376;
    LOWORD(v30) = v83;
    *(v44 + 4) = (v40 ^ 1) & 1;
    *(v44 + 8) = 1024;
    *(v44 + 10) = (v39 ^ 1) & 1;
    _os_log_impl(&_mh_execute_header, v42, v43, "FMFindingExperiencePresenter: calculate required connectivity:\n    hasRequiredFindingConnectivity: %{BOOL}d\n    hasRequiredPlaySoundConnectivity: %{BOOL}d", v44, 0xEu);
  }

  v45 = v86[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
  v46 = v80;
  if ((v30 & 0x1000) != 0)
  {
    v86[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 1;
    sub_1000D1ACC(v45);
    v47 = v46[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
    v46[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 1;
  }

  else
  {
    v86[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = v39 & 1;
    sub_1000D1ACC(v45);
    v47 = v46[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
    v46[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = v40 & 1;
  }

  v48 = v40 | v39;
  sub_1000D1ACC(v47);
  if ((v30 & 0x100) != 0)
  {
    v49 = 1;
    v50 = v32;
  }

  else
  {
    v50 = v32;
    v49 = *(v32 + *(v84 + 76));
  }

  v51 = v78 != 0;
  v52 = v77[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
  v77[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = v49;
  sub_1000D1ACC(v52);
  if (v48 & (v51 | v79))
  {
    [*(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_errorConditionsAttentionModule) setHidden:0];
    sub_1004F37A4();
  }

  v53 = v82;
  if (v76)
  {
    *(*(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_errorConditionsAttentionModule) + OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_shouldShowAirplaneModeAttention) = 1;
    sub_1004F37A4();
    v54 = *(sub_10007EBC0(&qword_1006C0020) + 48);
    *v53 = 1;
    v55 = enum case for FMFindingType.owner(_:);
    v56 = type metadata accessor for FMFindingType();
    (*(*(v56 - 8) + 104))(&v53[v54], v55, v56);
    v57 = enum case for FMFindingTechnology.precision(_:);
    v58 = type metadata accessor for FMFindingTechnology();
    (*(*(v58 - 8) + 104))(v53, v57, v58);
    swift_storeEnumTagMultiPayload();
    v59 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon;
    swift_beginAccess();
    sub_10021FE54(v53, &v46[v59]);
    swift_endAccess();
    sub_1000D3C9C();
    v60 = objc_opt_self();
    v61 = swift_allocObject();
    *(v61 + 16) = v46;
    *(v61 + 24) = 0;
    v91 = sub_100141408;
    v92 = v61;
    aBlock = _NSConcreteStackBlock;
    v88 = 1107296256;
    v62 = &unk_10063AC70;
LABEL_32:
    v89 = sub_100004AE4;
    v90 = v62;
    v70 = _Block_copy(&aBlock);
    v71 = v46;

    [v60 animateWithDuration:v70 animations:0.35];
    _Block_release(v70);
    sub_1003ABABC(v53, type metadata accessor for FMPlatterIcon);
    return sub_1003ABABC(v50, type metadata accessor for FMItemDetailViewModel);
  }

  if ((v76 & 0x100) != 0)
  {
    *(*(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_errorConditionsAttentionModule) + OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_shouldShowAirplaneModeAttention) = 0;
    sub_1004F37A4();
    v63 = *(sub_10007EBC0(&qword_1006B68B0) + 48);
    v64 = enum case for FMFindingType.owner(_:);
    v65 = type metadata accessor for FMFindingType();
    (*(*(v65 - 8) + 104))(v53, v64, v65);
    v53[v63] = 0;
    v66 = enum case for FMFindingTechnology.proximity(_:);
    v67 = type metadata accessor for FMFindingTechnology();
    (*(*(v67 - 8) + 104))(v53, v66, v67);
    swift_storeEnumTagMultiPayload();
    v68 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon;
    swift_beginAccess();
    sub_10021FE54(v53, &v46[v68]);
    swift_endAccess();
    sub_1000D3C9C();
    v60 = objc_opt_self();
    v69 = swift_allocObject();
    *(v69 + 16) = v46;
    *(v69 + 24) = 0;
    v91 = sub_100141408;
    v92 = v69;
    aBlock = _NSConcreteStackBlock;
    v88 = 1107296256;
    v62 = &unk_10063AC20;
    goto LABEL_32;
  }

  return sub_1003ABABC(v50, type metadata accessor for FMItemDetailViewModel);
}

id sub_10038BC40(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date.FormatStyle.Symbol.TimeZone.Width();
  v157 = *(v4 - 8);
  __chkstk_darwin(v4);
  v154 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle.Symbol.TimeZone();
  v155 = *(v6 - 8);
  v156 = v6;
  __chkstk_darwin(v6);
  v153 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.FormatStyle.Symbol.Minute();
  v151 = *(v8 - 8);
  v152 = v8;
  __chkstk_darwin(v8);
  v150 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  v148 = *(v10 - 8);
  v149 = v10;
  __chkstk_darwin(v10);
  v145 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v15 - 8);
  v132 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TimeZone();
  __chkstk_darwin(v17 - 8);
  v131 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Calendar();
  __chkstk_darwin(v19 - 8);
  v130 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for Locale();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v160 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10007EBC0(&qword_1006BD1B8);
  __chkstk_darwin(v22 - 8);
  v24 = &v120 - v23;
  v25 = sub_10007EBC0(&qword_1006BD1C0);
  __chkstk_darwin(v25 - 8);
  v27 = &v120 - v26;
  v127 = type metadata accessor for Date.FormatStyle();
  v138 = *(v127 - 8);
  v28 = __chkstk_darwin(v127);
  v30 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v33 = &v120 - v32;
  v34 = __chkstk_darwin(v31);
  v126 = &v120 - v35;
  v36 = __chkstk_darwin(v34);
  v128 = &v120 - v37;
  v38 = __chkstk_darwin(v36);
  v129 = &v120 - v39;
  v40 = __chkstk_darwin(v38);
  v133 = &v120 - v41;
  __chkstk_darwin(v40);
  v134 = &v120 - v42;
  v162 = type metadata accessor for Date();
  v43 = *(v162 - 8);
  __chkstk_darwin(v162);
  v161 = &v120 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1[13];
  v46 = &v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelText];
  *v46 = a1[12];
  v46[1] = v45;

  sub_10027D190();
  v164[3] = &type metadata for SolariumFeatureFlag;
  v164[4] = sub_10000BD04();
  v47 = isFeatureEnabled(_:)();
  sub_100006060(v164);
  if (v47)
  {
    v159 = *&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryTitleLabel];
    v48 = a1[6];
    v158 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isCollapsed;
    v49 = v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isCollapsed];
    v123 = v4;
    if ((v49 & 1) != 0 || (v50 = a1[8]) == 0)
    {
      v52 = 1;
    }

    else
    {
      if ((v50 & 0x2000000000000000) != 0)
      {
        v51 = HIBYTE(v50) & 0xF;
      }

      else
      {
        v51 = a1[7] & 0xFFFFFFFFFFFFLL;
      }

      v52 = v51 == 0;
    }

    v125 = a1[5];
    v163 = v48;

    [v159 setHidden:v52];
    [*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel] setHidden:v2[v158]];
    v64 = a1 + *(type metadata accessor for FMItemDetailViewModel() + 48);
    v65 = v161;
    static Date.distantFuture.getter();
    v124 = v64;
    LOBYTE(v64) = static Date.< infix(_:_:)();
    v66 = *(v43 + 8);
    v122 = v43 + 8;
    v121 = v66;
    v66(v65, v162);
    v67 = &selRef__enter3DMode;
    if (v64)
    {
      v68 = type metadata accessor for Date.FormatStyle.DateStyle();
      (*(*(v68 - 8) + 56))(v27, 1, 1, v68);
      v69 = type metadata accessor for Date.FormatStyle.TimeStyle();
      (*(*(v69 - 8) + 56))(v24, 1, 1, v69);
      static Locale.autoupdatingCurrent.getter();
      static Calendar.autoupdatingCurrent.getter();
      static TimeZone.autoupdatingCurrent.getter();
      static FormatStyleCapitalizationContext.unknown.getter();
      Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
      v70 = v135;
      static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
      Date.FormatStyle.day(_:)();
      (*(v136 + 8))(v70, v137);
      v71 = *(v138 + 8);
      v72 = v127;
      v71(v30, v127);
      v73 = v139;
      static Date.FormatStyle.Symbol.Month.abbreviated.getter();
      v74 = v126;
      Date.FormatStyle.month(_:)();
      (*(v140 + 8))(v73, v141);
      v71(v33, v72);
      v75 = v145;
      static Date.FormatStyle.Symbol.Hour.AMPMStyle.abbreviated.getter();
      v76 = v144;
      static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)();
      (*(v148 + 8))(v75, v149);
      v77 = v128;
      Date.FormatStyle.hour(_:)();
      (*(v146 + 8))(v76, v147);
      v71(v74, v72);
      v78 = v150;
      static Date.FormatStyle.Symbol.Minute.defaultDigits.getter();
      v79 = v129;
      Date.FormatStyle.minute(_:)();
      (*(v151 + 8))(v78, v152);
      v71(v77, v72);
      v80 = v157;
      v81 = v154;
      v82 = v123;
      (*(v157 + 104))(v154, enum case for Date.FormatStyle.Symbol.TimeZone.Width.long(_:), v123);
      v83 = v153;
      static Date.FormatStyle.Symbol.TimeZone.genericName(_:)();
      (*(v80 + 8))(v81, v82);
      v84 = v133;
      Date.FormatStyle.timeZone(_:)();
      (*(v155 + 8))(v83, v156);
      v71(v79, v72);
      v85 = v160;
      static Locale.current.getter();
      v86 = v134;
      Date.FormatStyle.locale(_:)();
      (*(v142 + 8))(v85, v143);
      v71(v84, v72);
      sub_1003ABA74(&qword_1006BD1C8, &type metadata accessor for Date.FormatStyle);
      Date.formatted<A>(_:)();
      v71(v86, v72);
      v67 = &selRef__enter3DMode;
      v87 = *&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_timestampLabel];
      v88 = String._bridgeToObjectiveC()();

      [v87 setText:v88];
    }

    v89 = *&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_timestampLabel];
    if (v2[v158])
    {
      v90 = 1;
      p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
    }

    else
    {
      p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
      if (v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isSharedLostItem])
      {
        v90 = 0;
      }

      else
      {
        v93 = v161;
        v94 = *&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_timestampLabel];
        static Date.distantFuture.getter();
        v90 = static Date.< infix(_:_:)();
        v121(v93, v162);
        v89 = v94;
      }
    }

    v92 = v159;
    [v89 p:v90 & 1 ivar:?lyt[403]];
  }

  else
  {
    v53 = a1[8];
    if (v53)
    {
      v54 = a1[7];
      v55 = objc_opt_self();

      v56 = [v55 mainBundle];
      v165._object = 0x800000010057DBA0;
      v57._object = 0x800000010057DB70;
      v165._countAndFlagsBits = 0xD000000000000039;
      v57._countAndFlagsBits = 0xD000000000000027;
      v58._countAndFlagsBits = 0;
      v58._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v57, 0, v56, v58, v165);

      sub_10007EBC0(&unk_1006B20B0);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_100552210;
      *(v59 + 56) = &type metadata for String;
      v60 = sub_10008EE84();
      *(v59 + 32) = v54;
      *(v59 + 40) = v53;
      v62 = a1[5];
      v61 = a1[6];
      *(v59 + 96) = &type metadata for String;
      *(v59 + 104) = v60;
      *(v59 + 64) = v60;
      *(v59 + 72) = v62;
      *(v59 + 80) = v61;

      String.init(format:_:)();
      v163 = v63;
    }

    else
    {
      v163 = a1[6];
    }

    v67 = &selRef__enter3DMode;
    v92 = *&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryTitleLabel];
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    [v92 setHidden:1];
  }

  v95 = *&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel];
  v96 = String._bridgeToObjectiveC()();

  [v95 v67[339]];

  if (a1[8])
  {
    v97 = String._bridgeToObjectiveC()();
  }

  else
  {
    v97 = 0;
  }

  [v92 v67[339]];

  [v95 setNumberOfLines:0];
  v98 = *&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel];
  if (v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSerialNumber] == 1)
  {
    v99 = [v2 traitCollection];
    v100 = [v99 userInterfaceStyle];

    v101 = objc_opt_self();
    v102 = &selRef_tertiaryLabelColor;
    if (v100 != 2)
    {
      v102 = &selRef_systemGrayColor;
    }

    v103 = [v101 *v102];
    [v98 setTextColor:v103];

    v104 = *(a1 + *(type metadata accessor for FMItemDetailViewModel() + 104));
    [v98 setAttributedText:v104];
    v105 = [v104 string];
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    v109 = HIBYTE(v108) & 0xF;
    if ((v108 & 0x2000000000000000) == 0)
    {
      v109 = v106 & 0xFFFFFFFFFFFFLL;
    }

    result = [v98 p:v109 == 0 ivar:?lyt[403]];
    v111 = v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isLocating];
    v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isLocating] = 0;
    if (v111 == 1)
    {
      v112 = *&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_locatingIndicator];
      [v112 p:1 ivar:?lyt[403]];
      [v112 stopAnimating];
      v113 = *&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView];
      [v113 setNeedsLayout];
      return [v113 layoutIfNeeded];
    }
  }

  else
  {
    [*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel] setTextColor:a1[11]];
    v114 = a1[10];
    if (v114)
    {
      v115 = a1[9];
      v116 = String._bridgeToObjectiveC()();
      [v98 v67[339]];

      v117 = HIBYTE(v114) & 0xF;
      if ((v114 & 0x2000000000000000) == 0)
      {
        v117 = v115 & 0xFFFFFFFFFFFFLL;
      }

      v118 = v117 == 0;
    }

    else
    {
      [v98 v67[339]];
      v118 = 1;
    }

    [v98 p:v118 ivar:?lyt[403]];
    [v98 setNumberOfLines:0];
    [v98 setLineBreakMode:0];
    v119 = type metadata accessor for FMItemDetailViewModel();
    return sub_10027C468(*(a1 + *(v119 + 72)));
  }

  return result;
}

uint64_t sub_10038CE64(uint64_t a1)
{
  v3 = type metadata accessor for FMIPItem();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v148 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v153 = &v147 - v7;
  v151 = type metadata accessor for FMIPSeparationMonitoringState();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v149 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMFDevice();
  v167 = *(v9 - 8);
  v168 = v9;
  __chkstk_darwin(v9);
  v171 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&qword_1006B68E8);
  v12 = __chkstk_darwin(v11 - 8);
  v152 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v147 - v14;
  v16 = sub_10007EBC0(&qword_1006AF748);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v147 - v21;
  __chkstk_darwin(v20);
  v24 = &v147 - v23;
  v170 = v1;
  v25 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isNotifyWhenLeftBehindOnOverride);
  if (v25 == 2)
  {
    v25 = (*(a1 + *(type metadata accessor for FMItemDetailViewModel() + 80)) >> 4) & 1;
  }

  HIDWORD(v147) = v25;
  v26 = type metadata accessor for FMItemDetailViewModel();
  v27 = *(v26 + 56);
  v28 = *(v170 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isNotifyWhenFoundOnOverride);
  v155 = v26;
  if (v28 == 2)
  {
    v28 = *(a1 + *(v26 + 80)) >> 7;
  }

  v154 = v28;
  v159 = v3;
  v29 = *(a1 + v27);
  v156 = a1;
  v157 = v29;
  v169 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;

  dispatch thunk of FMFManager.myInfo.getter();

  v30 = type metadata accessor for FMFMyInfo();
  v31 = *(v30 - 8);
  v165 = *(v31 + 48);
  v166 = (v31 + 48);
  if ((v165)(v24, 1, v30) == 1)
  {
    sub_100012DF0(v24, &qword_1006AF748);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v32 = FMFMyInfo.meDeviceId.getter();
    v33 = v34;
    (*(v31 + 8))(v24, v30);
  }

  dispatch thunk of FMFManager.myInfo.getter();

  if ((v165)(v22, 1, v30) == 1)
  {
    sub_100012DF0(v22, &qword_1006AF748);
    if (!v33)
    {
      goto LABEL_19;
    }

LABEL_16:
    LODWORD(v147) = 0;
    goto LABEL_21;
  }

  v35 = FMFMyInfo.deviceId.getter();
  v37 = v36;
  (*(v31 + 8))(v22, v30);
  if (v33)
  {
    if (v37)
    {
      if (v32 == v35 && v33 == v37)
      {

        LODWORD(v147) = 1;
      }

      else
      {
        LODWORD(v147) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (!v37)
  {
LABEL_19:
    LODWORD(v147) = 1;
    v38 = v4;
    v39 = v159;
    goto LABEL_22;
  }

  LODWORD(v147) = 0;
LABEL_21:
  v38 = v4;
  v39 = v159;

LABEL_22:

  v40 = dispatch thunk of FMFManager.devices.getter();

  v160 = v15;
  if (v40)
  {
    v158 = v38;
    v42 = v167;
    v43 = v168;
    v163 = *(v40 + 16);
    v164 = v30;
    if (v163)
    {
      v44 = 0;
      v162 = v40 + ((*(v167 + 80) + 32) & ~*(v167 + 80));
      v161 = v167 + 16;
      v45 = (v31 + 8);
      v46 = (v167 + 8);
      v47 = v164;
      while (1)
      {
        if (v44 >= *(v40 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v42 + 16))(v171, v162 + *(v42 + 72) * v44, v43);
        v48 = FMFDevice.identifier.getter();
        v50 = v49;

        dispatch thunk of FMFManager.myInfo.getter();

        if ((v165)(v19, 1, v47) == 1)
        {
          break;
        }

        v51 = FMFMyInfo.meDeviceId.getter();
        v53 = v52;
        (*v45)(v19, v47);
        if (!v53)
        {
          goto LABEL_26;
        }

        if (v48 == v51 && v53 == v50)
        {

LABEL_38:

          v56 = v167;
          v57 = v168;
          v58 = v160;
          (*(v167 + 32))(v160, v171, v168);
          (*(v56 + 56))(v58, 0, 1, v57);
          goto LABEL_39;
        }

        v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v54)
        {
          goto LABEL_38;
        }

LABEL_27:
        ++v44;
        v43 = v168;
        result = (*v46)(v171, v168);
        v42 = v167;
        if (v163 == v44)
        {
          goto LABEL_35;
        }
      }

      sub_100012DF0(v19, &qword_1006AF748);
LABEL_26:

      goto LABEL_27;
    }

LABEL_35:

    (*(v42 + 56))(v160, 1, 1, v43);
LABEL_39:
    v55 = v158;
    v39 = v159;
  }

  else
  {
    (*(v167 + 56))(v15, 1, 1, v168);
    v55 = v38;
  }

  v59 = v170;

  v60 = v149;
  FMIPManager.separationMonitoringState.getter();

  LODWORD(v162) = FMIPSeparationMonitoringState.allowsSeparationMonitoringConfiguration.getter();
  v61 = *(v150 + 8);
  v62 = v151;
  v61(v60, v151);

  FMIPManager.separationMonitoringState.getter();

  LODWORD(v171) = FMIPSeparationMonitoringState.allowsSeparationMonitoringUI.getter();
  v61(v60, v62);
  v63 = *(v59 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsView);
  v165 = *(v59 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v64 = *(v165 + 40);
  v65 = *(*v64 + class metadata base offset for ManagedBuffer + 16);
  v66 = (*(*v64 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v64 + v66));
  v67 = v64 + v65;
  v68 = v153;
  v166 = *(v55 + 16);
  v163 = v55 + 16;
  v166(v153, v67, v39);
  os_unfair_lock_unlock((v64 + v66));

  v69 = FMIPItem.safeLocations.getter();
  v70 = v39;
  v164 = *(v55 + 8);
  v164(v68, v39);
  v71 = *(v69 + 16);

  v72 = v152;
  sub_100007204(v160, v152, &qword_1006B68E8);
  v74 = v167;
  v73 = v168;
  v75 = (*(v167 + 48))(v72, 1, v168);
  v158 = v55 + 8;
  v76 = v71;
  if (v75 == 1)
  {
    sub_100012DF0(v72, &qword_1006B68E8);
    v77 = 0;
    v78 = 0;
  }

  else
  {
    v77 = FMFDevice.name.getter();
    v78 = v79;
    (*(v74 + 8))(v72, v73);
  }

  v80 = *(*(v170 + v169) + 16);
  v81 = sub_100057590();

  v82 = v63;
  if (v81 == 1)
  {
    if (v171)
    {
      countAndFlagsBits = 0;
      v84 = *&v63[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch];
      goto LABEL_49;
    }
  }

  else if (v171)
  {
    v84 = *&v63[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch];
    if (v81 != 3)
    {
      v91 = [objc_opt_self() mainBundle];
      v86 = v162;
      if ((v147 & 0x100000000) != 0)
      {
        v92 = 0xD00000000000001DLL;
        v146 = 0x8000000100588AA0;
        v93 = 0x8000000100588A80;
        v94.super.isa = v91;
        v95 = 0;
        v96 = 0xE000000000000000;
        v97 = 0xD00000000000002FLL;
      }

      else
      {
        v92 = 0xD00000000000001ELL;
        v146 = 0x8000000100588A40;
        v93 = 0x8000000100588A20;
        v97 = 0xD000000000000030;
        v94.super.isa = v91;
        v95 = 0;
        v96 = 0xE000000000000000;
      }

      v98 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v92, 0, v94, *&v95, *&v97);
      countAndFlagsBits = v98._countAndFlagsBits;
      object = v98._object;

LABEL_55:
      v99 = (v84 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_subtitle);
      *v99 = countAndFlagsBits;
      v99[1] = object;

      v100 = *(v84 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_secondaryLabel);

      v101 = v100;
      v102 = String._bridgeToObjectiveC()();

      [v101 setText:v102];

      if ((v157 & 0x10) == 0)
      {
        v103 = &v82[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch];
        v104 = [objc_opt_self() mainBundle];
        v105.value._countAndFlagsBits = 0xD000000000000016;
        v174._countAndFlagsBits = 0xD00000000000001BLL;
        v174._object = 0x800000010057D660;
        v106._object = 0x8000000100588AD0;
        v105.value._object = 0x800000010057D640;
        v106._countAndFlagsBits = 0xD00000000000002FLL;
        v107._countAndFlagsBits = 0;
        v107._object = 0xE000000000000000;
        v108 = NSLocalizedString(_:tableName:bundle:value:comment:)(v106, v105, v104, v107, v174);

        sub_100502538(v108._countAndFlagsBits, v108._object);
        v86 = 0;
LABEL_57:
        v88 = v156;
LABEL_64:
        v89 = v155;
        v90 = v154;
        [*v103 setUserInteractionEnabled:{v86 & 1, v147}];
        *(*&v82[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch] + OBJC_IVAR____TtC6FindMy16FMSettingRowView_enabled) = v86 & 1;
        sub_100503F58();
        v70 = v159;
        goto LABEL_65;
      }

      if (v86)
      {
        if (!(v147 & 1 | (v78 == 0)))
        {
          if ((v147 & 0x100000000) != 0)
          {
            v134 = 0xD000000000000028;
          }

          else
          {
            v134 = 0xD000000000000029;
          }

          if ((v147 & 0x100000000) != 0)
          {
            v135 = "OTIFICATIONS_DISABLED_FOR";
          }

          else
          {
            v135 = "BLED_FOR_APPLE_WATCH";
          }

          v103 = &v82[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch];
          v171 = *&v82[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch];
          v172 = 0;
          v173 = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          v172 = 0xD000000000000012;
          v173 = 0x800000010057A180;
          v136._object = (v135 | 0x8000000000000000);
          v136._countAndFlagsBits = v134;
          String.append(_:)(v136);
          v137 = v172;
          v138 = v173;
          v139 = [objc_opt_self() mainBundle];
          v177._object = v138;
          v140._object = (v135 | 0x8000000000000000);
          v140._countAndFlagsBits = v134;
          v141._countAndFlagsBits = 0;
          v141._object = 0xE000000000000000;
          v177._countAndFlagsBits = v137;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v140, 0, v139, v141, v177);

          sub_10007EBC0(&unk_1006B20B0);
          v142 = swift_allocObject();
          *(v142 + 16) = xmmword_100552220;
          *(v142 + 56) = &type metadata for String;
          *(v142 + 64) = sub_10008EE84();
          *(v142 + 32) = v77;
          *(v142 + 40) = v78;

          v143 = String.init(format:_:)();
          v145 = v144;

          sub_100502538(v143, v145);
          v86 = 1;
          goto LABEL_57;
        }

        if (v76)
        {
          v109 = v76;
          v110 = [objc_opt_self() mainBundle];
          v175._object = 0x8000000100588B40;
          v111._countAndFlagsBits = 0xD000000000000037;
          v111._object = 0x8000000100588B00;
          v175._countAndFlagsBits = 0xD000000000000049;
          v112._countAndFlagsBits = 0;
          v112._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v111, 0, v110, v112, v175);

          sub_10007EBC0(&unk_1006B20B0);
          v113 = swift_allocObject();
          *(v113 + 16) = xmmword_100552220;
          *(v113 + 56) = &type metadata for Int;
          *(v113 + 64) = &protocol witness table for Int;
          *(v113 + 32) = v109;
          v114 = static String.localizedStringWithFormat(_:_:)();
          v116 = v115;

          v117 = v114;
          v118 = v116;
        }

        else
        {
          v117 = 0;
          v118 = 0xE000000000000000;
        }
      }

      else
      {
        v119 = [objc_opt_self() mainBundle];
        v120.value._countAndFlagsBits = 0xD000000000000016;
        v176._countAndFlagsBits = 0xD00000000000001BLL;
        v176._object = 0x800000010057D660;
        v121._object = 0x8000000100588C70;
        v120.value._object = 0x800000010057D640;
        v121._countAndFlagsBits = 0xD00000000000002FLL;
        v122._countAndFlagsBits = 0;
        v122._object = 0xE000000000000000;
        v123 = NSLocalizedString(_:tableName:bundle:value:comment:)(v121, v120, v119, v122, v176);

        v117 = v123._countAndFlagsBits;
        v118 = v123._object;
      }

      sub_100502538(v117, v118);
      v88 = v156;
      v103 = &v82[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch];
      goto LABEL_64;
    }

    countAndFlagsBits = 0;
LABEL_49:
    object = 0xE000000000000000;
    v86 = v162;
    goto LABEL_55;
  }

  [*&v63[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch] removeFromSuperview];
  v87 = *&v63[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenFoundSwitch];
  *(v87 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separated) = 0;
  [*(v87 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator) setHidden:1];
  v89 = v155;
  v88 = v156;
  v90 = v154;
LABEL_65:
  v124 = OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenFoundSwitch;
  *(*&v82[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenFoundSwitch] + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled) = ((v157 & 8) != 0) & ~v82[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_disabled];
  sub_10014B454();
  v125 = *&v82[v124];
  *(v125 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn) = v90 & 1;
  [*(v125 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch) setOn:?];

  v126 = *(v88 + *(v89 + 64));
  v127 = v160;
  if (v126)
  {
    v128 = 1;
  }

  else
  {
    v129 = *(v165 + 40);
    v130 = *(*v129 + class metadata base offset for ManagedBuffer + 16);
    v131 = (*(*v129 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v129 + v131));
    v132 = v129 + v130;
    v133 = v148;
    v166(v148, v132, v70);
    os_unfair_lock_unlock((v129 + v131));

    LOBYTE(v129) = FMIPItem.isOwner.getter();
    v164(v133, v70);
    v128 = v129 ^ 1;
  }

  [v82 setHidden:v128 & 1];
  return sub_100012DF0(v127, &qword_1006B68E8);
}

id sub_10038E0E0(char *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v160 = type metadata accessor for ItemProximityProvider.Proximity();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v136[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10007EBC0(&unk_1006BCF20);
  v168 = *(v5 - 8);
  v169 = v5;
  __chkstk_darwin(v5);
  v157 = &v136[-v6];
  v7 = sub_10007EBC0(&qword_1006BD198);
  __chkstk_darwin(v7 - 8);
  v9 = &v136[-v8];
  v10 = sub_10007EBC0(&qword_1006BCF10);
  v170 = *(v10 - 8);
  v171 = v10;
  __chkstk_darwin(v10);
  v156 = &v136[-v11];
  v12 = sub_10007EBC0(&qword_1006BD1A0);
  __chkstk_darwin(v12 - 8);
  v172 = &v136[-v13];
  v152 = sub_10007EBC0(&qword_1006BCF00);
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v142 = &v136[-v14];
  v15 = sub_10007EBC0(&qword_1006BD1A8);
  __chkstk_darwin(v15 - 8);
  v17 = &v136[-v16];
  v148 = type metadata accessor for Date();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v146 = &v136[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v145 = type metadata accessor for UUID();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = &v136[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_10007EBC0(&qword_1006BD088);
  __chkstk_darwin(v20 - 8);
  v162 = &v136[-v21];
  v22 = type metadata accessor for DelegatedURLShare();
  v23 = *(v22 - 8);
  v165 = v22;
  v166 = v23;
  v24 = __chkstk_darwin(v22);
  v141 = &v136[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v24);
  v163 = &v136[-v27];
  v28 = __chkstk_darwin(v26);
  v153 = &v136[-v29];
  v30 = __chkstk_darwin(v28);
  v149 = &v136[-v31];
  __chkstk_darwin(v30);
  v164 = &v136[-v32];
  v161 = type metadata accessor for DelegationState(0);
  __chkstk_darwin(v161);
  v173 = &v136[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = type metadata accessor for DelegatedSharesReportingState();
  v35 = *(v34 - 8);
  v174 = v34;
  v175 = v35;
  v36 = __chkstk_darwin(v34);
  v154 = &v136[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v36);
  v176 = &v136[-v38];
  v39 = sub_10007EBC0(&unk_1006C1D10);
  __chkstk_darwin(v39 - 8);
  v41 = &v136[-v40];
  v42 = type metadata accessor for FMIPItem();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v45 = &v136[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v155 = type metadata accessor for FMItemDetailViewModel();
  v46 = *&a1[*(v155 + 56)];
  My = type metadata accessor for Feature.FindMy();
  v177[3] = My;
  v177[4] = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v48 = sub_100008FC0(v177);
  (*(*(My - 8) + 104))(v48, enum case for Feature.FindMy.cowardlyCarrot(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v177);
  if ((My & 1) == 0)
  {
    goto LABEL_5;
  }

  v139 = v17;
  v140 = v9;
  v49 = *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lostModeStatusCoordinator);
  v50 = *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v150 = a1;
  a1 = *(v50 + 40);
  v51 = *(*a1 + class metadata base offset for ManagedBuffer + 16);
  v52 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock(&a1[v52]);
  (*(v43 + 16))(v45, &a1[v51], v42);
  os_unfair_lock_unlock(&a1[v52]);
  v53 = v150;

  FMIPItem.lostMetadata.getter();
  (*(v43 + 8))(v45, v42);
  sub_10038F694(v53, v41);
  sub_100012DF0(v41, &unk_1006C1D10);
  v54 = v46 & 0x1002;
  result = [*(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostHostingController) view];
  v56 = result;
  if ((v46 & 0x1002) != 0)
  {
    v57 = v175;
    v46 = v173;
    if (!result)
    {
      __break(1u);
LABEL_5:
      v58 = *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostView);
      sub_1004FC984(a1);
      return [v58 setHidden:(v46 & 2) == 0];
    }
  }

  else
  {
    v57 = v175;
    v46 = v173;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  [result setHidden:v54 == 0];

  v59 = *(*(*(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 24) + 64);

  sub_10037FE6C(v53, v59, v46);

  v60 = *v46;
  ObjectType = v49;
  if (v60 == 1)
  {
    v61 = *(v161 + 20);
    v62 = v176;
    sub_100007204(v46 + v61, v176, &qword_1006BD088);
    v63 = v174;
    (*(v57 + 13))(v62, enum case for DelegatedSharesReportingState.hasAlreadyReported(_:), v174);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100005B14(v64, qword_1006D4630);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    v67 = os_log_type_enabled(v65, v66);
    v69 = v170;
    v68 = v171;
    if (v67)
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "FMItemDetailContentViewController: Have a delegated shares reporting state of hasAlreadyReported", v70, 2u);
      v63 = v174;
    }

    v71 = v162;
    sub_100007204(v46 + v61, v162, &qword_1006BD088);
    v73 = v165;
    v72 = v166;
    if ((*(v166 + 48))(v71, 1, v165) == 1)
    {
      sub_100012DF0(v71, &qword_1006BD088);
      v74 = v169;
      v57 = v175;
    }

    else
    {
      v82 = v71;
      v83 = v164;
      (*(v72 + 32))(v164, v82, v73);
      v84 = (v72 + 16);
      v85 = *(v72 + 16);
      v86 = v149;
      (v85)(v149, v83, v73);
      v87 = v153;
      (v85)(v153, v83, v73);
      v162 = v85;
      (v85)(v163, v83, v73);
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v177[0] = v161;
        *v90 = 136381187;
        v91 = v143;
        v138 = v88;
        DelegatedURLShare.accessoryId.getter();
        sub_1003ABA74(&qword_1006B7830, &type metadata accessor for UUID);
        v92 = v145;
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v137 = v89;
        v95 = v94;
        (*(v144 + 8))(v91, v92);
        v96 = *(v72 + 8);
        v96(v86, v73);
        v97 = sub_100005B4C(v93, v95, v177);

        *(v90 + 4) = v97;
        *(v90 + 12) = 2080;
        v98 = v146;
        v99 = v153;
        DelegatedURLShare.expirationDate.getter();
        sub_1003ABA74(&qword_1006B8DF8, &type metadata accessor for Date);
        v100 = v148;
        v101 = dispatch thunk of CustomStringConvertible.description.getter();
        v103 = v102;
        (*(v147 + 8))(v98, v100);
        v96(v99, v73);
        v104 = sub_100005B4C(v101, v103, v177);
        v46 = v173;

        *(v90 + 14) = v104;
        *(v90 + 22) = 2048;
        v105 = v163;
        v106 = DelegatedURLShare.numberOfViews.getter();
        v96(v105, v73);
        *(v90 + 24) = v106;
        v107 = v138;
        _os_log_impl(&_mh_execute_header, v138, v137, "FMItemDetailContentViewController: Have an initial delegated share for accessory ID %{private}s expiration %s numberOfViews %lu", v90, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v96 = *(v72 + 8);
        v96(v163, v73);

        v96(v87, v73);
        v96(v86, v73);
      }

      v57 = v175;
      v108 = v152;
      v109 = v151;
      v110 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesUpdaterContinuation;
      v111 = ObjectType;
      swift_beginAccess();
      v112 = (*(v109 + 48))(v111 + v110, 1, v108);
      v63 = v174;
      if (v112)
      {
        v96(v164, v73);
        swift_endAccess();
        v113 = 1;
        v53 = v150;
        v74 = v169;
        v114 = v139;
      }

      else
      {
        v115 = *(v109 + 16);
        v173 = v84;
        v116 = v73;
        v117 = v142;
        v115(v142, v111 + v110, v108);
        swift_endAccess();
        v175 = v96;
        v118 = v164;
        (v162)(v141, v164, v116);
        v114 = v139;
        AsyncStream.Continuation.yield(_:)();
        (*(v109 + 8))(v117, v108);
        v175(v118, v165);
        v113 = 0;
        v53 = v150;
        v74 = v169;
      }

      v119 = sub_10007EBC0(&qword_1006BD090);
      (*(*(v119 - 8) + 56))(v114, v113, 1, v119);
      sub_100012DF0(v114, &qword_1006BD1A8);
      v120 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesReportingState;
      swift_beginAccess();
      (*(v57 + 3))(v111 + v120, v176, v63);
      swift_endAccess();
      v69 = v170;
      v68 = v171;
    }
  }

  else
  {
    v75 = v176;
    v63 = v174;
    (*(v57 + 13))(v176, enum case for DelegatedSharesReportingState.notStarted(_:), v174);
    v76 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesReportingState;
    swift_beginAccess();
    (*(v57 + 3))(v49 + v76, v75, v63);
    swift_endAccess();
    v74 = v169;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_100005B14(v77, qword_1006D4630);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    v80 = os_log_type_enabled(v78, v79);
    v69 = v170;
    v68 = v171;
    if (v80)
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "FMItemDetailContentViewController: Have a delegated shares reporting state of unknown", v81, 2u);
      v46 = v173;
    }
  }

  v121 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesReportingStateContinuation;
  v122 = ObjectType;
  swift_beginAccess();
  v123 = 1;
  if (!(*(v69 + 48))(v122 + v121, 1, v68))
  {
    v124 = v122 + v121;
    v125 = v156;
    (*(v69 + 16))(v156, v124, v68);
    (*(v57 + 2))(v154, v176, v63);
    AsyncStream.Continuation.yield(_:)();
    (*(v69 + 8))(v125, v68);
    v123 = 0;
  }

  v126 = sub_10007EBC0(&qword_1006BD0C0);
  v127 = v172;
  (*(*(v126 - 8) + 56))(v172, v123, 1, v126);
  sub_100012DF0(v127, &qword_1006BD1A0);
  v128 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_itemProximityContinuation;
  swift_beginAccess();
  v129 = v168;
  if ((*(v168 + 48))(v122 + v128, 1, v74))
  {
    sub_1003ABABC(v46, type metadata accessor for DelegationState);
    (*(v57 + 1))(v176, v63);
    swift_endAccess();
    v130 = 1;
    v131 = v140;
  }

  else
  {
    v132 = v46;
    v133 = v157;
    (*(v129 + 16))(v157, v122 + v128, v74);
    swift_endAccess();
    if ((*(v53 + *(v155 + 80)) & 0x20) != 0)
    {
      v134 = &enum case for ItemProximityProvider.Proximity.withinBTRange(_:);
    }

    else
    {
      v134 = &enum case for ItemProximityProvider.Proximity.far(_:);
    }

    (*(v159 + 104))(v158, *v134, v160);
    v131 = v140;
    AsyncStream.Continuation.yield(_:)();
    (*(v129 + 8))(v133, v74);
    sub_1003ABABC(v132, type metadata accessor for DelegationState);
    (*(v57 + 1))(v176, v63);
    v130 = 0;
  }

  v135 = sub_10007EBC0(&qword_1006BD1B0);
  (*(*(v135 - 8) + 56))(v131, v130, 1, v135);
  return sub_100012DF0(v131, &qword_1006BD198);
}

uint64_t sub_10038F694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = a2;
  v56 = a1;
  v4 = type metadata accessor for LostModeReportingState();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v48 - v8;
  v9 = type metadata accessor for LostModeInfo();
  v52 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&unk_1006C1D10);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  v15 = type metadata accessor for FMIPItemLostModeMetadata();
  v57 = *(v15 - 8);
  v58 = v15;
  __chkstk_darwin(v15);
  v53 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4630);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v49 = v9;
    v21 = v20;
    v22 = swift_slowAlloc();
    v50 = v5;
    v48 = v4;
    v23 = v22;
    v59[0] = v22;
    *v21 = 136315138;
    type metadata accessor for UUID();
    sub_1003ABA74(&qword_1006B7830, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = sub_100005B4C(v24, v25, v59);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "FMItemDetailLostModeStatusCoordinator: Logging update lost mode for accessory id %s", v21, 0xCu);
    sub_100006060(v23);
    v4 = v48;
    v5 = v50;

    v9 = v49;
  }

  v27 = type metadata accessor for FMItemDetailViewModel();
  v28 = v57;
  v29 = v58;
  if ((*(v56 + *(v27 + 80)) & 8) == 0)
  {
    goto LABEL_8;
  }

  sub_100007204(v54, v14, &unk_1006C1D10);
  if ((*(v28 + 48))(v14, 1, v29) == 1)
  {
    sub_100012DF0(v14, &unk_1006C1D10);
LABEL_8:
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "FMItemDetailLostModeStatusCoordinator: Lost mode is not active, user has not reported", v32, 2u);
    }

    v33 = v55;
    (*(v5 + 104))(v55, enum case for LostModeReportingState.notStarted(_:), v4);
    v34 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_reportingState;
    swift_beginAccess();
    (*(v5 + 24))(v3 + v34, v33, v4);
    swift_endAccess();
    v35 = *(v3 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_onLostModeUpdate);
    if (v35)
    {

      v35(v3);
      sub_10001835C(v35);
    }

    return (*(v5 + 8))(v33, v4);
  }

  v37 = *(v28 + 32);
  v38 = v53;
  v37(v53, v14, v29);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "FMItemDetailLostModeStatusCoordinator: Lost mode is active and user has reported", v41, 2u);
    v38 = v53;
  }

  v42 = v38;
  sub_1003A5C98();
  v44 = v51;
  v43 = v52;
  (*(v52 + 16))(v51, v11, v9);
  (*(v5 + 104))(v44, enum case for LostModeReportingState.hasAlreadyReported(_:), v4);
  v45 = v11;
  v46 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_reportingState;
  swift_beginAccess();
  (*(v5 + 24))(v3 + v46, v44, v4);
  swift_endAccess();
  v47 = *(v3 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_onLostModeUpdate);
  if (v47)
  {

    v47(v3);
    sub_10001835C(v47);
  }

  (*(v5 + 8))(v44, v4);
  (*(v43 + 8))(v45, v9);
  return (*(v57 + 8))(v42, v58);
}

id sub_10038FE04(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for FMItemDetailViewModel() + 108)))
  {
    v8 = *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_accessoryDetailView);
  }

  else
  {
    v9 = FMIPProductType.isAccessory.getter();
    v10 = *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_accessoryDetailView);
    if (v9)
    {
      v11 = *(*(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource) + 40);
      v12 = *(*v11 + class metadata base offset for ManagedBuffer + 16);
      v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v11 + v13));
      (*(v5 + 16))(v7, v11 + v12, v4);
      os_unfair_lock_unlock((v11 + v13));

      sub_1002CD270(v7);
      (*(v5 + 8))(v7, v4);
      return [v10 setHidden:0];
    }

    v8 = *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_accessoryDetailView);
  }

  return [v8 setHidden:1];
}

uint64_t sub_100390008()
{
  v1 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  UUID.init(uuidString:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100012DF0(v6, &unk_1006B20C0);
  }

  v22 = *(v8 + 32);
  v22(v13, v6, v7);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  v16 = *(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingView);
  (*(v8 + 16))(v11, v13, v7);
  type metadata accessor for MainActor();
  v17 = v16;
  v18 = static MainActor.shared.getter();
  v19 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v18;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = v17;
  v22(&v20[v19], v11, v7);
  sub_100170C90(0, 0, v3, &unk_10055EBE8, v20);

  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_100390310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1003903CC;

  return sub_10029B244(a5);
}

uint64_t sub_1003903CC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10029AC60, v1, v0);
}

uint64_t sub_100390508(uint64_t a1)
{
  v3 = type metadata accessor for LostAccessory.Capabilities();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v17 - v9;
  __chkstk_darwin(v8);
  v12 = v17 - v11;
  v17[1] = 0;
  sub_1003ABA74(&qword_1006BD010, &type metadata accessor for LostAccessory.Capabilities);
  dispatch thunk of OptionSet.init(rawValue:)();
  v13 = *(a1 + *(type metadata accessor for FMItemDetailViewModel() + 56));
  if ((v13 & 2) != 0)
  {
    static LostAccessory.Capabilities.isLostModeEnabled.getter();
    sub_10037A098(v10, v7);
    v14 = *(v4 + 8);
    v14(v7, v3);
    v14(v10, v3);
  }

  if ((v13 & 0x1000) != 0 && (*(*(*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentMyLocationInRestrictedRegion) & 1) == 0)
  {
    static LostAccessory.Capabilities.isDelegatedSharesEnabled.getter();
    sub_10037A098(v10, v7);
    v15 = *(v4 + 8);
    v15(v7, v3);
    v15(v10, v3);
  }

  LostModeManagementSectionViewModel.updateLostAccessoryCapabilities(capabilities:)();
  return (*(v4 + 8))(v12, v3);
}

id sub_100390758(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&unk_1006C0240);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v26 - v8;
  v10 = *(*(*(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 24) + 64);
  v26[4] = a1;

  sub_100110880(sub_1003B08E0, v10, v9);

  v11 = type metadata accessor for FMItemDetailViewModel();
  v12 = *(a1 + *(v11 + 108));
  if (v12 == 1)
  {
    v13 = v11;
    v14 = *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_ownerInfoSectionViewHostingController);
    v15 = *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackView);
    result = [v14 view];
    if (result)
    {
      v17 = result;
      [v15 addArrangedSubview:result];

      v26[1] = *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_ownerInfoSectionViewModel);
      sub_100007204(v9, v7, &unk_1006C0240);
      v18 = type metadata accessor for FMIPBeaconShare();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v7, 1, v18) == 1)
      {
        sub_100012DF0(v7, &unk_1006C0240);
        v20 = 0;
        v21 = 0;
      }

      else
      {
        v23 = FMIPBeaconShare.ownerHandle.getter();
        v21 = v24;
        (*(v19 + 8))(v7, v18);
        v20 = v23;
      }

      v25 = v21;
      OwnerInfoSectionViewModel.updateProperties(account:serialNumber:)(*&v20, *(a1 + *(v13 + 116)));

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    result = [*(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_ownerInfoSectionViewHostingController) view];
    if (result)
    {
      v22 = result;
      [result removeFromSuperview];

LABEL_9:
      [*(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingContentView) setHidden:v12];
      [*(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingView) setHidden:v12];
      [*(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackView) layoutIfNeeded];
      return sub_100012DF0(v9, &unk_1006C0240);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100390A7C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPBeaconShare.beaconIdentifier.getter();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  if (v7 == *a2 && v9 == a2[1])
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

id sub_100390BA4(uint64_t a1, char a2)
{
  v40 = type metadata accessor for FMIPItem();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ManagedItem();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ManagedItem.Properties();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v37 - v13;
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v44 = 0;
  sub_1003ABA74(&qword_1006BD030, &type metadata accessor for ManagedItem.Properties);
  v17 = v16;
  dispatch thunk of OptionSet.init(rawValue:)();
  v18 = type metadata accessor for FMItemDetailViewModel();
  v19 = *(a1 + *(v18 + 80) + 1);
  v43 = v8;
  if (v19)
  {
    static ManagedItem.Properties.isBeingUpdated.getter();
    sub_10037A39C(v14, v11);
    v20 = *(v8 + 8);
    v20(v11, v7);
    v20(v14, v7);
  }

  v21 = *(a1 + *(v18 + 56));
  if ((v21 & 0x200) != 0)
  {
    static ManagedItem.Properties.canRename.getter();
    sub_10037A39C(v14, v11);
    v23 = *(v43 + 8);
    v23(v11, v7);
    v23(v14, v7);
    v22 = v42;
    if ((v21 & 0x100) == 0)
    {
LABEL_5:
      if ((v21 & 0x40) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      if ((a2 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v22 = v42;
    if ((v21 & 0x100) == 0)
    {
      goto LABEL_5;
    }
  }

  static ManagedItem.Properties.canRemove.getter();
  sub_10037A39C(v14, v11);
  v24 = *(v43 + 8);
  v24(v11, v7);
  v24(v14, v7);
  if ((v21 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  static ManagedItem.Properties.canDisableSharing.getter();
  sub_10037A39C(v14, v11);
  v25 = *(v43 + 8);
  v25(v11, v7);
  v25(v14, v7);
LABEL_11:
  v26 = *(*(v22 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource) + 40);
  v27 = *(*v26 + class metadata base offset for ManagedBuffer + 16);
  v28 = (*(*v26 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v26 + v28));
  v29 = v26 + v27;
  v30 = v37;
  v31 = v40;
  (*(v4 + 16))(v37, v29, v40);
  os_unfair_lock_unlock((v26 + v28));

  FMIPItem.isOwner.getter();
  (*(v4 + 8))(v30, v31);
  v32 = v43;
  (*(v43 + 16))(v14, v17, v7);
  v33 = v38;
  ManagedItem.init(isOwnedByMe:properties:)();
  ItemManagementSectionViewModel.updateProperties(with:)();
  (*(v39 + 8))(v33, v41);
  result = [*(v22 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_itemManagementHostingController) view];
  if (result)
  {
    v35 = result;
    if (*(v22 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isSharedLostItem))
    {
      v36 = 1;
    }

    else
    {
      sub_1003ABA74(&qword_1006BD180, &type metadata accessor for ManagedItem.Properties);
      dispatch thunk of SetAlgebra.init()();
      sub_1003ABA74(&qword_1006BD188, &type metadata accessor for ManagedItem.Properties);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v32 + 8))(v14, v7);
    }

    [v35 setHidden:v36 & 1];

    swift_allocObject();
    swift_unknownObjectWeakInit();

    ItemManagementSectionViewModel.onRename.setter();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    ItemManagementSectionViewModel.onRemove.setter();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    ItemManagementSectionViewModel.onStopSharing.setter();
    (*(v32 + 8))(v17, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10039129C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

uint64_t sub_1003912F8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v159 = *(v4 - 8);
  v160 = v4;
  __chkstk_darwin(v4);
  v157 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for DispatchQoS();
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v155 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPItem();
  v152 = *(v7 - 8);
  v153 = v7;
  __chkstk_darwin(v7);
  v151 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for DelegatedSharesReportingState();
  v9 = *(v149 - 8);
  __chkstk_darwin(v149);
  v11 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&qword_1006B3298);
  __chkstk_darwin(v12 - 8);
  v145 = &v140 - v13;
  v14 = *&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_oldShareAttention];
  v15 = type metadata accessor for FMItemDetailViewModel();
  v146 = *(a1 + v15[20]);
  *(v14 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = (v146 & 0x1000) == 0;
  sub_10032ADBC();
  *(*&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundErrorAttention] + OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_localizableType) = FMIPProductType.isAccessory.getter() & 1;
  sub_1003F0AB4();
  v16 = *&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_locationServicesAttention];
  v150 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  *(v16 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = *(*(*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_isLocationAuthorized);
  sub_10032ADBC();
  *(*&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_inaccurateAttention] + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = (*(a1 + v15[19]) & 1) == 0;
  sub_10032ADBC();
  if (v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isFirstModelUpdate])
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 0.2;
  }

  v18 = *(a1 + v15[23]);
  v19 = objc_opt_self();
  v20 = &selRef_orangeColor;
  v21 = &selRef_redColor;
  if (v18 != 6)
  {
    v21 = &selRef_clearColor;
  }

  if (v18 != 5)
  {
    v20 = v21;
  }

  v22 = [v19 *v20];
  v23 = String._bridgeToObjectiveC()();
  v24 = [objc_opt_self() systemImageNamed:v23];

  v154 = v22;
  if (v24 && (v25 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleLargeTitle], v26 = objc_msgSend(v24, "imageByApplyingSymbolConfiguration:", v25), v24, v25, v26))
  {
    v161 = [v26 imageWithTintColor:v22 renderingMode:1];
  }

  else
  {
    v161 = 0;
  }

  v148 = v9;
  v147 = v11;
  if (v18 > 5)
  {

    v28 = "ETAIL_LOW_BATTERY_SUBTITLE";
    v29 = 0xD00000000000001ELL;
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      v28 = "ETAIL_LOW_BATTERY_SUBTITLE";
    }

    else
    {
      v28 = "ATION_ALERT_SUBTITLE_ITEM";
    }

    if (v27)
    {
      v29 = 0xD00000000000001ELL;
    }

    else
    {
      v29 = 0xD00000000000001DLL;
    }
  }

  v30 = [objc_opt_self() mainBundle];
  v31.value._countAndFlagsBits = 0xD000000000000013;
  v168._object = 0x8000000100579A00;
  v32._object = (v28 | 0x8000000000000000);
  v31.value._object = 0x80000001005799E0;
  v168._countAndFlagsBits = 0xD000000000000018;
  v32._countAndFlagsBits = v29;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v31, v30, v33, v168);

  if (v18 > 5)
  {
    goto LABEL_25;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v36 = 0;
  if ((v35 & 1) == 0)
  {
    if (v18 <= 4)
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v36 = v37 ^ 1;
      goto LABEL_26;
    }

LABEL_25:

    v36 = 0;
  }

LABEL_26:
  v38 = *&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lowBatteryAttention];
  v39 = [*(v38 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label) text];
  if (!v39)
  {
    goto LABEL_32;
  }

  v40 = v39;
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (v41 == v34._countAndFlagsBits && v43 == v34._object)
  {

    goto LABEL_31;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v44 & 1) == 0)
  {
LABEL_32:
    v45 = objc_opt_self();
    v46 = swift_allocObject();
    *(v46 + 16) = v2;
    *(v46 + 24) = v34;
    *(v46 + 40) = v36 & 1;
    v47 = v161;
    *(v46 + 48) = v161;
    v166 = sub_1003B082C;
    v167 = v46;
    aBlock = _NSConcreteStackBlock;
    v163 = 1107296256;
    v164 = sub_100004AE4;
    v165 = &unk_10063AB58;
    v48 = _Block_copy(&aBlock);
    v49 = v47;
    v50 = v2;

    [v45 animateWithDuration:v48 animations:v17];
    _Block_release(v48);
    goto LABEL_34;
  }

LABEL_31:
  if ((v36 & 1) != *(v38 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed))
  {
    goto LABEL_32;
  }

LABEL_34:
  if (v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_showSeparationAttention] == 1)
  {
    v51 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAttention;
    v52 = *&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAttention];
    if (v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocationAdded] == 1)
    {
      v53 = *&v52[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label];
      v143 = "AIRPODS_DIRECTIONS_TITLE";
      v54 = objc_opt_self();
      v142 = v54;
      v55 = v53;
      v56 = [v54 mainBundle];
      v144 = 0x800000010057D660;
      v169._object = 0x800000010057D660;
      v57._countAndFlagsBits = 0xD000000000000023;
      v57._object = 0x8000000100586E40;
      v58.value._object = 0x800000010057D640;
      v169._countAndFlagsBits = 0xD00000000000001BLL;
      v58.value._countAndFlagsBits = 0xD000000000000016;
      v59._countAndFlagsBits = 0;
      v59._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v57, v58, v56, v59, v169);

      v141 = sub_10007EBC0(&unk_1006B20B0);
      v60 = swift_allocObject();
      v140 = xmmword_100552220;
      *(v60 + 16) = xmmword_100552220;
      v61 = &v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAddress];
      v62 = *&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAddress];
      v63 = *&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAddress + 8];
      *(v60 + 56) = &type metadata for String;
      v64 = sub_10008EE84();
      *(v60 + 64) = v64;
      if (v63)
      {
        v65 = v62;
      }

      else
      {
        v65 = 0;
      }

      v66 = 0xE000000000000000;
      if (v63)
      {
        v66 = v63;
      }

      *(v60 + 32) = v65;
      *(v60 + 40) = v66;

      String.init(format:_:)();

      v67 = String._bridgeToObjectiveC()();

      [v55 setText:v67];

      v68 = *&v2[v51];
      v69 = type metadata accessor for FMPlatterIcon();
      v70 = v145;
      swift_storeEnumTagMultiPayload();
      (*(*(v69 - 8) + 56))(v70, 0, 1, v69);
      v71 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
      swift_beginAccess();
      v72 = v68;
      sub_1000BBE44(v70, v68 + v71, &qword_1006B3298);
      swift_endAccess();
      sub_10032B0BC();

      sub_100012DF0(v70, &qword_1006B3298);
      v73 = *&v2[v51];
      v74 = v142;
      v75 = [v142 mainBundle];
      v170._object = v144;
      v76._countAndFlagsBits = 0xD000000000000026;
      v76._object = 0x8000000100586E70;
      v77.value._object = (v143 | 0x8000000000000000);
      v170._countAndFlagsBits = 0xD00000000000001BLL;
      v77.value._countAndFlagsBits = 0xD000000000000016;
      v78._countAndFlagsBits = 0;
      v78._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v76, v77, v75, v78, v170);

      v79 = swift_allocObject();
      *(v79 + 16) = v140;
      v81 = *v61;
      v80 = v61[1];
      *(v79 + 56) = &type metadata for String;
      *(v79 + 64) = v64;
      if (!v80)
      {
        v81 = 0;
      }

      v82 = 0xE000000000000000;
      if (v80)
      {
        v82 = v80;
      }

      *(v79 + 32) = v81;
      *(v79 + 40) = v82;

      v83 = String.init(format:_:)();
      v85 = v84;

      v86 = &v73[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle];
      *v86 = v83;
      v86[1] = v85;

      v87 = *&v73[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];

      v88 = String._bridgeToObjectiveC()();

      [v87 setText:v88];

      v89 = *&v2[v51];
      v90 = [v74 mainBundle];
      v171._object = v144;
      v91._countAndFlagsBits = 0xD00000000000002ALL;
      v91._object = 0x8000000100586EA0;
      v92.value._object = (v143 | 0x8000000000000000);
      v171._countAndFlagsBits = 0xD00000000000001BLL;
      v92.value._countAndFlagsBits = 0xD000000000000016;
      v93._countAndFlagsBits = 0;
      v93._object = 0xE000000000000000;
      v94 = NSLocalizedString(_:tableName:bundle:value:comment:)(v91, v92, v90, v93, v171);

      *&v89[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle] = v94;

      v95 = *&v89[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel];

      v96 = String._bridgeToObjectiveC()();

      [v95 setText:v96];
    }

    else
    {
      [v52 setUserInteractionEnabled:1];
      v100 = *(*&v2[v51] + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label);
      v101 = objc_opt_self();
      v89 = v100;
      v102 = [v101 mainBundle];
      v172._object = 0x800000010057D660;
      v103._countAndFlagsBits = 0xD00000000000001DLL;
      v103._object = 0x8000000100586E20;
      v104.value._object = 0x800000010057D640;
      v172._countAndFlagsBits = 0xD00000000000001BLL;
      v104.value._countAndFlagsBits = 0xD000000000000016;
      v105._countAndFlagsBits = 0;
      v105._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v103, v104, v102, v105, v172);

      sub_10007EBC0(&unk_1006B20B0);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_100552220;
      v107 = *&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAddress];
      v108 = *&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAddress + 8];
      *(v106 + 56) = &type metadata for String;
      *(v106 + 64) = sub_10008EE84();
      if (v108)
      {
        v109 = v107;
      }

      else
      {
        v109 = 0;
      }

      if (v108)
      {
        v110 = v108;
      }

      else
      {
        v110 = 0xE000000000000000;
      }

      *(v106 + 32) = v109;
      *(v106 + 40) = v110;

      String.init(format:_:)();

      v96 = String._bridgeToObjectiveC()();

      [v89 setText:v96];
    }

    v97 = 0;
    v98 = v148;
    v99 = v147;
  }

  else
  {
    v97 = 1;
    v98 = v148;
    v99 = v147;
  }

  v111 = *&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAttention];
  v111[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed] = v97;
  v112 = v111;
  sub_10032ADBC();

  v113 = *&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lostModeStatusCoordinator];
  v114 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesReportingState;
  swift_beginAccess();
  v115 = v113 + v114;
  v116 = v149;
  (*(v98 + 16))(v99, v115, v149);
  v117 = (*(v98 + 88))(v99, v116);
  v118 = v117;
  v119 = enum case for DelegatedSharesReportingState.hasAlreadyReported(_:);
  if (v117 == enum case for DelegatedSharesReportingState.hasAlreadyReported(_:) || v117 != enum case for DelegatedSharesReportingState.unknown(_:) && v117 != enum case for DelegatedSharesReportingState.notStarted(_:))
  {
    (*(v98 + 8))(v99, v116);
  }

  v120 = *(*&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource] + 40);
  v121 = *(*v120 + class metadata base offset for ManagedBuffer + 16);
  v122 = (*(*v120 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v120 + v122));
  v123 = v152;
  v124 = v120 + v121;
  v125 = v151;
  v126 = v153;
  (*(v152 + 16))(v151, v124, v153);
  os_unfair_lock_unlock((v120 + v122));

  LOBYTE(v120) = FMIPItem.isOwner.getter();
  (*(v123 + 8))(v125, v126);
  v127 = (v120 & 1) != 0 || (v146 & 8) == 0 && v118 != v119;
  *(*&v2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lostModeAttention] + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = v127;
  sub_10032ADBC();
  v129 = *(*&v2[v150] + 16);
  v130 = sub_100057590();

  v131 = sub_100422D8C();
  sub_10000905C(0, &qword_1006AEDC0);
  v132 = static OS_dispatch_queue.main.getter();
  v133 = swift_allocObject();
  *(v133 + 16) = v2;
  *(v133 + 24) = (v130 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  *(v133 + 25) = v131 & 1;
  v166 = sub_1003B0840;
  v167 = v133;
  aBlock = _NSConcreteStackBlock;
  v163 = 1107296256;
  v164 = sub_100004AE4;
  v165 = &unk_10063ABA8;
  v134 = _Block_copy(&aBlock);
  v135 = v2;

  v136 = v155;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1003ABA74(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v137 = v157;
  v138 = v160;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v134);

  (*(v159 + 8))(v137, v138);
  return (*(v156 + 8))(v136, v158);
}

uint64_t sub_10039275C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = sub_10007EBC0(&qword_1006B3298);
  __chkstk_darwin(v8 - 8);
  v10 = (&v18 - v9);
  v11 = *(a1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lowBatteryAttention);
  v12 = *(v11 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label);
  v13 = String._bridgeToObjectiveC()();
  [v12 setText:v13];

  *(v11 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = a4;
  sub_10032ADBC();
  *v10 = a5;
  v14 = type metadata accessor for FMPlatterIcon();
  v10[1] = 0;
  v10[2] = 0;
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  v15 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  v16 = a5;
  sub_1000BBE44(v10, v11 + v15, &qword_1006B3298);
  swift_endAccess();
  sub_10032B0BC();
  return sub_100012DF0(v10, &qword_1006B3298);
}

void sub_10039291C(uint64_t a1, char a2, char a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsView);
  *(v6 + OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_mockDisabled) = a2;
  sub_1003F61C0();
  if (a2)
  {
    sub_10022E294(0xD000000000000027, 0x8000000100580590);
    v7 = String.init(format:_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = (v6 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitle);
  *v10 = v7;
  v10[1] = v9;

  sub_100457338();
  *(*(a1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsOffAttention) + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = a3 & 1 | ((a2 & 1) == 0);
  sub_10032ADBC();
}

uint64_t sub_100392A10(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPBeaconShare.beaconIdentifier.getter();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  if (v7 == *a2 && v9 == a2[1])
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v12 = 0;
    if ((v11 & 1) == 0)
    {
      return v12 & 1;
    }
  }

  v12 = FMIPBeaconShare.delegationStatus.getter();
  return v12 & 1;
}

void sub_100392B50(uint64_t a1)
{
  v173 = a1;
  v189 = type metadata accessor for FMFindingType();
  v188 = *(v189 - 8);
  __chkstk_darwin(v189);
  v184 = &v170 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10007EBC0(&qword_1006B32A8);
  __chkstk_darwin(v3 - 8);
  v176 = &v170 - v4;
  v5 = type metadata accessor for FMFindingProductType();
  __chkstk_darwin(v5 - 8);
  v175 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for FMFindableObject();
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v178 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FindingExperienceType();
  v198 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v177 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v197 = &v170 - v11;
  v12 = sub_10007EBC0(&unk_1006B20C0);
  v13 = __chkstk_darwin(v12 - 8);
  v183 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v195 = &v170 - v15;
  v200 = type metadata accessor for UUID();
  v196 = *(v200 - 1);
  v16 = __chkstk_darwin(v200);
  v174 = &v170 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v187 = &v170 - v18;
  v194 = type metadata accessor for FMItemCapabilities();
  v193 = *(v194 - 1);
  v19 = __chkstk_darwin(v194);
  v191 = &v170 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v190 = &v170 - v21;
  v22 = type metadata accessor for FMIPProductType();
  v205 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v185 = &v170 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v170 - v25;
  v172 = type metadata accessor for FMItemDetailViewModel();
  __chkstk_darwin(v172);
  v28 = &v170 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FMIPItem();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v182 = &v170 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v181 = &v170 - v34;
  v35 = __chkstk_darwin(v33);
  v192 = &v170 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v170 - v38;
  __chkstk_darwin(v37);
  v41 = &v170 - v40;
  v186 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_itemConnectionManager;
  v42 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_itemConnectionManager);
  v201 = v1;
  v199 = v8;
  if (v42)
  {
    v206 = v22;
    v43 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
    v203 = v26;
    v204 = v43;
    v44 = *(v43 + 40);
    v45 = *(*v44 + class metadata base offset for ManagedBuffer + 16);
    v46 = (*(*v44 + 48) + 3) & 0x1FFFFFFFCLL;
    v47 = v42;

    os_unfair_lock_lock((v44 + v46));
    (*(v30 + 16))(v41, v44 + v45, v29);
    os_unfair_lock_unlock((v44 + v46));

    v48 = FMIPItem.identifier.getter();
    v50 = v49;
    v207 = v30;
    (*(v30 + 8))(v41, v29);
    v51 = FMConnectionManager.identifiers.getter();
    v208[0] = v48;
    v208[1] = v50;
    __chkstk_darwin(v51);
    *(&v170 - 2) = v208;
    LOBYTE(v48) = sub_10008A40C(sub_10011F7D4, (&v170 - 4), v51);

    if (v48)
    {
LABEL_36:

      return;
    }

    dispatch thunk of FMConnectionManager.disconnect()();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100005B14(v52, qword_1006D4630);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    v55 = os_log_type_enabled(v53, v54);
    v1 = v201;
    if (v55)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "FMItemDetailContentViewController: Existing item connection manager was discarded due to item change", v56, 2u);
    }

    *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isRangingServiceAvailable) = 1;
    v57 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
    v58 = v204;
    swift_beginAccess();
    sub_1003B027C(v58 + v57, v28, type metadata accessor for FMItemDetailViewModel);
    sub_10038B13C();

    sub_1003ABABC(v28, type metadata accessor for FMItemDetailViewModel);
    v22 = v206;
    v30 = v207;
    v26 = v203;
  }

  v206 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v59 = *(v206 + 40);
  v60 = *(*v59 + class metadata base offset for ManagedBuffer + 16);
  v61 = (*(*v59 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v59 + v61));
  v204 = *(v30 + 16);
  v204(v39, v59 + v60, v29);
  os_unfair_lock_unlock((v59 + v61));

  FMIPItem.productType.getter();
  v62 = *(v30 + 8);
  v207 = v30 + 8;
  v203 = v62;
  (v62)(v39, v29);
  LOBYTE(v59) = FMIPProductType.isAirTag.getter();
  v63 = v205 + 1;
  v64 = v205[1];
  v64(v26, v22);
  if (v59 & 1) != 0 && (My = type metadata accessor for Feature.FindMy(), v208[3] = My, v208[4] = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy), v66 = sub_100008FC0(v208), (*(*(My - 8) + 104))(v66, enum case for Feature.FindMy.gorgeousCherry(_:), My), LOBYTE(My) = isFeatureEnabled(_:)(), sub_100006060(v208), (My))
  {
    LODWORD(v205) = 1;
    v67 = v206;
    v68 = v203;
  }

  else
  {
    v69 = *(v206 + 40);
    v70 = *v69;
    v205 = v63;
    v71 = *(v70 + class metadata base offset for ManagedBuffer + 16);
    v72 = (*(v70 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v69 + v72));
    v73 = v64;
    v74 = v22;
    v204(v41, v69 + v71, v29);
    os_unfair_lock_unlock((v69 + v72));

    v75 = v185;
    FMIPItem.productType.getter();
    v76 = v74;
    v68 = v203;
    (v203)(v41, v29);
    LODWORD(v69) = FMIPProductType.isAirTag.getter();
    v73(v75, v76);
    LODWORD(v205) = v69 ^ 1;
    v67 = v206;
  }

  v77 = v67;
  v78 = *(v67 + 40);
  v79 = *(*v78 + class metadata base offset for ManagedBuffer + 16);
  v80 = (*(*v78 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v78 + v80));
  v202 = v30 + 16;
  v81 = v204;
  v204(v41, v78 + v79, v29);
  os_unfair_lock_unlock((v78 + v80));

  v82 = v190;
  FMIPItem.capabilities.getter();
  v171 = v41;
  v83 = v29;
  v68(v41, v29);
  v84 = v191;
  static FMItemCapabilities.canR2.getter();
  sub_1003ABA74(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
  v85 = v194;
  LOBYTE(v78) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v86 = *(v193 + 8);
  v86(v84, v85);
  v86(v82, v85);
  if ((v78 & 1) == 0 || (type metadata accessor for FMConnectionManager(), (static FMConnectionManager.hostSupportsRanging.getter() & 1) == 0))
  {
    LODWORD(v205) = 0;
  }

  v87 = *(v77 + 40);
  v88 = *(*v87 + class metadata base offset for ManagedBuffer + 16);
  v89 = (*(*v87 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v87 + v89));
  v90 = v87 + v88;
  v91 = v192;
  v92 = v83;
  v81(v192, v90, v83);
  os_unfair_lock_unlock((v87 + v89));

  FMIPItem.identifier.getter();
  v93 = v195;
  UUID.init(uuidString:)();

  v94 = v196;
  v95 = v200;
  v194 = v196[6];
  v96 = (v194)(v93, 1, v200);
  v97 = v201;
  if (v96 == 1)
  {
    __break(1u);
  }

  else
  {
    v98 = objc_opt_self();
    v99 = v83;
    v100 = v203;
    (v203)(v91, v99);
    v101 = v187;
    v195 = v94[4];
    (v195)(v187, v93, v95);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (v94[1])(v101, v95);
    v103 = [v98 generateDiscoveryTokenFromBeaconIdentifier:isa];

    v104 = v92;
    if ((v205 & (v103 != 0)) != 1)
    {
      v146 = *(v97 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isRangingServiceAvailable);
      type metadata accessor for FMConnectionManager();
      if (static FMConnectionManager.hostSupportsRanging.getter() & 1) != 0 && (*(v173 + *(v172 + 56)) & 0x400) != 0 && (v146)
      {
        v143 = v186;
        v145 = v206;
        v144 = v103;
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v147 = type metadata accessor for Logger();
        sub_100005B14(v147, qword_1006D4630);
        v148 = Logger.logObject.getter();
        v149 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          *v150 = 0;
          _os_log_impl(&_mh_execute_header, v148, v149, "FMItemDetailContentViewController: Creating new instance of item connection manager for R1 connections.", v150, 2u);
        }

        sub_10007EBC0(&qword_1006B32C8);
        v151 = swift_allocObject();
        *(v151 + 16) = xmmword_100552220;
        *(v151 + 56) = v104;
        *(v151 + 64) = sub_1003ABA74(&qword_1006B6908, &type metadata accessor for FMIPItem);
        v152 = sub_100008FC0((v151 + 32));
        v153 = *(v145 + 40);
        v154 = *(*v153 + class metadata base offset for ManagedBuffer + 16);
        v155 = (*(*v153 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v153 + v155));
        v204(v152, v153 + v154, v104);
        os_unfair_lock_unlock((v153 + v155));

        (*(v188 + 104))(v184, enum case for FMFindingType.owner(_:), v189);
        v156 = objc_allocWithZone(type metadata accessor for FMItemR1ConnectionManager());
        v142 = FMItemR1ConnectionManager.init(findables:connectionContext:)();
        sub_1003ABA74(&qword_1006BD170, type metadata accessor for FMItemDetailContentViewController);
        swift_unknownObjectRetain();
        dispatch thunk of FMItemR1ConnectionManager.delegate.setter();
      }

      else
      {
        v143 = v186;
        v145 = v206;
        v144 = v103;
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v157 = type metadata accessor for Logger();
        sub_100005B14(v157, qword_1006D4630);
        v158 = Logger.logObject.getter();
        v159 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v158, v159))
        {
          v160 = swift_slowAlloc();
          *v160 = 0;
          _os_log_impl(&_mh_execute_header, v158, v159, "FMItemDetailContentViewController: Creating new instance of item connection manager for BT connections.", v160, 2u);
        }

        sub_10007EBC0(&qword_1006B32C8);
        v161 = swift_allocObject();
        *(v161 + 16) = xmmword_100552220;
        *(v161 + 56) = v104;
        *(v161 + 64) = sub_1003ABA74(&qword_1006B6908, &type metadata accessor for FMIPItem);
        v162 = sub_100008FC0((v161 + 32));
        v163 = *(v145 + 40);
        v164 = *(*v163 + class metadata base offset for ManagedBuffer + 16);
        v165 = (*(*v163 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v163 + v165));
        v204(v162, v163 + v164, v104);
        os_unfair_lock_unlock((v163 + v165));

        (*(v188 + 104))(v184, enum case for FMFindingType.owner(_:), v189);
        v166 = objc_allocWithZone(type metadata accessor for FMItemBTConnectionManager());
        v142 = FMItemBTConnectionManager.init(findables:connectionContext:)();
      }

      goto LABEL_32;
    }

    v105 = *(sub_10007EBC0(&unk_1006B4210) + 48);
    v106 = enum case for FindingModel.nearbyInteraction(_:);
    v107 = type metadata accessor for FindingModel();
    v108 = v197;
    (*(*(v107 - 8) + 104))(v197, v106, v107);
    (*(v188 + 104))(&v108[v105], enum case for FMFindingType.owner(_:), v189);
    (*(v198 + 104))(v108, enum case for FindingExperienceType.precision(_:), v199);
    v109 = v206;
    v110 = *(v206 + 40);
    v111 = *(*v110 + class metadata base offset for ManagedBuffer + 16);
    v112 = (*(*v110 + 48) + 3) & 0x1FFFFFFFCLL;
    v205 = v103;
    v196 = v103;

    os_unfair_lock_lock((v110 + v112));
    v113 = v110 + v111;
    v114 = v181;
    v115 = v204;
    v204(v181, v113, v104);
    os_unfair_lock_unlock((v110 + v112));

    v193 = FMIPItem.name.getter();
    v192 = v116;
    v100(v114, v104);
    v117 = *(v109 + 40);
    v118 = *(*v117 + class metadata base offset for ManagedBuffer + 16);
    v119 = (*(*v117 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v117 + v119));
    v120 = v182;
    v115(v182, v117 + v118, v104);
    os_unfair_lock_unlock((v117 + v119));

    FMIPItem.identifier.getter();
    v121 = v183;
    UUID.init(uuidString:)();

    v122 = v200;
    v123 = (v194)(v121, 1, v200);
    v124 = v203;
    if (v123 != 1)
    {
      v125 = v104;
      (v203)(v120, v104);
      (v195)(v174, v121, v122);
      v200 = *(v198 + 16);
      v126 = v177;
      (v200)(v177, v197, v199);
      v127 = *(v206 + 40);
      v128 = *(*v127 + class metadata base offset for ManagedBuffer + 16);
      v129 = (*(*v127 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v127 + v129));
      v130 = v127 + v128;
      v131 = v171;
      v115(v171, v130, v125);
      os_unfair_lock_unlock((v127 + v129));

      FMIPItem.findingProductType.getter(v175);
      v124(v131, v125);
      v132 = type metadata accessor for FMFindingUIAVPlayerVideoInfo();
      (*(*(v132 - 8) + 56))(v176, 1, 1, v132);
      v133 = v196;
      v134 = v178;
      FMFindableObject.init(name:findingIdentifier:findingType:findingProductType:videoInfo:discoveryToken:)();
      sub_10007EBC0(&qword_1006B32C8);
      v135 = swift_allocObject();
      *(v135 + 16) = xmmword_100552220;
      v136 = v180;
      *(v135 + 56) = v180;
      *(v135 + 64) = &protocol witness table for FMFindableObject;
      v137 = sub_100008FC0((v135 + 32));
      v138 = v179;
      (*(v179 + 16))(v137, v134, v136);
      v139 = v197;
      v140 = v199;
      (v200)(v126, v197, v199);
      [objc_allocWithZone(ARSession) init];
      v141 = objc_allocWithZone(type metadata accessor for FMItemNIConnectionManager());
      v142 = FMItemNIConnectionManager.init(findables:findingType:arSession:)();
      sub_1003ABA74(&qword_1006BD178, type metadata accessor for FMItemDetailContentViewController);
      v97 = v201;
      swift_unknownObjectRetain();
      dispatch thunk of FMItemNIConnectionManager.delegate.setter();

      (*(v138 + 8))(v134, v136);
      (*(v198 + 8))(v139, v140);
      v143 = v186;
      v144 = v205;
      v145 = v206;
LABEL_32:
      v47 = v142;
      v167 = *(v97 + v143);
      *(v97 + v143) = v47;

      if (*(v145 + 96) == 1)
      {
        v168 = *(v97 + v143);
        if (v168)
        {
          v169 = v168;
          dispatch thunk of FMConnectionManager.connect()();
        }
      }

      goto LABEL_36;
    }
  }

  __break(1u);
}

void sub_1003944B0()
{
  v1 = type metadata accessor for FMIPProductType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMIPItem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v0;
  v9 = *&v0[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource];
  v10 = *(v9 + 40);
  v11 = *(*v10 + class metadata base offset for ManagedBuffer + 16);
  v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v10 + v12));
  v53 = *(v6 + 16);
  v50[0] = v6 + 16;
  v53(v8, v10 + v11, v5);
  os_unfair_lock_unlock((v10 + v12));

  FMIPItem.productType.getter();
  v13 = *(v6 + 8);
  v50[1] = v6 + 8;
  v51 = v5;
  v13(v8, v5);
  LOBYTE(v10) = FMIPProductType.isAccessory.getter();
  v14 = *(v2 + 8);
  v54 = v1;
  v52 = v2 + 8;
  v14(v4, v1);
  if (v10)
  {
    v15 = v9 + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
    swift_beginAccess();
    v16 = *(v15 + *(type metadata accessor for FMItemDetailViewModel() + 92));
    if (v16 <= 4 || v16 == 5)
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v32 = (v31 & 1) == 0;
      if (v31)
      {
        v33 = "ETAIL_LOW_BATTERY_SUBTITLE";
      }

      else
      {
        v33 = "ATION_ALERT_SUBTITLE_ITEM";
      }

      if (v32)
      {
        v34 = 0xD00000000000001DLL;
      }

      else
      {
        v34 = 0xD00000000000001ELL;
      }
    }

    else
    {

      v33 = "ETAIL_LOW_BATTERY_SUBTITLE";
      v34 = 0xD00000000000001ELL;
    }

    v35 = [objc_opt_self() mainBundle];
    v56._object = 0x8000000100579A00;
    v36._object = (v33 | 0x8000000000000000);
    v37.value._object = 0x80000001005799E0;
    v56._countAndFlagsBits = 0xD000000000000018;
    v36._countAndFlagsBits = v34;
    v37.value._countAndFlagsBits = 0xD000000000000013;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v56);

    v39 = objc_opt_self();
    v40 = [v39 mainBundle];
    v57._object = 0x8000000100579A00;
    v41._countAndFlagsBits = 0xD00000000000002ALL;
    v41._object = 0x8000000100594300;
    v42.value._object = 0x80000001005799E0;
    v57._countAndFlagsBits = 0xD000000000000018;
    v42.value._countAndFlagsBits = 0xD000000000000013;
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v42, v40, v43, v57);

    v44 = [v39 mainBundle];
    v58._object = 0x8000000100579B60;
    v45._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v45._object = 0xEF454C5449545F4ELL;
    v58._countAndFlagsBits = 0xD000000000000021;
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v58);

    v47 = String._bridgeToObjectiveC()();

    v29 = [objc_opt_self() actionWithTitle:v47 style:0 handler:0];

    v48 = String._bridgeToObjectiveC()();

    v49 = String._bridgeToObjectiveC()();

    v30 = [objc_opt_self() alertControllerWithTitle:v48 message:v49 preferredStyle:1];

    [v30 addAction:v29];
    v22 = v55;
  }

  else
  {
    v17 = v13;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100005B14(v18, qword_1006D4630);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "FMItemDetailContentViewController: Low Battery Button Toggled", v21, 2u);
    }

    v22 = v55;
    v23 = *(v9 + 40);
    v24 = *(*v23 + class metadata base offset for ManagedBuffer + 16);
    v25 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;
    v26 = *&v55[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator];

    os_unfair_lock_lock((v23 + v25));
    v27 = v51;
    v53(v8, v23 + v24, v51);
    os_unfair_lock_unlock((v23 + v25));

    FMIPItem.productType.getter();
    v17(v8, v27);
    LOBYTE(v23) = FMIPProductType.isZeus.getter();
    v14(v4, v54);
    v28 = objc_allocWithZone(type metadata accessor for FMAirTagEducationalVideoViewController());
    v29 = sub_1002BFEC8(v26, v23 & 1 | 0x40);
    v30 = [objc_allocWithZone(type metadata accessor for FMTransparentNavigationController()) initWithRootViewController:v29];
  }

  [v22 presentViewController:v30 animated:1 completion:0];
}

uint64_t sub_100394CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v5) = a5;
  v9 = type metadata accessor for FMIPItemActionStatus();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v35 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100005B14(v15, qword_1006D4630);
  v16 = *(v10 + 16);
  v36 = a1;
  v16(v14, a1, v9);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v5;
    v5 = v19;
    v32 = swift_slowAlloc();
    v38 = v32;
    *v5 = 136315394;
    sub_1003ABA74(&unk_1006B4D60, &type metadata accessor for FMIPItemActionStatus);
    v31 = v17;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = a4;
    v22 = v21;
    v23 = *(v10 + 8);
    v23(v14, v9);
    v24 = sub_100005B4C(v20, v22, &v38);

    *(v5 + 4) = v24;
    *(v5 + 12) = 2080;
    v37 = a3;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v25 = String.init<A>(describing:)();
    v27 = sub_100005B4C(v25, v26, &v38);

    *(v5 + 14) = v27;
    a4 = v34;
    v28 = v31;
    _os_log_impl(&_mh_execute_header, v31, v18, "FMItemDetailContentViewController: Toggling notify when found completed with status: %s, error: %s", v5, 0x16u);
    swift_arrayDestroy();

    LOBYTE(v5) = v33;
  }

  else
  {

    v23 = *(v10 + 8);
    v23(v14, v9);
  }

  v29 = v35;
  (*(v10 + 104))(v35, enum case for FMIPItemActionStatus.success(_:), v9);
  sub_1003ABA74(&qword_1006B6898, &type metadata accessor for FMIPItemActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  result = (v23)(v29, v9);
  *(a4 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isNotifyWhenFoundOnOverride) = (v38 == v37) & v5;
  return result;
}

void sub_1003950C0()
{
  v0 = type metadata accessor for FMIPItem();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v39 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = v0;
    v43 = v4;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100005B14(v10, qword_1006D4630);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "FMItemDetailContentViewController: present NWLB Detail Screen", v13, 2u);
    }

    v14 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource;
    v15 = v8;
    v16 = *(v8 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
    v17 = v16 + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
    swift_beginAccess();
    v42 = (*(v17 + *(type metadata accessor for FMItemDetailViewModel() + 80)) >> 4) & 1;
    v44 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_trustedLocationsDetailViewController;
    v18 = *&v15[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_trustedLocationsDetailViewController];
    v40 = v15;
    v19 = *(v16 + 40);
    v20 = *(*v19 + class metadata base offset for ManagedBuffer + 16);
    v21 = (*(*v19 + 48) + 3) & 0x1FFFFFFFCLL;
    v41 = v18;

    os_unfair_lock_lock((v19 + v21));
    v22 = *(v1 + 16);
    v22(v6, v19 + v20, v9);
    os_unfair_lock_unlock((v19 + v21));

    v23 = FMIPItem.safeLocations.getter();
    v24 = *(v1 + 8);
    v24(v6, v9);
    v25 = *(*&v15[v14] + 40);
    v26 = *(*v25 + class metadata base offset for ManagedBuffer + 16);
    v27 = (*(*v25 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v25 + v27));
    v28 = v43;
    v22(v43, v25 + v26, v9);
    os_unfair_lock_unlock((v25 + v27));

    v29 = FMIPItem.identifier.getter();
    v31 = v30;
    v24(v28, v9);
    v32 = v29;
    v33 = v41;
    sub_1004AC438(v23, 1, v42, v32, v31, 0);

    v34 = v40;
    v35 = *&v40[v44];
    v36 = objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
    v37 = v35;
    v38 = sub_1000CC510(v37, 2);
    [v38 setDelegate:v38];

    [v34 presentViewController:v38 animated:1 completion:0];
  }
}

void sub_1003954E0()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v47 - v3;
  v5 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v5 - 8);
  v53 = &v47 - v6;
  v7 = type metadata accessor for FMIPLocation();
  v54 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v47 = v9;
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v47 - v10;
  v11 = type metadata accessor for FMIPAnalyticsActionType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for FMIPItem();
  v15 = *(v51 - 8);
  __chkstk_darwin(v51);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v52 = v4;
  v55 = v7;
  v18 = type metadata accessor for Logger();
  v50 = sub_100005B14(v18, qword_1006D4630);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "FMItemDetailContentViewController: Directions button toggled", v21, 2u);
  }

  v22 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v23 = *(v22 + 40);
  v24 = *(*v23 + class metadata base offset for ManagedBuffer + 16);
  v25 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v23 + v25));
  v26 = v23 + v24;
  v27 = v51;
  (*(v15 + 16))(v17, v26, v51);
  os_unfair_lock_unlock((v23 + v25));

  (*(v12 + 104))(v14, enum case for FMIPAnalyticsActionType.directions(_:), v11);
  sub_1003A49A0(v17, v14);
  (*(v12 + 8))(v14, v11);
  v28 = *(v15 + 8);
  v28(v17, v27);
  v29 = (v22 + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
  swift_beginAccess();
  v31 = *v29;
  v30 = v29[1];

  v32 = v52;
  sub_1000E5FF8(v31, v30, v52);

  if ((*(v15 + 48))(v32, 1, v27) == 1)
  {
    sub_100012DF0(v32, &qword_1006B07D0);
    v33 = v53;
    (*(v54 + 56))(v53, 1, 1, v55);
  }

  else
  {
    v33 = v53;
    FMIPItem.location.getter();
    v28(v32, v27);
    v35 = v54;
    v34 = v55;
    if ((*(v54 + 48))(v33, 1, v55) != 1)
    {
      v39 = *(v35 + 32);
      v40 = v49;
      v39(v49, v33, v34);
      v41 = [objc_allocWithZone(CLGeocoder) init];
      v42 = FMIPLocation.location.getter();
      v43 = v48;
      (*(v35 + 16))(v48, v40, v34);
      v44 = (*(v35 + 80) + 16) & ~*(v35 + 80);
      v45 = swift_allocObject();
      v39((v45 + v44), v43, v34);
      aBlock[4] = sub_1003B07AC;
      aBlock[5] = v45;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100485DE8;
      aBlock[3] = &unk_10063AB08;
      v46 = _Block_copy(aBlock);

      [v41 reverseGeocodeLocation:v42 completionHandler:v46];
      _Block_release(v46);

      (*(v35 + 8))(v40, v34);
      return;
    }
  }

  sub_100012DF0(v33, &unk_1006C0220);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "FMItemDetailContentViewController: cannot get direction for unknown item", v38, 2u);
  }
}

void sub_100395C24(unint64_t a1, uint64_t a2)
{
  if (a2 || !a1)
  {
    goto LABEL_15;
  }

  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v16 = a1;
    v17 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v16;
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_15:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100005B14(v18, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v19, "FMItemDetailContentViewController: reverse geocode failed while getting directions", v20, 2u);
    }

    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v2 + 16))
    {
      __break(1u);
      return;
    }

    v3 = *(a1 + 32);
  }

  v4 = v3;
  v5 = [objc_allocWithZone(MKPlacemark) initWithPlacemark:v3];
  v6 = FMIPLocation.location.getter();
  v7 = [objc_allocWithZone(MKMapItem) initWithCLLocation:v6];

  if (v7)
  {
    v8 = v7;
    v9 = [v5 name];
    [v8 setName:v9];
  }

  sub_10007EBC0(&qword_1006B0E90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v12;
  v13 = sub_100153A44(inited);
  swift_setDeallocating();
  sub_100012DF0(inited + 32, &qword_1006B0E98);
  if (v7)
  {
    v14 = v7;
    sub_1000F0BF0(v13);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v14 openInMapsWithLaunchOptions:isa];
  }

  else
  {
  }
}

uint64_t sub_100395F8C()
{
  v1 = v0;
  v2 = type metadata accessor for FMItemDetailViewModel();
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMItemDetailContentViewController: Serial number tapped", v8, 2u);
  }

  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSerialNumber) = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSerialNumber) != 1;
  v9 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v9, v4, type metadata accessor for FMItemDetailViewModel);
  sub_10038AC90(v4);
  sub_10039C650(v4);
  sub_100392B50(v4);
  sub_1003987F8();
  result = sub_1003ABABC(v4, type metadata accessor for FMItemDetailViewModel);
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isFirstModelUpdate) = 0;
  return result;
}

void sub_1003961C0()
{
  v227 = type metadata accessor for FMIPAnalyticsActionType();
  v226 = *(v227 - 8);
  __chkstk_darwin(v227);
  v229 = &v209 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for FMFindingTechnology();
  v235 = *(v236 - 8);
  v1 = __chkstk_darwin(v236);
  v234 = &v209 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v221 = &v209 - v3;
  v4 = sub_10007EBC0(&qword_1006B32A8);
  __chkstk_darwin(v4 - 8);
  v214 = &v209 - v5;
  v6 = type metadata accessor for FMFindingProductType();
  __chkstk_darwin(v6 - 8);
  v213 = &v209 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for FMFindableObject();
  v216 = *(v217 - 8);
  __chkstk_darwin(v217);
  v215 = &v209 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for FindingExperienceType();
  v232 = *(v233 - 8);
  v9 = __chkstk_darwin(v233);
  v212 = &v209 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v211 = &v209 - v12;
  __chkstk_darwin(v11);
  v231 = &v209 - v13;
  v14 = sub_10007EBC0(&unk_1006B20C0);
  v15 = __chkstk_darwin(v14 - 8);
  v220 = &v209 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v223 = &v209 - v17;
  v230 = type metadata accessor for UUID();
  v224 = *(v230 - 8);
  v18 = __chkstk_darwin(v230);
  v210 = &v209 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v222 = &v209 - v20;
  v248 = type metadata accessor for FMItemCapabilities();
  isa = v248[-1].isa;
  v21 = __chkstk_darwin(v248);
  v247 = &v209 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v246 = &v209 - v23;
  v24 = type metadata accessor for FMIPProductType();
  v251 = *(v24 - 8);
  v252 = v24;
  v25 = __chkstk_darwin(v24);
  v253 = &v209 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v209 - v27;
  v29 = type metadata accessor for FMIPItem();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v219 = &v209 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v218 = &v209 - v34;
  v35 = __chkstk_darwin(v33);
  v240 = &v209 - v36;
  v37 = __chkstk_darwin(v35);
  v250 = &v209 - v38;
  __chkstk_darwin(v37);
  v40 = &v209 - v39;
  v41 = type metadata accessor for FMFindingType();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v209 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for FindingMode(0);
  __chkstk_darwin(v225);
  v228 = (&v209 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for FMIPRangingEventType();
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v49 = &v209 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v47 + 104))(v49, enum case for FMIPRangingEventType.owner(_:), v46);
  static FMIPAnalytics.sendRangingEventAnalytics(eventType:)();
  (*(v47 + 8))(v49, v46);
  v243 = v42;
  v50 = *(v42 + 104);
  v242 = v44;
  v244 = v41;
  v51 = v41;
  v52 = v29;
  v50(v44, enum case for FMFindingType.owner(_:), v51);
  v53 = *&v241[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource];
  v54 = *(v53 + 40);
  v55 = *(*v54 + class metadata base offset for ManagedBuffer + 16);
  v56 = (*(*v54 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v54 + v56));
  v255 = *(v30 + 16);
  v255(v40, v54 + v55, v52);
  os_unfair_lock_unlock((v54 + v56));

  FMIPItem.productType.getter();
  v57 = *(v30 + 8);
  v245 = v40;
  v57(v40, v52);
  v58 = v28;
  FMIPProductType.isAirTag.getter();
  v60 = v251 + 8;
  v59 = *(v251 + 8);
  v239 = v58;
  v59(v58, v252);
  v256 = v53;
  v61 = *(v53 + 40);
  v62 = *(*v61 + class metadata base offset for ManagedBuffer + 16);
  v63 = (*(*v61 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v61 + v63));
  v64 = v61 + v62;
  v65 = v250;
  v257 = v30 + 16;
  v255(v250, v64, v52);
  os_unfair_lock_unlock((v61 + v63));

  v66 = v253;
  FMIPItem.productType.getter();
  v249 = v30 + 8;
  v254 = v57;
  v57(v65, v52);
  LOBYTE(v61) = FMIPProductType.isAirTag.getter();
  v251 = v60;
  v237 = v59;
  v59(v66, v252);
  if (v61 & 1) != 0 && (My = type metadata accessor for Feature.FindMy(), v259 = My, v260 = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy), v68 = sub_100008FC0(&v258), (*(*(My - 8) + 104))(v68, enum case for Feature.FindMy.gorgeousCherry(_:), My), LOBYTE(My) = isFeatureEnabled(_:)(), sub_100006060(&v258), (My))
  {
    LODWORD(v253) = 1;
    v69 = v255;
    v70 = v256;
    v71 = v254;
    v72 = v245;
  }

  else
  {
    v70 = v256;
    v73 = *(v256 + 40);
    v74 = *(*v73 + class metadata base offset for ManagedBuffer + 16);
    v75 = (*(*v73 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v73 + v75));
    v72 = v245;
    v69 = v255;
    v255(v245, v73 + v74, v52);
    os_unfair_lock_unlock((v73 + v75));

    v76 = v239;
    FMIPItem.productType.getter();
    v71 = v254;
    v254(v72, v52);
    LODWORD(v73) = FMIPProductType.isAirTag.getter();
    v237(v76, v252);
    LODWORD(v253) = v73 ^ 1;
  }

  v77 = *(v70 + 40);
  v78 = *(*v77 + class metadata base offset for ManagedBuffer + 16);
  v79 = (*(*v77 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v77 + v79));
  v69(v72, v77 + v78, v52);
  os_unfair_lock_unlock((v77 + v79));

  v80 = v246;
  FMIPItem.capabilities.getter();
  v250 = v52;
  v71(v72, v52);
  v81 = v247;
  static FMItemCapabilities.precisionVFX.getter();
  sub_1003ABA74(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
  v82 = v248;
  LOBYTE(v77) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v83 = *(isa + 1);
  v83(v81, v82);
  v83(v80, v82);
  if ((v77 & 1) == 0 || (v84 = *(v256 + 40), v85 = *(*v84 + class metadata base offset for ManagedBuffer + 16), v86 = (*(*v84 + 48) + 3) & 0x1FFFFFFFCLL, , os_unfair_lock_lock((v84 + v86)), v87 = v250, v255(v72, v84 + v85, v250), os_unfair_lock_unlock((v84 + v86)), , v88 = v246, FMIPItem.capabilities.getter(), v254(v72, v87), v89 = v247, static FMItemCapabilities.canR2.getter(), v90 = v248, LOBYTE(v84) = dispatch thunk of SetAlgebra.isSuperset(of:)(), v83(v89, v90), v83(v88, v90), (v84 & 1) == 0) || (type metadata accessor for FMConnectionManager(), (static FMConnectionManager.hostSupportsRanging.getter() & 1) == 0))
  {
    LODWORD(v253) = 0;
  }

  v91 = *(v256 + 40);
  v92 = *(*v91 + class metadata base offset for ManagedBuffer + 16);
  v93 = (*(*v91 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v91 + v93));
  v94 = v91 + v92;
  v95 = v250;
  v96 = v255;
  v255(v72, v94, v250);
  os_unfair_lock_unlock((v91 + v93));

  v97 = v246;
  FMIPItem.capabilities.getter();
  v254(v72, v95);
  v98 = v247;
  static FMItemCapabilities.canR1.getter();
  v99 = v248;
  LOBYTE(v91) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v83(v98, v99);
  v83(v97, v99);
  if (v91 & 1) != 0 && (type metadata accessor for FMConnectionManager(), (static FMConnectionManager.hostSupportsRanging.getter()))
  {
    v100 = *(v256 + 40);
    v101 = *(*v100 + class metadata base offset for ManagedBuffer + 16);
    v102 = (*(*v100 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v100 + v102));
    v103 = v250;
    v104 = v96;
    v96(v245, v100 + v101, v250);
    os_unfair_lock_unlock((v100 + v102));

    v105 = v239;
    FMIPItem.productType.getter();
    v254(v245, v103);
    LODWORD(v100) = FMIPProductType.isAccessory.getter();
    v237(v105, v252);
    v106 = v100 ^ 1;
    v107 = v100 ^ 1 | v253;
  }

  else
  {
    v106 = 0;
    v107 = v253;
    v104 = v96;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v108 = type metadata accessor for Logger();
  v251 = sub_100005B14(v108, qword_1006D4630);
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();
  v111 = os_log_type_enabled(v109, v110);
  v112 = v240;
  if (v111)
  {
    v113 = swift_slowAlloc();
    *v113 = 67240448;
    *(v113 + 4) = v253 & 1;
    *(v113 + 8) = 1026;
    *(v113 + 10) = v106 & 1;
    _os_log_impl(&_mh_execute_header, v109, v110, "FMItemDetailContentViewController: Finding session creation. isPrecisionV2Finding = %{BOOL,public}d, isPrecisionR1Finding = %{BOOL,public}d.", v113, 0xEu);
  }

  LODWORD(v252) = v106;

  if ((v107 & 1) == 0)
  {
    type metadata accessor for FMFindingSession();
    v165 = v250;
    v259 = v250;
    v260 = sub_1003ABA74(&qword_1006B6908, &type metadata accessor for FMIPItem);
    v166 = sub_100008FC0(&v258);
    v167 = v256;
    v168 = *(v256 + 40);
    v169 = *(*v168 + class metadata base offset for ManagedBuffer + 16);
    v170 = (*(*v168 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v168 + v170));
    v104(v166, v168 + v169, v165);
    os_unfair_lock_unlock((v168 + v170));

    v171 = *(sub_10007EBC0(&qword_1006B68B0) + 48);
    v172 = v234;
    (*(v243 + 16))(v234, v242, v244);
    v172[v171] = 0;
    (*(v235 + 104))(v172, enum case for FMFindingTechnology.proximity(_:), v236);
    v173 = FMFindingSession.__allocating_init(findable:findingTechnology:arSession:)();
    v190 = v104;
    v191 = v228;
    *v228 = v173;
    swift_storeEnumTagMultiPayload();
    v192 = *(v167 + 40);
    v193 = *(*v192 + class metadata base offset for ManagedBuffer + 16);
    v194 = (*(*v192 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v192 + v194));
    v195 = v192 + v193;
    v196 = v245;
    v190(v245, v195, v165);
    os_unfair_lock_unlock((v192 + v194));

    v197 = v226;
    v198 = v229;
    v199 = v227;
    (*(v226 + 104))(v229, enum case for FMIPAnalyticsActionType.proximityFind(_:), v227);
    v200 = v241;
    sub_1003A49A0(v196, v198);
LABEL_32:

    (*(v197 + 8))(v198, v199);
    v254(v196, v165);
    v200[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldHoldItem] = 1;
    sub_100161B04(v191, v200);
    (*(v243 + 8))(v242, v244);
    sub_1003ABABC(v191, type metadata accessor for FindingMode);
    return;
  }

  v248 = [objc_allocWithZone(ARSession) init];
  if (v253)
  {
    v114 = *(v256 + 40);
    v115 = *(*v114 + class metadata base offset for ManagedBuffer + 16);
    v116 = (*(*v114 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v114 + v116));
    v117 = v250;
    v104(v112, v114 + v115, v250);
    os_unfair_lock_unlock((v114 + v116));

    v118 = v112;
    FMIPItem.identifier.getter();
    v119 = v223;
    UUID.init(uuidString:)();

    v120 = v224;
    v121 = v230;
    v247 = *(v224 + 48);
    if ((v247)(v119, 1, v230) == 1)
    {
      __break(1u);
      goto LABEL_35;
    }

    v122 = objc_opt_self();
    v254(v118, v117);
    v123 = *(v120 + 32);
    v124 = v222;
    v123(v222, v119, v121);
    v125 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v120 + 8))(v124, v121);
    v126 = [v122 generateDiscoveryTokenFromBeaconIdentifier:v125];

    if (v126)
    {
      v240 = v123;
      v246 = v126;
      v127 = *(sub_10007EBC0(&unk_1006B4210) + 48);
      v128 = enum case for FindingModel.nearbyInteraction(_:);
      v129 = type metadata accessor for FindingModel();
      v130 = v231;
      (*(*(v129 - 8) + 104))(v231, v128, v129);
      (*(v243 + 16))(&v130[v127], v242, v244);
      (*(v232 + 104))(v130, enum case for FindingExperienceType.precision(_:), v233);
      v131 = v256;
      v132 = *(v256 + 40);
      v133 = *(*v132 + class metadata base offset for ManagedBuffer + 16);
      v134 = v104;
      v135 = (*(*v132 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v132 + v135));
      v136 = v132 + v133;
      v137 = v218;
      v138 = v250;
      v134(v218, v136, v250);
      os_unfair_lock_unlock((v132 + v135));

      v239 = FMIPItem.name.getter();
      isa = v139;
      v254(v137, v138);
      v140 = *(v131 + 40);
      v141 = *(*v140 + class metadata base offset for ManagedBuffer + 16);
      v142 = (*(*v140 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v140 + v142));
      v143 = v140 + v141;
      v144 = v219;
      v134(v219, v143, v138);
      os_unfair_lock_unlock((v140 + v142));

      FMIPItem.identifier.getter();
      v145 = v220;
      UUID.init(uuidString:)();

      v146 = v230;
      if ((v247)(v145, 1, v230) != 1)
      {
        v147 = v254;
        v254(v144, v138);
        (v240)(v210, v145, v146);
        v247 = *(v232 + 16);
        (v247)(v211, v231, v233);
        v148 = *(v131 + 40);
        v149 = *(*v148 + class metadata base offset for ManagedBuffer + 16);
        v150 = (*(*v148 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v148 + v150));
        v151 = v148 + v149;
        v152 = v245;
        v255(v245, v151, v138);
        os_unfair_lock_unlock((v148 + v150));

        FMIPItem.findingProductType.getter(v213);
        v147(v152, v138);
        v153 = type metadata accessor for FMFindingUIAVPlayerVideoInfo();
        (*(*(v153 - 8) + 56))(v214, 1, 1, v153);
        v154 = v246;
        v155 = v215;
        FMFindableObject.init(name:findingIdentifier:findingType:findingProductType:videoInfo:discoveryToken:)();
        type metadata accessor for FMFindingSession();
        v156 = v217;
        v259 = v217;
        v260 = &protocol witness table for FMFindableObject;
        v157 = sub_100008FC0(&v258);
        v158 = v216;
        (*(v216 + 16))(v157, v155, v156);
        v159 = v231;
        v160 = v233;
        (v247)(v212, v231, v233);
        v161 = v248;
        v162 = FMFindingSession.__allocating_init(findable:findingType:arSession:)();
        v163 = v160;
        v164 = v232;
        v201 = v162;

        (*(v158 + 8))(v155, v156);
        (*(v164 + 8))(v159, v163);
        v202 = v242;
        goto LABEL_30;
      }

LABEL_35:
      __break(1u);
      return;
    }
  }

  v174 = v242;
  v175 = v252;
  if ((v252 & 1) == 0)
  {
    v186 = Logger.logObject.getter();
    v187 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      *v188 = 67240448;
      *(v188 + 4) = v253 & 1;
      *(v188 + 8) = 1026;
      *(v188 + 10) = v175 & 1;
      _os_log_impl(&_mh_execute_header, v186, v187, "No valid finding session created. isPrecisionV2Finding = %{BOOL,public}d, isPrecisionR1Finding = %{BOOL,public}d.", v188, 0xEu);

      v189 = v248;
    }

    else
    {
      v189 = v186;
      v186 = v248;
    }

    (*(v243 + 8))(v174, v244);
    return;
  }

  type metadata accessor for FMFindingSession();
  v176 = v250;
  v259 = v250;
  v260 = sub_1003ABA74(&qword_1006B6908, &type metadata accessor for FMIPItem);
  v177 = sub_100008FC0(&v258);
  v178 = *(v256 + 40);
  v179 = v174;
  v180 = *(*v178 + class metadata base offset for ManagedBuffer + 16);
  v181 = (*(*v178 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v178 + v181));
  v182 = v178 + v180;
  v202 = v179;
  v104(v177, v182, v176);
  os_unfair_lock_unlock((v178 + v181));

  v183 = *(sub_10007EBC0(&qword_1006C0020) + 48);
  v184 = v221;
  *v221 = 1;
  (*(v243 + 16))(&v184[v183], v179, v244);
  (*(v235 + 104))(v184, enum case for FMFindingTechnology.precision(_:), v236);
  v185 = v248;
  v201 = FMFindingSession.__allocating_init(findable:findingTechnology:arSession:)();
LABEL_30:
  v200 = v241;
  v203 = *&v241[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_itemConnectionManager];
  v198 = v229;
  v191 = v228;
  v204 = v256;
  if (v203)
  {
    *v228 = v201;
    *(v191 + 8) = v203;
    swift_storeEnumTagMultiPayload();
    v205 = *(v204 + 40);
    v206 = *(*v205 + class metadata base offset for ManagedBuffer + 16);
    v207 = (*(*v205 + 48) + 3) & 0x1FFFFFFFCLL;
    swift_retain_n();
    v208 = v203;

    os_unfair_lock_lock((v205 + v207));
    v196 = v245;
    v165 = v250;
    v255(v245, v205 + v206, v250);
    os_unfair_lock_unlock((v205 + v207));

    v197 = v226;
    v199 = v227;
    (*(v226 + 104))(v198, enum case for FMIPAnalyticsActionType.precisionFind(_:), v227);
    sub_1003A49A0(v196, v198);

    goto LABEL_32;
  }

  (*(v243 + 8))(v202, v244);
}

void sub_100398274(int a1, uint64_t a2)
{
  v3 = v2;
  LODWORD(v5) = a1;
  v6 = type metadata accessor for FMIPProductType();
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = type metadata accessor for FMIPItem();
  v9 = *(v44 - 8);
  __chkstk_darwin(v44);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for FMItemDetailViewModel();
  __chkstk_darwin(v12 - 8);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100005B14(v15, qword_1006D4630);
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = a2;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v5;
    v5 = v20;
    v48[0] = v20;
    *v19 = 67109378;
    v41 = v21;
    *(v19 + 4) = v21 & 1;
    *(v19 + 8) = 2080;
    v42 = v18;
    v43 = v3;
    if (v18)
    {
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = v23;
    }

    else
    {
      v24 = 0xE300000000000000;
      v22 = 7104878;
    }

    v25 = sub_100005B4C(v22, v24, v48);

    *(v19 + 10) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMItemDetailContentViewController: isRangingServiceAvailable: %{BOOL}d, error: %s", v19, 0x12u);
    sub_100006060(v5);

    a2 = v42;
    v3 = v43;
    LOBYTE(v5) = v41;
  }

  else
  {
  }

  *(v3 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isRangingServiceAvailable) = v5 & 1;
  v26 = *(v3 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v27 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v26 + v27, v14, type metadata accessor for FMItemDetailViewModel);
  sub_10038B13C();
  sub_1003ABABC(v14, type metadata accessor for FMItemDetailViewModel);
  v28 = *(v26 + 40);
  v29 = *(*v28 + class metadata base offset for ManagedBuffer + 16);
  v30 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v28 + v30));
  v31 = v44;
  (*(v9 + 16))(v11, v28 + v29, v44);
  os_unfair_lock_unlock((v28 + v30));

  FMIPItem.productType.getter();
  (*(v9 + 8))(v11, v31);
  v32 = FMIPProductType.isAccessory.getter();
  (*(v45 + 8))(v8, v46);
  if (a2)
  {
    swift_getErrorValue();
    if (!((sub_100271D20(v47) != 300) | v32 & 1))
    {
      type metadata accessor for FMConnectionManager();
      if (static FMConnectionManager.hostSupportsRanging.getter())
      {
        v33 = *(v3 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lowBatteryAttention);
        v34 = [objc_opt_self() mainBundle];
        v49._object = 0x800000010057FDC0;
        v35._object = 0x800000010057FD80;
        v49._countAndFlagsBits = 0xD000000000000042;
        v35._countAndFlagsBits = 0xD000000000000030;
        v36._countAndFlagsBits = 0;
        v36._object = 0xE000000000000000;
        v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v34, v36, v49);

        *(v33 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle) = v37;

        v38 = *(v33 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel);

        v39 = String._bridgeToObjectiveC()();

        [v38 setText:v39];
      }
    }
  }
}

uint64_t sub_1003987F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10007EBC0(&qword_1006BC990);
  __chkstk_darwin(v2 - 8);
  v135 = v123 - v3;
  v137 = type metadata accessor for FMIPSeparationLocation();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v124 = v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v5 - 8);
  v143 = v123 - v6;
  v133 = type metadata accessor for DispatchWorkItemFlags();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for DispatchQoS();
  v129 = *(v131 - 8);
  __chkstk_darwin(v131);
  v128 = v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v9 - 8);
  v138 = v123 - v10;
  v150 = type metadata accessor for UUID();
  v148 = *(v150 - 8);
  v11 = __chkstk_darwin(v150);
  v134 = v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v144 = v123 - v14;
  v15 = __chkstk_darwin(v13);
  v125 = v123 - v16;
  v139 = v17;
  __chkstk_darwin(v15);
  v126 = v123 - v18;
  v19 = sub_10007EBC0(&unk_1006B8DD0);
  __chkstk_darwin(v19 - 8);
  v21 = v123 - v20;
  v22 = type metadata accessor for FMSelectionPendingAction(0);
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v149 = v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v146 = v123 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = v123 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = v123 - v32;
  v141 = v34;
  __chkstk_darwin(v31);
  v36 = v123 - v35;
  v145 = v1;
  v147 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v37 = *(*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
  v38 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();
  sub_100007204(v37 + v38, v21, &unk_1006B8DD0);
  v142 = v23;
  v39 = v23;
  v40 = v22;
  if ((*(v39 + 48))(v21, 1, v22) == 1)
  {
    v41 = &unk_1006B8DD0;
    return sub_100012DF0(v21, v41);
  }

  sub_1003B0214(v21, v36, type metadata accessor for FMSelectionPendingAction);
  v43 = v36;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  v45 = sub_100005B14(v44, qword_1006D4630);
  sub_1003B027C(v36, v33, type metadata accessor for FMSelectionPendingAction);
  v123[1] = v45;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  v48 = os_log_type_enabled(v46, v47);
  v140 = v36;
  v49 = v146;
  if (v48)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v157 = v51;
    *v50 = 136315138;
    aBlock = 0;
    v152 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v52 = aBlock;
    v53 = v152;
    sub_1003ABABC(v33, type metadata accessor for FMSelectionPendingAction);
    v54 = sub_100005B4C(v52, v53, &v157);
    v43 = v140;

    *(v50 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v46, v47, "FMItemDetailContentViewController: performPendingActions %s", v50, 0xCu);
    sub_100006060(v51);
  }

  else
  {

    sub_1003ABABC(v33, type metadata accessor for FMSelectionPendingAction);
  }

  v55 = v145;
  v56 = v150;
  sub_1003B027C(v43, v30, type metadata accessor for FMSelectionPendingAction);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1003ABABC(v30, type metadata accessor for FMSelectionPendingAction);
    v57 = v148;
  }

  else
  {
    v145 = v40;
    v58 = v55;
    v59 = v148;
    v123[0] = *(v148 + 32);
    v60 = v126;
    (v123[0])(v126, v30, v150);
    v61 = type metadata accessor for TaskPriority();
    v62 = v138;
    (*(*(v61 - 8) + 56))(v138, 1, 1, v61);
    v63 = v125;
    (*(v59 + 16))(v125, v60, v150);
    type metadata accessor for MainActor();
    v64 = v58;
    v65 = static MainActor.shared.getter();
    v66 = (*(v59 + 80) + 40) & ~*(v59 + 80);
    v67 = swift_allocObject();
    v67[2] = v65;
    v67[3] = &protocol witness table for MainActor;
    v67[4] = v64;
    v68 = v67 + v66;
    v57 = v59;
    v55 = v58;
    (v123[0])(v68, v63, v150);
    v56 = v150;
    v43 = v140;
    sub_100170C90(0, 0, v62, &unk_10055EBB0, v67);

    v69 = v60;
    v49 = v146;
    (*(v57 + 8))(v69, v56);
  }

  sub_1003B027C(v43, v49, type metadata accessor for FMSelectionPendingAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v57 + 8))(v49, v56);
    v70 = type metadata accessor for TaskPriority();
    v71 = v138;
    (*(*(v70 - 8) + 56))(v138, 1, 1, v70);
    type metadata accessor for MainActor();
    v72 = v55;
    v73 = static MainActor.shared.getter();
    v74 = swift_allocObject();
    v74[2] = v73;
    v74[3] = &protocol witness table for MainActor;
    v75 = ObjectType;
    v74[4] = v72;
    v74[5] = v75;
    sub_100170C90(0, 0, v71, &unk_10055EBA0, v74);
  }

  else
  {
    sub_1003ABABC(v49, type metadata accessor for FMSelectionPendingAction);
  }

  v76 = v149;
  swift_storeEnumTagMultiPayload();
  v77 = sub_100247790(v43, v76);
  sub_1003ABABC(v76, type metadata accessor for FMSelectionPendingAction);
  if (v77)
  {
    v78 = v57;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "FMItemDetailContentViewController: performing remove action", v81, 2u);
    }

    sub_10000905C(0, &qword_1006AEDC0);
    v82 = static OS_dispatch_queue.main.getter();
    v83 = swift_allocObject();
    *(v83 + 16) = v55;
    v155 = sub_1003B043C;
    v156 = v83;
    aBlock = _NSConcreteStackBlock;
    v152 = 1107296256;
    v153 = sub_100004AE4;
    v154 = &unk_10063A978;
    v84 = _Block_copy(&aBlock);
    v85 = v55;

    v86 = v128;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1003ABA74(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    v87 = v55;
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    v88 = v130;
    v89 = v133;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v84);

    v90 = v89;
    v55 = v87;
    (*(v132 + 8))(v88, v90);
    (*(v129 + 8))(v86, v131);
    v43 = v140;
    v56 = v150;
    v57 = v78;
  }

  v91 = swift_allocObject();
  *(v91 + 16) = v55;
  v92 = v149;
  sub_1003B027C(v43, v149, type metadata accessor for FMSelectionPendingAction);
  v93 = (*(v142 + 80) + 24) & ~*(v142 + 80);
  v94 = (v141 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  *(v95 + 16) = v55;
  sub_1003B0214(v92, v95 + v93, type metadata accessor for FMSelectionPendingAction);
  v96 = (v95 + v94);
  v97 = v55;
  v98 = *&v55[v147];
  *v96 = sub_1003B02E4;
  v96[1] = v91;
  v149 = v91;
  v99 = *(v98 + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
  swift_beginAccess();
  v100 = type metadata accessor for FMPendingActionInfo(0);
  v101 = v99 + *(v100 + 24);
  v102 = v143;
  sub_100007204(v101, v143, &unk_1006B20C0);
  if ((*(v57 + 48))(v102, 1, v56) == 1)
  {
    v97;

    sub_100012DF0(v102, &unk_1006B20C0);
    v103 = *(*&v97[v147] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
    swift_beginAccess();
    v104 = v103 + *(v100 + 20);
    v21 = v135;
    sub_100007204(v104, v135, &qword_1006BC990);
    v105 = v136;
    if ((*(v136 + 48))(v21, 1, v137) == 1)
    {
      sub_1003ABABC(v43, type metadata accessor for FMSelectionPendingAction);

      v41 = &qword_1006BC990;
      return sub_100012DF0(v21, v41);
    }

    v120 = v124;
    v121 = v137;
    (*(v105 + 32))(v124, v21, v137);
    v122 = swift_allocObject();
    *(v122 + 16) = sub_1003B02EC;
    *(v122 + 24) = v95;

    dispatch thunk of FMIPReverseGeocodingCache.address(for:completion:)();

    (*(v105 + 8))(v120, v121);
    v119 = v43;
  }

  else
  {
    v106 = *(v57 + 32);
    v107 = v144;
    v106(v144, v102, v150);
    v108 = v134;
    v109 = v107;
    v110 = v150;
    (*(v57 + 16))(v134, v109, v150);
    v111 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v112 = (v139 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
    v113 = swift_allocObject();
    *(v113 + 16) = v97;
    v106((v113 + v111), v108, v110);
    v114 = (v113 + v112);
    *v114 = sub_1003B02EC;
    v114[1] = v95;
    v115 = v97;

    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 67109120;
      _os_log_impl(&_mh_execute_header, v116, v117, "FMDeviceProvider: refreshSafeLocations, isCompletionNil? %{BOOL}d", v118, 8u);
    }

    FMIPManager.refreshSafeLocations(completion:)();

    (*(v148 + 8))(v144, v110);
    v119 = v140;
  }

  return sub_1003ABABC(v119, type metadata accessor for FMSelectionPendingAction);
}