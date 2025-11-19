uint64_t sub_CA148(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131738, &qword_F5A40);
  result = sub_E7AE4();
  v6 = 0;
  v25 = a3;
  v26 = result;
  v9 = *(a3 + 64);
  v8 = a3 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v23 = result + 64;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(*(v25 + 48) + v17);
      v28 = *(*(v25 + 56) + 8 * v17);

      a1(&v27, &v28);
      if (v3)
      {
        break;
      }

      *(v23 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v26;
      v19 = v27;
      *(v26[6] + v17) = v18;
      *(v26[7] + 8 * v17) = v19;
      v20 = v26[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_17;
      }

      v26[2] = v22;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    return v26;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_CA344()
{
  result = qword_1317A0;
  if (!qword_1317A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1317A0);
  }

  return result;
}

void sub_CA390(uint64_t a1)
{
  sub_CA7EC();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_CA418(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_CA59C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void sub_CA7EC()
{
  if (!qword_1316D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12D048, &qword_E90B0);
    v0 = sub_E7284();
    if (!v1)
    {
      atomic_store(v0, &qword_1316D0);
    }
  }
}

uint64_t sub_CA850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131720, &qword_F5A38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CA8C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_CA8F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v6[2] = v2 + 16;
  result = sub_CA148(sub_CA958, v6, v4);
  *a2 = result;
  return result;
}

uint64_t RemoveAbandonedDownloadsTipProvider.tips.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131740, &unk_F5A60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = __chkstk_darwin(v1);
  v6 = v8 - v5;
  if (*(v0 + 32))
  {
    v8[1] = *(v0 + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131D90, &unk_F5ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
    sub_3C2A0(&unk_131DA0, &unk_131D90, &unk_F5ED0);
    sub_E6AC4();

    sub_3C2A0(&unk_131760, &unk_131740, &unk_F5A60);
    v7 = sub_E6A74();
    (*(v2 + 8))(v6, v1);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_CAB40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131CB0, &qword_F5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_E87F0;
  *(inited + 32) = 3;
  v5 = inited + 32;
  *(inited + 40) = v3;
  v6 = sub_B18B8(inited);
  swift_setDeallocating();

  result = sub_110AC(v5, qword_131A30, &qword_F5F80);
  *a2 = v6;
  return result;
}

uint64_t RemoveAbandonedDownloadsTipProvider.__allocating_init(asPartOf:)(void *a1)
{
  v2 = swift_allocObject();
  RemoveAbandonedDownloadsTipProvider.init(asPartOf:)(a1);
  return v2;
}

void *RemoveAbandonedDownloadsTipProvider.init(asPartOf:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v50 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131770, &qword_F5A70);
  v58 = *(v55 - 8);
  v8 = *(v58 + 64);
  __chkstk_darwin(v55);
  v51 = v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131778, &qword_F5A78);
  v11 = *(v10 - 8);
  v56 = v10;
  v57 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v52 = v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131780, &qword_F5A80);
  v15 = *(v14 - 8);
  v59 = v14;
  v60 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v53 = v50 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131788, &qword_F5A88);
  v19 = *(v18 - 8);
  v61 = v18;
  v62 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v54 = v50 - v21;
  v1[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131790, &qword_F5A90);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = 0;
  v1[6] = v22;
  v1[8] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131798, &qword_F5A98);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_E69D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  sub_E6DA4();
  v27 = [v63 privateQueueContext];
  swift_unknownObjectRelease();
  v1[9] = a1;
  v50[1] = a1;
  v1[5] = v27;
  v1[2] = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();

  v50[0] = v27;

  v1[3] = sub_E69D4();
  v31 = *(v28 + 48);
  v32 = *(v28 + 52);
  swift_allocObject();
  v1[7] = sub_E69D4();
  v63 = v26;
  v33 = sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v34 = sub_E7584();
  v67 = v34;
  v35 = sub_E7594();
  (*(*(v35 - 8) + 56))(v7, 1, 1, v35);
  v36 = sub_3C2A0(&qword_1317A8, &qword_131798, &qword_F5A98);
  v37 = sub_C7B2C(&qword_1317B0, &qword_1317A0, OS_dispatch_queue_ptr);
  v38 = v51;
  sub_E6A54();
  sub_110AC(v7, &qword_131D20, "Ju");

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D70, &unk_F5EC0);
  v63 = v23;
  v64 = v33;
  v65 = v36;
  v66 = v37;
  swift_getOpaqueTypeConformance2();
  v39 = v52;
  v40 = v55;
  sub_E6AC4();
  (*(v58 + 8))(v38, v40);
  v41 = sub_3C2A0(&qword_1317C0, &qword_131778, &qword_F5A78);
  v42 = v53;
  v43 = v56;
  sub_E6A64();
  (*(v57 + 8))(v39, v43);
  swift_allocObject();
  swift_weakInit();

  v63 = v43;
  v64 = v41;
  swift_getOpaqueTypeConformance2();
  v44 = v59;
  v45 = v54;
  sub_E6A84();

  (*(v60 + 8))(v42, v44);

  sub_3C2A0(&qword_1317C8, &qword_131788, &qword_F5A88);
  v46 = v61;
  v47 = sub_E6A74();

  (*(v62 + 8))(v45, v46);
  v48 = v2[4];
  v2[4] = v47;

  return v2;
}

uint64_t sub_CB368@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131980, &qword_F5BB8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  sub_26324(a1, v14 - v6, &unk_131980, &qword_F5BB8);
  v8 = type metadata accessor for RemoveAbandonedDownloadsTip();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_110AC(v7, &unk_131980, &qword_F5BB8);
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
  }

  else
  {
    *(&v21 + 1) = v8;
    v22 = sub_CF1DC(&unk_131A20, type metadata accessor for RemoveAbandonedDownloadsTip);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
    sub_CF25C(v7, boxed_opaque_existential_1);
  }

  sub_26324(&v20, &v17, &qword_131F10, &unk_F5FE0);
  v14[0] = v17;
  v14[1] = v18;
  v15 = v19;
  if (*(&v18 + 1))
  {
    sub_4524(v14, v16);
    v10 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_23C14(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_23C14((v11 > 1), v12 + 1, 1, v10);
    }

    v10[2] = v12 + 1;
    sub_4524(v16, &v10[5 * v12 + 4]);
  }

  else
  {
    sub_110AC(v14, &qword_131F10, &unk_F5FE0);
    v10 = _swiftEmptyArrayStorage;
  }

  result = sub_110AC(&v20, &qword_131F10, &unk_F5FE0);
  *a2 = v10;
  return result;
}

uint64_t sub_CB5D4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_CB60C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 48);
    os_unfair_lock_lock((v1 + 24));
    sub_CDA60((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
  }

  return result;
}

uint64_t RemoveAbandonedDownloadsTipProvider.requestRefresh(for:)(uint64_t a1)
{
  result = sub_C6FB8(3u, a1);
  if (result)
  {
    v3 = *(v1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
    sub_3C2A0(&qword_1317D0, &qword_131FA0, &qword_F58A0);
    return sub_E6A44();
  }

  return result;
}

uint64_t sub_CB71C()
{
  v0 = sub_E6974();
  v39 = *(v0 - 8);
  v1 = *(v39 + 64);
  __chkstk_darwin(v0);
  v40 = (&v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_E6BA4();
  v42 = *(v45 - 8);
  v3 = *(v42 + 64);
  __chkstk_darwin(v45);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_E6BC4();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  __chkstk_darwin(v6);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_E7604();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_E59C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_opt_self() managedAssetsDirectoryURL];
  sub_E5994();

  sub_E59A4();
  (*(v15 + 8))(v18, v14);
  sub_E70A4();

  v20 = sub_E6984();

  if (v20 == -1)
  {
    v34 = v39;
    v35 = v40;
    sub_E6954();
    v36 = sub_E6964();
    v37 = sub_E74B4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "Failed to set up a dispatch source to monitor downloads directory. Tip will not referesh on downloads changes.", v38, 2u);
    }

    return (*(v34 + 8))(v35, v0);
  }

  else
  {
    sub_4ABC(0, &qword_1319F8, OS_dispatch_source_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A00, &qword_F5C10);
    v21 = *(v10 + 72);
    v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_E9EF0;
    sub_E75E4();
    sub_E75F4();
    aBlock = v23;
    sub_CF1DC(&qword_131A08, &type metadata accessor for OS_dispatch_source.FileSystemEvent);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A10, &qword_F5C18);
    sub_3C2A0(&qword_131A18, &qword_131A10, &qword_F5C18);
    sub_E7874();
    sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
    v24 = sub_E7584();
    v25 = sub_E7614();

    (*(v10 + 8))(v13, v9);
    swift_getObjectType();
    v26 = swift_allocObject();
    swift_weakInit();
    v51 = sub_CF224;
    v52 = v26;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v40 = &v49;
    v49 = sub_2D68;
    v50 = &block_descriptor_0;
    v27 = _Block_copy(&aBlock);

    v28 = v41;
    sub_E6BB4();
    sub_CCEA8();
    sub_E7624();
    _Block_release(v27);
    v42 = *(v42 + 8);
    (v42)(v5, v45);
    v29 = v44;
    v43 = *(v43 + 8);
    (v43)(v28, v44);

    v30 = swift_allocObject();
    *(v30 + 16) = v20;
    v51 = sub_CF254;
    v52 = v30;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_2D68;
    v50 = &block_descriptor_24;
    v31 = _Block_copy(&aBlock);
    sub_E6BB4();
    sub_CCEA8();
    sub_E7634();
    _Block_release(v31);
    (v42)(v5, v45);
    (v43)(v28, v29);

    sub_E7654();
    v32 = *(v46 + 64);
    *(v46 + 64) = v25;
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_CBE74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v94 = v68 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1318B0, &qword_F5B50);
  v5 = *(v4 - 8);
  v95 = v4;
  v96 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v92 = v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1318B8, &qword_F5B58);
  v9 = *(v8 - 8);
  v97 = v8;
  v98 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v93 = v68 - v11;
  v79 = sub_E75B4();
  v78 = *(v79 - 8);
  v12 = *(v78 + 64);
  __chkstk_darwin(v79);
  v73 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1318C0, &qword_F5B60);
  v82 = *(v81 - 8);
  v14 = *(v82 + 64);
  __chkstk_darwin(v81);
  v74 = v68 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1318C8, &qword_F5B68);
  v84 = *(v83 - 8);
  v16 = *(v84 + 64);
  __chkstk_darwin(v83);
  v76 = v68 - v17;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1318D0, &qword_F5B70);
  v86 = *(v85 - 8);
  v18 = v86[8];
  __chkstk_darwin(v85);
  v77 = v68 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1318D8, &qword_F5B78);
  v21 = *(v20 - 8);
  v87 = v20;
  v88 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v80 = v68 - v23;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1318E0, &qword_F5B80);
  v91 = *(v89 - 8);
  v24 = *(v91 + 64);
  __chkstk_darwin(v89);
  v100 = v68 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1318E8, &qword_F5B88);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = v68 - v29;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1318F0, &unk_F5B90);
  v90 = *(v101 - 8);
  v31 = *(v90 + 64);
  __chkstk_darwin(v101);
  v102 = v68 - v32;
  v33 = sub_E7534();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = v68 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v0 + 72);
  sub_4ABC(0, &qword_12CE20, NSUserDefaults_ptr);
  (*(v34 + 104))(v37, enum case for NSUserDefaults.Name.shared(_:), v33);
  sub_C7B2C(&qword_12D040, &qword_12CE20, NSUserDefaults_ptr);
  sub_E6DB4();
  (*(v34 + 8))(v37, v33);
  v70 = v103;
  sub_E7064();
  v38 = sub_E7514();

  v103 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131510, &qword_F58A8);
  v71 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_3C2A0(&qword_131900, &qword_131510, &qword_F58A8);
  sub_E6AC4();

  v68[1] = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_3C2A0(&qword_131908, &qword_1318E8, &qword_F5B88);
  sub_E6AF4();
  (*(v27 + 8))(v30, v26);
  v39 = v99;
  v103 = *(v99 + 56);

  v40 = v73;
  sub_E75A4();
  v69 = sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v41 = sub_E7584();
  v107 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
  sub_3C2A0(&qword_131910, &qword_131FA0, &qword_F58A0);
  v72 = sub_C7B2C(&qword_1317B0, &qword_1317A0, OS_dispatch_queue_ptr);
  v42 = v74;
  sub_E6B24();

  (*(v78 + 8))(v40, v79);

  v103 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131918, &qword_F5BA0);
  sub_3C2A0(&qword_131920, &qword_1318C0, &qword_F5B60);
  sub_3C2A0(&qword_131928, &qword_131918, &qword_F5BA0);
  v43 = v76;
  v44 = v81;
  sub_E6B04();
  (*(v82 + 8))(v42, v44);
  sub_3C2A0(&qword_131930, &qword_1318C8, &qword_F5B68);
  v45 = v77;
  v46 = v83;
  sub_E6AC4();
  (*(v84 + 8))(v43, v46);
  v103 = *(v39 + 24);
  sub_3C2A0(&qword_131938, &qword_1318D0, &qword_F5B70);
  sub_3C2A0(&qword_131940, &unk_1318F0, &unk_F5B90);
  v47 = v80;
  v48 = v85;
  sub_E6AE4();
  (v86[1])(v45, v48);
  v49 = *(v39 + 40);
  v50 = swift_allocObject();
  v51 = v70;
  *(v50 + 16) = v70;
  *(v50 + 24) = v49;
  v52 = v49;
  v86 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131948, &qword_F5BA8);
  sub_3C2A0(&qword_131950, &qword_1318D8, &qword_F5B78);
  sub_3C2A0(&qword_131958, &qword_131948, &qword_F5BA8);
  v53 = v87;
  sub_E6B54();

  (*(v88 + 8))(v47, v53);
  v54 = swift_allocObject();
  *(v54 + 16) = v52;
  *(v54 + 24) = v75;

  sub_E69B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131960, &qword_F5BB0);
  sub_3C2A0(&qword_131968, &qword_1318E0, &qword_F5B80);
  sub_3C2A0(&qword_131970, &qword_131960, &qword_F5BB0);
  v55 = v92;
  v56 = v89;
  sub_E6B54();

  v57 = v69;
  v58 = sub_E7584();
  v103 = v58;
  v59 = sub_E7594();
  v60 = v94;
  (*(*(v59 - 8) + 56))(v94, 1, 1, v59);
  v61 = sub_3C2A0(&qword_131978, &qword_1318B0, &qword_F5B50);
  v62 = v93;
  v63 = v95;
  v64 = v72;
  sub_E6A54();
  sub_110AC(v60, &qword_131D20, "Ju");

  (*(v96 + 8))(v55, v63);
  swift_allocObject();
  swift_weakInit();
  v103 = v63;
  v104 = v57;
  v105 = v61;
  v106 = v64;
  swift_getOpaqueTypeConformance2();
  v65 = v97;
  v66 = sub_E6B44();

  (*(v98 + 8))(v62, v65);
  (*(v91 + 8))(v100, v56);
  (*(v90 + 8))(v102, v101);
  return v66;
}

uint64_t sub_CCDE4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
    sub_3C2A0(&qword_1317D0, &qword_131FA0, &qword_F58A0);
    sub_E6A44();
  }

  return result;
}

uint64_t sub_CCEA8()
{
  sub_E6BA4();
  sub_CF1DC(&qword_12CE00, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE08, &qword_E8AB0);
  sub_3C2A0(&qword_12CE10, &qword_12CE08, &qword_E8AB0);
  return sub_E7874();
}

uint64_t RemoveAbandonedDownloadsTipProvider.deinit()
{
  if (*(v0 + 64))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_E7644();
    swift_unknownObjectRelease();
  }

  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);
  swift_unknownObjectRelease();
  v7 = *(v0 + 72);

  return v0;
}

uint64_t RemoveAbandonedDownloadsTipProvider.__deallocating_deinit()
{
  RemoveAbandonedDownloadsTipProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_CD060@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1319B8, &qword_F5BF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1319C0, &qword_F5BF8);
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1319C8, &qword_F5C00);
  v31 = *(v13 - 8);
  v14 = *(v31 + 64);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  if ([a1 episodeLimitForKey:kMTPodcastEpisodeLimitDefaultKey] != 0x100000000)
  {
    goto LABEL_3;
  }

  sub_E7114();
  v17 = v5;
  v18 = v16;
  v30 = v8;
  v19 = v4;
  v20 = a1;
  v21 = v12;
  v22 = sub_E7024();
  v23 = v13;
  v24 = v21;
  v25 = v18;
  v5 = v17;

  v26 = v20;
  v4 = v19;
  v8 = v30;
  LOBYTE(v17) = [v26 BOOLForKey:v22];

  if ((v17 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130940, &qword_F35E0);
    v35 = sub_E76F4();
    v34 = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1319D8, &qword_F5C08);
    sub_3C2A0(&qword_1319E0, &qword_1319D8, &qword_F5C08);
    sub_E6A94();

    v35 = _swiftEmptyArrayStorage;
    sub_3C2A0(&qword_1319E8, &qword_1319C0, &qword_F5BF8);
    v29 = v33;
    sub_E6A94();
    (*(v32 + 8))(v24, v29);
    sub_3C2A0(&qword_1319F0, &qword_1319C8, &qword_F5C00);
    v27 = sub_E6A74();
    result = (*(v31 + 8))(v25, v23);
  }

  else
  {
LABEL_3:
    v35 = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130940, &qword_F35E0);
    sub_E6A04();
    sub_3C2A0(&qword_1319D0, &qword_1319B8, &qword_F5BF0);
    v27 = sub_E6A74();
    result = (*(v5 + 8))(v8, v4);
  }

  *a2 = v27;
  return result;
}

uint64_t sub_CD4D4(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131980, &qword_F5BB8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v20 - v12;
  v14 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131990, &qword_F5BC8);
  v15 = sub_E7324();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = a2;
  v16[4] = sub_CDB34;
  v16[5] = a3;

  v17 = a2;
  v20[1] = sub_E6A24();
  v18 = type metadata accessor for RemoveAbandonedDownloadsTip();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  sub_3C2A0(&unk_131998, &qword_131990, &qword_F5BC8);
  sub_E6A94();
  sub_110AC(v9, &unk_131980, &qword_F5BB8);
}

uint64_t sub_CD734()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);

    sub_E69C4();
  }

  return result;
}

uint64_t sub_CD7B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131740, &unk_F5A60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = __chkstk_darwin(v1);
  v6 = v8 - v5;
  if (*(*v0 + 32))
  {
    v8[1] = *(*v0 + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131D90, &unk_F5ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
    sub_3C2A0(&unk_131DA0, &unk_131D90, &unk_F5ED0);
    sub_E6AC4();

    sub_3C2A0(&unk_131760, &unk_131740, &unk_F5A60);
    v7 = sub_E6A74();
    (*(v2 + 8))(v6, v1);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_CD980(uint64_t a1)
{
  v2 = *v1;
  result = sub_C6FB8(3u, a1);
  if (result)
  {
    v4 = *(v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
    sub_3C2A0(&qword_1317D0, &qword_131FA0, &qword_F58A0);
    return sub_E6A44();
  }

  return result;
}

void *sub_CDA60(void *result)
{
  if (!*result)
  {
    v1 = result;
    sub_CB71C();
    result = sub_CBE74();
    *v1 = result;
  }

  return result;
}

uint64_t sub_CDA9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_CDAE4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_CDB34()
{
  sub_4ABC(0, &qword_12CE40, MPMediaLibrary_ptr);
  sub_E6DA4();
  return v1;
}

uint64_t sub_CDB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_E6974();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v9 = sub_E60F4();
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_CDCC0, 0, 0);
}

uint64_t sub_CDCC0()
{
  *(v0 + 16) = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130940, &qword_F35E0);
  sub_3C2A0(&qword_1319A8, &qword_130940, &qword_F35E0);
  if ((sub_E7404() & 1) != 0 && !sub_CE73C())
  {
    sub_E6474();
    v18 = swift_task_alloc();
    *(v0 + 136) = v18;
    *(v18 + 16) = *(v0 + 48);
    v19 = async function pointer to static MediaSpaceCalculator.spaceOccupied(by:managedObjectContext:mediaLibrary:)[1];
    v20 = swift_task_alloc();
    *(v0 + 144) = v20;
    *v20 = v0;
    v20[1] = sub_CDF98;
    v21 = *(v0 + 128);
    v22 = *(v0 + 32);
    v23 = *(v0 + 40);

    return static MediaSpaceCalculator.spaceOccupied(by:managedObjectContext:mediaLibrary:)(v21, v22, v23, sub_CF1B4, v18);
  }

  else
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 32);
    sub_E6954();

    v3 = sub_E6964();
    v4 = sub_E7494();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 32);
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 67109376;
      *(v7 + 4) = *(v6 + 16) == 0;

      *(v7 + 8) = 1024;
      *(v7 + 10) = sub_CE73C();
      _os_log_impl(&dword_0, v3, v4, "Skipping showing the abandoned download tips (isEmpty: %{BOOL}d, throttled: %{BOOL}d", v7, 0xEu);
    }

    else
    {
      v8 = *(v0 + 32);
    }

    v9 = *(v0 + 24);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v10 = type metadata accessor for RemoveAbandonedDownloadsTip();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = *(v0 + 80);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_CDF98()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_CE58C;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_CE0B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_CE0B4()
{
  v61 = v0;
  v1 = v0[16];
  if (sub_E60E4())
  {
    v2 = v0[15];
    v3 = v0[16];
    v4 = v0[13];
    v5 = v0[14];
    v6 = v0[12];
    v7 = v0[4];
    sub_E6954();
    (*(v5 + 16))(v2, v3, v4);

    v8 = sub_E6964();
    v9 = sub_E74D4();

    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[12];
    v14 = v0[13];
    v16 = v0[8];
    v15 = v0[9];
    if (v10)
    {
      v53 = v0[4];
      v58 = v0[8];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v60 = v54;
      *v17 = 138412546;
      v56 = v13;
      v19 = sub_E60E4();
      v20 = [objc_opt_self() stringWithBytesize:v19];
      *(v17 + 4) = v20;
      *v18 = v20;
      (*(v12 + 8))(v11, v14);
      *(v17 + 12) = 2080;
      v21 = sub_E7204();
      v23 = sub_23E64(v21, v22, &v60);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_0, v8, v9, "Updating abandoned downloads tip for episodes reclaiming (%@: %s", v17, 0x16u);
      sub_110AC(v18, &unk_12DB20, &unk_F0760);

      __swift_destroy_boxed_opaque_existential_1(v54);

      (*(v15 + 8))(v56, v58);
    }

    else
    {

      (*(v12 + 8))(v11, v14);
      (*(v15 + 8))(v13, v16);
    }

    v41 = v0[3];
    v42 = v0[4];
    (*(v0[14] + 32))(v41, v0[16], v0[13]);
    v43 = type metadata accessor for RemoveAbandonedDownloadsTip();
    *(v41 + *(v43 + 20)) = v42;
    (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
  }

  else
  {
    v24 = v0[11];
    v25 = v0[4];
    sub_E6954();

    v26 = sub_E6964();
    v27 = sub_E74B4();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[16];
    v31 = v0[13];
    v30 = v0[14];
    v32 = v0[11];
    v34 = v0[8];
    v33 = v0[9];
    if (v28)
    {
      v57 = v0[11];
      v35 = v0[4];
      v59 = v0[13];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v60 = v37;
      *v36 = 136315138;
      v38 = sub_E7204();
      v55 = v29;
      v40 = sub_23E64(v38, v39, &v60);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_0, v26, v27, "Non-zero downloaded episodes has zero downloaded space for episodes: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);

      (*(v33 + 8))(v57, v34);
      (*(v30 + 8))(v55, v59);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
      (*(v30 + 8))(v29, v31);
    }

    v44 = v0[3];
    v45 = type metadata accessor for RemoveAbandonedDownloadsTip();
    (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
  }

  v47 = v0[15];
  v46 = v0[16];
  v49 = v0[11];
  v48 = v0[12];
  v50 = v0[10];

  v51 = v0[1];

  return v51();
}

uint64_t sub_CE58C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];

  v7 = v0[1];
  v8 = v0[19];

  return v7();
}

uint64_t sub_CE634()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_CE67C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_588C;

  return sub_CDB78(a1, v4, v5, v7, v6);
}

BOOL sub_CE73C()
{
  v0 = sub_E6974();
  v74 = *(v0 - 8);
  v1 = v74[8];
  __chkstk_darwin(v0);
  v73 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_E5AB4();
  v79 = *(v77 - 1);
  v3 = *(v79 + 8);
  __chkstk_darwin(v77);
  v76 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v78 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v65 - v9;
  v11 = sub_E5A54();
  v75 = *(v11 - 8);
  v12 = *(v75 + 64);
  v13 = __chkstk_darwin(v11);
  v72 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v71 = &v65 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v65 - v18;
  __chkstk_darwin(v17);
  v80 = &v65 - v20;
  v21 = sub_E5AC4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_E5AA4();
  v27 = kMTEpisodeAbandonedRemovalTipLastDisplayedTimeKey;
  if ([v26 objectForKey:kMTEpisodeAbandonedRemovalTipLastDisplayedTimeKey])
  {
    v66 = v19;
    v67 = v0;
    v69 = v22;
    v70 = v21;
    sub_E7864();
    swift_unknownObjectRelease();
    sub_110AC(v81, &qword_1319B0, &qword_EAC58);
    [v26 doubleForKey:v27];
    sub_E5A04();
    v28 = v79;
    v29 = *(v79 + 13);
    v30 = v76;
    v31 = v77;
    v29(v76, enum case for Calendar.Component.month(_:), v77);
    sub_E5A84();
    v32 = v11;
    v35 = *(v28 + 1);
    v34 = v28 + 8;
    v33 = v35;
    (v35)(v30, v31);
    v36 = v78;
    sub_26324(v10, v78, &qword_131EE0, &unk_F5BE0);
    v37 = v10;
    v38 = v75;
    v39 = v36;
    v40 = v32;
    v41 = (*(v75 + 48))(v39, 1, v32);
    v68 = v37;
    if (v41 != 1)
    {
      v56 = *(v38 + 32);
      v74 = v33;
      v57 = v66;
      v56(v66, v78, v32);
      v58 = v71;
      sub_E5A44();
      v59 = v29;
      v60 = v76;
      v79 = v34;
      v61 = v77;
      v59(v76, enum case for Calendar.Component.day(_:), v77);
      v62 = sub_E5A94();

      (v74)(v60, v61);
      v63 = *(v38 + 8);
      v63(v58, v40);
      v63(v57, v40);
      sub_110AC(v68, &qword_131EE0, &unk_F5BE0);
      v63(v80, v40);
      (*(v69 + 8))(v25, v70);
      return v62 == -1;
    }

    v77 = v26;
    v79 = v25;
    sub_110AC(v78, &qword_131EE0, &unk_F5BE0);
    v42 = v73;
    sub_E6954();
    v43 = v72;
    v44 = v32;
    (*(v38 + 16))(v72, v80, v32);
    v45 = sub_E6964();
    v46 = sub_E74B4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v81[0] = v48;
      *v47 = 136315138;
      sub_CF1DC(&unk_12DDE0, &type metadata accessor for Date);
      v49 = sub_E7BB4();
      v50 = v43;
      v51 = v42;
      v53 = v52;
      v54 = *(v38 + 8);
      v54(v50, v44);
      v55 = sub_23E64(v49, v53, v81);

      *(v47 + 4) = v55;
      _os_log_impl(&dword_0, v45, v46, "Unable to compute next date for the tip to be throttled after an accept. Hiding by default, last presentation date: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);

      (v74[1])(v51, v67);
    }

    else
    {

      v54 = *(v38 + 8);
      v54(v43, v32);
      (v74[1])(v42, v67);
    }

    sub_110AC(v68, &qword_131EE0, &unk_F5BE0);
    v54(v80, v44);
    (*(v69 + 8))(v79, v70);
  }

  else
  {
    (*(v22 + 8))(v25, v21);

    memset(v81, 0, 32);
    sub_110AC(v81, &qword_1319B0, &qword_EAC58);
  }

  return 0;
}

void sub_CEF2C(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
  [v3 setResultType:1];
  sub_4ABC(0, &qword_131F00, MTEpisode_ptr);
  v4 = sub_E77B4();
  [v3 setPredicate:v4];

  sub_4ABC(0, &qword_12E090, NSManagedObjectID_ptr);
  v5 = sub_E7734();
  if (v1)
  {

    return;
  }

  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_18:

    *a1 = _swiftEmptyArrayStorage;
    return;
  }

  v7 = sub_E7AC4();
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_5:
  sub_15D58(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = sub_E79B4();
        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          v20 = v9;
          sub_15D58((v10 > 1), v11 + 1, 1);
          v9 = v20;
        }

        ++v8;
        _swiftEmptyArrayStorage[2] = v11 + 1;
        v12 = &_swiftEmptyArrayStorage[3 * v11];
        v12[4] = v9;
        v12[5] = 0;
        *(v12 + 48) = 1;
      }

      while (v7 != v8);
    }

    else
    {
      v13 = 32;
      do
      {
        v14 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        v16 = *(v6 + v13);
        if (v14 >= v15 >> 1)
        {
          v18 = v15 > 1;
          v19 = v16;
          sub_15D58(v18, v14 + 1, 1);
          v16 = v19;
        }

        _swiftEmptyArrayStorage[2] = v14 + 1;
        v17 = &_swiftEmptyArrayStorage[3 * v14];
        v17[4] = v16;
        v17[5] = 0;
        *(v17 + 48) = 1;
        v13 += 8;
        --v7;
      }

      while (v7);
    }

    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_CF1B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_CF1DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_CF25C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveAbandonedDownloadsTip();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RemoveOlderDownloadsTipProvider.unownedExecutor.getter()
{
  sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v0 = sub_E7564();
  v1 = sub_E7554();

  return v1;
}

uint64_t RemoveOlderDownloadsTipProvider.suggestedEpisodeLimit.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimit;
  swift_beginAccess();
  return sub_26324(v1 + v3, a1, &qword_131A48, &qword_F5C30);
}

uint64_t sub_CF390(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A48, &qword_F5C30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_26324(a1, &v10 - v6, &qword_131A48, &qword_F5C30);
  v8 = *a2;
  return RemoveOlderDownloadsTipProvider.suggestedEpisodeLimit.setter(v7);
}

uint64_t RemoveOlderDownloadsTipProvider.suggestedEpisodeLimit.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A50, &qword_F5C38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A48, &qword_F5C30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  v13 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimit;
  swift_beginAccess();
  sub_CF630(a1, v1 + v13);
  swift_endAccess();
  v14 = *(v1 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeSubject);
  sub_26324(v2 + v13, v12, &qword_131A48, &qword_F5C30);
  sub_E66F4();
  sub_110AC(v12, &qword_131A48, &qword_F5C30);
  sub_26324(v2 + v13, v12, &qword_131A48, &qword_F5C30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A68, &qword_F5C40);
  sub_E7334();
  sub_110AC(a1, &qword_131A48, &qword_F5C30);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_CF630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A48, &qword_F5C30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*RemoveOlderDownloadsTipProvider.suggestedEpisodeLimit.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A50, &qword_F5C38);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v4[6] = v7;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A48, &qword_F5C30) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimit;
  v4[7] = v9;
  v4[8] = v10;
  swift_beginAccess();
  return sub_CF7DC;
}

void sub_CF7DC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    v5 = v3[6];
    v4 = v3[7];
  }

  else
  {
    v4 = v3[7];
    v6 = v3[8];
    v7 = v3[5];
    v5 = v3[6];
    v9 = v3[3];
    v8 = v3[4];
    v10 = *(v9 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeSubject);
    sub_26324(v9 + v6, v4, &qword_131A48, &qword_F5C30);
    sub_E66F4();
    sub_110AC(v4, &qword_131A48, &qword_F5C30);
    sub_26324(v9 + v6, v4, &qword_131A48, &qword_F5C30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A68, &qword_F5C40);
    sub_E7334();
    (*(v7 + 8))(v5, v8);
  }

  free(v4);
  free(v5);

  free(v3);
}

uint64_t RemoveOlderDownloadsTipProvider.suggestedEpisodeLimitStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimitStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131A70, &unk_F5C48);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveOlderDownloadsTipProvider.storageRecommendationPublisher.getter()
{
  v1 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_storageRecommendationPublisher;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

char *sub_CF9D4()
{
  v1 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider____lazy_storage___mediaLibrary;
  v2 = *(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider____lazy_storage___mediaLibrary);
  v3 = v2;
  if (v2 == &dword_0 + 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_objectGraph);
    sub_4ABC(0, &qword_12CE40, MPMediaLibrary_ptr);
    v5 = v0;
    sub_E6D74();
    v3 = v9;
    v6 = *(v0 + v1);
    *(v5 + v1) = v9;
    v7 = v9;
    sub_D6A30(v6);
  }

  sub_D77A0(v2);
  return v3;
}

uint64_t sub_CFA7C()
{
  v1 = (v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider____lazy_storage___restoreToken);
  if (*(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider____lazy_storage___restoreToken + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider____lazy_storage___restoreToken + 8);
  }

  else
  {
    v2 = sub_CFAF8();
    v4 = v1[1];
    *v1 = v2;
    v1[1] = v5;
  }

  return v2;
}

uint64_t sub_CFAF8()
{
  v0 = sub_CF9D4();
  if (!v0)
  {
    v0 = [objc_opt_self() defaultMediaLibrary];
  }

  v1 = v0;
  if ([v0 valueForDatabaseProperty:MTMediaLibraryRestoreTokenProperty])
  {
    sub_E7864();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {

      return v3;
    }
  }

  else
  {
    sub_110AC(v6, &qword_1319B0, &qword_EAC58);
  }

  return 0;
}

uint64_t RemoveOlderDownloadsTipProvider.__allocating_init(asPartOf:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  RemoveOlderDownloadsTipProvider.init(asPartOf:)(a1);
  return v5;
}

uint64_t RemoveOlderDownloadsTipProvider.init(asPartOf:)(uint64_t a1)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v64 = &v63 - v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A80, &qword_F5C58);
  v67 = *(v69 - 8);
  v6 = *(v67 + 64);
  __chkstk_darwin(v69);
  v66 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A88, &qword_F5C60);
  v70 = *(v8 - 8);
  v71 = v8;
  v9 = *(v70 + 64);
  __chkstk_darwin(v8);
  v68 = &v63 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A48, &qword_F5C30);
  v11 = *(*(v76 - 1) + 64);
  __chkstk_darwin(v76);
  v75 = &v63 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A90, &qword_F5C68);
  v13 = *(v79 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v79);
  v74 = &v63 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131A70, &unk_F5C48);
  v65 = *(v80 - 8);
  v16 = *(v65 + 64);
  __chkstk_darwin(v80);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A98, &qword_F5C70);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v77 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v63 - v23;
  v25 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimit;
  v26 = sub_E5C84();
  v27 = *(v26 - 8);
  v72 = *(v27 + 56);
  v73 = v27 + 56;
  v72(v2 + v25, 1, 1, v26);
  *(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_storageRecommendationPublisher) = 0;
  v28 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider__globalAutomaticDownloadLimit;
  sub_E76B4();
  sub_E76D4();
  sub_E7064();
  v29 = objc_opt_self();
  v30 = [v29 _applePodcastsFoundationSettingsUserDefaults];
  *(v2 + v28) = sub_E6B64();
  v31 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider__ignoredConsumedSpaceQuantity;
  sub_E7064();
  v32 = [v29 _applePodcastsFoundationSharedUserDefaults];
  *(v2 + v31) = sub_E6B94();
  v33 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider__lastDismissedRestoreToken;
  sub_E7064();
  v34 = [v29 _applePodcastsFoundationSharedUserDefaults];
  *(v2 + v33) = sub_E6B84();
  v35 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider__lastDismissedOSVersion;
  sub_E7064();
  v36 = [v29 _applePodcastsFoundationSharedUserDefaults];
  *(v2 + v35) = sub_E6B84();
  *(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_observersTask) = 0;
  *(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider____lazy_storage___mediaLibrary) = 1;
  v37 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_spaceDistribution;
  v38 = sub_E6454();
  (*(*(v38 - 8) + 56))(v2 + v37, 1, 1, v38);
  v39 = (v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider____lazy_storage___restoreToken);
  *v39 = 0;
  v39[1] = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A68, &qword_F5C40);
  v41 = *(v40 - 8);
  (*(v41 + 56))(v24, 1, 1, v40);
  v81 = v24;
  (*(v13 + 104))(v74, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v79);
  v79 = v18;
  sub_E7344();
  v42 = v26;
  v43 = v78;
  v72(v75, 1, 1, v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131AE0, &unk_F5C78);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = sub_E6704();
  *(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_objectGraph) = v43;
  sub_E6474();

  sub_E6DA4();
  *(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_mediaSpaceCalculator) = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  sub_E6DA4();
  v48 = [v82 importContext];
  v49 = v77;
  swift_unknownObjectRelease();
  *(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_managedObjectContext) = v48;
  v76 = v24;
  sub_26324(v24, v49, &qword_131A98, &qword_F5C70);
  result = (*(v41 + 48))(v49, 1, v40);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v41 + 32))(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_streamContinuation, v49, v40);
    v51 = v65;
    (*(v65 + 16))(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimitStream, v79, v80);
    *(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeSubject) = v47;
    v82 = v47;
    sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);

    v52 = sub_E75C4();
    v77 = v47;
    v53 = v52;
    v83 = v52;
    v54 = sub_E7594();
    v55 = v64;
    (*(*(v54 - 8) + 56))(v64, 1, 1, v54);
    sub_3C2A0(&unk_131B08, &qword_131AE0, &unk_F5C78);
    sub_D07D0();
    v56 = v66;
    sub_E6B14();
    sub_110AC(v55, &qword_131D20, "Ju");

    swift_allocObject();
    swift_weakInit();
    sub_3C2A0(&qword_131B18, &qword_131A80, &qword_F5C58);

    v57 = v69;
    v58 = v68;
    sub_E6A84();

    (*(v67 + 8))(v56, v57);

    sub_3C2A0(&unk_131B20, &qword_131A88, &qword_F5C60);
    v59 = v71;
    v60 = sub_E6A74();

    (*(v70 + 8))(v58, v59);
    (*(v51 + 8))(v79, v80);
    v61 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_storageRecommendationPublisher;
    swift_beginAccess();
    v62 = *(v2 + v61);
    *(v2 + v61) = v60;

    sub_110AC(v76, &qword_131A98, &qword_F5C70);
    return v2;
  }

  return result;
}

uint64_t sub_D06EC(uint64_t a1, uint64_t a2)
{
  sub_110AC(a2, &qword_131A98, &qword_F5C70);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A68, &qword_F5C40);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

unint64_t sub_D07D0()
{
  result = qword_1317B0;
  if (!qword_1317B0)
  {
    sub_4ABC(255, &qword_1317A0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1317B0);
  }

  return result;
}

uint64_t sub_D0838()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D0870()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_E7304();
    v6 = sub_E7324();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_A75C0(0, 0, v3, &unk_F5E78, v7);
  }

  return result;
}

Swift::Void __swiftcall RemoveOlderDownloadsTipProvider.startListeningTaskRoot()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v7 - v3;
  sub_E7304();
  v5 = sub_E7324();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_A75C0(0, 0, v4, &unk_F5C90, v6);
}

uint64_t sub_D0AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4[2] = a4;
  v5 = *a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v4[4] = sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider);
  v8 = sub_E7294();

  return _swift_task_switch(sub_D0BC4, v8, v7);
}

uint64_t sub_D0BC4()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_observersTask;
  if (!*(v1 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_observersTask))
  {
    v3 = v0[3];
    v4 = v0[4];
    sub_E7304();
    v5 = sub_E7324();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    v6 = swift_allocObject();
    v6[2] = v1;
    v6[3] = v4;
    v6[4] = v1;
    swift_retain_n();
    v7 = sub_A75C0(0, 0, v3, &unk_F5E70, v6);
    v8 = *(v1 + v2);
    *(v1 + v2) = v7;
  }

  v9 = v0[3];

  v10 = v0[1];

  return v10();
}

uint64_t sub_D0CFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5E10;

  return sub_D0AB0(a1, v4, v5, v6);
}

Swift::Void __swiftcall RemoveOlderDownloadsTipProvider.beginListening()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_observersTask;
  if (!*(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_observersTask))
  {
    sub_E7304();
    v6 = sub_E7324();
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    v7 = sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider);
    v8 = swift_allocObject();
    v8[2] = v0;
    v8[3] = v7;
    v8[4] = v0;
    swift_retain_n();
    v9 = sub_A75C0(0, 0, v4, &unk_F5CA0, v8);
    v10 = *(v0 + v5);
    *(v0 + v5) = v9;
  }
}

uint64_t sub_D0F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4[247] = a4;
  v5 = *a4;
  v6 = sub_E6974();
  v4[253] = v6;
  v7 = *(v6 - 8);
  v4[259] = v7;
  v8 = *(v7 + 64) + 15;
  v4[265] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131CD0, &unk_F5DA0);
  v4[271] = v9;
  v10 = *(v9 - 8);
  v4[277] = v10;
  v11 = *(v10 + 64) + 15;
  v4[278] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305B0, &qword_F2D30);
  v4[279] = v12;
  v13 = *(v12 - 8);
  v4[280] = v13;
  v14 = *(v13 + 64) + 15;
  v4[281] = swift_task_alloc();
  sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider);
  v16 = sub_E7294();
  v4[282] = v16;
  v4[283] = v15;

  return _swift_task_switch(sub_D1128, v16, v15);
}

uint64_t sub_D1128()
{
  v1 = v0[281];
  v2 = v0[280];
  v3 = v0[279];
  v4 = v0[278];
  v24 = v0[277];
  v25 = v0[271];
  v5 = v0[247];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131CE0, &qword_F5DB0);
  v6 = swift_allocObject();
  v0[284] = v6;
  *(v6 + 16) = xmmword_E87F0;
  *(v6 + 32) = UIApplicationWillEnterForegroundNotification;
  v7 = swift_task_alloc();
  v0[285] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = UIApplicationWillEnterForegroundNotification;
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  v9 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v0[286] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306D0, &unk_EA4C0);
  v10 = swift_allocObject();
  v0[287] = v10;
  *(v10 + 16) = xmmword_F21B0;
  *(v10 + 32) = sub_E7064();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_E7064();
  *(v10 + 56) = v12;
  *(v10 + 64) = sub_E7064();
  *(v10 + 72) = v13;
  *(v10 + 80) = sub_E7064();
  *(v10 + 88) = v14;
  sub_E6D34();
  v15 = sub_E6D44();
  v17 = v16;
  (*(v2 + 8))(v1, v3);
  *(v10 + 96) = v15;
  *(v10 + 104) = v17;
  sub_E6D24();
  v18 = sub_E6D44();
  v20 = v19;
  (*(v24 + 8))(v4, v25);
  *(v10 + 112) = v18;
  *(v10 + 120) = v20;
  v21 = swift_task_alloc();
  v0[288] = v21;
  v21[2] = v9;
  v21[3] = v10;
  v21[4] = v5;
  swift_asyncLet_begin();
  v22 = *(v5 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_mediaSpaceCalculator);
  sub_E6464();

  return _swift_asyncLet_get(v0 + 2, v0 + 289, sub_D13FC, v0 + 242);
}

uint64_t sub_D1468()
{
  v1 = *(v0 + 2314);
  if ((sub_E7364() & 1) == 0)
  {
    v2 = *(v0 + 2120);
    sub_E6954();
    v3 = sub_E6964();
    v4 = sub_E74B4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 2316);
      v6 = *(v0 + 2315);
      v7 = swift_slowAlloc();
      *v7 = 67109632;
      *(v7 + 4) = v6;
      *(v7 + 8) = 1024;
      *(v7 + 10) = v5;
      *(v7 + 14) = 1024;
      *(v7 + 16) = v1;
      _os_log_impl(&dword_0, v3, v4, "Unexpectedly exited all observer loops without task cancellation: %{BOOL}d, %{BOOL}d, %{BOOL}d", v7, 0x14u);
    }

    v8 = *(v0 + 2120);
    v9 = *(v0 + 2072);
    v10 = *(v0 + 2024);

    (*(v9 + 8))(v8, v10);
  }

  return _swift_asyncLet_finish(v0 + 1296, v0 + 2314, sub_D15AC, v0 + 2080);
}

uint64_t sub_D15C8()
{
  v1 = *(v0 + 2304);
  v2 = *(v0 + 2296);

  return _swift_asyncLet_finish(v0 + 656, v0 + 2313, sub_D164C, v0 + 2128);
}

uint64_t sub_D16A4()
{
  v1 = v0[285];
  v2 = v0[284];
  v3 = v0[281];
  v4 = v0[278];
  v5 = v0[265];

  v6 = v0[1];

  return v6();
}

uint64_t sub_D173C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RemoveOlderDownloadsTipProvider()
{
  result = qword_131B90;
  if (!qword_131B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D17D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5E10;

  return sub_D0F20(a1, v4, v5, v6);
}

uint64_t sub_D1884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_D18A8, 0, 0);
}

uint64_t sub_D18A8()
{
  v1 = v0[4];
  v0[5] = [objc_opt_self() defaultCenter];
  v2 = async function pointer to NSNotificationCenter.respond(to:with:)[1];

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_D1998;
  v5 = v0[3];
  v4 = v0[4];

  return NSNotificationCenter.respond(to:with:)(v5, &unk_F5E68, v4);
}

uint64_t sub_D1998(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = *(v4 + 32);
    v9 = *(v4 + 40);

    *(v4 + 56) = a1 & 1;

    return _swift_task_switch(sub_D7A04, 0, 0);
  }
}

uint64_t sub_D1AE4(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_E6974();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_D1BA4, 0, 0);
}

uint64_t sub_D1BA4()
{
  v1 = v0[5];
  sub_E6954();
  v2 = sub_E6964();
  v3 = sub_E7494();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Updating tip recommendations in response to foreground", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_D1CD4;
  v9 = v0[2];

  return sub_D1DE8();
}

uint64_t sub_D1CD4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_D1DE8()
{
  v1[4] = v0;
  v1[5] = *v0;
  v2 = sub_E72D4();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_E6974();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A48, &qword_F5C30);
  v1[14] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v10 = swift_task_alloc();
  v1[17] = v10;
  v11 = swift_task_alloc();
  v1[18] = v11;
  *v11 = v1;
  v11[1] = sub_D1FD0;

  return sub_D353C(v10);
}

uint64_t sub_D1FD0()
{
  v2 = v0;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v10 = *v1;
  *(*v1 + 152) = v2;

  sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider);
  v7 = sub_E7294();
  if (v2)
  {
    v8 = sub_D240C;
  }

  else
  {
    v8 = sub_D215C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_D215C()
{
  v35 = v0;
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  sub_E6954();
  sub_26324(v2, v1, &qword_131A48, &qword_F5C30);
  v4 = sub_E6964();
  v5 = sub_E74A4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v9 = v0[14];
    v8 = v0[15];
    v31 = v0[10];
    v32 = v0[9];
    v33 = v0[13];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136315138;
    sub_26324(v7, v8, &qword_131A48, &qword_F5C30);
    v12 = sub_E7084();
    v14 = v13;
    sub_110AC(v7, &qword_131A48, &qword_F5C30);
    v15 = sub_23E64(v12, v14, &v34);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_0, v4, v5, "Issuing retention policy change recommendation: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);

    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v16 = v0[13];
    v17 = v0[9];
    v18 = v0[10];

    sub_110AC(v7, &qword_131A48, &qword_F5C30);
    (*(v18 + 8))(v16, v17);
  }

  v19 = v0[17];
  v20 = v0[15];
  v21 = v0[4];
  sub_26324(v19, v20, &qword_131A48, &qword_F5C30);
  RemoveOlderDownloadsTipProvider.suggestedEpisodeLimit.setter(v20);
  sub_110AC(v19, &qword_131A48, &qword_F5C30);
  v23 = v0[16];
  v22 = v0[17];
  v24 = v0[15];
  v26 = v0[12];
  v25 = v0[13];
  v27 = v0[11];
  v28 = v0[8];

  v29 = v0[1];

  return v29();
}

uint64_t sub_D240C()
{
  v43 = v0;
  v0[2] = v0[19];
  v1 = v0[8];
  v2 = v0[6];
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
  v3 = swift_dynamicCast();
  v4 = v0[19];
  if (v3)
  {
    v5 = v0[12];
    v6 = v0[19];

    sub_E6954();
    v7 = sub_E6964();
    v8 = sub_E74A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Computing episode limit suggestion cancelled", v9, 2u);
    }

    v10 = v0[12];
    v11 = v0[9];
    v12 = v0[10];
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[6];

    (*(v12 + 8))(v10, v11);
    (*(v14 + 8))(v13, v15);
    v16 = v0[2];
  }

  else
  {
    v17 = v0[11];
    v18 = v0[2];

    sub_E6954();
    swift_errorRetain();
    v19 = sub_E6964();
    v20 = sub_E74B4();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[19];
    v23 = v0[10];
    v24 = v0[11];
    v25 = v0[9];
    if (v21)
    {
      v41 = v0[11];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v27;
      *v26 = 136315138;
      v0[3] = v22;
      swift_errorRetain();
      v28 = sub_E7084();
      v30 = sub_23E64(v28, v29, &v42);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_0, v19, v20, "Encountered fatal error to computing episode limit suggestion: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);

      (*(v23 + 8))(v41, v25);
    }

    else
    {
      v31 = v0[19];

      (*(v23 + 8))(v24, v25);
    }
  }

  v33 = v0[16];
  v32 = v0[17];
  v34 = v0[15];
  v36 = v0[12];
  v35 = v0[13];
  v37 = v0[11];
  v38 = v0[8];

  v39 = v0[1];

  return v39();
}

uint64_t sub_D2728(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_D2748, 0, 0);
}

uint64_t sub_D2748()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_mediaSpaceCalculator);
  v0[5] = v1;
  v0[2] = v1;
  v2 = async function pointer to AsyncSequence.onNext(perform:)[1];

  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = sub_E6474();
  v5 = sub_D173C(&qword_131D18, &type metadata accessor for MediaSpaceCalculator);
  *v3 = v0;
  v3[1] = sub_D2870;
  v6 = v0[4];

  return AsyncSequence.onNext(perform:)(&unk_F5E58, v6, v4, v5);
}

uint64_t sub_D2870(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v9 = *(v4 + 32);
    v8 = *(v4 + 40);

    *(v4 + 56) = a1 & 1;

    return _swift_task_switch(sub_D29C0, 0, 0);
  }
}

uint64_t sub_D29E4(uint64_t a1, void *a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = *a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_131B38, &qword_F5CA8) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = sub_E6974();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_D2B04, 0, 0);
}

uint64_t sub_D2B04()
{
  v1 = v0[11];
  sub_E6954();
  v2 = sub_E6964();
  v3 = sub_E7494();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Updating tip recommendations in response to new storage distribution", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];

  (*(v6 + 8))(v5, v7);
  sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider);
  v11 = sub_E7294();

  return _swift_task_switch(sub_D2C58, v11, v10);
}

uint64_t sub_D2C58()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = sub_E6454();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_spaceDistribution;
  swift_beginAccess();
  sub_D7848(v1, v3 + v6);
  swift_endAccess();
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_D2DA4;
  v8 = v0[6];

  return sub_D1DE8();
}

uint64_t sub_D2DA4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 64);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_D2ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_D2EF8, 0, 0);
}

uint64_t sub_D2EF8()
{
  v1 = v0[5];
  v2 = async function pointer to NSUserDefaults.observeChanges(for:performing:)[1];

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_D2FB4;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  return NSUserDefaults.observeChanges(for:performing:)(v5, &unk_F5DF8, v4);
}

uint64_t sub_D2FB4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = *(v4 + 40);

    *(v4 + 56) = a1 & 1;

    return _swift_task_switch(sub_D30FC, 0, 0);
  }
}

uint64_t sub_D3120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_E6974();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_D31E4, 0, 0);
}

uint64_t sub_D31E4()
{
  v19 = v0;
  v1 = v0[7];
  v2 = v0[3];
  sub_E6954();

  v3 = sub_E6964();
  v4 = sub_E7494();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    v9 = v0[2];
    v8 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_23E64(v9, v8, &v18);
    _os_log_impl(&dword_0, v3, v4, "Updating library in response to defaults key: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];

    (*(v13 + 8))(v12, v14);
  }

  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_D33B4;
  v16 = v0[4];

  return sub_D1DE8();
}

uint64_t sub_D33B4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

Swift::Void __swiftcall RemoveOlderDownloadsTipProvider.endListening()()
{
  if (*(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_observersTask))
  {
    v1 = *(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_observersTask);

    sub_E7354();
  }
}

uint64_t sub_D353C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  v3 = *(*(sub_E60F4() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = sub_E6454();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v7 = sub_E5C04();
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v9 = *(v8 + 64) + 15;
  v2[16] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131B38, &qword_F5CA8);
  v2[17] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF8, &qword_F5E18);
  v2[19] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v14 = sub_E6974();
  v2[21] = v14;
  v15 = *(v14 - 8);
  v2[22] = v15;
  v16 = *(v15 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D00, &qword_F5E20) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v18 = swift_task_alloc();
  v2[30] = v18;
  v19 = swift_task_alloc();
  v2[31] = v19;
  *v19 = v2;
  v19[1] = sub_D3844;

  return sub_D4B74(v18);
}

uint64_t sub_D3844()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 248);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  v3[32] = v2;

  sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider);
  v9 = sub_E7294();
  v3[33] = v9;
  v3[34] = v8;
  if (v2)
  {
    v10 = sub_D4A58;
  }

  else
  {
    v10 = sub_D39E0;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_D39E0()
{
  v113 = v0;
  v1 = v0[30];
  v2 = v0[29];
  v3 = v0[24];
  sub_E6954();
  sub_26324(v1, v2, &qword_131D00, &qword_F5E20);
  v4 = sub_E6964();
  v5 = sub_E7494();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[29];
  if (v6)
  {
    v8 = v0[28];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v112 = v10;
    *v9 = 136315138;
    sub_26324(v7, v8, &qword_131D00, &qword_F5E20);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D08, &qword_F5E30);
    v12 = (*(*(v11 - 8) + 48))(v8, 1, v11);
    v13 = v0[28];
    v14 = v0[20];
    v15 = v0[14];
    v16 = v0[15];
    if (v12 == 1)
    {
      sub_110AC(v0[28], &qword_131D00, &qword_F5E20);
      (*(v16 + 56))(v14, 1, 1, v15);
    }

    else
    {
      v107 = v10;
      v21 = v0[11];
      v103 = v0[10];
      v22 = *(v11 + 48);
      (*(v16 + 32))(v14, v13, v15);
      (*(v16 + 56))(v14, 0, 1, v15);
      (*(v21 + 8))(v13 + v22, v103);
      v10 = v107;
    }

    v23 = v0[29];
    v108 = v0[24];
    v25 = v0[21];
    v24 = v0[22];
    v27 = v0[19];
    v26 = v0[20];
    v28 = sub_E7084();
    v30 = v29;
    sub_110AC(v23, &qword_131D00, &qword_F5E20);
    v31 = sub_23E64(v28, v30, &v112);

    *(v9 + 4) = v31;
    _os_log_impl(&dword_0, v4, v5, "Received episode limit suggestion from the JS layer: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);

    v20 = *(v24 + 8);
    v20(v108, v25);
  }

  else
  {
    v17 = v0[24];
    v18 = v0[21];
    v19 = v0[22];

    sub_110AC(v7, &qword_131D00, &qword_F5E20);
    v20 = *(v19 + 8);
    v20(v17, v18);
  }

  v32 = v0[30];
  v33 = v0[27];
  v34 = v0[23];
  sub_E6954();
  sub_26324(v32, v33, &qword_131D00, &qword_F5E20);
  v35 = sub_E6964();
  v36 = sub_E74A4();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v0[27];
  if (v37)
  {
    v109 = v20;
    v39 = v0[26];
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v112 = v41;
    *v40 = 136315138;
    sub_26324(v38, v39, &qword_131D00, &qword_F5E20);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D08, &qword_F5E30);
    v43 = (*(*(v42 - 8) + 48))(v39, 1, v42);
    v44 = v0[26];
    v45 = v0[18];
    if (v43 == 1)
    {
      v46 = v0[10];
      v47 = v0[11];
      sub_110AC(v44, &qword_131D00, &qword_F5E20);
      (*(v47 + 56))(v45, 1, 1, v46);
    }

    else
    {
      v51 = v0[15];
      v104 = v0[14];
      v53 = v0[10];
      v52 = v0[11];
      v54 = v44 + *(v42 + 48);
      v55 = v0[26];
      (*(v52 + 32))(v45, v54, v53);
      (*(v52 + 56))(v45, 0, 1, v53);
      (*(v51 + 8))(v55, v104);
    }

    v56 = v0[27];
    v57 = v0[22];
    v105 = v0[23];
    v58 = v0[21];
    v60 = v0[17];
    v59 = v0[18];
    v61 = sub_E7084();
    v63 = v62;
    sub_110AC(v56, &qword_131D00, &qword_F5E20);
    v64 = sub_23E64(v61, v63, &v112);

    *(v40 + 4) = v64;
    _os_log_impl(&dword_0, v35, v36, "Storage distribution: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);

    v109(v105, v58);
  }

  else
  {
    v49 = v0[22];
    v48 = v0[23];
    v50 = v0[21];

    sub_110AC(v38, &qword_131D00, &qword_F5E20);
    v20(v48, v50);
  }

  v66 = v0 + 25;
  v65 = v0[25];
  sub_26324(v0[30], v65, &qword_131D00, &qword_F5E20);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D08, &qword_F5E30);
  if ((*(*(v67 - 8) + 48))(v65, 1, v67) == 1)
  {
    sub_110AC(v0[30], &qword_131D00, &qword_F5E20);
LABEL_21:
    v86 = *v66;
    v87 = v0[29];
    v88 = v0[30];
    v90 = v0[27];
    v89 = v0[28];
    v92 = v0[25];
    v91 = v0[26];
    v93 = v0[23];
    v94 = v0[24];
    v100 = v0[20];
    v101 = v0[18];
    v102 = v0[16];
    v106 = v0[13];
    v110 = v0[12];
    v111 = v0[9];
    v95 = v0[6];
    sub_110AC(v86, &qword_131D00, &qword_F5E20);
    v96 = sub_E5C84();
    (*(*(v96 - 8) + 56))(v95, 1, 1, v96);

    v97 = v0[1];

    return v97();
  }

  v68 = v0[25];
  v69 = v0[13];
  v70 = v0[10];
  v71 = v0[11];
  v72 = v0[7];
  v73 = *(v67 + 48);
  (*(v0[15] + 32))(v0[16], v68, v0[14]);
  (*(v71 + 32))(v69, v68 + v73, v70);
  v74 = sub_E5BF4();
  v75 = sub_D5978(v74);
  v76 = v0[16];
  if ((v75 & 1) == 0)
  {
    v84 = v0[14];
    v85 = v0[15];
    (*(v0[11] + 8))(v0[13], v0[10]);
    (*(v85 + 8))(v76, v84);
    v66 = v0 + 30;
    goto LABEL_21;
  }

  v77 = v0[7];
  v78 = sub_E5BD4();
  v79 = sub_CF9D4();
  v0[35] = v79;
  if (v79)
  {
    v80 = v79;
    v81 = swift_task_alloc();
    v0[36] = v81;
    *v81 = v0;
    v81[1] = sub_D4314;
    v82 = v0[7];

    return sub_D5B34(v78, v80);
  }

  else
  {
    v98 = swift_task_alloc();
    v0[38] = v98;
    *v98 = v0;
    v98[1] = sub_D4458;
    v99 = v0[7];

    return sub_D6074(v78);
  }
}

uint64_t sub_D4314(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[36];
  v7 = *v3;
  v5[37] = v2;

  v8 = v4[34];
  v9 = v4[33];
  if (v2)
  {
    v10 = sub_D4600;
  }

  else
  {
    v10 = sub_D458C;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_D4458(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 304);
  v8 = *v3;

  if (v2)
  {
    v6[41] = v2;
    v9 = v6[33];
    v10 = v6[34];
    v11 = sub_D48EC;
  }

  else
  {
    v6[39] = a2;
    v6[40] = a1;
    v9 = v6[33];
    v10 = v6[34];
    v11 = sub_D466C;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_D458C()
{
  *(v0 + 312) = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return _swift_task_switch(sub_D466C, v1, v2);
}

uint64_t sub_D4600()
{
  *(v0 + 328) = *(v0 + 296);
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return _swift_task_switch(sub_D48EC, v1, v2);
}

uint64_t sub_D466C()
{
  v1 = v0[40];
  v2 = v0[15];
  v26 = v0[39];
  v28 = v0[16];
  v3 = v0[13];
  v30 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v21 = v0[7];
  v24 = v0[6];
  sub_E5BD4();
  sub_E60D4();
  (*(v4 + 16))(v5, v3, v6);
  v8 = [objc_opt_self() processInfo];
  v9 = [v8 operatingSystemVersionString];

  sub_E7064();
  sub_CFA7C();
  sub_E5C34();
  (*(v4 + 8))(v3, v6);
  (*(v2 + 8))(v28, v30);
  v10 = v0[29];
  v12 = v0[27];
  v11 = v0[28];
  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[23];
  v16 = v0[24];
  v22 = v0[20];
  v23 = v0[18];
  v25 = v0[16];
  v27 = v0[13];
  v29 = v0[12];
  v31 = v0[9];
  v17 = v0[6];
  sub_110AC(v0[30], &qword_131D00, &qword_F5E20);
  v18 = sub_E5C84();
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_D48EC()
{
  v1 = v0[30];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  (*(v0[11] + 8))(v0[13], v0[10]);
  (*(v3 + 8))(v2, v4);
  sub_110AC(v1, &qword_131D00, &qword_F5E20);
  v6 = v0[29];
  v5 = v0[30];
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[20];
  v14 = v0[18];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[12];
  v20 = v0[9];
  v21 = v0[41];

  v15 = v0[1];

  return v15();
}

uint64_t sub_D4A58()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[20];
  v10 = v0[18];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[12];
  v16 = v0[9];
  v17 = v0[32];

  v11 = v0[1];

  return v11();
}

uint64_t sub_D4B74(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = *v1;
  v4 = sub_E6974();
  v2[15] = v4;
  v5 = *(v4 - 8);
  v2[16] = v5;
  v6 = *(v5 + 64) + 15;
  v2[17] = swift_task_alloc();
  v7 = sub_E5C04();
  v2[18] = v7;
  v8 = *(v7 - 8);
  v2[19] = v8;
  v9 = *(v8 + 64) + 15;
  v2[20] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DA0, &qword_F4478) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v11 = sub_E60F4();
  v2[22] = v11;
  v12 = *(v11 - 8);
  v2[23] = v12;
  v13 = *(v12 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v14 = type metadata accessor for LibraryStorageTipSuggestedLimitIntent();
  v2[26] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_131B38, &qword_F5CA8) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v17 = sub_E6454();
  v2[29] = v17;
  v18 = *(v17 - 8);
  v2[30] = v18;
  v19 = *(v18 + 64) + 15;
  v2[31] = swift_task_alloc();
  sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider);
  v21 = sub_E7294();
  v2[32] = v21;
  v2[33] = v20;

  return _swift_task_switch(sub_D4E6C, v21, v20);
}

uint64_t sub_D4E6C()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[14];
  v5 = *(v4 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider__globalAutomaticDownloadLimit);

  sub_E6B74();

  v0[34] = v0[12];
  v6 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_spaceDistribution;
  swift_beginAccess();
  sub_26324(v4 + v6, v3, &qword_131B38, &qword_F5CA8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = v0[17];
    sub_110AC(v0[28], &qword_131B38, &qword_F5CA8);
    sub_E6954();
    v8 = sub_E6964();
    v9 = sub_E74B4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Unable to compute dependent information for determining the storage tip threshold. The tip will not be displayed.", v10, 2u);
    }

    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[15];
    v14 = v0[13];

    (*(v12 + 8))(v11, v13);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D08, &qword_F5E30);
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    v16 = v0[31];
    v17 = v0[27];
    v18 = v0[28];
    v20 = v0[24];
    v19 = v0[25];
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[17];

    v24 = v0[1];

    return v24();
  }

  else
  {
    v27 = v0[30];
    v26 = v0[31];
    v28 = v0[28];
    v29 = v0[29];
    v30 = v0[14];
    v31 = *(v27 + 32);
    v0[35] = v31;
    v0[36] = (v27 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v31(v26, v28, v29);
    v0[37] = *(v30 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_objectGraph);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
    v33 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v34 = swift_task_alloc();
    v0[38] = v34;
    *v34 = v0;
    v34[1] = sub_D51A0;

    return BaseObjectGraph.inject<A>(_:)(v0 + 2, v32, v32);
  }
}

uint64_t sub_D51A0()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 264);
  v6 = *(v2 + 256);
  if (v0)
  {
    v7 = sub_D57A8;
  }

  else
  {
    v7 = sub_D52DC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_D52DC()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 112);
  sub_E6434();
  sub_E6444();
  v5 = *(v4 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider__ignoredConsumedSpaceQuantity);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132180, &qword_EC5A8);
  sub_E6B74();

  if (*(v0 + 88))
  {
    v12 = 1;
  }

  else
  {
    v13 = *(v0 + 80);
    if (v13 < 0)
    {
      __break(1u);
      return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v13, v6, v7, v8, v9, v10, v11);
    }

    v14 = *(v0 + 168);
    sub_E60D4();
    v12 = 0;
  }

  v15 = *(v0 + 272);
  v17 = *(v0 + 208);
  v16 = *(v0 + 216);
  v18 = *(v0 + 192);
  v19 = *(v0 + 200);
  v20 = *(v0 + 176);
  v21 = *(v0 + 184);
  v22 = *(v0 + 168);
  (*(v21 + 56))(v22, v12, 1, v20);
  v23 = sub_E76C4();
  *v16 = v15;
  *(v16 + 1) = v23;
  v24 = *(v21 + 32);
  v24(&v16[v17[6]], v19, v20);
  v24(&v16[v17[7]], v18, v20);
  sub_B8A98(v22, &v16[v17[8]]);
  v25 = *(v0 + 40);
  v26 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v25);
  v27 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v28 = swift_task_alloc();
  *(v0 + 320) = v28;
  v9 = sub_D173C(&qword_131D10, type metadata accessor for LibraryStorageTipSuggestedLimitIntent);
  *v28 = v0;
  v28[1] = sub_D54F0;
  v7 = *(v0 + 296);
  v8 = *(v0 + 208);
  v6 = *(v0 + 216);
  v13 = *(v0 + 160);
  v10 = v25;
  v11 = v26;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v13, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_D54F0()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 264);
  v6 = *(v2 + 256);
  if (v0)
  {
    v7 = sub_D5884;
  }

  else
  {
    v7 = sub_D562C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_D562C()
{
  v1 = v0[35];
  v20 = v0[36];
  v2 = v0[31];
  v3 = v0[29];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = v0[13];
  sub_B9B24(v0[27]);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D08, &qword_F5E30);
  v9 = *(v8 + 48);
  (*(v5 + 32))(v7, v4, v6);
  v1(v7 + v9, v2, v3);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v10 = v0[31];
  v11 = v0[27];
  v12 = v0[28];
  v14 = v0[24];
  v13 = v0[25];
  v16 = v0[20];
  v15 = v0[21];
  v17 = v0[17];

  v18 = v0[1];

  return v18();
}

uint64_t sub_D57A8()
{
  (*(v0[30] + 8))(v0[31], v0[29]);
  v1 = v0[39];
  v2 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[17];

  v10 = v0[1];

  return v10();
}

uint64_t sub_D5884()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  sub_B9B24(v0[27]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[41];
  v5 = v0[31];
  v7 = v0[27];
  v6 = v0[28];
  v9 = v0[24];
  v8 = v0[25];
  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[17];

  v13 = v0[1];

  return v13();
}

uint64_t sub_D5978(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = sub_CFA7C();
      v5 = v4;
      v6 = *(v1 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider__lastDismissedRestoreToken);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E0A0, &qword_EC5A0);
      sub_E6B74();

      if (v17)
      {
        if (v3 == v16 && v17 == v5)
        {
LABEL_7:

          v2 = 0;
          return v2 & 1;
        }

LABEL_13:
        v14 = sub_E7BD4();

        v2 = v14 ^ 1;
        return v2 & 1;
      }
    }

    else
    {
      v7 = [objc_opt_self() processInfo];
      v8 = [v7 operatingSystemVersionString];

      v9 = sub_E7064();
      v11 = v10;

      v12 = *(v1 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider__lastDismissedOSVersion);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E0A0, &qword_EC5A0);
      sub_E6B74();

      if (v17)
      {
        if (v9 == v16 && v17 == v11)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    v2 = 1;
    return v2 & 1;
  }

  v2 = a1 != 0;
  return v2 & 1;
}

uint64_t sub_D5B34(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider);
  v6 = sub_E7294();
  v3[5] = v6;
  v3[6] = v5;

  return _swift_task_switch(sub_D5C0C, v6, v5);
}

uint64_t sub_D5C0C()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_managedObjectContext);
  v2 = async function pointer to MTPodcastEpisodeLimit.persistentIDsForAutoDownloadEpisodesExcludedByGlobalLimit(in:)[1];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_D5CB4;
  v4 = v0[2];

  return MTPodcastEpisodeLimit.persistentIDsForAutoDownloadEpisodesExcludedByGlobalLimit(in:)(v1, v4);
}

uint64_t sub_D5CB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 40);
    v9 = *(v3 + 48);

    return _swift_task_switch(sub_D5DF8, v8, v9);
  }
}

uint64_t sub_D5DF8()
{
  v26 = v1;
  v2 = *(v1 + 64);
  v3 = *(v2 + 16);
  v4 = *(v1 + 24);
  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  while (v3 != v5)
  {
    if (v5 >= *(v2 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v7 = *(v2 + 32 + 8 * v5++);
    if ([*(v1 + 24) itemExistsWithPersistentID:v7])
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v0 = &v25;
        sub_15D38(0, v6[2] + 1, 1);
        v6 = v25;
      }

      v10 = v6[2];
      v9 = v6[3];
      v11 = v10 + 1;
      if (v10 >= v9 >> 1)
      {
        v0 = &v25;
        sub_15D38((v9 > 1), v10 + 1, 1);
        v11 = v10 + 1;
        v6 = v25;
      }

      v6[2] = v11;
      v6[v10 + 4] = v7;
    }
  }

  v12 = *(v1 + 64);
  v0 = *(v1 + 24);

  v13 = _swiftEmptyArrayStorage;
  v25 = _swiftEmptyArrayStorage;
  v14 = v6[2];
  v15 = v0;
  v16 = 0;
  while (v14 != v16)
  {
    if (v16 >= v6[2])
    {
      goto LABEL_24;
    }

    v17 = v16 + 1;
    v18 = [*(v1 + 24) itemWithPersistentID:v6[v16 + 4]];
    v16 = v17;
    if (v18)
    {
      sub_E71D4();
      if (*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v25 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v19 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
        sub_E7214();
      }

      v0 = &v25;
      sub_E7274();
      v13 = v25;
      v16 = v17;
    }
  }

  v0 = *(v1 + 24);

  v20._rawValue = v13;
  v21 = sub_E74F4(v20);
  if (v21 < 0)
  {
    goto LABEL_25;
  }

  v0 = v21;
  if (!(v13 >> 62))
  {
    v22 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));

    goto LABEL_20;
  }

LABEL_26:
  v22 = sub_E7AC4();

  if (v22 < 0)
  {
    __break(1u);
    return result;
  }

LABEL_20:
  v23 = *(v1 + 8);

  return v23(v0, v22);
}

uint64_t sub_D6074(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *v1;
  v4 = sub_E6974();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_E60F4();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_E59C4();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider);
  v14 = sub_E7294();
  v2[15] = v14;
  v2[16] = v13;

  return _swift_task_switch(sub_D6270, v14, v13);
}

uint64_t sub_D6270()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_managedObjectContext);
  v2 = async function pointer to MTPodcastEpisodeLimit.assetURLsForAutoDownloadEpisodesExcludedByGlobalLimit(in:)[1];
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_D6318;
  v4 = v0[3];

  return MTPodcastEpisodeLimit.assetURLsForAutoDownloadEpisodesExcludedByGlobalLimit(in:)(v1, v4);
}

uint64_t sub_D6318(uint64_t a1)
{
  v3 = *(*v2 + 136);
  v4 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {
    v6 = v4[13];
    v5 = v4[14];
    v7 = v4[10];
    v8 = v4[7];

    v9 = v4[1];

    return v9();
  }

  else
  {
    v11 = v4[15];
    v12 = v4[16];

    return _swift_task_switch(sub_D647C, v11, v12);
  }
}

void sub_D647C()
{
  v48 = v0;
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v45 = v0[12];
    v41 = (v0[6] + 8);
    v38 = (v0[9] + 8);
    v4 = v0[19];
    v44 = (v45 + 8);
    v43 = 0;
    v37 = *(v1 + 16);
    v42 = v0[18];
    while (v3 < *(v1 + 16))
    {
      v6 = v0[10];
      v7 = *(v45 + 16);
      v7(v0[14], v0[18] + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v3, v0[11]);
      sub_E5964();
      if (v4)
      {
        v8 = v0[13];
        v9 = v0[14];
        v10 = v0[11];
        v11 = v0[7];
        sub_E6954();
        v7(v8, v9, v10);
        swift_errorRetain();
        v12 = sub_E6964();
        v13 = sub_E74B4();

        v14 = os_log_type_enabled(v12, v13);
        v15 = v0[13];
        v46 = v0[11];
        v16 = v0[7];
        v17 = v0[5];
        if (v14)
        {
          v40 = v0[7];
          v18 = swift_slowAlloc();
          v47[0] = swift_slowAlloc();
          *v18 = 136315394;
          v0[2] = v4;
          swift_errorRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
          v19 = sub_E7084();
          v39 = v17;
          v21 = sub_23E64(v19, v20, v47);

          *(v18 + 4) = v21;
          *(v18 + 12) = 2080;
          v22 = sub_E5974();
          v24 = v23;
          v5 = *v44;
          (*v44)(v15, v46);
          v25 = sub_23E64(v22, v24, v47);
          v2 = v37;

          *(v18 + 14) = v25;
          _os_log_impl(&dword_0, v12, v13, "Failed to compute file size of file (%s: '%s'", v18, 0x16u);
          swift_arrayDestroy();

          (*v41)(v40, v39);
        }

        else
        {

          v5 = *v44;
          (*v44)(v15, v46);
          (*v41)(v16, v17);
        }

        v1 = v42;
      }

      else
      {
        v26 = v0[10];
        v27 = v0[8];
        v28 = sub_E60E4();
        (*v38)(v26, v27);
        v29 = __CFADD__(v43, v28);
        v43 += v28;
        if (v29)
        {
          goto LABEL_18;
        }

        v5 = *v44;
      }

      ++v3;
      v5(v0[14], v0[11]);
      v4 = 0;
      if (v2 == v3)
      {
        v30 = v0[18];
        v31 = v43;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    v31 = 0;
LABEL_14:
    v32 = v0[13];
    v33 = v0[14];
    v34 = v0[10];
    v35 = v0[7];

    v36 = v0[1];

    v36(v31, v2);
  }
}

uint64_t RemoveOlderDownloadsTipProvider.deinit()
{
  sub_110AC(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimit, &qword_131A48, &qword_F5C30);
  v1 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimitStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131A70, &unk_F5C48);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_streamContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A68, &qword_F5C40);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_storageRecommendationPublisher);

  v6 = *(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeSubject);

  v7 = *(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider__globalAutomaticDownloadLimit);

  v8 = *(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider__ignoredConsumedSpaceQuantity);

  v9 = *(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider__lastDismissedRestoreToken);

  v10 = *(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider__lastDismissedOSVersion);

  v11 = *(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_observersTask);

  v12 = *(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_objectGraph);

  sub_D6A30(*(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider____lazy_storage___mediaLibrary));

  v13 = *(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_mediaSpaceCalculator);

  sub_110AC(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_spaceDistribution, &qword_131B38, &qword_F5CA8);
  v14 = *(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider____lazy_storage___restoreToken + 8);

  return v0;
}

void sub_D6A30(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

uint64_t RemoveOlderDownloadsTipProvider.__deallocating_deinit()
{
  RemoveOlderDownloadsTipProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t RemoveOlderDownloadsTipProvider.tips.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131B40, &qword_F5CB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_storageRecommendationPublisher;
  result = swift_beginAccess();
  v8 = *(v0 + v6);
  if (v8)
  {
    v10 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131B48, &unk_F5CB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
    sub_3C2A0(&qword_131B58, &unk_131B48, &unk_F5CB8);
    sub_E6AC4();

    sub_3C2A0(&qword_131B60, &qword_131B40, &qword_F5CB0);
    v9 = sub_E6A74();
    (*(v2 + 8))(v5, v1);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_D6C80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A48, &qword_F5C30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_E5C84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26324(a1, v7, &qword_131A48, &qword_F5C30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_110AC(v7, &qword_131A48, &qword_F5C30);
    result = sub_B18B8(_swiftEmptyArrayStorage);
    v14 = result;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131CB0, &qword_F5C20);
    inited = swift_initStackObject();
    v18 = xmmword_E87F0;
    *(inited + 16) = xmmword_E87F0;
    *(inited + 32) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCA8, &qword_EA4D0);
    v16 = swift_allocObject();
    *(v16 + 16) = v18;
    *(v16 + 56) = type metadata accessor for RemoveOlderDownloadsTip();
    *(v16 + 64) = sub_D173C(&unk_131CC0, type metadata accessor for RemoveOlderDownloadsTip);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));
    (*(v9 + 16))(boxed_opaque_existential_1, v12, v8);
    *(inited + 40) = v16;
    v14 = sub_B18B8(inited);
    swift_setDeallocating();
    sub_110AC(inited + 32, qword_131A30, &qword_F5F80);
    result = (*(v9 + 8))(v12, v8);
  }

  *a2 = v14;
  return result;
}

uint64_t sub_D6F34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131B40, &qword_F5CB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - v4;
  v6 = *v0;
  v7 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_storageRecommendationPublisher;
  result = swift_beginAccess();
  v9 = *(v6 + v7);
  if (v9)
  {
    v11 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131B48, &unk_F5CB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
    sub_3C2A0(&qword_131B58, &unk_131B48, &unk_F5CB8);
    sub_E6AC4();

    sub_3C2A0(&qword_131B60, &qword_131B40, &qword_F5CB0);
    v10 = sub_E6A74();
    (*(v2 + 8))(v5, v1);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_D7120@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimit;
  swift_beginAccess();
  return sub_26324(v3 + v4, a2, &qword_131A48, &qword_F5C30);
}

void sub_D7198()
{
  sub_D7424(319, &qword_131BA0, &type metadata accessor for EpisodeLimitRecommendation);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_D73B8(319, &qword_131BA8, &type metadata accessor for AsyncStream);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_D73B8(319, &qword_131BB0, &type metadata accessor for AsyncStream.Continuation);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_D7424(319, &unk_131BB8, &type metadata accessor for MediaSpaceCalculator.MediaSpaceDistribution);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_D73B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131A48, &qword_F5C30);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_D7424(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_E7814();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_D74CC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_D74FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5E10;

  return sub_D1884(a1, v5, v4);
}

uint64_t sub_D75A8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_588C;

  return sub_D2728(a1, v1);
}

uint64_t sub_D7644(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5E10;

  return sub_D2ED4(a1, v4, v5, v6);
}

uint64_t sub_D76F8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_5E10;

  return sub_D3120(a1, a2, v2);
}

id sub_D77A0(id result)
{
  if (result != &dword_0 + 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_D77B0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_5E10;

  return sub_D29E4(a1, v1);
}

uint64_t sub_D7848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131B38, &qword_F5CA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_D78B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_5E10;

  return sub_D1AE4(a1, v1);
}

uint64_t sub_D7950(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_588C;

  return sub_D0F20(a1, v4, v5, v6);
}

void *sub_D7A14(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_E7A14();
    v4 = -1 << *(v1 + 32);
    v30 = v1 + 64;
    v5 = sub_E7884();
    v6 = *(v1 + 36);
    v27 = objc_opt_self();
    result = objc_opt_self();
    v26 = result;
    v7 = 0;
    v25 = v1 + 72;
    v28 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v30 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_23;
      }

      v29 = v7;
      v10 = v2;
      v11 = *(*(v1 + 48) + 8 * v5);
      v12 = *(*(v1 + 56) + 8 * v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_E9EE0;
      v14 = v11;
      *(v13 + 32) = [v27 predicateForEpisodesDeterminedByLimitSettings:v12];
      *(v13 + 40) = [v27 predicateForAllEpisodesOnPodcast:v14];
      sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
      isa = sub_E71E4().super.isa;

      v16 = [v26 andPredicateWithSubpredicates:isa];

      sub_E79E4();
      v17 = _swiftEmptyArrayStorage[2];
      sub_E7A24();
      v1 = v28;
      sub_E7A34();
      result = sub_E79F4();
      v8 = 1 << *(v28 + 32);
      if (v5 >= v8)
      {
        goto LABEL_24;
      }

      v18 = *(v30 + 8 * v9);
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      if (v6 != *(v28 + 36))
      {
        goto LABEL_26;
      }

      v2 = v10;
      v19 = v18 & (-2 << (v5 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1E32C(v5, v6, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_18;
          }
        }

        result = sub_1E32C(v5, v6, 0);
LABEL_18:
        v1 = v28;
      }

      v7 = v29 + 1;
      v5 = v8;
      if (v29 + 1 == v10)
      {
        return _swiftEmptyArrayStorage;
      }
    }

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

  return result;
}

uint64_t RestorePurgedEpisodesTipProvider.__allocating_init(asPartOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RestorePurgedEpisodesTipProvider.init(asPartOf:)(a1);
  return v2;
}

void *RestorePurgedEpisodesTipProvider.init(asPartOf:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v58 = &v53 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D28, &qword_F5E88);
  v66 = *(v63 - 8);
  v6 = *(v66 + 64);
  __chkstk_darwin(v63);
  v59 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D30, &qword_F5E90);
  v9 = *(v8 - 8);
  v64 = v8;
  v65 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v60 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D38, &qword_F5E98);
  v13 = *(v12 - 8);
  v67 = v12;
  v68 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v61 = &v53 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D40, &qword_F5EA0);
  v17 = *(v16 - 8);
  v69 = v16;
  v70 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v62 = &v53 - v19;
  v20 = sub_E7534();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[4] = 0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131D48, &qword_F5EA8);
  v25 = *(v54 + 48);
  v26 = *(v54 + 52);
  swift_allocObject();
  v27 = sub_E69D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v56 = a1;
  sub_E6DA4();
  v28 = [v71 privateQueueContext];
  swift_unknownObjectRelease();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D58, &unk_F5EB0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v1[2] = sub_E69F4();
  v1[5] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131790, &qword_F5A90);
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 16) = 0;
  v1[6] = v32;
  v1[3] = v27;
  sub_4ABC(0, &qword_12CE20, NSUserDefaults_ptr);
  (*(v21 + 104))(v24, enum case for NSUserDefaults.Name.shared(_:), v20);
  sub_C7B2C(&qword_12D040, &qword_12CE20, NSUserDefaults_ptr);
  v57 = v28;
  v55 = v27;

  sub_E6DB4();
  (*(v21 + 8))(v24, v20);
  v1[7] = v71;
  v33 = v1;
  v71 = v27;
  v34 = sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v35 = sub_E7584();
  v75 = v35;
  v36 = sub_E7594();
  v37 = v58;
  (*(*(v36 - 8) + 56))(v58, 1, 1, v36);
  v38 = sub_3C2A0(&unk_131D60, &unk_131D48, &qword_F5EA8);
  v39 = sub_C7B2C(&qword_1317B0, &qword_1317A0, OS_dispatch_queue_ptr);
  v40 = v59;
  v41 = v54;
  sub_E6A54();
  sub_110AC(v37, &qword_131D20, "Ju");

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D70, &unk_F5EC0);
  v71 = v41;
  v72 = v34;
  v73 = v38;
  v74 = v39;
  swift_getOpaqueTypeConformance2();
  v42 = v60;
  v43 = v63;
  sub_E6AC4();
  (*(v66 + 8))(v40, v43);
  v44 = sub_3C2A0(&qword_131D78, &qword_131D30, &qword_F5E90);
  v45 = v61;
  v46 = v64;
  sub_E6A64();
  (*(v65 + 8))(v42, v46);
  swift_allocObject();
  swift_weakInit();

  v71 = v46;
  v72 = v44;
  swift_getOpaqueTypeConformance2();
  v47 = v67;
  v48 = v62;
  sub_E6A84();

  (*(v68 + 8))(v45, v47);

  sub_3C2A0(&unk_131D80, &qword_131D40, &qword_F5EA0);
  v49 = v69;
  v50 = sub_E6A74();

  (*(v70 + 8))(v48, v49);
  v51 = v33[4];
  v33[4] = v50;

  return v33;
}

uint64_t sub_D85B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = &type metadata for RestorePurgedEpisodesTip;
    v5 = sub_DB4F8();
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  v16[0] = v3;
  v16[3] = v4;
  v16[4] = v5;

  sub_DB488(v16, &v13);
  v10[0] = v13;
  v10[1] = v14;
  v11 = v15;
  if (*(&v14 + 1))
  {
    sub_4524(v10, v12);
    v6 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_23C14(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = sub_23C14((v7 > 1), v8 + 1, 1, v6);
    }

    v6[2] = v8 + 1;
    sub_4524(v12, &v6[5 * v8 + 4]);
  }

  else
  {
    sub_110AC(v10, &qword_131F10, &unk_F5FE0);
    v6 = _swiftEmptyArrayStorage;
  }

  result = sub_110AC(v16, &qword_131F10, &unk_F5FE0);
  *a2 = v6;
  return result;
}

uint64_t sub_D8710()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D8748()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 48);
    os_unfair_lock_lock((v1 + 24));
    sub_DB214((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
  }

  return result;
}

uint64_t sub_D87F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v40 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131E80, &qword_F5F88);
  v51 = *(v49 - 8);
  v5 = *(v51 + 64);
  __chkstk_darwin(v49);
  v41 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131E88, &qword_F5F90);
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v47 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131E90, &qword_F5F98);
  v12 = *(v11 - 8);
  v54 = v11;
  v55 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v48 = &v40 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131E98, &qword_F5FA0);
  v16 = *(v15 - 8);
  v56 = v15;
  v57 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v50 = &v40 - v18;
  v19 = *(v0 + 16);
  v46 = v0;
  v58 = v19;
  v20 = sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);

  v21 = sub_E7584();
  v62 = v21;
  v44 = sub_E7594();
  v22 = *(v44 - 8);
  v43 = *(v22 + 56);
  v45 = v22 + 56;
  v43(v4, 1, 1, v44);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D58, &unk_F5EB0);
  v24 = sub_3C2A0(&qword_131EA0, &qword_131D58, &unk_F5EB0);
  v25 = sub_C7B2C(&qword_1317B0, &qword_1317A0, OS_dispatch_queue_ptr);
  sub_E6A54();
  sub_110AC(v4, &qword_131D20, "Ju");

  v26 = *(v0 + 40);
  *(swift_allocObject() + 16) = v26;
  v27 = v26;
  sub_E69B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EA8, &qword_F5FA8);
  v58 = v23;
  v59 = v20;
  v60 = v24;
  v61 = v25;
  v42 = &opaque type descriptor for <<opaque return type of Publisher.receiveAndSubscribe<A>(on:options:)>>;
  swift_getOpaqueTypeConformance2();
  sub_3C2A0(&qword_131EB0, &qword_131EA8, &qword_F5FA8);
  v28 = v47;
  v29 = v49;
  v30 = v41;
  sub_E6B54();

  (*(v51 + 8))(v30, v29);
  v31 = sub_E7584();
  v58 = v31;
  v43(v4, 1, 1, v44);
  v32 = sub_3C2A0(&qword_131EB8, &qword_131E88, &qword_F5F90);
  v33 = v48;
  v34 = v52;
  sub_E6A54();
  sub_110AC(v4, &qword_131D20, "Ju");

  (*(v53 + 8))(v28, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EC0, &qword_F5FB0);
  v58 = v34;
  v59 = v20;
  v60 = v32;
  v61 = v25;
  swift_getOpaqueTypeConformance2();
  v35 = v50;
  v36 = v54;
  sub_E6AC4();
  (*(v55 + 8))(v33, v36);
  sub_3C2A0(&qword_131EC8, &qword_131E98, &qword_F5FA0);

  v37 = v56;
  v38 = sub_E6B44();

  (*(v57 + 8))(v35, v37);
  return v38;
}

uint64_t sub_D8ED0@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EA8, &qword_F5FA8);
  v8 = sub_E7324();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  *(swift_allocObject() + 16) = a1;
  v9 = a1;
  result = sub_E6A34();
  *a2 = result;
  return result;
}

uint64_t sub_D8FF4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v4 = sub_E6974();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[7] = v7;
  *v7 = v2;
  v7[1] = sub_D90E8;

  return sub_D946C(a2);
}

uint64_t sub_D90E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_D927C;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_D9210;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_D9210()
{
  v1 = *(v0 + 48);
  **(v0 + 24) = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_D927C()
{
  v22 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  sub_E6954();
  swift_errorRetain();
  v3 = sub_E6964();
  v4 = sub_E74B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = *(v0 + 32);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    *(v0 + 16) = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
    v11 = sub_E7084();
    v13 = sub_23E64(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "Failed to fetch purged episodes: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v15 = *(v0 + 40);
    v14 = *(v0 + 48);
    v16 = *(v0 + 32);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 64);

  v18 = *(v0 + 48);
  **(v0 + 24) = _swiftEmptyArrayStorage;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_D946C(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_E7724();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = sub_E5AB4();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = sub_E5AC4();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v12 = sub_E5A54();
  v1[16] = v12;
  v13 = *(v12 - 8);
  v1[17] = v13;
  v14 = *(v13 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_D9690, 0, 0);
}

uint64_t sub_D9690()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 88);
  v42 = *(v0 + 96);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  sub_E5AA4();
  (*(v8 + 104))(v7, enum case for Calendar.Component.day(_:), v9);
  sub_E5A44();
  sub_E5A84();
  v10 = *(v2 + 8);
  *(v0 + 160) = v10;
  *(v0 + 168) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v3);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v5, v42);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    sub_110AC(*(v0 + 120), &qword_131EE0, &unk_F5BE0);
    sub_DB364();
    swift_allocError();
    swift_willThrow();
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 88);
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 64);
    v21 = *(v0 + 40);
    v22 = *(v0 + 48);
    v23 = *(v0 + 32);
    (*(*(v0 + 136) + 32))(*(v0 + 152), *(v0 + 120), *(v0 + 128));
    *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_E9EE0;
    *(v24 + 32) = [objc_opt_self() predicateForDownloadBehavior:5];
    v25 = kEpisodeLastCacheDeletePurge;
    isa = sub_E5A24().super.isa;
    v27 = [objc_opt_self() predicateForDateKey:v25 isGreaterThanDate:isa];

    *(v24 + 40) = v27;
    *(v0 + 184) = sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
    v28 = sub_E71E4().super.isa;

    v29 = objc_opt_self();
    *(v0 + 192) = v29;
    v30 = [v29 andPredicateWithSubpredicates:v28];
    *(v0 + 200) = v30;

    v31 = kMTEpisodeEntityName;
    *(v0 + 208) = kMTEpisodeEntityName;
    v32 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v31];
    *(v0 + 216) = v32;
    [v32 setPredicate:v30];
    v33 = swift_allocObject();
    *(v0 + 224) = v33;
    *(v33 + 16) = v23;
    *(v33 + 24) = v32;
    *(v0 + 312) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
    v34 = *(v22 + 104);
    *(v0 + 232) = v34;
    *(v0 + 240) = (v22 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v34(v20);
    v35 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
    v36 = v23;
    v37 = v32;
    v38 = swift_task_alloc();
    *(v0 + 248) = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131EF0, &qword_F5FD8);
    *v38 = v0;
    v38[1] = sub_D9B18;
    v40 = *(v0 + 64);
    v41 = *(v0 + 32);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 16, v40, sub_DB3F8, v33, v39);
  }
}

uint64_t sub_D9B18()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  v2[32] = v0;

  v5 = v2[28];
  if (v0)
  {
    v6 = v2[25];
    v7 = v2[8];
    v8 = v2[5];
    v9 = v2[6];

    (*(v9 + 8))(v7, v8);
    v10 = sub_DA1F0;
  }

  else
  {
    v11 = v2[8];
    v12 = v2[5];
    v13 = v2[6];
    v14 = *(v13 + 8);
    v2[33] = v14;
    v2[34] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v11, v12);

    v10 = sub_D9CAC;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_D9CAC()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 176);
  v5 = sub_D7A14(*(v0 + 16));

  v6 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v2];
  *(v0 + 280) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_E9EE0;
  *(v7 + 32) = v3;
  if (v5 >> 62)
  {
    v25 = *(v0 + 184);

    sub_E7A74();
  }

  else
  {

    sub_E7BE4();
  }

  v28 = *(v0 + 232);
  v29 = *(v0 + 240);
  v27 = *(v0 + 312);
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  v10 = *(v0 + 56);
  v12 = *(v0 + 32);
  v11 = *(v0 + 40);

  isa = sub_E71E4().super.isa;

  v14 = [v8 orPredicateWithSubpredicates:isa];

  *(v7 + 40) = v14;
  v15 = sub_E71E4().super.isa;

  v16 = [v8 andPredicateWithSubpredicates:v15];

  [v6 setPredicate:v16];
  [v6 setResultType:1];
  v17 = swift_allocObject();
  *(v0 + 288) = v17;
  *(v17 + 16) = v12;
  *(v17 + 24) = v6;
  v28(v10, v27, v11);
  v18 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v19 = v12;
  v20 = v6;
  v21 = swift_task_alloc();
  *(v0 + 296) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130940, &qword_F35E0);
  *v21 = v0;
  v21[1] = sub_D9F64;
  v23 = *(v0 + 56);
  v24 = *(v0 + 32);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 24, v23, sub_DB414, v17, v22);
}

uint64_t sub_D9F64()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 288);
  v6 = *(v2 + 272);
  (*(v2 + 264))(*(v2 + 56), *(v2 + 40));

  if (v0)
  {
    v7 = sub_DA2D0;
  }

  else
  {
    v7 = sub_DA0F0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_DA0F0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 112);
  v13 = *(v0 + 88);
  v14 = *(v0 + 64);
  v15 = *(v0 + 56);

  v3(v6, v7);
  v10 = *(v0 + 24);

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_DA1F0()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);

  v3(v4, v5);
  v6 = *(v0 + 256);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 88);
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_DA2D0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);

  v4(v5, v6);
  v7 = *(v0 + 304);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v12 = *(v0 + 88);
  v14 = *(v0 + 56);
  v13 = *(v0 + 64);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_DA3B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130940, &qword_F35E0);
  sub_3C2A0(&qword_1319A8, &qword_130940, &qword_F35E0);
  result = sub_E7404();
  if (result)
  {
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t RestorePurgedEpisodesTipProvider.tips.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131740, &unk_F5A60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = __chkstk_darwin(v1);
  v6 = v8 - v5;
  if (*(v0 + 32))
  {
    v8[1] = *(v0 + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131D90, &unk_F5ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
    sub_3C2A0(&unk_131DA0, &unk_131D90, &unk_F5ED0);
    sub_E6AC4();

    sub_3C2A0(&unk_131760, &unk_131740, &unk_F5A60);
    v7 = sub_E6A74();
    (*(v2 + 8))(v6, v1);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_DA634@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131CB0, &qword_F5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_E87F0;
  *(inited + 32) = 5;
  v5 = inited + 32;
  *(inited + 40) = v3;
  v6 = sub_B18B8(inited);
  swift_setDeallocating();

  result = sub_110AC(v5, qword_131A30, &qword_F5F80);
  *a2 = v6;
  return result;
}

uint64_t RestorePurgedEpisodesTipProvider.requestRefresh(for:)(uint64_t a1)
{
  result = sub_C6FB8(5u, a1);
  if (result)
  {
    v3 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D58, &unk_F5EB0);
    sub_3C2A0(&qword_131DB0, &qword_131D58, &unk_F5EB0);
    return sub_E6A44();
  }

  return result;
}

uint64_t RestorePurgedEpisodesTipProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  return v0;
}

uint64_t RestorePurgedEpisodesTipProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_DA814()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131740, &unk_F5A60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = __chkstk_darwin(v1);
  v6 = v8 - v5;
  if (*(*v0 + 32))
  {
    v8[1] = *(*v0 + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131D90, &unk_F5ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
    sub_3C2A0(&unk_131DA0, &unk_131D90, &unk_F5ED0);
    sub_E6AC4();

    sub_3C2A0(&unk_131760, &unk_131740, &unk_F5A60);
    v7 = sub_E6A74();
    (*(v2 + 8))(v6, v1);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_DA9E4(uint64_t a1)
{
  v2 = *v1;
  result = sub_C6FB8(5u, a1);
  if (result)
  {
    v4 = *(v2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D58, &unk_F5EB0);
    sub_3C2A0(&qword_131DB0, &qword_131D58, &unk_F5EB0);
    return sub_E6A44();
  }

  return result;
}

uint64_t sub_DAAC4@<X0>(unint64_t *a1@<X8>)
{
  sub_4ABC(0, &qword_131F00, MTEpisode_ptr);
  result = sub_E7734();
  if (!v1)
  {
    v4 = result;
    v5 = sub_B19C8(_swiftEmptyArrayStorage);
    v11 = v5;
    if (v4 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_E7AC4())
    {
      v5 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = sub_E79B4();
        }

        else
        {
          if (v5 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_15;
          }

          v7 = *(v4 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v10 = v7;
        sub_DAC3C(&v11, &v10);

        ++v5;
        if (v9 == i)
        {
          v5 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_12:

    *a1 = v5;
  }

  return result;
}

void sub_DAC3C(uint64_t *a1, id *a2)
{
  v5 = sub_E59C4();
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_E6974();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = [*a2 podcast];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 objectID];
    v18 = [v16 episodeLimitResolvedValue];
    v19 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = *a1;
    sub_E3DB8(v18, v17, isUniquelyReferenced_nonNull_native);

    *a1 = v51;
  }

  else
  {
    v47 = v8;
    v48 = v9;
    v21 = v10;
    v49 = v2;
    sub_E6954();
    v22 = v14;
    v23 = sub_E6964();
    v24 = sub_E74B4();

    if (os_log_type_enabled(v23, v24))
    {
      v45 = v24;
      v46 = v23;
      v25 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v51 = v44;
      v26 = v25;
      *v25 = 136315394;
      v27 = [v22 uuid];
      v28 = v21;
      if (v27)
      {
        v29 = v27;
        v30 = sub_E7064();
        v32 = v31;
      }

      else
      {
        v32 = 0xE700000000000000;
        v30 = 0x44495555206F4ELL;
      }

      v33 = v5;
      v34 = sub_23E64(v30, v32, &v51);

      *(v26 + 1) = v34;
      *(v26 + 6) = 2080;
      v35 = [v22 objectID];
      v36 = [v35 URIRepresentation];

      v37 = v47;
      sub_E5994();

      sub_DB430();
      v38 = sub_E7BB4();
      v40 = v39;
      (*(v50 + 8))(v37, v33);
      v41 = sub_23E64(v38, v40, &v51);

      *(v26 + 14) = v41;
      v42 = v46;
      _os_log_impl(&dword_0, v46, v45, "Unexpectedly found episode without a show: %s | %s", v26, 0x16u);
      swift_arrayDestroy();

      (*(v28 + 8))(v13, v48);
    }

    else
    {

      (*(v21 + 8))(v13, v48);
    }
  }
}

unint64_t sub_DB04C@<X0>(void *a1@<X8>)
{
  sub_4ABC(0, &qword_12E090, NSManagedObjectID_ptr);
  result = sub_E7734();
  if (!v1)
  {
    v4 = result;
    if (result >> 62)
    {
      goto LABEL_17;
    }

    for (i = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)); i; i = sub_E7AC4())
    {
      v12 = a1;
      result = sub_15D58(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v6 = 0;
      a1 = (&dword_0 + 1);
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = sub_E79B4();
          goto LABEL_11;
        }

        if ((v6 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v6 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v7 = *(v4 + 8 * v6 + 32);
LABEL_11:
        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        if (v9 >= v8 >> 1)
        {
          v11 = v7;
          sub_15D58((v8 > 1), v9 + 1, 1);
          v7 = v11;
        }

        ++v6;
        _swiftEmptyArrayStorage[2] = v9 + 1;
        v10 = &_swiftEmptyArrayStorage[3 * v9];
        v10[4] = v7;
        v10[5] = 0;
        *(v10 + 48) = 1;
        if (i == v6)
        {

          *v12 = _swiftEmptyArrayStorage;
          return result;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    *a1 = _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_DB214(void *result)
{
  if (!*result)
  {
    v1 = result;
    result = sub_D87F0();
    *v1 = result;
  }

  return result;
}

uint64_t sub_DB24C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_DB28C(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v4 = *a1;
  return sub_E69C4();
}

uint64_t sub_DB2C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_588C;

  return sub_D8FF4(a1, v4);
}

unint64_t sub_DB364()
{
  result = qword_131EE8;
  if (!qword_131EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131EE8);
  }

  return result;
}

uint64_t sub_DB3B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_DB3F8@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_DAAC4(a1);
}

unint64_t sub_DB414@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_DB04C(a1);
}

unint64_t sub_DB430()
{
  result = qword_131F08;
  if (!qword_131F08)
  {
    sub_E59C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131F08);
  }

  return result;
}

uint64_t sub_DB488(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F10, &unk_F5FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_DB4F8()
{
  result = qword_131F18;
  if (!qword_131F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131F18);
  }

  return result;
}

unint64_t sub_DB560()
{
  result = qword_131F20;
  if (!qword_131F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131F20);
  }

  return result;
}

uint64_t StayUpToDateTipProvider.__allocating_init(asPartOf:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  StayUpToDateTipProvider.init(asPartOf:)(a1);
  return v5;
}

uint64_t StayUpToDateTipProvider.init(asPartOf:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v57 = &v55 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F58, &qword_F60C8);
  v59 = *(v62 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v62);
  v58 = &v55 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F60, &qword_F60D0);
  v61 = *(v63 - 8);
  v9 = *(v61 + 64);
  __chkstk_darwin(v63);
  v60 = &v55 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F68, &qword_F60D8);
  v65 = *(v67 - 8);
  v11 = *(v65 + 64);
  __chkstk_darwin(v67);
  v64 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F70, &qword_F60E0);
  v68 = *(v13 - 8);
  v69 = v13;
  v14 = *(v68 + 64);
  __chkstk_darwin(v13);
  v66 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F78, &qword_F60E8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v55 - v18;
  v20 = sub_E7534();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipPublisher) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  sub_E6DA4();
  v25 = [v71 privateQueueContext];
  swift_unknownObjectRelease();
  *(v1 + 16) = v25;
  sub_4ABC(0, &qword_12CE20, NSUserDefaults_ptr);
  (*(v21 + 104))(v24, enum case for NSUserDefaults.Name.shared(_:), v20);
  sub_C7B2C(&qword_12D040, &qword_12CE20, NSUserDefaults_ptr);
  v26 = v25;
  v70 = a1;
  sub_E6DB4();
  (*(v21 + 8))(v24, v20);
  *(v1 + 24) = v71;
  sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);
  v56 = v26;
  sub_E76E4();
  sub_DBF28(v19, v1 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_databasePublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131790, &qword_F5A90);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_observerSubscription) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_refreshSubject) = sub_E69D4();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FB0, &qword_F60F0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_E69D4();
  *(v1 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipSubject) = v34;
  v71 = v34;
  v35 = qword_12CD20;
  v55 = v34;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = qword_131F30;
  v75 = qword_131F30;
  v37 = sub_E7594();
  v38 = v57;
  (*(*(v37 - 8) + 56))(v57, 1, 1, v37);
  v39 = sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v40 = sub_3C2A0(&qword_131FC8, &qword_131FB0, &qword_F60F0);
  v41 = sub_C7B2C(&qword_1317B0, &qword_1317A0, OS_dispatch_queue_ptr);
  v42 = v36;
  v43 = v58;
  sub_E6A54();
  sub_110AC(v38, &qword_131D20, "Ju");

  v71 = v31;
  v72 = v39;
  v73 = v40;
  v74 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v60;
  v46 = v62;
  sub_E6A64();
  (*(v59 + 8))(v43, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D70, &unk_F5EC0);
  v71 = v46;
  v72 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v47 = v63;
  v48 = v64;
  sub_E6AC4();
  (*(v61 + 8))(v45, v47);
  swift_allocObject();
  swift_weakInit();
  sub_3C2A0(&qword_131FD0, &qword_131F68, &qword_F60D8);

  v49 = v67;
  v50 = v66;
  sub_E6A84();

  (*(v65 + 8))(v48, v49);

  sub_3C2A0(&qword_131FD8, &qword_131F70, &qword_F60E0);
  v51 = v69;
  v52 = sub_E6A74();

  (*(v68 + 8))(v50, v51);
  v53 = *(v2 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipPublisher);
  *(v2 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipPublisher) = v52;

  return v2;
}

uint64_t sub_DBF28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F78, &qword_F60E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_DBF98@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  if (*a1 == 1)
  {
    v3 = 0;
    v4 = 0;
    memset(v15, 0, sizeof(v15));
  }

  else
  {
    v3 = &type metadata for StayUpToDateTip;
    v4 = sub_DF0B4();
  }

  v16 = v3;
  v17 = v4;
  sub_26324(v15, &v12, &qword_131F10, &unk_F5FE0);
  v9[0] = v12;
  v9[1] = v13;
  v10 = v14;
  if (*(&v13 + 1))
  {
    sub_4524(v9, v11);
    v5 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_23C14(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v7 = v5[2];
    v6 = v5[3];
    if (v7 >= v6 >> 1)
    {
      v5 = sub_23C14((v6 > 1), v7 + 1, 1, v5);
    }

    v5[2] = v7 + 1;
    sub_4524(v11, &v5[5 * v7 + 4]);
  }

  else
  {
    sub_110AC(v9, &qword_131F10, &unk_F5FE0);
    v5 = _swiftEmptyArrayStorage;
  }

  result = sub_110AC(v15, &qword_131F10, &unk_F5FE0);
  *a2 = v5;
  return result;
}

uint64_t sub_DC100()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_observerSubscription);
    os_unfair_lock_lock((v1 + 24));
    sub_DEEE8((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
  }

  return result;
}

uint64_t sub_DC184()
{
  sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  result = sub_E7584();
  qword_131F30 = result;
  return result;
}

uint64_t sub_DC1C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_DC208()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1320C8, &qword_F6170);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F78, &qword_F60E8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = sub_E6714();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26324(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_databasePublisher, v9, &qword_131F78, &qword_F60E8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_110AC(v9, &qword_131F78, &qword_F60E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1320D0, &qword_F6178);
    sub_E6A14();
    v15 = sub_DD22C(v5);
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v15 = sub_DC494(v14);
    (*(v11 + 8))(v14, v10);
  }

  return v15;
}

uint64_t sub_DC494(uint64_t a1)
{
  v72 = a1;
  v80 = *v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v91 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1320D8, &qword_F6180);
  v83 = *(v5 - 8);
  v84 = v5;
  v6 = *(v83 + 64);
  __chkstk_darwin(v5);
  v82 = &v61 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1320E0, &qword_F6188);
  v86 = *(v88 - 8);
  v8 = *(v86 + 64);
  __chkstk_darwin(v88);
  v85 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1320E8, &qword_F6190);
  v89 = *(v10 - 8);
  v90 = v10;
  v11 = *(v89 + 64);
  __chkstk_darwin(v10);
  v87 = &v61 - v12;
  v62 = sub_E75B4();
  v61 = *(v62 - 8);
  v13 = *(v61 + 64);
  __chkstk_darwin(v62);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1320F0, &qword_F6198);
  v63 = *(v64 - 8);
  v16 = *(v63 + 64);
  __chkstk_darwin(v64);
  v18 = &v61 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1320F8, &qword_F61A0);
  v65 = *(v66 - 8);
  v19 = *(v65 + 64);
  __chkstk_darwin(v66);
  v21 = &v61 - v20;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132100, &qword_F61A8);
  v67 = *(v68 - 8);
  v22 = *(v67 + 64);
  __chkstk_darwin(v68);
  v24 = &v61 - v23;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132108, &qword_F61B0);
  v71 = *(v74 - 8);
  v25 = *(v71 + 64);
  __chkstk_darwin(v74);
  v70 = &v61 - v26;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132110, &qword_F61B8);
  v75 = *(v78 - 8);
  v27 = *(v75 + 64);
  __chkstk_darwin(v78);
  v73 = &v61 - v28;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132118, &qword_F61C0);
  v81 = *(v92 - 8);
  v29 = *(v81 + 64);
  __chkstk_darwin(v92);
  v79 = &v61 - v30;
  sub_E75A4();
  if (qword_12CD20 != -1)
  {
    swift_once();
  }

  v31 = qword_131F30;
  v94 = qword_131F30;
  sub_E6714();
  v76 = sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  sub_DEF20();
  v77 = sub_C7B2C(&qword_1317B0, &qword_1317A0, OS_dispatch_queue_ptr);
  v69 = v31;
  sub_E6B24();
  (*(v61 + 8))(v15, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132128, &qword_F61C8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_E87F0;
  *(v32 + 32) = _swiftEmptyArrayStorage;
  sub_3C2A0(&qword_132130, &qword_1320F0, &qword_F6198);
  v33 = v64;
  sub_E6AF4();

  (*(v63 + 8))(v18, v33);
  sub_3C2A0(&qword_132138, &qword_1320F8, &qword_F61A0);
  v34 = v66;
  sub_E6AC4();
  (*(v65 + 8))(v21, v34);
  v35 = v93;
  v94 = *(v93 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_refreshSubject);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
  sub_3C2A0(&unk_132140, &qword_132100, &qword_F61A8);
  sub_3C2A0(&qword_131910, &qword_131FA0, &qword_F58A0);
  v36 = v70;
  v37 = v68;
  sub_E6AD4();
  (*(v67 + 8))(v24, v37);

  v38 = *(v35 + 16);
  v39 = *(v35 + 24);
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = v38;
  v40[4] = v80;
  v41 = v39;
  v42 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132150, &unk_F61D0);
  sub_3C2A0(&qword_132158, &qword_132108, &qword_F61B0);
  v43 = v73;
  v44 = v74;
  sub_E6AC4();

  (*(v71 + 8))(v36, v44);
  sub_3C2A0(&qword_132160, &qword_132110, &qword_F61B8);
  sub_3C2A0(&qword_132168, &qword_132150, &unk_F61D0);
  v45 = v78;
  v46 = v79;
  sub_E6B54();
  (*(v75 + 8))(v43, v45);
  sub_3C2A0(&qword_132170, &qword_132118, &qword_F61C0);
  sub_DEF84();
  v47 = v82;
  sub_E6B34();
  *(swift_allocObject() + 16) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132188, &qword_F61E0);
  sub_3C2A0(&qword_132190, &qword_1320D8, &qword_F6180);
  v48 = v84;
  v49 = v85;
  sub_E6AC4();

  (*(v83 + 8))(v47, v48);
  v50 = v69;
  v94 = v69;
  v51 = sub_E7594();
  v52 = v91;
  (*(*(v51 - 8) + 56))(v91, 1, 1, v51);
  v53 = sub_3C2A0(&qword_132198, &qword_1320E0, &qword_F6188);
  v55 = v87;
  v54 = v88;
  v56 = v76;
  v57 = v77;
  sub_E6A54();
  sub_110AC(v52, &qword_131D20, "Ju");
  (*(v86 + 8))(v49, v54);

  swift_allocObject();
  swift_weakInit();
  v94 = v54;
  v95 = v56;
  v96 = v53;
  v97 = v57;
  swift_getOpaqueTypeConformance2();
  v58 = v90;
  v59 = sub_E6B44();

  (*(v89 + 8))(v55, v58);
  (*(v81 + 8))(v46, v92);
  return v59;
}

uint64_t sub_DD22C(uint64_t a1)
{
  v71 = a1;
  v79 = *v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v90 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321D0, &qword_F6200);
  v82 = *(v5 - 8);
  v83 = v5;
  v6 = *(v82 + 64);
  __chkstk_darwin(v5);
  v81 = &v60 - v7;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321D8, &qword_F6208);
  v85 = *(v87 - 8);
  v8 = *(v85 + 64);
  __chkstk_darwin(v87);
  v84 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321E0, &qword_F6210);
  v88 = *(v10 - 8);
  v89 = v10;
  v11 = *(v88 + 64);
  __chkstk_darwin(v10);
  v86 = &v60 - v12;
  v61 = sub_E75B4();
  v60 = *(v61 - 8);
  v13 = *(v60 + 64);
  __chkstk_darwin(v61);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321E8, &qword_F6218);
  v62 = *(v63 - 8);
  v16 = *(v62 + 64);
  __chkstk_darwin(v63);
  v18 = &v60 - v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321F0, &qword_F6220);
  v64 = *(v65 - 8);
  v19 = *(v64 + 64);
  __chkstk_darwin(v65);
  v21 = &v60 - v20;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321F8, &qword_F6228);
  v66 = *(v67 - 8);
  v22 = *(v66 + 64);
  __chkstk_darwin(v67);
  v24 = &v60 - v23;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132200, &qword_F6230);
  v70 = *(v73 - 8);
  v25 = *(v70 + 64);
  __chkstk_darwin(v73);
  v69 = &v60 - v26;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132208, &qword_F6238);
  v75 = *(v76 - 8);
  v27 = *(v75 + 64);
  __chkstk_darwin(v76);
  v72 = &v60 - v28;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132210, &qword_F6240);
  v80 = *(v91 - 8);
  v29 = *(v80 + 64);
  __chkstk_darwin(v91);
  v78 = &v60 - v30;
  sub_E75A4();
  if (qword_12CD20 != -1)
  {
    swift_once();
  }

  v93 = qword_131F30;
  v77 = qword_131F30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1320C8, &qword_F6170);
  v68 = sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  sub_3C2A0(&qword_132218, &qword_1320C8, &qword_F6170);
  v74 = sub_C7B2C(&qword_1317B0, &qword_1317A0, OS_dispatch_queue_ptr);
  sub_E6B24();
  (*(v60 + 8))(v15, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132128, &qword_F61C8);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_E87F0;
  *(v31 + 32) = _swiftEmptyArrayStorage;
  sub_3C2A0(&qword_132220, &qword_1321E8, &qword_F6218);
  v32 = v63;
  sub_E6AF4();

  (*(v62 + 8))(v18, v32);
  sub_3C2A0(&qword_132228, &qword_1321F0, &qword_F6220);
  v33 = v65;
  sub_E6AC4();
  (*(v64 + 8))(v21, v33);
  v34 = v92;
  v93 = *(v92 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_refreshSubject);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
  sub_3C2A0(&qword_132230, &qword_1321F8, &qword_F6228);
  sub_3C2A0(&qword_131910, &qword_131FA0, &qword_F58A0);
  v35 = v69;
  v36 = v67;
  sub_E6AD4();
  (*(v66 + 8))(v24, v36);

  v37 = *(v34 + 16);
  v38 = *(v34 + 24);
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = v37;
  v39[4] = v79;
  v40 = v38;
  v41 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132150, &unk_F61D0);
  sub_3C2A0(&qword_132238, &qword_132200, &qword_F6230);
  v42 = v72;
  v43 = v73;
  sub_E6AC4();

  (*(v70 + 8))(v35, v43);
  sub_3C2A0(&qword_132240, &qword_132208, &qword_F6238);
  sub_3C2A0(&qword_132168, &qword_132150, &unk_F61D0);
  v44 = v78;
  v45 = v76;
  sub_E6B54();
  (*(v75 + 8))(v42, v45);
  sub_3C2A0(&qword_132248, &qword_132210, &qword_F6240);
  sub_DEF84();
  v46 = v81;
  sub_E6B34();
  *(swift_allocObject() + 16) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132188, &qword_F61E0);
  sub_3C2A0(&qword_132250, &qword_1321D0, &qword_F6200);
  v47 = v83;
  v48 = v84;
  sub_E6AC4();

  (*(v82 + 8))(v46, v47);
  v49 = v77;
  v93 = v77;
  v50 = sub_E7594();
  v51 = v90;
  (*(*(v50 - 8) + 56))(v90, 1, 1, v50);
  v52 = sub_3C2A0(&unk_132258, &qword_1321D8, &qword_F6208);
  v54 = v86;
  v53 = v87;
  v55 = v68;
  v56 = v74;
  sub_E6A54();
  sub_110AC(v51, &qword_131D20, "Ju");
  (*(v85 + 8))(v48, v53);

  swift_allocObject();
  swift_weakInit();
  v93 = v53;
  v94 = v55;
  v95 = v52;
  v96 = v56;
  swift_getOpaqueTypeConformance2();
  v57 = v89;
  v58 = sub_E6B44();

  (*(v88 + 8))(v54, v57);
  (*(v80 + 8))(v44, v91);
  return v58;
}

uint64_t sub_DDFFC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v22 = a2;
  v24 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321A0, &qword_F61E8);
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321A8, &qword_F61F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  sub_E70E4();
  v15 = sub_E7024();

  v16 = [a1 BOOLForKey:{v15, v22}];

  if (v16 || (sub_E70D4(), v17 = sub_E7024(), , v18 = [a1 BOOLForKey:v17], v17, v18))
  {
    v25 = 0;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132180, &qword_EC5A8);
    sub_E6A04();
    sub_3C2A0(&qword_1321C8, &qword_1321A8, &qword_F61F0);
    v19 = sub_E6A74();
    result = (*(v11 + 8))(v14, v10);
  }

  else
  {
    *(swift_allocObject() + 16) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132180, &qword_EC5A8);
    v21 = sub_E76F4();

    v27 = v21;
    v25 = 0;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321B0, &qword_F61F8);
    sub_3C2A0(&qword_1321B8, &qword_1321B0, &qword_F61F8);
    sub_E6A94();

    sub_3C2A0(&qword_1321C0, &qword_1321A0, &qword_F61E8);
    v19 = sub_E6A74();
    result = (*(v23 + 8))(v9, v6);
  }

  *v24 = v19;
  return result;
}

void sub_DE394(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  if (*(a1 + 8))
  {
    v4 = 1;
  }

  else
  {
    v6 = *a1;
    sub_E70C4();
    v7 = sub_E7024();

    v8 = [a2 integerForKey:v7];

    v4 = v8 < v6;
  }

  *a3 = v4;
}

uint64_t sub_DE41C(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipSubject);

    sub_E69C4();
  }

  return result;
}

uint64_t sub_DE4A4()
{
  v0 = sub_E5A54();
  __swift_allocate_value_buffer(v0, qword_131F38);
  __swift_project_value_buffer(v0, qword_131F38);
  return sub_E5A04();
}

void sub_DE4F8(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);
  v4 = [swift_getObjCClassFromMetadata() fetchRequest];
  v5 = objc_opt_self();
  if (qword_12CD28 != -1)
  {
    swift_once();
  }

  v6 = sub_E5A54();
  __swift_project_value_buffer(v6, qword_131F38);
  isa = sub_E5A24().super.isa;
  v8 = [v5 predicateForPodcastsFollowedSince:isa];

  [v4 setPredicate:v8];
  v12 = 0;
  v9 = [a1 countForFetchRequest:v4 error:&v12];
  v10 = v12;
  if (v12)
  {
    swift_willThrow();
    v10;
  }

  else
  {
    v11 = v9;

    *a2 = v11;
    *(a2 + 8) = 0;
  }
}

uint64_t StayUpToDateTipProvider.tips.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131740, &unk_F5A60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = __chkstk_darwin(v1);
  v6 = v8 - v5;
  if (*(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipPublisher))
  {
    v8[1] = *(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipPublisher);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131D90, &unk_F5ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
    sub_3C2A0(&unk_131DA0, &unk_131D90, &unk_F5ED0);
    sub_E6AC4();

    sub_3C2A0(&unk_131760, &unk_131740, &unk_F5A60);
    v7 = sub_E6A74();
    (*(v2 + 8))(v6, v1);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_DE858@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131CB0, &qword_F5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_E87F0;
  *(inited + 32) = 4;
  v5 = inited + 32;
  *(inited + 40) = v3;
  v6 = sub_B18B8(inited);
  swift_setDeallocating();

  result = sub_110AC(v5, qword_131A30, &qword_F5F80);
  *a2 = v6;
  return result;
}

uint64_t StayUpToDateTipProvider.requestRefresh(for:)(uint64_t a1)
{
  result = sub_C6FB8(4u, a1);
  if (result)
  {
    v3 = *(v1 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_refreshSubject);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
    sub_3C2A0(&qword_1317D0, &qword_131FA0, &qword_F58A0);
    return sub_E6A44();
  }

  return result;
}

uint64_t StayUpToDateTipProvider.deinit()
{
  sub_110AC(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_databasePublisher, &qword_131F78, &qword_F60E8);
  v1 = *(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_observerSubscription);

  v2 = *(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_refreshSubject);

  v3 = *(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipSubject);

  v4 = *(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipPublisher);

  return v0;
}

uint64_t StayUpToDateTipProvider.__deallocating_deinit()
{
  sub_110AC(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_databasePublisher, &qword_131F78, &qword_F60E8);
  v1 = *(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_observerSubscription);

  v2 = *(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_refreshSubject);

  v3 = *(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipSubject);

  v4 = *(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipPublisher);

  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_DEAE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131740, &unk_F5A60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = __chkstk_darwin(v1);
  v6 = v8 - v5;
  if (*(*v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipPublisher))
  {
    v8[1] = *(*v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipPublisher);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131D90, &unk_F5ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
    sub_3C2A0(&unk_131DA0, &unk_131D90, &unk_F5ED0);
    sub_E6AC4();

    sub_3C2A0(&unk_131760, &unk_131740, &unk_F5A60);
    v7 = sub_E6A74();
    (*(v2 + 8))(v6, v1);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_DECBC(uint64_t a1)
{
  v2 = *v1;
  result = sub_C6FB8(4u, a1);
  if (result)
  {
    v4 = *(v2 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_refreshSubject);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
    sub_3C2A0(&qword_1317D0, &qword_131FA0, &qword_F58A0);
    return sub_E6A44();
  }

  return result;
}

uint64_t type metadata accessor for StayUpToDateTipProvider()
{
  result = qword_132008;
  if (!qword_132008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_DEDA8()
{
  sub_DEE90();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_DEE90()
{
  if (!qword_132018)
  {
    sub_E6714();
    v0 = sub_E7814();
    if (!v1)
    {
      atomic_store(v0, &qword_132018);
    }
  }
}

void *sub_DEEE8(void *result)
{
  if (!*result)
  {
    v1 = result;
    result = sub_DC208();
    *v1 = result;
  }

  return result;
}

unint64_t sub_DEF20()
{
  result = qword_132120;
  if (!qword_132120)
  {
    sub_E6714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_132120);
  }

  return result;
}

unint64_t sub_DEF84()
{
  result = qword_132178;
  if (!qword_132178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_132180, &qword_EC5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_132178);
  }

  return result;
}

uint64_t sub_DF03C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_DF07C()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_DF0B4()
{
  result = qword_132268[0];
  if (!qword_132268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_132268);
  }

  return result;
}

uint64_t sub_DF11C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AMSDialogAction.ParameterKey.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_DF14C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_DF1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_DF228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_DF298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t AMSDialogAction.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = [v4 parameters];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  v11 = sub_E6F74();

  *&v17[0] = a1;
  *(&v17[0] + 1) = a2;

  sub_E7924();
  if (!*(v11 + 16) || (v12 = sub_E0868(v16), (v13 & 1) == 0))
  {

    sub_E08AC(v16);
LABEL_6:
    memset(v17, 0, sizeof(v17));
    goto LABEL_7;
  }

  sub_26454(*(v11 + 56) + 32 * v12, v17);
  sub_E08AC(v16);

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1319B0, &qword_EAC58);
  v14 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v14 ^ 1u, 1, a3);
}

uint64_t sub_DF474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v3 parameters];
  if (v8)
  {
    v9 = v8;
    v10 = sub_E6F74();
  }

  else
  {
    v10 = sub_B1AB4(_swiftEmptyArrayStorage);
  }

  v19[5] = v10;
  sub_26324(a1, &v17, &qword_12CE38, &qword_E92E0);
  if (v18)
  {
    sub_4D9C(&v17, v19);
    *(&v15 + 1) = a3;
    sub_E7924();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D150, &qword_E9368);
    *&v15 = swift_allocObject();
    sub_48FC(v19, v15 + 16);
    sub_61B34(&v15, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_E3F0C(v14, &v17, isUniquelyReferenced_nonNull_native);
    sub_E08AC(&v17);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_110AC(&v17, &qword_12CE38, &qword_E92E0);
    *&v17 = a2;
    *(&v17 + 1) = a3;
    sub_E7924();
    sub_DFA78(v19, &v17);
    sub_E08AC(v19);
    sub_110AC(&v17, &qword_1319B0, &qword_EAC58);
  }

  isa = sub_E6F64().super.isa;

  [v4 setParameters:isa];

  return sub_110AC(a1, &qword_12CE38, &qword_E92E0);
}

uint64_t sub_DF6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v25 - v10;
  v12 = sub_E5B94();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v4 parameters];
  if (v17)
  {
    v18 = v17;
    v19 = sub_E6F74();
  }

  else
  {
    v19 = sub_B1AB4(_swiftEmptyArrayStorage);
  }

  v30 = v19;
  sub_26324(a1, v11, &qword_131220, &unk_F5580);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_110AC(v11, &qword_131220, &unk_F5580);
    *&v28 = a2;
    *(&v28 + 1) = a3;
    sub_E7924();
    sub_DFA78(v27, &v28);
    sub_E08AC(v27);
    sub_110AC(&v28, &qword_1319B0, &qword_EAC58);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    *&v28 = a2;
    *(&v28 + 1) = a3;
    sub_E7924();
    v29 = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
    (*(v13 + 16))(boxed_opaque_existential_1, v16, v12);
    sub_61B34(&v28, v26);
    v21 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[1] = v21;
    sub_E3F0C(v26, v27, isUniquelyReferenced_nonNull_native);
    sub_E08AC(v27);
    (*(v13 + 8))(v16, v12);
  }

  isa = sub_E6F64().super.isa;

  [v4 setParameters:isa];

  return sub_110AC(a1, &qword_131220, &unk_F5580);
}

uint64_t AMSDialogAction.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_E4058(a1, a2, a3, a4);
  v5 = sub_E7814();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

double sub_DFA78@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_E0868(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_E39B0();
      v11 = v13;
    }

    sub_E08AC(*(v11 + 48) + 40 * v8);
    sub_61B34((*(v11 + 56) + 32 * v8), a2);
    sub_E3C14(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void (*AMSDialogAction.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[2] = a4;
  v9[3] = v4;
  *v9 = a2;
  v9[1] = a3;
  v11 = sub_E7814();
  v10[4] = v11;
  v12 = *(v11 - 8);
  v10[5] = v12;
  v13 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[6] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[6] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v10[7] = v14;
  AMSDialogAction.subscript.getter(a2, a3, a4, v14);
  return sub_DFC4C;
}

void sub_DFC4C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);

    sub_E4058(v3, v10, v9, v8);
    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {
    v12 = (*a1)[1];

    sub_E4058(v4, v10, v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

id AMSDialogAction.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16[-v4 - 8];
  if (a1[3])
  {
    v6 = a1[2];
    v7 = sub_E7024();
  }

  else
  {
    v7 = 0;
  }

  v8 = [swift_getObjCClassFromMetadata() actionWithTitle:v7 style:a1[9]];

  v9 = *a1;
  v10 = a1[1];
  v11 = v8;
  v12 = sub_E7024();
  [v11 setIdentifier:v12];

  sub_48FC((a1 + 4), v16);
  sub_DF474(v16, 0xD000000000000033, 0x80000000000F9310);
  v13 = type metadata accessor for TipButton();
  sub_26324(a1 + *(v13 + 32), v5, &qword_131220, &unk_F5580);
  sub_DF6B8(v5, 0xD00000000000003ALL, 0x80000000000F9350);

  sub_E43F4(a1);
  return v11;
}

unint64_t sub_DFF24(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_E7CC4();
  sub_E7124();

  v4 = sub_E7CF4();

  return sub_E0900(a1, v4);
}

unint64_t sub_DFFE8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_E7CC4();
  AppLocation.rawValue.getter(a1);
  sub_E7124();

  v4 = sub_E7CF4();

  return sub_E0A8C(a1, v4);
}

unint64_t sub_E0070(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_E6014();
  sub_E45F8(&qword_130740);
  v5 = sub_E6FA4();

  return sub_E0E70(a1, v5);
}

unint64_t sub_E00F4(char a1)
{
  v3 = *(v1 + 40);
  sub_E7CC4();
  AudioActivity.rawValue.getter();
  sub_E7124();

  v4 = sub_E7CF4();

  return sub_E101C(a1, v4);
}

unint64_t sub_E0180(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_E7CC4();
  sub_E7124();

  v5 = sub_E7CF4();

  return sub_E1844(a1 & 1, v5);
}

unint64_t sub_E0240(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_E7CC4();
  sub_E7124();

  v5 = sub_E7CF4();

  return sub_E19A8(a1 & 1, v5);
}

unint64_t sub_E02E4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_E7CC4();
  sub_E7124();

  v4 = sub_E7CF4();

  return sub_E1AEC(a1, v4);
}

unint64_t sub_E0398(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_E7CC4();
  sub_E7124();

  v4 = sub_E7CF4();

  return sub_E1C64(a1, v4);
}

unint64_t sub_E0494(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_E7CC4();
  sub_E7124();

  v4 = sub_E7CF4();

  return sub_E1E28(a1, v4);
}

unint64_t sub_E05D8(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_E7CC4();
  sub_E7124();

  v5 = sub_E7CF4();

  return sub_E20A0(a1 & 1, v5);
}

unint64_t sub_E0684(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_E7CC4();
  sub_E7124();

  v5 = sub_E7CF4();

  return sub_E21E8(a1 & 1, v5);
}

uint64_t sub_E0740(Swift::UInt64 a1, uint64_t (*a2)(Swift::UInt64, Swift::Int))
{
  v4 = *(v2 + 40);
  sub_E7CC4();
  sub_E7CE4(a1);
  v5 = sub_E7CF4();

  return a2(a1, v5);
}

unint64_t sub_E07B8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_E7CC4();
  sub_E7CD4(a1);
  v4 = sub_E7CF4();

  return sub_E2398(a1, v4);
}

unint64_t sub_E0824(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E7784(*(v2 + 40));

  return sub_E2408(a1, v4);
}

unint64_t sub_E0868(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E7904(*(v2 + 40));

  return sub_E24CC(a1, v4);
}

unint64_t sub_E0900(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x64616F6C6E776F64;
          v8 = 0xEA00000000006465;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE600000000000000;
          v7 = 0x74736574616CLL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE500000000000000;
            if (v7 != 0x6465766173)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE500000000000000;
        v7 = 0x6465766173;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x64616F6C6E776F64;
      }

      else
      {
        v10 = 0x74736574616CLL;
      }

      if (v9 == 1)
      {
        v11 = 0xEA00000000006465;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_E7BD4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E0A8C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 5)
      {
        if (*(*(v2 + 48) + v4) > 8u)
        {
          if (v6 == 9)
          {
            v7 = 0x64616F6C6E776F64;
            v8 = 0xEA00000000006465;
          }

          else if (v6 == 10)
          {
            v7 = 0x796C746E65636572;
            v8 = 0xEF64657461647055;
          }

          else
          {
            v8 = 0xEA0000000000676ELL;
            v7 = 0x6979616C50776F6ELL;
          }
        }

        else if (v6 == 6)
        {
          v8 = 0xE700000000000000;
          v7 = 0x7972617262696CLL;
        }

        else if (v6 == 7)
        {
          v8 = 0xE600000000000000;
          v7 = 0x686372616573;
        }

        else
        {
          v7 = 0x7472616843706F74;
          v8 = 0xE900000000000073;
        }
      }

      else if (*(*(v2 + 48) + v4) > 2u)
      {
        if (v6 == 3)
        {
          v8 = 0xE800000000000000;
          v7 = 0x736C656E6E616863;
        }

        else if (v6 == 4)
        {
          v8 = 0xE500000000000000;
          v7 = 0x6465766173;
        }

        else
        {
          v7 = 0x704574736574616CLL;
          v8 = 0xEE007365646F7369;
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0x6573776F7262;
        }

        else
        {
          v7 = 0x73776F6873;
        }

        if (v6 == 1)
        {
          v8 = 0xE600000000000000;
        }

        else
        {
          v8 = 0xE500000000000000;
        }
      }

      else
      {
        v8 = 0xE400000000000000;
        v7 = 1701670760;
      }

      v9 = 0xEA0000000000676ELL;
      v10 = 0x796C746E65636572;
      if (v5 == 10)
      {
        v9 = 0xEF64657461647055;
      }

      else
      {
        v10 = 0x6979616C50776F6ELL;
      }

      if (v5 == 9)
      {
        v10 = 0x64616F6C6E776F64;
        v9 = 0xEA00000000006465;
      }

      v11 = 0x7472616843706F74;
      if (v5 == 7)
      {
        v11 = 0x686372616573;
      }

      v12 = 0xE900000000000073;
      if (v5 == 7)
      {
        v12 = 0xE600000000000000;
      }

      if (v5 == 6)
      {
        v11 = 0x7972617262696CLL;
        v12 = 0xE700000000000000;
      }

      if (v5 <= 8)
      {
        v10 = v11;
        v9 = v12;
      }

      v13 = 0x704574736574616CLL;
      if (v5 == 4)
      {
        v13 = 0x6465766173;
      }

      v14 = 0xEE007365646F7369;
      if (v5 == 4)
      {
        v14 = 0xE500000000000000;
      }

      if (v5 == 3)
      {
        v13 = 0x736C656E6E616863;
        v14 = 0xE800000000000000;
      }

      v15 = 0x6573776F7262;
      if (v5 == 1)
      {
        v16 = 0xE600000000000000;
      }

      else
      {
        v15 = 0x73776F6873;
        v16 = 0xE500000000000000;
      }

      if (!v5)
      {
        v15 = 1701670760;
        v16 = 0xE400000000000000;
      }

      if (v5 <= 2)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = v5 <= 5 ? v13 : v10;
      v18 = v5 <= 5 ? v14 : v9;
      if (v7 == v17 && v8 == v18)
      {
        break;
      }

      v19 = sub_E7BD4();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E0E70(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_E6014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_E45F8(&qword_130748);
      v16 = sub_E6FB4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_E101C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA0000000000676ELL;
      v8 = 0x6975636562726162;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE800000000000000;
          v8 = 0x7961446863616562;
          break;
        case 2:
          v7 = 0xE800000000000000;
          v8 = 0x676E696E61656C63;
          break;
        case 3:
          v11 = 0x74756D6D6F63;
          goto LABEL_38;
        case 4:
          v7 = 0xE700000000000000;
          v9 = 1802465123;
          goto LABEL_35;
        case 5:
          v7 = 0xE700000000000000;
          v9 = 1818458467;
          goto LABEL_35;
        case 6:
          v7 = 0xE500000000000000;
          v8 = 0x65636E6164;
          break;
        case 7:
          v7 = 0xE600000000000000;
          v8 = 0x676E696E6964;
          break;
        case 8:
          v7 = 0xE700000000000000;
          v9 = 1986622052;
          goto LABEL_35;
        case 9:
          v7 = 0xE800000000000000;
          v8 = 0x676E697375636F66;
          break;
        case 0xA:
          v7 = 0xE600000000000000;
          v8 = 0x676E696D6167;
          break;
        case 0xB:
          v11 = 0x6E6564726167;
          goto LABEL_38;
        case 0xC:
          v7 = 0xE400000000000000;
          v8 = 1953065320;
          break;
        case 0xD:
          v8 = 0x6341726F6F646E69;
          v7 = 0xEE00797469766974;
          break;
        case 0xE:
          v8 = 0x697461746964656DLL;
          break;
        case 0xF:
          v8 = 0x41726F6F6474756FLL;
          v7 = 0xEF79746976697463;
          break;
        case 0x10:
          v7 = 0xE800000000000000;
          v10 = 1953653104;
          goto LABEL_13;
        case 0x11:
          v7 = 0xE700000000000000;
          v9 = 1684104562;
          goto LABEL_35;
        case 0x12:
          v7 = 0xE800000000000000;
          v8 = 0x676E6978616C6572;
          break;
        case 0x13:
          v7 = 0xE800000000000000;
          v8 = 0x7069725464616F72;
          break;
        case 0x14:
          v7 = 0xE600000000000000;
          v8 = 0x676E69776F72;
          break;
        case 0x15:
          v7 = 0xE700000000000000;
          v9 = 1852732786;
          goto LABEL_35;
        case 0x16:
          v11 = 0x7265776F6873;
          goto LABEL_38;
        case 0x17:
          v7 = 0xE800000000000000;
          v8 = 0x676E697065656C73;
          break;
        case 0x18:
          v7 = 0xE800000000000000;
          v8 = 0x6874676E65727473;
          break;
        case 0x19:
          v7 = 0xE800000000000000;
          v10 = 1685419123;
LABEL_13:
          v8 = v10 | 0x676E697900000000;
          break;
        case 0x1A:
          v11 = 0x6C6576617274;
LABEL_38:
          v8 = v11 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
          v7 = 0xE900000000000067;
          break;
        case 0x1B:
          v7 = 0xE700000000000000;
          v9 = 1802264951;
          goto LABEL_35;
        case 0x1C:
          v7 = 0xE700000000000000;
          v9 = 1802661751;
LABEL_35:
          v8 = v9 | 0x676E6900000000;
          break;
        case 0x1D:
          v8 = 0xD000000000000014;
          v7 = 0x80000000000F64E0;
          break;
        case 0x1E:
          v8 = 0xD000000000000013;
          v7 = 0x80000000000F6500;
          break;
        case 0x1F:
          v8 = 0xD000000000000016;
          v7 = 0x80000000000F6520;
          break;
        case 0x20:
          v7 = 0xE400000000000000;
          v8 = 1634168697;
          break;
        default:
          break;
      }

      v12 = 0x6975636562726162;
      v13 = 0xEA0000000000676ELL;
      switch(a1)
      {
        case 1:
          v13 = 0xE800000000000000;
          if (v8 == 0x7961446863616562)
          {
            goto LABEL_90;
          }

          goto LABEL_91;
        case 2:
          v13 = 0xE800000000000000;
          v17 = 0x696E61656C63;
          goto LABEL_83;
        case 3:
          v16 = 0x74756D6D6F63;
          goto LABEL_95;
        case 4:
          v13 = 0xE700000000000000;
          v14 = 1802465123;
          goto LABEL_86;
        case 5:
          v13 = 0xE700000000000000;
          v14 = 1818458467;
          goto LABEL_86;
        case 6:
          v13 = 0xE500000000000000;
          if (v8 != 0x65636E6164)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 7:
          v13 = 0xE600000000000000;
          v18 = 1768843620;
          goto LABEL_72;
        case 8:
          v13 = 0xE700000000000000;
          v14 = 1986622052;
          goto LABEL_86;
        case 9:
          v13 = 0xE800000000000000;
          v17 = 0x697375636F66;
          goto LABEL_83;
        case 10:
          v13 = 0xE600000000000000;
          v18 = 1768776039;
          goto LABEL_72;
        case 11:
          v16 = 0x6E6564726167;
          goto LABEL_95;
        case 12:
          v13 = 0xE400000000000000;
          if (v8 != 1953065320)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 13:
          v13 = 0xEE00797469766974;
          if (v8 != 0x6341726F6F646E69)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 14:
          if (v8 != 0x697461746964656DLL)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 15:
          v13 = 0xEF79746976697463;
          if (v8 != 0x41726F6F6474756FLL)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 16:
          v13 = 0xE800000000000000;
          v15 = 1953653104;
          goto LABEL_52;
        case 17:
          v13 = 0xE700000000000000;
          v14 = 1684104562;
          goto LABEL_86;
        case 18:
          v13 = 0xE800000000000000;
          v17 = 0x6978616C6572;
          goto LABEL_83;
        case 19:
          v13 = 0xE800000000000000;
          if (v8 != 0x7069725464616F72)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 20:
          v13 = 0xE600000000000000;
          v18 = 1769434994;
LABEL_72:
          if (v8 != (v18 & 0xFFFF0000FFFFFFFFLL | 0x676E00000000))
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 21:
          v13 = 0xE700000000000000;
          v14 = 1852732786;
          goto LABEL_86;
        case 22:
          v16 = 0x7265776F6873;
          goto LABEL_95;
        case 23:
          v13 = 0xE800000000000000;
          v17 = 0x697065656C73;
          goto LABEL_83;
        case 24:
          v13 = 0xE800000000000000;
          if (v8 != 0x6874676E65727473)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 25:
          v13 = 0xE800000000000000;
          v15 = 1685419123;
LABEL_52:
          v17 = v15 & 0xFFFF0000FFFFFFFFLL | 0x697900000000;
LABEL_83:
          if (v8 != (v17 & 0xFFFFFFFFFFFFLL | 0x676E000000000000))
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 26:
          v16 = 0x6C6576617274;
LABEL_95:
          v13 = 0xE900000000000067;
          if (v8 != (v16 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000))
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 27:
          v13 = 0xE700000000000000;
          v14 = 1802264951;
          goto LABEL_86;
        case 28:
          v13 = 0xE700000000000000;
          v14 = 1802661751;
LABEL_86:
          if (v8 != (v14 | 0x676E6900000000))
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 29:
          v12 = 0xD000000000000014;
          v13 = 0x80000000000F64E0;
          goto LABEL_89;
        case 30:
          v13 = 0x80000000000F6500;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 31:
          v13 = 0x80000000000F6520;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 32:
          v13 = 0xE400000000000000;
          if (v8 != 1634168697)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        default:
LABEL_89:
          if (v8 != v12)
          {
            goto LABEL_91;
          }

LABEL_90:
          if (v7 == v13)
          {

            return v4;
          }

LABEL_91:
          v19 = sub_E7BD4();

          if (v19)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_E1844(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6574736567677573;
    }

    else
    {
      v6 = 0x74696E4972657375;
    }

    if (a1)
    {
      v7 = 0xEE00707041794264;
    }

    else
    {
      v7 = 0xED00006465746169;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6574736567677573 : 0x74696E4972657375;
      v9 = *(*(v2 + 48) + v4) ? 0xEE00707041794264 : 0xED00006465746169;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_E7BD4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E19A8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x746165706572;
    }

    else
    {
      v6 = 0x656C6666756873;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x746165706572 : 0x656C6666756873;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_E7BD4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E1AEC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE400000000000000;
          v8 = 1818845556;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE500000000000000;
          v8 = 0x726574616CLL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE400000000000000;
            if (v8 != 1954047342)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE400000000000000;
        v8 = 1954047342;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 1818845556;
      }

      else
      {
        v10 = 0x726574616CLL;
      }

      if (v9 == 1)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_E7BD4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E1C64(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0x64616F6C6E776F64 : 0x704574736574616CLL;
      v8 = v6 == 2 ? 0xEA00000000006465 : 0xEE007365646F7369;
      v9 = *(*(v23 + 48) + v4) ? 0x6465766173 : 0x6F4E6E657473696CLL;
      v10 = *(*(v23 + 48) + v4) ? 0xE500000000000000 : 0xE900000000000077;
      v11 = *(*(v23 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x64616F6C6E776F64 : 0x704574736574616CLL;
      v14 = v5 == 2 ? 0xEA00000000006465 : 0xEE007365646F7369;
      v15 = v5 ? 0x6465766173 : 0x6F4E6E657473696CLL;
      v16 = v5 ? 0xE500000000000000 : 0xE900000000000077;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_E7BD4();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E1E28(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v8 = 0x6E5573416B72616DLL;
          v9 = 0xEE00646579616C70;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x7478654E79616C70;
          }

          else
          {
            v8 = 0x616D6B6F6F626E75;
          }

          if (v7 == 4)
          {
            v9 = 0xE800000000000000;
          }

          else
          {
            v9 = 0xEA00000000006B72;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x6B72616D6B6F6F62;
        }

        else
        {
          v8 = 0x6C5073416B72616DLL;
        }

        if (v7 == 1)
        {
          v9 = 0xE800000000000000;
        }

        else
        {
          v9 = 0xEC00000064657961;
        }
      }

      else
      {
        v8 = 0x6575516F54646461;
        v9 = 0xEA00000000006575;
      }

      v10 = 0xEA00000000006B72;
      v11 = 0x7478654E79616C70;
      if (v6 == 4)
      {
        v10 = 0xE800000000000000;
      }

      else
      {
        v11 = 0x616D6B6F6F626E75;
      }

      if (v6 == 3)
      {
        v11 = 0x6E5573416B72616DLL;
        v10 = 0xEE00646579616C70;
      }

      v12 = 0x6C5073416B72616DLL;
      if (v6 == 1)
      {
        v12 = 0x6B72616D6B6F6F62;
      }

      v13 = 0xEC00000064657961;
      if (v6 == 1)
      {
        v13 = 0xE800000000000000;
      }

      if (!v6)
      {
        v12 = 0x6575516F54646461;
        v13 = 0xEA00000000006575;
      }

      v14 = v6 <= 2 ? v12 : v11;
      v15 = v6 <= 2 ? v13 : v10;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_E7BD4();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E20A0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x616D6B6F6F626E75;
    }

    else
    {
      v6 = 0x6B72616D6B6F6F62;
    }

    if (a1)
    {
      v7 = 0xEA00000000006B72;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x616D6B6F6F626E75 : 0x6B72616D6B6F6F62;
      v9 = *(*(v2 + 48) + v4) ? 0xEA00000000006B72 : 0xE800000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_E7BD4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E21E8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x776F6C6C6F666E75;
    }

    else
    {
      v6 = 0x776F6C6C6F66;
    }

    if (a1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x776F6C6C6F666E75 : 0x776F6C6C6F66;
      v9 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xE600000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_E7BD4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E232C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_E2398(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_E2408(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_502C8();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_E7794();

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

unint64_t sub_E24CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_E4564(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_E7914();
      sub_E08AC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_E2594(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_E64B4();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_130878, &unk_F33C0);
  v43 = a2;
  result = sub_E7AF4();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v9;
    v42 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(*(v9 + 48) + 8 * v25);
      v28 = *(v42 + 72);
      v29 = v26 + v28 * v25;
      if (v43)
      {
        (*v19)(v44, v29, v45);
      }

      else
      {
        (*v40)(v44, v29, v45);
      }

      v30 = *(v12 + 40);
      sub_E7CC4();
      sub_E7CE4(v27);
      result = sub_E7CF4();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v27;
      result = (*v19)(*(v12 + 56) + v28 * v21, v44, v45);
      ++*(v12 + 16);
      v9 = v41;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_E28F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130728, &qword_F32B0);
  v33 = a2;
  result = sub_E7AF4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_E7CC4();
      sub_E7CE4(v21);
      result = sub_E7CF4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_E2B88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131738, &qword_F5A40);
  v33 = a2;
  result = sub_E7AF4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_E7CC4();
      sub_E7CD4(v21);
      result = sub_E7CF4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_E2E18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130718, &unk_F32A0);
  result = sub_E7AF4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = sub_E7784(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_E307C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130708, &qword_F3290);
  result = sub_E7AF4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_61B34((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_E4564(v24, &v37);
        sub_26454(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_E7904(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_61B34(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void *sub_E3334()
{
  v1 = v0;
  v30 = sub_E64B4();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_130878, &unk_F33C0);
  v4 = *v0;
  v5 = sub_E7AE4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_E359C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130728, &qword_F32B0);
  v2 = *v0;
  v3 = sub_E7AE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_E36F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131738, &qword_F5A40);
  v2 = *v0;
  v3 = sub_E7AE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_E3854()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130718, &unk_F32A0);
  v2 = *v0;
  v3 = sub_E7AE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_E39B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130708, &qword_F3290);
  v2 = *v0;
  v3 = sub_E7AE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_E4564(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_26454(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_61B34(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_E3B54(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_E3B98(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_61B34(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_E3C14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_E7894() + 1) & ~v5;
    do
    {
      sub_E4564(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_E7904(*(a2 + 40));
      result = sub_E08AC(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_E3DB8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_E0824(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 >= v13 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    v16 = result;
    sub_E3854();
    result = v16;
    goto LABEL_8;
  }

  sub_E2E18(v13, a3 & 1);
  v17 = *v4;
  result = sub_E0824(a2);
  if ((v14 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v14)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v12 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v12)
    {
      v19[2] = v21;

      return _objc_retain_x1();
    }

    goto LABEL_15;
  }

LABEL_16:
  sub_502C8();
  sub_E7C54();
  __break(1u);
  return _objc_retain_x1();
}

_OWORD *sub_E3F0C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_E0868(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_E39B0();
      goto LABEL_7;
    }

    sub_E307C(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_E0868(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_E4564(a2, v22);
      return sub_E3B98(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_E7C54();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_61B34(a1, v17);
}

void sub_E4058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_E7814();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - v14;
  v16 = *(a4 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v5;
  v20 = [v5 parameters];
  if (v20)
  {
    v35 = a4;
    v21 = v11;
    v22 = v16;
    v23 = v10;
    v24 = v19;
    v25 = a1;
    v26 = a2;
    v27 = a3;
    v28 = v20;
    v29 = sub_E6F74();

    a3 = v27;
    a2 = v26;
    a1 = v25;
    v19 = v24;
    v10 = v23;
    v16 = v22;
    v11 = v21;
    a4 = v35;
  }

  else
  {
    v29 = sub_B1AB4(_swiftEmptyArrayStorage);
  }

  v42 = v29;
  (*(v11 + 16))(v15, a1, v10);
  if ((*(v16 + 48))(v15, 1, a4) == 1)
  {
    (*(v11 + 8))(v15, v10);
    *&v40 = a2;
    *(&v40 + 1) = a3;
    sub_E7924();
    sub_DFA78(v39, &v40);
    sub_E08AC(v39);
    sub_110AC(&v40, &qword_1319B0, &qword_EAC58);
  }

  else
  {
    (*(v16 + 32))(v19, v15, a4);
    *&v40 = a2;
    *(&v40 + 1) = a3;
    sub_E7924();
    v41 = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v40);
    (*(v16 + 16))(boxed_opaque_existential_1, v19, a4);
    sub_61B34(&v40, v38);
    v31 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v31;
    sub_E3F0C(v38, v39, isUniquelyReferenced_nonNull_native);
    sub_E08AC(v39);
    (*(v16 + 8))(v19, a4);
  }

  isa = sub_E6F64().super.isa;

  [v36 setParameters:isa];
}

uint64_t sub_E43F4(uint64_t a1)
{
  v2 = type metadata accessor for TipButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_E449C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  v7 = a3[1];
  v8 = *a2;

  sub_E4058(a1, v6, v7, v5);
}

uint64_t sub_E4510()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_E45C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_E45F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_E6014();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id AMSDialogRequest.init<A>(from:style:)(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(uint64_t, id))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v60 = &v53 - v10;
  v59 = type metadata accessor for TipButton();
  v56 = *(v59 - 8);
  v11 = *(v56 + 64);
  v12 = __chkstk_darwin(v59);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v53 - v19;
  a4[4](a3, a4);
  v21 = sub_E7024();

  a4[6](a3, a4);
  if (v22)
  {
    v58 = a4;
    v23 = sub_E7024();
    a4 = v58;
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:v21 message:v23];

  v25 = v24;
  [v25 setStyle:a2];
  sub_BE0E4(a3, a4);
  v26 = sub_E7024();

  v57 = v25;
  [v25 setIdentifier:v26];

  a4[3](a3, a4);
  v27 = sub_E59C4();
  v28 = *(v27 - 8);
  v30 = 0;
  if ((*(v28 + 48))(v20, 1, v27) != 1)
  {
    sub_E5984(v29);
    v30 = v31;
    (*(v28 + 8))(v20, v27);
  }

  v32 = v57;
  [v57 setIconURL:v30];

  a4[5](a3, a4);
  if (v33)
  {
    v34 = sub_E7024();
  }

  else
  {
    v34 = 0;
  }

  [v32 setTitleAccessibilityLabel:v34];

  a4[7](a3, a4);
  if (v35)
  {
    v36 = sub_E7024();
  }

  else
  {
    v36 = 0;
  }

  [v32 setMessageAccessibilityLabel:v36];

  v37 = (a4[8])(a3, a4);
  v38 = *(v37 + 16);
  if (v38)
  {
    v54 = a1;
    v55 = a3;
    v62 = _swiftEmptyArrayStorage;
    sub_E7A14();
    v58 = objc_opt_self();
    v39 = *(v56 + 80);
    v53 = v37;
    v40 = v37 + ((v39 + 32) & ~v39);
    v41 = *(v56 + 72);
    do
    {
      sub_E4CBC(v40, v16);
      sub_E4CBC(v16, v14);
      if (v14[3])
      {
        v42 = v14[2];
        v43 = sub_E7024();
      }

      else
      {
        v43 = 0;
      }

      v44 = [v58 actionWithTitle:v43 style:{v14[9], v53}];

      v45 = *v14;
      v46 = v14[1];
      v47 = v44;
      v48 = sub_E7024();
      [v47 setIdentifier:v48];

      sub_48FC((v14 + 4), v61);
      sub_DF474(v61, 0xD000000000000033, 0x80000000000F9310);
      v49 = v60;
      sub_BD5BC(v14 + *(v59 + 32), v60);
      sub_DF6B8(v49, 0xD00000000000003ALL, 0x80000000000F9350);

      sub_E43F4(v16);
      sub_E43F4(v14);
      sub_E79E4();
      v50 = v62[2];
      sub_E7A24();
      sub_E7A34();
      sub_E79F4();
      v40 += v41;
      --v38;
    }

    while (v38);

    a1 = v54;
    a3 = v55;
    v32 = v57;
  }

  else
  {
  }

  sub_E4D20();
  isa = sub_E71E4().super.isa;

  [v32 setButtonActions:isa];

  (*(*(a3 - 8) + 8))(a1, a3);
  return v32;
}

uint64_t sub_E4CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_E4D20()
{
  result = qword_1322F0;
  if (!qword_1322F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1322F0);
  }

  return result;
}

uint64_t sub_E4D70@<X0>(uint64_t *a1@<X8>)
{
  sub_E6DF4();
  sub_E6DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFD0, &unk_E9ED0);
  sub_E6DA4();
  type metadata accessor for DonationRepository();
  v2 = swift_allocObject();
  v3 = sub_B15D4(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1322F8, &unk_F6370);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(v2 + 16) = v4;
  sub_4524(&v6, v2 + 24);

  *a1 = v2;
  return result;
}

uint64_t sub_E4E40@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E6234();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E6DF4();
  sub_E6DE4();
  type metadata accessor for DonationRepository();
  sub_E6DA4();
  v7 = v14[1];
  sub_E6DA4();
  sub_E6664();
  sub_E6DA4();

  v8 = v14[0];
  v9 = type metadata accessor for DonationController();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = v7;
  result = (*(v3 + 32))(v12 + OBJC_IVAR____TtC15PodcastsActions18DonationController_donationService, v6, v2);
  *(v12 + OBJC_IVAR____TtC15PodcastsActions18DonationController_inMemoryStateRepository) = v8;
  *a1 = v12;
  return result;
}

uint64_t _s15PodcastsActions12DependenciesO03allC09JetEngine15BaseObjectGraphCyFZ_0()
{
  v0 = sub_E6BE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  sub_E5B14();

  sub_E5DA4();
  type metadata accessor for DonationRepository();
  sub_E6BD4();
  type metadata accessor for DonationController();
  sub_E6BD4();

  sub_E6DD4();

  sub_E6DC4();

  v8 = sub_E6DC4();

  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8;
}