uint64_t sub_63FC88()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_640148;
  }

  else
  {
    v2 = sub_63FD9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_63FD9C()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EAF0);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_12E1C(v0 + 800, &qword_E0EAF0);
    v18 = sub_500C84(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_500C84(0, 0xE000000000000000, &v30);
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(v0 + 800, &qword_E0EAF0);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_AB9990();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_15F84(v0 + 1024, v0 + 1136, &qword_E0EAF0);
  sub_50D600(0, 0, v19, &unk_B1F388, v24);

  sub_12E1C(v19, &qword_E0E340);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_640148()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EAF0);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EAF0);
    v17 = sub_500C84(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_12E1C(v0 + 576, &qword_E0EAF0);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_640458(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_AB4BC0();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_6405E0, 0, 0);
}

uint64_t sub_6405E0()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, qword_E0E1F8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_15F84(v0 + 1472, v0 + 1584, &qword_E0EB08);
        v76 = sub_AB4BA0();
        v77 = sub_AB9F30();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_12E1C(v0 + 1472, &qword_E0EB08);
          v87 = sub_500C84(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&dword_0, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_12E1C(v0 + 1472, &qword_E0EB08);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_50E914();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000000B6A3F0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, qword_E0E1F8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_15F84(v0 + 128, v0 + 240, &qword_E0EB08);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_12E1C(v0 + 128, &qword_E0EB08);
      v27 = sub_500C84(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_12E1C(v0 + 128, &qword_E0EB08);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_13C80(0, &qword_E0E218);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_ABA930();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_ABA730();

    sub_12E1C(v28, &qword_E0E210);
    *(v0 + 1712) = v31;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_AB54B0();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_15F84(v0 + 352, v0 + 464, &qword_E0EB08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 1832) = sub_AB55C0();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_641168;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, qword_E0E1F8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_15F84(v0 + 1248, v0 + 1360, &qword_E0EB08);
  sub_502308(v43, v44);
  v52 = sub_AB4BA0();
  v53 = sub_AB9F30();
  sub_501D64(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_12E1C(v0 + 1248, &qword_E0EB08);
    v62 = sub_500C84(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v63 = sub_AB9350();
    v65 = sub_500C84(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_0, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_12E1C(v0 + 1248, &qword_E0EB08);

    (*(v56 + 8))(v55, v57);
  }

  sub_50E914();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_641168()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_641628;
  }

  else
  {
    v2 = sub_64127C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_64127C()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB08);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_12E1C(v0 + 800, &qword_E0EB08);
    v18 = sub_500C84(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_500C84(0, 0xE000000000000000, &v30);
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(v0 + 800, &qword_E0EB08);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_AB9990();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_15F84(v0 + 1024, v0 + 1136, &qword_E0EB08);
  sub_50D600(0, 0, v19, &unk_B1F1C0, v24);

  sub_12E1C(v19, &qword_E0E340);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_641628()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB08);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB08);
    v17 = sub_500C84(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_12E1C(v0 + 576, &qword_E0EB08);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_641938(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_AB4BC0();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_641AC0, 0, 0);
}

uint64_t sub_641AC0()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, qword_E0E1F8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_15F84(v0 + 1472, v0 + 1584, &qword_E0EB00);
        v76 = sub_AB4BA0();
        v77 = sub_AB9F30();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_12E1C(v0 + 1472, &qword_E0EB00);
          v87 = sub_500C84(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&dword_0, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_12E1C(v0 + 1472, &qword_E0EB00);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_50E914();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000000B6A3F0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, qword_E0E1F8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_15F84(v0 + 128, v0 + 240, &qword_E0EB00);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_12E1C(v0 + 128, &qword_E0EB00);
      v27 = sub_500C84(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_12E1C(v0 + 128, &qword_E0EB00);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_13C80(0, &qword_E0E218);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_ABA930();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_ABA730();

    sub_12E1C(v28, &qword_E0E210);
    *(v0 + 1712) = v31;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_AB54B0();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_15F84(v0 + 352, v0 + 464, &qword_E0EB00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 1832) = sub_AB55C0();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_642648;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, qword_E0E1F8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_15F84(v0 + 1248, v0 + 1360, &qword_E0EB00);
  sub_502308(v43, v44);
  v52 = sub_AB4BA0();
  v53 = sub_AB9F30();
  sub_501D64(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_12E1C(v0 + 1248, &qword_E0EB00);
    v62 = sub_500C84(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v63 = sub_AB9350();
    v65 = sub_500C84(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_0, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_12E1C(v0 + 1248, &qword_E0EB00);

    (*(v56 + 8))(v55, v57);
  }

  sub_50E914();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_642648()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_642B08;
  }

  else
  {
    v2 = sub_64275C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_64275C()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB00);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_12E1C(v0 + 800, &qword_E0EB00);
    v18 = sub_500C84(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_500C84(0, 0xE000000000000000, &v30);
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(v0 + 800, &qword_E0EB00);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_AB9990();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_15F84(v0 + 1024, v0 + 1136, &qword_E0EB00);
  sub_50D600(0, 0, v19, &unk_B1F1D8, v24);

  sub_12E1C(v19, &qword_E0E340);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_642B08()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB00);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB00);
    v17 = sub_500C84(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_12E1C(v0 + 576, &qword_E0EB00);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_642E18(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_AB4BC0();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_642FA0, 0, 0);
}

uint64_t sub_642FA0()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, qword_E0E1F8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_15F84(v0 + 1472, v0 + 1584, &qword_E0EAF8);
        v76 = sub_AB4BA0();
        v77 = sub_AB9F30();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_12E1C(v0 + 1472, &qword_E0EAF8);
          v87 = sub_500C84(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&dword_0, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_12E1C(v0 + 1472, &qword_E0EAF8);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_50E914();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000000B6A3F0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, qword_E0E1F8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_15F84(v0 + 128, v0 + 240, &qword_E0EAF8);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_12E1C(v0 + 128, &qword_E0EAF8);
      v27 = sub_500C84(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_12E1C(v0 + 128, &qword_E0EAF8);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_13C80(0, &qword_E0E218);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_ABA930();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_ABA730();

    sub_12E1C(v28, &qword_E0E210);
    *(v0 + 1712) = v31;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_AB54B0();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_15F84(v0 + 352, v0 + 464, &qword_E0EAF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 1832) = sub_AB55C0();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_643B28;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, qword_E0E1F8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_15F84(v0 + 1248, v0 + 1360, &qword_E0EAF8);
  sub_502308(v43, v44);
  v52 = sub_AB4BA0();
  v53 = sub_AB9F30();
  sub_501D64(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_12E1C(v0 + 1248, &qword_E0EAF8);
    v62 = sub_500C84(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v63 = sub_AB9350();
    v65 = sub_500C84(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_0, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_12E1C(v0 + 1248, &qword_E0EAF8);

    (*(v56 + 8))(v55, v57);
  }

  sub_50E914();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_643B28()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_643FE8;
  }

  else
  {
    v2 = sub_643C3C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_643C3C()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EAF8);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_12E1C(v0 + 800, &qword_E0EAF8);
    v18 = sub_500C84(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_500C84(0, 0xE000000000000000, &v30);
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(v0 + 800, &qword_E0EAF8);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_AB9990();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_15F84(v0 + 1024, v0 + 1136, &qword_E0EAF8);
  sub_50D600(0, 0, v19, &unk_B1F360, v24);

  sub_12E1C(v19, &qword_E0E340);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_643FE8()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EAF8);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EAF8);
    v17 = sub_500C84(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_12E1C(v0 + 576, &qword_E0EAF8);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_6442F8(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_AB4BC0();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_644480, 0, 0);
}

uint64_t sub_644480()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, qword_E0E1F8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_15F84(v0 + 1472, v0 + 1584, &qword_E0EAC8);
        v76 = sub_AB4BA0();
        v77 = sub_AB9F30();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_12E1C(v0 + 1472, &qword_E0EAC8);
          v87 = sub_500C84(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&dword_0, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_12E1C(v0 + 1472, &qword_E0EAC8);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_50E914();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000000B6A3F0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, qword_E0E1F8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_15F84(v0 + 128, v0 + 240, &qword_E0EAC8);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_12E1C(v0 + 128, &qword_E0EAC8);
      v27 = sub_500C84(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_12E1C(v0 + 128, &qword_E0EAC8);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_13C80(0, &qword_E0E218);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_ABA930();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_ABA730();

    sub_12E1C(v28, &qword_E0E210);
    *(v0 + 1712) = v31;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_AB54B0();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_15F84(v0 + 352, v0 + 464, &qword_E0EAC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 1832) = sub_AB55C0();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_645008;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, qword_E0E1F8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_15F84(v0 + 1248, v0 + 1360, &qword_E0EAC8);
  sub_502308(v43, v44);
  v52 = sub_AB4BA0();
  v53 = sub_AB9F30();
  sub_501D64(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_12E1C(v0 + 1248, &qword_E0EAC8);
    v62 = sub_500C84(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v63 = sub_AB9350();
    v65 = sub_500C84(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_0, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_12E1C(v0 + 1248, &qword_E0EAC8);

    (*(v56 + 8))(v55, v57);
  }

  sub_50E914();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_645008()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_6454C8;
  }

  else
  {
    v2 = sub_64511C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_64511C()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EAC8);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_12E1C(v0 + 800, &qword_E0EAC8);
    v18 = sub_500C84(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_500C84(0, 0xE000000000000000, &v30);
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(v0 + 800, &qword_E0EAC8);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_AB9990();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_15F84(v0 + 1024, v0 + 1136, &qword_E0EAC8);
  sub_50D600(0, 0, v19, &unk_B1F3D8, v24);

  sub_12E1C(v19, &qword_E0E340);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_6454C8()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EAC8);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EAC8);
    v17 = sub_500C84(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_12E1C(v0 + 576, &qword_E0EAC8);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_6457D8(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_AB4BC0();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_645960, 0, 0);
}

uint64_t sub_645960()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, qword_E0E1F8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_15F84(v0 + 1472, v0 + 1584, &qword_E0EB28);
        v76 = sub_AB4BA0();
        v77 = sub_AB9F30();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_12E1C(v0 + 1472, &qword_E0EB28);
          v87 = sub_500C84(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&dword_0, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_12E1C(v0 + 1472, &qword_E0EB28);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_50E914();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000000B6A3F0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, qword_E0E1F8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_15F84(v0 + 128, v0 + 240, &qword_E0EB28);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_12E1C(v0 + 128, &qword_E0EB28);
      v27 = sub_500C84(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_12E1C(v0 + 128, &qword_E0EB28);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_13C80(0, &qword_E0E218);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_ABA930();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_ABA730();

    sub_12E1C(v28, &qword_E0E210);
    *(v0 + 1712) = v31;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_AB54B0();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_15F84(v0 + 352, v0 + 464, &qword_E0EB28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 1832) = sub_AB55C0();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_6464E8;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, qword_E0E1F8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_15F84(v0 + 1248, v0 + 1360, &qword_E0EB28);
  sub_502308(v43, v44);
  v52 = sub_AB4BA0();
  v53 = sub_AB9F30();
  sub_501D64(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_12E1C(v0 + 1248, &qword_E0EB28);
    v62 = sub_500C84(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v63 = sub_AB9350();
    v65 = sub_500C84(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_0, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_12E1C(v0 + 1248, &qword_E0EB28);

    (*(v56 + 8))(v55, v57);
  }

  sub_50E914();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_6464E8()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_6469A8;
  }

  else
  {
    v2 = sub_6465FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6465FC()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB28);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_12E1C(v0 + 800, &qword_E0EB28);
    v18 = sub_500C84(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_500C84(0, 0xE000000000000000, &v30);
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(v0 + 800, &qword_E0EB28);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_AB9990();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_15F84(v0 + 1024, v0 + 1136, &qword_E0EB28);
  sub_50D600(0, 0, v19, &unk_B1F2E8, v24);

  sub_12E1C(v19, &qword_E0E340);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_6469A8()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB28);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB28);
    v17 = sub_500C84(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_12E1C(v0 + 576, &qword_E0EB28);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_646CB8(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_AB4BC0();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_646E40, 0, 0);
}

uint64_t sub_646E40()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, qword_E0E1F8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_15F84(v0 + 1472, v0 + 1584, &qword_E0EB20);
        v76 = sub_AB4BA0();
        v77 = sub_AB9F30();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_12E1C(v0 + 1472, &qword_E0EB20);
          v87 = sub_500C84(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&dword_0, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_12E1C(v0 + 1472, &qword_E0EB20);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_50E914();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000000B6A3F0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, qword_E0E1F8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_15F84(v0 + 128, v0 + 240, &qword_E0EB20);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_12E1C(v0 + 128, &qword_E0EB20);
      v27 = sub_500C84(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_12E1C(v0 + 128, &qword_E0EB20);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_13C80(0, &qword_E0E218);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_ABA930();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_ABA730();

    sub_12E1C(v28, &qword_E0E210);
    *(v0 + 1712) = v31;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_AB54B0();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_15F84(v0 + 352, v0 + 464, &qword_E0EB20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 1832) = sub_AB55C0();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_6479C8;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, qword_E0E1F8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_15F84(v0 + 1248, v0 + 1360, &qword_E0EB20);
  sub_502308(v43, v44);
  v52 = sub_AB4BA0();
  v53 = sub_AB9F30();
  sub_501D64(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_12E1C(v0 + 1248, &qword_E0EB20);
    v62 = sub_500C84(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v63 = sub_AB9350();
    v65 = sub_500C84(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_0, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_12E1C(v0 + 1248, &qword_E0EB20);

    (*(v56 + 8))(v55, v57);
  }

  sub_50E914();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_6479C8()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_647E88;
  }

  else
  {
    v2 = sub_647ADC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_647ADC()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB20);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_12E1C(v0 + 800, &qword_E0EB20);
    v18 = sub_500C84(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_500C84(0, 0xE000000000000000, &v30);
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(v0 + 800, &qword_E0EB20);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_AB9990();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_15F84(v0 + 1024, v0 + 1136, &qword_E0EB20);
  sub_50D600(0, 0, v19, &unk_B1F310, v24);

  sub_12E1C(v19, &qword_E0E340);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_647E88()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB20);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB20);
    v17 = sub_500C84(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_12E1C(v0 + 576, &qword_E0EB20);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_648198(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_AB4BC0();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_648320, 0, 0);
}

uint64_t sub_648320()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, qword_E0E1F8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_15F84(v0 + 1472, v0 + 1584, &qword_E0EB18);
        v76 = sub_AB4BA0();
        v77 = sub_AB9F30();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_12E1C(v0 + 1472, &qword_E0EB18);
          v87 = sub_500C84(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&dword_0, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_12E1C(v0 + 1472, &qword_E0EB18);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_50E914();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000000B6A3F0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, qword_E0E1F8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_15F84(v0 + 128, v0 + 240, &qword_E0EB18);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_12E1C(v0 + 128, &qword_E0EB18);
      v27 = sub_500C84(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_12E1C(v0 + 128, &qword_E0EB18);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_13C80(0, &qword_E0E218);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_ABA930();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_ABA730();

    sub_12E1C(v28, &qword_E0E210);
    *(v0 + 1712) = v31;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_AB54B0();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_15F84(v0 + 352, v0 + 464, &qword_E0EB18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 1832) = sub_AB55C0();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_648EA8;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, qword_E0E1F8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_15F84(v0 + 1248, v0 + 1360, &qword_E0EB18);
  sub_502308(v43, v44);
  v52 = sub_AB4BA0();
  v53 = sub_AB9F30();
  sub_501D64(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_12E1C(v0 + 1248, &qword_E0EB18);
    v62 = sub_500C84(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v63 = sub_AB9350();
    v65 = sub_500C84(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_0, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_12E1C(v0 + 1248, &qword_E0EB18);

    (*(v56 + 8))(v55, v57);
  }

  sub_50E914();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_648EA8()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_649368;
  }

  else
  {
    v2 = sub_648FBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_648FBC()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB18);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_12E1C(v0 + 800, &qword_E0EB18);
    v18 = sub_500C84(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_500C84(0, 0xE000000000000000, &v30);
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(v0 + 800, &qword_E0EB18);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_AB9990();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_15F84(v0 + 1024, v0 + 1136, &qword_E0EB18);
  sub_50D600(0, 0, v19, &unk_B1F338, v24);

  sub_12E1C(v19, &qword_E0E340);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_649368()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB18);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB18);
    v17 = sub_500C84(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_12E1C(v0 + 576, &qword_E0EB18);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_649678(uint64_t a1, char a2)
{
  *(v3 + 1617) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 1496) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 1504) = swift_task_alloc();
  v4 = sub_AB4BC0();
  *(v3 + 1512) = v4;
  *(v3 + 1520) = *(v4 - 8);
  *(v3 + 1528) = swift_task_alloc();
  *(v3 + 1536) = swift_task_alloc();
  *(v3 + 1544) = swift_task_alloc();
  *(v3 + 1552) = swift_task_alloc();
  *(v3 + 1560) = swift_task_alloc();
  *(v3 + 1618) = *(v2 + 32);
  v5 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;
  v6 = *(v2 + 80);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  v7 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v7;

  return _swift_task_switch(sub_6497F8, 0, 0);
}

uint64_t sub_6497F8()
{
  v101 = v0;
  v1 = *(v0 + 1618);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1616) = 2;
    v68 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1560);
        v70 = *(v0 + 1520);
        v71 = *(v0 + 1512);
        v72 = __swift_project_value_buffer(v71, qword_E0E1F8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 64);
        *(v0 + 1296) = *(v0 + 48);
        *(v0 + 1312) = v73;
        v74 = *(v0 + 96);
        *(v0 + 1328) = *(v0 + 80);
        *(v0 + 1344) = v74;
        v75 = *(v0 + 32);
        *(v0 + 1264) = *(v0 + 16);
        *(v0 + 1280) = v75;
        sub_15F84(v0 + 1264, v0 + 1360, &qword_E0EB70);
        v76 = sub_AB4BA0();
        v77 = sub_AB9F30();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1560);
        v80 = *(v0 + 1520);
        v81 = *(v0 + 1512);
        if (v78)
        {
          v93 = *(v0 + 1560);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1296));
          v86 = v85;
          sub_12E1C(v0 + 1264, &qword_E0EB70);
          v87 = sub_500C84(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&dword_0, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_12E1C(v0 + 1264, &qword_E0EB70);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_50E914();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000000B6A3F0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1617) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v3 = *(v0 + 48), v4 = *(v0 + 56), v100 = *(v0 + 104), v5 = *(v0 + 64), v98 = *(v0 + 72), v99 = *(v0 + 88), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1544);
    v9 = *(v0 + 1520);
    v10 = *(v0 + 1512);
    v11 = __swift_project_value_buffer(v10, qword_E0E1F8);
    *(v0 + 1568) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1576) = v12;
    *(v0 + 1584) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 64);
    *(v0 + 144) = *(v0 + 48);
    *(v0 + 160) = v13;
    v14 = *(v0 + 96);
    *(v0 + 176) = *(v0 + 80);
    *(v0 + 192) = v14;
    v15 = *(v0 + 32);
    *(v0 + 112) = *(v0 + 16);
    *(v0 + 128) = v15;
    sub_15F84(v0 + 112, v0 + 208, &qword_E0EB70);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1544);
    v20 = *(v0 + 1520);
    v21 = *(v0 + 1512);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 144));
      v26 = v25;
      sub_12E1C(v0 + 112, &qword_E0EB70);
      v27 = sub_500C84(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_12E1C(v0 + 112, &qword_E0EB70);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1504);
    sub_13C80(0, &qword_E0E218);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_ABA930();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_ABA730();

    sub_12E1C(v28, &qword_E0E210);
    *(v0 + 1472) = v31;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_AB54B0();

    *(v0 + 1480) = v32;
    v33 = *(v0 + 64);
    *(v0 + 336) = *(v0 + 48);
    *(v0 + 352) = v33;
    v34 = *(v0 + 96);
    *(v0 + 368) = *(v0 + 80);
    *(v0 + 384) = v34;
    v35 = *(v0 + 32);
    *(v0 + 304) = *(v0 + 16);
    *(v0 + 320) = v35;
    v36 = *(v0 + 368);
    v37 = swift_allocObject();
    v38 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v38;
    v39 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v39;
    v40 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v40;
    sub_15F84(v0 + 304, v0 + 400, &qword_E0EB70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 1592) = sub_AB55C0();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1600) = v41;
    *v41 = v0;
    v41[1] = sub_64A350;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1552);
  v46 = *(v0 + 1520);
  v47 = *(v0 + 1512);
  v48 = __swift_project_value_buffer(v47, qword_E0E1F8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 64);
  *(v0 + 1104) = *(v0 + 48);
  *(v0 + 1120) = v49;
  v50 = *(v0 + 96);
  *(v0 + 1136) = *(v0 + 80);
  *(v0 + 1152) = v50;
  v51 = *(v0 + 32);
  *(v0 + 1072) = *(v0 + 16);
  *(v0 + 1088) = v51;
  sub_15F84(v0 + 1072, v0 + 1168, &qword_E0EB70);
  sub_502308(v43, v44);
  v52 = sub_AB4BA0();
  v53 = sub_AB9F30();
  sub_501D64(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1552);
  v56 = *(v0 + 1520);
  v57 = *(v0 + 1512);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1104));
    v61 = v60;
    sub_12E1C(v0 + 1072, &qword_E0EB70);
    v62 = sub_500C84(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1456) = v43;
    *(v0 + 1464) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v63 = sub_AB9350();
    v65 = sub_500C84(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_0, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_12E1C(v0 + 1072, &qword_E0EB70);

    (*(v56 + 8))(v55, v57);
  }

  sub_50E914();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_64A350()
{
  *(*v1 + 1608) = v0;

  if (v0)
  {
    v2 = sub_64A7EC;
  }

  else
  {
    v2 = sub_64A464;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_64A464()
{
  v31 = v0;
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1568);
  v3 = *(v0 + 1536);
  v4 = *(v0 + 1512);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 64);
  *(v0 + 720) = *(v0 + 48);
  *(v0 + 736) = v5;
  v6 = *(v0 + 96);
  *(v0 + 752) = *(v0 + 80);
  *(v0 + 768) = v6;
  v7 = *(v0 + 32);
  *(v0 + 688) = *(v0 + 16);
  *(v0 + 704) = v7;
  sub_15F84(v0 + 688, v0 + 784, &qword_E0EB70);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1536);
  v12 = *(v0 + 1520);
  v13 = *(v0 + 1512);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 720));
    v17 = v16;
    sub_12E1C(v0 + 688, &qword_E0EB70);
    v18 = sub_500C84(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_500C84(0, 0xE000000000000000, &v30);
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(v0 + 688, &qword_E0EB70);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1496);
  v20 = sub_AB9990();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 64);
  *(v0 + 912) = *(v0 + 48);
  *(v0 + 928) = v21;
  v22 = *(v0 + 96);
  *(v0 + 944) = *(v0 + 80);
  *(v0 + 960) = v22;
  v23 = *(v0 + 32);
  *(v0 + 880) = *(v0 + 16);
  *(v0 + 896) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v25;
  v26 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v26;
  v27 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v27;
  sub_15F84(v0 + 880, v0 + 976, &qword_E0EB70);
  sub_50D600(0, 0, v19, &unk_B1F220, v24);

  sub_12E1C(v19, &qword_E0E340);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_64A7EC()
{
  v28 = v0;
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1568);
  v3 = *(v0 + 1528);
  v4 = *(v0 + 1512);

  v1(v3, v2, v4);
  v5 = *(v0 + 64);
  *(v0 + 528) = *(v0 + 48);
  *(v0 + 544) = v5;
  v6 = *(v0 + 96);
  *(v0 + 560) = *(v0 + 80);
  *(v0 + 576) = v6;
  v7 = *(v0 + 32);
  *(v0 + 496) = *(v0 + 16);
  *(v0 + 512) = v7;
  sub_15F84(v0 + 496, v0 + 592, &qword_E0EB70);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1608);
    v26 = *(v0 + 1528);
    v11 = *(v0 + 1520);
    v12 = *(v0 + 1512);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 528));
    v16 = v15;
    sub_12E1C(v0 + 496, &qword_E0EB70);
    v17 = sub_500C84(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1488) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1528);
    v22 = *(v0 + 1520);
    v23 = *(v0 + 1512);
    sub_12E1C(v0 + 496, &qword_E0EB70);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_64AAF4(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_AB4BC0();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_64AC7C, 0, 0);
}

uint64_t sub_64AC7C()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, qword_E0E1F8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_15F84(v0 + 1472, v0 + 1584, &qword_E0EB50);
        v76 = sub_AB4BA0();
        v77 = sub_AB9F30();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_12E1C(v0 + 1472, &qword_E0EB50);
          v87 = sub_500C84(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&dword_0, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_12E1C(v0 + 1472, &qword_E0EB50);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_50E914();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000000B6A3F0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, qword_E0E1F8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_15F84(v0 + 128, v0 + 240, &qword_E0EB50);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_12E1C(v0 + 128, &qword_E0EB50);
      v27 = sub_500C84(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_12E1C(v0 + 128, &qword_E0EB50);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_13C80(0, &qword_E0E218);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_ABA930();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_ABA730();

    sub_12E1C(v28, &qword_E0E210);
    *(v0 + 1712) = v31;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_AB54B0();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_15F84(v0 + 352, v0 + 464, &qword_E0EB50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 1832) = sub_AB55C0();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_64B804;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, qword_E0E1F8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_15F84(v0 + 1248, v0 + 1360, &qword_E0EB50);
  sub_502308(v43, v44);
  v52 = sub_AB4BA0();
  v53 = sub_AB9F30();
  sub_501D64(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_12E1C(v0 + 1248, &qword_E0EB50);
    v62 = sub_500C84(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v63 = sub_AB9350();
    v65 = sub_500C84(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_0, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_12E1C(v0 + 1248, &qword_E0EB50);

    (*(v56 + 8))(v55, v57);
  }

  sub_50E914();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_64B804()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_64BCC4;
  }

  else
  {
    v2 = sub_64B918;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_64B918()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB50);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_12E1C(v0 + 800, &qword_E0EB50);
    v18 = sub_500C84(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_500C84(0, 0xE000000000000000, &v30);
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(v0 + 800, &qword_E0EB50);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_AB9990();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_15F84(v0 + 1024, v0 + 1136, &qword_E0EB50);
  sub_50D600(0, 0, v19, &unk_B1F248, v24);

  sub_12E1C(v19, &qword_E0E340);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_64BCC4()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB50);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB50);
    v17 = sub_500C84(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_12E1C(v0 + 576, &qword_E0EB50);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_64BFD4(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_AB4BC0();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_64C15C, 0, 0);
}

uint64_t sub_64C15C()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, qword_E0E1F8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_15F84(v0 + 1472, v0 + 1584, &qword_E0EB48);
        v76 = sub_AB4BA0();
        v77 = sub_AB9F30();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_12E1C(v0 + 1472, &qword_E0EB48);
          v87 = sub_500C84(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&dword_0, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_12E1C(v0 + 1472, &qword_E0EB48);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_50E914();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000000B6A3F0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, qword_E0E1F8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_15F84(v0 + 128, v0 + 240, &qword_E0EB48);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_12E1C(v0 + 128, &qword_E0EB48);
      v27 = sub_500C84(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_12E1C(v0 + 128, &qword_E0EB48);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_13C80(0, &qword_E0E218);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_ABA930();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_ABA730();

    sub_12E1C(v28, &qword_E0E210);
    *(v0 + 1712) = v31;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_AB54B0();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_15F84(v0 + 352, v0 + 464, &qword_E0EB48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 1832) = sub_AB55C0();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_64CCE4;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, qword_E0E1F8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_15F84(v0 + 1248, v0 + 1360, &qword_E0EB48);
  sub_502308(v43, v44);
  v52 = sub_AB4BA0();
  v53 = sub_AB9F30();
  sub_501D64(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_12E1C(v0 + 1248, &qword_E0EB48);
    v62 = sub_500C84(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v63 = sub_AB9350();
    v65 = sub_500C84(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_0, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_12E1C(v0 + 1248, &qword_E0EB48);

    (*(v56 + 8))(v55, v57);
  }

  sub_50E914();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_64CCE4()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_64D1A4;
  }

  else
  {
    v2 = sub_64CDF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_64CDF8()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB48);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_12E1C(v0 + 800, &qword_E0EB48);
    v18 = sub_500C84(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_500C84(0, 0xE000000000000000, &v30);
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(v0 + 800, &qword_E0EB48);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_AB9990();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_15F84(v0 + 1024, v0 + 1136, &qword_E0EB48);
  sub_50D600(0, 0, v19, &unk_B1F270, v24);

  sub_12E1C(v19, &qword_E0E340);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_64D1A4()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB48);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB48);
    v17 = sub_500C84(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_12E1C(v0 + 576, &qword_E0EB48);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_64D4B4(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_AB4BC0();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_64D63C, 0, 0);
}

uint64_t sub_64D63C()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, qword_E0E1F8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_15F84(v0 + 1472, v0 + 1584, &qword_E0EB40);
        v76 = sub_AB4BA0();
        v77 = sub_AB9F30();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_12E1C(v0 + 1472, &qword_E0EB40);
          v87 = sub_500C84(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&dword_0, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_12E1C(v0 + 1472, &qword_E0EB40);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_50E914();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000000B6A3F0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, qword_E0E1F8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_15F84(v0 + 128, v0 + 240, &qword_E0EB40);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_12E1C(v0 + 128, &qword_E0EB40);
      v27 = sub_500C84(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_12E1C(v0 + 128, &qword_E0EB40);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_13C80(0, &qword_E0E218);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_ABA930();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_ABA730();

    sub_12E1C(v28, &qword_E0E210);
    *(v0 + 1712) = v31;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_AB54B0();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_15F84(v0 + 352, v0 + 464, &qword_E0EB40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 1832) = sub_AB55C0();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_64E1C4;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, qword_E0E1F8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_15F84(v0 + 1248, v0 + 1360, &qword_E0EB40);
  sub_502308(v43, v44);
  v52 = sub_AB4BA0();
  v53 = sub_AB9F30();
  sub_501D64(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_12E1C(v0 + 1248, &qword_E0EB40);
    v62 = sub_500C84(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v63 = sub_AB9350();
    v65 = sub_500C84(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_0, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_12E1C(v0 + 1248, &qword_E0EB40);

    (*(v56 + 8))(v55, v57);
  }

  sub_50E914();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_64E1C4()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_64E684;
  }

  else
  {
    v2 = sub_64E2D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_64E2D8()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB40);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_12E1C(v0 + 800, &qword_E0EB40);
    v18 = sub_500C84(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_500C84(0, 0xE000000000000000, &v30);
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(v0 + 800, &qword_E0EB40);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_AB9990();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_15F84(v0 + 1024, v0 + 1136, &qword_E0EB40);
  sub_50D600(0, 0, v19, &unk_B1F298, v24);

  sub_12E1C(v19, &qword_E0E340);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_64E684()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB40);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB40);
    v17 = sub_500C84(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_12E1C(v0 + 576, &qword_E0EB40);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_64E994(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_AB4BC0();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_64EB1C, 0, 0);
}

uint64_t sub_64EB1C()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, qword_E0E1F8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_15F84(v0 + 1472, v0 + 1584, &qword_E0EB38);
        v76 = sub_AB4BA0();
        v77 = sub_AB9F30();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_12E1C(v0 + 1472, &qword_E0EB38);
          v87 = sub_500C84(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&dword_0, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_12E1C(v0 + 1472, &qword_E0EB38);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_50E914();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000000B6A3F0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, qword_E0E1F8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_15F84(v0 + 128, v0 + 240, &qword_E0EB38);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_12E1C(v0 + 128, &qword_E0EB38);
      v27 = sub_500C84(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_12E1C(v0 + 128, &qword_E0EB38);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_13C80(0, &qword_E0E218);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_ABA930();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_ABA730();

    sub_12E1C(v28, &qword_E0E210);
    *(v0 + 1712) = v31;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_AB54B0();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_15F84(v0 + 352, v0 + 464, &qword_E0EB38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 1832) = sub_AB55C0();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_64F6A4;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, qword_E0E1F8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_15F84(v0 + 1248, v0 + 1360, &qword_E0EB38);
  sub_502308(v43, v44);
  v52 = sub_AB4BA0();
  v53 = sub_AB9F30();
  sub_501D64(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_12E1C(v0 + 1248, &qword_E0EB38);
    v62 = sub_500C84(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v63 = sub_AB9350();
    v65 = sub_500C84(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_0, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_12E1C(v0 + 1248, &qword_E0EB38);

    (*(v56 + 8))(v55, v57);
  }

  sub_50E914();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_64F6A4()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_64FB64;
  }

  else
  {
    v2 = sub_64F7B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_64F7B8()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB38);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_12E1C(v0 + 800, &qword_E0EB38);
    v18 = sub_500C84(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_500C84(0, 0xE000000000000000, &v30);
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(v0 + 800, &qword_E0EB38);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_AB9990();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_15F84(v0 + 1024, v0 + 1136, &qword_E0EB38);
  sub_50D600(0, 0, v19, &unk_B1F2C0, v24);

  sub_12E1C(v19, &qword_E0E340);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_64FB64()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB38);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB38);
    v17 = sub_500C84(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_12E1C(v0 + 576, &qword_E0EB38);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_64FE74(char a1)
{
  *(v2 + 1848) = v1;
  *(v2 + 1987) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v2 + 1856) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v2 + 1864) = swift_task_alloc();
  v3 = sub_AB4BC0();
  *(v2 + 1872) = v3;
  *(v2 + 1880) = *(v3 - 8);
  *(v2 + 1888) = swift_task_alloc();
  *(v2 + 1896) = swift_task_alloc();
  *(v2 + 1904) = swift_task_alloc();
  *(v2 + 1912) = swift_task_alloc();
  *(v2 + 1920) = swift_task_alloc();

  return _swift_task_switch(sub_64FFD8, 0, 0);
}

uint64_t sub_64FFD8()
{
  v79 = v0;
  v1 = *(*(v0 + 1848) + 192);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v54 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v54) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 1986) = 2;
    v55 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v55) & 1) == 0)
    {
LABEL_21:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v56 = *(v0 + 1920);
        v57 = *(v0 + 1880);
        v58 = *(v0 + 1872);
        v59 = *(v0 + 1848);
        v60 = __swift_project_value_buffer(v58, qword_E0E1F8);
        (*(v57 + 16))(v56, v60, v58);
        sub_15F84(v59, v0 + 1552, &qword_E0EEA8);
        v61 = sub_AB4BA0();
        v62 = sub_AB9F30();
        v63 = os_log_type_enabled(v61, v62);
        v64 = *(v0 + 1920);
        v65 = *(v0 + 1880);
        v66 = *(v0 + 1872);
        if (v63)
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v78[0] = v68;
          *v67 = 136446210;
          v69 = *(v0 + 1744);
          sub_12E1C(v0 + 1552, &qword_E0EEA8);
          v70 = ActionType.rawValue.getter(v69);
          v72 = sub_500C84(v70, v71, v78);

          *(v67 + 4) = v72;
          _os_log_impl(&dword_0, v61, v62, "%{public}s: attempted to execute but identifier is hidden", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v68);
        }

        else
        {
          sub_12E1C(v0 + 1552, &qword_E0EEA8);
        }

        (*(v65 + 8))(v64, v66);
      }

      v34 = 0x8000000000B6A3F0;
      v33 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1987) != 1 || (v2 = (*(*(v0 + 1848) + 200))(), v3 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 1904);
    v5 = *(v0 + 1880);
    v6 = *(v0 + 1872);
    v7 = *(v0 + 1848);
    v8 = __swift_project_value_buffer(v6, qword_E0E1F8);
    *(v0 + 1928) = v8;
    v9 = *(v5 + 16);
    *(v0 + 1936) = v9;
    *(v0 + 1944) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v4, v8, v6);
    sub_15F84(v7, v0 + 16, &qword_E0EEA8);
    v10 = sub_AB4BA0();
    v11 = sub_AB9F50();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 1904);
    v14 = *(v0 + 1880);
    v15 = *(v0 + 1872);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v78[0] = v17;
      *v16 = 136446210;
      v18 = *(v0 + 208);
      sub_12E1C(v0 + 16, &qword_E0EEA8);
      v19 = ActionType.rawValue.getter(v18);
      v21 = sub_500C84(v19, v20, v78);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_0, v10, v11, "%{public}s: performing…", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
    }

    else
    {
      sub_12E1C(v0 + 16, &qword_E0EEA8);
    }

    v22 = *(v14 + 8);
    v22(v13, v15);
    *(v0 + 1952) = v22;
    v23 = *(v0 + 1864);
    v24 = *(v0 + 1848);
    sub_13C80(0, &qword_E0E218);
    v25 = [objc_opt_self() mainRunLoop];
    v26 = sub_ABA930();
    (*(*(v26 - 8) + 56))(v23, 1, 1, v26);
    v27 = sub_ABA730();

    sub_12E1C(v23, &qword_E0E210);
    *(v0 + 1824) = v27;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v28 = sub_AB54B0();

    *(v0 + 1832) = v28;
    sub_15F84(v24, v0 + 272, &qword_E0EEA8);
    v29 = swift_allocObject();
    sub_36B0C(v0 + 272, v29 + 16, &qword_E0EEA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 1960) = sub_AB55C0();

    v76 = (*(v24 + 224) + **(v24 + 224));
    v30 = swift_task_alloc();
    *(v0 + 1968) = v30;
    *v30 = v0;
    v30[1] = sub_650A78;
    v31 = *(v0 + 1848);

    return v76(v0 + 1984, v31);
  }

  v33 = v2;
  v34 = v3;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 1912);
  v36 = *(v0 + 1880);
  v37 = *(v0 + 1872);
  v38 = *(v0 + 1848);
  v39 = __swift_project_value_buffer(v37, qword_E0E1F8);
  (*(v36 + 16))(v35, v39, v37);
  sub_15F84(v38, v0 + 1296, &qword_E0EEA8);

  v40 = sub_AB4BA0();
  v41 = sub_AB9F30();
  sub_501D64(v33, v34);
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 1912);
  v44 = *(v0 + 1880);
  v45 = *(v0 + 1872);
  if (v42)
  {
    v77 = *(v0 + 1872);
    v46 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v46 = 136446466;
    v47 = *(v0 + 1488);
    sub_12E1C(v0 + 1296, &qword_E0EEA8);
    v48 = ActionType.rawValue.getter(v47);
    v75 = v43;
    v50 = sub_500C84(v48, v49, v78);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2082;
    *(v0 + 1808) = v33;
    *(v0 + 1816) = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v51 = sub_AB9350();
    v53 = sub_500C84(v51, v52, v78);

    *(v46 + 14) = v53;
    _os_log_impl(&dword_0, v40, v41, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v46, 0x16u);
    swift_arrayDestroy();

    (*(v44 + 8))(v75, v77);
  }

  else
  {
    sub_12E1C(v0 + 1296, &qword_E0EEA8);

    (*(v44 + 8))(v43, v45);
  }

LABEL_31:
  sub_50E914();
  swift_allocError();
  *v73 = v33;
  v73[1] = v34;
  swift_willThrow();

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_650A78()
{
  *(*v1 + 1976) = v0;

  if (v0)
  {
    v2 = sub_650FB0;
  }

  else
  {
    v2 = sub_650B8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_650B8C()
{
  v29 = v0;
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1928);
  v3 = *(v0 + 1896);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1848);
  sub_AB5450();
  v1(v3, v2, v4);
  sub_15F84(v5, v0 + 784, &qword_E0EEA8);
  v26 = *(v0 + 1984);
  v6 = sub_AB4BA0();
  v7 = sub_AB9F50();
  if (os_log_type_enabled(v6, v7))
  {
    v25 = *(v0 + 1952);
    v8 = *(v0 + 1896);
    v9 = *(v0 + 1872);
    v10 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v10 = 136446466;
    v11 = *(v0 + 976);
    sub_12E1C(v0 + 784, &qword_E0EEA8);
    v12 = ActionType.rawValue.getter(v11);
    v14 = sub_500C84(v12, v13, &v27);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v28[0] = 0;
    v28[1] = 0xE000000000000000;
    sub_ABAD90(16);

    strcpy(v28, " with result: ");
    HIBYTE(v28[1]) = -18;
    *(v0 + 1985) = v26;
    v31._countAndFlagsBits = sub_AB9350();
    sub_AB94A0(v31);

    v15 = sub_500C84(v28[0], v28[1], &v27);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_0, v6, v7, "%{public}s: perform success%{public}s", v10, 0x16u);
    swift_arrayDestroy();

    v25(v8, v9);
  }

  else
  {
    v16 = *(v0 + 1952);
    v17 = *(v0 + 1896);
    v18 = *(v0 + 1872);
    sub_12E1C(v0 + 784, &qword_E0EEA8);

    v16(v17, v18);
  }

  v19 = *(v0 + 1856);
  v20 = *(v0 + 1848);
  v21 = sub_AB9990();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  sub_15F84(v20, v0 + 1040, &qword_E0EEA8);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_36B0C(v0 + 1040, v22 + 32, &qword_E0EEA8);
  *(v22 + 288) = v26;
  sub_50D600(0, 0, v19, &unk_B1F1F0, v22);

  sub_12E1C(v19, &qword_E0E340);

  v23 = *(v0 + 8);

  return v23(v26);
}

uint64_t sub_650FB0()
{
  v26 = v0;
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1928);
  v3 = *(v0 + 1888);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1848);

  v1(v3, v2, v4);
  sub_15F84(v5, v0 + 528, &qword_E0EEA8);
  swift_errorRetain();
  v6 = sub_AB4BA0();
  v7 = sub_AB9F30();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1976);
    v23 = *(v0 + 1888);
    v24 = *(v0 + 1952);
    v9 = *(v0 + 1872);
    v10 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v10 = 136446466;
    v11 = *(v0 + 720);
    sub_12E1C(v0 + 528, &qword_E0EEA8);
    v12 = ActionType.rawValue.getter(v11);
    v14 = sub_500C84(v12, v13, v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 1840) = v8;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v15 = sub_AB9350();
    v17 = sub_500C84(v15, v16, v25);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_0, v6, v7, "%{public}s: perform failed: %{public}s", v10, 0x16u);
    swift_arrayDestroy();

    v24(v23, v9);
  }

  else
  {
    v18 = *(v0 + 1952);
    v19 = *(v0 + 1888);
    v20 = *(v0 + 1872);
    sub_12E1C(v0 + 528, &qword_E0EEA8);

    v18(v19, v20);
  }

  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_6512A4(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 72) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC30);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_6514B4, 0, 0);
}

uint64_t sub_6514B4()
{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = __swift_project_value_buffer(v67, qword_E0E1F8);
        (*(v68 + 16))(v66, v71, v67);
        sub_15F84(v70, v69, &qword_E0EC30);
        v72 = sub_AB4BA0();
        v73 = sub_AB9F30();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          sub_12E1C(v78, &qword_E0EC30);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_500C84(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&dword_0, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v80);
        }

        else
        {
          sub_12E1C(*(v0 + 144), &qword_E0EC30);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x8000000000B6A3F0;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = __swift_project_value_buffer(v6, qword_E0E1F8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_15F84(v9, v8, &qword_E0EC30);
    v12 = sub_AB4BA0();
    v13 = sub_AB9F50();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      sub_12E1C(v18, &qword_E0EC30);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_500C84(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_0, v12, v13, "%{public}s: performing…", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
    }

    else
    {
      sub_12E1C(*(v0 + 128), &qword_E0EC30);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_13C80(0, &qword_E0E218);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = sub_ABA930();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = sub_ABA730();

    sub_12E1C(v27, &qword_E0E210);
    *(v0 + 32) = v32;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v33 = sub_AB54B0();

    *(v0 + 40) = v33;
    sub_15F84(v29, v25, &qword_E0EC30);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_36B0C(v25, v36 + v35, &qword_E0EC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 232) = sub_AB55C0();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_651FCC;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = __swift_project_value_buffer(v42, qword_E0E1F8);
  (*(v43 + 16))(v41, v46, v42);
  sub_15F84(v45, v44, &qword_E0EC30);

  v47 = sub_AB4BA0();
  v48 = sub_AB9F30();
  sub_501D64(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    sub_12E1C(v53, &qword_E0EC30);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_500C84(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v61 = sub_AB9350();
    v63 = sub_500C84(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&dword_0, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_12E1C(*(v0 + 136), &qword_E0EC30);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_50E914();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_651FCC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_652498;
  }

  else
  {
    v2 = sub_6520E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6520E0()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  sub_AB5450();
  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EC30);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_12E1C(v13, &qword_E0EC30);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_500C84(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_500C84(0, 0xE000000000000000, &v27);
    _os_log_impl(&dword_0, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(*(v0 + 112), &qword_E0EC30);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = sub_AB9990();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_15F84(v22, v20, &qword_E0EC30);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_36B0C(v20, v24 + ((v19 + 32) & ~v19), &qword_E0EC30);
  sub_50D600(0, 0, v21, &unk_B1F1A8, v24);

  sub_12E1C(v21, &qword_E0E340);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_652498()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EC30);
  swift_errorRetain();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_12E1C(v12, &qword_E0EC30);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_500C84(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_0, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    sub_12E1C(v0[13], &qword_E0EC30);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_6527C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_AB4BC0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_E0E1F8);
  (*(v12 + 16))(v14, v15, v11);
  sub_15F84(a2, v10, a3);
  v16 = sub_AB4BA0();
  v17 = sub_AB9F50();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v29 = v11;
    v30 = v20;
    v21 = v20;
    *v19 = 136446210;
    v22 = v10[*(v8 + 36)];
    sub_12E1C(v10, a3);
    v23 = ActionType.rawValue.getter(v22);
    v25 = sub_500C84(v23, v24, &v30);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_0, v16, v17, v28, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);

    return (*(v12 + 8))(v14, v29);
  }

  else
  {
    sub_12E1C(v10, a3);

    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_652A68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  v8 = sub_AB4BC0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_E0E1F8);
  (*(v9 + 16))(v11, v12, v8);
  sub_15F84(a2, v26, a3);
  v13 = sub_AB4BA0();
  v14 = sub_AB9F50();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26[0] = v17;
    *v16 = 136446210;
    v18 = ActionType.rawValue.getter(*(a2 + 48));
    v25 = a5;
    v19 = v18;
    v21 = v20;
    sub_12E1C(a2, v24);
    v22 = sub_500C84(v19, v21, v26);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_0, v13, v14, v25, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    sub_12E1C(a2, a3);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_652CB8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v4 + 1264) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1272) = v6;
  *(v4 + 1280) = *(v6 - 8);
  *(v4 + 1288) = swift_task_alloc();
  *(v4 + 1296) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = a4[4];
  *(v4 + 232) = a4[5];
  v9 = a4[7];
  *(v4 + 248) = a4[6];
  *(v4 + 264) = v9;
  v10 = *a4;
  *(v4 + 168) = a4[1];
  v11 = a4[3];
  *(v4 + 184) = a4[2];
  *(v4 + 200) = v11;
  *(v4 + 216) = v8;
  *(v4 + 1304) = v7;
  *(v4 + 280) = *(a4 + 16);
  *(v4 + 152) = v10;

  return _swift_task_switch(sub_652E0C, 0, 0);
}

uint64_t sub_652E0C()
{
  v43 = v0;
  v1 = (v0 + 152);
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 1304);
  v3 = *(v0 + 1280);
  v4 = *(v0 + 1272);
  v5 = __swift_project_value_buffer(v4, qword_E0E1F8);
  *(v0 + 1312) = v5;
  v6 = *(v3 + 16);
  *(v0 + 1320) = v6;
  *(v0 + 1328) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v0 + 264);
  *(v0 + 112) = *(v0 + 248);
  *(v0 + 128) = v7;
  *(v0 + 144) = *(v0 + 280);
  v8 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v8;
  v9 = *(v0 + 232);
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v9;
  v10 = *(v0 + 168);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v10;
  sub_15F84(v0 + 16, v0 + 288, &qword_E0EAA8);
  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 1304);
  v15 = *(v0 + 1280);
  v16 = *(v0 + 1272);
  if (v13)
  {
    v40 = *(v0 + 1304);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42 = v18;
    *v17 = 136446210;
    v19 = ActionType.rawValue.getter(*(v0 + 88));
    v21 = v20;
    sub_12E1C(v0 + 16, &qword_E0EAA8);
    v22 = sub_500C84(v19, v21, &v42);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_0, v11, v12, "%{public}s: finishing…", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);

    (*(v15 + 8))(v40, v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EAA8);

    (*(v15 + 8))(v14, v16);
  }

  v23 = *(v0 + 1264);
  sub_13C80(0, &qword_E0E218);
  v24 = [objc_opt_self() mainRunLoop];
  v25 = sub_ABA930();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  v26 = sub_ABA730();

  sub_12E1C(v23, &qword_E0E210);
  *(v0 + 1240) = v26;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v27 = sub_AB54B0();

  *(v0 + 1248) = v27;
  v28 = *(v0 + 264);
  *(v0 + 520) = *(v0 + 248);
  *(v0 + 536) = v28;
  *(v0 + 552) = *(v0 + 280);
  v29 = *(v0 + 200);
  *(v0 + 456) = *(v0 + 184);
  *(v0 + 472) = v29;
  v30 = *(v0 + 232);
  *(v0 + 488) = *(v0 + 216);
  *(v0 + 504) = v30;
  v31 = *(v0 + 168);
  *(v0 + 424) = *v1;
  *(v0 + 440) = v31;
  v32 = *(v0 + 544);
  v33 = swift_allocObject();
  v34 = *(v0 + 264);
  *(v33 + 112) = *(v0 + 248);
  *(v33 + 128) = v34;
  *(v33 + 144) = *(v0 + 280);
  v35 = *(v0 + 200);
  *(v33 + 48) = *(v0 + 184);
  *(v33 + 64) = v35;
  v36 = *(v0 + 232);
  *(v33 + 80) = *(v0 + 216);
  *(v33 + 96) = v36;
  v37 = *(v0 + 168);
  *(v33 + 16) = *v1;
  *(v33 + 32) = v37;
  sub_15F84(v0 + 424, v0 + 560, &qword_E0EAA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  *(v0 + 1336) = sub_AB55C0();

  v41 = (v32 + *v32);
  v38 = swift_task_alloc();
  *(v0 + 1344) = v38;
  *v38 = v0;
  v38[1] = sub_653364;

  return v41(v1);
}

uint64_t sub_653364()
{
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v2 = sub_6536F8;
  }

  else
  {
    v2 = sub_653478;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_653478()
{
  v26 = v0;
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1272);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 232);
  v6 = *(v0 + 264);
  *(v0 + 1064) = *(v0 + 248);
  *(v0 + 1080) = v6;
  *(v0 + 1096) = *(v0 + 280);
  v7 = *(v0 + 168);
  v8 = *(v0 + 200);
  *(v0 + 1000) = *(v0 + 184);
  *(v0 + 1016) = v8;
  *(v0 + 1032) = *(v0 + 216);
  *(v0 + 1048) = v5;
  *(v0 + 968) = *(v0 + 152);
  *(v0 + 984) = v7;
  sub_15F84(v0 + 968, v0 + 1104, &qword_E0EAA8);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1296);
  v13 = *(v0 + 1280);
  v14 = *(v0 + 1272);
  if (v11)
  {
    v24 = *(v0 + 1272);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 1040));
    v23 = v12;
    v19 = v18;
    sub_12E1C(v0 + 968, &qword_E0EAA8);
    v20 = sub_500C84(v17, v19, &v25);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finish success", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);

    (*(v13 + 8))(v23, v24);
  }

  else
  {

    sub_12E1C(v0 + 968, &qword_E0EAA8);

    (*(v13 + 8))(v12, v14);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_6536F8()
{
  v29 = v0;
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1288);
  v4 = *(v0 + 1272);

  v1(v3, v2, v4);
  v5 = *(v0 + 232);
  v6 = *(v0 + 264);
  *(v0 + 792) = *(v0 + 248);
  *(v0 + 808) = v6;
  *(v0 + 824) = *(v0 + 280);
  v7 = *(v0 + 168);
  v8 = *(v0 + 200);
  *(v0 + 728) = *(v0 + 184);
  *(v0 + 744) = v8;
  *(v0 + 760) = *(v0 + 216);
  *(v0 + 776) = v5;
  *(v0 + 696) = *(v0 + 152);
  *(v0 + 712) = v7;
  sub_15F84(v0 + 696, v0 + 832, &qword_E0EAA8);
  swift_errorRetain();
  v9 = sub_AB4BA0();
  v10 = sub_AB9F30();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 1352);
    v12 = *(v0 + 1280);
    v26 = *(v0 + 1272);
    v27 = *(v0 + 1288);
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 768));
    v16 = v15;
    sub_12E1C(v0 + 696, &qword_E0EAA8);
    v17 = sub_500C84(v14, v16, &v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1256) = v11;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v28);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v27, v26);
  }

  else
  {
    v21 = *(v0 + 1288);
    v22 = *(v0 + 1280);
    v23 = *(v0 + 1272);

    sub_12E1C(v0 + 696, &qword_E0EAA8);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_653A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB0);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_AB4BC0();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_653BA4, 0, 0);
}

uint64_t sub_653BA4()
{
  v37 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = __swift_project_value_buffer(v2, qword_E0E1F8);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  sub_15F84(v5, v4, &qword_E0EAB0);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  if (v10)
  {
    v15 = v0[7];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446210;
    LOBYTE(v15) = *(v14 + *(v15 + 36));
    sub_12E1C(v14, &qword_E0EAB0);
    v18 = ActionType.rawValue.getter(v15);
    v20 = sub_500C84(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    sub_12E1C(v0[13], &qword_E0EAB0);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  sub_13C80(0, &qword_E0E218);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = sub_ABA930();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = sub_ABA730();

  sub_12E1C(v23, &qword_E0E210);
  v0[2] = v28;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v29 = sub_AB54B0();

  v0[3] = v29;
  sub_15F84(v25, v21, &qword_E0EAB0);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  sub_36B0C(v21, v31 + v30, &qword_E0EAB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  v0[22] = sub_AB55C0();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_6540A8;
  v33 = v0[5];

  return v35(v33);
}

uint64_t sub_6540A8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_65441C;
  }

  else
  {
    v2 = sub_6541BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6541BC()
{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  sub_AB5450();
  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EAB0);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
  if (v9)
  {
    v14 = v0[7];
    v22 = v0[17];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_12E1C(v13, &qword_E0EAB0);
    v17 = ActionType.rawValue.getter(v14);
    v19 = sub_500C84(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_0, v7, v8, "%{public}s: finish success", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    sub_12E1C(v0[11], &qword_E0EAB0);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_65441C()
{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EAB0);
  swift_errorRetain();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = v0[15];
    v26 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_12E1C(v12, &qword_E0EAB0);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_500C84(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_0, v7, v8, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];
    sub_12E1C(v0[10], &qword_E0EAB0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_654710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB8);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_AB4BC0();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_6548B4, 0, 0);
}

uint64_t sub_6548B4()
{
  v37 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = __swift_project_value_buffer(v2, qword_E0E1F8);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  sub_15F84(v5, v4, &qword_E0EAB8);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  if (v10)
  {
    v15 = v0[7];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446210;
    LOBYTE(v15) = *(v14 + *(v15 + 36));
    sub_12E1C(v14, &qword_E0EAB8);
    v18 = ActionType.rawValue.getter(v15);
    v20 = sub_500C84(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    sub_12E1C(v0[13], &qword_E0EAB8);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  sub_13C80(0, &qword_E0E218);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = sub_ABA930();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = sub_ABA730();

  sub_12E1C(v23, &qword_E0E210);
  v0[2] = v28;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v29 = sub_AB54B0();

  v0[3] = v29;
  sub_15F84(v25, v21, &qword_E0EAB8);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  sub_36B0C(v21, v31 + v30, &qword_E0EAB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  v0[22] = sub_AB55C0();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_654DB8;
  v33 = v0[5];

  return v35(v33);
}

uint64_t sub_654DB8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_65512C;
  }

  else
  {
    v2 = sub_654ECC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_654ECC()
{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  sub_AB5450();
  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EAB8);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
  if (v9)
  {
    v14 = v0[7];
    v22 = v0[17];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_12E1C(v13, &qword_E0EAB8);
    v17 = ActionType.rawValue.getter(v14);
    v19 = sub_500C84(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_0, v7, v8, "%{public}s: finish success", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    sub_12E1C(v0[11], &qword_E0EAB8);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_65512C()
{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EAB8);
  swift_errorRetain();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = v0[15];
    v26 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_12E1C(v12, &qword_E0EAB8);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_500C84(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_0, v7, v8, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];
    sub_12E1C(v0[10], &qword_E0EAB8);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_655420(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_655550, 0, 0);
}

uint64_t sub_655550()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EAE8);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EAE8);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EAE8);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EAE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_655A78;

  return v37(v0 + 128);
}

uint64_t sub_655A78()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_655DE8;
  }

  else
  {
    v2 = sub_655B8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_655B8C()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EAE8);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EAE8);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EAE8);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_655DE8()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EAE8);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EAE8);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EAE8);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_6560D4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_656204, 0, 0);
}

uint64_t sub_656204()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EAF0);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EAF0);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EAF0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EAF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_65672C;

  return v37(v0 + 128);
}

uint64_t sub_65672C()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_656A9C;
  }

  else
  {
    v2 = sub_656840;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_656840()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EAF0);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EAF0);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EAF0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_656A9C()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EAF0);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EAF0);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EAF0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_656D88(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_656EB8, 0, 0);
}

uint64_t sub_656EB8()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EB08);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EB08);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EB08);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EB08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_6573E0;

  return v37(v0 + 128);
}

uint64_t sub_6573E0()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_657750;
  }

  else
  {
    v2 = sub_6574F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6574F4()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB08);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EB08);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EB08);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_657750()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB08);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB08);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EB08);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_657A3C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_657B6C, 0, 0);
}

uint64_t sub_657B6C()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EB00);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EB00);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EB00);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EB00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_658094;

  return v37(v0 + 128);
}

uint64_t sub_658094()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_658404;
  }

  else
  {
    v2 = sub_6581A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6581A8()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB00);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EB00);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EB00);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_658404()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB00);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB00);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EB00);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_6586F0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_658820, 0, 0);
}

uint64_t sub_658820()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EAF8);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EAF8);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EAF8);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EAF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_658D48;

  return v37(v0 + 128);
}

uint64_t sub_658D48()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_6590B8;
  }

  else
  {
    v2 = sub_658E5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_658E5C()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EAF8);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EAF8);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EAF8);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_6590B8()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EAF8);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EAF8);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EAF8);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_6593A4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_6594D4, 0, 0);
}

uint64_t sub_6594D4()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EAC8);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EAC8);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EAC8);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_6599FC;

  return v37(v0 + 128);
}

uint64_t sub_6599FC()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_659D6C;
  }

  else
  {
    v2 = sub_659B10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_659B10()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EAC8);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EAC8);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EAC8);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_659D6C()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EAC8);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EAC8);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EAC8);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_65A058(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_65A188, 0, 0);
}

uint64_t sub_65A188()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EB28);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EB28);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EB28);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_65A6B0;

  return v37(v0 + 128);
}

uint64_t sub_65A6B0()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_65AA20;
  }

  else
  {
    v2 = sub_65A7C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_65A7C4()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB28);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EB28);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EB28);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_65AA20()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB28);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB28);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EB28);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_65AD0C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_65AE3C, 0, 0);
}

uint64_t sub_65AE3C()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EB20);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EB20);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EB20);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EB20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_65B364;

  return v37(v0 + 128);
}

uint64_t sub_65B364()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_65B6D4;
  }

  else
  {
    v2 = sub_65B478;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_65B478()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB20);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EB20);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EB20);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_65B6D4()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB20);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB20);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EB20);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_65B9C0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_65BAF0, 0, 0);
}

uint64_t sub_65BAF0()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EB18);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EB18);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EB18);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EB18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
  sub_36A00(&qword_E0E230, &qword_E0E228);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_65C018;

  return v37(v0 + 128);
}