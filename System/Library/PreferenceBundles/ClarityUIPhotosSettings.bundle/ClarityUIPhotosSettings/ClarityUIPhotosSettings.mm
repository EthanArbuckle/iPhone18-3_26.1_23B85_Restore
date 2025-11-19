void sub_1AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B14(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = a2;
  v5 = [v3 localizedTitle];
  v4 = [v3 localIdentifier];

  [v2 setValue:v5 forKey:v4];
}

void sub_2574(id a1)
{
  qword_10AD0 = objc_alloc_init(CLPhotosUtilities);

  _objc_release_x1();
}

void sub_26CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_26E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26FC(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = a2;
  v5 = [v3 localizedTitle];
  v4 = [v3 localIdentifier];

  [v2 setValue:v5 forKey:v4];
}

void sub_2CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2CC0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = CLFLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Error attempting to authenticate to access shared albums. %@", buf, 0xCu);
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = *(*(a1 + 32) + 8);
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [*(*(a1 + 32) + 8) objectForKey:v11];
          v13 = [*(*(a1 + 32) + 16) objectForKey:v11];
          v14 = objc_alloc_init(CLPhotosSharedAlbum);
          [(CLPhotosSharedAlbum *)v14 setTitle:v12];
          [(CLPhotosSharedAlbum *)v14 setLocalIdentifier:v11];
          [(CLPhotosSharedAlbum *)v14 setCloudIdentifier:v13];
          [*(a1 + 40) addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
      v5 = 0;
    }
  }
}

void sub_321C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_323C(uint64_t a1, uint64_t a2)
{
  v3 = [PHAsset fetchAssetsInAssetCollection:a2 options:0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_32E8;
  v4[3] = &unk_C718;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void sub_32E8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([v8 mediaType] == &dword_0 + 1)
  {
    v6 = *(a1 + 32);
    v7 = [v8 localIdentifier];
    [v6 addObject:v7];
  }

  *a4 = 0;
}

Class sub_33E8(uint64_t a1)
{
  sub_3440();
  result = objc_getClass("APApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_55A0();
  }

  qword_10AE0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_3440()
{
  v1[0] = 0;
  if (!qword_10AE8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_353C;
    v1[4] = &unk_C7C8;
    v1[5] = v1;
    v2 = off_C7B0;
    v3 = 0;
    qword_10AE8 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_10AE8)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_353C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10AE8 = result;
  return result;
}

Class sub_35B0(uint64_t a1)
{
  sub_3440();
  result = objc_getClass("APGuard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_55C8();
  }

  qword_10AF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_3608@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 title];
  v5 = sub_5890();
  v7 = v6;

  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 previewImageForSharedAlbum:a1];

  *(a2 + 16) = xmmword_74E0;
  *(a2 + 32) = 0xEB000000006B6361;
  *(a2 + 40) = vdupq_n_s64(0x4060000000000000uLL);
  *(a2 + 56) = xmmword_74F0;
  v10 = *(type metadata accessor for CLPhotosSharedAlbumRow() + 40);
  *(a2 + v10) = swift_getKeyPath();
  sub_38B4(&qword_10920, &qword_7570);
  result = swift_storeEnumTagMultiPayload();
  *a2 = v5;
  *(a2 + 8) = v7;
  if (v9)
  {
    result = sub_5860();
    *(a2 + 16) = result;
  }

  return result;
}

id sub_3854()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CLPhotosInterfaceHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_38B4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_38FC()
{
  result = qword_10910;
  if (!qword_10910)
  {
    sub_3960(&qword_10908, &qword_7538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10910);
  }

  return result;
}

uint64_t sub_3960(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_39A8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_3A0C()
{
  result = qword_10918;
  if (!qword_10918)
  {
    type metadata accessor for CLPhotosSharedAlbumRow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10918);
  }

  return result;
}

uint64_t sub_3A88(uint64_t a1)
{
  v2 = *(*(sub_5640() - 8) + 64);
  __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_5680();
}

__n128 sub_3B50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_3B60(uint64_t a1, int a2)
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

uint64_t sub_3B80(uint64_t result, int a2, int a3)
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

void type metadata accessor for CGSize()
{
  if (!qword_10928)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10928);
    }
  }
}

uint64_t sub_3C0C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_38B4(&qword_10930, &unk_75B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_3CDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_38B4(&qword_10930, &unk_75B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CLPhotosSharedAlbumRow()
{
  result = qword_10990;
  if (!qword_10990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3DD8()
{
  sub_3E9C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize();
    if (v1 <= 0x3F)
    {
      sub_3EEC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_3E9C()
{
  if (!qword_109A0)
  {
    v0 = sub_58C0();
    if (!v1)
    {
      atomic_store(v0, &qword_109A0);
    }
  }
}

void sub_3EEC()
{
  if (!qword_109A8)
  {
    sub_5640();
    v0 = sub_5600();
    if (!v1)
    {
      atomic_store(v0, &qword_109A8);
    }
  }
}

uint64_t sub_3F44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_3F8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_3FF4()
{
  v1 = sub_56E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(sub_38B4(&qword_10920, &qword_7570) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = (&v19 - v7);
  v9 = sub_5640();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLPhotosSharedAlbumRow();
  sub_5408(v0 + *(v14 + 40), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v15 = *v8;
    sub_58A0();
    v16 = sub_5740();
    sub_55F0();

    sub_56D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
  }

  v17 = sub_5630();
  (*(v10 + 8))(v13, v9);
  return v17 & 1;
}

uint64_t sub_426C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = *(*(sub_38B4(&qword_109F8, &qword_7660) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v8 = sub_38B4(&qword_10A00, &qword_7668);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;

  v42 = sub_5880();
  v43 = v19;
  v20 = a1[2];
  v46 = 0;
  v21 = a1[5];

  sub_5880();
  sub_5610();
  LOBYTE(v17) = v46;
  *&v50[6] = v51;
  *&v50[22] = v52;
  *&v50[38] = v53;
  v22 = a1[8];
  v23 = &v15[*(v9 + 44)];
  v24 = *(sub_5650() + 20);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = sub_5710();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  *v23 = v22;
  *(v23 + 1) = v22;
  *&v23[*(sub_38B4(&qword_10A08, &qword_7670) + 36)] = 256;
  v27 = *&v50[16];
  *(v15 + 50) = *v50;
  *v15 = sub_4F58;
  *(v15 + 1) = v18;
  v28 = v42;
  *(v15 + 2) = v20;
  *(v15 + 3) = v28;
  *(v15 + 4) = v43;
  *(v15 + 5) = 0x3FF0000000000000;
  v15[48] = v17;
  v15[49] = 0;
  *(v15 + 66) = v27;
  *(v15 + 82) = *&v50[32];
  *(v15 + 12) = *&v50[46];
  v29 = a1[7];
  sub_5880();
  sub_5610();
  v43 = v54;
  v42 = v56;
  v41 = v58;
  v40 = v59;
  v49 = 1;
  v48 = v55;
  v47 = v57;
  *v7 = sub_5720();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v30 = sub_38B4(&qword_10A10, &qword_7678);
  sub_471C(a1, &v7[*(v30 + 44)]);
  v31 = v13;
  v39 = v13;
  sub_4F60(v15, v13, &qword_10A00, &qword_7668);
  LOBYTE(v24) = v49;
  LOBYTE(v20) = v48;
  LOBYTE(a1) = v47;
  v32 = v44;
  sub_4F60(v7, v44, &qword_109F8, &qword_7660);
  v33 = v31;
  v34 = v45;
  sub_4F60(v33, v45, &qword_10A00, &qword_7668);
  v35 = sub_38B4(&qword_10A18, &qword_7680);
  v36 = v34 + *(v35 + 48);
  *v36 = 0;
  *(v36 + 8) = v24;
  *(v36 + 16) = v43;
  *(v36 + 24) = v20;
  *(v36 + 32) = v42;
  *(v36 + 40) = a1;
  v37 = v40;
  *(v36 + 48) = v41;
  *(v36 + 56) = v37;
  sub_4F60(v32, v34 + *(v35 + 64), &qword_109F8, &qword_7660);
  sub_53A8(v7, &qword_109F8, &qword_7660);
  sub_53A8(v15, &qword_10A00, &qword_7668);
  sub_53A8(v32, &qword_109F8, &qword_7660);
  return sub_53A8(v39, &qword_10A00, &qword_7668);
}

__n128 sub_471C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v42 = sub_38B4(&qword_10A20, &qword_7688);
  v41 = *(v42 - 8);
  v3 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v40 = &v40 - v4;
  v5 = sub_38B4(&qword_10A28, &qword_7690);
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v43 = &v40 - v7;
  v8 = *(a1 + 8);
  *&v47 = *a1;
  *(&v47 + 1) = v8;
  sub_4FC8();

  v9 = sub_57B0();
  v11 = v10;
  v13 = v12;
  sub_5750();
  v14 = sub_57A0();
  v16 = v15;
  v18 = v17;

  sub_501C(v9, v11, v13 & 1);

  sub_5840();
  v19 = sub_5790();
  v21 = v20;
  LOBYTE(v9) = v22;
  v24 = v23;

  v25 = v18 & 1;
  v26 = v40;
  sub_501C(v14, v16, v25);

  *&v47 = v19;
  *(&v47 + 1) = v21;
  LOBYTE(v48) = v9 & 1;
  *(&v48 + 1) = v24;
  sub_5820();
  sub_501C(v19, v21, v9 & 1);

  v27 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v27 lineHeight];
  v29 = v28;

  v30 = *(a1 + 40);
  if (v30 < v29 + 10.0)
  {
    v31 = v30 + *(a1 + 56);
  }

  *&v47 = &type metadata for Text;
  *(&v47 + 1) = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v32 = v43;
  v33 = v42;
  sub_5810();
  (*(v41 + 8))(v26, v33);
  if (sub_3FF4())
  {
    v34 = *(a1 + 48);
  }

  sub_5880();
  sub_5660();
  v35 = v46;
  (*(v44 + 32))(v46, v32, v45);
  v36 = v35 + *(sub_38B4(&qword_10A38, &qword_7698) + 36);
  v37 = v52;
  *(v36 + 64) = v51;
  *(v36 + 80) = v37;
  *(v36 + 96) = v53;
  v38 = v48;
  *v36 = v47;
  *(v36 + 16) = v38;
  result = v50;
  *(v36 + 32) = v49;
  *(v36 + 48) = result;
  return result;
}

uint64_t sub_4BD0@<X0>(uint64_t a1@<X8>)
{
  if (sub_3FF4())
  {
    v3 = sub_56F0();
  }

  else
  {
    v3 = sub_5700();
  }

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_38B4(&qword_109F0, &qword_7658);
  return sub_426C(v1, a1 + *(v4 + 44));
}

uint64_t sub_4C34@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v1 = (*(*(sub_38B4(&qword_10A40, &qword_76A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = &v23 - v2;
  v4 = sub_38B4(&qword_10A48, &qword_76A8);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v23 - v6;
  sub_5620();
  sub_5620();
  v8 = [objc_opt_self() tertiarySystemFillColor];
  v24 = sub_5850();

  v9 = sub_5870();
  v10 = sub_5830();
  KeyPath = swift_getKeyPath();
  v12 = sub_5760();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = sub_5780();
  sub_5084(v3);
  v14 = swift_getKeyPath();
  v26 = v9;
  v27 = KeyPath;
  v28 = v10;
  v29 = v14;
  v30 = v13;
  sub_5770();
  sub_38B4(&qword_10A50, &qword_7710);
  sub_5144();
  sub_57E0();

  *&v7[*(v4 + 36)] = 0x3FF0000000000000;
  v15 = sub_38B4(&qword_10A90, &qword_7730);
  v16 = v25;
  v17 = v25 + *(v15 + 36);
  sub_52B4();
  sub_57F0();
  sub_53A8(v7, &qword_10A48, &qword_76A8);
  v18 = sub_5880();
  v20 = v19;
  result = sub_38B4(&qword_10AB0, &unk_7740);
  v22 = &v17[*(result + 36)];
  *v22 = v18;
  v22[1] = v20;
  *v16 = v24;
  return result;
}

uint64_t sub_4F20()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4F58@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_4C34(a1);
}

uint64_t sub_4F60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_38B4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_4FC8()
{
  result = qword_10A30;
  if (!qword_10A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A30);
  }

  return result;
}

uint64_t sub_501C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_502C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5690();
  *a1 = result;
  return result;
}

uint64_t sub_5058(uint64_t *a1)
{
  v1 = *a1;

  return sub_56A0();
}

uint64_t sub_5084(uint64_t a1)
{
  v2 = sub_38B4(&qword_10A40, &qword_76A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_50EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_56B0();
  *a1 = result;
  return result;
}

uint64_t sub_5118(uint64_t *a1)
{
  v1 = *a1;

  return sub_56C0();
}

unint64_t sub_5144()
{
  result = qword_10A58;
  if (!qword_10A58)
  {
    sub_3960(&qword_10A50, &qword_7710);
    sub_51FC();
    sub_54BC(&qword_10A80, &qword_10A88, &qword_7728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A58);
  }

  return result;
}

unint64_t sub_51FC()
{
  result = qword_10A60;
  if (!qword_10A60)
  {
    sub_3960(&qword_10A68, &qword_7718);
    sub_54BC(&qword_10A70, &qword_10A78, &qword_7720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A60);
  }

  return result;
}

unint64_t sub_52B4()
{
  result = qword_10A98;
  if (!qword_10A98)
  {
    sub_3960(&qword_10A48, &qword_76A8);
    sub_3960(&qword_10A50, &qword_7710);
    sub_5144();
    swift_getOpaqueTypeConformance2();
    sub_54BC(&qword_10AA0, &qword_10AA8, &qword_7738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A98);
  }

  return result;
}

uint64_t sub_53A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_38B4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_5408(uint64_t a1, uint64_t a2)
{
  v4 = sub_38B4(&qword_10920, &qword_7570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_54BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_3960(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_5504(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Selected indexPath: %@, with Shared Album Identifier: %@", &v3, 0x16u);
}