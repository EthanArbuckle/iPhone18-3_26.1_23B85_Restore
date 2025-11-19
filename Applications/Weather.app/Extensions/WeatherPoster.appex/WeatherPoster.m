UIImage *sub_100002008()
{
  v1 = objc_autoreleasePoolPush();
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v6 = [objc_opt_self() mainScreen];
  [v6 scale];
  v8 = v7;

  v11.width = v3;
  v11.height = v5;
  UIGraphicsBeginImageContextWithOptions(v11, 0, v8);
  [v0 bounds];
  [v0 drawViewHierarchyInRect:0 afterScreenUpdates:?];
  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  objc_autoreleasePoolPop(v1);
  return v9;
}

id sub_1000020E8(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(UILabel) init];
  sub_100003430(a1, a2, v5);
  v6 = [objc_opt_self() systemFontOfSize:15.0];
  [v5 setFont:v6];

  [v5 setNumberOfLines:0];
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  [v5 setTextColor:v8];

  v9 = v5;
  v10 = [v7 blackColor];
  v11 = [v10 colorWithAlphaComponent:0.3];

  [v9 setBackgroundColor:v11];
  [v9 sizeToFit];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 addSubview:v9];
  v12 = objc_opt_self();
  sub_100002D54(&qword_1000634E0, &qword_10004C3C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10004C280;
  v14 = [v9 leadingAnchor];
  v15 = [v2 safeAreaLayoutGuide];
  v16 = [v15 leadingAnchor];

  v17 = [v14 constraintEqualToAnchor:v16];
  *(v13 + 32) = v17;
  v18 = [v9 trailingAnchor];
  v19 = [v2 safeAreaLayoutGuide];
  v20 = [v19 trailingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v13 + 40) = v21;
  v22 = [v9 bottomAnchor];

  v23 = [v2 safeAreaLayoutGuide];
  v24 = [v23 bottomAnchor];

  v25 = [v22 constraintLessThanOrEqualToAnchor:v24 constant:-200.0];
  *(v13 + 48) = v25;
  sub_100002D9C();
  isa = sub_10004AA4C().super.isa;

  [v12 activateConstraints:isa];

  return v9;
}

char *sub_100002474(uint64_t a1)
{
  v2 = sub_10004A71C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  v7 = objc_allocWithZone(type metadata accessor for GradientView());
  v8 = sub_1000248CC(v5);
  sub_100002560(v8, 1);
  return v8;
}

void sub_100002560(void *a1, char a2)
{
  v5 = [a1 layer];
  [v5 setZPosition:dbl_10004C9D8[a2]];

  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 addSubview:a1];
  v6 = objc_opt_self();
  sub_100002D54(&qword_1000634E0, &qword_10004C3C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10004C290;
  v8 = [a1 leadingAnchor];
  v9 = [v2 leadingAnchor];
  v10 = sub_100003A8C();

  *(v7 + 32) = v10;
  v11 = [a1 trailingAnchor];
  v12 = [v2 trailingAnchor];
  v13 = sub_100003A8C();

  *(v7 + 40) = v13;
  v14 = [a1 topAnchor];
  v15 = [v2 topAnchor];
  v16 = sub_100003A8C();

  *(v7 + 48) = v16;
  v17 = [a1 bottomAnchor];
  v18 = [v2 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v7 + 56) = v19;
  sub_100002D9C();
  isa = sub_10004AA4C().super.isa;

  [v6 activateConstraints:isa];
}

void sub_1000027DC(CGFloat a1, double a2, double a3)
{
  if (a1 > 0.0)
  {
    [v3 bounds];
    v15.origin.x = 0.0;
    v15.origin.y = 0.0;
    v15.size.width = 0.0;
    v15.size.height = 0.0;
    if (!CGRectEqualToRect(v12, v15))
    {
      v7 = [v3 layer];
      [v7 setAnchorPoint:{a2, a3}];

      [v3 bounds];
      v8 = 1.0 / a1 * (a2 + -0.5) * CGRectGetWidth(v13);
      [v3 bounds];
      v9 = 1.0 / a1 * (a3 + -0.5) * CGRectGetHeight(v14);
      CGAffineTransformMakeScale(&v11, a1, a1);
      CGAffineTransformTranslate(&v10, &v11, v8, v9);
      v11 = v10;
      [v3 setTransform:&v11];
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for UnlockState(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000029D4(uint64_t a1, id *a2)
{
  result = sub_10004A96C();
  *a2 = 0;
  return result;
}

uint64_t sub_100002A4C(uint64_t a1, id *a2)
{
  v3 = sub_10004A97C();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100002ACC()
{
  sub_10004A98C();
  v0 = sub_10004A95C();

  return v0;
}

NSString sub_100002B40@<X0>(void *a1@<X8>)
{
  result = sub_100002ACC();
  *a1 = result;
  return result;
}

uint64_t sub_100002B84()
{
  sub_10004A98C();
  v0 = sub_10004A9FC();

  return v0;
}

uint64_t sub_100002BD8()
{
  sub_10004A98C();
  sub_10004A9CC();
}

Swift::Int sub_100002C48()
{
  sub_10004A98C();
  sub_10004AFEC();
  sub_10004A9CC();
  v0 = sub_10004B00C();

  return v0;
}

void sub_100002CC8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_100002CFC();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_100002D04()
{
  v1 = sub_100003AA8();
  result = WeatherIntentResponseCode.rawValue.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_100002D54(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002D9C()
{
  result = qword_1000634E8;
  if (!qword_1000634E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000634E8);
  }

  return result;
}

uint64_t sub_100002E00(uint64_t a1)
{
  v2 = sub_100003568(&qword_100063598, type metadata accessor for CLError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100002E6C(uint64_t a1)
{
  v2 = sub_100003568(&qword_100063598, type metadata accessor for CLError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002ED8(void *a1, uint64_t a2)
{
  v4 = sub_100003568(&qword_100063598, type metadata accessor for CLError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100002F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003568(&qword_100063598, type metadata accessor for CLError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100003010()
{
  v2 = *v0;
  sub_10004AFEC();
  sub_10004A93C();
  return sub_10004B00C();
}

uint64_t sub_100003074(uint64_t a1)
{
  v2 = sub_100003568(&qword_100063600, type metadata accessor for AttributeName);
  v3 = sub_100003568(&qword_100063608, type metadata accessor for AttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003134@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10004A95C();

  *a2 = v5;
  return result;
}

uint64_t sub_10000317C()
{
  sub_100003AA8();
  result = sub_1000031A4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1000031A8(uint64_t a1)
{
  v2 = sub_100003568(&qword_1000635F0, type metadata accessor for TraitKey);
  v3 = sub_100003568(&qword_1000635F8, type metadata accessor for TraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003264(uint64_t a1)
{
  v2 = sub_100003568(&qword_1000635A0, type metadata accessor for CLError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000032D0(uint64_t a1)
{
  v2 = sub_100003568(&qword_1000635A0, type metadata accessor for CLError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100003340(uint64_t a1)
{
  v2 = sub_100003568(&qword_100063598, type metadata accessor for CLError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000033AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003568(&qword_100063598, type metadata accessor for CLError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

void sub_100003430(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10004A95C();
  [a3 setText:v4];
}

uint64_t sub_1000034C4(uint64_t a1, int a2)
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

uint64_t sub_1000034E4(uint64_t result, int a2, int a3)
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

uint64_t sub_100003568(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10000372C(uint64_t a1, unint64_t *a2)
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

unint64_t sub_1000038E4()
{
  result = qword_1000635C8;
  if (!qword_1000635C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000635C8);
  }

  return result;
}

id sub_100003A8C()
{
  v4 = *(v2 + 4080);

  return [v0 v4];
}

uint64_t getEnumTagSinglePayload for UnlockState(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[16])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UnlockState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

Swift::Int sub_100003B68(unsigned __int8 a1)
{
  sub_10004AFEC();
  sub_10004AFFC(a1);
  return sub_10004B00C();
}

Swift::Int sub_100003BC0()
{
  v1 = *v0;
  sub_10004AFEC();
  sub_10004AFFC(v1);
  return sub_10004B00C();
}

uint64_t sub_100003C04(char a1)
{
  if (!a1)
  {
    return 0x64656B636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x64656B636F6C6E75;
  }

  return 0x697469736E617274;
}

uint64_t sub_100003C6C(char a1)
{
  sub_10004AD6C(27);

  strcpy(v5, "screenState:");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  if (a1)
  {
    if (a1 == 1)
    {
      v2._countAndFlagsBits = 0x64656B636F6C6E75;
    }

    else
    {
      v2._countAndFlagsBits = 0x697469736E617274;
    }

    if (a1 == 1)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xED0000676E696E6FLL;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v2._countAndFlagsBits = 0x64656B636F6CLL;
  }

  v2._object = v3;
  sub_10004A9DC(v2);

  v6._countAndFlagsBits = 0x6572676F7270202CLL;
  v6._object = 0xEB000000003A7373;
  sub_10004A9DC(v6);
  v7._countAndFlagsBits = sub_10004AB3C();
  sub_10004A9DC(v7);

  return v5[0];
}

uint64_t getEnumTagSinglePayload for UnlockState.ScreenState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UnlockState.ScreenState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x100003F44);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100003F90()
{
  result = qword_1000637A0;
  if (!qword_1000637A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000637A0);
  }

  return result;
}

uint64_t sub_100003FF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100049F2C();
  v7 = sub_100005A00(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_18:

    return sub_100004288(v10, a2, v9);
  }

  v11 = sub_100049B7C();
  v12 = sub_100005A00(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_17:
    v10 = a1 + v14;
    goto LABEL_18;
  }

  v15 = sub_100049D9C();
  v16 = sub_100005A00(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[6];
    goto LABEL_17;
  }

  v18 = sub_10004A69C();
  v19 = sub_100005A00(v18);
  if (*(v20 + 84) == a2)
  {
    v9 = v19;
    v14 = a3[9];
    goto LABEL_17;
  }

  v21 = sub_100002D54(&unk_100063DE0, "4E");
  v22 = sub_100005A00(v21);
  if (*(v23 + 84) == a2)
  {
    v9 = v22;
    v14 = a3[10];
    goto LABEL_17;
  }

  v24 = sub_10004A8AC();
  v25 = sub_100005A00(v24);
  if (*(v26 + 84) == a2)
  {
    v9 = v25;
    v14 = a3[12];
    goto LABEL_17;
  }

  v27 = sub_100002D54(&qword_1000637A8, "4E");
  v28 = sub_100005A00(v27);
  if (*(v29 + 84) == a2)
  {
    v9 = v28;
    v14 = a3[14];
    goto LABEL_17;
  }

  v30 = sub_10004A72C();
  v31 = sub_100005A00(v30);
  if (*(v32 + 84) == a2)
  {
    v9 = v31;
    v14 = a3[16];
    goto LABEL_17;
  }

  v34 = *(a1 + a3[17]);
  if (v34 >= 0xFFFFFFFF)
  {
    LODWORD(v34) = -1;
  }

  v35 = v34 - 1;
  if (v35 < 0)
  {
    v35 = -1;
  }

  return (v35 + 1);
}

uint64_t sub_1000042C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100049F2C();
  v9 = sub_100005A00(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_100049B7C();
    v14 = sub_100005A00(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_100049D9C();
      v18 = sub_100005A00(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = sub_10004A69C();
        v21 = sub_100005A00(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[9];
        }

        else
        {
          v23 = sub_100002D54(&unk_100063DE0, "4E");
          v24 = sub_100005A00(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[10];
          }

          else
          {
            v26 = sub_10004A8AC();
            v27 = sub_100005A00(v26);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[12];
            }

            else
            {
              v29 = sub_100002D54(&qword_1000637A8, "4E");
              v30 = sub_100005A00(v29);
              if (*(v31 + 84) == a3)
              {
                v11 = v30;
                v16 = a4[14];
              }

              else
              {
                v32 = sub_10004A72C();
                result = sub_100005A00(v32);
                if (*(v34 + 84) != a3)
                {
                  *(a1 + a4[17]) = a2;
                  return result;
                }

                v11 = result;
                v16 = a4[16];
              }
            }
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return sub_100004544(v12, a2, a2, v11);
}

uint64_t type metadata accessor for PosterAnimationViewModel()
{
  result = qword_100063808;
  if (!qword_100063808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000045B8()
{
  sub_100049F2C();
  if (v0 <= 0x3F)
  {
    sub_100049B7C();
    if (v1 <= 0x3F)
    {
      sub_100049D9C();
      if (v2 <= 0x3F)
      {
        sub_10004A69C();
        if (v3 <= 0x3F)
        {
          sub_100004750(319, &qword_100063818, &type metadata accessor for Date);
          if (v4 <= 0x3F)
          {
            sub_10004A8AC();
            if (v5 <= 0x3F)
            {
              sub_100004750(319, &qword_100063820, &type metadata accessor for BackgroundMoonData);
              if (v6 <= 0x3F)
              {
                sub_10004A72C();
                if (v7 <= 0x3F)
                {
                  sub_100004750(319, &qword_100063828, sub_1000047A4);
                  if (v8 <= 0x3F)
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
  }
}

void sub_100004750(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10004ACDC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1000047A4()
{
  result = qword_100063830;
  if (!qword_100063830)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100063830);
  }

  return result;
}

uint64_t sub_1000047E8(uint64_t a1, uint64_t a2)
{
  v111 = sub_10004A6DC();
  v4 = sub_1000059BC(v111);
  v109 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_1000059D0();
  v107 = v9 - v8;
  v10 = sub_100002D54(&qword_1000637A8, "4E");
  v11 = sub_100005A50(v10);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v108 = &v102[-v14];
  v15 = sub_100002D54(&qword_100063898, &qword_10004CBB8);
  v16 = sub_100005A24(v15);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v110 = &v102[-v19];
  sub_100005A44();
  v20 = sub_100049B7C();
  v21 = sub_1000059BC(v20);
  v112 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_1000059D0();
  v27 = v26 - v25;
  v28 = sub_100002D54(&unk_100063DE0, "4E");
  v29 = sub_100005A50(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_100005A34();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  v37 = &v102[-v36];
  v38 = sub_100002D54(&qword_1000638A0, &qword_10004CBC0);
  v39 = sub_100005A24(v38);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  sub_100005A34();
  v44 = (v42 - v43);
  __chkstk_darwin(v45);
  v47 = &v102[-v46];
  if ((sub_100049EEC() & 1) == 0)
  {
    return 0;
  }

  v106 = v15;
  v48 = a2;
  v49 = type metadata accessor for PosterAnimationViewModel();
  v50 = v49[5];
  if ((sub_100049B2C() & 1) == 0)
  {
    return 0;
  }

  if ((sub_10000A4A4(a1 + v49[6], v48 + v49[6]) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v49[7]) != *(v48 + v49[7]))
  {
    return 0;
  }

  if (*(a1 + v49[8]) != *(v48 + v49[8]))
  {
    return 0;
  }

  v51 = v49[9];
  if ((sub_10004A68C() & 1) == 0)
  {
    return 0;
  }

  v104 = a1;
  v105 = v49;
  v52 = v49[10];
  v53 = a1 + v52;
  v54 = *(v38 + 48);
  sub_1000058BC(v53, v47, &unk_100063DE0, "4E");
  sub_1000058BC(v48 + v52, &v47[v54], &unk_100063DE0, "4E");
  sub_1000059E0(v47);
  v55 = v48;
  if (v57)
  {
    sub_1000059E0(&v47[v54]);
    v56 = v106;
    if (v57)
    {
      sub_10000591C(v47, &unk_100063DE0, "4E");
      goto LABEL_17;
    }

LABEL_15:
    v58 = &qword_1000638A0;
    v59 = &qword_10004CBC0;
    v60 = v47;
LABEL_27:
    sub_10000591C(v60, v58, v59);
    return 0;
  }

  sub_1000058BC(v47, v37, &unk_100063DE0, "4E");
  sub_1000059E0(&v47[v54]);
  if (v57)
  {
    (*(v112 + 8))(v37, v20);
    goto LABEL_15;
  }

  v61 = v54;
  v62 = v112;
  (*(v112 + 32))(v27, &v47[v61], v20);
  sub_100005A0C();
  sub_100005974(v63, v64);
  v103 = sub_10004A94C();
  v65 = *(v62 + 8);
  v65(v27, v20);
  v65(v37, v20);
  v55 = v48;
  v56 = v106;
  sub_10000591C(v47, &unk_100063DE0, "4E");
  if ((v103 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v66 = v105[11];
  v67 = *(v38 + 48);
  sub_1000058BC(v104 + v66, v44, &unk_100063DE0, "4E");
  sub_1000058BC(v55 + v66, &v44[v67], &unk_100063DE0, "4E");
  sub_1000059E0(v44);
  if (v57)
  {
    sub_1000059E0(&v44[v67]);
    if (v57)
    {
      sub_10000591C(v44, &unk_100063DE0, "4E");
      goto LABEL_31;
    }

LABEL_25:
    v58 = &qword_1000638A0;
    v59 = &qword_10004CBC0;
LABEL_26:
    v60 = v44;
    goto LABEL_27;
  }

  sub_1000058BC(v44, v34, &unk_100063DE0, "4E");
  sub_1000059E0(&v44[v67]);
  if (v68)
  {
    (*(v112 + 8))(v34, v20);
    goto LABEL_25;
  }

  v70 = v112;
  (*(v112 + 32))(v27, &v44[v67], v20);
  sub_100005A0C();
  sub_100005974(v71, v72);
  v73 = sub_10004A94C();
  v74 = *(v70 + 8);
  v74(v27, v20);
  v74(v34, v20);
  sub_10000591C(v44, &unk_100063DE0, "4E");
  if ((v73 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v76 = v104;
  v75 = v105;
  v77 = v105[12];
  if ((sub_10004A87C() & 1) == 0 || *(v76 + v75[13]) != *(v55 + v75[13]))
  {
    return 0;
  }

  v78 = v75[14];
  v79 = *(v56 + 48);
  v44 = v110;
  sub_1000058BC(v76 + v78, v110, &qword_1000637A8, "4E");
  sub_1000058BC(v55 + v78, &v44[v79], &qword_1000637A8, "4E");
  v80 = v111;
  if (sub_100004288(v44, 1, v111) != 1)
  {
    v81 = v108;
    sub_1000058BC(v44, v108, &qword_1000637A8, "4E");
    if (sub_100004288(&v44[v79], 1, v80) != 1)
    {
      v82 = v109;
      v83 = &v44[v79];
      v84 = v107;
      (*(v109 + 32))(v107, v83, v80);
      sub_100005974(&qword_1000638A8, &type metadata accessor for BackgroundMoonData);
      v85 = sub_10004A94C();
      v86 = *(v82 + 8);
      v86(v84, v80);
      v86(v81, v80);
      sub_10000591C(v44, &qword_1000637A8, "4E");
      if ((v85 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_40;
    }

    (*(v109 + 8))(v81, v80);
    goto LABEL_38;
  }

  if (sub_100004288(&v44[v79], 1, v80) != 1)
  {
LABEL_38:
    v58 = &qword_100063898;
    v59 = &qword_10004CBB8;
    goto LABEL_26;
  }

  sub_10000591C(v44, &qword_1000637A8, "4E");
LABEL_40:
  if (*(v76 + v105[15]) != *(v55 + v105[15]))
  {
    return 0;
  }

  v87 = v55;
  v88 = v105;
  if ((sub_10000A960(v76 + v105[16], v87 + v105[16]) & 1) == 0)
  {
    return 0;
  }

  v89 = v88[17];
  v90 = *(v76 + v89);
  v91 = v87;
  v92 = *(v87 + v89);
  if (v90)
  {
    if (!v92)
    {
      return 0;
    }

    sub_1000047A4();
    v93 = v92;
    v94 = v90;
    v95 = sub_10004ACBC();

    if ((v95 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v92)
  {
    return 0;
  }

  v96 = v105[18];
  v97 = *(v104 + v96);
  v98 = *(v91 + v96);
  if (v97)
  {
    if (v98)
    {
      sub_1000047A4();
      v99 = v98;
      v100 = v97;
      v101 = sub_10004ACBC();

      if (v101)
      {
        return 1;
      }
    }
  }

  else if (!v98)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1000050D8@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v97 = a3;
  v98 = a2;
  v96 = a1;
  v5 = sub_100002D54(&qword_1000637A8, "4E");
  v6 = sub_100005A50(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v93 = &v88 - v9;
  sub_100005A44();
  v10 = sub_10004A8AC();
  v11 = sub_1000059BC(v10);
  v94 = v12;
  v95 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_1000059D0();
  v92 = v16 - v15;
  v17 = sub_100002D54(&unk_100063DE0, "4E");
  v18 = sub_100005A50(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_100005A34();
  v104 = v21 - v22;
  __chkstk_darwin(v23);
  v102 = &v88 - v24;
  sub_100005A44();
  v101 = sub_10004A69C();
  v25 = sub_1000059BC(v101);
  v109 = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_1000059D0();
  v108 = v30 - v29;
  sub_100005A44();
  v110 = sub_100049D9C();
  v31 = sub_1000059BC(v110);
  v112 = v32;
  v34 = *(v33 + 64);
  __chkstk_darwin(v31);
  sub_1000059D0();
  v111 = v36 - v35;
  sub_100005A44();
  v88 = sub_100049BCC();
  v37 = sub_1000059BC(v88);
  v39 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v37);
  sub_1000059D0();
  v44 = v43 - v42;
  v45 = sub_100049F2C();
  v46 = sub_1000059BC(v45);
  v106 = v47;
  v107 = v46;
  v49 = *(v48 + 64);
  __chkstk_darwin(v46);
  sub_1000059D0();
  v105 = v51 - v50;
  v52 = sub_100049B7C();
  v99 = v52;
  v89 = *(v52 - 8);
  v53 = v89;
  v54 = *(v89 + 64);
  __chkstk_darwin(v52);
  sub_100005A34();
  v57 = (v55 - v56);
  v59 = __chkstk_darwin(v58);
  v61 = &v88 - v60;
  __chkstk_darwin(v59);
  v63 = &v88 - v62;
  sub_100049B6C();
  v100 = v63;
  sub_100049B5C();
  v65 = v53 + 8;
  v64 = *(v53 + 8);
  v103 = v61;
  v64(v61, v52);
  v90 = v64;
  v91 = v65;
  sub_100049F1C();
  sub_100049BBC();
  sub_100049ABC();
  v66 = *(v39 + 8);
  v67 = v88;
  v66(v44, v88);
  sub_100049BBC();
  sub_100049ACC();
  v66(v44, v67);
  v68 = v99;
  v64(v57, v99);
  (*(v112 + 104))(v111, enum case for WeatherCondition.mostlyClear(_:), v110);
  v69 = v101;
  (*(v109 + 104))(v108, enum case for CloudAltitudeKind.low(_:), v101);
  sub_100049BBC();
  sub_100049ABC();
  v66(v44, v67);
  sub_100005A5C();
  sub_100049BBC();
  v70 = v104;
  sub_100049ABC();
  v66(v44, v67);
  sub_100005A5C();
  v71 = v92;
  sub_10004A8BC();
  v72 = sub_10004A6DC();
  v73 = v93;
  sub_100004544(v93, 1, 1, v72);
  (*(v106 + 16))(a4, v105, v107);
  v74 = type metadata accessor for PosterAnimationViewModel();
  (*(v89 + 16))(a4 + v74[5], v103, v68);
  (*(v112 + 16))(a4 + v74[6], v111, v110);
  *(a4 + v74[7]) = 0;
  *(a4 + v74[8]) = 0;
  (*(v109 + 16))(a4 + v74[9], v108, v69);
  v75 = v102;
  sub_1000058BC(v102, a4 + v74[10], &unk_100063DE0, "4E");
  sub_1000058BC(v70, a4 + v74[11], &unk_100063DE0, "4E");
  v76 = v94;
  v77 = v71;
  v78 = v71;
  v79 = v95;
  (*(v94 + 16))(a4 + v74[12], v77, v95);
  *(a4 + v74[13]) = 1;
  sub_1000058BC(v73, a4 + v74[14], &qword_1000637A8, "4E");
  *(a4 + v74[15]) = v97;
  v80 = v96;
  *(a4 + v74[17]) = v96;
  v81 = v98;
  *(a4 + v74[18]) = v98;
  v82 = v74[16];
  v83 = v80;
  v84 = v81;
  sub_100035598(a4 + v82);
  sub_10000591C(v73, &qword_1000637A8, "4E");
  (*(v76 + 8))(v78, v79);
  sub_10000591C(v104, &unk_100063DE0, "4E");
  sub_10000591C(v75, &unk_100063DE0, "4E");
  (*(v109 + 8))(v108, v101);
  (*(v112 + 8))(v111, v110);
  v85 = v99;
  v86 = v90;
  v90(v103, v99);
  (*(v106 + 8))(v105, v107);
  return v86(v100, v85);
}

uint64_t sub_1000058BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002D54(a3, a4);
  sub_100005A24(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10000591C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002D54(a2, a3);
  sub_100005A24(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100005974(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005A5C()
{

  return sub_100004544(v1, 0, 1, v0);
}

uint64_t sub_100005A7C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100002D54(&qword_100064230, &qword_10004CC28);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_10004A22C();
  v13 = sub_1000059BC(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100008994();
  *v19 = sub_10004ABFC();
  (*(v15 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v12);
  v20 = sub_10004A24C();
  result = (*(v15 + 8))(v19, v12);
  if (v20)
  {
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = a2;
    v23[4] = a3;
    if (*(v4 + 40))
    {

      sub_10004AB1C();
    }

    else
    {
    }

    v24 = sub_10004AB0C();
    sub_100004544(v11, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = sub_100008A50;
    v25[5] = v23;
    v25[6] = v4;
    v25[7] = a1;

    v26 = a1;
    v27 = sub_100007F58(0, 0, v11, &unk_10004CC38, v25);
    v28 = *(v4 + 40);
    *(v4 + 40) = v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100005D10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 40);
    *(Strong + 40) = 0;
  }

  if (sub_10004AB2C())
  {
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v7 = sub_100049FCC();
    sub_100008F90(v7, qword_100068348);
    v8 = sub_100049FAC();
    v9 = sub_10004AB9C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Task was cancelled before it completed. Call to completion will be skipped.", v10, 2u);
    }
  }

  else
  {
    a3(a1);
  }
}

uint64_t sub_100005E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a4;
  v7[3] = a5;
  v9 = *(*(type metadata accessor for PosterData(0) - 8) + 64) + 15;
  v10 = swift_task_alloc();
  v7[4] = v10;
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_100005F2C;

  return sub_100006140(v10, a7);
}

uint64_t sub_100005F2C()
{
  sub_100009808();
  sub_1000097FC();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_100009570();
  *v4 = v3;

  sub_1000099F0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100006014()
{
  sub_100009808();
  sub_10004AAEC();
  *(v0 + 48) = sub_10004AADC();
  v2 = sub_10004AAAC();

  return _swift_task_switch(sub_1000060A4, v2, v1);
}

uint64_t sub_1000060A4()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v4(v2);
  sub_100009078(v2, type metadata accessor for PosterData);

  sub_100009748();

  return v5();
}

uint64_t sub_100006140(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_10004A8AC();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_10004A69C();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100049E3C();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = sub_100002D54(&qword_100063970, &unk_10004CC60);
  v3[19] = v13;
  v14 = *(v13 - 8);
  v3[20] = v14;
  v15 = *(v14 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v16 = sub_100049D9C();
  v3[23] = v16;
  v17 = *(v16 - 8);
  v3[24] = v17;
  v18 = *(v17 + 64) + 15;
  v3[25] = swift_task_alloc();
  v19 = type metadata accessor for PosterDataModel(0);
  v3[26] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v21 = *(*(sub_100002D54(&qword_1000637A8, "4E") - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v22 = sub_100049B7C();
  v3[30] = v22;
  v23 = *(v22 - 8);
  v3[31] = v23;
  v24 = *(v23 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v25 = sub_10004AC7C();
  v3[34] = v25;
  v26 = *(v25 - 8);
  v3[35] = v26;
  v27 = *(v26 + 64) + 15;
  v3[36] = swift_task_alloc();
  v28 = sub_100049C2C();
  v3[37] = v28;
  v29 = *(v28 - 8);
  v3[38] = v29;
  v30 = *(v29 + 64) + 15;
  v3[39] = swift_task_alloc();
  v31 = sub_100002D54(&qword_100063978, &qword_10004CC70);
  v3[40] = v31;
  v32 = *(v31 - 8);
  v3[41] = v32;
  v33 = *(v32 + 64) + 15;
  v3[42] = swift_task_alloc();
  v34 = sub_100002D54(&qword_100063980, &qword_10004CC78);
  v3[43] = v34;
  v35 = *(v34 - 8);
  v3[44] = v35;
  v36 = *(v35 + 64) + 15;
  v3[45] = swift_task_alloc();
  v37 = sub_100002D54(&qword_100063988, &qword_10004CC80);
  v3[46] = v37;
  v38 = *(*(v37 - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v39 = sub_100002D54(&qword_100063990, &qword_10004CC88);
  v3[48] = v39;
  v40 = *(*(v39 - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v41 = sub_100049CAC();
  v3[50] = v41;
  v42 = *(*(v41 - 8) + 64) + 15;
  v3[51] = swift_task_alloc();
  v43 = *(*(sub_100002D54(&qword_100063998, &qword_10004CC90) - 8) + 64) + 15;
  v3[52] = swift_task_alloc();
  v44 = *(*(sub_100002D54(&qword_1000639A0, &qword_10004CC98) - 8) + 64) + 15;
  v3[53] = swift_task_alloc();
  v45 = *(*(sub_100002D54(&qword_1000639A8, &unk_10004CCA0) - 8) + 64) + 15;
  v3[54] = swift_task_alloc();
  v46 = sub_100049CDC();
  v3[55] = v46;
  v47 = *(v46 - 8);
  v3[56] = v47;
  v48 = *(v47 + 64) + 15;
  v3[57] = swift_task_alloc();
  v49 = sub_100049C9C();
  v3[58] = v49;
  v50 = *(v49 - 8);
  v3[59] = v50;
  v51 = *(v50 + 64) + 15;
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v52 = sub_100049E9C();
  v3[62] = v52;
  v53 = *(v52 - 8);
  v3[63] = v53;
  v54 = *(v53 + 64) + 15;
  v3[64] = swift_task_alloc();

  return _swift_task_switch(sub_100006860, 0, 0);
}

uint64_t sub_100006860()
{
  v54 = v0;
  if (qword_100063488 != -1)
  {
    sub_100009728();
  }

  v1 = v0[4].i64[0];
  v2 = sub_100049FCC();
  v0[32].i64[1] = sub_100008F90(v2, qword_100068348);
  v3 = v1;
  v4 = sub_100049FAC();
  v5 = sub_10004AB9C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[31].i64[1];
    v6 = v0[32].i64[0];
    v8 = v0[31].i64[0];
    v9 = v0[4].i64[0];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v53 = v11;
    sub_100009580(7.2225e-34);
    [v9 coordinate];
    sub_100049EBC();
    v12 = sub_100049E4C();
    v14 = v13;
    (*(v7 + 8))(v6, v8);
    v15 = sub_1000230EC(v12, v14, &v53);

    *(v10 + 14) = v15;
    sub_10000985C();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    sub_100008FC8(v11);
    sub_100009788();
    sub_100009830();
  }

  v21 = WCCountryCodeEstimate();
  if (v21)
  {
    v22 = v21;
    v51 = v0[28].i64[1];
    v24 = v0[26].i64[1];
    v23 = v0[27].i64[0];
    v26 = v0[25].i64[1];
    v25 = v0[26].i64[0];
    v27 = v0[25].i64[0];
    v28 = v0[18].i64[1];
    v52 = v0[4];
    sub_10004A98C();

    sub_100049C1C();
    sub_100004544(v23, 0, 1, v28);
    v29 = sub_100049CEC();
    sub_100004544(v24, 1, 1, v29);
    v30 = sub_100049CBC();
    sub_100004544(v25, 1, 1, v30);
    v0[3].i64[0] = &_swiftEmptyArrayStorage;
    sub_100009184();
    sub_100002D54(&qword_1000639C0, &qword_10004CCB0);
    sub_1000091DC();
    sub_10004ACFC();
    sub_100009A10();
    sub_100049CCC();
    v31 = swift_task_alloc();
    v0[33].i64[0] = v31;
    v31[1] = vextq_s8(v52, v52, 8uLL);
    v31[2].i64[0] = v51;
    v32 = *(&async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:) + 1);
    v33 = swift_task_alloc();
    v0[33].i64[1] = v33;
    *v33 = v0;
    v33[1] = sub_100006C64;
    v35 = v0[24].i64[0];
    v34 = v0[24].i64[1];
    sub_1000099F0();

    return withCheckedThrowingContinuation<A>(isolation:function:_:)();
  }

  else
  {
    v36 = v0[29].i64[0];
    v37 = v0[22].i64[1];
    v38 = v0[23].i64[0];
    v39 = v0[21].i64[0];
    v40 = *(v0[4].i64[1] + 16);
    sub_100049D2C();
    sub_100049D1C();
    v41 = *(&async function pointer to WeatherService.weather<A, B>(for:including:_:) + 1);
    v42 = swift_task_alloc();
    v0[34].i64[1] = v42;
    *v42 = v0;
    v42[1] = sub_100007354;
    v43 = v0[30].i64[0];
    v44 = v0[29].i64[0];
    v46 = v0[23].i64[0];
    v45 = v0[23].i64[1];
    v47 = v0[22].i64[1];
    v48 = v0[21].i64[0];
    v49 = v0[4].i64[0];

    return WeatherService.weather<A, B>(for:including:_:)(v43, v45, v49, v47, v48, v44, v46);
  }
}

uint64_t sub_100006C64()
{
  sub_100009808();
  sub_1000097FC();
  v3 = v2;
  v4 = *(v2 + 536);
  v5 = *v1;
  sub_100009570();
  *v6 = v5;
  *(v3 + 544) = v0;

  if (!v0)
  {
    v7 = *(v3 + 528);
  }

  sub_1000099F0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100007354()
{
  sub_1000097FC();
  v3 = v2;
  v4 = v2[69];
  v5 = v2[45];
  v6 = v2[44];
  v7 = v2[43];
  v8 = v2[42];
  v9 = v2[41];
  v10 = v2[40];
  v11 = *v1;
  sub_100009570();
  *v12 = v11;
  v3[70] = v0;

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  if (!v0)
  {
    sub_1000090CC(v3[47], &qword_100063988, &qword_10004CC80);
  }

  sub_1000099F0();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100007AE0()
{
  v22 = v0;
  v1 = v0[66];
  v3 = v0[56];
  v2 = v0[57];
  v4 = v0[55];

  (*(v3 + 8))(v2, v4);
  v5 = v0[68];
  v6 = v0[65];
  swift_errorRetain();
  v7 = sub_100049FAC();
  v8 = sub_10004AB7C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    sub_100009A24(4.8751e-34);
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = sub_10004AFCC();
    v16 = sub_1000230EC(v14, v15, &v21);

    *(v9 + 4) = v16;
    sub_100009AC4(&_mh_execute_header, v17, v18, "Update task failed to fetch current weather; error=%{public}s");
    sub_100008FC8(v10);

    sub_100009788();
  }

  else
  {
  }

  sub_100009A84();
  sub_1000099E4();
  swift_storeEnumTagMultiPayload();
  sub_100009490();
  sub_100009650();

  sub_100009748();

  return v19();
}

uint64_t sub_100007D30()
{
  v18 = v0;
  v1 = v0[70];
  v2 = v0[65];
  swift_errorRetain();
  v3 = sub_100049FAC();
  v4 = sub_10004AB7C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    sub_100009A24(4.8751e-34);
    v8 = v0[2];
    v7 = v0[3];
    v9 = v0[4];
    v10 = sub_10004AFCC();
    v12 = sub_1000230EC(v10, v11, &v17);

    *(v5 + 4) = v12;
    sub_100009AC4(&_mh_execute_header, v13, v14, "Update task failed to fetch current weather; error=%{public}s");
    sub_100008FC8(v6);

    sub_100009788();
  }

  else
  {
  }

  sub_100009A84();
  sub_1000099E4();
  swift_storeEnumTagMultiPayload();
  sub_100009490();
  sub_100009650();

  sub_100009748();

  return v15();
}

uint64_t sub_100007F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002D54(&qword_100064230, &qword_10004CC28);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_100009398(a3, v26 - v11, &qword_100064230, &qword_10004CC28);
  v13 = sub_10004AB0C();
  v14 = sub_100004288(v12, 1, v13);

  if (v14 == 1)
  {
    sub_1000090CC(v12, &qword_100064230, &qword_10004CC28);
  }

  else
  {
    sub_10004AAFC();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10004AAAC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10004A9BC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1000090CC(a3, &qword_100064230, &qword_10004CC28);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000090CC(a3, &qword_100064230, &qword_10004CC28);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10000823C()
{
  v1 = v0;
  v2 = sub_10004A22C();
  v3 = sub_1000059BC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100008994();
  *v9 = sub_10004ABFC();
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = sub_10004A24C();
  result = (*(v5 + 8))(v9, v2);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    sub_100009728();
    goto LABEL_4;
  }

  if (!*(v1 + 40))
  {
    return result;
  }

  v12 = qword_100063488;
  v13 = *(v1 + 40);

  if (v12 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v14 = sub_100049FCC();
  sub_100008F90(v14, qword_100068348);
  v15 = sub_100049FAC();
  v16 = sub_10004AB9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Canceling task to update poster data", v17, 2u);
    sub_100009830();
  }

  sub_10004AB1C();

  v18 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void *sub_100008424()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t sub_10000845C()
{
  sub_100008424();

  return _swift_deallocClassInstance(v0, 48, 7);
}

void *sub_1000084B4()
{
  sub_100049D6C();
  v0[2] = sub_10002CCA0();
  v1 = sub_10004A64C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[3] = sub_10004A63C();
  if (qword_100063450 != -1)
  {
    swift_once();
  }

  v0[4] = qword_1000682A8;
  v0[5] = 0;

  return v0;
}

uint64_t sub_10000854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v6 = sub_100002D54(&qword_1000639D0, &qword_10004CCB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v24 - v9;
  v11 = sub_100002D54(&qword_100063978, &qword_10004CC70);
  v26 = *(v11 - 8);
  v27 = v11;
  v12 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v14 = &v24 - v13;
  v25 = sub_100002D54(&qword_100063980, &qword_10004CC78);
  v15 = *(v25 - 8);
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v18 = &v24 - v17;
  v24 = *(a2 + 16);
  sub_100049C9C();
  sub_100049D2C();
  sub_100002D54(&qword_100063988, &qword_10004CC80);
  sub_100049D1C();
  v19 = a1;
  v20 = v6;
  (*(v7 + 16))(v10, v19, v6);
  v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v22 = swift_allocObject();
  (*(v7 + 32))(v22 + v21, v10, v20);
  sub_100049D3C();

  (*(v26 + 8))(v14, v27);
  return (*(v15 + 8))(v18, v25);
}

uint64_t sub_100008828(uint64_t a1)
{
  v2 = (*(*(sub_100002D54(&qword_100063990, &qword_10004CC88) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = v9 - v3;
  v5 = (*(*(sub_100002D54(&qword_1000639D8, &qword_10004CCC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = (v9 - v6);
  sub_100009398(a1, v9 - v6, &qword_1000639D8, &qword_10004CCC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    sub_100002D54(&qword_1000639D0, &qword_10004CCB8);
    return sub_10004AABC();
  }

  else
  {
    sub_100009400(v7, v4);
    sub_100002D54(&qword_1000639D0, &qword_10004CCB8);
    return sub_10004AACC();
  }
}

unint64_t sub_100008994()
{
  result = qword_100065260;
  if (!qword_100065260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100065260);
  }

  return result;
}

uint64_t sub_1000089D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008A10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008A5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100008AAC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = sub_10000984C(v7);
  *v8 = v9;
  v8[1] = sub_100008B6C;
  sub_100009A10();

  return sub_100005E4C(v10, v11, v12, v13, v14, v15, v5);
}

uint64_t sub_100008B6C()
{
  sub_100009808();
  sub_1000097FC();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100009570();
  *v4 = v3;

  sub_100009748();

  return v5();
}

uint64_t sub_100008C4C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008D44;

  return v7(a1);
}

uint64_t sub_100008D44()
{
  sub_100009808();
  sub_1000097FC();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100009570();
  *v4 = v3;

  sub_100009748();

  return v5();
}

uint64_t sub_100008E28()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008E60()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10000984C(v3);
  *v4 = v5;
  v6 = sub_1000097A4(v4);

  return v7(v6);
}

uint64_t sub_100008EF8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10000984C(v3);
  *v4 = v5;
  v6 = sub_1000097A4(v4);

  return v7(v6);
}

uint64_t sub_100008F90(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100008FC8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100009014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterDataModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009078(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100009714(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000090CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002D54(a2, a3);
  sub_100009714(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100009120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterDataModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100009184()
{
  result = qword_1000639B8;
  if (!qword_1000639B8)
  {
    sub_100049CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000639B8);
  }

  return result;
}

unint64_t sub_1000091DC()
{
  result = qword_1000639C8;
  if (!qword_1000639C8)
  {
    sub_100009240(&qword_1000639C0, &qword_10004CCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000639C8);
  }

  return result;
}

uint64_t sub_100009240(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100009294()
{
  v1 = sub_100002D54(&qword_1000639D0, &qword_10004CCB8);
  sub_100009714(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000931C(uint64_t a1)
{
  v2 = *(*(sub_100002D54(&qword_1000639D0, &qword_10004CCB8) - 8) + 80);

  return sub_100008828(a1);
}

uint64_t sub_100009398(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002D54(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009400(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&qword_100063990, &qword_10004CC88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009490()
{
  result = v0[64];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[57];
  v5 = v0[53];
  v6 = v0[54];
  v8 = v0[51];
  v7 = v0[52];
  v9 = v0[49];
  v10 = v0[47];
  v11 = v0[45];
  v12 = v0[42];
  return result;
}

uint64_t sub_1000094B8()
{
  *(v1 - 184) = v0[65];
  v3 = v0[61];
  v4 = v0[39];
  v13 = v0[38];
  v5 = v0[36];
  v14 = v0[37];
  v6 = v0[33];
  v24 = v0[32];
  v7 = v0[31];
  *(v1 - 160) = v0[30];
  v12 = v0[29];
  *(v1 - 152) = v0[28];
  v30 = v0[27];
  *(v1 - 144) = v0[26];
  v8 = v0[24];
  *(v1 - 128) = v0[25];
  v16 = v0[21];
  v20 = v0[22];
  v21 = v0[20];
  v19 = v0[19];
  v15 = v0[18];
  v17 = v0[17];
  v18 = v0[16];
  v22 = v0[15];
  v25 = v0[14];
  v26 = v0[23];
  v27 = v0[13];
  v23 = v0[12];
  v28 = v0[11];
  v29 = v0[10];
  v9 = v0[8];
  v10 = v0[9];
  *(v1 - 168) = v4;

  return sub_100049C1C();
}

void sub_100009580(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t sub_10000959C()
{
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[61];
  v13 = v0[62];
  v6 = v0[59];
  *(v1 - 136) = v0[58];
  *(v1 - 128) = v5;
  v7 = v0[38];
  *(v1 - 152) = v0[39];
  *(v1 - 144) = v6;
  v8 = v0[36];
  v9 = v0[37];
  *(v1 - 168) = v7;
  *(v1 - 160) = v9;
  *(v1 - 176) = v8;
  v15 = v0[35];
  *(v1 - 184) = v0[34];
  v14 = v0[29];
  v10 = v0[27];
  v11 = v0[8];

  return swift_slowAlloc();
}

uint64_t sub_1000095F8()
{
  v9 = v0[39];
  v10 = v0[36];
  v11 = v0[33];
  v12 = v0[32];
  v13 = v0[29];
  v3 = v0[27];
  *(v1 - 184) = v0[28];
  *(v1 - 176) = v3;
  v5 = v0[21];
  v4 = v0[22];
  *(v1 - 168) = v0[25];
  *(v1 - 160) = v4;
  v6 = v0[18];
  *(v1 - 152) = v5;
  *(v1 - 144) = v6;
  v7 = v0[12];
  *(v1 - 136) = v0[15];
  *(v1 - 128) = v7;
}

uint64_t sub_100009650()
{
  v5 = v0[39];
  v6 = v0[36];
  v7 = v0[33];
  v8 = v0[32];
  v9 = v0[29];
  v10 = v0[28];
  v11 = v0[27];
  v12 = v0[25];
  v13 = v0[22];
  v14 = v0[21];
  v15 = v0[18];
  v3 = v0[12];
  *(v1 - 96) = v0[15];
  *(v1 - 88) = v3;
}

uint64_t sub_1000096A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *(v28 + v29[8]) = v30;
  *(v28 + v29[9]) = v31;
  v32 = *(a28 + 32);
  return v28 + v29[10];
}

uint64_t sub_1000096D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *(v34 + *(v35 + 48)) = v33 & 1;
  v38 = *(v36 - 152);
  *v38 = 49;
  v38[1] = 0xE100000000000000;
  *(v38 + *(*(v36 - 144) + 40)) = a13;

  return sub_100009014(v38, a33);
}

uint64_t sub_100009728()
{

  return swift_once();
}

uint64_t sub_100009748()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_100009754()
{
  v4 = v1[61];
  v5 = v1[59];
  *(v2 - 136) = v1[58];
  *(v2 - 128) = v4;
  v6 = v1[38];
  *(v2 - 144) = v1[39];
  v8 = v1[36];
  v7 = v1[37];
  v10 = v1[34];
  v9 = v1[35];
  v11 = v1[29];
  v12 = v1[27];
}

uint64_t sub_100009788()
{
}

uint64_t sub_1000097A4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_1000097C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v30 = *(a27 + 32);
  result = v27 + *(v28 + 28);
  v32 = *(v29 - 128);
  return result;
}

uint64_t sub_1000097E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26 = *(a24 + 32);
  result = v24;
  v28 = *(v25 - 176);
  return result;
}

uint64_t sub_100009830()
{
}

uint64_t sub_10000986C()
{
  v2 = *(v0 - 168);

  return sub_10004A52C();
}

uint64_t sub_100009894()
{
  v2 = *(v0 - 168);

  return sub_10004A62C();
}

uint64_t sub_1000098BC()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_1000098E4()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 160);
  return result;
}

uint64_t sub_10000992C(__n128 a1, __n128 a2)
{
  a1.n128_u64[0] = v5;
  a2.n128_u64[0] = v6;

  return CLLocationCoordinate2D.solarEvents(referenceDate:timeZone:)(v2, v3, a1, a2);
}

uint64_t sub_100009950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return CurrentWeather.date.getter(a1, a2, a3, a4);
}

uint64_t sub_100009974(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  a1[1] = a5;
  v7 = *(v5 - 176);

  return CurrentWeather.date.getter(a1, a2, a3, a4);
}

uint64_t sub_100009998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return Measurement<>.converted(to:)(a1, a20);
}

uint64_t sub_1000099BC()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

uint64_t sub_100009A24(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t sub_100009A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return CurrentWeather.date.getter(a1, a2, a3, a4);
}

uint64_t sub_100009A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v5 + 24);
  *(v6 - 176) = v4;

  return CurrentWeather.date.getter(a1, a2, a3, a4);
}

uint64_t sub_100009A84()
{
  **(v0 + 56) = 3;

  return type metadata accessor for PosterData(0);
}

uint64_t sub_100009AA4()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 2082;

  return sub_10002A190();
}

void sub_100009AC4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

_BYTE *storeEnumTagSinglePayload for WakeState.ScreenState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x100009BF8);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100009C44()
{
  result = qword_1000639E0;
  if (!qword_1000639E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000639E0);
  }

  return result;
}

uint64_t sub_100009C98(char a1, uint64_t a2, double a3)
{
  if (*&a2 == a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = *&a2 >= a3;
  }

  if (a1 == 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100009CC0(char a1)
{
  if (!a1)
  {
    return 28271;
  }

  if (a1 == 1)
  {
    return 6710895;
  }

  return 0x697469736E617274;
}

uint64_t sub_100009D18(char a1)
{
  sub_10004AD6C(27);

  strcpy(v5, "screenState:");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  if (a1)
  {
    if (a1 == 1)
    {
      v2._countAndFlagsBits = 6710895;
    }

    else
    {
      v2._countAndFlagsBits = 0x697469736E617274;
    }

    if (a1 == 1)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xED0000676E696E6FLL;
    }
  }

  else
  {
    v3 = 0xE200000000000000;
    v2._countAndFlagsBits = 28271;
  }

  v2._object = v3;
  sub_10004A9DC(v2);

  v6._countAndFlagsBits = 0x6572676F7270202CLL;
  v6._object = 0xEB000000003A7373;
  sub_10004A9DC(v6);
  v7._countAndFlagsBits = sub_10004AB3C();
  sub_10004A9DC(v7);

  return v5[0];
}

uint64_t sub_100009E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100049BAC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100004288(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100009F0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100049BAC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100004544(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for DynamicRotationAnimationState()
{
  result = qword_100063A40;
  if (!qword_100063A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000A000()
{
  sub_100049BAC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIInterfaceOrientation(319);
    if (v1 <= 0x3F)
    {
      sub_10000A0B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10000A0B0()
{
  result = qword_100063A50;
  if (!qword_100063A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100063A50);
  }

  return result;
}

uint64_t sub_10000A0F8()
{
  v0 = sub_10004A98C();
  v2 = v1;
  if (v0 == sub_10004A98C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_100013EB8();
  }

  return v5 & 1;
}

uint64_t sub_10000A17C(char a1, char a2)
{
  v3 = sub_100030C88(a1);
  v5 = v4;
  if (v3 == sub_100030C88(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013EB8();
  }

  return v8 & 1;
}

uint64_t sub_10000A1F4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656E696C66666FLL;
  }

  else
  {
    v3 = 0x6C62616863616572;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x656E696C66666FLL;
  }

  else
  {
    v5 = 0x6C62616863616572;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013EB8();
  }

  return v8 & 1;
}

uint64_t sub_10000A28C(unsigned __int8 a1, char a2)
{
  v2 = 0x6E6F6973726576;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6E6F6973726576;
  switch(v4)
  {
    case 1:
      v5 = 0x616E6964726F6F63;
      v3 = 0xEA00000000006574;
      break;
    case 2:
      v5 = 0xD000000000000012;
      v3 = 0x800000010004E830;
      break;
    case 3:
      v5 = 0x657369726E7573;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x7465736E7573;
      break;
    case 5:
      v5 = 0x617461446E6F6F6DLL;
      v6 = 3307053;
      goto LABEL_8;
    case 6:
      v5 = 0x4472656874616577;
      v6 = 6386785;
LABEL_8:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x616E6964726F6F63;
      v7 = 0xEA00000000006574;
      break;
    case 2:
      v2 = 0xD000000000000012;
      v7 = 0x800000010004E830;
      break;
    case 3:
      v2 = 0x657369726E7573;
      break;
    case 4:
      v7 = 0xE600000000000000;
      v2 = 0x7465736E7573;
      break;
    case 5:
      v2 = 0x617461446E6F6F6DLL;
      v8 = 3307053;
      goto LABEL_16;
    case 6:
      v2 = 0x4472656874616577;
      v8 = 6386785;
LABEL_16:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_100013EB8();
  }

  return v10 & 1;
}

uint64_t sub_10000A4EC(unsigned __int8 a1, char a2)
{
  v2 = 1702125924;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1702125924;
  switch(v4)
  {
    case 1:
      v5 = 0x6F697469646E6F63;
      v3 = 0xE90000000000006ELL;
      break;
    case 2:
      v5 = 0x65657053646E6977;
      goto LABEL_5;
    case 3:
      v5 = 0x766F4364756F6C63;
      v3 = 0xEA00000000007265;
      break;
    case 4:
      v5 = 0x6E694B64756F6C63;
LABEL_5:
      v3 = 0xE900000000000064;
      break;
    case 5:
      v5 = 0xD000000000000010;
      v3 = 0x800000010004E7F0;
      break;
    case 6:
      v5 = 0x6F69746176656C65;
      v3 = 0xED00004D5073496ELL;
      break;
    case 7:
      v5 = 0x67696C7961447369;
      v3 = 0xEA00000000007468;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6F697469646E6F63;
      v6 = 0xE90000000000006ELL;
      break;
    case 2:
      v2 = 0x65657053646E6977;
      goto LABEL_14;
    case 3:
      v2 = 0x766F4364756F6C63;
      v6 = 0xEA00000000007265;
      break;
    case 4:
      v2 = 0x6E694B64756F6C63;
LABEL_14:
      v6 = 0xE900000000000064;
      break;
    case 5:
      v2 = 0xD000000000000010;
      v6 = 0x800000010004E7F0;
      break;
    case 6:
      v2 = 0x6F69746176656C65;
      v6 = 0xED00004D5073496ELL;
      break;
    case 7:
      v2 = 0x67696C7961447369;
      v6 = 0xEA00000000007468;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013EB8();
  }

  return v8 & 1;
}

uint64_t sub_10000A770(unsigned __int8 a1, char a2)
{
  v2 = 0xEE00656E696C6666;
  v3 = 0x4F6B726F7774656ELL;
  v4 = a1;
  v5 = 0x4F6B726F7774656ELL;
  v6 = 0xEE00656E696C6666;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v6 = 0xE600000000000000;
      v5 = 0x617461446F6ELL;
      break;
    case 3:
      v5 = 0xD000000000000014;
      v7 = "ized";
      goto LABEL_5;
    default:
      v5 = 0xD000000000000014;
      v7 = "allery";
LABEL_5:
      v6 = v7 | 0x8000000000000000;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x617461446F6ELL;
      break;
    case 3:
      v3 = 0xD000000000000014;
      v8 = "ized";
      goto LABEL_10;
    default:
      v3 = 0xD000000000000014;
      v8 = "allery";
LABEL_10:
      v2 = v8 | 0x8000000000000000;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_10004AF3C();
  }

  return v10 & 1;
}

uint64_t sub_10000A8D8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 0x726F727265;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1635017060;
  }

  else
  {
    v5 = 0x726F727265;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013EB8();
  }

  return v8 & 1;
}

uint64_t sub_10000A9A8(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1000136C8(a4, a5);
  sub_10004AA0C();
  sub_10004AA0C();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10004AF3C();
  }

  return v8 & 1;
}

uint64_t sub_10000AA80(unsigned __int8 a1, char a2)
{
  v2 = 0x64657472617473;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x646570706F7473;
    }

    else
    {
      v4 = 0x646573756170;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x64657472617473;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x646570706F7473;
    }

    else
    {
      v2 = 0x646573756170;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013EB8();
  }

  return v8 & 1;
}

void sub_10000AB6C()
{
  sub_100014000();
  v1 = v0;
  v3 = v2;
  v4 = sub_100002D54(&qword_100063CC0, &qword_10004CF60);
  sub_100005A50(v4);
  v6 = *(v5 + 64);
  sub_100013ED4();
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_100049D9C();
  v11 = sub_1000059BC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100005A34();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v35 - v20;
  sub_100013820(0, &qword_100063CB8, NSUserDefaults_ptr);
  v22 = sub_10004ABAC();
  if (!v22)
  {
    goto LABEL_5;
  }

  v23 = v22;
  v24 = sub_10004A95C();
  v25 = [v23 stringForKey:v24];

  if (!v25)
  {
    goto LABEL_5;
  }

  sub_10004A98C();

  sub_100049D7C();
  if (sub_100004288(v9, 1, v10) == 1)
  {
    sub_1000090CC(v9, &qword_100063CC0, &qword_10004CF60);
LABEL_5:
    v26 = type metadata accessor for PosterAnimationViewModel();
    (*(v13 + 16))(v3, v1 + *(v26 + 24), v10);
    goto LABEL_6;
  }

  v37 = *(v13 + 32);
  v37(v21, v9, v10);
  if (qword_100063480 != -1)
  {
    swift_once();
  }

  v27 = sub_100049FCC();
  sub_100008F90(v27, qword_100068330);
  (*(v13 + 16))(v18, v21, v10);
  v28 = sub_100049FAC();
  v29 = sub_10004AB9C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = sub_100014030();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v30 = 136446210;
    v31 = sub_100049D8C();
    v36 = v3;
    v33 = v32;
    (*(v13 + 8))(v18, v10);
    v34 = sub_1000230EC(v31, v33, &v38);
    v3 = v36;

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "Rendering overridden weather condition=%{public}s", v30, 0xCu);
    sub_100008FC8(v35);
    sub_100013F58();
    sub_100013F58();
  }

  else
  {

    (*(v13 + 8))(v18, v10);
  }

  v37(v3, v21, v10);
LABEL_6:
  sub_100014018();
}

id sub_10000AF0C()
{
  sub_100013820(0, &qword_100063CB8, NSUserDefaults_ptr);
  v0 = sub_10004ABAC();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_10004A95C();
  v3 = [v1 BOOLForKey:v2];

  return v3;
}

uint64_t sub_10000AFA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100049FCC();
  v5 = sub_1000059BC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_1000059D0();
  v12 = v11 - v10;
  v13 = sub_10004A37C();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v1 + 72) = sub_10004A36C();
  v16 = sub_10004A4BC();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v1 + 80) = sub_10004A4AC();
  type metadata accessor for VFXLightningManager();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v1 + 88) = v19;
  type metadata accessor for VFXSimulationManager();
  v20 = swift_allocObject();
  *(v20 + 16) = &_swiftEmptySetSingleton;
  *(v20 + 24) = 0;
  *(v1 + 96) = v20;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  v21 = sub_10004A7AC();
  sub_100013E80(v21);
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView) = 0;
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_gradientView) = 0;
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_debugLabel) = 0;
  v22 = type metadata accessor for PosterAnimationViewModel();
  sub_100013E80(v22);
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer) = 0;
  v23 = (v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
  *v23 = 0;
  v23[1] = 0;
  v24 = type metadata accessor for SimulationReason();
  sub_100013E80(v24);
  v25 = sub_100049B7C();
  sub_100013E80(v25);
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_lastPauseAnimationTimerDuration) = 0;
  v26 = type metadata accessor for DynamicRotationState();
  sub_100013E80(v26);
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_deviceRotationTimer) = 0;
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_rendererDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v27 = *(v7 + 16);
  v27(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_logger, a1, v4);
  v27(v12, a1, v4);
  v28 = type metadata accessor for VFXSnapshotRenderer();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_10003CBF4(v12);
  (*(v7 + 8))(a1, v4);
  *(v2 + 104) = v31;
  return v2;
}

void sub_10000B244()
{
  sub_100014000();
  v1 = v0;
  v150 = v2;
  v4 = v3;
  v145 = sub_100049FCC();
  v5 = sub_1000059BC(v145);
  v144 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_1000059D0();
  v151 = v10 - v9;
  sub_100005A44();
  v149 = sub_10004A71C();
  v11 = sub_1000059BC(v149);
  v148 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_1000059D0();
  v143 = v16 - v15;
  v17 = sub_100002D54(&qword_100063C78, &qword_10004E0A0);
  v18 = sub_100005A50(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_100005A34();
  v146 = v21 - v22;
  sub_100013EFC();
  __chkstk_darwin(v23);
  v147 = &v143 - v24;
  v25 = sub_100002D54(&unk_100063DE0, "4E");
  sub_100005A50(v25);
  v27 = *(v26 + 64);
  sub_100013ED4();
  __chkstk_darwin(v28);
  sub_100013F88();
  v154 = v29;
  sub_100005A44();
  v30 = type metadata accessor for PosterAnimationViewModel();
  v31 = sub_100005A24(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_100005A34();
  v157 = v34 - v35;
  sub_100013EFC();
  __chkstk_darwin(v36);
  sub_100013FC8();
  v158 = v37;
  sub_100013EFC();
  __chkstk_darwin(v38);
  sub_100013FC8();
  v155 = v39;
  sub_100013EFC();
  __chkstk_darwin(v40);
  v42 = &v143 - v41;
  v43 = (sub_100002D54(&qword_100063C80, &qword_10004CF50) - 8);
  v44 = *(*v43 + 64);
  sub_100013ED4();
  __chkstk_darwin(v45);
  v47 = &v143 - v46;
  v48 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v49 = sub_100005A50(v48);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49);
  sub_100005A34();
  v153 = v52 - v53;
  sub_100013EFC();
  __chkstk_darwin(v54);
  sub_100013FC8();
  v152 = v55;
  sub_100013EFC();
  __chkstk_darwin(v56);
  sub_100013FC8();
  v156 = v57;
  sub_100013EFC();
  v59 = __chkstk_darwin(v58);
  v61 = &v143 - v60;
  __chkstk_darwin(v59);
  v63 = &v143 - v62;
  sub_100013E68();
  v160 = v4;
  sub_100013710();
  sub_100013FE8();
  sub_100004544(v64, v65, v66, v30);
  v67 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_posterViewModel;
  swift_beginAccess();
  v68 = v43[14];
  sub_100013F94();
  sub_1000139C8();
  v159 = v1;
  sub_1000139C8();
  sub_100013F08(v47);
  if (v70)
  {
    sub_1000090CC(v63, &unk_100063DF0, &qword_10004CF28);
    sub_100013F08(&v47[v68]);
    v69 = v160;
    if (v70)
    {
      sub_1000090CC(v47, &unk_100063DF0, &qword_10004CF28);
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  sub_1000139C8();
  sub_100013F08(&v47[v68]);
  if (v70)
  {
    sub_1000090CC(v63, &unk_100063DF0, &qword_10004CF28);
    sub_100013E38();
    sub_100013674(v61, v71);
    v69 = v160;
LABEL_9:
    sub_1000090CC(v47, &qword_100063C80, &qword_10004CF50);
    v72 = v159;
    goto LABEL_10;
  }

  sub_10001361C();
  v102 = sub_1000047E8(v61, v42);
  sub_100013674(v42, type metadata accessor for PosterAnimationViewModel);
  v68 = &qword_10004CF28;
  sub_1000090CC(v63, &unk_100063DF0, &qword_10004CF28);
  sub_100013674(v61, type metadata accessor for PosterAnimationViewModel);
  sub_1000090CC(v47, &unk_100063DF0, &qword_10004CF28);
  v72 = v159;
  v69 = v160;
  if (v102)
  {
LABEL_18:
    sub_100013E68();
    v90 = v157;
    sub_100013710();
    v91 = sub_100049FAC();
    v103 = sub_10004AB9C();
    if (sub_100014048(v103))
    {
      sub_100014030();
      v104 = sub_100013FA0();
      v161[0] = v104;
      *v61 = 136446210;
      v105 = v30[5];
      sub_100049B7C();
      sub_100013EA0();
      sub_1000136C8(v106, v107);
      v108 = sub_10004AF1C();
      v110 = v109;
      sub_100013E38();
      sub_100013674(v90, v111);
      v112 = sub_1000230EC(v108, v110, v161);

      *(v61 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v91, v103, "Animation already reflects the view model with weather data at date=%{public}s", v61, 0xCu);
      sub_100008FC8(v104);
      goto LABEL_20;
    }

    goto LABEL_21;
  }

LABEL_10:
  v73 = v72 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_rendererDelegate;
  if (!swift_unknownObjectWeakLoadStrong() || (v74 = *(v73 + 8), ObjectType = swift_getObjectType(), LOBYTE(v74) = (*(v74 + 8))(ObjectType, v74), swift_unknownObjectRelease(), (v74 & 1) == 0))
  {
    v89 = v30;
    sub_100013E68();
    v90 = v158;
    sub_100013710();
    v91 = sub_100049FAC();
    v92 = sub_10004AB9C();
    if (sub_100014048(v92))
    {
      sub_100014030();
      v93 = sub_100013FA0();
      v161[0] = v93;
      *v61 = 136446210;
      v94 = v89[5];
      sub_100049B7C();
      sub_100013EA0();
      sub_1000136C8(v95, v96);
      v97 = sub_10004AF1C();
      v99 = v98;
      sub_100013E38();
      sub_100013674(v90, v100);
      v101 = sub_1000230EC(v97, v99, v161);

      *(v61 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v91, v92, "Animation was not granted a render session; Skipping render of weather data at date=%{public}s", v61, 0xCu);
      sub_100008FC8(v93);
LABEL_20:
      sub_100013F58();
      sub_100013F58();

      goto LABEL_46;
    }

LABEL_21:

    sub_100013E38();
    sub_100013674(v90, v113);
    goto LABEL_46;
  }

  v76 = v156;
  sub_1000139C8();
  sub_100013E68();
  sub_100013710();
  sub_100013FE8();
  sub_100004544(v77, v78, v79, v30);
  sub_100013F40();
  sub_100013120();
  swift_endAccess();
  v80 = v154;
  sub_100049B6C();
  sub_100049B7C();
  sub_100013FE8();
  sub_100004544(v81, v82, v83, v84);
  sub_100013F40();
  sub_100013120();
  swift_endAccess();
  v85 = v153;
  sub_1000139C8();
  sub_100013F08(v85);
  if (v70)
  {
    v86 = &unk_100063DF0;
    v87 = &qword_10004CF28;
    v88 = v85;
  }

  else
  {
    sub_100013E68();
    v114 = v155;
    sub_10001361C();
    v115 = v30[17];
    v116 = *(v114 + v115);
    v117 = *(v69 + v115);
    if (v116)
    {
      sub_100013F70();
      if (v117)
      {
        sub_100013820(0, &qword_100063830, UIView_ptr);
        v118 = v117;
        v119 = v116;
        v120 = sub_10004ACBC();

        if (v120)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_100013F70();
      if (!v117)
      {
LABEL_25:
        sub_100013E38();
        v122 = v155;
LABEL_37:
        sub_100013674(v122, v121);
        goto LABEL_38;
      }
    }

    v123 = sub_100049FAC();
    v124 = sub_10004AB9C();
    if (sub_100014048(v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&_mh_execute_header, v123, v124, "Resetting views due to change in background view", v125, 2u);
      sub_100013F58();
    }

    v126 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_gradientView;
    v127 = 1;
    swift_beginAccess();
    v128 = *(v72 + v126);
    if (v128)
    {
      v129 = OBJC_IVAR____TtC13WeatherPoster12GradientView_skyBackgroundGradient;
      swift_beginAccess();
      (*(v67 + 16))(v68, &v128[v129], v80);
      v127 = 0;
    }

    sub_100004544(v68, v127, 1, v80);
    *(v72 + v126) = 0;

    v130 = *(v72 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView);
    *(v72 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView) = 0;

    v131 = *(v72 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_debugLabel);
    *(v72 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_debugLabel) = 0;

    v132 = v146;
    sub_1000139C8();
    if (sub_100004288(v132, 1, v80) != 1)
    {
      v134 = v143;
      (*(v67 + 32))(v143, v132, v80);
      v135 = v155;
      if ((*(v155 + v30[15]) & 1) == 0)
      {
        sub_10000BEB8(v134);
      }

      (*(v67 + 8))(v134, v80);
      sub_1000090CC(v68, &qword_100063C78, &qword_10004E0A0);
      sub_100013E38();
      v122 = v135;
      goto LABEL_37;
    }

    sub_1000090CC(v68, &qword_100063C78, &qword_10004E0A0);
    sub_100013E38();
    sub_100013674(v155, v133);
    v88 = v132;
    v86 = &qword_100063C78;
    v87 = &qword_10004E0A0;
  }

  sub_1000090CC(v88, v86, v87);
LABEL_38:
  if (*(v69 + v30[15]) == 1)
  {
    v136 = sub_10000C8F4(v72);
    sub_10004A3FC();
    if (v150)
    {
      sub_100049F9C();
      v137 = sub_100049FAC();
      v138 = sub_10004AB9C();
      if (sub_100014048(v138))
      {
        v139 = swift_slowAlloc();
        *v139 = 0;
        _os_log_impl(&_mh_execute_header, v137, v138, "VFX animation should start paused, freezing the scene", v139, 2u);
        sub_100013F58();
      }

      (*(v144 + 8))(v151, v145);
      v140 = sub_10004A42C();
      sub_10004A08C();

      v141 = sub_10004A42C();
      sub_10004A0BC();
    }

    v142 = sub_10000CB0C(v72);
    sub_10000DD78(v69, v136, v142);
  }

  else
  {
    sub_10000C268();
  }

  sub_1000090CC(v76, &unk_100063DF0, &qword_10004CF28);
LABEL_46:
  sub_100014018();
}

void sub_10000BEB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v33 - v6;
  v8 = type metadata accessor for DynamicRotationState();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004A71C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_posterViewModel;
  swift_beginAccess();
  v18 = type metadata accessor for PosterAnimationViewModel();
  if (!sub_100004288(v17, 1, v18))
  {
    v19 = *(v17 + *(v18 + 68));
    if (v19)
    {
      v34 = v11;
      v20 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_gradientView;
      swift_beginAccess();
      v21 = *(v2 + v20);
      if (v21)
      {
        (*(v13 + 16))(v16, a1, v12);
        v22 = v19;
        v23 = v21;
        sub_1000243AC(v16);

        return;
      }

      v24 = v19;
      v25 = sub_100002474(a1);
      v26 = *(v2 + v20);
      *(v2 + v20) = v25;

      swift_beginAccess();
      sub_1000139C8();
      if (sub_100004288(v7, 1, v8) == 1)
      {

        sub_1000090CC(v7, &qword_100063C18, &qword_10004E300);
        return;
      }

      v27 = v34;
      sub_10001361C();
      v28 = [objc_opt_self() currentDevice];
      v29 = [v28 userInterfaceIdiom];

      if (v29 == 1)
      {
        swift_beginAccess();
        v30 = *(v2 + v20);
        if (v30)
        {
          swift_endAccess();
          v31 = v30;
          v32 = v34;
          sub_10002424C(v34);

          sub_100013674(v32, type metadata accessor for DynamicRotationState);
          return;
        }

        sub_100013674(v34, type metadata accessor for DynamicRotationState);
        swift_endAccess();
      }

      else
      {
        sub_100013674(v27, type metadata accessor for DynamicRotationState);
      }
    }
  }
}

uint64_t sub_10000C268()
{
  v1 = v0;
  v2 = sub_10004A1DC();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  __chkstk_darwin(v2);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10004A1FC();
  v44 = *(v46 - 8);
  v5 = *(v44 + 64);
  __chkstk_darwin(v46);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10004A21C();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v49);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v14 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v42 = *(v14 - 8);
  v15 = *(v42 + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v17 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v40 - v18;
  v20 = sub_100049FAC();
  v21 = sub_10004AB9C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Skipping showing vfx because the poster should not show animation", v22, 2u);
  }

  v23 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView;
  v24 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView);
  if (v24)
  {
    [v24 removeFromSuperview];
    v25 = *(v1 + v23);
  }

  else
  {
    v25 = 0;
  }

  *(v1 + v23) = 0;

  v26 = *(v1 + 64);
  *(v1 + 64) = 0;

  v52 = 0;
  aBlock = 0u;
  v51 = 0u;
  swift_beginAccess();
  sub_100013120();
  swift_endAccess();
  v27 = *(v1 + 16);
  *(v1 + 16) = 0;

  if (qword_100063458 != -1)
  {
    swift_once();
  }

  v28 = sub_10004A71C();
  v29 = sub_100008F90(v28, qword_1000682B8);
  sub_10000BEB8(v29);
  swift_beginAccess();
  v30 = v19;
  sub_1000139C8();
  sub_100013820(0, &qword_100065260, OS_dispatch_queue_ptr);
  v40 = sub_10004ABFC();
  sub_10004A20C();
  sub_10004A23C();
  v41 = *(v7 + 8);
  v41(v11, v49);
  v31 = swift_allocObject();
  swift_weakInit();
  sub_1000139C8();
  v32 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  sub_1000138F4(v17, v33 + v32);
  v52 = sub_100013D58;
  v53 = v33;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v51 = sub_100012500;
  *(&v51 + 1) = &unk_10005E918;
  v34 = _Block_copy(&aBlock);

  v35 = v43;
  sub_10004A1EC();
  *&aBlock = &_swiftEmptyArrayStorage;
  sub_1000136C8(&qword_100063C50, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002D54(&qword_100063C58, &unk_10004DE10);
  sub_1000138A8(&qword_100063C60, &qword_100063C58, &unk_10004DE10);
  v36 = v45;
  v37 = v48;
  sub_10004ACFC();
  v38 = v40;
  sub_10004ABDC();
  _Block_release(v34);

  (*(v47 + 8))(v36, v37);
  (*(v44 + 8))(v35, v46);
  v41(v13, v49);
  return sub_1000090CC(v30, &unk_100063DF0, &qword_10004CF28);
}

uint64_t sub_10000C8F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 16);
  }

  else
  {
    swift_beginAccess();
    sub_1000139C8();
    if (v18)
    {
      sub_100013A84(&v17, v20);
    }

    else
    {
      v4 = sub_10004A86C();
      v5 = *(v4 + 48);
      v6 = *(v4 + 52);
      swift_allocObject();
      v20[3] = v4;
      v20[4] = &protocol witness table for VFXSceneTemplateManager;
      v20[0] = sub_10004A85C();
    }

    sub_100013A20(v20, &v17);
    swift_beginAccess();
    sub_100013120();
    swift_endAccess();
    v7 = sub_100049FAC();
    v8 = sub_10004AB9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Initial rendering of animation, creating background manager", v9, 2u);
    }

    v10 = *(a1 + 80);
    v18 = sub_10004A4BC();
    v19 = &protocol witness table for WeatherConditionConfigurationManager;
    *&v17 = v10;
    sub_100013A20(v20, &v16);
    v11 = sub_10004A43C();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v1 = sub_10004A3AC();
    sub_100008FC8(v20);
    v14 = *(a1 + 16);
    *(a1 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10000CB0C(uint64_t a1)
{
  v2 = sub_100002D54(&qword_100063CC8, &qword_10004CF68);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = sub_100002D54(&qword_100063CD0, &qword_10004CF70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_100002D54(&qword_100063CD8, &qword_10004CF78);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  if (*(a1 + 64))
  {
    v11 = *(a1 + 64);
  }

  else
  {
    v21 = v8;
    v12 = sub_10004A34C();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_10004A33C();
    v15 = *(a1 + 64);
    *(a1 + 64) = v11;

    sub_10004A32C();
    sub_10004A30C();
    sub_1000138A8(&qword_100063CE0, &qword_100063CD0, &qword_10004CF70);
    sub_1000138A8(&qword_100063CE8, &qword_100063CC8, &qword_10004CF68);
    sub_10004A0FC();
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = sub_100013860;
    *(v17 + 24) = v16;
    sub_1000138A8(&qword_100063CF0, &qword_100063CD8, &qword_10004CF78);
    v18 = sub_10004A11C();

    (*(v21 + 8))(v10, v6);
    v23 = sub_10004A10C();
    v24 = &protocol witness table for AnyCancellable;
    v22 = v18;
    swift_beginAccess();
    sub_100013120();
    swift_endAccess();
  }

  return v11;
}

uint64_t sub_10000CE78(char a1, void (*a2)(char *, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000CEEC(a1 & 1, a2);
  }

  return result;
}

void sub_10000CEEC(char a1, void (*a2)(char *, uint64_t))
{
  v3 = v2;
  v115 = a2;
  v5 = sub_10004A1DC();
  v113 = *(v5 - 8);
  v114 = v5;
  v6 = *(v113 + 64);
  __chkstk_darwin(v5);
  v111 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10004A1FC();
  v110 = *(v112 - 8);
  v8 = *(v110 + 64);
  __chkstk_darwin(v112);
  v109 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10004A21C();
  v108 = *(v116 - 8);
  v10 = *(v108 + 64);
  v11 = __chkstk_darwin(v116);
  v103 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v107 = &v92 - v13;
  v14 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v104 = *(v14 - 8);
  v15 = *(v104 + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v105 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v106 = &v92 - v17;
  v99 = sub_100049FCC();
  v101 = *(v99 - 8);
  v18 = *(v101 + 64);
  v19 = __chkstk_darwin(v99);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v92 - v22;
  v24 = sub_100002D54(&unk_100063DE0, "4E");
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v100 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v92 - v28;
  v30 = sub_100049B7C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v35 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v102 = &v92 - v36;
  v37 = sub_100002D54(&unk_100063D00, &qword_10004CF88);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v40 = &v92 - v39;
  v41 = sub_10004A2BC();
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41);
  v46 = &v92 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v96 = v46;
    v95 = v44;
    v97 = v43;
    v98 = v3;
    v47 = v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_posterViewModel;
    swift_beginAccess();
    v48 = type metadata accessor for PosterAnimationViewModel();
    if (!sub_100004288(v47, 1, v48) && *(v47 + *(v48 + 60)) == 1)
    {
      v94 = v47;
      sub_1000139C8();
      v49 = v97;
      if (sub_100004288(v40, 1, v97) == 1)
      {
        sub_1000090CC(v40, &unk_100063D00, &qword_10004CF88);
        return;
      }

      (*(v95 + 32))(v96, v40, v49);
      sub_100011B5C();
      v53 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_renderStartTime;
      swift_beginAccess();
      sub_1000139C8();
      if (sub_100004288(v29, 1, v30) == 1)
      {
        sub_1000090CC(v29, &unk_100063DE0, "4E");
LABEL_36:
        v80 = v106;
        sub_1000139C8();
        sub_100013820(0, &qword_100065260, OS_dispatch_queue_ptr);
        v102 = sub_10004ABFC();
        v81 = v103;
        sub_10004A20C();
        v82 = v107;
        sub_10004A23C();
        v115 = *(v108 + 8);
        v115(v81, v116);
        v83 = swift_allocObject();
        swift_weakInit();
        v84 = v105;
        sub_1000139C8();
        v85 = (*(v104 + 80) + 24) & ~*(v104 + 80);
        v86 = swift_allocObject();
        *(v86 + 16) = v83;
        sub_1000138F4(v84, v86 + v85);
        aBlock[4] = sub_100013964;
        aBlock[5] = v86;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100012500;
        aBlock[3] = &unk_10005E878;
        v87 = _Block_copy(aBlock);

        v88 = v109;
        sub_10004A1EC();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_1000136C8(&qword_100063C50, &type metadata accessor for DispatchWorkItemFlags);
        sub_100002D54(&qword_100063C58, &unk_10004DE10);
        sub_1000138A8(&qword_100063C60, &qword_100063C58, &unk_10004DE10);
        v89 = v111;
        v90 = v114;
        sub_10004ACFC();
        v91 = v102;
        sub_10004ABDC();
        _Block_release(v87);

        (*(v113 + 8))(v89, v90);
        (*(v110 + 8))(v88, v112);
        v115(v82, v116);
        sub_1000090CC(v80, &unk_100063DF0, &qword_10004CF28);
        (*(v95 + 8))(v96, v97);
        return;
      }

      v115 = v53;
      (*(v31 + 32))(v102, v29, v30);
      sub_100049B6C();
      sub_100049AFC();
      v55 = v54;
      v93 = *(v31 + 8);
      v93(v35, v30);
      sub_100049F9C();
      v56 = sub_100049FAC();
      v57 = sub_10004AB9C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 134217984;
        *(v58 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v56, v57, "VFX animation took %fs to load", v58, 0xCu);
      }

      v59 = v101 + 8;
      v60 = *(v101 + 8);
      v61 = v99;
      v60(v23, v99);
      v62 = v98;
      v92 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer;
      if (*(v98 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer) && v55 < 0.3)
      {
        v101 = v59;
        sub_100049F9C();

        v63 = sub_100049FAC();
        v64 = sub_10004AB9C();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 134349056;
          *(v65 + 4) = *(v98 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_lastPauseAnimationTimerDuration);
          _os_log_impl(&_mh_execute_header, v63, v64, "VFX animation loaded quickly, restarting pause timer after %{public}fs", v65, 0xCu);
          v62 = v98;
        }

        v60(v21, v61);
        sub_10000FAA8(*(v62 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_lastPauseAnimationTimerDuration));
      }

      if (*(v62 + 16))
      {
        v66 = *(v62 + 16);

        v67 = sub_10004A42C();

        sub_10004A0AC();
        v69 = v68;

        if (v69 == 1.0)
        {
          v70 = *(v62 + v92);
          if (v70)
          {
            v71 = [v70 fireDate];
            sub_100049B3C();

            sub_100049B1C();
            v73 = v72;
            v74 = v35;
            v75 = v93;
            v93(v74, v30);
            v76 = v73 > 0.4;
            goto LABEL_29;
          }

          v76 = 1;
        }

        else
        {
          v76 = 0;
        }
      }

      else
      {
        v76 = 0;
      }

      v75 = v93;
LABEL_29:
      v77 = sub_10004A2AC();
      if (v77)
      {
        v78 = v77;
        if ((*(*(v62 + 88) + 24) & 1) == 0 || !v76)
        {
          v75(v102, v30);

          goto LABEL_35;
        }

        sub_100013374(0.1, 0.4);
        sub_1000479C0(v79);
      }

      v75(v102, v30);
LABEL_35:
      sub_100004544(v100, 1, 1, v30);
      swift_beginAccess();
      sub_100013120();
      swift_endAccess();
      goto LABEL_36;
    }

    v50 = sub_100049FAC();
    v51 = sub_10004AB9C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "VFX finished loading, but skipping showing VFX because the poster is no longer showing animation", v52, 2u);
    }
  }

  else
  {

    sub_100011B00();
  }
}

uint64_t sub_10000DD1C(unsigned __int8 *a1, uint64_t (*a2)(uint64_t, unsigned __int8 *))
{
  v4 = *a1;
  v5 = sub_100002D54(&qword_100063CF8, &qword_10004CF80);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_10000DD78(uint64_t a1, uint64_t a2, uint64_t (*a3)())
{
  v4 = v3;
  v207 = a3;
  v200 = a2;
  v170 = a1;
  v142 = sub_10004A65C();
  v141 = *(v142 - 8);
  v5 = *(v141 + 64);
  __chkstk_darwin(v142);
  v140 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_10004A74C();
  v139 = *(v146 - 8);
  v7 = *(v139 + 64);
  __chkstk_darwin(v146);
  v138 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v143 = &v136 - v11;
  v144 = type metadata accessor for DynamicRotationState();
  v12 = *(*(v144 - 8) + 64);
  v13 = __chkstk_darwin(v144);
  v137 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v145 = &v136 - v15;
  v16 = sub_100002D54(&qword_100063C90, &unk_10004E3A0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v187 = &v136 - v18;
  v186 = sub_10004A72C();
  v184 = *(v186 - 8);
  v19 = *(v184 + 64);
  __chkstk_darwin(v186);
  v182 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_10004A1BC();
  v180 = *(v181 - 8);
  v21 = *(v180 + 64);
  __chkstk_darwin(v181);
  v179 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100002D54(&unk_100063DE0, "4E");
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v178 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v177 = &v136 - v27;
  v174 = sub_10004A45C();
  v173 = *(v174 - 8);
  v28 = *(v173 + 64);
  __chkstk_darwin(v174);
  v171 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_10004A38C();
  v168 = *(v169 - 8);
  v30 = *(v168 + 64);
  __chkstk_darwin(v169);
  v167 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_10004A61C();
  v194 = *(v191 - 8);
  v32 = *(v194 + 64);
  __chkstk_darwin(v191);
  v190 = &v136 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10004A46C();
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v172 = &v136 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100002D54(&qword_1000637A8, "4E");
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v166 = &v136 - v39;
  v40 = sub_100002D54(&qword_100063970, &unk_10004CC60);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v203 = &v136 - v42;
  v164 = sub_100049B7C();
  v161 = *(v164 - 8);
  v43 = *(v161 + 64);
  __chkstk_darwin(v164);
  v202 = &v136 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_100049F2C();
  v159 = *(v160 - 8);
  v45 = *(v159 + 64);
  __chkstk_darwin(v160);
  v201 = &v136 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_10004A7AC();
  v188 = *(v189 - 8);
  v47 = *(v188 + 64);
  __chkstk_darwin(v189);
  v193 = &v136 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100002D54(&qword_100063C28, &qword_10004CF20);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49 - 8);
  v211 = &v136 - v51;
  v185 = sub_10004A5DC();
  v183 = *(v185 - 8);
  v52 = *(v183 + 64);
  __chkstk_darwin(v185);
  v192 = &v136 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_10004A69C();
  v209 = *(v199 - 1);
  v54 = *(v209 + 64);
  __chkstk_darwin(v199);
  v197 = &v136 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_10004A2EC();
  v158 = *(v165 - 8);
  v56 = *(v158 + 64);
  __chkstk_darwin(v165);
  v154 = &v136 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_10004A8AC();
  v208 = *(v198 - 8);
  v58 = *(v208 + 64);
  __chkstk_darwin(v198);
  v196 = &v136 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_10004A2FC();
  v155 = *(v157 - 8);
  v60 = *(v155 + 64);
  __chkstk_darwin(v157);
  v153 = &v136 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_10004A71C();
  v206 = *(v163 - 8);
  v62 = *(v206 + 64);
  v63 = __chkstk_darwin(v163);
  v162 = &v136 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v210 = &v136 - v65;
  v66 = sub_100049D9C();
  v205 = v66;
  v67 = *(v66 - 8);
  v68 = *(v67 + 64);
  v69 = __chkstk_darwin(v66);
  v71 = &v136 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v73 = &v136 - v72;
  v74 = sub_100002D54(&qword_100063C20, &qword_10004D2C0);
  v75 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74 - 8);
  v77 = &v136 - v76;
  v78 = type metadata accessor for SimulationReason();
  v79 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v81 = &v136 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100049B9C();
  swift_storeEnumTagMultiPayload();
  v82 = *(v3 + 96);
  sub_10001CA74(v81, v200);
  v175 = v81;
  sub_100013710();
  sub_100004544(v77, 0, 1, v78);
  swift_beginAccess();
  v195 = v4;
  sub_100013120();
  swift_endAccess();
  v204 = v73;
  v83 = v170;
  sub_10000AB6C();
  v84 = *(v4 + 72);
  v176 = v67;
  v149 = *(v67 + 16);
  v85 = v71;
  v149(v71, v73, v66);
  v86 = type metadata accessor for PosterAnimationViewModel();
  v150 = v86[12];
  v87 = *(v208 + 16);
  v208 += 16;
  v151 = v87;
  v88 = v196;
  v87(v196, v83 + v150, v198);
  v156 = *(v83 + v86[13]);
  v89 = v83;
  v90 = enum case for WeatherConditionGradientModel.AnimationContext.vfx(_:);
  v91 = sub_10004A2DC();
  v92 = v154;
  (*(*(v91 - 8) + 104))(v154, v90, v91);
  (*(v158 + 104))(v92, enum case for WeatherConditionGradientModel.PresentationContext.fullScreen(_:), v165);
  v147 = v86;
  v93 = v86[8];
  v158 = v86[9];
  v94 = *(v89 + v93);
  v95 = *(v209 + 16);
  v209 += 16;
  v148 = v95;
  v96 = v197;
  v95(v197, v89 + v158, v199);
  v97 = v153;
  v152 = v85;
  sub_10004A2CC();
  v98 = v210;
  sub_10004A35C();
  (*(v155 + 8))(v97, v157);
  sub_10000BEB8(v98);
  v99 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_lastModel;
  swift_beginAccess();
  v165 = v99;
  sub_1000139C8();
  (*(v159 + 16))(v201, v89, v160);
  v100 = v147;
  (*(v161 + 16))(v202, v89 + v147[5], v164);
  v149(v85, v204, v205);
  v101 = *(v89 + v100[7]);
  v102 = objc_opt_self();

  v103 = [v102 milesPerHour];
  sub_100013820(0, &qword_100063C98, NSUnitSpeed_ptr);
  sub_1000498DC();
  v148(v96, v89 + v158, v199);
  v151(v88, v89 + v150, v198);
  v104 = v89 + v100[14];
  sub_1000139C8();
  v105 = *(v194 + 104);
  LODWORD(v208) = enum case for VFXEffectViewID.poster(_:);
  v209 = v194 + 104;
  v199 = v105;
  v105(v190);
  (*(v168 + 104))(v167, enum case for WeatherConditionBackgroundConfig.CameraPositionType.default(_:), v169);
  (*(v173 + 104))(v171, enum case for WeatherConditionBackgroundOptions.DisplayLocation.poster(_:), v174);
  v106 = objc_opt_self();
  v107 = [v106 mainScreen];
  [v107 bounds];

  v108 = [v106 mainScreen];
  [v108 scale];

  sub_10004A44C();
  v109 = v89 + v100[10];
  sub_1000139C8();
  v110 = v89 + v100[11];
  sub_1000139C8();
  UIAccessibilityIsReduceMotionEnabled();
  v111 = v163;
  v112 = v193;
  sub_10004A78C();
  (*(v206 + 16))(v162, v210, v111);
  (*(v180 + 104))(v179, enum case for DynamicTypeSize.large(_:), v181);
  v113 = v89 + v100[16];
  v114 = v192;
  (*(v184 + 16))(v182, v113, v186);
  v115 = sub_10004A6EC();
  sub_100004544(v187, 1, 1, v115);
  sub_10004A5BC();
  sub_10004A3DC();
  v116 = [objc_opt_self() currentDevice];
  v117 = [v116 userInterfaceIdiom];

  if (v117 == 1)
  {
    swift_beginAccess();
    v118 = v143;
    sub_1000139C8();
    v119 = v144;
    if (sub_100004288(v118, 1, v144) == 1)
    {
      sub_1000090CC(v118, &qword_100063C18, &qword_10004E300);
    }

    else
    {
      sub_10001361C();
      v120 = v137;
      v207 = type metadata accessor for DynamicRotationState;
      sub_100013710();
      v121 = *(v120 + *(v119 + 20));
      v122 = *(v120 + *(v119 + 24));
      v123 = v138;
      sub_10004A73C();
      sub_100013674(v120, type metadata accessor for DynamicRotationState);
      v124 = v139;
      v125 = v140;
      (*(v139 + 16))(v140, v123, v146);
      v126 = v141;
      v127 = v142;
      (*(v141 + 104))(v125, enum case for VFXOverrideModel.deviceRotation(_:), v142);
      v128 = v190;
      v129 = v111;
      v130 = v191;
      (v199)(v190, v208, v191);
      sub_10004A3CC();
      v131 = v130;
      v111 = v129;
      (*(v194 + 8))(v128, v131);
      (*(v126 + 8))(v125, v127);
      v112 = v193;
      v132 = v123;
      v114 = v192;
      (*(v124 + 8))(v132, v146);
      sub_100013674(v145, v207);
    }
  }

  sub_10004A43C();
  sub_1000136C8(&qword_100063CA0, &type metadata accessor for WeatherConditionBackgroundManager);
  sub_10004A4CC();
  v133 = v211;
  sub_10004A5CC();
  v134 = v189;
  sub_100004544(v133, 0, 1, v189);
  swift_beginAccess();
  sub_100013120();
  swift_endAccess();
  sub_10004A5CC();
  sub_10001283C(v112);
  (*(v188 + 8))(v112, v134);
  (*(v183 + 8))(v114, v185);
  (*(v206 + 8))(v210, v111);
  (*(v176 + 8))(v204, v205);
  return sub_100013674(v175, type metadata accessor for SimulationReason);
}

void sub_10000F64C()
{
  v1 = v0;
  v2 = type metadata accessor for SimulationReason();
  v3 = sub_100005A24(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_1000059D0();
  v8 = v7 - v6;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v9 = *(v0 + 96);
    swift_storeEnumTagMultiPayload();
    v10 = *(v1 + 16);

    sub_10001CA74(v8, v10);

    sub_100013E50();
    sub_100013674(v8, v11);
    if (*(v1 + 16))
    {
      v12 = *(v1 + 16);

      sub_10004A40C(0);
    }

    v13 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView);
    if (v13 && (v14 = [v13 effect]) != 0)
    {
      v15 = v14;
      sub_100013374(0.0, 0.4);
      v16 = *(v1 + 88);
      sub_1000479C0(v17);
    }

    else
    {
      *(*(v1 + 88) + 24) = 1;
    }
  }
}

uint64_t sub_10000F778(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, double a4)
{
  v5 = v4;
  v9 = a4;
  *(v5 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_lastPauseAnimationTimerDuration) = a4;
  sub_100013FBC();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = v10;

  if ((a1 & 1) != 0 && !UIAccessibilityIsReduceMotionEnabled())
  {

    v21 = (v5 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
    v22 = *(v5 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
    v23 = *(v5 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion + 8);
    *v21 = sub_100013608;
    v21[1] = v11;

    sub_100013110(v22);
    if (!v5[8] || (v24 = v5[8], , v25 = sub_10004A31C(), , (v25 & 1) == 0))
    {
      v9 = v9 + 0.3;
    }

    sub_10000FAA8(v9);
  }

  else
  {
    v12 = v5[11];
    sub_100047B2C();
    v13 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer;
    v14 = *(v5 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer);
    if (v14)
    {
      [v14 invalidate];
      v15 = *(v5 + v13);
    }

    else
    {
      v15 = 0;
    }

    *(v5 + v13) = 0;

    v16 = (v5 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
    v17 = *(v5 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
    v18 = *(v5 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion + 8);
    *v16 = 0;
    v16[1] = 0;
    sub_100013110(v17);
    if (v5[2])
    {
      v19 = v5[2];

      sub_10004A41C();
    }

    sub_10000F994(a2);
  }
}

uint64_t sub_10000F994(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for SimulationReason();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + 96);
    swift_storeEnumTagMultiPayload();
    v9 = *(v7 + 16);

    sub_10001D088(v5, v9);

    sub_100013674(v5, type metadata accessor for SimulationReason);
  }

  return a1(Strong);
}

void sub_10000FAA8(double a1)
{
  v3 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer;
  v4 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer);
  if (v4)
  {
    [v4 invalidate];
  }

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_100013614;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100011A98;
  v10[3] = &unk_10005E800;
  v7 = _Block_copy(v10);

  v8 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:a1];
  _Block_release(v7);
  v9 = *(v1 + v3);
  *(v1 + v3) = v8;
}

uint64_t sub_10000FBD8(int a1, uint64_t (*a2)(uint64_t), uint64_t a3, double a4)
{
  v9 = type metadata accessor for SimulationReason();
  v10 = sub_1000059BC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v10);
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  result = UIAccessibilityIsReduceMotionEnabled();
  if ((result & 1) == 0)
  {
    v36 = a1;
    v19 = *(v4 + 16);
    if (v19)
    {
      v20 = *(v4 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView);
      if (v20)
      {
        v21 = *(v4 + 16);

        v22 = [v20 effect];
        if (v22)
        {
          v35 = v22;
          sub_100049B9C();
          swift_storeEnumTagMultiPayload();
          v23 = *(v4 + 96);

          sub_10001CA74(v17, v19);

          if (v36 == 2)
          {
            v24 = 0;
            v25 = 0;
          }

          else
          {
            sub_100013FBC();
            v34 = swift_allocObject();
            swift_weakInit();
            sub_100013710();
            v26 = (*(v12 + 80) + 24) & ~*(v12 + 80);
            v25 = swift_allocObject();
            *(v25 + 16) = v34;
            sub_10001361C();
            v24 = sub_100013298;
          }

          v27 = sub_10004A42C();
          sub_100013FBC();
          v28 = swift_allocObject();
          swift_weakInit();
          v29 = swift_allocObject();
          *(v29 + 16) = v24;
          *(v29 + 24) = v25;
          *(v29 + 32) = a2;
          *(v29 + 40) = a3;
          v30 = v35;
          *(v29 + 48) = v28;
          *(v29 + 56) = v30;
          *(v29 + 64) = v36;
          *(v29 + 72) = a4;
          sub_100013364(v24);
          sub_100013364(a2);

          v31 = v30;
          sub_10004A04C();

          sub_100013110(v24);

          sub_100013E50();
          sub_100013674(v17, v32);
        }
      }
    }
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_10000FEF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 96);
    v5 = *(result + 16);

    sub_10001D088(a2, v5);
  }

  return result;
}

uint64_t sub_10000FF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7)
{
  v41 = a2;
  v42 = a7;
  v40 = a1;
  v10 = sub_10004A67C();
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004A58C();
  v16 = *(v15 - 8);
  v17 = v16[8];
  __chkstk_darwin(v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v20 = sub_10004A0EC();
    if (v20)
    {

      *&v21 = a5;
      v39 = v21;
      v22 = 1.0 - *&v21;
      sub_100013478(&off_10005DD00);
      v38 = v23;
      sub_100002D54(&qword_100063C40, &qword_10004CF40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10004CE30;
      v25 = *&v39;
      v26 = v38;
      *(inited + 32) = vmul_n_f32(*&v38, *&v39);
      *(inited + 40) = vmuls_lane_f32(v25, v26, 2) + 100.0;
      sub_100013478(inited);
      v33 = v27;
      *&v39 = a4;
      v37 = v16[13];
      v32 = v15;
      v37(v19, enum case for BoundEntity.camera(_:), v15);
      sub_10004A57C();
      v31 = v28;
      v36 = v16[1];
      v36(v19, v15);
      v35 = v11[13];
      v35(v14, enum case for BoundPropertyName.cameraPosition(_:), v10);
      sub_10004A66C();
      *&v38 = a3;
      v34 = v11[1];
      v34(v14, v10);
      v44 = sub_100002D54(&qword_100063C48, &qword_10004CF48);
      v43[0] = swift_allocObject();
      *(v43[0] + 16) = v33;
      sub_10004A0DC();

      sub_100008FC8(v43);
      v29 = v32;
      v37(v19, enum case for BoundEntity.lightning(_:), v32);
      sub_10004A57C();
      v36(v19, v29);
      v35(v14, enum case for BoundPropertyName.lightningFadeProgress(_:), v10);
      sub_10004A66C();
      v34(v14, v10);
      v44 = &type metadata for Float;
      *v43 = v22;
      sub_10004A0DC();
      a4 = v39;

      a3 = v38;

      sub_100008FC8(v43);
    }
  }

  return sub_1000103F4(v40, v41, a3, a4);
}

uint64_t sub_1000103F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10004A1DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004A1FC();
  v14 = *(*(v13 - 8) + 64);
  result = __chkstk_darwin(v13);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 | a3)
  {
    v24 = v16;
    v25 = result;
    sub_100013820(0, &qword_100065260, OS_dispatch_queue_ptr);
    v23 = sub_10004ABFC();
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    v19[5] = a4;
    aBlock[4] = sub_100013564;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012500;
    aBlock[3] = &unk_10005E7B0;
    v20 = _Block_copy(aBlock);
    sub_100013364(a1);
    sub_100013364(a3);

    sub_10004A1EC();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000136C8(&qword_100063C50, &type metadata accessor for DispatchWorkItemFlags);
    sub_100002D54(&qword_100063C58, &unk_10004DE10);
    sub_1000138A8(&qword_100063C60, &qword_100063C58, &unk_10004DE10);
    sub_10004ACFC();
    v21 = v23;
    sub_10004AC0C();
    _Block_release(v20);

    (*(v9 + 8))(v12, v8);
    return (*(v24 + 8))(v18, v25);
  }

  return result;
}

uint64_t sub_100010710(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  sub_100005A50(v4);
  v6 = *(v5 + 64);
  sub_100013ED4();
  __chkstk_darwin(v7);
  sub_100013F88();
  sub_100005A44();
  v8 = sub_10004A61C();
  v9 = sub_1000059BC(v8);
  v66 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_1000059D0();
  v67 = v14 - v13;
  sub_100005A44();
  v15 = sub_10004A65C();
  v16 = sub_1000059BC(v15);
  v64 = v17;
  v65 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_1000059D0();
  v63 = v21 - v20;
  sub_100005A44();
  v69 = type metadata accessor for DynamicRotationState();
  v22 = sub_100005A24(v69);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_1000059D0();
  v27 = v26 - v25;
  v68 = sub_10004A74C();
  v28 = sub_1000059BC(v68);
  v30 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v28);
  sub_1000059D0();
  v35 = v34 - v33;
  sub_100005A44();
  v36 = type metadata accessor for SimulationReason();
  v37 = sub_100005A24(v36);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  sub_1000059D0();
  v42 = v41 - v40;
  v43 = sub_100049BAC();
  sub_100005A24(v43);
  v45 = a1;
  (*(v44 + 16))(v42, a1);
  swift_storeEnumTagMultiPayload();
  v46 = *(v1 + 96);
  v47 = *(v2 + 16);

  sub_10001CA74(v42, v47);

  if (*(v2 + 16))
  {
    v62 = a1;
    sub_100013710();
    v48 = *(v27 + *(v69 + 20));
    v49 = *(v27 + *(v69 + 24));

    sub_10004A73C();
    sub_100013674(v27, type metadata accessor for DynamicRotationState);
    (*(v30 + 16))(v63, v35, v68);
    (*(v64 + 104))(v63, enum case for VFXOverrideModel.deviceRotation(_:), v65);
    v50 = enum case for VFXEffectViewID.poster(_:);
    v61 = *(v66 + 104);
    v61(v67, enum case for VFXEffectViewID.poster(_:), v8);
    sub_10004A3CC();
    v51 = *(v66 + 8);
    v51(v67, v8);
    (*(v64 + 8))(v63, v65);
    v61(v67, v50, v8);
    v45 = v62;
    sub_10004A3EC();

    v51(v67, v8);
    (*(v30 + 8))(v35, v68);
  }

  v52 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_gradientView;
  swift_beginAccess();
  v53 = *(v2 + v52);
  if (v53)
  {
    swift_endAccess();
    v54 = v53;
    sub_10002424C(v45);

    sub_100013E50();
    sub_100013674(v42, v55);
  }

  else
  {
    sub_100013E50();
    sub_100013674(v42, v56);
    swift_endAccess();
  }

  sub_100013710();
  sub_100013FE8();
  sub_100004544(v57, v58, v59, v69);
  sub_100013F40();
  sub_100013120();
  return swift_endAccess();
}

uint64_t sub_100010C14(uint64_t a1)
{
  v3 = type metadata accessor for SimulationReason();
  v4 = sub_100005A24(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_1000059D0();
  v9 = v8 - v7;
  v10 = *(v1 + 96);
  v11 = sub_100049BAC();
  sub_100005A24(v11);
  (*(v12 + 16))(v9, a1);
  swift_storeEnumTagMultiPayload();
  v13 = *(v1 + 16);

  sub_10001D088(v9, v13);

  sub_100013E50();
  return sub_100013674(v9, v14);
}

void sub_100010CFC()
{
  sub_100014000();
  v2 = v0;
  v4 = v3;
  v5 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  sub_100005A50(v5);
  v7 = *(v6 + 64);
  sub_100013ED4();
  __chkstk_darwin(v8);
  sub_100013F88();
  v82 = v9;
  v10 = sub_100002D54(&unk_100063DE0, "4E");
  sub_100005A50(v10);
  v12 = *(v11 + 64);
  sub_100013ED4();
  __chkstk_darwin(v13);
  sub_100013F88();
  v81 = v14;
  v15 = sub_100002D54(&qword_100063C20, &qword_10004D2C0);
  sub_100005A50(v15);
  v17 = *(v16 + 64);
  sub_100013ED4();
  __chkstk_darwin(v18);
  sub_100013F88();
  v80 = v19;
  v20 = sub_100002D54(&qword_100063C28, &qword_10004CF20);
  sub_100005A50(v20);
  v22 = *(v21 + 64);
  sub_100013ED4();
  __chkstk_darwin(v23);
  v25 = &v78[-v24];
  v26 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  sub_100005A50(v26);
  v28 = *(v27 + 64);
  sub_100013ED4();
  __chkstk_darwin(v29);
  v31 = &v78[-v30];
  v32 = sub_100049FAC();
  v33 = sub_10004AB9C();
  if (os_log_type_enabled(v32, v33))
  {
    sub_100014030();
    v34 = sub_100013FA0();
    *&v83 = v34;
    *v1 = 136446210;
    v79 = v4;
    if (v4)
    {
      if (v4 == 1)
      {
        v35 = 0xD000000000000011;
      }

      else
      {
        v35 = 0x646564616F6C6E75;
      }

      if (v4 == 1)
      {
        v36 = 0x800000010004E960;
      }

      else
      {
        v36 = 0xE800000000000000;
      }
    }

    else
    {
      v36 = 0x800000010004E980;
      v35 = 0xD000000000000013;
    }

    v37 = sub_1000230EC(v35, v36, &v83);

    *(v1 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v32, v33, "Invalidating animation for reason=%{public}s", v1, 0xCu);
    sub_100008FC8(v34);
    sub_100013F58();
    sub_100013F58();

    LOBYTE(v4) = v79;
  }

  else
  {
  }

  v38 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView;
  v39 = *(v2 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView);
  if (v39)
  {
    [v39 removeFromSuperview];
  }

  v40 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_gradientView;
  swift_beginAccess();
  v41 = *(v2 + v40);
  if (v41)
  {
    [v41 removeFromSuperview];
  }

  v42 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_debugLabel;
  v43 = *(v2 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_debugLabel);
  if (v43)
  {
    [v43 removeFromSuperview];
  }

  v44 = type metadata accessor for PosterAnimationViewModel();
  sub_100013F28(v31, v45, v46, v44);
  sub_100013EE0();
  sub_100013120();
  swift_endAccess();
  v47 = sub_10004A7AC();
  sub_100013F28(v25, v48, v49, v47);
  sub_100013EE0();
  sub_100013120();
  swift_endAccess();
  v50 = *(v2 + v38);
  *(v2 + v38) = 0;

  v51 = *(v2 + v40);
  *(v2 + v40) = 0;

  v52 = *(v2 + v42);
  *(v2 + v42) = 0;

  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  sub_100013F40();
  sub_100013120();
  swift_endAccess();
  v53 = v2[8];
  v2[8] = 0;

  v54 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer;
  v55 = *(v2 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer);
  if (v55)
  {
    [v55 invalidate];
    v56 = *(v2 + v54);
  }

  else
  {
    v56 = 0;
  }

  *(v2 + v54) = 0;

  v57 = (v2 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
  v58 = *(v2 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
  v59 = *(v2 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion + 8);
  *v57 = 0;
  v57[1] = 0;
  sub_100013110(v58);
  v60 = type metadata accessor for SimulationReason();
  sub_100013F28(v80, v61, v62, v60);
  sub_100013EE0();
  sub_100013120();
  swift_endAccess();
  v63 = sub_100049B7C();
  sub_100013F28(v81, v64, v65, v63);
  sub_100013EE0();
  sub_100013120();
  swift_endAccess();
  v66 = v2[11];
  sub_100047B2C();
  v67 = v2[2];
  v2[2] = 0;

  v68 = v2[12];
  sub_10001D648();
  *(v2 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_lastPauseAnimationTimerDuration) = 0;
  v69 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_deviceRotationTimer;
  v70 = *(v2 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_deviceRotationTimer);
  if (v70)
  {
    [v70 invalidate];
    v71 = *(v2 + v69);
  }

  else
  {
    v71 = 0;
  }

  *(v2 + v69) = 0;

  v72 = type metadata accessor for DynamicRotationState();
  sub_100013F28(v82, v73, v74, v72);
  sub_100013EE0();
  sub_100013120();
  swift_endAccess();
  v75 = v2[13];
  sub_10003CA44();
  if (!v4)
  {
LABEL_29:

    goto LABEL_30;
  }

  v76 = sub_10004AF3C();

  if ((v76 & 1) == 0)
  {
    if (v4 == 2)
    {
      v77 = sub_10004AF3C();

      if ((v77 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_30:
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  sub_100013F40();
  sub_100013120();
  swift_endAccess();
LABEL_31:
  sub_100014018();
}

char *sub_100011380()
{
  v1 = *(v0 + 2);

  sub_1000090CC((v0 + 24), &qword_100063C38, &qword_10004CF38);
  v2 = *(v0 + 8);

  v3 = *(v0 + 9);

  v4 = *(v0 + 10);

  v5 = *(v0 + 11);

  v6 = *(v0 + 12);

  v7 = *(v0 + 13);

  sub_1000090CC((v0 + 112), &qword_100063C30, &qword_10004CF30);
  sub_1000090CC(&v0[OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_lastModel], &qword_100063C28, &qword_10004CF20);

  sub_1000090CC(&v0[OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_posterViewModel], &unk_100063DF0, &qword_10004CF28);
  v8 = *&v0[OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion + 8];
  sub_100013110(*&v0[OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion]);
  sub_1000090CC(&v0[OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_activeRenderSimulation], &qword_100063C20, &qword_10004D2C0);
  sub_1000090CC(&v0[OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_renderStartTime], &unk_100063DE0, "4E");
  sub_1000090CC(&v0[OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_rotationState], &qword_100063C18, &qword_10004E300);

  v9 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_logger;
  v10 = sub_100049FCC();
  sub_100009714(v10);
  (*(v11 + 8))(&v0[v9]);
  sub_100013DE4(&v0[OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_rendererDelegate]);
  return v0;
}

uint64_t sub_100011550()
{
  sub_100011380();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for VFXAnimation()
{
  result = qword_100063AC0;
  if (!qword_100063AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000115FC()
{
  sub_100011894(319, &qword_100063AD0, &type metadata accessor for BackgroundAnimationData.Model);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_100011894(319, &qword_100063AD8, type metadata accessor for PosterAnimationViewModel);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_100011894(319, &qword_100063AE0, type metadata accessor for SimulationReason);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_100011894(319, &qword_100063818, &type metadata accessor for Date);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_100011894(319, &qword_100063AE8, type metadata accessor for DynamicRotationState);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            v10 = sub_100049FCC();
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_100011894(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10004ACDC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000118E8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_rendererDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100011954()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer;
    v3 = *(result + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer);
    if (v3)
    {
      [v3 invalidate];
      v4 = *(v1 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v1 + v2) = 0;

    v5 = *(v1 + 88);

    sub_100047B2C();

    if (*(v1 + 16))
    {
      v6 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
      v7 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion + 8);
      v8 = *(v1 + 16);

      sub_100013364(v6);
      sub_10004A41C();
      sub_100013110(v6);
    }

    else
    {
      v9 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
      if (v9)
      {
        v10 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion + 8);

        v9(v11);
        sub_100013110(v9);
      }
    }

    v12 = (v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
    v13 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
    v14 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion + 8);
    *v12 = 0;
    v12[1] = 0;
    sub_100013110(v13);
  }

  return result;
}

void sub_100011A98(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100011B00()
{
  v1 = *(v0 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView);
  if (v1)
  {
    v2 = v1;
    sub_100012F98(v2, 0.0);
  }
}

void sub_100011B5C()
{
  v1 = v0 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_posterViewModel;
  swift_beginAccess();
  v2 = type metadata accessor for PosterAnimationViewModel();
  if (!sub_100004288(v1, 1, v2))
  {
    v3 = *(v1 + *(v2 + 68));
    if (v3)
    {
      v4 = v3;
      v5 = sub_100012EFC(v0);
      sub_10004ACAC();
      sub_100012F98(v5, 1.0);
    }
  }
}

void sub_100011C18(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v2 = sub_100002D54(&qword_100063C20, &qword_10004D2C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v39 - v7;
  v9 = type metadata accessor for SimulationReason();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PosterAnimationViewModel();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v39 - v19;
  v21 = sub_100002D54(&qword_100063C80, &qword_10004CF50);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v39 - v23;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v26 = Strong;
  v39 = v12;
  v40 = v6;
  v41 = v9;
  swift_beginAccess();
  v27 = *(v21 + 48);
  sub_1000139C8();
  sub_1000139C8();
  if (sub_100004288(v24, 1, v13) == 1)
  {
    if (sub_100004288(&v24[v27], 1, v13) == 1)
    {
      sub_1000090CC(v24, &unk_100063DF0, &qword_10004CF28);
LABEL_12:
      swift_beginAccess();
      sub_1000139C8();
      v32 = v41;
      if (sub_100004288(v8, 1, v41) == 1)
      {
        sub_1000090CC(v8, &qword_100063C20, &qword_10004D2C0);
        v33 = sub_100049FAC();
        v34 = sub_10004AB7C();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "Completed rendering of weather data, but there was no active render simulation.", v35, 2u);
        }
      }

      else
      {
        v36 = v39;
        sub_10001361C();
        v37 = *(v26 + 96);
        v38 = *(v26 + 16);

        sub_10001D088(v36, v38);

        sub_100013674(v36, type metadata accessor for SimulationReason);
        sub_100004544(v40, 1, 1, v32);
        swift_beginAccess();
        sub_100013120();
        swift_endAccess();
      }

      sub_1000121D0();

      return;
    }

    goto LABEL_7;
  }

  sub_1000139C8();
  if (sub_100004288(&v24[v27], 1, v13) == 1)
  {
    sub_100013674(v20, type metadata accessor for PosterAnimationViewModel);
LABEL_7:
    sub_1000090CC(v24, &qword_100063C80, &qword_10004CF50);
    goto LABEL_8;
  }

  sub_10001361C();
  v31 = sub_1000047E8(v20, v16);
  sub_100013674(v16, type metadata accessor for PosterAnimationViewModel);
  sub_100013674(v20, type metadata accessor for PosterAnimationViewModel);
  sub_1000090CC(v24, &unk_100063DF0, &qword_10004CF28);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_8:
  v28 = sub_100049FAC();
  v29 = sub_10004AB9C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Skipping notifying of completion because a newer request is inflight that will notify instead", v30, 2u);
  }
}

uint64_t sub_1000121D0()
{
  v1 = v0;
  v2 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v26 = &v25 - v4;
  v5 = sub_100049B7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_100049FAC();
  v11 = sub_10004AB9C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136446210;
    v14 = v0 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_posterViewModel;
    swift_beginAccess();
    v15 = type metadata accessor for PosterAnimationViewModel();
    if (sub_100004288(v14, 1, v15))
    {
      v16 = 0;
      v17 = 0xE000000000000000;
    }

    else
    {
      (*(v6 + 16))(v9, v14 + *(v15 + 20), v5);
      v16 = sub_100049ADC();
      v17 = v18;
      (*(v6 + 8))(v9, v5);
    }

    v19 = sub_1000230EC(v16, v17, &v27);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Completed rendering of weather data at date=%{public}s", v12, 0xCu);
    sub_100008FC8(v13);
  }

  else
  {
  }

  v20 = v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_rendererDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = *(v20 + 8);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v24 = v26;
    sub_1000139C8();
    (*(v22 + 16))(v24, ObjectType, v22);
    swift_unknownObjectRelease();
    return sub_1000090CC(v24, &unk_100063DF0, &qword_10004CF28);
  }

  return result;
}

uint64_t sub_100012500(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100012544()
{
  v0 = type metadata accessor for PosterAnimationViewModel();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15[-v6];
  v8 = sub_100002D54(&qword_100063C80, &qword_10004CF50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v15[-v10];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v13 = *(v8 + 48);
    sub_1000139C8();
    sub_1000139C8();
    if (sub_100004288(v11, 1, v0) == 1)
    {
      if (sub_100004288(&v11[v13], 1, v0) == 1)
      {
        sub_1000090CC(v11, &unk_100063DF0, &qword_10004CF28);
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000139C8();
      if (sub_100004288(&v11[v13], 1, v0) != 1)
      {
        sub_10001361C();
        v14 = sub_1000047E8(v7, v3);
        sub_100013674(v3, type metadata accessor for PosterAnimationViewModel);
        sub_100013674(v7, type metadata accessor for PosterAnimationViewModel);
        sub_1000090CC(v11, &unk_100063DF0, &qword_10004CF28);
        if ((v14 & 1) == 0)
        {
        }

LABEL_10:
        sub_1000121D0();
      }

      sub_100013674(v7, type metadata accessor for PosterAnimationViewModel);
    }

    return sub_1000090CC(v11, &qword_100063C80, &qword_10004CF50);
  }

  return result;
}

void sub_10001283C(uint64_t a1)
{
  v67 = a1;
  v2 = sub_10004A8AC();
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = *(v65 + 64);
  __chkstk_darwin(v2);
  v64 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100049B7C();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  __chkstk_darwin(v5);
  v60 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100049D9C();
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100049C2C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100049F2C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v1;
  v22 = v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_posterViewModel;
  swift_beginAccess();
  v23 = type metadata accessor for PosterAnimationViewModel();
  if (!sub_100004288(v22, 1, v23))
  {
    v24 = *(v22 + *(v23 + 72));
    if (v24)
    {
      v25 = v24;
      if (sub_10000AF0C())
      {
        v59 = v25;
        v26 = [objc_allocWithZone(NSDateFormatter) init];
        sub_10004A77C();
        sub_100049F0C();
        v27 = *(v18 + 8);
        v57 = v18 + 8;
        v58 = v27;
        v27(v21, v17);
        isa = sub_100049BFC().super.isa;
        (*(v13 + 8))(v16, v12);
        v56 = v26;
        [v26 setTimeZone:isa];

        [v26 setTimeStyle:1];
        [v26 setDateStyle:1];
        v29 = 0xE000000000000000;
        v71 = 0;
        v72 = 0xE000000000000000;
        sub_10004AD6C(49);
        v73._countAndFlagsBits = 0x6F697469646E6F43;
        v73._object = 0xEB00000000203A6ELL;
        sub_10004A9DC(v73);
        sub_10004A75C();
        v30 = sub_100049D8C();
        v32 = v31;
        (*(v61 + 8))(v11, v8);
        v74._countAndFlagsBits = v30;
        v74._object = v32;
        sub_10004A9DC(v74);

        v75._countAndFlagsBits = 0x6F697461636F4C0ALL;
        v75._object = 0xEB00000000203A6ELL;
        sub_10004A9DC(v75);
        sub_10004A77C();
        sub_100049EDC();
        v34 = v33;
        v36 = v35;
        v37 = v17;
        v38 = v56;
        v58(v21, v37);
        v69 = v34;
        v70 = v36;
        type metadata accessor for CLLocationCoordinate2D(0);
        sub_10004AE0C();
        v76._countAndFlagsBits = 0x203A657461440ALL;
        v76._object = 0xE700000000000000;
        sub_10004A9DC(v76);
        v39 = v60;
        sub_10004A76C();
        v40 = sub_100049B0C().super.isa;
        (*(v62 + 8))(v39, v63);
        v41 = [v38 stringForObjectValue:v40];

        if (v41)
        {
          v42 = sub_10004A98C();
          v29 = v43;
        }

        else
        {
          v42 = 0;
        }

        v44 = v68;
        v77._countAndFlagsBits = v42;
        v77._object = v29;
        sub_10004A9DC(v77);

        v78._countAndFlagsBits = 0x69746176656C450ALL;
        v78._object = 0xEC000000203A6E6FLL;
        sub_10004A9DC(v78);
        sub_100002D54(&qword_100063CA8, &qword_10004CF58);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_10004CBE0;
        v46 = v64;
        sub_10004A79C();
        sub_10004A89C();
        v48 = v47;
        (*(v65 + 8))(v46, v66);
        *(v45 + 56) = &type metadata for CGFloat;
        *(v45 + 64) = sub_100013768();
        *(v45 + 32) = v48;
        v79._countAndFlagsBits = sub_10004A99C();
        sub_10004A9DC(v79);

        v50 = v71;
        v49 = v72;
        v51 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_debugLabel;
        v52 = *(v44 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_debugLabel);
        v25 = v59;
        if (v52)
        {
          v53 = v52;
          sub_1000137BC(v50, v49, v53);
        }

        else
        {
          v54 = sub_1000020E8(v71, v72);

          v25 = *(v44 + v51);
          *(v44 + v51) = v54;
        }
      }
    }
  }
}

id sub_100012EFC(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView;
  v2 = *(a1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView);
  if (v2)
  {
    v3 = *(a1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView);
  }

  else
  {
    v5 = [objc_allocWithZone(VFXView) init];
    [v5 setAlpha:0.0];
    sub_100002560(v5, 0);
    v6 = *(a1 + v1);
    *(a1 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100012F98(void *a1, double a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  if (qword_100063470 != -1)
  {
    swift_once();
  }

  [v4 setAnimationTimingFunction:qword_100068300];
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v10[4] = sub_1000139B4;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100012500;
  v10[3] = &unk_10005E8C8;
  v7 = _Block_copy(v10);
  v8 = a1;

  [v5 animateWithDuration:v7 animations:0.25];
  _Block_release(v7);
  return [v4 commit];
}

uint64_t sub_100013110(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100013120()
{
  sub_100013FF4();
  v3 = sub_100002D54(v1, v2);
  sub_100005A24(v3);
  v5 = *(v4 + 40);
  v6 = sub_100013F94();
  v7(v6);
  return v0;
}

uint64_t sub_100013178()
{
  swift_weakDestroy();
  sub_100013FBC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000131AC()
{
  v1 = *(type metadata accessor for SimulationReason() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  if (swift_getEnumCaseMultiPayload() <= 2)
  {
    v6 = sub_100049BAC();
    sub_100009714(v6);
    (*(v7 + 8))(v0 + v3);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100013298()
{
  v0 = type metadata accessor for SimulationReason();
  sub_100005A50(v0);
  v2 = *(v1 + 80);
  v3 = sub_100013FD4();

  return sub_10000FEF0(v3, v4);
}

uint64_t sub_1000132EC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100013364(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_100013374(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1000133EC(0x20000000000001uLL);
  }
}

unint64_t sub_1000133EC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100013478(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {

    goto LABEL_8;
  }

  if (v1 - 4 < 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = 0;
  v3 = 0uLL;
  do
  {
    v4 = *(result + 4 * v2 + 32);
    v5 = v3;
    *(&v5 & 0xFFFFFFFFFFFFFFF3 | (4 * (v2 & 3))) = v4;
    v3 = v5;
    ++v2;
  }

  while (v1 != v2);

  if (v1 < 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_100013514()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  if (v0[4])
  {
    v2 = v0[5];
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100013564()
{
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  if (v1)
  {
    v4 = v0[3];
    result = v1();
  }

  if (v3)
  {
    return v3();
  }

  return result;
}

uint64_t sub_1000135B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000135C8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013608()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_10000F994(*(v0 + 16));
}

uint64_t sub_10001361C()
{
  sub_100013FF4();
  v2 = v1(0);
  sub_100005A24(v2);
  v4 = *(v3 + 32);
  v5 = sub_100013F94();
  v6(v5);
  return v0;
}

uint64_t sub_100013674(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100009714(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000136C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100013710()
{
  sub_100013FF4();
  v2 = v1(0);
  sub_100005A24(v2);
  v4 = *(v3 + 16);
  v5 = sub_100013F94();
  v6(v5);
  return v0;
}

unint64_t sub_100013768()
{
  result = qword_100063CB0;
  if (!qword_100063CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063CB0);
  }

  return result;
}

void sub_1000137BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10004A95C();

  [a3 setText:v4];
}

uint64_t sub_100013820(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100013868()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000138A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009240(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000138F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001397C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000139C8()
{
  sub_100013FF4();
  v3 = sub_100002D54(v1, v2);
  sub_100005A24(v3);
  v5 = *(v4 + 16);
  v6 = sub_100013F94();
  v7(v6);
  return v0;
}

uint64_t sub_100013A20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100013A84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100013A9C()
{
  sub_100014000();
  v1 = *(sub_100002D54(&unk_100063DF0, &qword_10004CF28) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = type metadata accessor for PosterAnimationViewModel();
  if (!sub_100004288(v0 + v2, 1, v6))
  {
    v7 = sub_100049F2C();
    sub_100009714(v7);
    (*(v8 + 8))(v0 + v2);
    v9 = v6[5];
    v10 = sub_100049B7C();
    sub_100005A24(v10);
    v12 = *(v11 + 8);
    v12(v5 + v9, v10);
    v13 = v6[6];
    v14 = sub_100049D9C();
    sub_100009714(v14);
    (*(v15 + 8))(v5 + v13);
    v16 = v6[9];
    v17 = sub_10004A69C();
    sub_100009714(v17);
    (*(v18 + 8))(v5 + v16);
    v19 = v6[10];
    if (!sub_100004288(v5 + v19, 1, v10))
    {
      v12(v5 + v19, v10);
    }

    v20 = v6[11];
    if (!sub_100004288(v5 + v20, 1, v10))
    {
      v12(v5 + v20, v10);
    }

    v21 = v6[12];
    v22 = sub_10004A8AC();
    sub_100009714(v22);
    (*(v23 + 8))(v5 + v21);
    v24 = v6[14];
    v25 = sub_10004A6DC();
    if (!sub_100004288(v5 + v24, 1, v25))
    {
      (*(*(v25 - 8) + 8))(v5 + v24, v25);
    }

    v26 = v6[16];
    v27 = sub_10004A72C();
    sub_100009714(v27);
    (*(v28 + 8))(v5 + v26);
  }

  sub_100014018();

  return _swift_deallocObject(v29, v30, v31);
}

uint64_t sub_100013D70(uint64_t (*a1)(uint64_t))
{
  v1 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  sub_100005A50(v1);
  v3 = *(v2 + 80);
  v4 = sub_100013FD4();

  return a1(v4);
}

uint64_t sub_100013E80(uint64_t a1)
{

  return sub_100004544(v1 + v2, 1, 1, a1);
}

uint64_t sub_100013EB8()
{

  return sub_10004AF3C();
}

uint64_t sub_100013EE0()
{

  return swift_beginAccess();
}

uint64_t sub_100013F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100004544(a1, 1, 1, a4);
}

uint64_t sub_100013F40()
{

  return swift_beginAccess();
}

uint64_t sub_100013F58()
{
}

void sub_100013F70()
{
  v1 = *(v0 - 256);
  v2 = *(v0 - 264);
  v3 = *(v0 - 272);
}

uint64_t sub_100013FA0()
{

  return swift_slowAlloc();
}

uint64_t sub_100014030()
{

  return swift_slowAlloc();
}

BOOL sub_100014048(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_100014060()
{
  sub_100014000();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v4 = sub_100049FCC();
  v5 = sub_1000059BC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100005A34();
  v12 = (v10 - v11);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer] = 0;
  v16 = type metadata accessor for PosterData(0);
  sub_100013E80(v16);
  v17 = type metadata accessor for PosterAnimationViewModel();
  sub_100013E80(v17);
  *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unlockState] = xmmword_10004CF90;
  *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_wakeState] = xmmword_10004CF90;
  v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_lastWakeTransitionDirection] = 3;
  v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_isRenderRequiredOnUpdate] = 0;
  if (qword_100063498 != -1)
  {
    sub_100019F98();
  }

  v18 = sub_100008F90(v4, qword_100068378);
  v39 = v7;
  v19 = *(v7 + 16);
  v19(v15, v18, v4);
  v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_deviceSupportsVFX] = v3 & 1;
  v19(v12, v15, v4);
  if (v3)
  {
    v20 = type metadata accessor for VFXAnimation();
    sub_10001A0AC(v20);
    v21 = sub_10001A0C4();
    v22 = sub_10000AFA4(v21);
    v23 = &off_10005E690;
  }

  else
  {
    v24 = type metadata accessor for MicaAnimation();
    sub_10001A0AC(v24);
    v25 = sub_10001A0C4();
    v22 = sub_10003D3EC(v25);
    v23 = &off_10005F490;
  }

  v26 = &v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation];
  *v26 = v22;
  v26[1] = v23;
  v27 = objc_allocWithZone(type metadata accessor for PosterDataManager());
  *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_dataManager] = sub_100042BFC(0);
  v28 = type metadata accessor for RenderingSessionManager();
  sub_10001A0AC(v28);
  v29 = sub_100031754();
  v30 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderingSessionManager;
  *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderingSessionManager] = v29;
  if (v3)
  {
    v31 = [objc_opt_self() currentDevice];
    v32 = [v31 userInterfaceIdiom];

    v33 = v32 != 1;
    v34 = *&v1[v30];
  }

  else
  {
    v34 = v29;
    v33 = 0;
  }

  type metadata accessor for AnimationUnloadManager();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unloadManager] = sub_100034FB4(v33, v34);
  v19(v12, v15, v4);
  v35 = type metadata accessor for PosterLabelManager();
  sub_10001A0AC(v35);
  v36 = sub_10001A0C4();
  *&v1[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_labelManager] = sub_1000393F8(v36);
  v37 = type metadata accessor for DynamicRotationManager();
  sub_10001A0AC(v37);

  v38 = sub_10002F6A0();
  (*(v39 + 8))(v15, v4);
  *&v1[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_rotationManager] = v38;
  v41.receiver = v1;
  v41.super_class = ObjectType;
  objc_msgSendSuper2(&v41, "init");
  sub_100014018();
}

void sub_1000143C4()
{
  sub_100014000();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_100049E9C();
  v7 = sub_1000059BC(v6);
  v92 = v8;
  v93 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_1000059D0();
  v91 = v12 - v11;
  v13 = sub_100002D54(&qword_100063DC0, &qword_10004E5C0);
  sub_100005A50(v13);
  v15 = *(v14 + 64);
  sub_100013ED4();
  __chkstk_darwin(v16);
  v18 = &v88 - v17;
  v19 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  sub_100005A50(v19);
  v21 = *(v20 + 64);
  sub_100013ED4();
  __chkstk_darwin(v22);
  v96 = &v88 - v23;
  v95 = type metadata accessor for PosterData(0);
  v24 = sub_100005A24(v95);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_100005A34();
  v29 = v27 - v28;
  v31 = __chkstk_darwin(v30);
  sub_10001A030(v31, v32, v33, v34, v35, v36, v37, v38, v88);
  __chkstk_darwin(v39);
  v41 = &v88 - v40;
  if (qword_100063498 != -1)
  {
    sub_100019F98();
  }

  v42 = sub_100049FCC();
  sub_10001A018(v42, qword_100068378);
  swift_unknownObjectRetain();
  v94 = v0;
  v43 = sub_100049FAC();
  v44 = sub_10004AB9C();
  v45 = &selRef_topAnchor;
  if (sub_10001A094(v44))
  {
    v46 = swift_slowAlloc();
    v89 = v5;
    v47 = v46;
    v48 = sub_10001A07C();
    v90 = v18;
    v49 = v48;
    v98[0] = v48;
    *v47 = 67240706;
    *(v47 + 4) = [v3 isPreview];
    *(v47 + 8) = 1026;
    *(v47 + 10) = [v3 isSnapshot];
    swift_unknownObjectRelease();
    *(v47 + 14) = 2082;
    [v3 deviceOrientation];
    v50 = sub_10001A1C4();
    v52 = sub_1000230EC(v50, v51, v98);
    v45 = &selRef_topAnchor;

    *(v47 + 16) = v52;
    _os_log_impl(&_mh_execute_header, v43, v44, "Did initialize; isPreview=%{BOOL,public}d, isSnapshot=%{BOOL,public}d, orientation=%{public}s", v47, 0x18u);
    sub_100008FC8(v49);
    v18 = v90;
    sub_100013F58();
    v5 = v89;
    sub_100013F58();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v53 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer);
  *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer) = v5;

  v54 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderingSessionManager);
  v55 = v5;
  sub_10002FD90();
  *(*(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_rotationManager) + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_delegate + 8) = &off_10005E940;
  swift_unknownObjectWeakAssign();
  sub_100002D54(&unk_100063E10, &qword_10004D0C0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_10004CFA0;
  v57 = *(*(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8) + 8);
  *(v56 + 32) = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation);
  *(v56 + 40) = v57;
  *(v56 + 48) = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_labelManager);
  *(v56 + 56) = &off_10005F460;
  swift_unknownObjectRetain();

  sub_10002D7A8(v56);

  sub_10002D844([v3 v45[47]]);
  v98[4] = sub_100014C20;
  v98[5] = 0;
  v98[0] = _NSConcreteStackBlock;
  v98[1] = 1107296256;
  v98[2] = sub_100014C24;
  v98[3] = &unk_10005E9C0;
  v58 = _Block_copy(v98);

  [v55 updatePreferences:v58];
  _Block_release(v58);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    if (([v3 isPreview] & 1) == 0)
    {
      v59 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_dataManager);
      sub_1000425C8(v41);
      v60 = v96;
      sub_100019D10(v41, v96, type metadata accessor for PosterData);
      sub_100004544(v60, 0, 1, v95);
      v61 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_posterData;
      sub_10001A060();
      sub_100019C48(v60, v1 + v61);
      swift_endAccess();
      v62 = v97;
      sub_100019D10(v41, v97, type metadata accessor for PosterData);
      sub_100019D10(v41, v29, type metadata accessor for PosterData);
      v63 = sub_100049FAC();
      v64 = sub_10004AB9C();
      if (sub_10001A094(v64))
      {
        LODWORD(v94) = v64;
        v95 = v63;
        v96 = v41;
        v65 = sub_10001A07C();
        v90 = swift_slowAlloc();
        v98[0] = v90;
        *v65 = 136446723;
        v66 = sub_100026D60();
        v68 = v67;
        sub_100019F80();
        sub_100019CB8(v69, v70);
        v71 = sub_1000230EC(v66, v68, v98);

        *(v65 + 4) = v71;
        sub_100019FE8();
        sub_100026C88(v18);
        v72 = type metadata accessor for PosterDataModel(0);
        if (sub_100004288(v18, 1, v72) == 1)
        {
          sub_10000591C(v18, &qword_100063DC0, &qword_10004E5C0);
          v73 = 0xE300000000000000;
          v74 = 7104878;
        }

        else
        {
          v75 = *(v72 + 20);
          v76 = v18;
          v78 = v92;
          v77 = v93;
          v79 = *(v92 + 16);
          v97 = v29;
          v80 = v91;
          v79(v91, v76 + v75, v93);
          sub_100019FD0();
          sub_100019CB8(v76, v81);
          v74 = sub_100049E4C();
          v73 = v82;
          v83 = v80;
          v29 = v97;
          (*(v78 + 8))(v83, v77);
        }

        sub_100019F80();
        sub_100019CB8(v29, v84);
        v85 = sub_1000230EC(v74, v73, v98);

        *(v65 + 24) = v85;
        v86 = v95;
        _os_log_impl(&_mh_execute_header, v95, v94, "Initializing with data=%{public}s, location=%{private,mask.hash}s", v65, 0x20u);
        swift_arrayDestroy();
        sub_100013F58();
        sub_100013F58();

        v41 = v96;
      }

      else
      {

        sub_100019CB8(v29, type metadata accessor for PosterData);
        sub_100019CB8(v62, type metadata accessor for PosterData);
      }

      *(v59 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_posterDataDelegate + 8) = &off_10005E988;
      swift_unknownObjectWeakAssign();
      *(v59 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate + 8) = &off_10005E970;
      swift_unknownObjectWeakAssign();
      sub_100042830();
      sub_100019F80();
      sub_100019CB8(v41, v87);
    }

    sub_100014C8C(v55, [v3 isPreview]);
    sub_1000162B4(v3, v55, 0);
    sub_100014018();
  }
}

void sub_100014BAC(void *a1)
{
  v2 = [objc_opt_self() whiteColor];
  [a1 setPreferredProminentColor:v2];
}

uint64_t sub_100014C24(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, v7);

  return swift_unknownObjectRelease();
}

uint64_t sub_100014C8C(void *a1, int a2)
{
  v175 = a2;
  v179 = a1;
  v3 = sub_100002D54(&qword_1000637A8, "4E");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v154 = &v143 - v5;
  v162 = sub_10004A8AC();
  v161 = *(v162 - 8);
  v6 = *(v161 + 64);
  __chkstk_darwin(v162);
  v151 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_10004A69C();
  v160 = *(v169 - 8);
  v8 = *(v160 + 64);
  __chkstk_darwin(v169);
  v167 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_100049D9C();
  v159 = *(v168 - 8);
  v10 = *(v159 + 64);
  __chkstk_darwin(v168);
  v166 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_100049B7C();
  v158 = *(v174 - 8);
  v12 = *(v158 + 64);
  __chkstk_darwin(v174);
  v165 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002D54(&unk_100063DE0, "4E");
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v157 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v164 = &v143 - v18;
  v149 = sub_100049E9C();
  v148 = *(v149 - 1);
  v19 = *(v148 + 64);
  __chkstk_darwin(v149);
  v147 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_100049C2C();
  v144 = *(v145 - 8);
  v21 = *(v144 + 64);
  __chkstk_darwin(v145);
  v146 = (&v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v156 = sub_100049F2C();
  v155 = *(v156 - 8);
  v23 = *(v155 + 64);
  __chkstk_darwin(v156);
  v163 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for PosterDataModel.DataPoint(0);
  v25 = *(v150 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v150);
  v153 = &v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PosterDataModel(0);
  v29 = *(*(v28 - 1) + 64);
  v30 = __chkstk_darwin(v28);
  v143 = &v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v170 = &v143 - v32;
  v152 = type metadata accessor for PosterAnimationViewModel();
  v33 = *(*(v152 - 8) + 64);
  v34 = __chkstk_darwin(v152);
  v171 = &v143 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v173 = &v143 - v36;
  v37 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v40 = &v143 - v39;
  v41 = type metadata accessor for PosterData(0);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41);
  v45 = &v143 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v47 = &v143 - v46;
  v48 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_posterData;
  swift_beginAccess();
  v178 = v2;
  sub_100019DB0(v2 + v48, v40, &unk_100063DD0, &unk_10004D100);
  if (sub_100004288(v40, 1, v41) == 1)
  {
    *v47 = 2;
    swift_storeEnumTagMultiPayload();
    v49 = v47;
    if (sub_100004288(v40, 1, v41) != 1)
    {
      sub_10000591C(v40, &unk_100063DD0, &unk_10004D100);
    }
  }

  else
  {
    sub_100019E7C(v40, v47, type metadata accessor for PosterData);
    v49 = v47;
  }

  v50 = v179;
  v177 = [v179 backgroundView];
  v176 = [v50 foregroundView];
  sub_100019D10(v49, v45, type metadata accessor for PosterData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v172 = v49;
  if (EnumCaseMultiPayload != 1)
  {
    v80 = v178;
    v81 = *v45;
    LODWORD(v170) = *v45;
    v82 = v177;
    if (v175)
    {
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
    }

    else
    {
      sub_10002CF38(v81, 0, v183);
      v83 = v183[0];
      v84 = v183[1];
      v85 = v183[2];
      v86 = v183[3];
      v87 = v184;
    }

    v169 = v83;
    v185[0] = v83;
    v185[1] = v84;
    v185[2] = v85;
    v185[3] = v86;
    v186 = v87;
    v88 = v80;
    v89 = *(v80 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_labelManager);
    v90 = v82;
    v91 = [v179 environment];
    swift_getObjectType();
    *&v92 = sub_100035304();
    v94 = v93;
    v95 = v92;
    swift_unknownObjectRelease();
    sub_1000392BC(v185, v82, v94, v95);
    sub_100019D6C(v169, v84);

    v96 = *(v88 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unloadManager);
    v97 = v170;
    if (v170 == 2)
    {
      *(v96 + 32) = 0;
    }

    else
    {
      *(v96 + 32) = 1;
      sub_100034928();
    }

    v67 = v173;
    p_weak_ivar_lyt = &MicaAnimation.weak_ivar_lyt;
    sub_1000050D8(v90, v176, v97 == 2, v173);
    v50 = v179;
    goto LABEL_15;
  }

  v52 = v170;
  sub_100019E7C(v45, v170, type metadata accessor for PosterDataModel);
  v53 = v178;
  v54 = *(v178 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_labelManager);
  sub_100039370();
  *(*(v53 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unloadManager) + 32) = 0;
  v55 = *(v52 + v28[10]);
  v56 = *(v55 + 16);
  if (v56)
  {
    v57 = v153;
    sub_100019D10(v55 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * (v56 - 1), v153, type metadata accessor for PosterDataModel.DataPoint);
    (*(v144 + 16))(v146, v52 + v28[6], v145);
    (*(v148 + 16))(v147, v52 + v28[5], v149);
    sub_10004AC9C();
    v58 = v164;
    v59 = v174;
    sub_100004544(v164, 1, 1, v174);
    sub_100049EFC();
    v149 = *(v158 + 16);
    v149(v165, v57, v59);
    v60 = v150;
    v61 = *(v150 + 20);
    v148 = *(v159 + 16);
    (v148)(v166, v57 + v61, v168);
    v62 = *(v57 + v60[6]);
    v63 = *(v57 + v60[7]);
    v64 = v60[8];
    v147 = *(v160 + 16);
    (v147)(v167, v57 + v64, v169);
    sub_100019DB0(v52 + v28[7], v58, &unk_100063DE0, "4E");
    sub_100019DB0(v52 + v28[8], v157, &unk_100063DE0, "4E");
    v65 = v60[9];
    v146 = *(v161 + 16);
    v66 = v151;
    v146();
    LODWORD(v150) = *(v57 + v60[10]);
    sub_100019DB0(v52 + v28[9], v154, &qword_1000637A8, "4E");
    v67 = v173;
    (*(v155 + 16))(v173, v163, v156);
    v68 = v152;
    v149((v67 + *(v152 + 20)), v165, v174);
    (v148)(v67 + v68[6], v166, v168);
    v69 = v177;
    *(v67 + v68[7]) = v62;
    *(v67 + v68[8]) = v63;
    (v147)(v67 + v68[9], v167, v169);
    sub_100019DB0(v164, v67 + v68[10], &unk_100063DE0, "4E");
    v70 = v157;
    sub_100019DB0(v157, v67 + v68[11], &unk_100063DE0, "4E");
    v71 = v66;
    v72 = v66;
    v73 = v162;
    (v146)(v67 + v68[12], v72, v162);
    *(v67 + v68[13]) = v150;
    v74 = v154;
    sub_100019DB0(v154, v67 + v68[14], &qword_1000637A8, "4E");
    *(v67 + v68[15]) = 1;
    *(v67 + v68[17]) = v69;
    v75 = v176;
    *(v67 + v68[18]) = v176;
    v76 = v68[16];
    v77 = v69;
    v50 = v179;
    v78 = v75;
    sub_100035598(v67 + v76);
    sub_10000591C(v74, &qword_1000637A8, "4E");
    (*(v161 + 8))(v71, v73);
    p_weak_ivar_lyt = (&MicaAnimation + 56);
    sub_10000591C(v70, &unk_100063DE0, "4E");
    sub_10000591C(v164, &unk_100063DE0, "4E");
    (*(v160 + 8))(v167, v169);
    (*(v159 + 8))(v166, v168);
    (*(v158 + 8))(v165, v174);
    (*(v155 + 8))(v163, v156);
    sub_100019CB8(v153, type metadata accessor for PosterDataModel.DataPoint);
    sub_100019CB8(v170, type metadata accessor for PosterDataModel);
LABEL_15:
    v98 = v171;
    goto LABEL_16;
  }

  if (qword_100063498 != -1)
  {
    swift_once();
  }

  v125 = sub_100049FCC();
  sub_100008F90(v125, qword_100068378);
  v126 = v143;
  sub_100019D10(v52, v143, type metadata accessor for PosterDataModel);
  v127 = sub_100049FAC();
  v128 = sub_10004AB7C();
  v129 = os_log_type_enabled(v127, v128);
  v67 = v173;
  if (v129)
  {
    v130 = v126;
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v185[0] = v132;
    *v131 = 136446210;
    v133 = sub_10002A190();
    v135 = v134;
    sub_100019CB8(v130, type metadata accessor for PosterDataModel);
    v136 = sub_1000230EC(v133, v135, v185);

    *(v131 + 4) = v136;
    _os_log_impl(&_mh_execute_header, v127, v128, "Poster has data but no recent weather; model=%{public}s", v131, 0xCu);
    sub_100008FC8(v132);
  }

  else
  {

    sub_100019CB8(v126, type metadata accessor for PosterDataModel);
  }

  v98 = v171;
  sub_1000050D8(v177, v176, 1, v67);
  sub_100019CB8(v170, type metadata accessor for PosterDataModel);
  p_weak_ivar_lyt = (&MicaAnimation + 56);
LABEL_16:
  if (v175)
  {
    v99 = [objc_msgSend(v50 "environment")];
    swift_unknownObjectRelease();
    if (p_weak_ivar_lyt[147] != -1)
    {
      swift_once();
    }

    v100 = sub_100049FCC();
    sub_100008F90(v100, qword_100068378);
    v101 = sub_100049FAC();
    v102 = sub_10004AB9C();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v103 = 136446210;
      v180 = 0x2D7972656C6C6167;
      v181 = 0xE800000000000000;
      v182 = v104;
      v187._countAndFlagsBits = sub_10001A1C4();
      sub_10004A9DC(v187);

      v105 = sub_1000230EC(v180, v181, &v182);

      *(v103 + 4) = v105;
      _os_log_impl(&_mh_execute_header, v101, v102, "Rendering poster snapshot for kind=%{public}s", v103, 0xCu);
      sub_100008FC8(v104);
    }

    v106 = v172;
    v107 = *(v178 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation);
    v108 = *(v178 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8);
    ObjectType = swift_getObjectType();
    (*(v108 + 48))(v67, v99, ObjectType, v108);
  }

  else
  {
    if (p_weak_ivar_lyt[147] != -1)
    {
      swift_once();
    }

    v110 = sub_100049FCC();
    sub_100008F90(v110, qword_100068378);
    sub_100019D10(v67, v98, type metadata accessor for PosterAnimationViewModel);
    v111 = sub_100049FAC();
    v112 = sub_10004AB9C();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v180 = v114;
      *v113 = 136446210;
      v115 = *(v152 + 20);
      sub_100019ED8(&qword_100063C88, &type metadata accessor for Date);
      v116 = sub_10004AF1C();
      v117 = v98;
      v119 = v118;
      sub_100019CB8(v117, type metadata accessor for PosterAnimationViewModel);
      v120 = sub_1000230EC(v116, v119, &v180);

      *(v113 + 4) = v120;
      _os_log_impl(&_mh_execute_header, v111, v112, "Rendering poster with live animation of weather data at date=%{public}s", v113, 0xCu);
      sub_100008FC8(v114);
    }

    else
    {

      sub_100019CB8(v98, type metadata accessor for PosterAnimationViewModel);
    }

    v121 = [v50 environment];
    swift_getObjectType();
    sub_100035304();
    v123 = v122;
    swift_unknownObjectRelease();
    if (v123)
    {
      v124 = 1;
    }

    else
    {
      v124 = [objc_msgSend(v50 "environment")];
      swift_unknownObjectRelease();
    }

    v137 = *(v178 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation);
    v138 = *(v178 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8);
    v139 = swift_getObjectType();
    v140 = *(v138 + 24);
    v141 = swift_unknownObjectRetain();
    v140(v141, &off_10005E958, v139, v138);
    (*(v138 + 40))(v67, v124, v139, v138);
    v106 = v172;
  }

  sub_100019CB8(v67, type metadata accessor for PosterAnimationViewModel);
  return sub_100019CB8(v106, type metadata accessor for PosterData);
}

void sub_1000162B4(void *a1, char *a2, void *a3)
{
  swift_getObjectType();
  if (([a1 isPreview] & 1) == 0 && (objc_msgSend(a1, "isSnapshot") & 1) == 0)
  {
    v7 = *(v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_rotationManager);
    sub_10002DD38([a1 deviceOrientation], a3);
    v8 = sub_100035390();
    sub_100018224(v9, a2, v8);
    v11 = sub_100035304();

    sub_100018670(v10, a2, v11);
  }
}

void sub_100016410(void *a1, void *a2, void *a3)
{
  v4 = v3;
  if (qword_100063498 != -1)
  {
    sub_100019F98();
  }

  v8 = sub_100049FCC();
  sub_100008F90(v8, qword_100068378);
  swift_unknownObjectRetain();
  v9 = sub_100049FAC();
  v10 = sub_10004AB9C();
  if (sub_10001A094(v10))
  {
    v21 = a3;
    v11 = swift_slowAlloc();
    v12 = sub_10001A07C();
    v23 = v12;
    *v11 = 67240706;
    *(v11 + 4) = [a2 isPreview];
    *(v11 + 8) = 1026;
    *(v11 + 10) = [a2 isSnapshot];
    swift_unknownObjectRelease();
    *(v11 + 14) = 2082;
    [a2 deviceOrientation];
    v13 = sub_10001A1C4();
    v15 = sub_1000230EC(v13, v14, &v23);

    *(v11 + 16) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Did update; isPreview=%{BOOL,public}d, isSnapshot=%{BOOL,public}d, orientation=%{public}s", v11, 0x18u);
    sub_100008FC8(v12);
    sub_100013F58();
    a3 = v21;
    sub_100013F58();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v16 = *(v4 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderingSessionManager);
  sub_10002FD90();
  v17 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_isRenderRequiredOnUpdate;
  if (*(v4 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_isRenderRequiredOnUpdate) == 1)
  {
    v18 = sub_100049FAC();
    v19 = sub_10004AB9C();
    if (sub_10001A094(v19))
    {
      v20 = sub_10001A048();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Rendering poster data update that was postponed", v20, 2u);
      sub_100013F58();
    }

    *(v4 + v17) = 0;
    sub_100014C8C(a1, [a2 isPreview]);
  }

  v22 = [a3 animationSettings];
  sub_1000162B4(a2, a1, v22);
}

double sub_100016734()
{
  v1 = v0;
  v2 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  sub_100005A50(v2);
  v4 = *(v3 + 64);
  sub_100013ED4();
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  if (qword_100063498 != -1)
  {
    sub_100019F98();
  }

  v8 = sub_100049FCC();
  sub_10001A018(v8, qword_100068378);
  v9 = sub_100049FAC();
  v10 = sub_10004AB9C();
  if (sub_10001A094(v10))
  {
    v11 = sub_10001A048();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Invalidated", v11, 2u);
    sub_100013F58();
  }

  v12 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_dataManager);
  sub_10004287C();
  v13 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_rotationManager);
  sub_10002DBA0();
  v14 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation);
  v15 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8);
  ObjectType = swift_getObjectType();
  (*(v15 + 80))(0, ObjectType, v15);
  v17 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unloadManager);
  sub_100034928();
  v18 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderingSessionManager);
  sub_10002FE54();
  v19 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_labelManager);
  sub_1000391F0();
  v20 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer);
  *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer) = 0;

  v21 = type metadata accessor for PosterData(0);
  sub_100004544(v7, 1, 1, v21);
  v22 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_posterData;
  swift_beginAccess();
  sub_100019C48(v7, v1 + v22);
  swift_endAccess();
  *&result = 3;
  *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unlockState) = xmmword_10004CF90;
  *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_wakeState) = xmmword_10004CF90;
  *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_isRenderRequiredOnUpdate) = 0;
  return result;
}

id sub_1000169EC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PosterRenderer()
{
  result = qword_100063DA0;
  if (!qword_100063DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016B54()
{
  sub_100016CAC(319, &qword_100063DB0, type metadata accessor for PosterData);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100016CAC(319, &qword_100063AD8, type metadata accessor for PosterAnimationViewModel);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100016CAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10004ACDC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100016D04()
{
  sub_100014000();
  v2 = v0;
  v4 = v3;
  v5 = sub_100049E9C();
  v6 = sub_1000059BC(v5);
  v105 = v7;
  v106 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_1000059D0();
  v104 = v11 - v10;
  v12 = sub_100002D54(&qword_100063DC0, &qword_10004E5C0);
  sub_100005A50(v12);
  v14 = *(v13 + 64);
  sub_100013ED4();
  __chkstk_darwin(v15);
  v107 = &v103 - v16;
  v17 = type metadata accessor for PosterData(0);
  v18 = sub_100005A24(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_100005A34();
  v109 = v21 - v22;
  v24 = __chkstk_darwin(v23);
  sub_10001A030(v24, v25, v26, v27, v28, v29, v30, v31, v103);
  __chkstk_darwin(v32);
  v108 = (&v103 - v33);
  v34 = (sub_100002D54(&qword_100063DC8, &qword_10004D0B0) - 8);
  v35 = *(*v34 + 64);
  sub_100013ED4();
  __chkstk_darwin(v36);
  v38 = &v103 - v37;
  v39 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  v40 = sub_100005A50(v39);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  sub_100005A34();
  v45 = v43 - v44;
  v47 = __chkstk_darwin(v46);
  v49 = &v103 - v48;
  __chkstk_darwin(v47);
  sub_10001A008();
  sub_100019FB8();
  v110 = v4;
  sub_100019D10(v4, v1, v50);
  sub_100004544(v1, 0, 1, v17);
  v51 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_posterData;
  swift_beginAccess();
  v52 = v34[14];
  sub_100019DB0(v1, v38, &unk_100063DD0, &unk_10004D100);
  v111 = v2;
  sub_100019DB0(v2 + v51, &v38[v52], &unk_100063DD0, &unk_10004D100);
  sub_10001A0F0(v38);
  if (v53)
  {
    sub_10000591C(v1, &unk_100063DD0, &unk_10004D100);
    sub_10001A0F0(&v38[v52]);
    if (v53)
    {
      sub_10000591C(v38, &unk_100063DD0, &unk_10004D100);
      goto LABEL_27;
    }

    goto LABEL_9;
  }

  sub_100019DB0(v38, v49, &unk_100063DD0, &unk_10004D100);
  sub_10001A0F0(&v38[v52]);
  if (v53)
  {
    sub_10000591C(v1, &unk_100063DD0, &unk_10004D100);
    sub_100019F80();
    sub_100019CB8(v49, v54);
LABEL_9:
    sub_10000591C(v38, &qword_100063DC8, &qword_10004D0B0);
    v55 = v112;
    goto LABEL_10;
  }

  v84 = v108;
  sub_100019E7C(&v38[v52], v108, type metadata accessor for PosterData);
  v85 = sub_10002A500(v49, v84);
  sub_100019CB8(v84, type metadata accessor for PosterData);
  sub_10000591C(v1, &unk_100063DD0, &unk_10004D100);
  sub_100019CB8(v49, type metadata accessor for PosterData);
  sub_10000591C(v38, &unk_100063DD0, &unk_10004D100);
  v55 = v112;
  if (v85)
  {
LABEL_27:
    if (qword_100063498 != -1)
    {
      sub_100019F98();
    }

    v86 = sub_100049FCC();
    sub_10001A018(v86, qword_100068378);
    v69 = sub_100049FAC();
    v87 = sub_10004AB9C();
    if (os_log_type_enabled(v69, v87))
    {
      v88 = sub_10001A048();
      *v88 = 0;
      v89 = "Poster data updated, but did not change";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v69, v87, v89, v88, 2u);
      sub_100013F58();
      goto LABEL_40;
    }

    goto LABEL_40;
  }

LABEL_10:
  sub_100019FB8();
  v56 = v110;
  sub_100019D10(v110, v45, v57);
  sub_100004544(v45, 0, 1, v17);
  v58 = v111;
  sub_10001A060();
  sub_100019C48(v45, v58 + v51);
  swift_endAccess();
  v59 = *(v58 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer);
  if (v59)
  {
    v60 = *(v58 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_wakeState);
    v61 = 0xE200000000000000;
    v62 = 28271;
    v63 = 0xE300000000000000;
    v64 = 6710895;
    if (v60 != 1)
    {
      v64 = 0x697469736E617274;
      v63 = 0xED0000676E696E6FLL;
    }

    if (*(v58 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_wakeState))
    {
      v62 = v64;
      v61 = v63;
    }

    v65 = v60 == 3;
    if (v60 == 3)
    {
      v66 = 0x6E776F6E6B6E75;
    }

    else
    {
      v66 = v62;
    }

    v112 = v66;
    if (v65)
    {
      v67 = 0xE700000000000000;
    }

    else
    {
      v67 = v61;
    }

    v68 = qword_100063498;
    v69 = v59;
    v70 = v109;
    if (v68 != -1)
    {
      sub_100019F98();
    }

    v71 = sub_100049FCC();
    sub_100008F90(v71, qword_100068378);
    sub_100019D10(v56, v55, type metadata accessor for PosterData);
    sub_100019D10(v56, v70, type metadata accessor for PosterData);

    v72 = sub_100049FAC();
    LODWORD(v56) = sub_10004AB9C();

    if (os_log_type_enabled(v72, v56))
    {
      v73 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v113[0] = v110;
      *v73 = 136446979;
      sub_100026D60();
      sub_100019F80();
      sub_100019CB8(v55, v74);
      v75 = sub_100013F94();
      v78 = sub_1000230EC(v75, v76, v77);

      *(v73 + 4) = v78;
      *(v73 + 12) = 2160;
      *(v73 + 14) = 1752392040;
      *(v73 + 22) = 2081;
      v79 = v107;
      sub_100026C88(v107);
      v80 = v79;
      v81 = type metadata accessor for PosterDataModel(0);
      if (sub_100004288(v80, 1, v81) == 1)
      {
        sub_10000591C(v80, &qword_100063DC0, &qword_10004E5C0);
        v82 = 0xE300000000000000;
        v83 = 7104878;
      }

      else
      {
        v91 = *(v81 + 20);
        LODWORD(v108) = v56;
        v56 = v105;
        v92 = v106;
        v93 = v80 + v91;
        v94 = v80;
        v95 = v104;
        (*(v105 + 16))(v104, v93, v106);
        sub_100019FD0();
        sub_100019CB8(v94, v96);
        v83 = sub_100049E4C();
        v82 = v97;
        v98 = v92;
        v70 = v109;
        (*(v56 + 8))(v95, v98);
        LOBYTE(v56) = v108;
      }

      sub_100019F80();
      sub_100019CB8(v70, v99);
      v100 = sub_1000230EC(v83, v82, v113);

      *(v73 + 24) = v100;
      *(v73 + 32) = 2082;
      v101 = sub_1000230EC(v112, v67, v113);

      *(v73 + 34) = v101;
      _os_log_impl(&_mh_execute_header, v72, v56, "Updating to reflect the latest data; data=%{public}s, location=%{private,mask.hash}s, screen=%{public}s", v73, 0x2Au);
      swift_arrayDestroy();
      sub_100013F58();
      sub_100013F58();
    }

    else
    {

      sub_100019CB8(v70, type metadata accessor for PosterData);
      sub_100019CB8(v55, type metadata accessor for PosterData);
    }

    v102 = [-[NSObject environment](v69 "environment")];
    swift_unknownObjectRelease();
    sub_100014C8C(v69, v102);
  }

  else
  {
    if (qword_100063498 != -1)
    {
      sub_100019F98();
    }

    v90 = sub_100049FCC();
    sub_10001A018(v90, qword_100068378);
    v69 = sub_100049FAC();
    v87 = sub_10004AB7C();
    if (os_log_type_enabled(v69, v87))
    {
      v88 = sub_10001A048();
      *v88 = 0;
      v89 = "Poster data updated, but unable to render new data because renderer does not exist.";
      goto LABEL_35;
    }
  }

LABEL_40:

  sub_100014018();
}

uint64_t sub_1000175F8(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderingSessionManager);
    v5 = v3;
    LOBYTE(v4) = sub_10003026C(a1, v5);

    return v4 & 1;
  }

  else
  {
    if (qword_100063498 != -1)
    {
      sub_100019F98();
    }

    v7 = sub_100049FCC();
    sub_10001A018(v7, qword_100068378);
    v8 = sub_100049FAC();
    v9 = sub_10004AB7C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = sub_10001A07C();
      v15 = v11;
      *v10 = 136446210;
      v12 = sub_100030C88(a1);
      v14 = sub_1000230EC(v12, v13, &v15);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to extend session for %{public}s because renderer does not exist", v10, 0xCu);
      sub_100008FC8(v11);
      sub_100013F58();
      sub_100013F58();
    }

    return 0;
  }
}

void sub_100017788()
{
  sub_100014000();
  v2 = v0;
  v3 = sub_100049E9C();
  v4 = sub_1000059BC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_1000059D0();
  v11 = v10 - v9;
  v12 = sub_100002D54(&qword_100063DC0, &qword_10004E5C0);
  sub_100005A50(v12);
  v14 = *(v13 + 64);
  sub_100013ED4();
  __chkstk_darwin(v15);
  v17 = &v57 - v16;
  v18 = type metadata accessor for PosterData(0);
  v19 = sub_100005A24(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_100005A34();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  sub_10001A008();
  v26 = *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer];
  if (!v26)
  {
    if (qword_100063498 != -1)
    {
      sub_100019F98();
    }

    v29 = sub_100049FCC();
    sub_10001A018(v29, qword_100068378);
    v28 = sub_100049FAC();
    v30 = sub_10004AB7C();
    if (os_log_type_enabled(v28, v30))
    {
      *sub_10001A048() = 0;
      sub_10001A0D0(&_mh_execute_header, v31, v32, "Unable to extend session for 'weatherRendering' because renderer does not exist");
      sub_100013F58();
    }

    goto LABEL_3;
  }

  v27 = *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderingSessionManager];
  v28 = v26;
  if ((sub_10003026C(1u, v28) & 1) == 0)
  {
    v63 = v3;
    if (qword_100063498 != -1)
    {
      sub_100019F98();
    }

    v33 = sub_100049FCC();
    sub_10001A018(v33, qword_100068378);
    v34 = v2;
    v35 = sub_100049FAC();
    v36 = sub_10004AB9C();

    v64 = v36;
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_20;
    }

    v61 = v35;
    v62 = v28;
    v58 = v6;
    v37 = sub_10001A07C();
    v59 = swift_slowAlloc();
    v65 = v59;
    v60 = v37;
    *v37 = 136446723;
    v38 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_posterData;
    swift_beginAccess();
    if (sub_100004288(v34 + v38, 1, v18))
    {
      v39 = 0xE300000000000000;
      v40 = v34;
      v41 = 7104878;
    }

    else
    {
      sub_100019FB8();
      sub_100019D10(v34 + v38, v1, v42);
      v40 = v34;
      v41 = sub_100026D60();
      v39 = v43;
      sub_100019F80();
      sub_100019CB8(v1, v44);
    }

    v45 = v63;
    v46 = sub_1000230EC(v41, v39, &v65);

    v47 = v60;
    *(v60 + 1) = v46;
    sub_100019FE8();
    v34 = v40;
    if (!sub_100004288(v40 + v38, 1, v18))
    {
      sub_100019FB8();
      sub_100019D10(v40 + v38, v24, v48);
      sub_100026C88(v17);
      sub_100019F80();
      sub_100019CB8(v24, v49);
      v50 = type metadata accessor for PosterDataModel(0);
      if (sub_100004288(v17, 1, v50) != 1)
      {
        v54 = v58;
        (*(v58 + 16))(v11, &v17[*(v50 + 20)], v45);
        sub_100019FD0();
        sub_100019CB8(v17, v55);
        v52 = sub_100049E4C();
        v51 = v56;
        (*(v54 + 8))(v11, v45);
        v28 = v62;
        goto LABEL_19;
      }

      sub_10000591C(v17, &qword_100063DC0, &qword_10004E5C0);
    }

    v51 = 0xE300000000000000;
    v28 = v62;
    v52 = 7104878;
LABEL_19:
    v53 = sub_1000230EC(v52, v51, &v65);

    *(v47 + 3) = v53;
    v35 = v61;
    _os_log_impl(&_mh_execute_header, v61, v64, "Render was postponed because extended session was not granted; data=%{public}s, location=%{private,mask.hash}s", v47, 0x20u);
    swift_arrayDestroy();
    sub_100013F58();
    sub_100013F58();
LABEL_20:

    *(v34 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_isRenderRequiredOnUpdate) = 1;
    goto LABEL_21;
  }

LABEL_3:

LABEL_21:
  sub_100014018();
}

void sub_100017C48()
{
  sub_100014000();
  v2 = v0;
  v4 = v3;
  v5 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v6 = sub_100005A50(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100005A34();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  sub_10001A008();
  v13 = *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderingSessionManager];
  sub_100030A2C(1);
  v14 = *&v2[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer];
  if (v14)
  {
    v15 = *&v2[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unloadManager];
    v16 = *&v2[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation];
    v17 = *&v2[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8];
    v18 = v14;
    sub_100034EC0(v18, v16, v17);
    LOBYTE(v16) = [objc_msgSend(v18 "environment")];
    swift_unknownObjectRelease();
    if ((v16 & 1) == 0)
    {
      v19 = [objc_msgSend(v18 "environment")];
      swift_unknownObjectRelease();
      if ((v19 & 1) == 0)
      {
        v20 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_lastRenderedAnimationViewModel;
        swift_beginAccess();
        sub_100019DB0(&v2[v20], v1, &unk_100063DF0, &qword_10004CF28);
        v21 = sub_100019334(v1, v2[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_deviceSupportsVFX]);
        sub_10000591C(v1, &unk_100063DF0, &qword_10004CF28);
        if (v21)
        {
          if (qword_100063498 != -1)
          {
            sub_100019F98();
          }

          v22 = sub_100049FCC();
          sub_10001A018(v22, qword_100068378);
          sub_100019DB0(v4, v11, &unk_100063DF0, &qword_10004CF28);
          v23 = v2;
          v24 = sub_100049FAC();
          v25 = sub_10004AB9C();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v42[0] = swift_slowAlloc();
            *v26 = 136446466;
            sub_100019DB0(&v2[v20], v1, &unk_100063DF0, &qword_10004CF28);
            v40 = v25;
            v27 = sub_100019898();
            v29 = v28;
            sub_10000591C(v1, &unk_100063DF0, &qword_10004CF28);
            v30 = sub_1000230EC(v27, v29, v42);

            *(v26 + 4) = v30;
            *(v26 + 12) = 2082;
            v31 = sub_100019898();
            v33 = v32;
            sub_10000591C(v11, &unk_100063DF0, &qword_10004CF28);
            sub_1000230EC(v31, v33, v42);
            sub_10001A0C4();

            *(v26 + 14) = v31;
            _os_log_impl(&_mh_execute_header, v24, v40, "Render content has significantly changed; from='%{public}s', to='%{public}s'", v26, 0x16u);
            swift_arrayDestroy();
            sub_100013F58();
            sub_100013F58();
          }

          else
          {

            sub_10000591C(v11, &unk_100063DF0, &qword_10004CF28);
          }

          [v18 noteContentSignificantlyChanged];
        }
      }
    }

    v39 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_lastRenderedAnimationViewModel;
    sub_10001A060();
    sub_100019E0C(v4, &v2[v39]);
    swift_endAccess();
    sub_100014018();
  }

  else
  {
    if (qword_100063498 != -1)
    {
      sub_100019F98();
    }

    v34 = sub_100049FCC();
    sub_10001A018(v34, qword_100068378);
    v41 = sub_100049FAC();
    v35 = sub_10004AB7C();
    if (os_log_type_enabled(v41, v35))
    {
      v36 = sub_10001A048();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v41, v35, "Unable to handle render completion because renderer does not exist", v36, 2u);
      sub_100013F58();
    }

    sub_100014018();
  }
}

uint64_t sub_1000180D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderingSessionManager);
    v3 = v1;
    v4 = sub_10003026C(4u, v3);
  }

  else
  {
    if (qword_100063498 != -1)
    {
      sub_100019F98();
    }

    v5 = sub_100049FCC();
    sub_10001A018(v5, qword_100068378);
    v3 = sub_100049FAC();
    v6 = sub_10004AB7C();
    if (os_log_type_enabled(v3, v6))
    {
      *sub_10001A048() = 0;
      sub_10001A0D0(&_mh_execute_header, v7, v8, "Unable to extend session for device rotation because renderer does not exist");
      sub_100013F58();
    }

    v4 = 0;
  }

  return v4 & 1;
}

id sub_1000181BC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderingSessionManager);
  sub_100030A2C(4);
  result = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer);
  if (result)
  {

    return [result noteContentSignificantlyChanged];
  }

  return result;
}

void sub_100018224(unsigned __int8 a1, char *a2, double a3)
{
  v4 = v3;
  v8 = v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_wakeState;
  v9 = *(v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_wakeState);
  v10 = *(v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_wakeState + 8);
  v11 = v9;
  if (v9 == 3 || (v9 == a1 ? (v12 = *&v10 == a3) : (v12 = 0), !v12))
  {
    v13 = sub_100009C98(v9, v10, a3);
    v14 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_lastWakeTransitionDirection;
    v15 = *(v4 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_lastWakeTransitionDirection);
    if (v11 != 1 && a1 == 1)
    {
      if (qword_100063498 != -1)
      {
        swift_once();
      }

      v17 = sub_100049FCC();
      sub_100008F90(v17, qword_100068378);
      v18 = sub_100049FAC();
      v19 = sub_10004AB9C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Screen is off, pausing animation", v20, 2u);
      }

      sub_100018D14(1, a2);
    }

    if (!v13 && v15 && !*(v4 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unlockState))
    {
      if (qword_100063498 != -1)
      {
        swift_once();
      }

      v21 = sub_100049FCC();
      sub_100008F90(v21, qword_100068378);
      v22 = sub_100049FAC();
      v23 = sub_10004AB9C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Screen was turned on and settled on lock screen, starting animation", v24, 2u);
      }

      sub_100018D14(2, a2);
    }

    v25 = a1;
    if (qword_100063498 != -1)
    {
      swift_once();
    }

    v26 = sub_100049FCC();
    sub_100008F90(v26, qword_100068378);
    v27 = sub_100049FAC();
    v28 = sub_10004AB9C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v29 = 136446466;
      v30 = sub_100009D18(a1);
      v32 = sub_1000230EC(v30, v31, &v36);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2082;
      v33 = 0xE300000000000000;
      v34 = 7104878;
      switch(v13)
      {
        case 1:
          v34 = 6710895;
          break;
        case 2:
          v33 = 0xED0000676E696E6FLL;
          v34 = 0x697469736E617274;
          break;
        case 3:
          break;
        default:
          v33 = 0xE200000000000000;
          v34 = 28271;
          break;
      }

      v35 = sub_1000230EC(v34, v33, &v36);

      *(v29 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Setting wake state to %{public}s; transitionDirection=%{public}s", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    *v8 = v25;
    *(v8 + 8) = a3;
    *(v4 + v14) = v13;
  }
}

void sub_100018670(uint64_t a1, void *a2, double a3)
{
  v4 = v3;
  v8 = (v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unlockState);
  v9 = *(v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unlockState);
  if (v9 == 3 || (v9 == a1 ? (v10 = v8[1] == a3) : (v10 = 0), !v10))
  {
    v11 = *(v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderingSessionManager);
    if (sub_100030114(a2))
    {
      v47 = *v8;
      if (v47 != 3)
      {
        if (!*v8 && a1)
        {
          if (qword_100063498 != -1)
          {
            swift_once();
          }

          v12 = sub_100049FCC();
          sub_100008F90(v12, qword_100068378);
          v13 = sub_100049FAC();
          v14 = sub_10004AB9C();
          if (!os_log_type_enabled(v13, v14))
          {
            v16 = 1;
            goto LABEL_29;
          }

          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "Starting to move from lock screen to home screen, pausing animation", v15, 2u);
          v16 = 1;
          goto LABEL_27;
        }

        if (!*v8)
        {
          goto LABEL_30;
        }
      }

      if (a1 || *(v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_wakeState))
      {
LABEL_30:
        if (qword_100063498 != -1)
        {
          swift_once();
        }

        v28 = sub_100049FCC();
        sub_100008F90(v28, qword_100068378);
        v29 = sub_100049FAC();
        v30 = sub_10004AB9C();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v48 = v32;
          *v31 = 136446210;
          v33 = sub_100003C6C(a1);
          v35 = sub_1000230EC(v33, v34, &v48);

          *(v31 + 4) = v35;
          _os_log_impl(&_mh_execute_header, v29, v30, "Setting unlock progress to %{public}s", v31, 0xCu);
          sub_100008FC8(v32);
        }

        *v8 = a1;
        v8[1] = a3;
        v36 = *(v4 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unloadManager);
        if (sub_100034968())
        {
          v37 = [objc_msgSend(a2 "environment")];
          swift_unknownObjectRelease();
          if ((v37 & 1) == 0)
          {
            sub_10003498C();
            if (a1 == 1)
            {
              if (v47 != 1)
              {
                if (sub_10003026C(2u, a2))
                {
                  v39 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v38 = sub_100019F58;
                  goto LABEL_37;
                }

                v44 = sub_100049FAC();
                v45 = sub_10004AB9C();
                if (os_log_type_enabled(v44, v45))
                {
                  v46 = swift_slowAlloc();
                  *v46 = 0;
                  _os_log_impl(&_mh_execute_header, v44, v45, "Skipping unloading because renderer failed to get extended session", v46, 2u);
                }
              }
            }

            else if (v47 == 1 && !UIAccessibilityIsReduceMotionEnabled())
            {
              sub_100014C8C(a2, 0);
            }
          }
        }

        v38 = 0;
        v39 = 0;
LABEL_37:
        v40 = *(v4 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation);
        v41 = *(v4 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8);
        ObjectType = swift_getObjectType();
        (*(v41 + 72))(a1, v38, v39, ObjectType, v41, a3);
        v43 = *(v4 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_labelManager);
        sub_1000393C4(a3);

        sub_100013110(v38);
        return;
      }

      if (qword_100063498 != -1)
      {
        swift_once();
      }

      v25 = sub_100049FCC();
      sub_100008F90(v25, qword_100068378);
      v13 = sub_100049FAC();
      v26 = sub_10004AB9C();
      v16 = 2;
      if (!os_log_type_enabled(v13, v26))
      {
LABEL_29:

        sub_100018D14(v16, a2);
        goto LABEL_30;
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v13, v26, "Settling on lock screen from home screen and screen is on, restarting animation", v27, 2u);
LABEL_27:

      goto LABEL_29;
    }

    if (qword_100063498 != -1)
    {
      swift_once();
    }

    v17 = sub_100049FCC();
    sub_100008F90(v17, qword_100068378);
    v18 = sub_100049FAC();
    v19 = sub_10004AB9C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v48 = v21;
      *v20 = 136446210;
      v22 = sub_100003C6C(a1);
      v24 = sub_1000230EC(v22, v23, &v48);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get extended session for unlock, skipping unlock update; unlockState=%{public}s", v20, 0xCu);
      sub_100008FC8(v21);
    }

    *v8 = a1;
    v8[1] = a3;
  }
}

uint64_t sub_100018D14(char a1, char *a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderingSessionManager);
  if (sub_10003026C(0, a2))
  {
    if (a1 == 2)
    {
      v6 = *(v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation);
      v7 = *(v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 56))(ObjectType, v7);
    }

    v9 = *(v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation);
    v10 = *(v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8);
    v11 = 0.0;
    if (a1 != 1)
    {
      v11 = sub_100038D88();
    }

    v12 = swift_getObjectType();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = *(v10 + 64);

    v14(a1 != 1, sub_100019F60, v13, v12, v10, v11);
  }

  else
  {
    if (qword_100063498 != -1)
    {
      swift_once();
    }

    v16 = sub_100049FCC();
    sub_100008F90(v16, qword_100068378);
    v17 = sub_100049FAC();
    v18 = sub_10004AB9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136446210;
      if (a1)
      {
        if (a1 == 1)
        {
          v21 = 0xD000000000000010;
        }

        else
        {
          v21 = 0x6E65685479616C70;
        }

        if (a1 == 1)
        {
          v22 = 0x800000010004EE40;
        }

        else
        {
          v22 = 0xED00006573756150;
        }
      }

      else
      {
        v22 = 0xE500000000000000;
        v21 = 0x6573756170;
      }

      v23 = sub_1000230EC(v21, v22, &v27);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Skipping %{public}s animation because no render session was granted", v19, 0xCu);
      sub_100008FC8(v20);
    }

    v25 = *(v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation);
    v24 = *(v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8);
    v26 = swift_getObjectType();
    return (*(v24 + 64))(0, WeatherIntentResponseCode.rawValue.getter, 0, v26, v24, 0.0);
  }
}

void sub_100019020()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100019074();
  }
}

void sub_100019074()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unloadManager];
  if ((sub_100034968() & 1) != 0 && v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unlockState] == 1)
  {
    v3 = *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer];
    v4 = &v1[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation];
    v5 = *&v1[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation];
    v6 = *(v4 + 1);
    v20 = v3;
    sub_100034A54(v3, v5, v6);
  }

  else
  {
    if (qword_100063498 != -1)
    {
      swift_once();
    }

    v7 = sub_100049FCC();
    sub_100008F90(v7, qword_100068378);
    v8 = v0;
    v9 = sub_100049FAC();
    v10 = sub_10004AB9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 67240450;
      *(v11 + 4) = sub_100034968() & 1;

      *(v11 + 8) = 2082;
      v13 = v8[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unlockState];
      if (v13 == 3)
      {
        v14 = 0xE300000000000000;
        v15 = 7104878;
      }

      else
      {
        v16 = *&v8[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unlockState + 8];
        v15 = sub_100003C6C(v13);
        v14 = v17;
      }

      v18 = sub_1000230EC(v15, v14, &v21);

      *(v11 + 10) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "Skipping unloading because state changed; unloadingEnabled=%{BOOL,public}d unlockState=%{public}s", v11, 0x12u);
      sub_100008FC8(v12);
    }

    else
    {
    }

    v19 = *&v8[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderingSessionManager];
    sub_100030A2C(2);
  }
}

uint64_t sub_1000192C0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderingSessionManager);

    sub_100030A2C(0);
  }

  return result;
}

uint64_t sub_100019334(uint64_t a1, int a2)
{
  v39 = a2;
  v43 = a1;
  v42 = sub_100002D54(&qword_100063C80, &qword_10004CF50);
  v3 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v5 = &v38[-v4];
  v6 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v41 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v12 = &v38[-v11];
  __chkstk_darwin(v10);
  v14 = &v38[-v13];
  v15 = type metadata accessor for PosterAnimationViewModel();
  v16 = *(*(v15 - 1) + 64);
  v17 = __chkstk_darwin(v15);
  v40 = &v38[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v21 = &v38[-v20];
  __chkstk_darwin(v19);
  v23 = &v38[-v22];
  sub_100019DB0(v2, v14, &unk_100063DF0, &qword_10004CF28);
  if (sub_100004288(v14, 1, v15) == 1)
  {
    v12 = v14;
    v24 = v43;
LABEL_5:
    sub_10000591C(v12, &unk_100063DF0, &qword_10004CF28);
    v25 = *(v42 + 48);
    sub_100019DB0(v24, v5, &unk_100063DF0, &qword_10004CF28);
    sub_100019DB0(v2, &v5[v25], &unk_100063DF0, &qword_10004CF28);
    if (sub_100004288(v5, 1, v15) == 1)
    {
      if (sub_100004288(&v5[v25], 1, v15) == 1)
      {
        sub_10000591C(v5, &unk_100063DF0, &qword_10004CF28);
        v26 = 0;
        return v26 & 1;
      }
    }

    else
    {
      v27 = v41;
      sub_100019DB0(v5, v41, &unk_100063DF0, &qword_10004CF28);
      if (sub_100004288(&v5[v25], 1, v15) != 1)
      {
        v32 = &v5[v25];
        v33 = v40;
        sub_100019E7C(v32, v40, type metadata accessor for PosterAnimationViewModel);
        v34 = sub_1000047E8(v27, v33);
        sub_100019CB8(v33, type metadata accessor for PosterAnimationViewModel);
        sub_100019CB8(v27, type metadata accessor for PosterAnimationViewModel);
        sub_10000591C(v5, &unk_100063DF0, &qword_10004CF28);
        v26 = v34 ^ 1;
        return v26 & 1;
      }

      sub_100019CB8(v27, type metadata accessor for PosterAnimationViewModel);
    }

    sub_10000591C(v5, &qword_100063C80, &qword_10004CF50);
LABEL_16:
    v26 = 1;
    return v26 & 1;
  }

  sub_100019E7C(v14, v23, type metadata accessor for PosterAnimationViewModel);
  v24 = v43;
  sub_100019DB0(v43, v12, &unk_100063DF0, &qword_10004CF28);
  if (sub_100004288(v12, 1, v15) == 1)
  {
    sub_100019CB8(v23, type metadata accessor for PosterAnimationViewModel);
    goto LABEL_5;
  }

  sub_100019E7C(v12, v21, type metadata accessor for PosterAnimationViewModel);
  v28 = v15[6];
  sub_100049D9C();
  sub_100019ED8(&unk_100063E00, &type metadata accessor for WeatherCondition);
  if ((sub_10004A94C() & 1) == 0)
  {
    sub_100019CB8(v21, type metadata accessor for PosterAnimationViewModel);
    sub_100019CB8(v23, type metadata accessor for PosterAnimationViewModel);
    goto LABEL_16;
  }

  if (v39)
  {
    v29 = &v23[v15[5]];
    sub_100049AFC();
    v31 = v30;
    sub_100019CB8(v21, type metadata accessor for PosterAnimationViewModel);
    sub_100019CB8(v23, type metadata accessor for PosterAnimationViewModel);
    v26 = v31 >= 900.0;
  }

  else
  {
    v36 = v23[v15[13]];
    sub_100019CB8(v23, type metadata accessor for PosterAnimationViewModel);
    v37 = v21[v15[13]];
    sub_100019CB8(v21, type metadata accessor for PosterAnimationViewModel);
    v26 = v36 ^ v37;
  }

  return v26 & 1;
}

uint64_t sub_100019898()
{
  v1 = v0;
  v2 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for PosterAnimationViewModel();
  v7 = *(*(v6 - 1) + 64);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019DB0(v1, v5, &unk_100063DF0, &qword_10004CF28);
  if (sub_100004288(v5, 1, v6) == 1)
  {
    sub_10000591C(v5, &unk_100063DF0, &qword_10004CF28);
    return 7104878;
  }

  else
  {
    sub_100019E7C(v5, v9, type metadata accessor for PosterAnimationViewModel);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_10004AD6C(38);

    v16 = 0x697469646E6F637BLL;
    v17 = 0xEB000000003D6E6FLL;
    v11 = &v9[v6[6]];
    v18._countAndFlagsBits = sub_100049D8C();
    sub_10004A9DC(v18);

    v19._countAndFlagsBits = 0x3D65746164202CLL;
    v19._object = 0xE700000000000000;
    sub_10004A9DC(v19);
    v12 = v6[5];
    sub_100049B7C();
    sub_100019ED8(&qword_100063C88, &type metadata accessor for Date);
    v20._countAndFlagsBits = sub_10004AF1C();
    sub_10004A9DC(v20);

    v21._countAndFlagsBits = 0x6C7961447369202CLL;
    v21._object = 0xED00003D74686769;
    sub_10004A9DC(v21);
    if (v9[v6[13]])
    {
      v13._countAndFlagsBits = 1702195828;
    }

    else
    {
      v13._countAndFlagsBits = 0x65736C6166;
    }

    if (v9[v6[13]])
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v13._object = v14;
    sub_10004A9DC(v13);

    v22._countAndFlagsBits = 125;
    v22._object = 0xE100000000000000;
    sub_10004A9DC(v22);
    v10 = v16;
    sub_100019CB8(v9, type metadata accessor for PosterAnimationViewModel);
  }

  return v10;
}

uint64_t sub_100019B58()
{
  v1 = sub_10004A95C();
  v2 = [v0 objectForUserInfoKey:v1];

  if (v2)
  {
    sub_10004ACEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10000591C(v7, &qword_100064240, &qword_10004D0B8);
  }

  return 0;
}

uint64_t sub_100019C48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019CB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100005A24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100019D10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_100005A24(v4);
  v6 = *(v5 + 16);
  v7 = sub_100013F94();
  v8(v7);
  return a2;
}

uint64_t sub_100019D6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100019DB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100002D54(a3, a4);
  sub_100005A24(v5);
  v7 = *(v6 + 16);
  v8 = sub_100013F94();
  v9(v8);
  return a2;
}

uint64_t sub_100019E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_100005A24(v4);
  v6 = *(v5 + 32);
  v7 = sub_100013F94();
  v8(v7);
  return a2;
}

uint64_t sub_100019ED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100019F20()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019F68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100019F98()
{

  return swift_once();
}

void sub_100019FE8()
{
  *(v0 + 12) = 2160;
  *(v0 + 14) = 1752392040;
  *(v0 + 22) = 2081;
}

uint64_t sub_10001A048()
{

  return swift_slowAlloc();
}

uint64_t sub_10001A060()
{

  return swift_beginAccess();
}

uint64_t sub_10001A07C()
{

  return swift_slowAlloc();
}

BOOL sub_10001A094(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10001A0AC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

void sub_10001A0D0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

float sub_10001A110(uint64_t a1, unint64_t a2, float result)
{
  v3 = 0.0;
  if (a2 - 2 <= 2)
  {
    v3 = flt_10004D0C8[a2 - 2];
  }

  switch(a1)
  {
    case 0:
    case 1:
      if (a2 == 4)
      {
        goto LABEL_5;
      }

      break;
    case 2:
      if (a2 == 3)
      {
        goto LABEL_5;
      }

      break;
    case 3:
      if (a2 < 2)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (a2 == 2)
      {
LABEL_5:
        if (v3 > result)
        {
          result = result + 360.0;
        }
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10001A284()
{
  v0 = type metadata accessor for PosterDataCacheManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_10001B8C8();
  qword_1000682A8 = v3;
  return result;
}

uint64_t sub_10001A2C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002D54(&qword_100063F20, &unk_10004D110);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  swift_beginAccess();
  sub_1000139C8();
  v9 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  if (sub_100004288(v8, 1, v9) != 1)
  {
    return sub_10001BA90(v8, a1);
  }

  sub_10000591C(v8, &qword_100063F20, &unk_10004D110);
  sub_10001A474(a1);
  sub_1000139C8();
  sub_100004544(v6, 0, 1, v9);
  swift_beginAccess();
  sub_100013120();
  return swift_endAccess();
}

uint64_t sub_10001A474@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 URLsForDirectory:9 inDomains:1];

  v11 = sub_100049A6C();
  v12 = sub_10004AA5C();

  sub_100031DE4(v12, v8);

  sub_1000139C8();
  if (sub_100004288(v6, 1, v11) == 1)
  {
    sub_10000591C(v8, &unk_100063E80, &qword_10004D0F8);
    sub_10000591C(v6, &unk_100063E80, &qword_10004D0F8);
    v13 = 1;
  }

  else
  {
    sub_100049A2C();
    sub_10000591C(v8, &unk_100063E80, &qword_10004D0F8);
    (*(*(v11 - 8) + 8))(v6, v11);
    v13 = 0;
  }

  return sub_100004544(a1, v13, 1, v11);
}

uint64_t sub_10001A674@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v17[-v9];
  swift_beginAccess();
  sub_1000139C8();
  v11 = type metadata accessor for PosterData(0);
  if (sub_100004288(v10, 1, v11) != 1)
  {
    return sub_10001BB00();
  }

  sub_10000591C(v10, &unk_100063DD0, &unk_10004D100);
  if (qword_100063488 != -1)
  {
    sub_100009728();
  }

  v12 = sub_100049FCC();
  sub_100008F90(v12, qword_100068348);
  v13 = sub_100049FAC();
  v14 = sub_10004AB9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Decoding cached poster data from disk", v15, 2u);
    sub_100013F58();
  }

  sub_10001A8C4(v2, a1);
  sub_10001BB9C();
  sub_10001B9DC();
  sub_100004544(v8, 0, 1, v11);
  swift_beginAccess();
  sub_100013120();
  return swift_endAccess();
}

uint64_t sub_10001A8C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_100049A6C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A2C4(v7);
  if (sub_100004288(v7, 1, v8) == 1)
  {
    sub_10000591C(v7, &unk_100063E80, &qword_10004D0F8);
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v13 = sub_100049FCC();
    sub_100008F90(v13, qword_100068348);
    v14 = sub_100049FAC();
    v15 = sub_10004AB7C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to read cached poster data from disk due to missing file path", v16, 2u);
    }

    *a2 = 2;
    type metadata accessor for PosterData(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v17 = sub_100049A7C();
    v19 = v18;
    v20 = *(a1 + OBJC_IVAR____TtC13WeatherPoster22PosterDataCacheManager_decoder);
    type metadata accessor for PosterData(0);
    sub_10001BB58(&qword_100063F28);
    sub_10004992C();
    (*(v9 + 8))(v12, v8);
    return sub_10001B984(v17, v19);
  }
}

void sub_10001AD40()
{
  v66 = type metadata accessor for PosterDataModel(0);
  v1 = sub_100005A24(v66);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v67 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v68 = &v66 - v6;
  v7 = type metadata accessor for PosterData(0);
  v8 = sub_100005A24(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v66 - v14;
  v16 = sub_100049A6C();
  v70 = *(v16 - 8);
  v17 = *(v70 + 64);
  __chkstk_darwin(v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v66 - v22;
  sub_10001BB9C();
  sub_10001B9DC();
  sub_100004544(v23, 0, 1, v7);
  swift_beginAccess();
  v24 = v16;
  sub_100013120();
  swift_endAccess();
  sub_10001A2C4(v15);
  if (sub_100004288(v15, 1, v16) == 1)
  {
    sub_10000591C(v15, &unk_100063E80, &qword_10004D0F8);
    if (qword_100063488 != -1)
    {
      sub_100009728();
    }

    v25 = sub_100049FCC();
    sub_100008F90(v25, qword_100068348);
    v26 = sub_100049FAC();
    v27 = sub_10004AB7C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to save poster data to disk due to missing file path", v28, 2u);
      sub_100013F58();
    }

    return;
  }

  v29 = v70;
  (*(v70 + 32))(v19, v15, v24);
  v30 = *(v0 + OBJC_IVAR____TtC13WeatherPoster22PosterDataCacheManager_serializer);
  sub_10001BB58(&qword_100063F18);
  v31 = v19;
  v32 = sub_10004996C();
  v34 = v33;
  sub_100049A9C();
  sub_10001B984(v32, v34);
  sub_10001BB9C();
  v37 = v69;
  sub_10001B9DC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v39 = v68;
    sub_10001BB00();
    if (qword_100063488 != -1)
    {
      sub_100009728();
    }

    v40 = sub_100049FCC();
    sub_100008F90(v40, qword_100068348);
    v41 = v67;
    sub_10001B9DC();
    v42 = sub_100049FAC();
    v43 = sub_10004AB9C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = v24;
      v46 = swift_slowAlloc();
      v71[0] = v46;
      *v44 = 141558275;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2081;
      v47 = v41 + *(v66 + 20);
      v48 = sub_100049E4C();
      v49 = v41;
      v51 = v50;
      sub_10001BA34(v49);
      v52 = sub_1000230EC(v48, v51, v71);

      *(v44 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v42, v43, "Successfully saved poster data of type 'data' to disk; location=%{private,mask.hash}s", v44, 0x16u);
      sub_100008FC8(v46);
      sub_100013F58();
      sub_100013F58();

      sub_10001BA34(v39);
      (*(v29 + 8))(v31, v45);
      return;
    }

    sub_10001BA34(v41);
    sub_10001BA34(v39);
    v35 = *(v29 + 8);
    v36 = v31;
LABEL_8:
    v35(v36, v24);
    return;
  }

  v53 = v19;
  v54 = *v37;
  if (qword_100063488 != -1)
  {
    sub_100009728();
  }

  v55 = sub_100049FCC();
  sub_100008F90(v55, qword_100068348);
  v56 = sub_100049FAC();
  v57 = sub_10004AB9C();
  if (!os_log_type_enabled(v56, v57))
  {

    v35 = *(v29 + 8);
    v36 = v19;
    goto LABEL_8;
  }

  v58 = v29;
  v59 = swift_slowAlloc();
  v60 = swift_slowAlloc();
  v71[0] = v60;
  *v59 = 136446210;
  v61 = 0xEE00656E696C6666;
  v62 = 0x4F6B726F7774656ELL;
  v63 = v24;
  switch(v54)
  {
    case 1:
      break;
    case 2:
      v61 = 0xE600000000000000;
      v62 = 0x617461446F6ELL;
      break;
    case 3:
      v62 = 0xD000000000000014;
      v64 = "weatherRequestFailed";
      goto LABEL_23;
    default:
      v62 = 0xD000000000000014;
      v64 = "locationUnauthorized";
LABEL_23:
      v61 = (v64 - 32) | 0x8000000000000000;
      break;
  }

  v65 = sub_1000230EC(v62, v61, v71);

  *(v59 + 4) = v65;
  _os_log_impl(&_mh_execute_header, v56, v57, "Successfully saved poster data of type 'error' to disk; error=%{public}s", v59, 0xCu);
  sub_100008FC8(v60);
  sub_100013F58();
  sub_100013F58();

  (*(v58 + 8))(v53, v63);
}

uint64_t sub_10001B60C()
{
  sub_10000591C(v0 + OBJC_IVAR____TtC13WeatherPoster22PosterDataCacheManager_posterData, &unk_100063DD0, &unk_10004D100);
  v1 = *(v0 + OBJC_IVAR____TtC13WeatherPoster22PosterDataCacheManager_decoder);

  v2 = *(v0 + OBJC_IVAR____TtC13WeatherPoster22PosterDataCacheManager_serializer);

  sub_10000591C(v0 + OBJC_IVAR____TtC13WeatherPoster22PosterDataCacheManager____lazy_storage___posterDataURL, &qword_100063F20, &unk_10004D110);
  return v0;
}

uint64_t sub_10001B684()
{
  sub_10001B60C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for PosterDataCacheManager()
{
  result = qword_100063E68;
  if (!qword_100063E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001B730()
{
  sub_10001B80C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10001B864();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10001B80C()
{
  if (!qword_100063DB0)
  {
    type metadata accessor for PosterData(255);
    v0 = sub_10004ACDC();
    if (!v1)
    {
      atomic_store(v0, &qword_100063DB0);
    }
  }
}

void sub_10001B864()
{
  if (!qword_100063E78)
  {
    sub_100009240(&unk_100063E80, &qword_10004D0F8);
    v0 = sub_10004ACDC();
    if (!v1)
    {
      atomic_store(v0, &qword_100063E78);
    }
  }
}

uint64_t sub_10001B8C8()
{
  v1 = v0;
  v2 = type metadata accessor for PosterData(0);
  sub_100013E80(v2);
  v3 = OBJC_IVAR____TtC13WeatherPoster22PosterDataCacheManager_decoder;
  v4 = sub_10004994C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v0 + v3) = sub_10004993C();
  v7 = OBJC_IVAR____TtC13WeatherPoster22PosterDataCacheManager_serializer;
  v8 = sub_10004998C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_10004997C();
  sub_10004995C();
  *(v1 + v7) = v11;
  v12 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  sub_100013E80(v12);
  return v1;
}