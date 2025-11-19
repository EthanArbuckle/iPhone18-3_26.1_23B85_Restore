void sub_1928(uint64_t a1, void *a2, GPUTools::GL::WireframeRenderer *a3, unsigned int a4, unsigned int a5, unsigned int a6, void **a7, uint64_t a8, float a9)
{
  v17 = a2;
  if (GPUTools::GL::WireframeRenderer::IsBadDrawCall(a3, a5, a8, v18))
  {
LABEL_73:

    return;
  }

  v58 = v17;
  v19 = [v17 gliDispatch];
  v20 = [v17 gliContext];
  v54 = v19[143](v20, 2929);
  v67 = 0;
  (v19[99])(v20, 2930, &v67);
  v19[63](v20, 2929);
  v19[61](v20, 0);
  v53 = v19[143](v20, 2960);
  v66 = 0;
  (v19[104])(v20, 2968, &v66);
  v19[63](v20, 2960);
  v19[255](v20, 0);
  v50 = a4;
  v51 = a7;
  v59 = a5;
  (v19[99])(v20, 3107, v65);
  (v19[49])(v20, 1, 1, 1, 1);
  v21 = v19[143](v20, 2896);
  v19[63](v20, 2896);
  v22 = v19[143](v20, 2912);
  v19[63](v20, 2912);
  v23 = v19[143](v20, 3042);
  v19[63](v20, 3042);
  v57 = v19[143](v20, 3058);
  v19[63](v20, 3058);
  v56 = v19[143](v20, 2884);
  v19[63](v20, 2884);
  v64 = 0;
  (v19[104])(v20, 34016, &v64);
  v60 = a6;
  v63 = 0;
  (v19[104])(v20, 2849, &v63);
  (v19[155])(v20, a9);
  v24 = *(a1 + 8);
  v25 = *(a1 + 16);
  v55 = v21;
  if (v25 == v24)
  {
    v68[0] = 0.0;
    (v19[104])(v20, 34018, v68);
    LOBYTE(v61) = 0;
    v24 = *(a1 + 8);
    v25 = *(a1 + 16);
    if (SLODWORD(v68[0]) <= (v25 - v24))
    {
      v26 = a8;
      v27 = v22;
      if (SLODWORD(v68[0]) < (v25 - v24))
      {
        v25 = v24 + SLODWORD(v68[0]);
        *(a1 + 16) = v25;
      }
    }

    else
    {
      v26 = a8;
      sub_22F8((a1 + 8), SLODWORD(v68[0]) - (v25 - v24), &v61);
      v27 = v22;
      v24 = *(a1 + 8);
      v25 = *(a1 + 16);
    }
  }

  else
  {
    v26 = a8;
    v27 = v22;
  }

  v28 = v23;
  if (v25 != v24)
  {
    v29 = 0;
    do
    {
      v19[342](v20, (v29 + 33984));
      *(*(a1 + 8) + v29) = v19[143](v20, 3553);
      v19[63](v20, 3553);
      ++v29;
    }

    while (v29 < *(a1 + 16) - *(a1 + 8));
  }

  v52 = v19[143](v20, 32886);
  v19[64](v20, 32886);
  (v19[103])(v20, 2816, v68);
  v30 = a6;
  (v19[37])(v20, 1.0, 1.0, 1.0, 1.0);
  if ((a3 - 4) > 2)
  {
    if (a6)
    {
      if (v26 < 2)
      {
        (v19[67])(v20, a3, v59, a6, v51);
      }

      else
      {
        (v19[763])(v20, a3, v59, a6, v51, v26);
      }
    }

    else if (v26 < 2)
    {
      (v19[762])(v20, a3, v50, v59, v26);
    }

    else
    {
      (v19[65])(v20, a3, v50, v59);
    }

LABEL_51:
    (v19[155])(v20, v63);
    if (v55)
    {
      v19[72](v20, 2896);
    }

    if (v56)
    {
      v19[72](v20, 2884);
    }

    if (v27)
    {
      v19[72](v20, 2912);
    }

    if (v57)
    {
      v19[72](v20, 3058);
    }

    if (v28)
    {
      v19[72](v20, 3042);
    }

    v48 = *(a1 + 8);
    v47 = *(a1 + 16);
    if (v47 != v48)
    {
      v49 = 0;
      do
      {
        if (*(v48 + v49))
        {
          v19[342](v20, (v49 + 33984));
          v19[72](v20, 3553);
          v48 = *(a1 + 8);
          v47 = *(a1 + 16);
        }

        ++v49;
      }

      while (v49 < v47 - v48);
    }

    v19[342](v20, v64);
    if (v52)
    {
      v19[73](v20, 32886);
    }

    (v19[37])(v20, v68[0], v68[1], v68[2], v68[3]);
    (v19[49])(v20, v65[0], v65[1], v65[2], v65[3]);
    if (v53)
    {
      v19[72](v20, 2960);
    }

    v19[255](v20, v66);
    if (v54)
    {
      v19[72](v20, 2929);
    }

    v19[61](v20, v67);
    v17 = v58;
    goto LABEL_73;
  }

  if (!a6)
  {
    v62 = 0;
    (v19[104])(v20, 34965, &v62);
    if (v62)
    {
      (v19[642])(v20, 34963, 0);
    }

    if ((v59 + v50) >= 256)
    {
      v35 = (&loc_1400 + 3);
    }

    else
    {
      v35 = (&loc_1400 + 1);
    }

    v61 = 0;
    if (a3 == 4)
    {
      v36 = GPUTools::GL::dy_type_size(v35, v34);
      LineListFromTriList = GPUTools::GL::WireframeRenderer::CreateLineListFromTriList(&v61, v50, v59, v36, v37);
    }

    else
    {
      v45 = GPUTools::GL::dy_type_size(v35, v34);
      if (a3 == 5)
      {
        LineListFromTriList = GPUTools::GL::WireframeRenderer::CreateLineListFromTriStrip(&v61, v50, v59, v45, v46);
      }

      else
      {
        LineListFromTriList = GPUTools::GL::WireframeRenderer::CreateLineListFromTriFan(&v61, v50, v59, v45, v46);
      }
    }

    if (v26 < 2)
    {
      (v19[67])(v20, 1, LineListFromTriList, v35, v61);
    }

    else
    {
      (v19[763])(v20, 1, LineListFromTriList, v35, v61, v26);
    }

    free(v61);
    if (v62)
    {
      v19[642](v20, 34963);
    }

    goto LABEL_51;
  }

  v62 = 0;
  (v19[104])(v20, 34965, &v62);
  if (!v62)
  {
    v33 = v51;
    if (!v51)
    {
      goto LABEL_43;
    }

LABEL_31:
    v39 = v33;
    v61 = 0;
    if (a3 == 4)
    {
      v40 = GPUTools::GL::dy_type_size(v30, v31);
      v42 = GPUTools::GL::WireframeRenderer::CreateLineListFromIndexedTriList(v39, &v61, v59, v40, 0, v41);
    }

    else
    {
      v43 = GPUTools::GL::dy_type_size(v30, v31);
      if (a3 == 5)
      {
        v42 = GPUTools::GL::WireframeRenderer::CreateLineListFromIndexedTriStrip(v39, &v61, v59, v43, 0, v44);
      }

      else
      {
        v42 = GPUTools::GL::WireframeRenderer::CreateLineListFromIndexedTriFan(v39, &v61, v59, v43, 0, v44);
      }
    }

    if (v26 < 2)
    {
      (v19[67])(v20, 1, v42, v30, v61);
    }

    else
    {
      (v19[763])(v20, 1, v42, v30, v61, v26);
    }

    free(v61);
LABEL_43:
    if (v62)
    {
      v19[642](v20, 34963);
      v19[650](v20, 34963);
    }

    goto LABEL_51;
  }

  LODWORD(v61) = 0;
  (v19[651])(v20, 34963, 34660, &v61);
  v32 = (v19[795])(v20, 34963, 0, v61, 1);
  if (v32)
  {
    (v19[642])(v20, 34963, 0);
    v33 = (v51 + v32);
    v30 = v60;
    if (!(v51 + v32))
    {
      goto LABEL_43;
    }

    goto LABEL_31;
  }

  dy_abort();
  __break(1u);
}

void sub_2260(GPUTools::GL::WireframeRenderer *a1)
{
  sub_2298(a1);

  operator delete();
}

void sub_2298(GPUTools::GL::WireframeRenderer *a1)
{
  *a1 = off_24650;
  v2 = *(a1 + 1);
  if (v2)
  {
    *(a1 + 2) = v2;
    operator delete(v2);
  }

  GPUTools::GL::WireframeRenderer::~WireframeRenderer(a1);
}

void sub_22F8(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      sub_243C();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void sub_2454(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_24B0(exception, a1);
}

std::logic_error *sub_24B0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_24E4(uint64_t a1)
{
  *a1 = off_246B8;
  for (i = *(a1 + 168); i; i = *i)
  {
    for (j = i[5]; j; j = *j)
    {
      if (j[3])
      {
        operator delete();
      }
    }
  }

  sub_46F0(a1 + 232);
  sub_4624(a1 + 192);
  sub_4624(a1 + 152);
  sub_4624(a1 + 112);
  sub_459C(a1 + 72);
  sub_459C(a1 + 32);
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {
    operator delete();
  }

  sub_39AC((a1 + 16), 0);

  GPUTools::GL::WireframeRenderer::~WireframeRenderer(a1);
}

void sub_25F8(uint64_t a1)
{
  sub_24E4(a1);

  operator delete();
}

uint64_t sub_2630(uint64_t **a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a3;
  if (a4)
  {
    v5 = **a1;
    v6 = DYCreatePrivateGLShader();
  }

  else
  {
    v6 = (a1[1][594])((*a1)[2]);
  }

  (a1[1][595])((*a1)[2], v6, 1, &v8, 0);
  (a1[1][596])((*a1)[2], v6);
  return v6;
}

uint64_t sub_26CC(uint64_t a1)
{
  LODWORD(v4) = 0;
  (*(*(*(a1 + 24) + 8) + 832))(*(**(a1 + 24) + 16), 35725, &v4);
  if (v4)
  {
    v3 = 0;
    (*(*(*(a1 + 24) + 8) + 5264))(*(**(a1 + 24) + 16));
  }

  return 0;
}

uint64_t sub_289C(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v11 = a3;
  v10 = v5;
  v6 = sub_5308((a1 + 192), &v10);
  if (v6 && (v7 = sub_63B0(v6 + 3, &v11)) != 0)
  {
    v8 = *v7[3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_292C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2630(*(a1 + 24), 35632, a2, 1);
  v4 = [*(a1 + 8) context];
  v5 = DYCreatePrivateGLProgram();

  (*(*(*(a1 + 24) + 8) + 5512))(*(**(a1 + 24) + 16), v5, 33368, 1);
  (*(*(*(a1 + 24) + 8) + 4784))(*(**(a1 + 24) + 16), v5, v3);
  (*(*(*(a1 + 24) + 8) + 4792))(*(**(a1 + 24) + 16), v5);
  (*(*(*(a1 + 24) + 8) + 4744))(*(**(a1 + 24) + 16), v5, v3);
  (*(*(*(a1 + 24) + 8) + 4728))(*(**(a1 + 24) + 16), v3);
  v6 = [*(a1 + 8) context];
  v7 = DYCreatePrivateGLProgramPipeline();

  (*(*(*(a1 + 24) + 8) + 6552))(*(**(a1 + 24) + 16), v7, 2, v5);
  return v7;
}

uint64_t sub_2A6C(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  (*(*(*(a1 + 24) + 8) + 6608))(*(**(a1 + 24) + 16), a2, 35633, &v17);
  v3 = [*(a1 + 8) context];
  v4 = [v3 sharegroup];

  v16 = v4;
  v18 = &v16;
  v5 = sub_4770((a1 + 112), &v16);
  v18 = &v17;
  v6 = *(sub_4CB4(v5 + 3, &v17) + 5);
  v18 = *(**(a1 + 24) + 16);
  v7 = sub_4EE8((a1 + 72), &v18);
  if (!v7)
  {
    v15 = sub_292C(a1, "void main() { gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0); }");
    v16 = *(**(a1 + 24) + 16);
    v18 = &v16;
    v8 = sub_4FD4((a1 + 72), &v16);
    sub_2D28(v8 + 3, &v15);
    v9 = [*(a1 + 8) context];
    v10 = [v9 API];

    if (v10 == &dword_0 + 3)
    {
      v14 = sub_292C(a1, "#version 300 es\nout lowp vec4 fragColor;\nvoid main() { fragColor = vec4(1.0, 1.0, 1.0, 1.0); }");
      v16 = *(**(a1 + 24) + 16);
      v18 = &v16;
      v11 = sub_4FD4((a1 + 72), &v16);
      sub_2D28(v11 + 3, &v14);
    }

    v16 = *(**(a1 + 24) + 16);
    v18 = &v16;
    v7 = sub_4FD4((a1 + 72), &v16);
  }

  v12 = *(v7[3] + 4 * v6);
  (*(*(*(a1 + 24) + 8) + 6552))(*(**(a1 + 24) + 16), v12, 1, v17);
  LODWORD(v18) = 0;
  (*(*(*(a1 + 24) + 8) + 6616))(*(**(a1 + 24) + 16), v12);
  (*(*(*(a1 + 24) + 8) + 6608))(*(**(a1 + 24) + 16), v12, 35715, &v18);
  if (v18)
  {

    return v12;
  }

  else
  {
    result = dy_abort();
    __break(1u);
  }

  return result;
}

void sub_2D28(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_243C();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_52C0(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_2E08(uint64_t a1, void *a2, GPUTools::GL::WireframeRenderer *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = a2;
  if ((GPUTools::GL::WireframeRenderer::IsBadDrawCall(a3, a5, a8, v14) & 1) == 0)
  {
    objc_storeStrong((a1 + 8), a2);
    operator new();
  }
}

id **sub_39AC(id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    operator delete();
  }

  return result;
}

id *sub_3A14(id *location, void **a2)
{
  v4 = *a2;
  if (*location != v4)
  {
    objc_storeStrong(location, v4);
    v5 = *a2;
    *a2 = 0;
  }

  return location;
}

void sub_3A60(uint64_t a1, void *a2, uint64_t a3)
{
  v7[1] = a3;
  v5 = *(*a2 + 8);
  v7[0] = 0;
  (*(a2[1] + 5256))(*(*a2 + 16), a3, 35663, v7);
  if (v7[0] == 35633)
  {
    v6 = 0;
    (*(a2[1] + 5256))(*(*a2 + 16), a3, 35713, &v6);
    if (v6 == 1)
    {
      sub_3DFC(a2);
    }
  }
}

void sub_3DFC(void *a1)
{
  v1 = 0;
  (*(a1[1] + 5256))(*(*a1 + 16));
  operator new[]();
}

uint64_t *sub_3F30(uint64_t a1, void *a2, void *a3, unsigned int a4)
{
  v9 = a4;
  result = sub_63B0(a3, &v9);
  if (result)
  {
    v7 = result[3];
    v8 = v7[2] - 1;
    v7[2] = v8;
    if (!v8)
    {
      (*(a2[1] + 4728))(*(*a2 + 16), *v7);
      operator delete();
    }

    return sub_6464(a3, result);
  }

  return result;
}

void sub_3FC8(void *a1, void *a2, uint64_t a3)
{
  v21 = 0;
  v22 = a3;
  (*(a2[1] + 5264))(*(*a2 + 16), a3, 35714, &v21);
  if (v21)
  {
    v20 = sub_428C(a2, a3, 35633);
    if (v20)
    {
      v6 = sub_428C(a2, v22, 35632);
      v7 = *(*a2 + 8);
      v8 = v7;
      if (v6)
      {
        *&v18[0] = v7;
        v9 = sub_5308(a1 + 24, v18);
        v10 = v9;
        if (!v9)
        {
          memset(v18, 0, sizeof(v18));
          v19 = 1065353216;
          v17 = v8;
          v23 = &v17;
          v11 = sub_5AEC(a1 + 24, &v17);
          if (v11 + 3 != v18)
          {
            *(v11 + 14) = 1065353216;
            sub_5D5C(v11 + 3, 0, 0);
          }

          v17 = v8;
          v23 = &v17;
          v10 = sub_5AEC(a1 + 24, &v17);
          v9 = sub_46A4(v18);
        }

        sub_3F30(v9, a2, v10 + 3, v22);
        v23 = v8;
        *&v18[0] = &v23;
        v12 = sub_5AEC(a1 + 19, &v23);
        *&v18[0] = &v20;
        v13 = sub_58B4(v12 + 3, &v20)[3];
        ++*(v13 + 8);
        *&v18[0] = &v22;
        sub_58B4(v10 + 3, &v22)[3] = v13;
      }

      else
      {
        v23 = v7;
        v14 = sub_5AEC(a1 + 19, &v23);
        *&v18[0] = &v20;
        v15 = *(sub_58B4(v14 + 3, &v20)[3] + 4);
        v23 = v8;
        v16 = sub_4770(a1 + 14, &v23);
        *&v18[0] = &v22;
        *(sub_4CB4(v16 + 3, &v22) + 5) = v15;
      }
    }
  }
}

void sub_4254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_46A4(va);

  _Unwind_Resume(a1);
}

uint64_t sub_428C(void *a1, uint64_t a2, int a3)
{
  v8 = 2;
  (*(a1[1] + 6072))(*(*a1 + 16), a2, 2, &v8, v9);
  if (v8 < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v7 = 0;
    (*(a1[1] + 5256))(*(*a1 + 16), v9[v5], 35663, &v7);
    if (v7 == a3)
    {
      break;
    }

    if (++v5 >= v8)
    {
      return 0;
    }
  }

  return v9[v5];
}

void sub_4380(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, int a5, const std::string::value_type **a6)
{
  v19 = a3;
  if (a4 == 35633)
  {
    LODWORD(v7) = a5;
    v18 = 0;
    (a2[1][658])((*a2)[2], a3, 35714, &v18);
    if (v18)
    {
      memset(&v17, 0, sizeof(v17));
      if (v7 >= 1)
      {
        v7 = v7;
        do
        {
          std::string::append(&v17, *a6++);
          --v7;
        }

        while (v7);
      }

      v10 = (*a2)[1];
      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v17;
      }

      else
      {
        v11 = v17.__r_.__value_.__r.__words[0];
      }

      v12 = sub_2630(a2, 35633, v11, 0);
      v16 = v12;
      [**a2 getParameter:1710 to:&v16];
      (a2[1][591])((*a2)[2], v12);
      v13 = v16 == 300;
      v15 = v10;
      v20 = &v15;
      v14 = sub_4770((a1 + 112), &v15);
      v20 = &v19;
      *(sub_4CB4(v14 + 3, &v19) + 5) = v13;

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_44F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_4528(uint64_t *a1, void *a2)
{
  v3 = a2;
  *a1 = v3;
  a1[1] = 0;
  v4 = [v3 sharegroup];
  v5 = a1[1];
  a1[1] = v4;

  v6 = *a1;
  a1[2] = GLIContextFromEAGLContext();
  v7 = *a1;
  a1[3] = GLCFrontDispatch();
  v8 = *a1;
  a1[4] = GLCBackDispatch();

  return a1;
}

uint64_t sub_459C(uint64_t a1)
{
  sub_45D8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_45D8(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_4624(uint64_t a1)
{
  sub_4660(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_4660(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_46A4((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_46A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_46F0(uint64_t a1)
{
  sub_472C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_472C(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_4770(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_49CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_49E0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_46A4(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_4A2C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_4A60(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_4B50(a1, prime);
    }
  }
}

void sub_4B50(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_4A2C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *sub_4CB4(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_4EE8(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_4FD4(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_525C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_52C0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_4A2C();
}

void *sub_5308(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_53BC(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_5604(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5618(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5618(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_5664(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_58B4(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_5AEC(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_5D48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49E0(va);
  _Unwind_Resume(a1);
}

void sub_5D5C(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        v8[3] = a2[3];
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_5E70(a1, v9, v8 + 4);
        sub_5FD0(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_6324();
  }
}

void sub_5E3C(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_5E70(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_60B8(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *sub_5FD0(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_60B8(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_61A8(a1, prime);
    }
  }
}

void sub_61A8(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_4A2C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *sub_63B0(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_6464(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_64A8(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_64A8@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void sub_70C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_70F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_717C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = DYEAGLDebugFunctionPlayer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_A154(uint64_t a1)
{
  *v3 = 0;
  GPUTools::GL::DYGetTextureTargetInfo();
  result = [*(a1 + 32) _isBoundObjectAlive:0 isObjectFunc:{*(*(*(a1 + 32) + OBJC_IVAR___DYGLFunctionPlayer__disp) + 1160), 0, *&v3[1]}];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

uint64_t sub_A3F4(uint64_t a1, int a2, char a3)
{
  *(a1 + 8) = +[CATransaction animationTimingFunction];
  +[CATransaction animationDuration];
  *(a1 + 16) = v6;
  *(a1 + 24) = 0;
  *(a1 + 32) = +[CATransaction disableActions];
  *(a1 + 33) = a3;
  v7 = +[CATransaction completionBlock];
  v8 = [v7 copy];
  v9 = *(a1 + 24);
  *(a1 + 24) = v8;

  if (a2)
  {
    [CATransaction setDisableActions:1];
  }

  return a1;
}

uint64_t sub_A4C0(uint64_t a1)
{
  if (*(a1 + 33) == 1)
  {
    +[CATransaction flush];
  }

  v2 = *(a1 + 8);
  [CATransaction setAnimationTimingFunction:v2];

  [CATransaction setAnimationDuration:*(a1 + 16)];
  [CATransaction setCompletionBlock:*(a1 + 24)];
  [CATransaction setDisableActions:*(a1 + 32)];

  return a1;
}

void sub_A55C(GPUTools::Playback::GL::ContextInfo *a1)
{
  *a1 = off_24788;
  v2 = a1 + 120;
  sub_4624(a1 + 200);
  sub_46A4(a1 + 160);
  sub_46A4(v2);

  GPUTools::Playback::GL::ContextInfo::~ContextInfo(a1);
}

void sub_A5CC(GPUTools::Playback::GL::ContextInfo *a1)
{
  sub_A55C(a1);

  operator delete();
}

__n64 sub_B704(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 22);
  if (v2)
  {
    result.n64_f64[0] = 0.0;
    if (*(a1 + 20) <= a2)
    {
      return result;
    }
  }

  else
  {
    result.n64_f64[0] = 0.0;
    if (a2)
    {
      return result;
    }
  }

  switch(*(a1 + 8))
  {
    case 1:
      v6 = *(*a1 + a2);
      goto LABEL_17;
    case 2:
      result.n64_u8[0] = *(*a1 + a2);
      goto LABEL_21;
    case 3:
      v6 = *(*a1 + 2 * a2);
LABEL_17:
      result.n64_f64[0] = v6;
      return result;
    case 4:
      result.n64_u16[0] = *(*a1 + 2 * a2);
      goto LABEL_21;
    case 5:
      v4 = *(*a1 + 4 * a2);
      result.n64_f64[0] = v4;
      v5.n64_f64[0] = vcvtd_n_f64_s32(v4, 0x10uLL);
      if (*(a1 + 12) == 19)
      {
        return v5;
      }

      return result;
    case 6:
      result.n64_u32[0] = *(*a1 + 4 * a2);
      goto LABEL_21;
    case 7:
    case 0xB:
      result.n64_f64[0] = *(*a1 + 8 * a2);
      return result;
    case 8:
    case 0xC:
      result.n64_u64[0] = *(*a1 + 8 * a2);
LABEL_21:
      result.n64_f64[0] = result.n64_u64[0];
      break;
    case 9:
      result.n64_f64[0] = *(*a1 + 4 * a2);
      break;
    case 0xA:
      result.n64_u64[0] = *(*a1 + 8 * a2);
      break;
    case 0xD:
      if ((v2 & 0x10) != 0)
      {
        result.n64_f64[0] = GPUTools::FD::Argument::ViewAsGLObjectName(a1);
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t *sub_D2A4(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_D4D4(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_D730(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49E0(va);
  _Unwind_Resume(a1);
}

void sub_D744(uint64_t a1, uint64_t *a2)
{
  sub_D7E8(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *sub_D7E8(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void *sub_D854(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

unint64_t sub_DA80(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 22);
  if (v2)
  {
    if (*(a1 + 20) > a2)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (a2)
  {
    return 0;
  }

LABEL_5:
  switch(*(a1 + 8))
  {
    case 1:
      return *(*a1 + a2);
    case 2:
      return *(*a1 + a2);
    case 3:
      return *(*a1 + 2 * a2);
    case 4:
      return *(*a1 + 2 * a2);
    case 5:
      v5 = *(a1 + 12);
      result = *(*a1 + 4 * a2);
      if (v5 != 19)
      {
        return result;
      }

      v4 = vcvtd_n_f64_s32(result, 0x10uLL);
LABEL_10:
      result = v4;
      break;
    case 6:
      return *(*a1 + 4 * a2);
    case 7:
    case 8:
    case 0xB:
    case 0xC:
      return *(*a1 + 8 * a2);
    case 9:
      return *(*a1 + 4 * a2);
    case 0xA:
      v4 = *(*a1 + 8 * a2);
      goto LABEL_10;
    case 0xD:
      if ((v2 & 0x10) == 0)
      {
        return 0;
      }

      return GPUTools::FD::Argument::ViewAsGLObjectName(a1);
    default:
      return 0;
  }

  return result;
}

uint64_t *sub_DBB0(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_DDF0(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_E01C(void *a1, unint64_t *a2)
{
  result = sub_5308(a1, a2);
  if (result)
  {
    sub_6464(a1, result);
    return (&dword_0 + 1);
  }

  return result;
}

void sub_E484(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_1231C(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 40 * a2;
  }
}

void sub_E564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = DYGLShaderProfilerFunctionPlayerSupport;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_E818(uint64_t a1)
{
  v2 = [*(a1 + 32) strongPlaybackEngine];
  [v2 setDelegate:0];

  v3 = [*(a1 + 32) _queryShaderResult];
  [*(a1 + 40) setResult:?];
}

uint64_t sub_F738(const void **a1, _DWORD *a2, _DWORD *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v9 = *a1;
    v10 = v6 - *a1;
    v11 = v10 >> 3;
    v12 = (v10 >> 3) + 1;
    if (v12 >> 61)
    {
      sub_243C();
    }

    v13 = v7 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      sub_1296C(a1, v12);
    }

    v14 = (8 * v11);
    *v14 = *a2;
    v14[1] = *a3;
    v8 = 8 * v11 + 8;
    memcpy(0, v9, v10);
    v15 = *a1;
    *a1 = 0;
    a1[1] = v8;
    a1[2] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    *(v6 + 1) = *a3;
    v8 = (v6 + 8);
  }

  a1[1] = v8;
  return v8 - 8;
}

uint64_t *sub_10190(uint64_t *result)
{
  if (*(result + 6))
  {
    v1 = 0;
    v2 = *result;
    v3 = result[25];
    v4 = result[4];
    v5 = result[7];
    do
    {
      v6 = 0;
      *(v2 + 8 * v1) = 0;
      *(v3 + 4 * v1) = 0;
      *(v4 + 8 * v1) = 0;
      *(v5 + 8 * v1) = 0;
      do
      {
        *(result[v6 + 10] + 8 * v1) = 0;
        v6 += 3;
      }

      while (v6 != 15);
      ++v1;
      v7 = *(result + 6);
    }

    while (v1 < v7);
    v8 = v7 - 1;
  }

  else
  {
    v8 = -1;
  }

  *(result + 56) = 0;
  *(result + 57) = v8;
  return result;
}

void sub_10754(uint64_t a1, void *a2)
{
  v3 = *(a1 + 224);
  v4 = *(a1 + 24);
  v5 = (*(a1 + 228) + 1) % v4;
  v6 = v3 + 1;
  if (v4 >= v3 + 1)
  {
    v7 = v3 + 1;
  }

  else
  {
    v7 = *(a1 + 24);
  }

  *(a1 + 224) = v7;
  *(a1 + 228) = v5;
  v8 = *a1;
  *(*a1 + 8 * v5) = *a2;
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  v11 = *(a1 + 80);
  v12 = *(a1 + 104);
  v13 = *(a1 + 128);
  v14 = *(a1 + 152);
  v15 = *(a1 + 176);
  if (v7 == 1)
  {
    v16 = *v8;
    *(v15 + 8 * v5) = v16;
    *(v14 + 8 * v5) = v16;
    *(v13 + 8 * v5) = v16;
    *(v12 + 8 * v5) = v16;
    *(v11 + 8 * v5) = v16;
    **(a1 + 200) = 0;
    *(v10 + 8 * v5) = v16;
    *(v9 + 8 * v5) = v16;
  }

  else
  {
    *(v9 + 8 * v5) = 0;
    v17 = *(a1 + 200);
    if (v6)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v17[v18] = v18;
        v19 += v8[v18];
        *(v9 + 8 * v5) = v19;
        ++v18;
        v20 = *(a1 + 224);
      }

      while (v18 < v20);
    }

    else
    {
      v20 = 0;
    }

    __compar[0] = _NSConcreteStackBlock;
    __compar[1] = 3221225472;
    __compar[2] = sub_1314C;
    __compar[3] = &unk_247C0;
    __compar[4] = a1;
    qsort_b(v17, v20, 4uLL, __compar);
    v21 = *(v9 + 8 * v5);
    v22 = *(a1 + 224);
    v23 = v22 >> 1;
    if (v21)
    {
      v24 = v21 + (v22 >> 1);
    }

    else
    {
      v24 = -v23;
    }

    *(v9 + 8 * v5) = v24 / v22;
    v25 = *(a1 + 200);
    v26 = *a1;
    *(v11 + 8 * v5) = *(*a1 + 8 * *v25);
    *(v15 + 8 * v5) = v26[v25[(v22 - 1)]];
    if (v22)
    {
      v27 = v26[v25[v23]];
    }

    else
    {
      v27 = (v26[v25[v23]] + v26[v25[(v23 - 1)]]) >> 1;
    }

    *(v13 + 8 * v5) = v27;
    v28 = v22 >> 2;
    v29 = ~(v22 >> 2);
    v30 = v22 + v29;
    v31 = v25[v22 >> 2];
    v32 = v26[v31];
    if ((v22 & 3) != 0)
    {
      *(v12 + 8 * v5) = v32;
      v33 = v25[v30];
      v34 = v26[v33];
    }

    else
    {
      *(v12 + 8 * v5) = (v26[v25[(v28 - 1)]] + v32) >> 1;
      v33 = v25[v30];
      v34 = (v26[v25[(v22 - v28)]] + v26[v33]) >> 1;
    }

    *(v14 + 8 * v5) = v34;
    v35 = (v22 & 0xFFFFFFFC) - (v22 & 0x3FFFFFFF) + 4;
    v36 = (v26[v33] + v26[v31]) * v35;
    *(v10 + 8 * v5) = v36;
    if (v28 + 1 < v30)
    {
      v37 = &v25[v28 + 1];
      v38 = 2 * v28 - v22 + 2;
      do
      {
        v39 = *v37++;
        v36 += 4 * v26[v39];
        *(v10 + 8 * v5) = v36;
      }

      while (!__CFADD__(v38++, 1));
    }

    *(v10 + 8 * v5) = v36 / (4 * (v30 + v29) + 2 * v35);
  }
}

unint64_t sub_109F4(uint64_t a1, unsigned int a2, double *a3, double *a4)
{
  LODWORD(v4) = *(a1 + 224);
  if (!v4)
  {
    return v4 & 1;
  }

  if (v4 == 1)
  {
    v5 = (*(a1 + 24) + *(a1 + 228)) % *(a1 + 24);
    v4 = *(*(a1 + 56) + 8 * v5);
    if (v4)
    {
      v6 = (*(*(a1 + 152) + 8 * v5) - *(*(a1 + 104) + 8 * v5)) / v4;
      *a4 = v6;
      *a3 = v6;
      LOBYTE(v4) = 1;
    }

    return v4 & 1;
  }

  if (v4 >= a2)
  {
    LODWORD(v4) = a2;
  }

  if (v4)
  {
    v7 = *(a1 + 228);
    v8 = *(a1 + 56);
    v9 = 1;
    v10 = *(a1 + 24);
    while (1)
    {
      v11 = *(v8 + 8 * v7);
      if (v11)
      {
        v12 = (*(*(a1 + 152) + 8 * v7) - *(*(a1 + 104) + 8 * v7)) / v11;
        if (v9)
        {
          *a4 = v12;
          v13 = a3;
        }

        else
        {
          v13 = a3;
          if (v12 >= *a3)
          {
            v13 = a4;
            if (v12 <= *a4)
            {
              v9 = 0;
              goto LABEL_15;
            }
          }
        }

        v9 = 0;
        *v13 = v12;
      }

LABEL_15:
      v7 = (v7 + v10 - 1) % v10;
      LODWORD(v4) = v4 - 1;
      if (!v4)
      {
        LODWORD(v4) = v9 ^ 1;
        return v4 & 1;
      }
    }
  }

  return v4 & 1;
}

void sub_10FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25)
{
  sub_459C(&a11);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_11538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1231C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 40 * ((40 * a2 - 40) / 0x28) + 40;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      sub_243C();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_12490(a1, v9);
    }

    v11 = 40 * v6;
    v12 = 40 * ((40 * a2 - 40) / 0x28) + 40;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_12490(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_4A2C();
}

void *sub_124E8(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_1271C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1296C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_4A2C();
}

void sub_129B4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_12A10(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_12A10(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_459C((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_12A54(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_45D8(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_12AB0(uint64_t a1, unsigned int a2)
{
  *(a1 + 32) = 0u;
  v3 = (a1 + 32);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 24) = a2;
  v4 = a2;
  v10 = 0;
  sub_12C18(a1, a2, &v10);
  v5 = *(a1 + 24);
  LODWORD(v10) = 0;
  sub_12C48((a1 + 200), v5, &v10);
  v6 = *(a1 + 24);
  v10 = 0;
  sub_12C18(v3, v6, &v10);
  v7 = *(a1 + 24);
  v10 = 0;
  sub_12C18((a1 + 56), v7, &v10);
  for (i = 80; i != 200; i += 24)
  {
    v10 = 0;
    sub_12C18((a1 + i), v4, &v10);
  }

  *(a1 + 228) = *(a1 + 24) - 1;
  return a1;
}

void sub_12B98(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 200);
  if (v4)
  {
    *(v1 + 208) = v4;
    operator delete(v4);
  }

  v5 = 0;
  while (1)
  {
    v6 = *(v1 + v5 + 176);
    if (v6)
    {
      *(v1 + v5 + 184) = v6;
      operator delete(v6);
    }

    v5 -= 24;
    if (v5 == -120)
    {
      v7 = *(v1 + 56);
      if (v7)
      {
        *(v1 + 64) = v7;
        operator delete(v7);
      }

      v8 = *v2;
      if (*v2)
      {
        *(v1 + 40) = v8;
        operator delete(v8);
      }

      v9 = *v1;
      if (*v1)
      {
        *(v1 + 8) = v9;
        operator delete(v9);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

void sub_12C18(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_12C78(a1, a2 - v3, a3);
  }
}

void sub_12C48(void *a1, unint64_t a2, int *a3)
{
  v3 = (a1[1] - *a1) >> 2;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_12E48(a1, a2 - v3, a3);
  }
}

void sub_12C78(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_21130)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_243C();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_1296C(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_21130)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void sub_12E48(uint64_t a1, unint64_t a2, int *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 2)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 4 * a2;
      v17 = *a3;
      v18 = v14 + 4;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_21130)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_21140)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_243C();
    }

    v9 = v7 >> 2;
    v10 = v5 - *a1;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_52C0(a1, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = 4 * v9 + 4 * a2;
    v25 = *a3;
    v26 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_21130)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_21140)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = *(a1 + 8) - *a1;
    v33 = v23 - v32;
    memcpy((v23 - v32), *a1, v32);
    v34 = *a1;
    *a1 = v33;
    *(a1 + 8) = v24;
    *(a1 + 16) = 0;
    if (v34)
    {

      operator delete(v34);
    }
  }
}

uint64_t *sub_13090(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 200);
    if (v3)
    {
      *(v2 + 208) = v3;
      operator delete(v3);
    }

    v4 = 0;
    while (1)
    {
      v5 = *(v2 + v4 + 176);
      if (v5)
      {
        *(v2 + v4 + 184) = v5;
        operator delete(v5);
      }

      v4 -= 24;
      if (v4 == -120)
      {
        v6 = *(v2 + 56);
        if (v6)
        {
          *(v2 + 64) = v6;
          operator delete(v6);
        }

        v7 = *(v2 + 32);
        if (v7)
        {
          *(v2 + 40) = v7;
          operator delete(v7);
        }

        v8 = *v2;
        if (*v2)
        {
          *(v2 + 8) = v8;
          operator delete(v8);
        }

        operator delete();
      }
    }
  }

  return result;
}

uint64_t sub_1314C(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = **(a1 + 32);
  v4 = *(v3 + 8 * *a2);
  v5 = *(v3 + 8 * *a3);
  v6 = v4 >= v5;
  v7 = v4 > v5;
  if (v6)
  {
    return v7;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_13174(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_4A2C();
}

void *sub_131BC(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_13418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1342C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1342C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_459C(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_13478(uint64_t a1, uint64_t *a2)
{
  sub_12A54(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

uint64_t *sub_1351C(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_13774(void *a1, unint64_t *a2)
{
  result = sub_5308(a1, a2);
  if (result)
  {
    sub_137AC(a1, result);
    return (&dword_0 + 1);
  }

  return result;
}

uint64_t sub_137AC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_64A8(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_525C(&v6, v3);
  }

  return v2;
}

uint64_t sub_137F8(uint64_t a1)
{
  sub_12A10(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_138F0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_13EB8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) eaglPlayer];
  v4 = [v3 contextForContextIdentifier:a2];

  return v4;
}

void sub_14184()
{
  qword_2A660 = 2;
  qword_2A668 = "attribute highp vec2 inVertex;                             \nattribute highp vec2 inTexCoord;                           \nattribute highp vec4 inColor;                              \n                                                           \nvarying highp vec2 vTexCoord;                              \nvarying highp vec4 vColor;                                 \n                                                           \nvoid main() {                                              \n    vTexCoord = inTexCoord;                                \n    vColor = inColor;                                      \n    gl_Position = vec4(inVertex, 0.0, 1.0);                \n}                                                          \n";
  qword_2A670 = "uniform sampler2D tex2D;                                   \nvarying lowp vec2 vTexCoord;                               \nvarying lowp vec4 vColor;                                  \n                                                           \nvoid main() {                                              \n    gl_FragColor = texture2D(tex2D, vTexCoord) * vColor;   \n}                                                          \n";
  unk_2A678 = 2;
  qword_2A680 = "attribute highp vec2 inVertex;                             \nattribute highp vec2 inTexCoord;                           \nattribute highp vec4 inColor;                              \n                                                           \nvarying highp vec2 vTexCoord;                              \nvarying highp vec4 vColor;                                 \n                                                           \nvoid main() {                                              \n    vTexCoord = inTexCoord;                                \n    vColor = inColor;                                      \n    gl_Position = vec4(inVertex, 0.0, 1.0);                \n}                                                          \n";
  unk_2A688 = "uniform sampler2D tex2D;                                   \nvarying lowp vec2 vTexCoord;                               \nvarying lowp vec4 vColor;                                  \n                                                           \nvoid main() {                                              \n    gl_FragColor = texture2D(tex2D, vTexCoord).rrrr * vColor;  \n}                                                          \n";
  qword_2A690 = 3;
  unk_2A698 = "#version 300 es                                            \nin vec2 inVertex;                                          \nin vec2 inTexCoord;                                        \nin vec4 inColor;                                           \n                                                           \nout vec2 vTexCoord;                                        \nout vec4 vColor;                                           \n                                                           \nvoid main() {                                              \n    vTexCoord = inTexCoord;                                \n    vColor = inColor;                                      \n    gl_Position = vec4(inVertex, 0.0, 1.0);                \n}                                                          \n";
  qword_2A6A0 = "#version 300 es                                            \nuniform highp isampler2D tex2D;                            \nuniform highp vec2 range;                                  \nin lowp vec2 vTexCoord;                                    \nin lowp vec4 vColor;                                       \n                                                           \nout highp vec4 fragData;                                   \n                                                           \nvoid main() {                                              \n   highp vec4 texel = vec4(texture(tex2D, vTexCoord));           \n   fragData = (texel - range.x) / range.y;                 \n   fragData = clamp(fragData, 0.0, 1.0);                   \n   fragData *= vColor;                                     \n}                                                          \n";
  unk_2A6A8 = 3;
  qword_2A6B0 = "#version 300 es                                            \nin vec2 inVertex;                                          \nin vec2 inTexCoord;                                        \nin vec4 inColor;                                           \n                                                           \nout vec2 vTexCoord;                                        \nout vec4 vColor;                                           \n                                                           \nvoid main() {                                              \n    vTexCoord = inTexCoord;                                \n    vColor = inColor;                                      \n    gl_Position = vec4(inVertex, 0.0, 1.0);                \n}                                                          \n";
  unk_2A6B8 = "#version 300 es                                            \nuniform highp usampler2D tex2D;                            \nuniform highp vec2 range;                                  \nin lowp vec2 vTexCoord;                                    \nin lowp vec4 vColor;                                       \n                                                           \nout highp vec4 fragData;                                   \n                                                           \nvoid main() {                                              \n   highp vec4 texel = vec4(texture(tex2D, vTexCoord));     \n   fragData = (texel - range.x) / range.y;                 \n   fragData = clamp(fragData, 0.0, 1.0);                   \n   fragData *= vColor;                                     \n}                                                          \n";
  byte_2A658 = 1;
}

uint64_t GPUTools::GL::GetImageInfo()
{
  return GPUTools::GL::GetImageInfo();
}

{
  return GPUTools::GL::GetImageInfo();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}