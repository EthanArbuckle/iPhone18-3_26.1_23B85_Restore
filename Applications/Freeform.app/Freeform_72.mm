uint64_t sub_100A42510(uint64_t a1)
{
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  result = __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 48);
    v8 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride);
    v7 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 16);
    v68 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 32);
    v69 = v6;
    v66 = v8;
    v67 = v7;
    v9 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 112);
    v11 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 64);
    v10 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 80);
    v72 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 96);
    v73 = v9;
    v70 = v11;
    v71 = v10;
    v12 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 176);
    v14 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 128);
    v13 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 144);
    v76 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 160);
    v77 = v12;
    v74 = v14;
    v75 = v13;
    v16 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 208);
    v15 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 224);
    v17 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 192);
    v81 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 240);
    v79 = v16;
    v80 = v15;
    v78 = v17;
    memmove(v82, (a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride), 0xF8uLL);
    result = sub_100695050(v82);
    if (result != 1)
    {
      v36 = v66;
      v37 = v67;
      v34 = DWORD1(v67);
      v33 = BYTE9(v67);
      v32 = BYTE10(v67);
      v30 = v68;
      v31 = BYTE8(v68);
      v28 = v69;
      v29 = BYTE8(v69);
      v26 = v77;
      v27 = BYTE8(v77);
      v24 = v78;
      v25 = BYTE8(v78);
      v22 = v79;
      v23 = BYTE8(v79);
      v20 = v80;
      v19 = v81;
      v21 = BYTE8(v80);
      v35 = BYTE8(v67);
      v63 = v74;
      v64 = v75;
      v65 = v76;
      v59 = v70;
      v60 = v71;
      v39 = v72;
      v38 = v73;
      goto LABEL_7;
    }

    v18 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
    if (!v18)
    {
      __break(1u);
      return result;
    }

    (*(*v18 + 896))();
    sub_1005B981C(&unk_101A095A0);
    CRRegister.wrappedValue.getter();
    sub_100A47694(v5, type metadata accessor for CRLWPShapeItemCRDTData);
    v55 = v41[12];
    v56 = v41[13];
    v57 = v41[14];
    v58 = v42;
    v51 = v41[8];
    v52 = v41[9];
    v53 = v41[10];
    v54 = v41[11];
    v47 = v41[4];
    v48 = v41[5];
    v49 = v41[6];
    v50 = v41[7];
    v43 = v41[0];
    v44 = v41[1];
    v45 = v41[2];
    v46 = v41[3];
    result = sub_100695050(&v43);
    if (result != 1)
    {
      v19 = v58;
      v20 = v57;
      v21 = BYTE8(v57);
      v22 = v56;
      v23 = BYTE8(v56);
      v24 = v55;
      v25 = BYTE8(v55);
      v26 = v54;
      v27 = BYTE8(v54);
      v28 = v46;
      v29 = BYTE8(v46);
      v30 = v45;
      v31 = BYTE8(v45);
      v32 = BYTE10(v44);
      v33 = BYTE9(v44);
      v34 = DWORD1(v44);
      v35 = BYTE8(v44);
      v36 = v43;
      v37 = v44;
      v63 = v51;
      v64 = v52;
      v65 = v53;
      v59 = v47;
      v60 = v48;
      v39 = v49;
      v38 = v50;
LABEL_7:
      v61 = v39;
      v62 = v38;
      v43 = v36;
      LOBYTE(v44) = v37;
      DWORD1(v44) = v34;
      BYTE8(v44) = v35 & 1;
      BYTE9(v44) = v33;
      BYTE10(v44) = v32;
      *&v45 = v30;
      BYTE8(v45) = v31;
      *&v46 = v28;
      BYTE8(v46) = v29;
      v51 = v63;
      v52 = v64;
      v53 = v65;
      v47 = v59;
      v48 = v60;
      v49 = v39;
      v50 = v38;
      *&v54 = v26;
      BYTE8(v54) = v27;
      *&v55 = v24;
      BYTE8(v55) = v25;
      *&v56 = v22;
      BYTE8(v56) = v23;
      *&v57 = v20;
      BYTE8(v57) = v21 & 1;
      v58 = v19;
      sub_10000BE14(&v66, v41, &unk_101A0D830);
      return sub_10081852C(&v43);
    }
  }

  return result;
}

uint64_t sub_100A42890(uint64_t a1)
{
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return a1 & 1;
  }

  v5 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 48);
  v7 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride);
  v6 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 16);
  v67 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 32);
  v68 = v5;
  v65 = v7;
  v66 = v6;
  v8 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 112);
  v10 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 64);
  v9 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 80);
  v71 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 96);
  v72 = v8;
  v69 = v10;
  v70 = v9;
  v11 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 176);
  v13 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 128);
  v12 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 144);
  v75 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 160);
  v76 = v11;
  v73 = v13;
  v74 = v12;
  v15 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 208);
  v14 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 224);
  v16 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 192);
  v80 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 240);
  v78 = v15;
  v79 = v14;
  v77 = v16;
  memmove(v81, (a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride), 0xF8uLL);
  result = sub_100695050(v81);
  if (result != 1)
  {
    v35 = v65;
    v36 = v66;
    v33 = DWORD1(v66);
    LODWORD(a1) = BYTE9(v66);
    v32 = BYTE10(v66);
    v30 = v67;
    v31 = BYTE8(v67);
    v28 = v68;
    v29 = BYTE8(v68);
    v26 = v76;
    v27 = BYTE8(v76);
    v24 = v77;
    v25 = BYTE8(v77);
    v22 = v78;
    v23 = BYTE8(v78);
    v20 = v79;
    v19 = v80;
    v21 = BYTE8(v79);
    v34 = BYTE8(v66);
    v62 = v73;
    v63 = v74;
    v64 = v75;
    v58 = v69;
    v59 = v70;
    v38 = v71;
    v37 = v72;
    goto LABEL_7;
  }

  v18 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v18)
  {
    (*(*v18 + 896))();
    sub_1005B981C(&unk_101A095A0);
    CRRegister.wrappedValue.getter();
    sub_100A47694(v4, type metadata accessor for CRLWPShapeItemCRDTData);
    v54 = v40[12];
    v55 = v40[13];
    v56 = v40[14];
    v57 = v41;
    v50 = v40[8];
    v51 = v40[9];
    v52 = v40[10];
    v53 = v40[11];
    v46 = v40[4];
    v47 = v40[5];
    v48 = v40[6];
    v49 = v40[7];
    v42 = v40[0];
    v43 = v40[1];
    v44 = v40[2];
    v45 = v40[3];
    if (sub_100695050(&v42) == 1)
    {
      goto LABEL_8;
    }

    v19 = v57;
    v20 = v56;
    v21 = BYTE8(v56);
    v22 = v55;
    v23 = BYTE8(v55);
    v24 = v54;
    v25 = BYTE8(v54);
    v26 = v53;
    v27 = BYTE8(v53);
    v28 = v45;
    v29 = BYTE8(v45);
    v30 = v44;
    v31 = BYTE8(v44);
    v32 = BYTE10(v43);
    LODWORD(a1) = BYTE9(v43);
    v33 = DWORD1(v43);
    v34 = BYTE8(v43);
    v35 = v42;
    v36 = v43;
    v62 = v50;
    v63 = v51;
    v64 = v52;
    v58 = v46;
    v59 = v47;
    v38 = v48;
    v37 = v49;
LABEL_7:
    v60 = v38;
    v61 = v37;
    v42 = v35;
    LOBYTE(v43) = v36;
    DWORD1(v43) = v33;
    BYTE8(v43) = v34 & 1;
    BYTE9(v43) = a1;
    BYTE10(v43) = v32;
    *&v44 = v30;
    BYTE8(v44) = v31;
    *&v45 = v28;
    BYTE8(v45) = v29;
    v50 = v62;
    v51 = v63;
    v52 = v64;
    v46 = v58;
    v47 = v59;
    v48 = v38;
    v49 = v37;
    *&v53 = v26;
    BYTE8(v53) = v27;
    *&v54 = v24;
    BYTE8(v54) = v25;
    *&v55 = v22;
    BYTE8(v55) = v23;
    *&v56 = v20;
    BYTE8(v56) = v21 & 1;
    v57 = v19;
    sub_10000BE14(&v65, v40, &unk_101A0D830);
    sub_10081852C(&v42);
    if (a1 != 2)
    {
      return a1 & 1;
    }

LABEL_8:
    LOBYTE(a1) = 0;
    return a1 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100A42C08(uint64_t a1)
{
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return a1 & 1;
  }

  v5 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 48);
  v7 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride);
  v6 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 16);
  v67 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 32);
  v68 = v5;
  v65 = v7;
  v66 = v6;
  v8 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 112);
  v10 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 64);
  v9 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 80);
  v71 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 96);
  v72 = v8;
  v69 = v10;
  v70 = v9;
  v11 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 176);
  v13 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 128);
  v12 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 144);
  v75 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 160);
  v76 = v11;
  v73 = v13;
  v74 = v12;
  v15 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 208);
  v14 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 224);
  v16 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 192);
  v80 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 240);
  v78 = v15;
  v79 = v14;
  v77 = v16;
  memmove(v81, (a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride), 0xF8uLL);
  result = sub_100695050(v81);
  if (result != 1)
  {
    v35 = v65;
    v36 = v66;
    v33 = DWORD1(v66);
    v32 = BYTE9(v66);
    LODWORD(a1) = BYTE10(v66);
    v30 = v67;
    v31 = BYTE8(v67);
    v28 = v68;
    v29 = BYTE8(v68);
    v26 = v76;
    v27 = BYTE8(v76);
    v24 = v77;
    v25 = BYTE8(v77);
    v22 = v78;
    v23 = BYTE8(v78);
    v20 = v79;
    v19 = v80;
    v21 = BYTE8(v79);
    v34 = BYTE8(v66);
    v62 = v73;
    v63 = v74;
    v64 = v75;
    v58 = v69;
    v59 = v70;
    v38 = v71;
    v37 = v72;
    goto LABEL_7;
  }

  v18 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v18)
  {
    (*(*v18 + 896))();
    sub_1005B981C(&unk_101A095A0);
    CRRegister.wrappedValue.getter();
    sub_100A47694(v4, type metadata accessor for CRLWPShapeItemCRDTData);
    v54 = v40[12];
    v55 = v40[13];
    v56 = v40[14];
    v57 = v41;
    v50 = v40[8];
    v51 = v40[9];
    v52 = v40[10];
    v53 = v40[11];
    v46 = v40[4];
    v47 = v40[5];
    v48 = v40[6];
    v49 = v40[7];
    v42 = v40[0];
    v43 = v40[1];
    v44 = v40[2];
    v45 = v40[3];
    if (sub_100695050(&v42) == 1)
    {
      goto LABEL_8;
    }

    v19 = v57;
    v20 = v56;
    v21 = BYTE8(v56);
    v22 = v55;
    v23 = BYTE8(v55);
    v24 = v54;
    v25 = BYTE8(v54);
    v26 = v53;
    v27 = BYTE8(v53);
    v28 = v45;
    v29 = BYTE8(v45);
    v30 = v44;
    v31 = BYTE8(v44);
    LODWORD(a1) = BYTE10(v43);
    v32 = BYTE9(v43);
    v33 = DWORD1(v43);
    v34 = BYTE8(v43);
    v35 = v42;
    v36 = v43;
    v62 = v50;
    v63 = v51;
    v64 = v52;
    v58 = v46;
    v59 = v47;
    v38 = v48;
    v37 = v49;
LABEL_7:
    v60 = v38;
    v61 = v37;
    v42 = v35;
    LOBYTE(v43) = v36;
    DWORD1(v43) = v33;
    BYTE8(v43) = v34 & 1;
    BYTE9(v43) = v32;
    BYTE10(v43) = a1;
    *&v44 = v30;
    BYTE8(v44) = v31;
    *&v45 = v28;
    BYTE8(v45) = v29;
    v50 = v62;
    v51 = v63;
    v52 = v64;
    v46 = v58;
    v47 = v59;
    v48 = v38;
    v49 = v37;
    *&v53 = v26;
    BYTE8(v53) = v27;
    *&v54 = v24;
    BYTE8(v54) = v25;
    *&v55 = v22;
    BYTE8(v55) = v23;
    *&v56 = v20;
    BYTE8(v56) = v21 & 1;
    v57 = v19;
    sub_10000BE14(&v65, v40, &unk_101A0D830);
    sub_10081852C(&v42);
    if (a1 != 2)
    {
      return a1 & 1;
    }

LABEL_8:
    LOBYTE(a1) = 0;
    return a1 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100A42F80(uint64_t a1)
{
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v5 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 48);
  v7 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride);
  v6 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 16);
  v68 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 32);
  v69 = v5;
  v66 = v7;
  v67 = v6;
  v8 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 112);
  v10 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 64);
  v9 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 80);
  v72 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 96);
  v73 = v8;
  v70 = v10;
  v71 = v9;
  v11 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 176);
  v13 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 128);
  v12 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 144);
  v76 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 160);
  v77 = v11;
  v74 = v13;
  v75 = v12;
  v15 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 208);
  v14 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 224);
  v16 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 192);
  v81 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 240);
  v79 = v15;
  v80 = v14;
  v78 = v16;
  memmove(v82, (a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride), 0xF8uLL);
  result = sub_100695050(v82);
  if (result == 1)
  {
    v18 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
    if (!v18)
    {
      __break(1u);
      return result;
    }

    (*(*v18 + 896))();
    sub_1005B981C(&unk_101A095A0);
    CRRegister.wrappedValue.getter();
    sub_100A47694(v4, type metadata accessor for CRLWPShapeItemCRDTData);
    v55 = v41[12];
    v56 = v41[13];
    v57 = v41[14];
    v58 = v42;
    v51 = v41[8];
    v52 = v41[9];
    v53 = v41[10];
    v54 = v41[11];
    v47 = v41[4];
    v48 = v41[5];
    v49 = v41[6];
    v50 = v41[7];
    v43 = v41[0];
    v44 = v41[1];
    v45 = v41[2];
    v46 = v41[3];
    if (sub_100695050(&v43) == 1)
    {
      return 0;
    }

    v19 = v58;
    v20 = v57;
    v21 = BYTE8(v57);
    v22 = v56;
    v23 = BYTE8(v56);
    v24 = v55;
    v25 = BYTE8(v55);
    v26 = v54;
    v27 = BYTE8(v54);
    v28 = v46;
    v29 = BYTE8(v46);
    v30 = v45;
    v31 = BYTE8(v45);
    v32 = BYTE10(v44);
    v33 = BYTE9(v44);
    v34 = DWORD1(v44);
    v35 = BYTE8(v44);
    v36 = v43;
    v37 = v44;
    v63 = v51;
    v64 = v52;
    v65 = v53;
    v59 = v47;
    v60 = v48;
    v39 = v49;
    v38 = v50;
  }

  else
  {
    v36 = v66;
    v37 = v67;
    v34 = DWORD1(v67);
    v33 = BYTE9(v67);
    v32 = BYTE10(v67);
    v30 = v68;
    v31 = BYTE8(v68);
    v28 = v69;
    v29 = BYTE8(v69);
    v26 = v77;
    v27 = BYTE8(v77);
    v24 = v78;
    v25 = BYTE8(v78);
    v22 = v79;
    v23 = BYTE8(v79);
    v20 = v80;
    v19 = v81;
    v21 = BYTE8(v80);
    v35 = BYTE8(v67);
    v63 = v74;
    v64 = v75;
    v65 = v76;
    v59 = v70;
    v60 = v71;
    v39 = v72;
    v38 = v73;
  }

  v61 = v39;
  v62 = v38;
  v43 = v36;
  LOBYTE(v44) = v37;
  DWORD1(v44) = v34;
  BYTE8(v44) = v35 & 1;
  BYTE9(v44) = v33;
  BYTE10(v44) = v32;
  *&v45 = v30;
  BYTE8(v45) = v31;
  *&v46 = v28;
  BYTE8(v46) = v29;
  v51 = v63;
  v52 = v64;
  v53 = v65;
  v47 = v59;
  v48 = v60;
  v49 = v39;
  v50 = v38;
  *&v54 = v26;
  BYTE8(v54) = v27;
  *&v55 = v24;
  BYTE8(v55) = v25;
  *&v56 = v22;
  BYTE8(v56) = v23;
  *&v57 = v20;
  BYTE8(v57) = v21 & 1;
  v58 = v19;
  sub_10000BE14(&v66, v41, &unk_101A0D830);
  sub_10081852C(&v43);
  if (v31 == 255)
  {
    return 0;
  }

  if (v31)
  {
    return 0;
  }

  else
  {
    return v30;
  }
}

uint64_t sub_100A43300(uint64_t a1)
{
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v5 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 48);
  v7 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride);
  v6 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 16);
  v68 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 32);
  v69 = v5;
  v66 = v7;
  v67 = v6;
  v8 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 112);
  v10 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 64);
  v9 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 80);
  v72 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 96);
  v73 = v8;
  v70 = v10;
  v71 = v9;
  v11 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 176);
  v13 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 128);
  v12 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 144);
  v76 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 160);
  v77 = v11;
  v74 = v13;
  v75 = v12;
  v15 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 208);
  v14 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 224);
  v16 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 192);
  v81 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 240);
  v79 = v15;
  v80 = v14;
  v78 = v16;
  memmove(v82, (a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride), 0xF8uLL);
  result = sub_100695050(v82);
  if (result == 1)
  {
    v18 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
    if (!v18)
    {
      __break(1u);
      return result;
    }

    (*(*v18 + 896))();
    sub_1005B981C(&unk_101A095A0);
    CRRegister.wrappedValue.getter();
    sub_100A47694(v4, type metadata accessor for CRLWPShapeItemCRDTData);
    v55 = v41[12];
    v56 = v41[13];
    v57 = v41[14];
    v58 = v42;
    v51 = v41[8];
    v52 = v41[9];
    v53 = v41[10];
    v54 = v41[11];
    v47 = v41[4];
    v48 = v41[5];
    v49 = v41[6];
    v50 = v41[7];
    v43 = v41[0];
    v44 = v41[1];
    v45 = v41[2];
    v46 = v41[3];
    if (sub_100695050(&v43) == 1)
    {
      return 0;
    }

    v19 = v58;
    v20 = v57;
    v21 = BYTE8(v57);
    v22 = v56;
    v23 = BYTE8(v56);
    v24 = v55;
    v25 = BYTE8(v55);
    v26 = v54;
    v27 = BYTE8(v54);
    v28 = v46;
    v29 = BYTE8(v46);
    v30 = v45;
    v31 = BYTE8(v45);
    v32 = BYTE10(v44);
    v33 = BYTE9(v44);
    v34 = DWORD1(v44);
    v35 = BYTE8(v44);
    v36 = v43;
    v37 = v44;
    v63 = v51;
    v64 = v52;
    v65 = v53;
    v59 = v47;
    v60 = v48;
    v39 = v49;
    v38 = v50;
  }

  else
  {
    v36 = v66;
    v37 = v67;
    v34 = DWORD1(v67);
    v33 = BYTE9(v67);
    v32 = BYTE10(v67);
    v30 = v68;
    v31 = BYTE8(v68);
    v28 = v69;
    v29 = BYTE8(v69);
    v26 = v77;
    v27 = BYTE8(v77);
    v24 = v78;
    v25 = BYTE8(v78);
    v22 = v79;
    v23 = BYTE8(v79);
    v20 = v80;
    v19 = v81;
    v21 = BYTE8(v80);
    v35 = BYTE8(v67);
    v63 = v74;
    v64 = v75;
    v65 = v76;
    v59 = v70;
    v60 = v71;
    v39 = v72;
    v38 = v73;
  }

  v61 = v39;
  v62 = v38;
  v43 = v36;
  LOBYTE(v44) = v37;
  DWORD1(v44) = v34;
  BYTE8(v44) = v35 & 1;
  BYTE9(v44) = v33;
  BYTE10(v44) = v32;
  *&v45 = v30;
  BYTE8(v45) = v31;
  *&v46 = v28;
  BYTE8(v46) = v29;
  v51 = v63;
  v52 = v64;
  v53 = v65;
  v47 = v59;
  v48 = v60;
  v49 = v39;
  v50 = v38;
  *&v54 = v26;
  BYTE8(v54) = v27;
  *&v55 = v24;
  BYTE8(v55) = v25;
  *&v56 = v22;
  BYTE8(v56) = v23;
  *&v57 = v20;
  BYTE8(v57) = v21 & 1;
  v58 = v19;
  sub_10000BE14(&v66, v41, &unk_101A0D830);
  sub_10081852C(&v43);
  if (v29 == 255)
  {
    return 0;
  }

  if (v29)
  {
    return 0;
  }

  else
  {
    return v28;
  }
}

id sub_100A43680(char *a1)
{
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
LABEL_15:
    v46 = [objc_opt_self() blackColor];

    return v46;
  }

  v5 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 48];
  v7 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride];
  v6 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 16];
  v104 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 32];
  v105 = v5;
  v102 = v7;
  v103 = v6;
  v8 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 112];
  v10 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 64];
  v9 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 80];
  v108 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 96];
  v109 = v8;
  v106 = v10;
  v107 = v9;
  v11 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 176];
  v13 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 128];
  v12 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 144];
  v112 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 160];
  v113 = v11;
  v110 = v13;
  v111 = v12;
  v15 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 208];
  v14 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 224];
  v16 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 192];
  v117 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 240];
  v115 = v15;
  v116 = v14;
  v114 = v16;
  memmove(v118, &a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride], 0xF8uLL);
  result = sub_100695050(v118);
  if (result == 1)
  {
    v18 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v18)
    {
      __break(1u);
      return result;
    }

    (*(*v18 + 896))();
    v19 = a1;
    sub_1005B981C(&unk_101A095A0);
    CRRegister.wrappedValue.getter();
    sub_100A47694(v4, type metadata accessor for CRLWPShapeItemCRDTData);
    v91 = v75;
    v92 = v76;
    v93 = v77;
    v94 = v78;
    v87 = v71;
    v88 = v72;
    v89 = v73;
    v90 = v74;
    v83 = v67;
    v84 = v68;
    v85 = v69;
    v86 = v70;
    v79 = v63;
    v80 = v64;
    v81 = v65;
    v82 = v66;
    if (sub_100695050(&v79) == 1)
    {

      goto LABEL_15;
    }

    v59 = a1;
    v26 = v94;
    v25 = v93;
    v27 = BYTE8(v93);
    v23 = v92;
    v24 = BYTE8(v92);
    v21 = v91;
    v22 = BYTE8(v91);
    v40 = v90;
    v37 = BYTE8(v90);
    v39 = v82;
    v36 = BYTE8(v82);
    v38 = v81;
    v35 = BYTE8(v81);
    v33 = BYTE10(v80);
    v34 = BYTE9(v80);
    v31 = DWORD1(v80);
    v28 = BYTE8(v80);
    v32 = v79;
    v30 = v80;
    v99 = v87;
    v100 = v88;
    v101 = v89;
    v95 = v83;
    v96 = v84;
    v97 = v85;
    v98 = v86;
  }

  else
  {
    v58 = v102;
    v56 = DWORD1(v103);
    v57 = v103;
    v54 = BYTE10(v103);
    v55 = BYTE9(v103);
    v53 = v104;
    v52 = BYTE8(v104);
    v51 = v105;
    v20 = a1;
    v48 = v113;
    v49 = BYTE8(v105);
    v50 = BYTE8(v113);
    v21 = v114;
    v22 = BYTE8(v114);
    v23 = v115;
    v24 = BYTE8(v115);
    v25 = v116;
    v26 = v117;
    v27 = BYTE8(v116);
    v28 = BYTE8(v103);
    v99 = v110;
    v100 = v111;
    v101 = v112;
    v95 = v106;
    v96 = v107;
    v97 = v108;
    v98 = v109;
    v59 = v20;
    v29 = v20;
    v31 = v56;
    v30 = v57;
    v32 = v58;
    v33 = v54;
    v34 = v55;
    v35 = v52;
    v36 = v49;
    v37 = v50;
    v38 = v53;
    v39 = v51;
    v40 = v48;
  }

  v79 = v32;
  LOBYTE(v80) = v30;
  DWORD1(v80) = v31;
  BYTE8(v80) = v28 & 1;
  BYTE9(v80) = v34;
  BYTE10(v80) = v33;
  *&v81 = v38;
  BYTE8(v81) = v35;
  *&v82 = v39;
  BYTE8(v82) = v36;
  v87 = v99;
  v88 = v100;
  v89 = v101;
  v83 = v95;
  v84 = v96;
  v85 = v97;
  v86 = v98;
  *&v90 = v40;
  BYTE8(v90) = v37;
  *&v91 = v21;
  BYTE8(v91) = v22;
  *&v92 = v23;
  BYTE8(v92) = v24;
  *&v93 = v25;
  BYTE8(v93) = v27 & 1;
  v94 = v26;
  sub_10000BE14(&v95, &v63, &qword_1019FFF80);
  sub_10000BE14(&v102, &v63, &unk_101A0D830);
  sub_10081852C(&v79);
  v62[2] = v98;
  v62[3] = v99;
  v62[4] = v100;
  v62[5] = v101;
  v61 = v95;
  v62[0] = v96;
  v62[1] = v97;
  if (!v101)
  {

    goto LABEL_15;
  }

  sub_100006370(0, &qword_101A00EB0);
  v65 = v98;
  v66 = v99;
  v67 = v100;
  *&v68 = v101;
  v63 = v96;
  v64 = v97;
  sub_10074A990(v62, &v60);
  v41 = sub_1008B0490(&v63);
  v42 = v59;
  if (BYTE8(v61))
  {
    if (qword_1019F2268 != -1)
    {
      swift_once();
    }

    v43 = static OS_os_log.persistence;
    v44 = static os_log_type_t.info.getter();
    sub_100005404(v43, &_mh_execute_header, v44, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
  }

  v45 = [objc_allocWithZone(CRLColorFill) initWithColor:v41];

  sub_10000CAAC(&v95, &qword_1019FFF80);
  return v45;
}

uint64_t sub_100A43BEC(uint64_t a1)
{
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 4;
  }

  v5 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 48);
  v7 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride);
  v6 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 16);
  v68 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 32);
  v69 = v5;
  v66 = v7;
  v67 = v6;
  v8 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 112);
  v10 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 64);
  v9 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 80);
  v72 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 96);
  v73 = v8;
  v70 = v10;
  v71 = v9;
  v11 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 176);
  v13 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 128);
  v12 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 144);
  v76 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 160);
  v77 = v11;
  v74 = v13;
  v75 = v12;
  v15 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 208);
  v14 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 224);
  v16 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 192);
  v81 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 240);
  v79 = v15;
  v80 = v14;
  v78 = v16;
  memmove(v82, (a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride), 0xF8uLL);
  result = sub_100695050(v82);
  if (result == 1)
  {
    v18 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
    if (!v18)
    {
      __break(1u);
      return result;
    }

    (*(*v18 + 896))();
    sub_1005B981C(&unk_101A095A0);
    CRRegister.wrappedValue.getter();
    sub_100A47694(v4, type metadata accessor for CRLWPShapeItemCRDTData);
    v55 = v41[12];
    v56 = v41[13];
    v57 = v41[14];
    v58 = v42;
    v51 = v41[8];
    v52 = v41[9];
    v53 = v41[10];
    v54 = v41[11];
    v47 = v41[4];
    v48 = v41[5];
    v49 = v41[6];
    v50 = v41[7];
    v43 = v41[0];
    v44 = v41[1];
    v45 = v41[2];
    v46 = v41[3];
    if (sub_100695050(&v43) == 1)
    {
      return 4;
    }

    v19 = v58;
    v20 = v57;
    v21 = BYTE8(v57);
    v22 = v56;
    v23 = BYTE8(v56);
    v24 = v55;
    v25 = BYTE8(v55);
    v26 = v54;
    v27 = BYTE8(v54);
    v28 = v46;
    v29 = BYTE8(v46);
    v30 = v45;
    v31 = BYTE8(v45);
    v32 = BYTE10(v44);
    v33 = BYTE9(v44);
    v34 = DWORD1(v44);
    v35 = BYTE8(v44);
    v36 = v43;
    v37 = v44;
    v63 = v51;
    v64 = v52;
    v65 = v53;
    v59 = v47;
    v60 = v48;
    v39 = v49;
    v38 = v50;
  }

  else
  {
    v36 = v66;
    v37 = v67;
    v34 = DWORD1(v67);
    v33 = BYTE9(v67);
    v32 = BYTE10(v67);
    v30 = v68;
    v31 = BYTE8(v68);
    v28 = v69;
    v29 = BYTE8(v69);
    v26 = v77;
    v27 = BYTE8(v77);
    v24 = v78;
    v25 = BYTE8(v78);
    v22 = v79;
    v23 = BYTE8(v79);
    v20 = v80;
    v19 = v81;
    v21 = BYTE8(v80);
    v35 = BYTE8(v67);
    v63 = v74;
    v64 = v75;
    v65 = v76;
    v59 = v70;
    v60 = v71;
    v39 = v72;
    v38 = v73;
  }

  v61 = v39;
  v62 = v38;
  v43 = v36;
  LOBYTE(v44) = v37;
  DWORD1(v44) = v34;
  BYTE8(v44) = v35 & 1;
  BYTE9(v44) = v33;
  BYTE10(v44) = v32;
  *&v45 = v30;
  BYTE8(v45) = v31;
  *&v46 = v28;
  BYTE8(v46) = v29;
  v51 = v63;
  v52 = v64;
  v53 = v65;
  v47 = v59;
  v48 = v60;
  v49 = v39;
  v50 = v38;
  *&v54 = v26;
  BYTE8(v54) = v27;
  *&v55 = v24;
  BYTE8(v55) = v25;
  *&v56 = v22;
  BYTE8(v56) = v23;
  *&v57 = v20;
  BYTE8(v57) = v21 & 1;
  v58 = v19;
  sub_10000BE14(&v66, v41, &unk_101A0D830);
  sub_10081852C(&v43);
  if (v27 == 255)
  {
    return 4;
  }

  if (v27)
  {
    return 4;
  }

  else
  {
    return v26;
  }
}

uint64_t sub_100A43F70(uint64_t a1)
{
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return -1;
  }

  v5 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 48);
  v7 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride);
  v6 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 16);
  v68 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 32);
  v69 = v5;
  v66 = v7;
  v67 = v6;
  v8 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 112);
  v10 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 64);
  v9 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 80);
  v72 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 96);
  v73 = v8;
  v70 = v10;
  v71 = v9;
  v11 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 176);
  v13 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 128);
  v12 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 144);
  v76 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 160);
  v77 = v11;
  v74 = v13;
  v75 = v12;
  v15 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 208);
  v14 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 224);
  v16 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 192);
  v81 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 240);
  v79 = v15;
  v80 = v14;
  v78 = v16;
  memmove(v82, (a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride), 0xF8uLL);
  result = sub_100695050(v82);
  if (result == 1)
  {
    v18 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
    if (!v18)
    {
      __break(1u);
      return result;
    }

    (*(*v18 + 896))();
    sub_1005B981C(&unk_101A095A0);
    CRRegister.wrappedValue.getter();
    sub_100A47694(v4, type metadata accessor for CRLWPShapeItemCRDTData);
    v55 = v41[12];
    v56 = v41[13];
    v57 = v41[14];
    v58 = v42;
    v51 = v41[8];
    v52 = v41[9];
    v53 = v41[10];
    v54 = v41[11];
    v47 = v41[4];
    v48 = v41[5];
    v49 = v41[6];
    v50 = v41[7];
    v43 = v41[0];
    v44 = v41[1];
    v45 = v41[2];
    v46 = v41[3];
    if (sub_100695050(&v43) == 1)
    {
      return -1;
    }

    v19 = v58;
    v20 = v57;
    v21 = BYTE8(v57);
    v22 = v56;
    v23 = BYTE8(v56);
    v24 = v55;
    v25 = BYTE8(v55);
    v26 = v54;
    v27 = BYTE8(v54);
    v28 = v46;
    v29 = BYTE8(v46);
    v30 = v45;
    v31 = BYTE8(v45);
    v32 = BYTE10(v44);
    v33 = BYTE9(v44);
    v34 = DWORD1(v44);
    v35 = BYTE8(v44);
    v36 = v43;
    v37 = v44;
    v63 = v51;
    v64 = v52;
    v65 = v53;
    v59 = v47;
    v60 = v48;
    v39 = v49;
    v38 = v50;
  }

  else
  {
    v36 = v66;
    v37 = v67;
    v34 = DWORD1(v67);
    v33 = BYTE9(v67);
    v32 = BYTE10(v67);
    v30 = v68;
    v31 = BYTE8(v68);
    v28 = v69;
    v29 = BYTE8(v69);
    v26 = v77;
    v27 = BYTE8(v77);
    v24 = v78;
    v25 = BYTE8(v78);
    v22 = v79;
    v23 = BYTE8(v79);
    v20 = v80;
    v19 = v81;
    v21 = BYTE8(v80);
    v35 = BYTE8(v67);
    v63 = v74;
    v64 = v75;
    v65 = v76;
    v59 = v70;
    v60 = v71;
    v39 = v72;
    v38 = v73;
  }

  v61 = v39;
  v62 = v38;
  v43 = v36;
  LOBYTE(v44) = v37;
  DWORD1(v44) = v34;
  BYTE8(v44) = v35 & 1;
  BYTE9(v44) = v33;
  BYTE10(v44) = v32;
  *&v45 = v30;
  BYTE8(v45) = v31;
  *&v46 = v28;
  BYTE8(v46) = v29;
  v51 = v63;
  v52 = v64;
  v53 = v65;
  v47 = v59;
  v48 = v60;
  v49 = v39;
  v50 = v38;
  *&v54 = v26;
  BYTE8(v54) = v27;
  *&v55 = v24;
  BYTE8(v55) = v25;
  *&v56 = v22;
  BYTE8(v56) = v23;
  *&v57 = v20;
  BYTE8(v57) = v21 & 1;
  v58 = v19;
  sub_10000BE14(&v66, v41, &unk_101A0D830);
  sub_10081852C(&v43);
  if (v25 == 255)
  {
    return -1;
  }

  if (v25)
  {
    return -1;
  }

  else
  {
    return v24;
  }
}

void *sub_100A442F0()
{
  swift_getKeyPath();
  sub_1005B981C(qword_101A0CF60);
  sub_100824758();
  CRAttributedString.Attributes.subscript.getter();

  if (BYTE8(v49) == 255)
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  else
  {
    v0 = BYTE8(v49) & 1;
    BYTE8(v49) &= 1u;
    *&v48[0] = 0;
    BYTE8(v48[0]) = 0;
    type metadata accessor for CRLWPUnderline(0);
    sub_100A40278(&unk_101A0DA60, 255, type metadata accessor for CRLWPUnderline);
    v1 = _swiftEmptyDictionarySingleton;
    if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
    {
      BYTE8(v49) = v0;
      sub_1005B981C(&unk_1019FFFB0);
      CRExtensible.rawValue.getter();
      v2 = [objc_allocWithZone(NSNumber) initWithInteger:*&v48[0]];
      *(&v50 + 1) = sub_100006370(0, &qword_1019FF3E0);
      *&v49 = v2;
      sub_10000BF3C(&v49, v48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v41 = _swiftEmptyDictionarySingleton;
      sub_100A9B978(v48, NSUnderlineStyleAttributeName, isUniquelyReferenced_nonNull_native);
      v1 = _swiftEmptyDictionarySingleton;
    }
  }

  swift_getKeyPath();
  sub_1009622D0();
  CRAttributedString.Attributes.subscript.getter();

  if (BYTE8(v49) != 255)
  {
    v4 = v49;
    v5 = BYTE8(v49) & 1;
    BYTE8(v49) &= 1u;
    *&v48[0] = 0;
    BYTE8(v48[0]) = 0;
    type metadata accessor for CRLWPStrikethru(0);
    sub_100A40278(&unk_101A0DA50, 255, type metadata accessor for CRLWPStrikethru);
    if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
    {
      *&v49 = v4;
      BYTE8(v49) = v5;
      sub_1005B981C(&unk_1019FFFA0);
      CRExtensible.rawValue.getter();
      v6 = [objc_allocWithZone(NSNumber) initWithInteger:*&v48[0]];
      *(&v50 + 1) = sub_100006370(0, &qword_1019FF3E0);
      *&v49 = v6;
      sub_10000BF3C(&v49, v48);
      v7 = swift_isUniquelyReferenced_nonNull_native();
      *&v41 = _swiftEmptyDictionarySingleton;
      sub_100A9B978(v48, NSStrikethroughStyleAttributeName, v7);
    }
  }

  swift_getKeyPath();
  sub_1008248F0();
  CRAttributedString.Attributes.subscript.getter();

  v48[4] = v45;
  v48[5] = v46;
  v48[0] = v41;
  v48[1] = v42;
  v48[2] = v43;
  v48[3] = v44;
  v48[6] = v47;
  v49 = v41;
  v50 = v42;
  v51 = v43;
  v52 = v44;
  v53 = v45;
  v54 = v46;
  v55 = v47;
  if (v47)
  {
    sub_100006370(0, &qword_101A00EB0);
    v43 = v52;
    v44 = v53;
    v45 = v54;
    *&v46 = v55;
    v41 = v50;
    v42 = v51;
    sub_10074A990(&v50, &v35);
    v8 = sub_1008B0490(&v41);
    if (BYTE8(v49) == 1)
    {
      if (qword_1019F2268 != -1)
      {
        swift_once();
      }

      v9 = static OS_os_log.persistence;
      v10 = static os_log_type_t.info.getter();
      sub_100005404(v9, &_mh_execute_header, v10, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
    }

    v11 = [objc_allocWithZone(CRLColorFill) initWithColor:v8];

    sub_10000CAAC(v48, &qword_1019FFF80);
    v12 = [v11 UIColor];
    v37 = sub_100006370(0, &qword_101A11110);
    *&v35 = v12;
    sub_10000BF3C(&v35, v39);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v38 = _swiftEmptyDictionarySingleton;
    sub_100A9B978(v39, NSForegroundColorAttributeName, v13);

    v1 = v38;
  }

  swift_getKeyPath();
  sub_1009623E4();
  CRAttributedString.Attributes.subscript.getter();

  v14 = *(&v35 + 1);
  v15 = v35;
  v16 = v36;
  swift_getKeyPath();
  sub_1008246B0();
  CRAttributedString.Attributes.subscript.getter();

  v17 = *v39;
  v18 = BYTE4(v39[0]);
  swift_getKeyPath();
  sub_1008244FC();
  CRAttributedString.Attributes.subscript.getter();

  v19 = v38;
  swift_getKeyPath();
  sub_100824608();
  CRAttributedString.Attributes.subscript.getter();

  v20 = v40;
  if (v16 != 255 || ((LOBYTE(v16) = 0, v19 == 2) ? (v33 = v18) : (v33 = 0), (v14 = 0xE900000000000061, v15 = 0x63697465766C6548, v33 != 1) || v40 != 2))
  {
    if (v18)
    {
      v21 = 18.0;
    }

    else
    {
      v21 = v17;
    }

    v22 = [objc_opt_self() sharedInstance];
    *&v35 = v15;
    *(&v35 + 1) = v14;
    v36 = v16 & 1;
    sub_1005B981C(&qword_1019FFFC8);
    CRExtensible.rawValue.getter();
    v23 = String._bridgeToObjectiveC()();

    v24 = [v22 fontForPostscriptName:v23];

    v25 = [v24 platformFont];
    if (v16)
    {
      sub_1009623C0(v15, v14, 1);
      v26 = 0;
    }

    else
    {
      sub_1009623C0(v15, v14, 0);
      v26 = 0;
      if (v14 >= 9)
      {
        if (v19)
        {
          v27 = 2;
        }

        else
        {
          v27 = 0;
        }

        v26 = v27 & 0xFFFFFFFE | v20 & 1;
      }
    }

    CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(v25, v21, 0, v26, v26);
    if (CopyWithSymbolicTraits)
    {
      v29 = CopyWithSymbolicTraits;
      type metadata accessor for CTFont(0);
      v37 = v30;
      *&v35 = v29;
      sub_10000BF3C(&v35, v39);
      v31 = v29;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v38 = v1;
      sub_100A9B978(v39, NSFontAttributeName, v32);

      return v38;
    }

    else
    {
    }
  }

  return v1;
}

uint64_t sub_100A44ADC(uint64_t a1, int64_t a2, char a3)
{
  if (a3)
  {
    return 0x63697465766C6548;
  }

  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        return 0xD000000000000029;
      }

      if (a2 != 1)
      {
LABEL_22:
        sub_100962394(a1, a2);
        return a1;
      }

      return 0xD000000000000023;
    }

    if (a2 == 2)
    {
      return 0xD000000000000024;
    }

    else
    {
      return 0xD000000000000026;
    }
  }

  else
  {
    if (a2 > 5)
    {
      if (a2 != 6)
      {
        if (a2 == 7)
        {
          return 0xD000000000000024;
        }

        if (a2 == 8)
        {
          return 0xD000000000000024;
        }

        goto LABEL_22;
      }

      return 0xD000000000000023;
    }

    if (a2 == 4)
    {
      return 0xD000000000000025;
    }

    else
    {
      return 0xD000000000000027;
    }
  }
}

id sub_100A44C7C(uint64_t a1)
{
  v7 = sub_10082489C();
  v8 = a1;
  swift_getKeyPath();

  sub_1005B981C(qword_101A0CF60);
  sub_1008248F0();
  CRAttributedString.Attributes.subscript.getter();

  if (v24)
  {
    v10[4] = v22;
    v10[5] = v23;
    v10[0] = v18;
    v10[1] = v19;
    v10[2] = v20;
    v10[3] = v21;
    v12 = v19;
    v13 = v20;
    v10[6] = v24;
    v11 = v18;
    v16 = v23;
    v17 = v24;
    v14 = v21;
    v15 = v22;
    sub_100006370(0, &qword_101A00EB0);
    v25[2] = v21;
    v25[3] = v22;
    v25[4] = v23;
    v26 = v24;
    v25[0] = v19;
    v25[1] = v20;
    sub_10074A990(&v12, v9);
    v2 = sub_1008B0490(v25);
    if (BYTE8(v11))
    {
      if (qword_1019F2268 != -1)
      {
        swift_once();
      }

      v3 = static OS_os_log.persistence;
      v4 = static os_log_type_t.info.getter();
      sub_100005404(v3, &_mh_execute_header, v4, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
    }

    v5 = [objc_allocWithZone(CRLColorFill) initWithColor:{v2, &type metadata for CRLWPCharacterFillAttribute, v7, v8}];

    sub_10000CAAC(v10, &qword_1019FFF80);
  }

  else
  {
    v15 = v22;
    v16 = v23;
    v17 = v24;
    v11 = v18;
    v12 = v19;
    v13 = v20;
    v14 = v21;
    sub_10000CAAC(&v11, &qword_1019FFF80);
    return 0;
  }

  return v5;
}

_BYTE *sub_100A44E98()
{
  v0 = type metadata accessor for CRLWPCharacterStyle();
  v1 = &selRef_ignoreUrl_;
  v2 = [objc_allocWithZone(v0) init];
  swift_getKeyPath();
  sub_1008244A8();
  swift_getKeyPath();

  sub_1005B981C(qword_101A0CF60);
  sub_1008244FC();
  CRAttributedString.Attributes.subscript.getter();

  v2[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_bold] = v23;
  swift_getKeyPath();
  sub_1008245B4();
  swift_getKeyPath();
  sub_100824608();

  CRAttributedString.Attributes.subscript.getter();

  v2[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_italic] = v23;
  KeyPath = swift_getKeyPath();
  v22 = sub_100824704();
  swift_getKeyPath();
  sub_100824758();

  CRAttributedString.Attributes.subscript.getter();

  if (v24 == 255)
  {
    v4 = 0;
  }

  else
  {
    v4 = v23;
    if (v24)
    {
      v4 = 0;
    }
  }

  v5 = &v2[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline];
  *v5 = v4;
  v5[8] = v24 == 255;
  v6 = swift_getKeyPath();
  __chkstk_darwin(v6);
  sub_10096227C();
  swift_getKeyPath();
  sub_1009622D0();

  CRAttributedString.Attributes.subscript.getter();

  if (v24 == 255)
  {
    v7 = 0;
  }

  else
  {
    v7 = v23;
    if (v24)
    {
      v7 = 0;
    }
  }

  v8 = &v2[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough];
  *v8 = v7;
  v8[8] = v24 == 255;
  v9 = swift_getKeyPath();
  __chkstk_darwin(v9);
  sub_100962324();
  swift_getKeyPath();
  sub_1009623E4();

  CRAttributedString.Attributes.subscript.getter();

  if (v25 == 255)
  {

    v10 = 0;
    v12 = 0;
  }

  else
  {
    v10 = sub_100A44ADC(v23, v24, v25 & 1);
    v12 = v11;

    v1 = &selRef_ignoreUrl_;
    sub_1009623A8(v23, v24, v25);
  }

  v13 = &v2[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName];
  *v13 = v10;
  v13[1] = v12;

  v14 = swift_getKeyPath();
  __chkstk_darwin(v14);
  sub_10082465C();
  swift_getKeyPath();
  sub_1008246B0();

  CRAttributedString.Attributes.subscript.getter();

  v15 = &v2[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize];
  *v15 = v23;
  v15[4] = BYTE4(v23);
  v16 = swift_getKeyPath();
  v17 = sub_100A44C7C(v16);

  v18 = *&v2[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill];
  *&v2[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill] = v17;

  v19 = [objc_allocWithZone(v0) v1[165]];
  v20 = sub_100D66A7C(v2, v19);

  if (v20)
  {

    return 0;
  }

  return v2;
}

uint64_t sub_100A453B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (*(a3 + 16) <= a2)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v5 = result;
  if (a2 < result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v6 = *(a3 + 56 * a2 + 64);

    v7 = a3 + 24;
    v8 = v5;
    v9 = v5;
LABEL_6:
    v10 = (v7 + 56 * v8);
    while (1)
    {
      if (a2 == v9)
      {

        v19 = _swiftEmptyArrayStorage[2];

        return v19 == 0;
      }

      if (v8 < v5 || v9 >= a2)
      {
        break;
      }

      v12 = *(v10 + 4);
      v11 = *(v10 + 5);
      ++v9;
      v10 += 56;
      if (v11 < v6 || v12 == 0)
      {
        v21 = *(v10 - 5);
        v22 = *(v10 - 6);
        v14 = *(v10 - 4);
        v24 = *(v10 - 1);
        v25 = v7;
        v23 = *v10;
        v15 = v12;
        v20 = v14;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100776784(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          result = sub_100776784((v16 > 1), v17 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v17 + 1;
        v18 = &_swiftEmptyArrayStorage[7 * v17];
        v18[4] = v22;
        v18[5] = v21;
        v18[6] = v20;
        v18[7] = v12;
        v18[8] = v11;
        v18[9] = v24;
        *(v18 + 80) = v23;
        v8 = v9;
        v7 = v25;
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_100A45570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = _swiftEmptyArrayStorage;
    v3 = (a1 + 80);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v6 = *(v3 - 6);
      v5 = *(v3 - 5);
      v8 = *(v3 - 4);
      v7 = *(v3 - 3);
      v27 = *(v3 - 2);
      v28 = *(v3 - 1);
      v29 = *v3;
      if (v7 && *(v7 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType))
      {
        v9 = v7;
        v10 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_100B36524(0, *(v2 + 2) + 1, 1, v2);
        }

        v12 = *(v2 + 2);
        v11 = *(v2 + 3);
        if (v12 >= v11 >> 1)
        {
          v2 = sub_100B36524((v11 > 1), v12 + 1, 1, v2);
        }

        *(v2 + 2) = v12 + 1;
        v13 = &v2[56 * v12];
        *(v13 + 4) = v6;
        *(v13 + 5) = v5;
        *(v13 + 6) = v10;
        *(v13 + 7) = v7;
        *(v13 + 8) = v27;
        *(v13 + 9) = v28;
        v13[80] = v29;
      }

      else
      {
        v14 = *(v2 + 2);
        v26 = v7;
        v15 = v8;
        if (v14)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_100B36540(0, v4[2] + 1, 1, v4);
          }

          v17 = v4[2];
          v16 = v4[3];
          if (v17 >= v16 >> 1)
          {
            v4 = sub_100B36540((v16 > 1), v17 + 1, 1, v4);
          }

          v4[2] = v17 + 1;
          v4[v17 + 4] = v2;

          v2 = _swiftEmptyArrayStorage;
        }

        sub_1005B981C(&qword_101A0DA48);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_10146C6B0;
        *(v18 + 32) = v6;
        *(v18 + 40) = v5;
        *(v18 + 48) = v15;
        *(v18 + 56) = v7;
        *(v18 + 64) = v27;
        *(v18 + 72) = v28;
        *(v18 + 80) = v29;
        v19 = v26;
        v20 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_100B36540(0, v4[2] + 1, 1, v4);
        }

        v22 = v4[2];
        v21 = v4[3];
        if (v22 >= v21 >> 1)
        {
          v4 = sub_100B36540((v21 > 1), v22 + 1, 1, v4);
        }

        v4[2] = v22 + 1;
        v4[v22 + 4] = v18;
      }

      v3 += 56;
      --v1;
    }

    while (v1);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
    v2 = _swiftEmptyArrayStorage;
  }

  if (*(v2 + 2))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100B36540(0, v4[2] + 1, 1, v4);
    }

    v24 = v4[2];
    v23 = v4[3];
    if (v24 >= v23 >> 1)
    {
      v4 = sub_100B36540((v23 > 1), v24 + 1, 1, v4);
    }

    v4[2] = v24 + 1;
    v4[v24 + 4] = v2;
  }

  else
  {
  }

  return v4;
}

uint64_t sub_100A45894(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if (v2 == 1)
  {
    v3 = 0;
    v4 = 0;
LABEL_15:
    v12 = v2 - v4;
    v13 = (a1 + 56 * v4 + 64);
    do
    {
      v15 = *v13;
      v13 += 7;
      v14 = v15;
      if (v3 <= v15)
      {
        v3 = v14;
      }

      --v12;
    }

    while (v12);
    goto LABEL_19;
  }

  v5 = 0;
  v6 = 0;
  v4 = v2 & 0x7FFFFFFFFFFFFFFELL;
  v7 = (a1 + 120);
  v8 = v2 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v9 = *(v7 - 7);
    v11 = *v7;
    v7 += 14;
    v10 = v11;
    if (v5 <= v9)
    {
      v5 = v9;
    }

    if (v6 <= v10)
    {
      v6 = v10;
    }

    v8 -= 2;
  }

  while (v8);
  if (v5 <= v6)
  {
    v3 = v6;
  }

  else
  {
    v3 = v5;
  }

  if (v2 != v4)
  {
    goto LABEL_15;
  }

LABEL_19:
  v92 = sub_100BD533C(_swiftEmptyArrayStorage);
  v16 = sub_100BD5450(_swiftEmptyArrayStorage);
  v88 = 0;
  v17 = a1 + 32;
  v87 = v3;
  v89 = a1 + 32;
  while (!v2)
  {
    v19 = v88;
LABEL_90:

    if (v19 == v87)
    {
      return v92;
    }

    v16 = _swiftEmptyDictionarySingleton;
    v88 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      return v92;
    }
  }

  v18 = 0;
  v19 = v88;
  while (1)
  {
    v21 = v17 + 56 * v18;
    v22 = *(v21 + 24);
    if (!v22)
    {
      goto LABEL_24;
    }

    v23 = OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType;
    v24 = v22[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType];
    if (!v22[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType])
    {
      goto LABEL_24;
    }

    v25 = *(v21 + 16);
    v26 = *(v21 + 32);
    if (v26 != v19)
    {
      if (v19 >= v26)
      {
        goto LABEL_24;
      }

      v32 = 0;
      v33 = 0;
      v34 = 1 << *(v16 + 32);
      while (1)
      {
        v35 = v16[v33 + 8];
        if (v35)
        {
          break;
        }

        ++v33;
        v32 -= 64;
        if ((v34 + 63) >> 6 == v33)
        {
          goto LABEL_24;
        }
      }

      v56 = __clz(__rbit64(v35));
      if (v56 - v34 == v32)
      {
        goto LABEL_24;
      }

      if (-v32 < 0)
      {
        goto LABEL_99;
      }

      v57 = v56 - v32;
      if (v57 >= v34)
      {
        goto LABEL_99;
      }

      if (((v16[(v33 & 0x3FFFFFFFFFFFFFFLL) + 8] >> v56) & 1) == 0)
      {
        goto LABEL_100;
      }

      v20 = *(v16[7] + 8 * v57);
      v58 = v22;
      v90 = v25;
      v59 = v25;
      goto LABEL_68;
    }

    v27 = *(v21 + 40);
    v28 = *(v21 + 48);
    v90 = *(v21 + 16);
    if (v16[2])
    {
      sub_1007CF10C(v24);
      if (v29)
      {
        v30 = v22;
        v31 = v25;
        goto LABEL_64;
      }

      v24 = v22[v23];
    }

    v36 = NSTextListMarkerDecimal;
    if (v24 != 1)
    {
      v36 = NSTextListMarkerHyphen;
      if (v24 != 2)
      {
        v36 = NSTextListMarkerDisc;
      }
    }

    v37 = v36;
    if (v28)
    {
      v27 = 1;
    }

    v38 = objc_allocWithZone(NSTextList);
    v39 = v22;
    v40 = v90;
    v41 = [v38 initWithMarkerFormat:v37 options:0 startingItemNumber:v27];

    if (v41)
    {
      break;
    }

    v52 = sub_1007CF10C(v24);
    if ((v53 & 1) == 0)
    {
      v17 = v89;
      v25 = v90;
      goto LABEL_65;
    }

    v54 = v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91[0] = v16;
    v17 = v89;
    v25 = v90;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AA48E0();
      v25 = v90;
      v16 = v91[0];
    }

    sub_100BCD6F8(v54, v16);
    if (!v16[2])
    {
LABEL_22:
      v20 = v22;
      goto LABEL_23;
    }

LABEL_66:
    v64 = sub_1007CF10C(v22[v23]);
    if (v65)
    {
      v20 = *(v16[7] + 8 * v64);
LABEL_68:
      v66 = v92;
      if (v92[2] && (sub_1007C7EC0(v18), (v67 & 1) != 0))
      {
        v68 = v20;
      }

      else
      {
        v69 = v20;
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v91[0] = v66;
        v71 = sub_1007C7EC0(v18);
        v73 = v66[2];
        v74 = (v72 & 1) == 0;
        v48 = __OFADD__(v73, v74);
        v75 = v73 + v74;
        if (v48)
        {
          goto LABEL_96;
        }

        v76 = v72;
        if (v66[3] >= v75)
        {
          if ((v70 & 1) == 0)
          {
            v85 = v71;
            sub_100AA48CC();
            v71 = v85;
          }
        }

        else
        {
          sub_100A8A1A4(v75, v70);
          v71 = sub_1007C7EC0(v18);
          if ((v76 & 1) != (v77 & 1))
          {
            goto LABEL_101;
          }
        }

        v17 = v89;
        v78 = v91[0];
        if (v76)
        {
          *(v91[0][7] + 8 * v71) = _swiftEmptyArrayStorage;
        }

        else
        {
          v91[0][(v71 >> 6) + 8] |= 1 << v71;
          *(v78[6] + 8 * v71) = v18;
          *(v78[7] + 8 * v71) = _swiftEmptyArrayStorage;
          v79 = v78[2];
          v48 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v48)
          {
            goto LABEL_98;
          }

          v78[2] = v80;
        }

        v92 = v78;
      }

      v82 = sub_1011255E8(v91, v18);
      if (*v81)
      {
        v83 = v81;
        v20 = v20;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v17 = v89;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      (v82)(v91, 0);

      v25 = v22;
      goto LABEL_23;
    }

    v20 = v22;
    v25 = v90;
LABEL_23:

LABEL_24:
    if (++v18 == v2)
    {
      goto LABEL_90;
    }
  }

  v42 = v2;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v91[0] = v16;
  v44 = sub_1007CF10C(v24);
  v46 = v16[2];
  v47 = (v45 & 1) == 0;
  v48 = __OFADD__(v46, v47);
  v49 = v46 + v47;
  if (!v48)
  {
    v50 = v45;
    if (v16[3] >= v49)
    {
      v25 = v90;
      if ((v43 & 1) == 0)
      {
        v84 = v44;
        sub_100AA48E0();
        v25 = v90;
        v44 = v84;
      }

      v2 = v42;
    }

    else
    {
      sub_100A8A1B8(v49, v43);
      v44 = sub_1007CF10C(v24);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_102;
      }

      v2 = v42;
      v25 = v90;
    }

    v16 = v91[0];
    v19 = v88;
    if (v50)
    {
      v60 = v91[0][7];
      v61 = *(v60 + 8 * v44);
      *(v60 + 8 * v44) = v41;
    }

    else
    {
      v91[0][(v44 >> 6) + 8] |= 1 << v44;
      *(v16[6] + v44) = v24;
      *(v16[7] + 8 * v44) = v41;
      v62 = v16[2];
      v48 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v48)
      {
        goto LABEL_97;
      }

      v16[2] = v63;
    }

LABEL_64:
    v17 = v89;
LABEL_65:
    if (!v16[2])
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_102:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_100A45F54(uint64_t a1, char *a2, uint64_t a3, unsigned int (**a4)(uint64_t, uint64_t, uint64_t), void *a5, uint64_t *a6)
{
  v117 = a6;
  v128 = a5;
  v125 = a4;
  v130 = a3;
  v112 = a1;
  v7 = sub_1005B981C(&unk_101A09540);
  v121 = *(v7 - 8);
  __chkstk_darwin(v7);
  v114 = &v101 - v8;
  v9 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v9 - 8);
  v113 = &v101 - v10;
  v124 = sub_1005B981C(&qword_1019FC080);
  v110 = *(v124 - 8);
  __chkstk_darwin(v124);
  v123 = &v101 - v11;
  v120 = sub_1005B981C(&unk_101A09550);
  v101 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v101 - v12;
  v13 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v13 - 8);
  v122 = &v101 - v14;
  v15 = sub_1005B981C(&unk_101A096C0);
  __chkstk_darwin(v15 - 8);
  v17 = &v101 - v16;
  v127 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v102 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1005B981C(&qword_101A000C0);
  v118 = *(v129 - 8);
  __chkstk_darwin(v129);
  v116 = (&v101 - v19);
  v20 = sub_1005B981C(qword_101A0CF60);
  v109 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v101 - v21;
  v23 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v23);
  v25 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v26);
  v28 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1005B981C(&unk_1019FFD10);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v31 = __chkstk_darwin(v30).n128_u64[0];
  v33 = &v101 - v32;
  v133 = _swiftEmptyArrayStorage;
  result = [a2 characterCount];
  v111 = a2;
  v35 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  v115 = v17;
  if (result)
  {
    if (v35)
    {
      (*(*v35 + 896))();
      sub_100A49D68(&v25[*(v23 + 20)], v28, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v25, type metadata accessor for CRLWPShapeItemCRDTData);
      (*(v104 + 16))(v103, v28, v105);
      sub_100A47694(v28, type metadata accessor for CRLWPStorageCRDTData);
      v36 = v123;
      CRAttributedString.subscript.getter();
      v37 = v124;
      CRAttributedString.Substring.runs.getter();
      (*(v110 + 8))(v36, v37);
      v38 = v113;
      CRAttributedString.Runs.next()();
      v39 = *(v121 + 48);
      v110 = v121 + 48;
      v109 = v39;
      v40 = v39(v38, 1, v7);
      v41 = v114;
      if (v40 != 1)
      {
        v108 = *(v121 + 32);
        v121 += 32;
        v106 = (v121 - 24);
        v42 = _swiftEmptyArrayStorage;
        v107 = xmmword_10146C6B0;
        do
        {
          v108(v41, v38, v7);
          sub_1005B981C(&qword_101A0DA78);
          v43 = (*(v118 + 80) + 32) & ~*(v118 + 80);
          v124 = *(v118 + 72);
          v44 = swift_allocObject();
          *(v44 + 16) = v107;
          v123 = v44;
          v45 = (v44 + v43);
          v130 = CRAttributedString.Runs.Run.range.getter();
          v125 = v46;
          __chkstk_darwin(v130);
          *(&v101 - 4) = &type metadata for CRLWPHyperlinkAttribute;
          v47 = sub_1008247F4();
          v48 = v112;
          *(&v101 - 3) = v47;
          *(&v101 - 2) = v48;
          swift_getKeyPath();
          sub_100824848();

          CRAttributedString.Runs.Run.subscript.getter();

          v49 = v125;
          *v45 = v130;
          v45[1] = v49;
          v50 = *(v42 + 2);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v52 = *(v42 + 3) >> 1, v52 <= v50))
          {
            v42 = sub_100B367A4(isUniquelyReferenced_nonNull_native, v50 + 1, 1, v42);
            v52 = *(v42 + 3) >> 1;
          }

          if (v52 <= *(v42 + 2))
          {
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
          }

          swift_arrayInitWithCopy();

          ++*(v42 + 2);
          v133 = v42;
          v41 = v114;
          (*v106)(v114, v7);
          v38 = v113;
          CRAttributedString.Runs.next()();
        }

        while (v109(v38, 1, v7) != 1);
      }

      (*(v101 + 8))(v119, v120);
      sub_100A27DD0();
      (*(v104 + 8))(v103, v105);
      goto LABEL_13;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v130 = v20;
  if (!v35)
  {
    goto LABEL_36;
  }

  v53 = v33;
  v54 = v22;
  (*(*v35 + 896))();
  sub_100A49D68(&v25[*(v23 + 20)], v28, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v25, type metadata accessor for CRLWPShapeItemCRDTData);
  v55 = v104;
  v56 = v53;
  v57 = v53;
  v58 = v105;
  (*(v104 + 16))(v57, &v28[*(v26 + 20)], v105);
  sub_100A47694(v28, type metadata accessor for CRLWPStorageCRDTData);
  v59 = v54;
  CRAttributedString.attributes(at:effectiveRange:)();
  sub_1005B981C(&qword_101A0DA78);
  v60 = (*(v118 + 80) + 32) & ~*(v118 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_10146C6B0;
  v62 = (v61 + v60);
  __chkstk_darwin(v61);
  *(&v101 - 4) = &type metadata for CRLWPHyperlinkAttribute;
  v63 = sub_1008247F4();
  v64 = v112;
  *(&v101 - 3) = v63;
  *(&v101 - 2) = v64;
  swift_getKeyPath();
  sub_100824848();

  v65 = v130;
  CRAttributedString.Attributes.subscript.getter();

  *v62 = 0;
  v62[1] = 0;
  sub_100799D48(v61);
  (*(v109 + 1))(v59, v65);
  (*(v55 + 8))(v56, v58);
LABEL_13:
  v67 = v116;
  v66 = v117;
  v68 = *(v133 + 2);
  v69 = v115;
  if (v68)
  {
    v70 = *(v118 + 80);
    v123 = v133;
    v71 = &v133[(v70 + 32) & ~v70];
    v72 = (v102 + 48);
    v73 = *(v118 + 72);
    v124 = v73;
    v125 = (v102 + 48);
    do
    {
      v130 = v68;
      sub_10000BE14(v71, v67, &qword_101A000C0);
      sub_10000BE14(v67 + *(v129 + 36), v69, &unk_101A096C0);
      v74 = v127;
      if ((*v72)(v69, 1, v127) == 1)
      {
        sub_10000CAAC(v69, &unk_101A096C0);
        v75 = *v67;
        v131 = 0;
        v132 = 0;

        v76 = *v66;
        v77 = v66[1];
        if (v131 < *v66)
        {
          v76 = v131;
        }

        if (v132 + v131 > v77)
        {
          v77 = v132 + v131;
        }

        if (v77 < v76)
        {
          goto LABEL_33;
        }

        *v66 = v76;
        v66[1] = v77;
        sub_10000CAAC(v67, &qword_101A000C0);
      }

      else
      {
        v78 = v69;
        v79 = v126;
        sub_100A49E4C(v78, v126, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        v80 = v111;
        sub_100A3400C(*(v79 + *(v74 + 24)), *(v79 + *(v74 + 24) + 8));
        v82 = v81;
        v84 = v83;
        v85 = v79 + *(v74 + 20);
        v86 = v122;
        sub_10000BE14(v85, v122, &unk_1019F33C0);
        v87 = [v80 stringEquivalentFromRange:{v82, v84}];
        v88 = type metadata accessor for URL();
        v89 = *(v88 - 8);
        v90 = (*(v89 + 48))(v86, 1, v88);
        v92 = 0;
        if (v90 != 1)
        {
          v93 = v122;
          URL._bridgeToObjectiveC()(v91);
          v92 = v94;
          (*(v89 + 8))(v93, v88);
        }

        v95 = objc_allocWithZone(CRLWPHyperlinkField);
        v96 = String._bridgeToObjectiveC()();
        v97 = [v95 initWithURL:v92 range:v82 displayText:v84 uuidString:{v87, v96}];

        v67 = v116;
        v98 = *v116;
        v131 = 0;
        v132 = 0;

        v66 = v117;
        v99 = *v117;
        v100 = v117[1];
        if (v131 < *v117)
        {
          v99 = v131;
        }

        if (v132 + v131 > v100)
        {
          v100 = v132 + v131;
        }

        if (v100 < v99)
        {
          goto LABEL_34;
        }

        *v117 = v99;
        v66[1] = v100;

        sub_10000CAAC(v67, &qword_101A000C0);
        sub_100A47694(v126, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        v69 = v115;
        v73 = v124;
        v72 = v125;
      }

      v71 += v73;
      v68 = v130 - 1;
    }

    while (v130 != 1);
  }
}

uint64_t sub_100A46EFC(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v4 - v1);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_100A47008(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5, char a6)
{
  v25 = a2;
  v26 = a3;
  v10 = sub_1005B981C(&qword_101A06188);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  *(&v23 - v14) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v27 = &type metadata for CRLWPParagraphScope;
  v28 = &type metadata for CRLWPParagraphAlignmentAttribute;
  v16 = sub_1006ACAD4();
  v29 = v16;
  v30 = a4;
  result = swift_getKeyPath();
  v24 = a1;
  if (*&a1[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage])
  {
    v18 = result;
    if (a6)
    {
      v19 = 4;
    }

    else
    {
      v19 = a5;
    }

    sub_100E6DE34(&v31, 0xD000000000000012, 0x8000000101551650);

    __chkstk_darwin(v20);
    *(&v23 - 4) = &type metadata for CRLWPParagraphScope;
    *(&v23 - 3) = &type metadata for CRLWPParagraphAlignmentAttribute;
    *(&v23 - 2) = v16;
    *(&v23 - 1) = v18;
    swift_getKeyPath();
    v31 = v19;
    LOBYTE(v32) = 0;
    sub_1005B981C(qword_101A0CF60);
    sub_100962228();
    CRAttributedString.Attributes.subscript.setter();
    sub_10000BE14(v15, v12, &qword_101A06188);
    v21 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0));
    v22 = sub_100961C20(v24, v25, v26, v12);
    sub_10000CAAC(v15, &qword_101A06188);
    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A47274(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, int a6)
{
  v23 = a6;
  v25 = a2;
  v26 = a3;
  v9 = sub_1005B981C(&qword_101A06188);
  __chkstk_darwin(v9 - 8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v22[-v13];
  *&v22[-v13] = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v27 = &type metadata for CRLWPParagraphScope;
  v28 = &type metadata for CRLWPListStyleTypeAttribute;
  v15 = sub_100962180();
  v29 = v15;
  v30 = a4;
  result = swift_getKeyPath();
  v24 = a1;
  if (*&a1[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage])
  {
    v17 = result;

    sub_100E6DE34(&v31, 0x6C7974537473696CLL, 0xE900000000000065);

    __chkstk_darwin(v18);
    *&v22[-32] = &type metadata for CRLWPParagraphScope;
    *&v22[-24] = &type metadata for CRLWPListStyleTypeAttribute;
    *&v22[-16] = v15;
    *&v22[-8] = v17;
    swift_getKeyPath();
    v19 = 3;
    if ((v23 & 1) == 0)
    {
      v19 = a5;
    }

    v31 = v19;
    LOBYTE(v32) = 0;
    sub_1005B981C(qword_101A0CF60);
    sub_1009621D4();
    CRAttributedString.Attributes.subscript.setter();
    sub_10000BE14(v14, v11, &qword_101A06188);
    v20 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0));
    v21 = sub_100961C20(v24, v25, v26, v11);
    sub_10000CAAC(v14, &qword_101A06188);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A47528(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100A47694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100A476F4()
{
  result = qword_101A0D980;
  if (!qword_101A0D980)
  {
    sub_1005C4E5C(&unk_101A0D940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D980);
  }

  return result;
}

unint64_t sub_100A47778()
{
  result = qword_101A0D9A0;
  if (!qword_101A0D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D9A0);
  }

  return result;
}

id sub_100A477CC(uint64_t a1, void *a2)
{
  v4 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  sub_100A3400C(*(a1 + *(v7 + 24)), *(a1 + *(v7 + 24) + 8));
  v9 = v8;
  v11 = v10;
  sub_10000BE14(a1 + *(v7 + 20), v6, &unk_1019F33C0);
  v12 = [a2 stringEquivalentFromRange:{v9, v11}];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v16 = 0;
  if ((*(v14 + 48))(v6, 1, v13) != 1)
  {
    URL._bridgeToObjectiveC()(v15);
    v16 = v17;
    (*(v14 + 8))(v6, v13);
  }

  v18 = objc_allocWithZone(CRLWPHyperlinkField);
  v19 = String._bridgeToObjectiveC()();

  v20 = String._bridgeToObjectiveC()();
  v21 = [v18 initWithURL:v16 range:v9 displayText:v11 uuidString:{v19, v20}];

  return v21;
}

void sub_100A479D4(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, char *a5)
{
  v48 = a5;
  v50 = a3;
  v51 = a4;
  v53 = a2;
  v6 = sub_1005B981C(&unk_101A096C0);
  __chkstk_darwin(v6 - 8);
  v54 = &v46 - v7;
  v49 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_101A09540);
  v60 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v13 - 8);
  v15 = &v46 - v14;
  v57 = sub_1005B981C(&unk_1019FFD10);
  v16 = *(v57 - 8);
  __chkstk_darwin(v57);
  v18 = &v46 - v17;
  v19 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v22 - 8);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1005B981C(&unk_101A09550);
  v26 = __chkstk_darwin(v59);
  v58 = &v46 - v27;
  if (a1 == 6)
  {
    v46 = v25;
    v52 = v9;
    v28 = *&v51[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (v28)
    {
      (*(*v28 + 896))(v26);
      sub_100A49D68(&v21[*(v19 + 20)], v24, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v21, type metadata accessor for CRLWPShapeItemCRDTData);
      v29 = v57;
      (*(v16 + 16))(v18, v24, v57);
      sub_100A47694(v24, type metadata accessor for CRLWPStorageCRDTData);
      CRAttributedString.runs.getter();
      (*(v16 + 8))(v18, v29);
      CRAttributedString.Runs.next()();
      v56 = *(v60 + 48);
      v57 = v60 + 48;
      v30 = v56(v15, 1, v10);
      v31 = v51;
      v32 = v49;
      v33 = v54;
      if (v30 != 1)
      {
        v55 = *(v60 + 32);
        v34 = (v47 + 48);
        v50 += v53;
        v47 = v48 + 16;
        v60 += 32;
        v35 = (v60 - 24);
        v55(v12, v15, v10);
        while (1)
        {
          swift_getKeyPath();
          sub_100824848();
          CRAttributedString.Runs.Run.subscript.getter();

          if ((*v34)(v33, 1, v32) == 1)
          {
            (*v35)(v12, v10);
            sub_10000CAAC(v33, &unk_101A096C0);
          }

          else
          {
            v36 = v33;
            v37 = v52;
            sub_100A49E4C(v36, v52, type metadata accessor for CRLWPHyperlinkSmartFieldData);
            sub_100A3400C(*(v37 + *(v32 + 24)), *(v37 + *(v32 + 24) + 8));
            if (v38 >= v53 && v50 >= v38 + v39)
            {
              v41 = v38;
              v42 = v39;
              v61 = 0;
              v62 = sub_100A477CC(v37, v31);
              v43 = v62;
              sub_1005B981C(&qword_101A0D658);
              v44 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
              (*(v48 + 2))(v48, v44, v41, v42, &v61);
              swift_unknownObjectRelease();
              (*v35)(v12, v10);

              v45 = v61;
              sub_100A47694(v37, type metadata accessor for CRLWPHyperlinkSmartFieldData);
              if (v45)
              {
                break;
              }

              v31 = v51;
              v32 = v49;
              v33 = v54;
            }

            else
            {
              (*v35)(v12, v10);
              sub_100A47694(v37, type metadata accessor for CRLWPHyperlinkSmartFieldData);
              v33 = v54;
            }
          }

          CRAttributedString.Runs.next()();
          if (v56(v15, 1, v10) == 1)
          {
            break;
          }

          v55(v12, v15, v10);
        }
      }

      (*(v46 + 8))(v58, v59);
    }

    else
    {
      _Block_release(v48);
      __break(1u);
    }
  }
}

uint64_t sub_100A48148(char *a1, char **a2, void *a3)
{
  if ((*(v3 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) & 1) == 0)
  {
    sub_100A2A960();
  }

  v7 = *(v3 + *a3);

  v8 = sub_100A3513C(&v12, v7, a1);
  v10 = v9;

  result = v12;
  if (a2)
  {
    if (__OFSUB__(v10, v8))
    {
      __break(1u);
    }

    else
    {
      *a2 = v8;
      a2[1] = (v10 - v8);
    }
  }

  return result;
}

id sub_100A481DC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v157 = a5;
  v154 = a4;
  v197 = a3;
  v183 = a1;
  v6 = type metadata accessor for CRLWPStorageCRDTData(0);
  v172 = *(v6 - 8);
  v173 = v6;
  __chkstk_darwin(v6);
  v178 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A0D9B0);
  __chkstk_darwin(v8 - 8);
  v180 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v201 = &v141 - v11;
  v12 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v12 - 8);
  v174 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v193 = &v141 - v15;
  v190 = type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
  v192 = *(v190 - 8);
  __chkstk_darwin(v190);
  v179 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v196 = &v141 - v18;
  v19 = sub_1005B981C(&unk_101A0D9C0);
  v170 = *(v19 - 8);
  v171 = v19;
  __chkstk_darwin(v19);
  v168 = &v141 - v20;
  v21 = sub_1005B981C(&unk_101A10680);
  v166 = *(v21 - 8);
  v167 = v21;
  __chkstk_darwin(v21);
  v165 = &v141 - v22;
  v23 = sub_1005B981C(&unk_101A0D9D0);
  v162 = *(v23 - 8);
  v163 = v23;
  __chkstk_darwin(v23);
  v161 = &v141 - v24;
  v25 = sub_1005B981C(&unk_101A10690);
  v159 = *(v25 - 8);
  v160 = v25;
  __chkstk_darwin(v25);
  v158 = &v141 - v26;
  v164 = type metadata accessor for CRLShapeItemCRDTData(0) - 8;
  __chkstk_darwin(v164);
  v194 = &v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v195 = &v141 - v29;
  v169 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v169);
  v181 = &v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v182 = &v141 - v32;
  __chkstk_darwin(v33);
  v189 = &v141 - v34;
  __chkstk_darwin(v35);
  v199 = &v141 - v36;
  v37 = sub_1005B981C(&unk_101A09DC0);
  v155 = *(v37 - 8);
  v156 = v37;
  __chkstk_darwin(v37);
  v153 = &v141 - v38;
  v39 = type metadata accessor for UUID();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v152 = &v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v150 = &v141 - v43;
  v188 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v188);
  v151 = &v141 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v149 = &v141 - v46;
  __chkstk_darwin(v47);
  v187 = &v141 - v48;
  v49 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v49 - 8);
  v185 = (&v141 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v51);
  v53 = &v141 - v52;
  v54 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v54 - 8);
  v56 = &v141 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v56;
  __chkstk_darwin(v57);
  v59 = &v141 - v58;
  v60 = type metadata accessor for CRLBoardItemParentAffinity();
  v61 = (v60 - 8);
  __chkstk_darwin(v60);
  v145 = &v141 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v186 = &v141 - v64;
  v146 = sub_1005B981C(&unk_101A0F400) - 8;
  __chkstk_darwin(v146);
  v176 = &v141 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v175 = &v141 - v67;
  __chkstk_darwin(v68);
  v177 = &v141 - v69;
  __chkstk_darwin(v70);
  v191 = &v141 - v71;
  v73 = __chkstk_darwin(v72);
  v200 = &v141 - v74;
  v202 = v40;
  v75 = *(v40 + 16);
  v147 = v40 + 16;
  v148 = v75;
  v184 = a2;
  (v75)(v59, a2, v39, v73);
  v143 = *(v40 + 56);
  v144 = v59;
  v198 = v39;
  v143(v59, 0, 1, v39);
  v236 = 1;
  v76 = type metadata accessor for CRLTableAnchorHint();
  v77 = *(*(v76 - 8) + 56);
  v77(v53, 1, 1, v76);
  sub_101271CCC(v154, v219);
  sub_10000BE14(v59, v56, &qword_1019F6990);
  sub_10000BE14(v53, v185, &unk_101A09DD0);
  v78 = v186;
  v143(v186, 1, 1, v39);
  v79 = v61[9];
  v80 = &v78[v61[8]];
  v77(&v78[v79], 1, 1, v76);
  *&v78[v61[10]] = _swiftEmptyDictionarySingleton;
  sub_10002C638(v142, v78, &qword_1019F6990);
  sub_10000CAAC(v53, &unk_101A09DD0);
  sub_10000CAAC(v144, &qword_1019F6990);
  v81 = &v78[v61[7]];
  v82 = v219[1];
  *v81 = v219[0];
  *(v81 + 1) = v82;
  *v80 = 0u;
  *(v80 + 1) = 0u;
  *(v80 + 2) = 0u;
  *(v80 + 3) = 0u;
  v80[64] = v236;
  sub_10002C638(v185, &v78[v79], &unk_101A09DD0);
  v83 = v145;
  sub_100A49D68(v78, v145, type metadata accessor for CRLBoardItemParentAffinity);
  v84 = v187;
  sub_100A49D68(v83, v187, type metadata accessor for CRLBoardItemParentAffinity);
  v85 = v188;
  sub_100C3D740(v157, v84 + *(v188 + 20));
  v86 = v85[6];
  v87 = type metadata accessor for CRLPKStrokePathData();
  (*(*(v87 - 8) + 56))(v84 + v86, 1, 1, v87);
  v88 = v84 + v85[7];
  *v88 = 0;
  *(v88 + 8) = -1;
  *(v84 + v85[8]) = _swiftEmptyDictionarySingleton;
  v185 = type metadata accessor for CRLBoardItemParentAffinity;
  sub_100A47694(v83, type metadata accessor for CRLBoardItemParentAffinity);
  v89 = v149;
  sub_100A49D68(v84, v149, type metadata accessor for CRLShapeItemParentAffinity);
  sub_1005D0C00(&v237);
  v90 = v150;
  UUID.init()();
  v91 = v146;
  v157 = *(v146 + 60);
  v249 = v241;
  v250 = v242;
  v251 = v243;
  v252 = v244;
  v245 = v237;
  v246 = v238;
  v247 = v239;
  v248 = v240;
  v154 = sub_1005B981C(&unk_101A09DE0);
  sub_100A49DD0(&qword_101A106A0, &unk_101A09DE0, &unk_1014897A0, sub_10074933C);
  v92 = v200;
  CRRegister.init(wrappedValue:)();
  *(v92 + *(v91 + 64)) = _swiftEmptyDictionarySingleton;
  v93 = v198;
  v148(v152, v90, v198);
  CRRegister.init(_:)();
  sub_100A49D68(v89, v151, type metadata accessor for CRLShapeItemParentAffinity);
  sub_100A40278(&qword_101A106B0, 255, type metadata accessor for CRLShapeItemParentAffinity);
  CRRegister.init(_:)();
  LOBYTE(v245) = 0;
  CRRegister.init(_:)();
  LOBYTE(v245) = 0;
  CRRegister.init(_:)();
  *&v245 = 0;
  *(&v245 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v249 = v241;
  v250 = v242;
  v251 = v243;
  v252 = v244;
  v245 = v237;
  v246 = v238;
  v247 = v239;
  v248 = v240;
  v94 = v153;
  CRRegister.init(_:)();
  v95 = *(v202 + 8);
  v202 += 8;
  v188 = v95;
  v95(v90, v93);
  sub_100A47694(v89, type metadata accessor for CRLShapeItemParentAffinity);
  sub_100A47694(v187, type metadata accessor for CRLShapeItemParentAffinity);
  sub_100A47694(v186, v185);
  (*(v155 + 40))(v92 + v157, v94, v156);
  sub_1006950BC(&v245);
  v232 = v257;
  v233 = v258;
  v234 = v259;
  v235 = v260;
  v228 = v253;
  v229 = v254;
  v230 = v255;
  v231 = v256;
  v224 = v249;
  v225 = v250;
  v226 = v251;
  v227 = v252;
  v220 = v245;
  v221 = v246;
  v222 = v247;
  v223 = v248;
  sub_1005D0BD8(&v261);
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v203 = 0u;
  v187 = sub_1005B981C(&qword_1019FFF80);
  v186 = sub_100A49DD0(&qword_101A0D9E0, &qword_1019FFF80, &unk_101489000, sub_1006BD1F0);
  v96 = v195;
  CRRegister.init(wrappedValue:)();
  v97 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  v185 = v97[5];
  v215 = v273;
  v216 = v274;
  *&v217 = v275;
  v211 = v269;
  v212 = v270;
  v213 = v271;
  v214 = v272;
  v207 = v265;
  v208 = v266;
  v209 = v267;
  v210 = v268;
  v203 = v261;
  v204 = v262;
  v205 = v263;
  v206 = v264;
  v157 = sub_1005B981C(&unk_101A106C0);
  sub_100A49DD0(&qword_101A0D9F0, &unk_101A106C0, &unk_1014907B0, sub_1005FEA64);
  CRRegister.init(wrappedValue:)();
  v156 = v97[6];
  *&v206 = 0;
  v204 = 0u;
  v205 = 0u;
  v203 = 0u;
  sub_1005B981C(&unk_101A0DA00);
  sub_100A49DD0(&unk_101A106E0, &unk_101A0DA00, &unk_101495050, sub_1009CDC80);
  CRRegister.init(wrappedValue:)();
  v98 = v97[7];
  *&v206 = 0;
  v204 = 0u;
  v205 = 0u;
  v203 = 0u;
  CRRegister.init(wrappedValue:)();
  v99 = v97[8];
  LODWORD(v203) = 0;
  CRRegister.init(wrappedValue:)();
  *(v96 + v97[9]) = _swiftEmptyDictionarySingleton;
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v203 = 0u;
  v100 = v158;
  CRRegister.init(_:)();
  (*(v159 + 40))(v96, v100, v160);
  v215 = v273;
  v216 = v274;
  *&v217 = v275;
  v211 = v269;
  v212 = v270;
  v213 = v271;
  v214 = v272;
  v207 = v265;
  v208 = v266;
  v209 = v267;
  v210 = v268;
  v203 = v261;
  v204 = v262;
  v205 = v263;
  v206 = v264;
  v101 = v161;
  CRRegister.init(_:)();
  (*(v162 + 40))(v185 + v96, v101, v163);
  *&v206 = 0;
  v204 = 0u;
  v205 = 0u;
  v203 = 0u;
  v102 = v165;
  CRRegister.init(_:)();
  v103 = v167;
  v104 = *(v166 + 40);
  v104(v96 + v156, v102, v167);
  *&v206 = 0;
  v204 = 0u;
  v205 = 0u;
  v203 = 0u;
  CRRegister.init(_:)();
  v104(v96 + v98, v102, v103);
  LODWORD(v203) = 0;
  v105 = v168;
  CRRegister.init(_:)();
  (*(v170 + 40))(v96 + v99, v105, v171);
  *(v96 + *(v164 + 28)) = _swiftEmptyDictionarySingleton;
  LODWORD(v203) = 1092616192;
  v106 = v196;
  CRRegister.init(wrappedValue:)();
  v107 = v190;
  *&v203 = 1;
  BYTE8(v203) = 0;
  v108 = sub_1005B981C(&qword_1019F7D38);
  v109 = sub_10001A2F8(&qword_101A0DA20, &qword_1019F7D38);
  v185 = v108;
  v171 = v109;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v203) = 0;
  CRRegister.init(wrappedValue:)();
  *(v106 + *(v107 + 28)) = _swiftEmptyDictionarySingleton;
  v186 = type metadata accessor for CRLShapeItemCRDTData;
  v110 = v194;
  sub_100A49D68(v96, v194, type metadata accessor for CRLShapeItemCRDTData);
  v111 = v193;
  sub_100A49D68(v197, v193, type metadata accessor for CRLWPStorageCRDTData);
  v113 = v172;
  v112 = v173;
  (*(v172 + 56))(v111, 0, 1, v173);
  v114 = v201;
  sub_100A49D68(v106, v201, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
  (*(v192 + 56))(v114, 0, 1, v107);
  v115 = v169;
  v116 = *(v169 + 28);
  v215 = v232;
  v216 = v233;
  v217 = v234;
  v218 = v235;
  v211 = v228;
  v212 = v229;
  v213 = v230;
  v214 = v231;
  v207 = v224;
  v208 = v225;
  v209 = v226;
  v210 = v227;
  v203 = v220;
  v204 = v221;
  v205 = v222;
  v206 = v223;
  sub_1005B981C(&unk_101A0D830);
  v117 = v174;
  sub_100A49DD0(&qword_1019F7DE8, &unk_101A0D830, &unk_101488F70, sub_100694290);
  v118 = v189;
  v187 = v116;
  CRRegister.init(wrappedValue:)();
  *(v118 + v115[8]) = _swiftEmptyDictionarySingleton;
  sub_100A49D68(v110, v118, v186);
  sub_10000BE14(v111, v117, &unk_101A0B1C0);
  v119 = *(v113 + 48);
  v120 = v112;
  if (v119(v117, 1, v112) == 1)
  {
    sub_10068D144();
    v121 = v178;
    CRAttributedString.init()();
    CRAttributedString.init(_:)();
    *(v121 + *(v120 + 24)) = _swiftEmptyDictionarySingleton;
    v122 = v121;
    if (v119(v117, 1, v120) != 1)
    {
      sub_10000CAAC(v117, &unk_101A0B1C0);
    }
  }

  else
  {
    v122 = v178;
    sub_100A49E4C(v117, v178, type metadata accessor for CRLWPStorageCRDTData);
  }

  v123 = v189;
  sub_100A49E4C(v122, &v189[v115[5]], type metadata accessor for CRLWPStorageCRDTData);
  v124 = v180;
  sub_10000BE14(v201, v180, &unk_101A0D9B0);
  v125 = *(v192 + 48);
  v126 = v190;
  v127 = v125(v124, 1, v190);
  v128 = v179;
  if (v127 == 1)
  {
    LODWORD(v203) = 0;
    CRRegister.init(wrappedValue:)();
    *&v203 = 0;
    BYTE8(v203) = 0;
    CRRegister.init(wrappedValue:)();
    LOBYTE(v203) = 0;
    CRRegister.init(wrappedValue:)();
    *(v128 + *(v126 + 28)) = _swiftEmptyDictionarySingleton;
    if (v125(v124, 1, v126) != 1)
    {
      sub_10000CAAC(v124, &unk_101A0D9B0);
    }
  }

  else
  {
    sub_100A49E4C(v124, v179, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
  }

  sub_100A49E4C(v128, v123 + v115[6], type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
  v215 = v232;
  v216 = v233;
  v217 = v234;
  v218 = v235;
  v211 = v228;
  v212 = v229;
  v213 = v230;
  v214 = v231;
  v207 = v224;
  v208 = v225;
  v209 = v226;
  v210 = v227;
  v203 = v220;
  v204 = v221;
  v205 = v222;
  v206 = v223;
  sub_1005B981C(&unk_101A095A0);
  CRRegister.wrappedValue.setter();
  sub_10000CAAC(v201, &unk_101A0D9B0);
  sub_10000CAAC(v193, &unk_101A0B1C0);
  sub_100A47694(v194, type metadata accessor for CRLShapeItemCRDTData);
  sub_100A47694(v196, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
  v129 = v199;
  sub_100A49E4C(v123, v199, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_100A47694(v195, type metadata accessor for CRLShapeItemCRDTData);
  v130 = v191;
  sub_10000BE14(v200, v191, &unk_101A0F400);
  v131 = v182;
  sub_100A49D68(v129, v182, type metadata accessor for CRLWPShapeItemCRDTData);
  *&v203 = 0x1000000000000;
  *(&v203 + 1) = 0x2000400000000;
  v204 = 0x1000000000000uLL;
  LOBYTE(v205) = 1;
  type metadata accessor for CRLWPShapeItemData(0);
  v132 = swift_allocObject();
  v133 = v177;
  sub_10000BE14(v130, v177, &unk_101A0F400);
  v134 = v181;
  sub_100A49D68(v131, v181, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_100A49D68(v134, v132 + *(*v132 + 888), type metadata accessor for CRLWPShapeItemCRDTData);
  v135 = v175;
  sub_10000BE14(v133, v175, &unk_101A0F400);
  *(v132 + qword_101A27318) = 0;
  v136 = v176;
  sub_10000BE14(v135, v176, &unk_101A0F400);
  sub_10000BE14(v136, v132 + *(*v132 + 736), &unk_101A0F400);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v136, &unk_101A0F400);
  sub_10000CAAC(v135, &unk_101A0F400);
  sub_100A47694(v134, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10000CAAC(v133, &unk_101A0F400);
  sub_100A47694(v131, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10000CAAC(v191, &unk_101A0F400);
  v137 = sub_100747AF0(&v203, 0);
  v138 = objc_allocWithZone(type metadata accessor for CRLWPStorage());
  v139 = sub_100A41BB8(v183, v137, &v220);

  sub_100A47694(v197, type metadata accessor for CRLWPStorageCRDTData);
  (v188)(v184, v198);
  sub_100A47694(v199, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10000CAAC(v200, &unk_101A0F400);
  return v139;
}

uint64_t sub_100A49D68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A49DD0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100A49E4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A49EBC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = swift_beginAccess();
  *(v4 + 16) = 1;
  *a4 = 1;
  return result;
}

uint64_t sub_100A49F0C(uint64_t a1)
{
  v1 = a1;
  LODWORD(result) = sub_10027E2F0(a1);
  if (v1 == 8232)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

void sub_100A49F94()
{
  sub_100A4A3E4(319, qword_101A0DBA0, &type metadata for Int, &protocol witness table for Int, &type metadata accessor for Range);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100A4A048(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_100A4A1A8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
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

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 16] & ~v8;

  v18(v19);
}

void sub_100A4A3E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_100A4A438()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Array();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100A4A4B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_100A4A5CC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_100A4A798()
{
  result = qword_101A0DC28;
  if (!qword_101A0DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0DC28);
  }

  return result;
}

uint64_t sub_100A4A834@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1008786E0(v1 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v5);
  v6 = *(v1 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_store);
  v7 = *&v6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v7 + 16));
  v8 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v9 = *&v6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v9)
  {
    v10 = *&v6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v11 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v12 = v6;
    v13 = sub_10001F1A0(v12);

    v14 = *&v6[v8];
    *&v6[v8] = v13;
    v10 = v13;

    v9 = 0;
  }

  v15 = *(v7 + 16);
  v16 = v9;
  os_unfair_lock_unlock(v15);
  sub_10108CAF4(v5, 0, 3, 0, 0, a1);

  return sub_10072C8E4(v5);
}

uint64_t sub_100A4A978()
{
  v1 = v0 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData;
  v2 = *(v1 + *(type metadata accessor for CRLAssetData() + 20));

  return v2;
}

uint64_t sub_100A4A9C4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

BOOL sub_100A4AA3C()
{
  v1 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  sub_1008786E0(v0 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v3);
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_store);
  v8 = *&v7[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v8 + 16));
  v9 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v10 = *&v7[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v10)
  {
    v11 = *&v7[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v12 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v13 = v7;
    v14 = sub_10001F1A0(v13);

    v15 = *&v7[v9];
    *&v7[v9] = v14;
    v11 = v14;

    v10 = 0;
  }

  v16 = *(v8 + 16);
  v17 = v10;
  os_unfair_lock_unlock(v16);
  sub_10108CAF4(v3, 0, 3, 0, 0, v6);

  sub_10072C8E4(v3);
  v18 = type metadata accessor for URL();
  v19 = (*(*(v18 - 8) + 48))(v6, 1, v18) == 1;
  sub_100686028(v6);
  return v19;
}

void sub_100A4AC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v48 = a3;
  v49 = a4;
  v50 = a2;
  v44 = a1;
  v47 = type metadata accessor for UUID();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v47);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v46 = &v43 - v9;
  v10 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - v14;
  sub_1008786E0(v4 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v12);
  v16 = *(v4 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_store);
  v17 = *&v16[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v17 + 16));
  v18 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v19 = *&v16[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v19)
  {
    v20 = *&v16[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v21 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v22 = v16;
    v23 = sub_10001F1A0(v22);

    v24 = *&v16[v18];
    *&v16[v18] = v23;
    v20 = v23;

    v19 = 0;
  }

  v25 = *(v17 + 16);
  v26 = v19;
  os_unfair_lock_unlock(v25);
  sub_10108CAF4(v12, 0, 3, 0, 0, v15);

  sub_10072C8E4(v12);
  v27 = type metadata accessor for URL();
  v28 = (*(*(v27 - 8) + 48))(v15, 1, v27);
  sub_100686028(v15);
  if (v28 == 1)
  {
    v29 = type metadata accessor for TaskPriority();
    v30 = v46;
    (*(*(v29 - 8) + 56))(v46, 1, 1, v29);
    v31 = v45;
    v32 = v47;
    (*(v6 + 16))(v45, v44, v47);
    v33 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v34 = (v7 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 2) = 0;
    *(v35 + 3) = 0;
    *(v35 + 4) = v5;
    (*(v6 + 32))(&v35[v33], v31, v32);
    v36 = v49;
    *&v35[v34] = v50;
    v37 = &v35[(v34 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v37 = v48;
    *(v37 + 1) = v36;

    sub_10064191C(0, 0, v30, &unk_101490B88, v35);
  }

  else if ((v50 & 2) != 0)
  {
    v38 = swift_allocObject();
    v39 = v49;
    *(v38 + 16) = v48;
    *(v38 + 24) = v39;
    aBlock[4] = sub_10091E678;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_101892978;
    v40 = _Block_copy(aBlock);

    v41 = v40;
    if (+[NSThread isMainThread])
    {
      v41[2](v41);
    }

    else
    {
      v42 = &_dispatch_main_q;
      dispatch_async(&_dispatch_main_q, v41);
    }

    _Block_release(v41);
  }
}

uint64_t sub_100A4B0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  sub_1005B981C(&unk_1019F33C0);
  v8[13] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_100A4B1E4, 0, 0);
}

uint64_t sub_100A4B1E4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[8];
  v5 = sub_100DCB394();
  v0[17] = v5;
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v3);

  return _swift_task_switch(sub_100A4B29C, v5, 0);
}

uint64_t sub_100A4B29C()
{
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_100A4B348;
  v2 = v0[16];
  v3 = v0[13];

  return sub_10108D4EC(v3, v2, 0, 0, 3);
}

uint64_t sub_100A4B348()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_100A4B458, v1, 0);
}

uint64_t sub_100A4B458()
{
  v1 = v0[13];
  v2 = type metadata accessor for URL();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_100686028(v1);
  if (v3 == 1)
  {
    v5 = v0[11];
    v4 = v0[12];
    v7 = v0[9];
    v6 = v0[10];
    sub_1007317C0(v0[16]);
    sub_1007319C4(v7, v6, v5, v4);
  }

  else if ((v0[10] & 2) != 0)
  {
    v9 = v0[11];
    v8 = v0[12];
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v0[6] = sub_1005DC638;
    v0[7] = v10;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = *"";
    v0[4] = sub_100007638;
    v0[5] = &unk_1018929C8;
    v11 = _Block_copy(v0 + 2);

    v12 = v11;
    if (+[NSThread isMainThread])
    {
      v12[2](v12);
    }

    else
    {
      v13 = &_dispatch_main_q;
      dispatch_async(&_dispatch_main_q, v12);
    }

    _Block_release(v12);
  }

  (*(v0[15] + 8))(v0[16], v0[14]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100A4B67C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v10 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v1;
  (*(v4 + 32))(&v11[v10], &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_10064191C(0, 0, v8, &unk_101490B70, v11);
}

uint64_t sub_100A4B858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100A4B918, 0, 0);
}

uint64_t sub_100A4B918()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_100DCB394();
  v0[7] = v5;
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v3);

  return _swift_task_switch(sub_100A4B9D0, v5, 0);
}

uint64_t sub_100A4B9D0()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  sub_10072CF90(v1, v0[3]);

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100A4BAAC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = v2;
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  v14 = sub_100DCB394();
  v15 = *(v8 + 16);
  v15(v13, v3 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v7);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v15(v10, v13, v7);
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = v14;
  (*(v8 + 32))(&v18[v17], v10, v7);

  sub_10064191C(0, 0, v6, v21, v18);

  return (*(v8 + 8))(v13, v7);
}

void sub_100A4BD04()
{
  sub_10072C8E4(v0 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData);
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_store);
}

uint64_t sub_100A4BD44()
{
  v1 = OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData;

  sub_10072C8E4(v0 + v1);
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_store);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLAssetBackedAssetStorage()
{
  result = qword_101A0DC98;
  if (!qword_101A0DC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100A4BE24()
{
  result = type metadata accessor for CRLAssetData();
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

uint64_t sub_100A4BEC0(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_10072D180(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100A4BFB8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100A4B858(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100A4C0B0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10002D4C8;

  return sub_100A4B0E4(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

uint64_t sub_100A4C94C()
{
  v0 = sub_1005B981C(&qword_101A0DE80);
  __chkstk_darwin(v0 - 8);
  v2 = &v22 - v1;
  v3 = type metadata accessor for PersonNameComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007D6EB8(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000CAAC(v2, &qword_101A0DE80);
LABEL_7:
    v10 = sub_1007D7988();
    v12 = v14;
    goto LABEL_8;
  }

  (*(v4 + 32))(v6, v2, v3);
  v7 = objc_opt_self();
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v9 = [v7 localizedStringFromPersonNameComponents:isa style:1 options:0];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  (*(v4 + 8))(v6, v3);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    goto LABEL_7;
  }

LABEL_8:
  v15 = [objc_opt_self() mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1005B981C(&qword_1019F54E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10146C6B0;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_1000053B0();
  *(v19 + 32) = v10;
  *(v19 + 40) = v12;
  v20 = String.init(format:_:)();

  return v20;
}

id sub_100A4CC7C()
{
  v1 = OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController____lazy_storage___participantColor;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController____lazy_storage___participantColor);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController____lazy_storage___participantColor);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_followingParticipant) collaboratorColorForType:2];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100A4CCFC()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [objc_opt_self() systemFontOfSize:13.0 weight:UIFontWeightMedium];
  if ([objc_opt_self() isIncreaseContrastEnabled])
  {
    v3 = sub_100A4CC7C();
    v4 = [v3 UIColor];

    v5 = [v4 CGColor];
    v6 = [objc_allocWithZone(CRLColor) initWithCGColor:v5];

    [v6 brightnessComponent];
    v8 = v7;

    if (v8 > 0.5)
    {
      v9 = [v0 blackColor];

      v4 = v1;
      v1 = v9;
    }
  }

  sub_1005B981C(&unk_101A11100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = NSFontAttributeName;
  v11 = sub_100006370(0, &qword_101A0DE60);
  *(inited + 40) = v2;
  *(inited + 64) = v11;
  *(inited + 72) = NSForegroundColorAttributeName;
  *(inited + 104) = sub_100006370(0, &qword_101A11110);
  *(inited + 80) = v1;
  v12 = NSFontAttributeName;
  v13 = v2;
  v14 = NSForegroundColorAttributeName;
  v15 = v1;
  sub_10006E310(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_101A0DE70);
  swift_arrayDestroy();
  sub_100A4C94C();
  v16 = objc_allocWithZone(NSAttributedString);
  v17 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1005CAB2C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = [v16 initWithString:v17 attributes:isa];

  return v19;
}

id sub_100A4CFE4()
{
  v0 = sub_1005B981C(&unk_1019F4D90);
  __chkstk_darwin(v0 - 8);
  v33 = &v33 - v1;
  v2 = sub_1005B981C(&unk_1019F4CD0);
  __chkstk_darwin(v2 - 8);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  v7 = sub_1005B981C(&unk_1019F4CE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for UIButton.Configuration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  static UIButton.Configuration.tinted()();

  UIButton.Configuration.title.setter();
  v17 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v17(v35, 0);
  v18 = objc_opt_self();
  v19 = [v18 whiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  UIConfigurationTextAttributesTransformer.init(_:)();
  v20 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  sub_100006370(0, &qword_1019F6190);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100006370(0, &qword_1019F6E10);
  (*(v11 + 16))(v13, v16, v10);
  v22 = v21;
  v23 = UIButton.init(configuration:primaryAction:)();
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [v18 blackColor];
  v25 = [v24 colorWithAlphaComponent:0.3];

  UIButton.configuration.getter();
  if ((*(v11 + 48))(v6, 1, v10))
  {
    sub_10000BE14(v6, v34, &unk_1019F4CD0);
    UIButton.configuration.setter();

    (*(v11 + 8))(v16, v10);
    sub_10000CAAC(v6, &unk_1019F4CD0);
  }

  else
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v25;
    v28 = v25;
    v29 = v33;
    v34 = v28;
    UIConfigurationColorTransformer.init(_:)();
    v30 = type metadata accessor for UIConfigurationColorTransformer();
    (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
    v31 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColorTransformer.setter();
    v31(v35, 0);
    UIButton.configuration.setter();

    (*(v11 + 8))(v16, v10);
  }

  return v23;
}

uint64_t sub_100A4D5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() systemFontOfSize:11.0 weight:UIFontWeightBold];
  sub_1005D9028();
  return AttributeContainer.subscript.setter();
}

void sub_100A4D670()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_stopButtonClickedHandler);
    v2 = Strong;
    sub_10067F2EC(v1);

    if (v1)
    {
      v1();
      sub_1000C1014(v1);
    }
  }
}

id sub_100A4D6FC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong state] == 1)
    {
      v5 = [objc_opt_self() blackColor];
      v6 = [v5 colorWithAlphaComponent:0.5];

      return v6;
    }

    else
    {
      v8 = a3;

      return v8;
    }
  }

  else
  {

    return a3;
  }
}

void sub_100A4D7F4()
{
  v1 = OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_contentView;
  v2 = [*(v0 + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_contentView) subviews];
  sub_100006370(0, &qword_1019F6D00);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v9 = [objc_allocWithZone(CNAvatarViewController) init];
  v10 = *(*(v0 + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_followingParticipant) + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact);
  if (v10)
  {
    sub_1005B981C(&unk_1019F4D60);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101465920;
    *(v11 + 32) = v10;
    sub_100006370(0, &qword_101A00EC0);
    v12 = v10;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 setContacts:isa];
  }

  v109 = v9;
  v14 = [v9 view];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(v0 + v1) addSubview:v14];
  v15 = [v14 leadingAnchor];
  v16 = [*(v0 + v1) leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:8.0];

  [v17 setActive:1];
  v18 = [v14 widthAnchor];
  v19 = [v18 constraintEqualToConstant:26.0];

  [v19 setActive:1];
  v20 = [v14 heightAnchor];
  v21 = [v20 constraintEqualToConstant:26.0];

  [v21 setActive:1];
  v22 = [v14 centerYAnchor];
  v23 = [*(v0 + v1) centerYAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  [v24 setActive:1];
  v25 = [objc_allocWithZone(UIStackView) init];
  [v25 setAlignment:3];
  [v25 setAxis:1];
  [v25 setDistribution:1];
  [v25 setSpacing:3.0];
  v26 = v25;
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v112 = v26;
  [*(v0 + v1) addSubview:v26];
  v27 = sub_100A4E878();
  [v27 setNumberOfLines:2];
  v28 = sub_100A4CCFC();
  v110 = v14;
  v111 = v0;
  v107 = v1;
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v30 = objc_opt_self();
    v31 = [v30 _atomicIncrementAssertCount];
    v113 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v113);
    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    v34 = [v33 lastPathComponent];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v38 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v31;
    v40 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v40;
    v41 = sub_1005CF04C();
    *(inited + 104) = v41;
    *(inited + 72) = v32;
    *(inited + 136) = &type metadata for String;
    v42 = sub_1000053B0();
    *(inited + 112) = v35;
    *(inited + 120) = v37;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v42;
    *(inited + 152) = 251;
    v43 = v113;
    *(inited + 216) = v40;
    *(inited + 224) = v41;
    *(inited + 192) = v43;
    v44 = v32;
    v45 = v43;
    v46 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v47 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v47, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v48 = swift_allocObject();
    v48[2] = 8;
    v48[3] = 0;
    v48[4] = 0;
    v48[5] = 0;
    v49 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    [v30 handleFailureInFunction:v50 file:v51 lineNumber:251 isFatal:0 format:v52 args:v49];

    v53 = objc_allocWithZone(NSAttributedString);
    v54 = String._bridgeToObjectiveC()();
    v29 = [v53 initWithString:v54];

    v14 = v110;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = Strong;
    sub_100CC4944(v27, 1);
  }

  [v27 setAttributedText:{v29, v107}];
  v57 = [v112 leadingAnchor];
  v58 = [v14 trailingAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:8.0];

  [v59 setActive:1];
  v60 = [v112 heightAnchor];
  v61 = [v60 constraintEqualToConstant:24.0];

  [v61 setActive:1];
  v62 = [v112 centerYAnchor];
  v63 = [*(v111 + v108) centerYAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  [v64 setActive:1];
  [v112 addArrangedSubview:v27];
  [v112 setShowsLargeContentViewer:1];
  v65 = [v29 string];
  if (!v65)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = String._bridgeToObjectiveC()();
  }

  [v112 setLargeContentTitle:v65];

  v66 = [objc_allocWithZone(UILargeContentViewerInteraction) initWithDelegate:v111];
  [v112 addInteraction:v66];

  [v27 setTextAlignment:0];
  v67 = sub_100A4CFE4();
  [v67 setIsAccessibilityElement:1];
  v68 = String._bridgeToObjectiveC()();
  [v67 setAccessibilityLabel:v68];

  v69 = UIAccessibilityTraitButton;
  v70 = [v67 accessibilityTraits];
  if ((v69 & ~v70) != 0)
  {
    v71 = v69;
  }

  else
  {
    v71 = 0;
  }

  [v67 setAccessibilityTraits:v71 | v70];

  [v67 setShowsLargeContentViewer:1];
  v72 = String._bridgeToObjectiveC()();
  [v67 setLargeContentTitle:v72];

  v73 = [objc_allocWithZone(UILargeContentViewerInteraction) initWithDelegate:v111];
  [v67 addInteraction:v73];

  [*(v111 + v108) addSubview:v67];
  v74 = [v67 leadingAnchor];
  v75 = [v112 trailingAnchor];

  v76 = [v74 constraintEqualToAnchor:v75 constant:8.0];
  [v76 setActive:1];

  v77 = [v67 trailingAnchor];
  v78 = [*(v111 + v108) trailingAnchor];
  v79 = [v77 constraintEqualToAnchor:v78 constant:-8.0];

  [v79 setActive:1];
  v80 = [v67 heightAnchor];
  v81 = [v80 constraintEqualToConstant:24.0];

  [v81 setActive:1];
  v82 = [v67 centerYAnchor];
  v83 = [*(v111 + v108) centerYAnchor];
  v84 = [v82 constraintEqualToAnchor:v83];

  [v84 setActive:1];
  v85 = OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hudView;
  v86 = [*(v111 + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hudView) leadingAnchor];
  v87 = OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_containerView;
  v88 = [*(v111 + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_containerView) leadingAnchor];
  v89 = [v86 constraintEqualToAnchor:v88];

  [v89 setActive:1];
  v90 = [*(v111 + v85) heightAnchor];
  v91 = [v90 constraintEqualToConstant:40.0];

  [v91 setActive:1];
  v92 = [*(v111 + v85) topAnchor];
  v93 = [*(v111 + v87) topAnchor];
  v94 = [v92 constraintEqualToAnchor:v93];

  [v94 setActive:1];
  v95 = [*(v111 + v85) trailingAnchor];
  v96 = [*(v111 + v87) trailingAnchor];
  v97 = [v95 constraintEqualToAnchor:v96];

  [v97 setActive:1];
  v98 = OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_height;
  *(v111 + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_height) = 0x404C000000000000;
  v99 = [*(v111 + v87) heightAnchor];
  v100 = [v99 constraintEqualToConstant:*(v111 + v98)];

  [v100 setActive:1];
  v101 = *(v111 + v87);
  v102 = *(v111 + v98);
  v103 = objc_opt_self();
  v104 = v101;
  v105 = [v103 constraintWithItem:v104 attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:v102];

  v106 = *(v111 + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_heightConstraint);
  *(v111 + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_heightConstraint) = v105;
}

id sub_100A4E878()
{
  v1 = OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController____lazy_storage____label;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController____lazy_storage____label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController____lazy_storage____label);
  }

  else
  {
    sub_100A4C94C();
    v4 = sub_10109C74C();

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_100A4E908(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7)
{
  v14 = objc_allocWithZone(type metadata accessor for CRLPersistentFollowHUDController());
  swift_getObjectType();
  v15 = a4;
  swift_unknownObjectRetain();
  v16 = a2;
  swift_unknownObjectRetain();
  v17 = sub_100A4F008(a1, v16, a3, a4, v14);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v18 = &v17[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_canvasWidth];
  *v18 = a7;
  *(v18 + 8) = 0;
  v19 = &v17[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_stopButtonClickedHandler];
  v20 = *&v17[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_stopButtonClickedHandler];
  *v19 = a5;
  v19[1] = a6;
  v21 = v17;
  sub_10067F2EC(a5);
  v22 = sub_1000C1014(v20);
  if ((v21[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_setupDone] & 1) == 0)
  {
    v21[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_setupDone] = 1;
    sub_10105B418(v22);
    [*&v21[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_containerView] addSubview:*&v21[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hudView]];
    sub_100A4D7F4();
  }

  v23 = sub_100A4C94C();
  v25 = v24;

  sub_1000C1014(a5);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v26 = &v21[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_accessibilityAnnouncement];
  *v26 = v23;
  v26[1] = v25;

  return v21;
}

id sub_100A4EBF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLPersistentFollowHUDController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLPersistentFollowHUDController()
{
  result = qword_101A0DE40;
  if (!qword_101A0DE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100A4EDEC()
{
  sub_10000D990();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_100A4F008(uint64_t a1, void *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_type] = 0;
  swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_minimumShowDuration] = 0;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_maximumShowDuration] = 0;
  v7 = OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_timeStartedShowing;
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(&a5[v7], 1, 1, v8);
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hideTimer] = 0;
  a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_showing] = 0;
  a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_animating] = 0;
  a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hiding] = 0;
  v9 = &a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_accessibilityAnnouncement];
  *v9 = 0;
  v9[1] = 0;
  a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_swipable] = 0;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_swipeGestureRecognizer] = 0;
  a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hideOnTouch] = 0;
  a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_setupDone] = 0;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_height] = 0x4045000000000000;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_width] = 0;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_heightConstraint] = 0;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_constraints] = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v10 = &a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_stopButtonClickedHandler];
  *v10 = 0;
  v10[1] = 0;
  v11 = &a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_canvasWidth];
  *v11 = 0;
  v11[8] = 1;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController____lazy_storage___participantColor] = 0;
  v12 = &a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_stopFollowingString];
  v13 = [objc_opt_self() mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *v12 = v17;
  v12[1] = v19;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController____lazy_storage____label] = 0;
  swift_unknownObjectWeakAssign();
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_followingParticipant] = a2;
  swift_unknownObjectWeakAssign();
  v20 = objc_allocWithZone(UIView);
  v21 = a2;
  v22 = [v20 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = [objc_allocWithZone(type metadata accessor for HUDView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = v22;
  sub_1005CAFC0(v22);
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_contentView] = v24;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hudView] = v23;
  v25 = objc_allocWithZone(UIView);
  v26 = v24;
  v27 = v23;
  v28 = [v25 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_containerView] = v28;
  swift_unknownObjectWeakAssign();
  v32.receiver = a5;
  v32.super_class = type metadata accessor for CRLPersistentFollowHUDController();
  v29 = objc_msgSendSuper2(&v32, "init");

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v29;
}

id sub_100A4F410()
{
  v1 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController8ListItem____lazy_storage___listViewController;
  v2 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController8ListItem____lazy_storage___listViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController8ListItem____lazy_storage___listViewController);
  }

  else
  {
    v4 = [objc_allocWithZone(_s8ListItemC18ListViewControllerCMa()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100A4F480()
{
  qword_101AD7068 = sub_100076B60(4.0);
  qword_101AD7070 = v0;
  qword_101AD7078 = v1;
  qword_101AD7080 = v2;
}

id sub_100A4F4CC()
{
  if (_UISolariumEnabled())
  {
    result = [objc_opt_self() quaternaryLabelColor];
  }

  else
  {
    result = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.15];
  }

  qword_101AD7090 = result;
  return result;
}

uint64_t sub_100A4F538()
{
  result = _UISolariumEnabled();
  v1 = 0.5;
  if (result)
  {
    v1 = 1.0;
  }

  qword_101AD7098 = *&v1;
  return result;
}

id sub_100A4F580()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.08];
  qword_101AD70A8 = result;
  return result;
}

UIFontWeight sub_100A4F5D8()
{
  result = UIFontWeightRegular;
  qword_101AD70B8 = *&UIFontWeightRegular;
  return result;
}

UIFontWeight sub_100A4F61C()
{
  result = UIFontWeightRegular;
  qword_101AD70D0 = *&UIFontWeightRegular;
  return result;
}

UIFontWeight sub_100A4F660()
{
  result = UIFontWeightRegular;
  qword_101AD70E8 = *&UIFontWeightRegular;
  return result;
}

uint64_t sub_100A4F68C()
{
  v1 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController____lazy_storage___textLayoutBuilder;
  v2 = *&v0[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController____lazy_storage___textLayoutBuilder];
  v3 = v2;
  if (v2 == 1)
  {
    _s8ListItemC17TextLayoutBuilderCMa();
    v3 = swift_allocObject();
    *(v3 + 24) = 0u;
    *(v3 + 40) = 0u;
    *(v3 + 56) = 0u;
    *(v3 + 72) = 0u;
    *(v3 + 88) = 0u;
    *(v3 + 104) = 0u;
    *(v3 + 120) = 0u;
    *(v3 + 136) = 0u;
    *(v3 + 152) = 0u;
    *(v3 + 168) = 0u;
    *(v3 + 184) = 0u;
    *(v3 + 200) = 0u;
    *(v3 + 216) = 0u;
    *(v3 + 232) = 0u;
    *(v3 + 16) = v0;
    *&v0[v1] = v3;
    v4 = v0;

    sub_100051940(1);
  }

  sub_100051950(v2);
  return v3;
}

id sub_100A4F744()
{
  sub_100EE00C4();
  v1 = *(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_roundedCornersContainerView);
  [v1 addLayoutGuide:*(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide)];
  [v1 addLayoutGuide:*(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_primaryRowLayoutGuide)];
  [v1 addLayoutGuide:*(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_secondaryRowLayoutGuide)];
  v2 = *(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_tertiaryRowLayoutGuide);

  return [v1 addLayoutGuide:v2];
}

void sub_100A4F7F4(uint64_t a1)
{
  v29 = [*(a1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_roundedCornersContainerView) layer];
  v2 = *(a1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView);
  v3 = [v2 layer];
  v4 = [*(a1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailBackdropView) layer];
  v30 = [*(a1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailContainerView) layer];
  v5 = *(a1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_favoriteButton);
  v6 = *(v5 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_size);
  *(v5 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_size) = 0;
  if (v6 == 1)
  {
    sub_100EE402C();
  }

  [v2 setContentMode:1];
  LODWORD(v7) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v7];
  if (qword_1019F14B8 != -1)
  {
    swift_once();
  }

  v8 = [qword_101AD6208 CGColor];
  [v3 setBackgroundColor:v8];

  if (qword_1019F1AE8 != -1)
  {
    swift_once();
  }

  v9 = [qword_101AD7088 CGColor];
  [v4 setBackgroundColor:v9];

  [v4 setMasksToBounds:1];
  [v4 setCornerRadius:5.0];
  if (qword_1019F1B00 != -1)
  {
    swift_once();
  }

  [v4 setCornerCurve:qword_101AD70A0];
  if (qword_1019F1AF0 != -1)
  {
    swift_once();
  }

  v10 = [qword_101AD7090 CGColor];
  [v4 setBorderColor:v10];

  if (qword_1019F1AF8 != -1)
  {
    swift_once();
  }

  [v4 setBorderWidth:*&qword_101AD7098];
  [v30 setMasksToBounds:0];
  [v30 setCornerRadius:5.0];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [v30 setShadowRadius:1.0];
    if (qword_1019F1B08 != -1)
    {
      swift_once();
    }

    v11 = [qword_101AD70A8 CGColor];
    [v30 setShadowColor:v11];

    [v30 setShadowOffset:{0.0, 1.0}];
    LODWORD(v12) = 1.0;
    [v30 setShadowOpacity:v12];
  }

  v13 = *(a1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_boardTitleLabel);
  if (qword_1019F1B10 != -1)
  {
    swift_once();
  }

  v14 = v3;
  v15 = qword_101AD70B0;
  if (qword_1019F1B18 != -1)
  {
    swift_once();
  }

  v16 = objc_opt_self();
  v17 = [v16 preferredFontDescriptorWithTextStyle:v15];
  v18 = objc_opt_self();
  [v17 pointSize];
  v19 = [v18 systemFontOfSize:? weight:?];

  [v13 setFont:v19];
  if (qword_1019F1B20 != -1)
  {
    swift_once();
  }

  [v13 setTextColor:qword_101AD70C0];
  v20 = *(a1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel);
  if (qword_1019F1B28 != -1)
  {
    swift_once();
  }

  if (qword_1019F1B30 != -1)
  {
    swift_once();
  }

  v21 = [v16 preferredFontDescriptorWithTextStyle:?];
  [v21 pointSize];
  v22 = [v18 systemFontOfSize:? weight:?];

  [v20 setFont:v22];
  if (qword_1019F1B38 != -1)
  {
    swift_once();
  }

  [v20 setTextColor:qword_101AD70D8];
  LODWORD(v23) = 1132068864;
  [v20 setContentCompressionResistancePriority:0 forAxis:v23];
  v24 = *(a1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_lastEditedTimestampLabel);
  if (qword_1019F1B40 != -1)
  {
    swift_once();
  }

  if (qword_1019F1B48 != -1)
  {
    swift_once();
  }

  v25 = [v16 preferredFontDescriptorWithTextStyle:?];
  [v25 pointSize];
  v26 = [v18 systemFontOfSize:? weight:?];

  [v24 setFont:v26];
  if (qword_1019F1B50 != -1)
  {
    swift_once();
  }

  [v24 setTextColor:qword_101AD70F0];
  LODWORD(v27) = 1148846080;
  [v24 setContentHuggingPriority:0 forAxis:v27];
  LODWORD(v28) = 1148846080;
  [v24 setContentCompressionResistancePriority:0 forAxis:v28];
}

void sub_100A5000C()
{
  v1 = v0;
  type metadata accessor for UILayoutPriority(0);
  sub_1005ED390();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CE00;
  v3 = *(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_selectionStateBadge);
  v4 = [v3 leadingAnchor];
  v5 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_roundedCornersContainerView);
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6 constant:0.0];

  *(inited + 32) = v7;
  v8 = [v3 centerYAnchor];
  v9 = [v5 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(inited + 40) = v10;
  sub_100798D30(inited);
  v11 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_favoriteButton);
  v12 = [v11 centerYAnchor];
  v13 = [v5 centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  v15 = [v11 leadingAnchor];
  v16 = [v3 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:10.0];

  v18 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_isInMultipleSelectionModeConstraint);
  *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_isInMultipleSelectionModeConstraint) = v17;

  v19 = [v11 leadingAnchor];
  v89 = v5;
  v20 = [v5 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:0.0];

  v22 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_isNotInMultipleSelectionModeConstraint);
  *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_isNotInMultipleSelectionModeConstraint) = v21;
  v23 = v21;

  LODWORD(v24) = v90;
  [v23 setPriority:v24];
  v88 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailContainerView);
  v25 = [v88 leadingAnchor];
  v26 = [v11 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:4.0];

  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_10146E8A0;
  *(v28 + 32) = v14;
  *(v28 + 40) = v23;
  *(v28 + 48) = v27;
  v87 = v23;
  v85 = v14;
  v86 = v27;
  sub_100798D30(v28);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_101490C70;
  v30 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView);
  v31 = [v30 widthAnchor];
  v32 = [v30 heightAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 multiplier:1.77777778];

  *(v29 + 32) = v33;
  v34 = [v30 topAnchor];
  v35 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailBackdropView);
  v36 = [v35 topAnchor];
  if (qword_1019F1AE0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v37 = [v34 constraintEqualToAnchor:v36 constant:*&qword_101AD7068];

  *(v29 + 40) = v37;
  v38 = [v30 leadingAnchor];
  v39 = [v35 leadingAnchor];
  v40 = qword_101AD7070;
  v41 = qword_101AD7080;
  if (sub_100076BAC())
  {
    v42 = *&v40;
  }

  else
  {
    v42 = *&v41;
  }

  v43 = [v38 constraintEqualToAnchor:v39 constant:v42];

  *(v29 + 48) = v43;
  v44 = [v35 trailingAnchor];
  v45 = [v30 trailingAnchor];
  if (sub_100076BAC())
  {
    v46 = *&v41;
  }

  else
  {
    v46 = *&v40;
  }

  v47 = [v44 constraintEqualToAnchor:v45 constant:v46];

  *(v29 + 56) = v47;
  v48 = [v35 bottomAnchor];
  v49 = [v30 bottomAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:*&qword_101AD7078];

  *(v29 + 64) = v50;
  v51 = [v35 heightAnchor];
  v52 = [v51 constraintEqualToConstant:48.0];

  *(v29 + 72) = v52;
  v53 = [v88 topAnchor];
  v54 = [v35 topAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v29 + 80) = v55;
  v56 = [v88 leadingAnchor];
  v57 = [v35 leadingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];

  *(v29 + 88) = v58;
  v59 = [v88 trailingAnchor];
  v60 = [v35 trailingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v29 + 96) = v61;
  v62 = [v88 bottomAnchor];
  v63 = [v35 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v29 + 104) = v64;
  v65 = [v88 centerYAnchor];
  v30 = v89;
  v66 = [v89 centerYAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  *(v29 + 112) = v67;
  v68 = [v88 topAnchor];
  v69 = [v89 topAnchor];
  v70 = [v68 constraintGreaterThanOrEqualToAnchor:v69 constant:6.0];

  *(v29 + 120) = v70;
  v71 = [v89 bottomAnchor];
  v34 = [v88 bottomAnchor];
  v72 = [v71 constraintGreaterThanOrEqualToAnchor:v34 constant:6.0];

  *(v29 + 128) = v72;
  v36 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v36)
  {
    v35 = 0;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v35 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v73 = *(v29 + 8 * v35 + 32);
      }

      v34 = v73;
      ++v35;
      LODWORD(v74) = v90;
      [v73 setPriority:v74];
    }

    while (v36 != v35);
  }

  sub_100798D30(v29);
  v75 = swift_initStackObject();
  *(v75 + 16) = xmmword_10146CE00;
  v76 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_lastEditedTimestampLabel);
  v77 = [v76 centerYAnchor];
  v78 = [v89 centerYAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];

  *(v75 + 32) = v79;
  v80 = [v89 trailingAnchor];
  v81 = [v76 trailingAnchor];
  v82 = [v80 constraintEqualToAnchor:v81 constant:18.0];

  *(v75 + 40) = v82;
  sub_100798D30(v75);
  v83 = objc_opt_self();
  sub_100006370(0, &qword_1019F4D70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v83 activateConstraints:isa];
}

void sub_100A50B38()
{
  v1 = v0;
  sub_100A4F7F4(v0);
  sub_100EE52BC();
  sub_100EE402C();
  sub_100EE1210();
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    goto LABEL_9;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (v10 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v12 != v13)
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_6;
      }

      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
      if (v30 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v32 != v33)
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v34)
        {
          v14 = 2;
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_11;
      }
    }

LABEL_9:

    goto LABEL_10;
  }

LABEL_6:

LABEL_10:
  v14 = 2;
LABEL_11:
  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146E8A0;
  v16 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_boardTitleLabel);
  *(inited + 32) = v16;
  v17 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel);
  *(inited + 40) = v17;
  v18 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_lastEditedTimestampLabel);
  *(inited + 48) = v18;
  v19 = inited & 0xC000000000000001;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  for (i = v20; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v24 = i;
    [i setNumberOfLines:v14];

    if (v19)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_27;
      }

      v25 = *(inited + 40);
    }

    v26 = v25;
    [v25 setNumberOfLines:v14];

    if (v19)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v27 = *(inited + 48);
      goto LABEL_20;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_20:
  v28 = v27;
  [v27 setNumberOfLines:v14];

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_100A51364(0);
}

uint64_t sub_100A50EB4()
{
  v1 = v0;
  result = sub_100A4F68C();
  if (!result)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v3 = sub_100A53970();

  if ((v3 & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = *(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController____lazy_storage___textLayoutBuilder);
  if (!v4)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = sub_100A53754();
  result = sub_100051940(v4);
  if ((v5 & 1) == 0)
  {
LABEL_12:
    v19 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController____lazy_storage___textLayoutBuilder;
    v20 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController____lazy_storage___textLayoutBuilder);
    if (v20)
    {

      v21 = sub_100A53970();
      result = sub_100051940(v20);
      if (v21)
      {
        v22 = v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem;
        if (swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      v23 = *(v1 + v19);
      if (v23)
      {

        v24 = sub_100A53754();
        sub_100051940(v23);
        v22 = v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (v24)
        {
          if (Strong)
          {
            v26 = *(v22 + 8);
            ObjectType = swift_getObjectType();
            v28 = (*(v26 + 168))(ObjectType, v26);
            goto LABEL_22;
          }
        }

        else if (Strong)
        {
LABEL_21:
          v30 = *(v22 + 8);
          v31 = swift_getObjectType();
          v28 = (*(v30 + 216))(v31, v30);
LABEL_22:
          v32 = v28;
          v33 = v29;
          swift_unknownObjectRelease();
          if (v33)
          {
            return v32;
          }
        }

LABEL_24:

        return 0;
      }

LABEL_29:
      __break(1u);
      return result;
    }

    goto LABEL_27;
  }

  v6 = v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem;
  if (!swift_unknownObjectWeakLoadStrong() || (v7 = *(v6 + 8), v8 = swift_getObjectType(), v9 = (*(v7 + 168))(v8, v7), v11 = v10, swift_unknownObjectRelease(), !v11))
  {

    v9 = 0;
  }

  v12._countAndFlagsBits = 2108704;
  v12._object = 0xE300000000000000;
  String.append(_:)(v12);

  if (!swift_unknownObjectWeakLoadStrong() || (v13 = *(v6 + 8), v14 = swift_getObjectType(), v15 = (*(v13 + 216))(v14, v13), v17 = v16, swift_unknownObjectRelease(), !v17))
  {

    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  return v9;
}

void sub_100A51174()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_lastEditedTimestampLabel);
  v3 = v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem;
  if (!swift_unknownObjectWeakLoadStrong() || (v4 = *(v3 + 8), ObjectType = swift_getObjectType(), (*(v4 + 168))(ObjectType, v4), v7 = v6, swift_unknownObjectRelease(), !v7))
  {
  }

  v8 = String._bridgeToObjectiveC()();

  [v2 setText:v8];

  if (sub_100A4F68C())
  {
    v9 = sub_100A53754();

    if (v9)
    {
      v10 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel);
      sub_100A50EB4();
      v11 = String._bridgeToObjectiveC()();

      [v10 setText:v11];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100A51364(char a1)
{
  v2 = v1;
  if (sub_100A4F68C())
  {
    v4 = sub_100A53754();

    v5 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_didUseCompactLayout;
    v6 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_didUseCompactLayout);
    if (v6 != 2 && ((v4 ^ v6) & 1) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController____lazy_storage___textLayoutBuilder);
    if (v7)
    {

      sub_100A518F8();
      sub_100A51AD8();
      sub_100A52F8C();
      sub_100A531B8(a1 & 1);
      sub_100A53560();
      sub_100051940(v7);
      v8 = *(v2 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel);
      sub_100A50EB4();
      v9 = String._bridgeToObjectiveC()();

      [v8 setText:v9];

LABEL_6:
      *(v2 + v5) = v4 & 1;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_100A514CC(char a1)
{
  v2 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_isInMultipleSelectionMode;
  *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_isInMultipleSelectionMode) = a1;
  [*(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_selectionStateBadge) setHidden:(a1 & 1) == 0];
  result = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_isInMultipleSelectionModeConstraint);
  if (result)
  {
    v4 = *(v1 + v2);

    return [result setActive:v4];
  }

  return result;
}

id sub_100A51558()
{
  *&v0[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController____lazy_storage___textLayoutBuilder] = 1;
  v1 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide;
  *&v0[v1] = [objc_allocWithZone(UILayoutGuide) init];
  v2 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_primaryRowLayoutGuide;
  *&v0[v2] = [objc_allocWithZone(UILayoutGuide) init];
  v3 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_secondaryRowLayoutGuide;
  *&v0[v3] = [objc_allocWithZone(UILayoutGuide) init];
  v4 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_tertiaryRowLayoutGuide;
  *&v0[v4] = [objc_allocWithZone(UILayoutGuide) init];
  *&v0[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_isInMultipleSelectionModeConstraint] = 0;
  *&v0[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_isNotInMultipleSelectionModeConstraint] = 0;
  v0[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_didUseCompactLayout] = 2;
  v6.receiver = v0;
  v6.super_class = _s8ListItemC18ListViewControllerCMa();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_100A5166C(void *a1)
{
  *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController____lazy_storage___textLayoutBuilder] = 1;
  v3 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide;
  *&v1[v3] = [objc_allocWithZone(UILayoutGuide) init];
  v4 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_primaryRowLayoutGuide;
  *&v1[v4] = [objc_allocWithZone(UILayoutGuide) init];
  v5 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_secondaryRowLayoutGuide;
  *&v1[v5] = [objc_allocWithZone(UILayoutGuide) init];
  v6 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_tertiaryRowLayoutGuide;
  *&v1[v6] = [objc_allocWithZone(UILayoutGuide) init];
  *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_isInMultipleSelectionModeConstraint] = 0;
  *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_isNotInMultipleSelectionModeConstraint] = 0;
  v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_didUseCompactLayout] = 2;
  v9.receiver = v1;
  v9.super_class = _s8ListItemC18ListViewControllerCMa();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

void sub_100A517B4()
{
  sub_100051940(*(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController____lazy_storage___textLayoutBuilder));

  v1 = *(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_isNotInMultipleSelectionModeConstraint);
}

uint64_t sub_100A518F8()
{
  v1 = v0;
  v20 = _swiftEmptySetSingleton;
  sub_1005B981C(&unk_101A23C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v3 = sub_100A53B50();
  v4 = sub_100006370(0, &qword_1019F4D70);
  *(inited + 56) = v4;
  *(inited + 32) = v3;
  v5 = sub_100A53C20();
  *(inited + 88) = v4;
  *(inited + 64) = v5;
  v6 = sub_100A53CE8();
  *(inited + 120) = v4;
  *(inited + 96) = v6;
  v7 = sub_100A558E4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1006375B0(v7);
  if (sub_100A53754())
  {
    v8 = sub_100A53E84();
  }

  else
  {
    v8 = sub_100A53DB4();
  }

  sub_100E7158C(&v19, v8);

  v9 = v20;
  sub_1005B981C(&unk_1019F4D60);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_10147AD40;
  v11 = v1[3];
  *(v10 + 32) = v11;
  v12 = v1[4];
  *(v10 + 40) = v12;
  v13 = v1[5];
  *(v10 + 48) = v13;
  v14 = v11;
  v15 = v12;
  v16 = v13;
  *(v10 + 56) = sub_100A53DB4();
  *(v10 + 64) = sub_100A53E84();
  v17 = sub_100E94B24(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_100A55A20(v9, v17);
}

uint64_t sub_100A51AD8()
{
  v150 = _swiftEmptySetSingleton;
  v1 = sub_100A52DE0();
  v2 = v1;
  v147 = v0;
  if (v1 >> 62)
  {
LABEL_53:
    v1 = _CocoaArrayWrapper.endIndex.getter();
    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v3 = v1;
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v144 = v3 - 1;
      v4 = sub_100006370(0, &qword_101A0E490);
      v5 = 0;
      v145 = v2 & 0xC000000000000001;
      v6 = *(v147 + 16);
      v142 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_primaryRowLayoutGuide;
      v132 = v2 & 0xFFFFFFFFFFFFFF8;
      v138 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_secondaryRowLayoutGuide;
      v136 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_tertiaryRowLayoutGuide;
      v7 = (v2 + 40);
      v137 = xmmword_10146BDE0;
      v133 = xmmword_10146CA70;
      v134 = v2;
      v143 = v3;
      v139 = v6;
      v140 = v4;
      while (1)
      {
        v11 = v5 + 1;
        v148 = v7;
        if (v145)
        {
          break;
        }

        v12 = *(v7 - 1);
        if (v5 >= v144)
        {
          v13 = 0;
          if (!v5)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v13 = *v7;
          v14 = *v7;
          if (!v5)
          {
LABEL_16:
            v15 = v2;
            v16 = 0;
            goto LABEL_23;
          }
        }

        if (v5 > *(v132 + 16))
        {
          __break(1u);
          goto LABEL_53;
        }

        v15 = v2;
        v16 = *(v7 - 2);
LABEL_23:
        v17 = *(v6 + v142);
        v18 = v12;
        v19 = v17;
        LOBYTE(v17) = static NSObject.== infix(_:_:)();

        if ((v17 & 1) == 0)
        {
          v28 = *(v6 + v138);
          v18 = v18;
          v29 = v28;
          LOBYTE(v28) = static NSObject.== infix(_:_:)();

          if (v28)
          {
            v30 = sub_100A5446C();
            sub_1006375B0(v30);
            if (v16)
            {
              if (v13)
              {
                goto LABEL_30;
              }

LABEL_41:
              v69 = sub_100A54678();
              sub_100E7158C(&v149, v69);
            }

            else
            {
              v68 = sub_100A544E8();
              sub_100E7158C(&v149, v68);

              if (!v13)
              {
                goto LABEL_41;
              }

LABEL_30:
              v31 = *(v6 + v136);
              v32 = v13;
              v33 = v31;
              LOBYTE(v31) = static NSObject.== infix(_:_:)();

              if ((v31 & 1) == 0)
              {
                v135 = v32;
                v146 = v16;
                v141 = v11;
                v131 = objc_opt_self();
                v70 = [v131 _atomicIncrementAssertCount];
                v149 = [objc_allocWithZone(NSString) init];
                sub_100604538(_swiftEmptyArrayStorage, &v149);
                StaticString.description.getter();
                v130 = String._bridgeToObjectiveC()();

                StaticString.description.getter();
                v71 = String._bridgeToObjectiveC()();

                v72 = [v71 lastPathComponent];

                v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v75 = v74;

                if (qword_1019F20A0 != -1)
                {
                  swift_once();
                }

                v76 = static OS_os_log.crlAssert;
                sub_1005B981C(&qword_1019F54E0);
                inited = swift_initStackObject();
                *(inited + 16) = v133;
                *(inited + 56) = &type metadata for Int32;
                *(inited + 64) = &protocol witness table for Int32;
                *(inited + 32) = v70;
                v78 = sub_100006370(0, &qword_1019F4D30);
                *(inited + 96) = v78;
                v79 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
                *(inited + 104) = v79;
                v80 = v130;
                *(inited + 72) = v130;
                *(inited + 136) = &type metadata for String;
                v81 = sub_1000053B0();
                *(inited + 112) = v73;
                *(inited + 120) = v75;
                *(inited + 176) = &type metadata for UInt;
                *(inited + 144) = v81;
                *(inited + 152) = 965;
                v82 = v149;
                *(inited + 216) = v78;
                *(inited + 224) = v79;
                *(inited + 184) = &protocol witness table for UInt;
                *(inited + 192) = v82;
                v83 = v80;
                v84 = v82;
                v85 = static os_log_type_t.error.getter();
                sub_100005404(v76, &_mh_execute_header, v85, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
                swift_setDeallocating();
                sub_1005B981C(&unk_1019F5670);
                swift_arrayDestroy();
                v86 = static os_log_type_t.error.getter();
                sub_100005404(v76, &_mh_execute_header, v86, "Unknown layout guide", 20, 2, _swiftEmptyArrayStorage);

                type metadata accessor for __VaListBuilder();
                v87 = swift_allocObject();
                v87[2] = 8;
                v87[3] = 0;
                v87[4] = 0;
                v87[5] = 0;
                v88 = __VaListBuilder.va_list()();
                StaticString.description.getter();
                v89 = String._bridgeToObjectiveC()();

                StaticString.description.getter();
                v90 = String._bridgeToObjectiveC()();

                StaticString.description.getter();
                v91 = String._bridgeToObjectiveC()();

                [v131 handleFailureInFunction:v89 file:v90 lineNumber:965 isFatal:0 format:v91 args:v88];
LABEL_49:

LABEL_50:
                v2 = v134;
                v10 = v143;
                v6 = v139;
                v9 = v148;
                v11 = v141;
                goto LABEL_9;
              }

              v34 = sub_100A545AC();
              sub_100E7158C(&v149, v34);
            }
          }

          else
          {
            v35 = *(v6 + v136);
            v36 = v18;
            v37 = v35;
            LOBYTE(v35) = static NSObject.== infix(_:_:)();
            v135 = v36;

            if ((v35 & 1) == 0)
            {
              v146 = v16;
              v141 = v11;
              v131 = objc_opt_self();
              v46 = [v131 _atomicIncrementAssertCount];
              v149 = [objc_allocWithZone(NSString) init];
              sub_100604538(_swiftEmptyArrayStorage, &v149);
              StaticString.description.getter();
              v130 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v47 = String._bridgeToObjectiveC()();

              v48 = [v47 lastPathComponent];

              v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v51 = v50;

              if (qword_1019F20A0 != -1)
              {
                swift_once();
              }

              v52 = static OS_os_log.crlAssert;
              sub_1005B981C(&qword_1019F54E0);
              v53 = swift_initStackObject();
              *(v53 + 16) = v133;
              *(v53 + 56) = &type metadata for Int32;
              *(v53 + 64) = &protocol witness table for Int32;
              *(v53 + 32) = v46;
              v54 = sub_100006370(0, &qword_1019F4D30);
              *(v53 + 96) = v54;
              v55 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
              *(v53 + 104) = v55;
              v56 = v130;
              *(v53 + 72) = v130;
              *(v53 + 136) = &type metadata for String;
              v57 = sub_1000053B0();
              *(v53 + 112) = v49;
              *(v53 + 120) = v51;
              *(v53 + 176) = &type metadata for UInt;
              *(v53 + 144) = v57;
              *(v53 + 152) = 979;
              v58 = v149;
              *(v53 + 216) = v54;
              *(v53 + 224) = v55;
              *(v53 + 184) = &protocol witness table for UInt;
              *(v53 + 192) = v58;
              v59 = v56;
              v60 = v58;
              v61 = static os_log_type_t.error.getter();
              sub_100005404(v52, &_mh_execute_header, v61, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v53);
              swift_setDeallocating();
              sub_1005B981C(&unk_1019F5670);
              swift_arrayDestroy();
              v62 = static os_log_type_t.error.getter();
              sub_100005404(v52, &_mh_execute_header, v62, "Unknown layout guide", 20, 2, _swiftEmptyArrayStorage);

              type metadata accessor for __VaListBuilder();
              v63 = swift_allocObject();
              v63[2] = 8;
              v63[3] = 0;
              v63[4] = 0;
              v63[5] = 0;
              v64 = __VaListBuilder.va_list()();
              StaticString.description.getter();
              v65 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v66 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v67 = String._bridgeToObjectiveC()();

              [v131 handleFailureInFunction:v65 file:v66 lineNumber:979 isFatal:0 format:v67 args:v64];

              goto LABEL_50;
            }

            sub_1005B981C(&unk_101A23C50);
            v38 = swift_initStackObject();
            *(v38 + 16) = v137;
            v39 = sub_100A548C8();
            *(v38 + 56) = sub_1005B981C(&qword_101A0E488);
            *(v38 + 32) = v39;
            v40 = sub_100A54A08();
            *(v38 + 88) = sub_100006370(0, &qword_1019F4D70);
            *(v38 + 64) = v40;
            v41 = sub_100A558E4(v38);
            swift_setDeallocating();
            swift_arrayDestroy();
            sub_1006375B0(v41);
            if (v16)
            {
            }

            else
            {
              v111 = sub_100A54944();
              sub_100E7158C(&v149, v111);

LABEL_5:
            }

            v6 = v139;
          }

          v9 = v148;
LABEL_8:
          v10 = v143;
          v2 = v15;
          goto LABEL_9;
        }

        v146 = v16;
        sub_1005B981C(&unk_101A23C50);
        v20 = swift_initStackObject();
        *(v20 + 16) = v137;
        v21 = sub_100A540D0();
        *(v20 + 56) = sub_1005B981C(&qword_101A0E488);
        *(v20 + 32) = v21;
        v22 = sub_100A5414C();
        *(v20 + 88) = sub_100006370(0, &qword_1019F4D70);
        *(v20 + 64) = v22;
        v23 = sub_100A558E4(v20);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_1006375B0(v23);
        if (!v13)
        {
          v8 = sub_100A543A8();
          sub_100E7158C(&v149, v8);

          goto LABEL_5;
        }

        v141 = v11;
        v24 = *(v139 + v138);
        v25 = v13;
        v26 = static NSObject.== infix(_:_:)();

        if (v26)
        {
          v27 = sub_100A54210();
          sub_100E7158C(&v149, v27);

          v6 = v139;
          v9 = v148;
          v11 = v141;
          goto LABEL_8;
        }

        v42 = *(v139 + v136);
        v43 = v25;
        v44 = v42;
        LOBYTE(v42) = static NSObject.== infix(_:_:)();

        if ((v42 & 1) == 0)
        {
          v135 = v43;
          v131 = objc_opt_self();
          v92 = [v131 _atomicIncrementAssertCount];
          v149 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v149);
          StaticString.description.getter();
          v130 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v93 = String._bridgeToObjectiveC()();

          v94 = [v93 lastPathComponent];

          v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v97 = v96;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v98 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          v99 = swift_allocObject();
          *(v99 + 16) = v133;
          *(v99 + 56) = &type metadata for Int32;
          *(v99 + 64) = &protocol witness table for Int32;
          *(v99 + 32) = v92;
          v100 = sub_100006370(0, &qword_1019F4D30);
          *(v99 + 96) = v100;
          v101 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
          *(v99 + 104) = v101;
          v102 = v130;
          *(v99 + 72) = v130;
          *(v99 + 136) = &type metadata for String;
          v103 = sub_1000053B0();
          *(v99 + 112) = v95;
          *(v99 + 120) = v97;
          *(v99 + 176) = &type metadata for UInt;
          *(v99 + 144) = v103;
          *(v99 + 152) = 948;
          v104 = v149;
          *(v99 + 216) = v100;
          *(v99 + 224) = v101;
          *(v99 + 184) = &protocol witness table for UInt;
          *(v99 + 192) = v104;
          v105 = v102;
          v106 = v104;
          v107 = static os_log_type_t.error.getter();
          sub_100005404(v98, &_mh_execute_header, v107, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v99);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v108 = static os_log_type_t.error.getter();
          sub_100005404(v98, &_mh_execute_header, v108, "Unknown layout guide", 20, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v109 = swift_allocObject();
          v109[2] = 8;
          v109[3] = 0;
          v109[4] = 0;
          v109[5] = 0;
          v110 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v89 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v90 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v91 = String._bridgeToObjectiveC()();

          [v131 handleFailureInFunction:v89 file:v90 lineNumber:948 isFatal:0 format:v91 args:v110];
          goto LABEL_49;
        }

        v6 = v139;
        v2 = v15;
        v45 = sub_100A542DC();
        sub_100E7158C(&v149, v45);

        v9 = v148;
        v11 = v141;
        v10 = v143;
LABEL_9:
        v7 = v9 + 1;
        v5 = v11;
        if (v10 == v11)
        {
          goto LABEL_56;
        }
      }

      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (v5 < v144)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (!v5)
        {
          goto LABEL_16;
        }

LABEL_18:
        v15 = v2;
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_23;
      }

      v13 = 0;
      if (v5)
      {
        goto LABEL_18;
      }

LABEL_22:
      v15 = v2;
      v16 = 0;
      goto LABEL_23;
    }
  }

LABEL_56:
  v112 = *(v147 + 16);
  v149 = *(v112 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_primaryRowLayoutGuide);
  __chkstk_darwin(v1);
  v129 = &v149;
  v114 = v113;
  v115 = sub_100C33540(sub_100A56310, v128, v2);

  if (v115)
  {
    v149 = *(v112 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_secondaryRowLayoutGuide);
    __chkstk_darwin(v116);
    v129 = &v149;
    v118 = v117;
    v119 = sub_100C33540(sub_100A5639C, v128, v2);

    if ((v119 & 1) == 0)
    {
      sub_1005B981C(&unk_101A23C50);
      v120 = swift_initStackObject();
      *(v120 + 16) = xmmword_10146BDE0;
      v121 = sub_100A5473C();
      v122 = sub_100006370(0, &qword_1019F4D70);
      *(v120 + 56) = v122;
      *(v120 + 32) = v121;
      v123 = sub_100A54804();
      *(v120 + 88) = v122;
      *(v120 + 64) = v123;
      v124 = sub_100A558E4(v120);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1006375B0(v124);
    }
  }

  else
  {
  }

  v125 = v150;
  v126 = sub_100A53F50();
  sub_100A55A20(v125, v126);
}

void *sub_100A52DE0()
{
  if (sub_10009CE54())
  {
    v1 = *(*(v0 + 16) + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_primaryRowLayoutGuide);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (sub_10009CE58())
  {
    v2 = *(*(v0 + 16) + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_secondaryRowLayoutGuide);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v3 = *(v0 + 16);
  if (*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionView))
  {
    v4 = *(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_tertiaryRowLayoutGuide);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100A52F8C()
{
  v1 = sub_10009CE54();
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_boardTitleLabel);
  v3 = ~v1;
  [v2 setHidden:(v1 & 1) == 0];
  if ((v3 & 1) == 0)
  {
    sub_1005B981C(&unk_101A23C50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C4D0;
    v5 = sub_100A54ACC();
    *(inited + 56) = sub_1005B981C(&qword_101A0E488);
    *(inited + 32) = v5;
    v6 = sub_100A54B6C();
    v7 = sub_100006370(0, &qword_1019F4D70);
    *(inited + 88) = v7;
    *(inited + 64) = v6;
    v8 = sub_100A54C34();
    *(inited + 120) = v7;
    *(inited + 96) = v8;
    v9 = sub_100A558E4(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1006375B0(v9);
  }

  sub_1005B981C(&unk_101A23C50);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_10146C4D0;
  v11 = sub_100A54ACC();
  *(v10 + 56) = sub_1005B981C(&qword_101A0E488);
  *(v10 + 32) = v11;
  v12 = sub_100A54B6C();
  v13 = sub_100006370(0, &qword_1019F4D70);
  *(v10 + 88) = v13;
  *(v10 + 64) = v12;
  v14 = sub_100A54C34();
  *(v10 + 120) = v13;
  *(v10 + 96) = v14;
  v15 = sub_100A558E4(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_100A55A20(_swiftEmptySetSingleton, v15);
}

uint64_t sub_100A531B8(char a1)
{
  v2 = v1;
  sub_1005B981C(&unk_101A23C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v5 = sub_100A54CFC();
  v6 = sub_1005B981C(&qword_101A0E488);
  *(inited + 56) = v6;
  *(inited + 32) = v5;
  v7 = sub_100A54D9C();
  v8 = sub_100006370(0, &qword_1019F4D70);
  *(inited + 88) = v8;
  *(inited + 64) = v7;
  v9 = sub_100A54E64();
  *(inited + 120) = v8;
  *(inited + 96) = v9;
  v10 = sub_100A558E4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1006375B0(v10);
  LOBYTE(v7) = sub_10009CE58();
  v11 = v2[2];
  v12 = *(v11 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel);
  if (v7)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }
  }

  else
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v13 = sub_100A53754();
  v14 = *(v11 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_lastEditedTimestampLabel);
  if (v13)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }
  }

  else
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100A560A8(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, a1 & 1);

  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_10146C4D0;
  v16 = v2[25];
  *(v15 + 56) = v6;
  *(v15 + 32) = v16;
  v17 = v2[26];
  *(v15 + 88) = v8;
  *(v15 + 64) = v17;
  v18 = v2[27];
  *(v15 + 120) = v8;
  *(v15 + 96) = v18;

  v19 = v17;
  v20 = v18;
  v21 = sub_100A558E4(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_100A55A20(_swiftEmptySetSingleton, v21);
}

uint64_t sub_100A53560()
{
  v1 = v0;
  [*(v0[2] + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionHostingView) setHidden:*(v0[2] + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionView) == 0];
  sub_1005B981C(&unk_101A23C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v3 = sub_100A54F2C();
  v4 = sub_1005B981C(&qword_101A0E488);
  *(inited + 56) = v4;
  *(inited + 32) = v3;
  v5 = sub_100A54FCC();
  v6 = sub_100006370(0, &qword_1019F4D70);
  *(inited + 88) = v6;
  *(inited + 64) = v5;
  v7 = sub_100A55094();
  *(inited + 120) = v6;
  *(inited + 96) = v7;
  v8 = sub_100A558E4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1006375B0(v8);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_10146C4D0;
  v10 = v1[28];
  *(v9 + 56) = v4;
  *(v9 + 32) = v10;
  v11 = v1[29];
  *(v9 + 88) = v6;
  *(v9 + 64) = v11;
  v12 = v1[30];
  *(v9 + 120) = v6;
  *(v9 + 96) = v12;

  v13 = v11;
  v14 = v12;
  v15 = sub_100A558E4(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_100A55A20(_swiftEmptySetSingleton, v15);
}

uint64_t sub_100A53754()
{
  v1 = *(v0 + 16);
  result = [v1 view];
  if (result)
  {
    v3 = result;
    v4 = [result traitCollection];

    LOBYTE(v3) = [v4 crl_isCompactWidth];
    if (v3)
    {
      return 1;
    }

    v5 = [objc_opt_self() sharedApplication];
    v6 = [v5 preferredContentSizeCategory];

    LOBYTE(v5) = UIContentSizeCategory.isAccessibilityCategory.getter();
    if (v5)
    {
      return 1;
    }

    result = [v1 view];
    if (result)
    {
      v7 = result;
      [result frame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v16.origin.x = v9;
      v16.origin.y = v11;
      v16.size.width = v13;
      v16.size.height = v15;
      return CGRectGetWidth(v16) < 450.0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100A538AC()
{
  v1 = [*(*(v0 + 16) + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_boardTitleLabel) text];
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (v3 == qword_101A229F8 ? (v7 = v5 == unk_101A22A00) : (v7 = 0), v7))
  {

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v9 = v8 ^ 1;
  return v9 & 1;
}

uint64_t sub_100A53970()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_12;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 216))(ObjectType, v2);
  v6 = v5;
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (v4 == qword_101A229F8 ? (v8 = v6 == unk_101A22A00) : (v8 = 0), v8))
  {

LABEL_12:
    v10 = 0;
    return v10 & 1;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v10 = v9 ^ 1;
  return v10 & 1;
}

uint64_t sub_100A53A50()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 216))(ObjectType, v2);
    v6 = v5;
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (v4 == qword_101A229F8 ? (v8 = v6 == unk_101A22A00) : (v8 = 0), v8))
      {
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v9 & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  return sub_100A53754();
}

id sub_100A53B50()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide) leadingAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailContainerView) trailingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:10.0];

    v7 = *(v0 + 24);
    *(v0 + 24) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_100A53C20()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide) centerYAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_roundedCornersContainerView) centerYAnchor];
    v6 = [v4 constraintLessThanOrEqualToAnchor:v5];

    v7 = *(v0 + 32);
    *(v0 + 32) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_100A53CE8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_roundedCornersContainerView) heightAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide) heightAnchor];
    v6 = [v4 constraintGreaterThanOrEqualToAnchor:v5 constant:18.0];

    v7 = *(v0 + 40);
    *(v0 + 40) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_100A53DB4()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_lastEditedTimestampLabel) leadingAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide) trailingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:20.0];

    v7 = *(v0 + 48);
    *(v0 + 48) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_100A53E84()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_roundedCornersContainerView) trailingAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide) trailingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:18.0];

    v7 = *(v0 + 56);
    *(v0 + 56) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

void *sub_100A53F50()
{
  sub_1005B981C(&unk_101A23C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101490C80;
  v1 = sub_100A540D0();
  v2 = sub_1005B981C(&qword_101A0E488);
  *(inited + 56) = v2;
  *(inited + 32) = v1;
  v3 = sub_100A5414C();
  v4 = sub_100006370(0, &qword_1019F4D70);
  *(inited + 88) = v4;
  *(inited + 64) = v3;
  v5 = sub_100A54210();
  *(inited + 120) = v4;
  *(inited + 96) = v5;
  v6 = sub_100A542DC();
  *(inited + 152) = v4;
  *(inited + 128) = v6;
  v7 = sub_100A543A8();
  *(inited + 184) = v4;
  *(inited + 160) = v7;
  v8 = sub_100A5446C();
  *(inited + 216) = v2;
  *(inited + 192) = v8;
  v9 = sub_100A544E8();
  *(inited + 248) = v4;
  *(inited + 224) = v9;
  v10 = sub_100A545AC();
  *(inited + 280) = v4;
  *(inited + 256) = v10;
  v11 = sub_100A54678();
  *(inited + 312) = v4;
  *(inited + 288) = v11;
  v12 = sub_100A5473C();
  *(inited + 344) = v4;
  *(inited + 320) = v12;
  v13 = sub_100A54804();
  *(inited + 376) = v4;
  *(inited + 352) = v13;
  v14 = sub_100A548C8();
  *(inited + 408) = v2;
  *(inited + 384) = v14;
  v15 = sub_100A54944();
  *(inited + 440) = v4;
  *(inited + 416) = v15;
  v16 = sub_100A54A08();
  *(inited + 472) = v4;
  *(inited + 448) = v16;
  v17 = sub_100A558E4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v17;
}

uint64_t sub_100A540D0()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = *(*(v0 + 16) + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_primaryRowLayoutGuide);
    sub_100A5515C(v2);
    v1 = v3;

    *(v0 + 64) = v1;
  }

  return v1;
}

id sub_100A5414C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_primaryRowLayoutGuide) topAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide) topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *(v0 + 72);
    *(v0 + 72) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_100A54210()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_primaryRowLayoutGuide) bottomAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_secondaryRowLayoutGuide) topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:-2.0];

    v7 = *(v0 + 80);
    *(v0 + 80) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_100A542DC()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 88);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_primaryRowLayoutGuide) bottomAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_tertiaryRowLayoutGuide) topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:-5.0];

    v7 = *(v0 + 88);
    *(v0 + 88) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_100A543A8()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_primaryRowLayoutGuide) bottomAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide) bottomAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *(v0 + 96);
    *(v0 + 96) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_100A5446C()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = *(*(v0 + 16) + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_secondaryRowLayoutGuide);
    sub_100A5515C(v2);
    v1 = v3;

    *(v0 + 104) = v1;
  }

  return v1;
}

id sub_100A544E8()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 112);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_secondaryRowLayoutGuide) topAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide) topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *(v0 + 112);
    *(v0 + 112) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_100A545AC()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 120);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_secondaryRowLayoutGuide) bottomAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_tertiaryRowLayoutGuide) topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:-5.0];

    v7 = *(v0 + 120);
    *(v0 + 120) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_100A54678()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 128);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_secondaryRowLayoutGuide) bottomAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide) bottomAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *(v0 + 128);
    *(v0 + 128) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_100A5473C()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide) bottomAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_secondaryRowLayoutGuide) topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *(v0 + 136);
    *(v0 + 136) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_100A54804()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 144);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide) leadingAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_secondaryRowLayoutGuide) leadingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *(v0 + 144);
    *(v0 + 144) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_100A548C8()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v2 = *(*(v0 + 16) + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_tertiaryRowLayoutGuide);
    sub_100A5515C(v2);
    v1 = v3;

    *(v0 + 152) = v1;
  }

  return v1;
}

id sub_100A54944()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 160);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_tertiaryRowLayoutGuide) topAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide) topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *(v0 + 160);
    *(v0 + 160) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_100A54A08()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 168);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_tertiaryRowLayoutGuide) bottomAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide) bottomAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *(v0 + 168);
    *(v0 + 168) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_100A54ACC()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = *(v2 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_primaryRowLayoutGuide);
    v4 = *(v2 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_boardTitleLabel);
    v5 = v3;
    sub_100A55E38(v4, v5);
    v1 = v6;

    *(v0 + 176) = v1;
  }

  return v1;
}

id sub_100A54B6C()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = *(v0 + 184);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_boardTitleLabel) leadingAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_primaryRowLayoutGuide) leadingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *(v0 + 184);
    *(v0 + 184) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_100A54C34()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = *(v0 + 192);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_boardTitleLabel) trailingAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_primaryRowLayoutGuide) trailingAnchor];
    v6 = [v4 constraintLessThanOrEqualToAnchor:v5];

    v7 = *(v0 + 192);
    *(v0 + 192) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_100A54CFC()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 200);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = *(v2 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_secondaryRowLayoutGuide);
    v4 = *(v2 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel);
    v5 = v3;
    sub_100A55E38(v4, v5);
    v1 = v6;

    *(v0 + 200) = v1;
  }

  return v1;
}

id sub_100A54D9C()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    v2 = *(v0 + 208);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel) leadingAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_secondaryRowLayoutGuide) leadingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *(v0 + 208);
    *(v0 + 208) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_100A54E64()
{
  v1 = *(v0 + 216);
  if (v1)
  {
    v2 = *(v0 + 216);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel) trailingAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_secondaryRowLayoutGuide) trailingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *(v0 + 216);
    *(v0 + 216) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_100A54F2C()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 224);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = *(v2 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_tertiaryRowLayoutGuide);
    v4 = *(v2 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionHostingView);
    v5 = v3;
    sub_100A55E38(v4, v5);
    v1 = v6;

    *(v0 + 224) = v1;
  }

  return v1;
}

id sub_100A54FCC()
{
  v1 = *(v0 + 232);
  if (v1)
  {
    v2 = *(v0 + 232);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionHostingView) leadingAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_tertiaryRowLayoutGuide) leadingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *(v0 + 232);
    *(v0 + 232) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_100A55094()
{
  v1 = *(v0 + 240);
  if (v1)
  {
    v2 = *(v0 + 240);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionHostingView) trailingAnchor];
    v5 = [*(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_tertiaryRowLayoutGuide) trailingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *(v0 + 240);
    *(v0 + 240) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

void sub_100A5515C(void *a1)
{
  v21 = sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  v4 = [a1 trailingAnchor];
  v5 = *(v1 + 16);
  v6 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide;
  v7 = [*(v5 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide) trailingAnchor];
  v8 = [v4 constraintEqualToAnchor:v7];

  *(inited + 32) = v8;
  v22 = inited;
  v9 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v9)
  {
LABEL_9:

    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_10146CE00;
    v15 = [a1 leadingAnchor];
    v16 = [*(v5 + v6) leadingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    *(v14 + 32) = v17;
    v18 = [a1 trailingAnchor];
    v19 = [*(v5 + v6) trailingAnchor];
    v20 = [v18 constraintLessThanOrEqualToAnchor:v19];

    *(v14 + 40) = v20;
    sub_100798D30(v14);
    sub_100E94B24(v22);

    return;
  }

  v10 = 0;
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_6;
    }

    if (v10 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v11 = *(inited + 8 * v10 + 32);
LABEL_6:
    v13 = v11;
    ++v10;
    LODWORD(v12) = 1144750080;
    [v11 setPriority:{v12, v21}];

    if (v9 == v10)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100A553D4(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 setAlpha:1.0];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    for (k = 0; ; ++k)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (k >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v11 = *(a2 + 8 * k + 32);
      }

      v12 = v11;
      v13 = k + 1;
      if (__OFADD__(k, 1))
      {
        break;
      }

      [v11 setAlpha:0.0];

      if (v13 == j)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }
}

id *sub_100A55558()
{

  return v0;
}

uint64_t sub_100A55658()
{
  sub_100A55558();

  return swift_deallocClassInstance();
}

id sub_100A557BC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t _s8ListItemCMa()
{
  result = qword_101A0DEB8;
  if (!qword_101A0DEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100A558E4(uint64_t a1)
{
  result = _swiftEmptySetSingleton;
  v8 = _swiftEmptySetSingleton;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      sub_100064288(v4, v7);
      sub_100064288(v7, v6);
      sub_100006370(0, &qword_1019F4D70);
      if (swift_dynamicCast())
      {
        sub_100E7158C(v6, v5);
      }

      else
      {
        sub_100064288(v7, v6);
        sub_1005B981C(&qword_101A0E488);
        if (swift_dynamicCast())
        {
          sub_1006375B0(v5);
        }
      }

      sub_100005070(v7);
      v4 += 32;
      --v3;
    }

    while (v3);
    return v8;
  }

  return result;
}

void sub_100A55A20(uint64_t a1, uint64_t a2)
{

  v4 = sub_1012CE14C(a1, a2);
  v5 = v4;
  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019F4D70);
    sub_10000FDE0(&qword_1019F69E8, &qword_1019F4D70);
    Set.Iterator.init(_cocoa:)();
    v7 = v34;
    v6 = v35;
    v8 = v36;
    v9 = v37;
    v10 = v38;
  }

  else
  {
    v11 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v4 + 56);

    v9 = 0;
    v7 = v5;
  }

  v14 = (v8 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
LABEL_18:
      sub_100035F90();

      if ((a1 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        sub_100006370(0, &qword_1019F4D70);
        sub_10000FDE0(&qword_1019F69E8, &qword_1019F4D70);
        Set.Iterator.init(_cocoa:)();
        a1 = v39;
        v21 = v40;
        v22 = v41;
        v23 = v42;
        v24 = v43;
      }

      else
      {
        v25 = -1 << *(a1 + 32);
        v21 = a1 + 56;
        v22 = ~v25;
        v26 = -v25;
        if (v26 < 64)
        {
          v27 = ~(-1 << v26);
        }

        else
        {
          v27 = -1;
        }

        v24 = v27 & *(a1 + 56);

        v23 = 0;
      }

      if (a1 < 0)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v28 = v23;
        v29 = v24;
        v30 = v23;
        if (!v24)
        {
          break;
        }

LABEL_29:
        v31 = (v29 - 1) & v29;
        v32 = *(*(a1 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
        if (!v32)
        {
LABEL_35:
          sub_100035F90();
          return;
        }

        while (1)
        {
          [v32 setActive:1];

          v23 = v30;
          v24 = v31;
          if ((a1 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_31:
          if (__CocoaSet.Iterator.next()())
          {
            sub_100006370(0, &qword_1019F4D70);
            swift_dynamicCast();
            v32 = v33;
            v30 = v23;
            v31 = v24;
            if (v33)
            {
              continue;
            }
          }

          goto LABEL_35;
        }
      }

      while (1)
      {
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_37;
        }

        if (v30 >= ((v22 + 64) >> 6))
        {
          goto LABEL_35;
        }

        v29 = *(v21 + 8 * v30);
        ++v28;
        if (v29)
        {
          goto LABEL_29;
        }
      }
    }

    while (1)
    {
      [v19 setActive:0];

      v9 = v17;
      v10 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v20 = __CocoaSet.Iterator.next()();
      if (v20)
      {
        v33 = v20;
        sub_100006370(0, &qword_1019F4D70);
        swift_dynamicCast();
        v19 = v39;
        v17 = v9;
        v18 = v10;
        if (v39)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_18;
    }

    v16 = *(v6 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_100A55E38(void *a1, void *a2)
{
  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  v5 = [a2 topAnchor];
  v6 = [a1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(inited + 32) = v7;
  v20 = inited;
  v8 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v8)
  {
LABEL_9:

    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_10146CE00;
    v14 = [a2 bottomAnchor];
    v15 = [a1 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    *(v13 + 32) = v16;
    v17 = [a2 topAnchor];
    v18 = [a1 topAnchor];
    v19 = [v17 constraintLessThanOrEqualToAnchor:v18];

    *(v13 + 40) = v19;
    sub_100798D30(v13);
    sub_100E94B24(v20);

    return;
  }

  v9 = 0;
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_6;
    }

    if (v9 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v10 = *(inited + 8 * v9 + 32);
LABEL_6:
    v12 = v10;
    ++v9;
    LODWORD(v11) = 1144750080;
    [v10 setPriority:v11];

    if (v8 == v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100A560A8(unint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a1;
    v18[4] = sub_100A56308;
    v18[5] = v6;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = *"";
    v18[2] = sub_100007638;
    v18[3] = &unk_101892AB8;
    v7 = _Block_copy(v18);

    [v5 animateWithDuration:v7 animations:0.2];
    _Block_release(v7);
  }

  else
  {
    if (a1 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v10 = *(a1 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        [v10 setAlpha:0.0];

        ++v9;
        if (v12 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
    if (a2 >> 62)
    {
      goto LABEL_28;
    }

    for (j = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
    {
      for (k = 0; ; ++k)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (k >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v15 = *(a2 + 8 * k + 32);
        }

        v16 = v15;
        v17 = k + 1;
        if (__OFADD__(k, 1))
        {
          break;
        }

        [v15 setAlpha:1.0];

        if (v17 == j)
        {
          return;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }
  }
}

void sub_100A563B8(void (*a1)(id))
{
  v2 = v1;
  v4 = [v1 interactiveCanvasController];
  v35 = [v4 commandController];

  if (v35)
  {
    sub_10088E3FC(0);
    v5 = [v2 wpEditors];
    type metadata accessor for CRLWPEditor();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        a1(v9);

        ++v8;
        if (v11 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    sub_10088E600(0);
  }

  else
  {
    v12 = objc_opt_self();
    v13 = [v12 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36);
    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v13;
    v22 = sub_1005CF000();
    *(inited + 96) = v22;
    v23 = sub_1005CF04C();
    *(inited + 104) = v23;
    *(inited + 72) = v14;
    *(inited + 136) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 112) = v17;
    *(inited + 120) = v19;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v24;
    *(inited + 152) = 260;
    v25 = v36;
    *(inited + 216) = v22;
    *(inited + 224) = v23;
    *(inited + 192) = v25;
    v26 = v14;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v29, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v30 = swift_allocObject();
    v30[2] = 8;
    v30[3] = 0;
    v30[4] = 0;
    v30[5] = 0;
    v31 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    [v12 handleFailureInFunction:v32 file:v33 lineNumber:260 isFatal:0 format:v34 args:v31];
  }
}

uint64_t sub_100A568C8(void *a1, uint64_t a2, SEL *a3)
{
  sub_10000BE14(a2, v13, &unk_1019F4D00);
  v5 = v14;
  if (v14)
  {
    v6 = sub_100020E58(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_100005070(v13);
  }

  else
  {
    v11 = 0;
  }

  [a1 *a3];
  return swift_unknownObjectRelease();
}

uint64_t sub_100A56A3C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  __chkstk_darwin(v7);
  sub_100A563B8(a4);

  return sub_10000CAAC(v9, &unk_1019F4D00);
}

uint64_t sub_100A56AF8@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_10094B888(KeyPath);
  v4 = v3;

  *(a1 + 4) = BYTE4(v4);
  *a1 = v4;
  return result;
}

void sub_100A56B50(float a1)
{
  v2 = v1;
  v109 = sub_1005B981C(&unk_1019FFD10);
  v4 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v98 - v5;
  v107 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v107);
  v106 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLWPStorageCRDTData(0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v105 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 interactiveCanvasController];
  v11 = [v10 commandController];

  if (!v11)
  {
    v74 = objc_opt_self();
    v75 = [v74 _atomicIncrementAssertCount];
    v119 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v119);
    StaticString.description.getter();
    v76 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v77 = String._bridgeToObjectiveC()();

    v78 = [v77 lastPathComponent];

    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v82 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v75;
    v84 = sub_1005CF000();
    *(inited + 96) = v84;
    v85 = sub_1005CF04C();
    *(inited + 104) = v85;
    *(inited + 72) = v76;
    *(inited + 136) = &type metadata for String;
    v86 = sub_1000053B0();
    *(inited + 112) = v79;
    *(inited + 120) = v81;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v86;
    *(inited + 152) = 260;
    v87 = v119;
    *(inited + 216) = v84;
    *(inited + 224) = v85;
    *(inited + 192) = v87;
    v88 = v76;
    v89 = v87;
    v90 = static os_log_type_t.error.getter();
    sub_100005404(v82, &_mh_execute_header, v90, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v91 = static os_log_type_t.error.getter();
    sub_100005404(v82, &_mh_execute_header, v91, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v92 = swift_allocObject();
    v92[2] = 8;
    v92[3] = 0;
    v92[4] = 0;
    v92[5] = 0;
    v93 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v94 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v95 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v96 = String._bridgeToObjectiveC()();

    [v74 handleFailureInFunction:v94 file:v95 lineNumber:260 isFatal:0 format:v96 args:v93];

    v97 = v96;
    goto LABEL_46;
  }

  sub_10088E3FC(0);
  v12 = [v2 wpEditors];
  type metadata accessor for CRLWPEditor();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v99 = v11;
  if (v13 >> 62)
  {
LABEL_44:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_45;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_45:

    v97 = v99;
    sub_10088E600(0);
LABEL_46:

    return;
  }

LABEL_4:
  v15 = 0;
  v113 = v13 & 0xFFFFFFFFFFFFFF8;
  v114 = v13 & 0xC000000000000001;
  v103 = (v4 + 8);
  v104 = (v4 + 16);
  v102 = 0x8000000101562810;
  v4 = "invalid nil found when unwrapping value";
  v100 = xmmword_10146CA70;
  v101 = xmmword_10146C6B0;
  v111 = v14;
  v112 = v13;
  while (1)
  {
    if (v114)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v113 + 16))
      {
        goto LABEL_42;
      }

      v21 = *(v13 + 8 * v15 + 32);
    }

    v22 = v21;
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    KeyPath = swift_getKeyPath();
    v23 = sub_10094ABE4();
    v118 = v22;
    v116 = v15 + 1;
    if (!v23)
    {
      v115 = objc_opt_self();
      v51 = [v115 _atomicIncrementAssertCount];
      v119 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v119);
      StaticString.description.getter();
      v110 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v52 = String._bridgeToObjectiveC()();

      v53 = [v52 lastPathComponent];

      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v57 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v58 = swift_initStackObject();
      *(v58 + 16) = v100;
      *(v58 + 56) = &type metadata for Int32;
      *(v58 + 64) = &protocol witness table for Int32;
      *(v58 + 32) = v51;
      v59 = sub_1005CF000();
      *(v58 + 96) = v59;
      v60 = sub_1005CF04C();
      *(v58 + 104) = v60;
      v61 = v110;
      *(v58 + 72) = v110;
      *(v58 + 136) = &type metadata for String;
      v62 = sub_1000053B0();
      *(v58 + 112) = v54;
      *(v58 + 120) = v56;
      *(v58 + 176) = &type metadata for UInt;
      *(v58 + 144) = v62;
      *(v58 + 152) = 3002;
      v63 = v119;
      *(v58 + 216) = v59;
      *(v58 + 224) = v60;
      *(v58 + 184) = &protocol witness table for UInt;
      *(v58 + 192) = v63;
      v64 = v61;
      v65 = v63;
      v66 = static os_log_type_t.error.getter();
      sub_100005404(v57, &_mh_execute_header, v66, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v58);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v67 = static os_log_type_t.error.getter();
      sub_100005404(v57, &_mh_execute_header, v67, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v68 = swift_allocObject();
      v68[2] = 8;
      v68[3] = 0;
      v68[4] = 0;
      v68[5] = 0;
      v69 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v46 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v16 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v19.super.isa = String._bridgeToObjectiveC()();

      [v115 handleFailureInFunction:v46 file:v16 lineNumber:3002 isFatal:0 format:v19.super.isa args:v69];

      v4 = "invalid nil found when unwrapping value";
      goto LABEL_9;
    }

    v24 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v25 = *(*&v22[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v25)
    {
      break;
    }

    v26 = *&v25[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v26)
    {
      goto LABEL_48;
    }

    v115 = v23;
    v27 = *&v23[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v28 = *&v23[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v29 = v106;
    (*(*v26 + 896))();
    v30 = v105;
    sub_1005E0A78(v29 + *(v107 + 20), v105);
    v4 = v25;
    sub_1005E0ADC(v29, type metadata accessor for CRLWPShapeItemCRDTData);
    v31 = v108;
    v32 = v109;
    (*v104)(v108, v30, v109);
    sub_1005E0ADC(v30, type metadata accessor for CRLWPStorageCRDTData);
    v33 = CRAttributedString.attributedString.getter();
    (*v103)(v31, v32);
    v13 = [v33 length];

    if (v13 < 1)
    {
      goto LABEL_24;
    }

    if (__OFSUB__(v28, v27))
    {
      goto LABEL_43;
    }

    if (v28 != v27)
    {
LABEL_24:
      v40 = v118;
      v41 = [*&v118[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionPath];
      v42 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v41 forwardSelectionPath:v41 reverseSelectionPath:v41];
      v43 = *&v40[v24];
      v44 = KeyPath;

      v45 = v43;
      v46 = sub_1012ED090(v45, v27, v28, v44, a1);

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v48 = Strong;
        v49 = [Strong commandController];

        if (v49)
        {
          v50 = v42;
          sub_100888700(v46, 0, v42, 4, 0);
        }
      }

      v110 = v42;
      v16 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v17 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0);
      v18 = swift_initStackObject();
      *(v18 + 16) = v101;
      v119 = 0xD000000000000021;
      v120 = v102;
      AnyHashable.init<A>(_:)();
      *(v18 + 96) = sub_1005B981C(&qword_101A0D8E8);
      *(v18 + 72) = KeyPath;

      sub_100078EA4(v18);
      swift_setDeallocating();
      sub_10000CAAC(v18 + 32, &unk_1019FB8B0);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v20 = v118;
      [v16 postNotificationName:v17 object:v118 userInfo:v19.super.isa];

      goto LABEL_8;
    }

    v34 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
    v35 = v118;
    v36 = *&v118[OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle];
    if (v36 || (v37 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v38 = *&v35[v34], *&v35[v34] = v37, v38, (v36 = *&v35[v34]) != 0))
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v39 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
      }

      else
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v71 = v36 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize;
          *v71 = a1;
          *(v71 + 4) = 0;
          goto LABEL_34;
        }

        v39 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
      }

      v70 = v36 + *v39;
      *v70 = 0;
      *(v70 + 8) = 1;
    }

LABEL_34:
    v16 = [objc_opt_self() defaultCenter];
    if (qword_1019F2368 != -1)
    {
      swift_once();
    }

    v72 = qword_101AD80C8;
    sub_1005B981C(&qword_1019FB8A0);
    v73 = swift_initStackObject();
    *(v73 + 16) = v101;
    v119 = 0xD000000000000021;
    v120 = v102;
    AnyHashable.init<A>(_:)();
    *(v73 + 96) = sub_1005B981C(&qword_101A0D8E8);
    *(v73 + 72) = KeyPath;

    sub_100078EA4(v73);
    swift_setDeallocating();
    sub_10000CAAC(v73 + 32, &unk_1019FB8B0);
    v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v46 = v118;
    [v16 postNotificationName:v72 object:v118 userInfo:v19.super.isa];

LABEL_8:
    v4 = "invalid nil found when unwrapping value";
LABEL_9:

    ++v15;
    v13 = v112;
    if (v116 == v111)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_100A57B6C(void *a1)
{
  v2 = v1;
  v3 = [v1 interactiveCanvasController];
  v54 = [v3 commandController];

  if (v54)
  {
    sub_10088E3FC(0);
    v4 = [v2 wpEditors];
    type metadata accessor for CRLWPEditor();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      v8 = v5 & 0xC000000000000001;
      v9 = v5 & 0xFFFFFFFFFFFFFF8;
      v10 = &OBJC_IVAR____TtC8Freeform11CRLWPEditor_icc;
      v56 = v5 & 0xC000000000000001;
      v57 = v5;
      v55 = i;
      while (1)
      {
        if (v8)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(v9 + 16))
          {
            goto LABEL_21;
          }

          v11 = *(v5 + 8 * v7 + 32);
        }

        v12 = v11;
        v13 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v15 = Strong;
          v16 = [Strong commandController];

          if (v16)
          {
            sub_10088E3FC(0);
            [a1 size];
            v18 = v17;
            if (v18 < 999.0)
            {
              v19 = v18;
            }

            else
            {
              v19 = 999.0;
            }

            KeyPath = swift_getKeyPath();
            v21 = [a1 desiredPostScriptName];
            v22 = v9;
            v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v59 = v16;
            v24 = v10;
            v26 = v25;

            v27 = v23;
            v9 = v22;
            sub_1012E6498(KeyPath, v27, v26);
            v10 = v24;

            v28 = swift_getKeyPath();
            sub_1012E6090(v28, v19);

            v29 = swift_getKeyPath();
            sub_1012E5768(v29, [a1 bold]);

            v30 = swift_getKeyPath();
            v8 = v56;
            sub_1012E57A4(v30, [a1 italic]);
            i = v55;
            v5 = v57;

            sub_10088E600(0);
          }
        }

        ++v7;
        if (v13 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_23:

    sub_10088E600(0);
  }

  else
  {
    v31 = objc_opt_self();
    v32 = [v31 _atomicIncrementAssertCount];
    v60 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v60);
    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    v35 = [v34 lastPathComponent];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v39 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v32;
    v41 = sub_1005CF000();
    *(inited + 96) = v41;
    v42 = sub_1005CF04C();
    *(inited + 104) = v42;
    *(inited + 72) = v33;
    *(inited + 136) = &type metadata for String;
    v43 = sub_1000053B0();
    *(inited + 112) = v36;
    *(inited + 120) = v38;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v43;
    *(inited + 152) = 260;
    v44 = v60;
    *(inited + 216) = v41;
    *(inited + 224) = v42;
    *(inited + 192) = v44;
    v45 = v33;
    v46 = v44;
    v47 = static os_log_type_t.error.getter();
    sub_100005404(v39, &_mh_execute_header, v47, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v48 = static os_log_type_t.error.getter();
    sub_100005404(v39, &_mh_execute_header, v48, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v49 = swift_allocObject();
    v49[2] = 8;
    v49[3] = 0;
    v49[4] = 0;
    v49[5] = 0;
    v50 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v53 = String._bridgeToObjectiveC()();

    [v31 handleFailureInFunction:v51 file:v52 lineNumber:260 isFatal:0 format:v53 args:v50];
  }
}

void sub_100A581F4(int a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v108 = a6;
  v114 = a4;
  v115 = a5;
  v106 = a3;
  v126 = a2;
  v7 = v6;
  v113 = a1;
  v120 = sub_1005B981C(&unk_1019FFD10);
  v8 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v105 - v9;
  v118 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v118);
  v117 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  *&v12 = __chkstk_darwin(v11 - 8).n128_u64[0];
  v116 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v6 interactiveCanvasController];
  v15 = [v14 commandController];

  if (!v15)
  {
    v81 = objc_opt_self();
    v82 = [v81 _atomicIncrementAssertCount];
    v133 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v133);
    StaticString.description.getter();
    v83 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v84 = String._bridgeToObjectiveC()();

    v85 = [v84 lastPathComponent];

    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v89 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v82;
    v91 = sub_1005CF000();
    *(inited + 96) = v91;
    v92 = sub_1005CF04C();
    *(inited + 104) = v92;
    *(inited + 72) = v83;
    *(inited + 136) = &type metadata for String;
    v93 = sub_1000053B0();
    *(inited + 112) = v86;
    *(inited + 120) = v88;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v93;
    *(inited + 152) = 260;
    v94 = v133;
    *(inited + 216) = v91;
    *(inited + 224) = v92;
    *(inited + 192) = v94;
    v95 = v83;
    v96 = v94;
    v97 = static os_log_type_t.error.getter();
    sub_100005404(v89, &_mh_execute_header, v97, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v98 = static os_log_type_t.error.getter();
    sub_100005404(v89, &_mh_execute_header, v98, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v99 = swift_allocObject();
    v99[2] = 8;
    v99[3] = 0;
    v99[4] = 0;
    v99[5] = 0;
    v100 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v101 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v102 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v103 = String._bridgeToObjectiveC()();

    [v81 handleFailureInFunction:v101 file:v102 lineNumber:260 isFatal:0 format:v103 args:v100];

    v104 = v103;
    goto LABEL_41;
  }

  sub_10088E3FC(0);
  v16 = [v7 wpEditors];
  type metadata accessor for CRLWPEditor();
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v127 = v17;
  v105 = v15;
  if (v17 >> 62)
  {
LABEL_39:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (v18)
    {
      goto LABEL_4;
    }

    goto LABEL_40;
  }

  v18 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_40:

    v104 = v105;
    sub_10088E600(0);
LABEL_41:

    return;
  }

LABEL_4:
  v19 = 0;
  v124 = v127 & 0xFFFFFFFFFFFFFF8;
  v125 = v127 & 0xC000000000000001;
  v111 = (v8 + 8);
  v112 = (v8 + 16);
  v110 = 0x8000000101562810;
  v20 = "invalid nil found when unwrapping value";
  v8 = "setAttributeValue(_:value:)";
  v107 = xmmword_10146CA70;
  v109 = xmmword_10146C6B0;
  v123 = v18;
  while (1)
  {
    if (v125)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *(v124 + 16))
      {
        goto LABEL_37;
      }

      v28 = *(v127 + 8 * v19 + 32);
    }

    v29 = v28;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    KeyPath = swift_getKeyPath();
    v30 = sub_10094ABE4();
    v129 = v19 + 1;
    v130 = v19;
    v132 = v29;
    if (!v30)
    {
      v128 = objc_opt_self();
      LODWORD(v122) = [v128 _atomicIncrementAssertCount];
      v133 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v133);
      StaticString.description.getter();
      v121 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v61 = String._bridgeToObjectiveC()();

      v62 = [v61 lastPathComponent];

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = v20;
      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v67 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v68 = swift_initStackObject();
      *(v68 + 16) = v107;
      *(v68 + 56) = &type metadata for Int32;
      *(v68 + 64) = &protocol witness table for Int32;
      *(v68 + 32) = v122;
      v69 = sub_1005CF000();
      *(v68 + 96) = v69;
      v70 = sub_1005CF04C();
      *(v68 + 104) = v70;
      v71 = v121;
      *(v68 + 72) = v121;
      *(v68 + 136) = &type metadata for String;
      v72 = sub_1000053B0();
      *(v68 + 112) = v63;
      *(v68 + 120) = v65;
      *(v68 + 176) = &type metadata for UInt;
      *(v68 + 144) = v72;
      *(v68 + 152) = 3002;
      v73 = v133;
      *(v68 + 216) = v69;
      *(v68 + 224) = v70;
      *(v68 + 184) = &protocol witness table for UInt;
      *(v68 + 192) = v73;
      v74 = v71;
      v75 = v73;
      v76 = static os_log_type_t.error.getter();
      sub_100005404(v67, &_mh_execute_header, v76, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v68);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v77 = static os_log_type_t.error.getter();
      sub_100005404(v67, &_mh_execute_header, v77, v66, 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v78 = swift_allocObject();
      v78[2] = 8;
      v78[3] = 0;
      v78[4] = 0;
      v78[5] = 0;
      v20 = v66;
      v79 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v80 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v21 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v24.super.isa = String._bridgeToObjectiveC()();

      [v128 handleFailureInFunction:v80 file:v21 lineNumber:3002 isFatal:0 format:v24.super.isa args:v79];

      v45 = v80;
      v8 = "setAttributeValue(_:value:)";
      goto LABEL_9;
    }

    v31 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v32 = *(*&v29[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v32)
    {
      break;
    }

    v33 = *&v32[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v33)
    {
      goto LABEL_43;
    }

    v128 = v30;
    v34 = *&v30[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v35 = *&v30[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v36 = v117;
    (*(*v33 + 896))();
    v37 = v116;
    sub_1005E0A78(v36 + *(v118 + 20), v116);
    v38 = v32;
    sub_1005E0ADC(v36, type metadata accessor for CRLWPShapeItemCRDTData);
    v39 = v119;
    v40 = v120;
    (*v112)(v119, v37, v120);
    sub_1005E0ADC(v37, type metadata accessor for CRLWPStorageCRDTData);
    v41 = CRAttributedString.attributedString.getter();
    (*v111)(v39, v40);
    v42 = [v41 length];

    v43 = KeyPath;
    if (v42 < 1)
    {
      goto LABEL_26;
    }

    if (__OFSUB__(v35, v34))
    {
      goto LABEL_38;
    }

    if (v35 == v34)
    {
      v44 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
      v45 = v132;
      v46 = *&v132[OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle];
      if (v46 || (v47 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v48 = *(v45 + v44), *(v45 + v44) = v47, v48, (v46 = *(v45 + v44)) != 0))
      {
        v49 = v46;

        v106(v113 & 1, v43);
      }

      v21 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v50 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0);
      v51 = swift_initStackObject();
      *(v51 + 16) = v109;
      v133 = 0xD000000000000021;
      v134 = v110;
      AnyHashable.init<A>(_:)();
      *(v51 + 96) = sub_1005B981C(v114);
      *(v51 + 72) = v43;

      sub_100078EA4(v51);
      swift_setDeallocating();
      sub_10000CAAC(v51 + 32, &unk_1019FB8B0);
      v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v21 postNotificationName:v50 object:v45 userInfo:v24.super.isa];

      v27 = v128;
    }

    else
    {
LABEL_26:
      v52 = v132;
      v53 = [*&v132[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionPath];
      v54 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v53 forwardSelectionPath:v53 reverseSelectionPath:v53];
      v55 = *&v52[v31];

      v56 = v55;
      v45 = v108();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v58 = Strong;
        v59 = [Strong commandController];

        if (v59)
        {
          v60 = v54;
          sub_100888700(v45, 0, v54, 4, 0);
        }
      }

      v122 = v54;
      v21 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v22 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0);
      v23 = swift_initStackObject();
      *(v23 + 16) = v109;
      v133 = 0xD000000000000021;
      v134 = v110;
      AnyHashable.init<A>(_:)();
      *(v23 + 96) = sub_1005B981C(v114);
      *(v23 + 72) = v43;

      sub_100078EA4(v23);
      swift_setDeallocating();
      sub_10000CAAC(v23 + 32, &unk_1019FB8B0);
      v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v25 = v22;
      v26 = v132;
      [v21 postNotificationName:v25 object:v132 userInfo:v24.super.isa];

      v27 = v122;
    }

    v20 = "invalid nil found when unwrapping value";
    v8 = "setAttributeValue(_:value:)";
LABEL_9:

    v19 = v130 + 1;
    if (v129 == v123)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
}