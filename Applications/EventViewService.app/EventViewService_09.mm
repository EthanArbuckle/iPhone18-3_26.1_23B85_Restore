uint64_t sub_100120180(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_100120314;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1001202A8;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_1001202A8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100120314()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100120388()
{
  type metadata accessor for Optional();
  result = type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100120434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for PageControl() + 36);
  type metadata accessor for Optional();
  v6 = type metadata accessor for Binding();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

id sub_1001204D4()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [v0 colorWithAlphaComponent:0.3];

  return v1;
}

uint64_t sub_100120540(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for Optional();
  v3 = type metadata accessor for Binding();
  return a2(v3);
}

uint64_t sub_100120598(uint64_t a1)
{
  type metadata accessor for Optional();
  v2 = type metadata accessor for Binding();
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  type metadata accessor for PageControl.Coordinator();
  sub_100120540(a1, &Binding.projectedValue.getter);
  v5 = swift_allocObject();
  sub_100120C40(v4);
  return v5;
}

uint64_t sub_10012066C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_100120C40(a1);
  return v2;
}

id sub_1001206AC()
{
  v0 = [objc_allocWithZone(UIPageControl) init];
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  [v0 addTarget:v4 action:"pageDidChange:" forControlEvents:4096];

  [v0 setNumberOfPages:Array.count.getter()];
  v1 = sub_1001204D4();
  [v0 setPageIndicatorTintColor:v1];

  v2 = [objc_opt_self() labelColor];
  [v0 setCurrentPageIndicatorTintColor:v2];

  return v0;
}

uint64_t sub_1001207EC(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v5 = *(a3 + 16);
  v6 = type metadata accessor for Optional();
  v28 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v32 = &v27 - v8;
  v33 = *(v5 - 8);
  __chkstk_darwin(v7);
  v29 = v10;
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Binding();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  v15 = v37;
  v16 = *v3;
  v17 = *(*v37 + 104);
  swift_beginAccess();
  *(v15 + v17) = v16;

  sub_100120540(a3, &Binding.projectedValue.getter);
  v18 = *(*v15 + 96);
  swift_beginAccess();
  v19 = v14;
  v20 = v31;
  (*(v12 + 40))(v15 + v18, v19, v11);
  swift_endAccess();
  v21 = [v20 numberOfPages];
  if (v21 != Array.count.getter())
  {
    [v20 setNumberOfPages:Array.count.getter()];
  }

  v22 = v32;
  sub_100120540(a3, &Binding.wrappedValue.getter);
  v23 = v33;
  if ((*(v33 + 48))(v22, 1, v5) == 1)
  {

    return (*(v28 + 8))(v22, v29);
  }

  else
  {
    v25 = v30;
    (*(v23 + 32))(v30, v22, v5);
    v34 = v16;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection<>.firstIndex(of:)();
    if (v36 == 1 || (v26 = v35, v26 == [v20 currentPage]))
    {
      (*(v23 + 8))(v25, v5);
    }

    else
    {
      [v20 setCurrentPage:v26];

      return (*(v23 + 8))(v25, v5);
    }
  }
}

uint64_t sub_100120C40(uint64_t a1)
{
  v3 = *(*v1 + 104);
  *(v1 + v3) = static Array._allocateUninitialized(_:)();
  v4 = *(*v1 + 96);
  type metadata accessor for Optional();
  v5 = type metadata accessor for Binding();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

uint64_t sub_100120D08(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = v11 - v5;
  v8 = *(v7 + 104);
  swift_beginAccess();
  v14 = *(v1 + v8);
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  v13 = v11[1];
  v12 = [a1 currentPage];
  sub_1000024C4(qword_100228530);
  result = Range.contains(_:)();
  if (result)
  {
    [a1 currentPage];
    swift_beginAccess();
    Array.subscript.getter();
    swift_endAccess();
    v10 = [a1 interactionState];
    if (v10 != 2)
    {
      v10 = static Animation.default.getter();
    }

    __chkstk_darwin(v10);
    *&v11[-1] = v1;
    *(&v11[-1] + 1) = v6;
    withAnimation<A>(_:_:)();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_100120F64(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = type metadata accessor for Optional();
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Binding();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  v13 = *(v4 + 96);
  swift_beginAccess();
  (*(v10 + 16))(v12, a1 + v13, v9);
  v14 = *(v5 - 8);
  (*(v14 + 16))(v8, a2, v5);
  (*(v14 + 56))(v8, 0, 1, v5);
  Binding.wrappedValue.setter();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10012116C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_100120D08(v3);
}

uint64_t sub_1001211BC()
{
  v1 = *(*v0 + 96);
  type metadata accessor for Optional();
  v2 = type metadata accessor for Binding();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100121268()
{
  sub_1001211BC();

  return swift_deallocClassInstance();
}

uint64_t sub_1001212E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100120598(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100121308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100121384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_100121400()
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100121474()
{
  result = type metadata accessor for Array();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Optional();
    result = type metadata accessor for Binding();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100121510(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v5)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  v12 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_34;
  }

  v13 = v10 + *(*(*(a3 + 16) - 8) + 64) - (((-17 - v9) | v9) + ((-9 - v9) | v11));
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v17 < 2)
    {
LABEL_34:
      if (v8 == 0x7FFFFFFF)
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }

      else
      {
        v20 = (*(v4 + 48))((v9 + ((((a1 + v11 + 8) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9);
        if (v20 >= 2)
        {
          return v20 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_34;
  }

LABEL_23:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_100121710(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  v11 = *(v7 + 80);
  v12 = v11 | 7;
  v13 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v13;
  }

  v14 = -2 - ((-9 - v11) | v12) - (((-17 - v11) | v11) - v13);
  v15 = a3 >= v10;
  v16 = a3 - v10;
  if (v16 == 0 || !v15)
  {
LABEL_22:
    if (v10 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (v14 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v17 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
  if (!HIWORD(v17))
  {
    if (v17 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 >= 2)
    {
      v6 = v18;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_22;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_23:
    v19 = ~v10 + a2;
    if (v14 < 4)
    {
      v20 = (v19 >> (8 * v14)) + 1;
      if (v14)
      {
        v21 = v19 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v21;
            if (v6 > 1)
            {
LABEL_54:
              if (v6 == 2)
              {
                *&a1[v14] = v20;
              }

              else
              {
                *&a1[v14] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v6 > 1)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v6 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v19;
      v20 = 1;
      if (v6 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    if (v6)
    {
      a1[v14] = v20;
    }

    return;
  }

LABEL_32:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v14] = 0;
  }

  else if (v6)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v10 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *a1 = v22;
  }

  else
  {
    v23 = *(v7 + 56);
    v24 = (v11 + (((&a1[v12 + 8] & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11;
    v25 = a2 + 1;

    v23(v24, v25);
  }
}

uint64_t sub_1001219E0()
{
  v0 = type metadata accessor for EventService();
  sub_1000640DC(v0, qword_100239108);
  sub_10000BE10(v0, qword_100239108);
  return EventService.init()();
}

double sub_100121ABC@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v34 = v7;
  v35 = v6;
  (*(v3 + 8))(v5, v2);
  v32 = 0x80000001001C78A0;
  v33 = 0x80000001001C78C0;
  v8 = type metadata accessor for DesignTimeMusicPlaylist();
  v9 = *(v8 + 32);
  v10 = v8;
  v31 = v8;
  sub_100057B70((a1 + v9));
  v11 = type metadata accessor for DesignTimeImage();
  v12 = *(*(v11 - 8) + 56);
  v12(a1 + v9, 0, 1, v11);
  v13 = *(v10 + 36);
  v14 = type metadata accessor for URL();
  v30 = *(*(v14 - 8) + 56);
  v30(a1 + v13, 1, 1, v14);
  sub_1000024C4(&qword_100228640);
  v15 = (type metadata accessor for DesignTimeSong() - 8);
  v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001B49B0;
  v18 = (v17 + v16);
  v29 = 0x80000001001C78F0;
  v19 = v15[9];
  sub_100057B70(&v18[v19]);
  v12(&v18[v19], 0, 1, v11);
  URL.init(string:)();
  v20 = v15[11];
  v21 = type metadata accessor for PlayParameters();
  (*(*(v21 - 8) + 56))(&v18[v20], 1, 1, v21);
  v30(&v18[v15[13]], 1, 1, v14);
  *v18 = 0x61662072656B6F50;
  *(v18 + 1) = 0xEA00000000006563;
  *(v18 + 2) = 0x676147207964614CLL;
  *(v18 + 3) = 0xE900000000000061;
  v22 = v29;
  *(v18 + 4) = 0xD000000000000010;
  *(v18 + 5) = v22;
  v23 = &v18[v15[12]];
  *v23 = 0;
  v23[8] = 1;
  v18[v15[14]] = 0;
  v24 = v34;
  *a1 = v35;
  *(a1 + 8) = v24;
  v25 = v32;
  *(a1 + 16) = 0xD000000000000014;
  *(a1 + 24) = v25;
  result = 1.09334023e257;
  *(a1 + 32) = xmmword_1001BF050;
  v27 = v33;
  *(a1 + 48) = 0xD000000000000021;
  *(a1 + 56) = v27;
  *(a1 + *(v31 + 40)) = v17;
  return result;
}

void sub_100121E70()
{
  v1 = type metadata accessor for URL();
  v21 = *(v1 - 8);
  v22 = v1;
  __chkstk_darwin(v1);
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for DesignTimeImage();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000024C4(&qword_100221250);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  String.hash(into:)();
  String.hash(into:)();
  if (*(v0 + 40))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v0 + 56))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v0 + 56))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  v13 = type metadata accessor for DesignTimeMusicPlaylist();
  sub_10000BEB8(v0 + v13[8], v12, &qword_100221250);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    Hasher._combine(_:)(0);
    v15 = v21;
    v14 = v22;
  }

  else
  {
    sub_100005180(v12, v9);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    sub_100122C64(&qword_100221260, &type metadata accessor for URL);
    v14 = v22;
    dispatch thunk of Hashable.hash(into:)();
    if (*&v9[*(v6 + 24)])
    {
      Hasher._combine(_:)(1u);
      type metadata accessor for CGColor(0);
      sub_100122C64(&qword_100221268, type metadata accessor for CGColor);
      _CFObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v15 = v21;
    Hasher._combine(_:)(v9[*(v6 + 28)]);
    sub_100005124(v9);
  }

  sub_10000BEB8(v0 + v13[9], v5, &qword_1002214F8);
  if ((*(v15 + 48))(v5, 1, v14) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v16 = v20;
    (*(v15 + 32))(v20, v5, v14);
    Hasher._combine(_:)(1u);
    sub_100122C64(&qword_100221260, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v15 + 8))(v16, v14);
  }

  v17 = *(v0 + v13[10]);
  Hasher._combine(_:)(*(v17 + 16));
  for (i = *(v17 + 16); i; --i)
  {
    MusicItemID.init(stringLiteral:)();
    String.hash(into:)();
  }
}

uint64_t sub_10012238C()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_100122430(uint64_t a1)
{
  *(a1 + 8) = sub_100122C64(&qword_100228628, type metadata accessor for DesignTimeMusicPlaylist);
  result = sub_100122C64(&qword_100228630, type metadata accessor for DesignTimeMusicPlaylist);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeMusicPlaylist()
{
  result = qword_1002286A0;
  if (!qword_1002286A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_100122548()
{
  Hasher.init(_seed:)();
  sub_100121E70();
  return Hasher._finalize()();
}

Swift::Int sub_10012258C()
{
  Hasher.init(_seed:)();
  sub_100121E70();
  return Hasher._finalize()();
}

uint64_t sub_1001225C8(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v51 = *(v4 - 8);
  __chkstk_darwin(v4);
  v48 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v6 - 8);
  v49 = &v46 - v7;
  v8 = sub_1000024C4(&qword_100222A70);
  __chkstk_darwin(v8);
  v50 = &v46 - v9;
  v10 = type metadata accessor for DesignTimeImage();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000024C4(&qword_100221250);
  __chkstk_darwin(v14 - 8);
  v16 = (&v46 - v15);
  v17 = sub_1000024C4(&qword_100221258);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_35;
  }

  v20 = a1[5];
  v21 = a2[5];
  if (v20)
  {
    if (!v21 || (a1[4] != a2[4] || v20 != v21) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v21)
  {
    goto LABEL_35;
  }

  v22 = a1[7];
  v23 = a2[7];
  if (v22)
  {
    if (!v23 || (a1[6] != a2[6] || v22 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v23)
  {
    goto LABEL_35;
  }

  v47 = v4;
  v46 = type metadata accessor for DesignTimeMusicPlaylist();
  v24 = *(v46 + 32);
  v25 = *(v17 + 48);
  sub_10000BEB8(a1 + v24, v19, &qword_100221250);
  v26 = a2 + v24;
  v27 = v25;
  sub_10000BEB8(v26, &v19[v25], &qword_100221250);
  v28 = *(v11 + 48);
  if (v28(v19, 1, v10) != 1)
  {
    sub_10000BEB8(v19, v16, &qword_100221250);
    if (v28(&v19[v27], 1, v10) != 1)
    {
      sub_100005180(&v19[v27], v13);
      v31 = sub_10005859C(v16, v13);
      sub_100005124(v13);
      sub_100005124(v16);
      sub_1000050C4(v19, &qword_100221250);
      if ((v31 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }

    sub_100005124(v16);
LABEL_26:
    v29 = &qword_100221258;
    v30 = v19;
LABEL_34:
    sub_1000050C4(v30, v29);
    goto LABEL_35;
  }

  if (v28(&v19[v27], 1, v10) != 1)
  {
    goto LABEL_26;
  }

  sub_1000050C4(v19, &qword_100221250);
LABEL_28:
  v32 = v46;
  v33 = *(v46 + 36);
  v34 = *(v8 + 48);
  v35 = v50;
  sub_10000BEB8(a1 + v33, v50, &qword_1002214F8);
  sub_10000BEB8(a2 + v33, v35 + v34, &qword_1002214F8);
  v36 = v51;
  v37 = *(v51 + 48);
  v38 = v47;
  if (v37(v35, 1, v47) == 1)
  {
    if (v37(v35 + v34, 1, v38) == 1)
    {
      sub_1000050C4(v35, &qword_1002214F8);
LABEL_38:
      v40 = sub_10004966C(*(a1 + *(v32 + 40)), *(a2 + *(v32 + 40)));
      return v40 & 1;
    }

    goto LABEL_33;
  }

  v39 = v49;
  sub_10000BEB8(v35, v49, &qword_1002214F8);
  if (v37(v35 + v34, 1, v38) == 1)
  {
    (*(v36 + 8))(v39, v38);
LABEL_33:
    v29 = &qword_100222A70;
    v30 = v35;
    goto LABEL_34;
  }

  v42 = v35 + v34;
  v43 = v48;
  (*(v36 + 32))(v48, v42, v38);
  sub_100122C64(&qword_100222A78, &type metadata accessor for URL);
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v36 + 8);
  v45(v43, v38);
  v45(v39, v38);
  sub_1000050C4(v35, &qword_1002214F8);
  if (v44)
  {
    goto LABEL_38;
  }

LABEL_35:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_100122C64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100122CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000024C4(&qword_100221250);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_1002214F8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100122E10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000024C4(&qword_100221250);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_1002214F8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100122F4C()
{
  sub_1000EFEF8();
  if (v0 <= 0x3F)
  {
    sub_1001230A0(319, &qword_1002212D8, type metadata accessor for DesignTimeImage, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001230A0(319, &qword_100221420, &type metadata accessor for URL, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001230A0(319, &qword_100222FF0, type metadata accessor for DesignTimeSong, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001230A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100123118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000024C4(&qword_1002214F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001231E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(&qword_1002214F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AttributionViewModel()
{
  result = qword_100228748;
  if (!qword_100228748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001232E4()
{
  sub_10000693C();
  if (v0 <= 0x3F)
  {
    sub_1000994D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100123384@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin(v10);
  v47 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  __chkstk_darwin(v12 - 8);
  v44 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000024C4(&qword_100222078);
  __chkstk_darwin(v14 - 8);
  v48 = &v39 - v15;
  v16 = sub_1000024C4(&qword_1002214F8);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v39 - v20;
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AttributionViewModel();
  sub_100073F10(v2 + *(v26 + 32), v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1000050C4(v21, &qword_1002214F8);
    object = v2[1]._object;
    countAndFlagsBits = v2[1]._countAndFlagsBits;
    v51 = object;

    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    String.append(_:)(v2[3]);
    AttributeContainer.init()();
    return AttributedString.init(_:attributes:)();
  }

  else
  {
    v42 = v5;
    (*(v23 + 32))(v25, v21, v22);
    v30 = v2->_object;
    countAndFlagsBits = v2->_countAndFlagsBits;
    v51 = v30;

    v31._countAndFlagsBits = 23328;
    v31._object = 0xE200000000000000;
    String.append(_:)(v31);
    v32._countAndFlagsBits = v2[3]._countAndFlagsBits;
    v40 = v2[3]._object;
    v32._object = v40;
    v41 = v32._countAndFlagsBits;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 10333;
    v33._object = 0xE200000000000000;
    String.append(_:)(v33);
    sub_10006E2EC();
    v43 = v25;
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 41;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    (*(v23 + 56))(v19, 1, 1, v22);
    (*(v45 + 104))(v47, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v46);
    (*(v7 + 104))(v9, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v6);
    AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
    v36 = v48;
    AttributedString.init(markdown:options:baseURL:)();
    (*(v23 + 8))(v43, v22);
    v37 = type metadata accessor for AttributedString();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v36, 0, 1, v37);
    return (*(v38 + 32))(v49, v36, v37);
  }
}

void sub_100123A14(uint64_t a1)
{
  sub_1000024C4(&qword_100221508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  v4 = v1[4];
  v5 = v1[5];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  v6 = *(v1 + *(type metadata accessor for AttributionViewModel() + 36));
  if (v6 == 15)
  {
    LOBYTE(v6) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = v6;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 5;
  v7 = v1[6];
  v8 = v1[7];
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = v7;
  *(inited + 160) = v8;
  *(inited + 168) = 0;
  if (*(a1 + 72))
  {
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v17 = v9;
  v18 = v10;

  v11 = sub_1001894F4(1, 5, 1, inited);
  v15 = v11;
  sub_100006C98(&aBlock, v22);
  sub_100118768(4, v22, &v15, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v12 = String._bridgeToObjectiveC()();
  v13 = swift_allocObject();
  v13[2] = 0xD00000000000001ELL;
  v13[3] = 0x80000001001C4640;
  v13[4] = v11;
  v20 = sub_100006D88;
  v21 = v13;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10015B4A4;
  v19 = &unk_100217C58;
  v14 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v14);
}

uint64_t sub_100123C94()
{

  return swift_deallocObject();
}

uint64_t sub_100123CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100123CEC@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

double sub_100123D40@<D0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PromotionalAssetsEntryViewModel();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  *&v17 = a2;
  *(&v17 + 1) = a3;
  v18 = a4;
  v11 = type metadata accessor for PromotionalAssetsEntryView();
  v12 = v11[13];
  *(a5 + v12) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C8);
  swift_storeEnumTagMultiPayload();
  v13 = v11[14];
  *(a5 + v13) = swift_getKeyPath();
  sub_1000024C4(&qword_1002229F8);
  swift_storeEnumTagMultiPayload();
  v14 = a5 + v11[15];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = a5 + v11[16];
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  result = a2;
  *v15 = v17;
  *(v15 + 16) = v18;
  return result;
}

uint64_t sub_100123EE4@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

void sub_100123F38()
{
  type metadata accessor for PromotionalAssetsEntryViewModel();
  if (v0 <= 0x3F)
  {
    sub_10012A320(319, &qword_100221C00, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10012A320(319, &qword_100226230, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_10001B850();
        if (v3 <= 0x3F)
        {
          sub_10012A320(319, &qword_100228810, type metadata accessor for CGSize, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1001240A0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 16);
  v4 = *(v32 - 8);
  v5 = *(v4 + 84);
  v30 = *(a3 + 24);
  v6 = *(v30 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v31 = v8;
  if (v8 <= v5)
  {
    v8 = *(v4 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v33 = *(type metadata accessor for ColorScheme() - 8);
  v10 = *(v33 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v34 = v10;
  v11 = *(type metadata accessor for ContentSizeCategory() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  if (!v7)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v4 + 64) + v13;
  if (v9 < a2)
  {
    v16 = *(v33 + 80) & 0xF8 | 7;
    v17 = *(v11 + 80) & 0xF8 | 7;
    v18 = ((v12 + ((v34 + v17 + ((v16 + (((((v15 & ~v13) + v14) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v16) + 1) & ~v17) + 24) & 0xFFFFFFFFFFFFFFF8) + 24;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v9 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_31;
        }
      }
    }

    else if (v22)
    {
      v23 = *(a1 + v18);
      if (v23)
      {
LABEL_31:
        v24 = v23 - 1;
        if (v19)
        {
          v24 = 0;
          LODWORD(v19) = *a1;
        }

        return v9 + (v19 | v24) + 1;
      }
    }
  }

  if (v5 == v9)
  {
    v26 = *(v4 + 48);

    return v26(a1, v5, v32);
  }

  v27 = (a1 + v15) & ~v13;
  if (v31 == v9)
  {
    if (v7 >= 2)
    {
      v29 = (*(v6 + 48))(v27, v7, v30);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *(((v27 + v14) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

void sub_100124400(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v34 = *(a4 + 16);
  v4 = *(v34 - 8);
  v33 = v4;
  v5 = *(v4 + 84);
  v31 = *(a4 + 24);
  v6 = *(v31 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v32 = v8;
  if (v8 <= v5)
  {
    v8 = *(v4 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(type metadata accessor for ColorScheme() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = type metadata accessor for ContentSizeCategory();
  v13 = v7;
  v14 = 0;
  v15 = *(v12 - 8);
  if (*(v15 + 64) <= 8uLL)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v15 + 64);
  }

  v17 = *(v6 + 80);
  v18 = *(v4 + 64) + v17;
  v19 = *(v6 + 64);
  if (!v13)
  {
    ++v19;
  }

  v20 = *(v10 + 80) & 0xF8 | 7;
  v21 = *(v15 + 80) & 0xF8 | 7;
  v22 = ((v16 + ((v11 + v21 + ((v20 + (((((v18 & ~v17) + v19) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v20) + 1) & ~v21) + 24) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v9 < a3)
  {
    if (((v16 + ((v11 + v21 + ((v20 + (((((v18 & ~v17) + v19) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 32) & ~v20) + 1) & ~v21) + 24) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v23 = a3 - v9 + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v14 = v24;
    }

    else
    {
      v14 = 0;
    }
  }

  v25 = a2;
  if (a2 > v9)
  {
    if (v22)
    {
      v26 = 1;
    }

    else
    {
      v26 = a2 - v9;
    }

    if (v22)
    {
      bzero(a1, v22);
      *a1 = ~v9 + a2;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v22) = v26;
      }

      else
      {
        *(a1 + v22) = v26;
      }
    }

    else if (v14)
    {
      *(a1 + v22) = v26;
    }

    return;
  }

  v27 = a1;
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *(a1 + v22) = 0;
  }

  else if (v14)
  {
    *(a1 + v22) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v5 == v9)
  {
    v28 = v34;
    v29 = *(v33 + 56);
    v13 = v5;
  }

  else
  {
    v27 = ((a1 + v18) & ~v17);
    if (v32 != v9)
    {
      v30 = ((v27 + v19) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        v30[3] = 0;
        v30[4] = 0;
        v30[1] = a2 & 0x7FFFFFFF;
        v30[2] = 0;
      }

      else
      {
        v30[2] = a2 - 1;
      }

      return;
    }

    v29 = *(v6 + 56);
    v25 = a2 + 1;
    v28 = v31;
  }

  v29(v27, v25, v13, v28);
}

double sub_1001247C4()
{
  sub_1000024C4(&qword_100223B38);
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_100124888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = sub_1000024C4(&qword_100228818);
  sub_100124A14(v2, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), a2 + *(v5 + 44));
  v6 = a2 + *(sub_1000024C4(&qword_100228820) + 36);
  sub_100127AEC(a1, v6);
  v7 = static Alignment.center.getter();
  v9 = v8;
  v10 = (v6 + *(sub_1000024C4(&qword_100228828) + 36));
  *v10 = v7;
  v10[1] = v9;
  if (qword_100220BC0 != -1)
  {
    swift_once();
  }

  v11 = qword_1002390D8;
  v12 = (a2 + *(sub_1000024C4(&qword_100228830) + 36));
  v13 = *(type metadata accessor for RoundedRectangle() + 20);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = type metadata accessor for RoundedCornerStyle();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = v11;
  v12[1] = v11;
  result = sub_1000024C4(&qword_100221C80);
  *(v12 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100124A14@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v85 = a5;
  v102 = a4;
  *(&v101 + 1) = a3;
  *&v101 = a2;
  v100 = a1;
  v99 = a6;
  v11 = sub_1000024C4(&qword_100228850);
  __chkstk_darwin(v11 - 8);
  v91 = (&v85 - v12);
  v90 = sub_1000024C4(&qword_100228858);
  __chkstk_darwin(v90);
  v96 = &v85 - v13;
  v95 = sub_1000024C4(&qword_100228860);
  v14 = __chkstk_darwin(v95);
  v98 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v94 = &v85 - v17;
  __chkstk_darwin(v16);
  v97 = &v85 - v18;
  v19 = type metadata accessor for RoundedRectangle();
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = (&v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_1000024C4(&qword_1002243F0);
  __chkstk_darwin(v23 - 8);
  v25 = &v85 - v24;
  v26 = sub_1000024C4(&qword_100228868);
  v27 = v26 - 8;
  __chkstk_darwin(v26);
  v29 = &v85 - v28;
  v86 = sub_1000024C4(&qword_100228870);
  __chkstk_darwin(v86);
  v89 = &v85 - v30;
  v88 = sub_1000024C4(&qword_100228878);
  v31 = __chkstk_darwin(v88);
  v93 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v87 = &v85 - v34;
  __chkstk_darwin(v33);
  v92 = &v85 - v35;
  sub_100125490(a1, a2, a3, a4, a5, v29);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v36 = &v29[*(sub_1000024C4(&qword_100228880) + 36)];
  v37 = v104;
  *v36 = v103;
  *(v36 + 1) = v37;
  *(v36 + 2) = v105;
  *&v29[*(sub_1000024C4(&qword_100228888) + 36)] = 0;
  v38 = 6.0;
  if (static Solarium.isEnabled.getter())
  {
    v39 = 10.0;
  }

  else
  {
    v39 = 6.0;
  }

  v40 = &v29[*(v27 + 44)];
  v41 = *(v20 + 28);
  v42 = enum case for RoundedCornerStyle.continuous(_:);
  v43 = type metadata accessor for RoundedCornerStyle();
  v44 = *(*(v43 - 8) + 104);
  v44(v40 + v41, v42, v43);
  *v40 = v39;
  v40[1] = v39;
  *(v40 + *(sub_1000024C4(&qword_100221C80) + 36)) = 256;
  if (static Solarium.isEnabled.getter())
  {
    v38 = 10.0;
  }

  v44(v22 + *(v20 + 28), v42, v43);
  v45 = v85;
  *v22 = v38;
  v22[1] = v38;
  v109 = v101;
  *&v110 = v102;
  *(&v110 + 1) = v45;
  if (*(v100 + *(type metadata accessor for PromotionalAssetsEntryViewModel() + 56)))
  {
    static Color.white.getter();
  }

  else
  {
    static Color.black.getter();
  }

  v46 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_1001281D0(v22, v25, &type metadata accessor for RoundedRectangle);
  v47 = &v25[*(sub_1000024C4(&qword_100222870) + 36)];
  v48 = v107;
  *v47 = v106;
  *(v47 + 1) = v48;
  *(v47 + 4) = v108;
  v49 = sub_1000024C4(&qword_100222878);
  *&v25[*(v49 + 52)] = v46;
  *&v25[*(v49 + 56)] = 256;
  v50 = static Alignment.center.getter();
  v52 = v51;
  sub_100128238(v22, &type metadata accessor for RoundedRectangle);
  v53 = &v25[*(sub_1000024C4(&qword_100222880) + 36)];
  *v53 = v50;
  v53[1] = v52;
  v54 = static Alignment.center.getter();
  v56 = v55;
  v57 = v89;
  v58 = &v89[*(v86 + 36)];
  sub_10001AE00(v25, v58, &qword_1002243F0);
  v59 = (v58 + *(sub_1000024C4(&qword_100224440) + 36));
  *v59 = v54;
  v59[1] = v56;
  sub_10001AE00(v29, v57, &qword_100228868);
  v60 = static Edge.Set.all.getter();
  v61 = v57;
  v62 = v87;
  sub_10001AE00(v61, v87, &qword_100228870);
  v63 = v62 + *(v88 + 36);
  *v63 = v60;
  *(v63 + 8) = 0u;
  *(v63 + 24) = 0u;
  *(v63 + 40) = 1;
  v64 = v92;
  sub_10001AE00(v62, v92, &qword_100228878);
  v65 = static HorizontalAlignment.leading.getter();
  v66 = v91;
  *v91 = v65;
  *(v66 + 8) = 0x4020000000000000;
  *(v66 + 16) = 0;
  v67 = sub_1000024C4(&qword_100228890);
  sub_100125AEC(v100, v101, *(&v101 + 1), v102, v45, v66 + *(v67 + 44));
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v68 = v96;
  sub_10001AE00(v66, v96, &qword_100228850);
  v69 = (v68 + *(v90 + 36));
  v70 = v114;
  v69[4] = v113;
  v69[5] = v70;
  v69[6] = v115;
  v71 = v110;
  *v69 = v109;
  v69[1] = v71;
  v72 = v112;
  v69[2] = v111;
  v69[3] = v72;
  sub_1000024C4(&qword_100222388);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  v74 = static Edge.Set.vertical.getter();
  *(inited + 32) = v74;
  v75 = static Edge.Set.trailing.getter();
  *(inited + 33) = v75;
  v76 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v74)
  {
    v76 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v75)
  {
    v76 = Edge.Set.init(rawValue:)();
  }

  v77 = v94;
  sub_10001AE00(v68, v94, &qword_100228858);
  v78 = v77 + *(v95 + 36);
  *v78 = v76;
  *(v78 + 8) = 0u;
  *(v78 + 24) = 0u;
  *(v78 + 40) = 1;
  v79 = v97;
  sub_10001AE00(v77, v97, &qword_100228860);
  v80 = v93;
  sub_10000BEB8(v64, v93, &qword_100228878);
  v81 = v98;
  sub_10000BEB8(v79, v98, &qword_100228860);
  v82 = v99;
  sub_10000BEB8(v80, v99, &qword_100228878);
  v83 = sub_1000024C4(&qword_100228898);
  sub_10000BEB8(v81, v82 + *(v83 + 48), &qword_100228860);
  sub_1000050C4(v79, &qword_100228860);
  sub_1000050C4(v64, &qword_100228878);
  sub_1000050C4(v81, &qword_100228860);
  return sub_1000050C4(v80, &qword_100228878);
}

uint64_t sub_100125490@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a6;
  v49 = type metadata accessor for PhotoView(0);
  __chkstk_darwin(v49);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000024C4(&qword_100228938);
  __chkstk_darwin(v46);
  v48 = (&v40 - v12);
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v17 - 8);
  v19 = &v40 - v18;
  v51 = type metadata accessor for URL();
  v20 = *(v51 - 8);
  __chkstk_darwin(v51);
  v40 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;
  v43 = a3;
  v52 = a2;
  v53 = a3;
  v44 = a4;
  v45 = a5;
  v54 = a4;
  v55 = a5;
  result = type metadata accessor for PromotionalAssetsEntryView();
  v23 = a1 + *(result + 60);
  v24 = *v23;
  v25 = *(v23 + 8);
  v47 = a1;
  if (v25 == 1)
  {
    v26 = *&v24;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v24, 0);
    result = (*(v14 + 8))(v16, v13);
    v26 = v52;
  }

  v28 = v26 * 96.0;
  if (COERCE__INT64(fabs(v26 * 96.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v25)
  {
    v29 = *&v24;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v24, 0);
    result = (*(v14 + 8))(v16, v13);
    v29 = v52;
  }

  v31 = v51;
  v32 = v29 * 96.0;
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v33 = v32;
  v52 = v42;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v34 = type metadata accessor for PromotionalAssetsEntryViewModel();
  sub_100115600(v28, v33, v34, v19);
  if ((*(v20 + 48))(v19, 1, v31) == 1)
  {
    sub_1000050C4(v19, &qword_1002214F8);
    v35 = sub_100115354(v34);
    *v48 = v35;
    swift_storeEnumTagMultiPayload();
    sub_100129C80(&qword_100228940, type metadata accessor for PhotoView);
    sub_100129CC8();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v36 = v40;
    (*(v20 + 32))(v40, v19, v31);
    v37 = v41;
    (*(v20 + 16))(v41, v36, v31);
    v38 = sub_100115354(v34);
    v39 = v48;
    *(v37 + *(v49 + 20)) = v38;
    sub_1001281D0(v37, v39, type metadata accessor for PhotoView);
    swift_storeEnumTagMultiPayload();
    sub_100129C80(&qword_100228940, type metadata accessor for PhotoView);
    sub_100129CC8();
    _ConditionalContent<>.init(storage:)();
    sub_100128238(v37, type metadata accessor for PhotoView);
    return (*(v20 + 8))(v36, v31);
  }
}

uint64_t sub_100125AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v104 = a5;
  v114 = a4;
  v111 = a6;
  v113 = type metadata accessor for ColorScheme();
  v112 = *(v113 - 8);
  v10 = __chkstk_darwin(v113);
  v99 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v105 = &v99 - v12;
  v106 = sub_1000024C4(&qword_1002288A0);
  v13 = __chkstk_darwin(v106);
  v110 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v99 - v16;
  __chkstk_darwin(v15);
  v109 = &v99 - v18;
  v19 = sub_1000024C4(&qword_1002288A8);
  __chkstk_darwin(v19 - 8);
  v21 = &v99 - v20;
  v22 = sub_1000024C4(&qword_1002288B0);
  v23 = v22 - 8;
  v24 = __chkstk_darwin(v22);
  v108 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v99 - v27;
  __chkstk_darwin(v26);
  v30 = &v99 - v29;
  *v21 = static HorizontalAlignment.leading.getter();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v31 = &v21[*(sub_1000024C4(&qword_1002288B8) + 44)];
  v100 = a1;
  v32 = a2;
  v102 = a2;
  v33 = a2;
  v103 = a3;
  v34 = v114;
  sub_1001264B4(a1, v33, a3, v114, v6, v31);
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001AE00(v21, v28, &qword_1002288A8);
  v35 = &v28[*(v23 + 44)];
  v36 = v126;
  v37 = v128;
  v38 = v129;
  *(v35 + 4) = v127;
  *(v35 + 5) = v37;
  *(v35 + 6) = v38;
  v39 = v124;
  *v35 = v123;
  *(v35 + 1) = v39;
  *(v35 + 2) = v125;
  *(v35 + 3) = v36;
  v107 = v30;
  sub_10001AE00(v28, v30, &qword_1002288B0);
  v115 = v32;
  v116 = a3;
  v117 = v34;
  v118 = v6;
  v40 = type metadata accessor for PromotionalAssetsEntryViewModel();

  v41 = Text.init(_:tableName:bundle:comment:)();
  v43 = v42;
  LOBYTE(v6) = v44;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v45 = Text.font(_:)();
  v47 = v46;
  v49 = v48;
  v101 = v50;

  sub_100017398(v41, v43, v6 & 1);
  v51 = v100;

  LOBYTE(v6) = *(v51 + *(v40 + 56));
  v115 = v102;
  v116 = v103;
  v117 = v114;
  v118 = v104;
  v114 = type metadata accessor for PromotionalAssetsEntryView();
  v52 = v105;
  sub_100039EE0(v105);
  if ((v6 & 1) != 0 || (v53 = v112, v54 = v99, v55 = v113, (*(v112 + 104))(v99, enum case for ColorScheme.light(_:), v113), v56 = static ColorScheme.== infix(_:_:)(), v99 = *(v53 + 8), (v99)(v54, v55), (v56 & 1) == 0))
  {
    v115 = static Color.white.getter();
    v104 = Text.foregroundStyle<A>(_:)();
    v103 = v61;
    v59 = v62;
    v102 = v63;
    sub_100017398(v45, v47, v49 & 1);

    (*(v112 + 8))(v52, v113);
  }

  else
  {
    v115 = static Color.blue.getter();
    v104 = Text.foregroundStyle<A>(_:)();
    v103 = v57;
    v59 = v58;
    v102 = v60;
    sub_100017398(v45, v47, v49 & 1);

    (v99)(v52, v113);
  }

  LODWORD(v113) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v112 = v64;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v59 & 1;
  v120 = v59 & 1;
  v119 = 0;
  v72 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v121 = 0;
  sub_1001278FC(v114, &v115);
  v81 = v115;
  v82 = v116;
  v83 = static Alignment.center.getter();
  v85 = v84;
  v122 = v82;
  if (static Solarium.isEnabled.getter())
  {
    v86 = 16.0;
  }

  else
  {
    v86 = 14.0;
  }

  v87 = &v17[*(v106 + 36)];
  v88 = *(type metadata accessor for RoundedRectangle() + 20);
  v89 = enum case for RoundedCornerStyle.continuous(_:);
  v90 = type metadata accessor for RoundedCornerStyle();
  (*(*(v90 - 8) + 104))(v87 + v88, v89, v90);
  *v87 = v86;
  v87[1] = v86;
  *(v87 + *(sub_1000024C4(&qword_100221C80) + 36)) = 256;
  v91 = v103;
  *v17 = v104;
  *(v17 + 1) = v91;
  v17[16] = v71;
  *(v17 + 3) = v102;
  v17[32] = v113;
  *(v17 + 5) = v112;
  *(v17 + 6) = v66;
  *(v17 + 7) = v68;
  *(v17 + 8) = v70;
  v17[72] = 0;
  v17[80] = v72;
  *(v17 + 11) = v74;
  *(v17 + 12) = v76;
  *(v17 + 13) = v78;
  *(v17 + 14) = v80;
  v17[120] = 0;
  *(v17 + 16) = v81;
  v17[136] = v82;
  *(v17 + 18) = v83;
  *(v17 + 19) = v85;
  v92 = v109;
  sub_10001AE00(v17, v109, &qword_1002288A0);
  v93 = v107;
  v94 = v108;
  sub_10000BEB8(v107, v108, &qword_1002288B0);
  v95 = v110;
  sub_10000BEB8(v92, v110, &qword_1002288A0);
  v96 = v111;
  sub_10000BEB8(v94, v111, &qword_1002288B0);
  v97 = sub_1000024C4(&qword_1002288C0);
  sub_10000BEB8(v95, v96 + *(v97 + 48), &qword_1002288A0);
  sub_1000050C4(v92, &qword_1002288A0);
  sub_1000050C4(v93, &qword_1002288B0);
  sub_1000050C4(v95, &qword_1002288A0);
  return sub_1000050C4(v94, &qword_1002288B0);
}

uint64_t sub_1001264B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a6;
  v62 = type metadata accessor for ContentSizeCategory();
  v11 = *(v62 - 8);
  v12 = __chkstk_darwin(v62);
  v14 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v53[-v15];
  v17 = sub_1000024C4(&qword_1002288C8);
  v18 = __chkstk_darwin(v17 - 8);
  v64 = &v53[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v21 = &v53[-v20];
  *v21 = static VerticalAlignment.center.getter();
  *(v21 + 1) = 0x4000000000000000;
  v21[16] = 0;
  v22 = sub_1000024C4(&qword_1002288D0);
  sub_100126A60(a1, a2, a3, a4, a5, &v21[*(v22 + 44)]);
  v58 = a2;
  v70 = a2;
  v71 = a3;
  v59 = a3;
  v60 = a4;
  v72 = a4;
  v73 = a5;
  v61 = a5;
  v23 = type metadata accessor for PromotionalAssetsEntryViewModel();
  sub_100115510(v23);
  v24 = Text.init(_:tableName:bundle:comment:)();
  v26 = v25;
  v28 = v27;
  if (*(a1 + *(v23 + 56)))
  {
    v70 = static Color.white.getter();
    v56 = Text.foregroundStyle<A>(_:)();
    v55 = v29;
    v54 = v30;
    v57 = v31;
    sub_100017398(v24, v26, v28 & 1);
  }

  else
  {
    LODWORD(v70) = static HierarchicalShapeStyle.primary.getter();
    v56 = Text.foregroundStyle<A>(_:)();
    v55 = v32;
    v54 = v33;
    v57 = v34;
    sub_100017398(v24, v26, v28 & 1);
  }

  v70 = v58;
  v71 = v59;
  v72 = v60;
  v73 = v61;
  type metadata accessor for PromotionalAssetsEntryView();
  sub_10003A100(v16);
  v35 = v62;
  (*(v11 + 104))(v14, enum case for ContentSizeCategory.accessibilityMedium(_:), v62);
  v36 = sub_100172140(v16, v14);
  v37 = *(v11 + 8);
  v37(v14, v35);
  v37(v16, v35);
  if (v36)
  {
    v38 = 3;
  }

  else
  {
    v38 = 2;
  }

  KeyPath = swift_getKeyPath();
  v62 = static Font.subheadline.getter();
  v40 = swift_getKeyPath();
  v61 = v40;
  v41 = v54 & 1;
  v83 = v54 & 1;
  v81 = 0;
  v42 = v64;
  sub_10000BEB8(v21, v64, &qword_1002288C8);
  v43 = v63;
  sub_10000BEB8(v42, v63, &qword_1002288C8);
  v44 = v43 + *(sub_1000024C4(&qword_1002288D8) + 48);
  v45 = v56;
  *&v65 = v56;
  v46 = v55;
  *(&v65 + 1) = v55;
  LOBYTE(v66) = v41;
  *(&v66 + 1) = *v82;
  DWORD1(v66) = *&v82[3];
  v47 = v21;
  v48 = v57;
  *(&v66 + 1) = v57;
  *&v67 = KeyPath;
  *(&v67 + 1) = v38;
  LOBYTE(v68) = 0;
  *(&v68 + 1) = *v80;
  DWORD1(v68) = *&v80[3];
  *(&v68 + 1) = v40;
  v49 = v62;
  v69 = v62;
  *(v44 + 64) = v62;
  v50 = v66;
  *v44 = v65;
  *(v44 + 16) = v50;
  v51 = v68;
  *(v44 + 32) = v67;
  *(v44 + 48) = v51;
  sub_10000BEB8(&v65, &v70, &qword_100222270);
  sub_1000050C4(v47, &qword_1002288C8);
  v70 = v45;
  v71 = v46;
  LOBYTE(v72) = v41;
  *(&v72 + 1) = *v82;
  HIDWORD(v72) = *&v82[3];
  v73 = v48;
  v74 = KeyPath;
  v75 = v38;
  v76 = 0;
  *v77 = *v80;
  *&v77[3] = *&v80[3];
  v78 = v61;
  v79 = v49;
  sub_1000050C4(&v70, &qword_100222270);
  return sub_1000050C4(v42, &qword_1002288C8);
}

uint64_t sub_100126A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v111 = a4;
  v112 = a5;
  v109 = a2;
  v110 = a3;
  v108 = a6;
  *&v117 = a2;
  *(&v117 + 1) = a3;
  *&v118 = a4;
  *(&v118 + 1) = a5;
  v7 = type metadata accessor for PromotionalAssetsEntryView();
  v106 = *(v7 - 8);
  v103 = *(v106 + 64);
  __chkstk_darwin(v7);
  v104 = &v82 - v8;
  v101 = type metadata accessor for ColorScheme();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Material();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1000024C4(&qword_1002288E0);
  __chkstk_darwin(v89);
  v87 = &v82 - v11;
  v90 = sub_1000024C4(&qword_1002288E8);
  __chkstk_darwin(v90);
  v92 = &v82 - v12;
  v91 = sub_1000024C4(&qword_1002288F0);
  __chkstk_darwin(v91);
  v95 = &v82 - v13;
  v94 = sub_1000024C4(&qword_1002288F8);
  v14 = __chkstk_darwin(v94);
  v102 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v93 = &v82 - v17;
  __chkstk_darwin(v16);
  v98 = &v82 - v18;
  v19 = sub_1000024C4(&qword_100228900);
  v20 = v19 - 8;
  v21 = __chkstk_darwin(v19);
  v97 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v82 - v23;
  sub_100127578(v7, &v117);
  BYTE3(v118) = 1;
  sub_1000024C4(&qword_100228908);
  sub_1001297C4();
  View.accessibilityHidden(_:)();
  j__swift_release();
  v107 = v7;
  sub_1001247C4();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v25 = *(v20 + 44);
  v96 = v24;
  v26 = &v24[v25];
  v27 = v118;
  *v26 = v117;
  *(v26 + 1) = v27;
  *(v26 + 2) = v119;
  v113 = v109;
  v114 = v110;
  v115 = v111;
  v116 = v112;
  v28 = type metadata accessor for PromotionalAssetsEntryViewModel();

  v29 = Text.init(_:tableName:bundle:comment:)();
  v31 = v30;
  v33 = v32;
  v34 = *(v28 + 56);
  v105 = a1;
  v88 = *(a1 + v34);
  if (v88)
  {
    v35 = v82;
    static Material.thin.getter();
    v36 = v84;
    v86 = Text.foregroundStyle<A>(_:)();
    v85 = v37;
    v39 = v38;
    v41 = v40;
    sub_100017398(v29, v31, v33 & 1);

    (*(v83 + 8))(v35, v36);
  }

  else
  {
    v42 = [objc_opt_self() secondaryLabelColor];
    v113 = Color.init(uiColor:)();
    v86 = Text.foregroundStyle<A>(_:)();
    v85 = v43;
    v39 = v44;
    v41 = v45;
    sub_100017398(v29, v31, v33 & 1);
  }

  static Font.caption2.getter();
  static Font.Weight.bold.getter();
  v46 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v48 = v87;
  v49 = &v87[*(v89 + 36)];
  v50 = *(sub_1000024C4(&qword_100221B70) + 28);
  v51 = enum case for Text.Case.uppercase(_:);
  v52 = type metadata accessor for Text.Case();
  v53 = *(v52 - 8);
  (*(v53 + 104))(v49 + v50, v51, v52);
  (*(v53 + 56))(v49 + v50, 0, 1, v52);
  *v49 = swift_getKeyPath();
  v54 = v85;
  *v48 = v86;
  *(v48 + 8) = v54;
  *(v48 + 16) = v39 & 1;
  *(v48 + 24) = v41;
  *(v48 + 32) = KeyPath;
  *(v48 + 40) = v46;
  v55 = swift_getKeyPath();
  v56 = v92;
  sub_10001AE00(v48, v92, &qword_1002288E0);
  v57 = v56 + *(v90 + 36);
  *v57 = v55;
  *(v57 + 8) = 1;
  *(v57 + 16) = 0;
  v58 = swift_getKeyPath();
  if (v88)
  {
    v59 = v100;
    v60 = v99;
    v61 = v101;
    (*(v100 + 104))(v99, enum case for ColorScheme.light(_:), v101);
    v62 = v107;
    v63 = v105;
  }

  else
  {
    v62 = v107;
    v63 = v105;
    v60 = v99;
    sub_100039EE0(v99);
    v61 = v101;
    v59 = v100;
  }

  v64 = v95;
  v65 = &v95[*(v91 + 36)];
  v66 = sub_1000024C4(&qword_100228480);
  (*(v59 + 32))(v65 + *(v66 + 28), v60, v61);
  *v65 = v58;
  sub_10001AE00(v56, v64, &qword_1002288E8);
  v67 = v106;
  v68 = v104;
  (*(v106 + 16))(v104, v63, v62);
  v69 = (*(v67 + 80) + 48) & ~*(v67 + 80);
  v70 = swift_allocObject();
  v71 = v110;
  *(v70 + 2) = v109;
  *(v70 + 3) = v71;
  v72 = v112;
  *(v70 + 4) = v111;
  *(v70 + 5) = v72;
  (*(v67 + 32))(&v70[v69], v68, v62);
  v73 = v93;
  sub_10001AE00(v64, v93, &qword_1002288F0);
  v74 = (v73 + *(v94 + 36));
  *v74 = sub_100069438;
  v74[1] = 0;
  v74[2] = sub_100129BAC;
  v74[3] = v70;
  v75 = v98;
  sub_10001AE00(v73, v98, &qword_1002288F8);
  v76 = v96;
  v77 = v97;
  sub_10000BEB8(v96, v97, &qword_100228900);
  v78 = v102;
  sub_10000BEB8(v75, v102, &qword_1002288F8);
  v79 = v108;
  sub_10000BEB8(v77, v108, &qword_100228900);
  v80 = sub_1000024C4(&qword_100228928);
  sub_10000BEB8(v78, v79 + *(v80 + 48), &qword_1002288F8);
  sub_1000050C4(v75, &qword_1002288F8);
  sub_1000050C4(v76, &qword_100228900);
  sub_1000050C4(v78, &qword_1002288F8);
  return sub_1000050C4(v77, &qword_100228900);
}

double sub_100127578@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColorScheme();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = *(a1 + 32);
  v29 = *(a1 + 16);
  v30 = v16;
  if ((*(v2 + *(type metadata accessor for PromotionalAssetsEntryViewModel() + 56)) & 1) != 0 || (sub_100039EE0(v15), (*(v10 + 104))(v13, enum case for ColorScheme.light(_:), v9), v17 = static ColorScheme.== infix(_:_:)(), v18 = *(v10 + 8), v18(v13, v9), v18(v15, v9), (v17 & 1) == 0))
  {
    Image.init(_:bundle:)();
    (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
    v20 = Image.resizable(capInsets:resizingMode:)();

    (*(v6 + 8))(v8, v5);
    v25 = v20;
    v26 = 0;
    v27 = 1;
    v28 = 1;
  }

  else
  {
    Image.init(_:bundle:)();
    (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
    v19 = Image.resizable(capInsets:resizingMode:)();

    (*(v6 + 8))(v8, v5);
    v25 = v19;
    v26 = 0;
    v27 = 1;
    v28 = 0;
  }

  sub_1000024C4(&qword_100223B58);
  sub_100069870();
  _ConditionalContent<>.init(storage:)();
  result = *&v29;
  v22 = v30;
  v23 = BYTE2(v30);
  *a2 = v29;
  *(a2 + 16) = v22;
  *(a2 + 18) = v23;
  return result;
}

uint64_t sub_1001278FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = *(a1 + 32);
  v20 = *(a1 + 16);
  v21 = v12;
  if ((*(v2 + *(type metadata accessor for PromotionalAssetsEntryViewModel() + 56)) & 1) != 0 || (sub_100039EE0(v11), (*(v6 + 104))(v9, enum case for ColorScheme.light(_:), v5), v13 = static ColorScheme.== infix(_:_:)(), v14 = *(v6 + 8), v14(v9, v5), v14(v11, v5), (v13 & 1) == 0))
  {
    v18 = 11;
    v19 = 1;
  }

  else
  {
    v15 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
    v18 = Color.init(uiColor:)();
    v19 = 0;
  }

  sub_1000055F4();
  result = _ConditionalContent<>.init(storage:)();
  v17 = BYTE8(v20);
  *a2 = v20;
  *(a2 + 8) = v17;
  return result;
}

uint64_t sub_100127AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v43 = sub_1000024C4(&qword_100228838);
  __chkstk_darwin(v43);
  v45 = (&v38 - v5);
  v44 = type metadata accessor for PhotoBackgroundView(0);
  __chkstk_darwin(v44);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  result = __chkstk_darwin(v14);
  v38 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  v40 = *(a1 + 32);
  v41 = v18;
  v19 = v3 + *(a1 + 60);
  v20 = *v19;
  v21 = *(v19 + 8);
  v42 = v3;
  if (v21 == 1)
  {
    v22 = *&v20;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v20, 0);
    result = (*(v8 + 8))(v10, v7);
    v22 = *&v47;
  }

  v24 = v22 * 96.0;
  if (COERCE__INT64(fabs(v22 * 96.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v21)
  {
    v25 = *&v20;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v20, 0);
    result = (*(v8 + 8))(v10, v7);
    v25 = *&v47;
  }

  v27 = v25 * 96.0;
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v28 = v27;
  v47 = v41;
  v48 = v40;
  v29 = type metadata accessor for PromotionalAssetsEntryViewModel();
  v30 = v42;
  sub_100115600(v24, v28, v29, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000050C4(v13, &qword_1002214F8);
    v31 = sub_100115354(v29);
    v32 = *(v30 + *(v29 + 56));
    v33 = v45;
    *v45 = v31;
    *(v33 + 8) = v32;
    swift_storeEnumTagMultiPayload();
    sub_100129C80(&qword_100228840, type metadata accessor for PhotoBackgroundView);
    sub_10012817C();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v34 = v38;
    (*(v15 + 32))(v38, v13, v14);
    v35 = *(v30 + *(v29 + 56));
    v36 = v39;
    (*(v15 + 16))(v39, v34, v14);
    v37 = v45;
    *(v36 + *(v44 + 20)) = v35;
    sub_1001281D0(v36, v37, type metadata accessor for PhotoBackgroundView);
    swift_storeEnumTagMultiPayload();
    sub_100129C80(&qword_100228840, type metadata accessor for PhotoBackgroundView);
    sub_10012817C();
    _ConditionalContent<>.init(storage:)();
    sub_100128238(v36, type metadata accessor for PhotoBackgroundView);
    return (*(v15 + 8))(v34, v14);
  }
}

unint64_t sub_10012817C()
{
  result = qword_100228848;
  if (!qword_100228848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228848);
  }

  return result;
}

uint64_t sub_1001281D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100128238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100128298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AsyncImagePhase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  if ((*(v11 + 88))(v13, v10) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    v14 = Image.resizable(capInsets:resizingMode:)();
    (*(v7 + 8))(v9, v6);
    v21 = v14;
    v22 = 0;
    v23 = 257;
    v24 = 0;
    swift_retain_n();
    sub_1000024C4(&qword_100223B58);
    sub_100069870();
    sub_100129CC8();
    _ConditionalContent<>.init(storage:)();

    v16 = v25;
    v17 = v26;
    v18 = v27;
  }

  else
  {
    v21 = *(a2 + *(type metadata accessor for PhotoView(0) + 20));
    v22 = 0;
    v23 = 0;
    v24 = 1;
    v19 = v21;
    sub_1000024C4(&qword_100223B58);
    sub_100069870();
    sub_100129CC8();
    _ConditionalContent<>.init(storage:)();
    v20 = v25;
    v17 = v26;
    v18 = v27;
    result = (*(v11 + 8))(v13, v10);
    v16 = v20;
  }

  *a3 = v16;
  *(a3 + 16) = v17;
  *(a3 + 18) = v18;
  return result;
}

uint64_t sub_1001285C8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1 - 8);
  v5 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, v2, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  sub_1001281D0(v2, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoView);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_10012A780(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PhotoView);
  sub_1000024C4(&qword_100228AD8);
  sub_10012A594(&qword_100228AE0, &qword_100228AD8, &unk_1001BF688, sub_100129CC8);
  return AsyncImage.init(url:scale:transaction:content:)();
}

uint64_t sub_10012881C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_1000024C4(&qword_100228A98);
  v7 = __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = sub_1000024C4(&qword_100228AA0);
  __chkstk_darwin(v12);
  v14 = (&v26 - v13);
  v15 = sub_1000024C4(&qword_100228AA8);
  __chkstk_darwin(v15);
  v17 = (&v26 - v16);
  if (*(v1 + *(type metadata accessor for PhotoBackgroundView(0) + 20)))
  {
    *v14 = static Alignment.center.getter();
    v14[1] = v18;
    v27 = v14 + *(sub_1000024C4(&qword_100228AB0) + 44);
    v19 = type metadata accessor for URL();
    v28 = a1;
    v29 = v12;
    v20 = v19;
    v21 = *(v19 - 8);
    (*(v21 + 16))(v5, v1, v19);
    (*(v21 + 56))(v5, 0, 1, v20);
    sub_1000024C4(&qword_100227A80);
    sub_10012A594(&qword_100227A88, &qword_100227A80, &unk_1001BDBD0, sub_1000573BC);
    AsyncImage.init(url:scale:transaction:content:)();
    v22 = &v11[*(v6 + 36)];
    *v22 = 0x4039000000000000;
    v22[8] = 0;
    sub_10000BEB8(v11, v9, &qword_100228A98);
    v23 = v27;
    sub_10000BEB8(v9, v27, &qword_100228A98);
    *(v23 + *(sub_1000024C4(&qword_100228AB8) + 48)) = 18;
    sub_1000050C4(v11, &qword_100228A98);
    sub_1000050C4(v9, &qword_100228A98);
    sub_10000BEB8(v14, v17, &qword_100228AA0);
    swift_storeEnumTagMultiPayload();
    sub_10000BFFC(&qword_100228AC0, &qword_100228AA0);
    _ConditionalContent<>.init(storage:)();
    return sub_1000050C4(v14, &qword_100228AA0);
  }

  else
  {
    v25 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    *v17 = Color.init(uiColor:)();
    swift_storeEnumTagMultiPayload();
    sub_10000BFFC(&qword_100228AC0, &qword_100228AA0);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100128CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AsyncImagePhase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v12 = Image.resizable(capInsets:resizingMode:)();
    (*(v5 + 8))(v7, v4);
    v18 = v12;
    v19 = 0;
    v20 = 257;
    v21 = 0;
    swift_retain_n();
    sub_1000024C4(&qword_100223B58);
    sub_1000024C4(&qword_100223298);
    sub_100069870();
    sub_1000573BC();
    _ConditionalContent<>.init(storage:)();

    v14 = v22;
    v15 = v23;
    v16 = v24;
  }

  else
  {
    v18 = static Color.blue.getter();
    v19 = 0;
    v20 = 0;
    v21 = 1;
    sub_1000024C4(&qword_100223B58);
    sub_1000024C4(&qword_100223298);
    sub_100069870();
    sub_1000573BC();
    _ConditionalContent<>.init(storage:)();
    v17 = v22;
    v15 = v23;
    v16 = v24;
    result = (*(v9 + 8))(v11, v8);
    v14 = v17;
  }

  *a2 = v14;
  *(a2 + 16) = v15;
  *(a2 + 18) = v16;
  return result;
}

uint64_t sub_100128FEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RoundedRectangle();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000024C4(&qword_1002259F8);
  v9 = __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v46 - v13;
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = *(v5 + 28);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = type metadata accessor for RoundedCornerStyle();
  (*(*(v19 - 8) + 104))(&v7[v17], v18, v19);
  __asm { FMOV            V0.2D, #6.0 }

  *v7 = _Q0;
  if (a1)
  {
    v25 = a1;
    v26 = Color.init(cgColor:)();
  }

  else
  {
    v26 = static Color.blue.getter();
  }

  v27 = v26;
  sub_10012A780(v7, v14, &type metadata accessor for RoundedRectangle);
  *&v14[*(v8 + 52)] = v27;
  *&v14[*(v8 + 56)] = 256;
  sub_10001AE00(v14, v16, &qword_1002259F8);
  v28 = Image.init(_:bundle:)();
  v29 = Image.init(systemName:)();
  v48 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  sub_1000024C4(&qword_100221D18);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1001B3B50;
  static Color.white.getter();
  v32 = Color.opacity(_:)();

  *(v31 + 32) = v32;
  *(v31 + 40) = static Color.white.getter();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v33 = v57;
  v34 = v58;
  v35 = v59;
  v36 = v60;
  v37 = v61;
  static Color.black.getter();
  v38 = Color.opacity(_:)();

  sub_10000BEB8(v16, v11, &qword_1002259F8);
  sub_10000BEB8(v11, a2, &qword_1002259F8);
  v39 = sub_1000024C4(&qword_100228AF0);
  *(a2 + v39[12]) = 16;
  *(a2 + v39[16]) = v28;
  v40 = (a2 + v39[20]);
  *&v49 = v29;
  *(&v49 + 1) = KeyPath;
  v47 = v11;
  v41 = v48;
  *&v50 = v48;
  *(&v50 + 1) = v33;
  *&v51 = v34;
  *(&v51 + 1) = v35;
  *&v52 = v36;
  *(&v52 + 1) = v37;
  *&v53[0] = v38;
  v46 = xmmword_1001BF170;
  *(v53 + 8) = xmmword_1001BF170;
  *(&v53[1] + 1) = 0x4020000000000000;
  v42 = v52;
  v40[2] = v51;
  v40[3] = v42;
  v43 = v50;
  *v40 = v49;
  v40[1] = v43;
  v44 = v53[1];
  v40[4] = v53[0];
  v40[5] = v44;

  sub_10000BEB8(&v49, v54, &qword_100228AF8);
  sub_1000050C4(v16, &qword_1002259F8);
  v54[0] = v29;
  v54[1] = KeyPath;
  v54[2] = v41;
  v54[3] = v33;
  v54[4] = v34;
  v54[5] = v35;
  v54[6] = v36;
  v54[7] = v37;
  v54[8] = v38;
  v55 = v46;
  v56 = 0x4020000000000000;
  sub_1000050C4(v54, &qword_100228AF8);

  return sub_1000050C4(v47, &qword_1002259F8);
}

uint64_t sub_1001294C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = sub_1000024C4(&qword_100228AE8);
  return sub_100128FEC(v3, a1 + *(v5 + 44));
}

double sub_100129514@<D0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    static Alignment.center.getter();
    sub_100129650(a1, v10);
  }

  else
  {
    v5 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    Color.init(uiColor:)();
  }

  sub_1000024C4(&qword_100228AC8);
  sub_10000BFFC(&qword_100228AD0, &qword_100228AC8);
  _ConditionalContent<>.init(storage:)();
  result = *v10;
  v7 = v10[1];
  v8 = v11;
  v9 = v12;
  *a3 = v10[0];
  *(a3 + 16) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  return result;
}

uint64_t sub_100129650@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    Color.init(cgColor:)();
  }

  else
  {
    static Color.blue.getter();
  }

  result = _ConditionalContent<>.init(storage:)();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = 17;
  return result;
}

uint64_t sub_10012970C(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100228930);
  __chkstk_darwin(v2 - 8);
  sub_10000BEB8(a1, &v5 - v3, &qword_100228930);
  return EnvironmentValues.textCase.setter();
}

unint64_t sub_1001297C4()
{
  result = qword_100228910;
  if (!qword_100228910)
  {
    sub_10000460C(&qword_100228908);
    sub_100129850();
    sub_10005DDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228910);
  }

  return result;
}

unint64_t sub_100129850()
{
  result = qword_100228918;
  if (!qword_100228918)
  {
    sub_10000460C(&qword_100228920);
    sub_100069870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228918);
  }

  return result;
}

uint64_t sub_100129900()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for PromotionalAssetsEntryView();
  v4 = v0 + ((*(*(v3 - 1) + 80) + 48) & ~*(*(v3 - 1) + 80));
  (*(*(v2 - 8) + 8))(v4, v2);
  v5 = *(type metadata accessor for PromotionalAssetsEntryViewModel() + 52);
  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v4 + v5, 1, v1))
  {
    (*(v6 + 8))(v4 + v5, v1);
  }

  v7 = v3[13];
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  v9 = v3[14];
  sub_1000024C4(&qword_1002229F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ContentSizeCategory();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else
  {
  }

  sub_10001BC5C(*(v4 + v3[15]), *(v4 + v3[15] + 8));

  return swift_deallocObject();
}

uint64_t sub_100129BAC()
{
  type metadata accessor for PromotionalAssetsEntryView();
  type metadata accessor for PromotionalAssetsEntryView();
  return sub_100124824();
}

uint64_t sub_100129C80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100129CC8()
{
  result = qword_100228948;
  if (!qword_100228948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228948);
  }

  return result;
}

uint64_t sub_100129D1C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100129D30(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100129D8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100129E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100129ED0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100129F88()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10012A008(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10012A064(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10012A0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
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

uint64_t sub_10012A1B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
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

void sub_10012A26C()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10012A320(319, &qword_100223360, type metadata accessor for CGColor, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10012A320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_10012A388()
{
  result = qword_100228A70;
  if (!qword_100228A70)
  {
    sub_10000460C(&qword_100228830);
    sub_10012A440();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A70);
  }

  return result;
}

unint64_t sub_10012A440()
{
  result = qword_100228A78;
  if (!qword_100228A78)
  {
    sub_10000460C(&qword_100228820);
    sub_10000BFFC(&qword_100228A80, &qword_100228A88);
    sub_10000BFFC(&qword_100228A90, &qword_100228828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A78);
  }

  return result;
}

uint64_t sub_10012A594(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    sub_100069870();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10012A618()
{
  v1 = (type metadata accessor for PhotoView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_10012A700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotoView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100128298(a1, v6, a2);
}

uint64_t sub_10012A780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10012A7EC()
{
  result = qword_100228B00;
  if (!qword_100228B00)
  {
    sub_10000460C(&qword_100228B08);
    sub_10000BFFC(&qword_100228AC0, &qword_100228AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228B00);
  }

  return result;
}

unint64_t sub_10012A8A8()
{
  result = qword_100228B10;
  if (!qword_100228B10)
  {
    sub_10000460C(&qword_100228B18);
    sub_10000BFFC(&qword_100228AD0, &qword_100228AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228B10);
  }

  return result;
}

uint64_t sub_10012A9FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10012AA90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_10012AB5C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10012AC40()
{
  String.hash(into:)();
}

Swift::Int sub_10012AD10()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10012ADF0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10012C130(*a1);
  *a2 = result;
  return result;
}

void sub_10012AE20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE800000000000000;
  v6 = 0x656D614E65676170;
  v7 = 0xEA0000000000656DLL;
  v8 = 0x614E656C75646F6DLL;
  if (v2 != 3)
  {
    v8 = 0x6341656C75646F6DLL;
    v7 = 0xEC0000006E6F6974;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x4449656C646E7562;
    v3 = 0xE800000000000000;
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

id sub_10012AEC8()
{
  v0 = objc_allocWithZone(NSString);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithString:v1];

  return v2;
}

unint64_t sub_10012AF90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10012C17C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10012AFC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10012B044(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10012AFF0()
{
  result = qword_100228B40;
  if (!qword_100228B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228B40);
  }

  return result;
}

uint64_t sub_10012B044(char a1)
{
  result = 0x746E657665;
  switch(a1)
  {
    case 1:
      result = 0x756D2D746E657665;
      break;
    case 2:
      result = 0x70732D746E657665;
      break;
    case 3:
      result = 0x68742D746E657665;
      break;
    case 4:
      result = 0x61642D746E657665;
      break;
    case 5:
      result = 0x72612D746E657665;
      break;
    case 6:
      v3 = 0x45746E657665;
      goto LABEL_15;
    case 7:
      result = 0x747369747261;
      break;
    case 8:
      result = 0x7245747369747261;
      break;
    case 9:
      result = 0x65756E6576;
      break;
    case 10:
      v3 = 0x4565756E6576;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7272000000000000;
      break;
    case 11:
      result = 0x7374656B636974;
      break;
    case 12:
      result = 0x737265746C6966;
      break;
    case 13:
      result = 0x746E65746E6F63;
      break;
    case 14:
      result = 0x45746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10012B268(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_10012B314(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10012B398(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int sub_10012B408(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10012B470@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10012C4E8();
  *a1 = result;
  return result;
}

unint64_t sub_10012B4A0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10012B4CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10012B4CC(char a1)
{
  result = 0x7261626C6F6F74;
  switch(a1)
  {
    case 1:
      result = 0x726564616568;
      break;
    case 2:
      result = 0x7261646E656C6163;
      break;
    case 3:
      result = 0x42746E65746E6F63;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6C75646F4D707061;
      break;
    case 7:
      result = 0x707041636973756DLL;
      break;
    case 8:
      result = 0x70417374726F7073;
      break;
    case 9:
      result = 0x737265746C6966;
      break;
    case 10:
      result = 0x694C73746E657665;
      break;
    case 11:
      result = 0x646F4D636973756DLL;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x7473694C746573;
      break;
    case 14:
      result = 0x507473694C746573;
      break;
    case 15:
      result = 0x736F65646976;
      break;
    case 16:
      result = 0x7473696C79616C70;
      break;
    case 17:
      result = 0x676E696D6F637075;
      break;
    default:
      return result;
  }

  return result;
}

id sub_10012B728(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(*v3);
  v4 = objc_allocWithZone(NSString);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithString:v5];

  return v6;
}

uint64_t sub_10012B7A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    v3 = 0x686372616573;
    switch(a1)
    {
      case 1:
        v3 = 0x6572616873;
        break;
      case 2:
        v3 = 0x7373696D736964;
        break;
      case 3:
        v3 = 0x656B636954746567;
        break;
      case 4:
        v3 = 0x6C61436F54646461;
        break;
      case 5:
        v3 = 0x7370614D776F6873;
        break;
      case 6:
        v3 = 0x64616F6C6E776F64;
        break;
      case 7:
        v5 = 0x657461657263;
        goto LABEL_34;
      case 8:
        v3 = 0x7070416E65706FLL;
        break;
      case 9:
        v3 = 0x6973754D6E65706FLL;
        break;
      case 10:
        v3 = 0x726F70536E65706FLL;
        break;
      case 11:
        v3 = 0xD000000000000011;
        break;
      case 12:
        v3 = 0xD000000000000012;
        break;
      case 13:
        v3 = 0x6E6576456E65706FLL;
        break;
      case 14:
        v3 = 0x746C69466E65706FLL;
        break;
      case 15:
        v3 = 0xD000000000000011;
        break;
      case 16:
      case 32:
        v3 = 0xD000000000000013;
        break;
      case 17:
        v3 = 0x676E6F536E65706FLL;
        break;
      case 18:
        v3 = 0x656469566E65706FLL;
        break;
      case 19:
        v3 = 2036427888;
        break;
      case 20:
        v3 = 0x6573756170;
        break;
      case 21:
        v3 = 0x6C69467465736572;
        break;
      case 22:
        v3 = 0x61577463656C6573;
        break;
      case 23:
        v5 = 0x7463656C6573;
LABEL_34:
        v3 = v5 & 0xFFFFFFFFFFFFLL | 0x6157000000000000;
        break;
      case 24:
        v3 = 0xD000000000000011;
        break;
      case 25:
        v3 = 0x65726F4D776F6873;
        break;
      case 26:
        v3 = 0x6F68506570697773;
        break;
      case 27:
        v3 = 0x6E6F536570697773;
        break;
      case 28:
        v3 = 0x6469566570697773;
        break;
      case 29:
        v3 = 0x6C61576570697773;
        break;
      case 30:
        v3 = 0x7461576570697773;
        break;
      case 31:
        v3 = 0x706C6C6157657375;
        break;
      default:
        break;
    }
  }

  else
  {
    v3 = a1;
  }

  sub_100006C80(a1, a2, a3);
  return v3;
}

id sub_10012BC48()
{
  sub_10012B7A8(*v0, *(v0 + 8), *(v0 + 16));
  v1 = objc_allocWithZone(NSString);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithString:v2];

  return v3;
}

uint64_t sub_10012BCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v28 = type metadata accessor for Art();
  v25 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Dance();
  v26 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Theater();
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Sport();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Music();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = a2;
  v34[4] = a3;
  v18 = sub_10005EC40(v34);
  (*(*(a2 - 8) + 16))(v18, v32, a2);
  sub_10002FF80(v34, v33);
  sub_1000024C4(&qword_100228B98);
  if (swift_dynamicCast())
  {
    (*(v15 + 8))(v17, v14);
    v19 = 1;
  }

  else if (swift_dynamicCast())
  {
    (*(v11 + 8))(v13, v10);
    v19 = 2;
  }

  else if (swift_dynamicCast())
  {
    (*(v29 + 8))(v9, v7);
    v19 = 3;
  }

  else
  {
    v21 = v30;
    v20 = v31;
    if (swift_dynamicCast())
    {
      (*(v26 + 8))(v21, v20);
      v19 = 4;
    }

    else
    {
      v23 = v27;
      v22 = v28;
      if (swift_dynamicCast())
      {
        (*(v25 + 8))(v23, v22);
        v19 = 5;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  sub_100012A7C(v33);
  sub_100012A7C(v34);
  return v19;
}

unint64_t sub_10012C130(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002117E0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10012C17C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100211878, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10012C1D8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_10012C228()
{
  result = qword_100228BA0;
  if (!qword_100228BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228BA0);
  }

  return result;
}

uint64_t sub_10012C280(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10012C2CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_10012C310(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10012C33C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10012C3D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10012C494()
{
  result = qword_100228BF8[0];
  if (!qword_100228BF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100228BF8);
  }

  return result;
}

uint64_t sub_10012C4E8()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_10012C554@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v6 = type metadata accessor for FeaturedVideosView();
  v7 = v6[9];
  type metadata accessor for Optional();
  v8 = type metadata accessor for Binding();
  (*(*(v8 - 8) + 32))(a3 + v7, a1, v8);
  sub_10012C7A4(a2);
  v9 = (a3 + v6[11]);
  type metadata accessor for RemoteViewConfiguration();
  sub_100131F50(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  *v9 = EnvironmentObject.init()();
  v9[1] = v10;
  v11 = v6[12];
  *(a3 + v11) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216D0);
  swift_storeEnumTagMultiPayload();
  v12 = v6[13];
  *(a3 + v12) = swift_getKeyPath();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10012C764()
{
  type metadata accessor for FeaturedVideosViewModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_10012C7A4(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  State.init(wrappedValue:)();
  return (*(v3 + 8))(a1, v2);
}

void sub_10012C8A8()
{
  type metadata accessor for FeaturedVideosViewModel();
  type metadata accessor for Bindable();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Optional();
    type metadata accessor for Binding();
    if (v1 <= 0x3F)
    {
      type metadata accessor for State();
      if (v2 <= 0x3F)
      {
        sub_100017044();
        if (v3 <= 0x3F)
        {
          sub_100039C10();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10012C9B4(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for FeaturedVideosViewModel();
  v6 = type metadata accessor for Bindable();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  type metadata accessor for Optional();
  v11 = type metadata accessor for Binding();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[9];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for State();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[10];
    goto LABEL_7;
  }

  if (a2 == 2147483646)
  {
    v16 = *(a1 + a3[11]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    v17 = v16 - 1;
    if (v17 < 0)
    {
      v17 = -1;
    }

    return (v17 + 1);
  }

  else
  {
    v18 = sub_1000024C4(&qword_1002228B8);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[12];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_10012CBC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for FeaturedVideosViewModel();
  v8 = type metadata accessor for Bindable();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  type metadata accessor for Optional();
  v13 = type metadata accessor for Binding();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[9];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = type metadata accessor for State();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[10];
    goto LABEL_7;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[11]) = a2;
  }

  else
  {
    v17 = sub_1000024C4(&qword_1002228B8);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[12];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_10012CE10()
{
  type metadata accessor for Optional();
  type metadata accessor for State();
  return State.projectedValue.getter();
}

uint64_t sub_10012CE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for TaskPriority();
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = __chkstk_darwin(v3);
  v67 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v64 = *(a1 - 8);
  v66 = *(v64 + 64);
  __chkstk_darwin(v4);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000460C(&qword_1002230E8);
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Array();
  v60 = *(a1 + 24);
  v9 = v60;
  type metadata accessor for FeaturedVideoPlayer();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221C80);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221B38);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v10 = type metadata accessor for VStack();
  WitnessTable = swift_getWitnessTable();
  v79 = v10;
  v80 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v12 = type metadata accessor for Optional();
  v13 = swift_getWitnessTable();
  v14 = *(v9 + 8);
  v79 = v8;
  v80 = v7;
  v81 = v12;
  v82 = v13;
  v83 = v14;
  type metadata accessor for ForEach();
  v79 = v10;
  v80 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = type metadata accessor for LazyHStack();
  v16 = swift_getWitnessTable();
  v79 = v15;
  v80 = v16;
  swift_getOpaqueTypeMetadata2();
  v79 = v15;
  v80 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = type metadata accessor for ScrollView();
  v18 = swift_getWitnessTable();
  v79 = v17;
  v80 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = v17;
  v80 = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v79 = OpaqueTypeMetadata2;
  v80 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v79 = OpaqueTypeMetadata2;
  v80 = v20;
  v23 = swift_getOpaqueTypeConformance2();
  v79 = v21;
  v80 = v22;
  v81 = v23;
  v82 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v24 = swift_getOpaqueTypeMetadata2();
  v79 = v21;
  v80 = v22;
  v81 = v23;
  v82 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v25 = swift_getOpaqueTypeConformance2();
  v79 = v24;
  v80 = v7;
  v81 = v25;
  v82 = v14;
  swift_getOpaqueTypeMetadata2();
  v26 = type metadata accessor for ModifiedContent();
  v27 = type metadata accessor for Optional();
  v79 = v24;
  v80 = v7;
  v53 = v7;
  v81 = v25;
  v82 = v14;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = &protocol witness table for _FlexFrameLayout;
  v28 = swift_getWitnessTable();
  v74 = v14[1];
  v29 = swift_getWitnessTable();
  v79 = v26;
  v80 = v27;
  v81 = v28;
  v82 = v29;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v30 = type metadata accessor for VStack();
  v61 = *(v30 - 8);
  __chkstk_darwin(v30);
  v55 = &v53 - v31;
  v56 = swift_getWitnessTable();
  v79 = v30;
  v80 = v56;
  v58 = &unk_1001C94C8;
  v32 = swift_getOpaqueTypeMetadata2();
  v59 = *(v32 - 8);
  v33 = __chkstk_darwin(v32);
  v35 = &v53 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v57 = &v53 - v36;
  static HorizontalAlignment.leading.getter();
  v37 = v60;
  v71 = v7;
  v72 = v60;
  v38 = v65;
  v73 = v65;
  VStack.init(alignment:spacing:content:)();
  v54 = "openContentPhotos";
  v39 = v64;
  v40 = v63;
  v41 = v62;
  (*(v64 + 16))(v63, v38, v62);
  type metadata accessor for MainActor();
  v42 = static MainActor.shared.getter();
  v43 = v39;
  v44 = (*(v39 + 80) + 48) & ~*(v39 + 80);
  v45 = swift_allocObject();
  *(v45 + 2) = v42;
  *(v45 + 3) = &protocol witness table for MainActor;
  *(v45 + 4) = v53;
  *(v45 + 5) = v37;
  (*(v43 + 32))(&v45[v44], v40, v41);
  v46 = v67;
  v47 = v56;
  j___sScP13userInitiatedScPvgZ();
  v48 = v55;
  sub_10000250C(0, v46, 0xD000000000000029, (v54 | 0x8000000000000000), 91, &unk_1001BFC20, v45, v35, v30, v47);
  (*(v68 + 8))(v46, v69);
  (*(v61 + 8))(v48, v30);
  v79 = v30;
  v80 = v47;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v57;
  sub_1000EE87C(v35, v32, v49);
  v51 = *(v59 + 8);
  v51(v35, v32);
  sub_1000EE87C(v50, v32, v49);
  return (v51)(v50, v32);
}

uint64_t sub_10012D824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v170 = a1;
  v160 = a4;
  v169 = type metadata accessor for FeaturedVideosView();
  v158 = *(v169 - 8);
  v167 = *(v158 + 64);
  __chkstk_darwin(v169);
  v166 = &v113 - v6;
  v7 = type metadata accessor for Optional();
  v159 = *(v7 - 8);
  __chkstk_darwin(v7);
  v157 = &v113 - v8;
  v9 = type metadata accessor for Binding();
  v155 = *(v9 - 8);
  v156 = v9;
  __chkstk_darwin(v9);
  v154 = &v113 - v10;
  v11 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  __chkstk_darwin(v11 - 8);
  v152 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v153 = *(v13 - 8);
  __chkstk_darwin(v13);
  v151 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ContentMarginPlacement();
  v149 = *(v15 - 8);
  v150 = v15;
  __chkstk_darwin(v15);
  v148 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Array();
  v18 = a3;
  v168 = a3;
  type metadata accessor for FeaturedVideoPlayer();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221C80);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221B38);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v19 = type metadata accessor for VStack();
  WitnessTable = swift_getWitnessTable();
  *&v194 = v19;
  *(&v194 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v21 = type metadata accessor for Optional();
  v22 = swift_getWitnessTable();
  v23 = *(v18 + 8);
  *&v194 = v17;
  *(&v194 + 1) = a2;
  *&v195 = v21;
  *(&v195 + 1) = v22;
  *&v196 = v23;
  v24 = v23;
  type metadata accessor for ForEach();
  *&v194 = v19;
  *(&v194 + 1) = WitnessTable;
  v185[9] = swift_getOpaqueTypeConformance2();
  v185[8] = swift_getWitnessTable();
  swift_getWitnessTable();
  v25 = type metadata accessor for LazyHStack();
  v26 = swift_getWitnessTable();
  *&v194 = v25;
  *(&v194 + 1) = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v194 = v25;
  *(&v194 + 1) = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = type metadata accessor for ScrollView();
  v145 = *(v27 - 8);
  __chkstk_darwin(v27);
  v132 = &v113 - v28;
  v29 = swift_getWitnessTable();
  *&v194 = v27;
  *(&v194 + 1) = v29;
  v129 = v27;
  v130 = v29;
  v30 = v29;
  v31 = swift_getOpaqueTypeMetadata2();
  v144 = *(v31 - 8);
  __chkstk_darwin(v31);
  v131 = &v113 - v32;
  *&v194 = v27;
  *(&v194 + 1) = v30;
  v33 = swift_getOpaqueTypeConformance2();
  *&v194 = v31;
  *(&v194 + 1) = v33;
  v34 = v31;
  v122 = v33;
  v123 = v31;
  v35 = v33;
  v36 = swift_getOpaqueTypeMetadata2();
  v139 = *(v36 - 8);
  __chkstk_darwin(v36);
  v124 = &v113 - v37;
  *&v194 = v34;
  *(&v194 + 1) = v35;
  v38 = swift_getOpaqueTypeConformance2();
  *&v194 = v36;
  *(&v194 + 1) = v13;
  v39 = v36;
  v119 = v13;
  v120 = v36;
  *&v195 = v38;
  *(&v195 + 1) = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v40 = v38;
  v121 = v38;
  v41 = swift_getOpaqueTypeMetadata2();
  v136 = *(v41 - 8);
  __chkstk_darwin(v41);
  v118 = &v113 - v42;
  *&v194 = v39;
  *(&v194 + 1) = v13;
  *&v195 = v40;
  *(&v195 + 1) = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v43 = swift_getOpaqueTypeConformance2();
  *&v194 = v41;
  *(&v194 + 1) = a2;
  v44 = v41;
  v114 = v41;
  v115 = v43;
  v161 = a2;
  *&v195 = v43;
  *(&v195 + 1) = v24;
  v45 = v43;
  v125 = swift_getOpaqueTypeMetadata2();
  v134 = *(v125 - 8);
  __chkstk_darwin(v125);
  v117 = &v113 - v46;
  v47 = type metadata accessor for ModifiedContent();
  v146 = *(v47 - 8);
  __chkstk_darwin(v47);
  v165 = &v113 - v48;
  *&v194 = v44;
  *(&v194 + 1) = a2;
  *&v195 = v45;
  *(&v195 + 1) = v24;
  v113 = v24;
  v116 = swift_getOpaqueTypeConformance2();
  v185[6] = v116;
  v185[7] = &protocol witness table for _FlexFrameLayout;
  v147 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v126 = v47;
  v49 = swift_getWitnessTable();
  v162 = v49;
  v185[5] = *(v24 + 8);
  v127 = v7;
  v164 = swift_getWitnessTable();
  *&v194 = v47;
  *(&v194 + 1) = v7;
  *&v195 = v49;
  *(&v195 + 1) = v164;
  v137 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v133 = swift_getOpaqueTypeMetadata2();
  v142 = *(v133 - 8);
  __chkstk_darwin(v133);
  v163 = &v113 - v50;
  v138 = type metadata accessor for ModifiedContent();
  v143 = *(v138 - 8);
  v51 = __chkstk_darwin(v138);
  v128 = &v113 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v135 = &v113 - v53;
  sub_10012C764();
  sub_100069FD8();

  v54 = Text.init(_:tableName:bundle:comment:)();
  v56 = v55;
  LOBYTE(v7) = v57;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v58 = Text.font(_:)();
  v60 = v59;
  LOBYTE(a2) = v61;
  v63 = v62;

  sub_100017398(v54, v56, v7 & 1);

  KeyPath = swift_getKeyPath();
  v65 = swift_getKeyPath();
  LOBYTE(v194) = a2 & 1;
  LOBYTE(v186) = 0;
  LOBYTE(v7) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v185[0]) = 0;
  *&v186 = v58;
  *(&v186 + 1) = v60;
  LOBYTE(v187) = a2 & 1;
  *(&v187 + 1) = v63;
  *&v188 = KeyPath;
  *(&v188 + 1) = 2;
  LOBYTE(v189) = 0;
  *(&v189 + 1) = v65;
  LOBYTE(v190) = 0;
  *(&v190 + 1) = v194;
  DWORD1(v190) = *(&v194 + 3);
  BYTE8(v190) = v7;
  HIDWORD(v190) = *(&v177 + 3);
  *(&v190 + 9) = v177;
  *&v191 = v66;
  *(&v191 + 1) = v67;
  *&v192 = v68;
  *(&v192 + 1) = v69;
  v193 = 0;
  static Axis.Set.horizontal.getter();
  v70 = v161;
  v171 = v161;
  v172 = v168;
  v71 = v170;
  v173 = v170;
  v72 = v132;
  ScrollView.init(_:showsIndicators:content:)();
  v73 = v169;
  sub_10012C764();
  sub_10006A098();

  v74 = v131;
  v75 = v129;
  View.scrollDisabled(_:)();
  (*(v145 + 8))(v72, v75);
  static Edge.Set.horizontal.getter();
  v76 = v148;
  v77 = v123;
  j___s7SwiftUI22ContentMarginPlacementV9automaticACvgZ();
  v78 = v124;
  View.contentMargins(_:_:for:)();
  (*(v149 + 8))(v76, v150);
  (*(v144 + 8))(v74, v77);
  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  v79 = v151;
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  v81 = v118;
  v80 = v119;
  v82 = v120;
  View.scrollTargetBehavior<A>(_:)();
  (*(v153 + 8))(v79, v80);
  (*(v139 + 8))(v78, v82);
  v83 = v154;
  v84 = v73;
  sub_100120540(v73, &Binding.projectedValue.getter);
  v85 = v117;
  v86 = v114;
  View.scrollPosition<A>(id:anchor:)();
  (*(v155 + 8))(v83, v156);
  (*(v136 + 8))(v81, v86);
  static Alignment.center.getter();
  v87 = v125;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v134 + 8))(v85, v87);
  v88 = v157;
  sub_100120540(v84, &Binding.wrappedValue.getter);
  v89 = v158;
  v156 = *(v158 + 16);
  v90 = v166;
  v156(v166, v71, v84);
  v91 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v92 = swift_allocObject();
  v93 = v168;
  *(v92 + 16) = v70;
  *(v92 + 24) = v93;
  v158 = *(v89 + 32);
  (v158)(v92 + v91, v90, v84);
  v95 = v126;
  v94 = v127;
  v96 = v165;
  View.onChange<A>(of:initial:_:)();

  (*(v159 + 8))(v88, v94);
  v97 = v96;
  v98 = v95;
  (*(v146 + 8))(v97, v95);
  v99 = v166;
  v100 = v169;
  v156(v166, v170, v169);
  v101 = swift_allocObject();
  v102 = v168;
  *(v101 + 16) = v161;
  *(v101 + 24) = v102;
  (v158)(v101 + v91, v99, v100);
  *&v194 = v98;
  *(&v194 + 1) = v94;
  *&v195 = v162;
  *(&v195 + 1) = v164;
  v103 = swift_getOpaqueTypeConformance2();
  v104 = v128;
  v105 = v133;
  v106 = v163;
  View.onAppear(perform:)();

  (*(v142 + 8))(v106, v105);
  v185[2] = v103;
  v185[3] = &protocol witness table for _AppearanceActionModifier;
  v107 = v138;
  v108 = swift_getWitnessTable();
  v109 = v135;
  sub_1000EE87C(v104, v107, v108);
  v110 = v143;
  v111 = *(v143 + 8);
  v111(v104, v107);
  v181 = v190;
  v182 = v191;
  v183 = v192;
  v184 = v193;
  v177 = v186;
  v178 = v187;
  v179 = v188;
  v180 = v189;
  v185[0] = &v177;
  (*(v110 + 16))(v104, v109, v107);
  v185[1] = v104;
  sub_10000BEB8(&v186, &v194, &qword_1002230E8);
  v176[0] = sub_1000024C4(&qword_1002230E8);
  v176[1] = v107;
  v174 = sub_100055558();
  v175 = v108;
  sub_1000E76FC(v185, 2uLL, v176);
  sub_1000050C4(&v186, &qword_1002230E8);
  v111(v109, v107);
  v111(v104, v107);
  v198 = v181;
  v199 = v182;
  v200 = v183;
  v201 = v184;
  v194 = v177;
  v195 = v178;
  v196 = v179;
  v197 = v180;
  return sub_1000050C4(&v194, &qword_1002230E8);
}

uint64_t sub_10012EB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a1;
  v37 = a4;
  v6 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v6 - 8);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Array();
  v9 = a3;
  v34 = a3;
  type metadata accessor for FeaturedVideoPlayer();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221C80);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221B38);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v10 = type metadata accessor for VStack();
  WitnessTable = swift_getWitnessTable();
  v43 = v10;
  v44 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v12 = type metadata accessor for Optional();
  v13 = swift_getWitnessTable();
  v14 = *(v9 + 8);
  v43 = v8;
  v44 = a2;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  type metadata accessor for ForEach();
  v43 = v10;
  v44 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = type metadata accessor for LazyHStack();
  v33 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = swift_getWitnessTable();
  v43 = v15;
  v44 = v18;
  v31 = v18;
  v32 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = *(OpaqueTypeMetadata2 - 8);
  v21 = __chkstk_darwin(OpaqueTypeMetadata2);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v30 - v24;
  v38 = a2;
  v39 = v34;
  v40 = v36;
  static VerticalAlignment.center.getter();
  sub_100130E10();
  LazyHStack.init(alignment:spacing:pinnedViews:content:)();
  v26 = v31;
  View.scrollTargetLayout(isEnabled:)();
  (*(v33 + 8))(v17, v15);
  v43 = v15;
  v44 = v26;
  v27 = swift_getOpaqueTypeConformance2();
  sub_1000EE87C(v23, OpaqueTypeMetadata2, v27);
  v28 = *(v20 + 8);
  v28(v23, OpaqueTypeMetadata2);
  sub_1000EE87C(v25, OpaqueTypeMetadata2, v27);
  return (v28)(v25, OpaqueTypeMetadata2);
}

uint64_t sub_10012EFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v7 = type metadata accessor for FeaturedVideosView();
  v8 = *(v7 - 8);
  v41 = *(v8 + 64);
  __chkstk_darwin(v7);
  v40 = v33 - v9;
  v10 = type metadata accessor for Array();
  type metadata accessor for FeaturedVideoPlayer();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221C80);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221B38);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  v35 = v11;
  WitnessTable = swift_getWitnessTable();
  v48 = v11;
  v49 = WitnessTable;
  v33[2] = &opaque type descriptor for <<opaque return type of View.containerRelativeFrame(_:count:span:spacing:alignment:)>>;
  v34 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v13 = type metadata accessor for Optional();
  v33[1] = v13;
  v38 = v10;
  v14 = swift_getWitnessTable();
  v36 = *(a3 + 8);
  v37 = v14;
  v48 = v10;
  v49 = a2;
  v50 = v13;
  v51 = v14;
  v52 = v36;
  v15 = type metadata accessor for ForEach();
  v39 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v33 - v19;
  v21 = v7;
  sub_10012C764();
  v22 = sub_10006A4B0();

  v47 = v22;
  v43 = a2;
  v44 = a3;
  v33[0] = swift_getKeyPath();
  v23 = v8;
  v24 = *(v8 + 16);
  v25 = v40;
  v24(v40, a1, v21);
  v26 = v23;
  v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a3;
  (*(v26 + 32))(v28 + v27, v25, v21);
  v48 = v35;
  v49 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = swift_getWitnessTable();
  ForEach<>.init(_:id:content:)();
  v45 = v32;
  v29 = swift_getWitnessTable();
  sub_1000EE87C(v18, v15, v29);
  v30 = *(v39 + 8);
  v30(v18, v15);
  sub_1000EE87C(v20, v15, v29);
  return (v30)(v20, v15);
}

uint64_t sub_10012F488@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v137 = a1;
  v138 = a3;
  v133 = a2;
  v136 = a5;
  v6 = type metadata accessor for UserInterfaceSizeClass();
  v126 = *(v6 - 8);
  v127 = v6;
  __chkstk_darwin(v6);
  v114 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1000024C4(&qword_100222958);
  v8 = __chkstk_darwin(v128);
  v116 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v122 = &v104 - v10;
  v11 = sub_1000024C4(&qword_100221730);
  v12 = __chkstk_darwin(v11 - 8);
  v113 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v118 = &v104 - v15;
  v16 = __chkstk_darwin(v14);
  v115 = &v104 - v17;
  v18 = __chkstk_darwin(v16);
  v117 = &v104 - v19;
  v20 = __chkstk_darwin(v18);
  v130 = &v104 - v21;
  __chkstk_darwin(v20);
  v131 = &v104 - v22;
  type metadata accessor for FeaturedVideoPlayer();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221C80);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221B38);
  swift_getTupleTypeMetadata2();
  v23 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v120 = v23;
  v119 = WitnessTable;
  v25 = type metadata accessor for VStack();
  v124 = *(v25 - 8);
  __chkstk_darwin(v25);
  v132 = &v104 - v26;
  v27 = swift_getWitnessTable();
  v142 = v25;
  v143 = v27;
  v135 = v27;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v134 = *(OpaqueTypeMetadata2 - 8);
  v29 = __chkstk_darwin(OpaqueTypeMetadata2);
  v123 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v129 = &v104 - v32;
  __chkstk_darwin(v31);
  v125 = &v104 - v33;
  v34 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v34 - 8);
  v36 = &v104 - v35;
  v37 = type metadata accessor for URL();
  v139 = *(v37 - 8);
  v140 = v37;
  __chkstk_darwin(v37);
  v39 = &v104 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Optional();
  v41 = *(v40 - 8);
  v42 = __chkstk_darwin(v40);
  v44 = &v104 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v46 = &v104 - v45;
  v47 = *(a4 + 48);
  v121 = a4;
  v47(v138);
  v107 = v44;
  v109 = v41;
  v112 = OpaqueTypeMetadata2;
  v108 = v46;
  v111 = v25;
  v110 = v40;
  v48 = v139;
  v49 = v140;
  (*(v139 + 56))(v36, 0, 1, v140);
  (*(v48 + 32))(v39, v36, v49);
  v50 = static HorizontalAlignment.leading.getter();
  __chkstk_darwin(v50);
  v51 = v121;
  *(&v104 - 6) = v138;
  *(&v104 - 5) = v51;
  *(&v104 - 4) = v137;
  *(&v104 - 3) = v39;
  v137 = v39;
  *(&v104 - 2) = v133;
  VStack.init(alignment:spacing:content:)();
  LODWORD(v120) = static Axis.Set.horizontal.getter();
  v138 = type metadata accessor for FeaturedVideosView();
  v52 = v131;
  sub_100039F08(v131);
  v53 = v126;
  v54 = v127;
  v55 = v130;
  v106 = *(v126 + 104);
  v106(v130, enum case for UserInterfaceSizeClass.regular(_:), v127);
  v56 = *(v53 + 56);
  v119 = v53 + 56;
  v105 = v56;
  v56(v55, 0, 1, v54);
  v57 = *(v128 + 48);
  v58 = v122;
  sub_10000BEB8(v52, v122, &qword_100221730);
  sub_10000BEB8(v55, v58 + v57, &qword_100221730);
  v59 = *(v53 + 48);
  v60 = v59(v58, 1, v54);
  v121 = v59;
  if (v60 == 1)
  {
    sub_1000050C4(v130, &qword_100221730);
    sub_1000050C4(v131, &qword_100221730);
    v61 = v58;
    v62 = v58 + v57;
    v63 = v54;
    v64 = v59(v62, 1, v54);
    v65 = v129;
    if (v64 == 1)
    {
      v66 = v112;
LABEL_9:
      v76 = v125;
      sub_1000050C4(v61, &qword_100221730);
LABEL_16:
      sub_10012C764();
      sub_10006A034();

      goto LABEL_17;
    }

    goto LABEL_6;
  }

  v67 = v117;
  sub_10000BEB8(v58, v117, &qword_100221730);
  v68 = v59(v58 + v57, 1, v54);
  v65 = v129;
  if (v68 == 1)
  {
    v61 = v58;
    sub_1000050C4(v130, &qword_100221730);
    sub_1000050C4(v131, &qword_100221730);
    v63 = v127;
    (*(v53 + 8))(v67);
LABEL_6:
    sub_1000050C4(v61, &qword_100222958);
    goto LABEL_7;
  }

  v78 = v58 + v57;
  v79 = v114;
  v80 = v127;
  (*(v53 + 32))(v114, v78, v127);
  sub_100131F50(&qword_100221838, &type metadata accessor for UserInterfaceSizeClass);
  v81 = dispatch thunk of static Equatable.== infix(_:_:)();
  v82 = *(v53 + 8);
  v82(v79, v80);
  sub_1000050C4(v130, &qword_100221730);
  sub_1000050C4(v131, &qword_100221730);
  v83 = v58;
  v63 = v80;
  v82(v117, v80);
  sub_1000050C4(v83, &qword_100221730);
  v66 = v112;
  v76 = v125;
  if (v81)
  {
    goto LABEL_16;
  }

LABEL_7:
  v69 = v115;
  sub_100039F08(v115);
  v70 = v118;
  v106(v118, enum case for UserInterfaceSizeClass.compact(_:), v63);
  v71 = v63;
  v105(v70, 0, 1, v63);
  v72 = *(v128 + 48);
  v61 = v116;
  sub_10000BEB8(v69, v116, &qword_100221730);
  sub_10000BEB8(v70, v61 + v72, &qword_100221730);
  v73 = v63;
  v74 = v121;
  if (v121(v61, 1, v73) == 1)
  {
    sub_1000050C4(v70, &qword_100221730);
    sub_1000050C4(v69, &qword_100221730);
    v75 = v74(v61 + v72, 1, v71);
    v66 = v112;
    v65 = v129;
    if (v75 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v77 = v113;
  sub_10000BEB8(v61, v113, &qword_100221730);
  if (v74(v61 + v72, 1, v71) == 1)
  {
    sub_1000050C4(v118, &qword_100221730);
    sub_1000050C4(v69, &qword_100221730);
    (*(v126 + 8))(v77, v71);
    v66 = v112;
    v65 = v129;
LABEL_12:
    sub_1000050C4(v61, &qword_100222958);
    v76 = v125;
    goto LABEL_17;
  }

  v84 = v126;
  v85 = v69;
  v86 = v114;
  (*(v126 + 32))(v114, v61 + v72, v71);
  sub_100131F50(&qword_100221838, &type metadata accessor for UserInterfaceSizeClass);
  v87 = dispatch thunk of static Equatable.== infix(_:_:)();
  v88 = *(v84 + 8);
  v88(v86, v71);
  sub_1000050C4(v118, &qword_100221730);
  sub_1000050C4(v85, &qword_100221730);
  v88(v77, v71);
  sub_1000050C4(v61, &qword_100221730);
  v66 = v112;
  v76 = v125;
  v65 = v129;
  if (v87)
  {
    goto LABEL_16;
  }

LABEL_17:
  static Alignment.center.getter();
  v89 = v111;
  v90 = v135;
  v91 = v132;
  View.containerRelativeFrame(_:count:span:spacing:alignment:)();
  (*(v124 + 8))(v91, v89);
  v142 = v89;
  v143 = v90;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000EE87C(v65, v66, OpaqueTypeConformance2);
  v93 = v65;
  v94 = v76;
  v95 = v134;
  v96 = *(v134 + 8);
  v96(v93, v66);
  v97 = v123;
  sub_1000EE87C(v94, v66, OpaqueTypeConformance2);
  v96(v94, v66);
  v98 = v107;
  (*(v95 + 32))(v107, v97, v66);
  (*(v95 + 56))(v98, 0, 1, v66);
  v99 = v108;
  sub_1000E7690(v98, v108);
  v100 = *(v109 + 8);
  v101 = v110;
  v100(v98, v110);
  (*(v139 + 8))(v137, v140);
  v142 = v89;
  v143 = v90;
  v141 = swift_getOpaqueTypeConformance2();
  v102 = swift_getWitnessTable();
  sub_1000EE87C(v99, v101, v102);
  return (v100)(v99, v101);
}

uint64_t sub_100130518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v70 = a3;
  v69 = a2;
  v78 = a1;
  v74 = a6;
  v72 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v72);
  v73 = (&v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Optional();
  v9 = type metadata accessor for Binding();
  __chkstk_darwin(v9 - 8);
  v66 = &v63 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 - 8);
  __chkstk_darwin(v13);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v18;
  v19 = a5;
  v20 = type metadata accessor for FeaturedVideoPlayer();
  v67 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v63 - v21;
  v68 = type metadata accessor for ModifiedContent();
  v71 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v63 - v23;
  sub_10000460C(&qword_100221C80);
  v76 = type metadata accessor for ModifiedContent();
  v79 = *(v76 - 8);
  v24 = __chkstk_darwin(v76);
  v75 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v77 = &v63 - v26;
  (*(v16 + 16))(v18, v78, a4);
  v27 = v15;
  (*(v12 + 16))(v15, v69, v11);
  v28 = a4;
  v29 = v19;
  type metadata accessor for FeaturedVideosView();
  sub_10012C764();
  LOBYTE(v16) = sub_100069E20();

  v30 = v66;
  sub_10012CE10();
  v31 = v16 & 1;
  v32 = v28;
  sub_1000FBA34(v64, v27, v31, v30, v28, v22);
  WitnessTable = swift_getWitnessTable();
  v34 = v65;
  View.aspectRatio(_:contentMode:)();
  (*(v67 + 8))(v22, v20);
  if (static Solarium.isEnabled.getter())
  {
    v35 = 16.0;
  }

  else
  {
    v35 = 8.0;
  }

  v36 = *(v72 + 20);
  v37 = enum case for RoundedCornerStyle.continuous(_:);
  v38 = type metadata accessor for RoundedCornerStyle();
  v39 = v73;
  (*(*(v38 - 8) + 104))(v73 + v36, v37, v38);
  *v39 = v35;
  v39[1] = v35;
  v40 = v39;
  v90[5] = WitnessTable;
  v90[6] = &protocol witness table for _AspectRatioLayout;
  v41 = v68;
  v42 = swift_getWitnessTable();
  sub_100131F50(&qword_100228C80, &type metadata accessor for RoundedRectangle);
  v43 = v75;
  View.clipShape<A>(_:style:)();
  sub_100039768(v40);
  (*(v71 + 8))(v34, v41);
  v44 = sub_10000BFFC(&qword_100221D60, &qword_100221C80);
  v90[3] = v42;
  v90[4] = v44;
  v45 = v76;
  v72 = swift_getWitnessTable();
  sub_1000EE87C(v43, v45, v72);
  v73 = *(v79 + 8);
  (v73)(v43, v45);
  v83 = (*(v29 + 56))(v32, v29);
  v84 = v46;
  sub_10001877C();
  v47 = Text.init<A>(_:)();
  v49 = v48;
  LOBYTE(v43) = v50;
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v51 = Text.font(_:)();
  v53 = v52;
  LOBYTE(v45) = v54;
  v56 = v55;

  sub_100017398(v47, v49, v43 & 1);

  KeyPath = swift_getKeyPath();
  v58 = v75;
  v59 = v77;
  v60 = v76;
  (*(v79 + 16))(v75, v77, v76);
  v83 = v51;
  v84 = v53;
  LOBYTE(v45) = v45 & 1;
  v85 = v45;
  v86 = v56;
  v87 = KeyPath;
  v88 = 1;
  v89 = 0;
  v90[0] = v58;
  v90[1] = &v83;
  sub_1000187D8(v51, v53, v45);

  v82[0] = v60;
  v82[1] = sub_1000024C4(&qword_100221B38);
  v80 = v72;
  v81 = sub_10001B3F8();
  sub_1000E76FC(v90, 2uLL, v82);
  sub_100017398(v51, v53, v45);

  v61 = v73;
  (v73)(v59, v60);
  sub_100017398(v83, v84, v85);

  return (v61)(v58, v60);
}

uint64_t sub_100130E10()
{
  type metadata accessor for PinnedScrollableViews();
  sub_100131F50(&qword_1002259D0, &type metadata accessor for PinnedScrollableViews);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

uint64_t sub_100130E90(uint64_t a1)
{
  v2 = type metadata accessor for FeaturedVideosView();
  sub_10012C764();
  v3 = [objc_opt_self() defaultCenter];
  if (qword_100220BF0 != -1)
  {
    swift_once();
  }

  [v3 postNotificationName:qword_100239100 object:0 userInfo:0];

  sub_10012C764();
  if (*(a1 + *(v2 + 44)))
  {

    sub_10006A16C(v4);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100131F50(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100130FF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  v25 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - v11;
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = type metadata accessor for FeaturedVideosView();
  v27 = a1;
  sub_100120540(v15, &Binding.wrappedValue.getter);
  v16 = *(v4 + 48);
  v17 = v16(v14, 1, a2);
  v26 = *(v7 + 8);
  result = v26(v14, v6);
  if (v17 == 1)
  {
    v23 = v4;
    sub_10012C764();
    v19 = sub_10006A4B0();

    v28 = v19;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
    if (v16(v12, 1, a2) == 1)
    {
      v26(v12, v6);
    }

    else
    {
      v20 = v23;
      v21 = v25;
      (*(v23 + 32))(v25, v12, a2);

      v22 = v24;
      (*(v20 + 16))(v24, v21, a2);
      (*(v20 + 56))(v22, 0, 1, a2);
      sub_100131A14(v22);
      v26(v22, v6);
      return (*(v20 + 8))(v21, a2);
    }
  }

  return result;
}

uint64_t sub_100131354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001313F0);
}

uint64_t sub_1001313F0()
{

  type metadata accessor for FeaturedVideosView();
  sub_10012C764();
  sub_10008C108();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100131490()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for FeaturedVideosView();
  v17 = *(*(v2 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + ((v17 + 48) & ~v17);
  type metadata accessor for FeaturedVideosViewModel();
  v4 = type metadata accessor for Bindable();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v2[9];

  type metadata accessor for Optional();
  v6 = *(type metadata accessor for Binding() + 32);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (!v8(v5 + v6, 1, v1))
  {
    (*(v7 + 8))(v5 + v6, v1);
  }

  v9 = v3 + v2[10];
  if (!v8(v9, 1, v1))
  {
    (*(v7 + 8))(v9, v1);
  }

  type metadata accessor for State();

  v10 = v2[12];
  sub_1000024C4(&qword_1002216D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v3 + v10, 1, v11))
    {
      (*(v12 + 8))(v3 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v2[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for UserInterfaceSizeClass();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v3 + v13, 1, v14))
    {
      (*(v15 + 8))(v3 + v13, v14);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100131834()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for FeaturedVideosView() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000BD00;

  return sub_100131354(v6, v7, v0 + v5, v2, v3);
}

uint64_t sub_10013197C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for FeaturedVideosView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_100131A14(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1, v2);
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

uint64_t sub_100131B0C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for FeaturedVideosView();
  v17 = *(*(v2 - 1) + 80);
  v3 = v0 + ((v17 + 32) & ~v17);
  type metadata accessor for FeaturedVideosViewModel();
  v4 = type metadata accessor for Bindable();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v2[9];

  type metadata accessor for Optional();
  v6 = *(type metadata accessor for Binding() + 32);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (!v8(v5 + v6, 1, v1))
  {
    (*(v7 + 8))(v5 + v6, v1);
  }

  v9 = v3 + v2[10];
  if (!v8(v9, 1, v1))
  {
    (*(v7 + 8))(v9, v1);
  }

  type metadata accessor for State();

  v10 = v2[12];
  sub_1000024C4(&qword_1002216D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v3 + v10, 1, v11))
    {
      (*(v12 + 8))(v3 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v2[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for UserInterfaceSizeClass();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v3 + v13, 1, v14))
    {
      (*(v15 + 8))(v3 + v13, v14);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100131EA4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for FeaturedVideosView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_10012F488(a1, v8, v5, v6, a2);
}

uint64_t sub_100131F50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100131F98()
{
  sub_10000460C(&qword_1002230E8);
  type metadata accessor for Array();
  type metadata accessor for FeaturedVideoPlayer();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221C80);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221B38);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyHStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

Swift::Int sub_1001324F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100132560()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1001325B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100132614(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

unint64_t sub_1001326BC()
{
  result = qword_100228C88;
  if (!qword_100228C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C88);
  }

  return result;
}

unint64_t sub_100132710(uint64_t a1)
{
  *(a1 + 8) = sub_100132740();
  result = sub_100132794();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100132740()
{
  result = qword_100228C90;
  if (!qword_100228C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C90);
  }

  return result;
}

unint64_t sub_100132794()
{
  result = qword_100228C98;
  if (!qword_100228C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C98);
  }

  return result;
}

uint64_t sub_1001327F8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v1 + 8))(v3, v0);
  result = ResourceID.init(_:)();
  qword_100239120 = result;
  *algn_100239128 = v5;
  return result;
}

Swift::Int sub_1001328E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100132938()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100132980(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_1001329B4()
{
  result = qword_100228CA0;
  if (!qword_100228CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228CA0);
  }

  return result;
}

unint64_t sub_100132A08(uint64_t a1)
{
  *(a1 + 8) = sub_100132A38();
  result = sub_100132A8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100132A38()
{
  result = qword_100228CA8;
  if (!qword_100228CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228CA8);
  }

  return result;
}

unint64_t sub_100132A8C()
{
  result = qword_100228CB0;
  if (!qword_100228CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228CB0);
  }

  return result;
}

uint64_t sub_100132AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000024C4(qword_100224528);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000024C4(&qword_100221B80);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100132C38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000024C4(qword_100224528);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000024C4(&qword_100221B80);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for ErrorView()
{
  result = qword_100228D50;
  if (!qword_100228D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100132DA4()
{
  sub_1000CD2D0(319, &qword_1002219B8, &type metadata accessor for DismissAction);
  if (v0 <= 0x3F)
  {
    sub_1000CD2D0(319, &qword_100221C00, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_100017044();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100132E94()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100228CB8 = result;
  unk_100228CC0 = v1;
  byte_100228CC8 = v2 & 1;
  qword_100228CD0 = v3;
  return result;
}

uint64_t sub_100132EDC()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100228CD8 = result;
  unk_100228CE0 = v1;
  byte_100228CE8 = v2 & 1;
  qword_100228CF0 = v3;
  return result;
}

uint64_t sub_100132F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[0] = a1;
  v27[1] = a2;
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v27 - v7;
  v9 = sub_1000024C4(&qword_100228DC0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - v11;
  v13 = sub_1000024C4(&qword_100228DB0);
  __chkstk_darwin(v13 - 8);
  v15 = v27 - v14;
  v16 = sub_1000024C4(&qword_100228D98);
  __chkstk_darwin(v16);
  v18 = v27 - v17;
  ContentUnavailableView.init(label:description:actions:)();
  sub_10000BFFC(&qword_100228DB8, &qword_100228DC0);
  View.accessibilityIdentifier(_:)();
  (*(v10 + 8))(v12, v9);
  type metadata accessor for ErrorView();
  sub_100039EE0(v8);
  (*(v3 + 104))(v6, enum case for ColorScheme.light(_:), v2);
  LOBYTE(v10) = static ColorScheme.== infix(_:_:)();
  v19 = *(v3 + 8);
  v19(v6, v2);
  v19(v8, v2);
  if (v10)
  {
    if (qword_100220B90 != -1)
    {
      swift_once();
    }

    v20 = qword_1002390B0;
  }

  else
  {
    v20 = static Color.black.getter();
  }

  v21 = static Edge.Set.all.getter();
  v22 = sub_100134128(v15, v18);
  v23 = &v18[*(v16 + 36)];
  *v23 = v20;
  v23[8] = v21;
  __chkstk_darwin(v22);
  sub_1000024C4(&qword_100226950);
  sub_100133F88();
  v24 = sub_10000460C(&qword_1002245F8);
  v25 = sub_1000ED768();
  v27[2] = v24;
  v27[3] = v25;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return sub_1001341A0(v18);
}

uint64_t sub_1001333D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100220C08 != -1)
  {
    swift_once();
  }

  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.title2.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_100017398(v2, v4, v6 & 1);

  static Font.Weight.bold.getter();
  v12 = Text.fontWeight(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_100017398(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_100133554@<X0>(uint64_t a1@<X8>)
{
  if (qword_100220C10 != -1)
  {
    swift_once();
  }

  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.body.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_100017398(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_10013368C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1000024C4(&qword_1002245E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v27 = sub_1000024C4(&qword_1002245F0);
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v25 - v9;
  v28 = sub_1000024C4(&qword_1002245F8);
  v11 = __chkstk_darwin(v28);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v16 = *(type metadata accessor for ErrorView() + 24);
  v26 = a1;
  v17 = *(a1 + v16);
  if (v17)
  {
    v30 = v15;
    if (*(v17 + 88) && (*(v17 + 80) & 1) != 0)
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        (*(v4 + 56))(v13, 1, 1, v3);
        v19 = sub_10000BFFC(&qword_100224628, &qword_1002245F0);
        v31 = v27;
        v32 = v19;
        swift_getOpaqueTypeConformance2();
        v20 = v30;
        static ToolbarContentBuilder.buildIf<A>(_:)();
        sub_1000EDDE4(v13);
LABEL_8:
        sub_1000ED768();
        static ToolbarContentBuilder.buildBlock<A>(_:)();
        return sub_1000EDDE4(v20);
      }
    }

    else
    {
    }

    v21 = static ToolbarItemPlacement.navigationBarTrailing.getter();
    v22 = v27;
    __chkstk_darwin(v21);
    *(&v25 - 2) = v26;
    sub_10008B1A4();
    ToolbarItem<>.init(placement:content:)();
    v23 = sub_10000BFFC(&qword_100224628, &qword_1002245F0);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v4 + 16))(v13, v6, v3);
    (*(v4 + 56))(v13, 0, 1, v3);
    v31 = v22;
    v32 = v23;
    swift_getOpaqueTypeConformance2();
    v20 = v30;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000EDDE4(v13);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v22);
    goto LABEL_8;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100133B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000024C4(&qword_1002216C0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for DismissAction();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  sub_100134210(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v11 + 32);
    v17(v16, v9, v10);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v22 + 8))(v6, v23);
    v17 = *(v11 + 32);
  }

  v17(v14, v16, v10);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  result = (v17)(v20 + v19, v14, v10);
  *a2 = 0;
  *(a2 + 8) = sub_1000172FC;
  *(a2 + 16) = v20;
  return result;
}

uint64_t sub_100133E64()
{
  sub_1000024C4(&qword_100228D90);
  sub_10000460C(&qword_100228D98);
  sub_10000460C(&qword_100226950);
  sub_100133F88();
  sub_10000460C(&qword_1002245F8);
  sub_1000ED768();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_100133F88()
{
  result = qword_100228DA0;
  if (!qword_100228DA0)
  {
    sub_10000460C(&qword_100228D98);
    sub_100134040();
    sub_10000BFFC(&qword_100221D50, &qword_100221D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228DA0);
  }

  return result;
}

unint64_t sub_100134040()
{
  result = qword_100228DA8;
  if (!qword_100228DA8)
  {
    sub_10000460C(&qword_100228DB0);
    sub_10000BFFC(&qword_100228DB8, &qword_100228DC0);
    sub_10009249C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228DA8);
  }

  return result;
}

uint64_t sub_100134128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100228DB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001341A0(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100228D98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100134210(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002216C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100134280()
{
  v1 = type metadata accessor for DismissAction();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void *sub_100134424()
{
  v0 = type metadata accessor for Song();
  v33 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v32 = &v26 - v4;
  v5 = sub_1000024C4(&qword_100228EE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_1000024C4(&qword_100228EE8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_1000024C4(&qword_100228EF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  Artist.topSongs.getter();
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_1000050C4(v14, &qword_100228EF0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v26 = v14;
    v27 = v6;
    (*(v6 + 16))(v8, v14, v5);
    sub_10000BFFC(&qword_100228EF8, &qword_100228EE0);
    dispatch thunk of Sequence.makeIterator()();
    v16 = *(v9 + 36);
    v17 = sub_10000BFFC(&qword_100228F00, &qword_100228EE0);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v11[v16] == v34[0])
    {
      v15 = _swiftEmptyArrayStorage;
    }

    else
    {
      v19 = v32;
      v28 = (v33 + 16);
      v20 = (v33 + 32);
      v15 = _swiftEmptyArrayStorage;
      v30 = v16;
      v31 = v0;
      v29 = v17;
      do
      {
        v21 = dispatch thunk of Collection.subscript.read();
        (*v28)(v19);
        v21(v34, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v22 = *v20;
        (*v20)(v3, v19, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_10018963C(0, v15[2] + 1, 1, v15);
        }

        v24 = v15[2];
        v23 = v15[3];
        if (v24 >= v23 >> 1)
        {
          v15 = sub_10018963C(v23 > 1, v24 + 1, 1, v15);
        }

        v15[2] = v24 + 1;
        v25 = v15 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24;
        v0 = v31;
        v22(v25, v3, v31);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v11[v30] != v34[0]);
    }

    sub_1000050C4(v11, &qword_100228EE8);
    (*(v27 + 8))(v26, v5);
  }

  return v15;
}

void *sub_1001348EC()
{
  v0 = type metadata accessor for Playlist();
  v33 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v32 = &v26 - v4;
  v5 = sub_1000024C4(&qword_100224D88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_1000024C4(&qword_100228EC8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_1000024C4(&qword_100228ED0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  Artist.featuredPlaylists.getter();
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_1000050C4(v14, &qword_100228ED0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v26 = v14;
    v27 = v6;
    (*(v6 + 16))(v8, v14, v5);
    sub_10000BFFC(&qword_100228ED8, &qword_100224D88);
    dispatch thunk of Sequence.makeIterator()();
    v16 = *(v9 + 36);
    v17 = sub_10000BFFC(&qword_100224DC0, &qword_100224D88);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v11[v16] == v34[0])
    {
      v15 = _swiftEmptyArrayStorage;
    }

    else
    {
      v19 = v32;
      v28 = (v33 + 16);
      v20 = (v33 + 32);
      v15 = _swiftEmptyArrayStorage;
      v30 = v16;
      v31 = v0;
      v29 = v17;
      do
      {
        v21 = dispatch thunk of Collection.subscript.read();
        (*v28)(v19);
        v21(v34, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v22 = *v20;
        (*v20)(v3, v19, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1001899A8(0, v15[2] + 1, 1, v15);
        }

        v24 = v15[2];
        v23 = v15[3];
        if (v24 >= v23 >> 1)
        {
          v15 = sub_1001899A8(v23 > 1, v24 + 1, 1, v15);
        }

        v15[2] = v24 + 1;
        v25 = v15 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24;
        v0 = v31;
        v22(v25, v3, v31);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v11[v30] != v34[0]);
    }

    sub_1000050C4(v11, &qword_100228EC8);
    (*(v27 + 8))(v26, v5);
  }

  return v15;
}

void *sub_100134DB4()
{
  v0 = type metadata accessor for Album();
  v33 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v32 = &v26 - v4;
  v5 = sub_1000024C4(&qword_100228EA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_1000024C4(&qword_100228EA8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_1000024C4(&qword_100228EB0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  Artist.featuredAlbums.getter();
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_1000050C4(v14, &qword_100228EB0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v26 = v14;
    v27 = v6;
    (*(v6 + 16))(v8, v14, v5);
    sub_10000BFFC(&qword_100228EB8, &qword_100228EA0);
    dispatch thunk of Sequence.makeIterator()();
    v16 = *(v9 + 36);
    v17 = sub_10000BFFC(&qword_100228EC0, &qword_100228EA0);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v11[v16] == v34[0])
    {
      v15 = _swiftEmptyArrayStorage;
    }

    else
    {
      v19 = v32;
      v28 = (v33 + 16);
      v20 = (v33 + 32);
      v15 = _swiftEmptyArrayStorage;
      v30 = v16;
      v31 = v0;
      v29 = v17;
      do
      {
        v21 = dispatch thunk of Collection.subscript.read();
        (*v28)(v19);
        v21(v34, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v22 = *v20;
        (*v20)(v3, v19, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1001899D0(0, v15[2] + 1, 1, v15);
        }

        v24 = v15[2];
        v23 = v15[3];
        if (v24 >= v23 >> 1)
        {
          v15 = sub_1001899D0(v23 > 1, v24 + 1, 1, v15);
        }

        v15[2] = v24 + 1;
        v25 = v15 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24;
        v0 = v31;
        v22(v25, v3, v31);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v11[v30] != v34[0]);
    }

    sub_1000050C4(v11, &qword_100228EA8);
    (*(v27 + 8))(v26, v5);
  }

  return v15;
}

uint64_t sub_10013528C(uint64_t a1)
{
  result = sub_1001354E8(&qword_100228E40, &type metadata accessor for Artist);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10013532C()
{
  Artist.id.getter();

  return ResourceID.init(_:)();
}

uint64_t sub_100135358()
{
  sub_1000024C4(&qword_100228E98);
  swift_allocObject();
  MusicAttributeProperty.init(_:)();
  Artist.subscript.getter();
}

uint64_t sub_100135464(uint64_t a1)
{
  *(a1 + 8) = sub_1001354E8(&qword_100228E88, &type metadata accessor for Artist);
  result = sub_1001354E8(&qword_100228E90, &type metadata accessor for Artist);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001354E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10013555C(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000024C4(&qword_100228F08);
  __chkstk_darwin(v6);
  v8 = &v36[-v7];
  *v8 = static Alignment.center.getter();
  v8[1] = v9;
  v10 = sub_1000024C4(&qword_100228F10);
  sub_1001358DC(a1, v8 + *(v10 + 44));
  v11 = v8 + *(sub_1000024C4(&qword_100228F18) + 36);
  *v11 = 0x3FFC71C71C71C71CLL;
  *(v11 + 4) = 0;
  v12 = *(v3 + 28);
  v13 = enum case for RoundedCornerStyle.continuous(_:);
  v14 = type metadata accessor for RoundedCornerStyle();
  (*(*(v14 - 8) + 104))(&v5[v12], v13, v14);
  __asm { FMOV            V0.2D, #24.0 }

  *v5 = _Q0;
  static Color.black.getter();
  v20 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v21 = v8 + *(sub_1000024C4(&qword_100228F20) + 36);
  sub_100039704(v5, v21);
  v22 = v21 + *(sub_1000024C4(&qword_100222870) + 36);
  v23 = v37;
  *v22 = *&v36[8];
  *(v22 + 16) = v23;
  *(v22 + 32) = v38;
  v24 = sub_1000024C4(&qword_100222878);
  *(v21 + *(v24 + 52)) = v20;
  *(v21 + *(v24 + 56)) = 256;
  v25 = static Alignment.center.getter();
  v27 = v26;
  sub_100039768(v5);
  v28 = (v21 + *(sub_1000024C4(&qword_100222880) + 36));
  *v28 = v25;
  v28[1] = v27;
  v29 = static Alignment.center.getter();
  v31 = v30;
  v32 = (v21 + *(sub_1000024C4(&qword_100224440) + 36));
  *v32 = v29;
  v32[1] = v31;
  static Color.black.getter();
  v33 = Color.opacity(_:)();

  v34 = v8 + *(sub_1000024C4(&qword_100228F28) + 36);
  *v34 = v33;
  *(v34 + 8) = xmmword_1001BDB40;
  *(v34 + 3) = 0x4024000000000000;
  *(v8 + *(v6 + 36)) = 1;
  sub_100136000();
  View.accessibilityIdentifier(_:)();
  return sub_1000050C4(v8, &qword_100228F08);
}

uint64_t sub_1001358DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44[1] = a1;
  v49 = a2;
  v45 = type metadata accessor for Image.ResizingMode();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_100228F60);
  __chkstk_darwin(v5 - 8);
  v7 = v44 - v6;
  v47 = sub_1000024C4(&qword_100228F68) - 8;
  v8 = __chkstk_darwin(v47);
  v48 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v44 - v10;
  v12 = sub_1000024C4(&qword_100228F70);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v46 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v44 - v16;
  v18 = *(type metadata accessor for RoundedRectangle() + 20);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = type metadata accessor for RoundedCornerStyle();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #24.0 }

  *v17 = _Q0;

  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v26 = &v17[*(v13 + 60)];
  v27 = v51;
  *v26 = v50;
  *(v26 + 1) = v27;
  *(v26 + 4) = v52;
  *&v17[*(v13 + 64)] = 256;

  Image.init(systemName:)();
  v28 = enum case for Image.TemplateRenderingMode.original(_:);
  v29 = type metadata accessor for Image.TemplateRenderingMode();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v7, v28, v29);
  (*(v30 + 56))(v7, 0, 1, v29);
  Image.renderingMode(_:)();

  sub_1000050C4(v7, &qword_100228F60);
  v31 = v45;
  (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v45);
  v32 = Image.resizable(capInsets:resizingMode:)();

  (*(v2 + 8))(v4, v31);
  v53 = v32;
  LOWORD(v54) = 1;
  *(&v54 + 1) = 0x3FFC71C71C71C71CLL;
  LOWORD(v55) = 0;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  sub_1000024C4(&qword_100228F78);
  sub_100136288();
  View.containerRelativeFrame(_:alignment:_:)();

  sub_1000024C4(&qword_100221D18);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1001B3B50;
  static Color.white.getter();
  v34 = Color.opacity(_:)();

  *(v33 + 32) = v34;
  *(v33 + 40) = static Color.white.getter();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  static Color.white.getter();
  Color.opacity(_:)();

  v35 = &v11[*(sub_1000024C4(&qword_100228F88) + 36)];
  sub_1000024C4(&qword_100228F90);
  static ShadowStyle.inner(color:radius:x:y:)();

  v36 = v54;
  *v35 = v53;
  *(v35 + 1) = v36;
  *(v35 + 4) = v55;
  static Color.black.getter();
  Color.opacity(_:)();

  sub_1000024C4(&qword_100228F98);
  static ShadowStyle.inner(color:radius:x:y:)();

  static Color.black.getter();
  v37 = Color.opacity(_:)();

  v38 = v46;
  v39 = &v11[*(v47 + 44)];
  *v39 = v37;
  *(v39 + 8) = xmmword_1001BF170;
  *(v39 + 3) = 0x4010000000000000;
  sub_100136314(v17, v38);
  v40 = v48;
  sub_100136384(v11, v48);
  v41 = v49;
  sub_100136314(v38, v49);
  v42 = sub_1000024C4(&qword_100228FA0);
  sub_100136384(v40, v41 + *(v42 + 48));
  sub_1000050C4(v11, &qword_100228F68);
  sub_1000050C4(v17, &qword_100228F70);
  sub_1000050C4(v40, &qword_100228F68);
  return sub_1000050C4(v38, &qword_100228F70);
}

unint64_t sub_100136000()
{
  result = qword_100228F30;
  if (!qword_100228F30)
  {
    sub_10000460C(&qword_100228F08);
    sub_10013608C();
    sub_10005DDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228F30);
  }

  return result;
}

unint64_t sub_10013608C()
{
  result = qword_100228F38;
  if (!qword_100228F38)
  {
    sub_10000460C(&qword_100228F28);
    sub_100136118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228F38);
  }

  return result;
}

unint64_t sub_100136118()
{
  result = qword_100228F40;
  if (!qword_100228F40)
  {
    sub_10000460C(&qword_100228F20);
    sub_1001361D0();
    sub_10000BFFC(&qword_100227AF8, &qword_100224440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228F40);
  }

  return result;
}

unint64_t sub_1001361D0()
{
  result = qword_100228F48;
  if (!qword_100228F48)
  {
    sub_10000460C(&qword_100228F18);
    sub_10000BFFC(&qword_100228F50, &qword_100228F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228F48);
  }

  return result;
}

unint64_t sub_100136288()
{
  result = qword_100228F80;
  if (!qword_100228F80)
  {
    sub_10000460C(&qword_100228F78);
    sub_100069870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228F80);
  }

  return result;
}

uint64_t sub_100136314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100228F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100136384(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100228F68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001363F8()
{
  result = qword_100228FA8;
  if (!qword_100228FA8)
  {
    sub_10000460C(&qword_100228FB0);
    sub_100136000();
    sub_10001B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228FA8);
  }

  return result;
}

uint64_t sub_100136484()
{
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100136530@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__queuedSongs);
}

uint64_t sub_1001365E4()
{
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001366B0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__currentSong;
  swift_beginAccess();
  return sub_10000BEB8(v5 + v3, a1, &qword_1002224D8);
}

uint64_t sub_100136788@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__currentSong;
  swift_beginAccess();
  return sub_10000BEB8(v3 + v4, a2, &qword_1002224D8);
}

uint64_t sub_100136860(uint64_t a1)
{
  sub_10000BEB8(a1, v2, &qword_1002224D8);
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000050C4(v2, &qword_1002224D8);
}

uint64_t sub_100136968(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__currentSong;
  swift_beginAccess();
  sub_100139F14(a2, a1 + v4, &qword_1002224D8);
  return swift_endAccess();
}

uint64_t sub_1001369E4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__playerTimeObserver;
  swift_beginAccess();
  return sub_10000BEB8(v5 + v3, a1, &unk_100227380);
}

uint64_t sub_100136ABC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__playerTimeObserver;
  swift_beginAccess();
  return sub_10000BEB8(v3 + v4, a2, &unk_100227380);
}

uint64_t sub_100136B94(uint64_t a1)
{
  sub_10000BEB8(a1, v2, &unk_100227380);
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000050C4(v2, &unk_100227380);
}

uint64_t sub_100136C9C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__playerTimeObserver;
  swift_beginAccess();
  sub_100139F14(a2, a1 + v4, &unk_100227380);
  return swift_endAccess();
}

void *sub_100136D18()
{
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player);
  v2 = v1;
  return v1;
}

id sub_100136DC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player);
  *a2 = v4;

  return v4;
}

void sub_100136E88(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player;
  v5 = *(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10006054C(0, &qword_100229100);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_100137020()
{
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state);
}

uint64_t sub_1001370C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state);
  return result;
}

uint64_t sub_100137178(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100137288@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F8, type metadata accessor for PlaybackProgressUpdater);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 16);
  v6 = 1.0;
  if (v5 <= 1.0)
  {
    v6 = *(v3 + 16);
  }

  if ((*&v5 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v5 & 0x7FF0000000000000) == 0 || v5 < 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v6;
  }

  *a2 = v9;
  return result;
}

double sub_100137364()
{
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F8, type metadata accessor for PlaybackProgressUpdater);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void sub_100137404(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v4 - 8);
  v6 = (v46 - v5);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v47 = v10;
    v48 = v6;
    sub_10002FF80(a1 + 32, v52);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v46[-2] = v2;
    v46[-1] = a1;
    v50[0] = v2;
    v13 = sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v46[0] = 0;

    if (v11 != 1)
    {
      if (qword_100220C90 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000BE10(v14, qword_100239158);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Only playing first song in playlist.", v17, 2u);
      }
    }

    swift_getKeyPath();
    v50[0] = v2;
    v46[1] = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__currentSong;
    swift_beginAccess();
    sub_10000BEB8(v2 + v18, v50, &qword_1002224D8);
    v19 = v51;
    if (v51)
    {
      v20 = sub_10001BED0(v50, v51);
      v21 = *(v19 - 8);
      __chkstk_darwin(v20);
      v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v23);
      sub_1000050C4(v50, &qword_1002224D8);
      v24 = dispatch thunk of MusicItem.id.getter();
      v26 = v25;
      (*(v21 + 8))(v23, v19);
    }

    else
    {
      sub_1000050C4(v50, &qword_1002224D8);
      v24 = 0;
      v26 = 0;
    }

    sub_10001BED0(v52, v53);
    v31 = dispatch thunk of MusicItem.id.getter();
    if (v26)
    {
      if (v24 == v31 && v26 == v32)
      {

LABEL_24:
        if (qword_100220C90 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        sub_10000BE10(v34, qword_100239158);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v35, v36))
        {
          goto LABEL_34;
        }

        v37 = swift_slowAlloc();
        *v37 = 0;
        v38 = "Already playing same song.";
        goto LABEL_33;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v33)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    v39 = v53;
    v40 = v54;
    sub_10001BED0(v52, v53);
    v41 = v48;
    (*(v40 + 104))(v39, v40);
    if ((*(v8 + 48))(v41, 1, v7) != 1)
    {
      v43 = v47;
      (*(v8 + 32))(v47, v41, v7);
      sub_100137D18();
      sub_10002FF80(v52, v50);
      v44 = swift_getKeyPath();
      __chkstk_darwin(v44);
      v46[-2] = v2;
      v46[-1] = v50;
      v49 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_1000050C4(v50, &qword_1002224D8);
      if (*(v2 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state) != 1)
      {
        v45 = swift_getKeyPath();
        __chkstk_darwin(v45);
        v46[-2] = v2;
        LOBYTE(v46[-1]) = 1;
        v50[0] = v2;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      sub_10013800C(v43);
      sub_1001384F4();
      (*(v8 + 8))(v43, v7);
      goto LABEL_38;
    }

    sub_1000050C4(v41, &qword_1002214F8);
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000BE10(v42, qword_100239158);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v35, v36))
    {
LABEL_34:

LABEL_38:
      sub_100012A7C(v52);
      return;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "Cannot play song. No preview asset URL.";
LABEL_33:
    _os_log_impl(&_mh_execute_header, v35, v36, v38, v37, 2u);

    goto LABEL_34;
  }

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000BE10(v27, qword_100239158);
  v48 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v48, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v48, v28, "Cannot play empty playlist.", v29, 2u);
  }

  v30 = v48;
}

void sub_100137D18()
{
  v1 = v0;
  sub_100138EF0();
  swift_getKeyPath();
  *&v12 = v0;
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player;
  [*(v0 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player) pause];
  swift_getKeyPath();
  *&v12 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__playerTimeObserver;
  swift_beginAccess();
  sub_10000BEB8(v12 + v3, &v10, &unk_100227380);
  if (v11)
  {
    sub_10005888C(&v10, &v12);
    swift_getKeyPath();
    *&v10 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v1 + v2);
    if (v4)
    {
      sub_10001BED0(&v12, v13);
      v5 = v4;
      [v5 removeTimeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
    }

    sub_100012A7C(&v12);
  }

  else
  {
    sub_1000050C4(&v10, &unk_100227380);
  }

  swift_getKeyPath();
  *&v12 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v1 + v2);
  if (v6 && (v7 = v6, v8 = String._bridgeToObjectiveC()(), [v7 removeObserver:v1 forKeyPath:v8], v7, v8, *(v1 + v2)))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v12 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + v2) = 0;
  }
}

void sub_10013800C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(AVURLAsset);
  v41 = a1;
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = [v8 initWithURL:v10 options:0];

  v13 = [objc_allocWithZone(AVPlayerItem) initWithAsset:v12];
  sub_100136E88([objc_allocWithZone(AVPlayer) initWithPlayerItem:v13]);
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer___observationRegistrar;
  aBlock = v2;
  v15 = sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v2 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player);
  if (v16)
  {
    v17 = v16;
    v40 = v15;
    v18 = v17;
    v19 = String._bridgeToObjectiveC()();
    [v18 addObserver:v2 forKeyPath:v19 options:1 context:0];

    v20 = [objc_opt_self() defaultCenter];
    v21 = String._bridgeToObjectiveC()();
    v39 = v13;
    v22 = v21;
    v23 = [v18 currentItem];
    v38 = v14;
    v24 = v23;
    [v20 addObserver:v2 selector:"playerDidFinishPlaying" name:v22 object:v23];

    v49 = CMTime.init(value:timescale:)(1, 5);
    LODWORD(v22) = v49.timescale;
    epoch = v49.epoch;
    value = v49.value;
    v36 = HIDWORD(*&v49.timescale);
    sub_10006054C(0, &qword_100225DD0);
    v25 = static OS_dispatch_queue.main.getter();
    v26 = *(v2 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer_lock);
    (*(v5 + 16))(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v4);
    v27 = v4;
    v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = v18;
    (*(v5 + 32))(v29 + v28, v7, v27);
    v47 = sub_10013A614;
    v48 = v29;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_100138E84;
    v46 = &unk_1002185D0;
    v30 = _Block_copy(&aBlock);
    v31 = v18;

    aBlock = value;
    v44 = __PAIR64__(v36, v22);
    v45 = epoch;
    v32 = [v31 addPeriodicTimeObserverForInterval:&aBlock queue:v25 usingBlock:v30];
    _Block_release(v30);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v34 - 2) = v2;
    *(&v34 - 1) = &aBlock;
    v42 = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1000050C4(&aBlock, &unk_100227380);
  }

  else
  {
  }
}

void sub_1001384F4()
{
  swift_getKeyPath();
  v16 = v0;
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player;
  v2 = *&v0[OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player];
  if (v2 && (v3 = [v2 error]) != 0)
  {

    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000BE10(v4, qword_100239158);
    v5 = v0;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v8 = 136315138;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v9 = *&v0[v1];
      if (v9 && (v9 = [v9 error]) != 0)
      {
        v10 = v9;
        swift_getErrorValue();
        v11 = Error.localizedDescription.getter();
        v13 = v12;

        v9 = v11;
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      v14 = sub_100139F7C(v9, v13, &v16);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Playback initiated but player has error: %s", v8, 0xCu);
      sub_100012A7C(v15);
    }
  }

  else
  {
    swift_getKeyPath();
    v16 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [*&v0[v1] play];
  }
}

void sub_100138900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (os_unfair_lock_trylock((a4 + 24)))
  {
    sub_10013A6B8((a4 + 16));
    os_unfair_lock_unlock((a4 + 24));
  }
}

void sub_100138968(uint64_t *a1, void *a2, uint64_t a3)
{
  v30 = a1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 currentItem];
  if (!v9)
  {
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000BE10(v17, qword_100239158);
    (*(v6 + 16))(v8, a3, v5);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v20 = 136315138;
      sub_100139ECC(&qword_100223E18, &type metadata accessor for URL);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v6 + 8))(v8, v5);
      v24 = sub_100139F7C(v21, v23, &v31);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Invalid or missing duration for current item %s", v20, 0xCu);
      sub_100012A7C(v29);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    v25 = *v30;
    v16 = (*(*v30 + 24) + 16);
    os_unfair_lock_lock(v16);
    if (*(v25 + 16) == 0.0)
    {
      *(v25 + 16) = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v28 - 2) = v25;
      *(&v28 - 1) = 0;
      v31 = v25;
      sub_100139ECC(&qword_1002290F8, type metadata accessor for PlaybackProgressUpdater);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    goto LABEL_16;
  }

  v10 = v9;
  [v9 duration];

  CMTime.seconds.getter();
  if (v11 > 0.0 && (*&v11 >> 52 < 0x7FFuLL || (*&v11 & 0xFFFFFFFFFFFFFLL) == 0))
  {
    v12 = v11;
    CMTime.seconds.getter();
    v14 = v13 / v12;
    v15 = *v30;
    v16 = (*(*v30 + 24) + 16);
    os_unfair_lock_lock(v16);
    if (*(v15 + 16) == v14)
    {
      *(v15 + 16) = v14;
    }

    else
    {
      v27 = swift_getKeyPath();
      __chkstk_darwin(v27);
      *(&v28 - 2) = v15;
      *(&v28 - 1) = v14;
      v31 = v15;
      sub_100139ECC(&qword_1002290F8, type metadata accessor for PlaybackProgressUpdater);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

LABEL_16:
    os_unfair_lock_unlock(v16);
  }
}

uint64_t sub_100138E84(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 32);

  v5(v2, v3, v4);
}

uint64_t sub_100138EF0()
{
  v1 = v0;
  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BE10(v2, qword_100239158);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Preview Playback ended.", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer_lock);
  if (os_unfair_lock_trylock((v6 + 24)))
  {
    v7 = *(v6 + 16);
    v8 = *(v7 + 24);
    os_unfair_lock_lock(v8 + 4);
    if (*(v7 + 16) == 0.0)
    {
      *(v7 + 16) = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v17 = v7;
      sub_100139ECC(&qword_1002290F8, type metadata accessor for PlaybackProgressUpdater);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    os_unfair_lock_unlock(v8 + 4);
    os_unfair_lock_unlock((v6 + 24));
  }

  if (*(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state))
  {
    v10 = swift_getKeyPath();
    __chkstk_darwin(v10);
    *&v17 = v1;
    sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  *&v17 = v1;
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player);
  if (v11)
  {
    timescale = kCMTimeZero.timescale;
    flags = kCMTimeZero.flags;
    epoch = kCMTimeZero.epoch;
    *&v17 = kCMTimeZero.value;
    *(&v17 + 1) = __PAIR64__(flags, timescale);
    *&v18 = epoch;
    v23 = epoch;
    value = kCMTimeZero.value;
    v25 = timescale;
    v26 = flags;
    v27 = epoch;
    v20 = kCMTimeZero.value;
    v21 = timescale;
    v22 = flags;
    [v11 seekToTime:&v17 toleranceBefore:&value toleranceAfter:&v20];
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = swift_getKeyPath();
  __chkstk_darwin(v15);
  value = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000050C4(&v17, &qword_1002224D8);
}

id sub_100139378()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__queuedSongs] = _swiftEmptyArrayStorage;
  v2 = &v0[OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__currentSong];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v3 = &v0[OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__playerTimeObserver];
  *v3 = 0u;
  v3[1] = 0u;
  *&v0[OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player] = 0;
  v4 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer_lock;
  type metadata accessor for PlaybackProgressUpdater(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  sub_1000024C4(&qword_100229110);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 24) = v6;
  ObservationRegistrar.init()();
  sub_1000024C4(qword_100229118);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v5;
  *&v0[v4] = v7;
  v0[OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state] = 0;
  ObservationRegistrar.init()();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_1001395D8()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001396AC()
{
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100139758@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__currentSong;
  swift_beginAccess();
  return sub_10000BEB8(v3 + v4, a1, &qword_1002224D8);
}

double sub_100139830()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer_lock);
  os_unfair_lock_lock((v1 + 24));
  sub_100137288((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_100139890()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state);
}

id sub_100139980()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return [*(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player) pause];
}

double sub_100139A58@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F8, type metadata accessor for PlaybackProgressUpdater);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_100139B00(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100139ECC(&qword_1002290F8, type metadata accessor for PlaybackProgressUpdater);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100139C18()
{

  v1 = OBJC_IVAR____TtC16EventViewServiceP33_5445445A7553E6A0FDE4F6AA485860F723PlaybackProgressUpdater___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100139CE4()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100139D94(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100136E88(v1);
}

void sub_100139DCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player);
  *(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player) = v2;
  v4 = v2;
}

double sub_100139EBC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_100139ECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100139F14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000024C4(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

unint64_t sub_100139F7C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10013A048(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100026D04(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100012A7C(v11);
  return v7;
}

unint64_t sub_10013A048(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10013A154(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10013A154(uint64_t a1, unint64_t a2)
{
  v3 = sub_10013A1A0(a1, a2);
  sub_10013A2D0(&off_100211428);
  return v3;
}

char *sub_10013A1A0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10013A3BC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10013A3BC(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10013A2D0(uint64_t result)
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

  result = sub_10013A430(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_10013A3BC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000024C4(&qword_100229108);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10013A430(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024C4(&qword_100229108);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10013A548()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_10013A614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for URL();
  v7 = *(v3 + 16);

  sub_100138900(a1, a2, a3, v7);
}

uint64_t sub_10013A6A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10013A6DC()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__queuedSongs) = *(v0 + 24);
}

void sub_10013A720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && (a1 == 1702125938 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (a4)
    {
      if (*(a4 + 16))
      {
        v6 = sub_1000FD098(NSKeyValueChangeNewKey);
        if (v7)
        {
          sub_100026D04(*(a4 + 56) + 32 * v6, v25);
          if (swift_dynamicCast())
          {
            if (v24 != 0.0)
            {
              if (*(v4 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state) == 2)
              {
                return;
              }

              goto LABEL_39;
            }

            v8 = *(v4 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer_lock);
            os_unfair_lock_lock((v8 + 24));
            v9 = *(v8 + 16);
            swift_getKeyPath();
            v25[0] = v9;
            sub_100139ECC(&qword_1002290F8, type metadata accessor for PlaybackProgressUpdater);
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v10 = *(v9 + 16);
            v11 = 1.0;
            if (v10 <= 1.0)
            {
              v12 = *(v9 + 16);
            }

            else
            {
              v12 = 1.0;
            }

            os_unfair_lock_unlock((v8 + 24));
            v14 = (*&v10 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v10 & 0x7FF0000000000000) == 0 || v10 < 0.0;
            v15 = v12;
            if (v14)
            {
              v15 = 0.0;
            }

            v16 = ~*&v15 & 0x7FF0000000000000;
            v17 = *&v15 & 0xFFFFFFFFFFFFFLL;
            if (v16)
            {
              v18 = 1;
            }

            else
            {
              v18 = v17 == 0;
            }

            if (v18)
            {
              os_unfair_lock_lock((v8 + 24));
              v19 = *(v8 + 16);
              swift_getKeyPath();
              v25[0] = v19;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v20 = *(v19 + 16);
              v21 = (*&v20 & 0xFFFFFFFFFFFFFLL) == 0 || (~*&v20 & 0x7FF0000000000000) != 0;
              if (v20 <= 1.0)
              {
                v11 = *(v19 + 16);
              }

              os_unfair_lock_unlock((v8 + 24));
              v22 = v20 < 0.0 || !v21;
              if (!v22 && v11 > 0.0 && *(v4 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state) != 3)
              {
LABEL_39:
                KeyPath = swift_getKeyPath();
                __chkstk_darwin(KeyPath);
                v25[0] = v4;
                sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer);
                ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10013ABB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a5;
  v9 = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  v12.val[0] = *(v8 + 80);
  v12.val[1] = *(v9 + 80);
  v14 = 0;
  State.init(wrappedValue:)();
  v10 = v13[1];
  *(a7 + 32) = LOBYTE(v13[0]) & 1;
  *(a7 + 40) = v10;
  v15 = v12;
  vst2q_f64(v13, v15);
  type metadata accessor for PhoneWallpapersWatchFacesView();
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  swift_getWitnessTable();
  return Bindable<A>.init(wrappedValue:)();
}

uint64_t sub_10013AD80()
{
  type metadata accessor for PhoneWallpaperViewModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

void sub_10013ADE4()
{
  sub_10013B1D8(319, qword_100226B30, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10013B1D8(319, &qword_1002291A0, &type metadata for PhoneWallpapersWatchFacesConfiguration, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PhoneWallpaperViewModel();
      type metadata accessor for Bindable();
      if (v2 <= 0x3F)
      {
        type metadata accessor for WatchFacesViewModel();
        type metadata accessor for Bindable();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10013AF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for PhoneWallpaperViewModel();
    v8 = type metadata accessor for Bindable();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 60);

      return v11(v12, a2, v10);
    }

    else
    {
      type metadata accessor for WatchFacesViewModel();
      v13 = type metadata accessor for Bindable();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 64);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10013B08C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for PhoneWallpaperViewModel();
    v8 = type metadata accessor for Bindable();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 60);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      type metadata accessor for WatchFacesViewModel();
      v13 = type metadata accessor for Bindable();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10013B1D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_10013B22C()
{
  result = qword_1002291A8;
  if (!qword_1002291A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002291A8);
  }

  return result;
}

uint64_t sub_10013B280()
{
  type metadata accessor for WatchFacesViewModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_10013B2D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = a1[4];
  v24 = a1[2];
  v25 = v3;
  type metadata accessor for PhoneWallpaperView();
  v4 = a1[3];
  v5 = a1[5];
  type metadata accessor for WatchFacesView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for VStack();
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  sub_10000460C(&qword_1002291B0);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  *&v16 = v24;
  *&v17 = v25;
  *(&v16 + 1) = v4;
  *(&v17 + 1) = v5;
  v29 = v16;
  v30 = v17;
  v31 = v27;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  sub_1000421E8();
  View.background<A>(_:alignment:)();
  (*(v26 + 8))(v8, v6);
  v19 = sub_10000BFFC(&qword_1002291B8, &qword_1002291B0);
  v32 = WitnessTable;
  v33 = v19;
  v20 = swift_getWitnessTable();
  sub_1000EE87C(v13, v9, v20);
  v21 = *(v10 + 8);
  v21(v13, v9);
  sub_1000EE87C(v15, v9, v20);
  return (v21)(v15, v9);
}

uint64_t sub_10013B644@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v80 = a6;
  v11 = type metadata accessor for Optional();
  __chkstk_darwin(v11 - 8);
  v64 = &v60 - v12;
  v73 = a3;
  *(&v70 + 1) = a5;
  v13 = type metadata accessor for WatchFacesView();
  v67 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v66 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = &v60 - v16;
  v17 = type metadata accessor for Optional();
  __chkstk_darwin(v17 - 8);
  v60 = &v60 - v18;
  v71 = a2;
  *&v70 = a4;
  v19 = type metadata accessor for PhoneWallpaperView();
  v63 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v62 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v61 = &v60 - v22;
  v75 = v23;
  v79 = v13;
  v24 = type metadata accessor for _ConditionalContent();
  v77 = *(v24 - 8);
  v78 = v24;
  v25 = __chkstk_darwin(v24);
  v76 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v74 = &v60 - v27;
  v28 = *a1;
  v29 = a1[1];
  v30 = a1[3];
  v68 = a1[2];
  v69 = v28;
  LOBYTE(a4) = *(a1 + 32);
  v72 = a1;
  v31 = a1[5];
  LOBYTE(v92) = a4;
  *(&v92 + 1) = v31;

  sub_1000024C4(&qword_1002291C0);
  State.projectedValue.getter();
  v32 = v97;
  v33 = v98;
  type metadata accessor for RemoteViewConfiguration();
  sub_10013E810(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  v34 = EnvironmentObject.init()();
  *&v97 = v69;
  *(&v97 + 1) = v29;
  *&v98 = v68;
  *(&v98 + 1) = v30;
  v99 = v32;
  LOBYTE(v100) = v33;
  *(&v100 + 1) = v34;
  v101 = v35;
  LOBYTE(v92) = a4;
  *(&v92 + 1) = v31;
  State.wrappedValue.getter();
  if (v86)
  {
    v36 = v73;
    *&v92 = v71;
    *(&v92 + 1) = v73;
    v93 = v70;
    type metadata accessor for PhoneWallpapersWatchFacesView();
    sub_10013B280();
    v37 = v64;
    (*(*(v36 - 8) + 56))(v64, 1, 1, v36);
    v38 = v66;
    sub_100041B30(v37, v66);
    v39 = v79;
    WitnessTable = swift_getWitnessTable();
    v41 = v65;
    sub_1000EE87C(v38, v39, WitnessTable);
    v42 = *(v67 + 8);
    v42(v38, v39);
    sub_1000EE87C(v41, v39, WitnessTable);
    v43 = v75;
    swift_getWitnessTable();
    v44 = v74;
    sub_100173974(v38, v43, v39);
    v42(v38, v39);
    v45 = v41;
    v46 = v39;
  }

  else
  {
    v47 = v71;
    *&v92 = v71;
    *(&v92 + 1) = v73;
    v93 = v70;
    type metadata accessor for PhoneWallpapersWatchFacesView();
    sub_10013AD80();
    v48 = v60;
    (*(*(v47 - 8) + 56))(v60, 1, 1, v47);
    v49 = v62;
    sub_10019F288(v48, v62);
    v50 = v75;
    v51 = swift_getWitnessTable();
    v52 = v61;
    sub_1000EE87C(v49, v50, v51);
    v42 = *(v63 + 8);
    v42(v49, v50);
    sub_1000EE87C(v52, v50, v51);
    swift_getWitnessTable();
    v44 = v74;
    sub_10017387C(v49, v50);
    v42(v49, v50);
    v45 = v52;
    v46 = v50;
  }

  v42(v45, v46);
  v88 = v99;
  v89 = v100;
  v90 = v101;
  v86 = v97;
  v87 = v98;
  v91[0] = &v86;
  v54 = v76;
  v53 = v77;
  v55 = v78;
  (*(v77 + 16))(v76, v44, v78);
  v91[1] = v54;
  sub_10013E24C(&v97, &v92);
  v85[0] = &type metadata for PhoneWallpapersWatchFacesHeader;
  v85[1] = v55;
  v83 = sub_10013E284();
  v56 = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v81 = v56;
  v82 = v57;
  v84 = swift_getWitnessTable();
  sub_1000E76FC(v91, 2uLL, v85);
  sub_10013E2D8(&v97);
  v58 = *(v53 + 8);
  v58(v44, v55);
  v58(v54, v55);
  v94 = v88;
  v95 = v89;
  v96 = v90;
  v92 = v86;
  v93 = v87;
  return sub_10013E2D8(&v92);
}

uint64_t sub_10013BDF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000024C4(&qword_1002291D0);
  __chkstk_darwin(v3 - 8);
  v5 = v54 - v4;
  v6 = sub_1000024C4(&qword_1002291D8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v54 - v8;
  v10 = sub_1000024C4(&qword_1002291E0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v54 - v12;
  v14 = sub_1000024C4(&qword_1002291E8);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = v54 - v16;
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v18 = sub_1000024C4(&qword_1002291F0);
  sub_10013C164(v1, &v5[*(v18 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001AE00(v5, v9, &qword_1002291D0);
  v19 = &v9[*(v7 + 44)];
  v20 = v54[5];
  *(v19 + 4) = v54[4];
  *(v19 + 5) = v20;
  *(v19 + 6) = v54[6];
  v21 = v54[1];
  *v19 = v54[0];
  *(v19 + 1) = v21;
  v22 = v54[3];
  *(v19 + 2) = v54[2];
  *(v19 + 3) = v22;
  v23 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_10001AE00(v9, v13, &qword_1002291D8);
  v32 = &v13[*(v11 + 44)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_10001AE00(v13, v17, &qword_1002291E0);
  v42 = &v17[*(v15 + 44)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  v43 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_10001AE00(v17, a1, &qword_1002291E8);
  result = sub_1000024C4(&qword_1002291F8);
  v53 = a1 + *(result + 36);
  *v53 = v43;
  *(v53 + 8) = v45;
  *(v53 + 16) = v47;
  *(v53 + 24) = v49;
  *(v53 + 32) = v51;
  *(v53 + 40) = 0;
  return result;
}

uint64_t sub_10013C164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v73 = sub_1000024C4(&qword_100229200);
  v3 = __chkstk_darwin(v73);
  v77 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v75 = (&v66 - v5);
  v6 = sub_1000024C4(&qword_1002230C8);
  v72 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v66 - v7;
  v8 = sub_1000024C4(&qword_100229208);
  v9 = __chkstk_darwin(v8 - 8);
  v74 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v66 - v11;
  v105 = *(a1 + 32);
  v106 = *(a1 + 48);
  v93 = *(a1 + 32);
  LOBYTE(v94) = *(a1 + 48);
  v70 = sub_1000024C4(&qword_100229210);
  Binding.wrappedValue.getter();
  LocalizedStringKey.init(stringLiteral:)();
  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  v17 = v16;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v18 = Text.font(_:)();
  v81 = v19;
  v82 = v18;
  v21 = v20;
  v83 = v22;

  sub_100017398(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  v79 = swift_getKeyPath();
  v78 = v21 & 1;
  v104 = v21 & 1;
  v102 = 0;
  v23 = *(a1 + 24);
  if (v23)
  {
    v67 = v6;
    v68 = a1;
    v69 = v12;
    v24 = *(a1 + 16);
    v93 = v105;
    LOBYTE(v94) = v106;
    Binding.wrappedValue.getter();
    sub_10013C99C(v24, v23, v84);
    v25 = Text.init(_:tableName:bundle:comment:)();
    v27 = v26;
    v29 = v28;
    static Font.subheadline.getter();
    static Font.Weight.regular.getter();
    Font.weight(_:)();

    v30 = Text.font(_:)();
    v32 = v31;
    v34 = v33;

    sub_100017398(v25, v27, v29 & 1);

    if (qword_100220B98 != -1)
    {
      swift_once();
    }

    *&v93 = qword_1002390B8;

    v35 = Text.foregroundStyle<A>(_:)();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_100017398(v30, v32, v34 & 1);

    v42 = swift_getKeyPath();
    v43 = swift_getKeyPath();
    v39 &= 1u;
    LOBYTE(v93) = v39;
    LOBYTE(v84) = 0;
    v44 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v92 = 0;
    *&v84 = v35;
    *(&v84 + 1) = v37;
    LOBYTE(v85) = v39;
    *(&v85 + 1) = v41;
    *&v86 = v42;
    *(&v86 + 1) = 2;
    LOBYTE(v87) = 0;
    *(&v87 + 1) = v43;
    LOBYTE(v88) = 0;
    BYTE8(v88) = v44;
    *&v89 = v45;
    *(&v89 + 1) = v46;
    *&v90 = v47;
    *(&v90 + 1) = v48;
    v91 = 0;
    sub_1000024C4(&qword_1002230E8);
    sub_10013EB1C(&qword_1002230F0, &qword_1002230E8, &unk_1001B6E80, sub_1000555E4);
    v49 = v71;
    View.accessibilityIdentifier(_:)();
    v97 = v88;
    v98 = v89;
    v99 = v90;
    v100 = v91;
    v93 = v84;
    v94 = v85;
    v95 = v86;
    v96 = v87;
    sub_1000050C4(&v93, &qword_1002230E8);
    v12 = v69;
    sub_10001AE00(v49, v69, &qword_1002230C8);
    (*(v72 + 56))(v12, 0, 1, v67);
    a1 = v68;
  }

  else
  {
    (*(v72 + 56))(v12, 1, 1, v6);
  }

  v50 = static VerticalAlignment.center.getter();
  v51 = v75;
  *v75 = v50;
  *(v51 + 8) = 0x4020000000000000;
  *(v51 + 16) = 0;
  v52 = sub_1000024C4(&qword_100229218);
  sub_10013CA94(a1, (v51 + *(v52 + 44)));
  v53 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v54 = v74;
  v55 = v51 + *(v73 + 36);
  *v55 = v53;
  *(v55 + 8) = v56;
  *(v55 + 16) = v57;
  *(v55 + 24) = v58;
  *(v55 + 32) = v59;
  *(v55 + 40) = 0;
  sub_10000BEB8(v12, v54, &qword_100229208);
  v60 = v77;
  sub_10013E49C(v51, v77);
  *&v84 = v82;
  *(&v84 + 1) = v81;
  LOBYTE(v85) = v78;
  *(&v85 + 1) = *v103;
  DWORD1(v85) = *&v103[3];
  *(&v85 + 1) = v83;
  *&v86 = KeyPath;
  *(&v86 + 1) = 2;
  LOBYTE(v87) = 0;
  *(&v87 + 1) = *v101;
  DWORD1(v87) = *&v101[3];
  *(&v87 + 1) = v79;
  LOBYTE(v88) = 0;
  v61 = v76;
  *(v76 + 64) = 0;
  v62 = v85;
  *v61 = v84;
  v61[1] = v62;
  v63 = v87;
  v61[2] = v86;
  v61[3] = v63;
  v64 = sub_1000024C4(&qword_100229220);
  sub_10000BEB8(v54, v61 + *(v64 + 48), &qword_100229208);
  sub_10013E49C(v60, v61 + *(v64 + 64));
  sub_10000BEB8(&v84, &v93, &qword_100223100);
  sub_10013E50C(v51);
  sub_1000050C4(v12, &qword_100229208);
  sub_10013E50C(v60);
  sub_1000050C4(v54, &qword_100229208);
  *&v93 = v82;
  *(&v93 + 1) = v81;
  LOBYTE(v94) = v78;
  *(&v94 + 1) = *v103;
  DWORD1(v94) = *&v103[3];
  *(&v94 + 1) = v83;
  *&v95 = KeyPath;
  *(&v95 + 1) = 2;
  LOBYTE(v96) = 0;
  *(&v96 + 1) = *v101;
  DWORD1(v96) = *&v101[3];
  *(&v96 + 1) = v79;
  LOBYTE(v97) = 0;
  return sub_1000050C4(&v93, &qword_100223100);
}

uint64_t sub_10013C99C(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  if (a3)
  {
    v7 = "ICE_PHONEWALLPAPER_HEADER";
  }

  else
  {
    v7 = "ICE_WATCHFACES_SUBHEADER ";
  }

  if (a3)
  {
    v8 = 0xD000000000000029;
  }

  else
  {
    v8 = 0xD00000000000002DLL;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = (v7 | 0x8000000000000000);
  v9._countAndFlagsBits = v8;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v10);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  return LocalizedStringKey.init(stringInterpolation:)();
}