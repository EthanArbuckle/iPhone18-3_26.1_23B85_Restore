id sub_2328(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKey:v5];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    if (v6)
    {
      v8 = +[IMRGLog registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_BD380(v5, a1, v8);
      }
    }

    v7 = 0;
  }

  return v7;
}

uint64_t sub_24A0()
{
  v1 = *(sub_94950(&qword_123ED0, &unk_CE4D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = sub_BD544();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 25) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v8 + 8);

  v11 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16, v2 | 7);
}

uint64_t sub_25F4()
{
  v1 = *(sub_94950(&qword_123ED0, &unk_CE4D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = sub_BD544();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v3 + v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  v10 = *(v0 + v8 + 8);

  return _swift_deallocObject(v0, v8 + 16, v2 | 7);
}

uint64_t sub_2758()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2790()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_27D0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2808()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2840()
{
  sub_AB9CC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_28C4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2904()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  v7 = *(v0 + 128);

  v8 = *(v0 + 176);

  sub_AB9CC(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328));
  v9 = *(v0 + 344);

  return _swift_deallocObject(v0, 360, 7);
}

uint64_t sub_29C8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2A08()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  v6 = *(v0 + 144);

  v7 = *(v0 + 160);

  v8 = *(v0 + 168);

  v9 = *(v0 + 192);

  v10 = *(v0 + 208);

  v11 = *(v0 + 224);

  v12 = *(v0 + 240);

  sub_AB9CC(*(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), *(v0 + 376), *(v0 + 384), *(v0 + 392));

  return _swift_deallocObject(v0, 393, 7);
}

uint64_t sub_2ADC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2B14()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  return _swift_deallocObject(v0, 113, 7);
}

uint64_t sub_2B7C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_2BCC()
{
  v1 = sub_BD544();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (type metadata accessor for BackgroundUploadContext() - 8);
  v8 = *(*v7 + 80);
  v9 = (v6 + v8 + 8) & ~v8;
  v17 = v3 | v8;
  v16 = (*(*v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v11 = *(v0 + v5 + 8);

  v10(v0 + v9, v1);
  v10(v0 + v9 + v7[7], v1);

  v12 = *(v0 + v9 + v7[9] + 8);

  v13 = *(v0 + v9 + v7[12] + 8);

  v14 = *(v0 + v16 + 8);

  return _swift_deallocObject(v0, v16 + 16, v17 | 7);
}

uint64_t sub_2DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BD544();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2E74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_BD544();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2F34()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2F78()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2FB8()
{
  v1 = sub_BD544();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_305C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4430()
{
  v51 = v0;
  if (*(*(v0 + 32) + 16))
  {
    goto LABEL_6;
  }

  if (qword_124180 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v1 = *(v0 + 48);
    v2 = sub_BD7B4();
    sub_96A28(v2, qword_1241A0);

    v3 = sub_BD794();
    v4 = sub_BDA64();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 40);
      v5 = *(v0 + 48);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v50 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_96A60(v6, v5, &v50);
      _os_log_impl(&dword_0, v3, v4, "%{public}s IDS cache did not return any results", v7, 0xCu);
      sub_97C9C(v8);
    }

LABEL_6:
    v9 = *(v0 + 72);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = sub_B9C20(*(v9 + 16), 0);
      v12 = sub_BB2DC(&v50, v11 + 4, v10, v9);

      sub_75A8();
      if (v12 != v10)
      {
        goto LABEL_47;
      }

      v13 = *(v0 + 64);
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
      v13 = *(v0 + 64);
      if (!v13)
      {
LABEL_13:
        v16 = *(v0 + 32);

        v18 = 0;
        v15 = 0;
        goto LABEL_27;
      }
    }

    v14 = *(v0 + 56);
    v50 = *(v0 + 32);
    swift_bridgeObjectRetain_n();
    v15 = sub_BA694(v14, v13);
    v16 = v50;
    v17 = v50[2];
    v18 = v17 != 0;
    if (!v17)
    {

      v16 = *(v0 + 32);
      goto LABEL_27;
    }

    v19 = *(v0 + 56);
    v20 = *(v0 + 32);

    v21 = sub_BBA6C(v11, v19, v13);
    if (v22)
    {
      v24 = *(v11 + 2);
      v25 = v24;
    }

    else
    {
      v25 = v21;
      v47 = v18;
      v48 = v15;
      v26 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        return _swift_task_switch(v21, v22, v23);
      }

      v27 = *(v11 + 2);

      if (v26 != v27)
      {
        v34 = 16 * v25;
        while (v26 < v27)
        {
          v37 = *&v11[v34 + 48];
          v38 = *&v11[v34 + 56];
          if (v37 != *(v0 + 56) || *(v0 + 64) != v38)
          {
            v40 = *&v11[v34 + 48];
            v41 = *&v11[v34 + 56];
            if ((sub_BDD24() & 1) == 0)
            {
              if (v26 != v25)
              {
                if (v25 >= v27)
                {
                  goto LABEL_51;
                }

                v42 = &v11[16 * v25 + 32];
                v43 = *(v42 + 1);
                v49 = *v42;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v11 = sub_BB434(v11);
                }

                v44 = &v11[16 * v25];
                v45 = *(v44 + 5);
                *(v44 + 4) = v37;
                *(v44 + 5) = v38;

                if (v26 >= *(v11 + 2))
                {
                  goto LABEL_52;
                }

                v35 = &v11[v34];
                v36 = *&v11[v34 + 56];
                *(v35 + 6) = v49;
                *(v35 + 7) = v43;
              }

              ++v25;
            }
          }

          ++v26;
          v27 = *(v11 + 2);
          v34 += 16;
          if (v26 == v27)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

LABEL_17:

      v24 = *(v11 + 2);
      if (v24 < v25)
      {
        goto LABEL_48;
      }

      v15 = v48;
      v18 = v47;
      if (v25 < 0)
      {
        goto LABEL_49;
      }
    }

    if (!__OFADD__(v24, v25 - v24))
    {
      break;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v25 > *(v11 + 3) >> 1)
  {
    if (v24 <= v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = v24;
    }

    v11 = sub_93BAC(isUniquelyReferenced_nonNull_native, v29, 1, v11);
    *(v0 + 16) = v11;
  }

  sub_BBB0C(v25, v24, 0);

LABEL_27:
  *(v0 + 112) = v11;
  *(v0 + 120) = v16;
  *(v0 + 104) = v15;
  *(v0 + 217) = v18;
  v30 = *(v0 + 96);
  *(v0 + 128) = *(v30 + 16);
  *(v0 + 136) = *(v30 + 24);
  *(v0 + 144) = swift_getObjectType();
  *(v0 + 152) = sub_BD9B4();
  *(v0 + 160) = sub_BD9A4();
  v31 = sub_BD994();
  v33 = v32;
  v21 = sub_48F0;
  v22 = v31;
  v23 = v33;

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_48F0()
{
  v1 = v0[20];
  v2 = v0[16];

  v0[21] = [v2 internalServiceName];

  return _swift_task_switch(sub_4978, 0, 0);
}

uint64_t sub_4978()
{
  v165 = v0;
  v2 = *(v0 + 168);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 216);
  v7 = *(v0 + 72);
  v8 = sub_BD8B4();
  v10 = v9;

  v11 = sub_BB5E4(v8, v10, v5, v4);
  *(v0 + 176) = v11;
  v155 = v4;

  v158 = v11;
  [v11 setDidCheckServer:v6];
  v12 = v7 + 64;
  v13 = -1;
  v14 = -1 << *(v7 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v7 + 64);
  v16 = (63 - v14) >> 6;
  v154 = v7;

  v17 = 0;
  v163 = v0;
  v152 = v16;
  v153 = v12;
  if (v15)
  {
    while (1)
    {
LABEL_8:
      v19 = (v17 << 10) | (16 * __clz(__rbit64(v15)));
      v20 = (*(v154 + 48) + v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(v154 + 56) + v19;
      p_align = *v23;
      v24 = *(v23 + 8);
      v25 = *(v155 + 16);

      v160 = p_align;
      if (v25)
      {
        v26 = *(v163 + 120);
        v27 = sub_94048(v21, v22);
        if (v28)
        {
          v29 = *(*(v155 + 56) + 8 * v27);

          goto LABEL_25;
        }
      }

      v30 = *(v163 + 64);
      if (!v30)
      {
        goto LABEL_19;
      }

      v11 = *(v163 + 217);
      if (v21 == *(v163 + 56) && v30 == v22)
      {
        if (!*(v163 + 217))
        {
LABEL_19:
          if (qword_124180 != -1)
          {
            swift_once();
          }

          v32 = *(v163 + 48);
          v33 = sub_BD7B4();
          sub_96A28(v33, qword_1241A0);

          v34 = sub_BD794();
          v35 = sub_BDA64();

          if (os_log_type_enabled(v34, v35))
          {
            v156 = *(v163 + 48);
            v36 = v24;
            v37 = *(v163 + 40);
            v38 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            *v38 = 136446466;
            v39 = v37;
            v24 = v36;
            *(v38 + 4) = sub_96A60(v39, v156, &v164);
            *(v38 + 12) = 2080;
            v40 = sub_96A60(v21, v22, &v164);

            *(v38 + 14) = v40;
            _os_log_impl(&dword_0, v34, v35, "%{public}s Missing IDS info result for destination %s", v38, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v29 = 0;
LABEL_25:
          v41 = [*(v163 + 128) internalServiceName];
          if (!v41)
          {
            sub_BD8B4();
            v41 = sub_BD884();
          }

          v42 = objc_allocWithZone(IMServiceReachabilityHandleResult);
          v43 = sub_BD884();
          v44 = [v42 initWithHandleID:v43 service:v41 isReachable:0 supportsEncryption:0];

          v157 = v29;
          if (v29)
          {
            v45 = [v29 status];
            if (v45 == &dword_0 + 2)
            {
              if (qword_124180 != -1)
              {
                swift_once();
              }

              v65 = *(v163 + 48);
              v66 = sub_BD7B4();
              sub_96A28(v66, qword_1241A0);

              v67 = sub_BD794();
              v68 = sub_BDA54();

              if (os_log_type_enabled(v67, v68))
              {
                v151 = *(v163 + 48);
                v69 = v24;
                v70 = *(v163 + 40);
                v71 = swift_slowAlloc();
                v164 = swift_slowAlloc();
                *v71 = 136446466;
                v72 = v70;
                v24 = v69;
                *(v71 + 4) = sub_96A60(v72, v151, &v164);
                *(v71 + 12) = 2080;
                *(v71 + 14) = sub_96A60(p_align, v69, &v164);
                _os_log_impl(&dword_0, v67, v68, "%{public}s Destination is invalid: %s", v71, 0x16u);
                swift_arrayDestroy();
              }

              [v158 setAllAreReachable:0];
              [v158 setAllSupportEncryption:0];
              goto LABEL_47;
            }

            if (v45 == &dword_0 + 1)
            {
              [v44 setReachable:1];
              [v44 setSupportsEncryption:1];
LABEL_47:

              v74 = v44;
              v75 = [v158 handleResults];
              sub_7610(0, &qword_1242E8, IMServiceReachabilityHandleResult_ptr);
              p_align = &protocol witness table for String;
              v76 = sub_BD844();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v164 = v76;
              sub_BAFD8(v74, v160, v24, isUniquelyReferenced_nonNull_native);

              v11 = v164;
              isa = sub_BD834().super.isa;

              [v158 setHandleResults:isa];

              v16 = v152;
              v12 = v153;
              goto LABEL_48;
            }
          }

          if (qword_124180 != -1)
          {
            swift_once();
          }

          v46 = *(v163 + 48);
          v47 = sub_BD7B4();
          sub_96A28(v47, qword_1241A0);

          v48 = sub_BD794();
          v49 = sub_BDA54();

          if (os_log_type_enabled(v48, v49))
          {
            v50 = v24;
            v52 = *(v163 + 40);
            v51 = *(v163 + 48);
            v53 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            *v53 = 136446466;
            v54 = v52;
            v24 = v50;
            *(v53 + 4) = sub_96A60(v54, v51, &v164);
            *(v53 + 12) = 2080;
            *(v53 + 14) = sub_96A60(p_align, v50, &v164);
            _os_log_impl(&dword_0, v48, v49, "%{public}s Destination is unknown: %s", v53, 0x16u);
            swift_arrayDestroy();
          }

          v55 = [*(v163 + 80) lastUsedServiceName];
          if (v55)
          {
            v56 = *(v163 + 128);
            v57 = v55;
            v58 = sub_BD8B4();
            v60 = v59;

            v61 = [v56 internalServiceName];
            v62 = sub_BD8B4();
            v64 = v63;

            if (v58 == v62 && v60 == v64)
            {

LABEL_46:
              **(v163 + 88) = 1;
              goto LABEL_47;
            }

            v73 = sub_BDD24();

            if (v73)
            {
              goto LABEL_46;
            }
          }

          [v158 setAllAreReachable:0];
          [v158 setAllSupportEncryption:0];
          goto LABEL_46;
        }
      }

      else if ((v11 & sub_BDD24() & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_48:
      v15 &= v15 - 1;

      if (!v15)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_70;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_8;
    }
  }

  v79 = *(v163 + 72);

  p_align = &stru_11EFE8.align;
  if ([v158 allAreReachable])
  {
    v159 = (*(v163 + 136) + 32);
    v161 = (*v159 + **v159);
    v80 = (*v159)[1];
    v81 = swift_task_alloc();
    *(v163 + 184) = v81;
    *v81 = v163;
    v81[1] = sub_5AD4;
    v83 = *(v163 + 136);
    v82 = *(v163 + 144);
    v84 = *(v163 + 128);
    v85 = *(v163 + 112);

    return v161(v85, v82, v83);
  }

  if (![*(v163 + 176) error])
  {
    v87 = *(*(v163 + 112) + 16);
    *(v163 + 192) = v87;
    if (v87 >= 2)
    {
      v88 = *(v163 + 152);
      *(v163 + 200) = sub_BD9A4();
      v90 = sub_BD994();

      return _swift_task_switch(sub_62C8, v90, v89);
    }
  }

  if (([*(v163 + 176) allAreReachable] & 1) == 0)
  {
    v91 = [*(v163 + 80) lastUsedServiceName];
    if (v91)
    {
      v92 = v91;
      v93 = sub_BD8B4();
      v95 = v94;

      if (v93 == 0x6567617373654D69 && v95 == 0xE800000000000000)
      {

LABEL_65:
        if ([*(v163 + 80) chatStyle] == 43)
        {
          v97 = [*(v163 + 80) chatIdentifier];
          if (v97)
          {
            v98 = *(v163 + 80);

            v99 = [v98 isForPendingConversation];
            v11 = *(v163 + 112);
            if (v99)
            {
              v100 = *(v163 + 112);
              goto LABEL_79;
            }

LABEL_70:
            v101 = (v11 + 40);
            v102 = -*(v11 + 16);
            v103 = -1;
            while (1)
            {
              if (v102 + v103 == -1)
              {
                goto LABEL_78;
              }

              if (++v103 >= *(v11 + 16))
              {
                break;
              }

              v104 = v101 + 2;
              v106 = *(v101 - 1);
              v105 = *v101;

              v107 = sub_BD884();
              IsEmail = IMStringIsEmail();

              v101 = v104;
              if (IsEmail)
              {
                v109 = *(v163 + 112);

                if (qword_124180 == -1)
                {
LABEL_75:
                  v110 = *(v163 + 80);
                  v111 = *(v163 + 48);
                  v112 = sub_BD7B4();
                  sub_96A28(v112, qword_1241A0);

                  v113 = v110;
                  v114 = sub_BD794();
                  v115 = sub_BDA54();

                  if (os_log_type_enabled(v114, v115))
                  {
                    v116 = *(v163 + 80);
                    v118 = *(v163 + 40);
                    v117 = *(v163 + 48);
                    v119 = swift_slowAlloc();
                    v120 = swift_slowAlloc();
                    v121 = swift_slowAlloc();
                    v164 = v121;
                    *v119 = 136446466;
                    *(v119 + 4) = sub_96A60(v118, v117, &v164);
                    *(v119 + 12) = 2112;
                    *(v119 + 14) = v116;
                    *v120 = v116;
                    v122 = v116;
                    _os_log_impl(&dword_0, v114, v115, "%{public}s This group contains emails, don't downgrade: %@", v119, 0x16u);
                    sub_75B0(v120, &qword_123E98, &unk_CEE80);

                    sub_97C9C(v121);
                  }

                  v123 = *(v163 + 176);
                  [v123 setAllAreReachable:1];
                  [v123 setError:0];
                  [v123 setReachabilityOverriddenToSuccessByPolicy:1];
                  goto LABEL_80;
                }

LABEL_89:
                swift_once();
                goto LABEL_75;
              }
            }

            __break(1u);
            goto LABEL_89;
          }
        }
      }

      else
      {
        v96 = sub_BDD24();

        if (v96)
        {
          goto LABEL_65;
        }
      }
    }
  }

LABEL_78:
  v124 = *(v163 + 112);
LABEL_79:

LABEL_80:
  if (qword_124180 != -1)
  {
    swift_once();
  }

  v125 = *(v163 + 176);
  v126 = *(v163 + 72);
  v127 = *(v163 + 48);
  v128 = sub_BD7B4();
  sub_96A28(v128, qword_1241A0);

  v129 = v125;
  v130 = sub_BD794();
  v131 = sub_BDA54();

  v132 = os_log_type_enabled(v130, v131);
  v133 = *(v163 + 176);
  v134 = *(v163 + 120);
  v135 = *(v163 + 104);
  if (v132)
  {
    v136 = *(v163 + 72);
    v137 = *(v163 + 48);
    v162 = *(v163 + 104);
    v138 = p_align;
    v139 = *(v163 + 40);
    v140 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    *v140 = 136446978;
    *(v140 + 4) = sub_96A60(v139, v137, &v164);
    *(v140 + 12) = 1024;
    *(v140 + 14) = [v133 *(v138 + 150)];

    *(v140 + 18) = 2080;
    *(v163 + 24) = v136;

    sub_94950(&qword_1242F0, &qword_CEE78);
    sub_BBA08();
    sub_ABD60();
    v141 = sub_BD924();
    v143 = v142;

    v144 = sub_96A60(v141, v143, &v164);

    *(v140 + 20) = v144;
    *(v140 + 28) = 2080;
    sub_7610(0, &qword_123E60, IDSIDInfoResult_ptr);

    v145 = sub_BD854();
    v147 = v146;

    v148 = sub_96A60(v145, v147, &v164);

    *(v140 + 30) = v148;
    _os_log_impl(&dword_0, v130, v131, "%{public}s Choosing all iMessageable(%{BOOL}d) requestedRecipients:(%s) perRecipientAvailability:(%s)", v140, 0x26u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v149 = *(v163 + 8);
  v150 = *(v163 + 176);

  return v149(v150);
}

uint64_t sub_5AD4(char a1)
{
  v2 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 218) = a1;

  return _swift_task_switch(sub_5BD4, 0, 0);
}

uint64_t sub_5BD4()
{
  v71 = v0;
  if (*(v0 + 218) == 1)
  {
    [*(v0 + 176) setError:4];
  }

  if (![*(v0 + 176) error])
  {
    v1 = *(*(v0 + 112) + 16);
    *(v0 + 192) = v1;
    if (v1 >= 2)
    {
      v2 = *(v0 + 152);
      *(v0 + 200) = sub_BD9A4();
      v4 = sub_BD994();

      return _swift_task_switch(sub_62C8, v4, v3);
    }
  }

  p_align = &stru_11EFE8.align;
  if ([*(v0 + 176) allAreReachable])
  {
    goto LABEL_29;
  }

  v6 = [*(v0 + 80) lastUsedServiceName];
  if (!v6)
  {
    goto LABEL_29;
  }

  v7 = v6;
  v8 = sub_BD8B4();
  v10 = v9;

  if (v8 == 0x6567617373654D69 && v10 == 0xE800000000000000)
  {
  }

  else
  {
    v12 = sub_BDD24();

    if ((v12 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if ([*(v0 + 80) chatStyle] == 43)
  {
    v13 = [*(v0 + 80) chatIdentifier];
    if (v13)
    {
      v14 = *(v0 + 80);

      v15 = [v14 isForPendingConversation];
      v16 = *(v0 + 112);
      if ((v15 & 1) == 0)
      {
        v18 = (v16 + 40);
        v19 = -*(v16 + 16);
        v20 = -1;
        while (1)
        {
          if (v19 + v20 == -1)
          {
            goto LABEL_29;
          }

          if (++v20 >= *(v16 + 16))
          {
            break;
          }

          v21 = v18 + 2;
          v23 = *(v18 - 1);
          v22 = *v18;

          v24 = sub_BD884();
          IsEmail = IMStringIsEmail();

          v18 = v21;
          if (IsEmail)
          {
            v26 = *(v0 + 112);

            if (qword_124180 == -1)
            {
LABEL_26:
              v27 = *(v0 + 80);
              v28 = *(v0 + 48);
              v29 = sub_BD7B4();
              sub_96A28(v29, qword_1241A0);

              v30 = v27;
              v31 = sub_BD794();
              v32 = sub_BDA54();

              if (os_log_type_enabled(v31, v32))
              {
                v33 = *(v0 + 80);
                v35 = *(v0 + 40);
                v34 = *(v0 + 48);
                v36 = swift_slowAlloc();
                v37 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                v70 = v38;
                *v36 = 136446466;
                *(v36 + 4) = sub_96A60(v35, v34, &v70);
                *(v36 + 12) = 2112;
                *(v36 + 14) = v33;
                *v37 = v33;
                v39 = v33;
                p_align = (&stru_11EFE8 + 24);
                _os_log_impl(&dword_0, v31, v32, "%{public}s This group contains emails, don't downgrade: %@", v36, 0x16u);
                sub_75B0(v37, &qword_123E98, &unk_CEE80);

                sub_97C9C(v38);
              }

              v40 = *(v0 + 176);
              [v40 setAllAreReachable:1];
              [v40 setError:0];
              [v40 setReachabilityOverriddenToSuccessByPolicy:1];
              goto LABEL_31;
            }

LABEL_40:
            swift_once();
            goto LABEL_26;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

      v17 = *(v0 + 112);
      goto LABEL_30;
    }
  }

LABEL_29:
  v41 = *(v0 + 112);
LABEL_30:

LABEL_31:
  if (qword_124180 != -1)
  {
    swift_once();
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 72);
  v44 = *(v0 + 48);
  v45 = sub_BD7B4();
  sub_96A28(v45, qword_1241A0);

  v46 = v42;
  v47 = sub_BD794();
  v48 = sub_BDA54();

  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 176);
  v51 = *(v0 + 120);
  v52 = *(v0 + 104);
  if (v49)
  {
    v53 = *(v0 + 72);
    v54 = p_align;
    v56 = *(v0 + 40);
    v55 = *(v0 + 48);
    v69 = *(v0 + 104);
    v57 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v57 = 136446978;
    *(v57 + 4) = sub_96A60(v56, v55, &v70);
    *(v57 + 12) = 1024;
    *(v57 + 14) = [v50 *(v54 + 150)];

    *(v57 + 18) = 2080;
    *(v0 + 24) = v53;

    sub_94950(&qword_1242F0, &qword_CEE78);
    sub_BBA08();
    sub_ABD60();
    v58 = sub_BD924();
    v60 = v59;

    v61 = sub_96A60(v58, v60, &v70);

    *(v57 + 20) = v61;
    *(v57 + 28) = 2080;
    sub_7610(0, &qword_123E60, IDSIDInfoResult_ptr);

    v62 = sub_BD854();
    v64 = v63;

    v65 = sub_96A60(v62, v64, &v70);

    *(v57 + 30) = v65;
    _os_log_impl(&dword_0, v47, v48, "%{public}s Choosing all iMessageable(%{BOOL}d) requestedRecipients:(%s) perRecipientAvailability:(%s)", v57, 0x26u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v66 = *(v0 + 8);
  v67 = *(v0 + 176);

  return v66(v67);
}

uint64_t sub_62C8()
{
  v1 = v0[25];
  v2 = v0[16];
  v3 = v0[10];

  v0[26] = [v2 maxChatParticipantsForContext:v3];

  return _swift_task_switch(sub_6350, 0, 0);
}

uint64_t sub_6350()
{
  v67 = v0;
  if (*(v0 + 208) < *(v0 + 192))
  {
    [*(v0 + 176) setError:1];
  }

  p_align = &stru_11EFE8.align;
  if ([*(v0 + 176) allAreReachable])
  {
    goto LABEL_24;
  }

  v2 = [*(v0 + 80) lastUsedServiceName];
  if (!v2)
  {
    goto LABEL_24;
  }

  v3 = v2;
  v4 = sub_BD8B4();
  v6 = v5;

  if (v4 == 0x6567617373654D69 && v6 == 0xE800000000000000)
  {
  }

  else
  {
    v8 = sub_BDD24();

    if ((v8 & 1) == 0)
    {
LABEL_24:
      v37 = *(v0 + 112);
      goto LABEL_25;
    }
  }

  if ([*(v0 + 80) chatStyle] != 43)
  {
    goto LABEL_24;
  }

  v9 = [*(v0 + 80) chatIdentifier];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = *(v0 + 80);

  v11 = [v10 isForPendingConversation];
  v12 = *(v0 + 112);
  if ((v11 & 1) == 0)
  {
    v14 = (v12 + 40);
    v15 = -*(v12 + 16);
    v16 = -1;
    while (1)
    {
      if (v15 + v16 == -1)
      {
        goto LABEL_24;
      }

      if (++v16 >= *(v12 + 16))
      {
        break;
      }

      v17 = v14 + 2;
      v19 = *(v14 - 1);
      v18 = *v14;

      v20 = sub_BD884();
      IsEmail = IMStringIsEmail();

      v14 = v17;
      if (IsEmail)
      {
        v22 = *(v0 + 112);

        if (qword_124180 == -1)
        {
LABEL_21:
          v23 = *(v0 + 80);
          v24 = *(v0 + 48);
          v25 = sub_BD7B4();
          sub_96A28(v25, qword_1241A0);

          v26 = v23;
          v27 = sub_BD794();
          v28 = sub_BDA54();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = *(v0 + 80);
            v31 = *(v0 + 40);
            v30 = *(v0 + 48);
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v66 = v34;
            *v32 = 136446466;
            *(v32 + 4) = sub_96A60(v31, v30, &v66);
            *(v32 + 12) = 2112;
            *(v32 + 14) = v29;
            *v33 = v29;
            v35 = v29;
            p_align = (&stru_11EFE8 + 24);
            _os_log_impl(&dword_0, v27, v28, "%{public}s This group contains emails, don't downgrade: %@", v32, 0x16u);
            sub_75B0(v33, &qword_123E98, &unk_CEE80);

            sub_97C9C(v34);
          }

          v36 = *(v0 + 176);
          [v36 setAllAreReachable:1];
          [v36 setError:0];
          [v36 setReachabilityOverriddenToSuccessByPolicy:1];
          goto LABEL_26;
        }

LABEL_35:
        swift_once();
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  v13 = *(v0 + 112);
LABEL_25:

LABEL_26:
  if (qword_124180 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 176);
  v39 = *(v0 + 72);
  v40 = *(v0 + 48);
  v41 = sub_BD7B4();
  sub_96A28(v41, qword_1241A0);

  v42 = v38;
  v43 = sub_BD794();
  v44 = sub_BDA54();

  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v0 + 176);
  v47 = *(v0 + 120);
  v48 = *(v0 + 104);
  if (v45)
  {
    v49 = *(v0 + 72);
    v50 = p_align;
    v52 = *(v0 + 40);
    v51 = *(v0 + 48);
    v65 = *(v0 + 104);
    v53 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v53 = 136446978;
    *(v53 + 4) = sub_96A60(v52, v51, &v66);
    *(v53 + 12) = 1024;
    *(v53 + 14) = [v46 *(v50 + 150)];

    *(v53 + 18) = 2080;
    *(v0 + 24) = v49;

    sub_94950(&qword_1242F0, &qword_CEE78);
    sub_BBA08();
    sub_ABD60();
    v54 = sub_BD924();
    v56 = v55;

    v57 = sub_96A60(v54, v56, &v66);

    *(v53 + 20) = v57;
    *(v53 + 28) = 2080;
    sub_7610(0, &qword_123E60, IDSIDInfoResult_ptr);

    v58 = sub_BD854();
    v60 = v59;

    v61 = sub_96A60(v58, v60, &v66);

    *(v53 + 30) = v61;
    _os_log_impl(&dword_0, v43, v44, "%{public}s Choosing all iMessageable(%{BOOL}d) requestedRecipients:(%s) perRecipientAvailability:(%s)", v53, 0x26u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v62 = *(v0 + 8);
  v63 = *(v0 + 176);

  return v62(v63);
}

uint64_t sub_69AC()
{
  v1 = *(v0 + 88);
  *(v0 + 168) = 0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 144) = v2;

  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_6A98;
  v4 = *(v0 + 169);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);

  return sub_B942C(v10, v8, v9, v6, v7, v2, v5, v4);
}

uint64_t sub_6A98(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_6BB8, 0, 0);
}

uint64_t sub_6BB8()
{
  if ([*(v0 + 160) allAreReachable] && *(v0 + 168) != 1)
  {
    v15 = *(v0 + 160);
    v17 = *(v0 + 104);
    v16 = *(v0 + 112);
    [v15 setFinal:1];
    v17(v15);
  }

  else
  {
    v1 = *(v0 + 160);
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v4 = *(v0 + 169);
    [v1 setFinal:v4];
    v3(v1);
    if ((v4 & 1) == 0)
    {
      v5 = *(v0 + 128);
      v20 = *(v0 + 136);
      v7 = *(v0 + 112);
      v6 = *(v0 + 120);
      v8 = *(v0 + 96);
      v9 = *(v0 + 104);
      v11 = *(v0 + 56);
      v10 = *(v0 + 64);
      v12 = *(v0 + 48);
      v13 = [*(v0 + 160) allAreReachable];
      if (*(v0 + 168))
      {
        v14 = 256;
      }

      else
      {
        v14 = 0;
      }

      sub_B8850(v6, v11, v10, v5, v20, v8, 1, v14 | v13, v9, v7);
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_6D10()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_BD994();

  return _swift_task_switch(sub_6E4C, v5, v4);
}

uint64_t sub_6E4C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6EAC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_6FA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

id sub_6FF8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_94950(a1, a2);
  v4 = *v2;
  v5 = sub_BDCD4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_7154()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_718C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 112);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_71FC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v14 = *(v1 + 96);
  v15 = *(v1 + 80);
  v11 = *(v1 + 112);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_7308;

  return sub_B9468(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_7308()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_73FC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_7490()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_74D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_75A0;

  return sub_B9B04(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_75B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_94950(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_7610(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_7674(void *a1, uint64_t a2)
{
  v21 = a1;
  v3 = +[IMDChatRegistry sharedInstance];
  v4 = [v3 allExistingSupportedServiceChatsWithIdentifier:v21 style:a2];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v37 = v21;
      v38 = 1024;
      LODWORD(v39) = a2;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Checking if chats with chatIdentifier %@ and style %hhu need to be updated.", buf, 0x12u);
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v4;
  v24 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v24)
  {
    v23 = *v33;
    do
    {
      v6 = 0;
      do
      {
        if (*v33 != v23)
        {
          v7 = v6;
          objc_enumerationMutation(obj);
          v6 = v7;
        }

        v27 = v6;
        v8 = *(*(&v32 + 1) + 8 * v6);
        if (IMSharedHelperDeviceHasMultipleSubscriptions())
        {
          v26 = [v8 lastAddressedLocalHandle];
          v9 = +[IMCTSubscriptionUtilities sharedInstance];
          v10 = [v9 ctSubscriptionInfo];
          v25 = [v10 __im_subscriptionContextForPhoneNumber:v26];

          v11 = [v25 labelID];
          v12 = +[IMCTSubscriptionUtilities sharedInstance];
          v13 = [v12 registeredSIMIDs];

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v28 objects:v40 count:16];
          if (v15)
          {
            v16 = *v29;
            do
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v29 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                v18 = *(*(&v28 + 1) + 8 * i);
                if ([v18 isEqualToString:v11])
                {
                  if (IMOSLoggingEnabled())
                  {
                    v19 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                    {
                      v20 = [v8 guid];
                      *buf = 138412546;
                      v37 = v20;
                      v38 = 2112;
                      v39 = v18;
                      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "  ** Updating sim ID for chat with guid %@ to be: %@", buf, 0x16u);
                    }
                  }

                  [v8 updateLastAddressedSIMID:v11];
                }
              }

              v15 = [v14 countByEnumeratingWithState:&v28 objects:v40 count:16];
            }

            while (v15);
          }
        }

        [v8 updateShouldForceToSMS:0];
        v6 = v27 + 1;
      }

      while ((v27 + 1) != v24);
      v24 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v24);
  }
}

uint64_t _UpdateLastAddressedHandle(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (([v5 isTypingMessage] & 1) != 0 || (objc_msgSend(v6, "isEqualToIgnoringCase:", kFZServiceDefaultsSentinelAlias) & 1) != 0 || !objc_msgSend(v6, "length"))
  {
    v10 = 0;
    goto LABEL_8;
  }

  v8 = [v6 _stripFZIDPrefix];
  if (v7)
  {
    v9 = [v7 lastAddressedLocalHandle];
    if ([v9 isEqualToString:v8])
    {
    }

    else
    {
      v13 = [v8 length];

      if (v13)
      {
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = 138412290;
            v16 = v8;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "  ** Updating caller URI for chat to be: %@", &v15, 0xCu);
          }
        }

        [v7 updateLastAddressedHandle:v8];
        v10 = 1;
        goto LABEL_18;
      }
    }
  }

  v10 = 0;
LABEL_18:

LABEL_8:
  if (v7)
  {
    v11 = [v7 chatIdentifier];
    sub_7674(v11, [v7 style]);
  }

  return v10;
}

void _ReplaceExtensionPayloadDataWithAttachmentForIncomingMessage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 isTypingMessage] & 1) == 0)
  {
    v5 = [v3 payloadData];
    v6 = [v5 length];

    if (v6)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v31 = v3;
          v32 = 2112;
          v33 = v4;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Request to _ReplaceExtensionPayloadDataWithAttachmentForIncomingMessage: %@ chatIdentifier: %@", buf, 0x16u);
        }
      }

      v27 = IMExtensionPayloadUnarchivingClasses();
      v8 = [NSKeyedUnarchiver alloc];
      v9 = [v3 payloadData];
      v28 = 0;
      v10 = [v8 initForReadingFromData:v9 error:&v28];
      v11 = v28;

      [v10 _enableStrictSecureDecodingMode];
      v12 = [v10 decodeObjectOfClasses:v27 forKey:NSKeyedArchiveRootObjectKey];
      if (v11 && IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v31 = v11;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Failed to unarchive payload. Error: %@", buf, 0xCu);
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = IMExtensionPayloadDataKey;
        v15 = [v12 objectForKey:IMExtensionPayloadDataKey];
        if ([v15 length])
        {
          v16 = +[IMDFileTransferCenter sharedInstance];
          v29 = v15;
          v17 = [NSArray arrayWithObjects:&v29 count:1];
          v18 = [v3 guid];
          v25 = [v16 guidsForStoredAttachmentPayloadData:v17 messageGUID:v18];

          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v31 = v25;
              _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Wrote extension payload data to attachments folder with GUIDs: %@", buf, 0xCu);
            }
          }

          v20 = [NSMutableArray arrayWithArray:v25, v25];
          v21 = [v3 fileTransferGUIDs];
          [v20 addObjectsFromArray:v21];

          v22 = [v20 copy];
          [v3 setFileTransferGUIDs:v22];

          v23 = [v12 mutableCopy];
          [v23 removeObjectForKey:v14];
          v24 = [NSKeyedArchiver archivedDataWithRootObject:v23 requiringSecureCoding:0 error:0];
          [v3 setPayloadData:v24];
        }
      }
    }
  }
}

void sub_898C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Callback to update global read receipt value", buf, 2u);
    }
  }

  v4 = [*(a1 + 32) globalReadReceiptSettingVersion];
  v5 = [*(a1 + 32) readReceiptsGloballyEnabled];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v20 = v5;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Callback to update global read receipt value to: %d with version id: %@", buf, 0x12u);
    }
  }

  v7 = [WeakRetained _firstiMessageChat];
  v8 = [NSNumber numberWithInteger:60001];
  if (v7)
  {
    v17[0] = @"GlobalReadReceiptChangedValue";
    v9 = [NSNumber numberWithBool:v5];
    v17[1] = @"GlobalReadReceiptVersionIDKey";
    v18[0] = v9;
    v18[1] = v4;
    v10 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    v11 = [WeakRetained account];
    v12 = [v11 loginID];
    v13 = [v7 guid];
    v14 = [v7 chatIdentifier];
    [WeakRetained sendCommand:v8 withProperties:v10 toPerson:v12 toChatID:v13 identifier:v14 style:{objc_msgSend(v7, "style")}];
  }

  else
  {
    v9 = [NSNumber numberWithBool:v5, @"GlobalReadReceiptChangedValue"];
    v15[1] = @"GlobalReadReceiptVersionIDKey";
    v16[0] = v9;
    v16[1] = v4;
    v10 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    v11 = [WeakRetained account];
    v12 = [v11 loginID];
    [WeakRetained sendCommand:v8 withProperties:v10 toPerson:v12];
  }
}

void sub_8F1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Callback to update Keep messages value", &v7, 2u);
    }
  }

  v3 = [WeakRetained _firstiMessageChat];
  v4 = [WeakRetained _messageDictionaryForDeleteCommandShouldResetPreference:0];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Callback to update keep messages with message dictionary %@", &v7, 0xCu);
    }
  }

  v6 = [v3 guid];
  [WeakRetained sendDeleteCommand:v4 forChatGUID:v6];
}

void sub_90B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _firstiMessageChat];
  v3 = [WeakRetained _messageDictionaryForDeleteCommandShouldResetPreference:1];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Callback to reset keep messages with message dictionary %@", &v6, 0xCu);
    }
  }

  v5 = [v2 guid];
  [WeakRetained sendDeleteCommand:v3 forChatGUID:v5];
}

void sub_BBBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  if ([v4 count] == &dword_0 + 1)
  {
    [*(a1 + 40) didReceiveError:27 forMessageID:*(a1 + 48) forceError:*(a1 + 64) account:*(a1 + 56)];
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 48);
      v7 = [v4 count];
      v8 = *(a1 + 32);
      v9 = 138412802;
      v10 = v6;
      v11 = 2048;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Not showing failure badge for %@ because %ld endpoints returned for %@", &v9, 0x20u);
    }
  }
}

void sub_D0A4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _logLocalInfo];
  if ([*(a1 + 40) intValue])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 40);
        v5 = *(a1 + 48);
        *buf = 138412546;
        v45 = v5;
        v46 = 2112;
        v47 = v6;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Failed delivery receipt for message: %@   status is: %@", buf, 0x16u);
      }
    }

LABEL_6:
    v3[2](v3);
    goto LABEL_29;
  }

  if (IMGetCachedDomainBoolForKey())
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 48);
        *buf = 138412290;
        v45 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Ignoring delivery receipt for message: %@", buf, 0xCu);
      }
    }

    goto LABEL_6;
  }

  v9 = *(a1 + 32);
  v10 = [*(a1 + 56) account];
  v43 = [v9 imdAccountForIDSAccount:v10];

  v11 = [*(a1 + 64) unsignedIntValue];
  v12 = [*(a1 + 64) unsignedIntValue];
  if ((v12 & 2) != 0)
  {
    [*(a1 + 32) noteLastItemFromStorage:*(a1 + 48)];
  }

  else if (v11)
  {
    [*(a1 + 32) noteItemFromStorage:*(a1 + 48)];
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    v14 = [v13 _numberForKey:@"c"];
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v45 = v14;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Received delivery status for command: %@", buf, 0xCu);
      }
    }

    if ([v14 unsignedIntValue] == 106)
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 48);
      v18 = [NSDate __im_iMessageDateFromTimeStamp:*(a1 + 80)];
      [v16 didReceiveMessageDeliveryReceiptForMessageID:v17 date:v18 account:v43];

      v19 = [*(a1 + 72) _stringForKey:@"tP"];
      v20 = [*(a1 + 72) _stringForKey:@"sP"];
      v21 = [*(a1 + 72) _dataForKey:@"t"];
      v22 = [*(a1 + 72) _dictionaryForKey:@"p"];
      v23 = [*(a1 + 72) _numberForKey:@"aT"];
      v24 = *(a1 + 80);
      v25 = *(a1 + 64);
      [*(a1 + 32) handler:*(a1 + 56) messageIDSaved:*(a1 + 48) ofType:v23 toIdentifier:v19 fromIdentifier:v20 groupContext:v22 fromToken:v21 timeStamp:v24 fromIDSID:*(a1 + 96) needsDeliveryReceipt:*(a1 + 104) deliveryContext:*(a1 + 112) storageContext:v25 batchContext:*(a1 + 120)];
    }
  }

  else
  {
    v30 = +[IMDMessageStore sharedInstance];
    v14 = [v30 messageWithGUID:*(a1 + 48)];

    if ([v14 errorCode] != 43)
    {
      v31 = *(a1 + 32);
      v32 = *(a1 + 48);
      v33 = [NSDate __im_iMessageDateFromTimeStamp:*(a1 + 80)];
      v34 = [v31 didReceiveMessageDeliveryReceiptForMessageID:v32 date:v33 account:v43];

      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = *(a1 + 48);
          v37 = *(a1 + 72);
          v38 = @"NO";
          if (v34)
          {
            v38 = @"YES";
          }

          *buf = 138412802;
          v45 = v36;
          v46 = 2112;
          v47 = v37;
          v48 = 2112;
          v49 = v38;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "Received Fresh Delivery Receipt For Message ID: %@ with Context : %@  Peer Reflecting It? %@", buf, 0x20u);
        }
      }

      if (v34)
      {
        v39 = *(a1 + 88);
        v40 = [*(a1 + 32) idsAccountForFromURI:v39 toURI:*(a1 + 88)];
        if ([v40 _validateIDSAccount])
        {
          v41 = v40;
        }

        else
        {
          v41 = [*(a1 + 56) account];

          v42 = [*(a1 + 32) callerURIForIDSAccount:v41];

          v39 = v42;
        }

        [*(a1 + 32) forwardDeliveryReceiptForMessageID:*(a1 + 48) withAccount:v41 callerURI:v39];
      }
    }
  }

  if (v11)
  {
    v26 = *(a1 + 32);
    v27 = *(a1 + 120);
    v28 = [*(a1 + 56) account];
    v29 = [v26 idsServiceForIDSAccount:v28];
    [v26 noteItemProcessed:(v12 >> 1) & 1 batchContext:v27 usingService:v29];
  }

  if (v3)
  {
    v3[2](v3);
  }

LABEL_29:
}

void sub_DD84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v24 = 138412546;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Received Reflected Delivery Receipt For Message ID: %@ with Context : %@", &v24, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 56))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v10 = *(a1 + 40);
      v9 = *(a1 + 48);
      v24 = 138412802;
      v25 = v9;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "fromIDSID:%@, needsDeliveryReceipt %@, deliveryContext %@", &v24, 0x20u);
    }
  }

  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = [NSDate __im_iMessageDateFromTimeStamp:*(a1 + 72)];
  v14 = *(a1 + 64);
  v15 = [*(a1 + 80) account];
  v16 = [v14 imdAccountForIDSAccount:v15];
  [v11 didReceiveMessageDeliveryReceiptForMessageID:v12 date:v13 account:v16];

  v17 = *(a1 + 64);
  v18 = *(a1 + 32);
  v20 = *(a1 + 40);
  v19 = *(a1 + 48);
  v21 = *(a1 + 56);
  v22 = *(a1 + 88);
  v23 = [*(a1 + 80) account];
  [v17 sendDeliveryReceiptForMessageID:v18 toID:v19 deliveryContext:v20 needsDeliveryReceipt:v21 callerID:v22 account:v23];

  v3[2](v3);
}

uint64_t sub_E5DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_E5F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 128) & 1) != 0 || *(a1 + 129) == 1)
  {
    [*(a1 + 32) decrementPendingReadReceiptFromStorageCount];
  }

  v4 = [*(a1 + 40) isEqualToString:*(a1 + 48)];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 56);
      v8 = *(a1 + 64);
      v9 = @"NO";
      if (v4)
      {
        v9 = @"YES";
      }

      v38 = 138413058;
      v39 = v7;
      v40 = 2112;
      v41 = v6;
      v42 = 2112;
      v43 = v8;
      v44 = 2112;
      v45 = v9;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Received read receipt for: %@   from: %@   token: %@  from me: %@", &v38, 0x2Au);
    }
  }

  [*(a1 + 32) _logLocalInfo];
  v10 = *(a1 + 32);
  v11 = *(a1 + 56);
  v12 = [NSDate __im_iMessageDateFromTimeStamp:*(a1 + 72)];
  if (v4)
  {
    [v10 didReceiveMessageReadForMessageID:v11 date:v12 completionBlock:0];
  }

  else
  {
    [v10 didReceiveMessageReadReceiptForMessageID:v11 date:v12 completionBlock:0];

    v13 = +[IMDChatRegistry sharedInstance];
    v14 = [*(a1 + 40) _stripFZIDPrefix];
    v15 = [*(a1 + 32) account];
    v12 = [v13 existingChatForID:v14 account:v15];

    if (v12 && *(a1 + 80))
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = *(a1 + 80);
          v38 = 138412546;
          v39 = v17;
          v40 = 2112;
          v41 = v12;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "About to update last active device on getting a read receipt to %@ for chat %@", &v38, 0x16u);
        }
      }

      v18 = [*(a1 + 32) deliveryController];
      v19 = *(a1 + 80);
      v20 = [*(a1 + 40) _stripFZIDPrefix];
      [v18 updateLatestActiveDestination:v19 ForHandle:v20 incomingType:1];

      v21 = [*(a1 + 32) deliveryController];
      v22 = *(a1 + 40);
      v23 = IMSingleObjectArray();
      [v21 noteRecentMessageForPeople:v23];
    }
  }

  v24 = *(a1 + 32);
  v25 = *(a1 + 80);
  v26 = *(a1 + 88);
  v27 = *(a1 + 48);
  v28 = *(a1 + 56);
  v29 = *(a1 + 96);
  v30 = [*(a1 + 104) account];
  [v24 sendDeliveryReceiptForMessageID:v28 toID:v25 deliveryContext:v26 needsDeliveryReceipt:v29 callerID:v27 account:v30];

  if (*(a1 + 128) == 1)
  {
    v31 = *(a1 + 32);
    v32 = *(a1 + 129);
    v33 = *(a1 + 112);
    v34 = [*(a1 + 104) account];
    v35 = [v31 idsServiceForIDSAccount:v34];
    [v31 noteItemProcessed:v32 & 1 batchContext:v33 usingService:v35];
  }

  v36 = *(*(a1 + 120) + 8);
  v37 = *(v36 + 40);
  *(v36 + 40) = 0;

  if (v3)
  {
    v3[2](v3);
  }
}

void sub_EAFC(uint64_t a1, void *a2)
{
  v43 = a2;
  v2 = +[IMDMessageStore sharedInstance];
  v48 = [v2 messageWithGUID:*(a1 + 32) registerAttachments:1];

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v48;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "update attachments for msg %@", buf, 0xCu);
    }
  }

  v4 = [v48 sender];
  v5 = [*(a1 + 40) componentsSeparatedByString:@":"];
  v6 = [v5 lastObject];
  v7 = [v4 isEqual:v6];

  v8 = +[NSDate date];
  v9 = [v48 time];
  [v8 timeIntervalSinceDate:v9];
  v11 = v10;

  [*(a1 + 48) _messageHQUpdateReceiveTimeout];
  if (v11 <= v12)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v77 = *(a1 + 40);
    v14 = [NSArray arrayWithObjects:&v77 count:1];
    v41 = IMServiceNameForCanonicalIDSAddresses();

    v39 = [IMSenderContext businessChatContextWithServiceName:v41];
    v15 = +[IMDAttachmentUtilities tinyImageQualitySizeLimit];
    v40 = [IDSServerBag sharedInstanceForBagType:1];
    v42 = [v40 objectForKey:@"lq-buffer-photo-size-limit"];
    objc_opt_class();
    v38 = v15 + 153600;
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v42 intValue] >= 1)
    {
      v38 = [v42 intValue];
    }

    v46 = objc_alloc_init(NSMutableArray);
    v45 = objc_alloc_init(NSMutableArray);
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = *(a1 + 56);
    v50 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
    if (v50)
    {
      v49 = *v70;
      do
      {
        v16 = 0;
        do
        {
          if (*v70 != v49)
          {
            v17 = v16;
            objc_enumerationMutation(obj);
            v16 = v17;
          }

          v51 = v16;
          v18 = *(*(&v69 + 1) + 8 * v16);
          v19 = [v18 objectForKey:@"lowQuality"];
          v52 = [v18 objectForKey:@"highQuality"];
          if ([v52 count])
          {
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v53 = [v48 fileTransferGUIDs];
            v55 = [v53 countByEnumeratingWithState:&v65 objects:v75 count:16];
            if (v55)
            {
              v54 = *v66;
              while (2)
              {
                for (i = 0; i != v55; i = i + 1)
                {
                  if (*v66 != v54)
                  {
                    objc_enumerationMutation(v53);
                  }

                  v21 = *(*(&v65 + 1) + 8 * i);
                  v22 = +[IMDFileTransferCenter sharedInstance];
                  v23 = [v22 transferForGUID:v21];

                  v24 = [v23 userInfo];
                  v25 = [v24 objectForKey:@"mmcs-signature-hex"];
                  v26 = [v25 stringValue];
                  v27 = [v19 objectForKeyedSubscript:@"mmcs-signature-hex"];
                  v28 = [v26 isEqualToString:v27];

                  v29 = [v23 userInfo];
                  v30 = [v29 objectForKey:@"mmcs-url"];
                  v31 = [v30 stringValue];
                  v32 = [v19 objectForKeyedSubscript:@"mmcs-url"];
                  LODWORD(v26) = [v31 isEqualToString:v32];

                  if ((v28 & v26) == 1)
                  {
                    [v46 addObject:v21];
                    [v45 addObject:v52];

                    goto LABEL_28;
                  }
                }

                v55 = [v53 countByEnumeratingWithState:&v65 objects:v75 count:16];
                if (v55)
                {
                  continue;
                }

                break;
              }
            }

LABEL_28:
          }

          v16 = v51 + 1;
        }

        while ((v51 + 1) != v50);
        v50 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
      }

      while (v50);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v74 = 0;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_F378;
    v61[3] = &unk_112090;
    v33 = v45;
    v63 = buf;
    v64 = v38;
    v62 = v33;
    [v46 enumerateObjectsUsingBlock:v61];
    if (*(*&buf[8] + 24) == 1)
    {
      v34 = [*(a1 + 48) attachmentController];
      v35 = *(a1 + 40);
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_F618;
      v57[3] = &unk_1120E0;
      v58 = v46;
      v59 = *(a1 + 56);
      v60 = v43;
      [v34 retrieveAttachmentsForMessage:v48 inlineAttachments:0 displayID:v35 topic:v41 comingFromStorage:0 shouldForceAutoDownload:0 senderContext:v39 completionBlock:v57];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *v56 = 0;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "Attachments received earlier are not low quality and hence rejecting the update attachments.", v56, 2u);
        }
      }

      v43[2]();
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        *&buf[4] = v7;
        *&buf[8] = 2048;
        *&buf[10] = v11;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "HQ transfer is dropped on receiver. Sender of low quality asset and update high quality asset match: %d. Time interval from receiving low quality asset to update attachment: %f", buf, 0x12u);
      }
    }

    v43[2]();
  }
}

void sub_F378(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v23 = a2;
  if ([*(a1 + 32) count] <= a3)
  {
    *a4 = 1;
  }

  else
  {
    v7 = +[IMDFileTransferCenter sharedInstance];
    v8 = [v7 transferForGUID:v23];

    v9 = [v8 userInfo];
    v10 = [v9 objectForKey:@"file-size"];
    v11 = [v10 stringValue];

    if (v8 && [v11 integerValue] < *(a1 + 48) && UTTypeConformsTo(objc_msgSend(v8, "type"), kUTTypeImage))
    {
      v12 = [v8 userInfo];
      v13 = [v12 mutableCopy];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = objc_alloc_init(NSMutableDictionary);
      }

      v16 = v15;

      v17 = [*(a1 + 32) objectAtIndexedSubscript:a3];
      v18 = [v17 objectForKeyedSubscript:@"mmcs-signature-hex"];
      if (v18)
      {
        CFDictionarySetValue(v16, @"mmcs-signature-hex", v18);
      }

      v19 = [v17 objectForKeyedSubscript:@"mmcs-url"];
      if (v19)
      {
        CFDictionarySetValue(v16, @"mmcs-url", v19);
      }

      v20 = [v17 objectForKeyedSubscript:@"decryption-key"];
      if (v20)
      {
        CFDictionarySetValue(v16, @"decryption-key", v20);
      }

      v21 = [v17 objectForKeyedSubscript:@"file-size"];
      if (v21)
      {
        CFDictionarySetValue(v16, @"file-size", v21);
      }

      CFDictionarySetValue(v16, @"isHQTransfer", @"YES");
      [v8 setUserInfo:v16];
      [v8 _setTransferState:1];
      v22 = +[IMDAttachmentStore sharedInstance];
      [v22 updateAttachment:v8];

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

void sub_F618(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_F6B4;
  v3[3] = &unk_1120B8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v3];
  (*(*(a1 + 48) + 16))();
}

void sub_F6B4(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([*(a1 + 32) count] <= a3)
  {
    *a4 = 1;
  }

  else
  {
    v7 = +[IMDFileTransferCenter sharedInstance];
    v8 = [v7 transferForGUID:v10];

    v9 = +[IMDAttachmentStore sharedInstance];
    [v9 updateAttachment:v8];
  }
}

void sub_FCAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) isEqualToString:*(a1 + 40)];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = @"NO";
      if (v4)
      {
        v9 = @"YES";
      }

      v27 = 138413058;
      v28 = v7;
      v29 = 2112;
      v30 = v6;
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Received played receipt for: %@   from: %@   token: %@  from me: %@", &v27, 0x2Au);
    }
  }

  [*(a1 + 64) _logLocalInfo];
  v10 = *(a1 + 64);
  v11 = *(a1 + 48);
  v12 = [NSDate __im_iMessageDateFromTimeStamp:*(a1 + 72)];
  if (v4)
  {
    [v10 didReceiveMessagePlayedForMessageID:v11 date:v12 completionBlock:v3];
  }

  else
  {
    [v10 didReceiveMessagePlayedReceiptForMessageID:v11 date:v12 completionBlock:v3];
  }

  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 96);
  v19 = [*(a1 + 104) account];
  [v13 sendDeliveryReceiptForMessageID:v17 toID:v14 deliveryContext:v15 needsDeliveryReceipt:v18 callerID:v16 account:v19];

  if (*(a1 + 128) == 1)
  {
    v20 = *(a1 + 64);
    v21 = *(a1 + 129);
    v22 = *(a1 + 112);
    v23 = [*(a1 + 104) account];
    v24 = [v20 idsServiceForIDSAccount:v23];
    [v20 noteItemProcessed:v21 & 1 batchContext:v22 usingService:v24];
  }

  v25 = *(*(a1 + 120) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = 0;
}

void sub_10490(uint64_t a1, void *a2)
{
  v34 = a2;
  v33 = [*(a1 + 32) isEqualToString:*(a1 + 40)];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);
      v7 = @"NO";
      if (v33)
      {
        v7 = @"YES";
      }

      *buf = 138413058;
      v37 = v5;
      v38 = 2112;
      v39 = v4;
      v40 = 2112;
      v41 = v6;
      v42 = 2112;
      v43 = v7;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Received saved receipt for: %@   from: %@   token: %@  from me: %@", buf, 0x2Au);
    }
  }

  [*(a1 + 64) _logLocalInfo];
  if ([*(a1 + 72) count])
  {
    v8 = [*(a1 + 64) groupController];
    v35 = [v8 chatForGroupMessagePayload:*(a1 + 72) fromIdentifier:*(a1 + 32) toIdentifier:*(a1 + 40)];
  }

  else
  {
    v35 = 0;
  }

  v9 = *(a1 + 48);
  v31 = v9;
  v32 = *(a1 + 64);
  v10 = [*(a1 + 80) integerValue];
  v11 = [v35 chatIdentifier];
  v12 = *(a1 + 32);
  v13 = [NSDate __im_iMessageDateFromTimeStamp:*(a1 + 88)];
  v14 = *(a1 + 64);
  v15 = [*(a1 + 96) account];
  v16 = [v14 imdAccountForIDSAccount:v15];
  [v32 didReceiveMessageSavedForMessageID:v31 ofType:v10 forChat:v11 fromHandle:v12 fromMe:v33 date:v13 account:v16 completionBlock:v34];

  v17 = *(a1 + 64);
  v18 = *(a1 + 48);
  v19 = *(a1 + 104);
  v20 = *(a1 + 112);
  v21 = *(a1 + 120);
  v22 = *(a1 + 40);
  v23 = [*(a1 + 96) account];
  [v17 sendDeliveryReceiptForMessageID:v18 toID:v19 deliveryContext:v20 needsDeliveryReceipt:v21 callerID:v22 account:v23];

  if (*(a1 + 144) == 1)
  {
    v24 = *(a1 + 64);
    v25 = *(a1 + 145);
    v26 = *(a1 + 128);
    v27 = [*(a1 + 96) account];
    v28 = [v24 idsServiceForIDSAccount:v27];
    [v24 noteItemProcessed:v25 & 1 batchContext:v26 usingService:v28];
  }

  v29 = *(*(a1 + 136) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = 0;
}

void sub_1206C(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, " ** Sending decryption failure", buf, 2u);
    }
  }

  v3 = [*(a1 + 32) deliveryController];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) idsAccountForURI:v5 IDSServiceName:@"com.apple.madrid"];
  [v3 sendMessageError:200 toToken:v6 toID:v4 toGroup:0 fromID:v5 fromAccount:v7 forMessageID:*(a1 + 64) completionBlock:&stru_112170];
}

void sub_121AC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v232 = a2;
  v241 = a3;
  v235 = a4;
  v236 = a5;
  v242 = a6;
  v13 = a7;
  v296 = 0;
  v297 = &v296;
  v298 = 0x3032000000;
  v299 = sub_E5DC;
  v300 = sub_E5EC;
  v301 = [*(a1 + 32) _stripFZIDPrefix];
  v240 = *(a1 + 40);
  if (v241 || (*(a1 + 160) & 1) != 0 || [v242 count] < 3 || !objc_msgSend(*(a1 + 48), "_isFromLinkedID:fromID:", *(a1 + 56), *(a1 + 32)))
  {
    if (![v13 count])
    {
      v238 = [[NSAttributedString alloc] initWithString:@" "];
      v205 = 0;
      v206 = 0;
      v204 = 0;
      v218 = 0;
      v219 = 0;
      v227 = 0;
      v228 = 0;
      v224 = 0;
      v225 = 0;
      v237 = 0;
      v36 = 0;
      v226 = 0;
      v222 = 0;
      v223 = 0;
      v201 = 0;
      v202 = 0;
      v203 = 0;
      v230 = 0;
      v231 = 0;
      v207 = 0;
      v239 = 0;
      v208 = 0;
      v210 = 0;
      v212 = 0;
      v214 = 0;
      v229 = 0;
      v21 = 0;
      v233 = 0;
      v234 = 0;
      v37 = 1;
      v216 = 1;
      goto LABEL_102;
    }

    v229 = [v13 _stringForKey:@"x"];
    v231 = [v13 _stringForKey:@"s"];
    v223 = [v13 _stringForKey:@"t"];
    v22 = [v13 _numberForKey:@"u"];
    v216 = [v22 BOOLValue];

    v23 = [v13 _numberForKey:@"a"];
    v214 = [v23 BOOLValue];

    v24 = [v13 _numberForKey:@"ar"];
    v212 = [v24 BOOLValue];

    v25 = [v13 _numberForKey:@"e"];
    v210 = [v25 BOOLValue];

    v26 = [v13 _numberForKey:@"sos"];
    v208 = [v26 BOOLValue];

    v27 = [v13 _numberForKey:@"c"];
    BYTE4(v207) = [v27 BOOLValue];

    v28 = +[IMFeatureFlags sharedFeatureFlags];
    v29 = [v28 isBIAEnabled];

    if (v29 && ([v13 _numberForKey:@"bia"], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "BOOLValue"), v30, v31))
    {
      v227 = [v13 _stringForKey:@"brid"];
      BYTE4(v205) = 1;
    }

    else
    {
      v227 = 0;
      BYTE4(v205) = 0;
    }

    v32 = *(a1 + 56);
    if (IMStringIsBusinessID() && (v33 = *(a1 + 56), (IMStringIsStewie() & 1) != 0) || ([v13 _stringForKey:@"m"], v34 = objc_claimAutoreleasedReturnValue(), (v239 = v34) == 0))
    {
      LOBYTE(v207) = 0;
      v239 = 0;
    }

    else
    {
      v35 = [v34 componentsSeparatedByString:@""];;
      LOBYTE(v207) = [*(a1 + 48) _amIMentioned:*(a1 + 56) inMentions:v35];
    }

    v226 = [v13 _stringForKey:@"tg"];
    v38 = [v13 _numberForKey:@"ms"];
    v206 = [v38 unsignedIntegerValue];

    v230 = [v13 _stringForKey:@"amk"];
    v39 = [v13 _numberForKey:@"amt"];
    v203 = [v39 longLongValue];

    v40 = [v13 _numberForKey:@"amrlc"];
    v202 = [v40 integerValue];

    v41 = [v13 _numberForKey:@"amrln"];
    v201 = [v41 integerValue];

    v222 = [v13 _stringForKey:@"ame"];
    v225 = [v13 _dataForKey:@"sld"];
    v42 = +[IMFeatureFlags sharedFeatureFlags];
    LODWORD(v41) = [v42 isTranscriptSharingEnabled];

    if (v41 && (v43 = *(a1 + 32), IMStringIsBusinessID()))
    {
      v295 = 0;
      v44 = [IMSharedEmergencyInfo infoFromDictionary:v13 isStewieTranscriptSharingMessage:&v295];
      v45 = v44;
      if (v295 == 1)
      {
        if (!v44)
        {
          if (IMOSLoggingEnabled())
          {
            v135 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
            {
              v136 = *(a1 + 32);
              *buf = 138412290;
              v304 = v136;
              _os_log_impl(&dword_0, v135, OS_LOG_TYPE_INFO, "Received a business chat from %@ with INVALID stewie transcript sharing data. Dropping this message", buf, 0xCu);
            }
          }

          v224 = 0;
          v237 = 0;
          v238 = 0;
          v36 = 0;
          v21 = 0;
          v233 = 0;
          v234 = 0;
          goto LABEL_146;
        }

        v234 = [v44 emergencyUserPersona];
        v233 = [v45 senderPersona];
LABEL_30:
        v46 = [v13 _numberForKey:@"gt"];
        LOBYTE(v205) = [v46 BOOLValue];
        v228 = v45;

        v36 = [v13 _stringForKey:@"bid"];
        v47 = [v13 _dataForKey:@"bp"];
        v237 = [v47 _FTOptionallyDecompressData];

        v48 = [v13 _numberForKey:@"hn"];
        if ([v48 BOOLValue])
        {
          v49 = *(a1 + 32);
          IsBusinessID = IMStringIsBusinessID();

          if (IsBusinessID)
          {
            if (IMOSLoggingEnabled())
            {
              v51 = OSLogHandleForIMEventCategory();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                v52 = *(a1 + 80);
                *buf = 138412290;
                v304 = v52;
                _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "Not displaying notification for message with ID %@", buf, 0xCu);
              }
            }

            v204 = 1;
LABEL_39:
            if (([v36 length] || objc_msgSend(v237, "length")) && IMOSLoggingEnabled())
            {
              v53 = OSLogHandleForIMEventCategory();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
              {
                v54 = *(a1 + 80);
                v55 = [v237 length];
                *buf = 138412802;
                v304 = v54;
                v305 = 2112;
                v306 = v36;
                v307 = 2048;
                v308 = v55;
                _os_log_impl(&dword_0, v53, OS_LOG_TYPE_INFO, "Received a message: %@ with balloonBundleID: %@ and payload: %lu", buf, 0x20u);
              }
            }

            v56 = [v13 _numberForKey:@"oe"];
            v57 = v56;
            if (v56)
            {
              v58 = v56;
            }

            else
            {
              v58 = [*(a1 + 88) originalTimestamp];
            }

            v59 = [*(a1 + 48) _shouldAdjustTimestampOfResentMessages];
            if (v58)
            {
              v60 = v59;
            }

            else
            {
              v60 = 0;
            }

            if (v60 == 1)
            {
              if (![*(a1 + 48) _originalTimestampWithinAcceptableWindow:v58 timestamp:v240])
              {
                if (IMOSLoggingEnabled())
                {
                  v81 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
                  {
                    v82 = *(a1 + 80);
                    [*(a1 + 48) _messageRetryTimeout];
                    v83 = [NSNumber numberWithDouble:?];
                    *buf = 138413058;
                    v304 = v82;
                    v305 = 2112;
                    v306 = v58;
                    v307 = 2112;
                    v308 = v240;
                    v309 = 2112;
                    v310 = v83;
                    _os_log_impl(&dword_0, v81, OS_LOG_TYPE_INFO, "Incoming message with guid %@ has original timestamp outside the acceptable window. Dropping this message. originalTimestamp: %@ timestamp: %@ timeoutWindow: %@", buf, 0x2Au);
                  }
                }

                [*(a1 + 72) sendManualAckForMessageWithContext:*(a1 + 88)];
                v84 = *(a1 + 48);
                v85 = [*(a1 + 72) service];
                [v84 _sendCertifiedDeliveryReceiptIfPossible:v85 messageContext:*(a1 + 88) guid:*(a1 + 80) messageWasStored:1 needsDeliveryReceipt:0 failureReason:0];

                v86 = *(*(a1 + 152) + 8);
                v65 = *(v86 + 40);
                *(v86 + 40) = 0;
                goto LABEL_77;
              }

              if (IMOSLoggingEnabled())
              {
                v61 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                {
                  v62 = *(a1 + 80);
                  *buf = 138412802;
                  v304 = v240;
                  v305 = 2112;
                  v306 = v58;
                  v307 = 2112;
                  v308 = v62;
                  _os_log_impl(&dword_0, v61, OS_LOG_TYPE_INFO, "Adjusting timestamp of incoming message to original timestamp. Timestamp: %@ Original timestamp: %@ guid: %@", buf, 0x20u);
                }
              }

              v63 = v58;

              v240 = v63;
            }

            v64 = [v36 componentsSeparatedByString:@":"];
            v65 = [v64 lastObject];

            v66 = [IDSServerBag sharedInstanceForBagType:1];
            v67 = IMSharedHelperAppBlocklisted();

            if (v67)
            {
              if (IMOSLoggingEnabled())
              {
                v68 = OSLogHandleForIMEventCategory();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v304 = v36;
                  _os_log_impl(&dword_0, v68, OS_LOG_TYPE_INFO, "Banned app message due to server bag key. Dropping message with ID %@", buf, 0xCu);
                }
              }

              if (*(a1 + 161) == 1)
              {
                v69 = *(a1 + 48);
                v70 = *(a1 + 162);
                v71 = *(a1 + 64);
                v72 = [*(a1 + 72) account];
                v73 = [v69 idsServiceForIDSAccount:v72];
                [v69 noteItemProcessed:v70 batchContext:v71 usingService:v73];
              }

              v74 = *(*(a1 + 152) + 8);
              v75 = *(v74 + 40);
              *(v74 + 40) = 0;

LABEL_77:
              v224 = 0;
              v238 = 0;
              v21 = 0;
LABEL_146:

              goto LABEL_147;
            }

            v224 = [v13 _stringForKey:@"iid"];
            v76 = [v13 _stringForKey:@"ix"];
            v77 = [v13 _dataForKey:@"tic"];
            v219 = [v77 _FTOptionallyDecompressData];

            v78 = [v13 _dataForKey:@"ati"];
            v220 = [v78 _FTOptionallyDecompressData];

            v199 = IMGetAttributedInfoArrayAllowlistedClasses();
            if (IMOSLoggingEnabled())
            {
              v79 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v79, OS_LOG_TYPE_INFO, "Calling IMUnarchiverDecoder decoder to decode attributionInfoData", buf, 2u);
              }
            }

            v80 = [IMUnarchiverDecoder decodeEncodedDataSecurely:v220 ofClass:objc_opt_class() includesAllowlistedClasses:v199];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v218 = v80;
            }

            else
            {
              v218 = 0;
            }

            if (IMOSLoggingEnabled())
            {
              v87 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
              {
                v88 = MarcoLoggingStringForMessageData();
                *buf = 138413058;
                v304 = v88;
                v305 = 2112;
                v306 = v235;
                v307 = 2112;
                v308 = v236;
                v309 = 2112;
                v310 = v242;
                _os_log_impl(&dword_0, v87, OS_LOG_TYPE_DEBUG, "Received message dictionary: %@  groupID: %@   name: %@    participants: %@", buf, 0x2Au);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v89 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
              {
                v90 = MarcoLoggingStringForMessageData();
                v91 = MarcoLoggingStringForMessageData();
                v92 = MarcoLoggingStringForMessageData();
                v93 = v92;
                v94 = v297[5];
                v95 = @"NO";
                if (*(a1 + 160))
                {
                  v95 = @"YES";
                }

                *buf = 138414082;
                v304 = v90;
                v305 = 2112;
                v306 = v91;
                v307 = 2112;
                v308 = v92;
                v309 = 2112;
                v310 = v94;
                v311 = 2112;
                v312 = v242;
                v313 = 2112;
                v314 = v95;
                v315 = 2112;
                v316 = v231;
                v317 = 2112;
                v318 = v242;
                _os_log_impl(&dword_0, v89, OS_LOG_TYPE_DEBUG, "Received xhtml: %@ plain: %@ AuxXHTML: %@ from: %@   to: %@  (from me: %@)  subject: %@  participants: %@", buf, 0x52u);
              }
            }

            if ([v76 length])
            {
              v21 = [[MessageToSuperParserContext alloc] initWithContent:v76];
              v96 = +[IMXMLParser sharedInstance];
              [v96 parseContext:v21];

              v238 = [(MessageToSuperParserContext *)v21 body];
              if (IMOSLoggingEnabled())
              {
                v97 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
                {
                  v98 = [v238 string];
                  v99 = MarcoLoggingStringForMessageData();
                  *buf = 138412290;
                  v304 = v99;
                  _os_log_impl(&dword_0, v97, OS_LOG_TYPE_DEBUG, "      Aux xhtml parsed body: %@", buf, 0xCu);
                }
              }
            }

            else
            {
              if (!v229)
              {
                if (v223)
                {
                  v131 = [[NSAttributedString alloc] initWithString:v223];
                  v238 = [v131 __im_attributedStringByAssigningMessagePartNumbers];
                  if (IMOSLoggingEnabled())
                  {
                    v132 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
                    {
                      v133 = [v238 string];
                      v134 = MarcoLoggingStringForMessageData();
                      *buf = 138412290;
                      v304 = v134;
                      _os_log_impl(&dword_0, v132, OS_LOG_TYPE_DEBUG, "      plain parsed body: %@", buf, 0xCu);
                    }
                  }

                  v104 = [v238 length] != 0;
                }

                else
                {
                  v104 = 0;
                  v238 = 0;
                }

                v21 = 0;
                goto LABEL_101;
              }

              v21 = [[MessageToSuperParserContext alloc] initWithContent:v229];
              v100 = +[IMXMLParser sharedInstance];
              [v100 parseContext:v21];

              v238 = [(MessageToSuperParserContext *)v21 body];
              if (IMOSLoggingEnabled())
              {
                v101 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
                {
                  v102 = [v238 string];
                  v103 = MarcoLoggingStringForMessageData();
                  *buf = 138412290;
                  v304 = v103;
                  _os_log_impl(&dword_0, v101, OS_LOG_TYPE_DEBUG, "      xhtml parsed body: %@", buf, 0xCu);
                }
              }
            }

            v104 = [v238 length] != 0;
LABEL_101:

            v37 = !v104;
LABEL_102:
            if (IMOSLoggingEnabled())
            {
              v105 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v304 = v242;
                _os_log_impl(&dword_0, v105, OS_LOG_TYPE_INFO, "Participants: %@", buf, 0xCu);
              }
            }

            v221 = [MessageGroupController memberDisplayIDsFromParticipants:v242 toIdentifier:*(a1 + 56)];
            if ([*(a1 + 48) _shouldIgnoreMessageFromSender:*(a1 + 32) balloonBID:v36 fromMe:*(a1 + 160)])
            {
              if (IMOSLoggingEnabled())
              {
                v106 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
                {
                  v107 = *(a1 + 32);
                  v108 = *(a1 + 56);
                  v109 = *(a1 + 160);
                  *buf = 138413058;
                  v304 = v36;
                  v305 = 2112;
                  v306 = v107;
                  v307 = 2112;
                  v308 = v108;
                  v309 = 1024;
                  LODWORD(v310) = v109;
                  _os_log_impl(&dword_0, v106, OS_LOG_TYPE_INFO, "   Ignoring message for App: %@ from non-business endpoint :%@  to: %@ fromMe: %d", buf, 0x26u);
                }
              }

              if (*(a1 + 162) == 1)
              {
                [*(a1 + 48) noteLastItemProcessed];
              }

              goto LABEL_144;
            }

            if ((*(a1 + 163) | v37 | [*(a1 + 48) _isAllowlistedUnencryptedSender:*(a1 + 32)]))
            {
              if (v242)
              {
                v110 = v216;
              }

              else
              {
                v110 = 1;
              }

              if (v110 & 1) != 0 || ([v242 containsObject:*(a1 + 32)])
              {
                v111 = [v221 count];
                v200 = v111 > 1;
                if (![v221 count] && objc_msgSend(v242, "count") == &dword_0 + 1)
                {
                  v112 = v242;

                  v221 = v112;
                }

                BYTE2(v198) = BYTE4(v207);
                BYTE1(v198) = v208;
                LOBYTE(v198) = v207;
                LOBYTE(v197) = v205;
                v113 = [*(a1 + 48) _computeFlagsForIncomingMessage:0 isFromMe:*(a1 + 160) unfinished:v216 isAudioMessage:v214 isAutoReply:v212 isExpirable:v210 isGroupTypingMessage:v197 messageSource:v206 participants:v242 hasUnseenMention:v198 isSOS:? isCritical:?];
                if (![v238 length])
                {
                  v114 = [[NSAttributedString alloc] initWithString:&stru_115E20];

                  v238 = v114;
                }

                v115 = *(a1 + 160);
                if (v115 == 1 && v111 <= 1)
                {
                  if (![v221 count])
                  {
                    v137 = [*(a1 + 32) _stripFZIDPrefix];
                    v116 = v297[5];
                    v297[5] = v137;
                    goto LABEL_160;
                  }

                  LOBYTE(v115) = *(a1 + 160);
                }

                if ((v115 & 1) == 0 || v111 > 1 || ![v221 count])
                {
                  goto LABEL_161;
                }

                v116 = [v221 lastObject];
                v117 = [v116 _stripFZIDPrefix];
                v118 = v297[5];
                v297[5] = v117;

LABEL_160:
LABEL_161:
                if (*(a1 + 32))
                {
                  v138 = [*(a1 + 48) deliveryController];
                  v302 = *(a1 + 32);
                  v139 = [NSArray arrayWithObjects:&v302 count:1];
                  [v138 noteRecentMessageForPeople:v139];
                }

                v140 = [v13 _dataForKey:@"msi"];
                v209 = v140;
                if (v140)
                {
                  v211 = [NSDictionary dictionaryWithMessageSummaryInfoData:v140];
                }

                else
                {
                  v211 = 0;
                }

                if (v230 && [v230 length])
                {
                  v141 = [IMAssociatedMessageItem alloc];
                  v142 = v297[5];
                  v143 = [NSDate __im_iMessageDateFromTimeStamp:v240];
                  v144 = [(MessageToSuperParserContext *)v21 fileTransferGUIDs];
                  v145 = [v141 initWithSender:v142 time:v143 body:v238 attributes:0 fileTransferGUIDs:v144 flags:v113 error:0 guid:*(a1 + 80) associatedMessageGUID:v230 associatedMessageType:v203 associatedMessageRange:v202 associatedMessageEmoji:v201 messageSummaryInfo:v222 threadIdentifier:{v211, v226}];

                  if (IMOSLoggingEnabled())
                  {
                    v146 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v304 = v230;
                      _os_log_impl(&dword_0, v146, OS_LOG_TYPE_INFO, "Received message associated with GUID: %@", buf, 0xCu);
                    }
                  }
                }

                else
                {
                  if ([v36 containsString:IMBalloonPluginIdentifierSurf])
                  {
                    v147 = 1;
                  }

                  else
                  {
                    v147 = [v36 containsString:IMBalloonPluginIdentifierSurfDeprecated];
                  }

                  v148 = v297[5];
                  v149 = +[IMFeatureFlags sharedFeatureFlags];
                  v150 = [v149 isTranscriptSharingEnabled];

                  if (v150)
                  {
                    v151 = [v233 senderID];
                    v152 = v151;
                    if (v151)
                    {
                      v153 = v151;
                    }

                    else
                    {
                      v153 = v148;
                    }

                    v154 = v153;

                    v148 = v154;
                  }

                  v155 = [IMMessageItem alloc];
                  v156 = [NSDate __im_iMessageDateFromTimeStamp:v240];
                  if (v147)
                  {
                    v157 = 0;
                  }

                  else
                  {
                    v157 = [(MessageToSuperParserContext *)v21 fileTransferGUIDs];
                  }

                  v145 = [v155 initWithSender:v148 time:v156 body:v238 attributes:0 fileTransferGUIDs:v157 flags:v113 error:0 guid:*(a1 + 80) threadIdentifier:v226];
                  if ((v147 & 1) == 0)
                  {
                  }

                  [v145 setMessageSummaryInfo:v211];
                  v158 = +[IMFeatureFlags sharedFeatureFlags];
                  v159 = [v158 isTranscriptSharingEnabled];

                  if (v228)
                  {
                    v160 = v159;
                  }

                  else
                  {
                    v160 = 0;
                  }

                  if (v160 == 1)
                  {
                    [v145 setTranscriptSharingMessageType:{objc_msgSend(v228, "messageType")}];
                  }

                  v161 = +[IMFeatureFlags sharedFeatureFlags];
                  v162 = [v161 isBIAEnabled];

                  if (v162)
                  {
                    [v145 setBiaReferenceID:v227];
                  }
                }

                v163 = *(a1 + 48);
                v164 = [*(a1 + 72) account];
                v213 = [v163 imdAccountForIDSAccount:v164];

                v165 = [v213 accountID];
                [v145 setAccountID:v165];

                [v145 setBalloonBundleID:v36];
                v215 = [*(a1 + 56) _stripFZIDPrefix];
                [v145 setDestinationCallerID:v215];
                if (IMOSLoggingEnabled())
                {
                  v166 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v166, OS_LOG_TYPE_INFO))
                  {
                    v167 = [v145 guid];
                    *buf = 138412546;
                    v304 = v215;
                    v305 = 2112;
                    v306 = v167;
                    _os_log_impl(&dword_0, v166, OS_LOG_TYPE_INFO, "Setting destination callerID: %@ for guid: %@", buf, 0x16u);
                  }
                }

                v217 = [v13 _stringForKey:@"r"];
                if ([v217 length])
                {
                  if (IMOSLoggingEnabled())
                  {
                    v168 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v168, OS_LOG_TYPE_INFO))
                    {
                      v169 = [v145 guid];
                      *buf = 138412546;
                      v304 = v217;
                      v305 = 2112;
                      v306 = v169;
                      _os_log_impl(&dword_0, v168, OS_LOG_TYPE_INFO, "Setting replyToGUID %@ for message %@", buf, 0x16u);
                    }
                  }

                  [v145 setReplyToGUID:v217];
                }

                if (v237)
                {
                  v170 = [v237 _FTOptionallyDecompressData];
                  v294 = 0;
                  v171 = IMSharedHelperPayloadFromCombinedPluginPayloadData();
                  v172 = 0;

                  [v145 setPayloadData:v171];
                  if ([v172 count])
                  {
                    v173 = +[IMDFileTransferCenter sharedInstance];
                    v174 = [v145 guid];
                    v175 = [v173 guidsForStoredAttachmentPayloadData:v172 messageGUID:v174];

                    [v145 setFileTransferGUIDs:v175];
                  }

                  if (IMOSLoggingEnabled())
                  {
                    v176 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v176, OS_LOG_TYPE_INFO))
                    {
                      v177 = [v145 guid];
                      v178 = [v145 fileTransferGUIDs];
                      *buf = 138412546;
                      v304 = v177;
                      v305 = 2112;
                      v306 = v178;
                      _os_log_impl(&dword_0, v176, OS_LOG_TYPE_INFO, "%@ Setting payload contained inline. Attachments %@", buf, 0x16u);
                    }
                  }
                }

                [v145 setTypingIndicatorIcon:v219];
                [v145 setExpressiveSendStyleID:v224];
                [v145 setContactsAvatarRecipeData:v225];
                if (v231)
                {
                  [v145 setSubject:v231];
                }

                if (IMOSLoggingEnabled())
                {
                  v179 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
                  {
                    v180 = [v145 body];
                    v181 = MarcoLoggingStringForMessageData();
                    *buf = 138412290;
                    v304 = v181;
                    _os_log_impl(&dword_0, v179, OS_LOG_TYPE_DEBUG, "   Message body: %@", buf, 0xCu);
                  }
                }

                if (IMOSLoggingEnabled())
                {
                  v182 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
                  {
                    v183 = [v145 subject];
                    *buf = 138412290;
                    v304 = v183;
                    _os_log_impl(&dword_0, v182, OS_LOG_TYPE_DEBUG, "   Message subject: %@", buf, 0xCu);
                  }
                }

                if (IMOSLoggingEnabled())
                {
                  v184 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v184, OS_LOG_TYPE_DEBUG))
                  {
                    v185 = [v145 fileTransferGUIDs];
                    *buf = 138412290;
                    v304 = v185;
                    _os_log_impl(&dword_0, v184, OS_LOG_TYPE_DEBUG, "   Message transfers: %@", buf, 0xCu);
                  }
                }

                v256[0] = _NSConcreteStackBlock;
                v256[1] = 3221225472;
                v256[2] = sub_14A90;
                v256[3] = &unk_1122F0;
                v285 = *(a1 + 161);
                v256[4] = *(a1 + 48);
                v257 = *(a1 + 64);
                v258 = *(a1 + 72);
                v186 = v13;
                v259 = v186;
                v260 = v218;
                v261 = *(a1 + 32);
                v262 = *(a1 + 96);
                v187 = v145;
                v263 = v187;
                v264 = *(a1 + 80);
                v286 = *(a1 + 163);
                v287 = v200;
                v188 = v213;
                v265 = v188;
                v283 = &v296;
                v266 = v234;
                v267 = v228;
                v221 = v221;
                v268 = v221;
                v269 = *(a1 + 56);
                v270 = v241;
                v271 = *(a1 + 104);
                v272 = v240;
                v273 = v236;
                v274 = v235;
                v288 = *(a1 + 160);
                v275 = v242;
                v289 = *(a1 + 165);
                v189 = *(a1 + 112);
                v290 = *(a1 + 166);
                v190 = *(a1 + 152);
                v276 = v189;
                v284 = v190;
                v277 = *(a1 + 120);
                v291 = BYTE4(v205);
                v278 = v227;
                v279 = *(a1 + 128);
                v292 = *(a1 + 167);
                v280 = *(a1 + 136);
                v281 = *(a1 + 88);
                v282 = *(a1 + 144);
                v293 = v204;
                v191 = objc_retainBlock(v256);
                v192 = [v187 fileTransferGUIDs];
                if ([v192 count])
                {
                  v193 = 240.0;
                }

                else
                {
                  v193 = 45.0;
                }

                v194 = *(a1 + 48);
                v243[0] = _NSConcreteStackBlock;
                v243[1] = 3221225472;
                v243[2] = sub_18C2C;
                v243[3] = &unk_112390;
                v244 = *(a1 + 80);
                v253 = *(a1 + 166);
                v195 = v191;
                v254 = *(a1 + 161);
                v196 = *(a1 + 48);
                v251 = v195;
                v245 = v196;
                v246 = *(a1 + 64);
                v247 = *(a1 + 72);
                v248 = *(a1 + 32);
                v130 = v187;
                v249 = v130;
                v250 = v186;
                v252 = &v296;
                v255 = *(a1 + 167);
                [v194 _enqueueBlock:v243 withTimeout:@"reflected message attachment processing" description:v193];

                goto LABEL_145;
              }

              if (IMOSLoggingEnabled())
              {
                v122 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
                {
                  v123 = *(a1 + 32);
                  *buf = 138412546;
                  v304 = v123;
                  v305 = 2112;
                  v306 = v242;
                  _os_log_impl(&dword_0, v122, OS_LOG_TYPE_DEBUG, "   fromIdentifier: %@  not in participants: %@, bailing", buf, 0x16u);
                }
              }

              if (*(a1 + 161) != 1)
              {
                goto LABEL_144;
              }
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v119 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
                {
                  v120 = *(a1 + 32);
                  v121 = *(a1 + 56);
                  *buf = 138412546;
                  v304 = v120;
                  v305 = 2112;
                  v306 = v121;
                  _os_log_impl(&dword_0, v119, OS_LOG_TYPE_INFO, "   Received a message with content that wasn't encrypted from: %@  to: %@, ignoring", buf, 0x16u);
                }
              }

              if (*(a1 + 161) != 1)
              {
                goto LABEL_144;
              }
            }

            v124 = *(a1 + 48);
            v125 = *(a1 + 162);
            v126 = *(a1 + 64);
            v127 = [*(a1 + 72) account];
            v128 = [v124 idsServiceForIDSAccount:v127];
            [v124 noteItemProcessed:v125 batchContext:v126 usingService:v128];

LABEL_144:
            v129 = *(*(a1 + 152) + 8);
            v130 = *(v129 + 40);
            *(v129 + 40) = 0;
LABEL_145:

            goto LABEL_146;
          }
        }

        else
        {
        }

        v204 = 0;
        goto LABEL_39;
      }
    }

    else
    {
      v45 = 0;
    }

    v233 = 0;
    v234 = 0;
    goto LABEL_30;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Received group message from linked ID already in group. Dropping message", buf, 2u);
    }
  }

  if (*(a1 + 161) == 1)
  {
    v15 = *(a1 + 48);
    v16 = *(a1 + 162);
    v17 = *(a1 + 64);
    v18 = [*(a1 + 72) account];
    v19 = [v15 idsServiceForIDSAccount:v18];
    [v15 noteItemProcessed:v16 batchContext:v17 usingService:v19];
  }

  v233 = 0;
  v234 = 0;
  v20 = *(*(a1 + 152) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = 0;
LABEL_147:

  _Block_object_dispose(&v296, 8);
}

void sub_14564(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {

    objc_end_catch();
    JUMPOUT(0x13834);
  }

  _Block_object_dispose(&STACK[0x308], 8);
  _Unwind_Resume(a1);
}

void sub_14A90(uint64_t a1, void *a2, void *a3, char a4, int a5, void *a6, uint64_t a7, void *a8, void *a9)
{
  v15 = a2;
  v16 = a3;
  v52 = a6;
  v51 = a8;
  v17 = a9;
  if ((a4 & 1) != 0 || !IMSharedHelperIsUnderAutomation())
  {
    v48 = v16;
    v24 = [*(a1 + 56) _dictionaryForKey:@"bpdi"];
    [*(a1 + 32) _updateTransfersForAttributionInfoArray:*(a1 + 64) message:v15];
    v25 = [v15 messageSummaryInfo];
    Mutable = [v25 mutableCopy];

    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v50 = v17;
    v27 = [NSNumber numberWithBool:1];
    [(__CFDictionary *)Mutable setObject:v27 forKey:IMMessageSummaryInfoUpdatedDateWithServerTime];

    [v15 setMessageSummaryInfo:Mutable];
    *buf = 0;
    v98 = buf;
    v99 = 0x3032000000;
    v100 = sub_E5DC;
    v101 = sub_E5EC;
    v102 = 0;
    v28 = [*(a1 + 32) attachmentController];
    v29 = [v15 guid];
    v30 = [v15 balloonBundleID];
    v46 = *(a1 + 80);
    v47 = *(a1 + 72);
    v31 = v24;
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_150CC;
    v53[3] = &unk_1122C8;
    v54 = v15;
    v32 = v50;
    v87 = *(a1 + 264);
    v33 = *(a1 + 32);
    v34 = *(a1 + 40);
    v81 = v32;
    v55 = v33;
    v56 = v34;
    v57 = *(a1 + 48);
    v58 = *(a1 + 88);
    v59 = *(a1 + 96);
    v88 = *(a1 + 266);
    v60 = *(a1 + 56);
    v35 = *(a1 + 72);
    v89 = *(a1 + 267);
    v61 = v35;
    v82 = buf;
    v36 = *(a1 + 104);
    v37 = *(a1 + 248);
    v62 = v36;
    v83 = v37;
    v63 = *(a1 + 112);
    v64 = *(a1 + 120);
    v65 = *(a1 + 128);
    v66 = *(a1 + 136);
    v67 = *(a1 + 144);
    v68 = *(a1 + 152);
    v69 = *(a1 + 160);
    v70 = *(a1 + 168);
    v71 = *(a1 + 176);
    v90 = *(a1 + 269);
    v72 = *(a1 + 80);
    v73 = *(a1 + 184);
    v91 = *(a1 + 270);
    v92 = a4;
    v86 = a5;
    v74 = v52;
    v85 = a7;
    v75 = *(a1 + 192);
    v38 = v51;
    v93 = *(a1 + 271);
    v39 = *(a1 + 256);
    v76 = v38;
    v84 = v39;
    v40 = *(a1 + 200);
    v94 = *(a1 + 272);
    v41 = *(a1 + 208);
    v42 = *(a1 + 216);
    v95 = *(a1 + 273);
    v43 = *(a1 + 224);
    *&v44 = v42;
    *(&v44 + 1) = v43;
    *&v45 = v40;
    *(&v45 + 1) = v41;
    v77 = v45;
    v78 = v44;
    v79 = *(a1 + 232);
    v80 = *(a1 + 240);
    v96 = *(a1 + 274);
    [v28 processMessageAttachmentDictionary:v31 forMessageGUID:v29 balloonBundleID:v30 fromIdentifier:v47 senderToken:v46 withCompletionBlock:v53];

    _Block_object_dispose(buf, 8);
    v16 = v48;
    v17 = v50;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "***************** Attachment download failed. Not persisting message as we are under automation ***************", buf, 2u);
      }
    }

    if (v17)
    {
      if (*(a1 + 264) == 1)
      {
        v19 = *(a1 + 265);
        v20 = *(a1 + 32);
        v21 = *(a1 + 40);
        v22 = [*(a1 + 48) account];
        v23 = [v20 idsServiceForIDSAccount:v22];
        [v20 noteItemProcessed:v19 batchContext:v21 usingService:v23];
      }

      v17[2](v17);
    }
  }
}

void sub_150CC(uint64_t a1, void *a2, void *a3, char a4)
{
  v211 = a2;
  v203 = a3;
  v212 = a1;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      *&buf[4] = [v211 length];
      *&buf[12] = 2048;
      *&buf[14] = [v203 count];
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Setting payload to length: %lu with attachments: %lu", buf, 0x16u);
    }
  }

  if (a4)
  {
    if (!v211)
    {
      v211 = 0;
      goto LABEL_31;
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, " Setting message payload downloaded from MMCS", buf, 2u);
      }
    }

    if (![v211 length] || (objc_msgSend(*(a1 + 64), "setPayloadData:", v211), !objc_msgSend(v203, "count")))
    {
LABEL_31:
      if (*(a1 + 310) == 1)
      {
        [*(a1 + 40) _handleNicknameReceived:*(a1 + 80) fromIdentifier:*(a1 + 88) withMessageItem:*(a1 + 64) isSnapTrustedUser:*(a1 + 311)];
      }

      if (*(a1 + 312) == 1)
      {
        v24 = [*(a1 + 40) chatRegistry];
        v25 = [v24 generateUnusedChatIdentifierForGroupChatWithAccount:*(a1 + 96)];
        v26 = *(*(a1 + 272) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = v25;
      }

      else
      {
        v28 = *(*(a1 + 272) + 8);
        if (*(v28 + 40))
        {
          goto LABEL_38;
        }

        v29 = *(*(*(a1 + 280) + 8) + 40);
        v24 = *(v28 + 40);
        *(v28 + 40) = v29;
      }

LABEL_38:
      if (*(a1 + 312))
      {
        v30 = 43;
      }

      else
      {
        v30 = 45;
      }

      v270 = v30;
      v31 = +[IMFeatureFlags sharedFeatureFlags];
      v32 = [v31 isTranscriptSharingEnabled];

      v33 = a1;
      if (v32 && *(a1 + 104))
      {
        v270 = 43;
        v34 = [*(a1 + 112) conversationID];
        v35 = [IMTranscriptSharingHandlePrefix stringByAppendingString:v34];
        v36 = *(*(a1 + 272) + 8);
        v37 = *(v36 + 40);
        *(v36 + 40) = v35;

        v33 = a1;
      }

      if ([*(v33 + 120) count])
      {
        v199 = [[NSMutableSet alloc] initWithArray:*(a1 + 120)];
      }

      else
      {
        v199 = 0;
      }

      v207 = [*(a1 + 128) _stripFZIDPrefix];
      if (v207)
      {
        [v199 removeObject:v207];
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v281 = sub_E5DC;
      v282 = sub_E5EC;
      v283 = 0;
      if (*(a1 + 312) == 1)
      {
        v38 = *(a1 + 136);
        if (v38)
        {
          v39 = v38;
          v40 = v283;
          v283 = v39;
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v44 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              *v276 = 0;
              _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "Did not find chat in first pass. Trying again.", v276, 2u);
            }
          }

          v40 = [*(a1 + 40) groupController];
          v45 = *(a1 + 144);
          v46 = *(a1 + 40);
          v47 = [*(a1 + 56) account];
          v48 = [v46 imdAccountForIDSAccount:v47];
          v49 = [v40 findChatWithMessageData:v45 account:v48 session:*(a1 + 40) toIdentifier:*(a1 + 128) fromIdentifier:*(a1 + 88) timestamp:*(a1 + 152)];
          v50 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v49;
        }

        if (*(*&buf[8] + 40))
        {
LABEL_61:
          v53 = *(*&buf[8] + 40);
          if (v53)
          {
            v54 = [v53 chatIdentifier];
            v55 = *(*(a1 + 272) + 8);
            v56 = *(v55 + 40);
            *(v55 + 40) = v54;

            v270 = [*(*&buf[8] + 40) style];
            v57 = [*(*&buf[8] + 40) service];
            v58 = [*(a1 + 40) service];
            v206 = v57 != v58;

            if (v206 && IMOSLoggingEnabled())
            {
              v59 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
              {
                *v276 = 0;
                _os_log_impl(&dword_0, v59, OS_LOG_TYPE_INFO, "Service of found chat not equal, lets register", v276, 2u);
              }
            }

            if (*(a1 + 88))
            {
              v60 = *(a1 + 128);
              if (v60)
              {
                if ((*(a1 + 313) & [v60 isEqualToString:?] & 1) != 0 && objc_msgSend(*(*&buf[8] + 40), "isBlackholed"))
                {
                  if (IMOSLoggingEnabled())
                  {
                    v61 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                    {
                      v62 = [*(*&buf[8] + 40) guid];
                      *v276 = 138412290;
                      *&v276[4] = v62;
                      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_INFO, "Unblackholing chat %@ based on reflection", v276, 0xCu);
                    }
                  }

                  [*(*&buf[8] + 40) updateIsBlackholed:0];
                }
              }
            }

            v63 = *(a1 + 160);
            if (v63)
            {
              [*(a1 + 40) didReceiveDisplayNameChange:v63 fromID:*(*(*(a1 + 280) + 8) + 40) toIdentifier:*(a1 + 128) forChat:*(*(*(a1 + 272) + 8) + 40) style:v270 account:*(a1 + 96)];
            }

            v64 = 1;
          }

          else
          {
            v65 = *(a1 + 40);
            v66 = *(*(a1 + 272) + 8);
            obj = *(v66 + 40);
            [v65 canonicalizeChatIdentifier:&obj style:&v270];
            objc_storeStrong((v66 + 40), obj);
            v206 = [*(a1 + 64) isTypingMessage] ^ 1;
            v64 = [*(a1 + 64) isTypingMessage] ^ 1;
          }

          v200 = v64;
          if (*(a1 + 312))
          {
            v198 = 0;
          }

          else
          {
            v198 = 0;
            if (v207 && (*(a1 + 313) & 1) != 0)
            {
              v198 = [*(*(*(a1 + 280) + 8) + 40) isEqualToString:v207];
            }
          }

          v67 = @"NO";
          if (*(a1 + 313) == 1)
          {
            [*(a1 + 40) addItemToRecentsIfApplicable:*(a1 + 32)];
            v267 = 0u;
            v268 = 0u;
            v265 = 0u;
            v266 = 0u;
            v68 = [*(*(a1 + 40) + 96) lastObject];
            v69 = [v68 service];
            v70 = [v69 devices];

            v71 = [v70 countByEnumeratingWithState:&v265 objects:v279 count:16];
            if (v71)
            {
              v72 = *v266;
LABEL_88:
              v73 = 0;
              while (1)
              {
                if (*v266 != v72)
                {
                  objc_enumerationMutation(v70);
                }

                v74 = *(*(&v265 + 1) + 8 * v73);
                v75 = [v74 pushToken];
                v76 = [v75 isEqualToData:*(v212 + 176)];

                if (v76)
                {
                  break;
                }

                if (v71 == ++v73)
                {
                  v71 = [v70 countByEnumeratingWithState:&v265 objects:v279 count:16];
                  if (v71)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_94;
                }
              }

              if (IMOSLoggingEnabled())
              {
                v77 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
                {
                  v78 = [v74 name];
                  *v276 = 138412546;
                  *&v276[4] = v78;
                  *&v276[12] = 2112;
                  *&v276[14] = v74;
                  _os_log_impl(&dword_0, v77, OS_LOG_TYPE_DEBUG, " Device: %@ (%@)", v276, 0x16u);
                }
              }

              v79 = [v74 uniqueID];
              v80 = v79 == 0;

              if (!v80)
              {
                v67 = @"NO";
                goto LABEL_101;
              }
            }

            else
            {
LABEL_94:
            }

            a1 = v212;
            if (*(v212 + 313) == 1 && (*(v212 + 312) & 1) == 0)
            {
              [*(v212 + 32) setFlags:{objc_msgSend(*(v212 + 32), "flags") | 0x1000}];
              if (IMOSLoggingEnabled())
              {
                v144 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
                {
                  *v276 = 0;
                  _os_log_impl(&dword_0, v144, OS_LOG_TYPE_DEBUG, "     *** Device doesn't support delivery receipt forwarding, faking it", v276, 2u);
                }

                v67 = @"YES";
LABEL_101:
                a1 = v212;
              }

              else
              {
                v67 = @"YES";
              }
            }

            else
            {
              v67 = @"NO";
            }
          }

          if (IMOSLoggingEnabled())
          {
            v81 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
            {
              *v276 = 138412290;
              *&v276[4] = v207;
              _os_log_impl(&dword_0, v81, OS_LOG_TYPE_DEBUG, "   myID: %@", v276, 0xCu);
            }

            a1 = v212;
          }

          if (IMOSLoggingEnabled())
          {
            v82 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
            {
              v83 = *(*(*(a1 + 280) + 8) + 40);
              *v276 = 138412290;
              *&v276[4] = v83;
              _os_log_impl(&dword_0, v82, OS_LOG_TYPE_DEBUG, "   fromDisplayID: %@", v276, 0xCu);
            }

            a1 = v212;
          }

          if (IMOSLoggingEnabled())
          {
            v84 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
            {
              v85 = *(*&buf[8] + 40);
              v86 = [v85 guid];
              *v276 = 138412546;
              *&v276[4] = v85;
              *&v276[12] = 2112;
              *&v276[14] = v86;
              _os_log_impl(&dword_0, v84, OS_LOG_TYPE_DEBUG, "   found chat: %@ (%@)", v276, 0x16u);
            }

            a1 = v212;
          }

          if (IMOSLoggingEnabled())
          {
            v87 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
            {
              v88 = @"YES";
              if (!v198)
              {
                v88 = @"NO";
              }

              *v276 = 138412290;
              *&v276[4] = v88;
              _os_log_impl(&dword_0, v87, OS_LOG_TYPE_DEBUG, "   from me - to me: %@", v276, 0xCu);
            }

            a1 = v212;
          }

          if (IMOSLoggingEnabled())
          {
            v89 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
            {
              if (*(a1 + 312))
              {
                v90 = @"YES";
              }

              else
              {
                v90 = @"NO";
              }

              *v276 = 138412290;
              *&v276[4] = v90;
              _os_log_impl(&dword_0, v89, OS_LOG_TYPE_DEBUG, "   isGroupChat: %@", v276, 0xCu);
            }

            a1 = v212;
          }

          if (IMOSLoggingEnabled())
          {
            v91 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
            {
              v92 = *(*(*(a1 + 272) + 8) + 40);
              *v276 = 138412290;
              *&v276[4] = v92;
              _os_log_impl(&dword_0, v91, OS_LOG_TYPE_DEBUG, "   chatIdentifier: %@", v276, 0xCu);
            }

            a1 = v212;
          }

          if (IMOSLoggingEnabled())
          {
            v93 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
            {
              *v276 = 138412290;
              *&v276[4] = v67;
              _os_log_impl(&dword_0, v93, OS_LOG_TYPE_DEBUG, "   markDelivered: %@", v276, 0xCu);
            }

            a1 = v212;
          }

          if (*(a1 + 313) & 1) != 0 || ([*(a1 + 32) isTypingMessage])
          {
            v94 = 0;
            goto LABEL_141;
          }

          v104 = +[IMDAccountController sharedAccountController];
          v105 = [v104 activeAccountsAreEligibleForHawking];

          a1 = v212;
          if (![IMSpamFilterHelper isBlackholeEnabledForEligibleAccounts:v105])
          {
            goto LABEL_255;
          }

          if (*(v212 + 312))
          {
            v106 = +[IMMetricsCollector sharedInstance];
            [v106 trackSpamEvent:12];
          }

          else
          {
            v106 = +[IMMetricsCollector sharedInstance];
            [v106 trackSpamEvent:11];
          }

          v145 = *(*&buf[8] + 40);
          if (v145)
          {
            a1 = v212;
            v146 = [v145 isBlackholed];
            if (v146)
            {
              if (*(v212 + 312))
              {
                v147 = +[IMMetricsCollector sharedInstance];
                [v147 trackSpamEvent:14];
              }

              else
              {
                v147 = +[IMMetricsCollector sharedInstance];
                [v147 trackSpamEvent:13];
              }

              a1 = v212;
            }

            if (!IMOSLoggingEnabled())
            {
              goto LABEL_247;
            }

            v181 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
            {
              v182 = [*(*&buf[8] + 40) chatIdentifier];
              v183 = v182;
              v184 = @"YES";
              if (!v146)
              {
                v184 = @"NO";
              }

              *v276 = 138412546;
              *&v276[4] = v182;
              *&v276[12] = 2112;
              *&v276[14] = v184;
              _os_log_impl(&dword_0, v181, OS_LOG_TYPE_INFO, "Found existing chat (%@) with blackhole status: %@", v276, 0x16u);
            }

            goto LABEL_246;
          }

          a1 = v212;
          v148 = *(v212 + 40);
          v149 = *(v212 + 88);
          v150 = *(v212 + 128);
          if (*(v212 + 312))
          {
            if (![v148 _shouldBlackholeGroupChatFromSender:v149 toRecipient:v150 withOtherParticipants:*(v212 + 184) forAccount:*(v212 + 96)])
            {
              goto LABEL_255;
            }

            if (IMOSLoggingEnabled())
            {
              v151 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
              {
                v152 = *(v212 + 72);
                v153 = *(v212 + 88);
                v154 = *(v212 + 128);
                *v276 = 138412802;
                *&v276[4] = v152;
                *&v276[12] = 2112;
                *&v276[14] = v153;
                *&v276[22] = 2112;
                *&v276[24] = v154;
                _os_log_impl(&dword_0, v151, OS_LOG_TYPE_INFO, "Should blackhole group chat (%@) from (%@) to (%@)", v276, 0x20u);
              }

LABEL_237:

              v146 = 1;
LABEL_246:
              a1 = v212;
              goto LABEL_247;
            }
          }

          else
          {
            if (![v148 _shouldBlackholeChatFromSender:v149 toRecipient:v150 forAccount:*(v212 + 96)])
            {
              goto LABEL_255;
            }

            if (IMOSLoggingEnabled())
            {
              v151 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
              {
                v178 = *(v212 + 72);
                v179 = *(v212 + 88);
                v180 = *(v212 + 128);
                *v276 = 138412802;
                *&v276[4] = v178;
                *&v276[12] = 2112;
                *&v276[14] = v179;
                *&v276[22] = 2112;
                *&v276[24] = v180;
                _os_log_impl(&dword_0, v151, OS_LOG_TYPE_INFO, "Should blackhole message (%@) from (%@) to (%@)", v276, 0x20u);
              }

              goto LABEL_237;
            }
          }

          v146 = 1;
LABEL_247:
          if ((*(a1 + 312) & 1) == 0 && v146 && *(a1 + 314) == 1)
          {
            if (IMOSLoggingEnabled())
            {
              v185 = OSLogHandleForIMEventCategory();
              if (os_log_type_enabled(v185, OS_LOG_TYPE_INFO))
              {
                v186 = *(v212 + 72);
                v187 = *(v212 + 88);
                v188 = [*(*&buf[8] + 40) chatIdentifier];
                *v276 = 138412802;
                *&v276[4] = v186;
                *&v276[12] = 2112;
                *&v276[14] = v187;
                *&v276[22] = 2112;
                *&v276[24] = v188;
                _os_log_impl(&dword_0, v185, OS_LOG_TYPE_INFO, "Blackholing message (%@) from (%@) to (%@)", v276, 0x20u);
              }

              a1 = v212;
            }

            v189 = [*(a1 + 40) deliveryController];
            v190 = *(a1 + 88);
            v191 = *(a1 + 128);
            v192 = [*(a1 + 40) idsAccountForURI:v191 IDSServiceName:@"com.apple.madrid"];
            v193 = *(a1 + 72);
            v263[0] = _NSConcreteStackBlock;
            v263[1] = 3221225472;
            v263[2] = sub_17534;
            v263[3] = &unk_112200;
            v264 = v193;
            [v189 sendMessageError:502 toToken:0 toID:v190 toGroup:0 fromID:v191 fromAccount:v192 forMessageID:v264 completionBlock:v263];

            a1 = v212;
            if ((v146 & 1) == 0)
            {
              goto LABEL_255;
            }

LABEL_257:
            [*(a1 + 32) setFlags:{objc_msgSend(*(a1 + 32), "flags") | 0x2000}];
            v94 = 1;
            goto LABEL_258;
          }

          if (v146)
          {
            goto LABEL_257;
          }

LABEL_255:
          v94 = 0;
LABEL_258:
          if (+[IMSpamFilterHelper isInternationalSpamFilteringEnabled](IMSpamFilterHelper, "isInternationalSpamFilteringEnabled") && [*(*&buf[8] + 40) receivedBlackholeError])
          {
            [*(*&buf[8] + 40) updateReceivedBlackholeError:0];
            v194 = +[IMDChatStore sharedInstance];
            v195 = *(*&buf[8] + 40);
            v261[0] = _NSConcreteStackBlock;
            v261[1] = 3221225472;
            v261[2] = sub_176B0;
            v261[3] = &unk_112228;
            v261[4] = *(a1 + 40);
            v262 = *(a1 + 96);
            [v194 remapMessageError:43 toError:0 forChat:v195 completion:v261];

            a1 = v212;
          }

LABEL_141:
          if ((*(a1 + 315) & 1) == 0)
          {
            v95 = *(a1 + 304);
            if (v95)
            {
              v96 = v95;
            }

            else
            {
              v96 = 37;
            }

            [*(a1 + 32) setErrorCode:v96];
            if (IMOSLoggingEnabled())
            {
              v97 = OSLogHandleForIMEventCategory();
              if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
              {
                v98 = *(a1 + 304);
                v99 = *(a1 + 192);
                v100 = *(a1 + 296);
                *v276 = 67109634;
                *&v276[4] = v98;
                *&v276[8] = 2112;
                *&v276[10] = v99;
                *&v276[18] = 2048;
                *&v276[20] = v100;
                _os_log_impl(&dword_0, v97, OS_LOG_TYPE_INFO, "** Had attachment download failure: %d, fileTransferError: %@, attachment size %lu", v276, 0x1Cu);
              }

              a1 = v212;
            }

            v101 = *(a1 + 192);
            if (v101)
            {
              v102 = [v101 domain];
              v103 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Error domain %@, error code %ld", v102, [*(a1 + 192) code]);

              a1 = v212;
            }

            else
            {
              v103 = @" ";
            }

            v209 = v94;
            v107 = *(a1 + 296);
            v108 = [*(a1 + 40) deliveryController];
            v109 = *(a1 + 176);
            v197 = *(a1 + 88);
            v204 = *(a1 + 128);
            v110 = [*(a1 + 56) account];
            v111 = *(a1 + 72);
            v112 = [NSNumber numberWithUnsignedInteger:1000 * (v107 / 0x3E8)];
            v113 = +[NSDate date];
            [v113 timeIntervalSinceDate:*(a1 + 200)];
            v115 = v114;
            v116 = *(a1 + 208);
            v258[0] = _NSConcreteStackBlock;
            v258[1] = 3221225472;
            v258[2] = sub_17814;
            v258[3] = &unk_112250;
            v260 = *(a1 + 304);
            v259 = *(a1 + 176);
            [v108 sendMessageErrorWithInfo:400 toToken:v109 toID:v197 toGroup:0 fromID:v204 fromAccount:v110 forMessageID:v115 additionalInfo:v111 fileSize:v103 failureTimeSeconds:v112 failReasonMessage:v116 completionBlock:v258];

            v94 = v209;
            a1 = v212;
          }

          *v276 = 0;
          *&v276[8] = v276;
          *&v276[16] = 0x3032000000;
          *&v276[24] = sub_E5DC;
          v277 = sub_E5EC;
          v278 = objc_alloc_init(NSMutableArray);
          if (*(a1 + 312) == 1)
          {
            [MessageGroupController addMembers:*(a1 + 120) toHandleInfo:*(*&v276[8] + 40)];
          }

          else
          {
            v117 = *(*(*(a1 + 272) + 8) + 40);
            v118 = +[IMFeatureFlags sharedFeatureFlags];
            v119 = [v118 isTranscriptSharingEnabled];

            if (v119)
            {
              v120 = [*(v212 + 104) senderID];

              if (v120)
              {
                v121 = [NSNumber numberWithInt:2];
                v122 = [NSDictionary dictionaryWithObjectsAndKeys:v121, kFZChatParticipantStatusKey, IMEmergencyServiceHandleID, kFZPersonID, 0];

                [*(*&v276[8] + 40) addObject:v122];
                v123 = [*(v212 + 104) senderID];
                v124 = [v123 _stripFZIDPrefix];

                v117 = v124;
              }
            }

            v125 = [NSNumber numberWithInt:2];
            v126 = [NSDictionary dictionaryWithObjectsAndKeys:v125, kFZChatParticipantStatusKey, v117, kFZPersonID, 0];

            [*(*&v276[8] + 40) addObject:v126];
            a1 = v212;
          }

          v210 = [NSMutableArray arrayWithCapacity:2];
          v205 = [*(a1 + 40) storeBreadcrumbAndSetConsumedPayloadsForNewMessageItemIfNecessary:*(a1 + 64) inChatWithIdentifier:*(*(*(a1 + 272) + 8) + 40)];
          if (v205)
          {
            [v210 addObject:v205];
          }

          if ([*(a1 + 64) isBreadcrumb] && IMOSLoggingEnabled())
          {
            v127 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
            {
              v128 = *(v212 + 64);
              v129 = [v128 consumedSessionPayloads];
              v130 = [v129 count];
              *v272 = 138412546;
              v273 = v128;
              v274 = 2048;
              v275 = v130;
              _os_log_impl(&dword_0, v127, OS_LOG_TYPE_INFO, "Receiving breadcrumb %@ with payload history: %tu items.", v272, 0x16u);
            }

            a1 = v212;
          }

          if (*(a1 + 313) == 1)
          {
            if (v206)
            {
              LOBYTE(v196) = v94;
              [*(a1 + 40) didJoinChat:*(*(*(a1 + 272) + 8) + 40) style:v270 displayName:*(a1 + 160) groupID:*(a1 + 168) handleInfo:*(*&v276[8] + 40) account:*(a1 + 96) isBlackholed:v196];
              v131 = [*(a1 + 40) chatForChatIdentifier:*(*(*(a1 + 272) + 8) + 40) style:v270 updatingAccount:1];
              _UpdateLastAddressedHandle(*(a1 + 64), *(a1 + 128), v131);
            }

            else
            {
              v131 = [*(*&buf[8] + 40) chatIdentifier];
              sub_395A4(v131, [*(*&buf[8] + 40) style]);
            }

            if (!v200)
            {
              goto LABEL_214;
            }

            v136 = [*(v212 + 40) chatForChatIdentifier:*(*(*(v212 + 272) + 8) + 40) style:v270];
            if (*(v212 + 308))
            {
              v142 = 1;
            }

            else
            {
              v142 = *(v212 + 309);
            }

            [*(v212 + 40) didSendMessage:*(v212 + 32) forChat:*(*(*(v212 + 272) + 8) + 40) style:v270 account:*(v212 + 96) forceDate:0 itemIsComingFromStorage:v142 & 1];
LABEL_213:

LABEL_214:
            v219[0] = _NSConcreteStackBlock;
            v219[1] = 3221225472;
            v219[2] = sub_17998;
            v219[3] = &unk_112278;
            v220 = *(v212 + 72);
            v245 = *(v212 + 316);
            v246 = v200;
            v247 = *(v212 + 312);
            v248 = v198;
            v201 = *(v212 + 32);
            v157 = v201.i64[0];
            v221 = vextq_s8(v201, v201, 8uLL);
            v240 = *(v212 + 272);
            v249 = v270;
            v222 = *(v212 + 96);
            v158 = *(v212 + 160);
            v159 = *(v212 + 280);
            v223 = v158;
            v241 = v159;
            v224 = *(v212 + 128);
            v160 = *(v212 + 64);
            v161 = *(v212 + 288);
            v225 = v160;
            v250 = *(v212 + 313);
            v242 = v161;
            v243 = buf;
            v226 = *(v212 + 216);
            v227 = *(v212 + 88);
            v228 = *(v212 + 184);
            v244 = v276;
            v251 = v94;
            v252 = *(v212 + 317);
            v229 = *(v212 + 224);
            v230 = *(v212 + 232);
            v231 = *(v212 + 80);
            v202 = v207;
            v232 = v202;
            v233 = *(v212 + 152);
            v253 = v206;
            v254 = *(v212 + 318);
            v255 = *(v212 + 308);
            v256 = *(v212 + 314);
            v234 = *(v212 + 240);
            v235 = *(v212 + 56);
            v236 = *(v212 + 248);
            v237 = *(v212 + 256);
            v239 = *(v212 + 264);
            v257 = *(v212 + 309);
            v238 = *(v212 + 48);
            v208 = objc_retainBlock(v219);
            v162 = [v210 count];
            v163 = v212;
            if (v162)
            {
              if (*(v212 + 319) == 1)
              {
                v217 = 0u;
                v218 = 0u;
                v215 = 0u;
                v216 = 0u;
                v164 = v210;
                v165 = [v164 countByEnumeratingWithState:&v215 objects:v271 count:16];
                if (v165)
                {
                  v166 = *v216;
                  v167 = kIMMessageItemHideLockScreenNotificationsKey;
                  do
                  {
                    for (i = 0; i != v165; i = i + 1)
                    {
                      if (*v216 != v166)
                      {
                        objc_enumerationMutation(v164);
                      }

                      v169 = *(*(&v215 + 1) + 8 * i);
                      if (([*(v212 + 32) isTypingMessage] & 1) == 0)
                      {
                        v170 = [v169 messageSummaryInfo];
                        v171 = [v170 mutableCopy];

                        if (!v171)
                        {
                          v171 = objc_alloc_init(NSMutableDictionary);
                        }

                        [v171 setValue:&__kCFBooleanTrue forKey:v167];
                        v172 = [v171 copy];
                        [v169 setMessageSummaryInfo:v172];
                      }
                    }

                    v165 = [v164 countByEnumeratingWithState:&v215 objects:v271 count:16];
                  }

                  while (v165);
                }

                v163 = v212;
              }

              v173 = v163[5];
              v174 = *(*(v163[34] + 8) + 40);
              v175 = v270;
              v176 = v163[12];
              v177 = v163[27];
              v213[0] = _NSConcreteStackBlock;
              v213[1] = 3221225472;
              v213[2] = sub_18C1C;
              v213[3] = &unk_1122A0;
              v214 = v208;
              [v173 didReceiveMessages:v210 forChat:v174 style:v175 account:v176 fromIDSID:v177 completion:v213];
            }

            else
            {
              (v208[2])(v208, 1);
            }

            _Block_object_dispose(v276, 8);
            _Block_object_dispose(buf, 8);

            goto LABEL_231;
          }

          v132 = *(*&buf[8] + 40);
          v133 = v132;
          if (v206)
          {
            LOBYTE(v196) = v94;
            [*(a1 + 40) didJoinChat:*(*(*(a1 + 272) + 8) + 40) style:v270 displayName:*(a1 + 160) groupID:*(a1 + 168) handleInfo:*(*&v276[8] + 40) account:*(a1 + 96) isBlackholed:v196];
            if (*(a1 + 312) == 1)
            {
              v134 = +[IMDChatRegistry sharedInstance];
              v135 = [v199 allObjects];
              v136 = [v134 existingChatForIDs:v135 account:*(a1 + 96) displayName:*(a1 + 160) groupID:*(a1 + 168) style:43];

              if (![*(v212 + 168) length])
              {
                goto LABEL_207;
              }

              if (IMOSLoggingEnabled())
              {
                v137 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
                {
                  v138 = *(v212 + 168);
                  *v272 = 138412546;
                  v273 = v138;
                  v274 = 2112;
                  v275 = v136;
                  _os_log_impl(&dword_0, v137, OS_LOG_TYPE_INFO, "     ** Setting group_id to %@ on chat %@, as we just got invited to it!", v272, 0x16u);
                }
              }

              v139 = +[IMFeatureFlags sharedFeatureFlags];
              v140 = [v139 isMissingMessagesEnabled];

              v141 = *(v212 + 168);
              if (v140)
              {
                [v136 assignIdentifier:v141 forDomain:IMChatLookupDomainIMessageGroupID isHistoricalIdentifier:0];
              }

              else
              {
                [v136 setGroupID:v141];
              }

              v143 = +[IMDChatStore sharedInstance];
              [v143 storeChat:v136];
            }

            else
            {
              v143 = +[IMDChatRegistry sharedInstance];
              v136 = [v143 existingChatForID:*(*(*(a1 + 272) + 8) + 40) account:*(a1 + 96)];
            }
          }

          else
          {
            v136 = v132;
          }

LABEL_207:
          v155 = +[IMFeatureFlags sharedFeatureFlags];
          v156 = [v155 isTranscriptSharingEnabled];

          if (v156)
          {
            if (*(v212 + 112))
            {
              [v136 setState:4];
              [v136 setEmergencyUserInfo:*(v212 + 112)];
              [*(v212 + 64) setInitialTranscriptSharingItem:v206];
              if ([v136 isStewieSharingChat])
              {
                [v136 updateIsFiltered:0];
              }
            }
          }

          [*(v212 + 40) _fixParticipantsForChat:v136];
          _UpdateLastAddressedHandle(*(v212 + 64), *(v212 + 128), v136);
          if (v200)
          {
            [v210 addObject:*(v212 + 32)];
          }

          goto LABEL_213;
        }

        v41 = +[IMDChatRegistry sharedInstance];
        v43 = [v199 allObjects];
        v51 = [v41 existingChatForIDs:v43 account:*(a1 + 96) displayName:*(a1 + 160) groupID:*(a1 + 168) style:43];
        v52 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v51;
      }

      else
      {
        v41 = +[IMDChatRegistry sharedInstance];
        v42 = [v41 existingChatForID:*(*(*(a1 + 272) + 8) + 40) account:*(a1 + 96)];
        v43 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v42;
      }

      goto LABEL_61;
    }

    v9 = +[IMDFileTransferCenter sharedInstance];
    v10 = [v9 guidsForStoredAttachmentPayloadDataURLs:v203 messageGUID:*(a1 + 72)];

    [*(a1 + 64) setFileTransferGUIDs:v10];
LABEL_20:

    goto LABEL_31;
  }

  v11 = [*(a1 + 32) balloonBundleID];
  v12 = [v11 isEqualToString:IMBalloonPluginIdentifierRichLinks];

  v13 = IMOSLoggingEnabled();
  if (v12)
  {
    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [*(a1 + 32) guid];
        *buf = 138412290;
        *&buf[4] = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Did not download payload data for message %@ but we are continuing", buf, 0xCu);
      }
    }

    v10 = v211;
    v211 = 0;
    goto LABEL_20;
  }

  if (v13)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [*(a1 + 32) guid];
      *buf = 138412290;
      *&buf[4] = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "PayloadAttachments Failed downloading payload data for message %@", buf, 0xCu);
    }
  }

  v18 = *(a1 + 264);
  if (v18)
  {
    if (*(a1 + 308) == 1)
    {
      v19 = *(a1 + 309);
      v20 = *(v212 + 40);
      v21 = *(v212 + 48);
      v22 = [*(v212 + 56) account];
      v23 = [v20 idsServiceForIDSAccount:v22];
      [v20 noteItemProcessed:v19 & 1 batchContext:v21 usingService:v23];

      v18 = *(v212 + 264);
    }

    (*(v18 + 16))();
  }

LABEL_231:
}

void sub_17534(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(a1 + 32);
        v16 = 138412290;
        v17 = v13;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "Succesfully blackholed message: %@", &v16, 0xCu);
      }
    }
  }

  else if (v11)
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 32);
      v16 = 138412546;
      v17 = v15;
      v18 = 1024;
      v19 = a5;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "** Failed to blackhole message: (%@) with error: %d", &v16, 0x12u);
    }
  }
}

void sub_176B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = +[IMDMessageStore sharedInstance];
        v10 = [v9 messageWithGUID:v8];

        v11 = [*(a1 + 32) broadcasterForChatListeners];
        v12 = [*(a1 + 40) accountID];
        [v11 account:v12 chat:0 style:0 messageUpdated:v10];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

void sub_17814(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 40);
        v12 = *(a1 + 32);
        v15 = 67109378;
        v16 = v11;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "Finished sending attachment download error: %d  to token: %@", &v15, 0x12u);
      }

LABEL_9:
    }
  }

  else if (v9)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 32);
      v15 = 67109378;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "** Failed sending attachment download error: %d  to token: %@", &v15, 0x12u);
    }

    goto LABEL_9;
  }
}

void sub_17998(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = im_checkpointIDSService();
    v4 = *(a1 + 32);
    v5 = *(a1 + 240);
    im_sendMessageCheckpointIfNecessary();
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v132 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "*** Not all messages successfully stored in database. Not sending IMMessageCheckpointLocationMessageStored checkpoint. guid %@", buf, 0xCu);
    }
  }

  if (*(a1 + 241) == 1 && (*(a1 + 242) & 1) == 0 && *(a1 + 243) == 1)
  {
    [*(a1 + 40) _handleMessageSentToSelf:*(a1 + 48) chatIdentifier:*(*(*(a1 + 200) + 8) + 40) style:*(a1 + 244) isLocal:0 account:*(a1 + 56)];
  }

  if (([*(a1 + 48) isTypingMessage] & 1) == 0)
  {
    v8 = +[IMMetricsCollector sharedInstance];
    [v8 trackEvent:IMMetricsCollectorEventiMessageReceived];
  }

  v139 = IMMetricsCollectorError;
  v9 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", sub_904FC([*(a1 + 48) errorCode]));
  v140 = v9;
  v124 = [NSDictionary dictionaryWithObjects:&v140 forKeys:&v139 count:1];

  v10 = +[IMMetricsCollector sharedInstance];
  [v10 trackEvent:IMMetricsCollectorEventIncomingMessage withDictionary:v124];

  v11 = *(a1 + 64);
  if (v11)
  {
    [*(a1 + 40) didReceiveDisplayNameChange:v11 fromID:*(*(*(a1 + 208) + 8) + 40) toIdentifier:*(a1 + 72) forChat:*(*(*(a1 + 200) + 8) + 40) style:*(a1 + 244) account:*(a1 + 56)];
  }

  v12 = [*(a1 + 48) fileTransferGUIDs];
  v13 = [v12 count] != 0;

  v14 = [*(a1 + 48) sender];
  IsEmail = IMStringIsEmail();

  v137[0] = IMMetricsCollectorFzErrorKey;
  v16 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [*(a1 + 48) errorCode]);
  v138[0] = v16;
  v137[1] = IMMetricsCollectorMessageErrorKey;
  v17 = [NSNumber numberWithLong:0];
  v138[1] = v17;
  v137[2] = IMMetricsCollectorIsTypingIndicatorKey;
  v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 80) isTypingMessage]);
  v138[2] = v18;
  v137[3] = IMMetricsCollectorIsGroupMessageKey;
  v19 = [NSNumber numberWithBool:*(a1 + 242)];
  v138[3] = v19;
  v137[4] = IMMetricsCollectorIsFromPhoneNumberKey;
  v20 = [NSNumber numberWithBool:IsEmail ^ 1];
  v138[4] = v20;
  v137[5] = IMMetricsCollectorIsFromEmailKey;
  v21 = [NSNumber numberWithInt:IsEmail];
  v138[5] = v21;
  v137[6] = IMMetricsCollectorHasAttachmentsKey;
  v22 = [NSNumber numberWithBool:v13];
  v138[6] = v22;
  v23 = [NSDictionary dictionaryWithObjects:v138 forKeys:v137 count:7];

  v24 = +[IMMetricsCollector sharedInstance];
  [v24 trackEvent:IMMetricsCollectorEventIMessageReceivedMessageSingleComponent withDictionary:v23];

  v25 = *(*(a1 + 216) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = 0;

  if ((*(a1 + 245) & 1) == 0)
  {
    if (!*(*(*(a1 + 224) + 8) + 40))
    {
      goto LABEL_22;
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = *(a1 + 88);
        v29 = *(*(*(a1 + 224) + 8) + 40);
        *buf = 138412546;
        v132 = v28;
        v133 = 2112;
        v134 = v29;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Updating last active device to be %@ for chat %@ on incoming message", buf, 0x16u);
      }
    }

    v30 = [*(a1 + 40) deliveryController];
    v31 = *(a1 + 88);
    v32 = [*(a1 + 96) _stripFZIDPrefix];
    [v30 updateLatestActiveDestination:v31 ForHandle:v32 incomingType:0];

    if (!*(*(*(a1 + 224) + 8) + 40))
    {
LABEL_22:
      v33 = *(a1 + 40);
      v34 = [*(a1 + 96) _stripFZIDPrefix];
      v35 = [v33 chatForChatIdentifier:v34 style:45];

      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = *(a1 + 88);
          *buf = 138412546;
          v132 = v37;
          v133 = 2112;
          v134 = v35;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "Updating last active device to be %@ for chat %@ on new incoming message", buf, 0x16u);
        }
      }

      v38 = [*(a1 + 40) deliveryController];
      v39 = *(a1 + 88);
      v40 = [*(a1 + 96) _stripFZIDPrefix];
      [v38 updateLatestActiveDestination:v39 ForHandle:v40 incomingType:0];

      if ([*(a1 + 104) count] > 2)
      {
        if (IMOSLoggingEnabled())
        {
          v41 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = [*(a1 + 48) guid];
            *buf = 138412290;
            v132 = v42;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "Not updating last addressed handle for msg guid %@ as we couldnt find a group for it", buf, 0xCu);
          }
        }
      }

      else
      {
        _UpdateLastAddressedHandle(*(a1 + 80), *(a1 + 72), v35);
      }
    }
  }

  v43 = *(a1 + 224);
  v44 = *(*(v43 + 8) + 40);
  if (v44)
  {
    v45 = [v44 state];
    v43 = *(a1 + 224);
    if (v45 != &dword_0 + 3)
    {
      v46 = *(a1 + 40);
      v47 = [*(*(v43 + 8) + 40) chatIdentifier];
      v48 = [*(*(*(a1 + 224) + 8) + 40) style];
      LOBYTE(v122) = *(a1 + 246);
      [v46 didUpdateChatStatus:2 chat:v47 style:v48 displayName:0 groupID:0 handleInfo:*(*(*(a1 + 232) + 8) + 40) account:*(a1 + 56) isBlackholed:v122];

      v43 = *(a1 + 224);
    }
  }

  if (!*(*(v43 + 8) + 40))
  {
    v49 = +[IMDChatRegistry sharedInstance];
    v50 = [v49 existingChatWithIdentifier:*(*(*(a1 + 200) + 8) + 40) account:*(a1 + 56)];
    v51 = *(*(a1 + 224) + 8);
    v52 = *(v51 + 40);
    *(v51 + 40) = v50;
  }

  v53 = +[IMFeatureFlags sharedFeatureFlags];
  v54 = [v53 isBIAEnabled];

  if (v54)
  {
    if (*(a1 + 247) == 1)
    {
      v55 = *(*(*(a1 + 224) + 8) + 40);
      if (v55)
      {
        [v55 addBIAContextWithUserID:*(a1 + 72) referenceID:*(a1 + 112)];
      }
    }
  }

  v56 = *(*(a1 + 232) + 8);
  v57 = *(v56 + 40);
  *(v56 + 40) = 0;

  if (+[IMSpamFilterHelper isInternationalSpamFilteringEnabled](IMSpamFilterHelper, "isInternationalSpamFilteringEnabled") && ([*(a1 + 48) isTypingMessage] & 1) == 0)
  {
    if ([*(*(*(a1 + 224) + 8) + 40) smsHandshakeState] == 1)
    {
      v58 = +[IMMetricsCollector sharedInstance];
      [v58 trackSpamEvent:4];

      [*(*(*(a1 + 224) + 8) + 40) updateSMSHandshakeState:2];
      v59 = +[IMDChatRegistry sharedInstance];
      v60 = [*(*(*(a1 + 224) + 8) + 40) chatIdentifier];
      v61 = [v59 existingSMSChatForID:v60 withChatStyle:{objc_msgSend(*(*(*(a1 + 224) + 8) + 40), "style")}];

      if (v61)
      {
        if (IMOSLoggingEnabled())
        {
          v62 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v62, OS_LOG_TYPE_INFO, "Updating sibling chat handshake state to IMChatSMSHandshakeStateSuccess", buf, 2u);
          }
        }

        [v61 updateSMSHandshakeState:2];
      }
    }

    if ([*(*(*(a1 + 224) + 8) + 40) messageHandshakeState] == 1)
    {
      v63 = +[IMMetricsCollector sharedInstance];
      [v63 trackSpamEvent:3];

      [*(*(*(a1 + 224) + 8) + 40) updateMessageHandshakeState:2];
    }
  }

  if (*(*(*(a1 + 224) + 8) + 40))
  {
    v64 = [*(a1 + 56) service];
    v65 = [v64 internalName];
    [*(a1 + 80) setService:v65];

    v66 = +[IMDChatStore sharedInstance];
    [v66 updatePersonCentricIDForHandlesInChatWithMessage:*(a1 + 80) fromIdentifier:*(a1 + 96) personCentricID:*(a1 + 120) chat:*(*(*(a1 + 224) + 8) + 40)];

    v67 = [*(a1 + 128) _stringForKey:MessageDictionaryNicknameParticipantTruncatedRIDKey];
    if (v67)
    {
      v68 = v67;
    }

    else
    {
      v68 = &stru_115E20;
    }

    if (IMOSLoggingEnabled())
    {
      v69 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v70 = *(a1 + 96);
        *buf = 138412546;
        v132 = v68;
        v133 = 2112;
        v134 = v70;
        _os_log_impl(&dword_0, v69, OS_LOG_TYPE_INFO, "Received truncated record id %@ from %@", buf, 0x16u);
      }
    }

    v71 = +[IMDNicknameController sharedInstance];
    [v71 verifyTruncatedRecordIDMatchesPersonalNickname:v68 forChat:*(*(*(a1 + 224) + 8) + 40)];

    v72 = *(*(*(a1 + 224) + 8) + 40);
    if (v72 && (*(a1 + 245) & 1) == 0)
    {
      v73 = [*(a1 + 128) _stringForKey:@"aogrs"];
      v125 = [*(a1 + 128) _stringForKey:@"aogre"];
      if (v73)
      {
        v74 = [*(a1 + 96) _stripFZIDPrefix];
        v75 = [*(a1 + 136) _stripFZIDPrefix];
        v76 = [NSDate __im_iMessageDateFromTimeStamp:*(a1 + 144)];
        if (IMOSLoggingEnabled())
        {
          v77 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v132 = v73;
            v133 = 2112;
            v134 = v74;
            v135 = 2112;
            v136 = v75;
            _os_log_impl(&dword_0, v77, OS_LOG_TYPE_INFO, "Received offGridSubscriptionValidationToken = %@ from %@ to %@", buf, 0x20u);
          }
        }

        v78 = +[IMDOffGridAvailabilityVerificationManager sharedInstance];
        [v78 verifyOffGridSubscriptionMatchesSubscriptionValidationToken:v73 encryptionValidationToken:v125 receivedByHandleID:v75 fromHandleID:v74 messageDate:v76];
      }

      else if (IMOSLoggingEnabled())
      {
        v79 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
        {
          v80 = *(a1 + 96);
          *buf = 138412290;
          v132 = v80;
          _os_log_impl(&dword_0, v79, OS_LOG_TYPE_INFO, "Message from %@ did not contain offGridSubscriptionValidationToken.", buf, 0xCu);
        }
      }

      v81 = [*(a1 + 128) _stringForKey:@"arc"];
      v82 = [*(a1 + 128) _stringForKey:@"are"];
      if (v81)
      {
        v83 = [*(a1 + 96) _stripFZIDPrefix];
        v84 = [*(a1 + 136) _stripFZIDPrefix];
        v85 = [NSDate __im_iMessageDateFromTimeStamp:*(a1 + 144)];
        if (IMOSLoggingEnabled())
        {
          v86 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v132 = v81;
            v133 = 2112;
            v134 = v83;
            v135 = 2112;
            v136 = v84;
            _os_log_impl(&dword_0, v86, OS_LOG_TYPE_INFO, "Received availabilityVerificationRecipientChannelID = %@ from %@ to %@", buf, 0x20u);
          }
        }

        v87 = +[IMDAvailabilityVerificationManager sharedInstance];
        [v87 verifyPersonalSubscriptionMatchesSubscriptionValidationToken:v81 encryptionValidationToken:v82 receivedByHandleID:v84 fromHandleID:v83 messageDate:v85];
      }

      else if (IMOSLoggingEnabled())
      {
        v88 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
        {
          v89 = *(a1 + 96);
          *buf = 138412290;
          v132 = v89;
          _os_log_impl(&dword_0, v88, OS_LOG_TYPE_INFO, "Message from %@ did not contain an availabilityVerificationRecipientChannelID. Not performing validation.", buf, 0xCu);
        }
      }

      v72 = *(*(*(a1 + 224) + 8) + 40);
    }
  }

  else
  {
    v72 = 0;
  }

  [*(a1 + 40) _autoReportChatAsUnknown:v72 chatIsNew:*(a1 + 248)];
  if ((*(a1 + 249) & 1) == 0)
  {
    if (*(a1 + 250) == 1 && (v90 = *(a1 + 40), v91 = *(*(*(a1 + 224) + 8) + 40), +[NSDate __im_iMessageDateFromTimeStamp:](NSDate, "__im_iMessageDateFromTimeStamp:", *(a1 + 144)), v92 = objc_claimAutoreleasedReturnValue(), LODWORD(v90) = [v90 _shouldOptimizedDeliveryReceiptForConversation:v91 withMessageTimeStamp:v92], v92, v90))
    {
      if (IMOSLoggingEnabled())
      {
        v93 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
        {
          v94 = [*(a1 + 48) guid];
          *buf = 138412290;
          v132 = v94;
          _os_log_impl(&dword_0, v93, OS_LOG_TYPE_INFO, "Not sending delivery receipt for msg with guid: %@ we belive it's been handled elsewhere", buf, 0xCu);
        }
      }
    }

    else
    {
      if (a2)
      {
        v95 = *(a1 + 246) == 1 && (*(a1 + 251) & 1) != 0 ? 0 : [*(a1 + 152) BOOLValue];
        v96 = *(a1 + 40);
        v97 = [*(a1 + 160) service];
        v98 = *(a1 + 168);
        v99 = [*(a1 + 48) guid];
        LOBYTE(v96) = [v96 _sendCertifiedDeliveryReceiptIfPossible:v97 messageContext:v98 guid:v99 messageWasStored:1 needsDeliveryReceipt:v95 failureReason:0];

        if ((v96 & 1) == 0)
        {
          v101 = *(a1 + 32);
          v100 = *(a1 + 40);
          v102 = *(a1 + 88);
          v103 = *(a1 + 176);
          v104 = [NSNumber numberWithBool:v95];
          v105 = *(a1 + 72);
          v106 = [*(a1 + 160) account];
          [v100 sendDeliveryReceiptForMessageID:v101 toID:v102 deliveryContext:v103 needsDeliveryReceipt:v104 callerID:v105 account:v106];
        }
      }

      if (([*(a1 + 48) isTypingMessage] & 1) == 0)
      {
        [*(a1 + 160) sendManualAckForMessageWithContext:*(a1 + 168)];
        if (([*(a1 + 48) isFromMe] & 1) == 0)
        {
          v107 = +[IMMessageNotificationTimeManager sharedInstance];
          [v107 sendNotificationMessageIfNeededForIncomingMessageFromChatIdentifier:*(*(*(a1 + 200) + 8) + 40)];
        }

        v108 = +[IMMessageNotificationTimeManager sharedInstance];
        [v108 tearDownSessionForChatIdentifier:*(*(*(a1 + 200) + 8) + 40)];

        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v109 = +[IMDChatRegistry sharedInstance];
        v110 = [v109 allExistingSupportedServiceChatsWithIdentifier:*(*(*(a1 + 200) + 8) + 40) style:*(a1 + 244)];

        v111 = [v110 countByEnumeratingWithState:&v126 objects:v130 count:16];
        if (v111)
        {
          v112 = *v127;
          do
          {
            for (i = 0; i != v111; i = i + 1)
            {
              if (*v127 != v112)
              {
                objc_enumerationMutation(v110);
              }

              v114 = *(*(&v126 + 1) + 8 * i);
              v115 = [*(a1 + 48) guid];
              [v114 updateLastSeenMessageGuidIfNeeded:v115];
            }

            v111 = [v110 countByEnumeratingWithState:&v126 objects:v130 count:16];
          }

          while (v111);
        }
      }
    }
  }

  v116 = *(a1 + 192);
  if (v116)
  {
    if (*(a1 + 250) == 1)
    {
      v117 = *(a1 + 40);
      v118 = *(a1 + 252);
      v119 = *(a1 + 184);
      v120 = [*(a1 + 160) account];
      v121 = [v117 idsServiceForIDSAccount:v120];
      [v117 noteItemProcessed:v118 & 1 batchContext:v119 usingService:v121];

      v116 = *(a1 + 192);
    }

    (*(v116 + 16))();
  }
}

void sub_18C2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = im_checkpointIDSService();
  v5 = *(a1 + 32);
  v6 = *(a1 + 104);
  im_sendMessageCheckpointIfNecessary();

  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_18E68;
  v25 = &unk_112368;
  v29 = *(a1 + 88);
  v7 = v3;
  v31 = *(a1 + 105);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v30 = v7;
  v26 = v8;
  v27 = v9;
  v28 = *(a1 + 56);
  v10 = objc_retainBlock(&v22);
  if (*(a1 + 105) == 1)
  {
    v11 = *(a1 + 106);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = [*(a1 + 56) account];
    v15 = [v12 idsServiceForIDSAccount:v14];
    [v12 noteItemProcessed:v11 batchContext:v13 usingService:v15];
  }

  v32 = *(a1 + 64);
  v16 = 1;
  v17 = [NSArray arrayWithObjects:&v32 count:1];
  v18 = IMServiceNameForCanonicalIDSAddresses();

  v19 = [IMSenderContext businessChatContextWithServiceName:v18];
  v20 = [*(a1 + 40) attachmentController];
  v21 = v20;
  if ((*(a1 + 105) & 1) == 0)
  {
    v16 = *(a1 + 107);
  }

  [v20 retrieveAttachmentsForMessage:*(a1 + 72) inlineAttachments:*(a1 + 80) displayID:*(*(*(a1 + 96) + 8) + 40) topic:v18 comingFromStorage:v16 & 1 shouldForceAutoDownload:0 senderContext:v19 completionBlock:{v10, v22, v23, v24, v25, v26}];
}

void sub_18E68(uint64_t a1, void *a2, void *a3, char a4, int a5, void *a6, uint64_t a7, void *a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a6;
  v18 = a8;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_19168;
  v38[3] = &unk_112318;
  v19 = *(a1 + 56);
  v20 = v15;
  v39 = v20;
  v21 = v16;
  v40 = v21;
  v48 = a4;
  v47 = a5;
  v22 = v17;
  v41 = v22;
  v46 = a7;
  v23 = v18;
  v42 = v23;
  v45 = *(a1 + 64);
  v49 = *(a1 + 72);
  v35 = *(a1 + 32);
  v24 = *(&v35 + 1);
  *&v25 = *(a1 + 48);
  *(&v25 + 1) = v19;
  v43 = v35;
  v44 = v25;
  v26 = objc_retainBlock(v38);
  v27 = [v20 balloonBundleID];
  v28 = IMBalloonExtensionIDWithSuffix();
  LODWORD(v16) = [v27 isEqualToString:v28];

  if (v16)
  {
    v29 = v21;
    if ([v20 isFromMe])
    {
      +[IMSenderContext fromMeContext];
    }

    else
    {
      +[IMSenderContext businessChatContext];
    }
    v30 = ;
    v31 = +[MessageTranscodeController sharedInstance];
    v32 = [v20 guid];
    v33 = [v20 payloadData];
    v34 = [v20 balloonBundleID];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_19254;
    v36[3] = &unk_112340;
    v37 = v26;
    [v31 generateSnapshotForMessageGUID:v32 payloadData:v33 balloonBundleID:v34 senderContext:v30 completionBlock:v36];

    v21 = v29;
  }

  else
  {
    (v26[2])(v26);
  }
}

uint64_t sub_19168(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    return (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40), *(a1 + 116), *(a1 + 112), *(a1 + 48), *(a1 + 104), *(a1 + 56), *(a1 + 96));
  }

  if (*(a1 + 117) == 1)
  {
    v4 = *(a1 + 118);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = [*(a1 + 80) account];
    v8 = [v5 idsServiceForIDSAccount:v7];
    [v5 noteItemProcessed:v4 batchContext:v6 usingService:v8];
  }

  v9 = *(*(a1 + 96) + 16);

  return v9();
}

void sub_194FC(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _handleNicknameReceived:*(a1 + 40) fromIdentifier:*(a1 + 48) withMessageItem:0 isSnapTrustedUser:{objc_msgSend(*(a1 + 56), "BOOLValueForKey:withDefault:", @"stu", 1)}];
  v3 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
    v3 = v4;
  }
}

void sub_1B190(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _handleDeleteCommandWithMessageDictionary:*(a1 + 40)];
  v3 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
    v3 = v4;
  }
}

void sub_1B5B0(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) recoverChatsForCommandDictionary:*(a1 + 40)];
  v3 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
    v3 = v4;
  }
}

void sub_1B938(uint64_t a1, void *a2)
{
  v36 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      *buf = 138412802;
      v38 = v4;
      v39 = 2112;
      v40 = v5;
      v41 = 2112;
      v42 = v6;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Received group message command: %@ from: %@   token: %@", buf, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 56);
      if (*(a1 + 64))
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v10 = *(a1 + 72);
      *buf = 138412802;
      v38 = v8;
      v39 = 2112;
      v40 = v9;
      v41 = 2112;
      v42 = v10;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "fromIDSID:%@, needsDeliveryReceipt %@, deliveryContext %@", buf, 0x20u);
    }
  }

  v11 = *(a1 + 32);
  v12 = [*(a1 + 80) _FTOptionallyDecompressData];
  v13 = JWDecodeDictionary();

  if (v13)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Using encrypted group payload", buf, 2u);
      }
    }

    v15 = v13;

    v11 = v15;
  }

  v16 = *(a1 + 88);
  v17 = [*(a1 + 96) account];
  v18 = [v16 imdAccountForIDSAccount:v17];

  v19 = [v11 objectForKeyedSubscript:@"rp"];
  if (v19 && (v20 = [*(a1 + 88) isReplicating], v19, (v20 & 1) == 0))
  {
    v29 = +[IMDServiceController sharedController];
    v30 = [v11 objectForKeyedSubscript:@"rp"];
    v31 = [v29 serviceWithReplicationSourceID:{objc_msgSend(v30, "integerValue")}];

    v32 = +[IMDAccountController sharedAccountController];
    v33 = [v31 internalName];
    v34 = [v32 sessionForReplicationSourceServiceName:v33 replicatingAccount:v18];

    v35 = *(a1 + 120);
    [v34 handler:*(a1 + 96) groupMessageCommand:*(a1 + 32) encryptedGroupCommand:*(a1 + 80) messageID:*(a1 + 104) toIdentifier:*(a1 + 112) fromIdentifier:*(a1 + 40) fromToken:*(a1 + 48) timeStamp:v35 fromIDSID:*(a1 + 56) needsDeliveryReceipt:*(a1 + 64) deliveryContext:*(a1 + 72) storageContext:*(a1 + 128) batchContext:*(a1 + 136)];
    if (v36)
    {
      v36[2]();
    }
  }

  else
  {
    v21 = [*(a1 + 88) groupController];
    v22 = *(a1 + 88);
    v23 = *(a1 + 104);
    v24 = *(a1 + 112);
    v25 = *(a1 + 40);
    v26 = [*(a1 + 96) service];
    v27 = *(a1 + 48);
    v28 = *(a1 + 128);
    [v21 handler:v22 account:v18 groupMessagePayload:v11 messageID:v23 toIdentifier:v24 fromIdentifier:v25 idsService:v26 fromToken:v27 timeStamp:*(a1 + 120) storageContext:v28 batchContext:*(a1 + 136)];

    if (v36)
    {
      v36[2]();
    }
  }
}

void sub_1C1B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 messageWithGUID:*(a1 + 32)];

  if (v5)
  {
    v6 = +[IMDMessageStore sharedInstance];
    v7 = [v6 chatForMessage:v5];

    if (v7)
    {
      v8 = [v5 balloonBundleID];
      v9 = [v8 isEqualToString:*(a1 + 40)];

      if (v9)
      {
        v21 = _NSConcreteStackBlock;
        v22 = 3221225472;
        v23 = sub_1C5A8;
        v24 = &unk_112430;
        v10 = v5;
        v11 = *(a1 + 48);
        v25 = v10;
        v26 = v11;
        v27 = v7;
        v28 = *(a1 + 32);
        v29 = *(a1 + 56);
        v30 = v3;
        v12 = objc_retainBlock(&v21);
        if ([*(a1 + 64) length] && !objc_msgSend(*(a1 + 72), "count"))
        {
          v13 = [*(a1 + 48) attachmentController];
          v20 = *(a1 + 64);
          v15 = [v10 guid];
          [v13 processDownloadedPayloadData:v20 forMessageGUID:v15 balloonBundleID:*(a1 + 40) fromIdentifier:*(a1 + 80) senderToken:*(a1 + 88) withCompletionBlock:v12];
        }

        else
        {
          v13 = [*(a1 + 48) attachmentController];
          v14 = *(a1 + 72);
          v15 = [v10 guid];
          [v13 processMessageAttachmentDictionary:v14 forMessageGUID:v15 balloonBundleID:*(a1 + 40) fromIdentifier:*(a1 + 80) senderToken:*(a1 + 88) withCompletionBlock:v12];
        }

        goto LABEL_24;
      }

      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v32 = v5;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "PayloadAttachmentsBubbleUpdate: Could not find a chat for message: %@", buf, 0xCu);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = v5;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "PayloadAttachmentsBubbleUpdate: Could not find a chat for message: %@", buf, 0xCu);
      }
    }

    v3[2](v3);
LABEL_24:

    goto LABEL_25;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      *buf = 138412290;
      v32 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "PayloadAttachmentsBubbleUpdate: Could not find chat for balloon payload for missing message GUID: %@", buf, 0xCu);
    }
  }

  v3[2](v3);
LABEL_25:
}

void sub_1C5A8(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v18 = a3;
  if ([v18 count])
  {
    v5 = +[IMDFileTransferCenter sharedInstance];
    v6 = [*(a1 + 32) guid];
    v7 = [v5 guidsForStoredAttachmentPayloadDataURLs:v18 messageGUID:v6];
  }

  else
  {
    v7 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v21 = [v19 length];
      v22 = 2048;
      v23 = [v18 count];
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Updating payload to length: %lu with attachments: %lu", buf, 0x16u);
    }
  }

  [*(a1 + 32) setPayloadData:v19];
  if ([v7 count])
  {
    [*(a1 + 32) setFileTransferGUIDs:v7];
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = [*(a1 + 48) chatIdentifier];
  v12 = [*(a1 + 48) style];
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  v15 = [*(a1 + 64) account];
  v16 = [v13 imdAccountForIDSAccount:v15];
  v17 = [v16 accountID];
  [v9 didReceiveBalloonPayload:v10 forChat:v11 style:v12 messageGUID:v14 account:v17];

  (*(*(a1 + 72) + 16))();
}

void sub_1CBFC(id a1, IMMessageItem *a2)
{
  v2 = a2;
  v3 = +[IMDMessageStore sharedInstance];
  v4 = [v3 chatForMessage:v2];

  if (v4)
  {
    if ([v4 style] == 45)
    {
      v5 = +[IMDAccountController sharedInstance];
      v6 = [v5 anySessionForServiceName:IMServiceNameiMessageLite];

      v7 = [v4 chatIdentifier];
      [v6 relayLegacySatelliteMessage:v2 toChat:v7 localWatchOnly:1];
    }

    else
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_BBC50(v2, v10);
      }

      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_BBCE8();
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(IMMessageItem *)v2 guid];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Chat not found for message relay guid: %@", &v12, 0xCu);
    }
  }
}

void sub_1D228(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  if (a4 && (*(a1 + 40) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v10;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished sending relay messages to participants: %@", &v17, 0xCu);
      }
    }

    [*(a1 + 32) setNeedsRelay:0];
    v13 = +[IMDMessageStore sharedInstance];
    v14 = [v13 storeMessage:*(a1 + 32) forceReplace:0 modifyError:1 modifyFlags:1 flagMask:0x40000000000];

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [*(a1 + 32) guid];
        v17 = 138412290;
        v18 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Message marked as relayed, guid: %@", &v17, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v17 = 138412546;
        v18 = v10;
        v19 = 1024;
        v20 = a5;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Failed sending P2P group message to people: %@ - error: %d", &v17, 0x12u);
      }
    }

    IMSetDomainBoolForKey();
  }
}

void sub_1E3F8(id a1, MessageDeliveryController *a2, NSArray *a3, BOOL a4, unsigned int a5, BOOL a6)
{
  v7 = a4;
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v10;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished sending P2P group message to person: %@", &v14, 0xCu);
      }
    }
  }

  else if (v11)
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = v10;
      v16 = 1024;
      v17 = a5;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Failed sending P2P group message to people: %@  error: %d", &v14, 0x12u);
    }
  }
}

void sub_1E940(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      v11 = *(a1 + 32);
      if (a4)
      {
        v10 = @"YES";
      }

      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Sent sharing info to %@ with success? %@", &v13, 0x16u);
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, a4);
  }
}

void sub_1F050(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v13 && IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v16 = 138412546;
      v17 = v15;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Error when looking up engroup for chat: %@ error: %@", &v16, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1F828(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = IMOSLoggingEnabled();
  if (a5)
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v20 = 138412802;
      v21 = v14;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Successfully invited people: %@  to chat: %@  new participants: %@", &v20, 0x20u);
    }
  }

  else
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v20 = 138412802;
      v21 = v15;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "*** Failed to invite invite people: %@  to chat: %@  resulting participants: %@", &v20, 0x20u);
    }
  }

LABEL_10:
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Finished inviting participants to chat --> sending out notification to dismiss spinner if we have one", &v20, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v18 = [WeakRetained broadcasterForChatListeners];
  v19 = [*(a1 + 40) guid];
  [v18 engroupParticipantsUpdatedForChat:v19];
}

id sub_20E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  HIDWORD(v7) = a6;
  BYTE1(v7) = *(a1 + 72);
  LOBYTE(v7) = a5;
  return [*(a1 + 32) groupPhotoUploadCompletedForChat:*(a1 + 40) fileTransferGuid:*(a1 + 48) callerURI:*(a1 + 56) fromAccount:*(a1 + 64) message:a2 displayIDs:a3 additionalContext:a4 success:v7 isPhotoRefresh:? error:?];
}

void sub_20EE8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [*(a1 + 32) guid];
      v14 = *(a1 + 40);
      v15 = [NSNumber numberWithInteger:a4];
      v18 = 138413570;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v15;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "upload group photo failed. chatGuid %@ fileTransferGuid %@ transferError %@ requestURLString %@ outFileSize %@ additionalErrorInfo %@", &v18, 0x3Eu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v18 = 138412290;
      v19 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, " => chat: %@", &v18, 0xCu);
    }
  }

  [*(a1 + 48) groupPhotoUploadFailedForChat:*(a1 + 32) fileTransferGuid:*(a1 + 40)];
}

uint64_t sub_21F60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_22564(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = IMOSLoggingEnabled();
  if (a5)
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v19 = 138412802;
      v20 = v14;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Successfully removed people: %@  from chat: %@  new participants: %@", &v19, 0x20u);
    }
  }

  else
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v19 = 138412802;
      v20 = v15;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "*** Failed to remove people: %@  from chat: %@  resulting participants: %@", &v19, 0x20u);
    }
  }

LABEL_10:
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Finished removing participants from chat --> sending out notification to dismiss spinner if we have one", &v19, 2u);
    }
  }

  v17 = [*(a1 + 40) broadcasterForChatListeners];
  v18 = [*(a1 + 48) guid];
  [v17 engroupParticipantsUpdatedForChat:v18];
}

void sub_22B4C(id a1, MessageGroupController *a2, IMDChat *a3, BOOL a4, unsigned int a5)
{
  v5 = a4;
  v7 = a2;
  v8 = a3;
  v9 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Successfully left chat: %@", &v11, 0xCu);
      }

LABEL_9:
    }
  }

  else if (v9)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "*** Failed to leave chat: %@", &v11, 0xCu);
    }

    goto LABEL_9;
  }
}

void sub_23C30(id a1, MessageDeliveryController *a2, NSArray *a3, BOOL a4, unsigned int a5, BOOL a6)
{
  v7 = a4;
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished sending FTCommandIDUpdateAttachmentsMessage", v14, 2u);
      }
    }
  }

  else if (v11)
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14[0] = 67109120;
      v14[1] = a5;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Failed sending FTCommandIDUpdateAttachmentsMessage: %d", v14, 8u);
    }
  }
}

void sub_23D80(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "_sendHighResolutionImagesForMessage sending to engroup: %@", buf, 0xCu);
    }
  }

  v5 = [*(a1 + 32) deliveryController];
  v6 = +[NSDictionary dictionary];
  v7 = *(a1 + 64);
  [v5 sendMessageDictionary:v6 fromID:*(a1 + 40) fromAccount:*(a1 + 48) toURIs:*(a1 + 56) toGroup:v3 priority:300 options:v7 completionBlock:*(a1 + 72)];
}

void sub_24A14(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 32) guid];
        v14 = *(a1 + 40);
        v18 = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished sending remote read receipt for guid: %@   to people: %@", &v18, 0x16u);
      }
    }
  }

  else if (v11)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [*(a1 + 32) guid];
      v17 = *(a1 + 40);
      v18 = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 1024;
      v23 = a5;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Failed sending remote read receipt for guid: %@   to people: %@  error: %d", &v18, 0x1Cu);
    }
  }
}

void sub_24BB4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x24B78);
  }

  _Unwind_Resume(a1);
}

void sub_24BD8(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 32) guid];
        v14 = *(a1 + 40);
        v18 = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished sending legacy read receipt for guid: %@   to ourself: %@", &v18, 0x16u);
      }
    }
  }

  else if (v11)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [*(a1 + 32) guid];
      v17 = *(a1 + 40);
      v18 = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 1024;
      v23 = a5;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Failed sending legacy read receipt for guid: %@   to ourself: %@  error: %d", &v18, 0x1Cu);
    }
  }
}

void sub_24D78(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x24D3CLL);
  }

  _Unwind_Resume(a1);
}

void sub_24D9C(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 32) guid];
        v14 = *(a1 + 40);
        v18 = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished sending enhanced read receipt for guid: %@   to ourself: %@", &v18, 0x16u);
      }
    }
  }

  else if (v11)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [*(a1 + 32) guid];
      v17 = *(a1 + 40);
      v18 = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 1024;
      v23 = a5;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Failed sending enhanced read receipt for guid: %@   to ourself: %@  error: %d", &v18, 0x1Cu);
    }
  }
}

void sub_24F3C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x24F00);
  }

  _Unwind_Resume(a1);
}

void sub_24F60(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 32) guid];
        v14 = *(a1 + 40);
        v18 = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished sending read receipt for guid: %@   to people: %@", &v18, 0x16u);
      }
    }
  }

  else if (v11)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [*(a1 + 32) guid];
      v17 = *(a1 + 40);
      v18 = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 1024;
      v23 = a5;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Failed sending read receipt for guid: %@   to people: %@  error: %d", &v18, 0x1Cu);
    }
  }
}

void sub_25100(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x250C4);
  }

  _Unwind_Resume(a1);
}

void sub_257B0(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 32) guid];
        v14 = *(a1 + 40);
        v18 = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished sending played receipt for guid: %@   to people: %@", &v18, 0x16u);
      }
    }
  }

  else if (v11)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [*(a1 + 32) guid];
      v17 = *(a1 + 40);
      v18 = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 1024;
      v23 = a5;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Failed sending played receipt for guid: %@   to people: %@  error: %d", &v18, 0x1Cu);
    }
  }
}

void sub_25950(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25914);
  }

  _Unwind_Resume(a1);
}

void sub_25FB0(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        v18 = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished sending delivered quietly receipt for guid: %@   to people: %@", &v18, 0x16u);
      }
    }
  }

  else if (v11)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 1024;
      v23 = a5;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Failed sending delivered quietly receipt for guid: %@   to people: %@  error: %d", &v18, 0x1Cu);
    }
  }
}

void sub_26144(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 count];
  v11 = IMOSLoggingEnabled();
  if (!v10)
  {
    if (v11)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Sending delivered quietly receipt to all destinations, none skipped.", &v20, 2u);
      }

      goto LABEL_20;
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  if (v11)
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v8;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Not sending delivered quietly receipt to skipped destinations: %@", &v20, 0xCu);
    }
  }

  if (![*(a1 + 32) length] || !objc_msgSend(v8, "containsObject:", *(a1 + 32)))
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 32);
        v18 = [v8 count];
        v20 = 138412546;
        v21 = v17;
        v22 = 2048;
        v23 = v18;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Incoming message came from a device that does support delivered quietly receipts %@, but they also have %ld devices that do not support delivered quietly.", &v20, 0x16u);
      }

LABEL_20:

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v20 = 138412290;
      v21 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Incoming message came from a device that does not support delivered quietly receipts. Senders destination: %@", &v20, 0xCu);
    }
  }

  v15 = 1;
LABEL_22:
  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))(v19, v15);
  }
}

void sub_2698C(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        v18 = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished sending notify recipient receipt for guid: %@   to people: %@", &v18, 0x16u);
      }
    }
  }

  else if (v11)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 1024;
      v23 = a5;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Failed sending notify recipient receipt for guid: %@   to people: %@  error: %d", &v18, 0x1Cu);
    }
  }
}

void sub_27198(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x26EE0);
  }

  objc_destroyWeak(&a49);
  objc_destroyWeak((v49 - 200));
  objc_destroyWeak((v49 - 184));
  _Unwind_Resume(exc_buf);
}

void sub_27208(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v5 count])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Message editing unsupported by destinations: %@", &v11, 0xCu);
      }
    }

    v9 = [WeakRetained _handleIDsForDestinations:v5];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Message editing unsupported by handles: %@", &v11, 0xCu);
      }
    }

    [WeakRetained didReceiveMessageEditingUnsupportedHandleIDs:v9 forMessageGUID:*(a1 + 32) partIndex:*(a1 + 56) previousMessage:*(a1 + 40) backwardCompatibilityMessageGUID:v6];
  }
}

void sub_273C0(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a4)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Message editing success", v14, 2u);
      }
    }

    [WeakRetained didSendMessageEditForMessageGUID:*(a1 + 32)];
  }

  else
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_BC040();
    }

    [WeakRetained didReceiveMessageEditingSendFailure:a5 forMessageGUID:*(a1 + 32) partIndex:*(a1 + 48) editType:*(a1 + 56)];
  }
}

void sub_274F4(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) guid];
      v4 = *(a1 + 112);
      *buf = 138412546;
      v7 = v3;
      v8 = 1024;
      v9 = v4;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Delivering message edit of %@ for replication after %u second delay", buf, 0x12u);
    }
  }

  v5 = [*(a1 + 40) deliveryController];
  [v5 sendEditedMessage:*(a1 + 48) partIndex:*(a1 + 120) editType:*(a1 + 128) destinations:*(a1 + 56) chatIdentifier:*(a1 + 64) account:*(a1 + 72) fromID:*(a1 + 80) backwardCompatabilityText:*(a1 + 88) unsupportedDestinationsHandler:*(a1 + 96) completionBlock:*(a1 + 104)];
}

void sub_27A14(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 32) guid];
        v14 = *(a1 + 40);
        v18 = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished sending repositioned sticker for guid: %@   to people: %@", &v18, 0x16u);
      }
    }
  }

  else if (v11)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [*(a1 + 32) guid];
      v17 = *(a1 + 40);
      v18 = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 1024;
      v23 = a5;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Failed sending repositioned sticker for guid: %@   to people: %@  error: %d", &v18, 0x1Cu);
    }
  }
}

void sub_27BB4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x27B78);
  }

  _Unwind_Resume(a1);
}

void sub_283C0(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 32) guid];
        v14 = *(a1 + 40);
        v18 = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished sending saved receipt for guid: %@   to people: %@", &v18, 0x16u);
      }
    }
  }

  else if (v11)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [*(a1 + 32) guid];
      v17 = *(a1 + 40);
      v18 = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 1024;
      v23 = a5;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Failed sending saved receipt for guid: %@   to people: %@  error: %d", &v18, 0x1Cu);
    }
  }
}

void sub_28560(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x28524);
  }

  _Unwind_Resume(a1);
}

void sub_29070(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        v18 = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished sending SyndicationAction: %@ to people: %@", &v18, 0x16u);
      }
    }
  }

  else if (v11)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 1024;
      v23 = a5;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Failed sending saved SyndicationAction: %@ to people: %@ error: %d", &v18, 0x1Cu);
    }
  }
}

void sub_299D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _richLinkPendSendingWithGUID:*(a1 + 40)];
  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Message pending to be sent. Not sending c 196", buf, 2u);
      }
    }

    if (IMGetDomainBoolForKey())
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "******** com.apple.sms defaults enforceRichLinkDelay set. Not flushing pending sends. Waiting for timer to fire ********", buf, 2u);
        }
      }
    }

    else
    {
      [*(a1 + 32) _flushQueuedMessageWrapperBlocks];
    }
  }

  else
  {
    if (v5)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Proceeding sending c 196", buf, 2u);
      }
    }

    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = *(a1 + 48);
    if (v10)
    {
      CFDictionarySetValue(v9, @"bid", v10);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_BC288();
    }

    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v13 = IMSharedHelperCombinedPluginPayloadDictionaryData();
    v14 = [v13 _FTCopyGzippedData];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_29E4C;
    v21[3] = &unk_112740;
    v22 = v14;
    v23 = v9;
    v15 = *(a1 + 40);
    v16 = *(a1 + 32);
    v24 = v15;
    v25 = v16;
    v26 = *(a1 + 72);
    v27 = *(a1 + 80);
    v28 = *(a1 + 88);
    v29 = *(a1 + 96);
    v30 = &stru_112718;
    v17 = v9;
    v18 = v14;
    v19 = objc_retainBlock(v21);
    v20 = [*(a1 + 32) attachmentController];
    [v20 sendPayloadData:v18 messageGUID:*(a1 + 40) fromID:*(a1 + 88) recipients:*(a1 + 96) completionBlock:v19];
  }
}

void sub_29D20(id a1, MessageDeliveryController *a2, NSArray *a3, BOOL a4, unsigned int a5, BOOL a6)
{
  v7 = a4;
  v9 = a2;
  v10 = a3;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"NO";
      v13 = 138412802;
      v14 = v10;
      if (v7)
      {
        v12 = @"YES";
      }

      v15 = 2112;
      v16 = v12;
      v17 = 1024;
      v18 = a5;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Sent to IDs: %@ with success: %@ and error: %d", &v13, 0x1Cu);
    }
  }
}

void sub_29E4C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = IMOSLoggingEnabled();
  if (a3)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = v5;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Finished uploading new payload data for message. Resulting payloadDictionary %@", buf, 0xCu);
      }
    }

    if (v5)
    {
      CFDictionarySetValue(*(a1 + 40), @"bpdi", v5);
    }

    else
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        CFDictionarySetValue(*(a1 + 40), @"p", v11);
      }
    }

    v12 = [NSNumber numberWithInteger:196];
    v13 = *(a1 + 40);
    v14 = JWEncodeDictionary();
    v15 = *(a1 + 48);
    v16 = IDSGetUUIDData();
    v17 = [NSDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v12, IDSSendMessageOptionCommandKey, &__kCFBooleanTrue, IDSSendMessageOptionWantsDeliveryStatusKey, v14, IDSSendMessageOptionDataToEncryptKey, v16, IDSSendMessageOptionUUIDKey, 0];

    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_2A18C;
    v22[3] = &unk_112630;
    v22[4] = v18;
    v20 = *(a1 + 72);
    v23 = *(a1 + 80);
    v24 = *(a1 + 72);
    v25 = *(a1 + 88);
    v26 = v17;
    v27 = *(a1 + 96);
    v21 = v17;
    [v18 _engroupForChat:v19 idsAccount:v20 completion:v22];
  }

  else if (v6)
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      v10 = *(a1 + 88);
      *buf = 138412546;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "MessageService Failed processing new payload data for message: %@  for display IDs: %@", buf, 0x16u);
    }
  }
}

void sub_2A18C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "sendBalloonPayload to engroup: %@", buf, 0xCu);
    }
  }

  v5 = [*(a1 + 32) deliveryController];
  v6 = +[NSDictionary dictionary];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = [NSSet setWithArray:*(a1 + 56)];
  [v5 sendBubblePayloadMessageDictionary:v6 fromID:v7 fromAccount:v8 toURIs:v9 toGroup:v3 priority:300 options:*(a1 + 64) completionBlock:*(a1 + 72)];
}

void sub_2A65C(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        v18 = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished sending cross service association for replacementGUID: %@ guid: %@", &v18, 0x16u);
      }
    }
  }

  else if (v11)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 1024;
      v23 = a5;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Failed sending cross service association for replacementGUID: %@ guid: %@ error: %u", &v18, 0x1Cu);
    }
  }
}

void sub_2A928(id a1, MessageDeliveryController *a2, NSArray *a3, BOOL a4, unsigned int a5, BOOL a6)
{
  v7 = a4;
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished sending automation dictionary", v14, 2u);
      }
    }
  }

  else if (v11)
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14[0] = 67109120;
      v14[1] = a5;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Failed sending automation dictionary error %u", v14, 8u);
    }
  }
}

void sub_2B074(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v16 = 138412290;
        v17[0] = v13;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished  sending Delivery receipt for guid: %@", &v16, 0xCu);
      }
    }
  }

  else if (v11)
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v16 = 67109378;
      LODWORD(v17[0]) = a5;
      WORD2(v17[0]) = 2112;
      *(v17 + 6) = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Failed  sending Delivery receipt error %u, guid %@", &v16, 0x12u);
    }
  }
}

void sub_2B9B8(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        v15 = 138412546;
        v16 = v11;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Finished sending nickname info for guid: %@    to people:  %@", &v15, 0x16u);
      }

LABEL_9:
    }
  }

  else if (v9)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Failed sending nickname info for guid: %@    to people:  %@", &v15, 0x16u);
    }

    goto LABEL_9;
  }
}

void sub_2C278(id a1, MessageDeliveryController *a2, NSArray *a3, BOOL a4, unsigned int a5, BOOL a6)
{
  v6 = a4;
  v8 = a2;
  v9 = a3;
  v10 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v12 = "Finished Reflecting nickname updates";
        v13 = &v15;
LABEL_8:
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v10)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 0;
      v12 = "Failed Reflecting nickname updates";
      v13 = &v14;
      goto LABEL_8;
    }

LABEL_9:
  }
}

void sub_2C788(id a1, MessageDeliveryController *a2, NSArray *a3, BOOL a4, unsigned int a5, BOOL a6)
{
  v6 = a4;
  v8 = a2;
  v9 = a3;
  v10 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v12 = "Finished Reflecting sending Delivery receipt for guid:";
        v13 = &v15;
LABEL_8:
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v10)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 0;
      v12 = "Failed Reflecting sending Delivery receipt for guid:";
      v13 = &v14;
      goto LABEL_8;
    }

LABEL_9:
  }
}

void sub_2DD48(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _updateOrRemoveGroupPhotoForChat:*(a1 + 40) sender:*(a1 + 48) completedTransfer:*(a1 + 56) isHidden:*(a1 + 72)];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 56);
        v8 = *(a1 + 40);
        *buf = 138412546;
        v17 = v7;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, " => stored attachment %@ and added to chat properties %@", buf, 0x16u);
      }
    }

    goto LABEL_18;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 64);
      *buf = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, " => failed storing safe transfer (%@) with error: %@", buf, 0x16u);
    }
  }

  v11 = [v5 domain];
  if (![v11 isEqualToString:NSCocoaErrorDomain])
  {

    goto LABEL_17;
  }

  v12 = [v5 code] == &dword_4;

  if (!v12)
  {
LABEL_17:
    v14 = +[NSString stringGUID];
    v15 = [NSString stringWithFormat:@"%@-GroupPhoto", &off_1192C0];
    [IMBlastdoor sendBlastDoorError:v5 guid:v14 messageTypeString:v15 senderURI:*(a1 + 48) senderToken:0 messageContext:0 payloadAttachmentURL:0];

    goto LABEL_18;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, " Dropping error on the floor, sometimes we get through here and the attachment download has magically disappeared from tmp", buf, 2u);
    }
  }

LABEL_18:
}

void sub_2EF8C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a2;
  v15 = a3;
  v16 = a6;
  v17 = a8;
  v18 = a9;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "All done getting new group photo.", v20, 2u);
    }
  }

  [*(a1 + 32) doneRetrievingAttachmentsForGroupPhotoForChat:*(a1 + 40) fileTransferError:v16 success:a4 transferGuid:*(a1 + 48) sender:*(a1 + 56) isHidden:*(a1 + 64)];
}

void sub_2F94C(id a1, MessageDeliveryController *a2, NSArray *a3, BOOL a4, unsigned int a5, BOOL a6)
{
  v7 = a4;
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished sending delete command to all devices", v14, 2u);
      }
    }
  }

  else if (v11)
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14[0] = 67109120;
      v14[1] = a5;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Failed Reflecting sending delete command. errorType: %d", v14, 8u);
    }
  }
}

void sub_2FFEC(id a1, MessageDeliveryController *a2, NSArray *a3, BOOL a4, unsigned int a5, BOOL a6)
{
  v6 = a4;
  v8 = a2;
  v9 = a3;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (v6)
      {
        v11 = @"YES";
      }

      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Recently Deleted | Sending Recover command to all devices with success: %@", &v12, 0xCu);
    }
  }
}

void sub_30440(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = IMOSLoggingEnabled();
  if (a5)
  {
    if (v14)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        v18 = *(a1 + 48);
        v19 = *(a1 + 56);
        v25 = 138413314;
        v26 = v16;
        v27 = 2112;
        v28 = v12;
        v29 = 2112;
        *v30 = v17;
        *&v30[8] = 2112;
        *&v30[10] = v18;
        *&v30[18] = 1024;
        *&v30[20] = v19;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Successfully updated name: %@   forChat: %@   (GUID: %@  Identifier: %@  Style: %c)", &v25, 0x30u);
      }
    }
  }

  else if (v14)
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      v23 = *(a1 + 48);
      v24 = *(a1 + 56);
      v25 = 138413570;
      v26 = v21;
      v27 = 2112;
      v28 = v12;
      v29 = 1024;
      *v30 = a6;
      *&v30[4] = 2112;
      *&v30[6] = v22;
      *&v30[14] = 2112;
      *&v30[16] = v23;
      v31 = 1024;
      v32 = v24;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "*** Failed to update name: %@   forChat: %@   Error: %d (GUID: %@  Identifier: %@  Style: %c)", &v25, 0x36u);
    }
  }
}

void sub_30928(id a1, MessageDeliveryController *a2, NSArray *a3, BOOL a4, unsigned int a5, BOOL a6)
{
  v7 = a4;
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Successfully sent close session message to business", v14, 2u);
      }
    }
  }

  else if (v11)
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14[0] = 67109120;
      v14[1] = a5;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Failed to send message for closing session with business. Error: %d", v14, 8u);
    }
  }
}

void sub_31990(id a1, MessageDeliveryController *a2, NSArray *a3, BOOL a4, unsigned int a5, BOOL a6)
{
  v7 = a4;
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished reflecting chat properties across devices", v14, 2u);
      }
    }
  }

  else if (v11)
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14[0] = 67109120;
      v14[1] = a5;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Failed reflecting chat properties across devices: %d", v14, 8u);
    }
  }
}

void sub_31AE0(id a1, MessageDeliveryController *a2, NSArray *a3, BOOL a4, unsigned int a5, BOOL a6)
{
  v7 = a4;
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Finished reflecting global read receipt value across devices", v14, 2u);
      }
    }
  }

  else if (v11)
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14[0] = 67109120;
      v14[1] = a5;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Failed reflecting global read receipt value across devices: %d", v14, 8u);
    }
  }
}

void sub_322E0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x322A8);
  }

  _Unwind_Resume(a1);
}

void sub_32B6C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (!v3)
    {
      return;
    }

    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Already have a timer, waiting for it to fire", &v14, 2u);
    }

    goto LABEL_13;
  }

  if (v3)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Sceduling Failure Retry reset timer", &v14, 2u);
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [IMTimer alloc];
  v10 = *(a1 + 32);
  v9 = a1 + 32;
  v11 = [v8 initWithTimeInterval:@"com.apple.identityservicesd.resetFailureRetries" name:0 shouldWake:v10 target:"_resetFailureRetries" selector:0 userInfo:v7 + 604800.0 - v7];
  v12 = *(*v9 + 104);
  *(*v9 + 104) = v11;

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:v7 + 604800.0];
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Message Failure Retry Count Will Reset on date %@", &v14, 0xCu);
    }

LABEL_13:
  }
}

id sub_33B14(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 callerURIForIDSAccount:a2];
  v8 = [*(a1 + 32) callerURIForIDSAccount:v6];

  v9 = [v7 compare:v8];
  return v9;
}

void sub_342E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2);
  v4[2]();
}

void sub_348BC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (a3)
      {
        v8 = @"YES";
      }

      v14 = 138412546;
      v15 = v8;
      v16 = 1024;
      v17 = a4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Scheduled Message | Done sending FTMessage for refresh request. success %@ error %d", &v14, 0x12u);
    }
  }

  v9 = *(a1 + 32);
  v10 = +[NSDate date];
  [v9 setRefreshDate:v10];

  v11 = +[IMDAttachmentStore sharedInstance];
  v12 = *(a1 + 32);
  v13 = [v12 messageGUID];
  [v11 storeAttachment:v12 associateWithMessageWithGUID:v13];
}

void sub_35088(id a1, MessageDeliveryController *a2, NSArray *a3, BOOL a4, unsigned int a5, BOOL a6)
{
  v6 = a4;
  v8 = a2;
  v9 = a3;
  v10 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v12 = "Completed reflecting priority message to peer devices.";
        v13 = &v15;
LABEL_8:
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v10)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 0;
      v12 = "Failed to reflect priority message to peer devices.";
      v13 = &v14;
      goto LABEL_8;
    }

LABEL_9:
  }
}

void sub_35498(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_36468(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {

    objc_end_catch();
    JUMPOUT(0x35AD0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3662C()
{
  if (IMGetDomainBoolForKeyWithDefaultValue())
  {
    return 1;
  }

  return IMGetDomainBoolForKeyWithDefaultValue();
}

id sub_3668C(uint64_t a1, void *a2)
{
  v3 = [a2 _stripFZIDPrefix];
  v4 = [*(a1 + 32) _stripFZIDPrefix];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

uint64_t sub_36714(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_3672C(uint64_t a1, void *a2, void *a3, char a4, int a5, void *a6, uint64_t a7, void *a8, void *a9)
{
  v16 = a2;
  v17 = a3;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  if ((a4 & 1) != 0 || !IMSharedHelperIsUnderAutomation())
  {
    v56 = v19;
    v22 = v18;
    v58 = v17;
    [*(a1 + 32) _updateTransfersForAttributionInfoArray:*(a1 + 56) message:v16];
    v23 = [v16 messageSummaryInfo];
    Mutable = [v23 mutableCopy];

    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v25 = [NSNumber numberWithBool:1, Mutable];
    [(__CFDictionary *)Mutable setObject:v25 forKey:IMMessageSummaryInfoUpdatedDateWithServerTime];

    [v16 setMessageSummaryInfo:Mutable];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_36D0C;
    v62[3] = &unk_1129F0;
    v26 = v16;
    v63 = v26;
    v27 = v20;
    v91 = *(a1 + 256);
    v28 = *(a1 + 32);
    v29 = *(a1 + 40);
    v85 = v27;
    v64 = v28;
    v65 = v29;
    v66 = *(a1 + 48);
    v67 = *(a1 + 64);
    v68 = *(a1 + 72);
    v30 = *(a1 + 80);
    v31 = *(a1 + 232);
    v69 = v30;
    v86 = v31;
    v70 = *(a1 + 88);
    v92 = *(a1 + 258);
    v71 = *(a1 + 96);
    v72 = *(a1 + 104);
    v73 = *(a1 + 112);
    v74 = *(a1 + 120);
    v93 = *(a1 + 259);
    v75 = *(a1 + 128);
    v94 = *(a1 + 261);
    v95 = a4;
    v90 = a5;
    v57 = v16;
    v32 = v22;
    v76 = v22;
    v87 = a7;
    v77 = *(a1 + 136);
    v78 = v56;
    v33 = *(a1 + 144);
    v96 = *(a1 + 262);
    v88 = *(a1 + 240);
    v34 = *(a1 + 152);
    v89 = *(a1 + 248);
    v97 = *(a1 + 263);
    v35 = *(a1 + 160);
    v98 = *(a1 + 264);
    v36 = *(a1 + 168);
    *&v37 = v35;
    *(&v37 + 1) = v36;
    *&v38 = v33;
    *(&v38 + 1) = v34;
    v79 = v38;
    v80 = v37;
    v39 = *(a1 + 176);
    v40 = *(a1 + 184);
    v41 = *(a1 + 192);
    v42 = *(a1 + 200);
    *&v43 = v41;
    *(&v43 + 1) = v42;
    *&v44 = v39;
    *(&v44 + 1) = v40;
    v81 = v44;
    v82 = v43;
    v83 = *(a1 + 208);
    v84 = *(a1 + 216);
    v99 = *(a1 + 266);
    v45 = objc_retainBlock(v62);
    v46 = [*(a1 + 32) attachmentController];
    v47 = *(a1 + 224);
    v48 = [v26 guid];
    v49 = [v26 balloonBundleID];
    v52 = a1 + 120;
    v51 = *(a1 + 120);
    v50 = *(v52 + 8);
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_3A874;
    v59[3] = &unk_112A18;
    v61 = v45;
    v60 = v26;
    v53 = v45;
    v54 = v47;
    v18 = v32;
    v16 = v57;
    [v46 processMessageAttachmentDictionary:v54 forMessageGUID:v48 balloonBundleID:v49 fromIdentifier:v50 senderToken:v51 withCompletionBlock:v59];

    v19 = v56;
    v17 = v58;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "***************** Attachment download failed. Not persisting message as we are under automation ***************", buf, 2u);
      }
    }

    if (v20)
    {
      if (*(a1 + 256) == 1)
      {
        [*(a1 + 32) noteItemProcessed:*(a1 + 257) batchContext:*(a1 + 40) usingService:*(a1 + 48)];
      }

      v20[2](v20);
    }
  }
}

void sub_36D0C(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v213 = a3;
  v225 = a1;
  v217 = v7;
  if (a4)
  {
    if (!v7)
    {
      v217 = 0;
      goto LABEL_26;
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, " Setting message payload downloaded from MMCS", buf, 2u);
      }
    }

    [*(a1 + 64) setPayloadData:v7];
    if (![v213 count])
    {
LABEL_26:
      v19 = [*(a1 + 80) count];
      v220 = v19 > 2;
      v223 = [*(*(*(a1 + 248) + 8) + 40) chatIdentifier];
      v278 = [*(*(*(a1 + 248) + 8) + 40) style];
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = *(*(*(a1 + 248) + 8) + 40);
          *buf = 138412802;
          *&buf[4] = v223;
          *&buf[12] = 1024;
          *&buf[14] = v278;
          *&buf[18] = 2112;
          *&buf[20] = v21;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Found chat with chatIdentifier (%@) style (%c): %@", buf, 0x1Cu);
        }
      }

      v22 = *(*(*(a1 + 248) + 8) + 40);
      if (v22)
      {
        v23 = [v22 service];
        v24 = [*(a1 + 40) account];
        v25 = [v24 service];
        v216 = v23 != v25;

        if (v216 && IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Service of found chat not equal, lets register", buf, 2u);
          }
        }

        _UpdateLastAddressedHandle(*(a1 + 64), *(a1 + 88), *(*(*(a1 + 248) + 8) + 40));
        v220 = v278 != 45;
        v27 = a1;
        if (*(a1 + 286) == 1)
        {
          v28 = [*(*(*(a1 + 248) + 8) + 40) isBlackholed];
          v27 = a1;
          if (v28)
          {
            if (IMOSLoggingEnabled())
            {
              v29 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = [*(*(*(a1 + 248) + 8) + 40) guid];
                *buf = 138412290;
                *&buf[4] = v30;
                _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "Unblackholing chat %@ based on reflection", buf, 0xCu);
              }
            }

            [*(*(*(a1 + 248) + 8) + 40) updateIsBlackholed:0];
            v27 = a1;
          }
        }

        if (*(v27 + 96))
        {
          v31 = [*(v27 + 40) _convergesDisplayNames];
          v27 = a1;
          if (v31)
          {
            [*(a1 + 40) didReceiveDisplayNameChange:*(a1 + 96) fromID:*(a1 + 104) toIdentifier:*(a1 + 88) forChat:v223 style:v278 account:*(a1 + 112)];
            v27 = a1;
          }
        }

        if ([*(v27 + 40) isReplicating])
        {
          v32 = +[NSDate now];
          [*(*(*(a1 + 248) + 8) + 40) setLastReplicationSinceLoadDate:v32];
        }

        v210 = 1;
      }

      else
      {
        if (v19 <= 2)
        {
          v34 = *(a1 + 104);
          v35 = 45;
          v33 = v223;
        }

        else
        {
          v33 = [*(a1 + 40) chatRegistry];
          v34 = [v33 generateUnusedChatIdentifierForGroupChatWithAccount:*(a1 + 112)];

          v35 = 43;
        }

        v278 = v35;
        if (IMOSLoggingEnabled())
        {
          v36 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v34;
            *&buf[12] = 1024;
            *&buf[14] = v278;
            _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "No chat was found, generating new chatIdentifier: %@ style %c", buf, 0x12u);
          }
        }

        v37 = *(a1 + 40);
        v277 = v34;
        [v37 canonicalizeChatIdentifier:&v277 style:&v278];
        v223 = v277;

        v38 = [*(a1 + 64) isTypingMessage];
        v39 = [*(a1 + 64) isTypingMessage];
        v216 = v38 ^ 1;
        v210 = v39 ^ 1;
        if (IMOSLoggingEnabled())
        {
          v40 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = @"YES";
            *buf = 138413058;
            if (v38)
            {
              v42 = @"NO";
            }

            else
            {
              v42 = @"YES";
            }

            *&buf[4] = v223;
            *&buf[12] = 1024;
            if (v39)
            {
              v41 = @"NO";
            }

            *&buf[14] = v278;
            *&buf[18] = 2112;
            *&buf[20] = v42;
            *&buf[28] = 2112;
            *&buf[30] = v41;
            _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "Canonicalized chatIdentifier: %@ style: %c shouldRegister: %@ shouldNotify: %@", buf, 0x26u);
          }
        }
      }

      v209 = [*(a1 + 88) _stripFZIDPrefix];
      if (v220)
      {
        v208 = 0;
      }

      else
      {
        v208 = 0;
        v43 = a1;
        if (*(a1 + 286) != 1 || !v209)
        {
LABEL_71:
          if (*(v43 + 286) == 1)
          {
            v44 = v43 + 40;
            [*(v43 + 40) addItemToRecentsIfApplicable:*(v43 + 32)];
            v275 = 0u;
            v276 = 0u;
            v273 = 0u;
            v274 = 0u;
            v45 = [*(*v44 + 96) lastObject];
            v46 = [v45 service];
            v47 = [v46 devices];

            v48 = [v47 countByEnumeratingWithState:&v273 objects:v286 count:16];
            if (v48)
            {
              v49 = *v274;
LABEL_74:
              v50 = 0;
              while (1)
              {
                if (*v274 != v49)
                {
                  objc_enumerationMutation(v47);
                }

                v51 = *(*(&v273 + 1) + 8 * v50);
                v52 = [v51 pushToken];
                v53 = [v52 isEqualToData:*(v225 + 120)];

                if (v53)
                {
                  break;
                }

                if (v48 == ++v50)
                {
                  v48 = [v47 countByEnumeratingWithState:&v273 objects:v286 count:16];
                  if (v48)
                  {
                    goto LABEL_74;
                  }

                  goto LABEL_80;
                }
              }

              v54 = [v51 uniqueID];
              v55 = v54 == 0;

              v43 = v225;
              if (!v55)
              {
                goto LABEL_84;
              }
            }

            else
            {
LABEL_80:

              v43 = v225;
            }

            if (!v220 && (*(v43 + 286) & 1) != 0)
            {
              [*(v43 + 32) setFlags:{objc_msgSend(*(v43 + 32), "flags") | 0x1000}];
              v43 = v225;
            }
          }

LABEL_84:
          v212 = *(v43 + 287);
          if (*(v43 + 286))
          {
            v207 = 0;
            goto LABEL_146;
          }

          if ([*(v43 + 32) isTypingMessage])
          {
            v207 = 0;
LABEL_145:
            v43 = v225;
LABEL_146:
            if ((*(v43 + 290) & 1) == 0)
            {
              v97 = *(v225 + 280);
              if (v97)
              {
                v98 = v97;
              }

              else
              {
                v98 = 37;
              }

              [*(v225 + 32) setErrorCode:v98];
              if (IMOSLoggingEnabled())
              {
                v99 = OSLogHandleForIMEventCategory();
                if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
                {
                  v100 = *(v225 + 280);
                  v101 = *(v225 + 136);
                  v102 = *(v225 + 256);
                  *buf = 67109634;
                  *&buf[4] = v100;
                  *&buf[8] = 2112;
                  *&buf[10] = v101;
                  *&buf[18] = 2048;
                  *&buf[20] = v102;
                  _os_log_impl(&dword_0, v99, OS_LOG_TYPE_INFO, "** Had attachment download failure: %d, fileTransferError: %@, attachment size %lu", buf, 0x1Cu);
                }
              }

              v103 = v225;
              v104 = *(v225 + 136);
              if (v104)
              {
                v105 = [v104 domain];
                v106 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Error domain %@, error code %ld", v105, [*(v225 + 136) code]);

                v103 = v225;
              }

              else
              {
                v106 = @" ";
              }

              v107 = *(v103 + 256);
              v108 = [*(v103 + 40) deliveryController];
              v214 = *(v225 + 120);
              v206 = *(v225 + 128);
              v218 = *(v225 + 88);
              v109 = [*(v225 + 112) idsAccount];
              v110 = 1000 * (v107 / 0x3E8);
              v111 = *(v225 + 72);
              v112 = [NSNumber numberWithUnsignedInteger:v110];
              v113 = +[NSDate date];
              [v113 timeIntervalSinceDate:*(v225 + 144)];
              v115 = v114;
              v116 = *(v225 + 152);
              v266[0] = _NSConcreteStackBlock;
              v266[1] = 3221225472;
              v266[2] = sub_39420;
              v266[3] = &unk_112250;
              v268 = *(v225 + 280);
              v267 = *(v225 + 120);
              [v108 sendMessageErrorWithInfo:400 toToken:v214 toID:v206 toGroup:0 fromID:v218 fromAccount:v109 forMessageID:v115 additionalInfo:v111 fileSize:v106 failureTimeSeconds:v112 failReasonMessage:v116 completionBlock:v266];
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            *&buf[24] = sub_36714;
            *&buf[32] = sub_36724;
            v285 = objc_alloc_init(NSMutableArray);
            if (v220)
            {
              v117 = v225;
              [MessageGroupController addMembers:*(v225 + 160) toHandleInfo:*(*&buf[8] + 40)];
            }

            else
            {
              v118 = [NSNumber numberWithInt:2];
              v119 = [NSDictionary dictionaryWithObjectsAndKeys:v118, kFZChatParticipantStatusKey, v223, kFZPersonID, 0];

              [*(*&buf[8] + 40) addObject:v119];
              v117 = v225;
            }

            v120 = [*(v117 + 32) balloonBundleID];
            v121 = [v120 containsString:IMBalloonPluginIdentifierRichLinks];

            v122 = v225;
            if (v121)
            {
              v123 = [*(v225 + 32) richLinkURLs];
              v124 = [v123 lastObject];

              if (v124)
              {
                goto LABEL_164;
              }

              v125 = [*(v225 + 32) body];
              v126 = [v125 string];
              v124 = [NSURL URLWithString:v126];

              if (v124)
              {
LABEL_164:
                v127 = +[IMSharedWithYouManager sharedManager];
                v265 = 0;
                v264 = 0;
                [v127 appNameAndBundleIDFoURL:v124 outAppName:&v265 outBundleID:&v264];
                v128 = v265;
                v129 = v264;

                if ([v128 length])
                {
                  [*(v225 + 32) setSwyAppName:v128];
                }

                if ([v129 length])
                {
                  [*(v225 + 32) setSwyBundleID:v129];
                }

LABEL_169:
                v122 = v225;
                goto LABEL_170;
              }

              v122 = v225;
              if (IMOSLoggingEnabled())
              {
                v159 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
                {
                  v160 = *(v225 + 72);
                  *v280 = 138412290;
                  v281 = v160;
                  _os_log_impl(&dword_0, v159, OS_LOG_TYPE_DEBUG, "unable to extract URL for message identified as RichLink: %@", v280, 0xCu);
                }

                goto LABEL_169;
              }
            }

LABEL_170:
            v130 = [*(v122 + 32) balloonBundleID];
            v131 = IMBalloonExtensionIDWithSuffix();
            v132 = [v130 isEqualToString:v131];

            v133 = v225;
            if (*(v225 + 291) == 1)
            {
              v134 = *(v225 + 264) == 0;
              if (!v132)
              {
                goto LABEL_184;
              }
            }

            else
            {
              v135 = *(*(*(v225 + 248) + 8) + 40);
              if (v135 && ![v135 isFiltered])
              {
                goto LABEL_184;
              }

              v136 = +[IMDChatRegistry sharedInstance];
              v137 = [*(v225 + 128) _stripFZIDPrefix];
              if ([v136 hasKnownSenderChatWithChatIdentifier:v137])
              {
                v134 = 1;
              }

              else
              {
                v138 = +[IMContactStore sharedInstance];
                v139 = [*(v225 + 128) _stripFZIDPrefix];
                v140 = [v138 fetchCNContactForHandleWithID:v139];
                v134 = [IMContactStore isCNContactAKnownContact:v140];
              }

              v133 = v225;
              if (!v132)
              {
                goto LABEL_184;
              }
            }

            if ((v134 & 1) == 0)
            {
              if (!IMOSLoggingEnabled())
              {
                goto LABEL_186;
              }

              v141 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
              {
                v142 = [*(v225 + 32) guid];
                *v280 = 138412290;
                v281 = v142;
                _os_log_impl(&dword_0, v141, OS_LOG_TYPE_INFO, "Not notifying coreroutined about incoming CheckIn(messageGUID %@), as it's not from a known sender.", v280, 0xCu);
              }

LABEL_185:
              v133 = v225;
LABEL_186:
              v219 = [NSMutableArray arrayWithCapacity:2];
              v215 = [*(v133 + 40) storeBreadcrumbAndSetConsumedPayloadsForNewMessageItemIfNecessary:*(v133 + 64) inChatWithIdentifier:v223];
              if (v215)
              {
                [v219 addObject:v215];
              }

              if ([*(v133 + 64) isBreadcrumb] && IMOSLoggingEnabled())
              {
                v144 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v144, OS_LOG_TYPE_INFO))
                {
                  v145 = *(v225 + 64);
                  v146 = [v145 consumedSessionPayloads];
                  v147 = [v146 count];
                  *v280 = 138412546;
                  v281 = v145;
                  v282 = 2048;
                  v283 = v147;
                  _os_log_impl(&dword_0, v144, OS_LOG_TYPE_INFO, "Receiving breadcrumb %@ with payload history: %tu items.", v280, 0x16u);
                }

                v133 = v225;
              }

              if (*(v133 + 286) == 1)
              {
                if (v216)
                {
                  v148 = objc_alloc_init(IMDChatStatusChangeContext);
                  [v148 setDisplayName:*(v133 + 96)];
                  [v148 setGroupID:*(v133 + 168)];
                  [v148 setHandleInfo:*(*&buf[8] + 40)];
                  [v148 setAccount:*(v133 + 112)];
                  [v148 setIsBlackholed:v212];
                  [v148 setIsMessageSentFromMe:1];
                  [*(v133 + 40) didUpdateChatStatus:2 chat:v223 style:v278 context:v148];
                  v149 = [*(v133 + 40) chatForChatIdentifier:v223 style:v278 updatingAccount:1];
                  _UpdateLastAddressedHandle(*(v133 + 64), *(v133 + 88), v149);
                }

                else
                {
                  v148 = [*(*(*(v133 + 248) + 8) + 40) chatIdentifier];
                  sub_395A4(v148, [*(*(*(v133 + 248) + 8) + 40) style]);
                }

                if (!v210)
                {
                  goto LABEL_241;
                }

                v156 = [*(v225 + 40) chatForChatIdentifier:v223 style:v278];
                if (*(v225 + 284))
                {
                  v157 = 1;
                }

                else
                {
                  v157 = *(v225 + 285);
                }

                [*(v225 + 40) didSendMessage:*(v225 + 32) forChat:v223 style:v278 account:*(v225 + 112) forceDate:0 itemIsComingFromStorage:v157 & 1];
LABEL_240:

LABEL_241:
                if (([*(v225 + 64) isTypingMessage] & 1) == 0)
                {
                  v172 = *(v225 + 176);
                  if (v172)
                  {
                    [*(v225 + 40) _handleNicknameReceived:v172 fromIdentifier:*(v225 + 128) withMessageItem:*(v225 + 64) isSnapTrustedUser:*(v225 + 293)];
                  }
                }

                v232[0] = _NSConcreteStackBlock;
                v232[1] = 3221225472;
                v232[2] = sub_39758;
                v232[3] = &unk_1129C8;
                v233 = *(v225 + 72);
                v253 = *(v225 + 294);
                v254 = v210;
                v255 = v220;
                v256 = v208;
                v221 = *(v225 + 32);
                v173 = v221.i64[0];
                v234 = vextq_s8(v221, v221, 8uLL);
                v222 = v223;
                v235 = v222;
                v257 = v278;
                v174 = *(v225 + 112);
                v175 = *(v225 + 96);
                v176 = *(v225 + 104);
                v177 = *(v225 + 88);
                *&v178 = v176;
                *(&v178 + 1) = v177;
                *&v179 = v174;
                *(&v179 + 1) = v175;
                v236 = v179;
                v237 = v178;
                v180 = *(v225 + 64);
                v258 = *(v225 + 286);
                v181 = *(v225 + 248);
                v238 = v180;
                v251 = v181;
                v239 = *(v225 + 184);
                v240 = *(v225 + 128);
                v241 = *(v225 + 80);
                v252 = buf;
                v242 = *(v225 + 176);
                v243 = *(v225 + 192);
                v211 = v209;
                v244 = v211;
                v182 = *(v225 + 200);
                v183 = *(v225 + 208);
                v184 = *(v225 + 216);
                v259 = v216;
                v260 = v212;
                v261 = *(v225 + 289);
                v185 = *(v225 + 224);
                *&v186 = v184;
                *(&v186 + 1) = v185;
                *&v187 = v182;
                *(&v187 + 1) = v183;
                v245 = v187;
                v246 = v186;
                v262 = v207;
                v247 = *(v225 + 56);
                v248 = *(v225 + 232);
                v263 = *(v225 + 284);
                v250 = *(v225 + 240);
                v249 = *(v225 + 48);
                v224 = objc_retainBlock(v232);
                v188 = [v219 count];
                v189 = v225;
                if (v188)
                {
                  if (*(v225 + 295) == 1)
                  {
                    v230 = 0u;
                    v231 = 0u;
                    v228 = 0u;
                    v229 = 0u;
                    v190 = v219;
                    v191 = [v190 countByEnumeratingWithState:&v228 objects:v279 count:16];
                    if (v191)
                    {
                      v192 = *v229;
                      v193 = kIMMessageItemHideLockScreenNotificationsKey;
                      do
                      {
                        for (i = 0; i != v191; i = i + 1)
                        {
                          if (*v229 != v192)
                          {
                            objc_enumerationMutation(v190);
                          }

                          v195 = *(*(&v228 + 1) + 8 * i);
                          if (([*(v225 + 32) isTypingMessage] & 1) == 0)
                          {
                            v196 = [v195 messageSummaryInfo];
                            v197 = [v196 mutableCopy];

                            if (!v197)
                            {
                              v197 = objc_alloc_init(NSMutableDictionary);
                            }

                            [v197 setValue:&__kCFBooleanTrue forKey:v193];
                            v198 = [v197 copy];
                            [v195 setMessageSummaryInfo:v198];
                          }
                        }

                        v191 = [v190 countByEnumeratingWithState:&v228 objects:v279 count:16];
                      }

                      while (v191);
                    }

                    v189 = v225;
                  }

                  v199 = v189[5];
                  v200 = v278;
                  v201 = v189[14];
                  v202 = v189[23];
                  v226[0] = _NSConcreteStackBlock;
                  v226[1] = 3221225472;
                  v226[2] = sub_3A864;
                  v226[3] = &unk_1122A0;
                  v227 = v224;
                  [v199 didReceiveMessages:v219 forChat:v222 style:v200 account:v201 fromIDSID:v202 completion:v226];
                }

                else
                {
                  (v224[2])(v224, 1);
                }

                _Block_object_dispose(buf, 8);
                goto LABEL_261;
              }

              v150 = *(*(*(v133 + 248) + 8) + 40);
              v151 = v150;
              if (!v216)
              {
                v156 = v150;
                goto LABEL_229;
              }

              v152 = *(v133 + 40);
              v153 = *(v133 + 96);
              v154 = *(v133 + 168);
              v155 = *(*&buf[8] + 40);
              if (*(v133 + 291) == 1)
              {
                LOBYTE(v205) = v212;
                [v152 didJoinChat:v223 style:v278 displayName:v153 groupID:v154 handleInfo:v155 category:*(v133 + 264) account:*(v133 + 112) isBlackholed:v205 spamDetectionSource:*(v133 + 272)];
              }

              else
              {
                LOBYTE(v204) = v212;
                [v152 didJoinChat:v223 style:v278 displayName:v153 groupID:v154 handleInfo:v155 account:*(v133 + 112) isBlackholed:v204];
              }

              if (v220)
              {
                if ([*(v133 + 160) count])
                {
                  v158 = [[NSMutableSet alloc] initWithArray:*(v133 + 160)];

                  v133 = v225;
                }

                else
                {
                  v158 = 0;
                }

                if (v209)
                {
                  [v158 removeObject:v209];
                }

                v161 = +[IMDChatRegistry sharedInstance];
                v162 = [v158 allObjects];
                v156 = [v161 existingChatForIDs:v162 account:*(v133 + 112) displayName:*(v133 + 96) groupID:*(v133 + 168) style:43];

                if (![*(v225 + 168) length])
                {
                  goto LABEL_228;
                }

                if (IMOSLoggingEnabled())
                {
                  v163 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
                  {
                    v164 = *(v225 + 168);
                    *v280 = 138412546;
                    v281 = v164;
                    v282 = 2112;
                    v283 = v156;
                    _os_log_impl(&dword_0, v163, OS_LOG_TYPE_INFO, "     ** Setting group_id to %@ on chat %@, as we just got invited to it!", v280, 0x16u);
                  }
                }

                v165 = +[IMFeatureFlags sharedFeatureFlags];
                v166 = [v165 isMissingMessagesEnabled];

                v167 = *(v225 + 168);
                if (v166)
                {
                  [v156 assignIdentifier:v167 forDomain:IMChatLookupDomainIMessageGroupID isHistoricalIdentifier:0];
                }

                else
                {
                  [v156 setGroupID:v167];
                }

                v151 = +[IMDChatStore sharedInstance];
                [v151 storeChat:v156];
              }

              else
              {
                v158 = +[IMDChatRegistry sharedInstance];
                v156 = [v158 existingChatForID:*(v133 + 104) account:*(v133 + 112)];
              }

LABEL_228:
              v133 = v225;
LABEL_229:
              if (*(v133 + 291) == 1 && *(v133 + 292) == 1)
              {
                v168 = +[IMDSpamCheckRequeryTracker sharedTracker];
                v169 = [*(v133 + 64) guid];
                [v168 startTrackingMessageGUID:v169 chat:v156];

                v133 = v225;
              }

              v170 = (*(v133 + 287) & 1) == 0 && *(v133 + 264) != 2;
              if (*(v133 + 291) == 1 && !v170)
              {
                v171 = [*(v133 + 32) guid];
                [v156 setSpamDetectedMessage:v171];

                v133 = v225;
              }

              [*(v133 + 40) _fixParticipantsForChat:v156];
              _UpdateLastAddressedHandle(*(v133 + 64), *(v133 + 88), v156);
              if (v210)
              {
                [v219 addObject:*(v133 + 32)];
              }

              goto LABEL_240;
            }

LABEL_184:
            v143 = +[IMSafetyMonitorCoordinator sharedCoordinator];
            [v143 informOfIncomingMessageWithMessage:*(v133 + 32)];

            goto LABEL_185;
          }

          if ([*(*(*(v225 + 248) + 8) + 40) isOscarChat])
          {
            if (IMOSLoggingEnabled())
            {
              v56 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
              {
                v57 = *(v225 + 72);
                *buf = 138412290;
                *&buf[4] = v57;
                _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "Message %@ is a junk message.", buf, 0xCu);
              }

LABEL_92:
            }
          }

          else
          {
            if (*(*(*(v225 + 248) + 8) + 40) || (*(v225 + 288) & 1) != 0 || (+[IMDAccountController sharedAccountController](IMDAccountController, "sharedAccountController"), v58 = objc_claimAutoreleasedReturnValue(), v59 = [v58 receiverIsCandidateForJunk:*(v225 + 88) forAccount:*(v225 + 112)], v58, !v59) || (+[IMSpamFilterHelper isKnownContact:](IMSpamFilterHelper, "isKnownContact:", *(v225 + 128)) & 1) != 0)
            {
              v207 = 0;
LABEL_99:
              v60 = +[IMDAccountController sharedAccountController];
              v61 = [v60 activeAccountsAreEligibleForHawking];

              if (![IMSpamFilterHelper isBlackholeEnabledForEligibleAccounts:v61])
              {
LABEL_142:
                if (+[IMSpamFilterHelper isInternationalSpamFilteringEnabled](IMSpamFilterHelper, "isInternationalSpamFilteringEnabled") && [*(*(*(v225 + 248) + 8) + 40) receivedBlackholeError])
                {
                  [*(*(*(v225 + 248) + 8) + 40) updateReceivedBlackholeError:0];
                  v95 = +[IMDChatStore sharedInstance];
                  v96 = *(*(*(v225 + 248) + 8) + 40);
                  v269[0] = _NSConcreteStackBlock;
                  v269[1] = 3221225472;
                  v269[2] = sub_392BC;
                  v269[3] = &unk_112228;
                  v269[4] = *(v225 + 40);
                  v270 = *(v225 + 112);
                  [v95 remapMessageError:43 toError:0 forChat:v96 completion:v269];
                }

                goto LABEL_145;
              }

              v62 = +[IMMetricsCollector sharedInstance];
              v63 = v62;
              if (v220)
              {
                v64 = 12;
              }

              else
              {
                v64 = 11;
              }

              [v62 trackSpamEvent:v64];

              v65 = [*(*(*(v225 + 248) + 8) + 40) lastMessage];

              v66 = *(*(*(v225 + 248) + 8) + 40);
              if (v66 != 0 && v65 != 0)
              {
                v212 = [v66 isBlackholed];
                if (v212)
                {
                  v74 = +[IMMetricsCollector sharedInstance];
                  v75 = v74;
                  if (v220)
                  {
                    v76 = 14;
                  }

                  else
                  {
                    v76 = 13;
                  }

                  [v74 trackSpamEvent:v76];
                }

                if (IMOSLoggingEnabled())
                {
                  v77 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
                  {
                    v78 = [*(*(*(v225 + 248) + 8) + 40) chatIdentifier];
                    v79 = v78;
                    v80 = @"NO";
                    if (v212)
                    {
                      v80 = @"YES";
                    }

                    *buf = 138412546;
                    *&buf[4] = v78;
                    *&buf[12] = 2112;
                    *&buf[14] = v80;
                    _os_log_impl(&dword_0, v77, OS_LOG_TYPE_INFO, "Found existing chat (%@) with blackhole status: %@", buf, 0x16u);
                  }
                }

                goto LABEL_131;
              }

              v67 = *(v225 + 40);
              v68 = *(v225 + 128);
              v69 = *(v225 + 88);
              if (v220)
              {
                if (![v67 _shouldBlackholeGroupChatFromSender:v68 toRecipient:v69 withOtherParticipants:*(v225 + 80) forAccount:*(v225 + 112)])
                {
                  goto LABEL_127;
                }

                if (!IMOSLoggingEnabled())
                {
                  goto LABEL_126;
                }

                v70 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
                {
                  v71 = *(v225 + 72);
                  v72 = *(v225 + 128);
                  v73 = *(v225 + 88);
                  *buf = 138412802;
                  *&buf[4] = v71;
                  *&buf[12] = 2112;
                  *&buf[14] = v72;
                  *&buf[22] = 2112;
                  *&buf[24] = v73;
                  _os_log_impl(&dword_0, v70, OS_LOG_TYPE_INFO, "Should blackhole group chat (%@) from (%@) to (%@)", buf, 0x20u);
                }
              }

              else
              {
                if (![v67 _shouldBlackholeChatFromSender:v68 toRecipient:v69 forAccount:*(v225 + 112)])
                {
                  goto LABEL_127;
                }

                if (!IMOSLoggingEnabled())
                {
LABEL_126:
                  v212 = 1;
LABEL_127:
                  v84 = v225;
                  v85 = *(*(*(v225 + 248) + 8) + 40);
                  if (!v85 || !v212 || v65)
                  {
                    goto LABEL_132;
                  }

                  [v85 updateIsBlackholed:1];
                  v212 = 1;
LABEL_131:
                  v84 = v225;
LABEL_132:
                  if (!v220 && (v212 & 1) != 0 && *(v84 + 289) == 1)
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v86 = OSLogHandleForIMEventCategory();
                      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
                      {
                        v87 = *(v225 + 72);
                        v88 = *(v225 + 128);
                        v89 = [*(*(*(v225 + 248) + 8) + 40) chatIdentifier];
                        *buf = 138412802;
                        *&buf[4] = v87;
                        *&buf[12] = 2112;
                        *&buf[14] = v88;
                        *&buf[22] = 2112;
                        *&buf[24] = v89;
                        _os_log_impl(&dword_0, v86, OS_LOG_TYPE_INFO, "Blackholing message (%@) from (%@) to (%@)", buf, 0x20u);
                      }
                    }

                    v90 = [*(v225 + 40) deliveryController];
                    v91 = *(v225 + 128);
                    v92 = *(v225 + 88);
                    v93 = [*(v225 + 40) idsAccountForURI:v92 IDSServiceName:@"com.apple.madrid"];
                    v94 = *(v225 + 72);
                    v271[0] = _NSConcreteStackBlock;
                    v271[1] = 3221225472;
                    v271[2] = sub_39140;
                    v271[3] = &unk_112200;
                    v272 = v94;
                    [v90 sendMessageError:502 toToken:0 toID:v91 toGroup:0 fromID:v92 fromAccount:v93 forMessageID:v272 completionBlock:v271];

                    v84 = v225;
                  }

                  if (v212)
                  {
                    [*(v84 + 32) setFlags:{objc_msgSend(*(v84 + 32), "flags") | 0x2000}];
                    v212 = 1;
                  }

                  else
                  {
                    v212 = 0;
                  }

                  goto LABEL_142;
                }

                v70 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
                {
                  v81 = *(v225 + 72);
                  v82 = *(v225 + 128);
                  v83 = *(v225 + 88);
                  *buf = 138412802;
                  *&buf[4] = v81;
                  *&buf[12] = 2112;
                  *&buf[14] = v82;
                  *&buf[22] = 2112;
                  *&buf[24] = v83;
                  _os_log_impl(&dword_0, v70, OS_LOG_TYPE_INFO, "Should blackhole message (%@) from (%@) to (%@)", buf, 0x20u);
                }
              }

              goto LABEL_126;
            }

            if (IMOSLoggingEnabled())
            {
              v56 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
              {
                v203 = *(v225 + 72);
                *buf = 138412290;
                *&buf[4] = v203;
                _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "Message %@ is a junk message.", buf, 0xCu);
              }

              goto LABEL_92;
            }
          }

          v207 = 1;
          goto LABEL_99;
        }

        v208 = [*(a1 + 104) isEqualToString:v209];
      }

      v43 = a1;
      goto LABEL_71;
    }

    v9 = +[IMDFileTransferCenter sharedInstance];
    v10 = [v9 guidsForStoredAttachmentPayloadDataURLs:v213 messageGUID:*(a1 + 72)];

    [*(a1 + 64) setFileTransferGUIDs:v10];
LABEL_15:

    goto LABEL_26;
  }

  v11 = [*(a1 + 32) balloonBundleID];
  v12 = [v11 isEqualToString:IMBalloonPluginIdentifierRichLinks];

  v13 = IMOSLoggingEnabled();
  if (v12)
  {
    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [*(a1 + 32) guid];
        *buf = 138412290;
        *&buf[4] = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Did not download payload data for message %@ but we are continuing", buf, 0xCu);
      }
    }

    v10 = v7;
    v217 = 0;
    goto LABEL_15;
  }

  if (v13)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [*(a1 + 32) guid];
      *buf = 138412290;
      *&buf[4] = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "PayloadAttachments Failed downloading payload data for message %@", buf, 0xCu);
    }
  }

  v18 = *(a1 + 240);
  if (v18)
  {
    if (*(a1 + 284) == 1)
    {
      [*(a1 + 40) noteItemProcessed:*(a1 + 285) batchContext:*(a1 + 48) usingService:*(a1 + 56)];
      v18 = *(a1 + 240);
    }

    (*(v18 + 16))();
  }

LABEL_261:
}