void sub_1001C724C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_1001C74A4()
{
  if (!qword_10190FD88)
  {
    type metadata accessor for PlaceSummaryImageViewModel(255);
    sub_1001C3C48(&qword_10190F480, type metadata accessor for PlaceSummaryImageViewModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10190FD88);
    }
  }
}

void sub_1001C7560()
{
  sub_1001C75FC(319, &qword_10190FDF8, &unk_10190FE00);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PlaceSummaryViewModelActionButtons.Button(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001C75FC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1000D6664(a3);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1001C7650()
{
  result = qword_10190FE30;
  if (!qword_10190FE30)
  {
    sub_1000D6664(&qword_10190FE38);
    sub_1001C3850();
    sub_1001C4808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190FE30);
  }

  return result;
}

unint64_t sub_1001C76DC()
{
  result = qword_10190FE40;
  if (!qword_10190FE40)
  {
    sub_1000D6664(&qword_10190F4A8);
    sub_1000414C8(&qword_10190FE48, &unk_10190FE50);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190FE40);
  }

  return result;
}

unint64_t sub_1001C7794()
{
  result = qword_10190FE60;
  if (!qword_10190FE60)
  {
    sub_1000D6664(&qword_10190FE68);
    sub_1000414C8(&qword_10190F4E0, &qword_10190F4C8);
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190FE60);
  }

  return result;
}

unint64_t sub_1001C787C()
{
  result = qword_10190FE70;
  if (!qword_10190FE70)
  {
    sub_1000D6664(&qword_10190FE78);
    sub_1001C58FC();
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190FE70);
  }

  return result;
}

unint64_t sub_1001C7938()
{
  result = qword_10190FE80;
  if (!qword_10190FE80)
  {
    sub_1000D6664(&qword_10190FE88);
    sub_1001C5A08();
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190FE80);
  }

  return result;
}

unint64_t sub_1001C7CBC()
{
  result = qword_10190FEE0;
  if (!qword_10190FEE0)
  {
    sub_1000D6664(&qword_10190FED8);
    sub_1001C7D74();
    sub_1000414C8(&unk_10190FEA0, &qword_10190C620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190FEE0);
  }

  return result;
}

unint64_t sub_1001C7D74()
{
  result = qword_10190FEE8;
  if (!qword_10190FEE8)
  {
    sub_1000D6664(&qword_10190FEF0);
    sub_1001C7E2C();
    sub_1000414C8(&unk_10190F550, &qword_10191E550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190FEE8);
  }

  return result;
}

unint64_t sub_1001C7E2C()
{
  result = qword_10190FEF8;
  if (!qword_10190FEF8)
  {
    sub_1000D6664(&qword_10190FF00);
    sub_1001C7EE4();
    sub_1000414C8(&qword_10190C628, &qword_10190FF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190FEF8);
  }

  return result;
}

unint64_t sub_1001C7EE4()
{
  result = qword_10190FF08;
  if (!qword_10190FF08)
  {
    sub_1000D6664(&unk_10190FF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190FF08);
  }

  return result;
}

unint64_t sub_1001C7F68()
{
  result = qword_10190FF28;
  if (!qword_10190FF28)
  {
    sub_1000D6664(&qword_10190FEC8);
    sub_1001C8020();
    sub_1000414C8(&qword_10190FF48, &qword_10190FF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190FF28);
  }

  return result;
}

unint64_t sub_1001C8020()
{
  result = qword_10190FF30;
  if (!qword_10190FF30)
  {
    sub_1000D6664(&qword_10190FED0);
    sub_1000414C8(&qword_10190FF38, &qword_10190FF40);
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190FF30);
  }

  return result;
}

unint64_t sub_1001C8108()
{
  result = qword_10190FF58;
  if (!qword_10190FF58)
  {
    sub_1000D6664(&qword_10190FEB0);
    sub_1001C7CBC();
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190FF58);
  }

  return result;
}

unint64_t sub_1001C81C4()
{
  result = qword_10190FF88;
  if (!qword_10190FF88)
  {
    sub_1000D6664(&qword_10190FF78);
    sub_1000414C8(&qword_10190FF90, &qword_10190FF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190FF88);
  }

  return result;
}

unint64_t sub_1001C827C()
{
  result = qword_10190FFA0;
  if (!qword_10190FFA0)
  {
    sub_1000D6664(&qword_10190FF80);
    sub_1001C8334();
    sub_1000414C8(&unk_10190F550, &qword_10191E550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190FFA0);
  }

  return result;
}

unint64_t sub_1001C8334()
{
  result = qword_10190FFA8;
  if (!qword_10190FFA8)
  {
    sub_1000D6664(&qword_10190FFB0);
    sub_1000414C8(&qword_10190C628, &qword_10190FF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190FFA8);
  }

  return result;
}

uint64_t sub_1001C83EC()
{
  v1 = (_s26MultipleCuratedCollectionsVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_1000CD8F4();

  v5 = v0 + v3 + v1[11];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0);

  v9 = v5 + *(v8 + 28);
  v10 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v7(v9, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1001C85C0()
{
  result = qword_101910000;
  if (!qword_101910000)
  {
    sub_1000D6664(&qword_10190FFD8);
    sub_1000414C8(&qword_101910008, &qword_101910010);
    sub_1000414C8(&qword_101910018, &qword_101910020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910000);
  }

  return result;
}

unint64_t sub_1001C86A4()
{
  result = qword_101910028;
  if (!qword_101910028)
  {
    sub_1000D6664(&qword_10190FFC8);
    sub_1000414C8(&unk_10190FFF0, &qword_10190FFE8);
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910028);
  }

  return result;
}

uint64_t sub_1001C87B8()
{
  v1 = (_s26MultipleCuratedCollectionsVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*v1 + 64);
  v4 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v17 = *(v5 + 64);
  v18 = v0;
  v7 = (v0 + v3);

  sub_1000CD8F4();

  v8 = v7 + v1[11];
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 8);
  v10(v8, v9);
  v11 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0);

  v12 = &v8[*(v11 + 28)];
  if (!(*(v5 + 48))(v12, 1, v4))
  {
    v10(v12, v9);
  }

  v13 = v2 | v6;
  v14 = (v3 + v16 + v6) & ~v6;
  v10((v18 + v14), v9);

  return _swift_deallocObject(v18, v14 + v17, v13 | 7);
}

uint64_t sub_1001C8A3C()
{
  v1 = *(_s26MultipleCuratedCollectionsVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0) - 8);
  return sub_1001ADB40(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_1001C8AFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1001C8B0C()
{
  v1 = (_s18SingleCuratedGuideVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_1000CD8F4();

  v5 = v0 + v3 + v1[10];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001C8C84()
{
  v1 = (_s18UserGeneratedGuideVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_1000CD8F4();

  v5 = v0 + v3 + v1[9];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1001C8E44()
{
  result = qword_101910188;
  if (!qword_101910188)
  {
    sub_1000D6664(&qword_101910180);
    sub_1001C8EFC();
    sub_1000414C8(&qword_1019101B0, &qword_1019101B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910188);
  }

  return result;
}

unint64_t sub_1001C8EFC()
{
  result = qword_101910190;
  if (!qword_101910190)
  {
    sub_1000D6664(&qword_101910198);
    sub_1001C8FB4();
    sub_1000414C8(&qword_10190C628, &qword_10190FF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910190);
  }

  return result;
}

unint64_t sub_1001C8FB4()
{
  result = qword_1019101A0;
  if (!qword_1019101A0)
  {
    sub_1000D6664(&unk_10191E540);
    sub_1000414C8(&unk_10190F550, &qword_10191E550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019101A0);
  }

  return result;
}

unint64_t sub_1001C906C()
{
  result = qword_1019101C8;
  if (!qword_1019101C8)
  {
    sub_1000D6664(&qword_1019101C0);
    sub_10014277C();
    sub_1000414C8(&qword_1019101B0, &qword_1019101B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019101C8);
  }

  return result;
}

unint64_t sub_1001C9124()
{
  result = qword_1019101E8;
  if (!qword_1019101E8)
  {
    sub_1000D6664(&qword_101910158);
    sub_1000414C8(&qword_1019101F0, &qword_1019101F8);
    sub_1000414C8(&qword_1019101B0, &qword_1019101B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019101E8);
  }

  return result;
}

unint64_t sub_1001C9208()
{
  result = qword_101910200;
  if (!qword_101910200)
  {
    sub_1000D6664(&qword_101910148);
    sub_1000414C8(&qword_101910208, &qword_101910210);
    sub_10013C338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910200);
  }

  return result;
}

unint64_t sub_1001C92C0()
{
  result = qword_101910268;
  if (!qword_101910268)
  {
    sub_1000D6664(&qword_1019100D0);
    sub_1001C9378();
    sub_1000414C8(&unk_10190FEA0, &qword_10190C620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910268);
  }

  return result;
}

unint64_t sub_1001C9378()
{
  result = qword_101910270;
  if (!qword_101910270)
  {
    sub_1000D6664(&unk_1019100D8);
    sub_1001C9430();
    sub_1000414C8(&unk_10190F550, &qword_10191E550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910270);
  }

  return result;
}

unint64_t sub_1001C9430()
{
  result = qword_101910278;
  if (!qword_101910278)
  {
    sub_1000D6664(&qword_101910280);
    sub_1000414C8(&qword_10190C628, &qword_10190FF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910278);
  }

  return result;
}

unint64_t sub_1001C94E8()
{
  result = qword_101910290;
  if (!qword_101910290)
  {
    sub_1000D6664(&qword_101910288);
    sub_1001C92C0();
    sub_1000414C8(&qword_1019101B0, &qword_1019101B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910290);
  }

  return result;
}

unint64_t sub_1001C95A0()
{
  result = qword_1019102D8;
  if (!qword_1019102D8)
  {
    sub_1000D6664(&qword_1019102B8);
    sub_1000D6664(&qword_1019102C8);
    sub_1000414C8(&qword_1019102D0, &qword_1019102C8);
    swift_getOpaqueTypeConformance2();
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019102D8);
  }

  return result;
}

unint64_t sub_1001C96CC()
{
  result = qword_1019102E0;
  if (!qword_1019102E0)
  {
    sub_1000D6664(&qword_1019102A0);
    sub_1000414C8(&qword_1019102D0, &qword_1019102C8);
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019102E0);
  }

  return result;
}

unint64_t sub_1001C97B4()
{
  result = qword_101910308;
  if (!qword_101910308)
  {
    sub_1000D6664(&qword_1019102E8);
    sub_1001C3C48(&qword_10190F150, _s5LabelVMa);
    sub_1000414C8(&unk_10190F550, &qword_10191E550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910308);
  }

  return result;
}

unint64_t sub_1001C989C()
{
  result = qword_101910310;
  if (!qword_101910310)
  {
    sub_1000D6664(&qword_101910300);
    sub_1000414C8(&qword_101910318, &qword_101910320);
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910310);
  }

  return result;
}

unint64_t sub_1001C9984()
{
  result = qword_101910328;
  if (!qword_101910328)
  {
    sub_1000D6664(&qword_1019102F0);
    sub_1001C97B4();
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910328);
  }

  return result;
}

uint64_t sub_1001C9A40()
{
  sub_1000CD8F4();

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_1001C9B04()
{
  result = qword_101910368;
  if (!qword_101910368)
  {
    sub_1000D6664(&qword_101910360);
    sub_10014277C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910368);
  }

  return result;
}

unint64_t sub_1001C9B90()
{
  result = qword_101910378;
  if (!qword_101910378)
  {
    sub_1000D6664(&qword_101910370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910378);
  }

  return result;
}

unint64_t sub_1001C9C14()
{
  result = qword_101910380;
  if (!qword_101910380)
  {
    sub_1000D6664(&qword_101910350);
    sub_1001C9B04();
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910380);
  }

  return result;
}

unint64_t sub_1001C9CD0()
{
  result = qword_101910390;
  if (!qword_101910390)
  {
    sub_1000D6664(&qword_101910388);
    sub_1001C3C48(&qword_10190F150, _s5LabelVMa);
    sub_1000414C8(&qword_1019101B0, &qword_1019101B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910390);
  }

  return result;
}

uint64_t sub_1001C9DB8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001C9E28(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1001C9EAC()
{
  result = qword_101910418;
  if (!qword_101910418)
  {
    sub_1000D6664(&qword_101910410);
    sub_1001C9F30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910418);
  }

  return result;
}

unint64_t sub_1001C9F30()
{
  result = qword_101910420;
  if (!qword_101910420)
  {
    sub_1000D6664(&qword_101910428);
    sub_1001C9FEC();
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910420);
  }

  return result;
}

unint64_t sub_1001C9FEC()
{
  result = qword_101910430;
  if (!qword_101910430)
  {
    sub_1000D6664(&qword_101910438);
    sub_1000414C8(&qword_101910440, &unk_101910448);
    sub_10013C338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910430);
  }

  return result;
}

unint64_t sub_1001CA0AC()
{
  result = qword_101910460;
  if (!qword_101910460)
  {
    sub_1000D6664(&qword_101910458);
    sub_1001CA138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910460);
  }

  return result;
}

unint64_t sub_1001CA138()
{
  result = qword_101910468;
  if (!qword_101910468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910468);
  }

  return result;
}

uint64_t sub_1001CA18C(uint64_t a1)
{

  sub_1000CD8F4();

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_1001CA1F8()
{
  result = qword_1019104A0;
  if (!qword_1019104A0)
  {
    sub_1000D6664(&qword_101910498);
    sub_1001CA284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019104A0);
  }

  return result;
}

unint64_t sub_1001CA284()
{
  result = qword_1019104A8;
  if (!qword_1019104A8)
  {
    sub_1000D6664(&qword_1019104B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019104A8);
  }

  return result;
}

unint64_t sub_1001CA314()
{
  result = qword_1019104E8;
  if (!qword_1019104E8)
  {
    sub_1000D6664(&qword_1019104E0);
    sub_1000414C8(&unk_10190FFF0, &qword_10190FFE8);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019104E8);
  }

  return result;
}

uint64_t sub_1001CA3CC()
{
  sub_1000CD8F4();

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1001CA44C()
{
  sub_1000CD8F4();

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_1001CA528()
{
  result = qword_101910530;
  if (!qword_101910530)
  {
    sub_1000D6664(&qword_101910528);
    sub_1000414C8(&qword_101910538, &qword_101910540);
    sub_1000414C8(&unk_10190F590, &qword_10191E590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910530);
  }

  return result;
}

unint64_t sub_1001CA60C()
{
  result = qword_1019105A8;
  if (!qword_1019105A8)
  {
    sub_1000D6664(&qword_1019105A0);
    sub_1001C8334();
    sub_1000414C8(&unk_1019105B0, &qword_10190C5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019105A8);
  }

  return result;
}

unint64_t sub_1001CA6E8()
{
  result = qword_1019105F8;
  if (!qword_1019105F8)
  {
    sub_1000D6664(&qword_1019105E8);
    sub_1001CA774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019105F8);
  }

  return result;
}

unint64_t sub_1001CA774()
{
  result = qword_101910600;
  if (!qword_101910600)
  {
    sub_1000D6664(&qword_101910608);
    sub_1001CA800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910600);
  }

  return result;
}

unint64_t sub_1001CA800()
{
  result = qword_101910610;
  if (!qword_101910610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910610);
  }

  return result;
}

unint64_t sub_1001CA854()
{
  result = qword_101910618;
  if (!qword_101910618)
  {
    sub_1000D6664(&qword_1019105E0);
    sub_1001CA8E0();
    sub_1001CAB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910618);
  }

  return result;
}

unint64_t sub_1001CA8E0()
{
  result = qword_101910620;
  if (!qword_101910620)
  {
    sub_1000D6664(&qword_1019105F0);
    sub_1001CA998();
    sub_1000414C8(&unk_10190F590, &qword_10191E590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910620);
  }

  return result;
}

unint64_t sub_1001CA998()
{
  result = qword_101910628;
  if (!qword_101910628)
  {
    sub_1000D6664(&qword_101910630);
    sub_1001CAA50();
    sub_1000414C8(&qword_10191D9D0, &qword_101910650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910628);
  }

  return result;
}

unint64_t sub_1001CAA50()
{
  result = qword_101910638;
  if (!qword_101910638)
  {
    sub_1000D6664(&unk_101910640);
    sub_1001CA284();
    sub_1000414C8(&unk_10190F550, &qword_10191E550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910638);
  }

  return result;
}

unint64_t sub_1001CAB08()
{
  result = qword_101910658;
  if (!qword_101910658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910658);
  }

  return result;
}

unint64_t sub_1001CAB5C()
{
  result = qword_101910668;
  if (!qword_101910668)
  {
    sub_1000D6664(&qword_101910660);
    sub_1001C4F6C();
    sub_1000414C8(&unk_10190F410, &qword_101915760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910668);
  }

  return result;
}

unint64_t sub_1001CAC20()
{
  result = qword_101910678;
  if (!qword_101910678)
  {
    sub_1000D6664(&qword_101910670);
    sub_1001CACAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910678);
  }

  return result;
}

unint64_t sub_1001CACAC()
{
  result = qword_101910680;
  if (!qword_101910680)
  {
    sub_1000D6664(&qword_101910688);
    sub_1001CAD38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910680);
  }

  return result;
}

unint64_t sub_1001CAD38()
{
  result = qword_101910690;
  if (!qword_101910690)
  {
    sub_1000D6664(&qword_101910698);
    sub_1001423F8();
    sub_1000414C8(&unk_10190F550, &qword_10191E550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910690);
  }

  return result;
}

uint64_t sub_1001CAE1C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_1001CAEA0()
{
  result = qword_1019106E0;
  if (!qword_1019106E0)
  {
    sub_1000D6664(&qword_1019106D8);
    sub_1000414C8(&qword_1019106E8, &qword_1019106F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019106E0);
  }

  return result;
}

unint64_t sub_1001CAF58()
{
  result = qword_101910700;
  if (!qword_101910700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910700);
  }

  return result;
}

uint64_t sub_1001CAFE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1001CB168(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

uint64_t sub_1001CB3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001CB474(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1001CB5F8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

unint64_t sub_1001CB868()
{
  result = qword_101910818;
  if (!qword_101910818)
  {
    sub_1000D6664(&qword_101910820);
    sub_10014277C();
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910818);
  }

  return result;
}

unint64_t sub_1001CB924()
{
  result = qword_101910828;
  if (!qword_101910828)
  {
    sub_1000D6664(&qword_101910830);
    sub_1001C7F68();
    sub_1001C8108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910828);
  }

  return result;
}

unint64_t sub_1001CB9B0()
{
  result = qword_101910838;
  if (!qword_101910838)
  {
    sub_1000D6664(&qword_101910840);
    sub_1001C85C0();
    sub_1001C86A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910838);
  }

  return result;
}

unint64_t sub_1001CBA3C()
{
  result = qword_101910848;
  if (!qword_101910848)
  {
    sub_1000D6664(&unk_101910040);
    sub_1000414C8(&unk_101910078, &qword_101910038);
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910848);
  }

  return result;
}

unint64_t sub_1001CBB24()
{
  result = qword_101910850;
  if (!qword_101910850)
  {
    sub_1000D6664(&qword_101910858);
    sub_1000D6664(&qword_101910118);
    sub_1000414C8(&qword_101910120, &qword_101910118);
    swift_getOpaqueTypeConformance2();
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910850);
  }

  return result;
}

unint64_t sub_1001CBC50()
{
  result = qword_101910860;
  if (!qword_101910860)
  {
    sub_1000D6664(&qword_101910160);
    sub_1001C9124();
    sub_1001C9208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910860);
  }

  return result;
}

unint64_t sub_1001CBCDC()
{
  result = qword_101910868;
  if (!qword_101910868)
  {
    sub_1000D6664(&qword_101910870);
    sub_1001C95A0();
    sub_1001C96CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910868);
  }

  return result;
}

unint64_t sub_1001CBD68()
{
  result = qword_101910878;
  if (!qword_101910878)
  {
    sub_1000D6664(&qword_101910880);
    sub_1001C989C();
    sub_1001C9984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910878);
  }

  return result;
}

unint64_t sub_1001CBDF4()
{
  result = qword_101910890;
  if (!qword_101910890)
  {
    sub_1000D6664(&qword_101910898);
    sub_1001C9B90();
    sub_1001C9C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910890);
  }

  return result;
}

unint64_t sub_1001CBE80()
{
  result = qword_1019108A0;
  if (!qword_1019108A0)
  {
    sub_1000D6664(&qword_1019108A8);
    sub_1001C9CD0();
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019108A0);
  }

  return result;
}

unint64_t sub_1001CBF3C()
{
  result = qword_1019108B0;
  if (!qword_1019108B0)
  {
    sub_1000D6664(&qword_1019108B8);
    sub_1001CBFC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019108B0);
  }

  return result;
}

unint64_t sub_1001CBFC8()
{
  result = qword_1019108C0;
  if (!qword_1019108C0)
  {
    sub_1000D6664(&qword_1019108C8);
    sub_1000414C8(&qword_1019108D0, &qword_1019108D8);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019108C0);
  }

  return result;
}

unint64_t sub_1001CC080()
{
  result = qword_1019108E0;
  if (!qword_1019108E0)
  {
    sub_1000D6664(&qword_1019103F8);
    sub_1001CC10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019108E0);
  }

  return result;
}

unint64_t sub_1001CC10C()
{
  result = qword_1019108E8;
  if (!qword_1019108E8)
  {
    sub_1000D6664(&qword_1019103D0);
    sub_1001CC198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019108E8);
  }

  return result;
}

unint64_t sub_1001CC198()
{
  result = qword_1019108F0;
  if (!qword_1019108F0)
  {
    sub_1000D6664(&qword_1019103C8);
    sub_1001CC254();
    sub_1001C3C48(&qword_101910928, &type metadata accessor for SafeAreaPaddingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019108F0);
  }

  return result;
}

unint64_t sub_1001CC254()
{
  result = qword_1019108F8;
  if (!qword_1019108F8)
  {
    sub_1000D6664(&qword_1019103C0);
    sub_1001CC310();
    sub_1001C3C48(&qword_101910928, &type metadata accessor for SafeAreaPaddingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019108F8);
  }

  return result;
}

unint64_t sub_1001CC310()
{
  result = qword_101910900;
  if (!qword_101910900)
  {
    sub_1000D6664(&qword_1019103B8);
    sub_1001CC39C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910900);
  }

  return result;
}

unint64_t sub_1001CC39C()
{
  result = qword_101910908;
  if (!qword_101910908)
  {
    sub_1000D6664(&qword_1019103B0);
    sub_1001CC428();
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910908);
  }

  return result;
}

unint64_t sub_1001CC428()
{
  result = qword_101910910;
  if (!qword_101910910)
  {
    sub_1000D6664(&qword_1019103F0);
    sub_1000D6664(&qword_1019103A8);
    sub_1000414C8(&qword_1019103E8, &qword_1019103A8);
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_101910918, &qword_101910920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910910);
  }

  return result;
}

unint64_t sub_1001CC550()
{
  result = qword_101910940;
  if (!qword_101910940)
  {
    sub_1000D6664(&qword_1019104D8);
    sub_1001CA314();
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910940);
  }

  return result;
}

unint64_t sub_1001CC60C()
{
  result = qword_101910948;
  if (!qword_101910948)
  {
    sub_1000D6664(&qword_1019104F0);
    sub_1000414C8(&qword_101910500, &qword_1019104F8);
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910948);
  }

  return result;
}

uint64_t sub_1001CC6F4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001CC770()
{
  result = qword_101910960;
  if (!qword_101910960)
  {
    sub_1000D6664(&qword_101910508);
    sub_1001C3C48(&qword_10190F150, _s5LabelVMa);
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910960);
  }

  return result;
}

uint64_t sub_1001CC85C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001CC8D8()
{
  result = qword_1019109A8;
  if (!qword_1019109A8)
  {
    sub_1000D6664(&qword_1019109B0);
    sub_1000D6664(&qword_1019106C8);
    sub_1000414C8(&qword_1019106F8, &qword_1019106C8);
    sub_1001CAF58();
    swift_getOpaqueTypeConformance2();
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019109A8);
  }

  return result;
}

unint64_t sub_1001CCB28()
{
  result = qword_1019109D8;
  if (!qword_1019109D8)
  {
    sub_1000D6664(&qword_1019109D0);
    sub_1001C58FC();
    sub_1000414C8(&qword_1019109E0, &qword_1019109C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019109D8);
  }

  return result;
}

unint64_t sub_1001CCBE0()
{
  result = qword_101910A30;
  if (!qword_101910A30)
  {
    sub_1000D6664(&qword_101910A20);
    sub_1000414C8(&qword_101910A38, &qword_101910A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910A30);
  }

  return result;
}

unint64_t sub_1001CCC98()
{
  result = qword_101910A60;
  if (!qword_101910A60)
  {
    sub_1000D6664(&qword_101910A00);
    sub_1001CCD50();
    sub_1000414C8(&unk_10190F590, &qword_10191E590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910A60);
  }

  return result;
}

unint64_t sub_1001CCD50()
{
  result = qword_101910A68;
  if (!qword_101910A68)
  {
    sub_1000D6664(&qword_1019109F0);
    sub_1001CCDDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910A68);
  }

  return result;
}

unint64_t sub_1001CCDDC()
{
  result = qword_101910A70;
  if (!qword_101910A70)
  {
    sub_1000D6664(&qword_1019109E8);
    sub_1001CCE94();
    sub_1000414C8(&qword_10191D9D0, &qword_101910650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910A70);
  }

  return result;
}

unint64_t sub_1001CCE94()
{
  result = qword_101910A78;
  if (!qword_101910A78)
  {
    sub_1000D6664(&qword_1019109F8);
    sub_1001C3C48(&qword_101910A80, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_1000414C8(&unk_10190F550, &qword_10191E550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910A78);
  }

  return result;
}

unint64_t sub_1001CCF7C()
{
  result = qword_101910A98;
  if (!qword_101910A98)
  {
    sub_1000D6664(&unk_101910AA0);
    sub_1001C59B4();
    sub_1000414C8(&qword_10191D9D0, &qword_101910650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910A98);
  }

  return result;
}

uint64_t sub_1001CD078(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001CD090(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001CD0F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1001CD15C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001CD1B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

id sub_1001CD28C()
{
  v1 = OBJC_IVAR____TtC4Maps34SearchHomeTipkitCollectionViewCell____lazy_storage___tipkitView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps34SearchHomeTipkitCollectionViewCell____lazy_storage___tipkitView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps34SearchHomeTipkitCollectionViewCell____lazy_storage___tipkitView);
  }

  else
  {
    type metadata accessor for FeatureDiscoveryTipkitView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1001CD318(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC4Maps34SearchHomeTipkitCollectionViewCell_actionButtonHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC4Maps34SearchHomeTipkitCollectionViewCell____lazy_storage___tipkitView] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for SearchHomeTipkitCollectionViewCell();
  v10 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  sub_1000CE6B8(&qword_101910AE8);
  String.init<A>(describing:)();
  v11 = String._bridgeToObjectiveC()();

  [v10 setAccessibilityIdentifier:v11];

  v12 = objc_opt_self();
  v13 = v10;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];

  v15 = [v13 contentView];
  v16 = [v12 clearColor];
  [v15 setBackgroundColor:v16];

  sub_1001CD57C();
  return v13;
}

void sub_1001CD57C()
{
  v1 = [v0 contentView];
  v2 = sub_1001CD28C();
  [v1 addSubview:v2];

  v3 = OBJC_IVAR____TtC4Maps34SearchHomeTipkitCollectionViewCell____lazy_storage___tipkitView;
  v4 = *&v0[OBJC_IVAR____TtC4Maps34SearchHomeTipkitCollectionViewCell____lazy_storage___tipkitView];
  [v4 setShowBubbleIndicator:!-[PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v0)];

  if ([PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v0))
  {
    v5 = sub_100CD7164();
  }

  else
  {
    v5 = 16.0;
  }

  v6 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1011E5C00;
  v8 = [*&v0[v3] topAnchor];
  v9 = [v0 contentView];
  v10 = [v9 topAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:8.0];
  *(v7 + 32) = v11;
  v12 = [v0 contentView];
  v13 = [v12 bottomAnchor];

  v14 = [*&v0[v3] bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:8.0];

  *(v7 + 40) = v15;
  v16 = [*&v0[v3] leadingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:v5];
  *(v7 + 48) = v19;
  v20 = [v0 contentView];
  v21 = [v20 trailingAnchor];

  v22 = [*&v0[v3] trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:v5];

  *(v7 + 56) = v23;
  sub_10009B534();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints:isa];
}

void sub_1001CD8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v8._countAndFlagsBits = 0xD000000000000017;
  v37._object = 0x8000000101222440;
  v9._object = 0x8000000101222400;
  v8._object = 0x8000000101222420;
  v37._countAndFlagsBits = 0xD00000000000003BLL;
  v9._countAndFlagsBits = 0xD00000000000001ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, qword_1019600D8, v8, v37);
  v10 = objc_opt_self();
  v11 = [v4 traitCollection];
  v12 = [v10 preferredFontForTextStyle:UIFontTextStyleLargeTitle compatibleWithTraitCollection:v11];

  v13 = [objc_opt_self() configurationWithFont:v12];
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() _systemImageNamed:v15 withConfiguration:v14];

  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = objc_allocWithZone(FeatureDiscoveryModel);
  v19 = v16;

  v20 = String._bridgeToObjectiveC()();

  v21 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_100060EA8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_101609078;
  v22 = _Block_copy(aBlock);

  LOBYTE(v35) = 1;
  v23 = [v18 initWithImage:v19 title:v20 subtitle:v21 actionTitle:0 actionHandler:0 bodyTapHandler:0 displayedHandler:0 dismissHandler:v22 disableAffordanceAfterAction:v35];
  _Block_release(v22);

  v24 = sub_1001CD28C();
  sub_1002162E0(v23);

  v25 = OBJC_IVAR____TtC4Maps34SearchHomeTipkitCollectionViewCell____lazy_storage___tipkitView;
  v26 = *&v5[OBJC_IVAR____TtC4Maps34SearchHomeTipkitCollectionViewCell____lazy_storage___tipkitView];
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 systemBlueColor];
  v30 = sub_100215458();
  [v30 setTintColor:v29];

  v31 = *&v28[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_iconViewTintColor];
  *&v28[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_iconViewTintColor] = v29;

  v32 = *&v5[v25];
  v33 = [PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v5);
  v34 = 30.0;
  if (v33)
  {
    v34 = 16.0;
  }

  *&v32[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_topPadding] = v34;
  sub_10021533C();

  [v5 layoutIfNeeded];
}

id sub_1001CDD64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHomeTipkitCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001CDE84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsDesignConstantsShim();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001CDF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v51 = a2;
  v2 = type metadata accessor for ScrollBounceBehavior();
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ListSectionSpacing();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InsetGroupedListStyle();
  v7 = *(v6 - 8);
  v39 = v6;
  v40 = v7;
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1000CE6B8(&qword_101910B18);
  v10 = *(v38 - 8);
  __chkstk_darwin(v38);
  v12 = &v38 - v11;
  v13 = sub_1000CE6B8(&qword_101910B20);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = sub_1000CE6B8(&qword_101910B28);
  v47 = *(v16 - 8);
  v48 = v16;
  __chkstk_darwin(v16);
  v46 = &v38 - v17;
  static Edge.Set.top.getter();
  v18 = sub_1000CE6B8(&qword_101910B30);
  v19 = sub_1000414C8(&qword_101910B38, &qword_101910B30);
  View.listPadding(_:_:)();
  InsetGroupedListStyle.init()();
  v52 = v18;
  v53 = v19;
  v20 = v41;
  swift_getOpaqueTypeConformance2();
  v22 = v38;
  v21 = v39;
  View.listStyle<A>(_:)();
  (*(v40 + 8))(v9, v21);
  (*(v10 + 8))(v12, v22);
  v23 = v42;
  static ListSectionSpacing.custom(_:)();
  v24 = *(sub_1000CE6B8(&qword_101910B40) + 36);
  v25 = v43;
  v26 = v44;
  (*(v43 + 16))(&v15[v24], v23, v44);
  v27 = v25;
  v28 = *(v25 + 56);
  v28(&v15[v24], 0, 1, v26);
  KeyPath = swift_getKeyPath();
  v45 = v13;
  v30 = &v15[*(v13 + 36)];
  v31 = *(sub_1000CE6B8(&qword_10190CD00) + 28);
  (*(v27 + 32))(v30 + v31, v23, v26);
  v28(v30 + v31, 0, 1, v26);
  *v30 = KeyPath;
  static ScrollBounceBehavior.basedOnSize.getter();
  v32 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v32)
  {
    Axis.Set.init(rawValue:)();
  }

  v33 = sub_1001CFAE8(&qword_101910B48, &qword_101910B20, &unk_1011EEE40, sub_1001CF880);
  v34 = v46;
  v35 = v45;
  View.scrollBounceBehavior(_:axes:)();
  (*(v49 + 8))(v20, v50);
  sub_100024F64(v15, &qword_101910B20);
  v52 = v35;
  v53 = v33;
  swift_getOpaqueTypeConformance2();
  v36 = v48;
  View.scrollContentBackground(_:)();
  return (*(v47 + 8))(v34, v36);
}

uint64_t sub_1001CE560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ListItemKind.Set();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_101910B58);
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  v11 = sub_1000CE6B8(&qword_101910B60);
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  v12 = &v10[*(v8 + 36)];
  v12[32] = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  static Edge.Set.horizontal.getter();
  static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
  sub_1001CFA04();
  View.listSectionMargins(_:_:)();
  sub_100024F64(v10, &qword_101910B58);
  v13 = static Color.clear.getter();
  static ListItemKind.Set.header.getter();
  v14 = a2 + *(sub_1000CE6B8(&qword_101910B78) + 36);
  v15 = sub_1000CE6B8(&qword_101910B80);
  v16 = *(v15 + 48);
  (*(v5 + 16))(v14, v7, v4);
  v19[1] = v13;
  v17 = AnyView.init<A>(_:)();
  (*(v5 + 8))(v7, v4);
  *(v14 + v16) = v17;
  return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
}

uint64_t sub_1001CE800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static MapsDesignConstants.Spacing.textHorizontalPadding.getter();
  static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
  v4 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_1000CE6B8(&qword_101910BC8);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = sub_1000CE6B8(&qword_101910BD0);
  v15 = a2 + *(result + 36);
  *v15 = v4;
  *(v15 + 8) = v6;
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_1001CE8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_101910C00);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_1000CE6B8(&qword_101910C08);
  (*(*(v17 - 8) + 16))(v7, a1, v17);
  v18 = &v7[*(v5 + 44)];
  *v18 = v8;
  *(v18 + 1) = v10;
  *(v18 + 2) = v12;
  *(v18 + 3) = v14;
  *(v18 + 4) = v16;
  v18[40] = 0;
  sub_1000CE6B8(&qword_101909FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D60;
  v20 = static Edge.Set.leading.getter();
  *(inited + 32) = v20;
  v21 = static Edge.Set.trailing.getter();
  *(inited + 33) = v21;
  v22 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v20)
  {
    v22 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v21)
  {
    v22 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1001CFE98(v7, a2);
  result = sub_1000CE6B8(&qword_101910C10);
  v32 = a2 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_1001CEB10@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = type metadata accessor for ScrollBounceBehavior();
  v40 = *(v1 - 8);
  v41 = v1;
  __chkstk_darwin(v1);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for InsetGroupedListStyle();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ListSectionSpacing();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_101910B88);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v39 = sub_1000CE6B8(&qword_101910B90);
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v30 = &v29 - v11;
  v38 = sub_1000CE6B8(&qword_101910B98);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v29 - v12;
  static Edge.Set.top.getter();
  sub_1000CE6B8(&qword_101910BA0);
  sub_1000414C8(&qword_101910BA8, &qword_101910BA0);
  View.listPadding(_:_:)();
  static MapsDesignConstants.Spacing.discreetListRowSpacing.getter();
  static ListSectionSpacing.custom(_:)();
  v13 = *(sub_1000CE6B8(&qword_101910BB0) + 36);
  (*(v5 + 16))(&v10[v13], v7, v4);
  v14 = *(v5 + 56);
  v14(&v10[v13], 0, 1, v4);
  KeyPath = swift_getKeyPath();
  v16 = &v10[*(v8 + 36)];
  v17 = *(sub_1000CE6B8(&qword_10190CD00) + 28);
  (*(v5 + 32))(v16 + v17, v7, v4);
  v18 = v30;
  v14(v16 + v17, 0, 1, v4);
  v20 = v32;
  v19 = v33;
  *v16 = KeyPath;
  v21 = v8;
  v22 = v31;
  InsetGroupedListStyle.init()();
  v23 = sub_1001CFAE8(&qword_101910BB8, &qword_101910B88, &unk_1011EEEC8, sub_1001CFB98);
  View.listStyle<A>(_:)();
  (*(v34 + 8))(v22, v20);
  sub_100024F64(v10, &qword_101910B88);
  static ScrollBounceBehavior.basedOnSize.getter();
  LOBYTE(KeyPath) = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != KeyPath)
  {
    Axis.Set.init(rawValue:)();
  }

  v43 = v21;
  v44 = v20;
  v45 = v23;
  v46 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v35;
  v26 = v39;
  View.scrollBounceBehavior(_:axes:)();
  (*(v40 + 8))(v19, v41);
  (*(v37 + 8))(v18, v26);
  v43 = v26;
  v44 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v38;
  View.scrollContentBackground(_:)();
  return (*(v36 + 8))(v25, v27);
}

uint64_t sub_1001CF134@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_10190BC28);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TopCellDividierModifier();
  sub_1000D2DFC(v1 + *(v10 + 20), v9, &qword_10190BC28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ContentSizeCategory();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_1001CF378@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for InterfaceIdiom();
  v38 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v35[-v8];
  v10 = type metadata accessor for ContentSizeCategory();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + *(type metadata accessor for TopCellDividierModifier() + 24)))
  {
    sub_1001D01F4(&v51);
  }

  else
  {
    v14 = [objc_opt_self() separatorColor];
    v37 = Color.init(uiColor:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v45[6] = v48;
    *&v45[22] = v49;
    *&v45[38] = v50;
    v36 = static Edge.Set.leading.getter();
    sub_1001CF134(v13);
    v15 = ContentSizeCategory.isAccessibilityCategory.getter();
    (*(v11 + 8))(v13, v10);
    if ((v15 & 1) == 0)
    {
      sub_100155054(v9);
      static InterfaceIdiom.macCatalyst.getter();
      static InterfaceIdiom.== infix(_:_:)();
      v16 = *(v38 + 8);
      v16(v6, v4);
      v16(v9, v4);
    }

    EdgeInsets.init(_all:)();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v46 = 0;
    v25 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v47 = 0;
    *&v39[0] = v37;
    WORD4(v39[0]) = 256;
    *(v39 + 10) = *v45;
    *(&v39[1] + 10) = *&v45[16];
    *(&v39[2] + 10) = *&v45[32];
    *(&v39[3] + 1) = *&v45[46];
    LOBYTE(v40) = v36;
    *(&v40 + 1) = v18;
    *&v41 = v20;
    *(&v41 + 1) = v22;
    *&v42 = v24;
    BYTE8(v42) = 0;
    LOBYTE(v43) = v25;
    *(&v43 + 1) = v26;
    *v44 = v27;
    *&v44[8] = v28;
    *&v44[16] = v29;
    v44[24] = 0;
    UIView.annotateView(with:)(v39);
    v57 = v42;
    v58 = v43;
    v59[0] = *v44;
    *(v59 + 9) = *&v44[9];
    v53 = v39[2];
    v54 = v39[3];
    v55 = v40;
    v56 = v41;
    v51 = v39[0];
    v52 = v39[1];
  }

  v30 = v58;
  a2[6] = v57;
  a2[7] = v30;
  a2[8] = v59[0];
  *(a2 + 137) = *(v59 + 9);
  v31 = v54;
  a2[2] = v53;
  a2[3] = v31;
  v32 = v56;
  a2[4] = v55;
  a2[5] = v32;
  result = *&v51;
  v34 = v52;
  *a2 = v51;
  a2[1] = v34;
  return result;
}

uint64_t sub_1001CF708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = static Alignment.top.getter();
  v8 = v7;
  sub_1001CF378(v3, &v18);
  v34 = v24;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v33 = v23;
  v28 = v18;
  v29 = v19;
  *&v38 = v6;
  *(&v38 + 1) = v8;
  v9 = sub_1000CE6B8(&qword_101910CD0);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(sub_1000CE6B8(&qword_101910CD8) + 36));
  v11 = v37;
  v10[8] = v36;
  v10[9] = v11;
  v10[10] = v38;
  v12 = v33;
  v10[4] = v32;
  v10[5] = v12;
  v13 = v35;
  v10[6] = v34;
  v10[7] = v13;
  v14 = v29;
  *v10 = v28;
  v10[1] = v14;
  v15 = v31;
  v10[2] = v30;
  v10[3] = v15;
  v39[6] = v24;
  v39[7] = v25;
  v39[8] = v26;
  v39[9] = v27;
  v39[2] = v20;
  v39[3] = v21;
  v39[4] = v22;
  v39[5] = v23;
  v39[0] = v18;
  v39[1] = v19;
  v40 = v6;
  v41 = v8;
  sub_1000D2DFC(&v28, &v17, &unk_101922B70);
  return sub_100024F64(v39, &unk_101922B70);
}

unint64_t sub_1001CF880()
{
  result = qword_101910B50;
  if (!qword_101910B50)
  {
    sub_1000D6664(&qword_101910B40);
    sub_1000D6664(&qword_101910B18);
    type metadata accessor for InsetGroupedListStyle();
    sub_1000D6664(&qword_101910B30);
    sub_1000414C8(&qword_101910B38, &qword_101910B30);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190CD40, &unk_10191D9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910B50);
  }

  return result;
}

unint64_t sub_1001CFA04()
{
  result = qword_101910B68;
  if (!qword_101910B68)
  {
    sub_1000D6664(&qword_101910B58);
    sub_1000414C8(&qword_101910B70, &qword_101910B60);
    sub_1000414C8(&qword_10190B010, &qword_10191DC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910B68);
  }

  return result;
}

uint64_t sub_1001CFAE8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    a4();
    sub_1000414C8(&qword_10190CD48, &qword_10190CD00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001CFB98()
{
  result = qword_101910BC0;
  if (!qword_101910BC0)
  {
    sub_1000D6664(&qword_101910BB0);
    sub_1000D6664(&qword_101910BA0);
    sub_1000414C8(&qword_101910BA8, &qword_101910BA0);
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190CD40, &unk_10191D9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910BC0);
  }

  return result;
}

unint64_t sub_1001CFCD0()
{
  result = qword_101910BD8;
  if (!qword_101910BD8)
  {
    sub_1000D6664(&qword_101910B78);
    sub_1000D6664(&qword_101910B58);
    sub_1001CFA04();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_101910BE0, &qword_101910BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910BD8);
  }

  return result;
}

unint64_t sub_1001CFDC4()
{
  result = qword_101910BF0;
  if (!qword_101910BF0)
  {
    sub_1000D6664(&qword_101910BD0);
    sub_1000414C8(&qword_101910BF8, &qword_101910BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910BF0);
  }

  return result;
}

uint64_t sub_1001CFE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101910C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TopCellDividierModifier()
{
  result = qword_101910C78;
  if (!qword_101910C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001CFF7C()
{
  sub_1001D0040(319, &unk_10190CAE8, &type metadata accessor for InterfaceIdiom);
  if (v0 <= 0x3F)
  {
    sub_1001D0040(319, &qword_10190BC08, &type metadata accessor for ContentSizeCategory);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001D0040(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1001D0094()
{
  result = qword_101910CB8;
  if (!qword_101910CB8)
  {
    sub_1000D6664(&qword_101910C10);
    sub_1001D0120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910CB8);
  }

  return result;
}

unint64_t sub_1001D0120()
{
  result = qword_101910CC0;
  if (!qword_101910CC0)
  {
    sub_1000D6664(&qword_101910C00);
    sub_1000414C8(&qword_101910CC8, &qword_101910C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910CC0);
  }

  return result;
}

double sub_1001D01F4(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 137) = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1001D0214()
{
  result = qword_101910CE0;
  if (!qword_101910CE0)
  {
    sub_1000D6664(&qword_101910CD8);
    sub_1000414C8(&qword_101910CE8, &qword_101910CD0);
    sub_1000414C8(&unk_101910CF0, &unk_101922B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910CE0);
  }

  return result;
}

uint64_t sub_1001D0318(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = v6(v5);

  (*(v3 + 8))(v5, v2);
  return v7 & 1;
}

uint64_t sub_1001D0588(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

id sub_1001D073C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a1 + *a3);
  if (*v4)
  {
    v5 = v4[1];
    v8[4] = *v4;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_1001D0318;
    v8[3] = a4;
    v6 = _Block_copy(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void *sub_1001D08A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = type metadata accessor for IndexPath();
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v29);
  v10 = _swiftEmptyArrayStorage;
  v36 = _swiftEmptyArrayStorage;
  v11 = *(v3 + OBJC_IVAR____TtC4Maps34SearchHomeUserGuidesLayoutProvider_isDeletable);
  if (v11)
  {

    v12 = v11(a1);
    sub_1000588AC(v11);
    if (v12)
    {
      v13 = v29;
      (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v29);
      v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = a2;
      *(v15 + 24) = a3;
      (*(v8 + 32))(v15 + v14, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
      v34 = sub_1001D1954;
      v35 = v15;
      aBlock = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = sub_100340A70;
      v33 = &unk_101609258;
      v16 = _Block_copy(&aBlock);
      sub_1000CD9D4(a2);

      v17 = sub_100DCC9E8(v16);
      _Block_release(v16);
      v18 = v17;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v10 = v36;
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }
  }

  v19 = *(v4 + OBJC_IVAR____TtC4Maps34SearchHomeUserGuidesLayoutProvider_isShareable);
  if (v19)
  {

    v20 = v19(a1);
    sub_1000588AC(v19);
    if (v20)
    {
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = v29;
      (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v29);
      v23 = (*(v8 + 80) + 24) & ~*(v8 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      (*(v8 + 32))(v24 + v23, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
      v34 = sub_1001D18D0;
      v35 = v24;
      aBlock = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = sub_100340A70;
      v33 = &unk_101609208;
      v25 = _Block_copy(&aBlock);

      v26 = sub_100DCCCC0(v25);
      _Block_release(v25);
      v27 = v26;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return v36;
    }
  }

  return v10;
}

void sub_1001D0CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC4Maps34SearchHomeUserGuidesLayoutProvider_shareHandler);
    if (v7)
    {

      v7(a4);
      sub_1000588AC(v7);
    }
  }
}

id sub_1001D0DDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHomeUserGuidesLayoutProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001D0FCC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [v3 cellReuseIdentifier];
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v8 = [a2 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:isa];

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    sub_10004E374(a3, v14);
    type metadata accessor for SearchHomeUserGuidesCellViewModel();
    if (swift_dynamicCast())
    {
      [v10 setCollectionInfo:*&v13[OBJC_IVAR____TtC4Maps33SearchHomeUserGuidesCellViewModel_collections]];
    }

    return v10;
  }

  else
  {

    v12 = objc_allocWithZone(UICollectionViewCell);

    return [v12 init];
  }
}

id sub_1001D1274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1001D08A4(a1, a3, a4);
  }

  sub_100014C84(0, &qword_10191A5D0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [objc_opt_self() configurationWithActions:isa];

  return v10;
}

void *sub_1001D1448(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v31 = a2;
  v32 = a3;
  v34 = a1;
  v33 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UICollectionLayoutListConfiguration();
  v12 = *(v35 - 8);
  __chkstk_darwin(v35);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = [v15 fractionalWidthDimension:1.0];
  v17 = [v15 estimatedDimension:a4];
  v18 = [objc_opt_self() sizeWithWidthDimension:v16 heightDimension:v17];

  v19 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v18 elementKind:UICollectionElementKindSectionHeader alignment:1];
  [v19 setContentInsets:{0.0, 16.0, 0.0, 16.0}];
  (*(v9 + 104))(v11, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v8);
  UICollectionLayoutListConfiguration.init(appearance:)();
  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  v20 = [objc_opt_self() clearColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v23 = v31;
  v24 = v32;
  v22[3] = v31;
  v22[4] = v24;
  sub_1000CD9D4(v23);
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  (*(v5 + 104))(v7, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v33);
  UICollectionLayoutListConfiguration.headerMode.setter();
  sub_100014C84(0, &unk_101910E00);
  v25 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  sub_1000CE6B8(&qword_101908400);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1011E47B0;
  *(v26 + 32) = v19;
  sub_100014C84(0, &unk_101910E10);
  v27 = v19;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 setBoundarySupplementaryItems:isa];

  (*(v12 + 8))(v14, v35);
  return v25;
}

void sub_1001D18D0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for IndexPath() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_1001D0CD4(a1, a2, v6, v7);
}

uint64_t sub_1001D1954()
{
  result = type metadata accessor for IndexPath() - 8;
  v2 = *(v0 + 16);
  if (v2)
  {
    result = IndexPath.row.getter();
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      return v2();
    }
  }

  return result;
}

void sub_1001D19DC()
{
  v1 = *(v0 + 16);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_1001D1A38()
{
  v1 = *(v0 + 16);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = (*(v1 + 16))(v1, isa);

  return v3;
}

uint64_t sub_1001D1B88@<X0>(uint64_t a1@<X8>)
{
  sub_1000CE6B8(&qword_101909FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D60;
  v3 = static Edge.Set.top.getter();
  *(inited + 32) = v3;
  v4 = static Edge.Set.bottom.getter();
  *(inited + 33) = v4;
  v5 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v3)
  {
    v5 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v4)
  {
    v5 = Edge.Set.init(rawValue:)();
  }

  result = EdgeInsets.init(_all:)();
  *a1 = 0xD000000000000012;
  *(a1 + 8) = 0x8000000101222820;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 32) = v5;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  *(a1 + 72) = 0;
  return result;
}

char *sub_1001D1CBC()
{
  *&v0[OBJC_IVAR____TtC4Maps35IOSMapsDesignIntegrationTestContext_containee] = 0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for IOSMapsDesignIntegrationTestContext();
  v1 = objc_msgSendSuper2(&v10, "init");
  v2 = type metadata accessor for MapsDesignIntegrationTestContaineeViewController();
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v9.receiver = v3;
  v9.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
  result = [v5 cardPresentationController];
  if (result)
  {
    v7 = result;
    [result setDefaultContaineeLayout:2];

    v8 = *&v4[OBJC_IVAR____TtC4Maps35IOSMapsDesignIntegrationTestContext_containee];
    *&v4[OBJC_IVAR____TtC4Maps35IOSMapsDesignIntegrationTestContext_containee] = v5;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001D1F90@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = v6;
  KeyPath = swift_getKeyPath();
  a1[3] = &type metadata for MapsDesignIntegrationTestContaineeViewController.IntegrationTestCard;
  a1[4] = sub_1001D2FFC();
  v4 = swift_allocObject();
  *a1 = v4;
  *(v4 + 16) = KeyPath;
  *(v4 + 24) = 0;
  *(v4 + 32) = sub_1001D2FF4;
  *(v4 + 40) = v2;

  return v6;
}

void sub_1001D2050()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v1 = swift_unknownObjectWeakLoadStrong();
    if (v1)
    {
      v2 = v1;
      [v1 popContext:v3 animated:1 completion:0];
    }
  }
}

int *sub_1001D20E4@<X0>(uint64_t a1@<X8>)
{
  sub_1000CE6B8(&unk_10190B9A0);
  type metadata accessor for UIHostingControllerSizingOptions();
  *(swift_allocObject() + 16) = xmmword_1011E1D60;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  sub_1001D2F9C();
  sub_1000CE6B8(&unk_10190B9B0);
  sub_1000414C8(&qword_10190DE80, &unk_10190B9B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  *(a1 + result[5]) = 0;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 8) = 2;
  *(a1 + result[7]) = 0;
  return result;
}

uint64_t sub_1001D2260@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v26 = a3;
  v30 = a5;
  v29 = type metadata accessor for CardHeaderSize();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LeadingCardHeaderViewModel();
  __chkstk_darwin(v16 - 8);
  *&v31 = 0;
  *(&v31 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  *&v31 = 0xD000000000000011;
  *(&v31 + 1) = 0x8000000101222840;
  v17 = a2;
  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000F1230(a1, 0);
    (*(v13 + 8))(v15, v12);
  }

  v19._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v19);

  v20 = type metadata accessor for MapsDesignAccessibilityString();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  v22 = v17 & 1;
  *(v21 + 24) = v17 & 1;
  v23 = v28;
  *(v21 + 32) = v26;
  *(v21 + 40) = v23;
  sub_1001D31A8(a1, v22);

  static CardButtonViewModel.close(tintColor:enabled:action:)();

  (*(v27 + 104))(v8, enum case for CardHeaderSize.medium(_:), v29);
  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  return LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
}

uint64_t sub_1001D26E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  static Axis.Set.vertical.getter();
  sub_1001D2EFC();
  ScrollView.init(_:showsIndicators:content:)();
  v7 = sub_100154F0C(v3, v4);
  *(a1 + *(sub_1000CE6B8(&qword_101910FA8) + 36)) = v7;
  v8 = a1 + *(sub_1000CE6B8(&qword_101910FB0) + 36);
  sub_1001D2260(v3, v4, v6, v5, v8);
  result = sub_1000CE6B8(&qword_101910FB8);
  *(v8 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_1001D29D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (v4 = result, a2 == 0x697365447370614DLL) && a3 == 0xEA00000000006E67 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result))
    {
      if (v4)
      {
        v5 = String._bridgeToObjectiveC()();
        [v4 setTitle:v5];

        [v4 setContent:*(v3 + OBJC_IVAR____TtC4Maps35CarMapsDesignIntegrationTestContext_contentController)];

        return [v4 setAccessoryType:2];
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1001D2BB0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationDisplay];

    if (v2)
    {
      [v2 isCameraPanning];
    }
  }

  v3 = [objc_opt_self() sharedInstance];
  [v3 isIncidentReportingEnabled];

  return 1;
}

id sub_1001D2CAC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1001D2D18@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for IntegrationView;
  result = sub_1001D2EFC();
  *(a1 + 32) = result;
  return result;
}

uint64_t type metadata accessor for CarIntegrationTestViewController()
{
  result = qword_101910F88;
  if (!qword_101910F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001D2EFC()
{
  result = qword_101910F98;
  if (!qword_101910F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910F98);
  }

  return result;
}

unint64_t sub_1001D2F50()
{
  result = qword_101926EC0;
  if (!qword_101926EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101926EC0);
  }

  return result;
}

unint64_t sub_1001D2F9C()
{
  result = qword_10190DE70;
  if (!qword_10190DE70)
  {
    type metadata accessor for UIHostingControllerSizingOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190DE70);
  }

  return result;
}

unint64_t sub_1001D2FFC()
{
  result = qword_101910FA0;
  if (!qword_101910FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910FA0);
  }

  return result;
}

uint64_t sub_1001D305C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1001D30A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001D313C()
{
  sub_1000F1230(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D31A8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1001D31B4()
{
  result = qword_101910FD0;
  if (!qword_101910FD0)
  {
    sub_1000D6664(&qword_101910FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910FD0);
  }

  return result;
}

unint64_t sub_1001D3238()
{
  result = qword_101910FE0;
  if (!qword_101910FE0)
  {
    sub_1000D6664(&qword_101910FB0);
    sub_1001D32F0();
    sub_1000414C8(&qword_101911018, &qword_101910FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910FE0);
  }

  return result;
}

unint64_t sub_1001D32F0()
{
  result = qword_101910FE8;
  if (!qword_101910FE8)
  {
    sub_1000D6664(&qword_101910FA8);
    sub_1001D337C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910FE8);
  }

  return result;
}

unint64_t sub_1001D337C()
{
  result = qword_101910FF0;
  if (!qword_101910FF0)
  {
    sub_1000D6664(&qword_101910FF8);
    sub_1000414C8(&qword_101911000, &qword_101911008);
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910FF0);
  }

  return result;
}

uint64_t sub_1001D3460@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v14 = type metadata accessor for MapsDesignAccessibilityString();
  v2 = *(v14 - 8);
  __chkstk_darwin(v14);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000CE6B8(&qword_101911080);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  v16 = *v1;
  v9 = v16;
  type metadata accessor for HomePinnedItemModel();
  sub_1001D3674();
  v10 = v9;

  PinnedTile.init(model:tapHandler:)();
  *v4 = 0x64656E6E6950;
  v4[1] = 0xE600000000000000;
  v11 = v14;
  (*(v2 + 104))(v4, enum case for MapsDesignAccessibilityString.tile(_:), v14);
  sub_1001D36CC();
  View.mapsDesignAXCombinedContainer(withID:)();
  (*(v2 + 8))(v4, v11);
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1001D3674()
{
  result = qword_101911088;
  if (!qword_101911088)
  {
    type metadata accessor for HomePinnedItemModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911088);
  }

  return result;
}

unint64_t sub_1001D36CC()
{
  result = qword_101911090;
  if (!qword_101911090)
  {
    sub_1000D6664(&qword_101911080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911090);
  }

  return result;
}

BOOL sub_1001D3730(void *a1, uint64_t a2, uint64_t a3, id a4)
{
  v8 = [a4 publisherAttribution];
  v9 = v8;
  if (v8)
  {
    v10 = [objc_allocWithZone(MapsUIImagePublisherSpec) initWithIconIdentifier:{objc_msgSend(v8, "logoIdentifier")}];
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    v22[4] = sub_1000D2C74;
    v22[5] = v11;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_100271778;
    v22[3] = &unk_1016097D8;
    v12 = _Block_copy(v22);
    v13 = v10;

    [a1 getImageForSpec:v13 loadImageOnBackgroundQueue:1 completion:v12];
    swift_unknownObjectRelease();

    _Block_release(v12);
  }

  else
  {
    if (qword_1019066E0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100021540(v14, qword_10195FF40);
    v15 = a4;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "Missing publisher attribution for : %@.", v18, 0xCu);
      sub_100024F64(v19, &qword_1019144F0);
    }
  }

  return v9 != 0;
}

void sub_1001D39AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = [objc_opt_self() sharedCache];
  if (v7)
  {
    v8 = v7;
    sub_1001D3730(v7, a2, a3, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001D3A34(uint64_t a1, double a2, double a3)
{
  v15 = a1;
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  *(v3 + 40) = [objc_opt_self() sharedInstance];
  v11 = sub_100014C84(0, &qword_10190B4F0);
  v13[1] = "Array16@NSError24";
  v13[2] = v11;
  static DispatchQoS.userInitiated.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_1001D6FF0(&qword_101909890, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000CE6B8(&unk_101917C30);
  sub_1000414C8(&qword_1019098A0, &unk_101917C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *(v3 + 48) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + 16) = v15;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t sub_1001D3CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1019066E0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100021540(v8, qword_10195FF40);
    swift_errorRetain();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412546;
      v13 = *(a5 + 16);
      *(v11 + 4) = v13;
      *v12 = v13;
      *(v11 + 12) = 2112;
      swift_errorRetain();
      v14 = v13;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v15;
      v12[1] = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to download image for collection: %@. %@.", v11, 0x16u);
      sub_1000CE6B8(&qword_1019144F0);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  return a6();
}

void sub_1001D3EC8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v11 = a2;
  v10 = a3;
  v9(a2, a3, a4, a5);
}

uint64_t sub_1001D3F6C()
{

  return swift_deallocClassInstance();
}

void sub_1001D3FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedCache];
  if (v5)
  {
    sub_1001D6940(a2, a3);
  }

  else
  {
    __break(1u);
  }
}

Swift::Int sub_1001D40B4()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001D4124()
{
  Hasher.init(_seed:)();
  v1 = *(*v0 + 16);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

id sub_1001D41A8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_homeResult] = 0;
  *&v4[OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_scrollIndex];
  *v9 = 0;
  v9[8] = 1;
  v10 = OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_currentContainerSize;
  v11 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_publisherGuideTileViewModels] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_visibleGuideCount] = 2;
  *&v4[OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_guideAspectRatio] = xmmword_1011EF3C0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for HomePublisherGuidesCollectionRowCell(0);
  return objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
}

size_t sub_1001D42F8()
{
  v1 = v0;
  v2 = type metadata accessor for PublisherGuideTileViewModel(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_homeResult];
  if (v6)
  {
    v7 = [v6 curatedCollections];
    sub_100014C84(0, &qword_10190D6B0);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      goto LABEL_20;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      while (1)
      {
        v10 = v8;
        v26 = &_swiftEmptyArrayStorage;
        result = sub_100511680(0, v9 & ~(v9 >> 63), 0);
        if (v9 < 0)
        {
          break;
        }

        v12 = 0;
        v8 = 0;
        v13 = v26;
        v14 = v10;
        v23 = v10 & 0xC000000000000001;
        v24 = v1;
        v21 = v10 & 0xFFFFFFFFFFFFFF8;
        v22 = v10;
        v1 = v9;
        while (1)
        {
          v15 = (v12 + 1);
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v23)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *(v21 + 16))
            {
              goto LABEL_19;
            }

            v16 = *(v14 + 8 * v12 + 32);
          }

          v17 = v16;
          v25 = v16;
          sub_1001D45C4(&v25, v24, v5);

          v26 = v13;
          v19 = v13[2];
          v18 = v13[3];
          if (v19 >= v18 >> 1)
          {
            sub_100511680(v18 > 1, v19 + 1, 1);
            v13 = v26;
          }

          v13[2] = v19 + 1;
          sub_1001D6B4C(v5, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19);
          ++v12;
          v14 = v22;
          if (v15 == v1)
          {

            v1 = v24;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        v9 = _CocoaArrayWrapper.endIndex.getter();
        if (!v9)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_21:

      v13 = &_swiftEmptyArrayStorage;
LABEL_22:
      *&v1[OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_publisherGuideTileViewModels] = v13;
    }
  }

  else
  {
    *&v0[OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_publisherGuideTileViewModels] = &_swiftEmptyArrayStorage;
  }

  return result;
}

id sub_1001D45C4@<X0>(void **a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v34 = a3;
  v5 = type metadata accessor for UUID();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_101911290);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for GuideTileViewModel.GuideType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = [objc_opt_self() sharedInstance];
  v17 = [v16 joeColorForCuratedCollection:v15];

  (*(v12 + 104))(v14, enum case for GuideTileViewModel.GuideType.publisher(_:), v11);
  v18 = [v15 collectionTitle];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = v15;
  [a2 bounds];
  v21 = v20 / *&a2[OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_visibleGuideCount];
  v22 = v21 * (*&a2[OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_guideAspectRatio + 8] / *&a2[OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_guideAspectRatio]);
  v23 = type metadata accessor for PublisherGuideCoverPhotoImageProvider();
  v24 = swift_allocObject();
  sub_1001D3A34(v19, v21, v22);
  v39 = v23;
  v40 = sub_1001D6FF0(&qword_101911298, v25, type metadata accessor for PublisherGuideCoverPhotoImageProvider);
  v38 = v24;
  v36 = &type metadata for PublisherGuideLogoImageProvider;
  v37 = sub_1001D6DA4();
  v35 = v19;
  v26 = type metadata accessor for PhotoFanViewModel();
  (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
  v27 = v19;
  v28 = v17;
  Color.init(_:)();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v32 + 8))(v7, v33);
  type metadata accessor for PublisherGuideTileViewModel(0);
  v29 = v34;
  GuideTileViewModel.init(id:_:title:subtitle:imageProvider:logoProvider:photoFanView:placeholderColor:)();

  *v29 = v27;
  return v27;
}

uint64_t sub_1001D4C34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v48 = a1;
  v52 = type metadata accessor for CellAction.Placement();
  v47 = *(v52 - 8);
  __chkstk_darwin(v52);
  v53 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for MapsDesignAccessibilityString();
  v46 = *(v51 - 8);
  __chkstk_darwin(v51);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for CellAction.Style();
  v44 = *(v49 - 8);
  __chkstk_darwin(v49);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PublisherGuideTileViewModel(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CE6B8(&unk_101923750);
  v13 = *(type metadata accessor for CellAction() - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v43 = *(v13 + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1011E1D60;
  v16 = swift_allocObject();
  v45 = v3;
  swift_unknownObjectWeakInit();
  sub_1001D6AE8(v48, v12);
  v17 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = *(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v40 = v17;
  v42 = v12;
  sub_1001D6B4C(v12, v19 + v17);
  *(v19 + v18) = v50;
  v20 = qword_101906768;

  if (v20 != -1)
  {
    swift_once();
  }

  v41 = v15;
  v34 = v15 + v14;
  v39.super.isa = qword_1019600D8;
  v54._object = 0x8000000101222A20;
  v21._countAndFlagsBits = 0x62755020776F6853;
  v21._object = 0xEE0072656873696CLL;
  v22._countAndFlagsBits = 0xD000000000000020;
  v22._object = 0x80000001012229F0;
  v54._countAndFlagsBits = 0xD000000000000023;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, qword_1019600D8, v21, v54);
  v32[2] = v23._countAndFlagsBits;
  v32[1] = v23._object;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1001D6BB0;
  *(v24 + 24) = v19;
  v38 = enum case for CellAction.Style.default(_:);
  v44 = *(v44 + 104);
  (v44)(v8);
  strcpy(v6, "ShowPublisher");
  *(v6 + 7) = -4864;
  v37 = enum case for MapsDesignAccessibilityString.button(_:);
  v33 = v8;
  v46 = *(v46 + 104);
  (v46)(v6);
  v36 = enum case for CellAction.Placement.default(_:);
  v47 = *(v47 + 104);
  (v47)(v53);
  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v42;
  sub_1001D6AE8(v48, v42);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  sub_1001D6B4C(v26, v27 + v40);
  *(v27 + v18) = v50;

  v55._object = 0x800000010121D3B0;
  v28._countAndFlagsBits = 0x6570697753776F52;
  v28._object = 0xEE0065726168535FLL;
  v29._countAndFlagsBits = 0x6572616853;
  v55._countAndFlagsBits = 0xD000000000000016;
  v29._object = 0xE500000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v39, v29, v55);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1001D6CC4;
  *(v30 + 24) = v27;
  (v44)(v33, v38, v49);
  *v6 = 0x6572616853;
  *(v6 + 1) = 0xE500000000000000;
  (v46)(v6, v37, v51);
  (v47)(v53, v36, v52);
  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();

  return v41;
}

void sub_1001D5364(uint64_t a1, uint64_t a2, id *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      v7 = *a3;
      v8 = [*a3 collectionIdentifier];
      v9 = [objc_allocWithZone(MKMapItemIdentifier) initWithGEOMapItemIdentifier:v8];

      v10 = OBJC_IVAR____TtC4Maps43HomeListCuratedCollectionsSectionController_curatedCollectionResolver;
      [*(v6 + OBJC_IVAR____TtC4Maps43HomeListCuratedCollectionsSectionController_curatedCollectionResolver) cancel];
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v7;
      *(v12 + 24) = v11;
      v13 = objc_allocWithZone(CuratedCollectionResolver);
      aBlock[4] = sub_1001D6D9C;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001D6880;
      aBlock[3] = &unk_1016096C0;
      v14 = _Block_copy(aBlock);
      v15 = v7;

      v16 = [v13 initWithCuratedCollectionIdentifier:v9 handler:v14];
      _Block_release(v14);

      v17 = *(v6 + v10);
      *(v6 + v10) = v16;

      if (v16)
      {
        v18 = v16;
        [v18 resolveCollectionIncludingCollectionDetails:0];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_1001D5574(uint64_t a1, uint64_t a2, void **a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      v7 = *a3;
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      v9 = [v7 collectionIdentifier];
      v10 = [objc_allocWithZone(MKMapItemIdentifier) initWithGEOMapItemIdentifier:v9];

      v11 = OBJC_IVAR____TtC4Maps43HomeListCuratedCollectionsSectionController_curatedCollectionResolver;
      [*(v6 + OBJC_IVAR____TtC4Maps43HomeListCuratedCollectionsSectionController_curatedCollectionResolver) cancel];
      v12 = swift_allocObject();
      v12[2] = v7;
      v12[3] = v8;
      v12[4] = v6;
      v13 = objc_allocWithZone(CuratedCollectionResolver);
      v20[4] = sub_1001D6D90;
      v20[5] = v12;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 1107296256;
      v20[2] = sub_1001D6880;
      v20[3] = &unk_101609648;
      v14 = _Block_copy(v20);
      v15 = v7;
      v16 = v8;
      swift_unknownObjectRetain();
      v17 = [v13 initWithCuratedCollectionIdentifier:v10 handler:v14];
      _Block_release(v14);

      v18 = *(v6 + v11);
      *(v6 + v11) = v17;

      v19 = v17;
      [v19 resolveCollection];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1001D577C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v25 = type metadata accessor for ColumnViewConfig();
  v3 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  v26 = *(v9 - 8);
  v27 = v9;
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v12 = a1;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  v15 = v12;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  sub_1000CE6B8(&qword_101922B10);
  Binding.init(get:set:)();
  v18 = [v15 contentView];
  [v18 frame];

  static MapsDesignConstants.ColumnViews.containerSize(for:)();
  v19 = *&v15[OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_publisherGuideTileViewModels];

  static MapsDesignConstants.ColumnViews.MapsHome.exploreGuidesColumnViewConfig(itemCount:containerSize:)();
  v20 = v25;
  (*(v3 + 16))(v5, v8, v25);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v15;
  v22 = v15;
  sub_1000CE6B8(&qword_1019112D8);
  sub_1001D6F30();
  ColumnView.init(config:scrollIndex:columnBuilder:)();
  (*(v3 + 8))(v8, v20);
  return (*(v26 + 8))(v11, v27);
}

void sub_1001D5AE0(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PublisherGuideTileViewModel(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v26 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GuideTileViewModel();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > a1)
  {
    v25 = a4;
    v15 = *(v9 + 80);
    v16 = a2 + ((v15 + 32) & ~v15) + *(v9 + 72) * a1;
    sub_1001D4C34(v16, a1);
    (*(v12 + 16))(v14, v16 + *(v8 + 20), v11);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = v26;
    sub_1001D6AE8(v16, v26);
    v19 = (v15 + 24) & ~v15;
    v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    sub_1001D6B4C(v18, v21 + v19);
    *(v21 + v20) = a1;
    v22 = v25;
    GuideTile.init(model:menuActions:tapHandler:)();
    v23 = *(a3 + OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_guideAspectRatio) / *(a3 + OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_guideAspectRatio + 8);
    v24 = v22 + *(sub_1000CE6B8(&qword_1019112D8) + 36);
    *v24 = v23;
    *(v24 + 8) = 0;
    return;
  }

  __break(1u);
}

void sub_1001D5D6C(uint64_t a1, void **a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectWeakLoadStrong();

    if (v7)
    {
      sub_100500414(*a2, a3);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1001D5DFC()
{
  v1 = sub_1000CE6B8(&qword_1019112A8);
  v42 = *(v1 - 8);
  v43 = v1;
  __chkstk_darwin(v1);
  v41 = &v35[-v2];
  v3 = sub_1000CE6B8(&qword_1019112B0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v35[-v5];
  v7 = sub_1000CE6B8(&qword_1019112B8);
  __chkstk_darwin(v7 - 8);
  v40 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v45 = &v35[-v10];
  __chkstk_darwin(v11);
  v13 = &v35[-v12];
  v14 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v37 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v35[-v18];
  v20 = type metadata accessor for HomePublisherGuidesCollectionRowCell(0);
  v48.receiver = v0;
  v48.super_class = v20;
  objc_msgSendSuper2(&v48, "layoutSubviews");
  v21 = [v0 contentView];
  [v21 frame];

  static MapsDesignConstants.ColumnViews.containerSize(for:)();
  v22 = v15[2];
  v44 = v19;
  v39 = v22;
  v22(v13, v19, v14);
  v38 = v15[7];
  v38(v13, 0, 1, v14);
  v23 = OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_currentContainerSize;
  swift_beginAccess();
  v24 = *(v4 + 56);
  sub_1001D6DF8(v13, v6);
  sub_1001D6DF8(v0 + v23, &v6[v24]);
  v46 = v15;
  v25 = v15[6];
  if (v25(v6, 1, v14) == 1)
  {
    sub_100024F64(v13, &qword_1019112B8);
    if (v25(&v6[v24], 1, v14) == 1)
    {
      sub_100024F64(v6, &qword_1019112B8);
      return (v46[1])(v44, v14);
    }

    goto LABEL_6;
  }

  sub_1001D6DF8(v6, v45);
  if (v25(&v6[v24], 1, v14) == 1)
  {
    sub_100024F64(v13, &qword_1019112B8);
    (v46[1])(v45, v14);
LABEL_6:
    sub_100024F64(v6, &qword_1019112B0);
LABEL_7:
    v27 = v40;
    v28 = v44;
    v39(v40, v44, v14);
    v38(v27, 0, 1, v14);
    swift_beginAccess();
    sub_1001D6E68(v27, v0 + v23);
    v29 = swift_endAccess();
    __chkstk_darwin(v29);
    *&v35[-16] = v0;
    sub_1000CE6B8(&qword_1019112C0);
    sub_1000414C8(&qword_1019112C8, &qword_1019112C0);
    v30 = v41;
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v31 = v43;
    v47[3] = v43;
    v47[4] = sub_1000414C8(&qword_1019112D0, &qword_1019112A8);
    sub_10001A848(v47);
    UIHostingConfiguration.margins(_:_:)();
    (*(v42 + 8))(v30, v31);
    UICollectionViewCell.contentConfiguration.setter();
    return (v46[1])(v28, v14);
  }

  v32 = v46;
  v33 = v37;
  (v46[4])(v37, &v6[v24], v14);
  sub_1001D6FF0(&qword_101922B90, 255, &type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize);
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  v34 = v32[1];
  v34(v33, v14);
  sub_100024F64(v13, &qword_1019112B8);
  v34(v45, v14);
  sub_100024F64(v6, &qword_1019112B8);
  if ((v36 & 1) == 0)
  {
    goto LABEL_7;
  }

  return (v34)(v44, v14);
}

id sub_1001D652C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePublisherGuidesCollectionRowCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001D65E8()
{
  sub_1001D66BC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001D66BC()
{
  if (!qword_1019111E8)
  {
    type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1019111E8);
    }
  }
}

uint64_t sub_1001D675C()
{
  result = sub_100014C84(319, &qword_10190D6B0);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GuideTileViewModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001D6880(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_100014C84(0, &qword_10190EC58);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a2;
  v9 = a4;
  v7(a2, v5, a4);
}

uint64_t sub_1001D6940(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 5);
  v7 = *(v3 + 2);
  v8 = v3[3];
  v9 = v3[4];
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = a1;
  v10[4] = a2;
  v13[4] = sub_1001D6A64;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1001D3EC8;
  v13[3] = &unk_101609530;
  v11 = _Block_copy(v13);

  [v6 loadGradientCoverImageWithCuratedCollection:v7 size:0 contentSizeCategory:8 usingImageSource:v11 completion:{v8, v9}];
  _Block_release(v11);
  return 1;
}

void sub_1001D6A70(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_homeResult);
  *(v1 + OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_homeResult) = a1;
  v3 = v2;
  if (a1)
  {
    if ([a1 isEqual:v2])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v2)
  {
LABEL_3:
    sub_1001D42F8();
  }

LABEL_4:
}

uint64_t sub_1001D6AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PublisherGuideTileViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D6B4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PublisherGuideTileViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D6BC8()
{
  v1 = (type metadata accessor for PublisherGuideTileViewModel(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = (v0 + v3);

  v6 = v1[7];
  v7 = type metadata accessor for GuideTileViewModel();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1001D6CDC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PublisherGuideTileViewModel(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v6, v2 + v5, v7);
}

unint64_t sub_1001D6DA4()
{
  result = qword_1019112A0;
  if (!qword_1019112A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019112A0);
  }

  return result;
}

uint64_t sub_1001D6DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_1019112B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D6E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_1019112B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1001D6EE0(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32) + OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_scrollIndex;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_1001D6F04(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(v1 + 32) + OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_scrollIndex;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

unint64_t sub_1001D6F30()
{
  result = qword_1019112E0;
  if (!qword_1019112E0)
  {
    sub_1000D6664(&qword_1019112D8);
    sub_1001D6FF0(&qword_1019112E8, 255, &type metadata accessor for GuideTile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019112E0);
  }

  return result;
}

uint64_t sub_1001D6FF0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1001D7038()
{
  v1 = *(type metadata accessor for PublisherGuideTileViewModel(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1001D5D6C(v3, (v0 + v2), v4);
}

void sub_1001D70C8()
{
  *(v0 + OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_homeResult) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_scrollIndex;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_currentContainerSize;
  v3 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_publisherGuideTileViewModels) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_visibleGuideCount) = 2;
  *(v0 + OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_guideAspectRatio) = xmmword_1011EF3C0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1001D71F8()
{
  result = qword_1019112F0;
  if (!qword_1019112F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019112F0);
  }

  return result;
}

unint64_t sub_1001D7250()
{
  result = qword_1019112F8;
  if (!qword_1019112F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019112F8);
  }

  return result;
}

Swift::Int sub_1001D72D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001D7338()
{
  Hasher._combine(_:)(*v0);

  return String.hash(into:)();
}

Swift::Int sub_1001D738C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001D73EC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_1001D7438()
{
  result = qword_101911300;
  if (!qword_101911300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911300);
  }

  return result;
}

uint64_t sub_1001D7498(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1001D74E0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1001D7558@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = type metadata accessor for MapsDesignAccessibilityString();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1000CE6B8(&qword_101911308);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v6 = &v18 - v5;
  v20 = sub_1000CE6B8(&qword_101911310);
  __chkstk_darwin(v20);
  v8 = &v18 - v7;
  v10 = v1[1];
  v37 = *v1;
  v9 = v37;
  v11 = v1[2];
  *&v33 = v10;
  *(&v33 + 1) = v11;
  v34 = *(v1 + 3);
  v35 = v1[5];

  sub_1000CE6B8(&qword_101911318);
  Binding.projectedValue.getter();
  v19 = v30;
  v18 = v31;
  v12 = v32;
  v36 = v10;
  v30 = *(v1 + 3);
  *&v31 = v1[5];
  v13 = swift_allocObject();
  v14 = *(v1 + 1);
  v13[1] = *v1;
  v13[2] = v14;
  v13[3] = *(v1 + 2);
  v29 = v9;
  v33 = v19;
  v34 = v18;
  v35 = v12;
  v25 = &v29;
  v26 = sub_1001D8308;
  v27 = v13;
  sub_1000D2DFC(&v37, v28, &qword_101911320);
  sub_1001D847C(&v36, v28);

  sub_1000D2DFC(&v30, v28, &qword_101911328);
  sub_1000CE6B8(&qword_101911330);
  sub_1001D84D8();
  sub_1001D852C();
  List.init(selection:content:)();

  sub_100024F64(&v37, &qword_101911320);
  *v4 = 0x72656B636950;
  v4[1] = 0xE600000000000000;
  v15 = v23;
  (*(v2 + 104))(v4, enum case for MapsDesignAccessibilityString.list(_:), v23);
  sub_1000414C8(&qword_101911370, &qword_101911308);
  v16 = v21;
  View.mapsDesignAXContainer(withID:)();
  (*(v2 + 8))(v4, v15);
  (*(v22 + 8))(v6, v16);
  sub_1001D86D0();
  View.listHasStackBehavior()();
  return sub_1000A93CC(v8);
}

uint64_t sub_1001D799C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v19[0] = type metadata accessor for MapsDesignAccessibilityString();
  v5 = *(v19[0] - 8);
  __chkstk_darwin(v19[0]);
  v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000CE6B8(&qword_101911348);
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = *a2;
  v23 = a2[1];
  v24 = v14;
  v21 = *(a2 + 3);
  v22 = a2[5];
  v15 = swift_allocObject();
  v16 = *(a2 + 1);
  *(v15 + 16) = *a2;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a2 + 2);
  *(v15 + 64) = v12;
  *(v15 + 72) = v11;
  *(v15 + 80) = v13;
  v19[4] = v12;
  v19[5] = v11;
  v19[6] = v13;
  v19[7] = a2;
  sub_1000D2DFC(&v24, v20, &qword_101911320);
  sub_1001D847C(&v23, v20);

  sub_1000D2DFC(&v21, v20, &qword_101911328);

  sub_1000CE6B8(&qword_101911398);
  sub_1000414C8(&qword_1019113A0, &qword_101911398);
  Button.init(action:label:)();
  *&v10[*(v8 + 36)] = static HierarchicalShapeStyle.primary.getter();
  *v7 = 0x6E6F6974704FLL;
  v7[1] = 0xE600000000000000;
  v17 = v19[0];
  (*(v5 + 104))(v7, enum case for MapsDesignAccessibilityString.button(_:), v19[0]);
  sub_1001D85EC();
  View.mapsDesignAXContainer(withID:)();
  (*(v5 + 8))(v7, v17);
  return sub_100024F64(v10, &qword_101911348);
}

uint64_t sub_1001D7C88()
{

  sub_1000CE6B8(&qword_101911318);
  return Binding.wrappedValue.setter();
}

uint64_t sub_1001D7CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = static VerticalAlignment.center.getter();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v10 = sub_1000CE6B8(&qword_1019113A8);
  return sub_1001D7D74(a1, a2, a3, a4, a5 + *(v10 + 44));
}

uint64_t sub_1001D7D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a1;
  v50 = a4;
  v57 = a5;
  v7 = sub_1000CE6B8(&qword_1019113B0);
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v46 = &v45 - v8;
  v9 = sub_1000CE6B8(&qword_1019113B8);
  __chkstk_darwin(v9 - 8);
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v55 = &v45 - v12;
  v13 = type metadata accessor for MapsDesignAccessibilityString();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000CE6B8(&qword_10191DF90);
  __chkstk_darwin(v17 - 8);
  v52 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  v47 = a2;
  *&v61 = a2;
  *(&v61 + 1) = a3;
  sub_1000E5580();
  v48 = a3;

  v22 = Text.init<A>(_:)();
  v24 = v23;
  *&v61 = v22;
  *(&v61 + 1) = v23;
  v26 = v25 & 1;
  LOBYTE(v62) = v25 & 1;
  *(&v62 + 1) = v27;
  v45 = *(v14 + 104);
  v45(v16, enum case for MapsDesignAccessibilityString.titleLabel(_:), v13);
  v51 = v21;
  v28 = v13;
  View.mapsDesignAXID(_:)();
  v29 = *(v14 + 8);
  v29(v16, v28);
  sub_1000F0A40(v22, v24, v26);

  v30 = *(v50 + 24);
  v61 = *(v50 + 8);
  v62 = v30;
  v63 = *(v50 + 5);
  sub_1000CE6B8(&qword_101911318);
  Binding.wrappedValue.getter();
  if (v60)
  {
    if (v58 == v49)
    {
      v50 = v29;
      if (v59 == v47 && v60 == v48)
      {

LABEL_9:
        v34 = Image.init(systemName:)();
        v35 = static Color.blue.getter();
        KeyPath = swift_getKeyPath();
        *&v61 = v34;
        *(&v61 + 1) = KeyPath;
        *&v62 = v35;
        v45(v16, enum case for MapsDesignAccessibilityString.selected(_:), v28);
        sub_1000CE6B8(&unk_10191E540);
        sub_1001C8FB4();
        v37 = v46;
        View.mapsDesignAXID(_:)();
        (v50)(v16, v28);

        v32 = v55;
        sub_1001D8880(v37, v55);
        v31 = 0;
        goto LABEL_10;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v33)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v31 = 1;
  v32 = v55;
LABEL_10:
  (*(v53 + 56))(v32, v31, 1, v54);
  v39 = v51;
  v38 = v52;
  sub_1000D2DFC(v51, v52, &qword_10191DF90);
  v40 = v56;
  sub_1000D2DFC(v32, v56, &qword_1019113B8);
  v41 = v57;
  sub_1000D2DFC(v38, v57, &qword_10191DF90);
  v42 = sub_1000CE6B8(&unk_1019113C0);
  v43 = v41 + *(v42 + 48);
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_1000D2DFC(v40, v41 + *(v42 + 64), &qword_1019113B8);
  sub_100024F64(v32, &qword_1019113B8);
  sub_100024F64(v39, &qword_10191DF90);
  sub_100024F64(v40, &qword_1019113B8);
  return sub_100024F64(v38, &qword_10191DF90);
}

uint64_t sub_1001D8310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_1000CE6B8(&qword_101911320);
  sub_1000CE6B8(&qword_101911380);
  sub_1000414C8(&qword_101911388, &qword_101911320);
  sub_1000D6664(&qword_101911348);
  sub_1001D85EC();
  swift_getOpaqueTypeConformance2();
  sub_1001D8810();
  return ForEach<>.init(_:content:)();
}

unint64_t sub_1001D84D8()
{
  result = qword_101911338;
  if (!qword_101911338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911338);
  }

  return result;
}

unint64_t sub_1001D852C()
{
  result = qword_101911340;
  if (!qword_101911340)
  {
    sub_1000D6664(&qword_101911330);
    sub_1000D6664(&qword_101911348);
    sub_1001D85EC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911340);
  }

  return result;
}

unint64_t sub_1001D85EC()
{
  result = qword_101911350;
  if (!qword_101911350)
  {
    sub_1000D6664(&qword_101911348);
    sub_1000414C8(&qword_101911358, &qword_101911360);
    sub_1000414C8(&qword_101911368, &qword_101916750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911350);
  }

  return result;
}

unint64_t sub_1001D86D0()
{
  result = qword_101911378;
  if (!qword_101911378)
  {
    sub_1000D6664(&qword_101911310);
    sub_1000D6664(&qword_101911308);
    sub_1000414C8(&qword_101911370, &qword_101911308);
    swift_getOpaqueTypeConformance2();
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911378);
  }

  return result;
}

uint64_t sub_1001D87CC(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 2);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

unint64_t sub_1001D8810()
{
  result = qword_101911390;
  if (!qword_101911390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911390);
  }

  return result;
}

uint64_t sub_1001D8880(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_1019113B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D8938@<X0>(uint64_t *a1@<X8>)
{
  v3 = static HorizontalAlignment.center.getter();
  a1[3] = sub_1000CE6B8(&qword_101911418);
  a1[4] = sub_1000414C8(&qword_101911420, &qword_101911418);
  v4 = sub_10001A848(a1);
  *v4 = v3;
  v4[1] = 0;
  *(v4 + 16) = 0;
  v5 = sub_1000CE6B8(&qword_101911428);
  return sub_1001D89F4(v1, v4 + *(v5 + 44));
}

uint64_t sub_1001D89F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v83 = a2;
  v3 = type metadata accessor for MapStylePicker();
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v77 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&unk_101911430);
  v81 = *(v5 - 8);
  v82 = v5;
  __chkstk_darwin(v5);
  v80 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v84 = v61 - v8;
  v9 = type metadata accessor for MapsDesignAccessibilityString();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v66 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CardHeaderSize();
  v72 = *(v12 - 8);
  v73 = v12;
  __chkstk_darwin(v12);
  v71 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v14 - 8);
  v64 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v61 - v17;
  __chkstk_darwin(v19);
  v21 = v61 - v20;
  v22 = type metadata accessor for CardHeaderTextViewModel();
  __chkstk_darwin(v22 - 8);
  v67 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  __chkstk_darwin(v24 - 8);
  v65 = v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for CenteredCardHeaderNavigation();
  v69 = *(v26 - 8);
  v70 = v26;
  __chkstk_darwin(v26);
  v68 = v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000CE6B8(&unk_101911440);
  v75 = *(v28 - 8);
  v76 = v28;
  __chkstk_darwin(v28);
  v74 = v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v85 = v61 - v31;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v86._object = 0x8000000101222C00;
  v32._countAndFlagsBits = 0x65646F4D2070614DLL;
  v33._object = 0x8000000101222BE0;
  v86._countAndFlagsBits = 0xD00000000000001ELL;
  v33._countAndFlagsBits = 0xD00000000000001BLL;
  v32._object = 0xE900000000000073;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, qword_1019600D8, v32, v86);
  v61[2] = v34._countAndFlagsBits;
  v61[1] = v34._object;
  if (*(a1 + OBJC_IVAR____TtC4Maps37MapStylePickerContaineeViewController_debugPanelEnabled) == 1)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
  }

  v63 = v10;
  v35 = *(v10 + 104);
  v35(v21, enum case for MapsDesignAccessibilityString.titleLabel(_:), v9);
  v61[0] = a1;
  v36 = *(v10 + 56);
  v36(v21, 0, 1, v9);
  v37 = v35;
  v35(v18, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v9);
  v36(v18, 0, 1, v9);
  v38 = v64;
  v37(v64, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v9);
  v62 = v37;
  v36(v38, 0, 1, v9);
  static HorizontalAlignment.center.getter();
  CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
  v39 = v61[0];
  sub_1001D955C();
  (*(v72 + 104))(v71, enum case for CardHeaderSize.medium(_:), v73);
  CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
  v40 = v68;
  CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
  v41 = v66;
  *v66 = 0x7365646F4D70614DLL;
  *(v41 + 1) = 0xE800000000000000;
  v37(v41, enum case for MapsDesignAccessibilityString.header(_:), v9);
  sub_1001DA1AC(&qword_10190CC10, &type metadata accessor for CenteredCardHeaderNavigation);
  v42 = v70;
  View.mapsDesignAXContainer(withID:)();
  v43 = *(v63 + 8);
  v43(v41, v9);
  (*(v69 + 8))(v40, v42);
  sub_1000CE6B8(&qword_101911450);
  type metadata accessor for MapStylePicker.Option();
  *(swift_allocObject() + 16) = xmmword_1011E7D60;
  static MapStylePicker.Option.mapsAppExplore.getter();
  static MapStylePicker.Option.mapsAppDriving.getter();
  static MapStylePicker.Option.mapsAppTransit.getter();
  static MapStylePicker.Option.mapsAppSatellite.getter();
  v44 = *(v39 + OBJC_IVAR____TtC4Maps37MapStylePickerContaineeViewController_mapView);
  v45 = v77;
  MapStylePicker.init(options:mapView:)();
  strcpy(v41, "MapStylePicker");
  v41[15] = -18;
  v62(v41, enum case for MapsDesignAccessibilityString.custom(_:), v9);
  sub_1001DA1AC(&qword_101911458, &type metadata accessor for MapStylePicker);
  v46 = v84;
  v47 = v79;
  View.mapsDesignAXContainer(withID:)();
  v43(v41, v9);
  (*(v78 + 8))(v45, v47);
  v48 = v74;
  v49 = v75;
  v50 = *(v75 + 16);
  v51 = v76;
  v50(v74, v85, v76);
  v53 = v80;
  v52 = v81;
  v79 = *(v81 + 16);
  v54 = v46;
  v55 = v82;
  v79(v80, v54, v82);
  v56 = v83;
  v50(v83, v48, v51);
  v57 = sub_1000CE6B8(&unk_101911460);
  v79(&v56[*(v57 + 48)], v53, v55);
  v58 = *(v52 + 8);
  v58(v84, v55);
  v59 = *(v49 + 8);
  v59(v85, v51);
  v58(v53, v55);
  return (v59)(v48, v51);
}

void sub_1001D94D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v2 mapStylePickerContaineeViewControllerPresentDebugPanelIfEnabledWithViewController:v1];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void *sub_1001D955C()
{
  if (!sub_100013EAC(v0) && !sub_1000145C8(v0))
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E1D30;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  static CardButtonViewModel.close(tintColor:enabled:action:)();

  return v1;
}

id sub_1001D9778()
{
  result = [objc_opt_self() sharedService];
  if (result)
  {
    v2 = result;
    [result captureUserAction:4 onTarget:601 eventValue:0];

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result mapStylePickerContaineeViewControllerWantsDismissWithViewController:v0];

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

int *sub_1001D9910@<X0>(uint64_t a1@<X8>)
{
  v3 = 0x4074000000000000;
  if (sub_1000145C8(v1))
  {
    v4 = 0;
  }

  else if ([PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v1))
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 2;
  }

  sub_1000CE6B8(&unk_10190B9A0);
  type metadata accessor for UIHostingControllerSizingOptions();
  *(swift_allocObject() + 16) = xmmword_1011E1D60;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  sub_1001DA1AC(&qword_10190DE70, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_1000CE6B8(&unk_10190B9B0);
  sub_1000414C8(&qword_10190DE80, &unk_10190B9B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  *(a1 + result[5]) = 1;
  v6 = a1 + result[6];
  *v6 = v3;
  *(v6 + 8) = v4;
  *(a1 + result[7]) = 0;
  return result;
}

void sub_1001D9AF4()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v1 = [PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v0);
  v2 = [v0 cardPresentationController];
  v3 = v2;
  if (v1)
  {
    if (v2)
    {
      v4 = &selRef_setAllowResizeInFloatingStyle_;
LABEL_9:
      [v3 *v4];

      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (!v2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v2 setPresentedModally:1];

  v5 = [v0 cardPresentationController];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  [v5 setDefaultContaineeLayout:5];

  v7 = [v0 cardPresentationController];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  [v7 setTakesAvailableHeight:1];

  v9 = [v0 cardPresentationController];
  if (v9)
  {
    v3 = v9;
    v4 = &selRef_setUseDefaultLayoutWhenCalculatingBottomInsetForFloatingControls_;
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1001D9CAC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v3[3] = type metadata accessor for MapStylePickerContaineeViewController();
    v3[0] = v1;
    v2 = v1;
    sub_1001D9778();

    return sub_10004E3D0(v3);
  }

  return result;
}

void sub_1001D9D1C(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillDisappear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC4Maps37MapStylePickerContaineeViewController_mapView];
  v4 = *&v1[OBJC_IVAR____TtC4Maps37MapStylePickerContaineeViewController_previousMapConfiguration];
  v5 = [v3 preferredConfiguration];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong mapStylePickerContaineeViewControllerDidChangeMapTypeWithViewController:v1 mapType:objc_msgSend(v3 skipConfiguration:{"mapType"), 0}];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1001D9EA4()
{
  v1 = v0 + OBJC_IVAR____TtC4Maps37MapStylePickerContaineeViewController_delegate;

  return sub_1000A09E0(v1);
}

id sub_1001D9FE0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC4Maps37MapStylePickerContaineeViewController_debugPanelEnabled;
  v1[v4] = sub_10078A958();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR____TtC4Maps37MapStylePickerContaineeViewController_mapView] = a1;
  v5 = [a1 preferredConfiguration];
  *&v1[OBJC_IVAR____TtC4Maps37MapStylePickerContaineeViewController_previousMapConfiguration] = v5;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

void sub_1001DA0A4(void *a1)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC4Maps37MapStylePickerContaineeViewController_previousMapConfiguration;
    v4 = *(v1 + OBJC_IVAR____TtC4Maps37MapStylePickerContaineeViewController_previousMapConfiguration);
    v5 = [a1 preferredConfiguration];
    v6 = [v4 isEqual:v5];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong mapStylePickerContaineeViewControllerDidChangeMapTypeWithViewController:v1 mapType:objc_msgSend(a1 skipConfiguration:{"mapType"), v6}];
      swift_unknownObjectRelease();
    }

    v8 = [a1 preferredConfiguration];
    v9 = *(v1 + v3);
    *(v1 + v3) = v8;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001DA1AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001DA204@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1001DCCDC(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v1 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__state;
  v4 = *(v1 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__state);
  v5 = *(v1 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__state + 8);
  v6 = *(v1 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__state + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
}

uint64_t sub_1001DA2F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001DCCDC(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__state;
  v5 = *(v3 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__state);
  v6 = *(v3 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__state + 8);
  v7 = *(v3 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__state + 16);
  v8 = *(v3 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__state + 24);
  v9 = *(v4 + 32);
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
}

uint64_t sub_1001DA3E4()
{
  swift_getKeyPath();
  sub_1001DCCDC(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001DA4C0(uint64_t a1, void *a2)
{
  v2 = *a2;
  v12 = a2[1];
  v13 = v2;
  v3 = a2[2];
  v10 = a2[3];
  v11 = v3;
  v9 = a2[4];
  v4 = v9;
  v5 = a1 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__state;
  v6 = *(a2 + 1);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = v4;
  sub_1000D2DFC(&v13, &v8, &qword_1019115D0);
  sub_1000D2DFC(&v12, &v8, &qword_1019115D8);
  sub_1000D2DFC(&v11, &v8, &unk_1019115E0);
  sub_1000D2DFC(&v10, &v8, &qword_101916460);
  sub_1000D2DFC(&v9, &v8, &unk_1019115F0);
}

uint64_t sub_1001DA5EC()
{
  swift_getKeyPath();
  sub_1001DCCDC(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1001DA698@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001DCCDC(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__recents);
}

uint64_t sub_1001DA74C()
{
  swift_getKeyPath();
  sub_1001DCCDC(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001DA818()
{
  swift_getKeyPath();
  sub_1001DCCDC(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1001DA8C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001DCCDC(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__recentsStreamTask);
}

uint64_t sub_1001DA978(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps19CarHomeDataProvider__recentsStreamTask;
  if (!*(v1 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__recentsStreamTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001DCCDC(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = static Task.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

void sub_1001DAB08()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC4Maps19CarHomeDataProvider__recentsStreamTask] = 0;
  ObservationRegistrar.init()();
  *&v0[OBJC_IVAR____TtC4Maps19CarHomeDataProvider__recents] = _swiftEmptyArrayStorage;
  v2 = type metadata accessor for MyRecentsDataProvider(0);
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_continuation;
  v5 = sub_1000CE6B8(&unk_101911600);
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  v3[OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_includeRecentSearches] = 0;
  v6 = [objc_allocWithZone(RecentsDataProvider) init];
  *&v3[OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_recentsDataProvider] = v6;
  v7 = [objc_allocWithZone(RecentsDataFilter) initWithSearchMode:1 filterPredicate:0];
  *&v3[OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_recentsDataFilter] = v7;
  v33.receiver = v3;
  v33.super_class = v2;
  v8 = objc_msgSendSuper2(&v33, "init");
  v9 = *&v8[OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_recentsDataProvider];
  v10 = v8;
  v11 = [v9 observers];
  [v11 registerObserver:v10];

  *&v0[OBJC_IVAR____TtC4Maps19CarHomeDataProvider_recentsDataProvider] = v10;
  v12 = [objc_allocWithZone(SharedTripsDataProvider) initWithCombineAllTrips:0];
  *&v0[OBJC_IVAR____TtC4Maps19CarHomeDataProvider_sharedTripsDataProvider] = v12;
  v13 = [objc_allocWithZone(CollectionsDataProvider) initWithContext:4 observeInfo:1 observeContents:1];
  *&v0[OBJC_IVAR____TtC4Maps19CarHomeDataProvider_userGuidesDataProvider] = v13;
  v14 = &v0[OBJC_IVAR____TtC4Maps19CarHomeDataProvider__state];
  *v14 = _swiftEmptyArrayStorage;
  v14[1] = _swiftEmptyArrayStorage;
  v14[2] = _swiftEmptyArrayStorage;
  v14[3] = _swiftEmptyArrayStorage;
  v14[4] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR____TtC4Maps19CarHomeDataProvider__isActive] = 0;
  v32.receiver = v0;
  v32.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v32, "init");
  sub_1000CE6B8(&qword_101908400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E47C0;
  if (qword_1019066C8 != -1)
  {
    swift_once();
  }

  v17 = qword_10195FEF8;
  *(inited + 32) = qword_10195FEF8;
  v18 = *&v15[OBJC_IVAR____TtC4Maps19CarHomeDataProvider_sharedTripsDataProvider];
  *(inited + 40) = v18;
  v19 = *&v15[OBJC_IVAR____TtC4Maps19CarHomeDataProvider_userGuidesDataProvider];
  *(inited + 48) = v19;
  v20 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v21 = v17;
    v22 = v18;
    v23 = v19;
    swift_unknownObjectRetain();
  }

  v24 = [v21 observers];
  [v24 registerObserver:v15];
  swift_unknownObjectRelease();

  if (!v20)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v25 = *(inited + 40);
      swift_unknownObjectRetain();
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
  v26 = [v25 observers];
  [v26 registerObserver:v15];
  swift_unknownObjectRelease();

  if (v20)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:

    v28 = [v27 observers];
    [v28 registerObserver:v15];
    swift_unknownObjectRelease();

    return;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v27 = *(inited + 48);
    swift_unknownObjectRetain();
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1001DAF10(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__isActive) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__isActive) = a1 & 1;

    sub_1001DB408();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001DCCDC(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_1001DB070()
{
  ObjectType = swift_getObjectType();
  if (qword_1019066C8 != -1)
  {
    swift_once();
  }

  v2 = v0;
  v3 = sub_1002E2C5C();
  [v3 unregisterObserver:v2];

  v5.receiver = v2;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for CarHomeDataProvider()
{
  result = qword_101911538;
  if (!qword_101911538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001DB338()
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

void sub_1001DB408()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = v33 - v3;
  sub_1000CE6B8(&qword_101908400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E47C0;
  if (qword_1019066C8 != -1)
  {
    swift_once();
  }

  v6 = qword_10195FEF8;
  *(inited + 32) = qword_10195FEF8;
  v7 = *&v0[OBJC_IVAR____TtC4Maps19CarHomeDataProvider_sharedTripsDataProvider];
  *(inited + 40) = v7;
  v8 = *&v0[OBJC_IVAR____TtC4Maps19CarHomeDataProvider_userGuidesDataProvider];
  *(inited + 48) = v8;
  v9 = inited & 0xC000000000000001;
  v33[0] = v4;
  v33[1] = v6;
  if ((inited & 0xC000000000000001) != 0)
  {
    v30 = v6;
    v31 = v7;
    v32 = v8;
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v10 = v6;
    v11 = v7;
    v12 = v8;
    swift_unknownObjectRetain();
  }

  swift_getKeyPath();
  v34 = v1;
  sub_1001DCCDC(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC4Maps19CarHomeDataProvider__isActive;
  [v10 setActive:v1[OBJC_IVAR____TtC4Maps19CarHomeDataProvider__isActive]];
  swift_unknownObjectRelease();
  if (v9)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v14 = *(inited + 40);
  swift_unknownObjectRetain();
LABEL_10:
  swift_getKeyPath();
  v34 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [v14 setActive:v1[v13]];
  swift_unknownObjectRelease();
  if (v9)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = *(inited + 48);
  swift_unknownObjectRetain();
LABEL_14:

  swift_getKeyPath();
  v34 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [v15 setActive:v1[v13]];
  swift_unknownObjectRelease();
  swift_getKeyPath();
  v34 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v1[v13] != 1)
  {
    swift_getKeyPath();
    v34 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*&v1[OBJC_IVAR____TtC4Maps19CarHomeDataProvider__recentsStreamTask])
    {

      Task.cancel()();
    }

    v26 = [objc_opt_self() sharedInstance];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 mapsSuggestionsController];

      if (v28)
      {
        [v28 unregisterObserver:v1];

        v29 = sub_1002E2C5C();
        [v29 unregisterObserver:v1];

        return;
      }

      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v16 = [objc_opt_self() sharedInstance];
  if (!v16)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v17 = v16;
  v18 = [v16 mapsSuggestionsController];

  if (!v18)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  [v18 registerObserver:v1];

  v19 = sub_1002E2C5C();
  [v19 registerObserver:v1];

  swift_getKeyPath();
  v34 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*&v1[OBJC_IVAR____TtC4Maps19CarHomeDataProvider__recentsStreamTask])
  {

    Task.cancel()();
  }

  sub_1001DBAA0();
  v20 = type metadata accessor for TaskPriority();
  v21 = v33[0];
  (*(*(v20 - 8) + 56))(v33[0], 1, 1, v20);
  type metadata accessor for MainActor();
  v22 = v1;
  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = &protocol witness table for MainActor;
  v24[4] = v22;
  v25 = sub_10020AAE4(0, 0, v21, &unk_1011EFA80, v24);
  sub_1001DA978(v25);
}

uint64_t sub_1001DB9F8()
{
  swift_getKeyPath();
  sub_1001DCCDC(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__isActive);
}

void sub_1001DBAA0()
{
  v1 = v0;
  v2 = swift_allocObject();
  v3 = _swiftEmptyArrayStorage;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v4 = [objc_opt_self() sharedInstance];
  if (!v4)
  {
    __break(1u);
    goto LABEL_23;
  }

  v5 = v4;
  v6 = [v4 mapsSuggestionsController];

  if (!v6)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v7 = [v6 suggestions];

  v31 = sub_1001DC9A0;
  v32 = v2;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_1001DC680;
  v30 = &unk_101609A80;
  v8 = _Block_copy(&aBlock);

  v31 = UIView.annotateView(with:);
  v32 = 0;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_1001DC680;
  v30 = &unk_101609AA8;
  v9 = _Block_copy(&aBlock);
  MapsSuggestionsShortcutSplit();
  _Block_release(v9);
  _Block_release(v8);

  if (qword_1019066C8 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v26 = sub_10009006C();
    swift_getKeyPath();
    aBlock = v1;
    sub_1001DCCDC(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = *(v1 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider_sharedTripsDataProvider);
    v25 = *(v1 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__recents);

    v11 = [v10 sharedTripSummaries];
    sub_100014C84(0, &unk_1019115C0);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = [*(v1 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider_userGuidesDataProvider) collections];
    sub_100014C84(0, &qword_101922CC0);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = v3;
    if (v13 >> 62)
    {
      break;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_20;
    }

LABEL_6:
    v23 = v2;
    v15 = 0;
    v2 = v13 & 0xC000000000000001;
    while (1)
    {
      if (v2)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = objc_allocWithZone(type metadata accessor for UserGuide(0));
      sub_100393FB8(v17);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v3 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3 >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v15;
      if (v18 == v14)
      {
        v20 = aBlock;
        v2 = v23;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  if (v14)
  {
    goto LABEL_6;
  }

LABEL_20:
  v20 = _swiftEmptyArrayStorage;
LABEL_21:

  swift_beginAccess();
  v21 = *(v2 + 16);
  aBlock = v26;
  v28 = v21;
  v29 = v24;
  v30 = v25;
  v31 = v20;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001DBFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1000CE6B8(&qword_1019115B0);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_1000CE6B8(&qword_1019115B8);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v8;
  v4[14] = v7;

  return _swift_task_switch(sub_1001DC154, v8, v7);
}

uint64_t sub_1001DC154()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_100273F80();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[15] = OBJC_IVAR____TtC4Maps19CarHomeDataProvider___observationRegistrar;
  v0[16] = 0;
  v4 = static MainActor.shared.getter();
  v0[17] = v4;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1001DC274;
  v6 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v4, &protocol witness table for MainActor, v6);
}

uint64_t sub_1001DC274()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1001DC3B8, v3, v2);
}

uint64_t sub_1001DC3B8()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[16];
    v3 = v0[4];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = v1;
    v0[3] = v3;
    sub_1001DCCDC(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1001DBAA0();
    v0[16] = v2;
    v5 = static MainActor.shared.getter();
    v0[17] = v5;
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_1001DC274;
    v7 = v0[8];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, v5, &protocol witness table for MainActor, v7);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1001DC610(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  *(a3 + 16) = v4;
}

uint64_t sub_1001DC680(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100014C84(0, &qword_101912650);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1001DC84C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1001DBFE8(a1, v4, v5, v6);
}

uint64_t sub_1001DC900()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__recentsStreamTask) = *(v0 + 24);
}

uint64_t sub_1001DC95C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__recents) = *(v0 + 24);
}

uint64_t sub_1001DCA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = v18;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1001DCCDC(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v19);
}

uint64_t sub_1001DCCDC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1001DD208()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransitSchedulesContext();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001DD2BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v28 = a4;
  v9 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v27[-v10];
  v12 = sub_1000CE6B8(&unk_10190A800);
  __chkstk_darwin(v12 - 8);
  v14 = &v27[-v13];
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC4Maps23TransitSchedulesContext_incidentsViewController] = 0;
  sub_1000D2DFC(a2, v14, &unk_10190A800);
  sub_1000D2DFC(a3, v11, &qword_10190EBD0);
  v15 = type metadata accessor for TimeZone();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);
  swift_unknownObjectRetain();
  isa = 0;
  if (v17 != 1)
  {
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v16 + 8))(v14, v15);
  }

  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v11, 1, v19) != 1)
  {
    v21 = Date._bridgeToObjectiveC()().super.isa;
    (*(v20 + 8))(v11, v19);
  }

  v22 = objc_allocWithZone(TransitSchedulesViewController);
  v23 = [v22 initWithDepartureSequence:a1 timeZone:isa scheduleWindowStartDate:v21 includeAllDirections:v28 & 1];
  swift_unknownObjectRelease();

  *&v5[OBJC_IVAR____TtC4Maps23TransitSchedulesContext_viewController] = v23;
  v24 = type metadata accessor for TransitSchedulesContext();
  v29.receiver = v5;
  v29.super_class = v24;
  v25 = objc_msgSendSuper2(&v29, "init");
  sub_100024F64(a3, &qword_10190EBD0);
  sub_100024F64(a2, &unk_10190A800);
  return v25;
}

int *MapsHostingContaineeViewController.hostingControllerOptions()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UIHostingControllerSizingOptions();
  sub_1001D2F9C();
  sub_1000CE6B8(&unk_10190B9B0);
  sub_1000414C8(&qword_10190DE80, &unk_10190B9B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  *(a1 + result[5]) = 0;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 8) = 2;
  *(a1 + result[7]) = 0;
  return result;
}

id MapsHostingContaineeViewController.updateCardExpansionProgress()()
{
  v1 = v0;
  v2 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v2);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CardHeaderExpansionState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v43 - v10;
  __chkstk_darwin(v12);
  v14 = v43 - v13;
  if ([PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v1))
  {
    (*(v6 + 104))(v14, enum case for CardHeaderExpansionState.Expanded(_:), v5);
    CardHeaderExpansionState.rawValue.getter();
    (*(v6 + 8))(v14, v5);
LABEL_15:
    UIViewController.traitOverrides.getter();
    sub_1001DF8CC();
    dispatch thunk of UIMutableTraits.subscript.setter();
    return UIViewController.traitOverrides.setter();
  }

  v43[1] = v4;
  result = [v1 cardPresentationController];
  if (!result)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = result;
  v17 = [result containerStyle];

  result = [v1 cardPresentationController];
  v18 = result;
  if (v17 == 4)
  {
    v43[0] = v2;
    if (result)
    {
      [result transitionProgressFromLayout:1 toLayout:{3, v43[0]}];
      v20 = v19;

      v21 = enum case for CardHeaderExpansionState.Mini(_:);
      v22 = *(v6 + 104);
      v22(v14, enum case for CardHeaderExpansionState.Mini(_:), v5);
      CardHeaderExpansionState.rawValue.getter();
      v24 = v23;
      v25 = *(v6 + 8);
      v25(v14, v5);
      v22(v11, enum case for CardHeaderExpansionState.Expanded(_:), v5);
      CardHeaderExpansionState.rawValue.getter();
      v27 = v26;
      v25(v11, v5);
      v22(v8, v21, v5);
      CardHeaderExpansionState.rawValue.getter();
      v29 = v28;
      v25(v8, v5);
      v30 = v24 + v20 * (v27 - v29);
LABEL_10:
      if (qword_1019065B8 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_100021540(v36, qword_101911660);
      v37 = v1;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412546;
        *(v40 + 4) = v37;
        *v41 = v1;
        *(v40 + 12) = 2048;
        *(v40 + 14) = v30;
        v42 = v37;
        _os_log_impl(&_mh_execute_header, v38, v39, "%@ transitionProgress: %f", v40, 0x16u);
        sub_1000DCD10(v41);
      }

      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [result transitionProgressFromLayout:1 toLayout:2];
  v32 = v31;

  result = [v1 cardPresentationController];
  if (result)
  {
    v33 = result;
    [result transitionProgressFromLayout:2 toLayout:3];
    v35 = v34;

    v30 = v32 + v35;
    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return result;
}

id MapsHostingContaineeViewController.createHostingViewController()()
{
  v1 = type metadata accessor for UIHostingControllerSizingOptions();
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0xA0))(v29, v5);
  v8 = v29[4];
  sub_10005E838(v29, v29[3]);
  sub_1000D6664(&qword_101911780);
  v9 = type metadata accessor for ModifiedContent();
  __chkstk_darwin(v9);
  swift_getKeyPath();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = sub_1001DF9FC;
  v28 = v10;

  View.environment<A>(_:_:)();

  v11 = sub_1000414C8(&qword_101911788, &qword_101911780);
  v25 = v8;
  v26 = v11;
  swift_getWitnessTable();
  v12 = AnyView.init<A>(_:)();
  v13 = sub_10004E3D0(v29);
  v14 = *((swift_isaMask & *v0) + 0x90);
  (v14)(v13);
  v15 = v7[*(v4 + 36)];
  sub_1001DE2F0(v7);
  if (v15 == 1)
  {
    v16 = objc_allocWithZone(sub_1000CE6B8(&qword_101911790));
    v29[0] = v12;
  }

  else
  {
    v29[0] = v12;
    v17 = objc_allocWithZone(sub_1000CE6B8(&unk_10190DEB8));
  }

  v18 = UIHostingController.init(rootView:)();
  v14();
  (*(v23 + 32))(v22, v7, v24);
  dispatch thunk of UIHostingController.sizingOptions.setter();

  result = [v18 view];
  if (result)
  {
    v20 = result;
    v21 = [objc_opt_self() clearColor];
    [v20 setBackgroundColor:v21];

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void MapsHostingContaineeViewController.updatePopoverWindowDimensionsIfNeeded()()
{
  v1 = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  v2 = v1 - 8;
  v3 = __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x90))(v3);
  v6 = &v5[*(v2 + 32)];
  v7 = *v6;
  v8 = v6[8];
  sub_1001DE2F0(v5);
  if (v8 == 2)
  {
    return;
  }

  [v0 heightForLayout:2];
  v10 = v9;
  if (![PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v0) && !sub_1000145C8(v0))
  {
    return;
  }

  if ((v8 & 1) == 0)
  {
    [v0 setPreferredContentSize:{v7, v10}];
    return;
  }

  v11 = [v0 view];
  if (!v11)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 window];

  if (v13)
  {
    v14 = [v13 windowScene];

    if (v14)
    {
      v15 = [v14 sizeRestrictions];

      if (v15)
      {
        [v15 setMinimumSize:{v7, v10}];
      }
    }
  }

  v16 = [v0 view];
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v18 = [v16 window];

  if (v18)
  {
    v19 = [v18 windowScene];

    if (v19)
    {
      v20 = [v19 sizeRestrictions];

      if (v20)
      {
        [v20 setMaximumSize:{v7, v10}];
      }
    }
  }
}

double sub_1001DE1F8()
{
  sub_1001DF920();
  EnvironmentValues.subscript.getter();
  return v1;
}

Swift::Bool __swiftcall MapsHostingContaineeViewController._canShowWhileLocked()()
{
  v1 = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  v2 = v1 - 8;
  v3 = __chkstk_darwin(v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x90))(v3);
  LOBYTE(v2) = v5[*(v2 + 36)];
  sub_1001DE2F0(v5);
  return v2;
}

uint64_t sub_1001DE2F0(uint64_t a1)
{
  v2 = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall MapsHostingContaineeViewController.viewDidLoad()()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for MapsHostingContaineeViewController();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = MapsHostingContaineeViewController.createHostingViewController()();
  v2 = *&v0[OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_hostingController];
  *&v0[OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_hostingController] = v1;
  v3 = v1;

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v4;
  v6 = v3;
  v7 = [v6 view];
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  [v5 addSubview:v7];

  [v0 addChildViewController:v6];
  [v6 didMoveToParentViewController:v0];
  v9 = [v6 view];

  if (v9)
  {
    v10 = [objc_allocWithZone(MUEdgeLayout) initWithItem:v9 container:v5];

    [v10 activate];
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_1001DE5E8(char a1, SEL *a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for MapsHostingContaineeViewController();
  objc_msgSendSuper2(&v6, *a2, a1 & 1);
  return MapsHostingContaineeViewController.updateCardExpansionProgress()();
}

void sub_1001DE644(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for MapsHostingContaineeViewController();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  MapsHostingContaineeViewController.updateCardExpansionProgress()();
}

void MapsHostingContaineeViewController.height(for:)(uint64_t a1)
{
  v3 = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v1) + 0x90))(v5);
  LODWORD(v4) = v7[*(v4 + 28)];
  sub_1001DE2F0(v7);
  if (v4 != 1)
  {
    v21 = type metadata accessor for MapsHostingContaineeViewController();
    v22.receiver = v1;
    v22.super_class = v21;
    objc_msgSendSuper2(&v22, "heightForLayout:", a1);
    return;
  }

  v8 = *(v1 + OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_hostingController);
  if (v8)
  {
    v9 = [v8 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v1 view];
      if (v11)
      {
        v12 = v11;
        [v11 bounds];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;

        v23.origin.x = v14;
        v23.origin.y = v16;
        v23.size.width = v18;
        v23.size.height = v20;
        [v10 systemLayoutSizeFittingSize:{CGRectGetWidth(v23), UILayoutFittingCompressedSize.height}];

        return;
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

void MapsHostingContaineeViewController.preferredContentSizeDidChange(forChildContentContainer:)()
{
  v1 = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  v2 = v1 - 8;
  v3 = __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x90))(v3);
  LODWORD(v2) = v5[*(v2 + 28)];
  sub_1001DE2F0(v5);
  if (v2 != 1)
  {
    goto LABEL_4;
  }

  v6 = [v0 cardPresentationController];
  if (v6)
  {
    v7 = v6;
    [v6 updateHeightForCurrentLayoutAnimated:1];

LABEL_4:
    MapsHostingContaineeViewController.updatePopoverWindowDimensionsIfNeeded()();
    return;
  }

  __break(1u);
}

uint64_t sub_1001DEAA8()
{
  sub_1001DF8CC();

  return dispatch thunk of UIMutableTraits.subscript.setter();
}

id sub_1001DEB34(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for MapsHostingContaineeViewController();
  objc_msgSendSuper2(&v4, *a1);
  return MapsHostingContaineeViewController.updateCardExpansionProgress()();
}

void sub_1001DEB80(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for MapsHostingContaineeViewController();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  MapsHostingContaineeViewController.updateCardExpansionProgress()();
}

uint64_t MapsHostingContaineeViewController.applyAlpha(toContent:)()
{
  v0 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v0);
  UIViewController.traitOverrides.getter();
  sub_1001DED68();
  dispatch thunk of UIMutableTraits.subscript.setter();
  return UIViewController.traitOverrides.setter();
}

unint64_t sub_1001DED68()
{
  result = qword_101911688;
  if (!qword_101911688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911688);
  }

  return result;
}

uint64_t sub_1001DEDBC()
{
  sub_1001DED68();

  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t (*sub_1001DEEF8())(double a1, double a2)
{
  sub_1001DFA04();
  EnvironmentValues.subscript.getter();
  *(swift_allocObject() + 16) = v1;
  return sub_1001DFA58;
}

double sub_1001DEF64@<D0>(_OWORD *a1@<X8>)
{
  sub_1001DFA04();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1001DEFB4()
{
  sub_1001DFA04();

  return EnvironmentValues.subscript.setter();
}

void sub_1001DF014(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = &Strong[OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_currentHeaderSize];
    *v4 = v1;
    *(v4 + 1) = v2;
  }
}

id MapsHostingContaineeViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_hostingController] = 0;
  v5 = &v3[OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_currentHeaderSize];
  *v5 = 0;
  *(v5 + 1) = 0;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for MapsHostingContaineeViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id MapsHostingContaineeViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_hostingController] = 0;
  v3 = &v1[OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_currentHeaderSize];
  v4 = type metadata accessor for MapsHostingContaineeViewController();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id MapsHostingContaineeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsHostingContaineeViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for MapsHostingContaineeViewController.HostingControllerOptions.PopoverOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MapsHostingContaineeViewController.HostingControllerOptions.PopoverOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1001DF430()
{
  result = qword_101911758;
  if (!qword_101911758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911758);
  }

  return result;
}

double sub_1001DF484()
{
  sub_1000F0B98();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1001DF4C0@<X0>(void *a1@<X8>)
{
  sub_1001DED68();
  result = UITraitCollection.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1001DF518@<X0>(void *a1@<X8>)
{
  sub_1001DF8CC();
  result = UITraitCollection.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1001DF570(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, double))
{
  v6 = *a2;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_1000FA458(a1, v7);
  return a5(v7, v8, v6);
}

uint64_t sub_1001DF5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001DF878();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_1001DF6A4(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for CardHeaderExpansionState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for CardHeaderExpansionState.Docked(_:), v3, v5);
  CardHeaderExpansionState.rawValue.getter();
  v9 = v8;
  result = (*(v4 + 8))(v7, v3);
  *a2 = v9;
  return result;
}

double sub_1001DF7C0@<D0>(void *a1@<X2>, double *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a3;
    swift_once();
    a3 = v5;
    a2 = v4;
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

unint64_t sub_1001DF824()
{
  result = qword_101911760;
  if (!qword_101911760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911760);
  }

  return result;
}

unint64_t sub_1001DF878()
{
  result = qword_101911768;
  if (!qword_101911768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911768);
  }

  return result;
}

unint64_t sub_1001DF8CC()
{
  result = qword_101911770;
  if (!qword_101911770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911770);
  }

  return result;
}

unint64_t sub_1001DF920()
{
  result = qword_101911778;
  if (!qword_101911778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911778);
  }

  return result;
}

uint64_t sub_1001DF974()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_101911660);
  sub_100021540(v0, qword_101911660);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1001DFA04()
{
  result = qword_101911798;
  if (!qword_101911798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911798);
  }

  return result;
}

uint64_t sub_1001DFA58(double a1, double a2)
{
  v3 = *(v2 + 16);
  *v5 = a1;
  *&v5[1] = a2;
  return v3(v5);
}

uint64_t type metadata accessor for MapsElevationChart()
{
  result = qword_1019117F8;
  if (!qword_1019117F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001DFB58()
{
  result = type metadata accessor for MapsElevationChartViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001DFBE8()
{
  result = GEOConfigGetBOOL();
  byte_10195FBB8 = result;
  return result;
}

uint64_t sub_1001DFC18()
{
  if (qword_1019065C0 != -1)
  {
    swift_once();
  }

  return byte_10195FBB8;
}

uint64_t sub_1001DFC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_101911830);
  __chkstk_darwin(v4);
  v6 = &v49 - v5;
  v7 = sub_1000CE6B8(&qword_101911838);
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  v10 = sub_1000CE6B8(&qword_101911840);
  __chkstk_darwin(v10);
  v12 = &v49 - v11;
  v13 = sub_1000CE6B8(&qword_101911848);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  v16 = *(*(a1 + *(type metadata accessor for MapsElevationChartViewModel(0) + 56)) + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_contextStyle);
  if (v16 > 2)
  {
    if (v16 == 3)
    {
      sub_1001E0A90(v12);
      v28 = sub_1000D6664(&qword_1019118C8);
      v29 = sub_1000D6664(&qword_1019118D0);
      v30 = sub_1001EC9C0();
      v53 = v29;
      v54 = v30;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v53 = v28;
      v54 = OpaqueTypeConformance2;
    }

    else
    {
      sub_1001E100C(v9);
      v52 = sub_1000D6664(&qword_101911850);
      v51 = sub_1000D6664(&qword_101911858);
      v32 = sub_1000D6664(&qword_101911860);
      v33 = sub_1000D6664(&qword_101911868);
      v34 = sub_1000D6664(&qword_101911870);
      v35 = sub_1000D6664(&qword_101911878);
      v36 = sub_1000D6664(&qword_101911880);
      v37 = sub_1000D6664(&qword_101911888);
      v38 = sub_1001EC7D8();
      v39 = sub_1001EC8C0();
      v53 = v37;
      v54 = &type metadata for ChartsAttributeGraphDecider;
      v55 = v38;
      v56 = v39;
      v40 = swift_getOpaqueTypeConformance2();
      v41 = sub_1001EC914();
      v53 = v36;
      v54 = v35;
      v55 = v40;
      v56 = v41;
      v42 = swift_getOpaqueTypeConformance2();
      v53 = v34;
      v54 = v35;
      v55 = v42;
      v56 = v41;
      v43 = swift_getOpaqueTypeConformance2();
      v44 = sub_1000414C8(&qword_1019118B8, &qword_101911868);
      v53 = v32;
      v54 = v33;
      v55 = v43;
      v56 = v44;
      v45 = swift_getOpaqueTypeConformance2();
      v46 = sub_1000414C8(&qword_1019118C0, &qword_101911858);
      v53 = v52;
      v54 = v51;
      v55 = v45;
      v56 = v46;
    }

    swift_getOpaqueTypeConformance2();
  }

  else if (v16 - 1 >= 2)
  {
    sub_1001E0390(v15);
    sub_1001ECAD0();
  }

  else
  {
    sub_1001E19C4(v6);
    v52 = sub_1000D6664(&qword_1019118F0);
    v51 = sub_1000D6664(&qword_101911878);
    v50 = sub_1000D6664(&qword_1019118F8);
    v49 = sub_1000D6664(&qword_101911900);
    v17 = sub_1000D6664(&qword_101911908);
    v18 = sub_1000D6664(&qword_101911910);
    v19 = sub_1000D6664(&qword_101911918);
    v20 = sub_1000414C8(&qword_101911920, &qword_101911918);
    v21 = sub_1001EC8C0();
    v53 = v19;
    v54 = &type metadata for ChartsAttributeGraphDecider;
    v55 = v20;
    v56 = v21;
    v22 = swift_getOpaqueTypeConformance2();
    v23 = sub_1000414C8(&qword_101911928, &qword_101911910);
    v53 = v17;
    v54 = v18;
    v55 = v22;
    v56 = v23;
    v24 = swift_getOpaqueTypeConformance2();
    v25 = sub_1000414C8(&qword_101911930, &qword_101911900);
    v53 = v50;
    v54 = v49;
    v55 = v24;
    v56 = v25;
    v26 = swift_getOpaqueTypeConformance2();
    v27 = sub_1001EC914();
    v53 = v52;
    v54 = v51;
    v55 = v26;
    v56 = v27;
    swift_getOpaqueTypeConformance2();
  }

  v47 = AnyView.init<A>(_:)();
  LOBYTE(v53) = 0;
  *a2 = v47;
  *(a2 + 8) = xmmword_1011EFE90;
  *(a2 + 24) = 2;
  *(a2 + 32) = 0x3FF0000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;

  sub_1001EC990(0x6F69746176656C45, 0xE90000000000006ELL, 2u);

  return sub_1001EC9A8(0x6F69746176656C45, 0xE90000000000006ELL, 2u);
}

uint64_t sub_1001E0390@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = sub_1000CE6B8(&qword_101911990);
  __chkstk_darwin(v2 - 8);
  v45 = v36 - v3;
  v4 = type metadata accessor for MapsElevationChart();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_1000CE6B8(&qword_101911970);
  v8 = *(v7 - 8);
  v38 = v7;
  v39 = v8;
  __chkstk_darwin(v7);
  v10 = v36 - v9;
  v11 = sub_1000CE6B8(&qword_101911968);
  v12 = *(v11 - 8);
  v40 = v11;
  v41 = v12;
  __chkstk_darwin(v11);
  v14 = v36 - v13;
  v15 = sub_1000CE6B8(&qword_101911960);
  v16 = *(v15 - 8);
  v42 = v15;
  v43 = v16;
  __chkstk_darwin(v15);
  v18 = v36 - v17;
  v44 = sub_1000CE6B8(&qword_101911940);
  __chkstk_darwin(v44);
  v20 = v36 - v19;
  v47 = *(v1 + 16);
  *&v36[2] = v47;
  v37 = v1;
  v36[1] = swift_getKeyPath();
  sub_1001ED660(v1, v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MapsElevationChart);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  sub_1001ECE0C(v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);

  sub_1000CE6B8(&qword_101911998);
  sub_1000CE6B8(&qword_1019119A0);
  sub_1000414C8(&qword_1019119A8, &qword_101911998);
  *&v49 = type metadata accessor for BarMark();
  *(&v49 + 1) = &type metadata for Color;
  *&v50 = &protocol witness table for BarMark;
  *(&v50 + 1) = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  Chart.init<A, B, C>(_:id:content:)();
  v23 = sub_1000414C8(&qword_101911978, &qword_101911970);
  v24 = sub_1001EC8C0();
  v25 = v38;
  View.attributeGraphBasedChart<A>(_:)();
  (*(v39 + 8))(v10, v25);
  *&v49 = v25;
  *(&v49 + 1) = &type metadata for ChartsAttributeGraphDecider;
  *&v50 = v23;
  *(&v50 + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v40;
  View.chartXAxis(_:)();
  (*(v41 + 8))(v14, v27);
  *&v49 = v27;
  *(&v49 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = v42;
  View.chartYAxis(_:)();
  (*(v43 + 8))(v18, v28);
  type metadata accessor for MapsElevationChartViewModel(0);
  *&v20[*(sub_1000CE6B8(&qword_101911958) + 36)] = xmmword_1011EFEA0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v29 = &v20[*(v44 + 36)];
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  *(v29 + 2) = v51;
  v47 = sub_1002BD740();
  v48 = v31;
  v32 = type metadata accessor for ScaleType();
  v33 = v45;
  (*(*(v32 - 8) + 56))(v45, 1, 1, v32);
  sub_1000CE6B8(&qword_101911878);
  sub_1001ECBF0();
  sub_1001EC914();
  v34 = v46;
  View.chartYScale<A>(domain:type:)();
  sub_100024F64(v33, &qword_101911990);
  sub_100024F64(v20, &qword_101911940);
  result = sub_1000CE6B8(&qword_101911848);
  *(v34 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1001E0A90@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_1000CE6B8(&qword_101911AA0);
  __chkstk_darwin(v2 - 8);
  v27 = &v27 - v3;
  v28 = type metadata accessor for BlendMode();
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v35 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_1019118E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v34 = sub_1000CE6B8(&qword_101911AA8);
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v11 = &v27 - v10;
  v29 = sub_1000CE6B8(&qword_1019118D0);
  __chkstk_darwin(v29);
  v13 = &v27 - v12;
  v33 = sub_1000CE6B8(&qword_1019118C8);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v15 = &v27 - v14;
  v37 = v1;
  sub_1000CE6B8(&qword_101911AB0);
  sub_1001ED78C();
  Chart.init(content:)();
  sub_1000414C8(&qword_1019118E8, &qword_1019118E0);
  sub_1001EC8C0();
  v30 = v11;
  View.attributeGraphBasedChart<A>(_:)();
  v16 = v9;
  v17 = v27;
  (*(v7 + 8))(v16, v6);
  v18 = *(v1 + *(type metadata accessor for MapsElevationChartViewModel(0) + 56));
  v19 = v28;
  sub_1000D2DFC(v18 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_blendMode, v17, &qword_101911AA0);
  v20 = *(v4 + 48);
  if (v20(v17, 1, v19) == 1)
  {
    v21 = v35;
    (*(v4 + 104))(v35, enum case for BlendMode.normal(_:), v19);
    v22 = v21;
    if (v20(v17, 1, v19) != 1)
    {
      sub_100024F64(v17, &qword_101911AA0);
    }
  }

  else
  {
    v22 = v35;
    (*(v4 + 32))(v35, v17, v19);
  }

  v23 = v29;
  (*(v4 + 32))(&v13[*(v29 + 36)], v22, v19);
  (*(v32 + 32))(v13, v30, v34);
  v24 = sub_1001EC9C0();
  View.chartXAxis(_:)();
  sub_100024F64(v13, &qword_1019118D0);
  v38 = v23;
  v39 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v33;
  View.chartYAxis(_:)();
  return (*(v31 + 8))(v15, v25);
}

uint64_t sub_1001E100C@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v2 = sub_1000CE6B8(&qword_101911990);
  __chkstk_darwin(v2 - 8);
  v70 = &v57 - v3;
  v68 = sub_1000CE6B8(&qword_1019118A0);
  v4 = *(v68 - 1);
  __chkstk_darwin(v68);
  v6 = &v57 - v5;
  v69 = sub_1000CE6B8(&qword_101911888);
  __chkstk_darwin(v69);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v57 - v10;
  v11 = sub_1000CE6B8(&qword_101911880);
  v12 = *(v11 - 8);
  v71 = v11;
  v72 = v12;
  __chkstk_darwin(v11);
  v67 = &v57 - v13;
  v58 = sub_1000CE6B8(&qword_101911870);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v74 = &v57 - v14;
  v62 = sub_1000CE6B8(&qword_101911860);
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v57 - v15;
  v64 = sub_1000CE6B8(&qword_101911850);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v57 - v16;
  v75 = v1;
  sub_1000CE6B8(&qword_101911B00);
  sub_1001EDAA0();
  Chart.init(content:)();
  v17 = *(v1 + 16);
  v73 = v1;
  v86 = sub_1001E26E4(v17);
  v87 = v18;
  sub_1000414C8(&qword_101911898, &qword_1019118A0);
  sub_1000E5580();
  v19 = v68;
  View.accessibilityLabel<A>(_:)();

  (*(v4 + 8))(v6, v19);
  v20 = v17;
  v21 = v70;
  sub_1001E2A4C(v20);
  v84 = v22;
  v85 = v23;
  v24 = v66;
  v25 = v69;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  sub_100024F64(v8, &qword_101911888);
  v26 = sub_1001EC7D8();
  v27 = sub_1001EC8C0();
  v28 = v67;
  View.attributeGraphBasedChart<A>(_:)();
  sub_100024F64(v24, &qword_101911888);
  v29 = v73;
  sub_1002BE50C();
  v82 = v30;
  v83 = v31;
  v32 = type metadata accessor for ScaleType();
  v33 = *(v32 - 8);
  v68 = *(v33 + 56);
  v66 = (v33 + 56);
  (v68)(v21, 1, 1, v32);
  v34 = sub_1000CE6B8(&qword_101911878);
  v78 = v25;
  v79 = &type metadata for ChartsAttributeGraphDecider;
  v35 = v71;
  v80 = v26;
  v81 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_1001EC914();
  View.chartXScale<A>(domain:type:)();
  sub_100024F64(v21, &qword_101911990);
  (*(v72 + 8))(v28, v35);
  v38 = sub_1002BDB68();
  v39 = *(v38 + 16);
  if (!v39)
  {
LABEL_6:

    __break(1u);
    goto LABEL_7;
  }

  v40 = *(v38 + 8 * v39 + 24);

  v41 = sub_1002BDB68();
  if (*(v41 + 16))
  {
    v42 = *(v41 + 32);

    if (v40 <= v42)
    {
      v76 = v40;
      v77 = v42;
      (v68)(v21, 1, 1, v32);
      v78 = v35;
      v79 = v34;
      v80 = OpaqueTypeConformance2;
      v81 = v37;
      v43 = v29;
      v44 = swift_getOpaqueTypeConformance2();
      v45 = v59;
      v46 = v58;
      v47 = v74;
      View.chartYScale<A>(domain:type:)();
      sub_100024F64(v21, &qword_101911990);
      v48 = (*(v57 + 8))(v47, v46);
      v74 = &v57;
      __chkstk_darwin(v48);
      *(&v57 - 2) = v43;
      v49 = sub_1000CE6B8(&qword_101911868);
      v78 = v46;
      v79 = v34;
      v80 = v44;
      v81 = v37;
      v50 = swift_getOpaqueTypeConformance2();
      v51 = sub_1000414C8(&qword_1019118B8, &qword_101911868);
      v52 = v61;
      v53 = v62;
      View.chartXAxis<A>(content:)();
      v54 = (*(v60 + 8))(v45, v53);
      __chkstk_darwin(v54);
      *(&v57 - 2) = v73;
      sub_1000CE6B8(&qword_101911858);
      v78 = v53;
      v79 = v49;
      v80 = v50;
      v81 = v51;
      swift_getOpaqueTypeConformance2();
      sub_1000414C8(&qword_1019118C0, &qword_101911858);
      v55 = v64;
      View.chartYAxis<A>(content:)();
      return (*(v63 + 8))(v52, v55);
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:

  __break(1u);
  return result;
}

uint64_t sub_1001E19C4@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_1000CE6B8(&qword_101911990);
  __chkstk_darwin(v2 - 8);
  v56 = &v54 - v3;
  v4 = type metadata accessor for MapsElevationChart();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_101911918);
  v9 = *(v8 - 8);
  v64 = v8;
  v65 = v9;
  __chkstk_darwin(v8);
  v60 = &v54 - v10;
  v11 = sub_1000CE6B8(&qword_101911908);
  v12 = *(v11 - 8);
  v66 = v11;
  v67 = v12;
  __chkstk_darwin(v11);
  v61 = &v54 - v13;
  v14 = sub_1000CE6B8(&qword_1019118F8);
  v15 = *(v14 - 8);
  v68 = v14;
  v69 = v15;
  __chkstk_darwin(v14);
  v62 = &v54 - v16;
  v55 = sub_1000CE6B8(&qword_1019118F0);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v63 = &v54 - v17;
  v18 = *(type metadata accessor for MapsElevationChartViewModel(0) + 68);
  v59 = v1;
  v72 = *(v1 + v18);
  KeyPath = swift_getKeyPath();
  sub_1001ED660(v1, v7, type metadata accessor for MapsElevationChart);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_1001ECE0C(v7, v20 + v19);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1001ECE88;
  *(v21 + 24) = v20;

  sub_1000CE6B8(&qword_1019119B8);
  sub_1000CE6B8(&qword_1019119C0);
  sub_1000414C8(&qword_1019119C8, &qword_1019119B8);
  v22 = sub_1000D6664(&qword_1019119D0);
  v23 = sub_1000D6664(&qword_1019119D8);
  v24 = sub_1000414C8(&qword_1019119E0, &qword_1019119D8);
  v25 = sub_1000E5580();
  v74 = v23;
  v75 = &type metadata for String;
  v76 = v24;
  v77 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = v22;
  v75 = &type metadata for String;
  v76 = OpaqueTypeConformance2;
  v77 = v25;
  swift_getOpaqueTypeConformance2();
  v27 = v60;
  Chart.init<A, B, C>(_:id:content:)();
  v28 = sub_1000414C8(&qword_101911920, &qword_101911918);
  v29 = sub_1001EC8C0();
  v30 = v61;
  v31 = v64;
  View.attributeGraphBasedChart<A>(_:)();
  (*(v65 + 8))(v27, v31);
  v32 = v59;
  v71 = v59;
  v33 = sub_1000CE6B8(&qword_101911910);
  v74 = v31;
  v75 = &type metadata for ChartsAttributeGraphDecider;
  v76 = v28;
  v77 = v29;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_1000414C8(&qword_101911928, &qword_101911910);
  v36 = v62;
  v37 = v66;
  View.chartXAxis<A>(content:)();
  v38 = v30;
  v39 = v37;
  (*(v67 + 8))(v38, v37);
  v70 = v32;
  v40 = sub_1000CE6B8(&qword_101911900);
  v74 = v39;
  v75 = v33;
  v76 = v34;
  v77 = v35;
  v41 = v63;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v68;
  v44 = sub_1000414C8(&qword_101911930, &qword_101911900);
  View.chartYAxis<A>(content:)();
  (*(v69 + 8))(v36, v43);
  v45 = sub_1002BDB68();
  v46 = *(v45 + 16);
  if (!v46)
  {
LABEL_6:

    __break(1u);
    goto LABEL_7;
  }

  v47 = *(v45 + 8 * v46 + 24);

  v48 = sub_1002BDB68();
  if (*(v48 + 16))
  {
    v49 = *(v48 + 32);

    if (v47 <= v49)
    {
      v72 = v47;
      v73 = v49;
      v50 = type metadata accessor for ScaleType();
      v51 = v56;
      (*(*(v50 - 8) + 56))(v56, 1, 1, v50);
      sub_1000CE6B8(&qword_101911878);
      v74 = v43;
      v75 = v40;
      v76 = v42;
      v77 = v44;
      swift_getOpaqueTypeConformance2();
      sub_1001EC914();
      v52 = v55;
      View.chartYScale<A>(domain:type:)();
      sub_100024F64(v51, &qword_101911990);
      return (*(v54 + 8))(v41, v52);
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:

  __break(1u);
  return result;
}

uint64_t sub_1001E22AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v30 = a3;
  v4 = sub_1000CE6B8(&qword_10191B3A0);
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v25 - v5;
  v7 = sub_1000CE6B8(&qword_1019119B0);
  __chkstk_darwin(v7 - 8);
  v25[2] = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v25[1] = v25 - v10;
  v11 = type metadata accessor for BarMark();
  v12 = *(v11 - 8);
  v28 = v11;
  v29 = v12;
  __chkstk_darwin(v11);
  v26 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
  v14 = [objc_opt_self() meters];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v16 = v15;
  v17 = *(v31 + 8);
  v31 += 8;
  v17(v6, v4);
  v32 = v16;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v18 = v27;
  Measurement<>.converted(to:)();
  Measurement.value.getter();
  v20 = v19;
  v17(v6, v4);
  v32 = v20;
  static PlottableValue.value(_:_:)();

  v21 = type metadata accessor for MapsElevationChartViewModel(0);
  v22 = v26;
  BarMark.init<A, B>(x:y:width:height:stacking:)();
  (*(v18 + *(v21 + 64)))(a1, v18);
  v32 = Color.init(_:)();
  v23 = v28;
  ChartContent.foregroundStyle<A>(_:)();

  return (*(v29 + 8))(v22, v23);
}

uint64_t sub_1001E26E4(uint64_t a1)
{
  v3 = sub_1000CE6B8(&qword_10191B3A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v28 - v5;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v32._object = 0x8000000101223040;
  v7._countAndFlagsBits = 0x4025206F74204025;
  v8._object = 0x8000000101223010;
  v32._countAndFlagsBits = 0xD00000000000005CLL;
  v8._countAndFlagsBits = 0xD000000000000029;
  v7._object = 0xE90000000000002ELL;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, qword_1019600D8, v7, v32);
  result = type metadata accessor for MapsElevationChartViewModel(0);
  if (*(a1 + 16))
  {
    v28[1] = *(a1 + 16);
    v11 = *(v1 + *(result + 72));
    type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
    v31 = v9;
    Measurement<>.converted(to:)();
    Measurement.value.getter();
    v13 = v12;
    v14 = *(v4 + 8);
    v14(v6, v3);
    v15 = [v11 stringFromValue:sub_1002BD9D0() unit:v13];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v17;
    v30 = v16;

    Measurement<>.converted(to:)();
    Measurement.value.getter();
    v19 = v18;
    v14(v6, v3);
    v20 = [v11 stringFromValue:sub_1002BD9D0() unit:v19];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    sub_1000CE6B8(&unk_10190D5C0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1011E1D60;
    *(v24 + 56) = &type metadata for String;
    v25 = sub_1000DA61C();
    v26 = v29;
    *(v24 + 32) = v30;
    *(v24 + 40) = v26;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v25;
    *(v24 + 64) = v25;
    *(v24 + 72) = v21;
    *(v24 + 80) = v23;
    v27 = String.init(format:_:)();

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001E2A4C(uint64_t a1)
{
  v3 = sub_1000CE6B8(&qword_10191B3A0);
  v45 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v44 - v4;
  v49 = type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
  v6 = *(v49 - 8);
  __chkstk_darwin(v49);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v51._object = 0x8000000101222FD0;
  v9._object = 0x8000000101222F70;
  v10._countAndFlagsBits = 0xD00000000000002BLL;
  v10._object = 0x8000000101222FA0;
  v51._countAndFlagsBits = 0xD000000000000034;
  v9._countAndFlagsBits = 0xD000000000000029;
  v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, qword_1019600D8, v10, v51);
  v11 = *(a1 + 16);
  if (v11)
  {
    v44 = v1;
    v50 = _swiftEmptyArrayStorage;
    sub_1005116C4(0, v11, 0);
    v12 = v50;
    v13 = objc_opt_self();
    v14 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v47 = *(v6 + 72);
    v48 = v13;
    v15 = (v45 + 8);
    do
    {
      sub_1001ED660(v14, v8, type metadata accessor for MapsElevationChartViewModel.ElevationDatum);
      v16 = [v48 meters];
      Measurement<>.converted(to:)();

      Measurement.value.getter();
      v18 = v17;
      (*v15)(v5, v3);
      sub_1001ED6C8(v8);
      v50 = v12;
      v20 = v12[2];
      v19 = v12[3];
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        sub_1005116C4((v19 > 1), v20 + 1, 1);
        v12 = v50;
      }

      v12[2] = v21;
      v12[v20 + 4] = v18;
      v14 += v47;
      --v11;
    }

    while (v11);
    v1 = v44;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
    v21 = _swiftEmptyArrayStorage[2];
    if (!v21)
    {
LABEL_23:
      __break(1u);
      return;
    }
  }

  v22 = *(v12 + 4);
  v23 = v21 - 1;
  if (v21 != 1)
  {
    v24 = (v12 + 5);
    do
    {
      v25 = *v24++;
      v26 = v25;
      if (v25 < v22)
      {
        v22 = v26;
      }

      --v23;
    }

    while (v23);
  }

  v27 = *(v1 + *(type metadata accessor for MapsElevationChartViewModel(0) + 76));
  v28 = [v27 stringFromValue:sub_1002BD9D0() unit:v22];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = v12[2];
  if (!v32)
  {
    __break(1u);
    goto LABEL_23;
  }

  v33 = *(v12 + 4);
  v34 = v32 - 1;
  if (v34)
  {
    v35 = (v12 + 5);
    do
    {
      v36 = *v35++;
      v37 = v36;
      if (v33 < v36)
      {
        v33 = v37;
      }

      --v34;
    }

    while (v34);
  }

  v38 = [v27 stringFromValue:sub_1002BD9D0() unit:v33];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  sub_1000CE6B8(&unk_10190D5C0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1011E1D60;
  *(v42 + 56) = &type metadata for String;
  v43 = sub_1000DA61C();
  *(v42 + 32) = v29;
  *(v42 + 40) = v31;
  *(v42 + 96) = &type metadata for String;
  *(v42 + 104) = v43;
  *(v42 + 64) = v43;
  *(v42 + 72) = v39;
  *(v42 + 80) = v41;
  String.init(format:_:)();
}

uint64_t sub_1001E2ED0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = sub_1000CE6B8(&qword_1019119D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = sub_1000CE6B8(&qword_1019119D0);
  v10 = *(v9 - 8);
  v21 = v9;
  v22 = v10;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v24 = a1;
  v25 = a2;
  sub_1000CE6B8(&qword_101911A88);
  sub_1001ED598();
  Plot.init(content:)();
  v26 = sub_1001E26E4(a1);
  v27 = v13;
  v14 = sub_1000414C8(&qword_1019119E0, &qword_1019119D8);
  v15 = sub_1000E5580();
  ChartContent.accessibilityLabel<A>(_:)();

  (*(v6 + 8))(v8, v5);
  sub_1001E2A4C(a1);
  v30 = v16;
  v31 = v17;
  v26 = v5;
  v27 = &type metadata for String;
  v28 = v14;
  v29 = v15;
  swift_getOpaqueTypeConformance2();
  v18 = v21;
  ChartContent.accessibilityValue<A>(_:)();

  return (*(v22 + 8))(v12, v18);
}

uint64_t sub_1001E3188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsElevationChart();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v10[5] = a1;
  sub_1001ED660(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MapsElevationChart);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1001ECE0C(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  sub_1000CE6B8(&qword_101911998);
  sub_1000CE6B8(&qword_1019119A0);
  sub_1000414C8(&qword_1019119A8, &qword_101911998);
  v10[1] = type metadata accessor for BarMark();
  v10[2] = &type metadata for Color;
  v10[3] = &protocol witness table for BarMark;
  v10[4] = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  sub_1001ED73C(&qword_101911A98, type metadata accessor for MapsElevationChartViewModel.ElevationDatum);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1001E33BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v43 = a1;
  v41 = a3;
  v3 = sub_1000CE6B8(&qword_10191B3A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - v5;
  v7 = sub_1000CE6B8(&qword_1019119B0);
  __chkstk_darwin(v7 - 8);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v36 = &v31 - v10;
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for BarMark();
  v39 = *(v14 - 8);
  v40 = v14;
  __chkstk_darwin(v14);
  v38 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v33 = type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
  v16 = [objc_opt_self() meters];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v18 = v17;
  v19 = *(v4 + 8);
  v35 = v4 + 8;
  v32 = v19;
  v19(v6, v3);
  v44 = v18;
  v34 = v13;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v20 = v42;
  v21 = sub_1002BDB68();
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = *(v21 + 8 * v22 + 24);

    v44 = v23;
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    v24 = v43;
    Measurement<>.converted(to:)();
    Measurement.value.getter();
    v26 = v25;
    v32(v6, v3);
    v44 = v26;
    static PlottableValue.value(_:_:)();

    v27 = type metadata accessor for MapsElevationChartViewModel(0);
    v28 = v38;
    BarMark.init<A, B>(x:yStart:yEnd:width:)();
    (*(v20 + *(v27 + 64)))(v24, v20);
    v44 = Color.init(_:)();
    v29 = v40;
    ChartContent.foregroundStyle<A>(_:)();

    return (*(v39 + 8))(v28, v29);
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_1001E38A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1002BDEE0();
  sub_1001E38F8(v2, 1, a1);
}

void sub_1001E38F8(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v29 = a2;
  v31 = a3;
  v6 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v6 - 8);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for MapsElevationChart();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v28 = v10;
    v32 = _swiftEmptyArrayStorage;
    sub_1005116C4(0, v13, 0);
    v14 = v32;
    v15 = (a1 + 32);
    v16 = v32[2];
    do
    {
      v17 = *v15;
      v32 = v14;
      v18 = v14[3];
      if (v16 >= v18 >> 1)
      {
        sub_1005116C4((v18 > 1), v16 + 1, 1);
        v14 = v32;
      }

      v14[2] = v16 + 1;
      v14[v16 + 4] = v17;
      v15 += 2;
      ++v16;
      --v13;
    }

    while (v13);
    v10 = v28;
  }

  v19 = *(v4 + *(type metadata accessor for MapsElevationChartViewModel(0) + 56));
  v20 = *(v19 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_xAxisFont);
  if (v20)
  {
    v21 = *(v19 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_xAxisFont);
  }

  else
  {
    v21 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption2];
  }

  sub_1001ED660(v4, &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MapsElevationChart);
  v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v23 = v22 + v11;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = v14;
  sub_1001ECE0C(v12, v24 + v22);
  *(v24 + v23) = v29 & 1;
  *(v24 + (v23 & 0xFFFFFFFFFFFFFFF8) + 8) = v21;
  v25 = v20;

  v26 = v21;
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_1000CE6B8(&qword_101911A60);
  sub_1001ED430();
  AxisMarks.init<A>(preset:position:values:content:)();
}

uint64_t sub_1001E3C4C(uint64_t a1)
{
  v2 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for MapsElevationChart();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_1002BDB68();
  sub_1001ED660(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MapsElevationChart);
  v8 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  sub_1001ECE0C(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;

  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_1000CE6B8(&qword_1019119E8);
  sub_1001ED000();
  return AxisMarks.init<A>(preset:position:values:content:)();
}

uint64_t sub_1001E3E70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v149 = a3;
  v144 = a1;
  v10 = sub_1000CE6B8(&qword_101911A78);
  __chkstk_darwin(v10);
  v12 = &v111 - v11;
  v13 = sub_1000CE6B8(&qword_101911A20);
  __chkstk_darwin(v13 - 8);
  v120 = &v111 - v14;
  v15 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v15 - 8);
  v127 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v17 - 8);
  v126 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1000CE6B8(&qword_101911A28);
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v113 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v116 = &v111 - v21;
  __chkstk_darwin(v22);
  v119 = &v111 - v23;
  v123 = sub_1000CE6B8(&qword_101911A40);
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v112 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v115 = &v111 - v26;
  __chkstk_darwin(v27);
  v118 = &v111 - v28;
  v29 = sub_1000CE6B8(&qword_101911A00);
  __chkstk_darwin(v29 - 8);
  v138 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v145 = &v111 - v32;
  v143 = type metadata accessor for AxisGridLine();
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v34 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1000CE6B8(&qword_101911A70);
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v142 = &v111 - v35;
  v137 = sub_1000CE6B8(&qword_101911A80);
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v146 = &v111 - v38;
  v148 = sub_1000CE6B8(&qword_10191B3A0);
  v39 = *(v148 - 8);
  __chkstk_darwin(v148);
  v41 = &v111 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v147 = &v111 - v43;
  result = AxisValue.as<A>(_:)();
  if (BYTE8(v157))
  {
    goto LABEL_34;
  }

  v45 = *(a2 + 16);
  if (!v45)
  {
    goto LABEL_32;
  }

  v46 = 0;
  if (*(a2 + 32) != *&v157)
  {
    v47 = v45 - 1;
    while (v47 != v46)
    {
      v48 = *(a2 + 40 + 8 * v46++);
      if (v48 == *&v157)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_7:
  if (v46 >= *(v144 + 16))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v117 = *(v144 + 16);
  v134 = a5;
  v130 = v12;
  v131 = v10;
  v114 = v144 + 32;
  v49 = v144 + 32 + 16 * v46;
  v50 = *v49;
  v133 = *(v49 + 8);
  v51 = [objc_opt_self() meters];
  sub_1001ED544();
  Measurement.init(value:unit:)();
  v52 = v149;
  v53 = v39;
  v54 = v148;
  Measurement<>.converted(to:)();
  v55 = *(v53 + 8);
  v129 = v53 + 8;
  v128 = v55;
  v55(v41, v54);
  v56 = type metadata accessor for MapsElevationChartViewModel(0);
  v57 = *(v52 + *(v56 + 72));
  Measurement.value.getter();
  v59 = [v57 stringFromValue:sub_1002BD9D0() unit:v58];
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  v132 = a6;
  v121 = v60;
  if (a4)
  {
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v63 = v153;
    v64 = v154;
    v65 = v155;
    v66 = v156;
  }

  else
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0uLL;
  }

  v67 = v134;
  v68 = v143;
  v69 = v142;
  v70 = v141;
  v157 = v63;
  v158 = v64;
  v159 = v65;
  v160 = v66;
  AxisGridLine.init(centered:stroke:)();
  v71 = v67;
  Font.init(_:)();
  AxisMark.font(_:)();

  result = (*(v70 + 8))(v34, v68);
  v72 = *(v149 + *(v56 + 56));
  v73 = v133;
  if (v133)
  {
    v74 = *(v72 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridHighlightColor);
    if (v74)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  v74 = *(v72 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridColor);
  if (!v74)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_15:
  v75 = v74;
  v76 = Color.init(_:)();
  v151 = &protocol witness table for AxisGridLine;
  v152 = v76;
  v150 = v68;
  swift_getOpaqueTypeConformance2();
  v77 = v140;
  AxisMark.foregroundStyle<A>(_:)();

  (*(v139 + 8))(v69, v77);
  if (v73)
  {
    v150 = v121;
    v151 = v62;

    static UnitPoint.center.getter();
    static AxisValueLabelCollisionResolution.greedy(priority:minimumSpacing:)();
    static AxisValueLabelOrientation.automatic.getter();
    sub_1000E5580();
    v78 = v119;
    result = AxisValueLabel.init<A>(_:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)();
    v79 = *(v72 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridHighlightColor);
    if (!v79)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v80 = v79;

    v150 = Color.init(_:)();
    sub_1000414C8(&qword_101911A30, &qword_101911A28);
    v81 = v118;
    v82 = v125;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v124 + 8))(v78, v82);
    v83 = v120;
    (*(v122 + 32))(v120, v81, v123);
    sub_1000CE6B8(&qword_101911A58);
    swift_storeEnumTagMultiPayload();
    v84 = v83;
    v85 = v145;
    goto LABEL_23;
  }

  v85 = v145;
  if (!v117)
  {
    goto LABEL_27;
  }

  if (v50 == *(v144 + 32) && (*(v144 + 40) & 1) == 0)
  {
    v150 = v121;
    v151 = v62;

    static UnitPoint.topLeading.getter();
    static AxisValueLabelCollisionResolution.greedy(priority:minimumSpacing:)();
    static AxisValueLabelOrientation.automatic.getter();
    sub_1000E5580();
    v86 = v116;
    result = AxisValueLabel.init<A>(_:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)();
    v87 = *(v72 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_labelColor);
    if (!v87)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v88 = v87;

    v150 = Color.init(_:)();
    sub_1000414C8(&qword_101911A30, &qword_101911A28);
    v89 = v115;
    v90 = v125;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v124 + 8))(v86, v90);
    v91 = v120;
    (*(v122 + 32))(v120, v89, v123);
    sub_1000CE6B8(&qword_101911A58);
    swift_storeEnumTagMultiPayload();
    v84 = v91;
LABEL_23:
    sub_1000F11C4(v84, v85, &qword_101911A20);
    sub_1000CE6B8(&qword_101911A50);
LABEL_24:
    swift_storeEnumTagMultiPayload();
    v92 = 0;
LABEL_28:
    v94 = sub_1000CE6B8(&qword_101911A10);
    (*(*(v94 - 8) + 56))(v85, v92, 1, v94);
    v95 = v136;
    v96 = *(v136 + 16);
    v97 = v135;
    v98 = v146;
    v99 = v137;
    v96(v135, v146, v137);
    v100 = v138;
    sub_1000D2DFC(v85, v138, &qword_101911A00);
    v101 = v130;
    v96(v130, v97, v99);
    sub_1001ED0D8();
    v102 = v131;
    v103 = *(v131 + 48);
    sub_1000D2DFC(v100, &v101[v103], &qword_101911A00);
    v104 = v132;
    (*(v95 + 32))(v132, v101, v99);
    sub_1000F11C4(&v101[v103], v104 + *(v102 + 48), &qword_101911A00);
    sub_100024F64(v145, &qword_101911A00);
    v105 = *(v95 + 8);
    v105(v98, v99);
    v128(v147, v148);
    sub_100024F64(v100, &qword_101911A00);
    return (v105)(v97, v99);
  }

  v93 = v114 + 16 * v117;
  if (v50 != *(v93 - 16) || (*(v93 - 8) & 1) != 0)
  {
LABEL_27:

    v92 = 1;
    goto LABEL_28;
  }

  v150 = v121;
  v151 = v62;

  static UnitPoint.topTrailing.getter();
  static AxisValueLabelCollisionResolution.greedy(priority:minimumSpacing:)();
  static AxisValueLabelOrientation.automatic.getter();
  sub_1000E5580();
  v106 = v113;
  result = AxisValueLabel.init<A>(_:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)();
  v107 = *(v72 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_labelColor);
  if (v107)
  {
    v108 = v107;

    v150 = Color.init(_:)();
    sub_1000414C8(&qword_101911A30, &qword_101911A28);
    v109 = v112;
    v110 = v125;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v124 + 8))(v106, v110);
    (*(v122 + 32))(v85, v109, v123);
    sub_1000CE6B8(&qword_101911A50);
    goto LABEL_24;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1001E5008@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v108 = a4;
  v109 = a1;
  v8 = sub_1000CE6B8(&qword_101911A38);
  __chkstk_darwin(v8);
  v117 = &v96 - v9;
  v10 = sub_1000CE6B8(&qword_101911A20);
  __chkstk_darwin(v10 - 8);
  v101 = &v96 - v11;
  v12 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v12 - 8);
  v107 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v14 - 8);
  v106 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000CE6B8(&qword_101911A28);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v97 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v99 = &v96 - v18;
  __chkstk_darwin(v19);
  v21 = &v96 - v20;
  v103 = sub_1000CE6B8(&qword_101911A40);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v96 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v98 = &v96 - v24;
  __chkstk_darwin(v25);
  v100 = &v96 - v26;
  v27 = sub_1000CE6B8(&qword_101911A10);
  v28 = *(v27 - 8);
  v114 = v27;
  v115 = v28;
  __chkstk_darwin(v27);
  v30 = &v96 - v29;
  v31 = sub_1000CE6B8(&qword_101911A00);
  __chkstk_darwin(v31 - 8);
  v116 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v111 = &v96 - v34;
  v35 = type metadata accessor for AxisGridLine();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1000CE6B8(&qword_101911A48);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v96 - v41;
  v118 = v8;
  v119 = a5;
  if (a2)
  {
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v43 = v122;
    v44 = v123;
    v45 = v124;
    v46 = v125;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0uLL;
  }

  v126 = v43;
  v127 = v44;
  v128 = v45;
  v129 = v46;
  AxisGridLine.init(centered:stroke:)();
  result = type metadata accessor for MapsElevationChartViewModel(0);
  v48 = *(a3 + *(result + 56));
  v49 = *(v48 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridColor);
  if (!v49)
  {
    goto LABEL_24;
  }

  v50 = result;
  v51 = v49;
  v120 = COERCE_DOUBLE(Color.init(_:)());
  AxisMark.foregroundStyle<A>(_:)();

  (*(v36 + 8))(v38, v35);
  if (*(v48 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_contextStyle) == 2)
  {
    v52 = 1;
    v53 = v117;
    v54 = v111;
    v55 = v114;
LABEL_19:
    (*(v115 + 56))(v54, v52, 1, v55);
    v77 = v112;
    v78 = *(v112 + 16);
    v79 = v110;
    v80 = v42;
    v81 = v113;
    v78(v110, v42, v113);
    v82 = v116;
    sub_1000D2DFC(v54, v116, &qword_101911A00);
    v78(v53, v79, v81);
    sub_1001ED0D8();
    v83 = v118;
    v84 = *(v118 + 48);
    sub_1000D2DFC(v82, &v53[v84], &qword_101911A00);
    v85 = v119;
    (*(v77 + 32))(v119, v53, v81);
    sub_1000F11C4(&v53[v84], v85 + *(v83 + 48), &qword_101911A00);
    sub_100024F64(v54, &qword_101911A00);
    v86 = *(v77 + 8);
    v86(v80, v81);
    sub_100024F64(v82, &qword_101911A00);
    return (v86)(v79, v81);
  }

  result = AxisValue.as<A>(_:)();
  if (v121)
  {
    goto LABEL_25;
  }

  v56 = *(v108 + 16);
  if (!v56)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v120 == *(v108 + 32))
  {
    v57 = *(a3 + *(v50 + 76));
    result = AxisValue.as<A>(_:)();
    if ((v121 & 1) == 0)
    {
      v58 = [v57 stringFromValue:sub_1002BD9D0() unit:v120];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v120 = *&v59;
      v121 = v61;
      static AxisValueLabelCollisionResolution.greedy(priority:minimumSpacing:)();
      static AxisValueLabelOrientation.automatic.getter();
      sub_1000E5580();
      result = AxisValueLabel.init<A>(_:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)();
      v62 = *(v48 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_labelColor);
      if (v62)
      {
        v63 = v62;
        v120 = COERCE_DOUBLE(Color.init(_:)());
        sub_1000414C8(&qword_101911A30, &qword_101911A28);
        v64 = v100;
        v65 = v105;
        AxisMark.foregroundStyle<A>(_:)();

        (*(v104 + 8))(v21, v65);
        v66 = v101;
        (*(v102 + 32))(v101, v64, v103);
        sub_1000CE6B8(&qword_101911A58);
LABEL_17:
        swift_storeEnumTagMultiPayload();
        sub_1000F11C4(v66, v30, &qword_101911A20);
LABEL_18:
        v53 = v117;
        v54 = v111;
        v55 = v114;
        sub_1000CE6B8(&qword_101911A50);
        swift_storeEnumTagMultiPayload();
        sub_1000F11C4(v30, v54, &qword_101911A10);
        v52 = 0;
        goto LABEL_19;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v67 = *(a3 + *(v50 + 76));
  if (v120 == *(v108 + 32 + 8 * v56 - 8))
  {
    result = AxisValue.as<A>(_:)();
    if ((v121 & 1) == 0)
    {
      v68 = [v67 stringFromValue:sub_1002BD9D0() unit:v120];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v120 = *&v69;
      v121 = v71;
      static AxisValueLabelCollisionResolution.greedy(priority:minimumSpacing:)();
      static AxisValueLabelOrientation.automatic.getter();
      sub_1000E5580();
      v72 = v99;
      result = AxisValueLabel.init<A>(_:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)();
      v73 = *(v48 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_labelColor);
      if (v73)
      {
        v74 = v73;
        v120 = COERCE_DOUBLE(Color.init(_:)());
        sub_1000414C8(&qword_101911A30, &qword_101911A28);
        v75 = v98;
        v76 = v105;
        AxisMark.foregroundStyle<A>(_:)();

        (*(v104 + 8))(v72, v76);
        v66 = v101;
        (*(v102 + 32))(v101, v75, v103);
        sub_1000CE6B8(&qword_101911A58);
        goto LABEL_17;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  result = AxisValue.as<A>(_:)();
  if (v121)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v87 = [v67 stringFromValue:sub_1002BD9D0() unit:v120];
  v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v89;

  v120 = *&v88;
  v121 = v90;
  static AxisValueLabelCollisionResolution.greedy(priority:minimumSpacing:)();
  static AxisValueLabelOrientation.automatic.getter();
  sub_1000E5580();
  v91 = v97;
  result = AxisValueLabel.init<A>(_:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)();
  v92 = *(v48 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_labelColor);
  if (v92)
  {
    v93 = v92;
    v120 = COERCE_DOUBLE(Color.init(_:)());
    sub_1000414C8(&qword_101911A30, &qword_101911A28);
    v94 = v96;
    v95 = v105;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v104 + 8))(v91, v95);
    (*(v102 + 32))(v30, v94, v103);
    goto LABEL_18;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1001E5ED0(uint64_t a1)
{
  v2 = type metadata accessor for MapsElevationChart();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v8[1] = *(a1 + 16);
  swift_getKeyPath();
  sub_1001ED660(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MapsElevationChart);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1001ECE0C(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  sub_1000CE6B8(&qword_101911998);
  sub_1000CE6B8(&qword_101911AC8);
  sub_1000414C8(&qword_1019119A8, &qword_101911998);
  sub_1001ED810();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1001E60A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v100 = a3;
  v99 = sub_1000CE6B8(&qword_101911AE8) - 8;
  __chkstk_darwin(v99);
  v98 = &v71 - v4;
  v90 = type metadata accessor for LineMark();
  v91 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1000CE6B8(&qword_101911AE0);
  v95 = *(v93 - 8);
  __chkstk_darwin(v93);
  v88 = &v71 - v6;
  v96 = sub_1000CE6B8(&qword_101911AD8);
  v97 = *(v96 - 8);
  __chkstk_darwin(v96);
  v89 = &v71 - v7;
  v94 = sub_1000CE6B8(&qword_101911AF0);
  v106 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v105 = &v71 - v10;
  v108 = sub_1000CE6B8(&qword_10191B3A0);
  v110 = *(v108 - 8);
  __chkstk_darwin(v108);
  v12 = &v71 - v11;
  v13 = sub_1000CE6B8(&qword_1019119B0);
  __chkstk_darwin(v13 - 8);
  v77 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v101 = &v71 - v16;
  __chkstk_darwin(v17);
  v107 = &v71 - v18;
  v81 = type metadata accessor for AreaMark();
  v82 = *(v81 - 8);
  __chkstk_darwin(v81);
  v76 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1000CE6B8(&qword_101911AD0);
  v84 = *(v83 - 8);
  __chkstk_darwin(v83);
  v78 = &v71 - v20;
  v86 = sub_1000CE6B8(&qword_101911AF8);
  v104 = *(v86 - 8);
  __chkstk_darwin(v86);
  v103 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v109 = &v71 - v23;
  LocalizedStringKey.init(stringLiteral:)();
  v24 = type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
  v80 = *(v24 + 20);
  v79 = objc_opt_self();
  v25 = [v79 meters];
  v73 = a1;
  v72 = v12;
  v26 = v108;
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v28 = v27;
  v29 = *(v110 + 8);
  v110 += 8;
  v102 = v29;
  v29(v12, v26);
  *&v118 = v28;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  *&v118 = 0;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v74 = *(v24 + 24);
  v30 = v85;
  v75 = v85[4];
  v31 = v72;
  v32 = v108;
  Measurement<>.converted(to:)();
  Measurement.value.getter();
  v34 = v33;
  v102(v31, v32);
  *&v118 = v34;
  static PlottableValue.value(_:_:)();

  v35 = v76;
  AreaMark.init<A, B>(x:yStart:yEnd:)();
  v77 = *(v30 + *(type metadata accessor for MapsElevationChartViewModel(0) + 56));
  sub_100437568();
  Gradient.init(colors:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v118 = v116[0];
  v119 = v116[1];
  v120 = v117;
  v36 = v78;
  v37 = v81;
  ChartContent.foregroundStyle<A>(_:)();
  sub_1001ED9F0(v116);
  (*(v82 + 8))(v35, v37);
  *&v118 = v37;
  *(&v118 + 1) = &type metadata for LinearGradient;
  *&v119 = &protocol witness table for AreaMark;
  *(&v119 + 1) = &protocol witness table for LinearGradient;
  v85 = &opaque type descriptor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>;
  swift_getOpaqueTypeConformance2();
  v38 = v83;
  ChartContent.interpolationMethod(_:)();
  (*(v84 + 8))(v36, v38);
  LocalizedStringKey.init(stringLiteral:)();
  v39 = [v79 meters];
  v40 = v108;
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v42 = v41;
  v43 = v102;
  v102(v31, v40);
  *&v118 = v42;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  Measurement<>.converted(to:)();
  Measurement.value.getter();
  v45 = v44;
  v43(v31, v40);
  *&v118 = v45;
  static PlottableValue.value(_:_:)();

  v46 = v87;
  LineMark.init<A, B>(x:y:)();
  v47 = v77;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v48 = v88;
  v49 = v90;
  ChartContent.lineStyle(_:)();
  sub_1001EDA44(&v118);
  (*(v91 + 8))(v46, v49);
  v50 = *&v47[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barColor];
  v115 = Color.init(_:)();
  v111 = v49;
  v112 = &protocol witness table for LineMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v89;
  v53 = v93;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v95 + 8))(v48, v53);
  v111 = v53;
  v112 = &type metadata for Color;
  v113 = OpaqueTypeConformance2;
  v114 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v54 = v105;
  v55 = v96;
  ChartContent.interpolationMethod(_:)();
  (*(v97 + 8))(v52, v55);
  v56 = *(v104 + 16);
  v57 = v103;
  v58 = v86;
  v56(v103, v109, v86);
  v59 = *(v106 + 16);
  v60 = v92;
  v61 = v94;
  v59(v92, v54, v94);
  v62 = v98;
  v56(v98, v57, v58);
  v63 = v99;
  v64 = *(v99 + 56);
  v59(&v62[v64], v60, v61);
  v65 = v104;
  v66 = v100;
  (*(v104 + 32))(v100, v62, v58);
  v67 = v106;
  (*(v106 + 32))(v66 + *(v63 + 56), &v62[v64], v61);
  v68 = *(v67 + 8);
  v68(v105, v61);
  v69 = *(v65 + 8);
  v69(v109, v58);
  v68(v60, v61);
  return (v69)(v103, v58);
}