uint64_t _s6LayoutV4RectOwet(uint64_t a1, int a2)
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

uint64_t _s6LayoutV4RectOwst(uint64_t result, int a2, int a3)
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

uint64_t sub_23BF0EBE4(uint64_t a1, int a2)
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

uint64_t sub_23BF0EC04(uint64_t result, int a2, int a3)
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

BOOL sub_23BF0EC7C(void *a1, uint64_t *a2)
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

void *sub_23BF0ED08@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23BF0ED60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BFFA300();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23BF0ED8C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23BF0EDD4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23BF0EE1C()
{
  v1 = sub_23BF4A264(&qword_27E1E0528);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23BF0EEF4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0EF2C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23BF0EF70()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23BF0EFB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23BF0EFF8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23BF0F040()
{
  MEMORY[0x23EEC4EA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0F0A4()
{
  MEMORY[0x23EEC4EA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0F0DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BF0F114()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0F14C()
{
  v1 = sub_23BF4A264(&qword_27E1E0958);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23BF0F1E0()
{
  v1 = sub_23BF4A264(&qword_27E1E0950);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23BF0F2B0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23BF0F318()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BF0F354()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BF0F394()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_23BF0F3F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0F44C()
{
  MEMORY[0x23EEC4EA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0F4A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E0F10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BF0F518@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BFF9920();
  *a1 = result;
  return result;
}

uint64_t sub_23BF0F5E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BFF9870();
  *a1 = result;
  return result;
}

uint64_t sub_23BF0F63C()
{
  sub_23BF4A2D0(&qword_27E1E0EE0);
  sub_23BF4BE40(&qword_27E1E0EE8, &qword_27E1E0EE0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BF0F7E0()
{
  MEMORY[0x23EEC4EA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0F87C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23BF0F8CC()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_23BF0F91C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BF0F96C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_23BF0FA40(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_23BF0FA80()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0FAC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BF0FB0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BFF98C0();
  *a1 = result;
  return result;
}

uint64_t sub_23BF0FB88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BFF98E0();
  *a1 = result;
  return result;
}

uint64_t sub_23BF0FBE0@<X0>(uint64_t a1@<X8>)
{
  result = sub_23BFF9900();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_23BF0FC70(unint64_t *a1)
{
  v1 = *a1;
  sub_23BFA9F9C(*a1);
  return sub_23BFB13AC(v1);
}

double sub_23BF0FCD4(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  *&result = sub_23BFB09F4(v3).n128_u64[0];
  return result;
}

uint64_t sub_23BF0FE38(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E2150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BF0FF28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_23BFB3D74(v1, v2);
}

uint64_t sub_23BF0FF80()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0FFB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BF10000()
{
  MEMORY[0x23EEC4EA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF1004C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BF10084()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BF100BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF100FC()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23BF10220()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF1025C()
{
  MEMORY[0x23EEC4EA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF10294()
{
  v1 = sub_23BF4A264(&qword_27E1E2858);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23BF10328()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_23BF10388()
{
  MEMORY[0x23EEC4EA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF103C0()
{
  MEMORY[0x23EEC4EA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF103F8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23BF10430()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

void sub_23BF10498(void *a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_23BF10C44(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v8 = objc_msgSend_rows(*(a1 + 32), v5, v6, v7);
  v11 = objc_msgSend_objectAtIndexedSubscript_(v8, v9, a3, v10);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend__setContentForCell_withEditOption_(*(a1 + 32), v12, v11, v13);
  }
}

void sub_23BF119B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = objc_msgSend_delegate(v3, v5, v6, v7);
  objc_msgSend_hideLoadingIndicator(v8, v9, v10, v11);

  v17 = objc_msgSend_face(*(a1 + 32), v12, v13, v14);
  objc_msgSend_setResourceDirectory_(v17, v15, v4, v16);
}

void sub_23BF11A38(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v9 = objc_msgSend_face(v2, v4, v5, v6);
  objc_msgSend_setResourceDirectory_(v9, v7, v3, v8);
}

void sub_23BF11A98(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = objc_msgSend_photosCount(*(*(a1 + 32) + 168), v4, v5, v6);
  v11 = *(a1 + 32);
  if (v10)
  {
    v12 = v3;
  }

  else
  {
    v13 = v11[19];
    v12 = v3;
    if (v13)
    {
      v12 = v13;

      v17 = objc_msgSend_logObject(NTKParmesanFaceBundle, v14, v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v12;
        _os_log_impl(&dword_23BF0C000, v17, OS_LOG_TYPE_DEFAULT, "setSelectedOptions: empty editor; resetting the resource directory back to the saved gallery version (%@)", &v21, 0xCu);
      }

      v11 = *(a1 + 32);
    }
  }

  v18 = objc_msgSend_face(v11, v7, v8, v9);
  objc_msgSend_setResourceDirectory_(v18, v19, v12, v20);
}

void sub_23BF11BC4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v9 = objc_msgSend_face(v2, v4, v5, v6);
  objc_msgSend_setResourceDirectory_(v9, v7, v3, v8);
}

void sub_23BF11C24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = objc_msgSend_delegate(*(a1 + 32), a2, a3, a4);
  objc_msgSend_showLoadingIndicatorWithProgress_(v9, v6, v7, v8, a5);
}

void sub_23BF11C78(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = objc_msgSend_delegate(v3, v5, v6, v7);
  objc_msgSend_hideLoadingIndicator(v8, v9, v10, v11);

  v17 = objc_msgSend_face(*(a1 + 32), v12, v13, v14);
  objc_msgSend_setResourceDirectory_(v17, v15, v4, v16);
}

uint64_t sub_23BF12254(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *(*(a1 + 32) + 136) = 1;
  v8 = objc_msgSend_actionRow(*(a1 + 32), a2, a3, a4);
  if (v8)
  {
    v9 = objc_msgSend_rows(*(a1 + 32), v5, v6, v7);
    v13 = objc_msgSend_actionRow(*(a1 + 32), v10, v11, v12);
    v16 = objc_msgSend_indexOfObject_(v9, v14, v13, v15);
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = objc_msgSend_collection(*(a1 + 32), v17, v18, v19);
  v24 = objc_msgSend_options(v20, v21, v22, v23);
  v27 = objc_msgSend_indexOfObject_(v24, v25, *(a1 + 40), v26);

  if (v16 == 0x7FFFFFFFFFFFFFFFLL || v27 < v16)
  {
    v30 = v27;
  }

  else
  {
    v30 = v27 + 1;
  }

  v31 = *(a1 + 32);

  return MEMORY[0x2821F9670](v31, sel_didSelectRow_, v30, v28);
}

void sub_23BF125C0(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  HasPhotos = objc_msgSend__manualEditorHasPhotos(*(a1 + 32), v4, v5, v6);
  v11 = *(a1 + 32);
  if (HasPhotos)
  {
    v12 = v3;
  }

  else
  {
    v13 = v11[19];
    v12 = v3;
    if (v13)
    {
      v12 = v13;

      v17 = objc_msgSend_logObject(NTKParmesanFaceBundle, v14, v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 138412290;
        v41 = v12;
        _os_log_impl(&dword_23BF0C000, v17, OS_LOG_TYPE_DEFAULT, "_setPhotos: empty editor; resetting the resource directory back to the saved gallery version (%@)", &v40, 0xCu);
      }

      v11 = *(a1 + 32);
    }
  }

  v18 = objc_msgSend_face(v11, v7, v8, v9);
  objc_msgSend_setResourceDirectory_(v18, v19, v12, v20);

  v24 = objc_msgSend_logObject(NTKParmesanFaceBundle, v21, v22, v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v28 = objc_msgSend_face(*(a1 + 32), v25, v26, v27);
    v32 = objc_msgSend_resourceDirectory(v28, v29, v30, v31);
    v40 = 138412290;
    v41 = v32;
    _os_log_impl(&dword_23BF0C000, v24, OS_LOG_TYPE_DEFAULT, "updated preview directory for custom face to %@", &v40, 0xCu);
  }

  v36 = objc_msgSend_delegate(*(a1 + 32), v33, v34, v35);
  objc_msgSend_hideLoadingIndicator(v36, v37, v38, v39);
}

void sub_23BF12A74(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = objc_msgSend_delegate(*(a1 + 32), a2, a3, a4);
  objc_msgSend_showLoadingIndicatorWithProgress_(v9, v6, v7, v8, a5);
}

void sub_23BF12AC8(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v7 = objc_msgSend_delegate(*(a1 + 32), v4, v5, v6);
  objc_msgSend_hideLoadingIndicator(v7, v8, v9, v10);

  if (v3)
  {
    objc_msgSend__updateSection(*(a1 + 32), v11, v12, v13);
    v17 = objc_msgSend_face(*(a1 + 32), v14, v15, v16);
    objc_msgSend_setResourceDirectory_(v17, v18, v3, v19);

    v23 = objc_msgSend_logObject(NTKParmesanFaceBundle, v20, v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_msgSend_face(*(a1 + 32), v24, v25, v26);
      v31 = objc_msgSend_resourceDirectory(v27, v28, v29, v30);
      v33 = 138412290;
      v34 = v31;
      _os_log_impl(&dword_23BF0C000, v23, OS_LOG_TYPE_DEFAULT, "finalizeWithProgress:completion: new face resource directory is %@", &v33, 0xCu);
    }
  }

  v32 = *(a1 + 40);
  if (v32)
  {
    (*(v32 + 16))();
  }
}

uint64_t sub_23BF13150(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = objc_msgSend_delegate(v3, v5, v6, v7);
  objc_msgSend_hideLoadingIndicator(v8, v9, v10, v11);

  v15 = objc_msgSend_face(*(a1 + 32), v12, v13, v14);
  objc_msgSend_setResourceDirectory_(v15, v16, v4, v17);

  v21 = *(a1 + 32);

  return objc_msgSend__updateSection(v21, v18, v19, v20);
}

void sub_23BF131D0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = objc_msgSend_delegate(*(a1 + 32), a2, a3, a4);
  objc_msgSend_showLoadingIndicatorWithProgress_(v9, v6, v7, v8, a5);
}

uint64_t sub_23BF13224(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = objc_msgSend_delegate(v3, v5, v6, v7);
  objc_msgSend_hideLoadingIndicator(v8, v9, v10, v11);

  v15 = objc_msgSend_face(*(a1 + 32), v12, v13, v14);
  objc_msgSend_setResourceDirectory_(v15, v16, v4, v17);

  v21 = *(a1 + 32);

  return objc_msgSend__updateSection(v21, v18, v19, v20);
}

void sub_23BF14AB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23BF14AD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (v5)
  {
    objc_msgSend_setInitialPreviewState_(WeakRetained, v8, 3, v9);
    objc_msgSend__setPreview_animated_(v10, v11, v5, 0);
  }

  else
  {
    objc_msgSend_setInitialPreviewState_(WeakRetained, v8, 2, v9);
    v12 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF6BC0(v6, v12);
    }
  }
}

uint64_t sub_23BF15E04(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0.2;
  if (!*(a1 + 48))
  {
    v4 = 0.0;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23BF15EA0;
  v6[3] = &unk_278BA69D8;
  v6[4] = *(a1 + 32);
  v6[5] = *(a1 + 40);
  return objc_msgSend_animateWithDuration_animations_(MEMORY[0x277D75D18], a2, v6, a4, v4);
}

uint64_t sub_23BF160E4(uint64_t a1, const char *a2)
{
  if (a2)
  {
    return objc_msgSend__setCropValidationState_animated_(*(a1 + 32), a2, 2, *(a1 + 40));
  }

  else
  {
    return objc_msgSend__setCropValidationState_animated_(*(a1 + 32), a2, 1, *(a1 + 40));
  }
}

void sub_23BF1637C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_delegate(*(a1 + 32), a2, a3, a4);
  objc_msgSend_ParmesanPreviewViewControllerWantsToCancel_(v7, v5, *(a1 + 32), v6);
}

void sub_23BF165D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BF165F4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = objc_msgSend_view(WeakRetained, v5, v6, v7);
    objc_msgSend_setUserInteractionEnabled_(v9, v10, 0, v11);

    v12 = v8[149];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23BF166EC;
    v15[3] = &unk_278BA69B0;
    objc_copyWeak(&v16, (a1 + 32));
    objc_msgSend_Parmesan_resetCropWithCompletion_(v12, v13, v15, v14);
    objc_destroyWeak(&v16);
  }
}

void sub_23BF166EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = objc_msgSend_view(WeakRetained, v8, v9, v10);
  objc_msgSend_setUserInteractionEnabled_(v11, v12, 1, v13);

  if (v5)
  {
    objc_msgSend__setPreview_animated_(WeakRetained, v14, v5, 0);
  }

  else
  {
    v15 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF6C38(v6, v15);
    }
  }
}

uint64_t sub_23BF168A0(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_firstObject(a3, a2, a3, a4);
  v9 = objc_msgSend_objectEnumerator(v5, v6, v7, v8);
  v13 = objc_msgSend_nextObject(v9, v10, v11, v12);

  v14 = _NTKLoggingObjectForDomain();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (v13)
  {
    if (v15)
    {
      v19 = objc_msgSend_localIdentifier(v13, v16, v17, v18);
      v23 = 138412290;
      v24 = v19;
      _os_log_impl(&dword_23BF0C000, v14, OS_LOG_TYPE_INFO, "Chnage Photo: selected photo = %@", &v23, 0xCu);
    }

    objc_msgSend__didSelectPhotoForChangePhoto_(*(a1 + 32), v20, v13, v21);
  }

  else
  {
    if (v15)
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_23BF0C000, v14, OS_LOG_TYPE_INFO, "Chnage Photo: No photo selected", &v23, 2u);
    }
  }

  return 0;
}

void sub_23BF16A94(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _NTKLoggingObjectForDomain();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF6CB0(a1, v6, v8, v9);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = objc_msgSend_localIdentifier(*(a1 + 32), v10, v11, v12);
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_23BF0C000, v8, OS_LOG_TYPE_INFO, "Received new preview for id = %@, updating…", &v15, 0xCu);
    }

    objc_msgSend__setPreview_animated_(*(a1 + 40), v14, v5, 1);
  }
}

void sub_23BF17C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23BF17C1C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = objc_msgSend__itemForIdentifier_(*(a1 + 32), v6, v5, v7);
  v11 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 48), v9, a3, v10);
  v15 = objc_msgSend_identifier(v11, v12, v13, v14);
  isEqualToString = objc_msgSend_isEqualToString_(v15, v16, v5, v17);

  if ((isEqualToString & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (v8)
  {
    objc_msgSend_addObject_(*(a1 + 40), v19, v8, v21);
  }

  else
  {
    v22 = objc_msgSend_logObject(NTKParmesanFaceBundle, v19, v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF6E14();
    }
  }
}

void sub_23BF1888C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BF188B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23BF188C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (a2)
  {
    v6 = *(a1 + 56);
  }

  else
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    if (v6)
    {
      v7 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, a3, a4);
      objc_msgSend_removeItemAtPath_error_(v7, v8, *(*(*(a1 + 48) + 8) + 40), 0);

      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = 0;

      v6 = 0;
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF189E0;
  block[3] = &unk_278BA6AF0;
  v11 = *(a1 + 32);
  v17 = v4;
  block[4] = v11;
  v16 = v6;
  v13 = *(a1 + 40);
  v12 = v13;
  v15 = v13;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_23BF189E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *(*(a1 + 32) + 56) = *(a1 + 64);
  objc_msgSend_setState_(*(a1 + 32), a2, *(a1 + 56), a4);
  objc_msgSend_setGalleryPreviewResourceDirectory_(*(a1 + 32), v5, *(*(*(a1 + 48) + 8) + 40), v6);
  v7 = *(a1 + 40);
  v11 = objc_msgSend_galleryPreviewResourceDirectory(*(a1 + 32), v8, v9, v10);
  (*(v7 + 16))(v7, v11);
}

void sub_23BF18A74(void *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = NTKPhotosCreateResourceDirectory();
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(a1[6] + 8) + 40))
  {
    v8 = objc_msgSend_firstObject(*(a1[4] + 48), v5, v6, v7);
    v10 = v8;
    if (v8)
    {
      v11 = a1[4];
      v15[0] = v8;
      v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v15, 1);
      objc_msgSend__writeItems_toResourceDirectory_(v11, v13, v12, *(*(a1[6] + 8) + 40));
    }

    (*(a1[5] + 16))();
  }

  else
  {
    v14 = *(a1[5] + 16);

    v14();
  }
}

void sub_23BF18E04(uint64_t a1)
{
  v2 = NTKPhotosCreateResourceDirectory();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_23BF18F24;
  aBlock[3] = &unk_278BA6BB8;
  v3 = v2;
  v4 = *(a1 + 32);
  v12 = v3;
  v13 = v4;
  v14 = *(a1 + 48);
  v6 = _Block_copy(aBlock);
  if (v3)
  {
    v7 = objc_msgSend__writeItems_toResourceDirectory_(*(a1 + 32), v5, *(a1 + 40), v3);
    v8 = objc_opt_new();
    v9 = *(a1 + 32);
    v10 = *(v9 + 48);
    *(v9 + 48) = v8;

    *(*(a1 + 32) + 56) = 0;
  }

  else
  {
    v7 = 0;
  }

  v6[2](v6, v7);
}

void sub_23BF18F24(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v8 = v4;
  if (a2)
  {
    v9 = 1;
  }

  else
  {
    if (v4)
    {
      v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v5, v6, v7);
      objc_msgSend_removeItemAtPath_error_(v10, v11, v8, 0);

      v8 = 0;
    }

    v9 = 0;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_23BF19028;
  v14[3] = &unk_278BA6B90;
  v17 = v9;
  v12 = *(a1 + 48);
  v14[4] = *(a1 + 40);
  v15 = v8;
  v16 = v12;
  v13 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

uint64_t sub_23BF19028(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setState_(*(a1 + 32), a2, *(a1 + 56), a4);
  objc_msgSend_setResourceDirectory_(*(a1 + 32), v5, *(a1 + 40), v6);
  v7 = *(*(a1 + 48) + 16);

  return v7();
}

uint64_t NTKMaxParmesanPhotos()
{
  if (NTKPeerDeviceHandlesWideLoads())
  {
    return 24;
  }

  else
  {
    return 6;
  }
}

NTKParmesanImageAnalysis *NTKParmesanAnalyzeImage(void *a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v214 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = objc_alloc_init(NTKParmesanImageAnalysis);
  if (!v13)
  {
    goto LABEL_18;
  }

  v15 = v13;
  v19 = objc_msgSend_CGImage(v15, v16, v17, v18);
  Width = CGImageGetWidth(v19);
  Height = CGImageGetHeight(v19);
  if (!v19)
  {
    goto LABEL_18;
  }

  if (Width < 2)
  {
    goto LABEL_18;
  }

  if (Height < 2)
  {
    goto LABEL_18;
  }

  v22 = a2;
  if (a2 < 2)
  {
    goto LABEL_18;
  }

  v23 = a3;
  if (a3 < 2)
  {
    goto LABEL_18;
  }

  v216.size.width = a2 + -1.0;
  v216.size.height = a3 + -1.0;
  v216.origin.x = 1.0;
  v216.origin.y = 1.0;
  v219.origin.x = a4;
  v219.origin.y = a5;
  v219.size.width = a6;
  v219.size.height = a7;
  v217 = CGRectIntersection(v216, v219);
  v24 = v217.size.width;
  v25 = v217.size.height;
  v26 = v217.size.width < 2 || v24 > v22;
  _CF = !v26 && v25 >= 2;
  if (!_CF || v25 > v23)
  {
    goto LABEL_18;
  }

  x = v217.origin.x;
  y = v217.origin.y;
  v32 = malloc_type_malloc(4 * v22 * v23, 0x100004052888210uLL);
  if (!v32)
  {
    goto LABEL_18;
  }

  v33 = v32;
  bzero(v32, 4 * v22 * v23);
  v34 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  v35 = CGBitmapContextCreate(v33, a2, a3, 8uLL, 4 * v22, v34, 1u);
  CGColorSpaceRelease(v34);
  v218.size.width = v22;
  v218.size.height = v23;
  v218.origin.x = 0.0;
  v218.origin.y = 0.0;
  CGContextDrawImage(v35, v218, v19);
  CGContextRelease(v35);
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v162 = x;
  v180 = v24 - 1 + x;
  v182 = 0u;
  v183 = 0u;
  v36 = __CFADD__(v24 - 1, x);
  v37 = y;
  v160 = v25 - 1 + y;
  if (__CFADD__(v25 - 1, y) || v36)
  {
    free(v33);
    v38 = 0;
    v46 = 0.0;
    v47 = 0.0;
    v48 = 0.0;
LABEL_47:
    v87 = v38;
    v88 = 1.0 / v38;
    v89 = v46 * v88;
    v165 = v184;
    v167 = v186;
    v139 = v185;
    v140 = v187;
    v168 = v188;
    v141 = v189;
    v142 = v183;
    v169 = v190;
    v170 = v182;
    v143 = v191;
    v144 = v193;
    v172 = v192;
    v173 = v194;
    v145 = v195;
    v147 = v197;
    v174 = v196;
    v176 = v198;
    v149 = v199;
    v151 = v201;
    v177 = v200;
    v178 = v202;
    v153 = v203;
    v155 = v205;
    v179 = v204;
    v181 = v206;
    v90 = v47 * v88;
    v91 = v48 * v88;
    v157 = v207;
    v159 = v210;
    v136 = v211;
    v161 = v212;
    v163 = v208;
    v137 = v213;
    v138 = v209;
    CLKUIConvertToRGBfFromSRGBf_fast();
    v95 = v90 > sub_23BF1A49C(v92) || v91 > 0.19;
    v96 = 1;
    if (v89 <= 0.4 && (v90 > 0.7 || v91 > 0.19 || v91 <= 0.07))
    {
      v97 = vdupq_n_s32(0x3C23D70Au);
      __asm { FMOV            V1.4S, #1.0 }

      v99 = vandq_s8(_Q1, vcgtq_f32(v142, v97));
      v100 = vbslq_s8(vcgtq_f32(v139, v97), vaddq_f32(v99, _Q1), v99);
      v101 = vbslq_s8(vcgtq_f32(v140, v97), vaddq_f32(v100, _Q1), v100);
      v102 = vbslq_s8(vcgtq_f32(v141, v97), vaddq_f32(v101, _Q1), v101);
      v103 = vbslq_s8(vcgtq_f32(v143, v97), vaddq_f32(v102, _Q1), v102);
      v104 = vbslq_s8(vcgtq_f32(v144, v97), vaddq_f32(v103, _Q1), v103);
      v105 = vbslq_s8(vcgtq_f32(v145, v97), vaddq_f32(v104, _Q1), v104);
      v106 = vbslq_s8(vcgtq_f32(v147, v97), vaddq_f32(v105, _Q1), v105);
      v107 = vbslq_s8(vcgtq_f32(v149, v97), vaddq_f32(v106, _Q1), v106);
      v108 = vbslq_s8(vcgtq_f32(v151, v97), vaddq_f32(v107, _Q1), v107);
      v109 = vbslq_s8(vcgtq_f32(v153, v97), vaddq_f32(v108, _Q1), v108);
      v110 = vbslq_s8(vcgtq_f32(v155, v97), vaddq_f32(v109, _Q1), v109);
      v111 = vbslq_s8(vcgtq_f32(v157, v97), vaddq_f32(v110, _Q1), v110);
      v112 = vbslq_s8(vcgtq_f32(v138, v97), vaddq_f32(v111, _Q1), v111);
      v113 = vbslq_s8(vcgtq_f32(v136, v97), vaddq_f32(v112, _Q1), v112);
      v114 = vandq_s8(_Q1, vcgtq_f32(v170, v97));
      v115 = vbslq_s8(vcgtq_f32(v165, v97), vaddq_f32(v114, _Q1), v114);
      v116 = vbslq_s8(vcgtq_f32(v167, v97), vaddq_f32(v115, _Q1), v115);
      v117 = vbslq_s8(vcgtq_f32(v168, v97), vaddq_f32(v116, _Q1), v116);
      v118 = vbslq_s8(vcgtq_f32(v169, v97), vaddq_f32(v117, _Q1), v117);
      v119 = vbslq_s8(vcgtq_f32(v172, v97), vaddq_f32(v118, _Q1), v118);
      v120 = vbslq_s8(vcgtq_f32(v173, v97), vaddq_f32(v119, _Q1), v119);
      v121 = vbslq_s8(vcgtq_f32(v174, v97), vaddq_f32(v120, _Q1), v120);
      v122 = vbslq_s8(vcgtq_f32(v176, v97), vaddq_f32(v121, _Q1), v121);
      v123 = vbslq_s8(vcgtq_f32(v177, v97), vaddq_f32(v122, _Q1), v122);
      v124 = vbslq_s8(vcgtq_f32(v178, v97), vaddq_f32(v123, _Q1), v123);
      v125 = vbslq_s8(vcgtq_f32(v179, v97), vaddq_f32(v124, _Q1), v124);
      v126 = vbslq_s8(vcgtq_f32(v181, v97), vaddq_f32(v125, _Q1), v125);
      v127 = vbslq_s8(vcgtq_f32(v163, v97), vaddq_f32(v126, _Q1), v126);
      v128 = vbslq_s8(vcgtq_f32(v159, v97), vaddq_f32(v127, _Q1), v127);
      v129 = vaddq_f32(vbslq_s8(vcgtq_f32(v137, v97), vaddq_f32(v113, _Q1), v113), vbslq_s8(vcgtq_f32(v161, v97), vaddq_f32(v128, _Q1), v128));
      v96 = (v90 > 0.7 || v91 > 0.19) & ((vaddv_f32(*&vpaddq_f32(v129, v129)) / v87) > 0.11);
    }

    objc_msgSend_setBright_(v14, v93, (v90 > 0.7) | (v91 > 0.19), v94, *&v136, *&v137, *&v138);
    objc_msgSend_setBrightForVibrant_(v14, v130, (v90 > 0.7) | (v91 > 0.19), v131);
    objc_msgSend_setBrightForGlass_(v14, v132, v95, v133);
    objc_msgSend_setComplexBackground_(v14, v134, v96 & 1, v135);
    goto LABEL_18;
  }

  v146 = v13;
  v148 = v14;
  v38 = 0;
  v39 = v37 * v22;
  v40 = 4 * v22;
  v156 = v40 + 8;
  v154 = 4 * (1 - v22) + 4;
  v152 = 4 - v40;
  v150 = 4 * ~v22 + 4;
  __asm { FMOV            V0.2S, #1.0 }

  v175 = -_D0;
  __asm { FMOV            V0.2S, #-1.0 }

  v171 = -_D0;
  v46 = 0.0;
  v47 = 0.0;
  v48 = 0.0;
  v158 = v22;
  do
  {
    v166 = v37;
    v164 = v39;
    v49 = 4 * v39;
    v50 = v156 + v49;
    v51 = v154 + v49;
    v52 = v152 + v49;
    v53 = v150 + v49;
    v54 = v162;
    do
    {
      v79 = v38;
      v80 = &v33[v49];
      CLKUIConvertToRGBfFromSRGBf_fast();
      v83 = fmaxf(fmaxf(*v81.i32, *&v81.i32[1]), v82);
      v84 = fminf(fminf(*v81.i32, *&v81.i32[1]), v82);
      v85 = v83 + v84;
      v86 = (v83 + v84) * 0.5;
      if (v83 > v84)
      {
        v55 = v83 - v84;
        v56 = 2.0 - v85;
        if (v86 <= 0.5)
        {
          v56 = v85;
        }

        v57 = v55 / v56;
        v58 = ((*v81.i32 - *&v81.i32[1]) / v55) + 4.0;
        if (*&v81.i32[1] == v83)
        {
          v58 = ((v82 - *v81.i32) / v55) + 2.0;
        }

        v59 = (*&v81.i32[1] - v82) / v55;
        v60 = 0.0;
        if (*&v81.i32[1] < v82)
        {
          v60 = 6.0;
        }

        v61 = v59 + v60;
        if (*v81.i32 == v83)
        {
          v62 = v61;
        }

        else
        {
          v62 = v58;
        }

        v63 = ((v62 * 21.333) + 0.5) & 0x7F;
      }

      else
      {
        v63 = 0;
        v57 = 0.0;
      }

      v64 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*&v33[v53]), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0x3994720A3B37CF28);
      *v81.i32 = -((v64.f32[0] + (*&v33[v53] * 0.00083373)) + v64.f32[1]);
      v65 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*&v33[v52]), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0x3994720A3B37CF28);
      v66 = vmla_n_f32(vdup_lane_s32(v81, 0), 0xC000000000000000, (v65.f32[0] + (*&v33[v52] * 0.00083373)) + v65.f32[1]);
      v67 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*&v33[v51]), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0x3994720A3B37CF28);
      v68 = vmla_n_f32(v66, *&v175, (v67.f32[0] + (*&v33[v51] * 0.00083373)) + v67.f32[1]);
      v69 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*v80), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0x3994720A3B37CF28);
      v70 = vmla_n_f32(v68, 3221225472, (v69.f32[0] + (*v80 * 0.00083373)) + v69.f32[1]);
      v71 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v80[2]), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0x3994720A3B37CF28);
      v72 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*&v33[v50 - 8]), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0x3994720A3B37CF28);
      v73 = vmla_n_f32(vmla_n_f32(v70, 0x40000000, (v71.f32[0] + (v80[2] * 0.00083373)) + v71.f32[1]), *&v171, (v72.f32[0] + (*&v33[v50 - 8] * 0.00083373)) + v72.f32[1]);
      v74 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*&v33[v50 - 4]), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0x3994720A3B37CF28);
      v75 = vmla_n_f32(v73, 0x4000000000000000, (v74.f32[0] + (*&v33[v50 - 4] * 0.00083373)) + v74.f32[1]);
      v76 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*&v33[v50]), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0x3994720A3B37CF28);
      *v76.i32 = (*v76.i32 + (*&v33[v50] * 0.00083373)) + *&v76.i32[1];
      v77 = vadd_f32(vdup_lane_s32(v76, 0), v75);
      v46 = sqrtf(vaddv_f32(vmul_f32(v77, v77))) + v46;
      v47 = v86 + v47;
      v182.f32[v63] = v182.f32[v63] + v57;
      v78 = v48 + (sqrtf((v85 * 3.3333) + -5.6667) * ((v85 * 3.3333) + -5.6667));
      ++v54;
      v50 += 4;
      v51 += 4;
      v52 += 4;
      if (v86 > 0.85)
      {
        v48 = v78;
      }

      v53 += 4;
      v49 += 4;
      v38 = v79 + 1;
    }

    while (v54 <= v180);
    v37 = v166 + 1;
    v39 = v164 + v158;
  }

  while (v166 + 1 <= v160);
  free(v33);
  v14 = v148;
  v13 = v146;
  if (v79 >= -1)
  {
    goto LABEL_47;
  }

LABEL_18:

  return v14;
}

id NTKParmesanGenerateGradient(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1 == *MEMORY[0x277CBF3A8] && a2 == *(MEMORY[0x277CBF3A8] + 8))
  {
    a1 = 1.0;
    a2 = 1.0;
  }

  UIGraphicsBeginImageContextWithOptions(*&a1, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v15[0] = xmmword_23C001038;
  v15[1] = unk_23C001048;
  v15[2] = xmmword_23C001058;
  v15[3] = unk_23C001068;
  *locations = xmmword_23C001020;
  v12 = CGGradientCreateWithColorComponents(DeviceRGB, v15, locations, 2uLL);
  v19.x = a3;
  v19.y = a4;
  v20.x = a5;
  v20.y = a6;
  CGContextDrawLinearGradient(CurrentContext, v12, v19, v20, 3u);
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  CGGradientRelease(v12);
  CGColorSpaceRelease(DeviceRGB);
  UIGraphicsEndImageContext();

  return v13;
}

uint64_t sub_23BF1B2C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, CGFloat a5, CGFloat a6)
{
  objc_msgSend_bounds(a2, a2, a3, a4);
  v13.x = a5;
  v13.y = a6;
  result = CGRectContainsPoint(v14, v13);
  if (result)
  {
    return objc_msgSend_containsPoint_(*(a1 + 32), v10, v11, v12, a5, a6) ^ 1;
  }

  return result;
}

void sub_23BF1C008(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23BF1C094;
  v6[3] = &unk_278BA6C60;
  v7 = v2;
  v3 = v2;
  objc_msgSend_enumerateComplicationSlotsWithBlock_(v3, v4, v6, v5);
}

void sub_23BF1C684(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v7 = objc_msgSend_logObject(NTKParmesanFaceBundle, v4, v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&dword_23BF0C000, v7, OS_LOG_TYPE_DEFAULT, "transcodeAssetsWithIdentifiers: transcoding to %@ DONE", &v15, 0xCu);
  }

  if (v3)
  {
    objc_msgSend_count(*(a1 + 40), v9, v10, v11);
    objc_msgSend_count(v3, v12, v13, v14);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_23BF1CBB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_faceView(*(a1 + 32), a2, a3, a4);
  v7 = *MEMORY[0x277D2BF00];
  v34 = objc_msgSend_complicationLayoutforSlot_(v6, v8, *MEMORY[0x277D2BF00], v9);

  v10 = *(a1 + 32);
  v13 = objc_msgSend__parmesanSlotForSlot_(v10, v11, v7, v12);
  objc_msgSend_bounds(*(a1 + 40), v14, v15, v16);
  objc_msgSend_configureComplicationLayout_forParmesanSlot_withBounds_forState_(v10, v17, v34, v13, a2);
  v21 = objc_msgSend_faceView(*(a1 + 32), v18, v19, v20);
  v22 = *MEMORY[0x277D2BED0];
  v25 = objc_msgSend_complicationLayoutforSlot_(v21, v23, *MEMORY[0x277D2BED0], v24);

  v26 = *(a1 + 32);
  v29 = objc_msgSend__parmesanSlotForSlot_(v26, v27, v22, v28);
  objc_msgSend_bounds(*(a1 + 40), v30, v31, v32);
  objc_msgSend_configureComplicationLayout_forParmesanSlot_withBounds_forState_(v26, v33, v25, v29, a2);
}

void sub_23BF1D5AC(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v9 = a1;
  os_unfair_lock_lock(&unk_27E1E30D0);
  if (qword_27E1E30D8)
  {
    v6 = qword_27E1E30D8 == v9;
  }

  else
  {
    v6 = 0;
  }

  if (!v6 || objc_msgSend_version(v9, v3, v4, v5) != qword_27E1E30E0)
  {
    qword_27E1E30D8 = v9;
    qword_27E1E30E0 = objc_msgSend_version(v9, v3, v4, v5);
    sub_23BF1D694(v9, v10);
    xmmword_27E1E30A0 = v10[2];
    unk_27E1E30B0 = v10[3];
    xmmword_27E1E30C0 = v10[4];
    xmmword_27E1E3080 = v10[0];
    *algn_27E1E3090 = v10[1];
  }

  v7 = unk_27E1E30B0;
  a2[2] = xmmword_27E1E30A0;
  a2[3] = v7;
  a2[4] = xmmword_27E1E30C0;
  v8 = *algn_27E1E3090;
  *a2 = xmmword_27E1E3080;
  a2[1] = v8;
  os_unfair_lock_unlock(&unk_27E1E30D0);
}

void sub_23BF1D694(const char *a1@<X1>, uint64_t a2@<X8>)
{
  v113[3] = *MEMORY[0x277D85DE8];
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v3 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a1, a1, 2);
  *a2 = 0x3FF8000000000000;
  v112[0] = &unk_284ED42D8;
  v112[1] = &unk_284ED42F0;
  v113[0] = &unk_284ED4728;
  v113[1] = &unk_284ED4738;
  v112[2] = &unk_284ED4308;
  v113[2] = &unk_284ED4748;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v113, v112, 3);
  objc_msgSend_scaledValue_withOverrides_(v3, v6, v5, v7, 73.0);
  *(a2 + 56) = v8;

  v110[0] = &unk_284ED4308;
  v110[1] = &unk_284ED4320;
  v111[0] = &unk_284ED4758;
  v111[1] = &unk_284ED4768;
  v110[2] = &unk_284ED4338;
  v110[3] = &unk_284ED4350;
  v111[2] = &unk_284ED4758;
  v111[3] = &unk_284ED4768;
  v110[4] = &unk_284ED4368;
  v110[5] = &unk_284ED4380;
  v111[4] = &unk_284ED4758;
  v111[5] = &unk_284ED4758;
  v110[6] = &unk_284ED4398;
  v111[6] = &unk_284ED4758;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v111, v110, 7);
  objc_msgSend_scaledValue_withOverrides_(v3, v11, v10, v12, 10.5);
  *(a2 + 64) = v13;

  v108[0] = &unk_284ED4308;
  v108[1] = &unk_284ED4320;
  v109[0] = &unk_284ED4778;
  v109[1] = &unk_284ED4778;
  v108[2] = &unk_284ED4338;
  v108[3] = &unk_284ED4350;
  v109[2] = &unk_284ED4778;
  v109[3] = &unk_284ED4778;
  v108[4] = &unk_284ED4368;
  v108[5] = &unk_284ED4380;
  v109[4] = &unk_284ED4778;
  v109[5] = &unk_284ED4778;
  v108[6] = &unk_284ED4398;
  v109[6] = &unk_284ED4778;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v109, v108, 7);
  v16 = v3;
  objc_msgSend_scaledValue_withOverrides_(v3, v17, v15, v18, 0.0);
  *(a2 + 72) = v19;

  v106[0] = &unk_284ED4308;
  v101 = xmmword_23C001090;
  v78 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v20, &v101, "{CGSize=dd}");
  v107[0] = v78;
  v106[1] = &unk_284ED4320;
  v100 = xmmword_23C0010A0;
  v76 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v21, &v100, "{CGSize=dd}");
  v107[1] = v76;
  v106[2] = &unk_284ED4338;
  v99 = xmmword_23C0010B0;
  v23 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v22, &v99, "{CGSize=dd}");
  v107[2] = v23;
  v106[3] = &unk_284ED4350;
  v98 = xmmword_23C0010C0;
  v25 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v24, &v98, "{CGSize=dd}");
  v107[3] = v25;
  v106[4] = &unk_284ED4368;
  v97 = xmmword_23C0010D0;
  v27 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v26, &v97, "{CGSize=dd}");
  v107[4] = v27;
  v106[5] = &unk_284ED4380;
  v96 = xmmword_23C0010D0;
  v29 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v28, &v96, "{CGSize=dd}");
  v107[5] = v29;
  v106[6] = &unk_284ED4398;
  v95 = xmmword_23C0010D0;
  v31 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v30, &v95, "{CGSize=dd}");
  v107[6] = v31;
  v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, v107, v106, 7);
  v80 = v16;
  objc_msgSend_scaledSize_withOverrides_(v16, v34, v33, v35, 13.5, 19.5);
  *(a2 + 8) = v36;
  *(a2 + 16) = v37;

  v104[0] = &unk_284ED4308;
  v94 = xmmword_23C001090;
  v79 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v38, &v94, "{CGSize=dd}");
  v105[0] = v79;
  v104[1] = &unk_284ED4320;
  v93 = xmmword_23C0010A0;
  v77 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v39, &v93, "{CGSize=dd}");
  v105[1] = v77;
  v104[2] = &unk_284ED4338;
  v92 = xmmword_23C0010B0;
  v41 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v40, &v92, "{CGSize=dd}");
  v105[2] = v41;
  v104[3] = &unk_284ED4350;
  v91 = xmmword_23C0010C0;
  v43 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v42, &v91, "{CGSize=dd}");
  v105[3] = v43;
  v104[4] = &unk_284ED4368;
  v90 = xmmword_23C0010D0;
  v45 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v44, &v90, "{CGSize=dd}");
  v105[4] = v45;
  v104[5] = &unk_284ED4380;
  v89 = xmmword_23C0010D0;
  v47 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v46, &v89, "{CGSize=dd}");
  v105[5] = v47;
  v104[6] = &unk_284ED4398;
  v88 = xmmword_23C0010D0;
  v49 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v48, &v88, "{CGSize=dd}");
  v105[6] = v49;
  v51 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v50, v105, v104, 7);
  objc_msgSend_scaledSize_withOverrides_(v16, v52, v51, v53, 7.0, 14.5);
  *(a2 + 24) = v54;
  *(a2 + 32) = v55;

  v102[0] = &unk_284ED4308;
  v87 = xmmword_23C001090;
  v57 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v56, &v87, "{CGSize=dd}");
  v103[0] = v57;
  v102[1] = &unk_284ED4320;
  v86 = xmmword_23C0010A0;
  v59 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v58, &v86, "{CGSize=dd}");
  v103[1] = v59;
  v102[2] = &unk_284ED4338;
  v85 = xmmword_23C0010B0;
  v61 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v60, &v85, "{CGSize=dd}");
  v103[2] = v61;
  v102[3] = &unk_284ED4350;
  v84 = xmmword_23C0010C0;
  v63 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v62, &v84, "{CGSize=dd}");
  v103[3] = v63;
  v102[4] = &unk_284ED4368;
  v83 = xmmword_23C0010D0;
  v65 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v64, &v83, "{CGSize=dd}");
  v103[4] = v65;
  v102[5] = &unk_284ED4380;
  v82 = xmmword_23C0010D0;
  v67 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v66, &v82, "{CGSize=dd}");
  v103[5] = v67;
  v102[6] = &unk_284ED4398;
  v81 = xmmword_23C0010D0;
  v69 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v68, &v81, "{CGSize=dd}");
  v103[6] = v69;
  v71 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v70, v103, v102, 7);
  objc_msgSend_scaledSize_withOverrides_(v80, v72, v71, v73, 7.0, 14.5);
  *(a2 + 40) = v74;
  *(a2 + 48) = v75;
}

BOOL sub_23BF1E980(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = objc_msgSend_curationPlacements(v2, v3, v4, v5);
  v9 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v7, &unk_284EBA5A8, v8);
  v12 = objc_msgSend_filteredArrayUsingPredicate_(v6, v10, v9, v11);

  objc_msgSend_setCurationPlacements_(v2, v13, v12, v14);
  objc_msgSend_setHasFilteredPlacements_(v2, v15, 1, v16);

  v20 = objc_msgSend_count(v12, v17, v18, v19) != 0;
  return v20;
}

BOOL sub_23BF1EA24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  objc_msgSend_placement(a2, a2, a3, a4);
  return v5 != 4000;
}

void sub_23BF1EE50(uint64_t a1, void *a2, uint64_t a3)
{
  v131[3] = *MEMORY[0x277D85DE8];
  v8 = a2;
  if ((*(a1 + 88) & 1) == 0)
  {
    if (objc_msgSend_count(*(a1 + 32), v5, v6, v7) > a3)
    {
      v12 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v9, a3, v11);
      v16 = objc_msgSend_unsignedIntValue(v12, v13, v14, v15);
      v18 = objc_msgSend_optionWithTime_device_(NTKParmesanTimeEditOption, v17, v16, *(a1 + 40));

      objc_msgSend_selectOption_forCustomEditMode_slot_(v8, v19, v18, 14, 0);
    }

    if (objc_msgSend_count(*(a1 + 48), v9, v10, v11) > a3)
    {
      v23 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v20, a3, v22);
      v27 = objc_msgSend_unsignedIntValue(v23, v24, v25, v26);
      v29 = objc_msgSend_optionWithTypeface_device_(NTKParmesanTypefaceEditOption, v28, v27, *(a1 + 40));

      objc_msgSend_selectOption_forCustomEditMode_slot_(v8, v30, v29, 13, 0);
    }

    if (objc_msgSend_count(*(a1 + 56), v20, v21, v22) > a3)
    {
      v34 = MEMORY[0x277D2C090];
      v35 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 56), v31, a3, v33);
      v39 = objc_msgSend_unsignedIntValue(v35, v36, v37, v38);
      v41 = objc_msgSend_optionWithNumeral_forDevice_(v34, v40, v39, *(a1 + 40));

      objc_msgSend_selectOption_forCustomEditMode_slot_(v8, v42, v41, 19, 0);
    }

    if (objc_msgSend_count(*(a1 + 64), v31, v32, v33) > a3)
    {
      v46 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 64), v43, a3, v45);
      v50 = objc_msgSend_unsignedIntValue(v46, v47, v48, v49);
      v52 = objc_msgSend_optionWithStyle_device_(NTKParmesanStyleEditOption, v51, v50, *(a1 + 40));

      objc_msgSend_selectOption_forCustomEditMode_slot_(v8, v53, v52, 15, 0);
    }

    if (objc_msgSend_count(*(a1 + 72), v43, v44, v45) > a3)
    {
      v56 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 72), v54, a3, v55);
      v113 = MEMORY[0x277D85DD0];
      v114 = 3221225472;
      v115 = sub_23BF1F650;
      v116 = &unk_278BA6D48;
      v117 = v8;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v56, v57, &v113, v58);
    }

    objc_msgSend__setFaceGalleryComplicationTypesForSlots_(v8, v54, MEMORY[0x277CBEC10], v55, v113, v114, v115, v116);
    objc_msgSend_setHasFilteredPlacements_(v8, v59, 1, v60);
  }

  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6 || a3 == 8)
      {
        v93 = *MEMORY[0x277D2BED0];
        v118[0] = *MEMORY[0x277D2BF00];
        v118[1] = v93;
        v119[0] = &unk_284ED4110;
        v119[1] = &unk_284ED4128;
        v65 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v119, v118, 2);
        objc_msgSend__setFaceGalleryComplicationTypesForSlots_(v8, v94, v65, v95);
LABEL_50:

        goto LABEL_51;
      }

      goto LABEL_51;
    }

    if (a3 == 4)
    {
      v65 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v5, 16, 4000);
      v123[0] = v65;
      v67 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v102, 10, 4000);
      v123[1] = v67;
      v69 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v103, 1, 4000);
      v123[2] = v69;
      v78 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v104, 2, 4000);
      v123[3] = v78;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v105, v123, 4);
    }

    else
    {
      if (objc_msgSend_isRunningNapiliGMOrLater(*(a1 + 40), v5, v6, v7))
      {
        v121 = *MEMORY[0x277D2BF00];
        v122 = &unk_284ED40F8;
        v72 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v71, &v122, &v121, 1);
        objc_msgSend__setFaceGalleryComplicationTypesForSlots_(v8, v73, v72, v74);
      }

      v65 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v71, 10, 4000);
      v120[0] = v65;
      v67 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v75, 16, 4000);
      v120[1] = v67;
      v69 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v76, 1, 4000);
      v120[2] = v69;
      v78 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v77, 2, 4000);
      v120[3] = v78;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v79, v120, 4);
    }
    v88 = ;
    objc_msgSend_setCurationPlacements_(v8, v106, v88, v107);
LABEL_46:

LABEL_49:
    goto LABEL_50;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v65 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v5, 10, 4000);
      v127[0] = v65;
      v67 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v108, 1, 4000);
      v127[1] = v67;
      v69 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v109, 2, 4000);
      v127[2] = v69;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v110, v127, 3);
      v78 = LABEL_48:;
      objc_msgSend_setCurationPlacements_(v8, v111, v78, v112);
      goto LABEL_49;
    }

    if ((objc_msgSend_isRunningNapiliGMOrLater(*(a1 + 40), v5, v6, v7) & 1) == 0)
    {
      v125 = *MEMORY[0x277D2BF00];
      v126 = &unk_284ED40E0;
      v81 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v80, &v126, &v125, 1);
      objc_msgSend__setFaceGalleryComplicationTypesForSlots_(v8, v82, v81, v83);
    }

    v65 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v80, 13, 4000);
    v124[0] = v65;
    if (*(a1 + 88))
    {
      objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v84, 10, 7000);
    }

    else
    {
      objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v84, 10, 4000);
    }
    v67 = ;
    v124[1] = v67;
    v69 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v85, 16, 4000);
    v124[2] = v69;
    v78 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v86, 1, 4000);
    v124[3] = v78;
    v88 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v87, 2, 4000);
    v124[4] = v88;
    v90 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v89, v124, 5);
    objc_msgSend_setCurationPlacements_(v8, v91, v90, v92);

    goto LABEL_46;
  }

  if (!a3)
  {
    v96 = 4000;
    if (*(a1 + 88))
    {
      objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v5, 10, 8000);
    }

    else
    {
      objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v5, 10, 4000);
    }
    v65 = ;
    v131[0] = v65;
    v99 = MEMORY[0x277D2C020];
    if (*(a1 + 88) == 1)
    {
      v96 = objc_msgSend__newFacesGroupZOrderForDevice_(*(a1 + 80), v97, *(a1 + 40), v98);
    }

    v67 = objc_msgSend_placementWithWatchOS12Group_zOrder_(v99, v97, 1, v96);
    v131[1] = v67;
    v69 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v100, 2, 4000);
    v131[2] = v69;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v101, v131, 3);
    goto LABEL_48;
  }

  if (a3 == 1)
  {
    if ((objc_msgSend_isRunningNapiliGMOrLater(*(a1 + 40), v5, v6, v7) & 1) == 0)
    {
      v129 = *MEMORY[0x277D2BED0];
      v130 = &unk_284ED40C8;
      v62 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v61, &v130, &v129, 1);
      objc_msgSend__setFaceGalleryComplicationTypesForSlots_(v8, v63, v62, v64);
    }

    if (*(a1 + 88))
    {
      objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v61, 10, 9000);
    }

    else
    {
      objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v61, 10, 4000);
    }
    v65 = ;
    v128[0] = v65;
    v67 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v66, 1, 4000);
    v128[1] = v67;
    v69 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v68, 2, 4000);
    v128[2] = v69;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v70, v128, 3);
    goto LABEL_48;
  }

LABEL_51:
}

void sub_23BF1F650(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277D2C0B0];
  v6 = a2;
  v10 = objc_msgSend_pigmentNamed_(v5, v7, a3, v8);
  objc_msgSend_selectOption_forCustomEditMode_slot_(*(a1 + 32), v9, v10, 10, v6);
}

void sub_23BF1FD54(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D2BF00];
  v5 = a2;
  objc_msgSend_setComplication_forSlot_(v5, v3, 0, v2);
  objc_msgSend_setComplication_forSlot_(v5, v4, 0, *MEMORY[0x277D2BED0]);
}

void sub_23BF202E0(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D2BF00];
  v4 = a2;
  objc_msgSend_setComplication_forSlot_(v4, v5, 0, v3);
  objc_msgSend_setComplication_forSlot_(v4, v6, 0, *MEMORY[0x277D2BED0]);
  v7 = *(a1 + 32);
  v11 = objc_msgSend_placeholderCustomDataKey(NTKParmesanGalleryPlaceholderDataSource, v8, v9, v10);
  objc_msgSend_setCustomData_forKey_(v4, v12, v7, v11);

  v16 = objc_msgSend_optionWithContent_device_(NTKParmesanContentEditOption, v13, 2, *(a1 + 40));
  objc_msgSend_selectOption_forCustomEditMode_slot_(v4, v14, v16, 12, 0);
  objc_msgSend_applyToFace_forDevice_(*(a1 + 48), v15, v4, *(a1 + 40));
}

id sub_23BF20668(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modificationDate(a1, a2, a3, a4);
  if (!v5)
  {
    v5 = objc_msgSend_creationDate(a1, v6, v7, v8);
    if (!v5)
    {
      v5 = objc_msgSend_distantPast(MEMORY[0x277CBEAA8], v9, v10, v11);
    }
  }

  return v5;
}

id sub_23BF206C4(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD98A0]);
  objc_msgSend_setVersion_(v2, v3, 0, v4);
  objc_msgSend_setDeliveryMode_(v2, v5, 1, v6);
  objc_msgSend_setNetworkAccessAllowed_(v2, v7, 1, v8);
  objc_msgSend_setSynchronous_(v2, v9, 1, v10);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_23BF20830;
  v23 = sub_23BF20840;
  v24 = 0;
  v14 = objc_msgSend_defaultManager(MEMORY[0x277CD9898], v11, v12, v13);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_23BF20848;
  v18[3] = &unk_278BA6DE8;
  v18[4] = a1;
  v18[5] = &v19;
  objc_msgSend_requestImageDataAndOrientationForAsset_options_resultHandler_(v14, v15, a1, v2, v18);

  v16 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v16;
}

void sub_23BF20818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BF20830(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23BF20848(uint64_t a1, void *a2, uint64_t a3, const char *a4, void *a5)
{
  v8 = a2;
  v11 = objc_msgSend_objectForKeyedSubscript_(a5, v9, *MEMORY[0x277CD9BF8], v10);
  v15 = objc_msgSend_logObject(NTKParmesanFaceBundle, v12, v13, v14);
  v16 = v15;
  if (v11)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF71E4();
    }
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_23BFF7270(a1, v8, v16, v17);
    }

    v21 = objc_msgSend_logObject(NTKParmesanFaceBundle, v18, v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_23BFF7364(a1, a4, v21, v22);
    }

    v23 = *(*(a1 + 40) + 8);
    v24 = v8;
    v16 = *(v23 + 40);
    *(v23 + 40) = v24;
  }
}

uint64_t sub_23BF20A44(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = a1;
  v5 = objc_msgSend_pixelWidth(v1, v2, v3, v4);
  v9 = objc_msgSend_pixelHeight(v1, v6, v7, v8);

  if ((v9 * v5) <= 0xE4E1C0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_23BF20EEC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 48), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 40));
}

intptr_t sub_23BF20F48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_firstObject(a2, a2, a3, a4);
  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  *(v6 + 56) = v5;

  v8 = *(a1 + 40);

  return dispatch_semaphore_signal(v8);
}

void sub_23BF21DFC(void *a1, char a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (a2)
  {
    v10 = a1[6];
  }

  else
  {
    if (v5)
    {
      v11 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7, v8);
      objc_msgSend_removeItemAtPath_error_(v11, v12, v9, 0);

      v9 = 0;
    }

    v10 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF21F00;
  block[3] = &unk_278BA6E60;
  v19 = a2;
  v18 = v10;
  v13 = a1[5];
  block[4] = a1[4];
  v16 = v9;
  v17 = v13;
  v14 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_23BF21F00(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *(*(a1 + 32) + 80) = *(a1 + 64);
  objc_msgSend_setState_(*(a1 + 32), a2, *(a1 + 56), a4);
  objc_msgSend_setGalleryPreviewResourceDirectory_(*(a1 + 32), v5, *(a1 + 40), v6);
  v7 = *(a1 + 48);
  v11 = objc_msgSend_galleryPreviewResourceDirectory(*(a1 + 32), v8, v9, v10);
  (*(v7 + 16))(v7, v11);
}

void sub_23BF21F8C(uint64_t a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = NTKPhotosCreateResourceDirectory();
  if (v5 && (objc_msgSend_orderList(*(a1 + 32), v2, v3, v4), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend_firstObject(v6, v7, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), v10, v6, v10))
  {
    v14 = *(a1 + 32);
    v15 = objc_msgSend_orderList(v14, v11, v12, v13);
    v19 = objc_msgSend_firstObject(v15, v16, v17, v18);
    v26[0] = v19;
    v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v20, v26, 1);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_23BF22120;
    v23[3] = &unk_278BA6ED0;
    v25 = *(a1 + 40);
    v24 = v5;
    objc_msgSend__copyOrTranscodeAssetWithIds_to_shouldPurgeOriginalData_progress_completion_(v14, v22, v21, v24, 0, &unk_284EBA5E8, v23);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_23BF22120(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    NTKPhotosWriteImageListWithVersion();
  }

  (*(*(a1 + 40) + 16))();
}

void sub_23BF22460(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  v5 = objc_msgSend_resourceDirectory(*(a1 + 32), a2, a3, a4);
  (*(v4 + 16))(v4, v5);
}

void sub_23BF224BC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (a2)
  {
    v10 = 1;
  }

  else
  {
    if (v5)
    {
      v11 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7, v8);
      objc_msgSend_removeItemAtPath_error_(v11, v12, v9, 0);

      v9 = 0;
    }

    v10 = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23BF225BC;
  v15[3] = &unk_278BA6B90;
  v18 = v10;
  v13 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v9;
  v17 = v13;
  v14 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

uint64_t sub_23BF225BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setState_(*(a1 + 32), a2, *(a1 + 56), a4);
  objc_msgSend_setResourceDirectory_(*(a1 + 32), v5, *(a1 + 40), v6);
  v7 = *(*(a1 + 48) + 16);

  return v7();
}

void sub_23BF2260C(uint64_t a1)
{
  v5 = NTKPhotosCreateResourceDirectory();
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = objc_msgSend_orderList(v6, v2, v3, v4);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23BF22764;
    v15[3] = &unk_278BA6F70;
    v16 = *(a1 + 48);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_23BF22810;
    v11[3] = &unk_278BA6F98;
    v14 = *(a1 + 40);
    v8 = v5;
    v9 = *(a1 + 32);
    v12 = v8;
    v13 = v9;
    objc_msgSend__copyOrTranscodeAssetWithIds_to_shouldPurgeOriginalData_progress_completion_(v6, v10, v7, v8, 1, v15, v11);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_23BF22764(uint64_t a1, double a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_23BF227F8;
  v3[3] = &unk_278BA6F48;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void sub_23BF22810(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5 && (NTKPhotosWriteImageListWithVersion() & 1) != 0)
  {
    objc_msgSend__reinitializeWithImageList_andResourceDirectory_(*(a1 + 40), v3, v5, *(a1 + 32));
    v4 = *(*(a1 + 48) + 16);
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);
  }

  v4();
}

void sub_23BF239B8(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF23AB8;
  block[3] = &unk_278BA6FE8;
  v15 = *(a1 + 32);
  v20 = v14;
  v21 = v15;
  v19 = v13;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v16 = v14;
  v17 = v13;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_23BF23AD8(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    v6 = objc_msgSend_CGImage(v2, v3, v4, v5);
    CGImageGetWidth(v6);
    v7 = v2;
    v11 = objc_msgSend_CGImage(v7, v8, v9, v10);

    CGImageGetHeight(v11);
  }
}

void sub_23BF23B5C(uint64_t a1, void *a2)
{
  v14 = a2;
  if (v14)
  {
    v3 = objc_alloc(MEMORY[0x277D755B8]);
    v6 = objc_msgSend_initWithData_(v3, v4, v14, v5);
    v10 = objc_msgSend_timeLayout(*(a1 + 32), v7, v8, v9);
    objc_msgSend_crop(*(a1 + 32), v11, v12, v13);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))(*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
  }
}

void sub_23BF23C28(uint64_t a1, void *a2)
{
  v15 = a2;
  if (v15)
  {
    v6 = *(*(a1 + 32) + 56);
    v7 = objc_msgSend_asset(*(a1 + 40), v3, v4, v5);
    v11 = objc_msgSend_localIdentifier(v7, v8, v9, v10);
    objc_msgSend_setObject_forKey_(v6, v12, v15, v11);
  }

  v14 = *(a1 + 48);
  v13 = *(a1 + 56);
  (*(*(a1 + 64) + 16))();
  (*(v13 + 16))(v13, v15, v14);
}

void sub_23BF23E48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, a3, a4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    *buf = 134217984;
    v46 = v6;
    _os_log_impl(&dword_23BF0C000, v5, OS_LOG_TYPE_DEFAULT, "previewOfLibraryPhotoAtIndex:%ld", buf, 0xCu);
  }

  v10 = *(a1 + 48);
  if ((v10 & 0x8000000000000000) != 0 || v10 >= objc_msgSend_count(*(*(a1 + 32) + 88), v7, v8, v9))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BF24144;
    block[3] = &unk_278BA6B68;
    v44 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
    v15 = v44;
  }

  else if (objc_msgSend__ensureUserOverrideSessionIsLoadedForPhotoAtIndex_(*(a1 + 32), v11, *(a1 + 48), v12))
  {
    v15 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 88), v13, *(a1 + 48), v14);
    v16 = *(a1 + 32);
    v17 = v16[8];
    v21 = objc_msgSend_device(v16, v18, v19, v20);
    v24 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 48), v22, v15, v23);
    v28 = objc_msgSend_subsampleFactor(v24, v25, v26, v27);
    v31 = objc_msgSend_previewModelForDevice_subsampleFactor_(v17, v29, v21, v30, v28);

    v35 = objc_msgSend_logObject(NTKParmesanFaceBundle, v32, v33, v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      sub_23BFF7838((a1 + 48), v31, v35);
    }

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_23BF24174;
    v38[3] = &unk_278BA6EF8;
    v36 = *(a1 + 40);
    v39 = v31;
    v40 = v36;
    v37 = v31;
    dispatch_async(MEMORY[0x277D85CD0], v38);
  }

  else
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_23BF2415C;
    v41[3] = &unk_278BA6B68;
    v42 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v41);
    v15 = v42;
  }
}

void sub_23BF2424C(uint64_t a1)
{
  v132 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 134217984;
    v131 = v3;
    _os_log_impl(&dword_23BF0C000, v2, OS_LOG_TYPE_DEFAULT, "resetCropOfPhotoAtIndex:%ld", buf, 0xCu);
  }

  v7 = *(a1 + 48);
  if ((v7 & 0x8000000000000000) != 0 || v7 >= objc_msgSend_count(*(*(a1 + 32) + 88), v4, v5, v6))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BF24738;
    block[3] = &unk_278BA6B68;
    v128 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
    v12 = v128;
  }

  else if (objc_msgSend__ensureUserOverrideSessionIsLoadedForPhotoAtIndex_(*(a1 + 32), v8, *(a1 + 48), v9))
  {
    v12 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 88), v10, *(a1 + 48), v11);
    v15 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 48), v13, v12, v14);
    v19 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v16, v17, v18);
    objc_msgSend_setUserOverrides_(v15, v20, v19, v21);

    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v25 = objc_msgSend_asset(v15, v22, v23, v24);
    v29 = objc_msgSend_layouts(v25, v26, v27, v28);

    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v121, v129, 16);
    if (v31)
    {
      v35 = v31;
      v36 = *v122;
      while (2)
      {
        v37 = 0;
        do
        {
          if (*v122 != v36)
          {
            objc_enumerationMutation(v29);
          }

          v38 = *(*(&v121 + 1) + 8 * v37);
          v39 = objc_msgSend_asset(v15, v32, v33, v34);
          v43 = objc_msgSend_layouts(v39, v40, v41, v42);
          v46 = objc_msgSend_objectForKeyedSubscript_(v43, v44, v38, v45);

          LOBYTE(v39) = objc_msgSend_userEdited(v46, v47, v48, v49);
          if (v39)
          {

            objc_msgSend_setAsset_(v15, v52, 0, v53);
            goto LABEL_19;
          }

          ++v37;
        }

        while (v35 != v37);
        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v121, v129, 16);
        if (v35)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
    objc_msgSend_setCanRevert_(*(*(a1 + 32) + 64), v50, 0, v51);
    v54 = objc_alloc_init(NTKParmesanLayoutUserOverride);
    v58 = objc_msgSend_originalAsset(v15, v55, v56, v57);
    v62 = objc_msgSend_preferredLayout(v58, v59, v60, v61);
    v66 = objc_msgSend_originalCrop(v62, v63, v64, v65);
    objc_msgSend_cgRect(v66, v67, v68, v69);
    objc_msgSend_setCrop_(v54, v70, v71, v72);

    v76 = objc_msgSend_originalAsset(v15, v73, v74, v75);
    v80 = objc_msgSend_preferredLayout(v76, v77, v78, v79);
    v84 = objc_msgSend_timeLayout(v80, v81, v82, v83);
    objc_msgSend_setTimeLayout_(v54, v85, v84, v86);

    v90 = objc_msgSend_originalAsset(v15, v87, v88, v89);
    v94 = objc_msgSend_preferredLayout(v90, v91, v92, v93);
    v98 = objc_msgSend_mask(v94, v95, v96, v97);
    objc_msgSend_setUseDepthEffect_(v54, v99, v98 != 0, v100);

    objc_msgSend_setCurrentOverride_(*(*(a1 + 32) + 64), v101, v54, v102);
    v103 = *(a1 + 32);
    v104 = v103[8];
    v108 = objc_msgSend_device(v103, v105, v106, v107);
    v112 = objc_msgSend_subsampleFactor(v15, v109, v110, v111);
    v115 = objc_msgSend_previewModelForDevice_subsampleFactor_(v104, v113, v108, v114, v112);

    v118[0] = MEMORY[0x277D85DD0];
    v118[1] = 3221225472;
    v118[2] = sub_23BF24768;
    v118[3] = &unk_278BA6EF8;
    v116 = *(a1 + 40);
    v119 = v115;
    v120 = v116;
    v117 = v115;
    dispatch_async(MEMORY[0x277D85CD0], v118);
  }

  else
  {
    v125[0] = MEMORY[0x277D85DD0];
    v125[1] = 3221225472;
    v125[2] = sub_23BF24750;
    v125[3] = &unk_278BA6B68;
    v126 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v125);
    v12 = v126;
  }
}

void sub_23BF254C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23BF254E4(uint64_t a1, void *a2, uint64_t a3)
{
  v208 = *MEMORY[0x277D85DE8];
  v191 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 48), v4, v191, v5);
  objc_msgSend__generateOverrideLayersForEditedAsset_dstDir_(*(a1 + 32), v7, v6, *(a1 + 40));
  v11 = objc_msgSend_count(*(a1 + 48), v8, v9, v10);
  (*(*(a1 + 56) + 16))((a3 + 1) / v11);
  v15 = objc_msgSend_asset(v6, v12, v13, v14);

  if (v15 || (objc_msgSend_addOriginalAssetAndMaskData(v6, v16, v17, v18) & 1) != 0)
  {
    v193 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v16, v17, v18);
    v199 = 0u;
    v200 = 0u;
    v197 = 0u;
    v198 = 0u;
    obj = objc_msgSend_allTimeScales(NTKParmesanTimeLayout, v19, v20, v21);
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v197, v207, 16);
    if (v26)
    {
      v192 = 0;
      v195 = *v198;
LABEL_5:
      v27 = 0;
      while (1)
      {
        if (*v198 != v195)
        {
          objc_enumerationMutation(obj);
        }

        v28 = objc_msgSend_intValue(*(*(&v197 + 1) + 8 * v27), v23, v24, v25);
        v32 = objc_msgSend_userOverrides(v6, v29, v30, v31);
        v33 = v28;
        v36 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v34, v28, v35);
        v39 = objc_msgSend_objectForKeyedSubscript_(v32, v37, v36, v38);

        if (v39)
        {
          break;
        }

        v54 = objc_msgSend_asset(v6, v40, v41, v42);
        v55 = v54 == 0;

        if (v55)
        {
          v75 = objc_msgSend_originalAsset(v6, v56, v57, v58);
          v76 = v75 == 0;

          if (v76)
          {
            v43 = objc_msgSend_logObject(NTKParmesanFaceBundle, v77, v78, v79);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              sub_23BFF7B04(v6, v33, v43, v130);
            }

            goto LABEL_54;
          }

          v80 = objc_msgSend_originalAsset(v6, v77, v78, v79);
          v83 = objc_msgSend_layoutForScale_(v80, v81, v33, v82);
          v43 = objc_msgSend_copy(v83, v84, v85, v86);

          v90 = objc_msgSend_originalAsset(v6, v87, v88, v89);
          v51 = objc_msgSend_resourceDirectory(v90, v91, v92, v93);

          v94 = MEMORY[0x277CCACA8];
          v95 = v51;
          v99 = objc_msgSend_fileSystemRepresentation(v51, v96, v97, v98);
          v102 = objc_msgSend_stringWithFormat_(v94, v100, @"%s", v101, v99);
          v104 = objc_msgSend_linkFromSrcDirectory_toDstDirectory_(v43, v103, v102, *(a1 + 40));
          v108 = objc_msgSend_logObject(NTKParmesanFaceBundle, v105, v106, v107);
          v109 = v108;
          if ((v104 & 1) == 0)
          {
            if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
            {
              v186 = objc_msgSend_asset(v6, v131, v132, v133);
              v190 = objc_msgSend_localIdentifier(v186, v187, v188, v189);
              *buf = 138412802;
              v202 = v190;
              v203 = 2048;
              v204 = v33;
              v205 = 2112;
              v206 = v43;
              _os_log_error_impl(&dword_23BF0C000, v109, OS_LOG_TYPE_ERROR, "Failed to save asset: %@ scale: %ld layout: %@", buf, 0x20u);
            }

            goto LABEL_54;
          }

          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218242;
            v202 = v33;
            v203 = 2112;
            v204 = v43;
            _os_log_debug_impl(&dword_23BF0C000, v109, OS_LOG_TYPE_DEBUG, "  layout for %ld (new): %@", buf, 0x16u);
          }

          goto LABEL_23;
        }

        v59 = objc_msgSend_asset(v6, v56, v57, v58);
        v62 = objc_msgSend_layoutForScale_(v59, v60, v33, v61);
        v43 = objc_msgSend_copy(v62, v63, v64, v65);

        v69 = objc_msgSend_resourceDirectory(*(a1 + 32), v66, v67, v68);
        LOBYTE(v59) = objc_msgSend_linkFromSrcDirectory_toDstDirectory_(v43, v70, v69, *(a1 + 40));

        v74 = objc_msgSend_logObject(NTKParmesanFaceBundle, v71, v72, v73);
        v51 = v74;
        if ((v59 & 1) == 0)
        {
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            v181 = objc_msgSend_asset(v6, v123, v124, v125);
            v185 = objc_msgSend_localIdentifier(v181, v182, v183, v184);
            *buf = 138412802;
            v202 = v185;
            v203 = 2048;
            v204 = v33;
            v205 = 2112;
            v206 = v43;
            _os_log_error_impl(&dword_23BF0C000, v51, OS_LOG_TYPE_ERROR, "Failed to save asset: %@ scale: %ld layout: %@", buf, 0x20u);
          }

          goto LABEL_54;
        }

        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218242;
          v202 = v33;
          v203 = 2112;
          v204 = v43;
          v52 = v51;
          v53 = "  layout for %ld (current): %@";
LABEL_17:
          _os_log_debug_impl(&dword_23BF0C000, v52, OS_LOG_TYPE_DEBUG, v53, buf, 0x16u);
        }

LABEL_23:

        if (v43)
        {
          v113 = objc_msgSend_timeLayout(v43, v110, v111, v112);
          objc_msgSend_setObject_forKeyedSubscript_(v193, v114, v43, v113);
        }

        else
        {
          v113 = objc_msgSend_logObject(NTKParmesanFaceBundle, v110, v111, v112);
          if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v202 = "[NTKCParmesanPhotosEditor _copyOrTranscodeAssetWithIds:to:shouldPurgeOriginalData:progress:completion:]_block_invoke";
            v203 = 2048;
            v204 = v33;
            _os_log_error_impl(&dword_23BF0C000, v113, OS_LOG_TYPE_ERROR, "%s: No layout found for time scale: %ld", buf, 0x16u);
          }
        }

        if (v26 == ++v27)
        {
          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v197, v207, 16);
          if (v26)
          {
            goto LABEL_5;
          }

          goto LABEL_31;
        }
      }

      v43 = objc_msgSend__makeLayoutForEditedAsset_userOverride_(*(a1 + 32), v40, v6, v39);
      if (objc_msgSend_lastEditedUserOverride(v6, v44, v45, v46) == v33)
      {
        v50 = objc_msgSend_timeLayout(v43, v47, v48, v49);

        v192 = v50;
      }

      v51 = objc_msgSend_logObject(NTKParmesanFaceBundle, v47, v48, v49);
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_23;
      }

      *buf = 134218242;
      v202 = v33;
      v203 = 2112;
      v204 = v43;
      v52 = v51;
      v53 = "  layout for %ld (override): %@";
      goto LABEL_17;
    }

    v192 = 0;
LABEL_31:

    v118 = objc_msgSend_asset(v6, v115, v116, v117);
    v122 = v118;
    if (v118)
    {
      obj = v118;
    }

    else
    {
      obj = objc_msgSend_originalAsset(v6, v119, v120, v121);
    }

    v43 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v134, *(a1 + 40), v135);
    if (v192)
    {
      v139 = v192;
    }

    else
    {
      v139 = objc_msgSend_preferredTimeLayout(obj, v136, v137, v138);
    }

    v142 = v139;
    v143 = objc_msgSend_objectForKeyedSubscript_(v193, v140, v139, v141);
    v144 = v143 == 0;

    if (v144)
    {
      v148 = objc_msgSend_logObject(NTKParmesanFaceBundle, v145, v146, v147);
      if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
      {
        sub_23BFF7BDC();
      }
    }

    v149 = [NTKParmesanAsset alloc];
    v153 = objc_msgSend_localIdentifier(obj, v150, v151, v152);
    v157 = objc_msgSend_modificationDate(obj, v154, v155, v156);
    objc_msgSend_presentationSize(obj, v158, v159, v160);
    v162 = v161;
    v164 = v163;
    v168 = objc_msgSend_videoInfo(obj, v165, v166, v167);
    v172 = objc_msgSend_accessibilityDescription(obj, v169, v170, v171);
    v174 = objc_msgSend_initWithLocalIdentifier_modificationDate_presentationSize_videoInfo_resourceDirectory_preferredTimeLayout_layouts_accessibilityDescription_(v149, v173, v153, v157, v168, v43, v142, v193, v162, v164, v172);

    if (*(a1 + 72) == 1)
    {
      objc_msgSend_purgeOriginalAssetAndMaskData(v6, v175, v176, v177);
    }

    v178 = objc_msgSend_asDictionary(v174, v175, v176, v177);
    objc_msgSend_addObject_(*(*(*(a1 + 64) + 8) + 40), v179, v178, v180);

LABEL_54:
    v127 = v193;
  }

  else
  {
    v126 = objc_msgSend_logObject(NTKParmesanFaceBundle, v16, v17, v18);
    v127 = v126;
    if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF7A50(v6, v126, v128, v129);
      v127 = v126;
    }
  }
}

const char *sub_23BF2672C(unint64_t a1)
{
  if (a1 > 8)
  {
    return "HM";
  }

  else
  {
    return off_278BA70F0[a1];
  }
}

void sub_23BF26814(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_23BF26854(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_23BF26870(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_23BF28648(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v5 = objc_msgSend__init(v1, v2, v3, v4);
  v6 = qword_27E1E30E8;
  qword_27E1E30E8 = v5;
}

void sub_23BF2882C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BF28848(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = objc_msgSend_logObject(NTKParmesanFaceBundle, v1, v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = *MEMORY[0x277D3B3C8];
      v12 = 138412546;
      v13 = v6;
      v14 = 2080;
      v15 = v7;
      v8 = v6;
      _os_log_impl(&dword_23BF0C000, v5, OS_LOG_TYPE_DEFAULT, "%@: got notification %s", &v12, 0x16u);
    }

    WeakRetained[8] = 0;
    objc_msgSend__queue_notifyObserversShuffleUpdated(WeakRetained, v9, v10, v11);
  }
}

void sub_23BF28AB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23BF28B90;
  v12[3] = &unk_278BA71D8;
  v13 = v6;
  v14 = v5;
  v15 = v8;
  v16 = v7;
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void sub_23BF28B90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) || (v7 = *(a1 + 40)) == 0)
  {
    v5 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, a3, a4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF7F8C();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))();
    }
  }

  else
  {
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v27[3] = 0;
    if (objc_msgSend_count(v7, a2, a3, a4))
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      obj = *(a1 + 40);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v23, v28, 16);
      if (v9)
      {
        v10 = *v24;
        do
        {
          v11 = 0;
          do
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v23 + 1) + 8 * v11);
            v13 = *(a1 + 40);
            v14 = *(a1 + 48);
            v19[0] = MEMORY[0x277D85DD0];
            v19[1] = 3221225472;
            v19[2] = sub_23BF28E0C;
            v19[3] = &unk_278BA71B0;
            v19[4] = v14;
            v19[5] = v12;
            v22 = v27;
            v20 = v13;
            v21 = *(a1 + 56);
            objc_msgSend__queue_createResourceDirectoryForShuffle_completion_(v14, v15, v12, v19);

            ++v11;
          }

          while (v9 != v11);
          v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v23, v28, 16);
        }

        while (v9);
      }
    }

    else
    {
      objc_storeStrong((*(a1 + 48) + 16), *(a1 + 40));
      *(*(a1 + 48) + 8) = 1;
      v17 = *(a1 + 56);
      if (v17)
      {
        (*(v17 + 16))();
      }
    }

    _Block_object_dispose(v27, 8);
  }
}

void sub_23BF28E0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF28F0C;
  block[3] = &unk_278BA7188;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v16 = *(a1 + 64);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t sub_23BF28F0C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5 && !*(a1 + 40))
  {
    v10 = *(*(a1 + 48) + 24);
    v11 = objc_msgSend_uuidString(*(a1 + 56), a2, a3, a4);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v12, v5, v11);
  }

  else
  {
    v6 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, a3, a4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF7FF8();
    }
  }

  v13 = ++*(*(*(a1 + 80) + 8) + 24);
  result = objc_msgSend_count(*(a1 + 64), v7, v8, v9);
  if (v13 == result)
  {
    objc_storeStrong((*(a1 + 48) + 16), *(a1 + 64));
    *(*(a1 + 48) + 8) = 1;
    result = *(a1 + 72);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void sub_23BF29318(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_msgSend_enumerateObjectsUsingBlock_(WeakRetained[5], v2, &unk_284EBA628, v3);
    WeakRetained = v4;
  }
}

void sub_23BF295B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23BF296DC;
  v12[3] = &unk_278BA7298;
  v13 = *(a1 + 40);
  v14 = v5;
  v15 = v6;
  v19 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v16 = v8;
  v17 = v9;
  v20 = *(a1 + 72);
  v18 = *(a1 + 56);
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void sub_23BF296DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v80 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, a3, a4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v77 = v6;
    _os_log_impl(&dword_23BF0C000, v5, OS_LOG_TYPE_DEFAULT, "_queue_createResourceDirectoryForShuffle: creating directory for shuffle at path %@", buf, 0xCu);
  }

  v9 = *(a1 + 40);
  if (!v9 || *(a1 + 48))
  {
    (*(*(a1 + 80) + 16))();
    return;
  }

  if (!objc_msgSend_count(v9, v7, 0, v8))
  {
    v57 = objc_msgSend_logObject(NTKParmesanFaceBundle, v10, v11, v12);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF8108();
    }

    v13 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v58, @"com.apple.parmesan.galleryShuffle", 1, 0);
    (*(*(a1 + 80) + 16))();
    goto LABEL_36;
  }

  v13 = objc_msgSend__pickAssetFromShuffle_(*(a1 + 64), v10, *(a1 + 40), v12);
  v17 = objc_msgSend_logObject(NTKParmesanFaceBundle, v14, v15, v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 56);
    *buf = 138412546;
    v77 = v13;
    v78 = 2112;
    v79 = v18;
    _os_log_impl(&dword_23BF0C000, v17, OS_LOG_TYPE_DEFAULT, "_queue_createResourceDirectoryForShuffle: selected asset %@ for shuffle %@", buf, 0x16u);
  }

  if (*(a1 + 88) != 1)
  {
LABEL_28:
    if (objc_msgSend__createResourceDirectoryForShuffle_asset_at_(*(a1 + 64), v19, *(a1 + 56), v13, *(a1 + 32)))
    {
      v22 = 0;
    }

    else
    {
      v22 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v72, @"com.apple.parmesan.galleryShuffle", 2, 0);
    }

    (*(*(a1 + 80) + 16))();
    goto LABEL_35;
  }

  v21 = (a1 + 32);
  v22 = objc_msgSend_readerForResourceDirectory_(NTKParmesanAssetReader, v19, *(a1 + 32), v20);
  if (!objc_msgSend_count(v22, v23, v24, v25))
  {
LABEL_21:
    v59 = objc_msgSend_logObject(NTKParmesanFaceBundle, v26, v27, v28);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = *v21;
      *buf = 138412290;
      v77 = v60;
      _os_log_impl(&dword_23BF0C000, v59, OS_LOG_TYPE_DEFAULT, "_queue_createResourceDirectoryForShuffle: clearing resource directory at path %@", buf, 0xCu);
    }

    v61 = *(a1 + 72);
    v62 = *(a1 + 32);
    v75 = 0;
    v64 = objc_msgSend_removeItemAtPath_error_(v61, v63, v62, &v75);
    v65 = v75;
    v69 = objc_msgSend_logObject(NTKParmesanFaceBundle, v66, v67, v68);
    v70 = v69;
    if (v65 || (v64 & 1) == 0)
    {
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        sub_23BFF8080();
      }

      v74 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v73, @"com.apple.parmesan.galleryShuffle", 3, 0);
      (*(*(a1 + 80) + 16))();

      goto LABEL_35;
    }

    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v71 = *v21;
      *buf = 138412290;
      v77 = v71;
      _os_log_impl(&dword_23BF0C000, v70, OS_LOG_TYPE_DEFAULT, "_queue_createResourceDirectoryForShuffle: cleared resource directory at path %@", buf, 0xCu);
    }

    goto LABEL_28;
  }

  v29 = objc_msgSend_firstObject(v22, v26, v27, v28);
  v33 = objc_msgSend_localIdentifier(v13, v30, v31, v32);
  v37 = objc_msgSend_localIdentifier(v29, v34, v35, v36);
  if ((objc_msgSend_isEqualToString_(v33, v38, v37, v39) & 1) == 0)
  {

    goto LABEL_20;
  }

  v43 = objc_msgSend_modificationDate(v13, v40, v41, v42);
  v47 = objc_msgSend_modificationDate(v29, v44, v45, v46);
  objc_msgSend_timeIntervalSinceDate_(v43, v48, v47, v49);
  v51 = v50;

  if (v51 >= 2.0)
  {
LABEL_20:

    goto LABEL_21;
  }

  v55 = objc_msgSend_logObject(NTKParmesanFaceBundle, v52, v53, v54);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = *v21;
    *buf = 138412546;
    v77 = v56;
    v78 = 2112;
    v79 = v13;
    _os_log_impl(&dword_23BF0C000, v55, OS_LOG_TYPE_DEFAULT, "_queue_createResourceDirectoryForShuffle: early return; path %@ already contains asset %@", buf, 0x16u);
  }

  (*(*(a1 + 80) + 16))();
LABEL_35:

LABEL_36:
}

void sub_23BF29C0C()
{
  v4 = NTKCacheDirectory();
  v2 = objc_msgSend_stringByAppendingPathComponent_(v4, v0, @"PhotosFaceSuggestedShuffles", v1);
  v3 = qword_27E1E30F8;
  qword_27E1E30F8 = v2;
}

void sub_23BF2A6A8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_23BF2A780()
{
  memset(&v2, 0, sizeof(v2));
  NTKImagePresentationTransform();
  CGAffineTransformInvert(&v2, &v1);
  v1 = v2;
  return NTKImagePresentationSize();
}

uint64_t sub_23BF2A7F4()
{
  NTKCGImagePropertyOrientationToUIImageOrientation();

  return sub_23BF2A780();
}

void sub_23BF2A834(CGImage *a1, uint64_t a2, uint64_t a3, void *a4, int *a5, int *a6, int *a7)
{
  CGImageGetWidth(a1);
  CGImageGetHeight(a1);
  sub_23BF2A780();
  sub_23BF2A780();
  v9 = v8;
  v11 = v10;
  v12 = v8;
  v31 = v8;
  v13 = v10;
  ColorSpace = CGImageGetColorSpace(a1);
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace);
  v16 = 8 * NumberOfComponents + 14;
  if ((NumberOfComponents & 0x10000000) == 0)
  {
    v16 = (8 * NumberOfComponents) | 7;
  }

  v17 = (v16 >> 3) * v12;
  memset(&v42, 0, sizeof(v42));
  NTKImagePresentationTransform();
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  NTKImagePresentationTransform();
  memset(&v38, 0, sizeof(v38));
  memset(&t1, 0, sizeof(t1));
  CGAffineTransformInvert(&t2, &t1);
  t1 = v42;
  CGAffineTransformConcat(&v38, &t1, &t2);
  v20 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v18, v17 * v13, v19);
  v21 = v20;
  v25 = objc_msgSend_mutableBytes(v21, v22, v23, v24);
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  v27 = CGImageGetColorSpace(a1);
  AlphaInfo = CGImageGetAlphaInfo(a1);
  v29 = CGBitmapContextCreate(v25, v12, v13, BitsPerComponent, v17, v27, AlphaInfo);
  t2 = v38;
  sub_23BF2AA64(v29, a1, &t2, 0, MEMORY[0x277CBF2C0], v9, v11);
  CGContextRelease(v29);
  v30 = v20;
  *a4 = v20;
  *a5 = v31;
  *a6 = v13;
  *a7 = v17;
}

void sub_23BF2AA64(CGContext *a1, CGImage *a2, _OWORD *a3, CGImage *a4, _OWORD *a5, CGFloat a6, CGFloat a7)
{
  CGContextSaveGState(a1);
  if (a4)
  {
    v14 = a5[1];
    *&v17.a = *a5;
    *&v17.c = v14;
    *&v17.tx = a5[2];
    memset(&v18, 0, sizeof(v18));
    sub_23BF2AC34(a4, &v17, &v18);
    v16 = v18;
    memset(&v17, 0, sizeof(v17));
    CGAffineTransformInvert(&v17, &v16);
    v16 = v18;
    CGContextConcatCTM(a1, &v16);
    v16 = v17;
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    v19.size.width = a6;
    v19.size.height = a7;
    v20 = CGRectApplyAffineTransform(v19, &v16);
    CGContextClipToMask(a1, v20, a4);
    v16 = v17;
    CGContextConcatCTM(a1, &v16);
  }

  v15 = a3[1];
  *&v17.a = *a3;
  *&v17.c = v15;
  *&v17.tx = a3[2];
  memset(&v18, 0, sizeof(v18));
  sub_23BF2AC34(a2, &v17, &v18);
  v16 = v18;
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformInvert(&v17, &v16);
  v16 = v18;
  CGContextConcatCTM(a1, &v16);
  v16 = v17;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = a6;
  v21.size.height = a7;
  v22 = CGRectApplyAffineTransform(v21, &v16);
  CGContextDrawImage(a1, v22, a2);
  CGContextRestoreGState(a1);
}

CGFloat sub_23BF2AC34@<D0>(CGImage *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  Height = CGImageGetHeight(a1);
  v6 = MEMORY[0x277CBF2C0];
  v7 = *MEMORY[0x277CBF2C0];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *a3 = *MEMORY[0x277CBF2C0];
  *(a3 + 16) = v8;
  v9 = *(v6 + 32);
  *(a3 + 32) = v9;
  *&t1.a = v7;
  *&t1.c = v8;
  *&t1.tx = v9;
  t2.b = 0.0;
  t2.c = 0.0;
  t2.a = 1.0;
  *&t2.d = xmmword_23C001120;
  t2.ty = Height;
  CGAffineTransformConcat(a3, &t1, &t2);
  v10 = *(a3 + 16);
  *&t2.a = *a3;
  *&t2.c = v10;
  *&t2.tx = *(a3 + 32);
  v11 = a2[1];
  *&v16.a = *a2;
  *&v16.c = v11;
  *&v16.tx = a2[2];
  CGAffineTransformConcat(&t1, &t2, &v16);
  v12 = *&t1.c;
  *a3 = *&t1.a;
  *(a3 + 16) = v12;
  *(a3 + 32) = *&t1.tx;
  v13 = *(a3 + 16);
  *&t2.a = *a3;
  *&t2.c = v13;
  *&t2.tx = *(a3 + 32);
  v16.b = 0.0;
  v16.c = 0.0;
  v16.a = 1.0;
  *&v16.d = xmmword_23C001120;
  v16.ty = Height;
  CGAffineTransformConcat(&t1, &t2, &v16);
  v14 = *&t1.c;
  *a3 = *&t1.a;
  *(a3 + 16) = v14;
  result = t1.tx;
  *(a3 + 32) = *&t1.tx;
  return result;
}

CGImageRef sub_23BF2AD4C(CGImage *a1, uint64_t a2, CGImage *a3)
{
  CGImageGetWidth(a1);
  CGImageGetHeight(a1);
  NTKCGImagePropertyOrientationToUIImageOrientation();
  NTKImagePresentationTransform();
  NTKImagePresentationSize();
  v6 = rint(v5);
  v8 = rint(v7);
  ColorSpace = CGImageGetColorSpace(a1);
  v10 = CGColorSpaceGetNumberOfComponents(ColorSpace) & 0x1FFFFFFFFFFFFFFFLL;
  v14 = objc_msgSend_mutableBytes(0, v11, v12, v13);
  v15 = CGBitmapContextCreate(v14, v6, v8, 8uLL, v6 + v6 * v10, ColorSpace, 1u);
  CGImageGetWidth(a3);
  CGImageGetHeight(a3);
  NTKCGImagePropertyOrientationToUIImageOrientation();
  NTKImagePresentationTransform();
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  sub_23BF2AA64(v15, a1, v19, a3, v18, v6, v8);
  Image = CGBitmapContextCreateImage(v15);
  CGContextRelease(v15);
  return Image;
}

id sub_23BF2AEF0(CGImage *a1, uint64_t a2, CGImage *a3)
{
  v3 = sub_23BF2AD4C(a1, a2, a3);
  v4 = MEMORY[0x277D755B8];
  v5 = NTKCGImagePropertyOrientationToUIImageOrientation();
  v7 = objc_msgSend_imageWithCGImage_scale_orientation_(v4, v6, v3, v5, 1.0);
  CGImageRelease(v3);

  return v7;
}

uint64_t sub_23BF2AF68(const __CFData *a1)
{
  v1 = CGImageSourceCreateWithData(a1, 0);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = CGImageSourceCopyPropertiesAtIndex(v1, 0, 0);
  v4 = 1;
  if (v3)
  {
    v5 = v3;
    Value = CFDictionaryGetValue(v3, *MEMORY[0x277CD3410]);
    valuePtr = 1;
    if (Value)
    {
      if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
      {
        v4 = valuePtr;
      }

      else
      {
        v4 = 1;
      }
    }

    CFRelease(v5);
  }

  CFRelease(v2);
  v10 = objc_msgSend_logObject(NTKParmesanFaceBundle, v7, v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_23BFF8260(v4, v10);
  }

  return v4;
}

CGImageRef sub_23BF2B03C(const __CFData *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = CGImageSourceCreateWithData(a1, 0);
  if (!v1)
  {
    return 0;
  }

  v3 = v1;
  v7 = *MEMORY[0x277CD3618];
  v8[0] = MEMORY[0x277CBEC28];
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v2, v8, &v7, 1);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v3, 0, v4);
  CFRelease(v3);

  return ImageAtIndex;
}

CGImageDestination *sub_23BF2B10C(void *a1, double a2)
{
  v39[3] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v7 = objc_msgSend_data(MEMORY[0x277CBEB28], v4, v5, v6);
  v11 = objc_msgSend_identifier(*MEMORY[0x277CE1D90], v8, v9, v10);
  v12 = CGImageDestinationCreateWithData(v7, v11, 1uLL, 0);

  if (v12)
  {
    objc_msgSend_imageOrientation(v3, v13, v14, v15);
    v16 = NTKUIImageOrientationToCGImagePropertyOrientation();
    v17 = *MEMORY[0x277CD2D78];
    v39[0] = MEMORY[0x277CBEC38];
    v18 = *MEMORY[0x277CD3410];
    v38[0] = v17;
    v38[1] = v18;
    v21 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v19, v16, v20);
    v39[1] = v21;
    v38[2] = *MEMORY[0x277CD2D48];
    v25 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v22, v23, v24, a2);
    v39[2] = v25;
    v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v39, v38, 3);

    v28 = v3;
    v32 = objc_msgSend_CGImage(v28, v29, v30, v31);
    CGImageDestinationAddImage(v12, v32, v27);
    CGImageDestinationFinalize(v12);
    CFRelease(v12);
    if (objc_msgSend_length(v7, v33, v34, v35))
    {
      v36 = v7;
    }

    else
    {
      v36 = 0;
    }

    v12 = v36;
  }

  return v12;
}

id kParmesanColorSlots(uint64_t a1, const char *a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"style-color";
  v4[1] = @"time-color";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 2);

  return v2;
}

void sub_23BF2C1E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4);
  v6 = qword_27E1E3110;
  qword_27E1E3110 = v5;

  v7 = MEMORY[0x277CCABB0];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 24);
  *(v8 + 24) = v9 + 1;
  v12 = objc_msgSend_numberWithInteger_(v7, v10, v9, v11);
  v13 = qword_27E1E3110;
  v2464 = *MEMORY[0x277D2C240];
  v2473 = *MEMORY[0x277D2C1B0];
  v15 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v14, *MEMORY[0x277D2C240], *MEMORY[0x277D2C1B0]);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v16, v12, v15);

  v17 = MEMORY[0x277CCABB0];
  v18 = *(*(a1 + 32) + 8);
  v19 = *(v18 + 24);
  *(v18 + 24) = v19 + 1;
  v22 = objc_msgSend_numberWithInteger_(v17, v20, v19, v21);
  v23 = qword_27E1E3110;
  v24 = *MEMORY[0x277D2C248];
  v25 = *MEMORY[0x277D2C6B0];
  v2461 = *MEMORY[0x277D2C248];
  v2514 = *MEMORY[0x277D2C6B0];
  v27 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v26, *MEMORY[0x277D2C248], *MEMORY[0x277D2C6B0]);
  objc_msgSend_setObject_forKeyedSubscript_(v23, v28, v22, v27);

  v29 = MEMORY[0x277CCABB0];
  v30 = *(*(a1 + 32) + 8);
  v31 = *(v30 + 24);
  *(v30 + 24) = v31 + 1;
  v34 = objc_msgSend_numberWithInteger_(v29, v32, v31, v33);
  v35 = qword_27E1E3110;
  v2484 = *MEMORY[0x277D2C6B8];
  v37 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v36, v25, *MEMORY[0x277D2C6B8]);
  objc_msgSend_setObject_forKeyedSubscript_(v35, v38, v34, v37);

  v39 = MEMORY[0x277CCABB0];
  v40 = *(*(a1 + 32) + 8);
  v41 = *(v40 + 24);
  *(v40 + 24) = v41 + 1;
  v44 = objc_msgSend_numberWithInteger_(v39, v42, v41, v43);
  v45 = qword_27E1E3110;
  v2509 = *MEMORY[0x277D2C230];
  v47 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v46, v24, *MEMORY[0x277D2C230]);
  objc_msgSend_setObject_forKeyedSubscript_(v45, v48, v44, v47);

  v49 = MEMORY[0x277CCABB0];
  v50 = *(*(a1 + 32) + 8);
  v51 = *(v50 + 24);
  *(v50 + 24) = v51 + 1;
  v54 = objc_msgSend_numberWithInteger_(v49, v52, v51, v53);
  v55 = qword_27E1E3110;
  v2450 = *MEMORY[0x277D2C4D8];
  v2458 = *MEMORY[0x277D2C1A8];
  v57 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v56, *MEMORY[0x277D2C4D8], *MEMORY[0x277D2C1A8]);
  objc_msgSend_setObject_forKeyedSubscript_(v55, v58, v54, v57);

  v59 = MEMORY[0x277CCABB0];
  v60 = *(*(a1 + 32) + 8);
  v61 = *(v60 + 24);
  *(v60 + 24) = v61 + 1;
  v64 = objc_msgSend_numberWithInteger_(v59, v62, v61, v63);
  v65 = qword_27E1E3110;
  v2452 = *MEMORY[0x277D2C1E8];
  v2500 = *MEMORY[0x277D2C1F0];
  v67 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v66, *MEMORY[0x277D2C1E8], *MEMORY[0x277D2C1F0]);
  objc_msgSend_setObject_forKeyedSubscript_(v65, v68, v64, v67);

  v69 = MEMORY[0x277CCABB0];
  v70 = *(*(a1 + 32) + 8);
  v71 = *(v70 + 24);
  *(v70 + 24) = v71 + 1;
  v74 = objc_msgSend_numberWithInteger_(v69, v72, v71, v73);
  v75 = qword_27E1E3110;
  v76 = *MEMORY[0x277D2C190];
  v2487 = *MEMORY[0x277D2C228];
  v2444 = *MEMORY[0x277D2C190];
  v78 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v77, *MEMORY[0x277D2C190], *MEMORY[0x277D2C228]);
  objc_msgSend_setObject_forKeyedSubscript_(v75, v79, v74, v78);

  v80 = MEMORY[0x277CCABB0];
  v81 = *(*(a1 + 32) + 8);
  v82 = *(v81 + 24);
  *(v81 + 24) = v82 + 1;
  v85 = objc_msgSend_numberWithInteger_(v80, v83, v82, v84);
  v86 = qword_27E1E3110;
  v2504 = *MEMORY[0x277D2C1D8];
  v2490 = *MEMORY[0x277D2C4A0];
  v88 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v87, *MEMORY[0x277D2C1D8], *MEMORY[0x277D2C4A0]);
  objc_msgSend_setObject_forKeyedSubscript_(v86, v89, v85, v88);

  v90 = MEMORY[0x277CCABB0];
  v91 = *(*(a1 + 32) + 8);
  v92 = *(v91 + 24);
  *(v91 + 24) = v92 + 1;
  v95 = objc_msgSend_numberWithInteger_(v90, v93, v92, v94);
  v96 = qword_27E1E3110;
  v2467 = *MEMORY[0x277D2C548];
  v97 = *MEMORY[0x277D2C660];
  v2477 = *MEMORY[0x277D2C660];
  v99 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v98, *MEMORY[0x277D2C548], *MEMORY[0x277D2C660]);
  objc_msgSend_setObject_forKeyedSubscript_(v96, v100, v95, v99);

  v101 = MEMORY[0x277CCABB0];
  v102 = *(*(a1 + 32) + 8);
  v103 = *(v102 + 24);
  *(v102 + 24) = v103 + 1;
  v106 = objc_msgSend_numberWithInteger_(v101, v104, v103, v105);
  v107 = qword_27E1E3110;
  v2448 = *MEMORY[0x277D2C490];
  v2495 = *MEMORY[0x277D2C668];
  v109 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v108, *MEMORY[0x277D2C490], *MEMORY[0x277D2C668]);
  objc_msgSend_setObject_forKeyedSubscript_(v107, v110, v106, v109);

  v111 = MEMORY[0x277CCABB0];
  v112 = *(*(a1 + 32) + 8);
  v113 = *(v112 + 24);
  *(v112 + 24) = v113 + 1;
  v116 = objc_msgSend_numberWithInteger_(v111, v114, v113, v115);
  v117 = qword_27E1E3110;
  v119 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v118, v76, v97);
  objc_msgSend_setObject_forKeyedSubscript_(v117, v120, v116, v119);

  v121 = MEMORY[0x277CCABB0];
  v122 = *(*(a1 + 32) + 8);
  v123 = *(v122 + 24);
  *(v122 + 24) = v123 + 1;
  v126 = objc_msgSend_numberWithInteger_(v121, v124, v123, v125);
  v127 = qword_27E1E3110;
  v2446 = *MEMORY[0x277D2C498];
  v2456 = *MEMORY[0x277D2C538];
  v129 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v128, *MEMORY[0x277D2C498], *MEMORY[0x277D2C538]);
  objc_msgSend_setObject_forKeyedSubscript_(v127, v130, v126, v129);

  v131 = MEMORY[0x277CCABB0];
  v132 = *(*(a1 + 32) + 8);
  v133 = *(v132 + 24);
  *(v132 + 24) = v133 + 1;
  v136 = objc_msgSend_numberWithInteger_(v131, v134, v133, v135);
  v137 = qword_27E1E3110;
  v138 = *MEMORY[0x277D2C270];
  v2438 = *MEMORY[0x277D2C278];
  v2519 = *MEMORY[0x277D2C270];
  v140 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v139, *MEMORY[0x277D2C270], *MEMORY[0x277D2C278]);
  objc_msgSend_setObject_forKeyedSubscript_(v137, v141, v136, v140);

  v142 = MEMORY[0x277CCABB0];
  v143 = *(*(a1 + 32) + 8);
  v144 = *(v143 + 24);
  *(v143 + 24) = v144 + 1;
  v147 = objc_msgSend_numberWithInteger_(v142, v145, v144, v146);
  v148 = qword_27E1E3110;
  v2436 = *MEMORY[0x277D2C260];
  v2493 = *MEMORY[0x277D2C268];
  v150 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v149, *MEMORY[0x277D2C260], *MEMORY[0x277D2C268]);
  objc_msgSend_setObject_forKeyedSubscript_(v148, v151, v147, v150);

  v152 = MEMORY[0x277CCABB0];
  v153 = *(*(a1 + 32) + 8);
  v154 = *(v153 + 24);
  *(v153 + 24) = v154 + 1;
  v157 = objc_msgSend_numberWithInteger_(v152, v155, v154, v156);
  v158 = qword_27E1E3110;
  v159 = *MEMORY[0x277D2C280];
  v161 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v160, *MEMORY[0x277D2C280], v138);
  objc_msgSend_setObject_forKeyedSubscript_(v158, v162, v157, v161);

  v163 = MEMORY[0x277CCABB0];
  v164 = *(*(a1 + 32) + 8);
  v165 = *(v164 + 24);
  *(v164 + 24) = v165 + 1;
  v168 = objc_msgSend_numberWithInteger_(v163, v166, v165, v167);
  v169 = qword_27E1E3110;
  v170 = *MEMORY[0x277D2C688];
  v172 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v171, v2490, *MEMORY[0x277D2C688]);
  objc_msgSend_setObject_forKeyedSubscript_(v169, v173, v168, v172);

  v174 = MEMORY[0x277CCABB0];
  v175 = *(*(a1 + 32) + 8);
  v176 = *(v175 + 24);
  *(v175 + 24) = v176 + 1;
  v179 = objc_msgSend_numberWithInteger_(v174, v177, v176, v178);
  v180 = qword_27E1E3110;
  v2442 = *MEMORY[0x277D2C578];
  v2480 = *MEMORY[0x277D2C558];
  v182 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v181, *MEMORY[0x277D2C578], *MEMORY[0x277D2C558]);
  objc_msgSend_setObject_forKeyedSubscript_(v180, v183, v179, v182);

  v184 = MEMORY[0x277CCABB0];
  v185 = *(*(a1 + 32) + 8);
  v186 = *(v185 + 24);
  *(v185 + 24) = v186 + 1;
  v189 = objc_msgSend_numberWithInteger_(v184, v187, v186, v188);
  v190 = qword_27E1E3110;
  v2440 = *MEMORY[0x277D2C570];
  v191 = v170;
  v2470 = v170;
  v193 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v192, v170, *MEMORY[0x277D2C570]);
  objc_msgSend_setObject_forKeyedSubscript_(v190, v194, v189, v193);

  v195 = MEMORY[0x277CCABB0];
  v196 = *(*(a1 + 32) + 8);
  v197 = *(v196 + 24);
  *(v196 + 24) = v197 + 1;
  v200 = objc_msgSend_numberWithInteger_(v195, v198, v197, v199);
  v201 = qword_27E1E3110;
  v2454 = *MEMORY[0x277D2C210];
  v202 = *MEMORY[0x277D2C680];
  v204 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v203, *MEMORY[0x277D2C210], *MEMORY[0x277D2C680]);
  objc_msgSend_setObject_forKeyedSubscript_(v201, v205, v200, v204);

  v206 = MEMORY[0x277CCABB0];
  v207 = *(*(a1 + 32) + 8);
  v208 = *(v207 + 24);
  *(v207 + 24) = v208 + 1;
  v211 = objc_msgSend_numberWithInteger_(v206, v209, v208, v210);
  v212 = qword_27E1E3110;
  v213 = *MEMORY[0x277D2C540];
  v215 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v214, v191, *MEMORY[0x277D2C540]);
  objc_msgSend_setObject_forKeyedSubscript_(v212, v216, v211, v215);

  v217 = MEMORY[0x277CCABB0];
  v218 = *(*(a1 + 32) + 8);
  v219 = *(v218 + 24);
  *(v218 + 24) = v219 + 1;
  v222 = objc_msgSend_numberWithInteger_(v217, v220, v219, v221);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v223, v222, *MEMORY[0x277D2C478]);

  v224 = MEMORY[0x277CCABB0];
  v225 = *(*(a1 + 32) + 8);
  v226 = *(v225 + 24);
  *(v225 + 24) = v226 + 1;
  v229 = objc_msgSend_numberWithInteger_(v224, v227, v226, v228);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v230, v229, *MEMORY[0x277D2C480]);

  v231 = MEMORY[0x277CCABB0];
  v232 = *(*(a1 + 32) + 8);
  v233 = *(v232 + 24);
  *(v232 + 24) = v233 + 1;
  v236 = objc_msgSend_numberWithInteger_(v231, v234, v233, v235);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v237, v236, *MEMORY[0x277D2C488]);

  ++*(*(*(a1 + 32) + 8) + 24);
  v238 = MEMORY[0x277CCABB0];
  v239 = *(*(a1 + 32) + 8);
  v240 = *(v239 + 24);
  *(v239 + 24) = v240 + 1;
  v243 = objc_msgSend_numberWithInteger_(v238, v241, v240, v242);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v244, v243, v159);

  v245 = MEMORY[0x277CCABB0];
  v246 = *(*(a1 + 32) + 8);
  v247 = *(v246 + 24);
  *(v246 + 24) = v247 + 1;
  v250 = objc_msgSend_numberWithInteger_(v245, v248, v247, v249);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v251, v250, v2493);

  v252 = MEMORY[0x277CCABB0];
  v253 = *(*(a1 + 32) + 8);
  v254 = *(v253 + 24);
  *(v253 + 24) = v254 + 1;
  v257 = objc_msgSend_numberWithInteger_(v252, v255, v254, v256);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v258, v257, v2436);

  v259 = MEMORY[0x277CCABB0];
  v260 = *(*(a1 + 32) + 8);
  v261 = *(v260 + 24);
  *(v260 + 24) = v261 + 1;
  v264 = objc_msgSend_numberWithInteger_(v259, v262, v261, v263);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v265, v264, v2519);

  v266 = MEMORY[0x277CCABB0];
  v267 = *(*(a1 + 32) + 8);
  v268 = *(v267 + 24);
  *(v267 + 24) = v268 + 1;
  v271 = objc_msgSend_numberWithInteger_(v266, v269, v268, v270);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v272, v271, v2438);

  v273 = MEMORY[0x277CCABB0];
  v274 = *(*(a1 + 32) + 8);
  v275 = *(v274 + 24);
  *(v274 + 24) = v275 + 1;
  v278 = objc_msgSend_numberWithInteger_(v273, v276, v275, v277);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v279, v278, *MEMORY[0x277D2C288]);

  ++*(*(*(a1 + 32) + 8) + 24);
  v280 = MEMORY[0x277CCABB0];
  v281 = *(*(a1 + 32) + 8);
  v282 = *(v281 + 24);
  *(v281 + 24) = v282 + 1;
  v285 = objc_msgSend_numberWithInteger_(v280, v283, v282, v284);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v286, v285, *MEMORY[0x277D2C258]);

  v287 = MEMORY[0x277CCABB0];
  v288 = *(*(a1 + 32) + 8);
  v289 = *(v288 + 24);
  *(v288 + 24) = v289 + 1;
  v292 = objc_msgSend_numberWithInteger_(v287, v290, v289, v291);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v293, v292, *MEMORY[0x277D2C560]);

  v294 = MEMORY[0x277CCABB0];
  v295 = *(*(a1 + 32) + 8);
  v296 = *(v295 + 24);
  *(v295 + 24) = v296 + 1;
  v299 = objc_msgSend_numberWithInteger_(v294, v297, v296, v298);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v300, v299, v202);

  v301 = MEMORY[0x277CCABB0];
  v302 = *(*(a1 + 32) + 8);
  v303 = *(v302 + 24);
  *(v302 + 24) = v303 + 1;
  v306 = objc_msgSend_numberWithInteger_(v301, v304, v303, v305);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v307, v306, *MEMORY[0x277D2C678]);

  v308 = MEMORY[0x277CCABB0];
  v309 = *(*(a1 + 32) + 8);
  v310 = *(v309 + 24);
  *(v309 + 24) = v310 + 1;
  v313 = objc_msgSend_numberWithInteger_(v308, v311, v310, v312);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v314, v313, *MEMORY[0x277D2C568]);

  v315 = MEMORY[0x277CCABB0];
  v316 = *(*(a1 + 32) + 8);
  v317 = *(v316 + 24);
  *(v316 + 24) = v317 + 1;
  v320 = objc_msgSend_numberWithInteger_(v315, v318, v317, v319);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v321, v320, v2442);

  v322 = MEMORY[0x277CCABB0];
  v323 = *(*(a1 + 32) + 8);
  v324 = *(v323 + 24);
  *(v323 + 24) = v324 + 1;
  v327 = objc_msgSend_numberWithInteger_(v322, v325, v324, v326);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v328, v327, v2440);

  v329 = MEMORY[0x277CCABB0];
  v330 = *(*(a1 + 32) + 8);
  v331 = *(v330 + 24);
  *(v330 + 24) = v331 + 1;
  v334 = objc_msgSend_numberWithInteger_(v329, v332, v331, v333);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v335, v334, v2480);

  v336 = MEMORY[0x277CCABB0];
  v337 = *(*(a1 + 32) + 8);
  v338 = *(v337 + 24);
  *(v337 + 24) = v338 + 1;
  v341 = objc_msgSend_numberWithInteger_(v336, v339, v338, v340);
  v2481 = *MEMORY[0x277D2C4B0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v342, v341, *MEMORY[0x277D2C4B0]);

  v343 = MEMORY[0x277CCABB0];
  v344 = *(*(a1 + 32) + 8);
  v345 = *(v344 + 24);
  *(v344 + 24) = v345 + 1;
  v348 = objc_msgSend_numberWithInteger_(v343, v346, v345, v347);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v349, v348, *MEMORY[0x277D2C198]);

  v350 = MEMORY[0x277CCABB0];
  v351 = *(*(a1 + 32) + 8);
  v352 = *(v351 + 24);
  *(v351 + 24) = v352 + 1;
  v355 = objc_msgSend_numberWithInteger_(v350, v353, v352, v354);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v356, v355, v2444);

  v357 = MEMORY[0x277CCABB0];
  v358 = *(*(a1 + 32) + 8);
  v359 = *(v358 + 24);
  *(v358 + 24) = v359 + 1;
  v362 = objc_msgSend_numberWithInteger_(v357, v360, v359, v361);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v363, v362, v2464);

  v364 = MEMORY[0x277CCABB0];
  v365 = *(*(a1 + 32) + 8);
  v366 = *(v365 + 24);
  *(v365 + 24) = v366 + 1;
  v369 = objc_msgSend_numberWithInteger_(v364, v367, v366, v368);
  v2465 = *MEMORY[0x277D2C4B8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v370, v369, *MEMORY[0x277D2C4B8]);

  v371 = MEMORY[0x277CCABB0];
  v372 = *(*(a1 + 32) + 8);
  v373 = *(v372 + 24);
  *(v372 + 24) = v373 + 1;
  v376 = objc_msgSend_numberWithInteger_(v371, v374, v373, v375);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v377, v376, *MEMORY[0x277D2C508]);

  v378 = MEMORY[0x277CCABB0];
  v379 = *(*(a1 + 32) + 8);
  v380 = *(v379 + 24);
  *(v379 + 24) = v380 + 1;
  v383 = objc_msgSend_numberWithInteger_(v378, v381, v380, v382);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v384, v383, *MEMORY[0x277D2C528]);

  v385 = MEMORY[0x277CCABB0];
  v386 = *(*(a1 + 32) + 8);
  v387 = *(v386 + 24);
  *(v386 + 24) = v387 + 1;
  v390 = objc_msgSend_numberWithInteger_(v385, v388, v387, v389);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v391, v390, v2446);

  v392 = MEMORY[0x277CCABB0];
  v393 = *(*(a1 + 32) + 8);
  v394 = *(v393 + 24);
  *(v393 + 24) = v394 + 1;
  v397 = objc_msgSend_numberWithInteger_(v392, v395, v394, v396);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v398, v397, *MEMORY[0x277D2C6A0]);

  v399 = MEMORY[0x277CCABB0];
  v400 = *(*(a1 + 32) + 8);
  v401 = *(v400 + 24);
  *(v400 + 24) = v401 + 1;
  v404 = objc_msgSend_numberWithInteger_(v399, v402, v401, v403);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v405, v404, v2461);

  v406 = MEMORY[0x277CCABB0];
  v407 = *(*(a1 + 32) + 8);
  v408 = *(v407 + 24);
  *(v407 + 24) = v408 + 1;
  v411 = objc_msgSend_numberWithInteger_(v406, v409, v408, v410);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v412, v411, v2450);

  v413 = MEMORY[0x277CCABB0];
  v414 = *(*(a1 + 32) + 8);
  v415 = *(v414 + 24);
  *(v414 + 24) = v415 + 1;
  v418 = objc_msgSend_numberWithInteger_(v413, v416, v415, v417);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v419, v418, *MEMORY[0x277D2C648]);

  v420 = MEMORY[0x277CCABB0];
  v421 = *(*(a1 + 32) + 8);
  v422 = *(v421 + 24);
  *(v421 + 24) = v422 + 1;
  v425 = objc_msgSend_numberWithInteger_(v420, v423, v422, v424);
  v2462 = *MEMORY[0x277D2C650];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v426, v425, *MEMORY[0x277D2C650]);

  v427 = MEMORY[0x277CCABB0];
  v428 = *(*(a1 + 32) + 8);
  v429 = *(v428 + 24);
  *(v428 + 24) = v429 + 1;
  v432 = objc_msgSend_numberWithInteger_(v427, v430, v429, v431);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v433, v432, *MEMORY[0x277D2C500]);

  v434 = MEMORY[0x277CCABB0];
  v435 = *(*(a1 + 32) + 8);
  v436 = *(v435 + 24);
  *(v435 + 24) = v436 + 1;
  v439 = objc_msgSend_numberWithInteger_(v434, v437, v436, v438);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v440, v439, v2452);

  v441 = MEMORY[0x277CCABB0];
  v442 = *(*(a1 + 32) + 8);
  v443 = *(v442 + 24);
  *(v442 + 24) = v443 + 1;
  v446 = objc_msgSend_numberWithInteger_(v441, v444, v443, v445);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v447, v446, v2448);

  v448 = MEMORY[0x277CCABB0];
  v449 = *(*(a1 + 32) + 8);
  v450 = *(v449 + 24);
  *(v449 + 24) = v450 + 1;
  v453 = objc_msgSend_numberWithInteger_(v448, v451, v450, v452);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v454, v453, *MEMORY[0x277D2C530]);

  v455 = MEMORY[0x277CCABB0];
  v456 = *(*(a1 + 32) + 8);
  v457 = *(v456 + 24);
  *(v456 + 24) = v457 + 1;
  v460 = objc_msgSend_numberWithInteger_(v455, v458, v457, v459);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v461, v460, *MEMORY[0x277D2C4C8]);

  v462 = MEMORY[0x277CCABB0];
  v463 = *(*(a1 + 32) + 8);
  v464 = *(v463 + 24);
  *(v463 + 24) = v464 + 1;
  v467 = objc_msgSend_numberWithInteger_(v462, v465, v464, v466);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v468, v467, v2514);

  v469 = MEMORY[0x277CCABB0];
  v470 = *(*(a1 + 32) + 8);
  v471 = *(v470 + 24);
  *(v470 + 24) = v471 + 1;
  v474 = objc_msgSend_numberWithInteger_(v469, v472, v471, v473);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v475, v474, *MEMORY[0x277D2C670]);

  v476 = MEMORY[0x277CCABB0];
  v477 = *(*(a1 + 32) + 8);
  v478 = *(v477 + 24);
  *(v477 + 24) = v478 + 1;
  v481 = objc_msgSend_numberWithInteger_(v476, v479, v478, v480);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v482, v481, v2458);

  v483 = MEMORY[0x277CCABB0];
  v484 = *(*(a1 + 32) + 8);
  v485 = *(v484 + 24);
  *(v484 + 24) = v485 + 1;
  v488 = objc_msgSend_numberWithInteger_(v483, v486, v485, v487);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v489, v488, *MEMORY[0x277D2C180]);

  v490 = MEMORY[0x277CCABB0];
  v491 = *(*(a1 + 32) + 8);
  v492 = *(v491 + 24);
  *(v491 + 24) = v492 + 1;
  v495 = objc_msgSend_numberWithInteger_(v490, v493, v492, v494);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v496, v495, *MEMORY[0x277D2C550]);

  v497 = MEMORY[0x277CCABB0];
  v498 = *(*(a1 + 32) + 8);
  v499 = *(v498 + 24);
  *(v498 + 24) = v499 + 1;
  v502 = objc_msgSend_numberWithInteger_(v497, v500, v499, v501);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v503, v502, *MEMORY[0x277D2C470]);

  v504 = MEMORY[0x277CCABB0];
  v505 = *(*(a1 + 32) + 8);
  v506 = *(v505 + 24);
  *(v505 + 24) = v506 + 1;
  v509 = objc_msgSend_numberWithInteger_(v504, v507, v506, v508);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v510, v509, *MEMORY[0x277D2C4D0]);

  v511 = MEMORY[0x277CCABB0];
  v512 = *(*(a1 + 32) + 8);
  v513 = *(v512 + 24);
  *(v512 + 24) = v513 + 1;
  v516 = objc_msgSend_numberWithInteger_(v511, v514, v513, v515);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v517, v516, *MEMORY[0x277D2C510]);

  v518 = MEMORY[0x277CCABB0];
  v519 = *(*(a1 + 32) + 8);
  v520 = *(v519 + 24);
  *(v519 + 24) = v520 + 1;
  v523 = objc_msgSend_numberWithInteger_(v518, v521, v520, v522);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v524, v523, *MEMORY[0x277D2C520]);

  v525 = MEMORY[0x277CCABB0];
  v526 = *(*(a1 + 32) + 8);
  v527 = *(v526 + 24);
  *(v526 + 24) = v527 + 1;
  v530 = objc_msgSend_numberWithInteger_(v525, v528, v527, v529);
  v2459 = *MEMORY[0x277D2C640];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v531, v530, *MEMORY[0x277D2C640]);

  v532 = MEMORY[0x277CCABB0];
  v533 = *(*(a1 + 32) + 8);
  v534 = *(v533 + 24);
  *(v533 + 24) = v534 + 1;
  v537 = objc_msgSend_numberWithInteger_(v532, v535, v534, v536);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v538, v537, *MEMORY[0x277D2C4E0]);

  v539 = MEMORY[0x277CCABB0];
  v540 = *(*(a1 + 32) + 8);
  v541 = *(v540 + 24);
  *(v540 + 24) = v541 + 1;
  v544 = objc_msgSend_numberWithInteger_(v539, v542, v541, v543);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v545, v544, v2487);

  v546 = MEMORY[0x277CCABB0];
  v547 = *(*(a1 + 32) + 8);
  v548 = *(v547 + 24);
  *(v547 + 24) = v548 + 1;
  v551 = objc_msgSend_numberWithInteger_(v546, v549, v548, v550);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v552, v551, v2456);

  v553 = MEMORY[0x277CCABB0];
  v554 = *(*(a1 + 32) + 8);
  v555 = *(v554 + 24);
  *(v554 + 24) = v555 + 1;
  v558 = objc_msgSend_numberWithInteger_(v553, v556, v555, v557);
  v2488 = *MEMORY[0x277D2C6A8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v559, v558, *MEMORY[0x277D2C6A8]);

  v560 = MEMORY[0x277CCABB0];
  v561 = *(*(a1 + 32) + 8);
  v562 = *(v561 + 24);
  *(v561 + 24) = v562 + 1;
  v565 = objc_msgSend_numberWithInteger_(v560, v563, v562, v564);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v566, v565, *MEMORY[0x277D2C1D0]);

  v567 = MEMORY[0x277CCABB0];
  v568 = *(*(a1 + 32) + 8);
  v569 = *(v568 + 24);
  *(v568 + 24) = v569 + 1;
  v572 = objc_msgSend_numberWithInteger_(v567, v570, v569, v571);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v573, v572, v2509);

  v574 = MEMORY[0x277CCABB0];
  v575 = *(*(a1 + 32) + 8);
  v576 = *(v575 + 24);
  *(v575 + 24) = v576 + 1;
  v579 = objc_msgSend_numberWithInteger_(v574, v577, v576, v578);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v580, v579, *MEMORY[0x277D2C690]);

  v581 = MEMORY[0x277CCABB0];
  v582 = *(*(a1 + 32) + 8);
  v583 = *(v582 + 24);
  *(v582 + 24) = v583 + 1;
  v586 = objc_msgSend_numberWithInteger_(v581, v584, v583, v585);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v587, v586, v2454);

  v588 = MEMORY[0x277CCABB0];
  v589 = *(*(a1 + 32) + 8);
  v590 = *(v589 + 24);
  *(v589 + 24) = v590 + 1;
  v593 = objc_msgSend_numberWithInteger_(v588, v591, v590, v592);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v594, v593, v2495);

  v595 = MEMORY[0x277CCABB0];
  v596 = *(*(a1 + 32) + 8);
  v597 = *(v596 + 24);
  *(v596 + 24) = v597 + 1;
  v600 = objc_msgSend_numberWithInteger_(v595, v598, v597, v599);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v601, v600, *MEMORY[0x277D2C4F8]);

  v602 = MEMORY[0x277CCABB0];
  v603 = *(*(a1 + 32) + 8);
  v604 = *(v603 + 24);
  *(v603 + 24) = v604 + 1;
  v607 = objc_msgSend_numberWithInteger_(v602, v605, v604, v606);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v608, v607, *MEMORY[0x277D2C188]);

  v609 = MEMORY[0x277CCABB0];
  v610 = *(*(a1 + 32) + 8);
  v611 = *(v610 + 24);
  *(v610 + 24) = v611 + 1;
  v614 = objc_msgSend_numberWithInteger_(v609, v612, v611, v613);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v615, v614, *MEMORY[0x277D2C1C8]);

  v616 = MEMORY[0x277CCABB0];
  v617 = *(*(a1 + 32) + 8);
  v618 = *(v617 + 24);
  *(v617 + 24) = v618 + 1;
  v621 = objc_msgSend_numberWithInteger_(v616, v619, v618, v620);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v622, v621, *MEMORY[0x277D2C518]);

  v623 = MEMORY[0x277CCABB0];
  v624 = *(*(a1 + 32) + 8);
  v625 = *(v624 + 24);
  *(v624 + 24) = v625 + 1;
  v628 = objc_msgSend_numberWithInteger_(v623, v626, v625, v627);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v629, v628, *MEMORY[0x277D2C218]);

  v630 = MEMORY[0x277CCABB0];
  v631 = *(*(a1 + 32) + 8);
  v632 = *(v631 + 24);
  *(v631 + 24) = v632 + 1;
  v635 = objc_msgSend_numberWithInteger_(v630, v633, v632, v634);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v636, v635, *MEMORY[0x277D2C4A8]);

  v637 = MEMORY[0x277CCABB0];
  v638 = *(*(a1 + 32) + 8);
  v639 = *(v638 + 24);
  *(v638 + 24) = v639 + 1;
  v642 = objc_msgSend_numberWithInteger_(v637, v640, v639, v641);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v643, v642, *MEMORY[0x277D2C208]);

  v644 = MEMORY[0x277CCABB0];
  v645 = *(*(a1 + 32) + 8);
  v646 = *(v645 + 24);
  *(v645 + 24) = v646 + 1;
  v649 = objc_msgSend_numberWithInteger_(v644, v647, v646, v648);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v650, v649, *MEMORY[0x277D2C220]);

  v651 = MEMORY[0x277CCABB0];
  v652 = *(*(a1 + 32) + 8);
  v653 = *(v652 + 24);
  *(v652 + 24) = v653 + 1;
  v656 = objc_msgSend_numberWithInteger_(v651, v654, v653, v655);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v657, v656, *MEMORY[0x277D2C178]);

  v658 = MEMORY[0x277CCABB0];
  v659 = *(*(a1 + 32) + 8);
  v660 = *(v659 + 24);
  *(v659 + 24) = v660 + 1;
  v663 = objc_msgSend_numberWithInteger_(v658, v661, v660, v662);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v664, v663, v2500);

  v665 = MEMORY[0x277CCABB0];
  v666 = *(*(a1 + 32) + 8);
  v667 = *(v666 + 24);
  *(v666 + 24) = v667 + 1;
  v670 = objc_msgSend_numberWithInteger_(v665, v668, v667, v669);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v671, v670, *MEMORY[0x277D2C4C0]);

  v672 = MEMORY[0x277CCABB0];
  v673 = *(*(a1 + 32) + 8);
  v674 = *(v673 + 24);
  *(v673 + 24) = v674 + 1;
  v677 = objc_msgSend_numberWithInteger_(v672, v675, v674, v676);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v678, v677, v2473);

  v679 = MEMORY[0x277CCABB0];
  v680 = *(*(a1 + 32) + 8);
  v681 = *(v680 + 24);
  *(v680 + 24) = v681 + 1;
  v684 = objc_msgSend_numberWithInteger_(v679, v682, v681, v683);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v685, v684, v213);

  v686 = MEMORY[0x277CCABB0];
  v687 = *(*(a1 + 32) + 8);
  v688 = *(v687 + 24);
  *(v687 + 24) = v688 + 1;
  v691 = objc_msgSend_numberWithInteger_(v686, v689, v688, v690);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v692, v691, v2490);

  v693 = MEMORY[0x277CCABB0];
  v694 = *(*(a1 + 32) + 8);
  v695 = *(v694 + 24);
  *(v694 + 24) = v695 + 1;
  v698 = objc_msgSend_numberWithInteger_(v693, v696, v695, v697);
  v699 = *MEMORY[0x277D2C1E0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v700, v698, *MEMORY[0x277D2C1E0]);

  v701 = MEMORY[0x277CCABB0];
  v702 = *(*(a1 + 32) + 8);
  v703 = *(v702 + 24);
  *(v702 + 24) = v703 + 1;
  v706 = objc_msgSend_numberWithInteger_(v701, v704, v703, v705);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v707, v706, v2467);

  v708 = MEMORY[0x277CCABB0];
  v709 = *(*(a1 + 32) + 8);
  v710 = *(v709 + 24);
  *(v709 + 24) = v710 + 1;
  v713 = objc_msgSend_numberWithInteger_(v708, v711, v710, v712);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v714, v713, *MEMORY[0x277D2C658]);

  v715 = MEMORY[0x277CCABB0];
  v716 = *(*(a1 + 32) + 8);
  v717 = *(v716 + 24);
  *(v716 + 24) = v717 + 1;
  v720 = objc_msgSend_numberWithInteger_(v715, v718, v717, v719);
  v2474 = *MEMORY[0x277D2C698];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v721, v720, *MEMORY[0x277D2C698]);

  v722 = MEMORY[0x277CCABB0];
  v723 = *(*(a1 + 32) + 8);
  v724 = *(v723 + 24);
  *(v723 + 24) = v724 + 1;
  v727 = objc_msgSend_numberWithInteger_(v722, v725, v724, v726);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v728, v727, *MEMORY[0x277D2C6C0]);

  v729 = MEMORY[0x277CCABB0];
  v730 = *(*(a1 + 32) + 8);
  v731 = *(v730 + 24);
  *(v730 + 24) = v731 + 1;
  v734 = objc_msgSend_numberWithInteger_(v729, v732, v731, v733);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v735, v734, *MEMORY[0x277D2C1F8]);

  v736 = MEMORY[0x277CCABB0];
  v737 = *(*(a1 + 32) + 8);
  v738 = *(v737 + 24);
  *(v737 + 24) = v738 + 1;
  v741 = objc_msgSend_numberWithInteger_(v736, v739, v738, v740);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v742, v741, *MEMORY[0x277D2C4E8]);

  v743 = MEMORY[0x277CCABB0];
  v744 = *(*(a1 + 32) + 8);
  v745 = *(v744 + 24);
  *(v744 + 24) = v745 + 1;
  v748 = objc_msgSend_numberWithInteger_(v743, v746, v745, v747);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v749, v748, *MEMORY[0x277D2C638]);

  v750 = MEMORY[0x277CCABB0];
  v751 = *(*(a1 + 32) + 8);
  v752 = *(v751 + 24);
  *(v751 + 24) = v752 + 1;
  v755 = objc_msgSend_numberWithInteger_(v750, v753, v752, v754);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v756, v755, *MEMORY[0x277D2C238]);

  v757 = MEMORY[0x277CCABB0];
  v758 = *(*(a1 + 32) + 8);
  v759 = *(v758 + 24);
  *(v758 + 24) = v759 + 1;
  v762 = objc_msgSend_numberWithInteger_(v757, v760, v759, v761);
  v763 = *MEMORY[0x277D2C1B8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v764, v762, *MEMORY[0x277D2C1B8]);

  v765 = MEMORY[0x277CCABB0];
  v766 = *(*(a1 + 32) + 8);
  v767 = *(v766 + 24);
  *(v766 + 24) = v767 + 1;
  v770 = objc_msgSend_numberWithInteger_(v765, v768, v767, v769);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v771, v770, *MEMORY[0x277D2C1A0]);

  v772 = MEMORY[0x277CCABB0];
  v773 = *(*(a1 + 32) + 8);
  v774 = *(v773 + 24);
  *(v773 + 24) = v774 + 1;
  v777 = objc_msgSend_numberWithInteger_(v772, v775, v774, v776);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v778, v777, *MEMORY[0x277D2C170]);

  v779 = MEMORY[0x277CCABB0];
  v780 = *(*(a1 + 32) + 8);
  v781 = *(v780 + 24);
  *(v780 + 24) = v781 + 1;
  v784 = objc_msgSend_numberWithInteger_(v779, v782, v781, v783);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v785, v784, *MEMORY[0x277D2C200]);

  v786 = MEMORY[0x277CCABB0];
  v787 = *(*(a1 + 32) + 8);
  v788 = *(v787 + 24);
  *(v787 + 24) = v788 + 1;
  v791 = objc_msgSend_numberWithInteger_(v786, v789, v788, v790);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v792, v791, *MEMORY[0x277D2C4F0]);

  v793 = MEMORY[0x277CCABB0];
  v794 = *(*(a1 + 32) + 8);
  v795 = *(v794 + 24);
  *(v794 + 24) = v795 + 1;
  v798 = objc_msgSend_numberWithInteger_(v793, v796, v795, v797);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v799, v798, *MEMORY[0x277D2C1C0]);

  v800 = MEMORY[0x277CCABB0];
  v801 = *(*(a1 + 32) + 8);
  v802 = *(v801 + 24);
  *(v801 + 24) = v802 + 1;
  v805 = objc_msgSend_numberWithInteger_(v800, v803, v802, v804);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v806, v805, v2477);

  v807 = MEMORY[0x277CCABB0];
  v808 = *(*(a1 + 32) + 8);
  v809 = *(v808 + 24);
  *(v808 + 24) = v809 + 1;
  v812 = objc_msgSend_numberWithInteger_(v807, v810, v809, v811);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v813, v812, v2504);

  v814 = MEMORY[0x277CCABB0];
  v815 = *(*(a1 + 32) + 8);
  v816 = *(v815 + 24);
  *(v815 + 24) = v816 + 1;
  v819 = objc_msgSend_numberWithInteger_(v814, v817, v816, v818);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v820, v819, v2484);

  v821 = MEMORY[0x277CCABB0];
  v822 = *(*(a1 + 32) + 8);
  v823 = *(v822 + 24);
  *(v822 + 24) = v823 + 1;
  v826 = objc_msgSend_numberWithInteger_(v821, v824, v823, v825);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v827, v826, *MEMORY[0x277D2C250]);

  v828 = MEMORY[0x277CCABB0];
  v829 = *(*(a1 + 32) + 8);
  v830 = *(v829 + 24);
  *(v829 + 24) = v830 + 1;
  v833 = objc_msgSend_numberWithInteger_(v828, v831, v830, v832);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v834, v833, v2470);

  v835 = MEMORY[0x277CCABB0];
  v836 = *(*(a1 + 32) + 8);
  v837 = *(v836 + 24);
  *(v836 + 24) = v837 + 1;
  v840 = objc_msgSend_numberWithInteger_(v835, v838, v837, v839);
  v841 = qword_27E1E3110;
  v843 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v842, v2446, *MEMORY[0x277D2C2D0]);
  objc_msgSend_setObject_forKeyedSubscript_(v841, v844, v840, v843);

  v845 = MEMORY[0x277CCABB0];
  v846 = *(*(a1 + 32) + 8);
  v847 = *(v846 + 24);
  *(v846 + 24) = v847 + 1;
  v850 = objc_msgSend_numberWithInteger_(v845, v848, v847, v849);
  v851 = qword_27E1E3110;
  v853 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v852, v699, v763);
  objc_msgSend_setObject_forKeyedSubscript_(v851, v854, v850, v853);

  v855 = MEMORY[0x277CCABB0];
  v856 = *(*(a1 + 32) + 8);
  v857 = *(v856 + 24);
  *(v856 + 24) = v857 + 1;
  v860 = objc_msgSend_numberWithInteger_(v855, v858, v857, v859);
  v861 = qword_27E1E3110;
  v863 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v862, v2519, *MEMORY[0x277D2C2A8]);
  objc_msgSend_setObject_forKeyedSubscript_(v861, v864, v860, v863);

  v865 = MEMORY[0x277CCABB0];
  v866 = *(*(a1 + 32) + 8);
  v867 = *(v866 + 24);
  *(v866 + 24) = v867 + 1;
  v870 = objc_msgSend_numberWithInteger_(v865, v868, v867, v869);
  v871 = qword_27E1E3110;
  v872 = *MEMORY[0x277D2C290];
  v874 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v873, *MEMORY[0x277D2C290], *MEMORY[0x277D2C298]);
  objc_msgSend_setObject_forKeyedSubscript_(v871, v875, v870, v874);

  v876 = MEMORY[0x277CCABB0];
  v877 = *(*(a1 + 32) + 8);
  v878 = *(v877 + 24);
  *(v877 + 24) = v878 + 1;
  v881 = objc_msgSend_numberWithInteger_(v876, v879, v878, v880);
  v882 = qword_27E1E3110;
  v883 = *MEMORY[0x277D2C2C0];
  v884 = *MEMORY[0x277D2C2B0];
  v886 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v885, *MEMORY[0x277D2C2C0], *MEMORY[0x277D2C2B0]);
  objc_msgSend_setObject_forKeyedSubscript_(v882, v887, v881, v886);

  v888 = MEMORY[0x277CCABB0];
  v889 = *(*(a1 + 32) + 8);
  v890 = *(v889 + 24);
  *(v889 + 24) = v890 + 1;
  v893 = objc_msgSend_numberWithInteger_(v888, v891, v890, v892);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v894, v893, *MEMORY[0x277D2C2B8]);

  v895 = MEMORY[0x277CCABB0];
  v896 = *(*(a1 + 32) + 8);
  v897 = *(v896 + 24);
  *(v896 + 24) = v897 + 1;
  v900 = objc_msgSend_numberWithInteger_(v895, v898, v897, v899);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v901, v900, *MEMORY[0x277D2C2A0]);

  v902 = MEMORY[0x277CCABB0];
  v903 = *(*(a1 + 32) + 8);
  v904 = *(v903 + 24);
  *(v903 + 24) = v904 + 1;
  v907 = objc_msgSend_numberWithInteger_(v902, v905, v904, v906);
  v2491 = *MEMORY[0x277D2C2C8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v908, v907, *MEMORY[0x277D2C2C8]);

  v909 = MEMORY[0x277CCABB0];
  v910 = *(*(a1 + 32) + 8);
  v911 = *(v910 + 24);
  *(v910 + 24) = v911 + 1;
  v914 = objc_msgSend_numberWithInteger_(v909, v912, v911, v913);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v915, v914, v883);

  v916 = MEMORY[0x277CCABB0];
  v917 = *(*(a1 + 32) + 8);
  v918 = *(v917 + 24);
  *(v917 + 24) = v918 + 1;
  v921 = objc_msgSend_numberWithInteger_(v916, v919, v918, v920);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v922, v921, v872);

  v923 = MEMORY[0x277CCABB0];
  v924 = *(*(a1 + 32) + 8);
  v925 = *(v924 + 24);
  *(v924 + 24) = v925 + 1;
  v928 = objc_msgSend_numberWithInteger_(v923, v926, v925, v927);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v929, v928, v884);

  v930 = MEMORY[0x277CCABB0];
  v931 = *(*(a1 + 32) + 8);
  v932 = *(v931 + 24);
  *(v931 + 24) = v932 + 1;
  v935 = objc_msgSend_numberWithInteger_(v930, v933, v932, v934);
  v2485 = *MEMORY[0x277D2C580];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v936, v935, *MEMORY[0x277D2C580]);

  v937 = MEMORY[0x277CCABB0];
  v938 = *(*(a1 + 32) + 8);
  v939 = *(v938 + 24);
  *(v938 + 24) = v939 + 1;
  v942 = objc_msgSend_numberWithInteger_(v937, v940, v939, v941);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v943, v942, *MEMORY[0x277D2C588]);

  v944 = MEMORY[0x277CCABB0];
  v945 = *(*(a1 + 32) + 8);
  v946 = *(v945 + 24);
  *(v945 + 24) = v946 + 1;
  v949 = objc_msgSend_numberWithInteger_(v944, v947, v946, v948);
  v950 = *MEMORY[0x277D2C590];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v951, v949, *MEMORY[0x277D2C590]);

  v952 = MEMORY[0x277CCABB0];
  v953 = *(*(a1 + 32) + 8);
  v954 = *(v953 + 24);
  *(v953 + 24) = v954 + 1;
  v957 = objc_msgSend_numberWithInteger_(v952, v955, v954, v956);
  v958 = *MEMORY[0x277D2C5B0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v959, v957, *MEMORY[0x277D2C5B0]);

  v960 = MEMORY[0x277CCABB0];
  v961 = *(*(a1 + 32) + 8);
  v962 = *(v961 + 24);
  *(v961 + 24) = v962 + 1;
  v965 = objc_msgSend_numberWithInteger_(v960, v963, v962, v964);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v966, v965, *MEMORY[0x277D2C5B8]);

  v967 = MEMORY[0x277CCABB0];
  v968 = *(*(a1 + 32) + 8);
  v969 = *(v968 + 24);
  *(v968 + 24) = v969 + 1;
  v972 = objc_msgSend_numberWithInteger_(v967, v970, v969, v971);
  v973 = qword_27E1E3110;
  v975 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v974, v2493, v2465);
  objc_msgSend_setObject_forKeyedSubscript_(v973, v976, v972, v975);

  v977 = MEMORY[0x277CCABB0];
  v978 = *(*(a1 + 32) + 8);
  v979 = *(v978 + 24);
  *(v978 + 24) = v979 + 1;
  v982 = objc_msgSend_numberWithInteger_(v977, v980, v979, v981);
  v983 = qword_27E1E3110;
  v985 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v984, *MEMORY[0x277D2C598], *MEMORY[0x277D2C5A0]);
  objc_msgSend_setObject_forKeyedSubscript_(v983, v986, v982, v985);

  v987 = MEMORY[0x277CCABB0];
  v988 = *(*(a1 + 32) + 8);
  v989 = *(v988 + 24);
  *(v988 + 24) = v989 + 1;
  v992 = objc_msgSend_numberWithInteger_(v987, v990, v989, v991);
  v993 = qword_27E1E3110;
  v995 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v994, *MEMORY[0x277D2C5A8], v2462);
  objc_msgSend_setObject_forKeyedSubscript_(v993, v996, v992, v995);

  v997 = MEMORY[0x277CCABB0];
  v998 = *(*(a1 + 32) + 8);
  v999 = *(v998 + 24);
  *(v998 + 24) = v999 + 1;
  v1002 = objc_msgSend_numberWithInteger_(v997, v1000, v999, v1001);
  v1003 = qword_27E1E3110;
  v1005 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1004, v2495, v950);
  objc_msgSend_setObject_forKeyedSubscript_(v1003, v1006, v1002, v1005);

  v1007 = MEMORY[0x277CCABB0];
  v1008 = *(*(a1 + 32) + 8);
  v1009 = *(v1008 + 24);
  *(v1008 + 24) = v1009 + 1;
  v1012 = objc_msgSend_numberWithInteger_(v1007, v1010, v1009, v1011);
  v1013 = qword_27E1E3110;
  v1015 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1014, v958, v2474);
  objc_msgSend_setObject_forKeyedSubscript_(v1013, v1016, v1012, v1015);

  v1017 = MEMORY[0x277CCABB0];
  v1018 = *(*(a1 + 32) + 8);
  v1019 = *(v1018 + 24);
  *(v1018 + 24) = v1019 + 1;
  v1022 = objc_msgSend_numberWithInteger_(v1017, v1020, v1019, v1021);
  v1023 = *MEMORY[0x277D2C2E8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1024, v1022, *MEMORY[0x277D2C2E8]);

  v1025 = MEMORY[0x277CCABB0];
  v1026 = *(*(a1 + 32) + 8);
  v1027 = *(v1026 + 24);
  *(v1026 + 24) = v1027 + 1;
  v1030 = objc_msgSend_numberWithInteger_(v1025, v1028, v1027, v1029);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1031, v1030, *MEMORY[0x277D2C300]);

  v1032 = MEMORY[0x277CCABB0];
  v1033 = *(*(a1 + 32) + 8);
  v1034 = *(v1033 + 24);
  *(v1033 + 24) = v1034 + 1;
  v1037 = objc_msgSend_numberWithInteger_(v1032, v1035, v1034, v1036);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1038, v1037, *MEMORY[0x277D2C2D8]);

  v1039 = MEMORY[0x277CCABB0];
  v1040 = *(*(a1 + 32) + 8);
  v1041 = *(v1040 + 24);
  *(v1040 + 24) = v1041 + 1;
  v1044 = objc_msgSend_numberWithInteger_(v1039, v1042, v1041, v1043);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1045, v1044, *MEMORY[0x277D2C2F0]);

  v1046 = MEMORY[0x277CCABB0];
  v1047 = *(*(a1 + 32) + 8);
  v1048 = *(v1047 + 24);
  *(v1047 + 24) = v1048 + 1;
  v1051 = objc_msgSend_numberWithInteger_(v1046, v1049, v1048, v1050);
  v1052 = *MEMORY[0x277D2C2F8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1053, v1051, *MEMORY[0x277D2C2F8]);

  v1054 = MEMORY[0x277CCABB0];
  v1055 = *(*(a1 + 32) + 8);
  v1056 = *(v1055 + 24);
  *(v1055 + 24) = v1056 + 1;
  v1059 = objc_msgSend_numberWithInteger_(v1054, v1057, v1056, v1058);
  v1060 = *MEMORY[0x277D2C308];
  v2496 = *MEMORY[0x277D2C308];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1061, v1059, *MEMORY[0x277D2C308]);

  v1062 = MEMORY[0x277CCABB0];
  v1063 = *(*(a1 + 32) + 8);
  v1064 = *(v1063 + 24);
  *(v1063 + 24) = v1064 + 1;
  v1067 = objc_msgSend_numberWithInteger_(v1062, v1065, v1064, v1066);
  v1068 = qword_27E1E3110;
  v1070 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1069, v1023, v2519);
  objc_msgSend_setObject_forKeyedSubscript_(v1068, v1071, v1067, v1070);

  v1072 = MEMORY[0x277CCABB0];
  v1073 = *(*(a1 + 32) + 8);
  v1074 = *(v1073 + 24);
  *(v1073 + 24) = v1074 + 1;
  v1077 = objc_msgSend_numberWithInteger_(v1072, v1075, v1074, v1076);
  v1078 = qword_27E1E3110;
  v1080 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1079, v2500, v958);
  objc_msgSend_setObject_forKeyedSubscript_(v1078, v1081, v1077, v1080);

  v1082 = MEMORY[0x277CCABB0];
  v1083 = *(*(a1 + 32) + 8);
  v1084 = *(v1083 + 24);
  *(v1083 + 24) = v1084 + 1;
  v1087 = objc_msgSend_numberWithInteger_(v1082, v1085, v1084, v1086);
  v1088 = qword_27E1E3110;
  v1090 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1089, v2491, v1060);
  objc_msgSend_setObject_forKeyedSubscript_(v1088, v1091, v1087, v1090);

  v1092 = MEMORY[0x277CCABB0];
  v1093 = *(*(a1 + 32) + 8);
  v1094 = *(v1093 + 24);
  *(v1093 + 24) = v1094 + 1;
  v1097 = objc_msgSend_numberWithInteger_(v1092, v1095, v1094, v1096);
  v1098 = qword_27E1E3110;
  v1100 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1099, v2491, v2459);
  objc_msgSend_setObject_forKeyedSubscript_(v1098, v1101, v1097, v1100);

  v1102 = MEMORY[0x277CCABB0];
  v1103 = *(*(a1 + 32) + 8);
  v1104 = *(v1103 + 24);
  *(v1103 + 24) = v1104 + 1;
  v1107 = objc_msgSend_numberWithInteger_(v1102, v1105, v1104, v1106);
  v1108 = qword_27E1E3110;
  v1110 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1109, v2491, v2504);
  objc_msgSend_setObject_forKeyedSubscript_(v1108, v1111, v1107, v1110);

  v1112 = MEMORY[0x277CCABB0];
  v1113 = *(*(a1 + 32) + 8);
  v1114 = *(v1113 + 24);
  *(v1113 + 24) = v1114 + 1;
  v1117 = objc_msgSend_numberWithInteger_(v1112, v1115, v1114, v1116);
  v1118 = qword_27E1E3110;
  v1120 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1119, v1052, v2481);
  objc_msgSend_setObject_forKeyedSubscript_(v1118, v1121, v1117, v1120);

  v1122 = MEMORY[0x277CCABB0];
  v1123 = *(*(a1 + 32) + 8);
  v1124 = *(v1123 + 24);
  *(v1123 + 24) = v1124 + 1;
  v1127 = objc_msgSend_numberWithInteger_(v1122, v1125, v1124, v1126);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1128, v1127, *MEMORY[0x277D2C5C8]);

  v1129 = MEMORY[0x277CCABB0];
  v1130 = *(*(a1 + 32) + 8);
  v1131 = *(v1130 + 24);
  *(v1130 + 24) = v1131 + 1;
  v1134 = objc_msgSend_numberWithInteger_(v1129, v1132, v1131, v1133);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1135, v1134, *MEMORY[0x277D2C5C0]);

  v1136 = MEMORY[0x277CCABB0];
  v1137 = *(*(a1 + 32) + 8);
  v1138 = *(v1137 + 24);
  *(v1137 + 24) = v1138 + 1;
  v1141 = objc_msgSend_numberWithInteger_(v1136, v1139, v1138, v1140);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1142, v1141, *MEMORY[0x277D2C5D0]);

  v1143 = MEMORY[0x277CCABB0];
  v1144 = *(*(a1 + 32) + 8);
  v1145 = *(v1144 + 24);
  *(v1144 + 24) = v1145 + 1;
  v1148 = objc_msgSend_numberWithInteger_(v1143, v1146, v1145, v1147);
  v2520 = *MEMORY[0x277D2C330];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1149, v1148, *MEMORY[0x277D2C330]);

  v1150 = MEMORY[0x277CCABB0];
  v1151 = *(*(a1 + 32) + 8);
  v1152 = *(v1151 + 24);
  *(v1151 + 24) = v1152 + 1;
  v1155 = objc_msgSend_numberWithInteger_(v1150, v1153, v1152, v1154);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1156, v1155, *MEMORY[0x277D2C348]);

  v1157 = MEMORY[0x277CCABB0];
  v1158 = *(*(a1 + 32) + 8);
  v1159 = *(v1158 + 24);
  *(v1158 + 24) = v1159 + 1;
  v1162 = objc_msgSend_numberWithInteger_(v1157, v1160, v1159, v1161);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1163, v1162, *MEMORY[0x277D2C310]);

  v1164 = MEMORY[0x277CCABB0];
  v1165 = *(*(a1 + 32) + 8);
  v1166 = *(v1165 + 24);
  *(v1165 + 24) = v1166 + 1;
  v1169 = objc_msgSend_numberWithInteger_(v1164, v1167, v1166, v1168);
  v2505 = *MEMORY[0x277D2C338];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1170, v1169, *MEMORY[0x277D2C338]);

  v1171 = MEMORY[0x277CCABB0];
  v1172 = *(*(a1 + 32) + 8);
  v1173 = *(v1172 + 24);
  *(v1172 + 24) = v1173 + 1;
  v1176 = objc_msgSend_numberWithInteger_(v1171, v1174, v1173, v1175);
  v1177 = *MEMORY[0x277D2C358];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1178, v1176, *MEMORY[0x277D2C358]);

  v1179 = MEMORY[0x277CCABB0];
  v1180 = *(*(a1 + 32) + 8);
  v1181 = *(v1180 + 24);
  *(v1180 + 24) = v1181 + 1;
  v1184 = objc_msgSend_numberWithInteger_(v1179, v1182, v1181, v1183);
  v1185 = *MEMORY[0x277D2C340];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1186, v1184, *MEMORY[0x277D2C340]);

  v1187 = MEMORY[0x277CCABB0];
  v1188 = *(*(a1 + 32) + 8);
  v1189 = *(v1188 + 24);
  *(v1188 + 24) = v1189 + 1;
  v1192 = objc_msgSend_numberWithInteger_(v1187, v1190, v1189, v1191);
  v1193 = *MEMORY[0x277D2C318];
  v2475 = *MEMORY[0x277D2C318];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1194, v1192, *MEMORY[0x277D2C318]);

  v1195 = MEMORY[0x277CCABB0];
  v1196 = *(*(a1 + 32) + 8);
  v1197 = *(v1196 + 24);
  *(v1196 + 24) = v1197 + 1;
  v1200 = objc_msgSend_numberWithInteger_(v1195, v1198, v1197, v1199);
  v1201 = *MEMORY[0x277D2C320];
  v2478 = *MEMORY[0x277D2C320];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1202, v1200, *MEMORY[0x277D2C320]);

  v1203 = MEMORY[0x277CCABB0];
  v1204 = *(*(a1 + 32) + 8);
  v1205 = *(v1204 + 24);
  *(v1204 + 24) = v1205 + 1;
  v1208 = objc_msgSend_numberWithInteger_(v1203, v1206, v1205, v1207);
  v2482 = *MEMORY[0x277D2C350];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1209, v1208, *MEMORY[0x277D2C350]);

  v1210 = MEMORY[0x277CCABB0];
  v1211 = *(*(a1 + 32) + 8);
  v1212 = *(v1211 + 24);
  *(v1211 + 24) = v1212 + 1;
  v1215 = objc_msgSend_numberWithInteger_(v1210, v1213, v1212, v1214);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1216, v1215, v2509);

  v1217 = MEMORY[0x277CCABB0];
  v1218 = *(*(a1 + 32) + 8);
  v1219 = *(v1218 + 24);
  *(v1218 + 24) = v1219 + 1;
  v1222 = objc_msgSend_numberWithInteger_(v1217, v1220, v1219, v1221);
  v1223 = qword_27E1E3110;
  v1225 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1224, v2520, v1201);
  objc_msgSend_setObject_forKeyedSubscript_(v1223, v1226, v1222, v1225);

  v1227 = MEMORY[0x277CCABB0];
  v1228 = *(*(a1 + 32) + 8);
  v1229 = *(v1228 + 24);
  *(v1228 + 24) = v1229 + 1;
  v1232 = objc_msgSend_numberWithInteger_(v1227, v1230, v1229, v1231);
  v1233 = qword_27E1E3110;
  v1235 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1234, v1193, *MEMORY[0x277D2C168]);
  objc_msgSend_setObject_forKeyedSubscript_(v1233, v1236, v1232, v1235);

  v1237 = MEMORY[0x277CCABB0];
  v1238 = *(*(a1 + 32) + 8);
  v1239 = *(v1238 + 24);
  *(v1238 + 24) = v1239 + 1;
  v1242 = objc_msgSend_numberWithInteger_(v1237, v1240, v1239, v1241);
  v1243 = qword_27E1E3110;
  v1245 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1244, v1177, v2505);
  objc_msgSend_setObject_forKeyedSubscript_(v1243, v1246, v1242, v1245);

  v1247 = MEMORY[0x277CCABB0];
  v1248 = *(*(a1 + 32) + 8);
  v1249 = *(v1248 + 24);
  *(v1248 + 24) = v1249 + 1;
  v1252 = objc_msgSend_numberWithInteger_(v1247, v1250, v1249, v1251);
  v1253 = qword_27E1E3110;
  v1255 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1254, v2491, v1185);
  objc_msgSend_setObject_forKeyedSubscript_(v1253, v1256, v1252, v1255);

  v1257 = MEMORY[0x277CCABB0];
  v1258 = *(*(a1 + 32) + 8);
  v1259 = *(v1258 + 24);
  *(v1258 + 24) = v1259 + 1;
  v1262 = objc_msgSend_numberWithInteger_(v1257, v1260, v1259, v1261);
  v1263 = qword_27E1E3110;
  v1265 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1264, v2491, v1177);
  objc_msgSend_setObject_forKeyedSubscript_(v1263, v1266, v1262, v1265);

  v1267 = MEMORY[0x277CCABB0];
  v1268 = *(*(a1 + 32) + 8);
  v1269 = *(v1268 + 24);
  *(v1268 + 24) = v1269 + 1;
  v1272 = objc_msgSend_numberWithInteger_(v1267, v1270, v1269, v1271);
  v1273 = qword_27E1E3110;
  v1275 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1274, v1185, v1177);
  objc_msgSend_setObject_forKeyedSubscript_(v1273, v1276, v1272, v1275);

  v1277 = MEMORY[0x277CCABB0];
  v1278 = *(*(a1 + 32) + 8);
  v1279 = *(v1278 + 24);
  *(v1278 + 24) = v1279 + 1;
  v1282 = objc_msgSend_numberWithInteger_(v1277, v1280, v1279, v1281);
  v2492 = *MEMORY[0x277D2C5D8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1283, v1282, *MEMORY[0x277D2C5D8]);

  v1284 = MEMORY[0x277CCABB0];
  v1285 = *(*(a1 + 32) + 8);
  v1286 = *(v1285 + 24);
  *(v1285 + 24) = v1286 + 1;
  v1289 = objc_msgSend_numberWithInteger_(v1284, v1287, v1286, v1288);
  v2494 = *MEMORY[0x277D2C600];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1290, v1289, *MEMORY[0x277D2C600]);

  v1291 = MEMORY[0x277CCABB0];
  v1292 = *(*(a1 + 32) + 8);
  v1293 = *(v1292 + 24);
  *(v1292 + 24) = v1293 + 1;
  v1296 = objc_msgSend_numberWithInteger_(v1291, v1294, v1293, v1295);
  v2501 = *MEMORY[0x277D2C5F8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1297, v1296, *MEMORY[0x277D2C5F8]);

  v1298 = MEMORY[0x277CCABB0];
  v1299 = *(*(a1 + 32) + 8);
  v1300 = *(v1299 + 24);
  *(v1299 + 24) = v1300 + 1;
  v1303 = objc_msgSend_numberWithInteger_(v1298, v1301, v1300, v1302);
  v2506 = *MEMORY[0x277D2C5E0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1304, v1303, *MEMORY[0x277D2C5E0]);

  v1305 = MEMORY[0x277CCABB0];
  v1306 = *(*(a1 + 32) + 8);
  v1307 = *(v1306 + 24);
  *(v1306 + 24) = v1307 + 1;
  v1310 = objc_msgSend_numberWithInteger_(v1305, v1308, v1307, v1309);
  v2510 = *MEMORY[0x277D2C5E8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1311, v1310, *MEMORY[0x277D2C5E8]);

  v1312 = MEMORY[0x277CCABB0];
  v1313 = *(*(a1 + 32) + 8);
  v1314 = *(v1313 + 24);
  *(v1313 + 24) = v1314 + 1;
  v1317 = objc_msgSend_numberWithInteger_(v1312, v1315, v1314, v1316);
  v2521 = *MEMORY[0x277D2C5F0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1318, v1317, *MEMORY[0x277D2C5F0]);

  v1319 = MEMORY[0x277CCABB0];
  v1320 = *(*(a1 + 32) + 8);
  v1321 = *(v1320 + 24);
  *(v1320 + 24) = v1321 + 1;
  v1324 = objc_msgSend_numberWithInteger_(v1319, v1322, v1321, v1323);
  v1325 = *MEMORY[0x277D2C748];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1326, v1324, *MEMORY[0x277D2C748]);

  v1327 = MEMORY[0x277CCABB0];
  v1328 = *(*(a1 + 32) + 8);
  v1329 = *(v1328 + 24);
  *(v1328 + 24) = v1329 + 1;
  v1332 = objc_msgSend_numberWithInteger_(v1327, v1330, v1329, v1331);
  v1333 = *MEMORY[0x277D2C728];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1334, v1332, *MEMORY[0x277D2C728]);

  v1335 = MEMORY[0x277CCABB0];
  v1336 = *(*(a1 + 32) + 8);
  v1337 = *(v1336 + 24);
  *(v1336 + 24) = v1337 + 1;
  v1340 = objc_msgSend_numberWithInteger_(v1335, v1338, v1337, v1339);
  v1341 = *MEMORY[0x277D2C700];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1342, v1340, *MEMORY[0x277D2C700]);

  v1343 = MEMORY[0x277CCABB0];
  v1344 = *(*(a1 + 32) + 8);
  v1345 = *(v1344 + 24);
  *(v1344 + 24) = v1345 + 1;
  v1348 = objc_msgSend_numberWithInteger_(v1343, v1346, v1345, v1347);
  v2437 = *MEMORY[0x277D2C760];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1349, v1348, *MEMORY[0x277D2C760]);

  v1350 = MEMORY[0x277CCABB0];
  v1351 = *(*(a1 + 32) + 8);
  v1352 = *(v1351 + 24);
  *(v1351 + 24) = v1352 + 1;
  v1355 = objc_msgSend_numberWithInteger_(v1350, v1353, v1352, v1354);
  v2439 = *MEMORY[0x277D2C718];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1356, v1355, *MEMORY[0x277D2C718]);

  v1357 = MEMORY[0x277CCABB0];
  v1358 = *(*(a1 + 32) + 8);
  v1359 = *(v1358 + 24);
  *(v1358 + 24) = v1359 + 1;
  v1362 = objc_msgSend_numberWithInteger_(v1357, v1360, v1359, v1361);
  v2441 = *MEMORY[0x277D2C6F8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1363, v1362, *MEMORY[0x277D2C6F8]);

  v1364 = MEMORY[0x277CCABB0];
  v1365 = *(*(a1 + 32) + 8);
  v1366 = *(v1365 + 24);
  *(v1365 + 24) = v1366 + 1;
  v1369 = objc_msgSend_numberWithInteger_(v1364, v1367, v1366, v1368);
  v2443 = *MEMORY[0x277D2C6E8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1370, v1369, *MEMORY[0x277D2C6E8]);

  v1371 = MEMORY[0x277CCABB0];
  v1372 = *(*(a1 + 32) + 8);
  v1373 = *(v1372 + 24);
  *(v1372 + 24) = v1373 + 1;
  v1376 = objc_msgSend_numberWithInteger_(v1371, v1374, v1373, v1375);
  v2445 = *MEMORY[0x277D2C6F0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1377, v1376, *MEMORY[0x277D2C6F0]);

  v1378 = MEMORY[0x277CCABB0];
  v1379 = *(*(a1 + 32) + 8);
  v1380 = *(v1379 + 24);
  *(v1379 + 24) = v1380 + 1;
  v1383 = objc_msgSend_numberWithInteger_(v1378, v1381, v1380, v1382);
  v2447 = *MEMORY[0x277D2C6D0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1384, v1383, *MEMORY[0x277D2C6D0]);

  v1385 = MEMORY[0x277CCABB0];
  v1386 = *(*(a1 + 32) + 8);
  v1387 = *(v1386 + 24);
  *(v1386 + 24) = v1387 + 1;
  v1390 = objc_msgSend_numberWithInteger_(v1385, v1388, v1387, v1389);
  v2449 = *MEMORY[0x277D2C720];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1391, v1390, *MEMORY[0x277D2C720]);

  v1392 = MEMORY[0x277CCABB0];
  v1393 = *(*(a1 + 32) + 8);
  v1394 = *(v1393 + 24);
  *(v1393 + 24) = v1394 + 1;
  v1397 = objc_msgSend_numberWithInteger_(v1392, v1395, v1394, v1396);
  v2451 = *MEMORY[0x277D2C740];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1398, v1397, *MEMORY[0x277D2C740]);

  v1399 = MEMORY[0x277CCABB0];
  v1400 = *(*(a1 + 32) + 8);
  v1401 = *(v1400 + 24);
  *(v1400 + 24) = v1401 + 1;
  v1404 = objc_msgSend_numberWithInteger_(v1399, v1402, v1401, v1403);
  v2453 = *MEMORY[0x277D2C710];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1405, v1404, *MEMORY[0x277D2C710]);

  v1406 = MEMORY[0x277CCABB0];
  v1407 = *(*(a1 + 32) + 8);
  v1408 = *(v1407 + 24);
  *(v1407 + 24) = v1408 + 1;
  v1411 = objc_msgSend_numberWithInteger_(v1406, v1409, v1408, v1410);
  v2455 = *MEMORY[0x277D2C708];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1412, v1411, *MEMORY[0x277D2C708]);

  v1413 = MEMORY[0x277CCABB0];
  v1414 = *(*(a1 + 32) + 8);
  v1415 = *(v1414 + 24);
  *(v1414 + 24) = v1415 + 1;
  v1418 = objc_msgSend_numberWithInteger_(v1413, v1416, v1415, v1417);
  v2457 = *MEMORY[0x277D2C730];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1419, v1418, *MEMORY[0x277D2C730]);

  v1420 = MEMORY[0x277CCABB0];
  v1421 = *(*(a1 + 32) + 8);
  v1422 = *(v1421 + 24);
  *(v1421 + 24) = v1422 + 1;
  v1425 = objc_msgSend_numberWithInteger_(v1420, v1423, v1422, v1424);
  v2460 = *MEMORY[0x277D2C738];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1426, v1425, *MEMORY[0x277D2C738]);

  v1427 = MEMORY[0x277CCABB0];
  v1428 = *(*(a1 + 32) + 8);
  v1429 = *(v1428 + 24);
  *(v1428 + 24) = v1429 + 1;
  v1432 = objc_msgSend_numberWithInteger_(v1427, v1430, v1429, v1431);
  v2463 = *MEMORY[0x277D2C750];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1433, v1432, *MEMORY[0x277D2C750]);

  v1434 = MEMORY[0x277CCABB0];
  v1435 = *(*(a1 + 32) + 8);
  v1436 = *(v1435 + 24);
  *(v1435 + 24) = v1436 + 1;
  v1439 = objc_msgSend_numberWithInteger_(v1434, v1437, v1436, v1438);
  v2466 = *MEMORY[0x277D2C758];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1440, v1439, *MEMORY[0x277D2C758]);

  v1441 = MEMORY[0x277CCABB0];
  v1442 = *(*(a1 + 32) + 8);
  v1443 = *(v1442 + 24);
  *(v1442 + 24) = v1443 + 1;
  v1446 = objc_msgSend_numberWithInteger_(v1441, v1444, v1443, v1445);
  v2468 = *MEMORY[0x277D2C6D8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1447, v1446, *MEMORY[0x277D2C6D8]);

  v1448 = MEMORY[0x277CCABB0];
  v1449 = *(*(a1 + 32) + 8);
  v1450 = *(v1449 + 24);
  *(v1449 + 24) = v1450 + 1;
  v1453 = objc_msgSend_numberWithInteger_(v1448, v1451, v1450, v1452);
  v2471 = *MEMORY[0x277D2C6E0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1454, v1453, *MEMORY[0x277D2C6E0]);

  v1455 = MEMORY[0x277CCABB0];
  v1456 = *(*(a1 + 32) + 8);
  v1457 = *(v1456 + 24);
  *(v1456 + 24) = v1457 + 1;
  v1460 = objc_msgSend_numberWithInteger_(v1455, v1458, v1457, v1459);
  v1461 = qword_27E1E3110;
  v1463 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1462, v1325, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1461, v1464, v1460, v1463);

  v1465 = MEMORY[0x277CCABB0];
  v1466 = *(*(a1 + 32) + 8);
  v1467 = *(v1466 + 24);
  *(v1466 + 24) = v1467 + 1;
  v1470 = objc_msgSend_numberWithInteger_(v1465, v1468, v1467, v1469);
  v1471 = qword_27E1E3110;
  v1473 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1472, v1333, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1471, v1474, v1470, v1473);

  v1475 = MEMORY[0x277CCABB0];
  v1476 = *(*(a1 + 32) + 8);
  v1477 = *(v1476 + 24);
  *(v1476 + 24) = v1477 + 1;
  v1480 = objc_msgSend_numberWithInteger_(v1475, v1478, v1477, v1479);
  v1481 = qword_27E1E3110;
  v1483 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1482, v1341, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1481, v1484, v1480, v1483);

  v1485 = MEMORY[0x277CCABB0];
  v1486 = *(*(a1 + 32) + 8);
  v1487 = *(v1486 + 24);
  *(v1486 + 24) = v1487 + 1;
  v1490 = objc_msgSend_numberWithInteger_(v1485, v1488, v1487, v1489);
  v1491 = qword_27E1E3110;
  v1493 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1492, v2437, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1491, v1494, v1490, v1493);

  v1495 = MEMORY[0x277CCABB0];
  v1496 = *(*(a1 + 32) + 8);
  v1497 = *(v1496 + 24);
  *(v1496 + 24) = v1497 + 1;
  v1500 = objc_msgSend_numberWithInteger_(v1495, v1498, v1497, v1499);
  v1501 = qword_27E1E3110;
  v1503 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1502, v2439, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1501, v1504, v1500, v1503);

  v1505 = MEMORY[0x277CCABB0];
  v1506 = *(*(a1 + 32) + 8);
  v1507 = *(v1506 + 24);
  *(v1506 + 24) = v1507 + 1;
  v1510 = objc_msgSend_numberWithInteger_(v1505, v1508, v1507, v1509);
  v1511 = qword_27E1E3110;
  v1513 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1512, v2441, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1511, v1514, v1510, v1513);

  v1515 = MEMORY[0x277CCABB0];
  v1516 = *(*(a1 + 32) + 8);
  v1517 = *(v1516 + 24);
  *(v1516 + 24) = v1517 + 1;
  v1520 = objc_msgSend_numberWithInteger_(v1515, v1518, v1517, v1519);
  v1521 = qword_27E1E3110;
  v1523 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1522, v2443, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1521, v1524, v1520, v1523);

  v1525 = MEMORY[0x277CCABB0];
  v1526 = *(*(a1 + 32) + 8);
  v1527 = *(v1526 + 24);
  *(v1526 + 24) = v1527 + 1;
  v1530 = objc_msgSend_numberWithInteger_(v1525, v1528, v1527, v1529);
  v1531 = qword_27E1E3110;
  v1533 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1532, v2445, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1531, v1534, v1530, v1533);

  v1535 = MEMORY[0x277CCABB0];
  v1536 = *(*(a1 + 32) + 8);
  v1537 = *(v1536 + 24);
  *(v1536 + 24) = v1537 + 1;
  v1540 = objc_msgSend_numberWithInteger_(v1535, v1538, v1537, v1539);
  v1541 = qword_27E1E3110;
  v1543 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1542, v2447, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1541, v1544, v1540, v1543);

  v1545 = MEMORY[0x277CCABB0];
  v1546 = *(*(a1 + 32) + 8);
  v1547 = *(v1546 + 24);
  *(v1546 + 24) = v1547 + 1;
  v1550 = objc_msgSend_numberWithInteger_(v1545, v1548, v1547, v1549);
  v1551 = qword_27E1E3110;
  v1553 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1552, v2449, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1551, v1554, v1550, v1553);

  v1555 = MEMORY[0x277CCABB0];
  v1556 = *(*(a1 + 32) + 8);
  v1557 = *(v1556 + 24);
  *(v1556 + 24) = v1557 + 1;
  v1560 = objc_msgSend_numberWithInteger_(v1555, v1558, v1557, v1559);
  v1561 = qword_27E1E3110;
  v1563 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1562, v2451, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1561, v1564, v1560, v1563);

  v1565 = MEMORY[0x277CCABB0];
  v1566 = *(*(a1 + 32) + 8);
  v1567 = *(v1566 + 24);
  *(v1566 + 24) = v1567 + 1;
  v1570 = objc_msgSend_numberWithInteger_(v1565, v1568, v1567, v1569);
  v1571 = qword_27E1E3110;
  v1573 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1572, v2453, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1571, v1574, v1570, v1573);

  v1575 = MEMORY[0x277CCABB0];
  v1576 = *(*(a1 + 32) + 8);
  v1577 = *(v1576 + 24);
  *(v1576 + 24) = v1577 + 1;
  v1580 = objc_msgSend_numberWithInteger_(v1575, v1578, v1577, v1579);
  v1581 = qword_27E1E3110;
  v1583 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1582, v2455, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1581, v1584, v1580, v1583);

  v1585 = MEMORY[0x277CCABB0];
  v1586 = *(*(a1 + 32) + 8);
  v1587 = *(v1586 + 24);
  *(v1586 + 24) = v1587 + 1;
  v1590 = objc_msgSend_numberWithInteger_(v1585, v1588, v1587, v1589);
  v1591 = qword_27E1E3110;
  v1593 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1592, v2457, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1591, v1594, v1590, v1593);

  v1595 = MEMORY[0x277CCABB0];
  v1596 = *(*(a1 + 32) + 8);
  v1597 = *(v1596 + 24);
  *(v1596 + 24) = v1597 + 1;
  v1600 = objc_msgSend_numberWithInteger_(v1595, v1598, v1597, v1599);
  v1601 = qword_27E1E3110;
  v1603 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1602, v2460, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1601, v1604, v1600, v1603);

  v1605 = MEMORY[0x277CCABB0];
  v1606 = *(*(a1 + 32) + 8);
  v1607 = *(v1606 + 24);
  *(v1606 + 24) = v1607 + 1;
  v1610 = objc_msgSend_numberWithInteger_(v1605, v1608, v1607, v1609);
  v1611 = qword_27E1E3110;
  v1613 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1612, v2463, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1611, v1614, v1610, v1613);

  v1615 = MEMORY[0x277CCABB0];
  v1616 = *(*(a1 + 32) + 8);
  v1617 = *(v1616 + 24);
  *(v1616 + 24) = v1617 + 1;
  v1620 = objc_msgSend_numberWithInteger_(v1615, v1618, v1617, v1619);
  v1621 = qword_27E1E3110;
  v1623 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1622, v2466, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1621, v1624, v1620, v1623);

  v1625 = MEMORY[0x277CCABB0];
  v1626 = *(*(a1 + 32) + 8);
  v1627 = *(v1626 + 24);
  *(v1626 + 24) = v1627 + 1;
  v1630 = objc_msgSend_numberWithInteger_(v1625, v1628, v1627, v1629);
  v1631 = qword_27E1E3110;
  v1633 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1632, v2468, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1631, v1634, v1630, v1633);

  v1635 = MEMORY[0x277CCABB0];
  v1636 = *(*(a1 + 32) + 8);
  v1637 = *(v1636 + 24);
  *(v1636 + 24) = v1637 + 1;
  v1640 = objc_msgSend_numberWithInteger_(v1635, v1638, v1637, v1639);
  v1641 = qword_27E1E3110;
  v1643 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1642, v2471, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1641, v1644, v1640, v1643);

  v1645 = MEMORY[0x277CCABB0];
  v1646 = *(*(a1 + 32) + 8);
  v1647 = *(v1646 + 24);
  *(v1646 + 24) = v1647 + 1;
  v1650 = objc_msgSend_numberWithInteger_(v1645, v1648, v1647, v1649);
  v1651 = qword_27E1E3110;
  v1653 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1652, v2485, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1651, v1654, v1650, v1653);

  v1655 = MEMORY[0x277CCABB0];
  v1656 = *(*(a1 + 32) + 8);
  v1657 = *(v1656 + 24);
  *(v1656 + 24) = v1657 + 1;
  v1660 = objc_msgSend_numberWithInteger_(v1655, v1658, v1657, v1659);
  v1661 = qword_27E1E3110;
  v1663 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1662, v2475, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1661, v1664, v1660, v1663);

  v1665 = MEMORY[0x277CCABB0];
  v1666 = *(*(a1 + 32) + 8);
  v1667 = *(v1666 + 24);
  *(v1666 + 24) = v1667 + 1;
  v1670 = objc_msgSend_numberWithInteger_(v1665, v1668, v1667, v1669);
  v1671 = qword_27E1E3110;
  v1673 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1672, v2478, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1671, v1674, v1670, v1673);

  v1675 = MEMORY[0x277CCABB0];
  v1676 = *(*(a1 + 32) + 8);
  v1677 = *(v1676 + 24);
  *(v1676 + 24) = v1677 + 1;
  v1680 = objc_msgSend_numberWithInteger_(v1675, v1678, v1677, v1679);
  v1681 = qword_27E1E3110;
  v1683 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1682, v2482, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1681, v1684, v1680, v1683);

  v1685 = MEMORY[0x277CCABB0];
  v1686 = *(*(a1 + 32) + 8);
  v1687 = *(v1686 + 24);
  *(v1686 + 24) = v1687 + 1;
  v1690 = objc_msgSend_numberWithInteger_(v1685, v1688, v1687, v1689);
  v1691 = qword_27E1E3110;
  v1693 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1692, v2496, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1691, v1694, v1690, v1693);

  v1695 = MEMORY[0x277CCABB0];
  v1696 = *(*(a1 + 32) + 8);
  v1697 = *(v1696 + 24);
  *(v1696 + 24) = v1697 + 1;
  v1700 = objc_msgSend_numberWithInteger_(v1695, v1698, v1697, v1699);
  v1701 = qword_27E1E3110;
  v1703 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1702, v2514, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1701, v1704, v1700, v1703);

  v1705 = MEMORY[0x277CCABB0];
  v1706 = *(*(a1 + 32) + 8);
  v1707 = *(v1706 + 24);
  *(v1706 + 24) = v1707 + 1;
  v1710 = objc_msgSend_numberWithInteger_(v1705, v1708, v1707, v1709);
  v1711 = qword_27E1E3110;
  v1713 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1712, v2488, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1711, v1714, v1710, v1713);

  v1715 = MEMORY[0x277CCABB0];
  v1716 = *(*(a1 + 32) + 8);
  v1717 = *(v1716 + 24);
  *(v1716 + 24) = v1717 + 1;
  v1720 = objc_msgSend_numberWithInteger_(v1715, v1718, v1717, v1719);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1721, v1720, *MEMORY[0x277D2C3E0]);

  v1722 = MEMORY[0x277CCABB0];
  v1723 = *(*(a1 + 32) + 8);
  v1724 = *(v1723 + 24);
  *(v1723 + 24) = v1724 + 1;
  v1727 = objc_msgSend_numberWithInteger_(v1722, v1725, v1724, v1726);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1728, v1727, *MEMORY[0x277D2C3D8]);

  v1729 = MEMORY[0x277CCABB0];
  v1730 = *(*(a1 + 32) + 8);
  v1731 = *(v1730 + 24);
  *(v1730 + 24) = v1731 + 1;
  v1734 = objc_msgSend_numberWithInteger_(v1729, v1732, v1731, v1733);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1735, v1734, *MEMORY[0x277D2C3C0]);

  v1736 = MEMORY[0x277CCABB0];
  v1737 = *(*(a1 + 32) + 8);
  v1738 = *(v1737 + 24);
  *(v1737 + 24) = v1738 + 1;
  v1741 = objc_msgSend_numberWithInteger_(v1736, v1739, v1738, v1740);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1742, v1741, *MEMORY[0x277D2C388]);

  v1743 = MEMORY[0x277CCABB0];
  v1744 = *(*(a1 + 32) + 8);
  v1745 = *(v1744 + 24);
  *(v1744 + 24) = v1745 + 1;
  v1748 = objc_msgSend_numberWithInteger_(v1743, v1746, v1745, v1747);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1749, v1748, *MEMORY[0x277D2C3E8]);

  v1750 = MEMORY[0x277CCABB0];
  v1751 = *(*(a1 + 32) + 8);
  v1752 = *(v1751 + 24);
  *(v1751 + 24) = v1752 + 1;
  v1755 = objc_msgSend_numberWithInteger_(v1750, v1753, v1752, v1754);
  v2483 = *MEMORY[0x277D2C3A8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1756, v1755, *MEMORY[0x277D2C3A8]);

  v1757 = MEMORY[0x277CCABB0];
  v1758 = *(*(a1 + 32) + 8);
  v1759 = *(v1758 + 24);
  *(v1758 + 24) = v1759 + 1;
  v1762 = objc_msgSend_numberWithInteger_(v1757, v1760, v1759, v1761);
  v2515 = *MEMORY[0x277D2C3D0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1763, v1762, *MEMORY[0x277D2C3D0]);

  v1764 = MEMORY[0x277CCABB0];
  v1765 = *(*(a1 + 32) + 8);
  v1766 = *(v1765 + 24);
  *(v1765 + 24) = v1766 + 1;
  v1769 = objc_msgSend_numberWithInteger_(v1764, v1767, v1766, v1768);
  v2497 = *MEMORY[0x277D2C380];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1770, v1769, *MEMORY[0x277D2C380]);

  v1771 = MEMORY[0x277CCABB0];
  v1772 = *(*(a1 + 32) + 8);
  v1773 = *(v1772 + 24);
  *(v1772 + 24) = v1773 + 1;
  v1776 = objc_msgSend_numberWithInteger_(v1771, v1774, v1773, v1775);
  v2472 = *MEMORY[0x277D2C3B0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1777, v1776, *MEMORY[0x277D2C3B0]);

  v1778 = MEMORY[0x277CCABB0];
  v1779 = *(*(a1 + 32) + 8);
  v1780 = *(v1779 + 24);
  *(v1779 + 24) = v1780 + 1;
  v1783 = objc_msgSend_numberWithInteger_(v1778, v1781, v1780, v1782);
  v2476 = *MEMORY[0x277D2C3F0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1784, v1783, *MEMORY[0x277D2C3F0]);

  v1785 = MEMORY[0x277CCABB0];
  v1786 = *(*(a1 + 32) + 8);
  v1787 = *(v1786 + 24);
  *(v1786 + 24) = v1787 + 1;
  v1790 = objc_msgSend_numberWithInteger_(v1785, v1788, v1787, v1789);
  v2486 = *MEMORY[0x277D2C400];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1791, v1790, *MEMORY[0x277D2C400]);

  v1792 = MEMORY[0x277CCABB0];
  v1793 = *(*(a1 + 32) + 8);
  v1794 = *(v1793 + 24);
  *(v1793 + 24) = v1794 + 1;
  v1797 = objc_msgSend_numberWithInteger_(v1792, v1795, v1794, v1796);
  v2469 = *MEMORY[0x277D2C368];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1798, v1797, *MEMORY[0x277D2C368]);

  v1799 = MEMORY[0x277CCABB0];
  v1800 = *(*(a1 + 32) + 8);
  v1801 = *(v1800 + 24);
  *(v1800 + 24) = v1801 + 1;
  v1804 = objc_msgSend_numberWithInteger_(v1799, v1802, v1801, v1803);
  v2489 = *MEMORY[0x277D2C3B8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1805, v1804, *MEMORY[0x277D2C3B8]);

  v1806 = MEMORY[0x277CCABB0];
  v1807 = *(*(a1 + 32) + 8);
  v1808 = *(v1807 + 24);
  *(v1807 + 24) = v1808 + 1;
  v1811 = objc_msgSend_numberWithInteger_(v1806, v1809, v1808, v1810);
  v2479 = *MEMORY[0x277D2C3A0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1812, v1811, *MEMORY[0x277D2C3A0]);

  v1813 = MEMORY[0x277CCABB0];
  v1814 = *(*(a1 + 32) + 8);
  v1815 = *(v1814 + 24);
  *(v1814 + 24) = v1815 + 1;
  v1818 = objc_msgSend_numberWithInteger_(v1813, v1816, v1815, v1817);
  v1819 = *MEMORY[0x277D2C360];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1820, v1818, *MEMORY[0x277D2C360]);

  v1821 = MEMORY[0x277CCABB0];
  v1822 = *(*(a1 + 32) + 8);
  v1823 = *(v1822 + 24);
  *(v1822 + 24) = v1823 + 1;
  v1826 = objc_msgSend_numberWithInteger_(v1821, v1824, v1823, v1825);
  v1827 = *MEMORY[0x277D2C378];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1828, v1826, *MEMORY[0x277D2C378]);

  v1829 = MEMORY[0x277CCABB0];
  v1830 = *(*(a1 + 32) + 8);
  v1831 = *(v1830 + 24);
  *(v1830 + 24) = v1831 + 1;
  v1834 = objc_msgSend_numberWithInteger_(v1829, v1832, v1831, v1833);
  v1835 = qword_27E1E3110;
  v1837 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1836, v2492, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1835, v1838, v1834, v1837);

  v1839 = MEMORY[0x277CCABB0];
  v1840 = *(*(a1 + 32) + 8);
  v1841 = *(v1840 + 24);
  *(v1840 + 24) = v1841 + 1;
  v1844 = objc_msgSend_numberWithInteger_(v1839, v1842, v1841, v1843);
  v1845 = qword_27E1E3110;
  v1847 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1846, v2494, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1845, v1848, v1844, v1847);

  v1849 = MEMORY[0x277CCABB0];
  v1850 = *(*(a1 + 32) + 8);
  v1851 = *(v1850 + 24);
  *(v1850 + 24) = v1851 + 1;
  v1854 = objc_msgSend_numberWithInteger_(v1849, v1852, v1851, v1853);
  v1855 = qword_27E1E3110;
  v1857 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1856, v2501, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1855, v1858, v1854, v1857);

  v1859 = MEMORY[0x277CCABB0];
  v1860 = *(*(a1 + 32) + 8);
  v1861 = *(v1860 + 24);
  *(v1860 + 24) = v1861 + 1;
  v1864 = objc_msgSend_numberWithInteger_(v1859, v1862, v1861, v1863);
  v1865 = qword_27E1E3110;
  v1867 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1866, v2506, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1865, v1868, v1864, v1867);

  v1869 = MEMORY[0x277CCABB0];
  v1870 = *(*(a1 + 32) + 8);
  v1871 = *(v1870 + 24);
  *(v1870 + 24) = v1871 + 1;
  v1874 = objc_msgSend_numberWithInteger_(v1869, v1872, v1871, v1873);
  v1875 = qword_27E1E3110;
  v1877 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1876, v2510, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1875, v1878, v1874, v1877);

  v1879 = MEMORY[0x277CCABB0];
  v1880 = *(*(a1 + 32) + 8);
  v1881 = *(v1880 + 24);
  *(v1880 + 24) = v1881 + 1;
  v1884 = objc_msgSend_numberWithInteger_(v1879, v1882, v1881, v1883);
  v1885 = qword_27E1E3110;
  v1887 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1886, v2521, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1885, v1888, v1884, v1887);

  v1889 = MEMORY[0x277CCABB0];
  v1890 = *(*(a1 + 32) + 8);
  v1891 = *(v1890 + 24);
  *(v1890 + 24) = v1891 + 1;
  v1894 = objc_msgSend_numberWithInteger_(v1889, v1892, v1891, v1893);
  v1895 = qword_27E1E3110;
  v1897 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1896, v1827, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1895, v1898, v1894, v1897);

  v1899 = MEMORY[0x277CCABB0];
  v1900 = *(*(a1 + 32) + 8);
  v1901 = *(v1900 + 24);
  *(v1900 + 24) = v1901 + 1;
  v1904 = objc_msgSend_numberWithInteger_(v1899, v1902, v1901, v1903);
  v1905 = qword_27E1E3110;
  v1907 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1906, v2472, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1905, v1908, v1904, v1907);

  v1909 = MEMORY[0x277CCABB0];
  v1910 = *(*(a1 + 32) + 8);
  v1911 = *(v1910 + 24);
  *(v1910 + 24) = v1911 + 1;
  v1914 = objc_msgSend_numberWithInteger_(v1909, v1912, v1911, v1913);
  v1915 = qword_27E1E3110;
  v1917 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1916, v2476, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1915, v1918, v1914, v1917);

  v1919 = MEMORY[0x277CCABB0];
  v1920 = *(*(a1 + 32) + 8);
  v1921 = *(v1920 + 24);
  *(v1920 + 24) = v1921 + 1;
  v1924 = objc_msgSend_numberWithInteger_(v1919, v1922, v1921, v1923);
  v1925 = qword_27E1E3110;
  v1927 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1926, v2469, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1925, v1928, v1924, v1927);

  v1929 = MEMORY[0x277CCABB0];
  v1930 = *(*(a1 + 32) + 8);
  v1931 = *(v1930 + 24);
  *(v1930 + 24) = v1931 + 1;
  v1934 = objc_msgSend_numberWithInteger_(v1929, v1932, v1931, v1933);
  v1935 = qword_27E1E3110;
  v1937 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1936, v2483, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1935, v1938, v1934, v1937);

  v1939 = MEMORY[0x277CCABB0];
  v1940 = *(*(a1 + 32) + 8);
  v1941 = *(v1940 + 24);
  *(v1940 + 24) = v1941 + 1;
  v1944 = objc_msgSend_numberWithInteger_(v1939, v1942, v1941, v1943);
  v1945 = qword_27E1E3110;
  v1947 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1946, v1819, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1945, v1948, v1944, v1947);

  v1949 = MEMORY[0x277CCABB0];
  v1950 = *(*(a1 + 32) + 8);
  v1951 = *(v1950 + 24);
  *(v1950 + 24) = v1951 + 1;
  v1954 = objc_msgSend_numberWithInteger_(v1949, v1952, v1951, v1953);
  v1955 = qword_27E1E3110;
  v1957 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1956, v2479, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1955, v1958, v1954, v1957);

  v1959 = MEMORY[0x277CCABB0];
  v1960 = *(*(a1 + 32) + 8);
  v1961 = *(v1960 + 24);
  *(v1960 + 24) = v1961 + 1;
  v1964 = objc_msgSend_numberWithInteger_(v1959, v1962, v1961, v1963);
  v1965 = qword_27E1E3110;
  v1967 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1966, v2497, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1965, v1968, v1964, v1967);

  v1969 = MEMORY[0x277CCABB0];
  v1970 = *(*(a1 + 32) + 8);
  v1971 = *(v1970 + 24);
  *(v1970 + 24) = v1971 + 1;
  v1974 = objc_msgSend_numberWithInteger_(v1969, v1972, v1971, v1973);
  v1975 = qword_27E1E3110;
  v1977 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1976, v2486, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1975, v1978, v1974, v1977);

  v1979 = MEMORY[0x277CCABB0];
  v1980 = *(*(a1 + 32) + 8);
  v1981 = *(v1980 + 24);
  *(v1980 + 24) = v1981 + 1;
  v1984 = objc_msgSend_numberWithInteger_(v1979, v1982, v1981, v1983);
  v1985 = qword_27E1E3110;
  v1987 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1986, v2515, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1985, v1988, v1984, v1987);

  v1989 = MEMORY[0x277CCABB0];
  v1990 = *(*(a1 + 32) + 8);
  v1991 = *(v1990 + 24);
  *(v1990 + 24) = v1991 + 1;
  v1994 = objc_msgSend_numberWithInteger_(v1989, v1992, v1991, v1993);
  v1995 = qword_27E1E3110;
  v1997 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1996, v2489, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1995, v1998, v1994, v1997);

  v1999 = MEMORY[0x277CCABB0];
  v2000 = *(*(a1 + 32) + 8);
  v2001 = *(v2000 + 24);
  *(v2000 + 24) = v2001 + 1;
  v2004 = objc_msgSend_numberWithInteger_(v1999, v2002, v2001, v2003);
  v2005 = *MEMORY[0x277D2C618];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2006, v2004, *MEMORY[0x277D2C618]);

  v2007 = MEMORY[0x277CCABB0];
  v2008 = *(*(a1 + 32) + 8);
  v2009 = *(v2008 + 24);
  *(v2008 + 24) = v2009 + 1;
  v2012 = objc_msgSend_numberWithInteger_(v2007, v2010, v2009, v2011);
  v2013 = *MEMORY[0x277D2C630];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2014, v2012, *MEMORY[0x277D2C630]);

  v2015 = MEMORY[0x277CCABB0];
  v2016 = *(*(a1 + 32) + 8);
  v2017 = *(v2016 + 24);
  *(v2016 + 24) = v2017 + 1;
  v2020 = objc_msgSend_numberWithInteger_(v2015, v2018, v2017, v2019);
  v2021 = *MEMORY[0x277D2C608];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2022, v2020, *MEMORY[0x277D2C608]);

  v2023 = MEMORY[0x277CCABB0];
  v2024 = *(*(a1 + 32) + 8);
  v2025 = *(v2024 + 24);
  *(v2024 + 24) = v2025 + 1;
  v2028 = objc_msgSend_numberWithInteger_(v2023, v2026, v2025, v2027);
  v2511 = *MEMORY[0x277D2C620];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2029, v2028, *MEMORY[0x277D2C620]);

  v2030 = MEMORY[0x277CCABB0];
  v2031 = *(*(a1 + 32) + 8);
  v2032 = *(v2031 + 24);
  *(v2031 + 24) = v2032 + 1;
  v2035 = objc_msgSend_numberWithInteger_(v2030, v2033, v2032, v2034);
  v2516 = *MEMORY[0x277D2C610];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2036, v2035, *MEMORY[0x277D2C610]);

  v2037 = MEMORY[0x277CCABB0];
  v2038 = *(*(a1 + 32) + 8);
  v2039 = *(v2038 + 24);
  *(v2038 + 24) = v2039 + 1;
  v2042 = objc_msgSend_numberWithInteger_(v2037, v2040, v2039, v2041);
  v2522 = *MEMORY[0x277D2C628];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2043, v2042, *MEMORY[0x277D2C628]);

  v2044 = MEMORY[0x277CCABB0];
  v2045 = *(*(a1 + 32) + 8);
  v2046 = *(v2045 + 24);
  *(v2045 + 24) = v2046 + 1;
  v2049 = objc_msgSend_numberWithInteger_(v2044, v2047, v2046, v2048);
  v2050 = qword_27E1E3110;
  v2052 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2051, v2005, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2050, v2053, v2049, v2052);

  v2054 = MEMORY[0x277CCABB0];
  v2055 = *(*(a1 + 32) + 8);
  v2056 = *(v2055 + 24);
  *(v2055 + 24) = v2056 + 1;
  v2059 = objc_msgSend_numberWithInteger_(v2054, v2057, v2056, v2058);
  v2060 = qword_27E1E3110;
  v2062 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2061, v2013, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2060, v2063, v2059, v2062);

  v2064 = MEMORY[0x277CCABB0];
  v2065 = *(*(a1 + 32) + 8);
  v2066 = *(v2065 + 24);
  *(v2065 + 24) = v2066 + 1;
  v2069 = objc_msgSend_numberWithInteger_(v2064, v2067, v2066, v2068);
  v2070 = qword_27E1E3110;
  v2072 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2071, v2021, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2070, v2073, v2069, v2072);

  v2074 = MEMORY[0x277CCABB0];
  v2075 = *(*(a1 + 32) + 8);
  v2076 = *(v2075 + 24);
  *(v2075 + 24) = v2076 + 1;
  v2079 = objc_msgSend_numberWithInteger_(v2074, v2077, v2076, v2078);
  v2080 = qword_27E1E3110;
  v2082 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2081, v2511, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2080, v2083, v2079, v2082);

  v2084 = MEMORY[0x277CCABB0];
  v2085 = *(*(a1 + 32) + 8);
  v2086 = *(v2085 + 24);
  *(v2085 + 24) = v2086 + 1;
  v2089 = objc_msgSend_numberWithInteger_(v2084, v2087, v2086, v2088);
  v2090 = qword_27E1E3110;
  v2092 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2091, v2516, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2090, v2093, v2089, v2092);

  v2094 = MEMORY[0x277CCABB0];
  v2095 = *(*(a1 + 32) + 8);
  v2096 = *(v2095 + 24);
  *(v2095 + 24) = v2096 + 1;
  v2099 = objc_msgSend_numberWithInteger_(v2094, v2097, v2096, v2098);
  v2100 = qword_27E1E3110;
  v2102 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2101, v2522, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2100, v2103, v2099, v2102);

  v2104 = MEMORY[0x277CCABB0];
  v2105 = *(*(a1 + 32) + 8);
  v2106 = *(v2105 + 24);
  *(v2105 + 24) = v2106 + 1;
  v2109 = objc_msgSend_numberWithInteger_(v2104, v2107, v2106, v2108);
  v2110 = *MEMORY[0x277D2C448];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2111, v2109, *MEMORY[0x277D2C448]);

  v2112 = MEMORY[0x277CCABB0];
  v2113 = *(*(a1 + 32) + 8);
  v2114 = *(v2113 + 24);
  *(v2113 + 24) = v2114 + 1;
  v2117 = objc_msgSend_numberWithInteger_(v2112, v2115, v2114, v2116);
  v2118 = *MEMORY[0x277D2C408];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2119, v2117, *MEMORY[0x277D2C408]);

  v2120 = MEMORY[0x277CCABB0];
  v2121 = *(*(a1 + 32) + 8);
  v2122 = *(v2121 + 24);
  *(v2121 + 24) = v2122 + 1;
  v2125 = objc_msgSend_numberWithInteger_(v2120, v2123, v2122, v2124);
  v2126 = *MEMORY[0x277D2C450];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2127, v2125, *MEMORY[0x277D2C450]);

  v2128 = MEMORY[0x277CCABB0];
  v2129 = *(*(a1 + 32) + 8);
  v2130 = *(v2129 + 24);
  *(v2129 + 24) = v2130 + 1;
  v2133 = objc_msgSend_numberWithInteger_(v2128, v2131, v2130, v2132);
  v2498 = *MEMORY[0x277D2C420];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2134, v2133, *MEMORY[0x277D2C420]);

  v2135 = MEMORY[0x277CCABB0];
  v2136 = *(*(a1 + 32) + 8);
  v2137 = *(v2136 + 24);
  *(v2136 + 24) = v2137 + 1;
  v2140 = objc_msgSend_numberWithInteger_(v2135, v2138, v2137, v2139);
  v2502 = *MEMORY[0x277D2C468];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2141, v2140, *MEMORY[0x277D2C468]);

  v2142 = MEMORY[0x277CCABB0];
  v2143 = *(*(a1 + 32) + 8);
  v2144 = *(v2143 + 24);
  *(v2143 + 24) = v2144 + 1;
  v2147 = objc_msgSend_numberWithInteger_(v2142, v2145, v2144, v2146);
  v2507 = *MEMORY[0x277D2C418];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2148, v2147, *MEMORY[0x277D2C418]);

  v2149 = MEMORY[0x277CCABB0];
  v2150 = *(*(a1 + 32) + 8);
  v2151 = *(v2150 + 24);
  *(v2150 + 24) = v2151 + 1;
  v2154 = objc_msgSend_numberWithInteger_(v2149, v2152, v2151, v2153);
  v2512 = *MEMORY[0x277D2C438];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2155, v2154, *MEMORY[0x277D2C438]);

  v2156 = MEMORY[0x277CCABB0];
  v2157 = *(*(a1 + 32) + 8);
  v2158 = *(v2157 + 24);
  *(v2157 + 24) = v2158 + 1;
  v2161 = objc_msgSend_numberWithInteger_(v2156, v2159, v2158, v2160);
  v2517 = *MEMORY[0x277D2C458];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2162, v2161, *MEMORY[0x277D2C458]);

  v2163 = MEMORY[0x277CCABB0];
  v2164 = *(*(a1 + 32) + 8);
  v2165 = *(v2164 + 24);
  *(v2164 + 24) = v2165 + 1;
  v2168 = objc_msgSend_numberWithInteger_(v2163, v2166, v2165, v2167);
  v2523 = *MEMORY[0x277D2C430];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2169, v2168, *MEMORY[0x277D2C430]);

  v2170 = MEMORY[0x277CCABB0];
  v2171 = *(*(a1 + 32) + 8);
  v2172 = *(v2171 + 24);
  *(v2171 + 24) = v2172 + 1;
  v2175 = objc_msgSend_numberWithInteger_(v2170, v2173, v2172, v2174);
  v2176 = qword_27E1E3110;
  v2178 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2177, v2110, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2176, v2179, v2175, v2178);

  v2180 = MEMORY[0x277CCABB0];
  v2181 = *(*(a1 + 32) + 8);
  v2182 = *(v2181 + 24);
  *(v2181 + 24) = v2182 + 1;
  v2185 = objc_msgSend_numberWithInteger_(v2180, v2183, v2182, v2184);
  v2186 = qword_27E1E3110;
  v2188 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2187, v2118, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2186, v2189, v2185, v2188);

  v2190 = MEMORY[0x277CCABB0];
  v2191 = *(*(a1 + 32) + 8);
  v2192 = *(v2191 + 24);
  *(v2191 + 24) = v2192 + 1;
  v2195 = objc_msgSend_numberWithInteger_(v2190, v2193, v2192, v2194);
  v2196 = qword_27E1E3110;
  v2198 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2197, v2126, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2196, v2199, v2195, v2198);

  v2200 = MEMORY[0x277CCABB0];
  v2201 = *(*(a1 + 32) + 8);
  v2202 = *(v2201 + 24);
  *(v2201 + 24) = v2202 + 1;
  v2205 = objc_msgSend_numberWithInteger_(v2200, v2203, v2202, v2204);
  v2206 = qword_27E1E3110;
  v2208 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2207, v2498, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2206, v2209, v2205, v2208);

  v2210 = MEMORY[0x277CCABB0];
  v2211 = *(*(a1 + 32) + 8);
  v2212 = *(v2211 + 24);
  *(v2211 + 24) = v2212 + 1;
  v2215 = objc_msgSend_numberWithInteger_(v2210, v2213, v2212, v2214);
  v2216 = qword_27E1E3110;
  v2218 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2217, v2502, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2216, v2219, v2215, v2218);

  v2220 = MEMORY[0x277CCABB0];
  v2221 = *(*(a1 + 32) + 8);
  v2222 = *(v2221 + 24);
  *(v2221 + 24) = v2222 + 1;
  v2225 = objc_msgSend_numberWithInteger_(v2220, v2223, v2222, v2224);
  v2226 = qword_27E1E3110;
  v2228 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2227, v2507, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2226, v2229, v2225, v2228);

  v2230 = MEMORY[0x277CCABB0];
  v2231 = *(*(a1 + 32) + 8);
  v2232 = *(v2231 + 24);
  *(v2231 + 24) = v2232 + 1;
  v2235 = objc_msgSend_numberWithInteger_(v2230, v2233, v2232, v2234);
  v2236 = qword_27E1E3110;
  v2238 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2237, v2512, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2236, v2239, v2235, v2238);

  v2240 = MEMORY[0x277CCABB0];
  v2241 = *(*(a1 + 32) + 8);
  v2242 = *(v2241 + 24);
  *(v2241 + 24) = v2242 + 1;
  v2245 = objc_msgSend_numberWithInteger_(v2240, v2243, v2242, v2244);
  v2246 = qword_27E1E3110;
  v2248 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2247, v2517, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2246, v2249, v2245, v2248);

  v2250 = MEMORY[0x277CCABB0];
  v2251 = *(*(a1 + 32) + 8);
  v2252 = *(v2251 + 24);
  *(v2251 + 24) = v2252 + 1;
  v2255 = objc_msgSend_numberWithInteger_(v2250, v2253, v2252, v2254);
  v2256 = qword_27E1E3110;
  v2258 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2257, v2523, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2256, v2259, v2255, v2258);

  v2260 = MEMORY[0x277CCABB0];
  v2261 = *(*(a1 + 32) + 8);
  v2262 = *(v2261 + 24);
  *(v2261 + 24) = v2262 + 1;
  v2265 = objc_msgSend_numberWithInteger_(v2260, v2263, v2262, v2264);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2266, v2265, *MEMORY[0x277D2C768]);

  v2267 = MEMORY[0x277CCABB0];
  v2268 = *(*(a1 + 32) + 8);
  v2269 = *(v2268 + 24);
  *(v2268 + 24) = v2269 + 1;
  v2272 = objc_msgSend_numberWithInteger_(v2267, v2270, v2269, v2271);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2273, v2272, *MEMORY[0x277D2C2E0]);

  v2274 = MEMORY[0x277CCABB0];
  v2275 = *(*(a1 + 32) + 8);
  v2276 = *(v2275 + 24);
  *(v2275 + 24) = v2276 + 1;
  v2279 = objc_msgSend_numberWithInteger_(v2274, v2277, v2276, v2278);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2280, v2279, *MEMORY[0x277D2C328]);

  v2281 = MEMORY[0x277CCABB0];
  v2282 = *(*(a1 + 32) + 8);
  v2283 = *(v2282 + 24);
  *(v2282 + 24) = v2283 + 1;
  v2286 = objc_msgSend_numberWithInteger_(v2281, v2284, v2283, v2285);
  v2287 = *MEMORY[0x277D2C398];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2288, v2286, *MEMORY[0x277D2C398]);

  v2289 = MEMORY[0x277CCABB0];
  v2290 = *(*(a1 + 32) + 8);
  v2291 = *(v2290 + 24);
  *(v2290 + 24) = v2291 + 1;
  v2294 = objc_msgSend_numberWithInteger_(v2289, v2292, v2291, v2293);
  v2295 = *MEMORY[0x277D2C3C8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2296, v2294, *MEMORY[0x277D2C3C8]);

  v2297 = MEMORY[0x277CCABB0];
  v2298 = *(*(a1 + 32) + 8);
  v2299 = *(v2298 + 24);
  *(v2298 + 24) = v2299 + 1;
  v2302 = objc_msgSend_numberWithInteger_(v2297, v2300, v2299, v2301);
  v2303 = *MEMORY[0x277D2C370];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2304, v2302, *MEMORY[0x277D2C370]);

  v2305 = MEMORY[0x277CCABB0];
  v2306 = *(*(a1 + 32) + 8);
  v2307 = *(v2306 + 24);
  *(v2306 + 24) = v2307 + 1;
  v2310 = objc_msgSend_numberWithInteger_(v2305, v2308, v2307, v2309);
  v2499 = *MEMORY[0x277D2C3F8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2311, v2310, *MEMORY[0x277D2C3F8]);

  v2312 = MEMORY[0x277CCABB0];
  v2313 = *(*(a1 + 32) + 8);
  v2314 = *(v2313 + 24);
  *(v2313 + 24) = v2314 + 1;
  v2317 = objc_msgSend_numberWithInteger_(v2312, v2315, v2314, v2316);
  v2503 = *MEMORY[0x277D2C390];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2318, v2317, *MEMORY[0x277D2C390]);

  v2319 = MEMORY[0x277CCABB0];
  v2320 = *(*(a1 + 32) + 8);
  v2321 = *(v2320 + 24);
  *(v2320 + 24) = v2321 + 1;
  v2324 = objc_msgSend_numberWithInteger_(v2319, v2322, v2321, v2323);
  v2508 = *MEMORY[0x277D2C440];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2325, v2324, *MEMORY[0x277D2C440]);

  v2326 = MEMORY[0x277CCABB0];
  v2327 = *(*(a1 + 32) + 8);
  v2328 = *(v2327 + 24);
  *(v2327 + 24) = v2328 + 1;
  v2331 = objc_msgSend_numberWithInteger_(v2326, v2329, v2328, v2330);
  v2513 = *MEMORY[0x277D2C428];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2332, v2331, *MEMORY[0x277D2C428]);

  v2333 = MEMORY[0x277CCABB0];
  v2334 = *(*(a1 + 32) + 8);
  v2335 = *(v2334 + 24);
  *(v2334 + 24) = v2335 + 1;
  v2338 = objc_msgSend_numberWithInteger_(v2333, v2336, v2335, v2337);
  v2524 = *MEMORY[0x277D2C410];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2339, v2338, *MEMORY[0x277D2C410]);

  v2340 = MEMORY[0x277CCABB0];
  v2341 = *(*(a1 + 32) + 8);
  v2342 = *(v2341 + 24);
  *(v2341 + 24) = v2342 + 1;
  v2345 = objc_msgSend_numberWithInteger_(v2340, v2343, v2342, v2344);
  v2518 = *MEMORY[0x277D2C460];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2346, v2345, *MEMORY[0x277D2C460]);

  v2347 = MEMORY[0x277CCABB0];
  v2348 = *(*(a1 + 32) + 8);
  v2349 = *(v2348 + 24);
  *(v2348 + 24) = v2349 + 1;
  v2352 = objc_msgSend_numberWithInteger_(v2347, v2350, v2349, v2351);
  v2353 = qword_27E1E3110;
  v2355 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2354, v2287, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2353, v2356, v2352, v2355);

  v2357 = MEMORY[0x277CCABB0];
  v2358 = *(*(a1 + 32) + 8);
  v2359 = *(v2358 + 24);
  *(v2358 + 24) = v2359 + 1;
  v2362 = objc_msgSend_numberWithInteger_(v2357, v2360, v2359, v2361);
  v2363 = qword_27E1E3110;
  v2365 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2364, v2295, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2363, v2366, v2362, v2365);

  v2367 = MEMORY[0x277CCABB0];
  v2368 = *(*(a1 + 32) + 8);
  v2369 = *(v2368 + 24);
  *(v2368 + 24) = v2369 + 1;
  v2372 = objc_msgSend_numberWithInteger_(v2367, v2370, v2369, v2371);
  v2373 = qword_27E1E3110;
  v2375 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2374, v2303, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2373, v2376, v2372, v2375);

  v2377 = MEMORY[0x277CCABB0];
  v2378 = *(*(a1 + 32) + 8);
  v2379 = *(v2378 + 24);
  *(v2378 + 24) = v2379 + 1;
  v2382 = objc_msgSend_numberWithInteger_(v2377, v2380, v2379, v2381);
  v2383 = qword_27E1E3110;
  v2385 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2384, v2499, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2383, v2386, v2382, v2385);

  v2387 = MEMORY[0x277CCABB0];
  v2388 = *(*(a1 + 32) + 8);
  v2389 = *(v2388 + 24);
  *(v2388 + 24) = v2389 + 1;
  v2392 = objc_msgSend_numberWithInteger_(v2387, v2390, v2389, v2391);
  v2393 = qword_27E1E3110;
  v2395 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2394, v2503, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2393, v2396, v2392, v2395);

  v2397 = MEMORY[0x277CCABB0];
  v2398 = *(*(a1 + 32) + 8);
  v2399 = *(v2398 + 24);
  *(v2398 + 24) = v2399 + 1;
  v2402 = objc_msgSend_numberWithInteger_(v2397, v2400, v2399, v2401);
  v2403 = qword_27E1E3110;
  v2405 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2404, v2508, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2403, v2406, v2402, v2405);

  v2407 = MEMORY[0x277CCABB0];
  v2408 = *(*(a1 + 32) + 8);
  v2409 = *(v2408 + 24);
  *(v2408 + 24) = v2409 + 1;
  v2412 = objc_msgSend_numberWithInteger_(v2407, v2410, v2409, v2411);
  v2413 = qword_27E1E3110;
  v2415 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2414, v2513, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2413, v2416, v2412, v2415);

  v2417 = MEMORY[0x277CCABB0];
  v2418 = *(*(a1 + 32) + 8);
  v2419 = *(v2418 + 24);
  *(v2418 + 24) = v2419 + 1;
  v2422 = objc_msgSend_numberWithInteger_(v2417, v2420, v2419, v2421);
  v2423 = qword_27E1E3110;
  v2425 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2424, v2524, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2423, v2426, v2422, v2425);

  v2427 = MEMORY[0x277CCABB0];
  v2428 = *(*(a1 + 32) + 8);
  v2429 = *(v2428 + 24);
  *(v2428 + 24) = v2429 + 1;
  v2525 = objc_msgSend_numberWithInteger_(v2427, v2430, v2429, v2431);
  v2432 = qword_27E1E3110;
  v2434 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2433, v2518, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2432, v2435, v2525, v2434);
}

uint64_t sub_23BF31B24(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_transitionFraction(a1, a2, a3, a4);
  if (v8 >= 0.5)
  {
    objc_msgSend_toPalette(a1, v5, v6, v7);
  }

  else
  {
    objc_msgSend_fromPalette(a1, v5, v6, v7);
  }
  v9 = ;
  isGlassOption = objc_msgSend_isGlassOption(v9, v10, v11, v12);

  return isGlassOption;
}

void sub_23BF31B80(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_isGlassEnabled(_TtC30NTKParmesanFaceBundleCompanion23DigitalTimeViewFeatures, a2, a3, a4))
  {
    v8 = objc_msgSend_fromPalette(a1, v5, v6, v7);
    objc_msgSend_frostAmount(v8, v9, v10, v11);
    v15 = objc_msgSend_toPalette(a1, v12, v13, v14);
    objc_msgSend_frostAmount(v15, v16, v17, v18);
    objc_msgSend_transitionFraction(a1, v19, v20, v21);
    sub_23BFF9200();
  }
}

uint64_t sub_23BF31C20(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_transitionFraction(a1, a2, a3, a4);
  if (v8 >= 0.5)
  {
    objc_msgSend_toPalette(a1, v5, v6, v7);
  }

  else
  {
    objc_msgSend_fromPalette(a1, v5, v6, v7);
  }
  v9 = ;
  isVibrantOption = objc_msgSend_isVibrantOption(v9, v10, v11, v12);

  return isVibrantOption;
}

uint64_t sub_23BF31C7C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_transitionFraction(a1, a2, a3, a4);
  if (v8 >= 0.5)
  {
    objc_msgSend_toPalette(a1, v5, v6, v7);
  }

  else
  {
    objc_msgSend_fromPalette(a1, v5, v6, v7);
  }
  v9 = ;
  isPlainOption = objc_msgSend_isPlainOption(v9, v10, v11, v12);

  return isPlainOption;
}

uint64_t sub_23BF31CD8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_transitionFraction(a1, a2, a3, a4);
  if (v8 >= 0.5)
  {
    objc_msgSend_toPalette(a1, v5, v6, v7);
  }

  else
  {
    objc_msgSend_fromPalette(a1, v5, v6, v7);
  }
  v9 = ;
  isTritoneOption = objc_msgSend_isTritoneOption(v9, v10, v11, v12);

  return isTritoneOption;
}

id sub_23BF31FBC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_sharedPhotoLibrary(MEMORY[0x277CD9948], a2, a3, a4);
  v6 = objc_alloc(MEMORY[0x277CD9D68]);
  v9 = objc_msgSend_initWithPhotoLibrary_(v6, v7, v5, v8);
  objc_msgSend_setSelection_(v9, v10, 0, v11);
  v15 = objc_msgSend_imagesFilter(MEMORY[0x277CD9D70], v12, v13, v14);
  objc_msgSend_setFilter_(v9, v16, v15, v17);

  objc_msgSend_setSelectionLimit_(v9, v18, a3, v19);
  v23 = objc_msgSend_watchWallpaperSuggestionGroup(MEMORY[0x277CD9D80], v20, v21, v22);
  objc_msgSend_set_suggestionGroup_(v9, v24, v23, v25);

  objc_msgSend_setDisabledCapabilities_(v9, v26, 18, v27);
  objc_msgSend__setDisabledPrivateCapabilities_(v9, v28, 3, v29);

  return v9;
}

void sub_23BF32A38(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_fontDescriptorForSectName_uniqueCacheIdentifier_fromMachO_(MEMORY[0x277D2C050], a2, @"__Soft", @"Parmesan", &dword_23BF0C000);
  v3 = qword_27E1E3118;
  qword_27E1E3118 = v2;
}

void sub_23BF32B38(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_fontDescriptorForSectName_uniqueCacheIdentifier_fromMachO_(MEMORY[0x277D2C050], a2, @"__NewYork", @"Parmesan", &dword_23BF0C000);
  v3 = qword_27E1E3128;
  qword_27E1E3128 = v2;
}

void sub_23BF32C38(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_fontDescriptorForSectName_uniqueCacheIdentifier_fromMachO_(MEMORY[0x277D2C050], a2, @"__NYSoft", @"Parmesan", &dword_23BF0C000);
  v3 = qword_27E1E3138;
  qword_27E1E3138 = v2;
}

void sub_23BF32D48(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_fontDescriptorForSectName_uniqueCacheIdentifier_fromMachO_(MEMORY[0x277D2C050], a2, @"__Tokyo", @"Parmesan", &dword_23BF0C000);
  v3 = qword_27E1E3148;
  qword_27E1E3148 = v2;
}

void sub_23BF32EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BF32EC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23BF32ED8(uint64_t a1, id a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = MEMORY[0x277CCABB0];
  v7 = a2;
  v8 = a3;
  objc_msgSend_UTF8String(a2, v9, v10, v11);
  v12 = TextToFourCharCode();
  v16 = objc_msgSend_numberWithUnsignedInt_(v6, v13, v12, v14);
  objc_msgSend_setObject_forKey_(v5, v15, v8, v16);
}

void sub_23BF33728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BF3374C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23BF33764(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF33804;
  block[3] = &unk_278BA7458;
  v1 = *(a1 + 56);
  block[4] = *(a1 + 32);
  v6 = v1;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_23BF33804(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setState_(*(a1 + 32), a2, *(a1 + 56), a4);
  objc_msgSend_setGalleryPreviewResourceDirectory_(*(a1 + 32), v5, *(*(*(a1 + 48) + 8) + 40), v6);
  v7 = *(a1 + 40);
  v11 = objc_msgSend_galleryPreviewResourceDirectory(*(a1 + 32), v8, v9, v10);
  (*(v7 + 16))(v7, v11);
}

void sub_23BF33884(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23BF33924;
  v5[3] = &unk_278BA74A8;
  v5[4] = v1;
  v4 = *(a1 + 40);
  v2 = v4;
  v6 = v4;
  objc_msgSend__createResourceDirectoryForSinglePHAssetWithPreviewOnly_completion_(v1, v3, 1, v5);
}

void sub_23BF33924(uint64_t a1, void *a2)
{
  v6 = a2;
  if (!v6)
  {
    v7 = objc_msgSend_logObject(NTKParmesanFaceBundle, v3, v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF84D0();
    }
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v10 = v6;

  (*(*(a1 + 40) + 16))(*(a1 + 40), v10 != 0);
}

void sub_23BF33F2C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  v5 = objc_msgSend_resourceDirectory(*(a1 + 32), a2, a3, a4);
  (*(v4 + 16))(v4, v5);
}

void sub_23BF33F88(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF34088;
  block[3] = &unk_278BA6B68;
  v7 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_23BF3409C;
  v4[3] = &unk_278BA6988;
  v4[4] = v2;
  v5 = *(a1 + 48);
  objc_msgSend__createResourceDirectoryForSinglePHAssetWithPreviewOnly_completion_(v2, v3, 0, v4);
}

void sub_23BF3409C(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF3414C;
  block[3] = &unk_278BA74F8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_23BF3414C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, a3, a4);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v18 = 136315394;
      v19 = "[NTKCParmesanAlbumEditor finalizeWithProgress:completion:]_block_invoke";
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_23BF0C000, v7, OS_LOG_TYPE_INFO, "%s: Editor finished finalizing with resource directory: %@", &v18, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_23BFF85E0();
  }

  objc_msgSend_setResourceDirectory_(*(a1 + 40), v9, *(a1 + 32), v10);
  objc_msgSend_setState_(*(a1 + 40), v11, 1, v12);
  v13 = *(a1 + 48);
  v17 = objc_msgSend_resourceDirectory(*(a1 + 40), v14, v15, v16);
  (*(v13 + 16))(v13, v17);
}

void sub_23BF345B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23BF345D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_firstObject(a2, a2, a3, a4);
  v9 = objc_opt_new();
  if (v5)
  {
    v10 = objc_msgSend_asDictionary(v5, v6, v7, v8);
    objc_msgSend_addObject_(v9, v11, v10, v12);
  }

  v13 = objc_msgSend_uuidString(*(a1 + 32), v6, v7, v8);

  if (!v13)
  {
    v17 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v14, v15, v16);
    v21 = objc_msgSend_UUIDString(v17, v18, v19, v20);

    v25 = objc_msgSend_logObject(NTKParmesanFaceBundle, v22, v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_msgSend_shuffleSelection(*(a1 + 32), v26, v27, v28);
      v39 = 138412546;
      v40 = v29;
      v41 = 2112;
      v42 = v21;
      _os_log_impl(&dword_23BF0C000, v25, OS_LOG_TYPE_DEFAULT, "_createResourceDirectoryForSinglePHAssetWithPreviewOnly: creating new uuid for %@ ==> %@", &v39, 0x16u);
    }

    objc_msgSend_setUuidString_(*(a1 + 32), v30, v21, v31);
  }

  if ((objc_msgSend__writeImageList_version_toDirectory_(*(a1 + 32), v14, v9, 2, *(*(*(a1 + 48) + 8) + 40)) & 1) == 0)
  {
    v35 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v32, v33, v34);
    objc_msgSend_removeItemAtPath_error_(v35, v36, *(*(*(a1 + 48) + 8) + 40), 0);

    v37 = *(*(a1 + 48) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = 0;
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_23BF35F2C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D2C108];
  v6 = *(a1 + 32);
  v7 = objc_msgSend_device(*(a1 + 40), a2, a3, a4);
  v9 = objc_msgSend_renderSwatchForView_size_device_key_method_(v5, v8, v6, v7, *(a1 + 48), *(a1 + 80), *(a1 + 64), *(a1 + 72));

  v10 = *(*(a1 + 56) + 16);

  return v10();
}

void sub_23BF38498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id location, char a43)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a41);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 240), 8);
  _Block_object_dispose((v43 - 208), 8);
  _Block_object_dispose((v43 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BF3851C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_23BF38534(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v9 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7, v8);
  v17 = 0;
  objc_msgSend_copyItemAtPath_toPath_error_(v9, v10, v4, v5, &v17);
  v11 = v17;

  if (v11)
  {
    v15 = objc_msgSend_logObject(NTKParmesanFaceBundle, v12, v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v19 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]_block_invoke";
      v20 = 2112;
      v21 = v4;
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = v11;
      _os_log_error_impl(&dword_23BF0C000, v15, OS_LOG_TYPE_ERROR, "%s: cannot copy %@ to %@, error == %@", buf, 0x2Au);
    }
  }

  return v11 == 0;
}

void sub_23BF38674(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF38794;
  block[3] = &unk_278BA7608;
  objc_copyWeak(&v20, (a1 + 88));
  v17 = *(a1 + 56);
  v18 = *(a1 + 72);
  v13 = v6;
  v14 = v5;
  v15 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  v16 = v8;
  v19 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v20);
}

void sub_23BF38794(uint64_t a1)
{
  v141 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v7 = objc_msgSend_logObject(NTKParmesanFaceBundle, v3, v4, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v134 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]_block_invoke_2";
        v8 = "%s: Canceled: No more update processing";
LABEL_12:
        _os_log_impl(&dword_23BF0C000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
    {
      v7 = objc_msgSend_logObject(NTKParmesanFaceBundle, v3, v4, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v134 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]_block_invoke";
        v8 = "%s: Previous failure: No more update processing";
        goto LABEL_12;
      }

LABEL_13:

      goto LABEL_43;
    }

    v114 = WeakRetained;
    ++*(*(*(a1 + 80) + 8) + 24);
    v9 = *(a1 + 32);
    v10 = objc_msgSend_logObject(NTKParmesanFaceBundle, v3, v4, v5);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v15 = objc_msgSend_count(*(a1 + 40), v12, v13, v14);
        v16 = *(*(*(a1 + 80) + 8) + 24);
        v17 = *(a1 + 32);
        *buf = 136315906;
        v134 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]_block_invoke";
        v135 = 2048;
        v136 = v15;
        v137 = 1024;
        v138 = v16;
        v139 = 2112;
        v140 = v17;
        _os_log_impl(&dword_23BF0C000, v10, OS_LOG_TYPE_DEFAULT, "%s: Error: received %lu assets, %d so far, error == %@", buf, 0x26u);
      }

      *(*(*(a1 + 72) + 8) + 24) = 0;
    }

    else
    {
      if (v11)
      {
        v18 = objc_msgSend_count(*(a1 + 40), v12, v13, v14);
        v19 = *(*(*(a1 + 80) + 8) + 24);
        *buf = 136315650;
        v134 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]_block_invoke";
        v135 = 2048;
        v136 = v18;
        v137 = 1024;
        v138 = v19;
        _os_log_impl(&dword_23BF0C000, v10, OS_LOG_TYPE_DEFAULT, "%s: Received %lu assets, %d so far", buf, 0x1Cu);
      }

      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      obj = *(a1 + 40);
      v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v127, v132, 16);
      if (v117)
      {
        v116 = *v128;
        do
        {
          for (i = 0; i != v117; ++i)
          {
            if (*v128 != v116)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v127 + 1) + 8 * i);
            v26 = MEMORY[0x277CCACA8];
            v27 = objc_msgSend_resourceDirectory(v25, v21, v22, v23);
            v28 = v27;
            v32 = objc_msgSend_fileSystemRepresentation(v28, v29, v30, v31);
            v34 = objc_msgSend_stringWithCString_encoding_(v26, v33, v32, 4);

            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            v122 = v25;
            v35 = v25;
            v36 = v34;
            v40 = objc_msgSend_layouts(v35, v37, v38, v39);
            v44 = objc_msgSend_allKeys(v40, v41, v42, v43);

            v119 = v44;
            v121 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v123, v131, 16);
            if (!v121)
            {
              goto LABEL_36;
            }

            v120 = *v124;
            v118 = i;
            while (2)
            {
              for (j = 0; j != v121; ++j)
              {
                if (*v124 != v120)
                {
                  objc_enumerationMutation(v119);
                }

                v50 = *(*(&v123 + 1) + 8 * j);
                v51 = objc_msgSend_layouts(v122, v46, v47, v48);
                v54 = objc_msgSend_objectForKeyedSubscript_(v51, v52, v50, v53);

                v58 = objc_msgSend_baseImageName(v54, v55, v56, v57);
                v61 = objc_msgSend_stringByAppendingPathComponent_(v36, v59, v58, v60);

                v62 = *(a1 + 48);
                v66 = objc_msgSend_baseImageName(v54, v63, v64, v65);
                v69 = objc_msgSend_stringByAppendingPathComponent_(v62, v67, v66, v68);

                if (((*(*(a1 + 56) + 16))() & 1) == 0)
                {
                  *(*(*(a1 + 72) + 8) + 24) = 0;
LABEL_35:

                  i = v118;
                  goto LABEL_36;
                }

                v73 = objc_msgSend_mask(v54, v70, v71, v72);
                v77 = objc_msgSend_imageName(v73, v74, v75, v76);

                if (v77)
                {
                  v81 = objc_msgSend_mask(v54, v78, v79, v80);
                  v85 = objc_msgSend_imageName(v81, v82, v83, v84);
                  v86 = v36;
                  v89 = objc_msgSend_stringByAppendingPathComponent_(v36, v87, v85, v88);

                  v90 = *(a1 + 48);
                  v94 = objc_msgSend_mask(v54, v91, v92, v93);
                  v98 = objc_msgSend_imageName(v94, v95, v96, v97);
                  v101 = objc_msgSend_stringByAppendingPathComponent_(v90, v99, v98, v100);

                  if (!(*(*(a1 + 56) + 16))())
                  {
                    *(*(*(a1 + 72) + 8) + 24) = 0;

                    v36 = v86;
                    goto LABEL_35;
                  }

                  v36 = v86;
                }
              }

              i = v118;
              v121 = objc_msgSend_countByEnumeratingWithState_objects_count_(v119, v46, &v123, v131, 16);
              if (v121)
              {
                continue;
              }

              break;
            }

LABEL_36:

            if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
            {

              goto LABEL_41;
            }

            v104 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v102, *(a1 + 48), v103);
            objc_msgSend_setResourceDirectory_(v122, v105, v104, v106);

            v107 = *(*(*(a1 + 88) + 8) + 40);
            v111 = objc_msgSend_asDictionary(v122, v108, v109, v110);
            objc_msgSend_addObject_(v107, v112, v111, v113);
          }

          v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v127, v132, 16);
        }

        while (v117);
      }

LABEL_41:
    }

    v6 = v114;
  }

LABEL_43:
}

void sub_23BF38DE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF38EBC;
  block[3] = &unk_278BA7658;
  objc_copyWeak(&v11, (a1 + 88));
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 80);
  v7 = v3;
  v10 = v4;
  dispatch_async(v2, block);

  objc_destroyWeak(&v11);
}

void sub_23BF38EBC(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v6 = objc_msgSend_logObject(NTKParmesanFaceBundle, v2, v3, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315138;
        v27 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]_block_invoke_2";
        v7 = "%s: Canceled: Skip completion processing";
LABEL_15:
        _os_log_impl(&dword_23BF0C000, v6, OS_LOG_TYPE_DEFAULT, v7, &v26, 0xCu);
      }
    }

    else
    {
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        v6 = objc_opt_new();
        v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, 2, v9);
        objc_msgSend_setObject_forKeyedSubscript_(v6, v11, v10, kParmesanReaderVersionKey);

        objc_msgSend_setObject_forKeyedSubscript_(v6, v12, *(*(*(a1 + 64) + 8) + 40), kParmesanReaderImageListKey);
        v15 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 32), v13, kParmesanReaderImagelistFileName, v14);
        if ((objc_msgSend_writeToFile_atomically_(v6, v16, v15, 0) & 1) == 0)
        {
          v20 = objc_msgSend_logObject(NTKParmesanFaceBundle, v17, v18, v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_23BFF8A64(v15, v20);
          }

          *(*(*(a1 + 56) + 8) + 24) = 0;
        }

        dispatch_semaphore_signal(*(a1 + 40));
        v24 = objc_msgSend_logObject(NTKParmesanFaceBundle, v21, v22, v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(*(*(a1 + 72) + 8) + 24);
          v26 = 136315394;
          v27 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]_block_invoke";
          v28 = 1024;
          v29 = v25;
          _os_log_impl(&dword_23BF0C000, v24, OS_LOG_TYPE_DEFAULT, "%s: Received everything! %d", &v26, 0x12u);
        }

        goto LABEL_16;
      }

      v6 = objc_msgSend_logObject(NTKParmesanFaceBundle, v2, v3, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315138;
        v27 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]_block_invoke";
        v7 = "%s: Previous failure: Skip completion processing";
        goto LABEL_15;
      }
    }

LABEL_16:
  }
}

void sub_23BF39168(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF391DC;
  block[3] = &unk_278BA73C0;
  v1 = *(a1 + 32);
  block[4] = *(a1 + 40);
  dispatch_async(v1, block);
}

char *sub_23BF397B8()
{
  if ([*(v0 + 16) hasPeople])
  {
    v1 = sub_23BF6163C(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_23BF6163C((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    *&v1[8 * v3 + 32] = 1;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  if ([*(v0 + 16) hasPets])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_23BF6163C(0, *(v1 + 2) + 1, 1, v1);
    }

    v5 = *(v1 + 2);
    v4 = *(v1 + 3);
    if (v5 >= v4 >> 1)
    {
      v1 = sub_23BF6163C((v4 > 1), v5 + 1, 1, v1);
    }

    *(v1 + 2) = v5 + 1;
    *&v1[8 * v5 + 32] = 2;
  }

  if ([*(v0 + 16) hasNature])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_23BF6163C(0, *(v1 + 2) + 1, 1, v1);
    }

    v7 = *(v1 + 2);
    v6 = *(v1 + 3);
    if (v7 >= v6 >> 1)
    {
      v1 = sub_23BF6163C((v6 > 1), v7 + 1, 1, v1);
    }

    *(v1 + 2) = v7 + 1;
    *&v1[8 * v7 + 32] = 3;
  }

  if ([*(v0 + 16) hasCityscape])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_23BF6163C(0, *(v1 + 2) + 1, 1, v1);
    }

    v9 = *(v1 + 2);
    v8 = *(v1 + 3);
    if (v9 >= v8 >> 1)
    {
      v1 = sub_23BF6163C((v8 > 1), v9 + 1, 1, v1);
    }

    *(v1 + 2) = v9 + 1;
    *&v1[8 * v9 + 32] = 4;
  }

  return v1;
}

uint64_t sub_23BF399DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 40) = v12;
  *(v8 + 48) = v13;
  *(v8 + 146) = a7;
  *(v8 + 145) = a6;
  *(v8 + 144) = a5;
  *(v8 + 24) = a4;
  *(v8 + 32) = a8;
  v9 = sub_23BFF8DE0();
  *(v8 + 56) = v9;
  *(v8 + 64) = *(v9 - 8);
  *(v8 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BF39AB4, 0, 0);
}

uint64_t sub_23BF39AB4()
{
  sub_23BFF8F70();
  swift_allocObject();
  *(v0 + 80) = sub_23BFF8F60();

  v2 = sub_23BFBAD88(v1);
  *(v0 + 88) = v2;

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_23BF39BA0;
  v4 = *(v0 + 146);
  v5 = *(v0 + 145);
  v6 = *(v0 + 144);

  return MEMORY[0x28219B6B8](v2, v6, v5, v4);
}

uint64_t sub_23BF39BA0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_23BF3A098;
  }

  else
  {

    v4 = sub_23BF39CC4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23BF39CC4()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0 + 2;
  v3 = v0[13];
  v4 = *(v3 + 16);
  if (v4)
  {
    v33 = v0 + 2;
    v5 = v0[8];
    sub_23BFCE138(0, v4, 0);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v34 = *(v5 + 56);
    v35 = v6;
    v8 = (v5 - 8);
    do
    {
      v9 = v0[9];
      v10 = v0;
      v11 = v0[7];
      v35(v9, v7, v11);
      v12 = sub_23BFF8DB0();
      v14 = v13;
      (*v8)(v9, v11);
      v16 = *(v1 + 16);
      v15 = *(v1 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_23BFCE138((v15 > 1), v16 + 1, 1);
      }

      *(v1 + 16) = v16 + 1;
      v17 = v1 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v7 += v34;
      --v4;
      v0 = v10;
    }

    while (v4);
    v2 = v33;
  }

  v18 = objc_opt_self();
  v19 = sub_23BFFA450();

  v20 = [v18 fetchAssetsWithUUIDs:v19 options:0];
  v0[15] = v20;

  if (!v20)
  {
    goto LABEL_23;
  }

  v24 = v0[4];

  v21 = [v20 count];
  if (v21 >= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v21;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return MEMORY[0x2822009F8](v21, v22, v23);
  }

  if (v25)
  {
    for (i = 0; i != v25; i = (i + 1))
    {
      v27 = [v20 objectAtIndex_];
      MEMORY[0x23EEC3100]();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23BFFA480();
      }

      sub_23BFFA4A0();
    }

    v28 = *v2;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v0[16] = v28;
  sub_23BFFA520();
  v0[17] = sub_23BFFA510();
  v29 = sub_23BFFA4C0();
  v31 = v30;
  v21 = sub_23BF39FA0;
  v22 = v29;
  v23 = v31;

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_23BF39FA0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 40);

  v2(v1);

  return MEMORY[0x2822009F8](sub_23BF3A028, 0, 0);
}

uint64_t sub_23BF3A028()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BF3A098()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BF3A110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = sub_23BFF8DE0();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BF3A1D8, 0, 0);
}

uint64_t sub_23BF3A1D8()
{
  sub_23BFF8F70();
  swift_allocObject();
  v0[11] = sub_23BFF8F60();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_23BF3A294;
  v3 = v0[3];
  v2 = v0[4];

  return MEMORY[0x28219B6A8](v3, v2);
}

uint64_t sub_23BF3A294(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_23BF3A784;
  }

  else
  {

    v4 = sub_23BF3A3B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23BF3A3B0()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0 + 2;
  v3 = v0[13];
  v4 = *(v3 + 16);
  if (v4)
  {
    v33 = v0 + 2;
    v5 = v0[9];
    sub_23BFCE138(0, v4, 0);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v34 = *(v5 + 56);
    v35 = v6;
    v8 = (v5 - 8);
    do
    {
      v9 = v0[10];
      v10 = v0;
      v11 = v0[8];
      v35(v9, v7, v11);
      v12 = sub_23BFF8DB0();
      v14 = v13;
      (*v8)(v9, v11);
      v16 = *(v1 + 16);
      v15 = *(v1 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_23BFCE138((v15 > 1), v16 + 1, 1);
      }

      *(v1 + 16) = v16 + 1;
      v17 = v1 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v7 += v34;
      --v4;
      v0 = v10;
    }

    while (v4);
    v2 = v33;
  }

  v18 = objc_opt_self();
  v19 = sub_23BFFA450();

  v20 = [v18 fetchAssetsWithUUIDs:v19 options:0];
  v0[15] = v20;

  if (!v20)
  {
    goto LABEL_23;
  }

  v24 = v0[5];

  v21 = [v20 count];
  if (v21 >= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v21;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return MEMORY[0x2822009F8](v21, v22, v23);
  }

  if (v25)
  {
    for (i = 0; i != v25; i = (i + 1))
    {
      v27 = [v20 objectAtIndex_];
      MEMORY[0x23EEC3100]();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23BFFA480();
      }

      sub_23BFFA4A0();
    }

    v28 = *v2;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v0[16] = v28;
  sub_23BFFA520();
  v0[17] = sub_23BFFA510();
  v29 = sub_23BFFA4C0();
  v31 = v30;
  v21 = sub_23BF3A68C;
  v22 = v29;
  v23 = v31;

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_23BF3A68C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 48);

  v2(v1);

  return MEMORY[0x2822009F8](sub_23BF3A714, 0, 0);
}

uint64_t sub_23BF3A714()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BF3A784()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BF3A7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_23BFF8DE0();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BF3A8B4, 0, 0);
}

uint64_t sub_23BF3A8B4()
{
  sub_23BFF8F70();
  swift_allocObject();
  *(v0 + 72) = sub_23BFF8F60();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_23BF3A968;

  return MEMORY[0x28219B6B0]();
}

uint64_t sub_23BF3A968(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_23BF3AE50;
  }

  else
  {

    v4 = sub_23BF3AA84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23BF3AA84()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0 + 2;
  v3 = v0[11];
  v4 = *(v3 + 16);
  if (v4)
  {
    v33 = v0 + 2;
    v5 = v0[7];
    sub_23BFCE138(0, v4, 0);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v34 = *(v5 + 56);
    v35 = v6;
    v8 = (v5 - 8);
    do
    {
      v9 = v0[8];
      v10 = v0;
      v11 = v0[6];
      v35(v9, v7, v11);
      v12 = sub_23BFF8DB0();
      v14 = v13;
      (*v8)(v9, v11);
      v16 = *(v1 + 16);
      v15 = *(v1 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_23BFCE138((v15 > 1), v16 + 1, 1);
      }

      *(v1 + 16) = v16 + 1;
      v17 = v1 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v7 += v34;
      --v4;
      v0 = v10;
    }

    while (v4);
    v2 = v33;
  }

  v18 = objc_opt_self();
  v19 = sub_23BFFA450();

  v20 = [v18 fetchAssetsWithUUIDs:v19 options:0];
  v0[13] = v20;

  if (!v20)
  {
    goto LABEL_23;
  }

  v24 = v0[3];

  v21 = [v20 count];
  if (v21 >= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v21;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return MEMORY[0x2822009F8](v21, v22, v23);
  }

  if (v25)
  {
    for (i = 0; i != v25; i = (i + 1))
    {
      v27 = [v20 objectAtIndex_];
      MEMORY[0x23EEC3100]();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23BFFA480();
      }

      sub_23BFFA4A0();
    }

    v28 = *v2;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v0[14] = v28;
  sub_23BFFA520();
  v0[15] = sub_23BFFA510();
  v29 = sub_23BFFA4C0();
  v31 = v30;
  v21 = sub_23BF3AD60;
  v22 = v29;
  v23 = v31;

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_23BF3AD60()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 32);

  v2(v1);

  return MEMORY[0x2822009F8](sub_23BF3ADE8, 0, 0);
}

uint64_t sub_23BF3ADE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BF3AE50()
{

  sub_23BFFA520();
  *(v0 + 128) = sub_23BFFA510();
  v2 = sub_23BFFA4C0();

  return MEMORY[0x2822009F8](sub_23BF3AEEC, v2, v1);
}

uint64_t sub_23BF3AEEC()
{
  v1 = *(v0 + 32);

  v1(MEMORY[0x277D84F90]);

  return MEMORY[0x2822009F8](sub_23BF3AF68, 0, 0);
}

uint64_t sub_23BF3AF68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BF3AFD0()
{

  return swift_deallocClassInstance();
}

__n128 _s6LayoutV4RectOwcp(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_23BF3B0DC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23BF3B158(uint64_t a1, id *a2)
{
  result = sub_23BFFA2E0();
  *a2 = 0;
  return result;
}

uint64_t sub_23BF3B1D0(uint64_t a1, id *a2)
{
  v3 = sub_23BFFA2F0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23BF3B250@<X0>(uint64_t *a1@<X8>)
{
  sub_23BFFA300();
  v2 = sub_23BFFA2C0();

  *a1 = v2;
  return result;
}

uint64_t sub_23BF3B294()
{
  v0 = sub_23BFFA300();
  v1 = MEMORY[0x23EEC30B0](v0);

  return v1;
}

uint64_t sub_23BF3B2D0()
{
  sub_23BFFA300();
  sub_23BFFA3A0();
}

uint64_t sub_23BF3B324()
{
  sub_23BFFA300();
  sub_23BFFAD90();
  sub_23BFFA3A0();
  v0 = sub_23BFFADF0();

  return v0;
}

uint64_t sub_23BF3B398()
{
  v1 = *v0;
  sub_23BFFAD90();
  MEMORY[0x23EEC3A60](v1);
  return sub_23BFFADF0();
}

uint64_t sub_23BF3B3E0()
{
  v1 = *v0;
  sub_23BFFAD90();
  MEMORY[0x23EEC3A60](v1);
  return sub_23BFFADF0();
}

uint64_t sub_23BF3B46C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BF3B544()
{
  v0 = sub_23BFFA300();
  v2 = v1;
  if (v0 == sub_23BFFA300() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_23BFFACC0();
  }

  return v5 & 1;
}

uint64_t sub_23BF3B5CC(uint64_t a1)
{
  v2 = sub_23BF3B46C(&qword_27E1E01D8, type metadata accessor for InfoKey);
  v3 = sub_23BF3B46C(&qword_27E1E01E0, type metadata accessor for InfoKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23BF3B688(uint64_t a1)
{
  v2 = sub_23BF3B46C(&qword_27E1E0108, type metadata accessor for Key);
  v3 = sub_23BF3B46C(&qword_27E1E0110, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23BF3B81C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23BFFA2C0();

  *a1 = v2;
  return result;
}

uint64_t sub_23BF3B864(uint64_t a1)
{
  v2 = sub_23BF3B46C(&qword_27E1E01E8, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_23BF3B46C(&unk_27E1E01F0, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void sub_23BF3B998(uint64_t a1, unint64_t *a2)
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

uint64_t sub_23BF3BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23BF4A264(&qword_27E1E0510);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23BF4B33C(a3, v22 - v9, &qword_27E1E0510);
  v11 = sub_23BFFA540();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23BF4B2D4(v10, &qword_27E1E0510);
  }

  else
  {
    sub_23BFFA530();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23BFFA4C0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23BFFA380() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_23BF4B2D4(a3, &qword_27E1E0510);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23BF4B2D4(a3, &qword_27E1E0510);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_23BF3BEB0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  [v0 setAccessibilityTraits_];
  return v0;
}

char *sub_23BF3BF8C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23WatchFacePreviewsHeader_label;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11 = [objc_opt_self() preferredFontForTextStyle_];
  [v10 setFont_];

  v12 = [objc_opt_self() whiteColor];
  [v10 setTextColor_];

  [v10 setAccessibilityTraits_];
  *&v4[v9] = v10;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for WatchFacePreviewsHeader();
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23WatchFacePreviewsHeader_label;
  v15 = *&v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23WatchFacePreviewsHeader_label];
  v16 = v13;
  [v16 addSubview_];
  [*&v13[v14] constrainToSuperviewWithEdges:15 insets:0 useLayoutMargins:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  [*&v13[v14] setTextAlignment_];

  return v16;
}

id sub_23BF3C1D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchFacePreviewsHeader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BF3C24C()
{
  v1 = *v0;
  sub_23BFFAD90();
  MEMORY[0x23EEC3A60](v1);
  return sub_23BFFADF0();
}

uint64_t sub_23BF3C2C0()
{
  v1 = *v0;
  sub_23BFFAD90();
  MEMORY[0x23EEC3A60](v1);
  return sub_23BFFADF0();
}

uint64_t sub_23BF3C304()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_23BFFAD90();
  if (v2)
  {
    v1 = qword_23C001E58[v1];
  }

  else
  {
    MEMORY[0x23EEC3A60](1);
  }

  MEMORY[0x23EEC3A60](v1);
  return sub_23BFFADF0();
}

uint64_t sub_23BF3C370()
{
  v1 = *v0;
  if (v0[1])
  {
    v1 = qword_23C001E58[v1];
  }

  else
  {
    MEMORY[0x23EEC3A60](1);
  }

  return MEMORY[0x23EEC3A60](v1);
}

uint64_t sub_23BF3C3C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_23BFFAD90();
  if (v2)
  {
    v1 = qword_23C001E58[v1];
  }

  else
  {
    MEMORY[0x23EEC3A60](1);
  }

  MEMORY[0x23EEC3A60](v1);
  return sub_23BFFADF0();
}

BOOL sub_23BF3C428(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t sub_23BF3C4D0()
{
  v1 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___previewStackViewModel;
  if (*(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___previewStackViewModel))
  {
    v2 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___previewStackViewModel);
  }

  else
  {
    v2 = sub_23BF3C538(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_23BF3C538(uint64_t a1)
{
  v13 = *MEMORY[0x277D3B3C0];
  v14 = *(MEMORY[0x277D3B3C0] + 8);
  v12 = *(a1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_facePreviewSize);
  v11 = *(a1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_facePreviewSize + 8);
  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = v2;
  if (v2)
  {
    [v2 screenBounds];
    Height = CGRectGetHeight(v15);
    [v3 screenCornerRadius];
  }

  else
  {
    [v1 screenBoundsForSizeClass_];
    Height = CGRectGetHeight(v16);
    [v1 screenCornerRadiusForSizeClass_];
  }

  v6 = v5 * (v14 / Height);
  type metadata accessor for ParmesanStackViewModel();
  v7 = swift_allocObject();
  *(v7 + 56) = 1;
  *(v7 + 64) = MEMORY[0x277D84F90];
  sub_23BFF91D0();

  *&v8 = v12;
  *(&v8 + 1) = v11;
  *&v9 = v13;
  *(&v9 + 1) = v14;
  *(v7 + 16) = v8;
  *(v7 + 32) = v9;
  *(v7 + 48) = v6;
  return v7;
}

uint64_t sub_23BF3C688()
{
  v1 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___hasDaily;
  v2 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___hasDaily);
  if (v2 == 2)
  {
    v3 = [objc_opt_self() currentDevice];
    if (v3)
    {
      v4 = v3;
      LOBYTE(v2) = [v3 isRunningNapiliGMOrLater];
    }

    else
    {
      LOBYTE(v2) = 1;
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

id sub_23BF3C70C()
{
  v1 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___peopleDataSource;
  v2 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___peopleDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___peopleDataSource);
  }

  else
  {
    v4 = [objc_opt_self() sharedPhotoLibrary];
    v5 = [objc_allocWithZone(MEMORY[0x277D3CC50]) initWithPhotoLibrary_];

    [v5 addChangeObserver_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

__n128 sub_23BF3C7CC@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration);
  v4 = *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 16);
  v23 = *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration);
  v24 = v4;
  v5 = *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 48);
  v25 = *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 32);
  v26 = v5;
  v6 = *(&v23 + 1);
  if (*(&v23 + 1))
  {
    v7 = *(&v26 + 1);
    v8 = v26;
    v16 = v24;
    v17 = v25;
    v9 = v23;
  }

  else
  {
    sub_23BF3C8F4(&v19);
    v6 = *(&v19 + 1);
    v9 = v19;
    v7 = *(&v22 + 1);
    v8 = v22;
    v10 = v3[1];
    v18[0] = *v3;
    v18[1] = v10;
    v11 = v3[3];
    v18[2] = v3[2];
    v18[3] = v11;
    v12 = v20;
    v13 = v20;
    *v3 = v19;
    v3[1] = v13;
    v14 = v22;
    v16 = v12;
    v17 = v21;
    v3[2] = v21;
    v3[3] = v14;

    sub_23BF4B270(v17);
    sub_23BF4B270(v8);
    sub_23BF4B2D4(v18, &qword_27E1E05D8);
  }

  sub_23BF4B33C(&v23, v18, &qword_27E1E05D8);
  *a1 = v9;
  *(a1 + 8) = v6;
  result = v16;
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  *(a1 + 48) = v8;
  *(a1 + 56) = v7;
  return result;
}

uint64_t sub_23BF3C8F4@<X0>(uint64_t *a1@<X8>)
{
  sub_23BF4BDF0(0, &qword_27E1E0930);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_23BFFA2C0();
  v4 = sub_23BFFA2C0();
  v5 = [ObjCClassFromMetadata localizedStringForKey:v3 comment:v4];

  v6 = sub_23BFFA300();
  v8 = v7;

  v9 = sub_23BFFA2C0();
  v10 = sub_23BFFA2C0();
  v11 = [ObjCClassFromMetadata localizedStringForKey:v9 comment:v10];

  v12 = sub_23BFFA300();
  v14 = v13;

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v12;
  a1[3] = v14;
  a1[4] = sub_23BF4B3A4;
  a1[5] = v15;
  a1[6] = sub_23BF4B3D4;
  a1[7] = v16;
  return result;
}

void sub_23BF3CAC8(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

char *sub_23BF3CB24(void *a1, void *a2, char a3)
{
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_sectionTopBottomContentInsets] = 0x4018000000000000;
  v7 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_sections] = MEMORY[0x277D84F90];
  v8 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_suggestionsDataSource;
  type metadata accessor for ParmesanShuffleSuggestionsDataSource();
  v9 = swift_allocObject();
  v10 = [objc_opt_self() sharedPhotoLibrary];
  v11 = [objc_allocWithZone(MEMORY[0x277D3B3A0]) initWithPhotoLibrary_];

  *&v3[v8] = v9;
  *(v9 + 16) = v11;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedTypeface] = 2;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedNumeralsOption] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___previewStackViewModel] = 0;
  v12 = *MEMORY[0x277D3B3C0];
  v13 = *(MEMORY[0x277D3B3C0] + 8);
  v14 = [objc_opt_self() mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v49.origin.x = v16;
  v49.origin.y = v18;
  v49.size.width = v20;
  v49.size.height = v22;
  v23 = CGRectGetHeight(v49) * 0.2;
  v24 = v12 / v13 * v23;
  if (v13 < v23)
  {
    v24 = v12;
    v23 = v13;
  }

  v25 = &v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_facePreviewSize];
  *v25 = v24;
  v25[1] = v23;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_availableSuggestionTypes] = v7;
  v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadedInitialSelection] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes] = v7;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedPersonIdentifiers] = 0;
  v26 = &v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection];
  *v26 = 0;
  v26[1] = 0;
  v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedDaily] = 0;
  v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___hasDaily] = 2;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingAssetSelection] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingPersonIdentifiers] = 0;
  v27 = &v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingCollectionIdentifier];
  *v27 = 0;
  v27[1] = 0;
  v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingDaily] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___peopleDataSource] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_vipPeopleIdentifiers] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_nonVipPeopleIdentifiers] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectionDebouncetimer] = 0;
  v28 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_floatingButtonTray;
  *&v3[v28] = [objc_allocWithZone(type metadata accessor for ParmesanButtonTray()) initWithFrame_];
  v29 = &v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration];
  v29[2] = 0u;
  v29[3] = 0u;
  *v29 = 0u;
  v29[1] = 0u;
  result = NTKNewUniqueTeporaryResourceDirectory();
  if (result)
  {
    v31 = result;
    v32 = sub_23BFFA300();
    v34 = v33;

    v35 = &v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_resourceDirectory];
    *v35 = v32;
    v35[1] = v34;
    swift_unknownObjectWeakInit();
    *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_editor] = a1;
    *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_face] = a2;
    v3[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_inGallery] = a3 & 1;
    v48.receiver = v3;
    v48.super_class = type metadata accessor for ParmesanShuffleSelectionBaseViewController();
    v36 = a1;
    v37 = a2;
    v38 = objc_msgSendSuper2(&v48, sel_initWithNibName_bundle_, 0, 0);
    v39 = [v37 selectedOptionForCustomEditMode:19 slot:{0, v48.receiver, v48.super_class}];
    if (v39)
    {
      v40 = v39;
      type metadata accessor for ParmesanNumeralsEditOption();
      v41 = swift_dynamicCastClass();
      if (v41)
      {
        v42 = [v41 numeralOption];

        *&v38[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedNumeralsOption] = v42;
      }

      else
      {
      }
    }

    v43 = [v37 selectedOptionForCustomEditMode:13 slot:0];
    if (v43)
    {
      v44 = v43;
      type metadata accessor for ParmesanTypefaceEditOption();
      v45 = swift_dynamicCastClass();
      if (!v45)
      {

        goto LABEL_16;
      }

      v46 = [v45 _value];

      v47 = v46 == 1;
      if (v46 == 2)
      {
        v47 = 2;
      }

      *&v38[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedTypeface] = v47;
    }

    else
    {
    }

    v44 = v38;
LABEL_16:

    return v38;
  }

  __break(1u);
  return result;
}

void sub_23BF3D038()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration);
  v2 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 8);
  v3 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 16);
  v4 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 24);
  v5 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 32);
  v6 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 40);
  v7 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 48);

  sub_23BF4A1A0(v1, v2, v3, v4, v5, v6, v7);
}

id sub_23BF3D1A4()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() defaultManager];

  v2 = sub_23BFFA2C0();

  v9[0] = 0;
  v3 = [v1 removeItemAtPath:v2 error:v9];

  if (v3)
  {
    v4 = v9[0];
  }

  else
  {
    v5 = v9[0];
    v6 = sub_23BFF8BC0();

    swift_willThrow();
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for ParmesanShuffleSelectionViewController();
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void sub_23BF3D468()
{
  v1 = v0;
  v84.receiver = v0;
  v84.super_class = type metadata accessor for ParmesanShuffleSelectionViewController();
  objc_msgSendSuper2(&v84, sel_loadView);
  v2 = sub_23BF3E1E8(0);
  v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v2 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v4 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView;
  v5 = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView];
  *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView] = v3;

  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (!*&v1[v4])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6;
  [v6 addSubview_];

  v8 = *&v1[v4];
  if (!v8)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = *MEMORY[0x277D75060];
  v10 = *(MEMORY[0x277D75060] + 8);
  v11 = *(MEMORY[0x277D75060] + 16);
  v12 = *(MEMORY[0x277D75060] + 24);
  [v8 constrainToSuperviewWithEdges:15 insets:0 useLayoutMargins:{*MEMORY[0x277D75060], v10, v11, v12}];
  v13 = *&v1[v4];
  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = objc_allocWithZone(sub_23BF4A264(&unk_27E1E0600));
  v15 = v13;
  v16 = sub_23BFF9540();
  v17 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource;
  v18 = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource];
  *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource] = v16;
  v19 = v16;

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_23BFF9550();

  v20 = *&v1[v4];
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v20 setDataSource_];
  v21 = *&v1[v4];
  if (!v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v21 setDelegate_];
  v22 = *&v1[v4];
  if (!v22)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v22 setAllowsMultipleSelection_];
  v23 = *&v1[v4];
  if (!v23)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_23BF4BDF0(0, &qword_27E1E2860);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = v23;
  v26 = NSStringFromClass(ObjCClassFromMetadata);
  sub_23BFFA300();

  v27 = sub_23BFFA2C0();

  [v25 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v27];

  v28 = *&v1[v4];
  if (!v28)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  type metadata accessor for ParmesanListCell();
  v29 = swift_getObjCClassFromMetadata();
  v30 = v28;
  v31 = NSStringFromClass(v29);
  sub_23BFFA300();

  v32 = sub_23BFFA2C0();

  [v30 registerClass:v29 forCellWithReuseIdentifier:v32];

  v33 = *&v1[v4];
  if (!v33)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  type metadata accessor for WatchFacePreviewsHeader();
  v34 = swift_getObjCClassFromMetadata();
  v35 = v33;
  v36 = sub_23BFFA2C0();
  v37 = sub_23BFFA2C0();
  [v35 registerClass:v34 forSupplementaryViewOfKind:v36 withReuseIdentifier:v37];

  v38 = *&v1[v4];
  if (!v38)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  type metadata accessor for ParmesanButtonTrayReusableView();
  v39 = swift_getObjCClassFromMetadata();
  v40 = v38;
  v41 = sub_23BFFA2C0();
  v42 = sub_23BFFA2C0();
  [v40 registerClass:v39 forSupplementaryViewOfKind:v41 withReuseIdentifier:v42];

  v43 = [v1 view];
  if (!v43)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v44 = v43;
  v45 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_floatingButtonTray;
  [v43 addSubview_];

  [*&v1[v45] setHidden_];
  v46 = *&v1[v45];
  sub_23BF3C7CC(&v85);
  v47 = *&v46[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_container];
  v90[0] = v85;
  v48 = v85;
  v49 = v86;
  v89 = v86;
  v50 = &v47[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration];
  v51 = *&v47[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration];
  v52 = *&v47[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration + 16];
  v53 = *&v47[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration + 48];
  v83[2] = *&v47[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration + 32];
  v83[3] = v53;
  v54 = v87;
  v55 = v88;
  v83[0] = v51;
  v83[1] = v52;
  v56 = v88;
  *(v50 + 2) = v87;
  *(v50 + 3) = v56;
  *v50 = v48;
  *(v50 + 1) = v49;
  v57 = v47;
  sub_23BF4B214(v90, v82);
  sub_23BF4B270(v55);
  sub_23BF4B270(v54);
  sub_23BF4B33C(&v89, v82, &qword_27E1E05D0);
  sub_23BF4B2D4(v83, &qword_27E1E05D8);
  sub_23BF89EF4(&v85);

  sub_23BF4B280(v90);
  sub_23BF4B2D4(&v89, &qword_27E1E05D0);
  sub_23BF4A21C(v54);
  sub_23BF4A21C(v55);
  [*&v1[v45] constrainToSuperviewWithEdges:14 insets:0 useLayoutMargins:{v9, v10, v11, v12}];
  sub_23BF4A264(&qword_27E1E05E0);
  v58 = swift_allocObject();
  v59 = *&v1[v45];
  *(v58 + 16) = xmmword_23C001B90;
  v60 = [*(v59 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_buttonLayoutGuide) leadingAnchor];
  v61 = [v1 view];
  if (!v61)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v62 = v61;
  v63 = [v61 layoutMarginsGuide];

  v64 = [v63 leadingAnchor];
  v65 = [v60 constraintEqualToAnchor_];

  v66 = *&v1[v45];
  *(v58 + 32) = v65;
  v67 = [*(v66 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_buttonLayoutGuide) trailingAnchor];
  v68 = [v1 view];
  if (!v68)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v69 = v68;
  v70 = [v68 layoutMarginsGuide];

  v71 = [v70 trailingAnchor];
  v72 = [v67 constraintEqualToAnchor_];

  v73 = *&v1[v45];
  *(v58 + 40) = v72;
  v74 = [*(v73 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_buttonLayoutGuide) bottomAnchor];
  v75 = [v1 view];
  if (v75)
  {
    v76 = v75;
    v77 = objc_opt_self();
    v78 = [v76 safeAreaLayoutGuide];

    v79 = [v78 bottomAnchor];
    v80 = [v74 constraintEqualToAnchor_];

    *(v58 + 48) = v80;
    sub_23BF4BDF0(0, &qword_27E1E0610);
    v81 = sub_23BFFA450();

    [v77 activateConstraints_];

    return;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_23BF3DD08(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if (!v5)
    {
      v8 = sub_23BF3FEE0(v4, a2);
LABEL_7:
      v9 = v8;

      return v9;
    }

    if (v4)
    {
      if (v4 == 1)
      {
        sub_23BF40E3C(a2);
      }

      else
      {
        if ((sub_23BF3C688() & 1) == 0)
        {

          return 0;
        }

        sub_23BF41694(a2);
      }

      goto LABEL_7;
    }

    v10 = *(result + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView);
    if (v10)
    {
      sub_23BF4BDF0(0, &qword_27E1E2860);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v12 = v10;
      v13 = NSStringFromClass(ObjCClassFromMetadata);
      sub_23BFFA300();

      v14 = sub_23BFFA2C0();

      v15 = sub_23BFF8DF0();
      v16 = [v12 dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:v15];

      sub_23BF3C4D0();
      v17[3] = sub_23BF4A264(&qword_27E1E0618);
      v17[4] = sub_23BF4BE40(&qword_27E1E0620, &qword_27E1E0618);
      sub_23BF4AD24(v17);
      sub_23BF4BE88();
      sub_23BFF9AF0();
      MEMORY[0x23EEC3420](v17);

      return v16;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_23BF3DF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = sub_23BF3EB34(a2, a3);

  return v7;
}

id sub_23BF3E00C(char a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for ParmesanShuffleSelectionViewController();
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1 & 1);
  sub_23BF42B40();
  if ([*(*&v2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_suggestionsDataSource] + 16) hasSuggestions])
  {
    sub_23BF41E90();
  }

  if (*&v2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_vipPeopleIdentifiers] && *&v2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_nonVipPeopleIdentifiers])
  {

    sub_23BF4A030(v4);
  }

  else
  {
    v5 = sub_23BF3C70C();
    sub_23BF4959C(v5);
  }

  v6 = sub_23BF3C70C();
  [v6 startBackgroundFetch];

  return [*(*(*&v2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_floatingButtonTray] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_container) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_primaryButton) setEnabled_];
}

id sub_23BF3E1E8(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
  v3 = objc_opt_self();
  v4 = [v3 fractionalWidthDimension_];
  v5 = [v3 estimatedDimension_];
  v6 = objc_opt_self();
  v7 = [v6 sizeWithWidthDimension:v4 heightDimension:v5];

  v8 = sub_23BFFA2C0();
  v9 = objc_opt_self();
  v10 = [v9 boundarySupplementaryItemWithLayoutSize:v7 elementKind:v8 alignment:1];

  sub_23BF4A264(&qword_27E1E05E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23C001BA0;
  *(v11 + 32) = v10;
  v27 = v11;
  v12 = v10;
  if (a1)
  {
    v13 = [v3 fractionalWidthDimension_];
    v14 = [v3 estimatedDimension_];
    v15 = [v6 sizeWithWidthDimension:v13 heightDimension:v14];

    v16 = v15;
    v17 = sub_23BFFA2C0();
    v18 = [v9 boundarySupplementaryItemWithLayoutSize:v16 elementKind:v17 alignment:5 absoluteOffset:{0.0, 12.0}];

    [v18 setExtendsBoundary_];
    v19 = v18;
    MEMORY[0x23EEC3100]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23BFFA480();
    }

    sub_23BFFA4A0();
  }

  sub_23BF4BDF0(0, &qword_27E1E05E8);
  v20 = sub_23BFFA450();

  [v2 setBoundarySupplementaryItems_];

  [v2 setScrollDirection_];
  [v2 setInterSectionSpacing_];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = objc_allocWithZone(MEMORY[0x277D752B8]);
  aBlock[4] = sub_23BF4B334;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BF4A124;
  aBlock[3] = &unk_284EBF2F0;
  v23 = _Block_copy(aBlock);

  v24 = [v22 initWithSectionProvider:v23 configuration:v2];

  _Block_release(v23);

  return v24;
}

uint64_t sub_23BF3E60C(unint64_t a1)
{
  v2 = sub_23BFF9640();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BFF9660();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D74D50], v2);
  sub_23BFF9650();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    sub_23BF4BDF0(0, &qword_27E1E05F0);
    v13 = sub_23BFFA7D0();
LABEL_9:
    (*(v7 + 8))(v9, v6);
    return v13;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = *(result + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_sections);
    if (*(v12 + 16) > a1)
    {
      if (*(v12 + a1 + 32))
      {
        sub_23BF4BDF0(0, &qword_27E1E05F0);
        v13 = sub_23BFFA7D0();
        [v13 contentInsets];
        [v13 setContentInsets_];
      }

      else
      {
        v14 = objc_opt_self();
        v15 = [v14 fractionalWidthDimension_];
        v16 = &v11[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_facePreviewSize];
        v17 = [v14 absoluteDimension_];
        v18 = [objc_opt_self() sizeWithWidthDimension:v15 heightDimension:v17];

        v19 = objc_opt_self();
        v32 = v18;
        v20 = [v19 itemWithLayoutSize_];
        v21 = objc_opt_self();
        sub_23BF4A264(&qword_27E1E05E0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_23C001BA0;
        *(v22 + 32) = v20;
        sub_23BF4BDF0(0, &qword_27E1E05F8);
        v34 = v6;
        v33 = v20;
        v23 = sub_23BFFA450();

        v24 = [v21 verticalGroupWithLayoutSize:v18 subitems:v23];

        v25 = objc_opt_self();
        v26 = v24;
        v27 = [v25 fixedSpacing_];
        v28 = [v25 fixedSpacing_];
        v29 = [v25 fixedSpacing_];
        v30 = [v25 fixedSpacing_];
        v31 = [objc_opt_self() spacingForLeading:v27 top:v28 trailing:v29 bottom:v30];

        v6 = v34;
        [v26 setEdgeSpacing_];

        v13 = [objc_opt_self() sectionWithGroup_];
      }

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23BF3EB34(uint64_t result, uint64_t a2)
{
  if (result == 0xD00000000000001ALL && 0x800000023C00C420 == a2 || (result = sub_23BFFACC0(), (result & 1) != 0))
  {
    v3 = *(v2 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView);
    if (v3)
    {
      v4 = v3;
      v5 = sub_23BFFA2C0();
      v6 = sub_23BFFA2C0();
      v7 = sub_23BFF8DF0();
      v8 = [v4 dequeueReusableSupplementaryViewOfKind:v5 withReuseIdentifier:v6 forIndexPath:v7];

      type metadata accessor for WatchFacePreviewsHeader();
      v9 = swift_dynamicCastClassUnconditional();
      v10 = *(v9 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23WatchFacePreviewsHeader_label);
      sub_23BF4BDF0(0, &qword_27E1E0930);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v12 = v10;
      v13 = sub_23BFFA2C0();
      v14 = sub_23BFFA2C0();
      v15 = [ObjCClassFromMetadata localizedStringForKey:v13 comment:v14];

      if (!v15)
      {
        sub_23BFFA300();
        v15 = sub_23BFFA2C0();
      }

      [v12 setText_];

      return v9;
    }

    __break(1u);
  }

  else
  {
    v16 = *(v2 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView);
    if (v16)
    {
      v17 = v16;
      v18 = sub_23BFFA2C0();
      v19 = sub_23BFFA2C0();
      v20 = sub_23BFF8DF0();
      v21 = [v17 dequeueReusableSupplementaryViewOfKind:v18 withReuseIdentifier:v19 forIndexPath:v20];

      type metadata accessor for ParmesanButtonTrayReusableView();
      v9 = swift_dynamicCastClassUnconditional();
      sub_23BF3C7CC(&v34);
      v22 = *(v9 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanButtonTrayReusableView_tray);
      v38 = v35;
      v39 = v34;
      v23 = v34;
      v24 = v35;
      v25 = (v22 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration);
      v26 = *(v22 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration);
      v27 = *(v22 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration + 16);
      v28 = *(v22 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration + 48);
      v33[2] = *(v22 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration + 32);
      v33[3] = v28;
      v29 = v36;
      v30 = v37;
      v33[0] = v26;
      v33[1] = v27;
      v31 = v37;
      v25[2] = v36;
      v25[3] = v31;
      *v25 = v23;
      v25[1] = v24;
      sub_23BF4B214(&v39, v32);
      sub_23BF4B33C(&v38, v32, &qword_27E1E05D0);
      sub_23BF4B270(v29);
      sub_23BF4B270(v30);
      sub_23BF4B2D4(v33, &qword_27E1E05D8);
      sub_23BF89EF4(&v34);
      sub_23BF4B280(&v39);
      sub_23BF4B2D4(&v38, &qword_27E1E05D0);
      sub_23BF4A21C(v29);
      sub_23BF4A21C(v30);
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23BF3EF24(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = sub_23BFF8E50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFF8E00();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

uint64_t sub_23BF3F064(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = sub_23BFF8E50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFF8E00();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

void sub_23BF3F16C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection];
  v3 = *&v0[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection + 8];
  if (!v3)
  {
    v14 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes;
    swift_beginAccess();
    v15 = *&v1[v14];
    v16 = *(v15 + 16);
    if (!v16)
    {
      v20 = type metadata accessor for ParmesanShuffleSelection();
      v21 = objc_allocWithZone(v20);
      *&v21[OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes] = 0;
      *&v21[OBJC_IVAR___NTKParmesanShuffleSelection_personIdentifiers] = 0;
      v22 = &v21[OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier];
      *v22 = 0;
      v22[1] = 0;
      *&v21[OBJC_IVAR___NTKParmesanShuffleSelection_manualSelection] = 0;
      v21[OBJC_IVAR___NTKParmesanShuffleSelection_isDaily] = 1;
      v62.receiver = v21;
      v62.super_class = v20;
      v23 = objc_msgSendSuper2(&v62, sel_init);
LABEL_17:
      v8 = v23;
      goto LABEL_18;
    }

    v17 = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedPersonIdentifiers];
    if (!v17)
    {
LABEL_16:
      v26 = *&v1[v14];
      v27 = type metadata accessor for ParmesanShuffleSelection();
      v28 = objc_allocWithZone(v27);
      *&v28[OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes] = v26;
      *&v28[OBJC_IVAR___NTKParmesanShuffleSelection_personIdentifiers] = v17;
      v29 = &v28[OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier];
      *v29 = 0;
      v29[1] = 0;
      *&v28[OBJC_IVAR___NTKParmesanShuffleSelection_manualSelection] = 0;
      v28[OBJC_IVAR___NTKParmesanShuffleSelection_isDaily] = 0;
      v60.receiver = v28;
      v60.super_class = v27;

      v23 = objc_msgSendSuper2(&v60, sel_init);
      goto LABEL_17;
    }

    if (*&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_vipPeopleIdentifiers] && *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_nonVipPeopleIdentifiers])
    {
      v61 = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_vipPeopleIdentifiers];

      sub_23BF4A030(v18);
      v19 = sub_23BFD9274(v17, v61);

      if (v19)
      {
LABEL_9:

        v17 = 0;
        goto LABEL_16;
      }

      v15 = *&v1[v14];
      v16 = *(v15 + 16);
    }

    else
    {
    }

    v24 = (v15 + 32);
    while (v16)
    {
      v25 = *v24++;
      --v16;
      if (v25 == 1)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_9;
  }

  v4 = *v2;
  v5 = type metadata accessor for ParmesanShuffleSelection();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes] = 0;
  *&v6[OBJC_IVAR___NTKParmesanShuffleSelection_personIdentifiers] = 0;
  v7 = &v6[OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier];
  *v7 = v4;
  v7[1] = v3;
  *&v6[OBJC_IVAR___NTKParmesanShuffleSelection_manualSelection] = 0;
  v6[OBJC_IVAR___NTKParmesanShuffleSelection_isDaily] = 0;
  v59.receiver = v6;
  v59.super_class = v5;
  swift_bridgeObjectRetain_n();
  v8 = objc_msgSendSuper2(&v59, sel_init);
  v9 = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_editor];
  v10 = sub_23BFFA2C0();

  v11 = [v9 titleForCollectionWithIdentifier_];

  if (v11)
  {
    sub_23BFFA300();
    v13 = v12;

    goto LABEL_19;
  }

LABEL_18:
  v13 = 0;
LABEL_19:
  v30 = sub_23BF3C4D0();
  swift_getKeyPath();
  v61 = v30;
  sub_23BF4B1CC(&qword_27E1E0540, 255, type metadata accessor for ParmesanStackViewModel);
  sub_23BFF91C0();

  v31 = *(v30 + 64);

  v32 = *(v31 + 16);

  if (v32)
  {
    v33 = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___previewStackViewModel];
    swift_getKeyPath();
    v61 = v33;

    sub_23BFF91C0();

    v34 = *(v33 + 64);

    if (v32 >> 1 < *(v34 + 16))
    {
      v35 = v34 + 80 * (v32 >> 1);
      v36 = *(v35 + 88);
      v37 = *(v35 + 48);
      v38 = v36;

      v39 = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_editor];
      v40 = sub_23BFFA2C0();

      if (v13)
      {
        v41 = sub_23BFFA2C0();
      }

      else
      {
        v41 = 0;
      }

      [v39 setShuffleSelection:v8 withKeyAssetIdentifier:v40 albumName:v41];

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong shuffleSelectionViewController:v1 didFinishWithSelection:v8];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }

    __break(1u);
    goto LABEL_38;
  }

  if (qword_27E1DFDC0 != -1)
  {
LABEL_38:
    swift_once();
  }

  v42 = sub_23BFF92B0();
  sub_23BF4A22C(v42, qword_27E1EB510);
  v43 = sub_23BFF9290();
  v44 = sub_23BFFA650();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_23BF0C000, v43, v44, "Failed to get keyAsset, cannot create shuffle", v45, 2u);
    MEMORY[0x23EEC4DF0](v45, -1, -1);
  }

  sub_23BF4BDF0(0, &qword_27E1E0930);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = sub_23BFFA2C0();
  v48 = sub_23BFFA2C0();
  v49 = [ObjCClassFromMetadata localizedStringForKey:v47 comment:v48];

  if (!v49)
  {
    sub_23BFFA300();
    v49 = sub_23BFFA2C0();
  }

  v50 = sub_23BFFA2C0();
  v51 = sub_23BFFA2C0();
  v52 = [ObjCClassFromMetadata localizedStringForKey:v50 comment:v51];

  if (!v52)
  {
    sub_23BFFA300();
    v52 = sub_23BFFA2C0();
  }

  v53 = [objc_opt_self() alertControllerWithTitle:v49 message:v52 preferredStyle:1];

  v54 = sub_23BFFA2C0();
  v55 = sub_23BFFA2C0();
  v56 = [ObjCClassFromMetadata localizedStringForKey:v54 comment:v55];

  if (!v56)
  {
    sub_23BFFA300();
    v56 = sub_23BFFA2C0();
  }

  v57 = [objc_opt_self() actionWithTitle:v56 style:0 handler:0];

  [v53 addAction_];
  [v1 presentViewController:v53 animated:1 completion:0];
}