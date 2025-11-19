uint64_t sub_28CBC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2CDAA0();
  v62 = *(v4 - 8);
  v5 = *(v62 + 64);
  __chkstk_darwin(v4);
  v61 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v55 - v9;
  v11 = sub_20410(&qword_34E938, &qword_2D28E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v58 = &v55 - v13;
  v14 = sub_20410(&qword_34E940, &qword_2D28E8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v63 = &v55 - v16;
  v17 = sub_2CE050();
  v64 = *(v17 - 8);
  v65 = v17;
  v18 = *(v64 + 64);
  __chkstk_darwin(v17);
  v57 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2CA000();
  v59 = *(v20 - 8);
  v60 = v20;
  v21 = *(v59 + 64);
  __chkstk_darwin(v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CE000();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v29 = sub_3ED0(v24, static Logger.default);
  swift_beginAccess();
  (*(v25 + 16))(v28, v29, v24);
  v30 = sub_2CDFE0();
  v31 = sub_2CE670();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v56 = v23;
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "CommonNLContextProvider: makeContextForHandleIntent clearing conversation state", v32, 2u);
    v23 = v56;
  }

  (*(v25 + 8))(v28, v24);
  sub_2C9FF0();
  sub_20410(&unk_351900, &unk_2D0960);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2D0770;
  sub_334A0(0, &qword_34CB98, INSearchForMediaIntent_ptr);
  *(v33 + 32) = sub_2CA740();
  sub_2C9F80();
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    v35 = [v34 mediaItems];
    v37 = v64;
    v36 = v65;
    v38 = v63;
    if (!v35)
    {
      goto LABEL_24;
    }
  }

  else
  {
    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    v37 = v64;
    v36 = v65;
    v38 = v63;
    if (v39)
    {
      v35 = [v39 mediaItems];
      if (!v35)
      {
        goto LABEL_24;
      }
    }

    else
    {
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        v35 = [v40 mediaItems];
        if (!v35)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v35 = [a1 mediaItems];
        if (!v35)
        {
LABEL_24:
          (*(v37 + 56))(v38, 1, 1, v36);
          goto LABEL_25;
        }
      }
    }
  }

  v41 = v35;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v42 = sub_2CE410();

  if (!(v42 >> 62))
  {
    result = *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

  result = sub_2CEDA0();
  if (!result)
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_17:
  if ((v42 & 0xC000000000000001) != 0)
  {
    v44 = sub_2CECD0();
LABEL_20:
    v45 = v44;

    v46 = sub_2CE030();
    v47 = v58;
    (*(*(v46 - 8) + 56))(v58, 1, 1, v46);
    sub_2CE5A0();

    sub_30B8(v47, &qword_34E938, &qword_2D28E0);
    if ((*(v37 + 48))(v38, 1, v36) != 1)
    {
      v48 = v57;
      (*(v37 + 32))(v57, v38, v36);
      sub_20410(&qword_34E950, &qword_2D5350);
      v49 = *(v37 + 72);
      v50 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_2D0090;
      (*(v37 + 16))(v51 + v50, v48, v36);
      sub_2C9F00();
      (*(v37 + 8))(v48, v36);
LABEL_26:
      (*(v62 + 104))(v61, enum case for PommesContext.Source.pluginDefined(_:), v4);
      sub_2CDAB0();
      v52 = sub_2CDAC0();
      (*(*(v52 - 8) + 56))(v10, 0, 1, v52);
      sub_2C9F20();
      v54 = v59;
      v53 = v60;
      (*(v59 + 32))(a2, v23, v60);
      return (*(v54 + 56))(a2, 0, 1, v53);
    }

LABEL_25:
    sub_30B8(v38, &qword_34E940, &qword_2D28E8);
    goto LABEL_26;
  }

  if (*(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)))
  {
    v44 = *(v42 + 32);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_28D424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v32 = a2;
  v2 = sub_2CDAA0();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v28 - v8;
  v31 = sub_2CA000();
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v31);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = sub_2CDFE0();
  v21 = sub_2CE670();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "CommonNLContextProvider: makeContextForHandleIntent clearing conversation state", v22, 2u);
  }

  (*(v15 + 8))(v18, v14);
  sub_2C9FF0();
  sub_20410(&unk_351900, &unk_2D0960);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0770;
  type metadata accessor for DetermineIntent();
  *(v23 + 32) = sub_2CA740();
  sub_2C9F80();
  (*(v29 + 104))(v5, enum case for PommesContext.Source.pluginDefined(_:), v30);
  sub_2CDAB0();
  v24 = sub_2CDAC0();
  (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
  sub_2C9F20();
  v26 = v31;
  v25 = v32;
  (*(v10 + 32))(v32, v13, v31);
  return (*(v10 + 56))(v25, 0, 1, v26);
}

uint64_t sub_28D844@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2CDAA0();
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  __chkstk_darwin(v4);
  v60 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v54 - v9;
  v11 = sub_20410(&qword_34E938, &qword_2D28E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v57 = &v54 - v13;
  v14 = sub_20410(&qword_34E940, &qword_2D28E8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v62 = &v54 - v16;
  v17 = sub_2CE050();
  v63 = *(v17 - 8);
  v64 = v17;
  v18 = *(v63 + 64);
  __chkstk_darwin(v17);
  v56 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2CA000();
  v58 = *(v20 - 8);
  v59 = v20;
  v21 = *(v58 + 64);
  __chkstk_darwin(v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CE000();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v29 = sub_3ED0(v24, static Logger.default);
  swift_beginAccess();
  (*(v25 + 16))(v28, v29, v24);
  v30 = sub_2CDFE0();
  v31 = sub_2CE670();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v55 = v23;
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "CommonNLContextProvider: makeContextForHandleIntent clearing conversation state", v32, 2u);
    v23 = v55;
  }

  (*(v25 + 8))(v28, v24);
  sub_2C9FF0();
  sub_20410(&unk_351900, &unk_2D0960);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2D0770;
  sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  *(v33 + 32) = sub_2CA740();
  sub_2C9F80();
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    v35 = [v34 mediaItems];
    v37 = v63;
    v36 = v64;
    v38 = v62;
    if (!v35)
    {
      goto LABEL_21;
    }
  }

  else
  {
    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    v37 = v63;
    v36 = v64;
    v38 = v62;
    if (v39)
    {
      v35 = [v39 mediaItems];
      if (!v35)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v35 = [a1 mediaItems];
      if (!v35)
      {
LABEL_21:
        (*(v37 + 56))(v38, 1, 1, v36);
        goto LABEL_22;
      }
    }
  }

  v40 = v35;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v41 = sub_2CE410();

  if (!(v41 >> 62))
  {
    result = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  result = sub_2CEDA0();
  if (!result)
  {
LABEL_20:

    goto LABEL_21;
  }

LABEL_14:
  if ((v41 & 0xC000000000000001) != 0)
  {
    v43 = sub_2CECD0();
LABEL_17:
    v44 = v43;

    v45 = sub_2CE030();
    v46 = v57;
    (*(*(v45 - 8) + 56))(v57, 1, 1, v45);
    sub_2CE5A0();

    sub_30B8(v46, &qword_34E938, &qword_2D28E0);
    if ((*(v37 + 48))(v38, 1, v36) != 1)
    {
      v47 = v56;
      (*(v37 + 32))(v56, v38, v36);
      sub_20410(&qword_34E950, &qword_2D5350);
      v48 = *(v37 + 72);
      v49 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_2D0090;
      (*(v37 + 16))(v50 + v49, v47, v36);
      sub_2C9F00();
      (*(v37 + 8))(v47, v36);
LABEL_23:
      (*(v61 + 104))(v60, enum case for PommesContext.Source.pluginDefined(_:), v4);
      sub_2CDAB0();
      v51 = sub_2CDAC0();
      (*(*(v51 - 8) + 56))(v10, 0, 1, v51);
      sub_2C9F20();
      v53 = v58;
      v52 = v59;
      (*(v58 + 32))(a2, v23, v59);
      return (*(v53 + 56))(a2, 0, 1, v52);
    }

LABEL_22:
    sub_30B8(v38, &qword_34E940, &qword_2D28E8);
    goto LABEL_23;
  }

  if (*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)))
  {
    v43 = *(v41 + 32);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_28E070@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v59 = a1;
  v57 = sub_2CDAA0();
  v55 = *(v57 - 8);
  v2 = *(v55 + 64);
  __chkstk_darwin(v57);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v56 = &v49 - v6;
  v7 = sub_20410(&qword_34E938, &qword_2D28E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v51 = &v49 - v9;
  v10 = sub_20410(&qword_34E940, &qword_2D28E8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v49 - v12;
  v52 = sub_2CE050();
  v14 = *(v52 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v52);
  v50 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2CA000();
  v17 = *(v53 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v53);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2CE000();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v21, static Logger.default);
  swift_beginAccess();
  (*(v22 + 16))(v25, v26, v21);
  v27 = sub_2CDFE0();
  v28 = sub_2CE670();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "CommonNLContextProvider: makeContextForHandleIntent clearing conversation state", v29, 2u);
  }

  (*(v22 + 8))(v25, v21);
  sub_2C9FF0();
  sub_20410(&unk_351900, &unk_2D0960);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2D0770;
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v31 = v59;
  *(v30 + 32) = sub_2CA740();
  sub_2C9F80();
  v32 = [v31 mediaItems];
  if (!v32)
  {
    goto LABEL_15;
  }

  v33 = v32;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v34 = sub_2CE410();

  if (!(v34 >> 62))
  {
    result = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  result = sub_2CEDA0();
  if (!result)
  {
LABEL_14:

LABEL_15:
    (*(v14 + 56))(v13, 1, 1, v52);
    goto LABEL_16;
  }

LABEL_8:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v36 = sub_2CECD0();
LABEL_11:
    v37 = v36;

    v38 = sub_2CE030();
    v39 = v51;
    (*(*(v38 - 8) + 56))(v51, 1, 1, v38);
    sub_2CE5A0();

    sub_30B8(v39, &qword_34E938, &qword_2D28E0);
    v40 = v52;
    if ((*(v14 + 48))(v13, 1, v52) != 1)
    {
      v41 = v50;
      (*(v14 + 32))(v50, v13, v40);
      sub_20410(&qword_34E950, &qword_2D5350);
      v42 = *(v14 + 72);
      v43 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_2D0090;
      (*(v14 + 16))(v44 + v43, v41, v40);
      sub_2C9F00();
      (*(v14 + 8))(v41, v40);
LABEL_17:
      v45 = v58;
      v46 = v56;
      (*(v55 + 104))(v54, enum case for PommesContext.Source.pluginDefined(_:), v57);
      sub_2CDAB0();
      v47 = sub_2CDAC0();
      (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
      sub_2C9F20();
      v48 = v53;
      (*(v17 + 32))(v45, v20, v53);
      return (*(v17 + 56))(v45, 0, 1, v48);
    }

LABEL_16:
    sub_30B8(v13, &qword_34E940, &qword_2D28E8);
    goto LABEL_17;
  }

  if (*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
  {
    v36 = *(v34 + 32);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

BOOL sub_28E80C()
{
  v0 = sub_2CCF90();
  v2 = v1;
  v3 = sub_2CBE10();
  if (v2)
  {
    if (v0 == v3 && v2 == v4)
    {
      goto LABEL_10;
    }

    v5 = sub_2CEEA0();

    if (v5)
    {
      return 0;
    }
  }

  else
  {
  }

  v6 = sub_2CCF90();
  v8 = v7;
  v9 = sub_2CBE30();
  if (v8)
  {
    if (v6 == v9 && v8 == v10)
    {
      goto LABEL_10;
    }

    v12 = sub_2CEEA0();

    if (v12)
    {
      return 0;
    }
  }

  else
  {
  }

  v13 = sub_2CCF90();
  v15 = v14;
  v16 = sub_2CBD90();
  if (v15)
  {
    if (v13 == v16 && v15 == v17)
    {
LABEL_10:

      return 0;
    }

    v18 = sub_2CEEA0();

    return (v18 & 1) == 0;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_28E988()
{
  v0 = sub_2CCF90();
  v2 = v1;
  v3 = sub_2CBE10();
  if (v2)
  {
    if (v0 == v3 && v2 == v4)
    {
      goto LABEL_10;
    }

    v5 = sub_2CEEA0();

    if (v5)
    {
      return 0;
    }
  }

  else
  {
  }

  v6 = sub_2CCF90();
  v8 = v7;
  v9 = sub_2CBE30();
  if (v8)
  {
    if (v6 == v9 && v8 == v10)
    {
      goto LABEL_10;
    }

    v12 = sub_2CEEA0();

    if (v12)
    {
      return 0;
    }
  }

  else
  {
  }

  v13 = sub_2CCF90();
  v15 = v14;
  v16 = sub_2CBD90();
  if (v15)
  {
    if (v13 == v16 && v15 == v17)
    {
LABEL_10:

      return 0;
    }

    v18 = sub_2CEEA0();

    if (v18)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_28EB00()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CE180();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v10 = sub_2CBA00();
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_3568A8 = v10;
  return result;
}

uint64_t PlayMedia.HandleIntentStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v174 = a2;
  v172 = a3;
  v160 = sub_2CE150();
  v159 = *(v160 - 8);
  v8 = *(v159 + 64);
  __chkstk_darwin(v160);
  v158 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_2CE990();
  v154 = *(v155 - 8);
  v10 = *(v154 + 64);
  __chkstk_darwin(v155);
  v153 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_2CE180();
  v157 = *(v161 - 8);
  v12 = *(v157 + 64);
  __chkstk_darwin(v161);
  v156 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_2CC760();
  v163 = *(v164 - 8);
  v14 = *(v163 + 64);
  v15 = __chkstk_darwin(v164);
  v148 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v162 = &v145 - v17;
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v150 = &v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v149 = &v145 - v24;
  v25 = __chkstk_darwin(v23);
  v151 = &v145 - v26;
  v27 = __chkstk_darwin(v25);
  v152 = &v145 - v28;
  v29 = __chkstk_darwin(v27);
  v166 = &v145 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v145 - v32;
  __chkstk_darwin(v31);
  v35 = &v145 - v34;
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v36 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  v37 = v19[2];
  v169 = (v19 + 2);
  v170 = v36;
  v168 = v37;
  (v37)(v35, v36, v18);

  v38 = sub_2CDFE0();
  v39 = sub_2CE690();

  v40 = os_log_type_enabled(v38, v39);
  v173 = a4;
  v171 = a5;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v165 = v33;
    v42 = v41;
    v43 = v19;
    v44 = swift_slowAlloc();
    aBlock = v44;
    *v42 = 136315138;
    v182 = a1;
    sub_2CCFB0();
    v45 = a1;
    sub_2A06C4(&qword_34C170, &type metadata accessor for App);
    v46 = sub_2CEE70();
    v48 = sub_3F08(v46, v47, &aBlock);

    *(v42 + 4) = v48;
    a1 = v45;
    _os_log_impl(&dword_0, v38, v39, "HandleIntentStrategy#makePreHandleIntentOutput for app: %s", v42, 0xCu);
    sub_306C(v44);

    v33 = v165;

    v49 = v43;
    v167 = v43[1];
  }

  else
  {

    v49 = v19;
    v167 = v19[1];
  }

  v167(v35, v18);
  v50 = v18;
  if (!sub_28E80C())
  {
    return sub_29092C(a1, v174, v172, v173, v171);
  }

  v51 = (v175 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider);
  v52 = *(v175 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 32);
  sub_35E0((v175 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider), *(v175 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 24));
  if ((sub_2CBBC0() & 1) == 0)
  {
    v53 = v51[4];
    sub_35E0(v51, v51[3]);
    if ((sub_2CBBB0() & 1) == 0)
    {
      return sub_29092C(a1, v174, v172, v173, v171);
    }
  }

  v54 = sub_2CC8E0();
  v55 = *(v175 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_executorProvider + 32);
  sub_35E0((v175 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_executorProvider), *(v175 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_executorProvider + 24));
  sub_2CBE60();
  v147 = v54;
  v56 = sub_2CC8D0();

  if (!v56)
  {
    return sub_29092C(a1, v174, v172, v173, v171);
  }

  (v168)(v33, v170, v50);
  v57 = v174;

  v58 = sub_2CDFE0();
  v59 = sub_2CE670();

  v60 = os_log_type_enabled(v58, v59);
  v146 = a1;
  v145 = v57;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v165 = v33;
    v62 = v61;
    aBlock = swift_slowAlloc();
    *v62 = 136315394;
    v63 = [v57 debugDescription];
    v64 = sub_2CE270();
    v66 = v65;

    v67 = sub_3F08(v64, v66, &aBlock);

    *(v62 + 4) = v67;
    *(v62 + 12) = 2080;
    v182 = v56;
    sub_2A06C4(&qword_34E198, &type metadata accessor for AirPlayRouteSetupContext);
    v68 = sub_2CEE70();
    v70 = sub_3F08(v68, v69, &aBlock);

    *(v62 + 14) = v70;
    _os_log_impl(&dword_0, v58, v59, "HandleIntentStrategy#makePreHandleIntentOutput Handling AirPlay Route setup for 3p app on iOS. Intent: %s, Context: %s", v62, 0x16u);
    swift_arrayDestroy();

    v71 = v49;
    v72 = v165;
  }

  else
  {

    v71 = v49;
    v72 = v33;
  }

  v73 = v167;
  v167(v72, v50);
  v74 = v166;
  (v168)(v166, v170, v50);

  v75 = sub_2CDFE0();
  v76 = sub_2CE690();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v165 = v50;
    v78 = v77;
    v79 = v71;
    v80 = swift_slowAlloc();
    aBlock = v80;
    *v78 = 136315138;
    v182 = v56;
    sub_2A06C4(&qword_34E198, &type metadata accessor for AirPlayRouteSetupContext);
    v81 = sub_2CEE70();
    v83 = sub_3F08(v81, v82, &aBlock);

    *(v78 + 4) = v83;
    _os_log_impl(&dword_0, v75, v76, "HandleIntentStrategy#makePreHandleIntentOutput airPlay route setup state: %s", v78, 0xCu);
    sub_306C(v80);
    v71 = v79;
    v73 = v167;

    v50 = v165;
  }

  v73(v74, v50);
  a1 = v146;
  v84 = v145;
  if (!sub_2CE820() && !sub_2CE850() || !sub_2CE6C0() || !sub_2CE8A0())
  {
    goto LABEL_31;
  }

  v85 = v50;
  v86 = v162;
  sub_2CC8B0();
  v87 = (*(v163 + 88))(v86, v164);
  if (v87 == enum case for AirPlayRouteSetupState.suppressedCommonRouteSetup(_:))
  {
    v167 = v56;
    v88 = v152;
    (v168)(v152, v170, v50);
    v89 = sub_2CDFE0();
    v90 = sub_2CE670();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_0, v89, v90, "HandleIntentStrategy#makePreHandleIntentOutput Starting looking for devices and setting AirPlay routes...", v91, 2u);
    }

    v73(v88, v50);
    v92 = v156;
    sub_2CE170();
    v93 = v153;
    sub_2CE980();
    v94 = sub_2CBA00();
    (*(v154 + 8))(v93, v155);
    v95 = *(v157 + 8);
    v96 = v161;
    v95(v92, v161);
    v97 = swift_allocObject();
    *(v97 + 16) = v175;
    *(v97 + 24) = v84;
    v180 = sub_29F574;
    v181 = v97;
    aBlock = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_A4294;
    v179 = &unk_33D738;
    v98 = _Block_copy(&aBlock);
    v99 = v84;
    v100 = v98;
    v101 = v99;

    sub_2CE160();
    v182 = _swiftEmptyArrayStorage;
    sub_2A06C4(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags);
    sub_20410(&qword_34DD48, &qword_2D5F80);
    sub_7DDE8();
    v102 = v158;
    v103 = v160;
    sub_2CEC10();
    sub_2CE9C0();
    _Block_release(v100);

    (*(v159 + 8))(v102, v103);
    v95(v92, v96);

    a1 = v146;
    return sub_29092C(a1, v174, v172, v173, v171);
  }

  if (v87 == enum case for AirPlayRouteSetupState.startedDeviceSearch(_:))
  {
    v104 = v156;
    sub_2CE170();
    v105 = v153;
    sub_2CE980();
    v169 = sub_2CBA00();
    (*(v154 + 8))(v105, v155);
    v170 = *(v157 + 8);
    v170(v104, v161);
    v106 = swift_allocObject();
    *(v106 + 16) = v175;
    *(v106 + 24) = v56;
    v180 = sub_29F554;
    v181 = v106;
    aBlock = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_A4294;
    v179 = &unk_33D6E8;
    v107 = _Block_copy(&aBlock);

    sub_2CE160();
    v182 = _swiftEmptyArrayStorage;
    sub_2A06C4(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags);
    sub_20410(&qword_34DD48, &qword_2D5F80);
    sub_7DDE8();
    v108 = v158;
    v109 = v160;
    sub_2CEC10();
    v110 = v169;
    sub_2CE9C0();
    _Block_release(v107);

    (*(v159 + 8))(v108, v109);
    v170(v104, v161);
LABEL_31:

    return sub_29092C(a1, v174, v172, v173, v171);
  }

  if (v87 == enum case for AirPlayRouteSetupState.startedDeviceSearchWithRouteSetup(_:))
  {
    v111 = v151;
    (v168)(v151, v170, v85);
    v112 = sub_2CDFE0();
    v113 = sub_2CE670();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_0, v112, v113, "HandleIntentStrategy#makePreHandleIntentOutput Nothing to do here, routes are being setup", v114, 2u);
    }

    else
    {
    }

    v73(v111, v85);
    return sub_29092C(a1, v174, v172, v173, v171);
  }

  if (v87 != enum case for AirPlayRouteSetupState.error(_:))
  {
    v117 = v150;
    v168();
    v118 = v84;

    v119 = sub_2CDFE0();
    v120 = sub_2CE660();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v167 = v73;
      aBlock = v122;
      *v121 = 136315394;
      sub_2CC8B0();
      v123 = v164;
      v124 = sub_2CE2A0();
      v126 = sub_3F08(v124, v125, &aBlock);
      v170 = v71;
      v127 = v126;

      *(v121 + 4) = v127;
      *(v121 + 12) = 2080;
      v128 = [v118 debugDescription];
      v129 = sub_2CE270();
      v131 = v130;

      v132 = sub_3F08(v129, v131, &aBlock);

      *(v121 + 14) = v132;
      _os_log_impl(&dword_0, v119, v120, "HandleIntentStrategy#makeSiriKitIntentHandler Unexpected state of AirPlay route setup: %s, intent: %s", v121, 0x16u);
      swift_arrayDestroy();

      v167(v150, v50);
      a1 = v146;
    }

    else
    {

      v73(v117, v50);
      a1 = v146;
      v123 = v164;
    }

    (*(v163 + 8))(v162, v123);
    return sub_29092C(a1, v174, v172, v173, v171);
  }

  v115 = sub_2CC890();
  if (v115 != 2 && (v115 & 1) != 0)
  {
    goto LABEL_31;
  }

  v133 = v149;
  (v168)(v149, v170, v50);

  v134 = sub_2CDFE0();
  v135 = sub_2CE680();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v165 = v50;
    v138 = v56;
    v139 = v137;
    aBlock = v137;
    *v136 = 136315138;
    v182 = v138;
    sub_2A06C4(&qword_34E198, &type metadata accessor for AirPlayRouteSetupContext);
    v140 = sub_2CEE70();
    v142 = sub_3F08(v140, v141, &aBlock);

    *(v136 + 4) = v142;
    _os_log_impl(&dword_0, v134, v135, "HandleIntentStrategy#makePreHandleIntentOutput Something went wrong setting up AirPlay routes %s. Generating error dialog", v136, 0xCu);
    sub_306C(v139);
    v143 = v171;
    a1 = v146;

    v144 = v173;

    v167(v133, v165);
  }

  else
  {

    v167(v133, v50);
    v143 = v171;
    v144 = v173;
  }

  sub_2CC8A0();
  PlayMedia.HandleIntentStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(a1, v145, v172, v144, v143);
}

uint64_t sub_2901C4(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_executorProvider);
  v3 = v2[4];
  sub_35E0(v2, v2[3]);
  sub_2CBE60();
  v4 = sub_2CC3E0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_2CC3D0();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;

  sub_2CC390();
}

uint64_t sub_2902BC(uint64_t a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    return sub_2CC3C0();
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v7, v9, v2);
  v10 = sub_2CDFE0();
  v11 = sub_2CE670();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "HandleIntentStrategy#makePreHandleIntentOutput Routes not found in the intent", v12, 2u);
  }

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_290498(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v40 = a1;
  v2 = sub_2CC760();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v19 = v11[2];
  v36 = v11 + 2;
  v37 = v18;
  v35 = v19;
  v19(v17, v18, v10);
  v20 = sub_2CDFE0();
  v21 = sub_2CE670();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = v9;
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "HandleIntentStrategy#makePreHandleIntentOutput Waiting for device search to be completed", v22, 2u);
    v9 = v38;
  }

  v23 = v11[1];
  v38 = (v11 + 1);
  v34 = v23;
  v23(v17, v10);
  v24 = *(v40 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_executorProvider + 32);
  sub_35E0((v40 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_executorProvider), *(v40 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_executorProvider + 24));
  sub_2CBE60();
  v25 = sub_2CC3E0();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_2CC3D0();
  sub_2CC3B0();
  sub_2CC8B0();
  (*(v3 + 104))(v7, enum case for AirPlayRouteSetupState.error(_:), v2);
  sub_2A06C4(&qword_34FCC8, &type metadata accessor for AirPlayRouteSetupState);
  v28 = sub_2CE250();
  v29 = *(v3 + 8);
  v29(v7, v2);
  v29(v9, v2);
  if ((v28 & 1) == 0)
  {
    v35(v15, v37, v10);
    v30 = sub_2CDFE0();
    v31 = sub_2CE670();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "HandleIntentStrategy#makePreHandleIntentOutput Starting to set AirPlay routes. Device search has been completed", v32, 2u);
    }

    v34(v15, v10);
    sub_2CC3A0();
  }
}

uint64_t sub_29092C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v90 = a4;
  v91 = a2;
  v92 = a1;
  v9 = sub_2CDFD0();
  v84 = *(v9 - 8);
  v85 = v9;
  v10 = *(v84 + 64);
  v11 = __chkstk_darwin(v9);
  v81 = v12;
  v82 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v83 = &v75 - v13;
  v79 = sub_20410(&qword_34C6B0, &qword_2D0700);
  v14 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v78 = &v75 - v15;
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v86 = &v75 - v23;
  __chkstk_darwin(v22);
  v25 = &v75 - v24;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v27 = v17[2];
  v88 = (v17 + 2);
  v89 = v26;
  v87 = v27;
  v27(v25, v26, v16);
  v28 = sub_2CDFE0();
  v29 = sub_2CE690();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "HandleIntentStrategy#makePreHandleIntentOutput...", v30, 2u);
  }

  v33 = v17[1];
  v31 = v17 + 1;
  v32 = v33;
  v33(v25, v16);
  v34 = v6[7];
  sub_35E0(v6 + 3, v6[6]);
  if (sub_2CC4B0())
  {
    return sub_298224(v92, v91, a3, v90, a5);
  }

  v80 = v31;
  v36 = v86;
  v87(v86, v89, v16);
  v37 = v92;

  v38 = v37;
  v39 = sub_2CDFE0();
  v40 = sub_2CE690();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    ObjectType = v38;
    v94 = v76;
    *v41 = 136315138;
    sub_2CCFB0();
    v77 = a3;
    sub_2A06C4(&qword_34C170, &type metadata accessor for App);
    v42 = sub_2CEE70();
    v44 = sub_3F08(v42, v43, &v94);

    *(v41 + 4) = v44;
    a3 = v77;
    v38 = v92;
    _os_log_impl(&dword_0, v39, v40, "HandleIntentStrategy#makePreHandleIntentOutput for app: %s", v41, 0xCu);
    sub_306C(v76);

    v45 = v86;
  }

  else
  {

    v45 = v36;
  }

  v32(v45, v16);
  v86 = *(v6 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaViewProvider);
  v46 = swift_allocObject();
  v46[2] = v6;
  v46[3] = v38;
  v47 = v90;
  v48 = v91;
  v46[4] = v91;
  v46[5] = v47;
  v46[6] = a5;
  v46[7] = a3;
  v87(v21, v89, v16);

  v49 = v48;

  v90 = a3;
  v50 = sub_2CDFE0();
  v51 = sub_2CE670();
  v52 = os_log_type_enabled(v50, v51);
  v91 = v49;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v94 = v88;
    *v53 = 136446978;
    v54 = sub_2CCC90();
    v56 = sub_3F08(v54, v55, &v94);
    v89 = v32;
    v57 = v56;

    *(v53 + 4) = v57;
    *(v53 + 12) = 1026;
    *(v53 + 14) = 1;
    *(v53 + 18) = 2082;
    sub_2CB580();
    v58 = sub_2CE2A0();
    v60 = sub_3F08(v58, v59, &v94);

    *(v53 + 20) = v60;
    *(v53 + 28) = 2082;
    ObjectType = swift_getObjectType();
    sub_20410(&qword_3568B0, &unk_2D8DC0);
    v61 = sub_2CE2A0();
    v63 = sub_3F08(v61, v62, &v94);

    *(v53 + 30) = v63;
    _os_log_impl(&dword_0, v50, v51, "PlayMediaViewProvider#makeViews %{public}s called in interstitial?:%{BOOL,public}d, response mode: %{public}s for Intent: %{public}s", v53, 0x26u);
    swift_arrayDestroy();

    v89(v21, v16);
  }

  else
  {

    v32(v21, v16);
  }

  v77 = v46;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2A070C;
  *(v64 + 24) = v46;
  v65 = qword_34BF98;

  if (v65 != -1)
  {
    swift_once();
  }

  v66 = qword_35F760;
  v67 = v83;
  sub_2CDFB0();
  v68 = v84;
  v69 = v85;
  v70 = v82;
  (*(v84 + 16))(v82, v67, v85);
  v71 = (*(v68 + 80) + 33) & ~*(v68 + 80);
  v72 = (v81 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  *(v73 + 16) = "playMediaAceViewProviderMakeViews";
  *(v73 + 24) = 33;
  *(v73 + 32) = 2;
  (*(v68 + 32))(v73 + v71, v70, v69);
  v74 = (v73 + v72);
  *v74 = sub_2A07FC;
  v74[1] = v64;

  sub_2CE9E0();
  sub_2CDF90();

  sub_120964(v91, v92, v90, 1, v86, sub_2A0800, v73);

  (*(v68 + 8))(v67, v69);
}

uint64_t sub_291250(unint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(__int128 *), uint64_t a7)
{
  v78 = a7;
  v13 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v64 - v15;
  v17 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v77 = &v64 - v19;
  v20 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v76 = &v64 - v22;
  v23 = sub_2CCB30();
  v74 = *(v23 - 8);
  v75 = v23;
  v24 = *(v74 + 64);
  __chkstk_darwin(v23);
  v72 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2CCAC0();
  v71 = *(v73 - 8);
  v26 = *(v71 + 64);
  __chkstk_darwin(v73);
  v70 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2CE000();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v65 = a3;
    v66 = v16;
    v69 = a6;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v67 = a5;
    v68 = a4;
    v33 = sub_3ED0(v28, static Logger.default);
    swift_beginAccess();
    (*(v29 + 16))(v32, v33, v28);
    swift_errorRetain();
    v34 = sub_2CDFE0();
    v35 = sub_2CE680();
    sub_1E1074(a1, 1);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v79 = a1;
      v80[0] = v37;
      *v36 = 136446210;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v38 = sub_2CE2A0();
      v40 = sub_3F08(v38, v39, v80);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_0, v34, v35, "HandleIntentStrategy#makePreHandleIntentOutput failed with error: %{public}s", v36, 0xCu);
      sub_306C(v37);
    }

    (*(v29 + 8))(v32, v28);
    v41 = v65;
    v42 = v71;
    v43 = v70;
    v44 = v73;
    (*(v71 + 104))(v70, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v73);
    v46 = v74;
    v45 = v75;
    v47 = v72;
    (*(v74 + 104))(v72, enum case for AdditionalMetricsDescription.SourceFunction.preHandle(_:), v75);
    swift_getErrorValue();
    sub_2CEEF0();
    v65 = sub_2CCAE0();

    (*(v46 + 8))(v47, v45);
    (*(v42 + 8))(v43, v44);
    v48 = *(v41 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 32);
    v75 = sub_35E0((v41 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v41 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
    v49 = enum case for ActivityType.failed(_:);
    v50 = a1;
    v51 = sub_2C9C20();
    v52 = *(v51 - 8);
    v53 = v76;
    (*(v52 + 104))(v76, v49, v51);
    (*(v52 + 56))(v53, 0, 1, v51);
    v54 = sub_2CA130();
    v55 = v77;
    (*(*(v54 - 8) + 56))(v77, 1, 1, v54);
    v56 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v57 = sub_2C98F0();
    v58 = *(v57 - 8);
    v59 = v66;
    (*(v58 + 104))(v66, v56, v57);
    (*(v58 + 56))(v59, 0, 1, v57);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v59, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v55, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v53, &qword_34CB88, &unk_2D0D90);
    v80[0] = v50;
    v81 = 1;
    swift_errorRetain();
    v69(v80);
    return sub_30B8(v80, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v61 = *(a3 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaDialogProvider);
    sub_140154(a1, 0);

    v62 = a5;
    v63 = v78;

    sub_1AB6D4(a4, v62, v61, a3, a4, v62, a6, v63, a1);
    sub_1E1074(a1, 0);
  }
}

uint64_t sub_291AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6, unint64_t a7)
{
  v149 = a7;
  v169 = a6;
  v170 = a5;
  v168 = a4;
  v167 = a3;
  v171 = a2;
  v154 = sub_2CCB20();
  v153 = *(v154 - 8);
  v8 = *(v153 + 64);
  __chkstk_darwin(v154);
  v152 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_2CA3C0();
  v148 = *(v173 - 8);
  v10 = *(v148 + 64);
  __chkstk_darwin(v173);
  v147 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_2C8E80();
  v172 = *(v178 - 8);
  v12 = *(v172 + 64);
  __chkstk_darwin(v178);
  v177 = (&v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_20410(&unk_353020, &unk_2D0970);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v146 - v16;
  v156 = sub_2CA910();
  v155 = *(v156 - 8);
  v18 = *(v155 + 64);
  __chkstk_darwin(v156);
  v157 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v20 = *(*(v150 - 8) + 64);
  v21 = __chkstk_darwin(v150);
  v151 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v146 - v23;
  v25 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v166 = &v146 - v27;
  v28 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v165 = &v146 - v30;
  v31 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v164 = &v146 - v33;
  v163 = sub_2CCB30();
  v162 = *(v163 - 8);
  v34 = *(v162 + 64);
  __chkstk_darwin(v163);
  v159 = &v146 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_2CCAC0();
  v160 = *(v161 - 8);
  v36 = *(v160 + 64);
  __chkstk_darwin(v161);
  v158 = &v146 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2CE000();
  v39 = *(v38 - 8);
  v40 = v39[8];
  __chkstk_darwin(v38);
  v42 = &v146 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20410(&unk_3519A0, &qword_2D0980);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v46 = (&v146 - v45);
  sub_F3F4(a1, &v146 - v45, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_14A58(v46, v24, &qword_34C6E8, &unk_2D0FF0);
    v57 = *(v171 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 32);
    sub_35E0((v171 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider), *(v171 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 24));
    v175 = sub_2CBBD0();
    v174 = sub_2CB5B0();
    v58 = sub_2CA000();
    v59 = *(*(v58 - 8) + 56);
    v146 = v17;
    v59(v17, 1, 1, v58);
    v183 = 0;
    v181 = 0u;
    v182 = 0u;
    v60 = sub_81330();
    v176 = v24;
    if ((v60 & 1) == 0)
    {
      v47 = sub_2CA100();
      v84 = *(v47 + 16);
      if (v84)
      {
        v180 = _swiftEmptyArrayStorage;
        sub_2CED20();
        v38 = 0;
        v42 = 0;
        v85 = *(v47 + 16);
        v172 += 8;
        v173 = v85;
        while (v173 != v42)
        {
          if (v42 >= *(v47 + 16))
          {
            goto LABEL_27;
          }

          v89 = *(v47 + v38 + 32);
          v88 = *(v47 + v38 + 40);
          v90 = objc_allocWithZone(SAUIAssistantUtteranceView);

          v91 = [v90 init];
          v92 = v177;
          sub_2C8E70();
          sub_2C8E50();
          (*v172)(v92, v178);
          v93 = sub_2CE260();

          [v91 setAceId:v93];

          sub_2CA0D0();
          v39 = sub_2CE260();

          [v91 setDialogIdentifier:v39];

          v94 = sub_2CE260();
          [v91 setText:v94];

          v95 = v91;
          [v95 setCanUseServerTTS:1];
          [v95 setDisableDeviceRacing:v175 & 1];
          if ((v174 & 1) != 0 && (v96 = *(sub_2CA110() + 16), , v42 < v96))
          {
            v97 = sub_2CA110();
            if (v42 >= *(v97 + 16))
            {
              goto LABEL_28;
            }

            v98 = *(v97 + v38 + 32);
            v99 = *(v97 + v38 + 40);
            v39 = v97;

            v86 = sub_2CE260();

            [v95 setSpeakableText:v86];
          }

          else
          {

            v86 = v95;
          }

          ++v42;
          sub_2CED00();
          v87 = v180[2];
          sub_2CED30();
          sub_2CED40();
          sub_2CED10();
          v38 += 16;
          if (v84 == v42)
          {

            v100 = v180;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v100 = _swiftEmptyArrayStorage;
LABEL_23:
      v101 = SAUIDialogPhaseCompletionValue;
      v102 = objc_allocWithZone(SAUIAddViews);
      v103 = v101;
      v65 = [v102 init];
      v62 = v163;
      v63 = v159;
      if (v100 >> 62)
      {
        sub_334A0(0, &qword_34CD10, SAAceView_ptr);

        v104 = sub_2CED90();
      }

      else
      {

        sub_2CEEB0();
        sub_334A0(0, &qword_34CD10, SAAceView_ptr);
        v104 = v100;
      }

      v185 = v104;

      sub_80E28(v105);
      sub_80E28(_swiftEmptyArrayStorage);
      sub_334A0(0, &qword_34CD10, SAAceView_ptr);
      isa = sub_2CE400().super.isa;

      [v65 setViews:isa];

      [v65 setDialogPhase:v103];
      v66 = v146;
      sub_2C9E30();
LABEL_35:

      sub_30B8(&v181, &qword_34CC80, &qword_2D1520);
      sub_30B8(v66, &unk_353020, &unk_2D0970);
      v120 = v160;
      v121 = v158;
      v122 = v161;
      (*(v160 + 104))(v158, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v161);
      v123 = v162;
      (*(v162 + 104))(v63, enum case for AdditionalMetricsDescription.SourceFunction.preHandle(_:), v62);
      v124 = v153;
      v125 = v152;
      v126 = v154;
      (*(v153 + 104))(v152, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v154);
      v178 = sub_2CCAD0();
      (*(v124 + 8))(v125, v126);
      (*(v123 + 8))(v63, v62);
      (*(v120 + 8))(v121, v122);
      v127 = *(v171 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 32);
      v177 = sub_35E0((v171 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v171 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
      v128 = enum case for ActivityType.showInterstitial(_:);
      v129 = sub_2C9C20();
      v130 = *(v129 - 8);
      v131 = v164;
      (*(v130 + 104))(v164, v128, v129);
      (*(v130 + 56))(v131, 0, 1, v129);
      v132 = v176;
      v133 = v151;
      sub_F3F4(v176, v151, &qword_34C6E8, &unk_2D0FF0);

      v134 = sub_2CA130();
      v135 = *(v134 - 8);
      v136 = v165;
      (*(v135 + 32))(v165, v133, v134);
      (*(v135 + 56))(v136, 0, 1, v134);
      v137 = enum case for SiriKitReliabilityCodes.success(_:);
      v138 = sub_2C98F0();
      v139 = *(v138 - 8);
      v140 = v166;
      (*(v139 + 104))(v166, v137, v138);
      (*(v139 + 56))(v140, 0, 1, v138);
      sub_2CE710();
      sub_2CB4E0();

      sub_30B8(v140, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v136, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v131, &qword_34CB88, &unk_2D0D90);
      v141 = v156;
      *(&v182 + 1) = v156;
      v183 = &protocol witness table for AceOutput;
      v142 = sub_F390(&v181);
      v143 = v155;
      v144 = v157;
      (*(v155 + 16))(v142, v157, v141);
      v184 = 0;
      v170(&v181);
      (*(v143 + 8))(v144, v141);
      sub_30B8(v132, &qword_34C6E8, &unk_2D0FF0);
      return sub_30B8(&v181, qword_34C798, &qword_2D0DA0);
    }

    v61 = v149;
    v62 = v163;
    if (v149 >> 62)
    {
      v107 = sub_2CEDA0();
      v63 = v159;
      if (v107)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v63 = v159;
      if (*(&dword_10 + (v149 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_8:
        v64 = sub_81D44(v24, 1);
        sub_82014(v64, v61, 0);

        sub_2CE270();
        v65 = sub_829E4();

        v66 = v146;
        sub_2C9E30();
        goto LABEL_35;
      }
    }

    v108 = v24;
    v65 = [objc_allocWithZone(SAUIAddDialogs) init];
    v109 = v177;
    sub_2C8E70();
    sub_2C8E50();
    (*(v172 + 8))(v109, v178);
    v110 = sub_2CE260();

    [v65 setAceId:v110];

    sub_81D44(v108, 1);
    sub_334A0(0, &qword_34DFC8, SADialog_ptr);
    v111 = sub_2CE400().super.isa;

    [v65 setDialogs:v111];

    sub_334A0(0, &qword_353110, NSNumber_ptr);
    v112 = sub_2CEB10(0).super.super.isa;
    [v65 setListenAfterSpeaking:v112];

    v113 = v147;
    sub_2CA0E0();
    v114 = v148;
    v115 = v173;
    if ((*(v148 + 88))(v113, v173) == enum case for BehaviorAfterSpeaking.dingAndListen(_:))
    {
      (*(v114 + 96))(v113, v115);
      v116 = *v113;
      v117 = v113[1];
      v118 = [objc_allocWithZone(SAUIListenAfterSpeakingBehavior) init];
      v119 = sub_2CE260();

      [v118 setStartAlertSoundID:v119];

      [v65 setListenAfterSpeakingBehavior:v118];
    }

    else
    {
      (*(v114 + 8))(v113, v115);
    }

    v66 = v146;
    sub_2C9E10();
    goto LABEL_35;
  }

  v47 = *v46;
  if (qword_34BF58 != -1)
  {
LABEL_29:
    swift_once();
  }

  v48 = sub_3ED0(v38, static Logger.default);
  swift_beginAccess();
  (v39[2])(v42, v48, v38);
  swift_errorRetain();
  v49 = sub_2CDFE0();
  v50 = sub_2CE680();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = v39;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v181 = v53;
    *v52 = 136446210;
    v179 = v47;
    swift_errorRetain();
    sub_20410(&qword_34C6E0, &unk_2D0730);
    v54 = sub_2CE2A0();
    v56 = sub_3F08(v54, v55, &v181);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_0, v49, v50, "HandleIntentStrategy#makePreHandleIntentOutput playMediaDialogProvider.makePreHandleIntentDialog failed with error: %{public}s", v52, 0xCu);
    sub_306C(v53);

    (v51[1])(v42, v38);
  }

  else
  {

    (v39[1])(v42, v38);
  }

  v67 = v163;
  v68 = v162;
  v69 = v161;
  v70 = v160;
  v71 = v158;
  (*(v160 + 104))(v158, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v161);
  v72 = v159;
  (*(v68 + 104))(v159, enum case for AdditionalMetricsDescription.SourceFunction.preHandle(_:), v67);
  swift_getErrorValue();
  sub_2CEEF0();
  v178 = sub_2CCAE0();

  (*(v68 + 8))(v72, v67);
  (*(v70 + 8))(v71, v69);
  v73 = *(v171 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 32);
  v177 = sub_35E0((v171 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v171 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
  v74 = enum case for ActivityType.failed(_:);
  v75 = sub_2C9C20();
  v76 = *(v75 - 8);
  v77 = v164;
  (*(v76 + 104))(v164, v74, v75);
  (*(v76 + 56))(v77, 0, 1, v75);
  v78 = sub_2CA130();
  v79 = v165;
  (*(*(v78 - 8) + 56))(v165, 1, 1, v78);
  v80 = enum case for SiriKitReliabilityCodes.renderingError(_:);
  v81 = sub_2C98F0();
  v82 = *(v81 - 8);
  v83 = v166;
  (*(v82 + 104))(v166, v80, v81);
  (*(v82 + 56))(v83, 0, 1, v81);
  sub_2CE710();
  sub_2CB4E0();

  sub_30B8(v83, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v79, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v77, &qword_34CB88, &unk_2D0D90);
  *&v181 = v47;
  v184 = 1;
  swift_errorRetain();
  v170(&v181);

  return sub_30B8(&v181, qword_34C798, &qword_2D0DA0);
}

uint64_t PlayMedia.HandleIntentStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v87 = a4;
  v88 = a5;
  v89 = a3;
  v9 = sub_2CDFD0();
  v84 = *(v9 - 8);
  v10 = *(v84 + 64);
  v11 = __chkstk_darwin(v9);
  v81 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v74 - v12;
  v80 = sub_20410(&qword_34C6B0, &qword_2D0700);
  v13 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v79 = &v74 - v14;
  v15 = sub_2CE000();
  v86 = *(v15 - 8);
  v16 = v86[8];
  v17 = __chkstk_darwin(v15);
  v85 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v74 - v19;
  sub_2CB450();
  v21 = v5[7];
  sub_35E0(v5 + 3, v5[6]);
  if (sub_2CC4B0())
  {
    v23 = v88;
    v22 = v89;
    v24 = v87;

    return sub_29A5A0(a1, a2, v22, v24, v23);
  }

  else
  {
    v76 = a2;
    v77 = v10;
    v78 = v9;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v26 = sub_3ED0(v15, static Logger.default);
    swift_beginAccess();
    v27 = v86;
    v74 = v86[2];
    v75 = v26;
    v74(v20, v26, v15);

    v28 = sub_2CDFE0();
    v29 = v15;
    v30 = sub_2CE670();

    v31 = os_log_type_enabled(v28, v30);
    v83 = a1;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 136315138;
      ObjectType = v83;
      v91 = v33;
      sub_2CCFB0();
      sub_2A06C4(&qword_34C170, &type metadata accessor for App);
      v34 = sub_2CEE70();
      v36 = sub_3F08(v34, v35, &v91);

      *(v32 + 4) = v36;
      v27 = v86;
      _os_log_impl(&dword_0, v28, v30, "HandleIntentStrategy#makeIntentHandledResponse for app: %s", v32, 0xCu);
      sub_306C(v33);
      a1 = v83;
    }

    v37 = v27[1];
    v37(v20, v29);
    v38 = v29;
    v40 = v88;
    v39 = v89;
    v88 = *(v6 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaViewProvider);
    v41 = swift_allocObject();
    v41[2] = v6;
    v41[3] = a1;
    v42 = v75;
    v43 = v76;
    v44 = v87;
    v41[4] = v76;
    v41[5] = v44;
    v41[6] = v40;
    v41[7] = v39;
    v89 = v41;
    v45 = v85;
    v74(v85, v42, v38);

    v46 = v43;

    v86 = v39;
    v47 = sub_2CDFE0();
    v48 = sub_2CE670();
    v49 = os_log_type_enabled(v47, v48);
    v87 = v46;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v76 = v38;
      v91 = v51;
      *v50 = 136446978;
      v52 = sub_2CCC90();
      v54 = sub_3F08(v52, v53, &v91);

      *(v50 + 4) = v54;
      *(v50 + 12) = 1026;
      *(v50 + 14) = 0;
      *(v50 + 18) = 2082;
      sub_2CB580();
      v55 = sub_2CE2A0();
      v57 = sub_3F08(v55, v56, &v91);

      *(v50 + 20) = v57;
      *(v50 + 28) = 2082;
      ObjectType = swift_getObjectType();
      sub_20410(&qword_3568B0, &unk_2D8DC0);
      v58 = sub_2CE2A0();
      v60 = sub_3F08(v58, v59, &v91);

      *(v50 + 30) = v60;
      _os_log_impl(&dword_0, v47, v48, "PlayMediaViewProvider#makeViews %{public}s called in interstitial?:%{BOOL,public}d, response mode: %{public}s for Intent: %{public}s", v50, 0x26u);
      swift_arrayDestroy();

      v61 = v85;
      v62 = v76;
    }

    else
    {

      v61 = v45;
      v62 = v38;
    }

    v37(v61, v62);
    v63 = v77;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_29F57C;
    *(v64 + 24) = v89;
    v65 = qword_34BF98;

    if (v65 != -1)
    {
      swift_once();
    }

    v66 = qword_35F760;
    v67 = v82;
    sub_2CDFB0();
    v68 = v84;
    v69 = v81;
    v70 = v78;
    (*(v84 + 16))(v81, v67, v78);
    v71 = (*(v68 + 80) + 33) & ~*(v68 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = "playMediaAceViewProviderMakeViews";
    *(v72 + 24) = 33;
    *(v72 + 32) = 2;
    (*(v68 + 32))(v72 + v71, v69, v70);
    v73 = (v72 + ((v63 + v71 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v73 = sub_29F594;
    v73[1] = v64;

    sub_2CE9E0();
    sub_2CDF90();

    sub_120964(v87, v83, v86, 0, v88, sub_29F66C, v72);

    (*(v68 + 8))(v67, v70);
  }
}

uint64_t sub_293ACC(unint64_t a1, char a2, uint64_t a3, void *a4, void *a5, void (*a6)(void *), uint64_t a7, void *a8)
{
  v75 = a8;
  v80 = a6;
  v81 = a7;
  v82 = a5;
  v83 = a4;
  v84 = a3;
  v10 = sub_2CE000();
  v78 = *(v10 - 8);
  v79 = v10;
  v11 = *(v78 + 64);
  __chkstk_darwin(v10);
  v77 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v73 - v15;
  v17 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v76 = &v73 - v19;
  v20 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v73 - v22;
  v24 = sub_2CCB30();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2CCAC0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v30 + 104))(v33, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v29);
    (*(v25 + 104))(v28, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v24);
    v74 = a1;
    swift_getErrorValue();
    sub_2CEEF0();
    v79 = sub_2CCAE0();

    (*(v25 + 8))(v28, v24);
    (*(v30 + 8))(v33, v29);
    v34 = *(v84 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 32);
    sub_35E0((v84 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v84 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
    v35 = enum case for ActivityType.failed(_:);
    v36 = sub_2C9C20();
    v37 = *(v36 - 8);
    (*(v37 + 104))(v23, v35, v36);
    (*(v37 + 56))(v23, 0, 1, v36);
    v38 = sub_2CA130();
    v39 = v76;
    (*(*(v38 - 8) + 56))(v76, 1, 1, v38);
    v40 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v41 = sub_2C98F0();
    v42 = *(v41 - 8);
    (*(v42 + 104))(v16, v40, v41);
    (*(v42 + 56))(v16, 0, 1, v41);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v16, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v39, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v23, &qword_34CB88, &unk_2D0D90);
    v85[0] = v74;
    v86 = 1;
    swift_errorRetain();
    v80(v85);
    return sub_30B8(v85, qword_34C798, &qword_2D0DA0);
  }

  v44 = a1 & 0xFFFFFFFFFFFFFF8;
  v45 = a1;
  if (a1 >> 62)
  {
    v46 = sub_2CEDA0();
  }

  else
  {
    v46 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v48 = v82;
  v47 = v83;
  v49 = v84;
  v51 = v78;
  v50 = v79;
  v52 = v77;
  if (v46)
  {
    if ((v45 & 0xC000000000000001) != 0)
    {

      v54 = sub_2CECD0();
    }

    else
    {
      if (!*(v44 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      v53 = *(v45 + 32);
      sub_140154(v45, 0);
      v54 = v53;
    }

    v55 = v54;
    v56 = [v54 viewId];

    if (v56)
    {
      v49 = sub_2CE270();
      v44 = v57;

      if (qword_34BF58 == -1)
      {
LABEL_11:
        v58 = sub_3ED0(v50, static Logger.default);
        swift_beginAccess();
        (*(v51 + 16))(v52, v58, v50);

        v59 = v51;
        v60 = sub_2CDFE0();
        v61 = v50;
        v62 = sub_2CE660();

        if (os_log_type_enabled(v60, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v87 = v64;
          *v63 = 136315138;
          v65 = sub_3F08(v49, v44, &v87);

          *(v63 + 4) = v65;
          _os_log_impl(&dword_0, v60, v62, "HandleIntentStrategy#makeIntentHandledResponse viewId: %s", v63, 0xCu);
          sub_306C(v64);
          v48 = v82;

          v47 = v83;
        }

        else
        {
        }

        (*(v59 + 8))(v52, v61);
        v49 = v84;
        goto LABEL_16;
      }

LABEL_20:
      swift_once();
      goto LABEL_11;
    }
  }

  else
  {
  }

LABEL_16:
  v66 = *(v49 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaDialogProvider);
  v67 = swift_allocObject();
  *(v67 + 16) = v49;
  *(v67 + 24) = v47;
  v68 = v80;
  v69 = v81;
  *(v67 + 32) = v48;
  *(v67 + 40) = v68;
  v70 = v75;
  *(v67 + 48) = v69;
  *(v67 + 56) = v70;
  *(v67 + 64) = v45;

  v71 = v48;

  v72 = v70;
  sub_196E80(v47, v71, v70, sub_2A0668, v67);
}

uint64_t sub_294354(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(__int128 *), uint64_t a6, uint64_t a7, unint64_t a8)
{
  v164 = a8;
  v180 = a7;
  v169 = a6;
  v170 = a5;
  v173 = a4;
  v168 = a3;
  v175 = a2;
  v185 = a1;
  v160 = sub_2CCB20();
  v159 = *(v160 - 8);
  v8 = *(v159 + 64);
  __chkstk_darwin(v160);
  v158 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_2CA3C0();
  v176 = *(v178 - 8);
  v10 = *(v176 + 64);
  __chkstk_darwin(v178);
  v154 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_2C8E80();
  v177 = *(v184 - 8);
  v12 = *(v177 + 64);
  __chkstk_darwin(v184);
  v183 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_2CA910();
  v161 = *(v162 - 8);
  v14 = *(v161 + 64);
  __chkstk_darwin(v162);
  v165 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20410(&unk_353020, &unk_2D0970);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v172 = &v150 - v18;
  v156 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v19 = *(*(v156 - 8) + 64);
  v20 = __chkstk_darwin(v156);
  v157 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v150 - v22;
  v24 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v167 = &v150 - v26;
  v27 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v166 = &v150 - v29;
  v30 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v174 = &v150 - v32;
  v171 = sub_2CCB30();
  v33 = *(v171 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v171);
  v36 = &v150 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2CCAC0();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v41 = &v150 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20410(&unk_3519A0, &qword_2D0980);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v45 = (&v150 - v44);
  sub_F3F4(v185, &v150 - v44, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = *v45;
    (*(v38 + 104))(v41, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v37);
    v47 = v171;
    (*(v33 + 104))(v36, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v171);
    swift_getErrorValue();
    sub_2CEEF0();
    v185 = sub_2CCAE0();

    (*(v33 + 8))(v36, v47);
    (*(v38 + 8))(v41, v37);
    v48 = *(v175 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 32);
    v184 = sub_35E0((v175 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v175 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
    v49 = enum case for ActivityType.failed(_:);
    v50 = sub_2C9C20();
    v51 = *(v50 - 8);
    v52 = v174;
    (*(v51 + 104))(v174, v49, v50);
    (*(v51 + 56))(v52, 0, 1, v50);
    v53 = sub_2CA130();
    v54 = v166;
    (*(*(v53 - 8) + 56))(v166, 1, 1, v53);
    v55 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v56 = sub_2C98F0();
    v57 = *(v56 - 8);
    v58 = v167;
    (*(v57 + 104))(v167, v55, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v58, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v54, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v52, &qword_34CB88, &unk_2D0D90);
    *&v186 = v46;
    v189 = 1;
    swift_errorRetain();
    v170(&v186);

    return sub_30B8(&v186, qword_34C798, &qword_2D0DA0);
  }

  v181 = v41;
  v152 = v36;
  v153 = v38;
  v182 = v37;
  v163 = v33;
  v185 = v23;
  sub_14A58(v45, v23, &qword_34C6E8, &unk_2D0FF0);
  v59 = v173;
  v60 = v175;
  sub_295BA8(v173);
  sub_28E070(v59, v172);
  v61 = *(v60 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 32);
  sub_35E0((v60 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider), *(v60 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 24));
  LODWORD(v180) = sub_2CBBD0();
  v62 = *(*(v60 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaViewProvider) + 224);
  if (v62)
  {
    sub_20410(&unk_351900, &unk_2D0960);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_2D0770;
    *(v63 + 32) = v62;
  }

  else
  {
    v63 = _swiftEmptyArrayStorage;
  }

  v65 = v181;
  v64 = v182;
  v66 = objc_allocWithZone(SAUIRequestEndBehavior);
  v67 = v62;
  v68 = &off_349000;
  v69 = [v66 init];
  sub_334A0(0, &qword_353110, NSNumber_ptr);
  isa = sub_2CEB10(6000).super.super.isa;
  [v69 setMinimumAutoDismissalTimeInMs:isa];

  [v69 setPremptivelyResumeMedia:1];
  v71 = v69;
  v179 = sub_2CB5B0();
  if (v63 >> 62)
  {
    goto LABEL_30;
  }

  sub_2CEEB0();
  sub_334A0(0, &qword_350370, SABaseCommand_ptr);
  v151 = v63;
  while (1)
  {
    v72 = v163;

    v188 = 0;
    v186 = 0u;
    v187 = 0u;
    v73 = sub_81330();
    v155 = v71;
    if (v73)
    {
      v74 = v164;
      if (v164 >> 62)
      {
        v106 = sub_2CEDA0();
        v75 = v153;
        if (v106)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v75 = v153;
        if (*(&dword_10 + (v164 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_11:
          v76 = sub_81D44(v185, 1);
          sub_82014(v76, v74, 0);

          sub_2CE270();
          v77 = sub_829E4();
          v78 = v164;

          sub_2C9E30();

          v79 = v171;
          goto LABEL_36;
        }
      }

      v107 = [objc_allocWithZone(SAUIAddDialogs) v68[477]];
      v108 = v183;
      sub_2C8E70();
      sub_2C8E50();
      (*(v177 + 8))(v108, v184);
      v109 = sub_2CE260();

      [v107 setAceId:v109];

      sub_81D44(v185, 1);
      sub_334A0(0, &qword_34DFC8, SADialog_ptr);
      v110 = sub_2CE400().super.isa;

      [v107 setDialogs:v110];

      v111 = sub_2CEB10(0).super.super.isa;
      [v107 setListenAfterSpeaking:v111];

      v112 = v154;
      sub_2CA0E0();
      v113 = v176;
      v114 = v178;
      if ((*(v176 + 88))(v112, v178) == enum case for BehaviorAfterSpeaking.dingAndListen(_:))
      {
        (*(v113 + 96))(v112, v114);
        v115 = *v112;
        v116 = v112[1];
        v117 = [objc_allocWithZone(SAUIListenAfterSpeakingBehavior) v68[477]];
        v118 = sub_2CE260();

        [v117 setStartAlertSoundID:v118];

        [v107 setListenAfterSpeakingBehavior:v117];
      }

      else
      {
        (*(v113 + 8))(v112, v114);
      }

      v79 = v171;
      v119 = v155;
      [v107 setRequestEndBehavior:v155];
      sub_2C9E10();

      v71 = v119;

      v78 = v164;
      v72 = v163;
      goto LABEL_36;
    }

    v80 = sub_2CA100();
    v81 = *(v80 + 16);
    if (!v81)
    {
      break;
    }

    v191 = _swiftEmptyArrayStorage;
    v82 = v80;
    sub_2CED20();
    v83 = v82;
    v84 = 0;
    v71 = 0;
    v178 = *(v82 + 16);
    v177 += 8;
    v176 = v82;
    while (v178 != v71)
    {
      if (v71 >= *(v83 + 16))
      {
        goto LABEL_28;
      }

      v87 = *(v83 + v84 + 32);
      v88 = *(v83 + v84 + 40);
      v89 = objc_allocWithZone(SAUIAssistantUtteranceView);

      v90 = v68;
      v68 = [v89 v68[477]];
      v91 = v183;
      sub_2C8E70();
      sub_2C8E50();
      (*v177)(v91, v184);
      v92 = sub_2CE260();

      [(SEL *)v68 setAceId:v92];

      sub_2CA0D0();
      v65 = sub_2CE260();

      [(SEL *)v68 setDialogIdentifier:v65];

      v93 = sub_2CE260();
      [(SEL *)v68 setText:v93];

      v64 = v68;
      [(SEL *)v64 setCanUseServerTTS:1];
      [(SEL *)v64 setDisableDeviceRacing:v180 & 1];
      if ((v179 & 1) != 0 && (v94 = *(sub_2CA110() + 16), , v71 < v94))
      {
        v95 = sub_2CA110();
        if (v71 >= *(v95 + 16))
        {
          goto LABEL_29;
        }

        v96 = *(v95 + v84 + 32);
        v97 = *(v95 + v84 + 40);

        v85 = sub_2CE260();

        [(SEL *)v64 setSpeakableText:v85];
      }

      else
      {

        v85 = v64;
      }

      ++v71;
      sub_2CED00();
      v86 = v191[2];
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      v84 += 16;
      v65 = v181;
      v64 = v182;
      v68 = v90;
      v83 = v176;
      if (v81 == v71)
      {

        v98 = v191;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_334A0(0, &qword_350370, SABaseCommand_ptr);

    v151 = sub_2CED90();
  }

  v98 = _swiftEmptyArrayStorage;
LABEL_24:
  v99 = SAUIDialogPhaseCompletionValue;
  v100 = objc_allocWithZone(SAUIAddViews);
  v101 = v99;
  v102 = [v100 v68[477]];
  v75 = v153;
  if (v98 >> 62)
  {
    sub_334A0(0, &qword_34CD10, SAAceView_ptr);

    v103 = sub_2CED90();
  }

  else
  {

    sub_2CEEB0();
    sub_334A0(0, &qword_34CD10, SAAceView_ptr);
    v103 = v98;
  }

  v190 = v103;
  v78 = v164;

  sub_80E28(v104);
  sub_80E28(_swiftEmptyArrayStorage);
  sub_334A0(0, &qword_34CD10, SAAceView_ptr);
  v105 = sub_2CE400().super.isa;

  [v102 setViews:v105];

  [v102 setDialogPhase:v101];
  sub_2C9E30();

  v79 = v171;
  v72 = v163;
  v71 = v155;
LABEL_36:

  sub_30B8(&v186, &qword_34CC80, &qword_2D1520);
  v120 = *(sub_2AE70(v78) + 2);

  v121 = v152;
  if (!v120)
  {
    v122 = *(v175 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 32);
    sub_35E0((v175 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v175 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
    sub_2C99E0();
    sub_2C99D0();
    v123 = sub_2C9C20();
    (*(*(v123 - 8) + 56))(v174, 1, 1, v123);
    v72 = v163;
    v79 = v171;
    sub_2CB520();

    sub_30B8(v174, &qword_34CB88, &unk_2D0D90);
  }

  (*(v75 + 104))(v65, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v64);
  (*(v72 + 104))(v121, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v79);
  v124 = v159;
  v125 = v64;
  v126 = v79;
  v127 = v158;
  v128 = v160;
  (*(v159 + 104))(v158, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v160);
  v129 = sub_2CCAD0();
  v183 = v130;
  v184 = v129;
  (*(v124 + 8))(v127, v128);
  (*(v72 + 8))(v121, v126);
  (*(v75 + 8))(v65, v125);
  v131 = *(v175 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 32);
  v182 = sub_35E0((v175 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v175 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
  v132 = enum case for ActivityType.completed(_:);
  v133 = sub_2C9C20();
  v134 = *(v133 - 8);
  v135 = v174;
  (*(v134 + 104))(v174, v132, v133);
  (*(v134 + 56))(v135, 0, 1, v133);
  v136 = v185;
  v137 = v157;
  sub_F3F4(v185, v157, &qword_34C6E8, &unk_2D0FF0);

  v138 = sub_2CA130();
  v139 = *(v138 - 8);
  v140 = v166;
  (*(v139 + 32))(v166, v137, v138);
  (*(v139 + 56))(v140, 0, 1, v138);
  v141 = enum case for SiriKitReliabilityCodes.success(_:);
  v142 = sub_2C98F0();
  v143 = *(v142 - 8);
  v144 = v167;
  (*(v143 + 104))(v167, v141, v142);
  (*(v143 + 56))(v144, 0, 1, v142);
  sub_2CE710();
  sub_2CB4E0();

  sub_30B8(v144, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v140, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v135, &qword_34CB88, &unk_2D0D90);
  v145 = v162;
  *(&v187 + 1) = v162;
  v188 = &protocol witness table for AceOutput;
  v146 = sub_F390(&v186);
  v147 = v161;
  v148 = v165;
  (*(v161 + 16))(v146, v165, v145);
  v189 = 0;
  v170(&v186);

  (*(v147 + 8))(v148, v145);
  sub_30B8(v172, &unk_353020, &unk_2D0970);
  sub_30B8(v136, &qword_34C6E8, &unk_2D0FF0);
  return sub_30B8(&v186, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_295BA8(void *a1)
{
  v2 = v1;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2CDFE0();
  v11 = sub_2CE670();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "HandleIntentStrategy#registerCorrection Registering correction/undo", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  if (sub_2CB460())
  {
    sub_2CB110();

    sub_2C97A0();
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
  }

  sub_F3F4(v19, v17, &qword_356A70, &qword_2D8ED8);
  if (v18)
  {
    sub_35E0(v17, v18);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v2;
    v14 = a1;

    sub_2C9790();

    sub_30B8(v19, &qword_356A70, &qword_2D8ED8);
    return sub_306C(v17);
  }

  else
  {
    sub_30B8(v19, &qword_356A70, &qword_2D8ED8);
    return sub_30B8(v17, &qword_356A70, &qword_2D8ED8);
  }
}

uint64_t sub_295E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_295EA0, 0, 0);
}

uint64_t sub_295EA0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = sub_2CA550();
  *v3 = v0;
  v3[1] = sub_295F9C;
  v5 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000016, 0x80000000002E0F10, sub_29FF00, v1, v4);
}

uint64_t sub_295F9C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2960AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20410(&qword_356A78, &unk_2D8EF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-1] - v8;
  sub_2CBC60();
  sub_35E0(v17, v17[3]);
  sub_2CBE60();
  sub_306C(v17);
  v10 = sub_2CC3E0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_2CC3D0();
  (*(v6 + 16))(v9, a1, v5);
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  (*(v6 + 32))(v14 + v13, v9, v5);

  sub_2CC390();
}

uint64_t sub_296280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20410(&qword_356A78, &unk_2D8EF0);
  v41 = *(v6 - 8);
  v39 = *(v41 + 64);
  __chkstk_darwin(v6);
  v40 = &v36 - v7;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_20410(&unk_356F40, &unk_2D0740);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2D0090;
    sub_2CDCA0();
    *(v13 + 32) = sub_2CDC80();
    *(v13 + 40) = v14;
  }

  v15 = qword_34BF58;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v16, v8);

  v17 = sub_2CDFE0();
  v18 = sub_2CE670();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = a2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v6;
    v22 = v21;
    v42 = v21;
    *v20 = 136315138;
    v23 = sub_2CE420();
    v25 = sub_3F08(v23, v24, &v42);
    v36 = v8;
    v26 = a3;
    v27 = v25;

    *(v20 + 4) = v27;
    a3 = v26;
    _os_log_impl(&dword_0, v17, v18, "HandleIntentStrategy#registerCorrection executing pause as a correction/undo, devices: %s", v20, 0xCu);
    sub_306C(v22);
    v6 = v38;

    a2 = v37;

    (*(v9 + 8))(v12, v36);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v28 = (a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playbackController);
  v29 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playbackController + 24);
  v30 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playbackController + 32);
  sub_35E0(v28, v29);
  v32 = v40;
  v31 = v41;
  (*(v41 + 16))(v40, a3, v6);
  v33 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v34 = swift_allocObject();
  (*(v31 + 32))(v34 + v33, v32, v6);
  sub_2CDCB0();
}

uint64_t sub_296680(uint64_t a1, uint64_t a2)
{
  v20[1] = a2;
  v20[0] = sub_2CDCD0();
  v3 = *(v20[0] - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v20[0]);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CA550();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&qword_356A80, qword_2D8F00);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v20 - v14;
  sub_F3F4(a1, v20 - v14, &qword_356A80, qword_2D8F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = v15;
    v17 = v20[0];
    (*(v3 + 32))(v6, v16, v20[0]);
    *v11 = 0u;
    *(v11 + 1) = 0u;
    *(v11 + 4) = 0;
    *(v11 + 5) = sub_2CDCC0();
    *(v11 + 6) = v18;
    (*(v8 + 104))(v11, enum case for CorrectionsActionOutcome.failure(_:), v7);
    sub_20410(&qword_356A78, &unk_2D8EF0);
    sub_2CE4A0();
    return (*(v3 + 8))(v6, v17);
  }

  else
  {
    *(v11 + 4) = 0;
    *v11 = 0u;
    *(v11 + 1) = 0u;
    (*(v8 + 104))(v11, enum case for CorrectionsActionOutcome.success(_:), v7);
    sub_20410(&qword_356A78, &unk_2D8EF0);
    return sub_2CE4A0();
  }
}

uint64_t PlayMedia.HandleIntentStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v35 = a4;
  v36 = a5;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2CDFE0();
  v17 = sub_2CE690();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "PlayMedia+HandleIntentStategy#makeFailureHandlingIntentResponse", v18, 2u);
  }

  (*(v11 + 8))(v14, v10);
  v34 = *(v6 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaDialogProvider);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  strcpy((inited + 32), "MetricsError");
  *(inited + 16) = xmmword_2D0090;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v20 = 0xE000000000000000;
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_2CECB0(40);

  v38 = 0xD000000000000023;
  v39 = 0x80000000002E0DE0;
  v21 = [a3 userActivity];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 activityType];

    v24 = sub_2CE270();
    v20 = v25;
  }

  else
  {
    v24 = 0;
  }

  v40._countAndFlagsBits = v24;
  v40._object = v20;
  sub_2CE350(v40);

  v41._countAndFlagsBits = 95;
  v41._object = 0xE100000000000000;
  sub_2CE350(v41);
  v37 = [a3 code];
  v42._countAndFlagsBits = sub_2CEE70();
  sub_2CE350(v42);

  v26 = v38;
  v27 = v39;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v26;
  *(inited + 56) = v27;
  v28 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v29 = swift_allocObject();
  v29[2] = v6;
  v29[3] = a1;
  v30 = v35;
  v31 = v36;
  v29[4] = a2;
  v29[5] = v30;
  v29[6] = v31;
  v29[7] = a3;

  v32 = a2;

  sub_19636C(v28, a1, v32, a3, sub_29F670, v29);
}

uint64_t sub_296D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6, void *a7)
{
  v133 = a7;
  v143 = a6;
  v144 = a5;
  v142 = a4;
  v141 = a3;
  v145 = a2;
  v149 = a1;
  v147 = sub_2CA3C0();
  v131 = *(v147 - 8);
  v7 = *(v131 + 64);
  __chkstk_darwin(v147);
  v130 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_2C8E80();
  v146 = *(v151 - 8);
  v9 = *(v146 + 64);
  __chkstk_darwin(v151);
  v150 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v137 = &v124 - v13;
  v136 = sub_2CA910();
  v135 = *(v136 - 8);
  v14 = *(v135 + 64);
  __chkstk_darwin(v136);
  v138 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v16 = *(*(v132 - 8) + 64);
  v17 = __chkstk_darwin(v132);
  v134 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v153 = &v124 - v19;
  v20 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v140 = &v124 - v22;
  v23 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v152 = &v124 - v25;
  v26 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v139 = &v124 - v28;
  v29 = sub_2CCB30();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2CCAC0();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20410(&unk_3519A0, &qword_2D0980);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v42 = (&v124 - v41);
  sub_F3F4(v149, &v124 - v41, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v124 = v38;
    v125 = v33;
    v126 = v35;
    v127 = v34;
    v128 = v30;
    v129 = v29;
    v55 = v153;
    sub_14A58(v42, v153, &qword_34C6E8, &unk_2D0FF0);
    v56 = *(v145 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 32);
    sub_35E0((v145 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider), *(v145 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 24));
    LODWORD(v149) = sub_2CBBD0();
    v148 = sub_2CB5B0();
    v57 = sub_2CA000();
    v58 = v137;
    (*(*(v57 - 8) + 56))(v137, 1, 1, v57);
    v156 = 0;
    v154 = 0u;
    v155 = 0u;
    if (sub_81330())
    {
      if (!(_swiftEmptyArrayStorage >> 62))
      {
LABEL_5:
        v59 = [objc_allocWithZone(SAUIAddDialogs) init];
        v60 = v150;
        sub_2C8E70();
        sub_2C8E50();
        (*(v146 + 8))(v60, v151);
        v61 = sub_2CE260();

        [v59 setAceId:v61];

        sub_81D44(v55, 1);
        sub_334A0(0, &qword_34DFC8, SADialog_ptr);
        isa = sub_2CE400().super.isa;

        [v59 setDialogs:isa];

        sub_334A0(0, &qword_353110, NSNumber_ptr);
        v63 = sub_2CEB10(0).super.super.isa;
        [v59 setListenAfterSpeaking:v63];

        v64 = v130;
        sub_2CA0E0();
        v65 = v131;
        v66 = v147;
        v67 = (*(v131 + 88))(v64, v147);
        v68 = v127;
        if (v67 == enum case for BehaviorAfterSpeaking.dingAndListen(_:))
        {
          (*(v65 + 96))(v64, v66);
          v69 = *v64;
          v70 = v64[1];
          v71 = [objc_allocWithZone(SAUIListenAfterSpeakingBehavior) init];
          v72 = sub_2CE260();

          [v71 setStartAlertSoundID:v72];

          [v59 setListenAfterSpeakingBehavior:v71];
        }

        else
        {
          (*(v65 + 8))(v64, v66);
        }

        v92 = v139;
        v93 = v133;
        v94 = v129;
        sub_2C9E10();
        v55 = v152;
LABEL_24:
        v100 = v128;
LABEL_25:

        sub_30B8(&v154, &qword_34CC80, &qword_2D1520);
        sub_30B8(v58, &unk_353020, &unk_2D0970);
        v101 = v126;
        v102 = v124;
        (*(v126 + 104))(v124, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v68);
        v103 = v125;
        (*(v100 + 104))(v125, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v94);
        *&v154 = [v93 code];
        sub_2CEE70();
        v152 = sub_2CCAE0();

        (*(v100 + 8))(v103, v94);
        (*(v101 + 8))(v102, v68);
        v104 = *(v145 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 32);
        v151 = sub_35E0((v145 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v145 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
        v105 = enum case for ActivityType.failed(_:);
        v106 = sub_2C9C20();
        v107 = *(v106 - 8);
        (*(v107 + 104))(v92, v105, v106);
        (*(v107 + 56))(v92, 0, 1, v106);
        v108 = v153;
        v109 = v134;
        sub_F3F4(v153, v134, &qword_34C6E8, &unk_2D0FF0);

        v110 = sub_2CA130();
        v111 = *(v110 - 8);
        (*(v111 + 32))(v55, v109, v110);
        (*(v111 + 56))(v55, 0, 1, v110);
        v112 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
        v113 = sub_2C98F0();
        v114 = v92;
        v115 = v55;
        v116 = *(v113 - 8);
        v117 = v140;
        (*(v116 + 104))(v140, v112, v113);
        (*(v116 + 56))(v117, 0, 1, v113);
        sub_2CE710();
        sub_2CB4E0();

        sub_30B8(v117, &qword_34CB78, &unk_2D0D80);
        sub_30B8(v115, &qword_34CB80, &unk_2D0B30);
        sub_30B8(v114, &qword_34CB88, &unk_2D0D90);
        v118 = v136;
        *(&v155 + 1) = v136;
        v156 = &protocol witness table for AceOutput;
        v119 = sub_F390(&v154);
        v120 = v135;
        v121 = v138;
        (*(v135 + 16))(v119, v138, v118);
        v157 = 0;
        v144(&v154);
        (*(v120 + 8))(v121, v118);
        sub_30B8(v108, &qword_34C6E8, &unk_2D0FF0);
        return sub_30B8(&v154, qword_34C798, &qword_2D0DA0);
      }
    }

    else
    {
      v73 = sub_2CA100();
      v74 = *(v73 + 16);
      if (!v74)
      {

        v91 = _swiftEmptyArrayStorage;
        v55 = v152;
LABEL_21:
        v95 = SAUIDialogPhaseCompletionValue;
        v96 = objc_allocWithZone(SAUIAddViews);
        v97 = v95;
        v59 = [v96 init];
        v68 = v127;
        if (v91 >> 62)
        {
          sub_334A0(0, &qword_34CD10, SAAceView_ptr);

          v98 = sub_2CED90();
        }

        else
        {

          sub_2CEEB0();
          sub_334A0(0, &qword_34CD10, SAAceView_ptr);
          v98 = v91;
        }

        v158 = v98;
        sub_80E28(_swiftEmptyArrayStorage);
        sub_80E28(_swiftEmptyArrayStorage);
        sub_334A0(0, &qword_34CD10, SAAceView_ptr);
        v99 = sub_2CE400().super.isa;

        [v59 setViews:v99];

        [v59 setDialogPhase:v97];
        sub_2C9E30();
        v92 = v139;
        v93 = v133;
        v94 = v129;
        goto LABEL_24;
      }

      v159 = _swiftEmptyArrayStorage;
      sub_2CED20();
      v75 = 0;
      v58 = 0;
      v76 = *(v73 + 16);
      v146 += 8;
      v147 = v76;
      while (v147 != v58)
      {
        if (v58 >= *(v73 + 16))
        {
          goto LABEL_28;
        }

        v79 = *(v73 + v75 + 32);
        v55 = *(v73 + v75 + 40);
        v80 = objc_allocWithZone(SAUIAssistantUtteranceView);

        v81 = [v80 init];
        v82 = v150;
        sub_2C8E70();
        sub_2C8E50();
        (*v146)(v82, v151);
        v83 = sub_2CE260();

        [v81 setAceId:v83];

        sub_2CA0D0();
        v84 = sub_2CE260();

        [v81 setDialogIdentifier:v84];

        v85 = sub_2CE260();
        [v81 setText:v85];

        v86 = v81;
        [v86 setCanUseServerTTS:1];
        [v86 setDisableDeviceRacing:v149 & 1];
        if ((v148 & 1) != 0 && (v87 = *(sub_2CA110() + 16), , v58 < v87))
        {
          v88 = sub_2CA110();
          if (v58 >= *(v88 + 16))
          {
            goto LABEL_29;
          }

          v89 = *(v88 + v75 + 32);
          v90 = *(v88 + v75 + 40);

          v77 = sub_2CE260();

          [v86 setSpeakableText:v77];
        }

        else
        {

          v77 = v86;
        }

        ++v58;
        sub_2CED00();
        v78 = v159[2];
        sub_2CED30();
        sub_2CED40();
        sub_2CED10();
        v75 += 16;
        v55 = v152;
        if (v74 == v58)
        {

          v91 = v159;
          v58 = v137;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    if (sub_2CEDA0())
    {
      v123 = sub_81D44(v55, 1);
      sub_82014(v123, _swiftEmptyArrayStorage, 0);

      sub_2CE270();
      v59 = sub_829E4();

      sub_2C9E30();
      v55 = v152;
      v92 = v139;
      v93 = v133;
      v94 = v129;
      v100 = v128;
      v68 = v127;
      goto LABEL_25;
    }

    goto LABEL_5;
  }

  v43 = *v42;
  (*(v35 + 104))(v38, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v34);
  (*(v30 + 104))(v33, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v29);
  swift_getErrorValue();
  sub_2CEEF0();
  v153 = sub_2CCAE0();

  (*(v30 + 8))(v33, v29);
  (*(v35 + 8))(v38, v34);
  v44 = *(v145 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 32);
  v151 = sub_35E0((v145 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v145 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
  v45 = enum case for ActivityType.failed(_:);
  v46 = sub_2C9C20();
  v47 = *(v46 - 8);
  v48 = v139;
  (*(v47 + 104))(v139, v45, v46);
  (*(v47 + 56))(v48, 0, 1, v46);
  v49 = sub_2CA130();
  v50 = v152;
  (*(*(v49 - 8) + 56))(v152, 1, 1, v49);
  v51 = enum case for SiriKitReliabilityCodes.renderingError(_:);
  v52 = sub_2C98F0();
  v53 = *(v52 - 8);
  v54 = v140;
  (*(v53 + 104))(v140, v51, v52);
  (*(v53 + 56))(v54, 0, 1, v52);
  sub_2CE710();
  sub_2CB4E0();

  sub_30B8(v54, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v50, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v48, &qword_34CB88, &unk_2D0D90);
  *&v154 = v43;
  v157 = 1;
  swift_errorRetain();
  v144(&v154);

  return sub_30B8(&v154, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_298224(uint64_t a1, void *a2, id a3, uint64_t a4, uint64_t a5)
{
  v106 = a5;
  v104 = a4;
  v97 = a2;
  v98 = a3;
  v6 = type metadata accessor for ResponseFactoryOutputContext(0);
  v91 = *(v6 - 1);
  v7 = *(v91 + 64);
  v8 = __chkstk_darwin(v6);
  v92 = v9;
  v93 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v94 = &v90 - v10;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v96 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v100 = &v90 - v17;
  __chkstk_darwin(v16);
  v19 = &v90 - v18;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  v21 = v12[2];
  v102 = v12 + 2;
  v103 = v20;
  v101 = v21;
  v21(v19, v20, v11);

  v22 = sub_2CDFE0();
  v23 = sub_2CE670();

  v24 = os_log_type_enabled(v22, v23);
  v107 = a1;
  v99 = v12;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 136315394;
    v108 = v107;
    v109 = v26;
    sub_2CCFB0();
    sub_2A06C4(&qword_34C170, &type metadata accessor for App);
    v27 = sub_2CEE70();
    v29 = sub_3F08(v27, v28, &v109);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    v30 = sub_2CCCA0();
    v32 = sub_3F08(v30, v31, &v109);

    *(v25 + 14) = v32;
    _os_log_impl(&dword_0, v22, v23, "HandleIntentStrategy#preHandleIntentOutputWithRF response is being handled using Response Framework2.0. for app: %s Insights:%{public}s", v25, 0x16u);
    swift_arrayDestroy();

    v12 = v99;
    a1 = v107;
  }

  v95 = v12[1];
  v95(v19, v11);
  v33 = swift_allocObject();
  v34 = v104;
  v35 = v105;
  v33[2] = v105;
  v33[3] = a1;
  v36 = v97;
  v37 = v98;
  v33[4] = v97;
  v33[5] = v37;
  v38 = v106;
  v33[6] = v34;
  v33[7] = v38;
  v39 = v100;
  v101(v100, v103, v11);
  swift_retain_n();
  swift_retain_n();
  v40 = v36;
  v41 = v37;
  swift_retain_n();
  v97 = v40;
  v98 = v41;
  v42 = sub_2CDFE0();
  v43 = sub_2CE670();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v109 = v45;
    *v44 = 136446210;
    v46 = sub_2CCCA0();
    v90 = v11;
    v48 = sub_3F08(v46, v47, &v109);

    *(v44 + 4) = v48;
    v35 = v105;
    _os_log_impl(&dword_0, v42, v43, "HandleIntentStrategy#preHandledIntentOutputContext... Insights:%{public}s", v44, 0xCu);
    sub_306C(v45);

    v11 = v90;
    v49 = v100;
  }

  else
  {

    v49 = v39;
  }

  v50 = v95;
  v95(v49, v11);
  v51 = swift_allocBox();
  v53 = v52;
  *v52 = 0;
  v54 = v6[5];
  v55 = type metadata accessor for SnippetModelResponse();
  (*(*(v55 - 8) + 56))(v53 + v54, 1, 1, v55);
  *(v53 + v6[6]) = 0;
  v56 = v6[7];
  v57 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  (*(*(v57 - 8) + 56))(v53 + v56, 1, 1, v57);
  v58 = v6[8];
  v59 = sub_2CA000();
  (*(*(v59 - 8) + 56))(v53 + v58, 1, 1, v59);
  *(v53 + v6[9]) = 0;
  *(v53 + v6[10]) = 0;
  v60 = v6[11];
  v61 = type metadata accessor for ResponseFactoryOutputContext.AppIntentOutputContext(0);
  (*(*(v61 - 8) + 56))(v53 + v60, 1, 1, v61);
  v62 = sub_2CB440();
  v63 = v35[7];
  sub_35E0(v35 + 3, v35[6]);
  if (sub_2CC4C0())
  {
    v105 = v51;
    v101(v96, v103, v11);
    v64 = sub_2CDFE0();
    v65 = sub_2CE670();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_0, v64, v65, "PlayMediaHandleIntentStrategy#preHandledIntentOutputContext sonic response only, skipping output context generation", v66, 2u);
    }

    v50(v96, v11);
    v67 = v94;
    sub_27D16C(v53, v94);
    v68 = *(v35 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory + 24);
    v103 = *(v35 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory + 32);
    v102 = sub_35E0((v35 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory), v68);
    v69 = v93;
    sub_27D16C(v67, v93);
    v70 = (*(v91 + 80) + 56) & ~*(v91 + 80);
    v71 = swift_allocObject();
    v73 = v106;
    v72 = v107;
    v71[2] = v35;
    v71[3] = v72;
    v74 = v97;
    v75 = v104;
    v71[4] = v97;
    v71[5] = v75;
    v71[6] = v73;
    sub_27D1F0(v69, v71 + v70);

    v76 = v74;

    v77 = v98;
    sub_278490(v72, v76, v98, v67, sub_29F904, v71, v68, v103);

    sub_29F908(v67);
  }

  else
  {
    if (qword_34C050 != -1)
    {
      swift_once();
    }

    sub_20410(&qword_34F2A8, &qword_2D4990);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_2D0E40;
    v79 = swift_allocObject();
    v80 = v107;
    *(v79 + 16) = v35;
    *(v79 + 24) = v80;
    v81 = v97;
    v82 = v98;
    *(v79 + 32) = v97;
    *(v79 + 40) = v82;
    *(v79 + 48) = v62 & 1;
    *(v79 + 56) = v51;
    *(v78 + 32) = sub_29F8C8;
    *(v78 + 40) = v79;
    v83 = swift_allocObject();
    v83[2] = v35;
    v83[3] = v80;
    v83[4] = v81;
    v83[5] = v82;
    v83[6] = v51;
    *(v78 + 48) = sub_29F8E0;
    *(v78 + 56) = v83;
    v84 = swift_allocObject();
    v84[2] = v51;
    v84[3] = v35;
    v84[4] = sub_29F898;
    v84[5] = v33;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v85 = v81;
    v86 = v82;
    v87 = v85;
    v88 = v86;

    sub_2CCC70();
  }
}

uint64_t sub_298C78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a6;
  v24 = a5;
  v12 = type metadata accessor for ResponseFactoryOutputContext(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory + 24);
  v23 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory + 32);
  v21 = sub_35E0((a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory), v15);
  sub_27D16C(a1, &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v18 = v22;
  v17[4] = a4;
  v17[5] = v18;
  v17[6] = a7;
  sub_27D1F0(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);

  v19 = a4;

  sub_278490(a3, v19, v24, a1, sub_2A07F4, v17, v15, v23);
}

uint64_t sub_298E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v131 = a7;
  v150 = a6;
  v151 = a5;
  v148 = a4;
  v147 = a3;
  v146 = a2;
  v8 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v149 = &v125 - v10;
  v11 = sub_20410(&qword_34C820, &unk_2D0A30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v132 = &v125 - v13;
  v14 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v135 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v125 - v18;
  v20 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v134 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v145 = &v125 - v24;
  v130 = sub_2CCB20();
  v129 = *(v130 - 8);
  v25 = *(v129 + 64);
  __chkstk_darwin(v130);
  v128 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2CCB30();
  v144 = *(v27 - 8);
  v28 = *(v144 + 64);
  __chkstk_darwin(v27);
  v141 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_2CCAC0();
  v142 = *(v143 - 8);
  v30 = *(v142 + 64);
  __chkstk_darwin(v143);
  v140 = &v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2CE000();
  v153 = *(v32 - 8);
  v33 = *(v153 + 64);
  v34 = __chkstk_darwin(v32);
  v36 = &v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34);
  v136 = &v125 - v38;
  __chkstk_darwin(v37);
  v40 = &v125 - v39;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v41 = sub_3ED0(v32, static Logger.default);
  swift_beginAccess();
  v42 = *(v153 + 16);
  v139 = v41;
  v138 = v153 + 16;
  v137 = v42;
  v42(v40, v41, v32);
  sub_F3F4(a1, v156, qword_34C798, &qword_2D0DA0);
  v43 = sub_2CDFE0();
  v44 = sub_2CE670();
  v45 = os_log_type_enabled(v43, v44);
  v152 = a1;
  v133 = v36;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v155 = v126;
    *v46 = 136315394;
    v127 = v27;
    sub_F3F4(v156, v154, qword_34C798, &qword_2D0DA0);
    sub_20410(qword_34C798, &qword_2D0DA0);
    v47 = v19;
    v48 = v32;
    v49 = sub_2CE2A0();
    v50 = v44;
    v52 = v51;
    v27 = v127;
    sub_30B8(v156, qword_34C798, &qword_2D0DA0);
    v53 = v49;
    v32 = v48;
    v54 = v153;
    v55 = sub_3F08(v53, v52, &v155);

    *(v46 + 4) = v55;
    *(v46 + 12) = 2082;
    v56 = sub_2CCCA0();
    v58 = sub_3F08(v56, v57, &v155);

    *(v46 + 14) = v58;
    v59 = v50;
    v19 = v47;
    _os_log_impl(&dword_0, v43, v59, "HandleIntentStrategy#preHandleIntentOutputWithRF returning final output: %s Insights:%{public}s", v46, 0x16u);
    swift_arrayDestroy();

    a1 = v152;

    v60 = v54;
  }

  else
  {

    sub_30B8(v156, qword_34C798, &qword_2D0DA0);
    v60 = v153;
  }

  v61 = *(v60 + 8);
  v61(v40, v32);
  sub_F3F4(a1, v156, qword_34C798, &qword_2D0DA0);
  if (v157)
  {
    v62 = v156[0];
    v63 = v136;
    v137(v136, v139, v32);
    swift_errorRetain();
    v64 = sub_2CDFE0();
    v65 = sub_2CE680();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v156[0] = swift_slowAlloc();
      *v66 = 136446466;
      v154[0] = v62;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v67 = sub_2CE2A0();
      v69 = sub_3F08(v67, v68, v156);

      *(v66 + 4) = v69;
      *(v66 + 12) = 2082;
      v70 = sub_2CCCA0();
      v72 = sub_3F08(v70, v71, v156);

      *(v66 + 14) = v72;
      _os_log_impl(&dword_0, v64, v65, "HandleIntentStrategy#preHandleIntentOutputWithRF failed with error: %{public}s, Insights:%{public}s", v66, 0x16u);
      swift_arrayDestroy();

      v73 = v136;
    }

    else
    {

      v73 = v63;
    }

    v61(v73, v32);
    v145 = v62;
    v91 = v142;
    v92 = v140;
    v93 = v143;
    (*(v142 + 104))(v140, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v143);
    v94 = v144;
    v95 = v141;
    (*(v144 + 104))(v141, enum case for AdditionalMetricsDescription.SourceFunction.preHandle(_:), v27);
    swift_getErrorValue();
    sub_2CEEF0();
    v153 = sub_2CCAE0();

    (*(v94 + 8))(v95, v27);
    (*(v91 + 8))(v92, v93);
    v96 = *(v146 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 32);
    sub_35E0((v146 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v146 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
    v97 = enum case for ActivityType.failed(_:);
    v98 = sub_2C9C20();
    v99 = *(v98 - 8);
    v100 = v134;
    (*(v99 + 104))(v134, v97, v98);
    (*(v99 + 56))(v100, 0, 1, v98);
    v101 = sub_2CA130();
    v102 = v135;
    (*(*(v101 - 8) + 56))(v135, 1, 1, v101);
    v103 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v104 = sub_2C98F0();
    v105 = *(v104 - 8);
    v106 = v149;
    (*(v105 + 104))(v149, v103, v104);
    (*(v105 + 56))(v106, 0, 1, v104);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v106, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v102, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v100, &qword_34CB88, &unk_2D0D90);
    v151(v152);
  }

  else
  {
    v135 = v61;
    v136 = v32;
    sub_30B8(v156, qword_34C798, &qword_2D0DA0);
    v74 = v142;
    v75 = v140;
    v76 = v143;
    (*(v142 + 104))(v140, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v143);
    v77 = v144;
    v78 = v141;
    (*(v144 + 104))(v141, enum case for AdditionalMetricsDescription.SourceFunction.preHandle(_:), v27);
    v79 = v129;
    v80 = v128;
    v81 = v130;
    (*(v129 + 104))(v128, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v130);
    v127 = sub_2CCAD0();
    v134 = v82;
    (*(v79 + 8))(v80, v81);
    (*(v77 + 8))(v78, v27);
    (*(v74 + 8))(v75, v76);
    sub_EEAC(v146 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider, v156);
    sub_35E0(v156, v156[3]);
    v83 = enum case for ActivityType.showInterstitial(_:);
    v84 = sub_2C9C20();
    v85 = *(v84 - 8);
    v86 = v145;
    (*(v85 + 104))(v145, v83, v84);
    (*(v85 + 56))(v86, 0, 1, v84);
    v87 = type metadata accessor for ResponseFactoryOutputContext(0);
    v88 = v132;
    sub_F3F4(v131 + *(v87 + 28), v132, &qword_34C820, &unk_2D0A30);
    v89 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
    if ((*(*(v89 - 8) + 48))(v88, 1, v89) == 1)
    {
      sub_30B8(v88, &qword_34C820, &unk_2D0A30);
      v90 = sub_2CA130();
      (*(*(v90 - 8) + 56))(v19, 1, 1, v90);
    }

    else
    {

      v108 = sub_2CA130();
      v109 = *(v108 - 8);
      (*(v109 + 32))(v19, v88, v108);
      (*(v109 + 56))(v19, 0, 1, v108);
    }

    v110 = v19;
    v111 = enum case for SiriKitReliabilityCodes.success(_:);
    v112 = sub_2C98F0();
    v113 = *(v112 - 8);
    v114 = v149;
    (*(v113 + 104))(v149, v111, v112);
    (*(v113 + 56))(v114, 0, 1, v112);
    sub_2CE710();
    v115 = v145;
    sub_2CB4E0();

    sub_30B8(v114, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v110, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v115, &qword_34CB88, &unk_2D0D90);
    sub_306C(v156);
    v116 = v133;
    v117 = v136;
    v137(v133, v139, v136);
    v118 = sub_2CDFE0();
    v119 = sub_2CE670();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v156[0] = v121;
      *v120 = 136446210;
      v122 = sub_2CCCA0();
      v124 = sub_3F08(v122, v123, v156);

      *(v120 + 4) = v124;
      _os_log_impl(&dword_0, v118, v119, "HandleIntentStrategy#preHandleIntentOutputWithRF completed successfully. Insights:%{public}s", v120, 0xCu);
      sub_306C(v121);
    }

    (v135)(v116, v117);
    return (v151)(v152);
  }
}

uint64_t sub_29A014(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = (a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_snippetModelProvider);
  v15 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_snippetModelProvider + 24);
  v16 = v14[4];
  sub_35E0(v14, v15);
  v17 = swift_allocObject();
  v17[2] = sub_CEEA8;
  v17[3] = v13;
  v17[4] = a7;
  v18 = *(v16 + 8);

  v18(a3, a4, a5, a6, sub_29F964, v17, v15, v16);
}

uint64_t sub_29A148(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaDialogProvider);

  sub_1AF478(a3, a4, v13, sub_CE4A8, v12, a6);
}

uint64_t sub_29A224(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v5 = type metadata accessor for ResponseFactoryOutputContext(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_projectBox();
  v15 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 32);
  sub_35E0((a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider), *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 24));
  LOBYTE(a2) = sub_2CBBD0();
  swift_beginAccess();
  *(v14 + *(v5 + 40)) = a2 & 1;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v13, v16, v9);

  v17 = sub_2CDFE0();
  v18 = sub_2CE670();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v19 = 136446466;
    swift_beginAccess();
    sub_27D16C(v14, v8);
    v20 = sub_2CE2A0();
    v22 = sub_3F08(v20, v21, v32);
    v29 = v9;
    v23 = v22;

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v24 = sub_2CCCA0();
    v26 = sub_3F08(v24, v25, v32);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_0, v17, v18, "HandleIntentStrategy#preHandledIntentOutputContext created output context:  %{public}s Insights:%{public}s", v19, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v13, v29);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  swift_beginAccess();
  sub_27D16C(v14, v8);
  v30(v8);
  return sub_29F908(v8);
}

uint64_t sub_29A5A0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v116 = a4;
  v117 = a5;
  v107 = a2;
  v108 = a3;
  v8 = type metadata accessor for ResponseFactoryOutputContext(0);
  v102 = *(v8 - 1);
  v9 = *(v102 + 64);
  v10 = __chkstk_darwin(v8);
  v103 = v11;
  v104 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v105 = &v100 - v12;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v101 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v112 = &v100 - v19;
  __chkstk_darwin(v18);
  v21 = &v100 - v20;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v22 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v23 = v14[2];
  v114 = v14 + 2;
  v115 = v22;
  v113 = v23;
  v23(v21, v22, v13);

  v24 = sub_2CDFE0();
  v25 = sub_2CE670();

  v26 = os_log_type_enabled(v24, v25);
  v109 = v14;
  v106 = v13;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v100 = v6;
    v28 = v27;
    v29 = swift_slowAlloc();
    v118 = a1;
    v119 = v29;
    *v28 = 136315394;
    sub_2CCFB0();
    sub_2A06C4(&qword_34C170, &type metadata accessor for App);
    v30 = sub_2CEE70();
    v32 = sub_3F08(v30, v31, &v119);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    v33 = sub_2CCCA0();
    v35 = sub_3F08(v33, v34, &v119);

    *(v28 + 14) = v35;
    _os_log_impl(&dword_0, v24, v25, "PlayMedia+HandleIntentStategy#handledIntentOutputWithRF response is being handled using Response Framework2.0. for app: %s Insights:%{public}s", v28, 0x16u);
    swift_arrayDestroy();

    v6 = v100;

    v36 = v14[1];
    v37 = v106;
    v111 = v36;
    v36(v21, v106);
  }

  else
  {

    v111 = v14[1];
    v111(v21, v13);
    v37 = v13;
  }

  v38 = swift_allocObject();
  *(v38 + 2) = v6;
  *(v38 + 3) = a1;
  v39 = v107;
  v40 = v108;
  *(v38 + 4) = v107;
  *(v38 + 5) = v40;
  v41 = v117;
  *(v38 + 6) = v116;
  *(v38 + 7) = v41;
  v42 = v112;
  v113(v112, v115, v37);
  swift_retain_n();
  swift_retain_n();
  v43 = v39;
  v44 = v40;
  swift_retain_n();
  v107 = v43;
  v108 = v44;
  v45 = sub_2CDFE0();
  v46 = sub_2CE670();
  v47 = os_log_type_enabled(v45, v46);
  v110 = a1;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v119 = v49;
    *v48 = 136446210;
    v50 = sub_2CCCA0();
    v52 = v6;
    v53 = sub_3F08(v50, v51, &v119);

    *(v48 + 4) = v53;
    v6 = v52;
    _os_log_impl(&dword_0, v45, v46, "HandleIntentStrategy#handledIntentOutputContext... Insights:%{public}s", v48, 0xCu);
    sub_306C(v49);

    v54 = v112;
  }

  else
  {

    v54 = v42;
  }

  v111(v54, v37);
  v55 = swift_allocBox();
  v57 = v56;
  *v56 = 0;
  v58 = v8[5];
  v59 = type metadata accessor for SnippetModelResponse();
  (*(*(v59 - 8) + 56))(v57 + v58, 1, 1, v59);
  *(v57 + v8[6]) = 0;
  v60 = v8[7];
  v61 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  (*(*(v61 - 8) + 56))(v57 + v60, 1, 1, v61);
  v62 = v8[8];
  v63 = sub_2CA000();
  (*(*(v63 - 8) + 56))(v57 + v62, 1, 1, v63);
  *(v57 + v8[9]) = 0;
  *(v57 + v8[10]) = 0;
  v64 = v8[11];
  v65 = type metadata accessor for ResponseFactoryOutputContext.AppIntentOutputContext(0);
  (*(*(v65 - 8) + 56))(v57 + v64, 1, 1, v65);
  v66 = sub_2CB440();
  v67 = v6[7];
  sub_35E0(v6 + 3, v6[6]);
  if (sub_2CC4C0())
  {
    v100 = v55;
    v112 = v38;
    v68 = v101;
    v69 = v106;
    v113(v101, v115, v106);
    v70 = sub_2CDFE0();
    v71 = sub_2CE670();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_0, v70, v71, "PlayMediaHandleIntentStrategy#handledIntentOutputContext sonic response only, skipping output context generation", v72, 2u);
    }

    v111(v68, v69);
    v73 = v105;
    sub_27D16C(v57, v105);
    v74 = *(v6 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory + 24);
    v115 = *(v6 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory + 32);
    v114 = sub_35E0((v6 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory), v74);
    v75 = v104;
    sub_27D16C(v73, v104);
    v76 = (*(v102 + 80) + 64) & ~*(v102 + 80);
    v77 = swift_allocObject();
    v78 = v110;
    v77[2] = v6;
    v77[3] = v78;
    v80 = v107;
    v79 = v108;
    v81 = v116;
    v82 = v117;
    v77[4] = v107;
    v77[5] = v81;
    v77[6] = v82;
    v77[7] = v79;
    sub_27D1F0(v75, v77 + v76);

    v83 = v80;
    v84 = v79;

    sub_278490(v78, v83, v84, v73, sub_2A0570, v77, v74, v115);

    sub_29F908(v73);
  }

  else
  {
    if (qword_34C050 != -1)
    {
      swift_once();
    }

    sub_20410(&qword_34F2A8, &qword_2D4990);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_2D10E0;
    v86 = swift_allocObject();
    v87 = v110;
    *(v86 + 16) = v6;
    *(v86 + 24) = v87;
    v88 = v107;
    v89 = v108;
    *(v86 + 32) = v107;
    *(v86 + 40) = v89;
    *(v86 + 48) = v66 & 1;
    *(v86 + 56) = v55;
    *(v85 + 32) = sub_2A0048;
    *(v85 + 40) = v86;
    v90 = swift_allocObject();
    v90[2] = v6;
    v90[3] = v87;
    v90[4] = v88;
    v90[5] = v89;
    v90[6] = v55;
    *(v85 + 48) = sub_2A00D4;
    *(v85 + 56) = v90;
    v91 = swift_allocObject();
    v91[2] = v55;
    v91[3] = v88;
    v91[4] = v89;
    v91[5] = v6;
    *(v85 + 64) = sub_2A0104;
    *(v85 + 72) = v91;
    v92 = swift_allocObject();
    v92[2] = v55;
    v92[3] = sub_2A0028;
    v92[4] = v38;
    swift_retain_n();
    v93 = v88;
    v94 = v89;
    swift_retain_n();
    swift_retain_n();
    v95 = v93;
    v96 = v94;
    v97 = v95;
    v98 = v96;

    sub_2CCC70();
  }
}

uint64_t sub_29B07C(uint64_t a1, char *a2, uint64_t a3, void *a4, void (*a5)(uint64_t), uint64_t a6, void *a7, uint64_t a8)
{
  v124 = a8;
  v123 = a7;
  v143 = a6;
  v144 = a5;
  v146 = a4;
  v141 = a3;
  v10 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v142 = &v121 - v12;
  v13 = sub_20410(&qword_34C820, &unk_2D0A30);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v125 = &v121 - v15;
  v16 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v129 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v121 - v20;
  v22 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v128 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v140 = &v121 - v26;
  v27 = sub_2CCB30();
  v139 = *(v27 - 8);
  v28 = *(v139 + 64);
  __chkstk_darwin(v27);
  v136 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2CCAC0();
  v137 = *(v138 - 8);
  v30 = *(v137 + 64);
  __chkstk_darwin(v138);
  v135 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2CE000();
  v33 = *(v32 - 8);
  v34 = v33[8];
  v35 = __chkstk_darwin(v32);
  v127 = &v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v39 = &v121 - v38;
  __chkstk_darwin(v37);
  v41 = &v121 - v40;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v42 = sub_3ED0(v32, static Logger.default);
  swift_beginAccess();
  v43 = v33[2];
  v133 = v42;
  v132 = v33 + 2;
  v131 = v43;
  v43(v41, v42, v32);
  v147 = a1;
  sub_F3F4(a1, v150, qword_34C798, &qword_2D0DA0);
  v44 = sub_2CDFE0();
  v45 = sub_2CE670();
  v46 = os_log_type_enabled(v44, v45);
  v145 = v33;
  v126 = v21;
  v134 = v32;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v122 = v39;
    v48 = v47;
    v49 = swift_slowAlloc();
    v130 = a2;
    v149 = v49;
    *v48 = 136315394;
    sub_F3F4(v150, v148, qword_34C798, &qword_2D0DA0);
    sub_20410(qword_34C798, &qword_2D0DA0);
    v50 = sub_2CE2A0();
    v52 = v51;
    sub_30B8(v150, qword_34C798, &qword_2D0DA0);
    v53 = sub_3F08(v50, v52, &v149);

    *(v48 + 4) = v53;
    *(v48 + 12) = 2082;
    v54 = sub_2CCCA0();
    v56 = sub_3F08(v54, v55, &v149);

    *(v48 + 14) = v56;
    v57 = v145;
    _os_log_impl(&dword_0, v44, v45, "PlayMedia+HandleIntentStategy#handledIntentOutputWithRF created output: %s. Insights:%{public}s", v48, 0x16u);
    swift_arrayDestroy();
    a2 = v130;

    v39 = v122;

    v58 = *(v57 + 8);
    v59 = v134;
    v58(v41, v134);
  }

  else
  {

    sub_30B8(v150, qword_34C798, &qword_2D0DA0);
    v58 = v33[1];
    v58(v41, v32);
    v59 = v32;
  }

  sub_F3F4(v147, v150, qword_34C798, &qword_2D0DA0);
  if (v151)
  {
    v60 = v150[0];
    v131(v39, v133, v59);
    swift_errorRetain();
    v61 = sub_2CDFE0();
    v62 = v39;
    v63 = sub_2CE680();

    if (os_log_type_enabled(v61, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v130 = a2;
      v150[0] = v65;
      *v64 = 136446466;
      v148[0] = v60;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v66 = sub_2CE2A0();
      v68 = sub_3F08(v66, v67, v150);
      v122 = v62;
      v69 = v68;

      *(v64 + 4) = v69;
      *(v64 + 12) = 2082;
      v70 = sub_2CCCA0();
      v72 = sub_3F08(v70, v71, v150);

      *(v64 + 14) = v72;
      _os_log_impl(&dword_0, v61, v63, "PlayMedia+HandleIntentStategy#handledIntentOutputWithRF failed with error: %{public}s, Insights:%{public}s", v64, 0x16u);
      swift_arrayDestroy();
      a2 = v130;

      v73 = v122;
    }

    else
    {

      v73 = v62;
    }

    v58(v73, v59);
    v140 = v60;
    v88 = v137;
    v89 = v135;
    v90 = v138;
    (*(v137 + 104))(v135, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v138);
    v91 = v139;
    v92 = v136;
    (*(v139 + 104))(v136, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v27);
    swift_getErrorValue();
    sub_2CEEF0();
    v145 = sub_2CCAE0();

    (*(v91 + 8))(v92, v27);
    (*(v88 + 8))(v89, v90);
    v93 = *&a2[OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 32];
    sub_35E0(&a2[OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider], *&a2[OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24]);
    v94 = enum case for ActivityType.failed(_:);
    v95 = sub_2C9C20();
    v96 = *(v95 - 8);
    v97 = v128;
    (*(v96 + 104))(v128, v94, v95);
    (*(v96 + 56))(v97, 0, 1, v95);
    v98 = sub_2CA130();
    v99 = v129;
    (*(*(v98 - 8) + 56))(v129, 1, 1, v98);
    v100 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v101 = sub_2C98F0();
    v102 = *(v101 - 8);
    v103 = v142;
    (*(v102 + 104))(v142, v100, v101);
    (*(v102 + 56))(v103, 0, 1, v101);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v103, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v99, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v97, &qword_34CB88, &unk_2D0D90);
    v144(v147);
  }

  else
  {
    v130 = v58;
    sub_30B8(v150, qword_34C798, &qword_2D0DA0);
    sub_295BA8(v146);
    v74 = v137;
    v75 = v135;
    v76 = v138;
    (*(v137 + 104))(v135, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v138);
    v77 = v139;
    v78 = v136;
    (*(v139 + 104))(v136, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v27);
    v150[0] = [v123 code];
    sub_2CEE70();
    v129 = sub_2CCAE0();

    (*(v77 + 8))(v78, v27);
    (*(v74 + 8))(v75, v76);
    sub_EEAC(&a2[OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider], v150);
    sub_35E0(v150, v150[3]);
    v79 = enum case for ActivityType.completed(_:);
    v80 = sub_2C9C20();
    v81 = *(v80 - 8);
    v82 = v140;
    (*(v81 + 104))(v140, v79, v80);
    (*(v81 + 56))(v82, 0, 1, v80);
    v83 = type metadata accessor for ResponseFactoryOutputContext(0);
    v84 = v125;
    sub_F3F4(v124 + *(v83 + 28), v125, &qword_34C820, &unk_2D0A30);
    v85 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
    if ((*(*(v85 - 8) + 48))(v84, 1, v85) == 1)
    {
      sub_30B8(v84, &qword_34C820, &unk_2D0A30);
      v86 = sub_2CA130();
      v87 = v126;
      (*(*(v86 - 8) + 56))(v126, 1, 1, v86);
    }

    else
    {

      v105 = sub_2CA130();
      v106 = *(v105 - 8);
      v87 = v126;
      (*(v106 + 32))(v126, v84, v105);
      (*(v106 + 56))(v87, 0, 1, v105);
    }

    v107 = v134;
    v108 = enum case for SiriKitReliabilityCodes.success(_:);
    v109 = sub_2C98F0();
    v110 = *(v109 - 8);
    v111 = v142;
    (*(v110 + 104))(v142, v108, v109);
    (*(v110 + 56))(v111, 0, 1, v109);
    sub_2CE710();
    v112 = v140;
    sub_2CB4E0();

    sub_30B8(v111, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v87, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v112, &qword_34CB88, &unk_2D0D90);
    sub_306C(v150);
    v113 = v127;
    v131(v127, v133, v107);
    v114 = sub_2CDFE0();
    v115 = sub_2CE670();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v150[0] = v117;
      *v116 = 136446210;
      v118 = sub_2CCCA0();
      v120 = sub_3F08(v118, v119, v150);

      *(v116 + 4) = v120;
      _os_log_impl(&dword_0, v114, v115, "PlayMedia+HandleIntentStategy#handledIntentOutputWithRF completed successfully. Insights:%{public}s", v116, 0xCu);
      sub_306C(v117);
    }

    (v130)(v113, v107);
    return (v144)(v147);
  }
}

uint64_t sub_29C218(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = (a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_snippetModelProvider);
  v15 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_snippetModelProvider + 24);
  v16 = v14[4];
  sub_35E0(v14, v15);
  v17 = swift_allocObject();
  v17[2] = sub_CEEA8;
  v17[3] = v13;
  v17[4] = a7;
  v18 = *(v16 + 16);

  v18(a3, a4, a5, a6, sub_2A05B0, v17, v15, v16);
}

uint64_t sub_29C34C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, const char *a5)
{
  v44 = a5;
  v49 = a3;
  v50 = a2;
  v6 = sub_2CE000();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  __chkstk_darwin(v6);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20410(&qword_356410, &qword_2D8888);
  v9 = *(*(v43 - 8) + 64);
  v10 = __chkstk_darwin(v43);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v41 - v14;
  __chkstk_darwin(v13);
  v17 = &v41 - v16;
  v18 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v41 - v20);
  v45 = type metadata accessor for ResponseFactoryOutputContext(0);
  v22 = swift_projectBox();
  sub_F3F4(a1, v21, &qword_34EE00, &qword_2D8ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v21;
    swift_beginAccess();
    v24 = *v22;
    *v22 = v23;
  }

  else
  {
    sub_14A58(v21, v17, &qword_356410, &qword_2D8888);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v26 = v48;
    v27 = sub_3ED0(v48, static Logger.default);
    swift_beginAccess();
    v29 = v46;
    v28 = v47;
    (*(v47 + 16))(v46, v27, v26);
    sub_F3F4(v17, v15, &qword_356410, &qword_2D8888);
    v30 = sub_2CDFE0();
    v31 = sub_2CE670();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v51[0] = v42;
      *v32 = 136315394;
      sub_F3F4(v15, v12, &qword_356410, &qword_2D8888);
      v33 = sub_2CE2A0();
      v35 = v34;
      sub_30B8(v15, &qword_356410, &qword_2D8888);
      v36 = sub_3F08(v33, v35, v51);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      v37 = sub_2CCCA0();
      v39 = sub_3F08(v37, v38, v51);

      *(v32 + 14) = v39;
      _os_log_impl(&dword_0, v30, v31, v44, v32, 0x16u);
      swift_arrayDestroy();

      (*(v47 + 8))(v46, v48);
    }

    else
    {

      sub_30B8(v15, &qword_356410, &qword_2D8888);
      (*(v28 + 8))(v29, v26);
    }

    swift_beginAccess();
    v25 = sub_FECE8(v17, v22 + *(v45 + 20), &qword_356410, &qword_2D8888);
  }

  return v50(v25);
}

uint64_t sub_29C800(uint64_t *a1, uint64_t a2, void *a3, void *a4, char *a5, uint64_t a6)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaDialogProvider);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_CEEA8;
  *(v15 + 24) = v13;
  *(v15 + 32) = a6;

  sub_196E80(a3, a4, a5, sub_2A0588, v15);
}

uint64_t sub_29C8F0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, const char *a5)
{
  v60 = a5;
  v67 = a3;
  v68 = a2;
  v6 = sub_20410(&qword_34C820, &unk_2D0A30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v63 = &v56 - v8;
  v9 = sub_2CE000();
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  __chkstk_darwin(v9);
  v64 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = *(v61 + 64);
  v14 = __chkstk_darwin(v12);
  v59 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v56 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v56 - v20;
  __chkstk_darwin(v19);
  v23 = &v56 - v22;
  v24 = sub_20410(&unk_3519A0, &qword_2D0980);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = (&v56 - v26);
  v28 = type metadata accessor for ResponseFactoryOutputContext(0);
  v29 = swift_projectBox();
  sub_F3F4(a1, v27, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v27;
    swift_beginAccess();
    v31 = *(v28 + 24);
    v32 = *(v29 + v31);
    *(v29 + v31) = v30;
  }

  else
  {
    v57 = v28;
    sub_14A58(v27, v23, &qword_34C6E8, &unk_2D0FF0);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v34 = v66;
    v35 = sub_3ED0(v66, static Logger.default);
    swift_beginAccess();
    v37 = v64;
    v36 = v65;
    (*(v65 + 16))(v64, v35, v34);
    v58 = v23;
    sub_F3F4(v23, v21, &qword_34C6E8, &unk_2D0FF0);
    v38 = sub_2CDFE0();
    v39 = sub_2CE670();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v69[0] = v56;
      *v40 = 136315394;
      sub_F3F4(v21, v18, &qword_34C6E8, &unk_2D0FF0);
      v41 = v62;
      v42 = *(v62 + 48);
      v43 = *&v18[v42];
      v44 = sub_2CA130();
      v45 = v59;
      (*(*(v44 - 8) + 32))(v59, v18, v44);
      *&v45[v42] = v43;
      v46 = sub_2CE2A0();
      v48 = v47;
      sub_30B8(v21, &qword_34C6E8, &unk_2D0FF0);
      v49 = sub_3F08(v46, v48, v69);

      *(v40 + 4) = v49;
      *(v40 + 12) = 2082;
      v50 = sub_2CCCA0();
      v52 = sub_3F08(v50, v51, v69);

      *(v40 + 14) = v52;
      _os_log_impl(&dword_0, v38, v39, v60, v40, 0x16u);
      swift_arrayDestroy();

      (*(v65 + 8))(v64, v66);
    }

    else
    {

      sub_30B8(v21, &qword_34C6E8, &unk_2D0FF0);
      (*(v36 + 8))(v37, v34);
      v41 = v62;
    }

    v53 = v57;
    v54 = v63;
    sub_14A58(v58, v63, &qword_34C6E8, &unk_2D0FF0);
    (*(v61 + 56))(v54, 0, 1, v41);
    swift_beginAccess();
    v33 = sub_FECE8(v54, v29 + *(v53 + 28), &qword_34C820, &unk_2D0A30);
  }

  return v68(v33);
}

uint64_t sub_29CEE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_20410(&unk_353020, &unk_2D0970);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19[-v10];
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = type metadata accessor for ResponseFactoryOutputContext(0);
  v15 = swift_projectBox();
  sub_28E070(a3, v11);
  swift_beginAccess();
  sub_FECE8(v11, v15 + *(v14 + 32), &unk_353020, &unk_2D0970);
  v16 = *(a5 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 32);
  sub_35E0((a5 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider), *(a5 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 24));
  LOBYTE(a5) = sub_2CBBD0();
  v17 = swift_beginAccess();
  *(v15 + *(v14 + 40)) = a5 & 1;
  return v13(v17);
}

uint64_t sub_29D03C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v3 = type metadata accessor for ResponseFactoryOutputContext(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v11, v13, v7);

  v14 = sub_2CDFE0();
  v15 = sub_2CE670();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28[0] = v25;
    *v16 = 136446466;
    v17 = v12;
    swift_beginAccess();
    sub_27D16C(v12, v6);
    v18 = sub_2CE2A0();
    v20 = sub_3F08(v18, v19, v28);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v21 = sub_2CCCA0();
    v23 = sub_3F08(v21, v22, v28);
    v12 = v17;

    *(v16 + 14) = v23;
    _os_log_impl(&dword_0, v14, v15, "HandleIntentStrategy#handledIntentOutputContext created output context:  %{public}s Insights:%{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  (*(v8 + 8))(v11, v7);
  swift_beginAccess();
  sub_27D16C(v12, v6);
  v26(v6);
  return sub_29F908(v6);
}

uint64_t PlayMedia.HandleIntentStrategy.failureIntentOutputWithRF(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v36 = a4;
  v37 = a2;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);

  v16 = sub_2CDFE0();
  v17 = sub_2CE670();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = a5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v33 = a3;
    v38 = a1;
    v39 = v20;
    *v19 = 136315394;
    sub_2CCFB0();
    v35 = v6;
    sub_2A06C4(&qword_34C170, &type metadata accessor for App);
    v21 = sub_2CEE70();
    v23 = sub_3F08(v21, v22, &v39);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v24 = sub_2CCCA0();
    v26 = sub_3F08(v24, v25, &v39);

    *(v19 + 14) = v26;
    v6 = v35;
    _os_log_impl(&dword_0, v16, v17, "HandleIntentStrategy#failureIntentOutputWithRF response is being handled using Response Framework2.0. for app: %s Insights:%{public}s", v19, 0x16u);
    swift_arrayDestroy();
    a3 = v33;

    a5 = v34;
  }

  (*(v11 + 8))(v14, v10);
  v27 = swift_allocObject();
  v27[2] = v6;
  v27[3] = a1;
  v28 = v36;
  v29 = v37;
  v27[4] = v37;
  v27[5] = a3;
  v27[6] = v28;
  v27[7] = a5;

  v30 = v29;
  v31 = a3;

  sub_29E6E4(a1, v30, v31, sub_29F688, v27);
}

uint64_t sub_29D6AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25[0] = a1;
  v25[1] = a8;
  v26 = a6;
  v28 = a9;
  v15 = type metadata accessor for ResponseFactoryOutputContext(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory + 24);
  v27 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory + 32);
  v25[2] = sub_35E0((a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory), v18);
  sub_27D16C(a1, v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v16 + 80) + 64) & ~*(v16 + 80);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v21 = v26;
  v20[4] = a4;
  v20[5] = v21;
  v20[6] = a7;
  v20[7] = a5;
  sub_27D1F0(v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);

  v22 = a4;

  v23 = a5;
  sub_278490(a3, v22, v23, v25[0], v28, v20, v18, v27);
}

uint64_t sub_29D840(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v102 = a8;
  v100 = a7;
  v114 = a6;
  v115 = a5;
  v110 = a3;
  v111 = a4;
  v10 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v112 = &v99 - v12;
  v13 = sub_2CE000();
  v109 = *(v13 - 8);
  v14 = *(v109 + 64);
  v15 = __chkstk_darwin(v13);
  v106 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v108 = &v99 - v17;
  v18 = sub_20410(&qword_34C820, &unk_2D0A30);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v101 = &v99 - v20;
  v21 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v105 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v103 = &v99 - v25;
  v26 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v104 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v99 - v30;
  v32 = sub_2CCB30();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v99 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2CCAC0();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v41 = &v99 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a1;
  sub_F3F4(a1, v118, qword_34C798, &qword_2D0DA0);
  if (v119)
  {
    v101 = v37;
    v102 = v32;
    v103 = a2;
    v42 = v118[0];
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v43 = sub_3ED0(v13, static Logger.default);
    swift_beginAccess();
    v44 = v108;
    v45 = v109;
    (*(v109 + 16))(v108, v43, v13);
    swift_errorRetain();
    v46 = sub_2CDFE0();
    v47 = v13;
    v48 = sub_2CE680();

    v49 = os_log_type_enabled(v46, v48);
    v106 = v42;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v107 = v47;
      v51 = v50;
      v100 = swift_slowAlloc();
      v117 = v100;
      *v51 = 136446466;
      v116 = v42;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v52 = sub_2CE2A0();
      v54 = v45;
      v55 = sub_3F08(v52, v53, &v117);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      v56 = sub_2CCCA0();
      v58 = sub_3F08(v56, v57, &v117);

      *(v51 + 14) = v58;
      _os_log_impl(&dword_0, v46, v48, "HandleIntentStrategy#failureIntentOutputWithRF failed with error: %{public}s, Insights:%{public}s", v51, 0x16u);
      swift_arrayDestroy();

      (*(v54 + 8))(v108, v107);
    }

    else
    {

      (*(v45 + 8))(v44, v47);
    }

    v68 = v102;
    v69 = v101;
    (*(v38 + 104))(v41, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v101);
    (*(v33 + 104))(v36, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v68);
    swift_getErrorValue();
    sub_2CEEF0();
    v109 = sub_2CCAE0();

    (*(v33 + 8))(v36, v68);
    (*(v38 + 8))(v41, v69);
    v70 = *&v103[OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 32];
    sub_35E0(&v103[OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider], *&v103[OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24]);
    v71 = enum case for ActivityType.failed(_:);
    v72 = sub_2C9C20();
    v73 = *(v72 - 8);
    v74 = v104;
    (*(v73 + 104))(v104, v71, v72);
    (*(v73 + 56))(v74, 0, 1, v72);
    v75 = sub_2CA130();
    v76 = v105;
    (*(*(v75 - 8) + 56))(v105, 1, 1, v75);
    v77 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v78 = sub_2C98F0();
    v79 = *(v78 - 8);
    v80 = v112;
    (*(v79 + 104))(v112, v77, v78);
    (*(v79 + 56))(v80, 0, 1, v78);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v80, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v76, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v74, &qword_34CB88, &unk_2D0D90);
    v115(v113);
  }

  else
  {
    v107 = v13;
    sub_30B8(v118, qword_34C798, &qword_2D0DA0);
    (*(v38 + 104))(v41, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v37);
    (*(v33 + 104))(v36, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v32);
    v118[0] = [v100 code];
    sub_2CEE70();
    v108 = sub_2CCAE0();

    (*(v33 + 8))(v36, v32);
    (*(v38 + 8))(v41, v37);
    sub_EEAC(&a2[OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider], v118);
    sub_35E0(v118, v118[3]);
    v59 = enum case for ActivityType.failed(_:);
    v60 = sub_2C9C20();
    v61 = *(v60 - 8);
    (*(v61 + 104))(v31, v59, v60);
    (*(v61 + 56))(v31, 0, 1, v60);
    v62 = type metadata accessor for ResponseFactoryOutputContext(0);
    v63 = v101;
    sub_F3F4(v102 + *(v62 + 28), v101, &qword_34C820, &unk_2D0A30);
    v64 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
    v65 = v31;
    if ((*(*(v64 - 8) + 48))(v63, 1, v64) == 1)
    {
      sub_30B8(v63, &qword_34C820, &unk_2D0A30);
      v66 = sub_2CA130();
      v67 = v103;
      (*(*(v66 - 8) + 56))(v103, 1, 1, v66);
    }

    else
    {

      v82 = sub_2CA130();
      v83 = *(v82 - 8);
      v67 = v103;
      (*(v83 + 32))(v103, v63, v82);
      (*(v83 + 56))(v67, 0, 1, v82);
    }

    v84 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
    v85 = sub_2C98F0();
    v86 = *(v85 - 8);
    v87 = v112;
    (*(v86 + 104))(v112, v84, v85);
    (*(v86 + 56))(v87, 0, 1, v85);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v87, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v67, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v65, &qword_34CB88, &unk_2D0D90);
    sub_306C(v118);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v88 = v107;
    v89 = sub_3ED0(v107, static Logger.default);
    swift_beginAccess();
    v90 = v109;
    v91 = v106;
    (*(v109 + 16))(v106, v89, v88);
    v92 = sub_2CDFE0();
    v93 = sub_2CE670();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v117 = v95;
      *v94 = 136446210;
      v96 = sub_2CCCA0();
      v98 = sub_3F08(v96, v97, &v117);

      *(v94 + 4) = v98;
      _os_log_impl(&dword_0, v92, v93, "HandleIntentStrategy#failureIntentOutputWithRF completed successfully. Insights:%{public}s", v94, 0xCu);
      sub_306C(v95);
    }

    (*(v90 + 8))(v91, v88);
    return (v115)(v113);
  }
}

uint64_t sub_29E6E4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v50 = a4;
  v51 = a5;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v49 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v48 = v6;
    v21 = v20;
    v52 = v20;
    *v19 = 136446210;
    v22 = sub_2CCCA0();
    v47 = v10;
    v24 = a2;
    v25 = a3;
    v26 = sub_3F08(v22, v23, &v52);

    *(v19 + 4) = v26;
    a3 = v25;
    a2 = v24;
    _os_log_impl(&dword_0, v16, v17, "HandleIntentStrategy#failureIntentOutputContext failureIntentOutputContext...  Insights:%{public}s", v19, 0xCu);
    sub_306C(v21);
    v6 = v48;

    a1 = v49;

    (*(v11 + 8))(v14, v47);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v27 = type metadata accessor for ResponseFactoryOutputContext(0);
  v28 = swift_allocBox();
  v30 = v29;
  *v29 = 0;
  v31 = v27[5];
  v32 = type metadata accessor for SnippetModelResponse();
  (*(*(v32 - 8) + 56))(&v30[v31], 1, 1, v32);
  *&v30[v27[6]] = 0;
  v33 = v27[7];
  v34 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  (*(*(v34 - 8) + 56))(&v30[v33], 1, 1, v34);
  v35 = v27[8];
  v36 = sub_2CA000();
  (*(*(v36 - 8) + 56))(&v30[v35], 1, 1, v36);
  *&v30[v27[9]] = 0;
  v30[v27[10]] = 0;
  v37 = v27[11];
  v38 = type metadata accessor for ResponseFactoryOutputContext.AppIntentOutputContext(0);
  (*(*(v38 - 8) + 56))(&v30[v37], 1, 1, v38);
  v39 = *(v6 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaDialogProvider);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x457363697274654DLL;
  v41 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC000000726F7272;
  *(inited + 48) = 0xD000000000000022;
  *(inited + 56) = 0x80000000002E0F30;
  v42 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(v41, &qword_34CBA0, &unk_2D0FE0);
  v43 = swift_allocObject();
  v44 = v50;
  v45 = v51;
  v43[2] = v28;
  v43[3] = v44;
  v43[4] = v45;

  sub_19636C(v42, a1, a2, a3, sub_2A0004, v43);
}

uint64_t sub_29EBB0(uint64_t a1, char *a2, void (*a3)(char *), uint64_t a4)
{
  v45 = a4;
  v46 = a3;
  v6 = type metadata accessor for ResponseFactoryOutputContext(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CE000();
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = *(v43 + 64);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20410(&qword_34C820, &unk_2D0A30);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v41 - v16;
  v18 = sub_20410(&unk_3519A0, &qword_2D0980);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v41 - v20);
  v42 = a2;
  v22 = swift_projectBox();
  sub_F3F4(a1, v21, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v21;
    swift_beginAccess();
    v24 = *(v6 + 24);
    v25 = *(v22 + v24);
    *(v22 + v24) = v23;
  }

  else
  {
    sub_14A58(v21, v17, &qword_34C6E8, &unk_2D0FF0);
    v26 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
    (*(*(v26 - 8) + 56))(v17, 0, 1, v26);
    swift_beginAccess();
    sub_FECE8(v17, v22 + *(v6 + 28), &qword_34C820, &unk_2D0A30);
  }

  v27 = v43;
  v28 = v44;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v29 = sub_3ED0(v28, static Logger.default);
  swift_beginAccess();
  (*(v27 + 16))(v13, v29, v28);

  v30 = sub_2CDFE0();
  v31 = sub_2CE670();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v42 = v13;
    v33 = v32;
    v47[0] = swift_slowAlloc();
    *v33 = 136315394;
    swift_beginAccess();
    sub_27D16C(v22, v9);
    v34 = sub_2CE2A0();
    v36 = sub_3F08(v34, v35, v47);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2082;
    v37 = sub_2CCCA0();
    v39 = sub_3F08(v37, v38, v47);

    *(v33 + 14) = v39;
    _os_log_impl(&dword_0, v30, v31, "HandleIntentStrategy#failureIntentOutputContext outputContext: %s Insights:%{public}s", v33, 0x16u);
    swift_arrayDestroy();

    (*(v27 + 8))(v42, v28);
  }

  else
  {

    (*(v27 + 8))(v13, v28);
  }

  swift_beginAccess();
  sub_27D16C(v22, v9);
  v46(v9);
  return sub_29F908(v9);
}

uint64_t PlayMedia.HandleIntentStrategy.deinit()
{
  v1 = *(v0 + 16);

  sub_306C((v0 + 24));
  sub_30B8(v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_appSelectionReport, &qword_34DD30, &unk_2D1BC0);
  sub_306C((v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider));
  sub_306C((v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_snippetModelProvider));
  sub_306C((v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory));
  sub_306C((v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_appIntentInvoker));
  v2 = *(v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaViewProvider);

  v3 = *(v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaDialogProvider);

  sub_306C((v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider));
  sub_306C((v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_mediaRemoteAPIProvider));
  sub_306C((v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_executorProvider));
  sub_306C((v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playbackController));
  return v0;
}

uint64_t PlayMedia.HandleIntentStrategy.__deallocating_deinit()
{
  PlayMedia.HandleIntentStrategy.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29F1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PlayMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_29F250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PlayMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_29F318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PlayMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_29F398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PlayMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_29F43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PlayMedia.HandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_29F48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PlayMedia.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_29F4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PlayMedia.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_29F55C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29F598(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *))
{
  v7 = *(a1 + 8);
  v9 = *a1;
  v10 = v7;
  sub_2CE9D0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_2CDFA0();
  return a6(&v9);
}

uint64_t type metadata accessor for PlayMedia.HandleIntentStrategy()
{
  result = qword_356910;
  if (!qword_356910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29F77C()
{
  sub_29F840();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_29F840()
{
  if (!qword_356920)
  {
    sub_2CBF80();
    v0 = sub_2CEB90();
    if (!v1)
    {
      atomic_store(v0, &qword_356920);
    }
  }
}

uint64_t sub_29F908(uint64_t a1)
{
  v2 = type metadata accessor for ResponseFactoryOutputContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29F98C()
{
  v1 = type metadata accessor for ResponseFactoryOutputContext(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = *(v0 + 48);

  v8 = v0 + v3;
  v9 = *(v0 + v3);

  v10 = v0 + v3 + v1[5];
  v11 = type metadata accessor for SnippetModelResponse();
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {
    v32 = v4;
    v33 = (v2 + 56) & ~v2;
    v12 = sub_2CD230();
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);
    if (!v14(v10, 1, v12))
    {
      (*(v13 + 8))(v10, v12);
    }

    v15 = v11[5];
    if (!v14(v10 + v15, 1, v12))
    {
      (*(v13 + 8))(v10 + v15, v12);
    }

    v16 = *(v10 + v11[6] + 8);

    v17 = *(v10 + v11[7]);

    v3 = v33;
    v4 = v32;
  }

  v18 = *(v8 + v1[6]);

  v19 = v8 + v1[7];
  v20 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    v21 = sub_2CA130();
    (*(*(v21 - 8) + 8))(v19, v21);
  }

  v22 = v1[8];
  v23 = sub_2CA000();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v8 + v22, 1, v23))
  {
    (*(v24 + 8))(v8 + v22, v23);
  }

  v25 = *(v8 + v1[9]);

  v26 = (v8 + v1[11]);
  v27 = type metadata accessor for ResponseFactoryOutputContext.AppIntentOutputContext(0);
  if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    if (v26[3])
    {
      sub_306C(v26);
    }

    v28 = *(v27 + 20);
    v29 = sub_2CD140();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v26 + v28, 1, v29))
    {
      (*(v30 + 8))(v26 + v28, v29);
    }
  }

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_29FDD8(uint64_t a1)
{
  v3 = *(type metadata accessor for ResponseFactoryOutputContext(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_298E10(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_29FE54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_E664;

  return sub_295E7C(a1, v5, v4);
}

uint64_t sub_29FF08(uint64_t a1)
{
  v3 = *(sub_20410(&qword_356A78, &unk_2D8EF0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_296280(a1, v4, v5);
}

uint64_t sub_29FF88(uint64_t a1)
{
  v3 = *(sub_20410(&qword_356A78, &unk_2D8EF0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_296680(a1, v4);
}

uint64_t sub_2A007C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_2A011C()
{
  v1 = type metadata accessor for ResponseFactoryOutputContext(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = *(v0 + 48);

  v8 = v0 + v3;
  v9 = *(v0 + v3);

  v10 = v0 + v3 + v1[5];
  v11 = type metadata accessor for SnippetModelResponse();
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {
    v32 = v4;
    v33 = (v2 + 64) & ~v2;
    v12 = sub_2CD230();
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);
    if (!v14(v10, 1, v12))
    {
      (*(v13 + 8))(v10, v12);
    }

    v15 = v11[5];
    if (!v14(v10 + v15, 1, v12))
    {
      (*(v13 + 8))(v10 + v15, v12);
    }

    v16 = *(v10 + v11[6] + 8);

    v17 = *(v10 + v11[7]);

    v3 = v33;
    v4 = v32;
  }

  v18 = *(v8 + v1[6]);

  v19 = v8 + v1[7];
  v20 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    v21 = sub_2CA130();
    (*(*(v21 - 8) + 8))(v19, v21);
  }

  v22 = v1[8];
  v23 = sub_2CA000();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v8 + v22, 1, v23))
  {
    (*(v24 + 8))(v8 + v22, v23);
  }

  v25 = *(v8 + v1[9]);

  v26 = (v8 + v1[11]);
  v27 = type metadata accessor for ResponseFactoryOutputContext.AppIntentOutputContext(0);
  if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    if (v26[3])
    {
      sub_306C(v26);
    }

    v28 = *(v27 + 20);
    v29 = sub_2CD140();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v26 + v28, 1, v29))
    {
      (*(v30 + 8))(v26 + v28, v29);
    }
  }

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_2A05D8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(type metadata accessor for ResponseFactoryOutputContext(0) - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_2A067C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_2A06BC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2902BC(a1);
}

uint64_t sub_2A06C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2A0740(uint64_t *a1)
{
  v3 = *(sub_2CDFD0() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_29F598(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t sub_2A0804@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v83 = sub_2CA870();
  v81 = *(v83 - 8);
  v2 = *(v81 + 64);
  v3 = __chkstk_darwin(v83);
  v80 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v79 = &v71 - v5;
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v85 = v6;
  v86 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v89 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v84 = &v71 - v11;
  v12 = sub_2C9900();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20410(&qword_34D658, &qword_2D1530);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v71 - v19;
  v21 = sub_20410(&qword_34D660, &qword_2D1538);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v71 - v23;
  v25 = sub_2CAFE0();
  v88 = *(v25 - 8);
  v26 = *(v88 + 64);
  v27 = __chkstk_darwin(v25);
  v87 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v71 - v29;
  v92 = sub_2CACD0();
  v93 = &protocol witness table for NonTerminalIntentNode;
  sub_F390(v91);
  sub_2CACC0();
  v31 = sub_2CAFB0();
  (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
  v32 = sub_2CACE0();
  (*(*(v32 - 8) + 56))(v20, 1, 1, v32);
  v33 = v30;
  sub_2CAFD0();
  (*(v13 + 104))(v16, enum case for SiriKitConfirmationState.unset(_:), v12);
  v92 = sub_2CCFE0();
  v93 = &protocol witness table for AppResolutionStateProvider;
  sub_F390(v91);
  sub_2CCFD0();
  v34 = sub_2CA860();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v73 = v1;
  v76 = sub_2CA820();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v37 = v85;
  v38 = sub_3ED0(v85, static Logger.default);
  swift_beginAccess();
  v39 = v84;
  v72 = *(v86 + 16);
  v72(v84, v38, v37);
  v40 = v88;
  v41 = *(v88 + 16);
  v77 = v33;
  v75 = v88 + 16;
  v74 = v41;
  v41(v87, v33, v25);
  v42 = sub_2CDFE0();
  v43 = sub_2CE670();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v25;
  v78 = v25;
  if (v44)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v90 = v47;
    *v46 = 136315138;
    sub_2A9EB0(&qword_34D678, &type metadata accessor for NLIntent);
    v48 = v87;
    v49 = sub_2CEE70();
    v50 = v45;
    v52 = v51;
    v53 = *(v40 + 8);
    v53(v48, v50);
    v54 = sub_3F08(v49, v52, &v90);

    *(v46 + 4) = v54;
    _os_log_impl(&dword_0, v42, v43, "ConvertibleToServerConversionParse#toServerConversionParse nlIntent:%s", v46, 0xCu);
    sub_306C(v47);

    v55 = v85;

    v56 = *(v86 + 8);
    v56(v84, v55);
  }

  else
  {
    v55 = v37;

    v53 = *(v40 + 8);
    v53(v87, v25);
    v56 = *(v86 + 8);
    v56(v39, v37);
  }

  v72(v89, v38, v55);
  v57 = v73;
  v58 = sub_2CDFE0();
  v59 = sub_2CE670();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = v55;
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v61 = 138412290;
    *(v61 + 4) = v57;
    *v62 = v57;
    v63 = v57;
    _os_log_impl(&dword_0, v58, v59, "ConvertibleToServerConversionParse#toServerConversionParse sirikitIntent:%@", v61, 0xCu);
    sub_30B8(v62, &unk_34FC00, &unk_2D0150);

    v55 = v60;
  }

  v56(v89, v55);
  v64 = *(sub_20410(&qword_353070, &unk_2D0FB0) + 48);
  v66 = v78;
  v65 = v79;
  v67 = v77;
  v74(v79, v77, v78);
  *&v65[v64] = v76;
  v68 = v81;
  v69 = v83;
  (*(v81 + 104))(v65, enum case for Parse.NLv3IntentPlusServerConversion(_:), v83);
  (*(v68 + 16))(v80, v65, v69);
  sub_2CA7A0();
  (*(v68 + 8))(v65, v69);
  return (v53)(v67, v66);
}

uint64_t sub_2A1120(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v11 = *sub_35E0(a6, a6[3]);

  return sub_2A8FE0(a1, a2, a3, a4, a5, v11);
}

uint64_t sub_2A1194(char *a1)
{
  v186 = sub_2CA950();
  v180 = *(v186 - 8);
  v2 = *(v180 + 64);
  __chkstk_darwin(v186);
  v183 = &v160 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_20410(&qword_356C30, &qword_2D8FE0);
  v4 = *(*(v184 - 8) + 64);
  __chkstk_darwin(v184);
  v185 = &v160 - v5;
  v6 = sub_20410(&qword_356C38, &qword_2D8FE8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v193 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v160 - v11;
  __chkstk_darwin(v10);
  v14 = &v160 - v13;
  v195 = sub_2CA8F0();
  v179 = *(v195 - 8);
  v15 = *(v179 + 64);
  __chkstk_darwin(v195);
  v197 = &v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CA7B0();
  v205 = *(v17 - 8);
  v18 = *(v205 + 64);
  __chkstk_darwin(v17);
  v20 = &v160 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_2CA870();
  v210 = *(v208 - 8);
  v21 = *(v210 + 64);
  v22 = __chkstk_darwin(v208);
  v187 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v188 = (&v160 - v25);
  v26 = __chkstk_darwin(v24);
  v199 = &v160 - v27;
  v28 = __chkstk_darwin(v26);
  v191 = (&v160 - v29);
  __chkstk_darwin(v28);
  v31 = &v160 - v30;
  v32 = sub_20410(&qword_34E480, &qword_2D2280);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v200 = &v160 - v34;
  v35 = sub_2CE000();
  v36 = *(v35 - 8);
  v37 = v36[8];
  v38 = __chkstk_darwin(v35);
  v189 = &v160 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v182 = &v160 - v41;
  v42 = __chkstk_darwin(v40);
  v181 = &v160 - v43;
  v44 = __chkstk_darwin(v42);
  v178 = &v160 - v45;
  v46 = __chkstk_darwin(v44);
  v177 = &v160 - v47;
  v48 = __chkstk_darwin(v46);
  v198 = &v160 - v49;
  v50 = __chkstk_darwin(v48);
  v52 = &v160 - v51;
  __chkstk_darwin(v50);
  v54 = &v160 - v53;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v190 = v20;
  v207 = a1;
  v194 = v14;
  v196 = v12;
  v55 = sub_3ED0(v35, static Logger.default);
  swift_beginAccess();
  v56 = v36[2];
  v203 = v55;
  v204 = v36 + 2;
  v209 = v35;
  v202 = v56;
  v56(v54, v55, v35);
  v57 = sub_2CDFE0();
  v58 = sub_2CE670();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_0, v57, v58, "PommesResponseFlow#onInput", v59, 2u);
  }

  v60 = v36[1];
  v61 = v36 + 1;
  v62 = v209;
  v63 = v61;
  v201 = v60;
  v60(v54, v209);
  v64 = v205;
  v65 = *(v205 + 16);
  v66 = v200;
  v65(v200, v207, v17);
  v67 = *(v64 + 56);
  v192 = v17;
  v175 = v64 + 56;
  v174 = v67;
  v67(v66, 0, 1, v17);
  v68 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_input;
  v69 = v206;
  swift_beginAccess();
  v176 = v68;
  sub_A4888(v66, v69 + v68);
  swift_endAccess();
  sub_2CA790();
  v70 = v210;
  v72 = v210 + 88;
  v71 = *(v210 + 88);
  v73 = v208;
  v74 = v71(v31, v208);
  if (v74 == enum case for Parse.pommesResponse(_:))
  {
    (*(v70 + 96))(v31, v73);
    v75 = *v31;
    v202(v52, v203, v62);
    v76 = sub_2CDFE0();
    v77 = sub_2CE670();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_0, v76, v77, "PommesResponseFlow#onInput found .pommesResponse in primary parse of input", v78, 2u);
    }

    v201(v52, v62);
    v79 = *(v206 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_pommesResponse);
    *(v206 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_pommesResponse) = v75;

    return 1;
  }

  if (v74 != enum case for Parse.uso(_:))
  {
    v100 = v189;
    v101 = v209;
    v202(v189, v203, v209);
    v102 = sub_2CDFE0();
    v103 = sub_2CE680();
    v104 = os_log_type_enabled(v102, v103);
    v105 = v210;
    if (v104)
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_0, v102, v103, "PommesResponseFlow#onInput top parse is not .pommesResponse and .pommesResponse is not a top alternative for allowed .uso parse.", v106, 2u);
    }

    v201(v100, v101);
    (*(v105 + 8))(v31, v208);
    return 0;
  }

  v171 = v74;
  v173 = enum case for Parse.pommesResponse(_:);
  v189 = v31;
  v81 = v198;
  v202(v198, v203, v209);
  v82 = v190;
  v83 = v192;
  v65(v190, v207, v192);
  v84 = v81;
  v85 = sub_2CDFE0();
  v86 = sub_2CE690();
  v87 = os_log_type_enabled(v85, v86);
  v88 = v63;
  v89 = v210;
  v172 = v71;
  if (v87)
  {
    v90 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v211 = v168;
    *v90 = 136315138;
    v170 = v88;
    sub_2CA780();
    v91 = v208;
    v92 = sub_2CE420();
    v94 = v93;

    (*(v205 + 8))(v82, v83);
    v95 = sub_3F08(v92, v94, &v211);

    *(v90 + 4) = v95;
    _os_log_impl(&dword_0, v85, v86, "PommesResponseFlow#onInput found .uso parse in primary parse of input and alternatives: %s", v90, 0xCu);
    sub_306C(v168);

    v89 = v210;

    v96 = v209;
    v97 = v201;
    v98 = v170;
    v201(v198, v209);
    v99 = v199;
  }

  else
  {

    (*(v205 + 8))(v82, v83);
    v96 = v209;
    v97 = v201;
    v201(v84, v209);
    v91 = v208;
    v99 = v199;
    v98 = v88;
  }

  v107 = v191;
  sub_2CA790();
  v108 = sub_2CA7C0();
  v109 = *(v89 + 8);
  v205 = v89 + 8;
  v198 = v109;
  (v109)(v107, v91);
  if (!v108)
  {
    v136 = v182;
    v202(v182, v203, v96);
    v137 = sub_2CDFE0();
    v138 = sub_2CE680();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      *v139 = 0;
      _os_log_impl(&dword_0, v137, v138, "PommesResponseFlow#onInput failed to get uso task from parse", v139, 2u);
    }

    goto LABEL_40;
  }

  v190 = v108;
  if ((sub_2A9A20() & 1) == 0)
  {
    v136 = v181;
    v202(v181, v203, v96);
    v140 = sub_2CDFE0();
    v141 = sub_2CE680();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      v143 = "PommesResponseFlow#onInput received unhandleable task";
LABEL_38:
      _os_log_impl(&dword_0, v140, v141, v143, v142, 2u);
    }

LABEL_39:

LABEL_40:
    v97(v136, v96);
    (v198)(v189, v91);
    return 0;
  }

  v110 = *(sub_2CA780() + 16);

  if (!v110)
  {
    v136 = v178;
    v202(v178, v203, v96);
    v140 = sub_2CDFE0();
    v141 = sub_2CE680();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      v143 = "PommesResponseFlow#onInput received empty alternatives list, no .pommesResponse in alternatives";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v170 = v98;
  result = sub_2CA780();
  v111 = result;
  v112 = v197;
  v182 = *(result + 16);
  if (!v182)
  {
LABEL_42:

LABEL_44:
    (v198)(v189, v91);
    return 1;
  }

  v113 = 0;
  v181 = (v89 + 96);
  v168 = (v179 + 32);
  v167 = enum case for Siri_Nlu_External_Parser.ParserIdentifier.overrides(_:);
  v166 = (v180 + 104);
  v165 = (v180 + 56);
  v164 = (v180 + 48);
  v161 = (v180 + 32);
  v162 = (v180 + 8);
  v180 = v179 + 8;
  v178 = result;
  v163 = v89 + 16;
  v169 = v72;
  while (1)
  {
    if (v113 >= *(v111 + 2))
    {
      __break(1u);
      return result;
    }

    v114 = &v111[(*(v89 + 80) + 32) & ~*(v89 + 80)];
    v115 = *(v89 + 72);
    v207 = v113;
    v116 = &v114[v115 * v113];
    v117 = *(v89 + 16);
    v117(v99, v116, v91);
    v118 = v188;
    v117(v188, v99, v91);
    v119 = v91;
    v120 = v91;
    v121 = v172;
    v122 = v172(v118, v119);
    if (v122 == v173)
    {

      (*(v89 + 96))(v118, v120);
      v144 = *v118;
      v145 = v206;
      v146 = *(v206 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_pommesResponse);
      *(v206 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_pommesResponse) = *v118;
      v147 = v144;

      v148 = v191;
      *v191 = v147;
      (*(v89 + 104))(v148, v173, v120);
      v149 = v147;
      v150 = v200;
      sub_2CA7A0();

      (v198)(v99, v120);
      v174(v150, 0, 1, v192);
      v151 = v176;
      swift_beginAccess();
      sub_A4888(v150, v145 + v151);
      swift_endAccess();
      v91 = v120;
      goto LABEL_44;
    }

    (v198)(v118, v120);
    v123 = v187;
    v117(v187, v99, v120);
    v124 = v121(v123, v120);
    if (v124 != v171)
    {

      (v198)(v123, v120);
      v91 = v120;
      goto LABEL_49;
    }

    (*v181)(v123, v120);
    v125 = v195;
    (*v168)(v112, v123, v195);
    v126 = v194;
    sub_2CA8D0();
    v127 = v196;
    v128 = v186;
    (*v166)(v196, v167, v186);
    (*v165)(v127, 0, 1, v128);
    v129 = *(v184 + 48);
    v130 = v185;
    sub_F3F4(v126, v185, &qword_356C38, &qword_2D8FE8);
    sub_F3F4(v127, v130 + v129, &qword_356C38, &qword_2D8FE8);
    v131 = *v164;
    if ((*v164)(v130, 1, v128) != 1)
    {
      break;
    }

    sub_30B8(v127, &qword_356C38, &qword_2D8FE8);
    sub_30B8(v126, &qword_356C38, &qword_2D8FE8);
    (*v180)(v197, v125);
    if (v131(v130 + v129, 1, v128) != 1)
    {
      goto LABEL_47;
    }

    sub_30B8(v130, &qword_356C38, &qword_2D8FE8);
    v91 = v208;
    v112 = v197;
    v111 = v178;
LABEL_23:
    v113 = v207 + 1;
    v99 = v199;
    result = (v198)(v199, v91);
    v89 = v210;
    if (v182 == v113)
    {
      goto LABEL_42;
    }
  }

  v132 = v193;
  sub_F3F4(v130, v193, &qword_356C38, &qword_2D8FE8);
  if (v131(v130 + v129, 1, v128) != 1)
  {
    v133 = v183;
    (*v161)(v183, v130 + v129, v128);
    sub_2A9EB0(&qword_356C40, &type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier);
    v134 = sub_2CE250();
    v135 = *v162;
    (*v162)(v133, v128);
    sub_30B8(v196, &qword_356C38, &qword_2D8FE8);
    sub_30B8(v194, &qword_356C38, &qword_2D8FE8);
    v112 = v197;
    (*v180)(v197, v195);
    v135(v193, v128);
    sub_30B8(v130, &qword_356C38, &qword_2D8FE8);
    v91 = v208;
    v111 = v178;
    if ((v134 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_23;
  }

  sub_30B8(v196, &qword_356C38, &qword_2D8FE8);
  sub_30B8(v194, &qword_356C38, &qword_2D8FE8);
  (*v180)(v197, v195);
  (*v162)(v132, v128);
LABEL_47:
  sub_30B8(v130, &qword_356C30, &qword_2D8FE0);
  v91 = v208;
LABEL_48:

  v99 = v199;
LABEL_49:
  v152 = v177;
  v153 = v209;
  v202(v177, v203, v209);
  v154 = sub_2CDFE0();
  v155 = sub_2CE680();
  v156 = os_log_type_enabled(v154, v155);
  v157 = v201;
  if (v156)
  {
    v158 = swift_slowAlloc();
    *v158 = 0;
    _os_log_impl(&dword_0, v154, v155, "PommesResponseFlow#onInput .pommesResponse not found in alternatives before encountering a non-override parse", v158, 2u);
  }

  v157(v152, v153);
  v159 = v198;
  (v198)(v99, v91);
  v159(v189, v91);
  return 0;
}

uint64_t sub_2A27D4(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v587 = a2;
  v586 = a1;
  v533 = sub_2CD540();
  v543 = *(v533 - 8);
  v4 = *(v543 + 64);
  __chkstk_darwin(v533);
  v518 = &v506 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v532 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  v6 = *(*(v532 - 8) + 64);
  __chkstk_darwin(v532);
  v545 = &v506 - v7;
  v8 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v525 = &v506 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v541 = &v506 - v13;
  __chkstk_darwin(v12);
  v542 = &v506 - v14;
  v563 = sub_2C9EC0();
  v562 = *(v563 - 8);
  v15 = *(v562 + 64);
  __chkstk_darwin(v563);
  v561 = &v506 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v582 = sub_2CD4C0();
  v581 = *(v582 - 1);
  v17 = *(v581 + 64);
  __chkstk_darwin(v582);
  v567 = &v506 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v575 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v19 = *(*(v575 - 8) + 64);
  v20 = __chkstk_darwin(v575);
  v526 = &v506 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v531 = &v506 - v23;
  v24 = __chkstk_darwin(v22);
  v553 = &v506 - v25;
  v26 = __chkstk_darwin(v24);
  v539 = &v506 - v27;
  v28 = __chkstk_darwin(v26);
  v551 = &v506 - v29;
  v30 = __chkstk_darwin(v28);
  v564 = &v506 - v31;
  __chkstk_darwin(v30);
  v572 = &v506 - v32;
  v33 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v519 = &v506 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v535 = &v506 - v38;
  v39 = __chkstk_darwin(v37);
  v529 = &v506 - v40;
  v41 = __chkstk_darwin(v39);
  v523 = &v506 - v42;
  v43 = __chkstk_darwin(v41);
  v536 = &v506 - v44;
  v45 = __chkstk_darwin(v43);
  v537 = &v506 - v46;
  v47 = __chkstk_darwin(v45);
  v538 = &v506 - v48;
  v49 = __chkstk_darwin(v47);
  v565 = &v506 - v50;
  v51 = __chkstk_darwin(v49);
  v552 = &v506 - v52;
  v53 = __chkstk_darwin(v51);
  v530 = &v506 - v54;
  v55 = __chkstk_darwin(v53);
  v548 = &v506 - v56;
  v57 = __chkstk_darwin(v55);
  v549 = &v506 - v58;
  v59 = __chkstk_darwin(v57);
  v534 = &v506 - v60;
  v61 = __chkstk_darwin(v59);
  v557 = &v506 - v62;
  v63 = __chkstk_darwin(v61);
  v558 = &v506 - v64;
  v65 = __chkstk_darwin(v63);
  v547 = &v506 - v66;
  v67 = __chkstk_darwin(v65);
  v560 = &v506 - v68;
  v69 = __chkstk_darwin(v67);
  v573 = &v506 - v70;
  v71 = __chkstk_darwin(v69);
  v569 = &v506 - v72;
  v73 = __chkstk_darwin(v71);
  v577 = &v506 - v74;
  __chkstk_darwin(v73);
  v578 = &v506 - v75;
  v76 = sub_20410(&qword_34CC90, qword_2D40E0);
  v77 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76 - 8);
  v580 = &v506 - v78;
  v583 = sub_2CAA00();
  v585 = *(v583 - 8);
  v79 = *(v585 + 64);
  v80 = __chkstk_darwin(v583);
  v571 = &v506 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v584 = &v506 - v82;
  v589 = sub_2CE000();
  v588 = *(v589 - 8);
  v83 = *(v588 + 64);
  v84 = __chkstk_darwin(v589);
  v86 = &v506 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __chkstk_darwin(v84);
  v579 = &v506 - v88;
  v89 = __chkstk_darwin(v87);
  v574 = &v506 - v90;
  v91 = __chkstk_darwin(v89);
  v570 = &v506 - v92;
  v93 = __chkstk_darwin(v91);
  v517 = &v506 - v94;
  v95 = __chkstk_darwin(v93);
  v528 = &v506 - v96;
  v97 = __chkstk_darwin(v95);
  v524 = &v506 - v98;
  v99 = __chkstk_darwin(v97);
  v544 = &v506 - v100;
  v101 = __chkstk_darwin(v99);
  v540 = &v506 - v102;
  v103 = __chkstk_darwin(v101);
  v550 = &v506 - v104;
  v105 = __chkstk_darwin(v103);
  v522 = &v506 - v106;
  v107 = __chkstk_darwin(v105);
  v556 = &v506 - v108;
  v109 = __chkstk_darwin(v107);
  v566 = &v506 - v110;
  v111 = __chkstk_darwin(v109);
  v568 = &v506 - v112;
  v113 = __chkstk_darwin(v111);
  v576 = &v506 - v114;
  __chkstk_darwin(v113);
  v116 = &v506 - v115;
  v117 = sub_20410(&qword_34E480, &qword_2D2280);
  v118 = *(*(v117 - 8) + 64);
  v119 = __chkstk_darwin(v117 - 8);
  v559 = &v506 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v119);
  v122 = &v506 - v121;
  v123 = sub_2CA7B0();
  v124 = *(v123 - 8);
  v125 = *(v124 + 64);
  v126 = __chkstk_darwin(v123);
  v520 = &v506 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __chkstk_darwin(v126);
  v527 = &v506 - v129;
  v130 = __chkstk_darwin(v128);
  v555 = &v506 - v131;
  v132 = __chkstk_darwin(v130);
  v554 = &v506 - v133;
  __chkstk_darwin(v132);
  v135 = &v506 - v134;
  v136 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_input;
  swift_beginAccess();
  v521 = v136;
  sub_F3F4(v3 + v136, v122, &qword_34E480, &qword_2D2280);
  if ((*(v124 + 48))(v122, 1, v123) == 1)
  {
    v137 = v3;
    sub_30B8(v122, &qword_34E480, &qword_2D2280);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v138 = v589;
    v139 = sub_3ED0(v589, static Logger.default);
    swift_beginAccess();
    v140 = v588;
    (*(v588 + 16))(v86, v139, v138);
    v141 = sub_2CDFE0();
    v142 = sub_2CE680();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 0;
      _os_log_impl(&dword_0, v141, v142, "PommesResponseFlow#execute error unpacking input", v143, 2u);
    }

    (*(v140 + 8))(v86, v138);
    v144 = *(v137 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_commonMediaIntentCatDialogService);
    v145 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker;
    sub_2CCFB0();
    v146 = sub_2CCF80();
    v147 = swift_allocObject();
    v148 = v587;
    *(v147 + 16) = v586;
    *(v147 + 24) = v148;
    v149 = sub_2CB4A0();

    v150 = sub_2CB490();
    v593 = v149;
    v594 = &protocol witness table for SiriKitTaskLoggingProvider;
    v592 = v150;
    sub_20410(&unk_353120, &unk_2D0B50);
    v151 = swift_allocObject();
    *(v151 + 16) = xmmword_2D0090;
    sub_2CC230();
    *(v151 + 32) = sub_2CC200();
    *(v151 + 72) = &type metadata for String;
    *(v151 + 40) = v152;
    *(v151 + 48) = 0xD00000000000001FLL;
    *(v151 + 56) = 0x80000000002DBA80;
    v153 = sub_112C0(v151);
    swift_setDeallocating();
    sub_30B8(v151 + 32, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    sub_EEAC(&v592, &v591);
    sub_EEAC(v137 + v145, &v590);
    v154 = swift_allocObject();
    v154[2] = 0xD000000000000013;
    v154[3] = 0x80000000002E0FE0;
    sub_F338(&v591, (v154 + 4));
    v154[9] = v146;
    sub_F338(&v590, (v154 + 10));
    v154[15] = sub_2A9EFC;
    v154[16] = v147;

    sub_3D150(v153, v146, sub_2A9EF8, v154);

    return sub_306C(&v592);
  }

  v155 = *(v124 + 32);
  v516 = v135;
  v155(v135, v122, v123);
  v156 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_pommesResponse);
  v546 = v124;
  v157 = v3;
  if (!v156)
  {
    v202 = v589;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v203 = sub_3ED0(v202, static Logger.default);
    swift_beginAccess();
    v204 = v588;
    v205 = v579;
    (*(v588 + 16))(v579, v203, v202);
    v206 = sub_2CDFE0();
    v207 = sub_2CE680();
    v208 = os_log_type_enabled(v206, v207);
    v209 = v516;
    if (v208)
    {
      v210 = swift_slowAlloc();
      *v210 = 0;
      _os_log_impl(&dword_0, v206, v207, "PommesResponseFlow#execute pommesResponse is nil", v210, 2u);
    }

    (*(v204 + 8))(v205, v202);
    v211 = *(v157 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_commonMediaIntentCatDialogService);
    v212 = v157;
    v213 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker;
    sub_2CCFB0();
    v214 = sub_2CCF80();
    v215 = swift_allocObject();
    v216 = v587;
    *(v215 + 16) = v586;
    *(v215 + 24) = v216;
    v217 = sub_2CB4A0();

    v218 = sub_2CB490();
    v593 = v217;
    v594 = &protocol witness table for SiriKitTaskLoggingProvider;
    v592 = v218;
    sub_20410(&unk_353120, &unk_2D0B50);
    v219 = swift_allocObject();
    *(v219 + 16) = xmmword_2D0090;
    sub_2CC230();
    *(v219 + 32) = sub_2CC200();
    *(v219 + 72) = &type metadata for String;
    *(v219 + 40) = v220;
    *(v219 + 48) = 0xD00000000000001FLL;
    *(v219 + 56) = 0x80000000002DBA80;
    v221 = sub_112C0(v219);
    swift_setDeallocating();
    sub_30B8(v219 + 32, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    sub_EEAC(&v592, &v591);
    sub_EEAC(v212 + v213, &v590);
    v222 = swift_allocObject();
    v222[2] = 0x6F707365526C694ELL;
    v222[3] = 0xEB0000000065736ELL;
    sub_F338(&v591, (v222 + 4));
    v222[9] = v214;
    sub_F338(&v590, (v222 + 10));
    v222[15] = sub_2A9EFC;
    v222[16] = v215;

    sub_3D150(v221, v214, sub_2A9EF8, v222);

    (*(v546 + 8))(v209, v123);
    return sub_306C(&v592);
  }

  v158 = v156;
  v159 = sub_1B7F14();
  v160 = v589;
  if (!v159)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v223 = sub_3ED0(v160, static Logger.default);
    swift_beginAccess();
    v224 = v588;
    v225 = v574;
    (*(v588 + 16))(v574, v223, v160);
    v226 = v158;
    v227 = sub_2CDFE0();
    v228 = sub_2CE680();

    if (os_log_type_enabled(v227, v228))
    {
      v229 = swift_slowAlloc();
      v230 = swift_slowAlloc();
      v513 = v157;
      v231 = v230;
      v592 = v230;
      *v229 = 136315138;
      sub_2CDAD0();
      sub_2CDA50();
      v232 = sub_2CE420();
      v233 = v226;
      v234 = v224;
      v236 = v235;

      v237 = sub_3F08(v232, v236, &v592);

      *(v229 + 4) = v237;
      _os_log_impl(&dword_0, v227, v228, "PommesResponseFlow#execute pommesResponse doesn't contain audioExperience %s", v229, 0xCu);
      sub_306C(v231);
      v157 = v513;

      (*(v234 + 8))(v574, v589);
      v226 = v233;
    }

    else
    {

      (*(v224 + 8))(v225, v160);
    }

    v275 = *(v157 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_commonMediaIntentCatDialogService);
    v276 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker;
    sub_2CCFB0();
    v277 = sub_2CCF80();
    v278 = swift_allocObject();
    v279 = v587;
    *(v278 + 16) = v586;
    *(v278 + 24) = v279;
    v280 = sub_2CB4A0();

    v281 = sub_2CB490();
    v593 = v280;
    v594 = &protocol witness table for SiriKitTaskLoggingProvider;
    v592 = v281;
    sub_20410(&unk_353120, &unk_2D0B50);
    v282 = v157;
    v283 = swift_allocObject();
    *(v283 + 16) = xmmword_2D0090;
    sub_2CC230();
    *(v283 + 32) = sub_2CC200();
    *(v283 + 72) = &type metadata for String;
    *(v283 + 40) = v284;
    *(v283 + 48) = 0xD00000000000001FLL;
    *(v283 + 56) = 0x80000000002DBA80;
    v285 = sub_112C0(v283);
    swift_setDeallocating();
    sub_30B8(v283 + 32, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    sub_EEAC(&v592, &v591);
    sub_EEAC(v282 + v276, &v590);
    v286 = swift_allocObject();
    v286[2] = 1161916238;
    v286[3] = 0xE400000000000000;
    sub_F338(&v591, (v286 + 4));
    v286[9] = v277;
    sub_F338(&v590, (v286 + 10));
    v286[15] = sub_2A9EFC;
    v286[16] = v278;

    sub_3D150(v285, v277, sub_2A9EF8, v286);

LABEL_41:
    (*(v546 + 8))(v516, v123);
    return sub_306C(&v592);
  }

  v161 = v159;
  v511 = v158;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v514 = v123;
  v162 = sub_3ED0(v160, static Logger.default);
  swift_beginAccess();
  v163 = v588;
  v165 = v588 + 16;
  v164 = *(v588 + 16);
  v515 = v162;
  v574 = v164;
  (v164)(v116, v162, v160);
  v166 = sub_2CDFE0();
  v167 = sub_2CE670();
  v168 = os_log_type_enabled(v166, v167);
  v169 = v583;
  v170 = v584;
  if (v168)
  {
    v171 = swift_slowAlloc();
    *v171 = 0;
    _os_log_impl(&dword_0, v166, v167, "PommesResponseFlow#execute", v171, 2u);
  }

  v173 = *(v163 + 8);
  v172 = v163 + 8;
  v579 = v173;
  (v173)(v116, v589);
  v174 = v161;
  sub_2CDA40();
  v512 = v174;

  v175 = sub_2CD700();
  v176 = v585;
  v177 = *(v585 + 16);
  v178 = v580;
  v177(v580, v170, v169);
  (*(v176 + 56))(v178, 0, 1, v169);
  v510 = v175;
  v179 = sub_2CD600();
  if (!v179)
  {
    v238 = v570;
    v239 = v589;
    (v574)(v570, v515, v589);
    v240 = sub_2CDFE0();
    v241 = sub_2CE680();
    if (os_log_type_enabled(v240, v241))
    {
      v242 = swift_slowAlloc();
      *v242 = 0;
      _os_log_impl(&dword_0, v240, v241, "PommesResponseFlow#execute AudioUsoIntent failed to be constructed", v242, 2u);
    }

    (v579)(v238, v239);
    v243 = *(v157 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_commonMediaIntentCatDialogService);
    v244 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker;
    sub_2CCFB0();
    v245 = sub_2CCF80();
    v246 = swift_allocObject();
    v247 = v587;
    *(v246 + 16) = v586;
    *(v246 + 24) = v247;
    v248 = sub_2CB4A0();

    v249 = sub_2CB490();
    v593 = v248;
    v594 = &protocol witness table for SiriKitTaskLoggingProvider;
    v592 = v249;
    sub_20410(&unk_353120, &unk_2D0B50);
    v250 = swift_allocObject();
    *(v250 + 16) = xmmword_2D0090;
    sub_2CC230();
    *(v250 + 32) = sub_2CC200();
    *(v250 + 72) = &type metadata for String;
    *(v250 + 40) = v251;
    *(v250 + 48) = 0xD00000000000001FLL;
    *(v250 + 56) = 0x80000000002DBA80;
    v252 = sub_112C0(v250);
    swift_setDeallocating();
    sub_30B8(v250 + 32, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    sub_EEAC(&v592, &v591);
    sub_EEAC(v157 + v244, &v590);
    v253 = swift_allocObject();
    v253[2] = 0xD000000000000012;
    v253[3] = 0x80000000002E1000;
    sub_F338(&v591, (v253 + 4));
    v253[9] = v245;
    sub_F338(&v590, (v253 + 10));
    v253[15] = sub_2A9EFC;
    v253[16] = v246;

    sub_3D150(v252, v245, sub_2A9EF8, v253);

    (*(v585 + 8))(v584, v583);
LABEL_28:
    (*(v546 + 8))(v516, v514);
    return sub_306C(&v592);
  }

  v180 = v179;
  v513 = v157;
  v181 = v576;
  v509 = v165;
  (v574)(v576, v515, v589);
  v182 = v571;
  v177(v571, v170, v169);
  v183 = v511;
  v184 = sub_2CDFE0();
  v185 = sub_2CE670();

  v186 = os_log_type_enabled(v184, v185);
  v580 = v180;
  v588 = v172;
  v570 = v183;
  if (v186)
  {
    v187 = swift_slowAlloc();
    v511 = swift_slowAlloc();
    *&v591 = v511;
    *v187 = 136315394;
    v188 = v183;
    v508 = v184;
    v189 = v188;
    v190 = [v188 description];
    v191 = sub_2CE270();
    LODWORD(v507) = v185;
    v192 = v191;
    v194 = v193;

    v195 = sub_3F08(v192, v194, &v591);

    *(v187 + 4) = v195;
    *(v187 + 12) = 2080;
    sub_2CAA60();
    v593 = v169;
    v594 = sub_2A9EB0(&unk_353090, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
    v196 = sub_F390(&v592);
    v177(v196, v182, v169);
    v197 = sub_2CAA50();
    v199 = v198;
    v571 = *(v585 + 8);
    (v571)(v182, v169);
    sub_306C(&v592);
    v200 = sub_3F08(v197, v199, &v591);

    *(v187 + 14) = v200;
    v201 = v508;
    _os_log_impl(&dword_0, v508, v507, "PommesResponseFlow#execute pommesResponse: %s userDialogAct: %s", v187, 0x16u);
    swift_arrayDestroy();

    (v579)(v576, v589);
  }

  else
  {

    v571 = *(v585 + 8);
    (v571)(v182, v169);
    (v579)(v181, v589);
  }

  v254 = v573;
  v255 = v578;
  sub_2CD6C0();
  v256 = v581;
  v257 = v577;
  v258 = v582;
  v508 = *(v581 + 104);
  v507 = v581 + 104;
  (v508)(v577, enum case for CommonAudio.Verb.resume(_:), v582);
  v259 = *(v256 + 56);
  v506 = v256 + 56;
  v511 = v259;
  (v259)(v257, 0, 1, v258);
  v260 = *(v575 + 48);
  v261 = v572;
  sub_F3F4(v255, v572, &qword_34D6B8, &qword_2D15B0);
  v262 = v258;
  sub_F3F4(v257, v261 + v260, &qword_34D6B8, &qword_2D15B0);
  v263 = (v256 + 48);
  v264 = *(v256 + 48);
  v576 = v263;
  v265 = v264(v261, 1, v258);
  v266 = v514;
  if (v265 == 1)
  {
    sub_30B8(v257, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v255, &qword_34D6B8, &qword_2D15B0);
    if (v264(v261 + v260, 1, v582) == 1)
    {
      sub_30B8(v261, &qword_34D6B8, &qword_2D15B0);
      v123 = v266;
      goto LABEL_48;
    }

    goto LABEL_35;
  }

  v267 = v569;
  sub_F3F4(v261, v569, &qword_34D6B8, &qword_2D15B0);
  if (v264(v261 + v260, 1, v262) == 1)
  {
    sub_30B8(v577, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v578, &qword_34D6B8, &qword_2D15B0);
    (*(v581 + 8))(v267, v582);
LABEL_35:
    sub_30B8(v261, &qword_34D6B0, &unk_2D4FC0);
    v268 = v580;
    v123 = v266;
    goto LABEL_36;
  }

  v297 = v581;
  v298 = v261 + v260;
  v299 = v567;
  (*(v581 + 32))(v567, v298, v262);
  sub_2A9EB0(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v300 = v262;
  v301 = sub_2CE250();
  v302 = *(v297 + 8);
  v302(v299, v300);
  sub_30B8(v577, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v578, &qword_34D6B8, &qword_2D15B0);
  v302(v267, v300);
  v254 = v573;
  v123 = v514;
  sub_30B8(v261, &qword_34D6B8, &qword_2D15B0);
  v268 = v580;
  if (v301)
  {
LABEL_48:
    v269 = v568;
    v270 = v589;
    (v574)(v568, v515, v589);
    v271 = sub_2CDFE0();
    v272 = sub_2CE670();
    if (os_log_type_enabled(v271, v272))
    {
      v273 = swift_slowAlloc();
      *v273 = 0;
      v274 = "PommesResponseFlow#execute un-ambiguous resume. Completing and calling SiriPlaybackControls makeFlow";
      goto LABEL_50;
    }

    goto LABEL_51;
  }

LABEL_36:
  v592 = v268;
  if (sub_2CD970())
  {
    v269 = v566;
    v270 = v589;
    (v574)(v566, v515, v589);
    v271 = sub_2CDFE0();
    v272 = sub_2CE690();
    if (os_log_type_enabled(v271, v272))
    {
      v273 = swift_slowAlloc();
      *v273 = 0;
      v274 = "PommesResponseFlow#execute Referenced play request: This is an AddSpeaker request and should be handled in controls";
LABEL_50:
      _os_log_impl(&dword_0, v271, v272, v274, v273, 2u);
    }

LABEL_51:

    (v579)(v269, v270);
    v303 = v516;
    v304 = v516;
    v305 = v586;
    v306 = v587;
LABEL_52:
    sub_2A788C(v304, v305, v306);

    (v571)(v584, v583);
    return (*(v546 + 8))(v303, v123);
  }

  v592 = v268;
  if (sub_2CD940())
  {
    v288 = v556;
    v289 = v589;
    (v574)(v556, v515, v589);
    v290 = sub_2CDFE0();
    v291 = sub_2CE670();
    if (os_log_type_enabled(v290, v291))
    {
      v292 = swift_slowAlloc();
      *v292 = 0;
      _os_log_impl(&dword_0, v290, v291, "PommesResponseFlow#execute forwarding to first audio play flow", v292, 2u);
    }

    (v579)(v288, v289);
    v293 = v546;
    v294 = v559;
    v295 = v516;
    (*(v546 + 16))(v559, v516, v123);
    (*(v293 + 56))(v294, 0, 1, v123);
    sub_1362C8(v294);
    sub_30B8(v294, &qword_34E480, &qword_2D2280);
    v296 = v561;
    sub_2C9EA0();

    v586(v296);

    (*(v562 + 8))(v296, v563);
    (v571)(v584, v583);
    return (*(v293 + 8))(v295, v123);
  }

  sub_2CD6C0();
  v307 = v560;
  v308 = v582;
  (v508)(v560, enum case for CommonAudio.Verb.subscribe(_:), v582);
  (v511)(v307, 0, 1, v308);
  v309 = *(v575 + 48);
  v310 = v254;
  v311 = v564;
  sub_F3F4(v310, v564, &qword_34D6B8, &qword_2D15B0);
  v312 = v311;
  sub_F3F4(v307, v311 + v309, &qword_34D6B8, &qword_2D15B0);
  if (v264(v311, 1, v308) == 1)
  {
    sub_30B8(v307, &qword_34D6B8, &qword_2D15B0);
    v313 = v564;
    sub_30B8(v573, &qword_34D6B8, &qword_2D15B0);
    v314 = v264(v313 + v309, 1, v308);
    v315 = v565;
    if (v314 == 1)
    {
      goto LABEL_63;
    }

    goto LABEL_58;
  }

  v316 = v547;
  sub_F3F4(v311, v547, &qword_34D6B8, &qword_2D15B0);
  if (v264(v311 + v309, 1, v308) == 1)
  {
    sub_30B8(v560, &qword_34D6B8, &qword_2D15B0);
    v313 = v564;
    sub_30B8(v573, &qword_34D6B8, &qword_2D15B0);
    (*(v581 + 8))(v316, v308);
LABEL_58:
    sub_30B8(v313, &qword_34D6B0, &unk_2D4FC0);
    v317 = v558;
    v318 = v557;
    goto LABEL_59;
  }

  v346 = v581;
  v347 = v312 + v309;
  v348 = v567;
  (*(v581 + 32))(v567, v347, v308);
  sub_2A9EB0(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  LODWORD(v578) = sub_2CE250();
  v349 = *(v346 + 8);
  v349(v348, v308);
  sub_30B8(v560, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v573, &qword_34D6B8, &qword_2D15B0);
  v349(v316, v308);
  sub_30B8(v312, &qword_34D6B8, &qword_2D15B0);
  v315 = v565;
  v317 = v558;
  v318 = v557;
  if (v578)
  {
    goto LABEL_64;
  }

LABEL_59:
  sub_2CD6C0();
  v319 = v317;
  v320 = v318;
  v321 = v582;
  (v508)(v318, enum case for CommonAudio.Verb.update(_:), v582);
  (v511)(v318, 0, 1, v321);
  v322 = *(v575 + 48);
  v323 = v319;
  v324 = v319;
  v325 = v551;
  sub_F3F4(v324, v551, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v320, v325 + v322, &qword_34D6B8, &qword_2D15B0);
  if (v264(v325, 1, v321) == 1)
  {
    sub_30B8(v320, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v323, &qword_34D6B8, &qword_2D15B0);
    v326 = v264(v325 + v322, 1, v321) == 1;
    v327 = v325;
    v315 = v565;
    if (v326)
    {
      v313 = v327;
LABEL_63:
      sub_30B8(v313, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_64;
    }
  }

  else
  {
    v339 = v534;
    sub_F3F4(v325, v534, &qword_34D6B8, &qword_2D15B0);
    if (v264(v325 + v322, 1, v321) != 1)
    {
      v375 = v581;
      v376 = v325 + v322;
      v377 = v567;
      (*(v581 + 32))(v567, v376, v321);
      sub_2A9EB0(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
      LODWORD(v578) = sub_2CE250();
      v378 = *(v375 + 8);
      v378(v377, v321);
      sub_30B8(v557, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v558, &qword_34D6B8, &qword_2D15B0);
      v378(v339, v321);
      sub_30B8(v325, &qword_34D6B8, &qword_2D15B0);
      v315 = v565;
      if (v578)
      {
        goto LABEL_64;
      }

      goto LABEL_73;
    }

    sub_30B8(v557, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v558, &qword_34D6B8, &qword_2D15B0);
    (*(v581 + 8))(v339, v321);
    v327 = v325;
  }

  sub_30B8(v327, &qword_34D6B0, &unk_2D4FC0);
LABEL_73:
  v340 = v549;
  sub_2CD6C0();
  v341 = v548;
  v342 = v582;
  (v508)(v548, enum case for CommonAudio.Verb.follow(_:), v582);
  (v511)(v341, 0, 1, v342);
  v343 = *(v575 + 48);
  v344 = v539;
  sub_F3F4(v340, v539, &qword_34D6B8, &qword_2D15B0);
  v345 = v342;
  sub_F3F4(v341, v344 + v343, &qword_34D6B8, &qword_2D15B0);
  if (v264(v344, 1, v342) == 1)
  {
    sub_30B8(v341, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v340, &qword_34D6B8, &qword_2D15B0);
    if (v264(v344 + v343, 1, v342) == 1)
    {
      v313 = v344;
      v315 = v565;
      goto LABEL_63;
    }

    goto LABEL_80;
  }

  v350 = v530;
  sub_F3F4(v344, v530, &qword_34D6B8, &qword_2D15B0);
  if (v264(v344 + v343, 1, v345) == 1)
  {
    sub_30B8(v548, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v549, &qword_34D6B8, &qword_2D15B0);
    (*(v581 + 8))(v350, v345);
LABEL_80:
    sub_30B8(v344, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_81;
  }

  v432 = v343;
  v433 = v581;
  v434 = v567;
  (*(v581 + 32))(v567, v344 + v432, v345);
  sub_2A9EB0(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  LODWORD(v578) = sub_2CE250();
  v435 = *(v433 + 8);
  v435(v434, v345);
  sub_30B8(v548, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v549, &qword_34D6B8, &qword_2D15B0);
  v435(v350, v345);
  sub_30B8(v344, &qword_34D6B8, &qword_2D15B0);
  v315 = v565;
  if ((v578 & 1) == 0)
  {
LABEL_81:
    v351 = v537;
    sub_2CD6C0();
    v352 = v536;
    v353 = v582;
    (v508)(v536, enum case for CommonAudio.Verb.summarise(_:), v582);
    (v511)(v352, 0, 1, v353);
    v354 = *(v575 + 48);
    v355 = v531;
    sub_F3F4(v351, v531, &qword_34D6B8, &qword_2D15B0);
    sub_F3F4(v352, v355 + v354, &qword_34D6B8, &qword_2D15B0);
    if (v264(v355, 1, v353) == 1)
    {
      sub_30B8(v352, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v351, &qword_34D6B8, &qword_2D15B0);
      v356 = v264(v355 + v354, 1, v582);
      v357 = v535;
      if (v356 == 1)
      {
        v123 = v514;
        v358 = v513;
LABEL_110:
        sub_30B8(v355, &qword_34D6B8, &qword_2D15B0);
LABEL_124:
        v459 = v570;
        v460 = sub_1B7F14();
        if (v460)
        {
          v461 = v460;
          v462 = [objc_allocWithZone(INSearchForMediaIntent) init];
          v463 = sub_2CDAE0();
          v464 = sub_1CFB70(v461, v463);

          v465 = v527;
          v582 = v464;
          sub_2A0804(v527);
          v466 = v524;
          v467 = v589;
          (v574)(v524, v515, v589);
          v468 = v546;
          v469 = v520;
          (*(v546 + 16))(v520, v465, v123);
          v470 = sub_2CDFE0();
          v471 = sub_2CE670();
          if (os_log_type_enabled(v470, v471))
          {
            v472 = swift_slowAlloc();
            v473 = swift_slowAlloc();
            v592 = v473;
            *v472 = 136315138;
            sub_2A9EB0(&qword_34CD00, &type metadata accessor for Input);
            v474 = sub_2CEE70();
            v476 = v475;
            v477 = v469;
            v398 = *(v546 + 8);
            v398(v477, v123);
            v478 = sub_3F08(v474, v476, &v592);

            *(v472 + 4) = v478;
            _os_log_impl(&dword_0, v470, v471, "PommesResponseFlow#execute updated serverConversion input: %s", v472, 0xCu);
            sub_306C(v473);

            v479 = v524;
          }

          else
          {

            v498 = v469;
            v398 = *(v468 + 8);
            v398(v498, v123);
            v479 = v466;
          }

          (v579)(v479, v467);
          v499 = v584;
          (v574)(v528, v515, v467);
          v500 = sub_2CDFE0();
          v501 = sub_2CE670();
          if (os_log_type_enabled(v500, v501))
          {
            v502 = swift_slowAlloc();
            *v502 = 0;
            _os_log_impl(&dword_0, v500, v501, "PommesResponseFlow#execute forwarding SearchForMedia RCHFlow", v502, 2u);
          }

          (v579)(v528, v589);
          sub_35E0((v513 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_audioFlowProvider), *(v513 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_audioFlowProvider + 24));
          type metadata accessor for AudioFlowProvider();
          v503 = v527;
          v504 = v582;
          sub_13479C(v527, v582);
          v505 = v561;
          sub_2C9EA0();
          v586(v505);

          (*(v562 + 8))(v505, v563);
          v424 = v514;
          v398(v503, v514);
          v425 = v499;
          goto LABEL_103;
        }

        v480 = v459;
        v481 = v517;
        v482 = v589;
        (v574)(v517, v515, v589);
        v483 = sub_2CDFE0();
        v484 = sub_2CE670();
        if (os_log_type_enabled(v483, v484))
        {
          v485 = swift_slowAlloc();
          *v485 = 0;
          _os_log_impl(&dword_0, v483, v484, "PommesResponseFlow#execute failed to build searchMediaIntent", v485, 2u);
        }

        (v579)(v481, v482);
        v486 = *(v358 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_commonMediaIntentCatDialogService);
        v487 = v358;
        v488 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker;
        sub_2CCFB0();
        v489 = sub_2CCF80();
        v490 = swift_allocObject();
        v491 = v587;
        *(v490 + 16) = v586;
        *(v490 + 24) = v491;
        v492 = sub_2CB4A0();

        v493 = sub_2CB490();
        v593 = v492;
        v594 = &protocol witness table for SiriKitTaskLoggingProvider;
        v592 = v493;
        sub_20410(&unk_353120, &unk_2D0B50);
        v494 = swift_allocObject();
        *(v494 + 16) = xmmword_2D0090;
        sub_2CC230();
        *(v494 + 32) = sub_2CC200();
        *(v494 + 72) = &type metadata for String;
        *(v494 + 40) = v495;
        *(v494 + 48) = 0xD00000000000001FLL;
        *(v494 + 56) = 0x80000000002DBA80;
        v496 = sub_112C0(v494);
        swift_setDeallocating();
        sub_30B8(v494 + 32, &qword_34CBA0, &unk_2D0FE0);
        swift_deallocClassInstance();
        sub_EEAC(&v592, &v591);
        sub_EEAC(v487 + v488, &v590);
        v497 = swift_allocObject();
        strcpy((v497 + 16), "FailedSMIBuild");
        *(v497 + 31) = -18;
        sub_F338(&v591, v497 + 32);
        *(v497 + 72) = v489;
        sub_F338(&v590, v497 + 80);
        *(v497 + 120) = sub_2A9EFC;
        *(v497 + 128) = v490;

        sub_3D150(v496, v489, sub_2A9EF8, v497);

        (v571)(v584, v583);
        goto LABEL_41;
      }
    }

    else
    {
      v426 = v523;
      sub_F3F4(v355, v523, &qword_34D6B8, &qword_2D15B0);
      if (v264(v355 + v354, 1, v353) != 1)
      {
        v448 = v581;
        v449 = v567;
        (*(v581 + 32))(v567, v355 + v354, v353);
        sub_2A9EB0(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
        v450 = v355;
        v451 = v353;
        v452 = sub_2CE250();
        v453 = v426;
        v454 = *(v448 + 8);
        v454(v449, v451);
        sub_30B8(v536, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v537, &qword_34D6B8, &qword_2D15B0);
        v454(v453, v451);
        v358 = v513;
        v123 = v514;
        sub_30B8(v450, &qword_34D6B8, &qword_2D15B0);
        v357 = v535;
        if (v452)
        {
          goto LABEL_124;
        }

LABEL_107:
        v427 = v529;
        sub_2CD6C0();
        v428 = v582;
        (v508)(v357, enum case for CommonAudio.Verb.open(_:), v582);
        (v511)(v357, 0, 1, v428);
        v429 = *(v575 + 48);
        v430 = v526;
        sub_F3F4(v427, v526, &qword_34D6B8, &qword_2D15B0);
        v431 = v428;
        sub_F3F4(v357, v430 + v429, &qword_34D6B8, &qword_2D15B0);
        if (v264(v430, 1, v428) == 1)
        {
          sub_30B8(v357, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v427, &qword_34D6B8, &qword_2D15B0);
          if (v264(v430 + v429, 1, v428) == 1)
          {
            v355 = v430;
            goto LABEL_110;
          }
        }

        else
        {
          v436 = v519;
          sub_F3F4(v430, v519, &qword_34D6B8, &qword_2D15B0);
          if (v264(v430 + v429, 1, v431) != 1)
          {
            v455 = v581;
            v456 = v567;
            (*(v581 + 32))(v567, v430 + v429, v431);
            sub_2A9EB0(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
            v457 = sub_2CE250();
            v458 = *(v455 + 8);
            v458(v456, v431);
            sub_30B8(v535, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v529, &qword_34D6B8, &qword_2D15B0);
            v458(v436, v431);
            sub_30B8(v430, &qword_34D6B8, &qword_2D15B0);
            if (v457)
            {
              goto LABEL_124;
            }

LABEL_116:
            v303 = v516;
            v304 = v516;
            v305 = v586;
            v306 = v587;
            goto LABEL_52;
          }

          sub_30B8(v535, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v427, &qword_34D6B8, &qword_2D15B0);
          (*(v581 + 8))(v436, v431);
        }

        sub_30B8(v430, &qword_34D6B0, &unk_2D4FC0);
        goto LABEL_116;
      }

      sub_30B8(v536, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v537, &qword_34D6B8, &qword_2D15B0);
      (*(v581 + 8))(v426, v582);
      v357 = v535;
    }

    sub_30B8(v355, &qword_34D6B0, &unk_2D4FC0);
    v123 = v514;
    v358 = v513;
    goto LABEL_107;
  }

LABEL_64:
  v328 = v552;
  sub_2CD6C0();
  v329 = v582;
  (v508)(v315, enum case for CommonAudio.Verb.update(_:), v582);
  (v511)(v315, 0, 1, v329);
  v330 = *(v575 + 48);
  v331 = v553;
  sub_F3F4(v328, v553, &qword_34D6B8, &qword_2D15B0);
  v332 = v329;
  sub_F3F4(v315, v331 + v330, &qword_34D6B8, &qword_2D15B0);
  if (v264(v331, 1, v329) == 1)
  {
    sub_30B8(v315, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v328, &qword_34D6B8, &qword_2D15B0);
    v333 = v264(v331 + v330, 1, v329);
    v334 = v570;
    v335 = v555;
    if (v333 == 1)
    {
      sub_30B8(v331, &qword_34D6B8, &qword_2D15B0);
      v336 = v513;
      goto LABEL_85;
    }

    goto LABEL_69;
  }

  v337 = v538;
  sub_F3F4(v331, v538, &qword_34D6B8, &qword_2D15B0);
  v338 = v264(v331 + v330, 1, v329);
  v334 = v570;
  if (v338 == 1)
  {
    sub_30B8(v565, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v328, &qword_34D6B8, &qword_2D15B0);
    (*(v581 + 8))(v337, v329);
    v335 = v555;
LABEL_69:
    sub_30B8(v331, &qword_34D6B0, &unk_2D4FC0);
    v336 = v513;
LABEL_93:
    v380 = sub_1B7F14();
    if (v380)
    {
      v381 = v380;
      v382 = [objc_allocWithZone(INAddMediaIntent) init];
      v383 = sub_2CDAE0();
      v384 = sub_60F90(v381, v383);

      v385 = v554;
      v582 = v384;
      INAddMediaIntent.toServerConversionParse()(v554);
      v386 = v550;
      v387 = v589;
      (v574)(v550, v515, v589);
      v388 = v546;
      (*(v546 + 16))(v335, v385, v514);
      v389 = sub_2CDFE0();
      v390 = sub_2CE670();
      if (os_log_type_enabled(v389, v390))
      {
        v391 = swift_slowAlloc();
        v392 = v335;
        v393 = swift_slowAlloc();
        v592 = v393;
        *v391 = 136315138;
        sub_2A9EB0(&qword_34CD00, &type metadata accessor for Input);
        v394 = v514;
        v395 = sub_2CEE70();
        v397 = v396;
        v398 = *(v546 + 8);
        v398(v392, v394);
        v399 = sub_3F08(v395, v397, &v592);

        *(v391 + 4) = v399;
        _os_log_impl(&dword_0, v389, v390, "PommesResponseFlow#execute updated serverConversion input: %s", v391, 0xCu);
        sub_306C(v393);

        v400 = v550;
      }

      else
      {

        v398 = *(v388 + 8);
        v398(v335, v514);
        v400 = v386;
      }

      (v579)(v400, v387);
      v417 = v540;
      (v574)(v540, v515, v387);
      v418 = sub_2CDFE0();
      v419 = sub_2CE670();
      if (os_log_type_enabled(v418, v419))
      {
        v420 = swift_slowAlloc();
        *v420 = 0;
        _os_log_impl(&dword_0, v418, v419, "PommesResponseFlow#execute forwarding AddMedia RCHFlow", v420, 2u);
      }

      (v579)(v417, v589);
      v421 = v554;
      v422 = v582;
      sub_137A7C(v554, v582);
      v423 = v561;
      sub_2C9EA0();
      v586(v423);

      (*(v562 + 8))(v423, v563);
      v424 = v514;
      v398(v421, v514);
      v425 = v584;
LABEL_103:
      (v571)(v425, v583);
      return (v398)(v516, v424);
    }

    v401 = v589;
    (v574)(v544, v515, v589);
    v402 = sub_2CDFE0();
    v403 = sub_2CE670();
    if (os_log_type_enabled(v402, v403))
    {
      v404 = swift_slowAlloc();
      *v404 = 0;
      _os_log_impl(&dword_0, v402, v403, "PommesResponseFlow#execute failed to build addMediaIntent", v404, 2u);
    }

    (v579)(v544, v401);
    v405 = *(v336 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_commonMediaIntentCatDialogService);
    v406 = v336;
    v407 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker;
    sub_2CCFB0();
    v408 = sub_2CCF80();
    v409 = swift_allocObject();
    v410 = v587;
    *(v409 + 16) = v586;
    *(v409 + 24) = v410;
    v411 = sub_2CB4A0();

    v412 = sub_2CB490();
    v593 = v411;
    v594 = &protocol witness table for SiriKitTaskLoggingProvider;
    v592 = v412;
    sub_20410(&unk_353120, &unk_2D0B50);
    v413 = swift_allocObject();
    *(v413 + 16) = xmmword_2D0090;
    sub_2CC230();
    *(v413 + 32) = sub_2CC200();
    *(v413 + 72) = &type metadata for String;
    *(v413 + 40) = v414;
    *(v413 + 48) = 0xD00000000000001FLL;
    *(v413 + 56) = 0x80000000002DBA80;
    v415 = sub_112C0(v413);
    swift_setDeallocating();
    sub_30B8(v413 + 32, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    sub_EEAC(&v592, &v591);
    sub_EEAC(v406 + v407, &v590);
    v416 = swift_allocObject();
    strcpy((v416 + 16), "FailedAMIBuild");
    *(v416 + 31) = -18;
    sub_F338(&v591, v416 + 32);
    *(v416 + 72) = v408;
    sub_F338(&v590, v416 + 80);
    *(v416 + 120) = sub_2A9EFC;
    *(v416 + 128) = v409;

    sub_3D150(v415, v408, sub_2A9EF8, v416);

    (v571)(v584, v583);
    goto LABEL_28;
  }

  v359 = v328;
  v360 = v331;
  v361 = v581;
  v362 = v360 + v330;
  v363 = v567;
  (*(v581 + 32))(v567, v362, v332);
  sub_2A9EB0(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v364 = sub_2CE250();
  v365 = *(v361 + 8);
  v365(v363, v332);
  sub_30B8(v565, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v359, &qword_34D6B8, &qword_2D15B0);
  v365(v337, v332);
  sub_30B8(v360, &qword_34D6B8, &qword_2D15B0);
  v335 = v555;
  v336 = v513;
  if ((v364 & 1) == 0)
  {
    goto LABEL_93;
  }

LABEL_85:
  v366 = v542;
  sub_2CD6F0();
  v367 = v543;
  v368 = v541;
  v369 = v533;
  (*(v543 + 104))(v541, enum case for CommonAudio.MediaType.news(_:), v533);
  (*(v367 + 56))(v368, 0, 1, v369);
  v370 = *(v532 + 48);
  v371 = v545;
  sub_F3F4(v366, v545, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v368, v371 + v370, &qword_34D6D0, qword_2D34A0);
  v372 = *(v367 + 48);
  if (v372(v371, 1, v369) != 1)
  {
    v379 = v525;
    sub_F3F4(v371, v525, &qword_34D6D0, qword_2D34A0);
    if (v372(v371 + v370, 1, v369) != 1)
    {
      v437 = v543;
      v438 = v371 + v370;
      v439 = v518;
      (*(v543 + 32))(v518, v438, v369);
      sub_2A9EB0(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
      v440 = sub_2CE250();
      v441 = *(v437 + 8);
      v441(v439, v369);
      sub_30B8(v541, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v542, &qword_34D6D0, qword_2D34A0);
      v441(v379, v369);
      sub_30B8(v371, &qword_34D6D0, qword_2D34A0);
      v335 = v555;
      v334 = v570;
      if (v440)
      {
        goto LABEL_118;
      }

      goto LABEL_93;
    }

    sub_30B8(v541, &qword_34D6D0, qword_2D34A0);
    v373 = v545;
    sub_30B8(v542, &qword_34D6D0, qword_2D34A0);
    (*(v543 + 8))(v379, v369);
    v334 = v570;
    goto LABEL_92;
  }

  sub_30B8(v368, &qword_34D6D0, qword_2D34A0);
  v373 = v545;
  sub_30B8(v366, &qword_34D6D0, qword_2D34A0);
  v374 = v372(v373 + v370, 1, v369);
  v334 = v570;
  if (v374 != 1)
  {
LABEL_92:
    sub_30B8(v373, &qword_34D6A8, &unk_2D15A0);
    v335 = v555;
    goto LABEL_93;
  }

  sub_30B8(v373, &qword_34D6D0, qword_2D34A0);
LABEL_118:
  v442 = v522;
  (v574)(v522, v515, v589);
  v443 = sub_2CDFE0();
  v444 = sub_2CE670();
  if (os_log_type_enabled(v443, v444))
  {
    v445 = swift_slowAlloc();
    *v445 = 0;
    _os_log_impl(&dword_0, v443, v444, "PommesResponseFlow#execute Update verb and news mediaType present, forwarding SwitchPodcastNewsPreferenceFlow", v445, 2u);
  }

  (v579)(v442, v589);
  v446 = v559;
  sub_F3F4(v336 + v521, v559, &qword_34E480, &qword_2D2280);
  sub_138BA8(v446);
  sub_30B8(v446, &qword_34E480, &qword_2D2280);
  v447 = v561;
  sub_2C9EA0();
  v586(v447);

  (*(v562 + 8))(v447, v563);
  (v571)(v584, v583);
  return (*(v546 + 8))(v516, v514);
}

uint64_t sub_2A788C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v62 = a3;
  v61 = a2;
  v58 = sub_2C9EC0();
  v57 = *(v58 - 8);
  v4 = *(v57 + 64);
  __chkstk_darwin(v58);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CE000();
  v60 = *(v6 - 8);
  v7 = *(v60 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v54 - v11;
  v12 = sub_2CA870();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v3;
  v17 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_controlsFlowProvider + 32);
  sub_35E0((v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_controlsFlowProvider), *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_controlsFlowProvider + 24));
  sub_2CA790();
  v18 = sub_2CDC70();
  (*(v13 + 8))(v16, v12);
  if (v18)
  {
    if (sub_2C95C0())
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v19 = v6;
      v20 = sub_3ED0(v6, static Logger.default);
      swift_beginAccess();
      v21 = v60;
      v22 = v55;
      (*(v60 + 16))(v55, v20, v19);
      v23 = sub_2CDFE0();
      v24 = sub_2CE690();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v64[0] = v26;
        *v25 = 136446210;
        v27 = sub_2CCCC0();
        v29 = sub_3F08(v27, v28, v64);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_0, v23, v24, "PommesResponseFlow#executeFlow %{public}s Controls is able to handle the request. Returning controls flow", v25, 0xCu);
        sub_306C(v26);
      }

      (*(v21 + 8))(v22, v19);
      v30 = v56;
      sub_2C9EA0();
      v61(v30);

      return (*(v57 + 8))(v30, v58);
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v32 = v6;
  v33 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  v34 = v60;
  (*(v60 + 16))(v10, v33, v32);
  v35 = sub_2CDFE0();
  v36 = sub_2CE680();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v65[0] = v38;
    *v37 = 136446210;
    v39 = sub_2CCCC0();
    v41 = sub_3F08(v39, v40, v65);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_0, v35, v36, "PommesResponseFlow#executeFlow %{public}s Neither SiriAudio nor PlaybackControls were able to handle the request.", v37, 0xCu);
    sub_306C(v38);
  }

  (*(v34 + 8))(v10, v32);
  v42 = v59;
  v43 = *(v59 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_commonMediaIntentCatDialogService);
  v44 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker;
  sub_2CCFB0();
  v45 = sub_2CCF80();
  v46 = swift_allocObject();
  v47 = v62;
  *(v46 + 16) = v61;
  *(v46 + 24) = v47;
  v48 = sub_2CB4A0();

  v49 = sub_2CB490();
  v65[3] = v48;
  v65[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v65[0] = v49;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  sub_2CC230();
  *(inited + 32) = sub_2CC200();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v51;
  *(inited + 48) = 0xD00000000000001FLL;
  *(inited + 56) = 0x80000000002DBA80;
  v52 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  sub_EEAC(v65, v64);
  sub_EEAC(v42 + v44, v63);
  v53 = swift_allocObject();
  v53[2] = 0xD000000000000010;
  v53[3] = 0x80000000002E0FC0;
  sub_F338(v64, (v53 + 4));
  v53[9] = v45;
  sub_F338(v63, (v53 + 10));
  v53[15] = sub_2A8FD8;
  v53[16] = v46;

  sub_3D150(v52, v45, sub_2A99AC, v53);

  return sub_306C(v65);
}

uint64_t sub_2A8028(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v30 = a3;
  v31 = a2;
  v4 = sub_2C9EC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v14 = sub_3ED0(v9, static Logger.default);
    swift_beginAccess();
    (*(v10 + 16))(v13, v14, v9);
    swift_errorRetain();
    v15 = v10;
    v16 = sub_2CDFE0();
    v17 = sub_2CE670();

    v29 = v17;
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v18 = 136315138;
      swift_getErrorValue();
      v26 = v16;
      v19 = sub_2CEEF0();
      v21 = sub_3F08(v19, v20, &v32);
      v27 = v9;
      v22 = v21;

      v23 = v18;
      *(v18 + 4) = v22;
      v24 = v26;
      _os_log_impl(&dword_0, v26, v29, "PommesResponseFlow#submitAndFileGenericError Could not properly create dialog. Silently failing... error: %s", v23, 0xCu);
      sub_306C(v28);

      (*(v15 + 8))(v13, v27);
    }

    else
    {

      (*(v15 + 8))(v13, v9);
    }
  }

  sub_2C9EB0();
  v31(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2A836C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v79 = a7;
  v74 = a6;
  v75 = a2;
  v72 = a4;
  v8 = sub_2CC2B0();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = *(v77 + 64);
  __chkstk_darwin(v8);
  v76 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CA7B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = sub_20410(&qword_34E480, &qword_2D2280);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v71 - v16;
  v18 = *(v12 + 16);
  v18(&v71 - v16, a5, v11);
  v19 = *(v12 + 56);
  v80 = v17;
  v73 = v19;
  v19(v17, 0, 1, v11);
  sub_EEAC(v72, v106);
  sub_EEAC(v74, v105);
  v18(&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v11);
  v20 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v21 = swift_allocObject();
  sub_F338(v105, v21 + 16);
  (*(v12 + 32))(v21 + v20, &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v22 = v79;
  *(v21 + ((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v79;
  v23 = qword_34BFB8;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v104[3] = &type metadata for StringsBackedAppNameResolver;
  v74 = sub_2869C();
  v104[4] = v74;
  v104[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v104[0] + 16);
  sub_2C9A00();
  v25 = v78;
  v102[3] = v78;
  v102[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v102);
  sub_2CC2A0();
  v26 = sub_2CB4A0();
  v27 = sub_2CB490();
  v101 = &protocol witness table for SiriKitTaskLoggingProvider;
  v100 = v26;
  *&v99 = v27;
  v28 = type metadata accessor for SiriForAirPlayFlow();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v79 = v28;
  v31 = swift_allocObject();
  v32 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_input;
  v73(v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_input, 1, 1, v11);
  v33 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_intent;
  *(v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_intent) = 0;
  swift_beginAccess();
  sub_BED04(v80, v31 + v32);
  swift_endAccess();
  v34 = *(v31 + v33);
  v35 = v75;
  *(v31 + v33) = v75;

  sub_EEAC(v106, v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_outputPublisher);
  sub_EEAC(v102, v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_featureFlags);
  sub_EEAC(v104, v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_appNameResolver);
  sub_EEAC(v103, v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_aceService);
  v36 = (v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_nextLocalFlow);
  *v36 = sub_2A9E24;
  v36[1] = v21;
  sub_EEAC(v104, v97);
  sub_EEAC(v103, v96);
  v37 = CATDefaultMode;
  v38 = sub_2CBC00();
  v39 = v35;
  v40 = sub_2CBBF0();

  v41 = v76;
  sub_2CC2A0();
  type metadata accessor for CatService();
  v42 = swift_allocObject();
  v43 = v98;
  v44 = sub_F9A0(v97, v98);
  v75 = &v71;
  v45 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v44);
  v47 = (&v71 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47);
  v95[3] = &type metadata for StringsBackedAppNameResolver;
  v95[4] = v74;
  v49 = swift_allocObject();
  v95[0] = v49;
  v50 = v47[3];
  v49[3] = v47[2];
  v49[4] = v50;
  v49[5] = v47[4];
  v51 = v47[1];
  v49[1] = *v47;
  v49[2] = v51;
  v94[3] = v38;
  v94[4] = &protocol witness table for MorphunProvider;
  v94[0] = v40;
  v93[3] = v25;
  v93[4] = &protocol witness table for FeatureFlagProvider;
  v52 = sub_F390(v93);
  v53 = v77;
  (*(v77 + 16))(v52, v41, v25);
  *(v42 + 296) = v37;
  sub_EEAC(v93, v42 + 256);
  sub_EEAC(v95, v92);
  sub_EEAC(v94, v91);
  sub_EEAC(v96, v90);
  v89 = 0;
  memset(v88, 0, sizeof(v88));
  v54 = sub_2CCA30();
  v55 = sub_2CCA20();
  v87[3] = v54;
  v87[4] = &protocol witness table for MultiUserConnectionProvider;
  v87[0] = v55;
  v86[3] = sub_2CB9E0();
  v86[4] = &protocol witness table for DeviceProvider;
  sub_F390(v86);
  sub_2CB9C0();
  sub_EEAC(v92, v42 + 16);
  sub_EEAC(v91, v42 + 216);
  sub_EEAC(v90, v42 + 56);
  sub_EEAC(v87, v42 + 96);
  sub_EEAC(v86, v42 + 176);
  sub_F3F4(v88, &v81, qword_34C708, &qword_2D1620);
  v56 = v80;
  v57 = v25;
  v58 = v53;
  if (v82)
  {

    sub_30B8(v88, qword_34C708, &qword_2D1620);
    sub_306C(v90);
    sub_306C(v91);
    sub_306C(v92);
    (*(v53 + 8))(v41, v57);
    sub_306C(v96);
    sub_306C(v93);
    sub_306C(v94);
    sub_306C(v95);
    sub_306C(v86);
    sub_306C(v87);
    sub_F338(&v81, &v83);
  }

  else
  {
    sub_EEAC(v90, &v83);
    v59 = sub_2C9E60();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    v62 = sub_2C9E50();
    v84 = v59;
    v85 = &protocol witness table for ContactsManager;

    *&v83 = v62;
    sub_30B8(v88, qword_34C708, &qword_2D1620);
    sub_306C(v90);
    sub_306C(v91);
    sub_306C(v92);
    (*(v58 + 8))(v41, v57);
    sub_306C(v96);
    sub_306C(v93);
    sub_306C(v94);
    sub_306C(v95);
    sub_306C(v86);
    sub_306C(v87);
    if (v82)
    {
      sub_30B8(&v81, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v83, v42 + 136);
  sub_306C(v97);
  type metadata accessor for PlayMediaCatDialogService();
  v63 = swift_allocObject();
  v63[5] = 0x6964654D79616C50;
  v63[6] = 0xEF746E65746E4961;
  v63[2] = 0xD000000000000011;
  v63[3] = 0x80000000002DA8D0;
  v63[4] = v42;
  *(v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_playMediaCatDialogService) = v63;
  type metadata accessor for CommonMediaIntentCatDialogService();
  v64 = swift_allocObject();
  v64[2] = 0xD000000000000011;
  v64[3] = 0x80000000002DA8D0;
  v64[4] = v42;
  *(v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_commonMediaIntentCatDialogService) = v64;
  v65 = sub_2C9C10();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();

  v68 = sub_2C9BF0();
  sub_306C(v103);
  sub_306C(v106);
  sub_30B8(v56, &qword_34E480, &qword_2D2280);
  sub_306C(v102);
  sub_306C(v104);
  *(v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_viewFactory) = v68;
  sub_F338(&v99, v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_siriKitTaskLoggingProvider);
  v106[0] = v31;
  sub_2A9EB0(&qword_351318, type metadata accessor for SiriForAirPlayFlow);
  v69 = sub_2C97B0();

  return v69;
}

uint64_t sub_2A8D10()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_input, &qword_34E480, &qword_2D2280);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_controlsFlowProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_audioFlowProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_featureFlagProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker));
  v1 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_commonMediaIntentCatDialogService);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_publisher));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_nowPlayingProvider));
  v2 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_addFlowWithAppResolution + 8);

  return v0;
}

uint64_t sub_2A8DDC()
{
  sub_2A8D10();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PommesResponseFlow()
{
  result = qword_356AF0;
  if (!qword_356AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2A8E88()
{
  sub_B104C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2A8F9C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PommesResponseFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_2A8FE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v65 = a6;
  v66 = a3;
  v67 = a4;
  v68 = a5;
  v72 = a2;
  v74 = sub_2CC2B0();
  v71 = *(v74 - 8);
  v8 = *(v71 + 64);
  __chkstk_darwin(v74);
  v70 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CA7B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20410(&qword_34E480, &qword_2D2280);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v65 - v16;
  v100[3] = type metadata accessor for AudioFlowProvider();
  v100[4] = &off_3367A0;
  v100[0] = a6;
  v18 = *(v11 + 16);
  v18(v17, a1, v10);
  v19 = *(v11 + 56);
  v73 = v17;
  v69 = v19;
  (v19)(v17, 0, 1, v10);
  sub_EEAC(v66, v99);
  sub_EEAC(v67, v98);
  sub_EEAC(v68, v97);
  v18(v13, a1, v10);
  sub_EEAC(v100, v96);
  v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v11 + 32))(v22 + v20, v13, v10);
  sub_F338(v96, v22 + v21);
  v23 = v72;
  *(v22 + ((v21 + 47) & 0xFFFFFFFFFFFFFFF8)) = v72;
  v24 = qword_34BFB8;

  v25 = v23;
  if (v24 != -1)
  {
    swift_once();
  }

  v95[3] = &type metadata for StringsBackedAppNameResolver;
  v68 = sub_2869C();
  v95[4] = v68;
  v95[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v95[0] + 16);
  v94[3] = v74;
  v94[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v94);
  sub_2CC2A0();
  v26 = sub_2CB4A0();
  v27 = sub_2CB490();
  v93[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v93[3] = v26;
  v93[0] = v27;
  v28 = type metadata accessor for AudioAppResolutionFlow();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v72 = v28;
  v31 = swift_allocObject();
  v32 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_input;
  (v69)(v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_input, 1, 1, v10);
  v33 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_intent;
  *(v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_intent) = 0;
  swift_beginAccess();
  sub_BED04(v73, v31 + v32);
  swift_endAccess();
  v34 = *(v31 + v33);
  *(v31 + v33) = 0;

  sub_EEAC(v95, v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_appNameResolver);
  sub_EEAC(v99, v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_aceService);
  sub_EEAC(v98, v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_outputPublisher);
  v35 = (v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nextAppAcceptingFlow);
  *v35 = sub_2A9D54;
  v35[1] = v22;
  sub_EEAC(v94, v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_featureFlags);
  sub_EEAC(v97, v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nowPlayingProvider);
  sub_EEAC(v93, v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_siriKitTaskLoggingProvider);
  sub_EEAC(v95, v91);
  sub_EEAC(v99, v90);
  v36 = CATDefaultMode;
  v37 = sub_2CBC00();
  v38 = sub_2CBBF0();
  v39 = v70;
  sub_2CC2A0();
  v40 = v92;
  v41 = sub_F9A0(v91, v92);
  v69 = &v65;
  v42 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v41);
  v44 = (&v65 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  type metadata accessor for CatService();
  v46 = swift_allocObject();
  v89[3] = &type metadata for StringsBackedAppNameResolver;
  v89[4] = v68;
  v47 = swift_allocObject();
  v89[0] = v47;
  v48 = v44[3];
  v47[3] = v44[2];
  v47[4] = v48;
  v47[5] = v44[4];
  v49 = v44[1];
  v47[1] = *v44;
  v47[2] = v49;
  v88[3] = v37;
  v88[4] = &protocol witness table for MorphunProvider;
  v88[0] = v38;
  v50 = v74;
  v87[3] = v74;
  v87[4] = &protocol witness table for FeatureFlagProvider;
  v51 = sub_F390(v87);
  v52 = v71;
  (*(v71 + 16))(v51, v39, v50);
  *(v46 + 296) = v36;
  sub_EEAC(v87, v46 + 256);
  sub_EEAC(v89, v86);
  sub_EEAC(v88, v85);
  sub_EEAC(v90, v84);
  v83 = 0;
  memset(v82, 0, sizeof(v82));
  v53 = sub_2CCA30();

  v54 = sub_2CCA20();
  v81[3] = v53;
  v81[4] = &protocol witness table for MultiUserConnectionProvider;
  v81[0] = v54;
  v80[3] = sub_2CB9E0();
  v80[4] = &protocol witness table for DeviceProvider;
  sub_F390(v80);
  sub_2CB9C0();
  sub_EEAC(v86, v46 + 16);
  sub_EEAC(v85, v46 + 216);
  sub_EEAC(v84, v46 + 56);
  sub_EEAC(v81, v46 + 96);
  sub_EEAC(v80, v46 + 176);
  sub_F3F4(v82, &v75, qword_34C708, &qword_2D1620);
  v55 = v73;
  v56 = v52;
  if (v76)
  {

    sub_30B8(v82, qword_34C708, &qword_2D1620);
    sub_306C(v84);
    sub_306C(v85);
    sub_306C(v86);
    (*(v52 + 8))(v39, v50);
    sub_306C(v90);
    sub_306C(v87);
    sub_306C(v88);
    sub_306C(v89);
    sub_306C(v80);
    sub_306C(v81);
    sub_F338(&v75, &v77);
  }

  else
  {
    sub_EEAC(v84, &v77);
    v57 = sub_2C9E60();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    v60 = sub_2C9E50();
    v78 = v57;
    v79 = &protocol witness table for ContactsManager;

    *&v77 = v60;
    sub_30B8(v82, qword_34C708, &qword_2D1620);
    sub_306C(v84);
    sub_306C(v85);
    sub_306C(v86);
    (*(v56 + 8))(v39, v50);
    sub_306C(v90);
    sub_306C(v87);
    sub_306C(v88);
    sub_306C(v89);
    sub_306C(v80);
    sub_306C(v81);
    if (v76)
    {
      sub_30B8(&v75, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v77, v46 + 136);
  sub_306C(v91);
  *(v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_catService) = v46;
  type metadata accessor for CommonMediaIntentCatDialogService();
  v61 = swift_allocObject();

  sub_306C(v97);
  sub_306C(v98);
  sub_306C(v99);
  sub_30B8(v55, &qword_34E480, &qword_2D2280);
  sub_306C(v93);
  sub_306C(v94);
  sub_306C(v95);
  v61[2] = 0xD000000000000011;
  v61[3] = 0x80000000002DA8D0;
  v61[4] = v46;
  *(v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_commonMediaIntentCatDialogService) = v61;
  v62 = (v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_appResolutionFlowProducer);
  *v62 = sub_104BA4;
  v62[1] = 0;
  *(v31 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_state) = 0;
  v99[0] = v31;
  sub_2A9EB0(&qword_353898, type metadata accessor for AudioAppResolutionFlow);
  v63 = sub_2C97B0();

  sub_306C(v100);
  return v63;
}

uint64_t sub_2A99B0()
{
  v1 = v0[3];

  sub_306C(v0 + 4);
  v2 = v0[9];

  sub_306C(v0 + 10);
  v3 = v0[16];

  return _swift_deallocObject(v0, 136);
}

uint64_t sub_2A9A20()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  if (sub_423CC())
  {
    if (!sub_2CB460())
    {
      sub_2CB180();
      sub_2CB170();
    }

    sub_2CB160();

    v13 = sub_2CB370();

    if (v13)
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v14 = sub_3ED0(v0, static Logger.default);
      swift_beginAccess();
      (*(v1 + 16))(v7, v14, v0);
      v15 = sub_2CDFE0();
      v16 = sub_2CE670();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_0, v15, v16, "PommesResponseFlow#shouldHandle device is NOT offline. Cannot handle playback through .uso() online.", v17, 2u);
      }

      (*(v1 + 8))(v7, v0);
    }

    v12 = v13 ^ 1;
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v8 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v5, v8, v0);
    v9 = sub_2CDFE0();
    v10 = sub_2CE670();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "PommesResponseFlow#shouldHandle isPlaybackTask=false", v11, 2u);
    }

    (*(v1 + 8))(v5, v0);
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_2A9D54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_2CA7B0() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v4 + ((v11 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_2A836C(a1, a2, a3, a4, v4 + v10, v4 + v11, v12);
}

uint64_t sub_2A9E24()
{
  v1 = *(sub_2CA7B0() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_137A7C(v0 + v2, v3);
}

uint64_t sub_2A9EB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2A9F24(uint64_t a1)
{
  result = sub_2A9F4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2A9F4C()
{
  result = qword_3515A0;
  if (!qword_3515A0)
  {
    type metadata accessor for SearchForMedia.UnsupportedValueStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3515A0);
  }

  return result;
}

uint64_t sub_2A9FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SearchForMedia.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_2AA05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SearchForMedia.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeLaunchAppWithIntentOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_2AA118()
{
  v1 = v0;
  v2 = sub_2CD4B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34C060 != -1)
  {
    swift_once();
  }

  v15 = qword_35F950;
  if (*(qword_35F950 + 16))
  {
    v16 = sub_4F734(v1);
    if (v17)
    {
      return *(*(v15 + 56) + 8 * v16);
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v19, v10);
  v20 = v14;
  v21 = *(v3 + 16);
  v21(v9, v1, v2);
  v35 = v20;
  v22 = sub_2CDFE0();
  v23 = sub_2CE670();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v34 = v10;
    v25 = v24;
    v26 = swift_slowAlloc();
    v33 = v11;
    v27 = v26;
    v36 = v26;
    *v25 = 136315138;
    v21(v7, v9, v2);
    v28 = sub_2CE2A0();
    v30 = v29;
    (*(v3 + 8))(v9, v2);
    v31 = sub_3F08(v28, v30, &v36);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_0, v22, v23, "CommonAudio+Extension#Sort#sortOrder received unregistered decade: %s", v25, 0xCu);
    sub_306C(v27);

    (*(v33 + 8))(v35, v34);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
    (*(v11 + 8))(v35, v10);
  }

  return 0;
}

uint64_t sub_2AA4E8(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    v9 = a2;
    swift_once();
    a2 = v9;
  }

  v3 = *a2;
  if (*(*a2 + 16) && (v4 = v2, v5 = *a2, v6 = sub_4F660(v4), (v7 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v6);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2AA550()
{
  v1 = sub_20410(&qword_3545D8, qword_2D6838);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v47 - v6;
  v8 = sub_20410(&qword_356D08, &qword_2D90B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v47 - v10;
  v12 = sub_2C8ED0();
  v13 = *(v12 - 8);
  v14 = v13[8];
  __chkstk_darwin(v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20410(&qword_356D10, &qword_2D90B8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v47 - v19;
  v21 = sub_2C8CB0();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  __chkstk_darwin(v23);
  v27 = &v47 - v24;
  if (qword_34C058 != -1)
  {
    v59 = v25;
    v60 = &v47 - v24;
    v46 = v26;
    swift_once();
    v25 = v59;
    v27 = v60;
    v26 = v46;
  }

  v28 = qword_35F948;
  if (!*(qword_35F948 + 16))
  {
    return 0;
  }

  v59 = v25;
  v60 = v27;
  v58 = v26;
  v29 = sub_4F808(v0);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

  v48 = v21;
  v49 = v7;
  v50 = v5;
  v31 = *(*(v28 + 56) + 8 * v29);
  v57 = enum case for Calendar.Identifier.gregorian(_:);
  v56 = v13[13];
  v56(v16);
  sub_2C8EE0();
  v32 = v13[1];
  v54 = v13 + 1;
  v55 = v32;
  v32(v16, v12);
  v51 = sub_2C8F20();
  v33 = *(v51 - 8);
  v52 = *(v33 + 56);
  v53 = v33 + 56;
  v52(v20, 0, 1, v51);
  v34 = sub_2C8F40();
  v35 = *(*(v34 - 8) + 56);
  v35(v11, 1, 1, v34);
  sub_2C8CA0();
  (v56)(v16, v57, v12);
  sub_2C8EE0();
  v55(v16, v12);
  v52(v20, 0, 1, v51);
  result = (v35)(v11, 1, 1, v34);
  if (__OFADD__(v31, 9))
  {
    __break(1u);
  }

  else
  {
    v37 = v58;
    sub_2C8CA0();
    sub_2AB8FC();
    v38 = v59;
    v39 = *(v59 + 16);
    v40 = v48;
    v41 = v49;
    v39(v49, v60, v48);
    v42 = *(v38 + 56);
    v42(v41, 0, 1, v40);
    v43 = v50;
    v39(v50, v37, v40);
    v42(v43, 0, 1, v40);
    v44 = sub_2AAEFC(v41, v43);
    v45 = *(v38 + 8);
    v45(v37, v40);
    v45(v60, v40);
    return v44;
  }

  return result;
}

uint64_t sub_2AAB80()
{
  sub_20410(&qword_356D18, &unk_2D90C0);
  v0 = sub_20410(&qword_34E150, &qword_2D1E98);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2D9090;
  v4 = v3 + v2;
  v5 = *(v0 + 48);
  v6 = enum case for CommonAudio.Decade._1920s(_:);
  v7 = sub_2CD4D0();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = 1920;
  v9 = *(v0 + 48);
  v8(v4 + v1, enum case for CommonAudio.Decade._1930s(_:), v7);
  *(v4 + v1 + v9) = 1930;
  v10 = *(v0 + 48);
  v8(v4 + 2 * v1, enum case for CommonAudio.Decade._1940s(_:), v7);
  *(v4 + 2 * v1 + v10) = 1940;
  v11 = *(v0 + 48);
  v8(v4 + 3 * v1, enum case for CommonAudio.Decade._1950s(_:), v7);
  *(v4 + 3 * v1 + v11) = 1950;
  v12 = *(v0 + 48);
  v8(v4 + 4 * v1, enum case for CommonAudio.Decade._1960s(_:), v7);
  *(v4 + 4 * v1 + v12) = 1960;
  v13 = *(v0 + 48);
  v8(v4 + 5 * v1, enum case for CommonAudio.Decade._1970s(_:), v7);
  *(v4 + 5 * v1 + v13) = 1970;
  v14 = *(v0 + 48);
  v8(v4 + 6 * v1, enum case for CommonAudio.Decade._1980s(_:), v7);
  *(v4 + 6 * v1 + v14) = 1980;
  v15 = *(v0 + 48);
  v8(v4 + 7 * v1, enum case for CommonAudio.Decade._1990s(_:), v7);
  *(v4 + 7 * v1 + v15) = 1990;
  v16 = *(v0 + 48);
  v8(v4 + 8 * v1, enum case for CommonAudio.Decade._2000s(_:), v7);
  *(v4 + 8 * v1 + v16) = 2000;
  v17 = *(v0 + 48);
  v8(v4 + 9 * v1, enum case for CommonAudio.Decade._2010s(_:), v7);
  *(v4 + 9 * v1 + v17) = 2010;
  v18 = v4 + 10 * v1;
  v19 = *(v0 + 48);
  v8(v18, enum case for CommonAudio.Decade._2020s(_:), v7);
  *(v18 + v19) = 2020;
  v20 = sub_90444(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_35F948 = v20;
  return result;
}

id sub_2AAEFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C8CB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  isa = 0;
  if (v6(a1, 1, v4) != 1)
  {
    isa = sub_2C8C50().super.isa;
    (*(v5 + 8))(a1, v4);
  }

  if (v6(a2, 1, v4) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_2C8C50().super.isa;
    (*(v5 + 8))(a2, v4);
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStartDateComponents:isa endDateComponents:v8];

  return v9;
}

uint64_t sub_2AB054()
{
  sub_20410(&qword_356D00, &qword_2D90A8);
  v0 = sub_20410(&qword_34E140, &qword_2D1E88);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2D5FC0;
  v3 = v19 + v2;
  v4 = *(v0 + 48);
  v5 = enum case for CommonAudio.Sort.popular(_:);
  v6 = sub_2CD4B0();
  v7 = *(*(v6 - 8) + 104);
  v7(v3, v5, v6);
  *(v3 + v4) = 5;
  v8 = *(v0 + 48);
  v7(v3 + v1, enum case for CommonAudio.Sort.unpopular(_:), v6);
  *(v3 + v1 + v8) = 6;
  v9 = *(v0 + 48);
  v7(v3 + 2 * v1, enum case for CommonAudio.Sort.worst(_:), v6);
  *(v3 + 2 * v1 + v9) = 4;
  v10 = *(v0 + 48);
  v7(v3 + 3 * v1, enum case for CommonAudio.Sort.newest(_:), v6);
  *(v3 + 3 * v1 + v10) = 1;
  v11 = *(v0 + 48);
  v7(v3 + 4 * v1, enum case for CommonAudio.Sort.oldest(_:), v6);
  *(v3 + 4 * v1 + v11) = 2;
  v12 = *(v0 + 48);
  v7(v3 + 5 * v1, enum case for CommonAudio.Sort.hottest(_:), v6);
  *(v3 + 5 * v1 + v12) = 7;
  v13 = *(v0 + 48);
  v7(v3 + 6 * v1, enum case for CommonAudio.Sort.greatest(_:), v6);
  *(v3 + 6 * v1 + v13) = 3;
  v14 = 8 * v1;
  v15 = *(v0 + 48);
  v7(v3 + 7 * v1, enum case for CommonAudio.Sort.best(_:), v6);
  *(v3 + v14 - v1 + v15) = 3;
  v16 = *(v0 + 48);
  v7(v3 + 8 * v1, enum case for CommonAudio.Sort.mediocre(_:), v6);
  *(v3 + v14 + v16) = 0;
  v17 = sub_9025C(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_35F950 = v17;
  return result;
}

uint64_t sub_2AB370()
{
  sub_20410(&qword_356CF8, &qword_2D90A0);
  v0 = sub_20410(&qword_34E130, &qword_2D1E78);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2D1060;
  v3 = v21 + v2;
  v4 = *(v0 + 48);
  v5 = enum case for CommonAudio.MediaType.album(_:);
  v6 = sub_2CD540();
  v7 = *(*(v6 - 8) + 104);
  v7(v3, v5, v6);
  *(v3 + v4) = 2;
  v8 = *(v0 + 48);
  v7(v3 + v1, enum case for CommonAudio.MediaType.artist(_:), v6);
  *(v3 + v1 + v8) = 3;
  v9 = *(v0 + 48);
  v7(v3 + 2 * v1, enum case for CommonAudio.MediaType.song(_:), v6);
  *(v3 + 2 * v1 + v9) = 1;
  v10 = *(v0 + 48);
  v7(v3 + 3 * v1, enum case for CommonAudio.MediaType.audioBook(_:), v6);
  *(v3 + 3 * v1 + v10) = 10;
  v11 = *(v0 + 48);
  v7(v3 + 4 * v1, enum case for CommonAudio.MediaType.genre(_:), v6);
  *(v3 + 4 * v1 + v11) = 4;
  v12 = *(v0 + 48);
  v7(v3 + 5 * v1, enum case for CommonAudio.MediaType.playlist(_:), v6);
  *(v3 + 5 * v1 + v12) = 5;
  v13 = *(v0 + 48);
  v7(v3 + 6 * v1, enum case for CommonAudio.MediaType.musicPlaylist(_:), v6);
  *(v3 + 6 * v1 + v13) = 5;
  v14 = *(v0 + 48);
  v7(v3 + 7 * v1, enum case for CommonAudio.MediaType.podcast(_:), v6);
  *(v3 + 7 * v1 + v14) = 6;
  v15 = *(v0 + 48);
  v7(v3 + 8 * v1, enum case for CommonAudio.MediaType.video(_:), v6);
  *(v3 + 8 * v1 + v15) = 14;
  v16 = *(v0 + 48);
  v7(v3 + 9 * v1, enum case for CommonAudio.MediaType.musicVideo(_:), v6);
  *(v3 + 9 * v1 + v16) = 14;
  v17 = *(v0 + 48);
  v7(v3 + 10 * v1, enum case for CommonAudio.MediaType.music(_:), v6);
  *(v3 + 10 * v1 + v17) = 18;
  v18 = *(v0 + 48);
  v7(v3 + 11 * v1, enum case for CommonAudio.MediaType.news(_:), v6);
  *(v3 + 11 * v1 + v18) = 20;
  v19 = sub_90074(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_35F958 = v19;
  return result;
}

uint64_t sub_2AB720()
{
  sub_20410(&qword_356CF8, &qword_2D90A0);
  v0 = sub_20410(&qword_34E130, &qword_2D1E78);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = 2 * v1;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2D10E0;
  v5 = v4 + v2;
  v6 = *(v0 + 48);
  v7 = enum case for CommonAudio.MediaType.radioStation(_:);
  v8 = sub_2CD540();
  v9 = *(*(v8 - 8) + 104);
  v9(v5, v7, v8);
  *(v5 + v6) = 16;
  v10 = v5 + v1;
  v11 = *(v0 + 48);
  v9(v10, enum case for CommonAudio.MediaType.podcastStation(_:), v8);
  *(v10 + v11) = 15;
  v12 = *(v0 + 48);
  v9(v5 + v3, enum case for CommonAudio.MediaType.station(_:), v8);
  *(v5 + v3 + v12) = 17;
  v13 = sub_90074(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_35F960 = v13;
  return result;
}

unint64_t sub_2AB8FC()
{
  result = qword_34D720;
  if (!qword_34D720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34D720);
  }

  return result;
}

uint64_t sub_2AB948(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 40); ; i += 2)
    {
      v6 = *i;
      v7[0] = *(i - 1);
      v7[1] = v6;

      sub_2AF15C(v7, a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_2AB9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t sub_2ABA10()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_2ABA68()
{
  sub_20410(&qword_354B98, &unk_2D7080);
  v0 = sub_2CB900();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2D10E0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for PlaybackItem.Scheme.album(_:), v0);
  v6(v5 + v2, enum case for PlaybackItem.Scheme.playlist(_:), v0);
  result = (v6)(v5 + 2 * v2, enum case for PlaybackItem.Scheme.song(_:), v0);
  qword_35F968 = v4;
  return result;
}

int64_t sub_2ABBA8(void (*a1)(char *, uint64_t), unint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v159 = a5;
  v158 = a4;
  v174 = a3;
  v175 = a1;
  v8 = *v5;
  v9 = sub_20410(&qword_3519E8, &qword_2D49F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v170 = &v138 - v11;
  v12 = sub_2CDFD0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v145 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_2CE150();
  v164 = *(v165 - 8);
  v16 = *(v164 + 64);
  __chkstk_darwin(v165);
  v161 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_2CE180();
  v162 = *(v163 - 8);
  v18 = *(v162 + 64);
  __chkstk_darwin(v163);
  v160 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_2C8E80();
  v150 = *(v148 - 8);
  v20 = *(v150 + 64);
  __chkstk_darwin(v148);
  v149 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v169 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v147 = &v138 - v28;
  __chkstk_darwin(v27);
  p_aBlock = &v138 - v29;
  if (qword_34BF58 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v31 = sub_3ED0(v22, static Logger.default);
    swift_beginAccess();
    v32 = *(v23 + 16);
    v157 = v31;
    v156 = (v23 + 16);
    v155 = v32;
    v32(p_aBlock, v31, v22);
    v33 = sub_2CDFE0();
    v34 = sub_2CE670();
    if (os_log_type_enabled(v33, v34))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v33, v34, "PlayMediaAlternativesViewProvider building alternatives section...", v6, 2u);
    }

    v36 = *(v23 + 8);
    v23 += 8;
    v35 = v36;
    v36(p_aBlock, v22);
    v37 = a2 >> 62;
    v146 = v13;
    if (a2 >> 62)
    {
      break;
    }

    v38 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v13 = v38 != 0;
    if (v38 < v13)
    {
      goto LABEL_144;
    }

LABEL_6:
    v152 = v35;
    v171 = a2 & 0xC000000000000001;
    if ((a2 & 0xC000000000000001) != 0 && v38 > 1)
    {
      v6 = v38;
      p_aBlock = sub_334A0(0, &qword_356F50, INMediaItem_ptr);

      v39 = v13;
      do
      {
        v40 = v39 + 1;
        sub_2CECC0(v39);
        v39 = v40;
      }

      while (v6 != v40);
    }

    else
    {
      v6 = v38;
    }

    v172 = a2;
    v173 = v6;
    v144 = v8;
    v143 = v12;
    v154 = v22;
    v153 = v23;
    if (v37)
    {

      a2 = sub_2CEDB0();
      v22 = v41;
      v13 = v42;
      v8 = v43 >> 1;
    }

    else
    {
      a2 &= 0xFFFFFFFFFFFFFF8uLL;
      v22 = a2 + 32;
      v8 = v173;
    }

    v37 = _swiftEmptyArrayStorage;
    aBlock = _swiftEmptyArrayStorage;
    swift_unknownObjectRetain();
    v44 = v13;
LABEL_16:
    v45 = v44;
    while (v8 != v45)
    {
      if (v44 < v13 || v45 >= v8)
      {
        __break(1u);
        goto LABEL_129;
      }

      v12 = v45 + 1;
      v6 = *(v22 + 8 * v45);
      p_aBlock = v176;
      v23 = sub_2AF260(v175, v6, v174);

      v45 = v12;
      if (v23)
      {
        p_aBlock = &aBlock;
        sub_2CE3F0();
        if (*(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v46 = *(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8));
          sub_2CE430();
        }

        sub_2CE460();
        v37 = aBlock;
        v44 = v12;
        goto LABEL_16;
      }
    }

    swift_unknownObjectRelease_n();
    v6 = v37 >> 62;
    if (v37 >> 62)
    {
      goto LABEL_145;
    }

    result = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
    if (result >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
    }

    if (result < v22)
    {
LABEL_160:
      __break(1u);
      return result;
    }

LABEL_29:
    if ((v37 & 0xC000000000000001) != 0 && v22)
    {
      type metadata accessor for PlayMediaAlternativesViewProvider.AlternativeItem();

      sub_2CECC0(0);
      if (v22 != 1)
      {
        sub_2CECC0(1);
        if (v22 != 2)
        {
          sub_2CECC0(2);
          if (v22 != 3)
          {
            sub_2CECC0(3);
          }
        }
      }
    }

    else
    {
    }

    if (v6)
    {
      v12 = sub_2CEDB0();
      v48 = v49;
      v23 = v50;
      v52 = v51;

      v22 = v52 >> 1;
    }

    else
    {
      v23 = 0;
      v12 = v37 & 0xFFFFFFFFFFFFFF8;
      v48 = (v37 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v13 = v22 - v23;
    if (__OFSUB__(v22, v23))
    {
      goto LABEL_147;
    }

    if (v13 <= 0)
    {
      v85 = v169;
      v86 = v154;
      v155(v169, v157, v154);
      v87 = sub_2CDFE0();
      v88 = sub_2CE690();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_0, v87, v88, "PlayMediaAlternativesViewProvider no valid alternative item.", v89, 2u);
      }

      v152(v85, v86);
      v90 = sub_2CBA10();
      v91 = swift_allocObject();
      v91[2] = 0;
      v91[3] = 0;
      v92 = v175;
      v91[4] = v176;
      v91[5] = v92;
      v91[6] = v13;
      v91[7] = _swiftEmptyArrayStorage;
      v182 = sub_2B3F58;
      v183 = v91;
      aBlock = _NSConcreteStackBlock;
      v179 = 1107296256;
      v180 = sub_A4294;
      v181 = &unk_33E058;
      v93 = _Block_copy(&aBlock);

      v94 = v160;
      sub_2CE160();
      v177 = _swiftEmptyArrayStorage;
      sub_10101C();
      sub_20410(&qword_34DD48, &qword_2D5F80);
      sub_7DDE8();
      v95 = v161;
      v96 = v165;
      sub_2CEC10();
      sub_2CE9C0();
      _Block_release(v93);

      (*(v164 + 8))(v95, v96);
      (*(v162 + 8))(v94, v163);

      v97 = sub_20410(&qword_3519F0, &qword_2D49F8);
      v98 = v170;
      (*(*(v97 - 8) + 56))(v170, 1, 1, v97);
      v158(v98);
      swift_unknownObjectRelease();
      return sub_30B8(v98, &qword_3519E8, &qword_2D49F0);
    }

    p_aBlock = sub_2CCC10();
    swift_unknownObjectRetain();
    v170 = sub_2CCC00();
    v53 = _swiftEmptyArrayStorage;
    v54 = v23;
    v167 = v22 - v23;
LABEL_42:
    v55 = v54;
    while (v22 != v55)
    {
      if (v54 < v23 || v55 >= v22)
      {
        goto LABEL_131;
      }

      v6 = v55 + 1;
      v56 = *(v48 + 8 * v55);
      a2 = *(v56 + 56);
      ++v55;
      if (a2)
      {
        v8 = *(v56 + 48);
        v57 = *(v56 + 56);

        p_aBlock = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_B90C4(0, *(v53 + 2) + 1, 1, v53);
        }

        v59 = *(v53 + 2);
        v58 = *(v53 + 3);
        if (v59 >= v58 >> 1)
        {
          v53 = sub_B90C4((v58 > 1), v59 + 1, 1, v53);
        }

        *(v53 + 2) = v59 + 1;
        v60 = &v53[16 * v59];
        *(v60 + 4) = v8;
        *(v60 + 5) = a2;
        v54 = v6;
        v12 = p_aBlock;
        v13 = v167;
        goto LABEL_42;
      }
    }

    v140 = v12;
    swift_unknownObjectRelease();
    sub_2CCBD0();

    v12 = _swiftEmptyArrayStorage;
    aBlock = _swiftEmptyArrayStorage;
    p_aBlock = &aBlock;
    sub_2CED20();
    if (v22 <= v23)
    {
      v13 = v23;
    }

    else
    {
      v13 = v22;
    }

    v8 = v13 - v23;
    a2 = v23;
    while (v13 != a2)
    {
      v61 = *(*(v48 + 8 * a2) + 16);
      p_aBlock = &aBlock;
      sub_2CED00();
      v6 = *(aBlock + 16);
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      if (v22 == ++a2)
      {
        v151 = aBlock;
        aBlock = _swiftEmptyArrayStorage;
        sub_2CED20();
        a2 = v23;
        while (v13 != a2)
        {
          v62 = *(*(v48 + 8 * a2) + 24);
          swift_unknownObjectRetain();
          p_aBlock = &aBlock;
          sub_2CED00();
          v6 = *(aBlock + 16);
          sub_2CED30();
          sub_2CED40();
          sub_2CED10();
          if (v22 == ++a2)
          {
            v139 = aBlock;
            v13 = _swiftEmptyArrayStorage;
            v63 = v23;
LABEL_62:
            v64 = v63;
            while (v22 != v64)
            {
              if (v63 < v23 || v64 >= v22)
              {
                goto LABEL_132;
              }

              v65 = v64 + 1;
              v66 = *(v48 + 8 * v64);
              p_aBlock = *(v66 + 40);
              ++v64;
              if (p_aBlock)
              {
                v6 = *(v66 + 32);
                v67 = *(v66 + 40);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v13 = sub_B90C4(0, *(v13 + 16) + 1, 1, v13);
                }

                a2 = *(v13 + 16);
                v68 = *(v13 + 24);
                v69 = v13;
                if (a2 >= v68 >> 1)
                {
                  v69 = sub_B90C4((v68 > 1), a2 + 1, 1, v13);
                }

                *(v69 + 2) = a2 + 1;
                v13 = v69;
                v70 = &v69[16 * a2];
                *(v70 + 4) = v6;
                *(v70 + 5) = p_aBlock;
                v63 = v65;
                goto LABEL_62;
              }
            }

            v71 = *(v13 + 16);
            if (!v71)
            {
              v166 = _swiftEmptyArrayStorage;
LABEL_99:

              aBlock = _swiftEmptyArrayStorage;
              p_aBlock = &aBlock;
              a2 = v167;
              sub_2DC1C(0, v167, 0);
              v6 = aBlock;
              v13 = v48 + 8 * v23;
              v22 = v150;
              v23 = v149;
              while (v8)
              {
                v99 = *(*v13 + 64);
                aBlock = v6;
                v12 = *(v6 + 16);
                p_aBlock = *(v6 + 24);

                if (v12 >= p_aBlock >> 1)
                {
                  v100 = p_aBlock > 1;
                  p_aBlock = &aBlock;
                  sub_2DC1C(v100, v12 + 1, 1);
                  v6 = aBlock;
                }

                *(v6 + 16) = v12 + 1;
                *(v6 + 8 * v12 + 32) = v99;
                --v8;
                v13 += 8;
                if (!--a2)
                {
                  v101 = [objc_allocWithZone(SFCard) init];
                  sub_2C8E70();
                  sub_2C8E50();
                  v13 = *(v22 + 8);
                  a2 = v148;
                  (v13)(v23, v148);
                  v102 = sub_2CE260();

                  v37 = v101;
                  [v101 setCardId:v102];

                  v8 = v151 >> 62;
                  if (v151 >> 62)
                  {
                    goto LABEL_148;
                  }

                  sub_2CEEB0();
                  sub_334A0(0, &unk_351910, SFCardSection_ptr);
                  goto LABEL_106;
                }
              }

              goto LABEL_133;
            }

            v72 = 0;
            v169 = (v172 & 0xFFFFFFFFFFFFFF8);
            v142 = v13 + 40;
            v168 = v71;
            v141 = v71 - 1;
            v166 = _swiftEmptyArrayStorage;
            v170 = v13;
LABEL_74:
            v12 = v142 + 16 * v72;
            v73 = v72;
            while (v73 < *(v13 + 16))
            {
              a2 = *(v12 - 8);
              v22 = *v12;
              if (!v173)
              {
                v81 = *v12;

LABEL_89:
                p_aBlock = v166;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                aBlock = p_aBlock;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_2DBFC(0, *(p_aBlock + 16) + 1, 1);
                  p_aBlock = aBlock;
                }

                v6 = *(p_aBlock + 16);
                v83 = *(p_aBlock + 24);
                if (v6 >= v83 >> 1)
                {
                  sub_2DBFC((v83 > 1), v6 + 1, 1);
                  p_aBlock = aBlock;
                }

                v72 = v73 + 1;
                *(p_aBlock + 16) = v6 + 1;
                v166 = p_aBlock;
                v84 = p_aBlock + 16 * v6;
                *(v84 + 32) = a2;
                *(v84 + 40) = v22;
                v13 = v170;
                if (v141 != v73)
                {
                  goto LABEL_74;
                }

                goto LABEL_99;
              }

              if (v171)
              {
                v80 = *v12;

                v76 = sub_2CECD0();
              }

              else
              {
                if (!*(v169 + 2))
                {
                  goto LABEL_135;
                }

                v74 = *(v172 + 32);
                v75 = *v12;

                v76 = v74;
              }

              v77 = v76;
              v6 = [v76 artist];

              if (!v6)
              {
                goto LABEL_89;
              }

              v78 = sub_2CE270();
              p_aBlock = v79;

              if (a2 == v78 && v22 == p_aBlock)
              {

                v13 = v170;
              }

              else
              {
                v6 = sub_2CEEA0();

                v13 = v170;
                if ((v6 & 1) == 0)
                {
                  goto LABEL_89;
                }

                p_aBlock = v22;
              }

              ++v73;

              v12 += 16;
              if (v168 == v73)
              {
                goto LABEL_99;
              }
            }

            goto LABEL_134;
          }
        }

        goto LABEL_130;
      }
    }

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
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    p_aBlock = a2;
  }

  else
  {
    p_aBlock = a2 & 0xFFFFFFFFFFFFFF8;
  }

  v135 = sub_2CEDA0();
  if (v135 < 0)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    v38 = v6;
    goto LABEL_6;
  }

  v13 = v135 != 0;
  v6 = v135;
  if (sub_2CEDA0() >= v13)
  {
    if (sub_2CEDA0() >= v6)
    {
      goto LABEL_152;
    }

    __break(1u);
  }

LABEL_144:
  __break(1u);
LABEL_145:
  v136 = sub_2CEDA0();
  if ((sub_2CEDA0() & 0x8000000000000000) == 0)
  {
    if (v136 >= 4)
    {
      v137 = 4;
    }

    else
    {
      v137 = v136;
    }

    if (v136 >= 0)
    {
      v22 = v137;
    }

    else
    {
      v22 = 4;
    }

    result = sub_2CEDA0();
    if (result < v22)
    {
      goto LABEL_160;
    }

    goto LABEL_29;
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  sub_334A0(0, &unk_351910, SFCardSection_ptr);

  sub_2CED90();

LABEL_106:
  sub_334A0(0, &unk_351910, SFCardSection_ptr);
  isa = sub_2CE400().super.isa;

  v12 = v37;
  [v37 setCardSections:isa];

  v35 = [objc_allocWithZone(SFDetailedRowCardSection) init];
  sub_2C8E70();
  sub_2C8E50();
  (v13)(v23, a2);
  v104 = sub_2CE260();

  [v35 setCardSectionId:v104];

  [v35 setNextCard:v37];
  v105 = [v35 cardSectionId];

  if (v105)
  {
    v106 = sub_2CE270();
    v108 = v107;
  }

  else
  {
    v106 = 0;
    v108 = 0;
  }

  v37 = sub_2CBA10();
  v109 = swift_allocObject();
  v109[2] = v106;
  v109[3] = v108;
  v110 = v175;
  v109[4] = v176;
  v109[5] = v110;
  v109[6] = v167;
  v109[7] = v6;
  v182 = sub_2B4084;
  v183 = v109;
  aBlock = _NSConcreteStackBlock;
  v179 = 1107296256;
  v180 = sub_A4294;
  v181 = &unk_33E0A8;
  v111 = _Block_copy(&aBlock);

  v112 = v160;
  sub_2CE160();
  v177 = _swiftEmptyArrayStorage;
  v13 = sub_10101C();
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  v23 = v161;
  v113 = v165;
  sub_2CEC10();
  p_aBlock = v37;
  sub_2CE9C0();
  _Block_release(v111);

  (*(v164 + 8))(v23, v113);
  (*(v162 + 8))(v112, v163);

  v22 = v151;
  if (v8)
  {
    v114 = sub_2CEDA0();
  }

  else
  {
    v114 = *(&dword_10 + (v151 & 0xFFFFFFFFFFFFFF8));
  }

  a2 = v147;
  v8 = v154;
  v6 = &selRef_hasTwoOrMoreRooms;
  if (!v114)
  {
    goto LABEL_120;
  }

  if ((v22 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
    {
      v115 = *(v22 + 32);
      goto LABEL_116;
    }

    __break(1u);
    goto LABEL_151;
  }

  v115 = sub_2CECD0();
LABEL_116:
  v116 = v115;
  v117 = [v115 thumbnail];

  if (v117)
  {
    [v117 copy];

    sub_2CEC00();
    swift_unknownObjectRelease();
    sub_334A0(0, &qword_356F58, SFImage_ptr);
    if (swift_dynamicCast())
    {
      v118 = v177;
    }

    else
    {
      v118 = 0;
    }
  }

  else
  {
LABEL_120:
    v118 = 0;
  }

  [v35 setThumbnail:v118];

  v119 = [v35 thumbnail];
  if (v119)
  {
    v120 = v119;
    [v119 setSize:{29.0, 29.0}];
  }

  v121 = swift_allocObject();
  *(v121 + 16) = 0;
  *(v121 + 24) = 0xE000000000000000;
  v155(a2, v157, v8);
  v122 = sub_2CDFE0();
  v123 = sub_2CE670();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    *v124 = 0;
    _os_log_impl(&dword_0, v122, v123, "PlayMediaAlternativesViewProvider#makeAlternativesCardSectionAndCommands evaluating alternatives title...", v124, 2u);
  }

  v152(a2, v8);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v125 = qword_35F760;
  v126 = v145;
  sub_2CDFB0();
  sub_2CE9E0();
  sub_2CDF90();
  v127 = v176;
  sub_2AD430(v121, v176, v35);
  sub_2CE9D0();
  sub_2CDFA0();
  (*(v146 + 8))(v126, v143);
  v128 = swift_allocObject();
  v128[2] = v35;
  v129 = v158;
  v128[3] = v172;
  v128[4] = v129;
  v130 = v139;
  v128[5] = v159;
  v128[6] = v130;
  v132 = v174;
  v131 = v175;
  v128[7] = v127;
  v128[8] = v131;
  v128[9] = v132;
  v128[10] = v121;
  v128[11] = v22;

  v133 = v35;

  v134 = v132;
  sub_2AE578(v166, sub_2B3FD4, v128);
  swift_unknownObjectRelease();
}