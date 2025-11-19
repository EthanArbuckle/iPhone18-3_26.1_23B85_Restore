uint64_t sub_29E271E88()
{
  [v0[6] unregisterObserver_];

  swift_unknownObjectRelease();

  sub_29DE93B3C((v0 + 9));
  sub_29DE93B3C((v0 + 14));

  return swift_deallocClassInstance();
}

uint64_t sub_29E271F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_29E2C3714();
  *(v4 + 24) = sub_29E2C3704();
  v6 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29E271FC8, v6, v5);
}

uint64_t sub_29E271FC8()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = [v2 state] == 1;
  }

  else
  {
    v3 = 1;
  }

  sub_29E001D60(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29E272054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_29E273114(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v6[5] = swift_task_alloc();
  v7 = sub_29E2C0514();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = sub_29E2C3714();
  v6[10] = sub_29E2C3704();
  v9 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29E2721AC, v9, v8);
}

uint64_t sub_29E2721AC()
{
  v30 = v0;

  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v1 = sub_29E2C0504();
    v2 = sub_29E2C3A34();
    v3 = os_log_type_enabled(v1, v2);
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];
    if (v3)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v29 = v8;
      *v7 = 136315138;
      v9 = sub_29E2C4AE4();
      v11 = sub_29DFAA104(v9, v10, &v29);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_29DE74000, v1, v2, "[%s] Received pregnancy model update", v7, 0xCu);
      sub_29DE93B3C(v8);
      MEMORY[0x29ED82140](v8, -1, -1);
      MEMORY[0x29ED82140](v7, -1, -1);
    }

    (*(v5 + 8))(v4, v6);
  }

  v12 = v0[3];
  v13 = *(v12 + 56);
  if (v13)
  {
    v14 = v0[2];
    sub_29DE9408C(0, &unk_2A1A5E190);
    v15 = v14;
    v16 = v13;
    v17 = sub_29E2C40D4();

    if (v17)
    {
      goto LABEL_10;
    }

    v18 = *(v12 + 56);
    v19 = v0[3];
  }

  else
  {
    v18 = 0;
    v19 = v0[3];
  }

  v20 = v0[5];
  v21 = v0[2];
  *(v12 + 56) = v21;

  v22 = sub_29E2C3734();
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  v23 = v21;

  v24 = sub_29E2C3704();
  v25 = swift_allocObject();
  v26 = MEMORY[0x29EDCA390];
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = v19;
  sub_29E13C63C(0, 0, v20, &unk_29E2E94F0, v25);

LABEL_10:

  v27 = v0[1];

  return v27();
}

uint64_t sub_29E272608(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
  v5 = *(v2 + 64);
  sub_29DE9DC34(v2 + 112, v23);
  sub_29DE9DC34(v2 + 72, v22);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v6 = *(v2 + 48);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = sub_29E2BD184();
  v9 = v5;
  v10 = v4;
  swift_unknownObjectRetain();

  v19[3] = v8;
  v19[4] = &off_2A24B5E20;
  v19[0] = sub_29E2BD174();
  type metadata accessor for PregnancyOnboardingCoordinator();
  v11 = swift_allocObject();
  v12 = sub_29DEF61C0(v19, v8);
  v13 = MEMORY[0x2A1C7C4A8](v12);
  v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  sub_29E0AC3AC(v9, v23, v22, *v15, v10, 4u, 0, v20, v6, 0, 0, 4u, 0, sub_29E2730C4, v7, 0, 0, 0, v11);

  swift_unknownObjectRelease();

  sub_29DE93B3C(v19);

  sub_29E27EFEC(a2, 1);
}

void sub_29E27284C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_29E2728B4()
{
  type metadata accessor for AddPregnancyTileCell();
  sub_29E2730CC(&qword_2A181EFB8, 255, type metadata accessor for AddPregnancyTileCell);
  return sub_29E2C3B74();
}

uint64_t sub_29E272928()
{
  v0 = sub_29E2C0AB4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C0B44();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC7848], v0, v6);
  sub_29E2C0AE4();
  v9 = [objc_opt_self() clearColor];
  sub_29E2C0B14();
  sub_29E2C0B24();
  sub_29DE9408C(0, &qword_2A1819BB0);
  v10 = sub_29E2C3F34();
  (*(v5 + 8))(v8, v4);
  return v10;
}

void *sub_29E272BBC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v35 = sub_29E2BEBB4();
  v9 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v34 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_29E2BCC24();
  v11 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[7] = 0;
  v4[8] = a1;
  v37 = a2;
  sub_29DE9DC34(a2, (v4 + 9));
  sub_29DE9DC34(a3, (v4 + 14));
  if (a4)
  {
    v14 = a1;
    v15 = a4;
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x29EDC33E0]) initWithHealthStore_];
  }

  v4[6] = v15;
  v31 = MEMORY[0x29EDC9E90];
  sub_29E273114(0, &unk_2A1819BC0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v33 = v9;
  v16 = swift_allocObject();
  v30 = xmmword_29E2CAB20;
  *(v16 + 16) = xmmword_29E2CAB20;
  swift_unknownObjectRetain();
  sub_29E2BCC14();
  sub_29E2BCBD4();
  v17 = *(v11 + 8);
  v36 = v11 + 8;
  v17(v13, v38);
  v18 = v17;
  sub_29E2BEBA4();
  v19 = sub_29E0018F0(v16, 1);
  sub_29DE9DC34(v37, v42);
  sub_29DE9DC34(a3, v41);
  v20 = type metadata accessor for AddPregnancyItem();
  v21 = swift_allocObject();
  v21[14] = 0;
  swift_unknownObjectWeakInit();
  v32 = a3;
  swift_retain_n();
  v22 = a1;
  sub_29E2BCC14();
  v23 = sub_29E2BCBD4();
  v25 = v24;
  v18(v13, v38);
  v39 = 0xD000000000000010;
  v40 = 0x800000029E30A560;
  MEMORY[0x29ED7FCC0](v23, v25);

  v26 = v40;
  v21[15] = v39;
  v21[16] = v26;
  v21[2] = v22;
  sub_29DE8EE78(v42, (v21 + 3));
  sub_29DE8EE78(v41, (v21 + 8));
  v21[14] = &off_2A24C14C8;
  swift_unknownObjectWeakAssign();

  sub_29E2BE5F4();

  sub_29E273114(0, &unk_2A181B3C0, sub_29DEA7E2C, v31);
  v27 = swift_allocObject();
  *(v27 + 16) = v30;
  *(v27 + 56) = v20;
  *(v27 + 64) = sub_29E2730CC(&qword_2A1820870, 255, type metadata accessor for AddPregnancyItem);
  *(v27 + 32) = v21;

  sub_29E2BCC14();
  sub_29E2BCBD4();
  v18(v13, v38);
  v28 = v34;
  sub_29E2BEBA4();
  sub_29E2BECC4();

  (*(v33 + 8))(v28, v35);
  [swift_unknownObjectRetain() registerObserver:v19 isUserInitiated:1];

  swift_unknownObjectRelease();

  sub_29DE93B3C(v32);
  sub_29DE93B3C(v37);
  return v19;
}

uint64_t sub_29E2730CC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E273114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E273178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29DE9657C;

  return sub_29E272054(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29E273240(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29DECA6A0;

  return sub_29E271F30(a1, v4, v5, v6);
}

void sub_29E2732F4(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MinX = CGRectGetMinX(*&a2);
  v49.origin.x = a2;
  v49.origin.y = a3;
  v49.size.width = a4;
  v49.size.height = a5;
  v43 = CGRectGetMinY(v49) + 5.0;
  v50.origin.x = a2;
  v50.origin.y = a3;
  v50.size.width = a4;
  v50.size.height = a5;
  Width = CGRectGetWidth(v50);
  v51.origin.x = a2;
  v51.origin.y = a3;
  v51.size.width = a4;
  v51.size.height = a5;
  v10 = CGRectGetMinX(v51);
  v52.size.height = 14.0;
  v52.origin.x = MinX;
  v52.origin.y = v43;
  v52.size.width = Width;
  v11 = CGRectGetMaxY(v52) + 3.0;
  v53.origin.x = a2;
  v53.origin.y = a3;
  v53.size.width = a4;
  v53.size.height = a5;
  v12 = CGRectGetWidth(v53);
  v54.origin.x = a2;
  v54.origin.y = a3;
  v54.size.width = a4;
  v54.size.height = a5;
  v13 = CGRectGetMinX(v54);
  v55.size.height = 84.0;
  v42 = v13;
  v55.origin.x = v10;
  v55.origin.y = v11;
  v14 = v12;
  v55.size.width = v12;
  v15 = CGRectGetMaxY(v55) + 3.0;
  v56.origin.x = a2;
  v56.origin.y = a3;
  v56.size.width = a4;
  v56.size.height = a5;
  v41 = CGRectGetWidth(v56);
  v47[0] = MinX;
  v47[1] = v43;
  v47[2] = Width;
  v47[3] = 14.0;
  v47[4] = v10;
  v47[5] = v11;
  v47[6] = v14;
  v47[7] = 84.0;
  v47[8] = v42;
  v47[9] = v15;
  v47[10] = v41;
  v47[11] = 14.0;
  sub_29E2760A8(v47, v46, a2, a3, a4, a5);
  v16 = v46[0];
  v17 = v46[1];
  v18 = v46[2];
  v19 = v46[3];
  CGContextSaveGState(a1);
  v20 = objc_opt_self();
  v21 = [v20 whiteColor];
  v22 = [v21 CGColor];

  CGContextSetFillColorWithColor(a1, v22);
  v57.origin.x = v16;
  v57.origin.y = v17;
  v57.size.width = v18;
  v57.size.height = v19;
  CGContextFillRect(a1, v57);
  CGContextRestoreGState(a1);
  v23 = v46[4];
  v24 = v46[5];
  v25 = v46[6];
  v26 = v46[7];
  CGContextSaveGState(a1);
  v27 = [v20 whiteColor];
  v28 = [v27 CGColor];

  CGContextSetFillColorWithColor(a1, v28);
  v58.origin.x = v23;
  v58.origin.y = v24;
  v58.size.width = v25;
  v58.size.height = v26;
  CGContextFillRect(a1, v58);
  CGContextRestoreGState(a1);
  v29 = v46[8];
  v30 = v46[9];
  v31 = v46[10];
  v32 = v46[11];
  CGContextSaveGState(a1);
  v33 = [v20 whiteColor];
  v34 = [v33 CGColor];

  CGContextSetFillColorWithColor(a1, v34);
  v59.origin.x = v29;
  v59.origin.y = v30;
  v59.size.width = v31;
  v59.size.height = v32;
  CGContextFillRect(a1, v59);
  CGContextRestoreGState(a1);
  v35 = v46[12];
  v36 = v46[13];
  v37 = v46[14];
  v38 = v46[15];
  CGContextSaveGState(a1);
  v39 = [v20 whiteColor];
  v40 = [v39 CGColor];

  CGContextSetFillColorWithColor(a1, v40);
  v60.origin.x = v35;
  v60.origin.y = v36;
  v60.size.width = v37;
  v60.size.height = v38;
  CGContextFillRect(a1, v60);
  CGContextRestoreGState(a1);
  sub_29E2738B0(a1, MinX, v43, Width, 14.0);
  sub_29E2738B0(a1, v10, v11, v14, 84.0);
  sub_29E2738B0(a1, v42, v15, v41, 14.0);

  sub_29E273B30(a1, 6, v10, v11, v14, 84.0);
}

void sub_29E2736F0(double a1, double a2)
{
  v4 = a1 + 110.0 - *(v2 + 104) + -4.0;
  v5 = [objc_opt_self() systemFontOfSize:6.0 weight:*MEMORY[0x29EDC7700]];
  v6 = sub_29E2BE1E4();
  sub_29DE9408C(0, &qword_2A1817B10);
  v7 = sub_29E2C3E84();
  sub_29DF40374(v5, v7, v6);

  v8 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v9 = sub_29E2C33A4();
  type metadata accessor for Key(0);
  sub_29DEA75B0();
  v10 = sub_29E2C31F4();

  v13 = [v8 initWithString:v9 attributes:v10];

  [v13 size];
  [v13 drawAtPoint_];
}

void sub_29E2738B0(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  CGContextSaveGState(a1);
  v12 = [objc_opt_self() systemGray2Color];
  v13 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v14 = [v12 resolvedColorWithTraitCollection_];

  v15 = [v14 CGColor];
  CGContextSetStrokeColorWithColor(a1, v15);

  CGContextSetLineWidth(a1, 0.5);
  sub_29E2C38E4();
  CGContextSetLineCap(a1, kCGLineCapButt);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  v16 = CGRectGetMinX(v24) + 110.0 - *(v6 + 104);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  v17 = CGRectGetMaxY(v25) + -0.25;
  sub_29E277080(0, &qword_2A1820F80, MEMORY[0x29EDC9E90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29E2CD7A0;
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  MinY = CGRectGetMinY(v26);
  *(v18 + 32) = v16;
  *(v18 + 40) = MinY;
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  MaxX = CGRectGetMaxX(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  v21 = CGRectGetMinY(v28);
  *(v18 + 48) = MaxX;
  *(v18 + 56) = v21;
  sub_29E2C38F4();

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29E2CD7A0;
  *(v22 + 32) = v16;
  *(v22 + 40) = v17;
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  *(v22 + 48) = CGRectGetMaxX(v29);
  *(v22 + 56) = v17;
  sub_29E2C38F4();

  CGContextRestoreGState(a1);
}

void sub_29E273B30(CGContext *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  CGContextSaveGState(a1);
  v14 = [objc_opt_self() systemGrayColor];
  v15 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v16 = [v14 resolvedColorWithTraitCollection_];

  v17 = [v16 CGColor];
  CGContextSetStrokeColorWithColor(a1, v17);

  CGContextSetLineWidth(a1, 0.5);
  v28.origin.x = a3;
  v28.origin.y = a4;
  v28.size.width = a5;
  v28.size.height = a6;
  MinX = CGRectGetMinX(v28);
  v19 = *(v7 + 104);
  v29.origin.x = a3;
  v29.origin.y = a4;
  v29.size.width = a5;
  v29.size.height = a6;
  MinY = CGRectGetMinY(v29);
  v21 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v21 < 0)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (a2 != 1)
  {
    v22 = MinX + 110.0 - v19;
    v23 = MinY + 14.0;
    v24 = a2 / 2 - 1;
    v25 = 0.0;
    do
    {
      sub_29E2C38E4();
      CGContextSetLineCap(a1, (v24 != 0));
      sub_29E277080(0, &qword_2A1820F80, MEMORY[0x29EDC9E90]);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_29E2CD7A0;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23 + v25;
      v30.origin.x = a3;
      v30.origin.y = a4;
      v30.size.width = a5;
      v30.size.height = a6;
      *(v26 + 48) = CGRectGetMaxX(v30);
      *(v26 + 56) = v23 + v25;
      sub_29E2C38F4();

      v25 = v25 + 14.0;
      --v24;
      --v21;
    }

    while (v21);
  }

  CGContextRestoreGState(a1);
}

uint64_t sub_29E273DC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CycleChartDay();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  v11 = MEMORY[0x29EDCA190];
  if (v10)
  {
    v20[1] = a1;
    v21 = MEMORY[0x29EDCA190];
    sub_29E1811DC(0, v10, 0);
    v11 = v21;
    v20[0] = v3;
    v12 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    do
    {
      sub_29DF60428(v12, v9);
      swift_getAtKeyPath();
      sub_29E276F50(v9);
      v14 = *&v27[0];
      v21 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_29E1811DC((v15 > 1), v16 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v16 + 1;
      *(v11 + 8 * v16 + 32) = v14;
      v12 += v13;
      --v10;
    }

    while (v10);
    v3 = v20[0];
  }

  v17 = *(v3 + 24);
  v27[0] = *(v3 + 8);
  v27[1] = v17;
  v28 = *(v3 + 40);
  sub_29E1CEBEC(v11, v27, &v21);

  v18 = v21;
  v25[0] = v22;
  v25[1] = v23;
  v26 = v24;
  sub_29DEC70B0(v25);
  return v18;
}

void sub_29E273F9C(CGContext *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for CycleChartDay();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v72 - v14;
  sub_29E276FAC();
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89.origin.x = *(a2 + 32);
  v89.origin.y = *(a2 + 40);
  v89.size.width = *(a2 + 48);
  v19 = *(a2 + 56);
  v83 = a2;
  y = v89.origin.y;
  x = v89.origin.x;
  width = v89.size.width;
  v89.size.height = v19;
  MinX = CGRectGetMinX(v89);
  v21 = *(v4 + 104);
  CGContextSaveGState(a1);
  v85 = a1;
  CGContextSetLineWidth(a1, 0.5);
  v84 = v4;
  v22 = sub_29E273DC8(a3, a4);
  v87 = *(a4 + 16);
  v88 = v22;
  if (!v87)
  {
LABEL_27:

LABEL_29:
    CGContextRestoreGState(v85);
    return;
  }

  v23 = 0;
  v24 = a4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v78 = v21 * 0.5;
  v25 = MinX + 110.0 + v21 * 0.5;
  v79 = "swift";
  v86 = *(v10 + 72);
  v72 = "33D4225361E8D6E9FA)";
  v73 = "(Cycle Chart PDF)";
  v26 = (v88 + 40);
  v77 = 0.1;
  v76 = v15;
  v75 = v18;
  while (1)
  {
    sub_29DF60428(v24, v15);
    v38 = *(v88 + 16);
    if (v23 == v38)
    {

      sub_29E276F50(v15);
      goto LABEL_29;
    }

    if (v23 >= v38)
    {
      break;
    }

    v39 = *(v26 - 1);
    v40 = *v26;
    sub_29E27701C(v15, v18);
    sub_29E27701C(v18, v12);
    if (v40 != 1)
    {
      if (v39 <= 1.0)
      {
        if (v39 >= 0.0)
        {
          v50 = y;
          v49 = x;
          v90.origin.x = x;
          v90.origin.y = y;
          v51 = v21;
          v52 = v19;
          v53 = width;
          v90.size.width = width;
          v90.size.height = v52;
          MinY = CGRectGetMinY(v90);
          v91.origin.x = v49;
          v91.origin.y = v50;
          v91.size.width = v53;
          v91.size.height = v52;
          MaxY = CGRectGetMaxY(v91);
          v92.origin.x = v49;
          v92.origin.y = v50;
          v92.size.width = v53;
          v19 = v52;
          v21 = v51;
          v92.size.height = v19;
          MidY = MinY + (MaxY - CGRectGetMinY(v92)) * v39;
        }

        else
        {
          v27 = *v83;
          v28 = v83[1];
          v29 = v83[2];
          v30 = v83[3];
LABEL_4:
          MidY = CGRectGetMidY(*&v27);
        }

        sub_29DE9408C(0, &qword_2A1820890);
        v32 = sub_29E1208FC(v25, MidY, 5.0);
        v33 = *v84;
        v34 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v35 = [v33 resolvedColorWithTraitCollection_];

        v36 = [v35 CGColor];
        v37 = v85;
        CGContextSetFillColorWithColor(v85, v36);

        [v32 fill];
        CGContextDrawPath(v37, kCGPathFillStroke);
        goto LABEL_6;
      }

      v27 = v83[8];
      v28 = v83[9];
      v29 = v83[10];
      v30 = v83[11];
      goto LABEL_4;
    }

    if (*&v39 >= 2uLL)
    {
      goto LABEL_7;
    }

    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v41 = qword_2A1A67F80;
    v42 = sub_29E2C33A4();
    v43 = objc_opt_self();
    v44 = [v43 colorNamed:v42 inBundle:v41 compatibleWithTraitCollection:0];

    if (!v44)
    {
      goto LABEL_31;
    }

    v45 = [*&v12[*(type metadata accessor for CycleDay() + 20)] fertileWindowLevel];
    if ((v45 - 1) >= 2)
    {
      if (v45 == 3)
      {
        v55 = v41;
        v56 = sub_29E2C33A4();
        v48 = [v43 colorNamed:v56 inBundle:v55 compatibleWithTraitCollection:0];

        if (!v48)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v48 = [v43 whiteColor];
      }
    }

    else
    {
      v46 = v41;
      v47 = sub_29E2C33A4();
      v48 = [v43 colorNamed:v47 inBundle:v46 compatibleWithTraitCollection:0];

      if (!v48)
      {
        goto LABEL_32;
      }
    }

    v57 = v48;
    v59 = y;
    v58 = x;
    v93.origin.x = x;
    v93.origin.y = y;
    v60 = width;
    v93.size.width = width;
    v93.size.height = v19;
    CGRectGetMidX(v93);
    v94.origin.x = v58;
    v94.origin.y = v59;
    v94.size.width = v60;
    v94.size.height = v19;
    v61 = CGRectGetMidY(v94);
    v95.origin.x = v58;
    v95.origin.y = v59;
    v95.size.width = v60;
    v95.size.height = v19;
    Height = CGRectGetHeight(v95);
    v63 = v25 - v78;
    v64 = v61 + Height * -0.5;
    v96.origin.x = v25 - v78;
    v96.origin.y = v64;
    v96.size.width = v21;
    v96.size.height = Height;
    v65 = CGRectGetHeight(v96) * v77;
    v97.origin.x = v63;
    v97.origin.y = v64;
    v97.size.width = v21;
    v97.size.height = Height;
    v98 = CGRectInset(v97, 0.0, v65);
    v66 = v98.origin.x;
    v67 = v98.origin.y;
    v68 = v98.size.width;
    v69 = v98.size.height;
    v32 = [objc_allocWithZone(MEMORY[0x29EDC7948]) init];
    v99.origin.x = v66;
    v99.origin.y = v67;
    v99.size.width = v68;
    v99.size.height = v69;
    MidX = CGRectGetMidX(v99);
    v100.origin.x = v66;
    v100.origin.y = v67;
    v100.size.width = v68;
    v100.size.height = v69;
    [v32 moveToPoint_];
    v101.origin.x = v66;
    v101.origin.y = v67;
    v101.size.width = v68;
    v101.size.height = v69;
    v71 = CGRectGetMidX(v101);
    v102.origin.x = v66;
    v102.origin.y = v67;
    v102.size.width = v68;
    v102.size.height = v69;
    [v32 addLineToPoint_];
    [v32 setLineCapStyle_];
    [v44 setStroke];
    [v32 setLineWidth_];
    [v32 stroke];
    [v32 setLineWidth_];
    [v57 setStroke];
    [v32 stroke];

    v15 = v76;
    v18 = v75;
LABEL_6:

LABEL_7:
    ++v23;
    sub_29E276F50(v12);
    v25 = v21 + v25;
    v24 += v86;
    v26 += 2;
    if (v87 == v23)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_29E274788(CGContext *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v39.origin.x = *(a2 + 32);
    v8 = *(a2 + 40);
    v10 = *(a2 + 48);
    v9 = *(a2 + 56);
    x = v39.origin.x;
    v39.origin.y = v8;
    v39.size.width = v10;
    v39.size.height = v9;
    MinX = CGRectGetMinX(v39);
    if (v4 != 1)
    {
      v12 = 0;
      v13 = *(v3 + 104);
      v14 = MinX + 110.0 + v13 * 0.5;
      v15 = a3 + 32;
      v16 = (a3 + 56);
      v17 = 1;
      v37 = v14;
      while (1)
      {
        if (v12 >= v4)
        {
          __break(1u);
          return;
        }

        v19 = *(v16 - 1);
        v20 = v15 + 16 * v12;
        if ((*(v20 + 8) & 1) == 0)
        {
          break;
        }

        v18 = v17;
        if (*v16)
        {
          goto LABEL_5;
        }

LABEL_10:
        ++v17;
        v16 += 2;
        v12 = v18;
        if (v4 == v17)
        {
          return;
        }
      }

      if (*v16)
      {
LABEL_5:
        if (*&v19 == 1)
        {
          v18 = v17;
        }

        else
        {
          v18 = v12;
        }

        if (v19 == 0.0)
        {
          v18 = v17;
        }

        goto LABEL_10;
      }

      v21 = *v20;
      if (*v20 <= 1.0)
      {
        if (v21 >= 0.0)
        {
          v40.origin.x = x;
          v40.origin.y = v8;
          v40.size.width = v10;
          v40.size.height = v9;
          MinY = CGRectGetMinY(v40);
          v41.origin.x = x;
          v41.origin.y = v8;
          v41.size.width = v10;
          v41.size.height = v9;
          MaxY = CGRectGetMaxY(v41);
          v42.origin.x = x;
          v42.origin.y = v8;
          v42.size.width = v10;
          v42.size.height = v9;
          v29 = MaxY - CGRectGetMinY(v42);
          v14 = v37;
          v26 = MinY + v21 * v29;
LABEL_22:
          if (v19 <= 1.0)
          {
            if (v19 >= 0.0)
            {
              v43.origin.x = x;
              v43.origin.y = v8;
              v43.size.width = v10;
              v43.size.height = v9;
              v36 = CGRectGetMinY(v43);
              v44.origin.x = x;
              v44.origin.y = v8;
              v44.size.width = v10;
              v44.size.height = v9;
              v35 = CGRectGetMaxY(v44);
              v45.origin.x = x;
              v14 = v37;
              v45.origin.y = v8;
              v45.size.width = v10;
              v45.size.height = v9;
              MidY = v36 + (v35 - CGRectGetMinY(v45)) * v19;
              goto LABEL_28;
            }

            v30 = *a2;
            v31 = *(a2 + 8);
            v32 = *(a2 + 16);
            v33 = *(a2 + 24);
          }

          else
          {
            v30 = *(a2 + 64);
            v31 = *(a2 + 72);
            v32 = *(a2 + 80);
            v33 = *(a2 + 88);
          }

          MidY = CGRectGetMidY(*&v30);
LABEL_28:
          sub_29E274A24(a2, a1, v14 + v13 * v12, v26, v14 + v13 * v17, MidY);
          v18 = v17;
          goto LABEL_10;
        }

        v22 = *a2;
        v23 = *(a2 + 8);
        v24 = *(a2 + 16);
        v25 = *(a2 + 24);
      }

      else
      {
        v22 = *(a2 + 64);
        v23 = *(a2 + 72);
        v24 = *(a2 + 80);
        v25 = *(a2 + 88);
      }

      v26 = CGRectGetMidY(*&v22);
      goto LABEL_22;
    }
  }
}

void sub_29E274A24(CGFloat *a1, CGContext *a2, CGFloat a3, CGFloat a4, double a5, CGFloat a6)
{
  v132.y = a6;
  v12 = sub_29E2C0514();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v125 - v17;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v125 - v20;
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v125 - v23;
  MEMORY[0x2A1C7C4A8](v25);
  v27 = &v125 - v26;
  v28 = a1[4];
  v29 = a1[5];
  v30 = a1[6];
  v31 = a1[7];
  v142.origin.x = v28;
  v142.origin.y = v29;
  v142.size.width = v30;
  v142.size.height = v31;
  MinY = CGRectGetMinY(v142);
  v143.origin.x = v28;
  v143.origin.y = v29;
  v143.size.width = v30;
  v33 = a3;
  v34 = a4;
  v143.size.height = v31;
  y = v132.y;
  MaxY = CGRectGetMaxY(v143);
  v37 = COERCE_DOUBLE(sub_29E276D60(a3, a4, a5, y));
  if (v39)
  {
    sub_29E2C04B4();
    v40 = sub_29E2C0504();
    v41 = sub_29E2C3A14();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v136[0] = v43;
      *v42 = 136315650;
      *(v42 + 4) = sub_29DFAA104(0x797469746E617551, 0xEB00000000776F52, v136);
      *&v132.x = v12;
      *(v42 + 12) = 2080;
      v133 = a3;
      v134 = a4;
      type metadata accessor for CGPoint(0);
      v44 = sub_29E2C3424();
      v46 = sub_29DFAA104(v44, v45, v136);

      *(v42 + 14) = v46;
      *(v42 + 22) = 2080;
      v133 = a5;
      v134 = y;
      v47 = sub_29E2C3424();
      v49 = sub_29DFAA104(v47, v48, v136);

      *(v42 + 24) = v49;
      _os_log_impl(&dword_29DE74000, v40, v41, "[%s] Was not able to make a line between: %s and %s", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v43, -1, -1);
      MEMORY[0x29ED82140](v42, -1, -1);

      (*(v13 + 8))(v15, *&v132.x);
      return;
    }

    v67 = *(v13 + 8);
    v68 = v15;
    goto LABEL_10;
  }

  v132.x = a5;
  v50 = 0.0;
  v51 = 0.0;
  v52 = 0.0;
  v53 = 0.0;
  if (v37 != 0.0)
  {
    v52 = (MinY + 1.0 - v38) / v37;
    v53 = v52 * v37 + v38;
    v50 = (MaxY + -1.0 - v38) / v37;
    v51 = v50 * v37 + v38;
  }

  v128 = v53;
  v129 = v37;
  v126 = v50;
  v127 = v52;
  v125 = v51;
  v55 = *a1;
  v54 = a1[1];
  v56 = a1[2];
  v57 = a1[3];
  v144.origin.x = *a1;
  v144.origin.y = v54;
  v144.size.width = v56;
  v144.size.height = v57;
  v138.x = v33;
  v138.y = v34;
  v58 = CGRectContainsPoint(v144, v138);
  v59 = v34;
  v60 = v33;
  v62 = a1[8];
  v61 = a1[9];
  v64 = a1[10];
  v63 = a1[11];
  v130 = v59;
  v131 = v60;
  if (!v58)
  {
    v146.origin.x = v62;
    v146.origin.y = v61;
    v146.size.width = v64;
    v146.size.height = v63;
    v69 = CGRectContainsPoint(v146, *&v60);
    v147.origin.x = v55;
    v147.origin.y = v54;
    v147.size.width = v56;
    v147.size.height = v57;
    x = v132.x;
    v70 = v132.y;
    v72 = CGRectContainsPoint(v147, v132);
    if (!v69)
    {
      if (v72)
      {
        if (v129 == 0.0)
        {
          sub_29E2C04B4();
          v77 = sub_29E2C0504();
          v78 = sub_29E2C3A14();
          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v136[0] = v80;
            *v79 = 136315394;
            *(v79 + 4) = sub_29DFAA104(0x797469746E617551, 0xEB00000000776F52, v136);
            *(v79 + 12) = 2080;
            v133 = v127;
            v134 = v128;
            v135 = 1;
            sub_29E277080(0, &qword_2A1820880, MEMORY[0x29EDC9C68]);
            v81 = sub_29E2C3424();
            v83 = sub_29DFAA104(v81, v82, v136);

            *(v79 + 14) = v83;
            _os_log_impl(&dword_29DE74000, v77, v78, "[%s] Missing intersection point: %s", v79, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x29ED82140](v80, -1, -1);
            MEMORY[0x29ED82140](v79, -1, -1);
          }

          v67 = *(v13 + 8);
          v68 = v21;
          goto LABEL_10;
        }
      }

      else
      {
        v150.origin.x = v62;
        v150.origin.y = v61;
        v150.size.width = v64;
        v150.size.height = v63;
        v141.x = x;
        v141.y = v70;
        if (!CGRectContainsPoint(v150, v141))
        {
          CGContextSaveGState(a2);
          v105 = *v6;
          v106 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
          v107 = [v105 resolvedColorWithTraitCollection_];

          v108 = [v107 CGColor];
          CGContextSetStrokeColorWithColor(a2, v108);

          CGContextSetLineCap(a2, kCGLineCapRound);
          goto LABEL_41;
        }

        if (v129 == 0.0)
        {
          sub_29E2C04B4();
          v91 = sub_29E2C0504();
          v92 = sub_29E2C3A14();
          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v136[0] = v94;
            *v93 = 136315394;
            *(v93 + 4) = sub_29DFAA104(0x797469746E617551, 0xEB00000000776F52, v136);
            *(v93 + 12) = 2080;
            v133 = v126;
            v134 = v125;
            v135 = 1;
            sub_29E277080(0, &qword_2A1820880, MEMORY[0x29EDC9C68]);
            v95 = sub_29E2C3424();
            v97 = sub_29DFAA104(v95, v96, v136);

            *(v93 + 14) = v97;
            _os_log_impl(&dword_29DE74000, v91, v92, "[%s] Missing intersection point: %s", v93, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x29ED82140](v94, -1, -1);
            MEMORY[0x29ED82140](v93, -1, -1);
          }

          v67 = *(v13 + 8);
          v68 = v18;
          goto LABEL_10;
        }
      }

      CGContextSaveGState(a2);
      v109 = *v6;
      v110 = objc_opt_self();
      v111 = [v110 traitCollectionWithUserInterfaceStyle_];
      v112 = [v109 resolvedColorWithTraitCollection_];

      v113 = [v112 CGColor];
      CGContextSetStrokeColorWithColor(a2, v113);

      CGContextSetLineCap(a2, kCGLineCapRound);
      sub_29E2C3904();
      sub_29E2C3914();
      CGContextStrokePath(a2);
      CGContextRestoreGState(a2);
      CGContextSaveGState(a2);
      v114 = [v110 traitCollectionWithUserInterfaceStyle_];
      v115 = [v109 resolvedColorWithTraitCollection_];

      v116 = [v115 CGColor];
      CGContextSetStrokeColorWithColor(a2, v116);

      sub_29E2C38E4();
      CGContextSetLineCap(a2, kCGLineCapRound);
      goto LABEL_41;
    }

    if (v72)
    {
      goto LABEL_13;
    }

    v149.origin.x = v62;
    v149.origin.y = v61;
    v149.size.width = v64;
    v149.size.height = v63;
    v140.x = x;
    v140.y = v70;
    if (CGRectContainsPoint(v149, v140))
    {
      goto LABEL_13;
    }

    if (v129 == 0.0)
    {
      sub_29E2C04B4();
      v98 = sub_29E2C0504();
      v99 = sub_29E2C3A14();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v136[0] = v101;
        *v100 = 136315394;
        *(v100 + 4) = sub_29DFAA104(0x797469746E617551, 0xEB00000000776F52, v136);
        *(v100 + 12) = 2080;
        v133 = v126;
        v134 = v125;
        v135 = 1;
        sub_29E277080(0, &qword_2A1820880, MEMORY[0x29EDC9C68]);
        v102 = sub_29E2C3424();
        v104 = sub_29DFAA104(v102, v103, v136);

        *(v100 + 14) = v104;
        _os_log_impl(&dword_29DE74000, v98, v99, "[%s] Missing intersection point: %s", v100, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v101, -1, -1);
        MEMORY[0x29ED82140](v100, -1, -1);
      }

      v67 = *(v13 + 8);
      v68 = v24;
      goto LABEL_10;
    }

LABEL_40:
    CGContextSaveGState(a2);
    v117 = *v6;
    v118 = objc_opt_self();
    v119 = [v118 traitCollectionWithUserInterfaceStyle_];
    v120 = [v117 resolvedColorWithTraitCollection_];

    v121 = [v120 CGColor];
    CGContextSetStrokeColorWithColor(a2, v121);

    sub_29E2C38E4();
    CGContextSetLineCap(a2, kCGLineCapRound);
    sub_29E2C3904();
    sub_29E2C3914();
    CGContextStrokePath(a2);
    CGContextRestoreGState(a2);
    CGContextSaveGState(a2);
    v122 = [v118 traitCollectionWithUserInterfaceStyle_];
    v123 = [v117 resolvedColorWithTraitCollection_];

    v124 = [v123 CGColor];
    CGContextSetStrokeColorWithColor(a2, v124);

    CGContextSetLineCap(a2, kCGLineCapRound);
    goto LABEL_41;
  }

  v145.origin.x = v62;
  v145.origin.y = v61;
  v145.size.width = v64;
  v145.size.height = v63;
  v66 = v132.x;
  v65 = v132.y;
  if (!CGRectContainsPoint(v145, v132))
  {
    v148.origin.x = v55;
    v148.origin.y = v54;
    v148.size.width = v56;
    v148.size.height = v57;
    v139.x = v66;
    v139.y = v65;
    if (!CGRectContainsPoint(v148, v139))
    {
      if (v129 == 0.0)
      {
        sub_29E2C04B4();
        v84 = sub_29E2C0504();
        v85 = sub_29E2C3A14();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v136[0] = v87;
          *v86 = 136315394;
          *(v86 + 4) = sub_29DFAA104(0x797469746E617551, 0xEB00000000776F52, v136);
          *(v86 + 12) = 2080;
          v133 = v127;
          v134 = v128;
          v135 = 1;
          sub_29E277080(0, &qword_2A1820880, MEMORY[0x29EDC9C68]);
          v88 = sub_29E2C3424();
          v90 = sub_29DFAA104(v88, v89, v136);

          *(v86 + 14) = v90;
          _os_log_impl(&dword_29DE74000, v84, v85, "[%s] Missing intersection point: %s", v86, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED82140](v87, -1, -1);
          MEMORY[0x29ED82140](v86, -1, -1);
        }

        v67 = *(v13 + 8);
        v68 = v27;
LABEL_10:
        v67(v68, v12);
        return;
      }

      goto LABEL_40;
    }
  }

LABEL_13:
  CGContextSaveGState(a2);
  v73 = *v6;
  v74 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v75 = [v73 resolvedColorWithTraitCollection_];

  v76 = [v75 CGColor];
  CGContextSetStrokeColorWithColor(a2, v76);

  sub_29E2C38E4();
  CGContextSetLineCap(a2, kCGLineCapRound);
LABEL_41:
  sub_29E2C3904();
  sub_29E2C3914();
  CGContextStrokePath(a2);

  CGContextRestoreGState(a2);
}

uint64_t sub_29E275DD0(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  sub_29E2732F4(a1, a2, a3, a4, a5);
  sub_29E276344(a2, a3, a4, a5);
  sub_29E276630(a2, a3, a4, a5);
  v10.n128_f64[0] = a2;
  v11.n128_f64[0] = a3;
  v12.n128_f64[0] = a4;
  v13.n128_f64[0] = a5;

  return sub_29E1CBFE4(a1, 1, v10, v11, v12, v13);
}

uint64_t sub_29E275EA0(CGContext *a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v15 = v7[5];
  v35 = v7[4];
  v36 = v15;
  v16 = v7[7];
  v37 = v7[6];
  v38 = v16;
  v17 = v7[1];
  v31 = *v7;
  v32 = v17;
  v18 = v7[3];
  v33 = v7[2];
  v34 = v18;
  *&v18 = a5;
  MinX = CGRectGetMinX(*&a4);
  v40.origin.x = a4;
  v40.origin.y = a5;
  v40.size.width = a6;
  v40.size.height = a7;
  v28 = CGRectGetMinY(v40) + 5.0;
  v41.origin.x = a4;
  v41.origin.y = a5;
  v41.size.width = a6;
  v41.size.height = a7;
  Width = CGRectGetWidth(v41);
  v42.origin.x = a4;
  v42.origin.y = a5;
  v42.size.width = a6;
  v42.size.height = a7;
  v19 = CGRectGetMinX(v42);
  v43.size.height = 14.0;
  v43.origin.x = MinX;
  v43.origin.y = v28;
  v43.size.width = Width;
  v20 = CGRectGetMaxY(v43) + 3.0;
  v44.origin.x = a4;
  v44.origin.y = a5;
  v44.size.width = a6;
  v44.size.height = a7;
  v21 = CGRectGetWidth(v44);
  v45.origin.x = a4;
  v45.origin.y = a5;
  v45.size.width = a6;
  v45.size.height = a7;
  v26 = CGRectGetMinX(v45);
  v46.size.height = 84.0;
  v46.origin.x = v19;
  v46.origin.y = v20;
  v46.size.width = v21;
  v22 = CGRectGetMaxY(v46) + 3.0;
  v47.origin.x = a4;
  v47.origin.y = a5;
  v47.size.width = a6;
  v47.size.height = a7;
  *v30 = MinX;
  *&v30[1] = v28;
  *&v30[2] = Width;
  v30[3] = 0x402C000000000000;
  *&v30[4] = v19;
  *&v30[5] = v20;
  *&v30[6] = v21;
  v30[7] = 0x4055000000000000;
  *&v30[8] = v26;
  *&v30[9] = v22;
  v30[10] = CGRectGetWidth(v47);
  v30[11] = 0x402C000000000000;
  v23 = *(a3 + 32);
  sub_29E273F9C(a1, v30, a2, v23);
  v24 = sub_29E273DC8(a2, v23);
  sub_29E274788(a1, v30, v24);
}

double sub_29E2760A8@<D0>(CGFloat *a1@<X0>, CGFloat *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  MinX = CGRectGetMinX(*&a3);
  v49.origin.x = a3;
  v49.origin.y = a4;
  v49.size.width = a5;
  v49.size.height = a6;
  MinY = CGRectGetMinY(v49);
  v50.origin.x = a3;
  v50.origin.y = a4;
  v50.size.width = a5;
  v50.size.height = a6;
  Width = CGRectGetWidth(v50);
  v12 = *a1;
  v13 = a1[1];
  v51.size.width = a1[2];
  v14 = a1[3];
  v47 = v51.size.width;
  v51.origin.x = *a1;
  v36 = v14;
  v38 = *a1;
  v51.origin.y = v13;
  rect = v13;
  v51.size.height = v14;
  v15 = CGRectGetMinY(v51);
  v52.origin.x = a3;
  v52.origin.y = a4;
  v52.size.width = a5;
  v52.size.height = a6;
  v43 = v15 - CGRectGetMinY(v52);
  v53.origin.x = a3;
  v53.origin.y = a4;
  v53.size.width = a5;
  v53.size.height = a6;
  v42 = CGRectGetMinX(v53);
  v54.origin.x = v12;
  v54.origin.y = v13;
  v54.size.width = v47;
  v54.size.height = v14;
  MaxY = CGRectGetMaxY(v54);
  v55.origin.x = a3;
  v55.origin.y = a4;
  v55.size.width = a5;
  v55.size.height = a6;
  v40 = CGRectGetWidth(v55);
  v16 = a1[4];
  v17 = a1[5];
  v18 = a1[6];
  v56.size.height = a1[7];
  height = v56.size.height;
  v29 = v18;
  v56.origin.x = v16;
  v31 = v17;
  v56.origin.y = v17;
  v56.size.width = v18;
  v19 = CGRectGetMinY(v56);
  v57.size.height = v36;
  v57.origin.x = v38;
  v57.origin.y = rect;
  v57.size.width = v47;
  v48 = v19 - CGRectGetMaxY(v57);
  v58.origin.x = a3;
  v58.origin.y = a4;
  v58.size.width = a5;
  v58.size.height = a6;
  v39 = CGRectGetMinX(v58);
  v59.origin.x = v16;
  v59.origin.y = v17;
  v59.size.width = v18;
  v59.size.height = height;
  v37 = CGRectGetMaxY(v59);
  v60.origin.x = a3;
  v60.origin.y = a4;
  v60.size.width = a5;
  v60.size.height = a6;
  recta = CGRectGetWidth(v60);
  v61.origin.x = a1[8];
  v20 = a1[9];
  v21 = a1[10];
  v61.size.height = a1[11];
  v25 = v61.size.height;
  x = v61.origin.x;
  v61.origin.y = v20;
  v61.size.width = v21;
  v22 = CGRectGetMinY(v61);
  v62.origin.y = v31;
  v62.origin.x = v16;
  v62.size.width = v29;
  v62.size.height = height;
  v33 = v22 - CGRectGetMaxY(v62);
  v63.origin.x = a3;
  v63.origin.y = a4;
  v63.size.width = a5;
  v63.size.height = a6;
  v32 = CGRectGetMinX(v63);
  v64.origin.x = x;
  v64.origin.y = v20;
  v64.size.width = v21;
  v64.size.height = v25;
  v30 = CGRectGetMaxY(v64);
  v65.origin.x = a3;
  v65.origin.y = a4;
  v65.size.width = a5;
  v65.size.height = a6;
  v28 = CGRectGetWidth(v65);
  v66.origin.x = a3;
  v66.origin.y = a4;
  v66.size.width = a5;
  v66.size.height = a6;
  v23 = CGRectGetMaxY(v66);
  v67.origin.x = x;
  v67.origin.y = v20;
  v67.size.width = v21;
  v67.size.height = v25;
  result = v23 - CGRectGetMaxY(v67);
  *a2 = MinX;
  a2[1] = MinY;
  a2[2] = Width;
  a2[3] = v43;
  a2[4] = v42;
  a2[5] = MaxY;
  a2[6] = v40;
  a2[7] = v48;
  a2[8] = v39;
  a2[9] = v37;
  a2[10] = recta;
  a2[11] = v33;
  a2[12] = v32;
  a2[13] = v30;
  a2[14] = v28;
  a2[15] = result;
  return result;
}

void sub_29E276344(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (*(v4 + 64))
  {
    v9 = [objc_opt_self() systemFontOfSize:7.0 weight:*MEMORY[0x29EDC7700]];
    sub_29DE9408C(0, &qword_2A1817B10);
    v10 = sub_29E2C3E84();
    v11 = [objc_opt_self() darkTextColor];
    sub_29DF40374(v9, v10, v11);

    v12 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    v13 = sub_29E2C33A4();
    type metadata accessor for Key(0);
    sub_29DEA75B0();
    v14 = sub_29E2C31F4();

    rect_24 = [v12 initWithString:v13 attributes:v14];

    [rect_24 boundingRectWithSize:1 options:0 context:{70.0, 1.79769313e308}];
    rect = v15;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
    rect_8 = a4;
    rect_16 = a3;
    MinY = CGRectGetMinY(v31);
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    v23 = a1;
    Height = CGRectGetHeight(v32);
    v33.origin.x = rect;
    v33.origin.y = v17;
    v33.size.width = v19;
    v33.size.height = v21;
    v25 = MinY + (Height - CGRectGetHeight(v33)) * 0.5;
    if (qword_2A1816FB8 != -1)
    {
      swift_once();
    }

    v34.origin.x = v23;
    v34.origin.y = a2;
    v34.size.height = rect_8;
    v34.size.width = rect_16;
    [rect_24 drawWithRect:1 options:0 context:{CGRectGetMinX(v34) + 10.0, v25 + *&qword_2A1840D18, v19, v21}];
  }
}

uint64_t sub_29E276630(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v75 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2C3384();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = v56 - v16;
  v18 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v19 = *(v4 + 24);
  v76 = *(v4 + 8);
  v77 = v19;
  v67 = v4;
  v78 = *(v4 + 40);
  if (v19)
  {
    v20 = 0;
    v70 = 0;
    v21 = 0xE000000000000000;
    v73 = 0;
    v74 = 0xE000000000000000;
    v72 = 0xE000000000000000;
  }

  else
  {
    v22 = *&v76;
    v23 = *&v76 + (*(&v76 + 1) - *&v76) * 0.5;
    v20 = sub_29E24EAFC(*(&v76 + 1));
    v21 = v24;
    v70 = sub_29E24EAFC(v23);
    v74 = v25;
    v26 = sub_29E24EAFC(v22);
    v72 = v27;
    v73 = v26;
  }

  v56[1] = v20;
  v68 = v21;
  v79.origin.x = a1;
  v79.origin.y = a2;
  v79.size.width = a3;
  v79.size.height = a4;
  MinX = CGRectGetMinX(v79);
  v80.origin.x = a1;
  v80.origin.y = a2;
  v80.size.width = a3;
  v80.size.height = a4;
  v29 = CGRectGetMinY(v80) + 5.0;
  v81.origin.x = a1;
  v81.origin.y = a2;
  v81.size.width = a3;
  v81.size.height = a4;
  Width = CGRectGetWidth(v81);
  v82.origin.x = a1;
  v82.origin.y = a2;
  v82.size.width = a3;
  v82.size.height = a4;
  v31 = CGRectGetMinX(v82);
  v83.size.height = 14.0;
  v66 = MinX;
  v83.origin.x = MinX;
  v65 = v29;
  v83.origin.y = v29;
  v63 = Width;
  v83.size.width = Width;
  v32 = CGRectGetMaxY(v83) + 3.0;
  v84.origin.x = a1;
  v84.origin.y = a2;
  v84.size.width = a3;
  v84.size.height = a4;
  v33 = CGRectGetWidth(v84);
  v85.origin.x = a1;
  v85.origin.y = a2;
  v85.size.width = a3;
  v85.size.height = a4;
  v71 = CGRectGetMinX(v85);
  v86.origin.x = v31;
  v86.origin.y = v32;
  v86.size.width = v33;
  v86.size.height = 84.0;
  MaxY = CGRectGetMaxY(v86);
  v87.origin.x = a1;
  v87.origin.y = a2;
  v87.size.width = a3;
  v87.size.height = a4;
  v64 = CGRectGetWidth(v87);
  sub_29E2C3354();
  sub_29E2C3344();
  sub_29E2C3334();
  sub_29E2C3344();
  sub_29E2C3374();
  v69 = *(v12 + 16);
  v69(v14, v17, v11);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v61 = "MINDER_CANCEL_PROMPT";
  MaxY = MaxY + 3.0;
  v34 = qword_2A1A67F80;
  v35 = qword_2A1A67F80;
  v60 = v34;
  v36 = v35;
  sub_29E2BCC74();
  v37 = v36;
  sub_29E2C3414();
  v58 = v14;
  v59 = *(v12 + 8);
  v57 = v11;
  v59(v17, v11);
  v88.size.height = 14.0;
  v38 = v66;
  v88.origin.x = v66;
  v39 = v65;
  v88.origin.y = v65;
  v40 = v63;
  v88.size.width = v63;
  v41 = CGRectGetMinX(v88);
  v89.size.height = 14.0;
  v89.origin.x = v38;
  v89.origin.y = v39;
  v89.size.width = v40;
  MidY = CGRectGetMidY(v89);
  sub_29E2736F0(v41, MidY);

  v90.origin.x = v31;
  v90.origin.y = v32;
  v90.size.width = v33;
  v90.size.height = 84.0;
  v43 = CGRectGetMinX(v90);
  v91.origin.x = v31;
  v91.origin.y = v32;
  v91.size.width = v33;
  v91.size.height = 84.0;
  MinY = CGRectGetMinY(v91);
  sub_29E2736F0(v43, MinY);
  v92.origin.x = v31;
  v92.origin.y = v32;
  v92.size.width = v33;
  v92.size.height = 84.0;
  v45 = CGRectGetMinX(v92);
  v93.origin.x = v31;
  v93.origin.y = v32;
  v93.size.width = v33;
  v93.size.height = 84.0;
  v46 = CGRectGetMidY(v93);
  sub_29E2736F0(v45, v46);
  v94.origin.x = v31;
  v94.origin.y = v32;
  v94.size.width = v33;
  v94.size.height = 84.0;
  v47 = CGRectGetMinX(v94);
  v95.origin.x = v31;
  v95.origin.y = v32;
  v95.size.width = v33;
  v95.size.height = 84.0;
  v48 = CGRectGetMaxY(v95);
  sub_29E2736F0(v47, v48);
  sub_29E2C3354();
  sub_29E2C3344();
  sub_29E2C3334();

  sub_29E2C3344();
  sub_29E2C3374();
  v49 = v57;
  v69(v58, v17, v57);
  sub_29E2BCC74();
  sub_29E2C3414();
  v59(v17, v49);
  v96.size.height = 14.0;
  v50 = v71;
  v96.origin.x = v71;
  v51 = MaxY;
  v96.origin.y = MaxY;
  v52 = v64;
  v96.size.width = v64;
  v53 = CGRectGetMinX(v96);
  v97.size.height = 14.0;
  v97.origin.x = v50;
  v97.origin.y = v51;
  v97.size.width = v52;
  v54 = CGRectGetMidY(v97);
  sub_29E2736F0(v53, v54);
}

uint64_t sub_29E276D60(double a1, double a2, double a3, double a4)
{
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 - a1;
  if (v12 == 0.0)
  {
    sub_29E2C04B4();
    v13 = sub_29E2C0504();
    v14 = sub_29E2C3A14();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_29DFAA104(0xD000000000000033, 0x800000029E30A580, &v19);
      _os_log_impl(&dword_29DE74000, v13, v14, "[%s] Vertical lines are not supported", v15, 0xCu);
      sub_29DE93B3C(v16);
      MEMORY[0x29ED82140](v16, -1, -1);
      MEMORY[0x29ED82140](v15, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    *&result = 0.0;
  }

  else
  {
    *&result = (a4 - a2) / v12;
  }

  return result;
}

uint64_t sub_29E276F50(uint64_t a1)
{
  v2 = type metadata accessor for CycleChartDay();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E276FAC()
{
  if (!qword_2A1820888)
  {
    type metadata accessor for CycleChartDay();
    sub_29DEC7264();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1820888);
    }
  }
}

uint64_t sub_29E27701C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleChartDay();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E277080(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CGPoint(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E2770E4(void *a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_29E2C0514();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v36 - v5;
  v7 = sub_29E2BF344();
  v36 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_29E2BF354();
  v38 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v36 - v12;
  *&v15 = MEMORY[0x2A1C7C4A8](v14).n128_u64[0];
  v17 = &v36 - v16;
  v18 = [a1 identifier];
  v19 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v21 = v20;

  if (v19 == 0xD000000000000038 && 0x800000029E30A6A0 == v21 || (sub_29E2C4914() & 1) != 0 || v19 == 0xD000000000000031 && 0x800000029E30A6E0 == v21 || (sub_29E2C4914() & 1) != 0 || v19 == 0xD000000000000030 && 0x800000029E30A720 == v21 || (sub_29E2C4914() & 1) != 0 || v19 == 0xD000000000000031 && 0x800000029E30A760 == v21 || (sub_29E2C4914() & 1) != 0)
  {

    sub_29DF49474(a1, v42);
    return;
  }

  if (v19 == 0xD000000000000021 && 0x800000029E30A7A0 == v21 || (sub_29E2C4914() & 1) != 0)
  {

    v22 = v42;
    sub_29E2BF334();
    static PregnancyDataTypeDetailConfigurationProvider.configuration(mode:)(v17);
    sub_29E2BF194();
    (*(v36 + 16))(v37, v22, v7);
    objc_allocWithZone(sub_29E2BF3F4());
    v23 = a1;
    sub_29E2BF3E4();
    (*(v38 + 8))(v17, v39);
    return;
  }

  if (v19 == 0xD000000000000035 && 0x800000029E2EFFB0 == v21)
  {

LABEL_23:
    type metadata accessor for SleepingWristTemperatureDataTypeDetailConfigurationProvider();
    swift_initStackObject();
    sub_29E17B004();
    v25 = v42;
    sub_29E2BF194();
    (*(v36 + 16))(v37, v25, v7);
    sub_29DE9408C(0, &qword_2A1A5E1F0);
    MEMORY[0x29ED80230](*MEMORY[0x29EDBA858]);
    v26 = objc_allocWithZone(sub_29E2BF3F4());
    sub_29E2BF3E4();
    (*(v38 + 8))(v13, v39);
    return;
  }

  v24 = sub_29E2C4914();

  if (v24)
  {
    goto LABEL_23;
  }

  v47 = 0;
  memset(v46, 0, sizeof(v46));
  sub_29E277A78(v46, &v43);
  if (v44)
  {
    sub_29DE8EE78(&v43, v45);
    sub_29DE966D4(v45, v45[3]);
    sub_29E2BF784();
    v33 = v42;
    sub_29E2BF194();
    (*(v36 + 16))(v37, v33, v7);
    v34 = objc_allocWithZone(sub_29E2BF3F4());
    v35 = a1;
    sub_29E2BF3E4();
    (*(v38 + 8))(v10, v39);
    sub_29E277B08(v46, &qword_2A1820898, &unk_2A18208A0, MEMORY[0x29EDC29B0], sub_29DEB1BC4);
    sub_29DE93B3C(v45);
  }

  else
  {
    sub_29E277B08(&v43, &qword_2A1820898, &unk_2A18208A0, MEMORY[0x29EDC29B0], sub_29DEB1BC4);
    sub_29E2C04D4();
    v27 = a1;
    v28 = sub_29E2C0504();
    v29 = sub_29E2C3A14();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_29DE74000, v28, v29, "[MenstrualCyclesAppDelegate] No custom detail view controller or configuration provided for %@", v30, 0xCu);
      sub_29E277B08(v31, &qword_2A1A619E0, &qword_2A1A619F0, 0x29EDC9738, sub_29DE9408C);
      MEMORY[0x29ED82140](v31, -1, -1);
      MEMORY[0x29ED82140](v30, -1, -1);
    }

    (*(v40 + 8))(v6, v41);
    sub_29E277B08(v46, &qword_2A1820898, &unk_2A18208A0, MEMORY[0x29EDC29B0], sub_29DEB1BC4);
  }
}

uint64_t sub_29E277A78(uint64_t a1, uint64_t a2)
{
  sub_29E277B64(0, &qword_2A1820898, &unk_2A18208A0, MEMORY[0x29EDC29B0], sub_29DEB1BC4);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E277B08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_29E277B64(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_29E277B64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_29E2C4304();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E277C68()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for CycleChartsView());

  v9 = sub_29E2B7C50(v3);
  v4 = *&v9[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_headerView];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = (*&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_daysCountView] + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_8500AFF12A8E9400BC4D6E25DA312FB030CycleChartsDaysCountHeaderView_showPDF);
  v7 = *v6;
  *v6 = sub_29E278978;
  v6[1] = v5;
  v8 = v4;
  swift_retain_n();
  sub_29DE8EF50(v7);

  [v1 setView_];
}

void sub_29E277D8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29E2783A8();
  }
}

void sub_29E277E28()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v14[-v7];
  v9 = type metadata accessor for CycleChartsViewController();
  v15.receiver = v0;
  v15.super_class = v9;
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  sub_29E2C3314();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v3 + 8))(v8, v2);
  v11 = sub_29E2C33A4();

  [v0 setTitle_];

  v12 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:2 target:v0 action:sel_presentEditView];
  v13 = [v0 navigationItem];
  [v13 setRightBarButtonItem_];

  sub_29E278100();
}

void sub_29E278100()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E301310);
    v3 = sub_29E2C33A4();

    [v2 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E2781F0()
{
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartsViewController_model];
  v2 = [*(v1 + 16) healthStore];
  v3 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_settings);
  *(swift_allocObject() + 16) = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_29E2788C8();
  objc_allocWithZone(v5);

  v6 = v0;

  v7 = sub_29E2C1C34();
  [v7 setModalPresentationStyle_];
  v8 = [v6 navigationController];
  if (v8)
  {
    v9 = v8;
    [v8 presentViewController:v7 animated:1 completion:0];
  }
}

uint64_t sub_29E2783A8()
{
  v29 = sub_29E2C31A4();
  v1 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29);
  v30 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF0F0A0(0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CycleChartCycle(0);
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v27 - v11;
  v31 = v0;
  v13 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartsViewController_model);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_29E278848(v5, sub_29DF0F0A0);
  }

  sub_29DEFCEC4(v5, v12);
  v28 = *(v13 + 16);
  sub_29DFE394C(v12, v9);
  v15 = v30;
  (*(v1 + 16))(v30, &v12[*(v6 + 28)], v29);
  v16 = *(v31 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartsViewController_calendarCache);
  v17 = *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_basalBodyTemperatureRange + 32);
  v18 = *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_basalBodyTemperatureRange + 16);
  v33[0] = *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_basalBodyTemperatureRange);
  v33[1] = v18;
  v34 = v17;
  v20 = *(v13 + 72);
  v19 = *(v13 + 80);
  LODWORD(v29) = *(v13 + 88);
  v21 = type metadata accessor for CycleChartPDFProvider();
  swift_allocObject();
  v22 = v28;
  v23 = v16;
  sub_29DEDD5BC(v33, v32);
  v24 = v20;
  v25 = v19;
  v26 = sub_29DED9DC8(v22, v9, v15, v23, v33, v24, v25, v29);
  v32[3] = v21;
  v32[4] = sub_29E2787F0();
  v32[0] = v26;
  sub_29E2C3C04();
  sub_29E278848(v12, type metadata accessor for CycleChartCycle);
  return sub_29DE93B3C(v32);
}

id sub_29E27873C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleChartsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29E2787F0()
{
  result = qword_2A18208C0;
  if (!qword_2A18208C0)
  {
    type metadata accessor for CycleChartPDFProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18208C0);
  }

  return result;
}

uint64_t sub_29E278848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E2788C8()
{
  if (!qword_2A18208C8)
  {
    sub_29E278924();
    v0 = sub_29E2C1C44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18208C8);
    }
  }
}

unint64_t sub_29E278924()
{
  result = qword_2A18208D0;
  if (!qword_2A18208D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18208D0);
  }

  return result;
}

uint64_t type metadata accessor for CycleFactorSectionDataSource()
{
  result = qword_2A18208E0;
  if (!qword_2A18208E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E278A18(uint64_t a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BE764();
  sub_29DEB1BC4(0, &qword_2A1819BD0);
  result = swift_dynamicCast();
  if (result)
  {
    *&v31 = v3;
    v32 = a1;
    v7 = v39;
    v8 = (v38 ^ 1) & 1;
    v38 = (v38 ^ 1) & 1;
    sub_29E2C04B4();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v9 = sub_29E2C0504();
    v10 = sub_29E2C3A34();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v30 = v2;
      v12 = v11;
      v29 = swift_slowAlloc();
      v34[0] = v29;
      *v12 = 136446722;
      v13 = sub_29E2C4AE4();
      v15 = sub_29DFAA104(v13, v14, v34);
      v28 = v8;
      v16 = v15;

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v33 = v7;
      v17 = sub_29E2C3464();
      v19 = sub_29DFAA104(v17, v18, v34);

      *(v12 + 14) = v19;
      *(v12 + 22) = 1024;

      *(v12 + 24) = v28;

      _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Row %s selected: %{BOOL}d", v12, 0x1Cu);
      v20 = v29;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v20, -1, -1);
      MEMORY[0x29ED82140](v12, -1, -1);

      (*(v31 + 8))(v5, v30);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      (*(v31 + 8))(v5, v2);
    }

    swift_beginAccess();
    v31 = v35;
    v21 = v36;
    v22 = v37;
    v23 = v38;
    v24 = v39;
    v25 = v40;
    v34[3] = &type metadata for OnboardingSelectRow;
    v34[4] = sub_29DF07FEC();
    v26 = swift_allocObject();
    v34[0] = v26;
    *(v26 + 16) = v31;
    *(v26 + 32) = v21;
    *(v26 + 40) = v22;
    *(v26 + 48) = v23;
    *(v26 + 49) = v24;
    *(v26 + 50) = v25;
    sub_29E2BED04();
    return sub_29DE93B3C(v34);
  }

  return result;
}

uint64_t sub_29E278DDC@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v44 = sub_29E2BCFB4();
  v43 = *(v44 - 8);
  MEMORY[0x2A1C7C4A8](v44);
  v41 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2BEBB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E15B9CC();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v47 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E27C5E4(0, &qword_2A181DE28, sub_29E15B9CC, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v59 = &v40 - v15;
  v42 = v1;
  result = sub_29E2BEC64();
  v17 = result;
  v18 = 0;
  v46 = v4 + 16;
  v57 = (v9 + 48);
  v58 = (v9 + 56);
  v56 = (v4 + 32);
  v48 = v4;
  v53 = (v4 + 8);
  v55 = v3;
  v54 = v6;
  v50 = v8;
  v49 = v13;
  v52 = result;
  while (1)
  {
    v19 = *(v17 + 16);
    if (v18 == v19)
    {
      v60 = v18;
      v20 = 1;
    }

    else
    {
      if (v18 >= v19)
      {
        goto LABEL_19;
      }

      v21 = v18 + 1;
      v22 = v48;
      v23 = v17 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18;
      v24 = *(v8 + 48);
      v25 = v47;
      *v47 = v18;
      (*(v22 + 16))(v25 + v24, v23, v3);
      sub_29E15BB20(v25, v13, sub_29E15B9CC);
      v20 = 0;
      v60 = v21;
    }

    (*v58)(v13, v20, 1, v8);
    v26 = v59;
    sub_29E15CB5C(v13, v59);
    if ((*v57)(v26, 1, v8) == 1)
    {
      break;
    }

    v51 = *v26;
    (*v56)(v6, &v26[*(v8 + 48)], v3);
    result = sub_29E2BEB94();
    v27 = result;
    v28 = *(result + 16);
    if (v28)
    {
      v29 = 0;
      v30 = result + 32;
      while (v29 < *(v27 + 16))
      {
        sub_29DE9DC34(v30, &v65);
        sub_29DE9DC34(&v65, v61);
        sub_29DEB1BC4(0, &qword_2A1819BD0);
        sub_29DEB1BC4(0, &qword_2A181DE08);
        if (swift_dynamicCast())
        {
          v31 = *(&v63 + 1);
          v32 = v64;
          sub_29DE966D4(&v62, *(&v63 + 1));
          v33 = (*(v32 + 16))(v31, v32);
          sub_29DE93B3C(&v65);
          result = sub_29DE93B3C(&v62);
          if (v33)
          {

            v34 = v41;
            v35 = v51;
            MEMORY[0x29ED79720](v29, v51);
            sub_29E27A924(0, &v65);
            v36 = v43;
            v37 = v44;
            (*(v43 + 8))(v34, v44);
            sub_29DE93B3C(&v65);
            v38 = v45;
            MEMORY[0x29ED79720](v29 + 1, v35);
            sub_29E2BEC14();
            (*v53)(v54, v55);
            v39 = 0;
            return (*(v36 + 56))(v38, v39, 1, v37);
          }
        }

        else
        {
          v64 = 0;
          v62 = 0u;
          v63 = 0u;
          sub_29DE93B3C(&v65);
          result = sub_29E27C6F4(&v62, &qword_2A18208F0, &qword_2A181DE08, &protocol descriptor for PickerDisplayRow);
        }

        ++v29;
        v30 += 40;
        if (v28 == v29)
        {
          goto LABEL_2;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

LABEL_2:

    v6 = v54;
    v3 = v55;
    result = (*v53)(v54, v55);
    v8 = v50;
    v13 = v49;
    v17 = v52;
    v18 = v60;
  }

  v39 = 1;
  v38 = v45;
  v37 = v44;
  v36 = v43;
  return (*(v36 + 56))(v38, v39, 1, v37);
}

uint64_t sub_29E279464()
{
  v0 = sub_29E2BCFB4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x29ED79720](0, 0, v2);
  sub_29E2BE764();
  sub_29DEB1BC4(0, &qword_2A1819BD0);
  if (swift_dynamicCast())
  {
    v5 = v7[32];

    if (v5 == 1)
    {
      sub_29E278A18(v4);
    }
  }

  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_29E2795D8(uint64_t a1)
{
  v51 = *v1;
  sub_29E27C5E4(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v52 = &v48 - v4;
  v5 = sub_29E2BEBB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCFB4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v50 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v49 = &v48 - v13;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v48 - v15;
  result = sub_29E2BCF64();
  v18 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = sub_29E2BCFA4();
  MEMORY[0x29ED79720](v18, v19);
  v20 = sub_29E2BCFA4();
  v21 = *(sub_29E2BEC64() + 16);

  if (v20 >= v21)
  {
    return (*(v10 + 8))(v16, v9);
  }

  v53 = v9;
  v22 = sub_29E2BCF64();
  v23 = sub_29E2BEC64();
  result = sub_29E2BCFA4();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if (result >= *(v23 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  (*(v6 + 16))(v8, v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * result, v5);

  v24 = sub_29E2BEB94();
  (*(v6 + 8))(v8, v5);
  v25 = *(v24 + 16);

  if (v25 < v22)
  {
    return (*(v10 + 8))(v16, v53);
  }

  v26 = sub_29E2BE704();
  v28 = v52;
  v27 = v53;
  if ((v26 & 1) == 0)
  {
LABEL_15:
    sub_29E278DDC(v28);
    if ((*(v10 + 48))(v28, 1, v27) == 1)
    {
      sub_29E27C764(v28, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
    }

    else
    {
      v31 = v49;
      (*(v10 + 32))();
      v32 = sub_29E2BCFA4();
      if (v32 == sub_29E2BCFA4())
      {
        v33 = sub_29E2BCF64();
        v34 = sub_29E2BCF64();
        (*(v10 + 8))(v31, v27);
        if (v33 < v34)
        {
          (*(v10 + 24))(v16, a1, v27);
        }
      }

      else
      {
        (*(v10 + 8))(v31, v27);
      }
    }

    result = sub_29E2BCF64();
    v35 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      v36 = sub_29E2BCFA4();
      v37 = v50;
      MEMORY[0x29ED79720](v35, v36);
      sub_29E27A924(1, v60);
      v38 = v61;
      v39 = v62;
      v40 = sub_29DE966D4(v60, v61);
      *(&v55 + 1) = v38;
      v56 = *(v39 + 8);
      v41 = sub_29DEBB7E8(&v54);
      (*(*(v38 - 8) + 16))(v41, v40, v38);
      sub_29E27AB2C(&v54, v57);
      sub_29DE93B3C(&v54);
      v42 = v58;
      v43 = v59;
      v44 = sub_29DE966D4(v57, v58);
      *(&v55 + 1) = v42;
      v56 = *(v43 + 8);
      v45 = sub_29DEBB7E8(&v54);
      (*(*(v42 - 8) + 16))(v45, v44, v42);
      sub_29E2BECD4();
      v46 = *(v10 + 8);
      v47 = v53;
      v46(v37, v53);
      v46(v16, v47);
      sub_29DE93B3C(&v54);
      sub_29DE93B3C(v57);
      return sub_29DE93B3C(v60);
    }

LABEL_28:
    __break(1u);
    return result;
  }

  sub_29E2BE764();
  sub_29DEB1BC4(0, &qword_2A1819BD0);
  sub_29DEB1BC4(0, &qword_2A181DE08);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    sub_29E27C6F4(&v54, &qword_2A18208F0, &qword_2A181DE08, &protocol descriptor for PickerDisplayRow);
    goto LABEL_15;
  }

  sub_29DE8EE78(&v54, v60);
  v29 = v61;
  v30 = v62;
  sub_29DE966D4(v60, v61);
  if (((*(v30 + 16))(v29, v30) & 1) == 0)
  {
    sub_29DE93B3C(v60);
    v27 = v53;
    goto LABEL_15;
  }

  sub_29E27A924(0, v57);
  sub_29DE93B3C(v57);
  sub_29E2BEC14();
  (*(v10 + 8))(v16, v53);
  return sub_29DE93B3C(v60);
}

uint64_t sub_29E279CEC(unint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2BEBB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_29E2BEC64();
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(result + 16) > a1)
  {
    (*(v5 + 16))(v7, result + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1, v4);

    v9 = sub_29E2BEB94();
    result = (*(v5 + 8))(v7, v4);
    v10 = *(v9 + 16);
    if (!v10)
    {
LABEL_8:

      return 0;
    }

    v11 = 0;
    v12 = v9 + 32;
    while (v11 < *(v9 + 16))
    {
      sub_29DE9DC34(v12, v15);
      sub_29DE8EE78(v15, v14);
      sub_29DEB1BC4(0, &qword_2A1819BD0);
      result = swift_dynamicCast();
      if (result)
      {

        sub_29DF3BBFC(v13);
        return sub_29DF07694(*(v2 + qword_2A18208D8));
      }

      ++v11;
      v12 += 40;
      if (v10 == v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_29E279EF0(unsigned __int8 a1, int a2)
{
  v42 = a2;
  LODWORD(v43) = a1;
  v44 = sub_29E2BEBB4();
  v4 = *(v44 - 8);
  MEMORY[0x2A1C7C4A8](v44);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v39 - v7;
  v9 = sub_29E2BCC24();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_2A18208D8) = a1;
  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  sub_29E2C4584();

  strcpy(v45, "MutableArray<");
  HIWORD(v45[1]) = -4864;
  sub_29E2BCC14();
  v13 = sub_29E2BCBD4();
  v15 = v14;
  v40 = *(v10 + 8);
  v40(v12, v9);
  MEMORY[0x29ED7FCC0](v13, v15);
  v16 = v8;

  MEMORY[0x29ED7FCC0](62, 0xE100000000000000);
  v17 = sub_29E2BEC54();

  sub_29E27A410(a1, 0, v8);
  if (v43 == 2 && (v42 & 1) != 0)
  {
    sub_29E27C57C(0, &unk_2A181B3C0, &qword_2A1819BD0, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
    v18 = swift_allocObject();
    v43 = v8;
    v19 = v18;
    *(v18 + 16) = xmmword_29E2CAB20;
    sub_29E2BCC14();
    v20 = sub_29E2BCBD4();
    v22 = v21;
    v23 = v40;
    v40(v12, v9);
    v19[7] = &type metadata for OnboardingStandardRow;
    v19[8] = sub_29DF083EC();
    v24 = swift_allocObject();
    v19[4] = v24;
    *(v24 + 16) = v20;
    *(v24 + 24) = v22;
    *(v24 + 32) = v20;
    *(v24 + 40) = v22;
    *(v24 + 48) = 7;
    sub_29E2BF404();
    sub_29E2BCC14();
    sub_29E2BCBD4();
    v23(v12, v9);
    v25 = v41;
    sub_29E2BEBA4();
    sub_29E27C5E4(0, &unk_2A1819BC0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
    v26 = *(v4 + 72);
    v27 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_29E2CD7A0;
    v29 = v28 + v27;
    v30 = *(v4 + 16);
    v32 = v43;
    v31 = v44;
    v30(v29, v43, v44);
    v30(v29 + v26, v25, v31);
    sub_29E2BEC74();

    v33 = *(v4 + 8);
    v33(v25, v31);
    v33(v32, v31);
  }

  else
  {
    sub_29E27C5E4(0, &unk_2A1819BC0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
    v34 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_29E2CAB20;
    v36 = v8;
    v37 = v44;
    (*(v4 + 16))(v35 + v34, v36, v44);
    sub_29E2BEC74();

    (*(v4 + 8))(v16, v37);
  }

  return v17;
}

uint64_t sub_29E27A410@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_29E2BCC24();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 2u)
  {
    sub_29E27C57C(0, &unk_2A181B3C0, &qword_2A1819BD0, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_29E2CAB20;
    sub_29E2BCC14();
    v11 = sub_29E2BCBD4();
    v13 = v12;
    v14 = *(v7 + 8);
    v14(v9, v6);
    *(v10 + 56) = &type metadata for OnboardingSelectRow;
    *(v10 + 64) = sub_29DF07FEC();
    v15 = swift_allocObject();
    *(v10 + 32) = v15;
    *(v15 + 16) = 0x43676E6967676F6CLL;
    *(v15 + 24) = 0xEB000000006C6C65;
    *(v15 + 32) = v11;
    *(v15 + 40) = v13;
    *(v15 + 48) = 0;
    *(v15 + 49) = a1;
    *(v15 + 50) = 0;
    v16 = sub_29E27C288(a1);
    v17 = sub_29E13D98C(v16);

    v40 = v10;
    sub_29DFCBBB0(v17);
LABEL_6:
    sub_29E2BCC14();
    sub_29E2BCBD4();
    v14(v9, v6);
    return sub_29E2BEBA4();
  }

  if (a1 != 2)
  {
    sub_29E27C57C(0, &unk_2A181B3C0, &qword_2A1819BD0, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_29E2CAB20;
    sub_29E2BCC14();
    v34 = sub_29E2BCBD4();
    v36 = v35;
    v14 = *(v7 + 8);
    v14(v9, v6);
    *(v33 + 56) = &type metadata for OnboardingSelectRow;
    *(v33 + 64) = sub_29DF07FEC();
    v37 = swift_allocObject();
    *(v33 + 32) = v37;
    *(v37 + 16) = 0x43676E6967676F6CLL;
    *(v37 + 24) = 0xEB000000006C6C65;
    *(v37 + 32) = v34;
    *(v37 + 40) = v36;
    *(v37 + 48) = 768;
    *(v37 + 50) = 0;
    goto LABEL_6;
  }

  sub_29E27C57C(0, &unk_2A181B3C0, &qword_2A1819BD0, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29E2CD7A0;
  sub_29E2BCC14();
  v19 = sub_29E2BCBD4();
  v21 = v20;
  v22 = *(v7 + 8);
  v22(v9, v6);
  *(v18 + 56) = &type metadata for OnboardingSelectRow;
  *(v18 + 64) = sub_29DF07FEC();
  v23 = swift_allocObject();
  *(v18 + 32) = v23;
  *(v23 + 16) = 0x43676E6967676F6CLL;
  *(v23 + 24) = 0xEB000000006C6C65;
  *(v23 + 32) = v19;
  *(v23 + 40) = v21;
  *(v23 + 48) = a2 & 1;
  *(v23 + 49) = 2;
  v24 = [objc_allocWithZone(type metadata accessor for ManualEntryItem()) init];
  sub_29E2BCC14();
  v25 = sub_29E2BCBD4();
  v27 = v26;
  v22(v9, v6);
  type metadata accessor for ManualEntryContraceptiveTypeDataSource();
  v28 = swift_allocObject();
  v39[1] = a3;
  v29 = v28;
  *(v28 + 24) = 0;
  swift_unknownObjectWeakInit();
  v29[5] = 0;
  v29[6] = 0;
  v29[3] = &off_2A24C15E8;
  v29[4] = 0;
  swift_unknownObjectWeakAssign();
  *(v18 + 96) = &type metadata for OnboardingTypeRow;
  *(v18 + 104) = sub_29DF081EC();
  v30 = swift_allocObject();
  *(v18 + 72) = v30;
  *(v30 + 16) = 0;
  *(v30 + 17) = *v41;
  *(v30 + 20) = *&v41[3];
  *(v30 + 24) = v25;
  *(v30 + 32) = v27;
  *(v30 + 40) = 8;
  *(v30 + 48) = v29;
  *(v30 + 56) = v24;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0xE000000000000000;
  v31 = sub_29E27C288(2);
  v32 = sub_29E13D98C(v31);

  v40 = v18;
  sub_29DFCBBB0(v32);
  sub_29E2BCC14();
  sub_29E2BCBD4();
  v22(v9, v6);
  return sub_29E2BEBA4();
}

uint64_t sub_29E27A924@<X0>(char a1@<W0>, void *a2@<X8>)
{
  sub_29E2BE764();
  sub_29DEB1BC4(0, &qword_2A1819BD0);
  sub_29DEB1BC4(0, &qword_2A181DE08);
  if (swift_dynamicCast())
  {
    sub_29DE8EE78(v11, a2);
    v4 = a2[3];
    v5 = a2[4];
    sub_29DEF61C0(a2, v4);
    (*(v5 + 24))(a1 & 1, v4, v5);
    v6 = a2[3];
    v7 = a2[4];
    v8 = sub_29DE966D4(a2, v6);
    v13[3] = v6;
    v13[4] = *(*(*(v7 + 8) + 8) + 8);
    v9 = sub_29DEBB7E8(v13);
    (*(*(v6 - 8) + 16))(v9, v8, v6);
    sub_29E2BED04();
    return sub_29DE93B3C(v13);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_29E27C6F4(v11, &qword_2A18208F0, &qword_2A181DE08, &protocol descriptor for PickerDisplayRow);
    result = sub_29E2C4724();
    __break(1u);
  }

  return result;
}

void *sub_29E27AB2C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v27 = a2;
  v3 = sub_29E2BCC24();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v6 = a1[4];
  sub_29DE966D4(a1, v7);
  v8 = *(v6 + 24);
  v9 = v8(v7, v6);
  sub_29DE966D4(a1, a1[3]);
  v10 = sub_29E2BDE64();
  v12 = v11;
  if (v9 == 5)
  {
    sub_29E2BCC14();
    v13 = sub_29E2BCBD4();
    v15 = v14;
    (*(v25 + 8))(v5, v26);
    v16 = v27;
    v27[3] = &type metadata for OnboardingTypePicker;
    v16[4] = sub_29DF08658();
    result = swift_allocObject();
    *v16 = result;
    result[2] = v13;
    result[3] = v15;
    result[4] = v10;
    result[5] = v12;
  }

  else
  {
    v18 = v8(v7, v6);
    sub_29E2BCC14();
    v19 = sub_29E2BCBD4();
    v21 = v20;
    (*(v25 + 8))(v5, v26);
    v22 = v27;
    v27[3] = &type metadata for OnboardingDatePickerRow;
    v22[4] = sub_29DF085DC();
    v23 = swift_allocObject();
    *v22 = v23;
    strcpy((v23 + 24), "datePickerCell");
    *(v23 + 39) = -18;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    *(v23 + 72) = 4;
    *(v23 + 120) = 0;
    swift_unknownObjectWeakInit();
    *(v23 + 80) = v19;
    *(v23 + 88) = v21;
    *(v23 + 40) = v19;
    *(v23 + 48) = v21;
    *(v23 + 96) = v10;
    *(v23 + 104) = v12;
    *(v23 + 16) = v18;
    *(v23 + 120) = &off_2A24C1608;
    swift_unknownObjectWeakAssign();
    return sub_29E2BF404();
  }

  return result;
}

void sub_29E27ADB8(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 3)
  {
    if (*(v1 + qword_2A18208D8) <= 2u)
    {
LABEL_9:

LABEL_13:
      JUMPOUT(0x29ED79720);
    }
  }

  else if (v2 == 2 && *(v1 + qword_2A18208D8) <= 2u)
  {
    goto LABEL_9;
  }

  sub_29E2C4724();
  __break(1u);
  goto LABEL_13;
}

uint64_t sub_29E27AF08(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v3 = sub_29E2BEBB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + qword_2A18208D8) != 2)
  {
    return 0;
  }

  result = sub_29E2BEC64();
  v8 = result;
  v30 = *(result + 16);
  if (!v30)
  {
LABEL_14:

    return 0;
  }

  v9 = 0;
  v10 = 0;
  v29 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v27 = (v4 + 8);
  v28 = v4 + 16;
  v25 = v4;
  v26 = v3;
  v23 = result;
  v24 = v6;
  while (v9 < *(v8 + 16))
  {
    v33 = v10;
    (*(v4 + 16))(v6, v29 + *(v4 + 72) * v9, v3);
    v11 = sub_29E2BEB94();
    v12 = *(v11 + 16);
    if (v12)
    {
      v35 = MEMORY[0x29EDCA190];
      sub_29E1811FC(0, v12, 0);
      v13 = v35;
      v14 = v11 + 32;
      do
      {
        sub_29DE9DC34(v14, v34);
        sub_29DE966D4(v34, v34[3]);
        v15 = sub_29E2BDE64();
        v17 = v16;
        sub_29DE93B3C(v34);
        v35 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_29E1811FC((v18 > 1), v19 + 1, 1);
          v13 = v35;
        }

        *(v13 + 16) = v19 + 1;
        v20 = v13 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
        v14 += 40;
        --v12;
      }

      while (v12);

      v4 = v25;
      v3 = v26;
      v8 = v23;
      v6 = v24;
    }

    else
    {

      v13 = MEMORY[0x29EDCA190];
    }

    v34[0] = v31;
    v34[1] = v32;
    MEMORY[0x2A1C7C4A8](v21);
    *(&v23 - 2) = v34;
    v10 = v33;
    v22 = sub_29E13E570(sub_29E27C55C, (&v23 - 4), v13);

    result = (*v27)(v6, v3);
    if (v22)
    {

      return v9;
    }

    if (++v9 == v30)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E27B234()
{
  sub_29E2BED44();

  return swift_deallocClassInstance();
}

uint64_t sub_29E27B26C(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  started = type metadata accessor for OnboardingStartDateRow(0);
  MEMORY[0x2A1C7C4A8](started);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v29 - v10;
  result = sub_29E27AF08(*(a1 + 24), *(a1 + 32));
  if ((v13 & 1) == 0)
  {
    v14 = result;
    sub_29E27ADB8(a1);
    sub_29E2BE764();
    sub_29DEB1BC4(0, &qword_2A1819BD0);
    sub_29DEB1BC4(0, &qword_2A18191B0);
    if (swift_dynamicCast())
    {
      v29 = v7;
      v30 = v6;
      sub_29DE8EE78(&v36, v39);
      v15 = v40;
      v16 = v41;
      sub_29DEF61C0(v39, v40);
      (*(v16 + 32))(v32, v15, v16);
      sub_29DE9DC34(v39, v33);
      if (swift_dynamicCast())
      {
        sub_29DF3BD0C(v5, type metadata accessor for OnboardingStartDateRow);
        sub_29E27B6F0(v32, v14);
      }

      result = sub_29E2BCF64();
      v17 = result + 1;
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v18 = sub_29E2BCFA4();
        v19 = v31;
        MEMORY[0x29ED79720](v17, v18);
        sub_29E15C9A8(a1, v33);
        sub_29DE966D4(v39, v40);
        v20 = sub_29E2BDE64();
        v22 = v21;

        v34 = v20;
        v35 = v22;
        v23 = v40;
        v24 = v41;
        v25 = sub_29DE966D4(v39, v40);
        *(&v37 + 1) = v23;
        v38 = *(*(*(*(v24 + 8) + 8) + 8) + 8);
        v26 = sub_29DEBB7E8(&v36);
        (*(*(v23 - 8) + 16))(v26, v25, v23);
        sub_29E2BED04();
        sub_29DE93B3C(&v36);
        *(&v37 + 1) = &type metadata for OnboardingDatePickerRow;
        v38 = sub_29DF0886C();
        *&v36 = swift_allocObject();
        sub_29E15C9A8(v33, v36 + 16);
        sub_29E2BED04();
        v27 = *(v29 + 8);
        v28 = v30;
        v27(v19, v30);
        v27(v11, v28);
        sub_29DF3BBFC(v33);
        sub_29DE93B3C(&v36);
        return sub_29DE93B3C(v39);
      }
    }

    else
    {
      (*(v7 + 8))(v11, v6);
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      return sub_29E27C6F4(&v36, &qword_2A18191A8, &qword_2A18191B0, &protocol descriptor for DateRow);
    }
  }

  return result;
}

uint64_t sub_29E27B6F0(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  sub_29E27C5E4(0, &qword_2A18191A0, type metadata accessor for OnboardingEndDateRow, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for OnboardingEndDateRow(0);
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BCFB4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E2BE6D4();
  v15 = __OFSUB__(v14, 1);
  result = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x29ED79720](result, a2);
    sub_29E2BE764();
    sub_29DEB1BC4(0, &qword_2A1819BD0);
    v17 = swift_dynamicCast();
    v18 = *(v7 + 56);
    if (v17)
    {
      v26 = v10;
      v18(v5, 0, 1, v6);
      sub_29E15BB20(v5, v9, type metadata accessor for OnboardingEndDateRow);
      v19 = *(v6 + 32);
      v20 = sub_29E2BCBB4();
      v21 = *(*(v20 - 8) + 24);
      v22 = v27;
      v21(&v9[v19], v27, v20);
      v23 = *(v6 + 28);
      if (sub_29E2BCB14())
      {
        v21(&v9[v23], v22, v20);
      }

      v28[3] = v6;
      v28[4] = sub_29E27C6AC(&qword_2A1818CC0, type metadata accessor for OnboardingEndDateRow);
      v24 = sub_29DEBB7E8(v28);
      sub_29E27C648(v9, v24);
      sub_29E2BED04();
      (*(v11 + 8))(v13, v26);
      sub_29DE93B3C(v28);
      return sub_29DF3BD0C(v9, type metadata accessor for OnboardingEndDateRow);
    }

    else
    {
      v18(v5, 1, 1, v6);
      (*(v11 + 8))(v13, v10);
      return sub_29E27C764(v5, &qword_2A18191A0, type metadata accessor for OnboardingEndDateRow);
    }
  }

  return result;
}

uint64_t sub_29E27BAE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2BCBB4();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OnboardingEndDateRow(0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BCFB4();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v30 - v14;
  v16 = sub_29DF06ABC();
  v18 = sub_29E27AF08(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    v22 = *(v2 + qword_2A18208D8);
    if (v22 >= 2)
    {
      if (v22 != 2)
      {
        goto LABEL_10;
      }

      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    MEMORY[0x29ED79720](v23, v18);
    sub_29E27C648(a1, v9);
    sub_29E2BCA84();
    (*(v33 + 40))(&v9[*(v7 + 28)], v6, v34);
    v9[16] = 0;
    v24 = sub_29E2BCF64();
    v25 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      v26 = sub_29E2BCFA4();
      MEMORY[0x29ED79720](v25, v26);
      v35[3] = v7;
      v35[4] = sub_29E27C6AC(&qword_2A1818CC0, type metadata accessor for OnboardingEndDateRow);
      v27 = sub_29DEBB7E8(v35);
      sub_29E27C648(v9, v27);
      sub_29E2BED04();
      sub_29DE93B3C(v35);
      sub_29E2BEC14();
      v28 = v32;
      v29 = *(v31 + 8);
      v29(v12, v32);
      v29(v15, v28);
      return sub_29DF3BD0C(v9, type metadata accessor for OnboardingEndDateRow);
    }

    __break(1u);
LABEL_10:
    result = sub_29E2C4724();
    __break(1u);
  }

  return result;
}

void sub_29E27BE58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v32 - v10;
  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = *(a1 + 32);
    sub_29E2BF404();
    v14 = sub_29E27AF08(v13, v12);
    v16 = v15;

    if ((v16 & 1) == 0 && *(v3 + qword_2A18208D8) == 2)
    {
      MEMORY[0x29ED79720](1, v14);
      v17 = sub_29E2BCF64();
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
      }

      else
      {
        v19 = sub_29E2BCFA4();
        MEMORY[0x29ED79720](v18, v19);
        sub_29E2BE764();
        sub_29DEB1BC4(0, &qword_2A1819BD0);
        if (swift_dynamicCast())
        {
          v35 = v53;
          v59 = v52;
          v56 = v54;
          v57 = v55;
          v58 = v51;
          sub_29E2BE764();
          if (swift_dynamicCast())
          {
            v34 = v50;
            v35 = v49;

            v60 = v58;
            v20 = v36;
            v61 = v59;
            v62 = v36;
            v63 = v56;
            v64 = v57;
            v21 = sub_29DF072F8();
            v32 = v22;
            v33 = v21;
            v40 = v58;
            *&v41 = v59;
            *(&v41 + 1) = v20;
            v42 = v56;
            v43 = v57;
            v38 = &type metadata for OnboardingTypeRow;
            v39 = sub_29DF081EC();
            v23 = swift_allocObject();
            v37[0] = v23;
            v24 = v41;
            v23[1] = v40;
            v23[2] = v24;
            v25 = v43;
            v23[3] = v42;
            v23[4] = v25;
            sub_29E15BC94(&v40, &v44);
            sub_29E2BED04();
            sub_29DE93B3C(v37);
            v38 = &type metadata for OnboardingTypePicker;
            v39 = sub_29DF08814();
            v26 = swift_allocObject();
            v37[0] = v26;
            v27 = v34;
            v26[2] = v35;
            v26[3] = v27;
            v28 = v32;
            v26[4] = v33;
            v26[5] = v28;
            sub_29E2BED04();
            v29 = *(v6 + 8);
            v29(v8, v5);
            v29(v11, v5);
            v44 = v58;
            v45 = v59;
            v46 = v20;
            v47 = v56;
            v48 = v57;
            sub_29DF3BBA8(&v44);
            sub_29DE93B3C(v37);
          }

          else
          {
            v31 = *(v6 + 8);
            v31(v8, v5);
            v31(v11, v5);
            v60 = v58;
            v61 = v59;
            v62 = v35;
            v63 = v56;
            v64 = v57;
            sub_29DF3BBA8(&v60);
          }
        }

        else
        {
          v30 = *(v6 + 8);
          v30(v8, v5);
          v30(v11, v5);
        }
      }
    }
  }
}

uint64_t sub_29E27C288(char a1)
{
  v2 = sub_29E2BCC24();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OnboardingEndDateRow(0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCA84();
  sub_29E2BCBA4();
  sub_29E2BCC14();
  v9 = sub_29E2BCBD4();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v5, v2);
  *(v8 + 1) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 3) = v9;
  *(v8 + 4) = v11;
  v8[16] = 0;
  *(v8 + 1) = &off_2A24C15F8;
  swift_unknownObjectWeakAssign();
  sub_29E27C57C(0, &qword_2A181CC78, &qword_2A181CC80, MEMORY[0x29EDC1910], MEMORY[0x29EDC9E90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29E2CD7A0;
  sub_29E2BCC14();
  v14 = sub_29E2BCBD4();
  v16 = v15;
  v12(v5, v2);
  started = type metadata accessor for OnboardingStartDateRow(0);
  *(v13 + 56) = started;
  *(v13 + 64) = sub_29E27C6AC(&qword_2A1818C40, type metadata accessor for OnboardingStartDateRow);
  v18 = sub_29DEBB7E8((v13 + 32));
  sub_29E2BCBA4();
  v18[1] = v14;
  v18[2] = v16;
  *v18 = 0;
  *(v18 + *(started + 32)) = 1;
  *(v18 + 1) = a1;
  *(v13 + 96) = v6;
  *(v13 + 104) = sub_29E27C6AC(&qword_2A1818C28, type metadata accessor for OnboardingEndDateRow);
  v19 = sub_29DEBB7E8((v13 + 72));
  sub_29E15BB20(v8, v19, type metadata accessor for OnboardingEndDateRow);
  return v13;
}

void sub_29E27C57C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29DEB1BC4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29E27C5E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E27C648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingEndDateRow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E27C6AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E27C6F4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_29E27C57C(0, a2, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29E27C764(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E27C5E4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_29E27C898()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_prepareLayout);
  v1 = &v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_configuration];
  [v0 setItemSize_];
  result = [v0 itemSize];
  v3 = 0.0;
  if (v4 > 0.0)
  {
    v5 = v1[3];
    result = [v0 itemSize];
    v3 = 0.1 - v5 / v6;
  }

  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_xScaleFactor] = v3;
  return result;
}

void sub_29E27C9A0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_29E2C0514();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v15 = v5;
  v16 = sub_29E2C0504();
  v17 = sub_29E2C3A04();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v73 = ObjectType;
    v19 = v18;
    v20 = swift_slowAlloc();
    v79 = v20;
    *v19 = 136446466;
    v74 = swift_getObjectType();
    sub_29E27D268();
    v21 = sub_29E2C3424();
    v23 = sub_29DFAA104(v21, v22, &v79);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v74 = *&a1;
    v75 = a2;
    v76 = a3;
    v77 = a4;
    type metadata accessor for CGRect(0);
    v24 = sub_29E2C3424();
    v26 = sub_29DFAA104(v24, v25, &v79);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_29DE74000, v16, v17, "[%{public}s] Layout attributes for elements  %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v20, -1, -1);
    v27 = v19;
    ObjectType = v73;
    MEMORY[0x29ED82140](v27, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v28 = [v15 collectionView];
  if (v28)
  {
    v29 = v28;
    v80.receiver = v15;
    v80.super_class = ObjectType;
    v30 = objc_msgSendSuper2(&v80, sel_layoutAttributesForElementsInRect_, a1, a2, a3, a4);
    if (!v30)
    {

      return;
    }

    v31 = v30;
    v32 = sub_29DF76F98();
    v33 = sub_29E2C3614();

    v79 = MEMORY[0x29EDCA190];
    if (v33 >> 62)
    {
LABEL_25:
      v34 = sub_29E2C4484();
      v71 = v29;
      v72 = v15;
      if (v34)
      {
LABEL_7:
        v35 = 0;
        v29 = (v33 & 0xC000000000000001);
        v73 = MEMORY[0x29EDCA190];
        v15 = MEMORY[0x29EDCA178];
        do
        {
          v36 = v35;
          while (1)
          {
            if (v29)
            {
              v37 = MEMORY[0x29ED80D70](v36, v33);
            }

            else
            {
              if (v36 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_24;
              }

              v37 = *(v33 + 8 * v36 + 32);
            }

            v38 = v37;
            v35 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              __break(1u);
LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

            [v37 copy];
            sub_29E2C43D4();
            swift_unknownObjectRelease();

            type metadata accessor for LoggingCardCarouselLayoutAttributes();
            if (swift_dynamicCast())
            {
              if (v78)
              {
                break;
              }
            }

            ++v36;
            if (v35 == v34)
            {
              goto LABEL_27;
            }
          }

          MEMORY[0x29ED7FDC0]();
          if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_29E2C3644();
          }

          sub_29E2C3674();
          v73 = v79;
        }

        while (v35 != v34);
LABEL_27:
        v69 = v32;

        [v72 itemSize];
        v40 = v39;
        v41 = v71;
        v42 = [v41 effectiveUserInterfaceLayoutDirection];
        [v41 contentOffset];
        v44 = v43;
        [v41 bounds];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v71 = v41;

        v81.origin.x = v46;
        v81.origin.y = v48;
        v81.size.width = v50;
        v81.size.height = v52;
        Width = CGRectGetWidth(v81);
        v70 = v73 >> 62;
        if (v73 >> 62)
        {
          v67 = Width;
          v68 = sub_29E2C4484();
          Width = v67;
          v54 = v68;
          if (v68)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v54 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v54)
          {
LABEL_29:
            if (v54 < 1)
            {
              __break(1u);
              return;
            }

            v55 = 0;
            v56 = v44 + Width * 0.5;
            v57 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_xScaleFactor;
            v58 = v73 & 0xC000000000000001;
            do
            {
              if (v58)
              {
                v59 = MEMORY[0x29ED80D70](v55, v73);
              }

              else
              {
                v59 = *(v73 + 8 * v55 + 32);
              }

              v60 = v59;
              ++v55;
              [v59 center];
              v62 = v56 - v61;
              v63 = v40 - vabdd_f64(v56, v61);
              if (v63 < 0.0)
              {
                v63 = 0.0;
              }

              v64 = 1.0 - cos(v63 / v40 * 3.14159265);
              v65 = -v62;
              if (v42 != 1)
              {
                v65 = v62;
              }

              *&v60[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_xTranslationFactor] = *&v72[v57] * (v65 / v40);
              v66 = v64 * 0.5;
              *&v60[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_zoomLevel] = v66 * 0.15 + 0.85;
              *&v60[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_alphaValue] = v66 * 0.1 + 0.9;
            }

            while (v54 != v55);
          }
        }

        if (v70)
        {
          sub_29E2BF404();
          sub_29E2C4744();

          swift_bridgeObjectRelease_n();
        }

        else
        {
          sub_29E2BF404();
          sub_29E2C4924();
        }

        return;
      }
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v71 = v29;
      v72 = v15;
      if (v34)
      {
        goto LABEL_7;
      }
    }

    v73 = MEMORY[0x29EDCA190];
    goto LABEL_27;
  }
}

unint64_t sub_29E27D268()
{
  result = qword_2A1820918;
  if (!qword_2A1820918)
  {
    type metadata accessor for LoggingCardCarouselCollectionViewFlowLayout();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1820918);
  }

  return result;
}

uint64_t sub_29E27D400()
{
  v1 = v0;
  swift_getObjectType();
  v2 = objc_opt_self();
  v3 = [v2 systemBackgroundColor];
  [v1 setBackgroundColor_];

  v4 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFilterSectionHeaderReusableView_sectionHeaderLabel];
  sub_29DE9408C(0, &unk_2A1A61A00);
  v5 = sub_29E2C3FD4();
  [v4 setFont_];

  v6 = [v2 secondaryLabelColor];
  [v4 setTextColor_];

  [v4 setNumberOfLines_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  sub_29DE99B54();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E2CE070;
  v8 = [v4 topAnchor];
  v9 = [v1 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:10.0];

  *(v7 + 32) = v10;
  v11 = [v4 leadingAnchor];
  v12 = [v1 layoutMarginsGuide];
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v7 + 40) = v14;
  v15 = [v1 bottomAnchor];
  v16 = [v4 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:10.0];

  *(v7 + 48) = v17;
  v18 = [v1 trailingAnchor];
  v19 = [v4 trailingAnchor];
  v20 = [v18 constraintGreaterThanOrEqualToAnchor_];

  *(v7 + 56) = v20;
  v21 = objc_opt_self();
  sub_29DE9408C(0, &qword_2A1A61A10);
  v22 = sub_29E2C3604();

  [v21 activateConstraints_];

  sub_29DEAC750();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29E2CAB20;
  v24 = sub_29E2C0B54();
  v25 = MEMORY[0x29EDC7870];
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  sub_29E2C4034();
  swift_unknownObjectRelease();
}

id sub_29E27D7FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleHistoryFilterSectionHeaderReusableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E27D8A4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFilterSectionHeaderReusableView_sectionHeaderLabel);
  sub_29DE9408C(0, &unk_2A1A61A00);
  v2 = sub_29E2C3FD4();
  [v1 setFont_];
}

void (*sub_29E27D94C(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = sub_29E27DBA8();
  v4 = sub_29E2BFAD4();

  *a1 = v4;
  return sub_29E27D9AC;
}

void sub_29E27D9AC(uint64_t a1, char a2)
{
  v5 = *(*(a1 + 8) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33MenstrualCyclesOnboardingItemCell____lazy_storage___hostView);
  if (a2)
  {
    v2 = *a1;
    v3 = v5;
    sub_29E2BFAE4();
  }

  else
  {
    v4 = v5;
    sub_29E2BFAE4();
  }
}

void sub_29E27DA3C()
{
  v1 = v0;
  v2 = sub_29E27DBA8();
  v6 = sub_29E2BFAF4();

  if (v6)
  {
  }

  else
  {
    v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33MenstrualCyclesOnboardingItemCell_item;
    swift_beginAccess();
    sub_29DEC3518(&v1[v3], v7);
    if (v8)
    {
      sub_29DF61DEC();
      type metadata accessor for MenstrualCyclesOnboardingItem();
      if (swift_dynamicCast())
      {
        sub_29E2BE5C4();
        sub_29E2BE584();
        v4 = sub_29E2C33A4();

        [v1 setAccessibilityIdentifier_];

        v5 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33MenstrualCyclesOnboardingItemCell____lazy_storage___hostView];
        sub_29DF27958();
        sub_29E2BFB04();
      }
    }

    else
    {
      sub_29DF61E50(v7);
    }
  }
}

id sub_29E27DBA8()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33MenstrualCyclesOnboardingItemCell____lazy_storage___hostView;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33MenstrualCyclesOnboardingItemCell____lazy_storage___hostView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33MenstrualCyclesOnboardingItemCell____lazy_storage___hostView);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_29E2BFB14()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_29E27DC2C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = sub_29E2C0514();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33MenstrualCyclesOnboardingItemCell_item];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33MenstrualCyclesOnboardingItemCell____lazy_storage___hostView] = 0;
  v15 = type metadata accessor for MenstrualCyclesOnboardingItemCell();
  v32.receiver = v5;
  v32.super_class = v15;
  v16 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29E2C04B4();
  v17 = sub_29E2C0504();
  v18 = sub_29E2C3A34();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136446210;
    v21 = sub_29E2C4AE4();
    v23 = sub_29DFAA104(v21, v22, &v31);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_29DE74000, v17, v18, "[%{public}s] Initializing", v19, 0xCu);
    sub_29DE93B3C(v20);
    MEMORY[0x29ED82140](v20, -1, -1);
    MEMORY[0x29ED82140](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v24 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v16 setBackgroundColor_];

  v25 = [v16 contentView];
  v26 = sub_29E27DBA8();
  [v25 addSubview_];

  v27 = *&v16[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33MenstrualCyclesOnboardingItemCell____lazy_storage___hostView];
  v28 = [v16 contentView];
  MEMORY[0x29ED807E0]();

  return v16;
}

id sub_29E27DFD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesOnboardingItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E27E07C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33MenstrualCyclesOnboardingItemCell_item;
  swift_beginAccess();
  return sub_29DEC3518(v1 + v3, a1);
}

uint64_t sub_29E27E0D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33MenstrualCyclesOnboardingItemCell_item;
  swift_beginAccess();
  sub_29DEC3690(a1, v1 + v3);
  swift_endAccess();
  sub_29E27DA3C();
  return sub_29DF61E50(a1);
}

void (*sub_29E27E140(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29E27E1A4;
}

void sub_29E27E1A4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_29E27DA3C();
  }
}

uint64_t sub_29E27E1D8()
{
  v0 = sub_29E27DBA8();
  v1 = sub_29E2BFAD4();

  return v1;
}

void sub_29E27E20C()
{
  v0 = sub_29E27DBA8();
  sub_29E2BFAE4();
}

void (*sub_29E27E260(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29E27D94C(v2);
  return sub_29DF61DA4;
}

uint64_t sub_29E27E404()
{
  v1 = v0;
  swift_getObjectType();
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v1 setBackgroundColor_];

  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21HistoryListHeaderView_headerLabel;
  v5 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21HistoryListHeaderView_headerLabel];
  v6 = [v2 labelColor];
  [v5 setTextColor_];

  [*&v1[v4] setNumberOfLines_];
  v7 = *&v1[v4];
  v8 = [v2 clearColor];
  [v7 setBackgroundColor_];

  v9 = *&v1[v4];
  sub_29DE9408C(0, &unk_2A1A61A00);
  v10 = v9;
  v11 = sub_29E2C3FD4();
  [v10 setFont_];

  [*&v1[v4] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29E2C3E74();
  [v1 setDirectionalLayoutMargins_];
  [v1 addSubview_];
  sub_29DE99B54();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E2CE070;
  v13 = [*&v1[v4] leadingAnchor];
  v14 = [v1 layoutMarginsGuide];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v12 + 32) = v16;
  v17 = [*&v1[v4] topAnchor];
  v18 = [v1 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:24.0];

  *(v12 + 40) = v19;
  v20 = [v1 bottomAnchor];
  v21 = [*&v1[v4] bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:8.0];

  *(v12 + 48) = v22;
  v23 = [v1 layoutMarginsGuide];
  v24 = [v23 trailingAnchor];

  v25 = [*&v1[v4] trailingAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v12 + 56) = v26;
  v27 = objc_opt_self();
  sub_29DE9408C(0, &qword_2A1A61A10);
  v28 = sub_29E2C3604();

  [v27 activateConstraints_];

  v29 = [*&v1[v4] widthAnchor];
  v30 = [v29 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v31) = 1148846080;
  [v30 setPriority_];
  [v30 setActive_];
  sub_29DEAC750();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_29E2CAB20;
  v33 = sub_29E2C0B54();
  v34 = MEMORY[0x29EDC7870];
  *(v32 + 32) = v33;
  *(v32 + 40) = v34;
  sub_29E2C4034();

  swift_unknownObjectRelease();
}

id sub_29E27E900()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryListHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E27E968(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21HistoryListHeaderView_headerLabel);
  sub_29DE9408C(0, &unk_2A1A61A00);
  v2 = v1;
  v3 = sub_29E2C3FD4();
  [v2 setFont_];
}

void sub_29E27EA20(int a1, unsigned __int8 a2)
{
  v4 = a1;
  sub_29E28009C(a1, ((a2 != 2) ^ a2) & 1);
  if (v4 > 6u)
  {
    if (v4 <= 9u)
    {
      if (v4 == 7)
      {
        *(v2 + 48) = a2 & 1;
      }

      else if (v4 != 8)
      {
        *(v2 + 51) = a2 & 1;
      }

      goto LABEL_21;
    }

    if (v4 - 11 >= 2)
    {
      if (v4 == 10)
      {
        v5 = swift_allocObject();
        swift_weakInit();
        v6 = swift_allocObject();
        *(v6 + 16) = v5;
        *(v6 + 24) = 10;

        sub_29E280BFC(a2 & 1, sub_29E289304, v6);
LABEL_15:

        return;
      }

      sub_29E280EC8();
    }
  }

  else if (v4 > 2u)
  {
    if (v4 <= 4u)
    {
      if (v4 == 3)
      {
        sub_29E2811D8();
      }

      goto LABEL_21;
    }

    if (v4 == 5)
    {
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = 5;

      sub_29E280804(a2 & 1, sub_29E28A6EC, v8);
      goto LABEL_15;
    }

    *(v2 + 24) = a2 & 1;
  }

LABEL_21:
  sub_29E281560(v4);
  if (v9)
  {
    v11 = v9;
    v12 = v10;
    [*(v2 + 360) showViewController:v9 sender:v2];

    v13 = *(v2 + 432);
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v12 = 14;
    v13 = *(v2 + 432);
    if (!v13)
    {
      return;
    }
  }

  v13(v12);

  sub_29DE8EF50(v13);
}

id sub_29E27EC80(int a1, char a2)
{
  if (a2)
  {
    v3 = v2[52];
    if (v3)
    {
      v4 = a1;

      v3(v5);
      sub_29DE8EF50(v3);
      a1 = v4;
    }
  }

  if (a1 != 14)
  {
    sub_29E28009C(a1, 2);
  }

  v6 = v2[50];
  if (v6)
  {

    v6(v7);
    sub_29DE8EF50(v6);
    v8 = v2[50];
    v2[50] = 0;
    v2[51] = 0;

    return sub_29DE8EF50(v8);
  }

  else
  {
    v10 = v2[45];

    return [v10 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_29E27ED68(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_29DE966D4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29DE96670();
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x2A1C73CE0](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x2A1C73CD8](v5);
  }
}

uint64_t sub_29E27EE28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29E28A1A4(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__estimatedDueDate;
  swift_beginAccess();
  v5 = sub_29E2BCBB4();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_29E27EF20(uint64_t a1)
{
  v2 = sub_29E2BCBB4();
  v3 = MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_29E0430F4(v5);
}

uint64_t sub_29E27EFEC(void *a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  *(v2 + 353) = a2;
  v6 = objc_allocWithZone(type metadata accessor for PregnancyOnboardingIntroductionViewController());

  v8 = sub_29E206118(v7);
  v9 = v3[45];
  sub_29E28A66C(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29E2CE220;
  *(v10 + 32) = v8;
  sub_29DE9408C(0, &qword_2A1820CC0);
  v11 = v9;
  v12 = v8;
  v13 = sub_29E2C3604();

  [v11 setViewControllers:v13 animated:0];

  [a1 presentViewController:v3[45] animated:1 completion:0];
  v14 = v3[47];
  type metadata accessor for RoomInteractionEvent();
  v15 = swift_allocObject();
  *(v15 + 16) = 0xD00000000000002ALL;
  *(v15 + 24) = 0x800000029E2EEF80;
  *(v15 + 32) = 3336;
  *(v15 + 34) = 2;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  *(v15 + 56) = v14;
  v16 = v3[49];
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  v20[4] = sub_29E2892E0;
  v20[5] = v17;
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 1107296256;
  v20[2] = sub_29DFE9648;
  v20[3] = &unk_2A24C18A0;
  v18 = _Block_copy(v20);
  swift_unknownObjectRetain();

  [v16 submitEvent:v15 completion:v18];
  _Block_release(v18);
}

void sub_29E27F270(void *a1)
{
  v2 = v1;
  v36 = a1;
  v3 = *v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCBB4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v34 - v13;
  v15 = objc_allocWithZone(type metadata accessor for PregnancyOnboardingCustomizeHealthViewController());

  v37 = sub_29E10186C(v16);
  if (*(v1 + 72))
  {
    if (*(v1 + 72) == 3)
    {
      v17 = *(v1 + 56);

      v18 = [v17 startDate];
      sub_29E2BCB44();

      sub_29E0439B0(v14);
    }

    goto LABEL_6;
  }

  v34 = v4;
  v35 = v5;
  v19 = [*(v1 + 64) pregnancyStartDate];
  if (v19)
  {
    v20 = v19;
    sub_29E2BCB44();

    (*(v9 + 16))(v14, v11, v8);

    sub_29E0439B0(v14);

    (*(v9 + 8))(v11, v8);
LABEL_6:
    v21 = *(v2 + 360);
    sub_29E28A66C(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_29E2CE220;
    v23 = v37;
    *(v22 + 32) = v37;
    sub_29DE9408C(0, &qword_2A1820CC0);
    v24 = v21;
    v25 = v23;
    v26 = sub_29E2C3604();

    [v24 setViewControllers:v26 animated:0];

    [v36 presentViewController:*(v2 + 360) animated:1 completion:0];
    return;
  }

  sub_29E2C04B4();
  v27 = sub_29E2C0504();
  v28 = sub_29E2C3A14();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38[0] = v30;
    v38[1] = v3;
    *v29 = 136315138;
    swift_getMetatypeMetadata();
    v31 = sub_29E2C3464();
    v33 = sub_29DFAA104(v31, v32, v38);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_29DE74000, v27, v28, "[%s] Started review adjusted features flow but no start date available on the model.", v29, 0xCu);
    sub_29DE93B3C(v30);
    MEMORY[0x29ED82140](v30, -1, -1);
    MEMORY[0x29ED82140](v29, -1, -1);
  }

  else
  {
  }

  (*(v35 + 8))(v7, v34);
}

uint64_t sub_29E27F6E4(uint64_t a1, int a2, void *a3)
{
  v5 = sub_29DE966D4((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x2A1C73CD8](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x2A1C73CD8](v5);
  }

  sub_29DE96670();
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x2A1C73CE0](v6, v7);
}

uint64_t sub_29E27F7B0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[17];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_29E27F8F8;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_29E2892C0;
  v1[15] = v8;
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = sub_29DF2816C;
  v1[13] = &unk_2A24C1850;
  v9 = _Block_copy(v4);

  [v6 fetchMedicalIDDataWithCompletion_];
  _Block_release(v9);

  return MEMORY[0x2A1C73CC0](v3);
}

uint64_t sub_29E27F8F8()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(*v0 + 128);
    v5 = *(v1 + 8);

    return v5(v4);
  }
}

char *sub_29E27FA38()
{
  result = sub_29E27FA58();
  static PregnancyOnboardingStep.allCases = result;
  return result;
}

char *sub_29E27FA58()
{
  sub_29E28A66C(0, &qword_2A181DD08, &type metadata for PregnancyOnboardingStep, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2E62E0;
  *(inited + 32) = 0x706050403020100;
  *(inited + 40) = 218893065;
  result = sub_29E145700(1, 13, 1, inited);
  *(result + 2) = 13;
  result[44] = 8;
  return result;
}

uint64_t *PregnancyOnboardingStep.allCases.unsafeMutableAddressor()
{
  if (qword_2A1817038 != -1)
  {
    swift_once();
  }

  return &static PregnancyOnboardingStep.allCases;
}

uint64_t static PregnancyOnboardingStep.allCases.getter()
{
  if (qword_2A1817038 != -1)
  {
    swift_once();
  }

  return sub_29E2BF404();
}

unint64_t PregnancyOnboardingStep.description.getter(char a1)
{
  result = 0x654D776569766552;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
    case 6:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
    case 5:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      return result;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6C6169726F747554;
      break;
    case 13:
      result = 0x616D7269666E6F43;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t PregnancyOnboardingStep.hashValue.getter(unsigned __int8 a1)
{
  sub_29E2C4A04();
  MEMORY[0x29ED811E0](a1);
  return sub_29E2C4A54();
}

unint64_t sub_29E27FE00()
{
  result = qword_2A1820950;
  if (!qword_2A1820950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1820950);
  }

  return result;
}

unint64_t sub_29E27FE58()
{
  result = qword_2A1820958;
  if (!qword_2A1820958)
  {
    sub_29E28A66C(255, &qword_2A1820960, &type metadata for PregnancyOnboardingStep, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1820958);
  }

  return result;
}

uint64_t sub_29E27FED4@<X0>(void *a1@<X8>)
{
  if (qword_2A1817038 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static PregnancyOnboardingStep.allCases;

  return sub_29E2BF404();
}

uint64_t getEnumTagSinglePayload for PregnancyOnboardingStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PregnancyOnboardingStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_29E28009C(int a1, int a2)
{
  v63 = a2;
  v60 = a1;
  v66 = *v2;
  v62 = type metadata accessor for PregnancyFlowMetric(0);
  v3 = MEMORY[0x2A1C7C4A8](v62);
  v64 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v56 = v54 - v5;
  v6 = sub_29E2BCF04();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v57 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCBB4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v55 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E289324(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v12 = MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v17 = v54 - v16;
  MEMORY[0x2A1C7C4A8](v15);
  v19 = v54 - v18;
  v54[0] = type metadata accessor for PregnancyAnalyticModel(0);
  v20 = MEMORY[0x2A1C7C4A8](v54[0]);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v61 = v54 - v23;
  v65 = v2;
  v24 = v2[2];
  swift_getKeyPath();
  aBlock[0] = v24;
  v25 = sub_29E28A1A4(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);

  v54[1] = v25;
  sub_29E2BCFE4();

  v26 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyStartDate;
  swift_beginAccess();
  (*(v9 + 16))(v19, v24 + v26, v8);

  v27 = *(v9 + 56);
  v27(v19, 0, 1, v8);
  v28 = v17;
  v27(v17, 1, 1, v8);
  *v22 = 0;
  sub_29DEAA194(v19, v14);
  v29 = *(v9 + 48);
  if (v29(v14, 1, v8) == 1)
  {
    v30 = v55;
    sub_29E2BCBA4();
    if (v29(v14, 1, v8) != 1)
    {
      sub_29DE93920(v14);
    }
  }

  else
  {
    v30 = v55;
    (*(v9 + 32))(v55, v14, v8);
  }

  v31 = v54[0];
  (*(v9 + 32))(&v22[*(v54[0] + 20)], v30, v8);
  v32 = v28;
  sub_29DEAA194(v28, &v22[*(v31 + 24)]);
  v33 = v57;
  sub_29E2BCEF4();
  v34 = sub_29E2BCED4();
  v36 = v35;
  (*(v58 + 8))(v33, v59);
  sub_29DE93920(v32);
  sub_29DE93920(v19);
  v37 = &v22[*(v31 + 28)];
  *v37 = v34;
  v37[1] = v36;
  v38 = v22;
  v39 = v61;
  sub_29DFF5BB0(v38, v61, type metadata accessor for PregnancyAnalyticModel);
  v40 = PregnancyOnboardingStep.description.getter(v60);
  v42 = v41;
  v43 = v65;
  LOBYTE(v31) = *(v65 + 354);
  v44 = v65[2];
  swift_getKeyPath();
  aBlock[0] = v44;

  sub_29E2BCFE4();

  LOBYTE(v34) = *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);

  v45 = v56;
  sub_29E28A464(v39, &v56[*(v62 + 36)], type metadata accessor for PregnancyAnalyticModel);
  *v45 = 0;
  *(v45 + 8) = v40;
  *(v45 + 16) = v42;
  *(v45 + 24) = v63;
  *(v45 + 25) = v31;
  *(v45 + 26) = v34;
  v46 = v43[18];
  v47 = v64;
  sub_29E28A464(v45, v64, type metadata accessor for PregnancyFlowMetric);
  type metadata accessor for PregnancyFlowAnalyticsEvent();
  v48 = swift_allocObject();
  *(v48 + 16) = v46;
  sub_29DFF5BB0(v47, v48 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27PregnancyFlowAnalyticsEvent_metric, type metadata accessor for PregnancyFlowMetric);
  v49 = v43[49];
  v50 = swift_allocObject();
  *(v50 + 16) = v66;
  aBlock[4] = sub_29E28A4CC;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DFE9648;
  aBlock[3] = &unk_2A24C1D50;
  v51 = _Block_copy(aBlock);
  v52 = v46;

  [v49 submitEvent:v48 completion:v51];
  _Block_release(v51);

  sub_29E28A4F0(v45, type metadata accessor for PregnancyFlowMetric);
  return sub_29E28A4F0(v39, type metadata accessor for PregnancyAnalyticModel);
}

uint64_t sub_29E280804(char a1, uint64_t a2, uint64_t a3)
{
  sub_29E289324(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v20 - v8;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  if (a1)
  {
    sub_29DE966D4((v3 + 96), *(v3 + 120));
    sub_29DF97B2C(v3 + 96, v21);
    v12 = swift_allocObject();
    v13 = v21[1];
    *(v12 + 16) = v21[0];
    *(v12 + 32) = v13;
    *(v12 + 48) = v22;
    *(v12 + 56) = sub_29E289388;
    *(v12 + 64) = v11;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_29E2894A8;
    *(v14 + 24) = v12;

    sub_29E2BD154();
  }

  else
  {
    v15 = sub_29E2C3734();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    sub_29E2C3714();
    swift_retain_n();
    swift_retain_n();
    v16 = sub_29E2C3704();
    v17 = swift_allocObject();
    v18 = MEMORY[0x29EDCA390];
    *(v17 + 16) = v16;
    *(v17 + 24) = v18;
    *(v17 + 32) = v10;
    *(v17 + 40) = 3;
    *(v17 + 41) = a1 & 1;
    *(v17 + 48) = a2;
    *(v17 + 56) = a3;
    sub_29E13C63C(0, 0, v9, &unk_29E2E9B90, v17);
  }
}

uint64_t sub_29E280AD0(char a1, char a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (a1)
    {
      sub_29E281560(a4);
      if (v9)
      {
        v11 = v9;
        v12 = v10;
        [*(v8 + 360) showViewController:v9 sender:v8];
        goto LABEL_7;
      }
    }

    else if (a2 == 1)
    {
      v13 = *(result + 360);
      v11 = sub_29DF97BA4(a4);
      [v13 presentViewController:v11 animated:1 completion:0];

      v12 = 14;
LABEL_7:

      v14 = *(v8 + 432);
      if (!v14)
      {
      }

LABEL_8:

      v14(v12);
      sub_29DE8EF50(v14);
    }

    v12 = 14;
    v14 = *(v8 + 432);
    if (!v14)
    {
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t sub_29E280BFC(char a1, uint64_t a2, uint64_t a3)
{
  sub_29E289324(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v20 - v8;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  if (a1)
  {
    sub_29DE966D4((v3 + 96), *(v3 + 120));
    sub_29DF97B2C(v3 + 96, v21);
    v12 = swift_allocObject();
    v13 = v21[1];
    *(v12 + 16) = v21[0];
    *(v12 + 32) = v13;
    *(v12 + 48) = v22;
    *(v12 + 56) = sub_29E289E58;
    *(v12 + 64) = v11;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_29E28A6F0;
    *(v14 + 24) = v12;

    sub_29E2BD154();
  }

  else
  {
    v15 = sub_29E2C3734();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    sub_29E2C3714();
    swift_retain_n();
    swift_retain_n();
    v16 = sub_29E2C3704();
    v17 = swift_allocObject();
    v18 = MEMORY[0x29EDCA390];
    *(v17 + 16) = v16;
    *(v17 + 24) = v18;
    *(v17 + 32) = v10;
    *(v17 + 40) = 3;
    *(v17 + 41) = a1 & 1;
    *(v17 + 48) = a2;
    *(v17 + 56) = a3;
    sub_29E13C63C(0, 0, v9, &unk_29E2E9BA8, v17);
  }
}

void sub_29E280EC8()
{
  v1 = *v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 72);
  if (v9 <= 2)
  {
    if (v9 - 1 >= 2)
    {
      v23 = v4;
      v10 = v8;
      v11 = v7;
      v12 = [v11 sample];
      if (v12)
      {
        v13 = v12;
        v23 = v10;
        sub_29E281CC8(v13, v8);

        v14 = v23;
      }

      else
      {
        sub_29E2C04B4();
        v15 = sub_29E2C0504();
        v16 = sub_29E2C3A14();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v24[0] = v18;
          v24[1] = v1;
          *v17 = 136315138;
          swift_getMetatypeMetadata();
          v19 = sub_29E2C3464();
          v21 = sub_29DFAA104(v19, v20, v24);

          *(v17 + 4) = v21;
          _os_log_impl(&dword_29DE74000, v15, v16, "[%s] Started review adjusted features flow but no sample available on the model", v17, 0xCu);
          sub_29DE93B3C(v18);
          MEMORY[0x29ED82140](v18, -1, -1);
          MEMORY[0x29ED82140](v17, -1, -1);
        }

        else
        {
        }

        (*(v3 + 8))(v6, v23);
      }

      return;
    }

    goto LABEL_11;
  }

  if (v9 != 3)
  {
LABEL_11:

    sub_29E281FF8();
    return;
  }

  sub_29E281CC8(v8, 0);

  sub_29DEAA334(v8, v7, 3u);
}

void sub_29E2811D8()
{
  v24 = *v0;
  v1 = sub_29E2BCBB4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v22 = v0;
  v23 = v5;
  v6 = v0[2];
  v7 = v0;
  swift_getKeyPath();
  aBlock[0] = v6;
  sub_29E28A1A4(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);

  sub_29E2BCFE4();

  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyStartDate;
  swift_beginAccess();
  v9 = *(v2 + 16);
  v9(v4, v6 + v8, v1);

  v21 = sub_29E2BCB04();
  v10 = *(v2 + 8);
  v10(v4, v1);
  v11 = v7[2];
  swift_getKeyPath();
  aBlock[0] = v11;

  sub_29E2BCFE4();

  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyEndDate;
  swift_beginAccess();
  v9(v4, v11 + v12, v1);

  v13 = sub_29E2BCB04();
  v10(v4, v1);
  v14 = v21;
  v15 = [v23 hkmc:2 categorySampleWithCycleFactor:v21 startDate:v13 endDate:?];

  v16 = v22[18];
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v19 = v24;
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  aBlock[4] = sub_29E28A35C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DFE9648;
  aBlock[3] = &unk_2A24C1CD8;
  v20 = _Block_copy(aBlock);

  [v16 saveObject:v15 withCompletion:v20];
  _Block_release(v20);
}

void sub_29E281560(char a1)
{
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = 0;
  switch(a1)
  {
    case 1:
      v21 = v5;
      v22 = v1;
      v23 = *(v1 + 16);
      swift_getKeyPath();
      *&v53[0] = v23;
      sub_29E28A1A4(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);

      sub_29E2BCFE4();

      v24 = *(v23 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);

      if (v24 == 4)
      {
        sub_29E2C04B4();
        v25 = sub_29E2C0504();
        v26 = sub_29E2C3A14();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *&v53[0] = v28;
          *v27 = 136315138;
          v29 = sub_29E2C4AE4();
          v31 = sub_29DFAA104(v29, v30, v53);

          *(v27 + 4) = v31;
          _os_log_impl(&dword_29DE74000, v25, v26, "[%s] Attempting to proceed to .recordHealthDetails step without an estimation method selected", v27, 0xCu);
          sub_29DE93B3C(v28);
          MEMORY[0x29ED82140](v28, -1, -1);
          MEMORY[0x29ED82140](v27, -1, -1);
        }

        (*(v4 + 8))(v7, v21);
      }

      else
      {
        objc_allocWithZone(type metadata accessor for PregnancyOnboardingRecordDetailsViewController());

        sub_29DEBC0A4(v45, v24, v22);
      }

      return;
    case 2:
      objc_allocWithZone(type metadata accessor for PregnancyOnboardingCustomizeHealthViewController());

      sub_29E10186C(v15);
      return;
    case 3:
    case 13:
      return;
    case 4:
      v33 = [objc_opt_self() sharedBehavior];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 isiPad];

        if (v35)
        {
          goto LABEL_23;
        }

        v18 = v1;
        sub_29DE966D4((v1 + 312), *(v1 + 336));
        if ((sub_29E0D78CC() & 1) == 0)
        {
          v44 = 5;
          goto LABEL_48;
        }

        if (qword_2A1816F80 != -1)
        {
          swift_once();
        }

        v20 = &xmmword_2A1840A88;
        goto LABEL_46;
      }

      __break(1u);
      return;
    case 5:
      v18 = v1;
      sub_29DE966D4((v1 + 312), *(v1 + 336));
      if (!sub_29E0D74F4())
      {
        v44 = 6;
        goto LABEL_48;
      }

      if (qword_2A1816F88 != -1)
      {
        swift_once();
      }

      v20 = &xmmword_2A1840B20;
      goto LABEL_46;
    case 6:
      v18 = v1;
      sub_29DE966D4((v1 + 312), *(v1 + 336));
      if ((sub_29E0D7748() & 1) == 0)
      {
        v44 = 7;
        goto LABEL_48;
      }

      if (qword_2A1816F90 != -1)
      {
        swift_once();
      }

      v20 = &xmmword_2A1840BB8;
      goto LABEL_46;
    case 7:
      v18 = v1;
      sub_29DE966D4((v1 + 312), *(v1 + 336));
      sub_29E0D7D2C();
      if ((v19 & 1) == 0)
      {
        v44 = 8;
        goto LABEL_48;
      }

      if (qword_2A1816F98 != -1)
      {
        swift_once();
      }

      v20 = &xmmword_2A1840C50;
LABEL_46:
      v46 = v20[7];
      v53[6] = v20[6];
      v53[7] = v46;
      v53[8] = v20[8];
      v54 = *(v20 + 18);
      v47 = v20[3];
      v53[2] = v20[2];
      v53[3] = v47;
      v48 = v20[5];
      v53[4] = v20[4];
      v53[5] = v48;
      v49 = v20[1];
      v53[0] = *v20;
      v53[1] = v49;
      v50 = objc_allocWithZone(type metadata accessor for PregnancyOnboardingSuggestedFeatureAdjustmentViewController());

      sub_29DF2CF34(v53, v52);
      sub_29DF2AD50(v53, v18, 0);
      return;
    case 8:
LABEL_23:
      if (sub_29E2887A8())
      {
        v36 = objc_allocWithZone(type metadata accessor for PregnancyOnboardingReviewMentalHealthViewController());

        sub_29E03E514(v37);
        return;
      }

      v44 = 10;
      goto LABEL_48;
    case 9:
      v38 = *(v1 + 368);
      if (v38 == 2)
      {
        v39 = v1;
        v40 = sub_29E2C0354();
        if (v40 >> 62)
        {
          v41 = sub_29E2C4484();
        }

        else
        {
          v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v42 = v41 <= 0;
        v1 = v39;
        if (!v42)
        {
          goto LABEL_29;
        }
      }

      else if (v38)
      {
LABEL_29:
        v43 = *(v1 + 240);
        objc_allocWithZone(type metadata accessor for PregnancyOnboardingReviewMedicationsViewController());

        sub_29E05F9D8(v1, v43);
        return;
      }

      v44 = 11;
LABEL_48:
      sub_29E281560(v44, v8);
      return;
    case 10:
      v11 = *(v1 + 296);
      if (v11 && *(v1 + 352) == 1)
      {
        v12 = v11;

        v13 = sub_29E0453C8();

        sub_29DF2CF9C(v12, v13, v53);
        v14 = objc_allocWithZone(type metadata accessor for PregnancyOnboardingSuggestedFeatureAdjustmentViewController());

        sub_29DF2CF34(v53, v52);
        sub_29DF2AD50(v53, v1, 0);

        sub_29DF2CF6C(v53);
        return;
      }

      v44 = 9;
      goto LABEL_48;
    case 11:
      v16 = objc_allocWithZone(type metadata accessor for OnboardingTimelineTutorialViewController());

      sub_29E2894BC(v17, v16);
      return;
    case 12:
      objc_allocWithZone(type metadata accessor for PregnancyOnboardingConfirmationViewController());

      sub_29DFDB998(v32);
      return;
    default:
      v9 = *(v1 + 16);
      v10 = *(v1 + 353);
      objc_allocWithZone(type metadata accessor for PregnancyOnboardingEstimationMethodSelectionViewController());

      sub_29E1E6588(v9, v1, v10);
      return;
  }
}

uint64_t sub_29E281CC8(void *a1, void *a2)
{
  v3 = v2;
  v32 = a2;
  sub_29E289324(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_29E2C03E4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v31 - v13;
  sub_29E2C03D4();
  v15 = sub_29E2C0404();
  v16 = sub_29E2C3D84();
  if (sub_29E2C42D4())
  {
    v17 = swift_slowAlloc();
    v31 = v7;
    v18 = a1;
    v19 = v17;
    *v17 = 0;
    v20 = sub_29E2C03C4();
    _os_signpost_emit_with_name_impl(&dword_29DE74000, v15, v16, v20, "OnboardingCoordinator.completeOnboarding", "", v19, 2u);
    v21 = v19;
    a1 = v18;
    v3 = v2;
    v7 = v31;
    MEMORY[0x29ED82140](v21, -1, -1);
  }

  (*(v9 + 16))(v12, v14, v8);
  sub_29E2C0454();
  swift_allocObject();
  v22 = sub_29E2C0444();
  (*(v9 + 8))(v14, v8);
  v23 = sub_29E2C3734();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  sub_29E2C3714();
  v24 = v32;
  v25 = v32;

  v26 = a1;
  v27 = sub_29E2C3704();
  v28 = swift_allocObject();
  v29 = MEMORY[0x29EDCA390];
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = v3;
  v28[5] = v26;
  v28[6] = v24;
  v28[7] = v22;
  sub_29E13C63C(0, 0, v7, &unk_29E2E9C50, v28);
}

uint64_t sub_29E281FF8()
{
  v1 = v0;
  v2 = *v0;
  sub_29E289324(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_29E2C03E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v26 - v11;
  sub_29E2C03D4();
  v13 = sub_29E2C0404();
  v14 = sub_29E2C3D84();
  if (sub_29E2C42D4())
  {
    v15 = swift_slowAlloc();
    v27 = v5;
    v16 = v2;
    v17 = v15;
    *v15 = 0;
    v18 = sub_29E2C03C4();
    _os_signpost_emit_with_name_impl(&dword_29DE74000, v13, v14, v18, "OnboardingCoordinator.completeOnboarding", "", v17, 2u);
    v19 = v17;
    v2 = v16;
    v5 = v27;
    MEMORY[0x29ED82140](v19, -1, -1);
  }

  (*(v7 + 16))(v10, v12, v6);
  sub_29E2C0454();
  swift_allocObject();
  v20 = sub_29E2C0444();
  (*(v7 + 8))(v12, v6);
  v21 = sub_29E2C3734();
  (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  sub_29E2C3714();

  v22 = sub_29E2C3704();
  v23 = swift_allocObject();
  v24 = MEMORY[0x29EDCA390];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v1;
  v23[5] = v20;
  v23[6] = v2;
  sub_29E13C63C(0, 0, v5, &unk_29E2E9BC0, v23);
}

uint64_t sub_29E282330(uint64_t a1, void *a2, uint64_t a3)
{
  sub_29E289324(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v30[-v6];
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2 && HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v12 = a2;
    v13 = sub_29E2C0504();
    v14 = sub_29E2C3A14();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v31 = v14;
      v16 = v15;
      v32 = swift_slowAlloc();
      v34[0] = v32;
      *v16 = 136315394;
      v17 = sub_29E2C4AE4();
      v19 = sub_29DFAA104(v17, v18, v34);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      v33 = a2;
      v20 = a2;
      sub_29E289324(0, &qword_2A1A5DFD0, sub_29DE96670, MEMORY[0x29EDC9C68]);
      v21 = sub_29E2C3424();
      v23 = sub_29DFAA104(v21, v22, v34);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_29DE74000, v13, v31, "[%s] Failed to save new pregnancy factor with error: %s", v16, 0x16u);
      v24 = v32;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v24, -1, -1);
      MEMORY[0x29ED82140](v16, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
  }

  v25 = sub_29E2C3734();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  sub_29E2C3714();

  v26 = sub_29E2C3704();
  v27 = swift_allocObject();
  v28 = MEMORY[0x29EDCA390];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = a3;
  sub_29E13C63C(0, 0, v7, &unk_29E2E9CB0, v27);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29E2828E0();
  }

  return result;
}

uint64_t sub_29E2826D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 112) = a4;
  sub_29E2C3714();
  *(v4 + 120) = sub_29E2C3704();
  v6 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29E282770, v6, v5);
}

uint64_t sub_29E282770()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = objc_allocWithZone(type metadata accessor for PregnancyOnboardingPastPregnancyAddedViewController());
  v3 = sub_29DEE09B4(Strong);
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakAssign();

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + 360);

    swift_beginAccess();
    [v5 showViewController:v3 sender:swift_weakLoadStrong()];

    v3 = v5;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_29E2828E0()
{
  v1 = *v0;
  sub_29E289324(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_29E2C3734();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v6[5] = v1;

  sub_29E13C63C(0, 0, v4, &unk_29E2E9BD8, v6);
}

void sub_29E282A34()
{
  v1 = v0;
  if (*(v0 + 24) == 1)
  {
    v2 = objc_opt_self();
    v3 = sub_29E2C3864();
    [v2 setTachycardiaThresholdHeartRate_];
  }

  if (*(v1 + 48) == 1)
  {
    sub_29DE966D4((v1 + 312), *(v1 + 336));
    sub_29E0D7754();
  }

  if (*(v1 + 49) == 1)
  {
    sub_29DE966D4((v1 + 312), *(v1 + 336));
    sub_29E0D7B18();
  }
}

uint64_t sub_29E282AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 73) = a6;
  *(v8 + 72) = a5;
  *(v8 + 40) = a4;
  sub_29E2C3714();
  *(v8 + 64) = sub_29E2C3704();
  v10 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29E282B88, v10, v9);
}

uint64_t sub_29E282B88()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 72);
    v3 = v2 & 0xFE;
    if (v3 == 2)
    {
      *(Strong + 49) = *(v0 + 73);
      v2 = *(v0 + 72);
    }

    (*(v0 + 48))(v3 == 2, v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29E282C48(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_29E289324(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v21 - v14;
  v16 = sub_29E2C3734();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_29E2C3714();

  v17 = sub_29E2C3704();
  v18 = swift_allocObject();
  v19 = MEMORY[0x29EDCA390];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = a2;
  *(v18 + 40) = a1;
  *(v18 + 41) = a3;
  *(v18 + 48) = a4;
  *(v18 + 56) = a5;
  sub_29E13C63C(0, 0, v15, a7, v18);
}

uint64_t sub_29E282DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 73) = a6;
  *(v8 + 72) = a5;
  *(v8 + 40) = a4;
  sub_29E2C3714();
  *(v8 + 64) = sub_29E2C3704();
  v10 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29E282E64, v10, v9);
}

uint64_t sub_29E282E64()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 72);
    v3 = v2 & 0xFE;
    if (v3 == 2)
    {
      *(Strong + 50) = *(v0 + 73);
      v2 = *(v0 + 72);
    }

    (*(v0 + 48))(v3 == 2, v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29E282F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_29E2C0514();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = sub_29E2C0424();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v9 = sub_29E2C03E4();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();
  v10 = sub_29E2C2B34();
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  v11 = sub_29E2C2B54();
  v6[25] = v11;
  v6[26] = *(v11 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = sub_29E2C3714();
  v6[29] = sub_29E2C3704();
  v12 = swift_task_alloc();
  v6[30] = v12;
  *v12 = v6;
  v12[1] = sub_29E2831A4;

  return sub_29E283BF4();
}

uint64_t sub_29E2831A4()
{
  *(*v1 + 248) = v0;

  v3 = sub_29E2C36A4();
  if (v0)
  {
    v4 = sub_29E28369C;
  }

  else
  {
    v4 = sub_29E283300;
  }

  return MEMORY[0x2A1C73D48](v4, v3, v2);
}

uint64_t sub_29E283300()
{

  v1 = v0[27];
  v2 = v0[24];
  v21 = v0[26];
  v22 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[10];
  sub_29E2828E0();
  sub_29DE9408C(0, &qword_2A1A626C0);
  v20 = sub_29E2C3CF4();
  v0[6] = sub_29E28A0C8;
  v0[7] = v5;
  v0[2] = MEMORY[0x29EDCA5F8];
  v0[3] = 1107296256;
  v0[4] = sub_29DF49BB8;
  v0[5] = &unk_2A24C1AF8;
  v6 = _Block_copy(v0 + 2);

  sub_29E2C2B44();
  v0[9] = MEMORY[0x29EDCA190];
  sub_29E28A1A4(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
  sub_29E289324(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DF4B408();
  sub_29E2C43F4();
  MEMORY[0x29ED804D0](0, v1, v2, v6);
  _Block_release(v6);

  (*(v4 + 8))(v2, v3);
  (*(v21 + 8))(v1, v22);

  v7 = sub_29E2C0404();
  sub_29E2C0434();
  v8 = sub_29E2C3D74();
  if (sub_29E2C42D4())
  {
    v10 = v0[17];
    v9 = v0[18];
    v11 = v0[16];

    sub_29E2C0464();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x29EDCA4A8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[17] + 8))(v0[18], v0[16]);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_29E2C03C4();
    _os_signpost_emit_with_name_impl(&dword_29DE74000, v7, v8, v14, "OnboardingCoordinator.completeOnboarding", v12, v13, 2u);
    MEMORY[0x29ED82140](v13, -1, -1);
  }

  v16 = v0[20];
  v15 = v0[21];
  v17 = v0[19];

  (*(v16 + 8))(v15, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_29E28369C()
{
  v45 = v0;
  v1 = (v0 + 16);

  v2 = HKShowSensitiveLogItems();
  v3 = *(v0 + 248);
  if (v2)
  {
    sub_29E2C04B4();
    v4 = v3;
    v5 = sub_29E2C0504();
    v6 = sub_29E2C3A14();

    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v10 = *(v0 + 104);
    if (v7)
    {
      v11 = *(v0 + 96);
      v41 = *(v0 + 248);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v43 = v8;
      v44 = swift_slowAlloc();
      v14 = v44;
      *v12 = 136315394;
      *(v0 + 64) = v11;
      swift_getMetatypeMetadata();
      v15 = sub_29E2C3464();
      v17 = sub_29DFAA104(v15, v16, &v44);

      *(v12 + 4) = v17;
      v1 = (v0 + 16);
      *(v12 + 12) = 2112;
      v18 = v41;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v19;
      *v13 = v19;
      _os_log_impl(&dword_29DE74000, v5, v6, "[%s] Unable to complete onboarding with error: %@", v12, 0x16u);
      sub_29E28A4F0(v13, sub_29DE93AD4);
      MEMORY[0x29ED82140](v13, -1, -1);
      sub_29DE93B3C(v14);
      MEMORY[0x29ED82140](v14, -1, -1);
      MEMORY[0x29ED82140](v12, -1, -1);

      (*(v9 + 8))(v43, v10);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }
  }

  else
  {
  }

  v20 = *(v0 + 216);
  v21 = *(v0 + 192);
  v40 = *(v0 + 208);
  v42 = *(v0 + 200);
  v23 = *(v0 + 176);
  v22 = *(v0 + 184);
  v24 = *(v0 + 80);
  sub_29E2828E0();
  sub_29DE9408C(0, &qword_2A1A626C0);
  v25 = sub_29E2C3CF4();
  *(v0 + 48) = sub_29E28A0C8;
  *(v0 + 56) = v24;
  *(v0 + 16) = MEMORY[0x29EDCA5F8];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_29DF49BB8;
  *(v0 + 40) = &unk_2A24C1AF8;
  v26 = _Block_copy(v1);

  sub_29E2C2B44();
  *(v0 + 72) = MEMORY[0x29EDCA190];
  sub_29E28A1A4(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
  sub_29E289324(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DF4B408();
  sub_29E2C43F4();
  MEMORY[0x29ED804D0](0, v20, v21, v26);
  _Block_release(v26);

  (*(v22 + 8))(v21, v23);
  (*(v40 + 8))(v20, v42);

  v27 = sub_29E2C0404();
  sub_29E2C0434();
  v28 = sub_29E2C3D74();
  if (sub_29E2C42D4())
  {
    v30 = *(v0 + 136);
    v29 = *(v0 + 144);
    v31 = *(v0 + 128);

    sub_29E2C0464();

    if ((*(v30 + 88))(v29, v31) == *MEMORY[0x29EDCA4A8])
    {
      v32 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
      v32 = "";
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = sub_29E2C03C4();
    _os_signpost_emit_with_name_impl(&dword_29DE74000, v27, v28, v34, "OnboardingCoordinator.completeOnboarding", v32, v33, 2u);
    MEMORY[0x29ED82140](v33, -1, -1);
  }

  v36 = *(v0 + 160);
  v35 = *(v0 + 168);
  v37 = *(v0 + 152);

  (*(v36 + 8))(v35, v37);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_29E283BF4()
{
  v1[22] = v0;
  v1[23] = *v0;
  v2 = sub_29E2C0514();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  sub_29E2C3714();
  v1[29] = sub_29E2C3704();
  v4 = sub_29E2C36A4();
  v1[30] = v4;
  v1[31] = v3;

  return MEMORY[0x2A1C73D48](sub_29E283D28, v4, v3);
}

uint64_t sub_29E283D28()
{
  v29 = v0;
  v1 = v0[22];

  v2 = sub_29E0453C8();
  v0[32] = v2;

  sub_29E28A66C(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  v0[21] = v3;
  *(v3 + 16) = xmmword_29E2CE220;
  *(v3 + 32) = v2;
  v4 = *(v1 + 40);
  if (v4 >> 62)
  {
    v24 = sub_29E2C4484();
    v25 = v2;
    if (!v24)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = v2;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  sub_29E2C04B4();
  v7 = sub_29E2C0504();
  v8 = sub_29E2C3A34();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[28];
  v12 = v0[24];
  v11 = v0[25];
  if (v9)
  {
    v27 = v0[28];
    v13 = v0[23];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    v0[20] = v13;
    swift_getMetatypeMetadata();
    v16 = sub_29E2C3464();
    v18 = sub_29DFAA104(v16, v17, &v28);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_29DE74000, v7, v8, "[%s] Also saving other cycle factors", v14, 0xCu);
    sub_29DE93B3C(v15);
    MEMORY[0x29ED82140](v15, -1, -1);
    MEMORY[0x29ED82140](v14, -1, -1);

    (*(v11 + 8))(v27, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = sub_29E2BF404();
  sub_29DFCB5D4(v19);
  v3 = v0[21];
LABEL_7:
  v20 = *(v0[22] + 144);
  if (v3 >> 62)
  {
    sub_29DE9408C(0, &qword_2A181A6C8);
    sub_29E2BF404();
    sub_29E2C4744();
  }

  else
  {
    sub_29E2BF404();
    sub_29E2C4924();
    sub_29DE9408C(0, &qword_2A181A6C8);
  }

  sub_29DE9408C(0, &qword_2A181A6C8);
  v21 = sub_29E2C3604();
  v0[33] = v21;

  v0[2] = v0;
  v0[3] = sub_29E284114;
  v22 = swift_continuation_init();
  sub_29E28A1F4(0, &qword_2A181A6D0);
  v0[17] = v23;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29E27F6E4;
  v0[13] = &unk_2A24C1B70;
  v0[14] = v22;
  [v20 saveObjects:v21 withCompletion:v0 + 10];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29E284114()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = sub_29E284604;
  }

  else
  {
    v5 = sub_29E284244;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29E284244()
{
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_29E2842DC;

  return sub_29E2858CC();
}

uint64_t sub_29E2842DC()
{
  v2 = *v1;
  v2[36] = v0;

  if (v0)
  {
    v3 = v2[30];
    v4 = v2[31];

    return MEMORY[0x2A1C73D48](sub_29E28486C, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[37] = v5;
    *v5 = v2;
    v5[1] = sub_29E284450;
    v6 = v2[32];

    return sub_29E2851DC(v6, 0);
  }
}

uint64_t sub_29E284450()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x2A1C73D48](sub_29E284570, v3, v2);
}

uint64_t sub_29E284570()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E284604()
{
  v27 = v0;
  v1 = v0;
  v4 = v0 + 264;
  v3 = *(v0 + 264);
  v2 = *(v4 + 8);
  swift_willThrow();

  sub_29E2C04B4();
  v5 = v2;
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A14();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 272);
    v9 = *(v1 + 200);
    v24 = *(v1 + 192);
    v25 = *(v1 + 216);
    v10 = *(v1 + 184);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v11 = 136315394;
    *(v1 + 152) = v10;
    swift_getMetatypeMetadata();
    v14 = sub_29E2C3464();
    v16 = sub_29DFAA104(v14, v15, &v26);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%s] Unable to save sample with error: %@", v11, 0x16u);
    sub_29E28A4F0(v12, sub_29DE93AD4);
    MEMORY[0x29ED82140](v12, -1, -1);
    sub_29DE93B3C(v13);
    MEMORY[0x29ED82140](v13, -1, -1);
    MEMORY[0x29ED82140](v11, -1, -1);

    (*(v9 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v1 + 216);
    v20 = *(v1 + 192);
    v21 = *(v1 + 200);

    (*(v21 + 8))(v19, v20);
  }

  v22 = swift_task_alloc();
  *(v1 + 280) = v22;
  *v22 = v1;
  v22[1] = sub_29E2842DC;

  return sub_29E2858CC();
}

uint64_t sub_29E28486C()
{
  v26 = v0;
  v1 = v0;
  v2 = v0[36];
  sub_29E2C04B4();
  v3 = v2;
  v4 = sub_29E2C0504();
  v5 = sub_29E2C3A14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[36];
    v7 = v0[25];
    v8 = v0[23];
    v23 = v0[24];
    v24 = v0[26];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v9 = 136315394;
    v0[18] = v8;
    swift_getMetatypeMetadata();
    v12 = sub_29E2C3464();
    v14 = sub_29DFAA104(v12, v13, &v25);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v6;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_29DE74000, v4, v5, "[%s] Unable to update cycle tracking onboarding record with error: %@", v9, 0x16u);
    sub_29E28A4F0(v10, sub_29DE93AD4);
    MEMORY[0x29ED82140](v10, -1, -1);
    sub_29DE93B3C(v11);
    MEMORY[0x29ED82140](v11, -1, -1);
    MEMORY[0x29ED82140](v9, -1, -1);

    (*(v7 + 8))(v24, v23);
  }

  else
  {
    v18 = v0[25];
    v17 = v0[26];
    v19 = v1[24];

    (*(v18 + 8))(v17, v19);
  }

  v20 = swift_task_alloc();
  v1[37] = v20;
  *v20 = v1;
  v20[1] = sub_29E284450;
  v21 = v1[32];

  return sub_29E2851DC(v21, 0);
}

uint64_t sub_29E284ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a4;
  v7[10] = a7;
  v10 = sub_29E2C0424();
  v7[11] = v10;
  v7[12] = *(v10 - 8);
  v7[13] = swift_task_alloc();
  v11 = sub_29E2C03E4();
  v7[14] = v11;
  v7[15] = *(v11 - 8);
  v7[16] = swift_task_alloc();
  v12 = sub_29E2C2B34();
  v7[17] = v12;
  v7[18] = *(v12 - 8);
  v7[19] = swift_task_alloc();
  v13 = sub_29E2C2B54();
  v7[20] = v13;
  v7[21] = *(v13 - 8);
  v7[22] = swift_task_alloc();
  v7[23] = sub_29E2C3714();
  v7[24] = sub_29E2C3704();
  v14 = swift_task_alloc();
  v7[25] = v14;
  *v14 = v7;
  v14[1] = sub_29E284D14;

  return sub_29E2851DC(a5, a6);
}

uint64_t sub_29E284D14()
{

  v1 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29E284E50, v1, v0);
}

uint64_t sub_29E284E50()
{
  v1 = v0[22];
  v2 = v0[19];
  v21 = v0[21];
  v22 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[9];

  sub_29E2828E0();
  sub_29DE9408C(0, &qword_2A1A626C0);
  v20 = sub_29E2C3CF4();
  v0[6] = sub_29E28A6F4;
  v0[7] = v5;
  v0[2] = MEMORY[0x29EDCA5F8];
  v0[3] = 1107296256;
  v0[4] = sub_29DF49BB8;
  v0[5] = &unk_2A24C1C88;
  v6 = _Block_copy(v0 + 2);

  sub_29E2C2B44();
  v0[8] = MEMORY[0x29EDCA190];
  sub_29E28A1A4(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
  sub_29E289324(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DF4B408();
  sub_29E2C43F4();
  MEMORY[0x29ED804D0](0, v1, v2, v6);
  _Block_release(v6);

  (*(v3 + 8))(v2, v4);
  (*(v21 + 8))(v1, v22);

  v7 = sub_29E2C0404();
  sub_29E2C0434();
  v8 = sub_29E2C3D74();
  if (sub_29E2C42D4())
  {
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];

    sub_29E2C0464();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x29EDCA4A8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[12] + 8))(v0[13], v0[11]);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_29E2C03C4();
    _os_signpost_emit_with_name_impl(&dword_29DE74000, v7, v8, v14, "OnboardingCoordinator.completeOnboarding", v12, v13, 2u);
    MEMORY[0x29ED82140](v13, -1, -1);
  }

  v16 = v0[15];
  v15 = v0[16];
  v17 = v0[14];

  (*(v16 + 8))(v15, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_29E2851DC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = sub_29E2C0514();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  sub_29E2C3714();
  v3[10] = sub_29E2C3704();
  v6 = sub_29E2C36A4();
  v3[11] = v6;
  v3[12] = v5;

  return MEMORY[0x2A1C73D48](sub_29E2852FC, v6, v5);
}

uint64_t sub_29E2852FC()
{
  sub_29DE966D4((*(v0 + 40) + 192), *(*(v0 + 40) + 216));
  sub_29E2BD874();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_29E2853D4;

  return sub_29E286018();
}

uint64_t sub_29E2853D4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_29E2855B8;
  }

  else
  {
    v5 = sub_29E285510;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29E285510()
{

  v1 = *(v0 + 40);
  sub_29E282A34();
  if (*(v1 + 50) == 1)
  {
    v2 = *(v0 + 40);
    sub_29E2BDCC4();
    [*(v2 + 88) onboardToPregnancyRecommendedSettings];
  }

  sub_29E286B00(*(v0 + 24), *(v0 + 32));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29E2855B8()
{
  v26 = v0;
  v1 = *(v0 + 112);

  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v6 = *(v0 + 64);
    v7 = *(v0 + 48);
    v23 = *(v0 + 56);
    v24 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v8 = 136315394;
    *(v0 + 16) = v7;
    swift_getMetatypeMetadata();
    v11 = sub_29E2C3464();
    v13 = sub_29DFAA104(v11, v12, &v25);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v5;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%s] Unable to update Medical ID error: %@", v8, 0x16u);
    sub_29E28A4F0(v9, sub_29DE93AD4);
    MEMORY[0x29ED82140](v9, -1, -1);
    sub_29DE93B3C(v10);
    MEMORY[0x29ED82140](v10, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);

    (*(v6 + 8))(v24, v23);
  }

  else
  {
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);

    (*(v17 + 8))(v16, v18);
  }

  *(*(v0 + 40) + 51) = 0;
  v19 = *(v0 + 40);
  sub_29E282A34();
  if (*(v19 + 50))
  {
    v20 = *(v0 + 40);
    sub_29E2BDCC4();
    [*(v20 + 88) onboardToPregnancyRecommendedSettings];
  }

  sub_29E286B00(*(v0 + 24), *(v0 + 32));

  v21 = *(v0 + 8);

  return v21();
}

id sub_29E285830(void *a1)
{
  v1 = a1[50];
  if (v1)
  {

    v1(v3);
    sub_29DE8EF50(v1);
    v4 = a1[50];
    a1[50] = 0;
    a1[51] = 0;

    return sub_29DE8EF50(v4);
  }

  else
  {
    v6 = a1[45];

    return [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_29E2858CC()
{
  v1[19] = v0;
  v1[20] = *v0;
  v2 = sub_29E2C0514();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  sub_29E2C3714();
  v1[24] = sub_29E2C3704();
  v4 = sub_29E2C36A4();
  v1[25] = v4;
  v1[26] = v3;

  return MEMORY[0x2A1C73D48](sub_29E2859E8, v4, v3);
}

uint64_t sub_29E2859E8()
{
  v1 = *(v0[19] + 232);
  if ([v1 isAnyOnboardingVersionCompleted])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = *(v0[19] + 304);
    v5 = v4[5];
    v6 = v4[6];
    v7 = v4[7];
    v8 = objc_allocWithZone(MEMORY[0x29EDC33C8]);
    sub_29DE9408C(0, &qword_2A1A61D50);
    sub_29E2BF404();
    sub_29E2BF404();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v9 = sub_29E2C3604();

    v10 = sub_29E2C3604();

    LODWORD(v14) = 0;
    v11 = [v8 initWithUserEnteredCycleLength:0 userEnteredPeriodLength:0 userEnteredLastPeriodStartDay:0 addedCycleFactors:v9 deletedCycleFactors:v10 menstruationProjectionsEnabled:0 fertileWindowProjectionsEnabled:v14 deviationDetectionEnabled:v5 fertilityTrackingDisplayTypesVisible:v6 sexualActivityDisplayTypeVisible:v7 heartRateInputSupportedCountryCode:0 deviationDetectionSupportedCountryCode:0 wristTemperatureInputSupportedCountryCode:? heartRateInputEnabled:? wristTemperatureInputEnabled:?];
    v0[27] = v11;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v0[2] = v0;
    v0[7] = v0 + 29;
    v0[3] = sub_29E285C90;
    v12 = swift_continuation_init();
    sub_29E28A1F4(0, &qword_2A1820990);
    v0[17] = v13;
    v0[10] = MEMORY[0x29EDCA5F8];
    v0[11] = 1107296256;
    v0[12] = sub_29E27ED68;
    v0[13] = &unk_2A24C1C38;
    v0[14] = v12;
    [v1 setOnboardingCompletedWithInfo:v11 completion:?];

    return MEMORY[0x2A1C73CC0](v0 + 2);
  }
}

uint64_t sub_29E285C90()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);
  if (v2)
  {
    v5 = sub_29E285F98;
  }

  else
  {
    v5 = sub_29E285DC0;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29E285DC0()
{
  v19 = v0;

  sub_29E2C04B4();
  v1 = sub_29E2C0504();
  v2 = sub_29E2C3A34();
  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[22];
    v3 = v0[23];
    v6 = v0[20];
    v5 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v0[18] = v6;
    swift_getMetatypeMetadata();
    v9 = sub_29E2C3464();
    v11 = sub_29DFAA104(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_29DE74000, v1, v2, "[%s] Saved partial CT onboarding record and set needCycleTrackingEducation to true", v7, 0xCu);
    sub_29DE93B3C(v8);
    MEMORY[0x29ED82140](v8, -1, -1);
    MEMORY[0x29ED82140](v7, -1, -1);

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v13 = v0[22];
    v12 = v0[23];
    v14 = v0[21];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[27];
  sub_29DE966D4((v0[19] + 256), *(v0[19] + 280));
  sub_29E22AF8C(1);

  v16 = v0[1];

  return v16();
}

uint64_t sub_29E285F98()
{
  v1 = *(v0 + 216);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29E286018()
{
  v1[26] = v0;
  v1[27] = *v0;
  v2 = sub_29E2C0514();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = sub_29E2BCBB4();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  sub_29E2C3714();
  v1[34] = sub_29E2C3704();
  v5 = sub_29E2C36A4();
  v1[35] = v5;
  v1[36] = v4;

  return MEMORY[0x2A1C73D48](sub_29E286190, v5, v4);
}

uint64_t sub_29E286190()
{
  v1 = v0[26];
  if (*(v1 + 51))
  {
    v0[37] = *(v1 + 248);
    v2 = swift_task_alloc();
    v0[38] = v2;
    *v2 = v0;
    v2[1] = sub_29E286280;

    return sub_29E27F790();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_29E286280(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v5 = *(v3 + 288);
  v6 = *(v3 + 280);
  if (v1)
  {
    v7 = sub_29E2869F8;
  }

  else
  {
    v7 = sub_29E2863C4;
  }

  return MEMORY[0x2A1C73D48](v7, v6, v5);
}

uint64_t sub_29E2863C4()
{
  v31 = v0;
  v1 = v0[39];
  if (v1)
  {
    v29 = v0[37];
    v2 = v0[32];
    v3 = v0[33];
    v4 = v0[31];
    v28 = v0[26];
    v5 = *(v28 + 16);
    swift_getKeyPath();
    v0[24] = v5;
    sub_29E28A1A4(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);

    sub_29E2BCFE4();

    v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyStartDate;
    swift_beginAccess();
    v27 = *(v2 + 16);
    v27(v3, v5 + v6, v4);

    v7 = sub_29E2BCB04();
    v26 = *(v2 + 8);
    v26(v3, v4);
    [v1 setPregnancyStartDate_];

    v8 = *(v28 + 16);
    swift_getKeyPath();
    v0[25] = v8;

    sub_29E2BCFE4();

    v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__estimatedDueDate;
    swift_beginAccess();
    v27(v3, v8 + v9, v4);

    v10 = sub_29E2BCB04();
    v26(v3, v4);
    [v1 setPregnancyEstimatedDueDate_];

    v0[2] = v0;
    v0[7] = v0 + 42;
    v0[3] = sub_29E286848;
    v11 = swift_continuation_init();
    sub_29E28A1F4(0, &qword_2A1820990);
    v0[17] = v12;
    v0[10] = MEMORY[0x29EDCA5F8];
    v0[11] = 1107296256;
    v0[12] = sub_29E27ED68;
    v0[13] = &unk_2A24C1C10;
    v0[14] = v11;
    [v29 updateMedicalIDData:v1 completion:?];

    return MEMORY[0x2A1C73CC0](v0 + 2);
  }

  else
  {

    sub_29E2C04B4();
    v13 = sub_29E2C0504();
    v14 = sub_29E2C3A14();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[29];
    v16 = v0[30];
    v18 = v0[28];
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v20;
      *v19 = 136315138;
      v21 = sub_29E2C4AE4();
      v23 = sub_29DFAA104(v21, v22, &v30);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_29DE74000, v13, v14, "[%s] Medical ID came back nil. Failed to update Medical ID.", v19, 0xCu);
      sub_29DE93B3C(v20);
      MEMORY[0x29ED82140](v20, -1, -1);
      MEMORY[0x29ED82140](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_29E286848()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  v3 = *(v1 + 288);
  v4 = *(v1 + 280);
  if (v2)
  {
    v5 = sub_29E286A70;
  }

  else
  {
    v5 = sub_29E286978;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29E286978()
{
  v1 = *(v0 + 312);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29E2869F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E286A70()
{
  v1 = *(v0 + 312);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_29E286B00(void *a1, void *a2)
{
  v3 = v2;
  v87 = a2;
  v96 = *v3;
  sub_29E289324(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v85 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v84 = &v83 - v8;
  MEMORY[0x2A1C7C4A8](v9);
  v95 = &v83 - v10;
  MEMORY[0x2A1C7C4A8](v11);
  v90 = &v83 - v12;
  v13 = sub_29E2BCC24();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v89 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v91 = &v83 - v17;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v83 - v19;
  v88 = sub_29E2C0514();
  v21 = *(v88 - 8);
  MEMORY[0x2A1C7C4A8](v88);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v24 = a1;
  v25 = sub_29E2C0504();
  v26 = sub_29E2C3A34();

  v27 = os_log_type_enabled(v25, v26);
  v93 = v13;
  v94 = v3;
  v92 = v14;
  v86 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v98[0] = v29;
    *v28 = 136315394;
    aBlock[0] = v96;
    swift_getMetatypeMetadata();
    v30 = sub_29E2C3464();
    v32 = sub_29DFAA104(v30, v31, v98);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    v33 = [v24 UUID];
    sub_29E2BCC04();

    v34 = sub_29E2BCBD4();
    v36 = v35;
    (*(v92 + 8))(v20, v93);
    v37 = sub_29DFAA104(v34, v36, v98);
    v38 = v96;

    *(v28 + 14) = v37;
    _os_log_impl(&dword_29DE74000, v25, v26, "[%s] Saving setup record for sample UUID: %s", v28, 0x16u);
    swift_arrayDestroy();
    v39 = v29;
    v3 = v94;
    MEMORY[0x29ED82140](v39, -1, -1);
    MEMORY[0x29ED82140](v28, -1, -1);

    (*(v21 + 8))(v23, v88);
  }

  else
  {

    (*(v21 + 8))(v23, v88);
    v38 = v96;
  }

  v40 = [objc_opt_self() sharedBehavior];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 isiPad];

    v98[0] = MEMORY[0x29EDCA1A0];
    if (*(v3 + 48) == 1)
    {
      sub_29E14718C(aBlock, *MEMORY[0x29EDC3330]);
    }

    v43 = v86;
    if (*(v3 + 51) == 1)
    {
      sub_29E14718C(aBlock, *MEMORY[0x29EDC3338]);
    }

    v88 = swift_allocObject();
    if (v87)
    {
      v44 = v87;
      v87 = [v44 version];
      v45 = [v44 sampleUUID];
      sub_29E2BCC04();

      v46 = v90;
      sub_29E2BCBA4();
      v47 = sub_29E2BCBB4();
      v48 = *(v47 - 8);
      v49 = *(v48 + 56);
      v50 = 1;
      v49(v46, 0, 1, v47);
      if ((v42 & 1) == 0)
      {
        sub_29E2BCBA4();
        v50 = 0;
      }

      v49(v95, v50, 1, v47);
      v89 = v44;
      v51 = [v44 postPregnancyFeatureAdjustmentCompletionLog];
      type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
      sub_29E28A1A4(&qword_2A181A6E0, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
      sub_29E2C3214();

      v86 = sub_29E2BCBE4();
      v52 = *(v48 + 48);
      v53 = v90;
      v54 = 0;
      if (v52(v90, 1, v47) != 1)
      {
        v54 = sub_29E2BCB04();
        (*(v48 + 8))(v53, v47);
      }

      v55 = v95;
      if (v52(v95, 1, v47) == 1)
      {
        v56 = 0;
      }

      else
      {
        v65 = v55;
        v56 = sub_29E2BCB04();
        (*(v48 + 8))(v65, v47);
      }

      v66 = v93;
      v67 = objc_allocWithZone(MEMORY[0x29EDC33D8]);
      v68 = sub_29E2C3804();

      v69 = sub_29E2C31F4();

      v70 = v67;
      v72 = v86;
      v71 = v87;
      v73 = [v70 initWithVersion:v87 sampleUUID:v86 educationalStepsReviewDate:v54 configurationStepsReviewDate:v56 pregnancyAdjustedFeaturesSet:v68 postPregnancyFeatureAdjustmentCompletionLog:v69];

      v38 = v96;
      v74 = v91;
    }

    else
    {
      v87 = [objc_opt_self() currentVersion];
      v57 = [v43 UUID];
      sub_29E2BCC04();

      v58 = v84;
      sub_29E2BCBA4();
      v59 = sub_29E2BCBB4();
      v60 = *(v59 - 8);
      v61 = *(v60 + 56);
      v62 = 1;
      v61(v58, 0, 1, v59);
      if ((v42 & 1) == 0)
      {
        sub_29E2BCBA4();
        v62 = 0;
      }

      v61(v85, v62, 1, v59);
      sub_29E18698C(MEMORY[0x29EDCA190]);
      v86 = sub_29E2BCBE4();
      v63 = *(v60 + 48);
      v64 = v84;
      if (v63(v84, 1, v59) == 1)
      {
        v54 = 0;
      }

      else
      {
        v54 = sub_29E2BCB04();
        (*(v60 + 8))(v64, v59);
      }

      v75 = v85;
      if (v63(v85, 1, v59) == 1)
      {
        v56 = 0;
      }

      else
      {
        v76 = v75;
        v56 = sub_29E2BCB04();
        (*(v60 + 8))(v76, v59);
      }

      v77 = objc_allocWithZone(MEMORY[0x29EDC33D8]);
      type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
      sub_29E28A1A4(&qword_2A181A6E0, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
      v68 = sub_29E2C3804();

      v69 = sub_29E2C31F4();

      v72 = v86;
      v71 = v87;
      v73 = [v77 initWithVersion:v87 sampleUUID:v86 educationalStepsReviewDate:v54 configurationStepsReviewDate:v56 pregnancyAdjustedFeaturesSet:v68 postPregnancyFeatureAdjustmentCompletionLog:v69];
      v74 = v89;
      v66 = v93;
    }

    (*(v92 + 8))(v74, v66);
    v78 = v88;
    *(v88 + 16) = v73;
    v79 = *(v94 + 136);
    v80 = swift_allocObject();
    v80[2] = v78;
    v80[3] = v38;
    aBlock[4] = sub_29E28A1EC;
    aBlock[5] = v80;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DFE9648;
    aBlock[3] = &unk_2A24C1BE8;
    v81 = _Block_copy(aBlock);
    v82 = v73;

    [v79 persistSetupRecord:v82 completion:v81];
    _Block_release(v81);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E28764C(char a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = v40 - v13;
  if (a1)
  {
    sub_29E2C04B4();

    v15 = sub_29E2C0504();
    v16 = sub_29E2C3A34();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v42 = v18;
      *v17 = 136315394;
      v41 = a4;
      swift_getMetatypeMetadata();
      v19 = sub_29E2C3464();
      v21 = sub_29DFAA104(v19, v20, &v42);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      swift_beginAccess();
      v22 = *(a3 + 16);
      v40[1] = v22;
      sub_29DE9408C(0, &qword_2A1A5E100);
      v23 = v22;
      v24 = sub_29E2C3464();
      v26 = sub_29DFAA104(v24, v25, &v42);

      *(v17 + 14) = v26;
      _os_log_impl(&dword_29DE74000, v15, v16, "[%s] Successfully saved new setup record %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v18, -1, -1);
      MEMORY[0x29ED82140](v17, -1, -1);
    }

    return (*(v9 + 8))(v14, v8);
  }

  else
  {
    sub_29E2C04B4();
    v28 = a2;
    v29 = sub_29E2C0504();
    v30 = sub_29E2C3A14();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42 = v32;
      *v31 = 136315394;
      v41 = a4;
      swift_getMetatypeMetadata();
      v33 = sub_29E2C3464();
      v35 = sub_29DFAA104(v33, v34, &v42);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v41 = a2;
      v36 = a2;
      sub_29E289324(0, &qword_2A1A5DFD0, sub_29DE96670, MEMORY[0x29EDC9C68]);
      v37 = sub_29E2C3424();
      v39 = sub_29DFAA104(v37, v38, &v42);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_29DE74000, v29, v30, "[%s] Error saving setup record: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v32, -1, -1);
      MEMORY[0x29ED82140](v31, -1, -1);
    }

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_29E287A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v6 = sub_29E2C0514();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E287B08, 0, 0);
}

uint64_t sub_29E287B08()
{
  v21 = v0;
  sub_29E2C04B4();
  v1 = sub_29E2C0504();
  v2 = sub_29E2C3A34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[25];
    v4 = v0[22];
    v5 = v0[23];
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v0[19] = v6;
    swift_getMetatypeMetadata();
    v9 = sub_29E2C3464();
    v11 = sub_29DFAA104(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_29DE74000, v1, v2, "[%s] Triggering nanosync", v7, 0xCu);
    sub_29DE93B3C(v8);
    MEMORY[0x29ED82140](v8, -1, -1);
    MEMORY[0x29ED82140](v7, -1, -1);

    v12 = *(v5 + 8);
    v12(v3, v4);
  }

  else
  {
    v13 = v0[25];
    v14 = v0[22];
    v15 = v0[23];

    v12 = *(v15 + 8);
    v12(v13, v14);
  }

  v0[26] = v12;
  v16 = [objc_allocWithZone(MEMORY[0x29EDBAC90]) initWithHealthStore_];
  v0[27] = v16;
  v0[2] = v0;
  v0[3] = sub_29E287D98;
  v17 = swift_continuation_init();
  sub_29E28A1F4(0, &qword_2A181A6D0);
  v0[17] = v18;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29E27F6E4;
  v0[13] = &unk_2A24C1B48;
  v0[14] = v17;
  [v16 forceNanoSyncWithOptions:0 completion:v0 + 10];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29E287D98()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_29E287F18;
  }

  else
  {
    v2 = sub_29E287EA8;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E287EA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E287F18()
{
  v27 = v0;
  v1 = v0;
  v4 = v0 + 216;
  v3 = *(v0 + 216);
  v2 = *(v4 + 8);
  swift_willThrow();

  sub_29E2C04B4();
  v5 = v2;
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A14();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 224);
    v24 = *(v1 + 192);
    v25 = *(v1 + 208);
    v9 = *(v1 + 168);
    v23 = *(v1 + 176);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v10 = 136315394;
    *(v1 + 144) = v9;
    swift_getMetatypeMetadata();
    v13 = sub_29E2C3464();
    v15 = sub_29DFAA104(v13, v14, &v26);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%s] Unable to trigger nanosync with error: %@", v10, 0x16u);
    sub_29E28A4F0(v11, sub_29DE93AD4);
    MEMORY[0x29ED82140](v11, -1, -1);
    sub_29DE93B3C(v12);
    MEMORY[0x29ED82140](v12, -1, -1);
    MEMORY[0x29ED82140](v10, -1, -1);

    v25(v24, v23);
  }

  else
  {
    v18 = *(v1 + 208);
    v19 = *(v1 + 192);
    v20 = *(v1 + 176);

    v18(v19, v20);
  }

  v21 = *(v1 + 8);

  return v21();
}

uint64_t sub_29E288174()
{

  sub_29DEAA334(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  sub_29E28A618(v0 + 96);
  swift_unknownObjectRelease();

  sub_29DE93B3C(v0 + 152);
  sub_29DE93B3C(v0 + 192);

  sub_29DE93B3C(v0 + 256);

  sub_29DE93B3C(v0 + 312);

  swift_unknownObjectRelease();
  sub_29DE8EF50(*(v0 + 400));
  sub_29DE8EF50(*(v0 + 416));
  sub_29DE8EF50(*(v0 + 432));
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin30PregnancyOnboardingCoordinator_signposter;
  v2 = sub_29E2C0414();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_29E2882AC()
{
  sub_29E288174();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PregnancyOnboardingCoordinator()
{
  result = qword_2A1820978;
  if (!qword_2A1820978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E288358()
{
  result = sub_29E2C0414();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_29E28847C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_29E2C3714();
  v4[3] = sub_29E2C3704();
  v6 = sub_29E2C36A4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2A1C73D48](sub_29E288514, v6, v5);
}

uint64_t sub_29E288514()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_29E2885A8;

  return sub_29E27F790();
}

uint64_t sub_29E2885A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_29E288744;
  }

  else
  {
    v4[8] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_29E2886D0;
  }

  return MEMORY[0x2A1C73D48](v7, v5, v6);
}

uint64_t sub_29E2886D0()
{
  v1 = v0[8];
  v2 = v0[2];

  v3 = *(v2 + 296);
  *(v2 + 296) = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_29E288744()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E2887A8()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE966D4(v0 + 39, v0[42]);
  v7 = sub_29E0D7FC4();
  v8 = sub_29E2BDCB4();
  v9 = v8 & [v1[11] periodicPromptedAssessmentNotificationsEnabled];
  sub_29E2C04B4();
  v10 = sub_29E2C0504();
  v11 = sub_29E2C3A34();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23[0] = v13;
    v23[1] = v2;
    *v12 = 136446722;
    swift_getMetatypeMetadata();
    v14 = sub_29E2C3464();
    v16 = sub_29DFAA104(v14, v15, v23);
    v22 = v3;
    v17 = v7;
    v18 = v16;

    *(v12 + 4) = v18;
    v7 = v17;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v17 & 1;
    *(v12 + 18) = 1024;
    v19 = v9 ^ 1;
    *(v12 + 20) = v19 & 1;
    _os_log_impl(&dword_29DE74000, v10, v11, "[%{public}s] Determining if we should show mental health settings: feature availability:(%{BOOL}d) shouldShowSetting:(%{BOOL}d)", v12, 0x18u);
    sub_29DE93B3C(v13);
    MEMORY[0x29ED82140](v13, -1, -1);
    MEMORY[0x29ED82140](v12, -1, -1);

    (*(v4 + 8))(v6, v22);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    v19 = v9 ^ 1;
  }

  return v7 & v19 & 1;
}

uint64_t sub_29E288A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_29E2C0514();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  sub_29E2C3714();
  v6[8] = sub_29E2C3704();
  v9 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29E288B44, v9, v8);
}

uint64_t sub_29E288B44()
{
  v24 = v0;

  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v1 = sub_29E2C0504();
    v2 = sub_29E2C3A34();
    v3 = os_log_type_enabled(v1, v2);
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    if (v3)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136315138;
      v9 = sub_29E2C4AE4();
      v11 = sub_29DFAA104(v9, v10, &v23);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_29DE74000, v1, v2, "[%s] Received pregnancy model update", v7, 0xCu);
      sub_29DE93B3C(v8);
      MEMORY[0x29ED82140](v8, -1, -1);
      MEMORY[0x29ED82140](v7, -1, -1);
    }

    (*(v5 + 8))(v4, v6);
  }

  v12 = v0[3];
  v13 = *(v12 + 384);
  if (v13)
  {
    v14 = v0[2];
    sub_29DE9408C(0, &unk_2A1A5E190);
    v15 = v14;
    v16 = v13;
    v17 = sub_29E2C40D4();

    if (v17)
    {
      goto LABEL_10;
    }

    v18 = *(v12 + 384);
  }

  else
  {
    v18 = 0;
  }

  v19 = v0[2];
  *(v12 + 384) = v19;

  v20 = v19;
LABEL_10:

  v21 = v0[1];

  return v21();
}

uint64_t sub_29E288EE4(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_29E288F00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_29E288F48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_29E288F8C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_29E288FB4(char a1, void *a2, void *a3, const char *a4)
{
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  result = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E2C04B4();
    v13 = a2;
    v14 = sub_29E2C0504();
    v15 = sub_29E2C3A14();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = a4;
      v17 = v16;
      v18 = swift_slowAlloc();
      v28 = v18;
      v29 = a3;
      *v17 = 136315394;
      swift_getMetatypeMetadata();
      v19 = sub_29E2C3464();
      v21 = sub_29DFAA104(v19, v20, &v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v29 = a2;
      v22 = a2;
      sub_29E289324(0, &qword_2A1A5DFD0, sub_29DE96670, MEMORY[0x29EDC9C68]);
      v23 = sub_29E2C3424();
      v25 = sub_29DFAA104(v23, v24, &v28);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_29DE74000, v14, v15, v27, v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v18, -1, -1);
      MEMORY[0x29ED82140](v17, -1, -1);
    }

    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_29E289208(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    sub_29DE96670();
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x2A1C73CE0](a3, v5);
  }

  else
  {
    **(*(a3 + 64) + 40) = a1;
    v8 = a1;

    return MEMORY[0x2A1C73CD8](a3);
  }
}

uint64_t sub_29E2892C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E289324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E2893C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 41);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 40);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29DECA6A0;

  return sub_29E282AE4(a1, v4, v5, v6, v10, v7, v8, v9);
}

id sub_29E2894BC(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v24 - v10;
  v28[3] = type metadata accessor for PregnancyOnboardingCoordinator();
  v28[4] = &off_2A24C1810;
  v28[0] = a1;
  *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_currentStepCount] = 0;
  a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_animatingStep] = 0;
  *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_footerButton] = 0;
  *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController____lazy_storage___cycleTimelineViewController] = 0;
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_calendarCache;
  *&a2[v12] = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_infoViews;
  v14 = MEMORY[0x29EDCA190];
  *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_infoViews] = MEMORY[0x29EDCA190];
  *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_infoViewBottomConstraints] = v14;
  sub_29DE9DC34(v28, &a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_tutorialProvider]);
  a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_currentStep] = 5;
  sub_29DFE5814(byte_2A24ADF38);
  v15 = swift_beginAccess();
  MEMORY[0x29ED7FDC0](v15);
  if (*((*&a2[v13] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a2[v13] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v25 = *((*&a2[v13] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_29E2C3644();
  }

  sub_29E2C3674();
  swift_endAccess();
  sub_29DFE5814(byte_2A24ADF39);
  v16 = swift_beginAccess();
  MEMORY[0x29ED7FDC0](v16);
  if (*((*&a2[v13] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a2[v13] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v25 = *((*&a2[v13] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_29E2C3644();
  }

  sub_29E2C3674();
  swift_endAccess();
  sub_29DFE5814(byte_2A24ADF3A);
  v17 = swift_beginAccess();
  MEMORY[0x29ED7FDC0](v17);
  if (*((*&a2[v13] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a2[v13] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v25 = *((*&a2[v13] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_29E2C3644();
  }

  sub_29E2C3674();
  swift_endAccess();
  *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_timelineSteps] = &unk_2A24ADF18;
  v18 = *&a2[v12];
  type metadata accessor for OnboardingCycleLoggingDataProvider();
  swift_allocObject();
  sub_29E25C310(v18, 5u);
  *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_cycleTimelineDataProvider] = v19;
  sub_29E2C3314();
  (*(v6 + 16))(v9, v11, v5);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v20 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v6 + 8))(v11, v5);
  v21 = sub_29E2C33A4();

  v27.receiver = a2;
  v27.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v27, sel_initWithTitle_detailText_symbolName_contentLayout_, v21, 0, 0, 2);

  sub_29DE93B3C(v28);
  return v22;
}

uint64_t sub_29E28997C(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_29E2C3384();
  v31 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v30 = &v28 - v8;
  v38[3] = type metadata accessor for MenstrualCyclesOnboardingCoordinator();
  v38[4] = &off_2A24B77F8;
  v38[0] = a1;
  *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_currentStepCount] = 0;
  a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_animatingStep] = 0;
  *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_footerButton] = 0;
  *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController____lazy_storage___cycleTimelineViewController] = 0;
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_calendarCache;
  *&a2[v9] = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_infoViews;
  v11 = MEMORY[0x29EDCA190];
  *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_infoViews] = MEMORY[0x29EDCA190];
  *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_infoViewBottomConstraints] = v11;
  sub_29DE9DC34(v38, &a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_tutorialProvider]);
  v12 = sub_29DFF6A5C();
  v13 = *(v12 + 2);
  if (v13)
  {
    v14 = v12;
    v15 = v12[32];
    a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_currentStep] = v15;
    v16 = 32;
    do
    {
      sub_29DFE5814(v14[v16]);
      v17 = swift_beginAccess();
      MEMORY[0x29ED7FDC0](v17);
      if (*((*&a2[v10] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a2[v10] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29E2C3644();
      }

      sub_29E2C3674();
      swift_endAccess();
      ++v16;
      --v13;
    }

    while (v13);
    *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_timelineSteps] = v14;
    v18 = *&a2[v9];
    type metadata accessor for OnboardingCycleLoggingDataProvider();
    swift_allocObject();
    sub_29E25C310(v18, v15);
    *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_cycleTimelineDataProvider] = v19;
    v20 = v30;
    sub_29E2C3314();
    v21 = v31;
    v22 = v33;
    (*(v31 + 16))(v29, v20, v33);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v23 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v21 + 8))(v20, v22);
    v24 = sub_29E2C33A4();

    v35.receiver = a2;
    v35.super_class = ObjectType;
    v25 = objc_msgSendSuper2(&v35, sel_initWithTitle_detailText_symbolName_contentLayout_, v24, 0, 0, 2);

    sub_29DE93B3C(v38);
    return v25;
  }

  else
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_29E2C4584();
    MEMORY[0x29ED7FCC0](91, 0xE100000000000000);
    v27 = sub_29E2C4AE4();
    MEMORY[0x29ED7FCC0](v27);

    MEMORY[0x29ED7FCC0](0xD000000000000041, 0x800000029E30B1E0);
    result = sub_29E2C4724();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E289E18()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E289E98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 41);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 40);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29DECA6A0;

  return sub_29E282DC0(a1, v4, v5, v6, v10, v7, v8, v9);
}

uint64_t sub_29E289F78()
{
  sub_29DE93B3C(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29E289FB8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29E28A000(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29DE9657C;

  return sub_29E282F24(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29E28A0E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29DECA6A0;

  return sub_29E287A3C(a1, v4, v5, v7, v6);
}

uint64_t sub_29E28A1A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E28A1F4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_29DE96670();
    v3 = sub_29E2C3754();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_29E28A288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29DECA6A0;

  return sub_29E284ADC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_29E28A364(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v1, a1, 7);
}

uint64_t sub_29E28A3B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29DECA6A0;

  return sub_29E2826D8(a1, v4, v5, v6);
}

uint64_t sub_29E28A464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E28A4F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E28A550(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29DECA6A0;

  return sub_29E288A4C(a1, v4, v5, v6, v7, v8);
}

void sub_29E28A66C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_29E28A714(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CycleChartCycle(0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartDayBackgroundView_cycle;
  swift_beginAccess();
  sub_29DFE394C(v2 + v7, v6);
  if (*a1 == *v6)
  {
    sub_29DE9408C(0, &qword_2A1A619F0);
    if (sub_29E2C40D4())
    {
      sub_29E2C31A4();
      sub_29E102760();
      if (sub_29E2C3304() & 1) != 0 && (sub_29E2C3304() & 1) != 0 && (MEMORY[0x29ED79570](a1 + *(v4 + 32), v6 + *(v4 + 32)) & 1) != 0 && (MEMORY[0x29ED79570](a1 + *(v4 + 36), v6 + *(v4 + 36)))
      {
        return sub_29E28B4FC(v6);
      }
    }
  }

  sub_29E28B4FC(v6);
  return [v2 setNeedsDisplay];
}

uint64_t sub_29E28A908()
{
  swift_getObjectType();
  v2 = sub_29E2C4AE4();
  MEMORY[0x29ED7FCC0](58, 0xE100000000000000);
  swift_beginAccess();
  sub_29E2C3164();
  swift_endAccess();
  v0 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v0);

  return v2;
}

id sub_29E28A9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();

  sub_29DFE394C(a1, &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartDayBackgroundView_cycle]);
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartDayBackgroundView_dayIndex;
  v9 = sub_29E2C31A4();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v4[v8], a2, v9);
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows] = a4;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for CycleChart();
  v11 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29DE9408C(0, &qword_2A181ADA0);
  v12 = v11;
  sub_29E2C3D24();
  sub_29E2C4034();

  swift_unknownObjectRelease();

  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 systemBackgroundColor];
  [v14 setBackgroundColor_];

  (*(v10 + 8))(a2, v9);
  sub_29E28B4FC(a1);
  return v14;
}

void sub_29E28AC0C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_29E2C0514();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_29E2C31A4();
  v15 = *(v66 - 8);
  MEMORY[0x2A1C7C4A8](v66);
  v65 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CycleChartCycle(0);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v64 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75.receiver = v5;
  v75.super_class = ObjectType;
  objc_msgSendSuper2(&v75, sel_drawRect_, a1, a2, a3, a4);
  v19 = UIGraphicsGetCurrentContext();
  if (v19)
  {
    v20 = v19;
    [v5 bounds];
    v63 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows;
    v62 = *(*&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows] + 16);
    if (v62)
    {
      v24 = v21;
      MaxY = v22;
      v26 = v23;
      v27 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartDayBackgroundView_dayIndex;
      v61 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartDayBackgroundView_cycle;
      swift_beginAccess();
      v60 = v27;
      swift_beginAccess();
      v28 = 0;
      v59 = (v15 + 16);
      v58 = (v15 + 8);
      v29 = 0.0;
      v30 = 32;
      v31 = v64;
      while (1)
      {
        v32 = *&v5[v63];
        v33 = *(v32 + 16);
        if (v28 >= v33)
        {
          break;
        }

        v68 = v30;
        sub_29DE9DC34(v32 + v30, v69);
        v67 = v33 - 1;
        CGContextSaveGState(v20);
        v76.origin.x = v24;
        v76.origin.y = MaxY;
        v76.size.width = v26;
        v76.size.height = v29;
        MaxY = CGRectGetMaxY(v76);
        v35 = v70;
        v34 = v71;
        sub_29DE966D4(v69, v70);
        v29 = (*(*(v34 + 8) + 72))(v35);
        v37 = v70;
        v36 = v71;
        sub_29DE966D4(v69, v70);
        sub_29DFE394C(&v5[v61], v31);
        v38 = &v5[v60];
        v39 = v20;
        v40 = v5;
        v41 = v65;
        v42 = v66;
        (*v59)(v65, v38, v66);
        v43 = [v40 traitCollection];
        (*(*(v36 + 8) + 104))(v39, v31, v41, v43, v37, v24, MaxY, v26, v29);

        v44 = v41;
        v5 = v40;
        v20 = v39;
        (*v58)(v44, v42);
        sub_29E28B4FC(v31);
        CGContextRestoreGState(v39);
        CGContextSaveGState(v39);
        if (v28 != v67)
        {
          v45 = v70;
          v46 = v71;
          sub_29DE966D4(v69, v70);
          v47 = [v5 traitCollection];
          sub_29E0AED40(v39, v47, v45, v46, v24, MaxY, v26, v29);
        }

        ++v28;
        CGContextRestoreGState(v39);
        sub_29DE93B3C(v69);
        v30 = v68 + 40;
        if (v62 == v28)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:
    }
  }

  else
  {
    sub_29E2C04B4();
    v48 = v5;
    v49 = sub_29E2C0504();
    v50 = sub_29E2C3A14();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v72[0] = v52;
      *v51 = 136446210;
      v73 = sub_29E2C4AE4();
      v74 = v53;
      MEMORY[0x29ED7FCC0](58, 0xE100000000000000);
      swift_beginAccess();
      v54 = sub_29E2C3164();
      swift_endAccess();
      v69[0] = v54;
      v55 = sub_29E2C48D4();
      MEMORY[0x29ED7FCC0](v55);

      v56 = sub_29DFAA104(v73, v74, v72);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_29DE74000, v49, v50, "[%{public}s] Skipping drawing with no current context", v51, 0xCu);
      sub_29DE93B3C(v52);
      MEMORY[0x29ED82140](v52, -1, -1);
      MEMORY[0x29ED82140](v51, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_29E28B2E8()
{
  sub_29E28B4FC(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartDayBackgroundView_cycle);
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartDayBackgroundView_dayIndex;
  v2 = sub_29E2C31A4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t type metadata accessor for CycleChartDayBackgroundView()
{
  result = qword_2A1820998;
  if (!qword_2A1820998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E28B430()
{
  result = type metadata accessor for CycleChartCycle(319);
  if (v1 <= 0x3F)
  {
    result = sub_29E2C31A4();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29E28B4FC(uint64_t a1)
{
  v2 = type metadata accessor for CycleChartCycle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_29E28B558(void *a1, char a2)
{
  v3 = v2;
  v25[1] = swift_getObjectType();
  v6 = sub_29E2BCBB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x29EDCA190];
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_viewModels] = MEMORY[0x29EDCA190];
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_factorSubviews] = v10;
  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_noFactorsLabel;
  *&v2[v11] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView____lazy_storage___shortMonthDayYearDateFormatter] = 0;
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_disclosureIndicator;
  sub_29DE9408C(0, &qword_2A1818D18);
  v13 = sub_29E05D384();
  v14 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];

  v15 = [objc_opt_self() tertiaryLabelColor];
  [v14 setTintColor_];

  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v12] = v14;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_analysis] = a1;
  v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_shouldShowDisclosureIndicator] = a2;
  v16 = type metadata accessor for CycleFactorsSectionView();
  v26.receiver = v3;
  v26.super_class = v16;
  v17 = a1;
  v18 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29E2BCB54();
  v19 = sub_29DF5CB68(v9);
  (*(v7 + 8))(v9, v6);
  *&v18[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_viewModels] = v19;

  v20 = sub_29E2BF404();
  sub_29E28B878(v20);

  sub_29DEAC750();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29E2CAB20;
  v22 = sub_29E2C0B54();
  v23 = MEMORY[0x29EDC7870];
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  sub_29E2C4034();

  swift_unknownObjectRelease();

  return v18;
}

void sub_29E28B878(unint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2BE814();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CycleFactorsSectionViewModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A60ED8 != -1)
  {
    goto LABEL_117;
  }

LABEL_2:
  v151 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000012, 0x800000029E2F7900);
  MEMORY[0x29ED7FCC0](0x776569562ELL, 0xE500000000000000);
  v12 = sub_29E2C33A4();

  [v2 setAccessibilityIdentifier_];

  if (v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_shouldShowDisclosureIndicator] == 1)
  {
    [v2 addSubview_];
    sub_29E28D0E8();
  }

  v13 = *(a1 + 16);
  if (!v13)
  {

    sub_29E28D3EC();
    return;
  }

  v148 = v4;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_factorSubviews;
  a1 += (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = v9[9];
  do
  {
    sub_29E2911F8(a1, v11);
    v15 = objc_allocWithZone(type metadata accessor for CycleFactorsSectionSingleFactorView(0));
    sub_29E28DC00(v11);
    v16 = swift_beginAccess();
    MEMORY[0x29ED7FDC0](v16);
    if (*((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v147 = *((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29E2C3644();
    }

    sub_29E2C3674();
    v17 = *&v2[v4];
    swift_endAccess();
    a1 += v14;
    --v13;
  }

  while (v13);
  if (v17 >> 62)
  {
    v18 = sub_29E2C4484();
    if (!v18)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_18;
    }
  }

  if (v18 < 1)
  {
    __break(1u);
LABEL_127:
    sub_29E2BF404();
    v134 = MEMORY[0x29ED80D70](0, v17);

    v26 = v134;
    goto LABEL_24;
  }

  sub_29E2BF404();
  v19 = 0;
  v14 = &off_29F363000;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x29ED80D70](v19, v17);
    }

    else
    {
      v20 = *(v17 + 8 * v19 + 32);
    }

    v21 = v20;
    ++v19;
    [v2 addSubview_];
  }

  while (v18 != v19);

LABEL_18:
  sub_29E2BE804();
  sub_29E2BE7A4();
  v22 = *(v5 + 8);
  v5 += 8;
  v23 = v148;
  (v22)(v7, v148);
  [v2 directionalLayoutMargins];
  v24 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
  [v2 setDirectionalLayoutMargins_];
  sub_29E2BE804();
  sub_29E2BE7A4();
  (v22)(v7, v23);
  [v2 directionalLayoutMargins];
  [v2 setDirectionalLayoutMargins_];
  v17 = *&v2[v4];
  if (v17 >> 62)
  {
    v25 = sub_29E2C4484();
  }

  else
  {
    v25 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = &off_29F363000;
  v18 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
  if (!v25)
  {
    v41 = 1;
LABEL_32:
    v145 = v41;
    v42 = *&v2[v4];
    if (v42 >> 62)
    {
      if (sub_29E2C4484() < 2)
      {
        goto LABEL_38;
      }
    }

    else if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      while (1)
      {
LABEL_38:
        v24 = 0;
LABEL_77:
        v17 = *&v2[v4];
        if (v17 >> 62)
        {
          v87 = sub_29E2C4484();
          if (!v87)
          {
LABEL_124:
            if (v24)
            {
              goto LABEL_106;
            }

            return;
          }
        }

        else
        {
          v87 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v87)
          {
            goto LABEL_124;
          }
        }

        v7 = v87 - 1;
        if (__OFSUB__(v87, 1))
        {
          goto LABEL_129;
        }

        if ((v17 & 0xC000000000000001) != 0)
        {
          goto LABEL_130;
        }

        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_132;
        }

        if (v7 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          a1 = *(v17 + 8 * v7 + 32);
          goto LABEL_84;
        }

        __break(1u);
LABEL_134:
        v44 = sub_29E2C4484();
        v45 = v44 - 1;
        if (__OFSUB__(v44, 1))
        {
          goto LABEL_136;
        }

LABEL_36:
        if (v45 < 1)
        {
          goto LABEL_137;
        }

        if (v45 != 1)
        {
          v144 = objc_opt_self();
          v142 = objc_opt_self();
          type metadata accessor for UILayoutPriority(0);
          a1 = 0;
          LOBYTE(v18) = 0;
          v139 = v145 - 0x7FFFFFFFFFFFFFFFLL;
          v140 = v46;
          v138 = v44 - 2;
          v9 = &off_29F363000;
          v143 = xmmword_29E2CE070;
          v141 = xmmword_29E2CDBD0;
          while (1)
          {
            v47 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
            v48 = [v144 hk_activitySeparatorDefaultColor];
            [v47 setBackgroundColor_];

            if (v18)
            {
            }

            v11 = (a1 + 1);
            v49 = v47;
            [v2 addSubview_];
            v50 = v9[406];
            v147 = v49;
            [v49 v50];
            v7 = *&v2[v4];
            v148 = (a1 + 1);
            if ((v7 & 0xC000000000000001) != 0)
            {
              sub_29E2BF404();
              v51 = MEMORY[0x29ED80D70](a1 + 1, v7);
            }

            else
            {
              if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
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
                swift_once();
                goto LABEL_2;
              }

              v51 = *(v7 + 8 * a1 + 40);
            }

            [v51 v9[406]];

            v11 = v147;
            v52 = [v147 heightAnchor];
            v9 = [v52 constraintEqualToConstant_];

            sub_29DE99B54();
            v54 = v53;
            v7 = swift_allocObject();
            *(v7 + 16) = v143;
            v55 = [v11 topAnchor];
            v56 = *&v2[v4];
            v146 = v54;
            if ((v56 & 0xC000000000000001) != 0)
            {
              sub_29E2BF404();
              v57 = MEMORY[0x29ED80D70](a1, v56);
            }

            else
            {
              if (a1 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_109;
              }

              v57 = *(v56 + 8 * a1 + 32);
            }

            v58 = [v57 bottomAnchor];

            v59 = [v55 constraintEqualToAnchor_];
            *(v7 + 32) = v59;
            v60 = v147;
            v61 = [v147 leadingAnchor];
            v62 = [v2 layoutMarginsGuide];
            v63 = [v62 leadingAnchor];

            v64 = [v61 constraintEqualToAnchor_];
            *(v7 + 40) = v64;
            v65 = [v60 trailingAnchor];

            v11 = [v2 trailingAnchor];
            v66 = [v65 constraintEqualToAnchor_];

            *(v7 + 48) = v66;
            *(v7 + 56) = v9;
            sub_29DE9408C(0, &qword_2A1A61A10);
            v9 = v9;
            v67 = sub_29E2C3604();

            v5 = v142;
            [v142 activateConstraints_];

            v68 = swift_allocObject();
            *(v68 + 16) = v141;
            v69 = *&v2[v4];
            if ((v69 & 0xC000000000000001) != 0)
            {
              sub_29E2BF404();
              v11 = MEMORY[0x29ED80D70](v148, v69);
            }

            else
            {
              if (v148 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_110;
              }

              v11 = *(v69 + 8 * a1 + 40);
            }

            v7 = [v11 topAnchor];

            v70 = *&v2[v4];
            if ((v70 & 0xC000000000000001) != 0)
            {
              sub_29E2BF404();
              v71 = MEMORY[0x29ED80D70](a1, v70);
            }

            else
            {
              if (a1 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_111;
              }

              v71 = *(v70 + 8 * a1 + 32);
            }

            v72 = [v71 bottomAnchor];

            v11 = [v7 constraintEqualToAnchor:v72 constant:2.0];
            *(v68 + 32) = v11;
            v73 = *&v2[v4];
            if ((v73 & 0xC000000000000001) != 0)
            {
              sub_29E2BF404();
              v74 = MEMORY[0x29ED80D70](v148, v73);
            }

            else
            {
              if (v148 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_112;
              }

              v74 = *(v73 + 8 * a1 + 40);
            }

            v75 = [v74 leadingAnchor];

            v7 = [v2 leadingAnchor];
            v11 = [v75 constraintEqualToAnchor_];

            *(v68 + 40) = v11;
            v76 = *&v2[v4];
            if ((v76 & 0xC000000000000001) != 0)
            {
              sub_29E2BF404();
              v77 = MEMORY[0x29ED80D70](v148, v76);
            }

            else
            {
              if (v148 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_113;
              }

              v77 = *(v76 + 8 * a1 + 40);
            }

            v78 = [v77 trailingAnchor];

            v7 = [v2 trailingAnchor];
            v79 = [v78 constraintEqualToAnchor_];

            *(v68 + 48) = v79;
            v80 = sub_29E2C3604();

            [v5 activateConstraints_];

            v81 = *&v2[v4];
            if ((v81 & 0xC000000000000001) != 0)
            {
              sub_29E2BF404();
              v11 = v148;
              v82 = MEMORY[0x29ED80D70](v148, v81);

              v14 = v140;
            }

            else
            {
              v11 = v148;
              v14 = v140;
              if (v148 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_114;
              }

              v82 = *(v81 + 8 * a1 + 40);
            }

            v150 = 1132068864;
            v83 = (v145 + a1);
            v149 = v83;
            v7 = sub_29E29115C(&qword_2A1A61A28, type metadata accessor for UILayoutPriority);
            sub_29E2C0524();
            LODWORD(v84) = v151;
            [v82 setContentHuggingPriority:1 forAxis:v84];

            v85 = *&v2[v4];
            if ((v85 & 0xC000000000000001) != 0)
            {
              sub_29E2BF404();
              v23 = MEMORY[0x29ED80D70](v11, v85);
            }

            else
            {
              if (v11 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_116;
              }

              v23 = *(v85 + 8 * a1 + 40);
            }

            v11 = (v139 + a1);
            v150 = 1148846080;
            v149 = v83;
            sub_29E2C0534();
            LODWORD(v86) = v151;
            [v23 setContentCompressionResistancePriority:1 forAxis:v86];

            if (!v11)
            {
              goto LABEL_115;
            }

            ++a1;
            v18 = 1;
            v9 = &off_29F363000;
            if (v138 == a1)
            {
              v145 += a1;
              v24 = 1;
              goto LABEL_77;
            }
          }
        }
      }
    }

    v43 = *&v2[v4];
    if (v43 >> 62)
    {
      goto LABEL_134;
    }

    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = v44 - 1;
    if (!__OFSUB__(v44, 1))
    {
      goto LABEL_36;
    }

LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    goto LABEL_127;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v17 + 32);
LABEL_24:
    v14 = v26;
    [(__objc2_class *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v2 *(a1 + 2288)];
    v28 = [v27 *(v18 + 3168)];

    if (v28 == 2)
    {
      v29 = 8.0;
    }

    else
    {
      v29 = 0.0;
    }

    v30 = objc_opt_self();
    sub_29DE99B54();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_29E2CDBD0;
    v32 = [(__objc2_class *)v14 topAnchor];
    v33 = [v2 topAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:v29];

    *(v31 + 32) = v34;
    v35 = [(__objc2_class *)v14 leadingAnchor];
    v36 = [v2 leadingAnchor];
    v5 = &off_29F363000;
    v37 = [v35 constraintEqualToAnchor_];

    *(v31 + 40) = v37;
    a1 = [(__objc2_class *)v14 trailingAnchor];

    v24 = [v2 trailingAnchor];
    v23 = [a1 constraintEqualToAnchor_];

    *(v31 + 48) = v23;
    sub_29DE9408C(0, &qword_2A1A61A10);
    v38 = sub_29E2C3604();

    [v30 activateConstraints_];

    type metadata accessor for UILayoutPriority(0);
    v18 = 1065353216;
    v149 = 1.0;
    v150 = 1132068864;
    v7 = sub_29E29115C(&qword_2A1A61A28, type metadata accessor for UILayoutPriority);
    sub_29E2C0524();
    LODWORD(v39) = v151;
    [(__objc2_class *)v14 setContentHuggingPriority:1 forAxis:v39];
    v149 = 1.0;
    v150 = 1148846080;
    sub_29E2C0534();
    LODWORD(v40) = v151;
    [(__objc2_class *)v14 setContentCompressionResistancePriority:1 forAxis:v40];

    v41 = 2;
    goto LABEL_32;
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  sub_29E2BF404();
  a1 = MEMORY[0x29ED80D70](v7, v17);

LABEL_84:
  v88 = *&v2[v4];
  if (v88 >> 62)
  {
LABEL_132:
    v89 = sub_29E2C4484();
  }

  else
  {
    v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v90 = &off_29F363000;
  if (v89 < 2)
  {
    goto LABEL_102;
  }

  v91 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  v92 = [objc_opt_self() hk_activitySeparatorDefaultColor];
  [v91 setBackgroundColor_];

  if (v24)
  {
  }

  v7 = v91;
  [v2 addSubview_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v144 = a1;
  v18 = a1;
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v93 = [v7 heightAnchor];
  v24 = [v93 constraintEqualToConstant_];

  sub_29DE99B54();
  a1 = v94;
  v23 = swift_allocObject();
  *(v23 + 1) = xmmword_29E2CE070;
  v147 = v7;
  v5 = [v7 topAnchor];
  v95 = *&v2[v4];
  if (!(v95 >> 62))
  {
    v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v97 = v96 - 2;
    if (!__OFSUB__(v96, 2))
    {
      goto LABEL_91;
    }

LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

LABEL_138:
  v135 = sub_29E2C4484();
  v97 = v135 - 2;
  if (__OFSUB__(v135, 2))
  {
    goto LABEL_140;
  }

LABEL_91:
  v14 = *&v2[v4];
  v148 = a1;
  v146 = v24;
  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_141:
    sub_29E2BF404();
    v98 = MEMORY[0x29ED80D70](v97, v14);

    goto LABEL_95;
  }

  if ((v97 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_143;
  }

  if (v97 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v98 = *(&v14->info + v97);
LABEL_95:
  v99 = objc_opt_self();
  v100 = [(__objc2_class *)v98 bottomAnchor];

  v101 = [v5 constraintEqualToAnchor_];
  *(v23 + 4) = v101;
  v102 = v147;
  v103 = [v147 leadingAnchor];
  v104 = [v2 layoutMarginsGuide];
  v105 = [v104 leadingAnchor];

  v106 = [v103 constraintEqualToAnchor_];
  *(v23 + 5) = v106;
  v107 = [v102 trailingAnchor];

  v108 = [v2 trailingAnchor];
  v5 = [v107 constraintEqualToAnchor_];

  v109 = v146;
  *(v23 + 6) = v5;
  *(v23 + 7) = v109;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v7 = v109;
  v110 = sub_29E2C3604();

  v146 = v99;
  [v99 activateConstraints_];

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29E2CDBD0;
  v23 = [v18 topAnchor];
  v111 = *&v2[v4];
  if (!(v111 >> 62))
  {
    v112 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v97 = v112 - 2;
    if (!__OFSUB__(v112, 2))
    {
      goto LABEL_97;
    }

    goto LABEL_145;
  }

LABEL_143:
  v136 = sub_29E2C4484();
  v97 = v136 - 2;
  if (__OFSUB__(v136, 2))
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

LABEL_97:
  v5 = *&v2[v4];
  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_147:
    v113 = v7;
    sub_29E2BF404();
    v114 = MEMORY[0x29ED80D70](v97, v5);

    goto LABEL_101;
  }

  if ((v97 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_149;
  }

  if (v97 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_149:
    __break(1u);
    return;
  }

  v113 = v7;
  v114 = *(v5 + 8 * v97 + 32);
LABEL_101:
  v90 = &off_29F363000;
  v115 = [(__objc2_class *)v114 bottomAnchor];

  v116 = [v23 constraintEqualToAnchor_];
  *(v24 + 32) = v116;
  v117 = [v18 leadingAnchor];
  v118 = [v2 leadingAnchor];
  v119 = [v117 constraintEqualToAnchor_];

  *(v24 + 40) = v119;
  v120 = [v18 trailingAnchor];

  v121 = [v2 trailingAnchor];
  v122 = [v120 constraintEqualToAnchor_];

  *(v24 + 48) = v122;
  v123 = sub_29E2C3604();

  [v146 activateConstraints_];

  type metadata accessor for UILayoutPriority(0);
  v150 = 1132068864;
  v124 = v145;
  v149 = v145;
  sub_29E29115C(&qword_2A1A61A28, type metadata accessor for UILayoutPriority);
  sub_29E2C0524();
  LODWORD(v125) = v151;
  LOBYTE(v24) = 1;
  [v18 setContentHuggingPriority:1 forAxis:v125];
  v150 = 1148846080;
  v149 = v124;
  sub_29E2C0534();
  LODWORD(v126) = v151;
  [v18 setContentCompressionResistancePriority:1 forAxis:v126];

  a1 = v144;
LABEL_102:
  v127 = [v2 traitCollection];
  v128 = [v127 horizontalSizeClass];

  if (v128 == 2)
  {
    v129 = -8.0;
  }

  else
  {
    v129 = 0.0;
  }

  v130 = [a1 v90[455]];
  v131 = [v2 v90[455]];
  v132 = [v130 constraintEqualToAnchor:v131 constant:v129];

  LODWORD(v133) = 1144750080;
  [v132 setPriority_];
  [v132 setActive_];

  if (v24)
  {
LABEL_106:
  }
}

void sub_29E28D0E8()
{
  v1 = [v0 layoutMarginsGuide];
  v2 = [v1 trailingAnchor];

  v3 = objc_opt_self();
  sub_29DE99B54();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E2CE220;
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_disclosureIndicator;
  v6 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_disclosureIndicator] trailingAnchor];
  v7 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v8 = sub_29E2C3604();

  [v3 activateConstraints_];

  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_factorSubviews;
  swift_beginAccess();
  v10 = *&v0[v9];
  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:
    v15 = [*&v0[v5] topAnchor];
    v16 = [v0 topAnchor];
    v14 = [v15 constraintEqualToAnchor:v16 constant:16.0];

    [v14 setActive_];
    goto LABEL_9;
  }

  if (!sub_29E2C4484())
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_29E2BF404();
    v11 = MEMORY[0x29ED80D70](0, v10);

    goto LABEL_6;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 32);
LABEL_6:
    v12 = [*&v0[v5] firstBaselineAnchor];
    v13 = [*&v11[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleFactorsSectionSingleFactorView_titleLabel] firstBaselineAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    [v14 setActive_];
LABEL_9:

    LODWORD(v17) = 1148846080;
    [*&v0[v5] setContentHuggingPriority:0 forAxis:v17];
    LODWORD(v18) = 1148846080;
    [*&v0[v5] setContentCompressionResistancePriority:0 forAxis:v18];

    return;
  }

  __break(1u);
}

void sub_29E28D3EC()
{
  v1 = v0;
  v51[0] = sub_29E2BE814();
  v2 = *(v51[0] - 1);
  MEMORY[0x2A1C7C4A8](v51[0]);
  v4 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = v51 - v11;
  v13 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_noFactorsLabel];
  sub_29DE9408C(0, &unk_2A1A61A00);
  v14 = sub_29E2C3FD4();
  [v13 setFont_];

  sub_29E2C3314();
  (*(v7 + 16))(v9, v12, v6);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v15 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v7 + 8))(v12, v6);
  v16 = sub_29E2C33A4();

  [v13 setText_];

  [v13 setNumberOfLines_];
  [v1 addSubview_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  (*(v2 + 8))(v4, v51[0]);
  [v1 setDirectionalLayoutMargins_];
  v25 = [v1 traitCollection];
  v26 = [v25 horizontalSizeClass];

  if (v26 == 2)
  {
    v27 = 16.0;
  }

  else
  {
    v27 = 0.0;
  }

  v28 = [v1 traitCollection];
  v29 = [v28 horizontalSizeClass];

  if (v29 == 2)
  {
    v30 = [v1 topAnchor];
  }

  else
  {
    v31 = [v1 layoutMarginsGuide];
    v30 = [v31 topAnchor];
  }

  v51[0] = objc_opt_self();
  sub_29DE99B54();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_29E2CE070;
  v33 = [v13 topAnchor];
  v34 = [v33 constraintEqualToAnchor:v30 constant:v27];

  *(v32 + 32) = v34;
  v35 = [v13 leadingAnchor];
  v36 = [v1 layoutMarginsGuide];
  v37 = [v36 leadingAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v32 + 40) = v38;
  v39 = [v13 trailingAnchor];
  v40 = [v1 layoutMarginsGuide];
  v41 = [v40 trailingAnchor];

  v42 = [v39 constraintEqualToAnchor_];
  *(v32 + 48) = v42;
  v43 = [v13 bottomAnchor];
  v44 = [v1 layoutMarginsGuide];
  v45 = [v44 bottomAnchor];

  v46 = [v43 constraintEqualToAnchor_];
  *(v32 + 56) = v46;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v47 = sub_29E2C3604();

  [v51[0] activateConstraints_];

  if (v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_shouldShowDisclosureIndicator] == 1)
  {
    v48 = [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_disclosureIndicator] firstBaselineAnchor];
    v49 = [v13 firstBaselineAnchor];
    v50 = [v48 constraintEqualToAnchor_];

    [v50 setActive_];
  }
}

id sub_29E28DC00(uint64_t a1)
{
  swift_getObjectType();
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleFactorsSectionSingleFactorView_titleLabel;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleFactorsSectionSingleFactorView_subtitleLabel;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  sub_29E2911F8(a1, &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleFactorsSectionSingleFactorView_viewModel]);
  v17.receiver = v1;
  v17.super_class = type metadata accessor for CycleFactorsSectionSingleFactorView(0);
  v5 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29E28DF54();
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v16 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000012, 0x800000029E2F7900);
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);

  v15 = sub_29DE9DE68();
  v14 = MEMORY[0x29EDC99B0];
  v6 = sub_29E2C4374();
  v8 = v7;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](v6, v8);

  v9 = sub_29E2C33A4();

  [v5 setAccessibilityIdentifier_];

  sub_29DEAC750();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29E2CAB20;
  v11 = sub_29E2C0B54();
  v12 = MEMORY[0x29EDC7870];
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_29E2C4034();
  swift_unknownObjectRelease();

  sub_29DFB4308(a1);
  return v5;
}

void sub_29E28DF54()
{
  v1 = v0;
  v91 = sub_29E2BE814();
  *&v90 = *(v91 - 1);
  MEMORY[0x2A1C7C4A8](v91);
  v89 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2BCBB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v86 - v8;
  MEMORY[0x2A1C7C4A8](v10);
  v93 = &v86 - v11;
  MEMORY[0x2A1C7C4A8](v12);
  v87 = &v86 - v13;
  v14 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleFactorsSectionSingleFactorView_titleLabel];
  sub_29DE9408C(0, &unk_2A1A61A00);
  v15 = sub_29E2C3FD4();
  [v14 setFont_];

  v86 = v0;
  v16 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleFactorsSectionSingleFactorView_subtitleLabel];
  v17 = sub_29E2C3FD4();
  [v16 setFont_];

  v18 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleFactorsSectionSingleFactorView_viewModel];
  v19 = sub_29E2C33A4();
  [v14 setText_];

  v20 = sub_29E2C33A4();
  [v16 setText_];

  [v14 setNumberOfLines_];
  [v16 setNumberOfLines_];
  v88 = type metadata accessor for CycleFactorsSectionViewModel(0);
  v21 = v87;
  (*(v4 + 16))(v87, &v18[*(v88 + 28)], v3);
  sub_29E2BCBA4();
  sub_29E151FB4(1, v6);
  v22 = v93;
  sub_29E15177C(v93);
  v23 = *(v4 + 8);
  v23(v6, v3);
  v23(v9, v3);
  v24 = objc_allocWithZone(type metadata accessor for IntervalPillView(0));
  v25 = sub_29E28EDB0(v21, v22);
  v26 = v86;
  v27 = v14;
  [v86 addSubview_];
  v92 = v16;
  [v26 addSubview_];
  v28 = v25;
  v93 = v28;
  [v26 addSubview_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = v89;
  sub_29E2BE804();
  sub_29E2BE7A4();
  v30 = *(v90 + 8);
  v31 = v91;
  v30(v29, v91);
  [v26 directionalLayoutMargins];
  [v26 setDirectionalLayoutMargins_];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v30(v29, v31);
  [v26 directionalLayoutMargins];
  [v26 setDirectionalLayoutMargins_];
  if (v18[*(v88 + 36)])
  {
    v32 = 5.0;
  }

  else
  {
    v32 = 15.0;
  }

  sub_29DE99B54();
  v33 = swift_allocObject();
  v90 = xmmword_29E2CDBD0;
  *(v33 + 16) = xmmword_29E2CDBD0;
  v34 = [v27 topAnchor];
  v35 = [v26 &selRef_hkmc_menstruationColor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:v32];

  *(v33 + 32) = v36;
  v37 = v27;
  v38 = [v27 leadingAnchor];
  v39 = [v26 layoutMarginsGuide];
  v40 = [v39 leadingAnchor];

  v41 = [v38 constraintEqualToAnchor_];
  *(v33 + 40) = v41;
  v42 = [v26 &off_29F3632A8 + 1];
  v43 = [v42 trailingAnchor];

  v44 = [v27 &selRef_bounds + 4];
  v45 = [v43 constraintGreaterThanOrEqualToAnchor_];

  *(v33 + 48) = v45;
  v46 = objc_opt_self();
  sub_29DE9408C(0, &qword_2A1A61A10);
  v47 = sub_29E2C3604();

  v91 = v46;
  [v46 activateConstraints_];

  LODWORD(v48) = 1132068864;
  [v37 setContentHuggingPriority:1 forAxis:v48];
  LODWORD(v49) = 1148846080;
  [v37 setContentCompressionResistancePriority:1 forAxis:v49];
  v50 = swift_allocObject();
  *(v50 + 16) = v90;
  v51 = v92;
  v52 = [v92 &selRef_hkmc_menstruationColor];
  v53 = [v37 bottomAnchor];
  v54 = [v52 &selRef:v53 setLineFragmentPadding:2.0 + 6];

  *(v50 + 32) = v54;
  v55 = [v51 leadingAnchor];
  v56 = [v26 layoutMarginsGuide];
  v57 = [v56 leadingAnchor];

  v58 = [v55 constraintEqualToAnchor_];
  *(v50 + 40) = v58;
  v59 = [v26 layoutMarginsGuide];
  v60 = [v59 trailingAnchor];

  v61 = [v51 trailingAnchor];
  v62 = [v60 constraintGreaterThanOrEqualToAnchor_];

  *(v50 + 48) = v62;
  v63 = sub_29E2C3604();

  [v46 activateConstraints_];

  type metadata accessor for UILayoutPriority(0);
  v94 = 1065353216;
  v95 = 1132068864;
  sub_29E29115C(&qword_2A1A61A28, type metadata accessor for UILayoutPriority);
  sub_29E2C0524();
  LODWORD(v64) = v96;
  [v51 setContentHuggingPriority:1 forAxis:v64];
  v94 = 1065353216;
  v95 = 1148846080;
  sub_29E2C0534();
  LODWORD(v65) = v96;
  v66 = v51;
  [v51 setContentCompressionResistancePriority:1 forAxis:v65];
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_29E2CE070;
  v68 = v93;
  v69 = [v93 topAnchor];

  v70 = [v66 bottomAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:6.0];

  *(v67 + 32) = v71;
  v72 = [v68 leadingAnchor];

  v73 = [v26 layoutMarginsGuide];
  v74 = [v73 leadingAnchor];

  v75 = [v72 constraintEqualToAnchor_];
  *(v67 + 40) = v75;
  v76 = [v26 layoutMarginsGuide];
  v77 = [v76 trailingAnchor];

  v78 = [v68 trailingAnchor];
  v79 = [v77 constraintGreaterThanOrEqualToAnchor_];

  *(v67 + 48) = v79;
  v80 = [v26 bottomAnchor];
  v81 = [v68 bottomAnchor];

  v82 = [v80 constraintEqualToAnchor:v81 constant:15.0];
  *(v67 + 56) = v82;
  v83 = sub_29E2C3604();

  [v91 activateConstraints_];

  v94 = 0x40000000;
  v95 = 1132068864;
  sub_29E2C0524();
  LODWORD(v84) = v96;
  [v68 setContentHuggingPriority:1 forAxis:v84];
  v94 = 0x40000000;
  v95 = 1148846080;
  sub_29E2C0534();
  LODWORD(v85) = v96;
  [v68 setContentCompressionResistancePriority:1 forAxis:v85];
}

id sub_29E28EBAC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_29E28EC68()
{
  result = type metadata accessor for CycleFactorsSectionViewModel(319);
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

id sub_29E28ED28()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16IntervalPillView____lazy_storage___dateComponentLabel;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16IntervalPillView____lazy_storage___dateComponentLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16IntervalPillView____lazy_storage___dateComponentLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v4 setNumberOfLines_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29E28EDB0(char *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_29E2C0514();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCBB4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16IntervalPillView_maxDays] = 60;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16IntervalPillView____lazy_storage___dateComponentLabel] = 0;
  v13 = *(v9 + 16);
  v13(&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16IntervalPillView_startDate], a1, v8, v10);
  (v13)(&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16IntervalPillView_endDate], a2, v8);
  v14 = a1;
  v15 = type metadata accessor for IntervalPillView(0);
  v42.receiver = v2;
  v42.super_class = v15;
  v16 = objc_msgSendSuper2(&v42, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29E15177C(v12);
  v17 = sub_29E2BCB24();
  v18 = *(v9 + 8);
  v18(v12, v8);
  if (v17)
  {
    sub_29E29093C();
    v19 = sub_29E28ED28();
    sub_29E28F338(v19);

    sub_29DEAC750();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29E2CAB20;
    v21 = sub_29E2C0B54();
    v22 = MEMORY[0x29EDC7870];
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    sub_29E2C4034();
    swift_unknownObjectRelease();

    v18(a2, v8);
    v18(v14, v8);
  }

  else
  {
    ObjectType = a2;
    sub_29E2C04B4();
    v23 = v16;
    v24 = sub_29E2C0504();
    v25 = sub_29E2C3A34();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v41 = v36;
      *v26 = 136446210;
      v40 = swift_getObjectType();
      sub_29E2911A4(0, &qword_2A1820A40, type metadata accessor for IntervalPillView, MEMORY[0x29EDCA1E0]);
      v27 = sub_29E2C3424();
      v29 = sub_29DFAA104(v27, v28, &v41);
      v35 = v14;
      v30 = v29;

      *(v26 + 4) = v30;
      _os_log_impl(&dword_29DE74000, v24, v25, "[%{public}s] Factor start date is after today's date, so IntervalPillView will be a frame of size .zero", v26, 0xCu);
      v31 = v36;
      sub_29DE93B3C(v36);
      MEMORY[0x29ED82140](v31, -1, -1);
      MEMORY[0x29ED82140](v26, -1, -1);

      v18(ObjectType, v8);
      v32 = v35;
    }

    else
    {

      v18(ObjectType, v8);
      v32 = v14;
    }

    v18(v32, v8);
    (*(v38 + 8))(v7, v39);
  }

  return v16;
}

uint64_t sub_29E28F338(void *a1)
{
  v118 = a1;
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v109 = &v109 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_29E2C3384();
  v112 = *(v110 - 8);
  MEMORY[0x2A1C7C4A8](v110);
  v117 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v111 = &v109 - v5;
  v124 = sub_29E2BCEA4();
  v131 = *(v124 - 8);
  MEMORY[0x2A1C7C4A8](v124);
  v7 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_29E2BC5F4();
  v125 = *(v126 - 8);
  MEMORY[0x2A1C7C4A8](v126);
  v119 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v128 = &v109 - v10;
  MEMORY[0x2A1C7C4A8](v11);
  v127 = &v109 - v12;
  MEMORY[0x2A1C7C4A8](v13);
  v129 = &v109 - v14;
  sub_29E2BCE44();
  sub_29E291088(0, &qword_2A1A61CF0, MEMORY[0x29EDB9D00]);
  v16 = v15;
  v17 = sub_29E2BCE84();
  v18 = *(v17 - 8);
  v120 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v114 = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29E2CAB20;
  v21 = *MEMORY[0x29EDB9CB8];
  v115 = *(v18 + 104);
  v115(v20 + v19, v21, v17);
  sub_29DE924A4(v20);
  swift_setDeallocating();
  (*(v18 + 8))(v20 + v19, v17);
  swift_deallocClassInstance();
  v122 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16IntervalPillView_startDate;
  v123 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16IntervalPillView_endDate;
  sub_29E2BCD04();

  v22 = *(v131 + 8);
  v131 += 8;
  v121 = v22;
  v22(v7, v124);
  sub_29E2BCE44();
  v23 = v120;
  v113 = v19 + 2 * v120;
  v24 = swift_allocObject();
  v130 = xmmword_29E2CD7A0;
  *(v24 + 16) = xmmword_29E2CD7A0;
  v116 = *MEMORY[0x29EDB9CD8];
  v25 = v115;
  (v115)(v24 + v19);
  v25(v24 + v19 + v23, v21, v17);
  sub_29DE924A4(v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_29E2BCD04();

  v26 = v124;
  v121(v7, v124);
  sub_29E2BCE44();
  v27 = swift_allocObject();
  *(v27 + 16) = v130;
  v25(v27 + v19, *MEMORY[0x29EDB9CD0], v17);
  v25(v27 + v19 + v120, v116, v17);
  sub_29DE924A4(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_29E2BCD04();

  v121(v7, v26);
  v138 = MEMORY[0x29EDCA190];
  sub_29E291088(0, &qword_2A1820A30, sub_29E2910DC);
  inited = swift_initStackObject();
  *(inited + 16) = v130;
  v29 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  sub_29DE9408C(0, &unk_2A1A61A00);
  v30 = v29;
  v31 = sub_29E2C3FD4();
  v32 = *MEMORY[0x29EDC7640];
  *(inited + 40) = v31;
  *(inited + 48) = v32;
  v33 = objc_opt_self();
  v34 = v32;
  *(inited + 56) = [v33 systemIndigoColor];
  v35 = sub_29E18655C(inited);
  swift_setDeallocating();
  sub_29E2910DC();
  swift_arrayDestroy();
  v36 = swift_initStackObject();
  *(v36 + 16) = v130;
  *(v36 + 32) = v30;
  *(v36 + 40) = sub_29E2C3FD4();
  *(v36 + 48) = v34;
  v37 = v129;
  *(v36 + 56) = [v33 systemIndigoColor];
  v38 = sub_29E18655C(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  v39 = sub_29E2BC554();
  if ((v40 & 1) != 0 || v39 > 60)
  {
    v42 = sub_29E2BC594();
    if ((v43 & 1) != 0 || v42 > 0)
    {
      v41 = v119;
      v44 = v119;
      v45 = &v140;
    }

    else
    {
      v41 = v119;
      v44 = v119;
      v45 = &v139;
    }

    (*(v125 + 16))(v44, *(v45 - 32), v126);
  }

  else
  {
    v41 = v119;
    (*(v125 + 16))(v119, v37, v126);
  }

  v46 = sub_29E2BC594();
  v47 = MEMORY[0x29EDCA190];
  if ((v48 & 1) == 0 && v46 >= 1)
  {
    v136 = v46;
    sub_29E2C48D4();
    sub_29DE9408C(0, &qword_2A181A4D8);
    v49 = sub_29E1205FC();
    if (v50)
    {
      v136 = v49;
      v137 = v50;
      v134 = 32;
      v135 = 0xE100000000000000;
      v132 = 41154;
      v133 = 0xA200000000000000;
      sub_29DE9DE68();
      sub_29E2C4374();

      v131 = v38;
      sub_29E0DA1F8(v38);
      *&v130 = v35;
      sub_29E0DA1F8(v35);
      v51 = objc_allocWithZone(MEMORY[0x29EDBA038]);
      v52 = sub_29E2C33A4();

      type metadata accessor for Key(0);
      sub_29E29115C(&qword_2A18177F0, type metadata accessor for Key);
      v53 = sub_29E2C31F4();

      v54 = [v51 initWithString:v52 attributes:v53];

      v55 = sub_29E2C31F4();

      v56 = v54;
      v57 = [v56 string];
      if (!v57)
      {
        _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v57 = sub_29E2C33A4();
      }

      v58 = [objc_allocWithZone(MEMORY[0x29EDBA0F8]) initWithString_];

      v59 = sub_29E2C33A4();

      v60 = [v58 rangeOfString_];
      v62 = v61;

      [v56 addAttributes:v55 range:{v60, v62}];
      [objc_allocWithZone(MEMORY[0x29EDB9F30]) initWithAttributedString_];

      MEMORY[0x29ED7FDC0]();
      v41 = v119;
      v37 = v129;
      if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29E2C3644();
      }

      sub_29E2C3674();
      v47 = v138;
      v38 = v131;
      v35 = v130;
    }

    else
    {

      v47 = MEMORY[0x29EDCA190];
    }
  }

  v63 = sub_29E2BC5B4();
  if ((v64 & 1) == 0 && v63 >= 1)
  {
    v136 = v63;
    sub_29E2C48D4();
    sub_29DE9408C(0, &qword_2A181A4D8);
    v65 = sub_29E1202FC();
    if (v66)
    {
      v136 = v65;
      v137 = v66;
      v134 = 32;
      v135 = 0xE100000000000000;
      v132 = 41154;
      v133 = 0xA200000000000000;
      sub_29DE9DE68();
      sub_29E2C4374();

      v131 = v38;
      sub_29E0DA1F8(v38);
      *&v130 = v35;
      sub_29E0DA1F8(v35);
      v67 = objc_allocWithZone(MEMORY[0x29EDBA038]);
      v68 = sub_29E2C33A4();

      type metadata accessor for Key(0);
      sub_29E29115C(&qword_2A18177F0, type metadata accessor for Key);
      v69 = sub_29E2C31F4();

      v70 = [v67 initWithString:v68 attributes:v69];

      v71 = sub_29E2C31F4();

      v72 = v70;
      v73 = [v72 string];
      if (!v73)
      {
        _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v73 = sub_29E2C33A4();
      }

      v74 = [objc_allocWithZone(MEMORY[0x29EDBA0F8]) initWithString_];

      v75 = sub_29E2C33A4();

      v76 = [v74 rangeOfString_];
      v78 = v77;

      [v72 addAttributes:v71 range:{v76, v78}];
      [objc_allocWithZone(MEMORY[0x29EDB9F30]) initWithAttributedString_];

      MEMORY[0x29ED7FDC0]();
      v41 = v119;
      v37 = v129;
      if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29E2C3644();
      }

      sub_29E2C3674();
      v47 = v138;
      v38 = v131;
      v35 = v130;
    }

    else
    {
    }
  }

  v79 = sub_29E2BC554();
  if ((v80 & 1) != 0 || v79 < 1)
  {
    goto LABEL_36;
  }

  v136 = v79;
  v81 = sub_29E2C48D4();
  sub_29DE9408C(0, &qword_2A181A4D8);
  v82 = sub_29E11FCCC();
  if (!v83)
  {

LABEL_36:

    v96 = v117;
    goto LABEL_37;
  }

  *&v130 = v81;
  v136 = v82;
  v137 = v83;
  v134 = 32;
  v135 = 0xE100000000000000;
  v132 = 41154;
  v133 = 0xA200000000000000;
  sub_29DE9DE68();
  sub_29E2C4374();

  v131 = v38;
  sub_29E0DA1F8(v38);
  sub_29E0DA1F8(v35);

  v84 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v85 = sub_29E2C33A4();

  type metadata accessor for Key(0);
  sub_29E29115C(&qword_2A18177F0, type metadata accessor for Key);
  v86 = sub_29E2C31F4();

  v87 = [v84 initWithString:v85 attributes:v86];

  v88 = sub_29E2C31F4();

  v89 = v87;
  v90 = [v89 string];
  if (!v90)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v90 = sub_29E2C33A4();
  }

  v91 = [objc_allocWithZone(MEMORY[0x29EDBA0F8]) initWithString_];

  v92 = sub_29E2C33A4();

  v93 = [v91 rangeOfString_];
  v95 = v94;

  [v89 addAttributes:v88 range:{v93, v95}];
  [objc_allocWithZone(MEMORY[0x29EDB9F30]) initWithAttributedString_];

  MEMORY[0x29ED7FDC0]();
  v37 = v129;
  v96 = v117;
  if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29E2C3644();
  }

  sub_29E2C3674();
  v47 = v138;
  v38 = v131;
LABEL_37:
  if ((MEMORY[0x29ED78D00](v41, v37) & 1) == 0)
  {
    if (v47 >> 62)
    {
      if (sub_29E2C4484() == 1)
      {
        goto LABEL_45;
      }
    }

    else if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_45;
    }

    MEMORY[0x29ED78D00](v41, v127);
    v97 = (v112 + 16);
    v98 = v111;
    sub_29E2C3314();
    v99 = v98;
    v100 = v110;
    (*v97)(v96, v99, v110);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v101 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v112 + 8))(v111, v100);
  }

LABEL_45:
  sub_29DE9408C(0, &qword_2A1817B40);
  v102 = sub_29E2C3604();
  v103 = sub_29E2C33A4();

  sub_29E0DA1F8(v38);

  type metadata accessor for Key(0);
  sub_29E29115C(&qword_2A18177F0, type metadata accessor for Key);
  v104 = sub_29E2C31F4();

  v105 = HKUIJoinAttributedStringsWithFormatAndAttributes();

  [v118 setAttributedText_];
  v106 = *(v125 + 8);
  v107 = v126;
  v106(v41, v126);
  v106(v128, v107);
  v106(v127, v107);
  v106(v37, v107);
}

void sub_29E29093C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 accessibilityContrast];

  v3 = objc_opt_self();
  v4 = &selRef_hkmc_highContrastCycleFactorsTimeIntervalBackgroundColor;
  if (v2 != 1)
  {
    v4 = &selRef_hkmc_cycleFactorsTimeIntervalBackgroundColor;
  }

  v5 = [v3 *v4];
  [v0 setBackgroundColor_];

  v6 = [v0 layer];
  [v6 setCornerRadius_];

  [v0 directionalLayoutMargins];
  [v0 setDirectionalLayoutMargins_];
  [v0 directionalLayoutMargins];
  [v0 setDirectionalLayoutMargins_];
  v7 = sub_29E28ED28();
  [v0 addSubview_];

  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16IntervalPillView____lazy_storage___dateComponentLabel;
  [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16IntervalPillView____lazy_storage___dateComponentLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = objc_opt_self();
  sub_29DE99B54();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29E2CE070;
  v11 = [*&v0[v8] topAnchor];
  v12 = [v0 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:3.0];

  *(v10 + 32) = v13;
  v14 = [*&v0[v8] leadingAnchor];
  v15 = [v0 layoutMarginsGuide];
  v16 = [v15 leadingAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v10 + 40) = v17;
  v18 = [v0 layoutMarginsGuide];
  v19 = [v18 trailingAnchor];

  v20 = [*&v0[v8] trailingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v10 + 48) = v21;
  v22 = [v0 bottomAnchor];
  v23 = [*&v0[v8] bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:4.0];

  *(v10 + 56) = v24;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v25 = sub_29E2C3604();

  [v9 activateConstraints_];
}

uint64_t sub_29E290E10()
{
  result = sub_29E2BCBB4();
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

uint64_t sub_29E290EE0()
{
  result = sub_29DE9408C(319, &qword_2A1A61D50);
  if (v1 <= 0x3F)
  {
    result = sub_29E2BCBB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_29E290F94(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_noFactorsLabel);
  sub_29DE9408C(0, &unk_2A1A61A00);
  v2 = sub_29E2C3FD4();
  [v1 setFont_];
}

void sub_29E291040()
{
  v0 = sub_29E28ED28();
  sub_29E28F338(v0);
}

void sub_29E291088(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C48E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E2910DC()
{
  if (!qword_2A1820A38)
  {
    type metadata accessor for Key(255);
    sub_29DE9408C(255, &qword_2A1A619F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1820A38);
    }
  }
}

uint64_t sub_29E29115C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E2911A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    v7 = a3(255);
    result = a4(v7);
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29E2911F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleFactorsSectionViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E29125C()
{
  v1 = v0;
  v2 = MEMORY[0x29EDCA190];
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_viewModels) = MEMORY[0x29EDCA190];
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_factorSubviews) = v2;
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_noFactorsLabel;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView____lazy_storage___shortMonthDayYearDateFormatter) = 0;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23CycleFactorsSectionView_disclosureIndicator;
  sub_29DE9408C(0, &qword_2A1818D18);
  v5 = sub_29E05D384();
  v6 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];

  v7 = [objc_opt_self() tertiaryLabelColor];
  [v6 setTintColor_];

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v4) = v6;
  sub_29E2C4724();
  __break(1u);
}

void sub_29E2913B8(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleFactorsSectionSingleFactorView_titleLabel);
  sub_29DE9408C(0, &unk_2A1A61A00);
  v3 = sub_29E2C3FD4();
  [v2 setFont_];

  v4 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleFactorsSectionSingleFactorView_subtitleLabel);
  v5 = sub_29E2C3FD4();
  [v4 setFont_];
}

uint64_t sub_29E2914C0(char a1, uint64_t a2)
{
  *(v3 + 144) = a2;
  *(v3 + 152) = v2;
  *(v3 + 185) = a1;
  return MEMORY[0x2A1C73D48](sub_29E2914E4, 0, 0);
}

uint64_t sub_29E2914E4()
{
  v1 = [*(v0 + 152) featureIdentifier];
  v2 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v4 = v3;
  if (v2 != _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() || v4 != v5)
  {
    v7 = sub_29E2C4914();

    if (v7)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

LABEL_8:
  v8 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  *(v0 + 160) = v8;
  v9 = HKFeatureSettingsKeyForIsLoggingHiddenForDisplayTypeIdentifier();
  if (!v9)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v9 = sub_29E2C33A4();
  }

  *(v0 + 168) = v9;
  v10 = *(v0 + 152);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 184;
  *(v0 + 24) = sub_29E2916FC;
  v11 = swift_continuation_init();
  sub_29DEE97C4();
  *(v0 + 136) = v12;
  *(v0 + 80) = MEMORY[0x29EDCA5F8];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_29E291C34;
  *(v0 + 104) = &unk_2A24C1DF8;
  *(v0 + 112) = v11;
  [v10 setFeatureSettingNumber:v8 forKey:v9 completion:v0 + 80];

  return MEMORY[0x2A1C73CC0](v0 + 16);
}

uint64_t sub_29E2916FC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_29E291874;
  }

  else
  {
    v2 = sub_29E29180C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E29180C()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29E291874()
{
  v1 = v0[21];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_29E2918EC(char a1, uint64_t a2)
{
  *(v3 + 144) = a2;
  *(v3 + 152) = v2;
  *(v3 + 185) = a1;
  return MEMORY[0x2A1C73D48](sub_29E291910, 0, 0);
}

uint64_t sub_29E291910()
{
  v1 = [*(v0 + 152) featureIdentifier];
  v2 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v4 = v3;
  if (v2 != _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() || v4 != v5)
  {
    v7 = sub_29E2C4914();

    if (v7)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

LABEL_8:
  v8 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  *(v0 + 160) = v8;
  v9 = HKFeatureSettingsKeyForDeviationDetectionTypeEnabled();
  if (!v9)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v9 = sub_29E2C33A4();
  }

  *(v0 + 168) = v9;
  v10 = *(v0 + 152);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 184;
  *(v0 + 24) = sub_29E291B24;
  v11 = swift_continuation_init();
  sub_29DEE97C4();
  *(v0 + 136) = v12;
  *(v0 + 80) = MEMORY[0x29EDCA5F8];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_29E291C34;
  *(v0 + 104) = &unk_2A24C1E20;
  *(v0 + 112) = v11;
  [v10 setFeatureSettingNumber:v8 forKey:v9 completion:v0 + 80];

  return MEMORY[0x2A1C73CC0](v0 + 16);
}

uint64_t sub_29E291B24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_29E291D88;
  }

  else
  {
    v2 = sub_29E291D84;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E291C34(uint64_t a1, char a2, void *a3)
{
  sub_29E291D18();
  v6 = *sub_29DE966D4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29DE96670();
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x2A1C73CE0](v6, v7);
  }

  else
  {
    **(*(v6 + 64) + 40) = a2;

    return MEMORY[0x2A1C73CD8](v6);
  }
}

unint64_t sub_29E291D18()
{
  result = qword_2A1820A48;
  if (!qword_2A1820A48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1820A48);
  }

  return result;
}

void sub_29E291F20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v12 = *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView_footerTextView);
  if (a2)
  {
    v13 = v12;
    v11 = sub_29E2C33A4();
  }

  else
  {
    v14 = v12;
  }

  [v12 setText_];

  v15 = (v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView_highlightedText);
  *v15 = a3;
  v15[1] = a4;
  sub_29E2BF404();

  v16 = (v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView_tapCompletion);
  *v16 = a5;
  v16[1] = a6;

  sub_29E292600();
}

uint64_t sub_29E292128()
{
  v1 = v0;
  v36[1] = swift_getObjectType();
  v2 = sub_29E2BE814();
  v36[0] = v2;
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 clearColor];
  [v1 setBackgroundColor_];

  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView_footerTextView;
  [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView_footerTextView] setEditable_];
  [*&v1[v8] setSelectable_];
  [*&v1[v8] setDelegate_];
  v9 = *&v1[v8];
  v10 = [v6 clearColor];
  [v9 setBackgroundColor_];

  [*&v1[v8] setScrollEnabled_];
  v11 = [*&v1[v8] textContainer];
  [v11 setLineFragmentPadding_];

  [*&v1[v8] setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  sub_29DE99B54();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E2CE070;
  v13 = [*&v1[v8] leadingAnchor];
  v14 = [v1 leadingAnchor];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v16 = v15;
  v17 = *(v3 + 8);
  v17(v5, v2);
  v18 = [v13 constraintEqualToAnchor:v14 constant:v16];

  *(v12 + 32) = v18;
  v19 = [*&v1[v8] topAnchor];
  v20 = [v1 topAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v12 + 40) = v21;
  v22 = [v1 bottomAnchor];
  v23 = [*&v1[v8] bottomAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v12 + 48) = v24;
  v25 = [v1 trailingAnchor];
  v26 = [*&v1[v8] trailingAnchor];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v28 = v27;
  v17(v5, v36[0]);
  v29 = [v25 constraintEqualToAnchor:v26 constant:v28];

  *(v12 + 56) = v29;
  v30 = objc_opt_self();
  sub_29DE9408C(0, &qword_2A1A61A10);
  v31 = sub_29E2C3604();

  [v30 activateConstraints_];

  sub_29DEBEA38(0, &qword_2A1817FF0, sub_29DEA6B18);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_29E2CAB20;
  v33 = sub_29E2C0B54();
  v34 = MEMORY[0x29EDC7870];
  *(v32 + 32) = v33;
  *(v32 + 40) = v34;
  sub_29E2C4034();
  swift_unknownObjectRelease();
}

void sub_29E292600()
{
  v1 = v0;
  v2 = sub_29DE9408C(0, &unk_2A1A61A00);
  v36 = sub_29E2C3FD4();
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView_footerTextView;
  v4 = [*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView_footerTextView) text];
  if (v4)
  {
    v34 = v3;
    v5 = v4;
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

    sub_29DEBEA38(0, &qword_2A1817FD0, sub_29DEA0430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CD7A0;
    v35 = v1;
    v7 = *MEMORY[0x29EDC7638];
    *(inited + 32) = *MEMORY[0x29EDC7638];
    *(inited + 40) = v36;
    v8 = *MEMORY[0x29EDC7640];
    *(inited + 64) = v2;
    *(inited + 72) = v8;
    v9 = objc_opt_self();
    v10 = v7;
    v37 = v36;
    v33 = v8;
    v11 = [v9 secondaryLabelColor];
    v12 = sub_29DE9408C(0, &qword_2A1817FE0);
    *(inited + 104) = v12;
    *(inited + 80) = v11;
    sub_29E185054(inited);
    swift_setDeallocating();
    sub_29DEA0430();
    swift_arrayDestroy();
    v13 = objc_allocWithZone(MEMORY[0x29EDBA038]);
    v14 = sub_29E2C33A4();
    type metadata accessor for Key(0);
    sub_29DEA75B0();
    v15 = sub_29E2C31F4();

    v16 = [v13 initWithString:v14 attributes:v15];

    v17 = v35;
    if (*(v35 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView_highlightedText + 8))
    {
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_29E2CD7A0;
      *(v18 + 32) = v33;
      v19 = v33;
      sub_29E2BF404();
      *(v18 + 40) = [v9 hk_appKeyColor];
      v20 = *MEMORY[0x29EDC7648];
      v21 = MEMORY[0x29EDC99B0];
      *(v18 + 64) = v12;
      *(v18 + 72) = v20;
      *(v18 + 104) = v21;
      *(v18 + 80) = 0x2F2F3A706174;
      *(v18 + 88) = 0xE600000000000000;
      v22 = v20;
      sub_29E185054(v18);
      swift_setDeallocating();
      swift_arrayDestroy();
      v23 = sub_29E2C31F4();

      v24 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
      v25 = sub_29E2C33A4();

      v26 = [v24 initWithString_];

      v27 = sub_29E2C33A4();

      v28 = [v26 rangeOfString_];
      v30 = v29;

      v17 = v35;
      [v16 addAttributes:v23 range:{v28, v30}];
    }

    else
    {
    }

    v31 = *(v17 + v34);
    v32 = v16;
    [v31 setAttributedText_];
  }

  else
  {
  }
}

id sub_29E292A6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TappableCollectionViewFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E292B4C(uint64_t a1, id a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_29E2BC8E4();
  if (v8)
  {
    if (v7 == 7364980 && v8 == 0xE300000000000000)
    {
    }

    else
    {
      v9 = sub_29E2C4914();

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    v10 = [*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView_footerTextView) text];
    if (v10)
    {
      v11 = v10;
      _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

      if (*(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView_highlightedText + 8))
      {
        v12 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
        sub_29E2BF404();
        v13 = sub_29E2C33A4();

        v14 = [v12 initWithString_];

        v15 = sub_29E2C33A4();

        v16 = [v14 rangeOfString_];
        v18 = v17;

        if (v16 == a2 && v18 == a3)
        {
          v20 = *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView_tapCompletion);

          v20(v21);
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

double sub_29E292D04()
{
  v1 = *(v0 + *(type metadata accessor for CycleChartsModel() + 32));
  v2 = *(v1 + 16);
  if (v2)
  {
    v23 = MEMORY[0x29EDCA190];
    sub_29E181180(0, v2, 0);
    v3 = v23;
    v4 = v1 + 32;
    do
    {
      sub_29DE9DC34(v4, v20);
      v6 = v21;
      v5 = v22;
      sub_29DE966D4(v20, v21);
      v7 = (*(*(v5 + 16) + 24))(v6);
      v8 = v7;
      if (v9)
      {
        v8 = qword_29E2E9DD8[v7];
      }

      sub_29DE93B3C(v20);
      v23 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        sub_29E181180((v10 > 1), v11 + 1, 1);
        v3 = v23;
      }

      *(v3 + 16) = v12;
      *(v3 + 8 * v11 + 32) = v8;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x29EDCA190];
    v12 = *(MEMORY[0x29EDCA190] + 16);
    if (!v12)
    {
      v14 = 0.0;
      goto LABEL_17;
    }
  }

  if (v12 <= 3)
  {
    v13 = 0;
    v14 = 0.0;
LABEL_15:
    v17 = v12 - v13;
    v18 = 8 * v13 + 32;
    do
    {
      v14 = v14 + *(v3 + v18);
      v18 += 8;
      --v17;
    }

    while (v17);
    goto LABEL_17;
  }

  v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = (v3 + 48);
  v14 = 0.0;
  v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v14 = v14 + *(v15 - 2) + *(v15 - 1) + *v15 + v15[1];
    v15 += 4;
    v16 -= 4;
  }

  while (v16);
  if (v12 != v13)
  {
    goto LABEL_15;
  }

LABEL_17:

  return v14;
}

uint64_t sub_29E292EC8()
{
  v1 = v0;
  sub_29E292FD8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E2CAB20;
  v3 = type metadata accessor for CycleChartsModel();
  v4 = (v1 + *(v3 + 24));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  *(v2 + 56) = &type metadata for CycleDayHeaderRow;
  *(v2 + 64) = &off_2A24BD788;
  v9 = swift_allocObject();
  *(v2 + 32) = v9;
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;
  v9[5] = v8;
  v10 = sub_29E2BF404();
  sub_29DFCB7C8(v10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CAB20;
  v12 = *(v3 + 28);
  *(inited + 56) = &type metadata for CycleDateFooterRow;
  *(inited + 64) = &off_2A24B4EB0;
  *(inited + 32) = *(v1 + v12);
  sub_29DFCB7C8(inited);
  return v2;
}

void sub_29E292FD8()
{
  if (!qword_2A181DA80)
  {
    sub_29DEF615C();
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181DA80);
    }
  }
}

uint64_t sub_29E293030()
{
  v1 = *(v0 + 24);
  sub_29E2C4A04();
  sub_29E2C34B4();
  if (!v1)
  {
    sub_29E2C4A24();
    if (*(v0 + 40))
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_29E2C4A24();
    return sub_29E2C4A54();
  }

  sub_29E2C4A24();
  sub_29E2C34B4();
  if (!*(v0 + 40))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29E2C4A24();
  sub_29E2C34B4();
  return sub_29E2C4A54();
}

uint64_t sub_29E293100(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_29E2965C0(v7, v8) & 1;
}

uint64_t sub_29E29314C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_29E2C34B4();
  if (!v1)
  {
    sub_29E2C4A24();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_29E2C4A24();
  }

  sub_29E2C4A24();
  sub_29E2C34B4();
  if (!v2)
  {
    return sub_29E2C4A24();
  }

LABEL_3:
  sub_29E2C4A24();

  return sub_29E2C34B4();
}

uint64_t sub_29E293208()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_29E2C4A04();
  sub_29E2C34B4();
  if (!v1)
  {
    sub_29E2C4A24();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_29E2C4A24();
    return sub_29E2C4A54();
  }

  sub_29E2C4A24();
  sub_29E2C34B4();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29E2C4A24();
  sub_29E2C34B4();
  return sub_29E2C4A54();
}

id sub_29E2932CC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29CycleStatisticsHorizontalCell_item;
  swift_beginAccess();
  sub_29E297AB4(v1 + v6, &v23, sub_29DEC357C);
  if (*(&v24 + 1))
  {
    sub_29DF61DEC();
    type metadata accessor for CycleStatisticsSummaryItem();
    if (swift_dynamicCast())
    {

      return [v1 setNeedsUpdateConfiguration];
    }
  }

  else
  {
    sub_29E296AF4(&v23, sub_29DEC357C);
  }

  sub_29E2C04B4();
  v8 = v1;
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A14();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v2;
    v22[0] = v12;
    v13 = v12;
    *v11 = 136446466;
    v14 = sub_29E2C4AE4();
    v16 = sub_29DFAA104(v14, v15, v22);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_29E297AB4(v1 + v6, &v23, sub_29DEC357C);
    sub_29DEC357C();
    v17 = sub_29E2C3464();
    v19 = sub_29DFAA104(v17, v18, v22);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Received unexpected item %s.", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v13, -1, -1);
    MEMORY[0x29ED82140](v11, -1, -1);

    (*(v3 + 8))(v5, v21);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  swift_beginAccess();
  sub_29DEF9180(&v23, v1 + v6);
  return swift_endAccess();
}

id sub_29E2935E8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  sub_29E296684(0, &qword_2A181CEA8, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v20 - v11;
  v13 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29CycleStatisticsHorizontalCell_item];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29E2C06D4();
  v15 = sub_29E2C06E4();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  MEMORY[0x29ED805C0](v12);
  v16 = v14;
  [v16 setAutomaticallyUpdatesBackgroundConfiguration_];
  v17 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v16 setBackgroundColor_];

  *(swift_allocObject() + 16) = v16;
  v18 = v16;
  sub_29E2C3E04();

  return v18;
}

uint64_t sub_29E2937F4()
{
  sub_29E2966F8();
  v2[3] = v0;
  v2[4] = sub_29E296AAC(&qword_2A1820AB0, sub_29E2966F8);
  sub_29DEBB7E8(v2);
  sub_29E2967BC();
  sub_29E2976B8(&qword_2A1820AA0, sub_29E2967BC, sub_29E296958);
  sub_29E2C1DE4();
  return MEMORY[0x29ED805A0](v2);
}

uint64_t sub_29E2938FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_29E2C1F14();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CycleStatisticsHorizontalView();
  MEMORY[0x2A1C7C4A8](v7);
  v9 = (v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E296858();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29CycleStatisticsHorizontalCell_item;
  swift_beginAccess();
  sub_29E297AB4(a1 + v15, &v25, sub_29DEC357C);
  if (!v26)
  {
    sub_29E296AF4(&v25, sub_29DEC357C);
    goto LABEL_7;
  }

  sub_29DF61DEC();
  type metadata accessor for CycleStatisticsSummaryItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v19 = 1;
    v18 = v23;
    goto LABEL_8;
  }

  v22[1] = v24;
  v16 = *(v24 + 16);
  *(v9 + *(v7 + 20)) = swift_getKeyPath();
  sub_29E296684(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  *v9 = v16;
  sub_29E2BF404();
  sub_29E2C1F04();
  v17 = sub_29E296AAC(&qword_2A1820A98, type metadata accessor for CycleStatisticsHorizontalView);
  sub_29E2C24A4();
  (*(v4 + 8))(v6, v3);
  sub_29E296AF4(v9, type metadata accessor for CycleStatisticsHorizontalView);
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v25 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000012, 0x800000029E3015C0);
  *&v25 = v7;
  *(&v25 + 1) = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v23;
  sub_29E2C23B4();

  (*(v12 + 8))(v14, v11);
  v19 = 0;
LABEL_8:
  sub_29E297034(0, &qword_2A1820A88, sub_29E296858, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
  return (*(*(v20 - 8) + 56))(v18, v19, 1, v20);
}

unint64_t sub_29E293E80()
{
  result = qword_2A1820A70;
  if (!qword_2A1820A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1820A70);
  }

  return result;
}

uint64_t sub_29E293ED4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E2C1A64();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E296684(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CycleStatisticsHorizontalView();
  sub_29DF5F0F4(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_29E2C16E4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_29E2C3A24();
    v13 = sub_29E2C1F84();
    sub_29E2C03B4();

    sub_29E2C1A54();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_29E2940E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29CycleStatisticsHorizontalCell_item;
  swift_beginAccess();
  return sub_29E297AB4(v1 + v3, a1, sub_29DEC357C);
}

uint64_t sub_29E294154(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29CycleStatisticsHorizontalCell_item;
  swift_beginAccess();
  sub_29DEC3690(a1, v1 + v3);
  swift_endAccess();
  sub_29E2932CC();
  return sub_29E296AF4(a1, sub_29DEC357C);
}

id (*sub_29E2941D4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29E294238;
}

id sub_29E294238(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_29E2932CC();
  }

  return result;
}

uint64_t sub_29E29426C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  sub_29E296C70(0);
  v42 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E297034(0, &qword_2A1820B90, sub_29E2974B4, sub_29E296C70, MEMORY[0x29EDBC7E8]);
  v39 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v39 - v7;
  sub_29E2974B4(0);
  v40 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2C16E4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v39 - v17;
  sub_29E293ED4(&v39 - v17);
  (*(v13 + 104))(v15, *MEMORY[0x29EDBC4B8], v12);
  sub_29E296AAC(&qword_2A181EC98, MEMORY[0x29EDBC518]);
  v19 = sub_29E2C32A4();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  v21 = sub_29E2C1A94();
  if (v19)
  {
    *v11 = v21;
    *(v11 + 1) = 0;
    v11[16] = 1;
    sub_29E2977FC(0, &qword_2A1820C08, sub_29E2975AC);
    sub_29E2947C4(v2, &v11[*(v22 + 44)]);
    v23 = sub_29E2C2024();
    sub_29E2C1424();
    v24 = &v11[*(v40 + 36)];
    *v24 = v23;
    *(v24 + 1) = v25;
    *(v24 + 2) = v26;
    *(v24 + 3) = v27;
    *(v24 + 4) = v28;
    v24[40] = 0;
    v29 = sub_29E2974B4;
    sub_29E297868(v11, v8, sub_29E2974B4);
    swift_storeEnumTagMultiPayload();
    sub_29E29775C(&qword_2A1820BE8, sub_29E2974B4, &qword_2A1820BF0, sub_29E2974DC);
    sub_29E29775C(&qword_2A1820BF8, sub_29E296C70, &qword_2A1820C00, sub_29E296C98);
    sub_29E2C1C74();
    v30 = v11;
  }

  else
  {
    *v5 = v21;
    *(v5 + 1) = 0;
    v5[16] = 1;
    sub_29E2977FC(0, &qword_2A1820BE0, sub_29E296CD4);
    sub_29E294DAC(v2, &v5[*(v31 + 44)]);
    v32 = sub_29E2C2024();
    sub_29E2C1424();
    v33 = &v5[*(v42 + 36)];
    *v33 = v32;
    *(v33 + 1) = v34;
    *(v33 + 2) = v35;
    *(v33 + 3) = v36;
    *(v33 + 4) = v37;
    v33[40] = 0;
    v29 = sub_29E296C70;
    sub_29E297868(v5, v8, sub_29E296C70);
    swift_storeEnumTagMultiPayload();
    sub_29E29775C(&qword_2A1820BE8, sub_29E2974B4, &qword_2A1820BF0, sub_29E2974DC);
    sub_29E29775C(&qword_2A1820BF8, sub_29E296C70, &qword_2A1820C00, sub_29E296C98);
    sub_29E2C1C74();
    v30 = v5;
  }

  return sub_29E2978D0(v30, v29);
}

uint64_t sub_29E2947C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  sub_29E03D1E8(0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CycleStatisticsHorizontalView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  sub_29E297610();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2975E8(0);
  v12 = v11 - 8;
  MEMORY[0x2A1C7C4A8](v11);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v43 - v15;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v43 - v18;
  *v10 = sub_29E2C1BD4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_29E2977FC(0, &qword_2A1820C10, sub_29E296E40);
  v20 = *(*a1 + 16);
  *&v47 = 0;
  *(&v47 + 1) = v20;
  swift_getKeyPath();
  sub_29E297AB4(a1, &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CycleStatisticsHorizontalView);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = swift_allocObject();
  sub_29E297A4C(&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for CycleStatisticsHorizontalView);
  sub_29E0FBF34();
  sub_29E296ED8(0);
  sub_29E03D80C();
  sub_29E297728();
  v23 = v19;
  sub_29E2C29A4();
  sub_29E2C2AC4();
  sub_29E2C17D4();
  sub_29E297934(v10, v16, sub_29E297610);
  v24 = &v16[*(v12 + 44)];
  v25 = v52;
  *(v24 + 4) = v51;
  *(v24 + 5) = v25;
  *(v24 + 6) = v53;
  v26 = v48;
  *v24 = v47;
  *(v24 + 1) = v26;
  v27 = v50;
  *(v24 + 2) = v49;
  *(v24 + 3) = v27;
  sub_29E297934(v16, v19, sub_29E2975E8);
  sub_29E02E288();
  if (!sub_29E05D384())
  {
    v28 = [objc_opt_self() hk_disclosureChevronImage];
  }

  sub_29E2C2704();
  v29 = *MEMORY[0x29EDBCAC0];
  v30 = sub_29E2C2754();
  v31 = *(v30 - 8);
  v32 = v44;
  (*(v31 + 104))(v44, v29, v30);
  (*(v31 + 56))(v32, 0, 1, v30);
  v33 = sub_29E2C2734();

  sub_29E296AF4(v32, sub_29E03D1E8);
  v34 = sub_29E2C2614();
  KeyPath = swift_getKeyPath();
  v36 = sub_29E2C2614();
  v37 = swift_getKeyPath();
  v38 = v45;
  sub_29E297868(v23, v45, sub_29E2975E8);
  v39 = v46;
  sub_29E297868(v38, v46, sub_29E2975E8);
  sub_29E296F70(0, &qword_2A1820BB0, sub_29E2975E8, sub_29E29746C);
  v41 = (v39 + *(v40 + 48));
  *v41 = v33;
  v41[1] = KeyPath;
  v41[2] = v34;
  v41[3] = v37;
  v41[4] = v36;

  sub_29E2978D0(v23, sub_29E2975E8);

  return sub_29E2978D0(v38, sub_29E2975E8);
}

uint64_t sub_29E294DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E03D1E8(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E296D10();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v26 - v11;
  *v12 = sub_29E2C1AA4();
  *(v12 + 1) = 0x4030000000000000;
  v12[16] = 0;
  sub_29E2977FC(0, &qword_2A1820C30, sub_29E296DA4);
  sub_29E295110(a1, &v12[*(v13 + 44)]);
  sub_29E02E288();
  if (!sub_29E05D384())
  {
    v14 = [objc_opt_self() hk_disclosureChevronImage];
  }

  sub_29E2C2704();
  v15 = *MEMORY[0x29EDBCAC0];
  v16 = sub_29E2C2754();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  v18 = sub_29E2C2734();

  sub_29E296AF4(v6, sub_29E03D1E8);
  v19 = sub_29E2C2614();
  KeyPath = swift_getKeyPath();
  v21 = sub_29E2C2614();
  v22 = swift_getKeyPath();
  sub_29E297868(v12, v9, sub_29E296D10);
  sub_29E297868(v9, a2, sub_29E296D10);
  sub_29E296F70(0, &qword_2A1820AE8, sub_29E296D10, sub_29E29746C);
  v24 = (a2 + *(v23 + 48));
  *v24 = v18;
  v24[1] = KeyPath;
  v24[2] = v19;
  v24[3] = v22;
  v24[4] = v21;

  sub_29E2978D0(v12, sub_29E296D10);

  return sub_29E2978D0(v9, sub_29E296D10);
}

uint64_t sub_29E295110@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for CycleStatisticsHorizontalView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  sub_29E296E40();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = v24 - v13;
  v15 = *(*a1 + 16);
  v24[0] = 0;
  v24[1] = v15;
  swift_getKeyPath();
  sub_29E297AB4(a1, v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CycleStatisticsHorizontalView);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_29E297A4C(v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for CycleStatisticsHorizontalView);
  sub_29E0FBF34();
  sub_29E296ED8(0);
  sub_29E03D80C();
  sub_29E297728();
  sub_29E2C29A4();
  v18 = *(v9 + 16);
  v18(v11, v14, v8);
  LOBYTE(v24[0]) = 1;
  v18(a2, v11, v8);
  sub_29E296DD8();
  v20 = &a2[*(v19 + 48)];
  v21 = v24[0];
  *v20 = 0;
  v20[8] = v21;
  v22 = *(v9 + 8);
  v22(v14, v8);
  return (v22)(v11, v8);
}

uint64_t sub_29E2953D4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_29E2972F8(0);
  v94 = *(v6 - 8);
  v95 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v83 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_29E2C2984();
  v76 = *(v82 - 8);
  MEMORY[0x2A1C7C4A8](v82);
  v75 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E297034(0, &qword_2A1820C18, sub_29E2973E0, MEMORY[0x29EDBC2A0], MEMORY[0x29EDBC7E8]);
  v77 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v80 = &v74 - v10;
  sub_29E2973E0(0);
  v79 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v74 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2C16E4();
  v86 = *(v13 - 8);
  v87 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v85 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v84 = &v74 - v16;
  sub_29E297398(0);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v81 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v78 = &v74 - v20;
  sub_29E2972C4(0);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v93 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v92 = &v74 - v24;
  v25 = sub_29E2C1F14();
  v26 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2970B8();
  v89 = *(v29 - 8);
  v90 = v29;
  MEMORY[0x2A1C7C4A8](v29);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E296FEC(0);
  MEMORY[0x2A1C7C4A8](v32 - 8);
  v91 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v34);
  v97 = &v74 - v35;
  v36 = *a1;
  v37 = sub_29E2C1BD4();
  LOBYTE(v100) = 1;
  v96 = a2;
  sub_29E296044(a2, v36, &v112);
  v107 = v114;
  v108 = v115;
  v109 = v116;
  v110 = v117;
  v105 = v112;
  v106 = v113;
  v111[2] = v114;
  v111[3] = v115;
  v111[4] = v116;
  v111[5] = v117;
  v111[0] = v112;
  v111[1] = v113;
  sub_29E297AB4(&v105, &v102, sub_29E297200);
  sub_29E296AF4(v111, sub_29E297200);
  *&v104[39] = v107;
  *&v104[55] = v108;
  *&v104[71] = v109;
  *&v104[87] = v110;
  *&v104[7] = v105;
  *&v104[23] = v106;
  v102 = v37;
  v103[0] = v100;
  *&v103[49] = *&v104[48];
  *&v103[65] = *&v104[64];
  *&v103[81] = *&v104[80];
  *&v103[17] = *&v104[16];
  *&v103[33] = *&v104[32];
  *&v103[96] = *(&v110 + 1);
  *&v103[1] = *v104;
  sub_29E2C1F04();
  sub_29E29716C();
  v39 = v38;
  v40 = sub_29E296AAC(&qword_2A1820B50, sub_29E29716C);
  sub_29E2C24A4();
  (*(v26 + 8))(v28, v25);
  v116 = *&v103[48];
  v117 = *&v103[64];
  v118 = *&v103[80];
  v119 = *&v103[96];
  v112 = v102;
  v113 = *v103;
  v114 = *&v103[16];
  v115 = *&v103[32];
  sub_29E296AF4(&v112, sub_29E29716C);
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v102 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000012, 0x800000029E3015C0);
  result = MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v88 = a3;
  v42 = *v96;
  if (v36 >= *(*v96 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v43 = v42 + 48 * v36;
  v44 = *(v43 + 32);
  v45 = *(v43 + 40);
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](v44, v45);

  v100 = 32;
  v101 = 0xE100000000000000;
  v98 = 0;
  v99 = 0xE000000000000000;
  sub_29DE9DE68();
  v46 = 1;
  sub_29E2C4374();

  *&v102 = v39;
  *(&v102 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  v47 = v90;
  sub_29E2C23B4();

  (*(v89 + 8))(v31, v47);
  v48 = v36 == *(v42 + 16) - 1;
  v49 = v88;
  v50 = v92;
  if (!v48)
  {
    v51 = v84;
    sub_29E293ED4(v84);
    v53 = v85;
    v52 = v86;
    v54 = v87;
    (*(v86 + 104))(v85, *MEMORY[0x29EDBC4B8], v87);
    v55 = sub_29E2C16D4();
    v56 = *(v52 + 8);
    v56(v53, v54);
    v56(v51, v54);
    if (v55)
    {
      v57 = v74;
      sub_29E2C2974();
      sub_29E2C2AB4();
      sub_29E2C1564();
      v58 = v80;
      v59 = (v57 + *(v79 + 36));
      v60 = *v103;
      *v59 = v102;
      v59[1] = v60;
      v59[2] = *&v103[16];
      sub_29E297AB4(v57, v58, sub_29E2973E0);
      swift_storeEnumTagMultiPayload();
      sub_29E29799C();
      sub_29E296AAC(&qword_2A1820C28, MEMORY[0x29EDBC2A0]);
      v61 = v78;
      sub_29E2C1C74();
      sub_29E296AF4(v57, sub_29E2973E0);
    }

    else
    {
      v62 = v75;
      sub_29E2C2974();
      v63 = v76;
      v64 = v82;
      (*(v76 + 16))(v80, v62, v82);
      swift_storeEnumTagMultiPayload();
      sub_29E29799C();
      sub_29E296AAC(&qword_2A1820C28, MEMORY[0x29EDBC2A0]);
      v61 = v78;
      sub_29E2C1C74();
      (*(v63 + 8))(v62, v64);
    }

    v65 = v83;
    v66 = v81;
    sub_29E297AB4(v61, v81, sub_29E297398);
    *v65 = 0;
    *(v65 + 8) = 1;
    sub_29E29732C();
    v68 = v67;
    sub_29E297AB4(v66, v65 + *(v67 + 48), sub_29E297398);
    v69 = v65 + *(v68 + 64);
    *v69 = 0;
    *(v69 + 8) = 1;
    sub_29E296AF4(v61, sub_29E297398);
    sub_29E296AF4(v66, sub_29E297398);
    sub_29E297A4C(v65, v50, sub_29E2972F8);
    v46 = 0;
  }

  (*(v94 + 56))(v50, v46, 1, v95);
  v70 = v97;
  v71 = v91;
  sub_29E297868(v97, v91, sub_29E296FEC);
  v72 = v93;
  sub_29E297AB4(v50, v93, sub_29E2972C4);
  sub_29E297868(v71, v49, sub_29E296FEC);
  sub_29E296F70(0, &qword_2A1820B18, sub_29E296FEC, sub_29E2972C4);
  sub_29E297AB4(v72, v49 + *(v73 + 48), sub_29E2972C4);
  sub_29E296AF4(v50, sub_29E2972C4);
  sub_29E2978D0(v70, sub_29E296FEC);
  sub_29E296AF4(v72, sub_29E2972C4);
  return sub_29E2978D0(v71, sub_29E296FEC);
}

uint64_t sub_29E296044@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = *result;
  if (*(*result + 16) <= a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4 + 48 * a2 + 32;
  sub_29DE9DE68();
  sub_29E2BF404();
  v6 = sub_29E2C2294();
  v76 = a2;
  v8 = v7;
  v73 = v4;
  v10 = v9;
  sub_29E2C2634();
  v11 = sub_29E2C2214();
  v13 = v12;
  v15 = v14;

  sub_29DED6478(v6, v8, v10 & 1);

  sub_29E2C2044();
  v16 = sub_29E2C2254();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_29DED6478(v11, v13, v15 & 1);

  v23 = *(v73 + 16);
  if (v23 <= v76)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v70 = v20;
  v75 = v18;
  v71 = v16;
  v78 = v22;
  result = *(v5 + 24);
  if (result)
  {
    sub_29E2BF404();
    v24 = sub_29E2C2294();
    v26 = v25;
    v28 = v27;
    sub_29E2C2054();
    v29 = sub_29E2C2254();
    v31 = v30;
    v33 = v32;

    sub_29DED6478(v24, v26, v28 & 1);

    v34 = sub_29E2C2244();
    v36 = v35;
    v38 = v37;
    sub_29DED6478(v29, v31, v33 & 1);

    sub_29E2C2634();
    v39 = sub_29E2C2214();
    v41 = v40;
    v43 = v42;
    v45 = v44;

    sub_29DED6478(v34, v36, v38 & 1);

    v46 = v43 & 1;
    v69 = v39;
    sub_29DE93208(v39, v41, v43 & 1);
    result = sub_29E2BF404();
    v23 = *(v73 + 16);
  }

  else
  {
    v69 = 0;
    v41 = 0;
    v46 = 0;
    v45 = 0;
  }

  if (v23 <= v76)
  {
    goto LABEL_15;
  }

  v67 = v46;
  v68 = v45;
  v74 = v41;
  if (*(v5 + 40))
  {
    sub_29E2BF404();
    v47 = sub_29E2C2294();
    v49 = v48;
    v51 = v50;
    sub_29E2C2044();
    v52 = sub_29E2C2254();
    v54 = v53;
    v56 = v55;

    sub_29DED6478(v47, v49, v51 & 1);

    sub_29E2C2624();
    v57 = sub_29E2C2214();
    v59 = v58;
    v61 = v60;
    v63 = v62;

    sub_29DED6478(v52, v54, v56 & 1);

    v64 = v57;
    v65 = v59;
    v66 = v61 & 1;
    sub_29DE93208(v57, v59, v61 & 1);
    v77 = v63;
    sub_29E2BF404();
  }

  else
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v77 = 0;
  }

  sub_29DE93208(v71, v75, v70 & 1);
  sub_29E2BF404();
  sub_29DE93208(v71, v75, v70 & 1);
  sub_29E2BF404();
  sub_29E0FC1A4(v69, v74, v67, v68);
  sub_29E0FC1A4(v64, v65, v66, v77);
  sub_29DED6ADC(v69, v74, v67, v68);
  sub_29DED6ADC(v64, v65, v66, v77);
  sub_29DED6478(v71, v75, v70 & 1);

  *a3 = v71;
  *(a3 + 8) = v75;
  *(a3 + 16) = v70 & 1;
  *(a3 + 24) = v78;
  *(a3 + 32) = v69;
  *(a3 + 40) = v74;
  *(a3 + 48) = v67;
  *(a3 + 56) = v68;
  *(a3 + 64) = v64;
  *(a3 + 72) = v65;
  *(a3 + 80) = v66;
  *(a3 + 88) = v77;
  sub_29DED6ADC(v64, v65, v66, v77);
  sub_29DED6ADC(v69, v74, v67, v68);
  sub_29DED6478(v71, v75, v70 & 1);
}

uint64_t sub_29E296568@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E2C1A34();
  *a1 = result;
  return result;
}

uint64_t sub_29E2965C0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_29E2C4914() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_29E2C4914() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_29E2C4914() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

void sub_29E296684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E2966F8()
{
  if (!qword_2A1820A78)
  {
    sub_29E2967BC();
    sub_29E2976B8(&qword_2A1820AA0, sub_29E2967BC, sub_29E296958);
    v0 = sub_29E2C1DF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1820A78);
    }
  }
}

void sub_29E2967BC()
{
  if (!qword_2A1820A80)
  {
    sub_29E297034(255, &qword_2A1820A88, sub_29E296858, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1820A80);
    }
  }
}

void sub_29E296858()
{
  if (!qword_2A1820A90)
  {
    type metadata accessor for CycleStatisticsHorizontalView();
    sub_29E296AAC(&qword_2A1820A98, type metadata accessor for CycleStatisticsHorizontalView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1820A90);
    }
  }
}

uint64_t type metadata accessor for CycleStatisticsHorizontalView()
{
  result = qword_2A1820AB8;
  if (!qword_2A1820AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_29E296958()
{
  result = qword_2A1820AA8;
  if (!qword_2A1820AA8)
  {
    sub_29E297034(255, &qword_2A1820A88, sub_29E296858, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    type metadata accessor for CycleStatisticsHorizontalView();
    sub_29E296AAC(&qword_2A1820A98, type metadata accessor for CycleStatisticsHorizontalView);
    swift_getOpaqueTypeConformance2();
    sub_29E296AAC(&qword_2A1819290, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1820AA8);
  }

  return result;
}

uint64_t sub_29E296AAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E296AF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E296B7C()
{
  sub_29E106D28(319, &qword_2A1820AC8, &type metadata for CycleStatisticRow, MEMORY[0x29EDC9A40]);
  if (v0 <= 0x3F)
  {
    sub_29E296684(319, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29E296D10()
{
  if (!qword_2A1820AF0)
  {
    sub_29E296DA4(255);
    sub_29E296AAC(&qword_2A1820B80, sub_29E296DA4);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1820AF0);
    }
  }
}

void sub_29E296DD8()
{
  if (!qword_2A1820B00)
  {
    sub_29E296E40();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1820B00);
    }
  }
}

void sub_29E296E40()
{
  if (!qword_2A1820B08)
  {
    sub_29E0FBF34();
    sub_29E296ED8(255);
    sub_29E03D80C();
    v0 = sub_29E2C29C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1820B08);
    }
  }
}

void sub_29E296F14(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_29E296F70(255, a3, a4, a5);
    v6 = sub_29E2C2B14();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E296F70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E297034(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E2970B8()
{
  if (!qword_2A1820B28)
  {
    sub_29E29716C();
    sub_29E296AAC(&qword_2A1820B50, sub_29E29716C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1820B28);
    }
  }
}

void sub_29E29716C()
{
  if (!qword_2A1820B30)
  {
    sub_29E297200(255);
    sub_29E296AAC(&qword_2A1820B48, sub_29E297200);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1820B30);
    }
  }
}

void sub_29E297234()
{
  if (!qword_2A1820B40)
  {
    sub_29E106D28(255, &qword_2A181F4E8, MEMORY[0x29EDBCA18], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1820B40);
    }
  }
}

void sub_29E29732C()
{
  if (!qword_2A1820B68)
  {
    sub_29E297398(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1820B68);
    }
  }
}

void sub_29E297408(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C1744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E297518(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E296AAC(a4, a5);
    v8 = sub_29E2C2884();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E297610()
{
  if (!qword_2A1820BC0)
  {
    sub_29E296E40();
    sub_29E2976B8(&qword_2A1820BC8, sub_29E296E40, sub_29E297728);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1820BC0);
    }
  }
}

uint64_t sub_29E2976B8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E29775C(unint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_29E296AAC(a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E2977FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C15D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E297868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E2978D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E297934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_29E29799C()
{
  result = qword_2A1820C20;
  if (!qword_2A1820C20)
  {
    sub_29E2973E0(255);
    sub_29E296AAC(&qword_2A1820C28, MEMORY[0x29EDBC2A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1820C20);
  }

  return result;
}

uint64_t sub_29E297A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E297AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E297B1C()
{
  v1 = (type metadata accessor for CycleStatisticsHorizontalView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_29E296684(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_29E2C16E4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E297C5C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CycleStatisticsHorizontalView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29E2953D4(a1, v6, a2);
}

unint64_t sub_29E297CDC()
{
  result = qword_2A1820C38;
  if (!qword_2A1820C38)
  {
    sub_29E297034(255, &unk_2A1820C40, sub_29E2974B4, sub_29E296C70, MEMORY[0x29EDBC7F0]);
    sub_29E29775C(&qword_2A1820BE8, sub_29E2974B4, &qword_2A1820BF0, sub_29E2974DC);
    sub_29E29775C(&qword_2A1820BF8, sub_29E296C70, &qword_2A1820C00, sub_29E296C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1820C38);
  }

  return result;
}

void *sub_29E297E14(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_29E2C4704();

    if (v4)
    {
      sub_29DE9408C(0, &qword_2A181A4A8);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_29E18482C(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_29E297ED8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  sub_29E29B4A8(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v16[-v9];
  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource____lazy_storage___today;
  swift_beginAccess();
  sub_29DE962B4(v1 + v11, v10);
  v12 = sub_29E2C31A4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v10, v12);
  }

  sub_29DE96334(v10);
  v14 = [*(v1 + 72) currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BCBA4();
  sub_29E2C3144();
  (*(v13 + 16))(v7, a1, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  swift_beginAccess();
  sub_29E06F128(v7, v1 + v11);
  return swift_endAccess();
}

void sub_29E298190()
{
  sub_29DFD85B4(0, &qword_2A181A570, MEMORY[0x29EDC2008]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v9 = &v17 - v8;
  v10 = *(v0 + 80);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [v11 cycles];
  if (!v12)
  {

LABEL_9:
    (*(v3 + 104))(v5, *MEMORY[0x29EDC1FF8], v2, v7);
    sub_29E2BE644();
    return;
  }

  v13 = v12;
  sub_29DE9408C(0, &qword_2A1A5E0A0);
  v14 = sub_29E2C3614();

  if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_isOnboardingCompleted) != 1)
  {

LABEL_11:
    v16 = MEMORY[0x29EDC1FF8];
    goto LABEL_12;
  }

  if (v14 >> 62)
  {
    v15 = sub_29E2C4484();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = MEMORY[0x29EDC2000];
LABEL_12:
  (*(v3 + 104))(v9, *v16, v2);
  sub_29E2BE644();
}

uint64_t sub_29E2983A0()
{
  sub_29DE96334(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource____lazy_storage___today);
  swift_unknownObjectRelease();
}

id *sub_29E298420()
{

  sub_29DE96334(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource____lazy_storage___today);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_29E2984B0()
{
  sub_29E298420();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CycleHistoryDataSource()
{
  result = qword_2A1820C88;
  if (!qword_2A1820C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E29855C()
{
  sub_29E29B4A8(319, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_29E298714(void *a1)
{
  type metadata accessor for CycleHistoryCell();
  sub_29E29B3A8(&unk_2A1820CB0, type metadata accessor for CycleHistoryCell);
  sub_29E2C3B74();
  type metadata accessor for TileHeaderCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for TileHeaderItem();
  sub_29DEF6428();
  v3 = sub_29E2C33A4();

  [a1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v3];
}

void sub_29E2987F8(void *a1)
{
  v2 = v1;
  v80 = type metadata accessor for CycleHistorySingleCycleModel(0);
  MEMORY[0x2A1C7C4A8](v80);
  v5 = (&v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = type metadata accessor for CycleHistorySingleCycleViewModel(0);
  MEMORY[0x2A1C7C4A8](v79);
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x29EDCA190];
  LODWORD(v7) = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_shouldShowTileHeader);
  v72 = v5;
  if (v7 == 1)
  {
    v8 = sub_29E299BEC();
    v9 = sub_29E144584(0, 1, 1, MEMORY[0x29EDCA190]);
    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_29E144584((v10 > 1), v11 + 1, 1, v9);
    }

    v84 = type metadata accessor for TileHeaderItem();
    v85 = sub_29E29B3A8(&unk_2A1820CE0, type metadata accessor for TileHeaderItem);
    *&v83 = v8;
    v9[2] = v11 + 1;
    sub_29DF3CBE8(&v83, &v9[5 * v11 + 4]);
    v89 = v9;
    v5 = v72;
  }

  v12 = [a1 cycles];
  if (!v12)
  {
    goto LABEL_72;
  }

  v13 = v12;
  sub_29DE9408C(0, &qword_2A1A5E0A0);
  v14 = sub_29E2C3614();

  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_70;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_71:

LABEL_72:
    sub_29E2BE5F4();
    sub_29E13D98C(v89);

    sub_29E2BEC94();

    sub_29E298190();
    return;
  }

  while ((v16 & 0x8000000000000000) != 0)
  {
    v17 = 3;
    if (v15)
    {
      goto LABEL_15;
    }

LABEL_13:
    v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
    if (v18 < v17)
    {
      goto LABEL_74;
    }

    sub_29E2BF404();
    if ((v14 & 0xC000000000000001) != 0)
    {
      v19 = 0;
      do
      {
        v20 = v19 + 1;
        sub_29E2C4594();
        v19 = v20;
      }

      while (v17 != v20);
    }

    if (v15)
    {
      v22 = sub_29E2C4764();
      v15 = v23;
      v21 = v24;
      v26 = v25;

      v17 = v26 >> 1;
    }

    else
    {
      v21 = 0;
      v22 = v14 & 0xFFFFFFFFFFFFFF8;
      v15 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v27 = v17 - v21;
    if (__OFSUB__(v17, v21))
    {
      goto LABEL_75;
    }

    v28 = MEMORY[0x29EDCA190];
    if (!v27)
    {
LABEL_63:
      v68 = sub_29E13E350(v28);

      sub_29DFCC168(v68);
      swift_unknownObjectRelease();
      goto LABEL_72;
    }

    v88 = MEMORY[0x29EDCA190];
    v69 = v22;
    swift_unknownObjectRetain();
    v14 = &v88;
    sub_29E2C4634();
    if (v27 < 0)
    {
      goto LABEL_76;
    }

    v29 = 0;
    v81 = *(v2 + 72);
    v75 = v7 ^ 1;
    v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_viewModelProviders;
    if (v17 <= v21)
    {
      v30 = v21;
    }

    else
    {
      v30 = v17;
    }

    v71 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_pregnancyModelProvider;
    v77 = v30 - v21;
    v74 = v27 - 1;
    v76 = v15 + 8 * v21;
    v73 = v17 - v21;
    v70 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_viewModelProviders;
    while (v77 != v29)
    {
      v42 = *(v80 + 20);
      v43 = *(v76 + 8 * v29);
      sub_29E297ED8(v5 + v42);
      v44 = [v81 currentCalendar];
      sub_29E2BCDC4();

      *v5 = v43;
      swift_beginAccess();
      v45 = *(v7 + v2);
      v82 = v43;
      if ((v45 & 0xC000000000000001) != 0)
      {
        v46 = v43;
        v47 = sub_29E2C4704();
        if (v47)
        {
          v86 = v47;
          sub_29DE9408C(0, &qword_2A181A4A8);
          swift_dynamicCast();
          v48 = v87;
          if (v87)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        v49 = *(v45 + 16);
        v50 = v43;
        if (v49)
        {
          v51 = sub_29E18482C(v50);
          if (v52)
          {
            v48 = *(*(v45 + 56) + 8 * v51);
            if (v48)
            {
LABEL_45:
              swift_endAccess();
              v33 = v82;
              goto LABEL_33;
            }
          }
        }
      }

      swift_endAccess();
      v54 = *(v2 + 48);
      v53 = *(v2 + 56);
      v14 = *(v2 + v71);
      v55 = *(v2 + 64);
      v56 = objc_opt_self();
      swift_unknownObjectRetain();
      v7 = &selRef_removeObserver_;
      v57 = [v56 currentTraitCollection];
      v5 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
      v58 = [v57 horizontalSizeClass];

      if (v58 == 2)
      {
        v59 = 24.0;
      }

      else
      {
        v59 = 12.0;
      }

      v60 = [v56 currentTraitCollection];
      v15 = [v60 horizontalSizeClass];

      if (v15 == 2)
      {
        v61 = 3.0;
      }

      else
      {
        v61 = 1.0;
      }

      v62 = ceil(v55 / (v59 + v61));
      if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_65;
      }

      if (v62 <= -9.22337204e18)
      {
        goto LABEL_66;
      }

      if (v62 >= 9.22337204e18)
      {
        goto LABEL_67;
      }

      v63 = 10 * v62;
      if ((v62 * 10) >> 64 != v63 >> 63)
      {
        goto LABEL_68;
      }

      v64 = objc_allocWithZone(MEMORY[0x29EDC3408]);
      v48 = [v64 initWithHealthStore:v53 analysisProvider:v54 pregnancyModelProvider:v14 maximumActiveDuration:v63 minimumBufferDuration:10 shouldFetchCycleFactors:1 calendarCache:v81];
      swift_unknownObjectRelease();
      v7 = v70;
      swift_beginAccess();
      v65 = *(v7 + v2);
      if ((v65 & 0xC000000000000001) != 0)
      {
        if (v65 < 0)
        {
          v14 = *(v7 + v2);
        }

        else
        {
          v14 = v65 & 0xFFFFFFFFFFFFFF8;
        }

        v66 = v48;
        v67 = sub_29E2C4484();
        v5 = v72;
        if (__OFADD__(v67, 1))
        {
          goto LABEL_69;
        }

        *(v7 + v2) = sub_29E29AAB4(v14, v67 + 1);
      }

      else
      {
        v31 = v48;
        v5 = v72;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = *(v7 + v2);
      *(v7 + v2) = 0x8000000000000000;
      v33 = v82;
      sub_29E00942C(v48, v82, isUniquelyReferenced_nonNull_native);
      *(v7 + v2) = v87;
      swift_endAccess();
LABEL_33:
      if (v29)
      {
        v34 = 0;
      }

      else
      {
        v34 = v75;
      }

      v15 = v74 == v29;
      v35 = v5;
      v36 = v5;
      v37 = v78;
      sub_29E29B50C(v35, v78, type metadata accessor for CycleHistorySingleCycleModel);
      v38 = v79;
      *(v37 + *(v79 + 20)) = v48;
      *(v37 + v38[6]) = 51;
      *(v37 + v38[7]) = v29 == 0;
      *(v37 + v38[8]) = v15;
      *(v37 + v38[9]) = 1;
      *(v37 + v38[10]) = v34;
      *(v37 + v38[11]) = 0;
      v39 = *(v2 + 64);
      type metadata accessor for CycleHistoryItem();
      v40 = swift_allocObject();
      v40[3] = 0;
      swift_unknownObjectWeakInit();
      v40[5] = 0;
      swift_unknownObjectWeakInit();
      v40[7] = 0;
      swift_unknownObjectWeakInit();
      v41 = v37;
      v5 = v36;
      sub_29E29B50C(v41, v40 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryItem_viewModel, type metadata accessor for CycleHistorySingleCycleViewModel);
      *(v40 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryItem_index) = v29;
      *(v40 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryItem_containerWidth) = v39;
      v40[3] = &off_2A24C1F90;
      swift_unknownObjectWeakAssign();
      v40[5] = &off_2A24C1F80;
      swift_unknownObjectWeakAssign();

      v14 = &v88;
      sub_29E2C4614();
      sub_29E2C4644();
      sub_29E2C4654();
      sub_29E2C4624();
      if (v73 == ++v29)
      {
        swift_unknownObjectRelease();
        v28 = v88;
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    v16 = sub_29E2C4484();
    if (!v16)
    {
      goto LABEL_71;
    }
  }

  if (v16 >= 3)
  {
    v17 = 3;
  }

  else
  {
    v17 = v16;
  }

  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_15:
  if ((sub_29E2C4484() & 0x8000000000000000) == 0)
  {
    v18 = sub_29E2C4484();
    goto LABEL_17;
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
}

uint64_t sub_29E2991B4(uint64_t a1)
{
  v2 = v1;
  v20 = *v1;
  v22 = sub_29E2C2B34();
  v25 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C2B54();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BC3F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A626C0);
  v21 = sub_29E2C3CF4();
  (*(v10 + 16))(v12, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v13, v12, v9);
  *(v15 + v14) = v2;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  aBlock[4] = sub_29E29B3F8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24C1FF0;
  v16 = _Block_copy(aBlock);

  sub_29E2C2B44();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29E29B3A8(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
  sub_29E29B4A8(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DF4B408();
  v17 = v22;
  sub_29E2C43F4();
  v18 = v21;
  MEMORY[0x29ED804D0](0, v8, v5, v16);
  _Block_release(v16);

  (*(v25 + 8))(v5, v17);
  return (*(v23 + 8))(v8, v24);
}

void sub_29E2995B0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v47 = a3;
  sub_29E29B4A8(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v42[-v6];
  v8 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v9 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v51 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_29E2C31A4();
  v52 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v50 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_29E2BC3F4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v42[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_29E2C0514();
  v48 = *(v17 - 8);
  v49 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E2C04B4();
  (*(v14 + 16))(v16, a1, v13);
  v20 = sub_29E2C0504();
  v21 = sub_29E2C3A34();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v46 = a2;
    v23 = v22;
    v44 = swift_slowAlloc();
    v53[0] = v44;
    *v23 = 136446466;
    v24 = sub_29E2C4AE4();
    v43 = v21;
    v26 = sub_29DFAA104(v24, v25, v53);
    v47 = v7;
    v27 = v26;

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = sub_29E2BC3E4();
    v29 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v45 = v11;
    v31 = v30;

    (*(v14 + 8))(v16, v13);
    v32 = v29;
    v7 = v47;
    v33 = sub_29DFAA104(v32, v31, v53);
    v11 = v45;

    *(v23 + 14) = v33;
    _os_log_impl(&dword_29DE74000, v20, v43, "[%{public}s] Updating due to time notification: %s", v23, 0x16u);
    v34 = v44;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v34, -1, -1);
    v35 = v23;
    a2 = v46;
    MEMORY[0x29ED82140](v35, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  (*(v48 + 8))(v19, v49);
  v36 = [*(a2 + 72) currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BCBA4();
  v37 = v50;
  sub_29E2C3144();
  v38 = v52;
  (*(v52 + 32))(v7, v37, v11);
  (*(v38 + 56))(v7, 0, 1, v11);
  v39 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource____lazy_storage___today;
  swift_beginAccess();
  sub_29E06F128(v7, a2 + v39);
  swift_endAccess();
  v40 = *(a2 + 80);
  if (v40)
  {
    v41 = v40;
    sub_29E2987F8(v41);
  }
}

void *sub_29E299BEC()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v16 - v6;
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  v11 = v10;
  (*(v2 + 8))(v7, v1);
  v12 = [objc_opt_self() systemIndigoColor];
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v17 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000017, 0x800000029E3015E0);
  v13 = v17;
  type metadata accessor for TileHeaderItem();
  swift_allocObject();
  v14 = sub_29DEF6574(v9, v11, v12, v13, *(&v13 + 1));
  v14[5] = &off_2A24C1F90;
  swift_unknownObjectWeakAssign();
  v14[7] = &off_2A24C1F80;
  swift_unknownObjectWeakAssign();
  return v14;
}

void sub_29E299ECC(uint64_t *a1@<X8>)
{
  v3 = sub_29E2C08B4();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v27 - v10;
  v12 = *(v1 + 80);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 cycles];
    if (v14)
    {
      v15 = v14;
      v33 = a1;
      sub_29DE9408C(0, &qword_2A1A5E0A0);
      v16 = sub_29E2C3614();

      v17 = v16 >> 62 ? sub_29E2C4484() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

      a1 = v33;
      if (v17 >= 2)
      {
        v31 = v13;
        v32 = v1;
        sub_29E2C3314();
        v28 = *(v6 + 16);
        v28(v8, v11, v5);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v18 = qword_2A1A67F80;
        sub_29E2BCC74();
        v19 = v18;
        v20 = sub_29E2C3414();
        v29 = v21;
        v30 = v20;
        v22 = *(v6 + 8);
        v22(v11, v5);
        sub_29E2C3314();
        v28(v8, v11, v5);
        sub_29E2BCC74();
        sub_29E2C3414();
        v22(v11, v5);
        swift_allocObject();
        swift_weakInit();

        sub_29E2C0844();
        v23 = sub_29E2BE0B4();
        swift_allocObject();
        v24 = sub_29E2BE094();

        a1 = v33;
        v33[3] = v23;
        a1[4] = sub_29E29B3A8(&unk_2A181CC00, MEMORY[0x29EDC1C30]);

        goto LABEL_13;
      }
    }
  }

  sub_29E2C3314();
  (*(v6 + 16))(v8, v11, v5);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v25 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v6 + 8))(v11, v5);
  sub_29E2C0844();
  v26 = sub_29E2BE0B4();
  swift_allocObject();
  v24 = sub_29E2BE094();
  a1[3] = v26;
  a1[4] = sub_29E29B3A8(&unk_2A181CC00, MEMORY[0x29EDC1C30]);
LABEL_13:
  *a1 = v24;
}

uint64_t sub_29E29A4D8(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_29E2A078C(a1);
  }

  return result;
}

void sub_29E29A580(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v9 = a2;
  v10 = sub_29E2C0504();
  v11 = sub_29E2C3A34();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29E100194();
    v15 = sub_29E2C3424();
    v17 = sub_29DFAA104(v15, v16, &v26);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_29DE74000, v10, v11, "[%{public}s] Showing the Cycle History View Controller", v13, 0xCu);
    sub_29DE93B3C(v14);
    MEMORY[0x29ED82140](v14, -1, -1);
    MEMORY[0x29ED82140](v13, -1, -1);

    (*(v6 + 8))(v8, v24);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v18 = *(v3 + 48);
  v19 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_pregnancyModelProvider);
  v20 = *(v3 + 72);
  objc_allocWithZone(type metadata accessor for CycleHistoryTableViewController());
  v21 = v18;
  swift_unknownObjectRetain();
  v22 = sub_29E10A624(v21, v19, v20);
  [v9 showViewController:v22 sender:v3];
}

uint64_t sub_29E29A7D4(int a1)
{
  v17 = a1;
  v1 = sub_29E2BCFB4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFD85B4(0, &unk_2A181A550, MEMORY[0x29EDC2020]);
  sub_29DFBBD70();
  result = sub_29E2BE6D4();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (result)
    {
      v7 = 0;
      v8 = (v2 + 8);
      v16 = v1;
      do
      {
        MEMORY[0x29ED79720](v7, 0);
        sub_29E2BE764();
        (*v8)(v4, v1);
        sub_29DE9DC34(v20, v19);
        sub_29DEA7E2C();
        type metadata accessor for CycleHistoryItem();
        if (swift_dynamicCast())
        {
          v9 = v18;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v10 = *(v9 + 56);
LABEL_12:
            ObjectType = swift_getObjectType();
            v13 = *(v10 + 8);
            v14 = v10;
            v1 = v16;
            v13(v17 & 1, v20, ObjectType, v14);

            swift_unknownObjectRelease();
            goto LABEL_5;
          }
        }

        else
        {
          sub_29DE9DC34(v20, v19);
          type metadata accessor for TileHeaderItem();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_5;
          }

          v11 = v18;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v10 = *(v11 + 72);
            goto LABEL_12;
          }
        }

LABEL_5:
        result = sub_29DE93B3C(v20);
        ++v7;
      }

      while (v6 != v7);
    }
  }

  return result;
}

uint64_t sub_29E29AAB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29E00C2BC();
    v2 = sub_29E2C47A4();
    v19 = v2;
    sub_29E2C46E4();
    v3 = sub_29E2C4714();
    if (v3)
    {
      v4 = v3;
      sub_29DE9408C(0, &qword_2A1A5E0A0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_29DE9408C(0, &qword_2A181A4A8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_29E007B28(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_29E2C40C4();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_29E2C4714();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA198];
  }

  return v2;
}

void sub_29E29ACF0(char a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C2B84();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DE9408C(0, &qword_2A1A626C0);
  *v11 = sub_29E2C3CF4();
  (*(v9 + 104))(v11, *MEMORY[0x29EDCA278], v8);
  v12 = sub_29E2C2BA4();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_29E2C04B4();
    v13 = sub_29E2C0504();
    v14 = sub_29E2C3A34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136446466;
      v17 = sub_29E2C4AE4();
      v19 = sub_29DFAA104(v17, v18, &v28);
      v26 = v4;
      v20 = v19;

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      v21 = a1 & 1;
      v27 = a1 & 1;
      v22 = sub_29E2C3464();
      v24 = sub_29DFAA104(v22, v23, &v28);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_29DE74000, v13, v14, "[%{public}s] Received availability update to: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v16, -1, -1);
      MEMORY[0x29ED82140](v15, -1, -1);

      (*(v5 + 8))(v7, v26);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      v21 = a1 & 1;
    }

    *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_isOnboardingCompleted) = v21;
    sub_29E298190();
  }

  else
  {
    __break(1u);
  }
}

void *sub_29E29B040(uint64_t a1)
{
  v23 = a1;
  v1 = sub_29E2C0A24();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C0AD4();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C0AB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29E2C0B44();
  v9 = *(v22 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v22);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *MEMORY[0x29EDC7848];
  v14 = *(v6 + 104);
  v14(v8, v13, v5, v10);
  sub_29E2C0AE4();
  v15 = [objc_opt_self() secondarySystemBackgroundColor];
  sub_29E2C0B14();
  if ((*(v21 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CycleHistoryDataSource_shouldShowTileHeader) & 1) == 0)
  {
    (*(v19 + 104))(v4, *MEMORY[0x29EDC7860], v20);
    sub_29E2C0B04();
  }

  sub_29E2C0B34();
  (v14)(v8, v13, v5);
  sub_29E2C0A04();
  sub_29E2C0AA4();
  sub_29DE9408C(0, &qword_2A1819BB0);
  v16 = sub_29E2C3F34();
  [v16 setContentInsetsReference_];
  [v16 setContentInsets_];
  (*(v9 + 8))(v12, v22);
  return v16;
}

uint64_t sub_29E29B3A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E29B3F8()
{
  v1 = *(sub_29E2BC3F4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_29E2995B0(v0 + v2, v4, v5);
}

uint64_t sub_29E29B490(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E29B4A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E29B50C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for CycleLogModel()
{
  result = qword_2A1820D00;
  if (!qword_2A1820D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E29B5E8()
{
  sub_29E29B724();
  if (v0 <= 0x3F)
  {
    sub_29E29D690(319, &qword_2A181F518, type metadata accessor for HKMCDisplayTypeIdentifier, MEMORY[0x29EDC9A40]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CycleDay();
      if (v2 <= 0x3F)
      {
        sub_29E2C31A4();
        if (v3 <= 0x3F)
        {
          sub_29DE9408C(319, &qword_2A18188B8);
          if (v4 <= 0x3F)
          {
            sub_29DE9408C(319, &qword_2A1820D18);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_29E29B724()
{
  if (!qword_2A1820D10)
  {
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1820D10);
    }
  }
}

unint64_t sub_29E29B78C()
{
  result = qword_2A1820D20;
  if (!qword_2A1820D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1820D20);
  }

  return result;
}

uint64_t sub_29E29B814(uint64_t a1, void *a2)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      MEMORY[0x2A1C7C4A8](a1);
      v13[2] = v2;
      v13[3] = v9;
      sub_29E2493F0(sub_29E29D608, v13, v10);
      return sub_29E2BEBA4();
    }

    if (a1 == 4)
    {
      v5 = sub_29DE966D4(a2, a2[3]);
      v6 = sub_29E29CD2C(*v5, v2);
      sub_29E13D98C(v6);
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v3 = sub_29DE966D4(a2, a2[3]);
      v4 = sub_29E29BCC4(1, *v3, v2);
    }

    else
    {
      v12 = sub_29DE966D4(a2, a2[3]);
      v4 = sub_29E29BCC4(2, *v12, v2);
    }

    sub_29E13D98C(v4);
  }

  else
  {
    v7 = sub_29DE966D4(a2, a2[3]);
    v8 = sub_29E29BCC4(0, *v7, v2);
    sub_29E13D98C(v8);
  }

  return sub_29E2BEBA4();
}

id sub_29E29BA9C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v31 = a3;
  v7 = sub_29E2C31A4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v26 - v12;
  v14 = *a1;
  v30 = type metadata accessor for CycleLogDataItem();
  a4[3] = v30;
  a4[4] = sub_29E29D6F4(&qword_2A1820668, type metadata accessor for CycleLogDataItem);
  v15 = sub_29DEBB7E8(a4);
  v16 = HKMCDisplayTypeIdentifier.editableReportTitle.getter();
  v28 = v17;
  v29 = v16;
  v18 = sub_29E120BC0(v14);
  v26 = v19;
  v27 = v18;
  v20 = type metadata accessor for CycleLogModel();
  v21 = *(v8 + 16);
  v21(v13, a2 + *(v20 + 24), v7);
  v21(v10, a2 + *(v20 + 28), v7);
  sub_29E2BFC34();
  LOBYTE(v20) = sub_29E2BFC24();
  v22 = v30;
  sub_29E29D628(a2, v15 + *(v30 + 36), type metadata accessor for CycleLogModel);
  sub_29DE9DC34(v31, v15 + *(v22 + 40));
  v23 = v28;
  *v15 = v29;
  v15[1] = v23;
  v24 = v26;
  v15[2] = v27;
  v15[3] = v24;
  *(v15 + 32) = 3;
  *(v15 + 33) = (v20 & 1) == 0;
  v15[5] = v14;
  return v14;
}

void *sub_29E29BCC4(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2C0514();
  v138 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2C31A4();
  v151 = *(v9 - 8);
  v152 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v150 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v149 = &v137 - v12;
  v13 = type metadata accessor for CycleLogDataItem();
  MEMORY[0x2A1C7C4A8](v13);
  v139 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v145 = &v137 - v16;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v137 - v18;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v137 - v21;
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v137 - v24;
  MEMORY[0x2A1C7C4A8](v26);
  v28 = &v137 - v27;
  v157[3] = type metadata accessor for CycleLogNavigationHandler();
  v157[4] = &off_2A24C20B8;
  v157[0] = a2;
  v148 = type metadata accessor for CycleLogModel();
  v29 = *(v148 + 24);
  v153 = a3;
  v30 = a3 + v29;
  v31 = *(type metadata accessor for CycleDay() + 20);
  v147 = v30;
  v32 = *(v30 + v31);

  v143 = [v32 menstruationLevel];
  v33 = [v32 bleedingInPregnancyLevel];

  v141 = v33;
  LODWORD(v142) = v33 == 1;
  v34 = [v32 bleedingAfterPregnancyLevel];

  v146 = a1;
  v35 = a1;
  v140 = v19;
  if (a1 == 2)
  {
    v68 = *MEMORY[0x29EDC3228];
    v144 = HKMCDisplayTypeIdentifier.editableReportTitle.getter();
    v138 = v69;
    v70 = v153;
    v137 = sub_29E120BC0(v68);
    v72 = v71;
    v73 = v152;
    v74 = *(v151 + 16);
    v74(v149, v147, v152);
    v74(v150, v70 + *(v148 + 28), v73);
    sub_29E2BFC34();
    v75 = sub_29E2BFC24();
    v36 = v13;
    sub_29E29D628(v70, &v22[*(v13 + 36)], type metadata accessor for CycleLogModel);
    sub_29DE9DC34(v157, &v22[*(v13 + 40)]);
    v76 = v138;
    *v22 = v144;
    *(v22 + 1) = v76;
    *(v22 + 2) = v137;
    *(v22 + 3) = v72;
    v22[32] = 2;
    v22[33] = (v75 & 1) == 0;
    *(v22 + 5) = v68;
    v77 = v68;
    v49 = sub_29E144584(0, 1, 1, MEMORY[0x29EDCA190]);
    v79 = v49[2];
    v78 = v49[3];
    if (v79 >= v78 >> 1)
    {
      v49 = sub_29E144584((v78 > 1), v79 + 1, 1, v49);
    }

    v80 = v143;
    v155 = v13;
    v156 = sub_29E29D6F4(&qword_2A1820670, type metadata accessor for CycleLogDataItem);
    v81 = sub_29DEBB7E8(&v154);
    sub_29E29D628(v22, v81, type metadata accessor for CycleLogDataItem);
    v49[2] = v79 + 1;
    sub_29DF3CBE8(&v154, &v49[5 * v79 + 4]);
    sub_29E268870(v22);
    if (v80 != 4)
    {
      if (v141 != 1)
      {
        goto LABEL_41;
      }

      LODWORD(v144) = 0;
      goto LABEL_29;
    }

    v143 = v13;
    LODWORD(v144) = 0;
    goto LABEL_20;
  }

  LODWORD(v144) = v34 == 1;
  if (a1 == 1)
  {
    v54 = *MEMORY[0x29EDC3230];
    v142 = HKMCDisplayTypeIdentifier.editableReportTitle.getter();
    v141 = v55;
    v56 = v153;
    v138 = sub_29E120BC0(v54);
    v58 = v57;
    v59 = v152;
    v60 = *(v151 + 16);
    v60(v149, v147, v152);
    v60(v150, v56 + *(v148 + 28), v59);
    sub_29E2BFC34();
    v61 = sub_29E2BFC24();
    v36 = v13;
    sub_29E29D628(v56, &v25[*(v13 + 36)], type metadata accessor for CycleLogModel);
    sub_29DE9DC34(v157, &v25[*(v13 + 40)]);
    v62 = v141;
    *v25 = v142;
    *(v25 + 1) = v62;
    *(v25 + 2) = v138;
    *(v25 + 3) = v58;
    v25[32] = 1;
    v25[33] = (v61 & 1) == 0;
    *(v25 + 5) = v54;
    v63 = v54;
    v49 = sub_29E144584(0, 1, 1, MEMORY[0x29EDCA190]);
    v65 = v49[2];
    v64 = v49[3];
    if (v65 >= v64 >> 1)
    {
      v49 = sub_29E144584((v64 > 1), v65 + 1, 1, v49);
    }

    v66 = v143;
    v155 = v13;
    v156 = sub_29E29D6F4(&qword_2A1820670, type metadata accessor for CycleLogDataItem);
    v67 = sub_29DEBB7E8(&v154);
    sub_29E29D628(v25, v67, type metadata accessor for CycleLogDataItem);
    v49[2] = v65 + 1;
    sub_29DF3CBE8(&v154, &v49[5 * v65 + 4]);
    sub_29E268870(v25);
    if (v66 != 4)
    {
      goto LABEL_35;
    }

    v143 = v13;
    LODWORD(v142) = 0;
LABEL_20:
    v86 = *MEMORY[0x29EDC3250];
    v141 = HKMCDisplayTypeIdentifier.editableReportTitle.getter();
    v138 = v87;
    v88 = v153;
    v89 = sub_29E120BC0(v86);
    v91 = v90;
    v92 = v152;
    v93 = *(v151 + 16);
    v93(v149, v147, v152);
    v93(v150, v88 + *(v148 + 28), v92);
    sub_29E2BFC34();
    v94 = sub_29E2BFC24();
    v95 = v143;
    v96 = v139;
    sub_29E29D628(v88, &v139[v143[9]], type metadata accessor for CycleLogModel);
    sub_29DE9DC34(v157, v96 + v95[10]);
    v97 = v138;
    *v96 = v141;
    *(v96 + 8) = v97;
    *(v96 + 16) = v89;
    *(v96 + 24) = v91;
    *(v96 + 32) = v146;
    *(v96 + 33) = (v94 & 1) == 0;
    *(v96 + 40) = v86;
    v98 = v86;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_29E144584(0, v49[2] + 1, 1, v49);
    }

    v100 = v49[2];
    v99 = v49[3];
    v36 = v143;
    if (v100 >= v99 >> 1)
    {
      v49 = sub_29E144584((v99 > 1), v100 + 1, 1, v49);
    }

    v155 = v36;
    v156 = sub_29E29D6F4(&qword_2A1820670, type metadata accessor for CycleLogDataItem);
    v101 = sub_29DEBB7E8(&v154);
    sub_29E29D628(v96, v101, type metadata accessor for CycleLogDataItem);
    v49[2] = v100 + 1;
    sub_29DF3CBE8(&v154, &v49[5 * v100 + 4]);
    sub_29E268870(v96);
    if (v142)
    {
      goto LABEL_29;
    }

LABEL_35:
    if (!v144)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  v36 = v13;
  if (v35)
  {
    sub_29E2C04B4();
    v82 = sub_29E2C0504();
    v83 = sub_29E2C3A14();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *&v154 = v85;
      *v84 = 136315138;
      *(v84 + 4) = sub_29DFAA104(0x676F4C656C637943, 0xED00006C65646F4DLL, &v154);
      _os_log_impl(&dword_29DE74000, v82, v83, "[%s] Received unexpected section enum case. Expected a section that needs bleeding types configured.", v84, 0xCu);
      sub_29DE93B3C(v85);
      MEMORY[0x29ED82140](v85, -1, -1);
      MEMORY[0x29ED82140](v84, -1, -1);
    }

    v138[1](v8, v6);
    if (v143 != 4)
    {
      v49 = MEMORY[0x29EDCA190];
      if (v141 != 1)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }

    v143 = v13;
    v49 = MEMORY[0x29EDCA190];
    goto LABEL_20;
  }

  v37 = *MEMORY[0x29EDC3250];
  v143 = HKMCDisplayTypeIdentifier.editableReportTitle.getter();
  v142 = v38;
  v39 = v153;
  v139 = sub_29E120BC0(v37);
  v41 = v40;
  v42 = *(v151 + 16);
  v43 = v36;
  v44 = v152;
  v42(v149, v147, v152);
  v45 = v44;
  v36 = v43;
  v42(v150, v39 + *(v148 + 28), v45);
  sub_29E2BFC34();
  v46 = sub_29E2BFC24();
  sub_29E29D628(v39, &v28[v43[9]], type metadata accessor for CycleLogModel);
  sub_29DE9DC34(v157, &v28[v43[10]]);
  v47 = v142;
  *v28 = v143;
  *(v28 + 1) = v47;
  *(v28 + 2) = v139;
  *(v28 + 3) = v41;
  v28[32] = 0;
  v28[33] = (v46 & 1) == 0;
  *(v28 + 5) = v37;
  v48 = v37;
  v49 = sub_29E144584(0, 1, 1, MEMORY[0x29EDCA190]);
  v51 = v49[2];
  v50 = v49[3];
  if (v51 >= v50 >> 1)
  {
    v49 = sub_29E144584((v50 > 1), v51 + 1, 1, v49);
  }

  v52 = v141;
  v155 = v36;
  v156 = sub_29E29D6F4(&qword_2A1820670, type metadata accessor for CycleLogDataItem);
  v53 = sub_29DEBB7E8(&v154);
  sub_29E29D628(v28, v53, type metadata accessor for CycleLogDataItem);
  v49[2] = v51 + 1;
  sub_29DF3CBE8(&v154, &v49[5 * v51 + 4]);
  sub_29E268870(v28);
  if (v52 != 1)
  {
    goto LABEL_35;
  }

LABEL_29:
  v102 = *MEMORY[0x29EDC3230];
  v143 = HKMCDisplayTypeIdentifier.editableReportTitle.getter();
  v142 = v103;
  v104 = v153;
  v141 = sub_29E120BC0(v102);
  v106 = v105;
  v107 = *(v151 + 16);
  v108 = v36;
  v109 = v152;
  v107(v149, v147, v152);
  v110 = v109;
  v36 = v108;
  v107(v150, v104 + *(v148 + 28), v110);
  sub_29E2BFC34();
  v111 = sub_29E2BFC24();
  v112 = v140;
  sub_29E29D628(v104, &v140[v108[9]], type metadata accessor for CycleLogModel);
  sub_29DE9DC34(v157, v112 + v108[10]);
  v113 = v142;
  *v112 = v143;
  *(v112 + 8) = v113;
  *(v112 + 16) = v141;
  *(v112 + 24) = v106;
  *(v112 + 32) = v146;
  *(v112 + 33) = (v111 & 1) == 0;
  *(v112 + 40) = v102;
  v114 = v102;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v49 = sub_29E144584(0, v49[2] + 1, 1, v49);
  }

  v116 = v49[2];
  v115 = v49[3];
  if (v116 >= v115 >> 1)
  {
    v49 = sub_29E144584((v115 > 1), v116 + 1, 1, v49);
  }

  v155 = v36;
  v156 = sub_29E29D6F4(&qword_2A1820670, type metadata accessor for CycleLogDataItem);
  v117 = sub_29DEBB7E8(&v154);
  sub_29E29D628(v112, v117, type metadata accessor for CycleLogDataItem);
  v49[2] = v116 + 1;
  sub_29DF3CBE8(&v154, &v49[5 * v116 + 4]);
  sub_29E268870(v112);
  if (v144)
  {
LABEL_36:
    v118 = *MEMORY[0x29EDC3228];
    v119 = HKMCDisplayTypeIdentifier.editableReportTitle.getter();
    v143 = v120;
    v144 = v119;
    v121 = v153;
    v142 = sub_29E120BC0(v118);
    v123 = v122;
    v124 = *(v151 + 16);
    v125 = v36;
    v126 = v152;
    v124(v149, v147, v152);
    v127 = v126;
    v128 = v125;
    v124(v150, v121 + *(v148 + 28), v127);
    sub_29E2BFC34();
    LOBYTE(v124) = sub_29E2BFC24();
    v129 = v145;
    sub_29E29D628(v121, v145 + v125[9], type metadata accessor for CycleLogModel);
    sub_29DE9DC34(v157, v129 + v125[10]);
    v130 = v143;
    *v129 = v144;
    *(v129 + 8) = v130;
    *(v129 + 16) = v142;
    *(v129 + 24) = v123;
    *(v129 + 32) = v146;
    *(v129 + 33) = (v124 & 1) == 0;
    *(v129 + 40) = v118;
    v131 = v118;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_29E144584(0, v49[2] + 1, 1, v49);
    }

    v133 = v49[2];
    v132 = v49[3];
    if (v133 >= v132 >> 1)
    {
      v49 = sub_29E144584((v132 > 1), v133 + 1, 1, v49);
    }

    v155 = v128;
    v156 = sub_29E29D6F4(&qword_2A1820670, type metadata accessor for CycleLogDataItem);
    v134 = sub_29DEBB7E8(&v154);
    v135 = v145;
    sub_29E29D628(v145, v134, type metadata accessor for CycleLogDataItem);
    v49[2] = v133 + 1;
    sub_29DF3CBE8(&v154, &v49[5 * v133 + 4]);
    sub_29E268870(v135);
  }

LABEL_41:
  sub_29DE93B3C(v157);
  return v49;
}

uint64_t sub_29E29CD2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v52 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C3384();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v57 = &v52 - v9;
  v10 = sub_29E2BF5D4();
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2C31A4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v52 - v17;
  v64 = type metadata accessor for CycleLogDataItem();
  MEMORY[0x2A1C7C4A8](v64);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65[3] = type metadata accessor for CycleLogNavigationHandler();
  v65[4] = &off_2A24C20B8;
  v65[0] = a1;
  v21 = *MEMORY[0x29EDC3240];

  v22 = HKMCDisplayTypeIdentifier.editableReportTitle.getter();
  v62 = v23;
  v63 = v22;
  v24 = sub_29E120BC0(v21);
  v60 = v25;
  v61 = v24;
  v26 = type metadata accessor for CycleLogModel();
  v27 = a2 + *(v26 + 24);
  v28 = a2;
  v29 = *(v13 + 16);
  v29(v18, v27, v12);
  v29(v15, v28 + *(v26 + 28), v12);
  v30 = v64;
  sub_29E2BFC34();
  LOBYTE(v12) = sub_29E2BFC24();
  sub_29E29D628(v28, &v20[*(v30 + 36)], type metadata accessor for CycleLogModel);
  sub_29DE9DC34(v65, &v20[*(v30 + 40)]);
  v31 = v62;
  *v20 = v63;
  *(v20 + 1) = v31;
  v32 = v60;
  *(v20 + 2) = v61;
  *(v20 + 3) = v32;
  v20[32] = 4;
  v20[33] = (v12 & 1) == 0;
  *(v20 + 5) = v21;
  v33 = *(v27 + *(type metadata accessor for CycleDay() + 20));
  v34 = v21;
  v35 = v33;
  v36 = [v35 cycleFactors];
  if (!v36)
  {

LABEL_9:
    sub_29E29D690(0, &qword_2A181CC78, sub_29DF61DEC, MEMORY[0x29EDC9E90]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_29E2CAB20;
    *(v46 + 56) = v30;
    *(v46 + 64) = sub_29E29D6F4(&qword_2A1820670, type metadata accessor for CycleLogDataItem);
    v50 = sub_29DEBB7E8((v46 + 32));
    sub_29E2686AC(v20, v50);
    goto LABEL_10;
  }

  v37 = v36;
  sub_29DE9408C(0, &qword_2A1A61D50);
  v38 = sub_29E2C3614();

  if (v38 >> 62)
  {
    v39 = sub_29E2C4484();
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v58;
  v40 = v59;
  v43 = v56;
  v42 = v57;

  if (v39)
  {
    goto LABEL_9;
  }

  sub_29E2C3314();
  (*(v41 + 16))(v43, v42, v40);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v44 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v41 + 8))(v42, v40);
  v45 = v53;
  sub_29E2BF5C4();
  sub_29E29D690(0, &qword_2A181CC78, sub_29DF61DEC, MEMORY[0x29EDC9E90]);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_29E2CD7A0;
  *(v46 + 56) = v30;
  *(v46 + 64) = sub_29E29D6F4(&qword_2A1820670, type metadata accessor for CycleLogDataItem);
  v47 = sub_29DEBB7E8((v46 + 32));
  sub_29E29D628(v20, v47, type metadata accessor for CycleLogDataItem);
  v48 = v55;
  *(v46 + 96) = v55;
  *(v46 + 104) = sub_29E29D6F4(&qword_2A1820D28, MEMORY[0x29EDC28B0]);
  v49 = sub_29DEBB7E8((v46 + 72));
  (*(v54 + 32))(v49, v45, v48);
  sub_29E268870(v20);
LABEL_10:
  sub_29DE93B3C(v65);
  return v46;
}

uint64_t *sub_29E29D458(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v6 = result;
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    if (sub_29E142CB0(result[1], a2[1]))
    {
      v10 = type metadata accessor for CycleLogModel();
      sub_29E2C31A4();
      sub_29E29D6F4(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
      if (sub_29E2C3304())
      {
        sub_29DE9408C(0, &qword_2A1A619F0);
        type metadata accessor for CycleDay();
        if ((sub_29E2C40D4() & 1) != 0 && (sub_29E2C3304() & 1) != 0 && *(v6 + *(v10 + 32)) == *(a2 + *(v10 + 32)))
        {
          return (sub_29E2C40D4() & 1);
        }
      }
    }

    return 0;
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E29D628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E29D690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E29D6F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E29D73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v15[-v10];
  v12 = 0;
  if (a2 <= 3)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        if (a1)
        {
          goto LABEL_13;
        }

LABEL_15:
        sub_29E2C3314();
        (*(v6 + 16))(v8, v11, v5);
        if (qword_2A1A62788 == -1)
        {
LABEL_16:
          v13 = qword_2A1A67F80;
          sub_29E2BCC74();
          v12 = sub_29E2C3414();
          (*(v6 + 8))(v11, v5);
          return v12;
        }

LABEL_18:
        swift_once();
        goto LABEL_16;
      }

      return v12;
    }

    if (!a1)
    {
      goto LABEL_15;
    }

LABEL_13:
    sub_29E2C3314();
    (*(v6 + 16))(v8, v11, v5);
    if (qword_2A1A62788 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (a2 == 4)
  {
    if (a1)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (a2 == 5)
  {
    if (!a1)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  return v12;
}

uint64_t sub_29E29DA94(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v15[-v10];
  v12 = 0;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        if (!a1)
        {
          goto LABEL_18;
        }

        break;
      case 4:
        if (!a1)
        {
          goto LABEL_18;
        }

        break;
      case 5:
        if (a1)
        {
          break;
        }

LABEL_18:
        sub_29E2C3314();
        (*(v6 + 16))(v8, v11, v5);
        if (qword_2A1A62788 == -1)
        {
LABEL_19:
          v13 = qword_2A1A67F80;
          sub_29E2BCC74();
          v12 = sub_29E2C3414();
          (*(v6 + 8))(v11, v5);
          return v12;
        }

LABEL_21:
        swift_once();
        goto LABEL_19;
      default:
        return v12;
    }

LABEL_16:
    sub_29E2C3314();
    (*(v6 + 16))(v8, v11, v5);
    if (qword_2A1A62788 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (a2 == 1)
  {
    if (a1)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (a2 == 2)
  {
    if (!a1)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  return v12;
}

uint64_t sub_29E29DE84(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v15[-v9];
  v11 = 0;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v12 = (v5 + 16);
        break;
      case 4:
        v12 = (v5 + 16);
        break;
      case 5:
        v12 = (v5 + 16);
        break;
      default:
        return v11;
    }

    goto LABEL_12;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      return v11;
    }

    v12 = (v5 + 16);
LABEL_12:
    sub_29E2C3314();
    (*v12)(v7, v10, v4);
    goto LABEL_13;
  }

  sub_29E2C3314();
  (*(v5 + 16))(v7, v10, v4);
LABEL_13:
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  (*(v5 + 8))(v10, v4);
  return v11;
}

uint64_t type metadata accessor for SharedMenstrualCyclesProjectionDetailViewController()
{
  result = qword_2A1820D40;
  if (!qword_2A1820D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E29E274()
{
  swift_getObjectType();
  v0 = sub_29E2C0514();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v4 = sub_29E2C0504();
  v5 = sub_29E2C3A14();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_29E2C4AE4();
    v10 = sub_29DFAA104(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29DE74000, v4, v5, "[%{public}s]: Customizing the chart image provider is not supported", v6, 0xCu);
    sub_29DE93B3C(v7);
    MEMORY[0x29ED82140](v7, -1, -1);
    MEMORY[0x29ED82140](v6, -1, -1);
  }

  swift_unknownObjectRelease();
  return (*(v1 + 8))(v3, v0);
}

void sub_29E29E48C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SharedMenstrualCyclesProjectionDetailViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode_];

  v2 = [v0 navigationItem];
  sub_29DF29A5C(*(v0 + qword_2A1820D30));
  v3 = sub_29E2C33A4();

  [v2 setTitle_];

  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() secondarySystemBackgroundColor];
    [v5 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29E29E5C0(void *a1)
{
  v1 = a1;
  sub_29E29E48C();
}

void sub_29E29E608(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29E2C0624();
  MEMORY[0x2A1C7C4A8](v5);
  v6 = sub_29E2BE2A4();
  v7 = MEMORY[0x2A1C7C4A8](v6);
  (*(v9 + 104))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDC1D60], v7);
  v10 = a1;
  sub_29E2C3C34();
  sub_29E2C0604();
  sub_29E2C3C44();
  v11 = type metadata accessor for SharedMenstrualCyclesProjectionDetailViewController();
  v12.receiver = v10;
  v12.super_class = v11;
  objc_msgSendSuper2(&v12, sel_viewIsAppearing_, a3);
}

UIImage *sub_29E29E784()
{
  v1 = sub_29DFF88D8();
  v3 = sub_29E29E9FC(v1, v2);

  if (v3)
  {
    v4 = v3;
    [v4 frame];
    Width = v5;
    v8 = v7;
    [v4 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
LABEL_6:
    v35.width = Width;
    v35.height = v8;
    UIGraphicsBeginImageContextWithOptions(v35, 1, 0.0);
    v33 = [objc_opt_self() secondarySystemBackgroundColor];
    [v33 setFill];

    v40.origin.x = 0.0;
    v40.origin.y = 0.0;
    v40.size.width = Width;
    v40.size.height = v8;
    UIRectFill(v40);
    [v4 drawViewHierarchyInRect:1 afterScreenUpdates:{v10, v12, v14, v16}];

    v34 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return v34;
  }

  v17 = sub_29E171B1C();
  v19 = sub_29E29E9FC(v17, v18);

  if (!v19)
  {
    return 0;
  }

  v4 = v19;
  result = [v0 collectionView];
  if (result)
  {
    v21 = result;
    [(UIImage *)result frame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v36.origin.x = v23;
    v36.origin.y = v25;
    v36.size.width = v27;
    v36.size.height = v29;
    Width = CGRectGetWidth(v36);
    [v4 frame];
    v8 = CGRectGetHeight(v37) * 2.5 + 24.0;
    [v4 bounds];
    v14 = v30;
    v16 = v31;
    v38.origin.x = 0.0;
    v38.origin.y = 0.0;
    v38.size.width = Width;
    v38.size.height = v8;
    MidX = CGRectGetMidX(v38);
    v39.origin.x = 0.0;
    v39.origin.y = 0.0;
    v39.size.width = Width;
    v39.size.height = v8;
    v10 = MidX - v14 * 0.5;
    v12 = CGRectGetMidY(v39) - v16 * 0.5;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_29E29E9FC(uint64_t a1, uint64_t a2)
{
  sub_29E2A00D4(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_29E2BCFB4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E29EC34(a1, a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_29E2A0128(v7, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  result = [v2 collectionView];
  if (result)
  {
    v14 = result;
    v15 = sub_29E2BCF24();
    v16 = [v14 cellForItemAtIndexPath_];

    if (v16)
    {
      v12 = [v16 contentView];
    }

    else
    {
      v12 = 0;
    }

    (*(v9 + 8))(v11, v8);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E29EC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_29E15B9CC();
  v7 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E2BF964();
  sub_29E2BF134();
  v10 = sub_29E2BE6E4();

  v12 = MEMORY[0x29EDCA190];
  v25 = MEMORY[0x29EDCA190];
  v13 = *(v10 + 16);
  if (v13)
  {
    v14 = 0;
    while (v14 < *(v10 + 16))
    {
      v15 = sub_29E2BEBB4();
      v16 = *(v15 - 8);
      v17 = *(v16 + 16);
      v18 = v10 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14;
      v19 = *(v7 + 48);
      *v9 = v14;
      v17(v9 + v19, v18, v15);
      v20 = sub_29E29FAB4(v14, v9 + v19, a1, a2);
      sub_29E2A0184(v9, sub_29E15B9CC);
      result = sub_29DFCC190(v20);
      if (v13 == ++v14)
      {
        v12 = v25;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    if (*(v12 + 16))
    {
      v21 = sub_29E2BCFB4();
      v22 = *(v21 - 8);
      (*(v22 + 16))(a3, v12 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v21);

      return (*(v22 + 56))(a3, 0, 1, v21);
    }

    else
    {

      v23 = sub_29E2BCFB4();
      return (*(*(v23 - 8) + 56))(a3, 1, 1, v23);
    }
  }

  return result;
}

id sub_29E29EF38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedMenstrualCyclesProjectionDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_29E29F010(void *a1))(uint64_t a1, char a2)
{
  v3 = *v1;
  a1[2] = *v1;
  v4 = sub_29E29FEF8(&qword_2A1820D50, type metadata accessor for SharedMenstrualCyclesProjectionDetailViewController);
  *a1 = v3;
  a1[1] = v4;
  v5 = v3;
  return sub_29E29F09C;
}

uint64_t sub_29E29F09C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_29E29E274();
  }

  swift_unknownObjectRetain();
  sub_29E29E274();

  return swift_unknownObjectRelease();
}

uint64_t sub_29E29F10C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_29E2C3BF4();
  sub_29DE966D4(v30, v30[3]);
  v5 = sub_29E2BD144();
  v6 = *(v2 + 24);
  v7 = v6;
  sub_29DF4B51C(v5, 1, 0, v4, v6);

  sub_29DE93B3C(v30);
  sub_29E29FF40();
  swift_allocObject();
  v8 = sub_29E2BF534();
  v9 = sub_29E29FEF8(&qword_2A1820D80, sub_29E29FF40);
  v31[0] = v8;
  v31[1] = v9;
  v31[2] = sub_29E29F53C(a1);
  v31[3] = v10;
  LOBYTE(v8) = *(v2 + 16);
  v11 = sub_29DF29CE8(v8);
  v13 = v12;
  v14 = sub_29DF29F78(v8);
  v16 = v15;
  type metadata accessor for AboutTextDataSource();
  swift_allocObject();
  result = sub_29DEA7704(v11, v13, v14, v16);
  v18 = 0;
  v31[4] = result;
  v31[5] = MEMORY[0x29EDC2280];
  v19 = MEMORY[0x29EDCA190];
LABEL_2:
  if (v18 <= 3)
  {
    v20 = 3;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20 + 1;
  v22 = &v31[2 * v18];
  while (1)
  {
    if (v18 == 3)
    {
      sub_29E2A0068();
      swift_arrayDestroy();
      v29 = sub_29E29F390();
      v30[0] = v19;
      sub_29DFCC1BC(v29);
      return v30[0];
    }

    if (v21 == ++v18)
    {
      break;
    }

    v23 = v22 + 2;
    v24 = *v22;
    v22 += 2;
    if (v24)
    {
      v25 = *(v23 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_29E145748(0, v19[2] + 1, 1, v19);
        v19 = result;
      }

      v27 = v19[2];
      v26 = v19[3];
      if (v27 >= v26 >> 1)
      {
        result = sub_29E145748((v26 > 1), v27 + 1, 1, v19);
        v19 = result;
      }

      v19[2] = v27 + 1;
      v28 = &v19[2 * v27];
      v28[4] = v24;
      v28[5] = v25;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E29F390()
{
  v1 = *(v0 + 16);
  v2 = &unk_2A24AFC20;
  if (!*(v0 + 16))
  {
    v2 = &unk_2A24AFC48;
  }

  v3 = *v2;
  if (*v2)
  {
    v17 = MEMORY[0x29EDCA190];
    sub_29E181330(0, v3, 0);
    v4 = v17;
    if (v1)
    {
      v5 = &unk_2A24AFC10;
    }

    else
    {
      v5 = &unk_2A24AFC38;
    }

    v6 = (v5 + 32);
    do
    {
      v7 = *v6++;
      sub_29E2C3BF4();
      sub_29DE966D4(v16, v16[3]);
      v8 = sub_29E2BD144();
      v9 = objc_allocWithZone(type metadata accessor for MenstrualCyclesSharingSingleArticleFetchedResultsController());
      v10 = sub_29DF622C8(v8, v7);

      sub_29DE93B3C(v16);
      v17 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_29E181330((v11 > 1), v12 + 1, 1);
        v4 = v17;
      }

      v13 = sub_29E29FEF8(&qword_2A1820D60, type metadata accessor for MenstrualCyclesSharingSingleArticleFetchedResultsController);
      *(v4 + 16) = v12 + 1;
      v14 = v4 + 16 * v12;
      *(v14 + 32) = v10;
      *(v14 + 40) = v13;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x29EDCA190];
  }

  return v4;
}

void *sub_29E29F53C(uint64_t a1)
{
  v36 = a1;
  v1 = sub_29E2BF344();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v33 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2A00D4(0, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v31 = &v27 - v4;
  v5 = sub_29E2BF2B4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BEED4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v27 - v14;
  sub_29DE9408C(0, &qword_2A1A61D70);
  v16 = MEMORY[0x29ED80220](*MEMORY[0x29EDBA4A0]);
  v17 = [objc_opt_self() secondarySystemBackgroundColor];
  sub_29E2BEEC4();
  (*(v10 + 16))(v12, v15, v9);
  sub_29DE9408C(0, &qword_2A1820D58);
  v18 = v16;
  sub_29E2C3A44();
  sub_29E2BF294();
  v19 = sub_29E2C3BE4();
  if (v19)
  {
    v28 = v9;
    v29 = v6;
    v30 = v5;
    sub_29E2C3C14();
    v20 = *(v32 + 24);
    v21 = sub_29E2BD244();

    if (v21)
    {
      v22 = sub_29E2BE2A4();
      v23 = v31;
      (*(*(v22 - 8) + 56))(v31, 1, 1, v22);
      MEMORY[0x29ED7ADA0](v21, v23);

      sub_29E2A0128(v23, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
    }

    sub_29E2C3BF4();
    sub_29DE9DC34(v38, v37);
    v24 = v19;
    sub_29E2C3C24();
    v25 = v33;
    sub_29E2BF304();
    v19 = sub_29E2BF2A4();

    (*(v34 + 8))(v25, v35);
    sub_29DE93B3C(v38);
    (*(v29 + 8))(v8, v30);
    (*(v10 + 8))(v15, v28);
    swift_getOpaqueTypeConformance2();
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v15, v9);
  }

  return v19;
}

uint64_t sub_29E29FA30()
{

  return swift_deallocClassInstance();
}

void *sub_29E29FAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v34 = a1;
  sub_29E2A00D4(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_29E2BCFB4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v42 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v36 = &v33 - v12;
  result = sub_29E2BEB94();
  v14 = result;
  v41 = result[2];
  if (v41)
  {
    v15 = 0;
    v16 = (result + 4);
    v39 = (v9 + 48);
    v40 = (v9 + 56);
    v43 = MEMORY[0x29EDCA190];
    v35 = v9;
    v38 = (v9 + 32);
    while (1)
    {
      if (v15 >= v14[2])
      {
        __break(1u);
        return result;
      }

      v46 = v15;
      sub_29DE9DC34(v16, v47);
      sub_29DE9DC34(v47, v45);
      sub_29DF942BC(0, &qword_2A1819BD0);
      sub_29E2BDCA4();
      if (swift_dynamicCast())
      {
        break;
      }

      v26 = 1;
LABEL_17:
      (*v40)(v7, v26, 1, v8);
      sub_29E2A0184(&v46, sub_29E15CCAC);
      if ((*v39)(v7, 1, v8) == 1)
      {
        result = sub_29E2A0128(v7, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
      }

      else
      {
        v27 = *v38;
        v28 = v36;
        (*v38)(v36, v7, v8);
        v27(v42, v28, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_29E145714(0, v43[2] + 1, 1, v43);
        }

        v30 = v43[2];
        v29 = v43[3];
        if (v30 >= v29 >> 1)
        {
          v43 = sub_29E145714(v29 > 1, v30 + 1, 1, v43);
        }

        v31 = v42;
        v32 = v43;
        v43[2] = v30 + 1;
        result = (v27)(v32 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v30, v31, v8);
      }

      ++v15;
      v16 += 40;
      if (v41 == v15)
      {
        goto LABEL_24;
      }
    }

    v17 = v14;
    v18 = v44;
    v19 = a4;
    v20 = [v44 uniqueIdentifier];
    v21 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v23 = v22;

    a4 = v19;
    if (v21 == v37 && v23 == v19)
    {
    }

    else
    {
      v25 = sub_29E2C4914();

      if ((v25 & 1) == 0)
      {

        v26 = 1;
LABEL_16:
        v14 = v17;
        goto LABEL_17;
      }
    }

    MEMORY[0x29ED79740](v15, v34);

    v26 = 0;
    goto LABEL_16;
  }

  v43 = MEMORY[0x29EDCA190];
LABEL_24:

  return v43;
}

uint64_t sub_29E29FEF8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E29FF40()
{
  if (!qword_2A1820D68)
  {
    sub_29E29FFD4();
    sub_29E29FEF8(&qword_2A1820D78, sub_29E29FFD4);
    v0 = sub_29E2BF544();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1820D68);
    }
  }
}

void sub_29E29FFD4()
{
  if (!qword_2A1820D70)
  {
    sub_29DF4BBB4();
    sub_29E29FEF8(&qword_2A1819328, sub_29DF4BBB4);
    v0 = sub_29E2BE344();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1820D70);
    }
  }
}

void sub_29E2A0068()
{
  if (!qword_2A1820D88)
  {
    sub_29DF942BC(255, &qword_2A181DB40);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1820D88);
    }
  }
}

void sub_29E2A00D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E2A0128(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E2A00D4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E2A0184(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29E2A0224(uint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(unint64_t, uint64_t, uint64_t), uint64_t (*a4)(unint64_t))
{
  if (!(a1 >> 62))
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v22 = a2;
    v23 = a3;
    v24 = a1;
    v25 = sub_29E2C4484();
    if (v25)
    {
      v26 = v25;
      v5 = v22(v25, 0);
      v23(v5 + 32, v26, v24);
      v28 = v27;

      if (v28 != v26)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v5 = MEMORY[0x29EDCA190];
LABEL_3:
      if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
      {
        v6 = *(v5 + 16);
        v7 = v6 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_29E2C4484();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v6 = a1;
    v7 = a1 / 2;
LABEL_6:
    if (v6 + 1 < 3)
    {
      return v5;
    }

    v9 = -v7;
    v10 = 4;
    while (1)
    {
      v11 = v6 - (v10 - 3);
      if (__OFSUB__(v6, v10 - 3))
      {
        break;
      }

      a1 = v10 - 4;
      if (v10 - 4 != v11)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x29ED80D70]();
          v15 = MEMORY[0x29ED80D70](v6 - (v10 - 3), v5);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v12)
          {
            goto LABEL_32;
          }

          if (v11 >= v12)
          {
            goto LABEL_33;
          }

          v13 = *(v5 + 8 * v11 + 32);
          v14 = *(v5 + 8 * v10);
          v15 = v13;
        }

        v16 = v15;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = a4(v5);
          v17 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v18 = v5 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v10);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v10) = v16;

        if ((v5 & 0x8000000000000000) != 0 || v17)
        {
          a1 = a4(v5);
          v5 = a1;
          v18 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v11 >= *(v18 + 16))
        {
          goto LABEL_34;
        }

        v20 = v18 + 8 * v11;
        v21 = *(v20 + 32);
        *(v20 + 32) = v14;
      }

      ++v10;
      if (v9 + v10 == 4)
      {
        return v5;
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
  }
}

uint64_t sub_29E2A0450()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v28[1] = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v28 - v8;
  v10 = *(v0 + 16);
  v12 = *(v10 + 24);
  v11 = *(v10 + 32);
  v14 = *(v0 + 32);
  v13 = *(v0 + 40);
  v15 = *(v0 + 144);
  v16 = objc_allocWithZone(type metadata accessor for LocalSettingsModel());
  v17 = v12;
  swift_unknownObjectRetain();

  v18 = [v16 init];
  type metadata accessor for OptionsModel();
  swift_allocObject();
  v19 = sub_29DF729A4(v17, v11, v18, v14, v13, v15);

  swift_unknownObjectRelease();
  v20 = v3;

  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v21 = qword_2A1A67F80;
  sub_29E2BCC74();
  v22 = sub_29E2C3414();
  v24 = v23;
  (*(v4 + 8))(v9, v20);
  v28[2] = sub_29E068DD4;
  v28[3] = v19;
  v29 = 0;
  v30 = v22;
  v31 = v24;
  sub_29E0E6894();
  v26 = objc_allocWithZone(v25);
  return sub_29E2C2CC4();
}

void sub_29E2A0724(id *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = [*a1 daySummary];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 intermenstrualBleeding];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_29E2A078C(void *a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x2A1C7C4A8](v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 viewController];
  if (v7)
  {
    v16 = v7;
    sub_29E2A09B8();
    v8 = v16;
  }

  else
  {
    sub_29E2C04B4();
    v9 = sub_29E2C0504();
    v10 = sub_29E2C3A14();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      v13 = sub_29E2C4AE4();
      v15 = sub_29DFAA104(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Tried to present PDF Viewer without a parent view controller", v11, 0xCu);
      sub_29DE93B3C(v12);
      MEMORY[0x29ED82140](v12, -1, -1);
      MEMORY[0x29ED82140](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_29E2A09B8()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v32[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFDA4A4();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v32[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[17];
  if (v10)
  {
    v11 = sub_29E2C3734();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    sub_29E2C3714();
    v12 = v10;

    v13 = sub_29E2C3704();
    v14 = swift_allocObject();
    v15 = MEMORY[0x29EDCA390];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v1;
    v14[5] = v2;
    sub_29DFE96C0(0, 0, v9, &unk_29E2EA4D8, v14);

    v16 = v1[2];
    v17 = *(v16 + 24);
    v18 = [v17 healthStore];
    v19 = *(v16 + 40);
    v20 = type metadata accessor for TwelveMonthCycleHistoryPDFProvider();
    swift_allocObject();
    v21 = v12;
    v22 = sub_29E2AEFD4(v17, v18, v21, v19);
    v1[6] = v22;

    v32[3] = v20;
    v32[4] = sub_29E2A3FD0();
    v32[0] = v22;

    sub_29E2C3C04();

    return sub_29DE93B3C(v32);
  }

  else
  {
    sub_29E2C04B4();
    v24 = sub_29E2C0504();
    v25 = sub_29E2C3A14();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32[0] = v27;
      *v26 = 136446210;
      v28 = sub_29E2C4AE4();
      v30 = sub_29DFAA104(v28, v29, v32);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_29DE74000, v24, v25, "[%{public}s] Tried to present PDF with nil analysis", v26, 0xCu);
      sub_29DE93B3C(v27);
      MEMORY[0x29ED82140](v27, -1, -1);
      MEMORY[0x29ED82140](v26, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_29E2A0D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = sub_29E2C0514();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v7 = sub_29E2BCEA4();
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  v8 = sub_29E2BCBB4();
  v5[27] = v8;
  v5[28] = *(v8 - 8);
  v5[29] = swift_task_alloc();
  sub_29DEE975C();
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();
  sub_29E2C3714();
  v5[33] = sub_29E2C3704();
  v11 = sub_29E2C36A4();
  v5[34] = v11;
  v5[35] = v10;

  return MEMORY[0x2A1C73D48](sub_29E2A0F54, v11, v10);
}

uint64_t sub_29E2A0F54()
{
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[19];
  sub_29E2BCB54();
  sub_29E2BCE44();
  sub_29E2AE580(v1);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v9 = [*(*(v8 + 16) + 24) healthStore];
  v0[36] = v9;
  v10 = swift_task_alloc();
  v0[37] = v10;
  *v10 = v0;
  v10[1] = sub_29E2A1090;
  v11 = v0[30];

  return MEMORY[0x2A1C5B578](v9, v11);
}

uint64_t sub_29E2A1090(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 288);
  *(v4 + 304) = a1;
  *(v4 + 312) = v1;

  v6 = *(v3 + 280);
  v7 = *(v3 + 272);
  if (v1)
  {
    v8 = sub_29E2A1580;
  }

  else
  {
    v8 = sub_29E2A11EC;
  }

  return MEMORY[0x2A1C73D48](v8, v7, v6);
}

uint64_t sub_29E2A11EC()
{
  v1 = v0[38];
  if (v1 >> 62)
  {
    v2 = sub_29E2C4484();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[19];

  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  type metadata accessor for RoomInteractionEvent();
  v5 = swift_allocObject();
  v0[40] = v5;
  *(v5 + 16) = 0xD00000000000002ALL;
  *(v5 + 24) = 0x800000029E2EEF80;
  *(v5 + 32) = 8;
  *(v5 + 33) = v4;
  *(v5 + 34) = 2;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  v6 = *(v3 + 24);
  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_29E2A13A8;
  v7 = swift_continuation_init();
  sub_29DEE97C4();
  v0[17] = v8;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29E27ED68;
  v0[13] = &unk_2A24C2128;
  v0[14] = v7;

  [v6 submitEvent:v5 completion:v0 + 10];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29E2A13A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {
    v3 = *(v1 + 272);
    v4 = *(v1 + 280);
    v5 = sub_29E2A163C;
  }

  else
  {

    v3 = *(v1 + 272);
    v4 = *(v1 + 280);
    v5 = sub_29E2A14C0;
  }

  return MEMORY[0x2A1C73D48](v5, v3, v4);
}

uint64_t sub_29E2A14C0()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29E2A1580()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29E2A163C()
{
  v31 = v0;
  v1 = v0[41];

  swift_willThrow();

  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[41];
    v6 = v0[31];
    v28 = v0[30];
    v29 = v0[32];
    v7 = v0[22];
    v27 = v0[23];
    v26 = v0[21];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30[0] = v9;
    *v8 = 136446466;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, v30);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v0[18] = v5;
    v13 = v5;
    sub_29DE96670();
    v14 = sub_29E2C3434();
    v16 = sub_29DFAA104(v14, v15, v30);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%{public}s] Error submitting analytics event: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);

    (*(v7 + 8))(v27, v26);
    (*(v6 + 8))(v29, v28);
  }

  else
  {
    v17 = v0[41];
    v19 = v0[31];
    v18 = v0[32];
    v20 = v0[30];
    v22 = v0[22];
    v21 = v0[23];
    v23 = v0[21];

    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_29E2A18F4()
{

  sub_29DE93B3C(v0 + 56);
  sub_29DE93B3C(v0 + 96);

  return v0;
}

uint64_t sub_29E2A194C()
{
  sub_29E2A18F4();

  return swift_deallocClassInstance();
}

void sub_29E2A19A4(void *a1, uint64_t a2)
{
  v187 = a2;
  v190 = sub_29E2BCC94();
  v189 = *(v190 - 8);
  MEMORY[0x2A1C7C4A8](v190);
  v188 = &v186 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v5);
  v198 = &v186 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v186 - v8;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v186 - v11;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v186 - v14;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v186 - v17;
  sub_29E002B68();
  v20 = v19;
  v192 = v2;
  v21 = *(v2 + 16);
  v22 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleLoggingDataProvider_currentDay;
  swift_beginAccess();
  v23 = sub_29E2C31A4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v196 = v22;
  v195 = v23;
  v194 = v25;
  v193 = v24 + 16;
  (v25)(v18, v21 + v22);
  v197 = v21;
  v26 = [*(v21 + 176) dayViewModelAtIndex_];
  v200 = v5;
  *&v18[*(v5 + 20)] = v26;
  v27 = v26;
  sub_29E029468(v18);
  v28 = [v27 defaultLoggingBleedingType];

  v191 = a1;
  if (v28 == 2)
  {
    v52 = v197;
    v53 = v196;
    v54 = v195;
    v55 = v194;
    v194(v15, v197 + v196, v195);
    v56 = [*(v52 + 176) dayViewModelAtIndex_];
    *&v15[*(v200 + 20)] = v56;
    v57 = v56;
    LODWORD(v207) = [v57 menstruationLevel] != 4;
    sub_29E029468(v15);

    v55(v9, v52 + v53, v54);
    v58 = [*(v52 + 176) dayViewModelAtIndex_];
    *&v9[*(v200 + 20)] = v58;
    v59 = v58;
    v60 = [v59 daySummary];
    if (v60)
    {
      v61 = v60;
      v62 = [v60 intermenstrualBleeding];

      v63 = v62 ^ 1;
    }

    else
    {
      v63 = 1;
    }

    LODWORD(v206) = v63;
    sub_29E029468(v9);

    v68 = v197;
    v194(v15, v197 + v196, v195);
    v69 = [*(v68 + 176) dayViewModelAtIndex_];
    *&v15[*(v200 + 20)] = v69;
    v37 = v69;
    v70 = [v37 bleedingInPregnancyLevel];
    LODWORD(v204) = 0;
    v66 = v70 != 1;
    v67 = &v214;
  }

  else
  {
    if (v28 == 1)
    {
      v40 = v197;
      v41 = v196;
      v42 = v195;
      v43 = v194;
      v194(v15, v197 + v196, v195);
      v44 = [*(v40 + 176) dayViewModelAtIndex_];
      *&v15[*(v200 + 20)] = v44;
      v45 = v44;
      LODWORD(v207) = [v45 menstruationLevel] != 4;
      sub_29E029468(v15);

      v43(v12, v40 + v41, v42);
      v46 = [*(v40 + 176) dayViewModelAtIndex_];
      *&v12[*(v200 + 20)] = v46;
      v47 = v46;
      sub_29E029468(v12);
      v48 = [v47 daySummary];
      if (v48)
      {
        v49 = v48;
        v50 = [v48 intermenstrualBleeding];

        v51 = v50 ^ 1;
      }

      else
      {

        v51 = 1;
      }

      LODWORD(v206) = v51;
      v64 = v197;
      v194(v15, v197 + v196, v195);
      v65 = [*(v64 + 176) dayViewModelAtIndex_];
      *&v15[*(v200 + 20)] = v65;
      v37 = v65;
      v38 = [v37 bleedingAfterPregnancyLevel];
      v39 = &v214;
    }

    else
    {
      if (v28)
      {
        LODWORD(v204) = 0;
        LODWORD(v205) = 0;
        LODWORD(v206) = 0;
        LODWORD(v207) = 0;
        goto LABEL_16;
      }

      v29 = v197;
      v30 = v196;
      v31 = v195;
      v32 = v194;
      v194(v15, v197 + v196, v195);
      v33 = [*(v29 + 176) dayViewModelAtIndex_];
      v34 = v200;
      *&v15[*(v200 + 20)] = v33;
      v35 = v33;
      LODWORD(v205) = [v35 bleedingInPregnancyLevel] != 1;
      sub_29E029468(v15);

      v32(v15, v29 + v30, v31);
      v36 = [*(v29 + 176) dayViewModelAtIndex_];
      *&v15[*(v34 + 20)] = v36;
      v37 = v36;
      v38 = [v37 bleedingAfterPregnancyLevel];
      LODWORD(v206) = 0;
      v39 = &v215;
    }

    *(v39 - 64) = 0;
    v66 = v38 != 1;
    v67 = &v213;
  }

  *(v67 - 64) = v66;
  sub_29E029468(v15);

LABEL_16:
  v72 = v20 + 2;
  v71 = v20[2];
  if (v71)
  {
    v73 = 0;
    v203 = *MEMORY[0x29EDC3250];
    v202 = *MEMORY[0x29EDC3248];
    v201 = *MEMORY[0x29EDC3230];
    v199 = *MEMORY[0x29EDC3228];
    while (1)
    {
      v74 = v20[v73 + 4];
      if (v207)
      {
        v75 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v77 = v76;
        if (v75 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v77 == v78)
        {
          goto LABEL_49;
        }

        v80 = sub_29E2C4914();
        v81 = v74;

        if (v80)
        {

          v101 = v73 + 1;
          if (!__OFADD__(v73, 1))
          {
            goto LABEL_54;
          }

LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
          goto LABEL_116;
        }
      }

      else
      {
        v82 = v74;
      }

      if (v206)
      {
        break;
      }

LABEL_34:
      if (v205)
      {
        v89 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v91 = v90;
        if (v89 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v91 == v92)
        {
          goto LABEL_48;
        }

        v94 = sub_29E2C4914();

        if (v94)
        {
LABEL_52:

LABEL_53:
          v101 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            goto LABEL_112;
          }

          goto LABEL_54;
        }
      }

      if (v204)
      {
        v95 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v97 = v96;
        if (v95 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v97 == v98)
        {
          goto LABEL_48;
        }

        v100 = sub_29E2C4914();

        if (v100)
        {
          goto LABEL_53;
        }
      }

      else
      {
      }

      if (v71 == ++v73)
      {
        goto LABEL_47;
      }
    }

    v83 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v85 = v84;
    if (v83 != _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() || v85 != v86)
    {
      v88 = sub_29E2C4914();

      if (v88)
      {
        goto LABEL_52;
      }

      goto LABEL_34;
    }

LABEL_48:

LABEL_49:

    v101 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      goto LABEL_112;
    }

LABEL_54:
    v102 = *v72;
    if (v101 != *v72)
    {
      v103 = v73 + 5;
      while (1)
      {
        v106 = v103 - 4;
        if (v103 - 4 >= v102)
        {
          goto LABEL_113;
        }

        v107 = v20[v103];
        if (v207)
        {
          v108 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          v110 = v109;
          if (v108 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v110 == v111)
          {
            goto LABEL_57;
          }

          v113 = sub_29E2C4914();
          v114 = v107;

          if (v113)
          {

            goto LABEL_58;
          }
        }

        else
        {
          v115 = v107;
        }

        if (v206)
        {
          v116 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          v118 = v117;
          if (v116 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v118 == v119)
          {
            goto LABEL_56;
          }

          v121 = sub_29E2C4914();

          if (v121)
          {
            goto LABEL_78;
          }
        }

        if (v205)
        {
          v122 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          v124 = v123;
          if (v122 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v124 == v125)
          {
            goto LABEL_56;
          }

          v126 = sub_29E2C4914();

          if (v126)
          {
LABEL_78:

            goto LABEL_58;
          }
        }

        if (!v204)
        {

          if (v106 == v73)
          {
LABEL_93:
            ++v73;
            goto LABEL_58;
          }

LABEL_86:
          if (v73 < 0)
          {
            goto LABEL_117;
          }

          if (v73 >= *v72)
          {
            goto LABEL_118;
          }

          if (v106 >= *v72)
          {
            goto LABEL_119;
          }

          v132 = v20[v103];
          v133 = v20[v73 + 4];
          v134 = v132;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_29E14DA08(v20);
          }

          v135 = &v20[v73];
          v136 = v135[4];
          v135[4] = v134;

          if (v106 >= v20[2])
          {
            goto LABEL_120;
          }

          v137 = v20[v103];
          v20[v103] = v133;

          goto LABEL_93;
        }

        v127 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v129 = v128;
        if (v127 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v129 == v130)
        {
LABEL_56:

LABEL_57:

          goto LABEL_58;
        }

        v131 = sub_29E2C4914();

        if ((v131 & 1) == 0)
        {
          if (v106 == v73)
          {
            goto LABEL_93;
          }

          goto LABEL_86;
        }

LABEL_58:
        v72 = v20 + 2;
        v102 = v20[2];
        v104 = v103 + 1;
        v105 = v103 - 3;
        ++v103;
        if (v105 == v102)
        {
          v101 = v104 - 4;
          break;
        }
      }
    }

    if (v101 < v73)
    {
      goto LABEL_115;
    }

    if (v73 < 0)
    {
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      return;
    }
  }

  else
  {
LABEL_47:
    v101 = *v72;
    v73 = *v72;
  }

  if (__OFADD__(v101, v73 - v101))
  {
    goto LABEL_114;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v212 = v20;
  if (!isUniquelyReferenced_nonNull_native || v73 > v20[3] >> 1)
  {
    if (v101 <= v73)
    {
      v139 = v73;
    }

    else
    {
      v139 = v101;
    }

    v20 = sub_29E1437F8(isUniquelyReferenced_nonNull_native, v139, 1, v20);
    v212 = v20;
  }

  sub_29E14F9F8(v73, v101, 0);
  v140 = v192;
  v141 = *(v192 + 136);
  v142 = v197;
  v143 = v198;
  v194(v198, v197 + v196, v195);
  v144 = *(v142 + 176);
  v145 = v141;
  v146 = [v144 dayViewModelAtIndex_];
  *(v143 + *(v200 + 20)) = v146;
  v147 = *(v187 + *(type metadata accessor for CycleLogModel() + 36));
  v205 = [*(v142 + 24) healthStore];
  sub_29DE9DC34(v140 + 56, v211);
  v149 = *(v142 + 32);
  v148 = *(v142 + 40);
  swift_unknownObjectRetain();
  v150 = v148;
  v151 = [v146 daySummary];
  v152 = v151;
  if (!v151)
  {
    v153 = objc_opt_self();
    v152 = [v153 emptyDaySummaryWithDayIndex_];
    v151 = 0;
  }

  v154 = v151;
  v206 = v147;
  v204 = v150;
  if (v141)
  {
    v207 = [v145 recentSymptoms];
  }

  else
  {
    v207 = 0;
  }

  v155 = v190;
  v156 = [v145 recentBasalBodyTemperature];
  v203 = [v156 mostRecent];

  sub_29DE9DC34(v211, v210);
  v157 = type metadata accessor for LoggingCardCarouselViewController();
  v158 = objc_allocWithZone(v157);
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView] = 0;
  v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_hasCollectionViewFocusedInitialCard] = 0;
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewFlowLayout] = 0;
  v159 = v189;
  v160 = v188;
  (*(v189 + 104))(v188, *MEMORY[0x29EDB9C78], v155);
  sub_29E2BCCA4();
  (*(v159 + 8))(v160, v155);
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_infiniteRepeatCount] = 4;
  v161 = &v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_indexOfCellBeforeDragging];
  *v161 = 0;
  v161[8] = 1;
  v162 = &v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_contentOffsetXBeforeDragging];
  *v162 = 0;
  v162[8] = 1;
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_cardProgressLabel] = 0;
  v163 = &v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
  *(v163 + 12) = 0;
  *(v163 + 4) = 0u;
  *(v163 + 5) = 0u;
  *(v163 + 2) = 0u;
  *(v163 + 3) = 0u;
  *v163 = 0u;
  *(v163 + 1) = 0u;
  v164 = MEMORY[0x29EDCA190];
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCards] = MEMORY[0x29EDCA190];
  v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCardValidationResult] = 0;
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCardCarouselViewControllerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v165 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_temperatureFormatter;
  v166 = [objc_allocWithZone(MEMORY[0x29EDBA030]) init];
  v202 = v145;
  v167 = v166;
  [v166 setUnitStyle_];
  [v167 setUnitOptions_];
  v168 = [objc_allocWithZone(MEMORY[0x29EDBA078]) init];
  [v168 setMaximumFractionDigits_];
  [v168 setMinimumFractionDigits_];
  [v167 setNumberFormatter_];

  *&v158[v165] = v167;
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_editOrdering] = v164;
  v169 = &v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_previousSize];
  *v169 = 0;
  v169[1] = 0;
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewToDateLabelConstraint] = 0;
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_topToDateLabelSpacingConstraint] = 0;
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewContentHeightConstraint] = 0;
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_verticalShadowPadding] = 0x4034000000000000;
  v170 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_containerView;
  v171 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  [v171 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v158[v170] = v171;
  v172 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_bottomSpacer;
  v173 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  [v173 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v158[v172] = v173;
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController____lazy_storage___dateLabel] = 0;
  v174 = v191;
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_selectedDataType] = v191;
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] = v152;
  v175 = v174;
  v176 = v152;
  [v176 mutableCopy];
  sub_29E2C43D4();
  swift_unknownObjectRelease();
  sub_29DE9408C(0, &qword_2A1820D90);
  swift_dynamicCast();
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary] = v209;
  v177 = v206;
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_userPreferredUnit] = v206;
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_unhiddenDataTypes] = v20;
  v178 = v203;
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mostRecentBasalBodyTemperature] = v203;
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_recentSymptoms] = v207;
  v179 = v205;
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_healthStore] = v205;
  sub_29DE9DC34(v210, &v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_pinnedContentManager]);
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_pregnancyModelProvider] = v149;
  v180 = v204;
  *&v158[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_calendarCache] = v204;
  v208.receiver = v158;
  v208.super_class = v157;
  swift_unknownObjectRetain();
  v181 = v180;
  v182 = v177;
  v183 = v178;
  v184 = v179;
  v185 = objc_msgSendSuper2(&v208, sel_initWithNibName_bundle_, 0, 0);

  swift_unknownObjectRelease();
  sub_29DE93B3C(v210);
  sub_29DE93B3C(v211);
  sub_29E029468(v198);
  *&v185[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCardCarouselViewControllerDelegate + 8] = &off_2A24C20A8;
  swift_unknownObjectWeakAssign();
}

char *sub_29E2A2DD8()
{
  v1 = v0;
  v98 = sub_29E2C0514();
  v97 = *(v98 - 8);
  MEMORY[0x2A1C7C4A8](v98);
  v95 = v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2C0B44();
  v96 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v92 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v4;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = v83 - v6;
  v90 = sub_29E2C0AD4();
  v89 = *(v90 - 8);
  MEMORY[0x2A1C7C4A8](v90);
  v88 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_29E2C0AB4();
  v86 = *(v87 - 8);
  MEMORY[0x2A1C7C4A8](v87);
  v85 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CycleDay();
  v11 = v10 - 8;
  MEMORY[0x2A1C7C4A8](v10);
  v94 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = v83 - v14;
  v105 = sub_29E2BCEA4();
  v103 = *(v105 - 8);
  MEMORY[0x2A1C7C4A8](v105);
  v93 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = v83 - v18;
  v20 = v0[2];
  v21 = *(v20 + 32);
  v22 = *(v20 + 176);
  v23 = *(v20 + 40);
  v101 = *(v20 + 24);
  v106 = v21;
  swift_unknownObjectRetain();
  v24 = v22;
  v25 = [v23 currentCalendar];
  sub_29E2BCDC4();

  v26 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleLoggingDataProvider_currentDay;
  swift_beginAccess();
  v27 = sub_29E2C31A4();
  (*(*(v27 - 8) + 16))(v15, v20 + v26, v27);
  v28 = [*(v20 + 176) dayViewModelAtIndex_];
  v29 = *(v11 + 28);
  v30 = v15;
  *&v15[v29] = v28;
  v31 = v1[17];
  v32 = MEMORY[0x29EDCA190];
  v99 = v3;
  v104 = v7;
  if (v31)
  {
    v33 = [v31 ongoingCycleFactors];
    sub_29DE9408C(0, &qword_2A1A61D50);
    v34 = sub_29E2C3614();
  }

  else
  {
    v34 = MEMORY[0x29EDCA190];
  }

  v36 = v1[4];
  v35 = v1[5];
  sub_29DE9DC34((v1 + 12), v110);
  v37 = objc_allocWithZone(type metadata accessor for CycleFactorsDaySummaryCollectionViewController());
  *&v37[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_ongoingCycleFactors] = v32;
  *&v37[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_collectionViewSource] = 0;
  *&v37[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_viewModelProvider] = v24;
  *&v37[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_featureSettings] = v36;
  *&v37[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_deviationsFeatureStatus] = v35;
  v38 = *(v103 + 16);
  v83[1] = (v103 + 16);
  v84 = v38;
  v102 = v19;
  v38(&v37[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_gregorianCalendar], v19, v105);
  sub_29E00C08C(v30, &v37[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_cycleDay]);
  type metadata accessor for CycleFactorsImpactNotificationFactory();
  v39 = v106;
  swift_getObjectType();
  swift_retain_n();
  swift_retain_n();
  v40 = v101;
  v101 = v30;
  v41 = v40;
  v83[0] = v40;
  swift_unknownObjectRetain();
  v100 = v24;
  *&v37[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_notificationImpactFactory] = sub_29E068230(v34, v41, v36, v35, v39);
  v42 = v99;
  v43 = swift_allocBox();
  v44 = *MEMORY[0x29EDC7848];
  v45 = *(v86 + 104);
  v46 = v85;
  v47 = v87;
  v45(v85, v44, v87);
  sub_29E2C0AE4();
  (*(v89 + 104))(v88, *MEMORY[0x29EDC7860], v90);
  sub_29E2C0B04();
  v48 = v47;
  v49 = v42;
  v45(v46, v44, v48);
  v50 = v104;
  sub_29E2C0AE4();
  sub_29DE9408C(0, &qword_2A18205A8);
  v51 = v96;
  v52 = v92;
  (*(v96 + 16))(v92, v50, v42);
  v53 = (*(v51 + 80) + 24) & ~*(v51 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = v43;
  (*(v51 + 32))(v54 + v53, v52, v42);
  v92 = v43;

  v55 = sub_29E2C3FA4();

  v56 = v83[0];
  v57 = [v83[0] healthStore];
  sub_29DE9DC34(v110, v109);
  v37[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_launchSource] = 2;
  *&v37[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_providedHealthStore] = v57;
  *&v37[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_analysisProvider] = v56;
  sub_29DE9DC34(v109, &v37[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_healthExperienceStore]);
  *&v37[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_pregnancyModelProvider] = v106;
  v58 = type metadata accessor for CycleFactorsCollectionViewController();
  v108.receiver = v37;
  v108.super_class = v58;
  v59 = v56;
  v60 = v105;
  v61 = v59;
  swift_unknownObjectRetain();
  v62 = objc_msgSendSuper2(&v108, sel_initWithCollectionViewLayout_, v55);
  sub_29DE93B3C(v109);
  v62[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_launchSource] = 1;
  v63 = v62;
  v91 = v61;
  [v61 registerObserver_];
  [v100 registerObserver_];
  v64 = *&v63[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_providedHealthStore];
  v65 = v93;
  v84(v93, v102, v60);
  v66 = v94;
  sub_29E00C08C(v101, v94);
  v67 = objc_allocWithZone(type metadata accessor for CycleFactorsDaySummaryCollectionViewSource());
  v68 = v63;
  v69 = sub_29E2A3A24(v64, v68, v65, v66, v67);
  v70 = *&v68[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_collectionViewSource];
  *&v68[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_collectionViewSource] = v69;

  v71 = v95;
  sub_29E2C04B4();
  v72 = sub_29E2C0504();
  v73 = sub_29E2C3A34();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v109[0] = v75;
    *v74 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29E2A3EC4(0, &qword_2A1820D98, type metadata accessor for CycleFactorsDaySummaryCollectionViewController);
    v76 = sub_29E2C3424();
    v78 = v55;
    v79 = v71;
    v80 = v51;
    v81 = sub_29DFAA104(v76, v77, v109);

    *(v74 + 4) = v81;
    _os_log_impl(&dword_29DE74000, v72, v73, "[%{public}s] Initializing", v74, 0xCu);
    sub_29DE93B3C(v75);
    MEMORY[0x29ED82140](v75, -1, -1);
    MEMORY[0x29ED82140](v74, -1, -1);

    swift_unknownObjectRelease();
    (*(v97 + 8))(v79, v98);
    (*(v80 + 8))(v104, v99);
    sub_29DE93B3C(v110);
    sub_29E029468(v101);
    (*(v103 + 8))(v102, v105);
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v97 + 8))(v71, v98);
    (*(v51 + 8))(v104, v49);
    sub_29DE93B3C(v110);
    sub_29E029468(v101);
    (*(v103 + 8))(v102, v60);
  }

  return v68;
}

char *sub_29E2A3A24(void *a1, void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = sub_29E2C0514();
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_delegate + 8] = 0;
  v13 = swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource____lazy_storage___shortMonthDayYearDateFormatter] = 0;
  *&a5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource____lazy_storage___yearDateFormatter] = 0;
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_cycleFactors;
  v15 = MEMORY[0x29EDCA190];
  *&a5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_cycleFactors] = MEMORY[0x29EDCA190];
  *&a5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_rows] = v15;
  *&a5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_providedHealthStore] = a1;
  *(v13 + 8) = &off_2A24BCD48;
  swift_unknownObjectWeakAssign();
  v38 = a1;

  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_gregorianCalenadar;
  v17 = sub_29E2BCEA4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v41 = a3;
  v19(&a5[v16], a3, v17);
  sub_29E00C08C(a4, &a5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_cycleDay]);
  v20 = [*(a4 + *(type metadata accessor for CycleDay() + 20)) cycleFactors];
  if (v20)
  {
    v21 = v20;
    sub_29DE9408C(0, &qword_2A1A61D50);
    v22 = sub_29E2C3614();

    *&a5[v14] = sub_29E2A0224(v22, sub_29E151758, sub_29E14DC98, sub_29E151750);
  }

  v23 = type metadata accessor for CycleFactorsDaySummaryCollectionViewSource();
  v44.receiver = a5;
  v44.super_class = v23;
  v24 = objc_msgSendSuper2(&v44, sel_init);
  sub_29E2C04B4();
  v25 = sub_29E2C0504();
  v26 = sub_29E2C3A34();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v37 = a4;
    v28 = v27;
    v29 = swift_slowAlloc();
    v43 = v29;
    *v28 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29E2A3EC4(0, &qword_2A1820DA0, type metadata accessor for CycleFactorsDaySummaryCollectionViewSource);
    v30 = sub_29E2C3424();
    v32 = sub_29DFAA104(v30, v31, &v43);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_29DE74000, v25, v26, "[%{public}s] Initializing", v28, 0xCu);
    sub_29DE93B3C(v29);
    MEMORY[0x29ED82140](v29, -1, -1);
    v33 = v28;
    a4 = v37;
    MEMORY[0x29ED82140](v33, -1, -1);
  }

  (*(v39 + 8))(v12, v40);
  v34 = sub_29DEEB7E8();

  (*(v18 + 8))(v41, v17);
  sub_29E029468(a4);
  *&v24[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_rows] = v34;

  return v24;
}

uint64_t sub_29E2A3E40(uint64_t a1)
{
  sub_29E2C0B44();

  return sub_29E16D588(a1);
}

uint64_t sub_29E2A3EC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29E2A3F10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29DE9657C;

  return sub_29E2A0D4C(a1, v4, v5, v7, v6);
}

unint64_t sub_29E2A3FD0()
{
  result = qword_2A181CF70;
  if (!qword_2A181CF70)
  {
    type metadata accessor for TwelveMonthCycleHistoryPDFProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181CF70);
  }

  return result;
}

id sub_29E2A4054(void *a1)
{
  v2 = v1;
  v12 = a1;
  v3 = sub_29E2C2B84();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DE9408C(0, &qword_2A1A626C0);
  *v6 = sub_29E2C3CF4();
  (*(v4 + 104))(v6, *MEMORY[0x29EDCA278], v3);
  v7 = sub_29E2C2BA4();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = *(v2 + 136);
    *(v2 + 136) = v12;

    v10 = v12;

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E2A41E8()
{
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  v1 = *&v0[qword_2A1820DA8];
  if (v1)
  {
    v2 = v1;
    [v2 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [v0 contentView];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    v31.origin.x = v13;
    v31.origin.y = v15;
    v31.size.width = v17;
    v31.size.height = v19;
    if (!CGRectEqualToRect(v30, v31))
    {
      v20 = [v0 contentView];
      [v20 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      [v2 setFrame_];
      [v2 setNeedsDisplay];
    }
  }
}

void sub_29E2A4360(void *a1)
{
  v1 = a1;
  sub_29E2A41E8();
}

id sub_29E2A43A8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[qword_2A1820DA8] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_29E2A4440(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_2A1820DA8] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t type metadata accessor for CycleFactorsReminderActionHandler()
{
  result = qword_2A1A602E8;
  if (!qword_2A1A602E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E2A4554()
{
  sub_29E2A6414();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_29E2A45F4()
{
  v13 = sub_29E2BE2A4();
  v0 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2BF6C4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v12 - v8;
  type metadata accessor for CycleFactorsReminderActionHandler();
  sub_29E2A664C(&qword_2A1A602F8, type metadata accessor for CycleFactorsReminderActionHandler);
  sub_29E2BF864();
  type metadata accessor for ReviewCycleFactorsEvent();
  sub_29E2BF414();
  sub_29E2BF684();
  v10 = *(v4 + 8);
  v10(v9, v3);
  sub_29E2BF414();
  sub_29E2BF694();
  v10(v6, v3);
  v11 = sub_29E2BE8F4();

  sub_29DED1100(0, 1, v2, v11);

  (*(v0 + 8))(v2, v13);
  sub_29E2A484C();
}

void sub_29E2A484C()
{
  v33 = *v0;
  v1 = sub_29E2BF6C4();
  v34 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v29[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_29E2BE2A4();
  v35 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E2C04B4();

  v11 = sub_29E2C0504();
  v12 = sub_29E2C3A34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = v7;
    v14 = v13;
    v31 = swift_slowAlloc();
    v36[0] = v31;
    *v14 = 136446466;
    v15 = sub_29E2C4AE4();
    v30 = v12;
    v17 = sub_29DFAA104(v15, v16, v36);
    v33 = v8;
    v18 = v4;
    v19 = v17;

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    sub_29E2BF414();
    sub_29E2BF684();
    (*(v34 + 8))(v3, v1);
    sub_29E2A664C(&qword_2A1818200, MEMORY[0x29EDC1D90]);
    v20 = sub_29E2C48D4();
    v22 = v21;
    (*(v35 + 8))(v6, v18);
    v23 = sub_29DFAA104(v20, v22, v36);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_29DE74000, v11, v30, "[%{public}s] Dismissing tile from %s", v14, 0x16u);
    v24 = v31;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v24, -1, -1);
    MEMORY[0x29ED82140](v14, -1, -1);

    (*(v33 + 8))(v10, v32);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  sub_29DE9408C(0, &qword_2A1819A60);
  v25 = sub_29E2C3B64();
  v36[0] = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v36[1] = v26;
  MEMORY[0x29ED7FCC0](0x6574616470752ELL, 0xE700000000000000);
  sub_29E2C33A4();

  v27 = objc_allocWithZone(sub_29E2BDF64());
  v28 = sub_29E2BDF54();
  [v25 addOperation_];
}

uint64_t sub_29E2A4CD4()
{
  v1 = v0;
  v160 = *v0;
  v155 = sub_29E2BE2A4();
  v154 = *(v155 - 8);
  MEMORY[0x2A1C7C4A8](v155);
  v153 = &v141 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  v162 = v3;
  v163 = v4;
  MEMORY[0x2A1C7C4A8](v3);
  v156 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v145 = &v141 - v7;
  MEMORY[0x2A1C7C4A8](v8);
  v147 = &v141 - v9;
  MEMORY[0x2A1C7C4A8](v10);
  v150 = &v141 - v11;
  MEMORY[0x2A1C7C4A8](v12);
  v149 = &v141 - v13;
  sub_29E2A6414();
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v151 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v141 - v17;
  v19 = type metadata accessor for CycleFactorsReminderUserData();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v158 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v143 = &v141 - v23;
  MEMORY[0x2A1C7C4A8](v24);
  v144 = &v141 - v25;
  MEMORY[0x2A1C7C4A8](v26);
  v28 = &v141 - v27;
  MEMORY[0x2A1C7C4A8](v29);
  v148 = &v141 - v30;
  v31 = sub_29E2BF6C4();
  v32 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v152 = &v141 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v34);
  v159 = &v141 - v35;
  MEMORY[0x2A1C7C4A8](v36);
  v38 = &v141 - v37;
  sub_29E2BF414();
  v39 = sub_29E2BF6A4();
  v40 = *(v32 + 8);
  v41 = v38;
  v43 = v42;
  v161 = v31;
  v157 = v32 + 8;
  v40(v41, v31);
  if (v43 >> 60 == 15)
  {
    (*(v20 + 56))(v18, 1, 1, v19);
    v44 = qword_2A1A60310;
    swift_beginAccess();
    sub_29E2A6508(v18, &v1[v44]);
    swift_endAccess();
    v45 = v156;
    sub_29E2C04B4();

    v46 = sub_29E2C0504();
    v47 = sub_29E2C3A34();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock[0] = v49;
      *v48 = 136446466;
      v50 = sub_29E2C4AE4();
      v52 = sub_29DFAA104(v50, v51, aBlock);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2080;
      sub_29E2BF414();
      v53 = sub_29E2C3424();
      v55 = sub_29DFAA104(v53, v54, aBlock);

      *(v48 + 14) = v55;
      _os_log_impl(&dword_29DE74000, v46, v47, "[%{public}s] Context contains nil user data: %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v49, -1, -1);
      MEMORY[0x29ED82140](v48, -1, -1);
    }

    return (*(v163 + 8))(v45, v162);
  }

  else
  {
    v57 = v20;
    v146 = v40;
    v156 = v1;
    sub_29E2BC2B4();
    swift_allocObject();
    sub_29DF1DE4C(v39, v43);
    sub_29E2BC2A4();
    sub_29E2A664C(&qword_2A1820E30, type metadata accessor for CycleFactorsReminderUserData);
    sub_29E2BC294();
    v142 = v43;
    v141 = v39;

    sub_29DF1DD38(v39, v43);
    v58 = v28;
    v59 = v148;
    sub_29E22FF58(v58, v148);
    sub_29E2A65E4(v59, v18, type metadata accessor for CycleFactorsReminderUserData);
    v60 = v20;
    (*(v20 + 56))(v18, 0, 1, v19);
    v61 = qword_2A1A60310;
    v62 = v156;
    swift_beginAccess();
    sub_29E2A6508(v18, &v62[v61]);
    swift_endAccess();
    v63 = v149;
    sub_29E2C04B4();
    v64 = v144;
    sub_29E2A65E4(v59, v144, type metadata accessor for CycleFactorsReminderUserData);
    v65 = sub_29E2C0504();
    v66 = sub_29E2C3A34();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      aBlock[0] = v68;
      *v67 = 136446466;
      v69 = sub_29E2C4AE4();
      v71 = sub_29DFAA104(v69, v70, aBlock);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2080;
      sub_29E2A65E4(v64, v143, type metadata accessor for CycleFactorsReminderUserData);
      v72 = v19;
      v73 = sub_29E2C3464();
      v74 = v64;
      v76 = v75;
      sub_29E2A6584(v74, type metadata accessor for CycleFactorsReminderUserData);
      v77 = sub_29DFAA104(v73, v76, aBlock);

      *(v67 + 14) = v77;
      v62 = v156;
      _os_log_impl(&dword_29DE74000, v65, v66, "[%{public}s] Updating user data to %s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v68, -1, -1);
      MEMORY[0x29ED82140](v67, -1, -1);

      v78 = v162;
      v79 = *(v163 + 8);
      v79(v149, v162);
      v80 = v148;
      v60 = v57;
    }

    else
    {
      v72 = v19;

      sub_29E2A6584(v64, type metadata accessor for CycleFactorsReminderUserData);
      v78 = v162;
      v79 = *(v163 + 8);
      v79(v63, v162);
      v80 = v59;
    }

    sub_29E2A6584(v80, type metadata accessor for CycleFactorsReminderUserData);
    v81 = qword_2A1A60310;
    swift_beginAccess();
    v82 = &v62[v81];
    v83 = v151;
    sub_29E2A65E4(v82, v151, sub_29E2A6414);
    if ((*(v60 + 48))(v83, 1, v72) == 1)
    {
      sub_29E2A6584(v83, sub_29E2A6414);
      v84 = v145;
      sub_29E2C04B4();
      v85 = sub_29E2C0504();
      v86 = sub_29E2C3A14();
      v87 = os_log_type_enabled(v85, v86);
      v88 = v141;
      if (v87)
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        aBlock[0] = v90;
        *v89 = 136446210;
        v91 = sub_29E2C4AE4();
        v93 = sub_29DFAA104(v91, v92, aBlock);

        *(v89 + 4) = v93;
        _os_log_impl(&dword_29DE74000, v85, v86, "[%{public}s] Not presenting factors review flow due to nil userData", v89, 0xCu);
        sub_29DE93B3C(v90);
        MEMORY[0x29ED82140](v90, -1, -1);
        MEMORY[0x29ED82140](v89, -1, -1);

        sub_29DF1DD38(v88, v142);
      }

      else
      {
        sub_29DF1DD38(v141, v142);
      }

      return (v79)(v84, v78);
    }

    else
    {
      sub_29E22FF58(v83, v158);
      v94 = v159;
      sub_29E2BF414();
      sub_29E2BF694();
      v146(v94, v161);
      v95 = sub_29E2BE8F4();

      v96 = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
      type metadata accessor for OnboardingUserInfo();
      v97 = swift_allocObject();
      *(v97 + 24) = 0;
      v98 = v62;
      v99 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_startOfLastMenstrualPeriodDayIndex;
      v100 = sub_29E2C31A4();
      (*(*(v100 - 8) + 56))(v97 + v99, 1, 1, v100);
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_startOfLastMenstrualPeriodDayFromAnalysis) = 0;
      v101 = v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLength;
      *v101 = 5;
      *(v101 + 8) = 0;
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLengthFromAnalysis) = 0;
      v102 = v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLength;
      *v102 = 28;
      *(v102 + 8) = 0;
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLengthFromAnalysis) = 0;
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationProjectionsEnabled) = 1;
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationNotificationsEnabled) = 1;
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deviationDetectionEnabled) = 1;
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowProjectionsEnabled) = 0;
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowNotificationsEnabled) = 0;
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertilityTrackingDisplayTypesVisible) = 0;
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_sexualActivityDisplayTypeVisible) = 0;
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_isHealthNotificationsAuthorized) = 1;
      v103 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers;
      v104 = HKLogMenstrualCyclesCategory();
      v105 = objc_allocWithZone(MEMORY[0x29EDBACC8]);
      v106 = sub_29E2C33A4();
      v107 = [v105 initWithName:v106 loggingCategory:v104];

      *(v97 + v103) = v107;
      v108 = MEMORY[0x29EDCA190];
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds) = MEMORY[0x29EDCA190];
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_isOnboardingFlow) = 1;
      (*(v154 + 56))(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_presentation, 1, 1, v155);
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_ongoingCycleFactors) = v108;
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_reviewOngoingCycleFactors) = v108;
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deletedCycleFactors) = v108;
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors) = v108;
      *(v97 + 16) = v96;
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_healthStore) = v95;
      type metadata accessor for CountryGatingOnboardingHandler();
      v109 = swift_allocObject();
      *(v109 + 24) = 0u;
      *(v109 + 40) = 0u;
      *(v109 + 56) = 0;
      *(v109 + 16) = v95;
      *(v97 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_countryGatingHandler) = v109;
      v110 = v95;
      v111 = v96;

      sub_29DFF75C8(0);

      v112 = [objc_opt_self() currentNotificationCenter];
      v113 = swift_allocObject();
      v113[3] = 0;
      v113[4] = 0;
      v113[2] = v97;
      aBlock[4] = sub_29DFF5ABC;
      aBlock[5] = v113;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29DF6E81C;
      aBlock[3] = &unk_2A24C2230;
      v114 = _Block_copy(aBlock);

      [v112 getNotificationSettingsWithCompletionHandler_];
      _Block_release(v114);

      sub_29DF298C4();
      v115 = sub_29E2C2E94();
      v116 = *(v97 + 24);
      *(v97 + 24) = v115;
      v117 = v115;

      sub_29E0692B0();

      sub_29E2BF414();
      sub_29E2BF694();
      v118 = v161;
      v119 = v146;
      v146(v94, v161);
      sub_29E2BE904();

      v120 = v152;
      sub_29E2BF414();
      v121 = v153;
      sub_29E2BF684();
      v119(v120, v118);
      v122 = objc_allocWithZone(type metadata accessor for CycleFactorsReviewNavigationController());
      v123 = sub_29DF6076C(v97, aBlock, v121);

      v124 = *&v98[qword_2A1A60318];
      *&v98[qword_2A1A60318] = v123;
      v151 = v123;

      v125 = v147;
      sub_29E2C04B4();
      v126 = sub_29E2C0504();
      v127 = sub_29E2C3A34();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        aBlock[0] = v129;
        *v128 = 136446210;
        v130 = sub_29E2C4AE4();
        v132 = sub_29DFAA104(v130, v131, aBlock);

        *(v128 + 4) = v132;
        _os_log_impl(&dword_29DE74000, v126, v127, "[%{public}s] Presenting factors review flow", v128, 0xCu);
        sub_29DE93B3C(v129);
        MEMORY[0x29ED82140](v129, -1, -1);
        MEMORY[0x29ED82140](v128, -1, -1);
      }

      (*(v163 + 8))(v125, v162);
      type metadata accessor for ReviewCycleFactorsEvent();
      v133 = v159;
      sub_29E2BF414();
      v134 = v153;
      sub_29E2BF684();
      v135 = v161;
      v136 = v146;
      v146(v133, v161);
      v137 = v152;
      sub_29E2BF414();
      sub_29E2BF694();
      v136(v137, v135);
      v138 = sub_29E2BE8F4();

      sub_29DED1100(0, 0, v134, v138);

      (*(v154 + 8))(v134, v155);
      sub_29E2BF414();
      v139 = sub_29E2BF6B4();
      v136(v133, v135);
      v140 = v151;
      [v139 showViewController:v151 sender:0];

      sub_29DF1DD38(v141, v142);
      return sub_29E2A6584(v158, type metadata accessor for CycleFactorsReminderUserData);
    }
  }
}

uint64_t sub_29E2A61C0(uint64_t a1)
{
  v2 = sub_29E2BF6C4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_2A1A60310;
  v8 = type metadata accessor for CycleFactorsReminderUserData();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  *(v6 + qword_2A1A60318) = 0;
  (*(v3 + 16))(v5, a1, v2);
  v9 = sub_29E2BF424();
  (*(v3 + 8))(a1, v2);
  return v9;
}

void sub_29E2A631C()
{
  sub_29E2A6584(v0 + qword_2A1A60310, sub_29E2A6414);
  v1 = *(v0 + qword_2A1A60318);
}

uint64_t sub_29E2A6370()
{
  v0 = sub_29E2BF434();
  v1 = qword_2A1A60310;

  sub_29E2A6584(v2 + v1, sub_29E2A6414);
  v3 = *(v0 + qword_2A1A60318);

  return swift_deallocClassInstance();
}

void sub_29E2A6414()
{
  if (!qword_2A1A60B88)
  {
    type metadata accessor for CycleFactorsReminderUserData();
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A60B88);
    }
  }
}

uint64_t sub_29E2A6508(uint64_t a1, uint64_t a2)
{
  sub_29E2A6414();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E2A656C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E2A6584(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E2A65E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E2A664C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_29E2A669C()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49MenstrualCyclesOnboardingLastPeriodViewController____lazy_storage___periodLengthViewController;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49MenstrualCyclesOnboardingLastPeriodViewController____lazy_storage___periodLengthViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49MenstrualCyclesOnboardingLastPeriodViewController____lazy_storage___periodLengthViewController);
  }

  else
  {
    v4 = sub_29E2A6700(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_29E2A6700(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v36 - v8;
  sub_29E2C3314();
  v44 = *(v4 + 16);
  v44(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  v40 = qword_2A1A67F80;
  sub_29E2BCC74();
  v43 = v10;
  v42 = sub_29E2C3414();
  v41 = *(v4 + 8);
  v41(v9, v3);
  v39 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_userInfo;
  v11 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_userInfo);
  if (*(v11 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLengthFromAnalysis) == 1 && (*(v11 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLength + 8) & 1) == 0)
  {
    v38 = a1;
    v12 = *(v11 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLength);
    v13 = objc_allocWithZone(MEMORY[0x29EDB9F70]);

    v14 = [v13 init];
    v37 = sub_29E11FFCC(v12, 5);
    v16 = v15;

    if (v16)
    {

      sub_29E2C3314();
      v44(v6, v9, v3);
      v17 = v40;
      sub_29E2BCC74();
      sub_29E2C3414();
      v41(v9, v3);
      sub_29E2A7DCC(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_29E2CAB20;
      *(v18 + 56) = MEMORY[0x29EDC99B0];
      *(v18 + 64) = sub_29DEB1A44();
      *(v18 + 32) = v37;
      *(v18 + 40) = v16;
      v42 = sub_29E2C3404();
    }

    a1 = v38;
  }

  sub_29E2C3314();
  v44(v6, v9, v3);
  v19 = v40;
  sub_29E2BCC74();
  sub_29E2C3414();
  v41(v9, v3);
  v20 = *(a1 + v39);
  sub_29DE9DC34(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_pinnedContentManager, v48);
  v21 = objc_allocWithZone(type metadata accessor for MenstrualCyclesOnboardingPeriodLengthViewController());
  *&v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51MenstrualCyclesOnboardingPeriodLengthViewController____lazy_storage___typicalCycleViewController] = 0;
  sub_29DE9DC34(v48, v47);
  *&v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___dayPickerRange] = 1;
  *&v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___datePicker] = 0;
  *&v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___dayPicker] = 0;
  *&v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___dateComponentsFormatter] = 0;
  *&v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___footerLabel] = 0;
  *&v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___nextButton] = 0;
  v22 = &v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_pickerType];
  *v22 = xmmword_29E2E4990;
  v22[16] = 0;
  v23 = &v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_footerText];
  *v23 = 0;
  v23[1] = 0;
  v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_showSeparators] = 1;
  *&v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_userInfo] = v20;
  sub_29DE9DC34(v47, &v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_pinnedContentManager]);
  swift_retain_n();
  v24 = sub_29E2C33A4();

  v25 = sub_29E2C33A4();

  v26 = type metadata accessor for MenstrualCyclesOnboardingPickerViewController();
  v46.receiver = v21;
  v46.super_class = v26;
  v27 = objc_msgSendSuper2(&v46, sel_initWithTitle_detailText_icon_contentLayout_, v24, v25, 0, 2);

  v28 = v27;
  v29 = [v28 navigationItem];
  v30 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:1 target:v28 action:sel_cancelButtonTapped_];
  [v29 setRightBarButtonItem_];

  v31 = [v28 navigationItem];
  v32 = [v31 rightBarButtonItem];

  if (v32)
  {
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    v45 = xmmword_2A1A67E58;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E2EF140);
    v33 = sub_29E2C33A4();

    [v32 setAccessibilityIdentifier_];
  }

  else
  {
  }

  sub_29DE93B3C(v47);
  sub_29DE93B3C(v48);
  v34 = a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_delegate;
  swift_unknownObjectWeakLoadStrong();
  *&v28[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_delegate + 8] = *(v34 + 8);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v28;
}

void sub_29E2A6EB4()
{
  v1 = v0;
  v24 = sub_29E2BCEA4();
  v2 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCBB4();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2A7DCC(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_29E2C31A4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  PeriodViewController = type metadata accessor for MenstrualCyclesOnboardingLastPeriodViewController();
  v27.receiver = v0;
  v27.super_class = PeriodViewController;
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v16 = sub_29E1C74D8();
  [v16 addTarget:v1 action:sel_datePickerChangedWithPicker_ forControlEvents:4096];

  v17 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_userInfo];
  v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_startOfLastMenstrualPeriodDayIndex;
  swift_beginAccess();
  sub_29DE962B4(v17 + v18, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29DE96334(v10);
    v19 = sub_29E1C7678();
    [v19 setEnabled_];
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v20 = [*(v17 + 16) currentCalendar];
    sub_29E2BCDC4();

    sub_29E2C3194();
    (*(v2 + 8))(v4, v24);
    v21 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___datePicker];
    v22 = sub_29E2BCB04();
    [v21 setDate_];

    (*(v25 + 8))(v7, v26);
    v23 = sub_29E1C7678();
    [v23 setEnabled_];

    (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_29E2A72E4()
{
  v1 = sub_29E2C0514();
  v46 = *(v1 - 8);
  v47 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v43 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2A7DCC(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v42 = &v40 - v4;
  v45 = sub_29E2BCC94();
  v5 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v41 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v41);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2C31A4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E1C74D8();
  v16 = [v15 date];

  sub_29E2BCB44();
  v17 = v45;
  (*(v5 + 104))(v7, *MEMORY[0x29EDB9C78], v45);
  sub_29E2BCCA4();
  (*(v5 + 8))(v7, v17);
  v18 = v43;
  v40 = v10;
  sub_29E2C3144();
  v19 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_userInfo];
  v20 = *(v12 + 16);
  v21 = v42;
  v44 = v14;
  v20(v42, v14, v11);
  v45 = v12;
  (*(v12 + 56))(v21, 0, 1, v11);
  v22 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_startOfLastMenstrualPeriodDayIndex;
  swift_beginAccess();

  sub_29E06F128(v21, v19 + v22);
  swift_endAccess();

  sub_29E2C04B4();
  v23 = v0;
  v24 = sub_29E2C0504();
  v25 = sub_29E2C3A34();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v49[0] = v27;
    *v26 = 136446466;
    ObjectType = swift_getObjectType();
    sub_29E2A7D88();
    v28 = sub_29E2C3424();
    v30 = sub_29DFAA104(v28, v29, v49);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    v31 = [*&v23[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___datePicker] date];
    sub_29E2BCB44();

    v32 = sub_29E2C3464();
    v34 = sub_29DFAA104(v32, v33, v49);

    *(v26 + 14) = v34;
    _os_log_impl(&dword_29DE74000, v24, v25, "[%{public}s] Selected last menstrual period date: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v27, -1, -1);
    MEMORY[0x29ED82140](v26, -1, -1);
  }

  (*(v46 + 8))(v18, v47);
  v35 = sub_29E2A669C();
  [v23 showViewController:v35 sender:0];

  v36 = &v23[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v37 = *(v36 + 1);
    v38 = swift_getObjectType();
    sub_29E199CD0(2, 0, v38, v37);
    swift_unknownObjectRelease();
  }

  return (*(v45 + 8))(v44, v11);
}

uint64_t sub_29E2A78EC()
{
  v1 = sub_29E2C0514();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v25[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2A7DCC(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v25[-1] - v6;
  v8 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_userInfo];
  v9 = sub_29E2C31A4();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_startOfLastMenstrualPeriodDayIndex;
  swift_beginAccess();

  sub_29E06F128(v7, v8 + v10);
  swift_endAccess();

  sub_29E2C04B4();
  v11 = v0;
  v12 = sub_29E2C0504();
  v13 = sub_29E2C3A34();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25[0] = v15;
    *v14 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29E2A7D88();
    v16 = sub_29E2C3424();
    v18 = sub_29DFAA104(v16, v17, v25);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_29DE74000, v12, v13, "[%{public}s] Selected last menstrual period date: None", v14, 0xCu);
    sub_29DE93B3C(v15);
    MEMORY[0x29ED82140](v15, -1, -1);
    MEMORY[0x29ED82140](v14, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v19 = sub_29E2A669C();
  [v11 showViewController:v19 sender:0];

  v20 = &v11[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = *(v20 + 1);
    v23 = swift_getObjectType();
    sub_29E199CD0(2, 1u, v23, v22);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29E2A7C3C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_29E2C43D4();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return sub_29DE93B3C(&v9);
}

id sub_29E2A7D20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesOnboardingLastPeriodViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29E2A7D88()
{
  result = qword_2A1820E40;
  if (!qword_2A1820E40)
  {
    type metadata accessor for MenstrualCyclesOnboardingLastPeriodViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1820E40);
  }

  return result;
}

void sub_29E2A7DCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_29E2A7E30(uint64_t a1, uint64_t a2, void *a3, int a4, char *a5, void *a6)
{
  v7 = v6;
  v45 = a6;
  v58 = a5;
  v59 = a1;
  LODWORD(v54) = a4;
  v10 = *v7;
  v11 = sub_29E2C0514();
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v46 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2BD624();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBB680();
  v18 = *(v17 - 8);
  v47 = v17;
  v48 = v18;
  MEMORY[0x2A1C7C4A8](v17);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20SummaryTileGenerator_domain;
  v22 = sub_29E2BD594();
  v50 = *(v22 - 8);
  v51 = v22;
  v23 = *(v50 + 16);
  v55 = a2;
  v24 = v23(&v7[v21], a2);
  v52 = a3;
  v25 = a3;
  v26 = v45;
  v44[1] = v10;
  v49 = sub_29E2A8394(v24, v25, v54, v58, v45);
  v60 = v49;
  (*(v14 + 16))(v16, v59, v13);
  v27 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v28 = (v15 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v53 = v14;
  v54 = v13;
  (*(v14 + 32))(v29 + v27, v16, v13);
  v30 = (v29 + v28);
  v31 = v7;
  v32 = v46;
  *v30 = 0xD00000000000001DLL;
  v30[1] = 0x800000029E2EB890;
  sub_29DEBB750();
  sub_29E02CA48();
  sub_29E2AA4B8(&qword_2A1A61E90, sub_29DEBB750);
  sub_29E2C12A4();

  sub_29E2AA4B8(&qword_2A1A61F10, sub_29DEBB680);
  v33 = v47;
  v34 = sub_29E2C1274();
  (*(v48 + 8))(v20, v33);
  *(v31 + 2) = v34;
  sub_29E2C04B4();
  v35 = sub_29E2C0504();
  v36 = sub_29E2C3A34();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v60 = v38;
    *v37 = 136446210;
    v39 = sub_29E2C4AE4();
    v41 = sub_29DFAA104(v39, v40, &v60);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_29DE74000, v35, v36, "[%{public}s] Initialized", v37, 0xCu);
    sub_29DE93B3C(v38);
    MEMORY[0x29ED82140](v38, -1, -1);
    MEMORY[0x29ED82140](v37, -1, -1);
  }

  v42 = sub_29E2BCEA4();
  (*(*(v42 - 8) + 8))(v58, v42);
  (*(v50 + 8))(v55, v51);
  (*(v53 + 8))(v59, v54);
  (*(v56 + 8))(v32, v57);
  return v31;
}

id sub_29E2A8394(uint64_t a1, unint64_t a2, char a3, char *a4, void *a5)
{
  v216 = a5;
  v187 = a4;
  v217 = a2;
  v6 = MEMORY[0x29EDC9C68];
  sub_29E2AA500(0, &qword_2A1A616F0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v190 = &v176 - v8;
  sub_29E2AA500(0, &qword_2A1A62688, MEMORY[0x29EDC3980], v6);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v189 = &v176 - v10;
  v186 = sub_29E2C31A4();
  v195 = *(v186 - 8);
  MEMORY[0x2A1C7C4A8](v186);
  v185 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_29E2BCBB4();
  v191 = *(v192 - 8);
  MEMORY[0x2A1C7C4A8](v192);
  v179 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v180 = &v176 - v14;
  MEMORY[0x2A1C7C4A8](v15);
  v184 = &v176 - v16;
  MEMORY[0x2A1C7C4A8](v17);
  v183 = &v176 - v18;
  MEMORY[0x2A1C7C4A8](v19);
  v188 = &v176 - v20;
  MEMORY[0x2A1C7C4A8](v21);
  v196 = &v176 - v22;
  v213 = type metadata accessor for SummaryTileUserData();
  MEMORY[0x2A1C7C4A8](v213);
  v24 = &v176 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF18BBC(0);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v29 = &v176 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_29E2BD9F4();
  v208 = *(v30 - 8);
  v209 = v30;
  MEMORY[0x2A1C7C4A8](v30);
  v210 = &v176 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2AA500(0, &qword_2A1A61658, MEMORY[0x29EDC3A78], v6);
  MEMORY[0x2A1C7C4A8](v32 - 8);
  v211 = &v176 - v33;
  v34 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v34 - 8);
  v204 = &v176 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29E2C3384();
  v206 = *(v36 - 8);
  v207 = v36;
  MEMORY[0x2A1C7C4A8](v36);
  v203 = &v176 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38);
  v205 = &v176 - v39;
  v201 = sub_29E2BD234();
  v200 = *(v201 - 8);
  MEMORY[0x2A1C7C4A8](v201);
  v202 = &v176 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_29E2BD4C4();
  v212 = *(v199 - 8);
  MEMORY[0x2A1C7C4A8](v199);
  v193 = &v176 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v42);
  v215 = &v176 - v43;
  MEMORY[0x2A1C7C4A8](v44);
  v194 = &v176 - v45;
  MEMORY[0x2A1C7C4A8](v46);
  v48 = &v176 - v47;
  MEMORY[0x2A1C7C4A8](v49);
  v181 = &v176 - v50;
  MEMORY[0x2A1C7C4A8](v51);
  v182 = &v176 - v52;
  v53 = sub_29E2C0514();
  MEMORY[0x2A1C7C4A8](v53);
  MEMORY[0x2A1C7C4A8](v54);
  v56 = &v176 - v55;
  MEMORY[0x2A1C7C4A8](v57);
  v59 = &v176 - v58;
  *&v63 = MEMORY[0x2A1C7C4A8](v60).n128_u64[0];
  v65 = &v176 - v64;
  if ((a3 & 1) == 0)
  {
    v219 = MEMORY[0x29EDCA190];
    sub_29DF18BF0(0);
    sub_29E2C1164();
    sub_29E2AA4B8(&qword_2A1A61E70, sub_29DF18BBC);
    v68 = sub_29E2C1274();
    (*(v27 + 8))(v29, v26);
    return v68;
  }

  v197 = v62;
  v198 = v61;
  v178 = v29;
  v176 = v27;
  v66 = v217;
  v177 = v26;
  if (v217)
  {
    v67 = v216;
    if (!v216)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v67 = v216;
  if (v216)
  {
LABEL_7:
    if (!([v67 state] | v66))
    {
      sub_29E2C04B4();
      v84 = sub_29E2C0504();
      v85 = sub_29E2C3A34();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v219 = v87;
        *v86 = 136446210;
        v88 = sub_29E2C4AE4();
        v90 = sub_29DFAA104(v88, v89, &v219);

        *(v86 + 4) = v90;
        _os_log_impl(&dword_29DE74000, v84, v85, "[%{public}s] Submitting no data feed item", v86, 0xCu);
        sub_29DE93B3C(v87);
        MEMORY[0x29ED82140](v87, -1, -1);
        MEMORY[0x29ED82140](v86, -1, -1);
      }

      (*(v197 + 8))(v59, v198);
      v91 = v212;
      type metadata accessor for SummaryTileViewController();
      (*(v200 + 104))(v202, *MEMORY[0x29EDC3748], v201);
      sub_29E2BD274();
      sub_29E2BD294();
      v92 = v205;
      sub_29E2C3314();
      v93 = v206;
      v94 = v207;
      (*(v206 + 16))(v203, v92, v207);
      v95 = v178;
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v96 = qword_2A1A67F80;
      sub_29E2BCC74();
      sub_29E2C3414();
      (*(v93 + 8))(v92, v94);
      sub_29E2BD364();
      (*(v208 + 104))(v210, *MEMORY[0x29EDC3AE0], v209);
      v97 = v211;
      sub_29E2BD8D4();
      v98 = sub_29E2BD8E4();
      (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
      sub_29E2BD464();
      sub_29E2BD354();
      result = [objc_opt_self() categoryWithID_];
      if (result)
      {
        v100 = result;
        sub_29E2BD2A4();

        v101 = v194;
        v102 = v199;
        (*(v91 + 16))(v194, v48, v199);
        v103 = sub_29E143AD8(0, 1, 1, MEMORY[0x29EDCA190]);
        v105 = v103[2];
        v104 = v103[3];
        if (v105 >= v104 >> 1)
        {
          v103 = sub_29E143AD8(v104 > 1, v105 + 1, 1, v103);
        }

        v103[2] = v105 + 1;
        (*(v91 + 32))(v103 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v105, v101, v102);
        v219 = v103;
        sub_29DF18BF0(0);
        sub_29E2C1164();
        sub_29E2AA4B8(&qword_2A1A61E70, sub_29DF18BBC);
        v106 = v177;
        v68 = sub_29E2C1274();
        (*(v176 + 8))(v95, v106);
        (*(v91 + 8))(v48, v102);
        return v68;
      }

      __break(1u);
      goto LABEL_45;
    }

LABEL_8:
    sub_29E2C04B4();
    v69 = v66;
    v70 = sub_29E2C0504();
    v71 = sub_29E2C3A34();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v219 = v73;
      *v72 = 136446466;
      v74 = sub_29E2C4AE4();
      v76 = sub_29DFAA104(v74, v75, &v219);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2080;
      v218 = v217;
      sub_29E2AA564();
      v77 = v69;
      v78 = sub_29E2C3464();
      v80 = sub_29DFAA104(v78, v79, &v219);

      *(v72 + 14) = v80;
      _os_log_impl(&dword_29DE74000, v70, v71, "[%{public}s] Submitting data feed item with day summary: %s", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v73, -1, -1);
      MEMORY[0x29ED82140](v72, -1, -1);
    }

    (*(v197 + 8))(v56, v198);
    v81 = v215;
    sub_29DE9408C(0, &qword_2A1A61D68);
    v82 = v69;
    sub_29E2C2F94();
    sub_29DE9408C(0, &unk_2A1A5E190);
    v83 = v216;
    sub_29E2C2F94();
    sub_29E2BC2E4();
    swift_allocObject();
    sub_29E2BC2D4();
    sub_29E2AA4B8(&qword_2A1A60F78, type metadata accessor for SummaryTileUserData);
    v107 = sub_29E2BC2C4();
    v108 = v24;
    v110 = v109;
    sub_29E111854(v108);

    type metadata accessor for SummaryTileViewController();
    (*(v200 + 104))(v202, *MEMORY[0x29EDC3730], v201);
    sub_29DF1DE4C(v107, v110);
    sub_29E2BD274();
    v213 = v110;
    v214 = v107;
    sub_29E2BD294();
    v111 = v205;
    sub_29E2C3314();
    v113 = v206;
    v112 = v207;
    (*(v206 + 16))(v203, v111, v207);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v114 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v113 + 8))(v111, v112);
    sub_29E2BD364();
    (*(v208 + 104))(v210, *MEMORY[0x29EDC3AE0], v209);
    v115 = v211;
    sub_29E2BD8D4();
    v116 = sub_29E2BD8E4();
    (*(*(v116 - 8) + 56))(v115, 0, 1, v116);
    sub_29E2BD464();
    result = [objc_opt_self() categoryWithID_];
    v117 = v212;
    v118 = v196;
    if (result)
    {
      v119 = result;
      sub_29E2BD2A4();

      v120 = v195;
      if (!v217)
      {
        if (v216)
        {
          v162 = v83;
          v163 = [v162 pregnancyStartDate];
          if (v163)
          {
            v164 = v180;
            v165 = v163;
            sub_29E2BCB44();

            v166 = [v162 behavioralWashoutEndDate];
            if (v166)
            {
              v167 = v179;
              v168 = v166;
              sub_29E2BCB44();

              v169 = v191;
              v170 = *(v191 + 16);
              v171 = v164;
              v172 = v192;
              v170(v118, v171, v192);
              v170(v188, v167, v172);
              v173 = v190;
              sub_29E2BC374();
              v174 = sub_29E2BC3A4();
              (*(*(v174 - 8) + 56))(v173, 0, 1, v174);
              sub_29E2BD814();
              sub_29E2BD404();

              v175 = *(v169 + 8);
              v175(v167, v172);
              v175(v180, v172);
            }

            else
            {
              (*(v191 + 8))(v164, v192);
            }
          }

          else
          {
          }
        }

        goto LABEL_25;
      }

      v121 = v82;
      v122 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
      [v121 dayIndex];
      v123 = v185;
      sub_29E2C30D4();
      v124 = v187;
      sub_29E2C3194();
      v127 = *(v120 + 8);
      v126 = v120 + 8;
      v125 = v127;
      v128 = v186;
      v127(v123, v186);
      if (!__OFADD__([v121 dayIndex], 1))
      {
        sub_29E2C30D4();
        v129 = v183;
        sub_29E2C3194();
        v125(v123, v128);
        v130 = v188;
        sub_29E2BCAB4();
        v131 = v191;
        v132 = *(v191 + 8);
        v133 = v192;
        v132(v129, v192);
        v134 = *(v131 + 16);
        v134(v129, v118, v133);
        v134(v184, v130, v133);
        v135 = v190;
        sub_29E2BC374();
        v136 = sub_29E2BC3A4();
        (*(*(v136 - 8) + 56))(v135, 0, 1, v136);
        sub_29E2BD814();
        v81 = v215;
        sub_29E2BD404();

        v132(v130, v133);
        v132(v196, v133);
LABEL_25:
        v137 = v193;
        v138 = v199;
        (*(v117 + 16))(v193, v81, v199);
        v139 = sub_29E143AD8(0, 1, 1, MEMORY[0x29EDCA190]);
        v141 = v139[2];
        v140 = v139[3];
        if (v141 >= v140 >> 1)
        {
          v139 = sub_29E143AD8(v140 > 1, v141 + 1, 1, v139);
        }

        v142 = v176;
        v143 = v178;
        v139[2] = v141 + 1;
        (*(v117 + 32))(v139 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v141, v137, v138);
        v219 = v139;
        sub_29DF18BF0(0);
        sub_29E2C1164();
        sub_29E2AA4B8(&qword_2A1A61E70, sub_29DF18BBC);
        v144 = v177;
        v68 = sub_29E2C1274();
        sub_29DEB5BF8(v214, v213);
        (*(v142 + 8))(v143, v144);
        (*(v117 + 8))(v81, v138);
        return v68;
      }

      __break(1u);
      goto LABEL_43;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  sub_29E2C04B4();
  v145 = sub_29E2C0504();
  v146 = sub_29E2C3A34();
  if (os_log_type_enabled(v145, v146))
  {
    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v219 = v148;
    *v147 = 136446210;
    v149 = sub_29E2C4AE4();
    v151 = sub_29DFAA104(v149, v150, &v219);

    *(v147 + 4) = v151;
    _os_log_impl(&dword_29DE74000, v145, v146, "[%{public}s] Submitting no data feed item", v147, 0xCu);
    sub_29DE93B3C(v148);
    MEMORY[0x29ED82140](v148, -1, -1);
    MEMORY[0x29ED82140](v147, -1, -1);
  }

  (*(v197 + 8))(v65, v198);
  v122 = v178;
  v128 = v212;
  v126 = v206;
  v117 = v207;
  type metadata accessor for SummaryTileViewController();
  (*(v200 + 104))(v202, *MEMORY[0x29EDC3748], v201);
  sub_29E2BD274();
  v124 = v182;
  sub_29E2BD294();
  v81 = v205;
  sub_29E2C3314();
  (*(v126 + 16))(v203, v81, v117);
  if (qword_2A1A62788 != -1)
  {
LABEL_43:
    swift_once();
  }

  v152 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v126 + 8))(v81, v117);
  sub_29E2BD364();
  (*(v208 + 104))(v210, *MEMORY[0x29EDC3AE0], v209);
  v153 = v211;
  sub_29E2BD8D4();
  v154 = sub_29E2BD8E4();
  (*(*(v154 - 8) + 56))(v153, 0, 1, v154);
  sub_29E2BD464();
  sub_29E2BD354();
  result = [objc_opt_self() categoryWithID_];
  if (result)
  {
    v155 = result;
    sub_29E2BD2A4();

    v156 = v181;
    v157 = v199;
    (*(v128 + 16))(v181, v124, v199);
    v158 = sub_29E143AD8(0, 1, 1, MEMORY[0x29EDCA190]);
    v160 = v158[2];
    v159 = v158[3];
    if (v160 >= v159 >> 1)
    {
      v158 = sub_29E143AD8(v159 > 1, v160 + 1, 1, v158);
    }

    v158[2] = v160 + 1;
    (*(v128 + 32))(v158 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v160, v156, v157);
    v219 = v158;
    sub_29DF18BF0(0);
    sub_29E2C1164();
    sub_29E2AA4B8(&qword_2A1A61E70, sub_29DF18BBC);
    v161 = v177;
    v68 = sub_29E2C1274();
    (*(v176 + 8))(v122, v161);
    (*(v128 + 8))(v124, v157);
    return v68;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_29E2AA174()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Deallocated", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);

  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20SummaryTileGenerator_domain;
  v14 = sub_29E2BD594();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  return v1;
}

uint64_t sub_29E2AA390()
{
  sub_29E2AA174();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummaryTileGenerator()
{
  result = qword_2A1A62218;
  if (!qword_2A1A62218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E2AA43C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20SummaryTileGenerator_domain;
  v5 = sub_29E2BD594();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29E2AA4B8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E2AA500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E2AA564()
{
  if (!qword_2A1A61D60)
  {
    sub_29DE9408C(255, &qword_2A1A61D68);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61D60);
    }
  }
}

uint64_t sub_29E2AA5CC()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    type metadata accessor for RelativeDaysAgoFormatter();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v0 + 80) = v1;
  }

  return v1;
}

void sub_29E2AA624()
{
  sub_29DFD85B4(0, &qword_2A181A570, MEMORY[0x29EDC2008]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v9 = &v20 - v8;
  v10 = *(v0 + 72);
  if (v10)
  {
    v11 = v10;
    v12 = [v11 statistics];
    v13 = [v12 numberOfCycles];

    v14 = [v11 cycles];
    if (v14)
    {
      v15 = v14;
      sub_29DE9408C(0, &qword_2A1A5E0A0);
      v16 = sub_29E2C3614();

      if (v16 >> 62)
      {
        v17 = sub_29E2C4484();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v17 != 0;
    }

    else
    {
      v18 = 0;
    }

    if (*(v0 + 88) & (v13 > 0 || v18))
    {
      v19 = MEMORY[0x29EDC2000];
    }

    else
    {
      v19 = MEMORY[0x29EDC1FF8];
    }

    (*(v3 + 104))(v9, *v19, v2);
    sub_29E2BE644();
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x29EDC1FF8], v2, v7);
    sub_29E2BE644();
  }
}

uint64_t sub_29E2AA868(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C61636974726576;
  }

  else
  {
    v3 = 0x746E6F7A69726F68;
  }

  if (v2)
  {
    v4 = 0xEA00000000006C61;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C61636974726576;
  }

  else
  {
    v5 = 0x746E6F7A69726F68;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000006C61;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_29E2C4914();
  }

  return v8 & 1;
}

uint64_t sub_29E2AA914()
{
  sub_29E2C4A04();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29E2AA99C()
{
  sub_29E2C34B4();
}

uint64_t sub_29E2AAA10()
{
  sub_29E2C4A04();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29E2AAA94@<X0>(char *a1@<X8>)
{
  v2 = sub_29E2C47E4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_29E2AAAF4(uint64_t *a1@<X8>)
{
  v2 = 0x746E6F7A69726F68;
  if (*v1)
  {
    v2 = 0x6C61636974726576;
  }

  v3 = 0xEA00000000006C61;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_29E2AAB38()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_29E2AAD74()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_29E2AAFB0()
{
}

id *sub_29E2AAFF0()
{

  return v0;
}

uint64_t sub_29E2AB040()
{
  sub_29E2AAFF0();

  return swift_deallocClassInstance();
}

uint64_t sub_29E2AB11C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E2C08B4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v15[-v9];
  sub_29E2C3314();
  (*(v5 + 16))(v7, v10, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v5 + 8))(v10, v4);
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  *&v15[8] = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000012, 0x800000029E3015C0);
  sub_29E2C0844();
  v12 = sub_29E2BE0B4();
  swift_allocObject();
  v13 = sub_29E2BE094();
  a1[3] = v12;
  result = sub_29E2AD95C(&unk_2A181CC00, 255, MEMORY[0x29EDC1C30]);
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t sub_29E2AB468(void *a1)
{
  v2 = [a1 statistics];
  v3 = [a1 cycles];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = v3;
  sub_29DE9408C(0, &qword_2A1A5E0A0);
  v5 = sub_29E2C3614();

  if (v5 >> 62)
  {
    if (sub_29E2C4484())
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:

LABEL_18:
    v12 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

LABEL_4:
  v43 = v2;
  v45 = v2;
  v6 = sub_29E2AC0DC(0, v2, v5);

  v7 = v6[9];
  v40 = v6[8];
  v8 = v6[10];
  v9 = v6[11];
  v10 = v6[12];
  v11 = v6[13];
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29E2BF404();
  v12 = sub_29E145764(0, 1, 1, MEMORY[0x29EDCA190]);
  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_29E145764((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  v15 = &v12[48 * v14];
  *(v15 + 4) = v40;
  *(v15 + 5) = v7;
  *(v15 + 6) = v8;
  *(v15 + 7) = v9;
  *(v15 + 8) = v10;
  *(v15 + 9) = v11;
  v16 = v43;
  v17 = [v43 menstruationLengthMedian];
  if (v17)
  {

    v18 = sub_29E2AC0DC(1, v45, 0);
    v19 = v18[9];
    v20 = v18[11];
    v38 = v18[10];
    v41 = v18[8];
    v21 = v18[13];
    v37 = v18[12];
    v23 = *(v12 + 2);
    v22 = *(v12 + 3);
    sub_29E2BF404();
    sub_29E2BF404();
    sub_29E2BF404();
    if (v23 >= v22 >> 1)
    {
      v12 = sub_29E145764((v22 > 1), v23 + 1, 1, v12);
    }

    *(v12 + 2) = v23 + 1;
    v24 = &v12[48 * v23];
    *(v24 + 4) = v41;
    *(v24 + 5) = v19;
    *(v24 + 6) = v38;
    *(v24 + 7) = v20;
    *(v24 + 8) = v37;
    *(v24 + 9) = v21;
    v16 = v43;
    v2 = v45;
  }

  else
  {
    v2 = v45;
  }

  v25 = [v16 cycleLengthMedian];
  if (v25)
  {

    v26 = sub_29E2AC0DC(2, v2, 0);
    v27 = v26[9];
    v28 = v26[11];
    v42 = v26[10];
    v44 = v26[8];
    v29 = v26[13];
    v39 = v26[12];
    v31 = *(v12 + 2);
    v30 = *(v12 + 3);
    sub_29E2BF404();
    sub_29E2BF404();
    sub_29E2BF404();
    if (v31 >= v30 >> 1)
    {
      v12 = sub_29E145764((v30 > 1), v31 + 1, 1, v12);
    }

    *(v12 + 2) = v31 + 1;
    v32 = &v12[48 * v31];
    *(v32 + 4) = v44;
    *(v32 + 5) = v27;
    *(v32 + 6) = v42;
    *(v32 + 7) = v28;
    *(v32 + 8) = v39;
    *(v32 + 9) = v29;
    v2 = v45;
  }

  else
  {
  }

LABEL_19:
  v33 = type metadata accessor for CycleStatisticsSummaryItem();
  v34 = swift_allocObject();
  *(v34 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v34 + 16) = v12;
  *(v34 + 32) = &off_2A24C2330;
  swift_unknownObjectWeakAssign();
  sub_29E2BE5F4();
  sub_29E2AD9A4(0, &unk_2A181B3C0, &qword_2A1819BD0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_29E2CAB20;
  *(v35 + 56) = v33;
  *(v35 + 64) = sub_29E2AD95C(&qword_2A181F9B0, 255, type metadata accessor for CycleStatisticsSummaryItem);
  *(v35 + 32) = v34;

  sub_29E2BEC94();

  sub_29E2AA624();
}

void sub_29E2AB8D0(void *a1)
{
  v26 = *MEMORY[0x29EDCA608];
  sub_29E2AD9A4(0, &qword_2A181CC78, &qword_2A181CC80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CAB20;
  v3 = sub_29E2ABDFC();
  *(inited + 56) = type metadata accessor for TileHeaderItem();
  *(inited + 64) = sub_29E2AD95C(&unk_2A1820CE0, 255, type metadata accessor for TileHeaderItem);
  *(inited + 32) = v3;
  v4 = [a1 statistics];
  v5 = [a1 cycles];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  sub_29DE9408C(0, &qword_2A1A5E0A0);
  v7 = sub_29E2C3614();

  if (v7 >> 62)
  {
    if (sub_29E2C4484())
    {
      goto LABEL_4;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = v4;
  v9 = sub_29E2AC0DC(0, v4, v7);

  *(v9 + 24) = &off_2A24C2330;
  swift_unknownObjectWeakAssign();
  *(v9 + 40) = &off_2A24C2320;
  swift_unknownObjectWeakAssign();

  inited = sub_29E144584(1, 2, 1, inited);
  v10 = type metadata accessor for CycleStatisticsItem();
  v24 = v10;
  v11 = sub_29E2AD95C(&qword_2A1820E58, 255, type metadata accessor for CycleStatisticsItem);
  v25 = v11;
  *&v23 = v9;
  *(inited + 16) = 2;
  sub_29DF3CBE8(&v23, inited + 72);
  v12 = [v8 menstruationLengthMedian];
  if (v12)
  {

    v13 = sub_29E2AC0DC(1, v4, 0);
    *(v13 + 24) = &off_2A24C2330;
    swift_unknownObjectWeakAssign();
    *(v13 + 40) = &off_2A24C2320;
    swift_unknownObjectWeakAssign();
    v15 = *(inited + 16);
    v14 = *(inited + 24);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v22 = v15 + 1;
      v21 = sub_29E144584((v14 > 1), v15 + 1, 1, inited);
      v16 = v15 + 1;
      inited = v21;
    }

    v24 = v10;
    v25 = v11;
    *&v23 = v13;
    *(inited + 16) = v16;
    sub_29DF3CBE8(&v23, inited + 40 * v15 + 32);
  }

  v17 = [v8 cycleLengthMedian];
  if (v17)
  {

    v18 = sub_29E2AC0DC(2, v4, 0);
    *(v18 + 24) = &off_2A24C2330;
    swift_unknownObjectWeakAssign();
    *(v18 + 40) = &off_2A24C2320;
    swift_unknownObjectWeakAssign();
    v20 = *(inited + 16);
    v19 = *(inited + 24);
    if (v20 >= v19 >> 1)
    {
      inited = sub_29E144584((v19 > 1), v20 + 1, 1, inited);
    }

    v24 = v10;
    v25 = v11;
    *&v23 = v18;
    *(inited + 16) = v20 + 1;
    sub_29DF3CBE8(&v23, inited + 40 * v20 + 32);
  }

  else
  {
  }

LABEL_15:
  sub_29E2BE5F4();
  sub_29E13D98C(inited);

  sub_29E2BEC94();

  sub_29E2AA624();
}

unint64_t sub_29E2ABDA8()
{
  result = qword_2A1820E48;
  if (!qword_2A1820E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1820E48);
  }

  return result;
}

void *sub_29E2ABDFC()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v16 - v6;
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  v11 = v10;
  (*(v2 + 8))(v7, v1);
  v12 = [objc_opt_self() systemIndigoColor];
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v17 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000012, 0x800000029E3015C0);
  v13 = v17;
  type metadata accessor for TileHeaderItem();
  swift_allocObject();
  v14 = sub_29DEF6574(v9, v11, v12, v13, *(&v13 + 1));
  v14[5] = &off_2A24C2330;
  swift_unknownObjectWeakAssign();
  v14[7] = &off_2A24C2320;
  swift_unknownObjectWeakAssign();
  return v14;
}

uint64_t sub_29E2AC0DC(int a1, void *a2, unint64_t a3)
{
  v92 = a3;
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v89 - v11;
  v13 = sub_29E2BCBB4();
  v93 = *(v13 - 8);
  v94 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v101 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E2BCEA4();
  v95 = *(v15 - 8);
  v96 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v98 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E2C31A4();
  v102 = *(v17 - 8);
  v103 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v97 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v100 = &v89 - v20;
  MEMORY[0x2A1C7C4A8](v21);
  v99 = &v89 - v22;
  v23 = sub_29E2BCC84();
  v24 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v33 = sub_29E2AAB38();
    v35 = v34;
    sub_29E2C3314();
    (*(v7 + 16))(v9, v12, v6);
    v36 = v6;
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v37 = qword_2A1A67F80;
    sub_29E2BCC74();
    v38 = sub_29E2C3414();
    v40 = v39;
    (*(v7 + 8))(v12, v36);
    type metadata accessor for CycleStatisticsItem();
    v41 = swift_allocObject();
    v41[3] = 0;
    swift_unknownObjectWeakInit();
    v41[5] = 0;
    swift_unknownObjectWeakInit();
    v41[7] = 0;
    swift_unknownObjectWeakInit();
    result = v41;
    v41[8] = v33;
    v41[9] = v35;
    v41[10] = v38;
    v41[11] = v40;
    v41[12] = 0;
    v41[13] = 0;
    return result;
  }

  v89 = v7;
  v90 = v6;
  v91 = v3;
  v27 = objc_allocWithZone(MEMORY[0x29EDB9F78]);
  v28 = a2;
  v29 = [v27 init];
  sub_29E2BCC74();
  v30 = sub_29E2BCC44();
  (*(v24 + 8))(v26, v23);
  [v29 setLocale_];

  v31 = sub_29E2C33A4();
  v105 = v29;
  [v29 setLocalizedDateFormatFromTemplate_];

  v104 = v28;
  if (a1)
  {
    if (a1 == 1)
    {
      v32 = [v28 menstruationLengthMedian];
    }

    else
    {
      v32 = [v28 cycleLengthMedian];
    }

    v68 = v32;
    if (v68)
    {
      LODWORD(v92) = a1;
      sub_29E2C3314();
      v71 = v89;
      v70 = v90;
      (*(v89 + 16))(v9, v12, v90);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v72 = qword_2A1A67F80;
      sub_29E2BCC74();
      sub_29E2C3414();
      (*(v71 + 8))(v12, v70);
      sub_29E2AD9A4(0, &qword_2A1A61CA0, &qword_2A1A61C60);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_29E2CAB20;
      v74 = [v68 integerValue];
      v75 = MEMORY[0x29EDC9C10];
      *(v73 + 56) = MEMORY[0x29EDC9BA8];
      *(v73 + 64) = v75;
      *(v73 + 32) = v74;
      v57 = sub_29E2C33B4();
      v59 = v76;

      v69 = 0;
      v68 = 0;
    }

    else
    {
      v69 = 0;
      v57 = 0;
      v59 = 0;
    }

    goto LABEL_30;
  }

  v43 = [v28 lastMenstruationStartDayIndex];
  if (v43)
  {
    LODWORD(v92) = a1;
    v44 = v43;
    [v43 integerValue];

    v45 = v91;
    goto LABEL_10;
  }

  v45 = v91;
  v77 = v92;
  if (!v92)
  {
    goto LABEL_27;
  }

  if (v92 >> 62)
  {
    result = sub_29E2C4484();
    if (result)
    {
      goto LABEL_22;
    }

LABEL_27:
    sub_29E2C3314();
    v81 = v89;
    v82 = v90;
    (*(v89 + 16))(v9, v12, v90);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v83 = qword_2A1A67F80;
    sub_29E2BCC74();
    v57 = sub_29E2C3414();
    v59 = v84;
    (*(v81 + 8))(v12, v82);
    v69 = 0;
    v68 = 0;
    goto LABEL_30;
  }

  result = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_22:
  if ((v77 & 0xC000000000000001) != 0)
  {
    v78 = MEMORY[0x29ED80D70](0, v77);
    goto LABEL_25;
  }

  if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v78 = *(v77 + 32);
LABEL_25:
    v79 = v78;
    LODWORD(v92) = a1;
    v80 = [v78 menstruationSegment];

    [v80 days];
LABEL_10:
    v46 = v99;
    sub_29E2C30D4();
    sub_29E2AAD74();
    sub_29E2AD9A4(0, &qword_2A1A61CA0, &qword_2A1A61C60);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_29E2CAB20;
    v48 = *(v45 + 64);
    v49 = [v48 currentCalendar];
    v50 = v98;
    sub_29E2BCDC4();

    v51 = v101;
    sub_29E2C3194();
    v52 = sub_29E2BCB04();
    (*(v93 + 8))(v51, v94);
    v53 = [v105 stringFromDate_];

    v54 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v56 = v55;

    (*(v95 + 8))(v50, v96);
    *(v47 + 56) = MEMORY[0x29EDC99B0];
    *(v47 + 64) = sub_29DEB1A44();
    *(v47 + 32) = v54;
    *(v47 + 40) = v56;
    v57 = sub_29E2C3404();
    v59 = v58;

    v60 = [v48 currentCalendar];
    sub_29E2BCDC4();

    sub_29E2BCBA4();
    v61 = v97;
    sub_29E2C3144();
    v62 = v100;
    sub_29E2C3114();
    v63 = v103;
    v64 = *(v102 + 8);
    v64(v61, v103);
    sub_29E2AA5CC();
    v65 = sub_29E2C3164();
    v66 = sub_29DFABE68(v65);
    v68 = v67;

    v64(v62, v63);
    v64(v46, v63);
    if (v68)
    {
      v69 = v66;
    }

    else
    {
      v69 = 0;
    }

LABEL_30:
    v85 = sub_29E2AAB38();
    v87 = v86;

    type metadata accessor for CycleStatisticsItem();
    v88 = swift_allocObject();
    v88[3] = 0;
    swift_unknownObjectWeakInit();
    v88[5] = 0;
    swift_unknownObjectWeakInit();
    v88[7] = 0;
    swift_unknownObjectWeakInit();
    result = v88;
    v88[8] = v85;
    v88[9] = v87;
    v88[10] = v57;
    v88[11] = v59;
    v88[12] = v69;
    v88[13] = v68;
    return result;
  }

  __break(1u);
  return result;
}

void sub_29E2ACBE8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v9 = a2;
  v10 = sub_29E2C0504();
  v11 = sub_29E2C3A34();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29E100194();
    v15 = sub_29E2C3424();
    v17 = sub_29DFAA104(v15, v16, &v25);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_29DE74000, v10, v11, "[%{public}s] Showing the Statistics View Controller", v13, 0xCu);
    sub_29DE93B3C(v14);
    MEMORY[0x29ED82140](v14, -1, -1);
    MEMORY[0x29ED82140](v13, -1, -1);

    (*(v6 + 8))(v8, v23);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v18 = *(v3 + 56);
  v19 = *(v3 + 64);
  v20 = objc_allocWithZone(type metadata accessor for StatisticsViewAllTableViewController());
  v21 = sub_29E0C35A4(v18, v19);
  [v9 showViewController:v21 sender:v3];
}

uint64_t sub_29E2ACE1C(int a1)
{
  v13 = a1;
  v14 = sub_29E2BCFB4();
  v1 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFD85B4(0, &unk_2A181A550, MEMORY[0x29EDC2020]);
  sub_29DFBBD70();
  result = sub_29E2BE6D4();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = (v1 + 8);
      do
      {
        MEMORY[0x29ED79720](v6, 0);
        sub_29E2BE764();
        (*v7)(v3, v14);
        sub_29DE9DC34(v17, v16);
        sub_29DEB1BC4(0, &qword_2A1819BD0);
        type metadata accessor for CycleStatisticsItem();
        if (swift_dynamicCast())
        {
          v8 = v15;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v9 = *(v8 + 56);
LABEL_12:
            ObjectType = swift_getObjectType();
            (*(v9 + 8))(v13 & 1, v17, ObjectType, v9);

            swift_unknownObjectRelease();
            goto LABEL_5;
          }
        }

        else
        {
          sub_29DE9DC34(v17, v16);
          type metadata accessor for TileHeaderItem();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_5;
          }

          v10 = v15;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v9 = *(v10 + 72);
            goto LABEL_12;
          }
        }

LABEL_5:
        result = sub_29DE93B3C(v17);
        ++v6;
      }

      while (v5 != v6);
    }
  }

  return result;
}

void sub_29E2AD110(char a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C2B84();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DE9408C(0, &qword_2A1A626C0);
  *v11 = sub_29E2C3CF4();
  (*(v9 + 104))(v11, *MEMORY[0x29EDCA278], v8);
  v12 = sub_29E2C2BA4();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_29E2C04B4();
    v13 = sub_29E2C0504();
    v14 = sub_29E2C3A34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136446466;
      v17 = sub_29E2C4AE4();
      v19 = sub_29DFAA104(v17, v18, &v28);
      v26 = v4;
      v20 = v19;

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      v21 = a1 & 1;
      v27 = a1 & 1;
      v22 = sub_29E2C3464();
      v24 = sub_29DFAA104(v22, v23, &v28);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_29DE74000, v13, v14, "[%{public}s] Received availability update to: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v16, -1, -1);
      MEMORY[0x29ED82140](v15, -1, -1);

      (*(v5 + 8))(v7, v26);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      v21 = a1 & 1;
    }

    *(v2 + 88) = v21;
    sub_29E2AA624();
  }

  else
  {
    __break(1u);
  }
}

void sub_29E2AD458(void *a1)
{
  type metadata accessor for CycleStatisticsCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_29E2C33A4();
  [a1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v3];

  type metadata accessor for TileHeaderCell();
  v4 = swift_getObjCClassFromMetadata();
  type metadata accessor for TileHeaderItem();
  sub_29DEF6428();
  v5 = sub_29E2C33A4();

  [a1 registerClass:v4 forCellWithReuseIdentifier:v5];

  type metadata accessor for CycleStatisticsHorizontalCell();
  v6 = swift_getObjCClassFromMetadata();
  sub_29E2AD95C(&qword_2A181F9C0, 255, type metadata accessor for CycleStatisticsHorizontalCell);
  sub_29E2BE2B4();
  v7 = sub_29E2C33A4();

  [a1 registerClass:v6 forCellWithReuseIdentifier:v7];
}

void *sub_29E2AD5BC(uint64_t a1)
{
  v24 = a1;
  v1 = sub_29E2C0AD4();
  v20 = *(v1 - 8);
  v21 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C0A24();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C0AB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29E2C0B44();
  v9 = *(v23 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v23);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *MEMORY[0x29EDC7848];
  v14 = *(v6 + 104);
  v14(v8, v13, v5, v10);
  sub_29E2C0AE4();
  v15 = [objc_opt_self() secondarySystemBackgroundColor];
  sub_29E2C0B14();
  (v14)(v8, v13, v5);
  sub_29E2C0A04();
  sub_29E2C0AA4();
  sub_29E2C0B34();
  if (*(v22 + 48))
  {
    v16 = sub_29E2C4914();

    if ((v16 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  (*(v20 + 104))(v3, *MEMORY[0x29EDC7860], v21);
  sub_29E2C0B04();
LABEL_6:
  sub_29DE9408C(0, &qword_2A1819BB0);
  v17 = sub_29E2C3F34();
  [v17 setContentInsetsReference_];
  [v17 setContentInsets_];
  (*(v9 + 8))(v12, v23);
  return v17;
}

uint64_t sub_29E2AD95C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E2AD9A4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29DEB1BC4(255, a3);
    v4 = sub_29E2C48E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E2AD9FC(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v13[-v8];
  v10 = 0;
  if (a1 > 2)
  {
    if (a1 != 3 && a1 != 4)
    {
      return v10;
    }
  }

  else if (a1 != 1 && a1 != 2)
  {
    return v10;
  }

  sub_29E2C3314();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v10 = sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  return v10;
}

uint64_t sub_29E2ADC78(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  v10 = 0;
  if (a1 > 2)
  {
    if (a1 != 3 && a1 != 4)
    {
      return v10;
    }
  }

  else if (a1 != 1 && a1 != 2)
  {
    return v10;
  }

  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v10 = sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  return v10;
}

uint64_t sub_29E2ADEF4(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  v10 = 0;
  if (a1 > 2)
  {
    if (a1 != 3 && a1 != 4)
    {
      return v10;
    }
  }

  else if (a1 != 1 && a1 != 2)
  {
    return v10;
  }

  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v10 = sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  return v10;
}

uint64_t type metadata accessor for HeaderWithActionButtonItem()
{
  result = qword_2A1820E60;
  if (!qword_2A1820E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E2AE1E4()
{
  sub_29E23BCC0();
  if (v0 <= 0x3F)
  {
    sub_29E2C08B4();
    if (v1 <= 0x3F)
    {
      sub_29E2C4274();
      if (v2 <= 0x3F)
      {
        sub_29DE9408C(319, &qword_2A181A5D8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_29E2AE2BC()
{
  type metadata accessor for HeaderWithActionButtonCollectionViewCell();
  sub_29E2AE538(&qword_2A1820058, type metadata accessor for HeaderWithActionButtonCollectionViewCell);
  return sub_29E2BE2B4();
}

uint64_t sub_29E2AE324(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_29E2AE37C(uint64_t a1)
{
  v2 = sub_29E2AE538(&qword_2A1820E70, type metadata accessor for HeaderWithActionButtonItem);

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E2AE440(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_29E2C4914() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_29E2C4914() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  type metadata accessor for HeaderWithActionButtonItem();
  if (sub_29E2C0834() & 1) != 0 && (sub_29E2C41F4())
  {
    sub_29DE9408C(0, &qword_2A1A619F0);
    return sub_29E2C40D4() & 1;
  }

  return 0;
}

uint64_t sub_29E2AE538(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E2AE5B0(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  sub_29E2AEC40(0, &qword_2A181A090, MEMORY[0x29EDBA210]);
  v19 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v18 - v6;
  v20 = sub_29E2AE988();
  v8 = a1();
  sub_29DE9408C(0, &qword_2A1A61D70);
  v9 = sub_29E2C3614();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_13:

    sub_29E2AEBCC();
    sub_29E2AEC40(0, &qword_2A181A0A0, MEMORY[0x29EDB9980]);
    *(swift_allocObject() + 16) = xmmword_29E2CAB20;
    KeyPath = swift_getKeyPath();
    MEMORY[0x29ED78E10](KeyPath, 0);
    sub_29DE9408C(0, &qword_2A1A61D50);
    sub_29E2C2FA4();

    return;
  }

  v10 = sub_29E2C4484();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_3:
  v21 = MEMORY[0x29EDCA190];
  sub_29E1813D8(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v18 = a2;
    v11 = 0;
    v12 = v21;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x29ED80D70](v11, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      sub_29DE9408C(0, &qword_2A1A61D50);
      sub_29E2C2F24();

      v21 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_29E1813D8(v15 > 1, v16 + 1, 1);
        v12 = v21;
      }

      ++v11;
      *(v12 + 16) = v16 + 1;
      (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v7, v19);
    }

    while (v10 != v11);
    goto LABEL_13;
  }

  __break(1u);
}

void sub_29E2AE928(id *a1)
{
  v1 = [*a1 startDate];
  sub_29E2BCB44();
}

id sub_29E2AE988()
{
  v0 = sub_29E2BCE84();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v7);
  v10 = &v16 - v9;
  (*(v1 + 104))(v3, *MEMORY[0x29EDB9CD0], v0, v8);
  sub_29E2BCE04();
  (*(v1 + 8))(v3, v0);
  sub_29DEAA194(v10, v6);
  v11 = sub_29E2BCBB4();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v6, 1, v11) != 1)
  {
    v13 = sub_29E2BCB04();
    (*(v12 + 8))(v6, v11);
  }

  v14 = [objc_opt_self() predicateForSamplesWithStartDate:v13 endDate:0 options:2];

  sub_29DE93920(v10);
  return v14;
}

void sub_29E2AEBCC()
{
  if (!qword_2A181A098)
  {
    sub_29E2AEC40(255, &qword_2A181A0A0, MEMORY[0x29EDB9980]);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A098);
    }
  }
}

void sub_29E2AEC40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29DE9408C(255, &qword_2A1A61D50);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E2AECBC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22[0] = a1;
  v6 = sub_29E2BCE84();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2B37E8(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = v22 - v11;
  v13 = sub_29E2BCBB4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x29EDB9CD0], v6, v15);
  sub_29E2BCE04();
  (*(v7 + 8))(v9, v6);
  v18 = *(v14 + 48);
  if (v18(v12, 1, v13) == 1)
  {
    (*(v14 + 16))(v17, a3, v13);
    v19 = v18(v12, 1, v13);
    if (v19 != 1)
    {
      v19 = sub_29DE93920(v12);
    }
  }

  else
  {
    v19 = (*(v14 + 32))(v17, v12, v13);
  }

  MEMORY[0x2A1C7C4A8](v19);
  v22[-2] = v22[0];
  v22[-1] = v17;
  sub_29E2BF404();
  v20 = sub_29E13C490(sub_29E2B34B0, &v22[-4], a4);
  (*(v14 + 8))(v17, v13);
  return v20;
}

char *sub_29E2AEFD4(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v155 = a3;
  v122 = *v5;
  sub_29E2B37E8(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v121 = &v121 - v10;
  sub_29DEDB904();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v123 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v124 = &v121 - v14;
  MEMORY[0x2A1C7C4A8](v15);
  v146 = &v121 - v16;
  sub_29E2B3590(0, &qword_2A1A61A30, MEMORY[0x29EDC9C30]);
  v149 = v17;
  v148 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v147 = &v121 - v18;
  v165 = sub_29E2C31A4();
  v153 = *(v165 - 8);
  MEMORY[0x2A1C7C4A8](v165);
  v145 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v160 = &v121 - v21;
  v141 = sub_29E2BE874();
  v140 = *(v141 - 8);
  MEMORY[0x2A1C7C4A8](v141);
  v142 = (&v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v138 = sub_29E2BCC94();
  v137 = *(v138 - 8);
  MEMORY[0x2A1C7C4A8](v138);
  v136 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v139 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_29E2C3384();
  v163 = *(v133 - 8);
  MEMORY[0x2A1C7C4A8](v133);
  v152 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v29 = &v121 - v28;
  v30 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v30 - 8);
  v31 = sub_29E2BCBB4();
  v158 = *(v31 - 8);
  v159 = v31;
  MEMORY[0x2A1C7C4A8](v31);
  v151 = &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33);
  v35 = &v121 - v34;
  v36 = sub_29E2BCEA4();
  v37 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36);
  v143 = &v121 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v39);
  v41 = &v121 - v40;
  *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34TwelveMonthCycleHistoryPDFProvider_dayProviderSubscription) = 0;
  v5[3] = a1;
  v154 = a1;
  v150 = a4;
  v42 = [a4 currentCalendar];
  sub_29E2BCDC4();

  v43 = v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34TwelveMonthCycleHistoryPDFProvider_gregorianCalendar;
  (*(v37 + 32))(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34TwelveMonthCycleHistoryPDFProvider_gregorianCalendar, v41, v36);
  v156 = v5;
  *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34TwelveMonthCycleHistoryPDFProvider_healthStore) = a2;
  v44 = a2;
  sub_29E2BCB54();
  v45 = *(v37 + 16);
  v135 = v43;
  v161 = v45;
  v162 = v37 + 16;
  v45(v41, v43, v36);
  v157 = v35;
  MEMORY[0x29ED7B190](v35, 0, v41);
  v46 = *(v37 + 8);
  v164 = v36;
  v126 = v37 + 8;
  v125 = v46;
  v46(v41, v36);
  v47 = v29;
  v134 = sub_29E2BE864();
  v48 = sub_29E2BEFE4();
  v49 = v44;
  v50 = v152;
  v144 = v49;
  v51 = sub_29E2BEFB4();
  v167 = v48;
  v168 = MEMORY[0x29EDC24D0];
  v166 = v51;
  sub_29E2C3354();
  sub_29E2C3344();
  sub_29E2C3334();

  sub_29E2C3344();
  v52 = v163;
  v53 = v133;
  sub_29E2C3374();
  v132 = *(v52 + 16);
  v132(v50, v47, v53);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v54 = qword_2A1A67F80;
  v55 = qword_2A1A67F80;
  v131 = v54;
  v56 = v55;
  sub_29E2BCC74();
  v57 = v56;
  v129 = sub_29E2C3414();
  v128 = v58;
  v59 = *(v52 + 8);
  v163 = v52 + 8;
  v130 = v59;
  v59(v47, v53);
  sub_29E2B37E8(0, &qword_2A1818578, MEMORY[0x29EDC2148], MEMORY[0x29EDC9E90]);
  v60 = sub_29E2BE9D4();
  v61 = *(v60 - 8);
  v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_29E2CAB20;
  (*(v61 + 104))(v63 + v62, *MEMORY[0x29EDC2138], v60);
  sub_29DE927DC(v63);
  v127 = "MINDER_CANCEL_PROMPT";
  v64 = v47;
  swift_setDeallocating();
  (*(v61 + 8))(v63 + v62, v60);
  swift_deallocClassInstance();
  v65 = v137;
  v66 = v136;
  v67 = v138;
  (*(v137 + 104))(v136, *MEMORY[0x29EDB9C78], v138);
  sub_29E2BCCA4();
  (*(v65 + 8))(v66, v67);
  v68 = v134;
  v69 = sub_29E2BE854();
  sub_29E2C3314();
  v132(v152, v64, v53);
  sub_29E2BCC74();
  sub_29E2C3414();
  v130(v64, v53);
  v167 = v68;
  v168 = MEMORY[0x29EDC20A0];
  v166 = v69;
  v70 = type metadata accessor for PDFCycleTrackingPage();
  v71 = v142;
  *v142 = v70;
  (*(v140 + 104))(v71, *MEMORY[0x29EDC20A8], v141);
  v72 = objc_allocWithZone(sub_29E2BED94());
  v163 = v69;

  v73 = sub_29E2BED84();
  v75 = v156;
  v74 = v157;
  *(v156 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34TwelveMonthCycleHistoryPDFProvider_pdfViewController) = v73;
  v76 = v158;
  v77 = v159;
  (*(v158 + 16))(v151, v74, v159);
  v78 = v135;
  v161(v41, v135, v164);
  v79 = v160;
  sub_29E2C3144();
  v152 = *(v153 + 16);
  (v152)(v75 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34TwelveMonthCycleHistoryPDFProvider_today, v79, v165);
  v80 = [v155 cycles];
  if (v80)
  {
    v81 = v80;
    v82 = v76;
    sub_29E0C1C08();
    v83 = sub_29E2C3614();

    v84 = v164;
    v161(v41, v78, v164);
    v85 = v143;
    sub_29E2BCE44();
    v86 = v78;
    v87 = v151;
    sub_29E2BCB54();
    v88 = sub_29E2AECBC(v41, v85, v87, v83);

    (*(v82 + 8))(v87, v77);
    v89 = v125;
    v125(v85, v84);
    v89(v41, v84);
  }

  else
  {
    v88 = MEMORY[0x29EDCA190];
    v85 = v143;
    v86 = v78;
  }

  type metadata accessor for CycleChartsPDFModelProvider();
  v90 = v155;
  v91 = [v154 healthStore];
  v92 = v145;
  v93 = v160;
  (v152)(v145, v160, v165);
  v94 = v86;
  v95 = v161;
  v161(v41, v94, v164);
  sub_29E2BF404();
  sub_29E2BCE44();
  sub_29DEF5C44(v90, v91, v88, v92, v41, v85);
  v97 = v96;
  v155 = v90;

  v98 = v156;
  v156[2] = v97;
  v99 = v146;
  sub_29E02CF88(v93, v88, v146);

  if ((*(v148 + 48))(v99, 1, v149) == 1)
  {
    sub_29E2B362C(v99, sub_29DEDB904);
    v100 = sub_29E2C3734();
    v101 = v121;
    (*(*(v100 - 8) + 56))(v121, 1, 1, v100);
    sub_29E2C3714();

    v102 = sub_29E2C3704();
    v103 = swift_allocObject();
    v104 = MEMORY[0x29EDCA390];
    v103[2] = v102;
    v103[3] = v104;
    v103[4] = v98;
    sub_29E13C63C(0, 0, v101, &unk_29E2EAAE0, v103);

    (*(v153 + 8))(v93, v165);
    (*(v158 + 8))(v157, v159);
  }

  else
  {
    sub_29DF5BD44(v99, v147);
    sub_29E2B3A50(&unk_2A18199E0, MEMORY[0x29EDBA2F8]);
    v105 = v154;
    v106 = v144;
    sub_29E2C4344();
    v107 = v166;
    v108 = objc_allocWithZone(MEMORY[0x29EDC3408]);
    v154 = v105;
    v109 = [v108 initWithHealthStore:v106 analysisProvider:v105 pregnancyModelProvider:0 maximumActiveDuration:v107 minimumBufferDuration:0 shouldFetchCycleFactors:0 calendarCache:v150];

    v95(v41, &v98[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34TwelveMonthCycleHistoryPDFProvider_gregorianCalendar], v164);
    type metadata accessor for CycleChartDayProvider();
    swift_allocObject();
    v110 = v106;
    v111 = v109;
    v112 = sub_29E1AFC3C(v111, v110, v41);

    v166 = v112[4];
    v113 = swift_allocObject();
    v113[2] = v98;
    v113[3] = v112;
    v113[4] = v122;
    v114 = swift_allocObject();
    *(v114 + 16) = sub_29E2B3424;
    *(v114 + 24) = v113;
    sub_29DEDD728();
    sub_29E2B3A50(&qword_2A1818588, sub_29DEDD728);
    v115 = v153;

    v116 = sub_29E2C1384();

    *&v98[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34TwelveMonthCycleHistoryPDFProvider_dayProviderSubscription] = v116;

    v117 = v147;
    v118 = v124;
    sub_29E2B3430(v147, v124);
    (*(v148 + 56))(v118, 0, 1, v149);
    v119 = v123;
    sub_29E2B368C(v118, v123, sub_29DEDB904);
    sub_29DF5BB44(v119);
    sub_29E2B368C(v118, v119, sub_29DEDB904);
    sub_29E2C2C84();

    sub_29E2B362C(v118, sub_29DEDB904);
    sub_29E2B36F4(v117, &qword_2A1A61A30, MEMORY[0x29EDC9C30]);
    (*(v115 + 8))(v160, v165);
    (*(v158 + 8))(v157, v159);
  }

  return v98;
}

uint64_t sub_29E2B0350()
{
  v0[2] = sub_29E2C3714();
  v0[3] = sub_29E2C3704();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_29DEDBBCC;
  v2 = MEMORY[0x29EDCA190];
  v3 = MEMORY[0x29EDCA190];

  return sub_29E2B0408(v3, v2);
}

uint64_t sub_29E2B0408(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = *v2;
  v4 = sub_29E2C0514();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = sub_29E2BEDC4();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v6 = sub_29E2BE874();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v7 = sub_29E2BE434();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v8 = sub_29E2BE454();
  v3[24] = v8;
  v3[25] = *(v8 - 8);
  v3[26] = swift_task_alloc();
  v9 = sub_29E2BE3D4();
  v3[27] = v9;
  v10 = *(v9 - 8);
  v3[28] = v10;
  v3[29] = *(v10 + 64);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  sub_29E2C3714();
  v3[32] = sub_29E2C3704();
  v12 = sub_29E2C36A4();
  v3[33] = v12;
  v3[34] = v11;

  return MEMORY[0x2A1C73D48](sub_29E2B0708, v12, v11);
}

uint64_t sub_29E2B0708()
{
  v1 = v0[31];
  v2 = v0[28];
  v18 = v0[30];
  v19 = v0[29];
  v17 = v0[27];
  v24 = v0[26];
  v26 = v0[25];
  v25 = v0[24];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v16 = v0[18];
  v8 = v0[16];
  v23 = v0[15];
  v20 = v0[9];
  v21 = v0[8];
  v22 = v0[17];
  sub_29E2B2470(v1);
  (*(v4 + 104))(v3, *MEMORY[0x29EDC1F40], v5);
  *v6 = type metadata accessor for PDFCycleTrackingPage();
  (*(v7 + 104))(v6, *MEMORY[0x29EDC20A8], v16);
  (*(v2 + 16))(v18, v1, v17);
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = (v19 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  (*(v2 + 32))(v11 + v9, v18, v17);
  *(v11 + v10) = v20;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  (*(v8 + 104))(v22, *MEMORY[0x29EDC22A0], v23);
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29E2BE444();
  v12 = MEMORY[0x29EDC1F50];
  v0[5] = v25;
  v0[6] = v12;
  v13 = sub_29DEBB7E8(v0 + 2);
  (*(v26 + 16))(v13, v24, v25);
  v27 = (*MEMORY[0x29EDC2288] + MEMORY[0x29EDC2288]);
  v14 = swift_task_alloc();
  v0[35] = v14;
  *v14 = v0;
  v14[1] = sub_29E2B09AC;

  return v27(v0 + 2);
}

uint64_t sub_29E2B09AC()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_29E2B0BC0;
  }

  else
  {
    sub_29DE93B3C(v2 + 16);
    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_29E2B0AC8;
  }

  return MEMORY[0x2A1C73D48](v5, v3, v4);
}

uint64_t sub_29E2B0AC8()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_29E2B0BC0()
{
  v37 = v0;
  v1 = v0[36];

  sub_29DE93B3C((v0 + 2));
  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A24();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[36];
    v32 = v0[27];
    v34 = v0[31];
    v6 = v0[25];
    v30 = v0[26];
    v31 = v0[28];
    v7 = v0[13];
    v28 = v0[14];
    v29 = v0[24];
    v27 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v8 = 136446466;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v36);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v0[7] = v5;
    v13 = v5;
    sub_29DEB1BC4(0, &qword_2A1A61C90);
    v14 = sub_29E2C3424();
    v16 = sub_29DFAA104(v14, v15, &v36);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%{public}s] Failed to configure PDF view controller: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);

    (*(v7 + 8))(v28, v27);
    (*(v6 + 8))(v30, v29);
    (*(v31 + 8))(v34, v32);
  }

  else
  {
    v17 = v0[36];
    v18 = v0[28];
    v33 = v0[27];
    v35 = v0[31];
    v19 = v0[25];
    v20 = v0[26];
    v21 = v0[24];
    v22 = v0[13];
    v23 = v0[14];
    v24 = v0[12];

    (*(v22 + 8))(v23, v24);
    (*(v19 + 8))(v20, v21);
    (*(v18 + 8))(v35, v33);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_29E2B0ECC(uint64_t a1, uint64_t a2)
{
  sub_29E2B37E8(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v11 = sub_29E2C0504();
  v12 = sub_29E2C3A04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = v8;
    v14 = v13;
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136446210;
    v16 = sub_29E2C4AE4();
    v18 = sub_29DFAA104(v16, v17, &v31);
    v29 = v7;
    v19 = v6;
    v20 = a2;
    v21 = a1;
    v22 = v18;

    *(v14 + 4) = v22;
    a1 = v21;
    a2 = v20;
    v6 = v19;
    _os_log_impl(&dword_29DE74000, v11, v12, "[%{public}s] Days updated, configuring", v14, 0xCu);
    sub_29DE93B3C(v15);
    MEMORY[0x29ED82140](v15, -1, -1);
    MEMORY[0x29ED82140](v14, -1, -1);

    (*(v30 + 8))(v10, v29);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v23 = sub_29E2C3734();
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  sub_29E2C3714();

  v24 = sub_29E2C3704();
  v25 = swift_allocObject();
  v26 = MEMORY[0x29EDCA390];
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = a1;
  v25[5] = a2;
  sub_29E13C63C(0, 0, v6, &unk_29E2EAAF0, v25);

  if (*(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34TwelveMonthCycleHistoryPDFProvider_dayProviderSubscription))
  {

    sub_29E2C1044();
  }

  return result;
}

uint64_t sub_29E2B1204()
{

  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34TwelveMonthCycleHistoryPDFProvider_gregorianCalendar;
  v2 = sub_29E2BCEA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34TwelveMonthCycleHistoryPDFProvider_today;
  v4 = sub_29E2C31A4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TwelveMonthCycleHistoryPDFProvider()
{
  result = qword_2A1820E98;
  if (!qword_2A1820E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E2B1374()
{
  result = sub_29E2BCEA4();
  if (v1 <= 0x3F)
  {
    result = sub_29E2C31A4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_29E2B1478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_29E2C3714();
  v5[3] = sub_29E2C3704();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_29E2B1534;

  return sub_29E2B1670(a5);
}

uint64_t sub_29E2B1534()
{

  v1 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29E2B3A98, v1, v0);
}

uint64_t sub_29E2B1670(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_29E2B3590(0, &qword_2A1819F90, MEMORY[0x29EDC9930]);
  v2[10] = swift_task_alloc();
  v2[11] = *(type metadata accessor for CycleChartPDFModel(0) - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v3 = type metadata accessor for CycleChartCycle(0);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  sub_29E2B37E8(0, &unk_2A1820F90, type metadata accessor for CycleChartsModel, MEMORY[0x29EDC9C68]);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  sub_29E2C3714();
  v2[20] = sub_29E2C3704();
  v5 = sub_29E2C36A4();
  v2[21] = v5;
  v2[22] = v4;

  return MEMORY[0x2A1C73D48](sub_29E2B1884, v5, v4);
}

uint64_t sub_29E2B1884()
{
  v1 = *(v0 + 152);
  v2 = *(*(v0 + 72) + 16);
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartsPDFModelProvider_fertilityChart;
  *(v0 + 184) = v2;
  *(v0 + 192) = v3;
  swift_beginAccess();
  sub_29DEDD618(v2 + v3, v1);
  v4 = type metadata accessor for CycleChartsModel();
  *(v0 + 200) = v4;
  v5 = *(v4 - 8);
  *(v0 + 208) = v5;
  v6 = *(v5 + 48);
  *(v0 + 216) = v6;
  *(v0 + 224) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  result = v6(v1, 1, v4);
  if (result == 1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(v0 + 152);
  v9 = *v8;
  *(v0 + 232) = *v8;
  sub_29E2BF404();
  sub_29E2B362C(v8, type metadata accessor for CycleChartsModel);
  v10 = *(v9 + 16);
  *(v0 + 240) = v10;
  if (v10)
  {
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    v13 = *(v0 + 112);
    v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34TwelveMonthCycleHistoryPDFProvider_healthStore;
    v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34TwelveMonthCycleHistoryPDFProvider_gregorianCalendar;
    v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34TwelveMonthCycleHistoryPDFProvider_today;
    *(v0 + 248) = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34TwelveMonthCycleHistoryPDFProvider_gregorianCalendar;
    *(v0 + 256) = v16;
    v17 = *(v0 + 72);
    *(v0 + 264) = *(v17 + v14);
    LODWORD(v14) = *(v11 + 80);
    *(v0 + 336) = v14;
    v18 = MEMORY[0x29EDCA190];
    v19 = *(v11 + 72);
    *(v0 + 280) = 0;
    *(v0 + 288) = v18;
    *(v0 + 272) = v19;
    v20 = *(v0 + 80);
    sub_29E2B368C(*(v0 + 232) + ((v14 + 32) & ~v14), v12, type metadata accessor for CycleChartCycle);
    sub_29E02CAF8((v12 + *(v13 + 24)), v20);
    v21 = sub_29E1AF000(v20);
    *(v0 + 296) = v21;
    sub_29E2B36F4(v20, &qword_2A1819F90, MEMORY[0x29EDC9930]);
    v22 = swift_task_alloc();
    *(v0 + 304) = v22;
    *v22 = v0;
    v22[1] = sub_29E2B1CCC;
    v23 = *(v0 + 264);
    v24 = *(v0 + 128);
    v25 = *(v0 + 104);

    return sub_29E0B3FE8(v25, v23, v24, v21, v17 + v15, v17 + v16);
  }

  *(v0 + 312) = MEMORY[0x29EDCA190];
  v26 = *(v0 + 216);
  v27 = *(v0 + 200);
  v28 = *(v0 + 208);
  v30 = *(v0 + 184);
  v29 = *(v0 + 192);
  v31 = *(v0 + 144);
  sub_29E2B37E8(0, &qword_2A1818590, type metadata accessor for CycleChartsModel, MEMORY[0x29EDC9E90]);
  v32 = *(v28 + 72);
  v33 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v34 = swift_allocObject();
  *(v0 + 320) = v34;
  *(v34 + 16) = xmmword_29E2CD7A0;
  sub_29DEDD618(v30 + v29, v31);
  result = v26(v31, 1, v27);
  if (result == 1)
  {
    goto LABEL_12;
  }

  v35 = v34 + v33;
  v36 = *(v0 + 216);
  v37 = *(v0 + 200);
  v38 = *(v0 + 184);
  v39 = *(v0 + 136);
  sub_29E2B38E8(*(v0 + 144), v35, type metadata accessor for CycleChartsModel);
  v40 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartsPDFModelProvider_symptomsChart;
  swift_beginAccess();
  sub_29DEDD618(v38 + v40, v39);
  result = v36(v39, 1, v37);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_29E2B38E8(*(v0 + 136), v35 + v32, type metadata accessor for CycleChartsModel);
  v41 = swift_task_alloc();
  *(v0 + 328) = v41;
  *v41 = v0;
  v41[1] = sub_29E2B2250;
  v42 = MEMORY[0x29EDCA190];

  return sub_29E2B0408(v34, v42);
}

uint64_t sub_29E2B1CCC()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2A1C73D48](sub_29E2B1E10, v3, v2);
}

uint64_t sub_29E2B1E10()
{
  sub_29E2B368C(*(v0 + 104), *(v0 + 96), type metadata accessor for CycleChartPDFModel);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 288);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_29E14589C(0, v2[2] + 1, 1, *(v0 + 288));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_29E14589C(v3 > 1, v4 + 1, 1, v2);
  }

  v5 = *(v0 + 240);
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  v8 = *(v0 + 88);
  v9 = *(v0 + 280) + 1;
  sub_29E2B362C(*(v0 + 104), type metadata accessor for CycleChartPDFModel);
  v2[2] = v4 + 1;
  sub_29E2B38E8(v7, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4, type metadata accessor for CycleChartPDFModel);
  sub_29E2B362C(v6, type metadata accessor for CycleChartCycle);
  if (v9 == v5)
  {

    *(v0 + 312) = v2;
    v10 = *(v0 + 216);
    v12 = *(v0 + 200);
    v11 = *(v0 + 208);
    v13 = *(v0 + 184);
    v14 = *(v0 + 192);
    v15 = *(v0 + 144);
    sub_29E2B37E8(0, &qword_2A1818590, type metadata accessor for CycleChartsModel, MEMORY[0x29EDC9E90]);
    v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v39 = *(v11 + 72);
    v17 = swift_allocObject();
    *(v0 + 320) = v17;
    *(v17 + 16) = xmmword_29E2CD7A0;
    sub_29DEDD618(v13 + v14, v15);
    result = v10(v15, 1, v12);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v19 = v17 + v16;
      v20 = *(v0 + 216);
      v21 = *(v0 + 200);
      v22 = *(v0 + 184);
      v23 = *(v0 + 136);
      sub_29E2B38E8(*(v0 + 144), v19, type metadata accessor for CycleChartsModel);
      v24 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartsPDFModelProvider_symptomsChart;
      swift_beginAccess();
      sub_29DEDD618(v22 + v24, v23);
      result = v20(v23, 1, v21);
      if (result != 1)
      {
        sub_29E2B38E8(*(v0 + 136), v19 + v39, type metadata accessor for CycleChartsModel);
        v25 = swift_task_alloc();
        *(v0 + 328) = v25;
        *v25 = v0;
        v25[1] = sub_29E2B2250;

        return sub_29E2B0408(v17, v2);
      }
    }

    __break(1u);
    return result;
  }

  v26 = *(v0 + 272);
  v27 = *(v0 + 280) + 1;
  *(v0 + 280) = v27;
  *(v0 + 288) = v2;
  v29 = *(v0 + 248);
  v28 = *(v0 + 256);
  v30 = *(v0 + 128);
  v31 = *(v0 + 112);
  v33 = *(v0 + 72);
  v32 = *(v0 + 80);
  sub_29E2B368C(*(v0 + 232) + ((*(v0 + 336) + 32) & ~*(v0 + 336)) + v26 * v27, v30, type metadata accessor for CycleChartCycle);
  sub_29E02CAF8((v30 + *(v31 + 24)), v32);
  v34 = sub_29E1AF000(v32);
  *(v0 + 296) = v34;
  sub_29E2B36F4(v32, &qword_2A1819F90, MEMORY[0x29EDC9930]);
  v35 = swift_task_alloc();
  *(v0 + 304) = v35;
  *v35 = v0;
  v35[1] = sub_29E2B1CCC;
  v36 = *(v0 + 264);
  v37 = *(v0 + 128);
  v38 = *(v0 + 104);

  return sub_29E0B3FE8(v38, v36, v37, v34, v33 + v29, v33 + v28);
}

uint64_t sub_29E2B2250()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2A1C73D48](sub_29E2B23B0, v3, v2);
}

uint64_t sub_29E2B23B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E2B2470@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  sub_29E2B37E8(0, &qword_2A1818598, MEMORY[0x29EDC1C50], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for PDFCoverPageBodyProvider();
  v6 = v5 - 8;
  v31 = *(v5 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for PDFCoverPageHeaderProvider();
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v29 - v15;
  sub_29E191DA4(*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34TwelveMonthCycleHistoryPDFProvider_healthStore));
  v17 = *(v1 + 24);
  v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34TwelveMonthCycleHistoryPDFProvider_gregorianCalendar;
  v19 = *(v6 + 28);
  v20 = sub_29E2BCEA4();
  (*(*(v20 - 8) + 16))(&v10[v19], v1 + v18, v20);
  *v10 = v17;
  v21 = sub_29E2BE0E4();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  sub_29E2B368C(v16, v13, type metadata accessor for PDFCoverPageHeaderProvider);
  v22 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v23 = swift_allocObject();
  sub_29E2B38E8(v13, v23 + v22, type metadata accessor for PDFCoverPageHeaderProvider);
  v24 = v30;
  sub_29E2B368C(v10, v30, type metadata accessor for PDFCoverPageBodyProvider);
  v25 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v26 = swift_allocObject();
  sub_29E2B38E8(v24, v26 + v25, type metadata accessor for PDFCoverPageBodyProvider);
  v27 = v17;
  sub_29E2BE3C4();
  sub_29E2B362C(v10, type metadata accessor for PDFCoverPageBodyProvider);
  return sub_29E2B362C(v16, type metadata accessor for PDFCoverPageHeaderProvider);
}

void *sub_29E2B2868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v45 = a2;
  sub_29E2B37E8(0, &qword_2A1818598, MEMORY[0x29EDC1C50], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v44 = &v36 - v5;
  v6 = sub_29E2BE134();
  v41 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CycleChartsModel();
  v37 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CycleChartPDFModel(0);
  v39 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v46 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E2BE3D4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v15 + 16);
  (v43)(v18, a1, v14, v16);
  v19 = sub_29E145AC4(0, 1, 1, MEMORY[0x29EDCA190]);
  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_29E145AC4((v20 > 1), v21 + 1, 1, v19);
  }

  v48 = v14;
  v49 = MEMORY[0x29EDC1EE8];
  v22 = sub_29DEBB7E8(&v47);
  (v43)(v22, v18, v14);
  v19[2] = v21 + 1;
  sub_29DE8EE78(&v47, &v19[5 * v21 + 4]);
  (*(v15 + 8))(v18, v14);
  v42 = *(v45 + 16);
  if (v42)
  {
    v23 = 0;
    v24 = *(v38 + 16);
    v40 = v45 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v25 = (v41 + 16);
    v26 = (v41 + 8);
    v39 = *(v39 + 72);
    v27 = v46;
    v41 = v24;
    do
    {
      v43 = v23;
      sub_29E2B368C(v40 + v39 * v23, v27, type metadata accessor for CycleChartPDFModel);
      if (v24)
      {
        v28 = v38 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
        v45 = *(v37 + 72);
        v29 = v24;
        do
        {
          sub_29E2B368C(v28, v11, type metadata accessor for CycleChartsModel);
          v30 = sub_29E2BE0E4();
          v31 = (*(*(v30 - 8) + 56))(v44, 1, 1, v30);
          MEMORY[0x2A1C7C4A8](v31);
          sub_29E2BE124();
          v33 = v19[2];
          v32 = v19[3];
          if (v33 >= v32 >> 1)
          {
            v19 = sub_29E145AC4((v32 > 1), v33 + 1, 1, v19);
          }

          v48 = v6;
          v49 = MEMORY[0x29EDC1C58];
          v34 = sub_29DEBB7E8(&v47);
          (*v25)(v34, v8, v6);
          v19[2] = v33 + 1;
          sub_29DE8EE78(&v47, &v19[5 * v33 + 4]);
          (*v26)(v8, v6);
          sub_29E2B362C(v11, type metadata accessor for CycleChartsModel);
          v28 += v45;
          --v29;
        }

        while (v29);
      }

      v23 = v43 + 1;
      v27 = v46;
      sub_29E2B362C(v46, type metadata accessor for CycleChartPDFModel);
      v24 = v41;
    }

    while (v23 != v42);
  }

  return v19;
}

uint64_t sub_29E2B2E58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleChartsModel();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CycleChartPDFModel(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2B368C(a1, v9, type metadata accessor for CycleChartPDFModel);
  sub_29E2B368C(a2, v6, type metadata accessor for CycleChartsModel);
  v10 = type metadata accessor for PDFCycleChartView();
  v11 = swift_allocObject();
  sub_29E2B38E8(v9, v11 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17PDFCycleChartView_pdfModel, type metadata accessor for CycleChartPDFModel);
  sub_29E2B38E8(v6, v11 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17PDFCycleChartView_cycleChartsModel, type metadata accessor for CycleChartsModel);
  v17[3] = v10;
  v17[4] = sub_29E2B3A50(&qword_2A18185B8, type metadata accessor for PDFCycleChartView);
  v17[0] = v11;
  v12 = sub_29E2BEA14();
  sub_29DE93B3C(v17);
  sub_29E15162C();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29E2CAB20;
  *(v13 + 32) = v12;
  v14 = MEMORY[0x29ED7B1C0]();

  return v14;
}

uint64_t sub_29E2B3058()
{
  v5[3] = sub_29E2BF594();
  v5[4] = MEMORY[0x29EDC2880];
  v0 = sub_29DEBB7E8(v5);
  sub_29E1F627C(v0);
  v1 = sub_29E2BEA14();
  sub_29DE93B3C(v5);
  sub_29E15162C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E2CAB20;
  *(v2 + 32) = v1;
  v3 = MEMORY[0x29ED7B1C0]();

  return v3;
}

uint64_t sub_29E2B30F0(uint64_t a1)
{
  sub_29E2B3854(0, &qword_2A1820EA8, &qword_2A1820EB0, MEMORY[0x29EDC2208], MEMORY[0x29EDC9E90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E2CAB20;
  *(v2 + 56) = type metadata accessor for PDFCoverPageHeaderProvider();
  *(v2 + 64) = sub_29E2B3A50(&qword_2A1820EC8, type metadata accessor for PDFCoverPageHeaderProvider);
  v3 = sub_29DEBB7E8((v2 + 32));
  sub_29E2B368C(a1, v3, type metadata accessor for PDFCoverPageHeaderProvider);
  v4 = sub_29E2BF404();

  return v4;
}

uint64_t sub_29E2B31E4(uint64_t a1)
{
  sub_29E2B3854(0, &qword_2A1820EA8, &qword_2A1820EB0, MEMORY[0x29EDC2208], MEMORY[0x29EDC9E90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E2CAB20;
  *(v2 + 56) = type metadata accessor for PDFCoverPageBodyProvider();
  *(v2 + 64) = sub_29E2B3A50(&qword_2A1820EC0, type metadata accessor for PDFCoverPageBodyProvider);
  v3 = sub_29DEBB7E8((v2 + 32));
  sub_29E2B368C(a1, v3, type metadata accessor for PDFCoverPageBodyProvider);
  v4 = sub_29E2BF404();

  return v4;
}

uint64_t sub_29E2B32D8()
{
  sub_29E2B3854(0, &qword_2A1820EA8, &qword_2A1820EB0, MEMORY[0x29EDC2208], MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E2CAB20;
  *(v0 + 56) = &type metadata for PDFCoverPageFooterProvider;
  *(v0 + 64) = sub_29E2B39FC();
  v1 = sub_29E2BF404();

  return v1;
}

uint64_t sub_29E2B3370()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_29DE9657C;

  return sub_29E2B0350();
}

uint64_t sub_29E2B3430(uint64_t a1, uint64_t a2)
{
  sub_29E2B3590(0, &qword_2A1A61A30, MEMORY[0x29EDC9C30]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E2B34D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29DECA6A0;

  return sub_29E2B1478(a1, v4, v5, v7, v6);
}

void sub_29E2B3590(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E2C31A4();
    v7 = sub_29E2B3A50(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E2B362C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E2B368C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E2B36F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_29E2B3590(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_29E2B3750()
{
  v1 = *(sub_29E2BE3D4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29E2B2868(v0 + v2, v4, v5);
}

void sub_29E2B37E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E2B3854(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29DEB1BC4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29E2B38E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E2B397C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_29E2B39FC()
{
  result = qword_2A1820EB8;
  if (!qword_2A1820EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1820EB8);
  }

  return result;
}

uint64_t sub_29E2B3A50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E2B3A9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  if ((v4 & 1) == 0)
  {
    v0 = [objc_opt_self() sharedInstance];
    v1 = [v0 getActivePairedDevice];

    if (!v1)
    {
      return 0;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v3;
}

uint64_t sub_29E2B3BC0()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  sub_29E2C3394();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A67F80;
  sub_29E2BCC74();
  return sub_29E2C3414();
}

void sub_29E2B3D34(char a1)
{
  v2 = v1;
  sub_29E2B59E8(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v13[-v5];
  swift_getKeyPath();
  swift_getKeyPath();
  v13[15] = a1;

  sub_29E2C1224();
  swift_getKeyPath();
  swift_getKeyPath();
  v13[14] = 1;

  sub_29E2C1224();
  v7 = [*(v1 + 16) featureIdentifier];
  v8 = sub_29E2C3734();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_29E2C3714();

  v9 = v7;
  v10 = sub_29E2C3704();
  v11 = swift_allocObject();
  v12 = MEMORY[0x29EDCA390];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v2;
  *(v11 + 40) = a1;
  *(v11 + 48) = v9;
  sub_29E13C63C(0, 0, v6, &unk_29E2EAD60, v11);
}

uint64_t *sub_29E2B3F80(char a1, void *a2)
{
  v34 = *v2;
  sub_29E2B5960(0, &qword_2A1A5E3C8, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v33 - v8;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel_anySampleFromWatchQuery] = 0;
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel__hasSensorSampleFromAppleWatch;
  LOBYTE(aBlock[0]) = 0;
  sub_29E2C11D4();
  v11 = *(v7 + 32);
  v11(&v2[v10], v9, v6);
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel__meetsSettingInteractionRequirements;
  LOBYTE(aBlock[0]) = 0;
  sub_29E2C11D4();
  v11(&v2[v12], v9, v6);
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel__isSavingOnSetting;
  LOBYTE(aBlock[0]) = 0;
  sub_29E2C11D4();
  v11(&v2[v13], v9, v6);
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel__optimisticFeatureOnSetting;
  LOBYTE(aBlock[0]) = 0;
  sub_29E2C11D4();
  v11(&v2[v14], v9, v6);
  v15 = a1 & 1;
  v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel_sensorInputType] = a1 & 1;
  v16 = MEMORY[0x29EDBA720];
  if ((a1 & 1) == 0)
  {
    v16 = MEMORY[0x29EDBA718];
  }

  v17 = *v16;
  if (a1)
  {
    v18 = MEMORY[0x29EDBA858];
  }

  else
  {
    v18 = MEMORY[0x29EDBA908];
  }

  v19 = v17;
  v20 = a2;
  v21 = sub_29DF688CC(v19, v20);

  sub_29DE9408C(0, &qword_2A1A5E1F0);
  v22 = *v18;

  v23 = MEMORY[0x29ED80230](v22);
  v24 = [objc_opt_self() _predicateForObjectsFromAppleWatches];
  v25 = swift_allocObject();
  *(v25 + 16) = v15;
  v26 = v34;
  *(v25 + 24) = v21;
  *(v25 + 32) = v26;
  v27 = objc_allocWithZone(MEMORY[0x29EDBAD70]);
  aBlock[4] = sub_29E2B59B0;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E2B57DC;
  aBlock[3] = &unk_2A24C2560;
  v28 = _Block_copy(aBlock);

  v29 = [v27 initWithSampleType:v23 predicate:v24 limit:1 sortDescriptors:0 resultsHandler:v28];

  _Block_release(v28);

  v30 = *(v21 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel_anySampleFromWatchQuery);
  *(v21 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel_anySampleFromWatchQuery) = v29;
  v31 = v29;

  if (v31)
  {
    [v20 executeQuery_];
  }

  else
  {
  }

  return v21;
}

uint64_t sub_29E2B4364(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v10 = sub_29E2C2B34();
  v24 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29E2C2B54();
  v13 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A626C0);
  v16 = sub_29E2C3CF4();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a4 & 1;
  *(v17 + 32) = a3;
  *(v17 + 40) = a5;
  *(v17 + 48) = v22;
  aBlock[4] = sub_29E2B59D4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24C25B0;
  v18 = _Block_copy(aBlock);
  sub_29E2BF404();
  v19 = a3;

  sub_29E2C2B44();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29DF4B3B0();
  sub_29E2B59E8(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DF4B408();
  sub_29E2C43F4();
  MEMORY[0x29ED804D0](0, v15, v12, v18);
  _Block_release(v18);

  (*(v24 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v23);
}

uint64_t sub_29E2B4658(unint64_t a1, char a2, void *a3)
{
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 >> 62)
    {
      v10 = sub_29E2C4484();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v10 != 0;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v31) = v11;

    return sub_29E2C1224();
  }

  else
  {
    sub_29E2C04B4();
    v13 = a3;
    v14 = sub_29E2C0504();
    v15 = sub_29E2C3A14();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v16 = 136446722;
      v17 = sub_29E2C4AE4();
      v19 = sub_29DFAA104(v17, v18, &v31);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2112;
      sub_29DE9408C(0, &qword_2A1A5E1F0);
      v20 = MEMORY[0x29EDBA858];
      if ((a2 & 1) == 0)
      {
        v20 = MEMORY[0x29EDBA908];
      }

      v21 = MEMORY[0x29ED80230](*v20);
      *(v16 + 14) = v21;
      v22 = v28;
      *v28 = v21;
      *(v16 + 22) = 2080;
      v30 = a3;
      v23 = a3;
      sub_29E2B59E8(0, &qword_2A1A5DFD0, sub_29DE96670, MEMORY[0x29EDC9C68]);
      v24 = sub_29E2C3424();
      v26 = sub_29DFAA104(v24, v25, &v31);

      *(v16 + 24) = v26;
      _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s] Failed to retrieve %@ samples: %s", v16, 0x20u);
      sub_29DF58A90(v22);
      MEMORY[0x29ED82140](v22, -1, -1);
      v27 = v29;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v27, -1, -1);
      MEMORY[0x29ED82140](v16, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_29E2B4998(uint64_t a1)
{
  v2 = sub_29E2BFCA4();
  [v2 areAllRequirementsSatisfied];

  swift_getKeyPath();
  swift_getKeyPath();

  sub_29E2C1224();
  v3 = sub_29E2BFCA4();
  [v3 areAllRequirementsSatisfied];

  swift_getKeyPath();
  swift_getKeyPath();

  sub_29E2C1224();
  return sub_29DF68238(a1);
}

uint64_t sub_29E2B4AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 129) = a5;
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  v7 = sub_29E2C0514();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();
  sub_29E2B5960(0, &qword_2A181A588, MEMORY[0x29EDC9A98], MEMORY[0x29EDC2EA0]);
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 - 8);
  *(v6 + 80) = swift_task_alloc();
  sub_29E2C3714();
  *(v6 + 88) = sub_29E2C3704();
  v10 = sub_29E2C36A4();
  *(v6 + 96) = v10;
  *(v6 + 104) = v9;

  return MEMORY[0x2A1C73D48](sub_29E2B4C24, v10, v9);
}

uint64_t sub_29E2B4C24()
{
  ObjectType = swift_getObjectType();
  sub_29E2C3C94();
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_29E2B4CF0;
  v3 = *(v0 + 80);
  v4 = *(v0 + 129);

  return MEMORY[0x2A1C63C38](v4, v3, ObjectType);
}

uint64_t sub_29E2B4CF0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_29E2B4F58;
  }

  else
  {
    v8 = sub_29E2B4E88;
  }

  return MEMORY[0x2A1C73D48](v8, v7, v6);
}

uint64_t sub_29E2B4E88()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 128) = 0;

  sub_29E2C1224();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E2B4F58()
{
  v26 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 32);

  sub_29E2C04B4();
  v3 = v2;
  v4 = v1;
  v5 = sub_29E2C0504();
  v6 = sub_29E2C3A14();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 120);
    v8 = *(v0 + 48);
    v24 = *(v0 + 56);
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136446466;
    v12 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v14 = sub_29DFAA104(v12, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 16) = v7;
    v15 = v7;
    sub_29DE96670();
    v16 = sub_29E2C3434();
    v18 = sub_29DFAA104(v16, v17, &v25);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_29DE74000, v5, v6, "[NanoMenstrualCyclesSettings] Failed to update feature setting for %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v11, -1, -1);
    MEMORY[0x29ED82140](v10, -1, -1);

    (*(v8 + 8))(v24, v9);
  }

  else
  {
    v20 = *(v0 + 48);
    v19 = *(v0 + 56);
    v21 = *(v0 + 40);

    (*(v20 + 8))(v19, v21);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 128) = 0;

  sub_29E2C1224();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_29E2B51E4()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel__hasSensorSampleFromAppleWatch;
  sub_29E2B5960(0, &qword_2A1A5E3C8, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
  v3 = v2;
  v6 = *(*(v2 - 8) + 8);
  (v6)((v2 - 8), v0 + v1, v2);
  v6(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel__meetsSettingInteractionRequirements, v3);
  v6(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel__isSavingOnSetting, v3);
  v4 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel__optimisticFeatureOnSetting;

  return (v6)(v4, v3);
}

uint64_t sub_29E2B52FC()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel__meetsSettingVisibilityRequirements;
  sub_29E2B5960(0, &qword_2A1A5E3C8, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
  v3 = v2;
  v4 = *(*(v2 - 8) + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel__meetsUsageRequirements, v3);
  v4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel__isOnboardingRecordPresent, v3);

  v4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel__hasSensorSampleFromAppleWatch, v3);
  v4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel__meetsSettingInteractionRequirements, v3);
  v4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel__isSavingOnSetting, v3);
  v4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24SensorFeatureStatusModel__optimisticFeatureOnSetting, v3);
  return v0;
}

uint64_t sub_29E2B5478()
{
  sub_29E2B52FC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SensorFeatureStatusModel()
{
  result = qword_2A1820EF8;
  if (!qword_2A1820EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E2B5524()
{
  sub_29E2B5960(319, &qword_2A1A5E3C8, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_29E2B5614()
{
  result = qword_2A1820F08;
  if (!qword_2A1820F08)
  {
    sub_29E2B5960(255, &qword_2A1820F10, &type metadata for SensorInputType, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1820F08);
  }

  return result;
}

unint64_t sub_29E2B5694()
{
  result = qword_2A1820F18;
  if (!qword_2A1820F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1820F18);
  }

  return result;
}

uint64_t sub_29E2B56E8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a1 = v3;
  return result;
}

uint64_t sub_29E2B5768()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29E2C1224();
}

uint64_t sub_29E2B57DC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_29DE9408C(0, &qword_2A1A61D20);
    v5 = sub_29E2C3614();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_29E2B5894(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29DE9657C;

  return sub_29E2B4AAC(a1, v4, v5, v6, v7, v8);
}

void sub_29E2B5960(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29E2B59BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E2B59E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E2B5A58()
{
  sub_29E2B64F0(0, &qword_2A1820678, MEMORY[0x29EDC7770], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_29E2C05D4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C0574();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E073F40();
  sub_29E2B64F0(0, &qword_2A1820688, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29E2C05F4();
  *(swift_allocObject() + 16) = xmmword_29E2CAB20;
  (*(v8 + 104))(v10, *MEMORY[0x29EDC7768], v7);
  v11 = sub_29E2C0584();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  sub_29E2C05C4();
  sub_29E2C0594();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  return sub_29E2C3E94();
}

uint64_t sub_29E2B5D70()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin8ListCell_item;
  swift_beginAccess();
  sub_29DEC3518(v0 + v1, v3);
  if (v4)
  {
    sub_29DEB1BC4(0, &qword_2A181CC80);
    sub_29DEB1BC4(0, &qword_2A181BFA8);
    if (swift_dynamicCast())
    {
      if (*(&v6 + 1))
      {
        sub_29DE966D4(&v5, *(&v6 + 1));
        sub_29E2BEA84();
        return sub_29DE93B3C(&v5);
      }
    }

    else
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
    }
  }

  else
  {
    sub_29DEF95F0(v3, &qword_2A18180D8, &qword_2A181CC80);
    v5 = 0u;
    v6 = 0u;
    v7 = 0;
  }

  return sub_29DEF95F0(&v5, &qword_2A181BFB0, &qword_2A181BFA8);
}

void sub_29E2B5EC8()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin8ListCell_item;
  swift_beginAccess();
  sub_29DEC3518(&v1[v6], v20);
  if (v21)
  {
    sub_29DEB1BC4(0, &qword_2A181CC80);
    type metadata accessor for TextItem();
    if (swift_dynamicCast())
    {
      v7 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin8ListCell_textLabel];
      sub_29E2BF404();
      v8 = sub_29E2C33A4();

      [v7 setText_];

      sub_29E2BF404();
      v9 = sub_29E2C33A4();

      [v1 setAccessibilityIdentifier_];

      return;
    }
  }

  else
  {
    sub_29DEF95F0(v20, &qword_2A18180D8, &qword_2A181CC80);
  }

  sub_29E2C04B4();
  v10 = v1;
  v11 = sub_29E2C0504();
  v12 = sub_29E2C3A14();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446210;
    sub_29DEC3518(&v1[v6], v20);
    sub_29DEF964C(0, &qword_2A18180D8, &qword_2A181CC80);
    v15 = sub_29E2C3434();
    v17 = sub_29DFAA104(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_29DE74000, v11, v12, "Incorrect view model for TextItemCell: %{public}s", v13, 0xCu);
    sub_29DE93B3C(v14);
    MEMORY[0x29ED82140](v14, -1, -1);
    MEMORY[0x29ED82140](v13, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_29E2B61D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin8ListCell_item;
  swift_beginAccess();
  return sub_29DEC3518(v1 + v3, a1);
}

uint64_t sub_29E2B6230(uint64_t a1)
{
  sub_29DEC3518(a1, v5);
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin8ListCell_item;
  swift_beginAccess();
  sub_29DEF9180(v5, v1 + v3);
  swift_endAccess();
  sub_29E2B5EC8();
  return sub_29DEF95F0(a1, &qword_2A18180D8, &qword_2A181CC80);
}

void (*sub_29E2B62C0(uint64_t *a1))(void *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_29E074564();
  return sub_29E2B6334;
}

void sub_29E2B6334(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_29E2B5EC8();
  }

  free(v3);
}

id sub_29E2B6474()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E2B64F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_29E2B6554(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CycleChartCycle(0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleChartDayView_cycle;
  swift_beginAccess();
  sub_29E2B784C(v2 + v7, v6, type metadata accessor for CycleChartCycle);
  if (*a1 == *v6)
  {
    sub_29DE9408C(0, &qword_2A1A619F0);
    if (sub_29E2C40D4())
    {
      sub_29E2C31A4();
      sub_29E2B7918(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
      if (sub_29E2C3304() & 1) != 0 && (sub_29E2C3304() & 1) != 0 && (MEMORY[0x29ED79570](a1 + *(v4 + 32), v6 + *(v4 + 32)) & 1) != 0 && (MEMORY[0x29ED79570](a1 + *(v4 + 36), v6 + *(v4 + 36)))
      {
        return sub_29E2B77EC(v6, type metadata accessor for CycleChartCycle);
      }
    }
  }

  sub_29E2B77EC(v6, type metadata accessor for CycleChartCycle);
  return [v2 setNeedsDisplay];
}

uint64_t sub_29E2B674C(uint64_t a1)
{
  v3 = type metadata accessor for CycleChartDay();
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v11[-v7];
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleChartDayView_day;
  swift_beginAccess();
  sub_29E2B784C(v1 + v9, v8, type metadata accessor for CycleChartDay);
  swift_beginAccess();
  sub_29E2B78B4(a1, v1 + v9);
  swift_endAccess();
  sub_29E2B784C(v1 + v9, v5, type metadata accessor for CycleChartDay);
  sub_29E2C31A4();
  sub_29E2B7918(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
  if (sub_29E2C3304() & 1) != 0 && (sub_29DE9408C(0, &qword_2A1A619F0), type metadata accessor for CycleDay(), (sub_29E2C40D4()) && (type metadata accessor for SleepingWristTemperatureBaselineRelativeDataSource(), sub_29E2B7918(&qword_2A181C508, type metadata accessor for SleepingWristTemperatureBaselineRelativeDataSource), (sub_29E2C2C54()))
  {
    sub_29E2B77EC(a1, type metadata accessor for CycleChartDay);
    a1 = v5;
  }

  else
  {
    sub_29E2B77EC(v5, type metadata accessor for CycleChartDay);
    [v1 setNeedsDisplay];
  }

  sub_29E2B77EC(a1, type metadata accessor for CycleChartDay);
  return sub_29E2B77EC(v8, type metadata accessor for CycleChartDay);
}

uint64_t sub_29E2B69DC(uint64_t a1)
{
  v2 = v1;
  v18 = a1;
  v19 = type metadata accessor for CycleChartDay() - 8;
  MEMORY[0x2A1C7C4A8](v19);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C31A4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleChartDayView_dayIndex;
  swift_beginAccess();
  (*(v7 + 24))(v2 + v10, a1, v6);
  swift_endAccess();
  v11 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleChartDayView_dayProvider);
  v12 = *(v7 + 16);
  v12(v9, v2 + v10, v6);
  v13 = *(v11 + 16);
  v12(v5, v9, v6);
  v14 = [v13 dayViewModelAtIndex_];
  *&v5[*(type metadata accessor for CycleDay() + 20)] = v14;
  sub_29E2C2CB4();
  v15 = *(v7 + 8);
  v15(v9, v6);
  sub_29E2B674C(v5);
  return (v15)(v18, v6);
}

uint64_t sub_29E2B6C68()
{
  swift_getObjectType();
  v2 = sub_29E2C4AE4();
  MEMORY[0x29ED7FCC0](58, 0xE100000000000000);
  swift_beginAccess();
  sub_29E2C3164();
  swift_endAccess();
  v0 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v0);

  return v2;
}

void sub_29E2B6D74(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_29E2C0514();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CycleChartDay();
  MEMORY[0x2A1C7C4A8](v15);
  v17 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E2C31A4();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CycleChartCycle(0);
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v75 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v5;
  v82.receiver = v5;
  v82.super_class = ObjectType;
  objc_msgSendSuper2(&v82, sel_drawRect_, a1, a2, a3, a4);
  v24 = UIGraphicsGetCurrentContext();
  if (v24)
  {
    v74 = v24;
    v25 = v69;
    [v69 bounds];
    v29 = *&v25[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows];
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = v26;
      MaxY = v27;
      v33 = v28;
      v34 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleChartDayView_cycle;
      v35 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleChartDayView_dayIndex;
      v66 = *&v69[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleChartDayView_dayProvider];
      v36 = v29 + 32;
      v61[1] = v29;
      sub_29E2BF404();
      v68 = v34;
      swift_beginAccess();
      v67 = v35;
      swift_beginAccess();
      v65 = (v19 + 16);
      v64 = (v19 + 8);
      v37 = 0.0;
      v63 = v15;
      v62 = v18;
      v38 = v75;
      v39 = v66;
      do
      {
        sub_29DE9DC34(v36, v79);
        CGContextSaveGState(v74);
        v83.origin.x = v31;
        v83.origin.y = MaxY;
        v83.size.width = v33;
        v83.size.height = v37;
        MaxY = CGRectGetMaxY(v83);
        v40 = v80;
        v41 = v81;
        sub_29DE966D4(v79, v80);
        v37 = (*(*(v41 + 8) + 72))(v40);
        v72 = v80;
        v70 = v81;
        v71 = sub_29DE966D4(v79, v80);
        v73 = type metadata accessor for CycleChartCycle;
        v42 = v69;
        sub_29E2B784C(&v69[v68], v38, type metadata accessor for CycleChartCycle);
        v43 = *v65;
        v44 = v30;
        v45 = v62;
        (*v65)(v21, &v42[v67], v62);
        v46 = *(v39 + 16);
        v43(v17, v21, v45);
        v47 = [v46 dayViewModelAtIndex_];
        *&v17[*(type metadata accessor for CycleDay() + 20)] = v47;
        sub_29E2C2CB4();
        v48 = v45;
        v49 = v44;
        (*v64)(v21, v48);
        v50 = [v42 traitCollection];
        v51 = v74;
        (*(*(v70 + 8) + 120))(v74, v75, v17, v39, v50, v72, v31, MaxY, v33, v37);

        v38 = v75;
        sub_29E2B77EC(v17, type metadata accessor for CycleChartDay);
        sub_29E2B77EC(v38, v73);
        CGContextRestoreGState(v51);
        sub_29DE93B3C(v79);
        v36 += 40;
        v30 = v49 - 1;
      }

      while (v30);
    }
  }

  else
  {
    sub_29E2C04B4();
    v52 = v69;
    v53 = sub_29E2C0504();
    v54 = sub_29E2C3A14();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v76[0] = v56;
      *v55 = 136446210;
      v77 = sub_29E2C4AE4();
      v78 = v57;
      MEMORY[0x29ED7FCC0](58, 0xE100000000000000);
      swift_beginAccess();
      v58 = sub_29E2C3164();
      swift_endAccess();
      v79[0] = v58;
      v59 = sub_29E2C48D4();
      MEMORY[0x29ED7FCC0](v59);

      v60 = sub_29DFAA104(v77, v78, v76);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_29DE74000, v53, v54, "[%{public}s] Skipping drawing with no current context", v55, 0xCu);
      sub_29DE93B3C(v56);
      MEMORY[0x29ED82140](v56, -1, -1);
      MEMORY[0x29ED82140](v55, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_29E2B7504()
{
  sub_29E2B77EC(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleChartDayView_cycle, type metadata accessor for CycleChartCycle);
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleChartDayView_dayIndex;
  v2 = sub_29E2C31A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29E2B77EC(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleChartDayView_day, type metadata accessor for CycleChartDay);
}

uint64_t type metadata accessor for CycleChartDayView()
{
  result = qword_2A1820F28;
  if (!qword_2A1820F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E2B76DC()
{
  result = type metadata accessor for CycleChartCycle(319);
  if (v1 <= 0x3F)
  {
    result = sub_29E2C31A4();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for CycleChartDay();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_29E2B77EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E2B784C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E2B78B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleChartDay();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E2B7918(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29E2B7960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[0] = a4;
  v26 = a1;
  v24[1] = swift_getObjectType();
  v8 = type metadata accessor for CycleChartDay();
  MEMORY[0x2A1C7C4A8](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for CycleChartCycle;
  sub_29E2B784C(a1, &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleChartDayView_cycle], type metadata accessor for CycleChartCycle);
  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleChartDayView_dayIndex;
  v12 = sub_29E2C31A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(&v4[v11], a2, v12);
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleChartDayView_dayProvider] = a3;
  v15 = *(a3 + 16);
  v14(v10, a2, v12);

  v16 = [v15 dayViewModelAtIndex_];
  *&v10[*(type metadata accessor for CycleDay() + 20)] = v16;
  sub_29E2C2CB4();
  sub_29E27701C(v10, &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleChartDayView_day]);
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows] = v24[0];
  v17 = type metadata accessor for CycleChart();
  v27.receiver = v4;
  v27.super_class = v17;
  v18 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29DE9408C(0, &qword_2A181ADA0);
  v19 = v18;
  sub_29E2C3D24();
  sub_29E2C4034();

  swift_unknownObjectRelease();

  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 clearColor];
  [v21 setBackgroundColor_];

  (*(v13 + 8))(a2, v12);
  sub_29E2B77EC(v26, v25);
  return v21;
}

char *sub_29E2B7C50(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_29E18FD60(0);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v38 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E18FDF8();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v41 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2B9AF4(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_headerView;
  *&v2[v14] = [objc_allocWithZone(type metadata accessor for CycleChartsHeaderView()) init];
  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_impactFeedbackGenerator;
  *&v2[v15] = [objc_allocWithZone(MEMORY[0x29EDC7AE0]) initWithStyle_];
  v16 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_lastCollectionViewBordersFrame];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_lastFooterBordersHeight] = 0;
  if (MEMORY[0x29EDCA190] >> 62 && sub_29E2C4484())
  {
    v17 = sub_29DE92AF0(MEMORY[0x29EDCA190]);
  }

  else
  {
    v17 = MEMORY[0x29EDCA1A0];
  }

  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_subscriptions] = v17;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_model] = a1;
  type metadata accessor for CycleChartsCollectionView();

  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_collectionView] = sub_29E18E6AC(v18);
  v44.receiver = v2;
  v44.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v44, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v20 = *&v19[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_headerView];
  v21 = v19;
  [v21 addSubview_];
  v37[1] = a1;
  v22 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_collectionView;
  [v21 addSubview_];
  sub_29E2B83FC();
  v23 = [objc_opt_self() systemBackgroundColor];
  [v21 setBackgroundColor_];

  [*&v21[v22] setDelegate_];
  sub_29DE99B54();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD3B0;
  v37[0] = ObjectType;
  swift_beginAccess();
  v25 = MEMORY[0x29EDB8B00];
  sub_29E2B99E8(0, &qword_2A1818D80, sub_29DF0F0A0, MEMORY[0x29EDB8B00]);

  sub_29E2C11E4();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29E2B9AAC(&unk_2A1820FB0, sub_29E2B9AF4);
  v26 = sub_29E2C1384();

  (*(v11 + 8))(v13, v10);
  *(inited + 32) = v26;
  swift_beginAccess();
  sub_29E2B99E8(0, &qword_2A1818D88, sub_29DF0F138, v25);

  v27 = v38;
  sub_29E2C11E4();
  swift_endAccess();

  type metadata accessor for CycleChartsModel();
  sub_29E2B9AAC(&qword_2A1820FA0, sub_29E18FD60);
  v28 = v40;
  v29 = v41;
  sub_29E2C1284();
  (*(v39 + 8))(v27, v28);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29E2B9AAC(&qword_2A1820FC0, sub_29E18FDF8);
  v30 = v43;
  v31 = sub_29E2C1384();

  (*(v42 + 8))(v29, v30);
  *(inited + 40) = v31;
  v32 = sub_29DE92AF0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  *&v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_subscriptions] = v32;

  sub_29DE9408C(0, &qword_2A181ADA0);
  sub_29E2C3D24();
  sub_29E2C4034();
  swift_unknownObjectRelease();

  sub_29E2B99E8(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_29E2CAB20;
  v34 = sub_29E2C0B54();
  v35 = MEMORY[0x29EDC7870];
  *(v33 + 32) = v34;
  *(v33 + 40) = v35;
  sub_29E2C4034();

  swift_unknownObjectRelease();

  return v21;
}

id sub_29E2B83FC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_headerView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_collectionView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 layoutMargins];
  [v1 setLayoutMargins_];
  v38 = objc_opt_self();
  sub_29DE99B54();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E2D48B0;
  v5 = [v2 topAnchor];
  v6 = [v1 layoutMarginsGuide];
  v7 = [v6 &selRef_hkmc_menstruationColor];

  v8 = [v5 constraintEqualToAnchor_];
  *(v4 + 32) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [v1 layoutMarginsGuide];
  v11 = [v10 &selRef_bounds + 4];

  v12 = [v9 &selRef:v11 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v4 + 40) = v12;
  v13 = [v2 leadingAnchor];
  v14 = [v1 &off_29F3632A8 + 1];
  v15 = [v14 leadingAnchor];

  v16 = [v13 &selRef:v15 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v4 + 48) = v16;
  v17 = [v3 topAnchor];
  v18 = [v2 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:9.0];

  *(v4 + 56) = v19;
  v20 = [v3 trailingAnchor];
  v21 = [v1 &off_29F3632A8 + 1];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v4 + 64) = v23;
  v24 = [v3 leadingAnchor];
  v25 = [v1 &off_29F3632A8 + 1];
  v26 = [v25 leadingAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v4 + 72) = v27;
  v28 = [v1 &off_29F3632A8 + 1];
  v29 = [v28 bottomAnchor];

  v30 = [v3 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v4 + 80) = v31;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v32 = sub_29E2C3604();

  [v38 activateConstraints_];

  LODWORD(v33) = 1148846080;
  [v2 setContentHuggingPriority:1 forAxis:v33];
  LODWORD(v34) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v34];
  LODWORD(v35) = 1132068864;
  [v3 setContentHuggingPriority:1 forAxis:v35];
  LODWORD(v36) = 1132068864;

  return [v3 setContentCompressionResistancePriority:1 forAxis:v36];
}

void sub_29E2B88DC(uint64_t a1)
{
  sub_29DF0F0A0(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_headerView);
    v7 = Strong;
    sub_29E2B9B38(a1, v4, sub_29DF0F0A0);
    v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_activeCycle;
    swift_beginAccess();
    sub_29E2B9BA0(v4, v6 + v8);
    swift_endAccess();
    sub_29DFE1E3C();
    sub_29E2B9A4C(v4, sub_29DF0F0A0);
  }
}

void sub_29E2B8A2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_29DF5A018();
    v3 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_lastFooterBordersHeight];
    *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_lastFooterBordersHeight] = v2;
    if (v3 != v2)
    {
      [v1 setNeedsDisplay];
    }
  }
}

void sub_29E2B8AA8()
{
  v1 = v0;
  v2 = type metadata accessor for CycleChartCycle(0);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DF0F0A0(0);
  *&v7 = MEMORY[0x2A1C7C4A8](v6 - 8).n128_u64[0];
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_model];
  v11 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_collectionView];
  v12 = [v11 traitCollection];
  v13 = [v12 horizontalSizeClass];

  v14 = *(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_horizontalSizeClass);
  *(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_horizontalSizeClass) = v13;
  if (v14 != v13)
  {
    sub_29DF0D08C();
  }

  sub_29DF0D08C();
  [v1 setNeedsLayout];
  v15 = [v11 collectionViewLayout];
  type metadata accessor for CycleChartsCollectionViewLayout();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29E2C1214();

    if ((*(v3 + 48))(v9, 1, v2))
    {
      sub_29E2B9A4C(v9, sub_29DF0F0A0);
      v18 = 0;
    }

    else
    {
      sub_29E2B9B38(v9, v5, type metadata accessor for CycleChartCycle);
      sub_29E2B9A4C(v9, sub_29DF0F0A0);
      v18 = *v5;
      sub_29E2B9A4C(v5, type metadata accessor for CycleChartCycle);
    }

    v19 = &v17[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_pendingScrollToSectionIndex];
    *v19 = v18;
    v19[8] = 0;
    [v17 invalidateLayout];
  }

  else
  {

    __break(1u);
  }
}

void sub_29E2B8D98()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_collectionView];
  [v1 frame];
  v15.origin.x = v2;
  v15.origin.y = v3;
  v15.size.width = v4;
  v15.size.height = v5;
  v13 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_lastCollectionViewBordersFrame];
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_lastCollectionViewBordersFrame] = v15;
  if (!CGRectEqualToRect(v13, v15))
  {
    [v0 setNeedsDisplay];
  }

  v6 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_model];
  [v1 bounds];
  Width = CGRectGetWidth(v14);
  v8 = *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_preferredMaxLayoutWidth);
  *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_preferredMaxLayoutWidth) = Width;
  if (v8 != Width)
  {
    sub_29DF0D08C();
  }

  v9 = [v1 traitCollection];
  v10 = [v9 horizontalSizeClass];

  v11 = *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_horizontalSizeClass);
  *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_horizontalSizeClass) = v10;
  if (v11 != v10)
  {
    sub_29DF0D08C();
  }
}

CGContext *sub_29E2B8F18(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_29E2C0514();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v5;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, sel_drawRect_, a1, a2, a3, a4);
  sub_29E2C04B4();
  v15 = sub_29E2C0504();
  v16 = sub_29E2C3A04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v47 = v18;
    *v17 = 136446210;
    v19 = sub_29E2C4AE4();
    v21 = sub_29DFAA104(v19, v20, &v47);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_29DE74000, v15, v16, "[%{public}s] Drawing", v17, 0xCu);
    sub_29DE93B3C(v18);
    MEMORY[0x29ED82140](v18, -1, -1);
    MEMORY[0x29ED82140](v17, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  result = UIGraphicsGetCurrentContext();
  if (result)
  {
    v23 = result;
    v24 = *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_lastCollectionViewBordersFrame];
    v25 = *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_lastCollectionViewBordersFrame + 8];
    v26 = *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_lastCollectionViewBordersFrame + 16];
    v27 = *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_lastCollectionViewBordersFrame + 24];
    v28 = [v5 traitCollection];
    [v28 displayScale];
    v30 = v29;

    if (v30 > 1.0)
    {
      v31 = v30;
    }

    else
    {
      v31 = 1.0;
    }

    v32 = 1.0 / v31;
    v33 = 1.0 / v31 * 0.5;
    v34 = objc_opt_self();
    v35 = [v34 systemGrayColor];
    v36 = [v5 traitCollection];
    v37 = [v35 resolvedColorWithTraitCollection_];

    v38 = [v37 CGColor];
    CGContextSetStrokeColorWithColor(v23, v38);

    v39 = [v34 systemBackgroundColor];
    v40 = [v39 CGColor];

    CGContextSetFillColorWithColor(v23, v40);
    CGContextSetLineWidth(v23, v32);
    v49.origin.x = v24;
    v49.origin.y = v25;
    v49.size.width = v26;
    v49.size.height = v27;
    v41 = CGRectGetMinX(v49) - v33;
    v50.origin.x = v24;
    v50.origin.y = v25;
    v50.size.width = v26;
    v50.size.height = v27;
    v42 = v33 + CGRectGetMaxX(v50);
    v51.origin.x = v24;
    v51.origin.y = v25;
    v51.size.width = v26;
    v51.size.height = v27;
    v43 = CGRectGetMinY(v51) - v33;
    v52.origin.x = v24;
    v52.origin.y = v25;
    v52.size.width = v26;
    v52.size.height = v27;
    v44 = v33 + CGRectGetMaxY(v52) - *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_lastFooterBordersHeight];
    sub_29E2B99E8(0, &qword_2A1820F80, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_29E2CEBE0;
    *(v45 + 32) = v41;
    *(v45 + 40) = v44;
    *(v45 + 48) = v41;
    *(v45 + 56) = v43;
    *(v45 + 64) = v41;
    *(v45 + 72) = v43;
    *(v45 + 80) = v42;
    *(v45 + 88) = v43;
    *(v45 + 96) = v42;
    *(v45 + 104) = v43;
    *(v45 + 112) = v42;
    *(v45 + 120) = v44;
    sub_29E2C38F4();
  }

  return result;
}

void sub_29E2B9548()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_headerView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for CycleChartsHeaderView()) init];
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_impactFeedbackGenerator;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x29EDC7AE0]) initWithStyle_];
  v3 = (v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_lastCollectionViewBordersFrame);
  *v3 = 0u;
  v3[1] = 0u;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_lastFooterBordersHeight) = 0;
  if (MEMORY[0x29EDCA190] >> 62 && sub_29E2C4484())
  {
    v4 = sub_29DE92AF0(MEMORY[0x29EDCA190]);
  }

  else
  {
    v4 = MEMORY[0x29EDCA1A0];
  }

  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_subscriptions) = v4;
  sub_29E2C4724();
  __break(1u);
}

void sub_29E2B9658()
{
  sub_29DEDB904();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = v23 - v5;
  v7 = type metadata accessor for CycleChartCycle(0);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v25 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DF0F0A0(0);
  *&v11 = MEMORY[0x2A1C7C4A8](v10 - 8).n128_u64[0];
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0;
  v15 = [*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_collectionView) collectionViewLayout];
  type metadata accessor for CycleChartsCollectionViewLayout();
  if (swift_dynamicCastClass())
  {
    v16 = sub_29DF76928();
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      v24 = v16;
      v19 = *(v14 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_model);
      swift_getKeyPath();
      swift_getKeyPath();
      v23[1] = v19;
      sub_29E2C1214();

      if (!(*(v8 + 48))(v13, 1, v7))
      {
        v21 = v25;
        sub_29E2B9B38(v13, v25, type metadata accessor for CycleChartCycle);
        sub_29E2B9A4C(v13, sub_29DF0F0A0);
        v22 = *v21;
        sub_29E2B9A4C(v21, type metadata accessor for CycleChartCycle);
        v20 = v24;
        if (v22 == v24)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      sub_29E2B9A4C(v13, sub_29DF0F0A0);
      v20 = v24;
      if (v24)
      {
LABEL_5:
        sub_29DF13618(v20);
        [*(v14 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CycleChartsView_impactFeedbackGenerator) impactOccurred];
      }
    }

LABEL_6:

    sub_29E18AFCC(v6);
    sub_29E2B9B38(v6, v3, sub_29DEDB904);
    sub_29DF5BB44(v3);
    sub_29E2B9B38(v6, v3, sub_29DEDB904);
    sub_29E2C2C84();
    sub_29E2B9A4C(v6, sub_29DEDB904);

    return;
  }

  __break(1u);
}

void sub_29E2B99E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E2B9A4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E2B9AAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E2B9B38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E2B9BA0(uint64_t a1, uint64_t a2)
{
  sub_29DF0F0A0(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29E2B9C04(double *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  sub_29DF8944C(a1, v30);
  sub_29DF8944C(a1, v30);
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A34();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v28 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    *&v30[0] = v12;
    *v11 = 136446466;
    v13 = sub_29E2C4AE4();
    v15 = sub_29DFAA104(v13, v14, v30);
    v27 = v4;
    v16 = v15;

    *(v11 + 4) = v16;
    *(v11 + 12) = 1024;
    sub_29DF8950C(a1);
    *(v11 + 14) = *a1 & 1;
    sub_29DF8950C(a1);
    _os_log_impl(&dword_29DE74000, v8, v9, "[%{public}s] Will set new configuration with regularHorizontalSizeClass %{BOOL}d", v11, 0x12u);
    sub_29DE93B3C(v12);
    MEMORY[0x29ED82140](v12, -1, -1);
    v17 = v11;
    v2 = v28;
    MEMORY[0x29ED82140](v17, -1, -1);

    (*(v5 + 8))(v7, v27);
  }

  else
  {
    sub_29DF8950C(a1);
    sub_29DF8950C(a1);

    (*(v5 + 8))(v7, v4);
  }

  v18 = [objc_allocWithZone(type metadata accessor for CycleTimelineCollectionViewLayoutInvalidationContext()) init];
  v19 = v18;
  v20 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config];
  if (v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config] != (*a1 & 1))
  {
    v18[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin52CycleTimelineCollectionViewLayoutInvalidationContext_invalidateForHorizontalSizeChanges] = 1;
  }

  v21 = v20[7];
  v30[6] = v20[6];
  v30[7] = v21;
  v22 = v20[9];
  v30[8] = v20[8];
  v30[9] = v22;
  v23 = v20[3];
  v30[2] = v20[2];
  v30[3] = v23;
  v24 = v20[5];
  v30[4] = v20[4];
  v30[5] = v24;
  v25 = v20[1];
  v30[0] = *v20;
  v30[1] = v25;
  sub_29DF8944C(v30, &v29);
  v26 = sub_29E1A9D00(a1, v30);
  sub_29DF8950C(v30);
  if (!v26)
  {
    v19[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin52CycleTimelineCollectionViewLayoutInvalidationContext_invalidateItemHeight] = 1;
  }

  [v2 invalidateLayoutWithContext_];
}

void sub_29E2BA050()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v71 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CycleTimelineCollectionViewLayout();
  v74.receiver = v0;
  v74.super_class = v5;
  objc_msgSendSuper2(&v74, sel_prepareLayout);
  v6 = [v0 collectionView];
  if (v6)
  {
    v7 = v6;
    [v7 bounds];
    v9 = v8;
    v10 = &v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_itemHeight];
    if (v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_itemHeight + 8] != 1)
    {
      goto LABEL_8;
    }

    v11 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 112];
    v81 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 96];
    v82 = v11;
    v12 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 144];
    v83 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 128];
    v84 = v12;
    v13 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 48];
    v77 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 32];
    v78 = v13;
    v14 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 80];
    v79 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 64];
    v80 = v14;
    v15 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 16];
    v75 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config];
    v76 = v15;
    if ((v75 & 1) == 0)
    {
      sub_29DF8944C(&v75, v73);
      if (qword_2A1817030 != -1)
      {
        goto LABEL_25;
      }

      goto LABEL_6;
    }

    v16 = v7;
    v17 = *MEMORY[0x29EDC80F8];
    sub_29DF8944C(&v75, v73);
    while (1)
    {
      v18 = v17;
      v19 = *&v82;
      v20 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];

      v21 = *(&v82 + 1);
      v22 = sub_29E1A9AC4();
      [v20 scaledValueForValue:v22 compatibleWithTraitCollection:v21];
      v24 = v23;

      sub_29DF8950C(&v75);
      *v10 = v19 + v24 + *&v76 + *(&v77 + 1) + *(&v76 + 1);
      *(v10 + 8) = 0;
      v7 = v16;
LABEL_8:
      v25 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_contentSize];
      if (v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_contentSize + 16] != 1)
      {
        break;
      }

      v26 = [v7 numberOfItemsInSection_];
      if (!__OFSUB__(v26, 1))
      {
        v27 = *v10;
        if (*(v10 + 8))
        {
          v27 = 0.0;
        }

        *v25 = (*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 32] + *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 8]) * (v26 - 1) + *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 32] + *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 64] + 2.0;
        v25[1] = v27;
        *(v25 + 16) = 0;
        break;
      }

      __break(1u);
LABEL_25:
      swift_once();
LABEL_6:
      v16 = v7;
      v17 = qword_2A1841238;
    }

    v70 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config];
    v28 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_zoomAreaOffset];
    if (v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_zoomAreaOffset + 16] == 1)
    {
      *v28 = (v9 - (v70[4] + v70[8] + 2.0)) * 0.5;
      *(v28 + 1) = 0;
      v28[16] = 0;
      sub_29E2C04B4();
      v69 = v7;
      v29 = v4;
      v30 = v7;
      v31 = v1;
      v68 = v29;
      v32 = sub_29E2C0504();
      v33 = sub_29E2C3A04();

      v67 = v33;
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v66 = v2;
        v35 = v34;
        v65 = swift_slowAlloc();
        v72 = v65;
        *v35 = 136446466;
        v36 = [v31 description];
        v37 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v39 = v38;

        v40 = sub_29DFAA104(v37, v39, &v72);

        *(v35 + 4) = v40;
        *(v35 + 12) = 2080;
        [v30 contentInset];
        v73[0] = v41;
        v73[1] = v42;
        v73[2] = v43;
        v73[3] = v44;
        type metadata accessor for UIEdgeInsets(0);
        v45 = sub_29E2C3424();
        v47 = sub_29DFAA104(v45, v46, &v72);

        *(v35 + 14) = v47;
        _os_log_impl(&dword_29DE74000, v32, v67, "[%{public}s] New collection view contentInset: %s", v35, 0x16u);
        v48 = v65;
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v48, -1, -1);
        MEMORY[0x29ED82140](v35, -1, -1);

        (*(v71 + 8))(v68, v66);
      }

      else
      {

        (*(v71 + 8))(v68, v2);
      }

      v7 = v69;
    }

    v49 = v7;
    [v49 contentOffset];
    v52 = 0uLL;
    if (v28[16] & 1) != 0 || (v10[1])
    {
      v53 = 0;
      v54 = 0.0;
      v55 = 1;
    }

    else
    {
      v55 = 0;
      v54 = *v10;
      v50.f64[1] = v51;
      v52 = vaddq_f64(v50, *v28);
      v53 = *(v70 + 4);
    }

    v56 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_zoomArea];
    *v56 = v52;
    *(v56 + 2) = v53;
    *(v56 + 3) = v54;
    v56[32] = v55;
    [v49 bounds];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;

    v85.origin.x = v58;
    v85.origin.y = v60;
    v85.size.width = v62;
    v85.size.height = v64;
    CGRectGetWidth(v85);
    [v49 contentInset];
    [v49 setContentInset_];
  }
}

uint64_t sub_29E2BA69C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_29E2BCFB4();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x2A1C7C4A8](v10).n128_u64[0];
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v4 collectionView];
  v16 = MEMORY[0x29EDCA190];
  if (v15)
  {
    v17 = v15;
    v18 = sub_29E2BA8FC(v15, a1, a2, a3, a4);
    v34 = v16;
    v19 = v18[2];
    if (v19)
    {
      v30 = v17;
      v31 = v18;
      v20 = v11 + 16;
      v33 = *(v11 + 16);
      v21 = v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v22 = *(v11 + 72);
      v23 = (v20 - 8);
      v32 = MEMORY[0x29EDCA190];
      v33(v14, v21, v10);
      while (1)
      {
        v24 = sub_29E2BCF24();
        v25 = v5;
        v26 = [v5 layoutAttributesForItemAtIndexPath_];

        v27 = (*v23)(v14, v10);
        if (v26)
        {
          MEMORY[0x29ED7FDC0](v27);
          if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v32 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_29E2C3644();
          }

          sub_29E2C3674();
          v32 = v34;
        }

        v21 += v22;
        --v19;
        v5 = v25;
        if (!v19)
        {
          break;
        }

        v33(v14, v21, v10);
      }

      return v32;
    }

    else
    {

      return MEMORY[0x29EDCA190];
    }
  }

  return v16;
}

void *sub_29E2BA8FC(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_29E2BCFB4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v25 - v15;
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  MinX = CGRectGetMinX(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectGetMinY(v29);
  v26 = a1;
  sub_29E2BB4E0(a1, MinX);
  v18 = MEMORY[0x29EDCA190];
  while (1)
  {
    sub_29E2BB724(v16, &v27);
    v19 = CGRectGetMinX(v27);
    v30.origin.x = a2;
    v30.origin.y = a3;
    v30.size.width = a4;
    v30.size.height = a5;
    if (v19 > CGRectGetMaxX(v30) || (v20 = sub_29E2BCF94(), v20 >= [v26 numberOfItemsInSection_]))
    {
      (*(v11 + 8))(v16, v10);
      return v18;
    }

    (*(v11 + 16))(v13, v16, v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_29E145714(0, v18[2] + 1, 1, v18);
    }

    v22 = v18[2];
    v21 = v18[3];
    if (v22 >= v21 >> 1)
    {
      v18 = sub_29E145714(v21 > 1, v22 + 1, 1, v18);
    }

    v18[2] = v22 + 1;
    (*(v11 + 32))(v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22, v13, v10);
    result = sub_29E2BCF84();
    if (__OFADD__(*v24, 1))
    {
      break;
    }

    ++*v24;
    (result)(&v27, 0);
  }

  __break(1u);
  return result;
}

char *sub_29E2BAC68(uint64_t a1)
{
  v3 = sub_29E2BCFB4();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x2A1C7C4A8](v3).n128_u64[0];
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [v1 collectionView];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_computedAttributes;
  swift_beginAccess();
  v11 = *&v1[v10];
  if (!*(v11 + 16))
  {
LABEL_7:
    v14 = sub_29E2BAE20(v9, a1);
    (*(v4 + 16))(v7, a1, v3);
    swift_beginAccess();
    v15 = v14;
    sub_29DF32238(v14, v7);
    swift_endAccess();

    return v14;
  }

  sub_29E2BF404();
  v12 = sub_29E18447C(a1);
  if ((v13 & 1) == 0)
  {

    goto LABEL_7;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  return v14;
}

char *sub_29E2BAE20(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_29E2BCF94();
  v7 = [a1 numberOfItemsInSection_];
  result = 0;
  if (v6 < v7)
  {
    type metadata accessor for CycleTimelineCollectionViewLayoutAttributes();
    v9 = sub_29E2BCF24();
    v10 = [swift_getObjCClassFromMetadata() layoutAttributesForCellWithIndexPath_];

    sub_29E2BB724(a2, &v27);
    v11 = v29;
    v12 = BYTE8(v29);
    [v10 setFrame_];
    v13 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 80);
    v26[4] = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 64);
    v26[5] = v13;
    v14 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 48);
    v26[2] = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 32);
    v26[3] = v14;
    v15 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 144);
    v26[8] = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 128);
    v26[9] = v15;
    v16 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 112);
    v26[6] = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 96);
    v26[7] = v16;
    v17 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 16);
    v26[0] = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config);
    v26[1] = v17;
    v18 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 16];
    v27 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration];
    v28 = v18;
    v19 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 80];
    v21 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 32];
    v20 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 48];
    v31 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 64];
    v32 = v19;
    v29 = v21;
    v30 = v20;
    v22 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 144];
    v24 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 96];
    v23 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 112];
    v35 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 128];
    v36 = v22;
    v33 = v24;
    v34 = v23;
    memmove(&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration], (v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config), 0xA0uLL);
    sub_29DF8944C(v26, &v25);
    sub_29DF8950C(&v27);
    result = v10;
    if ((v12 & 1) == 0)
    {
      *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_zoomLevel] = v11;
    }
  }

  return result;
}

uint64_t sub_29E2BB0B0(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for CycleTimelineCollectionViewLayout();
  objc_msgSendSuper2(&v16, sel_invalidateLayoutWithContext_, a1);
  type metadata accessor for CycleTimelineCollectionViewLayoutInvalidationContext();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = result;
    if (*(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin52CycleTimelineCollectionViewLayoutInvalidationContext_invalidateForHorizontalSizeChanges) == 1)
    {
      v5 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_itemHeight];
      *v5 = 0;
      v5[8] = 1;
      v6 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_contentSize];
      *v6 = 0;
      *(v6 + 1) = 0;
      v6[16] = 1;
      v7 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_zoomArea];
      *v7 = 0u;
      *(v7 + 1) = 0u;
      v7[32] = 1;
      v8 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_zoomAreaOffset];
      *v8 = 0;
      *(v8 + 1) = 0;
      v8[16] = 1;
    }

    v9 = a1;
    if ([v4 invalidateEverything])
    {
      v10 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_zoomArea];
      *v10 = 0u;
      *(v10 + 1) = 0u;
      v10[32] = 1;
    }

    if (([v4 invalidateEverything] & 1) != 0 || objc_msgSend(v4, sel_invalidateDataSourceCounts))
    {
      v11 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_contentSize];
      *v11 = 0;
      *(v11 + 1) = 0;
      v11[16] = 1;
    }

    if (([v4 invalidateEverything] & 1) != 0 || *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin52CycleTimelineCollectionViewLayoutInvalidationContext_invalidateItemHeight) == 1)
    {
      v12 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_itemHeight];
      *v12 = 0;
      v12[8] = 1;
    }

    if (([v4 invalidateEverything] & 1) != 0 || *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin52CycleTimelineCollectionViewLayoutInvalidationContext_invalidateZoomArea) == 1)
    {
      v13 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_zoomAreaOffset];
      *v13 = 0;
      *(v13 + 1) = 0;
      v13[16] = 1;
    }

    v14 = sub_29E185AC8(MEMORY[0x29EDCA190]);

    v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_computedAttributes;
    swift_beginAccess();
    *&v1[v15] = v14;
  }

  return result;
}

_BYTE *sub_29E2BB320(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = [objc_allocWithZone(type metadata accessor for CycleTimelineCollectionViewLayoutInvalidationContext()) init];
  v10 = [v4 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 bounds];
    if (v14 == a3 && v15 == a4)
    {
    }

    else
    {
      rect = v12;
      v17 = v13;
      v18 = v14;
      v19 = v15;
      Height = CGRectGetHeight(*&v12);
      v25.origin.x = a1;
      v25.origin.y = a2;
      v25.size.width = a3;
      v25.size.height = a4;
      if (Height != CGRectGetHeight(v25))
      {
        v9[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin52CycleTimelineCollectionViewLayoutInvalidationContext_invalidateItemHeight] = 1;
      }

      v26.origin.x = rect;
      v26.origin.y = v17;
      v26.size.width = v18;
      v26.size.height = v19;
      Width = CGRectGetWidth(v26);
      v27.origin.x = a1;
      v27.origin.y = a2;
      v27.size.width = a3;
      v27.size.height = a4;
      v22 = CGRectGetWidth(v27);

      if (Width != v22)
      {
        v9[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin52CycleTimelineCollectionViewLayoutInvalidationContext_invalidateZoomArea] = 1;
      }
    }
  }

  return v9;
}

void sub_29E2BB4E0(void *a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 8) + *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 32);
  if (v3 == 0.0)
  {
    goto LABEL_6;
  }

  v4 = floor(a2 / v3);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v4 > -9.22337204e18)
  {
    if (v4 < 9.22337204e18)
    {
      if (!__OFSUB__([a1 numberOfItemsInSection_], 1))
      {
LABEL_6:

LABEL_13:
        JUMPOUT(0x29ED79740);
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __break(1u);
  goto LABEL_11;
}

id sub_29E2BB658()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleTimelineCollectionViewLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E2BB724(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config);
  v11 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 8);
  v12 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 32);
  v13 = sub_29E2BCF94();
  v14 = (v11 + v12) * v13;
  v15 = v10[4];
  if (*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_itemHeight + 8))
  {
    v16 = 0.0;
  }

  else
  {
    v16 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_itemHeight);
  }

  v17 = (v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_zoomArea);
  if (*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_zoomArea + 32))
  {
    v18 = 0.0;
    v19 = 1;
LABEL_18:
    *a2 = v14;
    *(a2 + 8) = 0;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
    *(a2 + 32) = v18;
    *(a2 + 40) = v19;
    return;
  }

  v21 = v17[2];
  v20 = v17[3];
  v23 = *v17;
  v22 = v17[1];
  v24 = 0;
  v48.origin.x = *v17;
  v48.origin.y = v22;
  v48.size.width = v21;
  v48.size.height = v20;
  v25 = (v11 + v12) * v13;
  v43 = v16;
  v44 = v15;
  v49 = CGRectIntersection(v48, *(&v15 - 2));
  x = v49.origin.x;
  y = v49.origin.y;
  height = v49.size.height;
  width = v49.size.width;
  if (CGRectIsNull(v49))
  {
    v50.origin.x = v23;
    v50.origin.y = v22;
    v50.size.width = v21;
    v50.size.height = v20;
    if (CGRectGetMaxX(v50) <= v14)
    {
      v14 = v14 + v10[8] + 2.0;
      *&v18 = 1;
    }

    else
    {
      v18 = 0.0;
    }

    v19 = 1;
    v15 = v44;
LABEL_16:
    v16 = v43;
    goto LABEL_18;
  }

  v41 = v14;
  v51.origin.x = v23;
  v51.origin.y = v22;
  v51.size.width = v21;
  v51.size.height = v20;
  if (CGRectGetMinX(v51) >= x)
  {
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    v39 = CGRectGetWidth(v53);
    v19 = 0;
    v40 = v39 / v10[4];
    v16 = v43;
    v15 = v44 + v40 * (v10[8] + 2.0);
    v18 = v40;
    v14 = v41;
    goto LABEL_18;
  }

  (*(v7 + 16))(v9, a1, v6);
  v29 = sub_29E2BCF84();
  if (!__OFSUB__(*v30, 1))
  {
    --*v30;
    v29(&v45, 0);
    sub_29E2BB724(&v45, v9);
    v31 = v45.origin.x;
    v32 = v45.origin.y;
    v33 = v45.size.width;
    v34 = v45.size.height;
    v35 = v46;
    v36 = v47;
    v14 = CGRectGetMaxX(v45) + v10[1];
    v37 = v10[4] + v10[8] + 2.0;
    v52.origin.x = v31;
    v52.origin.y = v32;
    v52.size.width = v33;
    v52.size.height = v34;
    v38 = CGRectGetWidth(v52);
    (*(v7 + 8))(v9, v6);
    v19 = 0;
    v15 = v44 + v37 - v38;
    v18 = 1.0 - v35;
    if (v36)
    {
      v18 = 1.0;
    }

    goto LABEL_16;
  }

  __break(1u);
}

void sub_29E2BBA70()
{
  v1 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_itemHeight;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_contentSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v3 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_zoomAreaOffset;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_zoomArea;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_computedAttributes;
  *(v0 + v5) = sub_29E185AC8(MEMORY[0x29EDCA190]);
  sub_29E2C4724();
  __break(1u);
}

double sub_29E2BBB40(double a1)
{
  v3 = sub_29E2BCFB4();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x2A1C7C4A8](v3).n128_u64[0];
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 collectionView];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    Width = CGRectGetWidth(v20);
    sub_29E2BB4E0(v9, Width * 0.5 + a1);
    v11 = [v1 collectionView];
    if (v11)
    {
      v12 = v11;
      v13 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config];
      v14 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 8];
      v15 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 32];
      v16 = (v14 + v15) * sub_29E2BCF94() + (v13[4] + v13[8] + 2.0) * 0.5;
      [v12 bounds];
      v17 = CGRectGetWidth(v21);

      (*(v4 + 8))(v7, v3);
      return v16 - v17 * 0.5;
    }

    else
    {

      (*(v4 + 8))(v7, v3);
      return 0.0;
    }
  }

  return a1;
}

uint64_t sub_29E2BBD4C(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_2A1840998 == -1)
  {
    if (qword_2A18409A0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_29E2BC214();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_2A18409A0)
    {
      return _availability_version_check();
    }
  }

  if (qword_2A1840990 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_29E2BC22C();
    a3 = v10;
    a4 = v9;
    v8 = dword_2A1840980 < v11;
    if (dword_2A1840980 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_2A1840984 > a3)
      {
        return 1;
      }

      if (dword_2A1840984 >= a3)
      {
        return dword_2A1840988 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_2A1840980 < a2;
  if (dword_2A1840980 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_29E2BBEE0(uint64_t result)
{
  v29 = *MEMORY[0x29EDCA608];
  v1 = qword_2A18409A0;
  if (qword_2A18409A0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x2A1C7C4E8])
    {
      v1 = MEMORY[0x2A1C7C4E8];
      qword_2A18409A0 = MEMORY[0x2A1C7C4E8];
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
                          v14 = MEMORY[0x29ED818C0](v13);
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
                                          sscanf(v28, "%d.%d.%d", &dword_2A1840980, &dword_2A1840984, &dword_2A1840988);
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

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2A1C59AA8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2A1C59B50](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2A1C59B60](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2A1C59B98](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}