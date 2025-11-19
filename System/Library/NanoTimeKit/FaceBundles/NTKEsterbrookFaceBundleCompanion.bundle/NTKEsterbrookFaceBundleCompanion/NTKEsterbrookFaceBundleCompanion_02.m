uint64_t sub_23BE0E2B8()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_23BE0E33C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Scene();
  v32 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = a4 + 8;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[8];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[7];
      v26 = *(v32 + 72);
      sub_23BE0E5E0(v25 + v26 * (v24 | (v19 << 6)), v11, type metadata accessor for Scene);
      sub_23BDF5A30(v11, v14);
      sub_23BDF5A30(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_23BE0E578(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23BE0E5E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BE0E648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Scene();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_23BE0E6BC(unsigned __int8 a1, CGFloat *a2, double a3, double a4)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v12 = *a2;
      v13 = a2[1];
      v14 = a2[2];
      v15 = a2[3];
      v22.origin.x = *a2;
      v22.origin.y = v13;
      v22.size.width = v14;
      v22.size.height = v15;
      CGRectGetHeight(v22);
      v23.origin.x = v12;
      v23.origin.y = v13;
      v23.size.width = v14;
      v23.size.height = v15;
      CGRectGetHeight(v23);
      v24.origin.x = v12;
      v24.origin.y = v13;
      v24.size.width = v14;
      v24.size.height = v15;
      CGRectGetWidth(v24);
    }
  }

  else
  {
    if (a1)
    {
      v16 = *a2;
      v17 = a2[1];
      v18 = a2[2];
      v19 = a2[3];
      v25.origin.x = *a2;
      v25.origin.y = v17;
      v25.size.width = v18;
      v25.size.height = v19;
      ceil(CGRectGetHeight(v25) * a4);
      v26.origin.x = v16;
      v26.origin.y = v17;
      v26.size.width = v18;
      v26.size.height = v19;
      CGRectGetWidth(v26);
      v8 = v16;
      v9 = v17;
      v10 = v18;
      v11 = v19;
    }

    else
    {
      v4 = *a2;
      v5 = a2[1];
      v6 = a2[2];
      v7 = a2[3];
      v21.origin.x = *a2;
      v21.origin.y = v5;
      v21.size.width = v6;
      v21.size.height = v7;
      CGRectGetWidth(v21);
      v8 = v4;
      v9 = v5;
      v10 = v6;
      v11 = v7;
    }

    CGRectGetHeight(*&v8);
  }
}

uint64_t sub_23BE0E868(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_animationObserver + 8) = a2;
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_spriteLayer);
    if (v4)
    {
      v5 = *(*(Strong + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_animator) + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_currentImage);
      v6 = objc_opt_self();
      v7 = v5;
      v8 = v4;
      [v6 begin];
      [v6 setDisableActions_];
      [v8 setContents_];
      [v6 commit];
    }

    sub_23BE23BCC();
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_23BE0E97C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = type metadata accessor for Timeline(0) - 8;
  MEMORY[0x28223BE20](v37);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SpriteAnimationAttributes();
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Timing(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  *&v2[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_currentImage] = 0;
  *&v2[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_displayLink] = 0;
  *&v2[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_animationObserver + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_23BE0F804(a1, &v2[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_sprite], type metadata accessor for Sprite);
  v18 = type metadata accessor for Sprite();
  v19 = *(v18 + 20);
  v35 = a1;
  v20 = a1 + v19;
  v21 = *(v20 + 32);
  v40[1] = *(v20 + 16);
  v40[2] = v21;
  v41 = *(v20 + 48);
  v40[0] = *v20;
  v22 = *(v18 + 32);
  sub_23BE0F804(a1 + v22, v17, type metadata accessor for Timing);
  sub_23BE0F804(a2, v10, type metadata accessor for SpriteAnimationAttributes);
  type metadata accessor for AtlasImageCache();
  swift_allocObject();
  sub_23BDFB698(v40, v39);
  *&v2[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_cache] = sub_23BE24F8C(v40, v17, v10);
  v23 = a2 + *(v8 + 28);
  v24 = v36;
  sub_23BE0F804(v23, v36, type metadata accessor for Timeline);
  v25 = v35;
  sub_23BE0F804(v35 + v22, v15, type metadata accessor for Timing);
  type metadata accessor for SpriteAnimator.AnimationCounter();
  v26 = swift_allocObject();
  v27 = v24;
  v28 = *(v24 + *(v37 + 28));
  sub_23BE0F86C(v27, type metadata accessor for Timeline);
  v29 = v28 - 1;
  if (v28 <= 0)
  {
    v29 = 0;
  }

  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v29;
  v30 = *&v15[*(v12 + 28)];
  v31 = *&v15[*(v12 + 32)];
  result = sub_23BE0F86C(v15, type metadata accessor for Timing);
  if (v31 < v30)
  {
    __break(1u);
  }

  else
  {
    v26[5] = v30;
    v26[6] = v31;
    *&v3[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_counter] = v26;
    v3[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_fps] = 1;
    v3[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_state] = 0;
    v33 = type metadata accessor for SpriteAnimator();
    v38.receiver = v3;
    v38.super_class = v33;
    v34 = objc_msgSendSuper2(&v38, sel_init);
    sub_23BE0F39C();

    sub_23BE0F86C(a2, type metadata accessor for SpriteAnimationAttributes);
    sub_23BE0F86C(v25, type metadata accessor for Sprite);
    return v34;
  }

  return result;
}

id sub_23BE0ED30()
{
  v1 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_displayLink;
  v2 = *&v0[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_displayLink];
  if (v2)
  {
    [v2 invalidate];
    v3 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for SpriteAnimator();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t type metadata accessor for SpriteAnimator()
{
  result = qword_27E1C8AB0;
  if (!qword_27E1C8AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BE0EF10()
{
  if (qword_27E1C7A60 != -1)
  {
    swift_once();
  }

  v1 = sub_23BE327D8();
  sub_23BDEA278(v1, qword_27E1DBF28);
  v2 = v0;
  v3 = sub_23BE327B8();
  v4 = sub_23BE32A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = &v2[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_sprite];
    v8 = type metadata accessor for Sprite();
    *(v5 + 4) = sub_23BE288C4(*&v7[*(v8 + 20)], *&v7[*(v8 + 20) + 8], &v12);
    _os_log_impl(&dword_23BDE0000, v3, v4, "Stopping sprite animator animation for [%s].", v5, 0xCu);
    sub_23BDE6478(v6);
    MEMORY[0x23EEBF030](v6, -1, -1);
    MEMORY[0x23EEBF030](v5, -1, -1);
  }

  v9 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_displayLink;
  v10 = *&v2[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_displayLink];
  if (v10)
  {
    [v10 invalidate];
    v11 = *&v2[v9];
    *&v2[v9] = 0;
  }
}

void sub_23BE0F0B4()
{
  v3 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_counter;
  v4 = *(v0 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_counter);
  v5 = v4[3];
  v6 = v4[4];
  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_29;
  }

  v7 = __OFADD__(v8, 1);
  v9 = v8 + 1;
  if (v7)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v9 < 2)
  {
LABEL_19:

    sub_23BE0EF10();
    return;
  }

  v1 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_state;
  if (*(v0 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_state))
  {
    goto LABEL_11;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v4 = Strong;
  v2 = v0;
  if (qword_27E1C7A60 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v11 = sub_23BE327D8();
    sub_23BDEA278(v11, qword_27E1DBF28);
    v12 = v4;
    v13 = sub_23BE327B8();
    v14 = sub_23BE32A18();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      v17 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_sprite;
      v18 = v12 + *(type metadata accessor for Sprite() + 20) + v17;
      *(v15 + 4) = sub_23BE288C4(*v18, *(v18 + 1), &v27);
      _os_log_impl(&dword_23BDE0000, v13, v14, "[%s] SpriteView animationDidStart.", v15, 0xCu);
      sub_23BDE6478(v16);
      MEMORY[0x23EEBF030](v16, -1, -1);
      MEMORY[0x23EEBF030](v15, -1, -1);
    }

    swift_unknownObjectRelease();

    v0 = v2;
LABEL_10:
    *(v0 + v1) = 1;
    v4 = *(v0 + v3);
LABEL_11:
    if (v4[2] < v4[6])
    {
      break;
    }

    v19 = v0 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_sprite;
    v20 = v19 + *(type metadata accessor for Sprite() + 32);
    if (*(v20 + *(type metadata accessor for Timing(0) + 28)) != 3)
    {
      *(v0 + v1) = 2;
      v23 = swift_unknownObjectWeakLoadStrong();
      if (v23)
      {
        v4 = v23;
        sub_23BE23C8C();
        swift_unknownObjectRelease();
      }

      sub_23BE0EF10();
      break;
    }

    v21 = v4[5];
    v7 = __OFSUB__(v21, 1);
    v22 = v21 - 1;
    if (!v7)
    {
      v4[2] = v22;
      break;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

  if (*(v0 + v1) == 2)
  {
    goto LABEL_19;
  }

  v24 = *(v0 + v3);
  v25 = *(v24 + 16);
  v7 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v7)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (*(v24 + 32) < v26)
  {
    v26 = *(v24 + 32);
  }

  *(v24 + 16) = v26;

  sub_23BE0F39C();
}

void sub_23BE0F39C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_counter);
  v3 = v2[2];
  if (v3 < v2[5] || v2[6] < v3)
  {
    return;
  }

  v13 = sub_23BE25638(v3);

  if (!v13)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_currentImage;
  v6 = *(v1 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_currentImage);
  if (!v6)
  {
    v10 = v13;
    v11 = v13;
    v12 = 0;
LABEL_12:
    *(v1 + v5) = v11;

    sub_23BE0F4DC();
    goto LABEL_13;
  }

  type metadata accessor for CGImage(0);
  sub_23BE0F7AC();
  v7 = v13;
  v8 = v6;
  v9 = sub_23BE32788();

  if ((v9 & 1) == 0)
  {
    v12 = *(v1 + v5);
    v11 = v13;
    goto LABEL_12;
  }

LABEL_13:
}

uint64_t sub_23BE0F4DC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_spriteLayer);
    if (v1)
    {
      v2 = *(*(result + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_animator) + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_currentImage);
      v3 = objc_opt_self();
      v4 = v2;
      v5 = v1;
      [v3 begin];
      [v3 setDisableActions_];
      [v5 setContents_];
      [v3 commit];
    }

    sub_23BE23BCC();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23BE0F658()
{
  result = type metadata accessor for Sprite();
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

unint64_t sub_23BE0F758()
{
  result = qword_27E1C8AC0;
  if (!qword_27E1C8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8AC0);
  }

  return result;
}

unint64_t sub_23BE0F7AC()
{
  result = qword_27E1C8AC8;
  if (!qword_27E1C8AC8)
  {
    type metadata accessor for CGImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8AC8);
  }

  return result;
}

uint64_t sub_23BE0F804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BE0F86C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_23BE0F96C()
{
  v1 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_colorPalette);
  if (v1)
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_isEditing);
    swift_unknownObjectRetain();
    if ((v3 & 1) == 0 && (sub_23BE110E4() & 1) != 0 && (v4 = sub_23BE12258()) != 0)
    {
      v5 = v4;
    }

    else
    {
      v6 = type metadata accessor for ScenePalette();
      v7 = objc_allocWithZone(v6);
      v8 = [swift_unknownObjectRetain() background];
      *&v7[OBJC_IVAR___NTKEsterbrookScenePalette_background] = v8;
      v9 = [v1 overlay];
      *&v7[OBJC_IVAR___NTKEsterbrookScenePalette_overlay] = v9;
      v10 = [v1 secondHand];
      *&v7[OBJC_IVAR___NTKEsterbrookScenePalette_secondHand] = v10;
      v28.receiver = v7;
      v28.super_class = v6;
      v5 = objc_msgSendSuper2(&v28, sel_init);
      swift_unknownObjectRelease();
    }

    v11 = OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView;
    v12 = *(*(v2 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView) + OBJC_IVAR___NTKEsterbrookSceneView_scenePalette);
    if (v12 && (type metadata accessor for ScenePalette(), v13 = v5, v14 = v12, v15 = sub_23BE32A88(), v14, v13, (v15 & 1) != 0))
    {

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_27E1C7A68 != -1)
      {
        swift_once();
      }

      v16 = sub_23BE327D8();
      sub_23BDEA278(v16, qword_27E1DBF40);
      v17 = v5;
      v18 = sub_23BE327B8();
      v19 = sub_23BE32A18();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        *(v20 + 4) = v17;
        *v21 = v17;
        v22 = v17;
        _os_log_impl(&dword_23BDE0000, v18, v19, "Applying new scene palette: %@", v20, 0xCu);
        sub_23BDF5A94(v21, &qword_27E1C8A78);
        MEMORY[0x23EEBF030](v21, -1, -1);
        MEMORY[0x23EEBF030](v20, -1, -1);
      }

      v23 = *(v2 + v11);
      v24 = *&v23[OBJC_IVAR___NTKEsterbrookSceneView_scenePalette];
      *&v23[OBJC_IVAR___NTKEsterbrookSceneView_scenePalette] = v17;
      v25 = v17;
      v26 = v23;

      sub_23BE07904();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong didChangeScenePalette];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

char *sub_23BE0FD40(void *a1, void *a2, void *a3, void *a4, void *a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  ObjectType = swift_getObjectType();
  v21 = OBJC_IVAR___NTKEsterbrookSceneCoordinator_preparedSceneForLive;
  v22 = type metadata accessor for PreparedScene(0);
  (*(*(v22 - 8) + 56))(&v10[v21], 1, 1, v22);
  swift_unknownObjectWeakInit();
  v23 = OBJC_IVAR___NTKEsterbrookSceneCoordinator_overrideDate;
  v24 = sub_23BE32698();
  (*(*(v24 - 8) + 56))(&v10[v23], 1, 1, v24);
  v10[OBJC_IVAR___NTKEsterbrookSceneCoordinator_isEditing] = 0;
  v25 = OBJC_IVAR___NTKEsterbrookSceneCoordinator_colorPalette;
  *&v10[OBJC_IVAR___NTKEsterbrookSceneCoordinator_colorPalette] = 0;
  *&v10[OBJC_IVAR___NTKEsterbrookSceneCoordinator_tritiumProgress] = 0;
  v10[OBJC_IVAR___NTKEsterbrookSceneCoordinator_isFrozen] = 0;
  *&v10[OBJC_IVAR___NTKEsterbrookSceneCoordinator____lazy_storage___sundayWakeStyle] = 1;
  *&v10[OBJC_IVAR___NTKEsterbrookSceneCoordinator____lazy_storage___allSundayStyles] = 0;
  type metadata accessor for SceneEngine();
  swift_allocObject();
  *&v10[OBJC_IVAR___NTKEsterbrookSceneCoordinator_engine] = sub_23BE217FC(a5);
  v26 = objc_allocWithZone(type metadata accessor for SceneView());
  swift_unknownObjectRetain();
  v27 = a1;
  v28 = a2;
  *&v10[OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView] = sub_23BE067E4(a2, a3, v27, a6, a7, a8, a9);
  *&v10[v25] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v10[OBJC_IVAR___NTKEsterbrookSceneCoordinator_faceState] = a4;
  v36.receiver = v10;
  v36.super_class = ObjectType;
  v29 = a4;
  v30 = objc_msgSendSuper2(&v36, sel_init);
  sub_23BE0F96C();
  *(*&v30[OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView] + OBJC_IVAR___NTKEsterbrookSceneView_delegate + 8) = &off_284E94380;
  swift_unknownObjectWeakAssign();
  sub_23BE10250(v29, 0);
  if (qword_27E1C7A40 != -1)
  {
    swift_once();
  }

  v31 = sub_23BE327D8();
  sub_23BDEA278(v31, qword_27E1DBEC8);
  v32 = sub_23BE327B8();
  v33 = sub_23BE32A18();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_23BDE0000, v32, v33, "Initialized Scene Coordinator", v34, 2u);
    MEMORY[0x23EEBF030](v34, -1, -1);
  }

  swift_unknownObjectRelease();
  return v30;
}

void sub_23BE10250(void *a1, char a2)
{
  v3 = v2;
  if ((a2 & 1) == 0)
  {
    v5 = *(v2 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_faceState);
    type metadata accessor for NTKFaceState();
    v6 = v5;
    v7 = sub_23BE32A88();

    if (v7)
    {
      return;
    }
  }

  v8 = *(v3 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_faceState);
  *(v3 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_faceState) = a1;
  v9 = qword_27E1C7A40;
  v10 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_23BE327D8();
  sub_23BDEA278(v11, qword_27E1DBEC8);
  v12 = v10;
  v13 = v8;
  v14 = sub_23BE327B8();
  v15 = sub_23BE329F8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v64[0] = v18;
    *v16 = 136315650;
    *(v16 + 4) = sub_23BE288C4(0xD000000000000018, 0x800000023BE355A0, v64);
    *(v16 + 12) = 2112;
    *(v16 + 14) = v13;
    *(v16 + 22) = 2112;
    *(v16 + 24) = v12;
    *v17 = v13;
    v17[1] = v12;
    v19 = v12;
    v20 = v13;
    _os_log_impl(&dword_23BDE0000, v14, v15, "%s: %@ → %@", v16, 0x20u);
    sub_23BDE652C(&qword_27E1C8A78);
    swift_arrayDestroy();
    MEMORY[0x23EEBF030](v17, -1, -1);
    sub_23BDE6478(v18);
    MEMORY[0x23EEBF030](v18, -1, -1);
    MEMORY[0x23EEBF030](v16, -1, -1);
  }

  v21 = *&v12[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion12NTKFaceState_dataMode];
  v22 = 1.0;
  if (v21 > 2)
  {
    if ((v21 - 3) > 2)
    {
LABEL_13:
      v63 = 1;
      goto LABEL_15;
    }

LABEL_12:
    sub_23BE109FC(0);
    v63 = 1;
    v22 = 0.0;
    goto LABEL_15;
  }

  if (!v21)
  {
    goto LABEL_12;
  }

  if (v21 != 1)
  {
    goto LABEL_13;
  }

  v63 = 0;
LABEL_15:
  v23 = *&v13[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion12NTKFaceState_screenState];
  v24 = *&v12[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion12NTKFaceState_screenState];
  v62 = v13;
  if (v24 == 1)
  {
    v63 = 1;
  }

  else if (!v24 && !v23)
  {
    v25 = v21 == 1;
    v26 = 1;
    goto LABEL_23;
  }

  v25 = v21 == 1;
  if (v23 == 1)
  {
    v35 = v63 ^ 1;
    if (v21 == 1)
    {
      v35 = 1;
    }

    if (!v24)
    {
      v25 = v35;
    }

    v26 = 0;
  }

  else
  {
    v26 = 0;
    if (!v23 && !v24)
    {
LABEL_23:
      v27 = v25;
      v28 = *&v62[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion12NTKFaceState_dataMode];
      v25 = v28 == 3;
      if (v27 && v28 == 2)
      {
        v60 = v26;
        v29 = *(v3 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
        v30 = OBJC_IVAR___NTKEsterbrookSceneView_spriteViews;
        swift_beginAccess();
        v31 = *&v29[v30];
        if (*(v31 + 16) && (v32 = sub_23BE2C8A8(1), (v33 & 1) != 0))
        {
          v34 = *(*(v31 + 56) + 8 * v32);
        }

        else
        {
          v34 = MEMORY[0x277D84F90];
        }

        if (v34 >> 62)
        {
          goto LABEL_72;
        }

        for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23BE32BB8())
        {
          v37 = v29;
          if (!i)
          {
            break;
          }

          v38 = 0;
          v29 = (v34 & 0xC000000000000001);
          while (1)
          {
            if (v29)
            {
              v39 = MEMORY[0x23EEBE370](v38, v34);
            }

            else
            {
              if (v38 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_71;
              }

              v39 = *(v34 + 8 * v38 + 32);
            }

            v40 = v39;
            v41 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              break;
            }

            v42 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_sprite;
            v43 = &v39[*(type metadata accessor for Sprite() + 32) + v42];
            if (v43[*(type metadata accessor for Timing(0) + 28)] == 3 || *(*&v40[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_animator] + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_state) <= 1u)
            {

              v25 = 0;
              goto LABEL_49;
            }

            ++v38;
            if (v41 == i)
            {
              goto LABEL_47;
            }
          }

          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          ;
        }

LABEL_47:

        v25 = 1;
LABEL_49:
        v26 = v60;
      }
    }
  }

  v44 = sub_23BE327B8();
  v45 = sub_23BE329F8();
  v61 = v26;
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v65 = v47;
    *v46 = 136315906;
    *(v46 + 4) = sub_23BE288C4(0xD000000000000018, 0x800000023BE355A0, &v65);
    *(v46 + 12) = 2048;
    *(v46 + 14) = v22;
    *(v46 + 22) = 2080;
    if (v26)
    {
      v48 = 1702195828;
    }

    else
    {
      v48 = 0x65736C6166;
    }

    if (v26)
    {
      v49 = 0xE400000000000000;
    }

    else
    {
      v49 = 0xE500000000000000;
    }

    v50 = sub_23BE288C4(v48, v49, &v65);

    *(v46 + 24) = v50;
    *(v46 + 32) = 2080;
    if (v63)
    {
      v51 = 0x646573756170;
    }

    else
    {
      v51 = 0x676E6979616C70;
    }

    if (v63)
    {
      v52 = 0xE600000000000000;
    }

    else
    {
      v52 = 0xE700000000000000;
    }

    v53 = sub_23BE288C4(v51, v52, &v65);

    *(v46 + 34) = v53;
    _os_log_impl(&dword_23BDE0000, v44, v45, "%s - [resolved] liveProgress:%f; animated: %s; animatingState: %s;", v46, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23EEBF030](v47, -1, -1);
    MEMORY[0x23EEBF030](v46, -1, -1);
  }

  if (v25)
  {
    v54 = sub_23BE327B8();
    v55 = sub_23BE32A18();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_23BDE0000, v54, v55, "Ready to prepare next scene.", v56, 2u);
      MEMORY[0x23EEBF030](v56, -1, -1);
    }

    sub_23BE10DC4(1);
  }

  v57 = OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView;
  v58 = *(v3 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  sub_23BE0AD24(v63);

  v59 = *(v3 + v57);
  sub_23BE08750(v61, v22);
}

uint64_t sub_23BE109FC(uint64_t *a1)
{
  v3 = sub_23BDE652C(&qword_27E1C7C68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26[-1] - v4;
  if (qword_27E1C7A40 != -1)
  {
    swift_once();
  }

  v6 = sub_23BE327D8();
  sub_23BDEA278(v6, qword_27E1DBEC8);
  v7 = sub_23BE327B8();
  v8 = sub_23BE329F8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = a1;
    v26[0] = v10;
    *v9 = 136315138;
    sub_23BE0C4EC();
    v11 = sub_23BE32D18();
    v13 = sub_23BE288C4(v11, v12, v26);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_23BDE0000, v7, v8, "prepareNextSceneIfNeeded: %s", v9, 0xCu);
    sub_23BDE6478(v10);
    MEMORY[0x23EEBF030](v10, -1, -1);
    MEMORY[0x23EEBF030](v9, -1, -1);
  }

  v14 = *(v1 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  v15 = OBJC_IVAR___NTKEsterbrookSceneView_loadedScenes;
  swift_beginAccess();
  v16 = *(v14 + v15);
  if (*(v16 + 16) && (v17 = sub_23BE2C8A8(a1), (v18 & 1) != 0))
  {
    v19 = v17;
    v20 = *(v16 + 56);
    v21 = type metadata accessor for Scene();
    v22 = *(v21 - 8);
    sub_23BE12E0C(v20 + *(v22 + 72) * v19, v5);
    (*(v22 + 56))(v5, 0, 1, v21);
    return sub_23BDF5A94(v5, &qword_27E1C7C68);
  }

  else
  {
    v24 = type metadata accessor for Scene();
    (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
    sub_23BDF5A94(v5, &qword_27E1C7C68);
    return sub_23BE10DC4(a1);
  }
}

void sub_23BE10CF8(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  sub_23BE07B34(a1, a2);

  if (a2 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      type metadata accessor for Scene();
      v8 = sub_23BE32898();
      [v7 didLoadSceneNamed_];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_23BE10DC4(uint64_t *a1)
{
  v2 = sub_23BE32828();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Scene();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E1C7A40 != -1)
  {
    swift_once();
  }

  v9 = sub_23BE327D8();
  sub_23BDEA278(v9, qword_27E1DBEC8);
  v10 = sub_23BE327B8();
  v11 = sub_23BE329F8();
  v12 = os_log_type_enabled(v10, v11);
  v25 = a1;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v24 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26[0] = v15;
    *v14 = 136315138;
    v27 = a1;
    sub_23BE0C4EC();
    v16 = sub_23BE32D18();
    v18 = sub_23BE288C4(v16, v17, v26);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_23BDE0000, v10, v11, "prepareNextScene: %s", v14, 0xCu);
    sub_23BDE6478(v15);
    MEMORY[0x23EEBF030](v15, -1, -1);
    v19 = v14;
    v2 = v24;
    MEMORY[0x23EEBF030](v19, -1, -1);
  }

  swift_unknownObjectWeakInit();
  sub_23BE2C8B0(v8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v21 = Strong;
  sub_23BE12D3C(0, &qword_27E1C8A50);
  *v5 = sub_23BE32A48();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v22 = sub_23BE32838();
  result = (*(v3 + 8))(v5, v2);
  if (v22)
  {
    sub_23BE10CF8(v8, v25);

LABEL_8:
    sub_23BE12CE0(v8);
    return MEMORY[0x23EEBF0C0](&v27);
  }

  __break(1u);
  return result;
}

id sub_23BE110E4()
{
  v1 = sub_23BE32718();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BE32738();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BDE652C(&unk_27E1C8BA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_23BE32698();
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_colorPalette);
  if (!v15)
  {
    return 0;
  }

  v25 = v2;
  v26 = v12;
  sub_23BE12D3C(0, &unk_27E1C8BB0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (([swift_unknownObjectRetain() isKindOfClass_] & 1) != 0 || !objc_msgSend(v15, sel_isSundayOption))
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v17 = OBJC_IVAR___NTKEsterbrookSceneCoordinator_overrideDate;
  swift_beginAccess();
  sub_23BE12C70(v0 + v17, v10);
  v18 = v26;
  v24 = *(v26 + 48);
  if (v24(v10, 1, v11) != 1)
  {
    (*(v18 + 32))(v14, v10, v11);
LABEL_12:
    sub_23BE32708();
    v21 = v25;
    (*(v25 + 104))(v4, *MEMORY[0x277CC99B8], v1);
    v22 = sub_23BE32728();
    swift_unknownObjectRelease();
    (*(v21 + 8))(v4, v1);
    (*(v27 + 8))(v7, v5);
    (*(v26 + 8))(v14, v11);
    return (v22 == 1);
  }

  result = [objc_opt_self() faceDate];
  if (result)
  {
    v20 = result;
    sub_23BE32688();

    if (v24(v10, 1, v11) != 1)
    {
      sub_23BDF5A94(v10, &unk_27E1C8BA0);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_23BE114E8()
{
  v13 = sub_23BE12258();
  if (v13)
  {
    v1 = sub_23BE12390();
    if (v1 >> 62)
    {
LABEL_29:
      v2 = sub_23BE32BB8();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v2 >= 2)
    {
      v3 = OBJC_IVAR___NTKEsterbrookSceneCoordinator____lazy_storage___allSundayStyles;
      v4 = OBJC_IVAR___NTKEsterbrookScenePalette_background;
      while (1)
      {
        while (1)
        {
          v5 = *(v0 + v3);
          if (v5 >> 62)
          {
            break;
          }

          v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6)
          {
            goto LABEL_8;
          }
        }

        if (sub_23BE32BB8())
        {
          v11 = sub_23BE32BB8();
          if (v11 < 0)
          {
            __break(1u);
            return;
          }

          v6 = v11;
          if (!v11)
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_8:
          v14 = 0;

          MEMORY[0x23EEBF040](&v14, 8);
          v7 = (v14 * v6) >> 64;
          if (v6 > v14 * v6)
          {
            v8 = -v6 % v6;
            if (v8 > v14 * v6)
            {
              do
              {
                v14 = 0;
                MEMORY[0x23EEBF040](&v14, 8);
              }

              while (v8 > v14 * v6);
              v7 = (v14 * v6) >> 64;
            }
          }

          if ((v5 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x23EEBE370](v7, v5);
          }

          else
          {
            if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v9 = *(v5 + 8 * v7 + 32);
          }

          v10 = v9;

          if (([*&v13[v4] isEqual_] & 1) == 0)
          {

            v12 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneCoordinator____lazy_storage___sundayWakeStyle);
            *(v0 + OBJC_IVAR___NTKEsterbrookSceneCoordinator____lazy_storage___sundayWakeStyle) = v10;
            sub_23BE12C50(v12);
            return;
          }
        }
      }
    }
  }
}

void sub_23BE117C4()
{
  v1 = v0;
  if (qword_27E1C7A40 != -1)
  {
    swift_once();
  }

  v2 = sub_23BE327D8();
  sub_23BDEA278(v2, qword_27E1DBEC8);
  v3 = sub_23BE327B8();
  v4 = sub_23BE329F8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23BDE0000, v3, v4, "didTransitionToTritiumOn", v5, 2u);
    MEMORY[0x23EEBF030](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_tritiumProgress) = 0x3FF0000000000000;
  v6 = *(v1 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  v7 = OBJC_IVAR___NTKEsterbrookSceneView_tritiumProgress;
  *&v6[OBJC_IVAR___NTKEsterbrookSceneView_tritiumProgress] = 0x3FF0000000000000;
  v8 = *&v6[OBJC_IVAR___NTKEsterbrookSceneView_sceneBackgroundView];
  if (v8)
  {
    *&v8[OBJC_IVAR___NTKEsterbrookSceneBackgroundView_tritiumProgress] = 0x3FF0000000000000;
    v9 = v6;
    v10 = v8;
    sub_23BE2292C();

    v11 = *&v6[v7];
  }

  else
  {
    v12 = v6;
    v11 = 1.0;
  }

  *(*&v6[OBJC_IVAR___NTKEsterbrookSceneView_dialView] + OBJC_IVAR___NTKEsterbrookSceneDialView_tritiumProgress) = v11;
  sub_23BDE7788();
  sub_23BE08B88();

  v13 = *(v1 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_faceState);
  sub_23BE10250(v13, 1);
}

void sub_23BE119C8()
{
  v1 = v0;
  if (qword_27E1C7A40 != -1)
  {
    swift_once();
  }

  v2 = sub_23BE327D8();
  sub_23BDEA278(v2, qword_27E1DBEC8);
  v3 = sub_23BE327B8();
  v4 = sub_23BE329F8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23BDE0000, v3, v4, "didTransitionToTritiumOff", v5, 2u);
    MEMORY[0x23EEBF030](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_tritiumProgress) = 0;
  v6 = *(v1 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  v7 = OBJC_IVAR___NTKEsterbrookSceneView_tritiumProgress;
  *&v6[OBJC_IVAR___NTKEsterbrookSceneView_tritiumProgress] = 0;
  v8 = *&v6[OBJC_IVAR___NTKEsterbrookSceneView_sceneBackgroundView];
  if (v8)
  {
    *&v8[OBJC_IVAR___NTKEsterbrookSceneBackgroundView_tritiumProgress] = 0;
    v9 = v6;
    v10 = v8;
    sub_23BE2292C();

    v11 = *&v6[v7];
  }

  else
  {
    v12 = v6;
    v11 = 0;
  }

  *(*&v6[OBJC_IVAR___NTKEsterbrookSceneView_dialView] + OBJC_IVAR___NTKEsterbrookSceneDialView_tritiumProgress) = v11;
  sub_23BDE7788();
  sub_23BE08B88();

  v13 = *(v1 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_faceState);
  sub_23BE10250(v13, 1);
}

void sub_23BE11BC8()
{
  v1 = v0;
  if (qword_27E1C7A40 != -1)
  {
    swift_once();
  }

  v2 = sub_23BE327D8();
  sub_23BDEA278(v2, qword_27E1DBEC8);
  v3 = sub_23BE327B8();
  v4 = sub_23BE329F8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23BDE0000, v3, v4, "prepareForTransitionToTritiumOn", v5, 2u);
    MEMORY[0x23EEBF030](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  sub_23BE0AD24(1);
}

void sub_23BE11D90()
{
  v1 = v0;
  if (qword_27E1C7A40 != -1)
  {
    swift_once();
  }

  v2 = sub_23BE327D8();
  sub_23BDEA278(v2, qword_27E1DBEC8);
  v3 = sub_23BE327B8();
  v4 = sub_23BE32A18();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23BDE0000, v3, v4, "Received a time zone or significant time change notification.", v5, 2u);
    MEMORY[0x23EEBF030](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  sub_23BE09AC8(1);
}

id sub_23BE12258()
{
  v1 = OBJC_IVAR___NTKEsterbrookSceneCoordinator____lazy_storage___sundayWakeStyle;
  v2 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneCoordinator____lazy_storage___sundayWakeStyle);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_colorPalette);
    if (v4)
    {
      v5 = type metadata accessor for ScenePalette();
      v6 = objc_allocWithZone(v5);
      v7 = [swift_unknownObjectRetain() background];
      *&v6[OBJC_IVAR___NTKEsterbrookScenePalette_background] = v7;
      v8 = [v4 overlay];
      *&v6[OBJC_IVAR___NTKEsterbrookScenePalette_overlay] = v8;
      v9 = [v4 secondHand];
      *&v6[OBJC_IVAR___NTKEsterbrookScenePalette_secondHand] = v9;
      v13.receiver = v6;
      v13.super_class = v5;
      v3 = objc_msgSendSuper2(&v13, sel_init);
      swift_unknownObjectRelease();
      v10 = *(v0 + v1);
    }

    else
    {
      v3 = 0;
      v10 = 1;
    }

    *(v0 + v1) = v3;
    v11 = v3;
    sub_23BE12C50(v10);
  }

  sub_23BE12C60(v2);
  return v3;
}

uint64_t sub_23BE12390()
{
  v1 = OBJC_IVAR___NTKEsterbrookSceneCoordinator____lazy_storage___allSundayStyles;
  if (*(v0 + OBJC_IVAR___NTKEsterbrookSceneCoordinator____lazy_storage___allSundayStyles))
  {
    v2 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneCoordinator____lazy_storage___allSundayStyles);
  }

  else
  {
    v2 = sub_23BE123F4();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_23BE123F4()
{
  v20 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  type metadata accessor for SceneLoader();
  v21 = objc_opt_self();
  for (i = 1; i != 13; ++i)
  {
    sub_23BDE652C(&qword_27E1C8BD0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_23BE36630;
    *(v1 + 56) = MEMORY[0x277D83B88];
    *(v1 + 64) = MEMORY[0x277D83C10];
    *(v1 + 32) = i;
    v2 = sub_23BE328D8();
    v4 = v3;
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_23BE32B08();

    v23 = 0x6F72627265747365;
    v24 = 0xEB000000002F6B6FLL;
    MEMORY[0x23EEBE160](v2, v4);
    MEMORY[0x23EEBE160](0x6F72676B6361622FLL, 0xEB00000000646E75);
    v5 = sub_23BDF31AC();
    v6 = sub_23BE32898();

    v7 = [v21 colorNamed:v6 inBundle:v5 compatibleWithTraitCollection:0];

    if (v7)
    {
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_23BE32B08();

      v23 = 0x6F72627265747365;
      v24 = 0xEB000000002F6B6FLL;
      MEMORY[0x23EEBE160](v2, v4);
      MEMORY[0x23EEBE160](0x79616C7265766F2FLL, 0xE800000000000000);
      v8 = sub_23BDF31AC();
      v9 = sub_23BE32898();

      v10 = [v21 colorNamed:v9 inBundle:v8 compatibleWithTraitCollection:0];

      if (v10)
      {
        v23 = 0;
        v24 = 0xE000000000000000;
        sub_23BE32B08();

        v23 = 0x6F72627265747365;
        v24 = 0xEB000000002F6B6FLL;
        MEMORY[0x23EEBE160](v2, v4);

        MEMORY[0x23EEBE160](0x48646E6F6365732FLL, 0xEB00000000646E61);
        v11 = sub_23BDF31AC();
        v12 = sub_23BE32898();

        v13 = [v21 colorNamed:v12 inBundle:v11 compatibleWithTraitCollection:0];

        if (v13)
        {
          v14 = type metadata accessor for ScenePalette();
          v15 = objc_allocWithZone(v14);
          *&v15[OBJC_IVAR___NTKEsterbrookScenePalette_background] = v7;
          *&v15[OBJC_IVAR___NTKEsterbrookScenePalette_overlay] = v10;
          *&v15[OBJC_IVAR___NTKEsterbrookScenePalette_secondHand] = v13;
          v22.receiver = v15;
          v22.super_class = v14;
          v16 = v7;
          v17 = v10;
          v18 = v13;
          objc_msgSendSuper2(&v22, sel_init);
          MEMORY[0x23EEBE1B0]();
          if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23BE32988();
          }

          sub_23BE32998();

          v20 = v25;
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return v20;
}

void sub_23BE12894()
{
  sub_23BE12A44(319, &qword_27E1C8B70, type metadata accessor for PreparedScene);
  if (v0 <= 0x3F)
  {
    sub_23BE12A44(319, &unk_27E1C8B78, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_23BE12A0C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BE12A44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BE32A98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23BE12AC0()
{
  result = type metadata accessor for Scene();
  if (v1 <= 0x3F)
  {
    result = sub_23BE32698();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BE12B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BDE652C(&unk_27E1C8BA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_23BE12BDC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_23BE12C50(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_23BE12C60(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_23BE12C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BDE652C(&unk_27E1C8BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BE12CE0(uint64_t a1)
{
  v2 = type metadata accessor for Scene();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BE12D3C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void (*sub_23BE12D84(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EEBE370](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23BE12E04;
  }

  __break(1u);
  return result;
}

uint64_t sub_23BE12E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Scene();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23BE12F58()
{
  v1 = v0;
  if (qword_27E1C7A40 != -1)
  {
    swift_once();
  }

  v2 = sub_23BE327D8();
  sub_23BDEA278(v2, qword_27E1DBEC8);
  v3 = sub_23BE327B8();
  v4 = sub_23BE329F8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23BDE0000, v3, v4, "screenDidTurnOff", v5, 2u);
    MEMORY[0x23EEBF030](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  sub_23BE083C0(1);

  if (sub_23BE110E4())
  {

    sub_23BE114E8();
  }
}

id sub_23BE13080(id result)
{
  if (result)
  {
    v2 = result;
    v3 = objc_allocWithZone(MEMORY[0x277CBBAF8]);
    v4 = v2;
    v5 = [v3 initWithDevice:v4 identitySizeClass:6];
    [v5 scaledValue_];
    v7 = v6;
    [v5 scaledValue_];
    v9 = v8;
    [v5 scaledValue_];
    v11 = v10;

    v12 = &v1[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion22NTKEsterbrookHandsView_metrics];
    *v12 = v7;
    *(v12 + 1) = v9;
    *(v12 + 2) = v11;
    v14.receiver = v1;
    v14.super_class = type metadata accessor for NTKEsterbrookHandsView();
    v13 = objc_msgSendSuper2(&v14, sel_initForDevice_, v4);

    if (v13)
    {
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23BE133E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NTKEsterbrookHandsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 initializeBufferWithCopyOfBuffer for NTKEsterbrookHandsView.Metrics(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NTKEsterbrookHandsView.Metrics(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for NTKEsterbrookHandsView.Metrics(uint64_t result, int a2, int a3)
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

uint64_t sub_23BE134F4()
{
  result = sub_23BE326D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BE135CC()
{
  result = sub_23BE326D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BE13674()
{
  v1 = *v0;
  sub_23BE32DC8();
  MEMORY[0x23EEBE630](qword_23BE3C090[v1]);
  return sub_23BE32E08();
}

uint64_t sub_23BE136FC()
{
  v1 = *v0;
  sub_23BE32DC8();
  MEMORY[0x23EEBE630](qword_23BE3C090[v1]);
  return sub_23BE32E08();
}

uint64_t sub_23BE13748@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BE15714(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_23BE13790()
{
  result = qword_27E1C8C08;
  if (!qword_27E1C8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8C08);
  }

  return result;
}

unint64_t sub_23BE137E8()
{
  result = qword_27E1C8C10;
  if (!qword_27E1C8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8C10);
  }

  return result;
}

uint64_t sub_23BE1383C()
{
  v1 = 0x657A65657266;
  v2 = 0x74754F65646166;
  if (*v0 != 2)
  {
    v2 = 1886351212;
  }

  if (*v0)
  {
    v1 = 0x65766F6D6572;
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

uint64_t sub_23BE138A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BE1575C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BE138D0(uint64_t a1)
{
  v2 = sub_23BE15F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE1390C(uint64_t a1)
{
  v2 = sub_23BE15F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE13948(uint64_t a1)
{
  v2 = sub_23BE15FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE13984(uint64_t a1)
{
  v2 = sub_23BE15FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE139C0(uint64_t a1)
{
  v2 = sub_23BE16094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE139FC(uint64_t a1)
{
  v2 = sub_23BE16094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE13A38(uint64_t a1)
{
  v2 = sub_23BE15F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE13A74(uint64_t a1)
{
  v2 = sub_23BE15F98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE13AB0(uint64_t a1)
{
  v2 = sub_23BE16040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE13AEC(uint64_t a1)
{
  v2 = sub_23BE16040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE13B28()
{
  sub_23BE32DC8();
  sub_23BE328F8();
  return sub_23BE32E08();
}

uint64_t sub_23BE13B8C()
{
  sub_23BE32DC8();
  sub_23BE328F8();
  return sub_23BE32E08();
}

uint64_t sub_23BE13BD8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_23BE32C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_23BE13C58@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_23BE32C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_23BE13CB0(uint64_t a1)
{
  v2 = sub_23BE15484();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE13CEC(uint64_t a1)
{
  v2 = sub_23BE15484();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE13D28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_23BDE652C(&qword_27E1C8C38);
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Timeline(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BE326C8();
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BE15484();
  sub_23BE32E18();
  if (v2)
  {
    sub_23BDE6478(a1);
    v12 = sub_23BE326D8();
    return (*(*(v12 - 8) + 8))(v9, v12);
  }

  else
  {
    v10 = v16;
    v11 = v17;
    v13 = sub_23BE32C78();
    (*(v10 + 8))(v6, v4);
    *&v9[*(v7 + 20)] = v13;
    sub_23BE15580(v9, v11, type metadata accessor for Timeline);
    sub_23BDE6478(a1);
    return sub_23BE155E8(v9, type metadata accessor for Timeline);
  }
}

uint64_t sub_23BE13F6C()
{
  v0 = type metadata accessor for Timeline(0);
  sub_23BDEA214(v0, qword_27E1DBFB0);
  v1 = sub_23BDEA278(v0, qword_27E1DBFB0);
  result = sub_23BE326C8();
  *(v1 + *(v0 + 20)) = 60;
  return result;
}

uint64_t sub_23BE13FE0(void *a1)
{
  v2 = sub_23BDE652C(&qword_27E1C8C48);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BE15484();
  sub_23BE32E28();
  sub_23BE32CF8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23BE14174(uint64_t a1)
{
  sub_23BE32DC8();
  sub_23BE326D8();
  sub_23BE153F4(&qword_27E1C7CD8, MEMORY[0x277CC95F0]);
  sub_23BE32878();
  MEMORY[0x23EEBE630](*(v1 + *(a1 + 20)));
  return sub_23BE32E08();
}

uint64_t sub_23BE14218(uint64_t a1, uint64_t a2)
{
  sub_23BE326D8();
  sub_23BE153F4(&qword_27E1C7CD8, MEMORY[0x277CC95F0]);
  sub_23BE32878();
  return MEMORY[0x23EEBE630](*(v2 + *(a2 + 20)));
}

uint64_t sub_23BE142A4(uint64_t a1, uint64_t a2)
{
  sub_23BE32DC8();
  sub_23BE326D8();
  sub_23BE153F4(&qword_27E1C7CD8, MEMORY[0x277CC95F0]);
  sub_23BE32878();
  MEMORY[0x23EEBE630](*(v2 + *(a2 + 20)));
  return sub_23BE32E08();
}

uint64_t sub_23BE14344(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 6581861;
  if (v2 != 1)
  {
    v4 = 0x7661686542646E65;
    v3 = 0xEB00000000726F69;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7472617473;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 6581861;
  if (*a2 != 1)
  {
    v8 = 0x7661686542646E65;
    v7 = 0xEB00000000726F69;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7472617473;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23BE32D48();
  }

  return v11 & 1;
}

uint64_t sub_23BE14444()
{
  sub_23BE32DC8();
  sub_23BE328F8();

  return sub_23BE32E08();
}

uint64_t sub_23BE144E4()
{
  sub_23BE328F8();
}

uint64_t sub_23BE14570()
{
  sub_23BE32DC8();
  sub_23BE328F8();

  return sub_23BE32E08();
}

uint64_t sub_23BE1460C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BE158B8();
  *a1 = result;
  return result;
}

void sub_23BE1463C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE300000000000000;
  v5 = 6581861;
  if (v2 != 1)
  {
    v5 = 0x7661686542646E65;
    v4 = 0xEB00000000726F69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7472617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23BE14698()
{
  v1 = 6581861;
  if (*v0 != 1)
  {
    v1 = 0x7661686542646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_23BE146F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BE158B8();
  *a1 = result;
  return result;
}

uint64_t sub_23BE14718(uint64_t a1)
{
  v2 = sub_23BE154D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE14754(uint64_t a1)
{
  v2 = sub_23BE154D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE14790(void *a1)
{
  v3 = v1;
  v5 = sub_23BDE652C(&qword_27E1C8C68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BE154D8();
  sub_23BE32E28();
  v9 = type metadata accessor for Timing(0);
  v11[15] = 0;
  sub_23BE32CF8();
  if (!v2)
  {
    v11[14] = 1;
    sub_23BE32CF8();
    v11[13] = *(v3 + *(v9 + 28));
    v11[12] = 2;
    sub_23BE15648();
    sub_23BE32D08();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23BE14988@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v15 = sub_23BDE652C(&qword_27E1C8C50);
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Timing(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BE326C8();
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BE154D8();
  sub_23BE32E18();
  if (v2)
  {
    sub_23BDE6478(a1);
    v12 = sub_23BE326D8();
    return (*(*(v12 - 8) + 8))(v9, v12);
  }

  else
  {
    v10 = v14;
    v11 = v15;
    v19 = 0;
    *&v9[v7[5]] = sub_23BE32C78();
    v18 = 1;
    *&v9[v7[6]] = sub_23BE32C78();
    v16 = 2;
    sub_23BE1552C();
    sub_23BE32C88();
    (*(v4 + 8))(v6, v11);
    v9[v7[7]] = v17;
    sub_23BE15580(v9, v10, type metadata accessor for Timing);
    sub_23BDE6478(a1);
    return sub_23BE155E8(v9, type metadata accessor for Timing);
  }
}

uint64_t sub_23BE14C40(void *a1, int a2)
{
  v29 = a2;
  v3 = sub_23BDE652C(&qword_27E1C8CC8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v20 - v4;
  v5 = sub_23BDE652C(&qword_27E1C8CD0);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - v6;
  v7 = sub_23BDE652C(&qword_27E1C8CD8);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = sub_23BDE652C(&qword_27E1C8CE0);
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = sub_23BDE652C(&qword_27E1C8CE8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BE15F44();
  sub_23BE32E28();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_23BE15FEC();
      v9 = v23;
      sub_23BE32CA8();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_23BE15F98();
      v9 = v26;
      sub_23BE32CA8();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_23BE16040();
    sub_23BE32CA8();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_23BE16094();
  sub_23BE32CA8();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_23BE150B0(int *a1)
{
  sub_23BE32DC8();
  sub_23BE326D8();
  sub_23BE153F4(&qword_27E1C7CD8, MEMORY[0x277CC95F0]);
  sub_23BE32878();
  MEMORY[0x23EEBE630](*(v1 + a1[5]));
  MEMORY[0x23EEBE630](*(v1 + a1[6]));
  MEMORY[0x23EEBE630](*(v1 + a1[7]));
  return sub_23BE32E08();
}

uint64_t sub_23BE15178(uint64_t a1, int *a2)
{
  sub_23BE326D8();
  sub_23BE153F4(&qword_27E1C7CD8, MEMORY[0x277CC95F0]);
  sub_23BE32878();
  MEMORY[0x23EEBE630](*(v2 + a2[5]));
  MEMORY[0x23EEBE630](*(v2 + a2[6]));
  return MEMORY[0x23EEBE630](*(v2 + a2[7]));
}

uint64_t sub_23BE15228(uint64_t a1, int *a2)
{
  sub_23BE32DC8();
  sub_23BE326D8();
  sub_23BE153F4(&qword_27E1C7CD8, MEMORY[0x277CC95F0]);
  sub_23BE32878();
  MEMORY[0x23EEBE630](*(v2 + a2[5]));
  MEMORY[0x23EEBE630](*(v2 + a2[6]));
  MEMORY[0x23EEBE630](*(v2 + a2[7]));
  return sub_23BE32E08();
}

void *sub_23BE152FC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BE15904(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_23BE15348()
{
  result = qword_27E1C8C18;
  if (!qword_27E1C8C18)
  {
    sub_23BDE9D3C(&qword_27E1C8C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8C18);
  }

  return result;
}

uint64_t sub_23BE153F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23BE15484()
{
  result = qword_27E1C8C40;
  if (!qword_27E1C8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8C40);
  }

  return result;
}

unint64_t sub_23BE154D8()
{
  result = qword_27E1C8C58;
  if (!qword_27E1C8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8C58);
  }

  return result;
}

unint64_t sub_23BE1552C()
{
  result = qword_27E1C8C60;
  if (!qword_27E1C8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8C60);
  }

  return result;
}

uint64_t sub_23BE15580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BE155E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23BE15648()
{
  result = qword_27E1C8C70;
  if (!qword_27E1C8C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8C70);
  }

  return result;
}

BOOL sub_23BE1569C(uint64_t a1, uint64_t a2)
{
  if ((sub_23BE326B8() & 1) != 0 && (v4 = type metadata accessor for Timing(0), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BE15714(uint64_t result)
{
  if (result > 11)
  {
    if (result == 12)
    {
      return 1;
    }

    else
    {
      if (result != 30)
      {
        return 4;
      }

      return 0;
    }
  }

  else if (result != 3)
  {
    if (result == 6)
    {
      return 2;
    }

    return 4;
  }

  return result;
}

uint64_t sub_23BE1575C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A65657266 && a2 == 0xE600000000000000;
  if (v4 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65766F6D6572 && a2 == 0xE600000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74754F65646166 && a2 == 0xE700000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1886351212 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_23BE32D48();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23BE158B8()
{
  v0 = sub_23BE32C08();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void *sub_23BE15904(void *a1)
{
  v39 = sub_23BDE652C(&qword_27E1C8C78);
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v31 - v2;
  v40 = sub_23BDE652C(&qword_27E1C8C80);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v31 - v3;
  v4 = sub_23BDE652C(&qword_27E1C8C88);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = sub_23BDE652C(&qword_27E1C8C90);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_23BDE652C(&qword_27E1C8C98);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  sub_23BDE9BF0(a1, v14);
  sub_23BE15F44();
  v15 = v43;
  sub_23BE32E18();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_23BE32C98();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_23BE05594();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_23BE16040();
        v29 = v33;
        sub_23BE32C18();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_23BE16094();
        v23 = v33;
        sub_23BE32C18();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          sub_23BDE6478(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_23BE15FEC();
      v28 = v33;
      sub_23BE32C18();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_23BE15F98();
      v30 = v33;
      sub_23BE32C18();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_23BE32B78();
  swift_allocError();
  v11 = v25;
  sub_23BDE652C(&qword_27E1C7E20);
  *v11 = &type metadata for Timing.EndBehavior;
  sub_23BE32C28();
  sub_23BE32B38();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x277D84160], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  sub_23BDE6478(v44);
  return v11;
}

unint64_t sub_23BE15F44()
{
  result = qword_27E1C8CA0;
  if (!qword_27E1C8CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8CA0);
  }

  return result;
}

unint64_t sub_23BE15F98()
{
  result = qword_27E1C8CA8;
  if (!qword_27E1C8CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8CA8);
  }

  return result;
}

unint64_t sub_23BE15FEC()
{
  result = qword_27E1C8CB0;
  if (!qword_27E1C8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8CB0);
  }

  return result;
}

unint64_t sub_23BE16040()
{
  result = qword_27E1C8CB8;
  if (!qword_27E1C8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8CB8);
  }

  return result;
}

unint64_t sub_23BE16094()
{
  result = qword_27E1C8CC0;
  if (!qword_27E1C8CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8CC0);
  }

  return result;
}

unint64_t sub_23BE1615C()
{
  result = qword_27E1C8CF0;
  if (!qword_27E1C8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8CF0);
  }

  return result;
}

unint64_t sub_23BE161B4()
{
  result = qword_27E1C8CF8;
  if (!qword_27E1C8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8CF8);
  }

  return result;
}

unint64_t sub_23BE1620C()
{
  result = qword_27E1C8D00;
  if (!qword_27E1C8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D00);
  }

  return result;
}

unint64_t sub_23BE16264()
{
  result = qword_27E1C8D08;
  if (!qword_27E1C8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D08);
  }

  return result;
}

unint64_t sub_23BE162BC()
{
  result = qword_27E1C8D10;
  if (!qword_27E1C8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D10);
  }

  return result;
}

unint64_t sub_23BE16314()
{
  result = qword_27E1C8D18;
  if (!qword_27E1C8D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D18);
  }

  return result;
}

unint64_t sub_23BE1636C()
{
  result = qword_27E1C8D20;
  if (!qword_27E1C8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D20);
  }

  return result;
}

unint64_t sub_23BE163C4()
{
  result = qword_27E1C8D28;
  if (!qword_27E1C8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D28);
  }

  return result;
}

unint64_t sub_23BE1641C()
{
  result = qword_27E1C8D30;
  if (!qword_27E1C8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D30);
  }

  return result;
}

unint64_t sub_23BE16474()
{
  result = qword_27E1C8D38;
  if (!qword_27E1C8D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D38);
  }

  return result;
}

unint64_t sub_23BE164CC()
{
  result = qword_27E1C8D40;
  if (!qword_27E1C8D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D40);
  }

  return result;
}

unint64_t sub_23BE16524()
{
  result = qword_27E1C8D48;
  if (!qword_27E1C8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D48);
  }

  return result;
}

unint64_t sub_23BE1657C()
{
  result = qword_27E1C8D50;
  if (!qword_27E1C8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D50);
  }

  return result;
}

unint64_t sub_23BE165D4()
{
  result = qword_27E1C8D58;
  if (!qword_27E1C8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D58);
  }

  return result;
}

unint64_t sub_23BE1662C()
{
  result = qword_27E1C8D60;
  if (!qword_27E1C8D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D60);
  }

  return result;
}

unint64_t sub_23BE16684()
{
  result = qword_27E1C8D68;
  if (!qword_27E1C8D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D68);
  }

  return result;
}

unint64_t sub_23BE166DC()
{
  result = qword_27E1C8D70;
  if (!qword_27E1C8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D70);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Placement(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for Placement(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Placement(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 17) & 0xFFFFFF80 | (*(a1 + 24) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for Placement(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (-a2 << 17) & 0x1FFFFFF000000 | (2 * (-a2 & 0x7FLL));
      *(result + 32) = 0;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23BE16874()
{
  result = qword_27E1C8D78;
  if (!qword_27E1C8D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D78);
  }

  return result;
}

uint64_t sub_23BE168C8(int a1, double a2)
{
  if (a2 <= 6.28318531)
  {
    v2 = 0;
    if (a2 >= 0.0 && a2 > 1.04719755)
    {
      if (a2 < 1.04719755 || a2 > 2.19911486)
      {
        if (a2 < 2.19911486 || a2 > 3.14159265)
        {
          if (a2 < 3.14159265 || a2 > 4.08407045)
          {
            if (a2 < 4.08407045 || a2 > 5.23598776)
            {
              if (a2 < 5.23598776)
              {
                v2 = 0;
              }

              else
              {
                v2 = 40;
              }
            }

            else
            {
              v2 = 32;
            }
          }

          else
          {
            v2 = 24;
          }
        }

        else
        {
          v2 = 16;
        }
      }

      else
      {
        v2 = 8;
      }
    }
  }

  else
  {
    v2 = 40;
  }

  v3 = 0x10000000101uLL >> v2;
  v4 = 0x101010000uLL >> v2;
  if (a1 != 4)
  {
    LODWORD(v4) = 0x10100000001uLL >> v2;
  }

  if (a1 != 3)
  {
    LODWORD(v3) = v4;
  }

  v5 = 0x1010100uLL >> v2;
  if (a1 < 2u)
  {
    LODWORD(v5) = a1;
  }

  if (a1 <= 2u)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23BE169EC(uint64_t a1)
{
  v2 = sub_23BE1DA20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE16A28(uint64_t a1)
{
  v2 = sub_23BE1DA20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE16A64(uint64_t a1)
{
  v2 = sub_23BE1D924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE16AA0(uint64_t a1)
{
  v2 = sub_23BE1D924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE16ADC()
{
  v1 = *v0;
  v2 = 7368564;
  v3 = 1952867692;
  v4 = 0x7468676972;
  if (v1 != 3)
  {
    v4 = 0x7265746E6563;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6F74746F62;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23BE16B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BE1B020(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BE16B84(uint64_t a1)
{
  v2 = sub_23BE1D8D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE16BC0(uint64_t a1)
{
  v2 = sub_23BE1D8D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE16BFC(uint64_t a1)
{
  v2 = sub_23BE1D9CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE16C38(uint64_t a1)
{
  v2 = sub_23BE1D9CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE16C74(uint64_t a1)
{
  v2 = sub_23BE1D978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE16CB0(uint64_t a1)
{
  v2 = sub_23BE1D978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE16CEC(uint64_t a1)
{
  v2 = sub_23BE1DA74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE16D28(uint64_t a1)
{
  v2 = sub_23BE1DA74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE16D64(uint64_t a1)
{
  v2 = sub_23BE1E258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE16DA0(uint64_t a1)
{
  v2 = sub_23BE1E258();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE16DDC()
{
  v1 = 0x69507265746E6563;
  v2 = 0x656E696C796B73;
  if (*v0 != 2)
  {
    v2 = 0x74726F7077656976;
  }

  if (*v0)
  {
    v1 = 0x646E756F7267;
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

uint64_t sub_23BE16E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BE1B1C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BE16E80(uint64_t a1)
{
  v2 = sub_23BE1E108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE16EBC(uint64_t a1)
{
  v2 = sub_23BE1E108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE16EF8(uint64_t a1)
{
  v2 = sub_23BE1E204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE16F34(uint64_t a1)
{
  v2 = sub_23BE1E204();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE16F70(uint64_t a1)
{
  v2 = sub_23BE1E1B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE16FAC(uint64_t a1)
{
  v2 = sub_23BE1E1B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE16FE8(uint64_t a1)
{
  v2 = sub_23BE1E15C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE17024(uint64_t a1)
{
  v2 = sub_23BE1E15C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE17060(uint64_t a1)
{
  v2 = sub_23BE1D118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE1709C(uint64_t a1)
{
  v2 = sub_23BE1D118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE170D8(uint64_t a1)
{
  v2 = sub_23BE1CEC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE17114(uint64_t a1)
{
  v2 = sub_23BE1CEC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE17150(uint64_t a1)
{
  v2 = sub_23BE1CF14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE1718C(uint64_t a1)
{
  v2 = sub_23BE1CF14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE171C8()
{
  if (*v0)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 0x7265746E6563;
  }
}

uint64_t sub_23BE171F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265746E6563 && a2 == 0xE600000000000000;
  if (v6 || (sub_23BE32D48() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23BE32D48();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23BE172C8(uint64_t a1)
{
  v2 = sub_23BE1CE6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE17304(uint64_t a1)
{
  v2 = sub_23BE1CE6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE17340(uint64_t a1)
{
  v2 = sub_23BE1F70C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE1737C(uint64_t a1)
{
  v2 = sub_23BE1F70C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE173B8()
{
  v1 = *v0;
  v2 = 0x7369776B636F6C63;
  v3 = 0x7365776874726F6ELL;
  v4 = 0x7361656874756F73;
  if (v1 != 4)
  {
    v4 = 0x7365776874756F73;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x7361656874726F6ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23BE17468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BE1B32C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BE1749C(uint64_t a1)
{
  v2 = sub_23BE1F514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE174D8(uint64_t a1)
{
  v2 = sub_23BE1F514();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE17514(uint64_t a1)
{
  v2 = sub_23BE1F6B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE17550(uint64_t a1)
{
  v2 = sub_23BE1F6B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE1758C(uint64_t a1)
{
  v2 = sub_23BE1F664();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE175C8(uint64_t a1)
{
  v2 = sub_23BE1F664();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE17604(uint64_t a1)
{
  v2 = sub_23BE1F610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE17640(uint64_t a1)
{
  v2 = sub_23BE1F610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE1767C(uint64_t a1)
{
  v2 = sub_23BE1F5BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE176B8(uint64_t a1)
{
  v2 = sub_23BE1F5BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE176F4(uint64_t a1)
{
  v2 = sub_23BE1F568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE17730(uint64_t a1)
{
  v2 = sub_23BE1F568();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE1776C()
{
  v1 = 1701736302;
  v2 = 0x73736572676F7270;
  if (*v0 != 2)
  {
    v2 = 0x676E69636166;
  }

  if (*v0)
  {
    v1 = 1684955496;
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

uint64_t sub_23BE177DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BE1B540(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BE17804(uint64_t a1)
{
  v2 = sub_23BE1EA38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE17840(uint64_t a1)
{
  v2 = sub_23BE1EA38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE1787C()
{
  if (*v0)
  {
    return 0x536C616974696E69;
  }

  else
  {
    return 0x6F69746365726964;
  }
}

uint64_t sub_23BE178C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_23BE32D48() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x536C616974696E69 && a2 == 0xEB00000000656469)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23BE32D48();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23BE179AC(uint64_t a1)
{
  v2 = sub_23BE1EA8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE179E8(uint64_t a1)
{
  v2 = sub_23BE1EA8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE17A24(uint64_t a1)
{
  v2 = sub_23BE1EBDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE17A60(uint64_t a1)
{
  v2 = sub_23BE1EBDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE17A9C(uint64_t a1)
{
  v2 = sub_23BE1EC30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE17AD8(uint64_t a1)
{
  v2 = sub_23BE1EC30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE17B14(uint64_t a1)
{
  v2 = sub_23BE1EB88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE17B50(uint64_t a1)
{
  v2 = sub_23BE1EB88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE17B8C()
{
  if (*v0)
  {
    return 0x6E656D6E67696C61;
  }

  else
  {
    return 28532;
  }
}

uint64_t sub_23BE17BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 28532 && a2 == 0xE200000000000000;
  if (v5 || (sub_23BE32D48() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23BE32D48();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23BE17C9C(uint64_t a1)
{
  v2 = sub_23BE1C614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE17CD8(uint64_t a1)
{
  v2 = sub_23BE1C614();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE17D14()
{
  v1 = 29793;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461746F72;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28532;
  }
}

uint64_t sub_23BE17D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BE1B6A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BE17D80(uint64_t a1)
{
  v2 = sub_23BE1C56C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE17DBC(uint64_t a1)
{
  v2 = sub_23BE1C56C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE17DF8()
{
  v1 = 0x616E6964726F6F63;
  v2 = 0x6465686361747461;
  if (*v0 != 2)
  {
    v2 = 0x74616C736E617274;
  }

  if (*v0)
  {
    v1 = 0x6465726F68636E61;
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

uint64_t sub_23BE17E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BE1B7AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BE17E9C(uint64_t a1)
{
  v2 = sub_23BE1C41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE17ED8(uint64_t a1)
{
  v2 = sub_23BE1C41C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE17F14(uint64_t a1)
{
  v2 = sub_23BE1C710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE17F50(uint64_t a1)
{
  v2 = sub_23BE1C710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE17F8C()
{
  v1 = 29793;
  if (*v0 != 1)
  {
    v1 = 0x6E696769726FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1836020326;
  }
}

uint64_t sub_23BE17FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BE1B920(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BE17FF8(uint64_t a1)
{
  v2 = sub_23BE1C470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE18034(uint64_t a1)
{
  v2 = sub_23BE1C470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE18070()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[31] >> 6;
  if (v3 > 1)
  {
    v9 = *(v0 + 2);
    v10 = v0[24];
    if (v3 == 2)
    {
      v11 = *(v0 + 25);
      MEMORY[0x23EEBE630](v1 & 1);
      if (v10)
      {
        if (v2 | v9)
        {
          if (v2 ^ 1 | v9)
          {
            v12 = 2;
          }

          else
          {
            v12 = 1;
          }
        }

        else
        {
          v12 = 0;
        }

        MEMORY[0x23EEBE630](v12);
      }

      else
      {
        MEMORY[0x23EEBE630](3);
        if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v13 = v2;
        }

        else
        {
          v13 = 0;
        }

        MEMORY[0x23EEBE650](v13);
        if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v14 = v9;
        }

        else
        {
          v14 = 0;
        }

        MEMORY[0x23EEBE650](v14);
      }

      v17 = v11 >> 8;
      if (v11 >> 8 == 2)
      {
        v18 = 0;
      }

      else if (v17 == 3)
      {
        v18 = 1;
      }

      else if (v17 == 4)
      {
        v18 = 2;
      }

      else
      {
        MEMORY[0x23EEBE630](3);
        MEMORY[0x23EEBE630](v11);
        v18 = (v11 >> 8) & 1;
      }

      return MEMORY[0x23EEBE630](v18);
    }

    v4 = *(v0 + 4);
    MEMORY[0x23EEBE630](v1 & 1);
    if ((v10 & 1) == 0)
    {
      MEMORY[0x23EEBE630](3);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v15 = v2;
      }

      else
      {
        v15 = 0;
      }

      MEMORY[0x23EEBE650](v15);
      if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v16 = v9;
      }

      else
      {
        v16 = 0;
      }

      MEMORY[0x23EEBE650](v16);
      goto LABEL_46;
    }

    if (v2 | v9)
    {
      if (v2 ^ 1 | v9)
      {
        v1 = 2;
      }

      else
      {
        v1 = 1;
      }
    }

    else
    {
      v1 = 0;
    }

LABEL_45:
    MEMORY[0x23EEBE630](v1);
LABEL_46:
    v18 = v4;
    return MEMORY[0x23EEBE630](v18);
  }

  v4 = v0[1];
  if (v3)
  {
    goto LABEL_45;
  }

  v5 = *(v0 + 2) | (*(v0 + 3) << 32);
  if (v5 & 0x7FF000000000 | (v1 | (v4 << 8) | (v5 << 16)) & 0xFFFFFFFFFFFFFLL)
  {
    v6 = v1 | (v4 << 8) | (v5 << 16);
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x23EEBE650](v6);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x23EEBE650](v7);
}

uint64_t sub_23BE18224(void *a1)
{
  v2 = v1;
  v4 = sub_23BDE652C(&qword_27E1C8E70);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v41 - v5;
  v6 = sub_23BDE652C(&qword_27E1C8E78);
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v44 = &v41 - v7;
  v8 = sub_23BDE652C(&qword_27E1C8E80);
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = sub_23BDE652C(&qword_27E1C8E88);
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v53 = sub_23BDE652C(&qword_27E1C8E90);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v15 = &v41 - v14;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BE1C41C();
  v52 = v15;
  sub_23BE32E28();
  v16 = *v2;
  v17 = *(v2 + 1);
  v18 = v2[31] >> 6;
  if (v18 > 1)
  {
    v24 = *(v2 + 2);
    v25 = v2[24];
    if (v18 == 2)
    {
      LODWORD(v49) = v2[24];
      v26 = *(v2 + 25);
      LOBYTE(v54) = 2;
      sub_23BE1C56C();
      v27 = v44;
      v29 = v52;
      v28 = v53;
      sub_23BE32CA8();
      LOBYTE(v54) = v16 & 1;
      v57 = 0;
      sub_23BE1C7B8();
      v30 = v47;
      v31 = v50;
      sub_23BE32D08();
      if (v31)
      {
        (*(v46 + 8))(v27, v30);
        return (*(v51 + 8))(v29, v28);
      }

      else
      {
        v54 = v17;
        v55 = v24;
        v56 = v49 & 1;
        v57 = 1;
        sub_23BE1C80C();
        sub_23BE32D08();
        LOWORD(v54) = v26;
        v57 = 2;
        sub_23BE1C860();
        sub_23BE32D08();
        v40 = v52;
        (*(v46 + 8))(v27, v30);
        return (*(v51 + 8))(v40, v28);
      }
    }

    else
    {
      v47 = *(v2 + 4);
      LOBYTE(v54) = 3;
      sub_23BE1C470();
      v35 = v45;
      v37 = v52;
      v36 = v53;
      sub_23BE32CA8();
      LOBYTE(v54) = v16 & 1;
      v57 = 0;
      sub_23BE1C7B8();
      v39 = v49;
      v38 = v50;
      sub_23BE32D08();
      if (v38)
      {
        (*(v48 + 8))(v35, v39);
        return (*(v51 + 8))(v37, v36);
      }

      else
      {
        v54 = v17;
        v55 = v24;
        v56 = v25 & 1;
        v57 = 1;
        sub_23BE1C80C();
        sub_23BE32D08();
        LOBYTE(v54) = 2;
        sub_23BE32CF8();
        (*(v48 + 8))(v35, v39);
        return (*(v51 + 8))(v52, v36);
      }
    }
  }

  else
  {
    v19 = v2[1];
    if (v18)
    {
      LOBYTE(v54) = 1;
      sub_23BE1C614();
      v33 = v52;
      v32 = v53;
      sub_23BE32CA8();
      LOBYTE(v54) = v16;
      v57 = 0;
      sub_23BE1C8B4();
      v34 = v50;
      sub_23BE32D08();
      if (v34)
      {
        (*(v43 + 8))(v10, v8);
        return (*(v51 + 8))(v33, v32);
      }

      else
      {
        LOBYTE(v54) = v19;
        v57 = 1;
        sub_23BE1C908();
        sub_23BE32D08();
        (*(v43 + 8))(v10, v8);
        return (*(v51 + 8))(v33, v53);
      }
    }

    else
    {
      v20 = *(v2 + 2);
      v21 = *(v2 + 3);
      LOBYTE(v54) = 0;
      sub_23BE1C710();
      v22 = v52;
      sub_23BE32CA8();
      LOBYTE(v54) = v16;
      BYTE1(v54) = v19;
      HIWORD(v54) = v21;
      *(&v54 + 2) = v20;
      v55 = v17;
      sub_23BE1C95C();
      sub_23BE32D08();
      (*(v42 + 8))(v13, v11);
      return (*(v51 + 8))(v22, v53);
    }
  }
}

uint64_t sub_23BE189D8(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_23BDE652C(&qword_27E1C8EF8);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = sub_23BDE652C(&qword_27E1C8F00);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = sub_23BDE652C(&qword_27E1C8F08);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BE1CE6C();
  sub_23BE32E28();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_23BE1CEC0();
    sub_23BE32CA8();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_23BE1CF14();
    sub_23BE32CA8();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

double sub_23BE18C94@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BE1BA2C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_23BE18CF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_23BE1AD28(v5, v7) & 1;
}

uint64_t sub_23BE18D40()
{
  sub_23BE32DC8();
  sub_23BE18070();
  return sub_23BE32E08();
}

uint64_t sub_23BE18D84()
{
  sub_23BE32DC8();
  sub_23BE18070();
  return sub_23BE32E08();
}

uint64_t sub_23BE18DD0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BE1C9B0(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_23BE18E1C(void *a1)
{
  v3 = sub_23BDE652C(&qword_27E1C8F20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BE1D118();
  sub_23BE32E28();
  v10 = 0;
  sub_23BE32CE8();
  if (!v1)
  {
    v9 = 1;
    sub_23BE32CE8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23BE18FA4(void *a1, int a2)
{
  v40 = a2;
  v3 = sub_23BDE652C(&qword_27E1C8F88);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v29 - v4;
  v5 = sub_23BDE652C(&qword_27E1C8F90);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v32 = &v29 - v6;
  v7 = sub_23BDE652C(&qword_27E1C8F98);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v29 = &v29 - v8;
  v9 = sub_23BDE652C(&qword_27E1C8FA0);
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = sub_23BDE652C(&qword_27E1C8FA8);
  v38 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v41 = sub_23BDE652C(&qword_27E1C8FB0);
  v15 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v17 = &v29 - v16;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BE1D8D0();
  sub_23BE32E28();
  v18 = (v15 + 8);
  if (v40 <= 1u)
  {
    v24 = v38;
    v23 = v39;
    if (v40)
    {
      v43 = 1;
      sub_23BE1DA20();
      v28 = v41;
      sub_23BE32CA8();
      (*(v23 + 8))(v11, v9);
      return (*v18)(v17, v28);
    }

    v42 = 0;
    sub_23BE1DA74();
    v25 = v41;
    sub_23BE32CA8();
    (*(v24 + 8))(v14, v12);
    return (*v18)(v17, v25);
  }

  if (v40 == 2)
  {
    v44 = 2;
    sub_23BE1D9CC();
    v26 = v29;
    v25 = v41;
    sub_23BE32CA8();
    (*(v30 + 8))(v26, v31);
    return (*v18)(v17, v25);
  }

  if (v40 == 3)
  {
    v45 = 3;
    sub_23BE1D978();
    v19 = v32;
    v20 = v41;
    sub_23BE32CA8();
    v22 = v33;
    v21 = v34;
  }

  else
  {
    v46 = 4;
    sub_23BE1D924();
    v19 = v35;
    v20 = v41;
    sub_23BE32CA8();
    v22 = v36;
    v21 = v37;
  }

  (*(v22 + 8))(v19, v21);
  return (*v18)(v17, v20);
}

void sub_23BE19518(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BE1CF68(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_23BE19570@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BE1D16C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_23BE195B8(void *a1, int a2)
{
  v29 = a2;
  v3 = sub_23BDE652C(&qword_27E1C9008);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v20 - v4;
  v5 = sub_23BDE652C(&qword_27E1C9010);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - v6;
  v7 = sub_23BDE652C(&qword_27E1C9018);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = sub_23BDE652C(&qword_27E1C9020);
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = sub_23BDE652C(&qword_27E1C9028);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BE1E108();
  sub_23BE32E28();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_23BE1E1B0();
      v9 = v23;
      sub_23BE32CA8();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_23BE1E15C();
      v9 = v26;
      sub_23BE32CA8();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_23BE1E204();
    sub_23BE32CA8();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_23BE1E258();
  sub_23BE32CA8();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

void *sub_23BE19A04@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BE1DAC8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_23BE19A4C()
{
  v1 = 0x50207265746E6543;
  v2 = 0x656E696C796B53;
  if (*v0 != 2)
  {
    v2 = 0x74726F7077656956;
  }

  if (*v0)
  {
    v1 = 0x646E756F7247;
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

uint64_t sub_23BE19AC8(__int16 a1)
{
  switch(HIBYTE(a1))
  {
    case 2u:
      return 1701736270;
    case 3u:
      return 1684955464;
    case 4u:
      return 0x73736572676F7250;
  }

  v2 = a1;
  v3 = 0xE900000000000074;
  sub_23BE32B08();

  v4 = 0xE900000000000065;
  v5 = 0x7369776B636F6C43;
  v6 = 0x7365776874726F4ELL;
  v7 = 0x7361656874756F53;
  if (v2 != 4)
  {
    v7 = 0x7365776874756F53;
  }

  if (v2 != 3)
  {
    v6 = v7;
  }

  v8 = 0x800000023BE356A0;
  v9 = 0xD000000000000010;
  if (v2 != 1)
  {
    v9 = 0x7361656874726F4ELL;
    v8 = 0xE900000000000074;
  }

  if (v2)
  {
    v5 = v9;
    v4 = v8;
  }

  if (v2 <= 2u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2u)
  {
    v3 = v4;
  }

  MEMORY[0x23EEBE160](v10, v3);

  MEMORY[0x23EEBE160](0x1000000000000010, 0x800000023BE35680);
  v11 = sub_23BE328E8();
  MEMORY[0x23EEBE160](v11);

  return 0x20676E69636146;
}

uint64_t sub_23BE19C9C(void *a1, int a2)
{
  v31 = a2;
  v3 = sub_23BDE652C(&qword_27E1C9090);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v22 - v4;
  v5 = sub_23BDE652C(&qword_27E1C9098);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = sub_23BDE652C(&qword_27E1C90A0);
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = sub_23BDE652C(&qword_27E1C90A8);
  v23 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = sub_23BDE652C(&qword_27E1C90B0);
  v32 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BE1EA38();
  v17 = v31;
  sub_23BE32E28();
  switch(HIBYTE(v17))
  {
    case 2u:
      v34 = 0;
      sub_23BE1EC30();
      sub_23BE32CA8();
      (*(v23 + 8))(v13, v11);
      return (*(v32 + 8))(v16, v14);
    case 3u:
      v35 = 1;
      sub_23BE1EBDC();
      sub_23BE32CA8();
      (*(v24 + 8))(v10, v25);
      return (*(v32 + 8))(v16, v14);
    case 4u:
      v36 = 2;
      sub_23BE1EB88();
      sub_23BE32CA8();
      (*(v26 + 8))(v7, v27);
      return (*(v32 + 8))(v16, v14);
    default:
      v41 = 3;
      sub_23BE1EA8C();
      v19 = v28;
      sub_23BE32CA8();
      v40 = v17;
      v39 = 0;
      sub_23BE1EC84();
      v20 = v30;
      v21 = v33;
      sub_23BE32D08();
      if (!v21)
      {
        v38 = HIBYTE(v17) & 1;
        v37 = 1;
        sub_23BE1ECD8();
        sub_23BE32D08();
      }

      (*(v29 + 8))(v19, v20);
      return (*(v32 + 8))(v16, v14);
  }
}

uint64_t sub_23BE1A1B0@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_23BE1E2AC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_23BE1A20C()
{
  v1 = *v0;
  sub_23BE32DC8();
  if ((BYTE1(v1) - 2) >= 3u)
  {
    MEMORY[0x23EEBE630](3);
    MEMORY[0x23EEBE630](v1);
    v2 = (v1 >> 8) & 1;
  }

  else
  {
    v2 = (BYTE1(v1) - 2);
  }

  MEMORY[0x23EEBE630](v2);
  return sub_23BE32E08();
}

uint64_t sub_23BE1A288()
{
  v1 = *v0;
  if ((BYTE1(v1) - 2) >= 3u)
  {
    MEMORY[0x23EEBE630](3);
    MEMORY[0x23EEBE630](v1);
    v2 = (v1 >> 8) & 1;
  }

  else
  {
    v2 = (BYTE1(v1) - 2);
  }

  return MEMORY[0x23EEBE630](v2);
}

uint64_t sub_23BE1A2E4()
{
  v1 = *v0;
  sub_23BE32DC8();
  if ((BYTE1(v1) - 2) >= 3u)
  {
    MEMORY[0x23EEBE630](3);
    MEMORY[0x23EEBE630](v1);
    v2 = (v1 >> 8) & 1;
  }

  else
  {
    v2 = (BYTE1(v1) - 2);
  }

  MEMORY[0x23EEBE630](v2);
  return sub_23BE32E08();
}

uint64_t sub_23BE1A35C(void *a1, int a2)
{
  v44 = a2;
  v3 = sub_23BDE652C(&qword_27E1C9138);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v28 - v4;
  v5 = sub_23BDE652C(&qword_27E1C9140);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v28 - v6;
  v7 = sub_23BDE652C(&qword_27E1C9148);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = &v28 - v8;
  v9 = sub_23BDE652C(&qword_27E1C9150);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = sub_23BDE652C(&qword_27E1C9158);
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = sub_23BDE652C(&qword_27E1C9160);
  v29 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v43 = sub_23BDE652C(&qword_27E1C9168);
  v18 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v20 = &v28 - v19;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BE1F514();
  sub_23BE32E28();
  v21 = (v18 + 8);
  if (v44 > 2u)
  {
    if (v44 == 3)
    {
      v48 = 3;
      sub_23BE1F610();
      v24 = v34;
      v25 = v43;
      sub_23BE32CA8();
      v27 = v35;
      v26 = v36;
    }

    else if (v44 == 4)
    {
      v49 = 4;
      sub_23BE1F5BC();
      v24 = v37;
      v25 = v43;
      sub_23BE32CA8();
      v27 = v38;
      v26 = v39;
    }

    else
    {
      v50 = 5;
      sub_23BE1F568();
      v24 = v40;
      v25 = v43;
      sub_23BE32CA8();
      v27 = v41;
      v26 = v42;
    }

    (*(v27 + 8))(v24, v26);
  }

  else if (v44)
  {
    if (v44 == 1)
    {
      v46 = 1;
      sub_23BE1F6B8();
      v22 = v43;
      sub_23BE32CA8();
      (*(v30 + 8))(v14, v31);
      return (*v21)(v20, v22);
    }

    v47 = 2;
    sub_23BE1F664();
    v25 = v43;
    sub_23BE32CA8();
    (*(v32 + 8))(v11, v33);
  }

  else
  {
    v45 = 0;
    sub_23BE1F70C();
    v25 = v43;
    sub_23BE32CA8();
    (*(v29 + 8))(v17, v15);
  }

  return (*v21)(v20, v25);
}

uint64_t sub_23BE1A960@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BE1ED2C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_23BE1A9A8()
{
  v1 = *v0;
  v2 = 0x7369776B636F6C43;
  v3 = 0x7365776874726F4ELL;
  v4 = 0x7361656874756F53;
  if (v1 != 4)
  {
    v4 = 0x7365776874756F53;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x7361656874726F4ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_23BE1AA8C()
{
  result = qword_27E1C8D90;
  if (!qword_27E1C8D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D90);
  }

  return result;
}

unint64_t sub_23BE1AAE4()
{
  result = qword_27E1C8D98;
  if (!qword_27E1C8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8D98);
  }

  return result;
}

unint64_t sub_23BE1AB6C()
{
  result = qword_27E1C8DB0;
  if (!qword_27E1C8DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8DB0);
  }

  return result;
}

unint64_t sub_23BE1ABF4()
{
  result = qword_27E1C8DC8;
  if (!qword_27E1C8DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8DC8);
  }

  return result;
}

unint64_t sub_23BE1AC4C()
{
  result = qword_27E1C8DD0;
  if (!qword_27E1C8DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8DD0);
  }

  return result;
}

unint64_t sub_23BE1ACD4()
{
  result = qword_27E1C8DE8;
  if (!qword_27E1C8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8DE8);
  }

  return result;
}

uint64_t sub_23BE1AD28(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[31] >> 6;
  if (v4 > 1)
  {
    v8 = *(a1 + 2);
    if (v4 != 2)
    {
      if (a2[31] >> 6) < 3uLL || ((v2 ^ *a2))
      {
        return 0;
      }

      v15 = *(a2 + 1);
      v14 = *(a2 + 2);
      if (a1[24])
      {
        if (*&v3 | *&v8)
        {
          if (*&v3 ^ 1 | *&v8)
          {
            if ((a2[24] & 1) == 0 || __PAIR128__(*&v14, *&v15) < 2)
            {
              return 0;
            }
          }

          else if ((a2[24] & 1) == 0 || *&v15 ^ 1 | *&v14)
          {
            return 0;
          }
        }

        else if ((a2[24] & 1) == 0 || *&v15 | *&v14)
        {
          return 0;
        }
      }

      else
      {
        if (a2[24])
        {
          return 0;
        }

        if (v3 != v15 || v8 != v14)
        {
          return 0;
        }
      }

      return *(a1 + 4) == *(a2 + 4);
    }

    if (((a2[31] << 32) & 0xC000000000) == 0x8000000000 && ((v2 ^ *a2) & 1) == 0)
    {
      v9 = *(a1 + 25);
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      v12 = *(a2 + 25);
      if (a1[24])
      {
        if (*&v3 | *&v8)
        {
          if (*&v3 ^ 1 | *&v8)
          {
            if ((a2[24] & 1) == 0 || __PAIR128__(*&v10, *&v11) < 2)
            {
              return 0;
            }
          }

          else if ((a2[24] & 1) == 0 || *&v11 ^ 1 | *&v10)
          {
            return 0;
          }
        }

        else if ((a2[24] & 1) == 0 || *&v11 | *&v10)
        {
          return 0;
        }
      }

      else
      {
        if (a2[24])
        {
          return 0;
        }

        if (v3 != v11 || v8 != v10)
        {
          return 0;
        }
      }

      v18 = v9 >> 8;
      if (v9 >> 8 == 2)
      {
        if ((v12 & 0xFF00) != 0x200)
        {
          return 0;
        }
      }

      else if (v18 == 3)
      {
        if ((v12 & 0xFF00) != 0x300)
        {
          return 0;
        }
      }

      else if (v18 == 4)
      {
        if ((v12 & 0xFF00) != 0x400)
        {
          return 0;
        }
      }

      else if ((v12 >> 8) - 2 < 3 || (BYTE1(v12) ^ BYTE1(v9)) & 1 | (v12 ^ v9))
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  v5 = a1[1];
  if (!v4)
  {
    if (!(*(a2 + 3) >> 62))
    {
      v6 = *a2 == COERCE_DOUBLE(v2 | (v5 << 8) | ((*(a1 + 2) | (*(a1 + 3) << 32)) << 16));
      return *(a2 + 1) == v3 && v6;
    }

    return 0;
  }

  if (*(a2 + 3) >> 62 != 1)
  {
    return 0;
  }

  v13 = v5 == BYTE1(*a2);
  return v2 == *a2 && v13;
}

BOOL sub_23BE1AF94(__int16 a1, __int16 a2)
{
  switch(HIBYTE(a1))
  {
    case 2u:
      return (a2 & 0xFF00) == 0x200;
    case 3u:
      return (a2 & 0xFF00) == 0x300;
    case 4u:
      return (a2 & 0xFF00) == 0x400;
  }

  if (HIBYTE(a2) - 2 < 3)
  {
    return 0;
  }

  return a2 == a1 && ((HIBYTE(a2) ^ HIBYTE(a1)) & 1) == 0;
}

uint64_t sub_23BE1B020(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v3 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1952867692 && a2 == 0xE400000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_23BE32D48();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23BE1B1C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69507265746E6563 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E756F7267 && a2 == 0xE600000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E696C796B73 && a2 == 0xE700000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74726F7077656976 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_23BE32D48();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23BE1B32C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7369776B636F6C63 && a2 == 0xE900000000000065 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023BE34C60 == a2 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7361656874726F6ELL && a2 == 0xE900000000000074 || (sub_23BE32D48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365776874726F6ELL && a2 == 0xE900000000000074 || (sub_23BE32D48() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7361656874756F73 && a2 == 0xE900000000000074 || (sub_23BE32D48() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365776874756F73 && a2 == 0xE900000000000074)
  {

    return 5;
  }

  else
  {
    v5 = sub_23BE32D48();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_23BE1B540(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684955496 && a2 == 0xE400000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xEB00000000676E69 || (sub_23BE32D48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69636166 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_23BE32D48();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23BE1B6A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 28532 && a2 == 0xE200000000000000;
  if (v3 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 29793 && a2 == 0xE200000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23BE32D48();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23BE1B7AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616E6964726F6F63 && a2 == 0xEA00000000006574 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465726F68636E61 && a2 == 0xE800000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465686361747461 && a2 == 0xE800000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74616C736E617274 && a2 == 0xEA00000000006465)
  {

    return 3;
  }

  else
  {
    v5 = sub_23BE32D48();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23BE1B920(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1836020326 && a2 == 0xE400000000000000;
  if (v3 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 29793 && a2 == 0xE200000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23BE32D48();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23BE1BA2C@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v47 = a2;
  v49 = sub_23BDE652C(&qword_27E1C8DF0);
  v54 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v56 = &v46 - v3;
  v50 = sub_23BDE652C(&qword_27E1C8DF8);
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v55 = &v46 - v4;
  v5 = sub_23BDE652C(&qword_27E1C8E00);
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  v8 = sub_23BDE652C(&qword_27E1C8E08);
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = sub_23BDE652C(&qword_27E1C8E10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v15 = a1[3];
  v58 = a1;
  sub_23BDE9BF0(a1, v15);
  sub_23BE1C41C();
  v16 = v57;
  sub_23BE32E18();
  if (v16)
  {
    return sub_23BDE6478(v58);
  }

  v57 = 0;
  v17 = v10;
  v18 = v55;
  v19 = v56;
  v20 = sub_23BE32C98();
  v21 = (2 * *(v20 + 16)) | 1;
  v62 = v20;
  v63 = v20 + 32;
  v64 = 0;
  v65 = v21;
  v22 = sub_23BE05594();
  if (v22 == 4 || v64 != v65 >> 1)
  {
    v29 = sub_23BE32B78();
    swift_allocError();
    v31 = v30;
    sub_23BDE652C(&qword_27E1C7E20);
    *v31 = &type metadata for Placement;
    sub_23BE32C28();
    sub_23BE32B38();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
    swift_willThrow();
    goto LABEL_9;
  }

  if (v22 > 1u)
  {
    v52 = v12;
    if (v22 == 2)
    {
      LOBYTE(v59) = 2;
      sub_23BE1C56C();
      v33 = v57;
      sub_23BE32C18();
      if (!v33)
      {
        LOBYTE(v59) = 0;
        sub_23BE1C4C4();
        v34 = v50;
        sub_23BE32C88();
        v27 = v68;
        LOBYTE(v66) = 1;
        sub_23BE1C518();
        v39 = v18;
        sub_23BE32C88();
        v40 = v53;
        v42 = v14;
        v57 = v11;
        v28 = v59;
        v24 = v60;
        v43 = v61;
        v67 = 2;
        sub_23BE1C5C0();
        sub_23BE32C88();
        (*(v40 + 8))(v39, v34);
        (*(v52 + 8))(v42, v57);
        swift_unknownObjectRelease();
        v26 = 0;
        v44 = 0x8000000000000000;
        if (v43)
        {
          v44 = 0x8000000000000001;
        }

        v25 = v44 | (v66 << 8);
        goto LABEL_24;
      }
    }

    else
    {
      LOBYTE(v59) = 3;
      sub_23BE1C470();
      v37 = v57;
      sub_23BE32C18();
      if (!v37)
      {
        LOBYTE(v59) = 0;
        sub_23BE1C4C4();
        v38 = v49;
        sub_23BE32C88();
        v27 = v66;
        v68 = 1;
        sub_23BE1C518();
        sub_23BE32C88();
        v55 = v14;
        v57 = v11;
        v28 = v59;
        v24 = v60;
        v53 = v61;
        v68 = 2;
        v26 = sub_23BE32C78();
        (*(v54 + 8))(v19, v38);
        (*(v12 + 8))(v55, v57);
        swift_unknownObjectRelease();
        v25 = v53 | 0xC000000000000000;
        goto LABEL_24;
      }
    }

    (*(v52 + 8))(v14, v11);
    goto LABEL_10;
  }

  if (v22)
  {
    LOBYTE(v59) = 1;
    sub_23BE1C614();
    v35 = v57;
    sub_23BE32C18();
    if (!v35)
    {
      LOBYTE(v66) = 0;
      sub_23BE1C668();
      v36 = v52;
      sub_23BE32C88();
      v41 = v59;
      v68 = 1;
      sub_23BE1C6BC();
      sub_23BE32C88();
      (*(v51 + 8))(v7, v36);
      (*(v12 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v28 = 0;
      v24 = 0;
      v26 = 0;
      v27 = v41 | (v66 << 8);
      v25 = 0x4000000000000000;
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  LOBYTE(v59) = 0;
  sub_23BE1C710();
  v23 = v57;
  sub_23BE32C18();
  if (v23)
  {
LABEL_9:
    (*(v12 + 8))(v14, v11);
LABEL_10:
    swift_unknownObjectRelease();
    return sub_23BDE6478(v58);
  }

  sub_23BE1C764();
  sub_23BE32C88();
  (*(v48 + 8))(v17, v8);
  (*(v12 + 8))(v14, v11);
  swift_unknownObjectRelease();
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = v59;
  v28 = v60;
LABEL_24:
  v45 = v47;
  result = sub_23BDE6478(v58);
  *v45 = v27;
  v45[1] = v28;
  v45[2] = v24;
  v45[3] = v25;
  v45[4] = v26;
  return result;
}

unint64_t sub_23BE1C41C()
{
  result = qword_27E1C8E18;
  if (!qword_27E1C8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8E18);
  }

  return result;
}

unint64_t sub_23BE1C470()
{
  result = qword_27E1C8E20;
  if (!qword_27E1C8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8E20);
  }

  return result;
}

unint64_t sub_23BE1C4C4()
{
  result = qword_27E1C8E28;
  if (!qword_27E1C8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8E28);
  }

  return result;
}

unint64_t sub_23BE1C518()
{
  result = qword_27E1C8E30;
  if (!qword_27E1C8E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8E30);
  }

  return result;
}

unint64_t sub_23BE1C56C()
{
  result = qword_27E1C8E38;
  if (!qword_27E1C8E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8E38);
  }

  return result;
}

unint64_t sub_23BE1C5C0()
{
  result = qword_27E1C8E40;
  if (!qword_27E1C8E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8E40);
  }

  return result;
}

unint64_t sub_23BE1C614()
{
  result = qword_27E1C8E48;
  if (!qword_27E1C8E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8E48);
  }

  return result;
}

unint64_t sub_23BE1C668()
{
  result = qword_27E1C8E50;
  if (!qword_27E1C8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8E50);
  }

  return result;
}

unint64_t sub_23BE1C6BC()
{
  result = qword_27E1C8E58;
  if (!qword_27E1C8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8E58);
  }

  return result;
}

unint64_t sub_23BE1C710()
{
  result = qword_27E1C8E60;
  if (!qword_27E1C8E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8E60);
  }

  return result;
}

unint64_t sub_23BE1C764()
{
  result = qword_27E1C8E68;
  if (!qword_27E1C8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8E68);
  }

  return result;
}

unint64_t sub_23BE1C7B8()
{
  result = qword_27E1C8E98;
  if (!qword_27E1C8E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8E98);
  }

  return result;
}

unint64_t sub_23BE1C80C()
{
  result = qword_27E1C8EA0;
  if (!qword_27E1C8EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8EA0);
  }

  return result;
}

unint64_t sub_23BE1C860()
{
  result = qword_27E1C8EA8;
  if (!qword_27E1C8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8EA8);
  }

  return result;
}

unint64_t sub_23BE1C8B4()
{
  result = qword_27E1C8EB0;
  if (!qword_27E1C8EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8EB0);
  }

  return result;
}

unint64_t sub_23BE1C908()
{
  result = qword_27E1C8EB8;
  if (!qword_27E1C8EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8EB8);
  }

  return result;
}

unint64_t sub_23BE1C95C()
{
  result = qword_27E1C8EC0;
  if (!qword_27E1C8EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8EC0);
  }

  return result;
}

uint64_t sub_23BE1C9B0(void *a1)
{
  v2 = sub_23BDE652C(&qword_27E1C8EC8);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = sub_23BDE652C(&qword_27E1C8ED0);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = sub_23BDE652C(&qword_27E1C8ED8);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BE1CE6C();
  v11 = v26;
  sub_23BE32E18();
  if (v11)
  {
    return sub_23BDE6478(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_23BE32C98();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_23BE05590();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_23BE32B78();
    swift_allocError();
    v19 = v18;
    sub_23BDE652C(&qword_27E1C7E20);
    *v19 = &type metadata for Placement.Pivot;
    sub_23BE32C28();
    sub_23BE32B38();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_23BDE6478(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_23BE1CEC0();
    sub_23BE32C18();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_23BE1CF14();
    sub_23BE32C18();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  sub_23BDE6478(v26);
  return v31 & 1;
}

unint64_t sub_23BE1CE6C()
{
  result = qword_27E1C8EE0;
  if (!qword_27E1C8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8EE0);
  }

  return result;
}

unint64_t sub_23BE1CEC0()
{
  result = qword_27E1C8EE8;
  if (!qword_27E1C8EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8EE8);
  }

  return result;
}

unint64_t sub_23BE1CF14()
{
  result = qword_27E1C8EF0;
  if (!qword_27E1C8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8EF0);
  }

  return result;
}

double sub_23BE1CF68(void *a1)
{
  v2 = sub_23BDE652C(&qword_27E1C8F10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-v4];
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BE1D118();
  sub_23BE32E18();
  v9[15] = 0;
  sub_23BE32C68();
  v7 = v6;
  v9[14] = 1;
  sub_23BE32C68();
  (*(v3 + 8))(v5, v2);
  sub_23BDE6478(a1);
  return v7;
}

unint64_t sub_23BE1D118()
{
  result = qword_27E1C8F18;
  if (!qword_27E1C8F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8F18);
  }

  return result;
}

uint64_t sub_23BE1D16C(void *a1)
{
  v45 = sub_23BDE652C(&qword_27E1C8F28);
  v42 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v47 = &v35 - v2;
  v3 = sub_23BDE652C(&qword_27E1C8F30);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v35 - v4;
  v5 = sub_23BDE652C(&qword_27E1C8F38);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v35 - v6;
  v7 = sub_23BDE652C(&qword_27E1C8F40);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = sub_23BDE652C(&qword_27E1C8F48);
  v37 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = sub_23BDE652C(&qword_27E1C8F50);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  v17 = a1[3];
  v49 = a1;
  sub_23BDE9BF0(a1, v17);
  sub_23BE1D8D0();
  v18 = v50;
  sub_23BE32E18();
  if (v18)
  {
    goto LABEL_9;
  }

  v19 = v12;
  v36 = v10;
  v20 = v48;
  v50 = v14;
  v21 = v16;
  v22 = sub_23BE32C98();
  v23 = (2 * *(v22 + 16)) | 1;
  v51 = v22;
  v52 = v22 + 32;
  v53 = 0;
  v54 = v23;
  v24 = sub_23BE0559C();
  if (v24 == 5 || v53 != v54 >> 1)
  {
    v28 = v13;
    v29 = sub_23BE32B78();
    v14 = swift_allocError();
    v31 = v30;
    sub_23BDE652C(&qword_27E1C7E20);
    *v31 = &type metadata for Placement.Alignment;
    sub_23BE32C28();
    sub_23BE32B38();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
    swift_willThrow();
    (*(v50 + 8))(v21, v28);
    swift_unknownObjectRelease();
LABEL_9:
    sub_23BDE6478(v49);
    return v14;
  }

  v14 = v24;
  if (v24 <= 1u)
  {
    if (v24)
    {
      v55 = 1;
      sub_23BE1DA20();
      sub_23BE32C18();
      (*(v38 + 8))(v9, v39);
    }

    else
    {
      v55 = 0;
      sub_23BE1DA74();
      sub_23BE32C18();
      (*(v37 + 8))(v19, v36);
    }

    (*(v50 + 8))(v16, v13);
  }

  else if (v24 == 2)
  {
    v55 = 2;
    sub_23BE1D9CC();
    sub_23BE32C18();
    v33 = v50;
    (*(v40 + 8))(v20, v41);
    (*(v33 + 8))(v16, v13);
  }

  else
  {
    v25 = v50;
    v26 = v21;
    if (v24 == 3)
    {
      v55 = 3;
      sub_23BE1D978();
      v27 = v46;
      sub_23BE32C18();
      (*(v43 + 8))(v27, v44);
    }

    else
    {
      v55 = 4;
      sub_23BE1D924();
      v34 = v47;
      sub_23BE32C18();
      (*(v42 + 8))(v34, v45);
    }

    (*(v25 + 8))(v26, v13);
  }

  swift_unknownObjectRelease();
  sub_23BDE6478(v49);
  return v14;
}

unint64_t sub_23BE1D8D0()
{
  result = qword_27E1C8F58;
  if (!qword_27E1C8F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8F58);
  }

  return result;
}

unint64_t sub_23BE1D924()
{
  result = qword_27E1C8F60;
  if (!qword_27E1C8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8F60);
  }

  return result;
}

unint64_t sub_23BE1D978()
{
  result = qword_27E1C8F68;
  if (!qword_27E1C8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8F68);
  }

  return result;
}

unint64_t sub_23BE1D9CC()
{
  result = qword_27E1C8F70;
  if (!qword_27E1C8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8F70);
  }

  return result;
}

unint64_t sub_23BE1DA20()
{
  result = qword_27E1C8F78;
  if (!qword_27E1C8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8F78);
  }

  return result;
}

unint64_t sub_23BE1DA74()
{
  result = qword_27E1C8F80;
  if (!qword_27E1C8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8F80);
  }

  return result;
}

void *sub_23BE1DAC8(void *a1)
{
  v39 = sub_23BDE652C(&qword_27E1C8FB8);
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v31 - v2;
  v40 = sub_23BDE652C(&qword_27E1C8FC0);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v31 - v3;
  v4 = sub_23BDE652C(&qword_27E1C8FC8);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = sub_23BDE652C(&qword_27E1C8FD0);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_23BDE652C(&qword_27E1C8FD8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  sub_23BDE9BF0(a1, v14);
  sub_23BE1E108();
  v15 = v43;
  sub_23BE32E18();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_23BE32C98();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_23BE05594();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_23BE1E204();
        v29 = v33;
        sub_23BE32C18();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_23BE1E258();
        v23 = v33;
        sub_23BE32C18();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          sub_23BDE6478(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_23BE1E1B0();
      v28 = v33;
      sub_23BE32C18();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_23BE1E15C();
      v30 = v33;
      sub_23BE32C18();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_23BE32B78();
  swift_allocError();
  v11 = v25;
  sub_23BDE652C(&qword_27E1C7E20);
  *v11 = &type metadata for Placement.Element;
  sub_23BE32C28();
  sub_23BE32B38();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x277D84160], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  sub_23BDE6478(v44);
  return v11;
}

unint64_t sub_23BE1E108()
{
  result = qword_27E1C8FE0;
  if (!qword_27E1C8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8FE0);
  }

  return result;
}

unint64_t sub_23BE1E15C()
{
  result = qword_27E1C8FE8;
  if (!qword_27E1C8FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8FE8);
  }

  return result;
}

unint64_t sub_23BE1E1B0()
{
  result = qword_27E1C8FF0;
  if (!qword_27E1C8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8FF0);
  }

  return result;
}

unint64_t sub_23BE1E204()
{
  result = qword_27E1C8FF8;
  if (!qword_27E1C8FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8FF8);
  }

  return result;
}

unint64_t sub_23BE1E258()
{
  result = qword_27E1C9000;
  if (!qword_27E1C9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9000);
  }

  return result;
}

uint64_t sub_23BE1E2AC(void *a1)
{
  v2 = sub_23BDE652C(&qword_27E1C9030);
  v3 = *(v2 - 8);
  v43 = v2;
  v44 = v3;
  MEMORY[0x28223BE20](v2);
  v47 = &v36 - v4;
  v42 = sub_23BDE652C(&qword_27E1C9038);
  v39 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v46 = &v36 - v5;
  v6 = sub_23BDE652C(&qword_27E1C9040);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = sub_23BDE652C(&qword_27E1C9048);
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = sub_23BDE652C(&qword_27E1C9050);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v16 = a1[3];
  v49 = a1;
  sub_23BDE9BF0(a1, v16);
  sub_23BE1EA38();
  v17 = v48;
  sub_23BE32E18();
  if (!v17)
  {
    v18 = v11;
    v20 = v45;
    v19 = v46;
    v37 = v9;
    v38 = 0;
    v9 = v47;
    v48 = v13;
    v21 = sub_23BE32C98();
    v22 = (2 * *(v21 + 16)) | 1;
    v50 = v21;
    v51 = v21 + 32;
    v52 = 0;
    v53 = v22;
    v23 = sub_23BE05594();
    if (v23 == 4 || v52 != v53 >> 1)
    {
      v9 = sub_23BE32B78();
      swift_allocError();
      v26 = v25;
      sub_23BDE652C(&qword_27E1C7E20);
      *v26 = &type metadata for Placement.Rotation;
      sub_23BE32C28();
      sub_23BE32B38();
      (*(*(v9 - 8) + 104))(v26, *MEMORY[0x277D84160], v9);
      swift_willThrow();
LABEL_9:
      (*(v48 + 8))(v15, v12);
LABEL_10:
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    if (v23 <= 1u)
    {
      if (v23)
      {
        v56 = 1;
        sub_23BE1EBDC();
        v30 = v38;
        sub_23BE32C18();
        if (!v30)
        {
          (*(v40 + 8))(v8, v41);
          (*(v48 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v9 = 768;
          goto LABEL_11;
        }
      }

      else
      {
        v56 = 0;
        sub_23BE1EC30();
        v24 = v38;
        sub_23BE32C18();
        if (!v24)
        {
          (*(v20 + 8))(v18, v37);
          (*(v48 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v9 = 512;
          goto LABEL_11;
        }
      }

      goto LABEL_9;
    }

    v28 = v48;
    if (v23 == 2)
    {
      v56 = 2;
      sub_23BE1EB88();
      v29 = v38;
      sub_23BE32C18();
      if (!v29)
      {
        (*(v39 + 8))(v19, v42);
        (*(v28 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v9 = 1024;
        goto LABEL_11;
      }

      goto LABEL_19;
    }

    v56 = 3;
    sub_23BE1EA8C();
    v31 = v38;
    sub_23BE32C18();
    if (v31)
    {
LABEL_19:
      (*(v28 + 8))(v15, v12);
      goto LABEL_10;
    }

    v55 = 0;
    sub_23BE1EAE0();
    v32 = v43;
    sub_23BE32C88();
    v33 = v9;
    v34 = v56;
    v54 = 1;
    sub_23BE1EB34();
    sub_23BE32C88();
    (*(v44 + 8))(v33, v32);
    (*(v28 + 8))(v15, v12);
    swift_unknownObjectRelease();
    if (v55)
    {
      v35 = 256;
    }

    else
    {
      v35 = 0;
    }

    v9 = v35 | v34;
  }

LABEL_11:
  sub_23BDE6478(v49);
  return v9;
}

unint64_t sub_23BE1EA38()
{
  result = qword_27E1C9058;
  if (!qword_27E1C9058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9058);
  }

  return result;
}

unint64_t sub_23BE1EA8C()
{
  result = qword_27E1C9060;
  if (!qword_27E1C9060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9060);
  }

  return result;
}

unint64_t sub_23BE1EAE0()
{
  result = qword_27E1C9068;
  if (!qword_27E1C9068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9068);
  }

  return result;
}

unint64_t sub_23BE1EB34()
{
  result = qword_27E1C9070;
  if (!qword_27E1C9070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9070);
  }

  return result;
}

unint64_t sub_23BE1EB88()
{
  result = qword_27E1C9078;
  if (!qword_27E1C9078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9078);
  }

  return result;
}

unint64_t sub_23BE1EBDC()
{
  result = qword_27E1C9080;
  if (!qword_27E1C9080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9080);
  }

  return result;
}

unint64_t sub_23BE1EC30()
{
  result = qword_27E1C9088;
  if (!qword_27E1C9088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9088);
  }

  return result;
}

unint64_t sub_23BE1EC84()
{
  result = qword_27E1C90B8;
  if (!qword_27E1C90B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C90B8);
  }

  return result;
}

unint64_t sub_23BE1ECD8()
{
  result = qword_27E1C90C0;
  if (!qword_27E1C90C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C90C0);
  }

  return result;
}

uint64_t sub_23BE1ED2C(void *a1)
{
  v2 = sub_23BDE652C(&qword_27E1C90C8);
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = &v39 - v3;
  v4 = sub_23BDE652C(&qword_27E1C90D0);
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  MEMORY[0x28223BE20](v4);
  v55 = &v39 - v6;
  v44 = sub_23BDE652C(&qword_27E1C90D8);
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v54 = &v39 - v7;
  v8 = sub_23BDE652C(&qword_27E1C90E0);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v39 - v9;
  v10 = sub_23BDE652C(&qword_27E1C90E8);
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = sub_23BDE652C(&qword_27E1C90F0);
  v41 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = sub_23BDE652C(&qword_27E1C90F8);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - v18;
  v20 = a1[3];
  v57 = a1;
  sub_23BDE9BF0(a1, v20);
  sub_23BE1F514();
  v21 = v56;
  sub_23BE32E18();
  if (!v21)
  {
    v22 = v15;
    v39 = v13;
    v40 = v12;
    v23 = v53;
    v24 = v54;
    v25 = v55;
    v56 = v17;
    v26 = sub_23BE32C98();
    v27 = (2 * *(v26 + 16)) | 1;
    v58 = v26;
    v59 = v26 + 32;
    v60 = 0;
    v61 = v27;
    v28 = sub_23BE01B80();
    v29 = v19;
    if (v28 != 6 && v60 == v61 >> 1)
    {
      v17 = v28;
      if (v28 > 2u)
      {
        if (v28 != 3)
        {
          v37 = v56;
          if (v28 == 4)
          {
            v62 = 4;
            sub_23BE1F5BC();
            sub_23BE32C18();
            (*(v49 + 8))(v25, v48);
          }

          else
          {
            v62 = 5;
            sub_23BE1F568();
            v38 = v52;
            sub_23BE32C18();
            (*(v50 + 8))(v38, v51);
          }

          (*(v37 + 8))(v29, v16);
          goto LABEL_21;
        }

        v62 = 3;
        sub_23BE1F610();
        sub_23BE32C18();
        v30 = v56;
        (*(v47 + 8))(v24, v44);
      }

      else if (v28)
      {
        if (v28 == 1)
        {
          v62 = 1;
          sub_23BE1F6B8();
          v23 = v40;
          sub_23BE32C18();
          v30 = v56;
          v32 = v42;
          v31 = v43;
        }

        else
        {
          v62 = 2;
          sub_23BE1F664();
          sub_23BE32C18();
          v30 = v56;
          v32 = v45;
          v31 = v46;
        }

        (*(v32 + 8))(v23, v31);
      }

      else
      {
        v62 = 0;
        sub_23BE1F70C();
        sub_23BE32C18();
        (*(v41 + 8))(v22, v39);
        v30 = v56;
      }

      (*(v30 + 8))(v19, v16);
LABEL_21:
      swift_unknownObjectRelease();
      sub_23BDE6478(v57);
      return v17;
    }

    v33 = sub_23BE32B78();
    swift_allocError();
    v35 = v34;
    sub_23BDE652C(&qword_27E1C7E20);
    *v35 = &type metadata for Placement.Rotation.Direction;
    sub_23BE32C28();
    sub_23BE32B38();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    (*(v56 + 8))(v19, v16);
    swift_unknownObjectRelease();
  }

  sub_23BDE6478(v57);
  return v17;
}

unint64_t sub_23BE1F514()
{
  result = qword_27E1C9100;
  if (!qword_27E1C9100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9100);
  }

  return result;
}

unint64_t sub_23BE1F568()
{
  result = qword_27E1C9108;
  if (!qword_27E1C9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9108);
  }

  return result;
}

unint64_t sub_23BE1F5BC()
{
  result = qword_27E1C9110;
  if (!qword_27E1C9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9110);
  }

  return result;
}

unint64_t sub_23BE1F610()
{
  result = qword_27E1C9118;
  if (!qword_27E1C9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9118);
  }

  return result;
}

unint64_t sub_23BE1F664()
{
  result = qword_27E1C9120;
  if (!qword_27E1C9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9120);
  }

  return result;
}

unint64_t sub_23BE1F6B8()
{
  result = qword_27E1C9128;
  if (!qword_27E1C9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9128);
  }

  return result;
}

unint64_t sub_23BE1F70C()
{
  result = qword_27E1C9130;
  if (!qword_27E1C9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9130);
  }

  return result;
}

uint64_t sub_23BE1F970(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23BE1FA00(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Placement.Rotation(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65284;
  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 16)) - 65284;
  }

  if (v4)
  {
    v5 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v5 << 16)) - 65284;
    }
  }

LABEL_20:
  v7 = *(a1 + 1);
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Placement.Rotation(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65284;
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 2) = v6;
      }

      else
      {
        *(result + 2) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *(result + 1) = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_23BE1FC28(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BE1FC3C(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 1) = a2 + 1;
  }

  return result;
}

unint64_t sub_23BE1FCA4()
{
  result = qword_27E1C9170;
  if (!qword_27E1C9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9170);
  }

  return result;
}

unint64_t sub_23BE1FCFC()
{
  result = qword_27E1C9178;
  if (!qword_27E1C9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9178);
  }

  return result;
}

unint64_t sub_23BE1FD54()
{
  result = qword_27E1C9180;
  if (!qword_27E1C9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9180);
  }

  return result;
}

unint64_t sub_23BE1FDAC()
{
  result = qword_27E1C9188;
  if (!qword_27E1C9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9188);
  }

  return result;
}

unint64_t sub_23BE1FE04()
{
  result = qword_27E1C9190;
  if (!qword_27E1C9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9190);
  }

  return result;
}

unint64_t sub_23BE1FE5C()
{
  result = qword_27E1C9198;
  if (!qword_27E1C9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9198);
  }

  return result;
}

unint64_t sub_23BE1FEB4()
{
  result = qword_27E1C91A0;
  if (!qword_27E1C91A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C91A0);
  }

  return result;
}

unint64_t sub_23BE1FF0C()
{
  result = qword_27E1C91A8;
  if (!qword_27E1C91A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C91A8);
  }

  return result;
}

unint64_t sub_23BE1FF64()
{
  result = qword_27E1C91B0;
  if (!qword_27E1C91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C91B0);
  }

  return result;
}

unint64_t sub_23BE1FFBC()
{
  result = qword_27E1C91B8;
  if (!qword_27E1C91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C91B8);
  }

  return result;
}

unint64_t sub_23BE20014()
{
  result = qword_27E1C91C0;
  if (!qword_27E1C91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C91C0);
  }

  return result;
}

unint64_t sub_23BE2006C()
{
  result = qword_27E1C91C8;
  if (!qword_27E1C91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C91C8);
  }

  return result;
}

unint64_t sub_23BE200C4()
{
  result = qword_27E1C91D0;
  if (!qword_27E1C91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C91D0);
  }

  return result;
}

unint64_t sub_23BE2011C()
{
  result = qword_27E1C91D8;
  if (!qword_27E1C91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C91D8);
  }

  return result;
}

unint64_t sub_23BE20174()
{
  result = qword_27E1C91E0;
  if (!qword_27E1C91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C91E0);
  }

  return result;
}

unint64_t sub_23BE201CC()
{
  result = qword_27E1C91E8;
  if (!qword_27E1C91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C91E8);
  }

  return result;
}

unint64_t sub_23BE20224()
{
  result = qword_27E1C91F0;
  if (!qword_27E1C91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C91F0);
  }

  return result;
}

unint64_t sub_23BE2027C()
{
  result = qword_27E1C91F8;
  if (!qword_27E1C91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C91F8);
  }

  return result;
}

unint64_t sub_23BE202D4()
{
  result = qword_27E1C9200;
  if (!qword_27E1C9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9200);
  }

  return result;
}

unint64_t sub_23BE2032C()
{
  result = qword_27E1C9208;
  if (!qword_27E1C9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9208);
  }

  return result;
}

unint64_t sub_23BE20384()
{
  result = qword_27E1C9210;
  if (!qword_27E1C9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9210);
  }

  return result;
}

unint64_t sub_23BE203DC()
{
  result = qword_27E1C9218;
  if (!qword_27E1C9218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9218);
  }

  return result;
}

unint64_t sub_23BE20434()
{
  result = qword_27E1C9220;
  if (!qword_27E1C9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9220);
  }

  return result;
}

unint64_t sub_23BE2048C()
{
  result = qword_27E1C9228;
  if (!qword_27E1C9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9228);
  }

  return result;
}

unint64_t sub_23BE204E4()
{
  result = qword_27E1C9230;
  if (!qword_27E1C9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9230);
  }

  return result;
}

unint64_t sub_23BE2053C()
{
  result = qword_27E1C9238;
  if (!qword_27E1C9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9238);
  }

  return result;
}

unint64_t sub_23BE20594()
{
  result = qword_27E1C9240;
  if (!qword_27E1C9240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9240);
  }

  return result;
}

unint64_t sub_23BE205EC()
{
  result = qword_27E1C9248;
  if (!qword_27E1C9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9248);
  }

  return result;
}

unint64_t sub_23BE20644()
{
  result = qword_27E1C9250;
  if (!qword_27E1C9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9250);
  }

  return result;
}

unint64_t sub_23BE2069C()
{
  result = qword_27E1C9258;
  if (!qword_27E1C9258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9258);
  }

  return result;
}

unint64_t sub_23BE206F4()
{
  result = qword_27E1C9260;
  if (!qword_27E1C9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9260);
  }

  return result;
}

unint64_t sub_23BE2074C()
{
  result = qword_27E1C9268;
  if (!qword_27E1C9268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9268);
  }

  return result;
}

unint64_t sub_23BE207A4()
{
  result = qword_27E1C9270;
  if (!qword_27E1C9270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9270);
  }

  return result;
}

unint64_t sub_23BE207FC()
{
  result = qword_27E1C9278;
  if (!qword_27E1C9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9278);
  }

  return result;
}

unint64_t sub_23BE20854()
{
  result = qword_27E1C9280;
  if (!qword_27E1C9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9280);
  }

  return result;
}

unint64_t sub_23BE208AC()
{
  result = qword_27E1C9288;
  if (!qword_27E1C9288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9288);
  }

  return result;
}

unint64_t sub_23BE20904()
{
  result = qword_27E1C9290;
  if (!qword_27E1C9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9290);
  }

  return result;
}

unint64_t sub_23BE2095C()
{
  result = qword_27E1C9298;
  if (!qword_27E1C9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9298);
  }

  return result;
}

unint64_t sub_23BE209B4()
{
  result = qword_27E1C92A0;
  if (!qword_27E1C92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C92A0);
  }

  return result;
}

unint64_t sub_23BE20A0C()
{
  result = qword_27E1C92A8;
  if (!qword_27E1C92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C92A8);
  }

  return result;
}

unint64_t sub_23BE20A64()
{
  result = qword_27E1C92B0;
  if (!qword_27E1C92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C92B0);
  }

  return result;
}

unint64_t sub_23BE20ABC()
{
  result = qword_27E1C92B8;
  if (!qword_27E1C92B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C92B8);
  }

  return result;
}

unint64_t sub_23BE20B14()
{
  result = qword_27E1C92C0;
  if (!qword_27E1C92C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C92C0);
  }

  return result;
}

unint64_t sub_23BE20B6C()
{
  result = qword_27E1C92C8;
  if (!qword_27E1C92C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C92C8);
  }

  return result;
}

unint64_t sub_23BE20BC4()
{
  result = qword_27E1C92D0;
  if (!qword_27E1C92D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C92D0);
  }

  return result;
}

unint64_t sub_23BE20C1C()
{
  result = qword_27E1C92D8;
  if (!qword_27E1C92D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C92D8);
  }

  return result;
}

unint64_t sub_23BE20C74()
{
  result = qword_27E1C92E0;
  if (!qword_27E1C92E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C92E0);
  }

  return result;
}

unint64_t sub_23BE20CCC()
{
  result = qword_27E1C92E8;
  if (!qword_27E1C92E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C92E8);
  }

  return result;
}

unint64_t sub_23BE20D24()
{
  result = qword_27E1C92F0;
  if (!qword_27E1C92F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C92F0);
  }

  return result;
}

unint64_t sub_23BE20D7C()
{
  result = qword_27E1C92F8;
  if (!qword_27E1C92F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C92F8);
  }

  return result;
}

unint64_t sub_23BE20DD4()
{
  result = qword_27E1C9300;
  if (!qword_27E1C9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9300);
  }

  return result;
}

unint64_t sub_23BE20E2C()
{
  result = qword_27E1C9308;
  if (!qword_27E1C9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9308);
  }

  return result;
}

unint64_t sub_23BE20E84()
{
  result = qword_27E1C9310;
  if (!qword_27E1C9310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9310);
  }

  return result;
}

unint64_t sub_23BE20EDC()
{
  result = qword_27E1C9318;
  if (!qword_27E1C9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9318);
  }

  return result;
}

unint64_t sub_23BE20F34()
{
  result = qword_27E1C9320;
  if (!qword_27E1C9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9320);
  }

  return result;
}

unint64_t sub_23BE20F8C()
{
  result = qword_27E1C9328;
  if (!qword_27E1C9328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9328);
  }

  return result;
}

unint64_t sub_23BE20FE4()
{
  result = qword_27E1C9330;
  if (!qword_27E1C9330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9330);
  }

  return result;
}

unint64_t sub_23BE2103C()
{
  result = qword_27E1C9338;
  if (!qword_27E1C9338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9338);
  }

  return result;
}

unint64_t sub_23BE21094()
{
  result = qword_27E1C9340;
  if (!qword_27E1C9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9340);
  }

  return result;
}

unint64_t sub_23BE210EC()
{
  result = qword_27E1C9348;
  if (!qword_27E1C9348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9348);
  }

  return result;
}

unint64_t sub_23BE21144()
{
  result = qword_27E1C9350;
  if (!qword_27E1C9350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9350);
  }

  return result;
}

unint64_t sub_23BE2119C()
{
  result = qword_27E1C9358;
  if (!qword_27E1C9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9358);
  }

  return result;
}

unint64_t sub_23BE211F4()
{
  result = qword_27E1C9360;
  if (!qword_27E1C9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9360);
  }

  return result;
}

unint64_t sub_23BE2124C()
{
  result = qword_27E1C9368;
  if (!qword_27E1C9368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9368);
  }

  return result;
}

unint64_t sub_23BE212A4()
{
  result = qword_27E1C9370;
  if (!qword_27E1C9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9370);
  }

  return result;
}

unint64_t sub_23BE212FC()
{
  result = qword_27E1C9378;
  if (!qword_27E1C9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9378);
  }

  return result;
}

unint64_t sub_23BE21354()
{
  result = qword_27E1C9380;
  if (!qword_27E1C9380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9380);
  }

  return result;
}

unint64_t sub_23BE213AC()
{
  result = qword_27E1C9388;
  if (!qword_27E1C9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9388);
  }

  return result;
}

unint64_t sub_23BE21404()
{
  result = qword_27E1C9390;
  if (!qword_27E1C9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9390);
  }

  return result;
}

unint64_t sub_23BE2145C()
{
  result = qword_27E1C9398;
  if (!qword_27E1C9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9398);
  }

  return result;
}

unint64_t sub_23BE214B4()
{
  result = qword_27E1C93A0;
  if (!qword_27E1C93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C93A0);
  }

  return result;
}

unint64_t sub_23BE2150C()
{
  result = qword_27E1C93A8;
  if (!qword_27E1C93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C93A8);
  }

  return result;
}

unint64_t sub_23BE21564()
{
  result = qword_27E1C93B0;
  if (!qword_27E1C93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C93B0);
  }

  return result;
}

unint64_t sub_23BE215BC()
{
  result = qword_27E1C93B8;
  if (!qword_27E1C93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C93B8);
  }

  return result;
}

unint64_t sub_23BE21614()
{
  result = qword_27E1C93C0;
  if (!qword_27E1C93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C93C0);
  }

  return result;
}

unint64_t sub_23BE2166C()
{
  result = qword_27E1C93C8;
  if (!qword_27E1C93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C93C8);
  }

  return result;
}

CGPoint __swiftcall CGPoint.clip(within:)(__C::CGRect within)
{
  v3 = v2;
  v4 = v1;
  height = within.size.height;
  width = within.size.width;
  y = within.origin.y;
  x = within.origin.x;
  MinX = CGRectGetMinX(within);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MaxX = CGRectGetMaxX(v17);
  if (MaxX >= v4)
  {
    MaxX = v4;
  }

  if (MinX > MaxX)
  {
    v11 = MinX;
  }

  else
  {
    v11 = MaxX;
  }

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MinY = CGRectGetMinY(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MaxY = CGRectGetMaxY(v19);
  if (MaxY >= v3)
  {
    MaxY = v3;
  }

  if (MinY > MaxY)
  {
    v14 = MinY;
  }

  else
  {
    v14 = MaxY;
  }

  v15 = v11;
  result.y = v14;
  result.x = v15;
  return result;
}

uint64_t sub_23BE21788()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_23BE217FC(void *a1)
{
  v3 = MEMORY[0x277D84F90];
  v1[2] = MEMORY[0x277D84F90];
  v4 = v1 + 2;
  v1[4] = v3;
  v5 = (v1 + 4);
  v1[3] = a1;
  type metadata accessor for SceneStore();
  swift_allocObject();
  v6 = a1;
  v1[5] = sub_23BE0C91C();
  swift_beginAccess();

  MEMORY[0x23EEBE1B0](v7);
  if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23BE32988();
  }

  sub_23BE32998();
  v8 = *v4;
  result = swift_endAccess();
  if (v8 >> 62)
  {
    result = sub_23BE32BB8();
    v10 = result;
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    if (v10 < 1)
    {
      __break(1u);
      goto LABEL_41;
    }

    for (i = 0; i != v10; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EEBE370](i, v8);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRetain();
      sub_23BDE652C(&qword_27E1C93D0);
      if (swift_dynamicCast())
      {
        sub_23BDF5BE4(&v24, v27);
        sub_23BDF5BFC(v27, &v24);
        swift_beginAccess();
        v12 = *v5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v5 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v12 = sub_23BE2D0E0(0, v12[2] + 1, 1, v12);
          *v5 = v12;
        }

        v15 = v12[2];
        v14 = v12[3];
        if (v15 >= v14 >> 1)
        {
          v12 = sub_23BE2D0E0((v14 > 1), v15 + 1, 1, v12);
        }

        v12[2] = v15 + 1;
        sub_23BDF5BE4(&v24, &v12[5 * v15 + 4]);
        *v5 = v12;
        swift_endAccess();
        swift_unknownObjectRelease();
        sub_23BDE6478(v27);
      }

      else
      {
        swift_unknownObjectRelease();
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_23BE21CB8(&v24);
      }
    }
  }

  v16 = *&v6[OBJC_IVAR___NTKSceneEngineSourceConfiguration_sources];
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_22;
    }

    return v23;
  }

  result = sub_23BE32BB8();
  v17 = result;
  if (!result)
  {
    return v23;
  }

LABEL_22:
  if (v17 >= 1)
  {

    for (j = 0; j != v17; ++j)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EEBE370](j, v16);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRetain();
      sub_23BDE652C(&qword_27E1C93D0);
      if (swift_dynamicCast())
      {
        sub_23BDF5BE4(&v24, v27);
        sub_23BDF5BFC(v27, &v24);
        swift_beginAccess();
        v19 = *v5;
        v20 = swift_isUniquelyReferenced_nonNull_native();
        *v5 = v19;
        if ((v20 & 1) == 0)
        {
          v19 = sub_23BE2D0E0(0, v19[2] + 1, 1, v19);
          *v5 = v19;
        }

        v22 = v19[2];
        v21 = v19[3];
        if (v22 >= v21 >> 1)
        {
          v19 = sub_23BE2D0E0((v21 > 1), v22 + 1, 1, v19);
        }

        v19[2] = v22 + 1;
        sub_23BDF5BE4(&v24, &v19[5 * v22 + 4]);
        *v5 = v19;
        swift_endAccess();
        swift_unknownObjectRelease();
        sub_23BDE6478(v27);
      }

      else
      {
        swift_unknownObjectRelease();
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_23BE21CB8(&v24);
      }
    }

    return v23;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_23BE21CB8(uint64_t a1)
{
  v2 = sub_23BDE652C(&qword_27E1C93D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BE21D20()
{
  v2 = *(v0 + 8);
  result = *(v0 + 16);
  if (v2 == 2)
  {
    if (result != 3)
    {
      goto LABEL_23;
    }

    v4 = *v0;
    v5 = *(v0 + 48);
    if (v4 >= 0.0 && v4 <= 0.6)
    {
      if (*(v5 + 16))
      {
        result = sub_23BE2C8A8(2);
        if (v7)
        {
          if (*(v5 + 16))
          {
            result = sub_23BE2C8A8(3);
            if (v8)
            {
              CLKMapFractionIntoRange();
              return CLKInterpolateBetweenRects();
            }
          }
        }
      }
    }

    if (*(v5 + 16))
    {
      result = 3;
      return sub_23BE2C8A8(result);
    }
  }

  else
  {
    if (v2 != 1)
    {
      if (v2)
      {
        v3 = 0;
      }

      else
      {
        v3 = result == 1;
      }

      if (!v3)
      {
LABEL_23:
        if (!*(*(v0 + 48) + 16))
        {
          return result;
        }

        return sub_23BE2C8A8(result);
      }

      goto LABEL_11;
    }

    if (result != 2)
    {
      if (result)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (!*(*(v0 + 48) + 16))
      {
        return result;
      }

      goto LABEL_12;
    }

    v9 = *(*(v0 + 48) + 16);
    if (*v0 < 0.0 || *v0 > 0.2)
    {
      if (v9)
      {
        result = 2;
        return sub_23BE2C8A8(result);
      }
    }

    else if (v9)
    {
LABEL_12:
      result = 1;
      return sub_23BE2C8A8(result);
    }
  }

  return result;
}

unint64_t sub_23BE21F5C()
{
  result = qword_27E1C93E0;
  if (!qword_27E1C93E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C93E0);
  }

  return result;
}

uint64_t sub_23BE21FB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BE21FF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_23BE220AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneEngineSourceConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BE22158()
{
  v1 = OBJC_IVAR___NTKEsterbrookSceneBackgroundView____lazy_storage___backgroundDotsLayer;
  v2 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneBackgroundView____lazy_storage___backgroundDotsLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneBackgroundView____lazy_storage___backgroundDotsLayer);
  }

  else
  {
    v4 = sub_23BE22200();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_23BE22200()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  type metadata accessor for SceneLoader();
  v1 = sub_23BDF31AC();
  v2 = sub_23BE32898();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  if (v3)
  {
    v4 = [v3 imageWithRenderingMode_];

    if (v4)
    {
      sub_23BDE652C(&qword_27E1C7C98);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23BE38690;
      *(inited + 32) = 0xD000000000000015;
      *(inited + 40) = 0x800000023BE34A80;
      v6 = objc_allocWithZone(MEMORY[0x277CBEB68]);
      v7 = v4;
      *(inited + 48) = [v6 init];
      *(inited + 56) = 0x73746E65746E6F63;
      *(inited + 64) = 0xE800000000000000;
      *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      sub_23BE2BDE8(inited);
      swift_setDeallocating();
      sub_23BDE652C(&qword_27E1C7CA0);
      swift_arrayDestroy();
      sub_23BDE652C(&qword_27E1C7CA8);
      v8 = sub_23BE32848();

      [v0 setActions_];

      v9 = [v7 CGImage];
      [v0 setContents_];
    }
  }

  return v0;
}

char *sub_23BE224C4(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  *&v6[OBJC_IVAR___NTKEsterbrookSceneBackgroundView_defaultDotsSize] = vdupq_n_s64(0x4070500000000000uLL);
  *&v6[OBJC_IVAR___NTKEsterbrookSceneBackgroundView____lazy_storage___backgroundDotsLayer] = 0;
  v13 = OBJC_IVAR___NTKEsterbrookSceneBackgroundView_tritiumPalette;
  v14 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.156862745 green:0.156862745 blue:0.156862745 alpha:1.0];
  v15 = objc_opt_self();
  v16 = [v15 blackColor];
  v17 = [v15 blackColor];
  v18 = type metadata accessor for ScenePalette();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR___NTKEsterbrookScenePalette_background] = v14;
  *&v19[OBJC_IVAR___NTKEsterbrookScenePalette_overlay] = v16;
  *&v19[OBJC_IVAR___NTKEsterbrookScenePalette_secondHand] = v17;
  v36.receiver = v19;
  v36.super_class = v18;
  *&v6[v13] = objc_msgSendSuper2(&v36, sel_init);
  *&v6[OBJC_IVAR___NTKEsterbrookSceneBackgroundView_tritiumProgress] = 0;
  *&v6[OBJC_IVAR___NTKEsterbrookSceneBackgroundView_scenePalette] = a2;
  v35.receiver = v6;
  v35.super_class = type metadata accessor for SceneBackgroundView();
  v20 = a2;
  v21 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a3, a4, a5, a6);
  v22 = objc_allocWithZone(MEMORY[0x277CBBAF8]);
  v23 = v21;
  v24 = [v22 initWithDevice:a1 identitySizeClass:{6, v35.receiver, v35.super_class}];
  [v24 scaledSize_];
  v26 = v25;
  v28 = v27;
  v29 = sub_23BE22158();
  [v29 setFrame_];

  v30 = OBJC_IVAR___NTKEsterbrookSceneBackgroundView____lazy_storage___backgroundDotsLayer;
  v31 = *&v23[OBJC_IVAR___NTKEsterbrookSceneBackgroundView____lazy_storage___backgroundDotsLayer];
  [v23 bounds];
  MidX = CGRectGetMidX(v37);
  [v23 bounds];
  [v31 setPosition_];

  v33 = [v23 layer];
  [v33 addSublayer_];

  sub_23BE2292C();
  return v23;
}

uint64_t sub_23BE22790(void *a1)
{
  *(v1 + OBJC_IVAR___NTKEsterbrookSceneBackgroundView_defaultDotsSize) = vdupq_n_s64(0x4070500000000000uLL);
  v3 = OBJC_IVAR___NTKEsterbrookSceneBackgroundView____lazy_storage___backgroundDotsLayer;
  *(v1 + OBJC_IVAR___NTKEsterbrookSceneBackgroundView____lazy_storage___backgroundDotsLayer) = 0;
  v4 = OBJC_IVAR___NTKEsterbrookSceneBackgroundView_tritiumPalette;
  v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.156862745 green:0.156862745 blue:0.156862745 alpha:1.0];
  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  v8 = [v6 blackColor];
  v9 = type metadata accessor for ScenePalette();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___NTKEsterbrookScenePalette_background] = v5;
  *&v10[OBJC_IVAR___NTKEsterbrookScenePalette_overlay] = v7;
  *&v10[OBJC_IVAR___NTKEsterbrookScenePalette_secondHand] = v8;
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  *(v1 + v4) = v11;
  *(v1 + OBJC_IVAR___NTKEsterbrookSceneBackgroundView_tritiumProgress) = 0;

  type metadata accessor for SceneBackgroundView();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_23BE2292C()
{
  v1 = *&v0[OBJC_IVAR___NTKEsterbrookSceneBackgroundView_tritiumProgress];
  if (v1 == 0.0)
  {
    v2 = OBJC_IVAR___NTKEsterbrookSceneBackgroundView_scenePalette;
LABEL_5:
    v3 = *&v0[v2];
    goto LABEL_6;
  }

  if (v1 == 1.0)
  {
    v2 = OBJC_IVAR___NTKEsterbrookSceneBackgroundView_tritiumPalette;
    goto LABEL_5;
  }

  type metadata accessor for ScenePalette();
  v5 = *&v0[OBJC_IVAR___NTKEsterbrookSceneBackgroundView_scenePalette];
  v3 = sub_23BE30D44();

LABEL_6:
  [v0 setBackgroundColor_];
  v4 = sub_23BE22158();
  v6 = [*&v3[OBJC_IVAR___NTKEsterbrookScenePalette_overlay] CGColor];
  [v4 setContentsMultiplyColor_];
}

id sub_23BE22AA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23BE22BB8()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_showDebugHelpers] == 1)
  {
    v2 = [v0 layer];
    v3 = objc_opt_self();
    v4 = [v3 magentaColor];
    v5 = [v4 CGColor];

    [v2 setBorderColor_];
    v6 = [v1 layer];
    [v6 setBorderWidth_];

    v7 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugContainerView;
    if (!*&v1[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugContainerView])
    {
      [v1 bounds];
      v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
      [v1 addSubview_];
      v13 = *&v1[v7];
      *&v1[v7] = v12;
    }

    v14 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    [v1 bounds];
    v16 = v15 * 0.5;
    [v1 bounds];
    [v14 setCenter_];
    [*&v1[v7] addSubview_];
    v18 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
    v19 = sub_23BE32898();
    v20 = [objc_opt_self() systemImageNamed_];

    [v18 setImage_];
    v21 = [v3 magentaColor];
    [v18 setTintColor_];

    [v14 addSubview_];
    v22 = *&v1[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugNormalsView];
    *&v1[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugNormalsView] = v14;
    v23 = v14;

    [v1 bounds];
    [v1 bounds];
    v24 = sub_23BE0C6F8();
    v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    v29 = [v3 magentaColor];
    [v28 setTextColor_];

    [v28 setTextAlignment_];
    [v28 setAdjustsFontSizeToFitWidth_];
    v30 = [objc_opt_self() systemFontOfSize_];
    [v28 setFont_];

    sub_23BE32D18();
    v31 = sub_23BE32898();

    [v28 setText_];

    v32 = *&v1[v7];
    if (v32)
    {
      v33 = v32;
      [v33 addSubview_];
    }

    v34 = *&v1[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugFrameIndexLabel];
    *&v1[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugFrameIndexLabel] = v28;
  }

  else
  {
    v35 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugContainerView;
    [*&v1[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugContainerView] removeFromSuperview];
    v36 = *&v1[v35];
    *&v1[v35] = 0;

    v37 = *&v1[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugNormalsView];
    *&v1[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugNormalsView] = 0;

    v38 = *&v1[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugFrameIndexLabel];
    *&v1[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugFrameIndexLabel] = 0;

    v39 = [v1 layer];
    v40 = [objc_opt_self() clearColor];
    v41 = [v40 CGColor];

    [v39 setBorderColor_];
    v42 = [v1 layer];
    [v42 setBorderWidth_];
  }
}

char *sub_23BE231A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SpriteAnimationAttributes();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Sprite();
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_needsInitialLayout] = 1;
  *&v3[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_spriteLayer] = 0;
  v3[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_state] = 1;
  *&v3[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugContainerView] = 0;
  *&v3[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugNormalsView] = 0;
  *&v3[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugFrameIndexLabel] = 0;
  v12 = &v3[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debug_labelPositioning];
  *v12 = 0;
  v12[1] = 0;
  v3[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_showDebugHelpers] = 0;
  sub_23BE23E68(a1, &v3[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_sprite], type metadata accessor for Sprite);
  sub_23BE23E68(a1, v11, type metadata accessor for Sprite);
  sub_23BE23E68(a2, v8, type metadata accessor for SpriteAnimationAttributes);
  v13 = objc_allocWithZone(type metadata accessor for SpriteAnimator());
  *&v3[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_animator] = sub_23BE0E97C(v11, v8);
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v15 = result;
    [result screenBounds];
    v17 = v16;
    v19 = v18;

    v20 = &v3[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_screenSize];
    *v20 = v17;
    v20[1] = v19;
    v21 = a1 + *(v9 + 20);
    v22 = *(v21 + 33);
    if (v22 == 2 || (v22 & 1) == 0)
    {
      v17 = v17 * (*(v21 + 16) / 206.0);
      v19 = v19 * (*(v21 + 24) / 251.0);
    }

    v23 = type metadata accessor for SpriteView();
    v38.receiver = v3;
    v38.super_class = v23;
    v24 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, v17, v19);
    if (*(a1 + *(v9 + 28) + 24) < 0)
    {
      v25 = 0.5;
    }

    else
    {
      v25 = 1.0;
    }

    v26 = v24;
    [v26 setAnchorPoint_];
    v27 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    [v26 bounds];
    [v27 setFrame_];
    v28 = [v26 layer];
    [v28 addSublayer_];

    v29 = *&v26[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_spriteLayer];
    *&v26[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_spriteLayer] = v27;
    v30 = v27;

    v31 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_animator;
    v32 = *(*&v26[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_animator] + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_currentImage);
    v33 = objc_opt_self();
    v34 = v32;
    [v33 begin];
    [v33 setDisableActions_];
    [v30 setContents_];
    [v33 commit];

    v35 = *&v26[v31];
    v36 = v26;
    v37 = v35;
    sub_23BE0E868(v26, &off_284E95550);

    sub_23BE23ED0(a2, type metadata accessor for SpriteAnimationAttributes);
    sub_23BE23ED0(a1, type metadata accessor for Sprite);
    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BE235EC(void *a1)
{
  *(v1 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_needsInitialLayout) = 1;
  *(v1 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_spriteLayer) = 0;
  *(v1 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_state) = 1;
  *(v1 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugContainerView) = 0;
  v2 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugNormalsView;
  *(v1 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugNormalsView) = 0;
  v3 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugFrameIndexLabel;
  *(v1 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugFrameIndexLabel) = 0;
  v4 = (v1 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debug_labelPositioning);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_showDebugHelpers) = 0;

  type metadata accessor for SpriteView();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_23BE23704()
{
  v1 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_spriteLayer;
  v2 = *&v0[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_spriteLayer];
  if (v2)
  {
    [v2 removeFromSuperlayer];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  v5.receiver = v0;
  v5.super_class = type metadata accessor for SpriteView();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t type metadata accessor for SpriteView()
{
  result = qword_27E1C9438;
  if (!qword_27E1C9438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BE23890()
{
  if (v0[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_showDebugHelpers] == 1)
  {
    v1 = *&v0[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugContainerView];
    if (v1)
    {
      v2 = v1;
      [v0 bounds];
      [v2 setFrame_];
    }

    v3 = *&v0[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugNormalsView];
    if (v3)
    {
      v4 = v3;
      [v0 bounds];
      v6 = v5 * 0.5;
      [v0 bounds];
      v8 = v7;
      [v4 bounds];
      [v4 setCenter_];
    }

    v9 = *&v0[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugFrameIndexLabel];
    if (v9)
    {
      v10 = v9;
      [v0 bounds];
      [v0 bounds];
      [v10 setFrame_];
    }
  }
}

uint64_t sub_23BE23B04()
{
  result = type metadata accessor for Sprite();
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

void sub_23BE23BCC()
{
  if (*(v0 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_showDebugHelpers) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugFrameIndexLabel);
    if (v1)
    {
      v2 = v1;
      sub_23BE32D18();
      v3 = sub_23BE32898();

      [v2 setText_];
    }
  }
}

void sub_23BE23C8C()
{
  if (qword_27E1C7A60 != -1)
  {
    swift_once();
  }

  v1 = sub_23BE327D8();
  sub_23BDEA278(v1, qword_27E1DBF28);
  v2 = v0;
  v3 = sub_23BE327B8();
  v4 = sub_23BE32A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = &v2[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_sprite];
    v8 = type metadata accessor for Sprite();
    *(v5 + 4) = sub_23BE288C4(*&v7[*(v8 + 20)], *&v7[*(v8 + 20) + 8], &v13);
    _os_log_impl(&dword_23BDE0000, v3, v4, "[%s] SpriteView animationDidFinish.", v5, 0xCu);
    sub_23BDE6478(v6);
    MEMORY[0x23EEBF030](v6, -1, -1);
    MEMORY[0x23EEBF030](v5, -1, -1);
  }

  v9 = &v2[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_sprite];
  v10 = &v9[*(type metadata accessor for Sprite() + 32)];
  if (v10[*(type metadata accessor for Timing(0) + 28)] == 1)
  {
    v11 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_spriteLayer;
    [*&v2[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_spriteLayer] removeFromSuperlayer];
    v12 = *&v2[v11];
    *&v2[v11] = 0;
  }
}

uint64_t sub_23BE23E68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BE23ED0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23BE23F30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23BE23F78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BE23FD4(uint64_t a1, void *a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v49 = MEMORY[0x277D84F90];
    sub_23BE01CC8(0, v4, 0);
    v5 = v49;
    v6 = v3 + 64;
    v7 = sub_23BE32AD8();
    v8 = 0;
    v9 = *(v3 + 36);
    v10 = v2[5];
    v11 = v2[6];
    v47 = *(v2 + 1);
    v45 = v4;
    v46 = v9;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
    {
      v13 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_31;
      }

      if (v9 != *(v3 + 36))
      {
        goto LABEL_32;
      }

      v14 = *(*(v3 + 48) + 8 * v7);
      v15 = *(*(v3 + 56) + 8 * v7);
      v16 = 0.0;
      if (*(v47 + 16) && (v17 = sub_23BE2C8A8(a1), (v18 & 1) != 0) && (v19 = *(*(v47 + 56) + 8 * v17), *(v19 + 16)))
      {
        v20 = sub_23BE28F2C(v14);
        v21 = 0.0;
        if (v22)
        {
          [a2 scaledPoint_];
          v16 = v23;
          v21 = v24;
        }
      }

      else
      {
        v21 = 0.0;
      }

      [a2 scaledValue_];
      v26 = v25;
      v29 = __sincos_stret(v14 * -0.523598776 + 1.57079633);
      cosval = v29.__cosval;
      sinval = v29.__sinval;
      v49 = v5;
      v31 = *(v5 + 16);
      v30 = *(v5 + 24);
      if (v31 >= v30 >> 1)
      {
        v43 = v29.__sinval;
        sub_23BE01CC8((v30 > 1), v31 + 1, 1);
        cosval = v29.__cosval;
        sinval = v29.__sinval;
        v5 = v49;
      }

      *(v5 + 16) = v31 + 1;
      v32 = v5 + 24 * v31;
      *(v32 + 32) = v14;
      *(v32 + 40) = v16 + v10 + cosval * v26;
      *(v32 + 48) = v21 + v11 - sinval * v26;
      v12 = 1 << *(v3 + 32);
      if (v7 >= v12)
      {
        goto LABEL_33;
      }

      v6 = v3 + 64;
      v33 = *(v3 + 64 + 8 * v13);
      if ((v33 & (1 << v7)) == 0)
      {
        goto LABEL_34;
      }

      v9 = v46;
      if (v46 != *(v3 + 36))
      {
        goto LABEL_35;
      }

      v34 = v33 & (-2 << (v7 & 0x3F));
      if (v34)
      {
        v12 = __clz(__rbit64(v34)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v13 << 6;
        v36 = v13 + 1;
        v37 = (v3 + 72 + 8 * v13);
        while (v36 < (v12 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            sub_23BE24D60(v7, v46, 0);
            v12 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        sub_23BE24D60(v7, v46, 0);
      }

LABEL_4:
      ++v8;
      v7 = v12;
      if (v8 == v45)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_26:
    if (*(v5 + 16))
    {
      sub_23BDE652C(&qword_27E1C9470);
      v40 = sub_23BE32BE8();
    }

    else
    {
      v40 = MEMORY[0x277D84F98];
    }

    v49 = v40;

    sub_23BE244BC(v41, 1, &v49);

    return v49;
  }

  return result;
}