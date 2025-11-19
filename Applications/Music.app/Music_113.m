uint64_t ClosedRange.clamp(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  max<A>(_:_:)();
  min<A>(_:_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ClosedRange<>.scaledValue(relativeTo:relativeValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v36 = a4;
  v31 = a2;
  v7 = *(*(a4 + 16) + 8);
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  __chkstk_darwin(v10);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  __chkstk_darwin(v15);
  v37 = &v30 - v16;
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  __chkstk_darwin(v20);
  v22 = &v30 - v21;
  v34 = a3;
  v35 = v7;
  v23 = *(v7 + 8);
  v33 = a1;
  v25 = v24;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  LOBYTE(v7) = dispatch thunk of static Comparable.> infix(_:_:)();
  v26 = *(v25 + 8);
  v26(v19, v8);
  if (v7)
  {
    ClosedRange.clamp(_:)(v31, v34);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v30 = v23;
    dispatch thunk of static FloatingPoint./ infix(_:_:)();
    v26(v14, v8);
    v27 = v32;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v28 = v37;
    dispatch thunk of static Numeric.* infix(_:_:)();
    v26(v27, v8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v26(v14, v8);
    v26(v28, v8);
    v26(v19, v8);
    return (v26)(v22, v8);
  }

  else
  {
    v26(v22, v8);
    return (*(v25 + 16))(v38, v39, v8);
  }
}

uint64_t Data.hexRepresentation.getter(uint64_t a1, unint64_t a2)
{
  sub_10002BC44(a1, a2);
  result = sub_100C2C218(a1, a2, a1, a2);
  if (!v5)
  {
    return 0;
  }

  return result;
}

void sub_100C2BF28(unint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v8 - 8);
  v9 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a3);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
    swift_slowAlloc();
    goto LABEL_42;
  }

  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = __OFSUB__(v11, v12);
  v10 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_8:
    LODWORD(v10) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v10 = v10;
  }

LABEL_10:
  if (v10 + 0x4000000000000000 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v14 = swift_slowAlloc();
  if (v9 != 2)
  {
    if (v9 == 1)
    {
      LODWORD(v15) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v15 = v15;
      goto LABEL_17;
    }

    v15 = BYTE6(a3);
    if (BYTE6(a3))
    {
LABEL_21:
      v18 = v15 - 1;
      if (v15 - 1 >= 0x4000000000000000)
      {
        v19 = 0x4000000000000000;
      }

      else
      {
        v19 = v15 - 1;
      }

      if (v15 <= 0x20)
      {
        goto LABEL_29;
      }

      if (v18 >= 0x4000000000000000)
      {
        v18 = 0x4000000000000000;
      }

      if (v14 >= a1 + v18 + 1 || v14 + 2 * v18 + 2 <= a1)
      {
        v21 = v19 + 1;
        v22 = v21 & 0x1F;
        if ((v21 & 0x1F) == 0)
        {
          v22 = 32;
        }

        v20 = v21 - v22;
        v23 = (v14 + 32);
        v24 = (a1 + 16);
        v25.i64[0] = 0x9F9F9F9F9F9F9F9FLL;
        v25.i64[1] = 0x9F9F9F9F9F9F9F9FLL;
        v26.i64[0] = 0x5757575757575757;
        v26.i64[1] = 0x5757575757575757;
        v27.i64[0] = 0x3030303030303030;
        v27.i64[1] = 0x3030303030303030;
        v28.i64[0] = 0xF0F0F0F0F0F0F0FLL;
        v28.i64[1] = 0xF0F0F0F0F0F0F0FLL;
        v29.i64[0] = 0x909090909090909;
        v29.i64[1] = 0x909090909090909;
        v30 = v20;
        do
        {
          v31 = v24[-1];
          v32.i64[0] = 0x5757575757575757;
          v32.i64[1] = 0x5757575757575757;
          v33.i64[0] = 0x5757575757575757;
          v33.i64[1] = 0x5757575757575757;
          v34.i64[0] = 0x3030303030303030;
          v34.i64[1] = 0x3030303030303030;
          v35.i64[0] = 0x3030303030303030;
          v35.i64[1] = 0x3030303030303030;
          v50.val[0] = vbslq_s8(vcgtq_u8(v31, v25), vsraq_n_u8(v32, v31, 4uLL), vsraq_n_u8(v34, v31, 4uLL));
          v36 = vandq_s8(v31, v28);
          v50.val[1] = vbslq_s8(vcgtq_u8(v36, v29), vaddq_s8(v36, v26), vorrq_s8(v36, v27));
          v49.val[0] = vbslq_s8(vcgtq_u8(*v24, v25), vsraq_n_u8(v33, *v24, 4uLL), vsraq_n_u8(v35, *v24, 4uLL));
          v37 = vandq_s8(*v24, v28);
          v38 = v23 - 32;
          vst2q_s8(v38, v50);
          v49.val[1] = vbslq_s8(vcgtq_u8(v37, v29), vaddq_s8(v37, v26), vorrq_s8(v37, v27));
          vst2q_s8(v23, v49);
          v23 += 64;
          v24 += 2;
          v30 -= 32;
        }

        while (v30);
      }

      else
      {
LABEL_29:
        v20 = 0;
      }

      v39 = v20 - 0x4000000000000000;
      v40 = (v14 + 2 * v20 + 1);
      v41 = v15 - v20;
      v42 = (a1 + v20);
      while (v39)
      {
        v44 = *v42++;
        v43 = v44;
        v45 = (v44 >> 4) + 87;
        v46 = (v44 >> 4) | 0x30;
        if (v44 > 0x9F)
        {
          LOBYTE(v46) = v45;
        }

        *(v40 - 1) = v46;
        if ((v43 & 0xFu) <= 9)
        {
          v47 = v43 & 0xF | 0x30;
        }

        else
        {
          v47 = (v43 & 0xF) + 87;
        }

        *v40 = v47;
        v40 += 2;
        ++v39;
        if (!--v41)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

LABEL_42:
    static String.Encoding.utf8.getter();
    *a4 = String.init(bytesNoCopy:length:encoding:freeWhenDone:)();
    a4[1] = v48;
    return;
  }

  v17 = *(a2 + 16);
  v16 = *(a2 + 24);
  v13 = __OFSUB__(v16, v17);
  v15 = v16 - v17;
  if (!v13)
  {
LABEL_17:
    if ((v15 & 0x8000000000000000) != 0)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (!v15)
    {
      goto LABEL_42;
    }

    goto LABEL_21;
  }

LABEL_48:
  __break(1u);
}

uint64_t sub_100C2C218(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v13, 0, 14);
LABEL_10:
      sub_100C2BF28(v13, a3, a4, &v14);
      result = sub_10002C064(a3, a4);
      if (!v4)
      {
        return v14;
      }

      return result;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_10;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_100C30E68(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
  if (v4)
  {
    return sub_10002C064(a3, a4);
  }

  v12 = v10;
  sub_10002C064(a3, a4);
  return v12;
}

uint64_t sub_100C2C3BC()
{
  v0 = sub_100C1BFC8(&off_1010EFC88);
  sub_10010FC20(&qword_1011BA6A0);
  result = swift_arrayDestroy();
  static Data.Hexadecimal.hexToDecimalMapping = v0;
  return result;
}

uint64_t *Data.Hexadecimal.hexToDecimalMapping.unsafeMutableAddressor()
{
  if (qword_1011B99F0 != -1)
  {
    swift_once();
  }

  return &static Data.Hexadecimal.hexToDecimalMapping;
}

uint64_t static Data.Hexadecimal.hexToDecimalMapping.getter()
{
  if (qword_1011B99F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Data.Hexadecimal.hexToDecimalMapping.setter(uint64_t a1)
{
  if (qword_1011B99F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Data.Hexadecimal.hexToDecimalMapping = a1;
}

uint64_t (*static Data.Hexadecimal.hexToDecimalMapping.modify())()
{
  if (qword_1011B99F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t Data.init(hexString:)(uint64_t a1, void *a2)
{
  if (String.count.getter())
  {
    v15[0] = 48;
    v15[1] = 0xE100000000000000;
    v4._countAndFlagsBits = a1;
    v4._object = a2;
    String.append(_:)(v4);
  }

  v5 = 0;
  LOBYTE(v6) = 0;
  v16 = xmmword_100EE9560;
  while (1)
  {
    v8 = String.Iterator.next()();
    if (!v8.value._object)
    {
      break;
    }

    if (qword_1011B99F0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = static Data.Hexadecimal.hexToDecimalMapping;
    if (!*(static Data.Hexadecimal.hexToDecimalMapping + 16) || (v10 = sub_10001FDC0(v8.value._countAndFlagsBits, v8.value._object, &Character.hash(into:), sub_10000F930), (v11 & 1) == 0))
    {
      swift_endAccess();

      sub_10002C064(v16, *(&v16 + 1));
      return 0;
    }

    v12 = *(*(v9 + 56) + v10);
    swift_endAccess();

    if (v5)
    {
      v6 = v12 + v6;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_17;
      }

      v13 = sub_10010FC20(&qword_1011BA578);
      v15[3] = v13;
      v15[4] = sub_100020674(&qword_1011BA580, &qword_1011BA578);
      LOBYTE(v15[0]) = v6;
      sub_10000954C(v15, v13);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_10000959C(v15);
      LOBYTE(v6) = 0;
    }

    else
    {
      v6 = 16 * (v12 & 0xF) + v6;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_18;
      }
    }

    if (__OFADD__(v5++, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
    }
  }

  return v16;
}

uint64_t sub_100C2C8B0()
{
  v0 = sub_10010FC20(&qword_1011BA588);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = type metadata accessor for Calendar.Identifier();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006080(v9, static Calendar.musicDefaultCalendar);
  v12 = sub_1000060E4(v7, static Calendar.musicDefaultCalendar);
  (*(v4 + 104))(v6, enum case for Calendar.Identifier.gregorian(_:), v3);
  Calendar.init(identifier:)();
  (*(v4 + 8))(v6, v3);
  TimeZone.init(secondsFromGMT:)();
  v13 = type metadata accessor for TimeZone();
  result = (*(*(v13 - 8) + 48))(v2, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    Calendar.timeZone.setter();
    return (*(v8 + 32))(v12, v11, v7);
  }

  return result;
}

uint64_t Calendar.musicDefaultCalendar.unsafeMutableAddressor()
{
  if (qword_1011B99F8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Calendar();

  return sub_1000060E4(v0, static Calendar.musicDefaultCalendar);
}

uint64_t static Calendar.musicDefaultCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B99F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Calendar();
  v3 = sub_1000060E4(v2, static Calendar.musicDefaultCalendar);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static Calendar.date(forReleaseYear:)@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_1011BA588);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_10010FC20(&qword_1011BA590);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for DateComponents();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }

  else
  {
    if (qword_1011B99F8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Calendar();
    sub_1000060E4(v17, static Calendar.musicDefaultCalendar);
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    v18 = type metadata accessor for TimeZone();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    Calendar.date(from:)();
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t static FormatStyle<>.musicReleaseYear.getter()
{
  v0 = type metadata accessor for TimeZone();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date.FormatStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ParseableFormatStyle<>.dateTime.getter();
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  Date.FormatStyle.year(_:)();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  if (qword_1011B99F8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Calendar();
  sub_1000060E4(v9, static Calendar.musicDefaultCalendar);
  Calendar.timeZone.getter();
  return Date.FormatStyle.timeZone.setter();
}

id static NSDateFormatter.iso8601ExtendedDateFormatter.getter()
{
  sub_10010FC20(&qword_1011BA588);
  __chkstk_darwin();
  v1 = &v13 - v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSDateFormatter) init];
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  [v6 setLocale:isa];

  v8 = String._bridgeToObjectiveC()();
  [v6 setDateFormat:v8];

  TimeZone.init(secondsFromGMT:)();
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v1, 1, v9) != 1)
  {
    v11 = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v1, v9);
  }

  [v6 setTimeZone:v11];

  return v6;
}

void sub_100C2D3C0()
{
  v0 = type metadata accessor for TimeZone();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  [v4 setDateStyle:3];
  if (qword_1011B99F8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Calendar();
  sub_1000060E4(v5, static Calendar.musicDefaultCalendar);
  Calendar.timeZone.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone:isa];

  static NSDateFormatter.releaseDateFormatter = v4;
}

uint64_t *NSDateFormatter.releaseDateFormatter.unsafeMutableAddressor()
{
  if (qword_1011B9A00 != -1)
  {
    swift_once();
  }

  return &static NSDateFormatter.releaseDateFormatter;
}

id sub_100C2D59C()
{
  v0 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v0 setUnitsStyle:3];
  result = [v0 setAllowedUnits:96];
  static NSDateFormatter.collectionsDurationFormatter = v0;
  return result;
}

uint64_t *NSDateFormatter.collectionsDurationFormatter.unsafeMutableAddressor()
{
  if (qword_1011B9A08 != -1)
  {
    swift_once();
  }

  return &static NSDateFormatter.collectionsDurationFormatter;
}

uint64_t Dictionary.filterIncludingPairsWithStringValues()(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = *(a3 - 8);
  __chkstk_darwin();
  v66 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = v53 - v9;
  v54 = *(v10 - 8);
  __chkstk_darwin();
  v74 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v68 = v53 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = type metadata accessor for Optional();
  v14 = *(v63 - 8);
  __chkstk_darwin();
  v69 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = v53 - v16;
  swift_getTupleTypeMetadata2();
  v17 = static Array._allocateUninitialized(_:)();
  v56 = a4;
  v18 = sub_10003B618(v17, a2, &type metadata for String, a4);

  v77 = v18;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = __CocoaDictionary.makeIterator()();
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v65 = v19 | 0x8000000000000000;
  }

  else
  {
    v23 = -1 << *(a1 + 32);
    v21 = ~v23;
    v20 = a1 + 64;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(a1 + 64);
    v65 = a1;
  }

  v71 = (v54 + 32);
  v70 = (v55 + 32);
  v61 = TupleTypeMetadata2 - 8;
  v53[1] = v21;
  v26 = (v21 + 64) >> 6;
  v67 = (v54 + 16);
  v53[2] = v55 + 16;
  v59 = (v54 + 8);
  v60 = (v14 + 32);
  v58 = (v55 + 8);

  v28 = 0;
  v29 = v66;
  v30 = v69;
  v64 = v20;
  v31 = v65;
  if ((v65 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (__CocoaDictionary.Iterator.next()())
  {
    _forceBridgeFromObjectiveC<A>(_:_:)();
    swift_unknownObjectRelease();
    v32 = v57;
    _forceBridgeFromObjectiveC<A>(_:_:)();
    swift_unknownObjectRelease();
    v33 = v28;
    v73 = v22;
    goto LABEL_20;
  }

  v34 = 1;
  v72 = v28;
  v73 = v22;
  while (1)
  {
    v29 = v66;
LABEL_22:
    v43 = *(TupleTypeMetadata2 - 8);
    (*(v43 + 56))(v30, v34, 1, TupleTypeMetadata2);
    v44 = v62;
    (*v60)(v62, v30, v63);
    if ((*(v43 + 48))(v44, 1, TupleTypeMetadata2) == 1)
    {
      sub_10005C9F8();
      return v77;
    }

    v45 = *(TupleTypeMetadata2 + 48);
    (*v71)(v74, v44, a2);
    (*v70)(v29, &v44[v45], a3);
    if (swift_dynamicCast())
    {
      v46 = v75;
      v47 = v76;
LABEL_27:
      v51 = v68;
      v22 = v73;
      (*v58)(v29, a3);
      v52 = v74;
      (*v67)(v51, v74, a2);
      v75 = v46;
      v76 = v47;
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      result = (*v59)(v52, a2);
      v28 = v72;
      v30 = v69;
      goto LABEL_29;
    }

    sub_100009F78(0, &qword_1011BA598);
    if (swift_dynamicCast())
    {
      v48 = v75;
      v49 = [v75 description];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v50;

      v29 = v66;
      goto LABEL_27;
    }

    (*v59)(v74, a2);
    result = (*v58)(v29, a3);
    v28 = v72;
    v22 = v73;
LABEL_29:
    v20 = v64;
    v31 = v65;
    if ((v65 & 0x8000000000000000) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v35 = v22;
    v33 = v28;
    if (!v22)
    {
      break;
    }

LABEL_19:
    v73 = (v35 - 1) & v35;
    v39 = __clz(__rbit64(v35)) | (v33 << 6);
    v40 = v31;
    (*(v54 + 16))(v68, *(v31 + 48) + *(v54 + 72) * v39, a2);
    v41 = *(v40 + 56) + *(v55 + 72) * v39;
    v32 = v57;
    (*(v55 + 16))(v57, v41, a3);
LABEL_20:
    v42 = *(TupleTypeMetadata2 + 48);
    v30 = v69;
    (*v71)();
    (*v70)(&v30[v42], v32, a3);
    v34 = 0;
    v72 = v33;
  }

  if (v26 <= v28 + 1)
  {
    v36 = v28 + 1;
  }

  else
  {
    v36 = v26;
  }

  v37 = v36 - 1;
  v38 = v28;
  while (1)
  {
    v33 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v33 >= v26)
    {
      v72 = v37;
      v73 = 0;
      v34 = 1;
      goto LABEL_22;
    }

    v35 = *(v20 + 8 * v33);
    ++v38;
    if (v35)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t Dictionary.filteredDictionary(_:)(uint64_t (*a1)(char *, char *), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a1;
  v62 = a2;
  type metadata accessor for Optional();
  __chkstk_darwin();
  v53 = v51 - v10;
  v56 = *(a5 - 8);
  __chkstk_darwin();
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = v51 - v13;
  v55 = *(a4 - 8);
  __chkstk_darwin();
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = v51 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v69 = type metadata accessor for Optional();
  v18 = *(v69 - 8);
  __chkstk_darwin();
  v68 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = v51 - v20;
  swift_getTupleTypeMetadata2();
  v21 = static Array._allocateUninitialized(_:)();
  v74 = a4;
  v54 = a6;
  v22 = sub_10003B618(v21, a4, a5, a6);

  v78 = v22;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v23 = __CocoaDictionary.makeIterator()();
    v24 = 0;
    v25 = 0;
    v70 = v23 | 0x8000000000000000;
    v71 = 0;
  }

  else
  {
    v26 = -1 << *(a3 + 32);
    v24 = ~v26;
    v27 = *(a3 + 64);
    v70 = a3;
    v71 = a3 + 64;
    v28 = -v26;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v25 = v29 & v27;
  }

  v73 = (v55 + 32);
  v30 = (v56 + 32);
  v66 = TupleTypeMetadata2 - 8;
  v51[1] = v24;
  v31 = (v24 + 64) >> 6;
  v63 = (v56 + 16);
  v64 = (v55 + 16);
  v65 = (v18 + 32);
  v59 = (v55 + 8);
  v60 = (v56 + 8);
  v52 = (v56 + 56);

  v33 = 0;
  v75 = v12;
  v57 = v15;
  while (1)
  {
    v72 = v25;
    if ((v70 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (__CocoaDictionary.Iterator.next()())
    {
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v42 = v58;
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v35 = v33;
      v77 = v72;
      goto LABEL_21;
    }

    v45 = 1;
    v37 = v33;
    v77 = v72;
    v44 = v68;
LABEL_22:
    v46 = *(TupleTypeMetadata2 - 8);
    (*(v46 + 56))(v44, v45, 1, TupleTypeMetadata2);
    v47 = v67;
    (*v65)();
    if ((*(v46 + 48))(v47, 1, TupleTypeMetadata2) == 1)
    {
      sub_10005C9F8();
      return v78;
    }

    v48 = *(TupleTypeMetadata2 + 48);
    v49 = v74;
    (*v73)(v15, v47, v74);
    (*v30)(v12, &v47[v48], a5);
    if (v61(v15, v12))
    {
      (*v64)(v76, v15, v49);
      v50 = v53;
      (*v63)(v53, v75, a5);
      (*v52)(v50, 0, 1, a5);
      type metadata accessor for Dictionary();
      v12 = v75;
      Dictionary.subscript.setter();
    }

    (*v60)(v12, a5);
    result = (*v59)(v15, v49);
    v33 = v37;
    v25 = v77;
  }

  v34 = v25;
  v35 = v33;
  if (v25)
  {
LABEL_18:
    v77 = (v34 - 1) & v34;
    v39 = __clz(__rbit64(v34)) | (v35 << 6);
    v40 = v70;
    (*(v55 + 16))(v76, *(v70 + 48) + *(v55 + 72) * v39, v74);
    v41 = *(v40 + 56) + *(v56 + 72) * v39;
    v42 = v58;
    (*(v56 + 16))(v58, v41, a5);
LABEL_21:
    v43 = *(TupleTypeMetadata2 + 48);
    v44 = v68;
    (*v73)();
    (*v30)(&v44[v43], v42, a5);
    v45 = 0;
    v37 = v35;
    v12 = v75;
    v15 = v57;
    goto LABEL_22;
  }

  if (v31 <= v33 + 1)
  {
    v36 = v33 + 1;
  }

  else
  {
    v36 = v31;
  }

  v37 = v36 - 1;
  v38 = v33;
  while (1)
  {
    v35 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v35 >= v31)
    {
      v77 = 0;
      v45 = 1;
      v44 = v68;
      goto LABEL_22;
    }

    v34 = *(v71 + 8 * v35);
    ++v38;
    if (v34)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t IndexPath.safeSection.getter()
{
  if ((IndexPath.count.getter() - 1) > 1)
  {

    return NSNotFound.getter();
  }

  else
  {

    return IndexPath.subscript.getter();
  }
}

uint64_t IndexPath.safeSection.setter()
{
  result = IndexPath.count.getter();
  if ((result - 1) <= 1)
  {

    return IndexPath.subscript.setter();
  }

  return result;
}

uint64_t (*IndexPath.safeSection.modify(uint64_t *a1))()
{
  a1[1] = v1;
  if ((IndexPath.count.getter() - 1) > 1)
  {
    v3 = NSNotFound.getter();
  }

  else
  {
    v3 = IndexPath.subscript.getter();
  }

  *a1 = v3;
  return sub_100C2E680;
}

uint64_t sub_100C2E680()
{
  result = IndexPath.count.getter();
  if ((result - 1) <= 1)
  {
    return IndexPath.subscript.setter();
  }

  return result;
}

uint64_t IndexPath.safeItem.getter()
{
  if (IndexPath.count.getter() > 1)
  {

    return IndexPath.subscript.getter();
  }

  else
  {

    return NSNotFound.getter();
  }
}

unint64_t IndexPath.safeItem.setter()
{
  result = IndexPath.count.getter();
  if (result >= 2)
  {

    return IndexPath.subscript.setter();
  }

  return result;
}

unint64_t (*IndexPath.safeItem.modify(uint64_t *a1))()
{
  a1[1] = v1;
  if (IndexPath.count.getter() > 1)
  {
    v3 = IndexPath.subscript.getter();
  }

  else
  {
    v3 = NSNotFound.getter();
  }

  *a1 = v3;
  return sub_100C2E7B8;
}

unint64_t sub_100C2E7B8()
{
  result = IndexPath.count.getter();
  if (result >= 2)
  {
    return IndexPath.subscript.setter();
  }

  return result;
}

Swift::String __swiftcall String.trim()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CharacterSet.whitespacesAndNewlines.getter();
  v8._countAndFlagsBits = 41154;
  v8._object = 0xA200000000000000;
  CharacterSet.insert(charactersIn:)(v8);
  v15[0] = v3;
  v15[1] = v2;
  sub_100009934();
  v9 = StringProtocol.trimmingCharacters(in:)();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

Swift::String __swiftcall String.removeSpaces()()
{
  sub_100009934();
  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.replace(usingRegexPattern:with:options:)(Swift::String usingRegexPattern, Swift::String with, NSRegularExpressionOptions options)
{
  v5 = v4;
  v6 = v3;
  object = usingRegexPattern._object;
  countAndFlagsBits = usingRegexPattern._countAndFlagsBits;
  objc_allocWithZone(NSRegularExpression);

  v10 = sub_100C308E8(countAndFlagsBits, object, options);
  if (v10)
  {
    v11 = v10;
    v12 = String.count.getter();
    v13 = String._bridgeToObjectiveC()();
    v14 = String._bridgeToObjectiveC()();
    v15 = [v11 stringByReplacingMatchesInString:v13 options:0 range:0 withTemplate:{v12, v14}];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v16;
  }

  else
  {
  }

  v17 = v6;
  v18 = v5;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

Swift::String __swiftcall String.insensitiveCompareString()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_10010FC20(&qword_1011BA5A8);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = 0xE000000000000000;
  v29 = 0;
  v30 = 0xE000000000000000;
  v8 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v25 = v3;
  v26 = v2;
  v27 = 0;
  v28 = v8;

  v9 = String.Iterator.next()();
  if (v9.value._object)
  {
    countAndFlagsBits = v9.value._countAndFlagsBits;
    object = v9.value._object;
    do
    {
      if ((Character.isPunctuation.getter() & 1) == 0)
      {
        v13._countAndFlagsBits = countAndFlagsBits;
        v13._object = object;
        String.append(_:)(v13);
      }

      v12 = String.Iterator.next()();
      countAndFlagsBits = v12.value._countAndFlagsBits;
      object = v12.value._object;
    }

    while (v12.value._object);
    v14 = v29;
    v7 = v30;
  }

  else
  {
    v14 = 0;
  }

  v25 = v14;
  v26 = v7;
  sub_100009934();
  v15 = StringProtocol.localizedLowercase.getter();
  v17 = v16;

  v29 = v15;
  v30 = v17;
  static Locale.current.getter();
  v18 = type metadata accessor for Locale();
  (*(*(v18 - 8) + 56))(v6, 0, 1, v18);
  v19 = StringProtocol.folding(options:locale:)();
  v21 = v20;
  sub_1000095E8(v6, &qword_1011BA5A8);

  v22 = v19;
  v23 = v21;
  result._object = v23;
  result._countAndFlagsBits = v22;
  return result;
}

id String.BOOLValue.getter()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [v0 BOOLValue];

  return v1;
}

uint64_t String.containsExcessiveHeightCharacters.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BA5B0);
  __chkstk_darwin(v4 - 8);
  v6 = v25 - v5;
  v7 = type metadata accessor for CharacterSet();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v25 - v13;
  __chkstk_darwin(v12);
  v16 = v25 - v15;
  v17 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  if (v17)
  {
    v18 = v17;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      v19 = 0;
      return v19 & 1;
    }

    (*(v8 + 56))(v6, 1, 1, v7);
    sub_100C3121C(&qword_1011BA5B8, &type metadata accessor for CharacterSet);
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      v20 = *(v8 + 32);
      v20(v14, v6, v7);
      v20(v16, v14, v7);
      (*(v8 + 16))(v11, v16, v7);
      CharacterSet.remove(_:)();
      CharacterSet.remove(_:)();
      v25[0] = a1;
      v25[1] = a2;
      sub_100009934();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      v22 = v21;
      v23 = *(v8 + 8);
      v23(v11, v7);
      v23(v16, v7);
      v19 = v22 ^ 1;
      return v19 & 1;
    }
  }

  v19 = 0;
  return v19 & 1;
}

BOOL String.containsCharacter(from:)()
{
  sub_100009934();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  return (v0 & 1) == 0;
}

uint64_t Optional<A>.isEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

uint64_t Optional<A>.nonEmpty.getter(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  return a1;
}

NSAttributedString __swiftcall NSAttributedString.init(string:attributes:replacingPlaceholder:withImage:imageAttributes:)(Swift::String string, Swift::OpaquePointer attributes, Swift::String replacingPlaceholder, UIImage_optional withImage, Swift::OpaquePointer imageAttributes)
{
  isa = withImage.value.super.isa;
  static String.localizedStringWithFormat(_:_:)();
  v6 = objc_allocWithZone(NSMutableAttributedString);
  v7 = String._bridgeToObjectiveC()();

  _s3__C3KeyVMa_1(0);
  sub_100C3121C(&qword_1011B9B78, _s3__C3KeyVMa_1);
  v8 = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [v6 initWithString:v7 attributes:v8];

  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 rangeOfString:v11 options:129];
  v14 = v13;

  if (isa)
  {
    v15 = objc_opt_self();
    isa = isa;
    v16 = [v15 textAttachmentWithImage:isa];
    v17 = Dictionary._bridgeToObjectiveC()().super.isa;

    v18 = [objc_opt_self() attributedStringWithAttachment:v16 attributes:v17];
  }

  else
  {

    v18 = [objc_allocWithZone(NSAttributedString) init];
  }

  [v9 replaceCharactersInRange:v12 withAttributedString:{v14, v18}];
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString:v9];

  return v19;
}

uint64_t NSAttributedString.init(_:)(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BA5C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  sub_100C30DA4(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(a1, &qword_1011BA5C0);
    sub_1000095E8(v4, &qword_1011BA5C0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    v13 = NSAttributedString.init(_:)();
    sub_1000095E8(a1, &qword_1011BA5C0);
    (*(v6 + 8))(v11, v5);
    return v13;
  }
}

uint64_t *Double.epsilon.unsafeMutableAddressor()
{
  if (qword_1011B9A10 != -1)
  {
    swift_once();
  }

  return &static Double.epsilon;
}

double static Double.epsilon.getter()
{
  if (qword_1011B9A10 != -1)
  {
    swift_once();
  }

  return *&static Double.epsilon;
}

uint64_t _NSRange.init(range:in:)()
{
  String.Index.samePosition(in:)();
  if (v0 & 1) != 0 || (String.Index.samePosition(in:)(), (v1))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = String.UTF16View.distance(from:to:)();
    String.UTF16View.distance(from:to:)();

    return v2;
  }

  return result;
}

{
  String.index(after:)();
  String.Index.samePosition(in:)();
  if (v0 & 1) != 0 || (String.Index.samePosition(in:)(), (v1))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = String.UTF16View.distance(from:to:)();
    String.UTF16View.distance(from:to:)();

    return v2;
  }

  return result;
}

Swift::Bool __swiftcall _NSRange.contains(_:)(__C::_NSRange a1)
{
  if (a1.location >= v1)
  {
    if (__OFADD__(a1.location, a1.length))
    {
      __break(1u);
    }

    else if (!__OFADD__(v1, v2))
    {
      LOBYTE(a1.location) = v1 + v2 >= a1.location + a1.length;
      return a1.location;
    }

    __break(1u);
    return a1.location;
  }

  LOBYTE(a1.location) = 0;
  return a1.location;
}

__C::_NSRange __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _NSRange.convert(from:to:preserveLength:)(Swift::String from, Swift::String to, Swift::Bool preserveLength)
{
  sub_100009934();
  if (StringProtocol.contains<A>(_:)())
  {
    v4 = String.UTF16View.count.getter();
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 rangeOfString:{v6, to._countAndFlagsBits, to._object, from._countAndFlagsBits, from._object}];
    v9 = v8;

    v10.location = 0;
    v10.length = v4;
    v11.location = v7;
    v11.length = v9;
    v14 = _NSRange.convert(from:to:preserveLength:)(v10, v11, preserveLength);
    length = v14.length;
    location = v14.location;
  }

  else
  {
    sub_100C30E14();
    swift_allocError();
    *v15 = 4;
    location = swift_willThrow();
  }

  result.length = length;
  result.location = location;
  return result;
}

__C::_NSRange __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _NSRange.convert(from:to:preserveLength:)(__C::_NSRange from, __C::_NSRange to, Swift::Bool preserveLength)
{
  if (to.location < from.location)
  {
    goto LABEL_5;
  }

  if (__OFADD__(to.location, to.length))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = from.location + from.length;
  if (__OFADD__(from.location, from.length))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v5 < to.location + to.length)
  {
LABEL_5:
    v6 = 0;
LABEL_6:
    sub_100C30E14();
    swift_allocError();
    *v7 = v6;
    from.location = swift_willThrow();
    return from;
  }

  if (v3 < from.location)
  {
LABEL_11:
    v6 = 1;
    goto LABEL_6;
  }

  if (__OFADD__(v3, v4))
  {
    goto LABEL_20;
  }

  if (v5 < v3 + v4)
  {
    goto LABEL_11;
  }

  if (__OFSUB__(v3, to.location))
  {
LABEL_21:
    __break(1u);
    return from;
  }

  v9.location = 0;
  v9.length = v10;
  v11 = v4;
  *&from.location = _NSRange.intersection(_:)(v9);
  if (v12)
  {
    v6 = 2;
    goto LABEL_6;
  }

  if (preserveLength && from.length != v11)
  {
    v6 = 3;
    goto LABEL_6;
  }

  return from;
}

Swift::Bool __swiftcall _NSRange.intersects(_:)(__C::_NSRange a1)
{
  v3 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = a1.location + a1.length;
  if (__OFADD__(a1.location, a1.length))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 >= v4)
  {
    v5 = a1.location + a1.length;
  }

  else
  {
    v5 = v1 + v2;
  }

  if (v1 >= a1.location && v4 > v1)
  {
    if (!__OFSUB__(v5, v1))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v6 = 0;
  if (a1.location < v1 || v3 <= a1.location)
  {
    goto LABEL_15;
  }

  if (__OFSUB__(v5, a1.location))
  {
LABEL_18:
    __break(1u);
    return a1.location;
  }

LABEL_14:
  v6 = 1;
LABEL_15:
  LOBYTE(a1.location) = v6;
  return a1.location;
}

uint64_t sub_100C2FC10()
{
  result = NSNotFound.getter();
  static _NSRange.notFound = result;
  *algn_10121C088 = 0;
  return result;
}

uint64_t *_NSRange.notFound.unsafeMutableAddressor()
{
  if (qword_1011B9A18 != -1)
  {
    swift_once();
  }

  return &static _NSRange.notFound;
}

uint64_t static _NSRange.notFound.getter()
{
  if (qword_1011B9A18 != -1)
  {
    swift_once();
  }

  return static _NSRange.notFound;
}

Swift::tuple_first___C__NSRange_second___C__NSRange __swiftcall _NSRange.difference(_:)(__C::_NSRange a1)
{
  v3 = v1 + v2;
  v4 = __OFADD__(v1, v2);
  if (v1 < a1.location)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (__OFADD__(a1.location, a1.length))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    v11 = v2;
    v13 = v1;
    swift_once();
    v2 = v11;
    v1 = v13;
    goto LABEL_39;
  }

  if (a1.location + a1.length >= v3)
  {
    if (qword_1011B9A18 == -1)
    {
LABEL_44:
      v1 = static _NSRange.notFound;
      v2 = *algn_10121C088;
      v5 = static _NSRange.notFound;
      v7 = *algn_10121C088;
      goto LABEL_45;
    }

LABEL_47:
    swift_once();
    goto LABEL_44;
  }

LABEL_10:
  v5 = a1.location + a1.length;
  if (__OFADD__(a1.location, a1.length))
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v1 < a1.location || v5 <= v1)
  {
    goto LABEL_27;
  }

  v6 = 0;
  v2 = a1.location - v1;
  if (!__OFSUB__(a1.location, v1))
  {
    while (1)
    {
      v7 = v3 - v5;
      if (__OFSUB__(v3, v5))
      {
        goto LABEL_49;
      }

      if (!v6)
      {
        break;
      }

      if (v5 >= v3)
      {
        goto LABEL_38;
      }

      v3 = v1 + v2;
      if (__OFADD__(v1, v2))
      {
        __break(1u);
LABEL_54:
        v12 = v7;
        v14 = a1.location + a1.length;
        swift_once();
        v7 = v12;
        v5 = v14;
LABEL_42:
        v1 = v5;
        v2 = v7;
        v5 = static _NSRange.notFound;
        v7 = *algn_10121C088;
        goto LABEL_45;
      }

      if (v3 < v5)
      {
        goto LABEL_45;
      }

      v8 = __OFADD__(v5, v7);
      v9 = v5 + v7;
      if (v8)
      {
        __break(1u);
        goto LABEL_56;
      }

      if (v3 > v9)
      {
        v9 = v1 + v2;
      }

      if (v5 < v1)
      {
        v1 = a1.location + a1.length;
      }

      v2 = v9 - v1;
      if (!__OFSUB__(v9, v1))
      {
        goto LABEL_38;
      }

      __break(1u);
LABEL_27:
      if (a1.location < v1 || v3 <= a1.location)
      {
        goto LABEL_38;
      }

      v6 = v1 < a1.location && v2 > 0;
      v2 = a1.location - v1;
      if (__OFSUB__(a1.location, v1))
      {
        goto LABEL_37;
      }
    }

    if (v5 < v3)
    {
      if (qword_1011B9A18 != -1)
      {
        goto LABEL_54;
      }

      goto LABEL_42;
    }

    if (qword_1011B9A18 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_47;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  if (qword_1011B9A18 != -1)
  {
    goto LABEL_52;
  }

LABEL_39:
  v5 = static _NSRange.notFound;
  v7 = *algn_10121C088;
LABEL_45:
  a1.location = v1;
  a1.length = v2;
  v1 = v5;
  v2 = v7;
LABEL_56:
  result.first = a1;
  result.second.length = v2;
  result.second.location = v1;
  return result;
}

Swift::Int_optional __swiftcall _NSRange.NSRangeIterator.next()()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v2 = 1;
  }

  else
  {
    v3 = *(v0 + 8);
    if (__OFADD__(*v0, v3))
    {
      __break(1u);
    }

    else if (v1 >= *v0 + v3)
    {
      v1 = 0;
      v2 = 1;
    }

    else
    {
      v2 = 0;
      *(v0 + 16) = v1 + 1;
    }
  }

  result.value = v1;
  result.is_nil = v2;
  return result;
}

void sub_100C2FF10(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (*(v1 + 24))
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 8);
  if (!__OFADD__(*v1, v3))
  {
    if (v2 < *v1 + v3)
    {
      v4 = 0;
      *(v1 + 16) = v2 + 1;
LABEL_7:
      *a1 = v2;
      *(a1 + 8) = v4;
      return;
    }

    v2 = 0;
LABEL_6:
    v4 = 1;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100C2FF68(uint64_t a1@<X8>)
{
  v2 = v1[1];
  if (v2 >= 1)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2 < 1;
}

uint64_t WeakWrapper.value.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*WeakWrapper.value.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100C30024;
}

uint64_t sub_100C30024()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t WeakWrapper.init(value:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

BOOL static WeakWrapper.== infix(_:_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v2 = v1;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v2;
    }
  }

  else if (!v1)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t Int.romanNumeral.getter(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v1 = a1;
  for (i = 0; i != 13; ++i)
  {
    v3 = qword_100F0CD28[*(&off_1010EFEB8 + i + 32)];
    if (v1 >= v3)
    {
      v4 = 0xE100000000000000;
      v5 = 77;
      switch(*(&off_1010EFEB8 + i + 32))
      {
        case 1:
          v4 = 0xE200000000000000;
          v5 = 19779;
          break;
        case 2:
          v5 = 68;
          break;
        case 3:
          v4 = 0xE200000000000000;
          v5 = 17475;
          break;
        case 4:
          v5 = 67;
          break;
        case 5:
          v4 = 0xE200000000000000;
          v5 = 17240;
          break;
        case 6:
          v5 = 76;
          break;
        case 7:
          v4 = 0xE200000000000000;
          v5 = 19544;
          break;
        case 8:
          v5 = 88;
          break;
        case 9:
          v4 = 0xE200000000000000;
          v5 = 22601;
          break;
        case 0xA:
          v5 = 86;
          break;
        case 0xB:
          v4 = 0xE200000000000000;
          v5 = 22089;
          break;
        case 0xC:
          v5 = 73;
          break;
        default:
          goto LABEL_18;
      }

      do
      {
LABEL_18:
        v1 -= v3;
        v6._countAndFlagsBits = v5;
        v6._object = v4;
        String.append(_:)(v6);
      }

      while (v1 >= v3);
    }
  }

  return 0;
}

uint64_t RomanNumerals.rawValue.getter(char a1)
{
  result = 77;
  switch(a1)
  {
    case 1:
      result = 19779;
      break;
    case 2:
      result = 68;
      break;
    case 3:
      result = 17475;
      break;
    case 4:
      result = 67;
      break;
    case 5:
      result = 17240;
      break;
    case 6:
      result = 76;
      break;
    case 7:
      result = 19544;
      break;
    case 8:
      result = 88;
      break;
    case 9:
      result = 22601;
      break;
    case 10:
      result = 86;
      break;
    case 11:
      result = 22089;
      break;
    case 12:
      result = 73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100C30348(char *a1, char *a2)
{
  v2 = *a2;
  v3 = RomanNumerals.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == RomanNumerals.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100C303D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  RomanNumerals.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100C30434()
{
  RomanNumerals.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_100C30488()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  RomanNumerals.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100C304E8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14MusicUtilities13RomanNumeralsO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100C30518@<X0>(uint64_t *a1@<X8>)
{
  result = RomanNumerals.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100C30554()
{
  result = sub_100C31264(&off_1010F0040);
  static NSDirectionalEdgeInsets.Edge.all = result;
  return result;
}

uint64_t *NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor()
{
  if (qword_1011B9A20 != -1)
  {
    swift_once();
  }

  return &static NSDirectionalEdgeInsets.Edge.all;
}

uint64_t static NSDirectionalEdgeInsets.Edge.all.getter()
{
  if (qword_1011B9A20 != -1)
  {
    swift_once();
  }
}

double NSDirectionalEdgeInsets.init(edge:length:)(uint64_t a1, double a2)
{
  if (sub_10000FC04(0, a1))
  {
    v4 = a2;
  }

  else
  {
    v4 = 0.0;
  }

  sub_10000FC04(1u, a1);
  sub_10000FC04(2u, a1);
  sub_10000FC04(3u, a1);

  return v4;
}

uint64_t sub_100C306D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100C3121C(&qword_1011BA688, &type metadata accessor for IndexPath), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100C3121C(&qword_1011BA690, &type metadata accessor for IndexPath);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

id sub_100C308E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_100C309F0(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1006BF00C(a1, v2);
}

unint64_t sub_100C30A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100C30A90(a1, v6, a2, a3);
}

unint64_t sub_100C30A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin(a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_100C30C18(uint64_t result, uint64_t a2)
{
  v2 = _swiftEmptyArrayStorage;
  v21 = a2 < 1;
  if (a2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = result;
    if (__OFADD__(result, a2))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v4 = 0;
    if (result <= result + a2)
    {
      v5 = result + a2;
    }

    else
    {
      v5 = result;
    }

    v6 = &_swiftEmptyArrayStorage[4];
    while (v5 != v3)
    {
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_30;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_10010FC20(&qword_1011BA680);
        v10 = swift_allocObject();
        v11 = j__malloc_size(v10);
        v12 = v11 - 32;
        if (v11 < 32)
        {
          v12 = v11 - 25;
        }

        v13 = v12 >> 3;
        v10[2] = v9;
        v10[3] = 2 * (v12 >> 3);
        v14 = (v10 + 4);
        v15 = v2[3] >> 1;
        if (v2[2])
        {
          v16 = v2 + 4;
          if (v10 != v2 || v14 >= v16 + 8 * v15)
          {
            memmove(v10 + 4, v16, 8 * v15);
          }

          v2[2] = 0;
        }

        v6 = (v14 + 8 * v15);
        v4 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v2 = v10;
      }

      v17 = __OFSUB__(v4--, 1);
      if (v17)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      *v6++ = v3++;
      if (v21)
      {
        break;
      }
    }
  }

  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v17)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100C30DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BA5C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100C30E14()
{
  result = qword_1011BA5C8;
  if (!qword_1011BA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA5C8);
  }

  return result;
}

void sub_100C30E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v10 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v10))
    {
      goto LABEL_7;
    }

    v9 += a1 - v10;
  }

  if (!__OFSUB__(a2, a1))
  {
    __DataStorage._length.getter();
    sub_100C2BF28(v9, a4, a5, &v11);
    return;
  }

  __break(1u);
LABEL_7:
  __break(1u);
}

unint64_t _s14MusicUtilities13RomanNumeralsO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010EFEE8, v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100C30F74()
{
  result = qword_1011BA5D0;
  if (!qword_1011BA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA5D0);
  }

  return result;
}

unint64_t sub_100C30FCC()
{
  result = qword_1011BA5D8;
  if (!qword_1011BA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA5D8);
  }

  return result;
}

unint64_t sub_100C31024()
{
  result = qword_1011BA5E0;
  if (!qword_1011BA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA5E0);
  }

  return result;
}

unint64_t sub_100C310C0()
{
  result = qword_1011BA5F8[0];
  if (!qword_1011BA5F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1011BA5F8);
  }

  return result;
}

__n128 sub_100C31134(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100C31148(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C31168(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_100C311A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100C3121C(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_100C31264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BA698);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t MPModelObject.humanDescription(including:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 8250;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  _print_unlocked<A, B>(_:_:)();
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v14;
  v7[4] = v2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100C3188C;
  *(v8 + 24) = v7;
  v13[4] = sub_100029B94;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100029B9C;
  v13[3] = &unk_1010F1620;
  v9 = _Block_copy(v13);

  v10 = v2;

  [v6 performWithoutEnforcement:v9];
  _Block_release(v9);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v12 = v14[0];

    return v12;
  }

  return result;
}

uint64_t sub_100C31598(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = sub_100C55708(*(a1 + 16), 0);
  v30 = sub_100BCDE68(v32, v6 + 32, v4, a1);

  sub_10005C9F8();
  if (v30 != v4)
  {
    __break(1u);
LABEL_4:
    v6 = _swiftEmptyArrayStorage;
  }

  *&v32[0] = v6;
  sub_100C327C8(v32);
  v7 = *&v32[0];
  v8 = *(*&v32[0] + 16);
  if (!v8)
  {
  }

  v9 = 0;
  v10 = *&v32[0] + 32;
  while (v9 < *(v7 + 16))
  {
    if (!*(v10 + v9))
    {
      strcpy(v32, " identifiers=");
      HIWORD(v32[0]) = -4864;
      v11 = [a3 identifiers];
      v12 = [v11 description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16._countAndFlagsBits = v13;
      v16._object = v15;
      String.append(_:)(v16);

LABEL_8:
      v18 = *(&v32[0] + 1);
      v17 = *&v32[0];
      goto LABEL_9;
    }

    if (*(v10 + v9) == 1)
    {
      *&v32[0] = 23328;
      *(&v32[0] + 1) = 0xE200000000000000;
      v20 = [a3 shortDescription];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24._countAndFlagsBits = v21;
      v24._object = v23;
      String.append(_:)(v24);

      v25._countAndFlagsBits = 93;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      goto LABEL_8;
    }

    sub_100C32900();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    InstanceVariable = class_getInstanceVariable(ObjCClassFromMetadata, "_storage");
    if (!InstanceVariable)
    {
      goto LABEL_10;
    }

    strcpy(v31, " properties=");
    BYTE5(v31[1]) = 0;
    HIWORD(v31[1]) = -5120;
    if (object_getIvar(a3, InstanceVariable))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v32, 0, sizeof(v32));
    }

    sub_10010FC20(&qword_1011BADF0);
    v28._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v28);

    v17 = v31[0];
    v18 = v31[1];
LABEL_9:
    v19 = v18;
    String.append(_:)(*&v17);

LABEL_10:
    if (v8 == ++v9)
    {
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_100C31898()
{
  result = qword_1011BA6A8;
  if (!qword_1011BA6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA6A8);
  }

  return result;
}

uint64_t sub_100C31954()
{
  v1 = v0;
  v2 = [v0 title];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xED0000676E6F5320;
    v4 = 0x64656C7469746E55;
  }

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 34;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = [v1 album];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 shortDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x206D75626C41203BLL;
    v16._object = 0xE800000000000000;
    String.append(_:)(v16);
  }

  v17 = [v1 artist];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 shortDescription];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 0x747369747241203BLL;
    v24._object = 0xE900000000000020;
    String.append(_:)(v24);
  }

  return 0x22203A656C746954;
}

uint64_t sub_100C31D54()
{
  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0x8000000100E461C0;
    v3 = 0xD000000000000011;
  }

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 34;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0x22203A656D614ELL;
}

uint64_t sub_100C31E28()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100C32788;
  *(v2 + 24) = v1;
  v12 = v2;
  v3 = v0;
  sub_10010FC20(&qword_1011BA6B0);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 2236475;
  v5._object = 0xE300000000000000;
  String.append(_:)(v5);
  v6 = [v3 anyObject];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 shortDescription];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10010FC20(&qword_1011BA6B8);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 34;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0x203A65707954;
}

uint64_t sub_100C32170()
{
  v1 = v0;
  v2 = [v0 title];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0x8000000100E69760;
    v4 = 0xD000000000000010;
  }

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 34;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = [v1 show];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 shortDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x20776F6853203BLL;
    v16._object = 0xE700000000000000;
    String.append(_:)(v16);
  }

  v17 = [v1 season];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 shortDescription];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 0x6E6F73616553203BLL;
    v24._object = 0xE900000000000020;
    String.append(_:)(v24);
  }

  return 0x22203A656C746954;
}

id sub_100C32474(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_100C324E4()
{
  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0x8000000100E69740;
    v3 = 0xD000000000000010;
  }

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 34;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0x22203A656D614ELL;
}

uint64_t sub_100C32798@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

Swift::Int sub_100C327C8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100C57488(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100C3294C(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_100C32900()
{
  result = qword_1011BA6C0;
  if (!qword_1011BA6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011BA6C0);
  }

  return result;
}

uint64_t sub_100C3294C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_100C57370(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_100BCDAD8((*a3 + *v79), (*a3 + *v81), *a3 + v82, v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100C2888C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_100C2888C((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_100BCDAD8((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), *a3 + v75, v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100C57370(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_100C572E4(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_100C32E8C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100C288A0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100C32F80(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100C28BC4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100C3306C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100C289D4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_10010FC20(&qword_1011BA4F8);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100C331A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
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

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1001270A4(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100C34170(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_100C33294(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100C28E24(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for URLQueryItem();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t String.components(wrappedToLineLength:bullet:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v78 = a1;
  v9 = type metadata accessor for CharacterSet();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79._countAndFlagsBits = a4;
  v79._object = a5;
  static CharacterSet.newlines.getter();
  v68 = sub_100009934();
  v13 = StringProtocol.components(separatedBy:)();
  v14 = *(v10 + 8);
  v14(v12, v9);
  result = v13;
  v73 = *(v13 + 16);
  if (v73)
  {
    v16 = 0;
    v71 = a2;
    v72 = v13 + 32;
    v17 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v17 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v66 = v17;
    v18 = _swiftEmptyArrayStorage;
    v69 = v13;
    v70 = a3;
    while (1)
    {
      if (v16 >= *(result + 16))
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        return result;
      }

      v19 = (v72 + 16 * v16);
      v20 = *v19;
      v21 = v19[1];
      v85 = v18;
      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        v76 = v16;
        v23 = objc_allocWithZone(NSScanner);

        v75 = v21;
        v24 = v18;
        v25 = String._bridgeToObjectiveC()();
        v26 = [v23 initWithString:v25];

        v84._countAndFlagsBits = sub_100C33A48(v71, a3, &v85);
        v84._object = v27;
        static CharacterSet.whitespaces.getter();
        v28 = NSScanner.scanUpToCharacters(from:)();
        v30 = v29;
        v14(v12, v9);
        v74 = v24;
        v77 = v24;
        if (v30)
        {
          v77 = v74;
          while (1)
          {
            v31 = v84;
            v32 = String.count.getter();
            result = String.count.getter();
            v33 = v32 + result;
            if (__OFADD__(v32, result))
            {
              break;
            }

            v34 = __OFADD__(v33, 1);
            v35 = v33 + 1;
            if (v34)
            {
              goto LABEL_49;
            }

            if (v35 > v78)
            {
              v79 = v31;
              v82 = 606827356;
              v83 = 0xE400000000000000;
              v80 = 0;
              v81 = 0xE000000000000000;
              v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v67 = v39;

              swift_beginAccess();
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v40 = v77;
              }

              else
              {
                v40 = sub_100C288A0(0, *(v77 + 2) + 1, 1, v77);
              }

              v42 = *(v40 + 2);
              v41 = *(v40 + 3);
              if (v42 >= v41 >> 1)
              {
                v40 = sub_100C288A0((v41 > 1), v42 + 1, 1, v40);
              }

              *(v40 + 2) = v42 + 1;
              v43 = &v40[16 * v42];
              v44 = v67;
              *(v43 + 4) = v38;
              *(v43 + 5) = v44;
              v77 = v40;
              v85 = v40;
              swift_endAccess();
              if (v66)
              {
                result = String.count.getter();
                v45 = result + 1;
                if (__OFADD__(result, 1))
                {
                  goto LABEL_51;
                }

                v46._countAndFlagsBits = 32;
                v46._object = 0xE100000000000000;
                v48 = String.init(repeating:count:)(v46, v45);
                countAndFlagsBits = v48._countAndFlagsBits;
                object = v48._object;
              }

              else
              {
                countAndFlagsBits = 0;
                object = 0xE000000000000000;
              }

              v79._countAndFlagsBits = countAndFlagsBits;
              v79._object = object;

              v50._countAndFlagsBits = v28;
              v50._object = v30;
              String.append(_:)(v50);

              v51._countAndFlagsBits = 32;
              v51._object = 0xE100000000000000;
              String.append(_:)(v51);

              v84 = v79;
            }

            else
            {
              v79._countAndFlagsBits = v28;
              v79._object = v30;

              v36._countAndFlagsBits = 32;
              v36._object = 0xE100000000000000;
              String.append(_:)(v36);

              String.append(_:)(v79);
            }

            static CharacterSet.whitespaces.getter();
            v28 = NSScanner.scanUpToCharacters(from:)();
            v30 = v37;
            v14(v12, v9);
            if (!v30)
            {
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

LABEL_31:
        v52 = (v84._object >> 56) & 0xF;
        if ((v84._object & 0x2000000000000000) == 0)
        {
          v52 = v84._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v52)
        {
          v79 = v84;
          v82 = 606827356;
          v83 = 0xE400000000000000;
          v80 = 0;
          v81 = 0xE000000000000000;
          v53 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v55 = v54;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v56 = v77;
          }

          else
          {
            v56 = sub_100C288A0(0, *(v77 + 2) + 1, 1, v77);
          }

          v58 = *(v56 + 2);
          v57 = *(v56 + 3);
          if (v58 >= v57 >> 1)
          {
            v56 = sub_100C288A0((v57 > 1), v58 + 1, 1, v56);
          }

          *(v56 + 2) = v58 + 1;
          v59 = &v56[16 * v58];
          *(v59 + 4) = v53;
          *(v59 + 5) = v55;
          a3 = v70;
          v18 = v56;
        }

        else
        {

          a3 = v70;
          v18 = v77;
        }
      }

      else
      {
        v60 = *(v18 + 2);
        if (!v60)
        {
          goto LABEL_8;
        }

        v75 = v21;
        v76 = v16;

        v61 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_100C288A0(0, v60 + 1, 1, v18);
        }

        v63 = *(v61 + 2);
        v62 = *(v61 + 3);
        if (v63 >= v62 >> 1)
        {
          v61 = sub_100C288A0((v62 > 1), v63 + 1, 1, v61);
        }

        *(v61 + 2) = v63 + 1;
        v64 = &v61[16 * v63];
        v65 = v75;
        *(v64 + 4) = v20;
        *(v64 + 5) = v65;
        v18 = v61;
      }

      result = v69;
      v16 = v76;
LABEL_8:
      if (++v16 == v73)
      {
        goto LABEL_47;
      }
    }
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_47:

  return v18;
}

uint64_t sub_100C33A48(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  swift_beginAccess();
  if (*(*a3 + 16))
  {
    result = String.count.getter();
    v7 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v8._countAndFlagsBits = 32;
      v8._object = 0xE100000000000000;
      return String.init(repeating:count:)(v8, v7)._countAndFlagsBits;
    }
  }

  else
  {

    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    return a1;
  }

  return result;
}

char *Array<A>.asciiBoxed()(uint64_t a1)
{
  v45 = *(a1 + 16);
  if (v45)
  {
    v46 = 0;
    v5 = 0;
    v43 = a1 + 32;
    while (1)
    {
      v2 = *(v43 + 8 * v5);
      v7 = v2[2];
      if (v7)
      {
        v4 = v2[4];
        v3 = v2[5];

        if (v7 != 1)
        {
          v8 = v2 + 5;
          v1 = 1;
          v42 = v5;
LABEL_10:
          v9 = &v8[2 * v1];
          while (1)
          {
            v10 = v2[2];
            if (v1 >= v10)
            {
              break;
            }

            v12 = *(v9 - 1);
            v11 = *v9;
            v13 = (v1 + 1);

            v14 = String.count.getter();
            if (v14 < String.count.getter())
            {

              v3 = v11;
              v4 = v12;
              v5 = v42;
              v15 = v7 - 1 == v1++;
              v8 = v2 + 5;
              if (v15)
              {
                goto LABEL_17;
              }

              goto LABEL_10;
            }

            v9 += 2;
            ++v1;
            if (v7 == v13)
            {
              v5 = v42;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_44;
        }

LABEL_17:
        v3 = String.count.getter();
      }

      else
      {
        v3 = 0;
      }

      ++v5;
      v6 = v46;
      if (v3 > v46)
      {
        v6 = v3;
      }

      v46 = v6;
      if (v5 == v45)
      {
        goto LABEL_19;
      }
    }
  }

  v46 = 0;
LABEL_19:
  v10 = v46;
  v7 = (v46 + 2);
  if (__OFADD__(v46, 2))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    v7 = sub_100C288A0((v10 > 1), v1, 1, v7);
    goto LABEL_40;
  }

  sub_100009934();
  v47 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v50 = v16;

  v17._countAndFlagsBits = 11441634;
  v17._object = 0xA300000000000000;
  String.append(_:)(v17);

  v40 = v47;
  v41 = v50;
  v48 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v51 = v18;

  v19._countAndFlagsBits = 10786018;
  v19._object = 0xA300000000000000;
  String.append(_:)(v19);

  if (!v45)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_42;
  }

  v20 = 0;
  v39 = a1 + 32;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    v21 = *(v39 + 8 * v20);
    if (v20)
    {
      v22 = v51;
    }

    else
    {
      v22 = v41;
    }

    if (v20)
    {
      v23 = v48;
    }

    else
    {
      v23 = v40;
    }

    v44 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100C288A0(0, *(v7 + 2) + 1, 1, v7);
    }

    v25 = *(v7 + 2);
    v24 = *(v7 + 3);
    if (v25 >= v24 >> 1)
    {
      v7 = sub_100C288A0((v24 > 1), v25 + 1, 1, v7);
    }

    *(v7 + 2) = v25 + 1;
    v26 = &v7[16 * v25];
    *(v26 + 4) = v23;
    *(v26 + 5) = v22;
    v27 = *(v21 + 16);
    if (v27)
    {
      v28 = v21 + 40;
      do
      {
        v29._countAndFlagsBits = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
        String.append(_:)(v29);

        v30._countAndFlagsBits = 8557794;
        v30._object = 0xA300000000000000;
        String.append(_:)(v30);

        v32 = *(v7 + 2);
        v31 = *(v7 + 3);
        if (v32 >= v31 >> 1)
        {
          v7 = sub_100C288A0((v31 > 1), v32 + 1, 1, v7);
        }

        *(v7 + 2) = v32 + 1;
        v33 = &v7[16 * v32];
        *(v33 + 4) = 545428706;
        *(v33 + 5) = 0xA400000000000000;
        v28 += 16;
        --v27;
      }

      while (v27);
    }

    v20 = v44 + 1;
  }

  while (v44 + 1 != v45);
  v49 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v52 = v34;

  v35._countAndFlagsBits = 11507170;
  v35._object = 0xA300000000000000;
  String.append(_:)(v35);

  v2 = v49;
  v3 = v52;
  v4 = *(v7 + 2);
  v10 = *(v7 + 3);
  v1 = v4 + 1;
  if (v4 >= v10 >> 1)
  {
    goto LABEL_45;
  }

LABEL_40:
  *(v7 + 2) = v1;
  v36 = &v7[16 * v4];
  *(v36 + 4) = v2;
  *(v36 + 5) = v3;
LABEL_42:

  return v7;
}

{
  sub_10010FC20(&qword_1011BA6C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = a1;

  v3 = Array<A>.asciiBoxed()(inited);
  swift_setDeallocating();
  sub_100C34108(inited + 32);
  return v3;
}

uint64_t Array<A>.appendStringComponents(_:lineLength:bullet:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = String.components(wrappedToLineLength:bullet:)(a3, a4, a5, a1, a2);

  return sub_100C32E8C(v5);
}

uint64_t sub_100C34108(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BA6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100C34170(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100C3433C();
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011BA6D8);
            v9 = sub_100AA5424(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100C342F0();
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

unint64_t sub_100C342F0()
{
  result = qword_1011BAD20;
  if (!qword_1011BAD20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011BAD20);
  }

  return result;
}

unint64_t sub_100C3433C()
{
  result = qword_1011BA6E0;
  if (!qword_1011BA6E0)
  {
    sub_1001109D0(&qword_1011BA6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA6E0);
  }

  return result;
}

uint64_t MPCPlaybackIntentOptions.debugDescription.getter(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100C288A0(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100C288A0((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x656D6D4979616C70;
  *(v5 + 5) = 0xEF796C6574616964;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100C288A0(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100C288A0((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6575517465736572;
    *(v8 + 5) = 0xEA00000000006575;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100C288A0(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100C288A0((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x4E70556F54646461;
    *(v11 + 5) = 0xEF64616548747865;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100C288A0(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100C288A0((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x4E70556F54646461;
  *(v14 + 5) = 0xEF6C696154747865;
  if ((a1 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100C288A0(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_100C288A0((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x5074726174736572;
    *(v17 + 5) = 0xEF6B63616279616CLL;
  }

LABEL_31:
  sub_10010FC20(&qword_1011BA6D0);
  sub_100C34764();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 93;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return 91;
}

__C::MPMediaLibraryFilteringOptions __swiftcall MPMediaLibraryFilteringOptions.init(_:)(NSNumber_optional a1)
{
  if (a1.value.super.super.isa)
  {
    isa = a1.value.super.super.isa;
    v2 = [(objc_class *)a1.value.super.super.isa unsignedIntegerValue];

    a1.value.super.super.isa = v2;
  }

  return a1.value.super.super.isa;
}

unint64_t sub_100C34764()
{
  result = qword_1011BA6E8;
  if (!qword_1011BA6E8)
  {
    sub_1001109D0(&qword_1011BA6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA6E8);
  }

  return result;
}

uint64_t GenericMusicItem.innerMusicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v121 = a1;
  v69 = type metadata accessor for UploadedVideo();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for UploadedAudio();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for TVShow();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TVSeason();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for TVEpisode();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Station();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Song();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for SocialProfile();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for RecordLabel();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for RadioShow();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Playlist();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MusicVideo();
  v101 = *(v12 - 8);
  v102 = v12;
  __chkstk_darwin(v12);
  v100 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicMovie();
  v104 = *(v14 - 8);
  v105 = v14;
  __chkstk_darwin(v14);
  v103 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Genre();
  v107 = *(v16 - 8);
  v108 = v16;
  __chkstk_darwin(v16);
  v106 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for EditorialItem();
  v110 = *(v18 - 8);
  v111 = v18;
  __chkstk_darwin(v18);
  v109 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Curator();
  v113 = *(v20 - 8);
  v114 = v20;
  __chkstk_darwin(v20);
  v112 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CreditArtist();
  v116 = *(v22 - 8);
  v117 = v22;
  __chkstk_darwin(v22);
  v115 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Composer();
  v118 = *(v24 - 8);
  v119 = v24;
  __chkstk_darwin(v24);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Artist();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Album();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for GenericMusicItem();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v67 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v38, v120, v35);
  v39 = (*(v36 + 88))(v38, v35);
  if (v39 == enum case for GenericMusicItem.album(_:))
  {
    (*(v36 + 96))(v38, v35);
    v40 = *(v32 + 32);
    v40(v34, v38, v31);
    v41 = v121;
    v121[3] = v31;
    v41[4] = &protocol witness table for Album;
    v42 = sub_10001C8B8(v41);
    return (v40)(v42, v34, v31);
  }

  v44 = v121;
  if (v39 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v36 + 96))(v38, v35);
    v45 = *(v28 + 32);
    v45(v30, v38, v27);
    v44[3] = v27;
    v44[4] = &protocol witness table for Artist;
    v46 = sub_10001C8B8(v44);
    return (v45)(v46, v30, v27);
  }

  if (v39 == enum case for GenericMusicItem.composer(_:))
  {
    (*(v36 + 96))(v38, v35);
    v47 = v119;
    v48 = *(v118 + 32);
    v48(v26, v38, v119);
    v44[3] = v47;
    v44[4] = sub_100C36F58(&qword_1011BA738, &type metadata accessor for Composer);
    v49 = sub_10001C8B8(v44);
    v50 = v26;
    return (v48)(v49, v50, v47);
  }

  if (v39 == enum case for GenericMusicItem.creditArtist(_:))
  {
    (*(v36 + 96))(v38, v35);
    v51 = v115;
    v48 = *(v116 + 32);
    v47 = v117;
    v48(v115, v38, v117);
    v44[3] = v47;
    v52 = &unk_1011BA730;
    v53 = &type metadata accessor for CreditArtist;
LABEL_9:
    v44[4] = sub_100C36F58(v52, v53);
    v49 = sub_10001C8B8(v44);
    v50 = v51;
    return (v48)(v49, v50, v47);
  }

  v54 = v121;
  if (v39 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v36 + 96))(v38, v35);
    v55 = v112;
    v56 = *(v113 + 32);
    v57 = v114;
    v56(v112, v38, v114);
    v58 = &protocol witness table for Curator;
LABEL_13:
    v54[3] = v57;
    v54[4] = v58;
LABEL_17:
    v61 = sub_10001C8B8(v54);
    return (v56)(v61, v55, v57);
  }

  if (v39 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v36 + 96))(v38, v35);
    v55 = v109;
    v56 = *(v110 + 32);
    v57 = v111;
    v56(v109, v38, v111);
    v54[3] = v57;
    v59 = &unk_1011BA728;
    v60 = &type metadata accessor for EditorialItem;
LABEL_16:
    v54[4] = sub_100C36F58(v59, v60);
    goto LABEL_17;
  }

  if (v39 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v36 + 96))(v38, v35);
    v55 = v106;
    v56 = *(v107 + 32);
    v57 = v108;
    v56(v106, v38, v108);
    v58 = &protocol witness table for Genre;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v36 + 96))(v38, v35);
    v55 = v103;
    v56 = *(v104 + 32);
    v57 = v105;
    v56(v103, v38, v105);
    v54[3] = v57;
    v59 = &unk_1011BA720;
    v60 = &type metadata accessor for MusicMovie;
    goto LABEL_16;
  }

  if (v39 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v36 + 96))(v38, v35);
    v57 = v102;
    v56 = *(v101 + 32);
    v55 = v100;
    v56(v100, v38, v102);
    v58 = &protocol witness table for MusicVideo;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v36 + 96))(v38, v35);
    v56 = *(v98 + 32);
    v55 = v97;
    v57 = v99;
    v56(v97, v38, v99);
    v58 = &protocol witness table for Playlist;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.radioShow(_:))
  {
    (*(v36 + 96))(v38, v35);
    v56 = *(v95 + 32);
    v55 = v94;
    v57 = v96;
    v56(v94, v38, v96);
    v58 = &protocol witness table for RadioShow;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.recordLabel(_:))
  {
    (*(v36 + 96))(v38, v35);
    v56 = *(v92 + 32);
    v55 = v91;
    v57 = v93;
    v56(v91, v38, v93);
    v58 = &protocol witness table for RecordLabel;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.socialProfile(_:))
  {
    (*(v36 + 96))(v38, v35);
    v56 = *(v89 + 32);
    v55 = v88;
    v57 = v90;
    v56(v88, v38, v90);
    v54[3] = v57;
    v59 = &unk_1011BA718;
    v60 = &type metadata accessor for SocialProfile;
    goto LABEL_16;
  }

  if (v39 == enum case for GenericMusicItem.song(_:))
  {
    (*(v36 + 96))(v38, v35);
    v56 = *(v86 + 32);
    v55 = v85;
    v57 = v87;
    v56(v85, v38, v87);
    v58 = &protocol witness table for Song;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.station(_:))
  {
    (*(v36 + 96))(v38, v35);
    v62 = *(v83 + 32);
    v63 = v82;
    v64 = v84;
    v62(v82, v38, v84);
    v44[3] = v64;
    v44[4] = &protocol witness table for Station;
    v65 = sub_10001C8B8(v44);
    return (v62)(v65, v63, v64);
  }

  else
  {
    if (v39 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v36 + 96))(v38, v35);
      v48 = *(v80 + 32);
      v51 = v79;
      v47 = v81;
      v48(v79, v38, v81);
      v44[3] = v47;
      v52 = &unk_1011BA710;
      v53 = &type metadata accessor for TVEpisode;
      goto LABEL_9;
    }

    if (v39 == enum case for GenericMusicItem.tvSeason(_:))
    {
      (*(v36 + 96))(v38, v35);
      v48 = *(v77 + 32);
      v51 = v76;
      v47 = v78;
      v48(v76, v38, v78);
      v44[3] = v47;
      v52 = &unk_1011BA708;
      v53 = &type metadata accessor for TVSeason;
      goto LABEL_9;
    }

    if (v39 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v36 + 96))(v38, v35);
      v48 = *(v74 + 32);
      v51 = v73;
      v47 = v75;
      v48(v73, v38, v75);
      v44[3] = v47;
      v52 = &unk_1011BA700;
      v53 = &type metadata accessor for TVShow;
      goto LABEL_9;
    }

    if (v39 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v36 + 96))(v38, v35);
      v48 = *(v71 + 32);
      v51 = v70;
      v47 = v72;
      v48(v70, v38, v72);
      v44[3] = v47;
      v52 = &unk_1011BA6F8;
      v53 = &type metadata accessor for UploadedAudio;
      goto LABEL_9;
    }

    if (v39 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v36 + 96))(v38, v35);
      v48 = *(v68 + 32);
      v51 = v67;
      v47 = v69;
      v48(v67, v38, v69);
      v44[3] = v47;
      v52 = &unk_1011BA6F0;
      v53 = &type metadata accessor for UploadedVideo;
      goto LABEL_9;
    }

    v66 = (v36 + 8);
    if (v39 == enum case for GenericMusicItem.other(_:))
    {
      result = (*v66)(v38, v35);
      v44[4] = 0;
      *v44 = 0u;
      *(v44 + 1) = 0u;
    }

    else
    {
      v121[4] = 0;
      *v44 = 0u;
      *(v44 + 1) = 0u;
      return (*v66)(v38, v35);
    }
  }

  return result;
}

uint64_t GenericMusicItem.catalogID.getter()
{
  v0 = type metadata accessor for TVShow();
  v37 = *(v0 - 8);
  v38 = v0;
  __chkstk_darwin(v0);
  v36 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TVSeason();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TVEpisode();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Song();
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin(v6);
  v45 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v48 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicVideo();
  v52 = *(v10 - 8);
  v53 = v10;
  __chkstk_darwin(v10);
  v51 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MusicMovie();
  v54 = *(v12 - 8);
  v55 = v12;
  __chkstk_darwin(v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Artist();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Album();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GenericMusicItem();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v26, v56, v23);
  v27 = (*(v24 + 88))(v26, v23);
  if (v27 != enum case for GenericMusicItem.album(_:))
  {
    if (v27 == enum case for GenericMusicItem.artist(_:))
    {
      (*(v24 + 96))(v26, v23);
      (*(v16 + 32))(v18, v26, v15);
      v28 = Artist.catalogID.getter();
      (*(v16 + 8))(v18, v15);
      return v28;
    }

    if (v27 != enum case for GenericMusicItem.composer(_:) && v27 != enum case for GenericMusicItem.curator(_:) && v27 != enum case for GenericMusicItem.editorialItem(_:) && v27 != enum case for GenericMusicItem.genre(_:))
    {
      if (v27 == enum case for GenericMusicItem.musicMovie(_:))
      {
        (*(v24 + 96))(v26, v23);
        v30 = v54;
        v29 = v55;
        (*(v54 + 32))(v14, v26, v55);
        v28 = MusicMovie.catalogID.getter();
        (*(v30 + 8))(v14, v29);
        return v28;
      }

      if (v27 == enum case for GenericMusicItem.musicVideo(_:))
      {
        (*(v24 + 96))(v26, v23);
        v31 = v51;
        v32 = v52;
        v33 = v53;
        (*(v52 + 32))(v51, v26, v53);
        v34 = MusicVideo.catalogID.getter();
LABEL_15:
        v28 = v34;
        (*(v32 + 8))(v31, v33);
        return v28;
      }

      if (v27 == enum case for GenericMusicItem.playlist(_:))
      {
        (*(v24 + 96))(v26, v23);
        v31 = v48;
        v32 = v49;
        v33 = v50;
        (*(v49 + 32))(v48, v26, v50);
        v34 = Playlist.catalogID.getter();
        goto LABEL_15;
      }

      if (v27 != enum case for GenericMusicItem.radioShow(_:) && v27 != enum case for GenericMusicItem.recordLabel(_:) && v27 != enum case for GenericMusicItem.socialProfile(_:))
      {
        if (v27 == enum case for GenericMusicItem.song(_:))
        {
          (*(v24 + 96))(v26, v23);
          v31 = v45;
          v32 = v46;
          v33 = v47;
          (*(v46 + 32))(v45, v26, v47);
          v34 = Song.catalogID.getter();
          goto LABEL_15;
        }

        if (v27 != enum case for GenericMusicItem.station(_:))
        {
          if (v27 == enum case for GenericMusicItem.tvEpisode(_:))
          {
            (*(v24 + 96))(v26, v23);
            v31 = v42;
            v32 = v43;
            v33 = v44;
            (*(v43 + 32))(v42, v26, v44);
            v34 = TVEpisode.catalogID.getter();
            goto LABEL_15;
          }

          if (v27 == enum case for GenericMusicItem.tvSeason(_:))
          {
            (*(v24 + 96))(v26, v23);
            v31 = v39;
            v32 = v40;
            v33 = v41;
            (*(v40 + 32))(v39, v26, v41);
            v34 = TVSeason.catalogID.getter();
            goto LABEL_15;
          }

          if (v27 == enum case for GenericMusicItem.tvShow(_:))
          {
            (*(v24 + 96))(v26, v23);
            v31 = v36;
            v32 = v37;
            v33 = v38;
            (*(v37 + 32))(v36, v26, v38);
            v34 = TVShow.catalogID.getter();
            goto LABEL_15;
          }
        }
      }
    }

    (*(v24 + 8))(v26, v23);
    return 0;
  }

  (*(v24 + 96))(v26, v23);
  (*(v20 + 32))(v22, v26, v19);
  v28 = Album.catalogID.getter();
  (*(v20 + 8))(v22, v19);
  return v28;
}

uint64_t Playlist.Entry.InternalItem.musicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Playlist.Entry.InternalItem();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for MusicMovie();
    a1[3] = v10;
    v11 = &unk_1011BA720;
    v12 = &type metadata accessor for MusicMovie;
LABEL_3:
    v13 = sub_100C36F58(v11, v12);
LABEL_8:
    a1[4] = v13;
    v14 = sub_10001C8B8(a1);
    return (*(*(v10 - 8) + 32))(v14, v8, v10);
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for MusicVideo();
    a1[3] = v10;
    v13 = &protocol witness table for MusicVideo;
    goto LABEL_8;
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for Song();
    a1[3] = v10;
    v13 = &protocol witness table for Song;
    goto LABEL_8;
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for TVEpisode();
    a1[3] = v10;
    v11 = &unk_1011BA710;
    v12 = &type metadata accessor for TVEpisode;
    goto LABEL_3;
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for UploadedAudio();
    a1[3] = v10;
    v11 = &unk_1011BA6F8;
    v12 = &type metadata accessor for UploadedAudio;
    goto LABEL_3;
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for UploadedVideo();
    a1[3] = v10;
    v11 = &unk_1011BA6F0;
    v12 = &type metadata accessor for UploadedVideo;
    goto LABEL_3;
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v17 = 0xD000000000000028;
  v18 = 0x8000000100E42000;
  sub_100C36F58(&qword_1011BA740, &type metadata accessor for Playlist.Entry.InternalItem);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Artist.pinPlayabilityStatus(isOnline:explicitContentIsAllowed:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = Artist.trackCount.getter();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = Artist.cleanTrackCount.getter();
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v12 = Artist.downloadedTrackCount.getter();
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v15 = Artist.downloadedCleanTrackCount.getter();
  if (v16)
  {
    if ((a1 & 1) == 0)
    {
      if ((a2 & 1) == 0)
      {
        if (v11 <= 0)
        {
          if (v14 <= 0)
          {
            goto LABEL_36;
          }

          goto LABEL_20;
        }

LABEL_27:
        v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.networkUnavailable(_:);
        goto LABEL_28;
      }

      goto LABEL_22;
    }
  }

  else if ((a1 & 1) == 0)
  {
    if (a2)
    {
LABEL_22:
      if (v14 <= 0)
      {
        goto LABEL_27;
      }

LABEL_23:
      v17 = &enum case for MusicPlayer.PlayabilityStatus.playable(_:);
      goto LABEL_30;
    }

    if (v11 >= 1 && !v15)
    {
      goto LABEL_27;
    }

    if (v14 < 1 || v15)
    {
      if (v15 <= 0)
      {
LABEL_36:
        v20 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
        v21 = *(*(v20 - 8) + 104);
        if (v8 < 1)
        {
          v28 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
        }

        else
        {
          v28 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:);
        }

        v23 = *v28;
        v22 = a3;
        goto LABEL_29;
      }

      goto LABEL_23;
    }

LABEL_20:
    v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:);
LABEL_28:
    v19 = *v18;
    v20 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
    v21 = *(*(v20 - 8) + 104);
    v22 = a3;
    v23 = v19;
LABEL_29:
    v21(v22, v23, v20);
    v17 = &enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
    goto LABEL_30;
  }

  if (!v8)
  {
    v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
    goto LABEL_28;
  }

  v17 = &enum case for MusicPlayer.PlayabilityStatus.playable(_:);
  if ((a2 & 1) == 0 && v11 <= 0)
  {
    goto LABEL_20;
  }

LABEL_30:
  v24 = *v17;
  v25 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v26 = *(*(v25 - 8) + 104);

  return v26(a3, v24, v25);
}

uint64_t MusicPin.Action.symbolName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPin.Action();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MusicPin.Action.navigate(_:))
  {
    return 0;
  }

  if (v7 == enum case for MusicPin.Action.play(_:))
  {
    return 0x6C69662E79616C70;
  }

  if (v7 != enum case for MusicPin.Action.shuffle(_:))
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return 0x656C6666756873;
}

uint64_t sub_100C36EF0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BA748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100C36F58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100C36FB8(void (*a1)(uint64_t))
{
  v43 = type metadata accessor for TimeZone();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = __chkstk_darwin(v6);
  v36 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = v35 - v9;
  v10 = sub_10010FC20(&qword_1011BA588);
  __chkstk_darwin(v10 - 8);
  v12 = v35 - v11;
  v13 = sub_10010FC20(&qword_1011BA590);
  __chkstk_darwin(v13 - 8);
  v15 = v35 - v14;
  v16 = type metadata accessor for DateComponents();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10010FC20(&qword_1011BA748);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = v35 - v22;
  a1(v21);
  if (v24)
  {
    v25 = type metadata accessor for Date();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
LABEL_6:
    sub_100C36EF0(v23);
    return 0;
  }

  v35[1] = v4;
  if (qword_1011B99F8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Calendar();
  sub_1000060E4(v26, static Calendar.musicDefaultCalendar);
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  (*(v2 + 56))(v12, 1, 1, v43);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  Calendar.date(from:)();
  (*(v17 + 8))(v19, v16);
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v23, 1, v27) == 1)
  {
    goto LABEL_6;
  }

  v30 = v36;
  static ParseableFormatStyle<>.dateTime.getter();
  v31 = v37;
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  v32 = v39;
  Date.FormatStyle.year(_:)();
  (*(v38 + 8))(v31, v40);
  v33 = v42;
  v34 = *(v41 + 8);
  v34(v30, v42);
  Calendar.timeZone.getter();
  Date.FormatStyle.timeZone.setter();
  sub_100C36F58(&qword_1011BA750, &type metadata accessor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v34(v32, v33);
  (*(v28 + 8))(v23, v27);
  return v44;
}

uint64_t sub_100C37620(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_100C309F0(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C376B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void (**a5)(uint64_t, void *, NSObject *)@<X4>, int a6@<W5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  LODWORD(v761) = a6;
  v749 = a5;
  v751 = a4;
  v742 = a3;
  v746 = a2;
  v19 = a14;
  v744 = a13;
  v740 = a11;
  v739 = a10;
  v729 = sub_10010FC20(&qword_1011BA4F8);
  v728 = *(v729 - 8);
  __chkstk_darwin(v729);
  v727 = v656 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v730 = v656 - v22;
  swift_getAssociatedTypeWitness();
  v741 = a15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v757 = type metadata accessor for CollectionDifference.Change();
  *&v692 = v757[-1];
  __chkstk_darwin(v757);
  v766 = (v656 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v756 = (v656 - v27);
  v28 = type metadata accessor for CollectionDifference();
  WitnessTable = swift_getWitnessTable();
  v721 = type metadata accessor for IndexingIterator();
  *&v691 = *(v721 - 8);
  __chkstk_darwin(v721);
  v764 = v656 - v29;
  v711 = *(v28 - 8);
  __chkstk_darwin(v30);
  v725 = v656 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v706 = v656 - v33;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v708 = type metadata accessor for Optional();
  v690 = *(v708 - 8);
  __chkstk_darwin(v708);
  v718 = (v656 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v758 = (v656 - v36);
  v762 = v28;
  v37 = type metadata accessor for Optional();
  __chkstk_darwin(v37 - 8);
  v713 = v656 - v38;
  v701 = sub_10010FC20(&qword_1011BA928);
  __chkstk_darwin(v701);
  v769 = (v656 - v39);
  v765 = AssociatedTypeWitness;
  v702 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v40);
  *&v752 = v656 - v41;
  v42 = a1;
  v712 = swift_checkMetadataState();
  v693 = *(v712 - 8);
  __chkstk_darwin(v712);
  v698 = v656 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v710 = v656 - v45;
  v699 = *(a14 - 1);
  __chkstk_darwin(v46);
  v686 = v656 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v688 = v656 - v49;
  __chkstk_darwin(v50);
  v687 = v656 - v51;
  __chkstk_darwin(v52);
  v697 = v656 - v53;
  __chkstk_darwin(v54);
  v705 = v656 - v55;
  __chkstk_darwin(v56);
  v720 = v656 - v57;
  __chkstk_darwin(v58);
  v750 = (v656 - v59);
  __chkstk_darwin(v60);
  v768 = (v656 - v61);
  v770 = type metadata accessor for IndexPath();
  v753 = *(v770 - 8);
  __chkstk_darwin(v770);
  v709 = v656 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v703 = v656 - v64;
  __chkstk_darwin(v65);
  v696 = v656 - v66;
  __chkstk_darwin(v67);
  v695 = v656 - v68;
  __chkstk_darwin(v69);
  v694 = v656 - v70;
  __chkstk_darwin(v71);
  v707 = v656 - v72;
  __chkstk_darwin(v73);
  v689 = v656 - v74;
  __chkstk_darwin(v75);
  v738 = v656 - v76;
  __chkstk_darwin(v77);
  v726 = v656 - v78;
  __chkstk_darwin(v79);
  v81 = v656 - v80;
  __chkstk_darwin(v82);
  v715 = v656 - v83;
  __chkstk_darwin(v84);
  v735 = v656 - v85;
  __chkstk_darwin(v86);
  *&v733 = v656 - v87;
  __chkstk_darwin(v88);
  v734 = (v656 - v89);
  __chkstk_darwin(v90);
  v714 = v656 - v91;
  __chkstk_darwin(v92);
  v724 = v656 - v93;
  __chkstk_darwin(v94);
  v723 = v656 - v95;
  __chkstk_darwin(v96);
  v716 = v656 - v97;
  __chkstk_darwin(v98);
  v736 = v656 - v99;
  __chkstk_darwin(v100);
  v737 = v656 - v101;
  __chkstk_darwin(v102);
  v759 = v656 - v103;
  __chkstk_darwin(v104);
  v767 = v656 - v105;
  __chkstk_darwin(v106);
  *&v754 = v656 - v107;
  v731 = sub_10010FC20(&qword_1011BA930);
  v700 = *(v731 - 8);
  __chkstk_darwin(v731);
  v704 = v656 - v108;
  *a9 = 0;
  v109 = type metadata accessor for AIDiffingUpdate();
  v110 = v109[6];
  IndexSet.init()();
  v748 = v109[7];
  IndexSet.init()();
  v111 = v109[8];
  *(a9 + v111) = _swiftEmptyArrayStorage;
  v112 = (a9 + v109[9]);
  *v112 = 0;
  v112[1] = _swiftEmptyArrayStorage;
  v732 = v112;
  v113 = (a9 + v109[10]);
  *v113 = 0;
  v113[1] = _swiftEmptyArrayStorage;
  v743 = v113;
  v114 = (a9 + v109[11]);
  *v114 = 0;
  v114[1] = _swiftEmptyArrayStorage;
  v745 = v109[12];
  *(a9 + v745) = _swiftEmptyArrayStorage;
  *(a9 + 8) = a7;
  *(a9 + 16) = a8;
  v763 = a9;
  if (!v42)
  {
    sub_100030444(a7);
    sub_100020438(a12);
    sub_100020438(v739);
    sub_100020438(a7);

LABEL_14:

    *v763 = 1;
    return result;
  }

  v722 = a12;
  if (!v746)
  {
    sub_100030444(a7);
    sub_100020438(v722);
    sub_100020438(v739);
    sub_100020438(a7);
LABEL_13:

    goto LABEL_14;
  }

  v685 = v111;
  v682 = AssociatedConformanceWitness;
  sub_100030444(a7);

  v115 = Array.count.getter();
  v116 = v722;
  if (v115 <= 0 || (v669 = v115, v717 = v42, v117 = Array.count.getter(), v117 < 1))
  {

    sub_100020438(v116);
    sub_100020438(v739);
    sub_100020438(a7);

    goto LABEL_13;
  }

  TupleTypeMetadata3 = v117;
  v673 = v110;
  v678 = v81;
  if (qword_1011B9A28 != -1)
  {
    goto LABEL_365;
  }

  while (1)
  {
    v119 = type metadata accessor for Logger();
    v120 = sub_1000060E4(v119, qword_1011BA758);

    v755 = v120;
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.default.getter();

    v123 = os_log_type_enabled(v121, v122);
    v747 = v19;
    v684 = TupleTypeMetadata3;
    if (v123)
    {
      v124 = swift_slowAlloc();
      v774 = swift_slowAlloc();
      *v124 = 136315394;
      v125 = _typeName(_:qualified:)();
      v127 = sub_1000108DC(v125, v126, &v774);

      *(v124 + 4) = v127;
      *(v124 + 12) = 2080;
      v128 = Array.description.getter();
      v130 = sub_1000108DC(v128, v129, &v774);

      *(v124 + 14) = v130;
      v19 = v747;
      _os_log_impl(&_mh_execute_header, v121, v122, "Building update for section with item type %s, visible index paths: %s", v124, 0x16u);
      swift_arrayDestroy();
    }

    v672 = a8;
    v131 = v739;
    v668 = a7;
    if (v739)
    {
      v132 = swift_allocObject();
      v133 = v741;
      v132[2] = v19;
      v132[3] = v133;
      v134 = v740;
      v132[4] = v131;
      v132[5] = v134;
      v135 = sub_100C46DD0;
    }

    else
    {
      v132 = swift_allocObject();
      v133 = v741;
      v132[2] = v19;
      v132[3] = v133;
      v135 = sub_100C46BBC;
    }

    v137 = swift_allocObject();
    v137[2] = v19;
    v137[3] = v133;
    v137[4] = v135;
    v137[5] = v132;
    v676 = v137;
    sub_100030444(v131);
    v782 = sub_100C1C0E4(_swiftEmptyArrayStorage);
    v781 = &_swiftEmptySetSingleton;
    v774 = v717;
    __chkstk_darwin(v782);
    v656[-4] = v19;
    v656[-3] = v133;
    v656[-2] = &v781;
    v138 = type metadata accessor for Array();
    v139 = swift_getWitnessTable();
    v675 = sub_100006E28(sub_100C46BFC, &v656[-6], v138, &type metadata for String, &type metadata for Never, v139, &protocol witness table for Never, v140);
    v772[0] = v746;
    swift_getWitnessTable();
    v141 = Sequence.enumerated()();
    v772[0] = v774;
    __chkstk_darwin(v141);
    v656[-4] = v142;
    v656[-3] = v133;
    v656[-2] = &v782;
    __chkstk_darwin(v143);
    v656[-4] = v144;
    v656[-3] = v133;
    v656[-2] = sub_100C46C20;
    v656[-1] = v145;
    v146 = type metadata accessor for EnumeratedSequence();
    v780[1] = v139;
    v147 = swift_getWitnessTable();
    v149 = sub_100006E28(sub_100C46C2C, &v656[-6], v146, &type metadata for String, &type metadata for Never, v147, &protocol witness table for Never, v148);
    v150 = v675;

    v151 = v781;
    if (v781[2] != *(v150 + 16))
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v207 = Logger.logObject.getter();
      v208 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        v210 = swift_slowAlloc();
        v774 = v210;
        *v209 = 136446210;
        v211 = Array.description.getter();
        v213 = v212;

        v214 = sub_1000108DC(v211, v213, &v774);

        *(v209 + 4) = v214;
        v215 = "Found duplicate sections in old items, falling back to reload data. Sections: %{public}s";
LABEL_66:
        _os_log_impl(&_mh_execute_header, v207, v208, v215, v209, 0xCu);
        sub_10000959C(v210);

        sub_100020438(v722);
        sub_100020438(v739);
        sub_100020438(v668);
LABEL_68:

        *v763 = 1;
      }

LABEL_67:

      sub_100020438(v722);
      sub_100020438(v739);
      sub_100020438(v668);

      goto LABEL_68;
    }

    if (v149[2] != v684)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v207 = Logger.logObject.getter();
      v208 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        v210 = swift_slowAlloc();
        v774 = v210;
        *v209 = 136446210;
        v216 = Array.description.getter();
        v218 = v217;

        v219 = sub_1000108DC(v216, v218, &v774);

        *(v209 + 4) = v219;
        v215 = "Found duplicate sections in new items, falling back to reload data. Sections: %{public}s";
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    v658 = v149;
    v774 = v149;
    v772[0] = v150;
    sub_10010FC20(&qword_1011BA6D0);
    sub_100020674(&qword_1011BA6E8, &qword_1011BA6D0);
    BidirectionalCollection<>.difference<A>(from:)();
    v660 = sub_100C1C1E0(_swiftEmptyArrayStorage);
    v780[0] = v660;
    v779 = &_swiftEmptySetSingleton;
    v19 = v747;
    v663 = swift_getAssociatedConformanceWitness();
    v152 = type metadata accessor for OrderedSet();
    swift_getTupleTypeMetadata2();
    v153 = static Array._allocateUninitialized(_:)();
    v154 = sub_10003B618(v153, &type metadata for Int, v152, &protocol witness table for Int);
    v155 = v152;

    v683 = v154;
    v778 = v154;
    v156 = static Array._allocateUninitialized(_:)();
    v157 = sub_10003B618(v156, &type metadata for Int, v152, &protocol witness table for Int);

    v777 = v157;
    v774 = v742;

    sub_100C439C0(&v774);
    v656[1] = 0;
    v659 = v151;
    a8 = v774;
    v158 = v774[2];
    v159 = v754;
    v681 = v155;
    v680 = v158;
    if (v158)
    {
      a7 = 0;
      *&v679 = v774 + ((*(v753 + 80) + 32) & ~*(v753 + 80));
      v684 = (v753 + 16);
      v160 = (v753 + 8);
      v670 = v741 + 40;
      v662 = (v702 + 16);
      v667 = v693 + 8;
      v661 = (v702 + 8);
      v664 = (v741 + 32);
      v665 = (v699 + 8);
      TupleTypeMetadata3 = v762;
      v666 = (v753 + 8);
      v674 = v774;
      while (1)
      {
        if (a7 >= *(a8 + 16))
        {
          goto LABEL_355;
        }

        v161 = *(v753 + 16);
        v161(v159, v679 + *(v753 + 72) * a7, v770);
        if (IndexPath.section.getter() < v751)
        {
          (*v160)(v159, v770);
        }

        else
        {
          a8 = v765;
          if ((v761 & 1) != 0 || IndexPath.section.getter() <= v749)
          {
            v162 = v759;
            v163 = v770;
            v161(v759, v159, v770);
            v164 = v767;
            v165 = v162;
            v155 = v681;
            sub_100C41CE0(v767, v165);
            v677 = *v160;
            (v677)(v164, v163);
            v772[0] = IndexPath.section.getter();
            TupleTypeMetadata3 = &type metadata for Int;
            v19 = &protocol witness table for Int;
            Dictionary.subscript.getter();
            if (v775)
            {
              sub_100B46144(v774, v775);
            }

            else
            {
              v166 = IndexPath.section.getter();
              static Array._allocateUninitialized(_:)();
              v774 = OrderedSet.init(arrayLiteral:)();
              v775 = v167;
              v772[0] = v166;
              type metadata accessor for Dictionary();
              Dictionary.subscript.setter();
              v168 = IndexPath.section.getter();
              v169 = IndexPath.item.getter();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v774 = v780[0];
              v171 = v169;
              TupleTypeMetadata3 = &type metadata for Int;
              sub_100C43738(v171, v168, isUniquelyReferenced_nonNull_native);
              v660 = v774;
              v780[0] = v774;
            }

            v772[0] = IndexPath.section.getter();
            Dictionary.subscript.getter();
            if (v775)
            {
              sub_100B46144(v774, v775);
            }

            else
            {
              v172 = IndexPath.section.getter();
              static Array._allocateUninitialized(_:)();
              v774 = OrderedSet.init(arrayLiteral:)();
              v775 = v173;
              v772[0] = v172;
              type metadata accessor for Dictionary();
              Dictionary.subscript.setter();
            }

            if (__OFSUB__(IndexPath.section.getter(), v751))
            {
              goto LABEL_363;
            }

            Array.subscript.getter();
            v772[0] = IndexPath.section.getter();
            Dictionary.subscript.getter();
            v174 = v775;
            if (v775)
            {
              v671 = ContiguousArray.count.getter();
            }

            else
            {
              v671 = 0;
            }

            v776 = IndexPath.section.getter();
            type metadata accessor for Dictionary();
            v175 = Dictionary.subscript.modify();
            if (*(v176 + 8))
            {
              v177 = v710;
              (*(v741 + 40))(v747);
              v773 = IndexPath.item.getter();
              v178 = v712;
              v179 = dispatch thunk of Collection.subscript.read();
              v180 = v752;
              (*v662)(v752);
              v179(v772, 0);
              v181 = v177;
              v155 = v681;
              v182 = v178;
              v183 = v765;
              (*v667)(v181, v182);
              OrderedSet._append(_:)();
              v184 = v180;
              v159 = v754;
              (*v661)(v184, v183);
            }

            v175(&v774, 0);
            v772[0] = IndexPath.section.getter();
            v683 = v778;
            Dictionary.subscript.getter();
            if (v775)
            {
              v185 = ContiguousArray.count.getter();

              v19 = v747;
              if (v174 && v671 == v185)
              {
LABEL_339:

                swift_bridgeObjectRelease_n();

                swift_bridgeObjectRelease_n();

                v636 = Logger.logObject.getter();
                v637 = static os_log_type_t.fault.getter();
                if (os_log_type_enabled(v636, v637))
                {
                  v638 = swift_slowAlloc();
                  *v638 = 0;
                  _os_log_impl(&_mh_execute_header, v636, v637, "Found duplicate in old visible items, falling back to reload data.", v638, 2u);
                }

                sub_100020438(v722);

                sub_100020438(v739);
                sub_100020438(v668);
                (*v665)(v768, v19);
                (v677)(v159, v770);
                (*(v700 + 8))(v704, v731);
                *v763 = 1;

LABEL_347:
              }
            }

            else
            {
              v19 = v747;
              if (!v174)
              {
                goto LABEL_339;
              }
            }

            v186 = (*(v741 + 32))(v19);
            if (*(v782 + 16) && (sub_100019C40(v186, v187), (v188 & 1) != 0))
            {

              Array.subscript.getter();
              v189 = IndexPath.item.getter();
              v190 = *(v741 + 40);
              v191 = v710;
              v190(v19);
              v192 = v712;
              v193 = dispatch thunk of Collection.count.getter();
              v194 = *v667;
              v195 = v191;
              v155 = v681;
              (*v667)(v195, v192);
              v196 = v189 < v193;
              v197 = v159;
              if (v196)
              {
                v772[0] = IndexPath.section.getter();
                Dictionary.subscript.getter();
                v671 = v775;
                if (v775)
                {
                  v657 = ContiguousArray.count.getter();
                }

                else
                {
                  v657 = 0;
                }

                v776 = IndexPath.section.getter();
                v198 = Dictionary.subscript.modify();
                if (*(v199 + 8))
                {
                  v200 = v710;
                  v656[0] = v198;
                  (v190)(v747, v741);
                  v773 = IndexPath.item.getter();
                  v201 = v712;
                  v202 = dispatch thunk of Collection.subscript.read();
                  v203 = v752;
                  v204 = v765;
                  (*v662)(v752);
                  v202(v772, 0);
                  v194(v200, v201);
                  v155 = v681;
                  OrderedSet._append(_:)();
                  (*v661)(v203, v204);
                  (v656[0])(&v774, 0);
                }

                else
                {
                  v198(&v774, 0);
                  v155 = v681;
                }

                v772[0] = IndexPath.section.getter();
                Dictionary.subscript.getter();
                if (v775)
                {
                  v205 = ContiguousArray.count.getter();

                  v197 = v754;
                  if (v671 && v657 == v205)
                  {
LABEL_348:

                    swift_bridgeObjectRelease_n();

                    swift_bridgeObjectRelease_n();

                    v651 = Logger.logObject.getter();
                    v652 = static os_log_type_t.fault.getter();
                    if (os_log_type_enabled(v651, v652))
                    {
                      v653 = swift_slowAlloc();
                      *v653 = 0;
                      _os_log_impl(&_mh_execute_header, v651, v652, "Found duplicate in new visible items, falling back to reload data.", v653, 2u);
                    }

                    sub_100020438(v722);

                    sub_100020438(v739);
                    sub_100020438(v668);
                    v654 = *v665;
                    v655 = v747;
                    (*v665)(v750, v747);
                    v654(v768, v655);
                    (v677)(v754, v770);
                    (*(v700 + 8))(v704, v731);

                    *v763 = 1;
                  }
                }

                else
                {
                  v197 = v754;
                  if (!v671)
                  {
                    goto LABEL_348;
                  }
                }
              }

              v206 = *v665;
              v19 = v747;
              (*v665)(v750, v747);
              v206(v768, v19);
              v160 = v666;
              (v677)(v197, v770);
              TupleTypeMetadata3 = v762;
              v159 = v197;
            }

            else
            {

              (*v665)(v768, v19);
              v160 = v666;
              (v677)(v159, v770);
              TupleTypeMetadata3 = v762;
            }
          }

          else
          {
            (*v160)(v159, v770);
          }

          a8 = v674;
        }

        if (v680 == ++a7)
        {
          goto LABEL_71;
        }
      }
    }

    TupleTypeMetadata3 = v762;
LABEL_71:

    swift_getTupleTypeMetadata2();
    v220 = static Array._allocateUninitialized(_:)();
    v221 = sub_10003B618(v220, &type metadata for Int, TupleTypeMetadata3, &protocol witness table for Int);

    a7 = v683 + 64;
    v222 = *(v683 + 64);
    v776 = v221;
    v223 = 1 << *(v683 + 32);
    v224 = -1;
    if (v223 < 64)
    {
      v224 = ~(-1 << v223);
    }

    a8 = v224 & v222;
    v225 = (v223 + 63) >> 6;
    v750 = (v711 + 56);

    v226 = 0;
    while (1)
    {
      v227 = v731;
      if (!a8)
      {
        break;
      }

      v228 = v155;
      TupleTypeMetadata3 = v226;
LABEL_81:
      v229 = __clz(__rbit64(a8)) | (TupleTypeMetadata3 << 6);
      v230 = *(*(v683 + 48) + 8 * v229);
      a8 &= a8 - 1;
      v231 = (*(v683 + 56) + 16 * v229);
      v232 = *v231;
      v233 = v231[1];
      v768 = v230;
      v772[0] = v230;
      v234 = v232;

      v235 = v228;
      v236 = Dictionary.subscript.getter();
      v237 = v775;
      if (v775)
      {
        *&v752 = v656;
        *&v754 = v774;
        v761 = v234;
        v772[0] = v234;
        v772[1] = v233;
        v759 = v233;
        __chkstk_darwin(v236);
        v238 = v741;
        v656[-12] = v747;
        v656[-11] = v238;
        v239 = v676;
        v656[-10] = sub_100C46BC4;
        v656[-9] = v239;
        v240 = v744;
        v656[-8] = v722;
        v656[-7] = v240;
        v656[-6] = v241;
        v656[-5] = v237;
        v656[-4] = v780;
        v242 = v768;
        v243 = v763;
        v656[-3] = v768;
        v656[-2] = v243;
        swift_getWitnessTable();
        v244 = v713;
        v155 = v681;
        BidirectionalCollection.difference<A>(from:by:)();
        (*v750)(v244, 0, 1, v762);
        v774 = v242;
        type metadata accessor for Dictionary();
        Dictionary.subscript.setter();

        v19 = v747;

        v226 = TupleTypeMetadata3;
      }

      else
      {

        v226 = TupleTypeMetadata3;
        v19 = v747;
        v155 = v235;
      }
    }

    while (1)
    {
      TupleTypeMetadata3 = v226 + 1;
      if (__OFADD__(v226, 1))
      {
        goto LABEL_354;
      }

      if (TupleTypeMetadata3 >= v225)
      {
        break;
      }

      a8 = *(a7 + 8 * TupleTypeMetadata3);
      ++v226;
      if (a8)
      {
        v228 = v155;
        goto LABEL_81;
      }
    }

    v245 = v769;
    (*(v700 + 16))(v769, v704, v227);
    v246 = *(v701 + 36);
    v247 = sub_100020674(&qword_1011BA938, &qword_1011BA930);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*(v245 + v246) != v774)
    {
      *&v248 = 134349056;
      v754 = v248;
      *&v248 = 134349312;
      v752 = v248;
      v759 = v246;
      do
      {
        a7 = v19;
        v19 = v247;
        v424 = dispatch thunk of Collection.subscript.read();
        v426 = *v425;
        v427 = v425[2];
        v428 = v425[3];
        TupleTypeMetadata3 = *(v425 + 32);
        v429 = *(v425 + 33);
        v761 = v425[1];
        v768 = v427;
        MPCPlaybackEngine.Configuration.options.getter();
        v424(&v774, 0);
        v247 = v19;
        dispatch thunk of Collection.formIndex(after:)();
        a8 = v426 + v751;
        v430 = __OFADD__(v426, v751);
        if (v429)
        {
          if (v430)
          {
            goto LABEL_360;
          }

          if ((TupleTypeMetadata3 & 1) == 0)
          {
            v436 = v426 + v751;
            v437 = v428 + v751;
            if (__OFADD__(v428, v751))
            {
              goto LABEL_367;
            }

            v438 = Logger.logObject.getter();
            v439 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v438, v439))
            {
              v440 = swift_slowAlloc();
              *v440 = v752;
              *(v440 + 4) = v436;
              *(v440 + 12) = 2050;
              *(v440 + 14) = v437;
              _os_log_impl(&_mh_execute_header, v438, v439, "[Remove] Moving section from %{public}ld to %{public}ld", v440, 0x16u);
            }

            v441 = *&v763[v685];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v441 = sub_100C28BC4(0, *(v441 + 2) + 1, 1, v441);
            }

            v443 = *(v441 + 2);
            v442 = *(v441 + 3);
            if (v443 >= v442 >> 1)
            {
              v441 = sub_100C28BC4((v442 > 1), v443 + 1, 1, v441);
            }

            sub_100C46CF0();
            *(v441 + 2) = v443 + 1;
            v444 = &v441[16 * v443];
            *(v444 + 4) = v436;
            *(v444 + 5) = v437;
LABEL_224:
            *&v763[v685] = v441;
            v19 = v747;
            goto LABEL_194;
          }

          v19 = a7;
          v431 = Logger.logObject.getter();
          v432 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v431, v432))
          {
            v433 = swift_slowAlloc();
            *v433 = v754;
            *(v433 + 4) = a8;
            _os_log_impl(&_mh_execute_header, v431, v432, "Deleting section %{public}ld", v433, 0xCu);
            v19 = v747;
          }
        }

        else
        {
          if (v430)
          {
            goto LABEL_361;
          }

          if ((TupleTypeMetadata3 & 1) == 0)
          {
            v445 = v426 + v751;
            v446 = v428 + v751;
            if (__OFADD__(v428, v751))
            {
              goto LABEL_368;
            }

            v447 = Logger.logObject.getter();
            v448 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v447, v448))
            {
              v449 = swift_slowAlloc();
              *v449 = v752;
              *(v449 + 4) = v446;
              *(v449 + 12) = 2050;
              *(v449 + 14) = v445;
              _os_log_impl(&_mh_execute_header, v447, v448, "[Insert] Moving section from %{public}ld to %{public}ld", v449, 0x16u);
            }

            v441 = *&v763[v685];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v441 = sub_100C28BC4(0, *(v441 + 2) + 1, 1, v441);
            }

            v451 = *(v441 + 2);
            v450 = *(v441 + 3);
            if (v451 >= v450 >> 1)
            {
              v441 = sub_100C28BC4((v450 > 1), v451 + 1, 1, v441);
            }

            sub_100C46CF0();
            *(v441 + 2) = v451 + 1;
            v452 = &v441[16 * v451];
            *(v452 + 4) = v446;
            *(v452 + 5) = v445;
            goto LABEL_224;
          }

          v19 = a7;
          v431 = Logger.logObject.getter();
          v434 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v431, v434))
          {
            v435 = swift_slowAlloc();
            *v435 = v754;
            *(v435 + 4) = a8;
            _os_log_impl(&_mh_execute_header, v431, v434, "Inserting section %{public}ld", v435, 0xCu);
            v19 = v747;
          }
        }

        IndexSet.insert(_:)(a8);
        sub_100C46CF0();
LABEL_194:
        v423 = v769;
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*(v423 + v759) != v774);
    }

    sub_100C46CF8(v769);
    v249 = sub_100C1C1E0(_swiftEmptyArrayStorage);
    v251 = (v776 + 64);
    v250 = *(v776 + 64);
    v252 = 1 << *(v776 + 32);
    v253 = -1;
    v773 = v249;
    if (v252 < 64)
    {
      v253 = ~(-1 << v252);
    }

    v685 = v253 & v250;
    v661 = ((v252 + 63) >> 6);
    v254 = TupleTypeMetadata2;
    v666 = (TupleTypeMetadata2 - 8);
    v681 = (v711 + 16);
    v684 = (v711 + 32);
    v665 = (v690 + 32);
    v670 = v741 + 32;
    v750 = (v692 + 16);
    v749 = (v692 + 32);
    v769 = (v753 + 16);
    v768 = (v753 + 8);
    v748 = (v702 + 8);
    v663 = (v691 + 8);
    v671 = (v699 + 8);
    v664 = (v711 + 8);
    v667 = v776;

    v255 = 0;
    *&v256 = 134349312;
    v691 = v256;
    *&v256 = 136446210;
    v692 = v256;
    *&v256 = 136446466;
    v679 = v256;
    a8 = v765;
    TupleTypeMetadata3 = v762;
    v257 = v764;
    v258 = v758;
    v662 = v251;
LABEL_88:
    a7 = v718;
    v259 = v685;
    if (v685)
    {
      v680 = v255;
      v260 = v255;
      goto LABEL_98;
    }

    v261 = v661 <= v255 + 1 ? v255 + 1 : v661;
    v262 = v261 - 1;
LABEL_94:
    v260 = v255 + 1;
    if (!__OFADD__(v255, 1))
    {
      break;
    }

LABEL_353:
    __break(1u);
LABEL_354:
    __break(1u);
LABEL_355:
    __break(1u);
LABEL_356:
    __break(1u);
LABEL_357:
    __break(1u);
LABEL_358:
    __break(1u);
LABEL_359:
    __break(1u);
LABEL_360:
    __break(1u);
LABEL_361:
    __break(1u);
LABEL_362:
    __break(1u);
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
LABEL_365:
    swift_once();
  }

  if (v260 >= v661)
  {
    v685 = 0;
    v271 = 1;
    v680 = v262;
    goto LABEL_99;
  }

  v259 = v251[v260];
  ++v255;
  if (!v259)
  {
    goto LABEL_94;
  }

  v680 = v260;
LABEL_98:
  v685 = (v259 - 1) & v259;
  v263 = __clz(__rbit64(v259)) | (v260 << 6);
  v264 = *(*(v667 + 48) + 8 * v263);
  v265 = v711;
  v266 = v706;
  (*(v711 + 16))(v706, *(v667 + 56) + *(v711 + 72) * v263, TupleTypeMetadata3);
  v267 = TupleTypeMetadata2;
  v268 = *(TupleTypeMetadata2 + 48);
  v269 = v718;
  *v718 = v264;
  v270 = *(v265 + 32);
  v254 = v267;
  v270(&v269[v268], v266, TupleTypeMetadata3);
  a7 = v269;
  v271 = 0;
LABEL_99:
  v272 = *(v254 - 8);
  (*(v272 + 56))(a7, v271, 1, v254);
  (*v665)(v258, a7, v708);
  if ((*(v272 + 48))(v258, 1, v254) == 1)
  {

    v453 = 0;
    v736 = (v741 + 40);
    v454 = *(v741 + 32);
    v756 = (v693 + 8);
    v737 = (v699 + 16);
    v745 = v753 + 32;
    *&v455 = 134350594;
    v733 = v455;
    v456 = v669;
    v748 = v454;
    while (1)
    {
      if (v453 >= v456)
      {
        goto LABEL_370;
      }

      v457 = (v453 + 1);
      if (__OFADD__(v453, 1))
      {
        goto LABEL_371;
      }

      v458 = v705;
      Array.subscript.getter();
      v459 = v454(v19, v741);
      v461 = v782;
      if (!*(v782 + 16))
      {
        (*v671)(v458, v19);

        goto LABEL_227;
      }

      v462 = sub_100019C40(v459, v460);
      v464 = v463;

      if ((v464 & 1) == 0)
      {
        (*v671)(v705, v19);
        goto LABEL_227;
      }

      v749 = (v453 + 1);
      v465 = *(*(v461 + 7) + 8 * v462);
      v466 = v741;
      v467 = *(v741 + 40);
      v467(v19, v741);
      v766 = v465;
      Array.subscript.getter();
      v468 = v710;
      v467(v19, v466);
      v469 = v712;
      v470 = dispatch thunk of Collection.count.getter();
      v471 = *v756;
      (*v756)(v468, v469);
      v472 = dispatch thunk of Collection.count.getter();
      v764 = v470;
      v473 = __OFSUB__(v472, v470);
      v474 = v472 - v470;
      if (v473)
      {
        goto LABEL_372;
      }

      v475 = v687;
      if (v474 < 0)
      {
        v473 = __OFSUB__(0, v474);
        v474 = -v474;
        if (v473)
        {
          goto LABEL_375;
        }
      }

      v762 = v472;
      swift_beginAccess();
      v750 = v773;
      v476 = sub_100C37620(v766, v773);
      v478 = v477;
      swift_endAccess();
      if (v478)
      {
        v479 = 0;
      }

      else
      {
        v479 = v476;
      }

      v765 = v474 + v479;
      if (__OFADD__(v474, v479))
      {
        goto LABEL_373;
      }

      v763 = dispatch thunk of Collection.count.getter();
      v480 = *v737;
      v481 = v747;
      (*v737)(v475, v705, v747);
      v482 = v688;
      v734 = v480;
      v480(v688, v697, v481);
      v483 = Logger.logObject.getter();
      v484 = static os_log_type_t.default.getter();
      v485 = os_log_type_enabled(v483, v484);
      *&v754 = v471;
      v735 = v461;
      if (v485)
      {
        v486 = swift_slowAlloc();
        v761 = swift_slowAlloc();
        v771 = v761;
        *v486 = v733;
        *(v486 + 4) = v453;
        *(v486 + 12) = 2082;
        WitnessTable = v483;
        LODWORD(v759) = v484;
        v487 = v748;
        v488 = v748(v481, v741);
        v489 = v475;
        v491 = v490;
        v492 = *v671;
        (*v671)(v489, v481);
        v493 = sub_1000108DC(v488, v491, &v771);

        *(v486 + 14) = v493;
        *(v486 + 22) = 2050;
        *(v486 + 24) = v766;
        *(v486 + 32) = 2080;
        v494 = v688;
        v495 = v487(v481, v741);
        v497 = v496;
        *&v752 = v492;
        v492(v494, v481);
        v498 = sub_1000108DC(v495, v497, &v771);

        *(v486 + 34) = v498;
        *(v486 + 42) = 2050;
        *(v486 + 44) = v474;
        *(v486 + 52) = 2050;
        *(v486 + 54) = v765;
        *(v486 + 62) = 2082;
        v774 = sub_100C37620(v766, v750);
        LOBYTE(v775) = v499 & 1;
        sub_10010FC20(&qword_1011BA948);
        v500 = String.init<A>(describing:)();
        v502 = sub_1000108DC(v500, v501, &v771);

        *(v486 + 64) = v502;
        v503 = WitnessTable;
        _os_log_impl(&_mh_execute_header, WitnessTable, v759, "Section %{public}ld(%{public}s) mapped to section %{public}ld(%s): difference=%{public}ld adjustedDifference=%{public}ld diffAdjustmentMap=%{public}s", v486, 0x48u);
        swift_arrayDestroy();

        v466 = v741;
      }

      else
      {

        v504 = *v671;
        (*v671)(v482, v481);
        *&v752 = v504;
        v504(v475, v481);
      }

      v774 = _swiftEmptyArrayStorage;
      v505 = v764;
      if (v762 > v764)
      {
        v505 = v762;
      }

      v506 = (v505 - 1);
      if (__OFSUB__(v505, 1))
      {
        goto LABEL_374;
      }

      swift_beginAccess();
      isa = _swiftEmptyArrayStorage[2];
      if (isa >= v765)
      {
        v591 = _swiftEmptyArrayStorage;
        v557 = v709;
        goto LABEL_304;
      }

      v761 = v453 + v751;
      v508 = __OFADD__(v453, v751);
      LODWORD(v762) = v508;
      v509 = v766;
      if (v763 >= v764)
      {
        v509 = v453;
      }

      v758 = (v509 + v751);
      v510 = __OFADD__(v509, v751);
      LODWORD(v759) = v510;
      WitnessTable = &_swiftEmptyArrayStorage[2];
      v757 = _swiftEmptyArrayStorage;
      do
      {
        while (1)
        {
          if (v506 < 0)
          {

            v639 = v686;
            v640 = v705;
            v734(v686, v705, v481);
            v641 = Logger.logObject.getter();
            v642 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v641, v642))
            {
              v643 = swift_slowAlloc();
              v644 = swift_slowAlloc();
              v771 = v644;
              *v643 = v692;
              v645 = v748(v481, v466);
              v647 = v646;
              v648 = v752;
              (v752)(v639, v481);
              v649 = sub_1000108DC(v645, v647, &v771);

              *(v643 + 4) = v649;
              _os_log_impl(&_mh_execute_header, v641, v642, "We ran out of items while trying to build index paths for section with identifier %{public}s", v643, 0xCu);
              sub_10000959C(v644);

              sub_100020438(v722);

              sub_100020438(v739);
              sub_100020438(v668);
              v648(v697, v481);
              (v754)(v698, v712);
              v648(v640, v481);
            }

            else
            {

              sub_100020438(v722);

              sub_100020438(v739);
              sub_100020438(v668);
              v650 = v752;
              (v752)(v639, v481);
              v650(v697, v481);
              (v754)(v698, v712);
              v650(v640, v481);
            }

            (*(v700 + 8))(v704, v731);

            goto LABEL_191;
          }

          if (v762)
          {
            __break(1u);
LABEL_367:
            __break(1u);
LABEL_368:
            __break(1u);
LABEL_369:
            __break(1u);
LABEL_370:
            __break(1u);
LABEL_371:
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            __break(1u);
LABEL_374:
            __break(1u);
LABEL_375:
            __break(1u);

            __break(1u);
            return result;
          }

          IndexPath.init(item:section:)();
          v511 = v779;
          v512 = *(v779 + 2);
          v766 = v506;
          if (v512)
          {
            sub_100C46E04(&qword_1011BA688, &type metadata accessor for IndexPath);
            v513 = dispatch thunk of Hashable._rawHashValue(seed:)();
            v514 = -1 << v511[32];
            v515 = v513 & ~v514;
            if ((*&v511[((v515 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v515))
            {
              v516 = ~v514;
              v517 = *(v753 + 72);
              v518 = *(v753 + 16);
              while (1)
              {
                v519 = v767;
                v518(v767, *(v511 + 6) + v517 * v515, v770);
                sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath);
                v520 = dispatch thunk of static Equatable.== infix(_:_:)();
                v521 = *v768;
                (*v768)(v519, v770);
                if (v520)
                {
                  break;
                }

                v515 = (v515 + 1) & v516;
                if (((*&v511[((v515 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v515) & 1) == 0)
                {
                  goto LABEL_263;
                }
              }

              v539 = v689;
              v540 = v738;
              v518(v689, v738, v770);
              v541 = Logger.logObject.getter();
              v542 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v541, v542))
              {
                v543 = swift_slowAlloc();
                v544 = swift_slowAlloc();
                v771 = v544;
                *v543 = v692;
                sub_100C46E04(&qword_1011BA940, &type metadata accessor for IndexPath);
                v545 = v770;
                v546 = dispatch thunk of CustomStringConvertible.description.getter();
                v548 = v547;
                v521(v539, v545);
                v549 = sub_1000108DC(v546, v548, &v771);

                *(v543 + 4) = v549;
                _os_log_impl(&_mh_execute_header, v541, v542, "%{public}s contained in the visible index paths set, skipping", v543, 0xCu);
                sub_10000959C(v544);

                v521(v540, v545);
              }

              else
              {

                v556 = v770;
                v521(v539, v770);
                v521(v540, v556);
              }

              v481 = v747;
              v557 = v709;
              v523 = v766;
              goto LABEL_294;
            }
          }

LABEL_263:
          if (v759)
          {
            goto LABEL_369;
          }

          v522 = v707;
          v523 = v766;
          IndexPath.init(item:section:)();
          v524 = (*(v753 + 80) + 32) & ~*(v753 + 80);
          if (v763 < v764)
          {
            break;
          }

          v533 = *v743;
          v532 = v743[1];
          v534 = v532 + v524;
          v535 = *(v532 + 16);
          if (*v743)
          {

            sub_100C458DC(v522, v534, v535, (v533 + 16), v533 + 32);
            v537 = v536;

            if (v537)
            {
              goto LABEL_296;
            }

            v538 = *v769;
          }

          else
          {
            if (!v535)
            {
              goto LABEL_296;
            }

            v553 = *(v753 + 72);
            v538 = *(v753 + 16);
            while (1)
            {
              v554 = v767;
              v538(v767, v534, v770);
              sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath);
              v555 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v768)(v554, v770);
              if (v555)
              {
                break;
              }

              v534 += v553;
              if (!--v535)
              {
                goto LABEL_296;
              }
            }

            v523 = v766;
          }

          v558 = v695;
          v538(v695, v522, v770);
          v559 = Logger.logObject.getter();
          v573 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v559, v573))
          {
LABEL_292:

            v579 = *v768;
            v580 = v770;
            (*v768)(v558, v770);
            v579(v738, v580);
            v579(v522, v580);
            goto LABEL_293;
          }

          v561 = swift_slowAlloc();
          v574 = v558;
          v563 = swift_slowAlloc();
          v771 = v563;
          *v561 = v692;
          sub_100C46E04(&qword_1011BA940, &type metadata accessor for IndexPath);
          v564 = v770;
          v575 = dispatch thunk of CustomStringConvertible.description.getter();
          v577 = v576;
          v568 = *v768;
          (*v768)(v574, v564);
          v578 = sub_1000108DC(v575, v577, &v771);

          *(v561 + 4) = v578;
          v570 = v573;
          v571 = v559;
          v572 = "%{public}s contained in the deleted index paths set, skipping";
LABEL_291:
          _os_log_impl(&_mh_execute_header, v571, v570, v572, v561, 0xCu);
          sub_10000959C(v563);

          v568(v738, v564);
          v568(v707, v564);
          v523 = v766;
LABEL_293:
          v481 = v747;
          v557 = v709;
LABEL_294:
          v506 = v523 - 1;
          isa = WitnessTable->isa;
          v466 = v741;
          if (WitnessTable->isa >= v765)
          {
            goto LABEL_303;
          }
        }

        v526 = *v732;
        v525 = v732[1];
        v527 = v525 + v524;
        v528 = *(v525 + 16);
        if (*v732)
        {

          sub_100C458DC(v522, v527, v528, (v526 + 16), v526 + 32);
          v530 = v529;

          if ((v530 & 1) == 0)
          {
            v531 = *v769;
LABEL_286:
            v558 = v694;
            v531(v694, v522, v770);
            v559 = Logger.logObject.getter();
            v560 = static os_log_type_t.default.getter();
            if (!os_log_type_enabled(v559, v560))
            {
              goto LABEL_292;
            }

            v561 = swift_slowAlloc();
            v562 = v558;
            v563 = swift_slowAlloc();
            v771 = v563;
            *v561 = v692;
            sub_100C46E04(&qword_1011BA940, &type metadata accessor for IndexPath);
            v564 = v770;
            v565 = dispatch thunk of CustomStringConvertible.description.getter();
            v567 = v566;
            v568 = *v768;
            (*v768)(v562, v564);
            v569 = sub_1000108DC(v565, v567, &v771);

            *(v561 + 4) = v569;
            v570 = v560;
            v571 = v559;
            v572 = "%{public}s contained in the inserted index paths set, skipping";
            goto LABEL_291;
          }
        }

        else if (v528)
        {
          v550 = *(v753 + 72);
          v531 = *(v753 + 16);
          while (1)
          {
            v551 = v767;
            v531(v767, v527, v770);
            sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath);
            v552 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*v768)(v551, v770);
            if (v552)
            {
              break;
            }

            v527 += v550;
            if (!--v528)
            {
              goto LABEL_296;
            }
          }

          v523 = v766;
          goto LABEL_286;
        }

LABEL_296:
        (*v769)(v696, v522, v770);
        v581 = v757;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v581 = sub_100C289AC(0, v581[2].isa + 1, 1, v581);
        }

        v481 = v747;
        v466 = v741;
        v582 = v738;
        v583 = v766;
        v585 = v581[2].isa;
        v584 = v581[3].isa;
        if (v585 >= v584 >> 1)
        {
          v581 = sub_100C289AC(v584 > 1, v585 + 1, 1, v581);
        }

        v581[2].isa = (v585 + 1);
        v586 = v581 + 2;
        v587 = v753;
        v588 = v581 + v524 + *(v753 + 72) * v585;
        v589 = v770;
        (*(v753 + 32))(v588, v696, v770);
        v757 = v581;
        v774 = v581;
        v590 = *(v587 + 8);
        v590(v582, v589);
        v590(v707, v589);
        v506 = v583 - 1;
        WitnessTable = v581 + 2;
        isa = v581[2].isa;
      }

      while (v586->isa < v765);
      v557 = v709;
LABEL_303:
      v591 = v757;
LABEL_304:
      v757 = v591;

      if (v763 >= v764)
      {
        if (isa)
        {
          v606 = 0;
          v607 = *(v753 + 72);
          v608 = (*(v753 + 80) + 32) & ~*(v753 + 80);
          v609 = v757 + v608;
          v610 = *(v753 + 16);
          v766 = (v757 + v608);
          v610(v557, v757 + v608, v770);
          while (1)
          {
            v612 = *v743;
            v611 = v743[1];
            v613 = v611 + v608;
            v614 = *(v611 + 16);
            if (*v743)
            {

              sub_100C458DC(v557, v613, v614, (v612 + 16), v612 + 32);
              v616 = v615;

              if (v616)
              {
                v557 = v709;
                goto LABEL_331;
              }

              v557 = v709;
            }

            else
            {
              if (!v614)
              {
                goto LABEL_331;
              }

              do
              {
                v617 = v767;
                v610(v767, v613, v770);
                sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath);
                v618 = dispatch thunk of static Equatable.== infix(_:_:)();
                (*v768)(v617, v770);
                if (v618)
                {
                  v609 = v766;
                  goto LABEL_322;
                }

                v613 += v607;
                --v614;
              }

              while (v614);
              v609 = v766;
LABEL_331:
              sub_100C452C0(v557);
            }

LABEL_322:
            v606 = (v606 + 1);
            (*v768)(v557, v770);
            if (v606 == isa)
            {
              break;
            }

            v610(v557, (v609 + v607 * v606), v770);
          }
        }

        v619 = Logger.logObject.getter();
        v630 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v619, v630))
        {
          v621 = swift_slowAlloc();
          v622 = swift_slowAlloc();
          v771 = v622;
          *v621 = v692;

          v631 = Array.description.getter();
          v633 = v632;

          v634 = sub_1000108DC(v631, v633, &v771);

          *(v621 + 4) = v634;
          v627 = v630;
          v628 = v619;
          v629 = "Non visible adjustment: deleting %{public}s";
LABEL_337:
          _os_log_impl(&_mh_execute_header, v628, v627, v629, v621, 0xCu);
          sub_10000959C(v622);
        }
      }

      else
      {
        if (isa)
        {
          v592 = 0;
          v593 = *(v753 + 72);
          v594 = (*(v753 + 80) + 32) & ~*(v753 + 80);
          v595 = v757 + v594;
          v596 = *(v753 + 16);
          v597 = v703;
          v766 = (v757 + v594);
          v596(v703, v757 + v594, v770);
          while (1)
          {
            v599 = *v732;
            v598 = v732[1];
            v600 = v598 + v594;
            v601 = *(v598 + 16);
            if (*v732)
            {

              sub_100C458DC(v597, v600, v601, (v599 + 16), v599 + 32);
              v603 = v602;

              if (v603)
              {
                v597 = v703;
                goto LABEL_317;
              }

              v597 = v703;
            }

            else
            {
              if (!v601)
              {
                goto LABEL_317;
              }

              do
              {
                v604 = v767;
                v596(v767, v600, v770);
                sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath);
                v605 = dispatch thunk of static Equatable.== infix(_:_:)();
                (*v768)(v604, v770);
                if (v605)
                {
                  v595 = v766;
                  goto LABEL_308;
                }

                v600 += v593;
                --v601;
              }

              while (v601);
              v595 = v766;
LABEL_317:
              sub_100C452C0(v597);
            }

LABEL_308:
            v592 = (v592 + 1);
            (*v768)(v597, v770);
            if (v592 == isa)
            {
              break;
            }

            v596(v597, (v595 + v593 * v592), v770);
          }
        }

        v619 = Logger.logObject.getter();
        v620 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v619, v620))
        {
          v621 = swift_slowAlloc();
          v622 = swift_slowAlloc();
          v771 = v622;
          *v621 = v692;

          v623 = Array.description.getter();
          v625 = v624;

          v626 = sub_1000108DC(v623, v625, &v771);

          *(v621 + 4) = v626;
          v627 = v620;
          v628 = v619;
          v629 = "Non visible adjustment: inserting %{public}s";
          goto LABEL_337;
        }
      }

      v19 = v747;
      v635 = v752;
      (v752)(v697, v747);
      (v754)(v698, v712);
      v635(v705, v19);

      v454 = v748;
      v457 = v749;
LABEL_227:
      v456 = v669;
      v453 = v457;
      if (v457 == v669)
      {

        sub_100020438(v722);

        sub_100020438(v739);

        sub_100020438(v668);

        (*(v700 + 8))(v704, v731);

        goto LABEL_347;
      }
    }
  }

  v273 = *v258;
  (*v684)(v725, v258 + *(v254 + 48), TupleTypeMetadata3);
  v759 = v273;
  if (__OFSUB__(v273, v751))
  {
    goto LABEL_362;
  }

  Array.subscript.getter();
  v274 = (*(v741 + 32))(v19);
  v276 = *(v782 + 16);
  v690 = v782;
  if (v276 && (v277 = sub_100019C40(v274, v275), (v278 & 1) != 0))
  {
    v279 = *(*(v690 + 56) + 8 * v277);

    v280 = swift_isUniquelyReferenced_nonNull_native();
    v774 = v773;
    v713 = v279;
    sub_100C43738(0, v279, v280);
    LODWORD(v752) = 0;
    v773 = v774;
  }

  else
  {

    v713 = 0;
    LODWORD(v752) = 1;
  }

  (*v681)(v257, v725, TupleTypeMetadata3);
  v281 = *(v721 + 36);
  a7 = WitnessTable;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (static CollectionDifference.Index.== infix(_:_:)())
  {
LABEL_87:
    (*v663)(v257, v721);
    (*v671)(v720, v19);
    (*v664)(v725, TupleTypeMetadata3);
    v254 = TupleTypeMetadata2;
    v251 = v662;
    v255 = v680;
    goto LABEL_88;
  }

  v701 = v713 + v751;
  v282 = __OFADD__(v713, v751);
  LODWORD(v702) = v282;
  v761 = v281;
  while (1)
  {
    v286 = dispatch thunk of Collection.subscript.read();
    v287 = v756;
    v288 = v757;
    (*v750)(v756);
    v286(&v774, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v289 = v766;
    (*v749)(v766, v287, v288);
    LODWORD(v286) = swift_getEnumCaseMultiPayload();
    v290 = *v289;
    sub_1001109D0(&qword_1011BA948);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v291 = v289 + *(TupleTypeMetadata3 + 64);
    v292 = *v291;
    a8 = v291[8];
    v293 = v780[0];
    v294 = *(v780[0] + 16);
    if (v286 != 1)
    {
      if (v294)
      {
        v297 = sub_100C309F0(v759);
        if (v298)
        {
          v294 = *(*(v293 + 56) + 8 * v297);
        }

        else
        {
          v294 = 0;
        }
      }

      if (__OFADD__(v290, v294))
      {
        __break(1u);
LABEL_352:
        __break(1u);
        goto LABEL_353;
      }

      a7 = v766 + *(TupleTypeMetadata3 + 48);
      if (v752)
      {
        v311 = Logger.logObject.getter();
        v312 = static os_log_type_t.default.getter();
        v313 = os_log_type_enabled(v311, v312);
        TupleTypeMetadata3 = v762;
        if (v313)
        {
          v314 = swift_slowAlloc();
          *v314 = v691;
          *(v314 + 4) = v759;
          *(v314 + 12) = 2050;
          *(v314 + 14) = v290;
          goto LABEL_144;
        }

LABEL_145:

        a8 = v765;
        v257 = v764;
        v258 = v758;
        goto LABEL_113;
      }

      *&v754 = v766 + *(TupleTypeMetadata3 + 48);
      if (a8)
      {
        v316 = sub_100C3E120(&v774, v713);
        if (*(v315 + 8))
        {
          (v316)(&v774, 0);
          a7 = v724;
        }

        else
        {
          a7 = v724;
          if (__OFADD__(*v315, 1))
          {
            goto LABEL_364;
          }

          ++*v315;
          (v316)(&v774, 0);
        }

        if (v702)
        {
          goto LABEL_358;
        }

        IndexPath.init(item:section:)();
        v379 = *v732;
        v378 = v732[1];
        v380 = v378 + ((*(v753 + 80) + 32) & ~*(v753 + 80));
        v381 = *(v378 + 16);
        if (*v732)
        {

          sub_100C458DC(a7, v380, v381, (v379 + 16), v379 + 32);
          v383 = v382;

          if ((v383 & 1) == 0)
          {
            goto LABEL_183;
          }
        }

        else if (v381)
        {
          v402 = *(v753 + 72);
          v403 = *(v753 + 16);
          do
          {
            v404 = v767;
            v405 = v770;
            v403(v767, v380, v770);
            sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath);
            v406 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*v768)(v404, v405);
            if (v406)
            {
              goto LABEL_183;
            }

            v380 += v402;
          }

          while (--v381);
        }

        sub_100C452C0(a7);
LABEL_183:
        v407 = v714;
        (*v769)(v714, a7, v770);
        v408 = Logger.logObject.getter();
        v409 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v408, v409))
        {
          v410 = swift_slowAlloc();
          v411 = swift_slowAlloc();
          v774 = v411;
          *v410 = v692;
          sub_100C46E04(&qword_1011BA940, &type metadata accessor for IndexPath);
          v412 = v770;
          v413 = dispatch thunk of CustomStringConvertible.description.getter();
          v415 = v414;
          v416 = *v768;
          (*v768)(v407, v412);
          v417 = sub_1000108DC(v413, v415, &v774);

          *(v410 + 4) = v417;
          _os_log_impl(&_mh_execute_header, v408, v409, "Inserting item %{public}s", v410, 0xCu);
          sub_10000959C(v411);
          v19 = v747;

          v416(v724, v412);
        }

        else
        {

          v418 = *v768;
          v419 = v770;
          (*v768)(v407, v770);
          v418(a7, v419);
        }

        a8 = v765;
        TupleTypeMetadata3 = v762;
        v257 = v764;
        v258 = v758;
        goto LABEL_112;
      }

      v318 = v737;
      IndexPath.init(item:section:)();
      if (v702)
      {
        goto LABEL_357;
      }

      v319 = v736;
      IndexPath.init(item:section:)();
      v320 = *v769;
      v321 = v716;
      v322 = v318;
      v323 = v770;
      (*v769)(v716, v322, v770);
      v324 = v723;
      v320(v723, v319, v323);
      v325 = Logger.logObject.getter();
      v326 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v325, v326))
      {
        v327 = swift_slowAlloc();
        v677 = swift_slowAlloc();
        v774 = v677;
        *v327 = v679;
        sub_100C46E04(&qword_1011BA940, &type metadata accessor for IndexPath);
        v328 = v770;
        v329 = dispatch thunk of CustomStringConvertible.description.getter();
        v330 = v321;
        v332 = v331;
        v333 = *v768;
        (*v768)(v330, v328);
        v334 = sub_1000108DC(v329, v332, &v774);

        *(v327 + 4) = v334;
        *(v327 + 12) = 2082;
        v335 = v723;
        v336 = dispatch thunk of CustomStringConvertible.description.getter();
        v338 = v337;
        v333(v335, v328);
        v339 = sub_1000108DC(v336, v338, &v774);

        *(v327 + 14) = v339;
        _os_log_impl(&_mh_execute_header, v325, v326, "[Insert] Moving item %{public}s to %{public}s", v327, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v333 = *v768;
        v384 = v324;
        v385 = v770;
        (*v768)(v384, v770);
        v333(v321, v385);
      }

      a8 = v765;
      v257 = v764;
      v258 = v758;
      v386 = *(v729 + 48);
      v387 = v730;
      v388 = v770;
      v320(v730, v737, v770);
      v320(&v387[v386], v736, v388);
      v389 = *&v763[v745];
      v390 = swift_isUniquelyReferenced_nonNull_native();
      v19 = v747;
      if ((v390 & 1) == 0)
      {
        v389 = sub_100C289D4(0, v389[2] + 1, 1, v389);
      }

      v392 = v389[2];
      v391 = v389[3];
      if (v392 >= v391 >> 1)
      {
        v389 = sub_100C289D4(v391 > 1, v392 + 1, 1, v389);
      }

      v283 = v770;
      v333(v736, v770);
      v333(v737, v283);
      v389[2] = v392 + 1;
      v284 = v389 + ((*(v728 + 80) + 32) & ~*(v728 + 80)) + *(v728 + 72) * v392;
      v285 = &v758;
      goto LABEL_111;
    }

    if (v294)
    {
      v295 = sub_100C309F0(v759);
      if (v296)
      {
        v294 = *(*(v293 + 56) + 8 * v295);
      }

      else
      {
        v294 = 0;
      }
    }

    if (__OFADD__(v290, v294))
    {
      goto LABEL_352;
    }

    if (v752)
    {
      break;
    }

    v300 = sub_100C3E120(&v774, v713);
    if (*(v299 + 8) != 1)
    {
      if (__OFSUB__(*v299, 1))
      {
        goto LABEL_356;
      }

      --*v299;
    }

    (v300)(&v774, 0);
    *&v754 = v766 + *(TupleTypeMetadata3 + 48);
    if (a8)
    {
      goto LABEL_130;
    }

    v19 = v733;
    IndexPath.init(item:section:)();
    if (v702)
    {
      goto LABEL_359;
    }

    v340 = v735;
    IndexPath.init(item:section:)();
    v341 = v770;
    v342 = *v769;
    v343 = v715;
    (*v769)(v715, v19, v770);
    v344 = v678;
    v342(v678, v340, v341);
    v345 = Logger.logObject.getter();
    v346 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v345, v346))
    {
      v347 = swift_slowAlloc();
      v677 = swift_slowAlloc();
      v774 = v677;
      *v347 = v679;
      sub_100C46E04(&qword_1011BA940, &type metadata accessor for IndexPath);
      v674 = v345;
      v348 = v770;
      v349 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v673) = v346;
      v351 = v350;
      v352 = *v768;
      (*v768)(v343, v348);
      v353 = v349;
      v19 = v733;
      v354 = sub_1000108DC(v353, v351, &v774);

      *(v347 + 4) = v354;
      *(v347 + 12) = 2082;
      v355 = dispatch thunk of CustomStringConvertible.description.getter();
      v357 = v356;
      v352(v344, v348);
      v358 = sub_1000108DC(v355, v357, &v774);

      *(v347 + 14) = v358;
      v359 = v674;
      _os_log_impl(&_mh_execute_header, v674, v673, "[Remove] Moving item %{public}s to %{public}s", v347, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v352 = *v768;
      v393 = v344;
      v394 = v770;
      (*v768)(v393, v770);
      v352(v343, v394);
    }

    v257 = v764;
    v258 = v758;
    v395 = *(v729 + 48);
    v396 = v727;
    v397 = v770;
    v342(v727, v19, v770);
    v342(&v396[v395], v735, v397);
    v389 = *&v763[v745];
    v398 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v747;
    a8 = v765;
    if ((v398 & 1) == 0)
    {
      v389 = sub_100C289D4(0, v389[2] + 1, 1, v389);
    }

    v400 = v389[2];
    v399 = v389[3];
    if (v400 >= v399 >> 1)
    {
      v389 = sub_100C289D4(v399 > 1, v400 + 1, 1, v389);
    }

    v401 = v770;
    v352(v735, v770);
    v352(v733, v401);
    v389[2] = v400 + 1;
    v284 = v389 + ((*(v728 + 80) + 32) & ~*(v728 + 80)) + *(v728 + 72) * v400;
    v285 = &v755;
LABEL_111:
    sub_100C46D60(*(v285 - 32), v284);
    *&v763[v745] = v389;
    TupleTypeMetadata3 = v762;
LABEL_112:
    a7 = v754;
LABEL_113:
    (*v748)(a7, a8);
    a7 = WitnessTable;
    dispatch thunk of Collection.endIndex.getter();
    if (static CollectionDifference.Index.== infix(_:_:)())
    {
      goto LABEL_87;
    }
  }

  a7 = v766 + *(TupleTypeMetadata3 + 48);
  if (!a8)
  {
    v311 = Logger.logObject.getter();
    v312 = static os_log_type_t.default.getter();
    v317 = os_log_type_enabled(v311, v312);
    TupleTypeMetadata3 = v762;
    if (v317)
    {
      v314 = swift_slowAlloc();
      *v314 = v691;
      *(v314 + 4) = v759;
      *(v314 + 12) = 2050;
      *(v314 + 14) = v292;
LABEL_144:
      _os_log_impl(&_mh_execute_header, v311, v312, "Skipping insert for [%{public}ld,%{public}ld]", v314, 0x16u);
    }

    goto LABEL_145;
  }

  *&v754 = v766 + *(TupleTypeMetadata3 + 48);
LABEL_130:
  v301 = v734;
  IndexPath.init(item:section:)();
  v302 = sub_100C306D0(v301, v779);
  v303 = v765;
  v304 = v764;
  if (v302)
  {
    v306 = *v743;
    v305 = v743[1];
    v307 = v305 + ((*(v753 + 80) + 32) & ~*(v753 + 80));
    v308 = *(v305 + 16);
    if (*v743)
    {

      sub_100C458DC(v301, v307, v308, (v306 + 16), v306 + 32);
      v310 = v309;

      if ((v310 & 1) == 0)
      {
        goto LABEL_157;
      }
    }

    else if (v308)
    {
      v360 = *(v753 + 72);
      v361 = *(v753 + 16);
      do
      {
        v362 = v767;
        v363 = v770;
        v361(v767, v307, v770);
        sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath);
        v364 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v768)(v362, v363);
        if (v364)
        {
          goto LABEL_157;
        }

        v307 += v360;
      }

      while (--v308);
    }

    sub_100C452C0(v301);
LABEL_157:
    v365 = v726;
    (*v769)(v726, v301, v770);
    v366 = Logger.logObject.getter();
    v367 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v366, v367))
    {
      v368 = swift_slowAlloc();
      v369 = swift_slowAlloc();
      v774 = v369;
      *v368 = v692;
      sub_100C46E04(&qword_1011BA940, &type metadata accessor for IndexPath);
      v370 = v770;
      v371 = dispatch thunk of CustomStringConvertible.description.getter();
      v373 = v372;
      v374 = *v768;
      (*v768)(v365, v370);
      v375 = sub_1000108DC(v371, v373, &v774);

      *(v368 + 4) = v375;
      _os_log_impl(&_mh_execute_header, v366, v367, "Deleting item %{public}s", v368, 0xCu);
      sub_10000959C(v369);
      v19 = v747;

      v374(v734, v370);
    }

    else
    {

      v376 = *v768;
      v377 = v770;
      (*v768)(v365, v770);
      v376(v301, v377);
    }

    a8 = v765;
    TupleTypeMetadata3 = v762;
    v257 = v764;
    v258 = v758;
    goto LABEL_112;
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v420 = Logger.logObject.getter();
  v421 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v420, v421))
  {
    v422 = swift_slowAlloc();
    *v422 = 0;
    _os_log_impl(&_mh_execute_header, v420, v421, "Tried to delete an index path from the visible items diff that is not present in the visible index paths set. The visible index paths are likely not consecutive and the diff would be inconsistent, bailing and reloading data.", v422, 2u);
    v303 = v765;
  }

  sub_100020438(v722);

  sub_100020438(v739);
  sub_100020438(v668);
  (*v663)(v304, v721);
  (*v671)(v720, v19);
  (*v664)(v725, v762);
  (*(v700 + 8))(v704, v731);
  (*v768)(v301, v770);
  *v763 = 1;
  (*v748)(v754, v303);

LABEL_191:
}

uint64_t sub_100C3DE98@<X0>(_BYTE *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100C3DF80@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 32);
  v7 = v6(a1, a2);
  sub_100C41FC0(&v11, v7, v8);

  result = v6(a1, a2);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t sub_100C3E040(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 32);
  v10 = v9(a4, a5);
  v12 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a3;
  *a3 = 0x8000000000000000;
  sub_100C4385C(a1, v10, v12, isUniquelyReferenced_nonNull_native);

  *a3 = v15;

  return v9(a4, a5);
}

uint64_t (*sub_100C3E120(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_100C44F58(v4, a2);
  return sub_1005762FC;
}

uint64_t (*sub_100C3E198(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_100C44FFC(v8, a2, a3, a4);
  return sub_100C46EC4;
}

uint64_t sub_100C3E228(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __n128), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v33 = a8;
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3(a1, a2, v17);
  if ((v20 & 1) == 0 || !a5)
  {
    return v20 & 1;
  }

  if (a5(a1, a2) & 1) != 0 || (v31 = v16, v32 = a7, swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), v21 = OrderedSet._find(_:)(), (v22))
  {
    sub_100020438(a5);
    return v20 & 1;
  }

  v23 = *a9;
  v24 = *(*a9 + 16);
  if (v24)
  {
    v25 = v21;
    v26 = sub_100C309F0(a10);
    if (v27)
    {
      v24 = *(*(v23 + 56) + 8 * v26);
    }

    else
    {
      v24 = 0;
    }

    v21 = v25;
  }

  v28 = __OFADD__(v21, v24);
  result = v21 + v24;
  if (!v28)
  {
    IndexPath.init(item:section:)();
    type metadata accessor for AIDiffingUpdate();
    sub_100C450B8(v19);
    sub_100020438(a5);
    (*(v31 + 8))(v19, v15);
    return v20 & 1;
  }

  __break(1u);
  return result;
}

uint64_t UICollectionView.calculateAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(uint64_t, void *, NSObject *)@<X3>, char a5@<W4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{

  v20 = [v14 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100030444(a6);
  sub_100030444(a8);
  sub_100030444(a11);
  return sub_100C376B0(a1, a2, v21, a3, a4, a5 & 1, a6, a7, a9, a8, a10, a11, a12, a13, a14);
}

uint64_t UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t, void *, NSObject *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v46 = a4;
  v50 = a7;
  v51 = a8;
  v47 = a5;
  v52 = a9;
  v53 = a3;
  v42 = a1;
  v43 = a2;
  v48 = a10;
  v49 = a6;
  v11 = *(a11 - 8);
  __chkstk_darwin(a1);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _DiffableSection();
  v54 = *(v14 - 1);
  __chkstk_darwin(v14);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v17);
  v20 = &v42 - v19;
  v21 = *(v11 + 16);
  v21(v13, v42, a11, v18);
  v22 = v20;
  v55 = v20;
  *v20 = 0;
  *(v20 + 1) = 0xE000000000000000;
  v23 = *(v11 + 32);
  v23(&v22[v14[11]], v13, a11);
  (v21)(v13, v43, a11);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v24 = v16 + v14[11];
  v44 = v16;
  v23(v24, v13, a11);
  type metadata accessor for _ContiguousArrayStorage();
  v25 = v54;
  swift_allocObject();
  v26 = static Array._adoptStorage(_:count:)();
  v27 = *(v25 + 16);
  v27(v28, v55, v14);
  sub_100C1D3D8();
  swift_allocObject();
  v29 = static Array._adoptStorage(_:count:)();
  v27(v30, v16, v14);
  v31 = [v45 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = v46;
  v33 = v47;
  sub_100030444(v46);
  v35 = v49;
  v36 = v50;
  sub_100030444(v49);
  v37 = v51;
  v38 = v48;
  sub_100030444(v51);
  WitnessTable = swift_getWitnessTable();
  sub_100C376B0(v26, v29, v32, v53, v53, 0, v34, v33, v52, v35, v36, v37, v38, v14, WitnessTable);
  v40 = *(v54 + 8);
  v40(v44, v14);
  return v40(v55, v14);
}

uint64_t UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3, void (**a4)(uint64_t, void *, NSObject *), int a5, int a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(void), uint64_t a14, void (*a15)(uint64_t), uint64_t a16, void *a17, uint64_t a18)
{
  v39 = a3;
  v33 = a7;
  v34 = a8;
  v45 = a6;
  v38 = a5;
  v30 = a1;
  v43 = a14;
  v44 = a13;
  v42 = a15;
  v40 = a4;
  v41 = a16;
  v35 = a18;
  v36 = a17;
  v31 = a9;
  v32 = a2;
  v19 = type metadata accessor for AIDiffingUpdate();
  v37 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

  v22 = [v18 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = v33;
  v25 = v34;
  sub_100030444(v33);
  v26 = v31;
  sub_100030444(v31);
  sub_100030444(a11);
  sub_100C376B0(v30, v32, v23, v39, v40, v38 & 1, v24, v25, v21, v26, a10, a11, a12, v36, v35);
  sub_10010FC20(&qword_1011BA770);
  v27 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100EBC6B0;
  sub_100C41B2C(v21, v28 + v27);
  UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v28, v45, v44, v43, v42, v41);

  return sub_100C41B90(v21);
}

uint64_t UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(uint64_t a1, int a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v164 = a4;
  v161 = a3;
  v158 = a2;
  v10 = type metadata accessor for IndexSet();
  v159 = *(v10 - 8);
  __chkstk_darwin(v10);
  v157 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AIDiffingUpdate();
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v154 - v17;
  v160 = v6;
  swift_unknownObjectWeakInit();
  if (qword_1011B9A28 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_1000060E4(v19, qword_1011BA758);

  v163 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v165 = a6;
  v162 = a5;
  if (v23)
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v21, v22, "applyUpdates called with %ld updates", v24, 0xCu);
  }

  else
  {
  }

  v171 = swift_allocBox();
  v178 = v25;
  IndexSet.init()();
  v167 = swift_allocBox();
  v177 = v26;
  IndexSet.init()();
  v27 = swift_allocObject();
  v166 = v27;
  *(v27 + 16) = _swiftEmptyArrayStorage;
  v176 = (v27 + 16);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v175 = v28 + 16;
  v172 = v28;
  *(v28 + 24) = _swiftEmptyArrayStorage;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v174 = v29 + 16;
  v173 = v29;
  *(v29 + 24) = _swiftEmptyArrayStorage;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v170 = v30;
  *(v30 + 24) = _swiftEmptyArrayStorage;
  v31 = swift_allocObject();
  v169 = v31;
  *(v31 + 16) = _swiftEmptyArrayStorage;
  v32 = (v31 + 16);
  v33 = a1;
  v34 = *(a1 + 16);
  v168 = v33;
  if (v34 == 1)
  {
    sub_100C41B2C(v33 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v18);
    if (*v18 == 1)
    {
      sub_100C40460(v33, v185, v161, v164, v162, v165);
      sub_100C41B90(v18);
      swift_unknownObjectWeakDestroy();
LABEL_39:

      v148 = 0;
      goto LABEL_40;
    }

    v71 = *(v159 + 24);
    v71(v178, &v18[v12[6]], v10);
    v71(v177, &v18[v12[7]], v10);
    *v176 = *&v18[v12[8]];

    v72 = &v18[v12[9]];
    v73 = *v72;
    v74 = v72[1];
    v75 = v172;
    *(v172 + 16) = v73;
    *(v75 + 24) = v74;

    v76 = &v18[v12[10]];
    v77 = *v76;
    v78 = v76[1];
    v79 = v173;
    *(v173 + 16) = v77;
    *(v79 + 24) = v78;

    v80 = &v18[v12[11]];
    v81 = v80[1];
    v82 = v32;
    v83 = v170;
    *(v170 + 16) = *v80;
    *(v83 + 24) = v81;

    v84 = *&v18[v12[12]];

    sub_100C41B90(v18);
    v156 = v82;
    *v82 = v84;

    v85 = v171;
    v86 = v167;
    v87 = v162;
    v88 = v164;
    v89 = v169;
    v90 = v161;
  }

  else
  {
    if (v34)
    {
      v35 = v15 + 8;
      v36 = v168 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v37 = *(v13 + 72);
      do
      {
        sub_100C41B2C(v36, v15);
        if (*v15 == 1)
        {
          goto LABEL_38;
        }

        IndexSet.formUnion(_:)();
        IndexSet.formUnion(_:)();

        sub_100C32F80(v38);
        sub_100C4605C(*&v35[v12[9]]);
        sub_100C4605C(*&v35[v12[10]]);
        sub_100C4605C(*&v35[v12[11]]);

        sub_100C3306C(v39);
        sub_100C41B90(v15);
        v36 += v37;
      }

      while (--v34);
    }

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Final update:", v42, 2u);
    }

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      aBlock = v155;
      *v45 = 136315138;
      v46 = v178;
      swift_beginAccess();
      v47 = v159;
      v48 = v157;
      (*(v159 + 16))(v157, v46, v10);
      sub_100C46E04(&qword_1011BA780, &type metadata accessor for IndexSet);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v47 + 8))(v48, v10);
      v52 = sub_1000108DC(v49, v51, &aBlock);

      *(v45 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v43, v44, " - Inserted sections: %s", v45, 0xCu);
      sub_10000959C(v155);
    }

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      aBlock = v155;
      *v55 = 136315138;
      v56 = v177;
      swift_beginAccess();
      v57 = v159;
      v58 = v157;
      (*(v159 + 16))(v157, v56, v10);
      sub_100C46E04(&qword_1011BA780, &type metadata accessor for IndexSet);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v57 + 8))(v58, v10);
      v62 = sub_1000108DC(v59, v61, &aBlock);

      *(v55 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v53, v54, " - Deleted sections: %s", v55, 0xCu);
      sub_10000959C(v155);
    }

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      aBlock = v66;
      *v65 = 136315138;
      swift_beginAccess();

      sub_10010FC20(&qword_1011BA778);
      v67 = Array.description.getter();
      v69 = v68;

      v70 = sub_1000108DC(v67, v69, &aBlock);

      *(v65 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v63, v64, " - Section move pairs: %s", v65, 0xCu);
      sub_10000959C(v66);
    }

    else
    {
    }

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      aBlock = v94;
      *v93 = 136315138;
      swift_beginAccess();
      type metadata accessor for IndexPath();

      v95 = Array.description.getter();
      v97 = v96;

      v98 = sub_1000108DC(v95, v97, &aBlock);

      *(v93 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v91, v92, " - Inserted index paths: %s", v93, 0xCu);
      sub_10000959C(v94);
    }

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();

    v101 = os_log_type_enabled(v99, v100);
    v156 = v32;
    if (v101)
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      aBlock = v103;
      *v102 = 136315138;
      swift_beginAccess();
      type metadata accessor for IndexPath();

      v104 = Array.description.getter();
      v106 = v105;

      v107 = sub_1000108DC(v104, v106, &aBlock);

      *(v102 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v99, v100, " - Deleted index paths: %s", v102, 0xCu);
      sub_10000959C(v103);
    }

    v89 = v169;

    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      aBlock = v111;
      *v110 = 136315138;
      swift_beginAccess();
      type metadata accessor for IndexPath();

      v112 = Array.description.getter();
      v114 = v113;

      v115 = sub_1000108DC(v112, v114, &aBlock);

      *(v110 + 4) = v115;
      _os_log_impl(&_mh_execute_header, v108, v109, " - Updated index paths: %s", v110, 0xCu);
      sub_10000959C(v111);
    }

    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      aBlock = v119;
      *v118 = 136315138;
      swift_beginAccess();

      sub_10010FC20(&qword_1011BA4F8);
      v120 = Array.description.getter();
      v122 = v121;

      v123 = sub_1000108DC(v120, v122, &aBlock);

      *(v118 + 4) = v123;
      _os_log_impl(&_mh_execute_header, v116, v117, " - Item move pairs: %s", v118, 0xCu);
      sub_10000959C(v119);
    }

    else
    {
    }

    v86 = v167;
    v90 = v161;
    v88 = v164;
    v83 = v170;
    v85 = v171;
    v87 = v162;
  }

  isEscapingClosureAtFileLocation = swift_allocObject();
  v125 = v160;
  v126 = v168;
  *(isEscapingClosureAtFileLocation + 16) = v160;
  *(isEscapingClosureAtFileLocation + 24) = v126;
  *(isEscapingClosureAtFileLocation + 32) = v86;
  *(isEscapingClosureAtFileLocation + 40) = v85;
  *(isEscapingClosureAtFileLocation + 48) = v166;
  v127 = v173;
  *(isEscapingClosureAtFileLocation + 56) = v172;
  *(isEscapingClosureAtFileLocation + 64) = v127;
  *(isEscapingClosureAtFileLocation + 72) = v89;
  *(isEscapingClosureAtFileLocation + 80) = v90;
  *(isEscapingClosureAtFileLocation + 88) = v88;
  *(isEscapingClosureAtFileLocation + 96) = v83;
  v128 = v165;
  *(isEscapingClosureAtFileLocation + 104) = v87;
  *(isEscapingClosureAtFileLocation + 112) = v128;
  if (v158)
  {

    v129 = v165;
    sub_100030444(v87);
    sub_100030444(v90);
    v130 = v90;
    v131 = v125;
    v132 = [v131 indexPathsForVisibleItems];
    type metadata accessor for IndexPath();
    v133 = v88;
    v134 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v135 = sub_100C46308(v134);

    v136 = swift_allocObject();
    v136[2] = v168;
    v136[3] = v131;
    v137 = v178;
    v136[4] = v177;
    v136[5] = v137;
    v138 = v175;
    v136[6] = v176;
    v136[7] = v138;
    v139 = v156;
    v136[8] = v174;
    v136[9] = v139;
    v136[10] = v135;
    v136[11] = v130;
    v136[12] = v133;
    v140 = swift_allocObject();
    *(v140 + 16) = sub_100C464A4;
    *(v140 + 24) = v136;
    v183 = sub_10018A020;
    v184 = v140;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v141 = v162;
    v181 = sub_100029B9C;
    v182 = &unk_1010F18B0;
    v178 = _Block_copy(&aBlock);

    sub_100030444(v130);
    v142 = v131;

    v143 = swift_allocObject();
    v144 = v170;
    *(v143 + 2) = v142;
    *(v143 + 3) = v144;
    *(v143 + 4) = v141;
    *(v143 + 5) = v129;
    v183 = sub_100C464A8;
    v184 = v143;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v181 = sub_1005C3688;
    v182 = &unk_1010F1900;
    v145 = _Block_copy(&aBlock);
    v87 = v184;

    sub_100030444(v141);
    v146 = v142;

    v147 = v178;
    [v146 performBatchUpdates:v178 completion:v145];
    _Block_release(v145);
    _Block_release(v147);

    swift_unknownObjectWeakDestroy();

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    v148 = 0;
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_40;
    }

    __break(1u);
  }

  v178 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 2) = sub_100C462C8;
  *(v15 + 3) = isEscapingClosureAtFileLocation;
  v149 = swift_allocObject();
  v148 = sub_100029B6C;
  *(v149 + 16) = sub_100029B6C;
  *(v149 + 24) = v15;
  v183 = sub_100029B94;
  v184 = v149;
  aBlock = _NSConcreteStackBlock;
  v180 = 1107296256;
  v181 = sub_100029B9C;
  v182 = &unk_1010F1838;
  v150 = _Block_copy(&aBlock);
  v177 = v184;

  sub_100030444(v87);
  sub_100030444(v161);
  v151 = v160;

  [v178 performWithoutAnimation:v150];
  _Block_release(v150);

  swift_unknownObjectWeakDestroy();
  v152 = swift_isEscapingClosureAtFileLocation();

  if (v152)
  {
    __break(1u);
LABEL_38:
    sub_100C40460(v168, v185, v161, v164, v162, v165);
    swift_unknownObjectWeakDestroy();
    sub_100C41B90(v15);
    goto LABEL_39;
  }

LABEL_40:

  return sub_100020438(v148);
}

uint64_t UICollectionView.performAIDiff<A>(oldItems:newItems:sectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:completion:)(uint64_t a1, uint64_t a2, void (**a3)(uint64_t, void *, NSObject *), int a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, __int128 a13)
{
  v27 = a8;
  v25 = a6;
  v26 = a7;
  v24 = a5;
  v30 = a4;
  v28 = a12;
  v29 = a11;
  v23 = a13;
  v16 = type metadata accessor for AIDiffingUpdate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(a1, a2, a3, v24, v25, v26, v27, a9, v19, a10, a13);
  sub_10010FC20(&qword_1011BA770);
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100EBC6B0;
  sub_100C41B2C(v19, v21 + v20);
  UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v21, v30, 0, 0, v29, v28);

  return sub_100C41B90(v19);
}

void sub_100C40460(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a6;
  v9 = type metadata accessor for AIDiffingUpdate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011B9A28 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000060E4(v13, qword_1011BA758);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Found update with needsReloadData=true, reloading", v16, 2u);
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = *(v10 + 72);
    do
    {
      sub_100C41B2C(v18, v12);
      v20 = *(v12 + 1);
      sub_100030444(v20);
      v21 = sub_100C41B90(v12);
      if (v20)
      {
        v20(v21);
        sub_100020438(v20);
      }

      v18 += v19;
      --v17;
    }

    while (v17);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    [Strong reloadData];
  }

  if (a3)
  {
    a3();
  }

  if (a5)
  {
    a5(1);
  }
}

uint64_t sub_100C406A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  type metadata accessor for IndexSet();
  v18 = swift_projectBox();
  v19 = swift_projectBox();
  v20 = a5 + 16;
  v21 = a6 + 16;
  v22 = a8 + 16;
  v23 = [a1 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = sub_100C46308(v24);

  v26 = swift_allocObject();
  v26[2] = a2;
  v26[3] = a1;
  v26[4] = v18;
  v26[5] = v19;
  v26[6] = v20;
  v26[7] = v21;
  v26[8] = a7 + 16;
  v26[9] = v22;
  v26[10] = v25;
  v26[11] = a9;
  v26[12] = a10;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100C46EB0;
  *(v27 + 24) = v26;
  v39 = sub_10018A020;
  v40 = v27;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100029B9C;
  v38 = &unk_1010F19D0;
  v28 = _Block_copy(&aBlock);

  v29 = a1;
  sub_100030444(a9);

  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = a11;
  v30[4] = a12;
  v30[5] = a13;
  v39 = sub_100C46EAC;
  v40 = v30;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_1005C3688;
  v38 = &unk_1010F1A20;
  v31 = _Block_copy(&aBlock);
  v32 = v29;

  sub_100030444(a12);

  [v32 performBatchUpdates:v28 completion:v31];
  _Block_release(v31);
  _Block_release(v28);

  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100C409B4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, void (*a10)(void))
{
  v128 = a8;
  v116 = a7;
  v127 = a6;
  v126 = a5;
  v124 = a4;
  v114 = a3;
  v123 = a2;
  v11 = type metadata accessor for IndexPath();
  v121 = *(v11 - 8);
  __chkstk_darwin(v11);
  v110 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v105 - v14;
  __chkstk_darwin(v16);
  v125 = (&v105 - v17);
  v120 = sub_10010FC20(&qword_1011BA4F8);
  v122 = *(v120 - 8);
  __chkstk_darwin(v120);
  v19 = &v105 - v18;
  v113 = type metadata accessor for IndexSet();
  v20 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AIDiffingUpdate() - 8;
  __chkstk_darwin(v22);
  v25 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 16);
  if (v26)
  {
    v27 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v28 = *(v23 + 72);
    do
    {
      sub_100C41B2C(v27, v25);
      v29 = *(v25 + 1);
      sub_100030444(v29);
      v30 = sub_100C41B90(v25);
      if (v29)
      {
        v29(v30);
        sub_100020438(v29);
      }

      v27 += v28;
      --v26;
    }

    while (v26);
  }

  v31 = v114;
  swift_beginAccess();
  v111 = *(v20 + 16);
  v32 = v112;
  v33 = v113;
  v111(v112, v31, v113);
  IndexSet._bridgeToObjectiveC()(v34);
  v36 = v35;
  v37 = *(v20 + 8);
  v37(v32, v33);
  v38 = v123;
  [v123 deleteSections:v36];

  v39 = v124;
  swift_beginAccess();
  v108 = v20 + 16;
  v111(v32, v39, v33);
  IndexSet._bridgeToObjectiveC()(v40);
  v42 = v41;
  v109 = v20 + 8;
  v107 = v37;
  v37(v32, v33);
  [v38 insertSections:v42];

  v43 = v126;
  swift_beginAccess();
  v44 = *v43;
  v45 = *(v44 + 16);
  if (v45)
  {

    v46 = (v44 + 40);
    do
    {
      [v38 moveSection:*(v46 - 1) toSection:*v46];
      v46 += 2;
      --v45;
    }

    while (v45);
  }

  swift_beginAccess();

  isa = Array._bridgeToObjectiveC()().super.isa;
  swift_endAccess();

  [v38 insertItemsAtIndexPaths:isa];

  swift_beginAccess();

  v48 = Array._bridgeToObjectiveC()().super.isa;
  swift_endAccess();

  [v38 deleteItemsAtIndexPaths:v48];

  v49 = v128;
  swift_beginAccess();
  v50 = *v49;
  v51 = *(*v49 + 16);
  if (v51)
  {
    v52 = *(v120 + 48);
    v53 = v50 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
    v128 = *(v122 + 72);
    v54 = (v121 + 8);
    v127 = v50;

    do
    {
      sub_100C46A64(v53, v19);
      v55 = IndexPath._bridgeToObjectiveC()().super.isa;
      v56 = *v54;
      (*v54)(v19, v11);
      v57 = IndexPath._bridgeToObjectiveC()().super.isa;
      v56(&v19[v52], v11);
      [v123 moveItemAtIndexPath:v55 toIndexPath:v57];

      v53 += v128;
      --v51;
    }

    while (v51);

    v38 = v123;
  }

  v58 = [v38 _indexPathsForPreparedItems];
  v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v119 = *(v59 + 16);
  if (v119)
  {
    v60 = v121;
    v120 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v117 = v59 + v120;
    swift_beginAccess();
    swift_beginAccess();
    v61 = 0;
    v127 = a9;
    v128 = (v60 + 16);
    v126 = (a9 + 56);
    v38 = v60 + 8;
    v115 = _swiftEmptyArrayStorage;
    v106 = (v60 + 32);
    v62 = v125;
    v118 = v59;
    while (1)
    {
      if (v61 >= *(v59 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v64 = *(v121 + 72);
      v124 = v61;
      v65 = *(v121 + 16);
      v65(v62, v117 + v64 * v61, v11);
      if (*(v127 + 16))
      {
        v66 = v127;
        sub_100C46E04(&qword_1011BA688, &type metadata accessor for IndexPath);
        v67 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v68 = -1 << *(v66 + 32);
        v69 = v67 & ~v68;
        if ((*(v126 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69))
        {
          v70 = ~v68;
          while (1)
          {
            v65(v15, *(v127 + 48) + v69 * v64, v11);
            sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath);
            v71 = dispatch thunk of static Equatable.== infix(_:_:)();
            v72 = *v38;
            (*v38)(v15, v11);
            if (v71)
            {
              break;
            }

            v69 = (v69 + 1) & v70;
            if (((*(v126 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          v72(v62, v11);
          goto LABEL_17;
        }
      }

LABEL_25:
      v73 = *v116;
      v74 = v116[1];
      v75 = v74 + v120;
      v76 = *(v74 + 16);
      v122 = v38 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v73)
      {

        sub_100C458DC(v62, v75, v76, (v73 + 16), v73 + 32);
        v78 = v77;

        if ((v78 & 1) == 0)
        {
          v79 = *v38;
LABEL_40:
          v90 = v125;
          v79(v125, v11);
          v62 = v90;
          goto LABEL_17;
        }
      }

      else
      {

        if (v76)
        {
          while (1)
          {
            v65(v15, v75, v11);
            sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath);
            v80 = dispatch thunk of static Equatable.== infix(_:_:)();
            v79 = *v38;
            (*v38)(v15, v11);
            if (v80)
            {
              break;
            }

            v75 += v64;
            --v76;
            v62 = v125;
            if (!v76)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_40;
        }

LABEL_31:
      }

      v81 = v112;
      v82 = v113;
      v111(v112, v114, v113);
      v83 = IndexPath.section.getter();
      v84 = IndexSet.contains(_:)(v83);
      v107(v81, v82);
      if (!v84)
      {
        v65(v110, v62, v11);
        v85 = v115;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v124;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v85 = sub_100C289AC(0, v85[2] + 1, 1, v85);
        }

        v115 = v85;
        v88 = v85[2];
        v87 = v85[3];
        if (v88 >= v87 >> 1)
        {
          v115 = sub_100C289AC(v87 > 1, v88 + 1, 1, v115);
        }

        v89 = v115;
        v115[2] = v88 + 1;
        (*v106)(&v89[v120 + v88 * v64], v110, v11);
        (*v38)(v62, v11);
        v59 = v118;
        goto LABEL_18;
      }

      (*v38)(v62, v11);
LABEL_17:
      v59 = v118;
      v63 = v124;
LABEL_18:
      v61 = v63 + 1;
      if (v61 == v119)
      {

        v38 = v123;
        goto LABEL_43;
      }
    }
  }

LABEL_43:
  v62 = a10;
  if (qword_1011B9A28 != -1)
  {
LABEL_52:
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  sub_1000060E4(v91, qword_1011BA758);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v129 = v95;
    *v94 = 136315138;

    v96 = Array.description.getter();
    v98 = v97;

    v99 = sub_1000108DC(v96, v98, &v129);
    v38 = v123;

    *(v94 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v92, v93, "Cleaning up prefetched cells by reloading index paths: %s", v94, 0xCu);
    sub_10000959C(v95);
  }

  v100 = Array._bridgeToObjectiveC()().super.isa;

  [v38 reloadItemsAtIndexPaths:v100];

  if (v62)
  {

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&_mh_execute_header, v101, v102, "Performing alongside updates", v103, 2u);
    }

    v62();
    sub_100020438(v62);
  }
}

id sub_100C417CC(char a1, id a2, uint64_t a3, void (*a4)(void))
{
  v7 = [a2 isPrefetchingEnabled];
  [a2 setPrefetchingEnabled:0];
  if (qword_1011B9A28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000060E4(v8, qword_1011BA758);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    buf = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22[0] = v20;
    *buf = 136315138;
    swift_beginAccess();
    v21 = a4;

    v12 = sub_100C467CC(v11);
    v18 = v10;
    v14 = v13;

    v15 = sub_1000108DC(v12, v14, v22);

    *(buf + 4) = v15;
    a4 = v21;
    _os_log_impl(&_mh_execute_header, v9, v18, "Reconfiguring index paths: %s", buf, 0xCu);
    sub_10000959C(v20);
  }

  swift_beginAccess();
  type metadata accessor for IndexPath();

  isa = Array._bridgeToObjectiveC()().super.isa;
  swift_endAccess();

  [a2 reconfigureItemsAtIndexPaths:isa];

  if (a4)
  {
    a4(a1 & 1);
  }

  return [a2 setPrefetchingEnabled:v7];
}