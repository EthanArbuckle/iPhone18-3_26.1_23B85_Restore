void sub_2968D0(double a1)
{
  v2 = *(v1 + qword_3C9A48);
  if (*(v2 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__navigationBarHeight) == a1)
  {
    *(v2 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__navigationBarHeight) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
    sub_2BE6E8();
  }
}

uint64_t sub_2969FC(uint64_t a1)
{
  sub_2BFB38();
  sub_2939DC(a1);
  sub_2BF848();
  v2 = sub_2BFAD8();

  sub_2BF768();
  sub_E452C(v6, v5);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  sub_2BE6E8();

  sub_69198(v6, &unk_3C2550);
  return sub_69198(v5, &unk_3C2550);
}

uint64_t sub_296D20(void *a1)
{
  v2 = sub_2C57E8();
  v3 = a1;
  sub_2969FC(v2);
}

uint64_t sub_296D98(void *a1)
{
  v3 = sub_2C4968();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + qword_3C9A48);
  swift_getKeyPath();
  v12 = v7;
  sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  sub_2BE6F8();

  sub_2BF028();
  v12 = a1;

  v8 = a1;
  sub_2C4958();
  v9 = sub_2C4DE8();

  (*(v4 + 8))(v6, v3);
  return sub_13EC08(v9);
}

void sub_296F3C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_296D98(v4);
}

uint64_t sub_296FB8(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *&a1[qword_3C9A48];
  swift_getKeyPath();
  sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  v7 = a1;
  sub_2BE6F8();

  v8 = *(v6 + *a4);

  return v8;
}

void sub_29708C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2970E0(a3);
}

uint64_t sub_2970E0(char a1)
{
  v2 = *(v1 + qword_3C9A48);
  if (*(v2 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isContentReadyForRender) == (a1 & 1))
  {
    *(v2 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isContentReadyForRender) = a1 & 1;
    return sub_13ED14();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
    sub_2BE6E8();
  }
}

uint64_t sub_297208(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0xD000000000000024 && 0x80000000003083D0 == a3 || (result = sub_2C65B8(), (result & 1) != 0))
  {
    sub_2BFFB8();
    swift_allocObject();
    v5 = a1;
    sub_2BFFA8();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
    sub_2BE6E8();
  }

  return result;
}

uint64_t sub_297384(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_2C58C8();
  v7 = v6;
  v8 = a3;
  v9 = a1;
  sub_297208(v8, v5, v7);
}

uint64_t sub_2973FC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + qword_3C9A48);
    v4 = sub_2C5888();
    [v2 removeObserver:v3 forTrigger:v4];

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

void sub_2974B8(void *a1)
{
  v1 = a1;
  sub_2973FC();
}

void sub_297500(void *a1)
{
  if (a1)
  {
    swift_unknownObjectWeakAssign();
    v3 = *(v1 + qword_3C9A48);
    v4 = a1;
    oslog = sub_2C5888();
    [v4 addObserver:v3 forTrigger:?];
  }

  else
  {
    if (qword_3BB770 != -1)
    {
      swift_once();
    }

    v5 = sub_2C00B8();
    sub_57AD8(v5, qword_3C2F00);
    oslog = sub_2C0098();
    v6 = sub_2C5DC8();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, oslog, v6, "Attempted to resume and rebuild with nil trigger state manager", v7, 2u);
    }
  }
}

void sub_297660(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_297500(a3);
}

void sub_2976CC(void *a1, id a2)
{
  v3 = v2;
  v6 = [a2 configuration];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 cardsCanExpand];
    [v7 cardCornerRadius];
    v10 = v9;
    [v7 auxiliaryNavigationBarVisibilityOffset];
    v12 = v11;
    v13 = [v7 environment];
    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = v13;
    [v13 defaultStatusBarHeight];
    v16 = v15;

    [v7 auxiliaryNavigationBarBlurBleedHeight];
    v18 = v17;
    if (!v8)
    {
      v29 = [a1 scrollView];
      [v29 contentOffset];

      v30 = 1.0;
      if (v12 > 0.0)
      {
        *&v42 = 0;
        *(&v42 + 1) = v12;
        sub_228230();
        sub_2C5858();
        v30 = v41 / v12;
      }

      oslog = v30;
      [v3 navigationBarHeight];
      v25 = v18 + v31;
      goto LABEL_18;
    }

    v19 = [a1 currentState];
    v20 = [a1 scrollView];
    [v19 cardViewController:a1 cardYPositionInScreenFromCardScrollView:v20 cardData:a2];

    if (v12 >= 0.0)
    {
      *&v42 = 0;
      *(&v42 + 1) = v12;
      sub_228230();
      sub_2C5858();
      v21 = (v12 - v41) / v12;
      if (v12 <= 0.0)
      {
        v21 = 1.0;
      }

      oslog = v21;
      v22 = [a1 scrollView];
      [v22 contentOffset];

      [v7 cardExpandedTopOffset];
      v42 = xmmword_2F5DD0;
      sub_2C5858();
      v23 = v16 * oslog;
      [v3 navigationBarHeight];
      v25 = v23 + v18 + v24;
      v18 = v18 - v23;
      v10 = v10 - v10 * v41;
LABEL_18:
      v37 = v25;
      v38 = v18 * 0.5;
      v42 = *&v25;
      v43 = v18 * 0.5;
      v44 = oslog;
      v45 = v10;
      v32 = *&v3[qword_3C9A50];
      swift_getKeyPath();
      sub_299354(&qword_3BFB38, type metadata accessor for CardAuxiliaryNavigationBarBackgroundViewModel);

      sub_2BE6F8();

      v33 = v32[3].f64[0];
      v35 = v32[2];
      v36 = v32[1];

      v34.f64[0] = v38;
      v34.f64[1] = oslog;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v37, v36), vceqq_f64(v34, v35)))) & 1) == 0 || v10 != v33)
      {

        sub_D5240(&v42);
      }

      return;
    }

    __break(1u);
  }

  else
  {
    if (sub_2BF478())
    {
      return;
    }

    if (qword_3BB770 == -1)
    {
      goto LABEL_10;
    }
  }

  swift_once();
LABEL_10:
  v26 = sub_2C00B8();
  sub_57AD8(v26, qword_3C2F00);
  osloga = sub_2C0098();
  v27 = sub_2C5DC8();
  if (os_log_type_enabled(osloga, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_0, osloga, v27, "Cannot position background without configuration", v28, 2u);
  }
}

void sub_297BC0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_2976CC(v6, a4);

  swift_unknownObjectRelease();
}

uint64_t sub_297C40(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_88BE0;

  return v6();
}

uint64_t sub_297D28(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_7100C;

  return v7();
}

uint64_t dispatch thunk of CardAuxiliaryNavigationBarManager.createViewController(for:shouldReportFigaro:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(&stru_68.size + (swift_isaMask & *v2)) + **(&stru_68.size + (swift_isaMask & *v2)));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D273C;

  return v8(a1, a2);
}

uint64_t sub_298058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3C8EB8);
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

    return (v10 + 1);
  }
}

uint64_t sub_298134(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3C8EB8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_298218()
{
  sub_29829C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CardAuxiliaryNavigationBarBackgroundViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29829C()
{
  if (!qword_3C8F28)
  {
    type metadata accessor for CardAuxiliaryNavigationBarViewModel();
    v0 = sub_2C45F8();
    if (!v1)
    {
      atomic_store(v0, &qword_3C8F28);
    }
  }
}

uint64_t sub_298360()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_298398(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C9B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_298408()
{
  result = qword_3C9B98;
  if (!qword_3C9B98)
  {
    sub_718D4(&qword_3C9B68);
    sub_2984C0();
    sub_72B74(&qword_3C0448, &qword_3C0440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9B98);
  }

  return result;
}

unint64_t sub_2984C0()
{
  result = qword_3C9BA0;
  if (!qword_3C9BA0)
  {
    sub_718D4(&qword_3C9B60);
    sub_298578();
    sub_72B74(&qword_3C0438, &qword_3C0430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9BA0);
  }

  return result;
}

unint64_t sub_298578()
{
  result = qword_3C9BA8;
  if (!qword_3C9BA8)
  {
    sub_718D4(&qword_3C9B90);
    sub_298630();
    sub_72B74(&qword_3C1D80, &qword_3C1D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9BA8);
  }

  return result;
}

unint64_t sub_298630()
{
  result = qword_3C9BB0;
  if (!qword_3C9BB0)
  {
    sub_718D4(&qword_3C9B88);
    type metadata accessor for CardAuxiliaryNavigationBarView(255);
    sub_2C4E28();
    sub_299354(&qword_3C9B80, type metadata accessor for CardAuxiliaryNavigationBarView);
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C9BB8, &qword_3C9BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9BB0);
  }

  return result;
}

unint64_t sub_298768()
{
  result = qword_3C9BC8;
  if (!qword_3C9BC8)
  {
    sub_718D4(&qword_3C9B70);
    sub_718D4(&qword_3C9B68);
    sub_298408();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C1DB8, &qword_3C1DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9BC8);
  }

  return result;
}

unint64_t sub_2988B0()
{
  result = qword_3C9BD0;
  if (!qword_3C9BD0)
  {
    sub_718D4(&qword_3C9B78);
    sub_718D4(&qword_3C9B70);
    sub_298768();
    swift_getOpaqueTypeConformance2();
    sub_299354(qword_3C9BD8, type metadata accessor for CardAuxiliaryNavigationBarView.BackgroundViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9BD0);
  }

  return result;
}

uint64_t sub_2989AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_D5240(v3);
}

void sub_298B78(uint64_t a1, void *a2)
{
  v4 = sub_2C4908();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  sub_183EBC();
  _Block_copy(a2);
  *v7 = sub_2C5E88();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = sub_2C4928();
  (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    a2 = sub_5C998(0, a2[2] + 1, 1, a2);
    *(v7 + a1) = a2;
    goto LABEL_5;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    (a2[2])(a2, Strong);

    return;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = sub_299200;
  *(v9 + 24) = v8;
  v7 = OBJC_IVAR___BSUICardAuxiliaryNavigationBarManager_pendingClosures;
  swift_beginAccess();
  a2 = *(v7 + a1);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + a1) = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v14 = a2[2];
  v13 = a2[3];
  if (v14 >= v13 >> 1)
  {
    a2 = sub_5C998((v13 > 1), v14 + 1, 1, a2);
  }

  a2[2] = v14 + 1;
  v15 = &a2[2 * v14];
  v15[4] = sub_299498;
  v15[5] = v9;
  *(v7 + a1) = a2;
  swift_endAccess();
}

uint64_t sub_298DE4(void *a1, uint64_t a2)
{
  v3 = v2;
  v18 = type metadata accessor for CardAuxiliaryNavigationBarViewController.DependencyInjectionView(0) - 8;
  __chkstk_darwin(v18);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BD1B0);
  __chkstk_darwin(v8);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  type metadata accessor for NavigationProvider();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v3 + qword_3C9A58) = v9;
  *(v3 + qword_3C9A48) = a1;
  v17 = a2;
  *(v3 + qword_3C9A50) = a2;
  swift_getKeyPath();
  v19[0] = a1;
  v16 = sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  v10 = a1;

  sub_2BE6F8();

  sub_6620C(&qword_3BC330);
  sub_2C4968();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2E15C0;
  sub_2C4E28();

  sub_2C4F38();
  sub_2C4958();
  sub_6620C(&qword_3BD1F0);
  v19[3] = sub_2C53B8();
  v19[4] = &protocol witness table for NativeIntentDispatcher;
  sub_720C8(v19);
  sub_2C53A8();
  sub_2C4958();
  v19[0] = v11;
  sub_6620C(&unk_3BD220);
  sub_72B74(&qword_3BCE60, &unk_3BD220);
  v12 = sub_2C4DF8();

  sub_13EC08(v12);
  *(v3 + qword_3C9A60) = 0;
  type metadata accessor for CardAuxiliaryNavigationBarViewModel();
  v13 = v10;
  v14 = v17;

  sub_2C45D8();
  *&v7[*(v18 + 28)] = v14;
  return sub_2C3398();
}

uint64_t sub_2991C8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_299200(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_getObjectType();

  return sub_298B60(a1, v3);
}

uint64_t sub_299244()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_29928C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_7100C;

  return sub_2944D4(v2, v3, v5, v4);
}

uint64_t sub_299354(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29939C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2993FC()
{
  sub_718D4(&qword_3C9B78);
  sub_2988B0();
  return swift_getOpaqueTypeConformance2();
}

void sub_2994A4()
{
  sub_85704();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_299FF0(319, &qword_3C9C60, &type metadata accessor for Date, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_299FA4(319, &qword_3C9C68);
        if (v3 <= 0x3F)
        {
          sub_299FA4(319, &qword_3BFBE8);
          if (v4 <= 0x3F)
          {
            sub_299FA4(319, &qword_3C7040);
            if (v5 <= 0x3F)
            {
              sub_7191C(319, &qword_3C9C70, &qword_3BD668, &unk_2E4238, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_7191C(319, &qword_3BF758, &qword_3BCE00, &unk_2E3D30, &type metadata accessor for Environment);
                if (v7 <= 0x3F)
                {
                  sub_299FF0(319, &qword_3BD600, &type metadata accessor for SizeConstants, &type metadata accessor for Environment);
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

uint64_t sub_2996C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 16);
  v4 = *(v32 - 8);
  v5 = *(v4 + 84);
  v31 = sub_2BE588();
  v6 = *(v31 - 8);
  v33 = v5;
  v30 = *(v6 + 84);
  if (v30 > v5)
  {
    v5 = *(v6 + 84);
  }

  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(sub_2BE5C8() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(sub_2C0C98() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v4 + 80);
  if (v9)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 + 1;
  }

  if (v14 <= 8)
  {
    v14 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 80) & 0xF8 | 7;
  v16 = *(v4 + 64) + 1;
  if (a2 <= v7)
  {
    goto LABEL_36;
  }

  v17 = *(v8 + 80) & 0xF8 | 7;
  v18 = *(v11 + 80) & 0xF8 | 7;
  v19 = v12 + ((v14 + v18 + ((v17 + ((((((((((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v16 + v15 + ((v13 + 40) & ~v13)) & ~v15) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v17) + 1) & ~v18) + 1;
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v7 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v23 < 2)
    {
LABEL_36:
      if ((v5 & 0x80000000) != 0)
      {
        v26 = (a1 + v13 + 40) & ~v13;
        if (v33 == v7)
        {
          v27 = v33;
          v28 = *(v4 + 48);
          v29 = v32;
        }

        else
        {
          v28 = *(v6 + 48);
          v26 = (v16 + v26 + v15) & ~v15;
          v27 = v30;
          v29 = v31;
        }

        return v28(v26, v27, v29);
      }

      else
      {
        v25 = *(a1 + 3);
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        return (v25 + 1);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_36;
  }

LABEL_25:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 > 3)
    {
      LODWORD(v19) = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        LODWORD(v19) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v19) = *a1;
      }
    }

    else if (v19 == 1)
    {
      LODWORD(v19) = *a1;
    }

    else
    {
      LODWORD(v19) = *a1;
    }
  }

  return v7 + (v19 | v24) + 1;
}

void sub_299ABC(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v40 = *(a4 + 16);
  v4 = *(v40 - 8);
  v42 = v4;
  v5 = *(v4 + 84);
  v39 = sub_2BE588();
  v6 = *(v39 - 8);
  v38 = *(v6 + 84);
  if (v38 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v41 = v7;
  if (v5 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_2BE5C8() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  v13 = *(sub_2C0C98() - 8);
  v14 = 8;
  if (*(v13 + 64) <= 8uLL)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(v13 + 64);
  }

  v16 = *(v4 + 80);
  v17 = *(v6 + 80) & 0xF8 | 7;
  v18 = *(v4 + 64) + 1;
  v19 = (*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v10 + 80) & 0xF8 | 7;
  v21 = (v20 + ((((((((v19 + ((v18 + v17 + ((v16 + 40) & ~v16)) & ~v17) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v20;
  if (v11)
  {
    v22 = v12;
  }

  else
  {
    v22 = v12 + 1;
  }

  if (v22 > 8)
  {
    v14 = v22;
  }

  v23 = *(v13 + 80) & 0xF8 | 7;
  v24 = v15 + ((v14 + v23 + v21 + 1) & ~v23) + 1;
  if (a3 <= v9)
  {
    v26 = 0;
    v25 = a1;
  }

  else
  {
    v25 = a1;
    if (v24 <= 3)
    {
      v29 = ((a3 - v9 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
      if (HIWORD(v29))
      {
        v26 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  if (v9 < a2)
  {
    v27 = ~v9 + a2;
    if (v24 < 4)
    {
      v28 = (v27 >> (8 * v24)) + 1;
      if (v24)
      {
        v31 = v27 & ~(-1 << (8 * v24));
        bzero(v25, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *v25 = v31;
            if (v26 > 1)
            {
LABEL_64:
              if (v26 == 2)
              {
                *(v25 + v24) = v28;
              }

              else
              {
                *(v25 + v24) = v28;
              }

              return;
            }
          }

          else
          {
            *v25 = v27;
            if (v26 > 1)
            {
              goto LABEL_64;
            }
          }

          goto LABEL_61;
        }

        *v25 = v31;
        *(v25 + 2) = BYTE2(v31);
      }

      if (v26 > 1)
      {
        goto LABEL_64;
      }
    }

    else
    {
      bzero(v25, v24);
      *v25 = v27;
      v28 = 1;
      if (v26 > 1)
      {
        goto LABEL_64;
      }
    }

LABEL_61:
    if (v26)
    {
      *(v25 + v24) = v28;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *(v25 + v24) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *(v25 + v24) = 0;
  }

  else if (v26)
  {
    *(v25 + v24) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if ((v8 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(v25 + 4) = 0u;
      *(v25 + 12) = 0u;
      *v25 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v25 + 3) = a2 - 1;
    }

    return;
  }

  v32 = ((v25 + v16 + 40) & ~v16);
  if (v5 == v9)
  {
    v33 = *(v42 + 56);
    v34 = a2;
    v35 = v5;
    v36 = v40;

LABEL_70:
    v33(v32, v34, v35, v36);
    return;
  }

  v32 = ((v32 + v18 + v17) & ~v17);
  if (v41 >= a2)
  {
    v33 = *(v6 + 56);
    v34 = a2;
    v35 = v38;
    v36 = v39;

    goto LABEL_70;
  }

  if (v19 != -8)
  {
    v37 = v32;
    bzero(v32, (v19 + 8));
    *v37 = ~v41 + a2;
  }
}

void sub_299FA4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2C43A8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_299FF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29A098(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_2C4798();
}

uint64_t sub_29A268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v38 = a2;
  v42 = a1;
  v3 = sub_6620C(&qword_3BC418);
  __chkstk_darwin(v3 - 8);
  v44 = v35 - v4;
  v5 = sub_2BE678();
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BD648);
  __chkstk_darwin(v8 - 8);
  v47 = v35 - v9;
  v10 = sub_6620C(&qword_3C63A8);
  __chkstk_darwin(v10 - 8);
  v12 = v35 - v11;
  v43 = sub_2BE298();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v37 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2BE6D8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2BE698();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BE658();
  v22 = *(v15 + 16);
  v22(v17, v38, v14);
  sub_2BE668();
  v23 = *(v19 + 16);
  v35[1] = v12;
  v36 = v18;
  v23(v12, v21, v18);
  (*(v19 + 56))(v12, 0, 1, v18);
  v24 = v47;
  v22(v47, v42, v14);
  (*(v15 + 56))(v24, 0, 1, v14);
  v25 = v39;
  v26 = v40;
  v27 = *(v39 + 104);
  v27(v7, enum case for Calendar.Component.era(_:), v40);
  v42 = sub_2BE688();
  v28 = *(v25 + 8);
  v28(v7, v26);
  v27(v7, enum case for Calendar.Component.year(_:), v26);
  sub_2BE688();
  v28(v7, v26);
  v29 = v44;
  v30 = v37;
  sub_2BE288();
  sub_2BE638();
  (*(v41 + 8))(v30, v43);
  (*(v19 + 8))(v21, v36);
  v31 = sub_2BE588();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v29, 1, v31) != 1)
  {
    return (*(v32 + 32))(v45, v29, v31);
  }

  (*(v32 + 16))(v45, v46, v31);
  result = (v33)(v29, 1, v31);
  if (result != 1)
  {
    return sub_69198(v29, &qword_3BC418);
  }

  return result;
}

uint64_t sub_29A8E0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_2C30F8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_6932C(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_2C5DD8();
    v17 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_29AB6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = sub_2C30F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_6932C(v4, v13, a1);
  if (v15 == 1)
  {
    v11 = v13[1];
    *a2 = v13[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v14;
  }

  else
  {
    sub_2C5DD8();
    v12 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_29AD68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2C30F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BF850);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_6932C(v2, &v13 - v9, &qword_3BF850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_F3138(v10, a1);
  }

  sub_2C5DD8();
  v12 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29AF60@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void *, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_2C30F8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6932C(v6, v14, a1);
  if (v15 == 1)
  {
    return a2(v14, a3);
  }

  sub_2C5DD8();
  v13 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_29B124@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v17 = a3;
  v7 = sub_2C30F8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(a1);
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  sub_6932C(v6, &v16 - v12, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_69130(v13, v17, a2);
  }

  sub_2C5DD8();
  v15 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_29B3E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a4;
  v37 = a2;
  v38 = a3;
  v32 = a1;
  v42 = a5;
  v6 = sub_2BE5C8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v41 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&unk_3CA260);
  __chkstk_darwin(v9 - 8);
  v39 = &v29 - v10;
  v35 = sub_2C0608();
  v11 = *(v35 - 8);
  __chkstk_darwin(v35);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2C4BF8();
  __chkstk_darwin(v14 - 8);
  v36 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_6620C(&qword_3BCE00);
  __chkstk_darwin(v16 - 8);
  v18 = &v29 - v17;
  sub_72084(v5, v5[3]);
  v19 = v6;
  v20 = v32;
  v21 = sub_2BF3B8();
  v33 = v22;
  v34 = v21;
  sub_29B124(&qword_3BD670, &qword_3BCE00, v18);
  if ((*(v7 + 48))(v18, 1, v19) == 1)
  {
    sub_69198(v18, &qword_3BCE00);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v23 = sub_2BE598();
    v30 = v24;
    v31 = v23;
    (*(v7 + 8))(v18, v19);
  }

  sub_72084(v5, v5[3]);
  sub_2BF908();
  sub_2C4BE8();
  v25 = *(sub_6620C(v37) + 48);
  sub_6620C(&qword_3BD690);
  sub_2C4378();
  v13[v25] = *(v5 + *(v20 + 40));
  (*(v11 + 104))(v13, *v40, v35);
  v26 = sub_2BF088();
  (*(*(v26 - 8) + 56))(v39, 1, 1, v26);
  v27 = v41;
  sub_2BE5B8();
  sub_2BE598();
  (*(v7 + 8))(v27, v19);
  return sub_2C05D8();
}

uint64_t sub_29B81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[0] = a1;
  v25 = a2;
  v3 = sub_2BE5C8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&unk_3CA260);
  __chkstk_darwin(v7 - 8);
  v24 = v20 - v8;
  v21 = sub_2C0608();
  v9 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2C4BF8();
  __chkstk_darwin(v11 - 8);
  v22 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6620C(&qword_3BCE00);
  __chkstk_darwin(v13 - 8);
  v15 = v20 - v14;
  sub_72084(v2, v2[3]);
  v16 = sub_2BF3B8();
  v20[1] = v17;
  v20[2] = v16;
  sub_29B124(&qword_3BD670, &qword_3BCE00, v15);
  if ((*(v4 + 48))(v15, 1, v3) == 1)
  {
    sub_69198(v15, &qword_3BCE00);
    v20[0] = 0;
  }

  else
  {
    v20[0] = sub_2BE598();
    (*(v4 + 8))(v15, v3);
  }

  sub_72084(v2, v2[3]);
  sub_2BF908();
  sub_2C4BE8();
  (*(v9 + 104))(v23, enum case for AssetAction.Kind.unsetFinishedDate(_:), v21);
  v18 = sub_2BF088();
  (*(*(v18 - 8) + 56))(v24, 1, 1, v18);
  sub_2BE5B8();
  sub_2BE598();
  (*(v4 + 8))(v6, v3);
  return sub_2C05D8();
}

uint64_t sub_29BC1C()
{
  v0 = sub_2C4BF8();
  __chkstk_darwin(v0 - 8);
  sub_2C4BE8();
  sub_2C5598();
  return sub_2C5588();
}

uint64_t sub_29BCAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2C4BF8();
  __chkstk_darwin(v5 - 8);
  v6 = sub_2C0638();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v22[-v11];
  v13 = (v2 + *(a1 + 48));
  v14 = *v13;
  v15 = *(v13 + 1);
  v22[16] = v14;
  v23 = v15;
  sub_6620C(&qword_3C9CF8);
  sub_2C4378();
  if (v22[15])
  {
    v16 = &qword_3C7A68;
    v17 = &unk_2F74C0;
    v18 = &enum case for AssetAction.Kind.setFinishedDate(_:);
  }

  else
  {
    v16 = &qword_3C7A60;
    v17 = &unk_2FBCB0;
    v18 = &enum case for AssetAction.Kind.setFinishedYear(_:);
  }

  sub_29B3E8(a1, v16, v17, v18, v9);
  (*(v7 + 32))(v12, v9, v6);
  sub_2C05C8();
  sub_6620C(&qword_3BC240);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2E15C0;
  *(v19 + 56) = v6;
  *(v19 + 64) = sub_29F118(&qword_3BDC68, &type metadata accessor for AssetAction);
  v20 = sub_720C8((v19 + 32));
  (*(v7 + 16))(v20, v12, v6);
  *(v19 + 96) = sub_2C5628();
  *(v19 + 104) = &protocol witness table for Models.FlowBackAction;
  sub_720C8((v19 + 72));
  sub_29BC1C();
  a2[3] = sub_2C4D28();
  a2[4] = &protocol witness table for CompoundAction;
  sub_720C8(a2);
  sub_2C4D18();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_29BF88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2C4BF8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_2C0638();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29B81C(a1, v8);
  sub_2C05C8();
  sub_6620C(&qword_3BC240);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2E15C0;
  *(v9 + 56) = v5;
  *(v9 + 64) = sub_29F118(&qword_3BDC68, &type metadata accessor for AssetAction);
  v10 = sub_720C8((v9 + 32));
  (*(v6 + 16))(v10, v8, v5);
  *(v9 + 96) = sub_2C5628();
  *(v9 + 104) = &protocol witness table for Models.FlowBackAction;
  sub_720C8((v9 + 72));
  sub_29BC1C();
  a2[3] = sub_2C4D28();
  a2[4] = &protocol witness table for CompoundAction;
  sub_720C8(a2);
  sub_2C4D18();
  return (*(v6 + 8))(v8, v5);
}

double sub_29C1A8()
{
  v0 = sub_2C0C68();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2C0C98();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29A8E0(&qword_3BD530, &type metadata accessor for SizeConstants, v7);
  sub_2C0C78();
  (*(v5 + 8))(v7, v4);
  sub_2C0C58();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  return v9;
}

uint64_t sub_29C35C(uint64_t a1, double a2, double a3, double a4)
{
  sub_6620C(&qword_3C9CF8);
  sub_2C4378();
  v9 = *(v4 + *(a1 + 64));
  sub_6620C(&qword_3C9D38);
  sub_2C4378();
  if (*(v20 + 16))
  {
    sub_5D2E4(v20);
    v11 = v10;

    if (v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  sub_2C4378();

  sub_2C4378();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_62BA4(v20, isUniquelyReferenced_nonNull_native, a2, a3);
  v20 = v9;
  sub_2C4388();

  sub_2C4378();
  if ((v9 & 1) == 0)
  {
    sub_2C4378();

    sub_2C4378();
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_62BA4(v9, v13, a2, 216.0);
    v20 = v9;
    sub_2C4388();
  }

LABEL_7:
  sub_2C4378();
  if (v20 == 1)
  {
    v14 = sub_29C1A8();
    sub_2C4378();
    sub_2C4378();
    v15 = 0.0;
    if (*(v20 + 16))
    {
      v16 = sub_5D2E4(v20);
      if (v17)
      {
        v15 = *(*(v20 + 56) + 16 * v16);
      }
    }

    v18 = v14 + v14 + a4 < v15;
  }

  else
  {
    v18 = 0;
  }

  LOBYTE(v20) = v18;
  sub_6620C(&qword_3BFC48);
  sub_2C4388();
  sub_2C4378();
  if ((v20 & 1) == 0)
  {
    sub_2C4378();
    sub_2C4378();
    if (*(v20 + 16))
    {
      sub_5D2E4(v20);
    }
  }

  sub_6620C(&qword_3C7240);
  sub_2C4388();
  return sub_2C4388();
}

uint64_t sub_29C790(uint64_t a1)
{
  v19 = *(a1 + 16);
  v3 = v19;
  v20 = sub_718D4(&qword_3C9C78);
  v21 = sub_718D4(&qword_3C9C80);
  v22 = sub_718D4(&qword_3C9C88);
  swift_getTupleTypeMetadata();
  sub_2C4788();
  swift_getWitnessTable();
  v4 = sub_2C44A8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = *(a1 + 24);
  v16 = v3;
  v17 = v11;
  v18 = v1;
  sub_2C3328();
  sub_2C4498();
  WitnessTable = swift_getWitnessTable();
  sub_16A4E4(v7, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_16A4E4(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

uint64_t sub_29C9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v130 = a2;
  v125 = a4;
  v126 = sub_6620C(&qword_3C9C90);
  v122 = *(v126 - 8);
  __chkstk_darwin(v126);
  v85 = &v85 - v7;
  v8 = sub_2BF558();
  v120 = *(v8 - 8);
  v121 = v8;
  __chkstk_darwin(v8);
  v119 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_6620C(&qword_3C9C88);
  __chkstk_darwin(v123);
  v124 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v115 = &v85 - v12;
  v131 = sub_6620C(&qword_3C9C98);
  v114 = *(v131 - 8);
  __chkstk_darwin(v131);
  v112 = &v85 - v13;
  v14 = sub_2C0EC8();
  v109 = *(v14 - 8);
  v110 = v14;
  __chkstk_darwin(v14);
  v108 = (&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_2C0F28();
  v106 = *(v16 - 8);
  v107 = v16;
  __chkstk_darwin(v16);
  v104 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2C0F18();
  v102 = *(v18 - 8);
  v103 = v18;
  __chkstk_darwin(v18);
  v99 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2C0ED8();
  v94 = *(v20 - 8);
  v95 = v20;
  __chkstk_darwin(v20);
  v93 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_2C0F08();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_2C0EE8();
  v23 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2C0F38();
  __chkstk_darwin(v25 - 8);
  v92 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2C0458();
  v105 = *(v129 - 8);
  __chkstk_darwin(v129);
  v90 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_6620C(&qword_3C9C80);
  v117 = *(v28 - 8);
  v118 = v28;
  __chkstk_darwin(v28);
  v116 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v96 = &v85 - v31;
  v32 = type metadata accessor for EditFinishedDateView();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v85 - v34;
  v113 = *(a2 - 8);
  __chkstk_darwin(v36);
  v128 = &v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = a1 + *(v39 + 36);
  v127 = &v85 - v41;
  v132 = a3;
  sub_16A4E4(v40, a2, a3);
  (*(v33 + 16))(v35, a1, v32);
  v42 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = a2;
  *(v43 + 24) = a3;
  v44 = *(v33 + 32);
  v111 = v43;
  v44(v43 + v42, v35, v32);
  v45 = (a1 + *(v32 + 60));
  v46 = *v45;
  v47 = v45[1];
  v147 = v46;
  v148 = v47;
  sub_6620C(&qword_3C7240);
  sub_2C4378();
  sub_2C46A8();
  sub_2C2708();
  v97 = v157[4];
  v98 = v159;
  v100 = v162;
  v101 = v161;
  v166 = v158;
  v164 = v160;
  v49 = v86;
  v48 = v87;
  *v86 = 1;
  (*(v23 + 104))(v49, enum case for ButtonViewModel.Size.large(_:), v48);
  v50 = _UISolariumEnabled();
  v51 = &enum case for ButtonViewModel.Shape.capsule(_:);
  if (!v50)
  {
    v51 = &enum case for ButtonViewModel.Shape.roundedRectangle(_:);
  }

  (*(v89 + 104))(v88, *v51, v91);
  (*(v94 + 104))(v93, enum case for ButtonViewModel.Kind.solid(_:), v95);
  (*(v102 + 104))(v99, enum case for ButtonViewModel.Style.primary(_:), v103);
  sub_1DA078();
  v52 = v104;
  sub_2BFDC8();

  (*(v106 + 104))(v52, enum case for ButtonViewModel.Content.title(_:), v107);
  v53 = v108;
  v103 = v32;
  sub_29BCAC(v32, v108);
  (*(v109 + 104))(v53, enum case for ButtonViewModel.ActionKind.actionModel(_:), v110);
  sub_2C0EF8();
  v54 = v90;
  sub_2C0448();
  sub_2C4628();
  v55 = v112;
  sub_2C31B8();
  v133 = v130;
  v134 = v132;
  v106 = a1;
  v135 = a1;
  v56 = sub_6620C(&qword_3C9CA0);
  v57 = sub_29F118(&qword_3C9CA8, &type metadata accessor for ButtonView);
  v147 = &type metadata for Solarium;
  v148 = &protocol witness table for Solarium;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v107 = sub_29EC34();
  v59 = v96;
  v60 = v129;
  v61 = v131;
  v109 = v57;
  v110 = v56;
  v108 = OpaqueTypeConformance2;
  sub_2C4128();
  v62 = v115;
  (*(v114 + 8))(v55, v61);
  (*(v105 + 8))(v54, v60);
  v63 = v119;
  v64 = v120;
  v65 = v121;
  (*(v120 + 104))(v119, enum case for BooksFeatureFlag.iveReadThisFullFlow(_:), v121);
  sub_29F118(&qword_3BD678, &type metadata accessor for BooksFeatureFlag);
  sub_72B74(&qword_3BD680, &qword_3BD688);
  v66 = v63;
  LOBYTE(v63) = sub_2C5A78();
  (*(v64 + 8))(v66, v65);
  v67 = 1;
  if (v63)
  {
    v68 = v85;
    sub_29E6B4(v103, v85);
    v69 = sub_2C3768();
    sub_2C24D8();
    v70 = v68 + *(v126 + 36);
    *v70 = v69;
    *(v70 + 8) = v71;
    *(v70 + 16) = v72;
    *(v70 + 24) = v73;
    *(v70 + 32) = v74;
    *(v70 + 40) = 0;
    sub_29F050(v68, v62);
    v67 = 0;
  }

  (*(v122 + 56))(v62, v67, 1, v126);
  v75 = v113;
  v76 = v128;
  v77 = v130;
  (*(v113 + 16))(v128, v127, v130);
  v157[0] = v76;
  v147 = sub_29EB8C;
  v148 = v111;
  v149 = v97;
  v150 = v166;
  *v151 = *v165;
  *&v151[3] = *&v165[3];
  v152 = v98;
  v153 = v164;
  *v154 = *v163;
  *&v154[3] = *&v163[3];
  v155 = v101;
  v156 = v100;
  v157[1] = &v147;
  v78 = v116;
  v79 = v117;
  v80 = v118;
  (*(v117 + 16))(v116, v59, v118);
  v157[2] = v78;
  v81 = v124;
  sub_29ECF0(v62, v124);
  v157[3] = v81;

  v146[0] = v77;
  v146[1] = sub_6620C(&qword_3C9C78);
  v146[2] = v80;
  v146[3] = v123;
  v142 = v132;
  v143 = sub_29ED60();
  v136 = v129;
  v137 = v131;
  v138 = v110;
  v139 = v109;
  v140 = v108;
  v141 = v107;
  v144 = swift_getOpaqueTypeConformance2();
  v145 = sub_29EE18();
  sub_29A098(v157, 4uLL, v146);

  sub_29EFE8(v62);
  v82 = *(v79 + 8);
  v82(v59, v80);
  v83 = *(v75 + 8);
  v83(v127, v77);
  sub_29EFE8(v81);
  v82(v78, v80);

  return (v83)(v128, v77);
}

uint64_t sub_29D884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a5;
  v64 = sub_2C2758();
  v9 = *(v64 - 8);
  v65 = *(v9 + 64);
  __chkstk_darwin(v64);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a3;
  v70 = a4;
  v11 = type metadata accessor for EditFinishedDateView();
  v62 = *(v11 - 8);
  v63 = *(v62 + 64);
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  v14 = sub_6620C(&qword_3C9D00);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = sub_6620C(&qword_3C9D08);
  v18 = *(v17 - 8);
  v66 = v17;
  v67 = v18;
  __chkstk_darwin(v17);
  v71 = &v54 - v19;
  *v16 = sub_2C3328();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v20 = sub_6620C(&qword_3C9D10);
  sub_29DE68(a2, a1, a3, a4, &v16[*(v20 + 44)]);
  v21 = (a2 + *(v11 + 56));
  v57 = a2;
  v22 = *v21;
  v23 = v21[1];
  *&v76 = v22;
  *(&v76 + 1) = v23;
  sub_6620C(&qword_3C7240);
  sub_2C4378();
  sub_2C46A8();
  sub_2C2708();
  v56 = v14;
  v24 = &v16[*(v14 + 36)];
  v25 = v77;
  *v24 = v76;
  *(v24 + 1) = v25;
  *(v24 + 2) = v78;
  sub_2C2728();
  v72 = v26;
  v27 = v62;
  v28 = *(v62 + 16);
  v59 = v62 + 16;
  v60 = v28;
  v55 = v13;
  v29 = v11;
  v28(v13, a2, v11);
  v30 = v9;
  v31 = v61;
  v32 = v64;
  (*(v9 + 16))(v61, a1, v64);
  v33 = *(v27 + 80);
  v34 = v27;
  v35 = (v33 + 32) & ~v33;
  v63 += v35;
  v58 = v33 | 7;
  v36 = (v63 + *(v9 + 80)) & ~*(v9 + 80);
  v37 = swift_allocObject();
  v38 = v70;
  *(v37 + 16) = v69;
  *(v37 + 24) = v38;
  v65 = *(v34 + 32);
  v39 = v13;
  v40 = v29;
  v65(v37 + v35, v39, v29);
  (*(v30 + 32))(v37 + v36, v31, v32);
  v41 = sub_29F248();
  v42 = sub_29F300();
  v43 = v56;
  sub_2C4108();

  sub_69198(v16, &qword_3C9D00);
  v44 = v57;
  v45 = v57 + *(v40 + 48);
  v46 = *v45;
  v47 = *(v45 + 8);
  LOBYTE(v72) = v46;
  v73 = v47;
  sub_6620C(&qword_3C9CF8);
  sub_2C4378();
  v48 = v55;
  v60(v55, v44, v40);
  v49 = swift_allocObject();
  v50 = v70;
  *(v49 + 16) = v69;
  *(v49 + 24) = v50;
  v65(v49 + v35, v48, v40);
  v72 = v43;
  v73 = &type metadata for CGFloat;
  v74 = v41;
  v75 = v42;
  swift_getOpaqueTypeConformance2();
  sub_1F0CB8();
  v51 = v66;
  v52 = v71;
  sub_2C4108();

  return (*(v67 + 8))(v52, v51);
}

uint64_t sub_29DE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a3;
  v46 = a4;
  v48 = a2;
  v44 = sub_2C2758();
  v7 = *(v44 - 8);
  v47 = *(v7 + 64);
  __chkstk_darwin(v44);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EditFinishedDateView();
  v10 = *(v9 - 8);
  v42 = *(v10 + 64);
  __chkstk_darwin(v9);
  v41 = &v40 - v11;
  sub_6620C(&qword_3BD690);
  sub_2C4398();
  v12 = (a1 + *(v9 + 48));
  v40 = a1;
  v13 = *v12;
  v14 = *(v12 + 1);
  v52 = v13;
  v53 = v14;
  sub_6620C(&qword_3C9CF8);
  sub_2C4398();
  v15 = v49;
  v16 = v50;
  v17 = v51;
  v18 = (a1 + *(v9 + 52));
  v19 = *v18;
  v20 = *(v18 + 1);
  v52 = v19;
  v53 = v20;
  sub_6620C(&qword_3BFC48);
  sub_2C4398();
  v21 = v49;
  v22 = v50;
  v23 = v51;
  v24 = type metadata accessor for FinishedDatePickerView(0);
  v25 = a5 + v24[5];
  *v25 = v15;
  *(v25 + 8) = v16;
  *(v25 + 16) = v17;
  v26 = a5 + v24[6];
  *v26 = v21;
  *(v26 + 8) = v22;
  *(v26 + 16) = v23;
  v27 = v24[7];
  *(a5 + v27) = swift_getKeyPath();
  sub_6620C(&qword_3BD530);
  swift_storeEnumTagMultiPayload();
  v28 = v41;
  (*(v10 + 16))(v41, v40, v9);
  v30 = v43;
  v29 = v44;
  (*(v7 + 16))(v43, v48, v44);
  v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v32 = (v42 + *(v7 + 80) + v31) & ~*(v7 + 80);
  v33 = swift_allocObject();
  v34 = v46;
  *(v33 + 16) = v45;
  *(v33 + 24) = v34;
  (*(v10 + 32))(v33 + v31, v28, v9);
  (*(v7 + 32))(v33 + v32, v30, v29);
  v35 = sub_2C46A8();
  v37 = v36;
  result = sub_6620C(&qword_3C9D40);
  v39 = (a5 + *(result + 36));
  *v39 = sub_29E1E4;
  v39[1] = 0;
  v39[2] = sub_29FA40;
  v39[3] = v33;
  v39[4] = v35;
  v39[5] = v37;
  return result;
}

uint64_t sub_29E1E4@<X0>(void *a1@<X8>)
{
  result = sub_2C2728();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_29E210(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2C2728();
  v4 = v3;
  v5 = type metadata accessor for EditFinishedDateView();
  return sub_29C35C(v5, v1, v2, v4);
}

uint64_t sub_29E28C()
{
  type metadata accessor for EditFinishedDateView();
  sub_6620C(&qword_3C9CF8);
  sub_2C4378();
  if (v1 == 1)
  {
    sub_2C2728();
    sub_29C1A8();
    sub_2C4378();
    sub_6620C(&qword_3C9D38);
    sub_2C4378();
    if (*(v1 + 16))
    {
      sub_5D2E4(v1);
    }
  }

  sub_6620C(&qword_3BFC48);
  sub_2C4388();
  sub_2C2728();
  sub_6620C(&qword_3C7240);
  return sub_2C4388();
}

uint64_t sub_29E470()
{
  type metadata accessor for EditFinishedDateView();
  sub_6620C(&qword_3BFC48);
  result = sub_2C4378();
  if (v1 == 1)
  {
    sub_6620C(&qword_3C9CF8);
    result = sub_2C4378();
    if ((v1 & 1) == 0)
    {
      sub_2C4378();
      sub_6620C(&qword_3C9D38);
      sub_2C4378();
      if (*(v1 + 16))
      {
        sub_5D2E4(v1);
      }

      sub_6620C(&qword_3C7240);
      return sub_2C4388();
    }
  }

  return result;
}

double sub_29E5FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2C46A8();
  sub_2C2708();
  v4 = sub_2C0458();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_6620C(&qword_3C9CA0) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_29E6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_2C0EE8();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C0408();
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  __chkstk_darwin(v6);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  v12 = sub_6620C(&unk_3C43D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_6620C(&qword_3C9CE0);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  __chkstk_darwin(v15);
  v18 = &v32 - v17;
  v19 = sub_2C24B8();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  sub_29BF88(a1, v41);
  v20 = v42;
  v21 = v43;
  v22 = sub_72084(v41, v42);
  v44[3] = v20;
  v44[4] = *(v21 + 8);
  v23 = sub_720C8(v44);
  (*(*(v20 - 8) + 16))(v23, v22, v20);
  (*(v9 + 16))(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = *(a1 + 16);
  (*(v9 + 32))(v25 + v24, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2C0388();
  sub_68CD0(v41);
  v27 = v35;
  v26 = v36;
  *v35 = 1;
  (*(v26 + 104))(v27, enum case for ButtonViewModel.Size.large(_:), v37);
  v28 = v34;
  sub_2C03F8();
  sub_72B74(&qword_3C9CE8, &qword_3C9CE0);
  sub_29F118(&qword_3C9CF0, &type metadata accessor for BooksBorderlessButtonStyle);
  v29 = v32;
  v30 = v38;
  sub_2C3E48();
  (*(v39 + 8))(v28, v30);
  return (*(v33 + 8))(v18, v29);
}

uint64_t sub_29EB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for EditFinishedDateView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_29D884(a1, v8, v5, v6, a2);
}

unint64_t sub_29EC34()
{
  result = qword_3C9CB0;
  if (!qword_3C9CB0)
  {
    sub_718D4(&qword_3C9CA0);
    sub_29F118(&qword_3C9CA8, &type metadata accessor for ButtonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9CB0);
  }

  return result;
}

uint64_t sub_29ECF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C9C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29ED60()
{
  result = qword_3C9CB8;
  if (!qword_3C9CB8)
  {
    sub_718D4(&qword_3C9C78);
    sub_72B74(&qword_3C9CC0, &qword_3C9CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9CB8);
  }

  return result;
}

unint64_t sub_29EE18()
{
  result = qword_3C9CD0;
  if (!qword_3C9CD0)
  {
    sub_718D4(&qword_3C9C88);
    sub_29EE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9CD0);
  }

  return result;
}

unint64_t sub_29EE9C()
{
  result = qword_3C9CD8;
  if (!qword_3C9CD8)
  {
    sub_718D4(&qword_3C9C90);
    sub_718D4(&qword_3C9CE0);
    sub_2C0408();
    sub_72B74(&qword_3C9CE8, &qword_3C9CE0);
    sub_29F118(&qword_3C9CF0, &type metadata accessor for BooksBorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9CD8);
  }

  return result;
}

uint64_t sub_29EFE8(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C9C88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29F050(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C9C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29F0C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DA078();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_29F118(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29F160()
{
  type metadata accessor for EditFinishedDateView();
  sub_2C2758();

  return sub_29E28C();
}

unint64_t sub_29F248()
{
  result = qword_3C9D18;
  if (!qword_3C9D18)
  {
    sub_718D4(&qword_3C9D00);
    sub_72B74(&qword_3C9D20, &qword_3C9D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9D18);
  }

  return result;
}

unint64_t sub_29F300()
{
  result = qword_3C9D30;
  if (!qword_3C9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9D30);
  }

  return result;
}

uint64_t sub_29F354()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for EditFinishedDateView();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;
  sub_68CD0(v0 + v4);
  (*(*(v1 - 8) + 8))(v0 + v4 + v2[9], v1);
  v7 = v0 + v4 + v2[11];
  v8 = sub_2BE588();
  (*(*(v8 - 8) + 8))(v7, v8);
  sub_6620C(&qword_3BD690);

  v9 = v2[17];
  sub_6620C(&qword_3BD670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2BE5C8();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  else
  {
  }

  v12 = v2[18];
  sub_6620C(&qword_3BD530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2C0C98();
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_29F638()
{
  type metadata accessor for EditFinishedDateView();

  return sub_29E470();
}

uint64_t sub_29F6C4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for EditFinishedDateView();
  v3 = *(*(v2 - 1) + 80);
  v18 = *(*(v2 - 1) + 64);
  v4 = sub_2C2758();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v17 = *(v5 + 64);
  v7 = v0 + ((v3 + 32) & ~v3);
  sub_68CD0(v7);
  (*(*(v1 - 8) + 8))(v7 + v2[9], v1);
  v8 = v7 + v2[11];
  v9 = sub_2BE588();
  (*(*(v9 - 8) + 8))(v8, v9);
  sub_6620C(&qword_3BD690);

  v10 = v2[17];
  sub_6620C(&qword_3BD670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2BE5C8();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v7 + v10, 1, v11))
    {
      (*(v12 + 8))(v7 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v2[18];
  sub_6620C(&qword_3BD530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_2C0C98();
    (*(*(v14 - 8) + 8))(v7 + v13, v14);
  }

  else
  {
  }

  v15 = (((v3 + 32) & ~v3) + v18 + v6) & ~v6;
  (*(v5 + 8))(v0 + v15, v4);

  return _swift_deallocObject(v0, v15 + v17, v3 | v6 | 7);
}

uint64_t sub_29FA40(double *a1)
{
  type metadata accessor for EditFinishedDateView();
  sub_2C2758();

  return sub_29E210(a1);
}

uint64_t sub_29FB30()
{
  sub_718D4(&qword_3C9C78);
  sub_718D4(&qword_3C9C80);
  sub_718D4(&qword_3C9C88);
  swift_getTupleTypeMetadata();
  sub_2C4788();
  swift_getWitnessTable();
  sub_2C44A8();
  return swift_getWitnessTable();
}

uint64_t sub_29FC20(uint64_t a1)
{
  v2 = sub_2C3478();
  __chkstk_darwin(v2 - 8);
  v3 = sub_6620C(&qword_3C9E10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_2C3468();
  v9 = a1;
  sub_6620C(&qword_3C9E38);
  sub_72B74(&qword_3C9E40, &qword_3C9E38);
  sub_2C25D8();
  sub_72B74(&qword_3C9E18, &qword_3C9E10);
  sub_2C34C8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29FE0C(uint64_t a1)
{
  v2 = sub_2C24B8();
  __chkstk_darwin(v2 - 8);
  sub_2C2498();
  v3 = sub_2C5628();
  v6[3] = v3;
  v6[4] = &protocol witness table for Models.FlowBackAction;
  v4 = sub_720C8(v6);
  (*(*(v3 - 8) + 16))(v4, a1, v3);
  return sub_2C0398();
}

uint64_t sub_29FEEC(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_29FF5C(a1);
    v5 = v4;

    return v5;
  }

  return result;
}

id sub_29FF5C(void *a1)
{
  v3 = [v1 topViewController];
  if (v3)
  {
    v4 = *&v1[qword_3C65B8];
    v5 = v3;

    if (v5 == v4)
    {
      v1 = v4;
    }
  }

  [v1 preferredContentSize];
  return [a1 maximumDetentValue];
}

uint64_t static BSUINoticeViewController.presentNoticeForAdding(assetID:assetContentType:collectionTitle:collectionID:options:objectGraph:useNonSpecificDeterminerInMessage:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 144) = v17;
  *(v9 + 152) = v8;
  *(v9 + 307) = v16;
  *(v9 + 128) = a8;
  *(v9 + 136) = v15;
  *(v9 + 112) = a6;
  *(v9 + 120) = a7;
  *(v9 + 96) = a4;
  *(v9 + 104) = a5;
  *(v9 + 80) = a2;
  *(v9 + 88) = a3;
  *(v9 + 72) = a1;
  v10 = sub_6620C(&qword_3BCB88);
  *(v9 + 160) = v10;
  *(v9 + 168) = *(v10 - 8);
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = sub_2C5C18();
  *(v9 + 192) = sub_2C5C08();
  v12 = sub_2C5BB8();
  *(v9 + 200) = v12;
  *(v9 + 208) = v11;

  return _swift_task_switch(sub_2A0124, v12, v11);
}

uint64_t sub_2A0124()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[10];
  v4 = v0[9];
  sub_6620C(&qword_3C7A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E3F30;
  *(inited + 32) = v4;
  *(inited + 40) = v3;

  *(inited + 48) = sub_2C5CF8();
  v0[27] = sub_68788(inited);
  swift_setDeallocating();
  sub_69198(inited + 32, &qword_3C7A88);
  v6 = swift_task_alloc();
  v0[28] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v0[29] = sub_2C5C08();
  v8 = sub_2C5BB8();
  v0[30] = v8;
  v0[31] = v7;

  return _swift_task_switch(sub_2A025C, v8, v7);
}

uint64_t sub_2A025C()
{
  v1 = *(v0 + 120);
  v2 = sub_2C58C8();
  if (v1)
  {
    if (v2 == *(v0 + 112) && *(v0 + 120) == v3)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_2C65B8();
    }
  }

  v5 = *(v0 + 307);

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_66278(0, &qword_3BC790);
  isa = sub_2C57C8().super.isa;

  v8 = sub_2C5888();
  v9 = [ObjCClassFromMetadata _noticeMessageForAddingAssets:isa toCollectionNamed:v8 isAddingToWantToRead:v1 & 1 useNonSpecificDeterminerInMessage:v5];

  if (v9)
  {
    v10 = sub_2C58C8();
    v12 = v11;

    *(v0 + 256) = v10;
    *(v0 + 264) = v12;
    if (v1)
    {
      if (qword_3BB730 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 168);
      v13 = *(v0 + 176);
      v15 = *(v0 + 160);
      v16 = sub_57AD8(v15, qword_3BF980);
      v17 = *(v14 + 16);
      v17(v13, v16, v15);
      sub_2BF448();
      v18 = *(v14 + 8);
      v18(v13, v15);
      if (*(v0 + 305) == 1)
      {
        if (qword_3BB728 != -1)
        {
          swift_once();
        }

        v19 = *(v0 + 176);
        v20 = *(v0 + 160);
        v21 = sub_57AD8(v20, qword_3BF968);
        v17(v19, v21, v20);
        sub_2BF448();
        v18(v19, v20);
        v22 = *(v0 + 306);
      }

      else
      {
        v22 = 1;
      }
    }

    else
    {
      v22 = 0;
    }

    *(v0 + 308) = v22;
    v25 = swift_task_alloc();
    *(v0 + 272) = v25;
    *v25 = v0;
    v25[1] = sub_2A059C;

    return sub_2A23F4(v1 & 1);
  }

  else
  {

    v23 = *(v0 + 200);
    v24 = *(v0 + 208);

    return _swift_task_switch(sub_2A0C7C, v23, v24);
  }
}

uint64_t sub_2A059C(char a1)
{
  v2 = *v1;
  *(*v1 + 309) = a1;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);

  return _swift_task_switch(sub_2A06C4, v4, v3);
}

uint64_t sub_2A06C4()
{
  if (*(v0 + 308) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 280) = v1;
    *v1 = v0;
    v1[1] = sub_2A0870;
    v2 = *(v0 + 264);
    v3 = *(v0 + 128);
    v4 = *(v0 + 256);
    v5 = 1;
LABEL_5:

    return sub_2A2804(v4, v2, v5, v3);
  }

  if (*(v0 + 309) == 2)
  {
    v6 = swift_task_alloc();
    *(v0 + 296) = v6;
    *v6 = v0;
    v6[1] = sub_2A0CE8;
    v2 = *(v0 + 264);
    v3 = *(v0 + 128);
    v4 = *(v0 + 256);
    v5 = 0;
    goto LABEL_5;
  }

  v8 = *(v0 + 309);
  v9 = swift_task_alloc();
  *(v0 + 288) = v9;
  *v9 = v0;
  v9[1] = sub_2A0B5C;
  v10 = *(v0 + 224);
  v11 = *(v0 + 128);

  return sub_2A2CE8(v8 & 1, v11, sub_2A6590, v10);
}

uint64_t sub_2A0870()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return _swift_task_switch(sub_2A09B4, v3, v2);
}

uint64_t sub_2A09B4()
{
  if (qword_3BB730 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 309);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = sub_57AD8(v4, qword_3BF980);
  (*(v3 + 16))(v2, v5, v4);
  *(v0 + 304) = 1;
  sub_2BF458();
  (*(v3 + 8))(v2, v4);
  if (v1 == 2)
  {

    v6 = *(v0 + 200);
    v7 = *(v0 + 208);

    return _swift_task_switch(sub_2A0C7C, v6, v7);
  }

  else
  {
    v8 = *(v0 + 309);
    v9 = swift_task_alloc();
    *(v0 + 288) = v9;
    *v9 = v0;
    v9[1] = sub_2A0B5C;
    v10 = *(v0 + 224);
    v11 = *(v0 + 128);

    return sub_2A2CE8(v8 & 1, v11, sub_2A6590, v10);
  }
}

uint64_t sub_2A0B5C()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return _swift_task_switch(sub_2A6E40, v3, v2);
}

uint64_t sub_2A0C7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2A0CE8()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return _swift_task_switch(sub_2A0E2C, v3, v2);
}

uint64_t sub_2A0E2C()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return _swift_task_switch(sub_2A0C7C, v1, v2);
}

void static BSUINoticeViewController.presentNoticeForRemoving(assetContentType:collectionTitle:options:useNonSpecificDeterminerInMessage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_6620C(&qword_3BFDD8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2E9480;
  *(v7 + 32) = sub_2C5CF8();
  sub_66278(0, &qword_3BC790);
  isa = sub_2C5B18().super.isa;

  v9 = sub_2C5888();
  v10 = sub_2C57C8().super.isa;
  [ObjCClassFromMetadata presentNoticeForRemovingBooks:isa fromCollectionNamed:v9 options:v10 useNonSpecificDeterminerInMessage:a5 & 1];
}

uint64_t static BSUINoticeViewController.presentNoticeForAdding(assets:collectionTitle:collectionID:source:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v16 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v16 - 8);
  v18 = &v24 - v17;
  v19 = sub_2C5C58();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_2C5C18();
  v20 = a6;

  v21 = sub_2C5C08();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v8;
  v22[5] = a1;
  v22[6] = a2;
  v22[7] = a3;
  v22[8] = a4;
  v22[9] = a5;
  v22[10] = a7;
  v22[11] = a6;
  sub_249B98(0, 0, v18, &unk_2FBD80, v22);
}

uint64_t sub_2A1154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v15;
  *(v8 + 56) = v14;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = sub_6620C(&qword_3BCB88);
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = sub_2C5C18();
  *(v8 + 112) = sub_2C5C08();
  v11 = sub_2C5BB8();
  *(v8 + 120) = v11;
  *(v8 + 128) = v10;

  return _swift_task_switch(sub_2A1274, v11, v10);
}

uint64_t sub_2A1274()
{
  if (v0[8])
  {
    v1 = v0[8];
  }

  else
  {
    v1 = sub_6864C(_swiftEmptyArrayStorage);
  }

  v0[17] = v1;
  v2 = v0[9];
  v3 = swift_task_alloc();
  v0[18] = v3;
  *(v3 + 16) = v2;

  v0[19] = sub_2C5C08();
  v5 = sub_2C5BB8();
  v0[20] = v5;
  v0[21] = v4;

  return _swift_task_switch(sub_2A1344, v5, v4);
}

uint64_t sub_2A1344()
{
  v1 = *(v0 + 56);
  v2 = sub_2C58C8();
  if (v1)
  {
    if (v2 == *(v0 + 48) && *(v0 + 56) == v3)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_2C65B8();
    }
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_66278(0, &qword_3BC790);
  isa = sub_2C57C8().super.isa;
  v7 = sub_2C5888();
  v8 = [ObjCClassFromMetadata _noticeMessageForAddingAssets:isa toCollectionNamed:v7 isAddingToWantToRead:v1 & 1 useNonSpecificDeterminerInMessage:0];

  if (v8)
  {
    v9 = sub_2C58C8();
    v11 = v10;

    *(v0 + 176) = v9;
    *(v0 + 184) = v11;
    if (v1)
    {
      if (qword_3BB730 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 88);
      v12 = *(v0 + 96);
      v14 = *(v0 + 80);
      v15 = sub_57AD8(v14, qword_3BF980);
      v16 = *(v13 + 16);
      v16(v12, v15, v14);
      sub_2BF448();
      v17 = *(v13 + 8);
      v17(v12, v14);
      if (*(v0 + 225) == 1)
      {
        if (qword_3BB728 != -1)
        {
          swift_once();
        }

        v18 = *(v0 + 96);
        v19 = *(v0 + 80);
        v20 = sub_57AD8(v19, qword_3BF968);
        v16(v18, v20, v19);
        sub_2BF448();
        v17(v18, v19);
        v21 = *(v0 + 226);
      }

      else
      {
        v21 = 1;
      }
    }

    else
    {
      v21 = 0;
    }

    *(v0 + 227) = v21;
    v24 = swift_task_alloc();
    *(v0 + 192) = v24;
    *v24 = v0;
    v24[1] = sub_2A1680;

    return sub_2A23F4(v1 & 1);
  }

  else
  {

    v22 = *(v0 + 120);
    v23 = *(v0 + 128);

    return _swift_task_switch(sub_2A1D88, v22, v23);
  }
}

uint64_t sub_2A1680(char a1)
{
  v2 = *v1;
  *(*v1 + 228) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return _swift_task_switch(sub_2A17A8, v4, v3);
}

uint64_t sub_2A17A8()
{
  if (*(v0 + 227) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 200) = v1;
    *v1 = v0;
    v1[1] = sub_2A1950;
    v2 = *(v0 + 184);
    v3 = *(v0 + 136);
    v4 = *(v0 + 176);
    v5 = 1;
LABEL_5:

    return sub_2A2804(v4, v2, v5, v3);
  }

  if (*(v0 + 228) == 2)
  {
    v6 = swift_task_alloc();
    *(v0 + 216) = v6;
    *v6 = v0;
    v6[1] = sub_2A1DF4;
    v2 = *(v0 + 184);
    v3 = *(v0 + 136);
    v4 = *(v0 + 176);
    v5 = 0;
    goto LABEL_5;
  }

  v8 = *(v0 + 228);
  v9 = swift_task_alloc();
  *(v0 + 208) = v9;
  *v9 = v0;
  v9[1] = sub_2A1C44;
  v10 = *(v0 + 136);
  v11 = *(v0 + 144);

  return sub_2A2CE8(v8 & 1, v10, sub_2A6824, v11);
}

uint64_t sub_2A1950()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_2A1A94, v3, v2);
}

uint64_t sub_2A1A94()
{
  if (qword_3BB730 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 228);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = sub_57AD8(v4, qword_3BF980);
  (*(v3 + 16))(v2, v5, v4);
  *(v0 + 224) = 1;
  sub_2BF458();
  (*(v3 + 8))(v2, v4);
  if (v1 == 2)
  {

    v6 = *(v0 + 120);
    v7 = *(v0 + 128);

    return _swift_task_switch(sub_2A1D88, v6, v7);
  }

  else
  {
    v8 = *(v0 + 228);
    v9 = swift_task_alloc();
    *(v0 + 208) = v9;
    *v9 = v0;
    v9[1] = sub_2A1C44;
    v10 = *(v0 + 136);
    v11 = *(v0 + 144);

    return sub_2A2CE8(v8 & 1, v10, sub_2A6824, v11);
  }
}

uint64_t sub_2A1C44()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_2A6E44, v3, v2);
}

uint64_t sub_2A1D88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2A1DF4()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_2A1F54, v3, v2);
}

uint64_t sub_2A1F54()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return _swift_task_switch(sub_2A1D88, v1, v2);
}

uint64_t sub_2A1FC0(void *a1, void *a2)
{
  v3 = a2;
  if (!a2)
  {
    v3 = a1;
  }

  v4 = a2;
  UIViewController.jetActionHandlerInContext.getter();
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 8))(ObjectType, v6);
  swift_unknownObjectRelease();
  v9 = [v3 ba_effectiveAnalyticsTracker];

  return v8;
}

uint64_t sub_2A23F4(char a1)
{
  *(v2 + 152) = v1;
  *(v2 + 192) = a1;
  sub_2C5C18();
  *(v2 + 160) = sub_2C5C08();
  v4 = sub_2C5BB8();
  *(v2 + 168) = v4;
  *(v2 + 176) = v3;

  return _swift_task_switch(sub_2A2490, v4, v3);
}

uint64_t sub_2A2490()
{
  if (*(v0 + 192) == 1 && (v1 = [swift_getObjCClassFromMetadata() addToWTRDelegate], (*(v0 + 184) = v1) != 0))
  {
    v2 = v1;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_2A2634;
    v4 = swift_continuation_init();
    *(v0 + 136) = sub_6620C(&qword_3C9E80);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2A51C0;
    *(v0 + 104) = &unk_395720;
    *(v0 + 112) = v4;
    [v2 addToWTR:ObjCClassFromMetadata priceTrackingOptInTypeWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5(2);
  }
}

uint64_t sub_2A2634()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return _swift_task_switch(sub_2A273C, v2, v1);
}

uint64_t sub_2A273C()
{

  v1 = v0[18];
  if (v1 >= 3)
  {
    type metadata accessor for BSUIAddToWTRDelegatePriceTrackingOptInType(0);
    v0[10] = v1;

    return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)(v4, v0 + 10, v4, &type metadata for UInt);
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = v0[1];

    return v2(0x10002u >> (8 * v1));
  }
}

uint64_t sub_2A2804(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 160) = a4;
  *(v5 + 168) = v4;
  *(v5 + 224) = a3;
  *(v5 + 144) = a1;
  *(v5 + 152) = a2;
  sub_2C5C18();
  *(v5 + 176) = sub_2C5C08();
  v7 = sub_2C5BB8();
  *(v5 + 184) = v7;
  *(v5 + 192) = v6;

  return _swift_task_switch(sub_2A28A4, v7, v6);
}

uint64_t sub_2A28A4()
{
  v1 = *(v0 + 224);
  sub_1DA078();
  v2 = [swift_getObjCClassFromMetadata() noticeViewAddedImage];
  *(v0 + 200) = v2;
  if (v1 == 1)
  {
    sub_1DA078();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v2;
  v6 = sub_2C5888();

  v7 = sub_2C5888();
  if (v4)
  {
    v8 = sub_2C5888();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(BSUINoticeViewController) initWithTitle:v6 message:v7 image:v5 confirmString:v8];
  *(v0 + 208) = v9;

  if (v9)
  {
    v10 = v9;
    isa = sub_2C57C8().super.isa;
    *(v0 + 216) = isa;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_2A2B5C;
    v12 = swift_continuation_init();
    *(v0 + 136) = sub_6620C(&qword_3C9E30);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2A521C;
    *(v0 + 104) = &unk_3956F8;
    *(v0 + 112) = v12;
    [v10 _runWithOptions:isa completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_2A2B5C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return _swift_task_switch(sub_2A2C64, v2, v1);
}

uint64_t sub_2A2C64()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2A2CE8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 752) = v4;
  *(v5 + 744) = a4;
  *(v5 + 736) = a3;
  *(v5 + 728) = a2;
  *(v5 + 1129) = a1;
  sub_2C36F8();
  *(v5 + 760) = swift_task_alloc();
  v6 = sub_6620C(&qword_3C9D58);
  *(v5 + 768) = v6;
  *(v5 + 776) = *(v6 - 8);
  *(v5 + 784) = swift_task_alloc();
  *(v5 + 792) = sub_6620C(&qword_3C9D60);
  *(v5 + 800) = swift_task_alloc();
  v7 = sub_6620C(&qword_3C9D68);
  *(v5 + 808) = v7;
  *(v5 + 816) = *(v7 - 8);
  *(v5 + 824) = swift_task_alloc();
  *(v5 + 832) = sub_6620C(&qword_3C9D70);
  *(v5 + 840) = swift_task_alloc();
  *(v5 + 848) = sub_6620C(&qword_3C9D78);
  *(v5 + 856) = swift_task_alloc();
  *(v5 + 864) = swift_task_alloc();
  v8 = sub_2C1A28();
  *(v5 + 872) = v8;
  *(v5 + 880) = *(v8 - 8);
  *(v5 + 888) = swift_task_alloc();
  *(v5 + 896) = type metadata accessor for RootHostingControllerConfiguration(0);
  *(v5 + 904) = swift_task_alloc();
  *(v5 + 912) = swift_task_alloc();
  *(v5 + 920) = swift_task_alloc();
  *(v5 + 928) = sub_6620C(&qword_3BCE28);
  *(v5 + 936) = swift_task_alloc();
  *(v5 + 944) = swift_task_alloc();
  *(v5 + 952) = swift_task_alloc();
  sub_2C4BF8();
  *(v5 + 960) = swift_task_alloc();
  v9 = sub_2C5628();
  *(v5 + 968) = v9;
  *(v5 + 976) = *(v9 - 8);
  *(v5 + 984) = swift_task_alloc();
  *(v5 + 992) = sub_2C5C18();
  *(v5 + 1000) = sub_2C5C08();
  v11 = sub_2C5BB8();
  *(v5 + 1008) = v11;
  *(v5 + 1016) = v10;

  return _swift_task_switch(sub_2A30D4, v11, v10);
}

uint64_t sub_2A30D4()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [ObjCClassFromMetadata addToWTRDelegate];
  *(v0 + 1024) = v2;
  if (!v2)
  {

    if (qword_3BB810 != -1)
    {
      swift_once();
    }

    v9 = sub_2C00B8();
    sub_57AD8(v9, qword_3E8880);
    v10 = sub_2C0098();
    v11 = sub_2C5DC8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "Missing delegate", v12, 2u);
    }

    goto LABEL_21;
  }

  isa = sub_2C57C8().super.isa;
  v4 = [ObjCClassFromMetadata _presentingViewControllerForModalWithOptions:isa];
  *(v0 + 1032) = v4;

  if (!v4)
  {

    if (qword_3BB810 != -1)
    {
      swift_once();
    }

    v13 = sub_2C00B8();
    sub_57AD8(v13, qword_3E8880);
    v10 = sub_2C0098();
    v14 = sub_2C5DC8();
    if (os_log_type_enabled(v10, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v10, v14, "Missing presenting view controller", v15, 2u);

      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    swift_unknownObjectRelease();
LABEL_21:

    goto LABEL_22;
  }

  v5 = (*(v0 + 736))(v4);
  *(v0 + 1040) = v5;
  *(v0 + 1048) = v6;
  if (v5)
  {

    v7 = swift_task_alloc();
    *(v0 + 1056) = v7;
    *v7 = v0;
    v7[1] = sub_2A35B4;

    return BaseObjectGraph.withSyncDependenciesForSwiftUI.getter();
  }

  v16 = v6;

  if (qword_3BB810 != -1)
  {
    swift_once();
  }

  v17 = sub_2C00B8();
  sub_57AD8(v17, qword_3E8880);
  v18 = sub_2C0098();
  v19 = sub_2C5DC8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "Missing objectGraph", v20, 2u);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

LABEL_22:

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2A35B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1064) = a1;
  *(v4 + 1072) = v1;

  v5 = *(v3 + 1016);
  v6 = *(v3 + 1008);
  if (v1)
  {
    v7 = sub_2A4E2C;
  }

  else
  {
    v7 = sub_2A36FC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_2A36FC()
{
  v1 = *(v0 + 1048);
  if (v1)
  {
    v2 = *(v0 + 1024);
    v91 = *(v0 + 984);
    v80 = *(v0 + 952);
    v106 = *(v0 + 944);
    v88 = *(v0 + 936);
    v86 = *(v0 + 920);
    v107 = *(v0 + 912);
    v90 = *(v0 + 904);
    v3 = *(v0 + 880);
    v82 = *(v0 + 888);
    v84 = *(v0 + 872);
    v103 = *(v0 + 848);
    v104 = *(v0 + 864);
    v100 = *(v0 + 840);
    v101 = *(v0 + 832);
    v102 = *(v0 + 856);
    v97 = *(v0 + 824);
    v98 = *(v0 + 816);
    v99 = *(v0 + 808);
    v96 = *(v0 + 792);
    v94 = *(v0 + 800);
    v95 = *(v0 + 776);
    v92 = *(v0 + 784);
    v93 = *(v0 + 768);
    v4 = *(v0 + 752);
    v78 = *(v0 + 1129);
    v5 = swift_allocObject();
    *(v0 + 1080) = v5;
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v0 + 1088) = v6;
    v6[2] = v1;
    v6[3] = v2;
    v6[4] = v4;
    v7 = v1;
    swift_unknownObjectRetain();
    sub_2C4BE8();
    sub_2C5598();
    sub_2C5588();
    v8 = sub_2C0778();
    (*(*(v8 - 8) + 56))(v80, 1, 1, v8);
    v105 = swift_task_alloc();
    *(v105 + 16) = v78 & 1;
    *(v105 + 24) = &unk_2FBDC0;
    *(v105 + 32) = v5;
    *(v105 + 40) = &unk_2FBDD8;
    *(v105 + 48) = v6;
    v75 = sub_6620C(&qword_3C9DE8);
    v74 = objc_allocWithZone(v75);
    (*(v3 + 104))(v82, enum case for NavigationBarTitleStyle.inline(_:), v84);
    v9 = v7;

    sub_2C0808();
    *v86 = 1;
    sub_77D40(v80, v106);
    sub_78BA4(v86, v107);
    v10 = objc_allocWithZone(type metadata accessor for RootHostingController(0));
    *&v10[qword_3BCB60 + 8] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v11 = &v10[qword_3BCC58];
    *v11 = 0;
    v11[8] = 1;
    v10[qword_3BCB80] = 0;
    *&v10[qword_3BCC60] = &_swiftEmptySetSingleton;
    v85 = type metadata accessor for HostProxy(0);
    swift_allocObject();
    v12 = v9;

    v13 = sub_C2644();
    v79 = qword_3BCB68;
    *&v10[qword_3BCB68] = v13;
    sub_2C09A8();
    swift_allocObject();
    v14 = sub_2C0998();
    v77 = qword_3BCC48;
    *&v10[qword_3BCC48] = v14;
    v83 = type metadata accessor for NavigationProvider();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v81 = qword_3BCC50;
    *&v10[qword_3BCC50] = v15;
    sub_2BEED8();
    swift_allocObject();
    v16 = sub_2BEEC8();
    v76 = qword_3BCB90;
    *&v10[qword_3BCB90] = v16;
    sub_78BA4(v107, &v10[qword_3E8830]);
    sub_6620C(&qword_3BC330);
    sub_2C4968();
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_2E3BC0;
    sub_77D40(v106, v88);
    sub_2C4958();
    sub_2BF028();
    *(v0 + 672) = v12;
    v89 = v12;
    sub_2C4958();
    sub_2BEC48();
    swift_allocObject();
    *(v0 + 680) = sub_2BEC38();
    sub_2C4958();
    *(v0 + 1128) = sub_2C07D8() & 1;
    sub_2C4958();
    *(v0 + 688) = *&v10[v77];

    sub_2C4958();
    *(v0 + 696) = *&v10[v76];

    sub_2C4958();
    *(v0 + 704) = *&v10[v79];

    sub_2C4958();
    sub_6620C(&unk_3BFED0);
    sub_2C53F8();
    *(v0 + 616) = sub_2C53E8();
    *(v0 + 624) = &protocol witness table for BasicImpressionsTracker;
    sub_2C4958();
    sub_6620C(&qword_3BCE30);
    v17 = *&v10[v81];
    *(v0 + 472) = v83;
    *(v0 + 480) = &protocol witness table for NavigationProvider;
    *(v0 + 448) = v17;

    sub_2C4958();
    type metadata accessor for PageLifecycleHandler();
    v18 = swift_allocObject();
    type metadata accessor for Page.LifecycleInfo();
    v19 = swift_allocObject();
    *(v19 + 16) = &_swiftEmptyDictionarySingleton;
    *(v18 + 16) = v19;
    *(v0 + 712) = v18;
    sub_2C4958();
    sub_6620C(&qword_3BCE38);
    v20 = *&v10[v79];
    *(v0 + 512) = v85;
    *(v0 + 520) = sub_2A6DD4(&qword_3BCE40, type metadata accessor for HostProxy);
    *(v0 + 488) = v20;

    sub_2C4958();
    sub_6620C(&qword_3BCE48);
    v21 = *&v10[v79];
    *(v0 + 552) = v85;
    *(v0 + 560) = sub_2A6DD4(&unk_3BCE50, type metadata accessor for HostProxy);
    *(v0 + 528) = v21;

    sub_2C4958();
    sub_78BA4(v107, v90);
    sub_2C4958();
    *(v0 + 720) = v87;
    sub_6620C(&unk_3BD220);
    sub_72B74(&qword_3BCE60, &unk_3BD220);
    v22 = sub_2C4DF8();

    v23 = swift_task_alloc();
    v23[2] = sub_2A69DC;
    v23[3] = v105;
    v23[4] = v22;

    sub_2C3738();
    type metadata accessor for PriceTrackingOptInView();
    sub_2A6DD4(&qword_3C9DF0, type metadata accessor for PriceTrackingOptInView);
    sub_2C2518();

    sub_72B74(&qword_3C9DF8, &qword_3C9D58);
    sub_2C4028();
    (*(v95 + 8))(v92, v93);
    *(v94 + *(v96 + 36)) = sub_2C3768();
    *(swift_task_alloc() + 16) = v91;
    sub_6620C(&qword_3C9E00);
    sub_2A6A24();
    v24 = sub_718D4(&qword_3C9E10);
    v25 = sub_72B74(&qword_3C9E18, &qword_3C9E10);
    *(v0 + 632) = v24;
    *(v0 + 640) = v25;
    swift_getOpaqueTypeConformance2();
    sub_2C40D8();

    sub_2A6B20(v94);
    v72 = sub_2C46A8();
    v73 = v26;
    LOBYTE(v71) = 1;
    LOBYTE(v70) = 1;
    sub_2C2AD8();
    (*(v98 + 32))(v100, v97, v99);
    v27 = (v100 + *(v101 + 36));
    v29 = *(v0 + 160);
    v28 = *(v0 + 176);
    v30 = *(v0 + 144);
    v27[3] = *(v0 + 128);
    v27[4] = v30;
    v27[5] = v29;
    v27[6] = v28;
    v32 = *(v0 + 96);
    v31 = *(v0 + 112);
    *v27 = *(v0 + 80);
    v27[1] = v32;
    v27[2] = v31;
    sub_69130(v100, v102, &qword_3C9D70);
    v33 = (v102 + *(v103 + 36));
    *v33 = 0xD000000000000012;
    v33[1] = 0x8000000000308460;
    v33[2] = v22;
    sub_69130(v102, v104, &qword_3C9D78);
    *(v0 + 256) = v22;
    *(v0 + 288) = v103;
    *(v0 + 296) = sub_2A6B88();
    v34 = sub_720C8((v0 + 264));
    sub_69130(v104, v34, &qword_3C9D78);
    *(v0 + 304) = 0;
    *(v0 + 312) = 0;
    v35 = *(v0 + 272);
    *(v0 + 192) = *(v0 + 256);
    *(v0 + 208) = v35;
    v36 = *(v0 + 304);
    *(v0 + 224) = *(v0 + 288);
    *(v0 + 240) = v36;
    sub_77E04(v0 + 192, v0 + 320);

    v37 = sub_2C3398();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    sub_731AC();
    sub_73578();

    sub_E060C(v107);
    sub_69198(v106, &qword_3BCE28);
    sub_77C1C(v0 + 192);
    v38 = v37;
    sub_2C36E8();
    sub_2C3378();

    if (_UISolariumEnabled())
    {
      v39 = [v38 view];
      if (!v39)
      {
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v39, v40, v41, v42, v43, v44, v45, v46);
      }

      v47 = v39;
      [v39 setBackgroundColor:0];
    }

    *&v74[qword_3C65B8] = v38;
    *(v0 + 648) = v74;
    *(v0 + 656) = v75;
    v48 = v38;
    v49 = objc_msgSendSuper2((v0 + 648), "initWithRootViewController:", v48);
    *(v0 + 1096) = v49;
    v50 = [v49 sheetPresentationController];
    if (v50)
    {
      v51 = v50;
      if ((_UISolariumEnabled() & 1) == 0)
      {
        sub_2C0B58();
        sub_2C5F18();
      }

      sub_6620C(&qword_3BFDD8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_2E9480;
      sub_66278(0, qword_3C0088);
      swift_allocObject();
      swift_unknownObjectWeakInit();

      v53 = sub_2C5F28();

      *(v52 + 32) = v53;
      isa = sub_2C5B18().super.isa;

      [v51 setDetents:isa];
    }

    v61 = *(v0 + 1032);
    v62 = *(v0 + 984);
    v63 = *(v0 + 976);
    v64 = *(v0 + 968);
    v65 = *(v0 + 952);
    sub_E060C(*(v0 + 920));
    sub_69198(v65, &qword_3BCE28);

    (*(v63 + 8))(v62, v64);
    v66 = sub_2C5C08();
    *(v0 + 1104) = v66;
    v67 = swift_task_alloc();
    *(v0 + 1112) = v67;
    *(v67 + 16) = v61;
    *(v67 + 24) = v49;
    v39 = swift_task_alloc();
    *(v0 + 1120) = v39;
    *v39 = v0;
    v39[1] = sub_2A48DC;
    v41 = &protocol witness table for MainActor;
    v44 = sub_2A6D80;
    v42 = 0xD000000000000044;
    v43 = 0x8000000000308480;
    v46 = &type metadata for () + 8;
    v40 = v66;
    v45 = v67;

    return withCheckedContinuation<A>(isolation:function:_:)(v39, v40, v41, v42, v43, v44, v45, v46);
  }

  if (qword_3BB810 != -1)
  {
    swift_once();
  }

  v55 = sub_2C00B8();
  sub_57AD8(v55, qword_3E8880);
  v56 = sub_2C0098();
  v57 = sub_2C5DC8();
  v58 = os_log_type_enabled(v56, v57);
  v59 = *(v0 + 1032);
  if (v58)
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_0, v56, v57, "Missing tracker", v60, 2u);

    swift_unknownObjectRelease();
    v56 = v59;
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_2A48DC()
{
  v1 = *v0;

  v2 = *(v1 + 1016);
  v3 = *(v1 + 1008);

  return _swift_task_switch(sub_2A4A3C, v3, v2);
}

uint64_t sub_2A4A3C()
{
  v1 = *(v0 + 1024);
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *(v0 + 1096));
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_2A4B80;
  v3 = swift_continuation_init();
  *(v0 + 440) = sub_6620C(&qword_3C9E30);
  *(v0 + 384) = _NSConcreteStackBlock;
  *(v0 + 392) = 1107296256;
  *(v0 + 400) = sub_2A521C;
  *(v0 + 408) = &unk_3955E0;
  *(v0 + 416) = v3;
  [v1 addToWTR:ObjCClassFromMetadata didShowPriceTrackingOptInWithCompletion:v0 + 384];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_2A4B80()
{
  v1 = *(*v0 + 1016);
  v2 = *(*v0 + 1008);

  return _swift_task_switch(sub_2A4C88, v2, v1);
}

uint64_t sub_2A4C88()
{
  v1 = v0[137];
  v2 = v0[131];
  v3 = v0[129];

  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_2A4E2C()
{
  v18 = v0;

  if (qword_3BB810 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3E8880);

  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1048);
  v6 = *(v0 + 1040);
  if (v4)
  {
    v16 = *(v0 + 1032);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136315394;
    *(v0 + 664) = v6;
    sub_2C4E28();
    sub_2A6DD4(&qword_3C9D80, &type metadata accessor for BaseObjectGraph);
    v10 = sub_2C6568();
    v12 = sub_5CCF4(v10, v11, &v17);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&dword_0, v2, v3, "Failed to load dependencies in object graph: %s, error: %@", v7, 0x16u);
    sub_69198(v8, &qword_3BFEE0);

    sub_68CD0(v9);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2A51C0(uint64_t a1, uint64_t a2)
{
  v3 = *sub_72084((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_2A521C(uint64_t a1)
{
  v1 = *sub_72084((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_2A5250(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_2C5C18();
  v1[7] = sub_2C5C08();
  v3 = sub_2C5BB8();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_2A52EC, v3, v2);
}

uint64_t sub_2A52EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong presentedViewController];
    if (v3)
    {

      v4 = sub_2C5C08();
      v0[11] = v4;
      v5 = swift_task_alloc();
      v0[12] = v5;
      *(v5 + 16) = v2;
      v6 = swift_task_alloc();
      v0[13] = v6;
      *v6 = v0;
      v6[1] = sub_2A552C;

      return withCheckedContinuation<A>(isolation:function:_:)(v6, v4, &protocol witness table for MainActor, 0xD000000000000044, 0x8000000000308480, sub_2A6E1C, v5, &type metadata for () + 8);
    }
  }

  if (qword_3BB810 != -1)
  {
    swift_once();
  }

  v7 = sub_2C00B8();
  sub_57AD8(v7, qword_3E8880);
  v8 = sub_2C0098();
  v9 = sub_2C5DC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Unable to dismiss opt-in sheet because presenter or presented VC is nil", v10, 2u);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_2A552C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_2A568C, v3, v2);
}

uint64_t sub_2A568C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2A56F8(uint64_t a1, void *a2)
{
  v4 = sub_6620C(&qword_3C8868);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_2A6E50;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_750DC;
  aBlock[3] = &unk_3956D0;
  v11 = _Block_copy(aBlock);

  [a2 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);
}

uint64_t sub_2A58AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = sub_2BF0F8();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = sub_2BEDA8();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v6 = sub_2BEF38();
  v3[27] = v6;
  v3[28] = *(v6 - 8);
  v3[29] = swift_task_alloc();
  v7 = sub_2BEDF8();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v8 = sub_2BE918();
  v3[33] = v8;
  v3[34] = *(v8 - 8);
  v3[35] = swift_task_alloc();
  v9 = sub_2BEDC8();
  v3[36] = v9;
  v3[37] = *(v9 - 8);
  v3[38] = swift_task_alloc();
  sub_2C5C18();
  v3[39] = sub_2C5C08();
  v11 = sub_2C5BB8();
  v3[40] = v11;
  v3[41] = v10;

  return _swift_task_switch(sub_2A5B70, v11, v10);
}

uint64_t sub_2A5B70()
{
  v1 = v0;
  v25 = v0 + 2;
  v2 = v0[38];
  v11 = v0[36];
  v12 = v0[37];
  v16 = v0[32];
  v17 = v0[30];
  v13 = v0[28];
  v14 = v0[29];
  v15 = v0[27];
  v22 = v0[26];
  v23 = v0[24];
  v24 = v0[25];
  v18 = v0[31];
  v19 = v0[22];
  v20 = v0[23];
  v21 = v0[21];
  v26 = v0[19];
  (*(v1[34] + 104))(v0[35], enum case for UserAction.optIn(_:), v1[33]);
  sub_2BEDB8();
  sub_6620C(&unk_3C43E0);
  v29 = sub_2BE798();
  v3 = *(v29 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2E3F30;
  v28 = enum case for DataEventTrait.onlyOnce(_:);
  v27 = *(v3 + 104);
  v27(v5 + v4);
  sub_2A6DD4(&qword_3C9E48, &type metadata accessor for NotificationOptInActionData);
  sub_2A6DD4(&qword_3C9E50, &type metadata accessor for NotificationOptInActionData);
  sub_2BEFE8();

  (*(v12 + 8))(v2, v11);
  (*(v13 + 104))(v14, enum case for Location.unknown(_:), v15);
  sub_2BEDE8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2E3F30;
  (v27)(v6 + v4, v28, v29);
  sub_2A6DD4(&qword_3C9E58, &type metadata accessor for NotificationOptInLocationData);
  sub_2A6DD4(&qword_3C9E60, &type metadata accessor for NotificationOptInLocationData);
  sub_2BEFE8();

  (*(v18 + 8))(v16, v17);
  (*(v19 + 104))(v20, enum case for ModelType.priceDrop(_:), v21);
  sub_2BED98();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2E3F30;
  (v27)(v7 + v4, v28, v29);
  sub_2A6DD4(&qword_3C9E68, &type metadata accessor for NotificationOptInTypeData);
  sub_2A6DD4(&qword_3C9E70, &type metadata accessor for NotificationOptInTypeData);
  sub_2BEFE8();

  (*(v24 + 8))(v22, v23);
  sub_2BEDD8();
  sub_2A6DD4(&qword_3C9E78, &type metadata accessor for NotificationOptInActionEvent);
  sub_2BF018();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1[2] = v1;
  v1[3] = sub_2A615C;
  v9 = swift_continuation_init();
  v1[17] = sub_6620C(&qword_3C9E30);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_2A521C;
  v1[13] = &unk_395680;
  v1[14] = v9;
  [v26 addToWTR:ObjCClassFromMetadata didAcceptPriceTrackingOptInWithCompletion:?];

  return _swift_continuation_await(v25);
}

uint64_t sub_2A615C()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);

  return _swift_task_switch(sub_2A6264, v2, v1);
}

uint64_t sub_2A6264()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2A6318@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  KeyPath = swift_getKeyPath();
  *(a6 + *(type metadata accessor for PriceTrackingOptInView() + 28)) = KeyPath;
  sub_6620C(&qword_3BD530);
  swift_storeEnumTagMultiPayload();
  *a6 = a1 & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
}

void sub_2A63D4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3C8868);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_2A6DAC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_750DC;
  aBlock[3] = &unk_395658;
  v13 = _Block_copy(aBlock);

  [a2 presentViewController:a3 animated:1 completion:v13];
  _Block_release(v13);
}

uint64_t sub_2A65C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_88BE0;

  return sub_2A1154(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2A66C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_2A6724(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_7100C;

  return sub_2A1154(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2A682C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2A6864()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_88BE0;

  return sub_2A5250(v0);
}

uint64_t sub_2A68F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2A6934()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_88BE0;

  return sub_2A58AC(v2, v3, v4);
}

unint64_t sub_2A6A24()
{
  result = qword_3C9E08;
  if (!qword_3C9E08)
  {
    sub_718D4(&qword_3C9D60);
    sub_718D4(&qword_3C9D58);
    sub_72B74(&qword_3C9DF8, &qword_3C9D58);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9E08);
  }

  return result;
}

uint64_t sub_2A6B20(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C9D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2A6B88()
{
  result = qword_3C9E20;
  if (!qword_3C9E20)
  {
    sub_718D4(&qword_3C9D78);
    sub_2A6C14();
    sub_B3728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9E20);
  }

  return result;
}

unint64_t sub_2A6C14()
{
  result = qword_3C9E28;
  if (!qword_3C9E28)
  {
    sub_718D4(&qword_3C9D70);
    sub_718D4(&qword_3C9D60);
    sub_718D4(&qword_3C9E00);
    sub_2A6A24();
    sub_718D4(&qword_3C9E10);
    sub_72B74(&qword_3C9E18, &qword_3C9E10);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9E28);
  }

  return result;
}

uint64_t sub_2A6DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2A6DD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EnvironmentValues.figaroPageConfiguration.getter()
{
  sub_2A6EA4();

  return sub_2C3108();
}

unint64_t sub_2A6EA4()
{
  result = qword_3C9E88;
  if (!qword_3C9E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9E88);
  }

  return result;
}

uint64_t sub_2A6EF8@<X0>(_BYTE *a1@<X8>)
{
  sub_2A6EA4();
  result = sub_2C3108();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.figaroPageConfiguration.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_2A6EA4();
  sub_2C3108();
  return sub_2A703C;
}

uint64_t sub_2A7074@<X0>(_BYTE *a1@<X8>)
{
  sub_2A6EA4();
  result = sub_2C3108();
  *a1 = v3;
  return result;
}

uint64_t sub_2A7144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BF898);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SegmentedControlItem();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2A7288(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BF898);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SegmentedControlItem();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2A73D8()
{
  sub_A62E4();
  if (v0 <= 0x3F)
  {
    sub_A6360();
    if (v1 <= 0x3F)
    {
      sub_2A79E4(319, &qword_3C0940, &qword_3BDF58, &unk_2E5B70, &type metadata accessor for DiscardOnError);
      if (v2 <= 0x3F)
      {
        sub_2A7A48(319, &qword_3C9EF8, type metadata accessor for SegmentedControlItem, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          type metadata accessor for SegmentedControlItem();
          if (v4 <= 0x3F)
          {
            sub_2A7570(319, &qword_3C9F00, &type metadata accessor for Array);
            if (v5 <= 0x3F)
            {
              sub_2A7570(319, &unk_3C9F08, &type metadata accessor for Optional);
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

void sub_2A7570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for MenuItem);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2A75D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_6620C(&qword_3BC7C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&qword_3BC7B8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2A7720(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = sub_6620C(&qword_3BC7C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&qword_3BC7B8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2A7878()
{
  sub_2A79E4(319, &qword_3C1700, &qword_3BDB00, &unk_2E6E10, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_2A7A48(319, &qword_3BC850, &type metadata accessor for ColorConstants, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_2A79E4(319, &qword_3BC838, &qword_3BC840, &unk_2ED0A0, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_2A7A48(319, &qword_3BC848, &type metadata accessor for OpaqueMetricsFieldsContext, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2A79E4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_718D4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2A7A48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2A7B2C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_2A7B74@<Q0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3CA000);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  *v7 = sub_2C3328();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_6620C(&qword_3CA008);
  sub_2A7CE0(a1, v2, &v7[*(v8 + 44)]);
  sub_2C46A8();
  sub_2C2AD8();
  sub_69130(v7, a2, &qword_3CA000);
  v9 = a2 + *(sub_6620C(&qword_3CA010) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_2A7CE0@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a3;
  v5 = sub_2C1778();
  __chkstk_darwin(v5 - 8);
  v79 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2C30F8();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_6620C(&qword_3CA018);
  v86 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v69 - v8;
  v84 = type metadata accessor for SegmentedControlItem();
  __chkstk_darwin(v84);
  v76 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6620C(&qword_3CA020);
  v83 = *(v10 - 8);
  __chkstk_darwin(v10);
  v75 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v74 = &v69 - v13;
  __chkstk_darwin(v14);
  v81 = &v69 - v15;
  v16 = sub_6620C(&qword_3CA028);
  __chkstk_darwin(v16 - 8);
  v85 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v69 - v19;
  v21 = sub_6620C(&qword_3CA030);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v82 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v69 - v25;
  *v26 = sub_2C3158();
  *(v26 + 1) = 0;
  v27 = 1;
  v26[16] = 1;
  v28 = &v26[*(sub_6620C(&qword_3CA038) + 44)];
  v77 = a2;
  sub_2A8508(a1, a2, v28);
  LOBYTE(a2) = sub_2C3768();
  sub_2C24D8();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v26[*(sub_6620C(&qword_3CA040) + 36)];
  *v37 = a2;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  LOBYTE(a2) = sub_2C3778();
  sub_2C24D8();
  v38 = &v26[*(v22 + 44)];
  *v38 = a2;
  *(v38 + 1) = v39;
  *(v38 + 2) = v40;
  *(v38 + 3) = v41;
  *(v38 + 4) = v42;
  v38[40] = 0;
  v43 = type metadata accessor for ReviewsHeaderComponentModel(0);
  v88 = *&a1[*(v43 + 32)];
  sub_6620C(&qword_3CA048);
  sub_72B74(&qword_3CA050, &qword_3CA048);
  v44 = v80;
  if (sub_2C5D28())
  {
    v70 = v20;
    sub_2AC524(&a1[*(v43 + 36)], v76, type metadata accessor for SegmentedControlItem);
    sub_2A7B2C(&qword_3CA060, type metadata accessor for SegmentedControlItem);

    v45 = v74;
    sub_2C1C38();
    v46 = v83;
    (*(v83 + 32))(v81, v45, v10);
    v47 = *(v46 + 16);
    v76 = v10;
    v47();
    v49 = *v77;
    v48 = *(v77 + 1);
    if (v77[16] == 1)
    {
    }

    else
    {

      sub_2C5DD8();
      v50 = sub_2C3718();
      sub_2C0058();

      v51 = v71;
      sub_2C30E8();
      swift_getAtKeyPath();
      sub_113C80(v49, v48, 0);
      (*(v72 + 8))(v51, v73);
    }

    v52 = v70;
    sub_2AA570(v79);
    v53 = v78;
    sub_2C1138();
    v54 = sub_2C3778();
    sub_2C24D8();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    (*(v83 + 8))(v81, v76);
    v63 = v53 + *(v44 + 36);
    *v63 = v54;
    *(v63 + 8) = v56;
    *(v63 + 16) = v58;
    *(v63 + 24) = v60;
    *(v63 + 32) = v62;
    *(v63 + 40) = 0;
    sub_69130(v53, v52, &qword_3CA018);
    v27 = 0;
    v20 = v52;
  }

  (*(v86 + 56))(v20, v27, 1, v44);
  v64 = v82;
  sub_6932C(v26, v82, &qword_3CA030);
  v65 = v85;
  sub_6932C(v20, v85, &qword_3CA028);
  v66 = v87;
  sub_6932C(v64, v87, &qword_3CA030);
  v67 = sub_6620C(&qword_3CA058);
  sub_6932C(v65, v66 + *(v67 + 48), &qword_3CA028);
  sub_69198(v20, &qword_3CA028);
  sub_69198(v26, &qword_3CA030);
  sub_69198(v65, &qword_3CA028);
  return sub_69198(v64, &qword_3CA030);
}

uint64_t sub_2A8508@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v168 = a2;
  v158 = a3;
  v139 = sub_2C33E8();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v137 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_2C2A58();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_2C2948();
  v125 = *(v128 - 8);
  __chkstk_darwin(v128);
  v123 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_6620C(&qword_3CA068);
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = &v121 - v7;
  v129 = sub_6620C(&qword_3CA070);
  v127 = *(v129 - 8);
  __chkstk_darwin(v129);
  v126 = &v121 - v8;
  v133 = sub_6620C(&qword_3CA078);
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v121 - v9;
  v155 = sub_6620C(&qword_3CA080);
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v130 = &v121 - v10;
  v11 = sub_6620C(&qword_3CA088);
  __chkstk_darwin(v11 - 8);
  v157 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v156 = &v121 - v14;
  v151 = sub_2C3308();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v149 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_6620C(&qword_3BC938);
  __chkstk_darwin(v147);
  v146 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v144 = &v121 - v18;
  v19 = sub_2C29C8();
  v165 = *(v19 - 8);
  v166 = v19;
  __chkstk_darwin(v19);
  v164 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v160 = &v121 - v22;
  v148 = sub_6620C(&qword_3BC940);
  __chkstk_darwin(v148);
  v145 = &v121 - v23;
  v24 = sub_2C0D48();
  v162 = *(v24 - 8);
  v163 = v24;
  __chkstk_darwin(v24);
  v161 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_6620C(&qword_3BCB28);
  __chkstk_darwin(v26 - 8);
  v28 = &v121 - v27;
  v29 = sub_2C3918();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_6620C(&qword_3BCA00);
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v121 - v33;
  v34 = sub_6620C(&qword_3BCA08);
  __chkstk_darwin(v34 - 8);
  v152 = &v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v167 = &v121 - v37;
  v140 = type metadata accessor for ReviewsHeaderComponentModel(0);
  v38 = *(v140 + 28);
  v153 = a1;
  v39 = &a1[v38];
  v40 = *(v39 + 1);
  v169 = *v39;
  v170 = v40;
  sub_7212C();

  v41 = sub_2C3A48();
  v43 = v42;
  v45 = v44;
  v159 = v46;
  (*(v30 + 104))(v32, enum case for Font.TextStyle.title2(_:), v29);
  v47 = enum case for Font.Design.serif (_:);
  v48 = sub_2C3848();
  v49 = *(v48 - 8);
  (*(v49 + 104))(v28, v47, v48);
  (*(v49 + 56))(v28, 0, 1, v48);
  sub_2C38A8();
  sub_69198(v28, &qword_3BCB28);
  (*(v30 + 8))(v32, v29);
  v50 = sub_2C39E8();
  v52 = v51;
  LOBYTE(v47) = v53;

  sub_72180(v41, v43, v45 & 1);

  v54 = sub_2C39D8();
  v56 = v55;
  v58 = v57;
  v59 = v50;
  v60 = v164;
  sub_72180(v59, v52, v47 & 1);

  type metadata accessor for ReviewsHeaderComponent(0);
  v61 = v161;
  sub_29A87C(v161);
  v62 = sub_2C0CB8();
  (*(v162 + 8))(v61, v163);
  v169 = v62;
  v63 = sub_2C39A8();
  v65 = v64;
  LOBYTE(v61) = v66;
  v68 = v67;
  sub_72180(v54, v56, v58 & 1);

  v162 = v65;
  v163 = v63;
  v169 = v63;
  v170 = v65;
  v69 = v61 & 1;
  LOBYTE(v171) = v61 & 1;
  v172 = v68;
  v70 = v166;
  v71 = v165;
  v72 = *(v165 + 104);
  v73 = v160;
  v72(v160, enum case for DynamicTypeSize.xSmall(_:), v166);
  v72(v60, enum case for DynamicTypeSize.accessibility3(_:), v70);
  sub_2A7B2C(&qword_3BC950, &type metadata accessor for DynamicTypeSize);
  result = sub_2C5868();
  if (result)
  {
    LODWORD(v161) = v69;
    v75 = *(v71 + 32);
    v76 = v144;
    v75(v144, v73, v70);
    v77 = v147;
    v75((v76 + *(v147 + 48)), v60, v70);
    v78 = v146;
    sub_6932C(v76, v146, &qword_3BC938);
    v79 = *(v77 + 48);
    v80 = v145;
    v75(v145, v78, v70);
    v164 = v68;
    v81 = *(v71 + 8);
    v81(v78 + v79, v70);
    sub_69130(v76, v78, &qword_3BC938);
    v82 = *(v77 + 48);
    v83 = v148;
    v75((v80 + *(v148 + 36)), (v78 + v82), v70);
    v81(v78, v70);
    v84 = sub_72B74(&qword_3BC960, &qword_3BC940);
    v85 = v141;
    sub_2C3F48();
    sub_69198(v80, &qword_3BC940);
    sub_72180(v163, v162, v161);

    v86 = v149;
    sub_2C32B8();
    v169 = &type metadata for Text;
    v170 = v83;
    v171 = &protocol witness table for Text;
    v172 = v84;
    swift_getOpaqueTypeConformance2();
    v87 = v167;
    v88 = v143;
    sub_2C3FE8();
    (*(v150 + 8))(v86, v151);
    (*(v142 + 8))(v85, v88);
    v89 = v153;
    v169 = *&v153[*(v140 + 44)];
    sub_6620C(&qword_3CA090);
    sub_72B74(&qword_3CA098, &qword_3CA090);
    v90 = sub_2C5D28();
    v91 = 1;
    v93 = v155;
    v92 = v156;
    if (v90)
    {
      __chkstk_darwin(v90);
      *(&v121 - 2) = v168;
      *(&v121 - 1) = v89;
      __chkstk_darwin(v94);
      *(&v121 - 6) = v89;
      *(&v121 - 5) = v95;
      *(&v121 - 2) = xmmword_2FBEE0;
      *(&v121 - 1) = xmmword_2FBEE0;
      sub_6620C(&qword_3CA0A8);
      sub_6620C(&qword_3CA0B0);
      sub_2AC1A0();
      sub_2AC464();
      v96 = v121;
      sub_2C3958();
      v97 = v123;
      sub_2C2938();
      v98 = sub_72B74(&qword_3CA108, &qword_3CA068);
      v99 = sub_2A7B2C(&qword_3CA110, &type metadata accessor for ButtonMenuStyle);
      v100 = v126;
      v101 = v124;
      v102 = v128;
      sub_2C4168();
      (*(v125 + 8))(v97, v102);
      (*(v122 + 8))(v96, v101);
      v103 = v134;
      sub_2C2A48();
      v169 = v101;
      v170 = v102;
      v171 = v98;
      v172 = v99;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v105 = sub_2A7B2C(&qword_3BE108, &type metadata accessor for PlainButtonStyle);
      v106 = v131;
      v107 = v129;
      v108 = v136;
      sub_2C3E38();
      (*(v135 + 8))(v103, v108);
      (*(v127 + 8))(v100, v107);
      v109 = v137;
      sub_2C2B18();
      v169 = v107;
      v170 = v108;
      v171 = OpaqueTypeConformance2;
      v172 = v105;
      swift_getOpaqueTypeConformance2();
      sub_2A7B2C(&qword_3BF960, &type metadata accessor for AutomaticHoverEffect);
      v110 = v130;
      v111 = v133;
      v112 = v139;
      sub_2C3E88();
      (*(v138 + 8))(v109, v112);
      (*(v132 + 8))(v106, v111);
      v113 = sub_2C3758();
      v114 = &v110[*(v93 + 36)];
      *v114 = v113;
      *(v114 + 8) = xmmword_2FBEF0;
      *(v114 + 24) = xmmword_2FBEF0;
      v114[40] = 0;
      v115 = v110;
      v87 = v167;
      sub_69130(v115, v92, &qword_3CA080);
      v91 = 0;
    }

    (*(v154 + 56))(v92, v91, 1, v93);
    v116 = v152;
    sub_6932C(v87, v152, &qword_3BCA08);
    v117 = v157;
    sub_6932C(v92, v157, &qword_3CA088);
    v118 = v158;
    sub_6932C(v116, v158, &qword_3BCA08);
    v119 = sub_6620C(&qword_3CA0A0);
    v120 = v118 + *(v119 + 48);
    *v120 = 0;
    *(v120 + 8) = 1;
    sub_6932C(v117, v118 + *(v119 + 64), &qword_3CA088);
    sub_69198(v92, &qword_3CA088);
    sub_69198(v87, &qword_3BCA08);
    sub_69198(v117, &qword_3CA088);
    return sub_69198(v116, &qword_3BCA08);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2A9904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReviewsHeaderComponent(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReviewsHeaderComponentModel(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v16[1] = *(a2 + *(v11 + 52));
  sub_2AC524(a2, v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReviewsHeaderComponentModel);
  sub_2AC524(a1, v7, type metadata accessor for ReviewsHeaderComponent);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v10 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_2AC994(v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12, type metadata accessor for ReviewsHeaderComponentModel);
  sub_2AC994(v7, v14 + v13, type metadata accessor for ReviewsHeaderComponent);

  sub_6620C(&qword_3CA090);
  sub_6620C(&qword_3CA100);
  sub_72B74(&qword_3CA130, &qword_3CA090);
  sub_72B74(&qword_3CA0F8, &qword_3CA100);
  sub_2ACAE0();
  return sub_2C4568();
}

uint64_t sub_2A9BE0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v65 = a2;
  v60 = a3;
  v59 = sub_6620C(&qword_3BC938);
  __chkstk_darwin(v59);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v58 = &v54 - v14;
  v15 = sub_2C29C8();
  v64 = *(v15 - 8);
  __chkstk_darwin(v15);
  v62 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  v57 = sub_6620C(&qword_3BC940);
  __chkstk_darwin(v57);
  v56 = &v54 - v20;
  v63 = sub_2C0D48();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_6620C(&qword_3BCB28);
  __chkstk_darwin(v23 - 8);
  v25 = &v54 - v24;
  v26 = sub_2C3918();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_6620C(&qword_3CA0C0);
  __chkstk_darwin(v30);
  v32 = &v54 - v31;
  *v32 = sub_2C3178();
  *(v32 + 1) = 0x4000000000000000;
  v32[16] = 0;
  v33 = sub_6620C(&qword_3CA118);
  sub_2AA314(a1, &v32[*(v33 + 44)]);
  (*(v27 + 104))(v29, enum case for Font.TextStyle.subheadline(_:), v26);
  v34 = sub_2C3848();
  (*(*(v34 - 8) + 56))(v25, 1, 1, v34);
  sub_2C3868();
  v35 = sub_2C38A8();
  sub_69198(v25, &qword_3BCB28);
  (*(v27 + 8))(v29, v26);
  v36 = v62;
  KeyPath = swift_getKeyPath();
  v38 = &v32[*(sub_6620C(&qword_3CA0D8) + 36)];
  *v38 = KeyPath;
  v38[1] = v35;
  type metadata accessor for ReviewsHeaderComponent(0);
  sub_29A87C(v22);
  v39 = sub_2C0CB8();
  (*(v61 + 8))(v22, v63);
  v63 = v30;
  v40 = *(v30 + 36);
  v65 = v32;
  *&v32[v40] = v39;
  v41 = v64;
  v42 = *(v64 + 104);
  v42(v19, enum case for DynamicTypeSize.xSmall(_:), v15);
  v42(v36, enum case for DynamicTypeSize.accessibility3(_:), v15);
  sub_2A7B2C(&qword_3BC950, &type metadata accessor for DynamicTypeSize);
  result = sub_2C5868();
  if (result)
  {
    v44 = *(v41 + 32);
    v45 = v58;
    v44(v58, v19, v15);
    v46 = v55;
    v47 = v59;
    v44((v45 + *(v59 + 48)), v36, v15);
    sub_6932C(v45, v46, &qword_3BC938);
    v48 = *(v47 + 48);
    v49 = v56;
    v44(v56, v46, v15);
    v50 = *(v41 + 8);
    v50(v46 + v48, v15);
    sub_69130(v45, v46, &qword_3BC938);
    v44((v49 + *(v57 + 36)), (v46 + *(v47 + 48)), v15);
    v50(v46, v15);
    sub_2AC2C8();
    sub_72B74(&qword_3BC960, &qword_3BC940);
    v51 = v60;
    v52 = v65;
    sub_2C3F48();
    sub_69198(v49, &qword_3BC940);
    sub_69198(v52, &qword_3CA0C0);
    LOBYTE(v49) = sub_2C3758();
    result = sub_6620C(&qword_3CA0A8);
    v53 = v51 + *(result + 36);
    *v53 = v49;
    *(v53 + 8) = a4;
    *(v53 + 16) = a5;
    *(v53 + 24) = a6;
    *(v53 + 32) = a7;
    *(v53 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2AA314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_6620C(&qword_3CA120);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v26[-v9];
  v11 = (a1 + *(type metadata accessor for ReviewsHeaderComponentModel(0) + 40));
  v12 = v11[1];
  v28 = *v11;
  v29 = v12;
  sub_7212C();

  v13 = sub_2C3A48();
  v15 = v14;
  v27 = v16;
  v18 = v17;
  v19 = sub_2C42B8();
  v20 = (v10 + *(v5 + 44));
  v21 = *(sub_6620C(&qword_3BD7E8) + 28);
  v22 = enum case for Image.Scale.small(_:);
  v23 = sub_2C42D8();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  *v10 = v19;
  sub_6932C(v10, v7, &qword_3CA120);
  *a2 = v13;
  *(a2 + 8) = v15;
  LOBYTE(v19) = v27 & 1;
  *(a2 + 16) = v27 & 1;
  *(a2 + 24) = v18;
  v24 = sub_6620C(&qword_3CA128);
  sub_6932C(v7, a2 + *(v24 + 48), &qword_3CA120);
  sub_BE2CC(v13, v15, v19);

  sub_69198(v10, &qword_3CA120);
  sub_69198(v7, &qword_3CA120);
  sub_72180(v13, v15, v19);
}

uint64_t sub_2AA570@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SegmentedControlItem();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(type metadata accessor for ReviewsHeaderComponentModel(0) + 32));
  v8 = *(v7 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v23 = a1;
    v24 = _swiftEmptyArrayStorage;
    sub_649D4(0, v8, 0);
    v9 = v24;
    v10 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_2AC524(v10, v6, type metadata accessor for SegmentedControlItem);
      v13 = *(v6 + 2);
      v12 = *(v6 + 3);

      sub_2AD59C(v6, type metadata accessor for SegmentedControlItem);
      v24 = v9;
      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        sub_649D4((v14 > 1), v15 + 1, 1);
        v9 = v24;
      }

      v9[2] = v15 + 1;
      v16 = &v9[2 * v15];
      v16[4] = v13;
      v16[5] = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
    a1 = v23;
  }

  v17 = sub_2B62AC(v9);

  v18 = *(v17 + 16);

  v19 = *(v7 + 16);
  v20 = sub_2C1778();
  v21 = &enum case for SegmentedControlStyle.outlined(_:);
  if (v18 != v19)
  {
    v21 = &enum case for SegmentedControlStyle.outlinedRoundedRectangular(_:);
  }

  return (*(*(v20 - 8) + 104))(a1, *v21, v20);
}

uint64_t sub_2AA78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v35 = a4;
  v30 = a2;
  v6 = type metadata accessor for ReviewsHeaderComponent(0);
  v33 = *(v6 - 8);
  v32 = *(v33 + 64);
  __chkstk_darwin(v6 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReviewsHeaderComponentModel(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  v41 = *(a1 + 16);
  v42 = v12;
  sub_2AC524(a2, v11, type metadata accessor for ReviewsHeaderComponentModel);
  sub_20251C(a1, &v36);
  sub_2C5C18();

  v13 = sub_2C5C08();
  v14 = *(v9 + 80);
  v15 = (v14 + 32) & ~v14;
  v29 = v14 | 7;
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = &protocol witness table for MainActor;
  sub_2AC994(v11, v17 + v15, type metadata accessor for ReviewsHeaderComponentModel);
  v18 = v17 + v16;
  v19 = v39;
  *(v18 + 32) = v38;
  *(v18 + 48) = v19;
  *(v18 + 64) = v40;
  v20 = v37;
  *v18 = v36;
  *(v18 + 16) = v20;
  sub_2AC524(v30, v11, type metadata accessor for ReviewsHeaderComponentModel);
  sub_20251C(a1, &v36);
  v21 = v31;
  sub_2AC524(v34, v31, type metadata accessor for ReviewsHeaderComponent);
  v22 = sub_2C5C08();
  v23 = (v16 + 72 + *(v33 + 80)) & ~*(v33 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = &protocol witness table for MainActor;
  sub_2AC994(v11, v24 + v15, type metadata accessor for ReviewsHeaderComponentModel);
  v25 = v24 + v16;
  v26 = v39;
  *(v25 + 32) = v38;
  *(v25 + 48) = v26;
  *(v25 + 64) = v40;
  v27 = v37;
  *v25 = v36;
  *(v25 + 16) = v27;
  sub_2AC994(v21, v24 + v23, type metadata accessor for ReviewsHeaderComponent);
  sub_2C4508();
  sub_7212C();
  return sub_2C4488();
}

uint64_t sub_2AAAF4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, _BYTE *a3@<X8>)
{
  v6 = *(type metadata accessor for ReviewsHeaderComponentModel(0) + 48);
  sub_20251C(a2, v16);
  sub_6932C(a1 + v6, v12, &qword_3CA148);
  sub_6932C(v16, v14, &qword_3CA148);
  if (!v13)
  {
    sub_69198(v16, &qword_3CA148);
    if (!*(&v14[0] + 1))
    {
      result = sub_69198(v12, &qword_3CA148);
      v7 = 1;
      goto LABEL_11;
    }

LABEL_8:
    result = sub_69198(v12, &qword_3CA150);
    v7 = 0;
    goto LABEL_11;
  }

  sub_6932C(v12, v11, &qword_3CA148);
  if (!*(&v14[0] + 1))
  {
    sub_69198(v16, &qword_3CA148);
    sub_202554(v11);
    goto LABEL_8;
  }

  v9[0] = v14[0];
  v9[1] = v14[1];
  v9[2] = v14[2];
  v9[3] = v14[3];
  v10 = v15;
  if (v11[0] == v14[0])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2C65B8();
  }

  sub_69198(v16, &qword_3CA148);
  sub_202554(v9);
  sub_202554(v11);
  result = sub_69198(v12, &qword_3CA148);
LABEL_11:
  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2AACC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a7;
  v9 = sub_2BFF28();
  v37 = *(v9 - 8);
  v38 = v9;
  __chkstk_darwin(v9);
  v36 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2BE828();
  v33 = *(v11 - 8);
  v34 = v11;
  __chkstk_darwin(v11);
  v13 = (v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_6620C(&qword_3CA140);
  __chkstk_darwin(v14 - 8);
  v16 = v31 - v15;
  v17 = sub_2C4BF8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v32 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(type metadata accessor for ReviewsHeaderComponentModel(0) + 48);
  v35 = a6;
  sub_20251C(a6, v49);
  sub_6932C(a5 + v20, &v44, &qword_3CA148);
  sub_6932C(v49, v47, &qword_3CA148);
  if (!*(&v44 + 1))
  {
    sub_69198(v49, &qword_3CA148);
    if (!*(&v47[0] + 1))
    {
      v22 = &qword_3CA148;
      v21 = &v44;
      return sub_69198(v21, v22);
    }

    goto LABEL_8;
  }

  sub_6932C(&v44, &v42, &qword_3CA148);
  if (!*(&v47[0] + 1))
  {
    sub_69198(v49, &qword_3CA148);
    sub_202554(&v42);
LABEL_8:
    sub_69198(&v44, &qword_3CA150);
    goto LABEL_9;
  }

  v40[0] = v47[0];
  v40[1] = v47[1];
  v40[2] = v47[2];
  v40[3] = v47[3];
  v41 = v48;
  if (v42 == v47[0])
  {
    sub_69198(v49, &qword_3CA148);
    sub_202554(v40);
    sub_202554(&v42);
    v21 = &v44;
    v22 = &qword_3CA148;
    return sub_69198(v21, v22);
  }

  v25 = sub_2C65B8();
  sub_69198(v49, &qword_3CA148);
  sub_202554(v40);
  sub_202554(&v42);
  result = sub_69198(&v44, &qword_3CA148);
  if ((v25 & 1) == 0)
  {
LABEL_9:
    v23 = type metadata accessor for ReviewsHeaderComponent(0);
    sub_29A8A4(v49);
    if (!v50)
    {
      v22 = &qword_3BC840;
      v21 = v49;
      return sub_69198(v21, v22);
    }

    v31[2] = v51;
    v31[3] = v23;
    v31[1] = sub_72084(v49, v50);
    sub_6932C(a5 + v20, &v44, &qword_3CA148);
    if (*(&v44 + 1))
    {
      sub_6932C(&v46, v40, &qword_3C58B0);
      sub_693D0(v40, &v42);
      sub_202554(&v44);
      sub_72084(&v42, v43);
      sub_2C4A28();
      (*(v18 + 56))(v16, 0, 1, v17);
      sub_68CD0(&v42);
      if ((*(v18 + 48))(v16, 1, v17) != 1)
      {
        (*(v18 + 32))(v32, v16, v17);
LABEL_20:
        sub_6620C(&qword_3BC240);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_2E15C0;
        v27 = v35;
        sub_6932C((v35 + 4), &v44, &qword_3C58B0);
        sub_693D0(&v44, v26 + 32);
        v28 = *v27;
        v29 = v27[1];
        *v13 = v28;
        v13[1] = v29;
        (*(v33 + 104))(v13, enum case for AppAnalyticsAction.Type.reportReviewsDialogEvent(_:), v34);
        *(v26 + 96) = sub_2BE858();
        *(v26 + 104) = sub_2A7B2C(&qword_3CA250, &type metadata accessor for AppAnalyticsAction);
        sub_720C8((v26 + 72));

        sub_2BE838();
        v45 = sub_2C4D28();
        v46 = &protocol witness table for CompoundAction;
        sub_720C8(&v44);
        sub_2C4D18();
        v30 = v36;
        sub_29A8B8(v36);
        sub_2BFCD8();
        (*(v37 + 8))(v30, v38);
        sub_68CD0(&v44);
        return sub_68CD0(v49);
      }
    }

    else
    {
      sub_69198(&v44, &qword_3CA148);
      (*(v18 + 56))(v16, 1, 1, v17);
    }

    sub_2C4BE8();
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      sub_69198(v16, &qword_3CA140);
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2AB3D0()
{
  __chkstk_darwin(v0);
  sub_2AC524(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReviewsHeaderComponent);
  sub_2A7B2C(&qword_3C8648, type metadata accessor for ReviewsHeaderComponent);
  return sub_2BFD18();
}

unint64_t sub_2AB4A8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0xD000000000000011;
    if (a1 != 2)
    {
      v6 = 0x6954726564616568;
    }

    if (a1)
    {
      v5 = 0x6575676573;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x726F737365636361;
    v2 = 0x6D657449756E656DLL;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65746E656D676573;
    if (a1 != 4)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2AB5E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for SegmentedControlItem();
  __chkstk_darwin(v3);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BF898);
  __chkstk_darwin(v6);
  v8 = v41 - v7;
  v9 = sub_6620C(&qword_3CA158);
  v44 = *(v9 - 8);
  v45 = v9;
  __chkstk_darwin(v9);
  v11 = v41 - v10;
  v12 = type metadata accessor for ReviewsHeaderComponentModel(0);
  __chkstk_darwin(v12);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 40) = 0u;
  *&v54 = 0;
  v52 = 0u;
  v53 = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 9) = 0;
  v47 = v14 + 40;
  sub_A9708(&v52, (v14 + 40), &unk_3BDC90);
  v49 = v12;
  v15 = *(v12 + 24);
  v16 = sub_2C5018();
  v17 = *(*(v16 - 8) + 56);
  v50 = v15;
  v51 = v14;
  v17(&v14[v15], 1, 1, v16);
  v18 = a1[3];
  v48 = a1;
  sub_72084(a1, v18);
  sub_2AD3BC();
  v19 = v46;
  sub_2C67A8();
  if (v19)
  {
    v22 = v47;
    sub_68CD0(v48);
    v23 = v51;
    sub_69198(v22, &qword_3BE370);
    return sub_69198(v23 + v50, &qword_3BF898);
  }

  else
  {
    v46 = v8;
    v41[1] = v3;
    v42 = v5;
    v20 = v44;
    sub_6620C(&qword_3BE378);
    v57 = 0;
    sub_72B74(&qword_3BE390, &qword_3BE378);
    v21 = v45;
    sub_2C64A8();
    v24 = v53;
    v25 = v51;
    *v51 = v52;
    v25[1] = v24;
    *(v25 + 4) = v54;
    sub_6620C(&qword_3BE370);
    v57 = 1;
    v26 = v21;
    sub_72B74(&qword_3BE398, &qword_3BE370);
    sub_2C64A8();
    sub_A9708(&v52, v47, &qword_3BE370);
    LOBYTE(v52) = 2;
    sub_F2F40();
    v27 = v46;
    sub_2C64A8();
    v28 = v51;
    sub_A9708(v27, v51 + v50, &qword_3BF898);
    LOBYTE(v52) = 3;
    v29 = sub_2C6468();
    v30 = v49;
    v31 = (v28 + v49[7]);
    *v31 = v29;
    v31[1] = v32;
    sub_6620C(&qword_3CA048);
    v57 = 4;
    sub_2AD410();
    sub_2C64A8();
    *(v28 + v30[8]) = v52;
    LOBYTE(v52) = 5;
    sub_2A7B2C(&qword_3CA170, type metadata accessor for SegmentedControlItem);
    v33 = v42;
    sub_2C64A8();
    sub_2AC994(v33, v28 + v30[9], type metadata accessor for SegmentedControlItem);
    LOBYTE(v52) = 6;
    v34 = sub_2C6468();
    v35 = (v28 + v30[10]);
    *v35 = v34;
    v35[1] = v36;
    sub_6620C(&qword_3CA090);
    v57 = 7;
    sub_2AD4C4();
    sub_2C64A8();
    *(v28 + v49[11]) = v52;
    v57 = 8;
    sub_2AD548();
    sub_2C6458();
    (*(v20 + 8))(v11, v26);
    v37 = v28 + v49[12];
    v38 = v55;
    *(v37 + 32) = v54;
    *(v37 + 48) = v38;
    *(v37 + 64) = v56;
    v39 = v53;
    *v37 = v52;
    *(v37 + 16) = v39;
    sub_2AC524(v28, v43, type metadata accessor for ReviewsHeaderComponentModel);
    sub_68CD0(v48);
    return sub_2AD59C(v28, type metadata accessor for ReviewsHeaderComponentModel);
  }
}

uint64_t sub_2ABEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2AD910(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2ABEFC(uint64_t a1)
{
  v2 = sub_2AD3BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2ABF38(uint64_t a1)
{
  v2 = sub_2AD3BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_2ABF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3BF898);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_6932C(v2 + *(a1 + 24), &v9 - v6, &qword_3BF898);
  return sub_69130(v7, a2, &qword_3BDF58);
}

unint64_t sub_2AC1A0()
{
  result = qword_3CA0B8;
  if (!qword_3CA0B8)
  {
    sub_718D4(&qword_3CA0A8);
    sub_718D4(&qword_3CA0C0);
    sub_718D4(&qword_3BC940);
    sub_2AC2C8();
    sub_72B74(&qword_3BC960, &qword_3BC940);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA0B8);
  }

  return result;
}

unint64_t sub_2AC2C8()
{
  result = qword_3CA0C8;
  if (!qword_3CA0C8)
  {
    sub_718D4(&qword_3CA0C0);
    sub_2AC380();
    sub_72B74(&qword_3C6A70, &qword_3C6A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA0C8);
  }

  return result;
}

unint64_t sub_2AC380()
{
  result = qword_3CA0D0;
  if (!qword_3CA0D0)
  {
    sub_718D4(&qword_3CA0D8);
    sub_72B74(&qword_3CA0E0, &qword_3CA0E8);
    sub_72B74(&qword_3BCB10, &qword_3BCB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA0D0);
  }

  return result;
}

unint64_t sub_2AC464()
{
  result = qword_3CA0F0;
  if (!qword_3CA0F0)
  {
    sub_718D4(&qword_3CA0B0);
    sub_72B74(&qword_3CA0F8, &qword_3CA100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA0F0);
  }

  return result;
}

uint64_t sub_2AC524(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2AC58C()
{
  v1 = type metadata accessor for ReviewsHeaderComponentModel(0);
  v29 = *(*(v1 - 1) + 80);
  v2 = (v29 + 16) & ~v29;
  v3 = *(*(v1 - 1) + 64);
  v26 = type metadata accessor for ReviewsHeaderComponent(0);
  v4 = *(*(v26 - 1) + 80);
  v27 = *(*(v26 - 1) + 64);
  v30 = v0;
  v5 = v0 + v2;
  sub_68CD0(v0 + v2);
  if (*(v0 + v2 + 64))
  {
    sub_68CD0(v5 + 40);
  }

  v28 = v4;
  v6 = v3 + v4;
  v7 = v1[6];
  v8 = sub_2C5018();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v11 = v2 + v6;

  v12 = v5 + v1[9];

  v13 = type metadata accessor for SegmentedControlItem();
  v14 = *(v13 + 36);
  v15 = sub_2C1DC8();
  (*(*(v15 - 8) + 8))(v12 + v14, v15);
  v16 = *(v13 + 40);
  if (!v10(v12 + v16, 1, v8))
  {
    (*(v9 + 8))(v12 + v16, v8);
  }

  v17 = v11 & ~v28;

  v18 = v5 + v1[12];
  if (*(v18 + 8))
  {

    sub_68CD0(v18 + 32);
  }

  v19 = v30 + v17;
  sub_113C80(*(v30 + v17), *(v30 + v17 + 8), *(v30 + v17 + 16));
  v20 = v26[5];
  sub_6620C(&unk_3C8530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_2C0D48();
    (*(*(v21 - 8) + 8))(v19 + v20, v21);
  }

  else
  {
  }

  v22 = v19 + v26[6];
  if (*(v22 + 40))
  {
    if (*(v22 + 24))
    {
      sub_68CD0(v22);
    }
  }

  else
  {
  }

  v23 = v26[7];
  sub_6620C(&unk_3C4360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_2BFF28();
    (*(*(v24 - 8) + 8))(v19 + v23, v24);
  }

  else
  {
  }

  return _swift_deallocObject(v30, v17 + v27, v29 | v28 | 7);
}

uint64_t sub_2AC994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2AC9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ReviewsHeaderComponentModel(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ReviewsHeaderComponent(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2AA78C(a1, v2 + v6, v9, a2);
}

unint64_t sub_2ACAE0()
{
  result = qword_3CA138;
  if (!qword_3CA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA138);
  }

  return result;
}

uint64_t sub_2ACB34()
{
  v1 = type metadata accessor for ReviewsHeaderComponentModel(0);
  v17 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v16 = (v17 + 32) & ~v17;
  v2 = v0 + v16;
  sub_68CD0(v0 + v16);
  if (*(v0 + v16 + 64))
  {
    sub_68CD0(v2 + 40);
  }

  v3 = v1[6];
  v4 = sub_2C5018();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v7 = v2 + v1[9];

  v8 = type metadata accessor for SegmentedControlItem();
  v9 = *(v8 + 36);
  v10 = sub_2C1DC8();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v8 + 40);
  if (!v6(v7 + v11, 1, v4))
  {
    (*(v5 + 8))(v7 + v11, v4);
  }

  v12 = v2 + v1[12];
  if (*(v12 + 8))
  {

    sub_68CD0(v12 + 32);
  }

  v13 = (v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_68CD0(v0 + v13 + 32);

  return _swift_deallocObject(v0, v13 + 72, v17 | 7);
}

uint64_t sub_2ACDE4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ReviewsHeaderComponentModel(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_2AAAF4(v1 + v4, v5, a1);
}

uint64_t sub_2ACE84()
{
  v1 = type metadata accessor for ReviewsHeaderComponentModel(0);
  v30 = *(*(v1 - 1) + 80);
  v2 = (v30 + 32) & ~v30;
  v3 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = type metadata accessor for ReviewsHeaderComponent(0);
  v4 = *(*(v27 - 1) + 80);
  v28 = *(*(v27 - 1) + 64);
  swift_unknownObjectRelease();
  v31 = v0;
  v5 = v0 + v2;
  sub_68CD0(v0 + v2);
  if (*(v0 + v2 + 64))
  {
    sub_68CD0(v5 + 40);
  }

  v29 = v4;
  v26 = v3;
  v6 = v3 + v4;
  v7 = v1[6];
  v8 = sub_2C5018();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v11 = v6 + 72;

  v12 = v5 + v1[9];

  v13 = type metadata accessor for SegmentedControlItem();
  v14 = *(v13 + 36);
  v15 = sub_2C1DC8();
  (*(*(v15 - 8) + 8))(v12 + v14, v15);
  v16 = *(v13 + 40);
  if (!v10(v12 + v16, 1, v8))
  {
    (*(v9 + 8))(v12 + v16, v8);
  }

  v17 = v11 & ~v29;

  v18 = v5 + v1[12];
  if (*(v18 + 8))
  {

    sub_68CD0(v18 + 32);
  }

  sub_68CD0(v31 + v26 + 32);
  v19 = v31 + v17;
  sub_113C80(*v19, *(v19 + 8), *(v19 + 16));
  v20 = v27[5];
  sub_6620C(&unk_3C8530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_2C0D48();
    (*(*(v21 - 8) + 8))(v19 + v20, v21);
  }

  else
  {
  }

  v22 = v19 + v27[6];
  if (*(v22 + 40))
  {
    if (*(v22 + 24))
    {
      sub_68CD0(v22);
    }
  }

  else
  {
  }

  v23 = v27[7];
  sub_6620C(&unk_3C4360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_2BFF28();
    (*(*(v24 - 8) + 8))(v19 + v23, v24);
  }

  else
  {
  }

  return _swift_deallocObject(v31, v17 + v28, v30 | v29 | 7);
}

uint64_t sub_2AD2C4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ReviewsHeaderComponentModel(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for ReviewsHeaderComponent(0) - 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v2 + ((v7 + *(v8 + 80) + 72) & ~*(v8 + 80));

  return sub_2AACC8(a1, a2, v9, v10, v2 + v6, v2 + v7, v11);
}

unint64_t sub_2AD3BC()
{
  result = qword_3CA160;
  if (!qword_3CA160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA160);
  }

  return result;
}

unint64_t sub_2AD410()
{
  result = qword_3CA168;
  if (!qword_3CA168)
  {
    sub_718D4(&qword_3CA048);
    sub_2A7B2C(&qword_3CA170, type metadata accessor for SegmentedControlItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA168);
  }

  return result;
}

unint64_t sub_2AD4C4()
{
  result = qword_3CA178;
  if (!qword_3CA178)
  {
    sub_718D4(&qword_3CA090);
    sub_2AD548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA178);
  }

  return result;
}

unint64_t sub_2AD548()
{
  result = qword_3CA180;
  if (!qword_3CA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA180);
  }

  return result;
}

uint64_t sub_2AD59C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ReviewsHeaderComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReviewsHeaderComponentModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2AD750()
{
  result = qword_3CA188;
  if (!qword_3CA188)
  {
    sub_718D4(&qword_3CA010);
    sub_72B74(&qword_3CA190, &qword_3CA000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA188);
  }

  return result;
}

unint64_t sub_2AD80C()
{
  result = qword_3CA198;
  if (!qword_3CA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA198);
  }

  return result;
}

unint64_t sub_2AD864()
{
  result = qword_3CA1A0;
  if (!qword_3CA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA1A0);
  }

  return result;
}

unint64_t sub_2AD8BC()
{
  result = qword_3CA1A8;
  if (!qword_3CA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA1A8);
  }

  return result;
}

uint64_t sub_2AD910(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000003004A0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954726564616568 && a2 == 0xEB00000000656C74 || (sub_2C65B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746E656D676573 && a2 == 0xEE00736D65744964 || (sub_2C65B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000000308580 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEE00656C74695479 || (sub_2C65B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D657449756E656DLL && a2 == 0xE900000000000073 || (sub_2C65B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000003085A0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_2C65B8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

id sub_2ADC0C()
{
  [objc_msgSend(objc_opt_self() "sharedInstance")];
  swift_unknownObjectRelease();

  return sub_2ADC74();
}

id sub_2ADC74()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC11BookStoreUI24ProductFeedBarButtonItem_shouldDisableForRestrictedBook) != 1)
  {
    goto LABEL_8;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_7;
  }

  v3 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo;
  v4 = Strong;
  swift_beginAccess();
  sub_6932C(v4 + v3, &v9, &unk_3C2550);

  if (!*(&v10 + 1))
  {
LABEL_7:
    sub_69198(&v9, &unk_3C2550);
    goto LABEL_8;
  }

  sub_72084(&v9, *(&v10 + 1));
  v5 = sub_2BF908();
  sub_68CD0(&v9);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    v7 = 1;
    return [v1 setEnabled:v7];
  }

  v6 = [objc_msgSend(objc_opt_self() "sharedInstance")];
  swift_unknownObjectRelease();
  v7 = v6;
  return [v1 setEnabled:v7];
}

uint64_t sub_2ADDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v3 = sub_2BE828();
  v49 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2BE9E8();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2BEA38();
  v41 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2BEA28();
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v44 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2BE968();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    goto LABEL_7;
  }

  v39 = v3;
  v40 = v5;
  v17 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo;
  v18 = Strong;
  swift_beginAccess();
  sub_6932C(v18 + v17, &v50, &unk_3C2550);

  if (!*(&v51 + 1))
  {
LABEL_7:
    result = sub_69198(&v50, &unk_3C2550);
    goto LABEL_8;
  }

  sub_68D1C(&v50, v53);
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    sub_DA510();
    sub_2BF028();
    sub_2C4DB8();

    v21 = v50;
    sub_691F8(v53, &v50);
    v38 = v21;
    sub_2BE928();
    sub_72084(v53, v53[3]);
    sub_2BFA58();
    (*(v41 + 104))(v11, enum case for SectionType.unknown(_:), v9);
    (*(v42 + 104))(v8, enum case for SectionData.ComponentContained.unknown(_:), v6);
    v22 = v44;
    sub_2BEA08();
    v23 = sub_6620C(&qword_3C2BF8);
    v24 = v23[12];
    v25 = v23[16];
    v26 = v23[20];
    v27 = v23[24];
    v28 = enum case for LocationType.button(_:);
    v29 = sub_2BEA98();
    v30 = v40;
    (*(*(v29 - 8) + 104))(v40, v28, v29);
    v31 = sub_2BF088();
    (*(*(v31 - 8) + 16))(&v30[v24], v46, v31);
    v33 = v47;
    v32 = v48;
    (*(v47 + 16))(&v30[v25], v22, v48);
    v34 = v43;
    v35 = v45;
    (*(v43 + 16))(&v30[v26], v15, v45);
    (*(v34 + 56))(&v30[v26], 0, 1, v35);
    v36 = sub_2BEF78();
    (*(*(v36 - 8) + 56))(&v30[v27], 1, 1, v36);
    (*(v49 + 104))(v30, enum case for AppAnalyticsAction.Type.clickEvent(_:), v39);
    *(a2 + 24) = sub_2BE858();
    *(a2 + 32) = sub_2AF3E8();
    sub_720C8(a2);
    sub_2BE838();

    (*(v33 + 8))(v22, v32);
    (*(v34 + 8))(v15, v35);
    return sub_68CD0(v53);
  }

  result = sub_68CD0(v53);
LABEL_8:
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_2AE468()
{
  v1 = [v0 title];
  v2 = [v0 image];
  v3 = OBJC_IVAR____TtC11BookStoreUI24ProductFeedBarButtonItem_actionModel;
  swift_beginAccess();
  sub_6932C(v0 + v3, &v11, &unk_3BDC90);
  if (v12)
  {
    sub_68D1C(&v11, v8);
    v4 = v9;
    v5 = v10;
    v6 = sub_72084(v8, v9);
    v7 = sub_2AF440(v6, 0, 0, v0, v4, v5);
    sub_68CD0(v8);
  }

  else
  {
    v7 = 0;
  }

  [v0 setPrimaryAction:v7];

  [v0 setTitle:v1];
  [v0 setImage:v2];
}

uint64_t sub_2AE5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_6620C(&qword_3BD858);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_6620C(&qword_3BD1B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_2AEA88(a3, v18);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v17 = v9;
      sub_DA510();
      sub_2C4DB8();
      sub_2C5228();
      sub_2C4DB8();
      sub_2C5218();
      (*(v5 + 104))(v7, enum case for ActionDispatcher.MetricsBehavior.fromAction<A>(_:), v4);
      sub_2C4F28();

      (*(v5 + 8))(v7, v4);
      (*(v17 + 8))(v11, v8);
    }

    else
    {
    }

    return sub_68CD0(v18);
  }

  return result;
}

uint64_t sub_2AEA88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2C4BF8();
  __chkstk_darwin(v4 - 8);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&unk_3CA260);
  __chkstk_darwin(v7 - 8);
  v9 = v25 - v8;
  v10 = sub_2BF088();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_691F8(a1, v29);
  sub_6620C(&qword_3BC248);
  sub_6620C(&qword_3CA270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_69198(&v26, &qword_3BDFF8);
    return sub_691F8(a1, a2);
  }

  v25[1] = v6;
  sub_68D1C(&v26, v30);
  sub_72084(v30, v31);
  v14 = v11;
  sub_2C0288();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_69198(v9, &unk_3CA260);
    sub_68CD0(v30);
    return sub_691F8(a1, a2);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_2ADDC8(v13, &v26);
  if (*(&v27 + 1))
  {
    sub_68D1C(&v26, v29);
    sub_72084(v30, v31);
    sub_2C4A28();
    sub_6620C(&qword_3BC240);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2E15C0;
    sub_691F8(v29, v16 + 32);
    v17 = v31;
    v18 = v32;
    v19 = sub_72084(v30, v31);
    *(v16 + 96) = v17;
    *(v16 + 104) = *(v18 + 8);
    v20 = sub_720C8((v16 + 72));
    (*(*(v17 - 8) + 16))(v20, v19, v17);
    a2[3] = sub_2C4D28();
    a2[4] = &protocol witness table for CompoundAction;
    sub_720C8(a2);
    sub_2C4D18();
    sub_68CD0(v29);
  }

  else
  {
    sub_69198(&v26, &unk_3BDC90);
    v21 = v31;
    v22 = v32;
    v23 = sub_72084(v30, v31);
    a2[3] = v21;
    a2[4] = *(v22 + 8);
    v24 = sub_720C8(a2);
    (*(*(v21 - 8) + 16))(v24, v23, v21);
  }

  (*(v14 + 8))(v13, v10);
  return sub_68CD0(v30);
}

id sub_2AEFF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductFeedBarButtonItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2AF098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2C5C18();
  *(v4 + 24) = sub_2C5C08();
  v6 = sub_2C5BB8();

  return _swift_task_switch(sub_2AF130, v6, v5);
}

uint64_t sub_2AF130()
{
  v1 = *(v0 + 16);

  (*&stru_B8.segname[(swift_isaMask & *v1) + 8])(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2AF2F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2AF334(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7100C;

  return sub_2AF098(a1, v4, v5, v6);
}

unint64_t sub_2AF3E8()
{
  result = qword_3CA250;
  if (!qword_3CA250)
  {
    sub_2BE858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA250);
  }

  return result;
}

uint64_t sub_2AF440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[3] = a5;
  v14[4] = a6;
  v8 = sub_720C8(v14);
  (*(*(a5 - 8) + 16))(v8, a1, a5);
  sub_2AF590();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_691F8(v14, v13);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  sub_68D1C(v13, v10 + 24);

  v11 = sub_2C6018();
  sub_68CD0(v14);
  return v11;
}

unint64_t sub_2AF590()
{
  result = qword_3BDC70;
  if (!qword_3BDC70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3BDC70);
  }

  return result;
}

uint64_t sub_2AF5DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2AF614()
{

  sub_68CD0(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t JSAction.init(actionMetrics:kind:params:clickData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for JSAction();
  v13 = v12[7];
  v14 = sub_2BF088();
  (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  v15 = sub_2C4BF8();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = (a6 + v12[5]);
  *v16 = a2;
  v16[1] = a3;
  *(a6 + v12[6]) = a4;

  return sub_71FB4(a5, a6 + v13);
}

uint64_t type metadata accessor for JSAction()
{
  result = qword_3CA2F0;
  if (!qword_3CA2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2AF7A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007363697274;
  v3 = 0x654D6E6F69746361;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x736D61726170;
    }

    else
    {
      v5 = 0x7461446B63696C63;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE900000000000061;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 1684957547;
    }

    else
    {
      v5 = 0x654D6E6F69746361;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xED00007363697274;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x736D61726170;
  if (a2 != 2)
  {
    v8 = 0x7461446B63696C63;
    v7 = 0xE900000000000061;
  }

  if (a2)
  {
    v3 = 1684957547;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2C65B8();
  }

  return v11 & 1;
}

uint64_t sub_2AF8E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6165707061736964;
    }

    else
    {
      v3 = 0x726165707061;
    }

    if (v2)
    {
      v4 = 0xE900000000000072;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x636974796C616E61;
    v4 = 0xEF72616570704173;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000012;
    v4 = 0x8000000000300750;
  }

  else
  {
    v3 = 0x7070417473726966;
    v4 = 0xEB00000000726165;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6165707061736964;
    }

    else
    {
      v6 = 0x726165707061;
    }

    if (a2)
    {
      v5 = 0xE900000000000072;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEF72616570704173;
    if (v3 != 0x636974796C616E61)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x8000000000300750;
    if (v3 != 0xD000000000000012)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEB00000000726165;
    if (v3 != 0x7070417473726966)
    {
LABEL_31:
      v7 = sub_2C65B8();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_2AFAB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6D65744964656573;
    }

    else
    {
      v3 = 0x656372756F736572;
    }

    v4 = 0xE800000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x6575676573;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD00000000000001ELL;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 3)
    {
      v4 = 0x80000000003005E0;
    }

    else
    {
      v4 = 0x80000000003004A0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x6D65744964656573;
    }

    else
    {
      v7 = 0x656372756F736572;
    }

    v6 = 0xE800000000000000;
    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xE500000000000000;
    if (v3 != 0x6575676573)
    {
LABEL_32:
      v8 = sub_2C65B8();
      goto LABEL_33;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD00000000000001ELL;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 3)
    {
      v6 = 0x80000000003005E0;
    }

    else
    {
      v6 = 0x80000000003004A0;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_32;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_2AFC54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6575676573;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6575676573;
    }

    else
    {
      v5 = 0xD000000000000023;
    }

    if (v3 == 2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0x80000000003004E0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x80000000003004C0;
    }

    else
    {
      v4 = 0x80000000003004A0;
    }

    v5 = 0xD000000000000011;
  }

  v6 = 0x80000000003004E0;
  if (a2 == 2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v2 = 0xD000000000000023;
  }

  v7 = 0x80000000003004C0;
  if (!a2)
  {
    v7 = 0x80000000003004A0;
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = v2;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v5 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2C65B8();
  }

  return v10 & 1;
}

uint64_t sub_2AFD74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1819047270;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C616974726170;
    }

    else
    {
      v4 = 0x73756F6976657270;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEF6E776F6853796CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C6269736976;
    }

    else
    {
      v4 = 1819047270;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x6C616974726170;
  if (a2 != 2)
  {
    v8 = 0x73756F6976657270;
    v7 = 0xEF6E776F6853796CLL;
  }

  if (a2)
  {
    v2 = 0x656C6269736976;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2C65B8();
  }

  return v11 & 1;
}

uint64_t sub_2AFEC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xEB0000000068736FLL;
  v5 = 0x7472616843706F74;
  if (a1 == 2)
  {
    v5 = 0x6F775365726F7473;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  v6 = 0xD000000000000014;
  if (a1)
  {
    v3 = 0x8000000000300450;
  }

  else
  {
    v6 = 0x6567615064697267;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6F775365726F7473;
    }

    else
    {
      v11 = 0x7472616843706F74;
    }

    if (a2 == 2)
    {
      v10 = 0xEB0000000068736FLL;
    }

    else
    {
      v10 = 0xE900000000000073;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000014;
    }

    else
    {
      v9 = 0x6567615064697267;
    }

    if (a2)
    {
      v10 = 0x8000000000300450;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_2C65B8();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_2B0028(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD00000000000001BLL;
  v5 = 0x8000000000300420;
  if (a1 != 5)
  {
    v4 = 0x656C746974;
    v5 = 0xE500000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x656C746974627573;
  if (a1 != 3)
  {
    v7 = 0x68747541776F6873;
    v6 = 0xEE00656D614E726FLL;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x656372756F736572;
  if (a1 != 1)
  {
    v8 = 0x6D65744964656573;
  }

  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v8 = 0x747865746E6F63;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v11 = 0xE800000000000000;
      if (a2 == 1)
      {
        if (v9 != 0x656372756F736572)
        {
          goto LABEL_39;
        }
      }

      else if (v9 != 0x6D65744964656573)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x747865746E6F63)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0x8000000000300420;
      if (v9 != 0xD00000000000001BLL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x656C746974)
      {
LABEL_39:
        v12 = sub_2C65B8();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x656C746974627573)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v11 = 0xEE00656D614E726FLL;
    if (v9 != 0x68747541776F6873)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t JSAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C4BF8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t JSAction.kind.getter()
{
  v1 = *(v0 + *(type metadata accessor for JSAction() + 20));

  return v1;
}

uint64_t JSAction.params.getter()
{
  type metadata accessor for JSAction();
}

uint64_t JSAction.clickData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JSAction() + 28);

  return sub_78628(v3, a1);
}

uint64_t JSAction.clickData.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JSAction() + 28);

  return sub_71FB4(a1, v3);
}

Swift::Int sub_2B0428()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_2B04F0()
{
  sub_2C5958();
}

Swift::Int sub_2B05A4()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_2B0668@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2B17A4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_2B0698(uint64_t *a1@<X8>)
{
  v2 = 0xED00007363697274;
  v3 = 0x654D6E6F69746361;
  v4 = 0xE600000000000000;
  v5 = 0x736D61726170;
  if (*v1 != 2)
  {
    v5 = 0x7461446B63696C63;
    v4 = 0xE900000000000061;
  }

  if (*v1)
  {
    v3 = 1684957547;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2B071C()
{
  v1 = 0x654D6E6F69746361;
  v2 = 0x736D61726170;
  if (*v0 != 2)
  {
    v2 = 0x7461446B63696C63;
  }

  if (*v0)
  {
    v1 = 1684957547;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2B079C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2B17A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2B07C4(uint64_t a1)
{
  v2 = sub_2B0FE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2B0800(uint64_t a1)
{
  v2 = sub_2B0FE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t JSAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_6620C(&unk_3CA260);
  __chkstk_darwin(v3 - 8);
  v50 = &v45 - v4;
  v5 = sub_6620C(&qword_3C2818);
  __chkstk_darwin(v5 - 8);
  v54 = &v45 - v6;
  v7 = sub_6620C(&qword_3C2860);
  __chkstk_darwin(v7 - 8);
  v49 = &v45 - v8;
  v9 = sub_2C4BF8();
  v52 = *(v9 - 8);
  __chkstk_darwin(v9);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3CA278);
  v53 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = type metadata accessor for JSAction();
  __chkstk_darwin(v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 28);
  v19 = sub_2BF088();
  v20 = *(*(v19 - 8) + 56);
  v57 = v18;
  v58 = v16;
  v20(&v16[v18], 1, 1, v19);
  sub_72084(a1, a1[3]);
  sub_2B0FE0();
  v21 = v56;
  sub_2C67A8();
  if (v21)
  {
    sub_68CD0(a1);
    return sub_69198(&v58[v57], &unk_3CA260);
  }

  v48 = v19;
  v22 = v53;
  v23 = v54;
  v56 = a1;
  v62 = 0;
  sub_2B1294(&qword_3CA288, &type metadata accessor for ActionMetrics);
  v24 = v55;
  sub_2C64A8();
  v26 = v13;
  v27 = v58;
  (*(v52 + 32))(v58, v24, v9);
  v61 = 1;
  v28 = sub_2C6468();
  v55 = v14;
  v29 = &v27[*(v14 + 20)];
  *v29 = v28;
  v29[1] = v30;
  v31 = sub_2C49F8();
  v60 = 2;
  sub_2B1294(&qword_3C66E8, &type metadata accessor for JSONObject);
  v47 = 0;
  sub_2C6458();
  v45 = v11;
  v46 = v26;
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v23, 1, v31) == 1)
  {
    v33 = &qword_3C2818;
    v34 = v23;
  }

  else
  {
    v35 = v49;
    sub_2C49A8();
    (*(v32 + 8))(v23, v31);
    v36 = v35;
    v37 = sub_2C4D58();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v36, 1, v37) != 1)
    {
      sub_6620C(&qword_3C4900);
      v39 = sub_2C4D48();
      (*(v38 + 8))(v36, v37);
      goto LABEL_10;
    }

    v33 = &qword_3C2860;
    v34 = v36;
  }

  sub_69198(v34, v33);
  v39 = 0;
LABEL_10:
  v40 = v58;
  *&v58[*(v55 + 6)] = v39;
  v59 = 3;
  sub_2B1294(&qword_3CA290, &type metadata accessor for ClickData);
  v41 = v50;
  v43 = v45;
  v42 = v46;
  sub_2C6458();
  v44 = v51;
  (*(v22 + 8))(v42, v43);
  sub_71FB4(v41, v40 + v57);
  sub_14FCB0(v40, v44);
  sub_68CD0(v56);
  return sub_2B1034(v40);
}

unint64_t sub_2B0FE0()
{
  result = qword_3CA280;
  if (!qword_3CA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA280);
  }

  return result;
}

uint64_t sub_2B1034(uint64_t a1)
{
  v2 = type metadata accessor for JSAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void JSAction.jsRepresentation(in:)(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for JSAction();
  v7 = *(v6 + 24);
  if (*(v2 + v7))
  {
    v16[0] = *(v2 + v7);

    v8 = a1;
    sub_6620C(&qword_3BC208);
    v9 = sub_2C6598();
    sub_69198(v16, &qword_3BC208);
  }

  else
  {
    v10 = a1;
    v9 = 0;
  }

  v11 = objc_opt_self();
  v12 = [v11 valueWithObject:v9 inContext:a1];
  swift_unknownObjectRelease();

  if (v12)
  {
    v17._countAndFlagsBits = 0x646E696B24;
    v17._object = 0xE500000000000000;
    if (sub_2C5FA8(v17))
    {
LABEL_8:
      a2[3] = sub_14D8EC();
      a2[4] = &protocol witness table for JSValue;
      *a2 = v12;
      return;
    }

    v13 = (v3 + *(v6 + 20));
    v14 = v13[1];
    v16[0] = *v13;
    v16[1] = v14;

    v15 = [v11 valueWithObject:sub_2C6658() inContext:a1];
    swift_unknownObjectRelease();
    if (v15)
    {
      sub_2C5FC8();
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2B1294(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2B1308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2C4BF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_6620C(&unk_3CA260);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2B1450(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2C4BF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_6620C(&unk_3CA260);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_2B1584()
{
  sub_2C4BF8();
  if (v0 <= 0x3F)
  {
    sub_2B1628();
    if (v1 <= 0x3F)
    {
      sub_784F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2B1628()
{
  if (!qword_3CA300)
  {
    sub_718D4(&qword_3BC208);
    v0 = sub_2C60B8();
    if (!v1)
    {
      atomic_store(v0, &qword_3CA300);
    }
  }
}

unint64_t sub_2B16A0()
{
  result = qword_3CA338;
  if (!qword_3CA338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA338);
  }

  return result;
}

unint64_t sub_2B16F8()
{
  result = qword_3CA340;
  if (!qword_3CA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA340);
  }

  return result;
}

unint64_t sub_2B1750()
{
  result = qword_3CA348;
  if (!qword_3CA348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA348);
  }

  return result;
}

uint64_t sub_2B17A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_389D08;
  v6._object = a2;
  v4 = sub_2C63E8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2B17F0()
{
  result = 0x747865742E636F64;
  switch(*v0)
  {
    case 1:
      result = 0x772E646572616873;
      break;
    case 2:
      return result;
    case 3:
    case 0xC:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 0xA:
    case 0xB:
      result = 0x6873617274;
      break;
    case 6:
    case 7:
      result = 0x6761702E6B6F6F62;
      break;
    case 8:
      result = 0x6E6F687064616568;
      break;
    case 9:
    case 0xE:
    case 0x11:
    case 0x1A:
      v2 = 0x2E73756E696DLL;
      goto LABEL_3;
    case 0xD:
      result = 0x7269632E73756C70;
      break;
    case 0xF:
      result = 0x6461622E74786574;
      break;
    case 0x10:
    case 0x19:
      result = 0xD000000000000010;
      break;
    case 0x12:
      result = 0x7261646E656C6163;
      break;
    case 0x13:
      result = 6775138;
      break;
    case 0x14:
    case 0x15:
      result = 1952868711;
      break;
    case 0x16:
      result = 0xD000000000000017;
      break;
    case 0x17:
    case 0x18:
      result = 0x7568742E646E6168;
      break;
    case 0x1B:
      result = 1802398060;
      break;
    case 0x1C:
      v2 = 0x2E6B72616D78;
LABEL_3:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6963000000000000;
      break;
    case 0x1D:
      result = 0;
      break;
    case 0x1E:
      result = 7630433;
      break;
    case 0x1F:
      result = 0x6F6C632E6B6F6F62;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t ContextActionType.rawValue.getter()
{
  result = 0x6572616873;
  switch(*v0)
  {
    case 1:
      result = 0x6957646572616873;
      break;
    case 2:
      result = 0x6C636E4977656976;
      break;
    case 3:
      result = 0x6F4374726F706572;
      break;
    case 4:
      result = 0x64616F6C6E776F64;
      break;
    case 5:
      v2 = 0x6C65636E6163;
      goto LABEL_20;
    case 6:
      result = 0x6C706D6153746567;
      break;
    case 7:
      result = 0x706D615364616572;
      break;
    case 8:
      result = 0x6D61536F69647561;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 0xA:
      result = 0x65766F6D6572;
      break;
    case 0xB:
      v2 = 0x65766F6D6572;
LABEL_20:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6F44000000000000;
      break;
    case 0xC:
      result = 0x656D616E6572;
      break;
    case 0xD:
      result = 0x6E61576F54646461;
      break;
    case 0xE:
      result = 0xD000000000000014;
      break;
    case 0xF:
      result = 0x6C6F436F54646461;
      break;
    case 0x10:
      result = 0x694673416B72616DLL;
      break;
    case 0x11:
      result = 0xD000000000000012;
      break;
    case 0x12:
      result = 0xD000000000000010;
      break;
    case 0x13:
      result = 0x646F72506E65706FLL;
      break;
    case 0x14:
      result = 1952868711;
      break;
    case 0x15:
      result = 0x656C7069746C756DLL;
      break;
    case 0x16:
      result = 0x6552416574697277;
      break;
    case 0x17:
      result = 1701538156;
      break;
    case 0x18:
      result = 0x656B696C736964;
      break;
    case 0x19:
      result = 0x7369685464616572;
      break;
    case 0x1A:
      result = 0x746963696C707865;
      break;
    case 0x1B:
      result = 0x6B6E694C79706F63;
      break;
    case 0x1C:
      result = 0xD000000000000018;
      break;
    case 0x1D:
      result = 1701998445;
      break;
    case 0x1E:
      result = 0xD000000000000012;
      break;
    case 0x1F:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2B1F38(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_2C6738();
    ContextActionType.rawValue.getter();
    sub_2C5958();

    v4 = sub_2C6778();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xE500000000000000;
        v9 = 0x6572616873;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v9 = 0x6957646572616873;
            v8 = 0xED0000756F596874;
            break;
          case 2:
            v9 = 0x6C636E4977656976;
            v8 = 0xEF46445064656475;
            break;
          case 3:
            v9 = 0x6F4374726F706572;
            v8 = 0xED00006E7265636ELL;
            break;
          case 4:
            v8 = 0xE800000000000000;
            v9 = 0x64616F6C6E776F64;
            break;
          case 5:
            v10 = 0x6C65636E6163;
            goto LABEL_23;
          case 6:
            v9 = 0x6C706D6153746567;
            v8 = 0xE900000000000065;
            break;
          case 7:
            v9 = 0x706D615364616572;
            v8 = 0xEA0000000000656CLL;
            break;
          case 8:
            v9 = 0x6D61536F69647561;
            v8 = 0xEB00000000656C70;
            break;
          case 9:
            v9 = 0xD000000000000012;
            v8 = 0x8000000000300270;
            break;
          case 0xA:
            v8 = 0xE600000000000000;
            v9 = 0x65766F6D6572;
            break;
          case 0xB:
            v10 = 0x65766F6D6572;
LABEL_23:
            v9 = v10 & 0xFFFFFFFFFFFFLL | 0x6F44000000000000;
            v8 = 0xEE0064616F6C6E77;
            break;
          case 0xC:
            v8 = 0xE600000000000000;
            v9 = 0x656D616E6572;
            break;
          case 0xD:
            v9 = 0x6E61576F54646461;
            v8 = 0xEF646165526F5474;
            break;
          case 0xE:
            v9 = 0xD000000000000014;
            v8 = 0x80000000003002B0;
            break;
          case 0xF:
            v9 = 0x6C6F436F54646461;
            v8 = 0xEF6E6F697463656CLL;
            break;
          case 0x10:
            v9 = 0x694673416B72616DLL;
            v8 = 0xEE0064656873696ELL;
            break;
          case 0x11:
            v9 = 0xD000000000000012;
            v8 = 0x80000000003002F0;
            break;
          case 0x12:
            v9 = 0xD000000000000010;
            v8 = 0x8000000000300310;
            break;
          case 0x13:
            v9 = 0x646F72506E65706FLL;
            v11 = 0x676150746375;
            goto LABEL_37;
          case 0x14:
            v8 = 0xE400000000000000;
            v9 = 1952868711;
            break;
          case 0x15:
            v9 = 0x656C7069746C756DLL;
            v8 = 0xEC00000074666947;
            break;
          case 0x16:
            v9 = 0x6552416574697277;
            v8 = 0xEC00000077656976;
            break;
          case 0x17:
            v8 = 0xE400000000000000;
            v9 = 1701538156;
            break;
          case 0x18:
            v8 = 0xE700000000000000;
            v9 = 0x656B696C736964;
            break;
          case 0x19:
            v8 = 0xE800000000000000;
            v9 = 0x7369685464616572;
            break;
          case 0x1A:
            v9 = 0x746963696C707865;
            v11 = 0x6E696C636544;
LABEL_37:
            v8 = v11 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
            break;
          case 0x1B:
            v8 = 0xE800000000000000;
            v9 = 0x6B6E694C79706F63;
            break;
          case 0x1C:
            v9 = 0xD000000000000018;
            v8 = 0x8000000000300380;
            break;
          case 0x1D:
            v8 = 0xE400000000000000;
            v9 = 1701998445;
            break;
          case 0x1E:
            v9 = 0xD000000000000012;
            v8 = 0x80000000003003A0;
            break;
          case 0x1F:
            v9 = 0xD000000000000015;
            v8 = 0x80000000003003C0;
            break;
          default:
            break;
        }

        v12 = 0xE500000000000000;
        v13 = 0x6572616873;
        switch(a1)
        {
          case 1:
            v14 = 0x6957646572616873;
            v15 = 0x756F596874;
            goto LABEL_61;
          case 2:
            v12 = 0xEF46445064656475;
            if (v9 != 0x6C636E4977656976)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 3:
            v14 = 0x6F4374726F706572;
            v15 = 0x6E7265636ELL;
LABEL_61:
            v12 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v9 != v14)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 4:
            v12 = 0xE800000000000000;
            if (v9 != 0x64616F6C6E776F64)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 5:
            v18 = 0x6C65636E6163;
            goto LABEL_72;
          case 6:
            v12 = 0xE900000000000065;
            if (v9 != 0x6C706D6153746567)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 7:
            v12 = 0xEA0000000000656CLL;
            if (v9 != 0x706D615364616572)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 8:
            v12 = 0xEB00000000656C70;
            if (v9 != 0x6D61536F69647561)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 9:
            v12 = 0x8000000000300270;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 10:
            v12 = 0xE600000000000000;
            if (v9 != 0x65766F6D6572)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 11:
            v18 = 0x65766F6D6572;
LABEL_72:
            v16 = v18 & 0xFFFFFFFFFFFFLL | 0x6F44000000000000;
            v17 = 0x64616F6C6E77;
            goto LABEL_73;
          case 12:
            v12 = 0xE600000000000000;
            if (v9 != 0x656D616E6572)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 13:
            v12 = 0xEF646165526F5474;
            if (v9 != 0x6E61576F54646461)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 14:
            v12 = 0x80000000003002B0;
            if (v9 != 0xD000000000000014)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 15:
            v12 = 0xEF6E6F697463656CLL;
            if (v9 != 0x6C6F436F54646461)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 16:
            v16 = 0x694673416B72616DLL;
            v17 = 0x64656873696ELL;
LABEL_73:
            v12 = v17 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v9 != v16)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 17:
            v12 = 0x80000000003002F0;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 18:
            v12 = 0x8000000000300310;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 19:
            v21 = 0x646F72506E65706FLL;
            v22 = 0x676150746375;
            goto LABEL_103;
          case 20:
            v12 = 0xE400000000000000;
            if (v9 != 1952868711)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 21:
            v19 = 0x656C7069746C756DLL;
            v20 = 1952868679;
            goto LABEL_89;
          case 22:
            v19 = 0x6552416574697277;
            v20 = 2003134838;
LABEL_89:
            v12 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v9 != v19)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 23:
            v12 = 0xE400000000000000;
            if (v9 != 1701538156)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 24:
            v12 = 0xE700000000000000;
            if (v9 != 0x656B696C736964)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 25:
            v12 = 0xE800000000000000;
            if (v9 != 0x7369685464616572)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 26:
            v21 = 0x746963696C707865;
            v22 = 0x6E696C636544;
LABEL_103:
            v12 = v22 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
            if (v9 != v21)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 27:
            v12 = 0xE800000000000000;
            if (v9 != 0x6B6E694C79706F63)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 28:
            v12 = 0x8000000000300380;
            if (v9 != 0xD000000000000018)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 29:
            v12 = 0xE400000000000000;
            v13 = 1701998445;
            goto LABEL_97;
          case 30:
            v12 = 0x80000000003003A0;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 31:
            v12 = 0x80000000003003C0;
            if (v9 != 0xD000000000000015)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          default:
LABEL_97:
            if (v9 != v13)
            {
              goto LABEL_99;
            }

LABEL_98:
            if (v8 == v12)
            {

              v23 = 1;
              return v23 & 1;
            }

LABEL_99:
            v23 = sub_2C65B8();

            if (v23)
            {
              return v23 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v23 & 1;
            }

            break;
        }
      }
    }
  }

  v23 = 0;
  return v23 & 1;
}

uint64_t sub_2B2914()
{
  result = 0;
  switch(*v0)
  {
    case 1:
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v4 = sub_2C5888();
      v5 = sub_2C5888();
      v6 = sub_2C5888();
      v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

      v8 = sub_2C58C8();
      result = v8;
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x13:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
      result = sub_1DA078();
      break;
    case 0x1E:
      result = 0x736920646E756F46;
      break;
    case 0x1F:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

NSString sub_2B2DB4()
{
  ContextActionType.rawValue.getter();
  v0 = sub_2C5888();

  return v0;
}

uint64_t sub_2B2E00()
{
  result = 0;
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xF:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x1B:
    case 0x1C:
    case 0x1E:
    case 0x1F:
      return result;
    default:
      result = sub_1DA078();
      break;
  }

  return result;
}

BookStoreUI::ContextActionType_optional __swiftcall ContextActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2C6628();

  v5 = 0;
  v6 = 14;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
LABEL_25:
      v6 = v5;
      break;
    case 14:
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    default:
      v6 = 32;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2B31EC()
{
  v0 = ContextActionType.rawValue.getter();
  v2 = v1;
  if (v0 == ContextActionType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2C65B8();
  }

  return v5 & 1;
}

Swift::Int sub_2B3288()
{
  sub_2C6738();
  ContextActionType.rawValue.getter();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_2B32F0()
{
  ContextActionType.rawValue.getter();
  sub_2C5958();
}

Swift::Int sub_2B3354()
{
  sub_2C6738();
  ContextActionType.rawValue.getter();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_2B33C4@<X0>(uint64_t *a1@<X8>)
{
  result = ContextActionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BookStoreUI::ContextActionType::ContextActionGroup_optional __swiftcall ContextActionType.ContextActionGroup.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

char static ContextActionType.orderActionItems(_:)(char *a1)
{
  v1 = *(a1 + 2);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 40;
    v4 = _swiftEmptyArrayStorage;
LABEL_3:
    v5 = &v3[16 * v2];
    v6 = v2;
    while (v6 < v1)
    {
      v2 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_27;
      }

      v8 = *(v5 - 1);
      v7 = *v5;

      v9._countAndFlagsBits = v8;
      v9._object = v7;
      LOBYTE(a1) = ContextActionType.init(rawValue:)(v9);
      if (v25 != 32)
      {
        LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
        if ((a1 & 1) == 0)
        {
          a1 = sub_5CC00(0, *(v4 + 2) + 1, 1, v4);
          v4 = a1;
        }

        v11 = *(v4 + 2);
        v10 = *(v4 + 3);
        if (v11 >= v10 >> 1)
        {
          a1 = sub_5CC00((v10 > 1), v11 + 1, 1, v4);
          v4 = a1;
        }

        *(v4 + 2) = v11 + 1;
        v4[v11 + 32] = v25;
        if (v2 != v1)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }

      ++v6;
      v5 += 2;
      if (v2 == v1)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v12 = sub_2B6654();

    v13 = 0;
    v14 = v12[2];
    v15 = _swiftEmptyArrayStorage;
LABEL_15:
    v16 = &v12[2 * v13 + 5];
    while (1)
    {
      if (v14 == v13)
      {

        LOBYTE(a1) = v15;
        return a1;
      }

      if (v13 >= v12[2])
      {
        break;
      }

      ++v13;
      v17 = v16 + 16;
      v18 = *v16;
      v19 = *(*v16 + 16);
      v16 += 16;
      if (v19)
      {
        v20 = *(v17 - 24);

        LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
        if ((a1 & 1) == 0)
        {
          a1 = sub_5CACC(0, *(v15 + 2) + 1, 1, v15);
          v15 = a1;
        }

        v22 = *(v15 + 2);
        v21 = *(v15 + 3);
        if (v22 >= v21 >> 1)
        {
          a1 = sub_5CACC((v21 > 1), v22 + 1, 1, v15);
          v15 = a1;
        }

        *(v15 + 2) = v22 + 1;
        v23 = &v15[16 * v22];
        v23[32] = v20;
        *(v23 + 5) = v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return a1;
}

uint64_t sub_2B364C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  sub_2C6738();
  sub_2C5958();
  v8 = sub_2C6778();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2C65B8() & 1) != 0)
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

    sub_2B4A64(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2B379C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_2C6188(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_68D34(*(v6 + 48) + 40 * v9, v16);
      v11 = sub_2C6198();
      sub_68D90(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_68D90(a2);
    sub_68D34(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_68D34(a2, v16);
    v15 = *v3;
    sub_2B4BE4(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_2B38E8(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2C6738();
  ContextActionType.rawValue.getter();
  sub_2C5958();

  v6 = sub_2C6778();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_104:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v3;
    sub_2B4D5C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v29;
    result = 1;
    goto LABEL_107;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xE500000000000000;
    v11 = 0x6572616873;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        v11 = 0x6957646572616873;
        v10 = 0xED0000756F596874;
        break;
      case 2:
        v11 = 0x6C636E4977656976;
        v10 = 0xEF46445064656475;
        break;
      case 3:
        v11 = 0x6F4374726F706572;
        v10 = 0xED00006E7265636ELL;
        break;
      case 4:
        v10 = 0xE800000000000000;
        v11 = 0x64616F6C6E776F64;
        break;
      case 5:
        v12 = 0x6C65636E6163;
        goto LABEL_22;
      case 6:
        v11 = 0x6C706D6153746567;
        v10 = 0xE900000000000065;
        break;
      case 7:
        v11 = 0x706D615364616572;
        v10 = 0xEA0000000000656CLL;
        break;
      case 8:
        v11 = 0x6D61536F69647561;
        v10 = 0xEB00000000656C70;
        break;
      case 9:
        v11 = 0xD000000000000012;
        v10 = 0x8000000000300270;
        break;
      case 0xA:
        v10 = 0xE600000000000000;
        v11 = 0x65766F6D6572;
        break;
      case 0xB:
        v12 = 0x65766F6D6572;
LABEL_22:
        v11 = v12 & 0xFFFFFFFFFFFFLL | 0x6F44000000000000;
        v10 = 0xEE0064616F6C6E77;
        break;
      case 0xC:
        v10 = 0xE600000000000000;
        v11 = 0x656D616E6572;
        break;
      case 0xD:
        v11 = 0x6E61576F54646461;
        v10 = 0xEF646165526F5474;
        break;
      case 0xE:
        v11 = 0xD000000000000014;
        v10 = 0x80000000003002B0;
        break;
      case 0xF:
        v11 = 0x6C6F436F54646461;
        v10 = 0xEF6E6F697463656CLL;
        break;
      case 0x10:
        v11 = 0x694673416B72616DLL;
        v10 = 0xEE0064656873696ELL;
        break;
      case 0x11:
        v11 = 0xD000000000000012;
        v10 = 0x80000000003002F0;
        break;
      case 0x12:
        v11 = 0xD000000000000010;
        v10 = 0x8000000000300310;
        break;
      case 0x13:
        v11 = 0x646F72506E65706FLL;
        v13 = 0x676150746375;
        goto LABEL_36;
      case 0x14:
        v10 = 0xE400000000000000;
        v11 = 1952868711;
        break;
      case 0x15:
        v11 = 0x656C7069746C756DLL;
        v10 = 0xEC00000074666947;
        break;
      case 0x16:
        v11 = 0x6552416574697277;
        v10 = 0xEC00000077656976;
        break;
      case 0x17:
        v10 = 0xE400000000000000;
        v11 = 1701538156;
        break;
      case 0x18:
        v10 = 0xE700000000000000;
        v11 = 0x656B696C736964;
        break;
      case 0x19:
        v10 = 0xE800000000000000;
        v11 = 0x7369685464616572;
        break;
      case 0x1A:
        v11 = 0x746963696C707865;
        v13 = 0x6E696C636544;
LABEL_36:
        v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
        break;
      case 0x1B:
        v10 = 0xE800000000000000;
        v11 = 0x6B6E694C79706F63;
        break;
      case 0x1C:
        v11 = 0xD000000000000018;
        v10 = 0x8000000000300380;
        break;
      case 0x1D:
        v10 = 0xE400000000000000;
        v11 = 1701998445;
        break;
      case 0x1E:
        v11 = 0xD000000000000012;
        v10 = 0x80000000003003A0;
        break;
      case 0x1F:
        v11 = 0xD000000000000015;
        v10 = 0x80000000003003C0;
        break;
      default:
        break;
    }

    v14 = 0xE500000000000000;
    v15 = 0x6572616873;
    switch(a2)
    {
      case 1:
        v16 = 0x6957646572616873;
        v17 = 0x756F596874;
        goto LABEL_60;
      case 2:
        v14 = 0xEF46445064656475;
        if (v11 != 0x6C636E4977656976)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 3:
        v16 = 0x6F4374726F706572;
        v17 = 0x6E7265636ELL;
LABEL_60:
        v14 = v17 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v11 != v16)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 4:
        v14 = 0xE800000000000000;
        if (v11 != 0x64616F6C6E776F64)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 5:
        v20 = 0x6C65636E6163;
        goto LABEL_71;
      case 6:
        v14 = 0xE900000000000065;
        if (v11 != 0x6C706D6153746567)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 7:
        v14 = 0xEA0000000000656CLL;
        if (v11 != 0x706D615364616572)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 8:
        v14 = 0xEB00000000656C70;
        if (v11 != 0x6D61536F69647561)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 9:
        v14 = 0x8000000000300270;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 10:
        v14 = 0xE600000000000000;
        if (v11 != 0x65766F6D6572)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 11:
        v20 = 0x65766F6D6572;
LABEL_71:
        v18 = v20 & 0xFFFFFFFFFFFFLL | 0x6F44000000000000;
        v19 = 0x64616F6C6E77;
        goto LABEL_72;
      case 12:
        v14 = 0xE600000000000000;
        if (v11 != 0x656D616E6572)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 13:
        v14 = 0xEF646165526F5474;
        if (v11 != 0x6E61576F54646461)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 14:
        v14 = 0x80000000003002B0;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 15:
        v14 = 0xEF6E6F697463656CLL;
        if (v11 != 0x6C6F436F54646461)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 16:
        v18 = 0x694673416B72616DLL;
        v19 = 0x64656873696ELL;
LABEL_72:
        v14 = v19 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v11 != v18)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 17:
        v14 = 0x80000000003002F0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 18:
        v14 = 0x8000000000300310;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 19:
        v23 = 0x646F72506E65706FLL;
        v24 = 0x676150746375;
        goto LABEL_102;
      case 20:
        v14 = 0xE400000000000000;
        if (v11 != 1952868711)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 21:
        v21 = 0x656C7069746C756DLL;
        v22 = 1952868679;
        goto LABEL_88;
      case 22:
        v21 = 0x6552416574697277;
        v22 = 2003134838;
LABEL_88:
        v14 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v11 != v21)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 23:
        v14 = 0xE400000000000000;
        if (v11 != 1701538156)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 24:
        v14 = 0xE700000000000000;
        if (v11 != 0x656B696C736964)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 25:
        v14 = 0xE800000000000000;
        if (v11 != 0x7369685464616572)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 26:
        v23 = 0x746963696C707865;
        v24 = 0x6E696C636544;
LABEL_102:
        v14 = v24 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
        if (v11 != v23)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 27:
        v14 = 0xE800000000000000;
        if (v11 != 0x6B6E694C79706F63)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 28:
        v14 = 0x8000000000300380;
        if (v11 != 0xD000000000000018)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 29:
        v14 = 0xE400000000000000;
        v15 = 1701998445;
        goto LABEL_96;
      case 30:
        v14 = 0x80000000003003A0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 31:
        v14 = 0x80000000003003C0;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      default:
LABEL_96:
        if (v11 != v15)
        {
          goto LABEL_98;
        }

LABEL_97:
        if (v10 != v14)
        {
LABEL_98:
          v25 = sub_2C65B8();

          if (v25)
          {
            goto LABEL_106;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_104;
          }

          continue;
        }

LABEL_106:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_107:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_2B4334()
{
  v1 = v0;
  v2 = *v0;
  sub_6620C(&qword_3CA3A8);
  result = sub_2C61C8();
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
      sub_2C6738();
      sub_2C5958();
      result = sub_2C6778();
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

uint64_t sub_2B4594()
{
  v1 = v0;
  v2 = *v0;
  sub_6620C(&qword_3CA3A0);
  result = sub_2C61C8();
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
      v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
      v26 = *v17;
      v27 = *(v17 + 16);
      v28 = *(v17 + 32);
      result = sub_2C6188(*(v4 + 40));
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      *v13 = v26;
      *(v13 + 16) = v27;
      *(v13 + 32) = v28;
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

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2B47F4()
{
  v1 = v0;
  v2 = *v0;
  sub_6620C(&qword_3CA398);
  result = sub_2C61C8();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_2C6738();
      ContextActionType.rawValue.getter();
      sub_2C5958();

      result = sub_2C6778();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

Swift::Int sub_2B4A64(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_2B4334();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2B57F4();
      goto LABEL_16;
    }

    sub_2B5C08();
  }

  v10 = *v4;
  sub_2C6738();
  sub_2C5958();
  result = sub_2C6778();
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

      result = sub_2C65B8();
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
  result = sub_2C6668();
  __break(1u);
  return result;
}

Swift::Int sub_2B4BE4(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2B4594();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2B5950();
      goto LABEL_12;
    }

    sub_2B5E40();
  }

  v9 = *v3;
  result = sub_2C6188(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_68D34(*(v9 + 48) + 40 * a2, v19);
      v12 = sub_2C6198();
      result = sub_68D90(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2C6668();
  __break(1u);
  return result;
}

Swift::Int sub_2B4D5C(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2B47F4();
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_2B5AC8();
        goto LABEL_111;
      }

      sub_2B606C();
    }

    v9 = *v3;
    sub_2C6738();
    ContextActionType.rawValue.getter();
    sub_2C5958();

    result = sub_2C6778();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xE500000000000000;
        v13 = 0x6572616873;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v13 = 0x6957646572616873;
            v12 = 0xED0000756F596874;
            break;
          case 2:
            v13 = 0x6C636E4977656976;
            v12 = 0xEF46445064656475;
            break;
          case 3:
            v13 = 0x6F4374726F706572;
            v12 = 0xED00006E7265636ELL;
            break;
          case 4:
            v12 = 0xE800000000000000;
            v13 = 0x64616F6C6E776F64;
            break;
          case 5:
            v14 = 0x6C65636E6163;
            goto LABEL_29;
          case 6:
            v13 = 0x6C706D6153746567;
            v12 = 0xE900000000000065;
            break;
          case 7:
            v13 = 0x706D615364616572;
            v12 = 0xEA0000000000656CLL;
            break;
          case 8:
            v13 = 0x6D61536F69647561;
            v12 = 0xEB00000000656C70;
            break;
          case 9:
            v13 = 0xD000000000000012;
            v12 = 0x8000000000300270;
            break;
          case 0xA:
            v12 = 0xE600000000000000;
            v13 = 0x65766F6D6572;
            break;
          case 0xB:
            v14 = 0x65766F6D6572;
LABEL_29:
            v13 = v14 & 0xFFFFFFFFFFFFLL | 0x6F44000000000000;
            v12 = 0xEE0064616F6C6E77;
            break;
          case 0xC:
            v12 = 0xE600000000000000;
            v13 = 0x656D616E6572;
            break;
          case 0xD:
            v13 = 0x6E61576F54646461;
            v12 = 0xEF646165526F5474;
            break;
          case 0xE:
            v13 = 0xD000000000000014;
            v12 = 0x80000000003002B0;
            break;
          case 0xF:
            v13 = 0x6C6F436F54646461;
            v12 = 0xEF6E6F697463656CLL;
            break;
          case 0x10:
            v13 = 0x694673416B72616DLL;
            v12 = 0xEE0064656873696ELL;
            break;
          case 0x11:
            v13 = 0xD000000000000012;
            v12 = 0x80000000003002F0;
            break;
          case 0x12:
            v13 = 0xD000000000000010;
            v12 = 0x8000000000300310;
            break;
          case 0x13:
            v13 = 0x646F72506E65706FLL;
            v15 = 0x676150746375;
            goto LABEL_43;
          case 0x14:
            v12 = 0xE400000000000000;
            v13 = 1952868711;
            break;
          case 0x15:
            v13 = 0x656C7069746C756DLL;
            v12 = 0xEC00000074666947;
            break;
          case 0x16:
            v13 = 0x6552416574697277;
            v12 = 0xEC00000077656976;
            break;
          case 0x17:
            v12 = 0xE400000000000000;
            v13 = 1701538156;
            break;
          case 0x18:
            v12 = 0xE700000000000000;
            v13 = 0x656B696C736964;
            break;
          case 0x19:
            v12 = 0xE800000000000000;
            v13 = 0x7369685464616572;
            break;
          case 0x1A:
            v13 = 0x746963696C707865;
            v15 = 0x6E696C636544;
LABEL_43:
            v12 = v15 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
            break;
          case 0x1B:
            v12 = 0xE800000000000000;
            v13 = 0x6B6E694C79706F63;
            break;
          case 0x1C:
            v13 = 0xD000000000000018;
            v12 = 0x8000000000300380;
            break;
          case 0x1D:
            v12 = 0xE400000000000000;
            v13 = 1701998445;
            break;
          case 0x1E:
            v13 = 0xD000000000000012;
            v12 = 0x80000000003003A0;
            break;
          case 0x1F:
            v13 = 0xD000000000000015;
            v12 = 0x80000000003003C0;
            break;
          default:
            break;
        }

        v16 = 0xE500000000000000;
        v17 = 0x6572616873;
        switch(v6)
        {
          case 1:
            v18 = 0x6957646572616873;
            v19 = 0x756F596874;
            goto LABEL_67;
          case 2:
            v16 = 0xEF46445064656475;
            if (v13 != 0x6C636E4977656976)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 3:
            v18 = 0x6F4374726F706572;
            v19 = 0x6E7265636ELL;
LABEL_67:
            v16 = v19 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v13 != v18)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 4:
            v16 = 0xE800000000000000;
            if (v13 != 0x64616F6C6E776F64)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 5:
            v22 = 0x6C65636E6163;
            goto LABEL_78;
          case 6:
            v16 = 0xE900000000000065;
            if (v13 != 0x6C706D6153746567)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 7:
            v16 = 0xEA0000000000656CLL;
            if (v13 != 0x706D615364616572)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 8:
            v16 = 0xEB00000000656C70;
            if (v13 != 0x6D61536F69647561)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 9:
            v16 = 0x8000000000300270;
            if (v13 != 0xD000000000000012)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 10:
            v16 = 0xE600000000000000;
            if (v13 != 0x65766F6D6572)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 11:
            v22 = 0x65766F6D6572;
LABEL_78:
            v20 = v22 & 0xFFFFFFFFFFFFLL | 0x6F44000000000000;
            v21 = 0x64616F6C6E77;
            goto LABEL_79;
          case 12:
            v16 = 0xE600000000000000;
            if (v13 != 0x656D616E6572)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 13:
            v16 = 0xEF646165526F5474;
            if (v13 != 0x6E61576F54646461)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 14:
            v16 = 0x80000000003002B0;
            if (v13 != 0xD000000000000014)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 15:
            v16 = 0xEF6E6F697463656CLL;
            if (v13 != 0x6C6F436F54646461)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 16:
            v20 = 0x694673416B72616DLL;
            v21 = 0x64656873696ELL;
LABEL_79:
            v16 = v21 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v13 != v20)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 17:
            v16 = 0x80000000003002F0;
            if (v13 != 0xD000000000000012)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 18:
            v16 = 0x8000000000300310;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 19:
            v25 = 0x646F72506E65706FLL;
            v26 = 0x676150746375;
            goto LABEL_109;
          case 20:
            v16 = 0xE400000000000000;
            if (v13 != 1952868711)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 21:
            v23 = 0x656C7069746C756DLL;
            v24 = 1952868679;
            goto LABEL_95;
          case 22:
            v23 = 0x6552416574697277;
            v24 = 2003134838;
LABEL_95:
            v16 = v24 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v13 != v23)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 23:
            v16 = 0xE400000000000000;
            if (v13 != 1701538156)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 24:
            v16 = 0xE700000000000000;
            if (v13 != 0x656B696C736964)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 25:
            v16 = 0xE800000000000000;
            if (v13 != 0x7369685464616572)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 26:
            v25 = 0x746963696C707865;
            v26 = 0x6E696C636544;
LABEL_109:
            v16 = v26 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
            if (v13 != v25)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 27:
            v16 = 0xE800000000000000;
            if (v13 != 0x6B6E694C79706F63)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 28:
            v16 = 0x8000000000300380;
            if (v13 != 0xD000000000000018)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 29:
            v16 = 0xE400000000000000;
            v17 = 1701998445;
            goto LABEL_103;
          case 30:
            v16 = 0x80000000003003A0;
            if (v13 != 0xD000000000000012)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 31:
            v16 = 0x80000000003003C0;
            if (v13 != 0xD000000000000015)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          default:
LABEL_103:
            if (v13 != v17)
            {
              goto LABEL_105;
            }

LABEL_104:
            if (v12 == v16)
            {
              goto LABEL_114;
            }

LABEL_105:
            v27 = sub_2C65B8();

            if (v27)
            {
              goto LABEL_115;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_111:
  v28 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v28 + 48) + a2) = v6;
  v29 = *(v28 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
LABEL_114:

LABEL_115:
    sub_2C6668();
    __break(1u);
    JUMPOUT(0x2B56F4);
  }

  *(v28 + 16) = v31;
  return result;
}

void *sub_2B57F4()
{
  v1 = v0;
  sub_6620C(&qword_3CA3A8);
  v2 = *v0;
  v3 = sub_2C61B8();
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

void *sub_2B5950()
{
  v1 = v0;
  sub_6620C(&qword_3CA3A0);
  v2 = *v0;
  v3 = sub_2C61B8();
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_68D34(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

void *sub_2B5AC8()
{
  v1 = v0;
  sub_6620C(&qword_3CA398);
  v2 = *v0;
  v3 = sub_2C61B8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_2B5C08()
{
  v1 = v0;
  v2 = *v0;
  sub_6620C(&qword_3CA3A8);
  result = sub_2C61C8();
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
      sub_2C6738();

      sub_2C5958();
      result = sub_2C6778();
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

uint64_t sub_2B5E40()
{
  v1 = v0;
  v2 = *v0;
  sub_6620C(&qword_3CA3A0);
  result = sub_2C61C8();
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
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      sub_68D34(*(v2 + 48) + 40 * (v15 | (v5 << 6)), v25);
      result = sub_2C6188(*(v4 + 40));
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 40 * v11;
      v13 = v25[0];
      v14 = v25[1];
      *(v12 + 32) = v26;
      *v12 = v13;
      *(v12 + 16) = v14;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
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

uint64_t sub_2B606C()
{
  v1 = v0;
  v2 = *v0;
  sub_6620C(&qword_3CA398);
  result = sub_2C61C8();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_2C6738();
      ContextActionType.rawValue.getter();
      sub_2C5958();

      result = sub_2C6778();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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

uint64_t sub_2B62AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_2C5CE8();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2B364C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2B6344(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_2C5CE8();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_68D34(v4, v5);
      sub_2B379C(v6, v5);
      sub_68D90(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_2B63D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2B6C50();
  result = sub_2C5CE8();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_2B38E8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void *sub_2B6444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v2 = (a1 + 32);
  while (1)
  {
    v4 = *v2++;
    v3 = v4;
    v5 = byte_2FC8FA[v4];
    v7 = sub_5D71C(v5);
    v8 = _swiftEmptyDictionarySingleton[2];
    v9 = (v6 & 1) == 0;
    v10 = v8 + v9;
    if (__OFADD__(v8, v9))
    {
      break;
    }

    v11 = v6;
    if (_swiftEmptyDictionarySingleton[3] < v10)
    {
      sub_610A4(v10, 1);
      v12 = sub_5D71C(v5);
      if ((v11 & 1) != (v13 & 1))
      {
        goto LABEL_18;
      }

      v7 = v12;
    }

    if (v11)
    {
      v14 = _swiftEmptyDictionarySingleton[7];
      v15 = *(v14 + 8 * v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v14 + 8 * v7) = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_5CC00(0, *(v15 + 2) + 1, 1, v15);
        *(v14 + 8 * v7) = v15;
      }

      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      if (v18 >= v17 >> 1)
      {
        v15 = sub_5CC00((v17 > 1), v18 + 1, 1, v15);
        *(v14 + 8 * v7) = v15;
      }

      *(v15 + 2) = v18 + 1;
      v15[v18 + 32] = v3;
      if (!--v1)
      {
        return _swiftEmptyDictionarySingleton;
      }
    }

    else
    {
      sub_6620C(&qword_3BC160);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_2E3F30;
      *(v19 + 32) = v3;
      _swiftEmptyDictionarySingleton[(v7 >> 6) + 8] |= 1 << v7;
      *(_swiftEmptyDictionarySingleton[6] + v7) = v5;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v7) = v19;
      v20 = _swiftEmptyDictionarySingleton[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_17;
      }

      _swiftEmptyDictionarySingleton[2] = v22;
      if (!--v1)
      {
        return _swiftEmptyDictionarySingleton;
      }
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_6620C(&qword_3CA388);
  result = sub_2C6678();
  __break(1u);
  return result;
}

void *sub_2B6654()
{

  v1 = sub_2B63D0(v0);

  for (i = 0; i != 32; ++i)
  {
    v5 = *(&off_38A258 + i + 32);
    if (sub_2B1F38(v5, v1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_64C18(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v4 = _swiftEmptyArrayStorage[2];
      v3 = _swiftEmptyArrayStorage[3];
      if (v4 >= v3 >> 1)
      {
        sub_64C18((v3 > 1), v4 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v4 + 1;
      *(&_swiftEmptyArrayStorage[4] + v4) = v5;
    }
  }

  v6 = sub_2B6444(_swiftEmptyArrayStorage);

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    if (v6[2])
    {
      v10 = *(&off_38A298 + v7 + 32);
      v11 = sub_5D71C(v10);
      if (v12)
      {
        v13 = *(v6[7] + 8 * v11);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_5CACC(0, v8[2] + 1, 1, v8);
        }

        v15 = v8[2];
        v14 = v8[3];
        if (v15 >= v14 >> 1)
        {
          v8 = sub_5CACC((v14 > 1), v15 + 1, 1, v8);
        }

        v8[2] = v15 + 1;
        v9 = &v8[2 * v15];
        *(v9 + 32) = v10;
        v9[5] = v13;
      }
    }

    ++v7;
  }

  while (v7 != 10);

  return v8;
}

unint64_t sub_2B683C()
{
  result = qword_3CA350;
  if (!qword_3CA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA350);
  }

  return result;
}

unint64_t sub_2B6894()
{
  result = qword_3CA358;
  if (!qword_3CA358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA358);
  }

  return result;
}

unint64_t sub_2B691C()
{
  result = qword_3CA370;
  if (!qword_3CA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA370);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContextActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextActionType.ContextActionGroup(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContextActionType.ContextActionGroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2B6C50()
{
  result = qword_3CA390;
  if (!qword_3CA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA390);
  }

  return result;
}

uint64_t SeriesInfo.getPromotionState()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = sub_2C60B8();
  v64 = *(v65 - 8);
  v7 = __chkstk_darwin(v65);
  v67 = &v64 - v8;
  v69 = AssociatedTypeWitness;
  v68 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v7);
  v66 = &v64 - v9;
  v73 = a2;
  v10 = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v11 = sub_2BF6B8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  *a3 = 1;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  v71 = a3;
  v72 = a1;
  *(a3 + 40) = 5;
  sub_2BF378();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      (*(v12 + 8))(v14, v11);
      v23 = v70;
      v24 = sub_2BF328();
      if (!v23)
      {
        *&v77 = v24;
        v27 = v69;
        sub_2C5B98();
        swift_getWitnessTable();
        v28 = v67;
        sub_2C5D78();
        v29 = v68;
        if ((*(v68 + 48))(v28, 1, v27) != 1)
        {
          v46 = *(v29 + 32);
          v47 = v66;
          v46(v66, v28, v27);

          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v49 = (sub_2BFA48() & 0x7FFFFFFFFFFFFFFFLL) == 0;
          v51 = v49 & ~v50;
          *&v78[8] = v27;
          *&v78[16] = AssociatedConformanceWitness;
          v52 = sub_720C8(&v77);
          v46(v52, v47, v27);
          v53 = v71;
          result = sub_9150C(v71);
          v78[24] = v51;
          v54 = *v78;
          *v53 = v77;
          v53[1] = v54;
          *(v53 + 25) = *&v78[9];
          return result;
        }

        v30 = v71;
        sub_9150C(v71);
        (*(v64 + 8))(v28, v65);

        *v30 = 1;
        *(a3 + 8) = 0u;
        *(a3 + 24) = 0u;
        *(v30 + 40) = 5;
        sub_2B77E4();
        swift_allocError();
        swift_willThrow();
        v25 = v30;
        return sub_9150C(v25);
      }

LABEL_10:
      v25 = v71;
      return sub_9150C(v25);
    }

    (*(v12 + 8))(v14, v11);
  }

  else
  {

    (*(*(v10 - 8) + 8))(v14, v10);
  }

  v16 = v70;
  sub_2B7FF8(v72, v73, v76);
  if (v16)
  {
    goto LABEL_10;
  }

  sub_6932C(v76, &v77, &unk_3C2550);
  if (!*&v78[8])
  {
    sub_69198(v76, &unk_3C2550);
    v31 = v71;
    sub_9150C(v71);
    result = sub_69198(&v77, &unk_3C2550);
    *(v31 + 32) = 0;
    *v31 = 0u;
    *(v31 + 16) = 0u;
    *(v31 + 40) = 5;
    return result;
  }

  sub_693D0(&v77, v74);
  sub_72084(v74, v75);
  v17 = swift_getAssociatedTypeWitness();
  v18 = sub_2C60B8();
  v70 = &v64;
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v64 - v20;
  sub_2BF388();
  v22 = *(v17 - 8);
  if ((*(v22 + 48))(v21, 1, v17) == 1)
  {
    (*(v19 + 8))(v21, v18);
  }

  else
  {
    *&v78[8] = v17;
    *&v78[16] = swift_getAssociatedConformanceWitness();
    sub_720C8(&v77);
    (*(v22 + 32))();
    v32 = sub_2BF598();
    sub_68CD0(&v77);
    if (v32)
    {
LABEL_18:
      sub_72084(v74, v75);
      v34 = sub_2BF938();
      if (v34 != 2 && (v34 & 1) != 0)
      {
        sub_72084(v74, v75);
        v35 = swift_getAssociatedTypeWitness();
        v36 = sub_2C60B8();
        v70 = &v64;
        v37 = *(v36 - 8);
        __chkstk_darwin(v36);
        v39 = &v64 - v38;
        sub_2BF388();
        v40 = *(v35 - 8);
        if ((*(v40 + 48))(v39, 1, v35) == 1)
        {
          (*(v37 + 8))(v39, v36);
LABEL_32:
          v60 = sub_2B9680(v74);
          sub_69198(v76, &unk_3C2550);
          v61 = v71;
          sub_9150C(v71);
          sub_691F8(v74, &v77);
          if (v60)
          {
            v62 = 0;
          }

          else
          {
            v62 = 4;
          }

          v78[24] = v62;
          v63 = *v78;
          *v61 = v77;
          v61[1] = v63;
          *(v61 + 25) = *&v78[9];
          return sub_68CD0(v74);
        }

        *&v78[8] = v35;
        *&v78[16] = swift_getAssociatedConformanceWitness();
        sub_720C8(&v77);
        (*(v40 + 32))();
        v57 = sub_2BF598();
        sub_68CD0(&v77);
        if ((v57 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      sub_72084(v74, v75);
      sub_2BF9E8();
      v59 = v58;
      sub_69198(v76, &unk_3C2550);
      v55 = v71;
      sub_9150C(v71);
      sub_691F8(v74, v55);
      if (v59 == 0.0)
      {
        v56 = 2;
      }

      else
      {
        v56 = 3;
      }

      goto LABEL_30;
    }
  }

  sub_72084(v74, v75);
  v33 = sub_2BF938();
  if (v33 != 2 && (v33 & 1) != 0)
  {
    goto LABEL_18;
  }

  if ((sub_2B9680(v74) & 1) == 0)
  {
    sub_69198(v76, &unk_3C2550);
    v55 = v71;
    sub_9150C(v71);
    sub_691F8(v74, v55);
    v56 = 4;
LABEL_30:
    *(v55 + 40) = v56;
    return sub_68CD0(v74);
  }

  sub_72084(v74, v75);
  v41 = sub_2BFA48();
  v43 = v42;
  sub_69198(v76, &unk_3C2550);
  v44 = v71;
  sub_9150C(v71);
  sub_691F8(v74, &v77);
  v78[24] = ((v41 & 0x7FFFFFFFFFFFFFFFLL) == 0) & ~v43;
  v45 = *v78;
  *v44 = v77;
  v44[1] = v45;
  *(v44 + 25) = *&v78[9];
  return sub_68CD0(v74);
}

unint64_t sub_2B77E4()
{
  result = qword_3CA3B0;
  if (!qword_3CA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA3B0);
  }

  return result;
}

uint64_t sub_2B7838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_6620C(&qword_3CA3C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v62[-v7];
  v9 = sub_6620C(&qword_3C5430);
  __chkstk_darwin(v9 - 8);
  v11 = &v62[-v10];
  v12 = sub_6620C(&qword_3CA3C8);
  __chkstk_darwin(v12 - 8);
  v14 = &v62[-v13];
  v15 = sub_2BE988();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v62[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_2BF3B8();
  v21 = HIBYTE(v20) & 0xF;
  v22 = result & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v23 = result & 0xFFFFFFFFFFFFLL;
  }

  v64 = a3;
  v65 = v18;
  if (!v23)
  {

    goto LABEL_64;
  }

  if ((v20 & 0x1000000000000000) != 0)
  {
    v68 = 0;
    v66 = sub_2BA7EC(result, v20, 10);
    v63 = v60;

    if ((v63 & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if ((v20 & 0x2000000000000000) != 0)
  {
    v67[0] = result;
    v67[1] = v20 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v21)
      {
        v22 = v21 - 1;
        if (v21 != 1)
        {
          v25 = 0;
          v39 = v67 + 1;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              break;
            }

            v41 = (v25 * 10) >> 64;
            v42 = 10 * v25;
            if (v41 != v42 >> 63)
            {
              break;
            }

            v30 = __OFADD__(v42, v40);
            v25 = v42 + v40;
            if (v30)
            {
              break;
            }

            ++v39;
            if (!--v22)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_82:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v21)
      {
        v25 = 0;
        v47 = v67;
        while (1)
        {
          v48 = *v47 - 48;
          if (v48 > 9)
          {
            break;
          }

          v49 = (v25 * 10) >> 64;
          v50 = 10 * v25;
          if (v49 != v50 >> 63)
          {
            break;
          }

          v30 = __OFADD__(v50, v48);
          v25 = v50 + v48;
          if (v30)
          {
            break;
          }

          ++v47;
          if (!--v21)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v21)
    {
      v22 = v21 - 1;
      if (v21 != 1)
      {
        v25 = 0;
        v31 = v67 + 1;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = (v25 * 10) >> 64;
          v34 = 10 * v25;
          if (v33 != v34 >> 63)
          {
            break;
          }

          v30 = __OFSUB__(v34, v32);
          v25 = v34 - v32;
          if (v30)
          {
            break;
          }

          ++v31;
          if (!--v22)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_80;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v20 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2C6248();
    v22 = v61;
    v18 = v65;
  }

  v24 = *result;
  if (v24 == 43)
  {
    if (v22 >= 1)
    {
      if (--v22)
      {
        v25 = 0;
        if (result)
        {
          v35 = (result + 1);
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              goto LABEL_61;
            }

            v37 = (v25 * 10) >> 64;
            v38 = 10 * v25;
            if (v37 != v38 >> 63)
            {
              goto LABEL_61;
            }

            v30 = __OFADD__(v38, v36);
            v25 = v38 + v36;
            if (v30)
            {
              goto LABEL_61;
            }

            ++v35;
            if (!--v22)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v25 = 0;
      LOBYTE(v22) = 1;
      goto LABEL_62;
    }

    goto LABEL_81;
  }

  if (v24 == 45)
  {
    if (v22 >= 1)
    {
      if (--v22)
      {
        v25 = 0;
        if (result)
        {
          v26 = (result + 1);
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              goto LABEL_61;
            }

            v28 = (v25 * 10) >> 64;
            v29 = 10 * v25;
            if (v28 != v29 >> 63)
            {
              goto LABEL_61;
            }

            v30 = __OFSUB__(v29, v27);
            v25 = v29 - v27;
            if (v30)
            {
              goto LABEL_61;
            }

            ++v26;
            if (!--v22)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v22) = 0;
LABEL_62:
        v66 = v25;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (!v22)
  {
    goto LABEL_72;
  }

  v43 = 0;
  if (result)
  {
    while (1)
    {
      v44 = *result - 48;
      if (v44 > 9)
      {
        break;
      }

      v45 = (v43 * 10) >> 64;
      v46 = 10 * v43;
      if (v45 != v46 >> 63)
      {
        break;
      }

      v30 = __OFADD__(v46, v44);
      v43 = v46 + v44;
      if (v30)
      {
        break;
      }

      ++result;
      if (!--v22)
      {
        goto LABEL_74;
      }
    }

LABEL_72:
    LOBYTE(v22) = 1;
    v66 = 0;
    goto LABEL_63;
  }

  LOBYTE(v22) = 0;
LABEL_74:
  v66 = v43;
LABEL_63:
  v68 = v22;
  v51 = v22;

  if (v51)
  {
LABEL_64:
    v66 = 0;
  }

LABEL_65:
  v52 = sub_2B7E40();
  v53 = &enum case for ContentType.audiobook(_:);
  if ((v52 & 1) == 0)
  {
    v53 = &enum case for ContentType.book(_:);
  }

  (*(v16 + 104))(v18, *v53, v15);
  sub_2BF2C8();
  v55 = v8;
  if (v54)
  {
    sub_2BF2F8();
  }

  sub_2BA194(a1, a2, v14);
  v56 = sub_2BF348();
  v57 = sub_2BE908();
  v58 = *(v57 - 8);
  v59 = &enum case for SeriesType.ordered(_:);
  if ((v56 & 1) == 0)
  {
    v59 = &enum case for SeriesType.unOrdered(_:);
  }

  (*(*(v57 - 8) + 104))(v11, *v59, v57);
  (*(v58 + 56))(v11, 0, 1, v57);
  sub_2BA4F4(a1, a2, v55);
  return sub_2BE8E8();
}

uint64_t sub_2B7E40()
{
  v0 = sub_2BF368();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  sub_2BF278();
  (*(v1 + 104))(v4, enum case for SeriesType.audiobook(_:), v0);
  sub_257E10();
  sub_2C5A88();
  sub_2C5A88();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2C65B8();
  }

  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);

  return v7 & 1;
}

uint64_t sub_2B7FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v108 = sub_2C60B8();
  v110 = *(v108 - 8);
  v5 = __chkstk_darwin(v108);
  v101 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v102 = &v100 - v8;
  v9 = __chkstk_darwin(v7);
  v107 = &v100 - v10;
  v11 = __chkstk_darwin(v9);
  v114 = &v100 - v12;
  v13 = __chkstk_darwin(v11);
  v113 = &v100 - v14;
  __chkstk_darwin(v13);
  v112 = &v100 - v15;
  v16 = sub_2BF738();
  v105 = *(v16 - 8);
  v106 = v16;
  __chkstk_darwin(v16);
  v104 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v103 = v18;
  v19 = sub_2BF6B8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v100 - v21;
  if ((sub_2BF348() & 1) == 0)
  {
    v24 = WitnessTable;
    result = sub_2BF328();
    if (!v24)
    {
      *&v131 = result;
      v26 = __chkstk_darwin(result);
      *(&v100 - 2) = a1;
      *(&v100 - 1) = a2;
      v27 = a2;
      v28 = a1;
      v29 = v26;
      sub_2C5B98();
      WitnessTable = swift_getWitnessTable();
      v30 = sub_2C5A68();
      *&v131 = v29;
      __chkstk_darwin(v30);
      *(&v100 - 2) = v28;
      *(&v100 - 1) = v27;
      sub_2C5A68();
      v106 = v29;
      *&v131 = v29;
      __chkstk_darwin(v29);
      *(&v100 - 2) = v28;
      *(&v100 - 1) = v27;
      v100 = v28;

      swift_getWitnessTable();
      *&v131 = sub_2C6268();
      __chkstk_darwin(v131);
      *(&v100 - 2) = v28;
      *(&v100 - 1) = v27;
      sub_2C5A58();

      *&v131 = v106;
      __chkstk_darwin(v31);
      *(&v100 - 2) = v100;
      *(&v100 - 1) = v27;
      v109 = v27;
      v32 = sub_2C5A48();
      v103 = 0;

      if (v32)
      {
        v33 = *(v110 + 8);
        v34 = v108;
        v33(v114, v108);
        v33(v113, v34);
        v33(v112, v34);
        v35 = v107;
        (*(*(AssociatedTypeWitness - 8) + 56))(v107, 1, 1);
      }

      else
      {
        v43 = *(v110 + 16);
        v44 = v102;
        v34 = v108;
        v43(v102, v114, v108);
        v45 = AssociatedTypeWitness;
        v46 = *(AssociatedTypeWitness - 8);
        v47 = *(v46 + 48);
        if (v47(v44, 1, AssociatedTypeWitness) == 1)
        {
          WitnessTable = v46;
          v48 = v45;
          v49 = v101;
          v43(v101, v113, v34);
          if (v47(v49, 1, v48) == 1)
          {
            v50 = v107;
            v43(v107, v112, v34);
            v35 = v50;
            v44 = v102;
            v51 = v47(v49, 1, v48) == 1;
            v52 = v49;
            v45 = v48;
            v53 = v47;
            if (!v51)
            {
              (*(v110 + 8))(v52, v34);
            }
          }

          else
          {
            v92 = WitnessTable;
            v35 = v107;
            (*(WitnessTable + 32))(v107, v49, v48);
            (*(v92 + 56))(v35, 0, 1, v48);
            v45 = v48;
            v53 = v47;
          }

          v47 = v53;
          v51 = v53(v44, 1, v45) == 1;
          v93 = v44;
          v88 = v112;
          v46 = WitnessTable;
          v89 = v110;
          if (!v51)
          {
            (*(v110 + 8))(v93, v34);
          }
        }

        else
        {
          v35 = v107;
          (*(v46 + 32))(v107, v44, v45);
          (*(v46 + 56))(v35, 0, 1, v45);
          v88 = v112;
          v89 = v110;
        }

        if (v47(v35, 1, v45) != 1)
        {
          v95 = v111;
          v111[3] = v45;
          v95[4] = swift_getAssociatedConformanceWitness();
          v96 = sub_720C8(v95);
          (*(v46 + 32))(v96, v35, v45);
          v97 = *(v89 + 8);
          v97(v114, v34);
          v97(v113, v34);
          return (v97)(v88, v34);
        }

        v33 = *(v89 + 8);
        v33(v114, v34);
        v33(v113, v34);
        v33(v88, v34);
      }

      result = (v33)(v35, v34);
      v94 = v111;
      v111[4] = 0;
      *v94 = 0u;
      *(v94 + 1) = 0u;
      return result;
    }

    return result;
  }

  v109 = a2;
  sub_2BF378();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      (*(v20 + 8))(v22, v19);
      v40 = v104;
      v39 = v105;
      v41 = v106;
      (*(v105 + 104))(v104, enum case for SeriesListSortOrder.ascending(_:), v106);
      v42 = WitnessTable;
      sub_2BF328();
      v103 = v42;
      if (v42)
      {
        return (*(v39 + 8))(v40, v41);
      }

      sub_6620C(&qword_3BC2C8);
      sub_2C6358();

      v38 = sub_2BF708();

      (*(v39 + 8))(v40, v41);
      goto LABEL_18;
    }

    (*(v20 + 8))(v22, v19);
  }

  else
  {
    v36 = v103;

    (*(*(v36 - 8) + 8))(v22, v36);
  }

  v37 = WitnessTable;
  result = sub_2BF328();
  if (v37)
  {
    return result;
  }

  v103 = 0;
  sub_6620C(&qword_3BC2C8);
  v38 = sub_2C6358();

LABEL_18:
  v54 = *(v38 + 16);

  if (v54)
  {
    v55 = 0;
    v56 = v38 + 32;
    while (v55 < *(v38 + 16))
    {
      sub_691F8(v56, &v131);
      sub_72084(&v131, *(&v132 + 1));
      if (sub_2B9A74())
      {
        result = sub_693D0(&v131, &v137);
        goto LABEL_26;
      }

      ++v55;
      result = sub_68CD0(&v131);
      v56 += 40;
      if (v54 == v55)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_115;
  }

LABEL_23:
  v139 = 0;
  v137 = 0u;
  v138 = 0u;
  if (v54)
  {
LABEL_26:
    v57 = 0;
    v58 = v38 + 32;
    while (v57 < *(v38 + 16))
    {
      sub_691F8(v58, &v131);
      sub_72084(&v131, *(&v132 + 1));
      if (sub_2B9A74())
      {
        sub_72084(&v131, *(&v132 + 1));
        v59 = sub_2BF948();
        if (v59 != 2 && (v59 & 1) != 0)
        {
          result = sub_693D0(&v131, &v134);
          goto LABEL_34;
        }
      }

      ++v57;
      result = sub_68CD0(&v131);
      v58 += 40;
      if (v54 == v57)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_112;
  }

LABEL_33:
  v136 = 0;
  v134 = 0u;
  v135 = 0u;
LABEL_34:
  WitnessTable = v38;
  if (v54)
  {
    v60 = 0;
    v61 = WitnessTable + 32;
    v62 = &_swiftEmptyArrayStorage;
    while (v60 < *(WitnessTable + 16))
    {
      *&v125 = v60;
      sub_691F8(v61, &v125 + 8);
      v129 = v126;
      v130 = v127;
      v128 = v125;
      sub_72084(&v128 + 1, v127);
      if (sub_2B9AD8())
      {
        v125 = v128;
        v126 = v129;
        v127 = v130;
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v122 = v62;
        if ((result & 1) == 0)
        {
          result = sub_64634(0, v62[2] + 1, 1);
          v62 = v122;
        }

        v64 = v62[2];
        v63 = v62[3];
        if (v64 >= v63 >> 1)
        {
          result = sub_64634((v63 > 1), v64 + 1, 1);
          v62 = v122;
        }

        v62[2] = v64 + 1;
        v65 = &v62[6 * v64];
        v66 = v125;
        v67 = v127;
        v65[3] = v126;
        v65[4] = v67;
        v65[2] = v66;
      }

      else
      {
        result = sub_69198(&v128, &unk_3BDC50);
      }

      ++v60;
      v61 += 40;
      if (v54 == v60)
      {
        goto LABEL_46;
      }
    }

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
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v62 = &_swiftEmptyArrayStorage;
LABEL_46:
  v68 = v62[2];
  if (v68)
  {
    result = sub_6932C((v62 + 4), &v128, &unk_3BDC50);
    AssociatedTypeWitness = v62;
    if (v68 != 1)
    {
      v79 = (v62 + 10);
      v80 = 1;
      while (v80 < *(AssociatedTypeWitness + 16))
      {
        sub_6932C(v79, &v125, &unk_3BDC50);
        v82 = *(&v127 + 1);
        v81 = v127;
        sub_72084(&v125 + 1, v127);
        sub_6932C(&v128, &v122, &unk_3BDC50);
        sub_693D0((&v122 + 8), &v119);
        LOBYTE(v81) = sub_2B9B5C(&v119, v81, v82);
        sub_69198(&v119, &unk_3C2550);
        if (v81)
        {
          result = sub_69198(&v128, &unk_3BDC50);
          v128 = v125;
          v129 = v126;
          v130 = v127;
        }

        else
        {
          result = sub_69198(&v125, &unk_3BDC50);
        }

        ++v80;
        v79 += 48;
        if (v68 == v80)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_116;
    }

LABEL_48:

    v131 = v128;
    v132 = v129;
    v69 = v130;
  }

  else
  {

    v69 = 0uLL;
    v131 = 0u;
    v132 = 0u;
  }

  v133 = v69;
  v70 = WitnessTable;
  v71 = *(WitnessTable + 16);
  if (v71)
  {
    v72 = WitnessTable + 32;
    v73 = v71 - 1;
    sub_691F8(WitnessTable + 32 + 40 * (v71 - 1), &v122 + 8);
    *&v125 = v71 - 1;
    sub_693D0((&v122 + 8), &v125 + 8);
    v123 = v126;
    v124 = v127;
    v122 = v125;
    sub_72084(&v122 + 1, v127);
    if (sub_2B9ED4())
    {
LABEL_60:

      v128 = v122;
      v129 = v123;
      v130 = v124;
      result = sub_6932C(&v128, &v125, &qword_3CA3D0);
      if (!v127)
      {
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v76 = v125 + 1;
      if (__OFADD__(v125, 1))
      {
        goto LABEL_117;
      }

      sub_68CD0(&v125 + 8);
      v77 = *(v70 + 16);
      if (v130)
      {
        if (v76 != v77)
        {
          result = sub_6932C(&v128, &v122, &qword_3CA3D0);
          if (!v124)
          {
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          v83 = v122 + 1;
          if (__OFADD__(v122, 1))
          {
            goto LABEL_118;
          }

          sub_68CD0(&v122 + 8);
          *&v125 = v83;
          result = sub_6932C(&v128, &v122, &qword_3CA3D0);
          if (!v124)
          {
LABEL_124:
            __break(1u);
            return result;
          }

          v84 = v122 + 1;
          if (__OFADD__(v122, 1))
          {
            goto LABEL_119;
          }

          result = sub_68CD0(&v122 + 8);
          if ((v84 & 0x8000000000000000) != 0)
          {
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          if (v84 >= *(v70 + 16))
          {
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

          sub_691F8(v72 + 40 * v84, &v125 + 8);

          goto LABEL_81;
        }

        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
      }

      else
      {

        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        if (v76 != v77)
        {
          goto LABEL_81;
        }
      }

      sub_6932C(&v131, &v122, &qword_3CA3D0);
      if (!v124)
      {
        sub_69198(&v122, &qword_3CA3D0);
        sub_69198(&v125, &qword_3CA3D0);
        sub_69198(&v131, &qword_3CA3D0);
        sub_69198(&v134, &unk_3C2550);
        sub_69198(&v137, &unk_3C2550);
        result = sub_69198(&v128, &qword_3CA3D0);
        v91 = v111;
        *v111 = 0u;
        *(v91 + 16) = 0u;
        *(v91 + 32) = 0;
        return result;
      }

      sub_69198(&v125, &qword_3CA3D0);
      sub_69198(&v131, &qword_3CA3D0);
      sub_69198(&v134, &unk_3C2550);
      sub_69198(&v137, &unk_3C2550);
      sub_69198(&v128, &qword_3CA3D0);
      v119 = v122;
      v120 = v123;
      v121 = v124;
      v78 = &v119;
      return sub_693D0((v78 | 8), v111);
    }

    AssociatedTypeWitness = v70 + 32;
    result = sub_69198(&v122, &unk_3BDC50);
    if (v71 != 1)
    {
      v74 = v70 + 40 * v71 - 48;
      do
      {
        v75 = v73 - 1;
        if (__OFSUB__(v73, 1))
        {
          goto LABEL_113;
        }

        if (v73 > *(WitnessTable + 16))
        {
          goto LABEL_114;
        }

        sub_691F8(v74, &v122 + 8);
        *&v125 = v73 - 1;
        sub_693D0((&v122 + 8), &v125 + 8);
        v123 = v126;
        v124 = v127;
        v122 = v125;
        sub_72084(&v122 + 1, v127);
        if (sub_2B9ED4())
        {
          v70 = WitnessTable;
          v72 = AssociatedTypeWitness;
          goto LABEL_60;
        }

        result = sub_69198(&v122, &unk_3BDC50);
        v74 -= 40;
        --v73;
      }

      while (v75);
    }
  }

  v128 = 0u;
  v129 = 0u;
  v130 = 0u;

  v126 = 0u;
  v127 = 0u;
  v125 = 0u;
LABEL_81:
  sub_6932C(&v131, &v119, &qword_3CA3D0);
  if (v121)
  {
    v122 = v119;
    v123 = v120;
    v124 = v121;
    sub_6932C(&v125, &v116, &qword_3CA3D0);
    if (v118)
    {
      sub_69198(&v125, &qword_3CA3D0);
      sub_69198(&v131, &qword_3CA3D0);
      sub_69198(&v134, &unk_3C2550);
      sub_69198(&v137, &unk_3C2550);
      v119 = v116;
      v120 = v117;
      v121 = v118;
      v85 = v116;
      v86 = v122;
      sub_69198(&v128, &qword_3CA3D0);
      if (v86 >= v85)
      {
        sub_69198(&v119, &unk_3BDC50);
        v116 = v122;
        v117 = v123;
        v87 = v124;
      }

      else
      {
        sub_69198(&v122, &unk_3BDC50);
        v116 = v119;
        v117 = v120;
        v87 = v121;
      }

      v118 = v87;
      v78 = &v116;
      return sub_693D0((v78 | 8), v111);
    }

    sub_69198(&v122, &unk_3BDC50);
    v90 = &v116;
  }

  else
  {
    v90 = &v119;
  }

  sub_69198(v90, &qword_3CA3D0);
  v123 = v126;
  v124 = v127;
  v122 = v125;
  if (v127)
  {
    sub_69198(&v131, &qword_3CA3D0);
    sub_69198(&v134, &unk_3C2550);
    sub_69198(&v137, &unk_3C2550);
    sub_693D0((&v122 + 8), &v119);
    sub_693D0(&v119, v111);
  }

  else
  {
    sub_69198(&v122, &qword_3CA3D0);
    v119 = 0u;
    v120 = 0u;
    *&v121 = 0;
    v123 = v132;
    v124 = v133;
    v122 = v131;
    if (v133)
    {
      sub_69198(&v134, &unk_3C2550);
      sub_69198(&v137, &unk_3C2550);
      sub_693D0((&v122 + 8), &v116);
      sub_693D0(&v116, v111);
    }

    else
    {
      sub_69198(&v122, &qword_3CA3D0);
      v116 = 0u;
      v117 = 0u;
      *&v118 = 0;
      v122 = v134;
      v123 = v135;
      *&v124 = v136;
      if (*(&v135 + 1))
      {
        sub_69198(&v137, &unk_3C2550);
        sub_693D0(&v122, v111);
        if (*(&v117 + 1))
        {
          sub_69198(&v116, &unk_3C2550);
        }
      }

      else
      {
        v98 = v138;
        v99 = v111;
        *v111 = v137;
        *(v99 + 16) = v98;
        *(v99 + 32) = v139;
      }
    }

    if (*(&v120 + 1))
    {
      sub_69198(&v119, &unk_3C2550);
    }
  }

  return sub_69198(&v128, &qword_3CA3D0);
}

uint64_t sub_2B9680(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_2C60B8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - v5;
  v16 = sub_2BF328();
  sub_2C5B98();
  swift_getWitnessTable();
  sub_2C5D78();

  v8 = *(AssociatedTypeWitness - 8);
  if ((*(v8 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {
    (*(v4 + 8))(v6, v3);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    v9 = sub_2BF3B8();
    v10 = v11;
    (*(v8 + 8))(v6, AssociatedTypeWitness);
  }

  sub_72084(a1, a1[3]);
  v12 = sub_2BF3B8();
  if (v10)
  {
    if (v9 == v12 && v10 == v13)
    {

      v15 = 1;
    }

    else
    {
      v15 = sub_2C65B8();
    }
  }

  else
  {

    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_2B9930(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 4)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_2B994C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2B9988(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2B99D4(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_2B9A20()
{
  result = qword_3CA3B8;
  if (!qword_3CA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA3B8);
  }

  return result;
}

uint64_t sub_2B9A74()
{
  sub_2BF9E8();
  if (v0 == 0.0)
  {
    v1 = sub_2BF918();
    v2 = v1 ^ 1;
    if (v1 == 2)
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_2B9AD8()
{
  sub_2BF9E8();
  if (v0 <= 0.0 || (sub_2BF9E8(), v1 >= 0.85))
  {
    v3 = 0;
  }

  else
  {
    v2 = sub_2BF918();
    v3 = v2 ^ 1;
    if (v2 == 2)
    {
      v3 = 1;
    }
  }

  return v3 & 1;
}

uint64_t sub_2B9B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v6 = sub_6620C(&qword_3BC418);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v26 - v11;
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = sub_2BE588();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v30 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v26 - v19;
  v32 = a2;
  sub_2BF9D8();
  v21 = *(v16 + 48);
  if (v21(v14, 1, v15) == 1)
  {
    v12 = v14;
LABEL_8:
    sub_69198(v12, &qword_3BC418);
    sub_2BF9D8();
    v23 = v21(v9, 1, v15) != 1;
    sub_69198(v9, &qword_3BC418);
    return v23 & 1;
  }

  v28 = a3;
  v29 = v3;
  v27 = *(v16 + 32);
  v27(v20, v14, v15);
  sub_6932C(v31, v33, &unk_3C2550);
  if (!v34)
  {
    sub_69198(v33, &unk_3C2550);
    (*(v16 + 56))(v12, 1, 1, v15);
    goto LABEL_7;
  }

  sub_72084(v33, v34);
  sub_2BF9D8();
  sub_68CD0(v33);
  if (v21(v12, 1, v15) == 1)
  {
LABEL_7:
    (*(v16 + 8))(v20, v15);
    goto LABEL_8;
  }

  v22 = v30;
  v27(v30, v12, v15);
  v23 = sub_2BE508();
  v24 = *(v16 + 8);
  v24(v22, v15);
  v24(v20, v15);
  return v23 & 1;
}

uint64_t sub_2B9ED4()
{
  sub_2BF9E8();
  if (v0 >= 0.85)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_2BF918();
  }

  return v1 & 1;
}

uint64_t sub_2B9F30()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (sub_2B9A74())
  {
    v0 = sub_2BF948();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_2B9FE0(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6[4] = AssociatedConformanceWitness;
  v4 = sub_720C8(v6);
  (*(*(AssociatedTypeWitness - 8) + 16))(v4, a1, AssociatedTypeWitness);
  LOBYTE(AssociatedConformanceWitness) = sub_2B9B5C(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_69198(v6, &unk_3C2550);
  return AssociatedConformanceWitness & 1;
}

uint64_t sub_2BA0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return a4(AssociatedTypeWitness, AssociatedConformanceWitness) & 1;
}

uint64_t sub_2BA194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_6620C(&qword_3CA3C8);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = sub_2BEC08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(a3, 1, 1, v9);
  SeriesInfo.getPromotionState()(a1, a2, v22);
  sub_91668(v22, &v17);
  if (v21 > 2u)
  {
    if (v21 - 3 >= 2)
    {
      if (v19 | v20 | v17 | v18 | *(&v17 + 1))
      {
        sub_9150C(v22);
        sub_69198(a3, &qword_3CA3C8);
        (*(v10 + 104))(a3, enum case for SeriesUserStatus.unknown(_:), v9);
        v11(a3, 0, 1, v9);
        return sub_9150C(&v17);
      }

      sub_9150C(v22);
      sub_69198(a3, &qword_3CA3C8);
      v12 = &enum case for SeriesUserStatus.completed(_:);
    }

    else
    {
      sub_9150C(v22);
      sub_69198(a3, &qword_3CA3C8);
      sub_9150C(&v17);
      v12 = &enum case for SeriesUserStatus.inProgress(_:);
    }

    goto LABEL_6;
  }

  if (v21 < 2u)
  {
    sub_9150C(v22);
    sub_69198(a3, &qword_3CA3C8);
    sub_9150C(&v17);
    v12 = &enum case for SeriesUserStatus.new(_:);
LABEL_6:
    (*(v10 + 104))(a3, *v12, v9);
    return (v11)(a3, 0, 1, v9);
  }

  sub_693D0(&v17, v16);
  v14 = sub_2B9680(v16);
  sub_68CD0(v16);
  sub_9150C(v22);
  sub_69198(a3, &qword_3CA3C8);
  v15 = &enum case for SeriesUserStatus.new(_:);
  if ((v14 & 1) == 0)
  {
    v15 = &enum case for SeriesUserStatus.inProgress(_:);
  }

  (*(v10 + 104))(v8, *v15, v9);
  v11(v8, 0, 1, v9);
  return sub_2BAD78(v8, a3);
}

uint64_t sub_2BA4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2BECF8();
  v7 = *(v6 - 8);
  v10 = *(v7 + 56);
  v10(a3, 1, 1, v6);
  SeriesInfo.getPromotionState()(a1, a2, &v13);
  sub_69198(a3, &qword_3CA3C0);
  *&v12[9] = *&v14[9];
  v11 = v13;
  *v12 = *v14;
  if (v14[24] <= 2u)
  {
    if (v14[24])
    {
      if (v14[24] == 1)
      {
        v8 = &enum case for SeriesUserSubStatus.getFirstItemFree(_:);
      }

      else
      {
        v8 = &enum case for SeriesUserSubStatus.startSeries(_:);
      }
    }

    else
    {
      v8 = &enum case for SeriesUserSubStatus.seriesSample(_:);
    }

    goto LABEL_13;
  }

  if (v14[24] == 3)
  {
    v8 = &enum case for SeriesUserSubStatus.continueSeries(_:);
    goto LABEL_13;
  }

  if (v14[24] == 4)
  {
    v8 = &enum case for SeriesUserSubStatus.nextInSeries(_:);
LABEL_13:
    (*(v7 + 104))(a3, *v8, v6);
    v10(a3, 0, 1, v6);
    return sub_9150C(&v11);
  }

  if (*&v12[8] | *&v12[16] | v11 | *v12 | *(&v11 + 1))
  {
    v8 = &enum case for SeriesUserSubStatus.unknown(_:);
    goto LABEL_13;
  }

  (*(v7 + 104))(a3, enum case for SeriesUserSubStatus.shareSeries(_:), v6);

  return (v10)(a3, 0, 1, v6);
}

void *sub_2BA778(uint64_t a1, uint64_t a2)
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

  sub_6620C(&qword_3BC358);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_2BA7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2C5A18();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2BADE8();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2C6248();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2BAD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3CA3C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2BADE8()
{
  v0 = sub_2C5A28();
  v4 = sub_2BAE68(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2BAE68(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2C60D8();
    if (!v9 || (v10 = v9, v11 = sub_2BA778(v9, 0), v12 = sub_2BAFC0(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2C5948();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2C5948();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2C6248();
LABEL_4:

  return sub_2C5948();
}

unint64_t sub_2BAFC0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2BB1E0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2C59B8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2C6248();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2BB1E0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2C5998();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2BB1E0(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2C59C8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_2C59A8();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_2BB338()
{
  sub_227310();
  sub_2C3108();
  return v1;
}

uint64_t sub_2BB374()
{
  v1 = type metadata accessor for Shelf();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v13 - v6);
  result = type metadata accessor for Page();
  v9 = *(v0 + *(result + 60));
  v10 = *(v9 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  while (v11 < *(v9 + 16))
  {
    sub_2BC3D4(v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v11, v4, type metadata accessor for Shelf);
    v14._object = 0x8000000000308870;
    v14._countAndFlagsBits = 0xD000000000000011;
    if (sub_2C59D8(v14))
    {
      sub_2BC5B4(v4, v7, type metadata accessor for Shelf);
      v12 = *v7;

      sub_9160C(v7);
      return v12;
    }

    ++v11;
    result = sub_9160C(v4);
    if (v10 == v11)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2BB550()
{
  swift_getKeyPath();
  sub_2BC37C();
  sub_2BE6F8();

  return *(v0 + 16);
}

uint64_t sub_2BB5C0(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2BC37C();
    sub_2BE6E8();
  }

  return result;
}

uint64_t sub_2BB694()
{
  v1 = OBJC_IVAR____TtC11BookStoreUI15StorePPTTrigger___observationRegistrar;
  v2 = sub_2BE738();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2BB76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BC7B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_2BB85C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3BC7B8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 24) = a2;
  }

  return result;
}

void sub_2BB948()
{
  sub_2BBB24(319, &qword_3C1700, &qword_3BDB00, &unk_2E6E10, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_2BBAD0(319, &unk_3C0BB8, type metadata accessor for HostProxy);
    if (v1 <= 0x3F)
    {
      sub_2BBB24(319, &qword_3BC838, &qword_3BC840, &unk_2ED0A0, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_2BBAD0(319, &qword_3BC848, &type metadata accessor for OpaqueMetricsFieldsContext);
        if (v3 <= 0x3F)
        {
          sub_2BBB24(319, &qword_3BE098, &qword_3BC248, &unk_2E2F20, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2BBAD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2C2558();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2BBB24(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_718D4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2BBBB4()
{
  v1 = v0;
  v2 = type metadata accessor for OnStoreProductPagePPTModifier(0);
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2C30F8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);

  if ((v10 & 1) == 0)
  {
    sub_2C5DD8();
    v18 = v5;
    v11 = sub_2C3718();
    v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v18);
    v9 = v20;
  }

  v12 = *(v9 + 32);

  swift_getKeyPath();
  v20 = v12;
  sub_2BC37C();
  sub_2BE6F8();

  v13 = *(v12 + 16);

  v20 = v13;
  sub_2BC3D4(v1, v4, type metadata accessor for OnStoreProductPagePPTModifier);
  v14 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v15 = swift_allocObject();
  sub_2BC5B4(v4, v15 + v14, type metadata accessor for OnStoreProductPagePPTModifier);
  sub_6620C(&qword_3CA5A0);
  sub_2BC67C();
  sub_2C4108();
}

uint64_t sub_2BBECC(uint64_t a1)
{
  v2 = sub_2BFF28();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C30F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OnStoreProductPagePPTModifier(0);
  sub_2BC6E0(a1 + *(v10 + 36), &v28);
  if (!v29)
  {
    return sub_69198(&v28, &unk_3BDC90);
  }

  sub_68D1C(&v28, v30);
  sub_29A8A4(&v26);
  if (!v27)
  {
    sub_68CD0(v30);
    return sub_69198(&v26, &qword_3BC840);
  }

  v24 = v2;
  v25 = v7;
  v22 = v5;
  v23 = v3;
  sub_68D1C(&v26, &v28);
  v12 = *(a1 + 24);
  v11 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {

    sub_2C5DD8();
    v14 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_113C80(v12, v11, 0);
    v15 = *(v25 + 8);
    v15(v9, v6);
    if (!*(&v26 + 1))
    {
      goto LABEL_21;
    }

    sub_2C5DD8();
    v16 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_113C80(v12, v11, 0);
    v15(v9, v6);
    v11 = *(&v26 + 1);
    v12 = v26;
  }

  v18 = *a1;
  v17 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {

    if (v11)
    {
      goto LABEL_12;
    }

LABEL_17:
    if (!v17)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_2C5DD8();
  v19 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();
  sub_113C80(v18, v17, 0);
  (*(v25 + 8))(v9, v6);
  v17 = *(&v26 + 1);
  v18 = v26;
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (!v17)
  {
LABEL_18:

    goto LABEL_21;
  }

  if (v12 == v18 && v11 == v17)
  {

LABEL_20:
    sub_72084(&v28, v29);
    v21 = v22;
    sub_29A8B8(v22);
    sub_2BFCD8();
    (*(v23 + 8))(v21, v24);
    goto LABEL_21;
  }

  v20 = sub_2C65B8();

  if (v20)
  {
    goto LABEL_20;
  }

LABEL_21:
  sub_68CD0(v30);
  return sub_68CD0(&v28);
}

unint64_t sub_2BC37C()
{
  result = qword_3BEF28;
  if (!qword_3BEF28)
  {
    type metadata accessor for StorePPTTrigger(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BEF28);
  }

  return result;
}

uint64_t sub_2BC3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2BC43C()
{
  v1 = type metadata accessor for OnStoreProductPagePPTModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_113C80(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  sub_113C80(*(v5 + 24), *(v5 + 32), *(v5 + 40));

  if (*(v0 + v4 + 104))
  {
    if (*(v5 + 88))
    {
      sub_68CD0(v5 + 64);
    }
  }

  else
  {
  }

  v6 = *(v1 + 32);
  sub_6620C(&unk_3C4360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2BFF28();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + *(v1 + 36);
  if (*(v8 + 24))
  {
    sub_68CD0(v8);
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_2BC5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2BC61C()
{
  v1 = *(type metadata accessor for OnStoreProductPagePPTModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2BBECC(v2);
}

unint64_t sub_2BC67C()
{
  result = qword_3CA5A8;
  if (!qword_3CA5A8)
  {
    sub_718D4(&qword_3CA5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA5A8);
  }

  return result;
}

uint64_t sub_2BC6E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3BDC90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2BC760()
{
  sub_718D4(&qword_3CA5A0);
  sub_2BC67C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2BC804(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_3E87F8 == -1)
  {
    if (qword_3E8800)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_2BE168();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_3E8800)
    {
      return _availability_version_check();
    }
  }

  if (qword_3E87F0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_2BE180();
    a3 = v10;
    a4 = v9;
    v8 = dword_3E87E0 < v11;
    if (dword_3E87E0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_3E87E4 > a3)
      {
        return 1;
      }

      if (dword_3E87E4 >= a3)
      {
        return dword_3E87E8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_3E87E0 < a2;
  if (dword_3E87E0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_2BC998(uint64_t result)
{
  v1 = qword_3E8800;
  if (qword_3E8800)
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
      qword_3E8800 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_3E87E0, &dword_3E87E4, &dword_3E87E8);
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

void sub_2BCCF4(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "BSUIGoalsSharableImageRenderer: Errored out with error %@", &v4, 0xCu);
}

void sub_2BCDE4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Encountered error while fetching reading goals share URL: %{public}@", &v2, 0xCu);
}

void sub_2BCEDC()
{
  sub_F7C0();
  sub_F7B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2BCF4C()
{
  sub_F7CC();
  sub_F7B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_2BCF88()
{
  sub_F7CC();
  sub_F7B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_2BCFC4()
{
  sub_F7C0();
  sub_F7B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2BD034()
{
  sub_F7CC();
  sub_F7B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_2BD070()
{
  sub_F7C0();
  sub_F7B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2BD0E0()
{
  sub_F7C0();
  sub_F7B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2BD150()
{
  sub_F7C0();
  sub_F7B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2BD204()
{
  sub_F7C0();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&dword_0, v1, OS_LOG_TYPE_FAULT, "Failed to re-create temp dir at %@. Probably going to crash. Error: %@", v2, 0x16u);
}

void sub_2BD3F8(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [NSString stringWithFormat:@"<StateCenter: %p, %@: %p, Item: %@>", a1, v8, v9, v5];

    [v6 setDebugName:v10];
  }
}

id sub_2BD4D0(uint64_t a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v7 = [TUIMutableDynamicValue valueWithValue:*(a1 + 48)];
  v8 = *(*a2 + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  sub_2BD3F8(*a3, *(*(*a2 + 8) + 40), *a4);
  [*(*a3 + 8) setObject:*(*(*a2 + 8) + 40) forKey:*a4];
  v10 = *a3;

  return [v10 aq_updateInterest];
}

void sub_2BD6A8(void *a1)
{
  v1 = [a1 componentsJoinedByString:{@", "}];
  v2 = 138412290;
  v3 = v1;
  _os_log_fault_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "BSUIDynamicArrayProvider: update contains duplicates of:\n%@", &v2, 0xCu);
}

void sub_2BD7B4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "BSUIDownloadProgressCenter audiobookProgress: %@", buf, 0xCu);
}

void sub_2BD80C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "BSUIDownloadProgressCenter ubiquityProgress: %@", buf, 0xCu);
}

void sub_2BDB98(void *a1)
{
  if (a1)
  {
    v2 = [a1 navigationItem];
    v3 = [v2 standardAppearance];
    v4 = [v3 copy];
    v5 = v4;
    if (v4)
    {
      v10 = v4;
    }

    else
    {
      v6 = [a1 navigationController];
      v7 = [v6 navigationBar];
      v8 = [v7 standardAppearance];
      v10 = [v8 copy];
    }

    [v10 configureWithTransparentBackground];
    v9 = [a1 navigationItem];
    [v9 setStandardAppearance:v10];
  }
}

void sub_2BDC90(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 contentUnavailableConfiguration];

    if (!v4)
    {
      v5 = [a1 _resolvedLargeTitleDisplayMode:a2];
      v6 = [a1 navigationItem];
      v7 = [v6 largeTitleDisplayMode];

      if (v7 != v5)
      {
        v8 = [a1 navigationItem];
        [v8 setLargeTitleDisplayMode:v5];
      }
    }

    a1[5] = a2;
  }
}

void sub_2BDE54(uint64_t a1, _BYTE *a2)
{
  (*(a1 + 16))();
  sub_2BDB98(a2);
  a2[48] = 1;
}

void sub_2BDE98(void *a1, NSObject *a2)
{
  [a1 feedId];
  sub_545D4();
  v4 = &off_39B4D0;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[fid:%lu] JS fails to report initialContentReadySection, using fallback value %@", v3, 0x16u);
}

void sub_2BDF70()
{
  sub_545D4();
  v3 = v0;
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "_removeAlphaOverride: override does not exist - refId: %@, refInstance: %@", v2, 0x16u);
}

void sub_2BDFEC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error attempting to execute flow action %@", &v2, 0xCu);
}

void sub_2BE0A8(void *a1)
{
  [a1 setContentUnavailableConfiguration:0];
  v2 = a1[5];

  sub_2BDC90(a1, v2);
}

void sub_2BE0F0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "BSUISeriesStackImageBoxLayout has no way to compute computedNaturalSize for unsupported series filter '%@'.", &v2, 0xCu);
}