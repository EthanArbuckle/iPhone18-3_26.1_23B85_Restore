uint64_t sub_19D708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v79 = a8;
  v70 = a6;
  v71 = a7;
  v69 = a5;
  v85 = a4;
  v78 = a3;
  v67 = a2;
  v65 = a1;
  v77 = a13;
  v84 = a9;
  v72 = a10;
  v73 = a11;
  v13 = sub_2BFF28();
  v14 = *(v13 - 8);
  v82 = v13;
  v83 = v14;
  v76 = *(v14 + 64);
  __chkstk_darwin(v13);
  v81 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_6620C(&qword_3BF3D8);
  v75 = *(v16 - 8);
  v74 = *(v75 + 64);
  __chkstk_darwin(v16 - 8);
  v80 = &v56 - v17;
  v18 = sub_6620C(&unk_3C4340);
  v68 = *(v18 - 8);
  v63 = *(v68 + 64);
  __chkstk_darwin(v18 - 8);
  v20 = &v56 - v19;
  v61 = &v56 - v19;
  v21 = sub_6620C(&qword_3BDE70);
  v64 = *(v21 - 8);
  v22 = *(v64 + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v56 - v23;
  v60 = &v56 - v23;
  v25 = sub_6620C(&qword_3C4350);
  v62 = *(v25 - 8);
  v26 = *(v62 + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v56 - v27;
  v59 = &v56 - v27;
  v57 = a12;
  v29 = *(a12 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v31);
  v58 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v32 - 8);
  v34 = &v56 - v33;
  v66 = &v56 - v33;
  v35 = sub_2C5C58();
  (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
  v36 = v29;
  v56 = v29;
  (*(v29 + 16))(&v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v65, a12);
  sub_6932C(v67, v28, &qword_3C4350);
  sub_6932C(v69, v24, &qword_3BDE70);
  sub_6932C(v70, v20, &unk_3C4340);
  sub_6932C(v71, v80, &qword_3BF3D8);
  sub_6932C(v72, v86, &qword_3BC840);
  v37 = v83;
  (*(v83 + 16))(v81, v73, v82);
  sub_2C5C18();

  v73 = sub_2C5C08();
  v38 = (*(v36 + 80) + 48) & ~*(v36 + 80);
  v39 = (v30 + *(v62 + 80) + v38) & ~*(v62 + 80);
  v40 = (v26 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v64 + 80) + v40 + 16) & ~*(v64 + 80);
  v42 = (v22 + *(v68 + 80) + v41) & ~*(v68 + 80);
  v43 = (v63 + *(v75 + 80) + v42) & ~*(v75 + 80);
  v44 = (v74 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
  v46 = (*(v37 + 80) + v45 + 40) & ~*(v37 + 80);
  v47 = swift_allocObject();
  *(v47 + 2) = v73;
  *(v47 + 3) = &protocol witness table for MainActor;
  v48 = v77;
  *(v47 + 4) = v57;
  *(v47 + 5) = v48;
  (*(v56 + 32))(&v47[v38], v58);
  sub_69130(v59, &v47[v39], &qword_3C4350);
  v49 = &v47[v40];
  v50 = v85;
  *v49 = v78;
  *(v49 + 1) = v50;
  sub_69130(v60, &v47[v41], &qword_3BDE70);
  sub_69130(v61, &v47[v42], &unk_3C4340);
  sub_69130(v80, &v47[v43], &qword_3BF3D8);
  v51 = &v47[v44];
  v52 = v84;
  *v51 = v79;
  *(v51 + 1) = v52;
  v53 = &v47[v45];
  *(v53 + 4) = v87;
  v54 = v86[1];
  *v53 = v86[0];
  *(v53 + 1) = v54;
  (*(v83 + 32))(&v47[v46], v81, v82);
  sub_249B98(0, 0, v66, &unk_2F1190, v47);
}

uint64_t sub_19DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 304) = v17;
  *(v8 + 312) = v18;
  *(v8 + 272) = v15;
  *(v8 + 288) = v16;
  *(v8 + 256) = v14;
  *(v8 + 240) = a7;
  *(v8 + 248) = a8;
  *(v8 + 224) = a5;
  *(v8 + 232) = a6;
  *(v8 + 216) = a4;
  v9 = sub_2C00F8();
  *(v8 + 320) = v9;
  *(v8 + 328) = *(v9 - 8);
  *(v8 + 336) = swift_task_alloc();
  sub_2C5C18();
  *(v8 + 344) = sub_2C5C08();
  v11 = sub_2C5BB8();
  *(v8 + 352) = v11;
  *(v8 + 360) = v10;

  return _swift_task_switch(sub_19DF68, v11, v10);
}

uint64_t sub_19DF68()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[38];
  v18 = v0[33];
  v20 = v0[39];
  v17 = v0[32];
  v4 = v0[30];
  v15 = v0[40];
  v16 = v0[31];
  v5 = v0[29];
  v6 = v0[27];
  sub_19E448(v0[28], v2);
  (*(v20 + 112))(v3);
  v7 = v0[5];
  v8 = v0[6];
  sub_72084(v0 + 2, v7);
  v0[10] = v3;
  v0[11] = v20;
  v9 = sub_720C8(v0 + 7);
  (*(*(v3 - 8) + 16))(v9, v6, v3);
  v10 = (*(v8 + 64))(v5, v4, v0 + 7, v7, v8);
  sub_68CD0((v0 + 7));
  sub_19AF48(v2, v10, v3, v20);
  (*(v1 + 8))(v2, v15);
  sub_68CD0((v0 + 2));
  sub_19E7BC(v5, v4, v16, v17, v18, v3, v20);
  v19 = (*(v20 + 80) + **(v20 + 80));
  v11 = swift_task_alloc();
  v0[46] = v11;
  *v11 = v0;
  v11[1] = sub_19E1C4;
  v13 = v0[38];
  v12 = v0[39];

  return v19(v13, v12);
}

uint64_t sub_19E1C4()
{
  v1 = *v0;

  v2 = *(v1 + 360);
  v3 = *(v1 + 352);

  return _swift_task_switch(sub_19E2E4, v3, v2);
}

uint64_t sub_19E2E4()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);

  (*(v1 + 72))(v3, v4, v2, v1);
  if (*(v0 + 160))
  {
    v5 = *(v0 + 288);
    sub_68D1C((v0 + 136), v0 + 96);
    sub_6932C(v5, v0 + 176, &qword_3BC840);
    if (*(v0 + 200))
    {
      sub_72084((v0 + 176), *(v0 + 200));
      sub_2BFCD8();
      sub_68CD0(v0 + 96);
      sub_68CD0(v0 + 176);
      goto LABEL_7;
    }

    sub_68CD0(v0 + 96);
    v6 = &qword_3BC840;
    v7 = v0 + 176;
  }

  else
  {
    v6 = &unk_3BDC90;
    v7 = v0 + 136;
  }

  sub_69198(v7, v6);
LABEL_7:

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_19E448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_6620C(&unk_3C4430);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5];
  v7 = sub_6620C(&qword_3C4350);
  __chkstk_darwin(v7 - 8);
  v9 = &v24[-v8];
  v10 = sub_2C4BB8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_6932C(a1, v9, &qword_3C4350);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_69198(v9, &qword_3C4350);
    goto LABEL_11;
  }

  (*(v11 + 32))(v13, v9, v10);
  v14 = sub_2C4B98();
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  if (!*(v14 + 16) || (v16 = sub_5D228(0x6570795465676170, 0xE800000000000000), (v17 & 1) == 0))
  {

    goto LABEL_10;
  }

  sub_68C64(*(v15 + 56) + 32 * v16, v24);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    (*(v11 + 8))(v13, v10);
    goto LABEL_11;
  }

  sub_2C00E8();
  (*(v11 + 8))(v13, v10);
  v18 = sub_2C00F8();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v6, 1, v18) != 1)
  {
    return (*(v19 + 32))(a2, v6, v18);
  }

  sub_69198(v6, &unk_3C4430);
LABEL_11:
  v20 = enum case for FigaroClickEvent.ActionContext.series(_:);
  v21 = sub_2C00F8();
  return (*(*(v21 - 8) + 104))(a2, v20, v21);
}

void sub_19E7BC(uint64_t a1, void (*a2)(unint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  *&v81 = a5;
  v87 = a4;
  v76 = a2;
  v75 = a1;
  v79 = sub_2BEB28();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v70[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = sub_2BF088();
  v80 = *(v83 - 8);
  __chkstk_darwin(v83);
  v86 = &v70[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_6620C(&qword_3BF3D8);
  __chkstk_darwin(v14 - 8);
  v16 = &v70[-v15];
  v17 = sub_2BE968();
  v84 = *(v17 - 8);
  v85 = v17;
  __chkstk_darwin(v17);
  v82 = &v70[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_6620C(&unk_3C4340);
  __chkstk_darwin(v19 - 8);
  v21 = &v70[-v20];
  v22 = sub_2BEF78();
  v89 = *(v22 - 8);
  v90 = v22;
  __chkstk_darwin(v22);
  v88 = &v70[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_6620C(&qword_3BDE70);
  __chkstk_darwin(v24 - 8);
  v26 = &v70[-v25];
  v27 = sub_2BEA28();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v91 = &v70[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = (*(a7 + 104))(a6, a7, v29);
  if (!v31)
  {
    goto LABEL_9;
  }

  v32 = v31;
  sub_6932C(a3, v26, &qword_3BDE70);
  if ((*(v28 + 48))(v26, 1, v27) != 1)
  {
    v35 = v28;
    v74 = v32;
    v36 = v91;
    (*(v28 + 32))(v91, v26, v27);
    sub_6932C(v87, v21, &unk_3C4340);
    v38 = v89;
    v37 = v90;
    if ((*(v89 + 48))(v21, 1, v90) == 1)
    {
      (*(v35 + 8))(v36, v27);

      v33 = &unk_3C4340;
      v34 = v21;
      goto LABEL_8;
    }

    v87 = v35;
    v73 = v27;
    v39 = v88;
    (*(v38 + 32))(v88, v21, v37);
    sub_6932C(v81, v16, &qword_3BF3D8);
    v41 = v84;
    v40 = v85;
    if ((*(v84 + 48))(v16, 1, v85) == 1)
    {

      (*(v38 + 8))(v39, v37);
      (*(v87 + 8))(v91, v73);
      v33 = &qword_3BF3D8;
      v34 = v16;
      goto LABEL_8;
    }

    (*(v41 + 32))(v82, v16, v40);
    (*(a7 + 112))(v93, a6, a7);
    v46 = v94;
    v47 = v95;
    sub_72084(v93, v94);
    v92[3] = a6;
    v92[4] = a7;
    v48 = sub_720C8(v92);
    (*(*(a6 - 8) + 16))(v48, v8, a6);
    (*(v47 + 64))(v75, v76, v92, v46, v47);
    sub_68CD0(v92);
    sub_68CD0(v93);
    v49 = *(a7 + 16);
    v49(v93, a6, a7);
    if (ContextActionType.rawValue.getter() != 0x706D615364616572 || v50 != 0xEA0000000000656CLL)
    {
      v51 = sub_2C65B8();

      if (v51)
      {
        goto LABEL_22;
      }

      v49(v93, a6, a7);
      if (ContextActionType.rawValue.getter() != 0x6D61536F69647561 || v52 != 0xEB00000000656C70)
      {
        v53 = sub_2C65B8();

        if ((v53 & 1) == 0)
        {
          sub_2BEF68();
        }

        goto LABEL_22;
      }
    }

LABEL_22:
    (*(v78 + 104))(v77, enum case for LinkActionType.swipe(_:), v79);
    sub_2BF078();
    v79 = sub_6620C(&unk_3C43E0);
    v54 = sub_2BE798();
    v55 = *(v54 - 8);
    v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v57 = *(v55 + 80);
    v58 = swift_allocObject();
    v81 = xmmword_2E3F30;
    *(v58 + 16) = xmmword_2E3F30;
    v59 = enum case for DataEventTrait.onlyOnce(_:);
    v76 = *(v55 + 104);
    v78 = v55 + 104;
    v71 = enum case for DataEventTrait.onlyOnce(_:);
    v72 = v54;
    v76(v58 + v56, enum case for DataEventTrait.onlyOnce(_:), v54);
    v77 = "checkmark.circle";
    sub_1A3B90(&unk_3C0030, &type metadata accessor for SectionData);
    sub_1A3B90(&unk_3C43F0, &type metadata accessor for SectionData);
    sub_2BEFE8();

    v75 = v57;
    v60 = swift_allocObject();
    *(v60 + 16) = v81;
    v61 = v59;
    v62 = v76;
    v76(v60 + v56, v61, v54);
    sub_1A3B90(&unk_3C0040, &type metadata accessor for PageData);
    sub_1A3B90(&unk_3C4400, &type metadata accessor for PageData);
    sub_2BEFE8();

    v63 = swift_allocObject();
    *(v63 + 16) = v81;
    v64 = v71;
    v65 = v72;
    v62(v63 + v56, v71, v72);
    sub_1A3B90(&unk_3C0050, &type metadata accessor for ClickData);
    sub_1A3B90(&unk_3C4410, &type metadata accessor for ClickData);
    v66 = v74;
    sub_2BEFE8();

    v67 = swift_allocObject();
    *(v67 + 16) = v81;
    v62(v67 + v56, v64, v65);
    sub_1A3B90(&qword_3BF460, &type metadata accessor for ContentData);
    sub_1A3B90(&unk_3C4420, &type metadata accessor for ContentData);
    v68 = v82;
    v69 = v85;
    sub_2BEFE8();

    sub_2BE868();
    sub_1A3B90(&unk_3C0060, &type metadata accessor for ClickEvent);
    sub_2BF018();

    (*(v80 + 8))(v86, v83);
    (*(v84 + 8))(v68, v69);
    (*(v89 + 8))(v88, v90);
    (*(v87 + 8))(v91, v73);
    return;
  }

  v33 = &qword_3BDE70;
  v34 = v26;
LABEL_8:
  sub_69198(v34, v33);
LABEL_9:
  if (qword_3BB778 != -1)
  {
    swift_once();
  }

  v42 = sub_2C00B8();
  sub_57AD8(v42, qword_3C2F18);
  v43 = sub_2C0098();
  v44 = sub_2C5DD8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_0, v43, v44, "Tracker, sectionData, pageData or contentData is missing for AppAnalytics swipe action.", v45, 2u);
  }
}

uint64_t ContextActionItem.swipeActionBackgroundColor.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(&var1);
  switch(var1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 15:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 27:
    case 28:
    case 30:
    case 31:

      result = sub_2C4208();
      break;
    case 7:
    case 8:

      result = static Color.indigo.getter(v2);
      break;
    case 13:
    case 14:

      result = static Color.orange.getter(v2);
      break;
    case 16:
    case 17:
    case 25:

      result = sub_2C41E8();
      break;
    case 26:

      result = static Color.red.getter(v2);
      break;
    case 29:
      v4 = [objc_opt_self() systemGray2Color];

      result = sub_2C4178();
      break;
    default:

      result = static Color.blue.getter(v2);
      break;
  }

  return result;
}

uint64_t sub_19F7C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (result)
  {
    v6 = result;
    v7 = a5[3];
    v8 = a5[4];
    sub_72084(a5, v7);
    v9 = *(v8 + 48);

    v10 = v9(v7, v8);
    if (v10)
    {
      v11 = v10;
      v12 = swift_allocObject();
      *(v12 + 16) = v6;
      *(v12 + 24) = a2;
      v20[4] = sub_1A4214;
      v20[5] = v12;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 1107296256;
      v20[2] = sub_19FC28;
      v20[3] = &unk_390960;
      v13 = _Block_copy(v20);

      [v11 get:v13];
      _Block_release(v13);
    }

    else
    {
      sub_6620C(&unk_3C44C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2E3F30;
      *(inited + 32) = sub_2C58C8();
      *(inited + 40) = v15;
      *(inited + 48) = 0xD00000000000001ELL;
      *(inited + 56) = 0x8000000000306110;
      v16 = sub_677B4(inited);
      swift_setDeallocating();
      sub_69198(inited + 32, &qword_3BD8A0);
      v17 = NSItemProviderErrorDomain;
      sub_293488(v16);

      v18 = objc_allocWithZone(NSError);
      isa = sub_2C57C8().super.isa;

      v11 = [v18 initWithDomain:v17 code:-1000 userInfo:isa];

      v6(0, v11);
    }

    return sub_77BDC(v6);
  }

  return result;
}

void sub_19FA40(UIImage *a1, uint64_t a2, void (*a3)(Class, id))
{
  if (a1 && (v4 = UIImagePNGRepresentation(a1)) != 0)
  {
    v5 = v4;
    v6 = sub_2BE3D8();
    v8 = v7;

    isa = sub_2BE3C8().super.isa;
    a3(isa, 0);

    sub_A3DDC(v6, v8);
  }

  else
  {
    sub_6620C(&unk_3C44C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2E3F30;
    *(inited + 32) = sub_2C58C8();
    *(inited + 40) = v11;
    *(inited + 48) = 0xD00000000000002FLL;
    *(inited + 56) = 0x8000000000306130;
    v12 = sub_677B4(inited);
    swift_setDeallocating();
    sub_69198(inited + 32, &qword_3BD8A0);
    v13 = NSItemProviderErrorDomain;
    sub_293488(v12);

    v14 = objc_allocWithZone(NSError);
    v15 = sub_2C57C8().super.isa;

    v16 = [v14 initWithDomain:v13 code:-1000 userInfo:v15];

    a3(0, v16);
  }
}

void sub_19FC28(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_19FCB4(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1A41D4;
    if (!ObjCClassMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (ObjCClassMetadata)
  {
LABEL_3:
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

LABEL_4:
  if (a4)
  {
    a4 = sub_2C57E8();
  }

  v6(v7, v8, ObjCClassMetadata, a4);

  sub_77BDC(v7);
}

void sub_19FDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2BE348();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t ContextActionItem.swipeActionShareButton.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v6 = sub_6620C(&qword_3BE870);
  __chkstk_darwin(v6 - 8);
  v48 = v41 - v7;
  v8 = sub_6620C(&unk_3C4370);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - v9;
  v11 = sub_2BE3B8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = v41 - v17;
  v19 = *(a2 + 96);
  v47 = v3;
  v19(v51, a1, a2, v16);
  v20 = v52;
  v21 = v53;
  sub_72084(v51, v52);
  v22 = (*(v21 + 8))(v20, v21);
  if (*(v22 + 16))
  {
    sub_691F8(v22 + 32, v50);

    sub_68D1C(v50, v54);
    sub_68CD0(v51);
    v23 = v55;
    v24 = v56;
    sub_72084(v54, v55);
    (*(v24 + 264))(v23, v24);
    if (v25)
    {
      sub_2BE3A8();

      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        (*(v12 + 32))(v18, v10, v11);
        v33 = _s11BookStoreUI17ContextActionItemPAAE17shareLinkMetadata9assetInfo3urlSo06LPLinkI0CAA0d5AssetK8Protocol_p_10Foundation3URLVtF_0(v54, v18);
        (*(v12 + 16))(v14, v18, v11);
        v34 = _s11BookStoreUI17ContextActionItemPAAE7subject3for05SwiftC04TextVSgAA0D17AssetInfoProtocol_p_tF_0(v54);
        v45 = v35;
        v46 = v34;
        v44 = v36;
        v43 = v37;
        v52 = sub_66278(0, &qword_3C4380);
        v51[0] = v33;
        v42 = v33;
        v38 = sub_2C2698();
        v41[1] = v41;
        __chkstk_darwin(v38);
        sub_6620C(&qword_3BE800);
        sub_72B74(&unk_3C4390, &qword_3BE800);
        sub_1A3B90(&qword_3BF378, &type metadata accessor for URL);
        v39 = v49;
        sub_2C4758();

        (*(v12 + 8))(v18, v11);
        v40 = sub_6620C(&qword_3BF270);
        (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
        return sub_68CD0(v54);
      }

      sub_69198(v10, &unk_3C4370);
    }

    v26 = v54;
  }

  else
  {

    v26 = v51;
  }

  sub_68CD0(v26);
  if (qword_3BB778 != -1)
  {
    swift_once();
  }

  v27 = sub_2C00B8();
  sub_57AD8(v27, qword_3C2F18);
  v28 = sub_2C0098();
  v29 = sub_2C5DC8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "Can't create ShareLink without asset info", v30, 2u);
  }

  v31 = sub_6620C(&qword_3BF270);
  return (*(*(v31 - 8) + 56))(v49, 1, 1, v31);
}

uint64_t sub_1A0438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v5(&v11, a2, a3);
  v9 = sub_2B2E00();
  v10 = v6;
  v5(&v8, a2, a3);
  sub_7212C();
  return sub_2C4308();
}

uint64_t FigaroProvider.contextMenuActionTypeToIndexDict.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FigaroProvider.swipeActionTypeToIndexDict.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

BookStoreUI::FigaroProvider __swiftcall FigaroProvider.init()()
{
  *v0 = &_swiftEmptyDictionarySingleton;
  v0[1] = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t FigaroProvider.contextMenuActionPosition(for:)(void *a1)
{
  v3 = *v1;
  v4 = a1[3];
  v5 = a1[4];
  sub_72084(a1, v4);
  (*(v5 + 16))(v25, v4, v5);
  v6 = ContextActionType.rawValue.getter();
  if (*(v3 + 16))
  {
    v8 = sub_5D228(v6, v7);
    v10 = v9;

    if (v10)
    {
      return *(*(v3 + 56) + 8 * v8);
    }
  }

  else
  {
  }

  if (qword_3BB790 != -1)
  {
    swift_once();
  }

  v12 = sub_2C00B8();
  sub_57AD8(v12, qword_3C2F60);
  sub_691F8(a1, v25);
  v13 = sub_2C0098();
  v14 = sub_2C5DC8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    v17 = v26;
    v18 = v27;
    sub_72084(v25, v26);
    (*(v18 + 16))(&v23, v17, v18);
    v19 = ContextActionType.rawValue.getter();
    v21 = v20;
    sub_68CD0(v25);
    v22 = sub_5CCF4(v19, v21, &v24);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_0, v13, v14, "Unable to locate figaro position in the context menu for %s", v15, 0xCu);
    sub_68CD0(v16);
  }

  else
  {

    sub_68CD0(v25);
  }

  return -1;
}

uint64_t FigaroProvider.swipeActionPosition(for:with:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(v3 + 8);
  if (*(v5 + 16))
  {
    v6 = sub_5D228(a1, a2);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      v9 = a3[3];
      v10 = a3[4];
      sub_72084(a3, v9);
      v11 = *(v10 + 16);

      v11(v32, v9, v10);
      v12 = ContextActionType.rawValue.getter();
      if (*(v8 + 16))
      {
        v14 = sub_5D228(v12, v13);
        v16 = v15;

        if (v16)
        {
          v17 = *(*(v8 + 56) + 8 * v14);

          return v17;
        }
      }

      else
      {
      }
    }
  }

  if (qword_3BB790 != -1)
  {
    swift_once();
  }

  v19 = sub_2C00B8();
  sub_57AD8(v19, qword_3C2F60);
  sub_691F8(a3, v32);
  v20 = sub_2C0098();
  v21 = sub_2C5DC8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v23;
    *v22 = 136315138;
    v24 = v33;
    v25 = v34;
    sub_72084(v32, v33);
    (*(v25 + 16))(&v30, v24, v25);
    v26 = ContextActionType.rawValue.getter();
    v28 = v27;
    sub_68CD0(v32);
    v29 = sub_5CCF4(v26, v28, &v31);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_0, v20, v21, "Unable to locate figaro position in the swipe action menu for %s", v22, 0xCu);
    sub_68CD0(v23);
  }

  else
  {

    sub_68CD0(v32);
  }

  return -1;
}

uint64_t sub_1A0C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v10 = v5;
  a5[3] = &type metadata for ContextActionMenuItemView;
  a5[4] = sub_1A1968();
  v12 = swift_allocObject();
  *a5 = v12;
  *(v12 + 88) = a1;
  *(v12 + 96) = a2;
  v13 = swift_allocObject();
  *(v12 + 64) = v13;
  a3(v10, v13 + 16);
  a3(v10, v21);
  v14 = swift_allocObject();
  v15 = v22[0];
  v14[9] = v21[8];
  v14[10] = v15;
  *(v14 + 169) = *(v22 + 9);
  v16 = v21[5];
  v14[5] = v21[4];
  v14[6] = v16;
  v17 = v21[7];
  v14[7] = v21[6];
  v14[8] = v17;
  v18 = v21[1];
  v14[1] = v21[0];
  v14[2] = v18;
  v19 = v21[3];
  v14[3] = v21[2];
  v14[4] = v19;
  result = swift_getKeyPath();
  *(v12 + 16) = result;
  *(v12 + 56) = 0;
  *(v12 + 104) = a4;
  *(v12 + 112) = v14;
  return result;
}

uint64_t sub_1A0E38(uint64_t a1)
{
  sub_6932C(a1, v3, &qword_3BEF10);
  sub_6932C(v3, &v2, &qword_3BEF10);
  sub_1A3DE0();
  sub_2C3118();
  return sub_69198(v3, &qword_3BEF10);
}

id _s11BookStoreUI17ContextActionItemPAAE17shareLinkMetadata9assetInfo3urlSo06LPLinkI0CAA0d5AssetK8Protocol_p_10Foundation3URLVtF_0(void *a1, uint64_t a2)
{
  v85 = sub_2C0048();
  v87 = *(v85 - 8);
  __chkstk_darwin(v85);
  v84 = &v77[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_2BE3B8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v77[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a1[3];
  v10 = a1[4];
  sub_72084(a1, v9);
  v86 = (*(v10 + 312))(v9, v10);
  v12 = v11;
  v13 = a1[3];
  v14 = a1[4];
  sub_72084(a1, v13);
  v81 = (*(v14 + 32))(v13, v14);
  v16 = v15;
  if (qword_3BB778 != -1)
  {
    swift_once();
  }

  v17 = sub_2C00B8();
  v18 = sub_57AD8(v17, qword_3C2F18);
  (*(v6 + 16))(v8, a2, v5);
  sub_691F8(a1, aBlock);

  v80 = v18;
  v19 = sub_2C0098();
  v20 = sub_2C5DB8();

  v21 = os_log_type_enabled(v19, v20);
  v82 = a2;
  v83 = v16;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v88 = v79;
    *v22 = 136315906;
    v23 = sub_2BE378();
    v78 = v20;
    v24 = v16;
    v26 = v25;
    (*(v6 + 8))(v8, v5);
    v27 = sub_5CCF4(v23, v26, &v88);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    *&v93[0] = v86;
    *(&v93[0] + 1) = v12;

    sub_6620C(&qword_3BDB00);
    v28 = sub_2C5918();
    v30 = sub_5CCF4(v28, v29, &v88);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2080;
    *&v93[0] = v81;
    *(&v93[0] + 1) = v24;

    v31 = sub_2C5918();
    v33 = sub_5CCF4(v31, v32, &v88);

    *(v22 + 24) = v33;
    *(v22 + 32) = 2080;
    v34 = v90;
    v35 = v91;
    sub_72084(aBlock, v90);
    v36 = (*(v35 + 1))(v34, v35);
    v38 = v37;
    sub_68CD0(aBlock);
    v39 = sub_5CCF4(v36, v38, &v88);

    *(v22 + 34) = v39;
    _os_log_impl(&dword_0, v19, v78, "Instantiating shareLinkMetadata with %s, %s, %s for %s", v22, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    sub_68CD0(aBlock);
  }

  v40 = [objc_allocWithZone(LPLinkMetadata) init];
  sub_2BE388(v41);
  v43 = v42;
  [v40 setURL:v42];

  if (v12)
  {

    v44 = sub_2C5888();
  }

  else
  {
    v44 = 0;
  }

  [v40 setTitle:v44];

  v45 = [objc_allocWithZone(NSItemProvider) init];
  v46 = v84;
  sub_2BFFF8();
  sub_2BFFC8();
  v47 = *(v87 + 8);
  v87 += 8;
  v47(v46, v85);
  v48 = sub_2C5888();

  sub_691F8(a1, v93);
  v49 = swift_allocObject();
  sub_68D1C(v93, v49 + 16);
  v91 = sub_C7C98;
  v92 = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19FCB4;
  v90 = &unk_3908E8;
  v50 = _Block_copy(aBlock);

  [v45 registerItemForTypeIdentifier:v48 loadHandler:v50];
  _Block_release(v50);

  v51 = [objc_allocWithZone(LPImage) initWithItemProvider:v45 properties:0 placeholderImage:0];
  v52 = a1[3];
  v53 = a1[4];
  sub_72084(a1, v52);
  v54 = (*(v53 + 16))(v52, v53);
  if (v54 <= 2)
  {
    if (v54 == 1)
    {
LABEL_19:

      v58 = [objc_allocWithZone(LPFileMetadata) init];
      if (v12)
      {
        v59 = sub_2C5888();
      }

      else
      {
        v59 = 0;
      }

      [v58 setName:v59];

      [v58 setThumbnail:v51];
      v66 = a1[3];
      v67 = a1[4];
      sub_72084(a1, v66);
      if ((*(v67 + 16))(v66, v67) == 1)
      {
        v68 = v84;
        sub_2BFFE8();
      }

      else
      {
        v69 = a1[3];
        v70 = a1[4];
        sub_72084(a1, v69);
        if ((*(v70 + 16))(v69, v70) != 6)
        {
LABEL_34:
          if (sub_2BE368())
          {
            sub_2BE378();
            v72 = objc_allocWithZone(NSURL);
            v73 = sub_2C5888();

            v74 = [v72 initFileURLWithPath:v73];

            aBlock[0] = 0;
            v75 = [v74 bu_fileAllocatedSizeWithError:aBlock];
            if (!aBlock[0])
            {
              [v58 setSize:v75];
            }
          }

          v62 = v58;
          goto LABEL_39;
        }

        v68 = v84;
        sub_2C0038();
      }

      sub_2BFFC8();
      v47(v68, v85);
      v71 = sub_2C5888();

      [v58 setType:v71];

      goto LABEL_34;
    }

    if (v54 != 2)
    {
      goto LABEL_26;
    }

LABEL_16:
    v55 = LPiTunesMediaBookMetadata;
    goto LABEL_17;
  }

  switch(v54)
  {
    case 7u:
      goto LABEL_16;
    case 6u:
      goto LABEL_19;
    case 3u:
      v55 = LPiTunesMediaAudioBookMetadata;
LABEL_17:
      v56 = [objc_allocWithZone(v55) init];
      if (v12)
      {
        v57 = sub_2C5888();
      }

      else
      {
        v57 = 0;
      }

      v60 = v83;
      [v56 setName:v57];

      [v56 setArtwork:v51];
      if (v60)
      {
        v61 = sub_2C5888();
      }

      else
      {
        v61 = 0;
      }

      [v56 setAuthor:v61];

      v62 = v56;
LABEL_39:
      v63 = v62;
      [v40 setSpecialization:v62];

      goto LABEL_40;
  }

LABEL_26:

  v63 = sub_2C0098();
  v64 = sub_2C5DB8();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_0, v63, v64, "SharePreview metadata contains no specialization data", v65, 2u);
  }

LABEL_40:

  return v40;
}

unint64_t sub_1A1968()
{
  result = qword_3C4328;
  if (!qword_3C4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4328);
  }

  return result;
}

uint64_t sub_1A19BC()
{
  if (*(v0 + 56))
  {
    if (*(v0 + 40))
    {
      sub_68CD0(v0 + 16);
    }
  }

  else
  {
  }

  sub_68CD0(v0 + 64);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1A1AA4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A1B80()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v31 = *(v2 + 80);
  v3 = (v31 + 32) & ~v31;
  v4 = *(v2 + 64);
  v5 = *(sub_6620C(&qword_3C4350) - 8);
  v30 = *(v5 + 80);
  v6 = (v3 + v4 + v30) & ~v30;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_6620C(&qword_3BDE70) - 8);
  v29 = *(v8 + 80);
  v9 = (v7 + v29 + 16) & ~v29;
  v10 = *(v8 + 64);
  v11 = *(sub_6620C(&unk_3C4340) - 8);
  v28 = *(v11 + 80);
  v12 = (v9 + v10 + v28) & ~v28;
  v13 = *(v11 + 64);
  v14 = *(sub_6620C(&qword_3BF3D8) - 8);
  v15 = *(v14 + 80);
  v16 = v13 + v15;
  v27 = *(v14 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v17 = sub_2C4BB8();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v6, 1, v17))
  {
    (*(v18 + 8))(v0 + v6, v17);
  }

  v19 = sub_2BEA28();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v0 + v9, 1, v19))
  {
    (*(v20 + 8))(v0 + v9, v19);
  }

  v21 = (v12 + v16) & ~v15;
  v22 = sub_2BEF78();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v0 + v12, 1, v22))
  {
    (*(v23 + 8))(v0 + v12, v22);
  }

  v24 = sub_2BE968();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v0 + v21, 1, v24))
  {
    (*(v25 + 8))(v0 + v21, v24);
  }

  return _swift_deallocObject(v0, v21 + v27, v31 | v30 | v29 | v28 | v15 | 7);
}

uint64_t sub_1A2014@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  v9 = *(*(v7 - 8) + 64);
  v10 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v11 = *(sub_6620C(&qword_3C4350) - 8);
  v12 = (v10 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(sub_6620C(&qword_3BDE70) - 8);
  v15 = (v13 + *(v14 + 80) + 16) & ~*(v14 + 80);
  v16 = *(v14 + 64);
  v17 = *(sub_6620C(&unk_3C4340) - 8);
  v18 = (v15 + v16 + *(v17 + 80)) & ~*(v17 + 80);
  v19 = *(v17 + 64);
  v20 = *(sub_6620C(&qword_3BF3D8) - 8);
  return sub_19CED8(a1, a2, a3, a4, v5 + v10, v5 + v12, *(v5 + v13), *(v5 + v13 + 8), a5, v5 + v15, v5 + v18, v5 + ((v18 + v19 + *(v20 + 80)) & ~*(v20 + 80)), v7, v8);
}

uint64_t dispatch thunk of ContextActionItem.handle()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 80) + **(a2 + 80));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7100C;

  return v7(a1, a2);
}

uint64_t sub_1A2644()
{
  sub_68CD0(v0 + 16);
  sub_68CD0(v0 + 56);

  sub_68CD0(v0 + 104);
  sub_68CD0(v0 + 144);

  return _swift_deallocObject(v0, 185, 7);
}

uint64_t sub_1A26EC(uint64_t a1)
{
  sub_2BFF28();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_88BE0;

  return sub_19952C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1A28A0()
{
  v1 = sub_2BFF28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();
  sub_68CD0(v0 + 32);
  sub_68CD0(v0 + 72);

  sub_68CD0(v0 + 120);
  sub_68CD0(v0 + 160);

  if (*(v0 + 248))
  {
    sub_68CD0(v0 + 224);
  }

  v5 = (v3 + 264) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v4, v3 | 7);
}

uint64_t sub_1A29A4(uint64_t a1)
{
  sub_2BFF28();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_88BE0;

  return sub_199198(a1, v4, v5, v1 + 32);
}

uint64_t sub_1A2AB0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v38 = *(v2 + 80);
  v3 = (v38 + 32) & ~v38;
  v4 = *(v2 + 64);
  v5 = *(sub_6620C(&qword_3C4350) - 8);
  v37 = *(v5 + 80);
  v6 = (v3 + v4 + v37) & ~v37;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_6620C(&qword_3BDE70) - 8);
  v36 = *(v8 + 80);
  v9 = (v7 + v36 + 16) & ~v36;
  v10 = *(v8 + 64);
  v11 = *(sub_6620C(&unk_3C4340) - 8);
  v35 = *(v11 + 80);
  v12 = (v9 + v10 + v35) & ~v35;
  v13 = *(v11 + 64);
  v14 = *(sub_6620C(&qword_3BF3D8) - 8);
  v30 = v12;
  v34 = *(v14 + 80);
  v31 = (v12 + v13 + v34) & ~v34;
  v15 = *(v14 + 64) + v31 + 7;
  v33 = sub_2BFF28();
  v16 = *(v33 - 8);
  v17 = *(v16 + 80);
  v32 = *(v16 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v18 = sub_2C4BB8();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v0 + v6, 1, v18))
  {
    (*(v19 + 8))(v0 + v6, v18);
  }

  v20 = v15 & 0xFFFFFFFFFFFFFFF8;

  v21 = sub_2BEA28();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v0 + v9, 1, v21))
  {
    (*(v22 + 8))(v0 + v9, v21);
  }

  v23 = sub_2BEF78();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v0 + v30, 1, v23))
  {
    (*(v24 + 8))(v0 + v30, v23);
  }

  v25 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = sub_2BE968();
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v0 + v31, 1, v26))
  {
    (*(v27 + 8))(v0 + v31, v26);
  }

  if (*(v0 + v25 + 24))
  {
    sub_68CD0(v0 + v25);
  }

  v28 = (v25 + v17 + 40) & ~v17;
  (*(v16 + 8))(v0 + v28, v33);

  return _swift_deallocObject(v0, v28 + v32, v38 | v37 | v36 | v35 | v34 | v17 | 7);
}

uint64_t sub_1A3004()
{
  v1 = *(v0 + 16);
  v18 = *(v0 + 24);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(sub_6620C(&qword_3C4350) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_6620C(&qword_3BDE70) - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_6620C(&unk_3C4340) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_6620C(&qword_3BF3D8) - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(sub_2BFF28() - 8);
  return sub_19D708(v0 + v2, v0 + v5, *(v0 + v6), *(v0 + v6 + 8), v0 + v8, v0 + v11, v0 + v14, *(v0 + v15), *(v0 + v15 + 8), v0 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8), v0 + ((((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v16 + 80) + 40) & ~*(v16 + 80)), v1, v18);
}

uint64_t sub_1A32C8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v38 = *(v2 + 80);
  v3 = (v38 + 48) & ~v38;
  v4 = *(v2 + 64);
  v5 = *(sub_6620C(&qword_3C4350) - 8);
  v37 = *(v5 + 80);
  v6 = (v3 + v4 + v37) & ~v37;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_6620C(&qword_3BDE70) - 8);
  v36 = *(v8 + 80);
  v9 = (v7 + v36 + 16) & ~v36;
  v10 = *(v8 + 64);
  v11 = *(sub_6620C(&unk_3C4340) - 8);
  v35 = *(v11 + 80);
  v12 = (v9 + v10 + v35) & ~v35;
  v13 = *(v11 + 64);
  v14 = *(sub_6620C(&qword_3BF3D8) - 8);
  v30 = v12;
  v34 = *(v14 + 80);
  v31 = (v12 + v13 + v34) & ~v34;
  v15 = *(v14 + 64) + v31 + 7;
  v33 = sub_2BFF28();
  v16 = *(v33 - 8);
  v17 = *(v16 + 80);
  v32 = *(v16 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v18 = sub_2C4BB8();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v0 + v6, 1, v18))
  {
    (*(v19 + 8))(v0 + v6, v18);
  }

  v20 = v15 & 0xFFFFFFFFFFFFFFF8;

  v21 = sub_2BEA28();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v0 + v9, 1, v21))
  {
    (*(v22 + 8))(v0 + v9, v21);
  }

  v23 = sub_2BEF78();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v0 + v30, 1, v23))
  {
    (*(v24 + 8))(v0 + v30, v23);
  }

  v25 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = sub_2BE968();
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v0 + v31, 1, v26))
  {
    (*(v27 + 8))(v0 + v31, v26);
  }

  if (*(v0 + v25 + 24))
  {
    sub_68CD0(v0 + v25);
  }

  v28 = (v25 + v17 + 40) & ~v17;
  (*(v16 + 8))(v0 + v28, v33);

  return _swift_deallocObject(v0, v28 + v32, v38 | v37 | v36 | v35 | v34 | v17 | 7);
}

uint64_t sub_1A3824(uint64_t a1)
{
  v17 = v1[4];
  v2 = *(*(v17 - 8) + 64);
  v15 = (*(*(v17 - 8) + 80) + 48) & ~*(*(v17 - 8) + 80);
  v3 = *(sub_6620C(&qword_3C4350) - 8);
  v14 = (v15 + v2 + *(v3 + 80)) & ~*(v3 + 80);
  v4 = (*(v3 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_6620C(&qword_3BDE70) - 8);
  v13 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  sub_6620C(&unk_3C4340);
  sub_6620C(&qword_3BF3D8);
  sub_2BFF28();
  v6 = v1[3];
  v12 = v1[2];
  v7 = v1 + v4;
  v8 = *(v1 + v4);
  v9 = *(v7 + 1);
  v10 = swift_task_alloc();
  *(v16 + 16) = v10;
  *v10 = v16;
  v10[1] = sub_88BE0;

  return sub_19DE50(a1, v12, v6, v1 + v15, v1 + v14, v8, v9, v1 + v13);
}

uint64_t sub_1A3B90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3BD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A3C28()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A3CE4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_88BE0;

  return sub_19C200(a1, v7, v8, v1 + v6, v4, v5);
}

unint64_t sub_1A3DE0()
{
  result = qword_3C4440;
  if (!qword_3C4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4440);
  }

  return result;
}

uint64_t sub_1A3E34()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2BFF28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v12 = *(v7 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5 + 24))
  {
    sub_68CD0(v0 + v5);
  }

  v9 = v3 | v8;
  v10 = (v5 + v8 + 40) & ~v8;
  (*(v7 + 8))(v0 + v10, v6);

  return _swift_deallocObject(v0, v10 + v12, v9 | 7);
}

uint64_t sub_1A3FBC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_2BFF28() - 8);
  v9 = (v7 + *(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1 + v6;
  v13 = *(v1 + v6);
  v14 = *(v12 + 1);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_88BE0;

  return sub_199928(a1, v10, v11, v1 + v5, v13, v14, v1 + v7, v1 + v9);
}

uint64_t sub_1A414C()
{
  sub_68CD0(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1A4184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A419C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A41DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1A424C()
{
  v1 = sub_2C5118();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShareBarButtonItem();
  v16.receiver = v0;
  v16.super_class = v5;
  v6 = objc_msgSendSuper2(&v16, "init");
  sub_66278(0, &qword_3BDC70);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = sub_2C5888();
  v10 = [v7 __systemImageNamedSwift:v9];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_2C6018();
  [v8 setPrimaryAction:v11];

  sub_1DA078();
  v12 = sub_2C5888();

  [v8 setAccessibilityLabel:v12];

  memset(v15, 0, sizeof(v15));
  memset(v14, 0, sizeof(v14));
  sub_2C50B8();
  sub_69198(v14, qword_3C0250);
  sub_69198(v15, qword_3C0250);
  sub_2C5F08();

  (*(v2 + 8))(v4, v1);
  return v8;
}

void sub_1A4504(void *a1, void *a2)
{
  v105 = a2;
  v3 = sub_6620C(&qword_3BD858);
  v84 = *(v3 - 8);
  __chkstk_darwin(v3);
  v83 = &v77 - v4;
  v82 = sub_6620C(&qword_3BD1B0);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v85 = &v77 - v5;
  v97 = sub_2C4D28();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v101 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_2C22F8();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_2C2208();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v89 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2C2178();
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2C4BF8();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v88 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v77 - v12;
  v13 = sub_2BEB28();
  v104 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2BF048();
  v102 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2BF088();
  v103 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_6620C(&unk_3C4370);
  __chkstk_darwin(v22 - 8);
  v24 = &v77 - v23;
  v109 = sub_2BE3B8();
  v108 = *(v109 - 8);
  *&v25 = __chkstk_darwin(v109).n128_u64[0];
  v107 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a1;
  if ([a1 sender])
  {
    sub_2C6128();
    swift_unknownObjectRelease();
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  v117 = v114;
  v118 = v115;
  if (!*(&v115 + 1))
  {
    sub_69198(&v117, qword_3C0250);
    return;
  }

  type metadata accessor for ProductFeedBarButtonItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v80 = v3;
  v27 = v110;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v29 = Strong;
  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {

    v116 = 0;
    v114 = 0u;
    v115 = 0u;
LABEL_15:
    sub_69198(&v114, &unk_3C2550);
    return;
  }

  v78 = v27;
  v79 = v29;
  v31 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo;
  v32 = v30;
  swift_beginAccess();
  sub_E452C(v32 + v31, &v114);

  if (!*(&v115 + 1))
  {

    goto LABEL_15;
  }

  sub_68D1C(&v114, &v117);
  sub_72084(&v117, *(&v118 + 1));
  sub_2BF968();
  v33 = v108;
  v34 = v109;
  if ((*(v108 + 48))(v24, 1, v109) != 1)
  {
    (*(v33 + 32))(v107, v24, v34);
    swift_beginAccess();
    v35 = swift_unknownObjectWeakLoadStrong();
    v36 = &unk_2E3000;
    if (v35)
    {
      v37 = v35;
      (*(v102 + 104))(v18, enum case for ClickData.TargetType.button(_:), v16);
      (*(v104 + 104))(v15, enum case for LinkActionType.click(_:), v13);
      sub_2BF058();
      sub_2ADDC8(v21, &v110);
      (*(v103 + 8))(v21, v19);
      if (*(&v111 + 1))
      {
        sub_68D1C(&v110, &v114);
        v105 = v37;
        sub_72084(&v117, *(&v118 + 1));
        sub_2BF3B8();
        v38 = v87;
        v39 = v86;
        v40 = v90;
        (*(v87 + 104))(v86, enum case for Metrics.TargetType.button(_:), v90);
        v41 = v91;
        v42 = v89;
        v43 = v93;
        (*(v91 + 104))(v89, enum case for Metrics.ClickActionType.share(_:), v93);
        v44 = v92;
        sub_2C22A8();
        v45 = v98;
        sub_2C2118();

        (*(v94 + 8))(v44, v95);
        (*(v41 + 8))(v42, v43);
        (*(v38 + 8))(v39, v40);
        v46 = v99;
        v47 = v100;
        (*(v99 + 16))(v88, v45, v100);
        sub_6620C(&qword_3BC240);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_2E3F30;
        sub_691F8(&v114, v48 + 32);
        v49 = v101;
        v50 = v105;
        sub_2C4D18();
        v51 = v97;
        *(&v111 + 1) = v97;
        v112 = &protocol witness table for CompoundAction;
        v52 = sub_720C8(&v110);
        v53 = v96;
        (*(v96 + 16))(v52, v49, v51);
        v54 = swift_unknownObjectWeakLoadStrong();
        if (v54)
        {
          v55 = v54;
          sub_DA510();
          v56 = v82;
          sub_2C4DB8();
          sub_2C5228();
          sub_2C4DB8();
          v57 = v83;
          sub_2C5218();
          v58 = v84;
          v59 = v80;
          (*(v84 + 104))(v57, enum case for ActionDispatcher.MetricsBehavior.fromAction<A>(_:), v80);
          sub_2C4F28();

          v49 = v101;

          v60 = v59;
          v47 = v100;
          (*(v58 + 8))(v57, v60);
          v46 = v99;
          v61 = v56;
          v45 = v98;
          (*(v81 + 8))(v85, v61);
        }

        else
        {
        }

        (*(v53 + 8))(v49, v51);
        (*(v46 + 8))(v45, v47);
        sub_68CD0(&v114);
        sub_68CD0(&v110);
        v36 = &unk_2E3000;
      }

      else
      {

        sub_69198(&v110, &unk_3BDC90);
      }
    }

    sub_6620C(&qword_3BC308);
    v62 = swift_allocObject();
    *(v62 + 16) = v36[243];
    v63 = v109;
    *(v62 + 56) = v109;
    v64 = sub_720C8((v62 + 32));
    v65 = v108;
    (*(v108 + 16))(v64, v107, v63);
    v66 = objc_allocWithZone(UIActivityViewController);
    isa = sub_2C5B18().super.isa;

    v68 = [v66 initWithActivityItems:isa applicationActivities:0];

    v69 = v68;
    v70 = [v69 presentationController];
    v71 = v106;
    v72 = v79;
    if (!v70)
    {
LABEL_33:
      v75 = [v69 popoverPresentationController];

      if (!v75)
      {
LABEL_43:
        [v72 presentViewController:v69 animated:1 completion:0];

        (*(v65 + 8))(v107, v63);
        goto LABEL_44;
      }

      if ([v71 sender])
      {
        sub_2C6128();
        swift_unknownObjectRelease();
      }

      else
      {
        v111 = 0u;
        v110 = 0u;
      }

      v114 = v110;
      v115 = v111;
      if (*(&v111 + 1))
      {
        sub_66278(0, &unk_3BFDE0);
        if (swift_dynamicCast())
        {
          v76 = v113;
LABEL_42:
          [v75 setSourceItem:v76];

          swift_unknownObjectRelease();
          goto LABEL_43;
        }
      }

      else
      {
        sub_69198(&v114, qword_3C0250);
      }

      v76 = 0;
      goto LABEL_42;
    }

    v73 = v70;
    if ([v106 sender])
    {
      sub_2C6128();
      swift_unknownObjectRelease();
    }

    else
    {
      v111 = 0u;
      v110 = 0u;
    }

    v114 = v110;
    v115 = v111;
    if (*(&v111 + 1))
    {
      sub_66278(0, &unk_3BFDE0);
      if (swift_dynamicCast())
      {
        v74 = v113;
LABEL_32:
        [v73 setSourceItem:v74];

        swift_unknownObjectRelease();
        goto LABEL_33;
      }
    }

    else
    {
      sub_69198(&v114, qword_3C0250);
    }

    v74 = 0;
    goto LABEL_32;
  }

  sub_69198(v24, &unk_3C4370);
LABEL_44:
  sub_68CD0(&v117);
}

id sub_1A565C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShareBarButtonItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1A56B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A5718()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_2C5DD8();
    v6 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1A5860()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 64);
  if (*(v0 + 72) != 1)
  {

    sub_2C5DD8();
    v6 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t SwipeActionsViewModifier.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = swift_getKeyPath();
  *(a2 + 40) = 0;
  sub_2C1498();
  sub_1A86DC(&qword_3BF720, &type metadata accessor for ProfileRestrictions);
  *(a2 + 48) = sub_2C2B48();
  *(a2 + 56) = v4;
  *(a2 + 64) = swift_getKeyPath();
  *(a2 + 72) = 0;
  v5 = type metadata accessor for SwipeActionsViewModifier(0);
  v6 = *(v5 + 36);
  *(a2 + v6) = swift_getKeyPath();
  sub_6620C(&qword_3BF850);
  swift_storeEnumTagMultiPayload();
  v7 = *(v5 + 40);
  v8 = sub_2C1348();
  v9 = *(*(v8 - 8) + 32);

  return v9(a2 + v7, a1, v8);
}

uint64_t SwipeActionsViewModifier.body(content:)()
{
  v1 = sub_6620C(&qword_3C4568);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-v3];
  v12 = v0;
  v5 = sub_6620C(&qword_3C4570);
  v6 = sub_6620C(&qword_3C4578);
  v7 = sub_72B74(&qword_3C4580, &qword_3C4570);
  v8 = sub_1A8554();
  sub_2C3ED8();
  v11 = v0;
  sub_6620C(&qword_3C45A0);
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  swift_getOpaqueTypeConformance2();
  sub_1A8628();
  sub_2C3ED8();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1A5D1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_6620C(&qword_3C4598);
  v46 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v41 - v4;
  v6 = sub_6620C(&qword_3C4788);
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v9 = sub_6620C(&qword_3C4790);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SwipeActionButtonsView(0);
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  if (sub_1A66FC())
  {
    v21 = *(v46 + 56);

    return v21(a1, 1, 1, v3);
  }

  else
  {
    v42 = v3;
    v43 = a1;
    v23 = *(type metadata accessor for SwipeActionsViewModifier(0) + 40);
    v24 = v15[15];
    v25 = sub_2C1348();
    (*(*(v25 - 8) + 16))(&v20[v24], v1 + v23, v25);
    KeyPath = swift_getKeyPath();
    *v20 = swift_getKeyPath();
    v20[40] = 0;
    *(v20 + 6) = swift_getKeyPath();
    v20[56] = 0;
    v27 = v15[6];
    *&v20[v27] = swift_getKeyPath();
    sub_6620C(&qword_3BD670);
    swift_storeEnumTagMultiPayload();
    v28 = v15[7];
    *&v20[v28] = swift_getKeyPath();
    sub_6620C(&qword_3BDD08);
    swift_storeEnumTagMultiPayload();
    v29 = &v20[v15[8]];
    *v29 = KeyPath;
    v29[8] = 0;
    v30 = v15[9];
    *&v20[v30] = swift_getKeyPath();
    sub_6620C(&qword_3C4730);
    swift_storeEnumTagMultiPayload();
    v31 = &v20[v15[10]];
    *v31 = swift_getKeyPath();
    v31[8] = 0;
    v32 = v15[11];
    *&v20[v32] = swift_getKeyPath();
    sub_6620C(&qword_3BF848);
    swift_storeEnumTagMultiPayload();
    v33 = &v20[v15[12]];
    *v33 = swift_getKeyPath();
    v33[8] = 0;
    v34 = &v20[v15[13]];
    *v34 = swift_getKeyPath();
    v34[8] = 0;
    v35 = v15[14];
    *&v20[v35] = swift_getKeyPath();
    sub_6620C(&qword_3BF850);
    swift_storeEnumTagMultiPayload();
    v36 = v15[16];
    v37 = 1;
    v20[v36] = 1;
    v38 = sub_1A5860();
    if ((v38 & 1) == 0)
    {
      v41 = &v41;
      __chkstk_darwin(v38);
      *(&v41 - 2) = v1;
      sub_6620C(&qword_3C4798);
      type metadata accessor for ContextActionMenuView(0);
      sub_1A9C9C();
      sub_1A86DC(&qword_3C23D8, type metadata accessor for ContextActionMenuView);
      sub_2C3958();
      (*(v44 + 32))(v14, v8, v45);
      v37 = 0;
    }

    (*(v44 + 56))(v14, v37, 1, v45);
    sub_1A9DE4(v20, v17, type metadata accessor for SwipeActionButtonsView);
    sub_6932C(v14, v11, &qword_3C4790);
    sub_1A9DE4(v17, v5, type metadata accessor for SwipeActionButtonsView);
    v39 = sub_6620C(&qword_3C47A8);
    sub_6932C(v11, &v5[*(v39 + 48)], &qword_3C4790);
    sub_69198(v14, &qword_3C4790);
    sub_1A9D80(v20);
    sub_69198(v11, &qword_3C4790);
    sub_1A9D80(v17);
    v40 = v43;
    sub_69130(v5, v43, &qword_3C4598);
    return (*(v46 + 56))(v40, 0, 1, v42);
  }
}

uint64_t sub_1A63C4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SwipeActionButtonsView(0);
  v22 = *(v3 - 1);
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1A66FC())
  {
    v6 = *(v22 + 56);

    return v6(a1, 1, 1, v3);
  }

  else
  {
    v8 = *(type metadata accessor for SwipeActionsViewModifier(0) + 40);
    v9 = v3[15];
    v10 = sub_2C1348();
    (*(*(v10 - 8) + 16))(&v5[v9], v1 + v8, v10);
    KeyPath = swift_getKeyPath();
    *v5 = swift_getKeyPath();
    v5[40] = 0;
    *(v5 + 6) = swift_getKeyPath();
    v5[56] = 0;
    v12 = v3[6];
    *&v5[v12] = swift_getKeyPath();
    sub_6620C(&qword_3BD670);
    swift_storeEnumTagMultiPayload();
    v13 = v3[7];
    *&v5[v13] = swift_getKeyPath();
    sub_6620C(&qword_3BDD08);
    swift_storeEnumTagMultiPayload();
    v14 = &v5[v3[8]];
    *v14 = KeyPath;
    v14[8] = 0;
    v15 = v3[9];
    *&v5[v15] = swift_getKeyPath();
    sub_6620C(&qword_3C4730);
    swift_storeEnumTagMultiPayload();
    v16 = &v5[v3[10]];
    *v16 = swift_getKeyPath();
    v16[8] = 0;
    v17 = v3[11];
    *&v5[v17] = swift_getKeyPath();
    sub_6620C(&qword_3BF848);
    swift_storeEnumTagMultiPayload();
    v18 = &v5[v3[12]];
    *v18 = swift_getKeyPath();
    v18[8] = 0;
    v19 = &v5[v3[13]];
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v20 = v3[14];
    *&v5[v20] = swift_getKeyPath();
    sub_6620C(&qword_3BF850);
    swift_storeEnumTagMultiPayload();
    v5[v3[16]] = 0;
    sub_1A98B4(v5, a1);
    return (*(v22 + 56))(a1, 0, 1, v3);
  }
}

uint64_t sub_1A66FC()
{
  v1 = v0;
  v2 = sub_2C30F8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  if (*(v1 + 8) == 1)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_2C5DD8();
    v7 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v6, 0);
    (*(v3 + 8))(v5, v2);
    if (LOBYTE(v16[0]) != 1)
    {
      goto LABEL_9;
    }
  }

  v8 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {

    sub_2C5DD8();
    v9 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v8, 0);
    (*(v3 + 8))(v5, v2);
    if (LOBYTE(v16[0]) != 1)
    {
LABEL_12:
      v13 = 1;
      return v13 & 1;
    }
  }

LABEL_9:
  type metadata accessor for SwipeActionsViewModifier(0);
  sub_2C1328();
  sub_72084(v16, v16[3]);
  if ((sub_2BF908() & 1) == 0)
  {
    sub_68CD0(v16);
    goto LABEL_14;
  }

  v10 = *(v1 + 48);
  if (v10)
  {
    v11 = v10;
    v12 = sub_2C1488();

    sub_68CD0(v16);
    if ((v12 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    v13 = sub_1A5718();
    return v13 & 1;
  }

  sub_2C1498();
  sub_1A86DC(&qword_3BF720, &type metadata accessor for ProfileRestrictions);
  result = sub_2C2B38();
  __break(1u);
  return result;
}

uint64_t sub_1A69E8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SwipeActionsViewModifier(0);
  sub_2C1328();
  v10[0] = xmmword_2ECB90;
  memset(&v10[1], 0, 32);
  *a1 = swift_getKeyPath();
  *(a1 + 40) = 0;
  sub_691F8(v11, v9);
  sub_C04C8(v10, v8);
  v2 = type metadata accessor for ContextActionMenuView(0);
  sub_CC804(v9, v8, a1 + v2[5]);
  sub_72084(v11, v11[3]);
  v3 = sub_2BF3B8();
  v5 = v4;
  sub_C12F8(v10);
  v6 = (a1 + v2[6]);
  *v6 = v3;
  v6[1] = v5;
  *(a1 + v2[7]) = 0;
  return sub_68CD0(v11);
}

uint64_t sub_1A6AE4@<X0>(uint64_t a1@<X8>)
{
  v8 = sub_1DA078();
  v9 = v2;
  sub_7212C();
  sub_2C4308();
  v3 = [objc_opt_self() systemGray2Color];
  sub_2C4178();
  KeyPath = swift_getKeyPath();
  v5 = sub_2C2718();
  result = sub_6620C(&qword_3C4798);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v5;
  return result;
}

void *sub_1A6BD4()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SwipeActionButtonsView(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1A6D34()
{
  v1 = sub_6620C(&qword_3C4568);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-v3];
  v12 = v0;
  v5 = sub_6620C(&qword_3C4570);
  v6 = sub_6620C(&qword_3C4578);
  v7 = sub_72B74(&qword_3C4580, &qword_3C4570);
  v8 = sub_1A8554();
  sub_2C3ED8();
  v11 = v0;
  sub_6620C(&qword_3C45A0);
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  swift_getOpaqueTypeConformance2();
  sub_1A8628();
  sub_2C3ED8();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1A6F4C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_2BE7E8();
  __chkstk_darwin(v4 - 8);
  v53 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C30F8();
  v55 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&qword_3BCE00);
  __chkstk_darwin(v9 - 8);
  v11 = &v53 - v10;
  v54 = *a1;
  v12 = type metadata accessor for SwipeActionButtonsView(0);
  sub_2C1328();
  sub_691F8(v61, v58);
  v13 = type metadata accessor for ContextActionDataModel.Asset();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR___BSUIContextActionDataAssetModel_initType];
  sub_691F8(v58, &v14[OBJC_IVAR___BSUIContextActionDataAssetModel_initType]);
  v15[40] = 3;
  v57.receiver = v14;
  v57.super_class = v13;
  v16 = objc_msgSendSuper2(&v57, "init");
  sub_68CD0(v58);
  v17 = objc_allocWithZone(type metadata accessor for ContextActionDataModel());
  v18 = ContextActionDataModel.init(asset:sourceView:)(v16, 0);
  sub_72084(v61, v62);
  v19 = sub_2BF3B8();
  v21 = v20;
  v22 = &v18[OBJC_IVAR___BSUIContextActionDataModel_presentationRefID];
  swift_beginAccess();
  *v22 = v19;
  v22[1] = v21;

  sub_29AD44(v11);
  v23 = sub_2BE5C8();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v11, 1, v23) == 1)
  {
    sub_69198(v11, &qword_3BCE00);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = sub_2BE598();
    v26 = v27;
    (*(v24 + 8))(v11, v23);
  }

  v28 = &v18[OBJC_IVAR___BSUIContextActionDataModel_presentationRefInstance];
  swift_beginAccess();
  *v28 = v25;
  v28[1] = v26;

  v29 = v2 + v12[10];
  v30 = *v29;
  v31 = v6;
  if (*(v29 + 8) == 1)
  {
    LOBYTE(v58[0]) = v30 & 1;
  }

  else
  {

    sub_2C5DD8();
    v32 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v30, 0);
    (*(v55 + 8))(v8, v6);
    LOBYTE(v30) = v58[0];
  }

  v33 = OBJC_IVAR___BSUIContextActionDataModel_shouldReportFigaro;
  swift_beginAccess();
  v18[v33] = v30 & 1;
  v34 = v2 + v12[12];
  v35 = *v34;
  if (*(v34 + 8) != 1)
  {

    sub_2C5DD8();
    v36 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v35, 0);
    (*(v55 + 8))(v8, v6);
    LOBYTE(v35) = v58[0];
  }

  v37 = OBJC_IVAR___BSUIContextActionDataModel_isAnODPRecommendation;
  swift_beginAccess();
  v18[v37] = v35 & 1;
  v38 = v2 + v12[13];
  v39 = *v38;
  if (*(v38 + 8) != 1)
  {

    sub_2C5DD8();
    v40 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v39, 0);
    (*(v55 + 8))(v8, v6);
    LOBYTE(v39) = v58[0];
  }

  v41 = OBJC_IVAR___BSUIContextActionDataModel_supportsSuggestionContextMenu;
  swift_beginAccess();
  v18[v41] = v39 & 1;
  v42 = v53;
  sub_29AD68(v53);
  v43 = OBJC_IVAR___BSUIContextActionDataModel_analyticsAttributes;
  swift_beginAccess();
  sub_CF028(v42, &v18[v43]);
  swift_endAccess();
  sub_29AF38(v58);
  v44 = v59;
  v45 = v60;
  sub_72084(v58, v59);
  v46 = *(v2 + 48);
  if (*(v2 + 56) == 1)
  {
    v47 = v46;
    if (!v46)
    {
      goto LABEL_15;
    }
  }

  else
  {

    sub_2C5DD8();
    v48 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v46, 0);
    (*(v55 + 8))(v8, v31);
    v46 = v56;
    if (!v56)
    {
LABEL_15:
      v46 = [objc_allocWithZone(UIViewController) init];
    }
  }

  LOBYTE(v56) = v54;
  sub_72084(v61, v62);
  v49 = sub_2BF3B8();
  v51 = (*(v45 + 16))(v18, v46, &v56, v49, v50, v44, v45);

  sub_68CD0(v58);
  sub_68CD0(v61);
  return v51;
}

uint64_t sub_1A76EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v5 = sub_6620C(&qword_3C4350);
  __chkstk_darwin(v5 - 8);
  v73 = v60 - v6;
  v7 = sub_6620C(&qword_3BF3D8);
  __chkstk_darwin(v7 - 8);
  v71 = v60 - v8;
  v9 = sub_6620C(&unk_3C4340);
  __chkstk_darwin(v9 - 8);
  v75 = v60 - v10;
  v11 = sub_2BF0B8();
  v68 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6620C(&qword_3BDE70);
  __chkstk_darwin(v14 - 8);
  v74 = v60 - v15;
  v16 = sub_6620C(&qword_3C4358);
  __chkstk_darwin(v16 - 8);
  v69 = (v60 - v17);
  v77 = sub_6620C(&qword_3C4770);
  __chkstk_darwin(v77);
  v70 = v60 - v18;
  v76 = sub_6620C(&qword_3C4780);
  __chkstk_darwin(v76);
  v20 = v60 - v19;
  v21 = sub_6620C(&qword_3C4750);
  __chkstk_darwin(v21);
  v23 = v60 - v22;
  v25 = a1[3];
  v24 = a1[4];
  sub_72084(a1, v25);
  (*(v24 + 16))(v78, v25, v24);
  if (ContextActionType.rawValue.getter() == 0x6572616873 && v26 == 0xE500000000000000)
  {

LABEL_5:
    v28 = a1[3];
    v29 = a1[4];
    sub_72084(a1, v28);
    ContextActionItem.swipeActionShareButton.getter(v28, v29, v23);
    v30 = a1[3];
    v31 = a1[4];
    sub_72084(a1, v30);
    v32 = ContextActionItem.swipeActionBackgroundColor.getter(v30, v31);
    KeyPath = swift_getKeyPath();
    v78[0] = v32;
    v34 = sub_2C2718();
    v35 = &v23[*(v21 + 36)];
    *v35 = KeyPath;
    v35[1] = v34;
    v36 = &qword_3C4750;
    sub_6932C(v23, v20, &qword_3C4750);
    swift_storeEnumTagMultiPayload();
    sub_1A9A24();
    sub_1A9ADC();
    sub_2C33C8();
    v37 = v23;
    return sub_69198(v37, v36);
  }

  v27 = sub_2C65B8();

  if (v27)
  {
    goto LABEL_5;
  }

  v66 = v21;
  v67 = a3;
  v38 = a1[3];
  v64 = a1[4];
  v65 = v38;
  v63 = sub_72084(a1, v38);
  v39 = type metadata accessor for SwipeActionButtonsView(0);
  v60[0] = *(v39 + 60);
  v61 = sub_2C12E8();
  v62 = v40;
  v60[2] = v39;
  v60[1] = *(v39 + 28);
  sub_29AB30(v13);
  sub_2BEA28();
  sub_1A86DC(&unk_3C0030, &type metadata accessor for SectionData);
  sub_1A86DC(&unk_3C43F0, &type metadata accessor for SectionData);
  sub_2BF098();
  v41 = *(v68 + 8);
  v41(v13, v11);
  sub_29AB30(v13);
  sub_2BEF78();
  sub_1A86DC(&unk_3C0040, &type metadata accessor for PageData);
  sub_1A86DC(&unk_3C4400, &type metadata accessor for PageData);
  sub_2BF098();
  v41(v13, v11);
  v42 = sub_1A6BD4();
  if (v42)
  {
    v43 = v42;
    sub_2C1328();
    v44 = v43;
    v45 = v71;
    sub_2BE928();
    v46 = sub_2BE968();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  }

  else
  {
    v47 = sub_2BE968();
    v45 = v71;
    (*(*(v47 - 8) + 56))(v71, 1, 1, v47);
  }

  v48 = v73;
  sub_29B300(v73);
  v49 = v69;
  v51 = v74;
  v50 = v75;
  ContextActionItem.swipeActionButton(for:sectionData:pageData:contentData:pageMetrics:)(v61, v62, v74, v75, v45, v48, v65, v64, v69);

  sub_69198(v48, &qword_3C4350);
  sub_69198(v45, &qword_3BF3D8);
  sub_69198(v50, &unk_3C4340);
  sub_69198(v51, &qword_3BDE70);
  v52 = a1[3];
  v53 = a1[4];
  sub_72084(a1, v52);
  v54 = ContextActionItem.swipeActionBackgroundColor.getter(v52, v53);
  v55 = swift_getKeyPath();
  v78[0] = v54;
  v56 = sub_2C2718();
  v57 = v70;
  sub_69130(v49, v70, &qword_3C4358);
  v58 = (v57 + *(v77 + 36));
  *v58 = v55;
  v58[1] = v56;
  v36 = &qword_3C4770;
  sub_6932C(v57, v20, &qword_3C4770);
  swift_storeEnumTagMultiPayload();
  sub_1A9A24();
  sub_1A9ADC();
  sub_2C33C8();
  v37 = v57;
  return sub_69198(v37, v36);
}

uint64_t sub_1A7FF0@<X0>(void *a1@<X8>)
{
  sub_E61A4();
  result = sub_2C3108();
  v3 = v5;
  if (v5)
  {
    v5(&v5, result);
    result = sub_77BDC(v3);
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A8098@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2CC8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A8114(uint64_t a1)
{
  v2 = sub_2BE7E8();
  __chkstk_darwin(v2 - 8);
  sub_1A9DE4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), &type metadata accessor for ContextAssetInfoAnalytics);
  return sub_2C2C98();
}

uint64_t sub_1A81B0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  v9 = *(v1 + *(v4 + 72));
  v8 = sub_1A6F4C(&v9);
  swift_getKeyPath();
  sub_1A9DE4(v1, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SwipeActionButtonsView);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1A98B4(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_6620C(&qword_3C4330);
  sub_6620C(&qword_3C4738);
  sub_72B74(&qword_3BF840, &qword_3C4330);
  sub_1A9998();
  return sub_2C4558();
}

uint64_t sub_1A837C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2C08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A83D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2E08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A8404@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2E08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A8438@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2C08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A8490@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2CC8();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1A8554()
{
  result = qword_3C4588;
  if (!qword_3C4588)
  {
    sub_718D4(&qword_3C4578);
    sub_72B74(&qword_3C4590, &qword_3C4598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4588);
  }

  return result;
}

unint64_t sub_1A8628()
{
  result = qword_3C45A8;
  if (!qword_3C45A8)
  {
    sub_718D4(&qword_3C45A0);
    sub_1A86DC(&qword_3C45B0, type metadata accessor for SwipeActionButtonsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C45A8);
  }

  return result;
}

uint64_t sub_1A86DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A8774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_6620C(&qword_3BF6A8);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_2C1348();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1A88C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 48) = a2;
  }

  else
  {
    v8 = sub_6620C(&qword_3BF6A8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2C1348();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1A89F4()
{
  sub_9DC2C(319, &qword_3BC858);
  if (v0 <= 0x3F)
  {
    sub_CEA1C();
    if (v1 <= 0x3F)
    {
      sub_1A9360(319, &qword_3BF768, &type metadata accessor for ContextAssetInfoAnalytics);
      if (v2 <= 0x3F)
      {
        sub_2C1348();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A8AE0()
{
  sub_718D4(&qword_3C4568);
  sub_718D4(&qword_3C45A0);
  sub_718D4(&qword_3C4570);
  sub_718D4(&qword_3C4578);
  sub_72B74(&qword_3C4580, &qword_3C4570);
  sub_1A8554();
  swift_getOpaqueTypeConformance2();
  sub_1A8628();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A8C0C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_6620C(&qword_3BF6A0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = sub_6620C(&qword_3BDD10);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_15;
  }

  v13 = sub_6620C(&qword_3C4660);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_15;
  }

  v14 = sub_6620C(&qword_3BF698);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[11];
    goto LABEL_15;
  }

  v15 = sub_6620C(&qword_3BF6A8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[14];
    goto LABEL_15;
  }

  v17 = sub_2C1348();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[15];

  return v18(v19, a2, v17);
}

uint64_t sub_1A8E98(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = -a2;
    return result;
  }

  v8 = sub_6620C(&qword_3BF6A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = sub_6620C(&qword_3BDD10);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_13;
  }

  v13 = sub_6620C(&qword_3C4660);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_13;
  }

  v14 = sub_6620C(&qword_3BF698);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_13;
  }

  v15 = sub_6620C(&qword_3BF6A8);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[14];
    goto LABEL_13;
  }

  v17 = sub_2C1348();
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[15];

  return v18(v19, a2, a2, v17);
}

void sub_1A9114()
{
  sub_CEAF8(319, &qword_3BF728, &qword_3BF730);
  if (v0 <= 0x3F)
  {
    sub_CEAF8(319, &qword_3BF738, &qword_3BF740);
    if (v1 <= 0x3F)
    {
      sub_CEAF8(319, &qword_3BF758, &qword_3BCE00);
      if (v2 <= 0x3F)
      {
        sub_1A9360(319, &qword_3BDDA8, &type metadata accessor for DataStack);
        if (v3 <= 0x3F)
        {
          sub_CEAF8(319, &qword_3BDD98, &qword_3BDDA0);
          if (v4 <= 0x3F)
          {
            sub_CEAF8(319, &unk_3C46D0, &qword_3C4350);
            if (v5 <= 0x3F)
            {
              sub_9DC2C(319, &qword_3BF760);
              if (v6 <= 0x3F)
              {
                sub_CEAF8(319, &qword_3BF748, &qword_3BF750);
                if (v7 <= 0x3F)
                {
                  sub_9DC2C(319, &qword_3BC858);
                  if (v8 <= 0x3F)
                  {
                    sub_1A9360(319, &qword_3BF768, &type metadata accessor for ContextAssetInfoAnalytics);
                    if (v9 <= 0x3F)
                    {
                      sub_2C1348();
                      if (v10 <= 0x3F)
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
  }
}

void sub_1A9360(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A93D8()
{
  v1 = type metadata accessor for SwipeActionButtonsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3 + 40))
  {
    sub_68CD0(v0 + v3);
  }

  else
  {
  }

  sub_9E94C(*(v5 + 48), *(v5 + 56));
  v6 = v1[6];
  sub_6620C(&qword_3BD670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2BE5C8();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[7];
  sub_6620C(&qword_3BDD08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2BF0B8();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  sub_9E94C(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v11 = v1[9];
  sub_6620C(&qword_3C4730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2C4BB8();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
  }

  sub_71AF4(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v14 = v1[11];
  sub_6620C(&qword_3BF848);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_2C1278();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v5 + v14, 1, v15))
    {
      (*(v16 + 8))(v5 + v14, v15);
    }
  }

  else
  {
  }

  sub_71AF4(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_71AF4(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v17 = v1[14];
  sub_6620C(&qword_3BF850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_2BEC68();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v5 + v17, 1, v18))
    {
      (*(v19 + 8))(v5 + v17, v18);
    }
  }

  else
  {
  }

  v20 = v1[15];
  v21 = sub_2C1348();
  (*(*(v21 - 8) + 8))(v5 + v20, v21);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A98B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwipeActionButtonsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9918@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SwipeActionButtonsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A76EC(a1, v6, a2);
}

unint64_t sub_1A9998()
{
  result = qword_3C4740;
  if (!qword_3C4740)
  {
    sub_718D4(&qword_3C4738);
    sub_1A9A24();
    sub_1A9ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4740);
  }

  return result;
}

unint64_t sub_1A9A24()
{
  result = qword_3C4748;
  if (!qword_3C4748)
  {
    sub_718D4(&qword_3C4750);
    sub_C78D4();
    sub_72B74(&qword_3C4758, &qword_3C4760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4748);
  }

  return result;
}

unint64_t sub_1A9ADC()
{
  result = qword_3C4768;
  if (!qword_3C4768)
  {
    sub_718D4(&qword_3C4770);
    sub_72B74(&qword_3C4778, &qword_3C4358);
    sub_72B74(&qword_3C4758, &qword_3C4760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4768);
  }

  return result;
}

uint64_t sub_1A9BC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C3058();
  *a1 = result;
  return result;
}

unint64_t sub_1A9C9C()
{
  result = qword_3C47A0;
  if (!qword_3C47A0)
  {
    sub_718D4(&qword_3C4798);
    sub_72B74(&unk_3C4390, &qword_3BE800);
    sub_72B74(&qword_3C4758, &qword_3C4760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C47A0);
  }

  return result;
}

uint64_t sub_1A9D80(uint64_t a1)
{
  v2 = type metadata accessor for SwipeActionButtonsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A9DE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A9E50()
{
  result = qword_3C47B0;
  if (!qword_3C47B0)
  {
    sub_718D4(&qword_3C47B8);
    sub_1A9998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C47B0);
  }

  return result;
}

uint64_t sub_1A9EDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v47 = sub_2C0F58();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_6620C(&qword_3BF3C0);
  __chkstk_darwin(v49);
  v50 = &v44 - v4;
  v51 = sub_6620C(&qword_3BF3D0);
  __chkstk_darwin(v51);
  v52 = &v44 - v5;
  v53 = sub_6620C(&qword_3BF3A8);
  __chkstk_darwin(v53);
  v7 = &v44 - v6;
  v8 = sub_6620C(&qword_3BF898);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  v56 = sub_6620C(&qword_3C4888);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v12 = &v44 - v11;
  v13 = type metadata accessor for HeroComponentModel();
  __chkstk_darwin(v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 40) = 0u;
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 9) = 0;
  v63 = v15 + 40;
  sub_A9708(&v64, (v15 + 40), &unk_3BDC90);
  v16 = v13[6];
  v17 = sub_2C5018();
  v18 = *(*(v17 - 8) + 56);
  v58 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = v13[7];
  v20 = sub_2BEA68();
  v21 = *(*(v20 - 8) + 56);
  v60 = v19;
  v21(&v15[v19], 1, 1, v20);
  v22 = v13[8];
  v23 = sub_2BE968();
  v24 = *(*(v23 - 8) + 56);
  v62 = v22;
  v24(&v15[v22], 1, 1, v23);
  v25 = v13[9];
  v26 = sub_2BEE38();
  v27 = *(*(v26 - 8) + 56);
  v59 = v25;
  v27(&v15[v25], 1, 1, v26);
  v28 = a1[3];
  v61 = a1;
  sub_72084(a1, v28);
  sub_1AB3F4();
  v55 = v12;
  v29 = v57;
  sub_2C67A8();
  if (v29)
  {
    v30 = v58;
    v31 = v59;
    sub_68CD0(v61);
    v32 = v60;
    sub_69198(v63, &qword_3BE370);
    sub_69198(&v15[v30], &qword_3BF898);
    sub_69198(&v15[v32], &qword_3BF3A8);
    sub_69198(&v15[v62], &qword_3BF3D0);
    return sub_69198(&v15[v31], &qword_3BF3C0);
  }

  else
  {
    v57 = v7;
    sub_6620C(&qword_3BE378);
    v67 = 0;
    sub_72B74(&qword_3BE390, &qword_3BE378);
    sub_2C64A8();
    v33 = v65;
    *v15 = v64;
    *(v15 + 1) = v33;
    *(v15 + 4) = v66;
    sub_6620C(&qword_3BE370);
    v67 = 1;
    sub_72B74(&qword_3BE398, &qword_3BE370);
    sub_2C64A8();
    v34 = v58;
    sub_A9708(&v64, v63, &qword_3BE370);
    LOBYTE(v64) = 2;
    sub_1AB5B0(&qword_3C08B8, &qword_3BF898, &unk_2EA240, sub_F2FC4);
    sub_2C64A8();
    v35 = v60;
    v36 = v54;
    sub_A9708(v10, &v15[v34], &qword_3BF898);
    LOBYTE(v64) = 3;
    sub_1AB5B0(&qword_3C4898, &qword_3BF3A8, &unk_2E84C0, sub_1AB448);
    v37 = v57;
    sub_2C64A8();
    sub_A9708(v37, &v15[v35], &qword_3BF3A8);
    LOBYTE(v64) = 4;
    sub_1AB5B0(&qword_3C48B0, &qword_3BF3D0, &unk_2F1730, sub_1AB4FC);
    v38 = v52;
    sub_2C64A8();
    sub_A9708(v38, &v15[v62], &qword_3BF3D0);
    LOBYTE(v64) = 5;
    sub_1AB5B0(&qword_3C23F0, &qword_3BF3C0, &unk_2ECCC0, sub_13D980);
    v39 = v50;
    sub_2C64A8();
    sub_A9708(v39, &v15[v59], &qword_3BF3C0);
    LOBYTE(v64) = 6;
    sub_1AB62C(&qword_3C48C8, &type metadata accessor for HeroLockupModel);
    v40 = v36;
    v42 = v55;
    v41 = v56;
    sub_2C64A8();
    (*(v40 + 8))(v42, v41);
    (*(v45 + 32))(&v15[v13[10]], v48, v47);
    sub_1AB674(v15, v46);
    sub_68CD0(v61);
    return sub_1AB6D8(v15);
  }
}

unint64_t sub_1AA890()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000023;
  if (v1 != 5)
  {
    v3 = 0x65646F4D77656976;
  }

  v4 = 0x65736163776F6C66;
  if (v1 != 3)
  {
    v4 = 0x44746E65746E6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6575676573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_1AA97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB84C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AA9A4(uint64_t a1)
{
  v2 = sub_1AB3F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1AA9E0(uint64_t a1)
{
  v2 = sub_1AB3F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1AAA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3BF898);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_6932C(v2 + *(a1 + 24), &v9 - v6, &qword_3BF898);
  return sub_E1DC8(v7, a2);
}

void *sub_1AAAE4()
{
  if ((sub_2C0F48() & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_6620C(&qword_3BC020);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2E3F30;
  *(v0 + 56) = sub_2BECC8();
  *(v0 + 64) = sub_1AB62C(&qword_3BF440, &type metadata accessor for ContentExposureData);
  *(v0 + 72) = sub_1AB62C(&qword_3BF448, &type metadata accessor for ContentExposureData);
  sub_720C8((v0 + 32));
  sub_2BEC98();
  return v0;
}

uint64_t sub_1AABD4()
{
  v0 = sub_2C1A98();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2C1928();
  *v3 = 0x3FF0000000000000;
  (*(v1 + 104))(v3, enum case for ShelfGridItemColumnSpan.absolute(_:), v0);
  sub_2BFD28();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1AAD08(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_6620C(&qword_3BF898);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = sub_6620C(&qword_3BF3A8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = sub_6620C(&qword_3BF3D0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = sub_6620C(&qword_3BF3C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v16 = sub_2C0F58();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[10];

  return v17(v18, a2, v16);
}

uint64_t sub_1AAF48(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_6620C(&qword_3BF898);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = sub_6620C(&qword_3BF3A8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = sub_6620C(&qword_3BF3D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = sub_6620C(&qword_3BF3C0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v16 = sub_2C0F58();
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[10];

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for HeroComponentModel()
{
  result = qword_3C4818;
  if (!qword_3C4818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AB1C0()
{
  sub_A62E4();
  if (v0 <= 0x3F)
  {
    sub_A6360();
    if (v1 <= 0x3F)
    {
      sub_D7504(319, &qword_3C0940, &qword_3BDF58);
      if (v2 <= 0x3F)
      {
        sub_D7504(319, &qword_3C4828, &qword_3BF3B0);
        if (v3 <= 0x3F)
        {
          sub_D7504(319, &unk_3C4830, &qword_3BF3D8);
          if (v4 <= 0x3F)
          {
            sub_D7504(319, &unk_3C2348, &qword_3BF3C8);
            if (v5 <= 0x3F)
            {
              sub_2C0F58();
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

unint64_t sub_1AB3F4()
{
  result = qword_3C4890;
  if (!qword_3C4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4890);
  }

  return result;
}

unint64_t sub_1AB448()
{
  result = qword_3C48A0;
  if (!qword_3C48A0)
  {
    sub_718D4(&qword_3BF3B0);
    sub_1AB62C(&qword_3C48A8, &type metadata accessor for FlowcaseData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C48A0);
  }

  return result;
}

unint64_t sub_1AB4FC()
{
  result = qword_3C48B8;
  if (!qword_3C48B8)
  {
    sub_718D4(&qword_3BF3D8);
    sub_1AB62C(&qword_3C48C0, &type metadata accessor for ContentData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C48B8);
  }

  return result;
}

uint64_t sub_1AB5B0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AB62C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AB674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeroComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB6D8(uint64_t a1)
{
  v2 = type metadata accessor for HeroComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AB748()
{
  result = qword_3C48D0;
  if (!qword_3C48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C48D0);
  }

  return result;
}

unint64_t sub_1AB7A0()
{
  result = qword_3C48D8;
  if (!qword_3C48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C48D8);
  }

  return result;
}

unint64_t sub_1AB7F8()
{
  result = qword_3C48E0;
  if (!qword_3C48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C48E0);
  }

  return result;
}

uint64_t sub_1AB84C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x65736163776F6C66 && a2 == 0xEC00000061746144 || (sub_2C65B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_2C65B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000023 && 0x80000000003004E0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65646F4D77656976 && a2 == 0xE90000000000006CLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_2C65B8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t FlowActionCardSetPresentationImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4C08();
  v66 = *(v4 - 8);
  v67 = v4;
  __chkstk_darwin(v4);
  v65 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3C48E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v62 - v7;
  v9 = sub_2C51D8();
  v63 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3BCE28);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - v13;
  v15 = sub_6620C(&qword_3C48F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v62 - v16;
  v18 = sub_2C0508();
  v68 = *(v18 - 8);
  v69 = v18;
  __chkstk_darwin(v18);
  v64 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *v2;
  v20 = sub_2C0478();
  v22 = v21;
  if (v20 == sub_2C5318() && v22 == v23)
  {
  }

  else
  {
    v24 = sub_2C65B8();

    if ((v24 & 1) == 0)
    {
LABEL_9:
      sub_6620C(&qword_3BDAB8);
      (*(v66 + 104))(v65, enum case for ActionOutcome.unsupported(_:), v67);
      return sub_2C56F8();
    }
  }

  sub_2C0468();
  sub_6620C(&qword_3C48F8);
  v25 = v69;
  v26 = swift_dynamicCast();
  v27 = v68;
  v28 = *(v68 + 56);
  if ((v26 & 1) == 0)
  {
    v28(v17, 1, 1, v25);
    sub_69198(v17, &qword_3C48F0);
    goto LABEL_9;
  }

  v28(v17, 0, 1, v25);
  (*(v27 + 32))(v64, v17, v25);
  v29 = sub_2C04F8();
  v70 = v30;
  v71 = v29;
  sub_2C0568();
  v31 = sub_2C0778();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v14, 1, v31) == 1)
  {
    sub_69198(v14, &qword_3BCE28);
    v33 = sub_6759C(_swiftEmptyArrayStorage);
  }

  else
  {
    v33 = ActionOrigin.appAnalyticsMetricsFeedOptions.getter();
    (*(v32 + 8))(v14, v31);
  }

  v35 = v63;
  v77 = v33;
  sub_2C4D98();
  if ((*(v35 + 48))(v8, 1, v9) == 1)
  {
    sub_69198(v8, &qword_3C48E8);
  }

  else
  {
    (*(v35 + 32))(v11, v8, v9);
    *&v72 = v71;
    *(&v72 + 1) = v70;

    sub_2C61A8();
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
    v36 = sub_285C2C(&v78, &v72);
    sub_69198(&v72, &qword_3BE008);
    sub_68D90(&v78);
    if (v36)
    {
      v37 = sub_6620C(&qword_3BD860);
      v79 = v37;
      *&v78 = v36;
      sub_693CC(&v78, &v72);
      v38 = v77;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v38;
      v40 = sub_8C564(&v72, *(&v73 + 1));
      v41 = __chkstk_darwin(v40);
      v43 = &v62 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v44 + 16))(v43, v41);
      sub_1AC51C(v43, 0xD000000000000013, 0x80000000003061C0, isUniquelyReferenced_nonNull_native, &v75, v37);
      sub_68CD0(&v72);
      (*(v35 + 8))(v11, v9);
      v77 = v75;
    }

    else
    {
      sub_24DAE8(0xD000000000000013, 0x80000000003061C0, &v78);
      sub_69198(&v78, &qword_3C4908);
      (*(v35 + 8))(v11, v9);
    }
  }

  v45 = v62;

  v46 = sub_1AC810(v45, &v77, a2);

  sub_6620C(&qword_3BCE30);
  result = sub_2C4DB8();
  v47 = v46[2];
  if (v47)
  {
    v48 = 0;
    while (v48 < v46[2])
    {
      v49 = v46[v48 + 4];
      v50 = *(v49 + 16);

      if (v50)
      {
        v51 = sub_5D228(25705, 0xE200000000000000);
        if (v52)
        {
          sub_68C64(*(v49 + 56) + 32 * v51, &v72);
          sub_6620C(&qword_3C4900);
          if (swift_dynamicCast())
          {
            if (v75 == v71 && v76 == v70)
            {
LABEL_35:

LABEL_37:

              goto LABEL_38;
            }

            v53 = sub_2C65B8();

            if (v53)
            {

              goto LABEL_37;
            }
          }
        }
      }

      if (*(v49 + 16) && (v54 = sub_5D228(0x644965726F7473, 0xE700000000000000), (v55 & 1) != 0) && (sub_68C64(*(v49 + 56) + 32 * v54, &v72), sub_6620C(&qword_3C4900), (swift_dynamicCast() & 1) != 0))
      {
        if (v75 == v71 && v76 == v70)
        {
          goto LABEL_35;
        }

        v56 = sub_2C65B8();

        if (v56)
        {
          goto LABEL_37;
        }
      }

      else
      {
      }

      if (v47 == ++v48)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_34:

    v48 = 0;
LABEL_38:
    v57 = v79;
    v58 = v80;
    sub_72084(&v78, v79);
    v59 = sub_28F818(v46);

    v60 = sub_6864C(_swiftEmptyArrayStorage);
    (*(v58 + 88))(v59, v48, 1, v60, v57, v58);

    sub_6620C(&qword_3BDAB8);
    (*(v66 + 104))(v65, enum case for ActionOutcome.performed(_:), v67);
    v61 = sub_2C56F8();
    (*(v68 + 8))(v64, v69);
    sub_68CD0(&v78);

    return v61;
  }

  return result;
}

_OWORD *sub_1AC51C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  v32 = a6;
  v12 = sub_720C8(v31);
  (*(*(a6 - 8) + 32))(v12, a1, a6);
  v13 = *a5;
  v15 = sub_5D228(a2, a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a4 & 1) != 0)
  {
LABEL_7:
    v21 = *a5;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 32 * v15);
      sub_68CD0(v22);
      return sub_693CC(v31, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a4 & 1) == 0)
  {
    sub_64184();
    goto LABEL_7;
  }

  sub_6086C(v18, a4 & 1);
  v24 = sub_5D228(a2, a3);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = sub_8C564(v31, v32);
  v27 = __chkstk_darwin(v26);
  v29 = v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_1AC73C(v15, a2, a3, v29, v21, a6);

  return sub_68CD0(v31);
}

_OWORD *sub_1AC73C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  v12 = sub_720C8(&v18);
  (*(*(a6 - 8) + 32))(v12, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_693CC(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

void *sub_1AC810(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v46 = _swiftEmptyArrayStorage;
    sub_64B14(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v6 = *(sub_2C2338() - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v36 = "contentExposureData";
    v37 = "Unknown asset type ";
    sub_6620C(&qword_3C0248);
    v35 = *(v6 + 72);
    do
    {
      v8 = sub_2C2328();
      v9 = *v38;
      if (*v38)
      {
        v10 = sub_6620C(&qword_3BC208);
        *(&v45 + 1) = v10;
        *&v44 = v9;
        sub_693CC(&v44, &v41);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v8;
        v12 = sub_8C564(&v41, v42);
        v13 = __chkstk_darwin(v12);
        v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v16 + 16))(v15, v13);
        sub_1AC51C(v15, 0xD000000000000013, v37 | 0x8000000000000000, isUniquelyReferenced_nonNull_native, &v43, v10);
        sub_68CD0(&v41);
        v8 = v43;
      }

      else
      {
        v17 = sub_5D228(0xD000000000000013, v37 | 0x8000000000000000);
        if (v18)
        {
          v19 = v17;
          v20 = swift_isUniquelyReferenced_nonNull_native();
          *&v41 = v8;
          if ((v20 & 1) == 0)
          {
            sub_64184();
            v8 = v41;
          }

          sub_693CC((*(v8 + 56) + 32 * v19), &v44);
          sub_24E5F0(v19, v8);
        }

        else
        {
          v44 = 0u;
          v45 = 0u;
        }

        sub_69198(&v44, &qword_3C4908);
      }

      sub_2C4DB8();
      v21 = v43;
      *(&v45 + 1) = swift_getObjectType();
      *&v44 = v21;
      sub_693CC(&v44, &v41);
      LOBYTE(v21) = swift_isUniquelyReferenced_nonNull_native();
      v40 = v8;
      v22 = v42;
      v23 = sub_8C564(&v41, v42);
      v24 = __chkstk_darwin(v23);
      v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26, v24);
      sub_1AC51C(v26, 0xD000000000000013, v36 | 0x8000000000000000, v21, &v40, v22);
      sub_68CD0(&v41);
      v28 = v40;
      *(&v45 + 1) = &type metadata for Bool;
      LOBYTE(v44) = 1;
      sub_693CC(&v44, &v41);
      LOBYTE(v22) = swift_isUniquelyReferenced_nonNull_native();
      v43 = v28;
      v29 = sub_8C564(&v41, v42);
      sub_1CE8E8(*v29, 0x647261436E497369, 0xE800000000000000, v22, &v43);
      sub_68CD0(&v41);
      v30 = v43;
      v46 = v4;
      v32 = v4[2];
      v31 = v4[3];
      if (v32 >= v31 >> 1)
      {
        sub_64B14((v31 > 1), v32 + 1, 1);
        v4 = v46;
      }

      v4[2] = v32 + 1;
      v4[v32 + 4] = v30;
      v7 += v35;
      --v3;
    }

    while (v3);
  }

  return v4;
}

unint64_t sub_1ACCBC()
{
  result = qword_3C2AE0;
  if (!qword_3C2AE0)
  {
    sub_2C0578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2AE0);
  }

  return result;
}

void *sub_1ACD24()
{
  v101 = *(v0 + 96);
  v1 = *(v0 + 80);
  v99 = *(v0 + 64);
  v100 = v1;
  v2 = *(v0 + 48);
  v97 = *(v0 + 32);
  v98 = v2;
  v3 = *(v0 + 16);
  v95 = *v0;
  v96 = v3;
  v4 = v3;
  v81 = v97;
  v82 = v2;
  v83 = *(&v97 + 1);
  v84 = *(&v2 + 1);
  v6 = v99;
  v5 = v100;
  v80 = *(v3 + 16);
  if (v80 < *(&v97 + 1))
  {
    v7 = *(&v96 + 1);
    *(&v89 + 1) = &type metadata for NothingToReviewFrameFactory;
    *&v90 = &off_391CD8;
    v8 = swift_allocObject();
    *&v88 = v8;
    *(v8 + 16) = v95;
    *(v8 + 32) = v4;
    *(v8 + 40) = v7;
    sub_6620C(&qword_3BC3E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2E3F30;
    sub_68D1C(&v88, inited + 32);
    sub_6620C(&qword_3C4918);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_2E3F30;
    *(v10 + 32) = inited;

    v11 = sub_25083C(v10);
    swift_setDeallocating();
    sub_1ADF08(v10 + 32);
    v12 = v11;
    v13 = v11[2];
    if (!v13)
    {

      v14 = _swiftEmptyArrayStorage;
LABEL_39:
      if (qword_3BB8B0 != -1)
      {
        goto LABEL_69;
      }

      goto LABEL_40;
    }

    v14 = _swiftEmptyArrayStorage;
    v15 = (v12 + 4);
    while (1)
    {
      sub_691F8(v15, &v88);
      v16 = *(&v89 + 1);
      v17 = v90;
      sub_72084(&v88, *(&v89 + 1));
      v18 = (*(v17 + 8))(v16, v17);
      sub_68CD0(&v88);
      v19 = *(v18 + 16);
      v20 = v14[2];
      v21 = v20 + v19;
      if (__OFADD__(v20, v19))
      {
        __break(1u);
        goto LABEL_62;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v21 <= v14[3] >> 1)
      {
        if (*(v18 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v20 <= v21)
        {
          v23 = v20 + v19;
        }

        else
        {
          v23 = v20;
        }

        v14 = sub_5BE44(isUniquelyReferenced_nonNull_native, v23, 1, v14);
        if (*(v18 + 16))
        {
LABEL_15:
          if ((v14[3] >> 1) - v14[2] < v19)
          {
            goto LABEL_65;
          }

          sub_6620C(&qword_3BC408);
          swift_arrayInitWithCopy();

          if (v19)
          {
            v24 = v14[2];
            v25 = __OFADD__(v24, v19);
            v26 = v24 + v19;
            if (v25)
            {
              goto LABEL_67;
            }

            v14[2] = v26;
          }

          goto LABEL_5;
        }
      }

      if (v19)
      {
        goto LABEL_63;
      }

LABEL_5:
      v15 += 40;
      if (!--v13)
      {

        goto LABEL_39;
      }
    }
  }

  v27 = *(v0 + 80);
  v92 = *(v0 + 64);
  v93 = v27;
  v94 = *(v0 + 96);
  v28 = *(v0 + 16);
  v88 = *v0;
  v89 = v28;
  v29 = *(v0 + 48);
  v90 = *(v0 + 32);
  v91 = v29;
  v30 = sub_1AD660();
  v31 = v30[2];
  if (v31)
  {
    v14 = _swiftEmptyArrayStorage;
    v32 = (v30 + 4);
    while (1)
    {
      sub_691F8(v32, v85);
      v33 = v86;
      v34 = v87;
      sub_72084(v85, v86);
      v35 = (*(v34 + 8))(v33, v34);
      sub_68CD0(v85);
      v36 = *(v35 + 16);
      v37 = v14[2];
      v38 = v37 + v36;
      if (__OFADD__(v37, v36))
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
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
        swift_once();
LABEL_40:
        v43 = sub_2C00B8();
        sub_57AD8(v43, qword_3C32A8);
        sub_1ADEC8(&v95, &v88);

        v44 = sub_2C0098();
        v45 = sub_2C5DE8();

        sub_1789E4(&v95);
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v85[0] = swift_slowAlloc();
          *v46 = 136315650;
          v47 = v14[2];
          if (v47)
          {
            v78 = v45;
            sub_64AB4(0, v47, 0);
            v48 = (v14 + 4);
            do
            {
              sub_691F8(v48, &v88);
              sub_72084(&v88, *(&v89 + 1));
              DynamicType = swift_getDynamicType();
              v50 = v90;
              sub_68CD0(&v88);
              v52 = _swiftEmptyArrayStorage[2];
              v51 = _swiftEmptyArrayStorage[3];
              if (v52 >= v51 >> 1)
              {
                sub_64AB4((v51 > 1), v52 + 1, 1);
              }

              _swiftEmptyArrayStorage[2] = v52 + 1;
              v53 = &_swiftEmptyArrayStorage[2 * v52];
              v53[4] = DynamicType;
              v53[5] = v50;
              v48 += 40;
              --v47;
            }

            while (v47);
            v45 = v78;
          }

          sub_6620C(&qword_3C4910);
          v62 = sub_2C5B38();
          v64 = v63;

          v65 = sub_5CCF4(v62, v64, v85);

          *(v46 + 4) = v65;
          *(v46 + 12) = 2048;
          *(v46 + 14) = v80;
          *(v46 + 22) = 2080;
          LOBYTE(v88) = v81;
          *(&v88 + 1) = v83;
          *&v89 = v82;
          *(&v89 + 1) = v84;
          v90 = v6;
          *&v91 = v5;
          v66 = YearInReviewEligibilityCriteria.description.getter();
          v68 = sub_5CCF4(v66, v67, v85);

          *(v46 + 24) = v68;
          v69 = "Displaying ineligible frames %s with booksFinished: %ld, using eligibilityCriteria: %s";
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      v39 = swift_isUniquelyReferenced_nonNull_native();
      if (v39 && v38 <= v14[3] >> 1)
      {
        if (*(v35 + 16))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v37 <= v38)
        {
          v40 = v37 + v36;
        }

        else
        {
          v40 = v37;
        }

        v14 = sub_5BE44(v39, v40, 1, v14);
        if (*(v35 + 16))
        {
LABEL_32:
          if ((v14[3] >> 1) - v14[2] < v36)
          {
            goto LABEL_66;
          }

          sub_6620C(&qword_3BC408);
          swift_arrayInitWithCopy();

          if (v36)
          {
            v41 = v14[2];
            v25 = __OFADD__(v41, v36);
            v42 = v41 + v36;
            if (v25)
            {
              goto LABEL_68;
            }

            v14[2] = v42;
          }

          goto LABEL_22;
        }
      }

      if (v36)
      {
        goto LABEL_64;
      }

LABEL_22:
      v32 += 40;
      if (!--v31)
      {

        goto LABEL_48;
      }
    }
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_48:
  if (qword_3BB8B0 != -1)
  {
    swift_once();
  }

  v54 = sub_2C00B8();
  sub_57AD8(v54, qword_3C32A8);

  sub_1ADEC8(&v95, &v88);
  v44 = sub_2C0098();
  v45 = sub_2C5DE8();

  sub_1789E4(&v95);
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v85[0] = swift_slowAlloc();
    *v46 = 136315650;
    v55 = v14[2];
    if (v55)
    {
      v79 = v45;
      sub_64AB4(0, v55, 0);
      v56 = (v14 + 4);
      do
      {
        sub_691F8(v56, &v88);
        sub_72084(&v88, *(&v89 + 1));
        v57 = swift_getDynamicType();
        v58 = v90;
        sub_68CD0(&v88);
        v60 = _swiftEmptyArrayStorage[2];
        v59 = _swiftEmptyArrayStorage[3];
        if (v60 >= v59 >> 1)
        {
          sub_64AB4((v59 > 1), v60 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v60 + 1;
        v61 = &_swiftEmptyArrayStorage[2 * v60];
        v61[4] = v57;
        v61[5] = v58;
        v56 += 40;
        --v55;
      }

      while (v55);
      v45 = v79;
    }

    sub_6620C(&qword_3C4910);
    v70 = sub_2C5B38();
    v72 = v71;

    v73 = sub_5CCF4(v70, v72, v85);

    *(v46 + 4) = v73;
    *(v46 + 12) = 2048;
    *(v46 + 14) = v80;
    *(v46 + 22) = 2080;
    LOBYTE(v88) = v81;
    *(&v88 + 1) = v83;
    *&v89 = v82;
    *(&v89 + 1) = v84;
    v90 = v6;
    *&v91 = v5;
    v74 = YearInReviewEligibilityCriteria.description.getter();
    v76 = sub_5CCF4(v74, v75, v85);

    *(v46 + 24) = v76;
    v69 = "Displaying eligible frames %s with booksFinished: %ld, using eligibilityCriteria: %s";
LABEL_59:
    _os_log_impl(&dword_0, v44, v45, v69, v46, 0x20u);
    swift_arrayDestroy();
  }

LABEL_60:

  return v14;
}

void *sub_1AD660()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  v46 = *(v0 + 88);
  v48 = *(v0 + 96);
  v98 = &type metadata for WelcomeFrameFactory;
  v99 = &off_394958;
  v12 = swift_allocObject();
  *&v97 = v12;
  v12[2] = v1;
  v12[3] = v2;
  v13 = v2;
  v12[4] = v4;
  v12[5] = v3;
  sub_6620C(&qword_3BC3E8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2E3F30;
  v45 = v14;
  sub_68D1C(&v97, v14 + 32);
  *&v100 = v1;
  *(&v100 + 1) = v2;
  *&v101 = v4;
  *(&v101 + 1) = v3;
  LOBYTE(v102) = v5;
  v51 = v7;
  *(&v102 + 1) = v7;
  *&v103 = v6;
  v47 = v6;
  *(&v103 + 1) = v9;
  *&v104 = v8;
  *(&v104 + 1) = v10;
  v105 = v11;
  v95 = &type metadata for BooksFinishedFrameFactory;
  v96 = &off_38F368;
  v15 = swift_allocObject();
  *&v94 = v15;
  v16 = v103;
  *(v15 + 48) = v102;
  *(v15 + 64) = v16;
  *(v15 + 80) = v104;
  *(v15 + 96) = v105;
  v17 = v101;
  *(v15 + 16) = v100;
  *(v15 + 32) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2E3F30;
  v44 = v18;
  sub_68D1C(&v94, v18 + 32);
  v106 = v1;
  v107 = v2;
  v108 = v4;
  v109 = v3;
  v110 = v5;
  v111 = v7;
  v112 = v6;
  v113 = v9;
  v114 = v8;
  v19 = v8;
  v20 = v107;
  v115 = v10;
  v116 = v11;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1ADF78(&v100, &v81);
  sub_1ADFD4(&v106);
  v69 = &type metadata for HighlightsDataProvider;
  v70 = &off_38DB30;
  v21 = swift_allocObject();
  v66 = v21;
  *(v21 + 16) = v1;
  *(v21 + 24) = v13;
  *(v21 + 32) = v4;
  *(v21 + 40) = v3;
  v50 = v1;
  *(v21 + 56) = v1;
  *(v21 + 64) = *(v4 + 16);
  *(v21 + 48) = v48;
  v81 = 0x4072C00000000000;
  v22 = objc_allocWithZone(NSDateComponentsFormatter);

  v23 = [v22 init];
  [v23 setUnitsStyle:2];
  [v23 setAllowedUnits:112];
  [v23 setFormattingContext:5];
  v90 = v23;
  v24 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v24 setUnitsStyle:3];
  [v24 setAllowedUnits:96];
  [v24 setFormattingContext:5];
  v91 = v24;
  v25 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v26 = v19;
  [v25 setUnitsStyle:3];
  [v25 setAllowedUnits:64];
  [v25 setFormattingContext:2];
  v92 = v25;
  v27 = [objc_allocWithZone(NSNumberFormatter) init];
  [v27 setNumberStyle:1];
  [v27 setMaximumFractionDigits:0];
  v93 = v27;
  sub_691F8(&v66, v82);
  v82[40] = v5;
  v83 = v7;
  v84 = v6;
  v85 = v9;
  v86 = v19;
  v87 = v10;
  v88 = v11;
  v89 = sub_72084(&v66, v69)[6] < 3;
  sub_68CD0(&v66);
  v79 = &type metadata for HighlightFramesFactory;
  v80 = &off_391F08;
  *&v78 = swift_allocObject();
  sub_1AE0DC(&v81, v78 + 16);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2E3F30;
  v43 = v28;
  sub_68D1C(&v78, v28 + 32);
  sub_1AE138(&v81);
  if (v5 == 1)
  {
    v69 = &type metadata for ReadingInsightsDataProvider;
    v70 = &off_3915C8;
    v66 = sub_1D3494(v3);

    v29 = sub_1D3ED8();

    v67 = v29;
    LOBYTE(v71) = 1;
    v72 = v51;
    v73 = v6;
    v74 = v9;
    v75 = v19;
    v76 = v10;
    v77 = v11;
    *(&v61 + 1) = &type metadata for ReadingInsightFramesFactory;
    *&v62 = &off_38C1B8;
    *&v60 = swift_allocObject();
    sub_AEBE4(&v66, v60 + 16);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2E3F30;
    sub_68D1C(&v60, v30 + 32);
    sub_AEC1C(&v66);
    sub_6620C(&qword_3C4918);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_2E3F30;
    *(v31 + 32) = v30;
    v32 = v31 + 32;
    v42 = sub_25083C(v31);
    swift_setDeallocating();
    sub_1ADF08(v32);
    swift_deallocClassInstance();
  }

  else
  {
    v42 = _swiftEmptyArrayStorage;
  }

  v59[3] = &type metadata for ReaderTypeDataProvider;
  v59[4] = &off_394D80;
  v33 = swift_allocObject();
  v59[0] = v33;
  *(v33 + 16) = v50;
  *(v33 + 24) = v20;
  *(v33 + 32) = v4;
  *(v33 + 40) = v3;
  *(v33 + 48) = *(v4 + 16);

  *(v33 + 56) = sub_285620(v4, v48);
  *(v33 + 64) = v48;
  v57 = &type metadata for ReaderTypeFramesFactory;
  v58 = &off_391700;
  *&v56 = swift_allocObject();
  sub_1AE214(v59, v56 + 16);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_2E3F30;
  sub_68D1C(&v56, v49 + 32);
  sub_1AE270(v59);
  *&v60 = v50;
  *(&v60 + 1) = v20;
  *&v61 = v4;
  *(&v61 + 1) = v3;
  LOBYTE(v62) = v5;
  *(&v62 + 1) = v51;
  *&v63 = v47;
  *(&v63 + 1) = v9;
  *&v64 = v19;
  *(&v64 + 1) = v10;
  *&v65 = v11;
  *(&v65 + 1) = v46;
  v54 = &type metadata for SummaryFrameFactory;
  v55 = &off_38C780;
  v34 = swift_allocObject();
  *&v53 = v34;
  v35 = v63;
  v34[3] = v62;
  v34[4] = v35;
  v36 = v65;
  v34[5] = v64;
  v34[6] = v36;
  v37 = v61;
  v34[1] = v60;
  v34[2] = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2E3F30;
  sub_68D1C(&v53, v38 + 32);
  v66 = v50;
  v67 = v20;
  v68 = v4;
  v69 = v3;
  LOBYTE(v70) = v5;
  v71 = v51;
  v72 = v47;
  v73 = v9;
  v74 = v26;
  v75 = v10;
  v76 = v11;
  v77 = v46;

  sub_1AE314(&v60, v52);
  sub_1AE370(&v66);
  sub_6620C(&qword_3C4918);
  v39 = swift_allocObject();
  *(v39 + 32) = v45;
  *(v39 + 16) = xmmword_2F1A80;
  *(v39 + 40) = v44;
  *(v39 + 48) = v43;
  *(v39 + 56) = v42;
  *(v39 + 64) = v49;
  *(v39 + 72) = v38;
  v40 = sub_25083C(v39);
  swift_setDeallocating();
  sub_6620C(&qword_3C4920);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v40;
}

uint64_t sub_1ADF08(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C4920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AE030(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1AE084()
{
  sub_68CD0((v0 + 3));

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_1AE18C()
{

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_1AE1DC()
{
  sub_68CD0(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1AE2C4()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1AE3C4()
{
  sub_68CD0(v0 + 16);

  return _swift_deallocObject(v0, 112, 7);
}

__n128 sub_1AE3FC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1AE428(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1AE470(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *SharedWithYouActionItem.tracker.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

id LikeActionItem.init(data:context:tracker:figaroProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_691F8(a1, v23);
  sub_691F8(a2, v22);
  sub_691F8(a4, v21);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    v16 = sub_1AE704();
    v17 = &protocol witness table for JSAStore;
    *&v15 = v11;
    v12 = sub_2C0178();
    v13 = sub_2C0158();
    v19 = &type metadata for MenuLikeStateController;
    v20 = &protocol witness table for MenuLikeStateController;
    v14 = swift_allocObject();
    *&v18 = v14;
    v14[10] = v12;
    v14[11] = &protocol witness table for AccountController;
    v14[7] = v13;
    sub_68CD0(a4);
    sub_68CD0(a2);
    sub_68CD0(a1);
    sub_68D1C(&v15, (v14 + 2));
    *(a5 + 168) = 23;
    sub_68D1C(v23, a5);
    sub_68D1C(v22, a5 + 40);
    *(a5 + 80) = a3;
    sub_68D1C(v21, a5 + 88);
    return sub_68D1C(&v18, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AE704()
{
  result = qword_3BD280;
  if (!qword_3BD280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3BD280);
  }

  return result;
}

uint64_t sub_1AE750()
{
  sub_68CD0(v0 + 16);
  sub_68CD0(v0 + 56);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t LikeActionItem.isSupported.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  sub_72084(v0, v2);
  if ((*(v3 + 56))(v2, v3))
  {
    goto LABEL_12;
  }

  v4 = v0[3];
  v5 = v1[4];
  sub_72084(v1, v1[3]);
  ContextActionDataProtocol.selectionMode.getter(v4, v5, v21);
  if (v22 == 1)
  {
    sub_C4620(v21);
LABEL_12:
    v19 = 0;
    return v19 & 1;
  }

  sub_68D1C(v21, v23);
  v6 = v24;
  v7 = v25;
  sub_72084(v23, v24);
  if ((*(v7 + 16))(v6, v7) == 4)
  {
    goto LABEL_11;
  }

  v8 = v24;
  v9 = v25;
  sub_72084(v23, v24);
  if ((*(v9 + 16))(v8, v9) == 5)
  {
    goto LABEL_11;
  }

  v10 = v24;
  v11 = v25;
  sub_72084(v23, v24);
  v12 = (*(v11 + 288))(v10, v11);
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
LABEL_11:
    sub_68CD0(v23);
    goto LABEL_12;
  }

  v17 = v1[3];
  v18 = v1[4];
  sub_72084(v1, v17);
  v19 = (*(v18 + 16))(v17, v18);
  sub_68CD0(v23);
  return v19 & 1;
}

uint64_t LikeActionItem.handle()()
{
  v1[17] = v0;
  sub_2C5C18();
  v1[18] = sub_2C5C08();
  v3 = sub_2C5BB8();
  v1[19] = v3;
  v1[20] = v2;

  return _swift_task_switch(sub_1AE9F4, v3, v2);
}

uint64_t sub_1AE9F4()
{
  v1 = *(v0 + 136);
  v3 = v1[3];
  v2 = v1[4];
  sub_72084(v1, v3);
  ContextActionDataProtocol.selectionMode.getter(v3, v2, v0 + 16);
  if (*(v0 + 56))
  {

    sub_C4620(v0 + 16);
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 136);
    sub_68D1C((v0 + 16), v0 + 64);
    v7 = v6[19];
    v8 = v6[20];
    sub_72084(v6 + 16, v7);
    v9 = v6[10];
    v12 = (*(v8 + 8) + **(v8 + 8));
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = sub_1AEBC0;
    v11 = *(v0 + 136);

    return v12(1, v6 + 5, v11, v0 + 64, v9, v7, v8);
  }
}

uint64_t sub_1AEBC0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = v4[19];
    v6 = v4[20];
    v7 = sub_1AEDE4;
  }

  else
  {
    v4[23] = a1;
    v5 = v4[19];
    v6 = v4[20];
    v7 = sub_1AECE8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1AECE8()
{
  v1 = v0[23];

  if (v1)
  {
    v2 = v0[17];
    v3 = objc_opt_self();
    v4 = v2[8];
    v5 = v2[9];
    sub_72084(v2 + 5, v4);
    ContextMenuPresentationContextProtocol.newOptionsForShowingHUD.getter(v4, v5);
    isa = sub_2C57C8().super.isa;

    [v3 presentNoticeForBookLoved:1 options:isa];
  }

  sub_68CD0((v0 + 8));
  v7 = v0[1];

  return v7();
}

uint64_t sub_1AEDE4()
{
  v12 = v0;

  if (qword_3BB7D8 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C3038);
  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_2C66B8();
    v8 = sub_5CCF4(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "error while trying to submit like preference with : %s", v4, 0xCu);
    sub_68CD0(v5);
  }

  else
  {
  }

  sub_68CD0(v0 + 64);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AEFB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7100C;

  return LikeActionItem.handle()();
}

__n128 sub_1AF048(uint64_t a1, __int128 *a2)
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
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1AF084(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AF0CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AF1A8()
{
  result = qword_3C4928;
  if (!qword_3C4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4928);
  }

  return result;
}

uint64_t sub_1AF1FC(uint64_t a1)
{
  v2 = sub_2C3678();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3C4938);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  v9 = sub_6620C(&qword_3C4940);
  __chkstk_darwin(v9);
  v11 = v18 - v10;
  *v8 = sub_2C3338();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v12 = sub_6620C(&qword_3C4948);
  sub_1AF464(a1, &v8[*(v12 + 44)]);
  sub_2C46B8();
  sub_2C2AD8();
  sub_1B0234(v8, v11);
  v13 = &v11[*(v9 + 36)];
  v14 = v18[5];
  *(v13 + 4) = v18[4];
  *(v13 + 5) = v14;
  *(v13 + 6) = v18[6];
  v15 = v18[1];
  *v13 = v18[0];
  *(v13 + 1) = v15;
  v16 = v18[3];
  *(v13 + 2) = v18[2];
  *(v13 + 3) = v16;
  sub_2C3658();
  sub_1B02A4();
  sub_2C3FA8();
  (*(v3 + 8))(v5, v2);
  return sub_69198(v11, &qword_3C4940);
}

uint64_t sub_1AF464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v124 = sub_6620C(&qword_3C4960);
  __chkstk_darwin(v124);
  v115 = &v105 - v3;
  v121 = sub_6620C(&qword_3C4968);
  __chkstk_darwin(v121);
  v122 = &v105 - v4;
  v113 = type metadata accessor for HairlineDividerStyle();
  __chkstk_darwin(v113);
  v109 = (&v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = sub_2C4548();
  v108 = *(v111 - 8);
  __chkstk_darwin(v111);
  v106 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_6620C(&qword_3C4970);
  v110 = *(v112 - 8);
  __chkstk_darwin(v112);
  v107 = &v105 - v7;
  v120 = sub_6620C(&qword_3C4978);
  __chkstk_darwin(v120);
  v114 = &v105 - v8;
  v9 = sub_6620C(&qword_3C4980);
  __chkstk_darwin(v9 - 8);
  v123 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v136 = &v105 - v12;
  v13 = sub_6620C(&qword_3BCB28);
  __chkstk_darwin(v13 - 8);
  v15 = &v105 - v14;
  v16 = type metadata accessor for LargeNavigationBarComponentModel();
  v17 = (a1 + *(v16 + 28));
  v18 = v17[1];
  v19 = 0;
  v126 = v16;
  v127 = a1;
  v119 = v15;
  if (v18)
  {
    v155 = *v17;
    v156 = v18;
    sub_7212C();

    v20 = sub_2C3A48();
    v22 = v21;
    v24 = v23;
    sub_2C3858();
    sub_2C3828();
    sub_2C3898();
    sub_69198(v15, &qword_3BCB28);
    v25 = sub_2C39E8();
    v27 = v26;
    v29 = v28;

    sub_72180(v20, v22, v24 & 1);

    sub_2C37C8();
    v30 = sub_2C39E8();
    v134 = v31;
    v135 = v30;
    v33 = v32;
    v133 = v34;

    v35 = v29 & 1;
    a1 = v127;
    sub_72180(v25, v27, v35);

    v36 = sub_2C3778();
    sub_2C24D8();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    LOBYTE(v137) = v33 & 1;
    LOBYTE(v147[0]) = 0;
    v130 = v33 & 1;
    v132 = 0;
    KeyPath = swift_getKeyPath();
    v16 = v126;
    LOBYTE(v155) = 0;
    v128 = v36;
    v129 = 2;
  }

  else
  {
    v134 = 0;
    v135 = 0;
    v132 = 0;
    v133 = 0;
    v130 = 0;
    KeyPath = 0;
    v128 = 0;
    v129 = 0;
    v38 = 0;
    v40 = 0;
    v42 = 0;
    v44 = 0;
  }

  v45 = (a1 + *(v16 + 32));
  v46 = v45[1];
  if (v46)
  {
    v155 = *v45;
    v156 = v46;
    sub_7212C();

    v47 = sub_2C3A48();
    v49 = v48;
    v51 = v50;
    v52 = sub_2C3848();
    v53 = v119;
    (*(*(v52 - 8) + 56))(v119, 1, 1, v52);
    sub_2C3898();
    sub_69198(v53, &qword_3BCB28);
    v54 = sub_2C39E8();
    v56 = v55;
    v58 = v57;

    sub_72180(v47, v49, v51 & 1);

    sub_2C37D8();
    v59 = sub_2C39E8();
    v118 = v60;
    v119 = v59;
    v62 = v61;
    *(&v117 + 1) = v63;

    sub_72180(v54, v56, v58 & 1);

    v64 = sub_2C3778();
    sub_2C24D8();
    v19 = v65;
    v67 = v66;
    v69 = v68;
    v71 = v70;
    LOBYTE(v155) = v62 & 1;
    LOBYTE(v137) = 0;
    *&v117 = v62 & 1;
    v116 = v64;
  }

  else
  {
    v118 = 0;
    v119 = 0;
    v117 = 0uLL;
    v116 = 0;
    v67 = 0;
    v69 = 0;
    v71 = 0;
  }

  v72 = v136;
  sub_6620C(&qword_3C3718);
  sub_2C1988();
  if (v155 == 1)
  {
    v73 = v106;
    sub_2C4538();
    v74 = swift_getKeyPath();
    v75 = v109;
    *v109 = v74;
    sub_6620C(&unk_3C8530);
    swift_storeEnumTagMultiPayload();
    v76 = v113;
    v77 = v75 + *(v113 + 20);
    *v77 = swift_getKeyPath();
    *(v77 + 8) = 0;
    v78 = sub_1B05A0(&qword_3C0F20, &type metadata accessor for Divider);
    v79 = sub_1B05A0(&qword_3C49A0, type metadata accessor for HairlineDividerStyle);
    v80 = v107;
    v81 = v111;
    sub_2C3EB8();
    sub_1B0928(v75);
    (*(v108 + 8))(v73, v81);
    v155 = v81;
    v156 = v76;
    v157 = v78;
    v158 = v79;
    swift_getOpaqueTypeConformance2();
    v82 = v114;
    v83 = v112;
    sub_2C3F88();
    (*(v110 + 8))(v80, v83);
    LOBYTE(v77) = sub_2C3778();
    sub_2C24D8();
    v84 = v82 + *(v120 + 36);
    *v84 = v77;
    *(v84 + 8) = v85;
    *(v84 + 16) = v86;
    *(v84 + 24) = v87;
    *(v84 + 32) = v88;
    *(v84 + 40) = 0;
    sub_6932C(v82, v122, &qword_3C4978);
    swift_storeEnumTagMultiPayload();
    sub_1B03A8();
    sub_1B05E8();
    sub_2C33C8();
    sub_69198(v82, &qword_3C4978);
  }

  else
  {
    sub_2C46A8();
    sub_2C2708();
    LOBYTE(v137) = 1;
    LOBYTE(v147[0]) = v168;
    LOBYTE(v144[0]) = v170;
    v155 = 0;
    LOBYTE(v156) = 1;
    v157 = v167;
    LOBYTE(v158) = v168;
    v159 = v169;
    LOBYTE(v160) = v170;
    v161 = v171;
    sub_6620C(&qword_3C0F70);
    sub_102EAC();
    v89 = v115;
    sub_2C3F88();
    sub_6932C(v89, v122, &qword_3C4960);
    swift_storeEnumTagMultiPayload();
    sub_1B03A8();
    sub_1B05E8();
    sub_2C33C8();
    sub_69198(v89, &qword_3C4960);
  }

  v90 = v72;
  v91 = v123;
  sub_6932C(v90, v123, &qword_3C4980);
  *&v137 = v135;
  *(&v137 + 1) = v134;
  *&v138 = v130;
  *(&v138 + 1) = v133;
  *&v139 = v128;
  *(&v139 + 1) = v38;
  *&v140 = v40;
  *(&v140 + 1) = v42;
  *&v141 = v44;
  *(&v141 + 1) = v132;
  *&v142 = KeyPath;
  *(&v142 + 1) = v129;
  v143 = 0;
  v92 = v125;
  *(v125 + 96) = 0;
  v93 = v142;
  v92[4] = v141;
  v92[5] = v93;
  v94 = v138;
  *v92 = v137;
  v92[1] = v94;
  v95 = v140;
  v92[2] = v139;
  v92[3] = v95;
  v97 = v118;
  v96 = v119;
  *&v144[0] = v119;
  *(&v144[0] + 1) = v118;
  v98 = v117;
  v144[1] = v117;
  v99 = v116;
  *&v145 = v116;
  *(&v145 + 1) = v19;
  *&v146[0] = v67;
  *(&v146[0] + 1) = v69;
  *&v146[1] = v71;
  BYTE8(v146[1]) = 0;
  v100 = v117;
  *(v92 + 104) = v144[0];
  v101 = v145;
  v102 = v146[0];
  *(v92 + 161) = *(v146 + 9);
  *(v92 + 152) = v102;
  *(v92 + 136) = v101;
  *(v92 + 120) = v100;
  v103 = sub_6620C(&qword_3C49B0);
  sub_6932C(v91, v92 + *(v103 + 64), &qword_3C4980);
  sub_6932C(&v137, &v155, &qword_3C49B8);
  sub_6932C(v144, &v155, &qword_3C49C0);
  sub_69198(v136, &qword_3C4980);
  sub_69198(v91, &qword_3C4980);
  v147[0] = v96;
  v147[1] = v97;
  v148 = v98;
  v149 = v99;
  v150 = v19;
  v151 = v67;
  v152 = v69;
  v153 = v71;
  v154 = 0;
  sub_69198(v147, &qword_3C49C0);
  v155 = v135;
  v156 = v134;
  v157 = v130;
  v158 = v133;
  v159 = v128;
  v160 = v38;
  *&v161 = v40;
  *(&v161 + 1) = v42;
  v162 = v44;
  v163 = v132;
  v164 = KeyPath;
  v165 = v129;
  v166 = 0;
  return sub_69198(&v155, &qword_3C49B8);
}

uint64_t sub_1B00EC()
{
  sub_1AF1A8();

  return sub_2BFD18();
}

unint64_t sub_1B0134()
{
  result = qword_3C4930;
  if (!qword_3C4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4930);
  }

  return result;
}

uint64_t sub_1B0234(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C4938);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B02A4()
{
  result = qword_3C4950;
  if (!qword_3C4950)
  {
    sub_718D4(&qword_3C4940);
    sub_72B74(&qword_3C4958, &qword_3C4938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4950);
  }

  return result;
}

uint64_t type metadata accessor for HairlineDividerStyle()
{
  result = qword_3C4A20;
  if (!qword_3C4A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B03A8()
{
  result = qword_3C4988;
  if (!qword_3C4988)
  {
    sub_718D4(&qword_3C4978);
    sub_1B0434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4988);
  }

  return result;
}

unint64_t sub_1B0434()
{
  result = qword_3C4990;
  if (!qword_3C4990)
  {
    sub_718D4(&qword_3C4998);
    sub_2C4548();
    type metadata accessor for HairlineDividerStyle();
    sub_1B05A0(&qword_3C0F20, &type metadata accessor for Divider);
    sub_1B05A0(&qword_3C49A0, type metadata accessor for HairlineDividerStyle);
    swift_getOpaqueTypeConformance2();
    sub_1B05A0(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4990);
  }

  return result;
}

uint64_t sub_1B05A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B05E8()
{
  result = qword_3C49A8;
  if (!qword_3C49A8)
  {
    sub_718D4(&qword_3C4960);
    sub_102EAC();
    sub_1B05A0(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C49A8);
  }

  return result;
}

double sub_1B06A8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2C30F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v8 = sub_2C0D48();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  sub_29A87C(v11);
  v12 = sub_2C0CC8();
  (*(v9 + 8))(v11, v8);
  v13 = v2 + *(type metadata accessor for HairlineDividerStyle() + 20);
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    v18 = *v13;
  }

  else
  {

    sub_2C5DD8();
    v15 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_125A48(v14, 0);
    (*(v5 + 8))(v7, v4);
  }

  sub_2C46A8();
  sub_2C2708();
  *&v19[6] = v20;
  *&v19[22] = v21;
  *&v19[38] = v22;
  v16 = *&v19[16];
  *(a1 + 10) = *v19;
  *a1 = v12;
  *(a1 + 8) = 256;
  *(a1 + 26) = v16;
  result = *&v19[32];
  *(a1 + 42) = *&v19[32];
  *(a1 + 56) = *&v19[46];
  return result;
}

uint64_t sub_1B0928(uint64_t a1)
{
  v2 = type metadata accessor for HairlineDividerStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B09A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BC7C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B0A7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3BC7C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_1B0B44()
{
  sub_AF178();
  if (v0 <= 0x3F)
  {
    sub_1B0BC8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0BC8()
{
  if (!qword_3C1888)
  {
    v0 = sub_2C2558();
    if (!v1)
    {
      atomic_store(v0, &qword_3C1888);
    }
  }
}

uint64_t sub_1B0C18()
{
  sub_718D4(&qword_3C4940);
  sub_1B02A4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1B0C9C()
{
  result = qword_3C1AC8;
  if (!qword_3C1AC8)
  {
    sub_718D4(&qword_3C1AC0);
    sub_72B74(&qword_3C1AB0, &qword_3C1AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1AC8);
  }

  return result;
}

uint64_t sub_1B0D54()
{
  v0 = sub_6620C(&qword_3BCB28);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_2C3918();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.subheadline(_:), v3, v5);
  v8 = enum case for Font.Design.rounded(_:);
  v9 = sub_2C3848();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2, v8, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  sub_2C3858();
  v11 = sub_2C38A8();
  sub_69198(v2, &qword_3BCB28);
  result = (*(v4 + 8))(v7, v3);
  qword_3C4A58 = v11;
  return result;
}

uint64_t sub_1B0F54()
{
  v0 = sub_6620C(&qword_3BCB28);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  sub_2C3858();
  v3 = enum case for Font.Design.rounded(_:);
  v4 = sub_2C3848();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_2C3898();
  result = sub_69198(v2, &qword_3BCB28);
  qword_3C4A60 = v6;
  return result;
}

uint64_t sub_1B1098()
{
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
  sub_2BE6F8();
}

uint64_t sub_1B113C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
  sub_2BE6F8();

  *a2 = *(v3 + 16);
}

uint64_t sub_1B11E8(uint64_t a1)
{

  v3 = sub_2C41B8();

  if (v3)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
    sub_2BE6E8();
  }
}

uint64_t sub_1B133C()
{
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
  sub_2BE6F8();
}

uint64_t sub_1B13E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
  sub_2BE6F8();

  *a2 = *(v3 + 24);
}

uint64_t sub_1B148C(uint64_t a1)
{

  v3 = sub_2C41B8();

  if (v3)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
    sub_2BE6E8();
  }
}

double sub_1B15E0()
{
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
  sub_2BE6F8();

  return *(v0 + 32);
}

double sub_1B1680@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
  sub_2BE6F8();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

void sub_1B1728(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
    sub_2BE6E8();
  }
}

double sub_1B1840()
{
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
  sub_2BE6F8();

  return *(v0 + 40);
}

double sub_1B18E0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
  sub_2BE6F8();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

void sub_1B1988(double a1)
{
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
    sub_2BE6E8();
  }
}

double sub_1B1AA0()
{
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
  sub_2BE6F8();

  return *(v0 + 48);
}

double sub_1B1B40@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
  sub_2BE6F8();

  result = *(v3 + 48);
  *a2 = result;
  return result;
}

void sub_1B1BE8(double a1)
{
  if (*(v1 + 48) == a1)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
    sub_2BE6E8();
  }
}

uint64_t sub_1B1D00()
{
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
  sub_2BE6F8();
}

uint64_t sub_1B1DA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
  sub_2BE6F8();

  *a2 = *(v3 + 56);
}

uint64_t sub_1B1E50(uint64_t a1)
{

  v3 = sub_2C37E8();

  if (v3)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
    sub_2BE6E8();
  }
}

uint64_t sub_1B1FA4()
{
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
  sub_2BE6F8();
}

uint64_t sub_1B2048@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
  sub_2BE6F8();

  *a2 = *(v3 + 64);
}

uint64_t sub_1B20F4(uint64_t a1)
{

  v3 = sub_2C37E8();

  if (v3)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
    sub_2BE6E8();
  }
}

uint64_t sub_1B2248()
{

  v1 = OBJC_IVAR____TtC11BookStoreUIP33_8C913943553E805EED1D1E3E7D4A282F26ReadingGoalsGaugeViewModel___observationRegistrar;
  v2 = sub_2BE738();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1B2304()
{
  v0[2] = sub_2C41F8();
  v0[3] = sub_2C41F8();
  v0[4] = 0x3FF0000000000000;
  v0[5] = 0;
  v0[6] = 0;
  if (qword_3BB8F8 != -1)
  {
    swift_once();
  }

  v0[7] = qword_3C4A58;
  v1 = qword_3BB900;

  if (v1 != -1)
  {
    swift_once();
  }

  v0[8] = qword_3C4A60;

  sub_2BE728();
  return v0;
}

uint64_t sub_1B23CC@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v49 = type metadata accessor for ReadingGoalGaugeStyle(0);
  __chkstk_darwin(v49);
  v41 = (&v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_6620C(&qword_3C4E38);
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v4 = &v39 - v3;
  v45 = sub_6620C(&qword_3C4E40);
  __chkstk_darwin(v45);
  v46 = &v39 - v5;
  v6 = sub_6620C(&qword_3C4E48);
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v44 = &v39 - v7;
  sub_6620C(&qword_3C4D98);
  sub_2C45B8();
  v8 = v50;
  swift_getKeyPath();
  v50 = v8;
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
  sub_2BE6F8();

  v9 = *(v8 + 40);

  sub_2C45B8();
  v10 = v50;
  swift_getKeyPath();
  v50 = v10;
  sub_2BE6F8();

  v11 = *(v10 + 48);

  if (v11 >= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  v52 = v12;
  sub_2C45B8();
  v13 = v50;
  swift_getKeyPath();
  v50 = v13;
  sub_2BE6F8();

  v14 = *(v13 + 48);

  if (v14 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v39 = &v39;
    v50 = 0;
    v51 = v14;
    __chkstk_darwin(result);
    __chkstk_darwin(v16);
    sub_6620C(&qword_3C4E58);
    sub_6620C(&qword_3C4E60);
    sub_1B5270();
    sub_1B5328();
    sub_AB620();
    sub_2C4298();
    sub_2C45B8();
    v17 = v50;
    swift_getKeyPath();
    v50 = v17;
    sub_2BE6F8();

    v18 = *(v17 + 32);

    v19 = v46;
    (*(v42 + 32))(v46, v4, v43);
    *(v19 + *(v45 + 36)) = v18;
    sub_2C45B8();
    v20 = v50;
    swift_getKeyPath();
    v50 = v20;
    sub_2BE6F8();

    v21 = *(v20 + 16);

    sub_2C45B8();
    v22 = v50;
    swift_getKeyPath();
    v50 = v22;
    sub_2BE6F8();

    v23 = *(v22 + 24);

    v52 = v21;
    sub_2C4368();
    v24 = v51;
    v25 = v41;
    *v41 = v50;
    v25[1] = v24;
    v52 = v23;
    sub_2C4368();
    v26 = v51;
    *(v25 + 2) = v50;
    v25[3] = v26;
    v27 = *(v49 + 24);
    *(v25 + v27) = swift_getKeyPath();
    sub_6620C(&qword_3BD530);
    swift_storeEnumTagMultiPayload();
    sub_1B5448();
    sub_1B5500(&qword_3C4EA8, type metadata accessor for ReadingGoalGaugeStyle);
    v28 = v44;
    sub_2C3E18();
    sub_1B5548(v25);
    sub_69198(v19, &qword_3C4E40);
    LOBYTE(v27) = sub_2C3758();
    sub_2C24D8();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = v40;
    (*(v47 + 32))(v40, v28, v48);
    result = sub_6620C(&qword_3C4EB0);
    v38 = v37 + *(result + 36);
    *v38 = v27;
    *(v38 + 8) = v30;
    *(v38 + 16) = v32;
    *(v38 + 24) = v34;
    *(v38 + 32) = v36;
    *(v38 + 40) = 0;
  }

  return result;
}

uint64_t sub_1B2ADC@<X0>(uint64_t a1@<X8>)
{
  sub_6620C(&qword_3C4D98);
  sub_2C45B8();
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
  sub_2BE6F8();

  v2 = *(v18 + 48);

  v4 = round(v2 / 60.0);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    sub_1B55A4();
    sub_2C6118();
    sub_7212C();
    v5 = sub_2C3A48();
    v7 = v6;
    v9 = v8;
    sub_2C45B8();
    swift_getKeyPath();
    sub_2BE6F8();

    v10 = sub_2C39E8();
    v12 = v11;
    v14 = v13;
    v16 = v15;

    sub_72180(v5, v7, v9 & 1);

    KeyPath = swift_getKeyPath();
    result = swift_getKeyPath();
    *a1 = v10;
    *(a1 + 8) = v12;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v16;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = 1;
    *(a1 + 48) = 0;
    *(a1 + 56) = result;
    *(a1 + 64) = 0x3FE0000000000000;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B2D60@<X0>(uint64_t a1@<X8>)
{
  sub_6620C(&qword_3C4D98);
  sub_2C45B8();
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
  sub_2BE6F8();

  v2 = *(v24 + 40);

  v4 = v2 / 60.0;
  if (COERCE__INT64(fabs(v2 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    sub_1B55A4();
    sub_2C6118();
    sub_7212C();
    v5 = sub_2C3A48();
    v7 = v6;
    v9 = v8;
    sub_2C45B8();
    swift_getKeyPath();
    sub_2BE6F8();

    v21 = sub_2C39A8();
    v11 = v10;
    v13 = v12;
    sub_72180(v5, v7, v9 & 1);

    sub_2C45B8();
    swift_getKeyPath();
    sub_2BE6F8();

    v14 = sub_2C39E8();
    v22 = v16;
    v23 = v15;
    LOBYTE(v5) = v17;

    sub_72180(v21, v11, v13 & 1);

    KeyPath = swift_getKeyPath();
    v19 = swift_getKeyPath();
    sub_2C45B8();
    swift_getKeyPath();
    sub_2BE6F8();

    v20 = (a1 + *(sub_6620C(&qword_3C4E60) + 36));
    sub_6620C(&qword_3C4E90);
    sub_2C2AE8();
    result = swift_getKeyPath();
    *v20 = result;
    *a1 = v14;
    *(a1 + 8) = v23;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v22;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = 1;
    *(a1 + 48) = 0;
    *(a1 + 56) = v19;
    *(a1 + 64) = 0x3FDEB851EB851EB8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B316C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v3 = sub_2C0BB8();
  v143 = *(v3 - 8);
  v144 = v3;
  __chkstk_darwin(v3);
  v141 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_2C0C68();
  v130 = *(v132 - 8);
  __chkstk_darwin(v132);
  v123 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_2C0C98();
  v133 = *(v136 - 8);
  __chkstk_darwin(v136);
  v131 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C3598();
  v125 = *(v7 - 8);
  v126 = v7;
  __chkstk_darwin(v7);
  *&v149 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_6620C(&qword_3C4F70);
  __chkstk_darwin(v124);
  v127 = &v120 - v9;
  v128 = sub_6620C(&qword_3C4F78);
  __chkstk_darwin(v128);
  v135 = &v120 - v10;
  v134 = sub_6620C(&qword_3C4F80);
  __chkstk_darwin(v134);
  v139 = &v120 - v11;
  v138 = sub_6620C(&qword_3C4F88);
  __chkstk_darwin(v138);
  v148 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v137 = &v120 - v14;
  __chkstk_darwin(v15);
  v147 = &v120 - v16;
  v17 = sub_6620C(&qword_3C4F90);
  __chkstk_darwin(v17 - 8);
  v19 = &v120 - v18;
  v121 = sub_6620C(&qword_3C4F98);
  __chkstk_darwin(v121);
  v21 = &v120 - v20;
  v122 = sub_6620C(&qword_3C4FA0);
  __chkstk_darwin(v122);
  v146 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v120 - v24;
  __chkstk_darwin(v26);
  v155 = &v120 - v27;
  v28 = a1[3];
  *&v186[0] = a1[2];
  *(&v186[0] + 1) = v28;
  sub_6620C(&qword_3C4FA8);
  sub_2C4378();
  v154 = v172[0];
  sub_2C25C8();
  v29 = sub_2C46A8();
  v152 = v30;
  v153 = v29;
  sub_2C47E8();
  v145 = v31;
  v33 = v32;
  sub_2C35B8();
  v35 = v34;
  v36 = *a1;
  v37 = a1[1];
  v142 = a1;
  *&v186[0] = v36;
  *(&v186[0] + 1) = v37;
  sub_2C4378();
  v140 = v172[0];
  sub_2C25C8();
  v38 = sub_2C46A8();
  v150 = v39;
  v151 = v38;
  sub_2C47E8();
  v41 = v40;
  v43 = v42;
  sub_2C3588();
  sub_6620C(&qword_3BD560);
  v44 = swift_allocObject();
  v120 = xmmword_2E15C0;
  *(v44 + 16) = xmmword_2E15C0;
  v45 = sub_2C37A8();
  *(v44 + 32) = v45;
  v46 = sub_2C3788();
  *(v44 + 33) = v46;
  v47 = sub_2C3798();
  sub_2C3798();
  if (sub_2C3798() != v45)
  {
    v47 = sub_2C3798();
  }

  sub_2C3798();
  if (sub_2C3798() != v46)
  {
    v47 = sub_2C3798();
  }

  sub_2C24D8();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_69130(v19, v21, &qword_3C4F90);
  v56 = &v21[*(v121 + 36)];
  *v56 = v47;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  sub_2C46A8();
  sub_2C2AD8();
  sub_69130(v21, v25, &qword_3C4F98);
  v57 = &v25[*(v122 + 36)];
  v58 = v203;
  *(v57 + 4) = v202;
  *(v57 + 5) = v58;
  *(v57 + 6) = v204;
  v59 = v199;
  *v57 = v198;
  *(v57 + 1) = v59;
  v60 = v201;
  *(v57 + 2) = v200;
  *(v57 + 3) = v60;
  sub_69130(v25, v155, &qword_3C4FA0);
  sub_2C35A8();
  v61 = swift_allocObject();
  *(v61 + 16) = v120;
  v62 = sub_2C37A8();
  *(v61 + 32) = v62;
  v63 = sub_2C3788();
  *(v61 + 33) = v63;
  v64 = sub_2C3798();
  sub_2C3798();
  if (sub_2C3798() != v62)
  {
    v64 = sub_2C3798();
  }

  sub_2C3798();
  if (sub_2C3798() != v63)
  {
    v64 = sub_2C3798();
  }

  v65 = v35 * 0.75;
  type metadata accessor for ReadingGoalGaugeStyle(0);
  v66 = v131;
  sub_29AAE0(v131);
  v67 = v123;
  sub_2C0C78();
  v68 = *(v133 + 8);
  v69 = v136;
  v68(v66, v136);
  sub_2C0C38();
  (*(v130 + 8))(v67, v132);
  sub_2C24D8();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = v127;
  (*(v125 + 32))(v127, v149, v126);
  v79 = v78 + *(v124 + 36);
  *v79 = v64;
  *(v79 + 8) = v71;
  *(v79 + 16) = v73;
  *(v79 + 24) = v75;
  *(v79 + 32) = v77;
  *(v79 + 40) = 0;
  sub_29AAE0(v66);
  v80 = v141;
  sub_2C0BE8();
  v68(v66, v69);
  sub_2C0B98();
  (*(v143 + 8))(v80, v144);
  sub_2C46A8();
  sub_2C2708();
  v81 = v135;
  sub_69130(v78, v135, &qword_3C4F70);
  v82 = (v81 + *(v128 + 36));
  v83 = v206;
  *v82 = v205;
  v82[1] = v83;
  v82[2] = v207;
  sub_2C4698();
  sub_2C2AD8();
  v84 = v139;
  sub_69130(v81, v139, &qword_3C4F78);
  v85 = (v84 + *(v134 + 36));
  v86 = v213;
  v85[4] = v212;
  v85[5] = v86;
  v85[6] = v214;
  v87 = v209;
  *v85 = v208;
  v85[1] = v87;
  v88 = v211;
  v85[2] = v210;
  v85[3] = v88;
  LOBYTE(v81) = sub_2C3778();
  sub_2C24D8();
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v97 = v84;
  v98 = v137;
  sub_69130(v97, v137, &qword_3C4F80);
  v99 = v98 + *(v138 + 36);
  *v99 = v81;
  *(v99 + 8) = v90;
  *(v99 + 16) = v92;
  *(v99 + 24) = v94;
  *(v99 + 32) = v96;
  *(v99 + 40) = 0;
  v100 = v147;
  sub_69130(v98, v147, &qword_3C4F88);
  v101 = v146;
  sub_6932C(v155, v146, &qword_3C4FA0);
  v102 = v148;
  sub_6932C(v100, v148, &qword_3C4F88);
  v149 = xmmword_2F1E00;
  v156 = xmmword_2F1E00;
  v157 = v217;
  v158 = v218;
  *&v159 = v219;
  *(&v159 + 1) = v154;
  LOWORD(v160) = 256;
  *(&v160 + 2) = v215;
  WORD3(v160) = v216;
  *(&v160 + 1) = v153;
  *&v161 = v152;
  *(&v161 + 1) = 0x4002D97C7F3321D2;
  v103 = v145;
  *&v162 = v145;
  *(&v162 + 1) = v33;
  v163 = 1;
  v105 = v160;
  v104 = v161;
  v106 = v162;
  v107 = v129;
  *(v129 + 112) = 1;
  *(v107 + 80) = v104;
  *(v107 + 96) = v106;
  v108 = v156;
  v109 = v157;
  v110 = v158;
  *(v107 + 48) = v159;
  *(v107 + 64) = v105;
  *(v107 + 16) = v109;
  *(v107 + 32) = v110;
  *v107 = v108;
  *&v164 = 0;
  *(&v164 + 1) = v65;
  v165 = v222;
  v166 = v223;
  v111 = v140;
  *&v167 = v224;
  *(&v167 + 1) = v140;
  LOWORD(v168) = 256;
  WORD3(v168) = v221;
  *(&v168 + 2) = v220;
  *(&v168 + 1) = v151;
  *&v169 = v150;
  *(&v169 + 1) = 0x4002D97C7F3321D2;
  *&v170 = v41;
  *(&v170 + 1) = v43;
  v171 = 1;
  v112 = v168;
  v113 = v169;
  v114 = v170;
  *(v107 + 232) = 1;
  *(v107 + 216) = v114;
  *(v107 + 200) = v113;
  *(v107 + 184) = v112;
  v115 = v164;
  v116 = v165;
  v117 = v166;
  *(v107 + 168) = v167;
  *(v107 + 152) = v117;
  *(v107 + 136) = v116;
  *(v107 + 120) = v115;
  v118 = sub_6620C(&qword_3C4FB0);
  sub_6932C(v101, v107 + *(v118 + 64), &qword_3C4FA0);
  sub_6932C(v102, v107 + *(v118 + 80), &qword_3C4F88);
  sub_6932C(&v156, v186, &qword_3C4FB8);
  sub_6932C(&v164, v186, &qword_3C4FB8);
  sub_69198(v100, &qword_3C4F88);
  sub_69198(v155, &qword_3C4FA0);
  sub_69198(v102, &qword_3C4F88);
  sub_69198(v101, &qword_3C4FA0);
  v172[0] = 0;
  *&v172[1] = v65;
  v173 = v222;
  v174 = v223;
  v175 = v224;
  v176 = v111;
  v177 = 256;
  v178 = v220;
  v179 = v221;
  v180 = v151;
  v181 = v150;
  v182 = 0x4002D97C7F3321D2;
  v183 = v41;
  v184 = v43;
  v185 = 1;
  sub_69198(v172, &qword_3C4FB8);
  v186[0] = v149;
  v186[1] = v217;
  v186[2] = v218;
  v187 = v219;
  v188 = v154;
  v189 = 256;
  v190 = v215;
  v191 = v216;
  v192 = v153;
  v193 = v152;
  v194 = 0x4002D97C7F3321D2;
  v195 = v103;
  v196 = v33;
  v197 = 1;
  return sub_69198(v186, &qword_3C4FB8);
}

uint64_t sub_1B3FE4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_2C46A8();
  a1[1] = v3;
  v4 = sub_6620C(&qword_3C4F68);
  return sub_1B316C(v1, a1 + *(v4 + 44));
}

void sub_1B4050(char *a1, uint64_t a2, void *a3)
{
  v4 = *&a1[qword_3C4CF8];
  *&a1[qword_3C4CF8] = a3;
  v5 = a3;
  v6 = a1;

  sub_1B40C8();
}

void sub_1B40C8()
{
  v1 = *(v0 + qword_3C4CF8);
  if (v1)
  {
    v2 = v0;
    v3 = qword_3C4D08;

    v4 = v1;
    if ([v4 progressColor])
    {
      v5 = sub_2C4288();
      sub_1B11E8(v5);

      if ([v4 controlColor])
      {
        v6 = sub_2C4288();
        sub_1B148C(v6);

        v7 = *(v0 + v3);

        v8 = [v4 actualReadingTimeSeconds];
        if (v8)
        {
          v9 = v8;
          [v8 doubleValue];
          v11 = v10;

          if (*(v7 + 40) == v11)
          {
            *(v7 + 40) = v11;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            __chkstk_darwin(KeyPath);
            sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
            sub_2BE6E8();
          }

          v13 = *(v2 + v3);

          v14 = [v4 readingGoalSeconds];
          if (v14)
          {
            v15 = v14;
            [v14 doubleValue];
            v17 = v16;

            if (*(v13 + 48) == v17)
            {
              *(v13 + 48) = v17;
            }

            else
            {
              v18 = swift_getKeyPath();
              __chkstk_darwin(v18);
              sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
              sub_2BE6E8();
            }

            v19 = [v4 timeFontSpec];
            v20 = [v19 font];

            if (v20)
            {
              v21 = v20;
              if (sub_2C1028())
              {
                if (qword_3BB8F8 != -1)
                {
                  swift_once();
                }
              }

              else
              {
                v24 = v21;
                v22 = sub_2C3928();
              }

              sub_1B1E50(v22);
            }

            else
            {
              if (qword_3BB8F8 != -1)
              {
                swift_once();
              }

              sub_1B1E50(v23);
            }

            v25 = [v4 streakFontSpec];
            v26 = [v25 font];

            if (v26)
            {
              v27 = v26;
              if (sub_2C1028())
              {
                if (qword_3BB900 != -1)
                {
                  swift_once();
                }
              }

              else
              {
                v30 = v27;
                v28 = sub_2C3928();
              }

              sub_1B20F4(v28);
            }

            else
            {
              if (qword_3BB900 != -1)
              {
                swift_once();
              }

              sub_1B20F4(v29);
            }

            v31 = *(v2 + v3);

            v32 = [v4 opacity];
            if (v32)
            {
              v33 = v32;
              [v32 doubleValue];
              v35 = v34;

              if (*(v31 + 32) == v35)
              {

                *(v31 + 32) = v35;
              }

              else
              {
                v36 = swift_getKeyPath();
                __chkstk_darwin(v36);
                sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);
                sub_2BE6E8();
              }

              return;
            }

LABEL_41:
            __break(1u);
            return;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_39;
  }
}

void sub_1B4724(char *a1, double a2)
{
  *&a1[qword_3C4D00] = a2;
  v2 = a1;
  sub_2C46D8();
  sub_2C2848();
}

uint64_t sub_1B47AC(uint64_t result)
{
  v1 = *(result + qword_3C4D08);
  v2 = *(result + qword_3C4D00);
  if (*(v1 + 40) == v2)
  {
    *(v1 + 40) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);

    sub_2BE6E8();
  }

  return result;
}

void sub_1B48F4(uint64_t a1)
{
  *(a1 + qword_3C4CF8) = 0;
  *(a1 + qword_3C4D00) = 0;
  sub_2C6378();
  __break(1u);
}

uint64_t sub_1B49C8()
{
}

uint64_t sub_1B4A24(uint64_t a1)
{
}

id ReadingGoalsGaugeHostingControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadingGoalsGaugeHostingControllerFactory();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1B4B8C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1B4BC4(uint64_t a1)
{
  v2 = sub_2C2AF8();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2C2FE8();
}

uint64_t sub_1B4C8C@<X0>(uint64_t a1@<X8>)
{
  result = sub_2C30C8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

id sub_1B4CF0()
{
  v1 = type metadata accessor for ReadingGoalsGaugeView(0);
  __chkstk_darwin(v1 - 8);
  *(v0 + qword_3C4CF8) = 0;
  *(v0 + qword_3C4D00) = 0;
  type metadata accessor for ReadingGoalsGaugeViewModel(0);
  swift_allocObject();
  *(v0 + qword_3C4D08) = sub_1B2304();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel);

  sub_2C45D8();
  v2 = sub_2C3398();
  result = [v2 view];
  if (result)
  {
    v4 = result;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4ECC()
{
  result = sub_2BE738();
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

uint64_t sub_1B5008(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C4D98);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B5094(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C4D98);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1B5130()
{
  sub_1B5B18(319, &unk_3C4E08, type metadata accessor for ReadingGoalsGaugeViewModel, &type metadata accessor for Bindable);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1B5270()
{
  result = qword_3C4E68;
  if (!qword_3C4E68)
  {
    sub_718D4(&qword_3C4E58);
    sub_A0864();
    sub_72B74(&qword_3C4E70, &qword_3C4E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4E68);
  }

  return result;
}

unint64_t sub_1B5328()
{
  result = qword_3C4E80;
  if (!qword_3C4E80)
  {
    sub_718D4(&qword_3C4E60);
    sub_1B5270();
    sub_72B74(&qword_3C4E88, &qword_3C4E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4E80);
  }

  return result;
}

unint64_t sub_1B5448()
{
  result = qword_3C4E98;
  if (!qword_3C4E98)
  {
    sub_718D4(&qword_3C4E40);
    sub_72B74(&qword_3C4EA0, &qword_3C4E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4E98);
  }

  return result;
}

uint64_t sub_1B5500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B5548(uint64_t a1)
{
  v2 = type metadata accessor for ReadingGoalGaugeStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B55A4()
{
  result = qword_3C4EB8;
  if (!qword_3C4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4EB8);
  }

  return result;
}

uint64_t sub_1B5614@<X0>(uint64_t a1@<X8>)
{
  result = sub_2C30C8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B5678@<X0>(void *a1@<X8>)
{
  result = sub_2C2FF8();
  *a1 = v3;
  return result;
}

double sub_1B5760()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

double sub_1B5770()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 48) = result;
  return result;
}

double sub_1B5780()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

uint64_t sub_1B5790()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

uint64_t sub_1B57CC()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t sub_1B5808()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t sub_1B5844()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_1B5894(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BD588);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1B5964(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_6620C(&qword_3BD588);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1B5A14()
{
  sub_1B5AC8();
  if (v0 <= 0x3F)
  {
    sub_1B5B18(319, &qword_3BD600, &type metadata accessor for SizeConstants, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B5AC8()
{
  if (!qword_3C4F28)
  {
    v0 = sub_2C43A8();
    if (!v1)
    {
      atomic_store(v0, &qword_3C4F28);
    }
  }
}

void sub_1B5B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1B5B80()
{
  result = qword_3C4F60;
  if (!qword_3C4F60)
  {
    sub_718D4(&qword_3C4EB0);
    sub_718D4(&qword_3C4E40);
    type metadata accessor for ReadingGoalGaugeStyle(255);
    sub_1B5448();
    sub_1B5500(&qword_3C4EA8, type metadata accessor for ReadingGoalGaugeStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4F60);
  }

  return result;
}

uint64_t sub_1B5D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_62020(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_5D228(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_62FE4();
        v14 = v16;
      }

      swift_unknownObjectRelease();
      result = sub_24DBD0(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1B5E38(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_6620C(&qword_3BC418);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_2BE588();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_69198(a1, &qword_3BC418);
    v14 = sub_5D350(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_63734();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_24DD80(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_69198(v8, &qword_3BC418);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_62308(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1B6088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_693CC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_62470(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_69198(a1, qword_3C0250);
    sub_24D970(a2, a3, v9);

    return sub_69198(v9, qword_3C0250);
  }

  return result;
}

uint64_t sub_1B6158(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_68D1C(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_6274C(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_69198(a1, &unk_3BDC90);
    v7 = sub_5D350(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_63E10();
        v11 = v13;
      }

      sub_68D1C((*(v11 + 56) + 40 * v9), v14);
      sub_24E1D8(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_69198(v14, &unk_3BDC90);
  }

  return result;
}

uint64_t sub_1B6264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_68D1C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_6287C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_69198(a1, &unk_3C2550);
    sub_24DA3C(a2, a3, v9);

    return sub_69198(v9, &unk_3C2550);
  }

  return result;
}

uint64_t sub_1B6334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_62A1C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_5D228(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_6434C();
        v16 = v18;
      }

      result = sub_24E7A4(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1B643C(uint64_t a1, uint64_t a2)
{
  v3 = sub_6620C(&unk_3CA260);
  __chkstk_darwin(v3 - 8);
  v5 = v9 - v4;
  v6 = sub_2C4BF8();
  __chkstk_darwin(v6 - 8);
  sub_691F8(a2, v10);
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v10[40] = 1;
  sub_2C4BE8();
  v9[3] = &type metadata for SeriesListShelfUpdateIntent;
  v9[4] = sub_112718();
  v9[0] = swift_allocObject();
  sub_1127B4(v10, v9[0] + 16);
  v7 = sub_2BF088();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  type metadata accessor for Page();
  type metadata accessor for Shelf();
  sub_1BFE88(&qword_3BD4F0, type metadata accessor for Page);
  sub_1BFE88(&qword_3BD4F8, type metadata accessor for Shelf);
  sub_2C10E8();
  return sub_112810(v10);
}

uint64_t SeriesSeeAllPageIntentImplementation.performSync(_:objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v218 = a2;
  v211 = sub_2BE5C8();
  v210 = *(v211 - 8);
  __chkstk_darwin(v211);
  v209 = &v204 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for Page();
  v216 = *(v217 - 8);
  __chkstk_darwin(v217);
  v215 = &v204 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_2C1A68();
  v213 = *(v214 - 8);
  __chkstk_darwin(v214);
  v221 = &v204 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_2C1A28();
  v220 = *(v222 - 8);
  __chkstk_darwin(v222);
  v231 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3C1598);
  __chkstk_darwin(v7 - 8);
  v233 = &v204 - v8;
  *&v236 = sub_2BE828();
  v227 = *(v236 - 8);
  __chkstk_darwin(v236);
  v212 = (&v204 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v232 = (&v204 - v11);
  v12 = sub_2C4BF8();
  __chkstk_darwin(v12 - 8);
  v219 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v235 = &v204 - v15;
  v251 = sub_2BE8F8();
  v249 = *(v251 - 8);
  __chkstk_darwin(v251);
  v228 = &v204 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v250 = &v204 - v18;
  v225 = sub_6620C(&qword_3C1590);
  v224 = *(v225 - 8);
  __chkstk_darwin(v225);
  v223 = &v204 - v19;
  v242 = sub_6620C(&qword_3C15A0);
  v230 = *(v242 - 8);
  __chkstk_darwin(v242);
  v240 = &v204 - v20;
  v241 = sub_6620C(&qword_3C15A8);
  v229 = *(v241 - 8);
  __chkstk_darwin(v241);
  v239 = &v204 - v21;
  v22 = sub_6620C(&qword_3BEF80);
  __chkstk_darwin(v22 - 8);
  v244 = &v204 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v245 = &v204 - v25;
  __chkstk_darwin(v26);
  v258 = &v204 - v27;
  v238 = sub_2BFDD8();
  v237 = *(v238 - 8);
  __chkstk_darwin(v238);
  v257 = &v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_6620C(&qword_3C15B8);
  __chkstk_darwin(v29 - 8);
  v246 = &v204 - v30;
  v31 = type metadata accessor for Shelf();
  v226 = *(v31 - 8);
  __chkstk_darwin(v31 - 8);
  v256 = (&v204 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_6620C(&qword_3BFEC0);
  __chkstk_darwin(v33 - 8);
  v35 = &v204 - v34;
  v253 = sub_2C4BB8();
  v252 = *(v253 - 8);
  __chkstk_darwin(v253);
  v243 = &v204 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v204 - v38;
  v254 = sub_2BEF78();
  v255 = *(v254 - 8);
  __chkstk_darwin(v254);
  v248 = &v204 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v204 - v42;
  sub_6620C(&qword_3BE240);
  sub_2C4DB8();
  type metadata accessor for HostProxy(0);
  sub_2C4DB8();
  v260 = v268;
  sub_691F8(a1, &v268);
  sub_2C1498();
  sub_2C4DB8();
  v259 = v265;
  v44 = sub_2C1468();
  v261 = a1;
  v262 = v43;
  v274 = v39;
  if ((v44 & 1) == 0)
  {
    v234 = v35;
    sub_72084(&v268, v269);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v46 = sub_2C60B8();
    v47 = *(v46 - 8);
    __chkstk_darwin(v46);
    v49 = &v204 - v48;
    sub_2BF388();
    v50 = *(AssociatedTypeWitness - 8);
    if ((*(v50 + 48))(v49, 1, AssociatedTypeWitness) == 1)
    {
      (*(v47 + 8))(v49, v46);
      AssociatedConformanceWitness = 0;
      v265 = 0u;
      v266 = 0u;
      sub_69198(&v265, &qword_3BDAC8);
      sub_10AFE0();
      swift_allocError();
      *v51 = 1;
LABEL_8:
      swift_willThrow();

LABEL_23:
      sub_68CD0(&v271);
      return sub_68CD0(&v268);
    }

    *(&v266 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v52 = sub_720C8(&v265);
    (*(v50 + 32))(v52, v49, AssociatedTypeWitness);
    sub_69198(&v265, &qword_3BDAC8);
    v35 = v234;
  }

  if ([objc_opt_self() isOffline])
  {
    v234 = v35;
    sub_72084(&v268, v269);
    v53 = swift_getAssociatedTypeWitness();
    v54 = sub_2C60B8();
    v55 = *(v54 - 8);
    __chkstk_darwin(v54);
    v57 = &v204 - v56;
    sub_2BF388();
    v58 = *(v53 - 8);
    if ((*(v58 + 48))(v57, 1, v53) == 1)
    {
      (*(v55 + 8))(v57, v54);
      AssociatedConformanceWitness = 0;
      v265 = 0u;
      v266 = 0u;
      sub_69198(&v265, &qword_3BDAC8);
      sub_10AFE0();
      swift_allocError();
      *v59 = 3;
      goto LABEL_8;
    }

    *(&v266 + 1) = v53;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v60 = sub_720C8(&v265);
    (*(v58 + 32))(v60, v57, v53);
    sub_69198(&v265, &qword_3BDAC8);
    v35 = v234;
  }

  sub_72084(&v268, v269);
  sub_2BF3B8();
  sub_2BEF48();
  sub_72084(&v268, v269);
  sub_2BF3B8();
  v234 = type metadata accessor for SeriesSeeAllPageIntent();
  v61 = sub_2C54D8();
  (*(*(v61 - 8) + 56))(v35, 1, 1, v61);
  sub_2C2108();

  sub_69198(v35, &qword_3BFEC0);
  sub_72084(&v268, v269);
  v62 = swift_getAssociatedTypeWitness();
  v63 = sub_2C60B8();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = &v204 - v65;
  sub_2BF388();
  v67 = *(v62 - 8);
  v68 = (*(v67 + 48))(v66, 1, v62);
  if (v68 == 1)
  {
    (*(v64 + 8))(v66, v63);
    AssociatedConformanceWitness = 0;
    v265 = 0u;
    v266 = 0u;
  }

  else
  {
    *(&v266 + 1) = v62;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v69 = sub_720C8(&v265);
    (*(v67 + 32))(v69, v66, v62);
  }

  v70 = v258;
  v71 = v255;
  v72 = v68 != 1;
  sub_69198(&v265, &qword_3BDAC8);
  v73 = v261;
  v74 = *(v261 + 40);
  v75 = *(v234 + 24);
  LOBYTE(v265) = *(v261 + 40);
  LOBYTE(v264) = 1;
  v76 = type metadata accessor for SeriesRoomListHeaderComponentModel();
  v77 = v246;
  (*(*(v76 - 8) + 56))(v246, 1, 1, v76);
  v78 = v247;
  sub_1514BC(&v268, &v265, (v73 + v75), &v264, v77, v72, v256);
  if (v78)
  {

    sub_69198(v77, &qword_3C15B8);
    (*(v252 + 8))(v274, v253);
    (*(v71 + 8))(v262, v254);
    goto LABEL_23;
  }

  v208 = v75;
  v247 = 0;
  sub_69198(v77, &qword_3C15B8);
  sub_72084(&v268, v269);
  sub_2BF3C8();
  sub_2BFDC8();

  sub_1969C0(&v268, v70);
  v79 = v273;
  sub_72084(&v271, v272);
  sub_72084(&v268, v269);
  v80 = sub_2BF3B8();
  v81 = (*(v79 + 40))(v80);

  v264 = v81;
  sub_691F8(&v268, &v265);
  v82 = swift_allocObject();
  sub_68D1C(&v265, v82 + 16);
  sub_6620C(&qword_3C15E0);
  LODWORD(v246) = v74;
  sub_6620C(&qword_3BD478);
  sub_72B74(&qword_3C15E8, &qword_3C15E0);
  sub_2C2418();

  v83 = v273;
  sub_72084(&v271, v272);
  sub_72084(&v268, v269);
  v84 = sub_2BF3B8();
  v85 = (*(v83 + 48))(v84);

  v264 = v85;
  sub_691F8(&v268, &v265);
  v86 = swift_allocObject();
  sub_68D1C(&v265, v86 + 16);
  sub_6620C(&qword_3C15F0);
  sub_72B74(&qword_3C15F8, &qword_3C15F0);
  sub_2C2418();

  sub_72B74(&qword_3C1608, &qword_3C15A8);
  sub_72B74(&qword_3C1610, &qword_3C15A0);
  v87 = v223;
  sub_2C2428();
  sub_72B74(&qword_3C1618, &qword_3C1590);
  v88 = v225;
  v207 = sub_2C2408();
  (*(v224 + 8))(v87, v88);
  v264 = &_swiftEmptyDictionarySingleton;
  v89 = v269;
  v90 = v270;
  sub_72084(&v268, v269);
  v91 = v250;
  sub_2B7838(v89, v90, v250);
  sub_2C4BE8();
  v205 = sub_6620C(&qword_3BC240);
  v92 = swift_allocObject();
  v204 = xmmword_2E15C0;
  *(v92 + 16) = xmmword_2E15C0;
  v93 = v269;
  v94 = v270;
  sub_72084(&v268, v269);
  v95 = v232;
  sub_2B7838(v93, v94, v232);
  v234 = *(v227 + 104);
  v96 = v236;
  (v234)(v95, enum case for AppAnalyticsAction.Type.reportSeriesDetailsView(_:), v236);
  v225 = sub_2BE858();
  *(v92 + 56) = v225;
  v97 = sub_1BFE88(&qword_3CA250, &type metadata accessor for AppAnalyticsAction);
  *(v92 + 64) = v97;
  sub_720C8((v92 + 32));
  sub_2BE838();
  v206 = *(sub_6620C(&qword_3C15C8) + 48);
  v98 = v251;
  v95[3] = v251;
  v227 = sub_1BFE88(&qword_3C15D0, &type metadata accessor for SeriesData);
  v95[4] = v227;
  v224 = sub_1BFE88(&qword_3C15D8, &type metadata accessor for SeriesData);
  v95[5] = v224;
  v99 = sub_720C8(v95);
  v100 = (v249 + 16);
  v223 = *(v249 + 16);
  (v223)(v99, v91, v98);
  v101 = enum case for ScenePhase.active(_:);
  v102 = sub_2C2508();
  v103 = v101;
  v104 = v225;
  (*(*(v102 - 8) + 104))(v95 + v206, v103, v102);
  (v234)(v95, enum case for AppAnalyticsAction.Type.popData(_:), v96);
  *(v92 + 96) = v104;
  *(v92 + 104) = v97;
  sub_720C8((v92 + 72));
  sub_2BE838();
  v105 = sub_2C4D28();
  *(&v266 + 1) = v105;
  AssociatedConformanceWitness = &protocol witness table for CompoundAction;
  sub_720C8(&v265);
  sub_2C4D18();
  sub_1B6158(&v265, 3);
  if (v246)
  {
    v106 = v251;
    v107 = v227;
    v95[3] = v251;
    v95[4] = v107;
    v108 = v224;
    v95[5] = v224;
    v109 = sub_720C8(v95);
    (v223)(v109, v250, v106);
    (v234)(v95, enum case for AppAnalyticsAction.Type.pushData(_:), v236);
    *(&v266 + 1) = v104;
    AssociatedConformanceWitness = v97;
    sub_720C8(&v265);
    sub_2BE838();
    sub_1B6158(&v265, 2);
    v110 = v106;
    v111 = v237;
    v112 = v253;
    v113 = v252;
    v114 = v108;
  }

  else
  {
    v115 = v97;
    v206 = v105;
    v235 = v100;
    sub_2C4BE8();
    v116 = swift_allocObject();
    *(v116 + 16) = v204;
    sub_72084(&v268, v269);
    v117 = sub_2BF3B8();
    v119 = v118;
    sub_72084(&v268, v269);
    sub_2BF2C8();
    v121 = v120;
    sub_72084(&v268, v269);
    v122 = v115;
    v123 = v225;
    if (v121)
    {
      v124 = sub_2BF2F8();
    }

    else
    {
      v124 = sub_2BF2C8();
    }

    v126 = v212;
    *v212 = v117;
    v126[1] = v119;
    v126[2] = v124;
    *(v126 + 24) = v125 & 1;
    v127 = v236;
    v128 = v234;
    (v234)(v126, enum case for AppAnalyticsAction.Type.reportAllInSeriesView(_:), v236);
    *(v116 + 56) = v123;
    *(v116 + 64) = v122;
    v129 = v122;
    sub_720C8((v116 + 32));
    sub_2BE838();
    v110 = v251;
    v130 = v232;
    v131 = v227;
    v232[3] = v251;
    v130[4] = v131;
    v114 = v224;
    v130[5] = v224;
    v132 = sub_720C8(v130);
    (v223)(v132, v250, v110);
    v128(v130, enum case for AppAnalyticsAction.Type.pushData(_:), v127);
    *(v116 + 96) = v123;
    *(v116 + 104) = v129;
    sub_720C8((v116 + 72));
    sub_2BE838();
    *(&v266 + 1) = v206;
    AssociatedConformanceWitness = &protocol witness table for CompoundAction;
    sub_720C8(&v265);
    v107 = v227;
    sub_2C4D18();
    sub_1B6158(&v265, 2);
    v112 = v253;
    v113 = v252;
    v111 = v237;
  }

  v133 = *(v255 + 16);
  v225 = v255 + 16;
  v224 = v133;
  v133(v248, v262, v254);
  v134 = *(v113 + 16);
  v232 = (v113 + 16);
  v227 = v134;
  v134(v243, v274, v112);
  sub_6620C(&qword_3BC1A0);
  v135 = swift_allocObject();
  v236 = xmmword_2E3F30;
  *(v135 + 16) = xmmword_2E3F30;
  v136 = v269;
  v137 = v270;
  sub_72084(&v268, v269);
  *(v135 + 56) = v110;
  *(v135 + 64) = v107;
  *(v135 + 72) = v114;
  v138 = sub_720C8((v135 + 32));
  sub_2B7838(v136, v137, v138);
  sub_6620C(&qword_3BC288);
  v139 = (*(v226 + 80) + 32) & ~*(v226 + 80);
  v140 = swift_allocObject();
  *(v140 + 16) = v236;
  v234 = v140;
  v141 = v140 + v139;
  v142 = v256;
  sub_91560(v256, v141);
  v143 = v142[1];
  v226 = *v142;
  *&v236 = v143;
  v144 = *(v111 + 16);
  v145 = v245;
  v146 = v257;
  v147 = v238;
  v144(v245, v257, v238);
  (*(v111 + 56))(v145, 0, 1, v147);
  v148 = v258;
  sub_6932C(v258, v244, &qword_3BEF80);
  v235 = v264;
  v149 = *(sub_6620C(&qword_3C1600) + 48);
  v150 = v233;
  v144(v233, v146, v147);
  sub_6932C(v148, v150 + v149, &qword_3BEF80);
  v151 = enum case for ToolbarPrincipalType.series(_:);
  v152 = sub_2C15F8();
  v153 = *(v152 - 8);
  (*(v153 + 104))(v150, v151, v152);
  (*(v153 + 56))(v150, 0, 1, v152);
  LOBYTE(v265) = 1;
  v154 = v269;
  v155 = v270;
  sub_72084(&v268, v269);

  v156 = v228;
  sub_2B7838(v154, v155, v228);
  v263 = v246;
  v157 = v247;
  v158 = sub_20CB14(&v268, &v265, v156, &v263, v261 + v208);
  v247 = v157;
  if (v157)
  {

    v159 = *(v249 + 8);
    v160 = v251;
    v159(v156, v251);
    sub_69198(v150, &qword_3C1598);
    sub_69198(v244, &qword_3BEF80);
    sub_69198(v245, &qword_3BEF80);
    v161 = *(v252 + 8);
    v162 = v253;
    v161(v243, v253);
    v163 = *(v255 + 8);
    v164 = v254;
    v163(v248, v254);
    v159(v250, v160);
    (*(v230 + 8))(v240, v242);
    (*(v229 + 8))(v239, v241);
    sub_69198(v258, &qword_3BEF80);
    (*(v237 + 8))(v257, v238);
    sub_1BFCD0(v256, type metadata accessor for Shelf);
    v161(v274, v162);
    v163(v262, v164);
    goto LABEL_23;
  }

  v223 = v158;
  v261 = v135;
  v166 = *(v249 + 8);
  v249 += 8;
  v246 = v166;
  (v166)(v156, v251);
  sub_72084(&v268, v269);
  v167 = swift_getAssociatedTypeWitness();
  v168 = sub_2C60B8();
  v169 = *(v168 - 8);
  __chkstk_darwin(v168);
  v171 = &v204 - v170;
  sub_2BF388();
  v172 = *(v167 - 8);
  LODWORD(v228) = (*(v172 + 48))(v171, 1, v167);
  if (v228 == 1)
  {
    (*(v169 + 8))(v171, v168);
    AssociatedConformanceWitness = 0;
    v265 = 0u;
    v266 = 0u;
  }

  else
  {
    *(&v266 + 1) = v167;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v173 = sub_720C8(&v265);
    (*(v172 + 32))(v173, v171, v167);
  }

  v174 = v253;
  v175 = v245;
  v176 = v244;
  v177 = v243;
  sub_69198(&v265, &qword_3BDAC8);
  (*(v220 + 104))(v231, enum case for NavigationBarTitleStyle.automatic(_:), v222);
  sub_2C1A58();
  v178 = v217;
  v179 = v215;
  v180 = &v215[*(v217 + 96)];
  *v180 = 0;
  *(v180 + 1) = 0;
  v181 = v179 + v178[25];
  *(v181 + 4) = 0;
  *v181 = 0u;
  *(v181 + 1) = 0u;
  *&v265 = sub_2BEF68();
  *(&v265 + 1) = v182;
  v275._countAndFlagsBits = 45;
  v275._object = 0xE100000000000000;
  sub_2C5978(v275);
  v183._countAndFlagsBits = sub_2BEF58();
  v184 = v254;
  if (v183._object)
  {
    object = v183._object;
  }

  else
  {
    v186 = v209;
    sub_2BE5B8();
    v187 = sub_2BE598();
    object = v188;
    v189 = v186;
    v184 = v254;
    (*(v210 + 8))(v189, v211);
    v183._countAndFlagsBits = v187;
  }

  LODWORD(v228) = v228 != 1;
  v183._object = object;
  sub_2C5978(v183);

  v190 = *(&v265 + 1);
  *v179 = v265;
  v179[1] = v190;
  (v224)(v179 + v178[17], v248, v184);
  *(v179 + v178[18]) = v261;
  *(v179 + v178[14]) = 1;
  *(v179 + v178[15]) = v234;
  (v227)(v179 + v178[19], v177, v174);
  v191 = (v179 + v178[16]);
  v192 = v236;
  *v191 = v226;
  v191[1] = v192;
  sub_6932C(v175, v179 + v178[5], &qword_3BEF80);
  sub_6932C(v176, v179 + v178[6], &qword_3BEF80);
  v193 = v220;
  v194 = v222;
  (*(v220 + 16))(v179 + v178[7], v231, v222);
  v195 = v213;
  v196 = v221;
  v197 = v214;
  (*(v213 + 16))(v179 + v178[8], v221, v214);
  *(v179 + v178[9]) = 0;
  *(v179 + v178[21]) = v235;
  v198 = v233;
  sub_6932C(v233, v179 + v178[10], &qword_3C1598);
  *(v179 + v178[11]) = _swiftEmptyArrayStorage;
  *(v179 + v178[12]) = v223;
  *(v179 + v178[13]) = 0;
  *(v179 + v178[22]) = v207;
  *(v179 + v178[23]) = 0;
  *(v179 + v178[20]) = v228;
  sub_17E898();

  (*(v195 + 8))(v196, v197);
  (*(v193 + 8))(v231, v194);
  sub_69198(v198, &qword_3C1598);
  sub_69198(v244, &qword_3BEF80);
  sub_69198(v245, &qword_3BEF80);
  v199 = *(v252 + 8);
  v200 = v253;
  v199(v243, v253);
  v201 = *(v255 + 8);
  v202 = v254;
  v201(v248, v254);
  (v246)(v250, v251);
  (*(v230 + 8))(v240, v242);
  (*(v229 + 8))(v239, v241);
  sub_69198(v258, &qword_3BEF80);
  (*(v237 + 8))(v257, v238);
  sub_1BFCD0(v256, type metadata accessor for Shelf);
  v199(v274, v200);
  v201(v262, v202);
  v203 = v218;
  sub_BF578(v179, v218);
  sub_68CD0(&v271);
  (*(v216 + 56))(v203, 0, 1, v178);
  return sub_68CD0(&v268);
}

uint64_t sub_1B8FE0()
{
  sub_68CD0(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t SeriesSeeAllPageIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[76] = a3;
  v3[75] = a2;
  v3[74] = a1;
  v4 = sub_2BE5C8();
  v3[77] = v4;
  v3[78] = *(v4 - 8);
  v3[79] = swift_task_alloc();
  v5 = type metadata accessor for Page();
  v3[80] = v5;
  v3[81] = *(v5 - 8);
  v3[82] = swift_task_alloc();
  v6 = sub_2C1A68();
  v3[83] = v6;
  v3[84] = *(v6 - 8);
  v3[85] = swift_task_alloc();
  v7 = sub_2C1A28();
  v3[86] = v7;
  v3[87] = *(v7 - 8);
  v3[88] = swift_task_alloc();
  sub_6620C(&qword_3C1598);
  v3[89] = swift_task_alloc();
  v8 = sub_2BE828();
  v3[90] = v8;
  v3[91] = *(v8 - 8);
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  sub_2C4BF8();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v9 = sub_2BE8F8();
  v3[96] = v9;
  v3[97] = *(v9 - 8);
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v10 = sub_6620C(&qword_3C1590);
  v3[100] = v10;
  v3[101] = *(v10 - 8);
  v3[102] = swift_task_alloc();
  v11 = sub_6620C(&qword_3C15A0);
  v3[103] = v11;
  v3[104] = *(v11 - 8);
  v3[105] = swift_task_alloc();
  v12 = sub_6620C(&qword_3C15A8);
  v3[106] = v12;
  v3[107] = *(v12 - 8);
  v3[108] = swift_task_alloc();
  sub_6620C(&qword_3BEF80);
  v3[109] = swift_task_alloc();
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v13 = sub_2BFDD8();
  v3[112] = v13;
  v3[113] = *(v13 - 8);
  v3[114] = swift_task_alloc();
  sub_6620C(&qword_3C15B8);
  v3[115] = swift_task_alloc();
  v3[116] = *(type metadata accessor for Shelf() - 8);
  v3[117] = swift_task_alloc();
  v14 = sub_2C4BB8();
  v3[118] = v14;
  v3[119] = *(v14 - 8);
  v3[120] = swift_task_alloc();
  v3[121] = swift_task_alloc();
  v15 = sub_2BEF78();
  v3[122] = v15;
  v3[123] = *(v15 - 8);
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();
  v3[126] = type metadata accessor for SeriesPageStoreResourceIntent();
  v3[127] = swift_task_alloc();
  sub_6620C(&qword_3BFEC0);
  v3[128] = swift_task_alloc();
  v3[129] = swift_task_alloc();
  v16 = sub_2C4C48();
  v3[130] = v16;
  v3[131] = *(v16 - 8);
  v3[132] = swift_task_alloc();
  v17 = sub_6620C(&qword_3C13C0);
  v3[133] = v17;
  v3[134] = *(v17 - 8);
  v3[135] = swift_task_alloc();
  v18 = sub_2C4E88();
  v3[136] = v18;
  v3[137] = *(v18 - 8);
  v3[138] = swift_task_alloc();
  v3[139] = swift_task_alloc();
  sub_6620C(&qword_3C13C8);
  v3[140] = swift_task_alloc();
  v3[141] = swift_task_alloc();
  v3[142] = swift_task_alloc();
  sub_6620C(&qword_3C13D0);
  v3[143] = swift_task_alloc();
  v19 = sub_2C54A8();
  v3[144] = v19;
  v3[145] = *(v19 - 8);
  v3[146] = swift_task_alloc();
  v3[147] = swift_task_alloc();
  v20 = sub_2C1498();
  v21 = swift_task_alloc();
  v3[148] = v21;
  *v21 = v3;
  v21[1] = sub_1B997C;

  return BaseObjectGraph.inject<A>(_:)(v3 + 70, v20, v20);
}

uint64_t sub_1B997C()
{
  *(*v1 + 1192) = v0;

  if (v0)
  {
    v2 = sub_1BEBD8;
  }

  else
  {
    v2 = sub_1B9A90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1B9A90()
{
  v1 = *(v0 + 560);
  *(v0 + 1200) = v1;
  if ((sub_2C1468() & 1) == 0)
  {
    sub_10AFE0();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_691F8(*(v0 + 600), v0 + 16);
  if ([objc_opt_self() isOffline])
  {
    sub_72084((v0 + 16), *(v0 + 40));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v3 = sub_2C60B8();
    v4 = *(v3 - 8);
    v5 = swift_task_alloc();
    sub_2BF388();
    v6 = *(AssociatedTypeWitness - 8);
    if ((*(v6 + 48))(v5, 1, AssociatedTypeWitness) == 1)
    {
      (*(v4 + 8))(v5, v3);

      *(v0 + 528) = 0;
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;
      sub_69198(v0 + 496, &qword_3BDAC8);
      sub_10AFE0();
      swift_allocError();
      *v7 = 3;
      swift_willThrow();

      sub_68CD0(v0 + 16);
LABEL_6:

      v9 = *(v0 + 8);

      return v9();
    }

    *(v0 + 520) = AssociatedTypeWitness;
    *(v0 + 528) = swift_getAssociatedConformanceWitness();
    v11 = sub_720C8((v0 + 496));
    (*(v6 + 32))(v11, v5, AssociatedTypeWitness);

    sub_69198(v0 + 496, &qword_3BDAC8);
  }

  v12 = sub_6620C(&qword_3BD1F0);
  v13 = swift_task_alloc();
  *(v0 + 1208) = v13;
  *v13 = v0;
  v13[1] = sub_1BA004;

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v12, v12);
}

uint64_t sub_1BA004()
{
  v2 = *v1;
  *(v2 + 1216) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1BEE4C, 0, 0);
  }

  else
  {
    v3 = sub_6620C(&qword_3BE240);
    v4 = swift_task_alloc();
    *(v2 + 1224) = v4;
    *v4 = v2;
    v4[1] = sub_1BA1A8;

    return BaseObjectGraph.inject<A>(_:)(v2 + 96, v3, v3);
  }
}

uint64_t sub_1BA1A8()
{
  v2 = *v1;
  *(v2 + 1232) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1BF0D0, 0, 0);
  }

  else
  {
    v3 = type metadata accessor for HostProxy(0);
    v4 = swift_task_alloc();
    *(v2 + 1240) = v4;
    *v4 = v2;
    v4[1] = sub_1BA340;

    return BaseObjectGraph.inject<A>(_:)(v2 + 568, v3, v3);
  }
}

uint64_t sub_1BA340()
{
  *(*v1 + 1248) = v0;

  if (v0)
  {
    v2 = sub_1BF35C;
  }

  else
  {
    v2 = sub_1BA454;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1BA454()
{
  v268 = v0;
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1144);
  *(v0 + 1256) = *(v0 + 568);
  sub_2C4E18();
  v4 = *(v1 + 48);
  v5 = v4(v3, 1, v2);
  v6 = *(v0 + 1176);
  v7 = *(v0 + 1160);
  v8 = *(v0 + 1152);
  v9 = *(v0 + 1144);
  if (v5 == 1)
  {
    (*(v7 + 104))(v6, enum case for PageIntentInstrumentation.notInstrumented(_:), *(v0 + 1152));
    if (v4(v9, 1, v8) != 1)
    {
      sub_69198(*(v0 + 1144), &qword_3C13D0);
    }
  }

  else
  {
    (*(v7 + 32))(v6, *(v0 + 1144), *(v0 + 1152));
  }

  v10 = *(v0 + 1168);
  v11 = *(v0 + 1160);
  v12 = *(v0 + 1152);
  (*(v11 + 16))(v10, *(v0 + 1176), v12);
  v13 = (*(v11 + 88))(v10, v12);
  if (v13 == enum case for PageIntentInstrumentation.primaryData(_:))
  {
    v14 = *(v0 + 1168);
    v15 = *(v0 + 1136);
    v16 = *(v0 + 1096);
    v17 = *(v0 + 1088);
    (*(*(v0 + 1160) + 96))(v14, *(v0 + 1152));
    (*(v16 + 32))(v15, v14, v17);
    (*(v16 + 56))(v15, 0, 1, v17);
  }

  else if (v13 == enum case for PageIntentInstrumentation.secondaryData(_:))
  {
    v18 = *(v0 + 1168);
    v19 = *(v0 + 1160);
    v20 = *(v0 + 1152);
    (*(*(v0 + 1096) + 56))(*(v0 + 1136), 1, 1, *(v0 + 1088));
    (*(v19 + 8))(v18, v20);
  }

  else
  {
    v21 = enum case for PageIntentInstrumentation.notInstrumented(_:);
    v22 = v13;
    (*(*(v0 + 1096) + 56))(*(v0 + 1136), 1, 1, *(v0 + 1088));
    if (v22 != v21)
    {
      (*(*(v0 + 1160) + 8))(*(v0 + 1168), *(v0 + 1152));
    }
  }

  v23 = *(v0 + 1128);
  v24 = *(v0 + 1096);
  v25 = *(v0 + 1088);
  sub_6932C(*(v0 + 1136), v23, &qword_3C13C8);
  v26 = *(v24 + 48);
  *(v0 + 1264) = v26;
  *(v0 + 1272) = (v24 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v26(v23, 1, v25) == 1)
  {
    sub_69198(*(v0 + 1128), &qword_3C13C8);
  }

  else
  {
    (*(*(v0 + 1096) + 32))(*(v0 + 1112), *(v0 + 1128), *(v0 + 1088));
    if (qword_3BB948 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 1080);
    v28 = *(v0 + 1072);
    v29 = *(v0 + 1064);
    v30 = sub_57AD8(v29, qword_3E8978);
    (*(v28 + 16))(v27, v30, v29);
    sub_72084((v0 + 16), *(v0 + 40));
    v31 = sub_2BF3E8();
    if (v31)
    {

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v33 = *(v0 + 1112);
    v34 = *(v0 + 1096);
    v35 = *(v0 + 1080);
    v36 = *(v0 + 1072);
    v37 = *(v0 + 1064);
    v38 = *(v0 + 1056);
    v39 = *(v0 + 1048);
    v256 = *(v0 + 1040);
    v259 = *(v0 + 1088);
    *(v0 + 1328) = v32;
    sub_2C4E78();
    sub_2C4C38();
    sub_111B90();
    sub_2C4EC8();

    (*(v39 + 8))(v38, v256);
    (*(v36 + 8))(v35, v37);
    (*(v34 + 8))(v33, v259);
  }

  v40 = *(v0 + 1032);
  v41 = sub_2C54D8();
  *(v0 + 1280) = v41;
  v42 = *(v41 - 8);
  *(v0 + 1288) = v42;
  v44 = v42 + 56;
  v43 = *(v42 + 56);
  *(v0 + 1296) = v43;
  *(v0 + 1304) = v44 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v43(v40, 1, 1, v41);
  sub_72084((v0 + 16), *(v0 + 40));
  v45 = sub_2BF3E8();
  if (v45)
  {

    v260 = *(v0 + 1248);
    v46 = *(v0 + 1264);
    v47 = *(v0 + 1120);
    v48 = *(v0 + 1088);
    sub_6932C(*(v0 + 1136), v47, &qword_3C13C8);
    if (v46(v47, 1, v48) == 1)
    {
      sub_69198(*(v0 + 1120), &qword_3C13C8);
    }

    else
    {
      (*(*(v0 + 1096) + 32))(*(v0 + 1104), *(v0 + 1120), *(v0 + 1088));
      sub_2C4C38();
      if (qword_3BB938 != -1)
      {
        swift_once();
      }

      v66 = sub_6620C(&qword_3C13E8);
      sub_57AD8(v66, qword_3E8948);
      sub_2C4E78();
      sub_2C4EA8();

      if (qword_3BB940 != -1)
      {
        swift_once();
      }

      v67 = *(v0 + 1104);
      v68 = *(v0 + 1096);
      v69 = *(v0 + 1088);
      v70 = *(v0 + 1056);
      v71 = *(v0 + 1048);
      v72 = *(v0 + 1040);
      sub_57AD8(v66, qword_3E8960);
      sub_2C4E78();
      sub_2C4EA8();

      (*(v71 + 8))(v70, v72);
      (*(v68 + 8))(v67, v69);
    }

    v73 = *(v0 + 936);
    v74 = *(v0 + 920);
    v75 = *(v0 + 600);
    sub_72084((v0 + 16), *(v0 + 40));
    sub_2BF3B8();
    sub_2BEF48();
    sub_72084((v0 + 16), *(v0 + 40));
    sub_2BF3B8();
    v76 = type metadata accessor for SeriesSeeAllPageIntent();
    sub_2C2108();

    v77 = *(v75 + 40);
    v78 = *(v76 + 24);
    LOBYTE(v264) = *(v75 + 40);
    LOBYTE(v266) = 1;
    v79 = type metadata accessor for SeriesRoomListHeaderComponentModel();
    (*(*(v79 - 8) + 56))(v74, 1, 1, v79);
    sub_1514BC((v0 + 16), &v264, (v75 + v78), &v266, v74, 1, v73);
    if (v260)
    {
      v80 = *(v0 + 1000);
      v81 = *(v0 + 984);
      v82 = *(v0 + 976);
      v83 = *(v0 + 968);
      v84 = *(v0 + 952);
      v85 = *(v0 + 944);
      sub_69198(*(v0 + 920), &qword_3C15B8);
      (*(v84 + 8))(v83, v85);
      (*(v81 + 8))(v80, v82);
      v148 = *(v0 + 1200);
      v149 = *(v0 + 1176);
      v150 = *(v0 + 1160);
      v151 = *(v0 + 1152);
      v152 = *(v0 + 1136);
      v153 = *(v0 + 1032);
      sub_1BF90C(v152);

      sub_69198(v153, &qword_3BFEC0);
      sub_69198(v152, &qword_3C13C8);
      (*(v150 + 8))(v149, v151);
      sub_68CD0(v0 + 96);
      sub_68CD0(v0 + 56);
      sub_68CD0(v0 + 16);

      v154 = *(v0 + 8);
    }

    else
    {
      v234 = v78;
      v237 = v75;
      v257 = v77;
      v86 = *(v0 + 888);
      v227 = *(v0 + 816);
      v242 = *(v0 + 800);
      v245 = *(v0 + 808);
      v239 = *(v0 + 776);
      v232 = *(v0 + 768);
      v248 = *(v0 + 792);
      v87 = *(v0 + 744);
      v261 = *(v0 + 728);
      v253 = *(v0 + 720);
      sub_69198(*(v0 + 920), &qword_3C15B8);
      sub_72084((v0 + 16), *(v0 + 40));
      sub_2BF3C8();
      sub_2BFDC8();

      sub_1969C0((v0 + 16), v86);
      v88 = *(v0 + 128);
      sub_72084((v0 + 96), *(v0 + 120));
      sub_72084((v0 + 16), *(v0 + 40));
      v89 = sub_2BF3B8();
      v90 = (*(v88 + 40))(v89);

      *(v0 + 576) = v90;
      sub_691F8(v0 + 16, v0 + 256);
      v91 = swift_allocObject();
      sub_68D1C((v0 + 256), v91 + 16);
      sub_6620C(&qword_3C15E0);
      sub_6620C(&qword_3BD478);
      sub_72B74(&qword_3C15E8, &qword_3C15E0);
      sub_2C2418();

      v92 = *(v0 + 128);
      sub_72084((v0 + 96), *(v0 + 120));
      sub_72084((v0 + 16), *(v0 + 40));
      v93 = sub_2BF3B8();
      v94 = (*(v92 + 48))(v93);

      *(v0 + 584) = v94;
      sub_691F8(v0 + 16, v0 + 296);
      v95 = swift_allocObject();
      sub_68D1C((v0 + 296), v95 + 16);
      sub_6620C(&qword_3C15F0);
      sub_72B74(&qword_3C15F8, &qword_3C15F0);
      sub_2C2418();

      sub_72B74(&qword_3C1608, &qword_3C15A8);
      sub_72B74(&qword_3C1610, &qword_3C15A0);
      sub_2C2428();
      sub_72B74(&qword_3C1618, &qword_3C1590);
      v236 = sub_2C2408();
      (*(v245 + 8))(v227, v242);
      v264 = &_swiftEmptyDictionarySingleton;
      v97 = *(v0 + 40);
      v96 = *(v0 + 48);
      sub_72084((v0 + 16), v97);
      sub_2B7838(v97, v96, v248);
      sub_2C4BE8();
      sub_6620C(&qword_3BC240);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_2E15C0;
      v100 = *(v0 + 40);
      v99 = *(v0 + 48);
      sub_72084((v0 + 16), v100);
      sub_2B7838(v100, v99, v87);
      v101 = *(v261 + 104);
      v101(v87, enum case for AppAnalyticsAction.Type.reportSeriesDetailsView(_:), v253);
      v102 = sub_2BE858();
      *(v98 + 56) = v102;
      v103 = sub_1BFE88(&qword_3CA250, &type metadata accessor for AppAnalyticsAction);
      *(v98 + 64) = v103;
      sub_720C8((v98 + 32));
      sub_2BE838();
      v104 = *(sub_6620C(&qword_3C15C8) + 48);
      v87[3] = v232;
      v246 = sub_1BFE88(&qword_3C15D0, &type metadata accessor for SeriesData);
      v87[4] = v246;
      v243 = sub_1BFE88(&qword_3C15D8, &type metadata accessor for SeriesData);
      v87[5] = v243;
      v105 = sub_720C8(v87);
      v106 = v248;
      v249 = *(v239 + 16);
      v249(v105, v106, v232);
      v107 = enum case for ScenePhase.active(_:);
      v108 = sub_2C2508();
      (*(*(v108 - 8) + 104))(v87 + v104, v107, v108);
      v101(v87, enum case for AppAnalyticsAction.Type.popData(_:), v253);
      *(v98 + 96) = v102;
      *(v98 + 104) = v103;
      v254 = v103;
      sub_720C8((v98 + 72));
      sub_2BE838();
      v109 = sub_2C4D28();
      *(v0 + 360) = v109;
      *(v0 + 368) = &protocol witness table for CompoundAction;
      sub_720C8((v0 + 336));
      sub_2C4D18();
      sub_1B6158(v0 + 336, 3);
      if (v257)
      {
        v110 = v87;
        v111 = v0 + 376;
        v112 = *(v0 + 792);
        v113 = *(v0 + 768);
        v114 = *(v0 + 744);
        v115 = *(v0 + 720);
        v110[3] = v113;
        v110[4] = v246;
        v110[5] = v243;
        v116 = sub_720C8(v114);
        v249(v116, v112, v113);
        v101(v114, enum case for AppAnalyticsAction.Type.pushData(_:), v115);
        *(v0 + 400) = v102;
        *(v0 + 408) = v254;
        sub_720C8((v0 + 376));
        sub_2BE838();
      }

      else
      {
        sub_2C4BE8();
        v117 = swift_allocObject();
        *(v117 + 16) = xmmword_2E15C0;
        sub_72084((v0 + 16), *(v0 + 40));
        v228 = sub_2BF3B8();
        v223 = v118;
        sub_72084((v0 + 16), *(v0 + 40));
        sub_2BF2C8();
        v120 = v119;
        sub_72084((v0 + 16), *(v0 + 40));
        if (v120)
        {
          v121 = sub_2BF2F8();
        }

        else
        {
          v121 = sub_2BF2C8();
        }

        v221 = *(v0 + 792);
        v217 = *(v0 + 768);
        v123 = *(v0 + 744);
        v124 = *(v0 + 736);
        v219 = *(v0 + 720);
        *v124 = v228;
        *(v124 + 8) = v223;
        *(v124 + 16) = v121;
        *(v124 + 24) = v122 & 1;
        (v101)(v124, enum case for AppAnalyticsAction.Type.reportAllInSeriesView(_:));
        *(v117 + 56) = v102;
        *(v117 + 64) = v254;
        sub_720C8((v117 + 32));
        sub_2BE838();
        v87[3] = v217;
        v87[4] = v246;
        v87[5] = v243;
        v125 = sub_720C8(v123);
        v249(v125, v221, v217);
        v101(v123, enum case for AppAnalyticsAction.Type.pushData(_:), v219);
        *(v117 + 96) = v102;
        *(v117 + 104) = v254;
        sub_720C8((v117 + 72));
        sub_2BE838();
        v111 = v0 + 456;
        *(v0 + 480) = v109;
        *(v0 + 488) = &protocol witness table for CompoundAction;
        sub_720C8((v0 + 456));
        sub_2C4D18();
      }

      sub_1B6158(v111, 2);
      v126 = *(v0 + 968);
      v127 = *(v0 + 960);
      v128 = *(v0 + 952);
      v129 = *(v0 + 944);
      v130 = *(v0 + 936);
      v131 = *(v0 + 928);
      v132 = *(v0 + 904);
      v229 = *(v0 + 896);
      v231 = *(v0 + 912);
      v233 = *(v0 + 888);
      v133 = *(v0 + 880);
      v250 = *(v0 + 872);
      v262 = *(v0 + 784);
      v134 = *(v0 + 768);
      v240 = *(v0 + 712);
      v226 = (*(v0 + 984) + 16);
      v224 = *v226;
      (*v226)(*(v0 + 992), *(v0 + 1000), *(v0 + 976));
      v225 = *(v128 + 16);
      v225(v127, v126, v129);
      sub_6620C(&qword_3BC1A0);
      v135 = swift_allocObject();
      *(v135 + 16) = xmmword_2E3F30;
      v137 = *(v0 + 40);
      v136 = *(v0 + 48);
      sub_72084((v0 + 16), v137);
      *(v135 + 56) = v134;
      *(v135 + 64) = v246;
      *(v135 + 72) = v243;
      v252 = v135;
      v138 = sub_720C8((v135 + 32));
      sub_2B7838(v137, v136, v138);
      sub_6620C(&qword_3BC288);
      v139 = (*(v131 + 80) + 32) & ~*(v131 + 80);
      v140 = swift_allocObject();
      *(v140 + 16) = xmmword_2E3F30;
      v247 = v140;
      sub_91560(v130, v140 + v139);
      v244 = *v130;
      v255 = v130[1];
      v141 = *(v132 + 16);
      v141(v133, v231, v229);
      (*(v132 + 56))(v133, 0, 1, v229);
      sub_6932C(v233, v250, &qword_3BEF80);
      v251 = v264;
      v142 = *(sub_6620C(&qword_3C1600) + 48);
      v141(v240, v231, v229);
      sub_6932C(v233, v240 + v142, &qword_3BEF80);
      v143 = enum case for ToolbarPrincipalType.series(_:);
      v144 = sub_2C15F8();
      v145 = *(v144 - 8);
      (*(v145 + 104))(v240, v143, v144);
      (*(v145 + 56))(v240, 0, 1, v144);
      v265 = 1;
      v147 = *(v0 + 40);
      v146 = *(v0 + 48);
      sub_72084((v0 + 16), v147);

      sub_2B7838(v147, v146, v262);
      LOBYTE(v266) = v257;
      v212 = sub_20CB14((v0 + 16), &v265, v262, &v266, v237 + v234);
      v213 = *(*(v0 + 776) + 8);
      v213(*(v0 + 784), *(v0 + 768));
      sub_72084((v0 + 16), *(v0 + 40));
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v156 = sub_2C60B8();
      v157 = *(v156 - 8);
      v158 = swift_task_alloc();
      sub_2BF388();
      v159 = *(AssociatedTypeWitness - 8);
      v160 = (*(v159 + 48))(v158, 1, AssociatedTypeWitness);
      v161 = v160;
      if (v160 == 1)
      {
        (*(v157 + 8))(v158, v156);

        *(v0 + 448) = 0;
        *(v0 + 416) = 0u;
        *(v0 + 432) = 0u;
      }

      else
      {
        *(v0 + 440) = AssociatedTypeWitness;
        *(v0 + 448) = swift_getAssociatedConformanceWitness();
        v162 = sub_720C8((v0 + 416));
        (*(v159 + 32))(v162, v158, AssociatedTypeWitness);
      }

      v163 = *(v0 + 704);
      v164 = *(v0 + 696);
      v165 = *(v0 + 688);
      v166 = *(v0 + 656);
      v167 = *(v0 + 640);
      sub_69198(v0 + 416, &qword_3BDAC8);
      (*(v164 + 104))(v163, enum case for NavigationBarTitleStyle.automatic(_:), v165);
      sub_2C1A58();
      v168 = (v166 + *(v167 + 96));
      *v168 = 0;
      v168[1] = 0;
      v169 = v166 + *(v167 + 100);
      *(v169 + 32) = 0;
      *v169 = 0u;
      *(v169 + 16) = 0u;
      v266 = sub_2BEF68();
      v267 = v170;
      v270._countAndFlagsBits = 45;
      v270._object = 0xE100000000000000;
      sub_2C5978(v270);
      v171._countAndFlagsBits = sub_2BEF58();
      if (v171._object)
      {
        object = v171._object;
      }

      else
      {
        v173 = *(v0 + 632);
        v174 = *(v0 + 624);
        v175 = *(v0 + 616);
        sub_2BE5B8();
        v176 = sub_2BE598();
        object = v177;
        (*(v174 + 8))(v173, v175);
        v171._countAndFlagsBits = v176;
      }

      v192 = v161 != 1;
      v208 = *(v0 + 1200);
      v211 = *(v0 + 1176);
      v209 = *(v0 + 1160);
      v210 = *(v0 + 1152);
      v206 = *(v0 + 1136);
      v207 = *(v0 + 1032);
      v205 = *(v0 + 1000);
      v178 = *(v0 + 992);
      v197 = *(v0 + 984);
      v179 = *(v0 + 976);
      v204 = *(v0 + 968);
      v180 = *(v0 + 960);
      v194 = *(v0 + 952);
      v214 = *(v0 + 944);
      v215 = *(v0 + 936);
      v201 = *(v0 + 904);
      v202 = *(v0 + 896);
      v216 = *(v0 + 912);
      v218 = *(v0 + 888);
      v258 = *(v0 + 880);
      v263 = *(v0 + 872);
      v235 = *(v0 + 864);
      v198 = *(v0 + 856);
      v199 = *(v0 + 848);
      v238 = *(v0 + 840);
      v195 = *(v0 + 832);
      v196 = *(v0 + 824);
      v241 = *(v0 + 792);
      v193 = *(v0 + 768);
      v220 = *(v0 + 712);
      v222 = *(v0 + 704);
      v181 = *(v0 + 696);
      v190 = *(v0 + 688);
      v230 = *(v0 + 680);
      v182 = *(v0 + 672);
      v191 = *(v0 + 664);
      v183 = *(v0 + 656);
      v203 = *(v0 + 648);
      v184 = *(v0 + 640);
      v200 = *(v0 + 592);
      v171._object = object;
      sub_2C5978(v171);

      v185 = v267;
      *v183 = v266;
      v183[1] = v185;
      v224(v183 + v184[17], v178, v179);
      *(v183 + v184[18]) = v252;
      *(v183 + v184[14]) = 1;
      *(v183 + v184[15]) = v247;
      v225(v183 + v184[19], v180, v214);
      v186 = (v183 + v184[16]);
      *v186 = v244;
      v186[1] = v255;
      sub_6932C(v258, v183 + v184[5], &qword_3BEF80);
      sub_6932C(v263, v183 + v184[6], &qword_3BEF80);
      (*(v181 + 16))(v183 + v184[7], v222, v190);
      (*(v182 + 16))(v183 + v184[8], v230, v191);
      *(v183 + v184[9]) = 0;
      *(v183 + v184[21]) = v251;
      sub_6932C(v220, v183 + v184[10], &qword_3C1598);
      *(v183 + v184[11]) = _swiftEmptyArrayStorage;
      *(v183 + v184[12]) = v212;
      *(v183 + v184[13]) = 0;
      *(v183 + v184[22]) = v236;
      *(v183 + v184[23]) = 0;
      *(v183 + v184[20]) = v192;
      sub_17E898();
      (*(v182 + 8))(v230, v191);
      (*(v181 + 8))(v222, v190);
      sub_69198(v220, &qword_3C1598);
      sub_69198(v263, &qword_3BEF80);
      sub_69198(v258, &qword_3BEF80);
      v187 = *(v194 + 8);
      v187(v180, v214);
      v188 = *(v197 + 8);
      v188(v178, v179);
      v213(v241, v193);
      (*(v195 + 8))(v238, v196);
      (*(v198 + 8))(v235, v199);
      sub_69198(v218, &qword_3BEF80);
      (*(v201 + 8))(v216, v202);
      sub_1BFCD0(v215, type metadata accessor for Shelf);
      v187(v204, v214);
      v188(v205, v179);
      sub_BF578(v183, v200);
      (*(v203 + 56))(v200, 0, 1, v184);
      sub_1BF90C(v206);

      sub_69198(v207, &qword_3BFEC0);
      sub_69198(v206, &qword_3C13C8);
      (*(v209 + 8))(v211, v210);
      sub_68CD0(v0 + 96);
      sub_68CD0(v0 + 56);
      sub_68CD0(v0 + 16);

      v154 = *(v0 + 8);
    }

    return v154();
  }

  else
  {
    v49 = *(v0 + 1016);
    v50 = *(v0 + 1008);
    v51 = *(v0 + 600);
    sub_72084((v0 + 16), *(v0 + 40));
    v52 = sub_2BF3B8();
    v54 = v53;
    sub_72084((v0 + 16), *(v0 + 40));
    sub_2BF278();
    v55 = *(v50 + 28);
    v56 = *(type metadata accessor for SeriesSeeAllPageIntent() + 24);
    v57 = sub_2BF738();
    v58 = *(v57 - 8);
    (*(v58 + 16))(v49 + v55, v51 + v56, v57);
    (*(v58 + 56))(v49 + v55, 0, 1, v57);
    *v49 = v52;
    v49[1] = v54;
    *(v49 + *(v50 + 24)) = 0;
    v59 = *(v0 + 80);
    v60 = *(v0 + 88);
    sub_72084((v0 + 56), v59);
    v61 = swift_task_alloc();
    *(v0 + 1312) = v61;
    v62 = sub_1BFE88(&qword_3C3328, type metadata accessor for SeriesPageStoreResourceIntent);
    *v61 = v0;
    v61[1] = sub_1BC974;
    v63 = *(v0 + 1016);
    v64 = *(v0 + 1008);
    v65 = *(v0 + 608);

    return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 536, v63, v65, v64, v62, v59, v60);
  }
}

uint64_t sub_1BC974()
{
  *(*v1 + 1320) = v0;

  if (v0)
  {
    v2 = sub_1BF5F0;
  }

  else
  {
    v2 = sub_1BCA88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1BCA88()
{
  v219 = v0;
  v1 = *(v0 + 536);
  v210 = *(v0 + 552);
  sub_72084((v0 + 16), *(v0 + 40));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_2C60B8();
  v4 = *(v3 - 8);
  v5 = swift_task_alloc();
  sub_2BF388();
  v6 = *(AssociatedTypeWitness - 8);
  if ((*(v6 + 48))(v5, 1, AssociatedTypeWitness) == 1)
  {
    (*(v4 + 8))(v5, v3);

    *(v0 + 248) = 0;
    *(v0 + 232) = 0u;
    *(v0 + 216) = 0u;
  }

  else
  {
    *(v0 + 240) = AssociatedTypeWitness;
    *(v0 + 248) = swift_getAssociatedConformanceWitness();
    v7 = sub_720C8((v0 + 216));
    (*(v6 + 32))(v7, v5, AssociatedTypeWitness);
  }

  v8 = v1;
  sub_2BF798();

  sub_69198(v0 + 216, &qword_3BDAC8);
  if (*(v0 + 200))
  {
    sub_68D1C((v0 + 176), v0 + 136);
    sub_182144((v0 + 16), (v0 + 136));
    if (*(v210 + 16))
    {
      (*(*(v0 + 1288) + 16))(*(v0 + 1024), v210 + ((*(*(v0 + 1288) + 80) + 32) & ~*(*(v0 + 1288) + 80)), *(v0 + 1280));
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(v0 + 1296);
    v11 = *(v0 + 1280);
    v12 = *(v0 + 1032);
    v13 = *(v0 + 1024);
    v14 = *(v0 + 1016);

    sub_68CD0(v0 + 136);
    sub_1BFCD0(v14, type metadata accessor for SeriesPageStoreResourceIntent);
    sub_69198(v12, &qword_3BFEC0);
    v10(v13, v9, 1, v11);
    sub_1BFD30(v13, v12);
  }

  else
  {
    sub_1BFCD0(*(v0 + 1016), type metadata accessor for SeriesPageStoreResourceIntent);

    sub_69198(v0 + 176, &qword_3BDAD0);
  }

  v211 = *(v0 + 1320);
  v15 = *(v0 + 1264);
  v16 = *(v0 + 1120);
  v17 = *(v0 + 1088);
  sub_6932C(*(v0 + 1136), v16, &qword_3C13C8);
  if (v15(v16, 1, v17) == 1)
  {
    sub_69198(*(v0 + 1120), &qword_3C13C8);
  }

  else
  {
    (*(*(v0 + 1096) + 32))(*(v0 + 1104), *(v0 + 1120), *(v0 + 1088));
    sub_2C4C38();
    if (qword_3BB938 != -1)
    {
      swift_once();
    }

    v18 = sub_6620C(&qword_3C13E8);
    sub_57AD8(v18, qword_3E8948);
    sub_2C4E78();
    sub_2C4EA8();

    if (qword_3BB940 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 1104);
    v20 = *(v0 + 1096);
    v21 = *(v0 + 1088);
    v22 = *(v0 + 1056);
    v23 = *(v0 + 1048);
    v24 = *(v0 + 1040);
    sub_57AD8(v18, qword_3E8960);
    sub_2C4E78();
    sub_2C4EA8();

    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
  }

  v25 = *(v0 + 936);
  v26 = *(v0 + 920);
  v27 = *(v0 + 600);
  sub_72084((v0 + 16), *(v0 + 40));
  sub_2BF3B8();
  sub_2BEF48();
  sub_72084((v0 + 16), *(v0 + 40));
  sub_2BF3B8();
  v28 = type metadata accessor for SeriesSeeAllPageIntent();
  sub_2C2108();

  v29 = *(v27 + 40);
  v30 = *(v28 + 24);
  LOBYTE(v215) = *(v27 + 40);
  LOBYTE(v217) = 1;
  v31 = type metadata accessor for SeriesRoomListHeaderComponentModel();
  (*(*(v31 - 8) + 56))(v26, 1, 1, v31);
  sub_1514BC((v0 + 16), &v215, (v27 + v30), &v217, v26, 1, v25);
  if (v211)
  {
    v32 = *(v0 + 1000);
    v33 = *(v0 + 984);
    v34 = *(v0 + 976);
    v35 = *(v0 + 968);
    v36 = *(v0 + 952);
    v37 = *(v0 + 944);
    sub_69198(*(v0 + 920), &qword_3C15B8);
    (*(v36 + 8))(v35, v37);
    (*(v33 + 8))(v32, v34);
    v100 = *(v0 + 1200);
    v101 = *(v0 + 1176);
    v102 = *(v0 + 1160);
    v103 = *(v0 + 1152);
    v104 = *(v0 + 1136);
    v105 = *(v0 + 1032);
    sub_1BF90C(v104);

    sub_69198(v105, &qword_3BFEC0);
    sub_69198(v104, &qword_3C13C8);
    (*(v102 + 8))(v101, v103);
    sub_68CD0(v0 + 96);
    sub_68CD0(v0 + 56);
    sub_68CD0(v0 + 16);

    v106 = *(v0 + 8);
  }

  else
  {
    v186 = v30;
    v189 = v27;
    v208 = v29;
    v38 = *(v0 + 888);
    v179 = *(v0 + 816);
    v194 = *(v0 + 800);
    v197 = *(v0 + 808);
    v191 = *(v0 + 776);
    v184 = *(v0 + 768);
    v200 = *(v0 + 792);
    v39 = *(v0 + 744);
    v212 = *(v0 + 728);
    v205 = *(v0 + 720);
    sub_69198(*(v0 + 920), &qword_3C15B8);
    sub_72084((v0 + 16), *(v0 + 40));
    sub_2BF3C8();
    sub_2BFDC8();

    sub_1969C0((v0 + 16), v38);
    v40 = *(v0 + 128);
    sub_72084((v0 + 96), *(v0 + 120));
    sub_72084((v0 + 16), *(v0 + 40));
    v41 = sub_2BF3B8();
    v42 = (*(v40 + 40))(v41);

    *(v0 + 576) = v42;
    sub_691F8(v0 + 16, v0 + 256);
    v43 = swift_allocObject();
    sub_68D1C((v0 + 256), v43 + 16);
    sub_6620C(&qword_3C15E0);
    sub_6620C(&qword_3BD478);
    sub_72B74(&qword_3C15E8, &qword_3C15E0);
    sub_2C2418();

    v44 = *(v0 + 128);
    sub_72084((v0 + 96), *(v0 + 120));
    sub_72084((v0 + 16), *(v0 + 40));
    v45 = sub_2BF3B8();
    v46 = (*(v44 + 48))(v45);

    *(v0 + 584) = v46;
    sub_691F8(v0 + 16, v0 + 296);
    v47 = swift_allocObject();
    sub_68D1C((v0 + 296), v47 + 16);
    sub_6620C(&qword_3C15F0);
    sub_72B74(&qword_3C15F8, &qword_3C15F0);
    sub_2C2418();

    sub_72B74(&qword_3C1608, &qword_3C15A8);
    sub_72B74(&qword_3C1610, &qword_3C15A0);
    sub_2C2428();
    sub_72B74(&qword_3C1618, &qword_3C1590);
    v188 = sub_2C2408();
    (*(v197 + 8))(v179, v194);
    v215 = &_swiftEmptyDictionarySingleton;
    v49 = *(v0 + 40);
    v48 = *(v0 + 48);
    sub_72084((v0 + 16), v49);
    sub_2B7838(v49, v48, v200);
    sub_2C4BE8();
    sub_6620C(&qword_3BC240);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_2E15C0;
    v52 = *(v0 + 40);
    v51 = *(v0 + 48);
    sub_72084((v0 + 16), v52);
    sub_2B7838(v52, v51, v39);
    v53 = *(v212 + 104);
    v53(v39, enum case for AppAnalyticsAction.Type.reportSeriesDetailsView(_:), v205);
    v54 = sub_2BE858();
    *(v50 + 56) = v54;
    v55 = sub_1BFE88(&qword_3CA250, &type metadata accessor for AppAnalyticsAction);
    *(v50 + 64) = v55;
    sub_720C8((v50 + 32));
    sub_2BE838();
    v56 = *(sub_6620C(&qword_3C15C8) + 48);
    v39[3] = v184;
    v198 = sub_1BFE88(&qword_3C15D0, &type metadata accessor for SeriesData);
    v39[4] = v198;
    v195 = sub_1BFE88(&qword_3C15D8, &type metadata accessor for SeriesData);
    v39[5] = v195;
    v57 = sub_720C8(v39);
    v58 = v200;
    v201 = *(v191 + 16);
    v201(v57, v58, v184);
    v59 = enum case for ScenePhase.active(_:);
    v60 = sub_2C2508();
    (*(*(v60 - 8) + 104))(v39 + v56, v59, v60);
    v53(v39, enum case for AppAnalyticsAction.Type.popData(_:), v205);
    *(v50 + 96) = v54;
    *(v50 + 104) = v55;
    v206 = v55;
    sub_720C8((v50 + 72));
    sub_2BE838();
    v61 = sub_2C4D28();
    *(v0 + 360) = v61;
    *(v0 + 368) = &protocol witness table for CompoundAction;
    sub_720C8((v0 + 336));
    sub_2C4D18();
    sub_1B6158(v0 + 336, 3);
    if (v208)
    {
      v62 = v39;
      v63 = v0 + 376;
      v64 = *(v0 + 792);
      v65 = *(v0 + 768);
      v66 = *(v0 + 744);
      v67 = *(v0 + 720);
      v62[3] = v65;
      v62[4] = v198;
      v62[5] = v195;
      v68 = sub_720C8(v66);
      v201(v68, v64, v65);
      v53(v66, enum case for AppAnalyticsAction.Type.pushData(_:), v67);
      *(v0 + 400) = v54;
      *(v0 + 408) = v206;
      sub_720C8((v0 + 376));
      sub_2BE838();
    }

    else
    {
      sub_2C4BE8();
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_2E15C0;
      sub_72084((v0 + 16), *(v0 + 40));
      v180 = sub_2BF3B8();
      v175 = v70;
      sub_72084((v0 + 16), *(v0 + 40));
      sub_2BF2C8();
      v72 = v71;
      sub_72084((v0 + 16), *(v0 + 40));
      if (v72)
      {
        v73 = sub_2BF2F8();
      }

      else
      {
        v73 = sub_2BF2C8();
      }

      v173 = *(v0 + 792);
      v169 = *(v0 + 768);
      v75 = *(v0 + 744);
      v76 = *(v0 + 736);
      v171 = *(v0 + 720);
      *v76 = v180;
      *(v76 + 8) = v175;
      *(v76 + 16) = v73;
      *(v76 + 24) = v74 & 1;
      (v53)(v76, enum case for AppAnalyticsAction.Type.reportAllInSeriesView(_:));
      *(v69 + 56) = v54;
      *(v69 + 64) = v206;
      sub_720C8((v69 + 32));
      sub_2BE838();
      v39[3] = v169;
      v39[4] = v198;
      v39[5] = v195;
      v77 = sub_720C8(v75);
      v201(v77, v173, v169);
      v53(v75, enum case for AppAnalyticsAction.Type.pushData(_:), v171);
      *(v69 + 96) = v54;
      *(v69 + 104) = v206;
      sub_720C8((v69 + 72));
      sub_2BE838();
      v63 = v0 + 456;
      *(v0 + 480) = v61;
      *(v0 + 488) = &protocol witness table for CompoundAction;
      sub_720C8((v0 + 456));
      sub_2C4D18();
    }

    sub_1B6158(v63, 2);
    v78 = *(v0 + 968);
    v79 = *(v0 + 960);
    v80 = *(v0 + 952);
    v81 = *(v0 + 944);
    v82 = *(v0 + 936);
    v83 = *(v0 + 928);
    v84 = *(v0 + 904);
    v181 = *(v0 + 896);
    v183 = *(v0 + 912);
    v185 = *(v0 + 888);
    v85 = *(v0 + 880);
    v202 = *(v0 + 872);
    v213 = *(v0 + 784);
    v86 = *(v0 + 768);
    v192 = *(v0 + 712);
    v178 = (*(v0 + 984) + 16);
    v176 = *v178;
    (*v178)(*(v0 + 992), *(v0 + 1000), *(v0 + 976));
    v177 = *(v80 + 16);
    v177(v79, v78, v81);
    sub_6620C(&qword_3BC1A0);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_2E3F30;
    v89 = *(v0 + 40);
    v88 = *(v0 + 48);
    sub_72084((v0 + 16), v89);
    *(v87 + 56) = v86;
    *(v87 + 64) = v198;
    *(v87 + 72) = v195;
    v204 = v87;
    v90 = sub_720C8((v87 + 32));
    sub_2B7838(v89, v88, v90);
    sub_6620C(&qword_3BC288);
    v91 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_2E3F30;
    v199 = v92;
    sub_91560(v82, v92 + v91);
    v196 = *v82;
    v207 = v82[1];
    v93 = *(v84 + 16);
    v93(v85, v183, v181);
    (*(v84 + 56))(v85, 0, 1, v181);
    sub_6932C(v185, v202, &qword_3BEF80);
    v203 = v215;
    v94 = *(sub_6620C(&qword_3C1600) + 48);
    v93(v192, v183, v181);
    sub_6932C(v185, v192 + v94, &qword_3BEF80);
    v95 = enum case for ToolbarPrincipalType.series(_:);
    v96 = sub_2C15F8();
    v97 = *(v96 - 8);
    (*(v97 + 104))(v192, v95, v96);
    (*(v97 + 56))(v192, 0, 1, v96);
    v216 = 1;
    v99 = *(v0 + 40);
    v98 = *(v0 + 48);
    sub_72084((v0 + 16), v99);

    sub_2B7838(v99, v98, v213);
    LOBYTE(v217) = v208;
    v164 = sub_20CB14((v0 + 16), &v216, v213, &v217, v189 + v186);
    v165 = *(*(v0 + 776) + 8);
    v165(*(v0 + 784), *(v0 + 768));
    sub_72084((v0 + 16), *(v0 + 40));
    v108 = swift_getAssociatedTypeWitness();
    v109 = sub_2C60B8();
    v110 = *(v109 - 8);
    v111 = swift_task_alloc();
    sub_2BF388();
    v112 = *(v108 - 8);
    v113 = (*(v112 + 48))(v111, 1, v108);
    v114 = v113;
    if (v113 == 1)
    {
      (*(v110 + 8))(v111, v109);

      *(v0 + 448) = 0;
      *(v0 + 416) = 0u;
      *(v0 + 432) = 0u;
    }

    else
    {
      *(v0 + 440) = v108;
      *(v0 + 448) = swift_getAssociatedConformanceWitness();
      v115 = sub_720C8((v0 + 416));
      (*(v112 + 32))(v115, v111, v108);
    }

    v116 = *(v0 + 704);
    v117 = *(v0 + 696);
    v118 = *(v0 + 688);
    v119 = *(v0 + 656);
    v120 = *(v0 + 640);
    sub_69198(v0 + 416, &qword_3BDAC8);
    (*(v117 + 104))(v116, enum case for NavigationBarTitleStyle.automatic(_:), v118);
    sub_2C1A58();
    v121 = (v119 + *(v120 + 96));
    *v121 = 0;
    v121[1] = 0;
    v122 = v119 + *(v120 + 100);
    *(v122 + 32) = 0;
    *v122 = 0u;
    *(v122 + 16) = 0u;
    v217 = sub_2BEF68();
    v218 = v123;
    v221._countAndFlagsBits = 45;
    v221._object = 0xE100000000000000;
    sub_2C5978(v221);
    v124._countAndFlagsBits = sub_2BEF58();
    if (v124._object)
    {
      object = v124._object;
    }

    else
    {
      v126 = *(v0 + 632);
      v127 = *(v0 + 624);
      v128 = *(v0 + 616);
      sub_2BE5B8();
      v129 = sub_2BE598();
      object = v130;
      (*(v127 + 8))(v126, v128);
      v124._countAndFlagsBits = v129;
    }

    v144 = v114 != 1;
    v160 = *(v0 + 1200);
    v163 = *(v0 + 1176);
    v161 = *(v0 + 1160);
    v162 = *(v0 + 1152);
    v158 = *(v0 + 1136);
    v159 = *(v0 + 1032);
    v157 = *(v0 + 1000);
    v131 = *(v0 + 992);
    v149 = *(v0 + 984);
    v132 = *(v0 + 976);
    v156 = *(v0 + 968);
    v133 = *(v0 + 960);
    v146 = *(v0 + 952);
    v166 = *(v0 + 944);
    v167 = *(v0 + 936);
    v153 = *(v0 + 904);
    v154 = *(v0 + 896);
    v168 = *(v0 + 912);
    v170 = *(v0 + 888);
    v209 = *(v0 + 880);
    v214 = *(v0 + 872);
    v187 = *(v0 + 864);
    v150 = *(v0 + 856);
    v151 = *(v0 + 848);
    v190 = *(v0 + 840);
    v147 = *(v0 + 832);
    v148 = *(v0 + 824);
    v193 = *(v0 + 792);
    v145 = *(v0 + 768);
    v172 = *(v0 + 712);
    v174 = *(v0 + 704);
    v134 = *(v0 + 696);
    v142 = *(v0 + 688);
    v182 = *(v0 + 680);
    v135 = *(v0 + 672);
    v143 = *(v0 + 664);
    v136 = *(v0 + 656);
    v155 = *(v0 + 648);
    v137 = *(v0 + 640);
    v152 = *(v0 + 592);
    v124._object = object;
    sub_2C5978(v124);

    v138 = v218;
    *v136 = v217;
    v136[1] = v138;
    v176(v136 + v137[17], v131, v132);
    *(v136 + v137[18]) = v204;
    *(v136 + v137[14]) = 1;
    *(v136 + v137[15]) = v199;
    v177(v136 + v137[19], v133, v166);
    v139 = (v136 + v137[16]);
    *v139 = v196;
    v139[1] = v207;
    sub_6932C(v209, v136 + v137[5], &qword_3BEF80);
    sub_6932C(v214, v136 + v137[6], &qword_3BEF80);
    (*(v134 + 16))(v136 + v137[7], v174, v142);
    (*(v135 + 16))(v136 + v137[8], v182, v143);
    *(v136 + v137[9]) = 0;
    *(v136 + v137[21]) = v203;
    sub_6932C(v172, v136 + v137[10], &qword_3C1598);
    *(v136 + v137[11]) = _swiftEmptyArrayStorage;
    *(v136 + v137[12]) = v164;
    *(v136 + v137[13]) = 0;
    *(v136 + v137[22]) = v188;
    *(v136 + v137[23]) = 0;
    *(v136 + v137[20]) = v144;
    sub_17E898();
    (*(v135 + 8))(v182, v143);
    (*(v134 + 8))(v174, v142);
    sub_69198(v172, &qword_3C1598);
    sub_69198(v214, &qword_3BEF80);
    sub_69198(v209, &qword_3BEF80);
    v140 = *(v146 + 8);
    v140(v133, v166);
    v141 = *(v149 + 8);
    v141(v131, v132);
    v165(v193, v145);
    (*(v147 + 8))(v190, v148);
    (*(v150 + 8))(v187, v151);
    sub_69198(v170, &qword_3BEF80);
    (*(v153 + 8))(v168, v154);
    sub_1BFCD0(v167, type metadata accessor for Shelf);
    v140(v156, v166);
    v141(v157, v132);
    sub_BF578(v136, v152);
    (*(v155 + 56))(v152, 0, 1, v137);
    sub_1BF90C(v158);

    sub_69198(v159, &qword_3BFEC0);
    sub_69198(v158, &qword_3C13C8);
    (*(v161 + 8))(v163, v162);
    sub_68CD0(v0 + 96);
    sub_68CD0(v0 + 56);
    sub_68CD0(v0 + 16);

    v106 = *(v0 + 8);
  }

  return v106();
}