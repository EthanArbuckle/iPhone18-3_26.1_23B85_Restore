uint64_t sub_C5E60(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_C5F60, 0, 0);
}

uint64_t sub_C5F60()
{
  v1 = v0[10];
  v2 = v0[2];
  if (v1)
  {
    *(v2 + 24) = sub_66278(0, &qword_3BF370);
    *v2 = v1;
  }

  else
  {
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_C6004()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_72084(v0 + 7, v1);
  ContextActionDataProtocol.selectionMode.getter(v1, v2, v4);
  LOBYTE(v1) = v4[40];
  sub_C4620(v4);
  if (v1)
  {
    return 0;
  }

  else
  {
    return sub_1DA078();
  }
}

uint64_t sub_C6084@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_6620C(&qword_3BF258);
  a1[4] = sub_C78D4();
  v2 = sub_720C8(a1);
  return sub_C60D4(v2);
}

uint64_t sub_C60D4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_6620C(&qword_3BE870);
  __chkstk_darwin(v2 - 8);
  v3 = sub_6620C(&unk_3C4370);
  __chkstk_darwin(v3 - 8);
  v5 = v33 - v4;
  v6 = sub_2BE3B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  v13 = v1[10];
  v14 = v1[11];
  sub_72084(v1 + 7, v13);
  v15 = (*(v14 + 8))(v13, v14);
  if (*(v15 + 16))
  {
    sub_691F8(v15 + 32, &v35);

    sub_68D1C(&v35, v37);
    v16 = v38;
    v17 = v39;
    sub_72084(v37, v38);
    (*(v17 + 264))(v16, v17);
    if (v18)
    {
      sub_2BE3A8();

      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        (*(v7 + 32))(v12, v5, v6);
        v25 = sub_C65F4(v37, v12);
        (*(v7 + 16))(v9, v12, v6);
        v26 = _s11BookStoreUI17ContextActionItemPAAE7subject3for05SwiftC04TextVSgAA0D17AssetInfoProtocol_p_tF_0(v37);
        v33[3] = v27;
        v33[4] = v26;
        v33[1] = v29;
        v33[2] = v28;
        v36 = sub_66278(0, &qword_3C4380);
        *&v35 = v25;
        v30 = v25;
        sub_2C2698();
        sub_6620C(&qword_3BE800);
        sub_72B74(&unk_3C4390, &qword_3BE800);
        sub_C7C08();
        v31 = v34;
        sub_2C4758();

        (*(v7 + 8))(v12, v6);
        v32 = sub_6620C(&qword_3BF270);
        (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
        return sub_68CD0(v37);
      }

      sub_C7B98(v5);
    }

    sub_68CD0(v37);
  }

  else
  {
  }

  if (qword_3BB778 != -1)
  {
    swift_once();
  }

  v19 = sub_2C00B8();
  sub_57AD8(v19, qword_3C2F18);
  v20 = sub_2C0098();
  v21 = sub_2C5DC8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "Can't create ShareLink without asset info", v22, 2u);
  }

  v23 = sub_6620C(&qword_3BF270);
  return (*(*(v23 - 8) + 56))(v34, 1, 1, v23);
}

id sub_C65F4(void *a1, uint64_t a2)
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
  v90 = &unk_38CCA8;
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

uint64_t _s11BookStoreUI17ContextActionItemPAAE7subject3for05SwiftC04TextVSgAA0D17AssetInfoProtocol_p_tF_0(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_72084(a1, v2);
  v4 = (*(v3 + 312))(v2, v3);
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    v8 = a1[3];
    v9 = a1[4];
    sub_72084(a1, v8);
    v10 = (*(v9 + 32))(v8, v9);
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      sub_1DA078();
      sub_6620C(&qword_3BE868);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_2E15C0;
      *(v14 + 56) = &type metadata for String;
      v15 = sub_B1BAC();
      *(v14 + 32) = v7;
      *(v14 + 40) = v6;
      *(v14 + 96) = &type metadata for String;
      *(v14 + 104) = v15;
      *(v14 + 64) = v15;
      *(v14 + 72) = v12;
      *(v14 + 80) = v13;
    }

    else
    {
      sub_1DA078();
      sub_6620C(&qword_3BE868);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_2E3F30;
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_B1BAC();
      *(v16 + 32) = v7;
      *(v16 + 40) = v6;
    }

    v6 = sub_2C5898();
  }

  return v6;
}

uint64_t sub_C7230(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  sub_72084(a1 + 7, v1);
  ContextActionDataProtocol.selectionMode.getter(v1, v2, v6);
  LOBYTE(v1) = v7;
  sub_C4620(v6);
  if (v1)
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v3 = sub_1DA078();
  }

  v6[0] = v3;
  v6[1] = v4;
  sub_2B17F0();
  sub_7212C();
  return sub_2C4308();
}

uint64_t ShareActionItem.deinit()
{
  sub_68CD0(v0 + 16);
  sub_68CD0(v0 + 56);

  sub_68CD0(v0 + 104);
  return v0;
}

uint64_t ShareActionItem.__deallocating_deinit()
{
  sub_68CD0(v0 + 16);
  sub_68CD0(v0 + 56);

  sub_68CD0(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_C7394()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  sub_72084((v1 + 56), v2);
  ContextActionDataProtocol.selectionMode.getter(v2, v3, v5);
  LOBYTE(v2) = v5[40];
  sub_C4620(v5);
  if (v2)
  {
    return 0;
  }

  else
  {
    return sub_1DA078();
  }
}

uint64_t sub_C743C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_6620C(&qword_3BF258);
  a1[4] = sub_C78D4();
  v2 = sub_720C8(a1);
  return sub_C60D4(v2);
}

uint64_t sub_C7490()
{
  *(v1 + 16) = *v0;
  sub_2C5C18();
  *(v1 + 24) = sub_2C5C08();
  v3 = sub_2C5BB8();

  return _swift_task_switch(sub_C752C, v3, v2);
}

uint64_t sub_C752C()
{
  v1 = *(v0 + 16);

  v2 = v1[5];
  v3 = v1[6];
  sub_72084(v1 + 2, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_2E8350;
  *(v4 + 24) = v1;

  ContextMenuPresentationContextProtocol.showShareSheet(with:using:)(v1 + 7, &unk_2E8358, v4, v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

void *sub_C7660()
{
  v1 = *(*v0 + 96);
  v2 = v1;
  return v1;
}

uint64_t sub_C76B0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  *a1 = result;
  return result;
}

uint64_t sub_C76E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_88BE0;

  return sub_C47F8(a1, a2, a3, a4, a5);
}

uint64_t sub_C77B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C77EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 16);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_88BE0;

  return sub_C48A8(a1, a2, a3, a4, a5, v12);
}

unint64_t sub_C78D4()
{
  result = qword_3BF260;
  if (!qword_3BF260)
  {
    sub_718D4(&qword_3BF258);
    sub_72B74(&qword_3BF268, &qword_3BF270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF260);
  }

  return result;
}

uint64_t dispatch thunk of ShareActionItem.handle()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_7100C;

  return v4();
}

uint64_t sub_C7B50(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_C7B98(uint64_t a1)
{
  v2 = sub_6620C(&unk_3C4370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_C7C08()
{
  result = qword_3BF378;
  if (!qword_3BF378)
  {
    sub_2BE3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF378);
  }

  return result;
}

uint64_t sub_C7C60()
{
  sub_68CD0(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_C7CA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t initializeBufferWithCopyOfBuffer for NavigationBarStyle(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_C7CDC(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_C7D24(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_C7DC8()
{
  result = qword_3C8610;
  if (!qword_3C8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8610);
  }

  return result;
}

uint64_t sub_C7E1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v112 = a3;
  v113 = a2;
  v145 = a4;
  v143 = sub_6620C(&qword_3BF388);
  __chkstk_darwin(v143);
  v122 = &v106 - v5;
  v144 = sub_6620C(&qword_3BF390);
  v138 = *(v144 - 8);
  __chkstk_darwin(v144);
  v129 = &v106 - v6;
  v141 = sub_6620C(&qword_3BF398);
  __chkstk_darwin(v141);
  v142 = &v106 - v7;
  v140 = sub_6620C(&qword_3BF3A0);
  __chkstk_darwin(v140);
  v132 = &v106 - v8;
  v9 = sub_6620C(&qword_3BF3A8);
  __chkstk_darwin(v9 - 8);
  v135 = &v106 - v10;
  v11 = sub_6620C(&qword_3BF3B0);
  __chkstk_darwin(v11 - 8);
  v119 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v131 = &v106 - v14;
  v136 = sub_6620C(&qword_3BF3B8);
  __chkstk_darwin(v136);
  v126 = (&v106 - v15);
  v16 = sub_2BE9B8();
  v17 = *(v16 - 8);
  v147 = v16;
  v148 = v17;
  __chkstk_darwin(v16);
  v146 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_6620C(&qword_3BF3C0);
  __chkstk_darwin(v19 - 8);
  v120 = &v106 - v20;
  v21 = sub_6620C(&qword_3BF3C8);
  __chkstk_darwin(v21 - 8);
  v123 = &v106 - v22;
  v110 = sub_2C30F8();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_6620C(&qword_3BF3D0);
  __chkstk_darwin(v24 - 8);
  v118 = (&v106 - v25);
  v26 = sub_6620C(&qword_3BF3D8);
  __chkstk_darwin(v26 - 8);
  v117 = &v106 - v27;
  v116 = sub_2BE968();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v111 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2C1FA8();
  v114 = *(v29 - 8);
  __chkstk_darwin(v29);
  v31 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_6620C(&qword_3BF3E0);
  v121 = *(v124 - 8);
  __chkstk_darwin(v124);
  v133 = &v106 - v32;
  v127 = sub_6620C(&qword_3BF3E8);
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v134 = &v106 - v33;
  v139 = sub_6620C(&qword_3BF3F0);
  v130 = *(v139 - 8);
  __chkstk_darwin(v139);
  v128 = &v106 - v34;
  v35 = sub_2C0F58();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v106 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2C0DF8();
  v137 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6932C(a1, &v150, &qword_3BE378);
  v42 = type metadata accessor for HeroComponentModel();
  (*(v36 + 16))(v38, a1 + v42[10], v35);
  v43 = a1;
  sub_6932C(a1 + 40, v149, &qword_3BE370);
  sub_2C0DE8();
  if (sub_2C0F48())
  {
    sub_6932C(a1, &v150, &qword_3BE378);
    sub_2C1BF8();
    v44 = sub_C9BE0(&qword_3BF3F8, &type metadata accessor for HeroLockupView);
    v107 = sub_C9BE0(&qword_3BF420, &type metadata accessor for GenericGeometryReferenceBuilder);
    v122 = v41;
    sub_2C3BD8();
    (*(v114 + 8))(v31, v29);
    sub_69198(&v150, &qword_3BE008);
    v119 = sub_6620C(&qword_3BC020);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_2E4110;
    v46 = v42[8];
    v138 = v43;
    v47 = v118;
    sub_6932C(v43 + v46, v118, &qword_3BF3D0);
    v48 = v117;
    sub_69130(v47, v117, &qword_3BF3D8);
    v49 = v115;
    v50 = v116;
    v51 = (*(v115 + 48))(v48, 1, v116);
    v129 = v39;
    if (v51 == 1)
    {
      sub_69198(v48, &qword_3BF3D8);
      *(v45 + 32) = 0u;
      *(v45 + 48) = 0u;
      *(v45 + 64) = 0u;
      v52 = v123;
    }

    else
    {
      v114 = v29;
      v118 = v42;
      v59 = v44;
      if (v112)
      {
        v60 = v113;
      }

      else
      {
        v73 = v113;

        sub_2C5DD8();
        v74 = sub_2C3718();
        sub_2C0058();

        v75 = v108;
        sub_2C30E8();
        swift_getAtKeyPath();
        sub_9E94C(v73, 0);
        (*(v109 + 8))(v75, v110);
        v60 = v150;
      }

      v52 = v123;
      v76 = v111;
      sub_2BE958();

      (*(v49 + 8))(v48, v50);
      *(v45 + 56) = v50;
      *(v45 + 64) = sub_C9BE0(&qword_3BF460, &type metadata accessor for ContentData);
      *(v45 + 72) = sub_C9BE0(&unk_3C4420, &type metadata accessor for ContentData);
      v77 = sub_720C8((v45 + 32));
      (*(v49 + 32))(v77, v76, v50);
      v42 = v118;
      v44 = v59;
      v29 = v114;
    }

    *(v45 + 104) = sub_2BECC8();
    *(v45 + 112) = sub_C9BE0(&qword_3BF440, &type metadata accessor for ContentExposureData);
    *(v45 + 120) = sub_C9BE0(&qword_3BF448, &type metadata accessor for ContentExposureData);
    sub_720C8((v45 + 80));
    sub_2BEC98();
    v78 = v120;
    sub_6932C(v138 + v42[9], v120, &qword_3BF3C0);
    sub_69130(v78, v52, &qword_3BF3C8);
    v79 = sub_2BEE38();
    v80 = *(v79 - 8);
    if ((*(v80 + 48))(v52, 1, v79) == 1)
    {
      sub_69198(v52, &qword_3BF3C8);
      *(v45 + 128) = 0u;
      *(v45 + 144) = 0u;
      *(v45 + 160) = 0u;
    }

    else
    {
      *(v45 + 152) = v79;
      *(v45 + 160) = sub_C9BE0(&qword_3BF450, &type metadata accessor for OnDevicePersonalizationPropertyData);
      *(v45 + 168) = sub_C9BE0(&qword_3BF458, &type metadata accessor for OnDevicePersonalizationPropertyData);
      v81 = sub_720C8((v45 + 128));
      (*(v80 + 32))(v81, v52, v79);
    }

    sub_2BED18();
    sub_C9BE0(&qword_3BD3D8, type metadata accessor for HeroComponentModel);
    v82 = v146;
    v83 = v138;
    sub_2C4CE8();
    v150 = v129;
    v151 = v29;
    v152 = v44;
    v153 = v107;
    swift_getOpaqueTypeConformance2();
    sub_C9BE0(&qword_3BF428, &type metadata accessor for ContentExposureEvent);
    v84 = v126;
    v85 = v124;
    v86 = v133;
    sub_2C3D98();
    v87 = sub_C9A20();
    sub_2C3D88();

    sub_69198(v84, &qword_3BF3B8);
    v88 = *(v148 + 8);
    v148 += 8;
    v126 = v88;
    v88(v82, v147);
    (*(v121 + 8))(v86, v85);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_2E3F30;
    v90 = v135;
    sub_6932C(v83 + v42[7], v135, &qword_3BF3A8);
    v91 = v131;
    sub_69130(v90, v131, &qword_3BF3B0);
    v92 = sub_2BEA68();
    v93 = *(v92 - 8);
    if ((*(v93 + 48))(v91, 1, v92) == 1)
    {
      sub_69198(v91, &qword_3BF3B0);
      *(v89 + 32) = 0u;
      *(v89 + 48) = 0u;
      *(v89 + 64) = 0u;
    }

    else
    {
      *(v89 + 56) = v92;
      *(v89 + 64) = sub_C9BE0(&qword_3BF430, &type metadata accessor for FlowcaseData);
      *(v89 + 72) = sub_C9BE0(&qword_3BF438, &type metadata accessor for FlowcaseData);
      v94 = sub_720C8((v89 + 32));
      (*(v93 + 32))(v94, v91, v92);
    }

    sub_2BED58();
    v95 = v146;
    sub_2C4CE8();
    v150 = v136;
    v151 = v87;
    swift_getOpaqueTypeConformance2();
    sub_C9BE0(&qword_3BF400, &type metadata accessor for FlowcaseExposureEvent);
    v96 = v132;
    v97 = v127;
    v98 = v134;
    sub_2C3D98();
    v99 = sub_C98D4();
    v100 = v128;
    v101 = v140;
    sub_2C3D88();

    sub_69198(v96, &qword_3BF3A0);
    v126(v95, v147);
    (*(v125 + 8))(v98, v97);
    v102 = v130;
    v103 = v139;
    (*(v130 + 16))(v142, v100, v139);
    swift_storeEnumTagMultiPayload();
    v150 = v101;
    v151 = v99;
    swift_getOpaqueTypeConformance2();
    v104 = sub_C97A0();
    v150 = v143;
    v151 = v104;
    swift_getOpaqueTypeConformance2();
    sub_2C33C8();
    (*(v102 + 8))(v100, v103);
    v65 = v129;
    v66 = v122;
  }

  else
  {
    v53 = v41;
    sub_6620C(&qword_3BC020);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_2E3F30;
    v55 = v135;
    sub_6932C(a1 + v42[7], v135, &qword_3BF3A8);
    v56 = v119;
    sub_69130(v55, v119, &qword_3BF3B0);
    v57 = sub_2BEA68();
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v56, 1, v57) == 1)
    {
      sub_69198(v56, &qword_3BF3B0);
      *(v54 + 32) = 0u;
      *(v54 + 48) = 0u;
      *(v54 + 64) = 0u;
    }

    else
    {
      *(v54 + 56) = v57;
      *(v54 + 64) = sub_C9BE0(&qword_3BF430, &type metadata accessor for FlowcaseData);
      *(v54 + 72) = sub_C9BE0(&qword_3BF438, &type metadata accessor for FlowcaseData);
      v61 = sub_720C8((v54 + 32));
      (*(v58 + 32))(v61, v56, v57);
    }

    v62 = v148;
    sub_2BED58();
    sub_C9BE0(&qword_3BD3D8, type metadata accessor for HeroComponentModel);
    v63 = v146;
    sub_2C4CE8();
    sub_C9BE0(&qword_3BF3F8, &type metadata accessor for HeroLockupView);
    sub_C9BE0(&qword_3BF400, &type metadata accessor for FlowcaseExposureEvent);
    v64 = v122;
    v65 = v39;
    v66 = v53;
    sub_2C3D98();
    v67 = sub_C97A0();
    v68 = v129;
    v69 = v143;
    sub_2C3D88();

    sub_69198(v64, &qword_3BF388);
    (*(v62 + 8))(v63, v147);
    v70 = v138;
    v71 = v144;
    (*(v138 + 16))(v142, v68, v144);
    swift_storeEnumTagMultiPayload();
    v72 = sub_C98D4();
    v150 = v140;
    v151 = v72;
    swift_getOpaqueTypeConformance2();
    v150 = v69;
    v151 = v67;
    swift_getOpaqueTypeConformance2();
    sub_2C33C8();
    (*(v70 + 8))(v68, v71);
  }

  return (*(v137 + 8))(v66, v65);
}

uint64_t sub_C963C()
{
  sub_C9C28(*v0, *(v0 + 8));
  sub_C7DC8();
  return sub_2BFD18();
}

unint64_t sub_C96A0()
{
  result = qword_3BF380;
  if (!qword_3BF380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF380);
  }

  return result;
}

unint64_t sub_C97A0()
{
  result = qword_3BF408;
  if (!qword_3BF408)
  {
    sub_718D4(&qword_3BF388);
    sub_2C0DF8();
    sub_2BED58();
    sub_C9BE0(&qword_3BF3F8, &type metadata accessor for HeroLockupView);
    sub_C9BE0(&qword_3BF400, &type metadata accessor for FlowcaseExposureEvent);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF408);
  }

  return result;
}

unint64_t sub_C98D4()
{
  result = qword_3BF410;
  if (!qword_3BF410)
  {
    sub_718D4(&qword_3BF3A0);
    sub_718D4(&qword_3BF3E8);
    sub_2BED58();
    sub_718D4(&qword_3BF3B8);
    sub_C9A20();
    swift_getOpaqueTypeConformance2();
    sub_C9BE0(&qword_3BF400, &type metadata accessor for FlowcaseExposureEvent);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF410);
  }

  return result;
}

unint64_t sub_C9A20()
{
  result = qword_3BF418;
  if (!qword_3BF418)
  {
    sub_718D4(&qword_3BF3B8);
    sub_718D4(&qword_3BF3E0);
    sub_2BED18();
    sub_2C0DF8();
    sub_2C1FA8();
    sub_C9BE0(&qword_3BF3F8, &type metadata accessor for HeroLockupView);
    sub_C9BE0(&qword_3BF420, &type metadata accessor for GenericGeometryReferenceBuilder);
    swift_getOpaqueTypeConformance2();
    sub_C9BE0(&qword_3BF428, &type metadata accessor for ContentExposureEvent);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF418);
  }

  return result;
}

uint64_t sub_C9BE0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_C9C28(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_C9C38()
{
  result = qword_3BF468;
  if (!qword_3BF468)
  {
    sub_718D4(&qword_3BF470);
    sub_718D4(&qword_3BF3A0);
    sub_C98D4();
    swift_getOpaqueTypeConformance2();
    sub_718D4(&qword_3BF388);
    sub_C97A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF468);
  }

  return result;
}

uint64_t SeriesRoomPageIntent.init(seriesID:seriesType:originatingSeriesID:originatingSeriesType:resource:navigationType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, char *a8@<X8>)
{
  v15 = type metadata accessor for SeriesRoomPageIntent();
  v26 = v15[8];
  sub_2BF8D8();
  v25 = sub_2C1AE8();
  *a8 = a1;
  *(a8 + 1) = a2;
  v16 = v15[5];
  v17 = sub_2BF368();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&a8[v16], a3, v17);
  v19 = &a8[v15[6]];
  *v19 = a4;
  *(v19 + 1) = a5;
  sub_C9F3C(a6, &a8[v15[7]]);
  v20 = sub_2C1AE8();
  sub_C9FAC(a6);
  (*(v18 + 8))(a3, v17);

  *&a8[v26] = v20;
  v21 = v15[9];
  v22 = sub_2C21F8();
  v23 = *(*(v22 - 8) + 32);

  return v23(&a8[v21], a7, v22);
}

uint64_t type metadata accessor for SeriesRoomPageIntent()
{
  result = qword_3BF520;
  if (!qword_3BF520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C9F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BF478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C9FAC(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BF478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BookStoreUI::SeriesRoomPageIntent::CodingKeys_optional __swiftcall SeriesRoomPageIntent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x4449736569726573 && stringValue._object == 0xE800000000000000;
  if (v5 || (sub_2C65B8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x7954736569726573 && object == 0xEA00000000006570 || (sub_2C65B8() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0xD000000000000013 && 0x8000000000302CA0 == object || (sub_2C65B8() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0xD000000000000015 && 0x8000000000302CC0 == object || (sub_2C65B8() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0x656372756F736572 && object == 0xE800000000000000 || (sub_2C65B8() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0x697461676976616ELL && object == 0xEE00657079546E6FLL)
  {

    v7 = 5;
  }

  else
  {
    v8 = sub_2C65B8();

    if (v8)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }
  }

  *v4 = v7;
  return result;
}

unint64_t SeriesRoomPageIntent.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x4449736569726573;
  v3 = 0xD000000000000015;
  v4 = 0x656372756F736572;
  if (v1 != 4)
  {
    v4 = 0x697461676976616ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7954736569726573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
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

uint64_t sub_CA33C(uint64_t a1)
{
  v2 = sub_CAA5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CA378(uint64_t a1)
{
  v2 = sub_CAA5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SeriesRoomPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v63 = sub_2C21F8();
  v58 = *(v63 - 8);
  __chkstk_darwin(v63);
  v59 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6620C(&qword_3BF478);
  __chkstk_darwin(v4 - 8);
  v56 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v44 - v7;
  v9 = sub_2BF368();
  v60 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  v15 = sub_6620C(&qword_3BF480);
  v16 = *(v15 - 8);
  v61 = v15;
  v62 = v16;
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = a1[3];
  v65 = a1;
  sub_72084(a1, v19);
  sub_CAA5C();
  v20 = v64;
  sub_2C67A8();
  if (!v20)
  {
    v64 = v11;
    v54 = v8;
    v55 = v14;
    v21 = v63;
    v23 = v60;
    v22 = v61;
    v72 = 0;
    v52 = sub_2C6468();
    v53 = v24;
    v71 = 1;
    sub_CAB6C(&qword_3BF490, &type metadata accessor for SeriesType);
    v25 = v9;
    sub_2C64A8();
    v70 = 2;
    v50 = sub_2C6418();
    v51 = v26;
    v69 = 3;
    sub_2C6458();
    v27 = v23;
    sub_6620C(&qword_3BF498);
    v68 = 4;
    sub_CAAB0();
    sub_2C6458();
    v49 = v66;
    v67 = 5;
    sub_CAB6C(&qword_3BF4A8, &type metadata accessor for Metrics.NavigationType);
    sub_2C64A8();
    v29 = v54;
    v30 = v49;
    if (v49 == &dword_0 + 1)
    {
      v30 = 0;
    }

    v48 = v30;
    v31 = *(v27 + 16);
    v44 = v27 + 16;
    v45 = v31;
    v31(v64, v55, v25);
    v32 = v29;
    v33 = v56;
    sub_C9F3C(v32, v56);
    v34 = type metadata accessor for SeriesRoomPageIntent();
    v35 = v34[9];
    v36 = v57;
    v37 = *(v58 + 16);
    v49 = v18;
    v37(v57 + v35, v59, v21);
    v47 = v34[8];
    sub_2BF8D8();
    v46 = sub_2C1AE8();
    v38 = v53;
    *v36 = v52;
    v36[1] = v38;
    v39 = v64;
    v45(v36 + v34[5], v64, v25);
    v40 = (v36 + v34[6]);
    v41 = v51;
    *v40 = v50;
    v40[1] = v41;
    sub_C9F3C(v33, v36 + v34[7]);
    v42 = sub_2C1AE8();
    sub_C9FAC(v33);
    v43 = *(v27 + 8);
    v43(v39, v25);

    *(v36 + v47) = v42;
    (*(v58 + 8))(v59, v63);
    sub_C9FAC(v54);
    v43(v55, v25);
    (*(v62 + 8))(v49, v22);
  }

  return sub_68CD0(v65);
}

unint64_t sub_CAA5C()
{
  result = qword_3BF488;
  if (!qword_3BF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF488);
  }

  return result;
}

unint64_t sub_CAAB0()
{
  result = qword_3BF4A0;
  if (!qword_3BF4A0)
  {
    sub_718D4(&qword_3BF498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF4A0);
  }

  return result;
}

void sub_CAB14(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

uint64_t sub_CAB6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_CABB8()
{
  result = qword_3BF4B0;
  if (!qword_3BF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF4B0);
  }

  return result;
}

unint64_t sub_CAC10()
{
  result = qword_3BF4B8;
  if (!qword_3BF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF4B8);
  }

  return result;
}

unint64_t sub_CAC68()
{
  result = qword_3BF4C0;
  if (!qword_3BF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF4C0);
  }

  return result;
}

uint64_t sub_CACE8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_2BF368();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_6620C(&qword_3BF478);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_2C21F8();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_CAE74(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_2BF368();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_6620C(&qword_3BF478);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_2C21F8();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

void sub_CAFEC()
{
  sub_2BF368();
  if (v0 <= 0x3F)
  {
    sub_A63F4();
    if (v1 <= 0x3F)
    {
      sub_CB128(319, &qword_3BF530, &type metadata accessor for SeriesType, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_CB128(319, &unk_3BF538, &type metadata accessor for MSeries, &type metadata accessor for _MResourceDecoder_OrNil);
        if (v3 <= 0x3F)
        {
          sub_2C21F8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_CB128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for SeriesRoomPageIntent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SeriesRoomPageIntent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t MenuCoverImageProvider.image(for:from:size:includeSpine:)(uint64_t a1, _BYTE *a2, char a3, double a4, double a5)
{
  *(v5 + 440) = a3;
  *(v5 + 328) = a4;
  *(v5 + 336) = a5;
  *(v5 + 320) = a1;
  *(v5 + 441) = *a2;
  return _swift_task_switch(sub_CB30C, 0, 0);
}

uint64_t sub_CB30C()
{
  v1 = v0 + 272;
  v2 = *(v0 + 441);
  v3 = sub_2BFAE8();
  v5 = v4;
  *(v0 + 344) = v3;
  *(v0 + 352) = v4;
  if ((v2 & 1) == 0)
  {
    v11 = (v0 + 144);
    v18 = v3;
    v19 = objc_opt_self();
    v20 = [v19 defaultCacheManager];
    sub_6620C(&qword_3BF590);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2E3F30;
    *(v21 + 32) = v18;
    *(v21 + 40) = v5;

    isa = sub_2C5B18().super.isa;

    [v20 addProductProfileIDs:isa priority:6];

    CGSizeScale();
    CGSizeScaleToScreen();
    v24 = v23;
    v26 = v25;
    v27 = objc_allocWithZone(BICDescribedImage);
    v28 = sub_2C5888();

    v29 = [v27 initWithIdentifier:v28];
    *(v0 + 360) = v29;

    [v29 setImageSize:{v24, v26}];
    [v29 setProcessingOptions:0];
    [v29 setRequestOptions:2];
    [v29 setPriority:6];
    v30 = [v19 defaultCacheManager];
    *(v0 + 368) = v30;
    *(v0 + 144) = v0;
    *(v0 + 184) = v1;
    *(v0 + 152) = sub_CB81C;
    v31 = swift_continuation_init();
    *(v0 + 264) = sub_6620C(&qword_3BF588);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_CC1B8;
    *(v0 + 232) = &unk_38CE30;
    *(v0 + 240) = v31;
    v32 = v29;
    [v30 fetchCGImageFor:v32 forRequest:v32 completion:v0 + 208];
    goto LABEL_8;
  }

  v6 = sub_2BF838();
  *(v0 + 304) = 7107189;
  *(v0 + 312) = 0xE300000000000000;
  sub_2C61A8();
  if (*(v6 + 16) && (v7 = sub_5D2A0(v0 + 208), (v8 & 1) != 0))
  {
    sub_68C64(*(v6 + 56) + 32 * v7, v0 + 272);
    sub_68D90(v0 + 208);

    if (swift_dynamicCast())
    {
      v9 = [objc_opt_self() sharedInstance];
      *(v0 + 376) = v9;
      if (!v9)
      {
        __break(1u);
        return _swift_continuation_await(v9);
      }

      v10 = v9;
      v11 = (v0 + 16);
      v12 = sub_2C5888();
      *(v0 + 384) = v12;

      CGSizeScaleToScreen();
      v14 = v13;
      v16 = v15;
      *(v0 + 16) = v0;
      *(v0 + 56) = v1;
      *(v0 + 24) = sub_CBA20;
      v17 = swift_continuation_init();
      *(v0 + 264) = sub_6620C(&qword_3BF580);
      *(v0 + 208) = _NSConcreteStackBlock;
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_CC220;
      *(v0 + 232) = &unk_38CDE0;
      *(v0 + 240) = v17;
      [v10 imageWithURLString:v12 size:v0 + 208 completion:{v14, v16}];
LABEL_8:
      v9 = v11;

      return _swift_continuation_await(v9);
    }
  }

  else
  {

    sub_68D90(v0 + 208);
  }

  v33 = *(v0 + 8);

  return v33(0);
}

uint64_t sub_CB81C()
{

  return _swift_task_switch(sub_CB8FC, 0, 0);
}

uint64_t sub_CB8FC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 272);

  if (v2)
  {
    v3 = [v2 image];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 CGImage];

      v6 = *(v0 + 360);
      if (v5)
      {
        v7 = [objc_allocWithZone(UIImage) initWithCGImage:v5];

        swift_unknownObjectRelease();
        v8 = v7;
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v9 = *(v0 + 360);
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  v8 = 0;
LABEL_9:
  v10 = *(v0 + 8);

  return v10(v8);
}

uint64_t sub_CBA20()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {

    v2 = sub_CC12C;
  }

  else
  {
    v2 = sub_CBB38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_CBB38()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 272);
  *(v0 + 400) = v3;
  v4 = v3;

  if (v3)
  {
    v5 = [v4 CGImage];
    *(v0 + 408) = v5;
    if (v5)
    {
      v6 = v5;
      v21 = *(v0 + 320);
      v22 = [objc_allocWithZone(BCCacheImageTransformer) init];
      *(v0 + 416) = v22;
      v7 = objc_allocWithZone(BICDescribedImage);
      v8 = sub_2C5888();
      v9 = [v7 initWithIdentifier:v8];
      *(v0 + 424) = v9;

      [v4 size];
      [v9 setImageSize:?];
      [v9 setProcessingOptions:0];
      v10 = [objc_opt_self() imageWithCGImage:v6];
      [v9 setImage:v10];

      v11 = objc_allocWithZone(BICDescribedImage);
      v12 = sub_2C5888();

      v13 = [v11 initWithIdentifier:v12];
      *(v0 + 432) = v13;

      [v4 size];
      [v13 setImageSize:?];
      v14 = [v21 isExplicit];
      v15 = *(v0 + 440);
      if (v14)
      {
        v16 = [objc_msgSend(objc_opt_self() "sharedInstance")];
        swift_unknownObjectRelease();
        if (v16)
        {
          v17 = 0;
        }

        else
        {
          v17 = 1024;
        }

        if ((v16 & v15 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (!*(v0 + 440))
      {
        v17 = 0;
        goto LABEL_19;
      }

      if (sub_2BF828())
      {
        v17 = 8;
      }

      else
      {
        v17 = 2;
      }

LABEL_19:
      [v13 setProcessingOptions:{v17, v21}];
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 272;
      *(v0 + 88) = sub_CBEF8;
      v20 = swift_continuation_init();
      *(v0 + 264) = sub_6620C(&qword_3BF588);
      *(v0 + 208) = _NSConcreteStackBlock;
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_CC1B8;
      *(v0 + 232) = &unk_38CE08;
      *(v0 + 240) = v20;
      [v22 transformSource:v9 to:v13 completion:v0 + 208];

      return _swift_continuation_await(v0 + 80);
    }
  }

  v18 = *(v0 + 8);

  return v18(0);
}

uint64_t sub_CBEF8()
{

  return _swift_task_switch(sub_CBFD8, 0, 0);
}

uint64_t sub_CBFD8()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 272);

  if (v2)
  {
    v3 = [v2 image];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 CGImage];

      v7 = *(v0 + 424);
      v6 = *(v0 + 432);
      if (v5)
      {
        v9 = *(v0 + 408);
        v8 = *(v0 + 416);
        v10 = *(v0 + 400);
        v11 = [objc_allocWithZone(UIImage) initWithCGImage:v5];

        swift_unknownObjectRelease();
        v12 = v11;
        goto LABEL_9;
      }
    }

    else
    {
      v7 = *(v0 + 424);
      v6 = *(v0 + 432);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *(v0 + 424);
    v6 = *(v0 + 432);
  }

  v13 = *(v0 + 416);
  v14 = *(v0 + 400);

  v12 = 0;
LABEL_9:
  v15 = *(v0 + 8);

  return v15(v12);
}

uint64_t sub_CC12C()
{
  v1 = v0[48];
  v2 = v0[47];
  swift_willThrow();

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_CC1B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_72084((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  swift_unknownObjectRetain();

  return _swift_continuation_resume(v4);
}

uint64_t sub_CC220(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_72084((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_6620C(&unk_3BF5A0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_CC2F0(uint64_t a1, _BYTE *a2, char a3, double a4, double a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_B2A98;

  return MenuCoverImageProvider.image(for:from:size:includeSpine:)(a1, a2, a3, a4, a5);
}

unint64_t sub_CC3D0()
{
  result = qword_3BF598;
  if (!qword_3BF598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF598);
  }

  return result;
}

uint64_t dispatch thunk of MenuCoverImageProviding.image(for:from:size:includeSpine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v19 = (*(a5 + 8) + **(a5 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_B2A98;
  v16.n128_f64[0] = a6;
  v17.n128_f64[0] = a7;

  return v19(a1, a2, a3, a4, a5, v16, v17);
}

uint64_t sub_CC5AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2C30F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6932C(v2, v10, &qword_3BDFE0);
  if (v11 == 1)
  {
    return sub_68D1C(v10, a1);
  }

  sub_2C5DD8();
  v9 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t ContextActionMenuView.init(assetInfo:originatingLocation:observeLibraryAssetState:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 40) = 0;
  sub_691F8(a1, v15);
  sub_C04C8(a2, v14);
  v8 = type metadata accessor for ContextActionMenuView(0);
  sub_CC804(v15, v14, a4 + v8[5]);
  sub_72084(a1, a1[3]);
  v9 = sub_2BF3B8();
  v11 = v10;
  sub_C12F8(a2);
  v12 = (a4 + v8[6]);
  *v12 = v9;
  v12[1] = v11;
  *(a4 + v8[7]) = a3;
  return sub_68CD0(a1);
}

__n128 sub_CC804@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2C1498();
  sub_CEAB0(&qword_3BF720, &type metadata accessor for ProfileRestrictions);
  *a3 = sub_2C2B48();
  *(a3 + 8) = v6;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 56) = 0;
  *(a3 + 64) = swift_getKeyPath();
  *(a3 + 72) = 0;
  v7 = type metadata accessor for ContextActionMenuContentView(0);
  v8 = v7[7];
  *(a3 + v8) = swift_getKeyPath();
  sub_6620C(&qword_3BF848);
  swift_storeEnumTagMultiPayload();
  v9 = v7[8];
  *(a3 + v9) = swift_getKeyPath();
  sub_6620C(&qword_3BD670);
  swift_storeEnumTagMultiPayload();
  v10 = a3 + v7[9];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = a3 + v7[10];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a3 + v7[11];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = v7[12];
  *(a3 + v13) = swift_getKeyPath();
  sub_6620C(&qword_3BF850);
  swift_storeEnumTagMultiPayload();
  sub_68D1C(a1, a3 + v7[13]);
  v14 = a3 + v7[14];
  v15 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v15;
  result = *(a2 + 32);
  *(v14 + 32) = result;
  return result;
}

uint64_t ContextActionMenuView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_6620C(&qword_3BF5B0);
  __chkstk_darwin(v3);
  v5 = v17 - v4;
  v6 = sub_6620C(&qword_3BF5B8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - v8;
  v10 = type metadata accessor for ContextActionMenuView(0);
  if (*(v1 + v10[7]) == 1)
  {
    v17[1] = *(v1 + v10[6]);
    sub_CC5AC(&v18);
    v11 = type metadata accessor for ContextActionMenuContentView(0);
    v17[2] = a1;
    v12 = v11;
    v13 = sub_CEAB0(&qword_3BF5C0, type metadata accessor for ContextActionMenuContentView);
    sub_2C3CD8();
    sub_68CD0(&v18);
    (*(v7 + 16))(v5, v9, v6);
    swift_storeEnumTagMultiPayload();
    v18 = v12;
    v19 = v13;
    swift_getOpaqueTypeConformance2();
    sub_2C33C8();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_CE13C(v1 + v10[5], v5);
    swift_storeEnumTagMultiPayload();
    v15 = type metadata accessor for ContextActionMenuContentView(0);
    v16 = sub_CEAB0(&qword_3BF5C0, type metadata accessor for ContextActionMenuContentView);
    v18 = v15;
    v19 = v16;
    swift_getOpaqueTypeConformance2();
    return sub_2C33C8();
  }
}

void *sub_CCCD4()
{
  v1 = v0;
  v2 = sub_2BE7E8();
  __chkstk_darwin(v2 - 8);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2C30F8();
  v55 = *(v54 - 8);
  __chkstk_darwin(v54);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BCE00);
  __chkstk_darwin(v7 - 8);
  v9 = &v54 - v8;
  v10 = type metadata accessor for ContextActionMenuContentView(0);
  v11 = (v0 + v10[13]);
  sub_691F8(v11, v58);
  v12 = type metadata accessor for ContextActionDataModel.Asset();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR___BSUIContextActionDataAssetModel_initType];
  sub_691F8(v58, &v13[OBJC_IVAR___BSUIContextActionDataAssetModel_initType]);
  v14[40] = 3;
  v57.receiver = v13;
  v57.super_class = v12;
  v15 = objc_msgSendSuper2(&v57, "init");
  sub_68CD0(v58);
  v16 = [objc_allocWithZone(type metadata accessor for SwiftUISourceView()) init];
  v17 = objc_allocWithZone(type metadata accessor for ContextActionDataModel());
  v18 = ContextActionDataModel.init(asset:sourceView:)(v15, v16);
  v19 = ContextActionSource.key.getter();
  v59 = &type metadata for String;
  v58[0] = v19;
  v58[1] = v20;
  v21 = OBJC_IVAR___BSUIContextActionDataModel_originatingLocation;
  swift_beginAccess();
  sub_CEFB8(v58, &v18[v21]);
  swift_endAccess();
  sub_72084(v11, v11[3]);
  v22 = sub_2BF3B8();
  v24 = v23;
  v25 = &v18[OBJC_IVAR___BSUIContextActionDataModel_presentationRefID];
  swift_beginAccess();
  *v25 = v22;
  v25[1] = v24;

  sub_29AD44(v9);
  v26 = sub_2BE5C8();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v9, 1, v26) == 1)
  {
    sub_69198(v9, &qword_3BCE00);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = sub_2BE598();
    v29 = v30;
    (*(v27 + 8))(v9, v26);
  }

  v31 = &v18[OBJC_IVAR___BSUIContextActionDataModel_presentationRefInstance];
  swift_beginAccess();
  *v31 = v28;
  v31[1] = v29;

  v32 = v1 + v10[9];
  v33 = *v32;
  v34 = v54;
  if (*(v32 + 8) == 1)
  {
    LOBYTE(v58[0]) = v33 & 1;
  }

  else
  {

    sub_2C5DD8();
    v35 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v33, 0);
    (*(v55 + 8))(v6, v34);
    LOBYTE(v33) = v58[0];
  }

  v36 = OBJC_IVAR___BSUIContextActionDataModel_shouldReportFigaro;
  swift_beginAccess();
  v18[v36] = v33 & 1;
  v37 = v1 + v10[10];
  v38 = *v37;
  if (*(v37 + 8) != 1)
  {

    sub_2C5DD8();
    v39 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v38, 0);
    (*(v55 + 8))(v6, v34);
    LOBYTE(v38) = v58[0];
  }

  v40 = OBJC_IVAR___BSUIContextActionDataModel_isAnODPRecommendation;
  swift_beginAccess();
  v18[v40] = v38 & 1;
  v41 = v1 + v10[11];
  v42 = *v41;
  if (*(v41 + 8) != 1)
  {

    sub_2C5DD8();
    v43 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v42, 0);
    (*(v55 + 8))(v6, v34);
    LOBYTE(v42) = v58[0];
  }

  v44 = OBJC_IVAR___BSUIContextActionDataModel_supportsSuggestionContextMenu;
  swift_beginAccess();
  v18[v44] = v42 & 1;
  sub_29AD68(v4);
  v45 = OBJC_IVAR___BSUIContextActionDataModel_analyticsAttributes;
  swift_beginAccess();
  sub_CF028(v4, &v18[v45]);
  swift_endAccess();
  sub_29AF38(v58);
  v46 = v59;
  v47 = v60;
  sub_72084(v58, v59);
  v48 = *(v1 + 64);
  if (*(v1 + 72) == 1)
  {
    v49 = v48;
    if (!v48)
    {
      goto LABEL_15;
    }
  }

  else
  {

    sub_2C5DD8();
    v50 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v48, 0);
    (*(v55 + 8))(v6, v34);
    v48 = v56;
    if (!v56)
    {
LABEL_15:
      v48 = [objc_allocWithZone(UIViewController) init];
    }
  }

  v51 = (*(v47 + 8))(v18, v48, v46, v47);

  v52 = sub_28F28C(v51);

  sub_68CD0(v58);
  return v52;
}

uint64_t sub_CD478@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[1] = a3;
  v5 = sub_6620C(&qword_3BF808);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - v7;
  v9 = sub_6620C(&qword_3BF830);
  __chkstk_darwin(v9);
  v11 = v25 - v10;
  v12 = sub_6620C(&qword_3BF7E8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v25 - v14;
  v16 = *a1;
  v25[4] = a2;
  if (v16)
  {
    v25[0] = v25;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    if (((1 << v16) & 0x2BE) == 0)
    {
      if (v16 == 6)
      {
        v21 = sub_1DA078();
      }

      else
      {
        v21 = 0xD000000000000013;
        v22 = 0x8000000000302DB0;
      }

      v26 = v21;
      v27 = v22;
      sub_7212C();
      v17 = sub_2C3A48();
      v19 = v24 & 1;
    }

    v26 = v17;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    sub_6620C(&qword_3BF818);
    sub_6620C(&qword_3BF828);
    sub_CEDAC();
    sub_CEE28();
    sub_2C4588();
    (*(v6 + 16))(v11, v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_CEC58();
    sub_CED14();
    sub_2C33C8();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_6620C(&qword_3BF7F8);
    sub_72B74(&qword_3BF7F0, &qword_3BF7F8);
    sub_2C45A8();
    (*(v13 + 16))(v11, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_CEC58();
    sub_CED14();
    sub_2C33C8();
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_CD894()
{
  sub_6620C(&qword_3BF828);
  sub_CEE28();
  return sub_2C2618();
}

void *sub_CD904@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_72084(a1, v3);
  result = (*(v4 + 16))(&v6, v3, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_CD96C@<X0>(uint64_t *a1@<X8>)
{
  result = ContextActionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_CD9A8()
{
  swift_getKeyPath();

  sub_6620C(&qword_3C4330);
  sub_6620C(&qword_3BF838);
  sub_72B74(&qword_3BF840, &qword_3C4330);
  swift_getOpaqueTypeConformance2();
  return sub_2C4558();
}

uint64_t sub_CDAD8(void *a1)
{
  v2 = sub_2C5118();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  v7 = a1[4];
  sub_72084(a1, v6);
  (*(v7 + 64))(v18, v6, v7);
  v8 = sub_72084(v18, v18[3]);
  v9 = __chkstk_darwin(v8);
  (*(v11 + 16))(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v17 = sub_2C44B8();
  v12 = a1[3];
  v13 = a1[4];
  sub_72084(a1, v12);
  (*(v13 + 16))(v16, v12, v13);
  ContextActionType.rawValue.getter();
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  sub_2C50E8();

  sub_69198(v15, qword_3C0250);
  sub_69198(v16, qword_3C0250);
  sub_2C3B08();
  (*(v3 + 8))(v5, v2);

  return sub_68CD0(v18);
}

uint64_t sub_CDD64()
{
  sub_CCCD4();
  swift_getKeyPath();
  sub_6620C(&qword_3BF7C0);
  sub_6620C(&qword_3BF7C8);
  sub_72B74(&qword_3BF7D0, &qword_3BF7C0);
  sub_CEBCC();
  return sub_2C4558();
}

id SwiftUISourceView.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUISourceView();
  return objc_msgSendSuper2(&v2, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
}

id SwiftUISourceView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id SwiftUISourceView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUISourceView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_CE13C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextActionMenuContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CE214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContextActionMenuContentView(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_CE2EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContextActionMenuContentView(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_CE3AC()
{
  sub_CEAF8(319, &qword_3BDD90, &qword_3BD200);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContextActionMenuContentView(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_CE464()
{
  result = qword_3BF688;
  if (!qword_3BF688)
  {
    sub_718D4(&qword_3BF690);
    type metadata accessor for ContextActionMenuContentView(255);
    sub_CEAB0(&qword_3BF5C0, type metadata accessor for ContextActionMenuContentView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF688);
  }

  return result;
}

uint64_t sub_CE568(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6620C(&qword_3BF698);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_6620C(&qword_3BF6A0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  v11 = sub_6620C(&qword_3BF6A8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[12];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[13] + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_CE6F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_6620C(&qword_3BF698);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
  }

  else
  {
    v12 = sub_6620C(&qword_3BF6A0);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[8];
    }

    else
    {
      result = sub_6620C(&qword_3BF6A8);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[13] + 24) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[12];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void sub_CE868()
{
  sub_CEA1C();
  if (v0 <= 0x3F)
  {
    sub_CEAF8(319, &qword_3BF728, &qword_3BF730);
    if (v1 <= 0x3F)
    {
      sub_CEAF8(319, &qword_3BF738, &qword_3BF740);
      if (v2 <= 0x3F)
      {
        sub_CEAF8(319, &qword_3BF748, &qword_3BF750);
        if (v3 <= 0x3F)
        {
          sub_CEAF8(319, &qword_3BF758, &qword_3BCE00);
          if (v4 <= 0x3F)
          {
            sub_9DC2C(319, &qword_3BF760);
            if (v5 <= 0x3F)
            {
              sub_9DC2C(319, &qword_3BC858);
              if (v6 <= 0x3F)
              {
                sub_CEB4C();
                if (v7 <= 0x3F)
                {
                  sub_85704();
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

void sub_CEA1C()
{
  if (!qword_3BF718)
  {
    sub_2C1498();
    sub_CEAB0(&qword_3BF720, &type metadata accessor for ProfileRestrictions);
    v0 = sub_2C2B58();
    if (!v1)
    {
      atomic_store(v0, &qword_3BF718);
    }
  }
}

uint64_t sub_CEAB0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_CEAF8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_718D4(a3);
    v4 = sub_2C2558();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_CEB4C()
{
  if (!qword_3BF768)
  {
    sub_2BE7E8();
    v0 = sub_2C2558();
    if (!v1)
    {
      atomic_store(v0, &qword_3BF768);
    }
  }
}

unint64_t sub_CEBCC()
{
  result = qword_3BF7D8;
  if (!qword_3BF7D8)
  {
    sub_718D4(&qword_3BF7C8);
    sub_CEC58();
    sub_CED14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF7D8);
  }

  return result;
}

unint64_t sub_CEC58()
{
  result = qword_3BF7E0;
  if (!qword_3BF7E0)
  {
    sub_718D4(&qword_3BF7E8);
    sub_72B74(&qword_3BF7F0, &qword_3BF7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF7E0);
  }

  return result;
}

unint64_t sub_CED14()
{
  result = qword_3BF800;
  if (!qword_3BF800)
  {
    sub_718D4(&qword_3BF808);
    sub_CEDAC();
    sub_CEE28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF800);
  }

  return result;
}

unint64_t sub_CEDAC()
{
  result = qword_3BF810;
  if (!qword_3BF810)
  {
    sub_718D4(&qword_3BF818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF810);
  }

  return result;
}

unint64_t sub_CEE28()
{
  result = qword_3BF820;
  if (!qword_3BF820)
  {
    sub_718D4(&qword_3BF828);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF820);
  }

  return result;
}

void *sub_CEF14@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_72084(a1, v3);
  result = (*(v4 + 16))(&v6, v3, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_CEF7C@<X0>(uint64_t *a1@<X8>)
{
  result = ContextActionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_CEFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(qword_3C0250);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_CF028(uint64_t a1, uint64_t a2)
{
  v4 = sub_2BE7E8();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_CF0C4()
{
  result = qword_3BF860;
  if (!qword_3BF860)
  {
    sub_718D4(&qword_3BF868);
    sub_CEBCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF860);
  }

  return result;
}

uint64_t sub_CF14C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_CF1A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_CF258()
{
  result = qword_3C85F0;
  if (!qword_3C85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C85F0);
  }

  return result;
}

uint64_t sub_CF2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a3;
  v70 = a2;
  v83 = a4;
  v5 = sub_6620C(&qword_3BF898);
  __chkstk_darwin(v5 - 8);
  v81 = v60 - v6;
  v7 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v7 - 8);
  v82 = v60 - v8;
  v80 = sub_6620C(&qword_3BF8A0);
  __chkstk_darwin(v80);
  v79 = v60 - v9;
  v10 = sub_2BE9B8();
  v77 = *(v10 - 8);
  v78 = v10;
  __chkstk_darwin(v10);
  v76 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3BF8A8);
  __chkstk_darwin(v12 - 8);
  v68 = v60 - v13;
  v14 = sub_6620C(&qword_3BF8B0);
  __chkstk_darwin(v14 - 8);
  v66 = v60 - v15;
  v16 = sub_6620C(&qword_3BEF80);
  __chkstk_darwin(v16 - 8);
  v65 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v64 = v60 - v19;
  v20 = sub_2C5418();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2C5288();
  v24 = *(v67 - 8);
  __chkstk_darwin(v67);
  v26 = v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2BFDD8();
  __chkstk_darwin(v27 - 8);
  v62 = v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v85 = sub_2C1598();
  v63 = *(v85 - 8);
  __chkstk_darwin(v85);
  v61 = v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_6620C(&qword_3BF8B8);
  v69 = *(v72 - 8);
  __chkstk_darwin(v72);
  v86 = v60 - v31;
  v75 = sub_6620C(&qword_3BF8C0);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = v60 - v32;
  v84 = type metadata accessor for SeriesEntityCardComponentModel();
  v33 = v84[5];
  sub_6620C(&qword_3BF8C8);
  v34 = sub_2C1078();
  v60[1] = sub_2BFAE8();
  v60[0] = v35;

  sub_2C5278();
  (*(v21 + 104))(v23, enum case for LocalizerLookupStrategy.default(_:), v20);
  sub_2BFD98();
  (*(v21 + 8))(v23, v20);
  (*(v24 + 8))(v26, v67);
  v67 = v33;
  v36 = sub_2C1078();
  sub_2BF8A8();

  sub_2BFDC8();
  v37 = v66;

  sub_2728E0(v64);
  sub_272A58(v65);
  sub_2732D4();
  v38 = v61;
  sub_2C1588();
  v87 = a1;
  v88 = v70;
  v89 = v71;
  v39 = sub_6620C(&qword_3BF8D0);
  v40 = sub_D0FDC(&qword_3BF8D8, &type metadata accessor for SeriesEntityCardView);
  v41 = sub_D093C();
  v42 = v85;
  v71 = v39;
  sub_2C3E58();
  (*(v63 + 8))(v38, v42);
  sub_6620C(&qword_3BC020);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2E3F30;
  v44 = v68;
  sub_6932C(a1 + v84[9], v68, &qword_3BF8A8);
  sub_69130(v44, v37, &qword_3BF8B0);
  v45 = sub_2BEA58();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v37, 1, v45) == 1)
  {
    sub_69198(v37, &qword_3BF8B0);
    *(v43 + 32) = 0u;
    *(v43 + 48) = 0u;
    *(v43 + 64) = 0u;
  }

  else
  {
    *(v43 + 56) = v45;
    *(v43 + 64) = sub_D0FDC(&qword_3BF918, &type metadata accessor for ExposureData);
    *(v43 + 72) = sub_D0FDC(&qword_3BF920, &type metadata accessor for ExposureData);
    v47 = sub_720C8((v43 + 32));
    (*(v46 + 32))(v47, v37, v45);
  }

  sub_2BECE8();
  v48 = sub_2C1078();
  sub_2BFAE8();

  v49 = v76;
  sub_2BE9A8();
  v90 = v85;
  v91 = v71;
  v92 = v40;
  v93 = v41;
  swift_getOpaqueTypeConformance2();
  sub_D0FDC(&qword_3BF908, &type metadata accessor for SeriesExposureEvent);
  v50 = v79;
  v51 = v72;
  v52 = v86;
  sub_2C3D98();
  v53 = sub_D0A20();
  v54 = v73;
  v55 = v80;
  sub_2C3D88();

  sub_D0BBC(v50);
  (*(v77 + 8))(v49, v78);
  (*(v69 + 8))(v52, v51);
  v56 = v81;
  sub_6932C(a1 + v84[8], v81, &qword_3BF898);
  v57 = v82;
  sub_69130(v56, v82, &qword_3BDF58);
  v90 = v55;
  v91 = v53;
  swift_getOpaqueTypeConformance2();
  v58 = v75;
  sub_2C3C18();
  sub_69198(v57, &qword_3BDF58);
  return (*(v74 + 8))(v54, v58);
}

uint64_t sub_CFEAC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a2;
  v18 = a1;
  v21 = a3;
  v3 = sub_6620C(&qword_3BF8F0);
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v5 = &v17 - v4;
  sub_6620C(&qword_3BF928);
  sub_2BE3B8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2E3F30;
  type metadata accessor for SeriesEntityCardComponentModel();
  sub_6620C(&qword_3BF8C8);
  v7 = sub_2C1078();
  sub_2BF898();

  v22 = v6;
  sub_6620C(&qword_3BF930);
  sub_6620C(&qword_3BF938);
  sub_72B74(&qword_3BF940, &qword_3BF930);
  sub_72B74(&qword_3BF948, &qword_3BF938);
  sub_2C4778();
  v8 = sub_2C1078();
  LODWORD(v7) = [v8 isExplicit];

  if (!v7)
  {
    v11 = 0;
    goto LABEL_5;
  }

  if (v18)
  {
    v9 = v18;
    v10 = sub_2C1488();

    v11 = v10 ^ 1;
LABEL_5:
    KeyPath = swift_getKeyPath();
    v13 = swift_allocObject();
    *(v13 + 16) = v11 & 1;
    v14 = v21;
    (*(v19 + 32))(v21, v5, v20);
    result = sub_6620C(&qword_3BF8D0);
    v16 = (v14 + *(result + 36));
    *v16 = KeyPath;
    v16[1] = sub_D0E3C;
    v16[2] = v13;
    return result;
  }

  sub_2C1498();
  sub_D0FDC(&qword_3BF720, &type metadata accessor for ProfileRestrictions);
  result = sub_2C2B38();
  __break(1u);
  return result;
}

uint64_t sub_D0254@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_2C5418();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2C5288();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2BFDD8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C5278();
  (*(v2 + 104))(v4, enum case for LocalizerLookupStrategy.default(_:), v1);
  sub_2BFD98();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  v14[8] = v12;
  v14[4] = 0xD000000000000013;
  v14[5] = 0x80000000003028E0;
  sub_2BFCB8();
  sub_D0FDC(&qword_3BF950, &type metadata accessor for LocalizedText);
  sub_2C42F8();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_D0574()
{
  v1 = *v0;
  sub_CF258();
  v2 = v1;
  return sub_2BFD18();
}

unint64_t sub_D05D8()
{
  result = qword_3BF870;
  if (!qword_3BF870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF870);
  }

  return result;
}

unint64_t sub_D0694()
{
  result = qword_3BF878;
  if (!qword_3BF878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF878);
  }

  return result;
}

uint64_t sub_D0704(uint64_t a1)
{
  v2 = sub_2C3708();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BF880);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v12 - v9;
  (*(v3 + 16))(v5, a1, v2, v8);
  sub_2C43D8();
  sub_72B74(&qword_3BF888, &qword_3BF880);
  sub_D08DC();
  sub_2C3E48();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_D08DC()
{
  result = qword_3BF890;
  if (!qword_3BF890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF890);
  }

  return result;
}

unint64_t sub_D093C()
{
  result = qword_3BF8E0;
  if (!qword_3BF8E0)
  {
    sub_718D4(&qword_3BF8D0);
    sub_72B74(&qword_3BF8E8, &qword_3BF8F0);
    sub_72B74(&qword_3BF8F8, &qword_3BF900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF8E0);
  }

  return result;
}

unint64_t sub_D0A20()
{
  result = qword_3BF910;
  if (!qword_3BF910)
  {
    sub_718D4(&qword_3BF8A0);
    sub_718D4(&qword_3BF8B8);
    sub_2BECE8();
    sub_2C1598();
    sub_718D4(&qword_3BF8D0);
    sub_D0FDC(&qword_3BF8D8, &type metadata accessor for SeriesEntityCardView);
    sub_D093C();
    swift_getOpaqueTypeConformance2();
    sub_D0FDC(&qword_3BF908, &type metadata accessor for SeriesExposureEvent);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF910);
  }

  return result;
}

uint64_t sub_D0BBC(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BF8A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D0C24()
{
  v0 = sub_2C33E8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2C3608();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C3618();
  sub_2C2B18();
  sub_D0FDC(&qword_3BF958, &type metadata accessor for ButtonStyleConfiguration.Label);
  sub_D0FDC(&qword_3BF960, &type metadata accessor for AutomaticHoverEffect);
  sub_2C3E88();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_D0E74()
{
  sub_718D4(&qword_3BF880);
  sub_72B74(&qword_3BF888, &qword_3BF880);
  sub_D08DC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_D0F20()
{
  sub_718D4(&qword_3BF8C0);
  sub_718D4(&qword_3BF8A0);
  sub_D0A20();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_D0FDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_D1024()
{
  sub_2C3608();
  sub_2C33E8();
  sub_D0FDC(&qword_3BF958, &type metadata accessor for ButtonStyleConfiguration.Label);
  sub_D0FDC(&qword_3BF960, &type metadata accessor for AutomaticHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_D10FC()
{
  v0 = sub_6620C(&qword_3BCB88);
  sub_68DE4(v0, qword_3BF968);
  sub_57AD8(v0, qword_3BF968);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_2BF468();
}

uint64_t sub_D11AC()
{
  v0 = sub_6620C(&qword_3BCB88);
  sub_68DE4(v0, qword_3BF980);
  sub_57AD8(v0, qword_3BF980);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_2BF468();
}

uint64_t sub_D125C()
{
  v0 = sub_6620C(&qword_3BCB88);
  sub_68DE4(v0, qword_3BF998);
  sub_57AD8(v0, qword_3BF998);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_2BF468();
}

uint64_t (*static Defaults.disableHideSmallTitleOnScroll.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_6620C(&qword_3BCB88);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_3BB740 != -1)
  {
    swift_once();
  }

  v9 = sub_57AD8(v4, qword_3BF9B0);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_2BF438();
  return sub_D14FC;
}

uint64_t sub_D1500()
{
  v0 = sub_6620C(&qword_3BCB88);
  sub_68DE4(v0, qword_3BF9B0);
  sub_57AD8(v0, qword_3BF9B0);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_2BF468();
}

uint64_t (*static Defaults.disableReadingGoalFontFallbackWorkaround.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_6620C(&qword_3BCB88);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_3BB748 != -1)
  {
    swift_once();
  }

  v9 = sub_57AD8(v4, qword_3BF9C8);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_2BF438();
  return sub_D24FC;
}

uint64_t sub_D17A0()
{
  v0 = sub_6620C(&qword_3BCB88);
  sub_68DE4(v0, qword_3BF9C8);
  sub_57AD8(v0, qword_3BF9C8);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_2BF468();
}

uint64_t sub_D1874(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_6620C(&qword_3BCB88);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12[-v8];
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = sub_57AD8(v6, a4);
  (*(v7 + 16))(v9, v10, v6);
  sub_2BF448();
  (*(v7 + 8))(v9, v6);
  return v12[15];
}

uint64_t sub_D19CC(void *a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BCB88);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = sub_57AD8(v4, a2);
  (*(v5 + 16))(v7, v8, v4);
  sub_2BF448();
  (*(v5 + 8))(v7, v4);
  return v10[15];
}

uint64_t sub_D1B24(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v8 = sub_6620C(&qword_3BCB88);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14[-v10];
  if (*a4 != -1)
  {
    swift_once();
  }

  v12 = sub_57AD8(v8, a5);
  (*(v9 + 16))(v11, v12, v8);
  v14[15] = a3;
  sub_2BF458();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_D1C88(char a1, void *a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BCB88);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12[-v8];
  if (*a2 != -1)
  {
    swift_once();
  }

  v10 = sub_57AD8(v6, a3);
  (*(v7 + 16))(v9, v10, v6);
  v12[15] = a1 & 1;
  sub_2BF458();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_D1DCC@<X0>(void *a1@<X3>, uint64_t a2@<X4>, _BYTE *a3@<X8>)
{
  v6 = sub_6620C(&qword_3BCB88);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12[-v8];
  if (*a1 != -1)
  {
    swift_once();
  }

  v10 = sub_57AD8(v6, a2);
  (*(v7 + 16))(v9, v10, v6);
  sub_2BF448();
  result = (*(v7 + 8))(v9, v6);
  *a3 = v12[15];
  return result;
}

uint64_t sub_D1F10(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = sub_6620C(&qword_3BCB88);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16[-v11];
  v13 = *a1;
  if (*a5 != -1)
  {
    swift_once();
  }

  v14 = sub_57AD8(v9, a6);
  (*(v10 + 16))(v12, v14, v9);
  v16[15] = v13;
  sub_2BF458();
  return (*(v10 + 8))(v12, v9);
}

uint64_t (*static Defaults.disableTabBarL2LargeTitleScrollOffsetWorkaround.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_6620C(&qword_3BCB88);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_3BB750 != -1)
  {
    swift_once();
  }

  v9 = sub_57AD8(v4, qword_3BF9E0);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_2BF438();
  return sub_D24FC;
}

void sub_D21B4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_D222C()
{
  v0 = sub_6620C(&qword_3BCB88);
  sub_68DE4(v0, qword_3BF9E0);
  sub_57AD8(v0, qword_3BF9E0);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_2BF468();
}

id Defaults.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Defaults();
  return objc_msgSendSuper2(&v2, "init");
}

id Defaults.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Defaults();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_D2558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_6620C(&qword_3BD858);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  sub_6620C(&unk_3CA260);
  v4[14] = swift_task_alloc();
  v6 = sub_6620C(&qword_3BC238);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  sub_2C4BF8();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_D26F4, 0, 0);
}

uint64_t sub_D26F4()
{
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
  v14 = v0[11];
  v15 = v0[7];
  sub_2C4BE8();
  v8 = sub_2C0368();
  (*(*(v8 - 8) + 16))(v1, v7, v8);
  (*(v2 + 104))(v1, enum case for PageUpdateInstruction.presentAlert<A, B>(_:), v3);
  v9 = sub_2BF088();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v0[5] = sub_6620C(&qword_3BD478);
  v0[6] = sub_D30CC();
  sub_720C8(v0 + 2);
  type metadata accessor for Page();
  type metadata accessor for Shelf();
  sub_D3130(&qword_3BD4F0, type metadata accessor for Page);
  sub_D3130(&qword_3BD4F8, type metadata accessor for Shelf);
  sub_2C10D8();
  (*(v6 + 104))(v4, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v14);
  sub_6620C(&qword_3BD1B0);
  sub_2C4F28();

  (*(v6 + 8))(v4, v14);
  sub_68CD0((v0 + 2));
  v10 = enum case for ActionOutcome.performed(_:);
  v11 = sub_2C4C08();
  (*(*(v11 - 8) + 104))(v15, v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_D29F8(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v3 - 8);
  v28 = &v23 - v4;
  v25 = sub_2C0368();
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v25);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BD1B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v27 = &v23 - v12;
  sub_2C4DB8();
  (*(v8 + 16))(v10, v13, v7);
  v14 = v25;
  (*(v5 + 16))(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v25);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + *(v5 + 80) + v15) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v15, v10, v7);
  (*(v5 + 32))(v17 + v16, v24, v14);
  *(v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_6620C(&qword_3BDAB8);

  v18 = sub_2C5738();
  v19 = sub_2C5C58();
  v20 = v28;
  (*(*(v19 - 8) + 56))(v28, 1, 1, v19);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_2E8EC8;
  v21[5] = v17;
  v21[6] = v18;

  sub_1CDB58(0, 0, v20, &unk_2E4D80, v21);

  (*(v8 + 8))(v27, v7);
  return v18;
}

uint64_t sub_D2D9C()
{
  v1 = sub_6620C(&qword_3BD1B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2C0368();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_D2F04(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_6620C(&qword_3BD1B0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2C0368() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_7100C;

  return sub_D2558(a1, v1 + v6, v1 + v9, v10);
}

uint64_t sub_D3084()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_D30CC()
{
  result = qword_3BD480;
  if (!qword_3BD480)
  {
    sub_718D4(&qword_3BD478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD480);
  }

  return result;
}

uint64_t sub_D3130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ContextActionItemCoverProvider.icon(actionItem:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_2C08C8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2BF408();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = a1[3];
  v15 = a1[4];
  sub_72084(a1, v14);
  (*(v15 + 96))(v26, v14, v15);
  v16 = v27;
  v17 = v28;
  sub_72084(v26, v27);
  v18 = (*(v17 + 8))(v16, v17);
  if (*(v18 + 16))
  {
    sub_691F8(v18 + 32, v29);

    v19 = v30;
    v20 = v31;
    sub_72084(v29, v30);
    (*(v20 + 344))(&v32, v19, v20);
    sub_68CD0(v29);
    sub_68CD0(v26);
    if (*(&v33 + 1))
    {
      sub_68D1C(&v32, v35);
      sub_72084(v35, v35[3]);
      sub_2BF8E8();
      (*(v8 + 104))(v10, enum case for ContentKind.audiobook(_:), v7);
      sub_2BF3F8();
      v21 = *(v8 + 8);
      v21(v10, v7);
      v21(v13, v7);
      sub_691F8(v35, &v32);
      sub_2C08B8();
      v22 = v25;
      (*(v4 + 32))(v25, v6, v3);
      (*(v4 + 56))(v22, 0, 1, v3);
      return sub_68CD0(v35);
    }
  }

  else
  {

    sub_68CD0(v26);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  sub_69198(&v32, &unk_3C2550);
  return (*(v4 + 56))(v25, 1, 1, v3);
}

uint64_t sub_D3544()
{
  v1 = v0[3];
  v2 = sub_6620C(&qword_3BFA20);
  v3 = sub_6620C(&qword_3BFA28);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_D3660;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v2, v3, 0, 0, &unk_2E8EF8, v4, v2);
}

uint64_t sub_D3660()
{

  return _swift_task_switch(sub_D3778, 0, 0);
}

uint64_t sub_D3790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[34] = a2;
  v3[35] = a3;
  v3[33] = a1;
  sub_6620C(&unk_3BDBB0);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v4 = sub_6620C(&qword_3BFA70);
  v3[38] = v4;
  v3[39] = *(v4 - 8);
  v3[40] = swift_task_alloc();

  return _swift_task_switch(sub_D38A4, 0, 0);
}

uint64_t sub_D38A4()
{
  v1 = *(v0 + 280);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    while (1)
    {
      v5 = v3[3];
      v6 = v3[4];
      sub_72084(v3, v5);
      (*(v6 + 96))(v5, v6);
      v7 = *(v0 + 80);
      v8 = *(v0 + 88);
      sub_72084((v0 + 56), v7);
      v9 = (*(v8 + 8))(v7, v8);
      if (*(v9 + 16))
      {
        break;
      }

      v4 = v0 + 56;
LABEL_4:
      sub_68CD0(v4);
      v3 += 5;
      if (!--v2)
      {
        goto LABEL_17;
      }
    }

    v10 = *(v0 + 296);
    v31 = *(v0 + 288);
    sub_691F8(v9 + 32, v0 + 96);

    sub_68D1C((v0 + 96), v0 + 16);
    sub_68CD0(v0 + 56);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    sub_72084((v0 + 16), v11);
    if ((*(v12 + 16))(v11, v12) == 3)
    {
      v13 = 26.0;
    }

    else
    {
      v13 = 40.0;
    }

    v14 = sub_2C5C58();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v10, 1, 1, v14);
    sub_691F8(v0 + 16, v0 + 136);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    sub_68D1C((v0 + 136), v16 + 32);
    *(v16 + 72) = 0x403A000000000000;
    *(v16 + 80) = v13;
    v18 = *(v16 + 16);
    v17 = *(v16 + 24);
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = v17;
    v19[4] = &unk_2E8F78;
    v19[5] = v16;
    sub_D4DF4(v10, v31);
    LODWORD(v17) = (*(v15 + 48))(v31, 1, v14);
    swift_unknownObjectRetain();

    v20 = *(v0 + 288);
    if (v17 == 1)
    {
      sub_69198(*(v0 + 288), &unk_3BDBB0);
      if (v19[2])
      {
LABEL_11:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v21 = sub_2C5BB8();
        v23 = v22;
        swift_unknownObjectRelease();
LABEL_14:
        v24 = **(v0 + 272);
        v25 = swift_allocObject();
        *(v25 + 16) = &unk_2E8F88;
        *(v25 + 24) = v19;
        sub_6620C(&qword_3BFA20);
        v26 = v23 | v21;
        if (v23 | v21)
        {
          v26 = v0 + 176;
          *(v0 + 176) = 0;
          *(v0 + 184) = 0;
          *(v0 + 192) = v21;
          *(v0 + 200) = v23;
        }

        v27 = *(v0 + 296);
        *(v0 + 208) = 1;
        *(v0 + 216) = v26;
        *(v0 + 224) = v24;
        swift_task_create();

        sub_69198(v27, &unk_3BDBB0);
        v4 = v0 + 16;
        goto LABEL_4;
      }
    }

    else
    {
      sub_2C5C48();
      (*(v15 + 8))(v20, v14);
      if (v19[2])
      {
        goto LABEL_11;
      }
    }

    v21 = 0;
    v23 = 0;
    goto LABEL_14;
  }

LABEL_17:
  sub_6620C(&qword_3BFA20);
  sub_2C5BE8();
  *(v0 + 328) = &_swiftEmptyDictionarySingleton;
  v28 = swift_task_alloc();
  *(v0 + 336) = v28;
  *v28 = v0;
  v28[1] = sub_D3D44;
  v29 = *(v0 + 304);

  return TaskGroup.Iterator.next(isolation:)(v0 + 232, 0, 0, v29);
}

uint64_t sub_D3D44()
{

  return _swift_task_switch(sub_D3E40, 0, 0);
}

uint64_t sub_D3E40()
{
  v3 = v0[29];
  v2 = v0[30];
  if (v2)
  {
    v4 = v0[31];
    if (!v4)
    {

      goto LABEL_20;
    }

    v5 = v0[41];
    v6 = v4;

    mainScreenScaleFactor();
    v7 = sub_2C5FE8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[32] = v5;
    v9 = sub_5D228(v3, v2);
    v11 = *(v5 + 16);
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      v1 = v10;
      if (*(v0[41] + 24) < v14)
      {
        sub_5EC98(v14, isUniquelyReferenced_nonNull_native);
        v9 = sub_5D228(v3, v2);
        if ((v1 & 1) != (v15 & 1))
        {

          return sub_2C6678();
        }

LABEL_14:
        if (v1)
        {
LABEL_15:
          v20 = v9;

          v21 = v0[32];
          v22 = *(v21 + 56);
          v23 = *(v22 + 8 * v20);
          *(v22 + 8 * v20) = v7;

          v0[41] = v21;
          goto LABEL_20;
        }

LABEL_18:
        v25 = v0[32];
        v25[(v9 >> 6) + 8] |= 1 << v9;
        v26 = (v25[6] + 16 * v9);
        *v26 = v3;
        v26[1] = v2;
        *(v25[7] + 8 * v9) = v7;

        v31 = v25[2];
        v13 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v13)
        {
          __break(1u);
          return TaskGroup.Iterator.next(isolation:)(v27, v28, v29, v30);
        }

        v25[2] = v32;
        v0[41] = v25;
LABEL_20:
        v33 = swift_task_alloc();
        v0[42] = v33;
        *v33 = v0;
        v33[1] = sub_D3D44;
        v30 = v0[38];
        v27 = (v0 + 29);
        v28 = 0;
        v29 = 0;

        return TaskGroup.Iterator.next(isolation:)(v27, v28, v29, v30);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }
    }

    v24 = v9;
    sub_635C4();
    v9 = v24;
    if (v1)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v17 = v0[41];
  v18 = v0[33];
  (*(v0[39] + 8))(v0[40], v0[38]);
  *v18 = v17;

  v19 = v0[1];

  return v19();
}

uint64_t sub_D4138(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_88BE0;

  return sub_D3790(a1, a2, v6);
}

uint64_t sub_D4204(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 16) = a5;
  return _swift_task_switch(sub_D4228, 0, 0);
}

uint64_t sub_D4228()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_72084(v1, v2);
  v0[5] = (*(v3 + 8))(v2, v3);
  v0[6] = v4;
  v5 = v1[3];
  v6 = v1[4];
  sub_72084(v1, v5);
  v11 = (*(v6 + 328) + **(v6 + 328));
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_D4390;
  v8.n128_u64[0] = v0[3];
  v9.n128_u64[0] = v0[4];

  return v11(v5, v6, v8, v9);
}

uint64_t sub_D4390(uint64_t a1)
{
  v3 = *v1;
  v8 = *v1;

  v4 = *(v8 + 8);
  v5 = *(v3 + 48);
  v6 = *(v3 + 40);

  return v4(v6, v5, a1);
}

uint64_t sub_D44C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_D45AC;

  return v7();
}

uint64_t sub_D45AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_D4708()
{
  v1 = v0[3];
  v2 = sub_6620C(&qword_3BFA20);
  v3 = sub_6620C(&qword_3BFA28);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_D4824;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v2, v3, 0, 0, &unk_2E8F58, v4, v2);
}

uint64_t sub_D4824()
{

  return _swift_task_switch(sub_D517C, 0, 0);
}

unint64_t sub_D4950()
{
  result = qword_3BFA58;
  if (!qword_3BFA58)
  {
    sub_718D4(&qword_3BFA60);
    sub_D49D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BFA58);
  }

  return result;
}

unint64_t sub_D49D4()
{
  result = qword_3BFA68;
  if (!qword_3BFA68)
  {
    sub_2C08C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BFA68);
  }

  return result;
}

uint64_t sub_D4A2C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7100C;

  return sub_D3790(a1, a2, v6);
}

uint64_t sub_D4ADC()
{
  swift_unknownObjectRelease();
  sub_68CD0(v0 + 32);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_D4B1C()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[9];
  v5 = v0[10];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_D4BD4;

  return sub_D4204(v4, v5, v2, v3, (v0 + 4));
}

uint64_t sub_D4BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_D4CE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_D4D28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_88BE0;

  return sub_D44C0(a1, v4, v5, v6);
}

uint64_t sub_D4DF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3BDBB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D4E64(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_D4F58;

  return v5(v2 + 16);
}

uint64_t sub_D4F58()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = *(v1 + 32);
  *v2 = *(v1 + 16);
  *(v2 + 16) = v4;
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_D508C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D50C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7100C;

  return sub_D4E64(a1, v4);
}

double sub_D51C0@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_D5708();
  sub_2BE6F8();

  result = *(v1 + 48);
  v4 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v4;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_D5240(uint64_t result)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v1 + 16), *result), vceqq_f64(*(v1 + 32), *(result + 16))))) & 1) != 0 && *(v1 + 48) == *(result + 32))
  {
    v2 = *(result + 16);
    *(v1 + 16) = *result;
    *(v1 + 32) = v2;
    *(v1 + 48) = *(result + 32);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_D5708();
    sub_2BE6E8();
  }

  return result;
}

uint64_t sub_D5354()
{
  swift_getKeyPath();
  sub_D5708();
  sub_2BE6F8();

  v8 = v0[2];
  swift_getKeyPath();
  sub_2BE6F8();

  v6 = v0[4];
  *&v1 = v8;
  *(&v1 + 1) = v0[3];
  v9 = v1;
  swift_getKeyPath();
  sub_2BE6F8();

  *&v2 = v6;
  *(&v2 + 1) = v0[5];
  v7 = v2;
  swift_getKeyPath();
  sub_2BE6F8();

  v3 = v0[6];
  v4 = swift_allocObject();
  sub_2BE728();
  *(v4 + 16) = v9;
  *(v4 + 32) = v7;
  *(v4 + 48) = v3;
  return v4;
}

uint64_t sub_D54F8()
{
  v1 = OBJC_IVAR____TtC11BookStoreUI45CardAuxiliaryNavigationBarBackgroundViewModel___observationRegistrar;
  v2 = sub_2BE738();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CardAuxiliaryNavigationBarBackgroundViewModel()
{
  result = qword_3BFAA8;
  if (!qword_3BFAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D55E8()
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

uint64_t sub_D5684(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_D56A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 sub_D56F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  *(v1 + 48) = *(v2 + 32);
  *(v1 + 16) = result;
  *(v1 + 32) = v4;
  return result;
}

unint64_t sub_D5708()
{
  result = qword_3BFB38;
  if (!qword_3BFB38)
  {
    type metadata accessor for CardAuxiliaryNavigationBarBackgroundViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BFB38);
  }

  return result;
}

uint64_t sub_D5760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  v6 = type metadata accessor for PageLifeCycleViewModifier();
  v7 = v6[6];
  *(a3 + v7) = swift_getKeyPath();
  sub_6620C(&qword_3BFB40);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[7];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a3 + v6[11];
  sub_2C4368();
  *v9 = v11;
  *(v9 + 8) = v12;
  *(a3 + v6[8]) = a2;
  *(a3 + v6[10]) = a1;
  type metadata accessor for PageLifecycleHandler();

  sub_2C4DB8();

  *(a3 + v6[9]) = v11;
  return result;
}

uint64_t sub_D58A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v4 = type metadata accessor for PageLifeCycleViewModifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_2C30F8();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 8);

  if ((v10 & 1) == 0)
  {
    sub_2C5DD8();
    v11 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v25 + 8))(v9, v26);
  }

  v12 = sub_2BEE88();

  v27 = v2;
  sub_D6E54(v2, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_D6EC0(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = sub_6620C(&qword_3BFC30);
  (*(*(v15 - 8) + 16))(a2, v24, v15);
  v16 = sub_6620C(&qword_3BFC38);
  *(a2 + *(v16 + 52)) = v12;
  v17 = (a2 + *(v16 + 56));
  *v17 = sub_D6F24;
  v17[1] = v14;

  if ((v10 & 1) == 0)
  {
    sub_2C5DD8();
    v18 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v25 + 8))(v9, v26);
  }

  v19 = sub_2BEE68();

  sub_D6E54(v27, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  sub_D6EC0(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v13);
  result = sub_6620C(&qword_3BFC40);
  *(a2 + *(result + 52)) = v19;
  v22 = (a2 + *(result + 56));
  *v22 = sub_D70B8;
  v22[1] = v20;
  return result;
}

uint64_t sub_D5C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2BEE78();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for HostingControllerVisibilityStateManager.SwiftUILifeCycleEvent.onAppear(_:))
  {
    v10 = a2 + *(type metadata accessor for PageLifeCycleViewModifier() + 44);
    v11 = *v10;
    v12 = *(v10 + 8);
    v16[0] = *v10;
    v17 = v12;
    sub_6620C(&qword_3BFC48);
    sub_2C4378();
    if ((v15 & 1) == 0)
    {
      v16[0] = 4;
      sub_D5E0C(v16);
      v16[0] = v11;
      v17 = v12;
      v15 = 1;
      sub_2C4388();
    }

    v16[0] = 0;
    return sub_D5E0C(v16);
  }

  if (v9 == enum case for HostingControllerVisibilityStateManager.SwiftUILifeCycleEvent.onDisappear(_:))
  {
    v16[0] = 1;
    return sub_D5E0C(v16);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_D5E0C(unsigned __int8 *a1)
{
  v54 = sub_6620C(&qword_3BD858);
  v51 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v46 - v3;
  v4 = sub_6620C(&qword_3BD1B0);
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v52 = &v46 - v5;
  v6 = sub_6620C(&qword_3BC418);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v59 = sub_2C2508();
  v9 = *(v59 - 8);
  __chkstk_darwin(v59);
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = sub_2C30F8();
  v55 = *(v14 - 8);
  v56 = v14;
  __chkstk_darwin(v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v57) = *a1;
  v17 = type metadata accessor for PageLifeCycleViewModifier();
  v18 = *(v1 + v17[9]);
  v58 = *(v1 + v17[10]);
  v19 = v1 + v17[7];
  v20 = *v19;
  if (*(v19 + 8) == 1)
  {
    v21 = v20;
    if (v20)
    {
LABEL_3:
      v62 = v20;
      goto LABEL_6;
    }
  }

  else
  {

    sub_2C5DD8();
    v22 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v20, 0);
    (*(v55 + 8))(v16, v56);
    v20 = v61[0];
    if (v61[0])
    {
      goto LABEL_3;
    }
  }

  sub_2BF028();
  sub_2C4DB8();
  v20 = v62;
LABEL_6:
  v23 = *(v1 + 16);
  v24 = *(v1 + 24);

  if ((v24 & 1) == 0)
  {
    sub_2C5DD8();
    v25 = sub_2C3718();
    v47 = v20;
    v26 = v8;
    v27 = v18;
    v28 = v13;
    v29 = v9;
    v30 = v25;
    sub_2C0058();

    v9 = v29;
    v13 = v28;
    v18 = v27;
    v8 = v26;
    v20 = v47;
    sub_2C30E8();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v55 + 8))(v16, v56);
    v23 = v61[0];
  }

  sub_29B0D8(v13);
  sub_2BE578();
  v31 = sub_2BE588();
  (*(*(v31 - 8) + 56))(v8, 0, 1, v31);
  swift_beginAccess();
  v32 = v8;
  v33 = v57;
  sub_1B5E38(v32, v57);
  swift_endAccess();
  v34 = v58;
  if (*(v58 + 16) && (v35 = sub_5D350(v33), (v36 & 1) != 0))
  {
    sub_691F8(*(v34 + 56) + 40 * v35, v61);
    v37 = v50;
    sub_2C4DB8();
    v57 = v13;
    v38 = v51;
    (*(v51 + 104))(v53, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v54);
    sub_6620C(&qword_3BC330);
    sub_2C4968();
    v58 = v9;
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2E9090;
    type metadata accessor for Page.LifecycleInfo();
    v60 = *(v18 + 16);

    sub_2C4958();
    sub_2BF028();
    v60 = v20;
    v40 = v20;
    sub_2C4958();
    sub_6620C(&qword_3BFBC8);
    v60 = v23;

    sub_2C4958();
    v41 = v59;
    (*(v58 + 16))(v48, v57, v59);
    sub_2C4958();
    v60 = v39;
    sub_6620C(&unk_3BD220);
    sub_72B74(&qword_3BCE60, &unk_3BD220);
    sub_2C4DF8();

    v42 = v52;
    v43 = v53;
    sub_2C4F28();

    v9 = v58;

    (*(v38 + 8))(v43, v54);
    v13 = v57;
    (*(v49 + 8))(v42, v37);
    sub_68CD0(v61);
    v44 = v41;
  }

  else
  {

    v44 = v59;
  }

  return (*(v9 + 8))(v13, v44);
}

uint64_t sub_D65F0(uint64_t a1)
{
  v2 = sub_2BEE48();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for HostingControllerVisibilityStateManager.State.visible(_:))
  {
    v10 = 2;
    return sub_D5E0C(&v10);
  }

  else if (v7 == enum case for HostingControllerVisibilityStateManager.State.hidden(_:))
  {
    v11 = 3;
    return sub_D5E0C(&v11);
  }

  else
  {
    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_D6770@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C2F48();
  *a1 = result;
  return result;
}

uint64_t sub_D679C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C2F48();
  *a1 = result;
  return result;
}

uint64_t sub_D6820@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C2F38();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for PageLifeCycleViewModifier()
{
  result = qword_3BFBA8;
  if (!qword_3BFBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D68BC(uint64_t a1)
{
  v2 = sub_2C2508();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2C2E98();
}

uint64_t sub_D69A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BFB48);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_D6A84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3BFB48);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_D6B4C()
{
  sub_D6CC8(319, &qword_3BFBB8, &type metadata accessor for HostingControllerVisibilityStateManager);
  if (v0 <= 0x3F)
  {
    sub_CEAF8(319, &qword_3BFBC0, &qword_3BFBC8);
    if (v1 <= 0x3F)
    {
      sub_D6CC8(319, &qword_3BFBD0, &type metadata accessor for ScenePhase);
      if (v2 <= 0x3F)
      {
        sub_CEAF8(319, &qword_3BDD98, &qword_3BDDA0);
        if (v3 <= 0x3F)
        {
          sub_2C4E28();
          if (v4 <= 0x3F)
          {
            type metadata accessor for PageLifecycleHandler();
            if (v5 <= 0x3F)
            {
              sub_D6D1C();
              if (v6 <= 0x3F)
              {
                sub_D6DE8();
                if (v7 <= 0x3F)
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

void sub_D6CC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_D6D1C()
{
  if (!qword_3BFBD8)
  {
    sub_718D4(&qword_3BC248);
    sub_D6D94();
    v0 = sub_2C5818();
    if (!v1)
    {
      atomic_store(v0, &qword_3BFBD8);
    }
  }
}

unint64_t sub_D6D94()
{
  result = qword_3BFBE0;
  if (!qword_3BFBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BFBE0);
  }

  return result;
}

void sub_D6DE8()
{
  if (!qword_3BFBE8)
  {
    v0 = sub_2C43A8();
    if (!v1)
    {
      atomic_store(v0, &qword_3BFBE8);
    }
  }
}

uint64_t sub_D6E54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageLifeCycleViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D6EC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageLifeCycleViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D6F3C()
{
  v1 = type metadata accessor for PageLifeCycleViewModifier();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  j__swift_release();
  v6 = *(v1 + 24);
  sub_6620C(&qword_3BFB40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2C2508();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_9E94C(*(v5 + *(v1 + 28)), *(v5 + *(v1 + 28) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_D70D0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PageLifeCycleViewModifier() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_D71B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_6620C(&qword_3BDF58);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_D7280(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_6620C(&qword_3BDF58);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RatingSummaryComponentModel()
{
  result = qword_3BFCB0;
  if (!qword_3BFCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_D737C()
{
  sub_A62E4();
  if (v0 <= 0x3F)
  {
    sub_A6360();
    if (v1 <= 0x3F)
    {
      sub_D74AC();
      if (v2 <= 0x3F)
      {
        sub_A63F4();
        if (v3 <= 0x3F)
        {
          sub_D7504(319, &qword_3BFCC0, &qword_3BCAC0);
          if (v4 <= 0x3F)
          {
            sub_D7504(319, &unk_3BFCC8, &qword_3BCA70);
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

void sub_D74AC()
{
  if (!qword_3BE2D8)
  {
    sub_2C5018();
    v0 = sub_2C60B8();
    if (!v1)
    {
      atomic_store(v0, &qword_3BE2D8);
    }
  }
}

void sub_D7504(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_718D4(a3);
    v4 = sub_2C4D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_D7558(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x73734164656E776FLL;
    v7 = 0xD000000000000026;
    if (a1 == 10)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000014;
    if (a1 == 7)
    {
      v8 = 0xD000000000000016;
    }

    if (a1 == 6)
    {
      v8 = 0x7461526F54706174;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0xD000000000000012;
    v3 = 0x62614C664F74756FLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6575676573;
    if (a1 != 1)
    {
      v4 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_D76EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - v5;
  v55 = sub_6620C(&qword_3BFD30);
  v7 = *(v55 - 8);
  __chkstk_darwin(v55);
  v9 = &v52 - v8;
  v10 = type metadata accessor for RatingSummaryComponentModel();
  __chkstk_darwin(v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 9) = 0;
  v61 = v12 + 40;
  sub_A9708(&v62, (v12 + 40), &unk_3BDC90);
  v58 = v10;
  v13 = *(v10 + 24);
  v14 = sub_2C5018();
  v15 = *(*(v14 - 8) + 56);
  v60 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = a1[3];
  v57 = a1;
  sub_72084(a1, v16);
  sub_D823C();
  v56 = v9;
  sub_2C67A8();
  if (v2)
  {
    v59 = v2;
    sub_68CD0(v57);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    LODWORD(v56) = 0;
  }

  else
  {
    v17 = v6;
    v53 = v7;
    sub_6620C(&qword_3BE378);
    v65 = 0;
    sub_72B74(&qword_3BE390, &qword_3BE378);
    sub_2C64A8();
    v26 = v63;
    *v12 = v62;
    *(v12 + 1) = v26;
    *(v12 + 4) = v64;
    sub_6620C(&qword_3BE370);
    v65 = 1;
    sub_72B74(&qword_3BE398, &qword_3BE370);
    sub_2C64A8();
    v27 = v58;
    sub_A9708(&v62, v61, &qword_3BE370);
    LOBYTE(v62) = 2;
    sub_D8290(&qword_3BE3A0, &type metadata accessor for ImpressionMetrics);
    sub_2C6458();
    sub_A9708(v17, &v12[v60], &qword_3BDF58);
    LOBYTE(v62) = 3;
    v28 = sub_2C6468();
    v29 = &v12[v27[7]];
    *v29 = v28;
    v29[1] = v30;
    LOBYTE(v62) = 4;
    v31 = sub_2C6468();
    v32 = &v12[v27[8]];
    *v32 = v31;
    v32[1] = v33;
    LOBYTE(v62) = 5;
    v34 = sub_2C6468();
    v35 = &v12[v27[9]];
    *v35 = v34;
    v35[1] = v36;
    LOBYTE(v62) = 6;
    v37 = sub_2C6468();
    v38 = &v12[v27[10]];
    *v38 = v37;
    v38[1] = v39;
    LOBYTE(v62) = 7;
    v40 = sub_2C6468();
    v41 = &v12[v27[11]];
    *v41 = v40;
    v41[1] = v42;
    LOBYTE(v62) = 8;
    v43 = sub_2C6468();
    v59 = 0;
    v45 = &v12[v27[12]];
    *v45 = v43;
    v45[1] = v44;
    LOBYTE(v62) = 9;
    v46 = v59;
    v47 = sub_2C6418();
    v59 = v46;
    if (v46)
    {
      (*(v53 + 8))(v56, v55);
      v24 = 0;
      LODWORD(v56) = 0;
      v18 = 1;
      v19 = 1;
      v20 = 1;
      v21 = 1;
      v22 = 1;
      v23 = 1;
    }

    else
    {
      v49 = &v12[v58[13]];
      *v49 = v47;
      v49[1] = v48;
      sub_6620C(&qword_3BFD40);
      v65 = 10;
      sub_D82D8();
      v50 = v59;
      sub_2C64A8();
      v59 = v50;
      if (v50)
      {
        (*(v53 + 8))(v56, v55);
        LODWORD(v56) = 0;
        v18 = 1;
        v19 = 1;
        v20 = 1;
        v21 = 1;
        v22 = 1;
        v23 = 1;
        v24 = 1;
      }

      else
      {
        *&v12[v58[14]] = v62;
        sub_6620C(&qword_3BFD58);
        v65 = 11;
        sub_D837C();
        v51 = v59;
        sub_2C64A8();
        v59 = v51;
        if (!v51)
        {
          (*(v53 + 8))(v56, v55);
          *&v12[v58[15]] = v62;
          sub_D8488(v12, v54);
          sub_68CD0(v57);
          return sub_D84EC(v12);
        }

        (*(v53 + 8))(v56, v55);
        v18 = 1;
        v19 = 1;
        v20 = 1;
        v21 = 1;
        v22 = 1;
        v23 = 1;
        v24 = 1;
        LODWORD(v56) = 1;
      }
    }

    sub_68CD0(v57);
    sub_69198(v12, &qword_3BE378);
  }

  sub_69198(v61, &qword_3BE370);
  result = sub_69198(&v12[v60], &qword_3BDF58);
  if (v18)
  {

    if (!v19)
    {
LABEL_6:
      if (!v20)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  if (!v20)
  {
LABEL_7:
    if (!v21)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:

  if (!v21)
  {
LABEL_8:
    if (!v22)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:

  if (!v22)
  {
LABEL_9:
    if (!v23)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:

  if (!v23)
  {
LABEL_10:
    if (!v24)
    {
      goto LABEL_11;
    }

LABEL_19:

    if (!v56)
    {
      return result;
    }
  }

LABEL_18:

  if (v24)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (!v56)
  {
    return result;
  }
}

uint64_t sub_D80A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_D87A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_D80D4(uint64_t a1)
{
  v2 = sub_D823C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D8110(uint64_t a1)
{
  v2 = sub_D823C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_D823C()
{
  result = qword_3BFD38;
  if (!qword_3BFD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BFD38);
  }

  return result;
}

uint64_t sub_D8290(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_D82D8()
{
  result = qword_3BFD48;
  if (!qword_3BFD48)
  {
    sub_718D4(&qword_3BFD40);
    sub_D8420(&qword_3BFD50, &qword_3BCAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BFD48);
  }

  return result;
}

unint64_t sub_D837C()
{
  result = qword_3BFD60;
  if (!qword_3BFD60)
  {
    sub_718D4(&qword_3BFD58);
    sub_D8420(&qword_3BFD68, &qword_3BCA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BFD60);
  }

  return result;
}

uint64_t sub_D8420(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_D8488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RatingSummaryComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D84EC(uint64_t a1)
{
  v2 = type metadata accessor for RatingSummaryComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for RatingSummaryComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RatingSummaryComponentModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_D869C()
{
  result = qword_3BFD70;
  if (!qword_3BFD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BFD70);
  }

  return result;
}

unint64_t sub_D86F4()
{
  result = qword_3BFD78;
  if (!qword_3BFD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BFD78);
  }

  return result;
}

unint64_t sub_D874C()
{
  result = qword_3BFD80;
  if (!qword_3BFD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BFD80);
  }

  return result;
}

uint64_t sub_D87A0(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000012 && 0x8000000000303050 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x62614C664F74756FLL && a2 == 0xEA00000000006C65 || (sub_2C65B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000303070 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461526F54706174 && a2 == 0xEE006C6562614C65 || (sub_2C65B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000000303090 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000003030B0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x73734164656E776FLL && a2 == 0xEC00000044497465 || (sub_2C65B8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000003030D0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000026 && 0x80000000003030F0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_2C65B8();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

void sub_D8B6C()
{
  v1 = v0;
  sub_6620C(&qword_3BFDD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E9460;
  v3 = *&v0[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_dismissItem];
  *(inited + 32) = v3;
  v4 = *&v0[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_moreItem];
  *(inited + 40) = v4;
  v5 = *&v0[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_shareItem];
  *(inited + 48) = v5;
  v6 = *&v0[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_wantToReadItem];
  *(inited + 56) = v6;
  v7 = inited & 0xC000000000000001;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_17;
  }

  for (i = v8; ; i = sub_2C6208())
  {
    v13 = i;
    (*&stru_B8.segname[swift_isaMask & *i])();

    if (v7)
    {
      v14 = sub_2C6208();
    }

    else
    {
      if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
      {
        goto LABEL_17;
      }

      v14 = *(inited + 40);
    }

    v15 = v14;
    (*&stru_B8.segname[swift_isaMask & *v14])();

    if (v7)
    {
      v16 = sub_2C6208();
    }

    else
    {
      if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 3uLL)
      {
        goto LABEL_17;
      }

      v16 = *(inited + 48);
    }

    v17 = v16;
    (*&stru_B8.segname[swift_isaMask & *v16])();

    if (v7)
    {
      break;
    }

    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 4uLL)
    {
      v18 = *(inited + 56);
      goto LABEL_13;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v18 = sub_2C6208();
LABEL_13:
  v19 = v18;
  (*&stru_B8.segname[swift_isaMask & *v18])();

  swift_setDeallocating();
  swift_arrayDestroy();
  v20 = &v1[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo];
  swift_beginAccess();
  v21 = *(v20 + 3);
  if (v21)
  {
    v22 = sub_72084(v20, *(v20 + 3));
    v23 = *(v21 - 8);
    v24 = __chkstk_darwin(v22);
    v26 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    sub_2BFA58();
    (*(v23 + 8))(v26, v21);
    v27 = sub_2C5888();
  }

  else
  {
    v27 = 0;
  }

  [v1 _updateNavigationItemWithTitle:v27];
}

id sub_D8F04(char *a1)
{
  sub_6620C(&qword_3BFDD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E9470;
  v3 = *&a1[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_dismissItem];
  *(inited + 32) = v3;
  v4 = *&a1[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_moreItem];
  *(inited + 40) = v4;
  v5 = *&a1[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_wantToReadItem];
  *(inited + 48) = v5;
  v6 = inited & 0xC000000000000001;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_14;
  }

  for (i = v7; ; i = sub_2C6208())
  {
    v11 = i;
    [i setHidden:0];

    if (v6)
    {
      v12 = sub_2C6208();
    }

    else
    {
      if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
      {
        goto LABEL_14;
      }

      v12 = *(inited + 40);
    }

    v13 = v12;
    [v12 setHidden:0];

    if (v6)
    {
      break;
    }

    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 3uLL)
    {
      v14 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v14 = sub_2C6208();
LABEL_10:
  v15 = v14;
  [v14 setHidden:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  if (a1[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_isCardPresentationTransitionComplete] == 1)
  {
    v16 = [a1 traitCollection];
    v17 = [v16 horizontalSizeClass];

    v18 = v17 == &dword_0 + 1;
  }

  else
  {
    v18 = 1;
  }

  return [*&a1[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_shareItem] setHidden:v18];
}

void sub_D90F8(char *a1)
{
  sub_D8F04(a1);
  v2 = [a1 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationBar];

    [v4 layoutIfNeeded];
  }
}

void BSUIProductFeedViewController.init(options:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_dismissItem;
  *&v1[v4] = sub_275CF8();
  v5 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_moreItem;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for AssetMenuBarButtonItem()) init];
  v6 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_shareItem;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for ShareBarButtonItem()) init];
  v7 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_wantToReadItem;
  *&v1[v7] = [objc_allocWithZone(type metadata accessor for WantToReadBarButtonItem()) init];
  *&v1[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_wtrTooltipVCProvider] = 0;
  v1[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_isInitialContentReady] = 0;
  v1[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_isCardPresentationTransitionComplete] = 0;
  *&v1[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_scrolledPastLockupState] = 0;
  if (a1)
  {

    v8.super.isa = sub_2C57C8().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v68.receiver = v1;
  v68.super_class = type metadata accessor for BSUIProductFeedViewController();
  v9 = objc_msgSendSuper2(&v68, "initWithOptions:", v8.super.isa);

  if (!v9)
  {
    goto LABEL_37;
  }

  sub_6620C(&qword_3BFDD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E9460;
  v11 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_dismissItem;
  v12 = *&v9[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_dismissItem];
  *(inited + 32) = v12;
  v65 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_moreItem;
  v13 = *&v9[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_moreItem];
  *(inited + 40) = v13;
  v64 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_shareItem;
  v14 = *&v9[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_shareItem];
  *(inited + 48) = v14;
  v15 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_wantToReadItem;
  v16 = *&v9[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_wantToReadItem];
  *(inited + 56) = v16;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  v20 = v16;
  v67 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v21 = sub_2C6208();
  }

  else
  {
    v21 = v17;
  }

  v22 = v21;
  swift_unknownObjectWeakAssign();
  [v22 setHidden:1];

  if (v67)
  {
    v23 = sub_2C6208();
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
    {
      __break(1u);
      goto LABEL_34;
    }

    v23 = *(inited + 40);
  }

  v24 = v23;
  swift_unknownObjectWeakAssign();
  [v24 setHidden:1];

  if (v67)
  {
    v25 = sub_2C6208();
    goto LABEL_15;
  }

  if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 3uLL)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v25 = *(inited + 48);
LABEL_15:
  v26 = v25;
  swift_unknownObjectWeakAssign();
  [v26 setHidden:1];

  if (!v67)
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 4uLL)
    {
      v27 = *(inited + 56);
      goto LABEL_19;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  v27 = sub_2C6208();
LABEL_19:
  v28 = v27;
  swift_unknownObjectWeakAssign();
  [v28 setHidden:1];

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2E9480;
  v30 = *&v9[v11];
  *(v29 + 32) = v30;
  sub_66278(0, &unk_3BFDE0);
  v31 = v9;
  v32 = v30;
  isa = sub_2C5B18().super.isa;

  [v31 setExtraLeftItems:isa];

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2E9470;
  v35 = *&v9[v65];
  *(v34 + 32) = v35;
  v36 = *&v9[v64];
  *(v34 + 40) = v36;
  v37 = *&v9[v15];
  *(v34 + 48) = v37;
  v38 = v31;
  v39 = v35;
  v40 = v36;
  v41 = v37;
  v42 = sub_2C5B18().super.isa;

  [v38 setExtraRightItems:v42];

  v43 = [v38 navigationItem];
  v44 = [v38 extraLeftItems];
  [v43 setLeftBarButtonItems:v44];

  v45 = [v38 navigationItem];
  v46 = [v38 extraRightItems];

  [v45 setRightBarButtonItems:v46];
  sub_6620C(&unk_3C0230);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2E3F30;
  v48 = sub_2C0278();
  *(v47 + 32) = v48;
  *(v47 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_2C5E48();
  swift_unknownObjectRelease();

  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_2E4110;
  *(v49 + 32) = v48;
  *(v49 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v50 = sub_2C09B8();
  v51 = sub_DD1C8(&qword_3BFDF0, &type metadata accessor for IsInCardTrait);
  *(v49 + 48) = v50;
  *(v49 + 56) = v51;
  v52 = sub_2C1458();
  v53 = sub_DD1C8(&qword_3BFDF8, &type metadata accessor for IsInactiveCardTrait);
  *(v49 + 64) = v52;
  *(v49 + 72) = v53;
  sub_2C5E48();
  swift_unknownObjectRelease();

  if (!v67 && *(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 4uLL)
  {
    goto LABEL_36;
  }

  for (i = 0; i != 4; ++i)
  {
    if (v67)
    {
      v57 = sub_2C6208();
    }

    else
    {
      v57 = *(inited + 8 * i + 32);
    }

    v58 = v57;
    v59 = *&stru_B8.sectname[swift_isaMask & *v57];
    v60 = *(v59() + 16);

    if (v60)
    {
      v59();
      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v56 + 24) = ObjectType;
      sub_2C5E48();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  v61 = [v38 triggerStateManager];
  if (v61)
  {
    v62 = v61;
    v63 = sub_2C5888();
    [v62 addObserver:v38 forTrigger:v63];
  }
}

void sub_D99F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*&stru_B8.segname[(swift_isaMask & *Strong) - 8])();
  }
}

void sub_D9AD4(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for BSUIProductFeedViewController();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  sub_DB8BC(0);
  v4 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_isCardPresentationTransitionComplete;
  if (v2[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_isCardPresentationTransitionComplete] == 1)
  {
    v5 = *&v2[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_dismissItem];
    v6 = sub_2754B4();
    [v5 setMenu:v6];

    if (v2[v4] == 1)
    {
      v7 = [v2 traitCollection];
      v8 = [v7 horizontalSizeClass];

      v9 = v8 == &dword_0 + 1;
    }

    else
    {
      v9 = 1;
    }

    [*&v2[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_shareItem] setHidden:v9];
  }
}

void sub_D9FDC(void *a1, void *a2)
{
  v23.receiver = v2;
  v23.super_class = type metadata accessor for BSUIProductFeedViewController();
  objc_msgSendSuper2(&v23, "_handleEngagementMessageRequest:forIdentifier:", a1, a2);
  if (a1)
  {
    v5 = a1;
    if ([v5 style] == &dword_4 && a2 != 0)
    {
      v7 = [a2 identifier];
      if (!v7)
      {
        sub_2C58C8();
        v7 = sub_2C5888();
      }

      v8 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_wtrTooltipVCProvider;
      v9 = *&v2[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_wtrTooltipVCProvider];
      if (v9)
      {
        v10 = v2;
        v11 = qword_3BB818;
        v12 = v9;
        if (v11 != -1)
        {
          swift_once();
        }

        v13 = sub_2C00B8();
        sub_57AD8(v13, qword_3C30E0);
        v14 = sub_2C0098();
        v15 = sub_2C5DC8();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_0, v14, v15, "Received double WTR tooltip messages. Dismissing the previous one", v16, 2u);
        }

        v17 = [v12 viewController];
        v18 = [v17 presentingViewController];

        v2 = v10;
        if (v18)
        {
          [v18 dismissViewControllerAnimated:1 completion:0];
        }
      }

      v19 = objc_allocWithZone(BCMessageViewControllerProvider);
      v20 = v5;
      v21 = [v19 initWithRequest:v20 placement:v7];

      [v21 setDelegate:v2];
      v22 = *&v2[v8];
      *&v2[v8] = v21;
      v5 = v21;

      sub_DBD2C();
    }
  }
}

void sub_DA388()
{
  v11 = [v0 scrollView];
  if (v11)
  {
    v1 = [v0 bc_cardViewController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 configuration];
      if (v3 && (v4 = v3, v5 = [v3 cardsCanExpand], v4, v5) && objc_msgSend(v2, "expanded"))
      {
        v6 = [v0 traitCollection];
        v7 = [v6 isInactiveCard];
      }

      else
      {
        v7 = &dword_0 + 1;
      }

      v8 = [v11 bottomEdgeEffect];
      v9 = [v8 isHidden];

      if (v7 != v9)
      {
        v10 = [v11 bottomEdgeEffect];
        [v10 setHidden:v7];
      }
    }
  }
}

char *sub_DA510()
{
  v1 = sub_2C4968();
  v83 = *(v1 - 8);
  v84 = v1;
  __chkstk_darwin(v1);
  v82 = v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_6620C(&qword_3BFE88);
  v86 = *(v78 - 8);
  v3 = __chkstk_darwin(v78);
  v81 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v65 - v5;
  v7 = sub_2BEF78();
  v77 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AssetActionImplementation();
  __chkstk_darwin(v10);
  v12 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6620C(&qword_3BD1B0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v80 = v65 - v18;
  v85 = v0;
  v19 = v91;
  UIViewController.jetActionHandlerInContext.getter();
  if (!v19)
  {
    v66 = v17;
    v67 = v9;
    v68 = v12;
    v69 = v7;
    v70 = v10;
    v91 = v6;
    v75 = v14;
    v74 = 0;
    v21 = v84;
    v22 = v20;
    ObjectType = swift_getObjectType();
    v24 = (*(v22 + 8))(ObjectType, v22);
    swift_unknownObjectRelease();
    v25 = v80;
    v76 = v13;
    v73 = v24;
    sub_2C4DB8();
    v26 = type metadata accessor for NavigationProvider();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    v28 = v85;
    swift_unknownObjectWeakAssign();
    v29 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo;
    swift_beginAccess();
    sub_6932C(v28 + v29, v90, &unk_3C2550);
    sub_6620C(&unk_3BFE90);
    v30 = *(v86 + 72);
    v31 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v71 = swift_allocObject();
    v32 = v71 + v31;
    LOBYTE(v87) = 1;
    sub_2C4958();
    v34 = v83 + 56;
    v33 = *(v83 + 56);
    v33(v32, 0, 1, v21);
    sub_6620C(&qword_3BCE30);
    *(&v88 + 1) = v26;
    v89 = &protocol witness table for NavigationProvider;
    *&v87 = v27;
    v72 = v27;

    sub_2C4958();
    v86 = v30;
    v79 = v32;
    v65[0] = v33;
    v33(v32 + v30, 0, 1, v21);
    sub_6932C(v90, &v87, &unk_3C2550);
    v35 = v25;
    v65[1] = v34;
    if (*(&v88 + 1))
    {
      sub_72084(&v87, *(&v88 + 1));
      sub_2BF3B8();
      sub_68CD0(&v87);
    }

    else
    {
      sub_69198(&v87, &unk_3C2550);
    }

    v36 = v75;
    v37 = v81;
    v38 = v77;
    v39 = v86;
    v40 = 2 * v86;
    v41 = v67;
    sub_2BEF48();
    v42 = *(v38 + 32);
    v43 = v68;
    v42(v68, v41, v69);
    (*(v36 + 16))(v66, v35, v76);
    sub_DD1C8(&unk_3BFEA0, type metadata accessor for AssetActionImplementation);
    sub_2C4EF8();
    sub_859CC(v43);
    v44 = v79;
    sub_2C4958();
    v45 = v84;
    v46 = v65[0];
    (v65[0])(v44 + v40, 0, 1, v84);
    sub_2C5228();
    sub_6932C(v90, &v87, &unk_3C2550);
    v47 = swift_allocObject();
    v48 = v88;
    *(v47 + 16) = v87;
    *(v47 + 32) = v48;
    *(v47 + 48) = v89;
    sub_2C4948();
    v46(v44 + 3 * v39, 0, 1, v45);
    v49 = [v85 ba_effectiveAnalyticsTracker];
    if (v49)
    {
      v50 = v49;
      sub_2BF028();
      *&v87 = v50;
      v51 = v50;
      sub_2C4958();
      v46(v44 + 4 * v39, 0, 1, v45);
    }

    else
    {
      v46(v44 + 4 * v39, 1, 1, v45);
    }

    v52 = v45;
    v53 = v82;
    v54 = (v83 + 48);
    v85 = (v83 + 32);
    v55 = &_swiftEmptyArrayStorage;
    v56 = 5;
    v57 = v79;
    v58 = v91;
    do
    {
      sub_6932C(v57, v58, &qword_3BFE88);
      sub_DD258(v58, v37);
      if ((*v54)(v37, 1, v52) == 1)
      {
        sub_69198(v37, &qword_3BFE88);
      }

      else
      {
        v59 = v37;
        v60 = *v85;
        (*v85)(v53, v59, v52);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_5BA4C(0, v55[2] + 1, 1, v55);
        }

        v62 = v55[2];
        v61 = v55[3];
        if (v62 >= v61 >> 1)
        {
          v55 = sub_5BA4C(v61 > 1, v62 + 1, 1, v55);
        }

        v55[2] = v62 + 1;
        v53 = v82;
        v63 = v55 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v62;
        v52 = v84;
        v60(v63, v82, v84);
        v37 = v81;
      }

      v57 += v86;
      --v56;
      v58 = v91;
    }

    while (v56);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *&v87 = v55;
    sub_6620C(&unk_3BD220);
    sub_8A870();
    v9 = sub_2C4DF8();

    sub_69198(v90, &unk_3C2550);
    (*(v75 + 8))(v80, v76);
  }

  return v9;
}

uint64_t sub_DAF74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v3 = sub_6620C(&qword_3C4350);
  __chkstk_darwin(v3 - 8);
  v61 = &v47 - v4;
  v59 = sub_2C4E58();
  __chkstk_darwin(v59);
  v60 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BFEB0);
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v54 = &v47 - v7;
  v50 = sub_6620C(&qword_3BFEB8);
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v47 - v8;
  v9 = sub_2C51D8();
  v64 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v51 = &v47 - v14;
  __chkstk_darwin(v13);
  v57 = &v47 - v15;
  v16 = sub_6620C(&qword_3BFEC0);
  __chkstk_darwin(v16 - 8);
  v18 = &v47 - v17;
  v19 = sub_2C21F8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2C4BB8();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v63 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6932C(a1, v66, &unk_3C2550);
  v58 = v9;
  if (v67)
  {
    sub_72084(v66, v67);
    sub_2BFA38();
    sub_68CD0(v66);
  }

  else
  {
    sub_69198(v66, &unk_3C2550);
  }

  sub_6932C(a1, v66, &unk_3C2550);
  if (v67)
  {
    sub_72084(v66, v67);
    sub_2BF3B8();
    sub_68CD0(v66);
  }

  else
  {
    sub_69198(v66, &unk_3C2550);
  }

  (*(v20 + 104))(v22, enum case for Metrics.NavigationType.push(_:), v19);
  v24 = sub_2C54D8();
  (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  sub_2C2108();

  sub_69198(v18, &qword_3BFEC0);
  (*(v20 + 8))(v22, v19);
  sub_2C4E28();
  sub_2C4E08();
  sub_6620C(&qword_3BFEC8);
  sub_2C4DB8();

  v25 = [v66[0] figaroPageContext];
  swift_unknownObjectRelease();
  if (v25)
  {
    v26 = sub_2C58C8();
    v28 = v27;

    v29 = sub_2C4B88();
    if (*v30)
    {
      v31 = sub_2C2238();
      v65[3] = &type metadata for String;
      v65[0] = v26;
      v65[1] = v28;
      sub_1B6088(v65, v31, v32);
    }

    else
    {
    }

    v29(v66, 0);
  }

  sub_2C51C8();
  sub_2C53F8();
  v66[0] = sub_2C53E8();
  v66[1] = &protocol witness table for BasicImpressionsTracker;
  v33 = v48;
  sub_2C51A8();
  sub_6620C(&unk_3BFED0);
  v34 = v51;
  sub_2C5168();
  (*(v49 + 8))(v33, v50);

  v35 = *(v64 + 1);
  v36 = v58;
  v35(v12, v58);
  v37 = sub_2C4B98();
  if (!v37)
  {
    v37 = sub_67AC8(&_swiftEmptyArrayStorage);
  }

  v66[0] = v37;
  v38 = v54;
  sub_2C51B8();
  sub_6620C(&qword_3BD860);
  v39 = v57;
  sub_2C5168();
  (*(v55 + 8))(v38, v56);

  v35(v34, v36);
  sub_2C4E08();
  sub_2C4DB8();

  v40 = *(v64 + 2);
  v64 = v35;
  v40(v12, v39, v36);
  v41 = v52;
  v42 = v61;
  v43 = v63;
  v44 = v53;
  (*(v52 + 16))(v61, v63, v53);
  (*(v41 + 56))(v42, 0, 1, v44);
  sub_2C5228();
  swift_allocObject();
  v45 = sub_2C5208();
  v64(v39, v36);
  result = (*(v41 + 8))(v43, v44);
  *v62 = v45;
  return result;
}

void sub_DB8BC(char a1)
{
  v2 = v1;
  v4 = sub_6620C(&qword_3BCB88);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  if (qword_3BB740 != -1)
  {
    swift_once();
  }

  v8 = sub_57AD8(v4, qword_3BF9B0);
  (*(v5 + 16))(v7, v8, v4);
  sub_2BF448();
  (*(v5 + 8))(v7, v4);
  if (LOBYTE(aBlock[0]) == 1)
  {
    v9 = [v2 hasUberHeaderBehindNavBar];
  }

  else
  {
    v9 = 1;
  }

  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v2 navigationItem];
    v13 = [v12 standardAppearance];

    if (!v13 || (v14 = [v13 _titleControlHidden], v13, v9 != v14))
    {
      if (a1)
      {
        sub_66278(0, &qword_3BFEE8);
        v15 = sub_2C5EE8();
        v16 = swift_allocObject();
        *(v16 + 16) = v2;
        *(v16 + 24) = v11;
        *(v16 + 32) = v9;
        aBlock[4] = sub_DD3E4;
        aBlock[5] = v16;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_750DC;
        aBlock[3] = &unk_38D490;
        v17 = _Block_copy(aBlock);
        v18 = v2;
        v19 = v11;

        [v15 addAnimations:v17];
        _Block_release(v17);
        [v15 startAnimation];
      }

      else
      {
        sub_DBBA4(v2, v11, v9);
      }
    }
  }
}

void sub_DBBA4(void *a1, void *a2, char a3)
{
  v6 = [a1 navigationItem];
  v7 = [v6 standardAppearance];

  if (!v7)
  {
    v8 = [a2 navigationBar];
    v7 = [v8 standardAppearance];
  }

  v9 = [v7 copy];

  [v9 _setTitleControlHidden:a3 & 1];
  v10 = [a1 navigationItem];
  [v10 setStandardAppearance:v9];
}

void sub_DBCC4(void *a1, void *a2, char a3)
{
  sub_DBBA4(a1, a2, a3);
  v4 = [a2 navigationBar];
  [v4 layoutIfNeeded];
}

void sub_DBD2C()
{
  if (v0[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_isInitialContentReady] == 1 && v0[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_isCardPresentationTransitionComplete] == 1)
  {
    v1 = *&v0[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_wtrTooltipVCProvider];
    if (v1)
    {
      v2 = [v1 viewController];
      if (v2)
      {
        v11 = v2;
        v3 = [v2 presentingViewController];
        if (v3)
        {
          v10 = v3;

          v4 = v10;
        }

        else
        {
          [v11 setModalPresentationStyle:7];
          v5 = [v11 popoverPresentationController];
          if (v5)
          {
            v6 = v5;
            [v5 setDelegate:v0];
            [v6 setSourceItem:*&v0[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_wantToReadItem]];
            [v6 setPermittedArrowDirections:15];
            [v6 _setPrefersZoomTransitions:0];
            v7 = swift_allocObject();
            *(v7 + 16) = v6;
            aBlock[4] = sub_DD320;
            aBlock[5] = v7;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_750DC;
            aBlock[3] = &unk_38D440;
            v8 = _Block_copy(aBlock);
            v9 = v6;

            [v0 presentViewController:v11 animated:1 completion:v8];
            _Block_release(v8);

            return;
          }

          v4 = v11;
        }
      }
    }
  }
}

id BSUIProductFeedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BSUIProductFeedViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void BSUIProductFeedViewController.handleTrigger(_:didChange:updateEvent:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C58C8();
  v6 = v5;
  v7._rawValue = &off_389F88;
  v11._countAndFlagsBits = v4;
  v11._object = v6;
  v8 = sub_2C63E8(v7, v11);

  if (!v8)
  {
    *&v2[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_scrolledPastLockupState] = a2;
    v9 = [v2 traitCollection];
    [v2 updateTopScrollEdgeEffectVisibilityWithViewController:v2 previousTraitCollection:v9];

    sub_DB8BC(1);
  }
}

void BSUIProductFeedViewController.messageViewController(_:didSelectActionWith:)(void *a1)
{
  v2 = v1;
  if (qword_3BB818 != -1)
  {
    swift_once();
  }

  v4 = sub_2C00B8();
  sub_57AD8(v4, qword_3C30E0);
  v5 = sub_2C0098();
  v6 = sub_2C5DE8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "User selected WTR tooltip", v7, 2u);
  }

  v8 = [v2 feedController];
  if (v8)
  {
    v9 = v8;
    sub_2BE378();
    v10 = sub_2C5888();

    [v9 notifyOnMessageActionTriggered:v10];

    v11 = [a1 viewController];
    v12 = [v11 presentingViewController];

    if (v12)
    {
      [v12 dismissViewControllerAnimated:1 completion:0];
    }

    v13 = *&v2[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_wtrTooltipVCProvider];
    *&v2[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_wtrTooltipVCProvider] = 0;
  }

  else
  {
    __break(1u);
  }
}

void BSUIProductFeedViewController.messageViewControllerDidSelectCancel(_:)(void *a1)
{
  v2 = v1;
  if (qword_3BB818 != -1)
  {
    swift_once();
  }

  v4 = sub_2C00B8();
  sub_57AD8(v4, qword_3C30E0);
  v5 = sub_2C0098();
  v6 = sub_2C5DE8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "User cancelled WTR tooltip", v7, 2u);
  }

  v8 = [a1 viewController];
  v9 = [v8 presentingViewController];

  if (v9)
  {
    [v9 dismissViewControllerAnimated:1 completion:0];
  }

  v10 = *(v2 + OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_wtrTooltipVCProvider);
  *(v2 + OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_wtrTooltipVCProvider) = 0;
}

UIModalPresentationStyle __swiftcall BSUIProductFeedViewController.adaptivePresentationStyle(for:)(UIPresentationController a1)
{
  v1 = [(objc_class *)a1.super.isa presentedViewController];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();

  if (v2)
  {
    return -1;
  }

  else
  {
    return -2;
  }
}

Swift::Void __swiftcall BSUIProductFeedViewController.presentationControllerDidDismiss(_:)(UIPresentationController a1)
{
  v2 = [(objc_class *)a1.super.isa presentedViewController];
  v3 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_wtrTooltipVCProvider;
  v4 = *(v1 + OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_wtrTooltipVCProvider);
  if (v4)
  {
    v6 = v2;
    v5 = [v4 viewController];

    if (v6 != v5)
    {
      return;
    }

    *(v1 + v3) = 0;
  }

  _objc_release_x1();
}

uint64_t sub_DC90C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_DC944()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_DC984(char *a1)
{
  if (a1[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_isCardPresentationTransitionComplete] == 1)
  {
    v2 = [a1 traitCollection];
    v3 = [v2 horizontalSizeClass];

    v4 = v3 == &dword_0 + 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = *&a1[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_shareItem];

  return [v5 setHidden:v4];
}

void sub_DCA24()
{
  v1 = v0;
  v2 = sub_2C4908();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_66278(0, &qword_3BFEF0);
  *v5 = sub_2C5E88();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = sub_2C4928();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_2BFB38();
    sub_2BF848();
    v13 = sub_2BFAD8();
    sub_2BF768();
    if (v17)
    {
      sub_693D0(&v16, v18);
      sub_691F8(v18, &v16);
      v14 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo;
      swift_beginAccess();
      sub_DD334(&v16, v1 + v14);
      swift_endAccess();
      sub_D8B6C();

      sub_69198(&v16, &unk_3C2550);
      sub_68CD0(v18);
    }

    else
    {

      sub_69198(&v16, &unk_3C2550);
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v7 = sub_2C00B8();
    sub_57AD8(v7, qword_3C30E0);
    swift_errorRetain();
    v8 = sub_2C0098();
    v9 = sub_2C5DC8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_0, v8, v9, "Failed to decode card resource with error: %@", v10, 0xCu);
      sub_69198(v11, &qword_3BFEE0);
    }

    else
    {
    }
  }
}

void sub_DCD58()
{
  v1 = v0[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_isCardPresentationTransitionComplete];
  v0[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_isCardPresentationTransitionComplete] = 1;
  if (v1 != 1)
  {
    v2 = v0;
    v3 = *&v0[OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_dismissItem];
    v4 = sub_2754B4();
    [v3 setMenu:v4];

    v5 = [v2 navigationController];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = [v7 isCurrentCard];

        if (v8)
        {
          sub_66278(0, &qword_3BFEE8);
          v9 = sub_2C5EE8();
          v10 = swift_allocObject();
          *(v10 + 16) = v2;
          v13[4] = sub_DD300;
          v13[5] = v10;
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 1107296256;
          v13[2] = sub_750DC;
          v13[3] = &unk_38D3F0;
          v11 = _Block_copy(v13);
          v12 = v2;

          [v9 addAnimations:v11];
          _Block_release(v11);
          [v9 startAnimation];

LABEL_8:
          sub_DBD2C();
          return;
        }
      }

      else
      {
      }
    }

    sub_D8F04(v2);
    goto LABEL_8;
  }
}

void sub_DCF1C(void *a1)
{
  if (a1 == v1)
  {
    v2 = [v1 scrollView];
    if (v2)
    {
      v8 = v2;
      if ([v1 hasUberHeaderBehindNavBar])
      {
        v3 = &dword_0 + 1;
      }

      else
      {
        v4 = [v1 traitCollection];
        v3 = [v4 isInactiveCard];
      }

      v5 = [v8 topEdgeEffect];
      v6 = [v5 isHidden];

      if (v3 != v6)
      {
        v7 = [v8 topEdgeEffect];
        [v7 setHidden:v3];
      }
    }
  }
}

void sub_DD048(uint64_t a1)
{
  if (qword_3BB818 != -1)
  {
    swift_once();
  }

  v2 = sub_2C00B8();
  sub_57AD8(v2, qword_3C30E0);
  swift_errorRetain();
  oslog = sub_2C0098();
  v3 = sub_2C5DC8();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    if (a1)
    {
      v6 = sub_2BE348();
      v7 = v6;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *(v4 + 4) = v6;
    *v5 = v7;
    _os_log_impl(&dword_0, oslog, v3, "Failed to present WTR tooltip: %@", v4, 0xCu);
    sub_69198(v5, &qword_3BFEE0);
  }
}

uint64_t sub_DD1C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_DD210()
{
  if (*(v0 + 40))
  {
    sub_68CD0(v0 + 16);
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_DD258(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BFE88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_DD2C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_DD308(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_DD334(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3C2550);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_DD3A4()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_DD420(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_2C5C18();
  v2[3] = sub_2C5C08();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_DD4E8;

  return sub_DD70C(a1, a2);
}

uint64_t sub_DD4E8()
{
  *(*v1 + 40) = v0;

  v3 = sub_2C5BB8();
  if (v0)
  {
    v4 = sub_DD6A8;
  }

  else
  {
    v4 = sub_DD644;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_DD644()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_DD6A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_DD70C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v2[9] = sub_2C5C18();
  v2[10] = sub_2C5C08();
  v3 = sub_6620C(&qword_3BCE30);
  v4 = swift_task_alloc();
  v2[11] = v4;
  *v4 = v2;
  v4[1] = sub_DD7E8;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v3, v3);
}

uint64_t sub_DD7E8()
{
  *(*v1 + 96) = v0;

  v3 = sub_2C5BB8();
  if (v0)
  {
    v4 = sub_DDE64;
  }

  else
  {
    v4 = sub_DD944;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_DD944()
{

  v1 = sub_2C5618();
  v3 = v2;
  if (sub_2C5608() == v1 && v4 == v3)
  {

LABEL_8:

    v7 = v0[5];
    v8 = v0[6];
    sub_72084(v0 + 2, v7);
    (*(v8 + 48))(1, v7, v8);
LABEL_9:
    v9 = &enum case for ActionOutcome.performed(_:);
    goto LABEL_10;
  }

  v6 = sub_2C65B8();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_2C55A8() == v1 && v15 == v3)
  {

LABEL_17:

    v17 = v0[5];
    v18 = v0[6];
    sub_72084(v0 + 2, v17);
    (*(v18 + 64))(1, v17, v18);
    goto LABEL_9;
  }

  v16 = sub_2C65B8();

  if (v16)
  {
    goto LABEL_17;
  }

  if (sub_2C5598() == v1 && v19 == v3)
  {

LABEL_22:

    v21 = v0[5];
    v22 = v0[6];
    sub_72084(v0 + 2, v21);
    (*(v22 + 80))(1, v21, v22);
    goto LABEL_9;
  }

  v20 = sub_2C65B8();

  if (v20)
  {
    goto LABEL_22;
  }

  if (sub_2C55F8() == v1 && v23 == v3)
  {

LABEL_27:

    v25 = v0[5];
    v26 = v0[6];
    sub_72084(v0 + 2, v25);
    (*(v26 + 96))(1, 1, v25, v26);
    goto LABEL_9;
  }

  v24 = sub_2C65B8();

  if (v24)
  {
    goto LABEL_27;
  }

  if (sub_2C55B8() == v1 && v27 == v3)
  {

LABEL_33:

    v29 = v0[5];
    v30 = v0[6];
    sub_72084(v0 + 2, v29);
    (*(v30 + 96))(1, 0, v29, v30);
    goto LABEL_9;
  }

  v28 = sub_2C65B8();

  if (v28)
  {
    goto LABEL_33;
  }

  if (sub_2C55E8() == v1 && v31 == v3)
  {

LABEL_38:

    v33 = v0[5];
    v34 = v0[6];
    sub_72084(v0 + 2, v33);
    (*(v34 + 104))(1, v33, v34);
    goto LABEL_9;
  }

  v32 = sub_2C65B8();

  if (v32)
  {
    goto LABEL_38;
  }

  if (sub_2C55C8() == v1 && v35 == v3)
  {

LABEL_43:

    v37 = v0[5];
    v38 = v0[6];
    sub_72084(v0 + 2, v37);
    (*(v38 + 112))(v37, v38);
    goto LABEL_9;
  }

  v36 = sub_2C65B8();

  if (v36)
  {
    goto LABEL_43;
  }

  if (sub_2C55D8() == v1 && v39 == v3)
  {

LABEL_48:
    v41 = v0[5];
    v42 = v0[6];
    sub_72084(v0 + 2, v41);
    (*(v42 + 120))(v41, v42);
    goto LABEL_9;
  }

  v40 = sub_2C65B8();

  if (v40)
  {
    goto LABEL_48;
  }

  v9 = &enum case for ActionOutcome.unsupported(_:);
LABEL_10:
  v10 = v0[7];
  v11 = *v9;
  v12 = sub_2C4C08();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  sub_68CD0((v0 + 2));
  v13 = v0[1];

  return v13();
}

uint64_t sub_DDE64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_DDEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_2C5628();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  (*(v8 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v10);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_6620C(&qword_3BDAB8);

  v13 = sub_2C5738();
  v14 = sub_2C5C58();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2E95A0;
  v15[5] = v12;
  v15[6] = v13;

  sub_1CDB58(0, 0, v6, &unk_2E4D80, v15);

  return v13;
}

uint64_t sub_DE12C()
{
  v1 = sub_2C5628();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_DE1C8(uint64_t a1)
{
  v4 = *(sub_2C5628() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_7100C;

  return sub_DD420(a1, v1 + v5);
}

uint64_t sub_DE2D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

id AutoSizingSheetHostingController.__allocating_init<A>(idealWidth:shouldShowCloseButton:objectGraph:parentTracker:trackerName:pageData:origin:shouldReportFigaro:rootView:)(uint64_t a1, char a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v19 = objc_allocWithZone(v13);
  v20 = sub_DFB24(a1, a2 & 1, a3, a4, a5, a6, a7, a8, a9, a10, a11, *(&a11 + 1), a12, a13);

  return v20;
}

id AutoSizingSheetHostingController.init<A>(idealWidth:shouldShowCloseButton:objectGraph:parentTracker:trackerName:pageData:origin:shouldReportFigaro:rootView:)(uint64_t a1, char a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = sub_DFB24(a1, a2 & 1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);

  return v14;
}

uint64_t sub_DE440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void (*a4)(uint64_t, __n128)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a5;
  v39 = a4;
  v34 = a2;
  v37 = a1;
  v41 = a8;
  v11 = sub_2C2A08();
  v36 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v35 = &v34 - v15;
  v16 = *(a6 - 8);
  __chkstk_darwin(v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v34 - v21;
  v23 = sub_2C33D8();
  v40 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v26 = &v34 - v25;
  v39(v37, v24);
  if (a3)
  {
    sub_16A4E4(v19, a6, a7);
    v27 = *(v16 + 8);
    v27(v19, a6);
    sub_16A4E4(v22, a6, a7);
    v48 = a7;
    v49 = &protocol witness table for _FlexFrameLayout;
    swift_getWitnessTable();
    sub_166FEC(v19, v11, a6);
    v27(v19, a6);
    v28 = v22;
    v29 = a6;
  }

  else
  {
    sub_2C46A8();
    sub_2C4078();
    (*(v16 + 8))(v22, a6);
    v42 = a7;
    v43 = &protocol witness table for _FlexFrameLayout;
    WitnessTable = swift_getWitnessTable();
    v31 = v35;
    sub_16A4E4(v13, v11, WitnessTable);
    v27 = *(v36 + 8);
    v27(v13, v11);
    sub_16A4E4(v31, v11, WitnessTable);
    sub_166EF4(v13, v11);
    v27(v13, v11);
    v28 = v31;
    v29 = v11;
  }

  v27(v28, v29);
  v46 = a7;
  v47 = &protocol witness table for _FlexFrameLayout;
  v44 = swift_getWitnessTable();
  v45 = a7;
  v32 = swift_getWitnessTable();
  sub_16A4E4(v26, v23, v32);
  return (*(v40 + 8))(v26, v23);
}

double sub_DE8D8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v7.receiver = Strong;
    v7.super_class = type metadata accessor for AutoSizingSheetHostingController();
    objc_msgSendSuper2(&v7, "preferredContentSize");
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  [a1 maximumDetentValue];
  if (result >= v5)
  {
    return v5;
  }

  return result;
}

id AutoSizingSheetHostingController.preferredContentSize.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "preferredContentSize");
}

Swift::Void __swiftcall AutoSizingSheetHostingController.viewDidLoad()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v1 = *&v0[qword_3BFF60];
  if (v1)
  {
    v2 = v1;
    sub_DEA58(v2);
  }

  if (_UISolariumEnabled())
  {
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 setBackgroundColor:0];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_DEA58(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  [v3 addSubview:a1];

  [a1 addTarget:v1 action:"closeButtonPressedWithSender:" forControlEvents:64];
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_6620C(&qword_3BFDD8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2E95B0;
  v6 = [a1 topAnchor];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = [v6 constraintEqualToAnchor:v9 constant:20.0];
  *(v5 + 32) = v10;
  v11 = [a1 trailingAnchor];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = objc_opt_self();
  v15 = [v13 trailingAnchor];

  v16 = [v11 constraintEqualToAnchor:v15 constant:-20.0];
  *(v5 + 40) = v16;
  sub_66278(0, &unk_3C0070);
  isa = sub_2C5B18().super.isa;

  [v14 activateConstraints:isa];
}

void sub_DECA4(void *a1)
{
  v1 = a1;
  AutoSizingSheetHostingController.viewDidLoad()();
}

uint64_t sub_DECEC()
{
  v0 = sub_2BEB28();
  v41 = *(v0 - 8);
  *&v42 = v0;
  __chkstk_darwin(v0);
  v40 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2BF048();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2BF088();
  v6 = *(v5 - 8);
  v37 = v5;
  v38 = v6;
  __chkstk_darwin(v5);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2BE9E8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2BEA38();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2BEA28();
  v36 = *(v43 - 8);
  v16 = __chkstk_darwin(v43);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, enum case for SectionType.unknown(_:), v12, v16);
  (*(v9 + 104))(v11, enum case for SectionData.ComponentContained.sheet(_:), v8);
  v34 = v18;
  sub_2BEA08();
  (*(v2 + 104))(v4, enum case for ClickData.TargetType.dismiss(_:), v39);
  (*(v41 + 104))(v40, enum case for LinkActionType.click(_:), v42);
  sub_2BF058();
  v39 = *(v44 + qword_3BFF68);
  v41 = sub_6620C(&unk_3C43E0);
  v19 = sub_2BE798();
  v31 = v19;
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v42 = xmmword_2E3F30;
  *(v22 + 16) = xmmword_2E3F30;
  v23 = enum case for DataEventTrait.onlyOnce(_:);
  v40 = *(v20 + 104);
  v32 = enum case for DataEventTrait.onlyOnce(_:);
  (v40)(v22 + v21, enum case for DataEventTrait.onlyOnce(_:), v19);
  v33 = "ngController.swift";
  sub_E04B0(&unk_3C0030, &type metadata accessor for SectionData);
  sub_E04B0(&unk_3C43F0, &type metadata accessor for SectionData);
  sub_2BEFE8();

  v30 = qword_3BFF70;
  v24 = swift_allocObject();
  *(v24 + 16) = v42;
  v25 = v31;
  (v40)(v24 + v21, v23, v31);
  sub_2BEF78();
  sub_E04B0(&unk_3C0040, &type metadata accessor for PageData);
  sub_E04B0(&unk_3C4400, &type metadata accessor for PageData);
  sub_2BEFE8();

  v26 = swift_allocObject();
  *(v26 + 16) = v42;
  (v40)(v26 + v21, v32, v25);
  sub_E04B0(&unk_3C0050, &type metadata accessor for ClickData);
  sub_E04B0(&unk_3C4410, &type metadata accessor for ClickData);
  v27 = v35;
  v28 = v37;
  sub_2BEFE8();

  sub_2BE868();
  sub_E04B0(&unk_3C0060, &type metadata accessor for ClickEvent);
  sub_2BF018();
  (*(v38 + 8))(v27, v28);
  return (*(v36 + 8))(v34, v43);
}

void sub_DF4C4(void *a1)
{
  v3 = a1;
  sub_DECEC();
  v1 = [v3 presentingViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_DF5A0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "preferredContentSize");
}

void sub_DF5E0(void *a1, double a2, double a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, "setPreferredContentSize:", a2, a3);
  sub_DF6A4();
}

id AutoSizingSheetHostingController.preferredContentSize.setter(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "setPreferredContentSize:", a1, a2);
  return sub_DF6A4();
}

id sub_DF6A4()
{
  result = [v0 sheetPresentationController];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_E0530;
    *(v4 + 24) = v3;
    v7[4] = sub_E0550;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_DF81C;
    v7[3] = &unk_38D590;
    v5 = _Block_copy(v7);
    v6 = v2;

    [v6 animateChanges:v5];

    _Block_release(v5);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

void (*AutoSizingSheetHostingController.preferredContentSize.modify(uint64_t *a1))(double **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  ObjectType = swift_getObjectType();
  v4[4].super_class = ObjectType;
  v4[1].receiver = v1;
  v4[1].super_class = ObjectType;
  objc_msgSendSuper2(v4 + 1, "preferredContentSize");
  v4->receiver = v6;
  v4->super_class = v7;
  return sub_DF8E0;
}

void sub_DF8E0(double **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 9);
  v7 = *a1;
  if (a2)
  {
    v7[2].receiver = v6;
    v7[2].super_class = v5;
    objc_msgSendSuper2(v7 + 2, "setPreferredContentSize:", v3, v4);
  }

  else
  {
    v7[3].receiver = v6;
    v7[3].super_class = v5;
    objc_msgSendSuper2(v7 + 3, "setPreferredContentSize:", v3, v4);
    sub_DF6A4();
  }

  free(v2);
}

uint64_t sub_DF94C()
{
  v1 = qword_3BFF70;
  v2 = sub_2BEF78();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_DF9D4(uint64_t a1)
{
  v2 = qword_3BFF70;
  v3 = sub_2BEF78();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

id AutoSizingSheetHostingController.presentationController(_:willPresentWithAdaptiveStyle:transitionCoordinator:)()
{
  ObjectType = swift_getObjectType();
  sub_2C3368();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  objc_msgSendSuper2(&v3, "setPreferredContentSize:");
  return sub_DF6A4();
}

void sub_DFAB8(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = a1;
  sub_2C3368();
  v4.receiver = v3;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, "setPreferredContentSize:");
  sub_DF6A4();
}

id sub_DFB24(uint64_t a1, int a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v81 = a8;
  v67 = a7;
  v65 = a6;
  v74 = a5;
  v76 = a4;
  v61 = a3;
  v71 = a2;
  v75 = a14;
  v72 = a13;
  v69 = a1;
  v70 = a12;
  v68 = a11;
  LODWORD(v64) = a10;
  v80 = a9;
  v14 = sub_2C36F8();
  __chkstk_darwin(v14 - 8);
  v77 = &v60[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_6620C(&qword_3BCE28);
  __chkstk_darwin(v16 - 8);
  v73 = &v60[-v17];
  v63 = sub_2C1A28();
  v18 = *(v63 - 8);
  __chkstk_darwin(v63);
  v20 = &v60[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = type metadata accessor for RootHostingControllerConfiguration(0);
  __chkstk_darwin(v62);
  v66 = &v60[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v79 = &v60[-v23];
  v24 = sub_6620C(&qword_3C0080);
  __chkstk_darwin(v24 - 8);
  v26 = &v60[-v25];
  v27 = sub_2C6038();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v60[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = sub_2C6058();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v60[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = 0;
  if (v61)
  {
    v35 = [objc_opt_self() buttonWithType:7];
    sub_2C6048();
    (*(v28 + 104))(v30, enum case for UIButton.Configuration.Size.large(_:), v27);
    sub_2C6028();
    (*(v32 + 16))(v26, v34, v31);
    (*(v32 + 56))(v26, 0, 1, v31);
    sub_2C6068();
    (*(v32 + 8))(v34, v31);
  }

  v36 = v78;
  *(v78 + qword_3BFF60) = v35;
  v37 = v74;
  v38 = sub_2BF008();

  *(v36 + qword_3BFF68) = v38;
  v39 = qword_3BFF70;
  v40 = sub_2BEF78();
  v65 = *(v40 - 8);
  v41 = *(v65 + 16);
  v67 = v40;
  v41(v36 + v39, v81);
  (*(v18 + 104))(v20, enum case for NavigationBarTitleStyle.inline(_:), v63);
  v42 = v79;
  sub_2C0808();
  *v42 = 1;
  v43 = v73;
  sub_77D40(v80, v73);
  v44 = v66;
  v45 = sub_78BA4(v42, v66);
  v64 = v60;
  __chkstk_darwin(v45);
  v46 = v75;
  *&v60[-48] = v72;
  *&v60[-40] = v46;
  *&v60[-32] = v69;
  v60[-24] = v71 & 1;
  v58 = v68;
  v59 = v70;
  sub_2C2A08();
  v47 = sub_2C33D8();
  v84 = v46;
  v85 = &protocol witness table for _FlexFrameLayout;
  v48 = v76;

  v49 = v37;
  WitnessTable = swift_getWitnessTable();
  v83 = v46;
  v50 = swift_getWitnessTable();
  v51 = sub_76C0C(v48, v49, v43, v44, sub_E0590, &v60[-64], 0, 0, v47, v50);

  v52 = v51;
  sub_2C36E8();
  sub_2C3378();
  v53 = [v52 sheetPresentationController];

  if (v53)
  {
    [v53 setDelegate:v52];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      sub_2C0B58();
      sub_2C5F18();
    }

    [v53 setPrefersPageSizing:0];
    sub_6620C(&qword_3BFDD8);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_2E9480;
    sub_66278(0, qword_3C0088);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v55 = sub_2C5F28();

    *(v54 + 32) = v55;
    isa = sub_2C5B18().super.isa;

    [v53 setDetents:isa];

    v49 = isa;
  }

  sub_E05A4(v80);
  (*(v65 + 8))(v81, v67);
  sub_E060C(v79);
  return v52;
}

uint64_t type metadata accessor for AutoSizingSheetHostingController()
{
  result = qword_3BFF78;
  if (!qword_3BFF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E0398()
{
  result = sub_2BEF78();
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

uint64_t sub_E04B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E04F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_E0578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_E05A4(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BCE28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E060C(uint64_t a1)
{
  v2 = type metadata accessor for RootHostingControllerConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E0668()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_E06A8(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_389E10;
  v7._object = a2;
  v4 = sub_2C63E8(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_E06FC(char a1)
{
  if (a1)
  {
    return 0x666572487478656ELL;
  }

  else
  {
    return 0x656372756F736572;
  }
}

uint64_t sub_E0738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_E07AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_E0818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_E0888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_E08F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_E06A8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_E0930@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E06FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_E0974@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_E06A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_E09A0@<X0>(_BYTE *a1@<X8>)
{
  result = SwiftUICoverAnimationProvider.coverAnimationSourceAlignment()();
  *a1 = result;
  return result;
}

uint64_t sub_E09CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_E0A20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t PaginatedResourceSet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v10[1] = a2;
  _s10CodingKeysOMa();
  swift_getWitnessTable();
  v11 = sub_2C64E8();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = v10 - v5;
  sub_72084(a1, a1[3]);
  sub_2C67A8();
  if (!v2)
  {
    v7 = v4;
    sub_2C19C8();
    v13 = 0;
    swift_getWitnessTable();
    v8 = v11;
    sub_2C64A8();
    v12 = 1;
    sub_2C6418();
    sub_2C1568();
    (*(v7 + 8))(v6, v8);
  }

  return sub_68CD0(a1);
}

uint64_t sub_E0D58(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_6620C(&qword_3BDF58);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_E0E28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_6620C(&qword_3BDF58);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DescriptionHeaderComponentModel()
{
  result = qword_3C0168;
  if (!qword_3C0168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_E0F24()
{
  sub_A62E4();
  if (v0 <= 0x3F)
  {
    sub_A6360();
    if (v1 <= 0x3F)
    {
      sub_D74AC();
      if (v2 <= 0x3F)
      {
        sub_E1018(319, &qword_3BE2E0);
        if (v3 <= 0x3F)
        {
          sub_E1018(319, &unk_3BEAF8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_E1018(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2C60B8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_E1074(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "appleBooksReview";
  v4 = 0xD000000000000016;
  if (v2 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (v2 == 1)
  {
    v6 = "appleBooksReview";
  }

  else
  {
    v6 = "publishersWeeklyReview";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "scrolled-past-lockup";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000014;
    v3 = "publishersWeeklyReview";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "scrolled-past-lockup";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2C65B8();
  }

  return v11 & 1;
}

Swift::Int sub_E114C()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_E11E8()
{
  sub_2C5958();
}

Swift::Int sub_E1270()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_E1308@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_E1F4C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_E1338(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "appleBooksReview";
  v4 = 0xD000000000000016;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000014;
    v3 = "publishersWeeklyReview";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "scrolled-past-lockup";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_E1448()
{
  result = qword_3C01B8;
  if (!qword_3C01B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C01B8);
  }

  return result;
}

uint64_t sub_E149C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_6620C(&qword_3C01C8);
  v8 = *(v7 - 8);
  v35 = v7;
  v36 = v8;
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for DescriptionHeaderComponentModel();
  __chkstk_darwin(v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 40) = 0u;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 9) = 0;
  v37 = v13 + 40;
  sub_A9708(&v39, (v13 + 40), &unk_3BDC90);
  v14 = a1[3];
  v38 = a1;
  sub_72084(a1, v14);
  sub_E1D2C();
  sub_2C67A8();
  if (v2)
  {
    v16 = v37;
    sub_68CD0(v38);
    return sub_69198(v16, &qword_3BE370);
  }

  else
  {
    v32 = v6;
    v33 = v11;
    sub_6620C(&qword_3BE378);
    v42 = 0;
    sub_72B74(&qword_3BE390, &qword_3BE378);
    v15 = v35;
    sub_2C64A8();
    v17 = v40;
    *v13 = v39;
    *(v13 + 1) = v17;
    *(v13 + 4) = v41;
    sub_6620C(&qword_3BE370);
    v42 = 1;
    sub_72B74(&qword_3BE398, &qword_3BE370);
    sub_2C64A8();
    sub_A9708(&v39, v37, &qword_3BE370);
    sub_2C5018();
    LOBYTE(v39) = 2;
    sub_E1D80(&qword_3BE3A0, &type metadata accessor for ImpressionMetrics);
    v18 = v32;
    sub_2C6458();
    v19 = v33;
    v20 = v36;
    sub_E1DC8(v18, &v13[v33[6]]);
    LOBYTE(v39) = 3;
    v21 = sub_2C6468();
    v22 = &v13[v19[7]];
    *v22 = v21;
    v22[1] = v23;
    LOBYTE(v39) = 4;
    v24 = sub_2C6418();
    v25 = &v13[v19[8]];
    *v25 = v24;
    v25[1] = v26;
    v42 = 5;
    sub_E1E38();
    sub_2C64A8();
    v13[v19[9]] = v39;
    v42 = 6;
    sub_BAA70();
    sub_2C6458();
    (*(v20 + 8))(v10, v15);
    v27 = v41;
    v28 = &v13[v19[10]];
    v29 = v40;
    *v28 = v39;
    *(v28 + 1) = v29;
    *(v28 + 4) = v27;
    sub_E1E8C(v13, v34);
    sub_68CD0(v38);
    return sub_E1EF0(v13);
  }
}

uint64_t sub_E1AFC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7954726564616568;
  if (v1 != 5)
  {
    v3 = 0x6E69546567616D69;
  }

  v4 = 0x656C746974;
  if (v1 != 3)
  {
    v4 = 0x656C746974627573;
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

uint64_t sub_E1BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_E2244(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_E1C0C(uint64_t a1)
{
  v2 = sub_E1D2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E1C48(uint64_t a1)
{
  v2 = sub_E1D2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_E1D2C()
{
  result = qword_3C01D0;
  if (!qword_3C01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C01D0);
  }

  return result;
}

uint64_t sub_E1D80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E1DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BDF58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_E1E38()
{
  result = qword_3C01D8;
  if (!qword_3C01D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C01D8);
  }

  return result;
}

uint64_t sub_E1E8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DescriptionHeaderComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E1EF0(uint64_t a1)
{
  v2 = type metadata accessor for DescriptionHeaderComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E1F4C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3895F8;
  v6._object = a2;
  v4 = sub_2C63E8(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_E1F98()
{
  result = qword_3C01E0;
  if (!qword_3C01E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C01E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DescriptionHeaderComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DescriptionHeaderComponentModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_E2140()
{
  result = qword_3C01E8;
  if (!qword_3C01E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C01E8);
  }

  return result;
}

unint64_t sub_E2198()
{
  result = qword_3C01F0;
  if (!qword_3C01F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C01F0);
  }

  return result;
}

unint64_t sub_E21F0()
{
  result = qword_3C01F8;
  if (!qword_3C01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C01F8);
  }

  return result;
}

uint64_t sub_E2244(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7954726564616568 && a2 == 0xEA00000000006570 || (sub_2C65B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E69546567616D69 && a2 == 0xED00006F666E4974)
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

id sub_E2498()
{
  v1 = sub_2C5118();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AssetMenuBarButtonItem();
  v15.receiver = v0;
  v15.super_class = v5;
  v6 = objc_msgSendSuper2(&v15, "init");
  v7 = objc_opt_self();
  v8 = v6;
  v9 = sub_2C5888();
  v10 = [v7 __systemImageNamedSwift:v9];

  [v8 setImage:v10];
  sub_1DA078();
  v11 = sub_2C5888();

  [v8 setAccessibilityLabel:v11];

  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  sub_2C50B8();
  sub_69198(v13, qword_3C0250);
  sub_69198(v14, qword_3C0250);
  sub_2C5F08();

  (*(v2 + 8))(v4, v1);
  return v8;
}

void *sub_E273C()
{
  sub_6620C(&unk_3C0230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E3F30;
  *(inited + 32) = sub_2C0278();
  *(inited + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_10F510(inited);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_E27BC()
{
  v1 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  [objc_msgSend(objc_opt_self() "sharedInstance")];
  swift_unknownObjectRelease();
  sub_2ADC74();
  v4 = sub_E2F24();
  [v0 setMenu:v4];

  v5 = sub_2C5C58();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_2C5C18();
  v6 = v0;
  v7 = sub_2C5C08();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_1C0888(0, 0, v3, &unk_2E9B28, v8);
}

uint64_t sub_E2940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  sub_2C5C18();
  v4[17] = sub_2C5C08();
  v6 = sub_2C5BB8();
  v4[18] = v6;
  v4[19] = v5;

  return _swift_task_switch(sub_E29D8, v6, v5);
}

uint64_t sub_E29D8()
{
  v0[20] = OBJC_IVAR____TtC11BookStoreUI24ProductFeedBarButtonItem_sourceViewController;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v0[22] = sub_DA510();
    v4 = sub_6620C(&unk_3BDC20);
    v5 = swift_task_alloc();
    v0[23] = v5;
    *v5 = v0;
    v5[1] = sub_E2B34;

    return BaseObjectGraph.inject<A>(_:)(v0 + 15, v4, v4);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_E2B34()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_E2E64;
  }

  else
  {
    v5 = sub_E2C70;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_E2C70()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 120);
  v3 = [v2 stateCenter];
  [v3 removeObserver:v1];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo;
    v6 = Strong;
    swift_beginAccess();
    sub_E452C(v6 + v5, v0 + 56);

    v7 = *(v0 + 168);
    if (*(v0 + 80))
    {
      v8 = *(v0 + 128);
      sub_68D1C((v0 + 56), v0 + 16);
      v9 = [v2 stateCenter];
      sub_72084((v0 + 16), *(v0 + 40));
      sub_2BF3B8();
      v10 = sub_2C5888();

      [v9 addObserver:v8 forItemIdentifier:v10];

      swift_unknownObjectRelease();
      sub_68CD0(v0 + 16);
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = *(v0 + 168);

    swift_unknownObjectRelease();
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  sub_69198(v0 + 56, &unk_3C2550);
LABEL_7:
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_E2E64()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}