double sub_1BB4()
{
  v1 = v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule17AudioSettingsView_controlSize;
  swift_beginAccess();
  return *v1;
}

void sub_1C44()
{
  v1 = v0;
  if (qword_35250 != -1)
  {
    swift_once();
  }

  v2 = sub_1F4F4();
  sub_20E4(v2, qword_35258);
  v3 = sub_1F4D4();
  v4 = sub_1F634();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v37 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_211C(0xD000000000000018, 0x8000000000023A80, &v37);
    _os_log_impl(&dword_0, v3, v4, "%s", v5, 0xCu);
    sub_2350(v6);
  }

  v7 = (*&stru_108.segname[(swift_isaMask & *v1) + 16])();
  if (v7)
  {
    v8 = v7;
    v9 = v1;
    v10 = sub_1F4D4();
    v11 = sub_1F634();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v41 = v13;
      *v12 = 136315138;
      [*(v9 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_containerView) frame];
      v37 = v14;
      v38 = v15;
      v39 = v16;
      v40 = v17;
      type metadata accessor for CGRect(0);
      v18 = sub_1F594();
      v20 = sub_211C(v18, v19, &v41);

      *(v12 + 4) = v20;
      _os_log_impl(&dword_0, v10, v11, "container view frame=%s", v12, 0xCu);
      sub_2350(v13);
    }

    v21 = v8;
    v22 = sub_1F4D4();
    v23 = sub_1F634();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = 136315138;
      [v21 bounds];
      v37 = v26;
      v38 = v27;
      v39 = v28;
      v40 = v29;
      type metadata accessor for CGRect(0);
      v30 = sub_1F594();
      v32 = sub_211C(v30, v31, &v41);

      *(v24 + 4) = v32;
      _os_log_impl(&dword_0, v22, v23, "previewview bounds=%s", v24, 0xCu);
      sub_2350(v25);
    }

    else
    {
    }
  }

  else
  {
    oslog = sub_1F4D4();
    v33 = sub_1F644();
    if (os_log_type_enabled(oslog, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_211C(0xD000000000000018, 0x8000000000023A80, &v37);
      _os_log_impl(&dword_0, oslog, v33, "%s failed to unwrap waveform preview", v34, 0xCu);
      sub_2350(v35);
    }

    else
    {
    }
  }
}

uint64_t sub_20E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_211C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2244(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2350(v11);
  return v7;
}

uint64_t sub_21E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2244(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_17BB8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1F894();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2350(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *sub_239C()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_previewView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23FC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_2448()
{
  i = v0;
  if (qword_35250 != -1)
  {
LABEL_37:
    swift_once();
  }

  v2 = sub_1F4F4();
  v3 = sub_20E4(v2, qword_35258);
  v4 = sub_1F4D4();
  v5 = sub_1F634();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v96[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_211C(0xD000000000000014, 0x8000000000023A60, v96);
    _os_log_impl(&dword_0, v4, v5, "%s", v6, 0xCu);
    sub_2350(v7);
  }

  v8 = *(&stru_248.size + (swift_isaMask & *i));
  v9 = ((swift_isaMask & *i) + 624);
  v10 = v8();
  v11 = [v10 displayName];

  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = sub_1F584();
  v14 = v13;

  v15 = v8();
  v16 = [v15 supportedModes];

  if (!v16)
  {

LABEL_18:
    v95 = sub_1F4D4();
    v55 = sub_1F634();
    if (os_log_type_enabled(v95, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v96[0] = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_211C(0xD000000000000014, 0x8000000000023A60, v96);
      _os_log_impl(&dword_0, v95, v55, "%s Unable to unwrap AudioEffectsManager properties", v56, 0xCu);
      sub_2350(v57);
    }

    else
    {
      v58 = v95;
    }

    return;
  }

  v84 = v12;
  v89 = v14;
  v90 = v3;
  v83[5] = sub_19F68(0, &qword_34D30);
  v17 = sub_1F5E4();

  v18 = *(i + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_autoButton);
  v19 = [v18 setHidden:0];
  v93 = v8;
  v95 = v9;
  v20 = (v8)(v19);
  v21 = [v20 automaticMicModeEnabled];

  [v18 setSelected:v21];
  LOBYTE(v20) = [v18 isSelected];
  LOBYTE(v21) = sub_D3CC();
  v22 = sub_D7F8();
  v91 = v18;
  sub_1DC08(v20, v21 & 1, v22 & 1);
  sub_184C0(&qword_34CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22300;
  v24 = *(i + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_standardButton);
  *(inited + 32) = v24;
  v88 = inited + 32;
  v25 = *(i + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_voiceIsolationButton);
  *(inited + 40) = v25;
  v94 = i;
  v26 = *(i + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_wideSpectrumButton);
  *(inited + 48) = v26;
  v92 = inited & 0xC000000000000001;
  v85 = v24;
  v86 = v25;
  v87 = v26;
  for (i = 0; i != 3; ++i)
  {
    if (v92)
    {
      v30 = sub_1F874();
    }

    else
    {
      if (i >= *(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_37;
      }

      v30 = *(inited + 8 * i + 32);
    }

    v31 = v30;
    [v30 tag];
    isa = sub_1F624().super.super.isa;
    v96[0] = isa;
    __chkstk_darwin();
    v83[2] = v96;
    v33 = v17;
    v34 = sub_30E8(sub_187D0, v83, v17);

    v35 = v93();
    v36 = [v35 currentMicMode];

    if (v36 == [v31 tag])
    {
      [v31 setSelected:1];
      v27 = [v91 isSelected];
      v28 = v34 & 1;
      v29 = 1;
    }

    else
    {
      [v31 setSelected:0];
      v27 = sub_D3CC() & 1;
      v28 = v34 & 1;
      v29 = 0;
    }

    sub_1DC08(v29, v27, v28);

    v17 = v33;
  }

  swift_setDeallocating();
  v37 = swift_arrayDestroy();
  v39 = v93;
  v38 = v94;
  v40 = (v93)(v37);
  v41 = [v40 currentMicMode];

  (*(&stru_338.reserved2 + (swift_isaMask & *v38)))(v41);
  v42 = v38;
  v43 = v89;

  v44 = sub_1F4D4();
  v45 = sub_1F634();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v96[0] = swift_slowAlloc();
    *v46 = 136315906;
    *(v46 + 4) = sub_211C(0xD000000000000014, 0x8000000000023A60, v96);
    *(v46 + 12) = 2080;
    v47 = sub_211C(v84, v43, v96);

    *(v46 + 14) = v47;
    *(v46 + 22) = 2080;
    v48 = sub_1F5F4();
    v50 = v49;

    v51 = sub_211C(v48, v50, v96);

    *(v46 + 24) = v51;
    *(v46 + 32) = 2048;
    v53 = (v39)(v52);
    v54 = [v53 currentMicMode];

    *(v46 + 34) = v54;
    _os_log_impl(&dword_0, v44, v45, "%s displayName=%s, supportedModes=%s, currentMicMode=%ld", v46, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v59 = v42;
  v60 = sub_1F4D4();
  v61 = sub_1F634();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v96[0] = v63;
    *v62 = 136315650;
    *(v62 + 4) = sub_211C(0xD000000000000014, 0x8000000000023A60, v96);
    *(v62 + 12) = 1024;
    v64 = v85;
    *(v62 + 14) = [v85 isEnabled];
    *(v62 + 18) = 1024;
    *(v62 + 20) = [v64 isSelected];

    _os_log_impl(&dword_0, v60, v61, "%s Standard isEnabled=%{BOOL}d isSelected=%{BOOL}d", v62, 0x18u);
    sub_2350(v63);
  }

  else
  {
  }

  v65 = v59;
  v66 = sub_1F4D4();
  v67 = sub_1F634();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v96[0] = v69;
    *v68 = 136315650;
    *(v68 + 4) = sub_211C(0xD000000000000014, 0x8000000000023A60, v96);
    *(v68 + 12) = 1024;
    v70 = v86;
    *(v68 + 14) = [v86 isEnabled];
    *(v68 + 18) = 1024;
    *(v68 + 20) = [v70 isSelected];

    _os_log_impl(&dword_0, v66, v67, "%s Voice Isolation isEnabled=%{BOOL}d isSelected=%{BOOL}d", v68, 0x18u);
    sub_2350(v69);
  }

  else
  {
  }

  v71 = v65;
  v72 = sub_1F4D4();
  v73 = sub_1F634();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v96[0] = v75;
    *v74 = 136315650;
    *(v74 + 4) = sub_211C(0xD000000000000014, 0x8000000000023A60, v96);
    *(v74 + 12) = 1024;
    v76 = v87;
    *(v74 + 14) = [v87 isEnabled];
    *(v74 + 18) = 1024;
    *(v74 + 20) = [v76 isSelected];

    _os_log_impl(&dword_0, v72, v73, "%s Wide Spectrum isEnabled=%{BOOL}d isSelected=%{BOOL}d", v74, 0x18u);
    sub_2350(v75);
  }

  else
  {
  }

  v77 = v71;
  v78 = sub_1F4D4();
  v79 = sub_1F634();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v96[0] = v81;
    *v80 = 136315650;
    *(v80 + 4) = sub_211C(0xD000000000000014, 0x8000000000023A60, v96);
    *(v80 + 12) = 1024;
    v82 = v91;
    *(v80 + 14) = [v91 isEnabled];
    *(v80 + 18) = 1024;
    *(v80 + 20) = [v82 isSelected];

    _os_log_impl(&dword_0, v78, v79, "%s Auto Mic Mode isEnabled=%{BOOL}d isSelected=%{BOOL}d", v80, 0x18u);
    sub_2350(v81);
  }

  else
  {
  }
}

uint64_t sub_30E8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_1F874();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1F8F4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

id sub_3210()
{
  v1 = v0;
  v2 = &swift_isaMask;
  v3 = *&stru_108.segname[(swift_isaMask & *v0) - 8];
  if ((v3() & 1) == 0 || (v107 = *&stru_1F8.segname[(swift_isaMask & *v0) + 16], v4 = v107(), v5 = [v4 superview], v4, !v5))
  {
    v57 = (*&stru_1F8.segname[(swift_isaMask & *v1) + 16])();
    v58 = [v57 superview];

    if (v58)
    {

      v47 = 0xE300000000000000;
      v48 = 5457241;
    }

    else
    {
      v47 = 0xE200000000000000;
      v48 = 20302;
    }

    if (qword_35250 != -1)
    {
      goto LABEL_52;
    }

    goto LABEL_34;
  }

  v6 = 0.0;
  if ((v3() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_35270 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v6 = *&qword_35278 * 4.0 + 24.0;
LABEL_6:
    v109[0] = &_swiftEmptyArrayStorage;
    v7 = (*&stru_108.segname[(*v2 & *v1) + 16])();
    if (!v7)
    {
      if (qword_35250 != -1)
      {
        swift_once();
      }

      v99 = sub_1F4F4();
      sub_20E4(v99, qword_35258);
      v61 = sub_1F4D4();
      v100 = sub_1F644();
      if (os_log_type_enabled(v61, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v108 = v102;
        *v101 = 136315138;
        *(v101 + 4) = sub_211C(0xD000000000000018, 0x80000000000241F0, &v108);
        _os_log_impl(&dword_0, v61, v100, "%s failed to unwrap waveform preview", v101, 0xCu);
        sub_2350(v102);

        goto LABEL_36;
      }

      goto LABEL_38;
    }

    v8 = v7;
    v9 = 0.0;
    if ((v3() & 2) != 0 && (*(&stru_158.reserved2 + (*v2 & *v1)))() >= 2 && (v3() & 2) != 0)
    {
      v10 = [v1 getInputSelectionHeightConstant];
      v9 = v11;
      if ((v3)(v10))
      {
        v9 = v9 + 20.0;
      }
    }

    v12 = v107();
    v13 = [v12 topAnchor];

    result = [v1 view];
    if (!result)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v15 = result;
    v16 = [result topAnchor];

    v17 = [v13 constraintEqualToAnchor:v16 constant:v9];
    (*(&stru_1A8.offset + (swift_isaMask & *v1)))(v17);
    v18 = *(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_containerView);
    v19 = [v18 topAnchor];
    v20 = v107();
    v21 = [v20 topAnchor];

    v104 = [v19 constraintEqualToAnchor:v21 constant:10.0];
    v22 = v8;
    v23 = [v22 topAnchor];
    v24 = v107();
    v25 = [v24 topAnchor];

    v103 = [v23 constraintEqualToAnchor:v25 constant:10.0];
    sub_184C0(&qword_34CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22310;
    v27 = [v18 trailingAnchor];
    result = [v1 view];
    if (!result)
    {
      goto LABEL_58;
    }

    v28 = result;
    v29 = [result trailingAnchor];

    v30 = [v27 constraintEqualToAnchor:v29 constant:-10.0];
    *(inited + 32) = v30;
    *(inited + 40) = v104;
    v105 = v104;
    v31 = [v18 leadingAnchor];
    v32 = [v22 trailingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:10.0];

    *(inited + 48) = v33;
    v34 = [v18 widthAnchor];
    v3 = &off_33000;
    v35 = [v34 constraintEqualToConstant:163.0];

    *(inited + 56) = v35;
    v36 = [v18 heightAnchor];
    v37 = [v22 heightAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    *(inited + 64) = v38;
    v39 = [v22 leadingAnchor];
    result = [v1 view];
    if (!result)
    {
      goto LABEL_59;
    }

    v40 = result;
    v41 = v22;
    v42 = [result leadingAnchor];

    v43 = [v39 constraintEqualToAnchor:v42 constant:10.0];
    *(inited + 72) = v43;
    *(inited + 80) = v103;
    v2 = v103;
    v44 = [v22 heightAnchor];
    v45 = [v44 constraintEqualToConstant:v6];

    *(inited + 88) = v45;
    v46 = sub_17F88(inited);
    v47 = (swift_isaMask & *v1) + 648;
    v48 = *(&stru_248.flags + (swift_isaMask & *v1));
    v49 = (v48)(v46);
    v106 = v41;
    if (!(v49 >> 62))
    {
      break;
    }

    v50 = sub_1F8F4();

    if ((v50 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_55:
    swift_once();
  }

  v50 = *(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8));

LABEL_17:
  v52 = (v48)(v51);
  v53 = v52;
  if (!v50)
  {
LABEL_39:

    result = [v1 view];
    if (result)
    {
      v69 = result;
      v70 = *(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_micModesLayoutGuide);
      [result addLayoutGuide:v70];

      v71 = [v70 topAnchor];
      v72 = [v41 bottomAnchor];

      v73 = [v71 constraintEqualToAnchor:v72];
      (*(&stru_1A8.reserved2 + (swift_isaMask & *v1)))(v73);
      v74 = [v70 heightAnchor];
      v75 = [v74 constraintEqualToConstant:0.0];

      (*&stru_1F8.segname[swift_isaMask & *v1])(v75);
      v76 = swift_initStackObject();
      *(v76 + 16) = xmmword_22310;
      *(v76 + 32) = (*(&stru_1A8.flags + (swift_isaMask & *v1)))();
      v77 = [v70 leadingAnchor];
      result = [v1 view];
      if (result)
      {
        v78 = result;
        v79 = [result leadingAnchor];

        v80 = [v77 constraintEqualToAnchor:v79];
        *(v76 + 40) = v80;
        v81 = [v70 trailingAnchor];
        result = [v1 view];
        if (result)
        {
          v82 = result;
          v83 = [result trailingAnchor];

          v84 = [v81 constraintEqualToAnchor:v83];
          *(v76 + 48) = v84;
          *(v76 + 56) = (*&stru_1F8.segname[(swift_isaMask & *v1) - 8])();
          v85 = v107();
          v86 = [v85 leadingAnchor];

          result = [v1 view];
          if (result)
          {
            v87 = result;
            v88 = [result leadingAnchor];

            v89 = [v86 constraintEqualToAnchor:v88];
            *(v76 + 64) = v89;
            v90 = v107();
            v91 = [v90 trailingAnchor];

            result = [v1 view];
            if (result)
            {
              v92 = result;
              v93 = [result trailingAnchor];

              v94 = [v91 constraintEqualToAnchor:v93];
              *(v76 + 72) = v94;
              *(v76 + 80) = (*(&stru_1A8.size + (swift_isaMask & *v1)))();
              v95 = v107();
              v96 = [v95 bottomAnchor];

              v97 = [v70 bottomAnchor];
              v98 = [v96 constraintEqualToAnchor:v97 constant:10.0];

              *(v76 + 88) = v98;
              sub_17F88(v76);

              return v109[0];
            }

            goto LABEL_64;
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          return result;
        }

LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v52 >> 62)
  {
    v3 = sub_1F8F4();
  }

  else
  {
    v3 = *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8));
  }

  v54 = 0;
  while (v54 < v50)
  {
    v47 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      goto LABEL_50;
    }

    if (v3 == v54)
    {
      goto LABEL_39;
    }

    if ((v53 & 0xC000000000000001) != 0)
    {
      v55 = sub_1F874();
    }

    else
    {
      if (v54 >= *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_51;
      }

      v55 = *(v53 + 8 * v54 + 32);
    }

    v48 = v55;
    v56 = sub_1377C(v55, v54);
    sub_17F88(v56);

    ++v54;
    if (v47 == v50)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  swift_once();
LABEL_34:
  v59 = sub_1F4F4();
  sub_20E4(v59, qword_35258);
  v60 = v1;

  v61 = sub_1F4D4();
  v62 = sub_1F634();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v109[0] = swift_slowAlloc();
    *v63 = 136315394;
    v64 = v3();
    v65 = sub_D828(v64);
    v67 = sub_211C(v65, v66, v109);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2080;
    v68 = sub_211C(v48, v47, v109);

    *(v63 + 14) = v68;
    _os_log_impl(&dword_0, v61, v62, "Not adding mic modes constraints, modules=%s, have superview ?=%s", v63, 0x16u);
    swift_arrayDestroy();

LABEL_36:
  }

  else
  {
  }

LABEL_38:

  return &_swiftEmptyArrayStorage;
}

void sub_4260()
{
  v1 = v0;
  v2 = *(&stru_158.offset + (swift_isaMask & *v0));
  v3 = v2();
  if (v3 >> 62)
  {
    v4 = sub_1F8F4();
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  if (v4)
  {
    v5 = objc_opt_self();
    v2();
    sub_19F68(0, &qword_34F68);
    isa = sub_1F5D4().super.isa;

    [v5 deactivateConstraints:isa];

    (*(&stru_158.reloff + (swift_isaMask & *v1)))(&_swiftEmptyArrayStorage);
  }

  v7 = sub_3210();
  v8 = *(&stru_158.flags + (swift_isaMask & *v1));
  v9 = v8(v15);
  sub_17F88(v7);
  v9(v15, 0);
  sub_13B28();
  v11 = v10;
  v12 = v8(v15);
  sub_17F88(v11);
  v12(v15, 0);
  v13 = objc_opt_self();
  v2();
  sub_19F68(0, &qword_34F68);
  v14 = sub_1F5D4().super.isa;

  [v13 activateConstraints:v14];
}

uint64_t sub_44E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4528()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4560()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4598()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_45E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4624(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_4644(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_466C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_46A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_46E0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_471C()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_351C0;
  v5 = qword_351C0;
  if (!qword_351C0)
  {
    v6 = *off_2CB80;
    v7 = *off_2CB90;
    v8 = 0;
    v3[3] = _sl_dlopen();
    qword_351C0 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_4830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4848(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_351C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_48E0()
{
  v0 = sub_471C();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

id sub_493C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_351C8;
  v7 = qword_351C8;
  if (!qword_351C8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_4A1C;
    v3[3] = &unk_2CBD8;
    v3[4] = &v4;
    sub_4A1C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_4A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_4A1C(uint64_t a1)
{
  sub_48E0();
  result = objc_getClass("MTMaterialView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_351C8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1EF74();
    return sub_4A74(v3);
  }

  return result;
}

id sub_4A74()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_351D0;
  v7 = qword_351D0;
  if (!qword_351D0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_4B54;
    v3[3] = &unk_2CBD8;
    v3[4] = &v4;
    sub_4B54(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_4B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_4B54(uint64_t a1)
{
  sub_48E0();
  result = objc_getClass("MTVisualStylingProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_351D0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1EF9C();
    return sub_4BAC(v3);
  }

  return result;
}

id sub_4BAC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_351D8;
  v7 = qword_351D8;
  if (!qword_351D8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_4C8C;
    v3[3] = &unk_2CBD8;
    v3[4] = &v4;
    sub_4C8C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_4C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4C8C(uint64_t a1)
{
  sub_48E0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIView");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_351D8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = sub_1EFC4();
    [(RPCCAudioSettingsModuleViewController *)v2 viewDidLoad];
  }
}

id sub_5B68(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || ![v2 isEqualToString:*(*(a1 + 40) + 120)])
  {
    return [*(a1 + 40) layoutVideoConferenceSubviews];
  }

  v3 = [*(a1 + 48) name];
  v4 = [v3 isEqualToString:AVControlCenterMicrophoneModesModuleSupportedMicrophoneModesDidChangeNotification];

  if (v4)
  {
    v5 = AVControlCenterMicrophoneModesModuleGetSupportedMicrophoneModesForBundleID();
    v6 = *(a1 + 40);
    v7 = *(v6 + 160);
    *(v6 + 160) = v5;

    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 136446466;
      *&v24[4] = "[RPCCAudioSettingsModuleViewController handleAVControlCenterNotification:]_block_invoke";
      *&v24[12] = 1024;
      *&v24[14] = 358;
      v8 = " [INFO] %{public}s:%d supportedMicModes didChange";
      v9 = 18;
LABEL_14:
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v8, v24, v9);
    }
  }

  else
  {
    v10 = [*(a1 + 48) name];
    if ([v10 isEqualToString:AVControlCenterMicrophoneModesModuleActiveMicrophoneModeDidChangeNotification])
    {
    }

    else
    {
      v11 = [*(a1 + 48) name];
      v12 = [v11 isEqualToString:AVControlCenterMicrophoneModesModuleMicrophoneModeDidChangeNotification];

      if (!v12)
      {
        v16 = [*(a1 + 48) name];
        v17 = [v16 isEqualToString:AVControlCenterMicrophoneModesModuleVoiceProcessingBypassedDidChangeNotification];

        if (v17)
        {
          IsVoiceProcessingBypassedForBundleID = AVControlCenterMicrophoneModesModuleIsVoiceProcessingBypassedForBundleID();
          v19 = *(a1 + 40);
          if (*(v19 + 176) != IsVoiceProcessingBypassedForBundleID)
          {
            *(v19 + 176) = IsVoiceProcessingBypassedForBundleID;
            if (*(*(a1 + 40) + 176) == 1)
            {
              +[UIColor systemWhiteColor];
            }

            else
            {
              +[UIColor systemOrangeColor];
            }
            v20 = ;
            [*(*(a1 + 40) + 32) setTintColor:v20];

            if (*(*(a1 + 40) + 176) == 1)
            {
              +[UIColor systemWhiteColor];
            }

            else
            {
              +[UIColor systemOrangeColor];
            }
            v21 = ;
            [*(*(a1 + 40) + 40) setTintColor:v21];

            [*(a1 + 40) setModeForBypass];
            if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v22 = *(*(a1 + 40) + 176);
              *v24 = 136446722;
              *&v24[4] = "[RPCCAudioSettingsModuleViewController handleAVControlCenterNotification:]_block_invoke";
              *&v24[12] = 1024;
              *&v24[14] = 382;
              *&v24[18] = 1024;
              *&v24[20] = v22;
              v8 = " [INFO] %{public}s:%d currentBypassMode=%d";
              v9 = 24;
              goto LABEL_14;
            }
          }
        }

        return [*(a1 + 40) layoutVideoConferenceSubviews];
      }
    }

    ActiveMicrophoneModeForBundleID = AVControlCenterMicrophoneModesModuleGetActiveMicrophoneModeForBundleID();
    v14 = *(a1 + 40);
    if (*(v14 + 168) != ActiveMicrophoneModeForBundleID)
    {
      *(v14 + 168) = ActiveMicrophoneModeForBundleID;
      [*(a1 + 40) setCurrentSelectedMode:*(*(a1 + 40) + 168)];
      if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(*(a1 + 40) + 168);
        *v24 = 136446722;
        *&v24[4] = "[RPCCAudioSettingsModuleViewController handleAVControlCenterNotification:]_block_invoke";
        *&v24[12] = 1024;
        *&v24[14] = 368;
        *&v24[18] = 2048;
        *&v24[20] = v15;
        v8 = " [INFO] %{public}s:%d _currentMicMode=%zu";
        v9 = 28;
        goto LABEL_14;
      }
    }
  }

  return [*(a1 + 40) layoutVideoConferenceSubviews];
}

void sub_64A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_64F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isSupportedMicMode:0])
  {
    AVControlCenterMicrophoneModesModuleSetMicrophoneModeForBundleID();
    [*(a1 + 32) disableAutoMicMode];
    [WeakRetained setCurrentSelectedMode:0];
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446466;
      v5 = "[RPCCAudioSettingsModuleViewController setupAudioFunctionItems]_block_invoke";
      v6 = 1024;
      v7 = 469;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d user tapped setCurrentSelectedMode=AVMicrophoneModeDefault", &v4, 0x12u);
    }
  }

  return 0;
}

uint64_t sub_6620(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isSupportedMicMode:2])
  {
    AVControlCenterMicrophoneModesModuleSetMicrophoneModeForBundleID();
    [*(a1 + 32) disableAutoMicMode];
    [WeakRetained setCurrentSelectedMode:2];
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446466;
      v5 = "[RPCCAudioSettingsModuleViewController setupAudioFunctionItems]_block_invoke";
      v6 = 1024;
      v7 = 489;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d user tapped setCurrentSelectedMode=AVMicrophoneModeVoiceIsolation", &v4, 0x12u);
    }
  }

  return 0;
}

uint64_t sub_674C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isSupportedMicMode:1])
  {
    AVControlCenterMicrophoneModesModuleSetMicrophoneModeForBundleID();
    [*(a1 + 32) disableAutoMicMode];
    [WeakRetained setCurrentSelectedMode:1];
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446466;
      v5 = "[RPCCAudioSettingsModuleViewController setupAudioFunctionItems]_block_invoke";
      v6 = 1024;
      v7 = 509;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d user tapped setCurrentSelectedMode=AVMicrophoneModeMusic", &v4, 0x12u);
    }
  }

  return 0;
}

void sub_6878(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v2 = [NSArray arrayWithObjects:&v3 count:3];
  [v1 setMenuItems:v2];
}

id sub_6F94(uint64_t a1)
{
  if ([*(a1 + 32) isExpanded])
  {
    [*(a1 + 32) setupAudioFunctionItems];
  }

  v2 = *(a1 + 32);

  return [v2 layoutVideoConferenceSubviews];
}

uint64_t sub_7B90()
{
  if (!qword_351E0)
  {
    qword_351E0 = _sl_dlopen();
  }

  return qword_351E0;
}

uint64_t sub_7C60()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_351E8;
  v6 = qword_351E8;
  if (!qword_351E8)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_7D9C;
    v2[3] = &unk_2CBD8;
    v2[4] = &v3;
    sub_7D9C(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_7D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_7D28()
{
  result = _sl_dlopen();
  qword_351E0 = result;
  return result;
}

void *sub_7D9C(uint64_t a1)
{
  v2 = sub_7B90();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "AVControlCenterMicrophoneModesModuleSetAutoEnabledForBundleID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_351E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_7E4C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void sub_7EAC(id a1)
{
  qword_351F0 = objc_alloc_init(RPFeatureFlagUtility);

  _objc_release_x1();
}

void sub_8674(void *a1)
{
  v1 = a1;
  v2 = sub_9F84();
  if (v2)
  {
    v2(v1);
  }

  else
  {
    v3 = sub_1EFEC();
    [(AudioEffectsManager *)v3 setupMicModeNotifications];
  }
}

id sub_88AC()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_35210;
  v8 = qword_35210;
  if (!qword_35210)
  {
    v1 = sub_A0C0();
    v6[3] = dlsym(v1, "AVControlCenterMicrophoneModesModuleAutoEnabledDidChangeNotification");
    qword_35210 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = sub_1EFEC();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id sub_8B3C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    result = [result isEqualToString:*(*(a1 + 40) + 16)];
    if (result)
    {
      v3 = [*(a1 + 48) name];
      v4 = [v3 isEqualToString:AVControlCenterMicrophoneModesModuleSupportedMicrophoneModesDidChangeNotification];

      if (v4)
      {
        v5 = AVControlCenterMicrophoneModesModuleGetSupportedMicrophoneModesForBundleID();
        v6 = *(a1 + 40);
        v7 = *(v6 + 32);
        *(v6 + 32) = v5;

        if (__RPLogLevel || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          return [*(a1 + 40) updateVisuals];
        }

        *v25 = 136446466;
        *&v25[4] = "[AudioEffectsManager handleAVControlCenterNotification:]_block_invoke";
        *&v25[12] = 1024;
        *&v25[14] = 120;
        v8 = " [DEBUG] %{public}s:%d _supportedMicModes didChange";
        v9 = 18;
        goto LABEL_14;
      }

      v10 = [*(a1 + 48) name];
      if ([v10 isEqualToString:AVControlCenterMicrophoneModesModuleMicrophoneModeDidChangeNotification])
      {
      }

      else
      {
        v11 = [*(a1 + 48) name];
        v12 = [v11 isEqualToString:AVControlCenterMicrophoneModesModuleActiveMicrophoneModeDidChangeNotification];

        if (!v12)
        {
          v16 = [*(a1 + 48) name];
          v17 = [v16 isEqualToString:AVControlCenterMicrophoneModesModuleVoiceProcessingBypassedDidChangeNotification];

          if (!v17)
          {
            v21 = [*(a1 + 48) name];
            v22 = sub_88AC();
            v23 = [v21 isEqualToString:v22];

            if (v23 && sub_A11C() && sub_9F84())
            {
              sub_8674(*(*(a1 + 40) + 16));
              *(*(a1 + 40) + 11) = v24;
            }

            return [*(a1 + 40) updateVisuals];
          }

          IsVoiceProcessingBypassedForBundleID = AVControlCenterMicrophoneModesModuleIsVoiceProcessingBypassedForBundleID();
          v19 = *(a1 + 40);
          if (*(v19 + 8) == IsVoiceProcessingBypassedForBundleID)
          {
            return [*(a1 + 40) updateVisuals];
          }

          *(v19 + 8) = IsVoiceProcessingBypassedForBundleID;
          [*(a1 + 40) updateMicMode:0];
          if (__RPLogLevel || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            return [*(a1 + 40) updateVisuals];
          }

          v20 = *(*(a1 + 40) + 8);
          *v25 = 136446722;
          *&v25[4] = "[AudioEffectsManager handleAVControlCenterNotification:]_block_invoke";
          *&v25[12] = 1024;
          *&v25[14] = 140;
          *&v25[18] = 1024;
          *&v25[20] = v20;
          v8 = " [DEBUG] %{public}s:%d _currentBypassMode=%d";
          v9 = 24;
LABEL_14:
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v8, v25, v9);
          return [*(a1 + 40) updateVisuals];
        }
      }

      ActiveMicrophoneModeForBundleID = AVControlCenterMicrophoneModesModuleGetActiveMicrophoneModeForBundleID();
      v14 = *(a1 + 40);
      if (*(v14 + 40) == ActiveMicrophoneModeForBundleID)
      {
        return [*(a1 + 40) updateVisuals];
      }

      *(v14 + 40) = ActiveMicrophoneModeForBundleID;
      if (__RPLogLevel || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return [*(a1 + 40) updateVisuals];
      }

      v15 = *(*(a1 + 40) + 40);
      *v25 = 136446722;
      *&v25[4] = "[AudioEffectsManager handleAVControlCenterNotification:]_block_invoke";
      *&v25[12] = 1024;
      *&v25[14] = 128;
      *&v25[18] = 2048;
      *&v25[20] = v15;
      v8 = " [DEBUG] %{public}s:%d currentMicMode=%zu";
      v9 = 28;
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_9F84()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_35200;
  v6 = qword_35200;
  if (!qword_35200)
  {
    v1 = sub_A0C0();
    v4[3] = dlsym(v1, "AVControlCenterMicrophoneModesModuleIsAutoEnabledForBundleID");
    qword_35200 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_A058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_A070(uint64_t a1)
{
  v2 = sub_A0C0();
  result = dlsym(v2, "AVControlCenterMicrophoneModesModuleIsAutoEnabledForBundleID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_35200 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_A0C0()
{
  v0 = sub_A11C();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t sub_A11C()
{
  if (!qword_35208)
  {
    qword_35208 = _sl_dlopen();
  }

  return qword_35208;
}

uint64_t sub_A1EC()
{
  result = _sl_dlopen();
  qword_35208 = result;
  return result;
}

void *sub_A260(uint64_t a1)
{
  v2 = sub_A0C0();
  result = dlsym(v2, "AVControlCenterMicrophoneModesModuleAutoEnabledDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_35210 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_A2B0(uint64_t a1)
{
  v2 = sub_A0C0();
  result = dlsym(v2, "AVControlCenterMicrophoneModuleMicrophoneModesShouldBeShownForBundleID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_35218 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_AD28(uint64_t a1)
{
  if (!__RPLogLevel && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPCCAudioSettingsModuleBackgroundViewController handleAVControlCenterNotification:]_block_invoke";
    v5 = 1024;
    v6 = 174;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d _supportedMicModes didChange", &v3, 0x12u);
  }

  [*(a1 + 32) setupSupportedLabel];
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];
}

void sub_AE10(uint64_t a1)
{
  if (!__RPLogLevel && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPCCAudioSettingsModuleBackgroundViewController handleAVControlCenterNotification:]_block_invoke";
    v5 = 1024;
    v6 = 182;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d auto mic mode enabled changed notification", &v3, 0x12u);
  }

  [*(a1 + 32) updateAutoMicModeState];
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];
}

uint64_t sub_C1A4()
{
  if (!qword_35220)
  {
    qword_35220 = _sl_dlopen();
  }

  return qword_35220;
}

uint64_t sub_C274()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_35228;
  v6 = qword_35228;
  if (!qword_35228)
  {
    v1 = sub_C424();
    v4[3] = dlsym(v1, "AVControlCenterMicrophoneModesModuleAutoEnabledDidChangeNotification");
    qword_35228 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_C348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_C360()
{
  result = _sl_dlopen();
  qword_35220 = result;
  return result;
}

void *sub_C3D4(uint64_t a1)
{
  v2 = sub_C424();
  result = dlsym(v2, "AVControlCenterMicrophoneModesModuleAutoEnabledDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_35228 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_C424()
{
  v0 = sub_C1A4();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t sub_C480()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_35230;
  v6 = qword_35230;
  if (!qword_35230)
  {
    v1 = sub_C424();
    v4[3] = dlsym(v1, "AVControlCenterMicrophoneModesModuleIsAutoSupportedForBundleID");
    qword_35230 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_C554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_C56C(uint64_t a1)
{
  v2 = sub_C424();
  result = dlsym(v2, "AVControlCenterMicrophoneModesModuleIsAutoSupportedForBundleID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_35230 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_C5BC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_35238;
  v6 = qword_35238;
  if (!qword_35238)
  {
    v1 = sub_C424();
    v4[3] = dlsym(v1, "AVControlCenterMicrophoneModesModuleIsAutoEnabledForBundleID");
    qword_35238 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_C690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_C6A8(uint64_t a1)
{
  v2 = sub_C424();
  result = dlsym(v2, "AVControlCenterMicrophoneModesModuleIsAutoEnabledForBundleID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_35238 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_C6F8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_35240;
  v6 = qword_35240;
  if (!qword_35240)
  {
    v1 = sub_C424();
    v4[3] = dlsym(v1, "AVControlCenterMicrophoneModesModuleSetAutoEnabledForBundleID");
    qword_35240 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_C7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_C7E4(uint64_t a1)
{
  v2 = sub_C424();
  result = dlsym(v2, "AVControlCenterMicrophoneModesModuleSetAutoEnabledForBundleID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_35240 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_CAA4()
{
  v0 = sub_1F4F4();
  sub_19FB4(v0, qword_35258);
  sub_20E4(v0, qword_35258);
  return sub_1F4E4();
}

Swift::Int sub_CB44()
{
  v1 = *v0;
  sub_1F924();
  sub_1F934(v1);
  return sub_1F944();
}

Swift::Int sub_CBB8()
{
  v1 = *v0;
  sub_1F924();
  sub_1F934(v1);
  return sub_1F944();
}

unint64_t sub_CBFC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18354(*a1);
  *a2 = result;
  return result;
}

void sub_CC44(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC34AudioConferenceControlCenterModule17AudioSettingsView_controlSize];
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  if (qword_35250 != -1)
  {
    swift_once();
  }

  v6 = sub_1F4F4();
  sub_20E4(v6, qword_35258);
  v7 = v2;
  v8 = sub_1F4D4();
  v9 = sub_1F634();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    v12 = sub_1F694();
    v14 = sub_211C(v12, v13, &v15);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "AudioSettingsView new controlSize=%s", v10, 0xCu);
    sub_2350(v11);
  }
}

void (*sub_CDC8(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule17AudioSettingsView_controlSize;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_CE50;
}

void sub_CE50(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (qword_35250 != -1)
    {
      swift_once();
    }

    v4 = v3[3];
    v5 = sub_1F4F4();
    sub_20E4(v5, qword_35258);
    v6 = v4;
    v7 = sub_1F4D4();
    v8 = sub_1F634();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      v11 = sub_1F694();
      v13 = sub_211C(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_0, v7, v8, "AudioSettingsView new controlSize=%s", v9, 0xCu);
      sub_2350(v10);
    }
  }

  free(v3);
}

char *sub_CFD8(double a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = [objc_opt_self() mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v5 initWithFrame:{v8, v10, v12, v14}];
  v16 = &v15[OBJC_IVAR____TtC34AudioConferenceControlCenterModule17AudioSettingsView_controlSize];
  swift_beginAccess();
  *v16 = a1;
  v16[1] = a2;
  return v15;
}

id sub_D0EC(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id sub_D150(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC34AudioConferenceControlCenterModule17AudioSettingsView_controlSize] = CGSizeZero;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for AudioSettingsView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id sub_D254(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_D298(void *a1)
{
  *&v1[OBJC_IVAR____TtC34AudioConferenceControlCenterModule17AudioSettingsView_controlSize] = CGSizeZero;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AudioSettingsView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_D498()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_D4C8(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_D520()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_D550(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_D5A8()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_D5D8(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

id sub_D630()
{
  v0 = [objc_opt_self() systemBlueColor];

  return v0;
}

uint64_t sub_D730@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, __int128 a12, uint64_t a13)
{
  *a9 = result;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 8) = a5;
  *(a9 + 16) = a6;
  *(a9 + 24) = a7;
  *(a9 + 32) = a8;
  *(a9 + 40) = a12;
  *(a9 + 56) = a13;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

BOOL sub_D760(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_18388(v8, v9);
}

double sub_D7C8()
{
  result = *sub_1A860();
  qword_35278 = *&result;
  return result;
}

uint64_t sub_D828(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = 0;
    v3 = 0xE000000000000000;
    if ((a1 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6._countAndFlagsBits = 0x7365646F4D63696DLL;
  v6._object = 0xE800000000000000;
  sub_1F5A4(v6);
  v3 = 0xE200000000000000;
  v2 = 8236;
  if ((a1 & 2) != 0)
  {
LABEL_5:
    v5._countAndFlagsBits = v2;
    v5._object = v3;

    v7._countAndFlagsBits = 0x6C65537475706E69;
    v7._object = 0xEE006E6F69746365;
    sub_1F5A4(v7);

    sub_1F5A4(v5);
  }

LABEL_6:

  v8._countAndFlagsBits = 93;
  v8._object = 0xE100000000000000;
  sub_1F5A4(v8);
  return 91;
}

BOOL sub_D950(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_D980@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_D9AC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_DA98@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_DAC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1886C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_DB08()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_modules;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_DB4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_modules;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_DC04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_previewView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_DCBC()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

void sub_DD04()
{
  if (qword_35280 != -1)
  {
    swift_once();
  }

  sub_DDD0();
}

__int128 *sub_DD80()
{
  if (qword_35280 != -1)
  {
    swift_once();
  }

  return &xmmword_35A50;
}

void sub_DDD0()
{
  v1 = v0;
  v2 = sub_1F574();
  v3 = objc_opt_self();
  v4 = [v3 _systemImageNamed:v2];

  if (!v4)
  {
    v5 = sub_1F574();
    v4 = [v3 _systemImageNamed:v5];
  }

  v6 = sub_1F574();
  v7 = [v3 _systemImageNamed:v6];

  if (!v7)
  {
    v8 = sub_1F574();
    v7 = [v3 _systemImageNamed:v8];
  }

  if (v4)
  {
    if (v7)
    {
      type metadata accessor for EffectControl();
      v9 = *(v1 + 1);
      v10 = *(v1 + 2);
      v11 = v1[1];
      v12 = v4;

      v13 = v7;
      sub_1B8FC(v11, v12, v9, v10, 0, 0, v13, 0, 0);
      v14 = *v1;
      v16 = v15;
      [v16 setTag:v14];
      [*&v16[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_buttonGlyph] setTag:v14];
      [*&v16[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_expandChevron] setTag:v14];
      [*&v16[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_continuousSlider] setTag:v14];
      v17 = sub_1F574();
      [v16 setAccessibilityIdentifier:v17];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_E018()
{
  if (qword_35288 != -1)
  {
    swift_once();
  }

  sub_DDD0();
}

__int128 *sub_E094()
{
  if (qword_35288 != -1)
  {
    swift_once();
  }

  return &xmmword_35AA0;
}

void sub_E0F4()
{
  if (qword_35290 != -1)
  {
    swift_once();
  }

  sub_DDD0();
}

__int128 *sub_E170()
{
  if (qword_35290 != -1)
  {
    swift_once();
  }

  return &xmmword_35AF0;
}

void sub_E1D0()
{
  if (qword_35298 != -1)
  {
    swift_once();
  }

  sub_DDD0();
}

__int128 *sub_E24C()
{
  if (qword_35298 != -1)
  {
    swift_once();
  }

  return &xmmword_35B40;
}

id sub_E2AC()
{
  v0 = objc_allocWithZone(AVInputViewController);
  v1 = sub_1F574();
  v2 = [v0 initWithBundleID:v1];

  return v2;
}

id sub_E308()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_inputSelectionViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_E35C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_inputSelectionViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_E414()
{
  v0 = objc_allocWithZone(NSLayoutConstraint);

  return [v0 init];
}

id sub_E44C()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_inputSelectionViewHeightConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_E4A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_inputSelectionViewHeightConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_E5B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_currentConstraints;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_E670()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_currentMicInputCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_E6B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_currentMicInputCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_E764()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_isModuleVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_E7A8(char a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_isModuleVisible;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_E858()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_micModesTopConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_E8AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_micModesTopConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_E964()
{
  v0 = objc_allocWithZone(UILayoutGuide);

  return [v0 init];
}

id sub_E9AC()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_layoutGuideTopConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_EA00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_layoutGuideTopConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_EAB8()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_layoutGuideHeightConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_EB0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_layoutGuideHeightConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_EBC4()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

id sub_EC0C()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_micModesBackgroundView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_EC60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_micModesBackgroundView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_EDA0()
{
  sub_184C0(&qword_34CF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_222E0;
  *(v1 + 32) = (*&stru_1F8.segname[(swift_isaMask & *v0) + 16])();
  v2 = v1;
  v7 = v1;
  v3 = (*&stru_158.sectname[swift_isaMask & *v0])();
  v4 = [v3 view];

  if (!v4)
  {
    return v2;
  }

  v5 = v4;
  sub_1F5C4();
  if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v7 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_1F604();
  }

  sub_1F614();

  return v7;
}

id sub_EF20()
{
  v0 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleCallout];
  [v2 pointSize];
  v4 = v3;

  v5 = 18.0;
  if (v4 <= 18.0)
  {
    v5 = v4;
  }

  v6 = [v1 systemFontOfSize:v5];
  [v0 setFont:v6];

  [v0 setNumberOfLines:0];
  [v0 setLineBreakMode:0];
  [v0 setTextAlignment:1];
  v7 = v0;
  [v7 controlCenterApplyPrimaryContentShadow];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v7;
}

uint64_t sub_F0C4()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_shouldLoadFromSensor;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_F15C(char a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_shouldLoadFromSensor;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_F258()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_contentModuleContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_F320(void *a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_contentModuleContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_F388();
}

void sub_F388()
{
  if (qword_35250 != -1)
  {
    swift_once();
  }

  v0 = sub_1F4F4();
  sub_20E4(v0, qword_35258);
  v1 = sub_1F4D4();
  v2 = sub_1F634();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "didSet contentModuleContext", v3, 2u);
  }

  sub_10768();
}

uint64_t (*sub_F474(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_F4D8;
}

id sub_F4F0()
{
  v0 = objc_allocWithZone(AudioEffectsManager);

  return [v0 init];
}

id sub_F528()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_audioEffectsManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_F57C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_audioEffectsManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_F634()
{
  sub_184C0(&qword_34CF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_222F0;
  v2 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_autoButton);
  v3 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_standardButton);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_voiceIsolationButton);
  v5 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_wideSpectrumButton);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  return v1;
}

void *sub_F6D4()
{
  v1 = (*(&stru_248.flags + (swift_isaMask & *v0)))();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1F8F4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_1F874();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isHidden])
      {
      }

      else
      {
        sub_1F8A4();
        sub_1F8C4();
        sub_1F8D4();
        sub_1F8B4();
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return &_swiftEmptyArrayStorage;
}

double sub_F8E8()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_F990(double a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_F9E4();
}

void sub_F9E4()
{
  v1 = v0;
  v2 = (*&stru_108.segname[(swift_isaMask & *v0) + 16])();
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_compactContinuousCornerRadius;
    swift_beginAccess();
    [v3 _setContinuousCornerRadius:*(v1 + v4) + -10.0];
  }

  v5 = (*&stru_1F8.segname[(swift_isaMask & *v1) + 16])();
  v6 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  [v5 _setContinuousCornerRadius:*(v1 + v6)];

  if (qword_352A0 != -1)
  {
    swift_once();
  }

  if ((*(&stru_20.filesize + (swift_isaMask & *qword_35B90)))())
  {
    v7 = (*&stru_158.sectname[swift_isaMask & *v1])();
    v8 = [v7 viewIfLoaded];

    if (v8)
    {
      [v8 _setContinuousCornerRadius:*(v1 + v6)];
    }
  }
}

uint64_t *sub_FBDC()
{
  if (qword_352A0 != -1)
  {
    swift_once();
  }

  return &qword_35B90;
}

uint64_t (*sub_FC2C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_FC90;
}

uint64_t sub_FCA8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_FCEC()
{
  v0 = objc_allocWithZone(MTVisualStylingProvider);

  return [v0 init];
}

id sub_FD24()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_platterStrokeVisualStylingProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_FD78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_platterStrokeVisualStylingProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_FF08()
{
  v1 = *&stru_108.segname[(swift_isaMask & *v0) - 8];
  v2 = 0.0;
  v3 = 0.0;
  if (v1())
  {
    v3 = 20.0;
    if (v1())
    {
      if (qword_35270 != -1)
      {
        swift_once();
      }

      v3 = *&qword_35278 * 4.0 + 24.0 + 20.0;
    }
  }

  if ((v1() & 2) != 0)
  {
    v4 = [v0 getInputSelectionHeightConstant];
    v2 = v5;
    if ((v1)(v4))
    {
      v2 = v2 + 20.0;
    }
  }

  return v3 + v2;
}

void sub_10024(uint64_t a1)
{
  v2 = v1;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for AudioSettingsViewController();
  objc_msgSendSuper2(&v18, "preferredContentSizeDidChangeForChildContentContainer:", a1);
  if (qword_35250 != -1)
  {
    swift_once();
  }

  v4 = sub_1F4F4();
  sub_20E4(v4, qword_35258);
  v5 = sub_1F4D4();
  v6 = sub_1F634();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "preferredContentSizeDidChange(forChildContentContainer:)", v7, 2u);
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    *(v11 + 24) = v9;
    v17[4] = sub_1852C;
    v17[5] = v11;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_10298;
    v17[3] = &unk_2CEB0;
    v12 = _Block_copy(v17);
    swift_unknownObjectRetain_n();
    v13 = v2;

    [v10 animateWithDuration:v12 animations:0.3];
    _Block_release(v12);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = sub_1F4D4();
    v15 = sub_1F634();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Not input selection child container", v16, 2u);
    }
  }
}

uint64_t sub_10298(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

BOOL sub_10344()
{
  v1 = *&stru_108.segname[(swift_isaMask & *v0) - 8];
  v2 = v1();
  v3 = *(&stru_248.size + (swift_isaMask & *v0));
  v4 = v3();
  v5 = [v4 includeMicModesModule];

  v6 = v1();
  if (v5)
  {
    if (v6)
    {
      goto LABEL_10;
    }

    v8 = (*&stru_108.segname[(swift_isaMask & *v0) + 8])(v32);
    if (*v7)
    {
      goto LABEL_9;
    }

    v9 = *v7 | 1;
    goto LABEL_8;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = (*&stru_108.segname[(swift_isaMask & *v0) + 8])(v32);
  if (*v7)
  {
    v9 = *v7 & 0xFFFFFFFFFFFFFFFELL;
LABEL_8:
    *v7 = v9;
  }

LABEL_9:
  v6 = v8(v32, 0);
LABEL_10:
  v10 = (v3)(v6);
  v11 = [v10 includeInputSelectionModule];

  v12 = v1();
  if (v11)
  {
    if ((v12 & 2) != 0)
    {
      goto LABEL_19;
    }

    v14 = (*&stru_108.segname[(swift_isaMask & *v0) + 8])(v32);
    if ((*v13 & 2) != 0)
    {
      goto LABEL_18;
    }

    v15 = *v13 | 2;
    goto LABEL_17;
  }

  if ((v12 & 2) == 0)
  {
    goto LABEL_19;
  }

  v14 = (*&stru_108.segname[(swift_isaMask & *v0) + 8])(v32);
  if ((*v13 & 2) != 0)
  {
    v15 = *v13 & 0xFFFFFFFFFFFFFFFDLL;
LABEL_17:
    *v13 = v15;
  }

LABEL_18:
  v12 = v14(v32, 0);
LABEL_19:
  v16 = (v1)(v12);
  if (v2 != v16)
  {
    if (qword_35250 != -1)
    {
      swift_once();
    }

    v17 = sub_1F4F4();
    sub_20E4(v17, qword_35258);
    v18 = v0;
    v19 = sub_1F4D4();
    v20 = sub_1F634();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v21 = 136315394;
      v22 = sub_D828(v2);
      v24 = v2;
      v25 = sub_211C(v22, v23, v32);

      *(v21 + 4) = v25;
      v2 = v24;
      *(v21 + 12) = 2080;
      v27 = (v1)(v26);
      v28 = sub_D828(v27);
      v30 = sub_211C(v28, v29, v32);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_0, v19, v20, "supported modules changed previous=%s, current=%s", v21, 0x16u);
      swift_arrayDestroy();
    }
  }

  return v2 != v16;
}

void sub_10768()
{
  if (qword_35250 != -1)
  {
    swift_once();
  }

  v1 = sub_1F4F4();
  sub_20E4(v1, qword_35258);
  v2 = v0;
  v3 = sub_1F4D4();
  v4 = sub_1F634();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = (*&stru_248.segname[swift_isaMask & *v2])();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v3, v4, "refreshCurrentApplication, context=%@", v5, 0xCu);
    sub_19E00(v6, &qword_34D50);
  }

  v8 = (*&stru_248.segname[swift_isaMask & *v2])();
  if (v8)
  {
    v9 = v8;
    v33 = v8;
    v10 = sub_1F4D4();
    v11 = sub_1F634();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v33;
      *v13 = v9;
      v14 = v33;
      _os_log_impl(&dword_0, v10, v11, "setting module context on audio effects manager %@", v12, 0xCu);
      sub_19E00(v13, &qword_34D50);
    }

    v15 = *(&stru_248.size + (swift_isaMask & *v2));
    v16 = v15();
    [v16 updateCurrentApplicationWithContext:v33];

    v17 = v15();
    [v17 updateMicModeStates];

    (*&stru_338.segname[swift_isaMask & *v2])();
    sub_10CC8();
    v18 = sub_10344();
    v19 = [v2 viewIfLoaded];
    if (!v19)
    {
      goto LABEL_25;
    }

    v20 = v19;
    type metadata accessor for AudioSettingsView();
    v21 = swift_dynamicCastClass();
    if (!v21)
    {
      v26 = v33;
      v33 = v20;
LABEL_24:

LABEL_25:

      return;
    }

    v22 = v21;
    v23 = (*&stru_298.sectname[swift_isaMask & *v2])();
    v24 = (*(&stru_20.nsects + (swift_isaMask & *v22)))(304.0, v23);
    if (!v18)
    {
LABEL_23:
      v26 = v20;
      goto LABEL_24;
    }

    v25 = *&stru_108.segname[(swift_isaMask & *v2) - 8];
    if ((v25)(v24))
    {
      sub_121D4();
    }

    else
    {
      sub_1255C();
    }

    if ((v25() & 2) != 0)
    {
      sub_127BC();
    }

    else
    {
      sub_12AE0();
    }

    sub_4260();
    v27 = [v2 view];
    if (v27)
    {
      v28 = v27;
      [v27 invalidateIntrinsicContentSize];

      v29 = [v2 view];
      if (v29)
      {
        v30 = v29;
        [v29 setNeedsLayout];

        v31 = [v2 view];
        if (v31)
        {
          v32 = v31;
          [v31 layoutIfNeeded];

          goto LABEL_23;
        }

LABEL_30:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }
}

void sub_10CC8()
{
  v1 = (*(&stru_248.size + (swift_isaMask & *v0)))();
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    if (qword_35250 != -1)
    {
      swift_once();
    }

    v17 = sub_1F4F4();
    sub_20E4(v17, qword_35258);
    oslog = sub_1F4D4();
    v18 = sub_1F634();
    if (!os_log_type_enabled(oslog, v18))
    {
      goto LABEL_20;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "updateInputPickerBundleID() bundleID is nil, will not update";
LABEL_19:
    _os_log_impl(&dword_0, oslog, v18, v20, v19, 2u);

LABEL_20:

    return;
  }

  v3 = *&stru_158.sectname[swift_isaMask & *v0];
  v4 = v3();
  v5 = [v4 bundleID];

  v6 = sub_1F584();
  v8 = v7;

  v9 = v3();
  [v9 setBundleID:v2];

  v10 = v3();
  v11 = [v10 bundleID];

  v12 = sub_1F584();
  v14 = v13;

  if (v12 != v6 || v14 != v8)
  {
    v16 = sub_1F914();

    if (v16)
    {
      return;
    }

    if (qword_35250 != -1)
    {
      swift_once();
    }

    v21 = sub_1F4F4();
    sub_20E4(v21, qword_35258);
    oslog = sub_1F4D4();
    v18 = sub_1F634();
    if (!os_log_type_enabled(oslog, v18))
    {
      goto LABEL_20;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "updateInputPickerBundleID() updated input selection controller bundleID";
    goto LABEL_19;
  }
}

void sub_11014()
{
  v1 = *(&stru_248.size + (swift_isaMask & *v0));
  v2 = v1();
  v3 = *(&stru_1F8.reserved2 + (swift_isaMask & *v0));
  [v2 setShouldLoadFromSensor:v3() & 1];

  v4 = v1();
  [v4 setDelegate:v0];

  if (v3())
  {
    v5 = (*&stru_248.segname[swift_isaMask & *v0])();
    if (!v5)
    {
      goto LABEL_6;
    }

    v6 = v5;
    sub_10768();
  }

  else
  {
    v6 = v1();
    [v6 setupWithoutSensorData];
  }

LABEL_6:
  v7 = v1();
  [v7 updateMicModeStates];

  v8 = v1();
  [v8 setupMicModeNotifications];

  v9 = (*&stru_158.sectname[swift_isaMask & *v0])();
  [v9 setDelegate:v0];

  v10 = (*&stru_298.sectname[swift_isaMask & *v0])();
  v11 = objc_allocWithZone(type metadata accessor for AudioSettingsView());
  v12 = [objc_opt_self() mainScreen];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [v11 initWithFrame:{v14, v16, v18, v20}];
  v22 = &v21[OBJC_IVAR____TtC34AudioConferenceControlCenterModule17AudioSettingsView_controlSize];
  swift_beginAccess();
  *v22 = 304.0;
  v22[1] = v10;
  [v0 setView:v21];

  v23 = objc_opt_self();
  sub_1A7A0();

  v24 = sub_1F574();

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v27 = [v23 _visualStylingProviderForStyleSetNamed:v24 inBundle:v26];

  if (v27)
  {
    (*(&stru_298.size + (swift_isaMask & *v0)))(v27);
  }

  else
  {
    __break(1u);
  }
}

void sub_1144C()
{
  v1 = v0;
  if (qword_35250 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v2 = sub_1F4F4();
    sub_20E4(v2, qword_35258);
    v3 = sub_1F4D4();
    v4 = sub_1F634();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v90 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_211C(0x4C64694477656976, 0xED0000292864616FLL, &v90);
      _os_log_impl(&dword_0, v3, v4, "%s", v5, 0xCu);
      sub_2350(v6);
    }

    v7 = type metadata accessor for AudioSettingsViewController();
    v91.receiver = v1;
    v91.super_class = v7;
    v8 = objc_msgSendSuper2(&v91, "viewDidLoad");
    v9 = *&stru_1F8.segname[(swift_isaMask & *v1) + 16];
    v10 = (v9)(v8);
    v11 = *&stru_298.segname[(swift_isaMask & *v1) - 8];
    v11();
    [v10 _setContinuousCornerRadius:?];

    v12 = v9();
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (qword_352A0 != -1)
    {
      swift_once();
    }

    v13 = (*(&stru_20.filesize + (swift_isaMask & *qword_35B90)))();
    v14 = (*&stru_158.sectname[swift_isaMask & *v1])();
    v15 = [v14 view];

    if (v13)
    {
      if (!v15)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v11();
    }

    else
    {
      if (!v15)
      {
        goto LABEL_58;
      }

      v16 = 34.0;
    }

    [v15 _setContinuousCornerRadius:{v16, v88}];

    v17 = [objc_opt_self() displayLinkWithTarget:v1 selector:"displayLinkUpdate:"];
    v18 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_displayLink;
    v19 = *(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_displayLink);
    *(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_displayLink) = v17;
    v20 = v17;

    if (v20)
    {
      [v20 setPaused:1];
    }

    v21 = *(v1 + v18);
    if (v21)
    {
      v22 = objc_opt_self();
      v23 = v21;
      v24 = [v22 currentRunLoop];
      [v23 addToRunLoop:v24 forMode:NSRunLoopCommonModes];
    }

    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v27 = objc_allocWithZone(BSUICAPackageView);
    v28 = sub_1F574();
    v29 = [v27 initWithPackageName:v28 inBundle:v26];

    v30 = (*(&stru_108.size + (swift_isaMask & *v1)))(v29);
    v31 = (*&stru_108.segname[(swift_isaMask & *v1) + 16])(v30);
    if (!v31)
    {
      break;
    }

    v32 = v11;
    v33 = v31;
    v34 = sub_1F4D4();
    v35 = sub_1F634();
    v89 = v1;
    if (os_log_type_enabled(v34, v35))
    {
      v13 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_211C(0x4C64694477656976, 0xED0000292864616FLL, &v90);
      *(v13 + 12) = 2080;
      v36 = [v33 publishedObjectNames];

      if (!v36)
      {
        goto LABEL_59;
      }

      sub_1F5E4();

      v37 = sub_1F5F4();
      v39 = v38;

      v40 = sub_211C(v37, v39, &v90);

      *(v13 + 14) = v40;
      _os_log_impl(&dword_0, v34, v35, "%s waveform published objects %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v45 = objc_opt_self();
    v46 = v33;
    v47 = [v45 systemGrayTintColor];
    [v46 setBackgroundColor:v47];

    v48 = [v46 layer];
    [v48 setMasksToBounds:1];

    [v46 _setContinuousCornerRadius:{(v32)(objc_msgSend(v46, "setTranslatesAutoresizingMaskIntoConstraints:", 0)) + -10.0}];
    v88 = v46;

    v49 = [*(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_containerView) setTranslatesAutoresizingMaskIntoConstraints:0];
    v50 = (*(&stru_248.flags + (swift_isaMask & *v1)))(v49);
    v51 = v50;
    if (v50 >> 62)
    {
      v52 = sub_1F8F4();
      if (v52)
      {
        goto LABEL_25;
      }

LABEL_39:

      v59 = *&stru_108.segname[(swift_isaMask & *v89) - 8];
      if ((v59)(v58))
      {
        sub_121D4();
      }

      else
      {
        sub_1255C();
      }

      if ((v59() & 2) != 0)
      {
        sub_127BC();
      }

      else
      {
        sub_12AE0();
      }

      sub_4260();
      v13 = v89;
      v60 = sub_1F4D4();
      v61 = sub_1F634();
      if (!os_log_type_enabled(v60, v61))
      {

        goto LABEL_50;
      }

      v62 = swift_slowAlloc();
      *v62 = 134218240;
      v63 = [v13 view];

      if (v63)
      {
        [v63 frame];
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v71 = v70;

        v92.origin.x = v65;
        v92.origin.y = v67;
        v92.size.width = v69;
        v92.size.height = v71;
        *(v62 + 4) = CGRectGetWidth(v92);
        *(v62 + 12) = 2048;
        v72 = [v13 view];

        if (v72)
        {
          [v72 frame];
          v74 = v73;
          v76 = v75;
          v78 = v77;
          v80 = v79;

          v93.origin.x = v74;
          v93.origin.y = v76;
          v93.size.width = v78;
          v93.size.height = v80;
          *(v62 + 14) = CGRectGetHeight(v93);
          _os_log_impl(&dword_0, v60, v61, "view frame width=%f height=%f", v62, 0x16u);

LABEL_50:

          v81 = (*&stru_338.segname[swift_isaMask & *v13])();
          v82 = (*(&stru_1F8.reserved2 + (swift_isaMask & *v13)))(v81);
          if ((v82 & 1) == 0)
          {
            v82 = [v13 viewWillAppear:1];
          }

          v83 = (*&stru_248.segname[swift_isaMask & *v13])(v82);
          if (v83)
          {
            v84 = v83;
            v85 = sub_1F4D4();
            v86 = sub_1F634();
            if (os_log_type_enabled(v85, v86))
            {
              v87 = swift_slowAlloc();
              *v87 = 0;
              _os_log_impl(&dword_0, v85, v86, "Notifying CC to apply new platter style", v87, 2u);
            }

            [v84 invalidateContainerViewsForPlatterTreatment];
          }

          return;
        }

LABEL_61:
        __break(1u);
        return;
      }

LABEL_60:

      __break(1u);
      goto LABEL_61;
    }

    v52 = *(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8));
    if (!v52)
    {
      goto LABEL_39;
    }

LABEL_25:
    v53 = 0;
    v1 = &off_33000;
    while (1)
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        v54 = sub_1F874();
      }

      else
      {
        if (v53 >= *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_36;
        }

        v54 = *(v51 + 8 * v53 + 32);
      }

      v55 = v54;
      v56 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (qword_35270 != -1)
      {
        swift_once();
      }

      [v55 _setContinuousCornerRadius:{*&qword_35278 * 0.5, v88}];
      v57 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_buttonGlyph;
      [*&v55[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_buttonGlyph] addTarget:v89 action:"buttonTappedWithSender:" forControlEvents:64];
      [*&v55[v57] addTarget:v89 action:"buttonDownWithSender:" forControlEvents:1];

      ++v53;
      if (v56 == v52)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  v41 = sub_1F4D4();
  v42 = sub_1F644();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v90 = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_211C(0x4C64694477656976, 0xED0000292864616FLL, &v90);
    _os_log_impl(&dword_0, v41, v42, "%s failed to unwrap waveform preview", v43, 0xCu);
    sub_2350(v44);
  }
}

void sub_121D4()
{
  v1 = *&stru_1F8.segname[(swift_isaMask & *v0) + 16];
  v2 = v1();
  v3 = [v2 superview];

  if (v3)
  {

    if (qword_35250 == -1)
    {
LABEL_3:
      v4 = sub_1F4F4();
      sub_20E4(v4, qword_35258);
      oslog = sub_1F4D4();
      v5 = sub_1F634();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_0, oslog, v5, "micModesBackgroundView already added to view hierarchy", v6, 2u);
      }

      return;
    }

LABEL_25:
    swift_once();
    goto LABEL_3;
  }

  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_31;
  }

  v8 = v7;
  v9 = v1();
  [v8 addSubview:v9];

  v10 = (*&stru_108.segname[(swift_isaMask & *v0) + 16])();
  if (v10)
  {
    v11 = v10;
    v12 = [v0 view];
    if (!v12)
    {
LABEL_32:
      __break(1u);
      return;
    }

    v13 = v12;
    [v12 addSubview:v11];
  }

  v14 = [v0 view];
  if (!v14)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v15 = v14;
  v16 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_containerView);
  [v14 addSubview:v16];

  v17 = (*(&stru_248.flags + (swift_isaMask & *v0)))();
  v18 = v17;
  if (v17 >> 62)
  {
    v19 = sub_1F8F4();
    if (v19)
    {
LABEL_15:
      v20 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = sub_1F874();
        }

        else
        {
          if (v20 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_24;
          }

          v21 = *(v18 + 8 * v20 + 32);
        }

        v22 = v21;
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        [v16 addSubview:v21];

        ++v20;
        if (v23 == v19)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }

  else
  {
    v19 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    if (v19)
    {
      goto LABEL_15;
    }
  }

LABEL_27:
}

void sub_1255C()
{
  v1 = *&stru_1F8.segname[(swift_isaMask & *v0) + 16];
  v2 = v1();
  v3 = [v2 superview];

  if (v3)
  {

    v4 = (*(&stru_248.flags + (swift_isaMask & *v0)))();
    v5 = v4;
    v14 = v1;
    if (v4 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1F8F4())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_1F874();
        }

        else
        {
          if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_14;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 removeFromSuperview];

        ++v7;
        if (v10 == i)
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

    v11 = [*(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_containerView) removeFromSuperview];
    v12 = (*&stru_108.segname[(swift_isaMask & *v0) + 16])(v11);
    if (v12)
    {
      v13 = v12;
      [v12 removeFromSuperview];
    }

    v15 = (v14)([*(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_unavailableLabel) removeFromSuperview]);
    [v15 removeFromSuperview];
  }
}

void sub_127BC()
{
  v1 = *&stru_158.sectname[swift_isaMask & *v0];
  v2 = v1();
  v3 = [v2 view];

  if (!v3)
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = [v3 superview];

  if (!v4)
  {
    v8 = v1();
    [v0 addChildViewController:v8];

    v9 = v1();
    v10 = [v9 view];

    if (v10)
    {
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

      v11 = [v0 view];
      if (v11)
      {
        v12 = v11;
        v13 = v1();
        v14 = [v13 view];

        if (v14)
        {
          [v12 addSubview:v14];

          v15 = v1();
          [v15 didMoveToParentViewController:v0];

          v16 = (*(&stru_158.reserved2 + (swift_isaMask & *v0)))();
          v17 = v1();
          oslog = [v17 view];

          if (oslog)
          {
            v18 = 0.0;
            if (v16 > 1)
            {
              v18 = 1.0;
            }

            [oslog setAlpha:v18];
            goto LABEL_14;
          }

LABEL_21:
          __break(1u);
          return;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (qword_35250 != -1)
  {
    swift_once();
  }

  v5 = sub_1F4F4();
  sub_20E4(v5, qword_35258);
  oslog = sub_1F4D4();
  v6 = sub_1F634();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, oslog, v6, "inputSelectionViewController view already added to view hierarchy", v7, 2u);
  }

LABEL_14:
}

void sub_12AE0()
{
  v1 = *&stru_158.sectname[swift_isaMask & *v0];
  v2 = v1();
  v3 = [v2 view];

  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = [v3 superview];

  if (!v4)
  {
    return;
  }

  v5 = v1();
  v6 = [v5 view];

  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v6 removeFromSuperview];

  v7 = v1();
  [v7 removeFromParentViewController];

  v8 = v1();
  [v8 didMoveToParentViewController:0];
}

void sub_12C50(void *a1)
{
  v2 = v1;
  v4 = *(&stru_248.reserved2 + (swift_isaMask & *v1));
  v5 = (swift_isaMask & *v1) + 656;
  v6 = v4();
  v7 = v6;
  v28 = v5;
  v29 = v4;
  if (v6 >> 62)
  {
LABEL_15:
    v8 = sub_1F8F4();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
LABEL_3:
      v9 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_1F874();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            v13 = sub_D7F8();
            sub_1E318(v13 & 1);
            goto LABEL_23;
          }
        }

        else
        {
          if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_15;
          }

          v10 = *(v7 + 8 * v9 + 32);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_12;
          }
        }

        v30 = v10;
        v12 = [v10 tag:v28];
        if (v12 == [a1 tag])
        {
          goto LABEL_13;
        }

        ++v9;
      }

      while (v11 != v8);
    }
  }

  if (qword_35250 != -1)
  {
    swift_once();
  }

  v14 = sub_1F4F4();
  sub_20E4(v14, qword_35258);
  v15 = a1;
  v16 = sub_1F4D4();
  v17 = sub_1F634();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_211C(0xD000000000000013, 0x8000000000023A20, &v31);
    *(v18 + 12) = 2048;
    *(v18 + 14) = [v15 tag];

    _os_log_impl(&dword_0, v16, v17, "AudioSettingsViewController %s Could not find corresponding button for tag %ld", v18, 0x16u);
    sub_2350(v19);
  }

  else
  {
  }

  v20 = v2;
  v30 = sub_1F4D4();
  v21 = sub_1F634();

  if (os_log_type_enabled(v30, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v23;
    *v22 = 136315138;
    v29();
    type metadata accessor for EffectControl();
    v24 = sub_1F5F4();
    v26 = v25;

    v27 = sub_211C(v24, v26, &v31);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_0, v30, v21, "Supported buttons: %s", v22, 0xCu);
    sub_2350(v23);
  }

LABEL_23:
}

void sub_1307C(void *a1)
{
  v39 = *(&stru_248.reserved2 + (swift_isaMask & *v1));
  v2 = v39();
  v3 = v2;
  v40 = v1;
  if (!(v2 >> 62))
  {
    v4 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    v5 = a1;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_27:

    if (qword_35250 != -1)
    {
      swift_once();
    }

    v25 = sub_1F4F4();
    sub_20E4(v25, qword_35258);
    v26 = a1;
    v27 = sub_1F4D4();
    v28 = sub_1F634();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_211C(0xD000000000000015, 0x8000000000023A40, &v43);
      *(v29 + 12) = 2048;
      *(v29 + 14) = [v26 tag];

      _os_log_impl(&dword_0, v27, v28, "AudioSettingsViewController %s Could not find corresponding button for tag %ld", v29, 0x16u);
      sub_2350(v30);
    }

    else
    {
    }

    v31 = v40;
    osloga = sub_1F4D4();
    v32 = sub_1F634();

    if (os_log_type_enabled(osloga, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = v34;
      *v33 = 136315138;
      v39();
      type metadata accessor for EffectControl();
      v35 = sub_1F5F4();
      v37 = v36;

      v38 = sub_211C(v35, v37, &v43);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_0, osloga, v32, "Supported buttons: %s", v33, 0xCu);
      sub_2350(v34);
    }

    goto LABEL_34;
  }

LABEL_26:
  v4 = sub_1F8F4();
  v5 = a1;
  if (!v4)
  {
    goto LABEL_27;
  }

LABEL_3:
  v6 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = sub_1F874();
    }

    else
    {
      if (v6 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_25;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v10 = [v7 tag];
    if (v10 == [v5 tag])
    {
      break;
    }

    ++v6;
    if (v9 == v4)
    {
      goto LABEL_27;
    }
  }

  v11 = [v5 tag];
  if (v11 >= 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  if (qword_35250 != -1)
  {
    swift_once();
  }

  v13 = sub_1F4F4();
  sub_20E4(v13, qword_35258);
  v14 = sub_1F4D4();
  v15 = sub_1F634();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v43 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_211C(0xD000000000000015, 0x8000000000023A40, &v43);
    *(v16 + 12) = 2048;
    *(v16 + 14) = v12;
    _os_log_impl(&dword_0, v14, v15, "%s setting MicMode %ld", v16, 0x16u);
    sub_2350(v17);
  }

  if (v12 == 3)
  {
    v18 = v8;
    if (([v18 isSelected] & 1) == 0)
    {
      [v18 setSelected:{objc_msgSend(v18, "isSelected") ^ 1}];
      v19 = [v18 isSelected];
      v20 = sub_D3CC();
      v21 = sub_D7F8();
      v22 = sub_1DC08(v19, v20 & 1, v21 & 1);
      v23 = (*(&stru_248.size + (swift_isaMask & *v40)))(v22);
      v24 = [v18 isSelected];

      [v23 updateAutomaticMicMode:v24];
      v18 = v23;
    }
  }

  else
  {
    v18 = (*(&stru_248.size + (swift_isaMask & *v40)))();
    [v18 updateMicMode:v12];
  }

  sub_1E410();
  osloga = (*(&stru_248.size + (swift_isaMask & *v40)))();
  [osloga updateMicModeStates];

LABEL_34:
}

unint64_t sub_1377C(void *a1, uint64_t a2)
{
  v3 = v2;
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_184C0(&qword_34CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22300;
  v7 = [a1 leadingAnchor];
  v8 = *(v3 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_containerView);
  v9 = [v8 leadingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];

  *(inited + 32) = v10;
  v11 = [a1 trailingAnchor];
  v12 = [v8 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(inited + 40) = v13;
  v14 = [a1 heightAnchor];
  if (qword_35270 != -1)
  {
    swift_once();
  }

  v15 = [v14 constraintEqualToConstant:*&qword_35278];

  *(inited + 48) = v15;
  sub_17F88(inited);
  if (!a2)
  {
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_222E0;
    v26 = [a1 topAnchor];
    v27 = [v8 topAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    *(v25 + 32) = v28;
    v24 = v25;
    goto LABEL_11;
  }

  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_222E0;
  v17 = [a1 topAnchor];
  v18 = (*(&stru_248.flags + (swift_isaMask & *v3)))();
  result = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v20 = sub_1F874();
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
  {
    v20 = *(v18 + 8 * result + 32);
LABEL_9:
    v21 = v20;

    v22 = [v21 bottomAnchor];

    v23 = [v17 constraintEqualToAnchor:v22 constant:8.0];
    *(v16 + 32) = v23;
    v24 = v16;
LABEL_11:
    sub_17F88(v24);
    return &_swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void sub_13B28()
{
  v1 = *&stru_108.segname[(swift_isaMask & *v0) - 8];
  if ((v1() & 2) != 0)
  {
    v2 = (*&stru_158.sectname[swift_isaMask & *v0])();
    v3 = [v2 view];

    if (v3)
    {
      v4 = [v3 superview];
      if (v4)
      {

        [v0 getInputSelectionHeightConstant];
        v6 = v5;
        v7 = [v3 heightAnchor];
        v8 = [v7 constraintEqualToConstant:v6];

        (*&stru_158.segname[(swift_isaMask & *v0) + 16])(v8);
        sub_184C0(&qword_34CF0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_222F0;
        v10 = [v3 leadingAnchor];
        v11 = [v0 view];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 leadingAnchor];

          v14 = [v10 constraintEqualToAnchor:v13];
          *(v9 + 32) = v14;
          v15 = [v3 trailingAnchor];
          v16 = [v0 view];
          if (v16)
          {
            v17 = v16;
            v18 = [v16 trailingAnchor];

            v19 = [v15 constraintEqualToAnchor:v18];
            *(v9 + 40) = v19;
            v20 = [v3 topAnchor];
            v21 = [v0 view];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 topAnchor];

              v24 = [v20 constraintEqualToAnchor:v23];
              *(v9 + 48) = v24;
              *(v9 + 56) = (*&stru_158.segname[(swift_isaMask & *v0) + 8])();

              return;
            }

            goto LABEL_22;
          }

LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }
  }

  v25 = (*&stru_158.sectname[swift_isaMask & *v0])();
  v26 = [v25 view];

  if (!v26)
  {
    __break(1u);
    goto LABEL_20;
  }

  v27 = [v26 superview];

  if (v27)
  {

    v28 = 0xE300000000000000;
    v29 = 5457241;
  }

  else
  {
    v28 = 0xE200000000000000;
    v29 = 20302;
  }

  if (qword_35250 != -1)
  {
    swift_once();
  }

  v30 = sub_1F4F4();
  sub_20E4(v30, qword_35258);
  v31 = v0;

  v32 = sub_1F4D4();
  v33 = sub_1F634();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = v1();
    v36 = sub_D828(v35);
    v38 = sub_211C(v36, v37, &v40);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    v39 = sub_211C(v29, v28, &v40);

    *(v34 + 14) = v39;
    _os_log_impl(&dword_0, v32, v33, "Not adding input selection constraints, modules=%s, have superview ?=%s", v34, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_140D4(char a1)
{
  v2 = v1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for AudioSettingsViewController();
  objc_msgSendSuper2(&v11, "viewWillAppear:", a1 & 1);
  if (qword_35250 != -1)
  {
    swift_once();
  }

  v4 = sub_1F4F4();
  sub_20E4(v4, qword_35258);
  v5 = sub_1F4D4();
  v6 = sub_1F634();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_211C(0xD000000000000012, 0x8000000000023AA0, &v10);
    _os_log_impl(&dword_0, v5, v6, "%s", v7, 0xCu);
    sub_2350(v8);
  }

  (*&stru_388.sectname[swift_isaMask & *v2])(1);
  sub_10768();
  (*&stru_1A8.segname[(swift_isaMask & *v2) + 8])(1);
  sub_14324(1);
  v9 = (*&stru_158.sectname[swift_isaMask & *v2])();
  [v9 setDiscoveryEnabled:1];
}

void sub_14324(char a1)
{
  v3 = (*(&stru_158.reserved2 + (swift_isaMask & *v1)))();
  v4 = (*&stru_158.sectname[swift_isaMask & *v1])();
  v5 = [v4 view];

  if (v3 <= 1)
  {
    if (v5)
    {
      [v5 alpha];
      v7 = v6;

      if (v7 <= 0.0 || ((*&stru_1A8.segname[swift_isaMask & *v1])() & 1) != 0)
      {
        return;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (!v5)
  {
    goto LABEL_15;
  }

  [v5 alpha];
  v9 = v8;

  if (v9 != 0.0)
  {
    return;
  }

LABEL_8:
  v10 = swift_allocObject();
  *(v10 + 16) = v3 < 2;
  *(v10 + 24) = v1;
  if (a1)
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_18838;
    *(v12 + 24) = v10;
    v15[4] = sub_18844;
    v15[5] = v12;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_10298;
    v15[3] = &unk_2CF28;
    v13 = _Block_copy(v15);
    v14 = v1;

    [v11 animateWithDuration:v13 animations:0.3];

    _Block_release(v13);
  }

  else
  {
    sub_16268(v3 < 2, v1);
  }
}

id sub_14644(char a1)
{
  v2 = v1;
  if (qword_35250 != -1)
  {
    swift_once();
  }

  v4 = sub_1F4F4();
  sub_20E4(v4, qword_35258);
  v5 = sub_1F4D4();
  v6 = sub_1F634();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_211C(0xD000000000000015, 0x8000000000023AC0, &v11);
    _os_log_impl(&dword_0, v5, v6, "%s", v7, 0xCu);
    sub_2350(v8);
  }

  (*&stru_388.sectname[swift_isaMask & *v2])(0);
  (*&stru_1A8.segname[(swift_isaMask & *v2) + 8])(0);
  sub_14324(1);
  v9 = type metadata accessor for AudioSettingsViewController();
  v12.receiver = v2;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "viewWillDisappear:", a1 & 1);
}

void sub_1488C(unint64_t a1)
{
  v2 = v1;
  if (qword_35250 != -1)
  {
    swift_once();
  }

  v4 = sub_1F4F4();
  sub_20E4(v4, qword_35258);
  v5 = sub_1F4D4();
  v6 = sub_1F634();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v46 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_211C(0xD00000000000001ALL, 0x8000000000023AE0, &v46);
    *(v7 + 12) = 2048;
    *(v7 + 14) = a1;
    _os_log_impl(&dword_0, v5, v6, "%s updating animation state with mode %ld", v7, 0x16u);
    sub_2350(v8);
  }

  v9 = (*&stru_108.segname[(swift_isaMask & *v2) + 16])();
  if (!v9)
  {
    v46 = 0u;
    v47 = 0u;
LABEL_17:
    sub_19E00(&v46, &qword_34D38);
LABEL_18:
    v29 = sub_1F4D4();
    v30 = sub_1F644();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v46 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_211C(0xD00000000000001ALL, 0x8000000000023AE0, &v46);
      _os_log_impl(&dword_0, v29, v30, "%s could not retrieve emitter layer", v31, 0xCu);
      sub_2350(v32);
    }

    goto LABEL_20;
  }

  v10 = v9;
  v11 = sub_1F574();
  v12 = [v10 publishedObjectWithName:v11];

  if (v12)
  {
    sub_1F834();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46 = v44;
  v47 = v45;
  if (!*(&v45 + 1))
  {
    goto LABEL_17;
  }

  sub_19F68(0, &qword_34D40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v13 = v44;
  v14 = sub_1F4D4();
  v15 = sub_1F634();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v46 = v18;
    *v16 = 136315394;
    *(v16 + 4) = sub_211C(0xD00000000000001ALL, 0x8000000000023AE0, &v46);
    *(v16 + 12) = 2112;
    *(v16 + 14) = v13;
    *v17 = v13;
    v19 = v13;
    _os_log_impl(&dword_0, v14, v15, "%s emitterLayer = %@", v16, 0x16u);
    sub_19E00(v17, &qword_34D50);

    sub_2350(v18);
  }

  v20 = [v13 emitterCells];
  if (!v20)
  {
    v29 = sub_1F4D4();
    v33 = sub_1F644();
    if (os_log_type_enabled(v29, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v46 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_211C(0xD00000000000001ALL, 0x8000000000023AE0, &v46);
      _os_log_impl(&dword_0, v29, v33, "%s could not retrieve emitter cells", v34, 0xCu);
      sub_2350(v35);
    }

LABEL_20:
    return;
  }

  v21 = v20;
  sub_19F68(0, &qword_34D48);
  sub_1F5E4();

  v22 = sub_1F4D4();
  v23 = sub_1F634();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *&v46 = swift_slowAlloc();
    *v24 = 136315394;
    *(v24 + 4) = sub_211C(0xD00000000000001ALL, 0x8000000000023AE0, &v46);
    *(v24 + 12) = 2080;
    v25 = sub_1F5F4();
    v27 = v26;

    v28 = sub_211C(v25, v27, &v46);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_0, v22, v23, "%s emitterCells = %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v36 = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 0.07);
  if (a1 > 2)
  {
    v38 = 0.03;
    v37 = 0.05;
  }

  else
  {
    v37 = dbl_22840[a1];
    v38 = dbl_22858[a1];
  }

  v39 = CGColorCreateGenericRGB(1.0, 1.0, 1.0, v37);
  v40 = CGColorCreateGenericRGB(1.0, 1.0, 1.0, v38);
  v41 = sub_1F574();
  [v13 setValue:v36 forKeyPath:v41];

  v42 = sub_1F574();
  [v13 setValue:v39 forKeyPath:v42];

  v43 = sub_1F574();
  [v13 setValue:v40 forKeyPath:v43];
}

void sub_150BC(char a1)
{
  v3 = (*&stru_108.segname[(swift_isaMask & *v1) + 16])();
  if (!v3)
  {
    v29 = 0u;
    v30 = 0u;
LABEL_19:
    sub_19E00(&v29, &qword_34D38);
LABEL_20:
    if (qword_35250 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  v4 = v3;
  v5 = sub_1F574();
  v6 = [v4 publishedObjectWithName:v5];

  if (v6)
  {
    sub_1F834();
    swift_unknownObjectRelease();
  }

  else
  {
    *v27 = 0u;
    v28 = 0u;
  }

  v29 = *v27;
  v30 = v28;
  if (!*(&v28 + 1))
  {
    goto LABEL_19;
  }

  sub_19F68(0, &qword_34D40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v7 = v27[0];
  v8 = [v27[0] emitterCells];
  if (!v8)
  {
    if (qword_35250 != -1)
    {
      swift_once();
    }

    v20 = sub_1F4F4();
    sub_20E4(v20, qword_35258);
    v21 = sub_1F4D4();
    v22 = sub_1F644();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v29 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_211C(0xD000000000000012, 0x8000000000023B60, &v29);
      _os_log_impl(&dword_0, v21, v22, "%s could not retrieve emitter cells", v23, 0xCu);
      sub_2350(v24);
    }

    goto LABEL_23;
  }

  v9 = v8;
  sub_19F68(0, &qword_34D48);
  v10 = sub_1F5E4();

  if (v10 >> 62)
  {
    v11 = sub_1F8F4();
    if (v11)
    {
LABEL_11:
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = sub_1F874();
        }

        else
        {
          if (v12 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_30;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        [v13 setEnabled:a1 & 1];

        ++v12;
        if (v15 == v11)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      swift_once();
LABEL_21:
      v16 = sub_1F4F4();
      sub_20E4(v16, qword_35258);
      v7 = sub_1F4D4();
      v17 = sub_1F644();
      if (os_log_type_enabled(v7, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *&v29 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_211C(0xD000000000000012, 0x8000000000023B60, &v29);
        _os_log_impl(&dword_0, v7, v17, "%s could not retrieve emitter layer", v18, 0xCu);
        sub_2350(v19);
      }

LABEL_23:

      return;
    }
  }

  else
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_11;
    }
  }

LABEL_33:

  v25 = *(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_displayLink);
  if (v25)
  {
    v26 = v25;
    [v26 setPaused:(a1 & 1) == 0];
  }
}

id sub_155DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1F574();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_15654(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_modules] = 3;
  *&v3[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_previewView] = 0;
  *&v3[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_displayLink] = 0;
  v7 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_containerView;
  *&v4[v7] = [objc_allocWithZone(UIView) init];
  v8 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_standardButton;
  if (qword_35280 != -1)
  {
    swift_once();
  }

  v32[18] = xmmword_35A70;
  v32[19] = unk_35A80;
  v32[20] = xmmword_35A90;
  v32[16] = xmmword_35A50;
  v32[17] = unk_35A60;
  sub_DDD0();
  *&v4[v8] = v9;
  v10 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_voiceIsolationButton;
  if (qword_35288 != -1)
  {
    swift_once();
  }

  v32[13] = xmmword_35AC0;
  v32[14] = unk_35AD0;
  v32[15] = xmmword_35AE0;
  v32[11] = xmmword_35AA0;
  v32[12] = unk_35AB0;
  sub_DDD0();
  *&v4[v10] = v11;
  v12 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_wideSpectrumButton;
  if (qword_35290 != -1)
  {
    swift_once();
  }

  v32[8] = xmmword_35B10;
  v32[9] = unk_35B20;
  v32[10] = xmmword_35B30;
  v32[6] = xmmword_35AF0;
  v32[7] = unk_35B00;
  sub_DDD0();
  *&v4[v12] = v13;
  v14 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_autoButton;
  if (qword_35298 != -1)
  {
    swift_once();
  }

  v32[3] = xmmword_35B60;
  v32[4] = unk_35B70;
  v32[5] = xmmword_35B80;
  v32[1] = xmmword_35B40;
  v32[2] = unk_35B50;
  sub_DDD0();
  *&v4[v14] = v15;
  v16 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_inputSelectionViewController;
  v17 = objc_allocWithZone(AVInputViewController);
  v18 = sub_1F574();
  v19 = [v17 initWithBundleID:v18];

  *&v4[v16] = v19;
  v20 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_inputSelectionViewHeightConstraint;
  *&v4[v20] = [objc_allocWithZone(NSLayoutConstraint) init];
  *&v4[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_currentConstraints] = &_swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_currentMicInputCount] = -1;
  v4[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_isModuleVisible] = 0;
  v21 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_micModesTopConstraint;
  *&v4[v21] = [objc_allocWithZone(NSLayoutConstraint) init];
  v22 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_micModesLayoutGuide;
  *&v4[v22] = [objc_allocWithZone(UILayoutGuide) init];
  v23 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_layoutGuideTopConstraint;
  *&v4[v23] = [objc_allocWithZone(NSLayoutConstraint) init];
  v24 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_layoutGuideHeightConstraint;
  *&v4[v24] = [objc_allocWithZone(NSLayoutConstraint) init];
  v25 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_micModesBackgroundView;
  *&v4[v25] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v26 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_unavailableLabel;
  *&v4[v26] = sub_EF20();
  v4[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_shouldLoadFromSensor] = 0;
  *&v4[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_contentModuleContext] = 0;
  v27 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_audioEffectsManager;
  *&v4[v27] = [objc_allocWithZone(AudioEffectsManager) init];
  *&v4[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_compactContinuousCornerRadius] = 0;
  v28 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_platterStrokeVisualStylingProvider;
  *&v4[v28] = [objc_allocWithZone(MTVisualStylingProvider) init];
  if (a2)
  {
    v29 = sub_1F574();
  }

  else
  {
    v29 = 0;
  }

  v32[0].receiver = v4;
  v32[0].super_class = type metadata accessor for AudioSettingsViewController();
  v30 = [(objc_super *)v32 initWithNibName:v29 bundle:a3];

  return v30;
}

id sub_15AE8(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_modules] = 3;
  *&v1[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_previewView] = 0;
  *&v1[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_displayLink] = 0;
  v4 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_containerView;
  *&v2[v4] = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_standardButton;
  if (qword_35280 != -1)
  {
    swift_once();
  }

  v28[18] = xmmword_35A70;
  v28[19] = unk_35A80;
  v28[20] = xmmword_35A90;
  v28[16] = xmmword_35A50;
  v28[17] = unk_35A60;
  sub_DDD0();
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_voiceIsolationButton;
  if (qword_35288 != -1)
  {
    swift_once();
  }

  v28[13] = xmmword_35AC0;
  v28[14] = unk_35AD0;
  v28[15] = xmmword_35AE0;
  v28[11] = xmmword_35AA0;
  v28[12] = unk_35AB0;
  sub_DDD0();
  *&v2[v7] = v8;
  v9 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_wideSpectrumButton;
  if (qword_35290 != -1)
  {
    swift_once();
  }

  v28[8] = xmmword_35B10;
  v28[9] = unk_35B20;
  v28[10] = xmmword_35B30;
  v28[6] = xmmword_35AF0;
  v28[7] = unk_35B00;
  sub_DDD0();
  *&v2[v9] = v10;
  v11 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_autoButton;
  if (qword_35298 != -1)
  {
    swift_once();
  }

  v28[3] = xmmword_35B60;
  v28[4] = unk_35B70;
  v28[5] = xmmword_35B80;
  v28[1] = xmmword_35B40;
  v28[2] = unk_35B50;
  sub_DDD0();
  *&v2[v11] = v12;
  v13 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_inputSelectionViewController;
  v14 = objc_allocWithZone(AVInputViewController);
  v15 = sub_1F574();
  v16 = [v14 initWithBundleID:v15];

  *&v2[v13] = v16;
  v17 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_inputSelectionViewHeightConstraint;
  *&v2[v17] = [objc_allocWithZone(NSLayoutConstraint) init];
  *&v2[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_currentConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_currentMicInputCount] = -1;
  v2[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_isModuleVisible] = 0;
  v18 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_micModesTopConstraint;
  *&v2[v18] = [objc_allocWithZone(NSLayoutConstraint) init];
  v19 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_micModesLayoutGuide;
  *&v2[v19] = [objc_allocWithZone(UILayoutGuide) init];
  v20 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_layoutGuideTopConstraint;
  *&v2[v20] = [objc_allocWithZone(NSLayoutConstraint) init];
  v21 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_layoutGuideHeightConstraint;
  *&v2[v21] = [objc_allocWithZone(NSLayoutConstraint) init];
  v22 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_micModesBackgroundView;
  *&v2[v22] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_unavailableLabel;
  *&v2[v23] = sub_EF20();
  v2[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_shouldLoadFromSensor] = 0;
  *&v2[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_contentModuleContext] = 0;
  v24 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_audioEffectsManager;
  *&v2[v24] = [objc_allocWithZone(AudioEffectsManager) init];
  *&v2[OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_compactContinuousCornerRadius] = 0;
  v25 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_platterStrokeVisualStylingProvider;
  *&v2[v25] = [objc_allocWithZone(MTVisualStylingProvider) init];
  v28[0].receiver = v2;
  v28[0].super_class = type metadata accessor for AudioSettingsViewController();
  v26 = [(objc_super *)v28 initWithCoder:a1];

  if (v26)
  {
  }

  return v26;
}

uint64_t sub_1608C()
{
  v1 = v0;
  if (qword_35250 != -1)
  {
    swift_once();
  }

  v2 = sub_1F4F4();
  sub_20E4(v2, qword_35258);
  v3 = sub_1F4D4();
  v4 = sub_1F634();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_211C(0xD000000000000012, 0x8000000000023B80, &v9);
    _os_log_impl(&dword_0, v3, v4, "%s", v5, 0xCu);
    sub_2350(v6);
  }

  v7 = *&stru_338.segname[swift_isaMask & *v1];

  return v7();
}

void sub_16268(char a1, void *a2)
{
  v4 = (*&stru_158.sectname[swift_isaMask & *a2])();
  v5 = [v4 view];

  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = 1.0;
  v7 = 0.0;
  if (a1)
  {
    v6 = 0.0;
  }

  [v5 setAlpha:v6];

  v8 = *&stru_108.segname[(swift_isaMask & *a2) - 8];
  if (v8())
  {
    v9 = (*(&stru_1A8.size + (swift_isaMask & *a2)))();
    if ((a1 & 1) == 0 && (v8() & 2) != 0)
    {
      v10 = [a2 getInputSelectionHeightConstant];
      v7 = v11;
      if ((v8)(v10))
      {
        v7 = v7 + 20.0;
      }
    }

    [v9 setConstant:v7];

    v12 = [a2 view];
    if (v12)
    {
      v13 = v12;
      [v12 invalidateIntrinsicContentSize];

      v14 = [a2 view];
      if (v14)
      {
        v15 = v14;
        [v14 setNeedsLayout];

        v16 = [a2 view];
        if (v16)
        {
          v17 = v16;
          [v16 layoutIfNeeded];

          return;
        }

LABEL_18:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

double sub_16548()
{
  v0 = objc_opt_self();
  v1 = sub_1F574();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_1F584();
  v5 = v4;

  v6 = [objc_opt_self() systemBlueColor];
  LODWORD(xmmword_35A50) = 66048;
  *(&xmmword_35A50 + 1) = v3;
  unk_35A60 = v5;
  qword_35A68 = 6515053;
  *&xmmword_35A70 = 0xE300000000000000;
  *(&xmmword_35A70 + 1) = 6515053;
  unk_35A80 = 0xE300000000000000;
  qword_35A88 = v6;
  result = 23.0;
  xmmword_35A90 = xmmword_22320;
  return result;
}

double sub_16654()
{
  v0 = objc_opt_self();
  v1 = sub_1F574();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_1F584();
  v5 = v4;

  v6 = [objc_opt_self() systemBlueColor];
  LODWORD(xmmword_35AA0) = 66050;
  *(&xmmword_35AA0 + 1) = v3;
  unk_35AB0 = v5;
  qword_35AB8 = 0xD000000000000012;
  *&xmmword_35AC0 = 0x8000000000024330;
  *(&xmmword_35AC0 + 1) = 0xD000000000000012;
  unk_35AD0 = 0x8000000000024330;
  qword_35AD8 = v6;
  result = 27.0;
  xmmword_35AE0 = xmmword_22330;
  return result;
}

double sub_16768()
{
  v0 = objc_opt_self();
  v1 = sub_1F574();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_1F584();
  v5 = v4;

  v6 = [objc_opt_self() systemBlueColor];
  LODWORD(xmmword_35AF0) = 66049;
  *(&xmmword_35AF0 + 1) = v3;
  unk_35B00 = v5;
  qword_35B08 = 0xD000000000000010;
  *&xmmword_35B10 = 0x80000000000242F0;
  *(&xmmword_35B10 + 1) = 0xD000000000000010;
  unk_35B20 = 0x80000000000242F0;
  qword_35B28 = v6;
  result = 32.0;
  xmmword_35B30 = xmmword_22340;
  return result;
}

double sub_1687C()
{
  v0 = objc_opt_self();
  v1 = sub_1F574();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_1F584();
  v5 = v4;

  v6 = [objc_opt_self() systemBlueColor];
  LODWORD(xmmword_35B40) = 66051;
  *(&xmmword_35B40 + 1) = v3;
  unk_35B50 = v5;
  qword_35B58 = 0x6D726F6665766177;
  *&xmmword_35B60 = 0xE800000000000000;
  *(&xmmword_35B60 + 1) = 0x6D726F6665766177;
  unk_35B70 = 0xE800000000000000;
  qword_35B78 = v6;
  result = 23.0;
  xmmword_35B80 = xmmword_22320;
  return result;
}

uint64_t sub_16990@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_19500(a2, v4);
}

id sub_169E8(int a1)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_184C0(&qword_34D58);
  __chkstk_darwin(v3 - 8);
  v59 = &v50 - v4;
  v5 = sub_184C0(&qword_34D60);
  __chkstk_darwin(v5 - 8);
  v57 = &v50 - v6;
  v7 = sub_184C0(&qword_34D68);
  __chkstk_darwin(v7 - 8);
  v54 = &v50 - v8;
  v51 = sub_1F6D4();
  v9 = *(v51 - 8);
  __chkstk_darwin(v51);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1F704();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1F7E4();
  v52 = *(v53 - 8);
  v16 = __chkstk_darwin(v53);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v50 - v19;
  v58 = sub_1F464();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1F454();
  v61[0] = [objc_opt_self() systemFontOfSize:17.0];
  sub_19538();
  sub_1F474();
  sub_1F7D4();

  sub_1F7C4();
  v22 = sub_1F574();
  v23 = [objc_opt_self() systemImageNamed:v22];

  sub_1F7A4();
  (*(v13 + 104))(v15, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v12);
  sub_1F724();
  sub_1F714();
  (*(v9 + 104))(v11, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v51);
  sub_1F6E4();
  sub_1F734();
  sub_1F6F4();
  v24 = [objc_opt_self() configurationWithPointSize:13.0];
  sub_1F6C4();
  sub_19F68(0, &qword_34D78);
  v25 = v52;
  v26 = *(v52 + 16);
  v27 = v53;
  v26(v18, v20, v53);
  v28 = sub_1F7F4();
  v29 = swift_allocObject();
  v30 = *(v2 + 3);
  v29[3] = *(v2 + 2);
  v29[4] = v30;
  v29[5] = *(v2 + 4);
  v31 = *(v2 + 1);
  v29[1] = *v2;
  v29[2] = v31;
  aBlock[4] = sub_1958C;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17538;
  aBlock[3] = &unk_2CF78;
  v32 = _Block_copy(aBlock);
  sub_19500(v2, v61);

  [v28 setConfigurationUpdateHandler:v32];
  _Block_release(v32);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  v35 = *v2;
  *(v34 + 40) = *(v2 + 1);
  v36 = *(v2 + 3);
  *(v34 + 56) = *(v2 + 2);
  *(v34 + 72) = v36;
  *(v34 + 88) = *(v2 + 4);
  *(v34 + 24) = v35;
  sub_19500(v2, v61);
  v37 = v28;
  v38 = v54;
  sub_1F534();
  v39 = sub_1F524();
  (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  sub_1F784();
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  v42 = *v2;
  *(v41 + 40) = *(v2 + 1);
  v43 = *(v2 + 3);
  *(v41 + 56) = *(v2 + 2);
  *(v41 + 72) = v43;
  *(v41 + 88) = *(v2 + 4);
  *(v41 + 24) = v42;
  sub_19500(v2, v61);
  v44 = v57;
  sub_1F514();
  v45 = sub_1F504();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  sub_1F774();
  v46 = v59;
  v26(v59, v20, v27);
  (*(v25 + 56))(v46, 0, 1, v27);
  sub_1F814();
  v47 = v37;
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
  v48 = v47;
  [v48 setContentHorizontalAlignment:4];
  [v48 setSelected:v60 & 1];

  [v48 setTag:*v2];
  (*(v25 + 8))(v20, v27);
  (*(v56 + 8))(v55, v58);
  return v48;
}

uint64_t sub_17264(void *a1, uint64_t a2)
{
  v4 = sub_184C0(&qword_34D58);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = sub_1F7E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1F804();
  v14 = *(v11 + 48);
  if (v14(v9, 1, v10) == 1)
  {
    sub_1F7D4();
    if (v14(v9, 1, v10) != 1)
    {
      sub_19E00(v9, &qword_34D58);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  if (([a1 isHighlighted] & 1) != 0 || objc_msgSend(a1, "isSelected"))
  {
    v15 = *(a2 + 56);
    sub_1F764();
    v16 = objc_opt_self();
    v17 = &selRef_systemWhiteColor;
  }

  else
  {
    v18 = objc_opt_self();
    v19 = [v18 systemWhiteColor];
    sub_1F764();
    v16 = v18;
    v17 = &selRef_clearColor;
  }

  v20 = [v16 *v17];
  sub_1F754();
  (*(v11 + 16))(v7, v13, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  sub_1F814();
  return (*(v11 + 8))(v13, v10);
}

void sub_17538(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_175A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1F464();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = *(v7 + 16);
  if (!Strong)
  {
    return v11(a3, a1, v6);
  }

  v12 = Strong;
  v11(v9, a1, v6);
  v15 = [objc_opt_self() systemFontOfSize:17.0];
  sub_19538();
  sub_1F474();
  if ([v12 isSelected])
  {
    v13 = *(a2 + 56);
  }

  else
  {
    v13 = [objc_opt_self() systemWhiteColor];
  }

  v15 = v13;
  sub_19DAC();
  sub_1F474();

  return (*(v7 + 32))(a3, v9, v6);
}

void sub_17788()
{
  if (qword_352A0 != -1)
  {
    swift_once();
  }

  if ((*(&stru_20.filesize + (swift_isaMask & *qword_35B90)))())
  {
    v1 = *&stru_158.sectname[swift_isaMask & *v0];
    v2 = v1();
    [v2 preferredContentSize];
    v4 = v3;

    if (v4 > 0.0)
    {
      v5 = v1();
      [v5 preferredContentSize];
    }
  }
}

id sub_1790C()
{
  result = [objc_allocWithZone(type metadata accessor for Features()) init];
  qword_35B90 = result;
  return result;
}

id sub_1793C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_17970()
{
  if (qword_352A0 != -1)
  {
    swift_once();
  }

  v0 = qword_35B90;

  return v0;
}

uint64_t sub_179CC()
{
  v3 = &type metadata for Features.InputSelection;
  v4 = sub_196E4();
  v0 = sub_1F4C4();
  sub_2350(v2);
  return v0 & 1;
}

Swift::Int sub_17A6C()
{
  sub_1F924();
  sub_1F934(0);
  return sub_1F944();
}

Swift::Int sub_17AB0()
{
  sub_1F924();
  sub_1F934(0);
  return sub_1F944();
}

id sub_17AF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Features();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_17B7C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_17BB8(uint64_t a1, unint64_t a2)
{
  v3 = sub_17C04(a1, a2);
  sub_17D34(&off_2CD80);
  return v3;
}

char *sub_17C04(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_17E20(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1F894();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1F5B4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_17E20(v10, 0);
        result = sub_1F864();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_17D34(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_17E94(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_17E20(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_184C0(&unk_350E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_17E94(char *result, int64_t a2, char a3, char *a4)
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
    sub_184C0(&unk_350E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_17F88(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1F8F4();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1F8F4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_18078(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_18118(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_18078(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1F8F4();
LABEL_9:
  result = sub_1F884();
  *v1 = result;
  return result;
}

uint64_t sub_18118(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1F8F4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_1F8F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_19F20(&qword_34F78, &qword_34F70);
          for (i = 0; i != v6; ++i)
          {
            sub_184C0(&qword_34F70);
            v9 = sub_182CC(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_19F68(0, &qword_34F68);
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

void (*sub_182CC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1F874();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1834C;
  }

  __break(1u);
  return result;
}

unint64_t sub_18354(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

BOOL sub_18388(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (sub_1A7AC(*(a1 + 1), *(a2 + 1)) && ((*(a1 + 2) ^ *(a2 + 2)) & 1) == 0 && ((*(a1 + 3) ^ *(a2 + 3)) & 1) == 0 && (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2) || (sub_1F914() & 1) != 0) && (*(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4) || (sub_1F914() & 1) != 0) && (*(a1 + 5) == *(a2 + 5) && *(a1 + 6) == *(a2 + 6) || (sub_1F914() & 1) != 0))
  {
    sub_19F68(0, &unk_34FC0);
    if ((sub_1F6B4() & 1) != 0 && a1[8] == a2[8])
    {
      return a1[9] == a2[9];
    }
  }

  return 0;
}

uint64_t sub_184C0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_1852C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = (*&stru_158.segname[(swift_isaMask & *v2) + 8])();
  [v3 preferredContentSize];
  [v4 setConstant:v5];

  v6 = (*&stru_158.sectname[swift_isaMask & *v2])();
  v7 = [v6 view];

  if (!v7)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v7 alpha];
  v9 = v8;

  v10 = 0.0;
  if (v9 > 0.0)
  {
    v11 = *&stru_108.segname[(swift_isaMask & *v2) - 8];
    if ((v11() & 2) != 0)
    {
      v12 = [v2 getInputSelectionHeightConstant];
      v10 = v13;
      if ((v11)(v12))
      {
        v10 = v10 + 20.0;
      }
    }
  }

  v14 = (*(&stru_1A8.size + (swift_isaMask & *v2)))();
  [v14 setConstant:v10];

  v15 = [v2 view];
  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = v15;
  [v15 invalidateIntrinsicContentSize];

  v17 = [v2 view];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17;
  [v17 setNeedsLayout];

  v19 = [v2 view];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v20 = v19;
  [v19 layoutIfNeeded];
}

uint64_t sub_187B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1886C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_188A4()
{
  v38 = sub_1F4A4();
  v1 = *(v38 - 8);
  v2 = __chkstk_darwin(v38);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*&stru_108.segname[(swift_isaMask & *v0) + 16])(v2);
  if (!v5)
  {
    v41 = 0u;
    v42 = 0u;
LABEL_12:
    sub_19E00(&v41, &qword_34D38);
LABEL_13:
    if (qword_35250 == -1)
    {
LABEL_14:
      v14 = sub_1F4F4();
      sub_20E4(v14, qword_35258);
      v15 = sub_1F4D4();
      v16 = sub_1F644();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *&v41 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_211C(0xD000000000000015, 0x8000000000024280, &v41);
        _os_log_impl(&dword_0, v15, v16, "%s could not retrieve emitter layer", v17, 0xCu);
        sub_2350(v18);
      }

      return;
    }

LABEL_42:
    swift_once();
    goto LABEL_14;
  }

  v6 = v5;
  v7 = sub_1F574();
  v8 = [v6 publishedObjectWithName:v7];

  if (v8)
  {
    sub_1F834();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (!*(&v40 + 1))
  {
    goto LABEL_12;
  }

  sub_19F68(0, &qword_34D40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v37 = v39;
  v9 = [v39 emitterCells];
  if (v9)
  {
    v10 = v9;
    sub_19F68(0, &qword_34D48);
    v11 = sub_1F5E4();

    if ((v11 & 0xC000000000000001) != 0 || *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) >= 3uLL)
    {
      v12 = 0;
      v13 = (v1 + 8);
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v29 = sub_1F874();
          v30 = sub_1F874();
        }

        else
        {
          v30 = *(v11 + 8 * v12 + 32);
          v29 = v30;
        }

        v31 = [v30 emitterBehaviors];

        if (v31)
        {
          sub_19F68(0, &qword_34FB8);
          v32 = sub_1F5E4();
        }

        else
        {
          v32 = 0;
        }

        v33 = *(&off_2CE50 + v12 + 4);

        sub_1F494();
        sub_1F484();
        v35 = v34;
        (*v13)(v4, v38);
        v36 = *(v33 + 16);
        if (!v36)
        {
          break;
        }

        sin(v35 * *(v33 + 32));
        if (v36 == 1)
        {
          goto LABEL_39;
        }

        if (v36 < 3)
        {
          goto LABEL_40;
        }

        if (v32)
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            v24 = sub_1F874();
          }

          else
          {
            if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)) < 2uLL)
            {
              goto LABEL_41;
            }

            v24 = *(v32 + 40);
          }

          v25 = v24;

          isa = sub_1F4B4().super.super.isa;
          v27 = sub_1F574();
          [v25 setValue:isa forKeyPath:v27];
        }

        ++v12;
        v28 = sub_1F574();
        [v37 reloadValueForKeyPath:v28];

        [v29 setEmitterBehaviors:v31];
        if (v12 == 3)
        {

          sub_184C0(&qword_34FB0);
          swift_arrayDestroy();
          return;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_44;
  }

  sub_184C0(&qword_34FB0);
  swift_arrayDestroy();
  if (qword_35250 != -1)
  {
LABEL_44:
    swift_once();
  }

  v19 = sub_1F4F4();
  sub_20E4(v19, qword_35258);
  v20 = sub_1F4D4();
  v21 = sub_1F644();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v41 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_211C(0xD000000000000015, 0x8000000000024280, &v41);
    _os_log_impl(&dword_0, v20, v21, "%s could not retrieve emitter cells", v22, 0xCu);
    sub_2350(v23);
  }
}

uint64_t sub_19120(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1F544();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1F564();
  v7 = *(v20 - 8);
  __chkstk_darwin(v20);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_35250 != -1)
  {
    swift_once();
  }

  v10 = sub_1F4F4();
  sub_20E4(v10, qword_35258);
  v11 = sub_1F4D4();
  v12 = sub_1F634();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_211C(0xD000000000000032, 0x8000000000024210, aBlock);
    *(v13 + 12) = 2048;
    *(v13 + 14) = a1;
    _os_log_impl(&dword_0, v11, v12, "%s count=%ld", v13, 0x16u);
    sub_2350(v14);
  }

  sub_19F68(0, &qword_34F90);
  v15 = sub_1F664();
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = a1;
  aBlock[4] = sub_19E60;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10298;
  aBlock[3] = &unk_2D3D8;
  v17 = _Block_copy(aBlock);
  v18 = v2;

  sub_1F554();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_19EC8();
  sub_184C0(&qword_34FA0);
  sub_19F20(&qword_34FA8, &qword_34FA0);
  sub_1F854();
  sub_1F674();
  _Block_release(v17);

  (*(v21 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v20);
}

unint64_t sub_19538()
{
  result = qword_34D70;
  if (!qword_34D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D70);
  }

  return result;
}

uint64_t sub_195A0()
{

  return _swift_deallocObject(v0, 104, 7);
}

id sub_195F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong isSelected])
    {

      v3 = *(v0 + 80);

      return v3;
    }

    else
    {
      v6 = [objc_opt_self() systemWhiteColor];

      return v6;
    }
  }

  else
  {
    v5 = [objc_opt_self() labelColor];

    return v5;
  }
}

unint64_t sub_196E4()
{
  result = qword_34D80;
  if (!qword_34D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D80);
  }

  return result;
}

unint64_t sub_19760()
{
  result = qword_34D88;
  if (!qword_34D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D88);
  }

  return result;
}

unint64_t sub_197B8()
{
  result = qword_34D90;
  if (!qword_34D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D90);
  }

  return result;
}

unint64_t sub_19810()
{
  result = qword_34D98;
  if (!qword_34D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D98);
  }

  return result;
}

unint64_t sub_19868()
{
  result = qword_34DA0;
  if (!qword_34DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34DA0);
  }

  return result;
}

unint64_t sub_198C0()
{
  result = qword_34DA8;
  if (!qword_34DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34DA8);
  }

  return result;
}

unint64_t sub_19918()
{
  result = qword_34DB0;
  if (!qword_34DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34DB0);
  }

  return result;
}

unint64_t sub_19970()
{
  result = qword_34DB8;
  if (!qword_34DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34DB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MicMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MicMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_19B34(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_19B50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_19B98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Features.InputSelection(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Features.InputSelection(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 sub_19CEC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_19D0C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_19D18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_19D64(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_19DAC()
{
  result = qword_34F88;
  if (!qword_34F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34F88);
  }

  return result;
}

uint64_t sub_19E00(uint64_t a1, uint64_t *a2)
{
  v3 = sub_184C0(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_19EC8()
{
  result = qword_34F98;
  if (!qword_34F98)
  {
    sub_1F544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34F98);
  }

  return result;
}

uint64_t sub_19F20(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_19D64(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19F68(uint64_t a1, unint64_t *a2)
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

uint64_t *sub_19FB4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1A074()
{
  sub_1A6AC();
  v1 = v0;
  oslog = sub_1F824();
  v2 = sub_1F654();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    v5 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule32AudioSettingsControlCenterModule_contentModuleContext;
    swift_beginAccess();
    v6 = *&v1[v5];
    sub_184C0(&qword_350D8);
    v7 = sub_1F594();
    v9 = sub_211C(v7, v8, &v11);

    *(v3 + 4) = v9;
    _os_log_impl(&dword_0, oslog, v2, "set content module context: %s", v3, 0xCu);
    sub_2350(v4);
  }

  else
  {
  }
}

void *sub_1A1F8()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule32AudioSettingsControlCenterModule_contentModuleContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A244(void *a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule32AudioSettingsControlCenterModule_contentModuleContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1A074();
}

void (*sub_1A2AC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A310;
}

void sub_1A310(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A074();
  }
}

void sub_1A344(void *a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule32AudioSettingsControlCenterModule_contentModuleContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1A074();
}

void *sub_1A420(void *a1)
{
  v2 = v1;
  type metadata accessor for AudioSettingsViewController();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = v4;
  if (!a1)
  {
    v8 = v4;
    goto LABEL_5;
  }

  v6 = v4;
  if ([a1 environment])
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  (*&stru_248.sectname[swift_isaMask & *v5])(v7);
  v9 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule32AudioSettingsControlCenterModule_contentModuleContext;
  swift_beginAccess();
  v10 = *(v2 + v9);
  v11 = *&stru_248.segname[(swift_isaMask & *v5) + 8];
  v12 = v10;
  v11(v10);

  return v5;
}

id sub_1A5B0()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC34AudioConferenceControlCenterModule32AudioSettingsControlCenterModule_contentModuleContext] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1A640()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1A6AC()
{
  result = qword_350D0;
  if (!qword_350D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_350D0);
  }

  return result;
}

uint64_t sub_1A6F8()
{
  v0 = sub_1F4F4();
  sub_19FB4(v0, qword_35938);
  sub_20E4(v0, qword_35938);
  return sub_1F4E4();
}

Swift::Int sub_1A7E4(unsigned __int8 a1)
{
  sub_1F924();
  sub_1F934(a1);
  return sub_1F944();
}

id sub_1A9E8()
{
  v0 = sub_1F704();
  v1 = *(v0 - 8);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1F7E4();
  v5 = *(v4 - 8);
  v6 = (__chkstk_darwin)();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = sub_1F574();
  v12 = [objc_opt_self() _systemImageNamed:v11];

  sub_1F7B4();
  v13 = v12;
  sub_1F7A4();
  (*(v1 + 104))(v3, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v0);
  sub_1F724();
  sub_1F744();
  sub_1F714();
  sub_1F734();
  sub_1F6F4();
  v14 = [objc_opt_self() configurationWithPointSize:13.0];
  sub_1F6C4();
  sub_19F68(0, &qword_34D78);
  (*(v5 + 16))(v8, v10, v4);
  v15 = sub_1F7F4();
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = v15;
  LODWORD(v17) = 1144750080;
  [v16 setContentHuggingPriority:0 forAxis:v17];
  [v16 setContentHorizontalAlignment:1];

  v18 = [objc_opt_self() clearColor];
  [v16 setBackgroundColor:v18];

  [v16 setContentMode:7];
  [v16 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];

  (*(v5 + 8))(v10, v4);
  return v16;
}

void sub_1AD50()
{
  v0 = sub_1F7E4();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = sub_1F574();
  v8 = [objc_opt_self() _systemImageNamed:v7];

  if (v8)
  {
    v9 = [v8 imageWithRenderingMode:2];

    v10 = v9;
    sub_1F7B4();
    sub_1F7A4();
    sub_19F68(0, &qword_34D78);
    (*(v1 + 16))(v4, v6, v0);
    v11 = sub_1F7F4();
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v12) = 1144750080;
    [v11 setContentHuggingPriority:0 forAxis:v12];
    v13 = [objc_opt_self() systemLightGrayColor];
    [v11 setTintColor:v13];

    [v11 setHidden:1];
    [v11 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
    v14 = [v11 imageView];
    if (v14)
    {
      v15 = v14;
      [v14 setMaximumContentSizeCategory:UIContentSizeCategoryMedium];
    }

    v16 = [v11 _shouldReverseLayoutDirection];
    v17 = -1.57079633;
    if (v16)
    {
      v17 = 1.57079633;
    }

    v18 = *&CGAffineTransformIdentity.c;
    *&v25.a = *&CGAffineTransformIdentity.a;
    *&v25.c = v18;
    *&v25.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v24, &v25, v17);
    tx = v24.tx;
    ty = v24.ty;
    v22 = *&v24.c;
    v23 = *&v24.a;
    v21 = [v11 layer];

    *&v25.a = v23;
    *&v25.c = v22;
    v25.tx = tx;
    v25.ty = ty;
    [v21 setAffineTransform:&v25];

    (*(v1 + 8))(v6, v0);
  }

  else
  {
    __break(1u);
  }
}

id sub_1B0AC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = sub_1F574();
  [v0 setText:v1];

  v2 = v0;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setHidden:1];

  LODWORD(v3) = 1144750080;
  [v2 setContentHuggingPriority:1 forAxis:v3];
  v4 = [objc_opt_self() systemFontOfSize:10.0];
  [v2 setFont:v4];

  return v2;
}

id sub_1B1C4()
{
  v0 = [objc_allocWithZone(UISlider) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setHidden:1];

  [v0 _setSliderStyle:110];
  v1 = [objc_allocWithZone(_UISliderFluidConfiguration) init];
  [v1 setStretchLimit:13.0];
  [v1 setExpansionFactor:1.5];
  [v0 _setSliderConfiguration:v1];

  return v0;
}

id sub_1B2C0()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = sub_1F574();
  [v0 setText:v1];

  v2 = v0;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setHidden:1];

  LODWORD(v3) = 1144750080;
  [v2 setContentHuggingPriority:1 forAxis:v3];
  [v2 setNumberOfLines:0];
  [v2 setLineBreakMode:0];
  v4 = [objc_opt_self() systemFontOfSize:13.0];
  [v2 setFont:v4];

  return v2;
}

id sub_1B410()
{
  result = [objc_opt_self() materialViewWithRecipe:0];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_categoriesToVisualStylingProviders;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1B56C()
{
  sub_184C0(&qword_34CF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22900;
  *(v0 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:2];
  *(v0 + 40) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  return v0;
}

uint64_t sub_1B644(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_requiredVisualStyleCategories;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1B72C()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B770(char a1)
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_isExpanded;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B820()
{
  v1 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_buttonTitle);

  return v1;
}

id sub_1B86C()
{
  v0 = objc_allocWithZone(UIControl);

  return [v0 init];
}

id sub_1B8B4()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

void sub_1B998(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v71[1] = a5;
  v71[2] = a8;
  v79 = a6;
  v76 = a2;
  v77 = a3;
  v14 = sub_184C0(&qword_34D58);
  __chkstk_darwin(v14 - 8);
  v75 = v71 - v15;
  v16 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_buttonGlyph;
  v17 = sub_1A9E8();
  v74 = v16;
  *&v10[v16] = v17;
  v18 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_expandChevron;
  sub_1AD50();
  *&v10[v18] = v19;
  v20 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_intensityRow;
  *&v10[v20] = sub_1B0AC();
  v21 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_continuousSlider;
  *&v10[v21] = sub_1B1C4();
  v22 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_descriptionLabel;
  v23 = sub_1B2C0();
  v78 = v22;
  *&v10[v22] = v23;
  v24 = [objc_opt_self() materialViewWithRecipe:0];
  if (!v24)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v80 = a9;
  *&v10[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_backgroundView] = v24;
  v25 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_categoriesToVisualStylingProviders;
  *&v10[v25] = sub_1E6B8(&_swiftEmptyArrayStorage);
  v26 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_requiredVisualStyleCategories;
  sub_184C0(&qword_34CF0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22900;
  *(v27 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:2];
  *(v27 + 40) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  *&v10[v26] = v27;
  v10[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_isExpanded] = 0;
  v28 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_imageBackgroundView;
  *&v10[v28] = [objc_allocWithZone(UIControl) init];
  v29 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectTitleLabel;
  v30 = [objc_allocWithZone(UILabel) init];
  v72 = v29;
  *&v10[v29] = v30;
  v10[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_controlType] = a1;
  v31 = &v10[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_buttonTitle];
  *v31 = v77;
  v31[1] = a4;
  v32 = *&v10[v21];

  v77 = a7;
  [v32 setMaximumValueImage:a7];
  v33 = *&v10[v20];
  v73 = a4;
  if (v79)
  {
    v34 = v33;

    v35 = sub_1F574();
  }

  else
  {
    v36 = v33;
    v35 = 0;
  }

  [v33 setText:v35];

  v37 = *&v10[v78];
  if (v80)
  {
    v38 = v37;

    v39 = sub_1F574();
  }

  else
  {
    v40 = v37;
    v39 = 0;
  }

  [v37 setText:v39];

  v41 = objc_opt_self();
  v42 = sub_1F574();
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v44 = objc_opt_self();
  v45 = [v44 bundleForClass:ObjCClassFromMetadata];
  v46 = [v41 _visualStylingProviderForStyleSetNamed:v42 inBundle:v45];

  if (!v46)
  {
    goto LABEL_17;
  }

  *&v10[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_platterFillVisualStylingProvider] = v46;
  v47 = sub_1F574();
  v48 = [v44 bundleForClass:ObjCClassFromMetadata];
  v49 = [v41 _visualStylingProviderForStyleSetNamed:v47 inBundle:v48];

  if (!v49)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *&v10[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider] = v49;
  v50 = [v41 _visualStylingProviderForRecipe:101 andCategory:1];
  if (!v50)
  {
LABEL_19:
    __break(1u);
    return;
  }

  *&v10[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_sliderStylingProvider] = v50;
  v51 = objc_allocWithZone(UIImageView);
  v52 = v76;
  v53 = [v51 initWithImage:v76];
  v54 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectImageView;
  *&v10[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectImageView] = v53;
  v55 = *&v10[v74];
  v56 = v53;
  v57 = v55;
  v58 = v75;
  sub_1F804();

  v59 = sub_1F7E4();
  if ((*(*(v59 - 8) + 48))(v58, 1, v59) || (v61 = sub_1F794()) == 0)
  {
    sub_1E7B0(v58);
    v60 = 0;
  }

  else
  {
    v62 = v61;
    sub_1E7B0(v58);
    v60 = [v62 symbolConfiguration];
  }

  v63 = v77;
  [v56 setSymbolConfiguration:v60];

  [*&v10[v54] setTranslatesAutoresizingMaskIntoConstraints:0];
  v64 = v72;
  [*&v10[v72] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v10[v64] setLineBreakMode:4];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v68 = type metadata accessor for EffectControl();
  v81.receiver = v10;
  v81.super_class = v68;
  v69 = objc_msgSendSuper2(&v81, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v70 = [v69 layer];
  [v70 setMasksToBounds:1];

  sub_1C118();
  sub_1C628();
  sub_1C228();
}

id sub_1C034()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for EffectControl();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_backgroundView];
  [v0 _continuousCornerRadius];
  return [v1 _setContinuousCornerRadius:?];
}

id sub_1C118()
{
  if (v0[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_controlType] != 2)
  {
    v1 = *&v0[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_backgroundView];
    v2 = [v1 layer];
    [v2 setShadowPathIsBounds:1];

    v3 = [v1 layer];
    LODWORD(v4) = 1036831949;
    [v3 setShadowOpacity:v4];

    v5 = [v1 layer];
    [v5 setShadowRadius:15.0];
  }

  v6 = *&v0[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_backgroundView];
  [v0 _continuousCornerRadius];

  return [v6 _setContinuousCornerRadius:?];
}

void sub_1C228()
{
  v1 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider);
  [v1 automaticallyUpdateView:*(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_expandChevron) withStyle:2];
  if (*(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_controlType) == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 5;
  }

  [*(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_platterFillVisualStylingProvider) automaticallyUpdateView:*(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_backgroundView) withStyle:v2];
  [v1 automaticallyUpdateView:*(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_intensityRow) withStyle:0];
  [v1 automaticallyUpdateView:*(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_descriptionLabel) withStyle:0];
  [v1 automaticallyUpdateView:*(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectTitleLabel) withStyle:0];
  [v1 automaticallyUpdateView:*(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectImageView) withStyle:0];
  [v1 automaticallyUpdateView:*(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_imageBackgroundView) withStyle:2];

  sub_1C350();
}

void sub_1C350()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_continuousSlider);
  [v2 _setDrawsAsBackdropOverlayWithBlendMode:2];
  v3 = [*(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_sliderStylingProvider) _visualStylingForStyle:1];
  v4 = [v3 color];
  v5 = [objc_opt_self() quaternaryLabelColor];
  if (qword_35930 != -1)
  {
    swift_once();
  }

  v6 = sub_1F4F4();
  sub_20E4(v6, qword_35938);
  v7 = v4;
  v8 = v5;
  v9 = sub_1F4D4();
  v10 = sub_1F634();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v7;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v4;
    v12[1] = v8;
    v13 = v7;
    v14 = v8;
    _os_log_impl(&dword_0, v9, v10, "min color = %@, max color = %@", v11, 0x16u);
    sub_184C0(&qword_34D50);
    swift_arrayDestroy();
  }

  [v2 setMinimumTrackTintColor:v7];
  [v2 setMaximumTrackTintColor:v8];
  v15 = [v2 _maxValueView];
  if (!v15)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v16 = v15;
  if ([*(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_backgroundView) isHighlighted])
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  [v16 _setDrawsAsBackdropOverlayWithBlendMode:v17];

  v18 = [v2 _maxValueView];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  [v18 setTintColor:v7];
}

uint64_t sub_1C628()
{
  v1 = v0;
  v2 = sub_184C0(&qword_34D58);
  v3 = __chkstk_darwin(v2 - 8);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  v27 = sub_1F7E4();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1F464();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1F424();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v25 - v16;
  (*(&stru_108.reserved2 + (swift_isaMask & *v0)))(v15);

  sub_1F454();
  v18 = v10;
  sub_1F434();
  v28 = [objc_opt_self() systemFontOfSize:15.0];
  sub_19538();
  sub_1F444();
  v19 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectTitleLabel);
  sub_19F68(0, &qword_351A8);
  (*(v11 + 16))(v14, v17, v10);
  v20 = sub_1F684();
  [v19 setAttributedText:v20];

  if (*(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_controlType) == 1)
  {
    [*(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_expandChevron) setHidden:0];
  }

  sub_1F804();
  v21 = v27;
  if ((*(v7 + 48))(v6, 1, v27) == 1)
  {
    (*(v11 + 8))(v17, v18);
    return sub_1E7B0(v6);
  }

  else
  {
    v23 = v25;
    (*(v7 + 32))(v25, v6, v21);
    sub_1F7A4();
    v24 = v26;
    (*(v7 + 16))(v26, v23, v21);
    (*(v7 + 56))(v24, 0, 1, v21);
    sub_1F814();
    (*(v7 + 8))(v23, v21);
    return (*(v11 + 8))(v17, v18);
  }
}

void sub_1CABC(void *a1, char a2)
{
  v5 = objc_opt_self();
  sub_184C0(&qword_34CF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22900;
  v7 = [a1 leadingAnchor];
  v8 = [v2 leadingAnchor];
  v9 = 0.0;
  if (a2)
  {
    v9 = 15.0;
    v10 = -10.0;
  }

  else
  {
    v10 = -0.0;
  }

  v11 = [v7 constraintEqualToAnchor:v8 constant:v9];

  *(v6 + 32) = v11;
  v12 = [a1 trailingAnchor];
  v13 = [v2 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:v10];

  *(v6 + 40) = v14;
  sub_19F68(0, &qword_34F68);
  isa = sub_1F5D4().super.isa;

  [v5 activateConstraints:isa];
}

void sub_1CC8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_backgroundView);
  [v0 addSubview:v1];
  v2 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_buttonGlyph);
  [v0 addSubview:v2];
  v68 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectImageView);
  [v0 addSubview:?];
  v63 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectTitleLabel);
  [v0 addSubview:?];
  v67 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_expandChevron);
  [v0 addSubview:?];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  (*(&stru_108.flags + (swift_isaMask & *v0)))(v1, 0);
  v3 = objc_opt_self();
  sub_184C0(&qword_34CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22900;
  v5 = [v1 topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v1 bottomAnchor];
  v9 = [v0 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  sub_19F68(0, &qword_34F68);
  isa = sub_1F5D4().super.isa;

  v66 = v3;
  [v3 activateConstraints:isa];

  LODWORD(isa) = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_controlType);
  v12 = [v2 trailingAnchor];
  v64 = isa;
  if (isa == 1)
  {
    v13 = [v67 leadingAnchor];
  }

  else
  {
    v13 = [v0 trailingAnchor];
  }

  v14 = v13;
  v15 = [v12 constraintEqualToAnchor:v14];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22910;
  v17 = [v2 topAnchor];
  v18 = [v0 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v16 + 32) = v19;
  v20 = [v2 leadingAnchor];
  v21 = [v0 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v16 + 40) = v22;
  v23 = [v2 heightAnchor];
  v24 = [v23 constraintEqualToConstant:40.0];

  *(v16 + 48) = v24;
  *(v16 + 56) = v15;
  v65 = v15;
  v25 = [v68 centerXAnchor];
  v26 = [v0 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:20.0];

  *(v16 + 64) = v27;
  v28 = [v68 centerYAnchor];
  v29 = [v2 centerYAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v16 + 72) = v30;
  v31 = [v63 leadingAnchor];
  v32 = [v68 centerXAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:18.0];

  *(v16 + 80) = v33;
  v34 = [v63 centerYAnchor];
  v35 = [v2 centerYAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v16 + 88) = v36;
  v37 = [v67 centerYAnchor];
  v38 = [v2 centerYAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v16 + 96) = v39;
  v40 = [v67 trailingAnchor];
  v41 = [v0 trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:-10.0];

  *(v16 + 104) = v42;
  v43 = [v67 widthAnchor];
  v44 = [v43 constraintEqualToConstant:26.0];

  *(v16 + 112) = v44;
  v45 = [v67 heightAnchor];
  v46 = [v67 widthAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v16 + 120) = v47;
  v48 = sub_1F5D4().super.isa;

  [v66 activateConstraints:v48];

  if (v64 != 2)
  {
    v49 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_imageBackgroundView);
    [v0 insertSubview:v49 belowSubview:v68];
    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v49 _setContinuousCornerRadius:15.0];
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_222F0;
    v51 = [v49 centerXAnchor];
    v52 = [v68 centerXAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];

    *(v50 + 32) = v53;
    v54 = [v49 centerYAnchor];
    v55 = [v68 centerYAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];

    *(v50 + 40) = v56;
    v57 = [v49 widthAnchor];
    v58 = [v57 constraintEqualToConstant:30.0];

    *(v50 + 48) = v58;
    v59 = [v49 heightAnchor];
    v60 = [v49 widthAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];

    *(v50 + 56) = v61;
    v62 = sub_1F5D4().super.isa;

    [v66 activateConstraints:v62];
  }
}

id sub_1D5EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_intensityRow);
  [v0 addSubview:v1];
  v2 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_continuousSlider);
  [v0 addSubview:?];
  v21 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_descriptionLabel);
  [v0 addSubview:?];
  v20 = *(&stru_108.flags + (swift_isaMask & *v0));
  v20(v1, 1);
  v3 = objc_opt_self();
  sub_184C0(&qword_34CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_222E0;
  v5 = [v1 topAnchor];
  v6 = [*(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_buttonGlyph) bottomAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  sub_19F68(0, &qword_34F68);
  isa = sub_1F5D4().super.isa;

  [v3 activateConstraints:isa];

  v20(v2, 1);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_222E0;
  v10 = [v2 topAnchor];
  v11 = [v1 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];

  *(v9 + 32) = v12;
  v13 = sub_1F5D4().super.isa;

  [v3 activateConstraints:v13];

  v20(v21, 1);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222E0;
  v15 = [v21 topAnchor];
  v16 = [v2 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:8.0];

  *(v14 + 32) = v17;
  v18 = sub_1F5D4().super.isa;

  [v3 activateConstraints:v18];

  [v0 setNeedsLayout];

  return [v0 layoutIfNeeded];
}

void sub_1D9A8()
{
  v1 = v0;
  if (qword_35930 != -1)
  {
    swift_once();
  }

  v2 = sub_1F4F4();
  sub_20E4(v2, qword_35938);
  v3 = sub_1F4D4();
  v4 = sub_1F634();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Chevron Tapped", v5, 2u);
  }

  v6 = (*&stru_108.segname[swift_isaMask & *v1])(v13);
  *v7 = !*v7;
  v8 = v6(v13, 0);
  if ((*&stru_108.sectname[swift_isaMask & *v1])(v8))
  {
    sub_1D5EC();
  }

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v13[4] = sub_1EA08;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10298;
  v13[3] = &unk_2D528;
  v11 = _Block_copy(v13);
  v12 = v1;

  [v9 animateWithDuration:v11 animations:0.3];
  _Block_release(v11);
}

id sub_1DC08(char a1, char a2, char a3)
{
  if (qword_35930 != -1)
  {
    swift_once();
  }

  v7 = sub_1F4F4();
  sub_20E4(v7, qword_35938);
  v8 = v3;
  v9 = sub_1F4D4();
  v10 = sub_1F634();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v11 = 136316162;
    *(v11 + 4) = sub_211C(0xD000000000000041, 0x8000000000024450, &v24);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_211C(*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_buttonTitle], *&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_buttonTitle + 8], &v24);
    *(v11 + 22) = 1024;
    *(v11 + 24) = a1 & 1;
    *(v11 + 28) = 1024;
    *(v11 + 30) = a2 & 1;
    *(v11 + 34) = 1024;
    *(v11 + 36) = a3 & 1;
    _os_log_impl(&dword_0, v9, v10, "%s setting %s highlighted=%{BOOL}d, isAlternateHighlight=%{BOOL}d, isSupported=%{BOOL}d", v11, 0x28u);
    swift_arrayDestroy();
  }

  [*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_backgroundView] setHighlighted:a1 & 1];
  if ((a3 & 1) == 0)
  {
    v15 = *&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider];
    [v15 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_expandChevron] withStyle:5];
    if (v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_controlType] == 2)
    {
      v16 = 3;
    }

    else
    {
      v16 = 5;
    }

    [*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_platterFillVisualStylingProvider] automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_backgroundView] withStyle:v16];
    [v15 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectTitleLabel] withStyle:5];
    [v15 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectImageView] withStyle:5];
    [v15 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_intensityRow] withStyle:5];
    [v15 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_descriptionLabel] withStyle:5];
    goto LABEL_25;
  }

  if (v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_controlType] == 2)
  {
    if (a1)
    {
      if (a2)
      {
        v12 = 5;
      }

      else
      {
        v12 = 4;
      }

      [*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_platterFillVisualStylingProvider] automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_backgroundView] withStyle:v12];
      v13 = *&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectImageView];
      if (a2)
      {
        [*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider] automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectImageView] withStyle:0];
        v14 = 0;
      }

      else
      {
        [*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectImageView] mt_removeAllVisualStyling];
        v22 = [objc_opt_self() systemBlueColor];
        [v13 setTintColor:v22];

        v14 = 1;
      }

      [*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider] automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectTitleLabel] withStyle:v14];
      goto LABEL_25;
    }

    [*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_platterFillVisualStylingProvider] automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_backgroundView] withStyle:3];
    v19 = *&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider];
    [v19 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectImageView] withStyle:0];
    v20 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectTitleLabel;
  }

  else
  {
    v17 = *&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectImageView];
    if (a1)
    {
      [*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectImageView] mt_removeAllVisualStyling];
      v18 = [objc_opt_self() systemBlueColor];
      [v17 setTintColor:v18];

      [*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_platterFillVisualStylingProvider] automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_imageBackgroundView] withStyle:4];
    }

    else
    {
      v21 = *&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider];
      [v21 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectImageView] withStyle:0];
      [v21 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_imageBackgroundView] withStyle:2];
    }

    v19 = *&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider];
    [v19 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_expandChevron] withStyle:2];
    [v19 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectTitleLabel] withStyle:0];
    [v19 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_intensityRow] withStyle:0];
    v20 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_descriptionLabel;
  }

  [v19 automaticallyUpdateView:*&v8[v20] withStyle:0];
LABEL_25:
  sub_1C350();

  return [v8 setNeedsDisplay];
}

id sub_1E1C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EffectControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1E318(char a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v7[4] = sub_1EC44;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10298;
  v7[3] = &unk_2D578;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v3 animateWithDuration:v5 animations:0.3];
  _Block_release(v5);
}

void sub_1E410()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_1ED50;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10298;
  v5[3] = &unk_2D5C8;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.3];
  _Block_release(v3);
}

id sub_1E500(void *a1)
{
  if ([*(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_backgroundView) isHighlighted])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return [a1 _setDrawsAsBackdropOverlayWithBlendMode:v3];
}

void *sub_1E560()
{
  v1 = *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_platterFillVisualStylingProvider);
  v2 = v1;
  return v1;
}

unint64_t sub_1E5A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1F6A4(*(v2 + 40));

  return sub_1E5E4(a1, v4);
}

unint64_t sub_1E5E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_19F68(0, &qword_34D30);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1F6B4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1E6B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_184C0(&unk_351B0);
    v3 = sub_1F904();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1E5A0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1E7B0(uint64_t a1)
{
  v2 = sub_184C0(&qword_34D58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E83C()
{
  v1 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_buttonGlyph;
  *(v0 + v1) = sub_1A9E8();
  v2 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_expandChevron;
  sub_1AD50();
  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_intensityRow;
  *(v0 + v4) = sub_1B0AC();
  v5 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_continuousSlider;
  *(v0 + v5) = sub_1B1C4();
  v6 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_descriptionLabel;
  *(v0 + v6) = sub_1B2C0();
  v7 = [objc_opt_self() materialViewWithRecipe:0];
  if (!v7)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_backgroundView) = v7;
  v8 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_categoriesToVisualStylingProviders;
  *(v0 + v8) = sub_1E6B8(&_swiftEmptyArrayStorage);
  v9 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_requiredVisualStyleCategories;
  sub_184C0(&qword_34CF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22900;
  *(v10 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:2];
  *(v10 + 40) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  *(v0 + v9) = v10;
  *(v0 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_isExpanded) = 0;
  v11 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_imageBackgroundView;
  *(v0 + v11) = [objc_allocWithZone(UIControl) init];
  v12 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectTitleLabel;
  *(v0 + v12) = [objc_allocWithZone(UILabel) init];
  sub_1F8E4();
  __break(1u);
}

id sub_1EA08()
{
  v1 = *(v0 + 16);
  v2 = *&stru_108.sectname[swift_isaMask & *v1];
  v3 = v2();
  v4 = *(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_intensityRow);
  if (v3)
  {
    [*(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_intensityRow) setHidden:0];
    [*(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_continuousSlider) setHidden:0];
    v5 = [*(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_descriptionLabel) setHidden:0];
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_intensityRow) setHidden:1];
    v6 = *(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_continuousSlider);
    [v6 setHidden:1];
    v7 = *(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_descriptionLabel);
    [v7 setHidden:1];
    [v4 removeFromSuperview];
    [v6 removeFromSuperview];
    v5 = [v7 removeFromSuperview];
  }

  if ((v2)(v5))
  {
    v8 = 0.0;
  }

  else
  {
    v8 = -1.57079633;
  }

  v9 = [v1 _shouldReverseLayoutDirection];
  v10 = -v8;
  if (!v9)
  {
    v10 = v8;
  }

  v11 = *&CGAffineTransformIdentity.c;
  *&v19.a = *&CGAffineTransformIdentity.a;
  *&v19.c = v11;
  *&v19.tx = *&CGAffineTransformIdentity.tx;
  CGAffineTransformRotate(&v18, &v19, v10);
  tx = v18.tx;
  ty = v18.ty;
  v16 = *&v18.c;
  v17 = *&v18.a;
  v14 = [*(v1 + OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_expandChevron) layer];
  *&v19.a = v17;
  *&v19.c = v16;
  v19.tx = tx;
  v19.ty = ty;
  [v14 setAffineTransform:&v19];

  sub_1DC08([v1 isSelected], 0, 1);
  return [v1 layoutIfNeeded];
}

uint64_t sub_1EC2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1EC44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  CGAffineTransformMakeScale(&v6, 0.9, 0.9);
  result = [v1 setTransform:&v6];
  if (v2 == 1)
  {
    v4 = *&v1[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_backgroundView];
    result = [v4 isHighlighted];
    if ((result & 1) == 0)
    {
      if (v1[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_controlType] == 2)
      {
        [*&v1[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_platterFillVisualStylingProvider] automaticallyUpdateView:v4 withStyle:2];
      }

      v5 = *&v1[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider];
      [v5 automaticallyUpdateView:*&v1[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectTitleLabel] withStyle:0];
      return [v5 automaticallyUpdateView:*&v1[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_effectImageView] withStyle:0];
    }
  }

  return result;
}

id sub_1ED50()
{
  v1 = *(v0 + 16);
  CGAffineTransformMakeScale(&v3, 1.0, 1.0);
  return [v1 setTransform:&v3];
}

unint64_t sub_1EDB0()
{
  result = qword_35178;
  if (!qword_35178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35178);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EffectControl.ControlType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EffectControl.ControlType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1EFEC()
{
  dlerror();
  v0 = abort_report_np();
  return sub_1F010(v0);
}

void sub_1F010(void *a1)
{
  v1 = objc_begin_catch(a1);
  if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_7E3C();
    sub_7E28();
    sub_7E4C(&dword_0, &_os_log_default, v2, " [ERROR] %{public}s:%d setCurrentSelectedMode=AVMicrophoneModeDefault caught exception: %@", v3, v4, v5, v6, 2u);
  }

  objc_end_catch();
}

void sub_1F0E4(void *a1)
{
  v1 = objc_begin_catch(a1);
  if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_7E3C();
    sub_7E28();
    sub_7E4C(&dword_0, &_os_log_default, v2, " [ERROR] %{public}s:%d setCurrentSelectedMode=AVMicrophoneModeVoiceIsolation caught exception: %@", v3, v4, v5, v6, 2u);
  }

  objc_end_catch();
}

void sub_1F1B8(void *a1)
{
  v1 = objc_begin_catch(a1);
  if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_7E3C();
    sub_7E28();
    sub_7E4C(&dword_0, &_os_log_default, v2, " [ERROR] %{public}s:%d setCurrentSelectedMode=AVMicrophoneModeMusic caught exception: %@", v3, v4, v5, v6, 2u);
  }

  objc_end_catch();
}

void sub_1F2A0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_begin_catch(a1);
  if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_A300();
    v6 = 234;
    v7 = 2048;
    v8 = a3;
    v9 = 2112;
    v10 = v4;
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d setCurrentSelectedMode=%ld caught exception: %@", v5, 0x26u);
  }

  objc_end_catch();
}

void sub_1F398()
{
  sub_A300();
  v1 = 286;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d _bundleIdentifer=nil", v0, 0x12u);
}