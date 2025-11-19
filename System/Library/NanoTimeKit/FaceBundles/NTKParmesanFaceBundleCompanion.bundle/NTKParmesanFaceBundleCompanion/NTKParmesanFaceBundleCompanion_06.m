uint64_t sub_23BFB4910()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 96) = v0[3];
  *(v1 + 104) = v2;
}

uint64_t sub_23BFB4950()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 80) = v0[3];
  *(v1 + 88) = v2;
}

uint64_t sub_23BFB4990()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

uint64_t sub_23BFB49D0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t sub_23BFB4A10()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_23BFB4A50()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

id sub_23BFB4CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  v9 = OBJC_IVAR___NTKParmesanAssetLayout_mask;
  *&v8[OBJC_IVAR___NTKParmesanAssetLayout_mask] = 0;
  v10 = OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis;
  *&v8[OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis] = 0;
  v11 = OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness;
  *&v8[OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness] = 0;
  *&v8[OBJC_IVAR___NTKParmesanAssetLayout_originalCrop] = a1;
  v12 = &v8[OBJC_IVAR___NTKParmesanAssetLayout_baseImageName];
  *v12 = a2;
  v12[1] = a3;
  *&v8[v9] = a4;
  *&v8[OBJC_IVAR___NTKParmesanAssetLayout_timeLayout] = a5;
  *&v8[v10] = a6;
  *&v8[v11] = a8;
  v8[OBJC_IVAR___NTKParmesanAssetLayout_userEdited] = a7;
  v14.receiver = v8;
  v14.super_class = type metadata accessor for ParmesanAssetLayout();
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_23BFB4E38()
{
  v1 = v0;
  v2 = 7104878;
  sub_23BFFA9F0();
  MEMORY[0x23EEC3090](0xD000000000000027, 0x800000023C011420);
  v3 = *(v0 + OBJC_IVAR___NTKParmesanAssetLayout_originalCrop);
  v4 = [v3 description];
  v5 = sub_23BFFA300();
  v7 = v6;

  MEMORY[0x23EEC3090](v5, v7);

  MEMORY[0x23EEC3090](0x3D206B73616D202CLL, 0xE900000000000020);
  v8 = *(v1 + OBJC_IVAR___NTKParmesanAssetLayout_mask);
  if (v8)
  {
    v9 = [v8 description];
    v10 = sub_23BFFA300();
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x23EEC3090](v10, v12);

  MEMORY[0x23EEC3090](0x614C656D6974202CLL, 0xEF203D2074756F79);
  v13 = *(v1 + OBJC_IVAR___NTKParmesanAssetLayout_timeLayout);
  v14 = [v13 description];
  v15 = sub_23BFFA300();
  v17 = v16;

  MEMORY[0x23EEC3090](v15, v17);

  MEMORY[0x23EEC3090](0xD000000000000012, 0x800000023C011450);
  v18 = *(v1 + OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis);
  if (v18)
  {
    v19 = [v18 description];
    v2 = sub_23BFFA300();
    v21 = v20;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  MEMORY[0x23EEC3090](v2, v21);

  MEMORY[0x23EEC3090](0xD000000000000017, 0x800000023C011470);
  sub_23BFFA590();
  MEMORY[0x23EEC3090](0x644572657375202CLL, 0xEF203D2064657469);
  if (*(v1 + OBJC_IVAR___NTKParmesanAssetLayout_userEdited))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR___NTKParmesanAssetLayout_userEdited))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x23EEC3090](v22, v23);

  MEMORY[0x23EEC3090](0xD000000000000012, 0x800000023C011490);
  v24 = v1 + OBJC_IVAR___NTKParmesanAssetLayout_baseImageName;
  v25 = *(v1 + OBJC_IVAR___NTKParmesanAssetLayout_baseImageName);
  v26 = *(v24 + 8);

  MEMORY[0x23EEC3090](v25, v26);

  return 0;
}

id sub_23BFB51B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanAssetLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BFB5290(void *a1)
{
  v3 = v1;
  v5 = sub_23BF4A264(&qword_27E1E2328);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_23BF4C484(a1, a1[3]);
  sub_23BFB6D7C();
  sub_23BFFAE40();
  v11 = *(v3 + OBJC_IVAR___NTKParmesanAssetLayout_originalCrop);
  HIBYTE(v10) = 0;
  type metadata accessor for ParmesanCrop();
  sub_23BFB7064(&qword_27E1E2330, type metadata accessor for ParmesanCrop);
  sub_23BFFAC50();
  if (!v2)
  {
    LOBYTE(v11) = 1;

    sub_23BFFAC10();

    v11 = *(v3 + OBJC_IVAR___NTKParmesanAssetLayout_mask);
    HIBYTE(v10) = 2;
    type metadata accessor for ParmesanAssetMask();
    sub_23BFB7064(&qword_27E1E2338, type metadata accessor for ParmesanAssetMask);
    sub_23BFFAC00();
    v11 = *(v3 + OBJC_IVAR___NTKParmesanAssetLayout_timeLayout);
    HIBYTE(v10) = 3;
    type metadata accessor for ParmesanTimeLayout();
    sub_23BFB7064(&qword_27E1E2340, type metadata accessor for ParmesanTimeLayout);
    sub_23BFFAC50();
    v11 = *(v3 + OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis);
    HIBYTE(v10) = 4;
    type metadata accessor for ParmesanColorAnalysis();
    sub_23BFB7064(&qword_27E1E2348, type metadata accessor for ParmesanColorAnalysis);
    sub_23BFFAC00();
    LOBYTE(v11) = 5;
    sub_23BFFAC30();
    LOBYTE(v11) = 6;
    sub_23BFFAC20();
  }

  return (*(v6 + 8))(v8, v5);
}

_BYTE *sub_23BFB5678(void *a1)
{
  v3 = v1;
  v19 = sub_23BF4A264(&qword_27E1E22F8);
  v5 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v18 - v6;
  v22 = OBJC_IVAR___NTKParmesanAssetLayout_mask;
  *&v3[OBJC_IVAR___NTKParmesanAssetLayout_mask] = 0;
  v20 = a1;
  v21 = OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis;
  *&v3[OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis] = 0;
  v8 = OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness;
  *&v3[OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness] = 0;
  sub_23BF4C484(a1, a1[3]);
  sub_23BFB6D7C();
  sub_23BFFAE20();
  if (v2)
  {
    sub_23BF4A9A4(v20);

    type metadata accessor for ParmesanAssetLayout();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v8;
    type metadata accessor for ParmesanCrop();
    v24 = 0;
    sub_23BFB7064(&qword_27E1E2308, type metadata accessor for ParmesanCrop);
    v9 = v19;
    sub_23BFFABE0();
    *&v3[OBJC_IVAR___NTKParmesanAssetLayout_originalCrop] = v25;
    LOBYTE(v25) = 1;
    v11 = sub_23BFFABA0();
    v12 = &v3[OBJC_IVAR___NTKParmesanAssetLayout_baseImageName];
    *v12 = v11;
    v12[1] = v13;
    type metadata accessor for ParmesanAssetMask();
    v24 = 2;
    sub_23BFB7064(&qword_27E1E2310, type metadata accessor for ParmesanAssetMask);
    sub_23BFFAB90();
    v14 = *&v3[v22];
    *&v3[v22] = v25;

    type metadata accessor for ParmesanTimeLayout();
    v24 = 3;
    sub_23BFB7064(&qword_27E1E2318, type metadata accessor for ParmesanTimeLayout);
    sub_23BFFABE0();
    *&v3[OBJC_IVAR___NTKParmesanAssetLayout_timeLayout] = v25;
    type metadata accessor for ParmesanColorAnalysis();
    v24 = 4;
    sub_23BFB7064(&qword_27E1E2320, type metadata accessor for ParmesanColorAnalysis);
    sub_23BFFAB90();
    v15 = *&v3[v21];
    *&v3[v21] = v25;

    LOBYTE(v25) = 5;
    sub_23BFFABC0();
    *&v3[v18] = v16;
    LOBYTE(v25) = 6;
    v3[OBJC_IVAR___NTKParmesanAssetLayout_userEdited] = sub_23BFFABB0() & 1;
    v17 = type metadata accessor for ParmesanAssetLayout();
    v23.receiver = v3;
    v23.super_class = v17;
    v3 = objc_msgSendSuper2(&v23, sel_init);
    (*(v5 + 8))(v7, v9);
    sub_23BF4A9A4(v20);
  }

  return v3;
}

_BYTE *sub_23BFB5BA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ParmesanAssetLayout());
  result = sub_23BFB5678(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_23BFB5C38()
{
  sub_23BFFA3A0();
}

uint64_t sub_23BFB5D74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BFB6E40();
  *a1 = result;
  return result;
}

void sub_23BFB5DA4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000706F7243;
  v4 = 0x6C616E696769726FLL;
  v5 = 0x800000023C00BAF0;
  v6 = 0xD000000000000012;
  if (v2 != 5)
  {
    v6 = 0x7469644572657375;
    v5 = 0xEA00000000006465;
  }

  v7 = 0xEA00000000007475;
  v8 = 0x6F79614C656D6974;
  if (v2 != 3)
  {
    v8 = 0x616E41726F6C6F63;
    v7 = 0xED0000736973796CLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED0000656D614E65;
  v10 = 0x67616D4965736162;
  if (v2 != 1)
  {
    v10 = 1802723693;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_23BFB5EA8()
{
  v1 = *v0;
  v2 = 0x6C616E696769726FLL;
  v3 = 0xD000000000000012;
  if (v1 != 5)
  {
    v3 = 0x7469644572657375;
  }

  v4 = 0x6F79614C656D6974;
  if (v1 != 3)
  {
    v4 = 0x616E41726F6C6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x67616D4965736162;
  if (v1 != 1)
  {
    v5 = 1802723693;
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

uint64_t sub_23BFB5FA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BFB6E40();
  *a1 = result;
  return result;
}

uint64_t sub_23BFB5FDC(uint64_t a1)
{
  v2 = sub_23BFB6D7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BFB6018(uint64_t a1)
{
  v2 = sub_23BFB6D7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BFB6184()
{
  v1 = v0;
  sub_23BFFAE00();
  v2 = *(v0 + OBJC_IVAR___NTKParmesanAssetLayout_originalCrop);
  sub_23BFFA890();

  sub_23BFFA3A0();

  v3 = *(v1 + OBJC_IVAR___NTKParmesanAssetLayout_mask);
  sub_23BFFADB0();
  if (v3)
  {
    v4 = v3;
    sub_23BFFA890();
  }

  v5 = *(v1 + OBJC_IVAR___NTKParmesanAssetLayout_timeLayout);
  sub_23BFFA890();

  v6 = *(v1 + OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis);
  sub_23BFFADB0();
  if (v6)
  {
    v7 = v6;
    sub_23BFFA890();
  }

  v8 = *(v1 + OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x23EEC3A90](*&v8);
  sub_23BFFADB0();
  return sub_23BFFADE0();
}

id sub_23BFB62EC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___NTKParmesanAssetLayout_originalCrop);
  v4 = *(v1 + OBJC_IVAR___NTKParmesanAssetLayout_baseImageName);
  v3 = *(v1 + OBJC_IVAR___NTKParmesanAssetLayout_baseImageName + 8);
  v5 = *(v1 + OBJC_IVAR___NTKParmesanAssetLayout_mask);
  v6 = *(v1 + OBJC_IVAR___NTKParmesanAssetLayout_timeLayout);
  v7 = *(v1 + OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis);
  v8 = *(v1 + OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness);
  v9 = *(v1 + OBJC_IVAR___NTKParmesanAssetLayout_userEdited);
  v10 = type metadata accessor for ParmesanAssetLayout();
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR___NTKParmesanAssetLayout_mask;
  *&v11[OBJC_IVAR___NTKParmesanAssetLayout_mask] = 0;
  v13 = OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis;
  *&v11[OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis] = 0;
  v14 = OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness;
  *&v11[OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness] = 0;
  *&v11[OBJC_IVAR___NTKParmesanAssetLayout_originalCrop] = v2;
  v15 = &v11[OBJC_IVAR___NTKParmesanAssetLayout_baseImageName];
  *v15 = v4;
  v15[1] = v3;
  *&v11[v12] = v5;
  *&v11[OBJC_IVAR___NTKParmesanAssetLayout_timeLayout] = v6;
  *&v11[v13] = v7;
  *&v11[v14] = v8;
  v11[OBJC_IVAR___NTKParmesanAssetLayout_userEdited] = v9;
  v22.receiver = v11;
  v22.super_class = v10;
  v16 = v2;
  v17 = v5;
  v18 = v6;
  v19 = v7;

  result = objc_msgSendSuper2(&v22, sel_init);
  a1[3] = v10;
  *a1 = result;
  return result;
}

id sub_23BFB64B0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_23BFFA2C0();

  return v5;
}

uint64_t sub_23BFB6520()
{
  v24 = *(v0 + OBJC_IVAR___NTKParmesanAssetLayout_mask);
  v1 = [*(v0 + OBJC_IVAR___NTKParmesanAssetLayout_timeLayout) description];
  v2 = sub_23BFFA300();
  v4 = v3;

  v5 = OBJC_IVAR___NTKParmesanAssetLayout_originalCrop;
  v6 = *(v0 + OBJC_IVAR___NTKParmesanAssetLayout_originalCrop);
  v7 = *(v6 + OBJC_IVAR___NTKParmesanCrop_origin);
  v26.origin.x = *(v7 + OBJC_IVAR___NTKParmesanPoint_x);
  v26.origin.y = *(v7 + OBJC_IVAR___NTKParmesanPoint_y);
  v8 = *(v6 + OBJC_IVAR___NTKParmesanCrop_size);
  v26.size.width = *(v8 + OBJC_IVAR___NTKParmesanSize_width);
  v26.size.height = *(v8 + OBJC_IVAR___NTKParmesanSize_height);
  if (CGRectIsEmpty(v26))
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    sub_23BF4A264(&qword_27E1E0938);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_23C007980;
    v12 = *(v0 + v5);
    v13 = *(v12 + OBJC_IVAR___NTKParmesanCrop_origin);
    v14 = *(v13 + OBJC_IVAR___NTKParmesanPoint_x);
    v15 = MEMORY[0x277D839F8];
    v16 = MEMORY[0x277D83A80];
    *(v11 + 56) = MEMORY[0x277D839F8];
    *(v11 + 64) = v16;
    *(v11 + 32) = v14;
    v17 = *(v13 + OBJC_IVAR___NTKParmesanPoint_y);
    *(v11 + 96) = v15;
    *(v11 + 104) = v16;
    *(v11 + 72) = v17;
    v18 = *(v12 + OBJC_IVAR___NTKParmesanCrop_size);
    v19 = *(v18 + OBJC_IVAR___NTKParmesanSize_width);
    *(v11 + 136) = v15;
    *(v11 + 144) = v16;
    *(v11 + 112) = v19;
    v20 = *(v18 + OBJC_IVAR___NTKParmesanSize_height);
    *(v11 + 176) = v15;
    *(v11 + 184) = v16;
    *(v11 + 152) = v20;
    v9 = sub_23BFFA330();
    v10 = v21;
  }

  v22 = 0x6B73614D736168;
  if (!v24)
  {
    v22 = 0x6B73614D6F6ELL;
  }

  v25 = v22;
  MEMORY[0x23EEC3090](45, 0xE100000000000000);
  MEMORY[0x23EEC3090](v2, v4);

  MEMORY[0x23EEC3090](v9, v10);

  return v25;
}

uint64_t sub_23BFB6764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v61 = a3;
  v62 = a4;
  v59 = a1;
  v6 = sub_23BF4A264(&qword_27E1E0B78);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v52 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  MEMORY[0x28223BE20](v13);
  v63 = &v52 - v14;
  v15 = sub_23BFF9270();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_23BFF8D10();
  v19 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v52 - v25;
  v27 = 1;
  sub_23BFF8C10();
  v59 = v5;

  sub_23BFF9260();
  v28 = v26;
  sub_23BFF8C50();

  v29 = *(v16 + 8);
  v54 = v16 + 8;
  v55 = v15;
  v52 = v29;
  v29(v18, v15);
  v30 = sub_23BFF8C40();
  v31 = sub_23BFFA2C0();
  v32 = NTKPhotosLinkURL();

  if (v32)
  {
    sub_23BFF8CA0();

    v27 = 0;
  }

  v33 = v19[7];
  v34 = v60;
  v33(v12, v27, 1, v60);
  v35 = v12;
  v36 = v63;
  sub_23BFB6DD0(v35, v63);
  v53 = v19[6];
  v37 = v28;
  if (v53(v36, 1, v34) != 1)
  {
    if (*(v59 + OBJC_IVAR___NTKParmesanAssetLayout_mask))
    {
      v39 = v33;

      sub_23BFF9260();
      sub_23BFF8C50();

      v52(v18, v55);
      v40 = sub_23BFF8C40();
      v41 = sub_23BFFA2C0();
      v42 = NTKPhotosLinkURL();

      if (v42)
      {
        v43 = v56;
        sub_23BFF8CA0();

        v44 = 0;
      }

      else
      {
        v44 = 1;
        v43 = v56;
      }

      v46 = v19[1];
      v47 = v60;
      v46(v58, v60);
      v46(v23, v47);
      v46(v37, v47);
      v39(v43, v44, 1, v47);
      v48 = v57;
      sub_23BFB6DD0(v43, v57);
      v49 = v53(v48, 1, v47);
      sub_23BF4B2D4(v48, &qword_27E1E0B78);
      v36 = v63;
      if (v49 == 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v45 = v19[1];
      v45(v23, v34);
      v45(v28, v34);
    }

    v50 = 1;
    goto LABEL_13;
  }

  v38 = v19[1];
  v38(v23, v34);
  v38(v28, v34);
LABEL_11:
  v50 = 0;
LABEL_13:
  sub_23BF4B2D4(v36, &qword_27E1E0B78);
  return v50;
}

unint64_t sub_23BFB6D7C()
{
  result = qword_27E1E2300;
  if (!qword_27E1E2300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2300);
  }

  return result;
}

uint64_t sub_23BFB6DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E0B78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BFB6E40()
{
  v0 = sub_23BFFAB70();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23BFB6E8C(uint64_t a1, uint64_t a2)
{
  sub_23BF4C8B4();
  v4 = *(a2 + OBJC_IVAR___NTKParmesanAssetLayout_originalCrop);
  v5 = *(a1 + OBJC_IVAR___NTKParmesanAssetLayout_originalCrop);
  v6 = v4;
  v7 = sub_23BFFA880();

  if ((v7 & 1) == 0)
  {
    goto LABEL_21;
  }

  v8 = *(a1 + OBJC_IVAR___NTKParmesanAssetLayout_baseImageName) == *(a2 + OBJC_IVAR___NTKParmesanAssetLayout_baseImageName) && *(a1 + OBJC_IVAR___NTKParmesanAssetLayout_baseImageName + 8) == *(a2 + OBJC_IVAR___NTKParmesanAssetLayout_baseImageName + 8);
  if (!v8 && (sub_23BFFACC0() & 1) == 0)
  {
    goto LABEL_21;
  }

  v9 = *(a1 + OBJC_IVAR___NTKParmesanAssetLayout_mask);
  v10 = *(a2 + OBJC_IVAR___NTKParmesanAssetLayout_mask);
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    type metadata accessor for ParmesanAssetMask();
    v11 = v10;
    v12 = v9;
    v13 = sub_23BFFA880();

    if ((v13 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v10)
  {
    goto LABEL_21;
  }

  v14 = *(a1 + OBJC_IVAR___NTKParmesanAssetLayout_timeLayout);
  v15 = *(a2 + OBJC_IVAR___NTKParmesanAssetLayout_timeLayout);
  if (*(v14 + OBJC_IVAR___NTKParmesanTimeLayout_alignment) != *(v15 + OBJC_IVAR___NTKParmesanTimeLayout_alignment) || *(v14 + OBJC_IVAR___NTKParmesanTimeLayout_scale) != *(v15 + OBJC_IVAR___NTKParmesanTimeLayout_scale))
  {
    goto LABEL_21;
  }

  v16 = *(a1 + OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis);
  v17 = *(a2 + OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_19;
    }

LABEL_21:
    v21 = 0;
    return v21 & 1;
  }

  if (!v17)
  {
    goto LABEL_21;
  }

  type metadata accessor for ParmesanColorAnalysis();
  v18 = v17;
  v19 = v16;
  v20 = sub_23BFFA880();

  if ((v20 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (*(a1 + OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness) != *(a2 + OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness))
  {
    goto LABEL_21;
  }

  v21 = *(a1 + OBJC_IVAR___NTKParmesanAssetLayout_userEdited) ^ *(a2 + OBJC_IVAR___NTKParmesanAssetLayout_userEdited) ^ 1;
  return v21 & 1;
}

uint64_t sub_23BFB7064(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ParmesanAssetLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ParmesanAssetLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23BFB7200()
{
  result = qword_27E1E2350;
  if (!qword_27E1E2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2350);
  }

  return result;
}

unint64_t sub_23BFB7258()
{
  result = qword_27E1E2358;
  if (!qword_27E1E2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2358);
  }

  return result;
}

unint64_t sub_23BFB72B0()
{
  result = qword_27E1E2360;
  if (!qword_27E1E2360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2360);
  }

  return result;
}

uint64_t sub_23BFB7304@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = sub_23BFF9E10();
  sub_23BFF9710();
  v4 = v54;
  v3 = v4 >> 64;
  v37 = v4;
  v5 = v55;
  v34 = sub_23BFFA030();
  v39 = v6;
  v7 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_width);
  v8 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_ascent);
  v9 = v8 + *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_descent);
  sub_23BFFA030();
  sub_23BFF9740();
  v38 = sub_23BFF9E20();
  sub_23BFF9710();
  v10 = v57;
  v32 = DWORD2(v57);
  v11 = sub_23BFFA030();
  v35 = v12;
  v36 = v11;
  v13 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_glyphPathBounds);
  v14 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_glyphPathBounds + 8);
  v15 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_glyphPathBounds + 16);
  v16 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_glyphPathBounds + 24);
  v113.origin.x = v13;
  v113.origin.y = v14;
  v113.size.width = v15;
  v113.size.height = v16;
  CGRectGetWidth(v113);
  v114.origin.x = v13;
  v114.origin.y = v14;
  v114.size.width = v15;
  v114.size.height = v16;
  CGRectGetHeight(v114);
  sub_23BFFA030();
  sub_23BFF9740();
  v115.origin.x = v13;
  v115.origin.y = v14;
  v115.size.width = v15;
  v115.size.height = v16;
  v17 = v8 - CGRectGetMaxY(v115);
  sub_23BFF9C50();
  sub_23BFF9E70();
  v18 = sub_23BFF9E80();

  sub_23BFF9710();
  v19 = sub_23BFFA030();
  v31 = v20;
  v21 = v20;
  v22 = sub_23BFF9E30();
  sub_23BFFA030();
  sub_23BFF9740();
  *&v48[6] = v60;
  *&v48[22] = v61;
  *&v48[38] = v62;
  v23 = v7 * 0.5;
  v24 = v9 * 0.5;
  v63[0] = v54;
  v63[1] = v55;
  v25 = v56;
  *&v64 = v56;
  *(&v64 + 1) = v40;
  LOWORD(v65) = 256;
  *(&v65 + 1) = v34;
  *v66 = v39;
  *&v66[40] = v47;
  *&v66[24] = v46;
  *&v66[8] = v45;
  __src[2] = v64;
  __src[3] = v65;
  __src[0] = v54;
  __src[1] = v55;
  __src[4] = *v66;
  __src[5] = *&v66[16];
  __src[6] = *&v66[32];
  v67[0] = v57;
  v26 = HIDWORD(v57);
  v27 = v58;
  v67[1] = v58;
  v28 = *(&v58 + 1);
  v29 = v59;
  *&v68 = v59;
  *(&v68 + 1) = v38;
  LOWORD(v69) = 256;
  *(&v69 + 1) = v36;
  *v70 = v35;
  *&v70[24] = v43;
  *&v70[40] = v44;
  *&v70[8] = v42;
  *&v70[56] = v13;
  v71 = v17;
  *(&__src[7] + 8) = v57;
  *(&__src[11] + 8) = *v70;
  *(&__src[10] + 8) = v69;
  *(&__src[9] + 8) = v68;
  *(&__src[8] + 8) = v58;
  *&__src[7] = *(&v47 + 1);
  *(&__src[15] + 1) = v17;
  *(&__src[14] + 8) = *&v70[48];
  *(&__src[13] + 8) = *&v70[32];
  *(&__src[12] + 8) = *&v70[16];
  v72[2] = v51;
  v72[3] = v52;
  v72[4] = v53;
  v72[1] = v50;
  v72[0] = v49;
  *&v73 = v18;
  WORD4(v73) = 256;
  *&v74 = v19;
  *(&v74 + 1) = v21;
  __src[18] = v51;
  __src[19] = v52;
  __src[16] = v49;
  __src[17] = v50;
  __src[20] = v53;
  __src[21] = v73;
  *v75 = v22;
  *&v75[8] = 256;
  *&v75[10] = *v48;
  *&v75[26] = *&v48[16];
  *&v75[42] = *&v48[32];
  *&v75[56] = *(&v62 + 1);
  *&v76 = v23;
  *(&v76 + 1) = v24;
  __src[22] = v74;
  __src[23] = *v75;
  __src[26] = *&v75[48];
  __src[27] = v76;
  __src[24] = *&v75[16];
  __src[25] = *&v75[32];
  memcpy(a2, __src, 0x1C0uLL);
  v77 = v22;
  v78 = 256;
  v79 = *v48;
  v80 = *&v48[16];
  *v81 = *&v48[32];
  *&v81[14] = *&v48[46];
  v82 = v23;
  v83 = v24;
  sub_23BF4B33C(v63, &v89, &qword_27E1E2368);
  sub_23BF4B33C(v67, &v89, &qword_27E1E2370);
  sub_23BF4B33C(v72, &v89, &qword_27E1E2378);
  sub_23BF4B33C(v75, &v89, &qword_27E1E2380);
  sub_23BF4B2D4(&v77, &qword_27E1E2380);
  v84[2] = v51;
  v84[3] = v52;
  v84[4] = v53;
  v84[1] = v50;
  v84[0] = v49;
  v85 = v18;
  v86 = 256;
  v87 = v19;
  v88 = v31;
  sub_23BF4B2D4(v84, &qword_27E1E2378);
  v89 = v10;
  v90 = v32;
  v91 = v26;
  v92 = v27;
  v93 = v28;
  v94 = v29;
  v95 = v38;
  v96 = 256;
  v97 = v36;
  v98 = v35;
  v99 = v42;
  v100 = v43;
  v101 = v44;
  v102 = v13;
  v103 = v17;
  sub_23BF4B2D4(&v89, &qword_27E1E2370);
  v104[0] = __PAIR128__(v3, v37);
  v104[1] = v5;
  v105 = v25;
  v106 = v40;
  v107 = 256;
  v108 = v34;
  v109 = v39;
  v110 = v45;
  v111 = v46;
  v112 = v47;
  return sub_23BF4B2D4(v104, &qword_27E1E2368);
}

uint64_t sub_23BFB7ABC()
{
  if (*v0)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

uint64_t sub_23BFB7AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_23BFFACC0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_23BFFACC0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_23BFB7B9C(uint64_t a1)
{
  v2 = sub_23BFB8064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BFB7BD8(uint64_t a1)
{
  v2 = sub_23BFB8064();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_23BFB7C14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanPoint();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BFB7C6C(void *a1)
{
  v3 = sub_23BF4A264(&qword_27E1E23A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_23BF4C484(a1, a1[3]);
  sub_23BFB8064();
  sub_23BFFAE40();
  v8[15] = 0;
  sub_23BFFAC30();
  if (!v1)
  {
    v8[14] = 1;
    sub_23BFFAC30();
  }

  return (*(v4 + 8))(v6, v3);
}

id sub_23BFB7DFC(void *a1)
{
  v3 = v1;
  v5 = sub_23BF4A264(&qword_27E1E2398);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_23BF4C484(a1, a1[3]);
  sub_23BFB8064();
  sub_23BFFAE20();
  if (v2)
  {
    sub_23BF4A9A4(a1);
    type metadata accessor for ParmesanPoint();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    sub_23BFFABC0();
    *&v1[OBJC_IVAR___NTKParmesanPoint_x] = v9;
    v14 = 1;
    sub_23BFFABC0();
    *&v1[OBJC_IVAR___NTKParmesanPoint_y] = v11;
    v12 = type metadata accessor for ParmesanPoint();
    v13.receiver = v1;
    v13.super_class = v12;
    v3 = objc_msgSendSuper2(&v13, sel_init);
    (*(v6 + 8))(v8, v5);
    sub_23BF4A9A4(a1);
  }

  return v3;
}

id sub_23BFB7FEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ParmesanPoint());
  result = sub_23BFB7DFC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_23BFB8064()
{
  result = qword_27E1E23A0;
  if (!qword_27E1E23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E23A0);
  }

  return result;
}

unint64_t sub_23BFB80CC()
{
  result = qword_27E1E23B0;
  if (!qword_27E1E23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E23B0);
  }

  return result;
}

unint64_t sub_23BFB8124()
{
  result = qword_27E1E23B8;
  if (!qword_27E1E23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E23B8);
  }

  return result;
}

unint64_t sub_23BFB817C()
{
  result = qword_27E1E23C0;
  if (!qword_27E1E23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E23C0);
  }

  return result;
}

id sub_23BFB82CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanGalleryImageContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BFB8370(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_23BFCE138(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v14;
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 > 2)
      {
        switch(v5)
        {
          case 3:
            v7 = 0xE600000000000000;
            v8 = 0x65727574614ELL;
            break;
          case 4:
            v7 = 0xE900000000000065;
            v8 = 0x7061637379746943;
            break;
          case 5:
            v7 = 0xE500000000000000;
            v8 = 0x726568744FLL;
            break;
          default:
            goto LABEL_14;
        }
      }

      else if (v5)
      {
        if (v5 == 1)
        {
          v7 = 0xE600000000000000;
          v8 = 0x6E6F73726550;
          goto LABEL_17;
        }

        if (v5 != 2)
        {
LABEL_14:
          v7 = 0xE700000000000000;
          v8 = 0x6E776F6E6B6E55;
          goto LABEL_17;
        }

        v7 = 0xE300000000000000;
        v8 = 7628112;
      }

      else
      {
        v7 = 0xE400000000000000;
        v8 = 1701736270;
      }

LABEL_17:
      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_23BFCE138((v9 > 1), v10 + 1, 1);
      }

      *(v14 + 16) = v10 + 1;
      v11 = v14 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      --v1;
    }

    while (v1);
  }

  v12 = MEMORY[0x23EEC3130](v2, MEMORY[0x277D837D0]);

  return v12;
}

BOOL sub_23BFB8550(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_23BFFAD90();
  MEMORY[0x23EEC3A60](a1);
  v4 = sub_23BFFADF0();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

id sub_23BFB86A4(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3))
  {

    v3 = sub_23BFFA450();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_23BFB8730()
{
  sub_23BF4A264(&qword_27E1E0938);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23C004AB0;
  *(v1 + 56) = type metadata accessor for ParmesanShuffleSelection();
  *(v1 + 64) = sub_23BFBB414(&qword_27E1E2428, v2, type metadata accessor for ParmesanShuffleSelection);
  *(v1 + 32) = v0;
  v3 = *&v0[OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes];
  v4 = v0;
  if (v3)
  {
    v5 = sub_23BFB8370(v3);
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  v8 = MEMORY[0x277D837D0];
  *(v1 + 96) = MEMORY[0x277D837D0];
  v9 = sub_23BFBB45C();
  *(v1 + 104) = v9;
  *(v1 + 72) = v5;
  *(v1 + 80) = v7;
  v10 = *&v0[OBJC_IVAR___NTKParmesanShuffleSelection_personIdentifiers];
  if (v10)
  {
    v11 = MEMORY[0x23EEC3130](v10, v8);
    v13 = (v1 + 112);
    *(v1 + 136) = v8;
    *(v1 + 144) = v9;
    if (v12)
    {
      *v13 = v11;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = (v1 + 112);
    *(v1 + 136) = v8;
    *(v1 + 144) = v9;
  }

  *v13 = 7104878;
  v12 = 0xE300000000000000;
LABEL_9:
  *(v1 + 120) = v12;
  v15 = *&v0[OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier];
  v14 = *&v0[OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier + 8];
  *(v1 + 176) = v8;
  *(v1 + 184) = v9;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 7104878;
  }

  v17 = 0xE300000000000000;
  if (v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = 0xE300000000000000;
  }

  *(v1 + 152) = v16;
  *(v1 + 160) = v18;
  v19 = 20302;
  if (v0[OBJC_IVAR___NTKParmesanShuffleSelection_isDaily])
  {
    v19 = 5457241;
  }

  else
  {
    v17 = 0xE200000000000000;
  }

  *(v1 + 216) = v8;
  *(v1 + 224) = v9;
  *(v1 + 192) = v19;
  *(v1 + 200) = v17;
  v20 = *&v0[OBJC_IVAR___NTKParmesanShuffleSelection_manualSelection];
  if (v20)
  {

    v21 = MEMORY[0x23EEC3130](v20, v8);
    v23 = (v1 + 232);
    *(v1 + 256) = v8;
    *(v1 + 264) = v9;
    if (v22)
    {
      *v23 = v21;
      goto LABEL_23;
    }
  }

  else
  {
    v23 = (v1 + 232);
    *(v1 + 256) = v8;
    *(v1 + 264) = v9;
  }

  *v23 = 7104878;
  v22 = 0xE300000000000000;
LABEL_23:
  *(v1 + 240) = v22;

  return sub_23BFFA330();
}

id sub_23BFB8BA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanShuffleSelection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BFB8C70(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23BFFAAB0())
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EEC36D0](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 integerValue];

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_23BF6163C(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_23BF6163C((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      *&v5[8 * v11 + 32] = v9;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_21:

  v12 = type metadata accessor for ParmesanShuffleSelection();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes] = v5;
  *&v13[OBJC_IVAR___NTKParmesanShuffleSelection_personIdentifiers] = a2;
  v14 = &v13[OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier];
  *v14 = 0;
  v14[1] = 0;
  *&v13[OBJC_IVAR___NTKParmesanShuffleSelection_manualSelection] = 0;
  v13[OBJC_IVAR___NTKParmesanShuffleSelection_isDaily] = 0;
  v18.receiver = v13;
  v18.super_class = v12;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v15;
}

uint64_t sub_23BFB8EF0()
{
  v1 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes);
  result = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    v3 = *(v1 + 16);
    if (v3)
    {
      sub_23BF4BDF0(0, &qword_27E1E0C68);
      v4 = (v1 + 32);
      while (1)
      {
        v5 = *v4++;
        if (v5 < 0)
        {
          goto LABEL_15;
        }

        sub_23BFFA860();
        MEMORY[0x23EEC3100]();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23BFFA480();
        }

        sub_23BFFA4A0();
        if (!--v3)
        {
          v6 = v12;
          if (v12 >> 62)
          {
            goto LABEL_12;
          }

          return v6 & 0xFFFFFFFFFFFFFF8;
        }
      }
    }

    v6 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
LABEL_12:
      v7 = sub_23BFFAAB0();
      if (!v7)
      {
LABEL_16:

        return MEMORY[0x277D84F90];
      }

      v8 = v7;
      v9 = sub_23BF62188(v7, 0);
      sub_23BFBABD4((v9 + 4), v8, v6);
      v11 = v10;

      result = v9;
      if (v11 != v8)
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      return v6 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return result;
}

id sub_23BFB90E4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_23BFFA2C0();

  return v5;
}

uint64_t sub_23BFB9154()
{
  if (*&v0[OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes])
  {

    v2 = sub_23BFBAE20(v1);

    v3 = sub_23BFB8550(1, v2);
    if (v3)
    {
      sub_23BF4BDF0(0, &qword_27E1E0930);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v5 = sub_23BFFA2C0();
      v6 = sub_23BFFA2C0();
      v7 = [ObjCClassFromMetadata localizedStringForKey:v5 comment:v6];

      v8 = sub_23BFFA300();
      v10 = v9;

      v11 = sub_23BF61740(0, 1, 1, MEMORY[0x277D84F90]);
      v13 = *(v11 + 2);
      v12 = *(v11 + 3);
      if (v13 >= v12 >> 1)
      {
        v11 = sub_23BF61740((v12 > 1), v13 + 1, 1, v11);
      }

      *(v11 + 2) = v13 + 1;
      v14 = &v11[16 * v13];
      *(v14 + 4) = v8;
      *(v14 + 5) = v10;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    if (sub_23BFB8550(2, v2))
    {
      sub_23BF4BDF0(0, &qword_27E1E0930);
      v23 = swift_getObjCClassFromMetadata();
      v24 = sub_23BFFA2C0();
      v25 = sub_23BFFA2C0();
      v26 = [v23 localizedStringForKey:v24 comment:v25];

      v27 = sub_23BFFA300();
      v29 = v28;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_23BF61740(0, *(v11 + 2) + 1, 1, v11);
      }

      v31 = *(v11 + 2);
      v30 = *(v11 + 3);
      if (v31 >= v30 >> 1)
      {
        v11 = sub_23BF61740((v30 > 1), v31 + 1, 1, v11);
      }

      v3 = 0;
      *(v11 + 2) = v31 + 1;
      v32 = &v11[16 * v31];
      *(v32 + 4) = v27;
      *(v32 + 5) = v29;
    }

    if (sub_23BFB8550(3, v2))
    {
      sub_23BF4BDF0(0, &qword_27E1E0930);
      v33 = swift_getObjCClassFromMetadata();
      v34 = sub_23BFFA2C0();
      v35 = sub_23BFFA2C0();
      v36 = [v33 localizedStringForKey:v34 comment:v35];

      v37 = sub_23BFFA300();
      v39 = v38;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_23BF61740(0, *(v11 + 2) + 1, 1, v11);
      }

      v41 = *(v11 + 2);
      v40 = *(v11 + 3);
      if (v41 >= v40 >> 1)
      {
        v11 = sub_23BF61740((v40 > 1), v41 + 1, 1, v11);
      }

      v3 = 0;
      *(v11 + 2) = v41 + 1;
      v42 = &v11[16 * v41];
      *(v42 + 4) = v37;
      *(v42 + 5) = v39;
    }

    v43 = sub_23BFB8550(4, v2);

    if (v43)
    {
      sub_23BF4BDF0(0, &qword_27E1E0930);
      v44 = swift_getObjCClassFromMetadata();
      v45 = sub_23BFFA2C0();
      v46 = sub_23BFFA2C0();
      v47 = [v44 localizedStringForKey:v45 comment:v46];

      v48 = sub_23BFFA300();
      v50 = v49;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_23BF61740(0, *(v11 + 2) + 1, 1, v11);
      }

      v52 = *(v11 + 2);
      v51 = *(v11 + 3);
      if (v52 >= v51 >> 1)
      {
        v11 = sub_23BF61740((v51 > 1), v52 + 1, 1, v11);
      }

      *(v11 + 2) = v52 + 1;
      v53 = &v11[16 * v52];
      *(v53 + 4) = v48;
      *(v53 + 5) = v50;
      goto LABEL_33;
    }

    if (!v3)
    {
LABEL_33:
      sub_23BF4BDF0(0, &qword_27E1E0930);
      v55 = swift_getObjCClassFromMetadata();
      v56 = sub_23BFFA2C0();
      v57 = sub_23BFFA2C0();
      v58 = [v55 localizedStringForKey:v56 comment:v57];

      sub_23BFFA300();
      sub_23BF4A264(&unk_27E1E0BF0);
      sub_23BF4BE40(&qword_27E1E2400, &unk_27E1E0BF0);
      v22 = sub_23BFFA290();

      return v22;
    }

    if (*&v0[OBJC_IVAR___NTKParmesanShuffleSelection_personIdentifiers])
    {
      v54 = sub_23BFFA450();
    }

    else
    {
      v54 = 0;
    }

    v59 = [type metadata accessor for ParmesanShuffleSelection() peopleDetailTitleFor_];

    v22 = sub_23BFFA300();
  }

  else
  {
    if (qword_27E1DFD90 != -1)
    {
      swift_once();
    }

    v15 = sub_23BFF92B0();
    sub_23BF4A22C(v15, qword_27E1EB480);
    v16 = v0;
    v17 = sub_23BFF9290();
    v18 = sub_23BFFA650();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_23BF0C000, v17, v18, "No shuffle types for selection: %@", v19, 0xCu);
      sub_23BF713D8(v20);
      MEMORY[0x23EEC4DF0](v20, -1, -1);
      MEMORY[0x23EEC4DF0](v19, -1, -1);
    }

    return 0;
  }

  return v22;
}

uint64_t sub_23BFB98C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [a1 px_localizedName];
  v8 = sub_23BFFA300();
  v10 = v9;

  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 == 0xE000000000000000;
  }

  if (v11 || (sub_23BFFACC0() & 1) != 0)
  {
    swift_beginAccess();
    *(a4 + 16) = 1;
  }

  swift_beginAccess();
  v12 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_23BF61740(0, *(v12 + 2) + 1, 1, v12);
    *(a5 + 16) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_23BF61740((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[16 * v15];
  *(v16 + 4) = v8;
  *(v16 + 5) = v10;
  *(a5 + 16) = v12;
  return swift_endAccess();
}

void sub_23BFB9A00(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_23BFB9B0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_23BFFAD90();
  sub_23BFFA3A0();
  v8 = sub_23BFFADF0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_23BFFACC0() & 1) != 0)
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

    sub_23BFBA204(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_23BFB9C5C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_23BFFAD90();
  MEMORY[0x23EEC3A60](a2);
  v6 = sub_23BFFADF0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_23BFBA384(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_23BFB9D54()
{
  v1 = v0;
  v2 = *v0;
  sub_23BF4A264(&qword_27E1E2438);
  result = sub_23BFFA9D0();
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
      sub_23BFFAD90();
      sub_23BFFA3A0();
      result = sub_23BFFADF0();
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

uint64_t sub_23BFB9FB4()
{
  v1 = v0;
  v2 = *v0;
  sub_23BF4A264(&qword_27E1E2410);
  result = sub_23BFFA9D0();
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
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_23BFFAD90();
      MEMORY[0x23EEC3A60](v16);
      result = sub_23BFFADF0();
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
      *(*(v4 + 48) + 8 * v12) = v16;
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

uint64_t sub_23BFBA204(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_23BFB9D54();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_23BFBA4E0();
      goto LABEL_16;
    }

    sub_23BFBA77C();
  }

  v10 = *v4;
  sub_23BFFAD90();
  sub_23BFFA3A0();
  result = sub_23BFFADF0();
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

      result = sub_23BFFACC0();
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
  result = sub_23BFFAD00();
  __break(1u);
  return result;
}

void sub_23BFBA384(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23BFB9FB4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_23BFBA63C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_23BFBA9B4();
  }

  v8 = *v3;
  sub_23BFFAD90();
  MEMORY[0x23EEC3A60](a1);
  v9 = sub_23BFFADF0();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for PFLCClassification(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_23BFFAD00();
  __break(1u);
}

void *sub_23BFBA4E0()
{
  v1 = v0;
  sub_23BF4A264(&qword_27E1E2438);
  v2 = *v0;
  v3 = sub_23BFFA9C0();
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

void *sub_23BFBA63C()
{
  v1 = v0;
  sub_23BF4A264(&qword_27E1E2410);
  v2 = *v0;
  v3 = sub_23BFFA9C0();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

uint64_t sub_23BFBA77C()
{
  v1 = v0;
  v2 = *v0;
  sub_23BF4A264(&qword_27E1E2438);
  result = sub_23BFFA9D0();
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
      sub_23BFFAD90();

      sub_23BFFA3A0();
      result = sub_23BFFADF0();
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

uint64_t sub_23BFBA9B4()
{
  v1 = v0;
  v2 = *v0;
  sub_23BF4A264(&qword_27E1E2410);
  result = sub_23BFFA9D0();
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
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_23BFFAD90();
      MEMORY[0x23EEC3A60](v15);
      result = sub_23BFFADF0();
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
      *(*(v4 + 48) + 8 * v11) = v15;
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

uint64_t sub_23BFBABD4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23BFFAAB0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23BFFAAB0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23BF4BE40(&qword_27E1E2420, &qword_27E1E2418);
          for (i = 0; i != v6; ++i)
          {
            sub_23BF4A264(&qword_27E1E2418);
            v9 = sub_23BFC6798(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_23BF4BDF0(0, &qword_27E1E0C68);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23BFBAD88(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23EEC3290](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_23BFB9B0C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_23BFBAE20(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for PFLCClassification(0);
  v4 = v3;
  v5 = sub_23BFBB414(&qword_27E1E2408, 255, type metadata accessor for PFLCClassification);
  result = MEMORY[0x23EEC3290](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_23BFB9C5C(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_23BFBAED0(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    v3 = (v2 + 16);
    if (v1 < 4)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = MEMORY[0x277D84F90];
      v10 = objc_opt_self();
      v11 = sub_23BFFA450();
      v12 = [v10 fetchPersonsWithLocalIdentifiers:v11 options:0];

      v13 = swift_allocObject();
      *(v13 + 16) = v2;
      *(v13 + 24) = v9;
      aBlock[4] = sub_23BFBB3F4;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23BFB9A00;
      aBlock[3] = &unk_284EC1810;
      v14 = _Block_copy(aBlock);

      [v12 enumerateObjectsUsingBlock_];
      _Block_release(v14);

      swift_beginAccess();
      sub_23BF4BDF0(0, &qword_27E1E0930);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

      v16 = sub_23BFFA2C0();
      v17 = sub_23BFFA2C0();
      v18 = [ObjCClassFromMetadata localizedStringForKey:v16 comment:v17];

      sub_23BFFA300();
      sub_23BF4A264(&unk_27E1E0BF0);
      sub_23BF4BE40(&qword_27E1E2400, &unk_27E1E0BF0);
      v4 = sub_23BFFA290();
    }

    else
    {
      v4 = 0;
      *v3 = 1;
    }

    swift_beginAccess();
    if (*v3 == 1)
    {

      sub_23BF4BDF0(0, &qword_27E1E0930);
      v19 = swift_getObjCClassFromMetadata();
      v20 = sub_23BFFA2C0();
      v21 = sub_23BFFA2C0();
      v22 = sub_23BFFA2C0();
      v23 = [v19 localizedStringForKey:v20 table:v21 comment:v22];

      sub_23BFFA300();
      sub_23BF4A264(&qword_27E1E0938);
      v24 = swift_allocObject();
      v25 = MEMORY[0x277D83B88];
      *(v24 + 16) = xmmword_23C001BB0;
      v26 = MEMORY[0x277D83C10];
      *(v24 + 56) = v25;
      *(v24 + 64) = v26;
      *(v24 + 32) = v1;
      v4 = sub_23BFFA2D0();
    }

    else
    {
    }
  }

  else
  {
    sub_23BF4BDF0(0, &qword_27E1E0930);
    v5 = swift_getObjCClassFromMetadata();
    v6 = sub_23BFFA2C0();
    v7 = sub_23BFFA2C0();
    v8 = [v5 localizedStringForKey:v6 comment:v7];

    v4 = sub_23BFFA300();
  }

  return v4;
}

uint64_t sub_23BFBB3FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23BFBB414(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_23BFBB45C()
{
  result = qword_27E1E2430;
  if (!qword_27E1E2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2430);
  }

  return result;
}

id sub_23BFBB508()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanGalleryTransitionCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23BFBB57C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance);
  v4 = *(v3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device);
  v5 = *(v3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
  v6 = *(a1 + 16);
  v7 = *(v3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface);
  v8 = *(a1 + 24);
  v9 = *(v3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals);
  v10 = type metadata accessor for ParmesanTimeAppearance();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device] = v4;
  *&v11[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = v5;
  *&v11[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface] = v7;
  v12 = v1;
  *&v11[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals] = v9;
  v13 = &v11[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
  *v13 = v6;
  v13[8] = v8;
  v14 = v5;
  v15 = v4;
  sub_23BF674B4(v6, v8);
  v36.receiver = v11;
  v36.super_class = v10;
  v16 = objc_msgSendSuper2(&v36, sel_init);
  v17 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView;
  v18 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView);
  if (v18)
  {
    v19 = v18;
    sub_23BFDC858(a1);

    v20 = *(v12 + v17);
    if (v20)
    {
      v21 = *(v12 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_complicationVisibility);
      v22 = v20;
      v23 = sub_23BF672DC(v16, v21);
      sub_23BFBD8A0(v23, v22);
    }
  }

  v24 = *(v12 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView);
  if (v24)
  {
    v25 = v24;
    sub_23BF7BD1C(v16);
  }

  v26 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeContainerView;
  v27 = *(v12 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeContainerView);
  if (v27)
  {
    v28 = v27;
    sub_23BF69088(a1);
  }

  v29 = *(v12 + v26);
  if (v8)
  {
    if (v29)
    {
      [v29 setAlpha_];
      v30 = *(v12 + v26);
      if (v30)
      {
        [v30 setHidden_];
      }
    }

    v31 = *(v12 + v17);
    if (v31)
    {
      [v31 setAlpha_];
      goto LABEL_19;
    }
  }

  else
  {
    if (v29)
    {
      [v29 setAlpha_];
      v32 = *(v12 + v26);
      if (v32)
      {
        [v32 setHidden_];
      }
    }

    v33 = *(v12 + v17);
    if (v33)
    {
      [v33 setAlpha_];
LABEL_19:
      v34 = *(v12 + v17);
      if (v34)
      {
        v35 = v34;
        [v35 setHidden_];
      }
    }
  }
}

void sub_23BFBB838(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (qword_27E1DFE18 != -1)
  {
    swift_once();
  }

  if (byte_27E1E1D60 != 1)
  {
LABEL_6:
    v11 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeContainerView;
    v12 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeContainerView);
    if (v12)
    {
      v13 = v12;
      sub_23BF69384(a1, a2);

      v14 = *(v4 + v11);
      if (v14)
      {
        [v14 setAlpha_];
        v15 = *(v4 + v11);
        if (v15)
        {
          [v15 setHidden_];
        }
      }
    }

    v16 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView;
    v17 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView);
    if (v17)
    {
      v18 = v17;
      sub_23BFDC858(a2);
LABEL_12:

      v19 = *(v4 + v16);
      if (v19)
      {
        [v19 setAlpha_];
        v20 = *(v4 + v16);
        if (v20)
        {

          [v20 setHidden_];
        }
      }

      return;
    }

    return;
  }

  v10 = *(a2 + 24);
  if (v9)
  {
    if (*(a2 + 24))
    {
      goto LABEL_6;
    }

    v102 = *(a2 + 16);
    v57 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView);
    if (v57)
    {
      v58 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance);
      v59 = *(v58 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device);
      v60 = *(v58 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
      v96 = *(v58 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals);
      v98 = *(v58 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface);
      v61 = type metadata accessor for ParmesanTimeAppearance();
      v62 = objc_allocWithZone(v61);
      *&v62[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device] = v59;
      *&v62[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = v60;
      *&v62[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface] = v98;
      *&v62[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals] = v96;
      v63 = &v62[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
      *v63 = v8;
      v63[8] = v9;
      sub_23BF674B4(v8, v9);
      v106.receiver = v62;
      v106.super_class = v61;
      v64 = v57;
      v65 = v60;
      v66 = v59;
      v67 = objc_msgSendSuper2(&v106, sel_init);
      sub_23BF7BD1C(v67);
    }

    v68 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeContainerView;
    v69 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeContainerView);
    if (v69)
    {
      v70 = v69;
      sub_23BF69088(a1);

      v71 = *(v4 + v68);
      if (v71)
      {
        [v71 setAlpha_];
        v72 = *(v4 + v68);
        if (v72)
        {
          [v72 setHidden_];
        }
      }
    }

    v73 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView);
    if (!v73)
    {
      return;
    }

    v74 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance);
    v75 = *(v74 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device);
    v100 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView;
    v76 = *(v74 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
    v77 = *(v74 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface);
    v78 = *(v74 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals);
    v79 = type metadata accessor for ParmesanTimeAppearance();
    v80 = objc_allocWithZone(v79);
    *&v80[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device] = v75;
    *&v80[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = v76;
    *&v80[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface] = v77;
    *&v80[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals] = v78;
    v81 = &v80[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
    *v81 = v102;
    v81[8] = 0;
    v105.receiver = v80;
    v105.super_class = v79;
    v82 = v73;
    v83 = v76;
    v84 = v75;
    v85 = objc_msgSendSuper2(&v105, sel_init);
    v86 = sub_23BF672DC(v85, *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_complicationVisibility));

    v87 = v86;
    sub_23BFBD8A0(v87, v82);

    v88 = *(v4 + v100);
    if (!v88)
    {
      return;
    }

    v89 = v88;
    sub_23BFDC858(a2);

    v90 = *(v4 + v100);
    if (!v90)
    {
      return;
    }

    [v90 setAlpha_];
    v56 = *(v4 + v100);
    if (!v56)
    {
      return;
    }

LABEL_39:
    [v56 setHidden_];
    return;
  }

  v21 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView;
  v22 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView);
  if (*(a2 + 24))
  {
    v101 = *(a2 + 16);
    if (v22)
    {
      v23 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance);
      v24 = *(v23 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device);
      v97 = *(v23 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
      v99 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView;
      v95 = *(v23 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface);
      v25 = *(v23 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals);
      v26 = type metadata accessor for ParmesanTimeAppearance();
      v27 = objc_allocWithZone(v26);
      *&v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device] = v24;
      *&v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = v97;
      *&v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface] = v95;
      *&v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals] = v25;
      v28 = &v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
      *v28 = v8;
      v28[8] = 0;
      v104.receiver = v27;
      v104.super_class = v26;
      v29 = v22;
      v30 = v97;
      v31 = v24;
      v32 = objc_msgSendSuper2(&v104, sel_init);
      v33 = sub_23BF672DC(v32, *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_complicationVisibility));

      v34 = v33;
      sub_23BFBD8A0(v34, v29);

      v35 = *(v4 + v99);
      if (v35)
      {
        v36 = v35;
        sub_23BFDC858(a1);

        v37 = *(v4 + v99);
        if (v37)
        {
          [v37 setAlpha_];
          v38 = *(v4 + v99);
          if (v38)
          {
            [v38 setHidden_];
          }
        }
      }
    }

    v39 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView);
    if (v39)
    {
      v40 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance);
      v41 = *(v40 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device);
      v42 = *(v40 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
      v43 = *(v40 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface);
      v44 = *(v40 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals);
      v45 = type metadata accessor for ParmesanTimeAppearance();
      v46 = objc_allocWithZone(v45);
      *&v46[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device] = v41;
      *&v46[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = v42;
      *&v46[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface] = v43;
      *&v46[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals] = v44;
      v47 = &v46[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
      *v47 = v101;
      v47[8] = v10;
      sub_23BF674B4(v101, v10);
      v103.receiver = v46;
      v103.super_class = v45;
      v48 = v39;
      v49 = v42;
      v50 = v41;
      v51 = objc_msgSendSuper2(&v103, sel_init);
      sub_23BF7BD1C(v51);
    }

    v52 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeContainerView;
    v53 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeContainerView);
    if (!v53)
    {
      return;
    }

    v54 = v53;
    sub_23BF69088(a2);

    v55 = *(v4 + v52);
    if (!v55)
    {
      return;
    }

    [v55 setAlpha_];
    v56 = *(v4 + v52);
    if (!v56)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v22)
  {
    v91 = v22;
    sub_23BFDCA58(a1, a2, a3);

    v92 = *(v4 + v21);
    if (v92)
    {
      [v92 setAlpha_];
      v93 = *(v4 + v21);
      if (v93)
      {
        [v93 setHidden_];
      }
    }
  }

  v16 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeContainerView;
  v94 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeContainerView);
  if (v94)
  {
    v18 = v94;
    sub_23BF69088(a2);
    goto LABEL_12;
  }
}

void sub_23BFBC05C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView);
  if (v8)
  {
    v9 = v8;
    sub_23BF7C958(a1, a2, a3);
  }

  v64 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView;
  v65 = a2;
  v10 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView);
  if (v10)
  {
    v11 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance);
    v12 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device;
    v13 = *&v11[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device];
    v14 = type metadata accessor for ParmesanTypefaceMetrics();
    v15 = objc_allocWithZone(v14);
    v63 = v10;
    v16 = v11;
    v17 = v13;
    v18 = sub_23BFEA418(v17);

    sub_23BFE5D8C(v16, a1);
    sub_23BFE5D8C(v16, v65);
    sub_23BFF9200();
    v20 = v19;
    if ([objc_opt_self() isPartiallySupported_])
    {
      v21 = [objc_opt_self() numericSoftFontOfSize:v20 weight:*MEMORY[0x277D74410]];
    }

    else
    {
      v22 = *&v11[v12];
      v23 = objc_allocWithZone(v14);
      v24 = v22;
      v25 = sub_23BFEA418(v24);
      v61 = sub_23BFE6000(v16, a1);

      v26 = objc_allocWithZone(v14);
      v27 = sub_23BFEA418(v24);

      v62 = sub_23BFE6000(v16, v65);
      v28 = sub_23BF6B988(v61, v62);
      v29 = *&v16[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface];
      v30 = *&v16[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
      v31 = v16[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8];
      sub_23BF674B4(v30, v31);
      v32 = sub_23BF6B70C();
      v33 = sub_23BF67110(v30, v31, v32, v29);

      sub_23BF674C8(v30, v31);
      v21 = [objc_opt_self() fontWithDescriptor:v33 size:v20];

      v18 = v33;
    }

    v34 = v21;
    sub_23BFBD8A0(v34, v63);
  }

  v35 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance;
  v36 = *(*(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
  v37 = *&v36[OBJC_IVAR___NTKParmesanTimeLayout_alignment];
  v38 = *&v36[OBJC_IVAR___NTKParmesanTimeLayout_scale];
  v39 = v36;
  sub_23BFE5910(v37, v38);
  v40 = objc_opt_self();
  v41 = [v40 currentDevice];
  if (!v41)
  {
    __break(1u);
    goto LABEL_16;
  }

  v42 = v41;
  [v41 screenBounds];

  v43 = *(*(v4 + v35) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
  v44 = *&v43[OBJC_IVAR___NTKParmesanTimeLayout_alignment];
  v45 = *&v43[OBJC_IVAR___NTKParmesanTimeLayout_scale];
  v46 = v43;
  sub_23BFE5910(v44, v45);
  v47 = [v40 currentDevice];
  if (!v47)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v48 = v47;
  [v47 screenBounds];

  CLKInterpolateBetweenRects();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = *(*(v4 + v35) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
  sub_23BF727F4(v67, v50, v52, v54, v56);

  v58 = *(v4 + v64);
  if (v58)
  {
    v59 = &v58[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_layout];
    v60 = v67[1];
    *v59 = v67[0];
    *(v59 + 1) = v60;
    *(v59 + 2) = v68[0];
    *(v59 + 41) = *(v68 + 9);
    v66 = v58;
    sub_23BFA8700();
  }
}

void sub_23BFBC5B8(void *a1)
{
  v2 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance;
  v3 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance);
  *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance) = a1;
  v4 = a1;

  v5 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView);
  if (v5)
  {
    v6 = *(v1 + v2);
    v7 = v5;
    v8 = v6;
    sub_23BF7BD1C(v8);
  }

  v9 = *(v1 + v2);
  sub_23BFBD4D8(v9);
}

void sub_23BFBC664(void *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a1)
  {
    v10 = *(v5 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance);
    v11 = *&v10[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout];
    *&v10[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = a1;
    v13 = v10;
    v14 = a1;

    if (a3)
    {
LABEL_8:
      v15 = 1;
      if (a5)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_7:
    *(*(v5 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface) = a2;
    goto LABEL_8;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_7;
  }

  v15 = a5 ^ 1;
  if ((a5 & 1) == 0)
  {
LABEL_9:
    *(*(v5 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals) = a4;
  }

LABEL_10:
  if (v15)
  {
    v16 = *(v5 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView);
    if (v16)
    {
      v17 = *(v5 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance);
      v18 = v16;
      v19 = v17;
      sub_23BF7BD1C(v19);
    }

    v20 = *(v5 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance);
    sub_23BFBD4D8(v20);
  }
}

void sub_23BFBC824()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ParmesanTimeContainerView();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }

  v3 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeContainerView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame_];
  }

  v5 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView];
  if (v5)
  {
    v6 = v5;
    [v0 bounds];
    [v6 setFrame_];
  }
}

void sub_23BFBC958()
{
  v1 = v0;
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance];
  v11 = objc_allocWithZone(type metadata accessor for ParmesanTimeView());
  v12 = sub_23BF7C024(v10, v3, v5, v7, v9);
  v13 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView];
  *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView] = v12;
  v14 = v12;

  [v1 bounds];
  v19 = [objc_allocWithZone(type metadata accessor for ParmesanVibrantEffectView()) initWithFrame_];
  v20 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_backdropGroupName];
  v21 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_backdropGroupName + 8];
  v22 = v19;

  sub_23BFEAD0C(v20, v21);

  [v14 removeFromSuperview];
  [*&v22[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_maskingView] addSubview_];
  v23 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeContainerView];
  *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeContainerView] = v22;
  v24 = v22;

  [v1 addSubview_];
}

void sub_23BFBCAFC()
{
  v1 = v0;
  v2 = _s15BackgroundStyleOMa();
  MEMORY[0x28223BE20](v2);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance;
  v14 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance];
  v15 = CLKLocaleNumberSystemFromNumeralOption();
  v16 = [objc_opt_self() currentDevice];
  v17 = NTKShowIndicScriptNumerals();

  if (v17)
  {
    v15 = CLKLocaleNumberSystemFromNumeralOption();
  }

  v18 = *&v1[v13];
  sub_23BFBCFF8(v18, v62);

  v19 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_complicationVisibility];
  v20 = *&v1[v13];
  v21 = sub_23BF672DC(v20, v19);

  v22 = *&v1[v13] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style;
  v23 = *v22;
  v24 = *(v22 + 8);
  v57 = v21;
  v58 = v15;
  if (v24)
  {
    if (v24 == 1)
    {
      sub_23BF674B4(v23, 1);
      v25 = sub_23BFF9DD0();
      v59 = 0;
      v60 = v25;
      v23 = 0;
      LOBYTE(v24) = 0;
    }

    else
    {
      v59 = 0;
      v60 = 0;
      v23 = 0;
    }
  }

  else
  {
    LOBYTE(v24) = 1;
    v59 = 0xEF736F746F685065;
    v60 = 0x6361466863746177;
  }

  v55 = v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_timeTransition];
  v26 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_backdropGroupName + 8];
  v56 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_backdropGroupName];
  swift_storeEnumTagMultiPayload();
  v54 = type metadata accessor for DigitalTimeView();
  v27 = objc_allocWithZone(v54);
  v28 = v4;
  v29 = &v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_fontTracking];
  *v29 = 0;
  v29[8] = 1;
  *&v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_tritiumProgress] = 0;
  v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_isFrozen] = 0;
  v30 = &v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeLabelHostingController];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView____lazy_storage___timeLabelView];
  *v31 = 0u;
  *(v31 + 1) = 0u;
  *(v31 + 2) = 0u;
  *(v31 + 6) = 0;
  v32 = &v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_layout];
  *(v32 + 41) = *&v63[9];
  v33 = *v63;
  v34 = v62[0];
  v32[1] = v62[1];
  v32[2] = v33;
  *v32 = v34;
  v35 = &v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_font];
  v35[3] = sub_23BF6DCA0();
  v35[4] = &off_284EC26C0;
  v36 = v57;
  *v35 = v57;
  *v29 = 0;
  v29[8] = 1;
  v37 = v28;
  v38 = &v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_foregroundStyle];
  v39 = v59;
  v40 = v60;
  *v38 = v60;
  *(v38 + 1) = v39;
  *(v38 + 4) = v23;
  v38[20] = v24;
  sub_23BFA9F38(v37, &v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_backgroundStyle]);
  *&v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_maskStyle] = 0;
  v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeTransition] = v55;
  __asm { FMOV            V0.2D, #1.0 }

  *&v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_scaleEffectSize] = _Q0;
  v46 = &v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_backdropGroupName];
  *v46 = v56;
  v46[1] = v26;
  *&v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_opacity] = 0x3FF0000000000000;
  v47 = objc_allocWithZone(MEMORY[0x277CBBBA8]);
  v48 = v36;

  sub_23BFA85A8(v40, v39, v23, v24);
  v49 = v58;
  v50 = [v47 initWithForcedNumberSystem:v58 clockTimer:0];
  if (v50)
  {
    *&v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeFormatter] = v50;
    v61.receiver = v27;
    v61.super_class = v54;
    v51 = objc_msgSendSuper2(&v61, sel_initWithFrame_, v6, v8, v10, v12);
    [v51 setClipsToBounds_];
    sub_23BFA8CCC(0, v49, 0);
    [*&v51[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeFormatter] addObserver_];
    sub_23BFA94EC();
    sub_23BFA85DC(v60, v59, v23, v24);

    sub_23BFA9FAC(v37);
    v52 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView];
    *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView] = v51;
    v53 = v51;

    [v1 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

void sub_23BFBCFF8(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
  v4 = *&v3[OBJC_IVAR___NTKParmesanTimeLayout_alignment];
  v5 = *&v3[OBJC_IVAR___NTKParmesanTimeLayout_scale];
  v6 = v3;
  sub_23BFE5910(v4, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [objc_opt_self() currentDevice];
  if (v15)
  {
    v16 = v15;
    [v15 screenBounds];
    v18 = v17;
    v20 = v19;

    sub_23BF727F4(v22, v8 / v18, v10 / v20, v12 / v18, v14 / v20);
    v21 = v22[1];
    *a2 = v22[0];
    a2[1] = v21;
    a2[2] = v23[0];
    *(a2 + 41) = *(v23 + 9);
  }

  else
  {
    __break(1u);
  }
}

id sub_23BFBD154()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanTimeContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ParmesanTimeContainerView()
{
  result = qword_27E1E2490;
  if (!qword_27E1E2490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BFBD270()
{
  sub_23BFBD34C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23BFBD34C()
{
  if (!qword_27E1E24A0)
  {
    sub_23BFF8D90();
    v0 = sub_23BFFA920();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1E24A0);
    }
  }
}

void sub_23BFBD3A4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v11 = *a1;
  v12 = *(a1 + 8);
  type metadata accessor for ParmesanTimeAppearance();
  v13 = v11;
  v14 = v12;
  v15 = sub_23BFFA880();

  if (v15)
  {

    sub_23BFBD4D8(v14);
  }

  else
  {
    if (a4 >= a5)
    {
      sub_23BFBD4D8(v14);
      v16 = *(v6 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView);
      if (!v16)
      {
        return;
      }

      v17 = a3;
    }

    else
    {
      sub_23BFBD4D8(v13);
      v16 = *(v6 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView);
      if (!v16)
      {
        return;
      }

      v17 = a2;
    }

    [v16 setAlpha_];
  }
}

void sub_23BFBD4D8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView;
  v3 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView);
  if (v3)
  {
    v5 = *(v3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeFormatter);
    v6 = CLKLocaleNumberSystemFromNumeralOption();
    v7 = [objc_opt_self() currentDevice];
    v8 = NTKShowIndicScriptNumerals();

    if (v8)
    {
      v6 = CLKLocaleNumberSystemFromNumeralOption();
    }

    [v5 setForcedNumberSystem_];

    v9 = *(v1 + v2);
    if (v9)
    {
      v10 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_complicationVisibility);
      v11 = v9;
      v12 = sub_23BF672DC(a1, v10);
      sub_23BFBD8A0(v12, v11);

      v13 = *(v1 + v2);
      if (v13)
      {
        v16 = v13;
        sub_23BFBCFF8(a1, v17);
        v14 = &v16[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_layout];
        v15 = v17[1];
        *v14 = v17[0];
        *(v14 + 1) = v15;
        *(v14 + 2) = v18[0];
        *(v14 + 41) = *(v18 + 9);
        sub_23BFA8700();
      }
    }
  }
}

void sub_23BFBD7AC(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView);
  if (v3)
  {
    [*(v3 + OBJC_IVAR___NTKParmesanTimeView_timeFormatter) setTimeOffset_];
  }

  v4 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView);
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeFormatter);

    [v5 setTimeOffset_];
  }
}

uint64_t sub_23BFBD8A0(uint64_t a1, uint64_t a2)
{
  v7[3] = sub_23BF6DCA0();
  v7[4] = &off_284EC26C0;
  v7[0] = a1;
  v4 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_font;
  swift_beginAccess();
  sub_23BFB2080((a2 + v4), v7);
  swift_endAccess();
  sub_23BFA8DB4(v8);

  sub_23BF9C60C(v8);
  sub_23BFA8544(a2 + v4, v6);
  swift_getKeyPath();
  sub_23BF9C680();
  sub_23BFF91B0();

  sub_23BF4A9A4(v7);

  return sub_23BF4A9A4(v6);
}

void sub_23BFBD9D4()
{
  v1 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance);
    v4 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_complicationVisibility);
    v5 = v2;
    v6 = v3;
    v7 = sub_23BF672DC(v6, v4);

    v8 = v7;
    sub_23BFBD8A0(v8, v5);

    v9 = *(v0 + v1);
    if (v9)
    {
      v10 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance);
      v14 = v9;
      v11 = v10;
      sub_23BFBCFF8(v11, v15);

      v12 = &v14[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_layout];
      v13 = v15[1];
      *v12 = v15[0];
      *(v12 + 1) = v13;
      *(v12 + 2) = v16[0];
      *(v12 + 41) = *(v16 + 9);
      sub_23BFA8700();
    }
  }
}

void sub_23BFBDB10()
{
  *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_tritiumProgress) = 0;
  *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_timeTransition) = 1;
  *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_isFrozen) = 0;
  v1 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_overrideDate;
  v2 = sub_23BFF8D90();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView) = 0;
  *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView) = 0;
  sub_23BFFAB00();
  __break(1u);
}

void sub_23BFBDC04(uint64_t a1)
{
  v3 = sub_23BF4A264(&qword_27E1E0B80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  sub_23BF7D960(a1, &v33 - v16);
  v18 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_overrideDate;
  swift_beginAccess();
  sub_23BFBDF40(v17, v1 + v18);
  swift_endAccess();
  v19 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView);
  v20 = &selRef_setClipsToBounds_;
  if (v19)
  {
    v35 = v8;
    sub_23BF7D960(v1 + v18, v14);
    v34 = *&v19[OBJC_IVAR___NTKParmesanTimeView_timeFormatter];
    sub_23BF7D960(v14, v11);
    v21 = sub_23BFF8D90();
    v22 = *(v21 - 8);
    v23 = (*(v22 + 48))(v11, 1, v21);
    v24 = v19;
    v25 = 0;
    if (v23 != 1)
    {
      v25 = sub_23BFF8D60();
      (*(v22 + 8))(v11, v21);
    }

    v20 = &selRef_setClipsToBounds_;
    [v34 setOverrideDate_];

    sub_23BF88F64(v14);
    v8 = v35;
  }

  v26 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView);
  if (v26)
  {
    sub_23BF7D960(v1 + v18, v8);
    v27 = *&v26[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeFormatter];
    sub_23BF7D960(v8, v5);
    v28 = sub_23BFF8D90();
    v29 = *(v28 - 8);
    v30 = (*(v29 + 48))(v5, 1, v28);
    v31 = v26;
    v32 = 0;
    if (v30 != 1)
    {
      v32 = sub_23BFF8D60();
      (*(v29 + 8))(v5, v28);
    }

    [v27 v20[68]];

    sub_23BF88F64(v8);
  }
}

uint64_t sub_23BFBDF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E0B80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_23BFBE09C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanGalleryContentEffect();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23BFBE158(uint64_t a1, id a2)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x6C61727574614ELL;
      case 1:
        sub_23BF4A264(&qword_27E1E24D0);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_23C001BB0;
        *(v3 + 56) = &type metadata for ParmesanLut;
        *(v3 + 64) = &off_284EC0988;
        *(v3 + 32) = 0x622D31302D74756CLL;
        *(v3 + 40) = 0xE900000000000077;
        *(v3 + 48) = 0;
        return 0x6968576B63616C42;
      case 2:
        return sub_23BFC54D4(a2);
    }

    goto LABEL_17;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      v4 = [a2 primaryColor];
      v5 = sub_23BFC5C44(v4);
LABEL_16:
      v6 = v5;

      return v6;
    }

    if (a1 == 6)
    {
      v4 = [a2 primaryColor];
      v5 = sub_23BFC5E64(v4);
      goto LABEL_16;
    }

LABEL_17:
    result = sub_23BFFACF0();
    __break(1u);
    return result;
  }

  if (a1 == 3)
  {
    return sub_23BFC5698(a2);
  }

  else
  {
    return sub_23BFC5958(a2);
  }
}

void sub_23BFBE330(void *a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___NTKParmesanGalleryPlaceholderConfiguration_placeholderStyle);
  if ((v5 - 1) > 0xA)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_23C0080B0[(v5 - 1)];
  }

  type metadata accessor for ParmesanTypefaceEditOption();
  v7 = sub_23BF72A98(v6, a2);
  [a1 selectOption:v7 forCustomEditMode:13 slot:0];

  v8 = 0;
  if ((v5 - 1) <= 0xA)
  {
    v8 = qword_23C008108[(v5 - 1)];
  }

  type metadata accessor for ParmesanNumeralsEditOption();
  v9 = [swift_getObjCClassFromMetadata() optionWithNumeral:v8 forDevice:a2];
  [a1 selectOption:v9 forCustomEditMode:19 slot:0];

  v10 = 0;
  if (v5 > 8)
  {
    if (v5 == 9)
    {
      goto LABEL_13;
    }

    if (v5 != 11)
    {
      goto LABEL_14;
    }

LABEL_12:
    v10 = 1;
    goto LABEL_14;
  }

  if (v5 == 1)
  {
    goto LABEL_12;
  }

  if (v5 == 4)
  {
LABEL_13:
    v10 = 4;
  }

LABEL_14:
  type metadata accessor for ParmesanStyleEditOption();
  v11 = sub_23BF72A98(v10, a2);
  [a1 selectOption:v11 forCustomEditMode:15 slot:0];

  v12 = objc_allocWithZone(MEMORY[0x277D2C0B0]);
  v13 = sub_23BFFA2C0();
  v14 = [v12 initWithFullname_];
  sub_23BFBE8FC();

  if (v14)
  {
    [a1 selectOption:v14 forCustomEditMode:10 slot:@"style-color"];
  }

  sub_23BF742EC(v5);
  v16 = v15;
  if (v17)
  {
    v18 = objc_allocWithZone(MEMORY[0x277D2C0B0]);
    v19 = sub_23BFFA2C0();
    v20 = [v18 initWithFullname:v19 fraction:v16];
  }

  else
  {
    v21 = objc_allocWithZone(MEMORY[0x277D2C0B0]);
    v19 = sub_23BFFA2C0();
    v20 = [v21 initWithFullname_];
  }

  v22 = v20;
  sub_23BFBE8FC();

  if (v22)
  {
    [a1 selectOption:v22 forCustomEditMode:10 slot:@"time-color"];
  }

  v23 = sub_23BFFA2C0();
  [a1 setCompanionGalleryName_];
}

uint64_t sub_23BFBE774()
{
  v1 = *(v0 + OBJC_IVAR___NTKParmesanGalleryPlaceholderConfiguration_placeholderStyle);
  v5 = sub_23BF7477C(v1);
  MEMORY[0x23EEC3090](45, 0xE100000000000000);

  sub_23BF6D774();
  v2 = sub_23BFFAC70();
  MEMORY[0x23EEC3090](v2);

  MEMORY[0x23EEC3090](45, 0xE100000000000000);

  sub_23BF6D720();
  v3 = sub_23BFFAC70();
  MEMORY[0x23EEC3090](v3);

  return v5;
}

id sub_23BFBE8A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanGalleryPlaceholderConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23BFBEA7C()
{
  if ((*(v0 + OBJC_IVAR___NTKParmesanGalleryController_currentContent + 8) & 1) != 0 || *(v0 + OBJC_IVAR___NTKParmesanGalleryController_currentContent) != 2)
  {
    v3 = sub_23BFC0588();
    if (v3)
    {
      v5 = v3;
      v4 = *(v0 + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
      sub_23BF99A64(v5);
    }
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
    v2 = *(v0 + OBJC_IVAR___NTKParmesanGalleryController_numerals);

    [v1 setNumerals_];
  }
}

void sub_23BFBEBB4()
{
  if ((*(v0 + OBJC_IVAR___NTKParmesanGalleryController_currentContent + 8) & 1) != 0 || *(v0 + OBJC_IVAR___NTKParmesanGalleryController_currentContent) != 2)
  {
    v3 = sub_23BFC0588();
    if (!v3)
    {
      return;
    }

    v2 = *(v0 + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
    sub_23BF99A64(v3);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___NTKParmesanGalleryController_timeOption);
    v2 = *(v0 + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
    v3 = sub_23BFA3D38(v1);
    [v2 setLayout_];
  }
}

void sub_23BFBEC8C()
{
  v1 = *(v0 + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
  v2 = *&v1[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView];
  if (v2)
  {
    v3 = v0 + OBJC_IVAR___NTKParmesanGalleryController_timeEffectStyle;
    v4 = *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance);
    v5 = *(v0 + OBJC_IVAR___NTKParmesanGalleryController_timeEffectStyle);
    v6 = &v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
    v7 = *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
    v8 = *(v3 + 8);
    v9 = v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8];
    v11 = v1;
    sub_23BF674B4(v5, v8);
    *v6 = v5;
    v6[8] = v8;
    v10 = v4;
    sub_23BF674C8(v7, v9);
    sub_23BF674B4(v5, v8);

    sub_23BF98920();
    sub_23BF674C8(v5, v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_23BFBEE10()
{
  v1 = v0;
  v2 = OBJC_IVAR___NTKParmesanGalleryController_galleryView;
  v3 = *(v0 + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
  v4 = *(v0 + OBJC_IVAR___NTKParmesanGalleryController_contentEffect);
  v5 = *&v3[OBJC_IVAR___NTKParmesanGalleryView_contentEffect];
  *&v3[OBJC_IVAR___NTKParmesanGalleryView_contentEffect] = v4;
  v6 = v4;
  v7 = v3;

  sub_23BF98D38(v4);
  v8 = sub_23BFC0588();
  if (v8)
  {
    v10 = v8;
    v9 = *(v1 + v2);
    sub_23BF99A64(v10);
  }
}

void sub_23BFBEEF4(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR___NTKParmesanGalleryController_currentContent;
  if ((*(v1 + OBJC_IVAR___NTKParmesanGalleryController_currentContent + 8) & 1) != 0 || *v2 != a1)
  {
    *v2 = a1;
    *(v2 + 8) = 0;
    if (*(v1 + OBJC_IVAR___NTKParmesanGalleryController_dataSource))
    {
      v3 = *(v1 + OBJC_IVAR___NTKParmesanGalleryController_dataSource + 8);
      ObjectType = swift_getObjectType();
      v6 = *(v3 + 48);
      swift_unknownObjectRetain();
      v6(a1, 0, ObjectType, v3);
      swift_unknownObjectRelease();
    }
  }

  sub_23BFBF320();
}

void sub_23BFBF10C()
{
  if (*(v0 + OBJC_IVAR___NTKParmesanGalleryController_currentContent + 8))
  {
LABEL_2:
    sub_23BFBF244();
    v1 = sub_23BFC0588();
    if (v1)
    {
      v5 = v1;
      v2 = *(v0 + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
      sub_23BF99A64(v5);
    }

    return;
  }

  if (*(v0 + OBJC_IVAR___NTKParmesanGalleryController_dataSource))
  {
    v3 = *(v0 + OBJC_IVAR___NTKParmesanGalleryController_currentContent);
    ObjectType = swift_getObjectType();
    if (v3 >= 2)
    {
      if (v3 != 2)
      {
        swift_unknownObjectRetain();
        sub_23BFFACF0();
        __break(1u);
        return;
      }

      if (ObjectType == type metadata accessor for ParmesanGalleryPlaceholderDataSource())
      {
        goto LABEL_2;
      }
    }

    else if (ObjectType == type metadata accessor for ParmesanGalleryReaderDataSource())
    {
      goto LABEL_2;
    }
  }

  sub_23BFBF320();
}

void sub_23BFBF244()
{
  if (*(v0 + OBJC_IVAR___NTKParmesanGalleryController_dataSource))
  {
    type metadata accessor for ParmesanGalleryPlaceholderDataSource();
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = *(v0 + OBJC_IVAR___NTKParmesanGalleryController_placeholderName);
      v3 = *(v0 + OBJC_IVAR___NTKParmesanGalleryController_placeholderName + 8);
      v4 = (v1 + OBJC_IVAR___NTKParmesanGalleryPlaceholderDataSource_forcedPlaceholderName);
      *v4 = v2;
      v4[1] = v3;
      swift_unknownObjectRetain();

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_23BFC17B4();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_23BFBF320()
{
  if ((*(v0 + OBJC_IVAR___NTKParmesanGalleryController_currentContent + 8) & 1) == 0)
  {
    v1 = v0;
    v2 = *(v0 + OBJC_IVAR___NTKParmesanGalleryController_currentContent);
    v3 = (v0 + OBJC_IVAR___NTKParmesanGalleryController_dataSource);
    if (*(v0 + OBJC_IVAR___NTKParmesanGalleryController_dataSource))
    {
      ObjectType = swift_getObjectType();
      if (v2 >= 2)
      {
        if (v2 != 2)
        {
          v19[0] = v2;
          swift_unknownObjectRetain();
          goto LABEL_23;
        }

        if (ObjectType == type metadata accessor for ParmesanGalleryPlaceholderDataSource())
        {
          return;
        }
      }

      else if (ObjectType == type metadata accessor for ParmesanGalleryReaderDataSource())
      {
        return;
      }
    }

    if (v2 < 2)
    {
      type metadata accessor for ParmesanGalleryReaderDataSource();
      v5 = &off_284EC2468;
LABEL_14:
      *v3 = (v5[1])();
      v3[1] = v5;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v6 = v5[3];
      v7 = swift_unknownObjectRetain();
      v6(v7, &off_284EC18E8);
      swift_unknownObjectRelease();
      if (*v3 && (v8 = v3[1], v9 = swift_getObjectType(), v10 = *(v8 + 48), swift_unknownObjectRetain(), v10(v2, 0, v9, v8), swift_unknownObjectRelease(), *v3) && (swift_unknownObjectRetain(), sub_23BF4A264(&qword_27E1E2548), sub_23BF4A264(&qword_27E1E2550), (swift_dynamicCast() & 1) != 0))
      {
        if (*(&v17 + 1))
        {
          sub_23BF7D948(&v16, v19);
          v11 = v20;
          v12 = v21;
          sub_23BF4C484(v19, v20);
          v13 = *(v1 + OBJC_IVAR___NTKParmesanGalleryController_resourceDirectory);
          v14 = *(v1 + OBJC_IVAR___NTKParmesanGalleryController_resourceDirectory + 8);
          v15 = *(v12 + 8);

          v15(v13, v14, v11, v12);

          sub_23BF4A9A4(v19);
LABEL_21:
          sub_23BFBF244();
          sub_23BFBFFD4(0, 0);
          return;
        }
      }

      else
      {
        v18 = 0;
        v16 = 0u;
        v17 = 0u;
      }

      sub_23BFC1E0C(&v16);
      goto LABEL_21;
    }

    if (v2 == 2)
    {
      type metadata accessor for ParmesanGalleryPlaceholderDataSource();
      v5 = &off_284EC1978;
      goto LABEL_14;
    }

    v19[0] = v2;
LABEL_23:
    sub_23BFFACF0();
    __break(1u);
  }
}

id sub_23BFBF5E8(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = &v8[OBJC_IVAR___NTKParmesanGalleryController_resourceDirectory];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v8[OBJC_IVAR___NTKParmesanGalleryController_dataSource];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v8[OBJC_IVAR___NTKParmesanGalleryController_complicationVisibility] = 0;
  v18 = OBJC_IVAR___NTKParmesanGalleryController_typeface;
  *&v8[OBJC_IVAR___NTKParmesanGalleryController_typeface] = 0;
  v19 = OBJC_IVAR___NTKParmesanGalleryController_numerals;
  *&v8[OBJC_IVAR___NTKParmesanGalleryController_numerals] = 0;
  v20 = OBJC_IVAR___NTKParmesanGalleryController_timeOption;
  *&v8[OBJC_IVAR___NTKParmesanGalleryController_timeOption] = 0;
  v21 = OBJC_IVAR___NTKParmesanGalleryController_timeEffectStyle;
  if (qword_27E1DFD70 != -1)
  {
    swift_once();
  }

  v22 = &v8[v21];
  v23 = qword_27E1EB448;
  v24 = byte_27E1EB450;
  *v22 = qword_27E1EB448;
  v22[8] = v24;
  v25 = &v8[OBJC_IVAR___NTKParmesanGalleryController_currentContent];
  *v25 = 0;
  v25[8] = 1;
  v26 = &v8[OBJC_IVAR___NTKParmesanGalleryController_placeholderName];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v8[OBJC_IVAR___NTKParmesanGalleryController_faceState] = a2;
  *&v8[OBJC_IVAR___NTKParmesanGalleryController_contentEffect] = a3;
  v74 = *&v8[v18];
  v75 = *&v8[v19];
  v27 = *&v8[v20];
  sub_23BF674B4(v23, v24);
  v78 = a2;
  v28 = a3;
  v29 = a1;
  v73 = sub_23BFA3D38(v27);
  v30 = *v22;
  v79 = *v22;
  v31 = v22[8];
  v32 = type metadata accessor for ParmesanGalleryView();
  v33 = objc_allocWithZone(v32);
  *&v33[OBJC_IVAR___NTKParmesanGalleryView_currentItem] = 0;
  *&v33[OBJC_IVAR___NTKParmesanGalleryView_complicationVisibility] = 0;
  v34 = OBJC_IVAR___NTKParmesanGalleryView_complicationVibrantEffectView;
  v35 = objc_allocWithZone(type metadata accessor for ParmesanVibrantEffectView());
  v36 = v28;
  sub_23BF674B4(v30, v31);
  *&v33[v34] = [v35 initWithFrame_];
  *&v33[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView] = 0;
  v37 = OBJC_IVAR___NTKParmesanGalleryView_backgroundContainerView;
  v38 = type metadata accessor for ParmesanGalleryTransitionContainerView();
  *&v33[v37] = [objc_allocWithZone(v38) initWithFrame_];
  v39 = OBJC_IVAR___NTKParmesanGalleryView_foregroundContainerView;
  *&v33[v39] = [objc_allocWithZone(v38) initWithFrame_];
  v40 = OBJC_IVAR___NTKParmesanGalleryView_contentEffect;
  *&v33[OBJC_IVAR___NTKParmesanGalleryView_contentEffect] = 0;
  v33[OBJC_IVAR___NTKParmesanGalleryView_isGeneratingSwatch] = 0;
  v33[OBJC_IVAR___NTKParmesanGalleryView_pausedState] = 1;
  *&v33[OBJC_IVAR___NTKParmesanGalleryView_tritiumProgress] = 0;
  swift_unknownObjectWeakInit();
  v41 = OBJC_IVAR___NTKParmesanGalleryView_transitionCoordinator;
  *&v33[v41] = [objc_allocWithZone(type metadata accessor for ParmesanGalleryTransitionCoordinator()) init];
  v42 = &v33[OBJC_IVAR___NTKParmesanGalleryView_transitioningContentEffects];
  *v42 = 0;
  v42[1] = 0;
  v43 = &v33[OBJC_IVAR___NTKParmesanGalleryView_tritiumTransition];
  type metadata accessor for ParmesanGalleryTransitionTritiumOn();
  *v43 = swift_allocObject();
  v43[1] = &off_284EBFF38;
  v44 = *&v33[v40];
  *&v33[v40] = v28;
  v77 = v36;

  v45 = objc_allocWithZone(type metadata accessor for ParmesanGalleryNoPhotosView());
  v46 = v29;
  *&v33[OBJC_IVAR___NTKParmesanGalleryView_noPhotosView] = sub_23BF7F7AC(v46, 0.0, 0.0, a6, a7);
  *&v33[OBJC_IVAR___NTKParmesanGalleryView_device] = v46;
  v85.receiver = v33;
  v85.super_class = v32;
  v47 = v46;
  v48 = objc_msgSendSuper2(&v85, sel_initWithFrame_, a4, a5, a6, a7);
  [v48 setClipsToBounds_];
  v49 = [objc_opt_self() blackColor];
  [v48 setBackgroundColor_];

  v50 = [v48 layer];
  [v50 setAllowsGroupOpacity_];

  v51 = sub_23BFFA360();
  v83 = 0x6E6173656D726170;
  v84 = 0xEF2D73656269762DLL;
  MEMORY[0x23EEC3090](v51);

  v52 = OBJC_IVAR___NTKParmesanGalleryView_backgroundContainerView;
  [*&v48[OBJC_IVAR___NTKParmesanGalleryView_backgroundContainerView] setFrame_];
  [v48 addSubview_];
  v53 = type metadata accessor for ParmesanTimeAppearance();
  v54 = objc_allocWithZone(v53);
  *&v54[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device] = v47;
  *&v54[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = v73;
  *&v54[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface] = v74;
  *&v54[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals] = v75;
  v55 = &v54[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
  *v55 = v79;
  v72 = v31;
  v55[8] = v31;
  v56 = v47;
  sub_23BF674B4(v79, v31);
  v82.receiver = v54;
  v82.super_class = v53;
  v76 = v73;
  v57 = objc_msgSendSuper2(&v82, sel_init);
  v58 = *&v48[OBJC_IVAR___NTKParmesanGalleryView_complicationVisibility];
  v59 = type metadata accessor for ParmesanTimeContainerView();
  v60 = objc_allocWithZone(v59);
  *&v60[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_tritiumProgress] = 0;
  v60[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_timeTransition] = 1;
  v60[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_isFrozen] = 0;
  v61 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_overrideDate;
  v62 = sub_23BFF8D90();
  (*(*(v62 - 8) + 56))(&v60[v61], 1, 1, v62);
  *&v60[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView] = 0;
  *&v60[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeContainerView] = 0;
  *&v60[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView] = 0;
  *&v60[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance] = v57;
  *&v60[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_complicationVisibility] = v58;
  v63 = &v60[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_backdropGroupName];
  *v63 = 0x6E6173656D726170;
  v63[1] = 0xEF2D73656269762DLL;
  v81.receiver = v60;
  v81.super_class = v59;
  v64 = v57;

  v65 = objc_msgSendSuper2(&v81, sel_initWithFrame_, 0.0, 0.0, a6, a7);
  [v65 setUserInteractionEnabled_];
  sub_23BFBC958();
  sub_23BFBCAFC();

  v66 = *&v48[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView];
  *&v48[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView] = v65;

  [v48 addSubview_];
  v67 = OBJC_IVAR___NTKParmesanGalleryView_complicationVibrantEffectView;
  [*&v48[OBJC_IVAR___NTKParmesanGalleryView_complicationVibrantEffectView] setFrame_];
  v68 = *&v48[v67];
  sub_23BFEAD0C(0x6E6173656D726170, 0xEF2D73656269762DLL);

  sub_23BF98920();
  v69 = OBJC_IVAR___NTKParmesanGalleryView_foregroundContainerView;
  [*&v48[OBJC_IVAR___NTKParmesanGalleryView_foregroundContainerView] setFrame_];
  [v48 addSubview_];

  sub_23BF674C8(v79, v72);
  *&v8[OBJC_IVAR___NTKParmesanGalleryController_galleryView] = v48;
  v80.receiver = v8;
  v80.super_class = type metadata accessor for ParmesanGalleryController();
  v70 = objc_msgSendSuper2(&v80, sel_init);
  sub_23BFBFFD4(0, 0);

  return v70;
}

void sub_23BFBFEA0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___NTKParmesanGalleryController_faceState;
  v5 = *(v1 + OBJC_IVAR___NTKParmesanGalleryController_faceState);
  type metadata accessor for NTKFaceState();
  v6 = v5;
  v7 = sub_23BFFA880();

  if ((v7 & 1) == 0)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
    v9 = a1;
    v10 = v8;
    sub_23BFBFFD4(v8, a1);
  }
}

void sub_23BFBFFD4(void *a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = a1;
    if (a2)
    {
LABEL_3:
      v7 = a2;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v3 + OBJC_IVAR___NTKParmesanGalleryController_faceState);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v7 = *(v3 + OBJC_IVAR___NTKParmesanGalleryController_faceState);
LABEL_6:
  v8 = qword_27E1DFD98;
  v9 = a1;
  v10 = a2;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = sub_23BFF92B0();
  sub_23BF4A22C(v11, qword_27E1EB498);
  v50 = v6;
  v51 = v7;
  v12 = sub_23BFF9290();
  v13 = sub_23BFFA640();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v52 = v16;
    *v14 = 136315650;
    *(v14 + 4) = sub_23BF62294(0xD000000000000021, 0x800000023C011F60, &v52);
    *(v14 + 12) = 2112;
    *(v14 + 14) = v50;
    *(v14 + 22) = 2112;
    *(v14 + 24) = v51;
    *v15 = v50;
    v15[1] = v51;
    v17 = v50;
    v18 = v51;
    _os_log_impl(&dword_23BF0C000, v12, v13, "%s: %@ → %@", v14, 0x20u);
    sub_23BF4A264(&qword_27E1E0B50);
    swift_arrayDestroy();
    MEMORY[0x23EEC4DF0](v15, -1, -1);
    sub_23BF4A9A4(v16);
    MEMORY[0x23EEC4DF0](v16, -1, -1);
    MEMORY[0x23EEC4DF0](v14, -1, -1);
  }

  v19 = v51;
  v20 = *&v51[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKFaceState_dataMode];
  v21 = 1;
  if ((v20 - 2) < 4 || v20 == 0)
  {
    v23 = &selRef_disableTimeChangeAnimations;
  }

  else
  {
    if (v20 != 1)
    {
      goto LABEL_17;
    }

    v21 = 0;
    if (*&v50[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKFaceState_dataMode] == 3)
    {
      goto LABEL_17;
    }

    v23 = &selRef_enableTimeChangeAnimations;
  }

  [*(v3 + OBJC_IVAR___NTKParmesanGalleryController_galleryView) *v23];
  v19 = v51;
LABEL_17:
  if (*&v19[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKFaceState_screenState] == 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = sub_23BFF9290();
  v26 = sub_23BFFA640();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v52 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_23BF62294(0xD000000000000021, 0x800000023C011F60, &v52);
    *(v27 + 12) = 2080;
    if (v24)
    {
      v29 = 0x646573756170;
    }

    else
    {
      v29 = 0x676E6979616C70;
    }

    if (v24)
    {
      v30 = 0xE600000000000000;
    }

    else
    {
      v30 = 0xE700000000000000;
    }

    v31 = sub_23BF62294(v29, v30, &v52);

    *(v27 + 14) = v31;
    _os_log_impl(&dword_23BF0C000, v25, v26, "%s - [resolved] pausedState: %s;", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC4DF0](v28, -1, -1);
    MEMORY[0x23EEC4DF0](v27, -1, -1);
  }

  v32 = OBJC_IVAR___NTKParmesanGalleryController_galleryView;
  v33 = *(v3 + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
  *(v33 + OBJC_IVAR___NTKParmesanGalleryView_pausedState) = v24;
  v34 = *(v33 + OBJC_IVAR___NTKParmesanGalleryView_currentItem);
  v35 = v50;
  if (v34)
  {
    v36 = *(v34 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views);
    if (v36)
    {
      v37 = *(v36 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView);
      if (v37)
      {
        swift_getObjectType();
        v38 = swift_conformsToProtocol2();
        v35 = v50;
        if (v38)
        {
          v39 = *(v37 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_mediaAssetView);
          if (v39)
          {
            if (v24)
            {
              v40 = 0;
            }

            else
            {
              v40 = 2;
            }

            v41 = &selRef_pauseWithOperation_;
            if (!v24)
            {
              v41 = &selRef_playWithOperation_;
            }

            [v39 *v41];
            v35 = v50;
          }
        }
      }
    }
  }

  if (!*(v3 + OBJC_IVAR___NTKParmesanGalleryController_dataSource))
  {

    v42 = v51;
    goto LABEL_43;
  }

  if (*(*(v3 + v32) + OBJC_IVAR___NTKParmesanGalleryView_currentItem))
  {

    v42 = v50;
LABEL_43:

    return;
  }

  v43 = *(v3 + OBJC_IVAR___NTKParmesanGalleryController_dataSource + 8);
  ObjectType = swift_getObjectType();
  v45 = *(v43 + 64);
  swift_unknownObjectRetain();
  if (v45(ObjectType, v43))
  {
    v46 = sub_23BFC0588();
    if (v46)
    {
      v49 = v46;
      v47 = *(v3 + v32);
      sub_23BF99A64(v49);

      swift_unknownObjectRelease();
      v42 = v49;
      goto LABEL_43;
    }

    v48 = v51;
  }

  else
  {

    v48 = v50;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_23BFC0588()
{
  if (!*&v0[OBJC_IVAR___NTKParmesanGalleryController_dataSource] || (v1 = *&v0[OBJC_IVAR___NTKParmesanGalleryController_dataSource + 8], ObjectType = swift_getObjectType(), v3 = *&v0[OBJC_IVAR___NTKParmesanGalleryController_timeOption], v4 = *&v0[OBJC_IVAR___NTKParmesanGalleryController_numerals], v5 = *(v1 + 72), swift_unknownObjectRetain(), v6 = v5(v3, v4, ObjectType, v1), swift_unknownObjectRelease(), (result = v6) == 0))
  {
    if (qword_27E1DFD98 != -1)
    {
      swift_once();
    }

    v8 = sub_23BFF92B0();
    sub_23BF4A22C(v8, qword_27E1EB498);
    v9 = v0;
    v10 = sub_23BFF9290();
    v11 = sub_23BFFA630();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315650;
      *(v12 + 4) = sub_23BF62294(0xD000000000000014, 0x800000023C011F40, &v20);
      *(v12 + 12) = 2080;
      if (*&v9[OBJC_IVAR___NTKParmesanGalleryController_resourceDirectory + 8])
      {
        v14 = *&v9[OBJC_IVAR___NTKParmesanGalleryController_resourceDirectory];
        v15 = *&v9[OBJC_IVAR___NTKParmesanGalleryController_resourceDirectory + 8];
      }

      else
      {
        v15 = 0xE300000000000000;
        v14 = 7104878;
      }

      v16 = sub_23BF62294(v14, v15, &v20);

      *(v12 + 14) = v16;
      *(v12 + 22) = 2080;
      swift_unknownObjectRetain();
      sub_23BF4A264(&qword_27E1E2558);
      v17 = sub_23BFFA360();
      v19 = sub_23BF62294(v17, v18, &v20);

      *(v12 + 24) = v19;
      _os_log_impl(&dword_23BF0C000, v10, v11, "%s — currentComposition is nil for %s, dataSource = %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EEC4DF0](v13, -1, -1);
      MEMORY[0x23EEC4DF0](v12, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_23BFC0868()
{
  if (!*&v0[OBJC_IVAR___NTKParmesanGalleryController_dataSource] || (v1 = *&v0[OBJC_IVAR___NTKParmesanGalleryController_dataSource + 8], ObjectType = swift_getObjectType(), v3 = *&v0[OBJC_IVAR___NTKParmesanGalleryController_timeOption], v4 = *&v0[OBJC_IVAR___NTKParmesanGalleryController_numerals], v5 = *(v1 + 80), swift_unknownObjectRetain(), v6 = v5(v3, v4, ObjectType, v1), swift_unknownObjectRelease(), (result = v6) == 0))
  {
    if (qword_27E1DFD98 != -1)
    {
      swift_once();
    }

    v8 = sub_23BFF92B0();
    sub_23BF4A22C(v8, qword_27E1EB498);
    v9 = v0;
    v10 = sub_23BFF9290();
    v11 = sub_23BFFA630();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315650;
      *(v12 + 4) = sub_23BF62294(0xD000000000000011, 0x800000023C011F20, &v20);
      *(v12 + 12) = 2080;
      if (*&v9[OBJC_IVAR___NTKParmesanGalleryController_resourceDirectory + 8])
      {
        v14 = *&v9[OBJC_IVAR___NTKParmesanGalleryController_resourceDirectory];
        v15 = *&v9[OBJC_IVAR___NTKParmesanGalleryController_resourceDirectory + 8];
      }

      else
      {
        v15 = 0xE300000000000000;
        v14 = 7104878;
      }

      v16 = sub_23BF62294(v14, v15, &v20);

      *(v12 + 14) = v16;
      *(v12 + 22) = 2080;
      swift_unknownObjectRetain();
      sub_23BF4A264(&qword_27E1E2558);
      v17 = sub_23BFFA360();
      v19 = sub_23BF62294(v17, v18, &v20);

      *(v12 + 24) = v19;
      _os_log_impl(&dword_23BF0C000, v10, v11, "%s — nextComposition is nil for %s, dataSource = %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EEC4DF0](v13, -1, -1);
      MEMORY[0x23EEC4DF0](v12, -1, -1);
    }

    return 0;
  }

  return result;
}

void sub_23BFC0E4C(void *a1, void *a2, double a3)
{
  v4 = v3;
  v8 = OBJC_IVAR___NTKParmesanGalleryController_galleryView;
  v9 = *(*(v4 + OBJC_IVAR___NTKParmesanGalleryController_galleryView) + OBJC_IVAR___NTKParmesanGalleryView_contentEffect);
  if (v9)
  {
    type metadata accessor for ParmesanGalleryContentEffect();
    v10 = v9;
    v11 = a2;
    v12 = sub_23BFFA880();

    if (v12)
    {
      a3 = 1.0 - a3;
      a2 = a1;
      goto LABEL_6;
    }

    a2 = v11;
  }

  v11 = a1;
LABEL_6:
  v13 = *(v4 + v8);
  sub_23BF98F00(v11, a2, a3);
}

void sub_23BFC0FD8(uint64_t a1, uint64_t a2, double a3)
{
  v7 = OBJC_IVAR___NTKParmesanGalleryController_galleryView;
  v8 = [*(v3 + OBJC_IVAR___NTKParmesanGalleryController_galleryView) timeAppearance];
  v9 = *&v8[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface];

  v10 = v9 == a2;
  if (v9 == a2)
  {
    a3 = 1.0 - a3;
    v11 = a1;
  }

  else
  {
    v11 = a2;
  }

  if (!v10)
  {
    a2 = a1;
  }

  v12 = *(v3 + v7);
  sub_23BF99390(a2, v11, a3);
}

void sub_23BFC1110(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v6 = (v3 + OBJC_IVAR___NTKParmesanGalleryController_dataSource);
  v7 = &qword_27E1E2000;
  if (!*(v3 + OBJC_IVAR___NTKParmesanGalleryController_dataSource))
  {
    v18 = 0;
    goto LABEL_6;
  }

  v10 = *(v3 + OBJC_IVAR___NTKParmesanGalleryController_timeOption);
  v11 = v6[1];
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 72);
  swift_unknownObjectRetain();
  v14 = v13(v10, a1, ObjectType, v11);
  swift_unknownObjectRelease();
  if (!*v6)
  {
    v18 = 0;
    v7 = &qword_27E1E2000;
    if (v14)
    {
      goto LABEL_12;
    }

LABEL_6:
    v14 = 0;
    v30 = 0;
    v19 = v18;
    v20 = v18;
LABEL_7:
    v21 = v19;
    goto LABEL_8;
  }

  v15 = v6[1];
  v16 = swift_getObjectType();
  v17 = *(v15 + 72);
  swift_unknownObjectRetain();
  v18 = v17(v10, a2, v16, v15);
  swift_unknownObjectRelease();
  v7 = &qword_27E1E2000;
  if (!v14)
  {
    goto LABEL_6;
  }

LABEL_12:
  v23 = *(*(v3 + v7[156]) + OBJC_IVAR___NTKParmesanGalleryView_currentItem);
  if (!v23 || (v24 = *(v23 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition)) == 0)
  {
    if (v18)
    {
      v28 = v18;
      v19 = v14;
      v20 = v18;
      v30 = v14;
      goto LABEL_7;
    }

    v29 = v14;
    v19 = 0;
LABEL_20:
    a3 = 1.0 - a3;
    v20 = v14;
    v30 = v18;
    goto LABEL_7;
  }

  if (!v18)
  {
    v20 = 0;
    v19 = v14;
    v30 = v14;
    goto LABEL_7;
  }

  type metadata accessor for ParmesanGalleryComposition();
  v19 = v18;
  v25 = v14;
  v26 = v24;
  v27 = sub_23BFFA880();

  if (v27)
  {

    goto LABEL_20;
  }

  v20 = v18;
  v30 = v14;
LABEL_8:
  v22 = *(v4 + v7[156]);
  sub_23BF996D0(v30, v20, a3);
}

void sub_23BFC13C8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v6 = (v3 + OBJC_IVAR___NTKParmesanGalleryController_dataSource);
  v7 = &qword_27E1E2000;
  if (!*(v3 + OBJC_IVAR___NTKParmesanGalleryController_dataSource))
  {
    v18 = 0;
    goto LABEL_6;
  }

  v10 = *(v3 + OBJC_IVAR___NTKParmesanGalleryController_numerals);
  v11 = v6[1];
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 72);
  swift_unknownObjectRetain();
  v14 = v13(a1, v10, ObjectType, v11);
  swift_unknownObjectRelease();
  if (!*v6)
  {
    v18 = 0;
    v7 = &qword_27E1E2000;
    if (v14)
    {
      goto LABEL_12;
    }

LABEL_6:
    v14 = 0;
    v30 = 0;
    v19 = v18;
    v20 = v18;
LABEL_7:
    v21 = v19;
    goto LABEL_8;
  }

  v15 = v6[1];
  v16 = swift_getObjectType();
  v17 = *(v15 + 72);
  swift_unknownObjectRetain();
  v18 = v17(a2, v10, v16, v15);
  swift_unknownObjectRelease();
  v7 = &qword_27E1E2000;
  if (!v14)
  {
    goto LABEL_6;
  }

LABEL_12:
  v23 = *(*(v3 + v7[156]) + OBJC_IVAR___NTKParmesanGalleryView_currentItem);
  if (!v23 || (v24 = *(v23 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition)) == 0)
  {
    if (v18)
    {
      v28 = v18;
      v19 = v14;
      v20 = v18;
      v30 = v14;
      goto LABEL_7;
    }

    v29 = v14;
    v19 = 0;
LABEL_20:
    a3 = 1.0 - a3;
    v20 = v14;
    v30 = v18;
    goto LABEL_7;
  }

  if (!v18)
  {
    v20 = 0;
    v19 = v14;
    v30 = v14;
    goto LABEL_7;
  }

  type metadata accessor for ParmesanGalleryComposition();
  v19 = v18;
  v25 = v14;
  v26 = v24;
  v27 = sub_23BFFA880();

  if (v27)
  {

    goto LABEL_20;
  }

  v20 = v18;
  v30 = v14;
LABEL_8:
  v22 = *(v4 + v7[156]);
  sub_23BF996D0(v30, v20, a3);
}

id sub_23BFC16B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanGalleryController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BFC17B4()
{
  v0 = sub_23BFFA0E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23BFFA100();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFA1A30();
  v8 = sub_23BFFA6D0();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_23BFC1D94;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BF58264;
  aBlock[3] = &unk_284EC1920;
  v10 = _Block_copy(aBlock);

  sub_23BFFA0F0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23BFC1DB4();
  sub_23BF4A264(&qword_27E1E0B40);
  sub_23BF6636C();
  sub_23BFFA970();
  MEMORY[0x23EEC33A0](0, v7, v3, v10);
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_23BFC1A3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong loadCurrentComposition];
  }
}

uint64_t sub_23BFC1B88(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___NTKParmesanGalleryController_resourceDirectory);
  *v5 = a1;
  v5[1] = a2;

  if (*(v2 + OBJC_IVAR___NTKParmesanGalleryController_dataSource) && (v6 = *(v2 + OBJC_IVAR___NTKParmesanGalleryController_dataSource + 8), v13[0] = *(v2 + OBJC_IVAR___NTKParmesanGalleryController_dataSource), v13[1] = v6, swift_unknownObjectRetain(), sub_23BF4A264(&qword_27E1E2548), sub_23BF4A264(&qword_27E1E2550), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v11 + 1))
    {
      sub_23BF7D948(&v10, v13);
      v7 = v14;
      v8 = v15;
      sub_23BF4C484(v13, v14);
      (*(v8 + 8))(a1, a2, v7, v8);
      return sub_23BF4A9A4(v13);
    }
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  return sub_23BFC1E0C(&v10);
}

void sub_23BFC1D30(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_23BFFA2C0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setResourceDirectory_];
}

uint64_t sub_23BFC1D9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23BFC1DB4()
{
  result = qword_27E1E04F0;
  if (!qword_27E1E04F0)
  {
    sub_23BFFA0E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E04F0);
  }

  return result;
}

uint64_t sub_23BFC1E0C(uint64_t a1)
{
  v2 = sub_23BF4A264(&qword_27E1E2540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23BFC1E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BFC0868();
  if (v4)
  {
    v5 = v4;
    v6 = *(a2 + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
    v7 = *&v6[OBJC_IVAR___NTKParmesanGalleryView_currentItem];
    if (v7)
    {
      oslog = *(v7 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition);
      v8 = oslog;
    }

    else
    {
      oslog = 0;
    }

    v13 = v6;
    sub_23BFEEF1C(oslog, v5, a1, v13);
  }

  else
  {
    if (qword_27E1DFD98 != -1)
    {
      swift_once();
    }

    v9 = sub_23BFF92B0();
    sub_23BF4A22C(v9, qword_27E1EB498);
    oslog = sub_23BFF9290();
    v10 = sub_23BFFA640();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_23BF62294(0xD00000000000002CLL, 0x800000023C011EF0, &v15);
      _os_log_impl(&dword_23BF0C000, oslog, v10, "%s — nextComposition is nil", v11, 0xCu);
      sub_23BF4A9A4(v12);
      MEMORY[0x23EEC4DF0](v12, -1, -1);
      MEMORY[0x23EEC4DF0](v11, -1, -1);
    }
  }
}

char *sub_23BFC2038(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___NTKParmesanSwatchTimeLabel_alignment] = 0;
  v9 = &v4[OBJC_IVAR___NTKParmesanSwatchTimeLabel_timeRect];
  *v9 = 0;
  *(v9 + 1) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v9 + 1) = _Q0;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v16 = OBJC_IVAR___NTKParmesanSwatchTimeLabel_timeLabel;
  *&v4[OBJC_IVAR___NTKParmesanSwatchTimeLabel_timeLabel] = v15;
  [v15 setTextAlignment_];
  v17 = *&v4[v16];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 whiteColor];
  [v19 setTextColor_];

  [*&v4[v16] setLineBreakMode_];
  v23.receiver = v4;
  v23.super_class = type metadata accessor for ParmesanSwatchTimeLabel();
  v21 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  [v21 addSubview_];
  return v21;
}

id sub_23BFC2240()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for ParmesanSwatchTimeLabel();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR___NTKParmesanSwatchTimeLabel_timeRect];
  v2 = *&v0[OBJC_IVAR___NTKParmesanSwatchTimeLabel_timeRect + 8];
  v3 = *&v0[OBJC_IVAR___NTKParmesanSwatchTimeLabel_timeRect + 16];
  v4 = *&v0[OBJC_IVAR___NTKParmesanSwatchTimeLabel_timeRect + 24];
  [v0 bounds];
  v12.origin.x = v6 + v1 * v5;
  v12.origin.y = v8 + v2 * v7;
  v12.size.width = v3 * v5;
  v9 = *&v0[OBJC_IVAR___NTKParmesanSwatchTimeLabel_timeLabel];
  v12.size.height = v4 * v7;
  CGRectGetMinY(v12);
  [v0 bounds];
  return [v9 setFrame_];
}

void sub_23BFC235C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BF67528(a1, a2);
  v5 = *&v2[OBJC_IVAR___NTKParmesanSwatchTimeLabel_timeLabel];
  v10 = v4;
  [v5 setFont_];
  v6 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout;
  v7 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
  v8 = *(v7 + OBJC_IVAR___NTKParmesanTimeLayout_scale);
  sub_23BF4A264(&unk_27E1E1BD0);
  if ((v8 - 1) >= 2)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    if (v8 == 3)
    {
      v9 = *(v7 + OBJC_IVAR___NTKParmesanTimeLayout_alignment);
      if (!v9)
      {
        goto LABEL_8;
      }

      if (v9 == 1)
      {
LABEL_7:
        v9 = 2;
        goto LABEL_8;
      }
    }

    sub_23BFFACB0();
    __break(1u);
    return;
  }

  v9 = 1;
LABEL_8:
  [v5 setTextAlignment_];
  *&v2[OBJC_IVAR___NTKParmesanSwatchTimeLabel_alignment] = *(*(a1 + v6) + OBJC_IVAR___NTKParmesanTimeLayout_alignment);
  [v2 setNeedsLayout];
}

id sub_23BFC255C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanSwatchTimeLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BFC25C4(double a1, double a2, double a3, double a4)
{
  v5 = &v4[OBJC_IVAR___NTKParmesanSwatchTimeLabel_timeRect];
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  return [v4 setNeedsLayout];
}

void sub_23BFC25EC()
{
  v1 = *(v0 + OBJC_IVAR___NTKParmesanSwatchTimeLabel_timeLabel);
  v2 = sub_23BFFA2C0();
  [v1 setText_];
}

void sub_23BFC2654(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (qword_27E1DFD70 != -1)
  {
    swift_once();
  }

  v10 = qword_27E1EB448;
  v11 = byte_27E1EB450;
  v12 = type metadata accessor for ParmesanTimeAppearance();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device] = a5;
  *&v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = a1;
  *&v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface] = a2;
  *&v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals] = a4;
  v14 = &v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
  *v14 = v10;
  v14[8] = v11;
  sub_23BF674B4(v10, v11);
  v18.receiver = v13;
  v18.super_class = v12;
  v15 = a5;
  v16 = a1;
  v17 = objc_msgSendSuper2(&v18, sel_init);
  sub_23BFC235C(v17, a3);
}

void sub_23BFC2824()
{
  sub_23BFC2B2C();
  if (!v1)
  {
    if (qword_27E1DFDA8 != -1)
    {
      swift_once();
    }

    v2 = sub_23BFF92B0();
    sub_23BF4A22C(v2, qword_27E1EB4C8);
    v3 = v0;
    v4 = sub_23BFF9290();
    v5 = sub_23BFFA650();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315394;
      *(v6 + 4) = sub_23BF62294(0xD000000000000012, 0x800000023C012140, &v11);
      *(v6 + 12) = 2080;
      sub_23BFC29EC();
      sub_23BF4A264(&qword_27E1E2598);
      v8 = sub_23BFFA360();
      v10 = sub_23BF62294(v8, v9, &v11);

      *(v6 + 14) = v10;
      _os_log_impl(&dword_23BF0C000, v4, v5, "%s nil composition for placeholderStyle: [%s]", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEC4DF0](v7, -1, -1);
      MEMORY[0x23EEC4DF0](v6, -1, -1);
    }
  }
}

void sub_23BFC29EC()
{
  if (*(v0 + OBJC_IVAR___NTKParmesanGalleryPlaceholderDataSource_forcedPlaceholderName + 8))
  {

    v1 = sub_23BF74730();
    if (v1 != 12)
    {
      v9 = v1;
      v6 = type metadata accessor for ParmesanGalleryPlaceholderConfiguration();
      v10 = objc_allocWithZone(v6);
      v10[OBJC_IVAR___NTKParmesanGalleryPlaceholderConfiguration_placeholderStyle] = v9;
      v11 = v10;
      v8 = &v11;
      goto LABEL_10;
    }
  }

  if (qword_27E1DFD80 != -1)
  {
    swift_once();
  }

  v2 = off_27E1E11B0;
  v3 = *(off_27E1E11B0 + 2);
  if (v3)
  {

    v4 = sub_23BFC3728(v3);
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *(v2 + 2))
    {
      v5 = v2[v4 + 32];

      v6 = type metadata accessor for ParmesanGalleryPlaceholderConfiguration();
      v7 = objc_allocWithZone(v6);
      v7[OBJC_IVAR___NTKParmesanGalleryPlaceholderConfiguration_placeholderStyle] = v5;
      v12 = v7;
      v8 = &v12;
LABEL_10:
      v8->super_class = v6;
      [(objc_super *)v8 init];
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_23BFC2B2C()
{
  v0 = sub_23BF4A264(&qword_27E1E0B78);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v66 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v71 = &v66 - v4;
  MEMORY[0x28223BE20](v5);
  v74 = &v66 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v66 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v66 - v11;
  v13 = sub_23BFF8D10();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v66 - v18;
  sub_23BFC29EC();
  if (v20)
  {
    v72 = v19;
    v68 = v16;
    v69 = v2;
    v70 = v20;
    v67 = OBJC_IVAR___NTKParmesanGalleryPlaceholderConfiguration_placeholderStyle;
    v73 = sub_23BF7477C(v20[OBJC_IVAR___NTKParmesanGalleryPlaceholderConfiguration_placeholderStyle]);
    v78 = v73;
    v79 = v21;
    v75 = v21;

    MEMORY[0x23EEC3090](0x657361622DLL, 0xE500000000000000);
    v22 = sub_23BFC3344();

    v23 = sub_23BFFA2C0();

    v24 = sub_23BFFA2C0();
    v25 = [v22 URLForResource:v23 withExtension:v24];

    if (v25)
    {
      sub_23BFF8CA0();

      v26 = *(v14 + 56);
      v26(v9, 0, 1, v13);
    }

    else
    {
      v26 = *(v14 + 56);
      v26(v9, 1, 1, v13);
    }

    sub_23BFB6DD0(v9, v12);

    v27 = *(v14 + 48);
    if (v27(v12, 1, v13) == 1)
    {
      sub_23BFC3B4C(v12);
      if (qword_27E1DFD90 != -1)
      {
        swift_once();
      }

      v28 = sub_23BFF92B0();
      sub_23BF4A22C(v28, qword_27E1EB480);
      v29 = v75;

      v30 = sub_23BFF9290();
      v31 = sub_23BFFA650();

      v32 = os_log_type_enabled(v30, v31);
      v33 = v70;
      if (v32)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v78 = v35;
        *v34 = 136315394;
        v36 = sub_23BF62294(v73, v29, &v78);

        *(v34 + 4) = v36;
        *(v34 + 12) = 2080;
        *(v34 + 14) = sub_23BF62294(1667851624, 0xE400000000000000, &v78);
        _os_log_impl(&dword_23BF0C000, v30, v31, "no baseImageURL found named: %s-base.%s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEC4DF0](v35, -1, -1);
        MEMORY[0x23EEC4DF0](v34, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v66 = v26;
      (*(v14 + 32))(v72, v12, v13);
      v78 = v73;
      v79 = v75;

      MEMORY[0x23EEC3090](0x6B73616D2DLL, 0xE500000000000000);
      v37 = sub_23BFC3344();

      v38 = sub_23BFFA2C0();

      v39 = sub_23BFFA2C0();
      v40 = [v37 URLForResource:v38 withExtension:v39];

      if (v40)
      {
        v41 = v71;
        sub_23BFF8CA0();

        v42 = 0;
      }

      else
      {
        v42 = 1;
        v41 = v71;
      }

      v66(v41, v42, 1, v13);
      v43 = v74;
      sub_23BFB6DD0(v41, v74);

      if (v27(v43, 1, v13) == 1)
      {
        v44 = 0;
      }

      else
      {
        v45 = type metadata accessor for ParmesanAssetMask();
        v46 = objc_allocWithZone(v45);
        v47 = &v46[OBJC_IVAR___NTKParmesanAssetMask_imageName];
        v48 = v75;
        *v47 = v73;
        *(v47 + 1) = v48;
        *&v46[OBJC_IVAR___NTKParmesanAssetMask_style] = 0;
        v76.receiver = v46;
        v76.super_class = v45;

        v44 = objc_msgSendSuper2(&v76, sel_init);
      }

      v49 = v70;
      v50 = *(v14 + 16);
      v51 = v68;
      v50(v68, v72, v13);
      v52 = v69;
      sub_23BF726CC(v43, v69);
      v71 = sub_23BF741D0(v49[v67]);
      v53 = objc_allocWithZone(type metadata accessor for ParmesanPlaceholderComposition());
      v54 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition__layoutMask;
      *&v53[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition__layoutMask] = 0;
      *&v53[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition__layoutImage] = 0;
      *&v53[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition__cachedImageAnalysis] = 0;
      *&v53[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition__layoutMaskImage] = 0;
      v50(&v53[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition_layoutImageURL], v51, v13);
      *&v53[v54] = v44;
      sub_23BF726CC(v52, &v53[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition_layoutMaskImageURL]);
      v55 = OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout;
      v56 = qword_27E1DFD78;
      v57 = v44;
      if (v56 != -1)
      {
        swift_once();
      }

      v58 = qword_27E1EB458;
      *&v53[v55] = qword_27E1EB458;
      *&v53[OBJC_IVAR___NTKParmesanGalleryComposition_numerals] = 0;
      v53[OBJC_IVAR___NTKParmesanGalleryComposition__alreadyLoadedLayoutComposite] = 0;
      *&v53[OBJC_IVAR___NTKParmesanGalleryComposition__cachedLayoutCompositeImage] = 0;
      v53[OBJC_IVAR___NTKParmesanGalleryComposition__alreadyLoadedLayoutAlpha] = 0;
      *&v53[OBJC_IVAR___NTKParmesanGalleryComposition__cachedLayoutAlphaImage] = 0;
      v59 = &v53[OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier];
      v60 = v75;
      *v59 = v73;
      v59[1] = v60;
      v61 = type metadata accessor for ParmesanGalleryComposition();
      v77.receiver = v53;
      v77.super_class = v61;
      v62 = v58;
      v63 = objc_msgSendSuper2(&v77, sel_init);

      sub_23BFC3B4C(v52);
      v64 = *(v14 + 8);
      v64(v51, v13);
      v64(v72, v13);
      v65 = *&v63[OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout];
      *&v63[OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout] = v71;

      sub_23BFC3B4C(v74);
    }
  }
}

id sub_23BFC3344()
{
  v1 = OBJC_IVAR___NTKParmesanGalleryPlaceholderDataSource____lazy_storage___faceBundle;
  v2 = *(v0 + OBJC_IVAR___NTKParmesanGalleryPlaceholderDataSource____lazy_storage___faceBundle);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___NTKParmesanGalleryPlaceholderDataSource____lazy_storage___faceBundle);
  }

  else
  {
    swift_getObjectType();
    v4 = sub_23BFC33AC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_23BFC33AC()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

id sub_23BFC3400()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanGalleryPlaceholderDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BFC34B8()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_23BFC34EC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___NTKParmesanGalleryPlaceholderDataSource_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_23BFC3538(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR___NTKParmesanGalleryPlaceholderDataSource_contentOption;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

unint64_t sub_23BFC3728(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x23EEC4E00](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x23EEC4E00](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BFC37B4(void *a1)
{
  v1 = [a1 isRunningNapiliGMOrLater];
  if (v1)
  {
    v51 = MEMORY[0x277D84F90];
    sub_23BFCE138(0, 6, 0);
    v2 = 0;
    result = v51;
    v4 = "building.2.crop.circle.fill";
    v5 = "gallery-placeholder-3C";
    v6 = "gallery-placeholder-4A";
    v7 = "gallery-placeholder-4B";
    v8 = "gallery-placeholder-2C";
    v9 = "gallery-placeholder-3A";
    v10 = "gallery-placeholder-3B";
    do
    {
      v11 = byte_284EBE878[v2 + 32];
      if (v11 == 10)
      {
        v12 = v6;
      }

      else
      {
        v12 = v7;
      }

      if (v11 == 9)
      {
        v12 = v5;
      }

      if (v11 == 7)
      {
        v13 = v9;
      }

      else
      {
        v13 = v10;
      }

      if (v11 == 6)
      {
        v13 = v8;
      }

      if (byte_284EBE878[v2 + 32] <= 8u)
      {
        v12 = v13;
      }

      if (v11 == 4)
      {
        v14 = "gallery-placeholder-2A";
      }

      else
      {
        v14 = "gallery-placeholder-2B";
      }

      if (v11 == 3)
      {
        v14 = "gallery-placeholder-1C";
      }

      if (v11 == 1)
      {
        v15 = "gallery-placeholder-1A";
      }

      else
      {
        v15 = "gallery-placeholder-1B";
      }

      if (!byte_284EBE878[v2 + 32])
      {
        v15 = v4;
      }

      if (byte_284EBE878[v2 + 32] <= 2u)
      {
        v14 = v15;
      }

      if (byte_284EBE878[v2 + 32] <= 5u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12;
      }

      v52 = result;
      v18 = *(result + 16);
      v17 = *(result + 24);
      if (v18 >= v17 >> 1)
      {
        v37 = v10;
        v39 = v9;
        v47 = v5;
        v49 = v4;
        v43 = v7;
        v45 = v6;
        v41 = v8;
        sub_23BFCE138((v17 > 1), v18 + 1, 1);
        v10 = v37;
        v9 = v39;
        v8 = v41;
        v7 = v43;
        v6 = v45;
        v5 = v47;
        v4 = v49;
        result = v52;
      }

      ++v2;
      *(result + 16) = v18 + 1;
      v19 = result + 16 * v18;
      *(v19 + 32) = 0xD000000000000016;
      *(v19 + 40) = v16 | 0x8000000000000000;
    }

    while (v2 != 6);
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
    sub_23BFCE138(v1, 6, 0);
    v20 = 0;
    result = v53;
    v21 = "building.2.crop.circle.fill";
    v22 = "gallery-placeholder-3C";
    v23 = "gallery-placeholder-4A";
    v24 = "gallery-placeholder-4B";
    v25 = "gallery-placeholder-2C";
    v26 = "gallery-placeholder-3A";
    v27 = "gallery-placeholder-3B";
    do
    {
      v28 = byte_284EBE8A0[v20 + 32];
      if (v28 == 10)
      {
        v29 = v23;
      }

      else
      {
        v29 = v24;
      }

      if (v28 == 9)
      {
        v29 = v22;
      }

      if (v28 == 7)
      {
        v30 = v26;
      }

      else
      {
        v30 = v27;
      }

      if (v28 == 6)
      {
        v30 = v25;
      }

      if (byte_284EBE8A0[v20 + 32] <= 8u)
      {
        v29 = v30;
      }

      if (v28 == 4)
      {
        v31 = "gallery-placeholder-2A";
      }

      else
      {
        v31 = "gallery-placeholder-2B";
      }

      if (v28 == 3)
      {
        v31 = "gallery-placeholder-1C";
      }

      if (v28 == 1)
      {
        v32 = "gallery-placeholder-1A";
      }

      else
      {
        v32 = "gallery-placeholder-1B";
      }

      if (!byte_284EBE8A0[v20 + 32])
      {
        v32 = v21;
      }

      if (byte_284EBE8A0[v20 + 32] <= 2u)
      {
        v31 = v32;
      }

      if (byte_284EBE8A0[v20 + 32] <= 5u)
      {
        v33 = v31;
      }

      else
      {
        v33 = v29;
      }

      v54 = result;
      v35 = *(result + 16);
      v34 = *(result + 24);
      if (v35 >= v34 >> 1)
      {
        v38 = v27;
        v40 = v26;
        v48 = v22;
        v50 = v21;
        v44 = v24;
        v46 = v23;
        v42 = v25;
        sub_23BFCE138((v34 > 1), v35 + 1, 1);
        v27 = v38;
        v26 = v40;
        v25 = v42;
        v24 = v44;
        v23 = v46;
        v22 = v48;
        v21 = v50;
        result = v54;
      }

      ++v20;
      *(result + 16) = v35 + 1;
      v36 = result + 16 * v35;
      *(v36 + 32) = 0xD000000000000016;
      *(v36 + 40) = v33 | 0x8000000000000000;
    }

    while (v20 != 6);
  }

  return result;
}

uint64_t sub_23BFC3B4C(uint64_t a1)
{
  v2 = sub_23BF4A264(&qword_27E1E0B78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BFC3BB8()
{
  v1 = MEMORY[0x277D84F90];
  sub_23BFFAA60();
  sub_23BFFA5E0();
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  sub_23BFFA5E0();
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  sub_23BFFA5E0();
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  return v1;
}

uint64_t sub_23BFC3CC0()
{
  v1 = MEMORY[0x277D84F90];
  sub_23BFFAA60();
  sub_23BFFA5E0();
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  sub_23BFFA5E0();
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  sub_23BFFA5E0();
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  sub_23BFFA5E0();
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  sub_23BFFA5E0();
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  return v1;
}

uint64_t sub_23BFC3E48()
{
  v1 = MEMORY[0x277D84F90];
  sub_23BFFAA60();
  sub_23BFFA5E0();
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  sub_23BFFA5E0();
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  sub_23BFFA5E0();
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  sub_23BFFA5E0();
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  sub_23BFFA5E0();
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  sub_23BFFA5E0();
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  sub_23BFFA5E0();
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  return v1;
}

uint64_t sub_23BFC4058(uint64_t a1)
{
  sub_23BFFA9F0();

  if (a1 <= 2)
  {
    if (a1 <= 1 || a1 == 2)
    {
      goto LABEL_11;
    }
  }

  else if (a1 <= 4 || a1 == 5 || a1 == 6)
  {
LABEL_11:
    v2 = sub_23BFFA370();
    v4 = v3;

    MEMORY[0x23EEC3090](v2, v4);

    return 0xD00000000000001BLL;
  }

  result = sub_23BFFACF0();
  __break(1u);
  return result;
}

unint64_t sub_23BFC4200@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23BFC5244(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

char *sub_23BFC42E0()
{
  result = [v0 _value];
  if ((result - 1) >= 6)
  {
    return 0;
  }

  return result;
}

uint64_t sub_23BFC4388()
{
  v0 = sub_23BFC42E0();
  sub_23BFC4058(v0);
  v1 = sub_23BFFA2C0();

  sub_23BFFA9F0();

  v2 = sub_23BFC42E0();
  v3 = 0xE700000000000000;
  v4 = 0x6C61727574616ELL;
  v5 = 0xED0000706F72646BLL;
  v6 = 0x636142726F6C6F63;
  if (v2 != 5)
  {
    v6 = 0xD000000000000011;
    v5 = 0x800000023C012180;
  }

  v7 = 0x656E6F746F7564;
  if (v2 != 3)
  {
    v7 = 0x656E6F74697274;
  }

  if (v2 <= 4)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE200000000000000;
  v9 = 30562;
  if (v2 != 1)
  {
    v9 = 0x656E6F746F6E6F6DLL;
    v8 = 0xE800000000000000;
  }

  if (v2)
  {
    v4 = v9;
    v3 = v8;
  }

  if (v2 <= 2)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  sub_23BF700D8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  MEMORY[0x23EEC3090](v10, v11);

  v13 = sub_23BFFA2C0();

  v14 = [ObjCClassFromMetadata localizedStringForKey:v1 comment:{v13, 0xD00000000000002ALL, 0x800000023C0121E0}];

  v15 = sub_23BFFA300();
  return v15;
}

uint64_t sub_23BFC45D0()
{
  v19 = MEMORY[0x277D84F90];
  sub_23BFCE2A0(0, 7, 0);
  v0 = 0;
  v1 = v19;
  v2 = MEMORY[0x277D837D0];
  while (1)
  {
    v3 = *(&unk_284EBDCE0 + v0 + 32);
    if (v3 > 2)
    {
      break;
    }

    if (v3)
    {
      if (v3 == 1)
      {
        v4 = 0xE200000000000000;
        v6 = 30562;
      }

      else
      {
        if (v3 != 2)
        {
          goto LABEL_22;
        }

        v4 = 0xE800000000000000;
        v6 = 0x656E6F746F6E6F6DLL;
      }
    }

    else
    {
      v4 = 0xE700000000000000;
      v6 = 0x6C61727574616ELL;
    }

LABEL_18:
    sub_23BFFA9B0();
    v18 = v2;
    *(&v16 + 1) = v6;
    *&v17 = v4;
    v19 = v1;
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_23BFCE2A0((v7 > 1), v8 + 1, 1);
      v1 = v19;
    }

    *(v1 + 16) = v8 + 1;
    v9 = v1 + 72 * v8;
    *(v9 + 32) = v15[0];
    v10 = v15[1];
    v11 = v16;
    v12 = v17;
    *(v9 + 96) = v18;
    *(v9 + 64) = v11;
    *(v9 + 80) = v12;
    *(v9 + 48) = v10;
    v0 += 8;
    if (v0 == 56)
    {
      sub_23BF4A264(&qword_27E1E0BE0);
      *&v15[0] = sub_23BFFAB50();

      sub_23BFC4E58(v13, 1, v15);

      return *&v15[0];
    }
  }

  if (v3 <= 4)
  {
    v4 = 0xE700000000000000;
    if (v3 == 3)
    {
      v5 = 1953461604;
    }

    else
    {
      v5 = 1953067636;
    }

    v6 = v5 | 0x656E6F00000000;
    goto LABEL_18;
  }

  if (v3 == 5)
  {
    v6 = 0x636142726F6C6F63;
    v4 = 0xED0000706F72646BLL;
    goto LABEL_18;
  }

  if (v3 == 6)
  {
    v6 = 0xD000000000000011;
    v4 = 0x800000023C012180;
    goto LABEL_18;
  }

LABEL_22:
  sub_23BFFACF0();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_23BFC4954(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR___NTKParmesanStyleEditOption_positionsToFaceBundleStrings;
  *&v2[v5] = sub_23BFC45D0();
  sub_23BF4B33C(a1, v18, &qword_27E1E0530);
  v6 = v19;
  if (v19)
  {
    v7 = sub_23BF4C484(v18, v19);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x28223BE20](v7);
    v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_23BFFACA0();
    (*(v8 + 8))(v11, v6);
    sub_23BF4A9A4(v18);
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for ParmesanStyleEditOption();
  v17.receiver = v2;
  v17.super_class = v13;
  v14 = objc_msgSendSuper2(&v17, sel_initWithJSONObjectRepresentation_forDevice_, v12, a2);

  swift_unknownObjectRelease();
  v15 = v14;
  sub_23BF6D5A0(a1);
  if (v15)
  {
  }

  return v15;
}

id sub_23BFC4BC0(char *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = OBJC_IVAR___NTKParmesanStyleEditOption_positionsToFaceBundleStrings;
  v7 = a3;
  *&a1[v6] = sub_23BFC45D0();
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ParmesanStyleEditOption();
  v8 = objc_msgSendSuper2(&v10, *a4, v7);

  if (v8)
  {
  }

  return v8;
}

id sub_23BFC4C40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanStyleEditOption();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23BFC4CC4()
{
  result = qword_27E1E25A8;
  if (!qword_27E1E25A8)
  {
    sub_23BF4A2D0(&qword_27E1E25B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E25A8);
  }

  return result;
}

unint64_t sub_23BFC4D28(uint64_t a1)
{
  *(a1 + 8) = sub_23BFC4D58();
  result = sub_23BFC4DAC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23BFC4D58()
{
  result = qword_27E1E25B8;
  if (!qword_27E1E25B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E25B8);
  }

  return result;
}

unint64_t sub_23BFC4DAC()
{
  result = qword_27E1E25C0;
  if (!qword_27E1E25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E25C0);
  }

  return result;
}

unint64_t sub_23BFC4E04()
{
  result = qword_27E1E25C8;
  if (!qword_27E1E25C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E25C8);
  }

  return result;
}

void sub_23BFC4E58(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  sub_23BF4B33C(a1 + 32, &v43, &qword_27E1E25D0);
  v40 = v43;
  v41 = v44;
  v42 = v45;
  sub_23BF66650(v46, v39);
  v7 = *a3;
  v8 = sub_23BFE2C5C(&v40);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v14) = v9;
  if (v7[3] < v13)
  {
    sub_23BFE7358(v13, v6 & 1);
    v8 = sub_23BFE2C5C(&v40);
    if ((v14 & 1) == (v15 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v8 = sub_23BFFAD10();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v18 = v8;
  sub_23BFE8D20();
  v8 = v18;
  if (v14)
  {
LABEL_8:
    v16 = swift_allocError();
    swift_willThrow();
    v47 = v16;
    v17 = v16;
    sub_23BF4A264(&qword_27E1E0538);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_23BF4A9A4(v39);
      sub_23BF4A658(&v40);

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v19 = *a3;
  *(*a3 + 8 * (v8 >> 6) + 64) |= 1 << v8;
  v20 = v19[6] + 40 * v8;
  v21 = v40;
  v22 = v41;
  *(v20 + 32) = v42;
  *v20 = v21;
  *(v20 + 16) = v22;
  sub_23BF66650(v39, (v19[7] + 32 * v8));
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v12)
  {
    v19[2] = v24;
    if (v4 != 1)
    {
      v6 = a1 + 104;
      v14 = 1;
      while (v14 < *(a1 + 16))
      {
        sub_23BF4B33C(v6, &v43, &qword_27E1E25D0);
        v40 = v43;
        v41 = v44;
        v42 = v45;
        sub_23BF66650(v46, v39);
        v25 = *a3;
        v26 = sub_23BFE2C5C(&v40);
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v12 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v12)
        {
          goto LABEL_22;
        }

        v31 = v27;
        if (v25[3] < v30)
        {
          sub_23BFE7358(v30, 1);
          v26 = sub_23BFE2C5C(&v40);
          if ((v31 & 1) != (v32 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v31)
        {
          goto LABEL_8;
        }

        v33 = *a3;
        *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        v34 = v33[6] + 40 * v26;
        v35 = v40;
        v36 = v41;
        *(v34 + 32) = v42;
        *v34 = v35;
        *(v34 + 16) = v36;
        sub_23BF66650(v39, (v33[7] + 32 * v26));
        v37 = v33[2];
        v12 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v12)
        {
          goto LABEL_23;
        }

        ++v14;
        v33[2] = v38;
        v6 += 72;
        if (v4 == v14)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_23BFFA9F0();
  MEMORY[0x23EEC3090](0xD00000000000001BLL, 0x800000023C0121C0);
  sub_23BFFAA90();
  MEMORY[0x23EEC3090](39, 0xE100000000000000);
  sub_23BFFAB00();
  __break(1u);
}

unint64_t sub_23BFC5244(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

uint64_t sub_23BFC5254(uint64_t a1)
{
  v1 = 0x6C61727574616ELL;
  v2 = 0x656E6F74697274;
  v3 = 0x636142726F6C6F63;
  v4 = 0xD000000000000011;
  if (a1 != 6)
  {
    v4 = 0x6C61727574616ELL;
  }

  if (a1 != 5)
  {
    v3 = v4;
  }

  if (a1 != 4)
  {
    v2 = v3;
  }

  if (a1 == 3)
  {
    v1 = 0x656E6F746F7564;
  }

  if (a1 == 2)
  {
    v1 = 0x656E6F746F6E6F6DLL;
  }

  if (a1 == 1)
  {
    v1 = 30562;
  }

  if (a1 <= 3)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23BFC5354(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_23BFC53B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23BFC5410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() colorRampFiltersForMonochromeColorMatrix:a3 fromPalette:0 toPalette:*v3 transitionFraction:1.0];
  sub_23BFC5488();
  v5 = sub_23BFFA460();

  return v5;
}

unint64_t sub_23BFC5488()
{
  result = qword_27E1E11F0;
  if (!qword_27E1E11F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1E11F0);
  }

  return result;
}

uint64_t sub_23BFC54D4(void *a1)
{
  sub_23BF4A264(&qword_27E1E25D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C005210;
  *(inited + 32) = 0;
  sub_23BF4A264(&qword_27E1E24D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23C001BB0;
  v4 = a1;
  [v4 setDuotone_];
  *(v3 + 56) = &type metadata for ParmesanColorRamp;
  *(v3 + 64) = &off_284EC1AB0;
  *(v3 + 32) = a1;
  *(inited + 40) = v3;
  *(inited + 48) = 2;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23C001BB0;
  v6 = v4;
  [v6 setDuotone_];
  *(v5 + 56) = &type metadata for ParmesanColorRamp;
  *(v5 + 64) = &off_284EC1AB0;
  *(v5 + 32) = a1;
  *(inited + 56) = v5;
  *(inited + 64) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23C001BB0;
  [v6 setDuotone_];
  *(v7 + 56) = &type metadata for ParmesanColorRamp;
  *(v7 + 64) = &off_284EC1AB0;
  *(v7 + 32) = a1;
  *(inited + 72) = v7;
  sub_23BFE4A60(inited);
  swift_setDeallocating();
  sub_23BF4A264(&qword_27E1E25E0);
  swift_arrayDestroy();
  return 0x656E6F746F6E6F6DLL;
}

uint64_t sub_23BFC5698(void *a1)
{
  sub_23BF4A264(&qword_27E1E25D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C005210;
  *(inited + 32) = 0;
  sub_23BF4A264(&qword_27E1E24D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23C001BB0;
  v4 = a1;
  [v4 setDuotone_];
  *(v3 + 56) = &type metadata for ParmesanColorRamp;
  *(v3 + 64) = &off_284EC1AB0;
  *(v3 + 32) = a1;
  *(inited + 40) = v3;
  *(inited + 48) = 2;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23C001BB0;
  v6 = v4;
  [v6 setDuotone_];
  *(v5 + 56) = &type metadata for ParmesanColorRamp;
  *(v5 + 64) = &off_284EC1AB0;
  *(v5 + 32) = a1;
  *(inited + 56) = v5;
  *(inited + 64) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23C001BB0;
  [v6 setDuotone_];
  *(v7 + 56) = &type metadata for ParmesanColorRamp;
  *(v7 + 64) = &off_284EC1AB0;
  *(v7 + 32) = a1;
  *(inited + 72) = v7;
  sub_23BFE4A60(inited);
  swift_setDeallocating();
  sub_23BF4A264(&qword_27E1E25E0);
  swift_arrayDestroy();
  return 0x656E6F746F7564;
}

uint64_t sub_23BFC585C(uint64_t a1)
{
  sub_23BF4A264(&qword_27E1E19A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C005210;
  *(inited + 32) = 2;
  *(inited + 40) = sub_23BFE4960(&unk_284EBE7D8);
  *(inited + 48) = 1;
  *(inited + 56) = sub_23BFE4960(&unk_284EBE800);
  *(inited + 64) = 0;
  *(inited + 72) = sub_23BFE4960(&unk_284EBE828);
  sub_23BFE4A4C(inited);
  swift_setDeallocating();
  sub_23BF4A264(&qword_27E1E19A8);
  swift_arrayDestroy();

  return a1;
}

uint64_t sub_23BFC5958(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 colorOption];

  v3 = sub_23BFFA300();
  v5 = v4;

  v6 = v3 == 0x2D656E6F74697274 && v5 == 0xEA00000000003130;
  if (v6 || (sub_23BFFACC0() & 1) != 0 || (v3 == 0x2D656E6F74697274 ? (v12 = v5 == 0xEA00000000003230) : (v12 = 0), v12 || (sub_23BFFACC0() & 1) != 0 || (v3 == 0x2D656E6F74697274 ? (v13 = v5 == 0xEA00000000003330) : (v13 = 0), v13 || (sub_23BFFACC0() & 1) != 0 || v3 == 0x2D656E6F74697274 && v5 == 0xEA00000000003430 || (sub_23BFFACC0() & 1) != 0 || v3 == 0x2D656E6F74697274 && v5 == 0xEA00000000003530 || (sub_23BFFACC0() & 1) != 0 || v3 == 0x2D656E6F74697274 && v5 == 0xEA00000000003630)))
  {
  }

  else
  {
    sub_23BFFACC0();
  }

  sub_23BF4A264(&qword_27E1E24D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23C001BB0;
  v8 = sub_23BFC585C(0x742D34302D74756CLL);
  *(v7 + 64) = &off_284EC0988;
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  *(v7 + 48) = v10;
  *(v7 + 56) = &type metadata for ParmesanLut;
  return 0x2D656E6F74697274;
}

uint64_t sub_23BFC5C44(void *a1)
{
  sub_23BF4A264(&qword_27E1E25D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C005210;
  *(inited + 32) = 0;
  sub_23BF4A264(&qword_27E1E24D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23C002D30;
  v4 = sub_23BF8AFF0();
  *(v3 + 32) = 0x622D35302D74756CLL;
  *(v3 + 40) = 0xE90000000000006DLL;
  *(v3 + 48) = v4;
  *(v3 + 56) = &type metadata for ParmesanLut;
  *(v3 + 96) = &type metadata for ParmesanColorMultiply;
  *(v3 + 104) = &off_284EC1DA8;
  *(v3 + 64) = &off_284EC0988;
  *(v3 + 72) = 0xD000000000000011;
  *(v3 + 80) = 0x800000023C012230;
  *(v3 + 88) = a1;
  *(inited + 40) = v3;
  *(inited + 48) = 2;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23C001BB0;
  v6 = a1;
  v7 = sub_23BF8AFF0();
  *(v5 + 56) = &type metadata for ParmesanLut;
  *(v5 + 64) = &off_284EC0988;
  *(v5 + 32) = 0x622D35302D74756CLL;
  *(v5 + 40) = 0xE90000000000006DLL;
  *(v5 + 48) = v7;
  *(inited + 56) = v5;
  *(inited + 64) = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23C001BB0;
  *(v8 + 56) = &type metadata for ParmesanSolidColor;
  *(v8 + 64) = &off_284EC1D08;
  *(v8 + 32) = 0x726F6C6F632D6263;
  *(v8 + 40) = 0xE800000000000000;
  *(v8 + 48) = v6;
  *(inited + 72) = v8;
  v9 = v6;
  sub_23BFE4A60(inited);
  swift_setDeallocating();
  sub_23BF4A264(&qword_27E1E25E0);
  swift_arrayDestroy();
  return 0x636142726F6C6F43;
}

unint64_t sub_23BFC5E64(void *a1)
{
  sub_23BF4A264(&qword_27E1E25D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C005210;
  *(inited + 32) = 0;
  sub_23BF4A264(&qword_27E1E24D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23C002D30;
  *(v3 + 48) = sub_23BF8AFF0();
  *(v3 + 56) = &type metadata for ParmesanLut;
  *(v3 + 32) = 0x632D36302D74756CLL;
  *(v3 + 40) = 0xEA00000000006D62;
  *(v3 + 96) = &type metadata for ParmesanColorMultiply;
  *(v3 + 104) = &off_284EC1DA8;
  *(v3 + 64) = &off_284EC0988;
  *(v3 + 72) = 0x6F6C6F632D6D6263;
  *(v3 + 80) = 0xE900000000000072;
  *(v3 + 88) = a1;
  *(inited + 40) = v3;
  *(inited + 48) = 2;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C001BB0;
  v5 = a1;
  v6 = sub_23BF8AFF0();
  *(v4 + 56) = &type metadata for ParmesanLut;
  *(v4 + 64) = &off_284EC0988;
  *(v4 + 32) = 0x632D36302D74756CLL;
  *(v4 + 40) = 0xEA00000000006D62;
  *(v4 + 48) = v6;
  *(inited + 56) = v4;
  *(inited + 64) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23C001BB0;
  *(v7 + 56) = &type metadata for ParmesanSolidColor;
  *(v7 + 64) = &off_284EC1D08;
  *(v7 + 32) = 0x726F6C6F632D6263;
  *(v7 + 40) = 0xE800000000000000;
  *(v7 + 48) = v5;
  *(inited + 72) = v7;
  v8 = v5;
  sub_23BFE4A60(inited);
  swift_setDeallocating();
  sub_23BF4A264(&qword_27E1E25E0);
  swift_arrayDestroy();
  return 0xD000000000000011;
}

uint64_t sub_23BFC60A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 26466;
  if (v2 != 1)
  {
    v3 = 26470;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1952541798;
  }

  if (v2)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 26466;
  if (*a2 != 1)
  {
    v6 = 26470;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1952541798;
  }

  if (*a2)
  {
    v8 = 0xE200000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23BFFACC0();
  }

  return v9 & 1;
}

uint64_t sub_23BFC616C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BFC6C94();
  *a1 = result;
  return result;
}

void sub_23BFC619C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 26466;
  if (v2 != 1)
  {
    v4 = 26470;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1952541798;
  }

  if (!v5)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_23BFC61DC()
{
  v1 = 26466;
  if (*v0 != 1)
  {
    v1 = 26470;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1952541798;
  }
}

uint64_t sub_23BFC6218()
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

uint64_t sub_23BFC629C()
{
  sub_23BFFA3A0();
}

uint64_t sub_23BFC630C()
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

uint64_t sub_23BFC639C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6C61727475656ELL;
  if (v2 != 1)
  {
    v4 = 1802658148;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6C61727475656ELL;
  if (*a2 != 1)
  {
    v8 = 1802658148;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746867696CLL;
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
    v11 = sub_23BFFACC0();
  }

  return v11 & 1;
}

uint64_t sub_23BFC648C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BFC6CE0();
  *a1 = result;
  return result;
}

void sub_23BFC64BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6C61727475656ELL;
  if (v2 != 1)
  {
    v5 = 1802658148;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746867696CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23BFC6510()
{
  v1 = 0x6C61727475656ELL;
  if (*v0 != 1)
  {
    v1 = 1802658148;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_23BFC6560()
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

uint64_t sub_23BFC65F8()
{
  sub_23BFFA3A0();
}

uint64_t sub_23BFC667C()
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

void (*sub_23BFC6710(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EEC36D0](a2, a3);
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
    return sub_23BFC6790;
  }

  __break(1u);
  return result;
}

void (*sub_23BFC6798(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EEC36D0](a2, a3);
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
    return sub_23BFC6D30;
  }

  __break(1u);
  return result;
}

uint64_t sub_23BFC6818(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    if (*(a5 + 16))
    {
      v7 = sub_23BFE2E54(a1);
      if (v8)
      {
        a4 = *(*(a5 + 56) + 8 * v7);
      }
    }
  }

  v41 = *(a4 + 16);
  if (!v41)
  {
    return MEMORY[0x277D84F90];
  }

  v40 = a4 + 32;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v12 = &unk_27E1E25E8;
  v13 = &unk_23C008550;
  v38 = a4;
  while (v10 < *(a4 + 16))
  {
    sub_23BFA8544(v40 + 40 * v10, v48);
    v14 = v49;
    v15 = v50;
    sub_23BF4C484(v48, v49);
    v16 = (*(*(v15 + 8) + 8))(a1, a2, a3, v14);
    sub_23BF4A9A4(v48);
    v17 = v16 >> 62;
    if (v16 >> 62)
    {
      v18 = sub_23BFFAAB0();
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v11 >> 62;
    if (v11 >> 62)
    {
      v37 = sub_23BFFAAB0();
      v21 = v37 + v18;
      if (__OFADD__(v37, v18))
      {
LABEL_37:
        __break(1u);
LABEL_38:

        return v11;
      }
    }

    else
    {
      v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v20 + v18;
      if (__OFADD__(v20, v18))
      {
        goto LABEL_37;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v19)
      {
        v22 = v11 & 0xFFFFFFFFFFFFFF8;
        if (v21 <= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_23BFFAAB0();
      goto LABEL_20;
    }

    if (v19)
    {
      goto LABEL_19;
    }

LABEL_20:
    result = sub_23BFFAA20();
    v11 = result;
    v22 = result & 0xFFFFFFFFFFFFFF8;
LABEL_21:
    v46 = v18;
    v23 = *(v22 + 16);
    v24 = *(v22 + 24);
    if (v17)
    {
      v26 = v22;
      result = sub_23BFFAAB0();
      v22 = v26;
      v25 = result;
      if (!result)
      {
LABEL_7:

        if (v46 > 0)
        {
          goto LABEL_42;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v25 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_7;
      }
    }

    if (((v24 >> 1) - v23) < v46)
    {
      goto LABEL_43;
    }

    v45 = v11;
    v27 = v22 + 8 * v23 + 32;
    v39 = v22;
    if (v17)
    {
      if (v25 < 1)
      {
        goto LABEL_45;
      }

      sub_23BF6CFF8(&qword_27E1E25F0, v12);
      for (i = 0; i != v25; ++i)
      {
        sub_23BF4A264(v12);
        v30 = sub_23BFC6710(v47, i, v16);
        v32 = v12;
        v33 = *v31;
        (v30)(v47, 0);
        v28 = v13;
        *(v27 + 8 * i) = v33;
        v12 = v32;
      }
    }

    else
    {
      sub_23BFC5488();
      swift_arrayInitWithCopy();
      v28 = v13;
    }

    v13 = v28;

    v11 = v45;
    a4 = v38;
    if (v46 > 0)
    {
      v34 = *(v39 + 16);
      v35 = __OFADD__(v34, v46);
      v36 = v34 + v46;
      if (v35)
      {
        goto LABEL_44;
      }

      *(v39 + 16) = v36;
    }

LABEL_8:
    if (++v10 == v41)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

unint64_t sub_23BFC6BE8()
{
  result = qword_27E1E2608;
  if (!qword_27E1E2608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2608);
  }

  return result;
}

unint64_t sub_23BFC6C40()
{
  result = qword_27E1E2610;
  if (!qword_27E1E2610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2610);
  }

  return result;
}

uint64_t sub_23BFC6C94()
{
  v0 = sub_23BFFAB70();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23BFC6CE0()
{
  v0 = sub_23BFFAB70();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

double sub_23BFC6D48()
{
  sub_23BF698C4(*(v0 + 16), v6);
  v1 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v2 = [objc_opt_self() valueWithCAColorMatrix_];
  [v1 setValue:v2 forKey:*MEMORY[0x277CDA440]];

  v3 = sub_23BFFA2C0();
  [v1 setName_];

  sub_23BF4A264(&qword_27E1E05E0);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_23C001BA0;
  *(v4 + 32) = v1;
  return result;
}

void sub_23BFC6E50(id a1, char a2, char a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v35 = MEMORY[0x277D84F90];
  if (a2)
  {
    if (a3)
    {
      v16 = [a1 layoutMarginsGuide];
      v17 = [v16 topAnchor];
    }

    else
    {
      v17 = [a1 topAnchor];
    }

    v18 = [v8 topAnchor];
    v19 = [v18 constraintEqualToAnchor:v17 constant:a4];

    MEMORY[0x23EEC3100]();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v33 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23BFFA480();
    }

    sub_23BFFA4A0();

    if ((a2 & 4) == 0)
    {
LABEL_3:
      if ((a2 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((a2 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (a3)
  {
    v20 = [a1 layoutMarginsGuide];
    v21 = [v20 bottomAnchor];
  }

  else
  {
    v21 = [a1 bottomAnchor];
  }

  v22 = [v8 bottomAnchor];
  v23 = [v22 constraintEqualToAnchor:v21 constant:-a6];

  MEMORY[0x23EEC3100]();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v33 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23BFFA480();
  }

  sub_23BFFA4A0();

  if ((a2 & 2) == 0)
  {
LABEL_4:
    if ((a2 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

LABEL_18:
  if (a3)
  {
    v24 = [a1 layoutMarginsGuide];
    v25 = [v24 leadingAnchor];
  }

  else
  {
    v25 = [a1 leadingAnchor];
  }

  v26 = [v8 leadingAnchor];
  v27 = [v26 constraintEqualToAnchor:v25 constant:a5];

  MEMORY[0x23EEC3100]();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v33 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23BFFA480();
  }

  sub_23BFFA4A0();

  if ((a2 & 8) != 0)
  {
LABEL_24:
    if (a3)
    {
      v28 = [a1 layoutMarginsGuide];
      v29 = [v28 trailingAnchor];
    }

    else
    {
      v29 = [a1 trailingAnchor];
    }

    v30 = [v8 trailingAnchor];
    v31 = [v30 constraintEqualToAnchor:v29 constant:-a7];

    MEMORY[0x23EEC3100]();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23BFFA480();
    }

    sub_23BFFA4A0();
  }

LABEL_30:
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = objc_opt_self();
  sub_23BF7FF9C();
  v34 = sub_23BFFA450();

  [v32 activateConstraints_];
}

void sub_23BFC72F8(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, char a8, char a9)
{
  v16 = a7;
  v17 = a1;
  sub_23BFC6E50(v16, a8, a9, a2, a3, a4, a5);
}

void sub_23BFC73A0(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a1;
  v14 = [v16 superview];
  if (v14)
  {
    v15 = v14;
    [v16 constrainToView:v14 edges:a7 insets:a8 useLayoutMargins:{a2, a3, a4, a5}];
  }
}

void sub_23BFC745C(void *a1, char a2)
{
  v3 = v2;
  v14 = MEMORY[0x277D84F90];
  if (a2)
  {
    v6 = [v2 centerXAnchor];
    v7 = [a1 centerXAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    MEMORY[0x23EEC3100]();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23BFFA480();
    }

    sub_23BFFA4A0();
  }

  if ((a2 & 2) != 0)
  {
    v9 = [v3 centerYAnchor];
    v10 = [a1 centerYAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    MEMORY[0x23EEC3100]();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23BFFA480();
    }

    sub_23BFFA4A0();
  }

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = objc_opt_self();
  sub_23BF7FF9C();
  v13 = sub_23BFFA450();

  [v12 activateConstraints_];
}

void sub_23BFC7680(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_23BFC745C(v6, a4);
}

void sub_23BFC76F0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v4 = [v6 superview];
  if (v4)
  {
    v5 = v4;
    [v6 constrainToCenterOf:v4 axis:a3];
  }
}

void sub_23BFC776C(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v28 = MEMORY[0x277D84F90];
  if (a2)
  {
    v14 = [v6 topAnchor];
    v15 = [a1 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:a3];

    MEMORY[0x23EEC3100]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23BFFA480();
    }

    sub_23BFFA4A0();
    if ((a2 & 4) == 0)
    {
LABEL_3:
      if ((a2 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a2 & 4) == 0)
  {
    goto LABEL_3;
  }

  v17 = [v7 bottomAnchor];
  v18 = [a1 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-a5];

  MEMORY[0x23EEC3100]();
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23BFFA480();
  }

  sub_23BFFA4A0();
  if ((a2 & 2) == 0)
  {
LABEL_4:
    if ((a2 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  v20 = [v7 leadingAnchor];
  v21 = [a1 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:a4];

  MEMORY[0x23EEC3100]();
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23BFFA480();
  }

  sub_23BFFA4A0();
  if ((a2 & 8) != 0)
  {
LABEL_15:
    v23 = [v7 trailingAnchor];
    v24 = [a1 trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:-a6];

    MEMORY[0x23EEC3100]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23BFFA480();
    }

    sub_23BFFA4A0();
  }

LABEL_18:
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = objc_opt_self();
  sub_23BF7FF9C();
  v27 = sub_23BFFA450();

  [v26 activateConstraints_];
}

void sub_23BFC7B30(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, char a8)
{
  v14 = a7;
  v15 = a1;
  sub_23BFC776C(v14, a8, a2, a3, a4, a5);
}

double sub_23BFC7BE0()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v3 = [v1 CGColor];
  [v2 setValue:v3 forKey:*MEMORY[0x277CDA430]];

  v4 = sub_23BFFA2C0();
  [v2 setName_];

  sub_23BF4A264(&qword_27E1E05E0);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_23C001BA0;
  *(v5 + 32) = v2;
  return result;
}

void sub_23BFC7D04(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 2;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
}

BOOL sub_23BFC7DBC(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_23BFC7DEC(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_23BFD460C(a4, a5);
  }

  while ((sub_23BFFA2B0() & 1) == 0);
  return v9 != v10;
}

uint64_t sub_23BFC7EF4(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_23BFF8FF0();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v22 = MEMORY[0x277D84F90];
    sub_23BFCE1B8(0, v9, 0);
    v10 = v22;
    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v11 = a3 + v17;
    v16 = (v6 + 32);
    v12 = *(v6 + 72);
    while (1)
    {
      v19(v11, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v22 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_23BFCE1B8(v13 > 1, v14 + 1, 1);
        v10 = v22;
      }

      *(v10 + 16) = v14 + 1;
      (*v16)(v10 + v17 + v14 * v12, v8, v18);
      v11 += v12;
      if (!--v9)
      {
        return v10;
      }
    }
  }

  return v10;
}

void *sub_23BFC80AC(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v13 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = sub_23BFF8FF0();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v14, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v13;
        }

        if (v14)
        {
          break;
        }

        if (v8 == v6)
        {
          return v13;
        }
      }

      MEMORY[0x23EEC3100](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23BFFA480();
      }

      sub_23BFFA4A0();
      result = v15;
    }

    while (v8 != v6);
  }

  return result;
}

unint64_t sub_23BFC822C(unsigned __int8 a1)
{
  v1 = 0xD00000000000001ALL;
  v2 = 0xD000000000000025;
  if (a1 != 5)
  {
    v2 = 0xD000000000000021;
  }

  v3 = 0xD00000000000002ELL;
  if (a1 == 3)
  {
    v3 = 0xD00000000000001ALL;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  if (a1 != 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (!a1)
  {
    v1 = 0xD00000000000002CLL;
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

unint64_t sub_23BFC82F0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BFD3E84(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23BFC833C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BFD46C0();
  v5 = sub_23BFD4714();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t sub_23BFC8394()
{
  sub_23BFF8F70();
  swift_allocObject();
  result = sub_23BFF8F60();
  qword_27E1EB628 = result;
  return result;
}

uint64_t sub_23BFC83D4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_23BFF8FF0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a3, a1, v7);
  result = sub_23BFF8F80();
  if (v3)
  {
    result = (*(v8 + 8))(a3, v7);
    *a2 = v3;
  }

  return result;
}

id sub_23BFC84BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_23BFF8D10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BFF8FF0();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a1);
  (*(v7 + 16))(v9, a2, v6);
  result = sub_23BFCFB68(v12, v9);
  *a3 = result;
  return result;
}

uint64_t sub_23BFC87C8(int a1, int a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  v4 = sub_23BFFA460();
  v3[3] = v4;
  v5 = sub_23BFFA300();
  v7 = v6;
  v3[4] = v6;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_23BFC88BC;

  return sub_23BFD1E10(v4, v5, v7);
}

uint64_t sub_23BFC88BC(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    type metadata accessor for ParmesanAsset();
    v5 = sub_23BFFA450();
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 16);
  (v6)[2](v6, v5);

  _Block_release(v6);
  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_23BFC8BC8(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_23BFFA300();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_23BFC8C98;

  return (sub_23BFD3E94)(v3, v5);
}

uint64_t sub_23BFC8C98(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *v2;

  if (a2 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_23BFF8D30();
    sub_23BF94BEC(a1, a2);
  }

  v8 = *(v5 + 16);
  (v8)[2](v8, v7);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

void sub_23BFC8E54(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    type metadata accessor for ParmesanAsset();
    v5 = sub_23BFFA450();
  }

  if (a2)
  {
    v6 = sub_23BFF8BB0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_23BFC8F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v16;
  *(v8 + 136) = v15;
  *(v8 + 120) = a6;
  *(v8 + 128) = a8;
  *(v8 + 104) = a4;
  *(v8 + 112) = a5;
  v9 = sub_23BFF8FF0();
  *(v8 + 160) = v9;
  *(v8 + 168) = *(v9 - 8);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  sub_23BF4A264(&qword_27E1E1B00);
  *(v8 + 192) = swift_task_alloc();
  v10 = sub_23BFF9100();
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  v11 = sub_23BFF8DE0();
  *(v8 + 224) = v11;
  *(v8 + 232) = *(v11 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v8 + 256) = v12;
  *v12 = v8;
  v12[1] = sub_23BFC9154;

  return MEMORY[0x28219B680]();
}

uint64_t sub_23BFC9154(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v4 = sub_23BFCA090;
  }

  else
  {
    v4 = sub_23BFC9268;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23BFC9268()
{
  v1 = v0[33];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[29];
    v4 = v0[26];
    v52 = MEMORY[0x277D84F90];
    sub_23BFCE1FC(0, v2, 0);
    v5 = v52;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v49 = *(v4 + 56);
    v50 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[27];
      v10 = v0[25];
      v50(v9, v7, v10);
      sub_23BFF90D0();
      (*v8)(v9, v10);
      v12 = *(v52 + 16);
      v11 = *(v52 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_23BFCE1FC(v11 > 1, v12 + 1, 1);
      }

      v13 = v0[31];
      v14 = v0[28];
      *(v52 + 16) = v12 + 1;
      (*(v3 + 32))(v52 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v13, v14);
      v7 += v49;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v15 = sub_23BFC7DEC(v0[14], v5, MEMORY[0x277CC95F0], &qword_27E1E2658, MEMORY[0x277CC95F0]);

  if (v15)
  {
    if (qword_27E1DFDD0 != -1)
    {
      swift_once();
    }

    v16 = v0[15];
    v17 = sub_23BFF92B0();
    sub_23BF4A22C(v17, qword_27E1EB540);
    v18 = v16;
    v19 = sub_23BFF9290();
    v20 = sub_23BFFA640();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[15];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v21;
      *v23 = v21;
      v24 = v21;
      _os_log_impl(&dword_23BF0C000, v19, v20, "streamAssets(album: already tracking %@; streaming the assets", v22, 0xCu);
      sub_23BF4B2D4(v23, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v23, -1, -1);
      MEMORY[0x23EEC4DF0](v22, -1, -1);
    }

    v0[5] = sub_23BF4A264(&qword_27E1E1B10);
    v0[6] = swift_getOpaqueTypeConformance2();
    sub_23BF4AD24(v0 + 2);
    sub_23BFF8EE0();
  }

  else
  {
    if (qword_27E1DFDD0 != -1)
    {
      swift_once();
    }

    v25 = v0[15];
    v26 = sub_23BFF92B0();
    sub_23BF4A22C(v26, qword_27E1EB540);
    v27 = v25;
    v28 = sub_23BFF9290();
    v29 = sub_23BFFA640();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v0[15];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v30;
      *v32 = v30;
      v33 = v30;
      _os_log_impl(&dword_23BF0C000, v28, v29, "streamAssets(album: start tracking %@; new album", v31, 0xCu);
      sub_23BF4B2D4(v32, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v32, -1, -1);
      MEMORY[0x23EEC4DF0](v31, -1, -1);
    }

    v35 = v0[29];
    v34 = v0[30];
    v36 = v0[27];
    v37 = v0[28];
    v38 = v0[26];
    v51 = v0[25];
    v39 = v0[14];

    (*(v35 + 16))(v34, v39, v37);

    sub_23BFF90E0();
    v0[5] = sub_23BF4A264(&qword_27E1E2670);
    v0[6] = swift_getOpaqueTypeConformance2();
    sub_23BF4AD24(v0 + 2);
    sub_23BFF8F20();
    (*(v38 + 8))(v36, v51);
  }

  v40 = v0[5];
  v41 = sub_23BF4C484(v0 + 2, v40);
  v42 = *(v40 - 8);
  v43 = swift_task_alloc();
  (*(v42 + 16))(v43, v41, v40);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_23BF4AD24(v0 + 7);
  sub_23BFFA560();

  v44 = v0[10];
  v45 = v0[11];
  sub_23BF4C520((v0 + 7), v44);
  v46 = swift_task_alloc();
  v0[35] = v46;
  *v46 = v0;
  v46[1] = sub_23BFC9910;
  v47 = v0[24];

  return MEMORY[0x282200310](v47, 0, 0, v0 + 12, v44, v45);
}

uint64_t sub_23BFC9910()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_23BFCA19C;
  }

  else
  {
    v2 = sub_23BFC9A24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23BFC9A24()
{
  v59 = v0;
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[21];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_23BF4A9A4((v0 + 7));
    if (qword_27E1DFDD0 != -1)
    {
      swift_once();
    }

    v4 = v0[15];
    v5 = sub_23BFF92B0();
    sub_23BF4A22C(v5, qword_27E1EB540);
    v6 = v4;
    v7 = sub_23BFF9290();
    v8 = sub_23BFFA630();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[15];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v9;
      *v11 = v9;
      v12 = v9;
      _os_log_impl(&dword_23BF0C000, v7, v8, "streamAssetsInAlbum: finished streaming assets for album: %@", v10, 0xCu);
      sub_23BF4B2D4(v11, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v11, -1, -1);
      MEMORY[0x23EEC4DF0](v10, -1, -1);
    }

    v13 = v0[18];

    v13();
    sub_23BF4A9A4((v0 + 2));
    goto LABEL_14;
  }

  (*(v3 + 32))(v0[23], v1, v2);
  if (qword_27E1DFDD0 != -1)
  {
    swift_once();
  }

  v14 = v0[22];
  v15 = v0[23];
  v16 = v0[20];
  v17 = v0[21];
  v18 = v0[15];
  v19 = sub_23BFF92B0();
  sub_23BF4A22C(v19, qword_27E1EB540);
  (*(v17 + 16))(v14, v15, v16);
  v20 = v18;
  v21 = sub_23BFF9290();
  v22 = sub_23BFFA630();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v0[29];
    v24 = v0[30];
    v25 = v0[21];
    v53 = v0[22];
    v54 = v0[28];
    v56 = v0[20];
    v26 = v0[15];
    v27 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = v57;
    *v27 = 138412546;
    *(v27 + 4) = v26;
    *v55 = v26;
    *(v27 + 12) = 2080;
    v28 = v26;
    sub_23BFF8F90();
    sub_23BFD460C(&qword_27E1E2668, MEMORY[0x277CC95F0]);
    v29 = sub_23BFFAC70();
    v31 = v30;
    (*(v23 + 8))(v24, v54);
    v32 = *(v25 + 8);
    v32(v53, v56);
    v33 = sub_23BF62294(v29, v31, &v58);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_23BF0C000, v21, v22, "streamAssets(album: received asset from daemon for album: %@, identifier: %s", v27, 0x16u);
    sub_23BF4B2D4(v55, &qword_27E1E0B50);
    MEMORY[0x23EEC4DF0](v55, -1, -1);
    sub_23BF4A9A4(v57);
    MEMORY[0x23EEC4DF0](v57, -1, -1);
    MEMORY[0x23EEC4DF0](v27, -1, -1);
  }

  else
  {
    v35 = v0[21];
    v34 = v0[22];
    v36 = v0[20];

    v32 = *(v35 + 8);
    v32(v34, v36);
  }

  v37 = v0[36];
  v38 = sub_23BFD05EC(v0[23]);
  if (v37)
  {
    v32(v0[23], v0[20]);
    sub_23BF4A9A4((v0 + 2));
    sub_23BF4A9A4((v0 + 7));
    v39 = v0[16];
    v40 = v37;
    v39(0, v37);

LABEL_14:

    v41 = v0[1];

    return v41();
  }

  v43 = v0[16];
  if (v38)
  {
    v44 = v38;
    sub_23BF4A264(&qword_27E1E05E0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_23C001BA0;
    *(v45 + 32) = v44;
    v46 = v44;
    v43(v45, 0);
  }

  else
  {
    sub_23BFD333C();
    v47 = swift_allocError();
    *v48 = 4;
    v43(0, v47);
  }

  v32(v0[23], v0[20]);
  v49 = v0[10];
  v50 = v0[11];
  sub_23BF4C520((v0 + 7), v49);
  v51 = swift_task_alloc();
  v0[35] = v51;
  *v51 = v0;
  v51[1] = sub_23BFC9910;
  v52 = v0[24];

  return MEMORY[0x282200310](v52, 0, 0, v0 + 12, v49, v50);
}

uint64_t sub_23BFCA090()
{
  v1 = v0[34];
  sub_23BFD333C();
  v2 = swift_allocError();
  *v3 = 2;
  swift_willThrow();

  v4 = v0[16];
  v5 = v2;
  v4(0, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_23BFCA19C()
{
  v1 = v0[12];
  sub_23BF4A9A4((v0 + 2));
  sub_23BF4A9A4((v0 + 7));
  v2 = v0[16];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23BFCA40C(void *a1, void (*a2)(void, void *), uint64_t a3, void (*a4)(void), void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  v61 = a8;
  v59 = a7;
  v66 = a5;
  v63 = a4;
  v64 = a3;
  v62 = a2;
  v10 = sub_23BF4A264(&qword_27E1E0510);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v54 - v11;
  v13 = sub_23BF4A264(&qword_27E1E0BA8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v54 - v14;
  v16 = sub_23BFF8DE0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v54 - v21;
  sub_23BFF8F70();
  swift_allocObject();
  v67 = sub_23BFF8F60();
  v65 = a1;

  sub_23BFF8DA0();

  v23 = v16;
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v24 = v65;
    sub_23BF4B2D4(v15, &qword_27E1E0BA8);
    if (qword_27E1DFDD0 != -1)
    {
      swift_once();
    }

    v25 = sub_23BFF92B0();
    sub_23BF4A22C(v25, qword_27E1EB540);
    v26 = v24;
    v27 = sub_23BFF9290();
    v28 = sub_23BFFA650();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_23BF0C000, v27, v28, a9, v29, 0xCu);
      sub_23BF4B2D4(v30, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v30, -1, -1);
      MEMORY[0x23EEC4DF0](v29, -1, -1);
    }

    sub_23BFD333C();
    v32 = swift_allocError();
    *v33 = 0;
    v62(0, v32);

    v63();
  }

  else
  {
    v55 = *(v17 + 32);
    v58 = v22;
    v55(v22, v15, v16);
    v35 = sub_23BFFA540();
    v36 = *(*(v35 - 8) + 56);
    v56 = v12;
    v36(v12, 1, 1, v35);
    v37 = *(v17 + 16);
    v38 = v16;
    v39 = v17;
    v57 = v17;
    v40 = v23;
    v37(v19, v22, v38);
    v41 = (*(v39 + 80) + 40) & ~*(v39 + 80);
    v42 = (v18 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = v67;
    v46 = swift_allocObject();
    *(v46 + 2) = 0;
    *(v46 + 3) = 0;
    *(v46 + 4) = v45;
    v55(&v46[v41], v19, v40);
    v48 = v65;
    v47 = v66;
    *&v46[v42] = v65;
    *&v46[v43] = v60;
    v49 = &v46[v44];
    v50 = v63;
    v51 = v64;
    *v49 = v62;
    *(v49 + 1) = v51;
    v52 = &v46[(v44 + 23) & 0xFFFFFFFFFFFFFFF8];
    *v52 = v50;
    v52[1] = v47;

    v53 = v48;

    sub_23BF56D9C(0, 0, v56, v61, v46);

    return (*(v57 + 8))(v58, v40);
  }
}

uint64_t sub_23BFCA938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v16;
  *(v8 + 136) = v15;
  *(v8 + 120) = a6;
  *(v8 + 128) = a8;
  *(v8 + 104) = a4;
  *(v8 + 112) = a5;
  v9 = sub_23BFF8FF0();
  *(v8 + 160) = v9;
  *(v8 + 168) = *(v9 - 8);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  sub_23BF4A264(&qword_27E1E1B00);
  *(v8 + 192) = swift_task_alloc();
  v10 = sub_23BFF91A0();
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  v11 = sub_23BFF8DE0();
  *(v8 + 224) = v11;
  *(v8 + 232) = *(v11 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v8 + 264) = v12;
  *v12 = v8;
  v12[1] = sub_23BFCAB58;

  return MEMORY[0x28219B690]();
}

uint64_t sub_23BFCAB58(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_23BFCBB18;
  }

  else
  {
    v4 = sub_23BFCAC6C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23BFCAC6C()
{
  v1 = v0[34];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[29];
    v4 = v0[26];
    v54 = MEMORY[0x277D84F90];
    sub_23BFCE1FC(0, v2, 0);
    v5 = v54;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v50 = *(v4 + 56);
    v51 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[27];
      v10 = v0[25];
      v51(v9, v7, v10);
      sub_23BFF9140();
      (*v8)(v9, v10);
      v12 = *(v54 + 16);
      v11 = *(v54 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_23BFCE1FC(v11 > 1, v12 + 1, 1);
      }

      v13 = v0[32];
      v14 = v0[28];
      *(v54 + 16) = v12 + 1;
      (*(v3 + 32))(v54 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v13, v14);
      v7 += v50;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v15 = sub_23BFC7DEC(v0[14], v5, MEMORY[0x277CC95F0], &qword_27E1E2658, MEMORY[0x277CC95F0]);

  if (v15)
  {
    if (qword_27E1DFDD0 != -1)
    {
      swift_once();
    }

    v16 = v0[15];
    v17 = sub_23BFF92B0();
    sub_23BF4A22C(v17, qword_27E1EB540);
    v18 = v16;
    v19 = sub_23BFF9290();
    v20 = sub_23BFFA640();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[15];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v21;
      *v23 = v21;
      v24 = v21;
      _os_log_impl(&dword_23BF0C000, v19, v20, "streamAssetsInShuffle: already tracking %@; streaming the assets", v22, 0xCu);
      sub_23BF4B2D4(v23, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v23, -1, -1);
      MEMORY[0x23EEC4DF0](v22, -1, -1);
    }

    v0[5] = sub_23BF4A264(&qword_27E1E1B20);
    v0[6] = swift_getOpaqueTypeConformance2();
    sub_23BF4AD24(v0 + 2);
    sub_23BFF8F10();
  }

  else
  {
    if (qword_27E1DFDD0 != -1)
    {
      swift_once();
    }

    v25 = v0[15];
    v26 = sub_23BFF92B0();
    sub_23BF4A22C(v26, qword_27E1EB540);
    v27 = v25;
    v28 = sub_23BFF9290();
    v29 = sub_23BFFA640();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v0[15];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v30;
      *v32 = v30;
      v33 = v30;
      _os_log_impl(&dword_23BF0C000, v28, v29, "streamAssetsInShuffle: start tracking %@; new shuffle", v31, 0xCu);
      sub_23BF4B2D4(v32, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v32, -1, -1);
      MEMORY[0x23EEC4DF0](v31, -1, -1);
    }

    v35 = v0[30];
    v34 = v0[31];
    v37 = v0[28];
    v36 = v0[29];
    v38 = v0[27];
    v52 = v0[26];
    v53 = v0[25];
    v39 = v0[14];

    v40 = *(v36 + 16);
    v40(v34, v39, v37);
    v40(v35, v34, v37);

    sub_23BFF9150();
    (*(v36 + 8))(v34, v37);
    v0[5] = sub_23BF4A264(&qword_27E1E2660);
    v0[6] = swift_getOpaqueTypeConformance2();
    sub_23BF4AD24(v0 + 2);
    sub_23BFF8F40();
    (*(v52 + 8))(v38, v53);
  }

  v41 = v0[5];
  v42 = sub_23BF4C484(v0 + 2, v41);
  v43 = *(v41 - 8);
  v44 = swift_task_alloc();
  (*(v43 + 16))(v44, v42, v41);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_23BF4AD24(v0 + 7);
  sub_23BFFA560();

  v45 = v0[10];
  v46 = v0[11];
  sub_23BF4C520((v0 + 7), v45);
  v47 = swift_task_alloc();
  v0[36] = v47;
  *v47 = v0;
  v47[1] = sub_23BFCB38C;
  v48 = v0[24];

  return MEMORY[0x282200310](v48, 0, 0, v0 + 12, v45, v46);
}

uint64_t sub_23BFCB38C()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_23BFCBC38;
  }

  else
  {
    v2 = sub_23BFCB4A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23BFCB4A0()
{
  v59 = v0;
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[21];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_23BF4A9A4((v0 + 7));
    if (qword_27E1DFDD0 != -1)
    {
      swift_once();
    }

    v4 = v0[15];
    v5 = sub_23BFF92B0();
    sub_23BF4A22C(v5, qword_27E1EB540);
    v6 = v4;
    v7 = sub_23BFF9290();
    v8 = sub_23BFFA630();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[15];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v9;
      *v11 = v9;
      v12 = v9;
      _os_log_impl(&dword_23BF0C000, v7, v8, "streamAssetsInShuffle: finished streaming assets for shuffle: %@", v10, 0xCu);
      sub_23BF4B2D4(v11, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v11, -1, -1);
      MEMORY[0x23EEC4DF0](v10, -1, -1);
    }

    v13 = v0[18];

    v13();
    sub_23BF4A9A4((v0 + 2));
    goto LABEL_14;
  }

  (*(v3 + 32))(v0[23], v1, v2);
  if (qword_27E1DFDD0 != -1)
  {
    swift_once();
  }

  v14 = v0[22];
  v15 = v0[23];
  v16 = v0[20];
  v17 = v0[21];
  v18 = v0[15];
  v19 = sub_23BFF92B0();
  sub_23BF4A22C(v19, qword_27E1EB540);
  (*(v17 + 16))(v14, v15, v16);
  v20 = v18;
  v21 = sub_23BFF9290();
  v22 = sub_23BFFA630();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v0[31];
    v24 = v0[29];
    v25 = v0[21];
    v53 = v0[22];
    v54 = v0[28];
    v56 = v0[20];
    v26 = v0[15];
    v27 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = v57;
    *v27 = 138412546;
    *(v27 + 4) = v26;
    *v55 = v26;
    *(v27 + 12) = 2080;
    v28 = v26;
    sub_23BFF8F90();
    sub_23BFD460C(&qword_27E1E2668, MEMORY[0x277CC95F0]);
    v29 = sub_23BFFAC70();
    v31 = v30;
    (*(v24 + 8))(v23, v54);
    v32 = *(v25 + 8);
    v32(v53, v56);
    v33 = sub_23BF62294(v29, v31, &v58);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_23BF0C000, v21, v22, "streamAssetsInShuffle: received asset from daemon for shuffle: %@, identifier: %s", v27, 0x16u);
    sub_23BF4B2D4(v55, &qword_27E1E0B50);
    MEMORY[0x23EEC4DF0](v55, -1, -1);
    sub_23BF4A9A4(v57);
    MEMORY[0x23EEC4DF0](v57, -1, -1);
    MEMORY[0x23EEC4DF0](v27, -1, -1);
  }

  else
  {
    v35 = v0[21];
    v34 = v0[22];
    v36 = v0[20];

    v32 = *(v35 + 8);
    v32(v34, v36);
  }

  v37 = v0[37];
  v38 = sub_23BFD05EC(v0[23]);
  if (v37)
  {
    v32(v0[23], v0[20]);
    sub_23BF4A9A4((v0 + 2));
    sub_23BF4A9A4((v0 + 7));
    v39 = v0[16];
    v40 = v37;
    v39(0, v37);

LABEL_14:

    v41 = v0[1];

    return v41();
  }

  v43 = v0[16];
  if (v38)
  {
    v44 = v38;
    sub_23BF4A264(&qword_27E1E05E0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_23C001BA0;
    *(v45 + 32) = v44;
    v46 = v44;
    v43(v45, 0);
  }

  else
  {
    sub_23BFD333C();
    v47 = swift_allocError();
    *v48 = 4;
    v43(0, v47);
  }

  v32(v0[23], v0[20]);
  v49 = v0[10];
  v50 = v0[11];
  sub_23BF4C520((v0 + 7), v49);
  v51 = swift_task_alloc();
  v0[36] = v51;
  *v51 = v0;
  v51[1] = sub_23BFCB38C;
  v52 = v0[24];

  return MEMORY[0x282200310](v52, 0, 0, v0 + 12, v49, v50);
}