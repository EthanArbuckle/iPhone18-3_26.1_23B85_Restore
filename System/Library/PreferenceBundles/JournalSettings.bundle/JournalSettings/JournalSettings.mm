__n128 initializeBufferWithCopyOfBuffer for Coordinate(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2420(uint64_t a1)
{
  v2 = sub_90C90();
  __chkstk_darwin(v2 - 8);
  v3 = sub_8FEF0();
  __chkstk_darwin(v3 - 8);
  v4 = [objc_allocWithZone(PSSpecifier) init];
  [v4 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_90C80();
  sub_8FEE0();
  return sub_8FEC0();
}

uint64_t sub_2574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_90220();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  sub_3A90(&qword_C3BB8);
  v3[9] = swift_task_alloc();
  v5 = sub_8EE00();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_8EFE0();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  sub_90860();
  v3[16] = sub_90850();
  v8 = sub_907F0();

  return _swift_task_switch(sub_2768, v8, v7);
}

uint64_t sub_2768()
{
  v1 = v0 + 11;
  v2 = v0[11];
  v4 = v0 + 10;
  v3 = v0[10];
  v5 = v0[9];

  sub_902D0();
  sub_8EDA0();
  if ((*(v2 + 48))(v5, 1, v3) == 1)
  {
    v6 = v0 + 8;
    sub_3D68(v0[9]);
    sub_902C0();
    sub_902E0();
    v1 = v0 + 6;
    v4 = v0 + 5;
  }

  else
  {
    v6 = v0 + 12;
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    sub_902C0();
    sub_8EDE0();
    if (v7)
    {
      v8 = v0[4];
      v9 = sub_90550();

      [v8 setSpecifierIdentifierToScrollAndHighlight:v9];
    }

    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[5];
    sub_902E0();
    (*(v11 + 8))(v10, v12);
  }

  v14 = v0[14];
  v13 = v0[15];
  v15 = v0[13];
  (*(*v1 + 8))(*v6, *v4);
  (*(v14 + 8))(v13, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_2968()
{
  v1 = sub_3A90(&qword_C3BA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = *v0;
  *(swift_allocObject() + 16) = v5;
  sub_8FED0();
  sub_3354(&qword_C3BA8, &type metadata accessor for PreferencesControllerView);
  v6 = v5;
  sub_902F0();
  *(swift_allocObject() + 16) = v6;
  sub_3CBC();
  v7 = v6;
  sub_902B0();
  return (*(v2 + 8))(v4, v1);
}

id sub_2B24@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

uint64_t sub_2B84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_90590();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2C00(_DWORD *a1, int *a2)
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

_DWORD *sub_2C30@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_2C5C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_2D50(uint64_t a1, uint64_t a2)
{
  result = sub_8F480();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_2DA4(uint64_t a1, uint64_t a2)
{
  v3 = sub_8F490();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_2DFC@<X0>(void *a1@<X8>)
{
  result = sub_8F4A0();
  *a1 = v3;
  return result;
}

uint64_t sub_2E24(uint64_t a1, id *a2)
{
  result = sub_90570();
  *a2 = 0;
  return result;
}

uint64_t sub_2E9C(uint64_t a1, id *a2)
{
  v3 = sub_90580();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2F1C@<X0>(void *a1@<X8>)
{
  sub_90590();
  v2 = sub_90550();

  *a1 = v2;
  return result;
}

_DWORD *sub_2F64@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2F94@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_4AF4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2FD4()
{
  sub_3354(&qword_C3D10, type metadata accessor for OptionKey);
  sub_3354(&qword_C3D18, type metadata accessor for OptionKey);

  return sub_90FE0();
}

uint64_t sub_3090()
{
  sub_3354(&qword_C3D20, type metadata accessor for Key);
  sub_3354(&qword_C3D28, type metadata accessor for Key);

  return sub_90FE0();
}

uint64_t sub_314C()
{
  sub_3354(&qword_C3D00, type metadata accessor for MKPointOfInterestCategory);
  sub_3354(&qword_C3D08, type metadata accessor for MKPointOfInterestCategory);

  return sub_90FE0();
}

uint64_t sub_3208()
{
  sub_3354(&qword_C3BC0, type metadata accessor for DynamicRange);
  sub_3354(&qword_C3BC8, type metadata accessor for DynamicRange);

  return sub_90FE0();
}

uint64_t sub_3354(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_339C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_33AC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_33B8()
{
  sub_3354(&qword_C3D50, type metadata accessor for Weight);
  sub_3354(&qword_C3D58, type metadata accessor for Weight);
  sub_4784();
  return sub_90FE0();
}

uint64_t sub_3480()
{
  sub_3354(&qword_C3D78, type metadata accessor for AttributeName);
  sub_3354(&qword_C3D80, type metadata accessor for AttributeName);

  return sub_90FE0();
}

uint64_t sub_353C()
{
  sub_3354(&qword_C3D40, type metadata accessor for FeatureKey);
  sub_3354(&qword_C3D48, type metadata accessor for FeatureKey);

  return sub_90FE0();
}

uint64_t sub_35F8()
{
  sub_3354(&qword_C3D30, type metadata accessor for FileProtectionType);
  sub_3354(&qword_C3D38, type metadata accessor for FileProtectionType);

  return sub_90FE0();
}

uint64_t sub_36B4()
{
  sub_3354(&qword_C3D68, type metadata accessor for TraitKey);
  sub_3354(&qword_C3D70, type metadata accessor for TraitKey);

  return sub_90FE0();
}

uint64_t sub_3770@<X0>(void *a1@<X8>)
{
  v2 = sub_90550();

  *a1 = v2;
  return result;
}

uint64_t sub_37B8()
{
  sub_3354(&qword_C3DE0, type metadata accessor for SystemDesign);
  sub_3354(&qword_C3DE8, type metadata accessor for SystemDesign);

  return sub_90FE0();
}

void sub_387C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_911B0(*&v1);
}

uint64_t sub_38D0()
{
  sub_90590();
  v0 = sub_906A0();

  return v0;
}

uint64_t sub_390C()
{
  sub_90590();
  sub_90630();
}

Swift::Int sub_3960()
{
  sub_90590();
  sub_91180();
  sub_90630();
  v0 = sub_911D0();

  return v0;
}

unint64_t sub_3A20()
{
  result = qword_C3B98;
  if (!qword_C3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B98);
  }

  return result;
}

uint64_t sub_3A90(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3AD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3B18(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_3BC8;

  return sub_2574(a1, a2, v6);
}

uint64_t sub_3BC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_3CBC()
{
  result = qword_C3BB0;
  if (!qword_C3BB0)
  {
    sub_3D20(&qword_C3BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3BB0);
  }

  return result;
}

uint64_t sub_3D20(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3D68(uint64_t a1)
{
  v2 = sub_3A90(&qword_C3BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for Coordinate(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Coordinate(uint64_t result, int a2, int a3)
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

__n128 sub_3E40(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_3E4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3E6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_3F08(uint64_t a1, int a2)
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

uint64_t sub_3F28(uint64_t result, int a2, int a3)
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

__n128 sub_3F64(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_3F78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3F98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_404C()
{
  sub_3D20(&qword_C3BA0);
  sub_3CBC();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_4784()
{
  result = qword_C3D60;
  if (!qword_C3D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3D60);
  }

  return result;
}

void sub_4828(uint64_t a1, unint64_t *a2)
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

uint64_t sub_4A24()
{
  v0 = sub_90590();
  v2 = v1;
  if (v0 == sub_90590() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_910F0();
  }

  return v5 & 1;
}

uint64_t sub_4AF4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_4B88(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_8F4D0();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v38 - v14;
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v18 = [objc_opt_self() mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v39.origin.x = v20;
  v39.origin.y = v22;
  v39.size.width = v24;
  v39.size.height = v26;
  v27 = CGRectGetWidth(v39) + -8.0 + -4.0;
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  Width = CGRectGetWidth(v40);
  v29 = v27 * 0.5;
  if (v27 * 0.5 >= Width)
  {
    v31 = v27 * 0.25;
    if (Width < v29 && v31 < Width)
    {
      v43.origin.x = a1;
      v43.origin.y = a2;
      v43.size.width = a3;
      v43.size.height = a4;
      if (CGRectGetHeight(v43) >= v31)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }

    else if (Width < v31 && (v42.origin.x = a1, v42.origin.y = a2, v42.size.width = a3, v42.size.height = a4, Width <= CGRectGetHeight(v42) * 0.5) && ((*(v9 + 104))(v12, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v8), v33 = sub_8F4C0(), (*(v9 + 8))(v12, v8), (v33 & 1) != 0))
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    if (Width == CGRectGetHeight(v41))
    {
      return 7;
    }

    v34 = *(v9 + 104);
    v34(v17, enum case for JournalFeatureFlags.fullScreenViewer(_:), v8);
    v35 = sub_8F4C0();
    v36 = *(v9 + 8);
    v36(v17, v8);
    if ((v35 & 1) != 0 && (v44.origin.x = a1, v44.origin.y = a2, v44.size.width = a3, v44.size.height = a4, Width * 1.5 <= CGRectGetHeight(v44)))
    {
      return 7;
    }

    else
    {
      v45.origin.x = a1;
      v45.origin.y = a2;
      v45.size.width = a3;
      v45.size.height = a4;
      if (v27 * 0.25 >= CGRectGetHeight(v45))
      {
        return 2;
      }

      else
      {
        v34(v15, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v8);
        v37 = sub_8F4C0();
        v36(v15, v8);
        result = 1;
        if (v37)
        {
          v46.origin.x = a1;
          v46.origin.y = a2;
          v46.size.width = a3;
          v46.size.height = a4;
          if (CGRectGetHeight(v46) == Width * 1.5)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_4F34()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_C3E88);
  v1 = sub_7FF0(v0, qword_C3E88);
  if (qword_C3A78 != -1)
  {
    swift_once();
  }

  v2 = sub_7FF0(v0, qword_D0738);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_4FFC(char a1)
{
  *(v2 + 152) = v1;
  *(v2 + 272) = a1;
  v3 = sub_8F4D0();
  *(v2 + 160) = v3;
  *(v2 + 168) = *(v3 - 8);
  *(v2 + 176) = swift_task_alloc();
  sub_90860();
  *(v2 + 184) = sub_90850();
  v5 = sub_907F0();
  *(v2 + 192) = v5;
  *(v2 + 200) = v4;

  return _swift_task_switch(sub_50F4, v5, v4);
}

double *sub_50F4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 272);
  *(v0 + 208) = CFAbsoluteTimeGetCurrent();
  *(v1 + OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_sizeType) = v2;
  v3 = sub_2D078(v2);
  v5 = v4;
  *(v0 + 216) = v3;
  *(v0 + 224) = v4;
  if (v2 == 3)
  {
    v10 = -70.0;
  }

  else if (v2 == 7)
  {
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    (*(v7 + 104))(v6, enum case for JournalFeatureFlags.fullScreenViewer(_:), v8);
    v9 = sub_8F4C0();
    (*(v7 + 8))(v6, v8);
    if (v9)
    {
      v10 = -145.0;
    }

    else
    {
      v10 = -116.0;
    }
  }

  else
  {
    v10 = -16.0;
  }

  v11 = *(*(v0 + 152) + OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_routeCoordinates);
  if (v11 >> 62)
  {
    v12 = sub_90FA0();
  }

  else
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  }

  if (v12)
  {

    result = sub_1C9C8(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = sub_90EC0();
      }

      else
      {
        v15 = *(v11 + 8 * i + 32);
      }

      v16 = v15;
      [v15 coordinate];
      v17 = MKMapPointForCoordinate(v31);

      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (*&v19 >= *&v18 >> 1)
      {
        sub_1C9C8((*&v18 > 1uLL), *&v19 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v19 + 1;
      *&_swiftEmptyArrayStorage[2 * *&v19 + 4] = v17;
    }
  }

  *(v0 + 232) = _swiftEmptyArrayStorage;
  v20 = *(v0 + 272);

  v22 = sub_769C(v21, v20, v3, v5, (v5 + v10) * 0.5);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = swift_task_alloc();
  *(v0 + 240) = v29;
  *v29 = v0;
  v29[1] = sub_53E8;

  return sub_7CDC(v22, v24, v26, v28, v3, v5);
}

uint64_t sub_53E8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 248) = a1;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);

  return _swift_task_switch(sub_5510, v4, v3);
}

uint64_t sub_5510()
{
  v1 = *(v0 + 152);
  [*(v0 + 248) _setRendersInBackground:1];
  v2 = OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_mapSnapshotter;
  v3 = *(v1 + OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_mapSnapshotter);
  if (v3)
  {
    [v3 cancel];
    v4 = *(v1 + v2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 248);
  *(v1 + v2) = 0;

  v6 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v5];
  v7 = *(v1 + v2);
  *(v1 + v2) = v6;

  v8 = *(v1 + v2);
  *(v0 + 256) = v8;
  if (v8)
  {
    v9 = qword_C3A30;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = qword_D05B0;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_5764;
    v12 = swift_continuation_init();
    *(v0 + 136) = sub_3A90(&qword_C3FB0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_EFAC;
    *(v0 + 104) = &unk_B43E8;
    *(v0 + 112) = v12;
    [v10 startWithQueue:v11 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v13 = *(v0 + 248);

    sub_5BDC(*(v0 + 152));

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_5764()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {

    v3 = *(v1 + 192);
    v4 = *(v1 + 200);
    v5 = sub_5984;
  }

  else
  {
    v3 = *(v1 + 192);
    v4 = *(v1 + 200);
    v5 = sub_587C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_587C()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[29];

  v4 = v0[18];

  v5 = [objc_opt_self() polylineWithPoints:v3 + 32 count:*(v3 + 16)];

  [v1 mapRect];
  v10 = sub_8198(v5, v4, v6, v7, v8, v9);

  sub_5BDC(v0[19]);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_5984()
{
  v17 = v0;
  v1 = v0[32];

  swift_willThrow();

  if (qword_C38F0 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v3 = sub_900D0();
  sub_7FF0(v3, qword_C3E88);
  v4 = v2;
  swift_errorRetain();
  v5 = sub_900B0();
  v6 = sub_90A70();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[31];
  if (v7)
  {
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_76D20(*(v9 + OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_id), *(v9 + OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_id + 8), &v16);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&dword_0, v5, v6, "RouteMapGenerator [assetId: %s]: error generating snapshot: %@", v10, 0x16u);
    sub_8EF0(v11, &qword_C3FB8);

    sub_7FA4(v12);
  }

  else
  {
  }

  sub_5BDC(v0[19]);

  v14 = v0[1];

  return v14(0);
}

void sub_5BDC(uint64_t a1)
{
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_90EA0(83);
  v12._object = 0x8000000000092E40;
  v12._countAndFlagsBits = 0xD000000000000021;
  sub_90640(v12);
  type metadata accessor for CGSize(0);
  sub_90F80();
  v13._countAndFlagsBits = 0x497465737361202CLL;
  v13._object = 0xEB00000000203A64;
  sub_90640(v13);
  sub_90640(*(a1 + OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_id));
  v14._countAndFlagsBits = 0x73746E696F70202CLL;
  v14._object = 0xEA0000000000203ALL;
  sub_90640(v14);
  if (*(a1 + OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_routeCoordinates) >> 62)
  {
    sub_90FA0();
  }

  v15._countAndFlagsBits = sub_910B0();
  sub_90640(v15);

  v16._countAndFlagsBits = 0x6574756365786520;
  v16._object = 0xED0000206E692064;
  sub_90640(v16);
  CFAbsoluteTimeGetCurrent();
  sub_908C0();
  v17._countAndFlagsBits = 0x73646E6F63657320;
  v17._object = 0xE800000000000000;
  sub_90640(v17);
  v3 = v10;
  v2 = v11;
  if (qword_C38F0 != -1)
  {
    swift_once();
  }

  v4 = sub_900D0();
  sub_7FF0(v4, qword_C3E88);

  v5 = sub_900B0();
  v6 = sub_90A80();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    v9 = sub_76D20(v3, v2, &v10);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_0, v5, v6, "%s", v7, 0xCu);
    sub_7FA4(v8);
  }

  else
  {
  }
}

void sub_5EE0(void *a1, id a2, char a3, uint64_t a4, uint64_t a5, CLLocationDegrees a6, CLLocationDegrees a7, double a8, double a9, double a10, double a11, CLLocationDegrees a12, CLLocationDegrees a13)
{
  v84.latitude = a6;
  v84.longitude = a7;
  v24 = [a2 image];
  [v24 size];
  v26 = v25;

  v27 = [a2 image];
  [v27 size];
  v29 = v28;

  v30 = [a2 image];
  [v30 drawInRect:{0.0, 0.0, v26, v29}];

  v85 = sub_8608(0, a3);
  v31 = 2.0;
  if ((a3 - 3) <= 4u)
  {
    v31 = dbl_988D0[(a3 - 3)];
  }

  v32 = OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_routeCoordinates;
  v33 = *(a4 + OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_routeCoordinates);
  if (v33 >> 62)
  {
    if (sub_90FA0() == 1)
    {
      goto LABEL_5;
    }

LABEL_9:
    v48 = *(a4 + v32);
    v49 = type metadata accessor for WorkoutGradientPathRenderer();
    v50 = objc_allocWithZone(v49);
    *&v50[OBJC_IVAR____TtC15JournalSettings27WorkoutGradientPathRenderer_routeCoordinates] = v48;
    v86.receiver = v50;
    v86.super_class = v49;

    v51 = objc_msgSendSuper2(&v86, "initWithOverlay:", a5);
    v52 = [a1 CGContext];
    v53 = a2;
    sub_890C(v52, v51, v53, a8, a9, a10, a11, v31);

    v54 = [a1 CGContext];
    CGContextStrokePath(v54);

    v55 = sub_8608(1, a3);
    v88.latitude = a12;
    v88.longitude = a13;
    v56 = MKMapPointForCoordinate(v88);
    v57 = [a1 CGContext];
    v58 = MKCoordinateForMapPoint(v56);
    [v53 pointForCoordinate:{v58.latitude, v58.longitude}];
    v60 = v59;
    v62 = v61;
    [v55 bounds];
    v63 = v60 - CGRectGetMidX(v91);
    [v55 centerOffset];
    v65 = v63 + v64;
    [v55 bounds];
    v66 = v62 - CGRectGetMidY(v92);
    [v55 centerOffset];
    v68 = v66 + v67;
    CGContextSaveGState(v57);
    CGContextTranslateCTM(v57, v65, v68);
    [v55 prepareForSnapshotting];
    v69 = [v55 layer];
    [v69 renderInContext:v57];

    CGContextRestoreGState(v57);
    v70 = MKMapPointForCoordinate(v84);
    v71 = [a1 CGContext];
    v72 = MKCoordinateForMapPoint(v70);
    [v53 pointForCoordinate:{v72.latitude, v72.longitude}];
    v74 = v73;
    v76 = v75;
    [v85 bounds];
    v77 = v74 - CGRectGetMidX(v93);
    [v85 centerOffset];
    v79 = v77 + v78;
    [v85 bounds];
    v80 = v76 - CGRectGetMidY(v94);
    [v85 centerOffset];
    v82 = v80 + v81;
    CGContextSaveGState(v71);
    CGContextTranslateCTM(v71, v79, v82);
    [v85 prepareForSnapshotting];
    v83 = [v85 layer];
    [v83 renderInContext:v71];

    CGContextRestoreGState(v71);
    return;
  }

  if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)) != 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v34 = MKMapPointForCoordinate(v84);
  v35 = [a1 CGContext];
  v36 = MKCoordinateForMapPoint(v34);
  [a2 pointForCoordinate:{v36.latitude, v36.longitude}];
  v38 = v37;
  v40 = v39;
  [v85 bounds];
  v41 = v38 - CGRectGetMidX(v89);
  [v85 centerOffset];
  v43 = v41 + v42;
  [v85 bounds];
  v44 = v40 - CGRectGetMidY(v90);
  [v85 centerOffset];
  v46 = v44 + v45;
  CGContextSaveGState(v35);
  CGContextTranslateCTM(v35, v43, v46);
  [v85 prepareForSnapshotting];
  v47 = [v85 layer];
  [v47 renderInContext:v35];

  CGContextRestoreGState(v35);
}

void sub_6484(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_65C4(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

Swift::Int sub_6640()
{
  v1 = *v0;
  sub_91180();
  sub_91190(v1);
  return sub_911D0();
}

Swift::Int sub_66B4()
{
  v1 = *v0;
  sub_91180();
  sub_91190(v1);
  return sub_911D0();
}

void (*sub_670C(uint64_t **a1, unsigned __int8 a2))(void *a1)
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
  v4[4] = sub_7400(v4, a2);
  return sub_6784;
}

void sub_6784(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

id sub_67D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v5[OBJC_IVAR____TtC15JournalSettings29WorkoutLocationAnnotationView_assetSizeType] = a4;
  if (a3)
  {
    v10 = sub_90550();
  }

  else
  {
    v10 = 0;
  }

  v18.receiver = v5;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithAnnotation:reuseIdentifier:", a1, v10);

  v12 = 7.0;
  if ((a4 - 3) <= 4u)
  {
    v12 = dbl_988F8[(a4 - 3)];
  }

  v13 = v11;
  [v13 setFrame:{0.0, 0.0, v12, v12}];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 clearColor];
  [v15 setBackgroundColor:v16];

  [v15 setCanShowCallout:1];
  sub_6950(a1);

  swift_unknownObjectRelease();
  return v15;
}

void sub_6950(uint64_t a1)
{
  v2 = v1;
  v4 = sub_8FF10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for WorkoutStartLocationAnnotation();
    if (swift_dynamicCastClass())
    {
      sub_8F50();
      if (qword_C3AC8 != -1)
      {
        swift_once();
      }

      v8 = qword_D07E0;
LABEL_10:
      v9 = sub_7FF0(v4, v8);
      (*(v5 + 16))(v7, v9, v4);
      v10 = sub_90C60();
      [v2 setTintColor:v10];

      return;
    }

    type metadata accessor for WorkoutEndLocationAnnotation();
    if (swift_dynamicCastClass())
    {
      sub_8F50();
      if (qword_C3AC0 != -1)
      {
        swift_once();
      }

      v8 = qword_D07C8;
      goto LABEL_10;
    }
  }

  v13 = [objc_opt_self() whiteColor];
  [v2 setTintColor:v13];
  v11 = v13;
}

void sub_6BA8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = UIGraphicsGetCurrentContext();
  if (v9)
  {
    v10 = 1.0;
    if (v4[OBJC_IVAR____TtC15JournalSettings29WorkoutLocationAnnotationView_assetSizeType] - 3 <= 4)
    {
      v10 = dbl_98920[(v4[OBJC_IVAR____TtC15JournalSettings29WorkoutLocationAnnotationView_assetSizeType] - 3)];
    }

    c = v9;
    CGContextSetLineWidth(v9, v10);
    v11 = [v4 tintColor];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 CGColor];

      CGContextSetFillColorWithColor(c, v13);
      v14 = [objc_opt_self() whiteColor];
      v15 = [v14 CGColor];

      CGContextSetStrokeColorWithColor(c, v15);
      v18.origin.x = a1;
      v18.origin.y = a2;
      v18.size.width = a3;
      v18.size.height = a4;
      v19 = CGRectInset(v18, v10, v10);
      CGContextAddEllipseInRect(c, v19);
      CGContextDrawPath(c, kCGPathFillStroke);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_6DEC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_6F74(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15JournalSettings27WorkoutGradientPathRenderer_routeCoordinates);
  if (!(v3 >> 62))
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    v13 = *&_swiftEmptyArrayStorage[2];
    if (!v13)
    {

LABEL_43:
      v41 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.8 blue:0.0 alpha:0.85];
LABEL_44:
      v42 = v41;
      v43 = [v41 CGColor];

      return v43;
    }

LABEL_14:
    v14 = _swiftEmptyArrayStorage[4];
    v15 = v14;
    v16 = v13 - 1;
    if (v13 != 1)
    {
      v17 = &_swiftEmptyArrayStorage[5];
      v15 = _swiftEmptyArrayStorage[4];
      do
      {
        v18 = *v17++;
        v19 = v18;
        if (v18 < v15)
        {
          v15 = v19;
        }

        --v16;
      }

      while (v16);
    }

    v20 = v13;
    if (v13 > 3)
    {
      v21 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      v23 = vdupq_lane_s64(*&v20, 0);
      v24 = &_swiftEmptyArrayStorage[6];
      v22 = 0.0;
      v25 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v26 = vdivq_f64(v24[-1], v23);
        v27 = vdivq_f64(*v24, v23);
        v22 = v22 + v26.f64[0] + v26.f64[1] + v27.f64[0] + v27.f64[1];
        v24 += 2;
        v25 -= 4;
      }

      while (v25);
      if (v13 == v21)
      {
LABEL_26:
        v31 = v13 - 1;
        if (v13 != 1)
        {
          v32 = &_swiftEmptyArrayStorage[5];
          do
          {
            v33 = *v32++;
            v34 = v33;
            if (v14 < v33)
            {
              v14 = v34;
            }

            --v31;
          }

          while (v31);
        }

        if (v22 * 0.9 >= a1)
        {
          if (a1 < 0.0 || v22 == 0.0)
          {
            goto LABEL_43;
          }
        }

        else if (a1 < 0.0 || v22 == 0.0 || v22 * 1.1 > a1)
        {
          goto LABEL_43;
        }

        v35 = (a1 - v15) / (v14 - v15);
        if (v35 >= 0.5)
        {
          v40 = v35 + -0.5 + v35 + -0.5;
          v37 = round(v40 * -179.0 + 255.0);
          v38 = round(v40 * 13.0 + 204.0);
          v39 = v40 * 100.0 + 0.0;
        }

        else
        {
          v36 = v35 + v35;
          v37 = round(v36 * 0.0 + 255.0);
          v38 = round(v36 * 145.0 + 59.0);
          v39 = 48.0 - v36 * 48.0;
        }

        v41 = [objc_allocWithZone(UIColor) initWithRed:v37 / 255.0 green:v38 / 255.0 blue:round(v39) / 255.0 alpha:0.85];
        goto LABEL_44;
      }
    }

    else
    {
      v21 = 0;
      v22 = 0.0;
    }

    v28 = v13 - v21;
    v29 = &_swiftEmptyArrayStorage[v21 + 4];
    do
    {
      v30 = *v29++;
      v22 = v22 + v30 / v20;
      --v28;
    }

    while (v28);
    goto LABEL_26;
  }

  v4 = sub_90FA0();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_1C9E8(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_90EC0();
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      v8 = v7;
      [v7 speed];
      v10 = v9;

      v12 = *&_swiftEmptyArrayStorage[2];
      v11 = *&_swiftEmptyArrayStorage[3];
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_1C9E8((v11 > 1), v12 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = v13;
      _swiftEmptyArrayStorage[v12 + 4] = v10;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_7398()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutGradientPathRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_7400(uint64_t *a1, unsigned __int8 a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_7668(v5);
  v5[9] = sub_7504((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_74A4;
}

void sub_74A4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

Swift::Int (*sub_7504(uint64_t a1, unsigned __int8 a2, char a3))(Swift::Int result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_79D64(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_86494();
      v9 = v17;
      goto LABEL_8;
    }

    sub_84F00(v14, a3 & 1);
    v9 = sub_79D64(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_91120();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_7620;
}

Swift::Int sub_7620(Swift::Int result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_8621C(*(result + 16), *(result + 24), v1, v2);
    }
  }

  else if (*(result + 25))
  {
    return sub_7A070(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_7668(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_7690;
}

double sub_769C(double *a1, unsigned __int8 a2, double a3, double a4, double a5)
{
  v10 = sub_8F4D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 2);
  if (v14)
  {
    v15 = a1[4];
    v16 = a1[5];
    v17 = &a1[2 * v14 + 4];
    v18 = *(v17 - 16);
    v19 = *(v17 - 8);
  }

  else
  {
    v18 = 0.0;
    v19 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
  }

  v20 = [objc_opt_self() polylineWithPoints:a1 + 4 count:v14];

  [v20 boundingMapRect];
  if (a3 >= 1.0 && a4 >= 1.0)
  {
    v51 = v16;
    v52 = v15;
    v53 = v19;
    v54 = v18;
    v25 = sqrt(v23 * v23 + v24 * v24) * 0.5;
    v26 = 8.0;
    v27 = v24;
    v28 = v23;
    v55 = v21;
    v56 = v22;
    if (a2 > 3u)
    {
      if (a2 > 6u)
      {
        (*(v11 + 104))(v13, enum case for JournalFeatureFlags.fullScreenViewer(_:), v10);
        v45 = sub_8F4C0();
        (*(v11 + 8))(v13, v10);

        v35 = v55;
        v36 = v56;
        v34 = v28;
        v33 = v27;
        v46 = 58.0;
        if (v45)
        {
          v46 = a3 * 0.5 - a5;
        }

        v37 = v25 / (a5 + -20.0);
        v38 = v37 * a5;
        v39 = v37 * a3;
        v40 = v37 * a4;
        v41 = v37 * v46;
        goto LABEL_30;
      }
    }

    else
    {
      v29 = 35.0;
      if (a2 == 2)
      {
        v29 = 8.0;
      }

      if (a2 > 1u)
      {
        v26 = v29;
      }
    }

    v30 = sub_910F0();

    v31 = 20.0;
    if ((v30 & 1) == 0)
    {
      if (a2 == 1)
      {

        v37 = v25 / (a5 + -20.0);
        v38 = v37 * a5;
        v39 = v37 * a3;
        v40 = v37 * a4;
        v41 = v37 * v26;
        v33 = v27;
        v34 = v28;
        v35 = v55;
        v36 = v56;
        v43 = v53;
        v42 = v54;
        goto LABEL_31;
      }

      v32 = sub_910F0();

      v33 = v27;
      v34 = v28;
      v35 = v55;
      v36 = v56;
      if (v32)
      {
        goto LABEL_26;
      }

      if (a2 == 3)
      {

        v35 = v55;
        v36 = v56;
        v34 = v28;
        v33 = v27;
        v37 = v25 / (a5 + -15.0);
        v38 = v37 * a5;
        v39 = v37 * a3;
        v40 = v37 * a4;
        v41 = v37 * v26;
        v43 = v53;
        v42 = v54;
        v44 = 12.0;
LABEL_33:
        v48 = v37 * v44 * 0.5;
        v59.origin.y = v51;
        v59.origin.x = v52;
        v59.size.width = v48;
        v59.size.height = v48;
        v57 = MKMapRectUnion(*&v35, v59);
        v60.origin.x = v42;
        v60.origin.y = v43;
        v60.size.width = v48;
        v60.size.height = v48;
        v58 = MKMapRectUnion(v57, v60);
        v21 = v58.origin.x + v58.size.width * 0.5 - (v41 + v38);
        v22 = v58.origin.y + v58.size.height * 0.5 - (v41 + v38);
        v23 = v39;
        v24 = v40;
        goto LABEL_34;
      }

      v47 = sub_910F0();

      if (v47)
      {
        v31 = 15.0;
      }

      else
      {
        v31 = 10.0;
      }
    }

    v33 = v27;
    v34 = v28;
    v35 = v55;
    v36 = v56;
LABEL_26:
    v37 = v25 / (a5 - v31);
    v38 = v37 * a5;
    v39 = v37 * a3;
    v40 = v37 * a4;
    v41 = v26 * v37;
    if (a2 != 7)
    {
      v43 = v53;
      v42 = v54;
      if (a2 == 6)
      {
        v44 = 4.0;
        goto LABEL_33;
      }

      if (a2 == 3)
      {
        v44 = 12.0;
        goto LABEL_33;
      }

LABEL_31:
      v44 = 7.0;
      goto LABEL_33;
    }

LABEL_30:
    v44 = 24.0;
    v43 = v53;
    v42 = v54;
    goto LABEL_33;
  }

LABEL_34:
  *&v49 = MKCoordinateRegionForMapRect(*&v21);

  return v49;
}

uint64_t sub_7CDC(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_90860();
  *(v6 + 64) = sub_90850();
  v8 = sub_907F0();

  return _swift_task_switch(sub_7D7C, v8, v7);
}

uint64_t sub_7D7C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  v5 = [objc_allocWithZone(MKMapSnapshotOptions) init];
  v6 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  [v5 setTraitCollection:v6];

  v14.latitude = v4;
  v14.longitude = v3;
  if (CLLocationCoordinate2DIsValid(v14) && v2 >= 0.0 && v1 >= 0.0)
  {
    [v5 setRegion:{*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40)}];
  }

  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  [v5 setMapType:0];
  [v5 setSize:{v8, v7}];
  v9 = [objc_allocWithZone(MKStandardMapConfiguration) init];
  v10 = [objc_opt_self() filterExcludingAllCategories];
  [v9 setPointOfInterestFilter:v10];

  [v5 setPreferredConfiguration:v9];
  v11 = *(v0 + 8);

  return v11(v5);
}

uint64_t sub_7F40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_7FA4(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_7FF0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_8028(double a1, double a2)
{
  if (qword_C38F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_C3EA0[0];
  if (*(off_C3EA0[0] + &dword_10) && (v5 = sub_79CF0(a1, a2), (v6 & 1) != 0))
  {
    v11 = *(*&stru_20.segname[v4 + 16] + 8 * v5);
    swift_endAccess();

    return v11;
  }

  else
  {
    swift_endAccess();
    v8 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a1, a2}];
    swift_beginAccess();
    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = off_C3EA0[0];
    off_C3EA0[0] = 0x8000000000000000;
    sub_85AA4(v9, isUniquelyReferenced_nonNull_native, a1, a2);
    off_C3EA0[0] = v12;
    swift_endAccess();
    return v9;
  }
}

uint64_t sub_8198(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v16 = OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_routeCoordinates;
  v17 = *&v6[OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_routeCoordinates];
  if (v17 >> 62)
  {
    result = sub_90FA0();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }
  }

  if ((v17 & 0xC000000000000001) != 0)
  {

    v19 = sub_90EC0();
  }

  else
  {
    if (!*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_24;
    }

    v19 = *(v17 + 32);
  }

  v7 = &stru_BB000;
  [v19 coordinate];
  v8 = v20;
  v9 = v21;

  v22 = *&v6[v16];
  if (!(v22 >> 62))
  {
    result = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }

LABEL_8:
    v23 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      v49 = a5;
      v51 = a6;
      if ((v22 & 0xC000000000000001) == 0)
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        if (v23 >= *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_28:
          __break(1u);
          return result;
        }

        v24 = *(v22 + 8 * v23 + 32);
LABEL_13:
        [v24 v7[51].offs];
        v26 = v25;
        v28 = v27;

        v29 = v6[OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_sizeType];
        if (v29 == 8)
        {
          v30 = [a2 image];
          [v30 size];
          v32 = v31;
          v34 = v33;

          LOBYTE(v29) = sub_4B88(0.0, 0.0, v32, v34);
        }

        v35 = [a2 image];
        [v35 size];
        v37 = v36;
        v39 = v38;

        v40 = sub_8028(v37, v39);
        v41 = swift_allocObject();
        *(v41 + 16) = a2;
        *(v41 + 24) = v29;
        *(v41 + 32) = v6;
        *(v41 + 40) = v8;
        *(v41 + 48) = v9;
        *(v41 + 56) = a1;
        *(v41 + 64) = a3;
        *(v41 + 72) = a4;
        *(v41 + 80) = v50;
        *(v41 + 88) = v52;
        *(v41 + 96) = v26;
        *(v41 + 104) = v28;
        v42 = swift_allocObject();
        *(v42 + 16) = sub_8594;
        *(v42 + 24) = v41;
        aBlock[4] = sub_85C8;
        aBlock[5] = v42;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_6484;
        aBlock[3] = &unk_B4460;
        v43 = _Block_copy(aBlock);
        v44 = a2;
        v45 = v6;
        v46 = a1;

        v47 = [v40 imageWithActions:v43];

        _Block_release(v43);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return v47;
        }

        goto LABEL_27;
      }

LABEL_25:

      v24 = sub_90EC0();

      goto LABEL_13;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = sub_90FA0();
  if (result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_854C()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_85F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_8608(char a1, char a2)
{
  if (qword_C3900 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_C3EA8[0];
  if (*(off_C3EA8[0] + &dword_10) && (v5 = sub_79D64(a2), (v6 & 1) != 0) && (v7 = *(*&stru_20.segname[v4 + 16] + 8 * v5), *(v7 + 16)) && (v8 = sub_79DA8(a1 & 1), (v9 & 1) != 0))
  {
    v26 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();

    return v26;
  }

  else
  {
    v11 = 0xD000000000000027;
    swift_endAccess();
    if (a1)
    {
      started = type metadata accessor for WorkoutEndLocationAnnotation();
      v13 = "csImageRendererContext8";
    }

    else
    {
      started = type metadata accessor for WorkoutStartLocationAnnotation();
      v13 = "nnotationView.endingPin";
      v11 = 0xD000000000000029;
    }

    v14 = [objc_allocWithZone(started) init];
    v15 = objc_allocWithZone(type metadata accessor for WorkoutLocationAnnotationView());
    v16 = sub_67D0(v14, v11, v13 | 0x8000000000000000, a2);
    swift_beginAccess();
    if (*(off_C3EA8[0] + &dword_10) && (sub_79D64(a2), (v17 & 1) != 0))
    {
      swift_endAccess();
      swift_beginAccess();
      v19 = sub_670C(v28, a2);
      if (*v18)
      {
        v20 = v18;
        v16 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *v20;
        *v20 = 0x8000000000000000;
        sub_85D4C(v16, a1 & 1, isUniquelyReferenced_nonNull_native);
        *v20 = v27;
      }

      (v19)(v28, 0);
    }

    else
    {
      swift_endAccess();
      sub_3A90(&qword_C3FC8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_98740;
      *(inited + 32) = a1 & 1;
      v23 = inited + 32;
      *(inited + 40) = v16;
      v24 = sub_7AB24(inited);
      swift_setDeallocating();
      v16 = v16;
      sub_8EF0(v23, &qword_C3FD0);
      swift_beginAccess();
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v29 = off_C3EA8[0];
      off_C3EA8[0] = 0x8000000000000000;
      sub_85C00(v24, a2, v25);
      off_C3EA8[0] = v29;
    }

    swift_endAccess();
    return v16;
  }
}

void sub_890C(CGContext *a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, CGFloat a8)
{
  v65 = a3;
  v62 = a8;
  v63.size.width = a6;
  v63.size.height = a7;
  v63.origin.y = a5;
  v63.origin.x = a4;
  v68 = sub_8F2F0();
  v10 = *(v68 - 8);
  __chkstk_darwin(v68);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  v57 = a2;
  v13 = *(a2 + OBJC_IVAR____TtC15JournalSettings27WorkoutGradientPathRenderer_routeCoordinates);
  if (!(v13 >> 62))
  {
    if (!*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
    {
      return;
    }

LABEL_3:
    v61 = v13 & 0xC000000000000001;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = sub_90EC0();
    }

    else
    {
      if (!*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_29;
      }

      v14 = *(v13 + 32);
    }

    v15 = v14;
    v16 = [v14 timestamp];
    sub_8F2B0();

    sub_8F050();
    v18 = v17;
    v20 = *(v10 + 8);
    v19 = v10 + 8;
    v67 = v20;
    v20(v12, v68);
    if (v13 >> 62)
    {
      v21 = sub_90FA0();
      if (!v21)
      {
LABEL_23:

        return;
      }
    }

    else
    {
      v21 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
      if (!v21)
      {
        goto LABEL_23;
      }
    }

    if (v21 >= 1)
    {
      v60 = a1;
      v22 = 0;
      v23 = v62;
      v64 = v23 * v23;
      v56 = v23 + v23;
      v55 = xmmword_98750;
      v24 = v61;
      v59 = v19;
      v58 = v13;
      do
      {
        v66 = v18;
        if (v24)
        {
          v27 = sub_90EC0();
        }

        else
        {
          v27 = *(v13 + 8 * v22 + 32);
        }

        v28 = v27;
        [v15 coordinate];
        v29 = MKMapPointForCoordinate(v70);
        [v28 coordinate];
        v30 = MKMapPointForCoordinate(v71);
        v31 = MKCoordinateForMapPoint(v29);
        v32 = v65;
        [v65 pointForCoordinate:{v31.latitude, v31.longitude}];
        v34 = v33;
        v36 = v35;
        v37 = MKCoordinateForMapPoint(v30);
        [v32 pointForCoordinate:{v37.latitude, v37.longitude}];
        v39 = v38;
        v41 = v40;
        if (v64 <= (v38 - v34) * (v38 - v34) + (v40 - v36) * (v40 - v36))
        {
          v74.origin.x = fmin(v29.x, v30.x);
          v74.origin.y = fmin(v29.y, v30.y);
          v74.size.width = vabdd_f64(v29.x, v30.x);
          v74.size.height = vabdd_f64(v29.y, v30.y);
          if (MKMapRectIntersectsRect(v63, v74))
          {
            v42 = [v28 timestamp];
            sub_8F2B0();

            sub_8F050();
            v44 = v43;
            v67(v12, v68);
            v45 = v44 - v66;
            [v28 speed];
            v47 = v46;
            Mutable = CGPathCreateMutable();
            v69.b = 0.0;
            v69.c = 0.0;
            v69.a = 1.0;
            v69.d = 1.0;
            v69.tx = 0.0;
            v69.ty = 0.0;
            v72.x = v34;
            v72.y = v36;
            sub_90AA0(v72, &v69);
            v73.x = v39;
            v73.y = v41;
            sub_90AB0(v73, &v69);
            if (v45 <= 5.0)
            {
              v50 = sub_90CE0();
              v51 = v60;
              CGContextAddPath(v60, v50);
              v53 = sub_6F74(v47);
              CGContextSetFillColorWithColor(v51, v53);
              v54 = kCGPathFill;
            }

            else
            {
              sub_3A90(&qword_C3FC0);
              v49 = swift_allocObject();
              *(v49 + 16) = v55;
              *(v49 + 32) = 0;
              *(v49 + 40) = v56;
              v50 = sub_90CD0();

              v51 = v60;
              CGContextAddPath(v60, v50);
              CGContextSetLineWidth(v51, v62);
              CGContextSetLineCap(v51, kCGLineCapRound);
              v52 = [objc_opt_self() grayColor];
              v53 = [v52 CGColor];

              CGContextSetStrokeColorWithColor(v51, v53);
              v54 = kCGPathStroke;
            }

            CGContextDrawPath(v51, v54);
            v13 = v58;
            v24 = v61;
          }

          v15 = v28;
        }

        ++v22;
        v25 = [v28 timestamp];
        sub_8F2B0();

        sub_8F050();
        v18 = v26;

        v67(v12, v68);
      }

      while (v21 != v22);
      goto LABEL_23;
    }

LABEL_29:
    __break(1u);
    return;
  }

  if (sub_90FA0())
  {
    goto LABEL_3;
  }
}

uint64_t sub_8EF0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_3A90(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_8F50()
{
  result = qword_C3FD8;
  if (!qword_C3FD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C3FD8);
  }

  return result;
}

uint64_t *sub_8F9C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_9000(CGContext *a1, uint64_t a2, double a3, double a4, double a5, double a6, CGFloat a7, double a8, double a9)
{
  v60 = a9;
  v55 = a7;
  v57.size.width = a5;
  v57.size.height = a6;
  v57.origin.y = a4;
  v57.origin.x = a3;
  v12 = sub_8F2F0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  v51 = a2;
  v16 = *(a2 + OBJC_IVAR____TtC15JournalSettings27WorkoutGradientPathRenderer_routeCoordinates);
  v17 = v16 >> 62;
  v56 = v16;
  if (!(v16 >> 62))
  {
    if (!*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
    {
      return;
    }

LABEL_3:
    v59 = v56 & 0xC000000000000001;
    if ((v56 & 0xC000000000000001) != 0)
    {
      v18 = sub_90EC0();
    }

    else
    {
      if (!*(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_29;
      }

      v18 = *(v56 + 32);
    }

    v19 = v18;
    v20 = [v18 timestamp];
    sub_8F2B0();

    sub_8F050();
    v22 = v21;
    v23 = *(v13 + 8);
    v54 = v13 + 8;
    v61 = v23;
    v23(v15, v12);
    if (v17)
    {
      v24 = sub_90FA0();
      if (!v24)
      {
LABEL_23:

        return;
      }
    }

    else
    {
      v24 = *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8));
      if (!v24)
      {
        goto LABEL_23;
      }
    }

    if (v24 >= 1)
    {
      v53 = a1;
      v25 = 0;
      v26 = v55;
      v58 = v26 * v26;
      v50 = v26 + v26;
      v49 = xmmword_98750;
      v27 = v56;
      v52 = v12;
      do
      {
        if (v59)
        {
          v36 = sub_90EC0();
        }

        else
        {
          v36 = *(v27 + 8 * v25 + 32);
        }

        v37 = v36;
        [v19 coordinate];
        v38 = MKMapPointForCoordinate(v63);
        [v37 coordinate];
        v39 = MKMapPointForCoordinate(v64);
        v40 = v38.y - v60;
        v41 = v39.y - v60;
        if (v58 <= (v39.x - a8 - (v38.x - a8)) * (v39.x - a8 - (v38.x - a8)) + (v41 - v40) * (v41 - v40))
        {
          v67.origin.x = fmin(v38.x, v39.x);
          v67.origin.y = fmin(v38.y, v39.y);
          v67.size.width = vabdd_f64(v38.x, v39.x);
          v67.size.height = vabdd_f64(v38.y, v39.y);
          if (MKMapRectIntersectsRect(v57, v67))
          {
            v42 = [v37 timestamp];
            sub_8F2B0();

            sub_8F050();
            v44 = v43;
            v61(v15, v12);
            v45 = v44 - v22;
            [v37 speed];
            v47 = v46;
            Mutable = CGPathCreateMutable();
            v62.b = 0.0;
            v62.c = 0.0;
            v62.a = 1.0;
            v62.d = 1.0;
            v62.tx = 0.0;
            v62.ty = 0.0;
            v65.x = v38.x - a8;
            v65.y = v40;
            sub_90AA0(v65, &v62);
            v66.x = v39.x - a8;
            v66.y = v41;
            sub_90AB0(v66, &v62);
            if (v45 > 5.0)
            {
              sub_3A90(&qword_C3FC0);
              v28 = swift_allocObject();
              *(v28 + 16) = v49;
              *(v28 + 32) = 0;
              *(v28 + 40) = v50;
              v29 = sub_90CD0();

              v30 = v53;
              CGContextAddPath(v53, v29);
              CGContextSetLineWidth(v30, v55);
              CGContextSetLineCap(v30, kCGLineCapRound);
              v31 = [objc_opt_self() grayColor];
              v32 = [v31 CGColor];

              CGContextSetStrokeColorWithColor(v30, v32);
              v33 = kCGPathStroke;
            }

            else
            {
              v29 = sub_90CE0();
              v30 = v53;
              CGContextAddPath(v53, v29);
              v32 = sub_6F74(v47);
              CGContextSetFillColorWithColor(v30, v32);
              v33 = kCGPathFill;
            }

            CGContextDrawPath(v30, v33);
            v12 = v52;
            v27 = v56;
          }

          v19 = v37;
        }

        ++v25;
        v34 = [v37 timestamp];
        sub_8F2B0();

        sub_8F050();
        v22 = v35;

        v61(v15, v12);
      }

      while (v24 != v25);
      goto LABEL_23;
    }

LABEL_29:
    __break(1u);
    return;
  }

  if (sub_90FA0())
  {
    goto LABEL_3;
  }
}

uint64_t getEnumTagSinglePayload for WorkoutLocationAnnotationView.WorkoutLocationAnnotationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutLocationAnnotationView.WorkoutLocationAnnotationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_9738()
{
  result = qword_C3FE0;
  if (!qword_C3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3FE0);
  }

  return result;
}

id sub_97D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommonTransitions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_9830()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_C4010);
  sub_7FF0(v0, qword_C4010);
  return sub_900C0();
}

uint64_t sub_98F0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  sub_3A90(&qword_C41A0);
  v3[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_907F0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v3[8] = v5;
  v3[9] = v7;

  return _swift_task_switch(sub_99CC, v5, v7);
}

uint64_t sub_99CC()
{
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_9A64;
  v2 = v0[5];
  v3 = v0[4];

  return sub_5C7C4(v3, v2);
}

uint64_t sub_9A64(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return _swift_task_switch(sub_9B8C, v4, v3);
}

uint64_t sub_9B8C()
{
  v1 = v0[11];
  if (v1)
  {
LABEL_13:

    v15 = v0[1];

    return v15(v1);
  }

  v2 = v0[7];
  sub_A48C(v0[6] + qword_D03B0, v2);
  v3 = sub_8FC30();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[7];
  if (v5 == 1)
  {
    sub_A424(v0[7]);
LABEL_8:
    if (qword_C3908 != -1)
    {
      swift_once();
    }

    v11 = sub_900D0();
    sub_7FF0(v11, qword_C4010);
    v12 = sub_900B0();
    v13 = sub_90A70();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "generateImage no route info in metadata", v14, 2u);
    }

    goto LABEL_13;
  }

  v7 = sub_8FBD0();
  v0[12] = v7;
  (*(v4 + 8))(v6, v3);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = (v0[6] + qword_C7530);
  v0[13] = *v8;
  v0[14] = v8[1];
  sub_90860();

  v0[15] = sub_90850();
  v10 = sub_907F0();

  return _swift_task_switch(sub_9E08, v10, v9);
}

uint64_t sub_9E08()
{
  receiver = v0[7].receiver;
  v3 = v0[6].receiver;
  super_class = v0[6].super_class;

  v4 = type metadata accessor for RouteMapGenerator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_mapSnapshotter] = 0;
  *&v5[OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_lineWidth] = 0x4008000000000000;
  v5[OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_sizeType] = 8;
  v6 = &v5[OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_id];
  *v6 = super_class;
  v6[1] = receiver;
  *&v5[OBJC_IVAR____TtC15JournalSettings17RouteMapGenerator_routeCoordinates] = v3;
  v0[1].receiver = v5;
  v0[1].super_class = v4;
  v0[8].receiver = objc_msgSendSuper2(v0 + 1, "init");
  v7 = v0[4].receiver;
  v8 = v0[4].super_class;

  return _swift_task_switch(sub_9F00, v7, v8);
}

uint64_t sub_9F00()
{
  v1 = *(*(v0 + 48) + qword_D0590);
  *(v0 + 152) = v1;
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_9FAC;

  return sub_4FFC(v1);
}

uint64_t sub_9FAC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  *(*v1 + 144) = a1;

  v4 = *(v2 + 72);
  v5 = *(v2 + 64);

  return _swift_task_switch(sub_A0F4, v5, v4);
}

uint64_t sub_A0F4()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    if (sub_60EC8(*(v0 + 152)))
    {
      if (qword_C3A10 != -1)
      {
        swift_once();
      }

      sub_5E3A0(v1, *(v0 + 104), *(v0 + 112));
    }

    v2 = *(v0 + 144);
  }

  else
  {
    if (qword_C3908 != -1)
    {
      swift_once();
    }

    v3 = sub_900D0();
    sub_7FF0(v3, qword_C4010);
    v4 = sub_900B0();
    v5 = sub_90A70();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "error generating route map image", v6, 2u);
    }

    v2 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v2);
}

uint64_t type metadata accessor for WorkoutRouteThumbnailCacheOperation()
{
  result = qword_C4050;
  if (!qword_C4050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A2E4()
{
  sub_A374();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_A374()
{
  if (!qword_C4060)
  {
    sub_8FC30();
    v0 = sub_90D10();
    if (!v1)
    {
      atomic_store(v0, &qword_C4060);
    }
  }
}

uint64_t sub_A3D4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_A424(uint64_t a1)
{
  v2 = sub_3A90(&qword_C41A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A48C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A90(&qword_C41A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A4FC()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_C41A8);
  sub_7FF0(v0, qword_C41A8);
  return sub_900C0();
}

uint64_t sub_A57C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_3A90(&qword_C4338);
  v3[5] = swift_task_alloc();
  sub_3A90(&qword_C4340);
  v3[6] = swift_task_alloc();
  v5 = sub_8F810();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_907F0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[10] = v6;
  v3[11] = v8;

  return _swift_task_switch(sub_A6EC, v6, v8);
}

uint64_t sub_A6EC()
{
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_A784;
  v2 = v0[3];
  v3 = v0[2];

  return sub_5C7C4(v3, v2);
}

uint64_t sub_A784(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_A8AC, v4, v3);
}

uint64_t sub_A8AC()
{
  v1 = v0[13];
  if (v1)
  {
LABEL_10:

    v14 = v0[1];

    return v14(v1);
  }

  v2 = v0[5];
  sub_BBA0(v0[4] + qword_D03B8, v2);
  v3 = sub_8F960();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  if (v5 == 1)
  {
    sub_8EF0(v0[5], &qword_C4338);
    (*(v7 + 56))(v9, 1, 1, v6);
LABEL_5:
    sub_8EF0(v0[6], &qword_C4340);
    if (qword_C3910 != -1)
    {
      swift_once();
    }

    v10 = sub_900D0();
    sub_7FF0(v10, qword_C41A8);
    v11 = sub_900B0();
    v12 = sub_90A70();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "no visits data", v13, 2u);
    }

    goto LABEL_10;
  }

  sub_8F950();
  (*(v4 + 8))(v8, v3);
  if ((*(v7 + 48))(v9, 1, v6) == 1)
  {
    goto LABEL_5;
  }

  (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
  v16 = swift_task_alloc();
  v0[14] = v16;
  *v16 = v0;
  v16[1] = sub_ABA4;
  v17 = v0[9];
  v18 = v0[3];
  v19 = v0[2];

  return sub_B224(v19, v18, v17);
}

uint64_t sub_ABA4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_ACCC, v4, v3);
}

uint64_t sub_ACCC()
{
  if (*(v0 + 120))
  {
    v1 = *(*(v0 + 32) + qword_D0590);
    *(v0 + 144) = v1;
    if (sub_616D8(v1))
    {
      sub_3F1E8();
      v3 = v2;
      v4 = [objc_opt_self() mainScreen];
      [v4 scale];
      v6 = v5;

      v7 = swift_task_alloc();
      *(v0 + 128) = v7;
      *v7 = v0;
      v7[1] = sub_AE80;
      v8 = *(v0 + 16);

      return sub_41B38(v8, v3 * v6);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v10 = *(v0 + 120);
  }

  else
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v10 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_AE80(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_AFA8, v4, v3);
}

uint64_t sub_AFA8()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    if (sub_60EC8(*(v0 + 144)))
    {
      if (qword_C3A10 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 64);
      v2 = *(v0 + 72);
      v4 = *(v0 + 56);
      sub_5E3A0(v1, *(*(v0 + 32) + qword_C7530), *(*(v0 + 32) + qword_C7530 + 8));

      (*(v3 + 8))(v2, v4);
    }

    else
    {
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    }
  }

  else
  {
    if (qword_C3910 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 32);
    v6 = sub_900D0();
    sub_7FF0(v6, qword_C41A8);
    v7 = v5;
    v8 = sub_900B0();
    v9 = sub_90A70();

    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);
    if (v10)
    {
      v14 = *(v0 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v14;
      *v16 = v14;
      v17 = v14;
      _os_log_impl(&dword_0, v8, v9, "%@ - error creating thumbnail from MKMap", v15, 0xCu);
      sub_8EF0(v16, &qword_C3FB8);
    }

    (*(v12 + 8))(v11, v13);
  }

  v18 = *(v0 + 120);

  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t sub_B224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_907F0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[21] = v5;
  v4[22] = v7;

  return _swift_task_switch(sub_B2B4, v5, v7);
}

uint64_t sub_B2B4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  sub_3A90(&qword_C4348);
  v3 = sub_8F810();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_98740;
  (*(v4 + 16))(v6 + v5, v1, v3);
  *(v0 + 184) = sub_41704(v6);
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  *(v0 + 232) = *(v2 + qword_D0590);
  *(v0 + 192) = *(v2 + qword_D05A0);
  sub_90860();
  *(v0 + 200) = sub_90850();
  v8 = sub_907F0();

  return _swift_task_switch(sub_B474, v8, v7);
}

uint64_t sub_B474()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v3 = *(v0 + 232);

  *(v0 + 208) = sub_3AFAC(v2, 0, v3, 0, 0, 1, v1, 0);

  v4 = *(v0 + 168);
  v5 = *(v0 + 176);

  return _swift_task_switch(sub_B518, v4, v5);
}

uint64_t sub_B518()
{
  v1 = v0[26];
  [v1 _setRendersInBackground:1];
  v2 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v1];
  v0[27] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_B66C;
  v3 = swift_continuation_init();
  v0[17] = sub_3A90(&qword_C3FB0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_EFAC;
  v0[13] = &unk_B4518;
  v0[14] = v3;
  [v2 startWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_B66C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_B830;
  }

  else
  {
    v5 = sub_B79C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_B79C()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];
  v4 = [v3 image];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_B830()
{
  swift_willThrow();
  if (qword_C3910 != -1)
  {
    swift_once();
  }

  v1 = sub_900D0();
  sub_7FF0(v1, qword_C41A8);
  swift_errorRetain();
  v2 = sub_900B0();
  v3 = sub_90A70();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[27];
  v6 = v0[26];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v2, v3, "MKMapSnapshotter: Unable to create Location Preview Map Snapshot with error: %@", v7, 0xCu);
    sub_8EF0(v8, &qword_C3FB8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t type metadata accessor for GenericMapThumbnailCacheOperation()
{
  result = qword_C41E8;
  if (!qword_C41E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_BAB0()
{
  sub_BB40();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_BB40()
{
  if (!qword_C41F8)
  {
    sub_8F960();
    v0 = sub_90D10();
    if (!v1)
    {
      atomic_store(v0, &qword_C41F8);
    }
  }
}

uint64_t sub_BBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A90(&qword_C4338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BC28()
{
  v0 = sub_90AF0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_90AE0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_902A0();
  __chkstk_darwin(v5 - 8);
  sub_C8F4();
  sub_90240();
  sub_90AD0();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_90B30();
  qword_D03C0 = result;
  return result;
}

uint64_t sub_BDD8()
{
  v0 = sub_90AF0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_90AE0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_902A0();
  __chkstk_darwin(v5 - 8);
  sub_C8F4();
  sub_90270();
  sub_90AD0();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_90B30();
  qword_D03C8 = result;
  return result;
}

uint64_t sub_BF88()
{
  v0 = sub_90AF0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_90AE0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_902A0();
  __chkstk_darwin(v5 - 8);
  sub_C8F4();
  sub_90240();
  sub_90AD0();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_90B30();
  qword_D03D0 = result;
  return result;
}

uint64_t sub_C140(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v60 = a4;
  LOBYTE(v5) = a1;
  v6 = sub_8F350();
  v59 = *(v6 - 1);
  __chkstk_darwin(v6);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &stru_BB000;
  if ((a3 & 1) == 0)
  {
    v57 = 0x8000000000093010;
    v56 = v5 & 1;
    goto LABEL_5;
  }

  v9 = [objc_opt_self() defaultCenter];
  if (qword_C3A58 == -1)
  {
    goto LABEL_3;
  }

  while (1)
  {
    swift_once();
LABEL_3:
    v10 = qword_D0700;
    sub_3A90(&qword_C4358);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_98A20;
    strcpy(&v63, "downloadIDKey");
    HIWORD(v63) = -4864;
    sub_90E50();
    v12 = sub_8F300();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v12;
    *(inited + 80) = v13;
    *&v63 = 0xD000000000000013;
    *(&v63 + 1) = 0x8000000000093010;
    v57 = 0x8000000000093010;
    sub_90E50();
    *(inited + 168) = &_s16DownloadPriorityON;
    v56 = v5 & 1;
    *(inited + 144) = v5 & 1;
    *&v63 = 0x64616F6C6E776F64;
    *(&v63 + 1) = 0xEF79654B65707954;
    sub_90E50();
    *(inited + 240) = &_s12DownloadTypeON;
    *(inited + 216) = 1;
    sub_7AC28(inited);
    swift_setDeallocating();
    sub_3A90(&qword_C8870);
    swift_arrayDestroy();
    isa = sub_90440().super.isa;

    [v9 postNotificationName:v10 object:0 userInfo:isa];

    v8 = &stru_BB000;
LABEL_5:
    v15 = v60 + 56;
    v16 = 1 << *(v60 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v9 = v17 & *(v60 + 56);
    v18 = (v16 + 63) >> 6;
    v54 = (v59 + 8);
    v55 = v59 + 16;

    v19 = 0;
    v5 = v58;
    v52 = v15;
    v53 = v18;
    v51 = v6;
    if (!v9)
    {
      break;
    }

    while (1)
    {
      v20 = v19;
LABEL_12:
      (*(v59 + 16))(v5, *(v60 + 48) + *(v59 + 72) * (__clz(__rbit64(v9)) | (v20 << 6)), v6);
      v62 = [objc_opt_self() v8[62].type];
      if (qword_C3A58 != -1)
      {
        swift_once();
      }

      v61 = qword_D0700;
      strcpy(&v63, "downloadIDKey");
      HIWORD(v63) = -4864;
      sub_90E50();
      v21 = sub_8F300();
      v23 = v22;
      (*v54)(v5, v6);
      v68[8] = &type metadata for String;
      v68[5] = v21;
      v68[6] = v23;
      *&v63 = 0xD000000000000013;
      *(&v63 + 1) = v57;
      sub_90E50();
      v70 = &_s16DownloadPriorityON;
      v69[40] = v56;
      *&v63 = 0x64616F6C6E776F64;
      v5 = &v67;
      *(&v63 + 1) = 0xEF79654B65707954;
      sub_90E50();
      v72 = &_s12DownloadTypeON;
      v71[40] = 0;
      sub_3A90(&qword_C4350);
      v24 = sub_90FD0();
      sub_C874(v68, &v63);
      v25 = sub_79E14(&v63);
      v6 = &v63;
      if (v26)
      {
        break;
      }

      v27 = v24 + 8;
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v25;
      v28 = v24[6] + 40 * v25;
      v29 = v63;
      v30 = v64;
      *(v28 + 32) = v65;
      *v28 = v29;
      *(v28 + 16) = v30;
      sub_C8E4(v66, (v24[7] + 32 * v25));
      v31 = v24[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v24[2] = v33;
      sub_C874(v69, &v63);
      v34 = sub_79E14(&v63);
      if (v35)
      {
        break;
      }

      *(v27 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      v36 = v24[6] + 40 * v34;
      v37 = v63;
      v38 = v64;
      *(v36 + 32) = v65;
      *v36 = v37;
      *(v36 + 16) = v38;
      sub_C8E4(v66, (v24[7] + 32 * v34));
      v39 = v24[2];
      v32 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v24[2] = v40;
      sub_C874(v71, &v63);
      v41 = sub_79E14(&v63);
      if (v42)
      {
        break;
      }

      *(v27 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v43 = v24[6] + 40 * v41;
      v44 = v63;
      v45 = v64;
      *(v43 + 32) = v65;
      *v43 = v44;
      *(v43 + 16) = v45;
      sub_C8E4(v66, (v24[7] + 32 * v41));
      v46 = v24[2];
      v32 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v9 &= v9 - 1;
      v24[2] = v47;
      sub_3A90(&qword_C8870);
      swift_arrayDestroy();
      v48 = sub_90440().super.isa;

      v49 = v62;
      [v62 postNotificationName:v61 object:0 userInfo:v48];

      v19 = v20;
      v6 = v51;
      v15 = v52;
      v5 = v58;
      v8 = &stru_BB000;
      v18 = v53;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  while (1)
  {
LABEL_9:
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v20 >= v18)
    {
    }

    v9 = *(v15 + 8 * v20);
    ++v19;
    if (v9)
    {
      goto LABEL_12;
    }
  }
}

uint64_t sub_C874(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A90(&qword_C8870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_C8E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_C8F4()
{
  result = qword_C4360;
  if (!qword_C4360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C4360);
  }

  return result;
}

unint64_t sub_C96C()
{
  result = qword_C4368;
  if (!qword_C4368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4368);
  }

  return result;
}

unint64_t sub_C9C4()
{
  result = qword_C4370;
  if (!qword_C4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4370);
  }

  return result;
}

id sub_CA38()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setParagraphSpacingBefore:8.0];
  sub_CA88();
  return v0;
}

id sub_CA88()
{
  isa = v0;
  result = [(objc_class *)v0 tabStops];
  if (result)
  {
    v3 = result;
    sub_CDE4();
    v4 = sub_90740();

    if (v4 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_90FA0())
    {
      v19 = isa;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = sub_90EC0();
      }

      else
      {
        if (!*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v6 = *(v4 + 32);
      }

      v7 = v6;
      v8 = objc_allocWithZone(NSTextTab);
      type metadata accessor for OptionKey(0);
      sub_CE30();
      isa = sub_90440().super.isa;
      [v8 initWithTextAlignment:2 location:isa options:26.0];

      sub_90720();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        isa = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        sub_90770();
      }

      sub_907A0();

      if (i == 1)
      {
LABEL_10:
        isa = v19;
        break;
      }

      v9 = 36.0;
      v10 = 5;
      while (1)
      {
        v11 = v10 - 4;
        if ((v4 & 0xC000000000000001) != 0)
        {
          v12 = sub_90EC0();
        }

        else
        {
          if (v11 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_21;
          }

          v12 = *(v4 + 8 * v10);
        }

        v13 = v12;
        v14 = v10 - 3;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = [v12 alignment];
        v16 = objc_allocWithZone(NSTextTab);
        v17 = sub_90440().super.isa;
        [v16 initWithTextAlignment:v15 location:v17 options:v9];

        sub_90720();
        isa = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        if (isa >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_90770();
        }

        sub_907A0();

        v9 = v9 + 10.0;
        ++v10;
        if (v14 == i)
        {
          goto LABEL_10;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v18 = sub_90730().super.isa;

    [(objc_class *)isa setTabStops:v18];

    return [(objc_class *)isa setDefaultTabInterval:10.0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_CDE4()
{
  result = qword_C4378;
  if (!qword_C4378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C4378);
  }

  return result;
}

unint64_t sub_CE30()
{
  result = qword_C3D10;
  if (!qword_C3D10)
  {
    type metadata accessor for OptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3D10);
  }

  return result;
}

uint64_t sub_CE88()
{
  v1 = sub_8F390();
  __chkstk_darwin(v1 - 8);
  v2 = sub_90540();
  __chkstk_darwin(v2 - 8);
  v3 = sub_8F570();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v0, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for MediaViewType.song(_:) || v7 == enum case for MediaViewType.songAlbum(_:))
  {
    goto LABEL_10;
  }

  v8 = v7 == enum case for MediaViewType.podcast(_:) || v7 == enum case for MediaViewType.podcastArtist(_:);
  if (v8 || v7 == enum case for MediaViewType.audiobook(_:))
  {
    goto LABEL_10;
  }

  if (v7 == enum case for MediaViewType.thirdPartyMedia(_:))
  {
    sub_904E0();
    sub_8F380();
    return sub_905B0();
  }

  if (v7 == enum case for MediaViewType.thirdPartyMediaAlbum(_:) || v7 == enum case for MediaViewType.thirdPartyMediaArtist(_:))
  {
LABEL_10:
    sub_904E0();
    sub_8F380();
    return sub_905C0();
  }

  result = sub_910E0();
  __break(1u);
  return result;
}

uint64_t sub_D24C(uint64_t a1)
{
  v2[3] = v1;
  if (a1)
  {
    swift_getObjectType();
    v3 = sub_907F0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2[4] = v3;
  v2[5] = v5;

  return _swift_task_switch(sub_D2DC, v3, v5);
}

uint64_t sub_D2DC()
{
  v1 = v0[3];
  v2 = *(v1 + qword_C4390);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_3A90(&qword_C44B8);
  *v4 = v0;
  v4[1] = sub_D3E4;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_98B98, v3, v5);
}

uint64_t sub_D3E4()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_D51C;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_D500;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_D51C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_D580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_D5A4, 0, 0);
}

uint64_t sub_D5A4()
{
  v1 = *(*(v0 + 32) + qword_C4380);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_D650;

  return CKDatabase.records(for:desiredKeys:)(v1, 0);
}

uint64_t sub_D650(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_D79C, 0, 0);
  }
}

void sub_D7F0()
{

  v1 = *(v0 + qword_C4390);
}

id sub_D840()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatchRecordDownloadOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_D878(uint64_t a1)
{

  v2 = *(a1 + qword_C4390);
}

uint64_t type metadata accessor for BatchRecordDownloadOperation()
{
  result = qword_C43C0;
  if (!qword_C43C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D978(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = sub_907F0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return _swift_task_switch(sub_DA0C, v4, v6);
}

uint64_t sub_DA0C()
{
  v1 = v0[4];
  v2 = *(v1 + qword_C4390);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_3A90(&qword_C44B8);
  *v4 = v0;
  v4[1] = sub_DB14;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_98B88, v3, v5);
}

uint64_t sub_DB14()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_DC50;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_DC30;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_DC50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_DCBC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_DE1C;

  return sub_D580(a1, a2, v6);
}

uint64_t sub_DD6C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_3BC8;

  return sub_D580(a1, a2, v6);
}

uint64_t sub_DE20()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_C44C0);
  sub_7FF0(v0, qword_C44C0);
  return sub_900C0();
}

uint64_t sub_DEB0(uint64_t a1)
{
  v2[3] = v1;
  v4 = sub_8EFE0();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_907F0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v2[8] = v5;
  v2[9] = v7;

  return _swift_task_switch(sub_DFB8, v5, v7);
}

uint64_t sub_DFB8()
{
  v1 = v0[3];
  v2 = *(v1 + qword_C44E8);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = sub_EE24();
  *v4 = v0;
  v4[1] = sub_E0B4;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_98BE8, v3, v5);
}

uint64_t sub_E0B4()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_E68C;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_E1D0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_E1D0()
{
  v1 = v0[2];
  if (!sub_90C70())
  {
    goto LABEL_7;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_7:
    if (qword_C3930 != -1)
    {
      swift_once();
    }

    v12 = v0[3];
    v13 = sub_900D0();
    sub_7FF0(v13, qword_C44C0);
    v14 = v12;
    v1 = v1;
    v15 = sub_900B0();
    v16 = sub_90A70();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[3];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412546;
      v20 = *(v17 + qword_C44D8);
      *(v18 + 4) = v20;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v1;
      *v19 = v20;
      v19[1] = v1;
      v21 = v1;
      v22 = v20;
      _os_log_impl(&dword_0, v15, v16, "error getting JournalEntryAsset.assetMetadataAsset as CKAsset for requested id: %@. Record: %@", v18, 0x16u);
      sub_3A90(&qword_C3FB8);
      swift_arrayDestroy();
    }

    sub_EE70();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  v3 = [v2 fileURL];
  if (!v3)
  {
    if (qword_C3930 != -1)
    {
      swift_once();
    }

    v26 = v0[3];
    v27 = sub_900D0();
    sub_7FF0(v27, qword_C44C0);
    v28 = v26;
    v29 = sub_900B0();
    v30 = sub_90A70();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[3];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = *(v31 + qword_C44D8);
      *(v32 + 4) = v34;
      *v33 = v34;
      v35 = v34;
      _os_log_impl(&dword_0, v29, v30, "ckAsset.fileURL is nil for requested recordID: %@", v32, 0xCu);
      sub_EEC4(v33);
    }

    sub_EE70();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_12:

    goto LABEL_13;
  }

  v4 = v0[12];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v3;
  sub_8EFA0();

  (*(v8 + 32))(v5, v6, v7);
  v11 = sub_8EFF0();
  if (v4)
  {
    (*(v0[5] + 8))(v0[7], v0[4], v11);

    swift_unknownObjectRelease();
LABEL_13:

    v24 = v0[1];

    return v24();
  }

  v37 = v11;
  v38 = v10;
  (*(v0[5] + 8))();
  swift_unknownObjectRelease();

  v39 = v0[1];

  return v39(v37, v38, v1);
}

uint64_t sub_E68C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_E724, 0, 0);
}

uint64_t sub_E724()
{
  v1 = v0[20];
  v2 = *(v0[21] + qword_C44D8);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_E858;
  v3 = swift_continuation_init();
  v0[17] = sub_3A90(&qword_C4618);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_EFAC;
  v0[13] = &unk_B4660;
  v0[14] = v3;
  [v1 fetchRecordWithID:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_E858()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_E988;
  }

  else
  {
    v2 = sub_E968;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_E988()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

void sub_EA24()
{
  v1 = *(v0 + qword_C44E8);
}

id sub_EA74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetMetadataDownloadOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_EAAC(uint64_t a1)
{
  v2 = *(a1 + qword_C44E8);
}

uint64_t type metadata accessor for AssetMetadataDownloadOperation()
{
  result = qword_C4518;
  if (!qword_C4518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_EBA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_EC48;

  return sub_DEB0(a2);
}

uint64_t sub_EC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 16);
    *v10 = a1;
    v10[1] = a2;
    v10[2] = a3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_ED74(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_3BC8;

  return sub_E700(a1, a2, v6);
}

unint64_t sub_EE24()
{
  result = qword_C4608;
  if (!qword_C4608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C4608);
  }

  return result;
}

unint64_t sub_EE70()
{
  result = qword_C4610;
  if (!qword_C4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4610);
  }

  return result;
}

uint64_t sub_EEC4(uint64_t a1)
{
  v2 = sub_3A90(&qword_C3FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_EF58()
{
  result = qword_C4620;
  if (!qword_C4620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4620);
  }

  return result;
}

uint64_t sub_EFAC(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_FCAC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_3A90(&unk_C8830);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_F084()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_C4628);
  sub_7FF0(v0, qword_C4628);
  return sub_900C0();
}

uint64_t sub_F108(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = v2;
  v5 = sub_8EFE0();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_907F0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[8] = v6;
  v3[9] = v8;

  return _swift_task_switch(sub_F204, v6, v8);
}

uint64_t sub_F204()
{
  v1 = v0[4];
  v2 = *(v1 + qword_C4650);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = sub_EE24();
  *v4 = v0;
  v4[1] = sub_F300;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_98D00, v3, v5);
}

uint64_t sub_F300()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_F864;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_F41C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_F41C()
{
  v1 = v0[2];
  if (!sub_90C70())
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_6:
    if (qword_C3938 != -1)
    {
      swift_once();
    }

    v12 = v0[4];
    v13 = sub_900D0();
    sub_7FF0(v13, qword_C4628);
    v14 = v12;
    v15 = v1;
    v16 = sub_900B0();
    v17 = sub_90A70();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[4];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412546;
      v21 = *(v18 + qword_C4640);
      *(v19 + 4) = v21;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v15;
      *v20 = v21;
      v20[1] = v15;
      v22 = v15;
      v23 = v21;
      _os_log_impl(&dword_0, v16, v17, "Error getting JournalEntryAssetFileAttachment.file as CKAsset for requested id %@. Record: %@", v19, 0x16u);
      sub_3A90(&qword_C3FB8);
      swift_arrayDestroy();
    }

    sub_FC40();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    goto LABEL_11;
  }

  v3 = [v2 fileURL];
  if (v3)
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    v7 = v0[3];
    v8 = v3;
    sub_8EFA0();
    swift_unknownObjectRelease();

    v9 = sub_3A90(&qword_C4778);
    v10 = *(v9 + 48);
    (*(v5 + 32))(v7, v4, v6);
    *(v7 + v10) = v1;
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);

    v11 = v0[1];
    goto LABEL_12;
  }

  if (qword_C3938 != -1)
  {
    swift_once();
  }

  v26 = v0[4];
  v27 = sub_900D0();
  sub_7FF0(v27, qword_C4628);
  v28 = v26;
  v29 = sub_900B0();
  v30 = sub_90A70();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v0[4];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = *(v31 + qword_C4640);
    *(v32 + 4) = v34;
    *v33 = v34;
    v35 = v34;
    _os_log_impl(&dword_0, v29, v30, "ckAsset.fileURL is nil for requested recordID %@", v32, 0xCu);
    sub_EEC4(v33);
  }

  sub_FC40();
  swift_allocError();
  *v36 = 1;
  swift_willThrow();
  swift_unknownObjectRelease();
LABEL_11:

  v11 = v0[1];
LABEL_12:

  return v11();
}

uint64_t sub_F864()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_F8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_F8F4, 0, 0);
}

uint64_t sub_F8F4()
{
  v1 = v0[20];
  v2 = *(v0[21] + qword_C4640);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_E858;
  v3 = swift_continuation_init();
  v0[17] = sub_3A90(&qword_C4618);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_EFAC;
  v0[13] = &unk_B4718;
  v0[14] = v3;
  [v1 fetchRecordWithID:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

void sub_FA58()
{
  v1 = *(v0 + qword_C4650);
}

id sub_FAA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttachmentDownloadOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_FAE0(uint64_t a1)
{
  v2 = *(a1 + qword_C4650);
}

uint64_t type metadata accessor for AttachmentDownloadOperation()
{
  result = qword_C4680;
  if (!qword_C4680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_FB90(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_3BC8;

  return sub_F8D0(a1, a2, v6);
}

unint64_t sub_FC40()
{
  result = qword_C4770;
  if (!qword_C4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4770);
  }

  return result;
}

void *sub_FCAC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_FD04()
{
  result = qword_C4780;
  if (!qword_C4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4780);
  }

  return result;
}

uint64_t sub_FD58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4A30);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC15JournalSettings17WorkoutRouteAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC15JournalSettings17WorkoutRouteAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_8F030();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3A90(&qword_C4B50);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3A90(&qword_C41A0);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_98E00;
      sub_17F0C(v5, v13 + *(*v13 + 120), &qword_C4A30);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_13384(a1);
  }

  else
  {
    v17 = sub_8FC30();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_FF98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4960);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC15JournalSettings15GenericMapAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC15JournalSettings15GenericMapAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_8F030();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3A90(&qword_C4B58);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3A90(&qword_C4338);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_98E00;
      sub_17F0C(v5, v13 + *(*v13 + 120), &qword_C4960);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_13728(a1);
  }

  else
  {
    v17 = sub_8F960();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_101D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4888);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC15JournalSettings13ConfettiAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC15JournalSettings13ConfettiAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_8F030();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3A90(&qword_C4890);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3A90(&qword_C4820);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_98E00;
      sub_17F0C(v5, v13 + *(*v13 + 120), &qword_C4888);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_13ACC(a1);
  }

  else
  {
    v17 = sub_8F8F0();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10414@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C48A0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC15JournalSettings12ContactAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC15JournalSettings12ContactAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_8F030();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3A90(&qword_C48A8);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3A90(&qword_C48B0);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_98E00;
      sub_17F0C(v5, v13 + *(*v13 + 120), &qword_C48A0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_13E70(a1);
  }

  else
  {
    v17 = sub_8F840();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10654@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C48C8);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC15JournalSettings10MusicAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC15JournalSettings10MusicAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_8F030();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3A90(&qword_C48D0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3A90(&qword_C48D8);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_98E00;
      sub_17F0C(v5, v13 + *(*v13 + 120), &qword_C48C8);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_14214(a1);
  }

  else
  {
    v17 = sub_8F770();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10894@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C48F0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC15JournalSettings9BookAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC15JournalSettings9BookAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_8F030();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3A90(&qword_C48F8);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3A90(&qword_C4900);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_98E00;
      sub_17F0C(v5, v13 + *(*v13 + 120), &qword_C48F0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_145B8(a1);
  }

  else
  {
    v17 = sub_8F650();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10AD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4918);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC15JournalSettings12PodcastAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC15JournalSettings12PodcastAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_8F030();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3A90(&qword_C4920);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3A90(&qword_C4928);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_98E00;
      sub_17F0C(v5, v13 + *(*v13 + 120), &qword_C4918);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_1495C(a1);
  }

  else
  {
    v17 = sub_8F8A0();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10D14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4978);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC15JournalSettings10AudioAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC15JournalSettings10AudioAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_8F030();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3A90(&qword_C4998);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3A90(&qword_C4988);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_98E00;
      sub_17F0C(v5, v13 + *(*v13 + 120), &qword_C4978);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_150A4(a1);
  }

  else
  {
    v17 = sub_8F6F0();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10F54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C49C0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC15JournalSettings16StateOfMindAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC15JournalSettings16StateOfMindAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_8F030();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3A90(&qword_C49C8);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3A90(&qword_C49D0);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_98E00;
      sub_17F0C(v5, v13 + *(*v13 + 120), &qword_C49C0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_157EC(a1);
  }

  else
  {
    v17 = sub_8FAB0();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_11194@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4A08);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC15JournalSettings20ThirdPartyMediaAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC15JournalSettings20ThirdPartyMediaAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_8F030();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3A90(&qword_C4A10);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3A90(&qword_C4A18);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_98E00;
      sub_17F0C(v5, v13 + *(*v13 + 120), &qword_C4A08);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_15F34(a1);
  }

  else
  {
    v17 = sub_8FD60();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_113D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4AC0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC15JournalSettings16MultiPinMapAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC15JournalSettings16MultiPinMapAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_8F030();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3A90(&qword_C4AF0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3A90(&qword_C4AD0);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_98E00;
      sub_17F0C(v5, v13 + *(*v13 + 120), &qword_C4AC0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_162D8(a1);
  }

  else
  {
    v17 = sub_8FA70();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_11614@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4A48);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC15JournalSettings12DrawingAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC15JournalSettings12DrawingAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_8F030();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3A90(&qword_C4A50);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3A90(&qword_C4A58);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_98E00;
      sub_17F0C(v5, v13 + *(*v13 + 120), &qword_C4A48);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_1667C(a1);
  }

  else
  {
    v17 = sub_8F860();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_11854@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4A70);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC15JournalSettings10PhotoAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC15JournalSettings10PhotoAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_8F030();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3A90(&qword_C4A78);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3A90(&qword_C4A80);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_98E00;
      sub_17F0C(v5, v13 + *(*v13 + 120), &qword_C4A70);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_16A20(a1);
  }

  else
  {
    v17 = sub_8FB90();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_11A94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4A70);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC15JournalSettings10VideoAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC15JournalSettings10VideoAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_8F030();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3A90(&qword_C4A78);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3A90(&qword_C4A80);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_98E00;
      sub_17F0C(v5, v13 + *(*v13 + 120), &qword_C4A70);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_16A20(a1);
  }

  else
  {
    v17 = sub_8FB90();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_11CD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4A70);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC15JournalSettings14LivePhotoAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC15JournalSettings14LivePhotoAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_8F030();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3A90(&qword_C4A78);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3A90(&qword_C4A80);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_98E00;
      sub_17F0C(v5, v13 + *(*v13 + 120), &qword_C4A70);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_16A20(a1);
  }

  else
  {
    v17 = sub_8FB90();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_11F14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4A98);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC15JournalSettings15ReflectionAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC15JournalSettings15ReflectionAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_8F030();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3A90(&qword_C4AA0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3A90(&qword_C4AA8);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_98E00;
      sub_17F0C(v5, v13 + *(*v13 + 120), &qword_C4A98);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_16DC4(a1);
  }

  else
  {
    v17 = sub_8F980();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

id sub_12164()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfettiAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ConfettiAsset()
{
  result = qword_C47B0;
  if (!qword_C47B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1226C()
{
  v1 = sub_8F390();
  __chkstk_darwin(v1 - 8);
  v103 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_90540();
  __chkstk_darwin(v3 - 8);
  v102 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3A90(&qword_C4808);
  v6 = __chkstk_darwin(v5 - 8);
  v104 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  *&v95 = &v87 - v9;
  __chkstk_darwin(v8);
  v99 = &v87 - v10;
  v100 = sub_8F2F0();
  v105 = *(v100 - 8);
  v11 = __chkstk_darwin(v100);
  v96 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = &v87 - v13;
  v14 = sub_3A90(&qword_C4810);
  __chkstk_darwin(v14 - 8);
  v94 = &v87 - v15;
  v93 = sub_8EE40();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A90(&qword_C4818);
  __chkstk_darwin(v17 - 8);
  v19 = &v87 - v18;
  v20 = sub_8EE60();
  v98 = *(v20 - 8);
  __chkstk_darwin(v20);
  v90 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_8FFF0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_3A90(&qword_C4820);
  __chkstk_darwin(v26 - 8);
  v28 = &v87 - v27;
  v29 = sub_8F8F0();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v0;
  sub_101D8(v28);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_8EF0(v28, &qword_C4820);
    return 0;
  }

  else
  {
    v34 = *(v30 + 32);
    v89 = v29;
    v34(v32, v28, v29);
    sub_8FF70();
    v35 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_8FF50().super.isa;
    v37 = [v35 initWithContentType:isa];

    (*(v23 + 8))(v25, v22);
    sub_8F8B0();
    v38 = v98;
    if ((*(v98 + 48))(v19, 1, v20) == 1)
    {
      sub_8EF0(v19, &qword_C4818);
    }

    else
    {
      v39 = v90;
      (*(v38 + 32))(v90, v19, v20);
      v40 = v91;
      sub_8EE30();
      sub_12EC4(v94);
      (*(v92 + 8))(v40, v93);
      sub_905D0();
      v41 = sub_90550();

      [v37 setDisplayName:v41];

      (*(v38 + 8))(v39, v20);
    }

    v98 = v30;
    v42 = v99;
    sub_8F8E0();
    v43 = v105;
    v44 = *(v105 + 48);
    v45 = v100;
    v46 = v44(v42, 1, v100);
    v88 = v37;
    if (v46 == 1)
    {
      sub_8EF0(v42, &qword_C4808);
      v47 = 0;
      v48 = 0;
    }

    else
    {
      v49 = *(v43 + 32);
      v50 = v97;
      v49(v97, v42, v45);
      v51 = v32;
      v52 = v95;
      v99 = v51;
      sub_8F8C0();
      if (v44(v52, 1, v45) == 1)
      {
        (*(v43 + 8))(v50, v45);
        sub_8EF0(v52, &qword_C4808);
        v47 = 0;
        v48 = 0;
        v32 = v99;
      }

      else
      {
        v49(v96, v52, v45);
        sub_3A90(&qword_C4848);
        v53 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v54 = swift_allocObject();
        v95 = xmmword_98740;
        *(v54 + 16) = xmmword_98740;
        v55 = *(v43 + 16);
        v55(v54 + v53, v50, v45);
        v56 = swift_allocObject();
        *(v56 + 16) = v95;
        v57 = v96;
        v55(v56 + v53, v96, v45);
        v32 = v99;
        v58 = sub_54BF0(v54, v56, 0);
        v48 = v59;

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v60 = *(v43 + 8);
        v60(v57, v45);
        v60(v97, v45);
        if (v48)
        {
          v47 = v58;
        }

        else
        {
          v47 = 0;
        }
      }
    }

    v61 = 0;
    v107 = sub_8F8D0();
    v108[0] = v62;
    v108[1] = v47;
    v108[2] = v48;
    v63 = _swiftEmptyArrayStorage;
LABEL_14:
    v64 = &v108[2 * v61];
    while (++v61 != 3)
    {
      v65 = v64 + 2;
      v66 = *v64;
      v64 += 2;
      if (v66)
      {
        v67 = v32;
        v68 = *(v65 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_174F0(0, *(v63 + 2) + 1, 1, v63);
        }

        v70 = *(v63 + 2);
        v69 = *(v63 + 3);
        if (v70 >= v69 >> 1)
        {
          v63 = sub_174F0((v69 > 1), v70 + 1, 1, v63);
        }

        *(v63 + 2) = v70 + 1;
        v71 = &v63[2 * v70];
        *(v71 + 4) = v68;
        *(v71 + 5) = v66;
        v43 = v105;
        v32 = v67;
        goto LABEL_14;
      }
    }

    sub_3A90(&qword_C4828);
    swift_arrayDestroy();
    v106 = v63;
    sub_3A90(&qword_C4830);
    sub_175FC();
    sub_90480();

    v72 = sub_90550();

    v33 = v88;
    [v88 setContentDescription:v72];

    v73 = *(v101 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
    if (v73)
    {
      v74 = [v73 entry];
      v75 = v104;
      if (v74)
      {
        v76 = v74;
        sub_8F500();

        v77 = 0;
      }

      else
      {
        v77 = 1;
      }
    }

    else
    {
      v77 = 1;
      v75 = v104;
    }

    (*(v43 + 56))(v75, v77, 1, v45);
    sub_904E0();
    sub_8F380();
    v78 = sub_905C0();
    v80 = v79;
    sub_3A90(&qword_C4840);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_98740;
    v82 = sub_577BC(v78, v80, v75);
    v84 = v83;

    *(v81 + 32) = v82;
    *(v81 + 40) = v84;
    v85 = sub_90730().super.isa;

    [v33 setAlternateNames:v85];

    sub_8EF0(v75, &qword_C4808);
    (*(v98 + 8))(v32, v89);
  }

  return v33;
}

uint64_t sub_12EC4@<X0>(uint64_t a1@<X8>)
{
  v24[2] = a1;
  v2 = sub_3A90(&qword_C4850);
  v3 = __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v24 - v6;
  v8 = sub_8EE50();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_3A90(&qword_C4858);
  __chkstk_darwin(v25);
  v26 = v24 - v12;
  v13 = sub_3A90(&qword_C4860);
  __chkstk_darwin(v13 - 8);
  v15 = v24 - v14;
  v16 = sub_8EE40();
  v17 = sub_17EC4(&qword_C4868, &type metadata accessor for AttributedString.CharacterView);
  v27 = v16;
  v18 = v17;
  sub_90940();
  sub_17EC4(&qword_C4870, &type metadata accessor for AttributedString.Index);
  result = sub_904D0();
  if (result)
  {
    sub_90950();
    sub_17EC4(&qword_C4878, &type metadata accessor for AttributedString.Index);
    result = sub_90490();
    if (result)
    {
      v24[0] = v1;
      v24[1] = v18;
      v20 = *(v9 + 32);
      v20(v7, v15, v8);
      v20(&v7[*(v2 + 48)], v11, v8);
      sub_17DF4(v7, v5, &qword_C4850);
      v21 = *(v2 + 48);
      v22 = v26;
      v20(v26, v5, v8);
      v23 = *(v9 + 8);
      v23(&v5[v21], v8);
      sub_17F0C(v7, v5, &qword_C4850);
      v20((v22 + *(v25 + 36)), &v5[*(v2 + 48)], v8);
      v23(v5, v8);
      sub_90970();
      return sub_8EF0(v22, &qword_C4858);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_13384@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4A30);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C4A38);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_17DF4(v1 + v12, v11, &qword_C4A38);
  v13 = sub_3A90(&qword_C41A0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_17F0C(v11, a1, &qword_C41A0);
  }

  sub_8EF0(v11, &qword_C4A38);
  sub_17DF4(v1 + *(*v1 + 120), v5, &qword_C4A30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_8FC30();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_8FC30();
    sub_17EC4(&qword_C4A40, &type metadata accessor for WorkoutRouteAssetMetadata);
    sub_8F010();
    sub_17DA0(v19, v18);
  }

  sub_17DF4(a1, v9, &qword_C41A0);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_17E5C(v9, v1 + v12, &qword_C4A38);
  return swift_endAccess();
}

uint64_t sub_13728@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4960);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C4968);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_17DF4(v1 + v12, v11, &qword_C4968);
  v13 = sub_3A90(&qword_C4338);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_17F0C(v11, a1, &qword_C4338);
  }

  sub_8EF0(v11, &qword_C4968);
  sub_17DF4(v1 + *(*v1 + 120), v5, &qword_C4960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_8F960();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_8F960();
    sub_17EC4(&qword_C4970, &type metadata accessor for GenericMapAssetMetadata);
    sub_8F010();
    sub_17DA0(v19, v18);
  }

  sub_17DF4(a1, v9, &qword_C4338);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_17E5C(v9, v1 + v12, &qword_C4968);
  return swift_endAccess();
}

uint64_t sub_13ACC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4888);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C4898);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_17DF4(v1 + v12, v11, &qword_C4898);
  v13 = sub_3A90(&qword_C4820);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_17F0C(v11, a1, &qword_C4820);
  }

  sub_8EF0(v11, &qword_C4898);
  sub_17DF4(v1 + *(*v1 + 120), v5, &qword_C4888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_8F8F0();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_8F8F0();
    sub_17EC4(&qword_C47C0, &type metadata accessor for ConfettiAssetMetadata);
    sub_8F010();
    sub_17DA0(v19, v18);
  }

  sub_17DF4(a1, v9, &qword_C4820);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_17E5C(v9, v1 + v12, &qword_C4898);
  return swift_endAccess();
}

uint64_t sub_13E70@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C48A0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C48B8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_17DF4(v1 + v12, v11, &qword_C48B8);
  v13 = sub_3A90(&qword_C48B0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_17F0C(v11, a1, &qword_C48B0);
  }

  sub_8EF0(v11, &qword_C48B8);
  sub_17DF4(v1 + *(*v1 + 120), v5, &qword_C48A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_8F840();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_8F840();
    sub_17EC4(&qword_C48C0, &type metadata accessor for ContactAssetMetadata);
    sub_8F010();
    sub_17DA0(v19, v18);
  }

  sub_17DF4(a1, v9, &qword_C48B0);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_17E5C(v9, v1 + v12, &qword_C48B8);
  return swift_endAccess();
}

uint64_t sub_14214@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C48C8);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C48E0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_17DF4(v1 + v12, v11, &qword_C48E0);
  v13 = sub_3A90(&qword_C48D8);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_17F0C(v11, a1, &qword_C48D8);
  }

  sub_8EF0(v11, &qword_C48E0);
  sub_17DF4(v1 + *(*v1 + 120), v5, &qword_C48C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_8F770();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_8F770();
    sub_17EC4(&qword_C48E8, &type metadata accessor for MusicAssetMetadata);
    sub_8F010();
    sub_17DA0(v19, v18);
  }

  sub_17DF4(a1, v9, &qword_C48D8);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_17E5C(v9, v1 + v12, &qword_C48E0);
  return swift_endAccess();
}

uint64_t sub_145B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C48F0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C4908);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_17DF4(v1 + v12, v11, &qword_C4908);
  v13 = sub_3A90(&qword_C4900);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_17F0C(v11, a1, &qword_C4900);
  }

  sub_8EF0(v11, &qword_C4908);
  sub_17DF4(v1 + *(*v1 + 120), v5, &qword_C48F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_8F650();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_8F650();
    sub_17EC4(&qword_C4910, &type metadata accessor for BookAssetMetadata);
    sub_8F010();
    sub_17DA0(v19, v18);
  }

  sub_17DF4(a1, v9, &qword_C4900);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_17E5C(v9, v1 + v12, &qword_C4908);
  return swift_endAccess();
}

uint64_t sub_1495C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4918);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C4930);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_17DF4(v1 + v12, v11, &qword_C4930);
  v13 = sub_3A90(&qword_C4928);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_17F0C(v11, a1, &qword_C4928);
  }

  sub_8EF0(v11, &qword_C4930);
  sub_17DF4(v1 + *(*v1 + 120), v5, &qword_C4918);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_8F8A0();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_8F8A0();
    sub_17EC4(&qword_C4938, &type metadata accessor for PodcastAssetMetadata);
    sub_8F010();
    sub_17DA0(v19, v18);
  }

  sub_17DF4(a1, v9, &qword_C4928);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_17E5C(v9, v1 + v12, &qword_C4930);
  return swift_endAccess();
}

uint64_t sub_14D00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4940);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C4948);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_17DF4(v1 + v12, v11, &qword_C4948);
  v13 = sub_3A90(&qword_C4950);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_17F0C(v11, a1, &qword_C4950);
  }

  sub_8EF0(v11, &qword_C4948);
  sub_17DF4(v1 + *(*v1 + 120), v5, &qword_C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_8FCB0();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_8FCB0();
    sub_17EC4(&qword_C4958, &type metadata accessor for MotionActivityAssetMetadata);
    sub_8F010();
    sub_17DA0(v19, v18);
  }

  sub_17DF4(a1, v9, &qword_C4950);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_17E5C(v9, v1 + v12, &qword_C4948);
  return swift_endAccess();
}

uint64_t sub_150A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4978);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C4980);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_17DF4(v1 + v12, v11, &qword_C4980);
  v13 = sub_3A90(&qword_C4988);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_17F0C(v11, a1, &qword_C4988);
  }

  sub_8EF0(v11, &qword_C4980);
  sub_17DF4(v1 + *(*v1 + 120), v5, &qword_C4978);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_8F6F0();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_8F6F0();
    sub_17EC4(&qword_C4990, &type metadata accessor for AudioAssetMetadata);
    sub_8F010();
    sub_17DA0(v19, v18);
  }

  sub_17DF4(a1, v9, &qword_C4988);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_17E5C(v9, v1 + v12, &qword_C4980);
  return swift_endAccess();
}

uint64_t sub_15448@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C49A0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C49A8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_17DF4(v1 + v12, v11, &qword_C49A8);
  v13 = sub_3A90(&qword_C49B0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_17F0C(v11, a1, &qword_C49B0);
  }

  sub_8EF0(v11, &qword_C49A8);
  sub_17DF4(v1 + *(*v1 + 120), v5, &qword_C49A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_8F680();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_8F680();
    sub_17EC4(&qword_C49B8, &type metadata accessor for LinkAssetMetadata);
    sub_8F010();
    sub_17DA0(v19, v18);
  }

  sub_17DF4(a1, v9, &qword_C49B0);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_17E5C(v9, v1 + v12, &qword_C49A8);
  return swift_endAccess();
}

uint64_t sub_157EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C49C0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C49D8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_17DF4(v1 + v12, v11, &qword_C49D8);
  v13 = sub_3A90(&qword_C49D0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_17F0C(v11, a1, &qword_C49D0);
  }

  sub_8EF0(v11, &qword_C49D8);
  sub_17DF4(v1 + *(*v1 + 120), v5, &qword_C49C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_8FAB0();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_8FAB0();
    sub_17EC4(&qword_C49E0, &type metadata accessor for StateOfMindAssetMetadata);
    sub_8F010();
    sub_17DA0(v19, v18);
  }

  sub_17DF4(a1, v9, &qword_C49D0);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_17E5C(v9, v1 + v12, &qword_C49D8);
  return swift_endAccess();
}

uint64_t sub_15B90@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C49E8);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C49F0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_17DF4(v1 + v12, v11, &qword_C49F0);
  v13 = sub_3A90(&qword_C49F8);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_17F0C(v11, a1, &qword_C49F8);
  }

  sub_8EF0(v11, &qword_C49F0);
  sub_17DF4(v1 + *(*v1 + 120), v5, &qword_C49E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_8FB50();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_8FB50();
    sub_17EC4(&qword_C4A00, &type metadata accessor for WorkoutIconAssetMetadata);
    sub_8F010();
    sub_17DA0(v19, v18);
  }

  sub_17DF4(a1, v9, &qword_C49F8);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_17E5C(v9, v1 + v12, &qword_C49F0);
  return swift_endAccess();
}

uint64_t sub_15F34@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4A08);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C4A20);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_17DF4(v1 + v12, v11, &qword_C4A20);
  v13 = sub_3A90(&qword_C4A18);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_17F0C(v11, a1, &qword_C4A18);
  }

  sub_8EF0(v11, &qword_C4A20);
  sub_17DF4(v1 + *(*v1 + 120), v5, &qword_C4A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_8FD60();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_8FD60();
    sub_17EC4(&qword_C4A28, &type metadata accessor for ThirdPartyMediaAssetMetadata);
    sub_8F010();
    sub_17DA0(v19, v18);
  }

  sub_17DF4(a1, v9, &qword_C4A18);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_17E5C(v9, v1 + v12, &qword_C4A20);
  return swift_endAccess();
}

uint64_t sub_162D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4AC0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C4AC8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_17DF4(v1 + v12, v11, &qword_C4AC8);
  v13 = sub_3A90(&qword_C4AD0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_17F0C(v11, a1, &qword_C4AD0);
  }

  sub_8EF0(v11, &qword_C4AC8);
  sub_17DF4(v1 + *(*v1 + 120), v5, &qword_C4AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_8FA70();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_8FA70();
    sub_17EC4(&qword_C4AD8, &type metadata accessor for MultiPinMapAssetMetadata);
    sub_8F010();
    sub_17DA0(v19, v18);
  }

  sub_17DF4(a1, v9, &qword_C4AD0);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_17E5C(v9, v1 + v12, &qword_C4AC8);
  return swift_endAccess();
}

uint64_t sub_1667C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4A48);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C4A60);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_17DF4(v1 + v12, v11, &qword_C4A60);
  v13 = sub_3A90(&qword_C4A58);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_17F0C(v11, a1, &qword_C4A58);
  }

  sub_8EF0(v11, &qword_C4A60);
  sub_17DF4(v1 + *(*v1 + 120), v5, &qword_C4A48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_8F860();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_8F860();
    sub_17EC4(&qword_C4A68, &type metadata accessor for DrawingAssetMetadata);
    sub_8F010();
    sub_17DA0(v19, v18);
  }

  sub_17DF4(a1, v9, &qword_C4A58);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_17E5C(v9, v1 + v12, &qword_C4A60);
  return swift_endAccess();
}

uint64_t sub_16A20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4A70);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C4A88);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_17DF4(v1 + v12, v11, &qword_C4A88);
  v13 = sub_3A90(&qword_C4A80);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_17F0C(v11, a1, &qword_C4A80);
  }

  sub_8EF0(v11, &qword_C4A88);
  sub_17DF4(v1 + *(*v1 + 120), v5, &qword_C4A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_8FB90();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_8FB90();
    sub_17EC4(&qword_C4A90, &type metadata accessor for PhotoLibraryAssetMetadata);
    sub_8F010();
    sub_17DA0(v19, v18);
  }

  sub_17DF4(a1, v9, &qword_C4A80);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_17E5C(v9, v1 + v12, &qword_C4A88);
  return swift_endAccess();
}

uint64_t sub_16DC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C4A98);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C4AB0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_17DF4(v1 + v12, v11, &qword_C4AB0);
  v13 = sub_3A90(&qword_C4AA8);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_17F0C(v11, a1, &qword_C4AA8);
  }

  sub_8EF0(v11, &qword_C4AB0);
  sub_17DF4(v1 + *(*v1 + 120), v5, &qword_C4A98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_8F980();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_8F980();
    sub_17EC4(&qword_C4AB8, &type metadata accessor for ReflectionAssetMetadata);
    sub_8F010();
    sub_17DA0(v19, v18);
  }

  sub_17DF4(a1, v9, &qword_C4AA8);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_17E5C(v9, v1 + v12, &qword_C4AB0);
  return swift_endAccess();
}

double *sub_17168(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3A90(&qword_C4B10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_17290(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3A90(&qword_C4B28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_17394(double *result, int64_t a2, char a3, double *a4)
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
    sub_3A90(&qword_C4B30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_3A90(&qword_C4B38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_174F0(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3A90(&qword_C4840);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_175FC()
{
  result = qword_C4838;
  if (!qword_C4838)
  {
    sub_3D20(&qword_C4830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4838);
  }

  return result;
}

double *sub_17660(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3A90(&qword_C4880);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

double *sub_1778C(double *result, int64_t a2, char a3, double *a4)
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
    sub_3A90(&qword_C4B00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_3A90(&qword_C4B08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1792C(double *result, int64_t a2, char a3, double *a4)
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
    sub_3A90(&qword_C4B40);
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
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_3A90(&qword_C4B48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_17AB0(size_t result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_3A90(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  *(v17 + 2) = v12;
  *(v17 + 3) = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

double *sub_17C8C(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3A90(&unk_C8860);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_17DA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_17DF4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_3A90(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_17E5C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_3A90(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_17EC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_17F0C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_3A90(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_17F84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ContactAsset()
{
  result = qword_C4B88;
  if (!qword_C4B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1808C()
{
  v1 = sub_8F390();
  __chkstk_darwin(v1 - 8);
  v65 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_90540();
  __chkstk_darwin(v3 - 8);
  v64 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3A90(&qword_C4808);
  v6 = __chkstk_darwin(v5 - 8);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v60 - v8;
  v62 = sub_8F4D0();
  v9 = *(v62 - 8);
  __chkstk_darwin(v62);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_8FFF0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_3A90(&qword_C48B0);
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - v17;
  v19 = sub_8F840();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v0;
  sub_10414(v18);
  v23 = v19;
  v24 = v20;
  if ((*(v20 + 48))(v18, 1, v23) == 1)
  {
    sub_8EF0(v18, &qword_C48B0);
    return 0;
  }

  else
  {
    v26 = *(v20 + 32);
    v60 = v23;
    v26(v22, v18, v23);
    sub_8FFC0();
    v27 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_8FF50().super.isa;
    v25 = [v27 initWithContentType:isa];

    (*(v13 + 8))(v15, v12);
    sub_8F820();
    v29 = sub_90550();

    [v25 setDisplayName:v29];

    v30 = v62;
    (*(v9 + 104))(v11, enum case for JournalFeatureFlags.search(_:), v62);
    LOBYTE(isa) = sub_8F4C0();
    (*(v9 + 8))(v11, v30);
    v31 = v22;
    if (isa)
    {
      sub_8F820();
      v32 = objc_allocWithZone(CSPerson);
      v33 = sub_90550();

      v34 = sub_90730().super.isa;
      v35 = sub_90550();
      v36 = [v32 initWithDisplayName:v33 handles:v34 handleIdentifier:v35];

      sub_3A90(&qword_C4BD8);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_99100;
      *(v37 + 32) = v36;
      sub_189A4();
      v38 = v36;
      v39.super.isa = sub_90730().super.isa;

      [v25 setAuthors:v39.super.isa];
    }

    else
    {
      sub_3A90(&qword_C4840);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_98740;
      *(v40 + 32) = sub_8F820();
      *(v40 + 40) = v41;
      v39.super.isa = sub_90730().super.isa;

      [v25 setAuthorNames:v39.super.isa];
    }

    v42 = v66;
    v43 = v63;

    sub_8F830();
    v44 = sub_8F2F0();
    v45 = *(v44 - 8);
    v46 = *(v45 + 48);
    if (v46(v43, 1, v44) == 1)
    {
      v47 = *(v61 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
      if (v47 && (v48 = [v47 entry]) != 0)
      {
        v49 = v48;
        sub_8F500();

        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      (*(v45 + 56))(v42, v50, 1, v44);
      if (v46(v43, 1, v44) != 1)
      {
        sub_8EF0(v43, &qword_C4808);
      }
    }

    else
    {
      (*(v45 + 32))(v42, v43, v44);
      (*(v45 + 56))(v42, 0, 1, v44);
    }

    sub_904E0();
    sub_8F380();
    v51 = sub_905C0();
    v53 = v52;
    sub_3A90(&qword_C4840);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_98740;
    v55 = sub_577BC(v51, v53, v42);
    v57 = v56;

    *(v54 + 32) = v55;
    *(v54 + 40) = v57;
    v58 = sub_90730().super.isa;

    [v25 setAlternateNames:v58];

    sub_8EF0(v42, &qword_C4808);
    (*(v24 + 8))(v31, v60);
  }

  return v25;
}

uint64_t sub_18960(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_8F840();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_189A4()
{
  result = qword_C4BE0;
  if (!qword_C4BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C4BE0);
  }

  return result;
}

id sub_18A00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MusicAsset()
{
  result = qword_C4C10;
  if (!qword_C4C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_18B08()
{
  v1 = sub_8F390();
  __chkstk_darwin(v1 - 8);
  v71 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_90540();
  __chkstk_darwin(v3 - 8);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3A90(&qword_C4808);
  __chkstk_darwin(v6 - 8);
  v8 = &v66 - v7;
  v9 = sub_3A90(&qword_C4C60);
  __chkstk_darwin(v9 - 8);
  v68 = &v66 - v10;
  v11 = sub_8FFF0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3A90(&qword_C48D8);
  __chkstk_darwin(v15 - 8);
  v17 = &v66 - v16;
  v18 = sub_8F770();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v0;
  sub_10654(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_8EF0(v17, &qword_C48D8);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  sub_8FF80();
  v23 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_8FF50().super.isa;
  v69 = [v23 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  sub_8F740();
  v25 = v21;
  v67 = v19;
  if (v26)
  {
    v27 = v71;
LABEL_6:
    v29 = v69;
    v30 = sub_90550();

    goto LABEL_7;
  }

  sub_8F760();
  v27 = v71;
  if (v28)
  {
    goto LABEL_6;
  }

  v30 = 0;
  v29 = v69;
LABEL_7:
  [v29 setDisplayName:v30];

  v73 = sub_8F760();
  v74[0] = v31;
  v32 = 0;
  v74[1] = sub_8F730();
  v74[2] = v33;
  v34 = _swiftEmptyArrayStorage;
LABEL_8:
  v35 = &v74[2 * v32];
  while (++v32 != 3)
  {
    v36 = v35 + 2;
    v37 = *v35;
    v35 += 2;
    if (v37)
    {
      v66 = v25;
      v71 = v18;
      v38 = v5;
      v39 = v27;
      v40 = *(v36 - 3);

      v41 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_174F0(0, *(v34 + 2) + 1, 1, v34);
      }

      v43 = *(v34 + 2);
      v42 = *(v34 + 3);
      if (v43 >= v42 >> 1)
      {
        v34 = sub_174F0((v42 > 1), v43 + 1, 1, v34);
      }

      *(v34 + 2) = v43 + 1;
      v44 = &v34[2 * v43];
      *(v44 + 4) = v40;
      *(v44 + 5) = v37;
      v8 = v41;
      v27 = v39;
      v5 = v38;
      v18 = v71;
      v25 = v66;
      goto LABEL_8;
    }
  }

  sub_3A90(&qword_C4828);
  swift_arrayDestroy();
  v72 = v34;
  sub_3A90(&qword_C4830);
  sub_175FC();
  sub_90480();

  v45 = sub_90550();

  v22 = v69;
  [v69 setContentDescription:v45];

  v46 = v68;
  sub_8F750();
  v47 = sub_8EFE0();
  v48 = *(v47 - 8);
  v50 = 0;
  if ((*(v48 + 48))(v46, 1, v47) != 1)
  {
    sub_8EF90(v49);
    v50 = v51;
    (*(v48 + 8))(v46, v47);
  }

  [v22 setThumbnailURL:v50];

  v52 = *(v70 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v52 && (v53 = [v52 entry]) != 0)
  {
    v54 = v53;
    sub_8F500();

    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = sub_8F2F0();
  (*(*(v56 - 8) + 56))(v8, v55, 1, v56);
  sub_904E0();
  sub_8F380();
  v57 = sub_905C0();
  v59 = v58;
  sub_3A90(&qword_C4840);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_98740;
  v61 = sub_577BC(v57, v59, v8);
  v63 = v62;

  *(v60 + 32) = v61;
  *(v60 + 40) = v63;
  v64 = sub_90730().super.isa;

  [v22 setAlternateNames:v64];

  sub_8EF0(v8, &qword_C4808);
  (*(v67 + 8))(v25, v18);
  return v22;
}

uint64_t sub_19348(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_8F770();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1939C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BookAsset()
{
  result = qword_C4C90;
  if (!qword_C4C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_194A4()
{
  v1 = v0;
  v2 = sub_8F390();
  __chkstk_darwin(v2 - 8);
  v40[1] = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_90540();
  __chkstk_darwin(v4 - 8);
  v5 = sub_3A90(&qword_C4808);
  __chkstk_darwin(v5 - 8);
  v41 = v40 - v6;
  v7 = sub_8FFF0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3A90(&qword_C4900);
  __chkstk_darwin(v11 - 8);
  v13 = v40 - v12;
  v14 = sub_8F650();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10894(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_8EF0(v13, &qword_C4900);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_8FF80();
    v19 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_8FF50().super.isa;
    v18 = [v19 initWithContentType:isa];

    (*(v8 + 8))(v10, v7);
    sub_8F630();
    if (v21)
    {
      v22 = sub_90550();
    }

    else
    {
      v22 = 0;
    }

    [v18 setDisplayName:v22];

    sub_8F640();
    if (v23)
    {
      v24 = sub_90550();
    }

    else
    {
      v24 = 0;
    }

    v25 = v41;
    [v18 setContentDescription:v24];

    v26 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
    if (v26 && (v27 = [v26 entry]) != 0)
    {
      v28 = v27;
      sub_8F500();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = sub_8F2F0();
    (*(*(v30 - 8) + 56))(v25, v29, 1, v30);
    sub_904E0();
    sub_8F380();
    v31 = sub_905C0();
    v33 = v32;
    sub_3A90(&qword_C4840);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_98740;
    v35 = sub_577BC(v31, v33, v25);
    v37 = v36;

    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    v38 = sub_90730().super.isa;

    [v18 setAlternateNames:v38];

    sub_8EF0(v25, &qword_C4808);
    (*(v15 + 8))(v17, v14);
  }

  return v18;
}

uint64_t sub_19A70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_8F650();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_19AC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PodcastAsset()
{
  result = qword_C4D08;
  if (!qword_C4D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_19BCC()
{
  v1 = sub_8F390();
  __chkstk_darwin(v1 - 8);
  v54[1] = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_90540();
  __chkstk_darwin(v3 - 8);
  v4 = sub_3A90(&qword_C4808);
  __chkstk_darwin(v4 - 8);
  v55 = v54 - v5;
  v6 = sub_3A90(&qword_C4C60);
  __chkstk_darwin(v6 - 8);
  v8 = v54 - v7;
  v9 = sub_8FFF0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A90(&qword_C4928);
  __chkstk_darwin(v13 - 8);
  v15 = v54 - v14;
  v16 = sub_8F8A0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[0] = v0;
  sub_10AD4(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_8EF0(v15, &qword_C4928);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    sub_8FF40();
    v21 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_8FF50().super.isa;
    v20 = [v21 initWithContentType:isa];

    (*(v10 + 8))(v12, v9);
    sub_8F870();
    if (v23)
    {
      v24 = sub_90550();
    }

    else
    {
      v24 = 0;
    }

    [v20 setDisplayName:v24];

    sub_8F890();
    v25 = sub_8EFE0();
    v26 = *(v25 - 8);
    v28 = 0;
    if ((*(v26 + 48))(v8, 1, v25) != 1)
    {
      sub_8EF90(v27);
      v28 = v29;
      (*(v26 + 8))(v8, v25);
    }

    [v20 setThumbnailURL:v28];

    sub_8F880();
    if (v30)
    {
      v31 = sub_90550();
    }

    else
    {
      v31 = 0;
    }

    v32 = v55;
    [v20 setContentDescription:v31];

    v33 = sub_8F880();
    if (v34)
    {
      v35 = v33;
      v36 = v34;
      sub_3A90(&qword_C4840);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_98740;
      *(v37 + 32) = v35;
      *(v37 + 40) = v36;
      v38 = sub_90730().super.isa;

      [v20 setAuthorNames:v38];
    }

    v39 = *(v54[0] + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
    if (v39 && (v40 = [v39 entry]) != 0)
    {
      v41 = v40;
      sub_8F500();

      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = sub_8F2F0();
    (*(*(v43 - 8) + 56))(v32, v42, 1, v43);
    sub_904E0();
    sub_8F380();
    v44 = sub_905C0();
    v45 = v32;
    v47 = v46;
    sub_3A90(&qword_C4840);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_98740;
    v49 = sub_577BC(v44, v47, v45);
    v51 = v50;

    *(v48 + 32) = v49;
    *(v48 + 40) = v51;
    v52 = sub_90730().super.isa;

    [v20 setAlternateNames:v52];

    sub_8EF0(v45, &qword_C4808);
    (*(v17 + 8))(v19, v16);
  }

  return v20;
}

uint64_t sub_1A310(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_8F8A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A354()
{
  v1 = sub_90540();
  __chkstk_darwin(v1 - 8);
  v33[1] = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_90520();
  __chkstk_darwin(v3 - 8);
  v33[0] = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3A90(&qword_C4DD0);
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = v33 - v6;
  v8 = sub_3A90(&qword_C4DD8);
  __chkstk_darwin(v8 - 8);
  v36 = v33 - v9;
  v10 = sub_8FCB0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3A90(&qword_C4950);
  __chkstk_darwin(v14 - 8);
  v16 = v33 - v15;
  v17 = sub_8F390();
  __chkstk_darwin(v17 - 8);
  v18 = sub_3A90(&qword_C4DE0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v33 - v20;
  sub_8F360();
  sub_1B2F8();
  sub_8EE80();
  if (*(v0 + OBJC_IVAR____TtC15JournalSettings19MotionActivityAsset_metadata))
  {

    sub_14D00(v16);

    if ((*(v11 + 48))(v16, 1, v10))
    {
      (*(v19 + 8))(v21, v18);
      v22 = &qword_C4950;
      v23 = v16;
LABEL_9:
      sub_8EF0(v23, v22);
      return 0;
    }

    (*(v11 + 16))(v13, v16, v10);
    sub_8EF0(v16, &qword_C4950);
    sub_8FC90();
    v25 = v24;
    (*(v11 + 8))(v13, v10);
    if (v25)
    {
      sub_906C0();

      sub_1B34C();
      sub_8FE40();
      v26 = v35;
      sub_8FE80();
      (*(v34 + 8))(v7, v26);

      v27 = sub_3A90(&qword_C4DF8);
      v28 = *(v27 - 8);
      v29 = v36;
      if ((*(v28 + 48))(v36, 1, v27) != 1)
      {
        sub_8FEB0();
        v31 = v37;
        (*(v28 + 8))(v29, v27);
        sub_90510();
        v38._countAndFlagsBits = 0;
        v38._object = 0xE000000000000000;
        sub_90500(v38);
        v37 = v31;
        sub_904F0();
        v39._countAndFlagsBits = 0x2973287065747320;
        v39._object = 0xE800000000000000;
        sub_90500(v39);
        sub_90530();
        sub_8F380();
        v32 = sub_905C0();
        (*(v19 + 8))(v21, v18);
        return v32;
      }

      (*(v19 + 8))(v21, v18);
      v22 = &qword_C4DD8;
      v23 = v29;
      goto LABEL_9;
    }
  }

  (*(v19 + 8))(v21, v18);
  return 0;
}

id sub_1AA7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MotionActivityAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MotionActivityAsset()
{
  result = qword_C4D80;
  if (!qword_C4D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1AB84()
{
  v1 = sub_8F390();
  __chkstk_darwin(v1 - 8);
  v3 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_90540();
  __chkstk_darwin(v4 - 8);
  v49[2] = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3A90(&qword_C4808);
  v7 = __chkstk_darwin(v6 - 8);
  v50 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v49 - v9;
  v11 = sub_8FFF0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3A90(&qword_C4950);
  __chkstk_darwin(v15 - 8);
  v17 = v49 - v16;
  v18 = sub_8FCB0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v0;
  if (!*(v0 + OBJC_IVAR____TtC15JournalSettings19MotionActivityAsset_metadata))
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    goto LABEL_12;
  }

  sub_14D00(v17);

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
LABEL_12:
    sub_8EF0(v17, &qword_C4950);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  sub_8FF70();
  v22 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_8FF50().super.isa;
  v24 = [v22 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  v25 = sub_8FC70();
  if (v26)
  {
    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      goto LABEL_9;
    }
  }

  sub_8FC80();
LABEL_9:
  v28 = sub_90550();

  [v24 setDisplayName:v28];

  sub_1A354();
  v49[1] = v3;
  if (v29)
  {
    v30 = sub_90550();
  }

  else
  {
    v30 = 0;
  }

  [v24 setContentDescription:v30];

  v31 = v50;
  sub_8FCA0();
  v32 = v31;
  v33 = sub_8F2F0();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  if (v35(v32, 1, v33) == 1)
  {
    v36 = *(v51 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
    if (v36)
    {
      v37 = [v36 entry];
      if (v37)
      {
        v38 = v37;
        sub_8F500();

        v39 = 0;
      }

      else
      {
        v39 = 1;
      }

      v32 = v50;
    }

    else
    {
      v39 = 1;
    }

    (*(v34 + 56))(v10, v39, 1, v33);
    if (v35(v32, 1, v33) != 1)
    {
      sub_8EF0(v32, &qword_C4808);
    }
  }

  else
  {
    (*(v34 + 32))(v10, v32, v33);
    (*(v34 + 56))(v10, 0, 1, v33);
  }

  sub_904E0();
  sub_8F380();
  v40 = sub_905C0();
  v42 = v41;
  sub_3A90(&qword_C4840);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_98740;
  v44 = sub_577BC(v40, v42, v10);
  v46 = v45;

  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  v47 = sub_90730().super.isa;

  [v24 setAlternateNames:v47];

  sub_8EF0(v10, &qword_C4808);
  (*(v19 + 8))(v21, v18);
  return v24;
}

uint64_t sub_1B2B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_8FCB0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B2F8()
{
  result = qword_C4DE8;
  if (!qword_C4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4DE8);
  }

  return result;
}

unint64_t sub_1B34C()
{
  result = qword_C4DF0;
  if (!qword_C4DF0)
  {
    sub_3D20(&qword_C4DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4DF0);
  }

  return result;
}

char *sub_1B3B0(int a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v13 = sub_3A90(&qword_C4338);
  __chkstk_darwin(v13 - 8);
  v15 = &v19 - v14;
  v16 = objc_allocWithZone(type metadata accessor for GenericMapThumbnailCacheOperation());
  sub_FF98(v15);
  sub_1BD2C(v15, v16 + qword_D03B8);
  v17 = v6;

  return sub_5C308(v17, a1, a2, a3 & 1, a4, a5, a6);
}

uint64_t sub_1B4BC(int a1, unsigned __int8 a2, id a3)
{
  [a3 userInterfaceStyle];
  sub_8F350();
  sub_1BCE4(&qword_C4E78, &type metadata accessor for UUID);
  v15._countAndFlagsBits = sub_910B0();
  sub_90640(v15);

  v16._countAndFlagsBits = 45;
  v16._object = 0xE100000000000000;
  sub_90640(v16);
  v17._countAndFlagsBits = sub_910B0();
  sub_90640(v17);

  v18._countAndFlagsBits = 45;
  v18._object = 0xE100000000000000;
  sub_90640(v18);
  v4 = 0x656772614C78;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  if (a2 != 6)
  {
    v6 = 0x657263536C6C7566;
    v5 = 0xEA00000000006E65;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (a2 != 4)
  {
    v8 = 0x61546D756964656DLL;
    v7 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006564;
  v10 = 0x69576D756964656DLL;
  if (a2 != 2)
  {
    v10 = 0x656772616CLL;
    v9 = 0xE500000000000000;
  }

  if (a2)
  {
    v11 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x6154656772614C78;
    v11 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v11;
  }

  else
  {
    v4 = v10;
  }

  if (a2 <= 3u)
  {
    v12._countAndFlagsBits = v4;
  }

  else
  {
    v12._countAndFlagsBits = v6;
  }

  if (a2 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  v12._object = v13;
  sub_90640(v12);

  v19._countAndFlagsBits = sub_910B0();
  sub_90640(v19);

  v20._countAndFlagsBits = 45;
  v20._object = 0xE100000000000000;
  sub_90640(v20);

  return 0x2D626D756874;
}

id sub_1B760()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericMapAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GenericMapAsset()
{
  result = qword_C4E28;
  if (!qword_C4E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1B868()
{
  v1 = sub_3A90(&qword_C4340);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_8F810();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3A90(&qword_C4338);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_8F960();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC15JournalSettings15GenericMapAsset_metadata))
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_6;
  }

  sub_13728(v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_6:
    v15 = &qword_C4338;
    v16 = v10;
    goto LABEL_7;
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_8F950();
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_3A90(&qword_C4348);
    v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_98740;
    (*(v5 + 16))(v19 + v18, v7, v4);
    v20 = sub_4FB18(v19);
    swift_setDeallocating();
    v21 = *(v5 + 8);
    v21(v19 + v18, v4);
    swift_deallocClassInstance();
    v21(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v20;
  }

  (*(v12 + 8))(v14, v11);
  v15 = &qword_C4340;
  v16 = v3;
LABEL_7:
  sub_8EF0(v16, v15);
  return 0;
}

uint64_t sub_1BCE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A90(&qword_C4338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1BDAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AudioAsset()
{
  result = qword_C4EA8;
  if (!qword_C4EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BEB4()
{
  v36 = sub_8FC50();
  v0 = *(v36 - 8);
  __chkstk_darwin(v36);
  v2 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3A90(&qword_C4988);
  __chkstk_darwin(v3 - 8);
  v5 = v32 - v4;
  sub_10D14(v32 - v4);
  v6 = sub_8F6F0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_8EF0(v5, &qword_C4988);
    return 0;
  }

  v8 = sub_8F6E0();
  (*(v7 + 8))(v5, v6);
  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_1CA68(0, v9, 0);
    v10 = v37;
    v12 = *(v0 + 16);
    v11 = v0 + 16;
    v13 = *(v11 + 64);
    v32[1] = v8;
    v14 = v8 + ((v13 + 32) & ~v13);
    v33 = *(v11 + 56);
    v34 = v12;
    v35 = v11;
    v15 = (v11 - 8);
    do
    {
      v16 = v36;
      v34(v2, v14, v36);
      v17 = sub_8FC40();
      v19 = v18;
      (*v15)(v2, v16);
      v37 = v10;
      v21 = *(v10 + 2);
      v20 = *(v10 + 3);
      if (v21 >= v20 >> 1)
      {
        sub_1CA68((v20 > 1), v21 + 1, 1);
        v10 = v37;
      }

      *(v10 + 2) = v21 + 1;
      v22 = &v10[2 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
      v14 += v33;
      --v9;
    }

    while (v9);

    v24 = v10[2];
    if (v24 != 0.0)
    {
LABEL_12:
      v25 = 0;
      v26 = 0;
      v27 = (v10 + 5);
      v28 = 0xE000000000000000;
      while (v26 < *(v10 + 2))
      {
        ++v26;
        v30 = *(v27 - 1);
        v29 = *v27;
        v37 = v25;
        v38 = v28;

        v39._countAndFlagsBits = v30;
        v39._object = v29;
        sub_90640(v39);

        v25 = v37;
        v28 = v38;
        v27 += 2;
        if (*&v24 == v26)
        {
          v31 = v37;
          goto LABEL_18;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
    v24 = _swiftEmptyArrayStorage[2];
    if (v24 != 0.0)
    {
      goto LABEL_12;
    }
  }

  v31 = 0;
LABEL_18:

  return v31;
}

id sub_1C214()
{
  v1 = sub_8F390();
  __chkstk_darwin(v1 - 8);
  v3 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_90540();
  __chkstk_darwin(v4 - 8);
  v56 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_8F6F0();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v52 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3A90(&qword_C4988);
  __chkstk_darwin(v8 - 8);
  v10 = v51 - v9;
  v11 = sub_3A90(&qword_C4808);
  v12 = __chkstk_darwin(v11 - 8);
  v55 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v51 - v14;
  v16 = sub_8FFF0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v0;
  v21 = sub_1BEB4();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v25 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v51[1] = v3;
      sub_8FF80();
      v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
      isa = sub_8FF50().super.isa;
      v28 = [v26 initWithContentType:isa];

      (*(v17 + 8))(v19, v16);
      sub_5729C(0, 0, v23, v24);

      v29 = v55;
      if (*(v20 + OBJC_IVAR____TtC15JournalSettings10AudioAsset_metadata))
      {

        sub_150A4(v10);

        v31 = v53;
        v30 = v54;
        if (!(*(v53 + 48))(v10, 1, v54))
        {
          v39 = v52;
          (*(v31 + 16))(v52, v10, v30);
          sub_8EF0(v10, &qword_C4988);
          sub_8F6D0();
          (*(v31 + 8))(v39, v30);
          v40 = sub_8F2F0();
          v41 = *(v40 - 8);
          if ((*(v41 + 48))(v29, 1, v40) != 1)
          {
            (*(v41 + 32))(v15, v29, v40);
            (*(v41 + 56))(v15, 0, 1, v40);
LABEL_19:
            sub_904E0();
            sub_8F380();
            v42 = sub_905C0();
            v44 = v43;
            sub_3A90(&qword_C4840);
            v45 = swift_allocObject();
            *(v45 + 16) = xmmword_98740;
            v46 = sub_577BC(v42, v44, v15);
            v48 = v47;

            *(v45 + 32) = v46;
            *(v45 + 40) = v48;
            v49 = sub_90730().super.isa;

            [v28 setAlternateNames:v49];

            sub_8EF0(v15, &qword_C4808);
            return v28;
          }

LABEL_9:
          v33 = *(v20 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
          if (v33 && (v34 = [v33 entry]) != 0)
          {
            v35 = v34;
            sub_8F500();

            v36 = 0;
          }

          else
          {
            v36 = 1;
          }

          v37 = sub_8F2F0();
          v38 = *(v37 - 8);
          (*(v38 + 56))(v15, v36, 1, v37);
          if ((*(v38 + 48))(v29, 1, v37) != 1)
          {
            sub_8EF0(v29, &qword_C4808);
          }

          goto LABEL_19;
        }

        sub_8EF0(v10, &qword_C4988);
      }

      v32 = sub_8F2F0();
      (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t sub_1C984(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_8F6F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double *sub_1C9C8(double *a1, int64_t a2, char a3)
{
  result = sub_5514C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C9E8(char *a1, int64_t a2, char a3)
{
  result = sub_55160(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1CA08(size_t a1, int64_t a2, char a3)
{
  result = sub_55264(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1CA28(double *a1, int64_t a2, char a3)
{
  result = sub_5528C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1CA48(double *a1, int64_t a2, char a3)
{
  result = sub_553B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1CA68(double *a1, int64_t a2, char a3)
{
  result = sub_554C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1CA88(size_t a1, int64_t a2, char a3)
{
  result = sub_555D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1CAA8(size_t a1, int64_t a2, char a3)
{
  result = sub_555F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1CAC8(double *a1, int64_t a2, char a3)
{
  result = sub_557FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1CAE8(double *a1, int64_t a2, char a3)
{
  result = sub_558F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CB08()
{
  v98 = sub_8FE60();
  v94 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_3A90(&qword_C4F70);
  v2 = *(v100 - 8);
  v3 = __chkstk_darwin(v100);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = v70 - v7;
  v9 = __chkstk_darwin(v6);
  v73 = v70 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = v70 - v12;
  v14 = __chkstk_darwin(v11);
  v78 = v70 - v15;
  v16 = __chkstk_darwin(v14);
  v96 = v70 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = v70 - v19;
  v21 = __chkstk_darwin(v18);
  v77 = v70 - v22;
  __chkstk_darwin(v21);
  v99 = v70 - v23;
  v24 = sub_3A90(&qword_C4F78);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v76 = v70 - v28;
  v29 = [v0 itemType];
  if (v29)
  {
    v30 = v29;
    v81 = sub_90590();
    v82 = v31;
  }

  else
  {
    v81 = 0;
    v82 = 0xE000000000000000;
  }

  v32 = [v0 siteName];
  if (v32)
  {
    v33 = v32;
    v34 = sub_90590();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0xE000000000000000;
  }

  v70[3] = " result type display";
  v70[2] = "/\\bspotify|pandora\\b/";
  v70[1] = "/\\bbook|books\\b/";
  ++v94;
  v95 = (v2 + 32);
  v93 = (v2 + 8);
  v37 = HIBYTE(v82) & 0xF;
  if ((v82 & 0x2000000000000000) == 0)
  {
    v37 = v81;
  }

  v38 = 7;
  if (((v82 >> 60) & ((v81 & 0x800000000000000) == 0)) != 0)
  {
    v39 = 11;
  }

  else
  {
    v39 = 7;
  }

  v75 = v39 | (v37 << 16);
  v40 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v40 = v34;
  }

  v80 = v36;
  v70[5] = v34;
  if (((v36 >> 60) & ((v34 & 0x800000000000000) == 0)) != 0)
  {
    v38 = 11;
  }

  v70[4] = v38 | (v40 << 16);
  v74 = v5;
  v41 = 0;
  v91 = v13;
  v71 = v27;
  v79 = v8;
  v72 = v20;
  while (1)
  {
    v42 = *(&off_B35E0 + v41 + 32);
    v92 = v42;
    v86 = v41;
    sub_8FE70();
    v43 = v77;
    v44 = v100;
    v89 = *v95;
    v89(v77, v20, v100);
    v45 = v96;
    sub_8FE90();
    v46 = v97;
    sub_8FE50();
    sub_8FEA0();
    v88 = *v94;
    v88(v46, v98);
    v47 = *v93;
    (*v93)(v45, v44);
    v90 = v47;
    v47(v43, v44);
    sub_906C0();
    v48 = sub_1E4B8();
    v49 = v78;
    v87 = v48;
    sub_8FE40();
    v50 = v76;
    sub_8FE80();

    v51 = v100;
    v52 = v90;
    v90(v49, v100);
    v52(v99, v51);
    v53 = sub_3A90(&qword_C4F88);
    v54 = *(v53 - 8);
    v55 = v54;
    v56 = *(v54 + 48);
    v57 = v54 + 48;
    v58 = v56(v50, 1, v53);
    v59 = v79;
    if (v58 != 1)
    {

      v69 = v50;
      goto LABEL_23;
    }

    sub_8EF0(v50, &qword_C4F78);
    v90 = v53;
    v84 = v57;
    v85 = v56;
    v83 = v55;
    sub_8FE70();
    v60 = v73;
    v61 = v100;
    v89(v73, v59, v100);
    v62 = v96;
    sub_8FE90();
    v63 = v97;
    sub_8FE50();
    sub_8FEA0();
    v88(v63, v98);
    v52(v62, v61);
    v52(v60, v61);
    sub_906C0();
    v64 = v74;
    sub_8FE40();
    v65 = v71;
    sub_8FE80();

    v52(v64, v61);
    v52(v91, v61);
    v66 = v86;
    v67 = v85(v65, 1, v90);
    v20 = v72;
    if (v67 != 1)
    {
      break;
    }

    v41 = v66 + 1;
    sub_8EF0(v65, &qword_C4F78);
    if (v41 == 6)
    {

      return 6;
    }
  }

  v69 = v65;
LABEL_23:
  sub_8EF0(v69, &qword_C4F78);
  return v92;
}

id sub_1D6C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LinkAsset()
{
  result = qword_C4F20;
  if (!qword_C4F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1D7D4()
{
  v1 = sub_3A90(&qword_C4808);
  v2 = __chkstk_darwin(v1 - 8);
  v113 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v95 - v4;
  v6 = sub_8F390();
  __chkstk_darwin(v6 - 8);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_90540();
  __chkstk_darwin(v9 - 8);
  v108 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3A90(&qword_C4C60);
  v12 = __chkstk_darwin(v11 - 8);
  v109 = (&v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v110 = &v95 - v14;
  v15 = sub_8EFE0();
  v111 = *(v15 - 8);
  __chkstk_darwin(v15);
  v107 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_8FFF0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_8F680();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v114 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_3A90(&qword_C49B0);
  v25 = __chkstk_darwin(v24 - 8);
  __chkstk_darwin(v25);
  v28 = &v95 - v27;
  v112 = v0;
  if (!*(v0 + OBJC_IVAR____TtC15JournalSettings9LinkAsset_metadata))
  {
    return 0;
  }

  v105 = v15;
  v106 = OBJC_IVAR____TtC15JournalSettings9LinkAsset_metadata;
  v104 = v26;

  sub_15448(v28);

  v29 = v22[6];
  if (!v29(v28, 1, v21))
  {
    v101 = v29;
    v102 = v22 + 6;
    v100 = v8;
    v103 = v5;
    v32 = v114;
    v96 = v22[2];
    v97 = v22 + 2;
    v96(v114, v28, v21);
    sub_8EF0(v28, &qword_C49B0);
    v33 = sub_8F660();
    v35 = v34;
    v36 = v22[1];
    v98 = v22 + 1;
    v36(v32, v21);
    isa = sub_8F020().super.isa;
    v38 = [objc_opt_self() metadataWithDataRepresentation:isa];

    sub_17DA0(v33, v35);
    if (!v38)
    {
      return 0;
    }

    sub_8FF70();
    v39 = objc_allocWithZone(CSSearchableItemAttributeSet);
    v40 = sub_8FF50().super.isa;
    v99 = [v39 initWithContentType:v40];

    (*(v18 + 8))(v20, v17);
    v41 = [v38 title];
    if (v41)
    {
      v42 = v41;
      v43 = sub_90590();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v46 = v109;
    v47 = [v38 appleSummary];
    if (v47 || (v47 = [v38 summary]) != 0)
    {
      v48 = v38;
      v49 = v47;
      v50 = sub_90590();
      v52 = v51;

      v38 = v48;
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    v53 = v50;
    v30 = v99;
    sub_5729C(v43, v45, v53, v52);

    v54 = [v38 imageMetadata];
    v55 = v103;
    v109 = v36;
    if (v54)
    {
      v56 = v54;
      v57 = [v54 URL];

      v58 = v105;
      v59 = v111;
      if (v57)
      {
        sub_8EFA0();

        v60 = 0;
      }

      else
      {
        v60 = 1;
      }

      v62 = v112;
      (*(v59 + 56))(v46, v60, 1, v58);
      v61 = v110;
      sub_1E448(v46, v110);
      if ((*(v59 + 48))(v61, 1, v58) != 1)
      {
        v71 = v107;
        (*(v59 + 32))(v107, v61, v58);
        sub_8EF90(v72);
        v74 = v73;
        [v30 setThumbnailURL:v73];

        (*(v59 + 8))(v71, v58);
        v64 = v113;
        goto LABEL_23;
      }
    }

    else
    {
      v61 = v110;
      (*(v111 + 56))(v110, 1, 1, v105);
      v62 = v112;
    }

    sub_8EF0(v61, &qword_C4C60);
    v63 = [v38 image];
    v64 = v113;
    if (v63)
    {
      v65 = v63;
      v66 = [v63 data];

      if (v66)
      {
        v67 = sub_8F030();
        v69 = v68;

        v70 = sub_8F020().super.isa;
        [v30 setThumbnailData:v70];

        sub_17DA0(v67, v69);
      }
    }

LABEL_23:
    if (sub_1CB08() == 6)
    {
      sub_904E0();
      sub_8F380();
      v75 = sub_905C0();
    }

    else
    {
      v75 = sub_32A28();
    }

    v77 = v75;
    v78 = v76;
    if (*(v62 + v106))
    {

      v79 = v104;
      sub_15448(v104);

      if (!v101(v79, 1, v21))
      {
        v87 = v114;
        v96(v114, v79, v21);
        sub_8EF0(v79, &qword_C49B0);
        sub_8F670();
        v109(v87, v21);
        v88 = sub_8F2F0();
        v89 = *(v88 - 8);
        if ((*(v89 + 48))(v64, 1, v88) != 1)
        {
          (*(v89 + 32))(v55, v64, v88);
          (*(v89 + 56))(v55, 0, 1, v88);
LABEL_38:
          sub_3A90(&qword_C4840);
          v90 = swift_allocObject();
          *(v90 + 16) = xmmword_98740;
          v91 = sub_577BC(v77, v78, v55);
          v93 = v92;

          *(v90 + 32) = v91;
          *(v90 + 40) = v93;
          v94 = sub_90730().super.isa;

          [v30 setAlternateNames:v94];

          sub_8EF0(v55, &qword_C4808);
          return v30;
        }

LABEL_30:
        v81 = *(v62 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
        if (v81 && (v82 = [v81 entry]) != 0)
        {
          v83 = v82;
          sub_8F500();

          v84 = 0;
        }

        else
        {
          v84 = 1;
        }

        v85 = sub_8F2F0();
        v86 = *(v85 - 8);
        (*(v86 + 56))(v55, v84, 1, v85);
        if ((*(v86 + 48))(v64, 1, v85) != 1)
        {
          sub_8EF0(v64, &qword_C4808);
        }

        goto LABEL_38;
      }

      sub_8EF0(v79, &qword_C49B0);
    }

    v80 = sub_8F2F0();
    (*(*(v80 - 8) + 56))(v64, 1, 1, v80);
    goto LABEL_30;
  }

  sub_8EF0(v28, &qword_C49B0);
  return 0;
}