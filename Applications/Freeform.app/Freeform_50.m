void sub_10081F4CC(void (**a1)(uint64_t, void, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v5 = sub_1005B981C(&unk_101A0DAE0);
  __chkstk_darwin(v5 - 8);
  v23 = &v20 - v6;
  v7 = sub_1005B981C(qword_101A0CF60);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  if (a3 >= 1)
  {
    v20 = (v8 + 56);
    v21 = (v8 + 16);
    v22 = (v8 + 8);
    do
    {
      v25 = 0;
      v26 = 0;
      sub_1005B981C(&unk_1019FFD10);
      v11 = CRAttributedString.attributes(at:effectiveRange:)();
      __chkstk_darwin(v11);
      *(&v20 - 4) = &type metadata for CRLWPUnderlineAttribute;
      v12 = sub_100824704();
      v13 = v24;
      *(&v20 - 3) = v12;
      *(&v20 - 2) = v13;
      swift_getKeyPath();
      v27 = 0;
      v28 = -1;
      sub_100824758();

      CRAttributedString.Attributes.subscript.setter();
      v14 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      v15 = a2 + a3;
      if (__OFADD__(a2, a3))
      {
        goto LABEL_22;
      }

      if (v14 >= v15)
      {
        v16 = a2 + a3;
      }

      else
      {
        v16 = v25 + v26;
      }

      if (v25 < a2 || v25 >= v15)
      {
        if (a2 < v25 || a2 >= v14)
        {
          (*v22)(v10, v7);
          return;
        }

        v17 = v16 - a2;
        if (__OFSUB__(v16, a2))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v17 = v16 - v25;
        if (__OFSUB__(v16, v25))
        {
          goto LABEL_25;
        }
      }

      v18 = v23;
      (*v21)(v23, v10, v7);
      (*v20)(v18, 0, 1, v7);
      CRAttributedString.setAttributes(_:range:)();
      sub_10000CAAC(v18, &unk_101A0DAE0);
      (*v22)(v10, v7);
      v19 = __OFADD__(a2, v17);
      a2 += v17;
      if (v19)
      {
        goto LABEL_23;
      }

      v19 = __OFSUB__(a3, v17);
      a3 -= v17;
      if (v19)
      {
        goto LABEL_24;
      }
    }

    while (a3 > 0);
  }
}

void sub_10081F82C(void (**a1)(uint64_t, void, uint64_t, uint64_t), uint64_t a2, uint64_t a3, void (**a4)(uint64_t, void, uint64_t, uint64_t), uint64_t (*a5)(__n128), void (*a6)(void))
{
  v30 = a5;
  v31 = a6;
  v28 = a1;
  v29 = a4;
  v8 = sub_1005B981C(&unk_101A0DAE0);
  __chkstk_darwin(v8 - 8);
  v27 = &v24 - v9;
  v10 = sub_1005B981C(qword_101A0CF60);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  if (a3 >= 1)
  {
    v24 = (v11 + 56);
    v25 = (v11 + 16);
    v26 = (v11 + 8);
    v14 = v28;
    do
    {
      v32 = 0;
      v33 = 0;
      sub_1005B981C(&unk_1019FFD10);
      v15 = CRAttributedString.attributes(at:effectiveRange:)();
      v16 = __chkstk_darwin(v15);
      v17 = v30;
      *(&v24 - 4) = v29;
      *(&v24 - 3) = v17(v16);
      *(&v24 - 2) = v14;
      swift_getKeyPath();
      v34 = 2;
      v31();

      CRAttributedString.Attributes.subscript.setter();
      v18 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      v19 = a2 + a3;
      if (__OFADD__(a2, a3))
      {
        goto LABEL_22;
      }

      if (v18 >= v19)
      {
        v20 = a2 + a3;
      }

      else
      {
        v20 = v32 + v33;
      }

      if (v32 < a2 || v32 >= v19)
      {
        if (a2 < v32 || a2 >= v18)
        {
          (*v26)(v13, v10);
          return;
        }

        v21 = v20 - a2;
        if (__OFSUB__(v20, a2))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v21 = v20 - v32;
        if (__OFSUB__(v20, v32))
        {
          goto LABEL_25;
        }
      }

      v22 = v27;
      (*v25)(v27, v13, v10);
      (*v24)(v22, 0, 1, v10);
      CRAttributedString.setAttributes(_:range:)();
      sub_10000CAAC(v22, &unk_101A0DAE0);
      (*v26)(v13, v10);
      v23 = __OFADD__(a2, v21);
      a2 += v21;
      if (v23)
      {
        goto LABEL_23;
      }

      v23 = __OFSUB__(a3, v21);
      a3 -= v21;
      if (v23)
      {
        goto LABEL_24;
      }
    }

    while (a3 > 0);
  }
}

void sub_10081FB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = sub_1005B981C(&unk_101A0DAE0);
  __chkstk_darwin(v5 - 8);
  v24 = &v20 - v6;
  v7 = sub_1005B981C(qword_101A0CF60);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  if (a3 >= 1)
  {
    v21 = (v8 + 56);
    v22 = (v8 + 16);
    v23 = (v8 + 8);
    do
    {
      v26 = 0;
      v27 = 0;
      sub_1005B981C(&unk_1019FFD10);
      v11 = CRAttributedString.attributes(at:effectiveRange:)();
      __chkstk_darwin(v11);
      *(&v20 - 4) = &type metadata for CRLWPFontSizeAttribute;
      v12 = sub_10082465C();
      v13 = v25;
      *(&v20 - 3) = v12;
      *(&v20 - 2) = v13;
      swift_getKeyPath();
      v28 = 0;
      v29 = 1;
      sub_1008246B0();

      CRAttributedString.Attributes.subscript.setter();
      v14 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      v15 = a2 + a3;
      if (__OFADD__(a2, a3))
      {
        goto LABEL_22;
      }

      if (v14 >= v15)
      {
        v16 = a2 + a3;
      }

      else
      {
        v16 = v26 + v27;
      }

      if (v26 < a2 || v26 >= v15)
      {
        if (a2 < v26 || a2 >= v14)
        {
          (*v23)(v10, v7);
          return;
        }

        v17 = v16 - a2;
        if (__OFSUB__(v16, a2))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v17 = v16 - v26;
        if (__OFSUB__(v16, v26))
        {
          goto LABEL_25;
        }
      }

      v18 = v24;
      (*v22)(v24, v10, v7);
      (*v21)(v18, 0, 1, v7);
      CRAttributedString.setAttributes(_:range:)();
      sub_10000CAAC(v18, &unk_101A0DAE0);
      (*v23)(v10, v7);
      v19 = __OFADD__(a2, v17);
      a2 += v17;
      if (v19)
      {
        goto LABEL_23;
      }

      v19 = __OFSUB__(a3, v17);
      a3 -= v17;
      if (v19)
      {
        goto LABEL_24;
      }
    }

    while (a3 > 0);
  }
}

void sub_10081FEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = sub_1005B981C(&unk_101A0DAE0);
  __chkstk_darwin(v5 - 8);
  v24 = &v20 - v6;
  v7 = sub_1005B981C(qword_101A0CF60);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  if (a3 >= 1)
  {
    v22 = (v8 + 16);
    v21 = (v8 + 56);
    v23 = (v8 + 8);
    do
    {
      v26 = 0;
      v27 = 0;
      sub_1005B981C(&unk_1019FFD10);
      v11 = CRAttributedString.attributes(at:effectiveRange:)();
      __chkstk_darwin(v11);
      *(&v20 - 4) = &type metadata for CRLWPCharacterFillAttribute;
      v12 = sub_10082489C();
      v13 = v25;
      *(&v20 - 3) = v12;
      *(&v20 - 2) = v13;
      swift_getKeyPath();
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      sub_1008248F0();

      CRAttributedString.Attributes.subscript.setter();
      v14 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      v15 = a2 + a3;
      if (__OFADD__(a2, a3))
      {
        goto LABEL_22;
      }

      if (v14 >= v15)
      {
        v16 = a2 + a3;
      }

      else
      {
        v16 = v26 + v27;
      }

      if (v26 < a2 || v26 >= v15)
      {
        if (a2 < v26 || a2 >= v14)
        {
          (*v23)(v10, v7);
          return;
        }

        v17 = v16 - a2;
        if (__OFSUB__(v16, a2))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v17 = v16 - v26;
        if (__OFSUB__(v16, v26))
        {
          goto LABEL_25;
        }
      }

      v18 = v24;
      (*v22)(v24, v10, v7);
      (*v21)(v18, 0, 1, v7);
      CRAttributedString.setAttributes(_:range:)();
      sub_10000CAAC(v18, &unk_101A0DAE0);
      (*v23)(v10, v7);
      v19 = __OFADD__(a2, v17);
      a2 += v17;
      if (v19)
      {
        goto LABEL_23;
      }

      v19 = __OFSUB__(a3, v17);
      a3 -= v17;
      if (v19)
      {
        goto LABEL_24;
      }
    }

    while (a3 > 0);
  }
}

uint64_t sub_100820324(uint64_t a1)
{

  sub_100A46EFC(a1);
}

void sub_10082037C(void (**a1)(uint64_t, void, uint64_t, uint64_t), uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v42 = a6;
  v39 = a3;
  v38 = a2;
  v40 = a1;
  v7 = sub_1005B981C(qword_101A0CF60);
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = sub_1005B981C(&unk_1019FFD10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    ObjectType = swift_getObjectType();
    v23 = swift_conformsToProtocol2();
    if (!v23)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v24 = sub_1012778D4(ObjectType, v23);

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  v25 = *(a4 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  (*(*v25 + 896))();
  sub_1008243E0(&v16[*(v14 + 20)], v19, type metadata accessor for CRLWPStorageCRDTData);
  sub_100824448(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v11 + 16))(v13, v19, v10);
  sub_100824448(v19, type metadata accessor for CRLWPStorageCRDTData);
  v26 = CRAttributedString.count.getter();
  (*(v11 + 8))(v13, v10);
  if (v26 >= (v41 & ~(v41 >> 63)))
  {
    v27 = v41 & ~(v41 >> 63);
  }

  else
  {
    v27 = v26;
  }

  v28 = v42 & ~(v42 >> 63);
  if (v26 >= v28)
  {
    v29 = v42 & ~(v42 >> 63);
  }

  else
  {
    v29 = v26;
  }

  if (v28 < v27)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v39;
  if (v39 == 0xFF)
  {
    sub_10082211C(v40, v27, v29, &type metadata for CRLWPFontBoldAttribute, sub_1008244A8, sub_1008244FC);
    return;
  }

  sub_10068D144();
  v31 = CRAttributedString.Attributes.init()();
  __chkstk_darwin(v31);
  *(&v36 - 4) = &type metadata for CRLWPFontBoldAttribute;
  v32 = sub_1008244A8();
  v33 = v40;
  *(&v36 - 3) = v32;
  *(&v36 - 2) = v33;
  swift_getKeyPath();
  if ((v30 & 1) == 0)
  {
    v34 = v38;
    goto LABEL_18;
  }

  if (!*(v38 + 16))
  {
    goto LABEL_21;
  }

  v34 = *(v38 + 32);
LABEL_18:
  v43 = v34 & 1;
  sub_1008244FC();

  v35 = v37;
  CRAttributedString.Attributes.subscript.setter();
  sub_100A33634(v9, v27, v29);
  (*(v36 + 8))(v9, v35);
}

void sub_100820818(void (**a1)(uint64_t, void, uint64_t, uint64_t), uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v42 = a6;
  v39 = a3;
  v38 = a2;
  v40 = a1;
  v7 = sub_1005B981C(qword_101A0CF60);
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = sub_1005B981C(&unk_1019FFD10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    ObjectType = swift_getObjectType();
    v23 = swift_conformsToProtocol2();
    if (!v23)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v24 = sub_1012778D4(ObjectType, v23);

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  v25 = *(a4 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  (*(*v25 + 896))();
  sub_1008243E0(&v16[*(v14 + 20)], v19, type metadata accessor for CRLWPStorageCRDTData);
  sub_100824448(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v11 + 16))(v13, v19, v10);
  sub_100824448(v19, type metadata accessor for CRLWPStorageCRDTData);
  v26 = CRAttributedString.count.getter();
  (*(v11 + 8))(v13, v10);
  if (v26 >= (v41 & ~(v41 >> 63)))
  {
    v27 = v41 & ~(v41 >> 63);
  }

  else
  {
    v27 = v26;
  }

  v28 = v42 & ~(v42 >> 63);
  if (v26 >= v28)
  {
    v29 = v42 & ~(v42 >> 63);
  }

  else
  {
    v29 = v26;
  }

  if (v28 < v27)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v39;
  if (v39 == 0xFF)
  {
    sub_10082211C(v40, v27, v29, &type metadata for CRLWPFontItalicAttribute, sub_1008245B4, sub_100824608);
    return;
  }

  sub_10068D144();
  v31 = CRAttributedString.Attributes.init()();
  __chkstk_darwin(v31);
  *(&v36 - 4) = &type metadata for CRLWPFontItalicAttribute;
  v32 = sub_1008245B4();
  v33 = v40;
  *(&v36 - 3) = v32;
  *(&v36 - 2) = v33;
  swift_getKeyPath();
  if ((v30 & 1) == 0)
  {
    v34 = v38;
    goto LABEL_18;
  }

  if (!*(v38 + 16))
  {
    goto LABEL_21;
  }

  v34 = *(v38 + 32);
LABEL_18:
  v43 = v34 & 1;
  sub_100824608();

  v35 = v37;
  CRAttributedString.Attributes.subscript.setter();
  sub_100A33634(v9, v27, v29);
  (*(v36 + 8))(v9, v35);
}

void sub_100820CB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v42 = a6;
  v39 = a3;
  v38 = a2;
  v40 = a1;
  v7 = sub_1005B981C(qword_101A0CF60);
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = sub_1005B981C(&unk_1019FFD10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    ObjectType = swift_getObjectType();
    v23 = swift_conformsToProtocol2();
    if (!v23)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v24 = sub_1012778D4(ObjectType, v23);

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  v25 = *(a4 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  (*(*v25 + 896))();
  sub_1008243E0(&v16[*(v14 + 20)], v19, type metadata accessor for CRLWPStorageCRDTData);
  sub_100824448(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v11 + 16))(v13, v19, v10);
  sub_100824448(v19, type metadata accessor for CRLWPStorageCRDTData);
  v26 = CRAttributedString.count.getter();
  (*(v11 + 8))(v13, v10);
  if (v26 >= (v41 & ~(v41 >> 63)))
  {
    v27 = v41 & ~(v41 >> 63);
  }

  else
  {
    v27 = v26;
  }

  v28 = v42 & ~(v42 >> 63);
  if (v26 >= v28)
  {
    v29 = v42 & ~(v42 >> 63);
  }

  else
  {
    v29 = v26;
  }

  if (v28 < v27)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v39;
  if (v39 == 0xFF)
  {
    sub_1008223D0(v40, v27, v29, sub_10081FB94);
    return;
  }

  sub_10068D144();
  v31 = CRAttributedString.Attributes.init()();
  __chkstk_darwin(v31);
  *(&v36 - 4) = &type metadata for CRLWPFontSizeAttribute;
  v32 = sub_10082465C();
  v33 = v40;
  *(&v36 - 3) = v32;
  *(&v36 - 2) = v33;
  swift_getKeyPath();
  if ((v30 & 1) == 0)
  {
    v34 = v38;
    goto LABEL_18;
  }

  if (!*(v38 + 16))
  {
    goto LABEL_21;
  }

  v34 = *(v38 + 32);
LABEL_18:
  v43 = v34;
  v44 = 0;
  sub_1008246B0();

  v35 = v37;
  CRAttributedString.Attributes.subscript.setter();
  sub_100A33634(v9, v27, v29);
  (*(v36 + 8))(v9, v35);
}

void sub_100821134(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v40 = a3;
  v39 = a2;
  v41 = a1;
  v7 = sub_1005B981C(qword_101A0CF60);
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = sub_1005B981C(&unk_1019FFD10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    ObjectType = swift_getObjectType();
    v23 = swift_conformsToProtocol2();
    if (!v23)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v24 = sub_1012778D4(ObjectType, v23);

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  v25 = *(a4 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  (*(*v25 + 896))();
  sub_1008243E0(&v16[*(v14 + 20)], v19, type metadata accessor for CRLWPStorageCRDTData);
  sub_100824448(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v11 + 16))(v13, v19, v10);
  sub_100824448(v19, type metadata accessor for CRLWPStorageCRDTData);
  v26 = CRAttributedString.count.getter();
  (*(v11 + 8))(v13, v10);
  if (v26 >= (v42 & ~(v42 >> 63)))
  {
    v27 = v42 & ~(v42 >> 63);
  }

  else
  {
    v27 = v26;
  }

  v28 = v43 & ~(v43 >> 63);
  if (v26 >= v28)
  {
    v29 = v43 & ~(v43 >> 63);
  }

  else
  {
    v29 = v26;
  }

  if (v28 < v27)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v40;
  if (v40 == 0xFF)
  {
    sub_1008223D0(v41, v27, v29, sub_10081F4CC);
    return;
  }

  sub_10068D144();
  v31 = CRAttributedString.Attributes.init()();
  __chkstk_darwin(v31);
  *(&v36 - 4) = &type metadata for CRLWPUnderlineAttribute;
  v32 = sub_100824704();
  v33 = v41;
  *(&v36 - 3) = v32;
  *(&v36 - 2) = v33;
  swift_getKeyPath();
  if ((v30 & 1) == 0)
  {
    v34 = v39;
    goto LABEL_18;
  }

  if (!*(v39 + 16))
  {
    goto LABEL_21;
  }

  v34 = *(v39 + 32);
LABEL_18:
  v44 = v34;
  v45 = 0;
  sub_100824758();

  v35 = v38;
  CRAttributedString.Attributes.subscript.setter();
  sub_100A33634(v9, v27, v29);
  (*(v37 + 8))(v9, v35);
}

void sub_1008215B4(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v41 = a3;
  v40 = a2;
  v42 = a1;
  v7 = sub_1005B981C(qword_101A0CF60);
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = sub_1005B981C(&unk_1019FFD10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    ObjectType = swift_getObjectType();
    v23 = swift_conformsToProtocol2();
    if (!v23)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v24 = sub_1012778D4(ObjectType, v23);

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  v25 = *(a4 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v25)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  (*(*v25 + 896))();
  sub_1008243E0(&v16[*(v14 + 20)], v19, type metadata accessor for CRLWPStorageCRDTData);
  sub_100824448(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v11 + 16))(v13, v19, v10);
  sub_100824448(v19, type metadata accessor for CRLWPStorageCRDTData);
  v26 = CRAttributedString.count.getter();
  (*(v11 + 8))(v13, v10);
  if (v26 >= (v43 & ~(v43 >> 63)))
  {
    v27 = v43 & ~(v43 >> 63);
  }

  else
  {
    v27 = v26;
  }

  v28 = v44 & ~(v44 >> 63);
  if (v26 >= v28)
  {
    v29 = v44 & ~(v44 >> 63);
  }

  else
  {
    v29 = v26;
  }

  if (v28 < v27)
  {
    __break(1u);
    goto LABEL_22;
  }

  v30 = v41;
  if (v41 == 0xFF)
  {
    sub_1008223D0(v42, v27, v29, sub_10081FEF4);
    return;
  }

  sub_10068D144();
  v31 = CRAttributedString.Attributes.init()();
  __chkstk_darwin(v31);
  *(&v38 - 4) = &type metadata for CRLWPCharacterFillAttribute;
  v32 = sub_10082489C();
  v33 = v42;
  *(&v38 - 3) = v32;
  *(&v38 - 2) = v33;
  swift_getKeyPath();
  if ((v30 & 1) == 0)
  {

    v36 = v40;
    sub_100824944(v40, v30);
    v35 = v36;
    goto LABEL_19;
  }

  if ((v40 & 0xC000000000000001) != 0)
  {
LABEL_22:

    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_24;
  }

  v34 = *(v40 + 32);

  v35 = v34;
LABEL_19:
  v37 = v39;
  sub_101247234(v35, v45);
  sub_1008248F0();
  CRAttributedString.Attributes.subscript.setter();
  sub_100A33634(v9, v27, v29);
  (*(v38 + 8))(v9, v37);
}

void sub_100821A74(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v64 = a5;
  v65 = a6;
  v62 = a3;
  v59 = a2;
  v63 = a1;
  v7 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v7 - 8);
  v60 = &v56 - v8;
  v9 = sub_1005B981C(&unk_101A096C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v56 - v10;
  v12 = sub_1005B981C(qword_101A0CF60);
  v57 = *(v12 - 8);
  v58 = v12;
  __chkstk_darwin(v12);
  v61 = &v56 - v13;
  v14 = sub_1005B981C(&unk_1019FFD10);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v56 - v16;
  v18 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v21 - 8);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    ObjectType = swift_getObjectType();
    v28 = swift_conformsToProtocol2();
    if (!v28)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v29 = sub_1012778D4(ObjectType, v28);

    if ((v29 & 1) == 0)
    {
      return;
    }
  }

  v30 = *(v24 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v30)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  (*(*v30 + 896))();
  sub_1008243E0(&v20[*(v18 + 20)], v23, type metadata accessor for CRLWPStorageCRDTData);
  sub_100824448(v20, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v15 + 16))(v17, v23, v14);
  sub_100824448(v23, type metadata accessor for CRLWPStorageCRDTData);
  v31 = CRAttributedString.count.getter();
  (*(v15 + 8))(v17, v14);
  if (v31 >= (v64 & ~(v64 >> 63)))
  {
    v32 = v64 & ~(v64 >> 63);
  }

  else
  {
    v32 = v31;
  }

  v33 = v65 & ~(v65 >> 63);
  if (v31 >= v33)
  {
    v34 = v65 & ~(v65 >> 63);
  }

  else
  {
    v34 = v31;
  }

  if (v33 < v32)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v35 = v62;
  if (v62 == 0xFF)
  {
    sub_1008223D0(v63, v32, v34, sub_10081F0E4);
    return;
  }

  v65 = v34;
  sub_10068D144();
  v36 = v61;
  v37 = CRAttributedString.Attributes.init()();
  __chkstk_darwin(v37);
  *(&v56 - 4) = &type metadata for CRLWPHyperlinkAttribute;
  v38 = sub_1008247F4();
  v39 = v63;
  *(&v56 - 3) = v38;
  *(&v56 - 2) = v39;
  swift_getKeyPath();
  if ((v35 & 1) == 0)
  {
    v41 = v59;
    v40 = v60;
    if (!v59)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v40 = v60;
  if (!v59[2])
  {
    goto LABEL_27;
  }

  v41 = v59[4];
  if (v41)
  {
LABEL_19:
    v43 = v41;

    v44 = [v43 url];
    if (v44)
    {
      v45 = v44;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    v47 = type metadata accessor for URL();
    (*(*(v47 - 8) + 56))(v40, v46, 1, v47);
    v48 = [v43 textAttributeUUIDString];
    if (v48)
    {
      v49 = v48;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      *v11 = 0;
      v11[8] = 0;
      v53 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
      sub_100044B68(v40, &v11[v53[5]]);
      v54 = &v11[v53[6]];
      *v54 = v50;
      v54[1] = v52;
      *&v11[v53[7]] = _swiftEmptyDictionarySingleton;
      (*(*(v53 - 1) + 56))(v11, 0, 1, v53);

      goto LABEL_24;
    }

LABEL_30:
    __break(1u);
    return;
  }

LABEL_16:
  v42 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  (*(*(v42 - 8) + 56))(v11, 1, 1, v42);

LABEL_24:
  sub_100824848();
  v55 = v58;
  CRAttributedString.Attributes.subscript.setter();
  sub_100A33634(v36, v32, v65);
  (*(v57 + 8))(v36, v55);
}

void sub_10082211C(void (**a1)(uint64_t, void, uint64_t, uint64_t), uint64_t a2, uint64_t a3, void (**a4)(uint64_t, void, uint64_t, uint64_t), uint64_t (*a5)(__n128), void (*a6)(void))
{
  v28 = a5;
  v29 = a6;
  v8 = v6;
  v12 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    ObjectType = swift_getObjectType();
    v21 = swift_conformsToProtocol2();
    if (!v21)
    {
LABEL_10:
      __break(1u);
      return;
    }

    v22 = sub_1012778D4(ObjectType, v21);

    if ((v22 & 1) == 0)
    {
      return;
    }
  }

  v23 = *(v8 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v24 = __OFSUB__(a3, a2);
  v25 = a3 - a2;
  if (v24)
  {
    __break(1u);
    goto LABEL_9;
  }

  (*(*v23 + 896))();
  sub_1008243E0(&v14[*(v12 + 20)], v17, type metadata accessor for CRLWPStorageCRDTData);

  sub_100824448(v14, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10081F82C(a1, a2, v25, a4, v28, v29);
  v26 = (*(*v23 + 912))(v30);
  sub_100824550(v17, v27 + *(v12 + 20));
  v26(v30, 0);

  sub_100824448(v17, type metadata accessor for CRLWPStorageCRDTData);
  *(v8 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) = 0;
}

void sub_1008223D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = v4;
  v10 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v10);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    ObjectType = swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (!v19)
    {
LABEL_10:
      __break(1u);
      return;
    }

    v20 = sub_1012778D4(ObjectType, v19);

    if ((v20 & 1) == 0)
    {
      return;
    }
  }

  v21 = *(v6 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v21)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v22 = __OFSUB__(a3, a2);
  v23 = a3 - a2;
  if (v22)
  {
    __break(1u);
    goto LABEL_9;
  }

  (*(*v21 + 896))();
  sub_1008243E0(&v12[*(v10 + 20)], v15, type metadata accessor for CRLWPStorageCRDTData);

  sub_100824448(v12, type metadata accessor for CRLWPShapeItemCRDTData);
  a4(a1, a2, v23);
  v24 = (*(*v21 + 912))(v26);
  sub_100824550(v15, v25 + *(v10 + 20));
  v24(v26, 0);

  sub_100824448(v15, type metadata accessor for CRLWPStorageCRDTData);
  *(v6 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) = 0;
}

uint64_t sub_100822664(void *a1, char a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1008247AC(&qword_101A22920, type metadata accessor for CRLBoard);
  UUID.init()();
  type metadata accessor for CRLTransactionContext(0);
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications) = &_swiftEmptyDictionarySingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications) = &_swiftEmptyDictionarySingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects) = _swiftEmptySetSingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableCreatedObjects) = _swiftEmptySetSingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects) = _swiftEmptySetSingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects) = _swiftEmptySetSingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances) = _swiftEmptySetSingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans) = _swiftEmptyArrayStorage;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) = 0;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds) = _swiftEmptySetSingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds) = _swiftEmptySetSingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) = 1;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext__observableDelta) = 0;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_affectedItemUUIDSetForUndoableItems) = _swiftEmptySetSingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 0;
  (*(v5 + 32))(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_id, v7, v4);
  v10 = (v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner);
  *v10 = a1;
  v10[1] = v8;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) = 0;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges) = 1;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_dirtiesOwner) = a2;
  v11 = a1;
  return v9;
}

uint64_t sub_10082294C(uint64_t a1, char a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1008247AC(a3, a4);
  UUID.init()();
  type metadata accessor for CRLTransactionContext(0);
  v13 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications) = &_swiftEmptyDictionarySingleton;
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications) = &_swiftEmptyDictionarySingleton;
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects) = _swiftEmptySetSingleton;
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableCreatedObjects) = _swiftEmptySetSingleton;
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects) = _swiftEmptySetSingleton;
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects) = _swiftEmptySetSingleton;
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances) = _swiftEmptySetSingleton;
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans) = _swiftEmptyArrayStorage;
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) = 0;
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds) = _swiftEmptySetSingleton;
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds) = _swiftEmptySetSingleton;
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) = 1;
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext__observableDelta) = 0;
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_affectedItemUUIDSetForUndoableItems) = _swiftEmptySetSingleton;
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 0;
  (*(v9 + 32))(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_id, v11, v8);
  v14 = (v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner);
  *v14 = a1;
  v14[1] = v12;
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) = 0;
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges) = 1;
  *(v13 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_dirtiesOwner) = a2;

  return v13;
}

void sub_100822BB8(char *a1)
{
  v2 = sub_1005B981C(&unk_1019FFD10);
  v3 = *(v2 - 8);
  v201 = v2;
  v202 = v3;
  __chkstk_darwin(v2);
  v200 = &v179 - v4;
  v198 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v198);
  v199 = &v179 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for CRLWPStorageCRDTData(0);
  v216 = *(v209 - 1);
  __chkstk_darwin(v209);
  v197 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString();
  v210 = *(v7 - 8);
  __chkstk_darwin(v7);
  v185 = &v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v187 = &v179 - v10;
  __chkstk_darwin(v11);
  v194 = &v179 - v12;
  v13 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v13 - 8);
  v207 = &v179 - v14;
  v15 = sub_1005B981C(&qword_1019FC880);
  __chkstk_darwin(v15 - 8);
  v184 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v188 = &v179 - v18;
  __chkstk_darwin(v19);
  v186 = &v179 - v20;
  __chkstk_darwin(v21);
  v203 = &v179 - v22;
  __chkstk_darwin(v23);
  v206 = &v179 - v24;
  __chkstk_darwin(v25);
  v27 = &v179 - v26;
  inserted = type metadata accessor for CRLBoardInsertStyleData(0);
  __chkstk_darwin(inserted - 8);
  v30 = &v179 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_100822664(a1, 1);
  v31 = *&a1[OBJC_IVAR____TtC8Freeform8CRLBoard_data] + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v32 = type metadata accessor for CRLBoardCRDTData(0);
  sub_1008243E0(v31 + *(v32 + 28), v30, type metadata accessor for CRLBoardInsertStyleData);
  v33 = type metadata accessor for CRLBoardItemFactory();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board] = a1;
  sub_1008243E0(v30, &v34[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_insertStyleSettings], type metadata accessor for CRLBoardInsertStyleData);
  v211.receiver = v34;
  v211.super_class = v33;
  v35 = a1;
  v36 = v27;
  v37 = objc_msgSendSuper2(&v211, "init");
  sub_100824448(v30, type metadata accessor for CRLBoardInsertStyleData);
  v38 = *(v210 + 56);
  v205 = v7;
  v195 = v38;
  v196 = v210 + 56;
  v38(v27, 1, 1, v7);
  sub_1006950BC(v214);
  v212[12] = v214[12];
  v212[13] = v214[13];
  v212[14] = v214[14];
  v213 = v215;
  v212[8] = v214[8];
  v212[9] = v214[9];
  v212[10] = v214[10];
  v212[11] = v214[11];
  v212[4] = v214[4];
  v212[5] = v214[5];
  v212[6] = v214[6];
  v212[7] = v214[7];
  v212[0] = v214[0];
  v212[1] = v214[1];
  v212[2] = v214[2];
  v212[3] = v214[3];
  v39 = 0;
  if (!sub_100824318(4))
  {
    v40 = v35;
    v41 = v206;
    sub_100824324(v27, v206);
    v42 = v210;
    v43 = *(v210 + 48);
    v44 = v41;
    v45 = v205;
    if (v43(v44, 1, v205) == 1)
    {
      AttributedString.init(stringLiteral:)();
      if (v43(v206, 1, v45) != 1)
      {
        sub_10000CAAC(v206, &qword_1019FC880);
      }
    }

    else
    {
      (*(v42 + 32))(v194, v206, v45);
    }

    sub_100824394();
    v39 = NSAttributedString.init(_:)();
    v35 = v40;
    v36 = v27;
  }

  v193 = v35;
  v46 = *(v216 + 56);
  v47 = v36;
  v48 = v207;
  v216 += 56;
  v194 = v46;
  (v46)(v207, 1, 1, v209);
  v49 = sub_1011133FC(4, 0, 0, 0, 0x4082C00000000000, 0x406F400000000000, 0, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, v39, v48, v212, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v48, &unk_101A0B1C0);
  sub_10000CAAC(v47, &qword_1019FC880);
  v192 = OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer;
  v50 = *&v35[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];
  v191 = sub_1005B981C(&unk_1019F4D60);
  v51 = swift_allocObject();
  v190 = xmmword_101465920;
  *(v51 + 16) = xmmword_101465920;
  *(v51 + 32) = v49;
  v52 = v50;
  v206 = v49;
  v53 = NSNotFound.getter();
  v54 = sub_1005B981C(&unk_101A09DB0);
  inited = swift_initStackObject();
  v189 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = v53;
  v56 = inited + 32;
  *(inited + 40) = v51;
  v57 = sub_100BD4E94(inited);
  swift_setDeallocating();
  sub_10000CAAC(v56, &qword_101A039D0);
  v58 = v204;
  sub_100971EFC(v57, v208);
  if (v58)
  {

    return;
  }

  v182 = v54;
  v183 = 0;
  v204 = v37;

  v206 = objc_opt_self();
  v59 = [v206 blackColor];
  v181 = objc_opt_self();
  v60 = [v181 strokeWithColor:v59 width:3.0];

  v61 = objc_opt_self();
  v62 = [v61 simpleArrow];
  v63 = [v61 simpleArrow];
  v64 = v203;
  v65 = v205;
  v195(v203, 1, 1, v205);
  if (sub_100824318(1))
  {
    v66 = 0;
    v67 = v204;
    v68 = v209;
  }

  else
  {
    v180 = v60;
    v69 = v186;
    sub_100824324(v64, v186);
    v70 = v210;
    v71 = *(v210 + 48);
    v72 = v71(v69, 1, v65);
    v68 = v209;
    if (v72 == 1)
    {
      AttributedString.init(stringLiteral:)();
      v73 = v71(v69, 1, v65);
      v67 = v204;
      if (v73 != 1)
      {
        sub_10000CAAC(v69, &qword_1019FC880);
      }
    }

    else
    {
      (*(v70 + 32))(v187, v69, v65);
      v67 = v204;
    }

    sub_100824394();
    v66 = NSAttributedString.init(_:)();
    v60 = v180;
  }

  v74 = v207;
  (v194)(v207, 1, 1, v68);
  v75 = sub_1011133FC(1, 0, 0, 0, 0x4069000000000000, 0x407F400000000000, 0, 0, 0, 0x4073B00000000000, 0, 2, 2, v60, 1, v62, v63, v66, v74, v212, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v74, &unk_101A0B1C0);
  sub_10000CAAC(v203, &qword_1019FC880);
  v76 = *&v193[v192];
  v77 = swift_allocObject();
  *(v77 + 16) = v190;
  *(v77 + 32) = v75;
  v78 = v76;
  v79 = v75;
  v80 = NSNotFound.getter();
  v81 = swift_initStackObject();
  *(v81 + 16) = v189;
  v82 = v67;
  *(v81 + 32) = v80;
  v83 = v81 + 32;
  *(v81 + 40) = v77;
  v84 = sub_100BD4E94(v81);
  swift_setDeallocating();
  sub_10000CAAC(v83, &qword_101A039D0);
  v85 = v183;
  sub_100971EFC(v84, v208);
  if (v85)
  {

    return;
  }

  v183 = 0;

  v86 = [v206 orangeColor];
  v87 = [v181 strokeWithColor:v86 width:3.0];

  v88 = [objc_opt_self() yellowColor];
  v89 = v188;
  v90 = v205;
  v195(v188, 1, 1, v205);
  LOBYTE(v86) = sub_100824318(11);
  v203 = v87;
  v206 = v88;
  if (v86)
  {
    v91 = 0;
  }

  else
  {
    v92 = v184;
    sub_100824324(v89, v184);
    v93 = v210;
    v94 = *(v210 + 48);
    if (v94(v92, 1, v90) == 1)
    {
      AttributedString.init(stringLiteral:)();
      if (v94(v92, 1, v90) != 1)
      {
        sub_10000CAAC(v92, &qword_1019FC880);
      }
    }

    else
    {
      (*(v93 + 32))(v185, v92, v90);
    }

    sub_100824394();
    v91 = NSAttributedString.init(_:)();
  }

  (v194)(v74, 1, 1, v209);
  v95 = sub_1011133FC(11, 0, 0, 0, 0x4082C00000000000, 0x407C200000000000, 0, 0, 0, 0, 1, 2, 2, v87, v88, 1, 1, v91, v74, v212, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v74, &unk_101A0B1C0);
  sub_10000CAAC(v188, &qword_1019FC880);
  type metadata accessor for CRLWPShapeItem();
  v96 = swift_dynamicCastClassUnconditional();
  v97 = OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage;
  v98 = *(v96 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v98)
  {
    __break(1u);
    goto LABEL_66;
  }

  v99 = v96;
  v100 = v98;
  sub_100A2E1E0(0xD00000000000002FLL, 0x800000010156C410);

  v101 = *(v99 + v97);
  if (!v101)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v216 = v99;
  v207 = v95;
  KeyPath = swift_getKeyPath();
  v103 = *&v101[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v103)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v104 = KeyPath;
  v105 = v199;
  (*(*v103 + 896))();
  v106 = v197;
  sub_1008243E0(v105 + *(v198 + 20), v197, type metadata accessor for CRLWPStorageCRDTData);
  v107 = v101;
  sub_100824448(v105, type metadata accessor for CRLWPShapeItemCRDTData);
  v108 = v201;
  v109 = v202;
  v110 = v200;
  v210 = *(v202 + 16);
  (v210)(v200, v106, v201);
  sub_100824448(v106, type metadata accessor for CRLWPStorageCRDTData);
  v111 = CRAttributedString.count.getter();
  v112 = *(v109 + 8);
  v202 = v109 + 8;
  v209 = v112;
  (v112)(v110, v108);
  if (v111 >= 4)
  {
    v113 = 4;
  }

  else
  {
    v113 = v111;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_34;
  }

  v115 = Strong;
  ObjectType = swift_getObjectType();
  v117 = swift_conformsToProtocol2();
  if (!v117)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v118 = sub_1012778D4(ObjectType, v117);

  if (v118)
  {
LABEL_34:
    sub_100821134(v104, 1, 0, v107, v111 & (v111 >> 63), v113);
  }

  v119 = *(v216 + v97);
  if (!v119)
  {
    goto LABEL_68;
  }

  v120 = swift_getKeyPath();
  v121 = *&v119[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v121)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v122 = v120;
  v123 = v199;
  (*(*v121 + 896))();
  v124 = v197;
  sub_1008243E0(v123 + *(v198 + 20), v197, type metadata accessor for CRLWPStorageCRDTData);
  v125 = v119;
  sub_100824448(v123, type metadata accessor for CRLWPShapeItemCRDTData);
  v126 = v200;
  v127 = v201;
  (v210)(v200, v124, v201);
  sub_100824448(v124, type metadata accessor for CRLWPStorageCRDTData);
  v128 = CRAttributedString.count.getter();
  (v209)(v126, v127);
  if (v128 >= 4)
  {
    v129 = 4;
  }

  else
  {
    v129 = v128;
  }

  v130 = swift_unknownObjectWeakLoadStrong();
  if (!v130)
  {
    goto LABEL_43;
  }

  v131 = v130;
  v132 = swift_getObjectType();
  v133 = swift_conformsToProtocol2();
  if (!v133)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v134 = sub_1012778D4(v132, v133);

  if (v134)
  {
LABEL_43:
    sub_100820CB4(v122, 1103626240, 0, v125, v128 & (v128 >> 63), v129);
  }

  v135 = *(v216 + v97);
  if (!v135)
  {
    goto LABEL_70;
  }

  v136 = swift_getKeyPath();
  v137 = *&v135[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v137)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v138 = v136;
  v139 = v199;
  (*(*v137 + 896))();
  v140 = v197;
  sub_1008243E0(v139 + *(v198 + 20), v197, type metadata accessor for CRLWPStorageCRDTData);
  v141 = v135;
  sub_100824448(v139, type metadata accessor for CRLWPShapeItemCRDTData);
  v142 = v200;
  v143 = v201;
  (v210)(v200, v140, v201);
  sub_100824448(v140, type metadata accessor for CRLWPStorageCRDTData);
  v144 = CRAttributedString.count.getter();
  (v209)(v142, v143);
  if (v144 >= 4)
  {
    v145 = 4;
  }

  else
  {
    v145 = v144;
  }

  v146 = swift_unknownObjectWeakLoadStrong();
  if (!v146)
  {
    goto LABEL_52;
  }

  v147 = v146;
  v148 = swift_getObjectType();
  v149 = swift_conformsToProtocol2();
  if (!v149)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v150 = sub_1012778D4(v148, v149);

  if (v150)
  {
LABEL_52:
    sub_100820818(v138, 1, 0, v141, v144 & (v144 >> 63), v145);
  }

  v151 = *(v216 + v97);
  if (!v151)
  {
    goto LABEL_72;
  }

  v152 = swift_getKeyPath();
  v153 = *&v151[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v153)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v154 = v152;
  v155 = v199;
  (*(*v153 + 896))();
  v156 = v197;
  sub_1008243E0(v155 + *(v198 + 20), v197, type metadata accessor for CRLWPStorageCRDTData);
  v157 = v151;
  sub_100824448(v155, type metadata accessor for CRLWPShapeItemCRDTData);
  v158 = v200;
  v159 = v201;
  (v210)(v200, v156, v201);
  sub_100824448(v156, type metadata accessor for CRLWPStorageCRDTData);
  v160 = CRAttributedString.count.getter();
  (v209)(v158, v159);
  if (v160 >= 4)
  {
    v161 = 4;
  }

  else
  {
    v161 = v160;
  }

  v162 = swift_unknownObjectWeakLoadStrong();
  v163 = v193;
  if (v162)
  {
    v164 = v162;
    v165 = swift_getObjectType();
    v166 = swift_conformsToProtocol2();
    if (v166)
    {
      v167 = sub_1012778D4(v165, v166);

      if ((v167 & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

LABEL_77:
    __break(1u);
    return;
  }

LABEL_61:
  sub_10082037C(v154, 1, 0, v157, v160 & (v160 >> 63), v161);
LABEL_62:

  v168 = *&v163[v192];
  v169 = swift_allocObject();
  *(v169 + 16) = v190;
  *(v169 + 32) = v216;
  v170 = v168;
  v171 = v207;
  v172 = NSNotFound.getter();
  v173 = swift_initStackObject();
  *(v173 + 16) = v189;
  *(v173 + 32) = v172;
  v174 = v173 + 32;
  *(v173 + 40) = v169;
  v175 = sub_100BD4E94(v173);
  swift_setDeallocating();
  sub_10000CAAC(v174, &qword_101A039D0);
  v176 = v208;
  v177 = v183;
  sub_100971EFC(v175, v208);
  if (v177)
  {
  }

  else
  {

    (*(*v176 + 720))(v178);
  }
}

uint64_t sub_100824324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FC880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100824394()
{
  result = qword_1019F76F0;
  if (!qword_1019F76F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F76F0);
  }

  return result;
}

uint64_t sub_1008243E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100824448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1008244A8()
{
  result = qword_101A09650;
  if (!qword_101A09650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09650);
  }

  return result;
}

unint64_t sub_1008244FC()
{
  result = qword_101A039D8;
  if (!qword_101A039D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A039D8);
  }

  return result;
}

uint64_t sub_100824550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1008245B4()
{
  result = qword_101A039E0;
  if (!qword_101A039E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A039E0);
  }

  return result;
}

unint64_t sub_100824608()
{
  result = qword_101A09640;
  if (!qword_101A09640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09640);
  }

  return result;
}

unint64_t sub_10082465C()
{
  result = qword_101A09660;
  if (!qword_101A09660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09660);
  }

  return result;
}

unint64_t sub_1008246B0()
{
  result = qword_101A0D1F0;
  if (!qword_101A0D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D1F0);
  }

  return result;
}

unint64_t sub_100824704()
{
  result = qword_101A0D8C0;
  if (!qword_101A0D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D8C0);
  }

  return result;
}

unint64_t sub_100824758()
{
  result = qword_101A039E8;
  if (!qword_101A039E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A039E8);
  }

  return result;
}

uint64_t sub_1008247AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1008247F4()
{
  result = qword_101A0DA80;
  if (!qword_101A0DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0DA80);
  }

  return result;
}

unint64_t sub_100824848()
{
  result = qword_101A096D0;
  if (!qword_101A096D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A096D0);
  }

  return result;
}

unint64_t sub_10082489C()
{
  result = qword_101A0D8B0;
  if (!qword_101A0D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D8B0);
  }

  return result;
}

unint64_t sub_1008248F0()
{
  result = qword_101A039F8;
  if (!qword_101A039F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A039F8);
  }

  return result;
}

id sub_100824944(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_10082495C(result, a2 & 1);
  }

  return result;
}

id sub_10082495C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

void *sub_100824978(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_1005B981C(&qword_101A03A00);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v30 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = *(_s4NodeVMa(0) - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = _swiftEmptyArrayStorage;
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_10000CAAC(v9, &qword_101A03A00);
    }

    else
    {
      v20 = v28;
      sub_10003DF00(v9, v28, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      sub_10003DF00(v20, v30, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100B36D24(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_100B36D24(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_10003DF00(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t sub_100824C94(uint64_t a1, uint64_t *a2)
{
  v5 = sub_1005B981C(&unk_101A00170);
  __chkstk_darwin(v5 - 8);
  v35 = v31 - v6;
  v38 = type metadata accessor for CRLDisjointPosition.Element();
  v7 = *(v38 - 8);
  v8 = __chkstk_darwin(v38);
  v34 = (v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v11 = (v31 - v10);
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v31[1] = v2;
  v40 = _swiftEmptyArrayStorage;
  sub_1007769A4(0, v12, 0);
  v14 = 0;
  v13 = v40;
  v32 = (v7 + 48);
  v33 = (v7 + 56);
  v36 = xmmword_10146C6B0;
  v37 = v12;
  while (1)
  {
    v15 = *a2;
    if (!*a2)
    {
      sub_1005B981C(&qword_1019F49A0);
      v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = v36;
      v39 = 0;
      swift_stdlib_random();
      v20 = v39;
      if (199 * v39 <= 0x7D)
      {
        do
        {
          v39 = 0;
          swift_stdlib_random();
          v20 = v39;
        }

        while (199 * v39 < 0x7E);
      }

      v21 = (v19 + v18);
      v22 = ((v20 * 0xC7uLL) >> 64) - 99;
      UUID.init()();
      *v21 = v22;
      goto LABEL_15;
    }

    if (*(v15 + 16))
    {
      v16 = v35;
      sub_10003CA5C(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v35, type metadata accessor for CRLDisjointPosition.Element);
      (*(v7 + 56))(v16, 0, 1, v38);
      result = sub_10003DF00(v16, v11, type metadata accessor for CRLDisjointPosition.Element);
    }

    else
    {
      (*v33)(v35, 1, 1, v38);
      v39 = 0;
      swift_stdlib_random();
      v23 = v39;
      if (199 * v39 <= 0x7D)
      {
        do
        {
          v39 = 0;
          swift_stdlib_random();
          v23 = v39;
        }

        while (199 * v39 < 0x7E);
      }

      v24 = ((v23 * 0xC7uLL) >> 64) - 99;
      v25 = v38;
      UUID.init()();
      *v11 = v24;
      result = (*v32)(v35, 1, v25);
      if (result != 1)
      {
        result = sub_10000CAAC(v35, &unk_101A00170);
      }
    }

    v26 = *v11 + 100;
    if (__OFADD__(*v11, 100))
    {
      break;
    }

    v27 = v34;
    UUID.init()();
    *v27 = v26;
    sub_1005B981C(&qword_1019F49A0);
    v28 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v36;
    sub_10003DF00(v27, v19 + v28, type metadata accessor for CRLDisjointPosition.Element);
    sub_10003E060(v11, type metadata accessor for CRLDisjointPosition.Element);
LABEL_15:

    *a2 = v19;

    v40 = v13;
    v30 = v13[2];
    v29 = v13[3];
    if (v30 >= v29 >> 1)
    {
      sub_1007769A4((v29 > 1), v30 + 1, 1);
      v13 = v40;
    }

    ++v14;
    v13[2] = v30 + 1;
    v13[v30 + 4] = v19;
    if (v14 == v37)
    {
      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100825120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _s4NodeVMa(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 24);
  if (*(v9 + 16) && (v10 = sub_10003E994(a1), (v11 & 1) != 0))
  {
    sub_10003CA5C(*(v9 + 56) + *(v6 + 72) * v10, v8, _s4NodeVMa);
    sub_10003CA5C(v8, a2, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10003E060(v8, _s4NodeVMa);
    v12 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
    return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
  }

  else
  {
    v14 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }
}

uint64_t sub_100825300(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 >> 62;
  if (!v4)
  {
    if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      if ((v3 & 0xC000000000000001) == 0)
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        v5 = *(v3 + 32);
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v4)
      {
LABEL_6:
        result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      result = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
      if (result)
      {
        v2(0, 1);
        return v5;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1008253E8()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        swift_unknownObjectRetain();
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
      if (v3)
      {
        sub_10067CA1C(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1008254C0()
{
  v1 = _s13CacheSnapshotV20TitleValidationErrorOMa(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v57 - v5;
  sub_10003CA5C(v0, &v57 - v5, _s13CacheSnapshotV20TitleValidationErrorOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_10003E060(v6, _s13CacheSnapshotV20TitleValidationErrorOMa);
      return 0x1000000000000017;
    }

    v58 = v6;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v10 = inited;
    sub_10003CA5C(v0, v4, _s13CacheSnapshotV20TitleValidationErrorOMa);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    v6 = &type metadata for String;
    v10[7] = &type metadata for String;
    v14 = sub_1000053B0();
    v10[4] = v11;
    v59 = v14;
    v60 = v10 + 4;
    v10[8] = v14;
    v10[5] = v13;
    v57 = objc_opt_self();
    LODWORD(v15) = [v57 _atomicIncrementAssertCount];
    v61 = [objc_allocWithZone(NSString) init];
    sub_100604538(v10, &v61);
    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    v18 = [v17 lastPathComponent];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_40;
    }

LABEL_7:
    v22 = static OS_os_log.crlAssert;
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_10146CA70;
    *(v23 + 56) = &type metadata for Int32;
    *(v23 + 64) = &protocol witness table for Int32;
    *(v23 + 32) = v15;
    v24 = sub_1005CF000();
    *(v23 + 96) = v24;
    v25 = sub_10083356C(&qword_1019F52E0, sub_1005CF000);
    *(v23 + 72) = v16;
    v26 = v59;
    *(v23 + 136) = v6;
    *(v23 + 144) = v26;
    *(v23 + 104) = v25;
    *(v23 + 112) = v19;
    *(v23 + 120) = v21;
    *(v23 + 176) = &type metadata for UInt;
    *(v23 + 184) = &protocol witness table for UInt;
    *(v23 + 152) = 593;
    v27 = v61;
    *(v23 + 216) = v24;
    *(v23 + 224) = v25;
    *(v23 + 192) = v27;
    v28 = v16;
    v29 = v27;
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v23);
    swift_setDeallocating();
    v59 = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v31, "Encountered an error case with an unexpected view model item type: %s", 69, 2, v10);

    type metadata accessor for __VaListBuilder();
    v16 = swift_allocObject();
    v16[2] = 8;
    v16[3] = 0;
    v32 = v16 + 3;
    v16[4] = 0;
    v16[5] = 0;
    v19 = v10[2];
    if (!v19)
    {
LABEL_35:
      v48 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v50 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v51 = String._bridgeToObjectiveC()();

      [v57 handleFailureInFunction:v49 file:v50 lineNumber:593 isFatal:0 format:v51 args:v48];

      swift_setDeallocating();
      swift_arrayDestroy();
      v52 = [objc_opt_self() mainBundle];
      v53 = String._bridgeToObjectiveC()();
      v54 = String._bridgeToObjectiveC()();
      v55 = [v52 localizedStringForKey:v53 value:v54 table:0];

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10003E060(v58, _s13CacheSnapshotV20TitleValidationErrorOMa);
      return v56;
    }

    v33 = 0;
    v6 = 40;
    while (1)
    {
      v21 = sub_100020E58(&v60[5 * v33], v60[5 * v33 + 3]);
      v34 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v15 = *v32;
      v35 = *(v34 + 16);
      v36 = __OFADD__(*v32, v35);
      v37 = *v32 + v35;
      if (v36)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        swift_once();
        goto LABEL_7;
      }

      v21 = v16[4];
      if (v21 >= v37)
      {
        goto LABEL_24;
      }

      if (v21 + 0x4000000000000000 < 0)
      {
        goto LABEL_38;
      }

      v38 = v16[5];
      if (2 * v21 > v37)
      {
        v37 = 2 * v21;
      }

      v16[4] = v37;
      if ((v37 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_39;
      }

      v39 = v10;
      v40 = v34;
      v41 = swift_slowAlloc();
      v42 = v41;
      v16[5] = v41;
      if (v38)
      {
        break;
      }

      v34 = v40;
      v10 = v39;
      v6 = 40;
      if (!v42)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_25:
      v44 = *(v34 + 16);
      if (v44)
      {
        v45 = (v34 + 32);
        v46 = *v32;
        while (1)
        {
          v47 = *v45++;
          *&v42[8 * v46] = v47;
          v46 = *v32 + 1;
          if (__OFADD__(*v32, 1))
          {
            break;
          }

          *v32 = v46;
          if (!--v44)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

LABEL_9:

      if (++v33 == v19)
      {
        goto LABEL_35;
      }
    }

    if (v41 != v38 || v41 >= &v38[8 * v15])
    {
      memmove(v41, v38, 8 * v15);
    }

    v21 = v16;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v34 = v40;
    v10 = v39;
    v6 = 40;
LABEL_24:
    v42 = v16[5];
    if (!v42)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_32:
    sub_10003E060(v6, _s13CacheSnapshotV20TitleValidationErrorOMa);
    return 0x1000000000000018;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_10003E060(v6, _s13CacheSnapshotV20TitleValidationErrorOMa);
    return 0xD000000000000014;
  }

  else
  {
    sub_10003E060(v6, _s13CacheSnapshotV20TitleValidationErrorOMa);
    return 0xD000000000000015;
  }
}

uint64_t sub_100825CC8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s13CacheSnapshotV20TitleValidationErrorOMa(0);
  __chkstk_darwin(v5);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10003CA5C(v1, v7, _s13CacheSnapshotV20TitleValidationErrorOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v25 = *v7;
        v24 = v7[1];
        sub_1005B981C(&qword_1019F54E0);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_10146C6B0;
        *(v26 + 56) = &type metadata for String;
        *(v26 + 64) = sub_1000053B0();
        *(v26 + 32) = v25;
        *(v26 + 40) = v24;
        v23 = static String.localizedStringWithFormat(_:_:)();
LABEL_11:

        return v23;
      }

      v9 = *v7;
      v10 = v7[1];
      v11 = [objc_opt_self() mainBundle];
      v12 = String._bridgeToObjectiveC()();
      v13 = String._bridgeToObjectiveC()();
      v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

LABEL_10:
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1005B981C(&qword_1019F54E0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_10146C6B0;
      *(v30 + 56) = &type metadata for String;
      *(v30 + 64) = sub_1000053B0();
      *(v30 + 32) = v9;
      *(v30 + 40) = v10;
      v23 = static String.localizedStringWithFormat(_:_:)();

      goto LABEL_11;
    }

LABEL_9:
    v9 = *v7;
    v10 = v7[1];
    v27 = [objc_opt_self() mainBundle];
    v28 = String._bridgeToObjectiveC()();
    v29 = String._bridgeToObjectiveC()();
    v14 = [v27 localizedStringForKey:v28 value:v29 table:0];

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  sub_10003DF00(v7, v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v15 = [objc_opt_self() mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1005B981C(&qword_1019F54E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10146C6B0;
  v20 = sub_100F88220();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_1000053B0();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v23 = static String.localizedStringWithFormat(_:_:)();

  sub_10003E060(v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
  return v23;
}

Swift::Int sub_1008261E8(void **a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for CRLBoardLibraryViewModel.Folder(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_10113DF50(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_10082C8F4(v10, a2, a3);
  *a1 = v7;
  return result;
}

Swift::Int sub_1008262A8(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_100068B28(v5);
  }

  result = sub_10082CA30(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_100826368@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100F87E04(v6);
  if (!*(*(v1 + 40) + 16) || (sub_10003E994(v6), (v7 & 1) == 0))
  {
    (*(v4 + 8))(v6, v3);
    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  (*(v4 + 8))(v6, v3);
  if (!Strong)
  {
LABEL_6:
    v9 = 1;
    goto LABEL_7;
  }

  sub_10003CA5C(Strong + OBJC_IVAR____TtC8Freeform35CRLBoardLibraryViewModelWrappedNode_node, a1, _s4NodeVMa);

  v9 = 0;
LABEL_7:
  v10 = _s4NodeVMa(0);
  return (*(*(v10 - 8) + 56))(a1, v9, 1, v10);
}

uint64_t sub_10082650C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v62 = a2;
  v69 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v69);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_101A03A00);
  v5 = __chkstk_darwin(v4 - 8);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v67 = &v58 - v7;
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v70 = *(v8 - 8);
  v71 = v8;
  v9 = __chkstk_darwin(v8);
  v59 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = &v58 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  v19 = _s4NodeVMa(0);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v61 = &v58 - v24;
  sub_100F87E04(v15);
  v25 = *(v66 + 24);
  if (*(v25 + 16) && (v26 = sub_10003E994(v15), (v27 & 1) != 0))
  {
    sub_10003CA5C(*(v25 + 56) + *(v20 + 72) * v26, v18, _s4NodeVMa);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  (*(v13 + 8))(v15, v12);
  (*(v20 + 56))(v18, v28, 1, v19);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    v35 = v18;
    v36 = v61;
    sub_10003DF00(v35, v61, _s4NodeVMa);
    v37 = *(v36 + *(v19 + 20));
    v38 = *(v37 + 16);
    if (!v38)
    {
      v41 = _swiftEmptyArrayStorage;
LABEL_25:
      v72 = v41;

      sub_1008261E8(&v72, sub_10082D060, sub_10082CDFC);

      v51 = v72;
      v52 = v72[2];
      v53 = v60;
      v54 = v59;
      if (!v52)
      {
LABEL_30:
        sub_10003E060(v61, _s4NodeVMa);

        return (*(v70 + 56))(v62, 1, 1, v71);
      }

      v55 = 0;
      while (v55 < v51[2])
      {
        sub_10003CA5C(v51 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v55, v54, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        if (sub_1009D1B18(v53, *(v54 + *(v71 + 28))))
        {
          sub_10003E060(v61, _s4NodeVMa);

          v57 = v62;
          sub_10003DF00(v54, v62, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          return (*(v70 + 56))(v57, 0, 1, v71);
        }

        ++v55;
        sub_10003E060(v54, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        if (v52 == v55)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    v39 = v37 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v64 = (v70 + 56);
    v40 = (v70 + 48);
    v41 = _swiftEmptyArrayStorage;
    v42 = *(v20 + 72);
    v65 = v3;
    v66 = v42;
    v43 = v63;
    v44 = v71;
    while (1)
    {
      sub_10003CA5C(v39, v23, _s4NodeVMa);
      sub_10003CA5C(v23, v3, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10003E060(v23, _s4NodeVMa);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v45 = sub_1005B981C(&qword_1019F3480);
        if (!(*(*(v45 - 8) + 48))(v3, 5, v45))
        {
          sub_10003DF00(v3, v43, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v47 = 0;
          goto LABEL_17;
        }

        v46 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      }

      else
      {
        v46 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      }

      sub_10003E060(v3, v46);
      v47 = 1;
LABEL_17:
      (*v64)(v43, v47, 1, v44);
      v48 = v67;
      sub_10003DFF8(v43, v67, &qword_101A03A00);
      if ((*v40)(v48, 1, v44) == 1)
      {
        sub_10000CAAC(v48, &qword_101A03A00);
      }

      else
      {
        sub_10003DF00(v48, v68, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_100B36D24(0, v41[2] + 1, 1, v41);
        }

        v50 = v41[2];
        v49 = v41[3];
        if (v50 >= v49 >> 1)
        {
          v41 = sub_100B36D24(v49 > 1, v50 + 1, 1, v41);
        }

        v41[2] = v50 + 1;
        sub_10003DF00(v68, v41 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v50, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v43 = v63;
      }

      v3 = v65;
      v39 += v66;
      if (!--v38)
      {
        goto LABEL_25;
      }
    }
  }

  sub_10000CAAC(v18, &unk_1019FB770);
  if (qword_1019F2130 != -1)
  {
LABEL_34:
    swift_once();
  }

  v29 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v31 = sub_100F8903C();
  v33 = v32;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v31;
  *(inited + 40) = v33;
  v34 = static os_log_type_t.error.getter();
  sub_100005404(v29, &_mh_execute_header, v34, "Could not find node for parent item %@. Returning nil.", 54, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  return (*(v70 + 56))(v62, 1, 1, v71);
}

uint64_t sub_100826E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a3 + 16);
  }

  v6 = 0;
  v22 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v7 = *(v22 - 8);
  while (1)
  {
    if (v4 == v6)
    {
      v11 = *(v7 + 56);
      v12 = a1;
      v13 = 1;
      goto LABEL_10;
    }

    v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    v10 = v8 + v9 * v6;
    sub_100017CD8();
    if (StringProtocol.localizedCaseInsensitiveCompare<A>(_:)() == 1)
    {
      break;
    }

    if (v5 == ++v6)
    {
      sub_10003CA5C(v10, a1, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v11 = *(v7 + 56);
      v12 = a1;
      v13 = 0;
LABEL_10:
      v11(v12, v13, 1, v22);
      v14 = a2;
      v15 = 1;
      v16 = v22;
      return (v11)(v14, v15, 1, v16);
    }
  }

  if (v6)
  {
    v17 = a1;
    sub_10003CA5C(v8 + v9 * (v6 - 1), a1, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = a1;
  }

  v11 = *(v7 + 56);
  v11(v17, v18, 1, v22);
  sub_10003CA5C(v10, a2, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v14 = a2;
  v15 = 0;
  v16 = v22;
  return (v11)(v14, v15, 1, v16);
}

uint64_t sub_100827084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v67 = a3;
  v66 = a2;
  v74 = type metadata accessor for CRLFolderIdentifier(0);
  __chkstk_darwin(v74);
  v73 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v72 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v72);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v65);
  v71 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v14 - 8);
  v69 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v64 - v17;
  v19 = _s4NodeVMa(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v68 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v64 - v24;
  v26 = *(v11 + 16);
  v75 = a1;
  v26(v13, a1, v10, v23);
  v70 = v4;
  v27 = *(v4 + 24);
  if (*(v27 + 16) && (v28 = sub_10003E994(v13), (v29 & 1) != 0))
  {
    sub_10003CA5C(*(v27 + 56) + *(v20 + 72) * v28, v18, _s4NodeVMa);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v11 + 8))(v13, v10);
  (*(v20 + 56))(v18, v30, 1, v19);
  v31 = *(v20 + 48);
  if (v31(v18, 1, v19) == 1)
  {
    sub_10000CAAC(v18, &unk_1019FB770);
LABEL_12:
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v72 = xmmword_10146C6B0;
    *(inited + 16) = xmmword_10146C6B0;
    sub_10003CA5C(v75, v73, type metadata accessor for CRLFolderIdentifier);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v36;
    *(inited + 40) = v38;
    v39 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v39, "Could not find folder node with identifier %@ or its parent with identifier %@. Returning a generic disjoint position.", 118, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    sub_1005B981C(&qword_1019F49A0);
    v40 = *(type metadata accessor for CRLDisjointPosition.Element() - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v72;
    v43 = sub_10000C3A0(0xC7uLL) - 99;
    UUID.init()();
    *(v42 + v41) = v43;
    return v42;
  }

  sub_10003DF00(v18, v25, _s4NodeVMa);
  sub_10003CA5C(v25, v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10003E060(v25, _s4NodeVMa);
    v33 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    goto LABEL_11;
  }

  v32 = sub_1005B981C(&qword_1019F3480);
  if ((*(*(v32 - 8) + 48))(v8, 5, v32))
  {
    sub_10003E060(v25, _s4NodeVMa);
    v33 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
LABEL_11:
    sub_10003E060(v8, v33);
    goto LABEL_12;
  }

  v45 = v71;
  sub_10003DF00(v8, v71, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v46 = v69;
  sub_100826368(v69);
  if (v31(v46, 1, v19) == 1)
  {
    sub_10000CAAC(v46, &unk_1019FB770);
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v47 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    v48 = swift_initStackObject();
    v72 = xmmword_10146C6B0;
    *(v48 + 16) = xmmword_10146C6B0;
    sub_10003CA5C(v75, v73, type metadata accessor for CRLFolderIdentifier);
    v49 = String.init<A>(describing:)();
    v51 = v50;
    *(v48 + 56) = &type metadata for String;
    *(v48 + 64) = sub_1000053B0();
    *(v48 + 32) = v49;
    *(v48 + 40) = v51;
    v52 = static os_log_type_t.error.getter();
    sub_100005404(v47, &_mh_execute_header, v52, "Could not find parent node of folder with identifier %@. Returning a generic disjoint position.", 95, 2, v48);
    swift_setDeallocating();
    sub_100005070(v48 + 32);
    sub_1005B981C(&qword_1019F49A0);
    v53 = *(type metadata accessor for CRLDisjointPosition.Element() - 8);
    v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v72;
    v55 = sub_10000C3A0(0xC7uLL) - 99;
    UUID.init()();
    *(v42 + v54) = v55;
    sub_10003E060(v45, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v56 = _s4NodeVMa;
    v57 = v25;
  }

  else
  {
    v58 = v68;
    v59 = sub_10003DF00(v46, v68, _s4NodeVMa);
    __chkstk_darwin(v59);
    *(&v64 - 2) = v75;
    v61 = sub_100824978(sub_100831A38, (&v64 - 4), v60);
    v76[0] = v61;

    sub_1008261E8(v76, sub_10082D060, sub_10082CDFC);
    v62 = v76[0];
    v76[0] = v61;

    sub_1008261E8(v76, sub_10082D9BC, sub_10082CB6C);
    v63 = sub_100673E18(v62, v76[0]);

    if (v63)
    {
      v42 = sub_10083073C(v66, v67, v61);

      sub_10003E060(v58, _s4NodeVMa);
      sub_10003E060(v45, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v57 = v25;
      v56 = _s4NodeVMa;
    }

    else
    {

      sub_10003E060(v58, _s4NodeVMa);
      sub_10003E060(v25, _s4NodeVMa);
      v42 = *(v45 + *(v65 + 28));

      v56 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
      v57 = v45;
    }
  }

  sub_10003E060(v57, v56);
  return v42;
}

uint64_t sub_100827BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003CA5C(a1, v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v14 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    goto LABEL_5;
  }

  v13 = sub_1005B981C(&qword_1019F3480);
  if ((*(*(v13 - 8) + 48))(v8, 5, v13))
  {
    v14 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
LABEL_5:
    v15 = v14;
    v16 = v8;
    goto LABEL_6;
  }

  sub_10003DF00(v8, v12, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || ((v19 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20), v20 = *&v12[v19], v21 = *&v12[v19 + 8], v22 = (a2 + v19), v20 == *v22) ? (v23 = v21 == v22[1]) : (v23 = 0), !v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    sub_10003DF00(v12, a3, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v17 = 0;
    return (*(v10 + 56))(a3, v17, 1, v9);
  }

  v15 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
  v16 = v12;
LABEL_6:
  sub_10003E060(v16, v15);
  v17 = 1;
  return (*(v10 + 56))(a3, v17, 1, v9);
}

uint64_t sub_100827E48(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v507 = a4;
  v508 = a3;
  v570 = a2;
  v565 = a1;
  v494 = type metadata accessor for URL();
  v505 = *(v494 - 8);
  __chkstk_darwin(v494);
  v485 = &v475 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v5 - 8);
  v489 = &v475 - v6;
  v493 = sub_1005B981C(&unk_101A0B780);
  __chkstk_darwin(v493);
  v492 = &v475 - v7;
  v514 = _s5BoardV13ShareMetadataVMa(0);
  v504 = *(v514 - 1);
  v8 = __chkstk_darwin(v514);
  v477 = &v475 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v498 = &v475 - v10;
  v11 = sub_1005B981C(&qword_1019F33D0);
  v12 = __chkstk_darwin(v11 - 8);
  v478 = &v475 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v500 = &v475 - v14;
  v499 = sub_1005B981C(&qword_1019F33D8);
  v15 = __chkstk_darwin(v499);
  v479 = &v475 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v515 = &v475 - v17;
  v556 = type metadata accessor for CRLDisjointPosition.Element();
  v516 = *(v556 - 8);
  v18 = __chkstk_darwin(v556);
  v495 = (&v475 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v496 = (&v475 - v21);
  v22 = __chkstk_darwin(v20);
  v559 = &v475 - v23;
  __chkstk_darwin(v22);
  v558 = &v475 - v24;
  v564 = sub_1005B981C(&qword_1019F33E8);
  v25 = __chkstk_darwin(v564);
  v491 = &v475 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v552 = &v475 - v27;
  v28 = sub_1005B981C(&qword_101A03A00);
  v29 = __chkstk_darwin(v28 - 8);
  v482 = &v475 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v476 = &v475 - v32;
  v33 = __chkstk_darwin(v31);
  v486 = &v475 - v34;
  v35 = __chkstk_darwin(v33);
  v488 = &v475 - v36;
  v37 = __chkstk_darwin(v35);
  v483 = &v475 - v38;
  v39 = __chkstk_darwin(v37);
  v549 = &v475 - v40;
  v41 = __chkstk_darwin(v39);
  v540 = (&v475 - v42);
  v43 = __chkstk_darwin(v41);
  v548 = &v475 - v44;
  v45 = __chkstk_darwin(v43);
  v537 = &v475 - v46;
  v47 = __chkstk_darwin(v45);
  v551 = (&v475 - v48);
  __chkstk_darwin(v47);
  v533 = (&v475 - v49);
  v569 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v555 = *(v569 - 1);
  v50 = __chkstk_darwin(v569);
  v503 = &v475 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v484 = &v475 - v53;
  v54 = __chkstk_darwin(v52);
  v480 = &v475 - v55;
  v56 = __chkstk_darwin(v54);
  v502 = &v475 - v57;
  v58 = __chkstk_darwin(v56);
  v501 = &v475 - v59;
  v60 = __chkstk_darwin(v58);
  v481 = &v475 - v61;
  v62 = __chkstk_darwin(v60);
  v487 = &v475 - v63;
  v64 = __chkstk_darwin(v62);
  v66 = &v475 - v65;
  v67 = __chkstk_darwin(v64);
  v571 = &v475 - v68;
  v69 = __chkstk_darwin(v67);
  v539 = (&v475 - v70);
  v71 = __chkstk_darwin(v69);
  v536 = (&v475 - v72);
  __chkstk_darwin(v71);
  v532 = &v475 - v73;
  v74 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v75 = __chkstk_darwin(v74 - 8);
  v568 = &v475 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v75);
  v513 = &v475 - v77;
  v78 = sub_1005B981C(&unk_101A15B20);
  v79 = __chkstk_darwin(v78 - 8);
  v545 = (&v475 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = __chkstk_darwin(v79);
  v530 = (&v475 - v82);
  v83 = __chkstk_darwin(v81);
  v527 = &v475 - v84;
  v85 = __chkstk_darwin(v83);
  v544 = &v475 - v86;
  __chkstk_darwin(v85);
  v526 = &v475 - v87;
  v506 = _s4NodeVMa(0);
  v509 = *(v506 - 8);
  v88 = __chkstk_darwin(v506);
  v517 = &v475 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __chkstk_darwin(v88);
  v541 = &v475 - v91;
  v92 = __chkstk_darwin(v90);
  v563 = (&v475 - v93);
  __chkstk_darwin(v92);
  v510 = &v475 - v94;
  v95 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v547 = *(v95 - 8);
  v96 = __chkstk_darwin(v95);
  v543 = &v475 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __chkstk_darwin(v96);
  *&v535 = &v475 - v99;
  v100 = __chkstk_darwin(v98);
  v538 = (&v475 - v101);
  v102 = __chkstk_darwin(v100);
  v542 = &v475 - v103;
  v104 = __chkstk_darwin(v102);
  v534 = &v475 - v105;
  v106 = __chkstk_darwin(v104);
  v531 = &v475 - v107;
  v108 = __chkstk_darwin(v106);
  v529 = &v475 - v109;
  v110 = __chkstk_darwin(v108);
  v528 = &v475 - v111;
  v112 = __chkstk_darwin(v110);
  v518 = &v475 - v113;
  v114 = __chkstk_darwin(v112);
  v525 = &v475 - v115;
  v116 = __chkstk_darwin(v114);
  v524 = &v475 - v117;
  __chkstk_darwin(v116);
  v119 = &v475 - v118;
  v120 = sub_1005B981C(&qword_1019F33E0);
  v121 = __chkstk_darwin(v120 - 8);
  v497 = &v475 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __chkstk_darwin(v121);
  v557 = &v475 - v124;
  __chkstk_darwin(v123);
  v126 = &v475 - v125;
  v127 = type metadata accessor for CRLFolderIdentifier(0);
  v128 = *(v127 - 8);
  v129 = __chkstk_darwin(v127);
  v490 = &v475 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __chkstk_darwin(v129);
  v550 = &v475 - v132;
  v133 = __chkstk_darwin(v131);
  v566 = &v475 - v134;
  __chkstk_darwin(v133);
  v136 = &v475 - v135;
  v137 = type metadata accessor for UUID();
  v138 = *(v137 - 8);
  v139 = __chkstk_darwin(v137);
  v523 = &v475 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __chkstk_darwin(v139);
  v143 = &v475 - v142;
  __chkstk_darwin(v141);
  v512 = &v475 - v144;
  sub_10000BE14(v570, v126, &qword_1019F33E0);
  v553 = v128;
  v145 = v128[6];
  v560 = v127;
  v567 = v128 + 6;
  v561 = v145;
  v146 = (v145)(v126, 1, v127);
  v570 = v95;
  if (v146 == 1)
  {
    sub_10000CAAC(v126, &qword_1019F33E0);
    *v119 = 1;
    swift_storeEnumTagMultiPayload();
    sub_100F87E04(v143);
    v147 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v148 = v119;
  }

  else
  {
    sub_10003DF00(v126, v136, type metadata accessor for CRLFolderIdentifier);
    (*(v138 + 16))(v143, v136, v137);
    v147 = type metadata accessor for CRLFolderIdentifier;
    v148 = v136;
  }

  sub_10003E060(v148, v147);
  v149 = v138;
  v150 = *(v138 + 32);
  v151 = v512;
  v546 = v137;
  v150(v512, v143, v137);
  v152 = *(v511 + 24);
  if (!*(v152 + 16) || (v153 = sub_10003E994(v151), (v154 & 1) == 0))
  {
    if (qword_1019F2130 == -1)
    {
LABEL_30:
      v193 = static OS_os_log.crlBoardLibrary;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      sub_10083356C(&qword_101A02180, &type metadata accessor for UUID);
      v195 = v546;
      v196 = dispatch thunk of CustomStringConvertible.description.getter();
      v198 = v197;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v196;
      *(inited + 40) = v198;
      v199 = static os_log_type_t.error.getter();
      sub_100005404(v193, &_mh_execute_header, v199, "Could not find node for parent item %@. Returning a generic disjoint position for the first element.", 100, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      v572 = 0;
      v200 = sub_100824C94(v565, &v572);
      v149[1](v151, v195);

      return v200;
    }

LABEL_300:
    swift_once();
    goto LABEL_30;
  }

  v475 = v149;
  v155 = *(v152 + 56);
  v554 = *(v509 + 72);
  v156 = v563;
  sub_10003CA5C(v155 + v554 * v153, v563, _s4NodeVMa);
  sub_10003DF00(v156, v510, _s4NodeVMa);
  v157 = *(v565 + 16);
  if (v157)
  {
    v158 = v565 + ((*(v553 + 80) + 32) & ~*(v553 + 80));
    v522 = v553[9];
    v521 = (v475 + 2);
    v520 = v475 + 1;
    v565 = v547 + 56;
    v563 = (v547 + 48);
    v553 = _swiftEmptyArrayStorage;
    v159 = v571;
    v519 = v152;
    while (1)
    {
      v162 = v566;
      sub_10003CA5C(v158, v566, type metadata accessor for CRLFolderIdentifier);
      v163 = v523;
      v164 = v162;
      v165 = v546;
      (*v521)(v523, v164, v546);
      if (*(v152 + 16) && (v166 = sub_10003E994(v163), (v167 & 1) != 0))
      {
        v168 = v517;
        sub_10003CA5C(*(v152 + 56) + v166 * v554, v517, _s4NodeVMa);
        (*v520)(v163, v165);
        sub_10003E060(v566, type metadata accessor for CRLFolderIdentifier);
        v169 = v527;
        sub_10003CA5C(v168, v527, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10003E060(v168, _s4NodeVMa);
        v170 = 0;
      }

      else
      {
        (*v520)(v163, v165);
        sub_10003E060(v566, type metadata accessor for CRLFolderIdentifier);
        v170 = 1;
        v169 = v527;
      }

      v171 = *v565;
      v172 = v570;
      (*v565)(v169, v170, 1, v570);
      v173 = *v563;
      if ((*v563)(v169, 1, v172) == 1)
      {
        v174 = v157;
        sub_10000CAAC(v169, &unk_101A15B20);
        v175 = 1;
      }

      else
      {
        v176 = v169;
        v177 = v525;
        sub_10003DF00(v176, v525, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v178 = v177;
        v179 = v518;
        sub_10003CA5C(v178, v518, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v180 = v513;
          sub_10003DF00(v179, v513, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v181 = sub_1005B981C(&qword_1019F3480);
          v174 = v157;
          if (!(*(*(v181 - 8) + 48))(v180, 5, v181))
          {
            sub_10003E060(v180, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            sub_10003DF00(v525, v544, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v175 = 0;
            goto LABEL_21;
          }

          v182 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
          v183 = v180;
        }

        else
        {
          v174 = v157;
          v182 = type metadata accessor for CRLBoardLibraryViewModel.Item;
          v183 = v179;
        }

        sub_10003E060(v183, v182);
        sub_10003E060(v525, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v175 = 1;
      }

LABEL_21:
      v184 = v544;
      v185 = v570;
      v171(v544, v175, 1, v570);
      v186 = v184;
      v187 = v526;
      sub_10003DFF8(v186, v526, &unk_101A15B20);
      if (v173(v187, 1, v185) == 1)
      {
        sub_10000CAAC(v187, &unk_101A15B20);
        v151 = v567;
        v160 = v568;
        v161 = v174;
        v152 = v519;
      }

      else
      {
        sub_10003DF00(v187, v524, type metadata accessor for CRLBoardLibraryViewModel.Item);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v151 = v567;
        v161 = v174;
        v152 = v519;
        if (isUniquelyReferenced_nonNull_native)
        {
          v189 = v553;
        }

        else
        {
          v189 = sub_100B3648C(0, v553[2] + 1, 1, v553);
        }

        v191 = v189[2];
        v190 = v189[3];
        if (v191 >= v190 >> 1)
        {
          v189 = sub_100B3648C(v190 > 1, v191 + 1, 1, v189);
        }

        v189[2] = v191 + 1;
        v192 = (*(v547 + 80) + 32) & ~*(v547 + 80);
        v553 = v189;
        sub_10003DF00(v524, v189 + v192 + *(v547 + 72) * v191, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v159 = v571;
        v160 = v568;
      }

      v158 += v522;
      v157 = v161 - 1;
      if (!v157)
      {
        goto LABEL_32;
      }
    }
  }

  v553 = _swiftEmptyArrayStorage;
  v159 = v571;
  v151 = v567;
  v160 = v568;
LABEL_32:
  v201 = *(v510 + *(v506 + 20));
  v202 = *(v201 + 16);
  v544 = v201;
  if (v202)
  {
    v203 = v201 + ((*(v509 + 80) + 32) & ~*(v509 + 80));
    v565 = v547 + 56;
    v563 = (v547 + 48);
    v566 = _swiftEmptyArrayStorage;
    v204 = &unk_101A15B20;
    v205 = v541;
    while (1)
    {
      v206 = v204;
      sub_10003CA5C(v203, v205, _s4NodeVMa);
      v207 = v529;
      sub_10003CA5C(v205, v529, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10003DF00(v207, v160, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v208 = sub_1005B981C(&qword_1019F3480);
        if (!(*(*(v208 - 8) + 48))(v160, 5, v208))
        {
          sub_10003E060(v160, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v204 = v206;
          if (sub_1012CD6CC(v205, v553))
          {
            v211 = 1;
          }

          else
          {
            sub_10003CA5C(v205, v545, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v211 = 0;
          }

          goto LABEL_41;
        }

        v209 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        v210 = v160;
      }

      else
      {
        v209 = type metadata accessor for CRLBoardLibraryViewModel.Item;
        v210 = v207;
      }

      sub_10003E060(v210, v209);
      v211 = 1;
      v204 = v206;
LABEL_41:
      sub_10003E060(v205, _s4NodeVMa);
      v212 = v545;
      v213 = v211;
      v214 = v570;
      (*v565)(v545, v213, 1, v570);
      v215 = v212;
      v216 = v530;
      sub_10003DFF8(v215, v530, v204);
      if ((*v563)(v216, 1, v214) == 1)
      {
        sub_10000CAAC(v216, v204);
        v160 = v568;
        v205 = v541;
      }

      else
      {
        sub_10003DF00(v216, v528, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v205 = v541;
          v217 = v566;
        }

        else
        {
          v217 = sub_100B3648C(0, *(v566 + 16) + 1, 1, v566);
          v205 = v541;
        }

        v219 = v217[2];
        v218 = v217[3];
        if (v219 >= v218 >> 1)
        {
          v217 = sub_100B3648C(v218 > 1, v219 + 1, 1, v217);
        }

        v217[2] = v219 + 1;
        v220 = (*(v547 + 80) + 32) & ~*(v547 + 80);
        v566 = v217;
        sub_10003DF00(v528, v217 + v220 + *(v547 + 72) * v219, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v159 = v571;
        v160 = v568;
      }

      v203 += v554;
      if (!--v202)
      {
        goto LABEL_52;
      }
    }
  }

  v566 = _swiftEmptyArrayStorage;
LABEL_52:
  v221 = v508;
  if ((v507 & 1) != 0 || (v508 & 0x8000000000000000) != 0 || *(v566 + 16) < v508)
  {
    v222 = sub_100A11AD0(v544);
    v223 = v552;
    v149 = v561;
    if (!v222)
    {
      goto LABEL_62;
    }

    if (v222 == 1)
    {
      v572 = v566;

      sub_10079ADBC(v224);
      v544 = 0;
      goto LABEL_64;
    }

    v229 = v553;
    v572 = v553;

    sub_1008262A8(sub_100F8B608, 0);
    v230 = sub_100674024(v229, v572);

    if ((v230 & 1) == 0)
    {
      v544 = 0;
      v572 = v566;

      sub_10079ADBC(v232);
    }

    else
    {
LABEL_62:
      v572 = v566;

      sub_10079ADBC(v231);

      sub_1008262A8(sub_100F8B608, 0);
      v544 = 0;
    }

LABEL_64:
    v226 = v572;
    v227 = v572[2];
    if (v227)
    {
      goto LABEL_65;
    }

LABEL_60:

    v228 = _swiftEmptyArrayStorage;
    goto LABEL_82;
  }

  v572 = v566;

  v225 = v553;

  sub_10067CAF4(v221, v221, v225);

  v544 = 0;
  v226 = v572;
  v223 = v552;
  v149 = v561;
  v227 = v572[2];
  if (!v227)
  {
    goto LABEL_60;
  }

LABEL_65:
  v233 = (*(v547 + 80) + 32) & ~*(v547 + 80);
  v545 = v226;
  v234 = v226 + v233;
  v568 = v555 + 56;
  v563 = (v555 + 48);
  v554 = _swiftEmptyArrayStorage;
  v565 = *(v547 + 72);
  v235 = v542;
  do
  {
    v236 = v531;
    sub_10003CA5C(v234, v531, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10003DF00(v236, v235, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v238 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      goto LABEL_72;
    }

    v237 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v237 - 8) + 48))(v235, 5, v237))
    {
      v238 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
LABEL_72:
      sub_10003E060(v235, v238);
      v239 = 1;
      goto LABEL_73;
    }

    sub_10003DF00(v235, v551, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v239 = 0;
LABEL_73:
    v240 = v569;
    v241 = v551;
    (*v568)(v551, v239, 1, v569);
    v242 = v241;
    v243 = v533;
    sub_10003DFF8(v242, v533, &qword_101A03A00);
    if ((*v563)(v243, 1, v240) == 1)
    {
      sub_10000CAAC(v243, &qword_101A03A00);
      v235 = v542;
    }

    else
    {
      sub_10003DF00(v243, v532, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v244 = v554;
      }

      else
      {
        v244 = sub_100B36D24(0, v554[2] + 1, 1, v554);
      }

      v235 = v542;
      v246 = v244[2];
      v245 = v244[3];
      if (v246 >= v245 >> 1)
      {
        v244 = sub_100B36D24(v245 > 1, v246 + 1, 1, v244);
      }

      v244[2] = v246 + 1;
      v247 = (*(v555 + 80) + 32) & ~*(v555 + 80);
      v554 = v244;
      sub_10003DF00(v532, v244 + v247 + *(v555 + 72) * v246, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v159 = v571;
    }

    v234 += v565;
    --v227;
  }

  while (v227);

  v223 = v552;
  v149 = v561;
  v228 = v554;
  v151 = v567;
LABEL_82:
  v554 = v228;
  v248 = *(v566 + 16);
  if (v248)
  {
    v249 = (v566 + ((*(v547 + 80) + 32) & ~*(v547 + 80)));
    v565 = v555 + 56;
    v250 = (v555 + 48);
    v551 = _swiftEmptyArrayStorage;
    v568 = *(v547 + 72);
    while (1)
    {
      v251 = v534;
      sub_10003CA5C(v249, v534, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v252 = v251;
      v253 = v535;
      sub_10003DF00(v252, v535, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v254 = sub_1005B981C(&qword_1019F3480);
        if (!(*(*(v254 - 8) + 48))(v253, 5, v254))
        {
          sub_10003DF00(v253, v548, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v256 = 0;
          goto LABEL_91;
        }

        v255 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      }

      else
      {
        v255 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      }

      sub_10003E060(v253, v255);
      v256 = 1;
LABEL_91:
      v257 = v548;
      v258 = v569;
      (*v565)(v548, v256, 1, v569);
      v259 = v257;
      v260 = v537;
      sub_10003DFF8(v259, v537, &qword_101A03A00);
      if ((*v250)(v260, 1, v258) == 1)
      {
        sub_10000CAAC(v260, &qword_101A03A00);
      }

      else
      {
        sub_10003DF00(v260, v536, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v551 = sub_100B36D24(0, v551[2] + 1, 1, v551);
        }

        v262 = v551[2];
        v261 = v551[3];
        if (v262 >= v261 >> 1)
        {
          v551 = sub_100B36D24(v261 > 1, v262 + 1, 1, v551);
        }

        v263 = v551;
        v551[2] = v262 + 1;
        sub_10003DF00(v536, v263 + ((*(v555 + 80) + 32) & ~*(v555 + 80)) + *(v555 + 72) * v262, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      }

      v159 = v571;
      v249 += v568;
      if (!--v248)
      {

        v223 = v552;
        v149 = v561;
        goto LABEL_100;
      }
    }
  }

  v551 = _swiftEmptyArrayStorage;
LABEL_100:
  v264 = v553[2];
  if (v264)
  {
    v265 = v553 + ((*(v547 + 80) + 32) & ~*(v547 + 80));
    v568 = v555 + 56;
    v565 = v555 + 48;
    v563 = _swiftEmptyArrayStorage;
    v566 = *(v547 + 72);
    v266 = v543;
    while (1)
    {
      v267 = v538;
      sub_10003CA5C(v265, v538, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10003DF00(v267, v266, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v268 = sub_1005B981C(&qword_1019F3480);
        if (!(*(*(v268 - 8) + 48))(v266, 5, v268))
        {
          sub_10003DF00(v266, v549, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v270 = 0;
          goto LABEL_109;
        }

        v269 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      }

      else
      {
        v269 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      }

      sub_10003E060(v266, v269);
      v270 = 1;
LABEL_109:
      v271 = v569;
      v272 = v549;
      (*v568)(v549, v270, 1, v569);
      v273 = v272;
      v274 = v540;
      sub_10003DFF8(v273, v540, &qword_101A03A00);
      if ((*v565)(v274, 1, v271) == 1)
      {
        sub_10000CAAC(v274, &qword_101A03A00);
        v266 = v543;
      }

      else
      {
        sub_10003DF00(v274, v539, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v563 = sub_100B36D24(0, v563[2] + 1, 1, v563);
        }

        v266 = v543;
        v276 = v563[2];
        v275 = v563[3];
        if (v276 >= v275 >> 1)
        {
          v563 = sub_100B36D24(v275 > 1, v276 + 1, 1, v563);
        }

        v277 = v563;
        v563[2] = v276 + 1;
        sub_10003DF00(v539, v277 + ((*(v555 + 80) + 32) & ~*(v555 + 80)) + *(v555 + 72) * v276, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v159 = v571;
      }

      v265 += v566;
      if (!--v264)
      {

        v223 = v552;
        v149 = v561;
        v151 = v567;
        goto LABEL_118;
      }
    }
  }

  v563 = _swiftEmptyArrayStorage;
LABEL_118:
  v278 = v554;
  v279 = v554[2];
  v280 = v560;
  if (!v279)
  {

    v465 = _swiftEmptyArrayStorage;
    goto LABEL_289;
  }

  v281 = 0;
  v282 = 0;
  v283 = (*(v555 + 80) + 32) & ~*(v555 + 80);
  v284 = v563[2];
  v548 = v554 + v283;
  v570 = v563 + v283;
  v541 = (v505 + 48);
  v538 = (v505 + 32);
  v540 = (v505 + 8);
  v539 = (v555 + 48);
  v536 = (v555 + 56);
  v537 = v283;
  v542 = v551 + v283;
  v545 = _swiftEmptyArrayStorage;
  v535 = xmmword_10146C6B0;
  v547 = v279;
  v565 = v284;
  v543 = (v504 + 48);
  v562 = v66;
  while (2)
  {
    if (v282 >= v278[2])
    {
      goto LABEL_299;
    }

    v553 = v281;
    v549 = v282 + 1;
    v285 = *(v555 + 72);
    sub_10003CA5C(v548 + v285 * v282, v159, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    if (!v284)
    {
LABEL_211:

      v281 = *(v159 + v569[7]);

      v374 = v159;
      v375 = v547;
      goto LABEL_212;
    }

    v286 = 0;
    v287 = v563;
    v566 = v285;
    while (2)
    {
      if (v286 >= v287[2])
      {
        __break(1u);
        __break(1u);
LABEL_299:
        __break(1u);
        goto LABEL_300;
      }

      sub_10003CA5C(v570 + v286 * v285, v66, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_126;
      }

      v568 = type metadata accessor for CRLFolderIdentifierStorage(0);
      v288 = *(v568 + 20);
      v289 = *&v66[v288];
      v290 = *&v66[v288 + 8];
      v291 = (v159 + v288);
      v292 = v289 == *v291 && v290 == v291[1];
      if (!v292 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_126;
      }

      v293 = v569[5];
      v294 = *(v564 + 48);
      sub_10000BE14(&v66[v293], v223, &qword_1019F33E0);
      v295 = &v571[v293];
      v159 = v571;
      sub_10000BE14(v295, v223 + v294, &qword_1019F33E0);
      if ((v149)(v223, 1, v280) == 1)
      {
        v296 = (v149)(v223 + v294, 1, v280);
        v66 = v562;
        v285 = v566;
        if (v296 == 1)
        {
          goto LABEL_143;
        }

        goto LABEL_124;
      }

      v297 = v557;
      sub_10000BE14(v223, v557, &qword_1019F33E0);
      if ((v149)(v223 + v294, 1, v280) == 1)
      {
        sub_10003E060(v297, type metadata accessor for CRLFolderIdentifier);
        v280 = v560;
        v285 = v566;
        v151 = v567;
        v149 = v561;
        v66 = v562;
        v287 = v563;
LABEL_124:
        sub_10000CAAC(v223, &qword_1019F33E8);
LABEL_125:
        v284 = v565;
LABEL_126:
        ++v286;
        sub_10003E060(v66, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        if (v286 == v284)
        {
          goto LABEL_211;
        }

        continue;
      }

      break;
    }

    v298 = v550;
    sub_10003DF00(v223 + v294, v550, type metadata accessor for CRLFolderIdentifier);
    v299 = static UUID.== infix(_:_:)();
    v66 = v562;
    v285 = v566;
    if ((v299 & 1) == 0 || ((v300 = *(v568 + 20), v301 = *(v297 + v300), v302 = *(v297 + v300 + 8), v303 = (v298 + v300), v301 != *v303) || v302 != v303[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_10003E060(v298, type metadata accessor for CRLFolderIdentifier);
      sub_10003E060(v297, type metadata accessor for CRLFolderIdentifier);
      sub_10000CAAC(v223, &qword_1019F33E0);
      v280 = v560;
      v151 = v567;
      v149 = v561;
      v287 = v563;
      goto LABEL_125;
    }

    sub_10003E060(v298, type metadata accessor for CRLFolderIdentifier);
    sub_10003E060(v557, type metadata accessor for CRLFolderIdentifier);
    v280 = v560;
    v151 = v567;
    v149 = v561;
    v287 = v563;
LABEL_143:
    sub_10000CAAC(v223, &qword_1019F33E0);
    v304 = v569[6];
    v305 = *&v66[v304];
    v306 = *&v66[v304 + 8];
    v307 = (v159 + v304);
    v284 = v565;
    if ((v305 != *v307 || v306 != v307[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_126;
    }

    v308 = v569[7];
    v309 = *&v66[v308];
    v310 = *(v159 + v308);
    v311 = *(v309 + 16);
    if (v311 != *(v310 + 16))
    {
      v223 = v552;
      goto LABEL_126;
    }

    if (v311)
    {
      v312 = v558;
      v313 = v559;
      if (v309 != v310)
      {
        v314 = (*(v516 + 80) + 32) & ~*(v516 + 80);
        v315 = v309 + v314;
        v316 = v310 + v314;
        v317 = *(v516 + 72);
        while (1)
        {
          sub_10003CA5C(v315, v312, type metadata accessor for CRLDisjointPosition.Element);
          sub_10003CA5C(v316, v313, type metadata accessor for CRLDisjointPosition.Element);
          if (*v312 != *v313)
          {
            sub_10003E060(v313, type metadata accessor for CRLDisjointPosition.Element);
            sub_10003E060(v312, type metadata accessor for CRLDisjointPosition.Element);
            v223 = v552;
            v159 = v571;
            goto LABEL_164;
          }

          v318 = static UUID.== infix(_:_:)();
          sub_10003E060(v313, type metadata accessor for CRLDisjointPosition.Element);
          sub_10003E060(v312, type metadata accessor for CRLDisjointPosition.Element);
          if ((v318 & 1) == 0)
          {
            break;
          }

          v316 += v317;
          v315 += v317;
          --v311;
          v313 = v559;
          v312 = v558;
          v151 = v567;
          if (!v311)
          {
            goto LABEL_153;
          }
        }

        v223 = v552;
        v159 = v571;
        v280 = v560;
LABEL_166:
        v151 = v567;
LABEL_167:
        v149 = v561;
        v287 = v563;
        v284 = v565;
        v285 = v566;
        goto LABEL_126;
      }
    }

LABEL_153:
    v319 = v569;
    v159 = v571;
    if ((static Date.== infix(_:_:)() & 1) == 0)
    {
      v223 = v552;
LABEL_164:
      v280 = v560;
      goto LABEL_167;
    }

    v320 = static Date.== infix(_:_:)();
    v321 = v319;
    v322 = v514;
    v323 = v515;
    v280 = v560;
    v149 = v561;
    v287 = v563;
    v284 = v565;
    v285 = v566;
    if ((v320 & 1) == 0 || v66[v321[10]] != *(v159 + v321[10]) || v66[v321[11]] != *(v159 + v321[11]) || v66[v321[12]] != *(v159 + v321[12]) || v66[v321[13]] != *(v159 + v321[13]))
    {
      v223 = v552;
      v151 = v567;
      goto LABEL_126;
    }

    v324 = v321[14];
    v325 = *(v499 + 48);
    sub_10000BE14(&v66[v324], v515, &qword_1019F33D0);
    v326 = &v571[v324];
    v159 = v571;
    v534 = v325;
    sub_10000BE14(v326, v323 + v325, &qword_1019F33D0);
    v327 = *v543;
    if ((*v543)(v323, 1, v322) == 1)
    {
      v328 = v327(v323 + v534, 1, v322);
      v329 = v327;
      v223 = v552;
      v285 = v566;
      if (v328 == 1)
      {
        goto LABEL_215;
      }

      goto LABEL_173;
    }

    sub_10000BE14(v323, v500, &qword_1019F33D0);
    v330 = v534;
    if (v327(v323 + v534, 1, v322) == 1)
    {
      sub_10003E060(v500, _s5BoardV13ShareMetadataVMa);
      v223 = v552;
      v159 = v571;
      v285 = v566;
LABEL_173:
      sub_10000CAAC(v323, &qword_1019F33D8);
      v151 = v567;
      goto LABEL_125;
    }

    v533 = v327;
    v331 = v498;
    sub_10003DF00(v323 + v330, v498, _s5BoardV13ShareMetadataVMa);
    v332 = v331;
    v333 = v500;
    v223 = v552;
    if (*v500 != *v331)
    {
      goto LABEL_210;
    }

    v334 = v514[5];
    v335 = *(v493 + 48);
    v336 = v492;
    v337 = v332;
    sub_10000BE14(&v500[v334], v492, &unk_1019F33C0);
    sub_10000BE14(v337 + v334, v336 + v335, &unk_1019F33C0);
    v338 = *v541;
    v339 = v494;
    if ((*v541)(v336, 1, v494) != 1)
    {
      v340 = v489;
      sub_10000BE14(v336, v489, &unk_1019F33C0);
      if (v338(v336 + v335, 1, v339) == 1)
      {
        (*v540)(v340, v339);
LABEL_180:
        sub_10000CAAC(v336, &unk_101A0B780);
        v332 = v498;
        v333 = v500;
        v223 = v552;
      }

      else
      {
        v341 = v485;
        (*v538)(v485, v336 + v335, v339);
        sub_10083356C(&qword_101A00190, &type metadata accessor for URL);
        v342 = dispatch thunk of static Equatable.== infix(_:_:)();
        v343 = *v540;
        (*v540)(v341, v339);
        v343(v340, v339);
        sub_10000CAAC(v336, &unk_1019F33C0);
        v332 = v498;
        v333 = v500;
        v223 = v552;
        if (v342)
        {
          goto LABEL_182;
        }
      }

LABEL_210:
      v373 = v333;
      sub_10003E060(v332, _s5BoardV13ShareMetadataVMa);
      sub_10003E060(v373, _s5BoardV13ShareMetadataVMa);
      sub_10000CAAC(v515, &qword_1019F33D0);
      v159 = v571;
      goto LABEL_166;
    }

    if (v338(v336 + v335, 1, v339) != 1)
    {
      goto LABEL_180;
    }

    sub_10000CAAC(v336, &unk_1019F33C0);
    v332 = v498;
    v333 = v500;
    v223 = v552;
LABEL_182:
    v344 = v514[6];
    v345 = *&v333[v344];
    v346 = *&v333[v344 + 8];
    v347 = (v332 + v344);
    if (v345 != *v347 || v346 != v347[1])
    {
      v348 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v333 = v500;
      v332 = v498;
      if ((v348 & 1) == 0)
      {
        goto LABEL_210;
      }
    }

    if (*&v333[v514[7]] != *(v332 + v514[7]))
    {
      goto LABEL_210;
    }

    v349 = v514[8];
    v350 = &v333[v349];
    v351 = *&v333[v349 + 8];
    v352 = *&v333[v349 + 16];
    v354 = *&v333[v349 + 24];
    v353 = *&v333[v349 + 32];
    v355 = *&v333[v349 + 40];
    v356 = v333[v349 + 48];
    v357 = v332 + v349;
    v358 = *(v357 + 8);
    v359 = *(v357 + 16);
    v361 = *(v357 + 24);
    v360 = *(v357 + 32);
    v362 = *(v357 + 40);
    v363 = *(v357 + 48);
    if (!v351)
    {
      if (!v358)
      {
        goto LABEL_193;
      }

      goto LABEL_210;
    }

    if (!v358)
    {
      goto LABEL_210;
    }

    if (*v350 != *v357 || v351 != v358)
    {
      v534 = v355;
      LODWORD(v532) = v363;
      LODWORD(v531) = v356;
      v364 = v353;
      v365 = v362;
      v366 = v360;
      v530 = v359;
      v367 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v359 = v530;
      v360 = v366;
      v362 = v365;
      v353 = v364;
      v356 = v531;
      v363 = v532;
      v355 = v534;
      v333 = v500;
      v332 = v498;
      if ((v367 & 1) == 0)
      {
        goto LABEL_210;
      }
    }

LABEL_193:
    if (!v354)
    {
      if (!v361)
      {
        goto LABEL_200;
      }

      goto LABEL_210;
    }

    if (!v361)
    {
      goto LABEL_210;
    }

    if (v352 != v359 || v354 != v361)
    {
      v368 = v353;
      v369 = v362;
      v370 = v360;
      v371 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v360 = v370;
      v362 = v369;
      v353 = v368;
      v333 = v500;
      v332 = v498;
      if ((v371 & 1) == 0)
      {
        goto LABEL_210;
      }
    }

LABEL_200:
    if (!v355)
    {
      if (!v362)
      {
        goto LABEL_209;
      }

      goto LABEL_210;
    }

    if (!v362)
    {
      goto LABEL_210;
    }

    if (v353 == v360 && v355 == v362)
    {
      v332 = v498;
      v333 = v500;
      if (v356 == v363)
      {
        goto LABEL_214;
      }

      goto LABEL_210;
    }

    v372 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v332 = v498;
    v333 = v500;
    if ((v372 & 1) == 0)
    {
      goto LABEL_210;
    }

LABEL_209:
    if ((v356 ^ v363))
    {
      goto LABEL_210;
    }

LABEL_214:
    v376 = v333;
    sub_10003E060(v332, _s5BoardV13ShareMetadataVMa);
    sub_10003E060(v376, _s5BoardV13ShareMetadataVMa);
    v323 = v515;
    v159 = v571;
    v149 = v561;
    v285 = v566;
    v329 = v533;
LABEL_215:
    v533 = v329;
    sub_10000CAAC(v323, &qword_1019F33D0);
    sub_10003E060(v66, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_10003CA5C(v159, v487, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v377 = v491;
    v378 = v553;
    if (v553)
    {
      v379 = v483;
      sub_10082650C(v553, v483);
      v380 = v569;
      v381 = (*v539)(v379, 1, v569);
      v151 = v567;
      if (v381 == 1)
      {
        sub_10000CAAC(v379, &qword_101A03A00);
        v553 = sub_1009D1F04(v378);
      }

      else
      {
        v446 = v481;
        sub_10003DF00(v379, v481, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v447 = *(v446 + v380[7]);

        v553 = sub_1009D2244(v378, v447);
        sub_10003E060(v446, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      }

      v448 = v380;
      v223 = v552;
      goto LABEL_283;
    }

    v530 = *v536;
    (v530)(v488, 1, 1, v569);
    v382 = v547;
    v383 = v549;
    v384 = v549 == v547;
    v151 = v567;
LABEL_219:
    if (v384)
    {
      goto LABEL_279;
    }

    v532 = v383;
    if (v383 >= v382)
    {
      goto LABEL_302;
    }

    v385 = v486;
    sub_10000BE14(v488, v486, &qword_101A03A00);
    v386 = (*v539)(v385, 1, v569);
    sub_10000CAAC(v385, &qword_101A03A00);
    if (v386 != 1)
    {
LABEL_279:
      v449 = v488;
      v450 = v539;
      v451 = v482;
      sub_10000BE14(v488, v482, &qword_101A03A00);
      v448 = v569;
      if ((*v450)(v451, 1, v569) == 1)
      {
        sub_10000CAAC(v451, &qword_101A03A00);
        sub_1005B981C(&qword_1019F49A0);
        v452 = (*(v516 + 80) + 32) & ~*(v516 + 80);
        v453 = swift_allocObject();
        *(v453 + 16) = v535;
        v553 = v453;
        v454 = (v453 + v452);
        v455 = sub_10000C3A0(0xC7uLL) - 99;
        UUID.init()();
        *v454 = v455;
      }

      else
      {
        v456 = v451;
        v457 = v480;
        sub_10003DF00(v456, v480, type metadata accessor for CRLBoardLibraryViewModel.Folder);

        v553 = sub_1009D2B3C(v458);
        sub_10003E060(v457, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      }

      sub_10000CAAC(v449, &qword_101A03A00);
      v223 = v552;
      v285 = v566;
LABEL_283:
      v459 = v448[7];
      v460 = v487;
      v568 = *(v487 + v459);
      v461 = v553;

      *(v460 + v459) = v461;
      sub_10003CA5C(v460, v484, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v545 = sub_100B36D24(0, v545[2] + 1, 1, v545);
      }

      v463 = v545[2];
      v462 = v545[3];
      v375 = v547;
      if (v463 >= v462 >> 1)
      {
        v545 = sub_100B36D24(v462 > 1, v463 + 1, 1, v545);
      }

      sub_10003E060(v159, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v464 = v545;
      v545[2] = v463 + 1;
      sub_10003DF00(v484, v464 + v537 + v463 * v285, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v374 = v487;
      v284 = v565;
      v281 = v553;
LABEL_212:
      sub_10003E060(v374, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v282 = v549;
      v278 = v554;
      if (v549 == v375)
      {

        v465 = v545;
LABEL_289:
        v466 = v465[2];
        v467 = v569;
        if (v466)
        {
          v572 = _swiftEmptyArrayStorage;
          sub_1007769A4(0, v466, 0);
          v200 = v572;
          v468 = v465 + ((*(v555 + 80) + 32) & ~*(v555 + 80));
          v469 = *(v555 + 72);
          v470 = v503;
          do
          {
            sub_10003CA5C(v468, v470, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            v471 = *(v470 + v467[7]);

            sub_10003E060(v470, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            v572 = v200;
            v473 = v200[2];
            v472 = v200[3];
            if (v473 >= v472 >> 1)
            {
              sub_1007769A4((v472 > 1), v473 + 1, 1);
              v470 = v503;
              v200 = v572;
            }

            v200[2] = v473 + 1;
            v200[v473 + 4] = v471;
            v468 += v469;
            --v466;
            v467 = v569;
          }

          while (v466);
          v475[1](v512, v546);
        }

        else
        {
          v475[1](v512, v546);

          v200 = _swiftEmptyArrayStorage;
        }

        sub_10003E060(v510, _s4NodeVMa);
        return v200;
      }

      continue;
    }

    break;
  }

  v387 = v566;
  if (v532 >= v554[2])
  {
    goto LABEL_303;
  }

  v388 = v548 + v532 * v566;
  sub_10003CA5C(v388, v501, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v389 = v551[2];
  if (!v389)
  {
LABEL_274:
    sub_10003E060(v501, type metadata accessor for CRLBoardLibraryViewModel.Folder);
LABEL_275:
    v383 = v532 + 1;
    v382 = v547;
    v384 = v532 + 1 == v547;
    goto LABEL_219;
  }

  v531 = v388;
  v390 = 0;
  v553 = v389;
  while (2)
  {
    if (v390 < v551[2])
    {
      v391 = v502;
      sub_10003CA5C(&v542[v390 * v387], v502, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v392 = v501;
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_225;
      }

      v393 = *(v568 + 20);
      v394 = *(v391 + v393);
      v395 = *(v391 + v393 + 8);
      v396 = (v392 + v393);
      v397 = v394 == *v396 && v395 == v396[1];
      v398 = v391;
      if (!v397)
      {
        v399 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v398 = v502;
        if ((v399 & 1) == 0)
        {
          goto LABEL_225;
        }
      }

      v400 = v569[5];
      v401 = *(v564 + 48);
      sub_10000BE14(v398 + v400, v377, &qword_1019F33E0);
      sub_10000BE14(v501 + v400, v377 + v401, &qword_1019F33E0);
      if ((v149)(v377, 1, v280) == 1)
      {
        v402 = (v149)(v377 + v401, 1, v280);
        v159 = v571;
        v66 = v562;
        v387 = v566;
        v389 = v553;
        if (v402 == 1)
        {
LABEL_245:
          sub_10000CAAC(v377, &qword_1019F33E0);
          v414 = v569[6];
          v415 = v502;
          v416 = *(v502 + v414);
          v417 = *(v502 + v414 + 8);
          v418 = v501;
          v419 = (v501 + v414);
          if (v416 != *v419 || v417 != v419[1])
          {
            v420 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v418 = v501;
            v415 = v502;
            if ((v420 & 1) == 0)
            {
              goto LABEL_226;
            }
          }

          v421 = v569[7];
          v422 = *(v415 + v421);
          v423 = *(v418 + v421);
          v424 = *(v422 + 16);
          if (v424 != *(v423 + 16))
          {
            v377 = v491;
            goto LABEL_226;
          }

          if (v424 && v422 != v423)
          {
            v425 = (*(v516 + 80) + 32) & ~*(v516 + 80);
            v426 = v422 + v425;
            v427 = v423 + v425;
            v428 = *(v516 + 72);
            while (1)
            {
              v429 = v496;
              sub_10003CA5C(v426, v496, type metadata accessor for CRLDisjointPosition.Element);
              v430 = v495;
              sub_10003CA5C(v427, v495, type metadata accessor for CRLDisjointPosition.Element);
              if (*v429 != *v430)
              {
                break;
              }

              LODWORD(v534) = static UUID.== infix(_:_:)();
              sub_10003E060(v430, type metadata accessor for CRLDisjointPosition.Element);
              sub_10003E060(v429, type metadata accessor for CRLDisjointPosition.Element);
              if ((v534 & 1) == 0)
              {
                goto LABEL_267;
              }

              v427 += v428;
              v426 += v428;
              if (!--v424)
              {
                goto LABEL_255;
              }
            }

            sub_10003E060(v430, type metadata accessor for CRLDisjointPosition.Element);
            sub_10003E060(v429, type metadata accessor for CRLDisjointPosition.Element);
LABEL_267:
            v377 = v491;
            v159 = v571;
            v151 = v567;
            v149 = v561;
LABEL_268:
            v387 = v566;
            v389 = v553;
LABEL_226:
            ++v390;
            sub_10003E060(v502, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            if (v390 == v389)
            {
              goto LABEL_274;
            }

            continue;
          }

LABEL_255:
          v431 = v569;
          v432 = v502;
          v433 = v501;
          if ((static Date.== infix(_:_:)() & 1) == 0)
          {
            goto LABEL_267;
          }

          v434 = static Date.== infix(_:_:)();
          v435 = v431;
          v377 = v491;
          v387 = v566;
          v151 = v567;
          v149 = v561;
          v389 = v553;
          if ((v434 & 1) != 0 && *(v432 + v435[10]) == *(v433 + v435[10]) && *(v432 + v435[11]) == *(v433 + v435[11]) && *(v432 + v569[12]) == *(v433 + v569[12]))
          {
            if (*(v502 + v569[13]) == *(v501 + v569[13]))
            {
              v436 = v569[14];
              v437 = *(v499 + 48);
              v438 = v479;
              sub_10000BE14(v502 + v436, v479, &qword_1019F33D0);
              sub_10000BE14(v501 + v436, v438 + v437, &qword_1019F33D0);
              if (v533(v438, 1, v514) == 1)
              {
                if (v533(v479 + v437, 1, v514) == 1)
                {
                  sub_10000CAAC(v479, &qword_1019F33D0);
LABEL_276:
                  sub_10003E060(v502, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                  sub_10003E060(v501, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                  v444 = v476;
                  sub_10003CA5C(v531, v476, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                  v445 = v488;
                  sub_10000CAAC(v488, &qword_101A03A00);
                  (v530)(v444, 0, 1, v569);
                  sub_10003DFF8(v444, v445, &qword_101A03A00);
                  v377 = v491;
                  v159 = v571;
                  v280 = v560;
                  v151 = v567;
                  v149 = v561;
                  v66 = v562;
                  goto LABEL_275;
                }

LABEL_271:
                sub_10000CAAC(v479, &qword_1019F33D8);
              }

              else
              {
                v439 = v479;
                sub_10000BE14(v479, v478, &qword_1019F33D0);
                if (v533(v439 + v437, 1, v514) == 1)
                {
                  sub_10003E060(v478, _s5BoardV13ShareMetadataVMa);
                  goto LABEL_271;
                }

                v440 = v479;
                v441 = v477;
                sub_10003DF00(v479 + v437, v477, _s5BoardV13ShareMetadataVMa);
                v442 = v478;
                v443 = sub_1013038D4(v478, v441);
                sub_10003E060(v441, _s5BoardV13ShareMetadataVMa);
                sub_10003E060(v442, _s5BoardV13ShareMetadataVMa);
                sub_10000CAAC(v440, &qword_1019F33D0);
                if (v443)
                {
                  goto LABEL_276;
                }
              }
            }

            v377 = v491;
            v159 = v571;
            v280 = v560;
            v151 = v567;
            v149 = v561;
            v66 = v562;
            goto LABEL_268;
          }

LABEL_225:
          v159 = v571;
          goto LABEL_226;
        }
      }

      else
      {
        v403 = v497;
        sub_10000BE14(v377, v497, &qword_1019F33E0);
        if ((v149)(v377 + v401, 1, v280) != 1)
        {
          v404 = v377 + v401;
          v405 = v490;
          sub_10003DF00(v404, v490, type metadata accessor for CRLFolderIdentifier);
          v406 = static UUID.== infix(_:_:)();
          v407 = v405;
          v408 = v403;
          v159 = v571;
          v66 = v562;
          v387 = v566;
          v389 = v553;
          if (v406)
          {
            if (v409 = *(v568 + 20), v410 = *(v408 + v409), v411 = *(v408 + v409 + 8), v412 = (v407 + v409), v410 == *v412) && v411 == v412[1] || (v413 = _stringCompareWithSmolCheck(_:_:expecting:)(), v407 = v490, (v413))
            {
              sub_10003E060(v407, type metadata accessor for CRLFolderIdentifier);
              v151 = v567;
              sub_10003E060(v408, type metadata accessor for CRLFolderIdentifier);
              goto LABEL_245;
            }
          }

          sub_10003E060(v407, type metadata accessor for CRLFolderIdentifier);
          sub_10003E060(v497, type metadata accessor for CRLFolderIdentifier);
          sub_10000CAAC(v377, &qword_1019F33E0);
          goto LABEL_226;
        }

        sub_10003E060(v403, type metadata accessor for CRLFolderIdentifier);
        v159 = v571;
        v66 = v562;
        v387 = v566;
        v389 = v553;
      }

      sub_10000CAAC(v377, &qword_1019F33E8);
      goto LABEL_226;
    }

    break;
  }

  __break(1u);
  __break(1u);
LABEL_302:
  __break(1u);
LABEL_303:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10082C500()
{
  v1 = v0;
  v2 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = _s13CacheSnapshotV20TitleValidationErrorOMa(0);
  __chkstk_darwin(v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10003CA5C(v1, v10, _s13CacheSnapshotV20TitleValidationErrorOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2 && (EnumCaseMultiPayload - 3) >= 2)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    return sub_10003E060(v10, _s13CacheSnapshotV20TitleValidationErrorOMa);
  }

  else
  {
    sub_10003E060(v10, _s13CacheSnapshotV20TitleValidationErrorOMa);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
    return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  }
}

Swift::Int sub_10082C8F4(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v10[2] = v9;
      }

      v11 = *(type metadata accessor for CRLBoardLibraryViewModel.Folder(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

Swift::Int sub_10082CA30(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CRLBoardLibraryViewModel.Item(0);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v8;
      }

      v10 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_10082E398(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_100F66E34(0, v5, 1, a1);
  }

  return result;
}

void sub_10082CB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v42);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v37 = *a4;
    v31 = v17;
    v21 = v37 + v17 * a3;
LABEL_5:
    v35 = v18;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    v22 = v42;
    while (1)
    {
      sub_10003CA5C(v21, v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      sub_10003CA5C(v18, v12, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v23 = *(v22 + 24);
      v24 = *&v16[v23 + 8];
      v40 = *&v16[v23];
      v41 = v24;
      v25 = &v12[v23];
      v27 = *v25;
      v26 = *(v25 + 1);
      v38 = v27;
      v39 = v26;
      sub_100017CD8();
      v28 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
      sub_10003E060(v12, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v22 = v42;
      sub_10003E060(v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      if (v28 != -1)
      {
LABEL_4:
        a3 = v36 + 1;
        v18 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      sub_10003DF00(v21, v9, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      swift_arrayInitWithTakeFrontToBack();
      sub_10003DF00(v9, v18, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10082CDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v9 = __chkstk_darwin(v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_10003CA5C(v23, v17, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      sub_10003CA5C(v20, v13, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v24 = sub_1009D1B18(*&v17[*(v8 + 28)], *&v13[*(v8 + 28)]);
      sub_10003E060(v13, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      result = sub_10003E060(v17, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_10003DF00(v23, v35, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10003DF00(v25, v20, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10082D060(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v102 = a1;
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v111 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v106 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v114 = &v99 - v13;
  v14 = __chkstk_darwin(v12);
  v115 = &v99 - v15;
  result = __chkstk_darwin(v14);
  v18 = &v99 - v17;
  v113 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v117 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v113)
        {
          v95 = *(result + 16 * a4);
          v96 = result;
          v97 = *(result + 16 * (a4 - 1) + 40);
          sub_10082F420(*v113 + *(v111 + 72) * v95, *v113 + *(v111 + 72) * *(result + 16 * (a4 - 1) + 32), *v113 + *(v111 + 72) * v97, v5);
          if (v6)
          {
          }

          if (v97 < v95)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = sub_10113DE48(v96);
          }

          if (a4 - 2 >= *(v96 + 2))
          {
            goto LABEL_123;
          }

          v98 = &v96[16 * a4];
          *v98 = v95;
          *(v98 + 1) = v97;
          v117 = v96;
          sub_10113DDBC(a4 - 1);
          result = v117;
          a4 = *(v117 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_10113DE48(a4);
    goto LABEL_99;
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v101 = a4;
  v116 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v107 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *v113;
      v25 = *(v111 + 72);
      v5 = *v113 + v25 * v23;
      sub_10003CA5C(v5, v18, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v26 = v24 + v25 * v22;
      v103 = v22;
      v27 = v115;
      sub_10003CA5C(v26, v115, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      LODWORD(v110) = sub_1009D1B18(*&v18[*(v9 + 28)], *(v27 + *(v9 + 28)));
      sub_10003E060(v27, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      result = sub_10003E060(v18, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v28 = v103 + 2;
      v112 = v25;
      v29 = v24 + v25 * (v103 + 2);
      while (v19 != v28)
      {
        sub_10003CA5C(v29, v18, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v30 = v115;
        sub_10003CA5C(v5, v115, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v31 = sub_1009D1B18(*&v18[*(v116 + 28)], *(v30 + *(v116 + 28))) & 1;
        sub_10003E060(v30, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        result = sub_10003E060(v18, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        ++v28;
        v29 += v112;
        v5 += v112;
        if ((v110 & 1) != v31)
        {
          v19 = v28 - 1;
          break;
        }
      }

      a4 = v101;
      v9 = v116;
      v22 = v103;
      if (v110)
      {
        if (v19 < v103)
        {
          goto LABEL_126;
        }

        if (v103 < v19)
        {
          v100 = v6;
          v32 = v112 * (v19 - 1);
          v33 = v19;
          v34 = v19 * v112;
          v110 = v19;
          v35 = v103;
          v36 = v103;
          v37 = v103 * v112;
          do
          {
            if (v35 != --v33)
            {
              v38 = *v113;
              if (!*v113)
              {
                goto LABEL_132;
              }

              v5 = v38 + v37;
              sub_10003DF00(v38 + v37, v106, type metadata accessor for CRLBoardLibraryViewModel.Folder);
              if (v37 < v32 || v5 >= v38 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10003DF00(v106, v38 + v32, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            }

            ++v35;
            v32 -= v112;
            v34 -= v112;
            v37 += v112;
          }

          while (v35 < v33);
          v6 = v100;
          a4 = v101;
          v9 = v116;
          v22 = v36;
          v19 = v110;
        }
      }
    }

    v39 = v113[1];
    if (v19 >= v39)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v19, v22))
    {
      goto LABEL_125;
    }

    if (v19 - v22 >= a4)
    {
LABEL_32:
      v20 = v19;
      if (v19 < v22)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v22, a4))
    {
      goto LABEL_127;
    }

    if ((v22 + a4) >= v39)
    {
      v40 = v113[1];
    }

    else
    {
      v40 = v22 + a4;
    }

    if (v40 < v22)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v19 == v40)
    {
      goto LABEL_32;
    }

    v100 = v6;
    v85 = v19;
    v86 = v22;
    v87 = *v113;
    v88 = *(v111 + 72);
    v89 = *v113 + v88 * (v19 - 1);
    v90 = -v88;
    v103 = v86;
    v104 = v88;
    v91 = v86 - v19;
    v110 = v85;
    v5 = v87 + v85 * v88;
    v105 = v40;
LABEL_86:
    v108 = v5;
    v109 = v91;
    v112 = v89;
LABEL_87:
    sub_10003CA5C(v5, v18, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v92 = v115;
    sub_10003CA5C(v89, v115, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    a4 = sub_1009D1B18(*&v18[*(v9 + 28)], *(v92 + *(v9 + 28)));
    sub_10003E060(v92, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    result = sub_10003E060(v18, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    if (a4)
    {
      break;
    }

    v9 = v116;
LABEL_85:
    v20 = v105;
    v89 = v112 + v104;
    v91 = v109 - 1;
    v5 = v108 + v104;
    if (++v110 != v105)
    {
      goto LABEL_86;
    }

    v6 = v100;
    v22 = v103;
    if (v105 < v103)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v107;
    }

    else
    {
      result = sub_100B355CC(0, *(v107 + 2) + 1, 1, v107);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v41 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      result = sub_100B355CC((v41 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v42 = &v21[16 * a4];
    *(v42 + 4) = v22;
    *(v42 + 5) = v20;
    v43 = *v102;
    if (!*v102)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          v49 = &v21[16 * v5 + 32];
          v50 = *(v49 - 64);
          v51 = *(v49 - 56);
          v55 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          if (v55)
          {
            goto LABEL_111;
          }

          v54 = *(v49 - 48);
          v53 = *(v49 - 40);
          v55 = __OFSUB__(v53, v54);
          v47 = v53 - v54;
          v48 = v55;
          if (v55)
          {
            goto LABEL_112;
          }

          v56 = &v21[16 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v55 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v55)
          {
            goto LABEL_114;
          }

          v55 = __OFADD__(v47, v59);
          v60 = v47 + v59;
          if (v55)
          {
            goto LABEL_117;
          }

          if (v60 >= v52)
          {
            v78 = &v21[16 * v44 + 32];
            v80 = *v78;
            v79 = *(v78 + 1);
            v55 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v55)
            {
              goto LABEL_121;
            }

            if (v47 < v81)
            {
              v44 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v48)
            {
              goto LABEL_113;
            }

            v61 = &v21[16 * v5];
            v63 = *v61;
            v62 = *(v61 + 1);
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_116;
            }

            v67 = &v21[16 * v44 + 32];
            v69 = *v67;
            v68 = *(v67 + 1);
            v55 = __OFSUB__(v68, v69);
            v70 = v68 - v69;
            if (v55)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v65, v70))
            {
              goto LABEL_120;
            }

            if (v65 + v70 < v47)
            {
              goto LABEL_66;
            }

            if (v47 < v70)
            {
              v44 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v45 = *(v21 + 4);
            v46 = *(v21 + 5);
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
            goto LABEL_52;
          }

          v71 = &v21[16 * v5];
          v73 = *v71;
          v72 = *(v71 + 1);
          v55 = __OFSUB__(v72, v73);
          v65 = v72 - v73;
          v66 = v55;
LABEL_66:
          if (v66)
          {
            goto LABEL_115;
          }

          v74 = &v21[16 * v44];
          v76 = *(v74 + 4);
          v75 = *(v74 + 5);
          v55 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v55)
          {
            goto LABEL_118;
          }

          if (v77 < v65)
          {
            break;
          }
        }

        a4 = v44 - 1;
        if (v44 - 1 >= v5)
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
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v113)
        {
          goto LABEL_131;
        }

        v82 = v21;
        v83 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v44 + 40];
        sub_10082F420(*v113 + *(v111 + 72) * v83, *v113 + *(v111 + 72) * *&v21[16 * v44 + 32], *v113 + *(v111 + 72) * v5, v43);
        if (v6)
        {
        }

        if (v5 < v83)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_10113DE48(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_110;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v117 = v82;
        result = sub_10113DDBC(v44);
        v21 = v117;
        v5 = *(v117 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v19 = v113[1];
    a4 = v101;
    v9 = v116;
    if (v20 >= v19)
    {
      goto LABEL_96;
    }
  }

  if (v87)
  {
    a4 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
    v93 = v114;
    sub_10003DF00(v5, v114, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v9 = v116;
    swift_arrayInitWithTakeFrontToBack();
    sub_10003DF00(v93, v89, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v89 += v90;
    v5 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

void sub_10082D9BC(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v117 = a1;
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v123 = *(v8 - 8);
  __chkstk_darwin(v8);
  v118 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v128 = &v114 - v11;
  __chkstk_darwin(v12);
  v129 = &v114 - v13;
  __chkstk_darwin(v14);
  v16 = &v114 - v15;
  v126 = a3;
  v17 = *(a3 + 8);
  if (v17 >= 1)
  {
    v114 = a4;
    v18 = 0;
    v19 = _swiftEmptyArrayStorage;
    v130 = v8;
    while (1)
    {
      v20 = v18;
      v21 = v18 + 1;
      v124 = v19;
      if (v18 + 1 >= v17)
      {
        ++v18;
      }

      else
      {
        v127 = v17;
        v116 = v5;
        v22 = v8;
        v23 = *(v123 + 72);
        a3 = *v126 + v23 * v21;
        v121 = *v126;
        v24 = v121;
        sub_10003CA5C(v121 + v23 * v21, v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v25 = v24 + v23 * v18;
        v26 = v129;
        sub_10003CA5C(v25, v129, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v27 = *(v22 + 24);
        v28 = *&v16[v27 + 8];
        v133 = *&v16[v27];
        v134 = v28;
        v29 = (v26 + v27);
        v31 = *v29;
        v30 = v29[1];
        v131 = v31;
        v132 = v30;
        sub_100017CD8();
        v122 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
        sub_10003E060(v26, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_10003E060(v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v115 = v18;
        v32 = v18 + 2;
        v125 = v23;
        v33 = v121 + v23 * (v18 + 2);
        while (1)
        {
          v18 = v127;
          if (v127 == v32)
          {
            break;
          }

          v34 = v122 == -1;
          sub_10003CA5C(v33, v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v35 = v129;
          sub_10003CA5C(a3, v129, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v36 = *(v130 + 24);
          v37 = *&v16[v36 + 8];
          v133 = *&v16[v36];
          v134 = v37;
          v38 = (v35 + v36);
          v40 = *v38;
          v39 = v38[1];
          v131 = v40;
          v132 = v39;
          v41 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
          sub_10003E060(v35, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          sub_10003E060(v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v42 = v34 ^ (v41 != -1);
          v19 = v124;
          ++v32;
          v33 += v125;
          a3 += v125;
          if ((v42 & 1) == 0)
          {
            v18 = v32 - 1;
            break;
          }
        }

        v20 = v115;
        v5 = v116;
        v8 = v130;
        if (v122 == -1)
        {
          if (v18 < v115)
          {
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            return;
          }

          if (v115 < v18)
          {
            v43 = v125 * (v18 - 1);
            v44 = v18 * v125;
            v45 = v18;
            v46 = v115;
            v47 = v115 * v125;
            do
            {
              if (v46 != --v45)
              {
                v48 = *v126;
                if (!*v126)
                {
                  goto LABEL_129;
                }

                a3 = v48 + v47;
                sub_10003DF00(v48 + v47, v118, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                if (v47 < v43 || a3 >= v48 + v44)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v47 != v43)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_10003DF00(v118, v48 + v43, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                v19 = v124;
              }

              ++v46;
              v43 -= v125;
              v44 -= v125;
              v47 += v125;
            }

            while (v46 < v45);
            v20 = v115;
            v5 = v116;
            v8 = v130;
          }
        }
      }

      v49 = v126[1];
      if (v18 < v49)
      {
        if (__OFSUB__(v18, v20))
        {
          goto LABEL_121;
        }

        if (v18 - v20 < v114)
        {
          if (__OFADD__(v20, v114))
          {
            goto LABEL_122;
          }

          if (v20 + v114 < v49)
          {
            v49 = v20 + v114;
          }

          if (v49 < v20)
          {
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          v120 = v49;
          if (v18 != v49)
          {
            v115 = v20;
            v116 = v5;
            v50 = *v126;
            v51 = *(v123 + 72);
            v52 = *v126 + v51 * (v18 - 1);
            v53 = -v51;
            v54 = v20 - v18;
            v119 = v51;
            a3 = v50 + v18 * v51;
            do
            {
              v127 = v18;
              v121 = a3;
              v122 = v54;
              v125 = v52;
              v55 = v52;
              while (1)
              {
                sub_10003CA5C(a3, v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                v56 = v129;
                sub_10003CA5C(v55, v129, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                v57 = *(v8 + 24);
                v58 = *&v16[v57 + 8];
                v133 = *&v16[v57];
                v134 = v58;
                v59 = (v56 + v57);
                v61 = *v59;
                v60 = v59[1];
                v131 = v61;
                v132 = v60;
                sub_100017CD8();
                v62 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
                sub_10003E060(v56, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                sub_10003E060(v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                if (v62 != -1)
                {
                  break;
                }

                if (!v50)
                {
                  goto LABEL_126;
                }

                v63 = v128;
                sub_10003DF00(a3, v128, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                v8 = v130;
                swift_arrayInitWithTakeFrontToBack();
                sub_10003DF00(v63, v55, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                v55 += v53;
                a3 += v53;
                if (__CFADD__(v54++, 1))
                {
                  goto LABEL_33;
                }
              }

              v8 = v130;
LABEL_33:
              v18 = v127 + 1;
              v52 = v125 + v119;
              v54 = v122 - 1;
              a3 = v121 + v119;
            }

            while (v127 + 1 != v120);
            v20 = v115;
            v5 = v116;
            v19 = v124;
            v18 = v120;
          }
        }
      }

      if (v18 < v20)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100B355CC(0, *(v19 + 2) + 1, 1, v19);
      }

      a3 = *(v19 + 2);
      v65 = *(v19 + 3);
      v66 = a3 + 1;
      if (a3 >= v65 >> 1)
      {
        v19 = sub_100B355CC((v65 > 1), a3 + 1, 1, v19);
      }

      *(v19 + 2) = v66;
      v67 = &v19[16 * a3];
      *(v67 + 4) = v20;
      *(v67 + 5) = v18;
      v68 = *v117;
      if (!*v117)
      {
        goto LABEL_130;
      }

      if (a3)
      {
        while (1)
        {
          a3 = v66 - 1;
          if (v66 >= 4)
          {
            break;
          }

          if (v66 == 3)
          {
            v69 = *(v19 + 4);
            v70 = *(v19 + 5);
            v79 = __OFSUB__(v70, v69);
            v71 = v70 - v69;
            v72 = v79;
LABEL_61:
            if (v72)
            {
              goto LABEL_109;
            }

            v85 = &v19[16 * v66];
            v87 = *v85;
            v86 = *(v85 + 1);
            v88 = __OFSUB__(v86, v87);
            v89 = v86 - v87;
            v90 = v88;
            if (v88)
            {
              goto LABEL_112;
            }

            v91 = &v19[16 * a3 + 32];
            v93 = *v91;
            v92 = *(v91 + 1);
            v79 = __OFSUB__(v92, v93);
            v94 = v92 - v93;
            if (v79)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v89, v94))
            {
              goto LABEL_116;
            }

            if (v89 + v94 >= v71)
            {
              if (v71 < v94)
              {
                a3 = v66 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          v95 = &v19[16 * v66];
          v97 = *v95;
          v96 = *(v95 + 1);
          v79 = __OFSUB__(v96, v97);
          v89 = v96 - v97;
          v90 = v79;
LABEL_75:
          if (v90)
          {
            goto LABEL_111;
          }

          v98 = &v19[16 * a3];
          v100 = *(v98 + 4);
          v99 = *(v98 + 5);
          v79 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v79)
          {
            goto LABEL_114;
          }

          if (v101 < v89)
          {
            goto LABEL_3;
          }

LABEL_82:
          v106 = a3 - 1;
          if (a3 - 1 >= v66)
          {
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
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*v126)
          {
            goto LABEL_127;
          }

          v107 = *&v19[16 * v106 + 32];
          v108 = *&v19[16 * a3 + 40];
          sub_10082EE90(*v126 + *(v123 + 72) * v107, *v126 + *(v123 + 72) * *&v19[16 * a3 + 32], *v126 + *(v123 + 72) * v108, v68);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v108 < v107)
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_10113DE48(v19);
          }

          if (v106 >= *(v19 + 2))
          {
            goto LABEL_106;
          }

          v109 = &v19[16 * v106];
          *(v109 + 4) = v107;
          *(v109 + 5) = v108;
          v135 = v19;
          sub_10113DDBC(a3);
          v19 = v135;
          v66 = *(v135 + 2);
          v8 = v130;
          if (v66 <= 1)
          {
            goto LABEL_3;
          }
        }

        v73 = &v19[16 * v66 + 32];
        v74 = *(v73 - 64);
        v75 = *(v73 - 56);
        v79 = __OFSUB__(v75, v74);
        v76 = v75 - v74;
        if (v79)
        {
          goto LABEL_107;
        }

        v78 = *(v73 - 48);
        v77 = *(v73 - 40);
        v79 = __OFSUB__(v77, v78);
        v71 = v77 - v78;
        v72 = v79;
        if (v79)
        {
          goto LABEL_108;
        }

        v80 = &v19[16 * v66];
        v82 = *v80;
        v81 = *(v80 + 1);
        v79 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v79)
        {
          goto LABEL_110;
        }

        v79 = __OFADD__(v71, v83);
        v84 = v71 + v83;
        if (v79)
        {
          goto LABEL_113;
        }

        if (v84 >= v76)
        {
          v102 = &v19[16 * a3 + 32];
          v104 = *v102;
          v103 = *(v102 + 1);
          v79 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v79)
          {
            goto LABEL_117;
          }

          if (v71 < v105)
          {
            a3 = v66 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_61;
      }

LABEL_3:
      v17 = v126[1];
      if (v18 >= v17)
      {
        goto LABEL_93;
      }
    }
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_93:
  a3 = *v117;
  if (!*v117)
  {
    goto LABEL_131;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_124:
    v19 = sub_10113DE48(v19);
  }

  v135 = v19;
  v110 = *(v19 + 2);
  if (v110 >= 2)
  {
    while (*v126)
    {
      v111 = *&v19[16 * v110];
      v112 = *&v19[16 * v110 + 24];
      sub_10082EE90(*v126 + *(v123 + 72) * v111, *v126 + *(v123 + 72) * *&v19[16 * v110 + 16], *v126 + *(v123 + 72) * v112, a3);
      if (v5)
      {
        goto LABEL_103;
      }

      if (v112 < v111)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_10113DE48(v19);
      }

      if (v110 - 2 >= *(v19 + 2))
      {
        goto LABEL_119;
      }

      v113 = &v19[16 * v110];
      *v113 = v111;
      *(v113 + 1) = v112;
      v135 = v19;
      sub_10113DDBC(v110 - 1);
      v19 = v135;
      v110 = *(v135 + 2);
      if (v110 <= 1)
      {
        goto LABEL_103;
      }
    }

    goto LABEL_128;
  }

LABEL_103:
}

uint64_t sub_10082E398(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a4;
  v143 = a5;
  v130 = a1;
  v135 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v140 = *(v135 - 8);
  v10 = __chkstk_darwin(v135);
  v132 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v134 = &v119 - v13;
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v17 = &v119 - v16;
  v18 = __chkstk_darwin(v15);
  v19 = __chkstk_darwin(v18);
  v21 = &v119 - v20;
  v22 = __chkstk_darwin(v19);
  result = __chkstk_darwin(v22);
  v141 = a3;
  if (a3[1] < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_99:
    v21 = *v130;
    if (*v130)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_101;
    }

    goto LABEL_142;
  }

  v28 = a3[1];
  v125 = &v119 - v24;
  v126 = v27;
  v136 = v26;
  v133 = v25;
  v124 = a6;
  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  v123 = v17;
  while (1)
  {
    if (v29 + 1 >= v28)
    {
      v43 = v29 + 1;
    }

    else
    {
      v128 = v28;
      v31 = *v141;
      v32 = *(v140 + 72);
      v33 = v29;
      v34 = *v141 + v32 * (v29 + 1);
      v35 = v125;
      sub_10003CA5C(v34, v125, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v139 = v31;
      v36 = v31 + v32 * v33;
      v37 = v126;
      sub_10003CA5C(v36, v126, type metadata accessor for CRLBoardLibraryViewModel.Item);
      LODWORD(v138) = v142(v35, v37);
      if (v7)
      {
        sub_10003E060(v37, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v118 = v35;
        goto LABEL_112;
      }

      sub_10003E060(v37, type metadata accessor for CRLBoardLibraryViewModel.Item);
      result = sub_10003E060(v35, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v122 = v128 - 1;
      v137 = v128 - 2;
      v38 = v139 + v32 * (v33 + 2);
      v127 = v33;
      v39 = v32;
      v139 = v32;
      while (v137 != v33)
      {
        sub_10003CA5C(v38, v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v40 = v21;
        v41 = v136;
        sub_10003CA5C(v34, v136, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v42 = v142(v40, v41);
        sub_10003E060(v41, type metadata accessor for CRLBoardLibraryViewModel.Item);
        result = sub_10003E060(v40, type metadata accessor for CRLBoardLibraryViewModel.Item);
        ++v33;
        v39 = v139;
        v38 += v139;
        v34 += v139;
        v21 = v40;
        if ((v138 ^ v42))
        {
          v43 = v33 + 1;
          goto LABEL_12;
        }
      }

      v33 = v122;
      v43 = v128;
LABEL_12:
      v29 = v127;
      if ((v138 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v43 < v127)
      {
        goto LABEL_136;
      }

      if (v127 <= v33)
      {
        v44 = v43;
        v45 = v39 * (v43 - 1);
        v46 = v44 * v39;
        v128 = v44;
        v129 = v21;
        v47 = v44;
        v48 = v127;
        v49 = v127 * v39;
        do
        {
          if (v48 != --v47)
          {
            v50 = *v141;
            if (!*v141)
            {
              goto LABEL_140;
            }

            sub_10003DF00(v50 + v49, v132, type metadata accessor for CRLBoardLibraryViewModel.Item);
            if (v49 < v45 || v50 + v49 >= (v50 + v46))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_10003DF00(v132, v50 + v45, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v21 = v129;
            v39 = v139;
          }

          ++v48;
          v45 -= v39;
          v46 -= v39;
          v49 += v39;
        }

        while (v48 < v47);
        v17 = v123;
        v29 = v127;
        v43 = v128;
      }

      else
      {
LABEL_15:
        v17 = v123;
      }
    }

    v51 = v141[1];
    if (v43 >= v51)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v43, v29))
    {
      goto LABEL_132;
    }

    if (v43 - v29 >= v124)
    {
LABEL_36:
      v53 = v43;
      if (v43 < v29)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v29, v124))
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v29 + v124 >= v51)
    {
      v52 = v141[1];
    }

    else
    {
      v52 = v29 + v124;
    }

    if (v52 < v29)
    {
      goto LABEL_135;
    }

    if (v43 == v52)
    {
      goto LABEL_36;
    }

    v129 = v21;
    v101 = *v141;
    v102 = *(v140 + 72);
    v103 = *v141 + v102 * (v43 - 1);
    v138 = -v102;
    v139 = v101;
    v127 = v29;
    v104 = v29 - v43;
    v120 = v102;
    v105 = v101 + v43 * v102;
    v137 = v52;
    v131 = v30;
    do
    {
      v121 = v105;
      v122 = v104;
      v128 = v103;
      while (1)
      {
        sub_10003CA5C(v105, v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v106 = v17;
        v107 = v133;
        sub_10003CA5C(v103, v133, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v108 = v142(v106, v107);
        if (v7)
        {
          sub_10003E060(v107, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v118 = v106;
LABEL_112:
          sub_10003E060(v118, type metadata accessor for CRLBoardLibraryViewModel.Item);
        }

        v109 = v108;
        v110 = v43;
        sub_10003E060(v107, type metadata accessor for CRLBoardLibraryViewModel.Item);
        result = sub_10003E060(v106, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v17 = v106;
        if ((v109 & 1) == 0)
        {
          break;
        }

        if (!v139)
        {
          goto LABEL_138;
        }

        v111 = v134;
        sub_10003DF00(v105, v134, type metadata accessor for CRLBoardLibraryViewModel.Item);
        swift_arrayInitWithTakeFrontToBack();
        sub_10003DF00(v111, v103, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v103 += v138;
        v105 += v138;
        v112 = __CFADD__(v104++, 1);
        v43 = v110;
        v7 = 0;
        v30 = v131;
        if (v112)
        {
          goto LABEL_95;
        }
      }

      v7 = 0;
      v30 = v131;
LABEL_95:
      ++v43;
      v103 = v128 + v120;
      v104 = v122 - 1;
      v105 = v121 + v120;
      v53 = v137;
    }

    while (v43 != v137);
    v21 = v129;
    v29 = v127;
    if (v137 < v127)
    {
      goto LABEL_131;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100B355CC(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v55 = *(v30 + 2);
    v54 = *(v30 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_100B355CC((v54 > 1), v55 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v56;
    v57 = &v30[16 * v55];
    *(v57 + 4) = v29;
    *(v57 + 5) = v53;
    v137 = v53;
    v58 = *v130;
    if (!*v130)
    {
      goto LABEL_141;
    }

    if (v55)
    {
      break;
    }

LABEL_3:
    v28 = v141[1];
    v29 = v137;
    if (v137 >= v28)
    {
      goto LABEL_99;
    }
  }

  while (2)
  {
    v59 = v56 - 1;
    if (v56 >= 4)
    {
      v64 = &v30[16 * v56 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_118;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_119;
      }

      v71 = &v30[16 * v56];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_121;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_124;
      }

      if (v75 >= v67)
      {
        v93 = &v30[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_130;
        }

        if (v62 < v96)
        {
          v59 = v56 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v63)
        {
          goto LABEL_120;
        }

        v76 = &v30[16 * v56];
        v78 = *v76;
        v77 = *(v76 + 1);
        v79 = __OFSUB__(v77, v78);
        v80 = v77 - v78;
        v81 = v79;
        if (v79)
        {
          goto LABEL_123;
        }

        v82 = &v30[16 * v59 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_126;
        }

        if (__OFADD__(v80, v85))
        {
          goto LABEL_127;
        }

        if (v80 + v85 < v62)
        {
          goto LABEL_70;
        }

        if (v62 < v85)
        {
          v59 = v56 - 2;
        }
      }
    }

    else
    {
      if (v56 == 3)
      {
        v60 = *(v30 + 4);
        v61 = *(v30 + 5);
        v70 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        v63 = v70;
        goto LABEL_56;
      }

      v86 = &v30[16 * v56];
      v88 = *v86;
      v87 = *(v86 + 1);
      v70 = __OFSUB__(v87, v88);
      v80 = v87 - v88;
      v81 = v70;
LABEL_70:
      if (v81)
      {
        goto LABEL_122;
      }

      v89 = &v30[16 * v59];
      v91 = *(v89 + 4);
      v90 = *(v89 + 5);
      v70 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v70)
      {
        goto LABEL_125;
      }

      if (v92 < v80)
      {
        goto LABEL_3;
      }
    }

    v97 = v59 - 1;
    if (v59 - 1 < v56)
    {
      if (!*v141)
      {
        goto LABEL_137;
      }

      v98 = *&v30[16 * v97 + 32];
      v99 = *&v30[16 * v59 + 40];
      sub_10082F950(*v141 + *(v140 + 72) * v98, *v141 + *(v140 + 72) * *&v30[16 * v59 + 32], *v141 + *(v140 + 72) * v99, v58, v142, v143);
      if (v7)
      {
      }

      if (v99 < v98)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_10113DE48(v30);
      }

      if (v97 >= *(v30 + 2))
      {
        goto LABEL_117;
      }

      v100 = &v30[16 * v97];
      *(v100 + 4) = v98;
      *(v100 + 5) = v99;
      v144 = v30;
      result = sub_10113DDBC(v59);
      v30 = v144;
      v56 = *(v144 + 2);
      if (v56 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  __break(1u);
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
LABEL_121:
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
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  result = sub_10113DE48(v30);
  v30 = result;
LABEL_101:
  v144 = v30;
  v113 = *(v30 + 2);
  if (v113 < 2)
  {
  }

  v114 = v142;
  while (*v141)
  {
    v115 = *&v30[16 * v113];
    v116 = *&v30[16 * v113 + 24];
    sub_10082F950(*v141 + *(v140 + 72) * v115, *v141 + *(v140 + 72) * *&v30[16 * v113 + 16], *v141 + *(v140 + 72) * v116, v21, v114, v143);
    if (v7)
    {
    }

    if (v116 < v115)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_10113DE48(v30);
    }

    if (v113 - 2 >= *(v30 + 2))
    {
      goto LABEL_129;
    }

    v117 = &v30[16 * v113];
    *v117 = v115;
    *(v117 + 1) = v116;
    v144 = v30;
    result = sub_10113DDBC(v113 - 1);
    v30 = v144;
    v113 = *(v144 + 2);
    if (v113 <= 1)
    {
    }
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

void sub_10082EE90(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v51);
  v50 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v43 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_63;
  }

  v14 = (a2 - a1) / v12;
  v58 = a1;
  v57 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a2;
    v26 = a4 + v16;
    if (v16 >= 1)
    {
      v27 = -v12;
      v28 = a4 + v16;
      v45 = -v12;
      v46 = a1;
      while (2)
      {
        while (1)
        {
          v43 = v26;
          v29 = v48;
          v47 = v48;
          v48 += v27;
          while (1)
          {
            if (v29 <= a1)
            {
              v58 = v29;
              v56 = v43;
              goto LABEL_60;
            }

            v31 = a3;
            v44 = v26;
            v32 = a4;
            v33 = a3 + v27;
            v34 = v28 + v27;
            v35 = v49;
            sub_10003CA5C(v34, v49, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            v36 = v50;
            sub_10003CA5C(v48, v50, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            v37 = *(v51 + 24);
            v38 = *(v35 + v37 + 8);
            v54 = *(v35 + v37);
            v55 = v38;
            v39 = (v36 + v37);
            v41 = *v39;
            v40 = v39[1];
            v52 = v41;
            v53 = v40;
            sub_100017CD8();
            v42 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
            sub_10003E060(v36, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            sub_10003E060(v35, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            if (v42 == -1)
            {
              break;
            }

            v26 = v34;
            a3 = v33;
            a4 = v32;
            if (v31 < v28 || v33 >= v28)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v46;
            }

            else
            {
              a1 = v46;
              if (v31 != v28)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v28 = v34;
            v30 = v34 > a4;
            v27 = v45;
            v29 = v47;
            if (!v30)
            {
              v48 = v47;
              goto LABEL_59;
            }
          }

          a3 = v33;
          a4 = v32;
          if (v31 < v47 || v33 >= v47)
          {
            break;
          }

          v27 = v45;
          a1 = v46;
          v26 = v44;
          if (v31 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v28 <= a4)
          {
            goto LABEL_59;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v27 = v45;
        a1 = v46;
        v26 = v44;
        if (v28 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v58 = v48;
    v56 = v26;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v15;
    v56 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      v18 = v50;
      do
      {
        v19 = v49;
        sub_10003CA5C(a2, v49, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_10003CA5C(a4, v18, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v20 = *(v51 + 24);
        v21 = *(v19 + v20 + 8);
        v54 = *(v19 + v20);
        v55 = v21;
        v22 = (v18 + v20);
        v24 = *v22;
        v23 = v22[1];
        v52 = v24;
        v53 = v23;
        sub_100017CD8();
        v25 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
        sub_10003E060(v18, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_10003E060(v19, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        if (v25 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v12;
          }

          else
          {
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v12;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v57 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v58 = a1;
      }

      while (a4 < v48 && a2 < a3);
    }
  }

LABEL_60:
  sub_10063F794(&v58, &v57, &v56);
}

uint64_t sub_10082F420(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v8 = __chkstk_darwin(v46);
  v45 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v44 = &v36 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v49 = a1;
  v48 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v40 = a1;
      v41 = a4;
      v39 = -v13;
      do
      {
        v37 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v42 = v26;
        v43 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v49 = v26;
            v47 = v37;
            goto LABEL_59;
          }

          v38 = v23;
          v29 = v46;
          v30 = a3 + v24;
          v31 = v25 + v24;
          v32 = v44;
          sub_10003CA5C(v31, v44, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v33 = v45;
          sub_10003CA5C(v27, v45, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v34 = sub_1009D1B18(*(v32 + *(v29 + 28)), *(v33 + *(v29 + 28)));
          sub_10003E060(v33, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          sub_10003E060(v32, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          if (v34)
          {
            break;
          }

          v23 = v31;
          if (a3 < v25 || v30 >= v25)
          {
            a3 = v30;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v40;
          }

          else
          {
            v35 = a3 == v25;
            a3 = v30;
            a1 = v40;
            if (!v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v26 = v42;
          v28 = v31 > v41;
          v27 = v43;
          v24 = v39;
          if (!v28)
          {
            a2 = v42;
            goto LABEL_58;
          }
        }

        if (a3 < v42 || v30 >= v42)
        {
          a3 = v30;
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v39;
          a1 = v40;
          v23 = v38;
        }

        else
        {
          v35 = a3 == v42;
          a3 = v30;
          a2 = v43;
          v24 = v39;
          a1 = v40;
          v23 = v38;
          if (!v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v41);
    }

LABEL_58:
    v49 = a2;
    v47 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v16;
    v47 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v44;
        sub_10003CA5C(a2, v44, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v21 = v45;
        sub_10003CA5C(a4, v45, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v22 = sub_1009D1B18(*(v20 + *(v46 + 28)), *(v21 + *(v46 + 28)));
        sub_10003E060(v21, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_10003E060(v20, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v49 = a1;
      }

      while (a4 < v43 && a2 < a3);
    }
  }

LABEL_59:
  sub_10063F794(&v49, &v48, &v47);
  return 1;
}

unint64_t sub_10082F950(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v54 = a6;
  v55 = a5;
  v56 = a3;
  v53 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v11 = __chkstk_darwin(v53);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v45 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v45 - v18;
  result = __chkstk_darwin(v17);
  v22 = &v45 - v21;
  v52 = *(v23 + 72);
  if (!v52)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v52 == -1)
  {
    goto LABEL_66;
  }

  v24 = v56 - a2;
  if (v56 - a2 != 0x8000000000000000 || v52 != -1)
  {
    v25 = (a2 - a1) / v52;
    v59 = a1;
    v58 = a4;
    v51 = a1;
    if (v25 < v24 / v52)
    {
      v26 = v25 * v52;
      if (a4 < result || result + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == result)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = v51;
LABEL_17:
      v51 = a4 + v26;
      v57 = a4 + v26;
      if (v26 >= 1 && a2 < v56)
      {
        while (1)
        {
          v29 = result;
          sub_10003CA5C(a2, v22, type metadata accessor for CRLBoardLibraryViewModel.Item);
          sub_10003CA5C(a4, v19, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v30 = v55(v22, v19);
          if (v7)
          {
            break;
          }

          v31 = v30;
          v32 = a4;
          sub_10003E060(v19, type metadata accessor for CRLBoardLibraryViewModel.Item);
          sub_10003E060(v22, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (v31)
          {
            v33 = v52;
            v34 = v29;
            if (v29 < a2 || v29 >= a2 + v52)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              a2 += v33;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }

              a2 += v33;
            }
          }

          else
          {
            v35 = a4;
            v33 = v52;
            a4 += v52;
            v34 = v29;
            if (v29 < v32 || v29 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }
            }

            v58 = a4;
          }

          result = v34 + v33;
          v59 = result;
          if (a4 >= v51 || a2 >= v56)
          {
            goto LABEL_64;
          }
        }

        sub_10003E060(v19, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10003E060(v22, type metadata accessor for CRLBoardLibraryViewModel.Item);
      }

LABEL_64:
      sub_10063F7DC(&v59, &v58, &v57);
      return 1;
    }

    v27 = v24 / v52 * v52;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v36 = a4 + v27;
        if (v27 >= 1)
        {
          v37 = -v52;
          v38 = v36;
          v47 = v16;
          v48 = v13;
          do
          {
            v45 = v36;
            v39 = a2;
            v49 = a2;
            v50 = a2 + v37;
            while (1)
            {
              v40 = v56;
              if (v39 <= result)
              {
                v59 = v39;
                v57 = v45;
                goto LABEL_64;
              }

              v46 = v36;
              v52 = v38;
              v41 = v38 + v37;
              sub_10003CA5C(v38 + v37, v16, type metadata accessor for CRLBoardLibraryViewModel.Item);
              sub_10003CA5C(v50, v13, type metadata accessor for CRLBoardLibraryViewModel.Item);
              v42 = v55(v16, v13);
              if (v7)
              {
                sub_10003E060(v13, type metadata accessor for CRLBoardLibraryViewModel.Item);
                sub_10003E060(v16, type metadata accessor for CRLBoardLibraryViewModel.Item);
                v59 = v49;
                v57 = v46;
                goto LABEL_64;
              }

              v43 = v42;
              v56 = v40 + v37;
              sub_10003E060(v13, type metadata accessor for CRLBoardLibraryViewModel.Item);
              sub_10003E060(v16, type metadata accessor for CRLBoardLibraryViewModel.Item);
              if (v43)
              {
                break;
              }

              v36 = v41;
              if (v40 < v52 || v56 >= v52)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v40 != v52)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v38 = v41;
              result = v51;
              v16 = v47;
              v13 = v48;
              v39 = v49;
              if (v41 <= a4)
              {
                a2 = v49;
                goto LABEL_63;
              }
            }

            if (v40 < v49 || v56 >= v49)
            {
              a2 = v50;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v36 = v46;
            }

            else
            {
              v44 = v40 == v49;
              a2 = v50;
              v7 = 0;
              v36 = v46;
              if (!v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = v51;
            v38 = v52;
            v16 = v47;
            v13 = v48;
          }

          while (v52 > a4);
        }

LABEL_63:
        v59 = a2;
        v57 = v36;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v51;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_10082FF98(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s13CacheSnapshotV20TitleValidationErrorOMa(0);
  __chkstk_darwin(v5);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = (&v32 - v9);
  __chkstk_darwin(v11);
  v13 = (&v32 - v12);
  __chkstk_darwin(v14);
  v16 = (&v32 - v15);
  __chkstk_darwin(v17);
  v19 = &v32 - v18;
  v20 = sub_1005B981C(&qword_101A03B70);
  __chkstk_darwin(v20 - 8);
  v22 = &v32 - v21;
  v24 = (&v32 + *(v23 + 56) - v21);
  sub_10003CA5C(v32, &v32 - v21, _s13CacheSnapshotV20TitleValidationErrorOMa);
  sub_10003CA5C(v33, v24, _s13CacheSnapshotV20TitleValidationErrorOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_10003CA5C(v22, v19, _s13CacheSnapshotV20TitleValidationErrorOMa);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_10003DF00(v24, v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v30 = sub_100F888B0(v19, v4);
        sub_10003E060(v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10003E060(v19, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10003E060(v22, _s13CacheSnapshotV20TitleValidationErrorOMa);
        return v30 & 1;
      }

      sub_10003E060(v19, type metadata accessor for CRLBoardLibraryViewModel.Item);
      goto LABEL_20;
    }

    sub_10003CA5C(v22, v16, _s13CacheSnapshotV20TitleValidationErrorOMa);
    v27 = *v16;
    v26 = v16[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      goto LABEL_10;
    }

LABEL_19:

LABEL_20:
    sub_10000CAAC(v22, &qword_101A03B70);
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10003CA5C(v22, v13, _s13CacheSnapshotV20TitleValidationErrorOMa);
    v27 = *v13;
    v26 = v13[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_10003CA5C(v22, v7, _s13CacheSnapshotV20TitleValidationErrorOMa);
    v27 = *v7;
    v26 = v7[1];
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  sub_10003CA5C(v22, v10, _s13CacheSnapshotV20TitleValidationErrorOMa);
  v27 = *v10;
  v26 = v10[1];
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_19;
  }

LABEL_10:
  if (v27 == *v24 && v26 == v24[1])
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      sub_10003E060(v22, _s13CacheSnapshotV20TitleValidationErrorOMa);
LABEL_21:
      v30 = 0;
      return v30 & 1;
    }
  }

  sub_10003E060(v22, _s13CacheSnapshotV20TitleValidationErrorOMa);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_10083040C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = _s13CacheSnapshotV11LookupErrorOMa(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v16 = sub_1005B981C(&qword_101A03B68);
  __chkstk_darwin(v16 - 8);
  v18 = &v24 - v17;
  v20 = *(v19 + 56);
  sub_10003CA5C(a1, &v24 - v17, _s13CacheSnapshotV11LookupErrorOMa);
  sub_10003CA5C(a2, &v18[v20], _s13CacheSnapshotV11LookupErrorOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10003CA5C(v18, v15, _s13CacheSnapshotV11LookupErrorOMa);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10003DF00(&v18[v20], v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v21 = sub_100F91CB8(v15, v9);
      sub_10003E060(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v22 = v15;
      goto LABEL_6;
    }

LABEL_8:
    sub_10003E060(v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000CAAC(v18, &qword_101A03B68);
    v21 = 0;
    return v21 & 1;
  }

  sub_10003CA5C(v18, v12, _s13CacheSnapshotV11LookupErrorOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v15 = v12;
    goto LABEL_8;
  }

  sub_10003DF00(&v18[v20], v6, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v21 = sub_100F91CB8(v12, v6);
  sub_10003E060(v6, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v22 = v12;
LABEL_6:
  sub_10003E060(v22, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10003E060(v18, _s13CacheSnapshotV11LookupErrorOMa);
  return v21 & 1;
}

uint64_t sub_10083073C(uint64_t a1, uint64_t a2, void *a3)
{
  v79 = a1;
  v80 = a2;
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  *&v81 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v71 - v8;
  v10 = sub_1005B981C(&qword_101A03A00);
  __chkstk_darwin(v10 - 8);
  v77 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v76 = &v71 - v13;
  __chkstk_darwin(v14);
  v16 = &v71 - v15;
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  __chkstk_darwin(v20);
  v78 = &v71 - v21;
  __chkstk_darwin(v22);
  v24 = &v71 - v23;
  v82[0] = a3;

  sub_1008261E8(v82, sub_10082D060, sub_10082CDFC);
  v25 = v82[0];
  v82[0] = a3;

  sub_1008261E8(v82, sub_10082D9BC, sub_10082CB6C);
  v26 = v82[0];
  if ((sub_100673E18(v25, v82[0]) & 1) != 0 && v26[2])
  {
    v72 = v16;
    v73 = v4;
    v75 = v24;

    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v27 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v71 = xmmword_10146C6B0;
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    v29 = sub_1000053B0();
    *(inited + 64) = v29;
    v31 = v79;
    v30 = v80;
    *(inited + 32) = v79;
    *(inited + 40) = v30;

    v32 = static os_log_type_t.default.getter();
    v74 = v27;
    sub_100005404(v27, &_mh_execute_header, v32, "Sort order is already alphabetical, trying to maintain that by calculating a new position for folder %@.", 106, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v33 = v75;
    sub_100826E70(v75, v78, v26);

    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_10146C4D0;
    *(v34 + 32) = v31;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = v29;
    v35 = v29;
    *(v34 + 40) = v30;
    sub_10000BE14(v33, v19, &qword_101A03A00);
    v36 = *(v81 + 48);
    v37 = v73;
    *&v81 = v81 + 48;
    if (v36(v19, 1, v73) == 1)
    {

      sub_10000CAAC(v19, &qword_101A03A00);
      v38 = 0xE300000000000000;
      v39 = 7104878;
    }

    else
    {
      v54 = &v19[*(v37 + 24)];
      v39 = *v54;
      v38 = v54[1];

      sub_10003E060(v19, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    }

    v55 = v72;
    *(v34 + 96) = &type metadata for String;
    *(v34 + 104) = v35;
    *(v34 + 72) = v39;
    *(v34 + 80) = v38;
    v56 = v78;
    sub_10000BE14(v78, v55, &qword_101A03A00);
    if (v36(v55, 1, v37) == 1)
    {
      sub_10000CAAC(v55, &qword_101A03A00);
      v57 = 0xE300000000000000;
      v58 = 7104878;
    }

    else
    {
      v59 = (v55 + *(v37 + 24));
      v58 = *v59;
      v57 = v59[1];

      sub_10003E060(v55, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    }

    *(v34 + 136) = &type metadata for String;
    *(v34 + 144) = v35;
    *(v34 + 112) = v58;
    *(v34 + 120) = v57;
    v60 = static os_log_type_t.default.getter();
    sub_100005404(v74, &_mh_execute_header, v60, "Inserting folder %@ after %@ and before %@", 44, 2, v34);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v61 = v76;
    sub_10000BE14(v75, v76, &qword_101A03A00);
    if (v36(v61, 1, v37) == 1)
    {
      sub_10000CAAC(v61, &qword_101A03A00);
      v62 = 0;
    }

    else
    {
      v62 = *(v61 + *(v37 + 28));

      sub_10003E060(v61, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    }

    v63 = v77;
    sub_10000BE14(v56, v77, &qword_101A03A00);
    if (v36(v63, 1, v37) == 1)
    {
      sub_10000CAAC(v63, &qword_101A03A00);
      v64 = v75;
      if (!v62)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }

    v65 = *(v63 + *(v37 + 28));

    sub_10003E060(v63, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    if (v62)
    {
      v64 = v75;
      if (!v65)
      {
LABEL_27:
        v66 = sub_1009D1F04(v62);
        goto LABEL_30;
      }

      v66 = sub_1009D2244(v62, v65);
    }

    else
    {
      v64 = v75;
      if (!v65)
      {
LABEL_31:
        sub_1005B981C(&qword_1019F49A0);
        v67 = *(type metadata accessor for CRLDisjointPosition.Element() - 8);
        v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v46 = swift_allocObject();
        *(v46 + 16) = v71;
        v69 = sub_10000C3A0(0xC7uLL) - 99;
        UUID.init()();
        *(v46 + v68) = v69;
        goto LABEL_32;
      }

      v66 = sub_1009D2B3C(v65);
    }

LABEL_30:
    v46 = v66;
LABEL_32:
    sub_10000CAAC(v56, &qword_101A03A00);
    sub_10000CAAC(v64, &qword_101A03A00);
    return v46;
  }

  v40 = v25[2];
  if (v40)
  {
    sub_10003CA5C(v25 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * (v40 - 1), v6, type metadata accessor for CRLBoardLibraryViewModel.Folder);

    sub_10003DF00(v6, v9, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v41 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_10146C6B0;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = sub_1000053B0();
    v43 = v80;
    *(v42 + 32) = v79;
    *(v42 + 40) = v43;

    v44 = static os_log_type_t.default.getter();
    sub_100005404(v41, &_mh_execute_header, v44, "Sort order is not alphabetical, just append the new folder %@ to the end.", 75, 2, v42);
    swift_setDeallocating();
    sub_100005070(v42 + 32);

    v46 = sub_1009D1F04(v45);
    sub_10003E060(v9, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  }

  else
  {

    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v47 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    v48 = swift_initStackObject();
    v81 = xmmword_10146C6B0;
    *(v48 + 16) = xmmword_10146C6B0;
    *(v48 + 56) = &type metadata for String;
    *(v48 + 64) = sub_1000053B0();
    v49 = v80;
    *(v48 + 32) = v79;
    *(v48 + 40) = v49;

    v50 = static os_log_type_t.default.getter();
    sub_100005404(v47, &_mh_execute_header, v50, "No existing sibling folders found, just insert the folder with a random position.", 81, 2, v48);
    swift_setDeallocating();
    sub_100005070(v48 + 32);
    sub_1005B981C(&qword_1019F49A0);
    v51 = *(type metadata accessor for CRLDisjointPosition.Element() - 8);
    v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = v81;
    v53 = sub_10000C3A0(0xC7uLL) - 99;
    UUID.init()();
    *(v46 + v52) = v53;
  }

  return v46;
}

uint64_t sub_10083122C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a2;
  v58 = a4;
  v56 = a1;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v5);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v63 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v62 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v61 = v55 - v11;
  __chkstk_darwin(v12);
  *&v64 = v55 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v18 - 8);
  v20 = v55 - v19;
  v21 = _s4NodeVMa(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v59 = v55 - v26;
  v55[1] = a3;
  sub_100F87E04(v17);
  v27 = v58;
  if (*(v58 + 16) && (v28 = sub_10003E994(v17), (v29 & 1) != 0))
  {
    sub_10003CA5C(*(v27 + 56) + *(v22 + 72) * v28, v20, _s4NodeVMa);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v15 + 8))(v17, v14);
  (*(v22 + 56))(v20, v30, 1, v21);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000CAAC(v20, &unk_1019FB770);
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v31 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v64 = xmmword_10146C6B0;
    *(inited + 16) = xmmword_10146C6B0;
    v33 = sub_100F8903C();
    v35 = v34;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v33;
    *(inited + 40) = v35;
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v31, &_mh_execute_header, v36, "Could not find node for parent item %@. Returning a generic disjoint position.", 78, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    sub_1005B981C(&qword_1019F49A0);
    v37 = *(type metadata accessor for CRLDisjointPosition.Element() - 8);
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v64;
    v40 = sub_10000C3A0(0xC7uLL) - 99;
    UUID.init()();
    *(v39 + v38) = v40;
    return v39;
  }

  v41 = v59;
  sub_10003DF00(v20, v59, _s4NodeVMa);
  v42 = *(v41 + *(v21 + 20));
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = v42 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v45 = *(v22 + 72);
    v46 = _swiftEmptyArrayStorage;
    v60 = v5;
    while (1)
    {
      sub_10003CA5C(v44, v24, _s4NodeVMa);
      sub_10003CA5C(v24, v7, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10003E060(v24, _s4NodeVMa);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v48 = sub_1005B981C(&qword_1019F3480);
        if (!(*(*(v48 - 8) + 48))(v7, 5, v48))
        {
          v49 = v62;
          sub_10003DF00(v7, v62, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v50 = v49;
          v51 = v61;
          sub_10003DF00(v50, v61, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          sub_10003DF00(v51, v64, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_100B36D24(0, v46[2] + 1, 1, v46);
          }

          v53 = v46[2];
          v52 = v46[3];
          if (v53 >= v52 >> 1)
          {
            v46 = sub_100B36D24(v52 > 1, v53 + 1, 1, v46);
          }

          v46[2] = v53 + 1;
          sub_10003DF00(v64, v46 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v53, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          goto LABEL_13;
        }

        v47 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      }

      else
      {
        v47 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      }

      sub_10003E060(v7, v47);
LABEL_13:
      v44 += v45;
      if (!--v43)
      {
        goto LABEL_23;
      }
    }
  }

  v46 = _swiftEmptyArrayStorage;
LABEL_23:
  v39 = sub_10083073C(v56, v57, v46);

  sub_10003E060(v59, _s4NodeVMa);
  return v39;
}

uint64_t sub_1008319D4(uint64_t a1, uint64_t a2)
{
  v4 = _s4NodeVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100831A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v10;

  swift_bridgeObjectRetain_n();
  v25 = a1;
  v26 = a2;
  v24 = &v25;
  LOBYTE(v9) = sub_100C08644(sub_1008335B4, v23, a3);

  if (v9)
  {
    v11 = a1;
    v12 = 2;
    v21 = xmmword_10146BDE0;
    while (1)
    {

      sub_1005B981C(&qword_1019F54E0);
      v13 = swift_allocObject();
      *(v13 + 16) = v21;
      *(v13 + 56) = &type metadata for String;
      v14 = sub_1000053B0();
      *(v13 + 32) = v11;
      *(v13 + 40) = a2;
      *(v13 + 96) = &type metadata for Int;
      *(v13 + 104) = &protocol witness table for Int;
      *(v13 + 64) = v14;
      *(v13 + 72) = v12;

      a1 = static String.localizedStringWithFormat(_:_:)();
      v16 = v15;

      if (__OFADD__(v12, 1))
      {
        break;
      }

      v25 = a1;
      v26 = v16;
      __chkstk_darwin(v18);
      v20[2] = &v25;
      v19 = sub_100C08644(sub_1008335B4, v20, a3);

      ++v12;
      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    return a1;
  }

  return result;
}

uint64_t sub_100831CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  v14 = _s4NodeVMa(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a3;
  sub_100F87E04(v10);
  if (*(a4 + 16) && (v18 = sub_10003E994(v10), (v19 & 1) != 0))
  {
    sub_10003CA5C(*(a4 + 56) + *(v15 + 72) * v18, v13, _s4NodeVMa);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v8 + 8))(v10, v7);
  (*(v15 + 56))(v13, v20, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000CAAC(v13, &unk_1019FB770);
    v21 = v31;
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 64) = v24;
    *(inited + 32) = v21;
    *(inited + 40) = a2;

    v25 = sub_100F8903C();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v24;
    *(inited + 72) = v25;
    *(inited + 80) = v26;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v27, "Attempted to generate unique title from %@ but could not find parent view model item %@ in snapshot", 101, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
  }

  else
  {
    sub_10003DF00(v13, v17, _s4NodeVMa);
    v28 = sub_100A0F8BC(_swiftEmptySetSingleton);
    v21 = sub_100831A74(v31, a2, v28);

    sub_10003E060(v17, _s4NodeVMa);
  }

  return v21;
}

unint64_t sub_1008320CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v57 = a1;
  v58 = a2;
  v62 = type metadata accessor for CharacterSet();
  v56 = *(v62 - 8);
  __chkstk_darwin(v62);
  v7 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v12 - 8);
  v14 = &v54[-v13];
  v15 = _s4NodeVMa(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v59 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = a3;
  sub_100F87E04(v11);
  if (*(a4 + 16) && (v18 = sub_10003E994(v11), (v19 & 1) != 0))
  {
    sub_10003CA5C(*(a4 + 56) + *(v16 + 72) * v18, v14, _s4NodeVMa);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v9 + 8))(v11, v8);
  (*(v16 + 56))(v14, v20, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000CAAC(v14, &unk_1019FB770);
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 64) = v23;
    v24 = v58;
    *(inited + 32) = v57;
    *(inited + 40) = v24;

    v25 = v55;
    v26 = sub_100F8903C();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v23;
    *(inited + 72) = v26;
    *(inited + 80) = v27;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v28, "Attempted to validate title %@ but could not find parent view model item %@ in snapshot", 89, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    _s13CacheSnapshotV11LookupErrorOMa(0);
    sub_10083356C(&qword_101A03A08, _s13CacheSnapshotV11LookupErrorOMa);
    swift_allocError();
    sub_10003CA5C(v25, v29, type metadata accessor for CRLBoardLibraryViewModel.Item);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    sub_10003DF00(v14, v59, _s4NodeVMa);
    v30 = String._bridgeToObjectiveC()();
    v31 = [v30 crl_stringByFixingBrokenSurrogatePairs];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v60 = v32;
    v61 = v34;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_100017CD8();
    a4 = StringProtocol.trimmingCharacters(in:)();
    v36 = v35;
    v37 = *(v56 + 8);
    v37(v7, v62);

    while (1)
    {

      v60 = a4;
      v61 = v36;
      static CharacterSet.newlines.getter();
      v38 = StringProtocol.rangeOfCharacter(from:options:range:)();
      v40 = v39;
      v42 = v41;
      v37(v7, v62);

      if (v42)
      {
        break;
      }

      a4 = sub_1007B0BC0(v38, v40, 32, 0xE100000000000000, a4, v36);
      v44 = v43;

      v36 = v44;
    }

    v45 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v45 = a4 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      v46 = sub_100A0F8BC(_swiftEmptySetSingleton);
      v47 = v46 + 5;
      v48 = v46[2] + 1;
      while (--v48)
      {
        if (*(v47 - 1) != a4 || *v47 != v36)
        {
          v47 += 2;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        _s13CacheSnapshotV20TitleValidationErrorOMa(0);
        sub_10083356C(&qword_101A03A10, _s13CacheSnapshotV20TitleValidationErrorOMa);
        swift_allocError();
        *v50 = a4;
        v50[1] = v36;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        goto LABEL_24;
      }

      sub_10003E060(v59, _s4NodeVMa);
    }

    else
    {

      _s13CacheSnapshotV20TitleValidationErrorOMa(0);
      sub_10083356C(&qword_101A03A10, _s13CacheSnapshotV20TitleValidationErrorOMa);
      swift_allocError();
      v51 = v58;
      *v52 = v57;
      v52[1] = v51;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_24:
      sub_10003E060(v59, _s4NodeVMa);
    }
  }

  return a4;
}

uint64_t sub_100832858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a1;
  v89 = a2;
  v81 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v7 = __chkstk_darwin(v81);
  v78 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v80 = v77 - v10;
  __chkstk_darwin(v9);
  v82 = v77 - v11;
  v12 = _s13CacheSnapshotV20TitleValidationErrorOMa(0);
  __chkstk_darwin(v12);
  v79 = (v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = type metadata accessor for CharacterSet();
  v83 = *(v92 - 8);
  __chkstk_darwin(v92);
  v15 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v86 = *(v16 - 8);
  v87 = v16;
  __chkstk_darwin(v16);
  v18 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v19 - 8);
  v21 = v77 - v20;
  v22 = _s4NodeVMa(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v85 = v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a3;
  sub_100F87E04(v18);
  if (*(a4 + 16) && (sub_10003E994(v18), (v25 & 1) != 0))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v27 = *(v86 + 8);
    v27(v18, v87);
    if (Strong)
    {
      sub_10003CA5C(Strong + OBJC_IVAR____TtC8Freeform35CRLBoardLibraryViewModelWrappedNode_node, v21, _s4NodeVMa);

      v28 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v27 = *(v86 + 8);
    v27(v18, v87);
  }

  v28 = 1;
LABEL_7:
  (*(v23 + 56))(v21, v28, 1, v22);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_10000CAAC(v21, &unk_1019FB770);
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for String;
    v31 = sub_1000053B0();
    *(inited + 64) = v31;
    v32 = v89;
    *(inited + 32) = v88;
    *(inited + 40) = v32;

    v33 = v84;
    v34 = sub_100F8903C();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v31;
    *(inited + 72) = v34;
    *(inited + 80) = v35;
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v36, "Attempted to validate title %@ but could not find parent of view model item %@ in snapshot", 92, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    _s13CacheSnapshotV11LookupErrorOMa(0);
    sub_10083356C(&qword_101A03A08, _s13CacheSnapshotV11LookupErrorOMa);
    swift_allocError();
    sub_10003CA5C(v33, v37, type metadata accessor for CRLBoardLibraryViewModel.Item);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v33;
  }

  v77[0] = v27;
  v77[2] = v12;
  v77[1] = v4;
  sub_10003DF00(v21, v85, _s4NodeVMa);
  v38 = String._bridgeToObjectiveC()();
  v39 = [v38 crl_stringByFixingBrokenSurrogatePairs];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v90 = v40;
  v91 = v42;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100017CD8();
  v33 = StringProtocol.trimmingCharacters(in:)();
  v44 = v43;
  v45 = *(v83 + 8);
  v45(v15, v92);

  while (1)
  {

    v90 = v33;
    v91 = v44;
    static CharacterSet.newlines.getter();
    v46 = StringProtocol.rangeOfCharacter(from:options:range:)();
    v48 = v47;
    v50 = v49;
    v45(v15, v92);

    if (v50)
    {
      break;
    }

    v33 = sub_1007B0BC0(v46, v48, 32, 0xE100000000000000, v33, v44);
    v52 = v51;

    v44 = v52;
  }

  v53 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v53 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v53)
  {

    sub_10083356C(&qword_101A03A10, _s13CacheSnapshotV20TitleValidationErrorOMa);
    swift_allocError();
    v59 = v89;
    *v60 = v88;
    v60[1] = v59;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_34:
    v62 = _s4NodeVMa;
    v63 = v85;
    goto LABEL_35;
  }

  v54 = v84;
  v55 = v82;
  sub_10003CA5C(v84, v82, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v57 = v78;
    sub_10003CA5C(v55, v78, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v58 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v58 - 8) + 48))(v57, 5, v58))
    {

      sub_10003E060(v57, type metadata accessor for CRLBoardLibraryViewModel.Filter);
LABEL_23:
      sub_10083356C(&qword_101A03A10, _s13CacheSnapshotV20TitleValidationErrorOMa);
      swift_allocError();
      sub_10003CA5C(v54, v61, type metadata accessor for CRLBoardLibraryViewModel.Item);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_10003E060(v85, _s4NodeVMa);
      v62 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      v63 = v55;
LABEL_35:
      sub_10003E060(v63, v62);
      return v33;
    }

    sub_1005B981C(&qword_101A1DBB0);
    v69 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_10146C6B0;
    sub_100F87E04(v70 + v69);
    v71 = sub_1005BF678(v70);
    swift_setDeallocating();
    (v77[0])(v70 + v69, v87);
    swift_deallocClassInstance();
    v67 = sub_100A0F8BC(v71);

    v68 = v79;
    *v79 = v33;
    *(v68 + 8) = v44;
    swift_storeEnumTagMultiPayload();

    sub_10003E060(v78, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  }

  else
  {
    sub_10003CA5C(v55, v80, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_1005B981C(&qword_101A1DBB0);
    v64 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_10146C6B0;
    sub_100F87E04(v65 + v64);
    v66 = sub_1005BF678(v65);
    swift_setDeallocating();
    (v77[0])(v65 + v64, v87);
    swift_deallocClassInstance();
    v67 = sub_100A0EC6C(v66);

    v68 = v79;
    *v79 = v33;
    *(v68 + 8) = v44;
    swift_storeEnumTagMultiPayload();

    sub_10003E060(v80, _s5BoardVMa);
  }

  sub_10003E060(v55, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v72 = v67 + 5;
  v73 = v67[2] + 1;
  while (--v73)
  {
    if (*(v72 - 1) != v33 || *v72 != v44)
    {
      v72 += 2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    sub_10083356C(&qword_101A03A10, _s13CacheSnapshotV20TitleValidationErrorOMa);
    swift_allocError();
    sub_10003CA5C(v68, v75, _s13CacheSnapshotV20TitleValidationErrorOMa);
    swift_willThrow();
    sub_10003E060(v68, _s13CacheSnapshotV20TitleValidationErrorOMa);
    goto LABEL_34;
  }

  sub_10003E060(v68, _s13CacheSnapshotV20TitleValidationErrorOMa);
  sub_10003E060(v85, _s4NodeVMa);
  return v33;
}

uint64_t sub_10083356C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1008335D4()
{
  result = type metadata accessor for CRLBoardLibraryViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100833634()
{
  result = type metadata accessor for CRLBoardLibraryViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1008336F8(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1012E0400(a1, &off_1018A75D0);
  if (!v4)
  {
    v8 = OBJC_IVAR____TtC8Freeform24CRLCommandRecaptureScene_sceneID;
    v9 = *(v3 + OBJC_IVAR____TtC8Freeform24CRLCommandRecaptureScene_newSavedRect);
    v10 = *(v3 + OBJC_IVAR____TtC8Freeform24CRLCommandRecaptureScene_newSavedRect + 8);
    v11 = *(v3 + OBJC_IVAR____TtC8Freeform24CRLCommandRecaptureScene_newSavedRect + 16);
    v12 = *(v3 + OBJC_IVAR____TtC8Freeform24CRLCommandRecaptureScene_newSavedRect + 24);
    swift_beginAccess();
    type metadata accessor for CRLBoardCRDTData(0);

    v13.n128_u64[0] = v9;
    v14.n128_u64[0] = v10;
    v15.n128_u64[0] = v11;
    v16.n128_u64[0] = v12;
    v17 = sub_100727234(v3 + v8, v13, v14, v15, v16);
    swift_endAccess();

    if (v17)
    {
      return sub_1012CF6CC(a1, &off_1018A75D0, a3);
    }

    else
    {
      v18 = objc_opt_self();
      v19 = [v18 _atomicIncrementAssertCount];
      v43 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v43);
      StaticString.description.getter();
      v20 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v21 = String._bridgeToObjectiveC()();

      v22 = [v21 lastPathComponent];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v26 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v19;
      v28 = sub_1005CF000();
      *(inited + 96) = v28;
      v29 = sub_1005CF04C();
      *(inited + 104) = v29;
      *(inited + 72) = v20;
      *(inited + 136) = &type metadata for String;
      v30 = sub_1000053B0();
      *(inited + 112) = v23;
      *(inited + 120) = v25;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v30;
      *(inited + 152) = 25;
      v31 = v43;
      *(inited + 216) = v28;
      *(inited + 224) = v29;
      *(inited + 192) = v31;
      v32 = v20;
      v33 = v31;
      v34 = static os_log_type_t.error.getter();
      sub_100005404(v26, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

      v35 = static os_log_type_t.error.getter();
      sub_100005404(v26, &_mh_execute_header, v35, "Can't recapture saved rect on a scene that doesn't exist.", 57, 2, _swiftEmptyArrayStorage);

      sub_10063DF98(_swiftEmptyArrayStorage, "Can't recapture saved rect on a scene that doesn't exist.");
      type metadata accessor for __VaListBuilder();
      v36 = swift_allocObject();
      v36[2] = 8;
      v36[3] = 0;
      v36[4] = 0;
      v36[5] = 0;
      v37 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v38 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v39 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v40 = String._bridgeToObjectiveC()();

      [v18 handleFailureInFunction:v38 file:v39 lineNumber:25 isFatal:1 format:v40 args:v37];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v41, v42);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100833BBC()
{
  v1 = OBJC_IVAR____TtC8Freeform24CRLCommandRecaptureScene_sceneID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_100833C38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandRecaptureScene();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandRecaptureScene()
{
  result = qword_101A03BA0;
  if (!qword_101A03BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100833D44()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100833DE8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform24CRLCommandRecaptureScene_actionString);

  return v1;
}

NSString sub_100833E28()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6710 = result;
  return result;
}

NSString sub_100833E60()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6718 = result;
  return result;
}

uint64_t sub_100833EBC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();

  v8 = sub_1008342F4(v7);

  v9 = *(v2 + 56);
  if (*(v9 + 16))
  {

    v10 = sub_10000BE7C(a1, a2);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  if (qword_1019F2280 != -1)
  {
LABEL_31:
    swift_once();
  }

  v13 = static OS_os_log.suspendResumeCollaboration;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_33;
  }

  v15 = inited;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v8 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
LABEL_12:
    [v8 postNotificationName:qword_101AD6710 object:{v4, v27}];
    v17 = *(v4 + 40);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      *(v4 + 40) = v19;
      if (v19 != 1)
      {
LABEL_28:
        v24 = swift_initStackObject();
        *(v24 + 16) = xmmword_10146C6B0;
        *(v24 + 56) = v12;
        *(v24 + 64) = v3;
        *(v24 + 32) = a1;
        *(v24 + 40) = a2;

        v25 = static os_log_type_t.info.getter();
        sub_100005404(v13, &_mh_execute_header, v25, "Suspend collaboration (%@)", 26, 2, v24);

        swift_setDeallocating();
        sub_100005070(v24 + 32);
        goto LABEL_29;
      }

      v28 = v3;
      swift_beginAccess();
      v3 = *(v4 + 16);
      v30 = a1;
      v31 = a2;
      v29 = v13;
      v27 = v8;
      if (!(v3 >> 62))
      {
        v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:

        if (v20)
        {
          v8 = 0;
          v12 = (v3 & 0xFFFFFFFFFFFFFF8);
          do
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              a2 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
LABEL_26:
                __break(1u);
                break;
              }
            }

            else
            {
              if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_31;
              }

              v21 = *(v3 + 8 * v8 + 32);

              a2 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                goto LABEL_26;
              }
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            a1 = *(v21 + 24);

            if (Strong)
            {
              ObjectType = swift_getObjectType();
              (*(a1 + 8))(ObjectType, a1);
              swift_unknownObjectRelease();
            }

            ++v8;
          }

          while (a2 != v20);
        }

        a1 = v30;
        a2 = v31;
        v13 = v29;
        v12 = &type metadata for String;
        v8 = v27;
        v3 = v28;
        goto LABEL_28;
      }
    }

    v20 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_16;
  }

  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = v12 + 1;
  v12 = &type metadata for String;
  *(inited + 136) = &type metadata for String;
  v3 = sub_1000053B0();
  v15[18] = v3;
  v15[14] = a1;
  v15[15] = a2;

  v16 = static os_log_type_t.info.getter();
  sub_100005404(v13, &_mh_execute_header, v16, "Suspend collaboration, suspend count: %lu total, %lu for reason (%@)", 68, 2, v15);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  if (!v8)
  {
    v8 = [objc_opt_self() defaultCenter];
    if (qword_1019F1608 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_29:
  swift_beginAccess();
  sub_1008343C0(a1, a2);
  return swift_endAccess();
}

uint64_t sub_1008342F4(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v4)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = *(*(result + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v4)))));
      v11 = __OFADD__(v7, v10);
      v7 += v10;
      if (v11)
      {
        break;
      }

      v4 &= v4 - 1;
      v8 = v9;
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v5)
      {

        return v7;
      }

      v4 = *(v1 + 8 * v9);
      ++v8;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}