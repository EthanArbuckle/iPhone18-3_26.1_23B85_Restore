uint64_t sub_29D502A7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = qword_2A17A4620;
  swift_beginAccess();
  sub_29D5051F8(v1 + v4, &v9);
  if (v10)
  {
    return sub_29D497868(&v9, a1);
  }

  sub_29D4A0598(&v9, &unk_2A17A4DB0, &unk_2A17A4570);
  v6 = sub_29D5B21EC();
  v7 = sub_29D5B21DC();
  v8 = MEMORY[0x29EDC4178];
  a1[3] = v6;
  a1[4] = v8;
  *a1 = v7;
  sub_29D48F564(a1, &v9);
  swift_beginAccess();
  sub_29D4B9800(&v9, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_29D502B70()
{
  v0 = sub_29D5B371C();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  sub_29D504F04(0, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  v3 = MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v19 - v6;
  sub_29D5B2FAC();
  v8 = v21;
  if (v21)
  {
    v19[3] = v0;
    v19[4] = v1;
    v9 = sub_29D499EC0(v20, v21);
    v10 = *(v8 - 8);
    MEMORY[0x2A1C7C4A8](v9);
    v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    sub_29D4A0598(v20, &qword_2A1A19460, &qword_2A1A19470);
    v13 = sub_29D5B317C();
    v15 = v14;
    (*(v10 + 8))(v12, v8);
    if (v15 >> 60 != 15)
    {
      v16 = type metadata accessor for RecordKindFeedItemData();
      sub_29D5051B0(&qword_2A17A4638, type metadata accessor for RecordKindFeedItemData);
      sub_29D5B0BBC();
      (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
      sub_29D502880(v7);
      return sub_29D4A96BC(v13, v15);
    }
  }

  else
  {
    sub_29D4A0598(v20, &qword_2A1A19460, &qword_2A1A19470);
  }

  v17 = type metadata accessor for RecordKindFeedItemData();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  return sub_29D502880(v5);
}

uint64_t sub_29D503114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v54 = a2;
  v3 = sub_29D5B371C();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_29D5B1BCC();
  v49 = *(v53 - 8);
  MEMORY[0x2A1C7C4A8](v53);
  v48 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecordKindFeedItemData();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D504F04(0, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v46 - v11;
  v13 = sub_29D5B1D6C();
  v46 = *(v13 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v46 - v17;
  v19 = qword_2A17A4610;
  swift_beginAccess();
  v20 = v2 + v19;
  v21 = v6;
  sub_29D505000(v20, v12, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_29D50506C(v12, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
    v22 = v50;
    sub_29D5B36DC();
    v23 = sub_29D5B370C();
    v24 = sub_29D5B427C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_29D48C000, v23, v24, "Error tapping on RecordType FeedItem without a CategoryKind", v25, 2u);
      MEMORY[0x29ED5FB80](v25, -1, -1);
    }

    result = (*(v51 + 8))(v22, v52);
    v27 = v54;
    *(v54 + 32) = 0;
    *v27 = 0u;
    v27[1] = 0u;
  }

  else
  {
    v28 = v47;
    sub_29D5050C8(v12, v9, type metadata accessor for RecordKindFeedItemData);
    sub_29D50506C(v12, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
    v29 = v46;
    v30 = *(v46 + 16);
    v30(v16, v9, v13);
    sub_29D504F58(v9, type metadata accessor for RecordKindFeedItemData);
    (*(v29 + 32))(v18, v16, v13);
    v31 = v48;
    v30(v48, v18, v13);
    v32 = v49;
    (*(v49 + 104))(v31, *MEMORY[0x29EDC3F80], v53);
    v33 = sub_29D5B1AFC();
    if (!v33)
    {
      v33 = [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
    }

    v34 = v33;
    v35 = sub_29D5B1B9C();
    if (v35)
    {
      v36 = v35;
      v37 = [v34 imageWithTintColor:v35 renderingMode:1];

      v34 = v36;
    }

    else
    {
      v37 = v34;
    }

    (*(v32 + 8))(v31, v53);
    (*(v29 + 8))(v18, v13);
    v38 = (v28 + *(v21 + 24));
    v40 = *v38;
    v39 = v38[1];
    v41 = type metadata accessor for RecordKindFeedItemViewData();
    v42 = v54;
    *(v54 + 24) = v41;
    v42[4] = sub_29D5051B0(&qword_2A17A4650, type metadata accessor for RecordKindFeedItemViewData);
    v43 = sub_29D4A0410(v42);
    *v43 = v37;
    v43[1] = v40;
    v43[2] = v39;
    v44 = *MEMORY[0x29EDC2370];
    v45 = sub_29D5B2F9C();
    (*(*(v45 - 8) + 104))(v43, v44, v45);
  }

  return result;
}

uint64_t sub_29D503738(uint64_t a1)
{
  v65 = a1;
  v2 = sub_29D5B371C();
  v74 = *(v2 - 8);
  v75 = v2;
  v3 = MEMORY[0x2A1C7C4A8](v2);
  v70 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v77 = &v61 - v5;
  sub_29D504F04(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v72 = &v61 - v7;
  v69 = sub_29D5B1D6C();
  v68 = *(v69 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v69);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v67 = &v61 - v10;
  sub_29D504F04(0, &qword_2A17A4648, MEMORY[0x29EDC40C0]);
  v12 = MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v17 = &v61 - v16;
  MEMORY[0x2A1C7C4A8](v15);
  v76 = &v61 - v18;
  v19 = type metadata accessor for RecordKindFeedItemData();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v71 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D504F04(0, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  v23 = MEMORY[0x2A1C7C4A8](v22 - 8);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v27 = &v61 - v26;
  v28 = qword_2A17A4610;
  swift_beginAccess();
  v73 = v1;
  sub_29D505000(v1 + v28, v27, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  v29 = *(v20 + 48);
  if (v29(v27, 1, v19))
  {
    sub_29D50506C(v27, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
    sub_29D5B36DC();
    v30 = sub_29D5B370C();
    v31 = sub_29D5B427C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_29D48C000, v30, v31, "Error tapping on RecordType FeedItem without an identifier", v32, 2u);
      MEMORY[0x29ED5FB80](v32, -1, -1);
    }

    return (*(v74 + 8))(v77, v75);
  }

  else
  {
    v63 = v17;
    v77 = v14;
    v34 = v71;
    sub_29D5050C8(v27, v71, type metadata accessor for RecordKindFeedItemData);
    sub_29D50506C(v27, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
    v64 = *(v34 + *(v19 + 20));
    sub_29D504F58(v34, type metadata accessor for RecordKindFeedItemData);
    v35 = sub_29D5B1D9C();
    v36 = *(v35 - 8);
    v62 = *(v36 + 56);
    v61 = v36 + 56;
    v62(v76, 1, 1, v35);
    sub_29D505000(v73 + v28, v25, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
    if (v29(v25, 1, v19))
    {
      sub_29D50506C(v25, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
      v37 = v76;
    }

    else
    {
      sub_29D5050C8(v25, v34, type metadata accessor for RecordKindFeedItemData);
      sub_29D50506C(v25, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
      v38 = v68;
      v39 = v66;
      v40 = v69;
      (*(v68 + 16))(v66, v34, v69);
      sub_29D504F58(v34, type metadata accessor for RecordKindFeedItemData);
      v41 = v67;
      (*(v38 + 32))(v67, v39, v40);
      sub_29D5B20AC();
      v42 = v63;
      sub_29D5B209C();
      (*(v38 + 8))(v41, v40);
      v37 = v76;
      sub_29D50506C(v76, &qword_2A17A4648, MEMORY[0x29EDC40C0]);
      v62(v42, 0, 1, v35);
      sub_29D505130(v42, v37);
    }

    v43 = v72;
    sub_29D502A7C(v80);
    v72 = v80[4];
    sub_29D499EC0(v80, v80[3]);
    v44 = v77;
    sub_29D505000(v37, v77, &qword_2A17A4648, MEMORY[0x29EDC40C0]);
    v45 = sub_29D5B0EDC();
    (*(*(v45 - 8) + 56))(v43, 1, 1, v45);
    sub_29D5B1CBC();
    v46 = sub_29D5B1C8C();
    result = sub_29D5B2FAC();
    v47 = v79;
    if (v79)
    {
      v48 = sub_29D499EC0(v78, v79);
      v49 = *(v47 - 8);
      MEMORY[0x2A1C7C4A8](v48);
      v51 = &v61 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v49 + 16))(v51);
      v52 = sub_29D5B314C();
      (*(v49 + 8))(v51, v47);
      v53 = sub_29D5B1C9C();

      sub_29D48F668(v78);
      v54 = sub_29D5B250C();

      sub_29D50506C(v43, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
      sub_29D50506C(v44, &qword_2A17A4648, MEMORY[0x29EDC40C0]);
      sub_29D5050C8(v65, v78, sub_29D4A63E4);
      v55 = v79;
      if (v79)
      {
        v56 = sub_29D499EC0(v78, v79);
        v57 = *(v55 - 8);
        MEMORY[0x2A1C7C4A8](v56);
        v59 = &v61 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v57 + 16))(v59);
        v60 = sub_29D5B4C6C();
        (*(v57 + 8))(v59, v55);
        sub_29D48F668(v78);
      }

      else
      {
        v60 = 0;
      }

      [v73 showViewController:v54 sender:v60];

      swift_unknownObjectRelease();
      sub_29D50506C(v76, &qword_2A17A4648, MEMORY[0x29EDC40C0]);
      return sub_29D48F668(v80);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_29D5043F0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = a1;
  }

  sub_29D503738(v7);

  return sub_29D504F58(v7, sub_29D4A63E4);
}

id sub_29D504474(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = qword_2A17A4610;
  v8 = type metadata accessor for RecordKindFeedItemData();
  (*(*(v8 - 8) + 56))(&v4[v7], 1, 1, v8);
  v9 = qword_2A17A4618;
  sub_29D5B0BDC();
  swift_allocObject();
  *&v4[v9] = sub_29D5B0BCC();
  v10 = &v4[qword_2A17A4620];
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  if (a2)
  {
    v11 = sub_29D5B3E1C();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = type metadata accessor for RecordKindFeedItemViewController();
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id sub_29D504598(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D504474(v5, v7, a4);
}

id sub_29D5045F8(void *a1)
{
  v2 = v1;
  v4 = qword_2A17A4610;
  v5 = type metadata accessor for RecordKindFeedItemData();
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  v6 = qword_2A17A4618;
  sub_29D5B0BDC();
  swift_allocObject();
  *&v2[v6] = sub_29D5B0BCC();
  v7 = &v2[qword_2A17A4620];
  v8 = type metadata accessor for RecordKindFeedItemViewController();
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v11.receiver = v2;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

uint64_t sub_29D504718()
{
  sub_29D50506C(v0 + qword_2A17A4610, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);

  return sub_29D4A0598(v0 + qword_2A17A4620, &unk_2A17A4DB0, &unk_2A17A4570);
}

id sub_29D504790()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecordKindFeedItemViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D5047C8(uint64_t a1)
{
  sub_29D50506C(a1 + qword_2A17A4610, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);

  return sub_29D4A0598(a1 + qword_2A17A4620, &unk_2A17A4DB0, &unk_2A17A4570);
}

uint64_t sub_29D504878(void *a1)
{
  sub_29D504F04(0, &qword_2A1A17350, MEMORY[0x29EDC4098]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v48 = &v40 - v4;
  v47 = sub_29D5B2C2C();
  v5 = *(v47 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v47);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v45 = &v40 - v8;
  v9 = type metadata accessor for RecordKindFeedItemData();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D504F04(0, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  v14 = MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v40 - v17;
  v51 = sub_29D5026CC();
  v50[0] = a1;
  v19 = a1;
  sub_29D503738(v50);
  sub_29D504F58(v50, sub_29D4A63E4);
  v20 = qword_2A17A4610;
  swift_beginAccess();
  sub_29D505000(v1 + v20, v18, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  v21 = *(v10 + 48);
  v49 = v9;
  v43 = v21;
  v22 = 0;
  if (v21(v18, 1, v9) != 1)
  {
    sub_29D4E42A0(v18, v12);
    v22 = [objc_allocWithZone(MEMORY[0x29EDBAAD8]) initWithRawIdentifier_];
    sub_29D504F58(v12, type metadata accessor for RecordKindFeedItemData);
  }

  v44 = v22;
  v41 = v12;
  result = sub_29D5B2FAC();
  v24 = v51;
  v42 = v1;
  if (v51)
  {
    v25 = sub_29D499EC0(v50, v51);
    v26 = *(v24 - 8);
    MEMORY[0x2A1C7C4A8](v25);
    v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v28);
    v29 = v45;
    sub_29D5B315C();
    (*(v26 + 8))(v28, v24);
    v31 = v46;
    v30 = v47;
    (*(v5 + 104))(v46, *MEMORY[0x29EDC1D68], v47);
    sub_29D5B2C1C();
    v32 = *(v5 + 8);
    v32(v31, v30);
    v32(v29, v30);
    sub_29D48F668(v50);
    sub_29D5B1E5C();
    v33 = sub_29D5B1E4C();
    sub_29D505000(v42 + v20, v16, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
    if (v43(v16, 1, v49))
    {
      sub_29D50506C(v16, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
      v34 = sub_29D5B1D6C();
      v35 = v48;
      (*(*(v34 - 8) + 56))(v48, 1, 1, v34);
    }

    else
    {
      v36 = v41;
      sub_29D5050C8(v16, v41, type metadata accessor for RecordKindFeedItemData);
      sub_29D50506C(v16, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
      v37 = sub_29D5B1D6C();
      v38 = *(v37 - 8);
      v35 = v48;
      (*(v38 + 16))(v48, v36, v37);
      sub_29D504F58(v36, type metadata accessor for RecordKindFeedItemData);
      (*(v38 + 56))(v35, 0, 1, v37);
    }

    v39 = v44;
    sub_29D5B1E1C();

    return sub_29D50506C(v35, &qword_2A1A17350, MEMORY[0x29EDC4098]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29D504F04(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D504F58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D504FB8()
{
  result = qword_2A17A4640;
  if (!qword_2A17A4640)
  {
    type metadata accessor for RecordKindFeedItemData();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17A4640);
  }

  return result;
}

uint64_t sub_29D505000(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29D504F04(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D50506C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D504F04(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D5050C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D505130(uint64_t a1, uint64_t a2)
{
  sub_29D504F04(0, &qword_2A17A4648, MEMORY[0x29EDC40C0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D5051B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D5051F8(uint64_t a1, uint64_t a2)
{
  sub_29D4A02A4(0, &unk_2A17A4DB0, &unk_2A17A4570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D505274(uint64_t a1, uint64_t a2)
{
  sub_29D504F04(0, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D5052F4()
{
  v1 = sub_29D5B200C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D3710();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SharedConceptFeedItemData(0);
  v9 = (v0 + *(v8 + 36));
  v10 = v9[1];
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = *v9 & 0xFFFFFFFFFFFFLL;
  if (!((v10 & 0x2000000000000000) != 0 ? HIBYTE(v10) & 0xF : v11))
  {
    goto LABEL_11;
  }

  v13 = (v0 + *(v8 + 32));
  v14 = v13[1];
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = *v13;
  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
  }

  else
  {
LABEL_11:
    v17 = sub_29D5B0EFC();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    sub_29D5B1FFC();
    v15 = sub_29D5B2A0C();
    (*(v2 + 8))(v4, v1);
    sub_29D50661C(v7, sub_29D4D3710);
  }

  return v15;
}

BOOL sub_29D505514(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = v2[1];
  result = 0;
  if (v3)
  {
    v4 = *v2 & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0 ? HIBYTE(v3) & 0xF : v4)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_29D50554C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = v2[1];
  if (!v3)
  {
    return 0;
  }

  v4 = *v2;
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  return v4;
}

uint64_t sub_29D5055C4()
{
  v1 = sub_29D5B0C4C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SharedConceptCodedValue(0);
  v9 = (v0 + *(v8 + 28));
  if (v9[1])
  {
    v10 = *v9;
  }

  else
  {
    sub_29D5065B4(v0 + *(v8 + 20), v7, sub_29D4A05F4);
    sub_29D506534(0);
    v12 = v11;
    v13 = *(v11 - 8);
    if ((*(v13 + 48))(v7, 1, v11) == 1)
    {
      sub_29D50661C(v7, sub_29D4A05F4);
      v10 = 0;
    }

    else
    {
      v14 = sub_29D5B3CEC();
      (*(v13 + 8))(v7, v12);
      v15 = [v14 currentValue];

      v16 = [v15 displayString];
      v17 = sub_29D5B3E5C();
      v19 = v18;

      v21[0] = v17;
      v21[1] = v19;
      sub_29D5B0C2C();
      sub_29D4B343C();
      v10 = sub_29D5B477C();
      (*(v2 + 8))(v4, v1);
    }
  }

  return v10;
}

uint64_t sub_29D505864()
{
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SharedConceptCodedValue(0);
  sub_29D5065B4(v0 + *(v4 + 20), v3, sub_29D4A05F4);
  sub_29D506534(0);
  v6 = v5;
  v7 = *(v5 - 8);
  if ((*(v7 + 48))(v3, 1, v5) == 1)
  {
    sub_29D50661C(v3, sub_29D4A05F4);
  }

  else
  {
    v8 = sub_29D5B3CEC();
    (*(v7 + 8))(v3, v6);
    v9 = [v8 unitString];

    if (v9)
    {
      v10 = sub_29D5B3E5C();

      return v10;
    }
  }

  return 0;
}

uint64_t sub_29D5059EC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_29D505A24(uint64_t a1)
{
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5065B4(v1 + *(a1 + 20), v5, sub_29D4A05F4);
  sub_29D506534(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(v5, 1, v6) == 1)
  {
    sub_29D50661C(v5, sub_29D4A05F4);
    return 0;
  }

  else
  {
    v10 = sub_29D5B3CEC();
    (*(v8 + 8))(v5, v7);
    return v10;
  }
}

uint64_t sub_29D505B6C()
{
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SharedConceptCodedValue(0);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 40);
  if (!*(v8 + 16))
  {
    return 0;
  }

  sub_29D5065B4(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedConceptCodedValue);
  sub_29D5065B4(&v7[*(v4 + 20)], v3, sub_29D4A05F4);
  sub_29D506534(0);
  v10 = v9;
  v11 = *(v9 - 8);
  if ((*(v11 + 48))(v3, 1, v9) == 1)
  {
    sub_29D50661C(v3, sub_29D4A05F4);
    v12 = 0;
  }

  else
  {
    v12 = sub_29D5B3CEC();
    (*(v11 + 8))(v3, v10);
  }

  sub_29D50661C(v7, type metadata accessor for SharedConceptCodedValue);
  return v12;
}

uint64_t sub_29D505D84()
{
  v1 = sub_29D5B0C4C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SharedConceptCodedValue(0);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 40);
  if (!*(v12 + 16))
  {
    return 0;
  }

  v13 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  sub_29D5065B4(v13, v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedConceptCodedValue);
  sub_29D5065B4(&v11[*(v8 + 20)], v7, sub_29D4A05F4);
  sub_29D506534(0);
  v15 = v14;
  v16 = *(v14 - 8);
  if ((*(v16 + 48))(v7, 1, v14) == 1)
  {
    sub_29D50661C(v7, sub_29D4A05F4);
    sub_29D50661C(v11, type metadata accessor for SharedConceptCodedValue);
    v17 = *(v13 + *(v8 + 28));
  }

  else
  {
    v18 = sub_29D5B3CEC();
    (*(v16 + 8))(v7, v15);
    sub_29D50661C(v11, type metadata accessor for SharedConceptCodedValue);
    v19 = [v18 currentValue];
    v20 = [v19 displayString];

    v21 = sub_29D5B3E5C();
    v23 = v22;

    v25[0] = v21;
    v25[1] = v23;
    sub_29D5B0C2C();
    sub_29D4B343C();
    v17 = sub_29D5B477C();

    (*(v2 + 8))(v4, v1);
  }

  return v17;
}

uint64_t sub_29D506100()
{
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SharedConceptCodedValue(0);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 40);
  if (*(v8 + 16))
  {
    sub_29D5065B4(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedConceptCodedValue);
    sub_29D5065B4(&v7[*(v4 + 20)], v3, sub_29D4A05F4);
    sub_29D506534(0);
    v10 = v9;
    v11 = *(v9 - 8);
    if ((*(v11 + 48))(v3, 1, v9) == 1)
    {
      sub_29D50661C(v3, sub_29D4A05F4);
      sub_29D50661C(v7, type metadata accessor for SharedConceptCodedValue);
    }

    else
    {
      v12 = sub_29D5B3CEC();
      (*(v11 + 8))(v3, v10);
      sub_29D50661C(v7, type metadata accessor for SharedConceptCodedValue);
      v13 = [v12 unitString];

      if (v13)
      {
        v14 = sub_29D5B3E5C();

        return v14;
      }
    }
  }

  return 0;
}

uint64_t sub_29D506370@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC4068];
  v3 = sub_29D5B1D6C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D5063E4()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_29D506414@<X0>(uint64_t a1@<X8>)
{
  sub_29D5B0E1C();
  v2 = sub_29D5B0E6C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_29D506494()
{
  v1 = *(v0 + 72);

  return v1;
}

unint64_t sub_29D5064E0()
{
  result = qword_2A17A4658;
  if (!qword_2A17A4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4658);
  }

  return result;
}

unint64_t sub_29D506568()
{
  result = qword_2A1A162F0;
  if (!qword_2A1A162F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A162F0);
  }

  return result;
}

uint64_t sub_29D5065B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D50661C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for SharedConceptDetailViewController()
{
  result = qword_2A17A4660;
  if (!qword_2A17A4660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5066C8()
{
  result = type metadata accessor for SharedConceptFeedItemData(319);
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

uint64_t sub_29D506760(void *a1, uint64_t a2)
{
  v49 = a1;
  sub_29D5078C8(0, &qword_2A17A4670, &qword_2A17A4678, &qword_2A17A3F30, MEMORY[0x29EDC41A8]);
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  MEMORY[0x2A1C7C4A8](v4);
  v50 = &v41 - v6;
  v46 = sub_29D5B29FC();
  v43 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D507820();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5078C8(0, &qword_2A17A4688, &qword_2A17A4690, &unk_2A17A3F48, MEMORY[0x29EDC4258]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v41 - v16;
  sub_29D507938(a2, v2 + qword_2A17ABF28);
  v18 = type metadata accessor for SharedConceptFeedItemData(0);
  v19 = *(v18 + 48);
  v47 = a2;
  v48 = v18;
  v53[0] = *(a2 + v19);
  v20 = v53[0];
  sub_29D507878();
  v44 = v21;

  sub_29D5B3A2C();
  v42 = MEMORY[0x29EDC9A40];
  sub_29D5077B4(0, &qword_2A17A4690, &unk_2A17A3F48, MEMORY[0x29EDC4258], MEMORY[0x29EDC9A40]);
  sub_29D5B39FC();
  v22 = v10 + 8;
  v23 = *(v10 + 8);
  v41 = v22;
  v23(v12, v9);
  sub_29D50799C();
  sub_29D5B3B1C();
  (*(v15 + 8))(v17, v14);
  v54 = v18;
  v55 = sub_29D507A14(&qword_2A17A46A0, type metadata accessor for SharedConceptFeedItemData);
  v24 = sub_29D4A0410(v53);
  sub_29D507938(a2, v24);
  (*(v43 + 104))(v45, *MEMORY[0x29EDC4270], v46);

  v25 = v49;
  v26 = [v49 healthStore];
  sub_29D5B1CFC();
  swift_allocObject();
  v27 = sub_29D5B1CEC();
  v53[0] = v20;

  sub_29D5B3A2C();
  sub_29D5077B4(0, &qword_2A17A4678, &qword_2A17A3F30, MEMORY[0x29EDC41A8], v42);
  v28 = v50;
  sub_29D5B39FC();
  v23(v12, v9);
  sub_29D507A5C();
  v29 = v51;
  sub_29D5B3B1C();
  (*(v52 + 8))(v28, v29);
  sub_29D5B1EBC();
  swift_allocObject();

  v30 = v25;
  v31 = sub_29D5B1EAC();
  sub_29D507AD4();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_29D5B6320;
  v33 = sub_29D507A14(&qword_2A17A46C0, MEMORY[0x29EDC4038]);
  *(v32 + 32) = v27;
  *(v32 + 40) = v33;
  v54 = v48;
  v55 = sub_29D507A14(&qword_2A17A46C8, type metadata accessor for SharedConceptFeedItemData);
  v34 = sub_29D4A0410(v53);
  v35 = v47;
  sub_29D507938(v47, v34);
  sub_29D5B20CC();
  swift_allocObject();

  v36 = sub_29D5B20BC();
  v37 = sub_29D507A14(&qword_2A17A46D0, MEMORY[0x29EDC4140]);
  *(v32 + 48) = v36;
  *(v32 + 56) = v37;
  v38 = sub_29D507A14(&qword_2A17A46D8, MEMORY[0x29EDC40D0]);
  *(v32 + 64) = v31;
  *(v32 + 72) = v38;
  sub_29D5B304C();
  swift_allocObject();

  sub_29D5B305C();
  v39 = sub_29D5B347C();

  sub_29D507B40(v35);
  return v39;
}

uint64_t sub_29D506E3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29D4C4F50(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_29D506E68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29D4C4F90(*a1);
  *a2 = result;
  return result;
}

void sub_29D506EF0(void *a1)
{
  type metadata accessor for SharedConceptFeedItemData(0);
  v2 = a1;
  v3 = sub_29D5B3E1C();
  [v2 setTitle_];

  v4.receiver = v2;
  v4.super_class = type metadata accessor for SharedConceptDetailViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
}

void sub_29D506F90(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29D5B374C();
  MEMORY[0x2A1C7C4A8](v5);
  v6 = sub_29D5B2C2C();
  MEMORY[0x2A1C7C4A8](v6);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDC1D60]);
  v9 = a1;
  sub_29D5B436C();
  sub_29D5B373C();
  sub_29D5B437C();
  v10 = type metadata accessor for SharedConceptDetailViewController();
  v11.receiver = v9;
  v11.super_class = v10;
  objc_msgSendSuper2(&v11, sel_viewIsAppearing_, a3);
}

id sub_29D50710C()
{
  result = [v0 collectionView];
  if (result)
  {
    sub_29D5B346C();
    sub_29D5B344C();
    swift_allocObject();
    return sub_29D5B343C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29D507190()
{
  sub_29D5B348C();
  v1 = sub_29D5B349C();
  v1();
  sub_29D5B346C();
  v2 = sub_29D5B303C();

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x29EDC27C8];
    v8 = v2;
    while (v5 < *(v2 + 16))
    {
      v11 = *(v2 + 16 * v5 + 32);
      sub_29D507BE8(0, &qword_2A17A46B8);
      sub_29D507BE8(0, &qword_2A17A4700);
      swift_unknownObjectRetain_n();
      if (swift_dynamicCast())
      {
        sub_29D497868(v9, v12);
        sub_29D499EC0(v12, v12[3]);
        result = [v0 collectionView];
        if (!result)
        {
          goto LABEL_14;
        }

        v7 = result;
        sub_29D5B311C();

        swift_unknownObjectRelease();
        result = sub_29D48F668(v12);
        v2 = v8;
        v6 = MEMORY[0x29EDC27C8];
      }

      else
      {
        swift_unknownObjectRelease();
        v10 = 0;
        memset(v9, 0, sizeof(v9));
        result = sub_29D507C44(v9, &qword_2A17A4708, &qword_2A17A4700, v6);
      }

      if (v4 == ++v5)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
  }

  return result;
}

void sub_29D5073D4(void *a1)
{
  v2 = sub_29D5B0FBC();
  [a1 deselectItemAtIndexPath:v2 animated:1];

  v3 = sub_29D5B0FBC();
  v4 = [a1 cellForItemAtIndexPath_];

  if (v4)
  {
    sub_29D5B346C();
    sub_29D5B304C();
    sub_29D5B2D9C();

    sub_29D48F564(v11, v8);
    sub_29D507BE8(0, &qword_2A17A46E0);
    sub_29D507BE8(0, &qword_2A17A46E8);
    if (swift_dynamicCast())
    {
      v5 = v6;
LABEL_6:
      sub_29D497868(v5, v10);
      sub_29D499EC0(v10, v10[3]);
      sub_29D5B2EAC();

      sub_29D48F668(v11);
      sub_29D48F668(v10);
      return;
    }

    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_29D507C44(v6, &qword_2A17A46F0, &qword_2A17A46E8, MEMORY[0x29EDC21C0]);
    *&v6[0] = v4;
    sub_29D507B9C();
    v4 = v4;
    if (swift_dynamicCast())
    {
      v5 = v8;
      goto LABEL_6;
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_29D48F668(v11);
    sub_29D507C44(v8, &qword_2A17A46F0, &qword_2A17A46E8, MEMORY[0x29EDC21C0]);
  }
}

uint64_t sub_29D5075F8(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_29D5B0FDC();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B0FCC();
  v9 = a3;
  v10 = a1;
  sub_29D5073D4(v9);

  return (*(v6 + 8))(v8, v5);
}

id sub_29D507764()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedConceptDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D5077B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D507BE8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D507820()
{
  if (!qword_2A17A4680)
  {
    sub_29D507878();
    v0 = sub_29D5B3A1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4680);
    }
  }
}

void sub_29D507878()
{
  if (!qword_2A1A16478)
  {
    v0 = sub_29D5B40BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16478);
    }
  }
}

void sub_29D5078C8(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_29D5077B4(255, a3, a4, a5, MEMORY[0x29EDC9A40]);
    v6 = sub_29D5B3A1C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29D507938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedConceptFeedItemData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D50799C()
{
  result = qword_2A17A4698;
  if (!qword_2A17A4698)
  {
    sub_29D5078C8(255, &qword_2A17A4688, &qword_2A17A4690, &unk_2A17A3F48, MEMORY[0x29EDC4258]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4698);
  }

  return result;
}

uint64_t sub_29D507A14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D507A5C()
{
  result = qword_2A17A46A8;
  if (!qword_2A17A46A8)
  {
    sub_29D5078C8(255, &qword_2A17A4670, &qword_2A17A4678, &qword_2A17A3F30, MEMORY[0x29EDC41A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A46A8);
  }

  return result;
}

void sub_29D507AD4()
{
  if (!qword_2A17A46B0)
  {
    sub_29D507BE8(255, &qword_2A17A46B8);
    v0 = sub_29D5B4C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A46B0);
    }
  }
}

uint64_t sub_29D507B40(uint64_t a1)
{
  v2 = type metadata accessor for SharedConceptFeedItemData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D507B9C()
{
  result = qword_2A17A46F8;
  if (!qword_2A17A46F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17A46F8);
  }

  return result;
}

uint64_t sub_29D507BE8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D507C44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_29D5077B4(0, a2, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29D507CB4()
{
  v0 = sub_29D5B1AAC();
  sub_29D50CE1C(v0, qword_2A1A1A760);
  v1 = sub_29D50BA5C(v0, qword_2A1A1A760);
  v2 = *MEMORY[0x29EDC3F20];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

void *sub_29D507D3C(uint64_t a1)
{
  v2 = v1;
  v19 = *v1;
  v18 = sub_29D5B13CC();
  v4 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D5B13EC();
  v7 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50CB4C(a1, v1 + OBJC_IVAR____TtC13HealthRecords16LabTipsGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  v16 = sub_29D5B143C();
  sub_29D50AEC4(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v10 = sub_29D5B104C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D5B62A0;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x29EDC3730], v10);
  (*(v4 + 104))(v6, *MEMORY[0x29EDC3898], v18);
  sub_29D5B13DC();
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords16LabTipsGenerator_domain, v9, v17);
  v14 = sub_29D508034(a1);
  sub_29D49A104(a1);
  v2[2] = v14;
  return v2;
}

uint64_t sub_29D508034(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext();
  v146 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v147 = v3;
  v149 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50AEC4(0, &qword_2A1A172F0, MEMORY[0x29EDCA498], MEMORY[0x29EDC9C68]);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v117 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v116 = &v99 - v7;
  v114 = sub_29D5B106C();
  v113 = *(v114 - 8);
  MEMORY[0x2A1C7C4A8](v114);
  v112 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_29D5B1D6C();
  v110 = *(v111 - 8);
  MEMORY[0x2A1C7C4A8](v111);
  v109 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50AF28();
  v119 = v10;
  v118 = *(v10 - 1);
  MEMORY[0x2A1C7C4A8](v10);
  v115 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B0B8();
  v126 = v12;
  v125 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v122 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B2C0();
  v129 = v14;
  v127 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v123 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B62C();
  v130 = v16;
  v128 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v124 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B6C0();
  v134 = v18;
  v133 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v131 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B754();
  v136 = v20;
  v135 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v132 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B830();
  v139 = *(v22 - 8);
  v140 = v22;
  MEMORY[0x2A1C7C4A8](v22);
  v137 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B8DC();
  v141 = *(v24 - 8);
  v142 = v24;
  MEMORY[0x2A1C7C4A8](v24);
  v138 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B9C8();
  v144 = *(v26 - 8);
  v145 = v26;
  MEMORY[0x2A1C7C4A8](v26);
  v143 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_29D5B0F8C();
  v107 = *(v108 - 8);
  MEMORY[0x2A1C7C4A8](v108);
  v105 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_29D5B0E6C();
  v104 = *(v106 - 8);
  MEMORY[0x2A1C7C4A8](v106);
  v103 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_29D5B0EDC();
  v101 = *(v102 - 8);
  MEMORY[0x2A1C7C4A8](v102);
  v100 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29D5B1AAC();
  v32 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v34 = &v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1CBC();
  v35 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v155, v156);
  v36 = sub_29D5B136C();
  v37 = [v36 profileIdentifier];

  v121 = sub_29D5B1C3C();
  sub_29D48F668(&v155);
  sub_29D5B0C0C();
  swift_allocObject();
  v120 = sub_29D5B0BFC();
  v38 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v155, v156);
  v39 = sub_29D5B136C();
  v40 = [v39 profileIdentifier];

  v152 = sub_29D5B1C6C();
  sub_29D48F668(&v155);
  sub_29D5B140C();
  sub_29D499EC0(&v155, v156);
  sub_29D5B136C();
  sub_29D5B26AC();
  swift_allocObject();
  v151 = sub_29D5B269C();
  sub_29D48F668(&v155);
  sub_29D5B140C();
  if (qword_2A1A18E38 != -1)
  {
    swift_once();
  }

  v41 = sub_29D50BA5C(v31, qword_2A1A1A760);
  (*(v32 + 16))(v34, v41, v31);
  v148 = a1;
  v42 = sub_29D5B143C();
  v43 = sub_29D5B10AC();
  v44 = sub_29D5B1A8C();
  v46 = v45;
  if (v43)
  {
    v153 = 0x656C69666F72505BLL;
    v154 = 0xE90000000000003ALL;
    v43 = v43;
    v47 = [v43 identifier];
    v48 = v100;
    sub_29D5B0EBC();

    v49 = sub_29D5B0E8C();
    v51 = v50;
    (*(v101 + 8))(v48, v102);
    MEMORY[0x29ED5E510](v49, v51);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v52 = v153;
    v53 = v154;
  }

  else
  {
    v53 = 0x800000029D5BBCB0;
    v52 = 0xD000000000000013;
  }

  v153 = v52;
  v154 = v53;
  MEMORY[0x29ED5E510](v44, v46);

  v54 = v153;
  v55 = v154;
  (*(v32 + 8))(v34, v31);
  type metadata accessor for FeedItemContextChangeGenerator();
  v56 = swift_allocObject();
  v102 = v56;
  sub_29D497868(&v155, v56 + 16);
  *(v56 + 56) = v54;
  *(v56 + 64) = v55;
  sub_29D48F51C(0, &qword_2A1A16348);
  v57 = sub_29D5B42CC();
  v58 = v103;
  sub_29D5B0E5C();
  v59 = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
  v60 = v105;
  sub_29D5B0F4C();

  v61 = sub_29D50C08C(v57, v58, v60);
  (*(v107 + 8))(v60, v108);
  (*(v104 + 8))(v58, v106);
  v62 = v110;
  v63 = v109;
  v64 = v111;
  (*(v110 + 104))(v109, *MEMORY[0x29EDC4068], v111);
  v65 = v152;
  v66 = sub_29D5B25FC();
  (*(v62 + 8))(v63, v64);
  v67 = v113;
  v68 = v112;
  v69 = v114;
  (*(v113 + 104))(v112, *MEMORY[0x29EDC37B8], v114);
  sub_29D5B105C();
  (*(v67 + 8))(v68, v69);
  v70 = sub_29D5B369C();
  v71 = v116;
  (*(*(v70 - 8) + 56))(v116, 1, 1, v70);
  *&v155 = v66;
  v72 = MEMORY[0x29EDCA498];
  sub_29D50CBB4(v71, v117, &qword_2A1A172F0, MEMORY[0x29EDCA498]);
  sub_29D50AFBC();
  v114 = MEMORY[0x29EDB8A00];
  sub_29D50CDD4(&qword_2A1A166F0, sub_29D50AFBC);
  v73 = v115;
  sub_29D5B381C();
  sub_29D50CC34(v71, &qword_2A1A172F0, v72);
  sub_29D5B396C();
  sub_29D48F51C(0, &qword_2A1A162D0);
  sub_29D50B1A4();
  sub_29D50CDD4(&qword_2A1A16FF8, sub_29D50AF28);
  sub_29D50CDD4(&qword_2A1A168C8, sub_29D50B1A4);
  v74 = v122;
  v75 = v119;
  sub_29D5B3BFC();
  (*(v118 + 8))(v73, v75);
  v76 = swift_allocObject();
  v76[2] = v65;
  v76[3] = v61;
  v76[4] = v151;
  sub_29D50C880();
  sub_29D50B3AC();
  sub_29D50CDD4(&qword_2A1A169B0, sub_29D50B0B8);
  sub_29D50CDD4(&qword_2A1A16E08, sub_29D50B3AC);

  v119 = v61;

  v77 = v123;
  v78 = v126;
  sub_29D5B3BFC();

  (*(v125 + 8))(v74, v78);
  sub_29D50CDD4(&qword_2A1A169E0, sub_29D50B2C0);
  v79 = v124;
  v80 = v129;
  sub_29D5B3BAC();
  (*(v127 + 8))(v77, v80);
  sub_29D50CDD4(&qword_2A1A16C78, sub_29D50B62C);
  v81 = v131;
  v82 = v130;
  sub_29D5B3BDC();
  (*(v128 + 8))(v79, v82);
  v83 = v149;
  sub_29D50CB4C(v148, v149, type metadata accessor for HealthRecordsGeneratorContext);
  v84 = (*(v146 + 80) + 40) & ~*(v146 + 80);
  v85 = (v147 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  v87 = v150;
  v86[2] = v121;
  v86[3] = v87;
  v86[4] = v120;
  sub_29D499F90(v83, v86 + v84);
  *(v86 + v85) = v87;
  sub_29D50AEC4(0, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
  sub_29D50CDD4(&qword_2A1A16B20, sub_29D50B6C0);

  v88 = v132;
  v89 = v134;
  sub_29D5B3BCC();

  (*(v133 + 8))(v81, v89);
  sub_29D4E3C34();

  v90 = v137;
  v91 = v136;
  sub_29D5B38CC();

  (*(v135 + 8))(v88, v91);
  *(swift_allocObject() + 16) = v87;
  sub_29D4B2D8C();
  sub_29D50CDD4(&qword_2A1A16B50, sub_29D50B830);
  sub_29D50CDD4(&qword_2A1A16780, sub_29D4B2D8C);
  v92 = v138;
  v93 = v140;
  sub_29D5B3B8C();

  (*(v139 + 8))(v90, v93);
  *&v155 = MEMORY[0x29EDCA190];
  sub_29D50CDD4(&qword_2A1A16D38, sub_29D50B8DC);
  v94 = v142;
  v95 = v143;
  sub_29D5B3B4C();
  (*(v141 + 8))(v92, v94);
  sub_29D50CDD4(&qword_2A1A17078, sub_29D50B9C8);
  v96 = v145;
  v97 = sub_29D5B3B1C();

  (*(v144 + 8))(v95, v96);
  return v97;
}

uint64_t sub_29D5096A8(void *a1)
{
  sub_29D50CCA4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = *a1;
  sub_29D50B048(0, &qword_2A1A163D8, MEMORY[0x29EDC9A40]);
  sub_29D50B24C();
  sub_29D5B3FEC();
  sub_29D4B3AF4();
  sub_29D5B391C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29D5097E0(void **a1)
{
  v2 = sub_29D5B23CC();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v11[1] = sub_29D5B25EC();
  v7 = [v6 UUID];
  sub_29D5B0EBC();

  (*(v3 + 104))(v5, *MEMORY[0x29EDC41C8], v2);
  v8 = sub_29D5B268C();
  (*(v3 + 8))(v5, v2);
  v11[0] = v8;
  sub_29D50B550(0, &qword_2A1A16688, &qword_2A1A162C0, sub_29D50B4D8);
  v9 = MEMORY[0x29EDB9BC8];
  sub_29D50B550(0, &qword_2A1A16878, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  sub_29D50B5DC(&qword_2A1A16690, &qword_2A1A16688, &qword_2A1A162C0, sub_29D50B4D8);
  sub_29D50B5DC(&qword_2A1A16880, &qword_2A1A16878, &qword_2A1A1A390, v9);
  return sub_29D5B386C();
}

BOOL sub_29D509A10(void *a1)
{
  if (!*a1)
  {
    return 0;
  }

  v1 = a1[1];
  sub_29D48F51C(0, &qword_2A1A16348);
  return v1 >= sub_29D5B42DC();
}

uint64_t sub_29D509A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v122 = a5;
  v109 = a4;
  v113 = a3;
  v119 = a2;
  v6 = sub_29D5B0E6C();
  v117 = *(v6 - 8);
  v118 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v98 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDC9C68];
  sub_29D50AEC4(0, qword_2A1A1A3B0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v97 = &v91 - v10;
  sub_29D50AEC4(0, &qword_2A1A17388, MEMORY[0x29EDC3980], v8);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v96 = &v91 - v12;
  v94 = sub_29D5B104C();
  v92 = *(v94 - 8);
  MEMORY[0x2A1C7C4A8](v94);
  v93 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D5B1D6C();
  v110 = *(v14 - 8);
  v111 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v108 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B048(0, &qword_2A1A164D8, MEMORY[0x29EDBA1D0]);
  v106 = v16;
  v105 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v104 = &v91 - v17;
  sub_29D50AEC4(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], v8);
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v107 = &v91 - v19;
  v20 = sub_29D5B134C();
  v120 = *(v20 - 8);
  v121 = v20;
  MEMORY[0x2A1C7C4A8](v20);
  v95 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_29D5B0EDC();
  v102 = *(v103 - 8);
  MEMORY[0x2A1C7C4A8](v103);
  v101 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_29D5B1FAC();
  v112 = *(v115 - 8);
  MEMORY[0x2A1C7C4A8](v115);
  v114 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_29D5B371C();
  v99 = *(v100 - 8);
  MEMORY[0x2A1C7C4A8](v100);
  v116 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50AEC4(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], v8);
  v26 = MEMORY[0x2A1C7C4A8](v25);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v26);
  v31 = &v91 - v30;
  MEMORY[0x2A1C7C4A8](v29);
  v33 = &v91 - v32;
  sub_29D50C880();
  v35 = v34;
  v36 = MEMORY[0x2A1C7C4A8](v34);
  v38 = (&v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v36);
  v40 = (&v91 - v39);
  sub_29D50CB4C(a1, &v91 - v39, sub_29D50C880);
  v41 = *v40;
  v42 = *(v35 + 48);
  if (!*v40)
  {
    v44 = v40 + v42;
    goto LABEL_8;
  }

  sub_29D50CC34(v40 + v42, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  sub_29D50CB4C(a1, v38, sub_29D50C880);

  sub_29D4D1F64(v38 + *(v35 + 48), v33);
  v43 = v41;
  v44 = v33;
  if ((sub_29D5B362C() & 1) != 0 || (*(v117 + 48))(v33, 1, v118) != 1)
  {

LABEL_8:
    sub_29D50CC34(v44, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    return (*(v120 + 56))(v122, 1, 1, v121);
  }

  v45 = v116;
  sub_29D5B36CC();
  sub_29D50CBB4(v33, v31, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  v46 = v43;
  v47 = sub_29D5B370C();
  v48 = sub_29D5B429C();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v123;
  v91 = v44;
  if (v49)
  {
    v51 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v125 = v119;
    *v51 = 136446466;
    v52 = HKSensitiveLogItem();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v53 = sub_29D5B3E7C();
    v55 = sub_29D501890(v53, v54, &v125);
    LODWORD(v118) = v48;
    v56 = v50;
    v57 = v46;
    v58 = v55;

    *(v51 + 4) = v58;
    *(v51 + 12) = 2082;
    v59 = MEMORY[0x29EDB9BC8];
    sub_29D50CBB4(v31, v28, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    v60 = sub_29D5B3E7C();
    v62 = v61;
    v63 = v59;
    v46 = v57;
    v50 = v56;
    sub_29D50CC34(v31, &qword_2A1A1A390, v63);
    v64 = sub_29D501890(v60, v62, &v125);

    *(v51 + 14) = v64;
    _os_log_impl(&dword_29D48C000, v47, v118, "Generating tip for concept: %{public}s, tile dismissed date: %{public}s", v51, 0x16u);
    v65 = v119;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v65, -1, -1);
    MEMORY[0x29ED5FB80](v51, -1, -1);

    (*(v99 + 8))(v116, v100);
  }

  else
  {

    sub_29D50CC34(v31, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    (*(v99 + 8))(v45, v100);
  }

  v67 = v46;
  sub_29D5B453C();
  sub_29D48F51C(0, &qword_2A1A16348);
  sub_29D5B42CC();
  v68 = [v67 UUID];

  sub_29D5B0EBC();
  v69 = v114;
  sub_29D5B1F9C();
  v70 = sub_29D5B143C();
  v71 = v104;
  sub_29D5B1F8C();
  v72 = v106;
  v73 = sub_29D5B3CEC();
  (*(v105 + 8))(v71, v72);
  v74 = [v73 UUID];

  v75 = v107;
  sub_29D5B0EBC();

  (*(v102 + 56))(v75, 0, 1, v103);
  if (qword_2A1A18E38 != -1)
  {
    swift_once();
  }

  v76 = sub_29D5B1AAC();
  sub_29D50BA5C(v76, qword_2A1A1A760);
  v78 = v110;
  v77 = v111;
  v79 = v108;
  (*(v110 + 104))(v108, *MEMORY[0x29EDC4068], v111);
  v119 = sub_29D5B294C();
  (*(v78 + 8))(v79, v77);
  sub_29D50CC34(v75, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  sub_29D50CDD4(&qword_2A17A4720, MEMORY[0x29EDC4120]);
  v80 = v115;
  sub_29D5B0BEC();
  if (v50)
  {

    (*(v112 + 8))(v69, v80);
  }

  else
  {
    type metadata accessor for LabsTipViewController();
    (*(v92 + 104))(v93, *MEMORY[0x29EDC3730], v94);
    v123 = v70;
    v81 = v95;
    sub_29D5B110C();
    sub_29D5B0E5C();
    v82 = v97;
    sub_29D5B0C6C();
    v83 = sub_29D5B0C7C();
    (*(*(v83 - 8) + 56))(v82, 0, 1, v83);
    sub_29D5B16FC();
    sub_29D5B12BC();
    sub_29D5B124C();
    sub_29D5B132C();
    sub_29D5B123C();
    sub_29D5B122C();
    v125 = MEMORY[0x29EDCA1A0];
    v84 = sub_29D5B158C();
    sub_29D59AD10(&v124, v84, v85);

    v86 = v125;
    v87 = sub_29D5B130C();
    sub_29D4E80E8(v86);
    v87(&v124, 0);

    (*(v112 + 8))(v114, v115);
    v89 = v120;
    v88 = v121;
    v90 = v122;
    (*(v120 + 32))(v122, v81, v121);
    (*(v89 + 56))(v90, 0, 1, v88);
  }

  return sub_29D50CC34(v91, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
}

uint64_t sub_29D50A998@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D50AEC4(0, &qword_2A1A165D0, sub_29D4E3C34, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v32 - v7;
  v9 = sub_29D5B371C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_29D5B36AC();
  v14 = v13;
  v15 = sub_29D5B370C();
  v16 = sub_29D5B427C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = v5;
    v18 = v17;
    v34 = swift_slowAlloc();
    v38 = v34;
    *v18 = 136446466;
    v37 = sub_29D50CABC(0);
    sub_29D50CADC(0, &qword_2A17A4718, sub_29D50CABC);
    v19 = sub_29D5B3E7C();
    v33 = v9;
    v21 = sub_29D501890(v19, v20, &v38);
    v36 = a2;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v37 = v13;
    v23 = v13;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v24 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v25 = sub_29D5B3E7C();
    v27 = sub_29D501890(v25, v26, &v38);

    *(v18 + 14) = v27;
    a2 = v36;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s] Unable to compute desired difference for commit: %{public}s", v18, 0x16u);
    v28 = v34;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v28, -1, -1);
    v29 = v18;
    v5 = v35;
    MEMORY[0x29ED5FB80](v29, -1, -1);

    (*(v10 + 8))(v12, v33);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v37 = MEMORY[0x29EDCA190];
  sub_29D4E3C34();
  sub_29D5B3A2C();
  sub_29D50CA34();
  v30 = sub_29D5B3B1C();
  result = (*(v6 + 8))(v8, v5);
  *a2 = v30;
  return result;
}

uint64_t sub_29D50AD40()
{

  v1 = OBJC_IVAR____TtC13HealthRecords16LabTipsGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords16LabTipsGenerator_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LabTipsGenerator()
{
  result = qword_2A1A18E18;
  if (!qword_2A1A18E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D50AE48@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords16LabTipsGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D50AEC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D50AF28()
{
  if (!qword_2A1A16FF0)
  {
    sub_29D50AFBC();
    sub_29D50CDD4(&qword_2A1A166F0, sub_29D50AFBC);
    v0 = sub_29D5B380C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16FF0);
    }
  }
}

void sub_29D50AFBC()
{
  if (!qword_2A1A166E8)
  {
    sub_29D50B048(255, &qword_2A1A163D8, MEMORY[0x29EDC9A40]);
    sub_29D4B3AF4();
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A166E8);
    }
  }
}

void sub_29D50B048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D48F51C(255, &qword_2A1A162D0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D50B0B8()
{
  if (!qword_2A1A169A8)
  {
    sub_29D50B1A4();
    sub_29D50AF28();
    sub_29D50CDD4(&qword_2A1A168C8, sub_29D50B1A4);
    sub_29D50CDD4(&qword_2A1A16FF8, sub_29D50AF28);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A169A8);
    }
  }
}

void sub_29D50B1A4()
{
  if (!qword_2A1A168C0)
  {
    sub_29D50B048(255, &qword_2A1A163D8, MEMORY[0x29EDC9A40]);
    sub_29D4B3AF4();
    sub_29D50B24C();
    v0 = sub_29D5B392C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A168C0);
    }
  }
}

unint64_t sub_29D50B24C()
{
  result = qword_2A1A163D0;
  if (!qword_2A1A163D0)
  {
    sub_29D50B048(255, &qword_2A1A163D8, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A163D0);
  }

  return result;
}

void sub_29D50B2C0()
{
  if (!qword_2A1A169D8)
  {
    sub_29D50B3AC();
    sub_29D50B0B8();
    sub_29D50CDD4(&qword_2A1A16E08, sub_29D50B3AC);
    sub_29D50CDD4(&qword_2A1A169B0, sub_29D50B0B8);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A169D8);
    }
  }
}

void sub_29D50B3AC()
{
  if (!qword_2A1A16E00)
  {
    sub_29D50B550(255, &qword_2A1A16688, &qword_2A1A162C0, sub_29D50B4D8);
    v0 = MEMORY[0x29EDB9BC8];
    sub_29D50B550(255, &qword_2A1A16878, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    sub_29D50B5DC(&qword_2A1A16690, &qword_2A1A16688, &qword_2A1A162C0, sub_29D50B4D8);
    sub_29D50B5DC(&qword_2A1A16880, &qword_2A1A16878, &qword_2A1A1A390, v0);
    v1 = sub_29D5B385C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16E00);
    }
  }
}

void sub_29D50B4D8()
{
  if (!qword_2A1A162C8)
  {
    sub_29D48F51C(255, &qword_2A1A162D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A162C8);
    }
  }
}

void sub_29D50B550(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29D50AEC4(255, a3, a4, MEMORY[0x29EDC9C68]);
    sub_29D4B3AF4();
    v5 = sub_29D5B398C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D50B5DC(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D50B550(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D50B62C()
{
  if (!qword_2A1A16C70)
  {
    sub_29D50B2C0();
    sub_29D50CDD4(&qword_2A1A169E0, sub_29D50B2C0);
    v0 = sub_29D5B38AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16C70);
    }
  }
}

void sub_29D50B6C0()
{
  if (!qword_2A1A16B18)
  {
    sub_29D50B62C();
    sub_29D50CDD4(&qword_2A1A16C78, sub_29D50B62C);
    v0 = sub_29D5B38EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16B18);
    }
  }
}

void sub_29D50B754()
{
  if (!qword_2A1A16B58)
  {
    sub_29D50B6C0();
    sub_29D50AEC4(255, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
    sub_29D50CDD4(&qword_2A1A16B20, sub_29D50B6C0);
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16B58);
    }
  }
}

void sub_29D50B830()
{
  if (!qword_2A1A16B48)
  {
    sub_29D50B6C0();
    sub_29D4E3C34();
    sub_29D50CDD4(&qword_2A1A16B20, sub_29D50B6C0);
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16B48);
    }
  }
}

void sub_29D50B8DC()
{
  if (!qword_2A1A16D30)
  {
    sub_29D50B830();
    sub_29D4B2D8C();
    sub_29D50CDD4(&qword_2A1A16B50, sub_29D50B830);
    sub_29D50CDD4(&qword_2A1A16780, sub_29D4B2D8C);
    v0 = sub_29D5B387C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16D30);
    }
  }
}

void sub_29D50B9C8()
{
  if (!qword_2A1A17070)
  {
    sub_29D50B8DC();
    sub_29D50CDD4(&qword_2A1A16D38, sub_29D50B8DC);
    v0 = sub_29D5B37FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17070);
    }
  }
}

uint64_t sub_29D50BA5C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_29D50BA94(uint64_t a1)
{
  v2 = sub_29D5B0F7C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_29D50CD40();
    v9 = sub_29D5B490C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_29D50CDD4(&qword_2A1A19390, MEMORY[0x29EDB9D00]);
      v16 = sub_29D5B3D8C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_29D50CDD4(&qword_2A1A19388, MEMORY[0x29EDB9D00]);
          v23 = sub_29D5B3E0C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

void sub_29D50BDA8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_29D5B485C())
    {
LABEL_3:
      sub_29D4C22E4();
      v3 = sub_29D5B490C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_29D5B485C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDCA1A0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x29ED5EF30](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_29D5B464C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_29D48F51C(0, &qword_2A1A16370);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_29D5B465C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_29D5B464C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_29D48F51C(0, &qword_2A1A16370);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_29D5B465C();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_29D50C08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v68 = a2;
  v69 = a1;
  v3 = MEMORY[0x29EDC9C68];
  sub_29D50AEC4(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v60 = &v50 - v5;
  v6 = sub_29D5B0E6C();
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v64 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50AEC4(0, &qword_2A1A19378, MEMORY[0x29EDB9D58], v3);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v67 = &v50 - v9;
  sub_29D50AEC4(0, &qword_2A1A19380, MEMORY[0x29EDB9D18], v3);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v50 - v11;
  v13 = sub_29D5B0D0C();
  v62 = *(v13 - 8);
  v63 = v13;
  v14 = MEMORY[0x2A1C7C4A8](v13);
  v59 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v70 = &v50 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v50 - v18;
  sub_29D50AEC4(0, &qword_2A1A16220, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v21 = v20;
  v22 = sub_29D5B0F7C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v55 = 3 * v24;
  v57 = v21;
  v26 = swift_allocObject();
  v53 = xmmword_29D5B6320;
  *(v26 + 16) = xmmword_29D5B6320;
  v56 = v25;
  v27 = v26 + v25;
  v28 = *(v23 + 104);
  v54 = *MEMORY[0x29EDB9CD0];
  v28(v27);
  v52 = *MEMORY[0x29EDB9CD8];
  v28(v27 + v24);
  v29 = *MEMORY[0x29EDB9CB8];
  v58 = 2 * v24;
  v51 = v29;
  v28(v27 + 2 * v24);
  sub_29D50BA94(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v61 = v19;
  v30 = v12;
  sub_29D5B0F3C();
  v31 = v67;

  v32 = sub_29D5B0F8C();
  (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
  v33 = sub_29D5B0FAC();
  result = (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  if (__OFSUB__(0, v69))
  {
    __break(1u);
  }

  else
  {
    sub_29D5B0CFC();
    v35 = v60;
    sub_29D5B0F5C();
    v37 = v65;
    v36 = v66;
    if ((*(v65 + 48))(v35, 1, v66) == 1)
    {
      sub_29D50CC34(v35, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
      v38 = [objc_opt_self() predicateWithValue_];
      v39 = v63;
      v40 = *(v62 + 8);
      v40(v70, v63);
      v41 = v61;
    }

    else
    {
      (*(v37 + 32))(v64, v35, v36);
      v42 = v56;
      v43 = swift_allocObject();
      *(v43 + 16) = v53;
      (v28)(v43 + v42, v54, v22);
      (v28)(v43 + v42 + v24, v52, v22);
      (v28)(v43 + v42 + v58, v51, v22);
      sub_29D50BA94(v43);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v44 = v59;
      v45 = v64;
      sub_29D5B0F3C();

      v46 = objc_opt_self();
      v47 = sub_29D5B0CAC();
      v48 = v61;
      v49 = sub_29D5B0CAC();
      v38 = [v46 predicateForRecordsWithSortDateFromStartDateComponents:v47 endDateComponents:v49];

      v39 = v63;
      v40 = *(v62 + 8);
      v40(v44, v63);
      (*(v37 + 8))(v45, v36);
      v40(v70, v39);
      v41 = v48;
    }

    v40(v41, v39);
    return v38;
  }

  return result;
}

void sub_29D50C880()
{
  if (!qword_2A1A162B8)
  {
    v0 = MEMORY[0x29EDC9C68];
    sub_29D50AEC4(255, &qword_2A1A162C0, sub_29D50B4D8, MEMORY[0x29EDC9C68]);
    sub_29D50AEC4(255, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], v0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A162B8);
    }
  }
}

char *sub_29D50C94C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v6 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v2 + 32);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *a1;
  v12[1] = *(v2 + 16);
  v13 = v8;
  v14 = v2 + v7;
  v15 = v9;
  result = sub_29D54834C(sub_29D50CB28, v12, v10);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_29D50CA34()
{
  result = qword_2A1A165D8;
  if (!qword_2A1A165D8)
  {
    sub_29D50AEC4(255, &qword_2A1A165D0, sub_29D4E3C34, MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A165D8);
  }

  return result;
}

uint64_t sub_29D50CADC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29D50CB4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D50CBB4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D50AEC4(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D50CC34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D50AEC4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D50CCA4()
{
  if (!qword_2A1A168B8)
  {
    sub_29D50B048(255, &qword_2A1A163D8, MEMORY[0x29EDC9A40]);
    sub_29D50B24C();
    v0 = sub_29D5B392C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A168B8);
    }
  }
}

void sub_29D50CD40()
{
  if (!qword_2A1A16260)
  {
    sub_29D5B0F7C();
    sub_29D50CDD4(&qword_2A1A19390, MEMORY[0x29EDB9D00]);
    v0 = sub_29D5B491C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16260);
    }
  }
}

uint64_t sub_29D50CDD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_29D50CE1C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_29D50CE80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D50CFDC();
    v3 = sub_29D5B490C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_29D5B4D4C();

      sub_29D5B3EFC();
      result = sub_29D5B4D9C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_29D5B4C7C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA1A0];
  }

  return result;
}

void sub_29D50CFDC()
{
  if (!qword_2A1A19600)
  {
    v0 = sub_29D5B491C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19600);
    }
  }
}

id sub_29D50D064(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = v2;
    sub_29D48F51C(0, &qword_2A17A4780);
    v8 = [objc_opt_self() preferredFontForTextStyle_];
    v9 = [objc_opt_self() labelColor];
    v10 = sub_29D5B461C();
    v11 = *(v2 + v3);
    *(v7 + v3) = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

void sub_29D50D15C()
{
  if (*(v0 + OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView_viewData + 8))
  {

    v1 = sub_29D50D034();
    v2 = sub_29D5B3E1C();
    [v1 setText_];

    v3 = sub_29D50D04C();
    v4 = sub_29D5B3E1C();
    [v3 setText_];

    v5 = sub_29D50D144();
    v8 = sub_29D5B3E1C();

    [v5 setText_];
  }

  else
  {
    v6 = sub_29D50D034();
    [v6 setText_];

    v7 = sub_29D50D04C();
    [v7 setText_];

    v8 = sub_29D50D144();
    [v8 setText_];
  }
}

id sub_29D50D2E0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___countLabel] = 0;
  *&v4[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___descriptionLabel] = 0;
  *&v4[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___actionLabel] = 0;
  v9 = &v4[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView_viewData];
  updated = type metadata accessor for CategoryUpdateView();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  v13.receiver = v4;
  v13.super_class = updated;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29D50D520();
  sub_29D50D62C();
  sub_29D5B450C();
  [v11 setDirectionalLayoutMargins_];

  return v11;
}

id sub_29D50D520()
{
  v1 = sub_29D50D034();
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];

  v2 = sub_29D50D04C();
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  v3 = sub_29D50D144();
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  v4 = OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___actionLabel;
  v5 = *&v0[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___actionLabel];
  v6 = [v0 tintColor];
  [v5 setTextColor_];

  [v0 addSubview_];
  [v0 addSubview_];
  v7 = *&v0[v4];

  return [v0 addSubview_];
}

void sub_29D50D62C()
{
  v41 = objc_opt_self();
  sub_29D502718(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D5B8F10;
  v2 = sub_29D50D034();
  v3 = [v2 leadingAnchor];

  v4 = [v0 layoutMarginsGuide];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___countLabel;
  v8 = [*&v0[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___countLabel] trailingAnchor];
  v9 = [v0 &off_29F3512A8 + 1];
  v10 = [v9 &selRef_imageNamed_inBundle_compatibleWithTraitCollection_ + 4];

  v11 = [v8 constraintEqualToAnchor_];
  *(v1 + 40) = v11;
  v12 = [*&v0[v7] topAnchor];
  v13 = [v0 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:12.0];

  *(v1 + 48) = v14;
  v15 = [*&v0[v7] bottomAnchor];
  v16 = sub_29D50D04C();
  v17 = [v16 topAnchor];

  v18 = [v15 &selRef:v17 setSound:-4.0 + 6];
  *(v1 + 56) = v18;
  v19 = OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___descriptionLabel;
  v20 = [*&v0[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___descriptionLabel] leadingAnchor];
  v21 = [*&v0[v7] leadingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v1 + 64) = v22;
  v23 = [*&v0[v19] trailingAnchor];
  v24 = [*&v0[v7] trailingAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v1 + 72) = v25;
  v26 = [*&v0[v19] bottomAnchor];
  v27 = sub_29D50D144();
  v28 = [v27 topAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 constant:-4.0];
  *(v1 + 80) = v29;
  v30 = OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___actionLabel;
  v31 = [*&v0[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___actionLabel] leadingAnchor];
  v32 = [*&v0[v7] leadingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v1 + 88) = v33;
  v34 = [*&v0[v30] trailingAnchor];
  v35 = [*&v0[v7] trailingAnchor];
  v36 = [v34 &selRef:v35 initWithProfileIdentifier:? + 5];

  *(v1 + 96) = v36;
  v37 = [*&v0[v30] bottomAnchor];
  v38 = [v0 layoutMarginsGuide];
  v39 = [v38 bottomAnchor];

  v40 = [v37 &selRef:v39 initWithProfileIdentifier:? + 5];
  *(v1 + 104) = v40;
  sub_29D48F51C(0, &qword_2A17A3F80);
  v42 = sub_29D5B401C();

  [v41 activateConstraints_];
}

id sub_29D50DC0C()
{
  v1 = qword_2A17A4760;
  v2 = *(v0 + qword_2A17A4760);
  if (v2)
  {
    v3 = *(v0 + qword_2A17A4760);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CategoryUpdateView()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29D50DC8C()
{
  v1 = sub_29D5B200C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D510584(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v14 - v6;
  updated = type metadata accessor for CategoryUpdateViewController();
  v14.receiver = v0;
  v14.super_class = updated;
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  v9 = [v0 view];
  if (v9)
  {
    v10 = v9;
    v11 = sub_29D50DC0C();
    [v10 addSubview_];

    sub_29D50E254();
    sub_29D50E550();
    v12 = sub_29D5B0EFC();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    sub_29D5B1FFC();
    sub_29D5B2A0C();
    (*(v2 + 8))(v4, v1);
    sub_29D510724(v7, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    v13 = sub_29D5B3E1C();

    [v0 setTitle_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D50DF08(void *a1)
{
  v1 = a1;
  sub_29D50DC8C();
}

uint64_t sub_29D50DF50@<X0>(char *a1@<X8>)
{
  sub_29D510584(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_29D5B0E6C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v24 - v11;
  v13 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  sub_29D5105D8(v1 + v13, v5);
  v14 = type metadata accessor for SharedNewRecordsAlertData(0);
  if ((*(*(v14 - 8) + 48))(v5, 1, v14))
  {
    sub_29D510724(v5, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData);
    v15 = MEMORY[0x29EDC2198];
  }

  else
  {
    (*(v7 + 16))(v10, &v5[*(v14 + 32)], v6);
    sub_29D510724(v5, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData);
    v16 = *(v7 + 32);
    v16(v12, v10, v6);
    sub_29D4B971C();
    v18 = *(v17 + 48);
    v16(a1, v12, v6);
    v19 = *MEMORY[0x29EDC2188];
    v20 = sub_29D5B2E8C();
    (*(*(v20 - 8) + 104))(&a1[v18], v19, v20);
    v15 = MEMORY[0x29EDC2190];
  }

  v21 = *v15;
  v22 = sub_29D5B2E9C();
  return (*(*(v22 - 8) + 104))(a1, v21, v22);
}

void sub_29D50E254()
{
  sub_29D502718(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D5B8F20;
  v2 = sub_29D50DC0C();
  v3 = [v2 leadingAnchor];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 leadingAnchor];

  v7 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v7;
  v8 = qword_2A17A4760;
  v9 = [*&v0[qword_2A17A4760] trailingAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 trailingAnchor];

  v13 = [v9 constraintEqualToAnchor_];
  *(v1 + 40) = v13;
  v14 = [*&v0[v8] topAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v1 + 48) = v18;
  v19 = [*&v0[v8] bottomAnchor];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = objc_opt_self();
  v23 = [v21 bottomAnchor];

  v24 = [v19 constraintEqualToAnchor_];
  *(v1 + 56) = v24;
  sub_29D48F51C(0, &qword_2A17A3F80);
  v25 = sub_29D5B401C();

  [v22 activateConstraints_];
}

uint64_t sub_29D50E550()
{
  v98 = sub_29D5B200C();
  v1 = *(v98 - 8);
  MEMORY[0x2A1C7C4A8](v98);
  v3 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D510584(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v87 - v5;
  sub_29D510584(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v87 - v8;
  v10 = type metadata accessor for SharedNewRecordsAlertData(0);
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x60);
  swift_beginAccess();
  sub_29D5105D8(v0 + v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_29D510724(v9, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData);
  }

  v90 = v0;
  sub_29D510658(v9, v13);
  v16 = *&v13[*(v10 + 20)];
  v17 = sub_29D5B0EFC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v96 = v18 + 56;
  v97 = v19;
  v19(v6, 1, 1, v17);
  sub_29D5B1FEC();
  sub_29D5106BC(0, &qword_2A1A195B0, &qword_2A1A19590, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v92 = v20;
  v21 = swift_allocObject();
  v87 = xmmword_29D5B5E20;
  *(v21 + 16) = xmmword_29D5B5E20;
  v22 = *(v10 + 28);
  v95 = v13;
  v23 = &v13[v22];
  v24 = v1;
  v25 = *v23;
  v26 = *(v23 + 1);
  *(v21 + 56) = MEMORY[0x29EDC99B0];
  v27 = sub_29D4A25A4();
  *(v21 + 32) = v25;
  *(v21 + 40) = v26;
  v28 = MEMORY[0x29EDC9C10];
  *(v21 + 96) = MEMORY[0x29EDC9BA8];
  *(v21 + 104) = v28;
  v88 = v27;
  v89 = v16;
  *(v21 + 64) = v27;
  *(v21 + 72) = v16;

  sub_29D5B2A0C();

  v29 = *(v24 + 8);
  v29(v3, v98);
  sub_29D510724(v6, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  v91 = sub_29D5B3E2C();
  v31 = v30;
  v32 = v97;

  v33 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v33 = v25 & 0xFFFFFFFFFFFFLL;
  }

  v93 = v29;
  v94 = v17;
  if (v33)
  {
    v34 = v98;
  }

  else
  {

    v32(v6, 1, 1, v17);
    sub_29D5B1FEC();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_29D5B62A0;
    *(v35 + 56) = MEMORY[0x29EDC9BA8];
    *(v35 + 64) = MEMORY[0x29EDC9C10];
    *(v35 + 32) = v89;
    sub_29D5B2A0C();

    v34 = v98;
    v29(v3, v98);
    sub_29D510724(v6, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    v91 = sub_29D5B3E2C();
    v31 = v36;
  }

  v38 = sub_29D5959C4(v37);

  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = sub_29D515968(*(v38 + 16), 0);
    v41 = sub_29D5A24A8(&v99, v40 + 4, v39, v38);
    sub_29D4B30C0();
    if (v41 == v39)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v40 = MEMORY[0x29EDCA190];
LABEL_12:
  v89 = v31;
  v99 = v40;

  sub_29D50FAC0(&v99);
  v42 = v94;
  v43 = v97;

  v44 = v99;
  v45 = *(v99 + 2);
  if (v45 <= 1)
  {
    if (!v45)
    {

      v46 = 0;
      v47 = 0xE000000000000000;
      goto LABEL_29;
    }

    if (v45 == 1)
    {
      v46 = *(v99 + 4);
      v47 = *(v99 + 5);

LABEL_29:
      v43(v6, 1, 1, v42);
      goto LABEL_30;
    }

LABEL_21:
    v43(v6, 1, 1, v42);
    sub_29D5B1FFC();
    sub_29D5B2A0C();
    v58 = v57;
    v93(v3, v98);
    sub_29D510724(v6, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_29D5B6320;
    v60 = MEMORY[0x29EDC99B0];
    v61 = v88;
    *(v59 + 56) = MEMORY[0x29EDC99B0];
    *(v59 + 64) = v61;
    v62 = *(v44 + 2);
    if (v62)
    {
      v63 = v59;
      v92 = v58;
      v64 = *(v44 + 5);
      v63[4] = *(v44 + 4);
      v63[5] = v64;
      v63[12] = v60;
      v63[13] = v61;
      if (v62 != 1)
      {
        v65 = *(v44 + 6);
        v66 = *(v44 + 7);

        v63[9] = v65;
        v63[10] = v66;
        v63[17] = MEMORY[0x29EDC9BA8];
        v63[18] = MEMORY[0x29EDC9C10];
        v63[14] = v45 - 2;
        v46 = sub_29D5B3E6C();
        v47 = v67;

        v34 = v98;
LABEL_28:
        v42 = v94;
        v43 = v97;
        goto LABEL_29;
      }

      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_33;
  }

  if (v45 == 2)
  {
    v43(v6, 1, 1, v42);
    sub_29D5B1FFC();
    sub_29D5B2A0C();
    v69 = v68;
    v93(v3, v34);
    sub_29D510724(v6, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    v70 = swift_allocObject();
    *(v70 + 16) = v87;
    v71 = MEMORY[0x29EDC99B0];
    v72 = v88;
    *(v70 + 56) = MEMORY[0x29EDC99B0];
    *(v70 + 64) = v72;
    v73 = *(v44 + 2);
    if (v73)
    {
      v74 = v70;
      v92 = v69;
      v75 = *(v44 + 5);
      v74[4] = *(v44 + 4);
      v74[5] = v75;
      v74[12] = v71;
      v74[13] = v72;
      if (v73 != 1)
      {
        v76 = *(v44 + 6);
        v77 = *(v44 + 7);

        v74[9] = v76;
        v74[10] = v77;
        v46 = sub_29D5B3E6C();
        v47 = v78;

        goto LABEL_28;
      }

LABEL_37:
      __break(1u);

      __break(1u);
      return result;
    }

    goto LABEL_34;
  }

  if (v45 != 3)
  {
    goto LABEL_21;
  }

  v43(v6, 1, 1, v42);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  v93(v3, v34);
  sub_29D510724(v6, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_29D5B6320;
  v49 = MEMORY[0x29EDC99B0];
  v50 = v88;
  *(v48 + 56) = MEMORY[0x29EDC99B0];
  *(v48 + 64) = v50;
  v51 = *(v44 + 2);
  if (!v51)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v52 = v48;
  v53 = *(v44 + 5);
  v52[4] = *(v44 + 4);
  v52[5] = v53;
  v52[12] = v49;
  v52[13] = v50;
  if (v51 == 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v54 = *(v44 + 6);
  v55 = *(v44 + 7);
  v52[9] = v54;
  v52[10] = v55;
  v52[17] = v49;
  v52[18] = v50;

  swift_bridgeObjectRetain_n();

  v52[14] = v54;
  v52[15] = v55;
  v46 = sub_29D5B3E6C();
  v47 = v56;

  v34 = v98;
  v97(v6, 1, 1, v94);
LABEL_30:
  sub_29D5B1FFC();
  v79 = sub_29D5B2A0C();
  v81 = v80;
  v93(v3, v34);
  sub_29D510724(v6, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  v82 = sub_29D50DC0C();
  v83 = &v82[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView_viewData];
  v84 = *&v82[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView_viewData];
  v85 = *&v82[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView_viewData + 8];
  v86 = v89;
  *v83 = v91;
  v83[1] = v86;
  v83[2] = v46;
  v83[3] = v47;
  v83[4] = v79;
  v83[5] = v81;
  sub_29D510780(v84, v85);
  sub_29D50D15C();

  return sub_29D5107D0(v95);
}

uint64_t sub_29D50F134(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  result = sub_29D4A9434(v2 + v4, v22);
  v6 = v23;
  if (v23)
  {
    v7 = sub_29D499EC0(v22, v23);
    v8 = *(v6 - 8);
    MEMORY[0x2A1C7C4A8](v7);
    v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v10);
    v11 = sub_29D5B314C();
    (*(v8 + 8))(v10, v6);
    v12 = sub_29D5B423C();

    v13 = objc_allocWithZone(type metadata accessor for LabListViewController());
    v14 = sub_29D585CA0(v12);

    sub_29D48F668(v22);
    sub_29D5104F8(a1, v22);
    v15 = v23;
    if (v23)
    {
      v16 = sub_29D499EC0(v22, v23);
      v17 = *(v15 - 8);
      MEMORY[0x2A1C7C4A8](v16);
      v19 = &v21[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v17 + 16))(v19);
      v20 = sub_29D5B4C6C();
      (*(v17 + 8))(v19, v15);
      sub_29D48F668(v22);
    }

    else
    {
      v20 = 0;
    }

    [v2 showViewController:v14 sender:v20];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29D50F3DC(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[qword_2A17A4748] = 0;
  *&v3[qword_2A17A4750] = 0;
  *&v3[qword_2A17A4758] = 0;
  *&v3[qword_2A17A4760] = 0;
  v6 = qword_2A17ABF40;
  v7 = *MEMORY[0x29EDC1E68];
  v8 = sub_29D5B2CAC();
  (*(*(v8 - 8) + 104))(&v3[v6], v7, v8);
  if (a2)
  {
    v9 = sub_29D5B3E1C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for CategoryUpdateViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id sub_29D50F4F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D50F3DC(v5, v7, a4);
}

id sub_29D50F554(void *a1)
{
  *&v1[qword_2A17A4748] = 0;
  *&v1[qword_2A17A4750] = 0;
  *&v1[qword_2A17A4758] = 0;
  *&v1[qword_2A17A4760] = 0;
  v3 = qword_2A17ABF40;
  v4 = *MEMORY[0x29EDC1E68];
  v5 = sub_29D5B2CAC();
  (*(*(v5 - 8) + 104))(&v1[v3], v4, v5);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CategoryUpdateViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_29D50F668()
{
  v1 = qword_2A17ABF40;
  v2 = sub_29D5B2CAC();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_29D50F72C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_29D50F764(uint64_t a1)
{
  v2 = qword_2A17ABF40;
  v3 = sub_29D5B2CAC();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t type metadata accessor for CategoryUpdateViewController()
{
  result = qword_2A17A4768;
  if (!qword_2A17A4768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D50F85C()
{
  result = sub_29D5B2CAC();
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

__n128 sub_29D50F904(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_29D50F918(uint64_t a1, int a2)
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

uint64_t sub_29D50F960(uint64_t result, int a2, int a3)
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

uint64_t sub_29D50F9C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_2A17ABF40;
  v5 = sub_29D5B2CAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_29D50FA68()
{
  result = qword_2A17A4778;
  if (!qword_2A17A4778)
  {
    type metadata accessor for CategoryUpdateViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4778);
  }

  return result;
}

uint64_t sub_29D50FAC0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_29D4C7C78(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_29D50FB2C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_29D50FB2C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_29D5B4C3C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x29EDCA190];
      }

      else
      {
        v5 = sub_29D5B409C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_29D50FCF4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_29D50FC24(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_29D50FC24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_29D5B4C7C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_29D50FCF4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x29EDCA190];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_29D4C6A64(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_29D5102D0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x29EDCA190];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_29D5B4C7C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_29D5B4C7C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_29D514BF8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_29D514BF8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_29D5102D0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_29D4C6A64(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_29D4C69D8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_29D5B4C7C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_29D5102D0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_29D5B4C7C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_29D5B4C7C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_29D5104F8(uint64_t a1, uint64_t a2)
{
  sub_29D502718(0, &qword_2A17A4DA0, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D510584(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D5105D8(uint64_t a1, uint64_t a2)
{
  sub_29D510584(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D510658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedNewRecordsAlertData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D5106BC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D4A02FC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D510724(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D510584(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D510780(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_29D5107D0(uint64_t a1)
{
  v2 = type metadata accessor for SharedNewRecordsAlertData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_29D51082C(uint64_t a1)
{
  v108 = *v1;
  v109 = v1;
  sub_29D512440();
  v81 = v3;
  v80 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v77 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HealthRecordsGeneratorContext();
  v105 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v106 = v6;
  v107 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D512584(0, &qword_2A1A19628, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v85 = &v76 - v8;
  v84 = sub_29D5B43DC();
  v83 = *(v84 - 8);
  MEMORY[0x2A1C7C4A8](v84);
  v82 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_29D5B181C();
  v102 = *(v104 - 8);
  MEMORY[0x2A1C7C4A8](v104);
  v103 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5125E8();
  v79 = v11;
  v78 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v76 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5126E0();
  v90 = v13;
  v88 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v86 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D512814();
  v91 = v15;
  v89 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v87 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D5B43EC();
  v100 = *(v17 - 8);
  v101 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v99 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_29D5B439C();
  MEMORY[0x2A1C7C4A8](v98);
  v97 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D5B3CAC();
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v96 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_29D5B13CC();
  v22 = *(v95 - 8);
  MEMORY[0x2A1C7C4A8](v95);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_29D5B13EC();
  v25 = *(v94 - 8);
  MEMORY[0x2A1C7C4A8](v94);
  v27 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a1;
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords29SharedConceptFeedItemPipeline_context);
  v92 = sub_29D5B143C();
  sub_29D512584(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v28 = sub_29D5B104C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_29D5B5E20;
  v33 = v32 + v31;
  v34 = *(v29 + 104);
  v34(v33, *MEMORY[0x29EDC3730], v28);
  v34(v33 + v30, *MEMORY[0x29EDC36E0], v28);
  (*(v22 + 104))(v24, *MEMORY[0x29EDC38A0], v95);
  v35 = MEMORY[0x29EDCA190];
  sub_29D5B13DC();
  (*(v25 + 32))(v109 + OBJC_IVAR____TtC13HealthRecords29SharedConceptFeedItemPipeline_domain, v27, v94);
  v36 = v93;
  v37 = sub_29D48F51C(0, &qword_2A1A1A420);
  sub_29D5B3C9C();
  v111[0] = v35;
  sub_29D512D4C(&qword_2A1A19630, MEMORY[0x29EDCA288]);
  sub_29D512584(0, &qword_2A1A19670, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
  sub_29D5128C0();
  sub_29D5B47CC();
  (*(v100 + 104))(v99, *MEMORY[0x29EDCA2A8], v101);
  v38 = sub_29D5B441C();
  v39 = sub_29D5B143C();
  v40 = sub_29D5B10DC();
  LOBYTE(v24) = sub_29D5B10CC();

  v41 = (v102 + 8);
  sub_29D5B13FC();
  sub_29D499EC0(v111, v111[3]);
  if (v24)
  {
    v42 = v103;
    sub_29D5B180C();
    v43 = sub_29D5B172C();
    (*v41)(v42, v104);
    v110[5] = v43;
    sub_29D5B1CBC();
    v44 = sub_29D5B1C8C();
    sub_29D5B140C();
    sub_29D499EC0(v110, v110[3]);
    v45 = sub_29D5B136C();
    v46 = [v45 profileIdentifier];

    sub_29D5B1C3C();
    sub_29D48F668(v110);
    v47 = sub_29D5B363C();

    v110[0] = v47;
    sub_29D5124EC();
    v48 = MEMORY[0x29EDC82A0];
    sub_29D5129F4(0, &qword_2A1A167F8, MEMORY[0x29EDC82A0]);
    v104 = v37;
    sub_29D512D4C(&qword_2A1A16760, sub_29D5124EC);
    sub_29D512A58(&qword_2A1A16800, &qword_2A1A167F8, v48);
    v49 = v76;
    sub_29D5B3B6C();

    sub_29D48F668(v111);
    v50 = v82;
    sub_29D5B43CC();
    v111[0] = v38;
    v51 = v38;
    v52 = sub_29D5B43BC();
    v53 = v85;
    (*(*(v52 - 8) + 56))(v85, 1, 1, v52);
    sub_29D512D4C(&qword_2A1A172B0, sub_29D5125E8);
    sub_29D5127AC();
    v54 = v86;
    v55 = v79;
    sub_29D5B3C2C();
    sub_29D499F04(v53);
    (*(v83 + 8))(v50, v84);
    (*(v78 + 8))(v49, v55);
    v56 = v107;
    sub_29D499E5C(v36, v107);
    v57 = (*(v105 + 80) + 16) & ~*(v105 + 80);
    v58 = (v106 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    sub_29D499F90(v56, v59 + v57);
    *(v59 + v58) = v108;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_29D512B9C;
    *(v60 + 24) = v59;
    sub_29D499B38();
    sub_29D512D4C(&qword_2A1A16960, sub_29D5126E0);
    v61 = v87;
    v62 = v90;
    sub_29D5B3B2C();

    (*(v88 + 8))(v54, v62);
    sub_29D512D4C(&qword_2A1A17188, sub_29D512814);
    v63 = v91;
    v64 = sub_29D5B3AFC();
    (*(v89 + 8))(v61, v63);
    v111[0] = v64;
    sub_29D5129F4(0, &qword_2A1A16808, sub_29D499B38);
    sub_29D512A58(&qword_2A1A16810, &qword_2A1A16808, sub_29D499B38);
    v65 = sub_29D5B3B1C();
  }

  else
  {
    v66 = v103;
    sub_29D5B180C();
    v67 = sub_29D5B172C();
    (*v41)(v66, v104);
    v110[0] = v67;
    v68 = v107;
    sub_29D499E5C(v36, v107);
    v69 = (*(v105 + 80) + 16) & ~*(v105 + 80);
    v70 = (v106 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    sub_29D499F90(v68, v71 + v69);
    *(v71 + v70) = v108;
    sub_29D5124EC();
    sub_29D499B38();
    sub_29D512D4C(&qword_2A1A16760, sub_29D5124EC);
    v72 = v77;
    sub_29D5B3B2C();

    sub_29D48F668(v111);
    sub_29D512D4C(&qword_2A17A4788, sub_29D512440);
    v73 = v81;
    v74 = sub_29D5B3AFC();
    (*(v80 + 8))(v72, v73);
    v111[0] = v74;
    sub_29D5129F4(0, &qword_2A1A16808, sub_29D499B38);
    sub_29D512A58(&qword_2A1A16810, &qword_2A1A16808, sub_29D499B38);
    v65 = sub_29D5B3B1C();
  }

  sub_29D49A104(v36);

  result = v109;
  v109[2] = v65;
  return result;
}

uint64_t sub_29D5118FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t **a4@<X8>)
{
  v8 = type metadata accessor for HealthRecordsGeneratorContext();
  v9 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v45[-v12];
  v49 = sub_29D5B371C();
  v14 = *(v49 - 8);
  MEMORY[0x2A1C7C4A8](v49);
  v16 = &v45[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D5B36AC();
  sub_29D499E5C(a2, v13);

  v17 = sub_29D5B370C();
  v18 = sub_29D5B426C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v48 = a4;
    v20 = v19;
    v47 = swift_slowAlloc();
    v50 = v47;
    v51[0] = a3;
    *v20 = 136446978;
    swift_getMetatypeMetadata();
    v21 = sub_29D5B3E7C();
    v23 = sub_29D501890(v21, v22, &v50);
    v46 = v18;
    v24 = v23;

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v51[0] = type metadata accessor for SharedConceptFeedItemGenerator(0);
    sub_29D4B34E8(0);
    v25 = sub_29D5B3E7C();
    v27 = sub_29D501890(v25, v26, &v50);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2082;
    v51[0] = a1;
    sub_29D512584(0, &qword_2A1A16448, MEMORY[0x29EDC3B08], MEMORY[0x29EDC9A40]);

    sub_29D5B4CAC();
    v28 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v29 = sub_29D5B3E7C();
    v31 = sub_29D501890(v29, v30, &v50);

    *(v20 + 24) = v31;
    *(v20 + 32) = 2082;
    v32 = sub_29D5B143C();
    v33 = sub_29D5B10AC();

    v51[0] = v33;
    sub_29D512D94();
    sub_29D5B4CAC();
    v34 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v35 = sub_29D5B3E7C();
    v37 = v36;
    sub_29D49A104(v13);
    v38 = sub_29D501890(v35, v37, &v50);

    *(v20 + 34) = v38;
    _os_log_impl(&dword_29D48C000, v17, v46, "[%{public}s]: Emitting %{public}s, with sharable model changes: %{public}s, for profile: %{public}s", v20, 0x2Au);
    v39 = v47;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v39, -1, -1);
    v40 = v20;
    a4 = v48;
    MEMORY[0x29ED5FB80](v40, -1, -1);
  }

  else
  {

    sub_29D49A104(v13);
  }

  (*(v14 + 8))(v16, v49);
  sub_29D499E5C(a2, v11);

  sub_29D5B140C();
  sub_29D499EC0(v51, v51[3]);
  v41 = sub_29D5B136C();
  v42 = type metadata accessor for SharedConceptFeedItemGenerator(0);
  swift_allocObject();
  v43 = sub_29D4B2930(v11, a1, v41);

  sub_29D48F668(v51);
  a4[3] = v42;
  result = sub_29D512D4C(&qword_2A1A17D60, type metadata accessor for SharedConceptFeedItemGenerator);
  a4[4] = result;
  *a4 = v43;
  return result;
}

uint64_t sub_29D511DE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v8 = type metadata accessor for HealthRecordsGeneratorContext();
  v9 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v46 - v12;
  v49 = sub_29D5B371C();
  v14 = *(v49 - 8);
  MEMORY[0x2A1C7C4A8](v49);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_29D5B36AC();
  v50 = a2;
  sub_29D499E5C(a2, v13);

  v18 = sub_29D5B370C();
  v19 = sub_29D5B426C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48 = a4;
    v21 = v20;
    v47 = swift_slowAlloc();
    v52 = v47;
    *v21 = 136446978;
    v51 = a3;
    swift_getMetatypeMetadata();
    v22 = sub_29D5B3E7C();
    v24 = sub_29D501890(v22, v23, &v52);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    v51 = type metadata accessor for SharedConceptFeedItemGenerator(0);
    sub_29D4B34E8(0);
    v25 = sub_29D5B3E7C();
    v27 = sub_29D501890(v25, v26, &v52);

    *(v21 + 14) = v27;
    *(v21 + 22) = 2082;
    v51 = v17;
    sub_29D512584(0, &qword_2A1A16448, MEMORY[0x29EDC3B08], MEMORY[0x29EDC9A40]);

    sub_29D5B4CAC();
    v28 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v29 = sub_29D5B3E7C();
    v31 = sub_29D501890(v29, v30, &v52);

    *(v21 + 24) = v31;
    *(v21 + 32) = 2082;
    v32 = sub_29D5B143C();
    v33 = sub_29D5B10AC();

    v51 = v33;
    sub_29D512D94();
    sub_29D5B4CAC();
    v34 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v35 = sub_29D5B3E7C();
    v37 = v36;
    sub_29D49A104(v13);
    v38 = sub_29D501890(v35, v37, &v52);

    *(v21 + 34) = v38;
    _os_log_impl(&dword_29D48C000, v18, v19, "[%{public}s]: Emitting %{public}s, with sharable model changes: %{public}s, for profile: %{public}s", v21, 0x2Au);
    v39 = v47;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v39, -1, -1);
    v40 = v21;
    a4 = v48;
    MEMORY[0x29ED5FB80](v40, -1, -1);
  }

  else
  {

    sub_29D49A104(v13);
  }

  (*(v14 + 8))(v16, v49);
  sub_29D499E5C(v50, v11);
  v41 = objc_allocWithZone(MEMORY[0x29EDBABE8]);

  v42 = [v41 init];
  v43 = type metadata accessor for SharedConceptFeedItemGenerator(0);
  swift_allocObject();
  v44 = sub_29D4B2930(v11, v17, v42);

  a4[3] = v43;
  result = sub_29D512D4C(&qword_2A1A17D60, type metadata accessor for SharedConceptFeedItemGenerator);
  a4[4] = result;
  *a4 = v44;
  return result;
}

uint64_t sub_29D5122BC()
{

  v1 = OBJC_IVAR____TtC13HealthRecords29SharedConceptFeedItemPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords29SharedConceptFeedItemPipeline_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharedConceptFeedItemPipeline()
{
  result = qword_2A1A17F00;
  if (!qword_2A1A17F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5123C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords29SharedConceptFeedItemPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D512440()
{
  if (!qword_2A1A171F0)
  {
    sub_29D5124EC();
    sub_29D499B38();
    sub_29D512D4C(&qword_2A1A16760, sub_29D5124EC);
    v0 = sub_29D5B37CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A171F0);
    }
  }
}

void sub_29D5124EC()
{
  if (!qword_2A1A16758)
  {
    sub_29D512584(255, &qword_2A1A16448, MEMORY[0x29EDC3B08], MEMORY[0x29EDC9A40]);
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16758);
    }
  }
}

void sub_29D512584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D5125E8()
{
  if (!qword_2A1A172A8)
  {
    sub_29D5124EC();
    v0 = MEMORY[0x29EDC82A0];
    sub_29D5129F4(255, &qword_2A1A167F8, MEMORY[0x29EDC82A0]);
    sub_29D512D4C(&qword_2A1A16760, sub_29D5124EC);
    sub_29D512A58(&qword_2A1A16800, &qword_2A1A167F8, v0);
    v1 = sub_29D5B379C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A172A8);
    }
  }
}

void sub_29D5126E0()
{
  if (!qword_2A1A16958)
  {
    sub_29D5125E8();
    sub_29D48F51C(255, &qword_2A1A1A420);
    sub_29D512D4C(&qword_2A1A172B0, sub_29D5125E8);
    sub_29D5127AC();
    v0 = sub_29D5B390C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16958);
    }
  }
}

unint64_t sub_29D5127AC()
{
  result = qword_2A1A19620;
  if (!qword_2A1A19620)
  {
    sub_29D48F51C(255, &qword_2A1A1A420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A19620);
  }

  return result;
}

void sub_29D512814()
{
  if (!qword_2A1A17180)
  {
    sub_29D5126E0();
    sub_29D499B38();
    sub_29D512D4C(&qword_2A1A16960, sub_29D5126E0);
    v0 = sub_29D5B37CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17180);
    }
  }
}

unint64_t sub_29D5128C0()
{
  result = qword_2A1A19668;
  if (!qword_2A1A19668)
  {
    sub_29D512584(255, &qword_2A1A19670, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A19668);
  }

  return result;
}

uint64_t sub_29D512948@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D511DE4(a1, v2 + v6, v7, a2);
}

void sub_29D5129F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B398C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D512A58(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D5129F4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D512AA8()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D512B9C@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D5118FC(a1, v2 + v6, v7, a2);
}

uint64_t sub_29D512C50(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  sub_29D512CAC();
  return v3(v4, &a1[*(v5 + 48)]);
}

void sub_29D512CAC()
{
  if (!qword_2A1A16440)
  {
    sub_29D512584(255, &qword_2A1A16448, MEMORY[0x29EDC3B08], MEMORY[0x29EDC9A40]);
    sub_29D5B368C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A16440);
    }
  }
}

uint64_t sub_29D512D4C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D512D94()
{
  if (!qword_2A1A16328)
  {
    sub_29D48F51C(255, &qword_2A1A16330);
    v0 = sub_29D5B472C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16328);
    }
  }
}

uint64_t type metadata accessor for ClinicalSharingFeedItemData()
{
  result = qword_2A17A4790;
  if (!qword_2A17A4790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D512E70()
{
  result = sub_29D5B0EDC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29D512EF4(void *a1)
{
  sub_29D5139C0(0, &qword_2A17A47B8, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9[-v6];
  sub_29D499EC0(a1, a1[3]);
  sub_29D5138AC();
  sub_29D5B4DCC();
  v9[15] = 0;
  sub_29D5B0EDC();
  sub_29D513E84(&qword_2A1A193B8, MEMORY[0x29EDB9C08]);
  sub_29D5B4C0C();
  if (!v1)
  {
    type metadata accessor for ClinicalSharingFeedItemData();
    v9[14] = 1;
    sub_29D5B4BCC();
    v9[13] = 2;
    sub_29D5B4BFC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29D5130F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_29D5B0EDC();
  v27 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v28 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5139C0(0, &qword_2A17A47A8, MEMORY[0x29EDC9E80]);
  v29 = v6;
  v26 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for ClinicalSharingFeedItemData();
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D5138AC();
  sub_29D5B4DBC();
  if (v2)
  {
    return sub_29D48F668(a1);
  }

  v13 = v26;
  v12 = v27;
  v23 = v9;
  v24 = v11;
  v32 = 0;
  sub_29D513E84(&qword_2A17A4030, MEMORY[0x29EDB9C08]);
  v15 = v28;
  v14 = v29;
  sub_29D5B4B6C();
  (*(v12 + 32))(v24, v15, v4);
  v31 = 1;
  v16 = sub_29D5B4B2C();
  v17 = &v24[*(v23 + 20)];
  *v17 = v16;
  v17[1] = v18;
  v30 = 2;
  v19 = sub_29D5B4B5C();
  (*(v13 + 8))(v8, v14);
  v20 = v24;
  *&v24[*(v23 + 24)] = v19;
  sub_29D513900(v20, v25);
  sub_29D48F668(a1);
  return sub_29D513964(v20);
}

uint64_t sub_29D5134A8()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

uint64_t sub_29D513508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D513FE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D513530(uint64_t a1)
{
  v2 = sub_29D5138AC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D51356C(uint64_t a1)
{
  v2 = sub_29D5138AC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D5135D8(uint64_t a1)
{
  sub_29D5B4D4C();
  sub_29D5B0EDC();
  sub_29D513E84(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
  sub_29D5B3D9C();
  sub_29D5B3EFC();
  MEMORY[0x29ED5F330](*(v1 + *(a1 + 24)));
  return sub_29D5B4D9C();
}

uint64_t sub_29D513690(uint64_t a1, uint64_t a2)
{
  sub_29D5B0EDC();
  sub_29D513E84(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
  sub_29D5B3D9C();
  sub_29D5B3EFC();
  return MEMORY[0x29ED5F330](*(v2 + *(a2 + 24)));
}

uint64_t sub_29D513730(uint64_t a1, uint64_t a2)
{
  sub_29D5B4D4C();
  sub_29D5B0EDC();
  sub_29D513E84(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
  sub_29D5B3D9C();
  sub_29D5B3EFC();
  MEMORY[0x29ED5F330](*(v2 + *(a2 + 24)));
  return sub_29D5B4D9C();
}

BOOL sub_29D5137E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_29D5B0EAC() & 1) != 0 && ((v6 = *(a3 + 20), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (sub_29D5B4C7C()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29D5138AC()
{
  result = qword_2A17A47B0;
  if (!qword_2A17A47B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A47B0);
  }

  return result;
}

uint64_t sub_29D513900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingFeedItemData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D513964(uint64_t a1)
{
  v2 = type metadata accessor for ClinicalSharingFeedItemData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D5139C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D5138AC();
    v7 = a3(a1, &type metadata for ClinicalSharingFeedItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D513A24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D5B0EDC();
  v42 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_29D5B371C();
  v7 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36CC();
  v10 = a1;
  v11 = sub_29D5B370C();
  v12 = sub_29D5B429C();

  v13 = os_log_type_enabled(v11, v12);
  v41 = v4;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v40 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v44 = v16;
    *v15 = 136315138;
    v17 = [v10 identifier];
    sub_29D5B0EBC();

    sub_29D513E84(&unk_2A17A3A20, MEMORY[0x29EDB9C08]);
    v18 = sub_29D5B4C4C();
    v19 = v4;
    v21 = v20;
    (*(v42 + 8))(v6, v19);
    v22 = sub_29D501890(v18, v21, &v44);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_29D48C000, v11, v12, "Creating clinical acount sharing information for account: %s", v15, 0xCu);
    sub_29D48F668(v16);
    MEMORY[0x29ED5FB80](v16, -1, -1);
    v23 = v15;
    a2 = v40;
    MEMORY[0x29ED5FB80](v23, -1, -1);
  }

  (*(v7 + 8))(v9, v43);
  v24 = [v10 provenance];
  v25 = [v24 type];

  if (v25)
  {

    v26 = type metadata accessor for ClinicalSharingFeedItemData();
    return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
  }

  else
  {
    v28 = [v10 identifier];
    sub_29D5B0EBC();

    v29 = [v10 provenance];
    v30 = [v29 title];

    v31 = sub_29D5B3E5C();
    v33 = v32;

    [v10 state];
    v34 = [v10 clinicalSharingStatus];
    v35 = v6;
    v36 = [v34 multiDeviceStatus];

    (*(v42 + 32))(a2, v35, v41);
    v37 = type metadata accessor for ClinicalSharingFeedItemData();
    v38 = (a2 + *(v37 + 20));
    *v38 = v31;
    v38[1] = v33;
    *(a2 + *(v37 + 24)) = v36;
    return (*(*(v37 - 8) + 56))(a2, 0, 1, v37);
  }
}

uint64_t sub_29D513E84(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D513EE0()
{
  result = qword_2A17A47C0;
  if (!qword_2A17A47C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A47C0);
  }

  return result;
}

unint64_t sub_29D513F38()
{
  result = qword_2A17A47C8;
  if (!qword_2A17A47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A47C8);
  }

  return result;
}

unint64_t sub_29D513F90()
{
  result = qword_2A17A47D0;
  if (!qword_2A17A47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A47D0);
  }

  return result;
}

uint64_t sub_29D513FE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000064;
  if (v4 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000029D5BD470 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_29D5B4C7C();

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

uint64_t type metadata accessor for ShowAllCategoryActionHandler()
{
  result = qword_2A17A47D8;
  if (!qword_2A17A47D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D514194(uint64_t a1)
{
  v2 = sub_29D5B32CC();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_29D5B30FC();
  (*(v3 + 8))(a1, v2);
  return v6;
}

unint64_t sub_29D5142A8()
{
  result = qword_2A17A4410;
  if (!qword_2A17A4410)
  {
    type metadata accessor for ShowAllCategoryActionHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4410);
  }

  return result;
}

void sub_29D514300()
{
  if (qword_2A1A19618 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A1A7C8;
  v1 = objc_allocWithZone(sub_29D5B2AEC());
  v2 = v0;
  v3 = sub_29D5B2ADC();
  sub_29D5143B8();
  v4 = sub_29D5B430C();
  [v4 addOperation_];
}

unint64_t sub_29D5143B8()
{
  result = qword_2A17A43D8;
  if (!qword_2A17A43D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17A43D8);
  }

  return result;
}

uint64_t sub_29D514404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v30 = sub_29D5B1D6C();
  MEMORY[0x2A1C7C4A8](v30);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v9 = *(v4 + 16);
    v8 = v4 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v28 = *(v8 + 56);
    v29 = v9;
    v11 = (v8 - 8);
    v12 = MEMORY[0x29EDCA190];
    do
    {
      v13 = v30;
      v14 = v8;
      v29(v6, v10, v30);
      v31 = sub_29D5B1D0C();
      v15 = sub_29D5B4C4C();
      v17 = v16;
      (*v11)(v6, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_29D514C4C(0, *(v12 + 2) + 1, 1, v12);
      }

      v19 = *(v12 + 2);
      v18 = *(v12 + 3);
      if (v19 >= v18 >> 1)
      {
        v12 = sub_29D514C4C((v18 > 1), v19 + 1, 1, v12);
      }

      *(v12 + 2) = v19 + 1;
      v20 = &v12[16 * v19];
      *(v20 + 4) = v15;
      *(v20 + 5) = v17;
      v10 += v28;
      --v7;
      v8 = v14;
    }

    while (v7);
  }

  else
  {
    v12 = MEMORY[0x29EDCA190];
  }

  v31 = v12;
  sub_29D51726C(0, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  sub_29D49823C();
  v21 = sub_29D5B3DBC();
  v23 = v22;

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_29D5B49DC();
  sub_29D5B3DAC();
  MEMORY[0x29ED5E510](808333686, 0xE400000000000000);
  sub_29D5B3DAC();
  MEMORY[0x29ED5E510](v21, v23);

  sub_29D5B3DAC();
  MEMORY[0x29ED5E510](v26, v27);
  return v31;
}

uint64_t sub_29D5146FC()
{
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  return sub_29D5B4D9C();
}

uint64_t sub_29D514770()
{
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  return sub_29D5B4D9C();
}

uint64_t sub_29D5147C4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_29D5B4ADC();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_29D514838@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x29EDCA190];
    }

    v7 = sub_29D5B3FDC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_29D514F64(0, 1, 1, MEMORY[0x29EDCA190]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_29D514F64((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x29EDCA190];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_29D5B3FBC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_29D5B3F0C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_29D5B3F0C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_29D5B3FDC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_29D514F64(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_29D5B3FDC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_29D514F64(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_29D514F64((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_29D5B3F0C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_29D514C4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D51726C(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_29D514D70(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29D5172BC(0, a5, a6, MEMORY[0x29EDC9E90]);
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

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
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

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_29D514F64(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D51726C(0, &qword_2A17A47E8, MEMORY[0x29EDC9C98], MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29D5150F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D51726C(0, &qword_2A17A4810, &type metadata for SharedConceptFormattedRecord, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29D5152D4(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_29D5172BC(0, a5, a6, MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x29EDCA190];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_29D51541C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D51726C(0, &qword_2A1A16208, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29D5155D4(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_29D517204(0, a5, a6, a7, MEMORY[0x29EDC9E90]);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x29EDCA190];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D4A02FC(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_29D51573C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29D517180();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D517204(0, &qword_2A1A19820, &qword_2A1A19828, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9C68]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29D515968(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29D51726C(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t sub_29D515A6C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29D5172BC(0, a3, a4, MEMORY[0x29EDC9E90]);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_29D515B80(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29D51726C(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_29D515C58(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29D51726C(0, &qword_2A1A161C8, MEMORY[0x29EDCA018], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_29D515CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_29D5B3FCC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_29D516270();
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
      result = sub_29D5B497C();
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

uint64_t sub_29D516270()
{
  v0 = sub_29D5B3FDC();
  v4 = sub_29D5162F0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_29D5162F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_29D5B473C();
    if (!v9 || (v10 = v9, v11 = sub_29D515C58(v9, 0), v12 = sub_29D516448(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_29D5B3EEC();

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
      return sub_29D5B3EEC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_29D5B497C();
LABEL_4:

  return sub_29D5B3EEC();
}

unint64_t sub_29D516448(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_29D516668(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_29D5B3F7C();
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
          result = sub_29D5B497C();
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

    result = sub_29D516668(v12, a6, a7);
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

    result = sub_29D5B3F5C();
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

uint64_t sub_29D516668(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_29D5B3F8C();
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
    v5 = MEMORY[0x29ED5E540](15, a1 >> 16);
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

char *sub_29D5166E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_29D5B371C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5172BC(0, &qword_2A1A17350, MEMORY[0x29EDC4098], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = v91 - v9;
  v11 = sub_29D5B1D6C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v97 = v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = 10848482;
  v103 = 0xA300000000000000;
  v99 = &v102;
  v14 = sub_29D514838(0x7FFFFFFFFFFFFFFFLL, 0, sub_29D4B3490, v98, a1, a2, &v102);
  v15 = v14;
  if (v14[2] != 4 || (v91[1] = 0, v95 = v12, v16 = v11, v17 = v14[4], v18 = v14[5], v19 = v14[6], v20 = v14[7], , MEMORY[0x29ED5E490](v17, v18, v19, v20), , v21 = sub_29D5B4ADC(), result = , v21))
  {

    return 0;
  }

  if (v15[2] < 2uLL)
  {
    goto LABEL_99;
  }

  v24 = v15[8];
  v25 = v15[9];
  v26 = v15[10];
  v27 = v15[11];

  MEMORY[0x29ED5E490](v24, v25, v26, v27);

  v28 = sub_29D5B4ADC();

  if (v28)
  {
    sub_29D5B36CC();

    v29 = sub_29D5B370C();
    v30 = sub_29D5B427C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      LODWORD(v96) = v30;
      v32 = v31;
      v97 = swift_slowAlloc();
      v102 = v97;
      *v32 = 136446466;
      *(v32 + 4) = sub_29D501890(0xD00000000000001ELL, 0x800000029D5B9400, &v102);
      *(v32 + 12) = 2082;
      v33 = v15[8];
      v34 = v15[9];
      v36 = v15[10];
      v35 = v15[11];

      v37 = MEMORY[0x29ED5E490](v33, v34, v36, v35);
      v39 = v38;

      v40 = sub_29D501890(v37, v39, &v102);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_29D48C000, v29, v96, "[%{public}s] Unsupported version found when decoding version: '%{public}s'", v32, 0x16u);
      v41 = v97;
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v41, -1, -1);
      MEMORY[0x29ED5FB80](v32, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  if (v15[2] < 3uLL)
  {
    goto LABEL_100;
  }

  v42 = v15[12];
  v43 = v15[13];
  v44 = v15[14];
  v45 = v15[15];

  v46 = MEMORY[0x29ED5E490](v42, v43, v44, v45);
  v48 = v47;

  v102 = v46;
  v103 = v48;
  v100 = 8431330;
  v101 = 0xA300000000000000;
  sub_29D4B343C();
  v49 = sub_29D5B476C();

  v50 = *(v49 + 16);
  if (!v50)
  {
    v23 = MEMORY[0x29EDCA190];
LABEL_92:

    if (v15[2] < 4uLL)
    {
      goto LABEL_101;
    }

    v87 = v15[16];
    v88 = v15[17];
    v89 = v15[18];
    v90 = v15[19];

    MEMORY[0x29ED5E490](v87, v88, v89, v90);

    return v23;
  }

  v51 = 0;
  v96 = v49 + 32;
  v91[0] = &v102 + 1;
  v92 = (v95 + 32);
  v93 = (v95 + 48);
  v94 = (v95 + 56);
  v23 = MEMORY[0x29EDCA190];
  while (v51 < *(v49 + 16))
  {
    v52 = (v96 + 16 * v51);
    v53 = *v52;
    v54 = v52[1];
    v55 = HIBYTE(v54) & 0xF;
    v56 = v53 & 0xFFFFFFFFFFFFLL;
    if ((v54 & 0x2000000000000000) != 0)
    {
      v57 = HIBYTE(v54) & 0xF;
    }

    else
    {
      v57 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (!v57)
    {
      goto LABEL_14;
    }

    if ((v54 & 0x1000000000000000) == 0)
    {
      if ((v54 & 0x2000000000000000) != 0)
      {
        v102 = v53;
        v103 = v54 & 0xFFFFFFFFFFFFFFLL;
        if (v53 == 43)
        {
          if (!v55)
          {
            goto LABEL_95;
          }

          if (--v55)
          {
            v71 = 0;
            v72 = v91[0];
            while (1)
            {
              v73 = *v72 - 48;
              if (v73 > 9)
              {
                break;
              }

              v74 = 10 * v71;
              if ((v71 * 10) >> 64 != (10 * v71) >> 63)
              {
                break;
              }

              v71 = v74 + v73;
              if (__OFADD__(v74, v73))
              {
                break;
              }

              ++v72;
              if (!--v55)
              {
                goto LABEL_79;
              }
            }
          }
        }

        else if (v53 == 45)
        {
          if (!v55)
          {
            goto LABEL_97;
          }

          if (--v55)
          {
            v63 = 0;
            v64 = v91[0];
            while (1)
            {
              v65 = *v64 - 48;
              if (v65 > 9)
              {
                break;
              }

              v66 = 10 * v63;
              if ((v63 * 10) >> 64 != (10 * v63) >> 63)
              {
                break;
              }

              v63 = v66 - v65;
              if (__OFSUB__(v66, v65))
              {
                break;
              }

              ++v64;
              if (!--v55)
              {
                goto LABEL_79;
              }
            }
          }
        }

        else if (v55)
        {
          v78 = 0;
          v79 = &v102;
          while (1)
          {
            v80 = *v79 - 48;
            if (v80 > 9)
            {
              break;
            }

            v81 = 10 * v78;
            if ((v78 * 10) >> 64 != (10 * v78) >> 63)
            {
              break;
            }

            v78 = v81 + v80;
            if (__OFADD__(v81, v80))
            {
              break;
            }

            v79 = (v79 + 1);
            if (!--v55)
            {
              goto LABEL_79;
            }
          }
        }
      }

      else
      {
        if ((v53 & 0x1000000000000000) != 0)
        {
          result = ((v54 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          result = sub_29D5B497C();
        }

        v58 = *result;
        if (v58 == 43)
        {
          if (v56 < 1)
          {
            goto LABEL_98;
          }

          v55 = v56 - 1;
          if (v56 != 1)
          {
            v67 = 0;
            if (!result)
            {
              goto LABEL_70;
            }

            v68 = (result + 1);
            while (1)
            {
              v69 = *v68 - 48;
              if (v69 > 9)
              {
                break;
              }

              v70 = 10 * v67;
              if ((v67 * 10) >> 64 != (10 * v67) >> 63)
              {
                break;
              }

              v67 = v70 + v69;
              if (__OFADD__(v70, v69))
              {
                break;
              }

              ++v68;
              if (!--v55)
              {
                goto LABEL_79;
              }
            }
          }
        }

        else if (v58 == 45)
        {
          if (v56 < 1)
          {
            goto LABEL_96;
          }

          v55 = v56 - 1;
          if (v56 != 1)
          {
            v59 = 0;
            if (result)
            {
              v60 = (result + 1);
              while (1)
              {
                v61 = *v60 - 48;
                if (v61 > 9)
                {
                  goto LABEL_78;
                }

                v62 = 10 * v59;
                if ((v59 * 10) >> 64 != (10 * v59) >> 63)
                {
                  goto LABEL_78;
                }

                v59 = v62 - v61;
                if (__OFSUB__(v62, v61))
                {
                  goto LABEL_78;
                }

                ++v60;
                if (!--v55)
                {
                  goto LABEL_79;
                }
              }
            }

LABEL_70:
            LOBYTE(v55) = 0;
LABEL_79:
            LOBYTE(v100) = v55;
            v82 = v55;

            if (v82)
            {
              goto LABEL_13;
            }

            goto LABEL_80;
          }
        }

        else
        {
          if (!v56)
          {
            goto LABEL_78;
          }

          v75 = 0;
          if (!result)
          {
            goto LABEL_70;
          }

          while (1)
          {
            v76 = *result - 48;
            if (v76 > 9)
            {
              break;
            }

            v77 = 10 * v75;
            if ((v75 * 10) >> 64 != (10 * v75) >> 63)
            {
              break;
            }

            v75 = v77 + v76;
            if (__OFADD__(v77, v76))
            {
              break;
            }

            ++result;
            if (!--v56)
            {
              goto LABEL_70;
            }
          }
        }
      }

LABEL_78:
      LOBYTE(v55) = 1;
      goto LABEL_79;
    }

    sub_29D515CE4(v53, v54, 10);
    if (v86)
    {
LABEL_13:

LABEL_14:
      (*v94)(v10, 1, 1, v16);
      goto LABEL_15;
    }

LABEL_80:
    sub_29D5B1D4C();

    if ((*v93)(v10, 1, v16) != 1)
    {
      v83 = *v92;
      (*v92)(v97, v10, v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_29D514D70(0, *(v23 + 2) + 1, 1, v23, &qword_2A1A161E8, MEMORY[0x29EDC4098], MEMORY[0x29EDC4098]);
      }

      v85 = *(v23 + 2);
      v84 = *(v23 + 3);
      if (v85 >= v84 >> 1)
      {
        v23 = sub_29D514D70(v84 > 1, v85 + 1, 1, v23, &qword_2A1A161E8, MEMORY[0x29EDC4098], MEMORY[0x29EDC4098]);
      }

      *(v23 + 2) = v85 + 1;
      result = v83(&v23[((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v85], v97, v16);
      goto LABEL_16;
    }

LABEL_15:
    result = sub_29D5170F4(v10);
LABEL_16:
    if (++v51 == v50)
    {
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
  return result;
}

uint64_t sub_29D5170F4(uint64_t a1)
{
  sub_29D5172BC(0, &qword_2A1A17350, MEMORY[0x29EDC4098], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D517180()
{
  if (!qword_2A1A195E0)
  {
    sub_29D517204(255, &qword_2A1A19820, &qword_2A1A19828, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9C68]);
    v0 = sub_29D5B4C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A195E0);
    }
  }
}

void sub_29D517204(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D4A02FC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D51726C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D5172BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D517320()
{
  if (!qword_2A17A41A0)
  {
    sub_29D48F51C(255, &qword_2A17A41A8);
    v0 = sub_29D5B3D0C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A41A0);
    }
  }
}

unint64_t sub_29D51739C()
{
  result = qword_2A17A4830;
  if (!qword_2A17A4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4830);
  }

  return result;
}

uint64_t sub_29D5173F4@<X0>(uint64_t a1@<X8>)
{
  v33[1] = a1;
  v2 = sub_29D5B1BCC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = v33 - v8;
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v33 - v10;
  v12 = *(v3 + 16);
  v12(v33 - v10, v1, v2);
  v13 = *(v3 + 88);
  v14 = v13(v11, v2);
  if (v14 != *MEMORY[0x29EDC3FA8])
  {
    if (v14 == *MEMORY[0x29EDC3F88])
    {
      sub_29D51AC0C();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_29D5B6350;
      *(v18 + 32) = [objc_opt_self() systemGray3Color];
      sub_29D48F51C(0, &unk_2A1A19430);
      v19 = sub_29D5B401C();

      [objc_opt_self() configurationWithPaletteColors_];

      return sub_29D5B2A4C();
    }

    if (v14 != *MEMORY[0x29EDC3F78] && v14 != *MEMORY[0x29EDC3F90])
    {
      v33[0] = v1;
      v12(v9, v11, v2);
      sub_29D5B1B1C();
      sub_29D51ADA0(&qword_2A1A197F8, MEMORY[0x29EDC3FB8]);
      v22 = sub_29D5B3E0C();
      v23 = *(v3 + 8);
      v23(v6, v2);
      v23(v9, v2);
      if (v22)
      {
        v24 = [objc_opt_self() configurationPreferringMulticolor];
        sub_29D5B2A4C();
      }

      else
      {
        v25 = v13(v11, v2);
        if (v25 == *MEMORY[0x29EDC3FB0])
        {
          (*(v3 + 96))(v11, v2);
          sub_29D4E019C();
          sub_29D542A7C(*&v11[*(v26 + 48)], *&v11[*(v26 + 48) + 8]);

          sub_29D51AC0C();
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_29D5B6340;
          *(v27 + 32) = [objc_allocWithZone(MEMORY[0x29EDC7A00]) initWithWhite:0.85 alpha:1.0];
          *(v27 + 40) = [objc_allocWithZone(MEMORY[0x29EDC7A00]) initWithWhite:0.55 alpha:1.0];
          sub_29D48F51C(0, &unk_2A1A19430);
          v28 = sub_29D5B401C();

          v29 = [objc_opt_self() configurationWithPaletteColors_];

          sub_29D5B2A4C();
          v30 = sub_29D5B0EDC();
          return (*(*(v30 - 8) + 8))(v11, v30);
        }

        if (v25 == *MEMORY[0x29EDC3F70])
        {
          v31 = [objc_opt_self() configurationPreferringMulticolor];
          return sub_29D5B2A4C();
        }

        if (v25 == *MEMORY[0x29EDC3F98])
        {
          v32 = [objc_opt_self() configurationPreferringMulticolor];
          return sub_29D5B2A4C();
        }

        sub_29D5B1B3C();
        sub_29D48F51C(0, &qword_2A17A3C50);
        sub_29D5B463C();
        sub_29D5B2A6C();
      }

      return (v23)(v11, v2);
    }
  }

  sub_29D51AC0C();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D5B6340;
  v16 = objc_opt_self();
  *(v15 + 32) = [v16 systemWhiteColor];
  *(v15 + 40) = [v16 systemBlueColor];
  sub_29D48F51C(0, &unk_2A1A19430);
  v17 = sub_29D5B401C();

  [objc_opt_self() configurationWithPaletteColors_];

  return sub_29D5B2A4C();
}

uint64_t sub_29D517AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = a2;
  v4 = sub_29D5B2A7C();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B1BCC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B0EDC();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D51A82C(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  v15 = MEMORY[0x2A1C7C4A8](v14 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v25 - v18;
  v26 = *(v11 + 56);
  v26(&v25 - v18, 1, 1, v10);
  v20 = *(v7 + 16);
  v30 = a1;
  v20(v9, a1, v6);
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x29EDC3FB0])
  {
    sub_29D51B710(v19, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
    (*(v7 + 96))(v9, v6);
    sub_29D4E019C();

    v21 = *(v11 + 32);
    v21(v13, v9, v10);
    v21(v19, v13, v10);
    v26(v19, 0, 1, v10);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  v22 = v30;
  sub_29D5B1B0C();
  sub_29D5173F4(v27);
  v23 = MEMORY[0x29EDB9C08];
  sub_29D51AC60(v19, v17, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  sub_29D5B339C();
  (*(v7 + 8))(v22, v6);
  return sub_29D51B710(v19, &qword_2A1A193A8, v23);
}

uint64_t sub_29D517EB4()
{
  if ((sub_29D5B0EAC() & 1) == 0)
  {
    return 0;
  }

  sub_29D48F51C(0, &qword_2A1A16278);
  return sub_29D5B465C() & 1;
}

uint64_t sub_29D517F28(uint64_t a1)
{
  v28 = a1;
  v2 = MEMORY[0x29EDC9C68];
  sub_29D51A82C(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v27 = &v26 - v4;
  v5 = sub_29D5B0EDC();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDB9C08];
  sub_29D51A82C(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], v2);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v26 - v11;
  sub_29D51B63C(0, &qword_2A17A4838, &qword_2A1A193A8, v9);
  v14 = v13 - 8;
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_accountId;
  swift_beginAccess();
  v18 = *(v14 + 56);
  sub_29D51AC60(v1 + v17, v16, &qword_2A1A193A8, v9);
  sub_29D51AC60(v28, &v16[v18], &qword_2A1A193A8, v9);
  v19 = *(v6 + 48);
  if (v19(v16, 1, v5) == 1)
  {
    if (v19(&v16[v18], 1, v5) == 1)
    {
      return sub_29D51B710(v16, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
    }

    goto LABEL_6;
  }

  sub_29D51AC60(v16, v12, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  if (v19(&v16[v18], 1, v5) == 1)
  {
    (*(v6 + 8))(v12, v5);
LABEL_6:
    sub_29D51B6B4(v16, &qword_2A17A4838, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
LABEL_7:
    v21 = sub_29D5B410C();
    v22 = v27;
    (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v1;

    sub_29D57657C(0, 0, v22, &unk_29D5B9628, v23);
  }

  (*(v6 + 32))(v8, &v16[v18], v5);
  sub_29D51ADA0(&qword_2A17A4848, MEMORY[0x29EDB9C08]);
  v24 = sub_29D5B3E0C();
  v25 = *(v6 + 8);
  v25(v8, v5);
  v25(v12, v5);
  result = sub_29D51B710(v16, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_29D5183C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_29D5B371C();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_29D5B0EDC();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  sub_29D51A82C(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D51854C, 0, 0);
}

uint64_t sub_29D51854C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[10];
  v6 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_accountId;
  swift_beginAccess();
  v7 = MEMORY[0x29EDB9C08];
  sub_29D51AC60(v5 + v6, v2, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  sub_29D51AC60(v2, v1, &qword_2A1A193A8, v7);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v8 = v0[17];
    v9 = MEMORY[0x29EDB9C08];
    sub_29D51B710(v0[18], &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
    sub_29D51B710(v8, &qword_2A1A193A8, v9);

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v0[15] + 32))(v0[16], v0[17], v0[14]);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_29D518740;
    v13 = v0[16];

    return sub_29D51AE9C(v13);
  }
}

uint64_t sub_29D518740(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_29D518A58;
  }

  else
  {
    v4 = sub_29D518854;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D518854()
{
  if (v0[20])
  {
    sub_29D5B40EC();
    v0[22] = sub_29D5B40DC();
    v2 = sub_29D5B40CC();

    return MEMORY[0x2A1C73D48](sub_29D518994, v2, v1);
  }

  else
  {
    v3 = v0[18];
    (*(v0[15] + 8))(v0[16], v0[14]);
    sub_29D51B710(v3, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);

    v4 = v0[1];

    return v4();
  }
}

void sub_29D518994()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[10];

  sub_29D519FD0(v3, v4, v2);
  if (v1)
  {
  }

  else
  {

    MEMORY[0x2A1C73D48](sub_29D518CDC, 0, 0);
  }
}

uint64_t sub_29D518A58()
{
  v23 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  sub_29D51B710(v2, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  sub_29D5B36CC();
  v3 = v1;
  v4 = sub_29D5B370C();
  v5 = sub_29D5B427C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 168);
    v7 = *(v0 + 96);
    v20 = *(v0 + 88);
    v21 = *(v0 + 104);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *(v0 + 72) = v6;
    v22 = v9;
    *v8 = 136446210;
    v10 = v6;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v11 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v12 = sub_29D5B3E7C();
    v14 = sub_29D501890(v12, v13, &v22);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_29D48C000, v4, v5, "Failed to load account image for sidebars: %{public}s", v8, 0xCu);
    sub_29D48F668(v9);
    MEMORY[0x29ED5FB80](v9, -1, -1);
    MEMORY[0x29ED5FB80](v8, -1, -1);

    (*(v7 + 8))(v21, v20);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_29D518CDC()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);

  (*(v3 + 8))(v2, v4);
  sub_29D51B710(v1, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_29D518DB4(uint64_t a1)
{
  v3 = type metadata accessor for FetchedAccountIcon(0);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D51A82C(0, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v20 - v7;
  sub_29D51B63C(0, &qword_2A17A4850, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  v10 = v9 - 8;
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_fetchedAccountIcon;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_29D51AC60(v1 + v13, v12, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  sub_29D51AC60(a1, &v12[v14], &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_29D51B710(v12, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
    }

    goto LABEL_6;
  }

  sub_29D51AC60(v12, v8, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    sub_29D51AD44(v8);
LABEL_6:
    sub_29D51B6B4(v12, &qword_2A17A4850, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
    goto LABEL_7;
  }

  v18 = v21;
  sub_29D51ACE0(&v12[v14], v21);
  if (sub_29D5B0EAC())
  {
    sub_29D48F51C(0, &qword_2A1A16278);
    v19 = sub_29D5B465C();
    sub_29D51AD44(v18);
    sub_29D51AD44(v8);
    result = sub_29D51B710(v12, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
    if (v19)
    {
      return result;
    }
  }

  else
  {
    sub_29D51AD44(v18);
    sub_29D51AD44(v8);
    sub_29D51B710(v12, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  }

LABEL_7:
  v17 = (v1 + OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_delegate);
  result = swift_beginAccess();
  if (*v17)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_29D5B332C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29D519198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v111 = a4;
  v109 = a2;
  v110 = a3;
  v108 = a5;
  v6 = MEMORY[0x29EDC9C68];
  sub_29D51A82C(0, &qword_2A1A17328, MEMORY[0x29EDC17D8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v107 = &v83 - v8;
  v9 = sub_29D5B34CC();
  v112 = *(v9 - 8);
  v113 = v9;
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v105 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v84 = &v83 - v12;
  sub_29D51A82C(0, &qword_2A1A17320, MEMORY[0x29EDC17F0], v6);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v87 = &v83 - v14;
  v91 = sub_29D5B2A7C();
  v90 = *(v91 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v91);
  v104 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v88 = &v83 - v17;
  v97 = sub_29D5B0EDC();
  v94 = *(v97 - 8);
  MEMORY[0x2A1C7C4A8](v97);
  v85 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x29EDB9C08];
  sub_29D51B63C(0, &qword_2A17A4838, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  v92 = v20;
  MEMORY[0x2A1C7C4A8](v20);
  v93 = &v83 - v21;
  v98 = type metadata accessor for FetchedAccountIcon;
  sub_29D51A82C(0, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon, v6);
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v24 = &v83 - v23;
  v114 = type metadata accessor for FetchedAccountIcon(0);
  v25 = *(v114 - 8);
  MEMORY[0x2A1C7C4A8](v114);
  v95 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D51A82C(0, &qword_2A1A193A8, v19, v6);
  v28 = MEMORY[0x2A1C7C4A8](v27 - 8);
  v89 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v96 = &v83 - v31;
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v34 = &v83 - v33;
  MEMORY[0x2A1C7C4A8](v32);
  v36 = &v83 - v35;
  v37 = sub_29D5B33CC();
  v38 = *(v37 - 8);
  v39 = MEMORY[0x2A1C7C4A8](v37);
  v86 = &v83 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v39);
  v42 = &v83 - v41;
  sub_29D51A82C(0, &qword_2A17A4840, MEMORY[0x29EDC2A90], MEMORY[0x29EDC1E70]);
  v100 = v43;
  v106 = a1;
  sub_29D5B2CBC();
  sub_29D5B33BC();
  v83 = v38;
  v44 = *(v38 + 8);
  v99 = v42;
  v102 = v38 + 8;
  v103 = v37;
  v101 = v44;
  v44(v42, v37);
  v45 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_accountId;
  v46 = v115;
  swift_beginAccess();
  sub_29D51AC60(v46 + v45, v34, &qword_2A1A193A8, v19);
  swift_beginAccess();
  sub_29D51B5BC(v36, v46 + v45, &qword_2A1A193A8, v19);
  swift_endAccess();
  sub_29D517F28(v34);
  sub_29D51B710(v34, &qword_2A1A193A8, v19);
  sub_29D51B710(v36, &qword_2A1A193A8, v19);
  v47 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_fetchedAccountIcon;
  swift_beginAccess();
  sub_29D51AC60(v46 + v47, v24, &qword_2A1A18D08, v98);
  if ((*(v25 + 48))(v24, 1, v114) == 1)
  {
    sub_29D51B710(v24, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
    v48 = v105;
    goto LABEL_13;
  }

  v49 = v95;
  sub_29D51ACE0(v24, v95);
  v50 = v94;
  v51 = v96;
  v52 = v97;
  (*(v94 + 16))(v96, v49, v97);
  (*(v50 + 56))(v51, 0, 1, v52);
  v53 = *(v92 + 48);
  v54 = MEMORY[0x29EDB9C08];
  v55 = v93;
  sub_29D51AC60(v51, v93, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  sub_29D51AC60(v115 + v45, v55 + v53, &qword_2A1A193A8, v54);
  v56 = *(v50 + 48);
  v57 = v55;
  if (v56(v55, 1, v52) != 1)
  {
    v59 = v55;
    v60 = v89;
    sub_29D51AC60(v59, v89, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
    v61 = v56(v57 + v53, 1, v52);
    v48 = v105;
    if (v61 != 1)
    {
      v62 = v57 + v53;
      v63 = v85;
      v64 = v97;
      (*(v50 + 32))(v85, v62, v97);
      sub_29D51ADA0(&qword_2A17A4848, MEMORY[0x29EDB9C08]);
      v65 = sub_29D5B3E0C();
      v66 = *(v50 + 8);
      v66(v63, v64);
      v67 = MEMORY[0x29EDB9C08];
      sub_29D51B710(v96, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
      v66(v60, v64);
      sub_29D51B710(v57, &qword_2A1A193A8, v67);
      if (v65)
      {
        goto LABEL_11;
      }

LABEL_9:
      sub_29D51AD44(v49);
      goto LABEL_13;
    }

    sub_29D51B710(v96, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
    (*(v50 + 8))(v60, v97);
LABEL_8:
    sub_29D51B6B4(v57, &qword_2A17A4838, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
    goto LABEL_9;
  }

  sub_29D51B710(v51, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  v58 = v56(v55 + v53, 1, v52);
  v48 = v105;
  if (v58 != 1)
  {
    goto LABEL_8;
  }

  sub_29D51B710(v55, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
LABEL_11:
  v68 = *(v49 + *(v114 + 20));
  v69 = v87;
  sub_29D5B2A5C();
  v70 = v90;
  v71 = v91;
  if ((*(v90 + 48))(v69, 1, v91) != 1)
  {
    v75 = v88;
    (*(v70 + 32))(v88, v69, v71);
    v76 = v86;
    sub_29D5B2CBC();
    (*(v70 + 16))(v104, v75, v71);
    sub_29D5B338C();
    v115 = *(v115 + 16);
    v114 = sub_29D5B2CCC();
    v77 = v99;
    v78 = v76;
    v79 = v103;
    (*(v83 + 16))(v99, v78, v103);
    sub_29D5B33AC();
    sub_29D5B337C();
    v80 = sub_29D5B2A2C();
    (*(*(v80 - 8) + 56))(v107, 1, 1, v80);
    sub_29D5B336C();
    v81 = v84;
    sub_29D5B34BC();
    v82 = v101;
    v101(v77, v79);
    sub_29D5B308C();

    (*(v112 + 8))(v81, v113);
    v82(v86, v79);
    (*(v90 + 8))(v88, v91);
    return sub_29D51AD44(v95);
  }

  sub_29D51AD44(v49);
  sub_29D51B710(v69, &qword_2A1A17320, MEMORY[0x29EDC17F0]);
LABEL_13:
  v115 = *(v115 + 16);
  sub_29D5B2CCC();
  v72 = v99;
  sub_29D5B2CBC();
  sub_29D5B33AC();
  sub_29D5B337C();
  v73 = sub_29D5B2A2C();
  (*(*(v73 - 8) + 56))(v107, 1, 1, v73);
  sub_29D5B336C();
  sub_29D5B34BC();
  v101(v72, v103);
  sub_29D5B308C();
  (*(v112 + 8))(v48, v113);
}

uint64_t sub_29D519FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v44 = a3;
  v47 = a1;
  v4 = MEMORY[0x29EDC9C68];
  sub_29D51A82C(0, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon, MEMORY[0x29EDC9C68]);
  v6 = MEMORY[0x2A1C7C4A8](v5 - 8);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v42 = &v39 - v8;
  v9 = sub_29D5B0EDC();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v39 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x29EDB9C08];
  sub_29D51B63C(0, &qword_2A17A4838, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  v14 = v13 - 8;
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v39 - v15;
  sub_29D51A82C(0, &qword_2A1A193A8, v12, v4);
  v18 = MEMORY[0x2A1C7C4A8](v17 - 8);
  v46 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v39 - v20;
  v40 = *(v10 + 16);
  v41 = v10 + 16;
  v40(&v39 - v20, v47, v9);
  (*(v10 + 56))(v21, 0, 1, v9);
  v22 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_accountId;
  swift_beginAccess();
  v23 = *(v14 + 56);
  sub_29D51AC60(v21, v16, &qword_2A1A193A8, v12);
  v45 = a2;
  sub_29D51AC60(a2 + v22, &v16[v23], &qword_2A1A193A8, v12);
  v24 = *(v10 + 48);
  if (v24(v16, 1, v9) != 1)
  {
    v25 = v46;
    sub_29D51AC60(v16, v46, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
    if (v24(&v16[v23], 1, v9) != 1)
    {
      v27 = &v16[v23];
      v28 = v39;
      (*(v10 + 32))(v39, v27, v9);
      sub_29D51ADA0(&qword_2A17A4848, MEMORY[0x29EDB9C08]);
      v29 = sub_29D5B3E0C();
      v30 = *(v10 + 8);
      v30(v28, v9);
      v31 = MEMORY[0x29EDB9C08];
      sub_29D51B710(v21, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
      v30(v25, v9);
      result = sub_29D51B710(v16, &qword_2A1A193A8, v31);
      if ((v29 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_29D51B710(v21, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
    (*(v10 + 8))(v25, v9);
    return sub_29D51B6B4(v16, &qword_2A17A4838, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  }

  sub_29D51B710(v21, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  if (v24(&v16[v23], 1, v9) != 1)
  {
    return sub_29D51B6B4(v16, &qword_2A17A4838, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  }

  sub_29D51B710(v16, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
LABEL_8:
  v32 = v42;
  v40(v42, v47, v9);
  v33 = type metadata accessor for FetchedAccountIcon(0);
  v34 = v44;
  *(v32 + *(v33 + 20)) = v44;
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  v35 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_fetchedAccountIcon;
  v36 = v45;
  swift_beginAccess();
  v37 = v43;
  sub_29D51AC60(v36 + v35, v43, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  swift_beginAccess();
  v38 = v34;
  sub_29D51B5BC(v32, v36 + v35, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  swift_endAccess();
  sub_29D518DB4(v37);
  sub_29D51B710(v37, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  return sub_29D51B710(v32, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
}

uint64_t sub_29D51A600()
{

  sub_29D51B710(v0 + OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_accountId, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  sub_29D51B710(v0 + OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_fetchedAccountIcon, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_29D51A6EC()
{
  sub_29D51A82C(319, &qword_2A1A193A8, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    sub_29D51A82C(319, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon, MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_29D51A82C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D51A8D8()
{
  result = sub_29D5B0EDC();
  if (v1 <= 0x3F)
  {
    result = sub_29D48F51C(319, &qword_2A1A16288);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D51A97C()
{
  type metadata accessor for AccountSidebarContentConfigurationProvider(0);
  v0 = swift_allocObject();
  sub_29D5B30CC();
  swift_allocObject();
  *(v0 + 16) = sub_29D5B30BC();
  v1 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_accountId;
  v2 = sub_29D5B0EDC();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_fetchedAccountIcon;
  v4 = type metadata accessor for FetchedAccountIcon(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_delegate);
  *v5 = 0;
  v5[1] = 0;
  return v0;
}

uint64_t sub_29D51AB4C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_delegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

void sub_29D51AC0C()
{
  if (!qword_2A1A19420)
  {
    v0 = sub_29D5B4C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19420);
    }
  }
}

uint64_t sub_29D51AC60(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D51A82C(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D51ACE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FetchedAccountIcon(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D51AD44(uint64_t a1)
{
  v2 = type metadata accessor for FetchedAccountIcon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D51ADA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D51ADE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29D4E7B8C;

  return sub_29D5183C8(a1, v4, v5, v6);
}

uint64_t sub_29D51AE9C(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_29D5B1A1C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_29D5B1A2C();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  sub_29D51A82C(0, &qword_2A17A4430, MEMORY[0x29EDC3EE0], MEMORY[0x29EDC9C68]);
  v1[10] = swift_task_alloc();
  v4 = sub_29D5B1A6C();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D51B09C, 0, 0);
}

uint64_t sub_29D51B09C()
{
  v1 = v0;
  v2 = v0[9];
  v3 = v1[7];
  v4 = v1[8];
  sub_29D5B208C();
  v1[14] = sub_29D5B207C();
  (*(v4 + 104))(v2, *MEMORY[0x29EDC3EC8], v3);
  v5 = swift_task_alloc();
  v1[15] = v5;
  *v5 = v1;
  v5[1] = sub_29D51B1B8;
  v7 = v1[9];
  v6 = v1[10];
  v8 = v1[3];

  return MEMORY[0x2A1C65D58](v6, v8, v7);
}

uint64_t sub_29D51B1B8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2A1C73D48](sub_29D51B360, 0, 0);
}

uint64_t sub_29D51B360()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_29D51B710(v3, &qword_2A17A4430, MEMORY[0x29EDC3EE0]);
    v4 = 0;
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    (*(v2 + 32))(v0[13], v3, v1);
    sub_29D5B1A3C();
    v8 = (*(v6 + 88))(v5, v7);
    LODWORD(v5) = *MEMORY[0x29EDC3EC0];
    v9 = sub_29D5B1A5C();
    v10 = v9;
    if (v8 == v5)
    {
      v0[2] = 0;
      v4 = [v9 hr:v0 + 2 imageWithWhiteBackground:?];

      v11 = v0[2];
      if (v4)
      {
        v12 = *(v0[12] + 8);
        v13 = v11;
        v12(v0[13], v0[11]);
      }

      else
      {
        v17 = v0[12];
        v18 = v11;
        v19 = sub_29D5B0D2C();

        swift_willThrow();
        v4 = sub_29D5B1A5C();
        (*(v17 + 8))(v0[13], v0[11]);
      }
    }

    else
    {
      v15 = v0[5];
      v14 = v0[6];
      v16 = v0[4];
      (*(v0[12] + 8))(v0[13], v0[11]);
      (*(v15 + 8))(v14, v16);
      v4 = v10;
    }
  }

  v20 = v0[1];

  return v20(v4);
}

uint64_t sub_29D51B5BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D51A82C(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void sub_29D51B63C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29D51A82C(255, a3, a4, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29D51B6B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D51B63C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29D51B710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D51A82C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D51B780(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_29D523320(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_29D5B0EDC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_29D57A308(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_29D593928();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_29D5B0EDC();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_29D523000(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_29D5B0EDC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_29D51B940(uint64_t a1, void *a2)
{
  v137 = a2;
  v3 = type metadata accessor for HealthRecordsGeneratorContext();
  v136 = *(v3 - 8);
  v144 = *(v136 + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v134 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_29D5B148C();
  v117 = *(v120 - 8);
  v119 = *(v117 + 64);
  MEMORY[0x2A1C7C4A8](v120);
  v115 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = MEMORY[0x29EDCA498];
  v121 = MEMORY[0x29EDC9C68];
  sub_29D5251EC(0, &qword_2A1A172F0, MEMORY[0x29EDCA498], MEMORY[0x29EDC9C68]);
  v7 = MEMORY[0x2A1C7C4A8](v6 - 8);
  v100 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v98 = &v92 - v9;
  v10 = sub_29D5B106C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D523BBC();
  v97 = v14;
  v96 = *(v14 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v94 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v93 = &v92 - v17;
  sub_29D523C50();
  v102 = v18;
  v103 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v95 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D523D2C();
  v104 = v20;
  v105 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v99 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D523E6C();
  v108 = v22;
  v110 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v142 = (&v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D524014();
  v109 = v24;
  v111 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v106 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D524240();
  v116 = v26;
  v118 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v107 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5242D4();
  v122 = v28;
  v123 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v112 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5244B8();
  v126 = v30;
  v128 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30);
  v114 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D52463C();
  v129 = v32;
  v130 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v124 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D52470C();
  v35 = *(v34 - 8);
  v131 = v34;
  v132 = v35;
  MEMORY[0x2A1C7C4A8](v34);
  v125 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5247F8();
  v133 = v37;
  v135 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37);
  v127 = &v92 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1CBC();
  v39 = sub_29D5B1C8C();
  v138 = a1;
  sub_29D5B140C();
  sub_29D499EC0(&v146, v147);
  v40 = sub_29D5B136C();
  v41 = [v40 profileIdentifier];

  v139 = sub_29D5B1C6C();
  sub_29D48F668(&v146);
  sub_29D5B0C0C();
  swift_allocObject();
  v141 = sub_29D5B0BFC();
  v140 = swift_allocObject();
  *(v140 + 16) = MEMORY[0x29EDCA198];
  v42 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v146, v147);
  v43 = sub_29D5B136C();
  v44 = [v43 profileIdentifier];

  v113 = sub_29D5B1C3C();
  sub_29D48F668(&v146);
  v146 = sub_29D5B363C();
  sub_29D4F7770();
  v145 = MEMORY[0x29EDB8A00];
  sub_29D523CE4(&qword_2A1A16800, sub_29D4F7770);
  v45 = v93;
  sub_29D5B3B9C();

  (*(v11 + 104))(v13, *MEMORY[0x29EDC37B8], v10);
  sub_29D5B105C();
  (*(v11 + 8))(v13, v10);
  v46 = sub_29D5B369C();
  v47 = v98;
  (*(*(v46 - 8) + 56))(v98, 1, 1, v46);
  v48 = v96;
  v49 = v97;
  (*(v96 + 16))(v94, v45, v97);
  v50 = v101;
  sub_29D52488C(v47, v100, &qword_2A1A172F0, v101);
  sub_29D523CE4(&qword_2A1A16CB8, sub_29D523BBC);
  v51 = v95;
  sub_29D5B381C();
  sub_29D52490C(v47, &qword_2A1A172F0, v50);
  (*(v48 + 8))(v45, v49);
  sub_29D523E04(0, &qword_2A1A163D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDC9A40]);
  sub_29D523CE4(&qword_2A1A16FD8, sub_29D523C50);
  v52 = v140;

  v53 = v99;
  v54 = v102;
  sub_29D5B3B7C();

  (*(v103 + 8))(v51, v54);
  sub_29D5B396C();
  sub_29D50B1A4();
  sub_29D523CE4(&qword_2A1A16E98, sub_29D523D2C);
  sub_29D523CE4(&qword_2A1A168C8, sub_29D50B1A4);
  v55 = v104;
  sub_29D5B3C5C();
  (*(v105 + 8))(v53, v55);
  v56 = v117;
  v57 = v115;
  v58 = v138;
  v59 = v120;
  (*(v117 + 16))(v115, v138, v120);
  v60 = (*(v56 + 80) + 40) & ~*(v56 + 80);
  v61 = swift_allocObject();
  v62 = v143;
  v63 = v139;
  *(v61 + 2) = v143;
  *(v61 + 3) = v63;
  *(v61 + 4) = v52;
  (*(v56 + 32))(&v61[v60], v57, v59);
  sub_29D5251EC(0, &qword_2A1A17E28, sub_29D5241A0, v121);
  sub_29D524100();
  sub_29D523CE4(&qword_2A1A169A0, sub_29D523E6C);
  sub_29D523CE4(&qword_2A1A16850, sub_29D524100);

  v64 = v106;
  v65 = v108;
  v66 = v142;
  sub_29D5B3BFC();

  (*(v110 + 8))(v66, v65);
  sub_29D523CE4(&qword_2A1A16AD0, sub_29D524014);
  v67 = v107;
  v68 = v109;
  sub_29D5B3BDC();
  (*(v111 + 8))(v64, v68);
  v142 = type metadata accessor for HealthRecordsGeneratorContext;
  v69 = v134;
  sub_29D524CD0(v58, v134, type metadata accessor for HealthRecordsGeneratorContext);
  v70 = *(v136 + 80);
  v71 = (v70 + 24) & ~v70;
  v72 = (v144 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  *(v73 + 16) = v62;
  sub_29D524C68(v69, v73 + v71, type metadata accessor for HealthRecordsGeneratorContext);
  *(v73 + v72) = v141;
  sub_29D524380(0);
  sub_29D523CE4(&qword_2A1A16B10, sub_29D524240);

  v74 = v112;
  v75 = v116;
  sub_29D5B3BCC();

  (*(v118 + 8))(v67, v75);
  v76 = MEMORY[0x29EDB89F8];
  sub_29D5245C4(0, &qword_2A1A167C8, MEMORY[0x29EDB89F8]);
  v136 = MEMORY[0x29EDB8990];
  sub_29D523CE4(&qword_2A1A16B88, sub_29D5242D4);
  sub_29D524C24(&qword_2A1A167D0, &qword_2A1A167C8, v76);
  v77 = v114;
  v78 = v122;
  sub_29D5B3B8C();
  (*(v123 + 8))(v74, v78);
  sub_29D524CD0(v138, v69, v142);
  v79 = swift_allocObject();
  v80 = v143;
  v81 = v137;
  *(v79 + 16) = v143;
  *(v79 + 24) = v81;
  sub_29D524C68(v69, v79 + ((v70 + 32) & ~v70), type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D523CE4(&qword_2A1A16D68, sub_29D5244B8);
  v82 = v81;
  v83 = v124;
  v84 = v126;
  sub_29D5B3BCC();

  (*(v128 + 8))(v77, v84);
  *(swift_allocObject() + 16) = v80;
  sub_29D4B2D8C();
  sub_29D523CE4(&qword_2A1A16B98, sub_29D52463C);
  sub_29D523CE4(&qword_2A1A16780, sub_29D4B2D8C);
  v85 = v125;
  v86 = v129;
  sub_29D5B3B8C();

  (*(v130 + 8))(v83, v86);
  v146 = MEMORY[0x29EDCA190];
  sub_29D523CE4(&qword_2A1A16CD8, sub_29D52470C);
  v87 = v127;
  v88 = v131;
  sub_29D5B3B4C();
  (*(v132 + 8))(v85, v88);
  sub_29D523CE4(&qword_2A1A17038, sub_29D5247F8);
  v89 = v133;
  v90 = sub_29D5B3B1C();

  (*(v135 + 8))(v87, v89);

  return v90;
}