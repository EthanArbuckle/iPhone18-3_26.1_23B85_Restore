id sub_1000022E4(_BYTE *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int8x16_t a9, uint64_t a10)
{
  v16 = [_SUITimeFormatData instanceForLocale:a10];
  v17 = v16;
  if (*a9.i64 > 600.0 && a7 != 0)
  {
    if (*a9.i64 <= 36000.0)
    {
      [v16 abbreviatedHourMinuteDateFormatter];
    }

    else
    {
      [v16 abbreviatedHourDateFormatter];
    }
    v29 = ;
    v30 = [(__CFString *)v29 stringFromTimeInterval:*a9.i64];
    goto LABEL_52;
  }

  v64 = a1;
  v66 = v16;
  v19 = v16;
  v20 = v19;
  v21 = *a9.i64;
  v22 = *a9.i64 / 0x3C;
  if (a5)
  {
    v23 = v22 - 60 * (((v22 * 0x888888888888889uLL) >> 64) >> 1);
    v24 = v21 / 0xE10;
  }

  else
  {
    v24 = 0;
    v23 = *a9.i64 / 0x3C;
  }

  v65 = a8;
  if (v24)
  {
    v25 = 1;
  }

  else
  {
    v25 = a2;
  }

  v26 = [v19 singleWidthNumberFormatter];
  v63 = v25;
  if (v25 == 1)
  {
    v27 = [NSNumber numberWithUnsignedInteger:v24];
    v28 = [v26 stringFromNumber:v27];

LABEL_19:
    v31 = [v20 doubleWidthNumberFormatter];

    v26 = v31;
    goto LABEL_20;
  }

  v28 = &stru_100104028;
  if (a6)
  {
    goto LABEL_19;
  }

LABEL_20:
  v32 = [NSNumber numberWithUnsignedInteger:v23];
  v33 = [v26 stringFromNumber:v32];

  if (a4)
  {
    v35 = v21 - 60 * v22;
    v36 = [v20 doubleWidthNumberFormatter];
    v37 = [NSNumber numberWithUnsignedInteger:v35];
    v38 = [v36 stringFromNumber:v37];
  }

  else
  {
    v38 = &stru_100104028;
  }

  if (a3)
  {
    *v34.i64 = *a9.i64 - trunc(*a9.i64);
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    v40 = (*vbslq_s8(vnegq_f64(v39), v34, a9).i64 * 100.0);
    v41 = [v20 doubleWidthNumberFormatter];
    v42 = [NSNumber numberWithUnsignedInteger:v40];
    v43 = [v41 stringFromNumber:v42];
  }

  else
  {
    v43 = &stru_100104028;
  }

  v44 = v28;
  v45 = v33;
  v46 = v38;
  v47 = v43;

  v29 = v28;
  v48 = v33;
  v49 = v38;
  v50 = v43;
  if (v63)
  {
    if (!a4 || a7)
    {
      v51 = [v20 formatHourMin];
    }

    else
    {
      if (a3)
      {
        [v20 formatHourMinSecSubsec];
      }

      else
      {
        [v20 formatHourMinSec];
      }
      v51 = ;
    }
  }

  else if (a4)
  {
    if (a7 || (a3 & 1) == 0)
    {
      v51 = [v20 formatMinSec];
    }

    else
    {
      v51 = [v20 formatMinSecSubsec];
    }
  }

  else
  {
    v51 = [v20 formatMin];
  }

  v52 = v51;
  if (v64)
  {
    *v64 = v63;
  }

  if ((v63 & 1) == 0)
  {
    v53 = [NSString stringWithFormat:@"HH%@", v51];

    v52 = v53;
  }

  v54 = [v52 stringByReplacingOccurrencesOfString:@"HH" withString:@"%1$@"];

  v55 = [v54 stringByReplacingOccurrencesOfString:@"H" withString:@"%1$@"];

  v56 = [v55 stringByReplacingOccurrencesOfString:@"mm" withString:@"%2$@"];

  v57 = [v56 stringByReplacingOccurrencesOfString:@"m" withString:@"%2$@"];

  v58 = [v57 stringByReplacingOccurrencesOfString:@"ss" withString:@"%3$@"];

  v59 = [v58 stringByReplacingOccurrencesOfString:@"SS" withString:@"%4$@"];

  if (v65)
  {
    v17 = v66;
    if ([(__CFString *)v50 length])
    {

      v50 = @"−−";
    }

    v60 = 60.0;
    v61 = *a9.i64;
    if (*a9.i64 >= 60.0 && [(__CFString *)v49 length:60.0])
    {

      v49 = @"−−";
    }
  }

  else
  {
    v17 = v66;
  }

  v30 = [NSString stringWithFormat:v59, v60, v61, v29, v48, v49, v50];

LABEL_52:

  return v30;
}

void sub_100002994(id a1)
{
  qword_100119B08 = objc_alloc_init(NSLock);

  _objc_release_x1();
}

double sub_100002E3C(double a1)
{
  v1 = a1;
  v2 = a1 * 1000.0;
  if (v2 <= 1.84467441e19)
  {
    v3 = dword_1000CFD08[(121 * (v2 - 100 * ((v2 / 0x64) & 0x3FFFFFFF))) >> 12];
    return ((10 * (arc4random_uniform(3u) + v3)) + floor(v1 * 10.0) * 100.0) / 1000.0;
  }

  return v1;
}

id sub_10000305C(uint64_t a1, void *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003120;
  v6[3] = &unk_1000FF598;
  v7 = *(a1 + 32);
  v3 = [a2 na_firstObjectPassingTest:v6];
  v4 = [NAFuture futureWithResult:v3];

  return v4;
}

id sub_100003120(uint64_t a1, void *a2)
{
  v3 = [a2 timerIDString];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100003164(uint64_t a1, void *a2)
{
  v4 = [a2 timerByUpdatingWithState:*(a1 + 40)];
  v3 = [*(a1 + 32) updateTimer:v4];
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for Application();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for AppDelegate();
  v7 = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(v7);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, v6, v8);

  return 0;
}

uint64_t sub_1000032D4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003338@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_1000032D4(a1, a2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000033BC(uint64_t a1)
{
  v2 = (*(*(sub_1000032D4(&qword_100113860, &qword_1000D0290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  sub_100003F98(a1, &v5 - v3);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t variable initialization expression of AlarmAlertCoverSheet.slideTransition()
{
  static AnyTransition.move(edge:)();
  static AnyTransition.scale.getter();
  v0 = AnyTransition.combined(with:)();

  return v0;
}

uint64_t variable initialization expression of Atomic.lock()
{
  type metadata accessor for CPUnfairLock();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_100003558(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003578(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1000035EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *sub_100003618@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_100003644(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000036C4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000036F0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000037B8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003830(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000038B0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100003900@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100004338(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1000039D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003AA8(uint64_t a1)
{
  v2 = sub_1000039D0(&qword_1001138D0, type metadata accessor for Role);
  v3 = sub_1000039D0(&qword_1001138D8, type metadata accessor for Role);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003B64(uint64_t a1)
{
  v2 = sub_1000039D0(&qword_1001137F0, type metadata accessor for SBUISystemApertureElementIdentifier);
  v3 = sub_1000039D0(&qword_1001137F8, type metadata accessor for SBUISystemApertureElementIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003CB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100003CF8(uint64_t a1)
{
  v2 = sub_1000039D0(&qword_100113900, type metadata accessor for Key);
  v3 = sub_1000039D0(&qword_100113908, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003DC0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100003DFC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003E50()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100003EC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100003F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100113860, &qword_1000D0290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_100004008(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000401C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000403C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AlarmKitButton.SizeCategory(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Frame(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Frame(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100004338(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_100004384(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100004528@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = [objc_opt_self() mtOrange];
  result = Color.init(uiColor:)();
  *a1 = 0x69662E6D72616C61;
  a1[1] = 0xEA00000000006C6CLL;
  a1[2] = v3;
  a1[3] = result;
  return result;
}

uint64_t sub_10000459C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + 6);
  v4 = *a1;
  sub_10002B00C((a1 + 1), &v14);
  sub_10002B00C(v3, v15);
  v13 = v4;
  v5 = v4;
  LOBYTE(v4) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v15[40] = v4;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = 0;
  sub_10002CFC4(&v13, v12, &qword_100114D68, &qword_1000D20D8);
  sub_10002CFC4(v12, a2, &qword_100114D68, &qword_1000D20D8);
  *(a2 + 136) = 0;
  *(a2 + 144) = 1;
  *(a2 + 152) = v5;
  *(a2 + 160) = sub_10002DB3C;
  *(a2 + 168) = 0;
  *(a2 + 176) = 256;
  v10 = v5;
  sub_10002B128();
  sub_10002D02C(&v13, &qword_100114D68, &qword_1000D20D8);

  sub_10002B130();
  return sub_10002D02C(v12, &qword_100114D68, &qword_1000D20D8);
}

double sub_100004700@<D0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_10000459C(v1, a1 + 24);
  *(a1 + 208) = static Edge.Set.horizontal.getter();
  result = 0.0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 257;
  return result;
}

uint64_t sub_100004758@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v70 = a4;
  v71 = a3;
  v69 = a2;
  v63 = a5;
  v6 = (*(*(sub_1000032D4(&qword_100115E40, &unk_1000D1280) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v8 = &v59 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (__chkstk_darwin)();
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v59 = &v59 - v15;
  v16 = type metadata accessor for RunningCountdownView(0);
  v17 = *(*(v16 - 1) + 64);
  __chkstk_darwin(v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1000032D4(&qword_100113FD8, &qword_1000D63D0);
  v20 = *(*(v62 - 8) + 64);
  v21 = __chkstk_darwin(v62);
  v72 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v61 = &v59 - v24;
  __chkstk_darwin(v23);
  v68 = &v59 - v25;
  LocalizedStringKey.init(stringLiteral:)();
  v26 = Text.init(_:tableName:bundle:comment:)();
  v65 = v27;
  v66 = v26;
  v29 = v28;
  v67 = v30;
  if (qword_100113660 != -1)
  {
    swift_once();
  }

  v31 = qword_10011F698;
  v32 = objc_opt_self();
  v64 = v31;

  v33 = [v32 mtOrange];
  v60 = Color.init(uiColor:)();
  v74 = v29 & 1;
  v73 = 1;
  v34 = [a1 snoozeFireDate];
  if (v34)
  {
    v35 = v34;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = *(v10 + 32);
    v36(v8, v14, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    v37 = v59;
    v36(v59, v8, v9);
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    v37 = v59;
    Date.init()();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_10002D02C(v8, &qword_100115E40, &unk_1000D1280);
    }
  }

  v38 = v70;
  if ((v70 & 0x100) != 0)
  {
    if (qword_100113658 != -1)
    {
      swift_once();
    }

    v39 = &qword_10011F690;
    v40 = 0x4048000000000000;
  }

  else
  {
    if (qword_100113678 != -1)
    {
      swift_once();
    }

    v39 = &qword_10011F6B0;
    v40 = 0x4047800000000000;
  }

  v41 = v40;
  v42 = *v39;
  v43 = [v32 mtOrange];
  v44 = Color.init(uiColor:)();
  (*(v10 + 32))(v19, v37, v9);
  v19[v16[5]] = 0;
  *&v19[v16[6]] = v41;
  *&v19[v16[7]] = v42;
  *&v19[v16[8]] = v44;
  v19[v16[9]] = (v38 & 0x100) == 0;
  v19[v16[10]] = 0;
  type metadata accessor for EnvironmentDelegate(0);
  sub_100025228(&qword_100113FE0, type metadata accessor for EnvironmentDelegate);
  v45 = StateObject.wrappedValue.getter();
  v46 = static ObservableObject.environmentStore.getter();
  v47 = v61;
  sub_1000255CC(v19, v61, type metadata accessor for RunningCountdownView);
  v48 = (v47 + *(v62 + 36));
  *v48 = v46;
  v48[1] = v45;
  v49 = v68;
  sub_10002C7C4(v47, v68, &qword_100113FD8, &qword_1000D63D0);
  v50 = v73;
  v51 = v74;
  v52 = v72;
  sub_10002CFC4(v49, v72, &qword_100113FD8, &qword_1000D63D0);
  v54 = v65;
  v53 = v66;
  v56 = v63;
  v55 = v64;
  *v63 = v66;
  v56[1] = v54;
  *(v56 + 16) = v51;
  v56[3] = v67;
  v56[4] = v55;
  v56[5] = v60;
  v56[6] = 0;
  *(v56 + 56) = v50;
  v57 = sub_1000032D4(&qword_100113FE8, &qword_1000D1290);
  sub_10002CFC4(v52, v56 + *(v57 + 48), &qword_100113FD8, &qword_1000D63D0);
  sub_100025AFC(v53, v54, v51 & 1);

  sub_10002D02C(v49, &qword_100113FD8, &qword_1000D63D0);
  sub_10002D02C(v52, &qword_100113FD8, &qword_1000D63D0);
  sub_100025B0C(v53, v54, v51 & 1);
}

uint64_t sub_100004E2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 25);
  *a1 = static VerticalAlignment.firstTextBaseline.getter();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v8 = sub_1000032D4(&qword_100113FD0, &qword_1000D1278);
  if (v7)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  return sub_100004758(v3, v4, v5, v9 | v6, (a1 + *(v8 + 44)));
}

uint64_t sub_100004EC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v29 - v5;
  v7 = sub_1000032D4(&qword_100113FF0, &qword_1000D1298);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  static Font.Weight.medium.getter();
  v11 = enum case for Font.Design.rounded(_:);
  v12 = type metadata accessor for Font.Design();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v6, v11, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  v14 = static Font.system(size:weight:design:)();
  sub_10002D02C(v6, &qword_100113E08, &qword_1000D10F0);
  v15 = *(v1 + 72);
  v16 = *(v1 + 80);
  sub_100025B1C((v2 + 48), *(v2 + 72));
  v17 = (*(v16 + 56))(v15, v16);
  v18 = *(v1 + 72);
  v19 = *(v1 + 80);
  sub_100025B1C((v2 + 48), *(v2 + 72));
  v20 = (*(v19 + 80))(v18, v19);
  sub_100025B60(v2, v30);
  v21 = swift_allocObject();
  v22 = v30[3];
  *(v21 + 48) = v30[2];
  *(v21 + 64) = v22;
  *(v21 + 80) = v30[4];
  *(v21 + 96) = v31;
  v23 = v30[1];
  *(v21 + 16) = v30[0];
  *(v21 + 32) = v23;
  height = CGSizeZero.height;
  v25 = *(v7 + 36);
  v26 = enum case for BlendMode.plusLighter(_:);
  v27 = type metadata accessor for BlendMode();
  (*(*(v27 - 8) + 104))(&v10[v25], v26, v27);
  *v10 = 0x4049000000000000;
  *(v10 + 1) = v14;
  *(v10 + 2) = 0x6B72616D78;
  *(v10 + 3) = 0xE500000000000000;
  *(v10 + 4) = *&CGSizeZero.width;
  *(v10 + 5) = height;
  *(v10 + 6) = v17;
  *(v10 + 7) = v20;
  v10[64] = 1;
  *(v10 + 65) = v30[0];
  *(v10 + 17) = *(v30 + 3);
  *(v10 + 9) = sub_100025B98;
  *(v10 + 10) = v21;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100025BC8();
  View.accessibilityLabel(_:)();

  return sub_10002D02C(v10, &qword_100113FF0, &qword_1000D1298);
}

uint64_t sub_100005248()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for AlarmAlertPlatter(0) + 28);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000295C4(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1000053A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  __chkstk_darwin(v3);
  v65 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1000032D4(&qword_100114960, &qword_1000D1D28);
  v6 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v8 = &v58 - v7;
  v75 = sub_1000032D4(&qword_100114968, &qword_1000D1D30);
  v69 = *(v75 - 8);
  v9 = *(v69 + 64);
  __chkstk_darwin(v75);
  v66 = &v58 - v10;
  v70 = sub_1000032D4(&qword_100114970, &qword_1000D1D38);
  v11 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v73 = &v58 - v12;
  v72 = type metadata accessor for CountdownPlatter(0);
  v13 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v64 = &v58 - v18;
  v19 = type metadata accessor for OpaqueAlarm();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v63 = *(v23 - 8);
  v24 = *(v63 + 64);
  __chkstk_darwin(v23);
  v26 = &v58 - v25;
  v27 = type metadata accessor for AlarmPresentationState();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v2;
  sub_100025564(v2, v22, type metadata accessor for OpaqueAlarm);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100025A9C(v22, type metadata accessor for OpaqueAlarm);
  }

  else
  {
    v59 = v15;
    v32 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v60 = v31;
    v61 = v28;
    v33 = *(v28 + 32);
    v62 = v27;
    v33(v31, v22, v27);
    v34 = v63;
    (*(v63 + 32))(v26, &v22[v32], v23);
    v35 = v64;
    AlarmAttributes.metadata.getter();
    v36 = type metadata accessor for MTAlarmCustomContent();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v35, 1, v36) == 1)
    {
      sub_10002D02C(v35, &unk_100118100, &qword_1000D1250);
    }

    else
    {
      MTAlarmCustomContent.type.getter();
      (*(v37 + 8))(v35, v36);
      v38 = AlarmType.rawValue.getter();
      if (v38 == AlarmType.rawValue.getter())
      {
        v39 = v34;
        v40 = v59;
        (*(v34 + 16))(v59, v26, v23);
        v41 = v72;
        v42 = v60;
        v43 = v61;
        v44 = v62;
        (*(v61 + 16))(v40 + *(v72 + 20), v60, v62);
        v45 = v71;
        sub_100005C80((v40 + v41[6]));
        v46 = *(v45 + *(type metadata accessor for AlarmAlertPlatter(0) + 24));
        *(v40 + v41[7]) = 0x4028000000000000;
        *(v40 + v41[8]) = v46;
        sub_100025564(v40, v73, type metadata accessor for CountdownPlatter);
        swift_storeEnumTagMultiPayload();
        sub_100025228(&qword_100114998, type metadata accessor for CountdownPlatter);
        v47 = sub_1000297DC();
        v77 = v74;
        v78 = v47;
        swift_getOpaqueTypeConformance2();
        _ConditionalContent<>.init(storage:)();
        sub_100025A9C(v40, type metadata accessor for CountdownPlatter);
        (*(v39 + 8))(v26, v23);
        return (*(v43 + 8))(v42, v44);
      }
    }

    (*(v34 + 8))(v26, v23);
    (*(v61 + 8))(v60, v62);
  }

  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v49 = sub_1000032D4(&qword_100114978, &qword_1000D1D40);
  sub_100005E8C(v71, &v8[*(v49 + 44)]);
  v50 = static Edge.Set.horizontal.getter();
  v51 = v74;
  v52 = &v8[*(v74 + 36)];
  *v52 = v50;
  *(v52 + 8) = 0u;
  *(v52 + 24) = 0u;
  v52[40] = 1;
  v53 = v65;
  static AccessibilityChildBehavior.contain.getter();
  v54 = sub_1000297DC();
  v55 = v66;
  View.accessibilityElement(children:)();
  (*(v67 + 8))(v53, v68);
  sub_10002D02C(v8, &qword_100114960, &qword_1000D1D28);
  v56 = v69;
  v57 = v75;
  (*(v69 + 16))(v73, v55, v75);
  swift_storeEnumTagMultiPayload();
  sub_100025228(&qword_100114998, type metadata accessor for CountdownPlatter);
  v77 = v51;
  v78 = v54;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v56 + 8))(v55, v57);
}

uint64_t sub_100005C40(uint64_t a1)
{
  result = type metadata accessor for AlarmAlertPlatter(0);
  if (*(a1 + *(result + 20)))
  {
    return dispatch thunk of ActivityScene.idleTimerDisabled.setter();
  }

  return result;
}

void *sub_100005C80@<X0>(void *a1@<X8>)
{
  if (sub_100005248())
  {
    v2 = objc_opt_self();
    v3 = [v2 mtOrange];
    Color.init(uiColor:)();
    v4 = Color.opacity(_:)();

    v5 = [v2 mtOrange];
    Color.init(uiColor:)();
    v6 = Color.opacity(_:)();

    static Color.white.getter();
    v7 = Color.opacity(_:)();

    static Color.white.getter();
    v8 = Color.opacity(_:)();

    a1[3] = &type metadata for LowLuminanceSessionUiConfig;
    a1[4] = &off_100103578;
  }

  else
  {
    type metadata accessor for CGColor(0);
    _CGColorInitTrampoline.init(_colorLiteralRed:green:blue:alpha:)();
    v4 = Color.init(_:)();
    v9 = [objc_opt_self() mtOrange];
    Color.init(uiColor:)();
    v6 = Color.opacity(_:)();

    v7 = static Color.white.getter();
    v10 = [objc_opt_self() systemExtraLightGrayColor];
    Color.init(uiColor:)();
    v8 = Color.opacity(_:)();

    a1[3] = &type metadata for TimerLockScreenSessionUiConfig;
    a1[4] = &off_100103508;
  }

  result = swift_allocObject();
  result[2] = v4;
  result[3] = v6;
  result[4] = v7;
  result[5] = v8;
  *a1 = result;
  return result;
}

uint64_t sub_100005E8C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v3 = sub_1000032D4(&qword_1001149A0, &qword_1000D1D50);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v52 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = &v44 - v7;
  v8 = type metadata accessor for AlarmAlertPlatter(0);
  v50 = *(v8 - 8);
  v49 = *(v50 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000032D4(&qword_1001149A8, &qword_1000D1D58);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  v18 = sub_1000032D4(&qword_1001149B0, &qword_1000D1D60);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v44 - v20;
  v48 = sub_1000032D4(&qword_1001149B8, &qword_1000D1D68);
  v45 = *(v48 - 8);
  v22 = v45;
  v23 = *(v45 + 64);
  v24 = __chkstk_darwin(v48);
  v47 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v46 = &v44 - v26;
  *v21 = static VerticalAlignment.bottom.getter();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v27 = &v21[*(sub_1000032D4(&qword_1001149C0, &qword_1000D1D70) + 44)];
  sub_1000063FC(v17);
  sub_10002CFC4(v17, v15, &qword_1001149A8, &qword_1000D1D58);
  sub_10002CFC4(v15, v27, &qword_1001149A8, &qword_1000D1D58);
  v28 = v27 + *(sub_1000032D4(&qword_1001149C8, &qword_1000D1D78) + 48);
  *v28 = 0x4028000000000000;
  *(v28 + 8) = 0;
  sub_10002D02C(v17, &qword_1001149A8, &qword_1000D1D58);
  sub_10002D02C(v15, &qword_1001149A8, &qword_1000D1D58);
  v21[*(sub_1000032D4(&qword_1001149D0, &qword_1000D1D80) + 36)] = 0;
  static Color.black.getter();
  v29 = Color.opacity(_:)();

  v30 = static Edge.Set.all.getter();
  v31 = &v21[*(v18 + 36)];
  *v31 = v29;
  v31[8] = v30;
  sub_100025564(a1, v10, type metadata accessor for AlarmAlertPlatter);
  v32 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v33 = swift_allocObject();
  sub_1000255CC(v10, v33 + v32, type metadata accessor for AlarmAlertPlatter);
  sub_100029910();
  v34 = v46;
  View.onTapGesture(count:perform:)();

  sub_10002D02C(v21, &qword_1001149B0, &qword_1000D1D60);
  v35 = v51;
  sub_1000073CC(v51);
  v36 = *(v22 + 16);
  v38 = v47;
  v37 = v48;
  v36(v47, v34, v48);
  v39 = v52;
  sub_10002CFC4(v35, v52, &qword_1001149A0, &qword_1000D1D50);
  v40 = v53;
  v36(v53, v38, v37);
  v41 = sub_1000032D4(&qword_100114A18, &qword_1000D1DA0);
  sub_10002CFC4(v39, &v40[*(v41 + 48)], &qword_1001149A0, &qword_1000D1D50);
  sub_10002D02C(v35, &qword_1001149A0, &qword_1000D1D50);
  v42 = *(v45 + 8);
  v42(v34, v37);
  sub_10002D02C(v39, &qword_1001149A0, &qword_1000D1D50);
  return (v42)(v38, v37);
}

uint64_t sub_1000063FC@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v94 = sub_1000032D4(&qword_100114A48, &qword_1000D1DC8);
  v1 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v95 = &v72 - v2;
  v89 = sub_1000032D4(&qword_100114A50, &qword_1000D1DD0);
  v3 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v88 = (&v72 - v4);
  v93 = sub_1000032D4(&qword_100114A58, &qword_1000D1DD8);
  v5 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v91 = &v72 - v6;
  v7 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v85 = &v72 - v9;
  v10 = type metadata accessor for AlarmPresentationState.Mode();
  v82 = *(v10 - 8);
  v83 = v10;
  v11 = *(v82 + 64);
  __chkstk_darwin(v10);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for AlarmKitAlertLabelView(0);
  v14 = *(*(v90 - 8) + 64);
  v15 = __chkstk_darwin(v90);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v72 - v18;
  v20 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v87 = *(v20 - 8);
  v21 = *(v87 + 64);
  v22 = __chkstk_darwin(v20);
  v84 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v72 - v24;
  v26 = type metadata accessor for AlarmPresentationState();
  v86 = *(v26 - 8);
  v27 = *(v86 + 64);
  v28 = __chkstk_darwin(v26);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v72 - v31;
  v33 = type metadata accessor for OpaqueAlarm();
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = (&v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100025564(v92, v36, type metadata accessor for OpaqueAlarm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v38 = *v36;
      v39 = static Color.orange.getter();
      type metadata accessor for AlarmAlertAnimation();
      v40 = swift_allocObject();
      v41 = v38;
      v42 = v88;
      *v88 = v39;
      v42[1] = 0x4047800000000000;
      v42[2] = v40;
      v42[3] = v41;

      v43 = v41;
      swift_storeEnumTagMultiPayload();

      v44 = v43;
      sub_1000032D4(&qword_100114A70, &qword_1000D1DE0);
      sub_100025228(&qword_100113F68, type metadata accessor for AlarmKitAlertLabelView);
      sub_10002DAD8(&qword_100114A68, &qword_100114A70, &qword_1000D1DE0);
      v45 = v91;
      _ConditionalContent<>.init(storage:)();
      sub_10002CFC4(v45, v95, &qword_100114A58, &qword_1000D1DD8);
      swift_storeEnumTagMultiPayload();
      sub_100029BE4();
      _ConditionalContent<>.init(storage:)();

      return sub_10002D02C(v45, &qword_100114A58, &qword_1000D1DD8);
    }

    else
    {
      sub_100025A9C(v36, type metadata accessor for OpaqueAlarm);
      swift_storeEnumTagMultiPayload();
      sub_100029BE4();
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v72 = v13;
    v78 = v17;
    v92 = v19;
    v47 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v48 = v86;
    v49 = *(v86 + 32);
    v76 = v86 + 32;
    v75 = v49;
    v49(v32, v36, v26);
    v50 = v87;
    v74 = *(v87 + 32);
    v74(v25, v36 + v47, v20);
    v51 = v84;
    (*(v50 + 16))(v84, v25, v20);
    v52 = *(v48 + 16);
    v81 = v26;
    v52(v30, v32, v26);
    v53 = AlarmPresentationState.alarmLabel.getter();
    v79 = v32;
    v80 = v25;
    v77 = v30;
    if (!v54)
    {
      v55 = v72;
      AlarmPresentationState.mode.getter();
      v56 = sub_10000AAEC(v55);
      v58 = v57;
      (*(v82 + 8))(v55, v83);
      v54 = v58;
      v53 = v56;
    }

    v59 = v85;
    v60 = v51;
    v61 = v78;
    *(v78 + 1) = v53;
    *(v61 + 16) = v54;
    *v61 = 0;
    *(v61 + 32) = AlarmAttributes.tintColor.getter();
    v62 = v20;
    AlarmAttributes.metadata.getter();
    v63 = type metadata accessor for MTAlarmCustomContent();
    v64 = *(v63 - 8);
    if ((*(v64 + 48))(v59, 1, v63) == 1)
    {
      sub_10002D02C(v59, &unk_100118100, &qword_1000D1250);
      v65 = 1;
    }

    else
    {
      MTAlarmCustomContent.type.getter();
      (*(v64 + 8))(v59, v63);
      v66 = AlarmType.rawValue.getter();
      v65 = v66 != AlarmType.rawValue.getter();
    }

    v67 = v92;
    v68 = v81;
    *(v61 + 24) = v65;
    v69 = v90;
    v70 = v61 + *(v90 + 32);
    v73 = v62;
    v74(v70, v60, v62);
    v75(v61 + *(v69 + 36), v77, v68);
    sub_1000255CC(v61, v67, type metadata accessor for AlarmKitAlertLabelView);
    sub_100025564(v67, v88, type metadata accessor for AlarmKitAlertLabelView);
    swift_storeEnumTagMultiPayload();
    sub_1000032D4(&qword_100114A70, &qword_1000D1DE0);
    sub_100025228(&qword_100113F68, type metadata accessor for AlarmKitAlertLabelView);
    sub_10002DAD8(&qword_100114A68, &qword_100114A70, &qword_1000D1DE0);
    v71 = v91;
    _ConditionalContent<>.init(storage:)();
    sub_10002CFC4(v71, v95, &qword_100114A58, &qword_1000D1DD8);
    swift_storeEnumTagMultiPayload();
    sub_100029BE4();
    _ConditionalContent<>.init(storage:)();
    sub_10002D02C(v71, &qword_100114A58, &qword_1000D1DD8);
    sub_100025A9C(v67, type metadata accessor for AlarmKitAlertLabelView);
    (*(v87 + 8))(v80, v73);
    return (*(v86 + 8))(v79, v68);
  }
}

uint64_t sub_100006E80()
{
  v1 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v33 - v3;
  v5 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v33 - v7;
  v9 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = type metadata accessor for OpaqueAlarm();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100025564(v0, v17, type metadata accessor for OpaqueAlarm);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100025A9C(v17, type metadata accessor for OpaqueAlarm);
    goto LABEL_3;
  }

  v22 = sub_1000032D4(&unk_100115E00, &qword_1000D1D10);
  (*(v10 + 32))(v13, &v17[*(v22 + 48)], v9);
  AlarmAttributes.metadata.getter();
  v23 = type metadata accessor for MTAlarmCustomContent();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v8, 1, v23) == 1)
  {
    (*(v10 + 8))(v13, v9);
    sub_10002D02C(v8, &unk_100118100, &qword_1000D1250);
LABEL_17:
    v31 = type metadata accessor for AlarmPresentationState();
    return (*(*(v31 - 8) + 8))(v17, v31);
  }

  v27 = MTAlarmCustomContent.type.getter();
  if (v27 == 1)
  {
    (*(v10 + 8))(v13, v9);
    (*(v24 + 8))(v8, v23);
    v30 = type metadata accessor for AlarmPresentationState();
    (*(*(v30 - 8) + 8))(v17, v30);
    v18 = 4;
    goto LABEL_4;
  }

  if (v27)
  {
    (*(v10 + 8))(v13, v9);
    (*(v24 + 8))(v8, v23);
    goto LABEL_17;
  }

  v28 = MTAlarmCustomContent.isSleepAlarm.getter();
  (*(v10 + 8))(v13, v9);
  if (v28 != 2 && (v28 & 1) != 0)
  {
    (*(v24 + 8))(v8, v23);
    v29 = type metadata accessor for AlarmPresentationState();
    (*(*(v29 - 8) + 8))(v17, v29);
    v18 = 2;
    goto LABEL_4;
  }

  (*(v24 + 8))(v8, v23);
  v32 = type metadata accessor for AlarmPresentationState();
  (*(*(v32 - 8) + 8))(v17, v32);
LABEL_3:
  v18 = 1;
LABEL_4:
  v19 = [objc_opt_self() mtURLForSection:v18];
  if (v19)
  {
    v20 = v19;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v25 = type metadata accessor for URL();
  (*(*(v25 - 8) + 56))(v4, v21, 1, v25);
  type metadata accessor for MTSUtilities();
  dispatch thunk of static MTSUtilities.launchClockAppIfPossible(_:)();
  return sub_10002D02C(v4, &unk_100119A20, &qword_1000D1DC0);
}

uint64_t sub_1000073CC@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v40 = sub_1000032D4(&qword_100114A20, &qword_1000D1DA8);
  v2 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v42 = &v34 - v3;
  v37 = sub_1000032D4(&qword_100114A28, &qword_1000D1DB0);
  v4 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v6 = &v34 - v5;
  v41 = sub_1000032D4(&qword_100114A30, &qword_1000D1DB8);
  v7 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v39 = &v34 - v8;
  v38 = type metadata accessor for AlarmKitPlatterControls(0);
  v9 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v12 = *(v35 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v35);
  v15 = &v34 - v14;
  v16 = type metadata accessor for AlarmPresentationState();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OpaqueAlarm();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v1;
  sub_100025564(v1, v24, type metadata accessor for OpaqueAlarm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = *v24;
      if (qword_100113620 != -1)
      {
        swift_once();
      }

      v27 = qword_10011F4F8;
      v44[4] = type metadata accessor for AlarmCoordinator();
      v44[5] = &off_1001023C0;
      v44[1] = v27;

      sub_100005C80(v45);
      v44[0] = v26;
      sub_100025CA8(v44, v6);
      swift_storeEnumTagMultiPayload();
      sub_100025228(&qword_100113F70, type metadata accessor for AlarmKitPlatterControls);
      sub_100029B60();
      v28 = v39;
      _ConditionalContent<>.init(storage:)();
      sub_10002CFC4(v28, v42, &qword_100114A30, &qword_1000D1DB8);
      swift_storeEnumTagMultiPayload();
      sub_100029AAC(&qword_100114A38, &qword_100114A30, &qword_1000D1DB8, sub_100029B60);
      _ConditionalContent<>.init(storage:)();
      sub_10002D02C(v28, &qword_100114A30, &qword_1000D1DB8);
      return sub_100029BB4(v44);
    }

    else
    {
      sub_100025A9C(v24, type metadata accessor for OpaqueAlarm);
      swift_storeEnumTagMultiPayload();
      sub_100029AAC(&qword_100114A38, &qword_100114A30, &qword_1000D1DB8, sub_100029B60);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v30 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v17 + 32))(v20, v24, v16);
    v31 = v35;
    (*(v12 + 32))(v15, &v24[v30], v35);
    (*(v12 + 16))(v11, v15, v31);
    v32 = v38;
    (*(v17 + 16))(&v11[*(v38 + 20)], v20, v16);
    v11[*(v32 + 24)] = *(v36 + *(type metadata accessor for AlarmAlertPlatter(0) + 24));
    sub_100025564(v11, v6, type metadata accessor for AlarmKitPlatterControls);
    swift_storeEnumTagMultiPayload();
    sub_100025228(&qword_100113F70, type metadata accessor for AlarmKitPlatterControls);
    sub_100029B60();
    v33 = v39;
    _ConditionalContent<>.init(storage:)();
    sub_10002CFC4(v33, v42, &qword_100114A30, &qword_1000D1DB8);
    swift_storeEnumTagMultiPayload();
    sub_100029AAC(&qword_100114A38, &qword_100114A30, &qword_1000D1DB8, sub_100029B60);
    _ConditionalContent<>.init(storage:)();
    sub_10002D02C(v33, &qword_100114A30, &qword_1000D1DB8);
    sub_100025A9C(v11, type metadata accessor for AlarmKitPlatterControls);
    (*(v12 + 8))(v15, v35);
    return (*(v17 + 8))(v20, v16);
  }
}

uint64_t sub_100007B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1000053A4(a2);
  sub_100025564(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmAlertPlatter);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1000255CC(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AlarmAlertPlatter);
  v8 = (a2 + *(sub_1000032D4(&qword_100114950, &qword_1000D1D18) + 36));
  *v8 = sub_1000295D0;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;
  sub_100025564(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmAlertPlatter);
  v9 = swift_allocObject();
  sub_1000255CC(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6, type metadata accessor for AlarmAlertPlatter);
  result = sub_1000032D4(&qword_100114958, &qword_1000D1D20);
  v11 = (a2 + *(result + 36));
  *v11 = 0;
  v11[1] = 0;
  v11[2] = sub_100029770;
  v11[3] = v9;
  return result;
}

uint64_t sub_100007CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v62 = sub_1000032D4(&qword_100113FF0, &qword_1000D1298);
  v3 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v5 = &v58 - v4;
  v6 = sub_1000032D4(&qword_100114010, &qword_1000D6310);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = &v58 - v10;
  v11 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v58 - v13;
  v15 = sub_1000032D4(&qword_100114018, &qword_1000D12B0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v58 - v18;
  v20 = sub_1000032D4(&qword_100114020, &qword_1000D12B8);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v61 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v58 - v24;
  if ([*a1 allowsSnooze])
  {
    static Font.Weight.semibold.getter();
    v60 = v15;
    v26 = type metadata accessor for Font.Design();
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
    v59 = static Font.system(size:weight:design:)();
    sub_10002D02C(v14, &qword_100113E08, &qword_1000D10F0);
    v27 = *(a1 + 72);
    v28 = *(a1 + 80);
    sub_100025B1C((a1 + 48), v27);
    v29 = (*(v28 + 8))(v27, v28);
    v31 = *(a1 + 72);
    v30 = *(a1 + 80);
    sub_100025B1C((a1 + 48), v31);
    v32 = (*(v30 + 32))(v31, v30);
    sub_100025CA8(a1, &v73);
    v33 = swift_allocObject();
    v34 = v76;
    *(v33 + 48) = v75;
    *(v33 + 64) = v34;
    *(v33 + 80) = v77;
    *(v33 + 96) = v78;
    v35 = v74;
    *(v33 + 16) = v73;
    *(v33 + 32) = v35;
    width = CGSizeZero.width;
    height = CGSizeZero.height;
    *&v66 = 0x4049000000000000;
    *(&v66 + 1) = v59;
    *&v67 = 8026746;
    *(&v67 + 1) = 0xE300000000000000;
    *&v68 = CGSizeZero.width;
    *(&v68 + 1) = height;
    *&v69 = v29;
    *(&v69 + 1) = v32;
    LOBYTE(v70) = 1;
    *(&v70 + 1) = *v72;
    DWORD1(v70) = *&v72[3];
    *(&v70 + 1) = sub_100025D5C;
    v71 = v33;
    LocalizedStringKey.init(stringLiteral:)();
    sub_100025C54();
    View.accessibilityLabel(_:)();

    v75 = v68;
    v76 = v69;
    v77 = v70;
    v78 = v71;
    v73 = v66;
    v74 = v67;
    sub_100025D8C(&v73);
    sub_10002C7C4(v19, v25, &qword_100114018, &qword_1000D12B0);
    (*(v16 + 56))(v25, 0, 1, v60);
  }

  else
  {
    (*(v16 + 56))(v25, 1, 1, v15);
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  static Font.Weight.semibold.getter();
  v38 = type metadata accessor for Font.Design();
  (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
  v39 = static Font.system(size:weight:design:)();
  sub_10002D02C(v14, &qword_100113E08, &qword_1000D10F0);
  v40 = *(a1 + 72);
  v41 = *(a1 + 80);
  sub_100025B1C((a1 + 48), v40);
  v42 = (*(v41 + 56))(v40, v41);
  v43 = *(a1 + 72);
  v44 = *(a1 + 80);
  sub_100025B1C((a1 + 48), v43);
  v45 = (*(v44 + 80))(v43, v44);
  sub_100025CA8(a1, &v73);
  v46 = swift_allocObject();
  v47 = v76;
  *(v46 + 48) = v75;
  *(v46 + 64) = v47;
  *(v46 + 80) = v77;
  *(v46 + 96) = v78;
  v48 = v74;
  *(v46 + 16) = v73;
  *(v46 + 32) = v48;
  v49 = *(v62 + 36);
  v50 = enum case for BlendMode.plusLighter(_:);
  v51 = type metadata accessor for BlendMode();
  (*(*(v51 - 8) + 104))(&v5[v49], v50, v51);
  *v5 = 0x4049000000000000;
  *(v5 + 1) = v39;
  *(v5 + 2) = 0x6B72616D78;
  *(v5 + 3) = 0xE500000000000000;
  *(v5 + 4) = width;
  *(v5 + 5) = height;
  *(v5 + 6) = v42;
  *(v5 + 7) = v45;
  v5[64] = 1;
  *(v5 + 65) = v73;
  *(v5 + 17) = *(&v73 + 3);
  *(v5 + 9) = sub_100025CE4;
  *(v5 + 10) = v46;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100025BC8();
  v52 = v63;
  View.accessibilityLabel(_:)();

  sub_10002D02C(v5, &qword_100113FF0, &qword_1000D1298);
  v53 = v61;
  sub_10002CFC4(v25, v61, &qword_100114020, &qword_1000D12B8);
  v54 = v64;
  sub_10002CFC4(v52, v64, &qword_100114010, &qword_1000D6310);
  v55 = v65;
  sub_10002CFC4(v53, v65, &qword_100114020, &qword_1000D12B8);
  v56 = sub_1000032D4(&qword_100114028, &qword_1000D12C0);
  sub_10002CFC4(v54, v55 + *(v56 + 48), &qword_100114010, &qword_1000D6310);
  sub_10002D02C(v52, &qword_100114010, &qword_1000D6310);
  sub_10002D02C(v25, &qword_100114020, &qword_1000D12B8);
  sub_10002D02C(v54, &qword_100114010, &qword_1000D6310);
  return sub_10002D02C(v53, &qword_100114020, &qword_1000D12B8);
}

uint64_t sub_100008544(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = sub_100025B1C((a1 + 8), *(a1 + 32));
  v5 = [*a1 alarmIDString];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *v4;
  a2(v6, v8);
}

uint64_t sub_1000085DC@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_1000032D4(&qword_100114008, &unk_1000D12A0);
  return sub_100007CE4(v1, a1 + *(v3 + 44));
}

uint64_t sub_100008630(void *a1)
{
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&qword_100114030, &qword_1000D12C8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  *v10 = static VerticalAlignment.lastTextBaseline.getter();
  *(v10 + 1) = 0x4010000000000000;
  v10[16] = 0;
  v11 = sub_1000032D4(&qword_100114038, &qword_1000D12D0);
  sub_100008844(a1, &v10[*(v11 + 44)]);
  KeyPath = swift_getKeyPath();
  v13 = &v10[*(sub_1000032D4(&qword_100114040, &qword_1000D1308) + 36)];
  *v13 = KeyPath;
  *(v13 + 1) = 1;
  v13[16] = 0;
  static Alignment.bottomLeading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = &v10[*(v7 + 36)];
  v15 = v17[1];
  *v14 = v17[0];
  *(v14 + 1) = v15;
  *(v14 + 2) = v17[2];
  static AccessibilityChildBehavior.combine.getter();
  sub_100025E44();
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v6, v2);
  return sub_10002D02C(v10, &qword_100114030, &qword_1000D12C8);
}

uint64_t sub_100008844@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = type metadata accessor for Text.DateStyle();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v85 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v82 = &v78 - v8;
  v9 = type metadata accessor for Date();
  v80 = *(v9 - 8);
  v81 = v9;
  v10 = *(v80 + 64);
  __chkstk_darwin(v9);
  v84 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1000032D4(&qword_100114078, &qword_1000D1320);
  v12 = *(*(v78 - 8) + 64);
  v13 = __chkstk_darwin(v78);
  v86 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v78 - v15;
  v83 = a1;
  v17 = [a1 displayTitle];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v88 = v18;
  v89 = v20;
  sub_100025FB4();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v25 = v24;
  if (qword_100113680 != -1)
  {
    swift_once();
  }

  v26 = Text.font(_:)();
  v28 = v27;
  v30 = v29;
  sub_100025B0C(v21, v23, v25 & 1);

  v79 = objc_opt_self();
  v31 = [v79 mtOrange];
  Color.init(uiColor:)();
  v32 = Text.foregroundColor(_:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  sub_100025B0C(v26, v28, v30 & 1);

  KeyPath = swift_getKeyPath();
  v40 = &v16[*(sub_1000032D4(&qword_100114080, &qword_1000D1358) + 36)];
  v41 = *(sub_1000032D4(&qword_100114088, &qword_1000D1360) + 28);
  v42 = enum case for Text.TruncationMode.tail(_:);
  v43 = type metadata accessor for Text.TruncationMode();
  (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
  *v40 = swift_getKeyPath();
  *v16 = v32;
  *(v16 + 1) = v34;
  v16[16] = v36 & 1;
  *(v16 + 3) = v38;
  *(v16 + 4) = KeyPath;
  *(v16 + 5) = 0x3FE6666666666666;
  *&v16[*(v78 + 36)] = 256;
  type metadata accessor for Utilities();
  v44 = v83;
  v45 = [v83 hour];
  v46 = [v44 minute];
  v47 = v82;
  sub_10008A33C(v45, v46, v82);
  v48 = v80;
  v49 = v81;
  v50 = *(v80 + 48);
  if (v50(v47, 1, v81) == 1)
  {
    Date.init()();
    if (v50(v47, 1, v49) != 1)
    {
      sub_10002D02C(v47, &qword_100115E40, &unk_1000D1280);
    }
  }

  else
  {
    (*(v48 + 32))(v84, v47, v49);
  }

  static Text.DateStyle.time.getter();
  v51 = Text.init(_:style:)();
  v53 = v52;
  v55 = v54;
  if (qword_100113688 != -1)
  {
    swift_once();
  }

  v56 = Text.font(_:)();
  v58 = v57;
  v60 = v59;
  sub_100025B0C(v51, v53, v55 & 1);

  v61 = [v79 mtOrange];
  Color.init(uiColor:)();
  Color.opacity(_:)();

  v62 = Text.foregroundColor(_:)();
  v64 = v63;
  v66 = v65;
  v68 = v67;

  sub_100025B0C(v56, v58, v60 & 1);

  v69 = swift_getKeyPath();
  v70 = v16;
  v71 = v16;
  v72 = v86;
  sub_10002CFC4(v71, v86, &qword_100114078, &qword_1000D1320);
  v73 = v87;
  sub_10002CFC4(v72, v87, &qword_100114078, &qword_1000D1320);
  v74 = sub_1000032D4(&qword_100114090, &qword_1000D1398);
  v75 = v73 + *(v74 + 48);
  *v75 = v62;
  *(v75 + 8) = v64;
  *(v75 + 16) = v66 & 1;
  *(v75 + 24) = v68;
  *(v75 + 32) = v69;
  *(v75 + 40) = xmmword_1000D08A0;
  v76 = v73 + *(v74 + 64);
  *v76 = 0x4014000000000000;
  *(v76 + 8) = 0;
  sub_100025AFC(v62, v64, v66 & 1);

  sub_10002D02C(v70, &qword_100114078, &qword_1000D1320);
  sub_100025B0C(v62, v64, v66 & 1);

  return sub_10002D02C(v72, &qword_100114078, &qword_1000D1320);
}

uint64_t sub_100008F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a4;
  v67 = a5;
  v8 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v58 - v10;
  v12 = sub_1000032D4(&qword_100113E10, &qword_1000D10F8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v58 - v14;
  v16 = sub_1000032D4(&qword_100113E18, &qword_1000D1100);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v66 = &v58 - v18;
  v19 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v65 = &v58 - v22;
  v63 = sub_1000032D4(&qword_100113E20, &qword_1000D1108);
  v23 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v25 = &v58 - v24;
  v26 = sub_1000032D4(&qword_100113E28, &qword_1000D1110);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26);
  v30 = &v58 - v29;
  v69 = v16;
  v70 = v12;
  v68 = v28;
  if (a3)
  {
    *&v73 = a1;
    *(&v73 + 1) = a2;
    v62 = v30;
    swift_retain_n();
    sub_1000032D4(&qword_100113E30, &qword_1000D1118);
    State.wrappedValue.getter();
    v31 = v20;
    v59 = v20;
    v32 = v72;
    swift_getKeyPath();
    v61 = a3;
    *&v73 = v32;
    v60 = sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
    swift_beginAccess();
    v34 = type metadata accessor for AlarmKitCompressedIcon.TimerAnimationRepresentable(0);
    v35 = v34[5];
    v36 = type metadata accessor for AlarmPresentationState();
    (*(*(v36 - 8) + 16))(&v25[v35], v32 + v33, v36);

    v58 = a1;
    *&v73 = a1;
    *(&v73 + 1) = a2;
    State.wrappedValue.getter();
    v37 = *(v31 + 16);
    v37(&v25[v34[6]], v71 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v19);

    *&v73 = a1;
    *(&v73 + 1) = a2;
    State.wrappedValue.getter();
    v38 = v71;
    swift_getKeyPath();
    *&v73 = v38;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v39 = *(v38 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__activeApertureMode);

    *v25 = v61;
    *&v25[v34[7]] = v39;
    *&v25[v34[8]] = v64;
    *&v73 = v58;
    *(&v73 + 1) = a2;
    State.wrappedValue.getter();
    v40 = v65;
    v37(v65, v71 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v19);

    v41 = AlarmAttributes.tintColor.getter();
    (*(v59 + 8))(v40, v19);
    *&v25[*(sub_1000032D4(&qword_100113E90, &qword_1000D1170) + 36)] = v41;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v42 = &v25[*(v63 + 36)];
    v43 = v74;
    *v42 = v73;
    *(v42 + 1) = v43;
    *(v42 + 2) = v75;
    sub_1000250B4();
    v44 = v62;
    View.accessibilityHidden(_:)();
    sub_10002D02C(v25, &qword_100113E20, &qword_1000D1108);
    v45 = &qword_100113E28;
    v46 = &qword_1000D1110;
    sub_10002CFC4(v44, v66, &qword_100113E28, &qword_1000D1110);
    swift_storeEnumTagMultiPayload();
    sub_100026648(&qword_100113E78, &qword_100113E28, &qword_1000D1110, sub_1000250B4);
    sub_100025290();
    _ConditionalContent<>.init(storage:)();

    v47 = v44;
  }

  else
  {
    v64 = v15;
    v48 = v65;
    v49 = v20;
    if (qword_100113700 != -1)
    {
      swift_once();
    }

    v50 = qword_10011F738;
    *&v73 = a1;
    *(&v73 + 1) = a2;

    sub_1000032D4(&qword_100113E30, &qword_1000D1118);
    State.wrappedValue.getter();
    v51 = v49;
    (*(v49 + 16))(v48, v72 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v19);

    v52 = AlarmAttributes.tintColor.getter();
    (*(v51 + 8))(v48, v19);
    v53 = type metadata accessor for Font.Design();
    (*(*(v53 - 8) + 56))(v11, 1, 1, v53);
    v54 = static Font.system(size:weight:design:)();
    sub_10002D02C(v11, &qword_100113E08, &qword_1000D10F0);
    KeyPath = swift_getKeyPath();
    *&v73 = v50;
    *(&v73 + 1) = v52;
    *&v74 = KeyPath;
    *(&v74 + 1) = v54;
    sub_1000032D4(&qword_100113E38, &qword_1000D1150);
    sub_100024F44();
    v56 = v64;
    View.accessibilityHidden(_:)();

    v45 = &qword_100113E10;
    v46 = &qword_1000D10F8;
    sub_10002CFC4(v56, v66, &qword_100113E10, &qword_1000D10F8);
    swift_storeEnumTagMultiPayload();
    sub_100026648(&qword_100113E78, &qword_100113E28, &qword_1000D1110, sub_1000250B4);
    sub_100025290();
    _ConditionalContent<>.init(storage:)();
    v47 = v56;
  }

  return sub_10002D02C(v47, v45, v46);
}

id sub_1000097B4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = *v2;
  result = sub_1000BE460(0);
  if (result)
  {
    v11 = result;
    v12 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v13 = *(a2 + 20);
    v14 = type metadata accessor for AlarmPresentationState();
    (*(*(v14 - 8) + 16))(v8, &v4[v13], v14);
    v15 = *(a2 + 24);
    v16 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v16 - 8) + 16))(&v8[v12], &v4[v15], v16);
    v17 = type metadata accessor for OpaqueAlarm();
    swift_storeEnumTagMultiPayload();
    (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
    v18 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
    swift_beginAccess();
    sub_10002B138(v8, v9 + v18);
    swift_endAccess();
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000099E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100025228(&qword_1001148C0, type metadata accessor for AlarmKitCompressedIcon.TimerAnimationRepresentable);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100009A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100025228(&qword_1001148C0, type metadata accessor for AlarmKitCompressedIcon.TimerAnimationRepresentable);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100009B10()
{
  sub_100025228(&qword_1001148C0, type metadata accessor for AlarmKitCompressedIcon.TimerAnimationRepresentable);
  UIViewRepresentable.body.getter();
  __break(1u);
}

void sub_100009B74(uint64_t a1@<X8>)
{
  v107 = a1;
  v87 = type metadata accessor for Locale();
  v86 = *(v87 - 8);
  v2 = *(v86 + 64);
  __chkstk_darwin(v87);
  v85 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for AlarmPresentationState.Mode.Paused();
  v89 = *(v90 - 8);
  v4 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for TimerRunningCompressedTrailingView(0);
  v6 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v94 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for AlarmPresentationState.Mode.Countdown();
  v92 = *(v93 - 8);
  v8 = *(v92 + 64);
  __chkstk_darwin(v93);
  v95 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1000032D4(&qword_100113EB8, &qword_1000D11C8);
  v10 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v106 = (&v84 - v11);
  v96 = sub_1000032D4(&qword_100113EC0, &qword_1000D11D0);
  v12 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v14 = (&v84 - v13);
  v105 = sub_1000032D4(&qword_100113EC8, &qword_1000D11D8);
  v15 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v97 = &v84 - v16;
  v103 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v102 = *(v103 - 8);
  v17 = *(v102 + 64);
  __chkstk_darwin(v103);
  v101 = &v84 - v18;
  v19 = type metadata accessor for AlarmPresentationState.Mode();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AlarmPresentationState();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v1;
  v29 = v1[1];
  *&v99 = *v1;
  *&v112 = v99;
  *(&v112 + 1) = v29;
  *(&v99 + 1) = v29;
  v100 = sub_1000032D4(&qword_100113E30, &qword_1000D1118);
  State.wrappedValue.getter();
  v30 = v109;
  swift_getKeyPath();
  *&v112 = v30;
  sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  (*(v25 + 16))(v28, v30 + v31, v24);

  AlarmPresentationState.mode.getter();
  (*(v25 + 8))(v28, v24);
  v32 = *(v20 + 88);
  v108 = v19;
  v33 = v32(v23, v19);
  if (v33 == enum case for AlarmPresentationState.Mode.alert(_:))
  {
    if (qword_100113700 != -1)
    {
      swift_once();
    }

    v34 = qword_10011F738;
    v112 = v99;

    State.wrappedValue.getter();
    v35 = v102;
    v36 = v101;
    v37 = v103;
    (*(v102 + 16))(v101, v109 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v103);

    v38 = AlarmAttributes.tintColor.getter();
    (*(v35 + 8))(v36, v37);
    *v14 = v34;
    v14[1] = v38;
    swift_storeEnumTagMultiPayload();

    sub_1000032D4(&qword_100113E50, &qword_1000D1158);
    sub_100024FFC();
    sub_100025228(&qword_100113EE8, type metadata accessor for TimerRunningCompressedTrailingView);
    v39 = v97;
    _ConditionalContent<>.init(storage:)();
    sub_10002CFC4(v39, v106, &qword_100113EC8, &qword_1000D11D8);
    swift_storeEnumTagMultiPayload();
    sub_1000032D4(&qword_100113ED8, &qword_1000D11E0);
    sub_1000253D4();
    sub_100025490();
    _ConditionalContent<>.init(storage:)();

    sub_10002D02C(v39, &qword_100113EC8, &qword_1000D11D8);
    goto LABEL_5;
  }

  if (v33 == enum case for AlarmPresentationState.Mode.countdown(_:))
  {
    (*(v20 + 96))(v23, v108);
    v40 = v92;
    v41 = v23;
    v42 = v93;
    (*(v92 + 32))(v95, v41, v93);
    v43 = v98;
    v44 = v94;
    v45 = &v94[*(v98 + 20)];
    AlarmPresentationState.Mode.Countdown.fireDate.getter();
    v112 = v99;
    State.wrappedValue.getter();
    v46 = v102;
    v47 = v101;
    v48 = v103;
    (*(v102 + 16))(v101, v109 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v103);

    v49 = AlarmAttributes.tintColor.getter();
    (*(v46 + 8))(v47, v48);
    v50 = v91;
    Strong = swift_unknownObjectWeakLoadStrong();
    v52 = v50[3];
    *(v44 + *(v43 + 24)) = v49;
    v53 = swift_allocObject();
    *(v53 + 16) = Strong;
    *(v53 + 24) = v52;
    *v44 = sub_10002555C;
    *(v44 + 8) = v53;
    *(v44 + 16) = 0;
    sub_100025564(v44, v14, type metadata accessor for TimerRunningCompressedTrailingView);
    swift_storeEnumTagMultiPayload();
    sub_1000032D4(&qword_100113E50, &qword_1000D1158);
    sub_100024FFC();
    sub_100025228(&qword_100113EE8, type metadata accessor for TimerRunningCompressedTrailingView);
    v54 = v97;
    _ConditionalContent<>.init(storage:)();
    sub_10002CFC4(v54, v106, &qword_100113EC8, &qword_1000D11D8);
    swift_storeEnumTagMultiPayload();
    sub_1000032D4(&qword_100113ED8, &qword_1000D11E0);
    sub_1000253D4();
    sub_100025490();
    _ConditionalContent<>.init(storage:)();
    sub_10002D02C(v54, &qword_100113EC8, &qword_1000D11D8);
    sub_100025A9C(v44, type metadata accessor for TimerRunningCompressedTrailingView);
    (*(v40 + 8))(v95, v42);
    return;
  }

  if (v33 != enum case for AlarmPresentationState.Mode.paused(_:))
  {
    v109 = 0u;
    v110 = 0u;
    v111 = 1;
    sub_100025380();
    _ConditionalContent<>.init(storage:)();
    v71 = v114;
    v72 = v113;
    v73 = v106;
    *v106 = v112;
    v73[1] = v72;
    *(v73 + 32) = v71;
    swift_storeEnumTagMultiPayload();
    sub_1000032D4(&qword_100113ED8, &qword_1000D11E0);
    sub_1000253D4();
    sub_100025490();
    _ConditionalContent<>.init(storage:)();
LABEL_5:
    (*(v20 + 8))(v23, v108);
    return;
  }

  (*(v20 + 96))(v23, v108);
  v55 = v89;
  v56 = v88;
  v57 = v90;
  (*(v89 + 32))(v88, v23, v90);
  AlarmPresentationState.Mode.Paused.totalCountdownDuration.getter();
  v59 = v58;
  AlarmPresentationState.Mode.Paused.previouslyElapsedDuration.getter();
  v61 = sub_10002551C(v59 - v60);
  if (v61 > 1.0)
  {
    v62 = v61;
  }

  else
  {
    v62 = 1.0;
  }

  v63 = v85;
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v65 = (*(v86 + 8))(v63, v87);
  *v65.i64 = v62;
  v66 = sub_1000022A8(0, 0, 1, 1, 0, 0, 0, isa, v65);

  if (v66)
  {
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    if (v62 <= 36000.0)
    {
      if (v62 <= 600.0)
      {
        goto LABEL_24;
      }

      if (qword_100113648 != -1)
      {
        swift_once();
      }

      v70 = [qword_10011F520 stringFromTimeInterval:v62];
      if (!v70)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (qword_100113640 != -1)
      {
        swift_once();
      }

      v70 = [qword_10011F518 stringFromTimeInterval:v62];
      if (!v70)
      {
        goto LABEL_24;
      }
    }

    v74 = v70;
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v69 = v76;
LABEL_24:
    v112 = v99;
    State.wrappedValue.getter();
    v77 = v102;
    v78 = v101;
    v79 = v103;
    (*(v102 + 16))(v101, v109 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v103);

    v80 = AlarmAttributes.tintColor.getter();
    (*(v77 + 8))(v78, v79);
    *&v109 = v62;
    *(&v109 + 1) = v67;
    *&v110 = v69;
    *(&v110 + 1) = v80;
    v111 = 0;
    sub_100025380();

    _ConditionalContent<>.init(storage:)();
    v81 = v114;
    v82 = v113;
    v83 = v106;
    *v106 = v112;
    v83[1] = v82;
    *(v83 + 32) = v81;
    swift_storeEnumTagMultiPayload();
    sub_1000032D4(&qword_100113ED8, &qword_1000D11E0);
    sub_1000253D4();
    sub_100025490();
    _ConditionalContent<>.init(storage:)();

    (*(v55 + 8))(v56, v57);
    return;
  }

  __break(1u);
}

uint64_t sub_10000AAEC(uint64_t a1)
{
  v68 = a1;
  v1 = sub_1000032D4(&qword_100113FB8, &qword_1000D1258);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v58 = &v56 - v3;
  v4 = sub_1000032D4(&unk_100115DF0, &qword_1000D1260);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v60 = &v56 - v6;
  v7 = sub_1000032D4(&qword_100113FC0, &qword_1000D1268);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v56 - v11;
  v12 = type metadata accessor for LocalizedStringResource();
  v63 = *(v12 - 8);
  v64 = v12;
  v13 = *(v63 + 64);
  v14 = __chkstk_darwin(v12);
  v57 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v61 = &v56 - v17;
  __chkstk_darwin(v16);
  v18 = type metadata accessor for AlarmPresentation.Alert();
  v65 = *(v18 - 8);
  v66 = v18;
  v19 = *(v65 + 64);
  __chkstk_darwin(v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AlarmPresentation();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v56 - v29;
  __chkstk_darwin(v28);
  v32 = &v56 - v31;
  v33 = type metadata accessor for AlarmPresentationState.Mode();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v56 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v37, v68, v33);
  v67 = v34;
  v68 = v33;
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for AlarmPresentationState.Mode.alert(_:))
  {
    sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    AlarmAttributes.presentation.getter();
    AlarmPresentation.alert.getter();
    (*(v23 + 8))(v32, v22);
    AlarmPresentation.Alert.title.getter();
    (*(v65 + 8))(v21, v66);
LABEL_14:
    v51 = String.init(localized:)();
    goto LABEL_15;
  }

  if (v38 == enum case for AlarmPresentationState.Mode.countdown(_:))
  {
    sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    AlarmAttributes.presentation.getter();
    v39 = v60;
    AlarmPresentation.countdown.getter();
    (*(v23 + 8))(v30, v22);
    v40 = type metadata accessor for AlarmPresentation.Countdown();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v39, 1, v40) != 1)
    {
      v48 = v62;
      AlarmPresentation.Countdown.title.getter();
      (*(v41 + 8))(v39, v40);
      v50 = v63;
      v49 = v64;
      (*(v63 + 56))(v48, 0, 1, v64);
      (*(v50 + 32))(v61, v48, v49);
      goto LABEL_14;
    }

    sub_10002D02C(v39, &unk_100115DF0, &qword_1000D1260);
    v43 = v62;
    v42 = v63;
    v44 = v64;
    (*(v63 + 56))(v62, 1, 1, v64);
LABEL_9:
    LocalizedStringResource.init(stringLiteral:)();
    if ((*(v42 + 48))(v43, 1, v44) != 1)
    {
      sub_10002D02C(v43, &qword_100113FC0, &qword_1000D1268);
    }

    goto LABEL_14;
  }

  if (v38 == enum case for AlarmPresentationState.Mode.paused(_:))
  {
    sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    AlarmAttributes.presentation.getter();
    v45 = v58;
    AlarmPresentation.paused.getter();
    (*(v23 + 8))(v27, v22);
    v46 = type metadata accessor for AlarmPresentation.Paused();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v45, 1, v46) != 1)
    {
      v52 = v59;
      AlarmPresentation.Paused.title.getter();
      (*(v47 + 8))(v45, v46);
      v54 = v63;
      v53 = v64;
      (*(v63 + 56))(v52, 0, 1, v64);
      (*(v54 + 32))(v57, v52, v53);
      goto LABEL_14;
    }

    sub_10002D02C(v45, &qword_100113FB8, &qword_1000D1258);
    v42 = v63;
    v44 = v64;
    v43 = v59;
    (*(v63 + 56))(v59, 1, 1, v64);
    goto LABEL_9;
  }

  v51 = 0;
LABEL_15:
  (*(v67 + 8))(v37, v68);
  return v51;
}

uint64_t sub_10000B2C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000032D4(&qword_1001148D0, &qword_1000D1C90);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  if (*(a1 + 24) == 1)
  {
    v11 = *(a1 + 32);
    type metadata accessor for AlarmAlertAnimation();
    v12 = swift_allocObject();
    swift_retain_n();

    v13 = 0x4047800000000000;
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v12 = 0;
  }

  *v10 = static VerticalAlignment.firstTextBaseline.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v14 = sub_1000032D4(&qword_1001148D8, &qword_1000D1C98);
  sub_10000B4A0(a1, &v10[*(v14 + 44)]);
  sub_10002CFC4(v10, v8, &qword_1001148D0, &qword_1000D1C90);
  *a2 = v11;
  a2[1] = v13;
  a2[2] = v12;
  v15 = sub_1000032D4(&qword_1001148E0, &qword_1000D1CA0);
  sub_10002CFC4(v8, a2 + *(v15 + 48), &qword_1001148D0, &qword_1000D1C90);
  sub_100029410(v11);
  sub_100029450(v11);
  sub_10002D02C(v10, &qword_1001148D0, &qword_1000D1C90);
  sub_10002D02C(v8, &qword_1001148D0, &qword_1000D1C90);
  return sub_100029450(v11);
}

uint64_t sub_10000B4A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v95 = type metadata accessor for AlarmKitAlertSecondaryLabel(0);
  v3 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v99 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1000032D4(&qword_1001148E8, &qword_1000D1CA8);
  v5 = *(*(v97 - 8) + 64);
  v6 = __chkstk_darwin(v97);
  v101 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v98 = &v86 - v9;
  __chkstk_darwin(v8);
  v100 = &v86 - v10;
  v86 = sub_1000032D4(&qword_1001148F0, &qword_1000D1CB0);
  v11 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v13 = &v86 - v12;
  v87 = sub_1000032D4(&qword_1001148F8, &qword_1000D1CB8);
  v14 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v90 = &v86 - v15;
  v89 = sub_1000032D4(&qword_100114900, &qword_1000D1CC0);
  v16 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v92 = &v86 - v17;
  v91 = sub_1000032D4(&qword_100114908, &qword_1000D1CC8);
  v18 = *(*(v91 - 8) + 64);
  v19 = __chkstk_darwin(v91);
  v94 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v88 = &v86 - v22;
  __chkstk_darwin(v21);
  v93 = &v86 - v23;
  v24 = a1[2];
  *&v103 = a1[1];
  *(&v103 + 1) = v24;
  sub_100025FB4();

  v25 = Text.init<A>(_:)();
  v27 = v26;
  v29 = v28;
  v30 = *a1;
  v96 = a1;
  if (!v30)
  {
    if (*(a1 + 24) == 1)
    {
      if (qword_100113680 == -1)
      {
        goto LABEL_6;
      }
    }

    else if (qword_100113698 == -1)
    {
LABEL_6:

      goto LABEL_7;
    }

    swift_once();
    goto LABEL_6;
  }

LABEL_7:

  v31 = Text.font(_:)();
  v33 = v32;
  v35 = v34;
  sub_100025B0C(v25, v27, v29 & 1);

  v36 = v96;
  v37 = v96[4];
  v38 = Text.foregroundColor(_:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_100025B0C(v31, v33, v35 & 1);

  v45 = &v13[*(v86 + 36)];
  v46 = *(sub_1000032D4(&qword_100114088, &qword_1000D1360) + 28);
  v47 = enum case for Text.TruncationMode.tail(_:);
  v48 = type metadata accessor for Text.TruncationMode();
  (*(*(v48 - 8) + 104))(v45 + v46, v47, v48);
  *v45 = swift_getKeyPath();
  *v13 = v38;
  *(v13 + 1) = v40;
  v13[16] = v42 & 1;
  *(v13 + 3) = v44;
  KeyPath = swift_getKeyPath();
  v50 = v13;
  v51 = v90;
  sub_10002C7C4(v50, v90, &qword_1001148F0, &qword_1000D1CB0);
  v52 = v51 + *(v87 + 36);
  *v52 = KeyPath;
  *(v52 + 8) = 1;
  *(v52 + 16) = 0;
  v53 = swift_getKeyPath();
  v54 = v51;
  v55 = v92;
  sub_10002C7C4(v54, v92, &qword_1001148F8, &qword_1000D1CB8);
  v56 = (v55 + *(v89 + 36));
  *v56 = v53;
  v56[1] = 0x3FE6666666666666;
  LOBYTE(v53) = static Edge.Set.leading.getter();
  *(v36 + 24);
  EdgeInsets.init(_all:)();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v88;
  sub_10002C7C4(v55, v88, &qword_100114900, &qword_1000D1CC0);
  v66 = v65 + *(v91 + 36);
  *v66 = v53;
  *(v66 + 8) = v58;
  *(v66 + 16) = v60;
  *(v66 + 24) = v62;
  *(v66 + 32) = v64;
  *(v66 + 40) = 0;
  v67 = v93;
  sub_10002C7C4(v65, v93, &qword_100114908, &qword_1000D1CC8);
  v68 = type metadata accessor for AlarmKitAlertLabelView(0);
  v69 = *(v68 + 32);
  v70 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v71 = v99;
  (*(*(v70 - 8) + 16))(v99, v36 + v69, v70);
  v72 = *(v68 + 36);
  v73 = *(v95 + 20);
  v74 = type metadata accessor for AlarmPresentationState();
  (*(*(v74 - 8) + 16))(v71 + v73, v36 + v72, v74);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v75 = v98;
  sub_1000255CC(v71, v98, type metadata accessor for AlarmKitAlertSecondaryLabel);
  v76 = (v75 + *(v97 + 36));
  v77 = v108;
  v76[4] = v107;
  v76[5] = v77;
  v76[6] = v109;
  v78 = v104;
  *v76 = v103;
  v76[1] = v78;
  v79 = v106;
  v76[2] = v105;
  v76[3] = v79;
  v80 = v100;
  sub_10002C7C4(v75, v100, &qword_1001148E8, &qword_1000D1CA8);
  v81 = v94;
  sub_10002CFC4(v67, v94, &qword_100114908, &qword_1000D1CC8);
  v82 = v101;
  sub_10002CFC4(v80, v101, &qword_1001148E8, &qword_1000D1CA8);
  v83 = v102;
  sub_10002CFC4(v81, v102, &qword_100114908, &qword_1000D1CC8);
  v84 = sub_1000032D4(&qword_100114910, &qword_1000D1CD0);
  sub_10002CFC4(v82, v83 + *(v84 + 48), &qword_1001148E8, &qword_1000D1CA8);
  sub_10002D02C(v80, &qword_1001148E8, &qword_1000D1CA8);
  sub_10002D02C(v67, &qword_100114908, &qword_1000D1CC8);
  sub_10002D02C(v82, &qword_1001148E8, &qword_1000D1CA8);
  return sub_10002D02C(v81, &qword_100114908, &qword_1000D1CC8);
}

uint64_t sub_10000BD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v71 = type metadata accessor for AlarmKitCountdownLabelView(0);
  v5 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v73 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1000032D4(&qword_100113EF8, &qword_1000D11E8);
  v7 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v75 = &v66 - v8;
  v74 = sub_1000032D4(&qword_100113F00, &qword_1000D11F0);
  v9 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v79 = &v66 - v10;
  v83 = sub_1000032D4(&qword_100113F08, &qword_1000D11F8);
  v82 = *(v83 - 8);
  v11 = *(v82 + 64);
  v12 = __chkstk_darwin(v83);
  v77 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v76 = &v66 - v14;
  v15 = type metadata accessor for AlarmPresentationState.Mode();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AlarmPresentationState();
  v21 = *(v20 - 8);
  v22 = v21[8];
  __chkstk_darwin(v20);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  *&v90 = a1;
  *(&v90 + 1) = a2;
  v78 = a2;
  v25 = sub_1000032D4(&qword_100113E30, &qword_1000D1118);
  State.wrappedValue.getter();
  v26 = v89;
  swift_getKeyPath();
  *&v90 = v26;
  v80 = sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  v70 = v21[2];
  v70(v24, v26 + v27, v20);

  AlarmPresentationState.mode.getter();
  v28 = v21[1];
  v28(v24, v20);
  LOBYTE(v27) = AlarmPresentationState.Mode.isAlerting.getter();
  (*(v16 + 8))(v19, v15);
  v29 = 1;
  if ((v27 & 1) == 0)
  {
    *&v90 = v81;
    v30 = v81;
    *(&v90 + 1) = v78;
    v31 = v25;
    v32 = v78;
    v67 = v20;
    v68 = v31;
    State.wrappedValue.getter();
    v33 = v88;
    v34 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes;
    v35 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    v36 = v33 + v34;
    v37 = v73;
    (*(*(v35 - 8) + 16))(v73, v36, v35);

    *&v90 = v30;
    *(&v90 + 1) = v32;
    State.wrappedValue.getter();
    v38 = v88;
    swift_getKeyPath();
    v69 = v28;
    *&v90 = v38;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v39 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
    swift_beginAccess();
    v40 = v67;
    v41 = v70;
    v70(&v37[*(v71 + 20)], v38 + v39, v67);

    static Alignment.trailing.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v42 = v37;
    v43 = v75;
    sub_1000255CC(v42, v75, type metadata accessor for AlarmKitCountdownLabelView);
    v44 = (v43 + *(v72 + 36));
    v45 = v95;
    v44[4] = v94;
    v44[5] = v45;
    v44[6] = v96;
    v46 = v91;
    *v44 = v90;
    v44[1] = v46;
    v47 = v93;
    v44[2] = v92;
    v44[3] = v47;
    LOBYTE(v39) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = v43;
    v57 = v79;
    sub_10002C7C4(v56, v79, &qword_100113EF8, &qword_1000D11E8);
    v58 = v57 + *(v74 + 36);
    *v58 = v39;
    *(v58 + 8) = v49;
    *(v58 + 16) = v51;
    *(v58 + 24) = v53;
    *(v58 + 32) = v55;
    *(v58 + 40) = 0;
    v85 = v81;
    v86 = v32;
    State.wrappedValue.getter();
    v59 = v87;
    swift_getKeyPath();
    v85 = v59;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v60 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
    swift_beginAccess();
    v41(v24, v59 + v60, v40);

    v61 = v77;
    v62 = &v77[*(v83 + 52)];
    AlarmPresentationState.mode.getter();
    v69(v24, v40);
    sub_10002C7C4(v57, v61, &qword_100113F00, &qword_1000D11F0);
    v63 = v61;
    v64 = v76;
    sub_10002C7C4(v63, v76, &qword_100113F08, &qword_1000D11F8);
    sub_10002C7C4(v64, v84, &qword_100113F08, &qword_1000D11F8);
    v29 = 0;
  }

  return (*(v82 + 56))(v84, v29, 1, v83);
}

__n128 sub_10000C608@<Q0>(uint64_t a1@<X8>)
{
  sub_10000C754(v1, v15);
  v13 = v15[1];
  v14 = v15[0];
  v3 = v16;
  v4 = v17;
  if (qword_100113688 != -1)
  {
    swift_once();
  }

  v5 = qword_10011F6C0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v15[0]) = v4;

  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  AlarmAttributes.tintColor.getter();
  v7 = Color.opacity(_:)();

  v8 = swift_getKeyPath();
  v9 = v15[0];
  v10 = swift_getKeyPath();
  v18 = 0;
  v11 = swift_getKeyPath();
  result = v14;
  *a1 = v14;
  *(a1 + 16) = v13;
  *(a1 + 32) = v3;
  *(a1 + 33) = v9;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v5;
  *(a1 + 56) = v8;
  *(a1 + 64) = v7;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 80) = v10;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = v11;
  *(a1 + 112) = 0x3FE6666666666666;
  return result;
}

uint64_t sub_10000C754@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v74 = a2;
  v3 = type metadata accessor for Text.DateStyle();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Alarm.Schedule.Relative.Time();
  v71 = *(v73 - 8);
  v6 = *(v71 + 64);
  __chkstk_darwin(v73);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v68 = &v65 - v11;
  v12 = type metadata accessor for Date();
  v65 = *(v12 - 8);
  v66 = v12;
  v13 = *(v65 + 64);
  __chkstk_darwin(v12);
  v67 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AlarmPresentationState.Mode();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for AlarmPresentationState.Mode.Alert();
  v70 = *(v72 - 8);
  v20 = *(v70 + 64);
  __chkstk_darwin(v72);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v65 - v25;
  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  AlarmAttributes.metadata.getter();
  v27 = type metadata accessor for MTAlarmCustomContent();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_10002D02C(v26, &unk_100118100, &qword_1000D1250);
    goto LABEL_11;
  }

  v29 = MTAlarmCustomContent.type.getter();
  (*(v28 + 8))(v26, v27);
  if (v29 == 1)
  {
    v75 = 0u;
    v76 = 0u;
    LOBYTE(v77) = 1;
    sub_1000032D4(&qword_1001152B0, &qword_1000D2428);
    sub_10002D4C4();
    _ConditionalContent<>.init(storage:)();
    v75 = v78;
    v76 = v79;
    v77 = v80;
LABEL_17:
    sub_1000032D4(&qword_100115298, &qword_1000D2420);
    sub_10002D438();
    result = _ConditionalContent<>.init(storage:)();
LABEL_18:
    v50 = v79;
    v51 = v80;
    v52 = v81;
    v53 = v74;
    *v74 = v78;
    v53[1] = v50;
    *(v53 + 32) = v51;
    *(v53 + 33) = v52;
    return result;
  }

  if (v29)
  {
LABEL_11:
    v42 = a1 + *(type metadata accessor for AlarmKitAlertSecondaryLabel(0) + 20);
    v43 = AlarmPresentationState.localizedAppName.getter();
    if (v44)
    {
      v45 = v43;
    }

    else
    {
      v45 = 0;
    }

    v46 = 0xE000000000000000;
    if (v44)
    {
      v46 = v44;
    }

    *&v78 = v45;
    *(&v78 + 1) = v46;
    sub_100025FB4();
    *&v75 = Text.init<A>(_:)();
    *(&v75 + 1) = v48;
    *&v76 = v47 & 1;
    *(&v76 + 1) = v49;
    v77 = 256;
    goto LABEL_17;
  }

  v30 = a1 + *(type metadata accessor for AlarmKitAlertSecondaryLabel(0) + 20);
  AlarmPresentationState.mode.getter();
  if ((*(v16 + 88))(v19, v15) != enum case for AlarmPresentationState.Mode.alert(_:))
  {
    (*(v16 + 8))(v19, v15);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
LABEL_23:
    *&v75 = v54;
    *(&v75 + 1) = v55;
    *&v76 = v56;
    *(&v76 + 1) = v57;
    LOBYTE(v77) = 0;
    sub_10002CF3C(v54, v55, v56, v57);
    sub_1000032D4(&qword_1001152B0, &qword_1000D2428);
    sub_10002D4C4();
    _ConditionalContent<>.init(storage:)();
    v62 = v78;
    v63 = v79;
    v64 = v80;
    v75 = v78;
    v76 = v79;
    v77 = v80;
    sub_10002D540(v78, *(&v78 + 1), v79, *(&v79 + 1), v80);
    sub_1000032D4(&qword_100115298, &qword_1000D2420);
    sub_10002D438();
    _ConditionalContent<>.init(storage:)();
    sub_10002CF80(v54, v55, v56, v57);
    sub_10002D54C(v62, *(&v62 + 1), v63, *(&v63 + 1), v64);
    result = sub_10002CF80(v54, v55, v56, v57);
    goto LABEL_18;
  }

  (*(v16 + 96))(v19, v15);
  v31 = v70;
  v32 = v72;
  (*(v70 + 32))(v22, v19, v72);
  type metadata accessor for Utilities();
  AlarmPresentationState.Mode.Alert.time.getter();
  v33 = Alarm.Schedule.Relative.Time.hour.getter();
  v34 = *(v71 + 8);
  v35 = v73;
  result = v34(v8, v73);
  if (v33 < 0)
  {
    __break(1u);
  }

  else
  {
    AlarmPresentationState.Mode.Alert.time.getter();
    v37 = Alarm.Schedule.Relative.Time.minute.getter();
    result = v34(v8, v35);
    if ((v37 & 0x8000000000000000) == 0)
    {
      v38 = v68;
      sub_10008A33C(v33, v37, v68);
      v40 = v65;
      v39 = v66;
      v41 = *(v65 + 48);
      if (v41(v38, 1, v66) == 1)
      {
        Date.init()();
        if (v41(v38, 1, v39) != 1)
        {
          sub_10002D02C(v38, &qword_100115E40, &unk_1000D1280);
        }
      }

      else
      {
        (*(v40 + 32))(v67, v38, v39);
      }

      static Text.DateStyle.time.getter();
      v54 = Text.init(_:style:)();
      v55 = v58;
      v60 = v59;
      v57 = v61;
      (*(v31 + 8))(v22, v32);
      v56 = v60 & 1;
      sub_100025AFC(v54, v55, v56);

      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000CFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v43 = a2;
  v46 = a4;
  v6 = sub_1000032D4(&qword_100113F10, &qword_1000D1200);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v43 - v8;
  v45 = sub_1000032D4(&qword_100113F18, &qword_1000D1208);
  v10 = *(*(v45 - 8) + 64);
  v11 = __chkstk_darwin(v45);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v44 = sub_1000032D4(&qword_100113F20, &qword_1000D1210);
  v16 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v18 = &v43 - v17;
  v19 = sub_1000032D4(&qword_100113F28, &qword_1000D1218);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v43 - v21;
  v23 = sub_1000032D4(&qword_100113F30, &qword_1000D1220);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v43 - v28;
  v30 = a3 & 0xFFFFFF00;
  if (a3)
  {
    sub_10000DF7C(a1, v43, v30 | 1, v9);
    static Alignment.trailing.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10002C7C4(v9, v13, &qword_100113F10, &qword_1000D1200);
    v31 = &v13[*(v45 + 36)];
    v32 = v52;
    *(v31 + 4) = v51;
    *(v31 + 5) = v32;
    *(v31 + 6) = v53;
    v33 = v48;
    *v31 = v47;
    *(v31 + 1) = v33;
    v34 = v50;
    *(v31 + 2) = v49;
    *(v31 + 3) = v34;
    sub_10002C7C4(v13, v15, &qword_100113F18, &qword_1000D1208);
    sub_10002CFC4(v15, v18, &qword_100113F18, &qword_1000D1208);
    swift_storeEnumTagMultiPayload();
    sub_100025634();
    sub_1000258A4();
    _ConditionalContent<>.init(storage:)();
    v35 = v15;
    v36 = &qword_100113F18;
    v37 = &qword_1000D1208;
  }

  else
  {
    sub_10000D41C(a1, v43, v30, v22);
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10002C7C4(v22, v27, &qword_100113F28, &qword_1000D1218);
    v38 = &v27[*(v23 + 36)];
    v39 = v52;
    *(v38 + 4) = v51;
    *(v38 + 5) = v39;
    *(v38 + 6) = v53;
    v40 = v48;
    *v38 = v47;
    *(v38 + 1) = v40;
    v41 = v50;
    *(v38 + 2) = v49;
    *(v38 + 3) = v41;
    sub_10002C7C4(v27, v29, &qword_100113F30, &qword_1000D1220);
    sub_10002CFC4(v29, v18, &qword_100113F30, &qword_1000D1220);
    swift_storeEnumTagMultiPayload();
    sub_100025634();
    sub_1000258A4();
    _ConditionalContent<>.init(storage:)();
    v35 = v29;
    v36 = &qword_100113F30;
    v37 = &qword_1000D1220;
  }

  return sub_10002D02C(v35, v36, v37);
}

uint64_t sub_10000D41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v75 = a3;
  v93 = a4;
  v94 = type metadata accessor for AlarmKitPlatterControls(0);
  v6 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v76 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1000032D4(&qword_100113FB0, &qword_1000D1248);
  v8 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v92 = &v71 - v9;
  v10 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v79 = &v71 - v12;
  v13 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v88 = *(v13 - 8);
  v89 = v13;
  v14 = *(v88 + 64);
  __chkstk_darwin(v13);
  v83 = &v71 - v15;
  v80 = type metadata accessor for AlarmKitAlertLabelView(0);
  v16 = *(*(v80 - 8) + 64);
  v17 = __chkstk_darwin(v80);
  v87 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v81 = &v71 - v19;
  v90 = sub_1000032D4(&qword_100113F60, &qword_1000D1230);
  v20 = *(*(v90 - 8) + 64);
  v21 = __chkstk_darwin(v90);
  v78 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v82 = &v71 - v23;
  v24 = type metadata accessor for AlarmPresentationState.Mode();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for AlarmPresentationState();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v86 = &v71 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v71 - v34;
  v84 = a1;
  v85 = a2;
  v98 = a1;
  v99 = a2;
  v74 = sub_1000032D4(&qword_100113E30, &qword_1000D1118);
  State.wrappedValue.getter();
  v36 = v95;
  swift_getKeyPath();
  v98 = v36;
  v73 = sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  v72 = *(v30 + 16);
  v72(v35, v36 + v37, v29);

  AlarmPresentationState.mode.getter();
  v77 = v30;
  (*(v30 + 8))(v35, v29);
  LOBYTE(v37) = AlarmPresentationState.Mode.isAlerting.getter();
  v38 = *(v25 + 8);
  v71 = v24;
  v38(v28, v24);
  if (v37)
  {
    v40 = v84;
    v39 = v85;
    v95 = v84;
    v96 = v85;
    State.wrappedValue.getter();
    (*(v88 + 16))(v83, v97 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v89);

    v95 = v40;
    v96 = v39;
    State.wrappedValue.getter();
    v41 = v97;
    swift_getKeyPath();
    v85 = v29;
    v95 = v41;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
    swift_beginAccess();
    v72(v86, v41 + v42, v85);

    v43 = AlarmPresentationState.alarmLabel.getter();
    if (v44)
    {
      v45 = v92;
      v46 = v90;
      v47 = v83;
    }

    else
    {
      AlarmPresentationState.mode.getter();
      v47 = v83;
      v50 = sub_10000AAEC(v28);
      v52 = v51;
      v38(v28, v71);
      v44 = v52;
      v43 = v50;
      v45 = v92;
      v46 = v90;
    }

    v53 = v87;
    *(v87 + 1) = v43;
    v53[2] = v44;
    *v53 = 0;
    v54 = v89;
    v53[4] = AlarmAttributes.tintColor.getter();
    v55 = v79;
    AlarmAttributes.metadata.getter();
    v56 = type metadata accessor for MTAlarmCustomContent();
    v57 = v47;
    v58 = *(v56 - 8);
    if ((*(v58 + 48))(v55, 1, v56) == 1)
    {
      sub_10002D02C(v55, &unk_100118100, &qword_1000D1250);
      v59 = 1;
    }

    else
    {
      v60 = v55;
      MTAlarmCustomContent.type.getter();
      v61 = v57;
      (*(v58 + 8))(v60, v56);
      v62 = AlarmType.rawValue.getter();
      v63 = v62 == AlarmType.rawValue.getter();
      v57 = v61;
      v59 = !v63;
    }

    v65 = v87;
    v64 = v88;
    v87[24] = v59;
    v66 = v80;
    (*(v64 + 32))(&v65[*(v80 + 32)], v57, v54);
    (*(v77 + 32))(&v65[*(v66 + 36)], v86, v85);
    v67 = v65;
    v68 = v81;
    sub_1000255CC(v67, v81, type metadata accessor for AlarmKitAlertLabelView);
    v69 = v78;
    sub_1000255CC(v68, v78, type metadata accessor for AlarmKitAlertLabelView);
    *(v69 + *(v46 + 36)) = 0;
    v70 = v82;
    sub_10002C7C4(v69, v82, &qword_100113F60, &qword_1000D1230);
    sub_10002CFC4(v70, v45, &qword_100113F60, &qword_1000D1230);
    swift_storeEnumTagMultiPayload();
    sub_1000257A8();
    sub_100025228(&qword_100113F70, type metadata accessor for AlarmKitPlatterControls);
    _ConditionalContent<>.init(storage:)();
    return sub_10002D02C(v70, &qword_100113F60, &qword_1000D1230);
  }

  else
  {
    v48 = v76;
    sub_10000DDAC(v75 & 0xFFFFFF01, v76);
    sub_100025564(v48, v92, type metadata accessor for AlarmKitPlatterControls);
    swift_storeEnumTagMultiPayload();
    sub_1000257A8();
    sub_100025228(&qword_100113F70, type metadata accessor for AlarmKitPlatterControls);
    _ConditionalContent<>.init(storage:)();
    return sub_100025A9C(v48, type metadata accessor for AlarmKitPlatterControls);
  }
}

uint64_t sub_10000DDAC@<X0>(unsigned int a1@<W2>, uint64_t a2@<X8>)
{
  v3 = a1 >> 8;
  sub_1000032D4(&qword_100113E30, &qword_1000D1118);
  State.wrappedValue.getter();
  v4 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes;
  v5 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v5 - 8) + 16))(a2, v11 + v4, v5);

  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  v7 = type metadata accessor for AlarmKitPlatterControls(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for AlarmPresentationState();
  (*(*(v9 - 8) + 16))(a2 + v8, v11 + v6, v9);

  *(a2 + *(v7 + 24)) = v3;
  return result;
}

uint64_t sub_10000DF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v48 = a4;
  v47 = sub_1000032D4(&qword_100113FA0, &qword_1000D1240);
  v6 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v40 = v38 - v7;
  v44 = sub_1000032D4(&qword_100113FC8, &qword_1000D1270);
  v8 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v46 = v38 - v9;
  v45 = type metadata accessor for AlarmKitPlatterControls(0);
  v10 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v39 = (v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for AlarmPresentationState.Mode();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AlarmPresentationState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v43 = a2;
  v52 = a1;
  v53 = a2;
  v38[1] = sub_1000032D4(&qword_100113E30, &qword_1000D1118);
  State.wrappedValue.getter();
  v22 = v49;
  swift_getKeyPath();
  v52 = v22;
  v38[0] = sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  v24 = *(v18 + 16);
  v24(v21, v22 + v23, v17);

  AlarmPresentationState.mode.getter();
  (*(v18 + 8))(v21, v17);
  LOBYTE(v23) = AlarmPresentationState.Mode.isAlerting.getter();
  (*(v13 + 8))(v16, v12);
  if (v23)
  {
    v25 = v39;
    sub_10000DDAC(v41 & 0xFFFFFF01, v39);
    sub_100025564(v25, v46, type metadata accessor for AlarmKitPlatterControls);
    swift_storeEnumTagMultiPayload();
    sub_100025228(&qword_100113F70, type metadata accessor for AlarmKitPlatterControls);
    sub_1000259E0();
    _ConditionalContent<>.init(storage:)();
    return sub_100025A9C(v25, type metadata accessor for AlarmKitPlatterControls);
  }

  else
  {
    v41 >>= 8;
    v28 = v42;
    v27 = v43;
    v49 = v42;
    v50 = v43;
    State.wrappedValue.getter();
    v29 = v51;
    v30 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes;
    v31 = type metadata accessor for AlarmKitCountdownView(0);
    v39 = v24;
    v32 = v31[5];
    v33 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    v34 = v40;
    (*(*(v33 - 8) + 16))(&v40[v32], v29 + v30, v33);

    v49 = v28;
    v50 = v27;
    State.wrappedValue.getter();
    v35 = v51;
    swift_getKeyPath();
    v49 = v35;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v36 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
    swift_beginAccess();
    v39((v34 + v31[6]), v35 + v36, v17);

    *v34 = sub_1000A9C68;
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    *(v34 + v31[7]) = v41;
    v37 = v46;
    *(v34 + *(v47 + 36)) = 0;
    sub_10002CFC4(v34, v37, &qword_100113FA0, &qword_1000D1240);
    swift_storeEnumTagMultiPayload();
    sub_100025228(&qword_100113F70, type metadata accessor for AlarmKitPlatterControls);
    sub_1000259E0();
    _ConditionalContent<>.init(storage:)();
    return sub_10002D02C(v34, &qword_100113FA0, &qword_1000D1240);
  }
}

Swift::Int sub_10000E5C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000E63C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10000E694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v125 = type metadata accessor for AlarmKitStopButton(0);
  v3 = *(*(v125 - 8) + 64);
  v4 = __chkstk_darwin(v125);
  v128 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v122 = &v106 - v7;
  __chkstk_darwin(v6);
  v126 = &v106 - v8;
  v9 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v124 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v115 = &v106 - v13;
  v131 = type metadata accessor for AlarmPresentationState();
  v133 = *(v131 - 8);
  v14 = *(v133 + 64);
  v15 = __chkstk_darwin(v131);
  v134 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v114 = &v106 - v17;
  v18 = type metadata accessor for AlarmKitButton(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v117 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v116 = &v106 - v23;
  v24 = sub_1000032D4(&qword_1001141F8, &qword_1000D14C8);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v106 - v26;
  v28 = type metadata accessor for AlarmButton();
  v120 = *(v28 - 8);
  v29 = *(v120 + 64);
  v30 = __chkstk_darwin(v28);
  v118 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v119 = &v106 - v32;
  v33 = type metadata accessor for AlarmPresentationState.Mode();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1000032D4(&qword_100114920, &qword_1000D1CE0);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v123 = &v106 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v106 - v42;
  v121 = type metadata accessor for AlarmKitPlatterControls(0);
  v129 = *(v121 + 20);
  AlarmPresentationState.mode.getter();
  v132 = a1;
  v113 = sub_10000F1FC(v37);
  v44 = v113;
  v45 = *(v34 + 8);
  v45(v37, v33);
  v46 = v44 == 5;
  v47 = v133;
  v130 = v43;
  if (v46)
  {
    goto LABEL_4;
  }

  v112 = v19;
  v48 = v132;
  v49 = v129;
  AlarmPresentationState.mode.getter();
  sub_10000F8DC(v37, v27);
  v45(v37, v33);
  v50 = v120;
  if ((*(v120 + 48))(v27, 1, v28) == 1)
  {
    sub_10002D02C(v27, &qword_1001141F8, &qword_1000D14C8);
    v47 = v133;
    v43 = v130;
    v19 = v112;
LABEL_4:
    (*(v19 + 56))(v43, 1, 1, v18);
    v51 = *(v47 + 16);
    v52 = v47;
    v53 = v121;
    goto LABEL_9;
  }

  v54 = v28;
  v55 = v50;
  v56 = v50 + 32;
  v57 = *(v50 + 32);
  v58 = v119;
  v109 = v56;
  v108 = v57;
  v57(v119, v27, v54);
  v59 = v48 + v49;
  v60 = v114;
  v111 = *(v133 + 16);
  v111(v114, v59, v131);
  v61 = *(v55 + 16);
  v110 = v54;
  v61(v118, v58, v54);
  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v62 = v115;
  AlarmAttributes.metadata.getter();
  v63 = type metadata accessor for MTAlarmCustomContent();
  v64 = *(v63 - 8);
  v65 = (*(v64 + 48))(v62, 1, v63);
  if (v65 == 1)
  {
    sub_10002D02C(v62, &unk_100118100, &qword_1000D1250);
    v107 = 0;
  }

  else
  {
    v107 = MTAlarmCustomContent.type.getter();
    (*(v64 + 8))(v62, v63);
  }

  v66 = v18;
  v67 = v132;
  v68 = AlarmAttributes.tintColor.getter();
  v53 = v121;
  v69 = *(v67 + *(v121 + 24));
  v70 = v117;
  (*(v133 + 32))(v117, v60, v131);
  v70[v66[5]] = v113;
  v71 = v110;
  v108(&v70[v66[6]], v118, v110);
  v72 = &v70[v66[7]];
  *v72 = v107;
  v72[8] = v65 == 1;
  *&v70[v66[8]] = v68;
  v70[v66[9]] = v69;
  v73 = &v70[v66[10]];
  *v73 = 0;
  *(v73 + 1) = 0;
  v74 = &v70[v66[11]];
  v75 = objc_opt_self();
  v76 = [v75 mtOrange];
  v118 = Color.init(uiColor:)();
  v77 = [v75 mtOrange];
  Color.init(uiColor:)();
  v78 = Color.opacity(_:)();

  v79 = static Color.white.getter();
  static Color.white.getter();
  v80 = v71;
  v81 = Color.opacity(_:)();
  v52 = v133;

  *(v74 + 3) = &type metadata for StandardSessionUiConfig;
  *(v74 + 4) = &off_1001035E8;
  v82 = swift_allocObject();
  *v74 = v82;
  v82[2] = v118;
  v82[3] = v78;
  v82[4] = v79;
  v82[5] = v81;
  (*(v120 + 8))(v119, v80);
  v83 = v70;
  v84 = v116;
  sub_1000255CC(v83, v116, type metadata accessor for AlarmKitButton);
  v85 = v84;
  v86 = v130;
  sub_1000255CC(v85, v130, type metadata accessor for AlarmKitButton);
  (*(v112 + 56))(v86, 0, 1, v66);
  v51 = v111;
LABEL_9:
  v87 = v131;
  v88 = v132;
  v51(v134, v132 + v129, v131);
  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v89 = v124;
  AlarmAttributes.metadata.getter();
  v90 = type metadata accessor for MTAlarmCustomContent();
  v91 = *(v90 - 8);
  v92 = (*(v91 + 48))(v89, 1, v90);
  if (v92 == 1)
  {
    sub_10002D02C(v89, &unk_100118100, &qword_1000D1250);
    v93 = 0;
  }

  else
  {
    v93 = MTAlarmCustomContent.type.getter();
    (*(v91 + 8))(v89, v90);
  }

  v94 = v130;
  v95 = *(v88 + *(v53 + 24));
  v96 = v122;
  (*(v52 + 32))(v122, v134, v87);
  v97 = v125;
  v98 = v126;
  v99 = v96 + *(v125 + 20);
  *v99 = v93;
  *(v99 + 8) = v92 == 1;
  *(v96 + v97[6]) = 0;
  *(v96 + v97[7]) = v95;
  v100 = (v96 + v97[8]);
  *v100 = 0;
  v100[1] = 0;
  sub_1000255CC(v96, v98, type metadata accessor for AlarmKitStopButton);
  v101 = v123;
  sub_10002CFC4(v94, v123, &qword_100114920, &qword_1000D1CE0);
  v102 = v128;
  sub_100025564(v98, v128, type metadata accessor for AlarmKitStopButton);
  v103 = v127;
  sub_10002CFC4(v101, v127, &qword_100114920, &qword_1000D1CE0);
  v104 = sub_1000032D4(&qword_100114928, &qword_1000D1CE8);
  sub_100025564(v102, v103 + *(v104 + 48), type metadata accessor for AlarmKitStopButton);
  sub_100025A9C(v98, type metadata accessor for AlarmKitStopButton);
  sub_10002D02C(v94, &qword_100114920, &qword_1000D1CE0);
  sub_100025A9C(v102, type metadata accessor for AlarmKitStopButton);
  return sub_10002D02C(v101, &qword_100114920, &qword_1000D1CE0);
}

uint64_t sub_10000F1FC(uint64_t a1)
{
  v53 = a1;
  v1 = type metadata accessor for AlarmPresentation.Alert.SecondaryButtonBehavior();
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = *(v49 + 64);
  __chkstk_darwin(v1);
  v45 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000032D4(&qword_1001142F8, &qword_1000D1580);
  v4 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v48 = &v45 - v5;
  v6 = sub_1000032D4(&qword_100114300, &qword_1000D1588);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v45 - v11;
  __chkstk_darwin(v10);
  v51 = &v45 - v13;
  v14 = type metadata accessor for AlarmPresentation.Alert();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AlarmPresentation();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AlarmPresentationState.Mode();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v28, v53, v24);
  v29 = *(v25 + 88);
  v52 = v28;
  v53 = v24;
  v30 = v29(v28, v24);
  if (v30 == enum case for AlarmPresentationState.Mode.alert(_:))
  {
    sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    AlarmAttributes.presentation.getter();
    AlarmPresentation.alert.getter();
    (*(v20 + 8))(v23, v19);
    v31 = v51;
    AlarmPresentation.Alert.secondaryButtonBehavior.getter();
    (*(v15 + 8))(v18, v14);
    v33 = v49;
    v32 = v50;
    (*(v49 + 104))(v12, enum case for AlarmPresentation.Alert.SecondaryButtonBehavior.countdown(_:), v50);
    (*(v33 + 56))(v12, 0, 1, v32);
    v34 = *(v47 + 48);
    v35 = v31;
    v36 = v48;
    sub_10002CFC4(v35, v48, &qword_100114300, &qword_1000D1588);
    sub_10002CFC4(v12, v36 + v34, &qword_100114300, &qword_1000D1588);
    v37 = *(v33 + 48);
    if (v37(v36, 1, v32) == 1)
    {
      sub_10002D02C(v12, &qword_100114300, &qword_1000D1588);
      sub_10002D02C(v51, &qword_100114300, &qword_1000D1588);
      if (v37(v36 + v34, 1, v32) == 1)
      {
        sub_10002D02C(v36, &qword_100114300, &qword_1000D1588);
        v38 = 3;
        goto LABEL_16;
      }

LABEL_9:
      sub_10002D02C(v36, &qword_1001142F8, &qword_1000D1580);
      v38 = 4;
      goto LABEL_16;
    }

    v39 = v46;
    sub_10002CFC4(v36, v46, &qword_100114300, &qword_1000D1588);
    if (v37(v36 + v34, 1, v32) == 1)
    {
      sub_10002D02C(v12, &qword_100114300, &qword_1000D1588);
      sub_10002D02C(v51, &qword_100114300, &qword_1000D1588);
      (*(v33 + 8))(v39, v32);
      goto LABEL_9;
    }

    v40 = v45;
    (*(v33 + 32))(v45, v36 + v34, v32);
    sub_100025228(&qword_100114308, &type metadata accessor for AlarmPresentation.Alert.SecondaryButtonBehavior);
    v41 = v39;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *(v33 + 8);
    v43(v40, v32);
    sub_10002D02C(v12, &qword_100114300, &qword_1000D1588);
    sub_10002D02C(v51, &qword_100114300, &qword_1000D1588);
    v43(v41, v32);
    sub_10002D02C(v36, &qword_100114300, &qword_1000D1588);
    if (v42)
    {
      v38 = 3;
    }

    else
    {
      v38 = 4;
    }
  }

  else if (v30 == enum case for AlarmPresentationState.Mode.countdown(_:))
  {
    v38 = 1;
  }

  else if (v30 == enum case for AlarmPresentationState.Mode.paused(_:))
  {
    v38 = 2;
  }

  else
  {
    v38 = 5;
  }

LABEL_16:
  (*(v25 + 8))(v52, v53);
  return v38;
}

uint64_t sub_10000F8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v49 = a1;
  v2 = sub_1000032D4(&qword_100113FB8, &qword_1000D1258);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v44 = &v43 - v4;
  v5 = sub_1000032D4(&unk_100115DF0, &qword_1000D1260);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v45 = &v43 - v7;
  v46 = type metadata accessor for AlarmPresentation.Alert();
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v46);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AlarmPresentation();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v43 - v19;
  __chkstk_darwin(v18);
  v22 = &v43 - v21;
  v23 = type metadata accessor for AlarmPresentationState.Mode();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v49, v23);
  v28 = *(v24 + 88);
  v47 = v27;
  v49 = v23;
  v29 = v28(v27, v23);
  if (v29 != enum case for AlarmPresentationState.Mode.alert(_:))
  {
    v30 = v48;
    if (v29 == enum case for AlarmPresentationState.Mode.countdown(_:))
    {
      sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
      AlarmAttributes.presentation.getter();
      v31 = v45;
      AlarmPresentation.countdown.getter();
      (*(v13 + 8))(v20, v12);
      v32 = type metadata accessor for AlarmPresentation.Countdown();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v31, 1, v32) != 1)
      {
        AlarmPresentation.Countdown.pauseButton.getter();
        (*(v33 + 8))(v31, v32);
        return (*(v24 + 8))(v47, v49);
      }

      v34 = &unk_100115DF0;
      v35 = &qword_1000D1260;
      v36 = v31;
    }

    else
    {
      if (v29 != enum case for AlarmPresentationState.Mode.paused(_:))
      {
LABEL_10:
        v40 = type metadata accessor for AlarmButton();
        (*(*(v40 - 8) + 56))(v30, 1, 1, v40);
        return (*(v24 + 8))(v47, v49);
      }

      sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
      AlarmAttributes.presentation.getter();
      v37 = v44;
      AlarmPresentation.paused.getter();
      (*(v13 + 8))(v17, v12);
      v38 = type metadata accessor for AlarmPresentation.Paused();
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v37, 1, v38) != 1)
      {
        AlarmPresentation.Paused.resumeButton.getter();
        (*(v39 + 8))(v37, v38);
        v42 = type metadata accessor for AlarmButton();
        (*(*(v42 - 8) + 56))(v30, 0, 1, v42);
        return (*(v24 + 8))(v47, v49);
      }

      v34 = &qword_100113FB8;
      v35 = &qword_1000D1258;
      v36 = v37;
    }

    sub_10002D02C(v36, v34, v35);
    goto LABEL_10;
  }

  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  AlarmAttributes.presentation.getter();
  AlarmPresentation.alert.getter();
  (*(v13 + 8))(v22, v12);
  AlarmPresentation.Alert.secondaryButton.getter();
  (*(v8 + 8))(v11, v46);
  return (*(v24 + 8))(v47, v49);
}

void *sub_10000FEE8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AlarmPresentationState();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  static Color.white.getter();
  v4 = type metadata accessor for AlarmKitButton(0);
  v5 = v4[6];
  AlarmButton.init(text:textColor:systemImageName:)();
  v6 = type metadata accessor for AlarmKitStopButton(0);
  v7 = (v1 + v6[5]);
  v8 = *v7;
  LOBYTE(v7) = *(v7 + 8);
  v9 = *(v1 + v6[6]);
  v10 = v6[8];
  v11 = *(v1 + v6[7]);
  *(a1 + v4[5]) = 0;
  v12 = a1 + v4[7];
  *v12 = v8;
  *(v12 + 8) = v7;
  *(a1 + v4[8]) = v9;
  *(a1 + v4[9]) = v11;
  *(a1 + v4[10]) = *(v1 + v10);
  v13 = (a1 + v4[11]);
  v14 = objc_opt_self();

  v15 = [v14 mtOrange];
  v16 = Color.init(uiColor:)();
  v17 = [v14 mtOrange];
  Color.init(uiColor:)();
  v18 = Color.opacity(_:)();

  v19 = static Color.white.getter();
  static Color.white.getter();
  v20 = Color.opacity(_:)();

  v13[3] = &type metadata for StandardSessionUiConfig;
  v13[4] = &off_1001035E8;
  result = swift_allocObject();
  *v13 = result;
  result[2] = v16;
  result[3] = v18;
  result[4] = v19;
  result[5] = v20;
  return result;
}

uint64_t sub_1000100D0@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for LocalizedStringResource();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  v9 = type metadata accessor for BlendMode();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000032D4(&qword_1001140D0, &qword_1000D13E8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33 - v16;
  v18 = sub_1000032D4(&qword_1001140D8, &qword_1000D13F0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v33 - v20;
  sub_100010418(v1, v17);
  v22 = type metadata accessor for AlarmKitButton(0);
  if (*(v1 + *(v22 + 20)))
  {
    v23 = &enum case for BlendMode.normal(_:);
  }

  else
  {
    v23 = &enum case for BlendMode.plusLighter(_:);
  }

  (*(v10 + 104))(v13, *v23, v9);
  (*(v10 + 32))(&v21[*(v18 + 36)], v13, v9);
  sub_10002C7C4(v17, v21, &qword_1001140D0, &qword_1000D13E8);
  v24 = v1 + *(v22 + 24);
  AlarmButton.text.getter();
  v25 = v33;
  v26 = v34;
  (*(v33 + 16))(v6, v8, v34);
  v27 = Text.init(_:)();
  v29 = v28;
  v31 = v30;
  sub_10002645C();
  View.accessibilityLabel(_:)();
  sub_100025B0C(v27, v29, v31 & 1);

  (*(v25 + 8))(v8, v26);
  return sub_10002D02C(v21, &qword_1001140D8, &qword_1000D13F0);
}

uint64_t sub_100010418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = type metadata accessor for LocalizedStringResource();
  v96 = *(v3 - 8);
  v4 = *(v96 + 64);
  v5 = __chkstk_darwin(v3);
  v95 = &v86[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v86[-v7];
  v9 = type metadata accessor for LargeActionButton(0);
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v12 = &v86[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_1000032D4(&qword_100114118, &qword_1000D1408);
  v13 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v98 = &v86[-v14];
  v103 = sub_1000032D4(&qword_100114108, &qword_1000D1400);
  v15 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v17 = &v86[-v16];
  v102 = sub_1000032D4(&qword_100114128, &qword_1000D1410);
  v18 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v99 = &v86[-v19];
  v20 = type metadata accessor for AlarmKitButton(0);
  v101 = *(v20 - 1);
  v21 = *(v101 + 64);
  __chkstk_darwin(v20);
  v100 = &v86[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v86[-v24];
  v26 = (a1 + v20[10]);
  v27 = *v26;
  if (*v26)
  {
    v89 = v26[1];
    v90 = v27;
    v28 = v20[6];
    v92 = v8;
    AlarmButton.text.getter();
    v91 = v28;
    v88 = AlarmButton.textColor.getter();
    v29 = *(a1 + v20[8]);
    v93 = v3;
    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = static Color.clear.getter();
    }

    v33 = *(a1 + v20[9]);
    v94 = v17;
    v87 = v33;
    v34 = v30;
    if (v33 <= 2 || v33 > 4 || v33 == 3)
    {
      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v63 = 1;
    }

    v64 = v100;
    sub_100025564(a1, v100, type metadata accessor for AlarmKitButton);
    v65 = (*(v101 + 80) + 16) & ~*(v101 + 80);
    v66 = swift_allocObject();
    sub_1000255CC(v64, v66 + v65, type metadata accessor for AlarmKitButton);
    v67 = v96;
    v68 = v93;
    (*(v96 + 32))(v12, v92, v93);
    *&v12[v9[5]] = v88;
    *&v12[v9[6]] = v34;
    v12[v9[7]] = v63 & 1;
    v69 = &v12[v9[8]];
    *v69 = sub_10002DB58;
    v69[1] = v66;
    v70 = &v12[v9[9]];
    v105 = 0;
    State.init(wrappedValue:)();
    v71 = v107;
    *v70 = v106;
    *(v70 + 1) = v71;
    v105 = 0;
    State.init(wrappedValue:)();
    LOBYTE(v70) = v106;
    v72 = v107;
    v105 = 0;
    State.init(wrappedValue:)();
    v73 = v106;
    v74 = v107;
    v75 = v12;
    v76 = v98;
    sub_1000255CC(v75, v98, type metadata accessor for LargeActionButton);
    v77 = &v76[*(v97 + 36)];
    v78 = v89;
    *v77 = v90;
    *(v77 + 1) = v78;
    v77[16] = v70;
    *(v77 + 3) = v72;
    v77[32] = v73;
    *(v77 + 5) = v74;
    v106 = 0;
    v107 = 0xE000000000000000;
    v79 = v95;
    AlarmButton.text.getter();
    v80 = LocalizedStringResource.key.getter();
    v82 = v81;
    (*(v67 + 8))(v79, v68);
    v83._countAndFlagsBits = v80;
    v83._object = v82;
    String.append(_:)(v83);

    v84._countAndFlagsBits = 45;
    v84._object = 0xE100000000000000;
    String.append(_:)(v84);
    v105 = v87;
    _print_unlocked<A, B>(_:_:)();
    sub_1000266FC();
    v85 = v94;
    View.accessibilityIdentifier(_:)();

    sub_10002D02C(v76, &qword_100114118, &qword_1000D1408);
    sub_10002CFC4(v85, v99, &qword_100114108, &qword_1000D1400);
    swift_storeEnumTagMultiPayload();
    sub_100025C54();
    sub_100026648(&qword_100114100, &qword_100114108, &qword_1000D1400, sub_1000266FC);
    _ConditionalContent<>.init(storage:)();
    return sub_10002D02C(v85, &qword_100114108, &qword_1000D1400);
  }

  else
  {
    v31 = *(a1 + v20[5]);
    static Font.Weight.medium.getter();
    if (v31)
    {
      v32 = type metadata accessor for Font.Design();
      (*(*(v32 - 8) + 56))(v25, 1, 1, v32);
    }

    else
    {
      v35 = enum case for Font.Design.rounded(_:);
      v36 = type metadata accessor for Font.Design();
      v37 = *(v36 - 8);
      (*(v37 + 104))(v25, v35, v36);
      (*(v37 + 56))(v25, 0, 1, v36);
    }

    v38 = static Font.system(size:weight:design:)();
    sub_10002D02C(v25, &qword_100113E08, &qword_1000D10F0);
    v39 = a1 + v20[6];
    v40 = AlarmButton.systemImageName.getter();
    v42 = v41;
    v43 = v20[8];
    v44 = *(a1 + v43);
    if (v44)
    {
      v45 = *(a1 + v43);

      v46 = Color.opacity(_:)();
    }

    else
    {
      v47 = (a1 + v20[11]);
      v48 = v38;
      v50 = v47[3];
      v49 = v47[4];
      sub_100025B1C(v47, v50);
      v44 = (*(v49 + 56))(v50, v49);
      v51 = v40;
      v52 = v47[3];
      v53 = v47[4];
      sub_100025B1C(v47, v52);
      v54 = *(v53 + 80);
      v55 = v52;
      v38 = v48;
      v56 = v53;
      v40 = v51;
      v46 = v54(v55, v56);
    }

    v57 = v46;
    v58 = v100;
    sub_100025564(a1, v100, type metadata accessor for AlarmKitButton);
    v59 = (*(v101 + 80) + 16) & ~*(v101 + 80);
    v60 = swift_allocObject();
    sub_1000255CC(v58, v60 + v59, type metadata accessor for AlarmKitButton);
    v61 = v99;
    v99->width = 50.0;
    *&v61->height = v38;
    *&v61[1].width = v40;
    v61[1].height = v42;
    v61[2] = CGSizeZero;
    *&v61[3].width = v44;
    *&v61[3].height = v57;
    LOBYTE(v61[4].width) = 1;
    *&v61[4].height = sub_100026960;
    *&v61[5].width = v60;
    swift_storeEnumTagMultiPayload();
    sub_100025C54();
    sub_100026648(&qword_100114100, &qword_100114108, &qword_1000D1400, sub_1000266FC);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100010EB0()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UUID();
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  __chkstk_darwin(v6);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100113630 != -1)
  {
    swift_once();
  }

  v10 = qword_10011F508;
  v11 = type metadata accessor for AlarmKitButton(0);
  v12 = *(v0 + v11[5]);
  AlarmPresentationState.alarmID.getter();
  v46 = AlarmPresentationState.bundleID.getter();
  v49 = v13;
  v14 = v0 + v11[7];
  v44 = *v14;
  v45 = *(v14 + 8);
  AlarmPresentationState.mode.getter();
  v43 = AlarmPresentationState.Mode.isAlerting.getter();
  (*(v2 + 8))(v5, v1);
  v15 = *(v0 + v11[9]);
  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v47 = v10;
  v50 = v10;
  type metadata accessor for AlarmAndTimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v16._object = 0x80000001000D7D50;
  v16._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v16);
  LOBYTE(v50) = v12;
  _print_unlocked<A, B>(_:_:)();
  v17._countAndFlagsBits = 0x616C6120726F6620;
  v17._object = 0xEF203A6469206D72;
  String.append(_:)(v17);
  sub_100025228(&qword_100118110, &type metadata accessor for UUID);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._object = 0x80000001000D7D70;
  v19._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v19);
  v20 = 0xEE00746361706D6FLL;
  v21 = 0x43746E6569626D41;
  v22 = 0x657263536B636F4CLL;
  v23 = 0xEA00000000006E65;
  if (v15 != 5)
  {
    v22 = 0x726F707075736E55;
    v23 = 0xEB00000000646574;
  }

  v24 = 0xE600000000000000;
  v25 = 0x72656E6E6142;
  if (v15 != 3)
  {
    v25 = 0x657263536C6C7546;
    v24 = 0xEA00000000006E65;
  }

  if (v15 <= 4)
  {
    v22 = v25;
    v23 = v24;
  }

  v26 = 0xEB000000006C6C75;
  v27 = 0x46746E6569626D41;
  if (v15 != 1)
  {
    v27 = 0x6572757472657041;
    v26 = 0xE800000000000000;
  }

  if (v15)
  {
    v21 = v27;
    v20 = v26;
  }

  if (v15 <= 2)
  {
    v28 = v21;
  }

  else
  {
    v28 = v22;
  }

  if (v15 <= 2)
  {
    v29 = v20;
  }

  else
  {
    v29 = v23;
  }

  v30 = objc_opt_self();
  v31._countAndFlagsBits = v28;
  v31._object = v29;
  String.append(_:)(v31);

  v32 = String._bridgeToObjectiveC()();

  [v30 logInfo:v32];

  if (v49)
  {
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        sub_10007D6CC(v9, v46, v49, v44, v45);
      }

      else if (v12 == 3)
      {
        sub_10007D1D0(v9, v46, v49, v44, v45);
      }

      else
      {
        sub_10007D234(v9, v46, v49);
      }

      goto LABEL_31;
    }

    if (v12)
    {
      sub_10007D4CC(v9, v46, v49, v44, v45);
      goto LABEL_31;
    }

    if (v43)
    {
      sub_10007D8CC(v9, v46, v49, v44, v45);
LABEL_31:

      return (*(v48 + 8))(v9, v6);
    }

    if ((v45 & 1) == 0)
    {
      if (v44 == 1)
      {
        if (qword_100113628 != -1)
        {
          swift_once();
        }

        v40 = UUID.uuidString.getter();
        sub_100079614(v40, v41);
        goto LABEL_43;
      }

      if (!v44)
      {
        if (qword_100113620 != -1)
        {
          swift_once();
        }

        v37 = UUID.uuidString.getter();
        sub_100076EA4(v37, v38);
LABEL_43:

        goto LABEL_31;
      }
    }

    v39 = *(v47 + 16);
    AlarmManager.stop(id:ownerID:)();
    goto LABEL_31;
  }

  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(73);
  v33._countAndFlagsBits = 0xD000000000000047;
  v33._object = 0x80000001000D7D90;
  String.append(_:)(v33);
  v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v34);

  v35 = String._bridgeToObjectiveC()();

  [v30 logError:v35];

  return (*(v48 + 8))(v9, v6);
}

uint64_t sub_10001155C@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v87 = type metadata accessor for AlarmKitStopSlider(0);
  v78 = *(v87 - 8);
  v80 = *(v78 + 64);
  v1 = __chkstk_darwin(v87);
  v81 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v79 = &v75 - v3;
  v4 = sub_1000032D4(&qword_100113FC0, &qword_1000D1268);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v90 = &v75 - v6;
  v7 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v75 = *(v16 - 8);
  v17 = v75;
  v18 = *(v75 + 64);
  v19 = __chkstk_darwin(v16);
  v89 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v76 = &v75 - v21;
  v22 = type metadata accessor for GlassActionSlider(0);
  v23 = *(*(v22 - 1) + 64);
  v24 = __chkstk_darwin(v22);
  v26 = (&v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v83 = &v75 - v27;
  v82 = sub_1000032D4(&qword_100114098, &qword_1000D13A0);
  v28 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v84 = &v75 - v29;
  v86 = sub_1000032D4(&qword_1001140A0, &qword_1000D13A8);
  v30 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v85 = &v75 - v31;
  v77 = Image.init(systemName:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v8 + 104))(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v32 = v90;
  LocalizedStringResource.init(stringLiteral:)();
  v33 = *(v17 + 56);
  v34 = v16;
  v33(v32, 0, 1, v16);
  v35 = v91;
  v36 = v79;
  sub_100025564(v91, v79, type metadata accessor for AlarmKitStopSlider);
  v37 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v78 = swift_allocObject();
  sub_1000255CC(v36, v78 + v37, type metadata accessor for AlarmKitStopSlider);
  v38 = v35;
  v39 = v81;
  sub_100025564(v38, v81, type metadata accessor for AlarmKitStopSlider);
  v40 = v34;
  v41 = v75;
  v80 = swift_allocObject();
  sub_1000255CC(v39, v80 + v37, type metadata accessor for AlarmKitStopSlider);
  v42 = (v26 + v22[10]);
  *&v93 = 0;
  State.init(wrappedValue:)();
  v43 = *(&v94 + 1);
  *v42 = v94;
  v42[1] = v43;
  v44 = v22[11];
  *(v26 + v44) = swift_getKeyPath();
  sub_1000032D4(&qword_1001140A8, &qword_1000D13E0);
  swift_storeEnumTagMultiPayload();
  v45 = v26 + v22[12];
  __asm { FMOV            V0.2D, #10.0 }

  v93 = _Q0;
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  v51 = v95;
  *v45 = v94;
  *(v45 + 2) = v51;
  v52 = v26 + v22[13];
  LOBYTE(v93) = 0;
  State.init(wrappedValue:)();
  v53 = *(&v94 + 1);
  *v52 = v94;
  *(v52 + 1) = v53;
  *v26 = v77;
  v54 = v76;
  (*(v41 + 16))(v26 + v22[5]);
  v55 = *(v41 + 48);
  v56 = v90;
  if (v55() == 1)
  {
    v57 = *(v41 + 32);
    v57(v89, v54, v40);
    if ((v55)(v56, 1, v40) != 1)
    {
      sub_10002D02C(v56, &qword_100113FC0, &qword_1000D1268);
    }

    v58 = v89;
  }

  else
  {
    (*(v41 + 8))(v54, v40);
    v57 = *(v41 + 32);
    v59 = v89;
    v57(v89, v56, v40);
    v58 = v59;
  }

  v57(v26 + v22[6], v58, v40);
  *(v26 + v22[7]) = 13;
  v60 = (v26 + v22[8]);
  v61 = v78;
  *v60 = sub_1000260C8;
  v60[1] = v61;
  v62 = (v26 + v22[9]);
  v63 = v80;
  *v62 = sub_1000261E0;
  v62[1] = v63;
  v64 = v83;
  sub_1000255CC(v26, v83, type metadata accessor for GlassActionSlider);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v65 = v84;
  sub_1000255CC(v64, v84, type metadata accessor for GlassActionSlider);
  v66 = (v65 + *(v82 + 36));
  v67 = v95;
  *v66 = v94;
  v66[1] = v67;
  v66[2] = v96;
  v92 = 0;
  State.init(wrappedValue:)();
  LOBYTE(v64) = v93;
  v68 = *(&v93 + 1);
  v92 = 0;
  State.init(wrappedValue:)();
  v69 = v93;
  v70 = *(&v93 + 1);
  v71 = v85;
  sub_10002C7C4(v65, v85, &qword_100114098, &qword_1000D13A0);
  v72 = v71 + *(v86 + 36);
  *v72 = &type metadata for AnimationConstants.LeftButtonAnimation;
  *(v72 + 8) = &off_100103BB0;
  *(v72 + 16) = v64;
  *(v72 + 24) = v68;
  *(v72 + 32) = v69;
  *(v72 + 40) = v70;
  *&v93 = 0;
  *(&v93 + 1) = 0xE000000000000000;
  v73._countAndFlagsBits = 0x2D706F7453;
  v73._object = 0xE500000000000000;
  String.append(_:)(v73);
  v92 = *(v91 + *(v87 + 24));
  _print_unlocked<A, B>(_:_:)();
  sub_1000262C0();
  View.accessibilityIdentifier(_:)();

  return sub_10002D02C(v71, &qword_1001140A0, &qword_1000D13A8);
}

uint64_t sub_100011F3C()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100113630 != -1)
  {
    swift_once();
  }

  v10 = qword_10011F508;
  AlarmPresentationState.alarmID.getter();
  v44 = AlarmPresentationState.bundleID.getter();
  v12 = v11;
  v13 = type metadata accessor for AlarmKitStopSlider(0);
  v14 = v0 + *(v13 + 20);
  v43 = *v14;
  v46 = *(v14 + 8);
  AlarmPresentationState.mode.getter();
  v45 = AlarmPresentationState.Mode.isAlerting.getter();
  (*(v2 + 8))(v5, v1);
  v15 = *(v0 + *(v13 + 24));
  v49 = 0;
  v50 = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v48 = v10;
  type metadata accessor for AlarmAndTimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v16._object = 0x80000001000D7D50;
  v16._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v16);
  LOBYTE(v48) = 0;
  _print_unlocked<A, B>(_:_:)();
  v17._countAndFlagsBits = 0x616C6120726F6620;
  v17._object = 0xEF203A6469206D72;
  String.append(_:)(v17);
  sub_100025228(&qword_100118110, &type metadata accessor for UUID);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._object = 0x80000001000D7D70;
  v19._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v19);
  v20 = 0xEE00746361706D6FLL;
  v21 = 0x43746E6569626D41;
  v22 = 0x657263536B636F4CLL;
  v23 = 0xEA00000000006E65;
  if (v15 != 5)
  {
    v22 = 0x726F707075736E55;
    v23 = 0xEB00000000646574;
  }

  v24 = 0xE600000000000000;
  v25 = 0x72656E6E6142;
  if (v15 != 3)
  {
    v25 = 0x657263536C6C7546;
    v24 = 0xEA00000000006E65;
  }

  if (v15 <= 4)
  {
    v22 = v25;
    v23 = v24;
  }

  v26 = 0xEB000000006C6C75;
  v27 = 0x46746E6569626D41;
  if (v15 != 1)
  {
    v27 = 0x6572757472657041;
    v26 = 0xE800000000000000;
  }

  if (v15)
  {
    v21 = v27;
    v20 = v26;
  }

  v28 = v15 <= 2;
  if (v15 <= 2)
  {
    v29 = v21;
  }

  else
  {
    v29 = v22;
  }

  if (v28)
  {
    v30 = v20;
  }

  else
  {
    v30 = v23;
  }

  v31 = objc_opt_self();
  v32._countAndFlagsBits = v29;
  v32._object = v30;
  String.append(_:)(v32);

  v33 = String._bridgeToObjectiveC()();

  [v31 logInfo:v33];

  if (v12)
  {
    if (v45)
    {
      sub_10007D8CC(v9, v44, v12, v43, v46);
LABEL_30:

      return (*(v47 + 8))(v9, v6);
    }

    if ((v46 & 1) == 0)
    {
      if (v43 == 1)
      {
        if (qword_100113628 != -1)
        {
          swift_once();
        }

        v41 = UUID.uuidString.getter();
        sub_100079614(v41, v42);
        goto LABEL_35;
      }

      if (!v43)
      {
        if (qword_100113620 != -1)
        {
          swift_once();
        }

        v37 = UUID.uuidString.getter();
        sub_100076EA4(v37, v38);
LABEL_35:

        goto LABEL_30;
      }
    }

    v39 = *(v10 + 16);
    AlarmManager.stop(id:ownerID:)();
    goto LABEL_30;
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  _StringGuts.grow(_:)(73);
  v34._countAndFlagsBits = 0xD000000000000047;
  v34._object = 0x80000001000D7D90;
  String.append(_:)(v34);
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v35);

  v36 = String._bridgeToObjectiveC()();

  [v31 logError:v36];

  return (*(v47 + 8))(v9, v6);
}

uint64_t sub_100012558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1000032D4(&qword_100114930, &qword_1000D1CF0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v9 = sub_1000032D4(&qword_100114938, &qword_1000D1CF8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_1000032D4(&qword_100114940, &qword_1000D1D00);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  v30 = v2[1];
  v31 = v30;
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.getter();
  v19 = 0.0;
  if (v29)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 150.0;
  }

  v21 = sub_1000032D4(&qword_100114948, &qword_1000D1D08);
  (*(*(v21 - 8) + 16))(v8, a1, v21);
  v22 = &v8[*(v5 + 44)];
  *v22 = 0;
  *(v22 + 1) = v20;
  v29 = v2[2];
  v30 = v29;
  State.wrappedValue.getter();
  if (v28)
  {
    v19 = 1.0;
  }

  sub_10002C7C4(v8, v13, &qword_100114930, &qword_1000D1CF0);
  *&v13[*(v10 + 44)] = v19;
  v23 = swift_allocObject();
  v24 = v2[1];
  *(v23 + 1) = *v2;
  *(v23 + 2) = v24;
  *(v23 + 3) = v2[2];
  sub_10002C7C4(v13, v18, &qword_100114938, &qword_1000D1CF8);
  v25 = &v18[*(v15 + 44)];
  *v25 = sub_1000294F0;
  v25[1] = v23;
  v25[2] = 0;
  v25[3] = 0;
  sub_10002C7C4(v18, v27, &qword_100114940, &qword_1000D1D00);
  sub_10002CFC4(&v31, &v29, &qword_100114140, &qword_1000D7290);
  return sub_10002CFC4(&v30, &v29, &qword_100114140, &qword_1000D7290);
}

uint64_t sub_10001284C(uint64_t *a1)
{
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();

  v2 = *a1;
  (*(a1[1] + 16))();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10001295C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  GeometryProxy.size.getter();
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_1000032D4(&qword_100114A78, &qword_1000D1DE8);
  sub_100012A2C(a1, a2 + *(v5 + 44));
  v6 = static Color.black.getter();
  LOBYTE(a1) = static Edge.Set.all.getter();
  v7 = a2 + *(sub_1000032D4(&qword_100114A80, &qword_1000D1DF0) + 36);
  *v7 = v6;
  v7[8] = a1;
  LOBYTE(v6) = static Edge.Set.vertical.getter();
  result = sub_1000032D4(&qword_100114A88, &qword_1000D1DF8);
  *(a2 + *(result + 36)) = v6;
  return result;
}

uint64_t sub_100012A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000032D4(&qword_100114A90, &qword_1000D1E00);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v47[-v10];
  v12 = sub_1000032D4(&qword_100114A98, &qword_1000D1E08);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v47[-v17];
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v19 = a2 + *(sub_1000032D4(&qword_100114AA0, &qword_1000D1E10) + 44);
  *v18 = static VerticalAlignment.top.getter();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v20 = sub_1000032D4(&qword_100114AA8, &qword_1000D1E18);
  sub_100012E04(a1, &v18[*(v20 + 44)]);
  v48 = a1;
  sub_1000032D4(&qword_100114AB0, &qword_1000D1E20);
  sub_10002DAD8(&qword_100114AB8, &qword_100114AB0, &qword_1000D1E20);
  GlassEffectContainer.init(spacing:content:)();
  LOBYTE(a1) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v21 = &v11[*(v5 + 44)];
  *v21 = a1;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  sub_10002CFC4(v18, v16, &qword_100114A98, &qword_1000D1E08);
  sub_10002CFC4(v11, v9, &qword_100114A90, &qword_1000D1E00);
  sub_10002CFC4(v16, v19, &qword_100114A98, &qword_1000D1E08);
  v26 = sub_1000032D4(&qword_100114AC0, &qword_1000D1E28);
  v27 = v19 + *(v26 + 48);
  *v27 = 0;
  *(v27 + 8) = 1;
  sub_10002CFC4(v9, v19 + *(v26 + 64), &qword_100114A90, &qword_1000D1E00);
  sub_10002D02C(v11, &qword_100114A90, &qword_1000D1E00);
  sub_10002D02C(v18, &qword_100114A98, &qword_1000D1E08);
  sub_10002D02C(v9, &qword_100114A90, &qword_1000D1E00);
  sub_10002D02C(v16, &qword_100114A98, &qword_1000D1E08);
  LOBYTE(v19) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = a2 + *(sub_1000032D4(&qword_100114AC8, &qword_1000D1E30) + 36);
  *v36 = v19;
  *(v36 + 8) = v29;
  *(v36 + 16) = v31;
  *(v36 + 24) = v33;
  *(v36 + 32) = v35;
  *(v36 + 40) = 0;
  LOBYTE(v19) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  result = sub_1000032D4(&qword_100114AD0, &qword_1000D1E38);
  v46 = a2 + *(result + 36);
  *v46 = v19;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  return result;
}

uint64_t sub_100012E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v287 = a2;
  v3 = type metadata accessor for Color.RGBColorSpace();
  v285 = *(v3 - 8);
  v286 = v3;
  v4 = *(v285 + 64);
  __chkstk_darwin(v3);
  v284 = &v229 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Font._StylisticAlternative();
  v257 = *(v6 - 8);
  v258 = v6;
  v7 = *(v257 + 64);
  __chkstk_darwin(v6);
  v256 = &v229 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000032D4(&qword_100114338, &qword_1000D15B8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v300 = &v229 - v11;
  v268 = sub_1000032D4(&qword_100114340, &qword_1000D15C0);
  v263 = *(v268 - 8);
  v12 = *(v263 + 64);
  __chkstk_darwin(v268);
  v260 = &v229 - v13;
  v259 = sub_1000032D4(&qword_100114AF0, &qword_1000D1E58);
  v14 = *(*(v259 - 8) + 64);
  __chkstk_darwin(v259);
  v267 = &v229 - v15;
  v264 = sub_1000032D4(&qword_100114AF8, &qword_1000D1E60);
  v16 = *(*(v264 - 8) + 64);
  __chkstk_darwin(v264);
  v266 = &v229 - v17;
  v262 = sub_1000032D4(&qword_100114B00, &qword_1000D1E68);
  v18 = *(*(v262 - 8) + 64);
  __chkstk_darwin(v262);
  v265 = &v229 - v19;
  v261 = sub_1000032D4(&qword_100114B08, &qword_1000D1E70);
  v20 = *(*(v261 - 8) + 64);
  __chkstk_darwin(v261);
  v271 = &v229 - v21;
  v269 = sub_1000032D4(&qword_100114B10, &qword_1000D1E78);
  v22 = *(*(v269 - 8) + 64);
  __chkstk_darwin(v269);
  v272 = &v229 - v23;
  v270 = sub_1000032D4(&qword_100114B18, &qword_1000D1E80);
  v24 = *(*(v270 - 8) + 64);
  __chkstk_darwin(v270);
  v275 = &v229 - v25;
  v273 = sub_1000032D4(&qword_100114B20, &qword_1000D1E88);
  v26 = *(*(v273 - 8) + 64);
  __chkstk_darwin(v273);
  v278 = &v229 - v27;
  v277 = sub_1000032D4(&qword_100114B28, &qword_1000D1E90);
  v28 = *(*(v277 - 8) + 64);
  __chkstk_darwin(v277);
  v276 = &v229 - v29;
  v274 = sub_1000032D4(&qword_100114B30, &qword_1000D1E98);
  v30 = *(*(v274 - 8) + 64);
  __chkstk_darwin(v274);
  v279 = &v229 - v31;
  v280 = sub_1000032D4(&qword_100114B38, &qword_1000D1EA0);
  v32 = *(*(v280 - 8) + 64);
  __chkstk_darwin(v280);
  v281 = &v229 - v33;
  v34 = sub_1000032D4(&qword_100114B40, &qword_1000D1EA8);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v283 = &v229 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v282 = &v229 - v38;
  v39 = type metadata accessor for AlarmAlertFullScreenAmbient(0);
  v253 = *(v39 - 8);
  v40 = *(v253 + 64);
  __chkstk_darwin(v39);
  v254 = v41;
  v299 = &v229 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Font.Context();
  v231 = *(v42 - 8);
  v232 = v42;
  v43 = *(v231 + 64);
  __chkstk_darwin(v42);
  v230 = &v229 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = type metadata accessor for DynamicTypeSize();
  v303 = *(v297 - 8);
  v45 = *(v303 + 64);
  __chkstk_darwin(v297);
  v296 = &v229 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_1000032D4(&qword_100114B48, &qword_1000D1EB0);
  v47 = *(*(v236 - 8) + 64);
  __chkstk_darwin(v236);
  v49 = &v229 - v48;
  v50 = sub_1000032D4(&qword_100114B50, &qword_1000D1EB8);
  v240 = *(v50 - 8);
  v241 = v50;
  v51 = *(v240 + 64);
  __chkstk_darwin(v50);
  v239 = &v229 - v52;
  v238 = sub_1000032D4(&qword_100114B58, &qword_1000D1EC0);
  v53 = *(*(v238 - 8) + 64);
  __chkstk_darwin(v238);
  v292 = &v229 - v54;
  v242 = sub_1000032D4(&qword_100114B60, &qword_1000D1EC8);
  v55 = *(*(v242 - 8) + 64);
  __chkstk_darwin(v242);
  v294 = &v229 - v56;
  v245 = sub_1000032D4(&qword_100114B68, &qword_1000D1ED0);
  v57 = *(*(v245 - 8) + 64);
  __chkstk_darwin(v245);
  v295 = &v229 - v58;
  v59 = sub_1000032D4(&qword_100114B70, &qword_1000D1ED8);
  v246 = *(v59 - 8);
  v247 = v59;
  v60 = *(v246 + 64);
  __chkstk_darwin(v59);
  v244 = &v229 - v61;
  v243 = sub_1000032D4(&qword_100114B78, &qword_1000D1EE0);
  v62 = *(*(v243 - 8) + 64);
  __chkstk_darwin(v243);
  v249 = &v229 - v63;
  v248 = sub_1000032D4(&qword_100114B80, &qword_1000D1EE8);
  v64 = *(*(v248 - 8) + 64);
  __chkstk_darwin(v248);
  v250 = &v229 - v65;
  v251 = sub_1000032D4(&qword_100114B88, &qword_1000D1EF0);
  v66 = *(*(v251 - 8) + 64);
  __chkstk_darwin(v251);
  v252 = &v229 - v67;
  v68 = sub_1000032D4(&qword_100114B90, &qword_1000D1EF8);
  v69 = *(*(v68 - 8) + 64);
  v70 = __chkstk_darwin(v68 - 8);
  v255 = &v229 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v298 = &v229 - v72;
  v73 = type metadata accessor for AlarmPresentationState.Mode();
  v234 = *(v73 - 8);
  v235 = v73;
  v74 = *(v234 + 64);
  __chkstk_darwin(v73);
  v76 = &v229 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v78 = *(*(v77 - 8) + 64);
  v79 = __chkstk_darwin(v77 - 8);
  v237 = &v229 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __chkstk_darwin(v79);
  v83 = &v229 - v82;
  __chkstk_darwin(v81);
  v85 = &v229 - v84;
  v86 = *(v39 + 20);
  v87 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v302 = v86;
  v291 = v87;
  AlarmAttributes.metadata.getter();
  v88 = type metadata accessor for MTAlarmCustomContent();
  v89 = *(v88 - 8);
  v289 = *(v89 + 48);
  v290 = v89 + 48;
  v90 = v289(v85, 1, v88);
  v301 = v39;
  v288 = v89;
  if (v90 == 1)
  {
    sub_10002D02C(v85, &unk_100118100, &qword_1000D1250);
LABEL_3:
    v91 = 0;
    goto LABEL_6;
  }

  v92 = MTAlarmCustomContent.isSleepAlarm.getter();
  (*(v89 + 8))(v85, v88);
  if (v92 == 2)
  {
    v91 = 0;
  }

  else
  {
    if ((v92 & 1) == 0)
    {
      goto LABEL_3;
    }

    v222 = (a1 + v301[15]);
    v224 = *v222;
    v223 = v222[1];
    *&v317 = v224;
    *(&v317 + 1) = v223;
    sub_1000032D4(&qword_100114C60, &qword_1000D1F58);
    State.wrappedValue.getter();
    v225 = v307;
    if (qword_100113610 != -1)
    {
      swift_once();
    }

    v226 = sub_10005926C();
    if (!v226 || (v227 = v226, v228 = [v226 isAuthorizedForWidgetUpdates], v227, (v228 & 1) == 0))
    {

      goto LABEL_3;
    }

    swift_getKeyPath();
    *&v317 = v225;
    sub_100025228(&qword_100114C68, type metadata accessor for WeatherDataProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v91 = *(v225 + 48);
  }

LABEL_6:
  AlarmAttributes.metadata.getter();
  if (v289(v83, 1, v88) == 1)
  {
    sub_10002D02C(v83, &unk_100118100, &qword_1000D1250);
  }

  else
  {
    v93 = MTAlarmCustomContent.isSleepAlarm.getter();
    (*(v288 + 8))(v83, v88);
    if (v93 != 2 && (v93 & 1) != 0)
    {
      v94 = sub_10001FB00();
LABEL_12:
      v96 = v94;
      v97 = v95;
      goto LABEL_14;
    }
  }

  v94 = AlarmPresentationState.alarmLabel.getter();
  if (v95)
  {
    goto LABEL_12;
  }

  AlarmPresentationState.mode.getter();
  v96 = sub_10000AAEC(v76);
  v97 = v98;
  (*(v234 + 8))(v76, v235);
LABEL_14:
  *v49 = static HorizontalAlignment.leading.getter();
  *(v49 + 1) = 0;
  v49[16] = 1;
  v99 = &v49[*(sub_1000032D4(&qword_100114B98, &qword_1000D1F00) + 44)];
  v293 = a1;
  sub_100014BCC(v91, a1, v96, v97, v99);

  KeyPath = swift_getKeyPath();
  v101 = &v49[*(sub_1000032D4(&qword_100114BA0, &qword_1000D1F08) + 36)];
  *v101 = KeyPath;
  *(v101 + 1) = 2;
  v101[16] = 0;
  if (qword_1001136A8 != -1)
  {
    swift_once();
  }

  v102 = qword_10011F6E0;
  v103 = swift_getKeyPath();
  v104 = &v49[*(v236 + 36)];
  *v104 = v103;
  v104[1] = v102;
  v105 = v303;
  v106 = *(v303 + 104);
  v107 = v296;
  LODWORD(v234) = enum case for DynamicTypeSize.large(_:);
  v108 = v297;
  v235 = v303 + 104;
  v233 = v106;
  v106(v296);
  sub_100029D04();

  v109 = v239;
  View.dynamicTypeSize(_:)();
  v110 = *(v105 + 8);
  v303 = v105 + 8;
  v236 = v110;
  v110(v107, v108);
  sub_10002D02C(v49, &qword_100114B48, &qword_1000D1EB0);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v111 = v292;
  (*(v240 + 32))(v292, v109, v241);
  v112 = &v111[*(v238 + 36)];
  v113 = v312;
  *(v112 + 4) = v311;
  *(v112 + 5) = v113;
  *(v112 + 6) = v313;
  v114 = v308;
  *v112 = v307;
  *(v112 + 1) = v114;
  v115 = v310;
  *(v112 + 2) = v309;
  *(v112 + 3) = v115;
  static Alignment.top.getter();
  _FrameLayout.init(width:height:alignment:)();
  v116 = v111;
  v117 = v294;
  sub_10002C7C4(v116, v294, &qword_100114B58, &qword_1000D1EC0);
  v118 = (v117 + *(v242 + 36));
  v119 = v315;
  *v118 = v314;
  v118[1] = v119;
  v118[2] = v316;
  v120 = v301;
  v121 = v293;
  v122 = (v293 + v301[10]);
  v123 = *v122;
  v124 = *(v122 + 1);
  LODWORD(v242) = v123;
  LOBYTE(v317) = v123;
  v241 = v124;
  *(&v317 + 1) = v124;
  v292 = sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.getter();
  v125 = v245;
  v126 = v288;
  if (v305)
  {
    v127 = v230;
    sub_10001D9E8(type metadata accessor for AlarmAlertFullScreenAmbient, v230);
    v128 = Font.platformFont(in:)();
    CapHeight = CTFontGetCapHeight(v128);

    (*(v231 + 8))(v127, v232);
  }

  else
  {
    CapHeight = 50.0;
  }

  v130 = v299;
  v131 = v237;
  v132 = v295;
  sub_10002C7C4(v294, v295, &qword_100114B60, &qword_1000D1EC8);
  v133 = (v132 + *(v125 + 36));
  *v133 = 0.0;
  v133[1] = CapHeight;
  AlarmAttributes.metadata.getter();
  if (v289(v131, 1, v88) == 1)
  {
    sub_10002D02C(v131, &unk_100118100, &qword_1000D1250);
  }

  else
  {
    MTAlarmCustomContent.isSleepAlarm.getter();
    (*(v126 + 8))(v131, v88);
  }

  v134 = v300;
  sub_100029EA0();
  v135 = v244;
  v136 = v295;
  View.hyphenationFactor(_:)();
  sub_10002D02C(v136, &qword_100114B68, &qword_1000D1ED0);
  v137 = v121 + v120[13];
  v138 = *v137;
  v139 = *(v137 + 8);
  LOBYTE(v317) = v138;
  *(&v317 + 1) = v139;
  State.wrappedValue.getter();
  if (v305)
  {
    v140 = 1.0;
  }

  else
  {
    v140 = 0.0;
  }

  v141 = v249;
  (*(v246 + 32))(v249, v135, v247);
  *(v141 + *(v243 + 36)) = v140;
  if (qword_100113748 != -1)
  {
    swift_once();
  }

  v142 = qword_10011F788;
  v143 = v250;
  sub_10002C7C4(v141, v250, &qword_100114B78, &qword_1000D1EE0);
  *(v143 + *(v248 + 36)) = v142;
  sub_100025564(v121, v130, type metadata accessor for AlarmAlertFullScreenAmbient);
  v144 = (*(v253 + 80) + 16) & ~*(v253 + 80);
  v294 = *(v253 + 80);
  v291 = v144 + v254;
  v145 = swift_allocObject();
  v295 = v144;
  sub_1000255CC(v130, v145 + v144, type metadata accessor for AlarmAlertFullScreenAmbient);
  v146 = v252;
  sub_10002C7C4(v143, v252, &qword_100114B80, &qword_1000D1EE8);
  v147 = (v146 + *(v251 + 36));
  *v147 = sub_10002A2B0;
  v147[1] = v145;
  v147[2] = 0;
  v147[3] = 0;
  v302 = v142;

  LocalizedStringKey.init(stringLiteral:)();
  sub_10002A2DC();
  View.accessibilityLabel(_:)();

  sub_10002D02C(v146, &qword_100114B88, &qword_1000D1EF0);
  static TimeZone.autoupdatingCurrent.getter();
  v148 = type metadata accessor for TimeZone();
  v149 = *(v148 - 8);
  v289 = *(v149 + 56);
  v290 = v148;
  v288 = v149 + 56;
  v289(v134, 0, 1);
  v150 = Text.init(dateFormatTemplate:timeZone:)();
  v152 = v151;
  v154 = v153;
  if (qword_1001136B0 != -1)
  {
    swift_once();
  }

  Font.monospacedDigit()();
  v156 = v256;
  v155 = v257;
  v157 = v258;
  (*(v257 + 104))(v256, enum case for Font._StylisticAlternative.three(_:), v258);
  Font._stylisticAlternative(_:)();

  (*(v155 + 8))(v156, v157);
  v158 = Text.font(_:)();
  v160 = v159;
  LOBYTE(v156) = v161;
  v163 = v162;

  sub_100025B0C(v150, v152, v154 & 1);

  *&v317 = v158;
  *(&v317 + 1) = v160;
  v164 = v156 & 1;
  LOBYTE(v318) = v156 & 1;
  *(&v318 + 1) = v163;
  v165 = v296;
  v166 = v297;
  v233(v296, v234, v297);
  v167 = v260;
  View.dynamicTypeSize(_:)();
  (v236)(v165, v166);
  sub_100025B0C(v158, v160, v164);

  static Alignment.bottomTrailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v168 = v267;
  (*(v263 + 32))(v267, v167, v268);
  v169 = &v168[*(v259 + 36)];
  v170 = v322;
  *(v169 + 4) = v321;
  *(v169 + 5) = v170;
  *(v169 + 6) = v323;
  v171 = v318;
  *v169 = v317;
  *(v169 + 1) = v171;
  v172 = v320;
  *(v169 + 2) = v319;
  *(v169 + 3) = v172;
  v173 = static Color.white.getter();
  v174 = swift_getKeyPath();
  v175 = v168;
  v176 = v266;
  sub_10002C7C4(v175, v266, &qword_100114AF0, &qword_1000D1E58);
  v177 = (v176 + *(v264 + 36));
  *v177 = v174;
  v177[1] = v173;
  v178 = swift_getKeyPath();
  v179 = v265;
  sub_10002C7C4(v176, v265, &qword_100114AF8, &qword_1000D1E60);
  v180 = v179 + *(v262 + 36);
  *v180 = v178;
  *(v180 + 8) = 1;
  *(v180 + 16) = 0;
  v181 = swift_getKeyPath();
  v182 = v179;
  v183 = v271;
  sub_10002C7C4(v182, v271, &qword_100114B00, &qword_1000D1E68);
  v184 = v183 + *(v261 + 36);
  *v184 = v181;
  *(v184 + 8) = 1;
  (*(v285 + 104))(v284, enum case for Color.RGBColorSpace.sRGBLinear(_:), v286);
  v185 = 0.0;
  v186 = Color.init(_:white:opacity:)();
  v187 = v183;
  v188 = v272;
  sub_10002C7C4(v187, v272, &qword_100114B08, &qword_1000D1E70);
  v189 = (v188 + *(v269 + 36));
  *v189 = v186;
  v189[1] = 0x3FF0000000000000;
  v189[2] = 0;
  v189[3] = 0;
  v190 = swift_getKeyPath();
  v191 = v188;
  v192 = v275;
  sub_10002C7C4(v191, v275, &qword_100114B10, &qword_1000D1E78);
  v193 = (v192 + *(v270 + 36));
  *v193 = v190;
  v193[1] = 0x3FE6666666666666;
  v305 = v242;
  v306 = v241;
  State.wrappedValue.getter();
  if (v304)
  {
    v194 = 0.0;
  }

  else
  {
    v194 = 50.0;
  }

  v195 = v192;
  v196 = v278;
  sub_10002C7C4(v195, v278, &qword_100114B18, &qword_1000D1E80);
  v197 = v196 + *(v273 + 36);
  *v197 = 0;
  *(v197 + 8) = v194;
  v198 = v293;
  v199 = v293 + v301[12];
  v200 = *v199;
  v201 = *(v199 + 8);
  v305 = v200;
  v306 = v201;
  State.wrappedValue.getter();
  if (v304)
  {
    v185 = 1.0;
  }

  v202 = v276;
  sub_10002C7C4(v196, v276, &qword_100114B20, &qword_1000D1E88);
  *(v202 + *(v277 + 36)) = v185;
  v203 = v279;
  sub_10002C7C4(v202, v279, &qword_100114B28, &qword_1000D1E90);
  *(v203 + *(v274 + 36)) = v302;
  v204 = v198;
  v205 = v299;
  sub_100025564(v204, v299, type metadata accessor for AlarmAlertFullScreenAmbient);
  v206 = swift_allocObject();
  sub_1000255CC(v205, v206 + v295, type metadata accessor for AlarmAlertFullScreenAmbient);
  v207 = v281;
  sub_10002C7C4(v203, v281, &qword_100114B30, &qword_1000D1E98);
  v208 = (v207 + *(v280 + 36));
  *v208 = sub_10002A4F0;
  v208[1] = v206;
  v208[2] = 0;
  v208[3] = 0;

  v209 = v300;
  static TimeZone.autoupdatingCurrent.getter();
  (v289)(v209, 0, 1, v290);
  v210 = Text.init(dateFormatTemplate:timeZone:)();
  v212 = v211;
  LOBYTE(v205) = v213;
  sub_10002A51C();
  v214 = v282;
  View.accessibilityLabel(_:)();
  sub_100025B0C(v210, v212, v205 & 1);

  sub_10002D02C(v207, &qword_100114B38, &qword_1000D1EA0);
  v215 = v298;
  v216 = v255;
  sub_10002CFC4(v298, v255, &qword_100114B90, &qword_1000D1EF8);
  v217 = v283;
  sub_10002CFC4(v214, v283, &qword_100114B40, &qword_1000D1EA8);
  v218 = v287;
  sub_10002CFC4(v216, v287, &qword_100114B90, &qword_1000D1EF8);
  v219 = sub_1000032D4(&qword_100114C58, &qword_1000D1F50);
  v220 = v218 + *(v219 + 48);
  *v220 = 0;
  *(v220 + 8) = 1;
  sub_10002CFC4(v217, v218 + *(v219 + 64), &qword_100114B40, &qword_1000D1EA8);
  sub_10002D02C(v214, &qword_100114B40, &qword_1000D1EA8);
  sub_10002D02C(v215, &qword_100114B90, &qword_1000D1EF8);
  sub_10002D02C(v217, &qword_100114B40, &qword_1000D1EA8);
  return sub_10002D02C(v216, &qword_100114B90, &qword_1000D1EF8);
}

uint64_t sub_100014BCC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1000032D4(&qword_100114C70, &qword_1000D1F88);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v58 - v12;
  v14 = sub_1000032D4(&qword_100114C78, &qword_1000D1F90);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v58 - v16;
  v66 = sub_1000032D4(&qword_100114C80, &qword_1000D1F98);
  v18 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v65 = &v58 - v19;
  v20 = sub_1000032D4(&qword_100114C88, &qword_1000D1FA0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  __chkstk_darwin(v22);
  if (a1)
  {
    v60 = a3;
    v61 = v24;
    v25 = &v58 - v23;
    v26 = static VerticalAlignment.center.getter();
    sub_10001523C(a2, &v79);
    v58 = v79;
    v62 = v14;
    v63 = a5;
    v27 = v80;
    v28 = BYTE8(v80);
    v29 = v81;
    v64 = v10;
    v73 = 1;
    v72 = BYTE8(v80);
    v30 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    v74 = v26;
    LOBYTE(v75[0]) = 1;
    *(v75 + 8) = v58;
    *(&v75[1] + 1) = v27;
    LOBYTE(v76) = v28;
    *(&v76 + 1) = v29;
    *&v77 = KeyPath;
    *(&v77 + 1) = v30;
    *v25 = static VerticalAlignment.center.getter();
    *(v25 + 1) = 0;
    v25[16] = 1;
    v59 = v25;
    *&v58 = &v25[*(sub_1000032D4(&qword_100114CA8, &qword_1000D1FB0) + 44)];
    *&v79 = v60;
    *(&v79 + 1) = a4;
    sub_100025FB4();

    v32 = Text.init<A>(_:)();
    v34 = v33;
    LOBYTE(v30) = v35;
    v36 = [objc_opt_self() mtOrange];
    Color.init(uiColor:)();
    v37 = Text.foregroundColor(_:)();
    v60 = v17;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    sub_100025B0C(v32, v34, v30 & 1);

    *&v79 = v37;
    *(&v79 + 1) = v39;
    LOBYTE(v80) = v41 & 1;
    *(&v80 + 1) = v43;
    v44 = v58;
    View.lineLimit(_:reservesSpace:)();
    sub_100025B0C(v37, v39, v41 & 1);

    *(v44 + *(sub_1000032D4(&qword_100114CB0, &qword_1000D1FB8) + 36)) = 256;
    v69 = v75[1];
    v70 = v76;
    v71 = v77;
    v67 = v74;
    v68 = v75[0];
    v45 = &qword_1000D1FA0;
    v46 = v59;
    v47 = v61;
    sub_10002CFC4(v59, v61, &qword_100114C88, &qword_1000D1FA0);
    v48 = v70;
    v78[2] = v69;
    v78[3] = v70;
    v49 = v71;
    v78[4] = v71;
    v51 = v67;
    v50 = v68;
    v78[0] = v67;
    v78[1] = v68;
    v52 = v65;
    *(v65 + 2) = v69;
    v52[3] = v48;
    v52[4] = v49;
    *v52 = v51;
    v52[1] = v50;
    v53 = sub_1000032D4(&qword_100114CB8, &qword_1000D1FC0);
    sub_10002CFC4(v47, v52 + *(v53 + 48), &qword_100114C88, &qword_1000D1FA0);
    sub_10002CFC4(&v74, &v79, &qword_100114CC0, &qword_1000D1FC8);
    sub_10002CFC4(v78, &v79, &qword_100114CC0, &qword_1000D1FC8);
    sub_10002D02C(v47, &qword_100114C88, &qword_1000D1FA0);
    v81 = v69;
    v82 = v70;
    v83 = v71;
    v79 = v67;
    v80 = v68;
    sub_10002D02C(&v79, &qword_100114CC0, &qword_1000D1FC8);
    sub_10002CFC4(v52, v60, &qword_100114C80, &qword_1000D1F98);
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100114C98, &qword_100114C80, &qword_1000D1F98);
    sub_10002DAD8(&qword_100114CA0, &qword_100114C70, &qword_1000D1F88);
    _ConditionalContent<>.init(storage:)();
    sub_10002D02C(&v74, &qword_100114CC0, &qword_1000D1FC8);
    sub_10002D02C(v52, &qword_100114C80, &qword_1000D1F98);
    v54 = v46;
    v55 = &qword_100114C88;
  }

  else
  {
    *v13 = static VerticalAlignment.firstTextLineCenter.getter();
    *(v13 + 1) = 0x4020000000000000;
    v13[16] = 0;
    v56 = sub_1000032D4(&qword_100114C90, &qword_1000D1FA8);
    sub_100015458(a3, a4, a2, &v13[*(v56 + 44)]);
    v45 = &qword_1000D1F88;
    sub_10002CFC4(v13, v17, &qword_100114C70, &qword_1000D1F88);
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100114C98, &qword_100114C80, &qword_1000D1F98);
    sub_10002DAD8(&qword_100114CA0, &qword_100114C70, &qword_1000D1F88);
    _ConditionalContent<>.init(storage:)();
    v54 = v13;
    v55 = &qword_100114C70;
  }

  return sub_10002D02C(v54, v55, v45);
}

uint64_t sub_10001523C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AlarmAlertFullScreenAmbient(0) + 60));
  v4 = *v3;
  v5 = v3[1];
  sub_1000032D4(&qword_100114C60, &qword_1000D1F58);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_100025228(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v17 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName);
  v7 = *(v17 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName + 8);

  if (v7)
  {
    v7 = Image.init(systemName:)();
  }

  State.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v17 + 96);
  v8 = *(v17 + 104);

  sub_100025FB4();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  LOBYTE(v9) = v13;
  v15 = v14;

  LOBYTE(v9) = v9 & 1;
  sub_100025AFC(v10, v12, v9);

  *a2 = v7;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v9;
  *(a2 + 32) = v15;
  sub_100025B0C(v10, v12, v9);
}

uint64_t sub_100015458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1000032D4(&qword_100114CC8, &qword_1000D2020);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  v15 = static Color.secondary.getter();
  type metadata accessor for AlarmAlertAnimation();
  v16 = swift_allocObject();
  *v14 = static HorizontalAlignment.leading.getter();
  *(v14 + 1) = 0x4010000000000000;
  v14[16] = 0;
  v17 = sub_1000032D4(&qword_100114CD0, &qword_1000D2028);
  sub_100015608(a1, a2, a3, &v14[*(v17 + 44)]);
  sub_10002CFC4(v14, v12, &qword_100114CC8, &qword_1000D2020);
  *a4 = v15;
  a4[1] = 0x4047800000000000;
  a4[2] = v16;
  v18 = sub_1000032D4(&qword_100114CD8, &qword_1000D2030);
  sub_10002CFC4(v12, a4 + *(v18 + 48), &qword_100114CC8, &qword_1000D2020);

  sub_10002D02C(v14, &qword_100114CC8, &qword_1000D2020);
  sub_10002D02C(v12, &qword_100114CC8, &qword_1000D2020);
}

uint64_t sub_100015608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37[1] = a3;
  v7 = sub_1000032D4(&qword_100114CE0, &qword_1000D2038);
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  __chkstk_darwin(v7);
  v10 = v37 - v9;
  v11 = sub_1000032D4(&qword_100114CE8, &qword_1000D2040);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v37 - v16;
  v43 = a1;
  v44 = a2;
  sub_100025FB4();

  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Color.secondary.getter();
  v39 = Text.foregroundColor(_:)();
  v40 = v23;
  v25 = v24;
  v38 = v26;

  sub_100025B0C(v18, v20, v22 & 1);

  v27 = AlarmPresentationState.bundleID.getter();
  if (!v28)
  {
    goto LABEL_7;
  }

  if (v27 != 0xD000000000000015 || v28 != 0x80000001000D7F20)
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      v29 = 1;
      goto LABEL_8;
    }

LABEL_7:
    *v10 = static VerticalAlignment.center.getter();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v31 = sub_1000032D4(&qword_100114CF0, &qword_1000D2048);
    sub_100015960(&v10[*(v31 + 44)]);
    sub_10002C7C4(v10, v17, &qword_100114CE0, &qword_1000D2038);
    v29 = 0;
    goto LABEL_8;
  }

  v29 = 1;
LABEL_8:
  (*(v41 + 56))(v17, v29, 1, v42);
  sub_10002CFC4(v17, v15, &qword_100114CE8, &qword_1000D2040);
  v33 = v39;
  v32 = v40;
  *a4 = v39;
  *(a4 + 8) = v25;
  v34 = v38 & 1;
  *(a4 + 16) = v38 & 1;
  *(a4 + 24) = v32;
  v35 = sub_1000032D4(&qword_100114CF8, &qword_1000D2050);
  sub_10002CFC4(v15, a4 + *(v35 + 48), &qword_100114CE8, &qword_1000D2040);
  sub_100025AFC(v33, v25, v34);

  sub_10002D02C(v17, &qword_100114CE8, &qword_1000D2040);
  sub_10002D02C(v15, &qword_100114CE8, &qword_1000D2040);
  sub_100025B0C(v33, v25, v34);
}

uint64_t sub_100015960@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_1000032D4(&qword_100114310, &qword_1000D1590);
  v26 = *(v1 - 8);
  v27 = v1;
  v2 = *(v26 + 64);
  __chkstk_darwin(v1);
  v4 = &v26 - v3;
  v5 = AlarmPresentationState.localizedAppName.getter();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (v6)
  {
    v8 = v6;
  }

  v29 = v7;
  v30 = v8;
  sub_100025FB4();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Color.secondary.getter();
  Color.opacity(_:)();

  v14 = Text.foregroundColor(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_100025B0C(v9, v11, v13 & 1);

  v29 = v14;
  v30 = v16;
  v18 &= 1u;
  v31 = v18;
  v32 = v20;
  View.lineLimit(_:reservesSpace:)();
  sub_100025B0C(v14, v16, v18);

  v21 = static Font.title3.getter();
  KeyPath = swift_getKeyPath();
  v23 = v28;
  (*(v26 + 32))(v28, v4, v27);
  result = sub_1000032D4(&qword_100114318, &qword_1000D1598);
  v25 = (v23 + *(result + 36));
  *v25 = KeyPath;
  v25[1] = v21;
  return result;
}

uint64_t sub_100015B70()
{
  if (qword_100113718 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F750);
  withAnimation<A>(_:_:)();
  if (qword_100113720 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F758);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_100015CA4()
{
  if (qword_100113708 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F740);
  withAnimation<A>(_:_:)();
  if (qword_100113710 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F748);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_100015DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x403C000000000000;
  *(a2 + 16) = 0;
  v4 = sub_1000032D4(&qword_100114AD8, &qword_1000D1E40);
  return sub_100015E30(a1, a2 + *(v4 + 44));
}

uint64_t sub_100015E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v161 = a2;
  v3 = type metadata accessor for SlideTransition();
  v159 = *(v3 - 8);
  v160 = v3;
  v4 = *(v159 + 64);
  v5 = __chkstk_darwin(v3);
  v157 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v158 = &v127 - v7;
  v8 = type metadata accessor for AlarmPresentation.Alert();
  v149 = *(v8 - 8);
  v150 = v8;
  v9 = *(v149 + 64);
  __chkstk_darwin(v8);
  v148 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for AlarmPresentation();
  v146 = *(v147 - 8);
  v11 = *(v146 + 64);
  __chkstk_darwin(v147);
  v145 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for AlarmKitStopButton(0);
  v13 = *(*(v151 - 8) + 64);
  __chkstk_darwin(v151);
  v154 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_1000032D4(&qword_100114280, &qword_1000D1520);
  v15 = *(*(v153 - 8) + 64);
  v16 = __chkstk_darwin(v153);
  v156 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v152 = &v127 - v19;
  __chkstk_darwin(v18);
  v155 = &v127 - v20;
  v21 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v143 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v135 = &v127 - v25;
  v164 = type metadata accessor for AlarmPresentationState();
  v169 = *(v164 - 8);
  v26 = *(v169 + 64);
  v27 = __chkstk_darwin(v164);
  v167 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v134 = &v127 - v29;
  v136 = type metadata accessor for AlarmKitButton(0);
  v30 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v139 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000032D4(&qword_1001142D8, &qword_1000D1568);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v138 = &v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v137 = &v127 - v37;
  v38 = sub_1000032D4(&qword_1001141F8, &qword_1000D14C8);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v142 = &v127 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v127 - v42;
  v44 = type metadata accessor for AlarmButton();
  v165 = *(v44 - 8);
  v166 = v44;
  v45 = *(v165 + 64);
  v46 = __chkstk_darwin(v44);
  v140 = &v127 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v141 = &v127 - v48;
  v49 = type metadata accessor for AlarmPresentationState.Mode();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49);
  v53 = &v127 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000032D4(&qword_100114AE0, &qword_1000D1E48);
  v55 = *(*(v54 - 8) + 64);
  v56 = __chkstk_darwin(v54 - 8);
  v144 = &v127 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v59 = &v127 - v58;
  v60 = *(type metadata accessor for AlarmAlertFullScreenAmbient(0) + 20);
  AlarmPresentationState.mode.getter();
  v162 = a1;
  v168 = v60;
  v61 = sub_10000F1FC(v53);
  v62 = *(v50 + 8);
  v62(v53, v49);
  v63 = v169;
  v163 = v59;
  if (v61 == 5)
  {
    goto LABEL_4;
  }

  v133 = v33;
  v132 = v32;
  v64 = v162;
  AlarmPresentationState.mode.getter();
  sub_10000F8DC(v53, v43);
  v62(v53, v49);
  v65 = v165;
  v66 = v166;
  if ((*(v165 + 48))(v43, 1, v166) == 1)
  {
    sub_10002D02C(v43, &qword_1001141F8, &qword_1000D14C8);
    v63 = v169;
    v59 = v163;
    v32 = v132;
    v33 = v133;
LABEL_4:
    (*(v33 + 56))(v59, 1, 1, v32);
    v67 = *(v63 + 16);
    v68 = v162;
    v69 = v164;
    v70 = v143;
    goto LABEL_11;
  }

  v71 = *(v65 + 32);
  v72 = v141;
  v130 = v65 + 32;
  v129 = v71;
  v71(v141, v43, v66);
  v73 = v134;
  v131 = *(v169 + 16);
  v131(v134, v64, v164);
  (*(v65 + 16))(v140, v72, v66);
  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v74 = v135;
  AlarmAttributes.metadata.getter();
  v75 = type metadata accessor for MTAlarmCustomContent();
  v76 = *(v75 - 8);
  v77 = (*(v76 + 48))(v74, 1, v75);
  if (v77 == 1)
  {
    sub_10002D02C(v74, &unk_100118100, &qword_1000D1250);
    v128 = 0;
  }

  else
  {
    v128 = MTAlarmCustomContent.type.getter();
    (*(v76 + 8))(v74, v75);
  }

  v78 = v139;
  v79 = v77 == 1;
  v68 = v162;
  v80 = AlarmAttributes.tintColor.getter();
  (*(v169 + 32))(v78, v73, v164);
  v81 = v136;
  *(v78 + *(v136 + 20)) = v61;
  v82 = v166;
  v129(v78 + v81[6], v140, v166);
  v83 = v78 + v81[7];
  *v83 = v128;
  *(v83 + 8) = v79;
  *(v78 + v81[8]) = v80;
  *(v78 + v81[9]) = 1;
  v84 = (v78 + v81[10]);
  *v84 = &type metadata for AnimationConstants.RightButtonAnimation;
  v84[1] = &off_100103B88;
  v85 = (v78 + v81[11]);
  v86 = objc_opt_self();
  v87 = [v86 mtOrange];
  v88 = Color.init(uiColor:)();
  v89 = [v86 mtOrange];
  Color.init(uiColor:)();
  v90 = Color.opacity(_:)();

  v91 = static Color.white.getter();
  static Color.white.getter();
  v92 = v78;
  v93 = Color.opacity(_:)();

  v85[3] = &type metadata for StandardSessionUiConfig;
  v85[4] = &off_1001035E8;
  v94 = swift_allocObject();
  *v85 = v94;
  v94[2] = v88;
  v94[3] = v90;
  v94[4] = v91;
  v94[5] = v93;
  if (qword_100113748 != -1)
  {
    swift_once();
  }

  v95 = qword_10011F788;
  (*(v165 + 8))(v141, v82);
  v96 = v138;
  sub_100025564(v78, v138, type metadata accessor for AlarmKitButton);
  v97 = v132;
  *(v96 + *(v132 + 36)) = v95;

  sub_100025A9C(v92, type metadata accessor for AlarmKitButton);
  v98 = v96;
  v99 = v137;
  sub_10002C7C4(v98, v137, &qword_1001142D8, &qword_1000D1568);
  v100 = v99;
  v101 = v163;
  sub_10002C7C4(v100, v163, &qword_1001142D8, &qword_1000D1568);
  (*(v133 + 56))(v101, 0, 1, v97);
  v70 = v143;
  v69 = v164;
  v67 = v131;
LABEL_11:
  v102 = v69;
  v67(v167, v68);
  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  AlarmAttributes.metadata.getter();
  v103 = type metadata accessor for MTAlarmCustomContent();
  v104 = *(v103 - 8);
  v105 = (*(v104 + 48))(v70, 1, v103);
  if (v105 == 1)
  {
    sub_10002D02C(v70, &unk_100118100, &qword_1000D1250);
    v106 = 0;
  }

  else
  {
    v106 = MTAlarmCustomContent.type.getter();
    (*(v104 + 8))(v70, v103);
  }

  v107 = v145;
  AlarmAttributes.presentation.getter();
  v108 = v148;
  AlarmPresentation.alert.getter();
  (*(v146 + 8))(v107, v147);
  v109 = v142;
  AlarmPresentation.Alert.secondaryButton.getter();
  (*(v149 + 8))(v108, v150);
  LODWORD(v108) = (*(v165 + 48))(v109, 1, v166);
  sub_10002D02C(v109, &qword_1001141F8, &qword_1000D14C8);
  if (v108 == 1)
  {
    v110 = AlarmAttributes.tintColor.getter();
  }

  else
  {
    v110 = 0;
  }

  v111 = v154;
  (*(v169 + 32))(v154, v167, v102);
  v112 = v151;
  v113 = v111 + *(v151 + 20);
  *v113 = v106;
  *(v113 + 8) = v105 == 1;
  *(v111 + v112[6]) = v110;
  *(v111 + v112[7]) = 1;
  v114 = (v111 + v112[8]);
  *v114 = &type metadata for AnimationConstants.LeftButtonAnimation;
  v114[1] = &off_100103BB0;
  v115 = v158;
  SlideTransition.init()();
  v117 = v159;
  v116 = v160;
  (*(v159 + 16))(v157, v115, v160);
  sub_100025228(&qword_1001142F0, &type metadata accessor for SlideTransition);
  v118 = AnyTransition.init<A>(_:)();
  (*(v117 + 8))(v115, v116);
  v119 = v152;
  sub_1000255CC(v111, v152, type metadata accessor for AlarmKitStopButton);
  *(v119 + *(v153 + 36)) = v118;
  v120 = v155;
  sub_10002C7C4(v119, v155, &qword_100114280, &qword_1000D1520);
  v121 = v163;
  v122 = v144;
  sub_10002CFC4(v163, v144, &qword_100114AE0, &qword_1000D1E48);
  v123 = v156;
  sub_10002CFC4(v120, v156, &qword_100114280, &qword_1000D1520);
  v124 = v161;
  sub_10002CFC4(v122, v161, &qword_100114AE0, &qword_1000D1E48);
  v125 = sub_1000032D4(&qword_100114AE8, &qword_1000D1E50);
  sub_10002CFC4(v123, v124 + *(v125 + 48), &qword_100114280, &qword_1000D1520);
  sub_10002D02C(v120, &qword_100114280, &qword_1000D1520);
  sub_10002D02C(v121, &qword_100114AE0, &qword_1000D1E48);
  sub_10002D02C(v123, &qword_100114280, &qword_1000D1520);
  return sub_10002D02C(v122, &qword_100114AE0, &qword_1000D1E48);
}

uint64_t sub_100016E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100025564(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmAlertFullScreenAmbient);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1000255CC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AlarmAlertFullScreenAmbient);
  *a2 = sub_100029CD0;
  *(a2 + 8) = v7;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_100016FB4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000032D4(&qword_100113780, &qword_1000D08D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for AlarmAlertCoverSheet(0);
  sub_10002CFC4(v1 + *(v12 + 32), v11, &qword_100113780, &qword_1000D08D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10002C7C4(v11, a1, &qword_100113860, &qword_1000D0290);
  }

  v14 = *v11;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100017218@<X0>(uint64_t a1@<X8>)
{
  v19[0] = a1;
  v1 = sub_1000032D4(&qword_100115E90, &qword_1000D1430);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v19 - v3;
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000032D4(&qword_100114148, &qword_1000D1438);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v19 - v13;
  v15 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  sub_100025228(&qword_100114150, &type metadata accessor for NSNotificationCenter.Publisher);
  Publisher.map<A>(_:)();
  (*(v6 + 8))(v9, v5);
  sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v19[1] = v16;
  v17 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_10002DAD8(&qword_100114158, &qword_100114148, &qword_1000D1438);
  sub_100026A94();
  Publisher.receive<A>(on:options:)();
  sub_10002D02C(v4, &qword_100115E90, &qword_1000D1430);

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_10001755C@<X0>(_BYTE *a1@<X8>)
{
  result = static AccessibilitySettings.prefersActionSliderAlternative.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100017588()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000032D4(&qword_1001141B0, &qword_1000D1488);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_1000032D4(&qword_100113860, &qword_1000D0290);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v26 - v15;
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  sub_100016FB4(&v26 - v17);
  (*(v1 + 104))(v16, enum case for UserInterfaceSizeClass.compact(_:), v0);
  (*(v1 + 56))(v16, 0, 1, v0);
  v19 = *(v5 + 56);
  sub_10002CFC4(v18, v8, &qword_100113860, &qword_1000D0290);
  sub_10002CFC4(v16, &v8[v19], &qword_100113860, &qword_1000D0290);
  v20 = *(v1 + 48);
  if (v20(v8, 1, v0) != 1)
  {
    sub_10002CFC4(v8, v13, &qword_100113860, &qword_1000D0290);
    if (v20(&v8[v19], 1, v0) != 1)
    {
      v22 = &v8[v19];
      v23 = v27;
      (*(v1 + 32))(v27, v22, v0);
      sub_100025228(&qword_1001141B8, &type metadata accessor for UserInterfaceSizeClass);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v1 + 8);
      v24(v23, v0);
      sub_10002D02C(v16, &qword_100113860, &qword_1000D0290);
      sub_10002D02C(v18, &qword_100113860, &qword_1000D0290);
      v24(v13, v0);
      sub_10002D02C(v8, &qword_100113860, &qword_1000D0290);
      return v21 & 1;
    }

    sub_10002D02C(v16, &qword_100113860, &qword_1000D0290);
    sub_10002D02C(v18, &qword_100113860, &qword_1000D0290);
    (*(v1 + 8))(v13, v0);
    goto LABEL_6;
  }

  sub_10002D02C(v16, &qword_100113860, &qword_1000D0290);
  sub_10002D02C(v18, &qword_100113860, &qword_1000D0290);
  if (v20(&v8[v19], 1, v0) != 1)
  {
LABEL_6:
    sub_10002D02C(v8, &qword_1001141B0, &qword_1000D1488);
    v21 = 0;
    return v21 & 1;
  }

  sub_10002D02C(v8, &qword_100113860, &qword_1000D0290);
  v21 = 1;
  return v21 & 1;
}

uint64_t AlarmAlertCoverSheet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AlarmAlertCoverSheet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_100025564(v1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmAlertCoverSheet);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1000255CC(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AlarmAlertCoverSheet);
  v8 = sub_1000032D4(&qword_1001139D8, &qword_1000D08D8);
  sub_100017218(a1 + *(v8 + 52));
  sub_100025564(v1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmAlertCoverSheet);
  v9 = swift_allocObject();
  result = sub_1000255CC(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6, type metadata accessor for AlarmAlertCoverSheet);
  *a1 = sub_100017D74;
  *(a1 + 8) = v7;
  *(a1 + 16) = 1;
  v11 = (a1 + *(v8 + 56));
  *v11 = sub_10001B81C;
  v11[1] = v9;
  return result;
}

uint64_t sub_100017BA4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  GeometryProxy.size.getter();
  v5 = v4;
  *a2 = static Alignment.center.getter();
  a2[1] = v6;
  v7 = sub_1000032D4(&qword_100114160, &qword_1000D1440);
  sub_100017DA0(a1, a2 + *(v7 + 44), v5);
  v8 = static Color.black.getter();
  LOBYTE(a1) = static Edge.Set.all.getter();
  v9 = a2 + *(sub_1000032D4(&qword_100114168, &qword_1000D1448) + 36);
  *v9 = v8;
  v9[8] = a1;
  LOBYTE(v8) = static Edge.Set.vertical.getter();
  *(a2 + *(sub_1000032D4(&qword_100114170, &qword_1000D1450) + 36)) = v8;
  v10 = *(sub_1000032D4(&qword_100114178, &qword_1000D1458) + 36);
  v11 = enum case for ColorScheme.dark(_:);
  v12 = type metadata accessor for ColorScheme();
  v15 = *(v12 - 8);
  (*(v15 + 104))(a2 + v10, v11, v12);
  v13 = *(v15 + 56);

  return v13(a2 + v10, 0, 1, v12);
}

uint64_t sub_100017D28(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100017DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  v42 = a2;
  v5 = sub_1000032D4(&qword_100114180, &qword_1000D1460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v41 - v7;
  v41 = sub_1000032D4(&qword_100114188, &qword_1000D1468);
  v9 = *(v41 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v41);
  v12 = &v41 - v11;
  v13 = sub_1000032D4(&qword_100114190, &qword_1000D1470);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v41 - v16;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v18 = sub_1000032D4(&qword_100114198, &qword_1000D1478);
  sub_100018098(a1, &v8[*(v18 + 44)], a3);
  static Edge.Set.horizontal.getter();
  sub_10002DAD8(&qword_1001141A0, &qword_100114180, &qword_1000D1460);
  View.scenePadding(_:)();
  sub_10002D02C(v8, &qword_100114180, &qword_1000D1460);
  v19 = static Edge.Set.horizontal.getter();
  sub_100017588();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v9 + 32))(v17, v12, v41);
  v28 = &v17[*(v14 + 44)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v42;
  sub_10002C7C4(v17, v42, &qword_100114190, &qword_1000D1470);
  result = sub_1000032D4(&qword_1001141A8, &qword_1000D1480);
  v40 = v38 + *(result + 36);
  *v40 = v29;
  *(v40 + 8) = v31;
  *(v40 + 16) = v33;
  *(v40 + 24) = v35;
  *(v40 + 32) = v37;
  *(v40 + 40) = 0;
  return result;
}

uint64_t sub_100018098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  v179 = a2;
  v178 = sub_1000032D4(&qword_1001141C0, &qword_1000D1490);
  v5 = *(*(v178 - 8) + 64);
  __chkstk_darwin(v178);
  v160 = &v149 - v6;
  v176 = sub_1000032D4(&qword_1001141C8, &qword_1000D1498);
  v7 = *(*(v176 - 8) + 64);
  __chkstk_darwin(v176);
  v177 = &v149 - v8;
  v154 = sub_1000032D4(&qword_1001141D0, &qword_1000D14A0);
  v9 = *(*(v154 - 8) + 64);
  v10 = __chkstk_darwin(v154);
  v157 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v156 = &v149 - v12;
  v13 = sub_1000032D4(&qword_1001141D8, &qword_1000D14A8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v150 = &v149 - v15;
  v149 = sub_1000032D4(&qword_1001141E0, &qword_1000D14B0);
  v16 = *(*(v149 - 8) + 64);
  v17 = __chkstk_darwin(v149);
  v153 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v151 = &v149 - v20;
  __chkstk_darwin(v19);
  v152 = &v149 - v21;
  v22 = sub_1000032D4(&qword_1001141E8, &qword_1000D14B8);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v155 = &v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v162 = (&v149 - v26);
  v175 = sub_1000032D4(&qword_1001141F0, &qword_1000D14C0);
  v27 = *(*(v175 - 8) + 64);
  __chkstk_darwin(v175);
  v159 = &v149 - v28;
  v29 = sub_1000032D4(&qword_1001141F8, &qword_1000D14C8);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v158 = &v149 - v31;
  v32 = type metadata accessor for AlarmButton();
  v163 = *(v32 - 8);
  v164 = v32;
  v33 = *(v163 + 64);
  __chkstk_darwin(v32);
  v161 = &v149 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for AlarmPresentationState.Mode();
  v171 = *(v182 - 8);
  v35 = *(v171 + 64);
  __chkstk_darwin(v182);
  v181 = &v149 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000032D4(&qword_100114200, &qword_1000D14D0);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v174 = &v149 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v173 = &v149 - v41;
  v42 = type metadata accessor for AlarmAlertCoverSheet(0);
  v166 = *(v42 - 8);
  v43 = *(v166 + 64);
  __chkstk_darwin(v42);
  v167 = v44;
  v169 = &v149 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000032D4(&qword_100114208, &qword_1000D14D8);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v48 = &v149 - v47;
  v49 = sub_1000032D4(&qword_100114210, &qword_1000D14E0);
  v50 = v49 - 8;
  v51 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v53 = &v149 - v52;
  v54 = sub_1000032D4(&qword_100114218, &qword_1000D14E8);
  v55 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v57 = &v149 - v56;
  v165 = sub_1000032D4(&qword_100114220, &qword_1000D14F0);
  v58 = *(*(v165 - 8) + 64);
  __chkstk_darwin(v165);
  v60 = &v149 - v59;
  v168 = sub_1000032D4(&qword_100114228, &qword_1000D14F8);
  v61 = *(*(v168 - 8) + 64);
  v62 = __chkstk_darwin(v168);
  v172 = &v149 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v66 = &v149 - v65;
  __chkstk_darwin(v64);
  v180 = &v149 - v67;
  *v48 = static HorizontalAlignment.center.getter();
  *(v48 + 1) = 0;
  v48[16] = 0;
  v68 = sub_1000032D4(&qword_100114230, &unk_1000D1500);
  sub_100019334(a1, &v48[*(v68 + 44)]);
  v170 = v42;
  v69 = *(v42 + 40);
  v70 = a1;
  v71 = (a1 + v69);
  v72 = *v71;
  v73 = *(v71 + 1);
  LOBYTE(v200) = v72;
  *(&v200 + 1) = v73;
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.getter();
  if (LOBYTE(v189))
  {
    v74 = 1.0;
  }

  else
  {
    v74 = 0.0;
  }

  sub_10002C7C4(v48, v53, &qword_100114208, &qword_1000D14D8);
  *&v53[*(v50 + 44)] = v74;
  if (qword_100113748 != -1)
  {
    swift_once();
  }

  v75 = qword_10011F788;
  sub_10002C7C4(v53, v57, &qword_100114210, &qword_1000D14E0);
  *&v57[*(v54 + 36)] = v75;
  v76 = v169;
  sub_100025564(v70, v169, type metadata accessor for AlarmAlertCoverSheet);
  v77 = (*(v166 + 80) + 16) & ~*(v166 + 80);
  v78 = swift_allocObject();
  sub_1000255CC(v76, v78 + v77, type metadata accessor for AlarmAlertCoverSheet);
  sub_10002C7C4(v57, v60, &qword_100114218, &qword_1000D14E8);
  v79 = &v60[*(v165 + 36)];
  *v79 = sub_100026AFC;
  v79[1] = v78;
  v79[2] = 0;
  v79[3] = 0;

  v80 = static Alignment.center.getter();
  v82 = v81;
  static Color.black.getter();
  v83 = v170;
  v84 = (v70 + *(v170 + 44));
  v85 = *v84;
  v86 = *(v84 + 1);
  *&v200 = v85;
  v169 = v86;
  *(&v200 + 1) = v86;
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  State.wrappedValue.getter();
  pow((fmax(v189, 0.3) + -0.3) / 0.7, 1.3);
  v87 = Color.opacity(_:)();

  sub_10002C7C4(v60, v66, &qword_100114220, &qword_1000D14F0);
  v88 = &v66[*(v168 + 36)];
  *v88 = v87;
  v88[1] = v80;
  v88[2] = v82;
  v89 = v180;
  sub_10002C7C4(v66, v180, &qword_100114228, &qword_1000D14F8);
  v90 = *(v83 + 20);
  v91 = v181;
  AlarmPresentationState.mode.getter();
  v92 = sub_10000F1FC(v91);
  v93 = *(v171 + 8);
  v93(v91, v182);
  v94 = v70;
  if (v92 == 5)
  {
    goto LABEL_9;
  }

  v95 = v181;
  AlarmPresentationState.mode.getter();
  v96 = v158;
  sub_10000F8DC(v95, v158);
  v93(v95, v182);
  v97 = v96;
  v99 = v163;
  v98 = v164;
  if ((*(v163 + 48))(v97, 1, v164) == 1)
  {
    sub_10002D02C(v97, &qword_1001141F8, &qword_1000D14C8);
LABEL_9:
    v100 = v160;
    sub_10001AABC(v160);
    sub_10002CFC4(v100, v177, &qword_1001141C0, &qword_1000D1490);
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100114240, &qword_1001141F0, &qword_1000D14C0);
    sub_100026B28();
    v101 = v173;
    _ConditionalContent<>.init(storage:)();
    sub_10002D02C(v100, &qword_1001141C0, &qword_1000D1490);
    goto LABEL_13;
  }

  v102 = *(v99 + 32);
  v103 = v161;
  v102(v161, v97, v98);
  v104 = static Axis.Set.horizontal.getter();
  v105 = v159;
  *v159 = v104;
  v106 = static VerticalAlignment.center.getter();
  v107 = v162;
  *v162 = v106;
  v107[1] = 0x4034000000000000;
  *(v107 + 16) = 0;
  v108 = v150;
  v182 = v94;
  sub_10001BDB4(v92, v103, v150);
  static Alignment.center.getter();
  if (a3 * 0.25 > 362.0)
  {
    static os_log_type_t.fault.getter();
    v109 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  v110 = sub_1000032D4(&qword_100114298, &qword_1000D1530);
  v111 = v162 + *(v110 + 44);
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v112 = v151;
  sub_10002C7C4(v108, v151, &qword_1001141D8, &qword_1000D14A8);
  v113 = (v112 + *(v149 + 36));
  v114 = v205;
  v113[4] = v204;
  v113[5] = v114;
  v113[6] = v206;
  v115 = v201;
  *v113 = v200;
  v113[1] = v115;
  v116 = v203;
  v113[2] = v202;
  v113[3] = v116;
  v117 = v152;
  sub_10002C7C4(v112, v152, &qword_1001141E0, &qword_1000D14B0);
  v118 = v153;
  sub_10002CFC4(v117, v153, &qword_1001141E0, &qword_1000D14B0);
  *v111 = 0;
  v111[8] = 0;
  v119 = sub_1000032D4(&qword_1001142A0, &qword_1000D1538);
  sub_10002CFC4(v118, &v111[*(v119 + 48)], &qword_1001141E0, &qword_1000D14B0);
  v120 = &v111[*(v119 + 64)];
  *v120 = 0;
  v120[8] = 0;
  sub_10002D02C(v117, &qword_1001141E0, &qword_1000D14B0);
  v121 = sub_10002D02C(v118, &qword_1001141E0, &qword_1000D14B0);
  __chkstk_darwin(v121);
  sub_1000032D4(&qword_1001142A8, &qword_1000D1540);
  sub_10002DAD8(&qword_1001142B0, &qword_1001142A8, &qword_1000D1540);
  v122 = v156;
  GlassEffectContainer.init(spacing:content:)();
  v123 = static Alignment.top.getter();
  v125 = v124;
  static Color.black.getter();
  v189 = v85;
  v190 = v169;
  State.wrappedValue.getter();
  v126 = fmax(*&v184, 0.3);
  v127 = &v105[*(sub_1000032D4(&qword_1001142B8, &qword_1000D1548) + 44)];
  pow((v126 + -0.3) / 0.7, 1.3);
  v128 = Color.opacity(_:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v129 = v207;
  v130 = v208;
  v131 = v209;
  v132 = v210;
  v133 = v211;
  v134 = v212;
  v199 = v208;
  v198 = v210;
  *&v184 = v128;
  *(&v184 + 1) = v207;
  LOBYTE(v185) = v208;
  *(&v185 + 1) = v209;
  LOBYTE(v186) = v210;
  *(&v186 + 1) = v211;
  *&v187 = v212;
  *(&v187 + 1) = v123;
  v188 = v125;
  v135 = v122 + *(v154 + 36);
  v136 = v187;
  *(v135 + 32) = v186;
  *(v135 + 48) = v136;
  *(v135 + 64) = v125;
  v137 = v185;
  *v135 = v184;
  *(v135 + 16) = v137;
  *&v189 = v128;
  v190 = v129;
  v191 = v130;
  v192 = v131;
  v193 = v132;
  v194 = v133;
  v195 = v134;
  v196 = v123;
  v197 = v125;
  sub_10002CFC4(&v184, &v183, &qword_1001142C0, &qword_1000D1550);
  sub_10002D02C(&v189, &qword_1001142C0, &qword_1000D1550);
  v138 = v162;
  v139 = v155;
  sub_10002CFC4(v162, v155, &qword_1001141E8, &qword_1000D14B8);
  v140 = v157;
  sub_10002CFC4(v122, v157, &qword_1001141D0, &qword_1000D14A0);
  sub_10002CFC4(v139, v127, &qword_1001141E8, &qword_1000D14B8);
  v141 = sub_1000032D4(&qword_1001142C8, &qword_1000D1558);
  sub_10002CFC4(v140, v127 + *(v141 + 48), &qword_1001141D0, &qword_1000D14A0);
  sub_10002D02C(v122, &qword_1001141D0, &qword_1000D14A0);
  sub_10002D02C(v138, &qword_1001141E8, &qword_1000D14B8);
  sub_10002D02C(v140, &qword_1001141D0, &qword_1000D14A0);
  sub_10002D02C(v139, &qword_1001141E8, &qword_1000D14B8);
  v142 = v159;
  sub_10002CFC4(v159, v177, &qword_1001141F0, &qword_1000D14C0);
  swift_storeEnumTagMultiPayload();
  sub_10002DAD8(&qword_100114240, &qword_1001141F0, &qword_1000D14C0);
  sub_100026B28();
  v101 = v173;
  _ConditionalContent<>.init(storage:)();
  sub_10002D02C(v142, &qword_1001141F0, &qword_1000D14C0);
  (*(v163 + 8))(v161, v164);
  v89 = v180;
LABEL_13:
  v143 = v172;
  sub_10002CFC4(v89, v172, &qword_100114228, &qword_1000D14F8);
  v144 = v174;
  sub_10002CFC4(v101, v174, &qword_100114200, &qword_1000D14D0);
  v145 = v179;
  sub_10002CFC4(v143, v179, &qword_100114228, &qword_1000D14F8);
  v146 = sub_1000032D4(&qword_100114290, &qword_1000D1528);
  v147 = v145 + *(v146 + 48);
  *v147 = 0;
  *(v147 + 8) = 1;
  sub_10002CFC4(v144, v145 + *(v146 + 64), &qword_100114200, &qword_1000D14D0);
  sub_10002D02C(v101, &qword_100114200, &qword_1000D14D0);
  sub_10002D02C(v89, &qword_100114228, &qword_1000D14F8);
  sub_10002D02C(v144, &qword_100114200, &qword_1000D14D0);
  return sub_10002D02C(v143, &qword_100114228, &qword_1000D14F8);
}

uint64_t sub_100019334@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v220 = a2;
  v3 = sub_1000032D4(&qword_100114310, &qword_1000D1590);
  v213 = *(v3 - 8);
  v214 = v3;
  v4 = *(v213 + 64);
  __chkstk_darwin(v3);
  v211 = &v182 - v5;
  v209 = sub_1000032D4(&qword_100114318, &qword_1000D1598);
  v6 = *(*(v209 - 8) + 64);
  __chkstk_darwin(v209);
  v212 = &v182 - v7;
  v210 = sub_1000032D4(&qword_100114320, &qword_1000D15A0);
  v8 = *(*(v210 - 8) + 64);
  __chkstk_darwin(v210);
  v215 = &v182 - v9;
  v10 = sub_1000032D4(&qword_100114328, &qword_1000D15A8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v216 = &v182 - v12;
  v13 = sub_1000032D4(&qword_100114330, &qword_1000D15B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v219 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v218 = &v182 - v17;
  v18 = type metadata accessor for Color.RGBColorSpace();
  v205 = *(v18 - 8);
  v206 = v18;
  v19 = *(v205 + 64);
  __chkstk_darwin(v18);
  v204 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DynamicTypeSize();
  v197 = *(v21 - 8);
  v198 = v21;
  v22 = *(v197 + 64);
  __chkstk_darwin(v21);
  v196 = &v182 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000032D4(&qword_100114338, &qword_1000D15B8);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v222 = &v182 - v26;
  v27 = sub_1000032D4(&qword_100114340, &qword_1000D15C0);
  v194 = *(v27 - 8);
  v195 = v27;
  v28 = *(v194 + 64);
  __chkstk_darwin(v27);
  v192 = &v182 - v29;
  v189 = sub_1000032D4(&qword_100114348, &qword_1000D15C8);
  v30 = *(*(v189 - 8) + 64);
  __chkstk_darwin(v189);
  v191 = &v182 - v31;
  v188 = sub_1000032D4(&qword_100114350, &qword_1000D15D0);
  v32 = *(*(v188 - 8) + 64);
  __chkstk_darwin(v188);
  v190 = &v182 - v33;
  v187 = sub_1000032D4(&qword_100114358, &qword_1000D15D8);
  v34 = *(*(v187 - 8) + 64);
  __chkstk_darwin(v187);
  v193 = &v182 - v35;
  v199 = sub_1000032D4(&qword_100114360, &qword_1000D15E0);
  v36 = *(*(v199 - 8) + 64);
  __chkstk_darwin(v199);
  v201 = &v182 - v37;
  v38 = sub_1000032D4(&qword_100114368, &qword_1000D15E8);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v203 = &v182 - v40;
  v202 = sub_1000032D4(&qword_100114370, &qword_1000D15F0);
  v41 = *(*(v202 - 8) + 64);
  v42 = __chkstk_darwin(v202);
  v208 = &v182 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v200 = &v182 - v45;
  __chkstk_darwin(v44);
  v223 = &v182 - v46;
  v47 = type metadata accessor for AlarmPresentationState.Mode();
  v185 = *(v47 - 8);
  v48 = *(v185 + 64);
  __chkstk_darwin(v47);
  v184 = &v182 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50 - 8);
  v53 = &v182 - v52;
  v54 = sub_1000032D4(&qword_100114378, &qword_1000D15F8);
  v55 = *(*(v54 - 8) + 64);
  v56 = __chkstk_darwin(v54 - 8);
  v207 = &v182 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v224 = &v182 - v58;
  v59 = static VerticalAlignment.firstTextLineCenter.getter();
  LOBYTE(v225) = 0;
  sub_10001A754(&v231);
  v238 = v232[1];
  v239[0] = v232[2];
  *(v239 + 9) = *(&v232[2] + 9);
  v236 = v231;
  v237 = v232[0];
  v240[2] = v232[1];
  v241[0] = v232[2];
  *(v241 + 9) = *(&v232[2] + 9);
  v240[0] = v231;
  v240[1] = v232[0];
  sub_10002CFC4(&v236, v229, &qword_100114380, &qword_1000D1600);
  sub_10002D02C(v240, &qword_100114380, &qword_1000D1600);
  *(&v235[1] + 7) = v237;
  *(&v235[2] + 7) = v238;
  *(&v235[3] + 7) = v239[0];
  v235[4] = *(v239 + 9);
  *(v235 + 7) = v236;
  v60 = v225;
  v61 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  v62 = sub_100017588();
  v217 = v10;
  if (v62)
  {
    static Font.Weight.medium.getter();
    v63 = type metadata accessor for Font.Design();
    (*(*(v63 - 8) + 56))(v53, 1, 1, v63);
  }

  else
  {
    static Font.Weight.semibold.getter();
    v183 = v64;
    v65 = v60;
    v66 = enum case for Font.Design.rounded(_:);
    v67 = v61;
    v68 = v59;
    v69 = v47;
    v70 = a1;
    v71 = type metadata accessor for Font.Design();
    v72 = *(v71 - 8);
    v73 = v66;
    v60 = v65;
    (*(v72 + 104))(v53, v73, v71);
    v74 = v71;
    a1 = v70;
    v47 = v69;
    v59 = v68;
    v61 = v67;
    (*(v72 + 56))(v53, 0, 1, v74);
  }

  v75 = static Font.system(size:weight:design:)();
  sub_10002D02C(v53, &qword_100113E08, &qword_1000D10F0);
  v76 = swift_getKeyPath();
  *(&v232[1] + 1) = v235[1];
  *(&v232[2] + 1) = v235[2];
  *(&v232[3] + 1) = v235[3];
  *(&v232[4] + 1) = v235[4];
  *&v231 = v59;
  *(&v231 + 1) = 0x4020000000000000;
  LOBYTE(v232[0]) = v60;
  *(v232 + 1) = v235[0];
  *(&v232[5] + 1) = KeyPath;
  *&v233 = v61;
  *(&v233 + 1) = v76;
  v234 = v75;
  v77 = AlarmPresentationState.alarmLabel.getter();
  if (v78)
  {
    v79 = v78;
  }

  else
  {
    v80 = *(type metadata accessor for AlarmAlertCoverSheet(0) + 20);
    v81 = v184;
    AlarmPresentationState.mode.getter();
    v82 = sub_10000AAEC(v81);
    v79 = v83;
    (*(v185 + 8))(v81, v47);
    v77 = v82;
  }

  v221 = a1;
  v225 = v77;
  v226 = v79;
  sub_1000032D4(&qword_100114388, &qword_1000D1638);
  sub_100026E3C();
  KeyPath = sub_100025FB4();
  View.accessibilityLabel<A>(_:)();

  v229[5] = v232[4];
  v229[6] = v232[5];
  v229[7] = v233;
  v230 = v234;
  v229[2] = v232[1];
  v229[3] = v232[2];
  v229[4] = v232[3];
  v229[0] = v231;
  v229[1] = v232[0];
  sub_10002D02C(v229, &qword_100114388, &qword_1000D1638);
  v84 = v222;
  static TimeZone.autoupdatingCurrent.getter();
  v184 = type metadata accessor for TimeZone();
  v85 = *(v184 - 1);
  v183 = *(v85 + 56);
  v185 = v85 + 56;
  v183(v84, 0, 1, v184);
  v86 = Text.init(dateFormatTemplate:timeZone:)();
  v88 = v87;
  v90 = v89;
  if (sub_100017588())
  {
    v91 = 151.0;
  }

  else
  {
    v91 = 209.0;
  }

  v92 = String._bridgeToObjectiveC()();
  CTFontCreateWithNameAndOptions(v92, v91, 0, 0x20000uLL);

  Font.init(_:)();
  v93 = Text.font(_:)();
  v95 = v94;
  v97 = v96;
  v99 = v98;

  sub_100025B0C(v86, v88, v90 & 1);

  v225 = v93;
  v226 = v95;
  v97 &= 1u;
  v227 = v97;
  v228 = v99;
  v101 = v196;
  v100 = v197;
  v102 = v198;
  (*(v197 + 104))(v196, enum case for DynamicTypeSize.large(_:), v198);
  v103 = v192;
  View.dynamicTypeSize(_:)();
  (*(v100 + 8))(v101, v102);
  sub_100025B0C(v93, v95, v97);

  v104 = static Color.white.getter();
  v105 = swift_getKeyPath();
  v106 = v191;
  (*(v194 + 32))(v191, v103, v195);
  v107 = (v106 + *(v189 + 36));
  *v107 = v105;
  v107[1] = v104;
  v108 = swift_getKeyPath();
  v109 = v190;
  sub_10002C7C4(v106, v190, &qword_100114348, &qword_1000D15C8);
  v110 = v109 + *(v188 + 36);
  *v110 = v108;
  *(v110 + 8) = 1;
  *(v110 + 16) = 0;
  v111 = swift_getKeyPath();
  v112 = v109;
  v113 = v193;
  sub_10002C7C4(v112, v193, &qword_100114350, &qword_1000D15D0);
  v114 = (v113 + *(v187 + 36));
  *v114 = v111;
  v114[1] = 0x3FE6666666666666;
  (*(v205 + 104))(v204, enum case for Color.RGBColorSpace.sRGBLinear(_:), v206);
  v115 = Color.init(_:white:opacity:)();
  v116 = v201;
  sub_10002C7C4(v113, v201, &qword_100114358, &qword_1000D15D8);
  v117 = (v116 + *(v199 + 36));
  *v117 = v115;
  v117[1] = 0x3FF0000000000000;
  v117[2] = 0;
  v117[3] = 0;
  v118 = v222;
  static TimeZone.autoupdatingCurrent.getter();
  v183(v118, 0, 1, v184);
  v119 = Text.init(dateFormatTemplate:timeZone:)();
  v121 = v120;
  LOBYTE(v93) = v122;
  sub_100026FD8();
  v123 = v203;
  View.accessibilityLabel(_:)();
  sub_100025B0C(v119, v121, v93 & 1);

  sub_10002D02C(v116, &qword_100114360, &qword_1000D15E0);
  LOBYTE(v119) = static Edge.Set.top.getter();
  sub_100017588();
  EdgeInsets.init(_all:)();
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v132 = v200;
  sub_10002C7C4(v123, v200, &qword_100114368, &qword_1000D15E8);
  v133 = v132 + *(v202 + 36);
  *v133 = v119;
  *(v133 + 8) = v125;
  *(v133 + 16) = v127;
  *(v133 + 24) = v129;
  *(v133 + 32) = v131;
  *(v133 + 40) = 0;
  sub_10002C7C4(v132, v223, &qword_100114370, &qword_1000D15F0);
  v134 = AlarmPresentationState.localizedAppName.getter();
  if (v135)
  {
    v136 = v134;
  }

  else
  {
    v136 = 0;
  }

  v137 = 0xE000000000000000;
  if (v135)
  {
    v137 = v135;
  }

  v225 = v136;
  v226 = v137;
  v138 = Text.init<A>(_:)();
  v140 = v139;
  v142 = v141;
  static Color.secondary.getter();
  Color.opacity(_:)();

  v143 = Text.foregroundColor(_:)();
  v145 = v144;
  v147 = v146;
  v149 = v148;

  sub_100025B0C(v138, v140, v142 & 1);

  v225 = v143;
  v226 = v145;
  v227 = v147 & 1;
  v228 = v149;
  v150 = v211;
  View.lineLimit(_:reservesSpace:)();
  sub_100025B0C(v143, v145, v147 & 1);

  v151 = static Font.title3.getter();
  v152 = swift_getKeyPath();
  v153 = v212;
  (*(v213 + 32))(v212, v150, v214);
  v154 = (v153 + *(v209 + 36));
  *v154 = v152;
  v154[1] = v151;
  LOBYTE(v151) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v156 = v155;
  v158 = v157;
  v160 = v159;
  v162 = v161;
  v163 = v215;
  sub_10002C7C4(v153, v215, &qword_100114318, &qword_1000D1598);
  v164 = v163 + *(v210 + 36);
  *v164 = v151;
  *(v164 + 8) = v156;
  *(v164 + 16) = v158;
  *(v164 + 24) = v160;
  *(v164 + 32) = v162;
  *(v164 + 40) = 0;
  v165 = AlarmPresentationState.bundleID.getter();
  if (v166)
  {
    if (v165 == 0xD000000000000015 && v166 == 0x80000001000D7F20)
    {

      v167 = 0.0;
    }

    else
    {
      v170 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v170)
      {
        v167 = 0.0;
      }

      else
      {
        v167 = 1.0;
      }
    }

    v169 = v216;
    v168 = v217;
  }

  else
  {
    v167 = 1.0;
    v169 = v216;
    v168 = v217;
  }

  sub_10002C7C4(v163, v169, &qword_100114320, &qword_1000D15A0);
  *(v169 + *(v168 + 36)) = v167;
  v171 = AlarmPresentationState.bundleID.getter();
  if (v172)
  {
    if (v171 != 0xD000000000000015 || v172 != 0x80000001000D7F20)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  sub_1000272BC();
  v173 = v218;
  View.accessibilityHidden(_:)();
  sub_10002D02C(v169, &qword_100114328, &qword_1000D15A8);
  v174 = v207;
  sub_10002CFC4(v224, v207, &qword_100114378, &qword_1000D15F8);
  v175 = v223;
  v176 = v208;
  sub_10002CFC4(v223, v208, &qword_100114370, &qword_1000D15F0);
  v177 = v219;
  sub_10002CFC4(v173, v219, &qword_100114330, &qword_1000D15B0);
  v178 = v220;
  *v220 = 0;
  *(v178 + 8) = 1;
  v179 = sub_1000032D4(&qword_100114410, &unk_1000D1660);
  sub_10002CFC4(v174, v178 + v179[12], &qword_100114378, &qword_1000D15F8);
  sub_10002CFC4(v176, v178 + v179[16], &qword_100114370, &qword_1000D15F0);
  sub_10002CFC4(v177, v178 + v179[20], &qword_100114330, &qword_1000D15B0);
  v180 = v178 + v179[24];
  *v180 = 0;
  v180[8] = 1;
  sub_10002D02C(v173, &qword_100114330, &qword_1000D15B0);
  sub_10002D02C(v175, &qword_100114370, &qword_1000D15F0);
  sub_10002D02C(v224, &qword_100114378, &qword_1000D15F8);
  sub_10002D02C(v177, &qword_100114330, &qword_1000D15B0);
  sub_10002D02C(v176, &qword_100114370, &qword_1000D15F0);
  return sub_10002D02C(v174, &qword_100114378, &qword_1000D15F8);
}

uint64_t sub_10001A754@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AlarmPresentationState.Mode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = static Color.secondary.getter();
  v8 = sub_100017588();
  type metadata accessor for AlarmAlertAnimation();
  v9 = swift_allocObject();
  v10 = AlarmPresentationState.alarmLabel.getter();
  if (!v11)
  {
    v12 = *(type metadata accessor for AlarmAlertCoverSheet(0) + 20);
    AlarmPresentationState.mode.getter();
    v13 = sub_10000AAEC(v6);
    v15 = v14;
    (*(v3 + 8))(v6, v2);
    v11 = v15;
    v10 = v13;
  }

  if (v8)
  {
    v16 = 40.0;
  }

  else
  {
    v16 = 60.0;
  }

  v27 = v10;
  v28 = v11;
  sub_100025FB4();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  KeyPath = swift_getKeyPath();
  v21 &= 1u;
  LOBYTE(v27) = v21;
  v26[8] = 0;
  *a1 = v7;
  *(a1 + 8) = v16;
  *(a1 + 16) = v9;
  *(a1 + 24) = v17;
  *(a1 + 32) = v19;
  *(a1 + 40) = v21;
  *(a1 + 48) = v23;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = 2;
  *(a1 + 72) = 0;

  sub_100025AFC(v17, v19, v21);

  sub_100025B0C(v17, v19, v21);
}

uint64_t sub_10001A97C(uint64_t a1)
{
  if (qword_100113710 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  __chkstk_darwin(a1);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_10001AA3C(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = (a1 + *(a2(0) + 40));
  v4 = *v2;
  v5 = *(v2 + 1);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_10001AABC@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v2 = type metadata accessor for AlarmKitStopButton(0);
  v3 = *(*(v2 - 1) + 64);
  __chkstk_darwin(v2);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1000032D4(&qword_100114280, &qword_1000D1520);
  v6 = *(*(v94 - 8) + 64);
  v7 = __chkstk_darwin(v94);
  v85 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v86 = &v77 - v9;
  v92 = sub_1000032D4(&qword_1001142E8, &qword_1000D1578);
  v10 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v93 = &v77 - v11;
  v12 = type metadata accessor for SlideTransition();
  v90 = *(v12 - 8);
  v91 = v12;
  v13 = *(v90 + 64);
  v14 = __chkstk_darwin(v12);
  v88 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v89 = &v77 - v16;
  v17 = type metadata accessor for AlarmAlertCoverSheet(0);
  v81 = *(v17 - 8);
  v18 = *(v81 + 64);
  __chkstk_darwin(v17);
  v82 = v19;
  v83 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v77 - v25;
  v96 = type metadata accessor for AlarmPresentationState();
  v27 = *(v96 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v96);
  v31 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v78 = &v77 - v32;
  v79 = type metadata accessor for AlarmKitStopSlider(0);
  v33 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v35 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1000032D4(&qword_100114258, &qword_1000D1510);
  v36 = *(*(v87 - 8) + 64);
  v37 = __chkstk_darwin(v87);
  v80 = &v77 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v84 = &v77 - v39;
  if ((sub_100017588() & 1) != 0 && (v40 = v1 + *(v17 + 48), v41 = *v40, v42 = *(v40 + 8), v98 = v41, v99 = v42, sub_1000032D4(&qword_100114140, &qword_1000D7290), State.wrappedValue.getter(), (v97 & 1) == 0))
  {
    v59 = v78;
    (*(v27 + 16))(v78, v1, v96);
    v60 = *(v17 + 20);
    sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    AlarmAttributes.metadata.getter();
    v61 = type metadata accessor for MTAlarmCustomContent();
    v62 = *(v61 - 8);
    v63 = (*(v62 + 48))(v26, 1, v61);
    if (v63 == 1)
    {
      sub_10002D02C(v26, &unk_100118100, &qword_1000D1250);
      v64 = 0;
    }

    else
    {
      v64 = MTAlarmCustomContent.type.getter();
      (*(v62 + 8))(v26, v61);
    }

    v65 = v83;
    sub_100025564(v1, v83, type metadata accessor for AlarmAlertCoverSheet);
    v66 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v67 = swift_allocObject();
    sub_1000255CC(v65, v67 + v66, type metadata accessor for AlarmAlertCoverSheet);
    (*(v27 + 32))(v35, v59, v96);
    v68 = v79;
    v69 = &v35[*(v79 + 20)];
    *v69 = v64;
    v69[8] = v63 == 1;
    v35[*(v68 + 24)] = 4;
    v70 = &v35[*(v68 + 28)];
    *v70 = sub_100026D94;
    v70[1] = v67;
    v71 = v89;
    SlideTransition.init()();
    v73 = v90;
    v72 = v91;
    (*(v90 + 16))(v88, v71, v91);
    sub_100025228(&qword_1001142F0, &type metadata accessor for SlideTransition);
    v74 = AnyTransition.init<A>(_:)();
    (*(v73 + 8))(v71, v72);
    v75 = v80;
    sub_1000255CC(v35, v80, type metadata accessor for AlarmKitStopSlider);
    *(v75 + *(v87 + 36)) = v74;
    v56 = &qword_100114258;
    v57 = &qword_1000D1510;
    v58 = v84;
    sub_10002C7C4(v75, v84, &qword_100114258, &qword_1000D1510);
    sub_10002CFC4(v58, v93, &qword_100114258, &qword_1000D1510);
    swift_storeEnumTagMultiPayload();
    sub_100026BB4();
    sub_100026C9C();
  }

  else
  {
    v43 = v96;
    (*(v27 + 16))(v31, v1, v96);
    v44 = *(v17 + 20);
    sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    AlarmAttributes.metadata.getter();
    v45 = type metadata accessor for MTAlarmCustomContent();
    v46 = *(v45 - 8);
    v47 = (*(v46 + 48))(v24, 1, v45);
    if (v47 == 1)
    {
      sub_10002D02C(v24, &unk_100118100, &qword_1000D1250);
      v48 = 0;
    }

    else
    {
      v48 = MTAlarmCustomContent.type.getter();
      (*(v46 + 8))(v24, v45);
    }

    (*(v27 + 32))(v5, v31, v43);
    v49 = &v5[v2[5]];
    *v49 = v48;
    v49[8] = v47 == 1;
    *&v5[v2[6]] = 0;
    v5[v2[7]] = 4;
    v50 = &v5[v2[8]];
    *v50 = &type metadata for AnimationConstants.LeftButtonAnimation;
    *(v50 + 1) = &off_100103BB0;
    v51 = v89;
    SlideTransition.init()();
    v53 = v90;
    v52 = v91;
    (*(v90 + 16))(v88, v51, v91);
    sub_100025228(&qword_1001142F0, &type metadata accessor for SlideTransition);
    v54 = AnyTransition.init<A>(_:)();
    (*(v53 + 8))(v51, v52);
    v55 = v85;
    sub_1000255CC(v5, v85, type metadata accessor for AlarmKitStopButton);
    *(v55 + *(v94 + 36)) = v54;
    v56 = &qword_100114280;
    v57 = &qword_1000D1520;
    v58 = v86;
    sub_10002C7C4(v55, v86, &qword_100114280, &qword_1000D1520);
    sub_10002CFC4(v58, v93, &qword_100114280, &qword_1000D1520);
    swift_storeEnumTagMultiPayload();
    sub_100026BB4();
    sub_100026C9C();
  }

  _ConditionalContent<>.init(storage:)();
  return sub_10002D02C(v58, v56, v57);
}

uint64_t sub_10001B4F8(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for AlarmAlertCoverSheet(0) + 48));
  v5 = *v3;
  v6 = *(v3 + 1);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_10001B56C()
{
  v1 = type metadata accessor for AlarmAlertCoverSheet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for AlarmPresentationState();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  sub_100017D28((v0 + v3 + v1[6]));
  v9 = v1[7];
  sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for Font.Context();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = v1[8];
  sub_1000032D4(&qword_100113780, &qword_1000D08D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

  else
  {
    v15 = *(v5 + v12);
  }

  v16 = *(v5 + v1[9]);

  v17 = *(v5 + v1[10] + 8);

  v18 = *(v5 + v1[11] + 8);

  v19 = *(v5 + v1[12] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001B83C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v51 = a2;
  v52 = a1;
  v53 = a3;
  v5 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v45 - v7;
  v9 = type metadata accessor for AlarmButton();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AlarmPresentationState();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AlarmKitButton(0);
  v20 = *(*(v19 - 1) + 64);
  __chkstk_darwin(v19);
  v22 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v15 + 16);
  v46 = v18;
  v47 = v14;
  v23(v18, v4, v14);
  v48 = v13;
  v49 = v10;
  v24 = *(v10 + 16);
  v50 = v9;
  v24(v13, v51, v9);
  v25 = *(type metadata accessor for AlarmAlertCoverSheet(0) + 20);
  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v51 = v4;
  v45[1] = v25;
  AlarmAttributes.metadata.getter();
  v26 = type metadata accessor for MTAlarmCustomContent();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v8, 1, v26);
  if (v28 == 1)
  {
    sub_10002D02C(v8, &unk_100118100, &qword_1000D1250);
    v29 = 0;
  }

  else
  {
    v29 = MTAlarmCustomContent.type.getter();
    (*(v27 + 8))(v8, v26);
  }

  v30 = AlarmAttributes.tintColor.getter();
  (*(v15 + 32))(v22, v46, v47);
  v22[v19[5]] = v52;
  (*(v49 + 32))(&v22[v19[6]], v48, v50);
  v31 = &v22[v19[7]];
  *v31 = v29;
  v31[8] = v28 == 1;
  *&v22[v19[8]] = v30;
  v22[v19[9]] = 4;
  v32 = &v22[v19[10]];
  *v32 = &type metadata for AnimationConstants.RightButtonAnimation;
  *(v32 + 1) = &off_100103B88;
  v33 = &v22[v19[11]];
  v34 = objc_opt_self();
  v35 = [v34 mtOrange];
  v36 = Color.init(uiColor:)();
  v37 = [v34 mtOrange];
  Color.init(uiColor:)();
  v38 = Color.opacity(_:)();

  v39 = static Color.white.getter();
  static Color.white.getter();
  v40 = Color.opacity(_:)();

  *(v33 + 3) = &type metadata for StandardSessionUiConfig;
  *(v33 + 4) = &off_1001035E8;
  v41 = swift_allocObject();
  *v33 = v41;
  v41[2] = v36;
  v41[3] = v38;
  v41[4] = v39;
  v41[5] = v40;
  if (qword_100113748 != -1)
  {
    swift_once();
  }

  v42 = qword_10011F788;
  v43 = v53;
  sub_100025564(v22, v53, type metadata accessor for AlarmKitButton);
  *(v43 + *(sub_1000032D4(&qword_1001142D8, &qword_1000D1568) + 36)) = v42;

  return sub_100025A9C(v22, type metadata accessor for AlarmKitButton);
}

uint64_t sub_10001BD44@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0x4038000000000000;
  *(a3 + 16) = 0;
  v6 = sub_1000032D4(&qword_1001142D0, &qword_1000D1560);
  return sub_10001BDB4(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_10001BDB4@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1000032D4(&qword_1001141C0, &qword_1000D1490);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = sub_1000032D4(&qword_1001142D8, &qword_1000D1568);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v22 - v18;
  sub_10001B83C(a1, a2, &v22 - v18);
  sub_10001AABC(v12);
  sub_10002CFC4(v19, v17, &qword_1001142D8, &qword_1000D1568);
  sub_10002CFC4(v12, v10, &qword_1001141C0, &qword_1000D1490);
  sub_10002CFC4(v17, a3, &qword_1001142D8, &qword_1000D1568);
  v20 = sub_1000032D4(&qword_1001142E0, &qword_1000D1570);
  sub_10002CFC4(v10, a3 + *(v20 + 48), &qword_1001141C0, &qword_1000D1490);
  sub_10002D02C(v12, &qword_1001141C0, &qword_1000D1490);
  sub_10002D02C(v19, &qword_1001142D8, &qword_1000D1568);
  sub_10002D02C(v10, &qword_1001141C0, &qword_1000D1490);
  return sub_10002D02C(v17, &qword_1001142D8, &qword_1000D1568);
}

uint64_t sub_10001BFBC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AlarmAlertCoverSheet(0) + 44));
  v3 = *v1;
  v4 = v1[1];
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  return State.wrappedValue.setter();
}

uint64_t sub_10001C034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100025564(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmAlertCoverSheet);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1000255CC(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AlarmAlertCoverSheet);
  v8 = sub_1000032D4(&qword_1001139D8, &qword_1000D08D8);
  sub_100017218(a2 + *(v8 + 52));
  sub_100025564(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmAlertCoverSheet);
  v9 = swift_allocObject();
  result = sub_1000255CC(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6, type metadata accessor for AlarmAlertCoverSheet);
  *a2 = sub_10002DBB0;
  *(a2 + 8) = v7;
  *(a2 + 16) = 1;
  v11 = (a2 + *(v8 + 56));
  *v11 = sub_10002DBA4;
  v11[1] = v9;
  return result;
}

uint64_t sub_10001C1F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AlarmPresentationState();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 24);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_1000032D4(&qword_1001139E0, qword_1000D7170);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = sub_1000032D4(&qword_1001139E8, &qword_1000D0940);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_10001C3EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for AlarmPresentationState();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
    return result;
  }

  v16 = sub_1000032D4(&qword_1001139E0, qword_1000D7170);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_1000032D4(&qword_1001139E8, &qword_1000D0940);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

void sub_10001C5D0()
{
  type metadata accessor for AlarmPresentationState();
  if (v0 <= 0x3F)
  {
    sub_10001C78C();
    if (v1 <= 0x3F)
    {
      sub_100027F54(319, &qword_100113A58);
      if (v2 <= 0x3F)
      {
        sub_100027C70(319, &qword_100113A60, &type metadata accessor for Font.Context, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10002BB84(319, &qword_100113A68, &qword_100113860, &qword_1000D0290, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_1000289D8(319, &qword_100113A70, &type metadata for Bool, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_1000289D8(319, &unk_100113A78, &type metadata for CGFloat, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10001C78C()
{
  if (!qword_100117F80[0])
  {
    type metadata accessor for MTAlarmCustomContent();
    sub_100025228(&qword_100115F10, &type metadata accessor for MTAlarmCustomContent);
    v0 = type metadata accessor for AlarmAttributes();
    if (!v1)
    {
      atomic_store(v0, qword_100117F80);
    }
  }
}

uint64_t sub_10001C820(uint64_t *a1, uint64_t *a2)
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

double sub_10001C868@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v5;
  *(a1 + 8) = v3;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  result = *&v11;
  *(a1 + 48) = v11;
  return result;
}

void sub_10001C908()
{
  v1 = *v0;
  v2 = v0[1];
  sub_10002BB3C(0, &qword_100114D78, UIColor_ptr);

  v3 = UIColor.init(_:)();
  v4 = sub_10001CA78(3, v3);

  if (!v4)
  {
    __break(1u);
  }
}

uint64_t sub_10001C988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002B1A8();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10001C9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002B1A8();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10001CA50()
{
  sub_10002B1A8();
  UIViewRepresentable.body.getter();
  __break(1u);
}

id sub_10001CA78(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v3;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v8 = objc_allocWithZone(BSUICAPackageView);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 initWithPackageName:v9 inBundle:v7];

  if (!v10)
  {
    v22 = objc_opt_self();
    _StringGuts.grow(_:)(48);
    type metadata accessor for AlarmAlertAnimation();
    _print_unlocked<A, B>(_:_:)();
    v23._countAndFlagsBits = 0xD00000000000002ELL;
    v23._object = 0x80000001000D7E00;
    String.append(_:)(v23);
    v24 = String._bridgeToObjectiveC()();

    [v22 logInfo:v24];

    return 0;
  }

  if (!a2)
  {

    return 0;
  }

  v11 = objc_opt_self();
  v12 = a2;
  v13 = [v11 traitCollectionWithUserInterfaceStyle:2];
  v14 = [v12 resolvedColorWithTraitCollection:v13];
  v15 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterMultiplyColor];
  v16 = [v14 CGColor];
  v17 = String._bridgeToObjectiveC()();
  [v15 setValue:v16 forKeyPath:v17];

  v18 = [v10 layer];
  sub_1000032D4(&qword_100114138, &unk_1000D1420);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000D08B0;
  *(v19 + 56) = sub_10002BB3C(0, &unk_100119A30, CAFilter_ptr);
  *(v19 + 32) = v15;
  v20 = v15;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 setFilters:isa];

  return v10;
}

uint64_t sub_10001CE50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000032D4(&qword_100114D20, &qword_1000D2078);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = static Color.black.getter();
  v11 = static SafeAreaRegions.all.getter();
  v12 = static Edge.Set.all.getter();
  sub_10001D034(v9);
  v13 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v9[*(sub_1000032D4(&qword_100114D28, &qword_1000D2080) + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v24 = &v9[*(v3 + 44)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  sub_10002CFC4(v9, v7, &qword_100114D20, &qword_1000D2078);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  v29 = sub_1000032D4(&qword_100114D30, &qword_1000D2088);
  sub_10002CFC4(v7, a1 + *(v29 + 48), &qword_100114D20, &qword_1000D2078);

  sub_10002D02C(v9, &qword_100114D20, &qword_1000D2078);
  sub_10002D02C(v7, &qword_100114D20, &qword_1000D2078);
}

uint64_t sub_10001D034@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v83 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v84 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for FullAmbientSnoozeCountdown(0);
  v11 = *(*(v91 - 8) + 64);
  v12 = __chkstk_darwin(v91);
  v14 = (&v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v85 = &v83 - v15;
  v89 = sub_1000032D4(&qword_100114D38, &qword_1000D2090);
  v16 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v90 = &v83 - v17;
  v18 = type metadata accessor for AlarmAlertFullScreen(0);
  v87 = *(v18 - 1);
  v19 = *(v87 + 64);
  __chkstk_darwin(v18);
  v21 = (&v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for OpaqueAlarm();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = sub_1000032D4(&qword_100114D40, &qword_1000D2098);
  v26 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v86 = &v83 - v27;
  if (sub_100088B60())
  {
    sub_100025564(v1, v25, type metadata accessor for OpaqueAlarm);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *v25;
      v29 = type metadata accessor for FullAmbientAlarmView(0);
      sub_10002B00C(v1 + *(v29 + 20), (v21 + 1));
      sub_10002B00C(v1 + *(v29 + 24), (v21 + 6));
      *(v21 + v18[7]) = swift_getKeyPath();
      sub_1000032D4(&qword_100113778, &qword_1000CFD60);
      swift_storeEnumTagMultiPayload();
      v30 = type metadata accessor for WeatherDataProvider();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      v33 = sub_10006ECE4();
      *v21 = v28;
      v34 = v18[8];
      static AnyTransition.move(edge:)();
      static AnyTransition.scale.getter();
      v35 = AnyTransition.combined(with:)();

      *(v21 + v34) = v35;
      v36 = v21 + v18[9];
      LOBYTE(v92) = 0;
      State.init(wrappedValue:)();
      v37 = v95;
      *v36 = v94;
      *(v36 + 1) = v37;
      v38 = v21 + v18[10];
      LOBYTE(v92) = 0;
      State.init(wrappedValue:)();
      v39 = v95;
      *v38 = v94;
      *(v38 + 1) = v39;
      v40 = v21 + v18[11];
      LOBYTE(v92) = 0;
      State.init(wrappedValue:)();
      v41 = v95;
      *v40 = v94;
      *(v40 + 1) = v41;
      v42 = v21 + v18[12];
      LOBYTE(v92) = 0;
      State.init(wrappedValue:)();
      v43 = v95;
      *v42 = v94;
      *(v42 + 1) = v43;
      v44 = v21 + v18[13];
      LOBYTE(v92) = 0;
      State.init(wrappedValue:)();
      v45 = v95;
      *v44 = v94;
      *(v44 + 1) = v45;
      v46 = v21 + v18[14];
      LOBYTE(v92) = 0;
      State.init(wrappedValue:)();
      v47 = v95;
      *v46 = v94;
      *(v46 + 1) = v47;
      v48 = v21 + v18[15];
      LOBYTE(v92) = 0;
      State.init(wrappedValue:)();
      v49 = v95;
      *v48 = v94;
      *(v48 + 1) = v49;
      v50 = v21 + v18[16];
      LOBYTE(v92) = 0;
      State.init(wrappedValue:)();
      v51 = v95;
      *v50 = v94;
      *(v50 + 1) = v51;
      v52 = v21 + v18[17];
      LOBYTE(v92) = 0;
      State.init(wrappedValue:)();
      v53 = v95;
      *v52 = v94;
      *(v52 + 1) = v53;
      v54 = v21 + v18[18];
      LOBYTE(v92) = 0;
      State.init(wrappedValue:)();
      v55 = v95;
      *v54 = v94;
      *(v54 + 1) = v55;
      v56 = v21 + v18[19];
      v92 = 0;
      v93 = 1;
      sub_1000032D4(&qword_100114D60, &qword_1000D20D0);
      State.init(wrappedValue:)();
      v57 = v95;
      v58 = v96;
      *v56 = v94;
      v56[8] = v57;
      *(v56 + 2) = v58;
      v59 = (v21 + v18[20]);
      v92 = v33;
      State.init(wrappedValue:)();
      v60 = v95;
      *v59 = v94;
      v59[1] = v60;
      v61 = v86;
      sub_1000255CC(v21, v86, type metadata accessor for AlarmAlertFullScreen);
      v62 = 0;
    }

    else
    {
      sub_100025A9C(v25, type metadata accessor for OpaqueAlarm);
      v62 = 1;
      v61 = v86;
    }

    (*(v87 + 56))(v61, v62, 1, v18);
    sub_10002CFC4(v61, v90, &qword_100114D40, &qword_1000D2098);
    swift_storeEnumTagMultiPayload();
    sub_10002B070();
    sub_100025228(&qword_100114D58, type metadata accessor for FullAmbientSnoozeCountdown);
    _ConditionalContent<>.init(storage:)();
    return sub_10002D02C(v61, &qword_100114D40, &qword_1000D2098);
  }

  else
  {
    v87 = a1;
    v63 = sub_100088DE4();
    v65 = v64;
    v66 = sub_1000890A8();
    v86 = v67;
    sub_100089408(v6);
    v68 = *(v8 + 48);
    if (v68(v6, 1, v7) == 1)
    {
      v83 = v8;
      v69 = v66;
      v70 = v65;
      v71 = v63;
      v72 = v84;
      static Date.now.getter();
      v73 = v68(v6, 1, v7);
      v74 = v72;
      v63 = v71;
      v65 = v70;
      v66 = v69;
      v8 = v83;
      if (v73 != 1)
      {
        sub_10002D02C(v6, &qword_100115E40, &unk_1000D1280);
      }
    }

    else
    {
      v74 = v84;
      (*(v8 + 32))(v84, v6, v7);
    }

    v76 = type metadata accessor for FullAmbientAlarmView(0);
    v77 = v91;
    sub_10002B00C(v1 + *(v76 + 20), v14 + *(v91 + 28));
    sub_10002B00C(v1 + *(v76 + 24), v14 + v77[9]);
    *v14 = v63;
    v14[1] = v65;
    v78 = v86;
    v14[2] = v66;
    v14[3] = v78;
    (*(v8 + 32))(v14 + v77[6], v74, v7);
    v79 = v77[8];
    v80 = [objc_opt_self() mtOrange];
    *(v14 + v79) = Color.init(uiColor:)();
    v81 = v14 + v77[10];
    *v81 = sub_10002DB3C;
    *(v81 + 1) = 0;
    v81[16] = 0;
    v82 = v85;
    sub_1000255CC(v14, v85, type metadata accessor for FullAmbientSnoozeCountdown);
    sub_100025564(v82, v90, type metadata accessor for FullAmbientSnoozeCountdown);
    swift_storeEnumTagMultiPayload();
    sub_10002B070();
    sub_100025228(&qword_100114D58, type metadata accessor for FullAmbientSnoozeCountdown);
    _ConditionalContent<>.init(storage:)();
    return sub_100025A9C(v82, type metadata accessor for FullAmbientSnoozeCountdown);
  }
}

uint64_t sub_10001D9E8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v19 - v12);
  v14 = a1(0);
  sub_10002CFC4(v2 + *(v14 + 28), v13, &qword_100113778, &qword_1000CFD60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for Font.Context();
    return (*(*(v15 - 8) + 32))(a2, v13, v15);
  }

  else
  {
    v17 = *v13;
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_10001DBF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000032D4(&qword_100114D00, &qword_1000D2058);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v17 - v4);
  v6 = sub_1000032D4(&qword_100114D08, &qword_1000D2060);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  *v5 = static Alignment.center.getter();
  v5[1] = v10;
  v11 = sub_1000032D4(&qword_100114D10, &qword_1000D2068);
  sub_10001CE50(v5 + *(v11 + 44));
  if (sub_100088B60())
  {
    v12 = static Edge.Set.vertical.getter();
  }

  else
  {
    v12 = Edge.Set.init(rawValue:)();
  }

  v13 = v12;
  v14 = static SafeAreaRegions.all.getter();
  sub_10002C7C4(v5, v9, &qword_100114D00, &qword_1000D2058);
  v15 = &v9[*(v6 + 36)];
  *v15 = v14;
  v15[8] = v13;
  sub_10002C7C4(v9, a1, &qword_100114D08, &qword_1000D2060);
  result = sub_1000032D4(&qword_100114D18, &qword_1000D2070);
  *(a1 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_10001DD84@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000032D4(&qword_100115088, &qword_1000D2290);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = sub_1000032D4(&qword_100115090, &qword_1000D2298);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  *v17 = static VerticalAlignment.top.getter();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = sub_1000032D4(&qword_100115098, &qword_1000D22A0);
  sub_10001DFDC(a1, &v17[*(v18 + 44)]);
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v19 = sub_1000032D4(&qword_1001150A0, &qword_1000D22A8);
  sub_100020EC8(a1, &v10[*(v19 + 44)]);
  sub_10002CFC4(v17, v15, &qword_100115090, &qword_1000D2298);
  sub_10002CFC4(v10, v8, &qword_100115088, &qword_1000D2290);
  sub_10002CFC4(v15, a2, &qword_100115090, &qword_1000D2298);
  v20 = sub_1000032D4(&qword_1001150A8, &qword_1000D22B0);
  v21 = a2 + *(v20 + 48);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_10002CFC4(v8, a2 + *(v20 + 64), &qword_100115088, &qword_1000D2290);
  sub_10002D02C(v10, &qword_100115088, &qword_1000D2290);
  sub_10002D02C(v17, &qword_100115090, &qword_1000D2298);
  sub_10002D02C(v8, &qword_100115088, &qword_1000D2290);
  return sub_10002D02C(v15, &qword_100115090, &qword_1000D2298);
}

uint64_t sub_10001DFDC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v271 = a2;
  v3 = type metadata accessor for Color.RGBColorSpace();
  v269 = *(v3 - 8);
  v270 = v3;
  v4 = *(v269 + 64);
  __chkstk_darwin(v3);
  v268 = &v212 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Font._StylisticAlternative();
  v241 = *(v6 - 8);
  v242 = v6;
  v7 = *(v241 + 64);
  __chkstk_darwin(v6);
  v240 = &v212 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000032D4(&qword_100114338, &qword_1000D15B8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v212 - v11;
  v252 = sub_1000032D4(&qword_100114340, &qword_1000D15C0);
  v247 = *(v252 - 8);
  v13 = *(v247 + 64);
  __chkstk_darwin(v252);
  v244 = &v212 - v14;
  v243 = sub_1000032D4(&qword_100114AF0, &qword_1000D1E58);
  v15 = *(*(v243 - 8) + 64);
  __chkstk_darwin(v243);
  v251 = &v212 - v16;
  v248 = sub_1000032D4(&qword_100114AF8, &qword_1000D1E60);
  v17 = *(*(v248 - 8) + 64);
  __chkstk_darwin(v248);
  v250 = &v212 - v18;
  v246 = sub_1000032D4(&qword_100114B00, &qword_1000D1E68);
  v19 = *(*(v246 - 8) + 64);
  __chkstk_darwin(v246);
  v249 = &v212 - v20;
  v245 = sub_1000032D4(&qword_100114B08, &qword_1000D1E70);
  v21 = *(*(v245 - 8) + 64);
  __chkstk_darwin(v245);
  v255 = &v212 - v22;
  v253 = sub_1000032D4(&qword_100114B10, &qword_1000D1E78);
  v23 = *(*(v253 - 8) + 64);
  __chkstk_darwin(v253);
  v256 = &v212 - v24;
  v254 = sub_1000032D4(&qword_100114B18, &qword_1000D1E80);
  v25 = *(*(v254 - 8) + 64);
  __chkstk_darwin(v254);
  v259 = &v212 - v26;
  v257 = sub_1000032D4(&qword_100114B20, &qword_1000D1E88);
  v27 = *(*(v257 - 8) + 64);
  __chkstk_darwin(v257);
  v262 = &v212 - v28;
  v261 = sub_1000032D4(&qword_100114B28, &qword_1000D1E90);
  v29 = *(*(v261 - 8) + 64);
  __chkstk_darwin(v261);
  v260 = &v212 - v30;
  v258 = sub_1000032D4(&qword_100114B30, &qword_1000D1E98);
  v31 = *(*(v258 - 8) + 64);
  __chkstk_darwin(v258);
  v263 = &v212 - v32;
  v264 = sub_1000032D4(&qword_100114B38, &qword_1000D1EA0);
  v33 = *(*(v264 - 8) + 64);
  __chkstk_darwin(v264);
  v265 = &v212 - v34;
  v35 = sub_1000032D4(&qword_100114B40, &qword_1000D1EA8);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v267 = &v212 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v266 = &v212 - v39;
  v40 = type metadata accessor for AlarmAlertFullScreen(0);
  v237 = *(v40 - 8);
  v41 = *(v237 + 64);
  __chkstk_darwin(v40);
  v238 = v42;
  v43 = &v212 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Font.Context();
  v214 = *(v44 - 8);
  v215 = v44;
  v45 = *(v214 + 64);
  __chkstk_darwin(v44);
  v213 = &v212 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = type metadata accessor for DynamicTypeSize();
  v280 = *(v277 - 8);
  v47 = *(v280 + 64);
  __chkstk_darwin(v277);
  v276 = &v212 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_1000032D4(&qword_1001150F8, &qword_1000D2300);
  v49 = *(*(v219 - 8) + 64);
  __chkstk_darwin(v219);
  v51 = &v212 - v50;
  v52 = sub_1000032D4(&qword_100115100, &qword_1000D2308);
  v217 = *(v52 - 8);
  v218 = v52;
  v53 = *(v217 + 64);
  __chkstk_darwin(v52);
  v274 = &v212 - v54;
  v216 = sub_1000032D4(&qword_100115108, &qword_1000D2310);
  v55 = *(*(v216 - 8) + 64);
  __chkstk_darwin(v216);
  v224 = &v212 - v56;
  v223 = sub_1000032D4(&qword_100115110, &qword_1000D2318);
  v57 = *(*(v223 - 8) + 64);
  __chkstk_darwin(v223);
  v225 = &v212 - v58;
  v229 = sub_1000032D4(&qword_100115118, &qword_1000D2320);
  v59 = *(*(v229 - 8) + 64);
  __chkstk_darwin(v229);
  v227 = &v212 - v60;
  v61 = sub_1000032D4(&qword_100115120, &qword_1000D2328);
  v230 = *(v61 - 8);
  v231 = v61;
  v62 = *(v230 + 64);
  __chkstk_darwin(v61);
  v228 = &v212 - v63;
  v226 = sub_1000032D4(&qword_100115128, &qword_1000D2330);
  v64 = *(*(v226 - 8) + 64);
  __chkstk_darwin(v226);
  v233 = &v212 - v65;
  v232 = sub_1000032D4(&qword_100115130, &qword_1000D2338);
  v66 = *(*(v232 - 8) + 64);
  __chkstk_darwin(v232);
  v234 = &v212 - v67;
  v235 = sub_1000032D4(&qword_100115138, &qword_1000D2340);
  v68 = *(*(v235 - 8) + 64);
  __chkstk_darwin(v235);
  v236 = &v212 - v69;
  v70 = sub_1000032D4(&qword_100115140, &qword_1000D2348);
  v71 = *(*(v70 - 8) + 64);
  v72 = __chkstk_darwin(v70 - 8);
  v239 = &v212 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v278 = &v212 - v74;
  v75 = *a1;
  v76 = [*a1 isSleepAlarm];
  v272 = v75;
  if (v76)
  {
    v77 = (a1 + *(v40 + 80));
    v79 = *v77;
    v78 = v77[1];
    *&v294 = v79;
    *(&v294 + 1) = v78;
    sub_1000032D4(&qword_100114C60, &qword_1000D1F58);
    State.wrappedValue.getter();
    v80 = v284;
    if (qword_100113610 != -1)
    {
      swift_once();
    }

    v81 = sub_10005926C();
    if (v81)
    {
      v82 = v81;
      v83 = [v81 isAuthorizedForWidgetUpdates];

      if (v83)
      {
        swift_getKeyPath();
        *&v294 = v80;
        sub_100025228(&qword_100114C68, type metadata accessor for WeatherDataProvider);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        LOBYTE(v83) = *(v80 + 48);
      }
    }

    else
    {
      LOBYTE(v83) = 0;
    }

    v75 = v272;
  }

  else
  {
    LOBYTE(v83) = 0;
  }

  v84 = [v75 isSleepAlarm];
  v279 = v40;
  v275 = v43;
  if (v84)
  {
    v85 = sub_10001FB00();
    v87 = v86;
  }

  else
  {
    v88 = [v75 displayTitle];
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v89;

    v40 = v279;
  }

  v90 = v40;
  v273 = v12;
  *v51 = static HorizontalAlignment.leading.getter();
  *(v51 + 1) = 0;
  v51[16] = 1;
  v91 = sub_1000032D4(&qword_100115148, &qword_1000D2350);
  sub_10001FE88(v83, a1, v85, v87, &v51[*(v91 + 44)]);

  KeyPath = swift_getKeyPath();
  v93 = &v51[*(sub_1000032D4(&qword_100115150, &qword_1000D2358) + 36)];
  *v93 = KeyPath;
  *(v93 + 1) = 2;
  v93[16] = 0;
  if (qword_1001136B8 != -1)
  {
    swift_once();
  }

  v94 = qword_10011F6F0;
  v95 = swift_getKeyPath();
  v96 = &v51[*(v219 + 36)];
  *v96 = v95;
  v96[1] = v94;
  v97 = v280;
  v98 = *(v280 + 104);
  v99 = v276;
  v221 = enum case for DynamicTypeSize.large(_:);
  v100 = v277;
  v222 = v280 + 104;
  v220 = v98;
  v98(v276);
  sub_10002C8C4();
  v212 = v94;

  View.dynamicTypeSize(_:)();
  v101 = *(v97 + 8);
  v280 = v97 + 8;
  v219 = v101;
  v101(v99, v100);
  sub_10002D02C(v51, &qword_1001150F8, &qword_1000D2300);
  v102 = a1 + v90[19];
  v103 = *v102;
  v104 = v102[8];
  v105 = *(v102 + 2);
  *&v294 = v103;
  BYTE8(v294) = v104;
  *&v295 = v105;
  sub_1000032D4(&qword_100115080, &qword_1000D2288);
  State.wrappedValue.getter();
  static Alignment.leading.getter();
  v106 = v275;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v107 = v224;
  (*(v217 + 32))(v224, v274, v218);
  v108 = (v107 + *(v216 + 36));
  v109 = v289;
  v108[4] = v288;
  v108[5] = v109;
  v108[6] = v290;
  v110 = v285;
  *v108 = v284;
  v108[1] = v110;
  v111 = v287;
  v108[2] = v286;
  v108[3] = v111;
  static Alignment.top.getter();
  _FrameLayout.init(width:height:alignment:)();
  v112 = v225;
  sub_10002C7C4(v107, v225, &qword_100115108, &qword_1000D2310);
  v113 = (v112 + *(v223 + 36));
  v114 = v292;
  *v113 = v291;
  v113[1] = v114;
  v113[2] = v293;
  v115 = a1 + v90[10];
  v116 = *v115;
  v117 = *(v115 + 1);
  LODWORD(v224) = v116;
  LOBYTE(v294) = v116;
  v223 = v117;
  *(&v294 + 1) = v117;
  v118 = sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.getter();
  if (v282)
  {
    v119 = v213;
    sub_10001D9E8(type metadata accessor for AlarmAlertFullScreen, v213);
    v120 = Font.platformFont(in:)();
    (*(v214 + 8))(v119, v215);
    CapHeight = CTFontGetCapHeight(v120);
  }

  else
  {
    CapHeight = 50.0;
  }

  v122 = v233;
  v123 = v227;
  sub_10002C7C4(v112, v227, &qword_100115110, &qword_1000D2318);
  v124 = (v123 + *(v229 + 36));
  *v124 = 0.0;
  v124[1] = CapHeight;
  [v272 isSleepAlarm];
  sub_10002CA60();
  v125 = v228;
  View.hyphenationFactor(_:)();
  sub_10002D02C(v123, &qword_100115118, &qword_1000D2320);
  v126 = a1 + v90[15];
  v127 = *v126;
  v128 = *(v126 + 1);
  LOBYTE(v294) = v127;
  *(&v294 + 1) = v128;
  v274 = v118;
  State.wrappedValue.getter();
  if (v282)
  {
    v129 = 1.0;
  }

  else
  {
    v129 = 0.0;
  }

  (*(v230 + 32))(v122, v125, v231);
  *&v122[*(v226 + 36)] = v129;
  if (qword_100113748 != -1)
  {
    swift_once();
  }

  v130 = qword_10011F788;
  v131 = v122;
  v132 = v234;
  sub_10002C7C4(v131, v234, &qword_100115128, &qword_1000D2330);
  *(v132 + *(v232 + 36)) = v130;
  sub_100025564(a1, v106, type metadata accessor for AlarmAlertFullScreen);
  v133 = (*(v237 + 80) + 16) & ~*(v237 + 80);
  v237 = *(v237 + 80);
  v233 = (v133 + v238);
  v134 = swift_allocObject();
  v238 = v133;
  sub_1000255CC(v106, v134 + v133, type metadata accessor for AlarmAlertFullScreen);
  v135 = v236;
  sub_10002C7C4(v132, v236, &qword_100115130, &qword_1000D2338);
  v136 = (v135 + *(v235 + 36));
  *v136 = sub_10002CC40;
  v136[1] = v134;
  v136[2] = 0;
  v136[3] = 0;
  v272 = v130;

  LocalizedStringKey.init(stringLiteral:)();
  sub_10002CC6C();
  View.accessibilityLabel(_:)();

  sub_10002D02C(v135, &qword_100115138, &qword_1000D2340);
  v137 = v273;
  static TimeZone.current.getter();
  v138 = type metadata accessor for TimeZone();
  v139 = *(v138 - 8);
  v235 = *(v139 + 56);
  v236 = v138;
  v234 = v139 + 56;
  (v235)(v137, 0, 1);
  v140 = Text.init(dateFormat:timeZone:)();
  v142 = v141;
  v232 = a1;
  v144 = v143;
  if (qword_1001136C0 != -1)
  {
    swift_once();
  }

  Font.monospacedDigit()();
  v146 = v240;
  v145 = v241;
  v147 = v242;
  (*(v241 + 104))(v240, enum case for Font._StylisticAlternative.three(_:), v242);
  Font._stylisticAlternative(_:)();

  (*(v145 + 8))(v146, v147);
  v148 = Text.font(_:)();
  v150 = v149;
  LOBYTE(v145) = v151;
  v153 = v152;

  sub_100025B0C(v140, v142, v144 & 1);

  *&v294 = v148;
  *(&v294 + 1) = v150;
  v154 = v145 & 1;
  LOBYTE(v295) = v145 & 1;
  *(&v295 + 1) = v153;
  v155 = v276;
  v156 = v277;
  v220(v276, v221, v277);
  v157 = v244;
  View.dynamicTypeSize(_:)();
  (v219)(v155, v156);
  sub_100025B0C(v148, v150, v154);

  static Alignment.bottomTrailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v158 = v251;
  (*(v247 + 32))(v251, v157, v252);
  v159 = &v158[*(v243 + 36)];
  v160 = v299;
  *(v159 + 4) = v298;
  *(v159 + 5) = v160;
  *(v159 + 6) = v300;
  v161 = v295;
  *v159 = v294;
  *(v159 + 1) = v161;
  v162 = v297;
  *(v159 + 2) = v296;
  *(v159 + 3) = v162;
  v163 = static Color.white.getter();
  v164 = swift_getKeyPath();
  v165 = v158;
  v166 = v250;
  sub_10002C7C4(v165, v250, &qword_100114AF0, &qword_1000D1E58);
  v167 = (v166 + *(v248 + 36));
  *v167 = v164;
  v167[1] = v163;
  v168 = swift_getKeyPath();
  v169 = v249;
  sub_10002C7C4(v166, v249, &qword_100114AF8, &qword_1000D1E60);
  v170 = v169 + *(v246 + 36);
  *v170 = v168;
  *(v170 + 8) = 1;
  *(v170 + 16) = 0;
  v171 = swift_getKeyPath();
  v172 = v169;
  v173 = v255;
  sub_10002C7C4(v172, v255, &qword_100114B00, &qword_1000D1E68);
  v174 = v173 + *(v245 + 36);
  *v174 = v171;
  *(v174 + 8) = 1;
  (*(v269 + 104))(v268, enum case for Color.RGBColorSpace.sRGBLinear(_:), v270);
  v175 = 0.0;
  v176 = Color.init(_:white:opacity:)();
  v177 = v173;
  v178 = v256;
  sub_10002C7C4(v177, v256, &qword_100114B08, &qword_1000D1E70);
  v179 = (v178 + *(v253 + 36));
  *v179 = v176;
  v179[1] = 0x3FF0000000000000;
  v179[2] = 0;
  v179[3] = 0;
  v180 = swift_getKeyPath();
  v181 = v178;
  v182 = v259;
  sub_10002C7C4(v181, v259, &qword_100114B10, &qword_1000D1E78);
  v183 = (v182 + *(v254 + 36));
  *v183 = v180;
  v183[1] = 0x3FE6666666666666;
  v282 = v224;
  v283 = v223;
  State.wrappedValue.getter();
  if (v281)
  {
    v184 = 0.0;
  }

  else
  {
    v184 = 50.0;
  }

  v185 = v182;
  v186 = v262;
  sub_10002C7C4(v185, v262, &qword_100114B18, &qword_1000D1E80);
  v187 = v186 + *(v257 + 36);
  *v187 = 0;
  *(v187 + 8) = v184;
  v188 = v232;
  v189 = v232 + *(v279 + 56);
  v190 = *v189;
  v191 = *(v189 + 8);
  v282 = v190;
  v283 = v191;
  State.wrappedValue.getter();
  if (v281)
  {
    v175 = 1.0;
  }

  v192 = v260;
  sub_10002C7C4(v186, v260, &qword_100114B20, &qword_1000D1E88);
  *(v192 + *(v261 + 36)) = v175;
  v193 = v263;
  sub_10002C7C4(v192, v263, &qword_100114B28, &qword_1000D1E90);
  *(v193 + *(v258 + 36)) = v272;
  v194 = v188;
  v195 = v275;
  sub_100025564(v194, v275, type metadata accessor for AlarmAlertFullScreen);
  v196 = swift_allocObject();
  sub_1000255CC(v195, v196 + v238, type metadata accessor for AlarmAlertFullScreen);
  v197 = v265;
  sub_10002C7C4(v193, v265, &qword_100114B30, &qword_1000D1E98);
  v198 = (v197 + *(v264 + 36));
  *v198 = sub_10002CE78;
  v198[1] = v196;
  v198[2] = 0;
  v198[3] = 0;

  v199 = v273;
  static TimeZone.current.getter();
  (v235)(v199, 0, 1, v236);
  v200 = Text.init(dateFormat:timeZone:)();
  v202 = v201;
  LOBYTE(v195) = v203;
  sub_10002A51C();
  v204 = v266;
  View.accessibilityLabel(_:)();
  sub_100025B0C(v200, v202, v195 & 1);

  sub_10002D02C(v197, &qword_100114B38, &qword_1000D1EA0);
  v205 = v278;
  v206 = v239;
  sub_10002CFC4(v278, v239, &qword_100115140, &qword_1000D2348);
  v207 = v267;
  sub_10002CFC4(v204, v267, &qword_100114B40, &qword_1000D1EA8);
  v208 = v271;
  sub_10002CFC4(v206, v271, &qword_100115140, &qword_1000D2348);
  v209 = sub_1000032D4(&qword_1001151A8, &qword_1000D2368);
  v210 = v208 + *(v209 + 48);
  *v210 = 0;
  *(v210 + 8) = 1;
  sub_10002CFC4(v207, v208 + *(v209 + 64), &qword_100114B40, &qword_1000D1EA8);
  sub_10002D02C(v204, &qword_100114B40, &qword_1000D1EA8);
  sub_10002D02C(v205, &qword_100115140, &qword_1000D2348);
  sub_10002D02C(v207, &qword_100114B40, &qword_1000D1EA8);
  return sub_10002D02C(v206, &qword_100115140, &qword_1000D2348);
}

uint64_t sub_10001FB00()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v11 + 8))(v14, v10);
  static Date.now.getter();
  v16 = Date._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);
  static Locale.current.getter();
  v17 = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);
  v18 = [(objc_class *)isa hksp_dayPeriodForDate:v16 locale:v17];

  v19 = 0x65764520646F6F47;
  v20 = 0xEA00000000007468;
  v21 = 0x67694E20646F6F47;
  if (v18 == 2)
  {
    v21 = 0x74664120646F6F47;
    v20 = 0xEE006E6F6F6E7265;
  }

  if (v18 == 3)
  {
    v20 = 0xEC000000676E696ELL;
  }

  else
  {
    v19 = v21;
  }

  v22 = v18 >= 2;
  if (v18 >= 2)
  {
    v23 = v19;
  }

  else
  {
    v23 = 0x726F4D20646F6F47;
  }

  if (v22)
  {
    v24 = v20;
  }

  else
  {
    v24 = 0xEC000000676E696ELL;
  }

  v25 = [objc_opt_self() mainBundle];
  v32._object = 0x80000001000D7F40;
  v26._countAndFlagsBits = v23;
  v26._object = v24;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0xD000000000000014;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v32);

  v31 = v28;
  sub_100025FB4();
  v29 = StringProtocol.localizedUppercase.getter();

  return v29;
}

uint64_t sub_10001FE88@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1000032D4(&qword_1001151B0, &qword_1000D2370);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v56 - v12;
  v14 = sub_1000032D4(&qword_1001151B8, &qword_1000D2378);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v56 - v16;
  v18 = sub_1000032D4(&qword_100114C88, &qword_1000D1FA0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  __chkstk_darwin(v20);
  if (a1)
  {
    v62 = a5;
    v58 = v22;
    v59 = a3;
    v23 = &v56 - v21;
    v24 = static VerticalAlignment.center.getter();
    v61 = v10;
    LOBYTE(v78) = 1;
    sub_10002050C(a2, v72);
    *&v71[7] = v72[0];
    *&v71[23] = v72[1];
    *&v71[39] = v72[2];
    *&v71[55] = v72[3];
    v60 = v13;
    v25 = v78;
    v26 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    *(&v74[1] + 1) = *&v71[16];
    *(&v74[2] + 1) = *&v71[32];
    *(&v74[3] + 1) = *&v71[48];
    v73 = v24;
    LOBYTE(v74[0]) = v25;
    *(v74 + 1) = *v71;
    *&v74[4] = *&v71[63];
    *(&v74[4] + 1) = KeyPath;
    v75 = v26;
    *v23 = static VerticalAlignment.center.getter();
    *(v23 + 8) = 0;
    *(v23 + 16) = 1;
    v63 = v23;
    v57 = v23 + *(sub_1000032D4(&qword_100114CA8, &qword_1000D1FB0) + 44);
    *&v78 = v59;
    *(&v78 + 1) = a4;
    sub_100025FB4();

    v28 = Text.init<A>(_:)();
    v30 = v29;
    LOBYTE(v23) = v31;
    v32 = [objc_opt_self() mtOrange];
    Color.init(uiColor:)();
    v33 = Text.foregroundColor(_:)();
    v56 = v17;
    v34 = v33;
    v59 = v14;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    sub_100025B0C(v28, v30, v23 & 1);

    *&v78 = v34;
    *(&v78 + 1) = v36;
    LOBYTE(v79) = v38 & 1;
    *(&v79 + 1) = v40;
    v41 = v57;
    View.lineLimit(_:reservesSpace:)();
    sub_100025B0C(v34, v36, v38 & 1);

    *(v41 + *(sub_1000032D4(&qword_100114CB0, &qword_1000D1FB8) + 36)) = 256;
    v68 = v74[3];
    v69 = v74[4];
    v70 = v75;
    v64 = v73;
    v65 = v74[0];
    v66 = v74[1];
    v67 = v74[2];
    v42 = v58;
    sub_10002CFC4(v63, v58, &qword_100114C88, &qword_1000D1FA0);
    v43 = v68;
    v44 = v69;
    v76[4] = v68;
    v76[5] = v69;
    v45 = v70;
    v77 = v70;
    v46 = v65;
    v76[0] = v64;
    v76[1] = v65;
    v48 = v66;
    v47 = v67;
    v76[2] = v66;
    v76[3] = v67;
    v49 = v56;
    *v56 = v64;
    *(v49 + 16) = v46;
    *(v49 + 96) = v45;
    *(v49 + 32) = v48;
    *(v49 + 48) = v47;
    *(v49 + 64) = v43;
    *(v49 + 80) = v44;
    v50 = sub_1000032D4(&qword_1001151D8, &qword_1000D2388);
    sub_10002CFC4(v42, v49 + *(v50 + 48), &qword_100114C88, &qword_1000D1FA0);
    sub_10002CFC4(&v73, &v78, &qword_1001151E0, &qword_1000D2390);
    sub_10002CFC4(v76, &v78, &qword_1001151E0, &qword_1000D2390);
    sub_10002D02C(v42, &qword_100114C88, &qword_1000D1FA0);
    v82 = v68;
    v83 = v69;
    v84 = v70;
    v78 = v64;
    v79 = v65;
    v80 = v66;
    v81 = v67;
    sub_10002D02C(&v78, &qword_1001151E0, &qword_1000D2390);
    sub_10002CFC4(v49, v60, &qword_1001151B8, &qword_1000D2378);
    swift_storeEnumTagMultiPayload();
    sub_1000032D4(&qword_1001151C0, &qword_1000D2380);
    sub_10002DAD8(&qword_1001151C8, &qword_1001151B8, &qword_1000D2378);
    sub_10002DAD8(&qword_1001151D0, &qword_1001151C0, &qword_1000D2380);
    _ConditionalContent<>.init(storage:)();
    sub_10002D02C(&v73, &qword_1001151E0, &qword_1000D2390);
    sub_10002D02C(v49, &qword_1001151B8, &qword_1000D2378);
    return sub_10002D02C(v63, &qword_100114C88, &qword_1000D1FA0);
  }

  else
  {
    v52 = static VerticalAlignment.center.getter();
    sub_100020834(&v78);
    v53 = v79;
    v54 = *(&v79 + 1);
    v55 = v78;
    *v13 = v52;
    *(v13 + 1) = 0;
    v13[16] = 1;
    *(v13 + 24) = v55;
    v13[40] = v53;
    *(v13 + 6) = v54;
    swift_storeEnumTagMultiPayload();
    sub_1000032D4(&qword_1001151C0, &qword_1000D2380);
    sub_10002DAD8(&qword_1001151C8, &qword_1001151B8, &qword_1000D2378);
    sub_10002DAD8(&qword_1001151D0, &qword_1001151C0, &qword_1000D2380);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10002050C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = (a1 + *(type metadata accessor for AlarmAlertFullScreen(0) + 80));
  v7 = *v6;
  v8 = v6[1];
  sub_1000032D4(&qword_100114C60, &qword_1000D1F58);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_100025228(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v28 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName);
  v10 = *(v28 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName + 8);

  if (v10)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
    Image.init(systemName:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
    LocalizedStringKey.init(stringInterpolation:)();
    v13 = Text.init(_:tableName:bundle:comment:)();
    v15 = v14;
    v10 = v16;
    v18 = v17 & 1;
    sub_100025AFC(v13, v14, v17 & 1);
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v18 = 0;
  }

  State.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v28 + 96);
  v19 = *(v28 + 104);

  sub_100025FB4();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  LOBYTE(v20) = v24;
  v26 = v25;
  sub_10002CF3C(v13, v15, v18, v10);
  LOBYTE(v20) = v20 & 1;
  sub_100025AFC(v21, v23, v20);

  sub_10002CF80(v13, v15, v18, v10);
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v18;
  *(a2 + 24) = v10;
  *(a2 + 32) = v21;
  *(a2 + 40) = v23;
  *(a2 + 48) = v20;
  *(a2 + 56) = v26;
  sub_100025B0C(v21, v23, v20);

  return sub_10002CF80(v13, v15, v18, v10);
}

uint64_t sub_100020834@<X0>(uint64_t a1@<X8>)
{
  v1 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  if (qword_100113700 != -1)
  {
    swift_once();
  }

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
  LocalizedStringKey.init(stringInterpolation:)();
  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  static Color.secondary.getter();
  v10 = Text.foregroundColor(_:)();
  v33 = v11;
  v34 = v10;
  v32 = v12;

  sub_100025B0C(v5, v7, v9 & 1);

  sub_100025FB4();

  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  v18 = [objc_opt_self() mtOrange];
  Color.init(uiColor:)();
  v19 = Text.foregroundColor(_:)();
  v21 = v20;
  v23 = v22;

  sub_100025B0C(v13, v15, v17 & 1);

  v24 = static Text.+ infix(_:_:)();
  v26 = v25;
  v28 = v27;
  v31 = v29;
  sub_100025B0C(v19, v21, v23 & 1);

  sub_100025B0C(v34, v33, v32 & 1);

  *a1 = v24;
  *(a1 + 8) = v26;
  *(a1 + 16) = v28 & 1;
  *(a1 + 24) = v31;
  return result;
}

uint64_t sub_100020AE8()
{
  if (qword_100113718 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F750);
  withAnimation<A>(_:_:)();
  if (qword_100113720 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F758);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_100020C1C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AlarmAlertFullScreen(0) + 60));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_100020C98()
{
  if (qword_100113708 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F740);
  withAnimation<A>(_:_:)();
  if (qword_100113710 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F748);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_100020DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = (a1 + *(a2(0) + 36));
  v4 = *v2;
  v5 = *(v2 + 1);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_100020E4C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AlarmAlertFullScreen(0) + 56));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_100020EC8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a2;
  v3 = sub_1000032D4(&qword_1001150B0, &qword_1000D22B8);
  v169 = *(v3 - 8);
  v170 = v3;
  v4 = *(v169 + 64);
  __chkstk_darwin(v3);
  v153 = (v144 - v5);
  v6 = sub_1000032D4(&qword_1001150B8, &qword_1000D22C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v172 = v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v171 = v144 - v10;
  v166 = type metadata accessor for SlideTransition();
  v165 = *(v166 - 8);
  v11 = *(v165 + 64);
  v12 = __chkstk_darwin(v166);
  v163 = v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v164 = v144 - v14;
  v15 = type metadata accessor for AlarmAlertFullScreen(0);
  v167 = *(v15 - 8);
  v16 = *(v167 + 8);
  __chkstk_darwin(v15);
  v18 = v17;
  v19 = v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for LargeActionButton(0);
  v21 = *(*(v20 - 1) + 64);
  v22 = __chkstk_darwin(v20);
  v147 = v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = v144 - v24;
  v26 = sub_1000032D4(&qword_1001150C0, &qword_1000D22C8);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26);
  v149 = v144 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v158 = v144 - v30;
  v176 = sub_1000032D4(&qword_1001150C8, &qword_1000D22D0);
  v31 = *(*(v176 - 8) + 64);
  v32 = __chkstk_darwin(v176);
  v148 = v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v159 = v144 - v34;
  v175 = sub_1000032D4(&qword_1001150D0, &qword_1000D22D8);
  v35 = *(*(v175 - 8) + 64);
  v36 = __chkstk_darwin(v175);
  v150 = v144 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v161 = v144 - v38;
  v177 = sub_1000032D4(&qword_1001150D8, &qword_1000D22E0);
  v39 = *(*(v177 - 8) + 64);
  v40 = __chkstk_darwin(v177);
  v151 = v144 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v162 = v144 - v42;
  v178 = sub_1000032D4(&qword_1001150E0, &qword_1000D22E8);
  v43 = *(*(v178 - 8) + 64);
  v44 = __chkstk_darwin(v178);
  v46 = v144 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v44);
  v146 = v144 - v48;
  v49 = __chkstk_darwin(v47);
  v152 = v144 - v50;
  v51 = __chkstk_darwin(v49);
  v160 = v144 - v52;
  __chkstk_darwin(v51);
  v179 = v144 - v53;
  v157 = *a1;
  v54 = [v157 allowsSnooze];
  v168 = v46;
  v174 = v26;
  v55 = v15;
  if (v54)
  {
    [objc_allocWithZone(UIColor) initWithRed:0.17254902 green:0.17254902 blue:0.17254902 alpha:1.0];
  }

  else
  {
    v56 = [objc_opt_self() mtOrange];
  }

  v57 = Color.init(uiColor:)();
  LocalizedStringResource.init(stringLiteral:)();
  v58 = static Color.white.getter();
  v156 = type metadata accessor for AlarmAlertFullScreen;
  v154 = v19;
  sub_100025564(a1, v19, type metadata accessor for AlarmAlertFullScreen);
  v59 = *(v167 + 80);
  v180 = v18;
  v155 = (v59 + 16) & ~v59;
  v60 = a1;
  v61 = swift_allocObject();
  v167 = type metadata accessor for AlarmAlertFullScreen;
  sub_1000255CC(v19, v61 + ((v59 + 16) & ~v59), type metadata accessor for AlarmAlertFullScreen);
  *&v25[v20[5]] = v58;
  *&v25[v20[6]] = v57;
  v25[v20[7]] = 0;
  v62 = &v25[v20[8]];
  *v62 = sub_10002C6D8;
  v62[1] = v61;
  v63 = &v25[v20[9]];
  v181 = 0;
  State.init(wrappedValue:)();
  v64 = v183;
  *v63 = v182;
  *(v63 + 1) = v64;
  v65 = v60 + *(v55 + 48);
  v66 = *v65;
  v67 = *(v65 + 1);
  v182 = *v65;
  v183 = v67;
  v68 = sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.getter();
  if (v181)
  {
    v69 = 0.0;
  }

  else
  {
    v69 = 150.0;
  }

  v70 = v25;
  v71 = v158;
  sub_1000255CC(v70, v158, type metadata accessor for LargeActionButton);
  v72 = v71 + *(v174 + 36);
  *v72 = 0;
  *(v72 + 8) = v69;
  v145 = v55;
  v73 = v60 + *(v55 + 68);
  v74 = *v73;
  v75 = *(v73 + 1);
  v182 = v74;
  v183 = v75;
  State.wrappedValue.getter();
  if (v181)
  {
    v76 = 1.0;
  }

  else
  {
    v76 = 0.0;
  }

  v77 = v71;
  v78 = v159;
  sub_10002C7C4(v77, v159, &qword_1001150C0, &qword_1000D22C8);
  *(v78 + *(v176 + 36)) = v76;
  v182 = v66;
  v183 = v67;
  v158 = v68;
  v79 = v60;
  State.wrappedValue.getter();
  if (v181)
  {
    v80 = 1.0;
  }

  else
  {
    v80 = 0.8;
  }

  static UnitPoint.center.getter();
  v82 = v81;
  v84 = v83;
  v85 = v161;
  sub_10002C7C4(v78, v161, &qword_1001150C8, &qword_1000D22D0);
  v86 = v85 + *(v175 + 36);
  *v86 = v80;
  *(v86 + 8) = v80;
  *(v86 + 16) = v82;
  *(v86 + 24) = v84;
  v87 = v164;
  SlideTransition.init()();
  v88 = v165;
  v89 = v166;
  (*(v165 + 16))(v163, v87, v166);
  sub_100025228(&qword_1001142F0, &type metadata accessor for SlideTransition);
  v90 = AnyTransition.init<A>(_:)();
  v91 = v87;
  v92 = v155;
  (*(v88 + 8))(v91, v89);
  v93 = v85;
  v94 = v154;
  v95 = v162;
  sub_10002C7C4(v93, v162, &qword_1001150D0, &qword_1000D22D8);
  *(v95 + *(v177 + 36)) = v90;
  sub_100025564(v79, v94, v156);
  v96 = v59;
  v97 = swift_allocObject();
  sub_1000255CC(v94, v97 + v92, v167);
  v98 = v160;
  sub_10002C7C4(v95, v160, &qword_1001150D8, &qword_1000D22E0);
  v99 = v179;
  v100 = (v98 + *(v178 + 36));
  *v100 = sub_10002C754;
  v100[1] = v97;
  v100[2] = 0;
  v100[3] = 0;
  sub_10002C7C4(v98, v99, &qword_1001150E0, &qword_1000D22E8);
  if ([v157 allowsSnooze])
  {
    v101 = [objc_opt_self() mtOrange];
    v102 = Color.init(uiColor:)();
    v103 = v147;
    LocalizedStringResource.init(stringLiteral:)();
    v104 = static Color.white.getter();
    sub_100025564(v79, v94, type metadata accessor for AlarmAlertFullScreen);
    v144[1] = v96;
    v105 = swift_allocObject();
    sub_1000255CC(v94, v105 + v92, type metadata accessor for AlarmAlertFullScreen);
    *(v103 + v20[5]) = v104;
    *(v103 + v20[6]) = v102;
    *(v103 + v20[7]) = 0;
    v106 = (v103 + v20[8]);
    *v106 = sub_10002C780;
    v106[1] = v105;
    v107 = v103 + v20[9];
    v181 = 0;
    State.init(wrappedValue:)();
    v108 = v183;
    *v107 = v182;
    *(v107 + 8) = v108;
    v109 = v145;
    v110 = v79 + *(v145 + 52);
    v111 = *v110;
    v112 = *(v110 + 8);
    v182 = *v110;
    v183 = v112;
    State.wrappedValue.getter();
    if (v181)
    {
      v113 = 0.0;
    }

    else
    {
      v113 = 150.0;
    }

    v114 = v149;
    sub_1000255CC(v103, v149, type metadata accessor for LargeActionButton);
    v115 = v114 + *(v174 + 36);
    *v115 = 0;
    *(v115 + 8) = v113;
    v116 = v79 + *(v109 + 72);
    v117 = *v116;
    v118 = *(v116 + 8);
    v182 = v117;
    v183 = v118;
    State.wrappedValue.getter();
    if (v181)
    {
      v119 = 1.0;
    }

    else
    {
      v119 = 0.0;
    }

    v120 = v114;
    v121 = v148;
    sub_10002C7C4(v120, v148, &qword_1001150C0, &qword_1000D22C8);
    *(v121 + *(v176 + 36)) = v119;
    v182 = v111;
    v183 = v112;
    State.wrappedValue.getter();
    if (v181)
    {
      v122 = 1.0;
    }

    else
    {
      v122 = 0.8;
    }

    static UnitPoint.center.getter();
    v124 = v123;
    v126 = v125;
    v127 = v150;
    sub_10002C7C4(v121, v150, &qword_1001150C8, &qword_1000D22D0);
    v128 = v127 + *(v175 + 36);
    *v128 = v122;
    *(v128 + 8) = v122;
    *(v128 + 16) = v124;
    *(v128 + 24) = v126;
    v129 = v171;
    if (qword_100113748 != -1)
    {
      swift_once();
    }

    v130 = qword_10011F788;
    v131 = v151;
    sub_10002C7C4(v127, v151, &qword_1001150D0, &qword_1000D22D8);
    *(v131 + *(v177 + 36)) = v130;
    sub_100025564(v79, v94, type metadata accessor for AlarmAlertFullScreen);
    v132 = swift_allocObject();
    sub_1000255CC(v94, v132 + v92, type metadata accessor for AlarmAlertFullScreen);
    v133 = v146;
    sub_10002C7C4(v131, v146, &qword_1001150D8, &qword_1000D22E0);
    v134 = (v133 + *(v178 + 36));
    *v134 = sub_10002C798;
    v134[1] = v132;
    v134[2] = 0;
    v134[3] = 0;
    v135 = v152;
    sub_10002C7C4(v133, v152, &qword_1001150E0, &qword_1000D22E8);
    v136 = v168;
    sub_10002CFC4(v135, v168, &qword_1001150E0, &qword_1000D22E8);
    v137 = v153;
    *v153 = 0x4038000000000000;
    *(v137 + 8) = 0;
    v138 = sub_1000032D4(&qword_1001150F0, &qword_1000D22F8);
    sub_10002CFC4(v136, v137 + *(v138 + 48), &qword_1001150E0, &qword_1000D22E8);

    sub_10002D02C(v135, &qword_1001150E0, &qword_1000D22E8);
    sub_10002D02C(v136, &qword_1001150E0, &qword_1000D22E8);
    sub_10002C7C4(v137, v129, &qword_1001150B0, &qword_1000D22B8);
    v139 = 0;
    v99 = v179;
  }

  else
  {
    v139 = 1;
    v129 = v171;
    v136 = v168;
  }

  (*(v169 + 56))(v129, v139, 1, v170);
  sub_10002CFC4(v99, v136, &qword_1001150E0, &qword_1000D22E8);
  v140 = v172;
  sub_10002CFC4(v129, v172, &qword_1001150B8, &qword_1000D22C0);
  v141 = v173;
  sub_10002CFC4(v136, v173, &qword_1001150E0, &qword_1000D22E8);
  v142 = sub_1000032D4(&qword_1001150E8, &qword_1000D22F0);
  sub_10002CFC4(v140, v141 + *(v142 + 48), &qword_1001150B8, &qword_1000D22C0);
  sub_10002D02C(v129, &qword_1001150B8, &qword_1000D22C0);
  sub_10002D02C(v99, &qword_1001150E0, &qword_1000D22E8);
  sub_10002D02C(v140, &qword_1001150B8, &qword_1000D22C0);
  return sub_10002D02C(v136, &qword_1001150E0, &qword_1000D22E8);
}