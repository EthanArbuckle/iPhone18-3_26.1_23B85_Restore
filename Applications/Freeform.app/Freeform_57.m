unint64_t sub_1008CFDC8()
{
  result = qword_101A070C8;
  if (!qword_101A070C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A070C8);
  }

  return result;
}

unint64_t sub_1008CFE1C()
{
  result = qword_101A070D0;
  if (!qword_101A070D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A070D0);
  }

  return result;
}

unint64_t sub_1008CFE70()
{
  result = qword_101A070D8;
  if (!qword_101A070D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A070D8);
  }

  return result;
}

unint64_t sub_1008CFF08()
{
  result = qword_101A07100;
  if (!qword_101A07100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07100);
  }

  return result;
}

unint64_t sub_1008CFF60()
{
  result = qword_101A07108;
  if (!qword_101A07108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07108);
  }

  return result;
}

unint64_t sub_1008CFFB8()
{
  result = qword_101A07110;
  if (!qword_101A07110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07110);
  }

  return result;
}

unint64_t sub_1008D0010()
{
  result = qword_101A07118;
  if (!qword_101A07118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07118);
  }

  return result;
}

unint64_t sub_1008D0068()
{
  result = qword_101A07120;
  if (!qword_101A07120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07120);
  }

  return result;
}

unint64_t sub_1008D00C0()
{
  result = qword_101A07128;
  if (!qword_101A07128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07128);
  }

  return result;
}

unint64_t sub_1008D0118()
{
  result = qword_101A07130;
  if (!qword_101A07130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07130);
  }

  return result;
}

unint64_t sub_1008D0170()
{
  result = qword_101A07138;
  if (!qword_101A07138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07138);
  }

  return result;
}

unint64_t sub_1008D01C8()
{
  result = qword_101A07140;
  if (!qword_101A07140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07140);
  }

  return result;
}

unint64_t sub_1008D0220()
{
  result = qword_101A07148;
  if (!qword_101A07148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07148);
  }

  return result;
}

__n128 sub_1008D02E8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1008D0324(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_1008D036C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1008D03E8@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 120))
  {
    v3 = *(v1 + 144);
    if (*(v1 + 160) == 1)
    {
      *a1 = *(v1 + 128);
      *(a1 + 16) = v3;
      result = sub_100687BC0(v1, a1 + 32);
      v5 = 80;
    }

    else
    {
      *a1 = *(v1 + 128);
      *(a1 + 16) = v3;
      v5 = 78;
    }
  }

  else
  {
    v7 = *(v1 + 104);
    v6 = *(v1 + 112);
    v8 = *(v1 + 160);
    *a1 = *(v1 + 88);
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
    v9 = *(v1 + 144);
    *(a1 + 32) = *(v1 + 128);
    *(a1 + 48) = v9;
    if (v8 == 1)
    {
      result = sub_100687BC0(v1, a1 + 64);
      v5 = 79;
    }

    else
    {
      v5 = 77;
    }
  }

  *(a1 + 256) = v5;
  return result;
}

uint64_t sub_1008D0490@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 120))
  {
    v3 = *(v1 + 8);
    [v3 transform];
  }

  else
  {
    v6 = *(v1 + 104);
    v5 = *(v1 + 112);
    v8 = *(v1 + 88);
    v7 = *(v1 + 96);
    [*(v1 + 24) unobscuredScrollViewFrame];
    v11 = sub_100121EF4(0, v6, v5, v9, v10) / v6;
    v13 = v12 / v5;
    if (v13 >= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    v3 = *(v1 + 8);
    [v3 minimumPinchViewScale];
    v16 = v15;
    [v3 maximumPinchViewScale];
    v18 = sub_1004C3240(v14, v16, v17);
    v19 = sub_100120414(v8, v7, v6, v5);
    v4 = sub_1009168E8(&v68, v18, v19, v20);
  }

  v21 = *(v1 + 128);
  v22 = *(v1 + 136);
  v23 = *(v1 + 144);
  v24 = *(v1 + 152);
  [*(v1 + 24) unobscuredScrollViewFrame];
  v27 = sub_100121EF4(0, v23, v24, v25, v26) / v23;
  v29 = v28 / v24;
  if (v29 >= v27)
  {
    v30 = v27;
  }

  else
  {
    v30 = v29;
  }

  [v3 minimumPinchViewScale];
  v32 = v31;
  [v3 maximumPinchViewScale];
  v34 = sub_1004C3240(v30, v32, v33);
  v35 = sub_100120414(v21, v22, v23, v24);
  sub_1009168E8(&v67, v34, v35, v36);
  if (*(v1 + 160) == 1)
  {
    v65 = v68;
    CATransform3DGetAffineTransform(&v64, &v65);
    tx = v64.tx;
    ty = v64.ty;
    type metadata accessor for CGAffineTransform(0);
    v40 = v39;
    v60 = *&v64.c;
    v62 = *&v64.a;
    *&v66[3] = v39;
    v41 = swift_allocObject();
    v66[0] = v41;
    *(v41 + 16) = v62;
    *(v41 + 32) = v60;
    *(v41 + 48) = tx;
    *(v41 + 56) = ty;
    v65 = v67;
    CATransform3DGetAffineTransform(&v64, &v65);
    v42 = v64.tx;
    v43 = v64.ty;
    v61 = *&v64.c;
    v63 = *&v64.a;
    v65.m14 = v40;
    v44 = swift_allocObject();
    *&v65.m11 = v44;
    *(v44 + 16) = v63;
    *(v44 + 32) = v61;
    *(v44 + 48) = v42;
    *(v44 + 56) = v43;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 32) = 0u;
    v45 = a1 + 32;
    *(a1 + 64) = 28;
    *(a1 + 72) = 0xD000000000000010;
    *(a1 + 80) = 0x8000000101551E10;
    sub_1006A430C(v66, a1);
    v46 = &v65;
  }

  else
  {
    type metadata accessor for CATransform3D(0);
    v48 = v47;
    v65.m14 = v47;
    v49 = swift_allocObject();
    *&v65.m11 = v49;
    v50 = *&v68.m33;
    v49[5] = *&v68.m31;
    v49[6] = v50;
    v51 = *&v68.m43;
    v49[7] = *&v68.m41;
    v49[8] = v51;
    v52 = *&v68.m13;
    v49[1] = *&v68.m11;
    v49[2] = v52;
    v53 = *&v68.m23;
    v49[3] = *&v68.m21;
    v49[4] = v53;
    v64.d = v48;
    v54 = swift_allocObject();
    *&v64.a = v54;
    v55 = *&v67.m33;
    v54[5] = *&v67.m31;
    v54[6] = v55;
    v56 = *&v67.m43;
    v54[7] = *&v67.m41;
    v54[8] = v56;
    v57 = *&v67.m13;
    v54[1] = *&v67.m11;
    v54[2] = v57;
    v58 = *&v67.m23;
    v54[3] = *&v67.m21;
    v54[4] = v58;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 32) = 0u;
    v45 = a1 + 32;
    *(a1 + 64) = 26;
    *(a1 + 72) = 0x726F66736E617274;
    *(a1 + 80) = 0xE90000000000006DLL;
    sub_1006A430C(&v65, a1);
    v46 = &v64;
  }

  return sub_1006A430C(v46, v45);
}

unint64_t sub_1008D0848(uint64_t a1)
{
  result = sub_1008D0870();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1008D0870()
{
  result = qword_101A07150;
  if (!qword_101A07150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07150);
  }

  return result;
}

BOOL sub_1008D08C4(uint64_t a1, uint64_t a2)
{
  sub_1006364DC();
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 120))
  {
    if ((*(a2 + 120) & 1) == 0)
    {
      return 0;
    }

    return CGRectEqualToRect(*(a1 + 128), *(a2 + 128));
  }

  if (*(a2 + 120))
  {
    return 0;
  }

  result = CGRectEqualToRect(*(a1 + 88), *(a2 + 88));
  if (result)
  {
    return CGRectEqualToRect(*(a1 + 128), *(a2 + 128));
  }

  return result;
}

uint64_t RandomAccessCollection.lowerBound(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v44 = a1;
  v45 = a2;
  v34 = a4;
  v46 = a3;
  v5 = *(*(a3 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v42 = &v32 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v35 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  dispatch thunk of Collection.startIndex.getter();
  v48 = v4;
  dispatch thunk of Collection.endIndex.getter();
  v47 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = *(AssociatedConformanceWitness + 8);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v39 = (v6 + 8);
    v40 = (v6 + 16);
    v37 = (v35 + 32);
    v38 = (v35 + 8);
    v25 = v42;
    do
    {
      dispatch thunk of RandomAccessCollection.distance(from:to:)();
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v26 = dispatch thunk of Collection.subscript.read();
      v27 = v12;
      v28 = AssociatedTypeWitness;
      (*v40)(v25);
      (v26)(v49, 0);
      LOBYTE(v26) = v44(v25);
      (*v39)(v25, v28);
      if (v26)
      {
        v29 = v36;
        dispatch thunk of Collection.index(after:)();
        v30 = *v38;
        (*v38)(v27, v8);
        v30(v18, v8);
        (*v37)(v18, v29, v8);
      }

      else
      {
        (*v38)(v15, v8);
        (*v37)(v15, v27, v8);
      }

      v12 = v27;
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  }

  v19 = v36;
  dispatch thunk of Collection.endIndex.getter();
  v20 = dispatch thunk of static Comparable.< infix(_:_:)();
  v21 = v35;
  v22 = *(v35 + 8);
  v22(v19, v8);
  v22(v15, v8);
  if (v20)
  {
    v23 = v34;
    (*(v21 + 32))(v34, v18, v8);
    v24 = 0;
  }

  else
  {
    v22(v18, v8);
    v24 = 1;
    v23 = v34;
  }

  return (*(v21 + 56))(v23, v24, 1, v8);
}

uint64_t RandomAccessCollection.binarySearch<A>(_:sortKey:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v44 = a8;
  v45 = a7;
  v46 = a3;
  v47 = a1;
  v12 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v37 = &v35 - v13;
  v39 = *(a5 - 8);
  __chkstk_darwin(v14);
  v36 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v12;
  v16 = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  v21 = *(v16 - 8);
  __chkstk_darwin(v22);
  v24 = &v35 - v23;
  v49 = a4;
  v50 = a5;
  v42 = a2;
  v43 = a5;
  v51 = a6;
  v52 = v45;
  v53 = a2;
  v54 = v46;
  v55 = v47;
  RandomAccessCollection.lowerBound(where:)(sub_1008D13D4, v48, a6, v20);
  if ((*(v21 + 48))(v20, 1, v16) == 1)
  {
    (*(v18 + 8))(v20, v17);
LABEL_6:
    v33 = 1;
    v32 = v44;
    return (*(v21 + 56))(v32, v33, 1, v16);
  }

  v35 = *(v21 + 32);
  v35(v24, v20, v16);
  v25 = dispatch thunk of Collection.subscript.read();
  v26 = v40;
  v27 = v37;
  v28 = AssociatedTypeWitness;
  (*(v40 + 16))(v37);
  (v25)(v56, 0);
  v29 = v36;
  v42(v27);
  (*(v26 + 8))(v27, v28);
  v30 = v43;
  LOBYTE(v25) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v39 + 8))(v29, v30);
  if ((v25 & 1) == 0)
  {
    (*(v21 + 8))(v24, v16);
    goto LABEL_6;
  }

  v31 = v44;
  v35(v44, v24, v16);
  v32 = v31;
  v33 = 0;
  return (*(v21 + 56))(v32, v33, 1, v16);
}

uint64_t sub_1008D12E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  v12 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v7 + 8))(v10, a6);
  return v12 & 1;
}

uint64_t RandomAccessCollection<>.binarySearch(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return RandomAccessCollection.binarySearch<A>(_:sortKey:)(a1, sub_1008D1494, v12, a2, AssociatedTypeWitness, a3, a4, a5);
}

uint64_t sub_1008D1494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t RandomAccessCollection<>.lowerBound(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a1;
  return RandomAccessCollection.lowerBound(where:)(sub_1008D1574, v6, a3, a5);
}

uint64_t Comparable.clamped(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  __chkstk_darwin(a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  max<A>(_:_:)();
  type metadata accessor for ClosedRange();
  min<A>(_:_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t Sequence<>.unique()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 - 8);
  __chkstk_darwin(a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = static Array._allocateUninitialized(_:)();
  if (Array._getCount()())
  {
    v13 = sub_1008D19FC(v12, AssociatedTypeWitness, a3);
  }

  else
  {
    v13 = _swiftEmptySetSingleton;
  }

  v18 = v13;
  v14 = (*(v8 + 16))(v10, v4, a1);
  __chkstk_darwin(v14);
  *(&v17 - 4) = a1;
  *(&v17 - 3) = a2;
  *(&v17 - 2) = a3;
  *(&v17 - 1) = &v18;
  v15 = Sequence.filter(_:)();

  return v15;
}

uint64_t sub_1008D189C(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  (*(v3 + 16))(v5, a1, AssociatedTypeWitness, v7);
  type metadata accessor for Set();
  v10 = Set.insert(_:)();
  (*(v3 + 8))(v9, AssociatedTypeWitness);
  return v10 & 1;
}

uint64_t sub_1008D19FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v38 - v10;
  v39 = v11;
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  if (Array.count.getter())
  {
    type metadata accessor for _SetStorage();
    v15 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v15 = _swiftEmptySetSingleton;
  }

  v43 = Array._getCount()();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 7;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = v49[v24 >> 6];
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v8, (v22[6] + v28 * v24), a2);
        v30 = a3;
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v47;
        (*v47)(v8, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = v49[v24 >> 6];
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    v49[v25] = v27 | v26;
    v34 = v22[6] + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = v22[2];
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    v22[2] = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_1008D1DDC(uint64_t a1@<X8>)
{
  v3 = [*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] canvasView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 canvasLayer];

    v31[3] = type metadata accessor for CRLiOSBoardViewController();
    v31[4] = &off_1018ADCB8;
    v31[0] = v1;
    sub_1008D996C(v31, v30);
    v6 = v1;
    sub_100916524(v5, v30, a1);
    sub_10000CAAC(v31, &qword_101A07158);
    if (*a1)
    {
      return;
    }
  }

  else
  {
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  v7 = objc_opt_self();
  v8 = [v7 _atomicIncrementAssertCount];
  v31[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v31);
  StaticString.description.getter();
  v9 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 lastPathComponent];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v15 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v8;
  v17 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v17;
  v18 = sub_1005CF04C();
  *(inited + 104) = v18;
  *(inited + 72) = v9;
  *(inited + 136) = &type metadata for String;
  v19 = sub_1000053B0();
  *(inited + 112) = v12;
  *(inited + 120) = v14;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v19;
  *(inited + 152) = 15;
  v20 = v31[0];
  *(inited + 216) = v17;
  *(inited + 224) = v18;
  *(inited + 192) = v20;
  v21 = v9;
  v22 = v20;
  v23 = static os_log_type_t.error.getter();
  sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v24 = static os_log_type_t.error.getter();
  sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v25 = swift_allocObject();
  v25[2] = 8;
  v25[3] = 0;
  v25[4] = 0;
  v25[5] = 0;
  v26 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v28 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v29 = String._bridgeToObjectiveC()();

  [v7 handleFailureInFunction:v27 file:v28 lineNumber:15 isFatal:0 format:v29 args:v26];
}

void sub_1008D222C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 0.25;
  LODWORD(v2) = 0.5;
  LODWORD(v3) = 1.0;
  v4 = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  v5 = sub_100C00488();

  qword_101AD6B50 = v5;
}

void *sub_1008D2288(void *a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      return _swiftEmptyArrayStorage;
    }

    goto LABEL_5;
  }

  if (!v3)
  {
LABEL_5:
    sub_1005B981C(&unk_1019F4D60);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_101465920;
    *(v5 + 32) = a1;
    goto LABEL_6;
  }

  v4 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  sub_1005B981C(&unk_1019F4D60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146CE00;
  *(v5 + 32) = a1;
  *(v5 + 40) = v4;
  v6 = a1;
  a1 = v4;
LABEL_6:
  v7 = a1;
  return v5;
}

char *sub_1008D2354(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_snapshotViewWrapper);
  [v3 safeAreaInsets];
  v5 = v4;
  v103 = v6;
  [v3 frame];
  MinX = CGRectGetMinX(v107);
  [v3 frame];
  MinY = CGRectGetMinY(v108);
  [v3 frame];
  Width = CGRectGetWidth(v109);
  [v3 frame];
  Height = CGRectGetHeight(v110);
  [v3 frame];
  v10 = CGRectGetMinX(v111);
  [v3 frame];
  v11 = CGRectGetMinY(v112);
  v12 = *(a1 + 24);
  [v12 visibleBoundsRect];
  v14 = v13;
  [v12 visibleBoundsRect];
  v16 = v15;
  v17 = sub_1010136C0();
  v18 = [v17 layer];

  if (v18)
  {
    v102 = v18;
    v19 = type metadata accessor for CRLSceneCaptureSnapshotLayer();
    v20 = objc_allocWithZone(v19);
    v21 = OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_chromeClippingLayer;
    *&v20[v21] = [objc_allocWithZone(CALayer) init];
    v22 = OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_coordinateSpaceLayer;
    *&v20[v22] = [objc_allocWithZone(type metadata accessor for CRLSceneCaptureSnapshotLayer.CRLSceneCaptureContentClippingLayer()) init];
    v23 = [v3 snapshotViewAfterScreenUpdates:0];
    if (v23)
    {
      v101 = v23;
      v24 = [v23 layer];
      *&v20[OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_renderLayer] = v24;
      v105.receiver = v20;
      v105.super_class = v19;
      v25 = objc_msgSendSuper2(&v105, "init");
      [v25 setMasksToBounds:1];
      [v25 setFrame:{MinX, v5 + MinY, Width, Height - v5}];
      v26 = OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_coordinateSpaceLayer;
      [*&v25[OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_coordinateSpaceLayer] setMasksToBounds:0];
      [*&v25[v26] setFrame:{v103 + v10, v11, v14, v16}];
      [v25 addSublayer:*&v25[v26]];
      v27 = OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_chromeClippingLayer;
      [*&v25[OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_chromeClippingLayer] setMasksToBounds:1];
      v28 = *&v25[v27];
      [v28 frame];
      [v28 setFrame:?];

      v29 = *&v25[v26];
      v30 = *&v25[v27];
      [v29 frame];
      v32 = sub_10011F31C(0.0, 0.0, v31);
      v34 = v33;
      [v30 frame];
      [v30 setFrame:{v32, v34}];

      [*&v25[v26] addSublayer:*&v25[v27]];
      v35 = OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_renderLayer;
      v36 = *&v25[OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_renderLayer];
      [v3 frame];
      [v36 frame];
      [v36 setFrame:?];

      v37 = *&v25[v35];
      v38 = sub_10011F31C(0.0, 0.0, MinX);
      v40 = v39;
      v41 = v37;
      [v41 frame];
      [v41 setFrame:{v38, v40}];

      [*&v25[v27] addSublayer:*&v25[v35]];
      v42 = *&v25[v35];
      v43 = *&v25[v26];
      v44 = v42;
      [v44 bounds];
      [v44 convertRect:*&v25[v26] toLayer:?];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v53 = &v43[OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_renderRect];
      *v53 = v46;
      *(v53 + 1) = v48;
      *(v53 + 2) = v50;
      *(v53 + 3) = v52;
      sub_100AC3C28();

      [v102 addSublayer:v25];
      return v25;
    }

    swift_deallocPartialClassInstance();
    v78 = objc_opt_self();
    v79 = [v78 _atomicIncrementAssertCount];
    v106[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v106);
    StaticString.description.getter();
    v80 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v81 = String._bridgeToObjectiveC()();

    v82 = [v81 lastPathComponent];

    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v86 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v79;
    v88 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v88;
    v89 = sub_1005CF04C();
    *(inited + 104) = v89;
    *(inited + 72) = v80;
    *(inited + 136) = &type metadata for String;
    v90 = sub_1000053B0();
    *(inited + 112) = v83;
    *(inited + 120) = v85;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v90;
    *(inited + 152) = 679;
    v91 = v106[0];
    *(inited + 216) = v88;
    *(inited + 224) = v89;
    *(inited + 192) = v91;
    v92 = v80;
    v93 = v91;
    v94 = static os_log_type_t.error.getter();
    sub_100005404(v86, &_mh_execute_header, v94, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v95 = static os_log_type_t.error.getter();
    sub_100005404(v86, &_mh_execute_header, v95, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v96 = swift_allocObject();
    v96[2] = 8;
    v96[3] = 0;
    v96[4] = 0;
    v96[5] = 0;
    v97 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v98 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v99 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v100 = String._bridgeToObjectiveC()();

    [v78 handleFailureInFunction:v98 file:v99 lineNumber:679 isFatal:0 format:v100 args:v97];
  }

  else
  {
    v55 = objc_opt_self();
    v56 = [v55 _atomicIncrementAssertCount];
    v106[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v106);
    StaticString.description.getter();
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v58 = String._bridgeToObjectiveC()();

    v59 = [v58 lastPathComponent];

    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v63 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v64 = swift_initStackObject();
    *(v64 + 16) = xmmword_10146CA70;
    *(v64 + 56) = &type metadata for Int32;
    *(v64 + 64) = &protocol witness table for Int32;
    *(v64 + 32) = v56;
    v65 = sub_100006370(0, &qword_1019F4D30);
    *(v64 + 96) = v65;
    v66 = sub_1005CF04C();
    *(v64 + 104) = v66;
    *(v64 + 72) = v57;
    *(v64 + 136) = &type metadata for String;
    v67 = sub_1000053B0();
    *(v64 + 112) = v60;
    *(v64 + 120) = v62;
    *(v64 + 176) = &type metadata for UInt;
    *(v64 + 184) = &protocol witness table for UInt;
    *(v64 + 144) = v67;
    *(v64 + 152) = 678;
    v68 = v106[0];
    *(v64 + 216) = v65;
    *(v64 + 224) = v66;
    *(v64 + 192) = v68;
    v69 = v57;
    v70 = v68;
    v71 = static os_log_type_t.error.getter();
    sub_100005404(v63, &_mh_execute_header, v71, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v64);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v72 = static os_log_type_t.error.getter();
    sub_100005404(v63, &_mh_execute_header, v72, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v73 = swift_allocObject();
    v73[2] = 8;
    v73[3] = 0;
    v73[4] = 0;
    v73[5] = 0;
    v74 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v75 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v76 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v77 = String._bridgeToObjectiveC()();

    [v55 handleFailureInFunction:v75 file:v76 lineNumber:678 isFatal:0 format:v77 args:v74];
  }

  return 0;
}

uint64_t sub_1008D2EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v49 = a2;
  v11 = type metadata accessor for CRLCanvasLayerAnimationProvider();
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  __chkstk_darwin(v18);
  v45 = &v45 - v19;
  __chkstk_darwin(v20);
  v46 = &v45 - v21;
  __chkstk_darwin(v22);
  v47 = &v45 - v23;
  __chkstk_darwin(v24);
  v48 = &v45 - v25;
  *v55 = a3;
  *&v55[1] = a4;
  *&v55[2] = a5;
  *&v55[3] = a6;
  v56 = 78;
  sub_1006C121C(v55, v53);
  v51[0] = xmmword_1014861A0;
  v51[1] = xmmword_1014861B0;
  v52 = 0;
  v53[33] = 0;
  v54 = 131586;
  sub_100687BC0(a1, v50);
  v26 = type metadata accessor for CRLCanvasLayerAnimation();
  v27 = &v14[v26[12]];
  v27[3] = &type metadata for CRLSpringLayerAnimation.Def;
  v27[4] = sub_1008DA198();
  v28 = swift_allocObject();
  *v27 = v28;
  sub_1008DA1EC(v51, v28 + 16);
  v14[88] = 0;
  *(v14 + 6) = 0u;
  *(v14 + 7) = 0u;
  v14[128] = 1;
  *(v14 + 136) = 0u;
  *(v14 + 152) = 0u;
  v14[168] = 1;
  *(v14 + 22) = 0;
  v14[184] = 1;
  *(v14 + 24) = 0;
  v14[200] = 1;
  UUID.init()();
  sub_100687CF4(v55);
  swift_unknownObjectWeakInit();
  v29 = v26[13];
  v30 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v31 = *(*(v30 - 8) + 56);
  v31(&v14[v29], 1, 1, v30);
  v31(&v14[v26[14]], 1, 1, v30);
  sub_100687BC0(v50, v14);
  v32 = v50[1];
  sub_100687C30(v50);
  swift_unknownObjectWeakAssign();

  *&v14[*(v12 + 28)] = 0;
  sub_1007D0604(v51);
  sub_100F99A2C(v17, 1.0);
  sub_1008DA3E4(v14, type metadata accessor for CRLCanvasLayerAnimationProvider);
  v33 = v45;
  sub_100F9A0F0(v45, 150.0);
  sub_1008DA3E4(v17, type metadata accessor for CRLCanvasLayerAnimationProvider);
  v34 = v46;
  sub_100F9A7C4(v46, 23.25);
  sub_1008DA3E4(v33, type metadata accessor for CRLCanvasLayerAnimationProvider);
  v35 = v47;
  sub_100F9AE78(v47, 1.0);
  sub_1008DA3E4(v34, type metadata accessor for CRLCanvasLayerAnimationProvider);
  v36 = v48;
  sub_1008DA37C(v35, v48, type metadata accessor for CRLCanvasLayerAnimationProvider);
  v37 = v36 + v26[12];
  v38 = *(v37 + 24);
  v39 = *(v37 + 32);
  sub_10002A948(v37, v38);
  (*(v39 + 120))(1, v38, v39);
  sub_1008DA3E4(v35, type metadata accessor for CRLCanvasLayerAnimationProvider);
  v40 = v49;
  sub_1008DA37C(v36, v49, type metadata accessor for CRLCanvasLayerAnimationProvider);
  v41 = v40 + v26[12];
  v42 = *(v41 + 24);
  v43 = *(v41 + 32);
  sub_10002A948(v41, v42);
  (*(v43 + 192))(1, v42, v43);
  return sub_1008DA3E4(v36, type metadata accessor for CRLCanvasLayerAnimationProvider);
}

void sub_1008D3304(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v12 = sub_100120414(a4, a5, a6, a7);
  v14 = v13;
  v15 = *(a1 + 24);
  [v15 visibleUnscaledRect];
  v18 = sub_100121C3C(a6, a7, v16, v17);
  v19 = sub_10011EC70(v12, v14, v18);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [v15 unobscuredScrollViewFrame];
  v28 = sub_100121EF4(0, v23, v25, v26, v27) / v23;
  v30 = v29 / v25;
  if (v30 >= v28)
  {
    v31 = v28;
  }

  else
  {
    v31 = v30;
  }

  v32 = objc_opt_self();
  [v32 begin];
  v33 = *(a1 + 8);
  v34 = *&CATransform3DIdentity.m33;
  v58[4] = *&CATransform3DIdentity.m31;
  v58[5] = v34;
  v35 = *&CATransform3DIdentity.m43;
  v58[6] = *&CATransform3DIdentity.m41;
  v58[7] = v35;
  v36 = *&CATransform3DIdentity.m13;
  v58[0] = *&CATransform3DIdentity.m11;
  v58[1] = v36;
  v37 = *&CATransform3DIdentity.m23;
  v58[2] = *&CATransform3DIdentity.m21;
  v58[3] = v37;
  [v33 setTransform:v58];
  [v15 viewScale];
  if (sub_1008D99F0(v38, v31, 0.0000001))
  {
    v39 = sub_100120414(v19, v21, v23, v25);
  }

  else
  {
    [v15 visibleUnscaledRect];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v57 = v21;
    v48 = v47;
    [v15 setViewScale:v31];
    [v15 i_viewScaleDidChange];
    [v15 setContentOffset:0 scrollOptions:{sub_100120414(v42, v44, v46, v48)}];
    v49 = sub_100120414(v19, v57, v23, v25);
    v51 = v50;
    [v15 growCanvasAsNeededToRestoreContentOffset:?];
    v40 = v51;
    v39 = v49;
  }

  [*(a1 + 16) setContentOffset:{sub_10091673C(v39, v40, v31)}];
  [v15 i_viewScrollDidChange];
  v52 = String._bridgeToObjectiveC()();
  [v33 removeAnimationForKey:v52];

  v53 = [v33 associatedBackgroundLayer];
  if (v53)
  {
    v54 = &v53[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
    v55 = *&CGAffineTransformIdentity.c;
    *v54 = *&CGAffineTransformIdentity.a;
    *(v54 + 1) = v55;
    *(v54 + 2) = *&CGAffineTransformIdentity.tx;
    if (v53[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled] == 1 && (v53[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas] & 1) == 0)
    {
      v56 = v53;
      [v53 setNeedsLayout];
      v53 = v56;
    }
  }

  [v15 i_viewScrollingEnded];
  [v15 i_viewWillBeginZooming];
  [v15 viewDidEndZooming];
  [v15 i_viewDidZoomToViewScale:1 notify:v31];
  [v32 commit];
  sub_1008D3668(a2, a3);
}

void sub_1008D3668(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v2 = type metadata accessor for CRLBasicLayerAnimation();
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v22[0] = 1065353216;
  v23 = 6;
  if (qword_1019F1E20 != -1)
  {
    swift_once();
  }

  v8 = qword_101AD7728;
  sub_1006C121C(v22, (v4 + 24));
  UUID.init()();
  sub_100687CF4(v22);
  swift_unknownObjectWeakInit();
  v9 = *(v2 + 28);
  v10 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(v2 + 32)], 1, 1, v10);
  swift_unknownObjectWeakAssign();
  *(v4 + 8) = xmmword_10146D9F0;
  *v4 = v8;
  *(v4 + 36) = 0;
  *(v4 + 74) = 131586;
  sub_1008DA37C(v4, v7, type metadata accessor for CRLBasicLayerAnimation);
  *(v7 + 2) = 0x3FC0A3D70A3D70A4;
  v12 = v8;
  sub_1008DA3E4(v4, type metadata accessor for CRLBasicLayerAnimation);
  v13 = v21;
  sub_1008DA37C(v7, v21, type metadata accessor for CRLBasicLayerAnimation);
  v22[3] = &type metadata for CRLBasicLayerAnimation.Def;
  v22[4] = sub_1005F907C();
  v22[0] = swift_allocObject();
  sub_1005F8AB8(v13, v22[0] + 16);
  *(sub_10002A948(v22, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 1;
  sub_1006BF678(v22);
  sub_1008DA3E4(v7, type metadata accessor for CRLBasicLayerAnimation);
  v14 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v15) = 0.25;
  LODWORD(v16) = 0.5;
  LODWORD(v17) = 1.0;
  v18 = [v14 initWithControlPoints:v15 :0.0 :v16 :{v17, v20}];
  v19 = sub_100C00488();

  *v13 = v19;
}

uint64_t sub_1008D3934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v70 = a2;
  v11 = sub_1005B981C(&qword_1019F57A8);
  __chkstk_darwin(v11 - 8);
  v68 = &v64 - v12;
  v13 = type metadata accessor for CRLBasicLayerAnimation();
  __chkstk_darwin(v13);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v64 - v17;
  *&v20 = __chkstk_darwin(v19).n128_u64[0];
  v69 = &v64 - v21;
  v65 = *(a1 + 8);
  v67 = a1;
  v22 = *(a1 + 24);
  [v22 visibleUnscaledRect];
  v24 = v23;
  v26 = v25;
  [v22 unobscuredScrollViewFrame];
  v28 = v27;
  v30 = v29;
  *&v71 = 1065353216;
  v77 = 6;
  if (qword_1019F1E20 != -1)
  {
    swift_once();
  }

  v31 = qword_101AD7728;
  sub_1006C121C(&v71, (v15 + 24));
  UUID.init()();
  sub_100687CF4(&v71);
  swift_unknownObjectWeakInit();
  v32 = *(v13 + 28);
  v33 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v34 = *(*(v33 - 8) + 56);
  v34(&v15[v32], 1, 1, v33);
  v35 = &v15[*(v13 + 32)];
  v66 = v34;
  v34(v35, 1, 1, v33);
  v36 = v65;
  swift_unknownObjectWeakAssign();
  *(v15 + 8) = xmmword_10146D9F0;
  *v15 = v31;
  *(v15 + 36) = 0;
  *(v15 + 74) = 131586;
  sub_1008DA37C(v15, v18, type metadata accessor for CRLBasicLayerAnimation);
  *(v18 + 2) = 0x3FC0A3D70A3D70A4;
  v37 = v31;
  sub_1008DA3E4(v15, type metadata accessor for CRLBasicLayerAnimation);
  if (qword_1019F1940 != -1)
  {
    swift_once();
  }

  v38 = sub_100120414(a3, a4, a5, a6);
  v40 = v39;
  v41 = sub_100121C3C(a5, a6, v24, v26);
  v42 = sub_10011EC70(v38, v40, v41);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = sub_100121EF4(0, v45, v47, v28, v30);
  v51 = v50 / v48;
  v52 = v49 / v46;
  if (v51 >= v52)
  {
    v53 = v52;
  }

  else
  {
    v53 = v51;
  }

  objc_storeStrong(v18, qword_101AD6B50);
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100687BC0(v67, &v71);
  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  *(v55 + 24) = v36;
  v56 = v74;
  *(v55 + 64) = v73;
  *(v55 + 80) = v56;
  *(v55 + 96) = v75;
  *(v55 + 112) = v76;
  v57 = v72;
  *(v55 + 32) = v71;
  *(v55 + 48) = v57;
  *(v55 + 120) = v42;
  *(v55 + 128) = v44;
  *(v55 + 136) = v46;
  *(v55 + 144) = v48;
  *(v55 + 152) = v53;
  v58 = v69;
  sub_1008DA37C(v18, v69, type metadata accessor for CRLBasicLayerAnimation);

  v59 = v36;
  v60 = v68;
  UUID.init()();
  v61 = (v60 + *(v33 + 20));
  *v61 = sub_1008DA248;
  v61[1] = v55;
  v66(v60, 0, 1, v33);
  sub_100687C84(v60, v58 + *(v13 + 32));
  sub_1008DA3E4(v18, type metadata accessor for CRLBasicLayerAnimation);

  v62 = v70;
  sub_1008DA37C(v58, v70, type metadata accessor for CRLBasicLayerAnimation);
  *(&v72 + 1) = &type metadata for CRLBasicLayerAnimation.Def;
  *&v73 = sub_1005F907C();
  *&v71 = swift_allocObject();
  sub_1005F8AB8(v62, v71 + 16);
  *(sub_10002A948(&v71, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 1;
  sub_1006BF678(&v71);
  return sub_1008DA3E4(v58, type metadata accessor for CRLBasicLayerAnimation);
}

uint64_t sub_1008D3E84(uint64_t a1)
{
  v16[1] = a1;
  v1 = type metadata accessor for CRLBasicLayerAnimation();
  __chkstk_darwin(v1);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v16 - v5;
  __chkstk_darwin(v7);
  v9 = v16 - v8;
  v17[0] = 0x3F80000000000000;
  v18 = 6;
  if (qword_1019F1E20 != -1)
  {
    swift_once();
  }

  v16[0] = qword_101AD7728;
  sub_1006C121C(v17, (v3 + 24));
  UUID.init()();
  sub_100687CF4(v17);
  swift_unknownObjectWeakInit();
  v10 = *(v1 + 28);
  v11 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v12 = *(*(v11 - 8) + 56);
  v12(&v3[v10], 1, 1, v11);
  v12(&v3[*(v1 + 32)], 1, 1, v11);
  swift_unknownObjectWeakAssign();
  *(v3 + 8) = xmmword_10146D9F0;
  v13 = v16[0];
  *v3 = v16[0];
  *(v3 + 36) = 0;
  *(v3 + 74) = 131586;
  sub_1008DA37C(v3, v6, type metadata accessor for CRLBasicLayerAnimation);
  *(v6 + 2) = 0x3FC0A3D70A3D70A4;
  v14 = v13;
  sub_1008DA3E4(v3, type metadata accessor for CRLBasicLayerAnimation);
  if (qword_1019F1940 != -1)
  {
    swift_once();
  }

  objc_storeStrong(v6, qword_101AD6B50);
  sub_1008DA37C(v6, v9, type metadata accessor for CRLBasicLayerAnimation);
  v17[3] = &type metadata for CRLBasicLayerAnimation.Def;
  v17[4] = sub_1005F907C();
  v17[0] = swift_allocObject();
  sub_1005F8AB8(v9, v17[0] + 16);
  *(sub_10002A948(v17, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 1;
  sub_1006BF678(v17);
  sub_1008DA3E4(v6, type metadata accessor for CRLBasicLayerAnimation);
  sub_10098045C(0, 1, 1, 0, 0, 0, 0, 0, 0);
  return sub_1008DA3E4(v9, type metadata accessor for CRLBasicLayerAnimation);
}

void sub_1008D41B4(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, uint64_t a7, void *a8, uint64_t a9)
{
  v16 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v16 - 8);
  v18 = &v50 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    static TaskPriority.userInitiated.getter();
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = a8;
    v23 = a8;
    sub_100CA64C8(0, 0, v18, &unk_1014861E0, v22);

    sub_10000CAAC(v18, &qword_1019FB750);
    v24 = objc_opt_self();
    [v24 begin];
    v25 = *(a9 + 8);
    v26 = *&CATransform3DIdentity.m33;
    v52[4] = *&CATransform3DIdentity.m31;
    v52[5] = v26;
    v27 = *&CATransform3DIdentity.m43;
    v52[6] = *&CATransform3DIdentity.m41;
    v52[7] = v27;
    v28 = *&CATransform3DIdentity.m13;
    v52[0] = *&CATransform3DIdentity.m11;
    v52[1] = v28;
    v29 = *&CATransform3DIdentity.m23;
    v52[2] = *&CATransform3DIdentity.m21;
    v52[3] = v29;
    [v25 setTransform:v52];
    v30 = *(a9 + 24);
    [v30 viewScale];
    if (sub_1008D99F0(v31, a6, 0.0000001))
    {
      v32 = sub_100120414(a2, a3, a4, a5);
    }

    else
    {
      [v30 visibleUnscaledRect];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v51 = a5;
      v41 = v40;
      [v30 setViewScale:a6];
      [v30 i_viewScaleDidChange];
      [v30 setContentOffset:0 scrollOptions:{sub_100120414(v35, v37, v39, v41)}];
      v42 = sub_100120414(a2, a3, a4, v51);
      v44 = v43;
      [v30 growCanvasAsNeededToRestoreContentOffset:?];
      v33 = v44;
      v32 = v42;
    }

    [*(a9 + 16) setContentOffset:{sub_10091673C(v32, v33, a6)}];
    [v30 i_viewScrollDidChange];
    v45 = String._bridgeToObjectiveC()();
    [v25 removeAnimationForKey:v45];

    v46 = [v25 associatedBackgroundLayer];
    if (v46)
    {
      v47 = &v46[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
      v48 = *&CGAffineTransformIdentity.c;
      *v47 = *&CGAffineTransformIdentity.a;
      *(v47 + 1) = v48;
      *(v47 + 2) = *&CGAffineTransformIdentity.tx;
      if (v46[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled] == 1 && (v46[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas] & 1) == 0)
      {
        v49 = v46;
        [v46 setNeedsLayout];
        v46 = v49;
      }
    }

    [v30 i_viewScrollingEnded];
    [v30 i_viewDidZoomToViewScale:1 notify:a6];
    [v24 commit];
  }
}

uint64_t sub_1008D45B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for Notification();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  sub_1005B981C(&unk_101A0A390);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1008D4718, 0, 0);
}

uint64_t sub_1008D4718()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = NSNotificationCenter.notifications(named:object:)();
  v0[12] = v2;

  v0[2] = v2;
  type metadata accessor for NSNotificationCenter.Notifications();
  sub_1008DA314(&qword_101A07170, &type metadata accessor for NSNotificationCenter.Notifications);

  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v3 = sub_1008DA314(&qword_1019F52A0, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1008D48AC;
  v5 = v0[10];
  v6 = v0[7];

  return dispatch thunk of AsyncIteratorProtocol.next()(v5, v6, v3);
}

uint64_t sub_1008D48AC()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[8];
    v3 = v2[9];
    v5 = v2[7];

    (*(v4 + 8))(v3, v5);
    v6 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
  }

  else
  {
    v6 = sub_1008D49EC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1008D49EC()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[5];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];

    (*(v5 + 8))(v4, v6);
    v7 = 1;
  }

  else
  {
    v17 = v0[11];
    v9 = v0[8];
    v8 = v0[9];
    v11 = v0[6];
    v10 = v0[7];
    v12 = *(v3 + 32);
    v12(v11, v1, v2);

    (*(v9 + 8))(v8, v10);
    v12(v17, v11, v2);
    v7 = 0;
  }

  v13 = v0[11];
  v14 = v0[3];
  (*(v0[5] + 56))(v13, v7, 1, v0[4]);
  sub_10000CAAC(v13, &unk_101A0A390);
  sub_1008D3E84(v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1008D4B98@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>)
{
  v310 = a4;
  v306 = type metadata accessor for CRLBasicLayerAnimation();
  __chkstk_darwin(v306);
  v308 = &v279 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v309 = &v279 - v17;
  v305 = type metadata accessor for CRLSpringLayerAnimation();
  __chkstk_darwin(v305);
  v302 = &v279 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = type metadata accessor for CRLCanvasLayerAnimationProvider();
  __chkstk_darwin(v304);
  v20 = &v279 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v300 = &v279 - v22;
  __chkstk_darwin(v23);
  v301 = &v279 - v24;
  __chkstk_darwin(v25);
  v303 = &v279 - v26;
  v27 = *(a1 + 24);
  v28 = sub_100120414(a5, a6, a7, a8);
  v30 = v29;
  [v27 visibleUnscaledRect];
  v33 = sub_100121C3C(a7, a8, v31, v32);
  v34 = sub_10011EC70(v28, v30, v33);
  v320 = v35;
  v321 = v34;
  v37 = v36;
  v39 = v38;
  [v27 visibleUnscaledRect];
  v41 = v40;
  v43 = v42;
  v46 = sub_100120414(v44, v45, v40, v42);
  v48 = v47;
  [v27 visibleUnscaledRect];
  v51 = sub_100121C3C(v41, v43, v49, v50);
  v52 = sub_10011EC70(v46, v48, v51);
  v54 = v53;
  v56 = v55;
  v58 = v57;
  [v27 unobscuredScrollViewFrame];
  v61 = sub_100121EF4(0, v56, v58, v59, v60);
  *&v317 = v56;
  v62 = v61 / v56;
  *&v316 = v58;
  v64 = v63 / v58;
  if (v64 < v62)
  {
    v62 = v64;
  }

  v315 = sub_1004C3240(v62, 0.1, 4.0);
  [v27 unobscuredScrollViewFrame];
  v67 = sub_100121EF4(0, v37, v39, v65, v66) / v37;
  v69 = v68 / v39;
  if (v69 < v67)
  {
    v67 = v69;
  }

  v70 = sub_1004C3240(v67, 0.1, 4.0);
  v71 = objc_opt_self();
  [v71 begin];
  v72 = *(a1 + 8);
  v73 = *&CATransform3DIdentity.m33;
  v313 = *&CATransform3DIdentity.m31;
  v326 = v313;
  v327 = v73;
  v299 = v73;
  v74 = *&CATransform3DIdentity.m41;
  v297 = *&CATransform3DIdentity.m43;
  v298 = v74;
  v328 = v74;
  v329 = v297;
  v75 = *&CATransform3DIdentity.m11;
  v295 = *&CATransform3DIdentity.m13;
  v296 = v75;
  v322 = v75;
  v323 = v295;
  v76 = *&CATransform3DIdentity.m21;
  v293 = *&CATransform3DIdentity.m23;
  v294 = v76;
  v324 = v76;
  v325 = v293;
  [v72 setTransform:&v322];
  [v27 viewScale];
  if (sub_1008D99F0(v77, v70, 0.0000001))
  {
    v79 = v320;
    v78 = v321;
    v80 = sub_100120414(v321, v320, v37, v39);
  }

  else
  {
    [v27 visibleUnscaledRect];
    v82 = v39;
    v83 = v37;
    v84 = v54;
    v85 = v52;
    v87 = v86;
    v319 = v70;
    v89 = v88;
    v91 = v90;
    v93 = v92;
    [v27 setViewScale:v319];
    [v27 i_viewScaleDidChange];
    v94 = v87;
    v52 = v85;
    v54 = v84;
    v37 = v83;
    v39 = v82;
    [v27 setContentOffset:0 scrollOptions:{sub_100120414(v94, v89, v91, v93)}];
    v96 = v320;
    v95 = v321;
    v97 = sub_100120414(v321, v320, v37, v39);
    v99 = v98;
    [v27 growCanvasAsNeededToRestoreContentOffset:?];
    v81 = v99;
    v80 = v97;
    v70 = v319;
    v78 = v95;
    v79 = v96;
  }

  [*(a1 + 16) setContentOffset:{sub_10091673C(v80, v81, v70)}];
  [v27 i_viewScrollDidChange];
  v100 = String._bridgeToObjectiveC()();
  [v72 removeAnimationForKey:v100];

  v101 = [v72 associatedBackgroundLayer];
  if (v101)
  {
    v102 = &v101[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
    v103 = *&CGAffineTransformIdentity.c;
    *v102 = *&CGAffineTransformIdentity.a;
    *(v102 + 1) = v103;
    *(v102 + 2) = *&CGAffineTransformIdentity.tx;
    if (v101[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled] == 1 && (v101[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas] & 1) == 0)
    {
      v104 = v101;
      [v101 setNeedsLayout];
      v101 = v104;
    }
  }

  v290 = v72;
  [v27 i_viewScrollingEnded];
  [v27 i_viewWillBeginZooming];
  [v27 viewDidEndZooming];
  v105 = v70;
  [v27 i_viewDidZoomToViewScale:1 notify:v70];
  [v71 commit];
  v291 = v54;
  v292 = v52;
  [v27 convertUnscaledToBoundsRect:{v52, v54, *&v317, *&v316}];
  v285 = v106;
  v314 = v107;
  v288 = v109;
  v289 = v108;
  [v27 convertUnscaledToBoundsRect:{v78, v79, v37, v39}];
  v286 = v111;
  v287 = v110;
  v113 = v112;
  v115 = v114;
  v116 = *&a2[OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_coordinateSpaceLayer];
  [v116 frame];
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v124 = v123;
  v307 = a3;
  *&v311 = *(a3 + OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_coordinateSpaceLayer);
  [v311 frame];
  v392.origin.x = v125;
  v392.origin.y = v126;
  v392.size.width = v127;
  v392.size.height = v128;
  v320 = v120;
  v321 = v118;
  v388.origin.x = v118;
  v388.origin.y = v120;
  v318 = v124;
  v319 = v122;
  v388.size.width = v122;
  v388.size.height = v124;
  v129 = CGRectEqualToRect(v388, v392);
  v312 = v116;
  if (!v129)
  {
    v283 = a1;
    v284 = a2;
    v282 = objc_opt_self();
    v130 = [v282 _atomicIncrementAssertCount];
    *&v322 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v322);
    StaticString.description.getter();
    v281 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v131 = String._bridgeToObjectiveC()();

    v132 = [v131 lastPathComponent];

    v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v280 = v134;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v135 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v136 = swift_allocObject();
    *(v136 + 16) = xmmword_10146CA70;
    *(v136 + 56) = &type metadata for Int32;
    *(v136 + 64) = &protocol witness table for Int32;
    *(v136 + 32) = v130;
    v137 = sub_100006370(0, &qword_1019F4D30);
    *(v136 + 96) = v137;
    v138 = sub_1005CF04C();
    *(v136 + 104) = v138;
    v139 = v281;
    *(v136 + 72) = v281;
    *(v136 + 136) = &type metadata for String;
    v140 = sub_1000053B0();
    v141 = v280;
    *(v136 + 112) = v133;
    *(v136 + 120) = v141;
    *(v136 + 176) = &type metadata for UInt;
    *(v136 + 184) = &protocol witness table for UInt;
    *(v136 + 144) = v140;
    *(v136 + 152) = 250;
    v142 = v322;
    *(v136 + 216) = v137;
    *(v136 + 224) = v138;
    *(v136 + 192) = v142;
    v143 = v139;
    v144 = v142;
    v145 = static os_log_type_t.error.getter();
    sub_100005404(v135, &_mh_execute_header, v145, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v136);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v146 = static os_log_type_t.error.getter();
    sub_100005404(v135, &_mh_execute_header, v146, "Snapshot layers have different frames! This is unexpected; math may be incorrect.", 81, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v147 = swift_allocObject();
    v147[2] = 8;
    v147[3] = 0;
    v147[4] = 0;
    v147[5] = 0;
    v148 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v149 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v150 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v151 = String._bridgeToObjectiveC()();

    [v282 handleFailureInFunction:v149 file:v150 lineNumber:250 isFatal:0 format:v151 args:v148];

    a1 = v283;
    a2 = v284;
    v116 = v312;
  }

  v152 = v105 / v315;
  v153 = v318;
  v154 = v319;
  v315 = v152 * v319;
  v155 = sub_100120414(v285, v314, v289, v288);
  v156 = v155 - sub_100120414(v287, v113, v115, v286);
  [v27 unobscuredScrollViewFrame];
  v157 = *&v317;
  v158 = *&v316;
  v161 = sub_100121EF4(0, *&v317, *&v316, v159, v160) / v157;
  v163 = v162 / v158;
  if (v163 >= v161)
  {
    v164 = v161;
  }

  else
  {
    v164 = v163;
  }

  v165 = sub_100120414(v321, v320, v154, v153);
  v167 = sub_10011F334(v165, v166, v156);
  v169 = sub_10011EC70(v167, v168, v315);
  v171 = v170;
  v314 = v173;
  v315 = v172;
  v174 = v290;
  [v290 minimumPinchViewScale];
  v176 = v175;
  [v174 maximumPinchViewScale];
  v178 = sub_1004C3240(v164, v176, v177);
  v179 = sub_100120414(v292, v291, v157, v158);
  [a2 bounds];
  v182 = v181;
  v184 = v183;
  v186 = v185;
  v188 = v187;
  sub_1001217FC(v181, v183, v185, v187);
  v291 = v171;
  v292 = v169;
  sub_100121740(v169, v171, v315, v314, v189, v190, v191, v192);
  v194 = v193;
  v196 = v195;
  v198 = v197;
  v200 = v199;
  [a2 convertRect:v116 toLayer:{v182, v184, v186, v188}];
  v202 = v201;
  v204 = v203;
  v205 = v198;
  v207 = v206;
  v208 = v200;
  v210 = v209;
  [a2 convertRect:v116 toLayer:{v194, v196, v205, v208}];
  v212 = v211;
  v214 = v213;
  v216 = v215;
  v218 = v217;
  v389.origin.x = v207;
  v389.origin.y = v210;
  v389.size.width = v202;
  v389.size.height = v204;
  v393.origin.x = v212;
  v393.origin.y = v214;
  v393.size.width = v216;
  v393.size.height = v218;
  if (CGRectIntersectsRect(v389, v393))
  {
    v390.origin.x = v207;
    v390.origin.y = v210;
    v390.size.width = v202;
    v390.size.height = v204;
    v394.origin.x = v212;
    v394.origin.y = v214;
    v394.size.width = v216;
    v394.size.height = v218;
    v391 = CGRectIntersection(v390, v394);
    sub_1001217FC(v391.origin.x, v391.origin.y, v391.size.width, v391.size.height);
    sub_100121740(v207, v210, v202, v204, v219, v220, v221, v222);
    v224 = v223;
    v226 = v225;
    v228 = v227;
    v230 = v229;
    v231 = (v311 + OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_clippingRect);
    *v231 = v223;
    v231[1] = v225;
    v231[2] = v227;
    v231[3] = v229;
    sub_100AC3C28();
    v232 = &v116[OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_clippingRect];
    *v232 = v224;
    *(v232 + 1) = v226;
    *(v232 + 2) = v228;
    *(v232 + 3) = v230;
    sub_100AC3C28();
    v116[OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_invertClipping] = 1;
    sub_100AC3C28();
  }

  sub_1005B981C(&unk_101A23620);
  v233 = swift_allocObject();
  *(v233 + 16) = xmmword_10146D2A0;
  v359 = v384;
  v360 = v385;
  v361 = v386;
  v362 = v387;
  v355 = v380;
  v356 = v381;
  v357 = v382;
  v358 = v383;
  v367 = v313;
  v368 = v299;
  v369 = v298;
  v370 = v297;
  v363 = v296;
  v364 = v295;
  v365 = v294;
  v366 = v293;
  v348 = v294;
  v349 = v293;
  v346 = v296;
  v347 = v295;
  v352 = v298;
  v353 = v297;
  v350 = v313;
  v351 = v299;
  v340 = v382;
  v341 = v383;
  v338 = v380;
  v339 = v381;
  v344 = v386;
  v345 = v387;
  v354 = 52;
  v342 = v384;
  v343 = v385;
  sub_1006C121C(&v338, &v324 + 8);
  v316 = xmmword_1014861A0;
  v313 = xmmword_1014861B0;
  v322 = xmmword_1014861A0;
  v323 = xmmword_1014861B0;
  *&v324 = 0;
  v336 = 0;
  v317 = 0x20202uLL;
  v337 = 131586;
  sub_100687BC0(a1, &v371);
  v234 = type metadata accessor for CRLCanvasLayerAnimation();
  v235 = &v20[v234[12]];
  v235[3] = &type metadata for CRLSpringLayerAnimation.Def;
  v235[4] = sub_1008DA198();
  v236 = swift_allocObject();
  *v235 = v236;
  sub_1008DA1EC(&v322, v236 + 16);
  v20[88] = 0;
  *(v20 + 6) = 0u;
  *(v20 + 7) = 0u;
  v20[128] = 1;
  *(v20 + 136) = 0u;
  *(v20 + 152) = 0u;
  v20[168] = 1;
  *(v20 + 22) = 0;
  v20[184] = 1;
  *(v20 + 24) = 0;
  v20[200] = 1;
  UUID.init()();
  sub_100687CF4(&v338);
  swift_unknownObjectWeakInit();
  v237 = v234[13];
  v238 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v239 = *(*(v238 - 8) + 56);
  v239(&v20[v237], 1, 1, v238);
  v239(&v20[v234[14]], 1, 1, v238);
  sub_100687BC0(&v371, v20);
  v240 = *(&v371 + 1);
  sub_100687C30(&v371);
  swift_unknownObjectWeakAssign();

  v241 = v304;
  *&v20[*(v304 + 20)] = 0;
  sub_1007D0604(&v322);
  v242 = v300;
  sub_100F99A2C(v300, 1.0);
  sub_1008DA3E4(v20, type metadata accessor for CRLCanvasLayerAnimationProvider);
  v243 = v301;
  sub_100F9A0F0(v301, 150.0);
  sub_1008DA3E4(v242, type metadata accessor for CRLCanvasLayerAnimationProvider);
  v244 = v303;
  sub_100F9A7C4(v303, 23.25);
  sub_1008DA3E4(v243, type metadata accessor for CRLCanvasLayerAnimationProvider);
  *(v233 + 56) = v241;
  *(v233 + 64) = &off_10188FCB8;
  v245 = sub_10002C58C((v233 + 32));
  sub_100F9AE78(v245, 1.0);
  sub_1008DA3E4(v244, type metadata accessor for CRLCanvasLayerAnimationProvider);
  v246 = v305;
  *(v233 + 96) = v305;
  *(v233 + 104) = &off_1018B87B8;
  v247 = sub_10002C58C((v233 + 72));
  sub_1008DA35C(&v371);
  v344 = v377;
  v345 = v378;
  v340 = v373;
  v341 = v374;
  v342 = v375;
  v343 = v376;
  v338 = v371;
  v339 = v372;
  v332 = v377;
  v333 = v378;
  v328 = v373;
  v329 = v374;
  v330 = v375;
  v331 = v376;
  LOBYTE(v346) = v379;
  v249 = v320;
  v248 = v321;
  *&v322 = v321;
  *(&v322 + 1) = v320;
  v251 = v318;
  v250 = v319;
  *&v323 = v319;
  *(&v323 + 1) = v318;
  v253 = v291;
  v252 = v292;
  *&v324 = v292;
  *(&v324 + 1) = v291;
  v255 = v314;
  v254 = v315;
  *&v325 = v315;
  *(&v325 + 1) = v314;
  v334 = v379;
  v326 = v371;
  v327 = v372;
  v335 = 76;
  v256 = v302;
  sub_1006C121C(&v322, (v302 + 40));
  UUID.init()();
  sub_100687CF4(&v322);
  swift_unknownObjectWeakInit();
  v239((v256 + *(v246 + 28)), 1, 1, v238);
  v239((v256 + *(v246 + 32)), 1, 1, v238);
  swift_unknownObjectWeakAssign();
  *(v256 + 32) = 0;
  v257 = v313;
  *v256 = v316;
  *(v256 + 16) = v257;
  *(v256 + 304) = 0;
  *(v256 + 312) = v317;
  sub_1008DA37C(v256, v247, type metadata accessor for CRLSpringLayerAnimation);
  v247[2] = 0x3FF0000000000000;
  sub_1008DA3E4(v256, type metadata accessor for CRLSpringLayerAnimation);
  v247[3] = 0x4062C00000000000;
  v311 = xmmword_1014861C0;
  *v247 = xmmword_1014861C0;
  *(v233 + 136) = v246;
  *(v233 + 144) = &off_1018B87B8;
  v258 = sub_10002C58C((v233 + 112));
  *&v322 = v248;
  *(&v322 + 1) = v249;
  *&v323 = v250;
  *(&v323 + 1) = v251;
  *&v324 = v252;
  *(&v324 + 1) = v253;
  *&v325 = v254;
  *(&v325 + 1) = v255;
  v332 = v344;
  v333 = v345;
  v334 = v346;
  v328 = v340;
  v329 = v341;
  v330 = v342;
  v331 = v343;
  v326 = v338;
  v327 = v339;
  v335 = 76;
  sub_1006C121C(&v322, v256 + 40);
  UUID.init()();
  sub_100687CF4(&v322);
  swift_unknownObjectWeakInit();
  v239((v256 + *(v246 + 28)), 1, 1, v238);
  v239((v256 + *(v246 + 32)), 1, 1, v238);
  swift_unknownObjectWeakAssign();
  *(v256 + 32) = 0;
  v259 = v313;
  *v256 = v316;
  *(v256 + 16) = v259;
  *(v256 + 304) = 0;
  *(v256 + 312) = v317;
  sub_1008DA37C(v256, v258, type metadata accessor for CRLSpringLayerAnimation);
  v258[2] = 0x3FF0000000000000;
  sub_1008DA3E4(v256, type metadata accessor for CRLSpringLayerAnimation);
  v258[3] = 0x4062C00000000000;
  *v258 = v311;
  v260 = v306;
  *(v233 + 176) = v306;
  *(v233 + 184) = &off_1018816E0;
  v261 = sub_10002C58C((v233 + 152));
  *&v322 = 1065353216;
  v335 = 6;
  if (qword_1019F1E20 != -1)
  {
    swift_once();
  }

  v262 = qword_101AD7728;
  v263 = v308;
  sub_1006C121C(&v322, (v308 + 24));
  UUID.init()();
  sub_100687CF4(&v322);
  swift_unknownObjectWeakInit();
  v239((v263 + *(v260 + 28)), 1, 1, v238);
  v239((v263 + *(v260 + 32)), 1, 1, v238);
  swift_unknownObjectWeakAssign();
  *(v263 + 8) = xmmword_10146D9F0;
  *v263 = v262;
  *(v263 + 288) = 0;
  *(v263 + 296) = v317;
  v264 = v309;
  sub_1008DA37C(v263, v309, type metadata accessor for CRLBasicLayerAnimation);
  *(v264 + 16) = 0x3FC0A3D70A3D70A4;
  v265 = v262;
  sub_1008DA3E4(v263, type metadata accessor for CRLBasicLayerAnimation);
  sub_1008DA37C(v264, v261, type metadata accessor for CRLBasicLayerAnimation);
  *(&v323 + 1) = &type metadata for CRLBasicLayerAnimation.Def;
  *&v324 = sub_1005F907C();
  *&v322 = swift_allocObject();
  sub_1005F8AB8(v261, v322 + 16);
  *(sub_10002A948(&v322, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 1;
  sub_1006BF678(&v322);
  sub_1008DA3E4(v264, type metadata accessor for CRLBasicLayerAnimation);
  v266 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v267) = 0.25;
  LODWORD(v268) = 0.5;
  LODWORD(v269) = 1.0;
  v270 = [v266 initWithControlPoints:v267 :0.0 :v268 :v269];
  v271 = sub_100C00488();

  v272 = *v261;
  *v261 = v271;

  v273 = sub_100789704(v233, 0.0);
  v275 = v274;
  v276 = v273;
  swift_setDeallocating();
  sub_1005B981C(&unk_101A09F70);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  v278 = v310;
  *v310 = v275;
  v278[1] = v276;
  return result;
}

uint64_t sub_1008D6114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v171 = a2;
  v167 = type metadata accessor for CRLCanvasLayerAnimationProvider();
  __chkstk_darwin(v167);
  v154 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v168 = &v149 - v13;
  __chkstk_darwin(v14);
  v169 = &v149 - v15;
  __chkstk_darwin(v16);
  v170 = &v149 - v17;
  v18 = type metadata accessor for CRLBasicLayerAnimation();
  __chkstk_darwin(v18);
  v20 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v163 = &v149 - v22;
  __chkstk_darwin(v23);
  v164 = &v149 - v24;
  __chkstk_darwin(v25);
  v165 = &v149 - v26;
  __chkstk_darwin(v27);
  v166 = &v149 - v28;
  v29 = *(a1 + 24);
  v30 = sub_100120414(a3, a4, a5, a6);
  v32 = v31;
  [v29 visibleUnscaledRect];
  v35 = sub_100121C3C(a5, a6, v33, v34);
  v152 = sub_10011EC70(v30, v32, v35);
  v153 = v36;
  v38 = v37;
  v40 = v39;
  [v29 visibleUnscaledRect];
  v42 = v41;
  v44 = v43;
  v47 = sub_100120414(v45, v46, v41, v43);
  v49 = v48;
  [v29 visibleUnscaledRect];
  v52 = sub_100121C3C(v42, v44, v50, v51);
  v53 = sub_10011EC70(v47, v49, v52);
  v55 = v54;
  v57 = v56;
  v59 = v58;
  [v29 unobscuredScrollViewFrame];
  v62 = sub_100121EF4(0, v57, v59, v60, v61) / v57;
  v64 = v63 / v59;
  if (v64 < v62)
  {
    v62 = v64;
  }

  [v29 unobscuredScrollViewFrame];
  v67 = sub_100121EF4(0, v38, v40, v65, v66) / v38;
  v69 = v68 / v40;
  if (v69 < v67)
  {
    v67 = v69;
  }

  v70 = sub_1004C3240(v67, 0.1, 4.0);
  v71 = objc_opt_self();
  [v71 begin];
  v172 = v71;
  [v71 begin];
  v72 = *(a1 + 8);
  v74 = *&CATransform3DIdentity.m31;
  v73 = *&CATransform3DIdentity.m33;
  v75 = *&CATransform3DIdentity.m43;
  v161 = *&CATransform3DIdentity.m41;
  v162 = v73;
  v180 = v73;
  v181 = v161;
  v182 = v75;
  v76 = *&CATransform3DIdentity.m13;
  v159 = *&CATransform3DIdentity.m11;
  v160 = v75;
  v175 = v159;
  v176 = v76;
  v157 = v76;
  v158 = v74;
  v77 = *&CATransform3DIdentity.m21;
  v155 = *&CATransform3DIdentity.m23;
  v156 = v77;
  v177 = v77;
  v178 = v155;
  v179 = v74;
  v173 = v72;
  [v72 setTransform:&v175];
  [v29 viewScale];
  if (sub_1008D99F0(v78, v70, 0.0000001))
  {
    v79 = sub_100120414(v152, v153, v38, v40);
  }

  else
  {
    [v29 visibleUnscaledRect];
    v150 = v40;
    v151 = v53;
    v82 = v81;
    v83 = v59;
    v85 = v84;
    *&v149 = v38;
    v86 = v70;
    v88 = v87;
    v89 = v57;
    v90 = v55;
    v92 = v91;
    [v29 setViewScale:v86];
    [v29 i_viewScaleDidChange];
    v93 = v85;
    v59 = v83;
    v94 = v92;
    v55 = v90;
    v57 = v89;
    [v29 setContentOffset:0 scrollOptions:{sub_100120414(v82, v93, v88, v94)}];
    v95 = sub_100120414(v152, v153, *&v149, v150);
    v97 = v96;
    [v29 growCanvasAsNeededToRestoreContentOffset:?];
    v80 = v97;
    v53 = v151;
    v79 = v95;
    v70 = v86;
  }

  [*(a1 + 16) setContentOffset:{sub_10091673C(v79, v80, v70)}];
  [v29 i_viewScrollDidChange];
  v98 = String._bridgeToObjectiveC()();
  v99 = v173;
  [v173 removeAnimationForKey:v98];

  v100 = [v99 associatedBackgroundLayer];
  v101 = v172;
  if (v100)
  {
    v102 = &v100[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
    v103 = *&CGAffineTransformIdentity.c;
    *v102 = *&CGAffineTransformIdentity.a;
    *(v102 + 1) = v103;
    *(v102 + 2) = *&CGAffineTransformIdentity.tx;
    if (v100[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled] == 1 && (v100[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas] & 1) == 0)
    {
      v104 = v100;
      [v100 setNeedsLayout];
      v100 = v104;
      v101 = v172;
    }
  }

  [v29 i_viewScrollingEnded];
  [v29 i_viewDidZoomToViewScale:1 notify:v70];
  [v101 commit];
  [v29 unobscuredScrollViewFrame];
  v107 = sub_100121EF4(0, v57, v59, v105, v106) / v57;
  v109 = v108 / v59;
  if (v109 >= v107)
  {
    v110 = v107;
  }

  else
  {
    v110 = v109;
  }

  v111 = v173;
  [v173 minimumPinchViewScale];
  v113 = v112;
  [v111 maximumPinchViewScale];
  v115 = sub_1004C3240(v110, v113, v114);
  v116 = sub_100120414(v53, v55, v57, v59);
  sub_1009168E8(&v196, v115, v116, v117);
  v208 = v200;
  v209 = v201;
  v210 = v202;
  v211 = v203;
  v204 = v196;
  v205 = v197;
  v206 = v198;
  v207 = v199;
  v218 = v202;
  v219 = v203;
  v216 = v200;
  v217 = v201;
  v214 = v198;
  v215 = v199;
  v212 = v196;
  v213 = v197;
  v175 = v196;
  v176 = v197;
  v177 = v198;
  v180 = v201;
  v181 = v202;
  v189 = v202;
  v190 = v203;
  v187 = v200;
  v188 = v201;
  v178 = v199;
  v179 = v200;
  v185 = v198;
  v186 = v199;
  v183 = v196;
  v184 = v197;
  v182 = v203;
  v191 = 52;
  v150 = *&a1;
  if (qword_1019F1E20 != -1)
  {
    swift_once();
  }

  v118 = qword_101AD7728;
  sub_1006C121C(&v175, (v20 + 24));
  UUID.init()();
  sub_100687CF4(&v175);
  swift_unknownObjectWeakInit();
  v119 = *(v18 + 28);
  *&v120 = COERCE_DOUBLE(type metadata accessor for CRLLayerAnimationDisplayLink.Handler());
  v151 = *&v120;
  v121 = *(v120 - 8);
  v122 = v18;
  v123 = *(v121 + 56);
  v152 = *&v123;
  *&v153 = v121 + 56;
  v123(&v20[v119], 1, 1, v120);
  v123(&v20[*(v122 + 32)], 1, 1, v120);
  v124 = v173;
  swift_unknownObjectWeakAssign();
  *(&v125 + 1) = 0x3FC999999999999ALL;
  *(v20 + 8) = xmmword_10146D9F0;
  *v20 = v118;
  *(v20 + 36) = 0;
  *&v125 = 131586;
  v149 = v125;
  *(v20 + 74) = 131586;
  v126 = v163;
  sub_1008DA37C(v20, v163, type metadata accessor for CRLBasicLayerAnimation);
  *(v126 + 16) = 0;
  v127 = v118;
  sub_1008DA3E4(v20, type metadata accessor for CRLBasicLayerAnimation);
  v128 = v124;
  v129 = v164;
  sub_1008DA37C(v126, v164, type metadata accessor for CRLBasicLayerAnimation);
  *(&v176 + 1) = &type metadata for CRLBasicLayerAnimation.Def;
  v130 = sub_1005F907C();
  *&v177 = v130;
  *&v175 = swift_allocObject();
  sub_1005F8AB8(v129, v175 + 16);
  *(sub_10002A948(&v175, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 0;
  sub_1006BF678(&v175);
  sub_1008DA3E4(v126, type metadata accessor for CRLBasicLayerAnimation);
  v131 = v165;
  sub_1008DA37C(v129, v165, type metadata accessor for CRLBasicLayerAnimation);
  *(&v176 + 1) = &type metadata for CRLBasicLayerAnimation.Def;
  *&v177 = v130;
  *&v175 = swift_allocObject();
  sub_1005F8AB8(v131, v175 + 16);
  *(sub_10002A948(&v175, &type metadata for CRLBasicLayerAnimation.Def) + 298) = 1;
  sub_1006BF678(&v175);
  sub_1008DA3E4(v129, type metadata accessor for CRLBasicLayerAnimation);
  v132 = v166;
  sub_1008DA37C(v131, v166, type metadata accessor for CRLBasicLayerAnimation);
  *(&v176 + 1) = &type metadata for CRLBasicLayerAnimation.Def;
  *&v177 = v130;
  *&v175 = swift_allocObject();
  sub_1005F8AB8(v132, v175 + 16);
  v133 = sub_10002A948(&v175, &type metadata for CRLBasicLayerAnimation.Def);
  v134 = *(v133 + 288);
  *(v133 + 288) = kCAFillModeBoth;
  v135 = kCAFillModeBoth;

  sub_1006BF678(&v175);
  sub_1008DA3E4(v131, type metadata accessor for CRLBasicLayerAnimation);
  sub_100915B84(&v175);
  v136 = CACurrentMediaTime();
  v137 = sub_1006BFEF0(&v175, v136);
  sub_10000CAAC(&v175, &unk_101A09F80);
  [v128 addAnimation:v137 forKey:0];
  [v172 commit];
  v224 = v200;
  v225 = v201;
  v226 = v202;
  v227 = v203;
  v220 = v196;
  v221 = v197;
  v222 = v198;
  v223 = v199;
  v232 = v158;
  v233 = v162;
  v234 = v161;
  v235 = v160;
  v228 = v159;
  v229 = v157;
  v230 = v156;
  v231 = v155;
  v194[10] = v156;
  v194[11] = v155;
  v194[8] = v159;
  v194[9] = v157;
  v194[2] = v198;
  v194[3] = v199;
  v194[0] = v196;
  v194[1] = v197;
  v194[6] = v202;
  v194[7] = v203;
  v194[4] = v200;
  v194[5] = v201;
  v194[14] = v161;
  v194[15] = v160;
  v194[12] = v158;
  v194[13] = v162;
  v195 = 52;
  sub_1006C121C(v194, &v177 + 8);
  v175 = xmmword_1014861A0;
  v176 = xmmword_1014861B0;
  *&v177 = 0;
  v192 = 0;
  v193 = v149;
  sub_100687BC0(*&v150, v174);
  v138 = type metadata accessor for CRLCanvasLayerAnimation();
  v139 = v154;
  v140 = &v154[v138[12]];
  v140[3] = &type metadata for CRLSpringLayerAnimation.Def;
  v140[4] = sub_1008DA198();
  v141 = swift_allocObject();
  *v140 = v141;
  sub_1008DA1EC(&v175, v141 + 16);
  *(v139 + 88) = 0;
  *(v139 + 96) = 0u;
  *(v139 + 112) = 0u;
  *(v139 + 128) = 1;
  *(v139 + 136) = 0u;
  *(v139 + 152) = 0u;
  *(v139 + 168) = 1;
  *(v139 + 176) = 0;
  *(v139 + 184) = 1;
  *(v139 + 192) = 0;
  *(v139 + 200) = 1;
  UUID.init()();
  sub_100687CF4(v194);
  swift_unknownObjectWeakInit();
  v143 = v151;
  v142 = v152;
  (*&v152)(v139 + v138[13], 1, 1, COERCE_DOUBLE(*&v151));
  (*&v142)(v139 + v138[14], 1, 1, COERCE_DOUBLE(*&v143));
  sub_100687BC0(v174, v139);
  v144 = v174[1];
  sub_100687C30(v174);
  swift_unknownObjectWeakAssign();

  *(v139 + *(v167 + 20)) = 0;
  sub_1007D0604(&v175);
  v145 = v168;
  sub_100F99A2C(v168, 1.0);
  sub_1008DA3E4(v139, type metadata accessor for CRLCanvasLayerAnimationProvider);
  v146 = v169;
  sub_100F9A0F0(v169, 150.0);
  sub_1008DA3E4(v145, type metadata accessor for CRLCanvasLayerAnimationProvider);
  v147 = v170;
  sub_100F9A7C4(v170, 23.25);
  sub_1008DA3E4(v146, type metadata accessor for CRLCanvasLayerAnimationProvider);
  sub_100F9AE78(v171, 1.0);

  sub_1008DA3E4(v147, type metadata accessor for CRLCanvasLayerAnimationProvider);
  return sub_1008DA3E4(v132, type metadata accessor for CRLBasicLayerAnimation);
}

uint64_t sub_1008D6DE4@<X0>(CGFloat a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v279 = a2;
  v277 = a3;
  v12 = type metadata accessor for CRLBasicLayerAnimation();
  __chkstk_darwin(v12);
  v274 = &v248 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v275 = &v248 - v15;
  __chkstk_darwin(v16);
  v276 = &v248 - v17;
  v271 = type metadata accessor for CRLSpringLayerAnimation();
  __chkstk_darwin(v271);
  v270 = &v248 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v272 = &v248 - v20;
  v269 = type metadata accessor for CRLCanvasLayerAnimationProvider();
  __chkstk_darwin(v269);
  *&v22 = &v248 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v263 = &v248 - v24;
  __chkstk_darwin(v25);
  v264 = &v248 - v26;
  __chkstk_darwin(v27);
  v265 = &v248 - v28;
  __chkstk_darwin(v29);
  v266 = &v248 - v30;
  __chkstk_darwin(v31);
  v267 = &v248 - v32;
  __chkstk_darwin(v33);
  v268 = &v248 - v34;
  v35 = *(*&a1 + 24);
  v36 = sub_100120414(a4, a5, a6, a7);
  v38 = v37;
  [v35 visibleUnscaledRect];
  v41 = sub_100121C3C(a6, a7, v39, v40);
  v280 = sub_10011EC70(v36, v38, v41);
  *&v278 = v42;
  v44 = v43;
  v46 = v45;
  [v35 visibleUnscaledRect];
  v48 = v47;
  v50 = v49;
  v53 = sub_100120414(v51, v52, v47, v49);
  v55 = v54;
  [v35 visibleUnscaledRect];
  v58 = sub_100121C3C(v48, v50, v56, v57);
  v59 = sub_10011EC70(v53, v55, v58);
  v61 = v60;
  v63 = v62;
  v261 = v64;
  *&v262 = v59;
  v65 = sub_100120414(v59, v64, v60, v62);
  v67 = sub_10011EC70(v65, v66, v44);
  v256 = v68;
  v257 = v67;
  v70 = v69;
  v72 = v71;
  [v35 unobscuredScrollViewFrame];
  v75 = sub_100121EF4(0, v61, v63, v73, v74);
  v259 = v63;
  v260 = *&v61;
  v76 = v75 / v61;
  v78 = v77 / v63;
  if (v78 < v76)
  {
    v76 = v78;
  }

  v255 = sub_1004C3240(v76, 0.1, 4.0);
  [v35 unobscuredScrollViewFrame];
  v81 = sub_100121EF4(0, v70, v72, v79, v80) / v70;
  v83 = v82 / v72;
  if (v83 < v81)
  {
    v81 = v83;
  }

  v84 = sub_1004C3240(v81, 0.1, 4.0);
  v258 = v35;
  [v35 unobscuredScrollViewFrame];
  v87 = sub_100121EF4(0, v44, v46, v85, v86) / v44;
  v89 = v88 / v46;
  if (v89 < v87)
  {
    v87 = v89;
  }

  v90 = sub_1004C3240(v87, 0.1, 4.0);
  sub_1005B981C(&qword_1019F54E0);
  *&v91 = COERCE_DOUBLE(swift_allocObject());
  *(v91 + 16) = xmmword_10146BDE0;
  v92 = Double.description.getter();
  v94 = v93;
  *(v91 + 56) = &type metadata for String;
  v95 = sub_1000053B0();
  *(v91 + 32) = v92;
  *&v281 = v91 + 32;
  *(v91 + 64) = v95;
  *(v91 + 40) = v94;
  v96 = Double.description.getter();
  *(v91 + 96) = &type metadata for String;
  *(v91 + 104) = v95;
  *(v91 + 72) = v96;
  *(v91 + 80) = v97;
  v98 = sub_1007C87EC(v84, v90);
  v273 = v12;
  if (v98)
  {

    v99 = v279;
    goto LABEL_37;
  }

  v250 = a1;
  v251 = v22;
  v249 = objc_opt_self();
  LODWORD(v252) = [v249 _atomicIncrementAssertCount];
  *&v283 = [objc_allocWithZone(NSString) init];
  sub_100604538(v91, &v283);
  StaticString.description.getter();
  v100 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v101 = String._bridgeToObjectiveC()();

  v102 = [v101 lastPathComponent];

  v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v105 = v104;

  v106 = v91;
  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v107 = static OS_os_log.crlAssert;
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_10146CA70;
  *(v108 + 56) = &type metadata for Int32;
  *(v108 + 64) = &protocol witness table for Int32;
  *(v108 + 32) = LODWORD(v252);
  v109 = sub_100006370(0, &qword_1019F4D30);
  *(v108 + 96) = v109;
  v110 = sub_1005CF04C();
  *(v108 + 72) = v100;
  *(v108 + 136) = &type metadata for String;
  *(v108 + 144) = v95;
  *(v108 + 104) = v110;
  *(v108 + 112) = v103;
  *(v108 + 120) = v105;
  *(v108 + 176) = &type metadata for UInt;
  *(v108 + 184) = &protocol witness table for UInt;
  *(v108 + 152) = 416;
  v111 = v283;
  *(v108 + 216) = v109;
  *(v108 + 224) = v110;
  *(v108 + 192) = v111;
  v112 = v100;
  v113 = v111;
  v114 = static os_log_type_t.error.getter();
  sub_100005404(v107, &_mh_execute_header, v114, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v108);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v115 = static os_log_type_t.error.getter();
  sub_100005404(v107, &_mh_execute_header, v115, "From (%@) and to (%@) view scale values should be nearly the same for .scaleAndScroll animation", 95, 2, v106);

  type metadata accessor for __VaListBuilder();
  v116 = swift_allocObject();
  v116[2] = 8;
  v116[3] = 0;
  v117 = v116 + 3;
  v116[4] = 0;
  v116[5] = 0;
  v252 = *&v106;
  v118 = *(v106 + 16);
  if (!v118)
  {
LABEL_36:
    v136 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v137 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v138 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v139 = String._bridgeToObjectiveC()();

    [v249 handleFailureInFunction:v137 file:v138 lineNumber:416 isFatal:0 format:v139 args:v136];

    v99 = v279;
    a1 = v250;
    v22 = v251;
LABEL_37:
    v140 = objc_opt_self();
    [v140 begin];
    v141 = *&CATransform3DIdentity.m31;
    v142 = *&CATransform3DIdentity.m41;
    v143 = *&CATransform3DIdentity.m43;
    v288 = *&CATransform3DIdentity.m33;
    v289 = v142;
    v290 = v143;
    v144 = *&CATransform3DIdentity.m13;
    v283 = *&CATransform3DIdentity.m11;
    v284 = v144;
    v145 = *&CATransform3DIdentity.m23;
    v285 = *&CATransform3DIdentity.m21;
    v146 = *(*&a1 + 8);
    v286 = v145;
    v287 = v141;
    [v146 setTransform:&v283];
    v147 = v258;
    [v258 viewScale];
    if (sub_1008D99F0(v148, v90, 0.0000001))
    {
      v149 = *&v278;
      v150 = sub_100120414(*&v280, *&v278, v44, v46);
      v152 = v44;
      v153 = v46;
    }

    else
    {
      [v147 visibleUnscaledRect];
      *&v281 = v72;
      v252 = v70;
      v154 = *&v278;
      v155 = v90;
      v157 = v156;
      v159 = v158;
      v161 = v160;
      v163 = v162;
      [v147 setViewScale:v155];
      [v147 i_viewScaleDidChange];
      [v147 setContentOffset:0 scrollOptions:{sub_100120414(v157, v159, v161, v163)}];
      v152 = v44;
      v153 = v46;
      v164 = sub_100120414(*&v280, v154, v44, v46);
      v166 = v165;
      [v147 growCanvasAsNeededToRestoreContentOffset:?];
      v151 = v166;
      v150 = v164;
      v90 = v155;
      v149 = v154;
      v70 = v252;
      v72 = *&v281;
    }

    [*(*&a1 + 16) setContentOffset:{sub_10091673C(v150, v151, v90)}];
    [v147 i_viewScrollDidChange];
    [v147 i_viewWillBeginZooming];
    [v147 viewDidEndZooming];
    [v140 commit];
    [v147 i_viewWillBeginZooming];
    [v147 viewDidEndZooming];
    [v147 convertUnscaledToBoundsRect:{v257, v256, v70, v72}];
    v256 = v167;
    v169 = v168;
    v171 = v170;
    v252 = v172;
    v253 = v153;
    v254 = v152;
    [v147 convertUnscaledToBoundsRect:{*&v280, v149, v152, v153}];
    v250 = v174;
    v251 = v173;
    v176 = v175;
    v249 = v177;
    v258 = *(v99 + OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_coordinateSpaceLayer);
    [v258 frame];
    v179 = v178;
    v181 = v180;
    v183 = v182;
    v185 = v184;
    *&v281 = v90 / v255 * v182;
    v257 = v90 / v255 * v184;
    v186 = sub_100120414(v256, v169, v171, v252);
    v187 = v186 - sub_100120414(v251, v250, v176, *&v249);
    v188 = v179;
    v189 = sub_100120414(v179, v181, v183, v185);
    v191 = sub_10011F334(v189, v190, v187);
    v193 = sub_10011EC70(v191, v192, *&v281);
    v195 = v194;
    v197 = v196;
    v199 = v198;
    sub_1005B981C(&unk_101A23620);
    v257 = COERCE_DOUBLE(swift_allocObject());
    *(*&v257 + 16) = xmmword_10146C4D0;
    *&v299 = v262;
    *(&v299 + 1) = v261;
    *&v300 = v260;
    *(&v300 + 1) = v259;
    *&v301 = v280;
    *(&v301 + 1) = v278;
    *&v302 = v254;
    *(&v302 + 1) = v253;
    v308 = 77;
    sub_1006C121C(&v299, &v285 + 8);
    v278 = xmmword_1014861A0;
    v262 = xmmword_1014861B0;
    v283 = xmmword_1014861A0;
    v284 = xmmword_1014861B0;
    *&v285 = 0;
    v297 = 0;
    v281 = 0x20202uLL;
    v298 = 131586;
    sub_100687BC0(*&a1, v282);
    v200 = type metadata accessor for CRLCanvasLayerAnimation();
    v201 = (*&v22 + v200[12]);
    v201[3] = &type metadata for CRLSpringLayerAnimation.Def;
    v280 = sub_1008DA198();
    v201[4] = v280;
    v202 = swift_allocObject();
    *v201 = v202;
    sub_1008DA1EC(&v283, v202 + 16);
    *(*&v22 + 88) = 0;
    *(*&v22 + 96) = 0u;
    *(*&v22 + 112) = 0u;
    *(*&v22 + 128) = 1;
    *(*&v22 + 136) = 0u;
    *(*&v22 + 152) = 0u;
    *(*&v22 + 168) = 1;
    *(*&v22 + 176) = 0;
    *(*&v22 + 184) = 1;
    *(*&v22 + 192) = 0;
    *(*&v22 + 200) = 1;
    UUID.init()();
    sub_100687CF4(&v299);
    swift_unknownObjectWeakInit();
    v203 = v200[13];
    v204 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
    v205 = *(v204 - 8);
    v206 = *(v205 + 56);
    v260 = v206;
    *&v261 = v205 + 56;
    v206(*&v22 + v203, 1, 1, v204);
    v206(*&v22 + v200[14], 1, 1, v204);
    sub_100687BC0(v282, *&v22);
    v207 = v282[1];
    sub_100687C30(v282);
    swift_unknownObjectWeakAssign();

    v208 = *&v22;
    v209 = v269;
    *(v208 + *(v269 + 20)) = 0;
    sub_1007D0604(&v283);
    v210 = v263;
    sub_100F99A2C(v263, 1.0);
    sub_1008DA3E4(v208, type metadata accessor for CRLCanvasLayerAnimationProvider);
    v211 = v264;
    sub_100F9A0F0(v264, 150.0);
    sub_1008DA3E4(v210, type metadata accessor for CRLCanvasLayerAnimationProvider);
    v212 = v265;
    sub_100F9A7C4(v265, 23.25);
    sub_1008DA3E4(v211, type metadata accessor for CRLCanvasLayerAnimationProvider);
    v213 = v266;
    sub_100F9AE78(v266, 1.0);
    sub_1008DA3E4(v212, type metadata accessor for CRLCanvasLayerAnimationProvider);
    v214 = v267;
    sub_1008DA37C(v213, v267, type metadata accessor for CRLCanvasLayerAnimationProvider);
    v215 = v214 + v200[12];
    v216 = *(v215 + 24);
    v217 = *(v215 + 32);
    sub_10002A948(v215, v216);
    (*(v217 + 120))(1, v216, v217);
    sub_1008DA3E4(v213, type metadata accessor for CRLCanvasLayerAnimationProvider);
    v218 = v268;
    sub_1008DA37C(v214, v268, type metadata accessor for CRLCanvasLayerAnimationProvider);
    v219 = v218 + v200[12];
    v220 = *(v219 + 24);
    v221 = *(v219 + 32);
    sub_10002A948(v219, v220);
    (*(v221 + 192))(1, v220, v221);
    v222 = v214;
    v117 = v204;
    v119 = *&v257;
    sub_1008DA3E4(v222, type metadata accessor for CRLCanvasLayerAnimationProvider);
    v119[7] = v209;
    v119[8] = &off_10188FCB8;
    v120 = v260;
    v223 = sub_10002C58C(v119 + 4);
    sub_1008DA37C(v218, v223, type metadata accessor for CRLCanvasLayerAnimationProvider);
    *(v223 + 88) = 1;
    sub_1008DA3E4(v218, type metadata accessor for CRLCanvasLayerAnimationProvider);
    sub_1008DA35C(&v299);
    v293 = v305;
    v294 = v306;
    v295 = v307;
    v289 = v301;
    v290 = v302;
    v291 = v303;
    v292 = v304;
    v287 = v299;
    v288 = v300;
    *&v283 = v188;
    *(&v283 + 1) = v181;
    *&v284 = v183;
    *(&v284 + 1) = v185;
    *&v285 = v193;
    *(&v285 + 1) = v195;
    *&v286 = v197;
    *(&v286 + 1) = v199;
    v296 = 76;
    v224 = v270;
    sub_1006C121C(&v283, (v270 + 40));
    v225 = v271;
    UUID.init()();
    sub_100687CF4(&v283);
    swift_unknownObjectWeakInit();
    (v120)(v224 + *(v225 + 28), 1, 1, v117);
    (v120)(v224 + *(v225 + 32), 1, 1, v117);
    swift_unknownObjectWeakAssign();
    *(v224 + 32) = 0;
    v226 = v262;
    *v224 = v278;
    *(v224 + 16) = v226;
    *(v224 + 304) = 0;
    *(v224 + 312) = v281;
    v227 = v272;
    sub_1008DA37C(v224, v272, type metadata accessor for CRLSpringLayerAnimation);
    *(v227 + 16) = 0x3FF0000000000000;
    sub_1008DA3E4(v224, type metadata accessor for CRLSpringLayerAnimation);
    *(v227 + 24) = 0x4062C00000000000;
    *v227 = xmmword_1014861C0;
    v119[12] = v225;
    v119[13] = &off_1018B87B8;
    v228 = sub_10002C58C(v119 + 9);
    sub_1008DA37C(v227, v228, type metadata accessor for CRLSpringLayerAnimation);
    *(&v284 + 1) = &type metadata for CRLSpringLayerAnimation.Def;
    *&v285 = v280;
    *&v283 = swift_allocObject();
    sub_1008DA1EC(v228, v283 + 16);
    *(sub_10002A948(&v283, &type metadata for CRLSpringLayerAnimation.Def) + 315) = 1;
    sub_1012340B0(&v283);
    sub_1008DA3E4(v227, type metadata accessor for CRLSpringLayerAnimation);
    v118 = v273;
    v119[17] = v273;
    v119[18] = &off_1018816E0;
    v280 = sub_10002C58C(v119 + 14);
    *&v283 = 1065353216;
    v296 = 6;
    if (qword_1019F1E20 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_41;
  }

  v119 = 0;
  v120 = 40;
  while (1)
  {
    sub_100020E58((v281 + 40 * v119), *(v281 + 40 * v119 + 24));
    v121 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v122 = *v117;
    v123 = *(v121 + 16);
    v124 = __OFADD__(*v117, v123);
    v125 = *v117 + v123;
    if (v124)
    {
      break;
    }

    v126 = v116[4];
    if (v126 >= v125)
    {
      goto LABEL_28;
    }

    if (v126 + 0x4000000000000000 < 0)
    {
      goto LABEL_44;
    }

    v127 = v116[5];
    if (2 * v126 > v125)
    {
      v125 = 2 * v126;
    }

    v116[4] = v125;
    if ((v125 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_45;
    }

    v128 = v121;
    v129 = swift_slowAlloc();
    v130 = v129;
    v116[5] = v129;
    if (v127)
    {
      if (v129 != v127 || v129 >= &v127[8 * v122])
      {
        memmove(v129, v127, 8 * v122);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v121 = v128;
LABEL_28:
      v130 = v116[5];
      if (!v130)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }

    v121 = v128;
    if (!v130)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_29:
    v132 = *(v121 + 16);
    if (v132)
    {
      v133 = (v121 + 32);
      v134 = *v117;
      while (1)
      {
        v135 = *v133++;
        *&v130[8 * v134] = v135;
        v134 = *v117 + 1;
        if (__OFADD__(*v117, 1))
        {
          break;
        }

        *v117 = v134;
        if (!--v132)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      break;
    }

LABEL_13:

    v119 = (v119 + 1);
    if (v119 == v118)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_41:
  v229 = qword_101AD7728;
  v230 = v274;
  sub_1006C121C(&v283, (v274 + 24));
  UUID.init()();
  sub_100687CF4(&v283);
  swift_unknownObjectWeakInit();
  (v120)(v230 + *(v118 + 28), 1, 1, v117);
  (v120)(v230 + *(v118 + 32), 1, 1, v117);
  swift_unknownObjectWeakAssign();
  *(v230 + 8) = xmmword_10146D9F0;
  *v230 = v229;
  *(v230 + 288) = 0;
  *(v230 + 296) = v281;
  v231 = v275;
  sub_1008DA37C(v230, v275, type metadata accessor for CRLBasicLayerAnimation);
  *(v231 + 16) = 0x3FC0A3D70A3D70A4;
  v232 = v229;
  sub_1008DA3E4(v230, type metadata accessor for CRLBasicLayerAnimation);
  v233 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v234) = 0.25;
  LODWORD(v235) = 0.5;
  LODWORD(v236) = 1.0;
  v237 = [v233 initWithControlPoints:v234 :0.0 :v235 :v236];
  v238 = sub_100C00488();

  *v231 = v238;
  v239 = v276;
  sub_1008DA37C(v231, v276, type metadata accessor for CRLBasicLayerAnimation);
  *(&v284 + 1) = &type metadata for CRLBasicLayerAnimation.Def;
  v240 = sub_1005F907C();
  *&v285 = v240;
  *&v283 = swift_allocObject();
  sub_1005F8AB8(v239, v283 + 16);
  *(sub_10002A948(&v283, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 1;
  sub_1006BF678(&v283);
  sub_1008DA3E4(v231, type metadata accessor for CRLBasicLayerAnimation);
  v241 = v280;
  sub_1008DA37C(v239, v280, type metadata accessor for CRLBasicLayerAnimation);
  *(&v284 + 1) = &type metadata for CRLBasicLayerAnimation.Def;
  *&v285 = v240;
  *&v283 = swift_allocObject();
  sub_1005F8AB8(v241, v283 + 16);
  *(sub_10002A948(&v283, &type metadata for CRLBasicLayerAnimation.Def) + 299) = 1;
  sub_1006BF678(&v283);
  sub_1008DA3E4(v239, type metadata accessor for CRLBasicLayerAnimation);
  v242 = sub_100789704(v119, 0.0);
  v244 = v243;
  v245 = v242;
  swift_setDeallocating();
  sub_1005B981C(&unk_101A09F70);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  v247 = v277;
  *v277 = v244;
  v247[1] = v245;
  return result;
}

uint64_t sub_1008D82F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v9 = v8;
  sub_1008D1DDC(&v77);
  if (!v77)
  {
    v66 = a4;
    v67 = a1;
    v68 = a2;
    v17 = objc_opt_self();
    v18 = [v17 _atomicIncrementAssertCount];
    v70 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v70);
    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v25 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v18;
    v27 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v27;
    v28 = sub_1005CF04C();
    *(inited + 104) = v28;
    *(inited + 72) = v19;
    *(inited + 136) = &type metadata for String;
    v29 = sub_1000053B0();
    *(inited + 112) = v22;
    *(inited + 120) = v24;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v29;
    *(inited + 152) = 497;
    v30 = v70;
    *(inited + 216) = v27;
    *(inited + 224) = v28;
    *(inited + 192) = v30;
    v31 = v19;
    v32 = v30;
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v34, "Unable to animate, could not resolve canvas animator from board view controller's ICC.", 86, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v35 = swift_allocObject();
    v35[2] = 8;
    v35[3] = 0;
    v35[4] = 0;
    v35[5] = 0;
    v36 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    [v17 handleFailureInFunction:v37 file:v38 lineNumber:497 isFatal:0 format:v39 args:v36];

    a1 = v67;
    a2 = v68;
    a4 = v66;
  }

  v73 = v79;
  v74 = v80;
  v75 = v81;
  v76 = v82;
  v71 = v77;
  v72 = v78;
  if (!v77)
  {
    return sub_10000CAAC(&v71, &unk_101A23610);
  }

  v79 = v73;
  v80 = v74;
  v81 = v75;
  v82 = v76;
  v77 = v71;
  v78 = v72;
  v40 = *(&v72 + 1);
  [*(&v72 + 1) visibleUnscaledRect];
  v43 = *(v9 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState);
  v44 = OBJC_IVAR____TtC8Freeform21CRLScenesPopoverState_isAnimatingToScene;
  if ((*(v43 + OBJC_IVAR____TtC8Freeform21CRLScenesPopoverState_isAnimatingToScene) & 1) == 0)
  {
    v45 = a5;
    v46 = a6;
    v47 = v41;
    v48 = v42;
    v49 = sub_100120414(v45, v46, a7, a8);
    v51 = v50;
    v52 = sub_100121C3C(a7, a8, v47, v48);
    v53 = sub_10011EC70(v49, v51, v52);
    v55 = v54;
    v57 = v56;
    v59 = v58;
    *(v43 + v44) = 1;
    sub_1010193C0();
    sub_1008D890C(&v77, &v71, v53, v55, v57, v59);
    v60 = *(&v72 + 1);
    v61 = v73;
    sub_100020E58(&v71, *(&v72 + 1));
    v62 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v63 = swift_allocObject();
    *(v63 + 2) = v62;
    v63[3] = v53;
    v63[4] = v55;
    v63[5] = v57;
    v63[6] = v59;
    *(v63 + 7) = a3;
    *(v63 + 8) = a4;

    sub_10067F2EC(a3);
    sub_101137F98(0, 1, 1, 0, 0, a1, a2, sub_1008D99DC, v63, v60, v61);

    v64 = [v40 textInputResponder];
    if (v64)
    {
      v64[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_sceneAnimationInProgress] = 0;
    }

    sub_100005070(&v71);
  }

  return sub_100687C30(&v77);
}

void sub_1008D890C(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v11 = *(a1 + 24);
  v12 = [v11 textInputResponder];
  if (v12)
  {
    v12[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_sceneAnimationInProgress] = 1;
  }

  [v11 beginDynamicOperation];
  v13 = objc_opt_self();
  [v13 flush];
  [v13 begin];
  sub_1008D8C6C();
  [v13 commit];
  [v13 begin];
  v14 = sub_1008D9A08(a1);
  v16 = v15;
  v17 = sub_1008D2288(v14, v15);
  sub_1008D8D60(v17);

  [v13 commit];
  [v13 begin];
  sub_1008D9060();
  [v13 commit];
  [v13 begin];
  v18 = [v11 mathCalculationController];
  sub_100A8664C(1);

  v19 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v19 == 2)
    {
      *(a2 + 24) = &type metadata for CRLLayerAnimationGroup;
      *(a2 + 32) = &off_101885E50;
      sub_1008D6DE4(*&a1, v14, a2, a3, a4, a5, a6);
    }

    else if (v14 | v16 ^ 0xC000000000000000)
    {
      if (v16 == 0xC000000000000000 && v14 == 8)
      {
        *(a2 + 24) = type metadata accessor for CRLBasicLayerAnimation();
        *(a2 + 32) = &off_1018816E0;
        v22 = sub_10002C58C(a2);
        sub_1008D3934(a1, v22, a3, a4, a5, a6);
      }

      else
      {
        *(a2 + 24) = type metadata accessor for CRLCanvasLayerAnimationProvider();
        *(a2 + 32) = &off_10188FCB8;
        v24 = sub_10002C58C(a2);
        sub_1008D6114(a1, v24, a3, a4, a5, a6);
      }
    }

    else
    {
      *(a2 + 24) = type metadata accessor for CRLCanvasLayerAnimationProvider();
      *(a2 + 32) = &off_10188FCB8;
      v23 = sub_10002C58C(a2);
      sub_1008D2EB0(a1, v23, a3, a4, a5, a6);
    }
  }

  else if (v19)
  {
    *(a2 + 24) = &type metadata for CRLLayerAnimationGroup;
    *(a2 + 32) = &off_101885E50;
    sub_1008D4B98(a1, v14, v16 & 0x3FFFFFFFFFFFFFFFLL, a2, a3, a4, a5, a6);
  }

  else
  {
    *(a2 + 24) = type metadata accessor for CRLBasicLayerAnimation();
    *(a2 + 32) = &off_1018816E0;
    v20 = sub_10002C58C(a2);
    sub_1008D3304(a1, v14, v20, a3, a4, a5, a6);
  }

  [v13 commit];

  sub_1008DA134(v14, v16);
}

uint64_t sub_1008D8C6C()
{
  v0 = sub_1008D96C0();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = v4;
      sub_1008DA444(&v8);

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_1008D8D60(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigationCrossfadeSnapshotLayers;
  v4 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigationCrossfadeSnapshotLayers);
  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v7 removeFromSuperlayer];

        ++v6;
        if (v9 == i)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_12:

    v25 = _swiftEmptyArrayStorage;
    if (!(a1 >> 62))
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        break;
      }

      goto LABEL_14;
    }

    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      break;
    }

LABEL_14:
    v11 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v4 = &v25;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v11;
      if (v13 == v10)
      {
        v14 = v25;
        goto LABEL_31;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_31:
  *(v24 + v3) = v14;

  v15 = *(v24 + v3);
  if (v15 >> 62)
  {
    goto LABEL_49;
  }

  for (j = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!j)
    {
      break;
    }

    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = sub_1010136C0();
      v22 = [v21 layer];

      if (!v22)
      {

        goto LABEL_44;
      }

      [v22 addSublayer:v19];

      ++v17;
      if (v20 == j)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

LABEL_44:
}

uint64_t sub_1008D9060()
{
  v0 = sub_1008D96C0();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 layer];
      v8 = String._bridgeToObjectiveC()();
      [v7 removeAnimationForKey:v8];

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_1008D919C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_1008D1DDC(&v45);
    if (v45)
    {
      v53 = v47;
      v54 = v48;
      v55 = v49;
      v56 = v50;
      *v51 = v45;
      *v52 = v46;
      v13 = *(&v46 + 1);
      [*(&v46 + 1) viewScale];
      v15 = v14;
      v16 = objc_opt_self();
      [v16 begin];
      v17 = v51[1];
      v18 = *&CATransform3DIdentity.m33;
      v44[4] = *&CATransform3DIdentity.m31;
      v44[5] = v18;
      v19 = *&CATransform3DIdentity.m43;
      v44[6] = *&CATransform3DIdentity.m41;
      v44[7] = v19;
      v20 = *&CATransform3DIdentity.m13;
      v44[0] = *&CATransform3DIdentity.m11;
      v44[1] = v20;
      v21 = *&CATransform3DIdentity.m23;
      v44[2] = *&CATransform3DIdentity.m21;
      v44[3] = v21;
      [v51[1] setTransform:v44];
      [v13 viewScale];
      if (sub_1008D99F0(v22, v15, 0.0000001))
      {
        v23 = sub_100120414(a1, a2, a3, a4);
      }

      else
      {
        [v13 visibleUnscaledRect];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v43 = a4;
        v31 = v15;
        v33 = v32;
        [v13 setViewScale:v31];
        [v13 i_viewScaleDidChange];
        [v13 setContentOffset:0 scrollOptions:{sub_100120414(v26, v28, v30, v33)}];
        v34 = sub_100120414(a1, a2, a3, v43);
        v36 = v35;
        [v13 growCanvasAsNeededToRestoreContentOffset:?];
        v24 = v36;
        v23 = v34;
        v15 = v31;
      }

      [v52[0] setContentOffset:{sub_10091673C(v23, v24, v15)}];
      [v13 i_viewScrollDidChange];
      v37 = String._bridgeToObjectiveC()();
      [v17 removeAnimationForKey:v37];

      v38 = [v17 associatedBackgroundLayer];
      if (v38)
      {
        v39 = &v38[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
        v40 = *&CGAffineTransformIdentity.c;
        *v39 = *&CGAffineTransformIdentity.a;
        *(v39 + 1) = v40;
        *(v39 + 2) = *&CGAffineTransformIdentity.tx;
        if (v38[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled] == 1 && (v38[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas] & 1) == 0)
        {
          v41 = v38;
          [v38 setNeedsLayout];
          v38 = v41;
        }
      }

      [v13 i_viewScrollingEnded];
      [v13 i_viewDidZoomToViewScale:1 notify:v15];
      [v16 commit];
      [v13 willEndDynamicOperation];
      [v13 endDynamicOperation];
      *(*&v12[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState] + OBJC_IVAR____TtC8Freeform21CRLScenesPopoverState_isAnimatingToScene) = 0;
      sub_1010193C0();
      v42 = [v13 mathCalculationController];
      sub_100A8664C(0);

      sub_1008D95B8(&off_101874E58);
      sub_10000CAAC(&unk_101874E78, &qword_101A07160);
      result = sub_100687C30(v51);
    }

    else
    {

      result = sub_10000CAAC(&v45, &unk_101A23610);
    }
  }

  if (a6)
  {
    return a6(result);
  }

  return result;
}

uint64_t sub_1008D95B8(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 32;
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v5 = *(v3 + 8 * v1++);
    if (v5)
    {
      v6 = v5;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = v4;
    }
  }

  sub_1008D8D60(_swiftEmptyArrayStorage);
}

void *sub_1008D96C0()
{
  v1 = v0;
  v23 = type metadata accessor for Mirror();
  v2 = *(v23 - 8);
  *&v3 = __chkstk_darwin(v23).n128_u64[0];
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 subviews];
  v22 = sub_100006370(0, &qword_1019F6D00);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = _swiftEmptyArrayStorage;
  if (v7 >> 62)
  {
LABEL_19:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v20 = v7 & 0xFFFFFFFFFFFFFF8;
      v21 = v7 & 0xC000000000000001;
      v10 = (v2 + 1);
      while (1)
      {
        if (v21)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            v17 = v26;
            goto LABEL_21;
          }
        }

        else
        {
          if (v9 >= *(v20 + 16))
          {
            __break(1u);
            goto LABEL_19;
          }

          v11 = *(v7 + 8 * v9 + 32);
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_16;
          }
        }

        v13 = v7;
        v25 = v22;
        v24 = v11;
        v14 = v11;
        Mirror.init(reflecting:)();
        Mirror.subjectType.getter();
        (*v10)(v5, v23);
        if (_typeName(_:qualified:)() == 0xD00000000000001CLL && 0x8000000101574B30 == v15)
        {
        }

        else
        {
          v2 = v15;
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v16 & 1) == 0)
          {

            goto LABEL_6;
          }
        }

        v2 = &v26;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_6:
        v7 = v13;
        ++v9;
        if (v12 == v8)
        {
          goto LABEL_17;
        }
      }
    }
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_21:

  return v17;
}

uint64_t sub_1008D996C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A07158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1008D9A08(uint64_t a1)
{
  v2 = sub_1008D2354(a1);
  if (v2)
  {
    v3 = v2;
    if (([objc_opt_self() isReduceMotionEnabled] & 1) != 0 || sub_1008D2354(a1))
    {
      return v3;
    }

    v28 = objc_opt_self();
    v29 = [v28 _atomicIncrementAssertCount];
    v48[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v48);
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    v32 = [v31 lastPathComponent];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v36 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v29;
    v38 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v38;
    v39 = sub_1005CF04C();
    *(inited + 104) = v39;
    *(inited + 72) = v30;
    *(inited + 136) = &type metadata for String;
    v40 = sub_1000053B0();
    *(inited + 112) = v33;
    *(inited + 120) = v35;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v40;
    *(inited + 152) = 129;
    v41 = v48[0];
    *(inited + 216) = v38;
    *(inited + 224) = v39;
    *(inited + 192) = v41;
    v42 = v30;
    v43 = v41;
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v45 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v45, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v46 = swift_allocObject();
    v46[2] = 8;
    v46[3] = 0;
    v46[4] = 0;
    v46[5] = 0;
    v47 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v28 handleFailureInFunction:v24 file:v25 lineNumber:129 isFatal:0 format:v26 args:v47];
  }

  else
  {
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v48[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v48);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_10146CA70;
    *(v13 + 56) = &type metadata for Int32;
    *(v13 + 64) = &protocol witness table for Int32;
    *(v13 + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(v13 + 96) = v14;
    v15 = sub_1005CF04C();
    *(v13 + 104) = v15;
    *(v13 + 72) = v6;
    *(v13 + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(v13 + 112) = v9;
    *(v13 + 120) = v11;
    *(v13 + 176) = &type metadata for UInt;
    *(v13 + 184) = &protocol witness table for UInt;
    *(v13 + 144) = v16;
    *(v13 + 152) = 122;
    v17 = v48[0];
    *(v13 + 216) = v14;
    *(v13 + 224) = v15;
    *(v13 + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v13);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:122 isFatal:0 format:v26 args:v23];
  }

  return 0;
}

void sub_1008DA134(void *a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      v4 = a2 & 0x3FFFFFFFFFFFFFFFLL;

      a1 = v4;

LABEL_5:

      return;
    }

LABEL_7:

    goto LABEL_5;
  }

  if (v3 == 2)
  {
    goto LABEL_7;
  }
}

unint64_t sub_1008DA198()
{
  result = qword_101A07168;
  if (!qword_101A07168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07168);
  }

  return result;
}

uint64_t sub_1008DA260(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_1008D45B8(a1, v4, v5, v6);
}

uint64_t sub_1008DA314(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1008DA35C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t sub_1008DA37C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008DA3E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1008DA444(void **a1)
{
  v2 = type metadata accessor for CRLBasicLayerAnimation();
  __chkstk_darwin(v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v34 = &v33 - v6;
  __chkstk_darwin(v7);
  v35 = &v33 - v8;
  __chkstk_darwin(v9);
  v37 = &v33 - v10;
  __chkstk_darwin(v11);
  v38 = &v33 - v12;
  v39[0] = 0;
  v13 = *a1;
  v42 = 6;
  if (qword_1019F1E20 != -1)
  {
    swift_once();
  }

  v14 = [v13 layer];
  v36 = v13;
  v15 = v14;
  sub_1006C121C(v39, (v4 + 24));
  UUID.init()();
  sub_100687CF4(v39);
  swift_unknownObjectWeakInit();
  v16 = *(v2 + 28);
  v17 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v18 = *(*(v17 - 8) + 56);
  v18(&v4[v16], 1, 1, v17);
  v18(&v4[*(v2 + 32)], 1, 1, v17);
  swift_unknownObjectWeakAssign();

  *(v4 + 8) = xmmword_10146D9F0;
  v19 = v33;
  v20 = v34;
  *v4 = v33;
  *(v4 + 36) = 0;
  *(v4 + 74) = 131586;
  sub_1008DA37C(v4, v20, type metadata accessor for CRLBasicLayerAnimation);
  *(v20 + 16) = 0;
  v21 = v19;
  sub_1008DA3E4(v4, type metadata accessor for CRLBasicLayerAnimation);
  v22 = v35;
  sub_1008DA37C(v20, v35, type metadata accessor for CRLBasicLayerAnimation);
  v40 = &type metadata for CRLBasicLayerAnimation.Def;
  v23 = sub_1005F907C();
  v41 = v23;
  v39[0] = swift_allocObject();
  sub_1005F8AB8(v22, v39[0] + 16);
  *(sub_10002A948(v39, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 0;
  sub_1006BF678(v39);
  sub_1008DA3E4(v20, type metadata accessor for CRLBasicLayerAnimation);
  v24 = v37;
  sub_1008DA37C(v22, v37, type metadata accessor for CRLBasicLayerAnimation);
  v40 = &type metadata for CRLBasicLayerAnimation.Def;
  v41 = v23;
  v39[0] = swift_allocObject();
  sub_1005F8AB8(v24, v39[0] + 16);
  *(sub_10002A948(v39, &type metadata for CRLBasicLayerAnimation.Def) + 298) = 0;
  sub_1006BF678(v39);
  sub_1008DA3E4(v22, type metadata accessor for CRLBasicLayerAnimation);
  v25 = v38;
  sub_1008DA37C(v24, v38, type metadata accessor for CRLBasicLayerAnimation);
  v40 = &type metadata for CRLBasicLayerAnimation.Def;
  v41 = v23;
  v39[0] = swift_allocObject();
  sub_1005F8AB8(v25, v39[0] + 16);
  v26 = sub_10002A948(v39, &type metadata for CRLBasicLayerAnimation.Def);
  v27 = *(v26 + 288);
  *(v26 + 288) = kCAFillModeBoth;
  v28 = kCAFillModeBoth;

  sub_1006BF678(v39);
  sub_1008DA3E4(v24, type metadata accessor for CRLBasicLayerAnimation);
  sub_100915B84(v39);
  v29 = CACurrentMediaTime();
  v30 = sub_1006BFEF0(v39, v29);
  sub_10000CAAC(v39, &unk_101A09F80);
  v31 = String._bridgeToObjectiveC()();
  [v36 addAnimation:v30 forKey:v31];

  return sub_1008DA3E4(v25, type metadata accessor for CRLBasicLayerAnimation);
}

uint64_t sub_1008DA8AC@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v104 = sub_1005B981C(&qword_101A071C0);
  __chkstk_darwin(v104);
  v3 = &v97 - v2;
  v4 = sub_1005B981C(qword_101A067F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v97 - v5;
  v119 = type metadata accessor for Font.TextStyle();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  v103 = sub_1005B981C(&qword_101A071C8);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v97 - v10;
  v100 = sub_1005B981C(&qword_101A071D0);
  __chkstk_darwin(v100);
  v107 = &v97 - v11;
  v105 = sub_1005B981C(&qword_101A071D8);
  __chkstk_darwin(v105);
  v109 = &v97 - v12;
  v108 = sub_1005B981C(&qword_101A071E0);
  __chkstk_darwin(v108);
  v111 = &v97 - v13;
  v110 = sub_1005B981C(&qword_101A071E8);
  __chkstk_darwin(v110);
  v116 = &v97 - v14;
  v106 = sub_1005B981C(&qword_101A071F0);
  __chkstk_darwin(v106);
  v113 = &v97 - v15;
  v112 = sub_1005B981C(&qword_101A071F8);
  __chkstk_darwin(v112);
  v117 = &v97 - v16;
  v17 = sub_1005B981C(&qword_101A07200);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v115 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v114 = &v97 - v21;
  v127 = v1[2];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v122 != 1)
  {
    return (*(v18 + 56))(v120, 1, 1, v17);
  }

  v97 = v18;
  v98 = v17;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v23 = 1;
  if (v122)
  {
    v23 = 0;
  }

  v24 = 24;
  if (v122)
  {
    v24 = 8;
  }

  v25._object = *(v1 + v24);
  v99 = v1;
  v25._countAndFlagsBits = *&v1[v23];
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v25);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
  LocalizedStringKey.init(stringInterpolation:)();
  v27 = Text.init(_:tableName:bundle:comment:)();
  v29 = v28;
  v31 = v30;
  v32 = v118;
  v33 = v119;
  (*(v118 + 104))(v8, enum case for Font.TextStyle.body(_:), v119);
  v34 = type metadata accessor for Font.Design();
  (*(*(v34 - 8) + 56))(v6, 1, 1, v34);
  static Font.Weight.semibold.getter();
  static Font.system(_:design:weight:)();
  sub_10000CAAC(v6, qword_101A067F0);
  (*(v32 + 8))(v8, v33);
  v35 = Text.font(_:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_10007441C(v27, v29, v31 & 1);

  *&v122 = v35;
  *(&v122 + 1) = v37;
  LOBYTE(v123) = v39 & 1;
  *(&v123 + 1) = v41;
  v42 = enum case for DynamicTypeSize.accessibility1(_:);
  v43 = type metadata accessor for DynamicTypeSize();
  (*(*(v43 - 8) + 104))(v3, v42, v43);
  sub_1008DCC68(&qword_101A07208, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_10001A2F8(&qword_101A07210, &qword_101A071C0);
    v45 = v101;
    View.dynamicTypeSize<A>(_:)();
    sub_10000CAAC(v3, &qword_101A071C0);
    sub_10007441C(v35, v37, v39 & 1);

    v46 = v107;
    (*(v102 + 32))(v107, v45, v103);
    *(v46 + *(v100 + 36)) = 1;
    sub_1005B981C(&qword_101A07218);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v48 = static Edge.Set.leading.getter();
    *(inited + 32) = v48;
    v49 = static Edge.Set.trailing.getter();
    *(inited + 33) = v49;
    v50 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v48)
    {
      v50 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    v51 = Edge.Set.init(rawValue:)();
    v52 = v98;
    v53 = v97;
    if (v51 != v49)
    {
      v50 = Edge.Set.init(rawValue:)();
    }

    v54 = v120;
    v55 = v99;
    EdgeInsets.init(_all:)();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v64 = v109;
    sub_10003DFF8(v46, v109, &qword_101A071D0);
    v65 = v64 + *(v105 + 36);
    *v65 = v50;
    *(v65 + 8) = v57;
    *(v65 + 16) = v59;
    *(v65 + 24) = v61;
    *(v65 + 32) = v63;
    *(v65 + 40) = 0;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v66 = v111;
    sub_10003DFF8(v64, v111, &qword_101A071D8);
    v67 = (v66 + *(v108 + 36));
    v68 = v123;
    *v67 = v122;
    v67[1] = v68;
    v67[2] = v124;
    v69 = static Color.white.getter();
    KeyPath = swift_getKeyPath();
    v71 = v116;
    sub_10003DFF8(v66, v116, &qword_101A071E0);
    v72 = (v71 + *(v110 + 36));
    *v72 = KeyPath;
    v72[1] = v69;
    v73 = v113;
    v74 = &v113[*(v106 + 36)];
    v75 = *(type metadata accessor for RoundedRectangle() + 20);
    v76 = enum case for RoundedCornerStyle.continuous(_:);
    v77 = type metadata accessor for RoundedCornerStyle();
    (*(*(v77 - 8) + 104))(&v74[v75], v76, v77);
    __asm { FMOV            V0.2D, #8.0 }

    *v74 = _Q0;
    v83 = static Color.black.getter();
    v84 = sub_1005B981C(&qword_101A07220);
    *&v74[*(v84 + 52)] = v83;
    *&v74[*(v84 + 56)] = 256;
    *&v74[*(sub_1005B981C(&qword_101A07228) + 36)] = 0x3FE999999999999ALL;
    v85 = static Alignment.center.getter();
    v87 = v86;
    v88 = &v74[*(sub_1005B981C(&qword_101A07230) + 36)];
    *v88 = v85;
    v88[1] = v87;
    sub_10003DFF8(v71, v73, &qword_101A071E8);
    v89 = v117;
    sub_10003DFF8(v73, v117, &qword_101A071F0);
    *(v89 + *(v112 + 36)) = 0;
    v90 = *v55;
    v125 = v55[1];
    v126 = v90;
    v91 = swift_allocObject();
    v92 = v55[1];
    *(v91 + 1) = *v55;
    *(v91 + 2) = v92;
    *(v91 + 3) = v55[2];
    v93 = v115;
    sub_10003DFF8(v89, v115, &qword_101A071F8);
    v94 = (v93 + *(v52 + 36));
    *v94 = sub_1008DC9B0;
    v94[1] = v91;
    v94[2] = 0;
    v94[3] = 0;
    v95 = v93;
    v96 = v114;
    sub_10003DFF8(v95, v114, &qword_101A07200);
    sub_10003DFF8(v96, v54, &qword_101A07200);
    (*(v53 + 56))(v54, 0, 1, v52);
    sub_1008DC9B8(&v126, v121);
    sub_1008DC9B8(&v125, v121);
    return sub_1008DCA14(&v127, v121);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008DB61C(__int128 *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v23 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  sub_100618868();
  v21 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v9 + 8);
  v22(v11, v8);
  v15 = *a1;
  v30 = a1[1];
  v31 = v15;
  v29 = a1[2];
  v16 = swift_allocObject();
  v17 = a1[1];
  v16[1] = *a1;
  v16[2] = v17;
  v16[3] = a1[2];
  aBlock[4] = sub_1008DCA84;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_10188C750;
  v18 = _Block_copy(aBlock);
  sub_1008DC9B8(&v31, v27);
  sub_1008DC9B8(&v30, v27);
  sub_1008DCA14(&v29, v27);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1008DCC68(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v21;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v26 + 8))(v4, v2);
  (*(v24 + 8))(v7, v25);
  return (v22)(v14, v23);
}

uint64_t sub_1008DBA1C(uint64_t a1)
{
  v1 = *(a1 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t (*CRLConnectorModeMessageViewState.isConnectorModeEnabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_1008DBBD8;
}

uint64_t (*CRLConnectorModeMessageViewState.$isConnectorModeEnabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1005B981C(&qword_101A28780);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC8Freeform32CRLConnectorModeMessageViewState__isConnectorModeEnabled;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1005B981C(&unk_101A08DC0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_1008DBD64;
}

uint64_t sub_1008DBDB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*CRLConnectorModeMessageViewState.isMessageVisible.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_1008DD1E4;
}

void sub_1008DBEEC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1008DBF60()
{
  swift_beginAccess();
  sub_1005B981C(&unk_101A08DC0);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_1008DBFDC(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A28780);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_1005B981C(&unk_101A08DC0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CRLConnectorModeMessageViewState.$isMessageVisible.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1005B981C(&qword_101A28780);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC8Freeform32CRLConnectorModeMessageViewState__isMessageVisible;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1005B981C(&unk_101A08DC0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_1008DD1E8;
}

void sub_1008DC284(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id CRLConnectorModeMessageViewState.init()()
{
  v1 = sub_1005B981C(&unk_101A08DC0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC8Freeform32CRLConnectorModeMessageViewState__isConnectorModeEnabled;
  v12 = 0;
  Published.init(initialValue:)();
  v6 = *(v2 + 32);
  v6(&v0[v5], v4, v1);
  v7 = OBJC_IVAR____TtC8Freeform32CRLConnectorModeMessageViewState__isMessageVisible;
  v12 = 0;
  Published.init(initialValue:)();
  v6(&v0[v7], v4, v1);
  v8 = type metadata accessor for CRLConnectorModeMessageViewState();
  v11.receiver = v0;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t type metadata accessor for CRLConnectorModeMessageViewState()
{
  result = qword_101A071B0;
  if (!qword_101A071B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CRLConnectorModeMessageViewState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLConnectorModeMessageViewState();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1008DC7C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRLConnectorModeMessageViewState();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_1008DC808()
{
  sub_10003A3F4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1008DC898(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1008DC8E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1008DC958@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1008DCA14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A07238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008DCA8C@<X0>(uint64_t *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = [v2 mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  type metadata accessor for CRLConnectorModeMessageViewState();
  sub_1008DCC68(&qword_101A07240, type metadata accessor for CRLConnectorModeMessageViewState);
  result = ObservedObject.init(wrappedValue:)();
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v14;
  a1[3] = v16;
  a1[4] = result;
  a1[5] = v18;
  return result;
}

uint64_t sub_1008DCC68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1008DCCB0()
{
  result = qword_101A07248;
  if (!qword_101A07248)
  {
    sub_1005C4E5C(&qword_101A07250);
    sub_1008DCD34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07248);
  }

  return result;
}

unint64_t sub_1008DCD34()
{
  result = qword_101A07258;
  if (!qword_101A07258)
  {
    sub_1005C4E5C(&qword_101A07200);
    sub_1008DCDC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07258);
  }

  return result;
}

unint64_t sub_1008DCDC0()
{
  result = qword_101A07260;
  if (!qword_101A07260)
  {
    sub_1005C4E5C(&qword_101A071F8);
    sub_1008DCE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07260);
  }

  return result;
}

unint64_t sub_1008DCE4C()
{
  result = qword_101A07268;
  if (!qword_101A07268)
  {
    sub_1005C4E5C(&qword_101A071F0);
    sub_1008DCF04();
    sub_10001A2F8(&qword_101A07290, &qword_101A07230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07268);
  }

  return result;
}

unint64_t sub_1008DCF04()
{
  result = qword_101A07270;
  if (!qword_101A07270)
  {
    sub_1005C4E5C(&qword_101A071E8);
    sub_1008DCFBC();
    sub_10001A2F8(&qword_1019FEA88, &qword_1019FEA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07270);
  }

  return result;
}

unint64_t sub_1008DCFBC()
{
  result = qword_101A07278;
  if (!qword_101A07278)
  {
    sub_1005C4E5C(&qword_101A071E0);
    sub_1008DD048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07278);
  }

  return result;
}

unint64_t sub_1008DD048()
{
  result = qword_101A07280;
  if (!qword_101A07280)
  {
    sub_1005C4E5C(&qword_101A071D8);
    sub_1008DD0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07280);
  }

  return result;
}

unint64_t sub_1008DD0D4()
{
  result = qword_101A07288;
  if (!qword_101A07288)
  {
    sub_1005C4E5C(&qword_101A071D0);
    sub_1005C4E5C(&qword_101A071C0);
    sub_10001A2F8(&qword_101A07210, &qword_101A071C0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07288);
  }

  return result;
}

id sub_1008DD328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v16[3] = sub_1008DE424();
  v16[4] = &off_1018AC3D0;
  v16[0] = a1;
  sub_10000630C(v16, &v13);
  v7 = type metadata accessor for CRLPasteboardObjectReadAssistant.PasteboardChannelProvider();
  v8 = swift_allocObject();
  sub_100050F74(&v13, v8 + 16);
  v14 = v7;
  v15 = &off_10188C778;
  *&v13 = v8;
  v9 = objc_allocWithZone(ObjectType);
  *&v9[OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_pasteboardObject] = 0;
  sub_10000630C(&v13, &v9[OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_channelProvider]);
  *&v9[OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_store] = a2;
  *&v9[OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_context] = a3;
  *&v9[OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_options] = 7;
  v12.receiver = v9;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_100005070(&v13);
  sub_100005070(v16);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t sub_1008DD568()
{
  v1 = v0[7];
  Coordinator = type metadata accessor for CRLSerializableObjectReadCoordinator();
  sub_10000630C(v1 + OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_channelProvider, (v0 + 2));
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_store);
  v4 = *(v1 + OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_context);
  v5 = *(v1 + OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_options);
  v6 = v0[5];
  v7 = v0[6];
  v8 = sub_10002A948((v0 + 2), v6);
  v9 = *(v6 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v8, v6);
  v0[8] = sub_100D3A2F0(v10, v3, v4, v5, Coordinator, v6, v7);
  sub_100005070((v0 + 2));

  if (v5)
  {
    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    v13[1] = sub_1008DD79C;

    return sub_100D357AC();
  }

  else
  {
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_1008DD9DC;

    return sub_100D34EEC();
  }
}

uint64_t sub_1008DD79C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1008DDBE8;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_1008DD8C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1008DD8C4()
{
  if (sub_1002BC910(v0[11]))
  {
    sub_1006B305C();
    swift_allocError();
    *v1 = 14;
    swift_willThrow();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_1008DD9DC;

    return sub_100D34EEC();
  }
}

uint64_t sub_1008DD9DC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_1008DDC4C;
  }

  else
  {
    v4 = sub_1008DDAF0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1008DDAF0()
{
  type metadata accessor for CRLPasteboardObject();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 56);

    v4 = *(v3 + OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_pasteboardObject);
    *(v3 + OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_pasteboardObject) = v2;
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1006B305C();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1008DDBE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008DDC4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008DDE24(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1008DDECC;

  return sub_1008DD548();
}

uint64_t sub_1008DDECC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

id sub_1008DE090()
{
  sub_10000630C(*v0 + 16, v6);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = objc_allocWithZone(type metadata accessor for CRLPasteboardReadChannel());
  return sub_100AC422C(v6, v1, v3);
}

id sub_1008DE10C(uint64_t a1, void *a2)
{
  v5 = *v2;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v6;

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  String.append(_:)(v7);

  v8 = v12;
  v9 = v13;
  sub_10000630C(v5 + 16, &v12);
  v10 = objc_allocWithZone(type metadata accessor for CRLPasteboardReadChannel());
  return sub_100AC422C(&v12, v8, v9);
}

uint64_t sub_1008DE2A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D3D4;

  return sub_1008DDE24(v2, v3);
}

id sub_1008DE350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = type metadata accessor for CRLPasteboardNativeDataProvider();
  v13[4] = &off_1018A2488;
  v13[0] = a1;
  Assistant = type metadata accessor for CRLPasteboardObjectReadAssistant();
  v9 = objc_allocWithZone(Assistant);
  *&v9[OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_pasteboardObject] = 0;
  sub_10000630C(v13, &v9[OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_channelProvider]);
  *&v9[OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_store] = a2;
  *&v9[OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_context] = a3;
  *&v9[OBJC_IVAR____TtC8Freeform32CRLPasteboardObjectReadAssistant_options] = a4;
  v12.receiver = v9;
  v12.super_class = Assistant;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_100005070(v13);
  return v10;
}

unint64_t sub_1008DE424()
{
  result = qword_101A073A0[0];
  if (!qword_101A073A0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_101A073A0);
  }

  return result;
}

uint64_t sub_1008DE4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10067F520;

  return sub_1008DE5B4(a1, a2, a3, a4);
}

uint64_t sub_1008DE5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v5[16] = *v4;
  sub_1005B981C(&qword_1019FB750);
  v5[17] = swift_task_alloc();
  v5[18] = type metadata accessor for CRLRealTimeMessengerConfiguration();
  v5[19] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_1008DE70C, 0, 0);
}

uint64_t sub_1008DE70C()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[15];
  swift_defaultActor_initialize();
  *(v4 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 168) = 0u;
  *(v4 + 152) = 0u;
  GroupSession.id.getter();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  v0[23] = v5;
  v0[24] = v6;
  (*(v2 + 8))(v1, v3);
  *(v4 + 128) = v5;
  *(v4 + 136) = v7;
  type metadata accessor for GroupSessionMessenger();

  *(v4 + 144) = GroupSessionMessenger.__allocating_init<A>(session:)();

  return _swift_task_switch(sub_1008DE818, v4, 0);
}

uint64_t sub_1008DE818()
{
  if (qword_1019F2158 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[18];
  v4 = v0[19];
  v38 = v0[17];
  v5 = v0[15];
  v35 = v0[14];
  v36 = v0[16];
  v40 = v0[12];
  v6 = static OS_os_log.crlRealTimeMessageTransfer;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v2;
  v39 = v1;
  *(inited + 40) = v1;

  v8 = static os_log_type_t.default.getter();
  sub_100005404(v6, &_mh_execute_header, v8, "Created new GroupSessionMessenger for group session id %{public}@", 65, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v5[15] = v35;
  swift_unknownObjectWeakAssign();
  v9 = type metadata accessor for CRLRealTimeMessengerImplementation();
  v10 = enum case for GroupSessionMessenger.DeliveryMode.reliable(_:);
  v11 = type metadata accessor for GroupSessionMessenger.DeliveryMode();
  (*(*(v11 - 8) + 104))(v4, v10, v11);
  v12 = v3[7];
  *(v4 + v12) = 20;
  v13 = enum case for DispatchTimeInterval.seconds(_:);
  v14 = type metadata accessor for DispatchTimeInterval();
  (*(*(v14 - 8) + 104))(v4 + v12, v13, v14);
  *(v4 + v3[5]) = 88064;
  *(v4 + v3[6]) = 23;
  v15 = type metadata accessor for CRLRealTimeDataEncryptor();
  v16 = *(v36 + 80);
  v37 = *(v36 + 88);
  v17 = v16;
  v34 = v16;
  v18 = type metadata accessor for CRLRealTimeMessenger();

  v5[19] = sub_1012FE270(v4, v40, v5, 0, 0, v9, v15, v18, &off_101886E48, &off_10188C8C8);

  v19 = type metadata accessor for TaskPriority();
  v20 = *(*(v19 - 8) + 56);
  v20(v38, 1, 1, v19);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = v5[18];
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v17;
  v23[5] = v37;
  v23[6] = v22;
  v23[7] = v2;
  v23[8] = v39;
  v23[9] = v21;

  v5[20] = sub_10064191C(0, 0, v38, &unk_1014866E8, v23);

  v20(v38, 1, 1, v19);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = v5[18];
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v34;
  v26[5] = v37;
  v26[6] = v25;
  v26[7] = v2;
  v26[8] = v39;
  v26[9] = v24;

  v5[21] = sub_10064191C(0, 0, v38, &unk_1014866F8, v26);

  v20(v38, 1, 1, v19);
  v27 = swift_allocObject();
  swift_weakInit();

  v28 = v5[18];
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v34;
  v29[5] = v37;
  v29[6] = v28;
  v29[7] = v2;
  v29[8] = v39;
  v29[9] = v27;

  v30 = sub_10064191C(0, 0, v38, &unk_101486708, v29);
  swift_unknownObjectRelease();

  v5[22] = v30;

  v31 = v0[1];
  v32 = v0[15];

  return v31(v32);
}

uint64_t sub_1008DEDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[55] = a6;
  v7[56] = a7;
  v7[53] = a4;
  v7[54] = a5;
  sub_1005B981C(&qword_1019F7020);
  v7[57] = swift_task_alloc();
  v8 = type metadata accessor for Participant();
  v7[58] = v8;
  v7[59] = *(v8 - 8);
  v7[60] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v7[61] = v9;
  v7[62] = *(v9 - 8);
  v7[63] = swift_task_alloc();
  v10 = sub_1005B981C(&qword_101A07490);
  v7[64] = v10;
  v7[65] = *(v10 - 8);
  v7[66] = swift_task_alloc();
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();
  sub_1005B981C(&qword_101A07498);
  v7[69] = swift_task_alloc();
  v11 = sub_1005B981C(&qword_101A074A0);
  v7[70] = v11;
  v7[71] = *(v11 - 8);
  v7[72] = swift_task_alloc();
  v12 = sub_1005B981C(&qword_101A074A8);
  v7[73] = v12;
  v7[74] = *(v12 - 8);
  v7[75] = swift_task_alloc();

  return _swift_task_switch(sub_1008DF08C, 0, 0);
}

uint64_t sub_1008DF08C()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  type metadata accessor for CRLRealTimeMessage();
  sub_1008E4028(&unk_101A33EA0, type metadata accessor for CRLRealTimeMessage);
  sub_1008E4028(&unk_101A33E90, type metadata accessor for CRLRealTimeMessage);
  GroupSessionMessenger.messages<A>(of:)();
  GroupSessionMessenger.Messages.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = sub_1008E4384(&qword_101A074B0, &qword_101A074A8);
  v5 = swift_task_alloc();
  v0[76] = v5;
  *v5 = v0;
  v5[1] = sub_1008DF248;
  v6 = v0[73];
  v7 = v0[69];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v6, v4);
}

uint64_t sub_1008DF248()
{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = sub_1008DFA00;
  }

  else
  {
    v2 = sub_1008DF35C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1008DF378()
{
  v1 = v0[69];
  v2 = v0[64];
  if ((*(v0[65] + 48))(v1, 1, v2) == 1)
  {
    (*(v0[74] + 8))(v0[75], v0[73]);

    v3 = v0[1];

    return v3();
  }

  v5 = v0[68];
  v6 = v0[62];
  v7 = v0[63];
  v8 = v0[61];
  v9 = *v1;
  v0[78] = *v1;
  v10 = *(v2 + 48);
  *v5 = v9;
  v11 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v0[79] = v11;
  v12 = *(v11 - 8);
  (*(v12 + 32))(&v5[v10], &v1[v10], v11);
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  v16 = *(v6 + 8);
  v64 = v13;
  v0[80] = v13;
  v0[81] = v14;
  v16(v7, v8);
  if (qword_1019F1998 != -1)
  {
LABEL_38:
    swift_once();
  }

  v0[82] = qword_101AD6C90;
  v0[83] = CRLAnalyticsOSSignpostManager.beginSignpostIntervalWithReturnedState(for:)(25, 1);
  if (qword_1019F2158 != -1)
  {
    swift_once();
  }

  v17 = static OS_os_log.crlRealTimeMessageTransfer;
  v0[84] = static OS_os_log.crlRealTimeMessageTransfer;
  v0[85] = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146D2A0;
  v20 = *(v9 + 24);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = (v20 + 48);
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23 >> 62;
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v28 = v24 + 16;
          v26 = *(v24 + 16);
          v27 = *(v28 + 8);
          v18 = __OFSUB__(v27, v26);
          v24 = v27 - v26;
          if (v18)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v24 = 0;
        }
      }

      else if (v25)
      {
        v18 = __OFSUB__(HIDWORD(v24), v24);
        LODWORD(v24) = HIDWORD(v24) - v24;
        if (v18)
        {
          goto LABEL_37;
        }

        v24 = v24;
      }

      else
      {
        v24 = BYTE6(*v23);
      }

      v18 = __OFADD__(v24, 24);
      v29 = v24 + 24;
      if (v18)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 = __OFADD__(v22, v29);
      v22 += v29;
      if (v18)
      {
        goto LABEL_35;
      }

      v23 += 3;
      --v21;
    }

    while (v21);
    v18 = __OFADD__(v22, 16);
    v30 = v22 + 16;
    if (v18)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v30 = 16;
    if (v18)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  v31 = v0[68];
  v32 = v0[67];
  v63 = v17;
  v57 = v11;
  v34 = v0[63];
  v33 = v0[64];
  v35 = v0[60];
  v59 = v0[61];
  v60 = v16;
  v36 = v0[59];
  v58 = v0[58];
  v61 = v0[54];
  v62 = v0[55];
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v30;
  sub_10000BE14(v31, v32, &qword_101A07490);

  v37 = *(v33 + 48);
  GroupSessionMessenger.MessageContext.source.getter();
  v38 = *(v12 + 8);
  v0[86] = v38;
  v0[87] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v32 + v37, v57);
  Participant.id.getter();
  (*(v36 + 8))(v35, v58);
  v39 = UUID.uuidString.getter();
  v41 = v40;
  v60(v34, v59);
  v8 = &type metadata for String;
  *(inited + 96) = &type metadata for String;
  v42 = sub_1000053B0();
  v0[88] = v42;
  *(inited + 72) = v39;
  *(inited + 80) = v41;
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v42;
  *(inited + 104) = v42;
  *(inited + 112) = v61;
  *(inited + 120) = v62;
  *(inited + 176) = &type metadata for String;
  *(inited + 184) = v42;
  *(inited + 152) = v64;
  *(inited + 160) = v15;

  v43 = static os_log_type_t.default.getter();
  sub_100005404(v63, &_mh_execute_header, v43, "Process messages of size %{public}d received from sender %{public}@ on group session UUID: %{public}@ localId:%{public}@", 120, 2, inited);
  swift_setDeallocating();
  v0[89] = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  Strong = swift_weakLoadStrong();
  v0[90] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1008DFA8C, Strong, 0);
  }

LABEL_31:
  v45 = v0[88];
  v46 = v0[84];
  v47 = v0[83];
  v48 = v0[81];
  v49 = v0[80];
  v50 = v0[68];
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_10146C6B0;
  *(v51 + 56) = v8;
  *(v51 + 64) = v45;
  *(v51 + 32) = v49;
  *(v51 + 40) = v48;
  v52 = static os_log_type_t.default.getter();
  sub_100005404(v46, &_mh_execute_header, v52, "Done processing localId:%{public}@", 34, 2, v51);
  swift_setDeallocating();
  sub_100005070(v51 + 32);
  CRLAnalyticsOSSignpostManager.endSignpostInterval(for:state:)(25, 1, v47);

  sub_10000CAAC(v50, &qword_101A07490);
  v53 = sub_1008E4384(&qword_101A074B0, &qword_101A074A8);
  v54 = swift_task_alloc();
  v0[76] = v54;
  *v54 = v0;
  v54[1] = sub_1008DF248;
  v55 = v0[73];
  v56 = v0[69];

  return dispatch thunk of AsyncIteratorProtocol.next()(v56, v55, v53);
}

uint64_t sub_1008DFA00()
{
  *(v0 + 416) = *(v0 + 616);
  sub_1005B981C(&unk_1019F6B40);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1008DFA8C()
{
  *(v0 + 728) = swift_unknownObjectWeakLoadStrong();

  return _swift_task_switch(sub_1008DFB04, 0, 0);
}

uint64_t sub_1008DFB04()
{
  v1 = v0[91];
  if (v1)
  {
    v2 = v0[86];
    v3 = v0[79];
    v4 = v0[66];
    v5 = v0[64];
    v6 = v0[59];
    v22 = v0[58];
    v7 = v0[57];
    sub_10000BE14(v0[68], v4, &qword_101A07490);

    v8 = v4 + *(v5 + 48);
    GroupSessionMessenger.MessageContext.source.getter();
    v2(v8, v3);
    (*(v6 + 56))(v7, 0, 1, v22);

    return _swift_task_switch(sub_1008DFD74, v1, 0);
  }

  else
  {
    v9 = v0[88];
    v10 = v0[84];
    v11 = v0[83];
    v12 = v0[81];
    v13 = v0[80];
    v14 = v0[68];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v9;
    *(inited + 32) = v13;
    *(inited + 40) = v12;
    v16 = static os_log_type_t.default.getter();
    sub_100005404(v10, &_mh_execute_header, v16, "Done processing localId:%{public}@", 34, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    CRLAnalyticsOSSignpostManager.endSignpostInterval(for:state:)(25, 1, v11);

    sub_10000CAAC(v14, &qword_101A07490);
    v17 = sub_1008E4384(&qword_101A074B0, &qword_101A074A8);
    v18 = swift_task_alloc();
    v0[76] = v18;
    *v18 = v0;
    v18[1] = sub_1008DF248;
    v19 = v0[73];
    v20 = v0[69];

    return dispatch thunk of AsyncIteratorProtocol.next()(v20, v19, v17);
  }
}

uint64_t sub_1008DFD74()
{
  v1 = *(v0[78] + 16);
  if (v1)
  {
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v2 = static OS_os_log.realTimeSync;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for UInt64;
    *(inited + 64) = &protocol witness table for UInt64;
    *(inited + 32) = v1;
    *(inited + 96) = &type metadata for UInt64;
    *(inited + 104) = &protocol witness table for UInt64;
    *(inited + 72) = 0;
    v4 = static os_log_type_t.default.getter();
    sub_100005404(v2, &_mh_execute_header, v4, "Received a message with version (%d) that is greater than the last supported version (%d) by this device. Dropping the message", 126, 2, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    goto LABEL_5;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[92] = Strong;
  if (!Strong)
  {
LABEL_5:
    swift_unknownObjectRelease();
    sub_10000CAAC(v0[57], &qword_1019F7020);

    return _swift_task_switch(sub_1008DFF70, 0, 0);
  }

  v6 = swift_task_alloc();
  v0[93] = v6;
  *v6 = v0;
  v6[1] = sub_1008E0108;
  v7 = v0[78];
  v8 = v0[57];

  return sub_10105CAE0(v7, v8);
}

uint64_t sub_1008DFF70()
{
  v1 = v0[88];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[68];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  v8 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v8, "Done processing localId:%{public}@", 34, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  CRLAnalyticsOSSignpostManager.endSignpostInterval(for:state:)(25, 1, v3);

  sub_10000CAAC(v6, &qword_101A07490);
  v9 = sub_1008E4384(&qword_101A074B0, &qword_101A074A8);
  v10 = swift_task_alloc();
  v0[76] = v10;
  *v10 = v0;
  v10[1] = sub_1008DF248;
  v11 = v0[73];
  v12 = v0[69];

  return dispatch thunk of AsyncIteratorProtocol.next()(v12, v11, v9);
}

uint64_t sub_1008E0108()
{
  v1 = *(*v0 + 728);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1008E0234, v1, 0);
}

uint64_t sub_1008E0234()
{
  swift_unknownObjectRelease();
  sub_10000CAAC(*(v0 + 456), &qword_1019F7020);

  return _swift_task_switch(sub_1008DFF70, 0, 0);
}

uint64_t sub_1008E02B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[41] = a6;
  v7[42] = a7;
  v7[39] = a4;
  v7[40] = a5;
  sub_1005B981C(&qword_1019F7020);
  v7[43] = swift_task_alloc();
  v8 = type metadata accessor for Participant();
  v7[44] = v8;
  v7[45] = *(v8 - 8);
  v7[46] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v7[47] = v9;
  v7[48] = *(v9 - 8);
  v7[49] = swift_task_alloc();
  v10 = sub_1005B981C(&qword_101A07468);
  v7[50] = v10;
  v7[51] = *(v10 - 8);
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  sub_1005B981C(&qword_101A07470);
  v7[54] = swift_task_alloc();
  v11 = sub_1005B981C(&qword_101A07478);
  v7[55] = v11;
  v7[56] = *(v11 - 8);
  v7[57] = swift_task_alloc();
  v12 = sub_1005B981C(&qword_101A07480);
  v7[58] = v12;
  v7[59] = *(v12 - 8);
  v7[60] = swift_task_alloc();

  return _swift_task_switch(sub_1008E058C, 0, 0);
}

uint64_t sub_1008E058C()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  type metadata accessor for CRLEncryptedRealTimeMessage();
  sub_1008E4028(&qword_101A07438, type metadata accessor for CRLEncryptedRealTimeMessage);
  sub_1008E4028(&unk_101A33E80, type metadata accessor for CRLEncryptedRealTimeMessage);
  GroupSessionMessenger.messages<A>(of:)();
  GroupSessionMessenger.Messages.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = sub_1008E4384(&qword_101A07488, &qword_101A07480);
  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v5[1] = sub_1008E0744;
  v6 = v0[58];
  v7 = v0[54];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v6, v4);
}

uint64_t sub_1008E0744()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_1008E0E9C;
  }

  else
  {
    v2 = sub_1008E0858;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1008E0874()
{
  v1 = v0[54];
  v2 = v0[50];
  if ((*(v0[51] + 48))(v1, 1, v2) == 1)
  {
    (*(v0[59] + 8))(v0[60], v0[58]);

    v3 = v0[1];

    return v3();
  }

  v5 = v0[53];
  v7 = v0[48];
  v6 = v0[49];
  v8 = v0[47];
  v9 = *v1;
  v0[63] = *v1;
  v10 = *(v2 + 48);
  *v5 = v9;
  v11 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v0[64] = v11;
  v62 = *(v11 - 8);
  (*(v62 + 32))(&v5[v10], &v1[v10], v11);
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  v15 = *(v7 + 8);
  v0[65] = v12;
  v0[66] = v13;
  v15(v6, v8);
  if (qword_1019F1998 != -1)
  {
    swift_once();
  }

  v0[67] = qword_101AD6C90;
  v0[68] = CRLAnalyticsOSSignpostManager.beginSignpostIntervalWithReturnedState(for:)(26, 1);
  if (qword_1019F2158 != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.crlRealTimeMessageTransfer;
  v0[69] = static OS_os_log.crlRealTimeMessageTransfer;
  v0[70] = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v20 = inited;
  *(inited + 16) = xmmword_10146D2A0;
  v21 = *(v9 + 24);
  v22 = *(v9 + 32);
  v23 = v22 >> 62;
  if ((v22 >> 62) <= 1)
  {
    if (!v23)
    {
      v21 = BYTE6(v22);
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v23 != 2)
  {
    v21 = 0;
    goto LABEL_19;
  }

  v26 = v21 + 16;
  v24 = *(v21 + 16);
  v25 = *(v26 + 8);
  v27 = __OFSUB__(v25, v24);
  v21 = v25 - v24;
  if (v27)
  {
    __break(1u);
LABEL_16:
    v27 = __OFSUB__(HIDWORD(v21), v21);
    LODWORD(v21) = HIDWORD(v21) - v21;
    if (v27)
    {
LABEL_28:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(inited, v18, v19);
    }

    v21 = v21;
  }

LABEL_19:
  v27 = __OFADD__(v21, 24);
  v28 = v21 + 24;
  if (v27)
  {
    __break(1u);
    goto LABEL_28;
  }

  v30 = v0[52];
  v29 = v0[53];
  v61 = v16;
  v32 = v0[49];
  v31 = v0[50];
  v33 = v0[46];
  v57 = v15;
  v58 = v0[47];
  v34 = v11;
  v35 = v0[45];
  v55 = v0[44];
  v59 = v0[40];
  v60 = v0[41];
  v20[7] = &type metadata for Int;
  v20[8] = &protocol witness table for Int;
  v20[4] = v28;
  sub_10000BE14(v29, v30, &qword_101A07468);

  v56 = v12;
  v36 = v14;
  v37 = *(v31 + 48);
  GroupSessionMessenger.MessageContext.source.getter();
  v38 = *(v62 + 8);
  v0[71] = v38;
  v0[72] = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v30 + v37, v34);
  Participant.id.getter();
  (*(v35 + 8))(v33, v55);
  v39 = UUID.uuidString.getter();
  v41 = v40;
  v57(v32, v58);
  v20[12] = &type metadata for String;
  v42 = sub_1000053B0();
  v0[73] = v42;
  v20[9] = v39;
  v20[10] = v41;
  v20[17] = &type metadata for String;
  v20[18] = v42;
  v20[13] = v42;
  v20[14] = v59;
  v20[15] = v60;
  v20[22] = &type metadata for String;
  v20[23] = v42;
  v20[19] = v56;
  v20[20] = v36;

  v43 = static os_log_type_t.default.getter();
  sub_100005404(v61, &_mh_execute_header, v43, "Process received encrypted message of size %{public}d received from sender %{public}@ on group session UUID: %{public}@ localId:%{publlic}@", 139, 2, v20);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  Strong = swift_weakLoadStrong();
  v0[74] = Strong;
  if (!Strong)
  {
    v45 = v0[73];
    v46 = v0[69];
    v47 = v0[68];
    v48 = v0[66];
    v49 = v0[65];
    v50 = v0[53];
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_10146C6B0;
    *(v51 + 56) = &type metadata for String;
    *(v51 + 64) = v45;
    *(v51 + 32) = v49;
    *(v51 + 40) = v48;
    v52 = static os_log_type_t.default.getter();
    sub_100005404(v46, &_mh_execute_header, v52, "Done processing encrypted localId:%{publlic}@", 45, 2, v51);
    swift_setDeallocating();
    sub_100005070(v51 + 32);
    CRLAnalyticsOSSignpostManager.endSignpostInterval(for:state:)(26, 1, v47);

    sub_10000CAAC(v50, &qword_101A07468);
    v53 = sub_1008E4384(&qword_101A07488, &qword_101A07480);
    v54 = swift_task_alloc();
    v0[61] = v54;
    *v54 = v0;
    v54[1] = sub_1008E0744;
    v18 = v0[58];
    inited = v0[54];
    v19 = v53;

    return dispatch thunk of AsyncIteratorProtocol.next()(inited, v18, v19);
  }

  return _swift_task_switch(sub_1008E0F28, Strong, 0);
}

uint64_t sub_1008E0E9C()
{
  *(v0 + 304) = *(v0 + 496);
  sub_1005B981C(&unk_1019F6B40);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1008E0F28()
{
  *(v0 + 600) = *(*(v0 + 592) + 152);

  return _swift_task_switch(sub_1008E0FA0, 0, 0);
}

void sub_1008E0FA0()
{
  if (v0[75])
  {
    v1 = v0[71];
    v2 = v0[64];
    v3 = v0[52];
    v4 = v0[50];
    v5 = v0[44];
    v6 = v0[45];
    v7 = v0[43];
    sub_10000BE14(v0[53], v3, &qword_101A07468);

    v8 = *(v4 + 48);
    GroupSessionMessenger.MessageContext.source.getter();
    v1(v3 + v8, v2);
    (*(v6 + 56))(v7, 0, 1, v5);
    v9 = swift_task_alloc();
    v0[76] = v9;
    *v9 = v0;
    v9[1] = sub_1008E10E4;
    v10 = v0[63];
    v11 = v0[43];

    sub_1012F84A8(v10, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1008E10E4()
{
  v1 = *(*v0 + 344);

  sub_10000CAAC(v1, &qword_1019F7020);

  return _swift_task_switch(sub_1008E1228, 0, 0);
}

uint64_t sub_1008E1228()
{
  v1 = v0[73];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[66];
  v5 = v0[65];
  v6 = v0[53];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  v8 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v8, "Done processing encrypted localId:%{publlic}@", 45, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  CRLAnalyticsOSSignpostManager.endSignpostInterval(for:state:)(26, 1, v3);

  sub_10000CAAC(v6, &qword_101A07468);
  v9 = sub_1008E4384(&qword_101A07488, &qword_101A07480);
  v10 = swift_task_alloc();
  v0[61] = v10;
  *v10 = v0;
  v10[1] = sub_1008E0744;
  v11 = v0[58];
  v12 = v0[54];

  return dispatch thunk of AsyncIteratorProtocol.next()(v12, v11, v9);
}

uint64_t sub_1008E13C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[46] = a6;
  v7[47] = a7;
  v7[44] = a4;
  v7[45] = a5;
  sub_1005B981C(&qword_1019F7020);
  v7[48] = swift_task_alloc();
  v8 = type metadata accessor for Participant();
  v7[49] = v8;
  v7[50] = *(v8 - 8);
  v7[51] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v7[52] = v9;
  v7[53] = *(v9 - 8);
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  v10 = sub_1005B981C(&qword_101A07440);
  v7[56] = v10;
  v7[57] = *(v10 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v7[61] = swift_task_alloc();
  sub_1005B981C(&qword_101A07448);
  v7[62] = swift_task_alloc();
  v11 = sub_1005B981C(&qword_101A07450);
  v7[63] = v11;
  v7[64] = *(v11 - 8);
  v7[65] = swift_task_alloc();
  v12 = sub_1005B981C(&qword_101A07458);
  v7[66] = v12;
  v7[67] = *(v12 - 8);
  v7[68] = swift_task_alloc();

  return _swift_task_switch(sub_1008E16BC, 0, 0);
}

uint64_t sub_1008E16BC()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  type metadata accessor for CRLChunkedRealTimeMessage();
  sub_1008E4028(&qword_101A07428, type metadata accessor for CRLChunkedRealTimeMessage);
  sub_1008E4028(&qword_101A07430, type metadata accessor for CRLChunkedRealTimeMessage);
  GroupSessionMessenger.messages<A>(of:)();
  GroupSessionMessenger.Messages.makeAsyncIterator()();
  (*(v3 + 8))(v1, v2);
  swift_beginAccess();
  v4 = sub_1008E4384(&qword_101A07460, &qword_101A07458);
  v5 = swift_task_alloc();
  v0[69] = v5;
  *v5 = v0;
  v5[1] = sub_1008E1874;
  v6 = v0[66];
  v7 = v0[62];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v6, v4);
}

uint64_t sub_1008E1874()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1008E20D4;
  }

  else
  {
    v2 = sub_1008E1988;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1008E19A4()
{
  v1 = v0[62];
  v2 = v0[56];
  if ((*(v0[57] + 48))(v1, 1, v2) == 1)
  {
    (*(v0[67] + 8))(v0[68], v0[66]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[61];
    v6 = v0[55];
    v7 = v0[52];
    v8 = v0[53];
    v9 = *v1;
    v0[71] = *v1;
    v10 = *(v2 + 48);
    *v5 = v9;
    v11 = type metadata accessor for GroupSessionMessenger.MessageContext();
    v0[72] = v11;
    v60 = *(v11 - 8);
    v61 = v11;
    (*(v60 + 32))(&v5[v10], &v1[v10]);
    UUID.init()();
    v12 = UUID.uuidString.getter();
    v13 = *(v8 + 8);
    v58 = v12;
    v0[73] = v12;
    v59 = v14;
    v0[74] = v14;
    v57 = v13;
    v13(v6, v7);
    if (qword_1019F1998 != -1)
    {
      swift_once();
    }

    v0[75] = qword_101AD6C90;
    v0[76] = CRLAnalyticsOSSignpostManager.beginSignpostIntervalWithReturnedState(for:)(27, 1);
    if (qword_1019F2158 != -1)
    {
      swift_once();
    }

    v15 = v0[60];
    v16 = v0[61];
    v17 = v0[58];
    v62 = v0[59];
    v18 = v0[55];
    v19 = v0[56];
    v20 = v0[53];
    v21 = v0[52];
    v48 = v0[51];
    v49 = v0[54];
    v50 = v0[50];
    v51 = v0[49];
    v54 = v0[45];
    v55 = v0[46];
    v56 = static OS_os_log.crlRealTimeMessageTransfer;
    v0[77] = static OS_os_log.crlRealTimeMessageTransfer;
    v0[78] = sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    v53 = v15;
    sub_10000BE14(v16, v15, &qword_101A07440);
    v52 = *(v19 + 48);
    v46 = v21;
    (*(v20 + 16))(v18, *v15 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_chainID, v21);

    v23 = UUID.uuidString.getter();
    v25 = v24;
    v57(v18, v21);
    *(inited + 56) = &type metadata for String;
    v26 = sub_1000053B0();
    v0[79] = v26;
    *(inited + 64) = v26;
    *(inited + 32) = v23;
    *(inited + 40) = v25;
    sub_10000BE14(v16, v62, &qword_101A07440);
    v47 = *(v19 + 48);
    LOWORD(v18) = *(*v62 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index);

    *(inited + 96) = &type metadata for UInt16;
    *(inited + 104) = &protocol witness table for UInt16;
    *(inited + 72) = v18;
    sub_10000BE14(v16, v17, &qword_101A07440);

    v27 = *(v19 + 48);
    GroupSessionMessenger.MessageContext.source.getter();
    v28 = *(v60 + 8);
    v0[80] = v28;
    v0[81] = (v60 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28(v17 + v27, v61);
    Participant.id.getter();
    (*(v50 + 8))(v48, v51);
    v29 = UUID.uuidString.getter();
    v31 = v30;
    v57(v49, v46);
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v26;
    *(inited + 112) = v29;
    *(inited + 120) = v31;
    *(inited + 176) = &type metadata for String;
    *(inited + 184) = v26;
    *(inited + 152) = v54;
    *(inited + 160) = v55;
    *(inited + 216) = &type metadata for String;
    *(inited + 224) = v26;
    *(inited + 192) = v58;
    *(inited + 200) = v59;

    v28(v62 + v47, v61);
    v28(v53 + v52, v61);
    v32 = static os_log_type_t.default.getter();
    sub_100005404(v56, &_mh_execute_header, v32, "Process received chunked message with chainID: %{public}@ chunkIndex: %{public}d received from sender %{public}@ on group session UUID: %{public}@ localId:%{publlic}@", 166, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    Strong = swift_weakLoadStrong();
    v0[82] = Strong;
    if (Strong)
    {

      return _swift_task_switch(sub_1008E2160, Strong, 0);
    }

    else
    {
      v34 = v0[79];
      v35 = v0[77];
      v36 = v0[76];
      v37 = v0[74];
      v38 = v0[73];
      v39 = v0[61];
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_10146C6B0;
      *(v40 + 56) = &type metadata for String;
      *(v40 + 64) = v34;
      *(v40 + 32) = v38;
      *(v40 + 40) = v37;
      v41 = static os_log_type_t.default.getter();
      sub_100005404(v35, &_mh_execute_header, v41, "Done processing chunked localId:%{publlic}@", 43, 2, v40);
      swift_setDeallocating();
      sub_100005070(v40 + 32);
      CRLAnalyticsOSSignpostManager.endSignpostInterval(for:state:)(27, 1, v36);

      sub_10000CAAC(v39, &qword_101A07440);
      v42 = sub_1008E4384(&qword_101A07460, &qword_101A07458);
      v43 = swift_task_alloc();
      v0[69] = v43;
      *v43 = v0;
      v43[1] = sub_1008E1874;
      v44 = v0[66];
      v45 = v0[62];

      return dispatch thunk of AsyncIteratorProtocol.next()(v45, v44, v42);
    }
  }
}

uint64_t sub_1008E20D4()
{
  *(v0 + 344) = *(v0 + 560);
  sub_1005B981C(&unk_1019F6B40);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1008E2160()
{
  *(v0 + 664) = *(*(v0 + 656) + 152);

  return _swift_task_switch(sub_1008E21D8, 0, 0);
}

void sub_1008E21D8()
{
  if (v0[83])
  {
    v1 = v0[80];
    v2 = v0[72];
    v3 = v0[60];
    v4 = v0[56];
    v5 = v0[49];
    v6 = v0[50];
    v7 = v0[48];
    sub_10000BE14(v0[61], v3, &qword_101A07440);

    v8 = *(v4 + 48);
    GroupSessionMessenger.MessageContext.source.getter();
    v1(v3 + v8, v2);
    (*(v6 + 56))(v7, 0, 1, v5);
    v9 = swift_task_alloc();
    v0[84] = v9;
    *v9 = v0;
    v9[1] = sub_1008E231C;
    v10 = v0[71];
    v11 = v0[48];

    sub_1012F9090(v10, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1008E231C()
{
  v1 = *(*v0 + 384);

  sub_10000CAAC(v1, &qword_1019F7020);

  return _swift_task_switch(sub_1008E2460, 0, 0);
}

uint64_t sub_1008E2460()
{
  v1 = v0[79];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[74];
  v5 = v0[73];
  v6 = v0[61];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  v8 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v8, "Done processing chunked localId:%{publlic}@", 43, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  CRLAnalyticsOSSignpostManager.endSignpostInterval(for:state:)(27, 1, v3);

  sub_10000CAAC(v6, &qword_101A07440);
  v9 = sub_1008E4384(&qword_101A07460, &qword_101A07458);
  v10 = swift_task_alloc();
  v0[69] = v10;
  *v10 = v0;
  v10[1] = sub_1008E1874;
  v11 = v0[66];
  v12 = v0[62];

  return dispatch thunk of AsyncIteratorProtocol.next()(v12, v11, v9);
}

void *sub_1008E25F8()
{
  if (v0[20])
  {

    Task.cancel()();
  }

  if (v0[21])
  {

    Task.cancel()();
  }

  if (v0[22])
  {

    Task.cancel()();
  }

  sub_1000C1024((v0 + 14));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1008E26F8()
{
  sub_1008E25F8();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1008E273C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1008E275C, v1, 0);
}

uint64_t sub_1008E275C()
{
  if (qword_1019F1998 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v0[4] = qword_101AD6C90;
  v2 = CRLAnalyticsOSSignpostManager.beginSignpostIntervalWithReturnedState(for:)(28, 1);
  v0[5] = v2;
  v5 = *(v1 + 152);
  v0[6] = v5;
  if (v5)
  {

    v2 = sub_1008E2828;
    v3 = v5;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1008E2828()
{
  v1 = v0[6];
  v2 = sub_100B8D408();
  v3 = v1 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation__configuration;
  v4 = *(v3 + *(type metadata accessor for CRLRealTimeMessengerConfiguration() + 20)) < v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1008E2900;
  v6 = v0[2];

  return sub_1012FC954(v6, v4);
}

uint64_t sub_1008E2900()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1008E2AC0;
  }

  else
  {
    v4 = sub_1008E2A48;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1008E2A48()
{
  CRLAnalyticsOSSignpostManager.endSignpostInterval(for:state:)(28, 1, *(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008E2AC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008E2B24(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1008E2B44, v1, 0);
}

uint64_t sub_1008E2B44()
{
  if (qword_1019F1998 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v0[4] = qword_101AD6C90;
  result = CRLAnalyticsOSSignpostManager.beginSignpostIntervalWithReturnedState(for:)(29, 1);
  v0[5] = result;
  v3 = *(v1 + 152);
  v0[6] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_1008E2C44;
    v5 = v0[2];

    return sub_1012FC27C(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008E2C44()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1008E2DE4;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1008E2D6C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1008E2D6C()
{
  CRLAnalyticsOSSignpostManager.endSignpostInterval(for:state:)(29, 1, *(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008E2DE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008E2E50(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for Participants();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1008E2F10, v1, 0);
}

uint64_t sub_1008E2F10()
{
  if (qword_1019F2158 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v16 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = static OS_os_log.crlRealTimeMessageTransfer;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = sub_100B8D408();
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  v7 = *(v3 + 128);
  v8 = *(v3 + 136);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = sub_1000053B0();
  *(inited + 72) = v7;
  *(inited + 80) = v8;

  v9 = static os_log_type_t.default.getter();
  sub_100005404(v5, &_mh_execute_header, v9, "Transfer messages of size %{public}d to all participants on group session UUID: %{public}@.", 91, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v0[16] = v4;
  (*(v1 + 104))(v16, enum case for Participants.all(_:), v2);
  v10 = swift_task_alloc();
  v0[22] = v10;
  v11 = type metadata accessor for CRLRealTimeMessage();
  v12 = sub_1008E4028(&unk_101A33EA0, type metadata accessor for CRLRealTimeMessage);
  v13 = sub_1008E4028(&unk_101A33E90, type metadata accessor for CRLRealTimeMessage);
  *v10 = v0;
  v10[1] = sub_1008E318C;
  v14 = v0[21];

  return GroupSessionMessenger.send<A>(_:to:)(v0 + 16, v14, v11, v12, v13);
}

uint64_t sub_1008E318C()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *v1;
  v5[23] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[18];

    return _swift_task_switch(sub_1008E3334, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_1008E3334()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008E3398(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for Participants();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1008E3458, v1, 0);
}

uint64_t sub_1008E3458()
{
  if (qword_1019F2158 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = static OS_os_log.crlRealTimeMessageTransfer;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v10)
    {
      v8 = BYTE6(v9);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v10 != 2)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v13 = v8 + 16;
  v11 = *(v8 + 16);
  v12 = *(v13 + 8);
  v14 = __OFSUB__(v12, v11);
  v8 = v12 - v11;
  if (v14)
  {
    __break(1u);
LABEL_10:
    v14 = __OFSUB__(HIDWORD(v8), v8);
    LODWORD(v8) = HIDWORD(v8) - v8;
    if (v14)
    {
LABEL_18:
      __break(1u);
      return GroupSessionMessenger.send<A>(_:to:)(inited, v4, v5, v6, v7);
    }

    v8 = v8;
  }

LABEL_13:
  v14 = __OFADD__(v8, 24);
  v15 = v8 + 24;
  if (v14)
  {
    __break(1u);
    goto LABEL_18;
  }

  v16 = v0[20];
  v29 = v0[21];
  v18 = v0[18];
  v17 = v0[19];
  v19 = v0[17];
  *(inited + 32) = v15;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  v20 = v2;
  v21 = *(v18 + 128);
  v22 = *(v18 + 136);
  *(inited + 96) = &type metadata for String;
  v23 = inited;
  *(inited + 104) = sub_1000053B0();
  *(v23 + 72) = v21;
  *(v23 + 80) = v22;

  v24 = static os_log_type_t.default.getter();
  sub_100005404(v20, &_mh_execute_header, v24, "Transfer encryptedCKRecordData of size %{public}d to all participants on group session UUID: %{public}@.", 104, 2, v23);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v0[16] = v19;
  (*(v16 + 104))(v29, enum case for Participants.all(_:), v17);
  v25 = swift_task_alloc();
  v0[22] = v25;
  v26 = type metadata accessor for CRLEncryptedRealTimeMessage();
  v27 = sub_1008E4028(&qword_101A07438, type metadata accessor for CRLEncryptedRealTimeMessage);
  v7 = sub_1008E4028(&unk_101A33E80, type metadata accessor for CRLEncryptedRealTimeMessage);
  *v25 = v0;
  v25[1] = sub_1008E3730;
  v4 = v0[21];
  inited = (v0 + 16);
  v5 = v26;
  v6 = v27;

  return GroupSessionMessenger.send<A>(_:to:)(inited, v4, v5, v6, v7);
}

uint64_t sub_1008E3730()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *v1;
  v5[23] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[18];

    return _swift_task_switch(sub_1008E43D8, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_1008E38D8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Participants();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1008E3998, v1, 0);
}

uint64_t sub_1008E3998()
{
  v0[2] = v0[3];
  (*(v0[6] + 104))(v0[7], enum case for Participants.all(_:), v0[5]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = type metadata accessor for CRLChunkedRealTimeMessage();
  v3 = sub_1008E4028(&qword_101A07428, type metadata accessor for CRLChunkedRealTimeMessage);
  v4 = sub_1008E4028(&qword_101A07430, type metadata accessor for CRLChunkedRealTimeMessage);
  *v1 = v0;
  v1[1] = sub_1008E3AF0;
  v5 = v0[7];

  return GroupSessionMessenger.send<A>(_:to:)(v0 + 2, v5, v2, v3, v4);
}

uint64_t sub_1008E3AF0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  v5[9] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[4];

    return _swift_task_switch(sub_100739620, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_1008E3C98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_1008E273C(a1);
}

uint64_t sub_1008E3D30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_1008E2B24(a1);
}

uint64_t sub_1008E3DC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_1008E2E50(a1);
}

uint64_t sub_1008E3E5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_1008E3398(a1);
}

uint64_t sub_1008E3EF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_1008E38D8(a1);
}

uint64_t sub_1008E3F84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D3D4;

  return sub_1006837A4(a1, a2);
}

uint64_t sub_1008E4028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1008E4070(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1008DEDA8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1008E415C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D3D4;

  return sub_1008E02B4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1008E4248()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1008E4298(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1008E13C0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1008E4384(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1008E44B8()
{
  result = qword_101A074D0;
  if (!qword_101A074D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A074D0);
  }

  return result;
}

uint64_t sub_1008E4554@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v67 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLBoardCRDTData(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v72 = v10;
  v73 = v11;
  __chkstk_darwin(v10);
  v70 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v69 = &v55 - v14;
  __chkstk_darwin(v15);
  v71 = &v55 - v16;
  __chkstk_darwin(v17);
  v64 = &v55 - v18;
  v19 = type metadata accessor for CRLBoardEntity();
  v20 = v19[5];
  sub_1005B981C(&qword_101A07610);
  v66 = EntityProperty<>.init()();
  *(a2 + v20) = v66;
  v21 = v19[6];
  sub_1005B981C(&qword_101A07618);
  v68 = EntityProperty<>.init()();
  *(a2 + v21) = v68;
  v22 = v19[7];
  v65 = EntityProperty<>.init()();
  *(a2 + v22) = v65;
  v23 = v19[8];
  sub_1005B981C(&qword_101A07620);
  *(a2 + v23) = EntityProperty<>.init()();
  v24 = v19[9];
  *(a2 + v24) = EntityProperty<>.init()();
  v25 = v19[10];
  *(a2 + v25) = EntityProperty<>.init()();
  *(a2 + v19[12]) = xmmword_101486780;
  swift_unknownObjectWeakInit();
  v26 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v27 = *&a1[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v28 = a1;
  v29 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v56 = type metadata accessor for CRLBoardCRDTData;
  sub_10000C5CC(v27 + v29, v9, type metadata accessor for CRLBoardCRDTData);
  v61 = v7;
  sub_1005B981C(&qword_1019F4858);
  CRMaxRegister.wrappedValue.getter();
  v59 = type metadata accessor for CRLBoardCRDTData;
  sub_100025D88(v9, type metadata accessor for CRLBoardCRDTData);
  Date.init(timeIntervalSinceReferenceDate:)();
  v30 = v71;
  static Date.now.getter();
  v58 = sub_101303CCC();
  v57 = v31;
  v62 = *(v73 + 8);
  v63 = v73 + 8;
  v62(v30, v72);

  v32 = *&v28[v26];
  v33 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10000C5CC(v32 + v33, v9, type metadata accessor for CRLBoardCRDTData);
  type metadata accessor for CRLSharedBoardMetadataCRDTData(0);
  sub_1005B981C(&qword_1019F4850);
  CRRegister.wrappedValue.getter();
  v34 = v59;
  sub_100025D88(v9, v59);
  Date.init(timeIntervalSinceReferenceDate:)();
  v35 = (a2 + v19[11]);
  v36 = v57;
  *v35 = v58;
  v35[1] = v36;
  v37 = v28;
  v60 = v28;
  v38 = *&v28[v26];
  v39 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v40 = v56;
  sub_10000C5CC(v38 + v39, v9, v56);
  sub_1005B981C(&unk_1019F5250);
  v41 = v67;
  CRRegister.wrappedValue.getter();
  sub_100025D88(v9, v34);
  v42 = (*&v37[v26] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v43 = *v42;
  v44 = v42[1];

  sub_10084BD4C(v41, v43, v44, a2);
  v45 = *&v37[v26];
  v46 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10000C5CC(v45 + v46, v9, v40);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_100025D88(v9, v34);
  EntityProperty.wrappedValue.setter();
  v47 = v72;
  v48 = *(v73 + 16);
  v49 = v69;
  v50 = v64;
  v48(v69, v64, v72);
  v51 = v70;
  v48(v70, v49, v47);
  EntityProperty.wrappedValue.setter();
  v52 = v62;
  v62(v49, v47);
  v53 = v71;
  v48(v49, v71, v47);
  v48(v51, v49, v47);
  EntityProperty.wrappedValue.setter();

  v52(v49, v47);
  v52(v53, v47);
  return (v52)(v50, v47);
}

uint64_t sub_1008E4BDC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v56 = a3;
  v54 = a2;
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v52 - v12;
  v14 = sub_1005B981C(&unk_1019FA3E0);
  __chkstk_darwin(v14 - 8);
  v16 = &v52 - v15;
  v17 = _s5BoardVMa(0);
  v18 = *(v17 - 1);
  __chkstk_darwin(v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1008E6890(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    result = sub_1008E6900(v16);
    v22 = v3;
    goto LABEL_10;
  }

  sub_1008E69D8(v16, v20, _s5BoardVMa);
  v23 = v3;
  if (static UUID.== infix(_:_:)())
  {
    v24 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
    v25 = *&v20[v24];
    v26 = *&v20[v24 + 8];
    v27 = (v3 + v24);
    v28 = v25 == *v27 && v26 == v27[1];
    if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v29 = v17[8];
      v52 = sub_101303CCC();
      v31 = v30;

      v32 = type metadata accessor for CRLBoardEntity();
      v55 = v23;
      v33 = (v23 + *(v32 + 44));

      *v33 = v52;
      v33[1] = v31;
      v34 = *(v9 + 16);
      v34(v13, &v20[v29], v8);
      v35 = v53;
      v34(v53, v13, v8);
      EntityProperty.wrappedValue.setter();
      v52 = *(v9 + 8);
      v52(v13, v8);
      v36 = &v20[v17[6]];
      v37 = *(v36 + 1);
      v57 = *v36;
      v58 = v37;

      EntityProperty.wrappedValue.setter();
      v34(v13, &v20[v17[7]], v8);
      v34(v35, v13, v8);
      EntityProperty.wrappedValue.setter();
      v52(v13, v8);
      LOBYTE(v57) = v20[v17[14]];
      EntityProperty.wrappedValue.setter();
      LOBYTE(v57) = v20[v17[11]];
      EntityProperty.wrappedValue.setter();
      v22 = v55;
      LOBYTE(v57) = v20[v17[12]];
      EntityProperty.wrappedValue.setter();
      result = sub_100025D88(v20, _s5BoardVMa);
LABEL_10:
      v38 = v56;
      if (v56 >> 60 != 15)
      {
        v39 = (v22 + *(type metadata accessor for CRLBoardEntity() + 48));
        v40 = *v39;
        v41 = v39[1];
        v42 = v54;
        sub_100024E98(v54, v38);
        result = sub_100025870(v40, v41);
        *v39 = v42;
        v39[1] = v38;
      }

      return result;
    }
  }

  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v43 = static OS_os_log.appIntents;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  sub_10000C5CC(v3, v7, type metadata accessor for CRLBoardIdentifier);
  v45 = sub_10084B8C8();
  v47 = v46;
  sub_100025D88(v7, type metadata accessor for CRLBoardIdentifier);
  *(inited + 56) = &type metadata for String;
  v48 = sub_1000053B0();
  *(inited + 64) = v48;
  *(inited + 32) = v45;
  *(inited + 40) = v47;
  v49 = sub_10084B8C8();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v48;
  *(inited + 72) = v49;
  *(inited + 80) = v50;
  v51 = static os_log_type_t.error.getter();
  sub_100005404(v43, &_mh_execute_header, v51, "Tried to update a board entity (id: %@) with an invalid board view model (id: %@)", 81, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  return sub_100025D88(v20, _s5BoardVMa);
}

uint64_t sub_1008E51D4()
{
  sub_1005B981C(&qword_1019F6280);
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  qword_101AD6B58 = AppDependency.__allocating_init(key:manager:)();
  qword_101AD6B78 = type metadata accessor for CRLBoardEntityQueryPerformer();
  unk_101AD6B80 = &off_1018ADAB0;
  sub_10002C58C(qword_101AD6B60);
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.appIntents;
  return Logger.init(_:)();
}

void sub_1008E52DC(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardEntity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_1019F1588 != -1)
    {
      swift_once();
    }

    sub_10000C5CC(a1, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardEntity);
    v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    sub_1008E69D8(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for CRLBoardEntity);
    v9 = objc_opt_self();
    v10 = v6;
    v11 = [v9 standardOptions];
    sub_10003FC70(&qword_101A07650, type metadata accessor for CRLBoardEntity);
    static CKShareTransferRepresentation.ExportedShare.prepareShare(container:allowedSharingOptions:preparationHandler:)();
  }

  else
  {
    if (qword_1019F2238 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.appIntents;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v24 = UUID.uuidString.getter();
    v25 = v14;

    v15._countAndFlagsBits = 58;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);

    v16 = (a1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
    v17 = *v16;
    v18 = v16[1];

    v19._countAndFlagsBits = v17;
    v19._object = v18;
    String.append(_:)(v19);

    v20 = v24;
    v21 = v25;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v20;
    *(inited + 40) = v21;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v22, "Unable to access board library from entity: %@", 46, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    type metadata accessor for AppIntentError();
    sub_10003FC70(&qword_1019F8B08, &type metadata accessor for AppIntentError);
    swift_allocError();
    static AppIntentError.Unrecoverable.unknown.getter();
    swift_willThrow();
  }
}

uint64_t sub_1008E56A4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1008E5748;

  return sub_1010A91B4(a2, 0);
}

uint64_t sub_1008E5748(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else if (a1)
  {
    v8 = *(v5 + 8);

    return v8(a1);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v4 + 40) = v9;
    *v9 = v5;
    v9[1] = sub_1008E5904;
    v10 = *(v4 + 24);

    return sub_1010AE958(v10);
  }
}

uint64_t sub_1008E5904(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1008E5A04()
{
  v0 = sub_1005B981C(&qword_101A07640);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_1005B981C(&qword_101A07648);
  __chkstk_darwin(v4);
  v5 = sub_1005B981C(&qword_101A07638);
  sub_10061655C(v5, qword_101AD6B88);
  sub_1005EB3DC(v5, qword_101AD6B88);
  type metadata accessor for CRLBoardEntity();
  sub_10003FC70(&qword_1019F6290, type metadata accessor for CRLBoardEntity);
  EntityURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000101575260;
  v6._countAndFlagsBits = 0xD000000000000014;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v6);
  (*(v1 + 104))(v3, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  EntityURLRepresentation.StringInterpolation.appendInterpolation(_:)();
  (*(v1 + 8))(v3, v0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v7);
  return EntityURLRepresentation.init(stringInterpolation:)();
}

uint64_t sub_1008E5C34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_1005B981C(&qword_1019F8B00);
  __chkstk_darwin(v3 - 8);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v26 = &v24 - v6;
  v7 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for LocalizedStringResource();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v13);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  v15 = type metadata accessor for CRLBoardEntity();
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v28);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  LocalizedStringResource.init(stringInterpolation:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*(v1 + *(v15 + 44)));
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
  v19 = 1;
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v11 + 56))(v9, 0, 1, v10);
  v20 = v25;
  v21 = v2 + *(v15 + 48);
  if (*(v21 + 8) >> 60 != 15)
  {
    sub_100024E98(*v21, *(v21 + 8));
    DisplayRepresentation.Image.init(data:isTemplate:)();
    v19 = 0;
  }

  v22 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v22 - 8) + 56))(v20, v19, 1, v22);
  sub_1008E6968(v20, v26);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_1008E5FA0@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1019F1948 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1008E6C14(&qword_101AD6B58, v2);
}

uint64_t sub_1008E60A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1950 != -1)
  {
    swift_once();
  }

  v2 = sub_1005B981C(&qword_101A07638);
  v3 = sub_1005EB3DC(v2, qword_101AD6B88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1008E6260()
{
  sub_10003FC70(&qword_101A07630, type metadata accessor for CRLBoardEntity);
  v1 = URLRepresentableEntity.urlRepresentationParameter.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1008E62FC(uint64_t a1)
{
  v2 = sub_10003FC70(&qword_101A07628, type metadata accessor for CRLBoardEntity);

  return static AssistantSchemaEntity.typeDisplayRepresentation.getter(a1, v2);
}

uint64_t sub_1008E63BC(uint64_t a1)
{
  v2 = sub_10003FC70(&qword_1019F6290, type metadata accessor for CRLBoardEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1008E6484(uint64_t a1)
{
  v2 = sub_10003FC70(&qword_101A074F0, type metadata accessor for CRLBoardEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1008E6500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = type metadata accessor for UUID();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = type metadata accessor for CRLBoardIdentifier(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10084CD4C(v7, a1, a2);
  v20 = v19;
  (*(v24 + 32))(v10, v7, v25);
  v21 = &v10[*(v8 + 20)];
  *v21 = v18;
  v21[1] = v20;
  sub_1008E69D8(v10, v13, type metadata accessor for CRLBoardIdentifierStorage);
  sub_1008E69D8(v13, v17, type metadata accessor for CRLBoardIdentifierStorage);
  v22 = v26;
  sub_1008E69D8(v17, v26, type metadata accessor for CRLBoardIdentifier);
  return (*(v15 + 56))(v22, 0, 1, v14);
}

uint64_t sub_1008E677C()
{
  v7 = UUID.uuidString.getter();

  v1._countAndFlagsBits = 58;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);

  v2 = (v0 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v3 = *v2;
  v4 = v2[1];

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  String.append(_:)(v5);

  return v7;
}

uint64_t sub_1008E6890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019FA3E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008E6900(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_1019FA3E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1008E6968(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F8B00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008E69D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008E6A40()
{
  v2 = *(type metadata accessor for CRLBoardEntity() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1008E6B18;

  return sub_1008E56A4(v4, v0 + v3);
}

uint64_t sub_1008E6B18(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void *sub_1008E6C7C()
{
  result = sub_100043E40(_swiftEmptyArrayStorage);
  off_101A07658 = result;
  return result;
}

uint64_t sub_1008E6CA4()
{
  v0 = sub_1005B981C(&qword_101A0A320);
  sub_10061655C(v0, qword_101A07660);
  v1 = sub_1005EB3DC(v0, qword_101A07660);
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

id sub_1008E6D68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

unint64_t sub_1008E6DB4()
{
  v0 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v93 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_100043E40(_swiftEmptyArrayStorage);
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  v5 = sub_1005B981C(&qword_1019F3480);
  v6 = *(*(v5 - 8) + 56);
  v6(v2, 1, 5, v5);
  sub_100009260();
  sub_10006BF9C(v2);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v4 objectForKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v99 = 0u;
    v100 = 0u;
  }

  v97 = v99;
  v98 = v100;
  if (!*(&v100 + 1))
  {
    sub_10000CAAC(&v97, &unk_1019F4D00);
    goto LABEL_19;
  }

  sub_1005B981C(&unk_101A07740);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v9 = v95;
  v95 = off_101A32648;
  v96 = *(&off_101A32648 + 1);

  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16))
  {
    goto LABEL_18;
  }

  v10 = sub_1000640CC(&v97);
  if ((v11 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100064288(*(v9 + 56) + 32 * v10, &v99);
  sub_100064234(&v97);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_80;
  }

  v12 = v95;
  v95 = off_101A32628;
  v96 = *(&off_101A32628 + 1);

  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16))
  {
    goto LABEL_18;
  }

  v13 = sub_1000640CC(&v97);
  if ((v14 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100064288(*(v9 + 56) + 32 * v13, &v99);
  sub_100064234(&v97);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_80:

    goto LABEL_19;
  }

  v15 = v95;
  v95 = off_101A32638;
  v96 = *(&off_101A32638 + 1);

  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16) || (v16 = sub_1000640CC(&v97), (v17 & 1) == 0))
  {
LABEL_18:

    sub_100064234(&v97);
    goto LABEL_19;
  }

  sub_100064288(*(v9 + 56) + 32 * v16, &v99);
  sub_100064234(&v97);

  if ((swift_dynamicCast() & 1) != 0 && v95 <= 2)
  {
    v55 = String._bridgeToObjectiveC()();

    v56 = v94;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v97 = v56;
    sub_100043E54(v55, 0x6472616F426C6C61, 0xEF794274726F5373, isUniquelyReferenced_nonNull_native);
    v58 = v97;
    v59 = [objc_allocWithZone(NSNumber) initWithBool:v12];
    v60 = swift_isUniquelyReferenced_nonNull_native();
    *&v97 = v58;
    sub_100043E54(v59, 0xD000000000000016, 0x8000000101575480, v60);
    v61 = v97;
    v62 = [objc_allocWithZone(NSNumber) initWithBool:v15];
    v63 = swift_isUniquelyReferenced_nonNull_native();
    *&v97 = v61;
    sub_100043E54(v62, 0xD000000000000014, 0x80000001015754A0, v63);
    v94 = v97;
  }

LABEL_19:
  v18 = [v3 standardUserDefaults];
  v6(v2, 2, 5, v5);
  sub_100009260();
  sub_10006BF9C(v2);
  v19 = String._bridgeToObjectiveC()();

  v20 = [v18 objectForKey:v19];

  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v99 = 0u;
    v100 = 0u;
  }

  v97 = v99;
  v98 = v100;
  if (!*(&v100 + 1))
  {
    sub_10000CAAC(&v97, &unk_1019F4D00);
    goto LABEL_39;
  }

  sub_1005B981C(&unk_101A07740);
  if (swift_dynamicCast())
  {
    v21 = v95;
    v95 = off_101A32648;
    v96 = *(&off_101A32648 + 1);

    AnyHashable.init<A>(_:)();
    if (!*(v21 + 16))
    {
      goto LABEL_38;
    }

    v22 = sub_1000640CC(&v97);
    if ((v23 & 1) == 0)
    {
      goto LABEL_38;
    }

    sub_100064288(*(v21 + 56) + 32 * v22, &v99);
    sub_100064234(&v97);
    if (swift_dynamicCast())
    {
      v24 = v95;
      v95 = off_101A32628;
      v96 = *(&off_101A32628 + 1);

      AnyHashable.init<A>(_:)();
      if (!*(v21 + 16))
      {
        goto LABEL_38;
      }

      v25 = sub_1000640CC(&v97);
      if ((v26 & 1) == 0)
      {
        goto LABEL_38;
      }

      sub_100064288(*(v21 + 56) + 32 * v25, &v99);
      sub_100064234(&v97);
      if (swift_dynamicCast())
      {
        v27 = v95;
        v95 = off_101A32638;
        v96 = *(&off_101A32638 + 1);

        AnyHashable.init<A>(_:)();
        if (*(v21 + 16))
        {
          v28 = sub_1000640CC(&v97);
          if (v29)
          {
            sub_100064288(*(v21 + 56) + 32 * v28, &v99);
            sub_100064234(&v97);

            if (swift_dynamicCast())
            {
              switch(v95)
              {
                case 0uLL:
                  HIDWORD(v93) = v27;
                  goto LABEL_88;
                case 2uLL:
                  HIDWORD(v93) = v27;
                  goto LABEL_88;
                case 1uLL:
                  HIDWORD(v93) = v27;
LABEL_88:
                  v64 = String._bridgeToObjectiveC()();

                  v65 = v94;
                  v66 = swift_isUniquelyReferenced_nonNull_native();
                  *&v97 = v65;
                  sub_100043E54(v64, 0xD000000000000012, 0x8000000101575420, v66);

                  v67 = v97;
                  v68 = [objc_allocWithZone(NSNumber) initWithBool:v24];
                  v69 = swift_isUniquelyReferenced_nonNull_native();
                  *&v97 = v67;
                  sub_100043E54(v68, 0xD000000000000019, 0x8000000101575440, v69);
                  v70 = v97;
                  v71 = objc_allocWithZone(NSNumber);
                  v72 = [v71 initWithBool:HIDWORD(v93)];
                  v73 = swift_isUniquelyReferenced_nonNull_native();
                  *&v97 = v70;
                  sub_100043E54(v72, 0xD000000000000017, 0x8000000101575460, v73);
                  v94 = v97;
                  goto LABEL_39;
              }
            }

            goto LABEL_39;
          }
        }

LABEL_38:

        sub_100064234(&v97);
        goto LABEL_39;
      }
    }
  }

LABEL_39:
  v30 = [v3 standardUserDefaults];
  v6(v2, 3, 5, v5);
  sub_100009260();
  sub_10006BF9C(v2);
  v31 = String._bridgeToObjectiveC()();

  v32 = [v30 objectForKey:v31];

  if (v32)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v99 = 0u;
    v100 = 0u;
  }

  v97 = v99;
  v98 = v100;
  if (!*(&v100 + 1))
  {
    sub_10000CAAC(&v97, &unk_1019F4D00);
    goto LABEL_59;
  }

  sub_1005B981C(&unk_101A07740);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_59;
  }

  v33 = v95;
  v95 = off_101A32648;
  v96 = *(&off_101A32648 + 1);

  AnyHashable.init<A>(_:)();
  if (!*(v33 + 16))
  {
    goto LABEL_58;
  }

  v34 = sub_1000640CC(&v97);
  if ((v35 & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100064288(*(v33 + 56) + 32 * v34, &v99);
  sub_100064234(&v97);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_82;
  }

  v36 = v95;
  v95 = off_101A32628;
  v96 = *(&off_101A32628 + 1);

  AnyHashable.init<A>(_:)();
  if (!*(v33 + 16))
  {
    goto LABEL_58;
  }

  v37 = sub_1000640CC(&v97);
  if ((v38 & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100064288(*(v33 + 56) + 32 * v37, &v99);
  sub_100064234(&v97);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_82:

    goto LABEL_59;
  }

  v39 = v95;
  v95 = off_101A32638;
  v96 = *(&off_101A32638 + 1);

  AnyHashable.init<A>(_:)();
  if (!*(v33 + 16) || (v40 = sub_1000640CC(&v97), (v41 & 1) == 0))
  {
LABEL_58:

    sub_100064234(&v97);
    goto LABEL_59;
  }

  sub_100064288(*(v33 + 56) + 32 * v40, &v99);
  sub_100064234(&v97);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_59;
  }

  if (v95)
  {
    if (v95 == 2)
    {
      HIDWORD(v93) = v39;
    }

    else
    {
      if (v95 != 1)
      {
        goto LABEL_59;
      }

      HIDWORD(v93) = v39;
    }
  }

  else
  {
    HIDWORD(v93) = v39;
  }

  v74 = String._bridgeToObjectiveC()();

  v75 = v94;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  *&v97 = v75;
  sub_100043E54(v74, 0xD000000000000014, 0x80000001015753C0, v76);

  v77 = v97;
  v78 = [objc_allocWithZone(NSNumber) initWithBool:v36];
  v79 = swift_isUniquelyReferenced_nonNull_native();
  *&v97 = v77;
  sub_100043E54(v78, 0xD00000000000001BLL, 0x80000001015753E0, v79);
  v80 = v97;
  v81 = objc_allocWithZone(NSNumber);
  v82 = [v81 initWithBool:HIDWORD(v93)];
  v83 = swift_isUniquelyReferenced_nonNull_native();
  *&v97 = v80;
  sub_100043E54(v82, 0xD000000000000019, 0x8000000101575400, v83);
  v94 = v97;
LABEL_59:
  v42 = [v3 standardUserDefaults];
  v6(v2, 4, 5, v5);
  sub_100009260();
  sub_10006BF9C(v2);
  v43 = String._bridgeToObjectiveC()();

  v44 = [v42 objectForKey:v43];

  if (v44)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v99 = 0u;
    v100 = 0u;
  }

  v97 = v99;
  v98 = v100;
  if (!*(&v100 + 1))
  {
    sub_10000CAAC(&v97, &unk_1019F4D00);
    return v94;
  }

  sub_1005B981C(&unk_101A07740);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return v94;
  }

  v45 = v95;
  v95 = off_101A32648;
  v96 = *(&off_101A32648 + 1);

  AnyHashable.init<A>(_:)();
  if (!*(v45 + 16))
  {
    goto LABEL_78;
  }

  v46 = sub_1000640CC(&v97);
  if ((v47 & 1) == 0)
  {
    goto LABEL_78;
  }

  sub_100064288(*(v45 + 56) + 32 * v46, &v99);
  sub_100064234(&v97);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_83;
  }

  v48 = v95;
  v95 = off_101A32628;
  v96 = *(&off_101A32628 + 1);

  AnyHashable.init<A>(_:)();
  if (!*(v45 + 16))
  {
    goto LABEL_78;
  }

  v49 = sub_1000640CC(&v97);
  if ((v50 & 1) == 0)
  {
    goto LABEL_78;
  }

  sub_100064288(*(v45 + 56) + 32 * v49, &v99);
  sub_100064234(&v97);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_83:

    return v94;
  }

  v51 = v95;
  v95 = off_101A32638;
  v96 = *(&off_101A32638 + 1);

  AnyHashable.init<A>(_:)();
  if (!*(v45 + 16) || (v52 = sub_1000640CC(&v97), (v53 & 1) == 0))
  {
LABEL_78:

    sub_100064234(&v97);
    return v94;
  }

  sub_100064288(*(v45 + 56) + 32 * v52, &v99);
  sub_100064234(&v97);

  if ((swift_dynamicCast() & 1) == 0 || v95 && v95 != 2 && v95 != 1)
  {
    return v94;
  }

  v84 = String._bridgeToObjectiveC()();

  v85 = v94;
  v86 = swift_isUniquelyReferenced_nonNull_native();
  *&v97 = v85;
  sub_100043E54(v84, 0xD000000000000012, 0x8000000101575340, v86);

  v87 = v97;
  v88 = [objc_allocWithZone(NSNumber) initWithBool:v48];
  v89 = swift_isUniquelyReferenced_nonNull_native();
  *&v97 = v87;
  sub_100043E54(v88, 0xD000000000000019, 0x8000000101575380, v89);
  v90 = v97;
  v91 = [objc_allocWithZone(NSNumber) initWithBool:v51];
  v92 = swift_isUniquelyReferenced_nonNull_native();
  *&v97 = v90;
  sub_100043E54(v91, 0xD000000000000017, 0x80000001015753A0, v92);
  return v97;
}

uint64_t sub_1008E7F40(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;

    v20 = v19;
    a2(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = sub_10000BE7C(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        sub_100AA5680();
      }
    }

    else
    {
      sub_100A8B700(v29, v42 & 1);
      v31 = sub_10000BE7C(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v39;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_100035F90();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1008E81C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v59 = a2;
  v60 = a4;
  v58 = a3;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v51 - v11;
  v12 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v18 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = a1;
  v20 = static os_log_type_t.default.getter();
  sub_100005404(v18, &_mh_execute_header, v20, "Snapshot's All Boards count: %d", 31, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  if ((byte_101A07678 & 1) == 0)
  {
    if (qword_1019F1960 != -1)
    {
      swift_once();
    }

    v21 = sub_1005EB3DC(v12, qword_101A07660);
    swift_beginAccess();
    sub_10005F954(v21, v17);
    v22 = *(v8 + 48);
    v23 = v22(v17, 1, v7);
    sub_10000CAAC(v17, &qword_101A0A320);
    if (v23 == 1)
    {
      Date.init(timeIntervalSinceNow:)();
      (*(v8 + 56))(v14, 0, 1, v7);
      swift_beginAccess();
      sub_100015CDC(v14, v21);
      swift_endAccess();
    }

    v52 = v8;
    if (qword_1019F1958 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = off_101A07658;
    if (*(off_101A07658 + 2) && (v25 = sub_10000BE7C(0x6472616F426C6C61, 0xED0000746E756F43), (v26 & 1) != 0))
    {
      v27 = *(v24[7] + 8 * v25);
      swift_endAccess();
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        v30 = v27;
        v31 = [v29 integerValue];
        v57 = v29;
        if (v31 < a1)
        {
          goto LABEL_18;
        }

LABEL_17:
        v32 = *(off_101A07658 + 2);
        v57 = v29;
        if (v32)
        {
LABEL_19:
          if (!v22(v21, 1, v7) && (v43 = v52, v44 = v55, (*(v52 + 16))(v55, v21, v7), v45 = v56, static Date.now.getter(), v46 = Date.compare(_:)(), v47 = *(v43 + 8), v47(v45, v7), v47(v44, v7), v46 == -1) || (a5 & 1) != 0)
          {
            byte_101A07678 = 1;
            v48 = objc_opt_self();
            v49 = String._bridgeToObjectiveC()();
            sub_1006364DC();

            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            [v48 sendEventInDomain:v49 lazily:1 eventPayload:isa];
          }

          return;
        }

LABEL_18:
        v53 = v22;
        v54 = a5;
        v33 = objc_allocWithZone(NSNumber);
        v34 = [v33 initWithBool:v58 & 1];
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = off_101A07658;
        off_101A07658 = 0x8000000000000000;
        sub_100043E54(v34, 0x6F4D6B7261446E69, 0xEA00000000006564, isUniquelyReferenced_nonNull_native);
        off_101A07658 = v61;
        swift_endAccess();
        v36 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
        swift_beginAccess();
        v37 = swift_isUniquelyReferenced_nonNull_native();
        v61 = off_101A07658;
        off_101A07658 = 0x8000000000000000;
        sub_100043E54(v36, 0x6472616F426C6C61, 0xED0000746E756F43, v37);
        off_101A07658 = v61;
        swift_endAccess();
        v38 = objc_allocWithZone(NSNumber);
        v39 = [v38 initWithInteger:v59];
        swift_beginAccess();
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v61 = off_101A07658;
        off_101A07658 = 0x8000000000000000;
        sub_100043E54(v39, 0xD000000000000012, 0x8000000101575320, v40);
        off_101A07658 = v61;
        swift_endAccess();
        swift_beginAccess();
        v41 = v60;

        v42 = swift_isUniquelyReferenced_nonNull_native();
        v61 = off_101A07658;
        off_101A07658 = 0x8000000000000000;
        sub_1008E7F40(v41, sub_1008E6D68, 0, v42, &v61);

        off_101A07658 = v61;
        swift_endAccess();
        LOBYTE(a5) = v54;
        v22 = v53;
        goto LABEL_19;
      }
    }

    else
    {
      swift_endAccess();
    }

    v29 = 0;
    v57 = 0;
    if (a1 > 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }
}

void sub_1008E899C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1008E8A14(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_1008E8AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67.receiver = v3;
  v67.super_class = type metadata accessor for CRLUSDZEditor();
  objc_msgSendSuper2(&v67, "selectionDidChangeFromSelection:toSelection:withFlags:", a1, a2, a3);
  v64 = [v3 interactiveCanvasController];
  if (v64)
  {
    type metadata accessor for CRLBoardItemSelection();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      v9 = type metadata accessor for CRLUSDZItem();
      v10 = *(v8 + OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems);
      __chkstk_darwin(v9);
      v11 = v58;
      v58[2] = v12;
      v13 = &type metadata for Swift.AnyObject;
      v62 = a2;
      v63 = v59;
      if ((v10 & 0xC000000000000001) == 0)
      {
        v32 = *(v10 + 32);
        v33 = v32 & 0x3F;
        v34 = ((1 << v32) + 63) >> 6;
        v18 = 8 * v34;

        v60 = v34;
        if (v33 <= 0xD)
        {
          v35 = a2;
          goto LABEL_25;
        }

        goto LABEL_64;
      }

      v14 = _swiftEmptySetSingleton;
      v68 = _swiftEmptySetSingleton;

      v15 = a2;
      v11 = __CocoaSet.makeIterator()();
      v10 = v11;
      v16 = __CocoaSet.Iterator.next()();
      if (v16)
      {
        v17 = v16;
        v18 = type metadata accessor for CRLBoardItem(0);
        v19 = v17;
        do
        {
          v65 = v19;
          swift_dynamicCast();
          v20 = [v66 isKindOfClass:swift_getObjCClassFromMetadata()];
          a2 = v66;
          if (v20)
          {
            v21 = *(v14 + 16);
            if (*(v14 + 24) <= v21)
            {
              sub_100E75360(v21 + 1);
            }

            v14 = v68;
            v10 = a2;
            v22 = NSObject._rawHashValue(seed:)(v68[5]);
            v23 = v14 + 56;
            v24 = -1 << *(v14 + 32);
            v25 = v22 & ~v24;
            v26 = v25 >> 6;
            if (((-1 << v25) & ~*(v14 + 56 + 8 * (v25 >> 6))) != 0)
            {
              v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 56 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v28 = 0;
              v29 = (63 - v24) >> 6;
              do
              {
                if (++v26 == v29 && (v28 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_62;
                }

                v30 = v26 == v29;
                if (v26 == v29)
                {
                  v26 = 0;
                }

                v28 |= v30;
                v31 = *(v23 + 8 * v26);
              }

              while (v31 == -1);
              v27 = __clz(__rbit64(~v31)) + (v26 << 6);
            }

            *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
            *(*(v14 + 48) + 8 * v27) = a2;
            ++*(v14 + 16);
          }

          else
          {
          }

          v10 = v11;
          v19 = __CocoaSet.Iterator.next()();
        }

        while (v19);
      }

LABEL_41:
      v61 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v10 = __CocoaSet.makeIterator()();
          type metadata accessor for CRLBoardItem(0);
          sub_1008F2AD4(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
          Set.Iterator.init(_cocoa:)();
          v14 = v68;
          v11 = v69;
          v45 = v70;
          v46 = v71;
          v13 = v72;
        }

        else
        {
          v46 = 0;
          v47 = -1 << *(v14 + 32);
          v11 = (v14 + 56);
          v45 = ~v47;
          v48 = -v47;
          v49 = v48 < 64 ? ~(-1 << v48) : -1;
          v13 = v49 & *(v14 + 56);
        }

        v63 = v45;
        v50 = (v45 + 64) >> 6;
        v18 = &selRef_initWithObject_;
        if (v14 < 0)
        {
          break;
        }

LABEL_49:
        v51 = v46;
        v52 = v13;
        a2 = v46;
        if (v13)
        {
LABEL_53:
          v53 = (v52 - 1) & v52;
          v10 = *(*(v14 + 48) + ((a2 << 9) | (8 * __clz(__rbit64(v52)))));
          if (v10)
          {
            goto LABEL_57;
          }

          goto LABEL_59;
        }

        while (1)
        {
          a2 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            break;
          }

          if (a2 >= v50)
          {
            goto LABEL_59;
          }

          v52 = *&v11[8 * a2];
          ++v51;
          if (v52)
          {
            goto LABEL_53;
          }
        }

LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:

        v56 = a2;
        if (swift_stdlib_isStackAllocationSafe())
        {

LABEL_25:
          v59[1] = v58;
          __chkstk_darwin(v35);
          v11 = v58 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
          bzero(v11, v18);
          v61 = 0;
          v36 = 0;
          v37 = 1 << *(v10 + 32);
          v38 = -1;
          if (v37 < 64)
          {
            v38 = ~(-1 << v37);
          }

          v18 = v38 & *(v10 + 56);
          v39 = (v37 + 63) >> 6;
          while (2)
          {
            v40 = v13;
            do
            {
              if (!v18)
              {
                v42 = v36;
                while (1)
                {
                  v36 = v42 + 1;
                  if (__OFADD__(v42, 1))
                  {
                    goto LABEL_63;
                  }

                  if (v36 >= v39)
                  {
                    goto LABEL_40;
                  }

                  v43 = *(v10 + 56 + 8 * v36);
                  ++v42;
                  if (v43)
                  {
                    v41 = __clz(__rbit64(v43));
                    v18 = (v43 - 1) & v43;
                    goto LABEL_36;
                  }
                }
              }

              v41 = __clz(__rbit64(v18));
              v18 &= v18 - 1;
LABEL_36:
              v13 = v41 | (v36 << 6);
              a2 = *(*(v10 + 48) + 8 * v13);
            }

            while (![a2 isKindOfClass:swift_getObjCClassFromMetadata()]);
            *&v11[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
            v44 = __OFADD__(v61++, 1);
            v13 = v40;
            if (!v44)
            {
              continue;
            }

            break;
          }

          __break(1u);
LABEL_40:
          v14 = sub_1010F47D4(v11, v60, v61, v10);
          goto LABEL_41;
        }

        v57 = swift_slowAlloc();
        v14 = sub_1008F26DC(v57, v60, v10, sub_1008F2C4C, v11);
        v61 = 0;
      }

      while (1)
      {
        v54 = __CocoaSet.Iterator.next()();
        if (!v54)
        {
          break;
        }

        v65 = v54;
        type metadata accessor for CRLBoardItem(0);
        swift_dynamicCast();
        v10 = v66;
        a2 = v46;
        v53 = v13;
        if (!v66)
        {
          break;
        }

LABEL_57:
        v55 = [v64 repForInfo:v10];
        [v55 invalidateKnobs];

        v46 = a2;
        v13 = v53;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_49;
        }
      }

LABEL_59:
      sub_100035F90();
    }
  }
}

uint64_t sub_1008E91E8()
{
  v1 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  *&v2 = __chkstk_darwin(v1).n128_u64[0];
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1008F2AD4(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(v6 + 16);
  }

  if (v7 != 1 || (v8 = [v0 boardItems], v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v8, v10 = sub_100BC17C8(v9), , !v10))
  {
LABEL_11:
    v12 = objc_opt_self();
    v13 = [v12 _atomicIncrementAssertCount];
    v46 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v46);
    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v13;
    v22 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v22;
    v23 = sub_1005CF04C();
    *(inited + 104) = v23;
    *(inited + 72) = v14;
    *(inited + 136) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 112) = v17;
    *(inited + 120) = v19;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v24;
    *(inited + 152) = 36;
    v25 = v46;
    *(inited + 216) = v22;
    *(inited + 224) = v23;
    *(inited + 192) = v25;
    v26 = v14;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v29, "expected single selected board item to be a 3D object", 53, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v30 = swift_allocObject();
    v30[2] = 8;
    v30[3] = 0;
    v30[4] = 0;
    v30[5] = 0;
    v31 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    [v12 handleFailureInFunction:v32 file:v33 lineNumber:36 isFatal:0 format:v34 args:v31];

    v35 = 0;
    return v35 & 1;
  }

  type metadata accessor for CRLUSDZItem();
  result = swift_dynamicCastClass();
  if (!result)
  {
    goto LABEL_10;
  }

  if (qword_1019F1AB8 != -1)
  {
    v43 = result;
    swift_once();
    result = v43;
  }

  if (byte_101AD6F08)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (**(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
  {
    swift_beginAccess();

    sub_1005B981C(&unk_101A2EF00);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v45 = *&v4[*(v1 + 24)];
    sub_1008F2A74(v4, type metadata accessor for CRLUSDZAssetDataStruct);
    v44 = matrix_identity_float4x4.columns[3];
    v36 = CRL3DRotation.rawValue.getter(v45);
    v38 = v37;
    v39 = CRL3DRotation.rawValue.getter(v44);
    v41 = v40;
    v42 = sub_1009F9488(v36, v38, v39, v40);
    sub_10002640C(v39, v41);
    sub_10002640C(v36, v38);

    v35 = v42 ^ 1;
    return v35 & 1;
  }

  __break(1u);
  return result;
}

void sub_1008E985C()
{
  v1 = [v0 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1008F2AD4(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  if (v3 != 1)
  {
    goto LABEL_14;
  }

  v4 = [v0 boardItems];
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_100BC17C8(v5);

  if (!v6)
  {
    goto LABEL_14;
  }

  type metadata accessor for CRLUSDZItem();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_14:
    v11 = objc_opt_self();
    v12 = [v11 _atomicIncrementAssertCount];
    v58[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v58);
    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v12;
    v21 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v21;
    v22 = sub_1005CF04C();
    *(inited + 104) = v22;
    *(inited + 72) = v13;
    *(inited + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 112) = v16;
    *(inited + 120) = v18;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v23;
    *(inited + 152) = 45;
    v24 = v58[0];
    *(inited + 216) = v21;
    *(inited + 224) = v22;
    *(inited + 192) = v24;
    v25 = v13;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v28, "expected single selected board item to be a 3D object", 53, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v29 = swift_allocObject();
    v29[2] = 8;
    v29[3] = 0;
    v29[4] = 0;
    v29[5] = 0;
    v30 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    [v11 handleFailureInFunction:v31 file:v32 lineNumber:45 isFatal:0 format:v33 args:v30];

    return;
  }

  v8 = v7;
  v9 = [v0 interactiveCanvasController];
  if (v9)
  {
    v10 = v9;
    v57 = [v9 repForInfo:v8];

    if (v57)
    {
      type metadata accessor for CRLUSDZRep(0);
      if (swift_dynamicCastClass())
      {
        sub_100CF5EB4();

        return;
      }
    }
  }

  v34 = objc_opt_self();
  v35 = [v34 _atomicIncrementAssertCount];
  v58[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v58);
  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  v38 = [v37 lastPathComponent];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v42 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_10146CA70;
  *(v43 + 56) = &type metadata for Int32;
  *(v43 + 64) = &protocol witness table for Int32;
  *(v43 + 32) = v35;
  v44 = sub_100006370(0, &qword_1019F4D30);
  *(v43 + 96) = v44;
  v45 = sub_1005CF04C();
  *(v43 + 104) = v45;
  *(v43 + 72) = v36;
  *(v43 + 136) = &type metadata for String;
  v46 = sub_1000053B0();
  *(v43 + 112) = v39;
  *(v43 + 120) = v41;
  *(v43 + 176) = &type metadata for UInt;
  *(v43 + 184) = &protocol witness table for UInt;
  *(v43 + 144) = v46;
  *(v43 + 152) = 50;
  v47 = v58[0];
  *(v43 + 216) = v44;
  *(v43 + 224) = v45;
  *(v43 + 192) = v47;
  v48 = v36;
  v49 = v47;
  v50 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v43);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v51 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v51, "Unable to get rep for 3D object.", 32, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v52 = swift_allocObject();
  v52[2] = 8;
  v52[3] = 0;
  v52[4] = 0;
  v52[5] = 0;
  v53 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v54 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v55 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v56 = String._bridgeToObjectiveC()();

  [v34 handleFailureInFunction:v54 file:v55 lineNumber:50 isFatal:0 format:v56 args:v53];
}

uint64_t sub_1008EA100()
{
  v1 = OBJC_IVAR____TtC8Freeform13CRLUSDZEditor____lazy_storage___commandProvider;
  if (*&v0[OBJC_IVAR____TtC8Freeform13CRLUSDZEditor____lazy_storage___commandProvider])
  {
    v2 = *&v0[OBJC_IVAR____TtC8Freeform13CRLUSDZEditor____lazy_storage___commandProvider];
  }

  else
  {
    v3 = [v0 editingCoordinator];
    type metadata accessor for CRLUSDZItemCommandProvider();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakAssign();

    *&v0[v1] = v2;
  }

  return v2;
}