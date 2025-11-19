void sub_54D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18)
{
  objc_destroyWeak(a9);

  _Unwind_Resume(a1);
}

uint64_t sub_54F58(_DWORD *a1, uint64_t a2)
{
  v2 = (a1[1] & 0xFFF) + (a1[3] & 0xFFF);
  v3 = (a1[2] & 0xFFF) + (a1[4] & 0xFFF);
  return 48 * v2 + 32 * (v3 + (a1[5] & 0xFFFu)) + 40 * a2 + ((24 * (*a1 & 0xFFF) + (((a1[5] & 0xFFF) + (*a1 & 0xFFF) + (a1[6] & 0xFFFu) + v3 + v2 + 65) >> 3)) & 0x3FFF8);
}

void TUI::Evaluation::Variables::Capture::~Capture(TUI::Evaluation::Variables::Capture *this)
{
  *this = off_25F2D8;
  *(this + 1) = off_25F398;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 3);
    if (v3)
    {
      v4 = *v3;
      v5 = v3 + 1;
      v6 = v3[1];
      v7 = v3 + 2;
      v8 = v3[2];
      v9 = v3 + 3;
      v10 = v3[3];
      v11 = v3 + 4;
      v12 = v3[4];
      v14 = v3 + 5;
      v13 = v3[5];
      v17 = v3[6];
      v16 = v3 + 6;
      v15 = v17;
      v18 = v4 & 0xFFF;
      if ((v4 & 0xFFF) != 0)
      {
        v19 = ((((v18 + (v6 & 0xFFF) + (v8 & 0xFFF) + (v10 & 0xFFF) + (v12 & 0xFFF) + (v13 & 0xFFF) + (v15 & 0xFFFu) + 65) >> 3) & 0x1FFFFFF8) + v2 + 8);
        v20 = 2;
        do
        {
          if ((*(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v20))
          {
          }

          v19 += 3;
          ++v20;
          --v18;
        }

        while (v18);
        v21 = *(this + 3);
        v5 = v21 + 1;
        v7 = v21 + 2;
        v9 = v21 + 3;
        v11 = v21 + 4;
        v14 = v21 + 5;
        v22 = *v21;
        v16 = v21 + 6;
        v23 = v22 & 0xFFF;
        v24 = v23 + 2;
      }

      else
      {
        v23 = 0;
        v24 = 2;
      }

      v25 = *v5 & 0xFFFLL;
      if ((*v5 & 0xFFF) != 0)
      {
        v26 = v24;
        v27 = ((((((*v16 & 0xFFF) + (v24 + v25 + (*v7 & 0xFFF) + (*v9 & 0xFFF) + (*v11 & 0xFFF) + (*v14 & 0xFFF)) + 63) >> 3) + 24 * v23) & 0x3FFFFFF8) + v2);
        do
        {
          if ((*(v2 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v26))
          {
            TUI::Evaluation::Enumerator::State::~State(v27);
          }

          v27 += 6;
          ++v26;
          --v25;
        }

        while (v25);
        v28 = *(this + 3);
        v5 = v28 + 1;
        v7 = v28 + 2;
        v9 = v28 + 3;
        v11 = v28 + 4;
        v14 = v28 + 5;
        v29 = *v28;
        v16 = v28 + 6;
        v23 = v29 & 0xFFF;
        v24 = v23 + 2;
        v30 = 24 * v23;
      }

      else
      {
        v30 = 24 * v23;
      }

      v31 = *v7 & 0xFFFLL;
      if ((*v7 & 0xFFF) != 0)
      {
        v32 = *v5 & 0xFFF;
        v33 = v24 + v32;
        v34 = (v2 + 48 * v32 + (((((*v16 & 0xFFF) + (v33 + v31 + (*v9 & 0xFFF) + (*v11 & 0xFFF) + (*v14 & 0xFFFu)) + 63) >> 3) + v30) & 0x3FFFFFF8) + 24);
        do
        {
          if (((*(v2 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v33) & 1) != 0 && *v34)
          {
            sub_11420(*v34);
          }

          v34 += 4;
          ++v33;
          --v31;
        }

        while (v31);
        v35 = *(this + 3);
        v5 = v35 + 1;
        v7 = v35 + 2;
        v9 = v35 + 3;
        v11 = v35 + 4;
        v36 = *v35;
        v16 = v35 + 6;
        v14 = v35 + 5;
        v23 = v36 & 0xFFF;
        v24 = v23 + 2;
        v30 = 24 * v23;
      }

      v37 = *v9 & 0xFFFLL;
      if ((*v9 & 0xFFF) != 0)
      {
        v38 = *v5 & 0xFFF;
        v39 = *v7 & 0xFFF;
        v40 = v24 + v38 + v39;
        v41 = ((48 * v38 + 32 * v39) + v2 + (((((*v16 & 0xFFF) + (v40 + v37 + (*v11 & 0xFFF) + (*v14 & 0xFFF)) + 63) >> 3) + v30) & 0x3FFFFFF8) + 40);
        do
        {
          if (((*(v2 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v40) & 1) != 0 && *v41)
          {
            sub_11420(*v41);
          }

          v41 += 6;
          ++v40;
          --v37;
        }

        while (v37);
        v42 = *(this + 3);
        v5 = v42 + 1;
        v7 = v42 + 2;
        v9 = v42 + 3;
        v11 = v42 + 4;
        v14 = v42 + 5;
        v43 = *v42;
        v16 = v42 + 6;
        v23 = v43 & 0xFFF;
        v30 = 24 * v23;
      }

      v44 = *v11 & 0xFFFLL;
      if ((*v11 & 0xFFF) != 0)
      {
        v45 = *v7 & 0xFFF;
        v46 = (*v9 & 0xFFF) + (*v5 & 0xFFF);
        v47 = (v46 + v23 + v45 + 2);
        v48 = ((48 * v46 + 32 * v45) + v2 + (((((*v16 & 0xFFF) + (v47 + v44 + (*v14 & 0xFFF)) + 63) >> 3) + v30) & 0x3FFFFFF8) + 24);
        do
        {
          if (((*(v2 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v47) & 1) != 0 && *v48)
          {
            sub_11420(*v48);
          }

          v48 += 4;
          ++v47;
          --v44;
        }

        while (v44);
        v49 = *(this + 3);
        v5 = v49 + 1;
        v7 = v49 + 2;
        v9 = v49 + 3;
        v11 = v49 + 4;
        v14 = v49 + 5;
        v50 = *v49;
        v16 = v49 + 6;
        v23 = v50 & 0xFFF;
        v30 = 24 * v23;
      }

      v51 = *v14 & 0xFFFLL;
      if ((*v14 & 0xFFF) != 0)
      {
        v52 = *v5 & 0xFFF;
        v53 = *v9 & 0xFFF;
        v54 = (*v11 & 0xFFF) + (*v7 & 0xFFF);
        v55 = v54 + v23 + 2;
        v56 = (v55 + v52 + v53);
        v57 = ((48 * (v53 + v52) + 32 * v54) + v2 + ((v30 + (((*v16 & 0xFFFu) + v53 + v52 + v51 + v55 + 63) >> 3)) & 0x3FFFFFF8) + 24);
        do
        {
          if (((*(v2 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v56) & 1) != 0 && *v57)
          {
            sub_11420(*v57);
          }

          v57 += 4;
          ++v56;
          --v51;
        }

        while (v51);
        v58 = *(this + 3);
        v5 = v58 + 1;
        v7 = v58 + 2;
        v9 = v58 + 3;
        v11 = v58 + 4;
        v14 = v58 + 5;
        v59 = *v58;
        v16 = v58 + 6;
        v23 = v59 & 0xFFF;
        v30 = 24 * v23;
      }

      v60 = *v16;
      v61 = v60 & 0xFFF;
      if ((v60 & 0xFFF) != 0)
      {
        v62 = *v5 & 0xFFF;
        v63 = *v7 & 0xFFF;
        v64 = *v11 & 0xFFF;
        v65 = (48 * ((*v9 & 0xFFF) + v62) + 32 * (v64 + v63 + (*v14 & 0xFFF)) + ((v30 + (((*v14 & 0xFFF) + v23 + (*v9 & 0xFFFu) + v62 + v64 + v63 + v61 + 65) >> 3)) & 0x3FFFFFF8) + v2 + 32);
        v66 = v23 + v62 + v63 + (*v9 & 0xFFF) + v64 + (*v14 & 0xFFFu) + 2;
        do
        {
          if ((*(v2 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v66))
          {
            if (*v65)
            {
              sub_11420(*v65);
            }
          }

          v65 += 5;
          ++v66;
          --v61;
        }

        while (v61);
      }
    }

    free(*(this + 5));
  }

  objc_destroyWeak(this + 4);
}

{
  TUI::Evaluation::Variables::Capture::~Capture(this);

  operator delete();
}

void non-virtual thunk toTUI::Evaluation::Variables::Capture::~Capture(TUI::Evaluation::Variables::Capture *this)
{
  TUI::Evaluation::Variables::Capture::~Capture((this - 8));
}

{
  TUI::Evaluation::Variables::Capture::~Capture((this - 8));

  operator delete();
}

uint64_t TUI::Evaluation::Variables::Capture::reference(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  return *(a1 + 40) + 48 * a2 + (((((v2[6] & 0xFFF) + ((*v2 & 0xFFF) + (v2[1] & 0xFFF) + (v2[2] & 0xFFF) + (v2[3] & 0xFFF) + (v2[4] & 0xFFF) + (v2[5] & 0xFFFu) + 2) + 63) >> 3) + 24 * (*v2 & 0xFFF)) & 0x3FFFFFF8);
}

{
  v2 = *(a1 + 24);
  return *(a1 + 40) + 24 * a2 + ((((*v2 & 0xFFF) + (v2[1] & 0xFFF) + (v2[2] & 0xFFF) + (v2[3] & 0xFFF) + (v2[4] & 0xFFF) + (v2[5] & 0xFFF) + (v2[6] & 0xFFFu) + 65) >> 3) & 0x1FFFFFF8);
}

{
  v2 = *(a1 + 24);
  v3 = (v2[1] & 0xFFF) + (v2[3] & 0xFFF);
  v4 = (v2[2] & 0xFFF) + (v2[4] & 0xFFF) + (v2[5] & 0xFFF);
  return *(a1 + 40) + 40 * a2 + (48 * v3 + 32 * v4) + ((24 * (*v2 & 0xFFF) + ((v4 + v3 + (*v2 & 0xFFF) + (v2[6] & 0xFFFu) + 65) >> 3)) & 0x3FFFFFF8);
}

uint64_t non-virtual thunk toTUI::Evaluation::Variables::Capture::reference(uint64_t a1, uint64_t a2)
{
  return TUI::Evaluation::Variables::Capture::reference(a1 - 8, a2);
}

{
  return TUI::Evaluation::Variables::Capture::reference(a1 - 8, a2);
}

{
  return TUI::Evaluation::Variables::Capture::reference(a1 - 8, a2);
}

void *TUI::Evaluation::Variables::Capture::mutate()
{
  if ((atomic_load_explicit(&qword_2E6210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2E6210))
  {
    TUI::Evaluation::Enumerator::State::State(&unk_2E61E0);
    __cxa_guard_release(&qword_2E6210);
  }

  return &unk_2E61E0;
}

uint64_t TUI::Evaluation::Variables::Capture::copy(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  return *(*(a1 + 40) + 32 * a2 + 48 * (v2[1] & 0xFFF) + (((((v2[6] & 0xFFF) + ((v2[1] & 0xFFF) + (*v2 & 0xFFF) + (v2[2] & 0xFFF) + (v2[3] & 0xFFF) + (v2[4] & 0xFFF) + (v2[5] & 0xFFFu) + 2) + 63) >> 3) + 24 * (*v2 & 0xFFF)) & 0x3FFFFFF8));
}

{
  v2 = *(a1 + 24);
  v3 = (v2[1] & 0xFFF) + (v2[3] & 0xFFF);
  return *(*(a1 + 40) + 32 * a2 + 48 * v3 + 32 * (v2[2] & 0xFFFu) + (((((v2[6] & 0xFFF) + (v3 + (v2[2] & 0xFFF) + (*v2 & 0xFFF) + (v2[4] & 0xFFF) + (v2[5] & 0xFFFu) + 2) + 63) >> 3) + 24 * (*v2 & 0xFFF)) & 0x3FFFFFF8));
}

{
  v2 = *(a1 + 24);
  v3 = (v2[1] & 0xFFF) + (v2[3] & 0xFFF);
  v4 = (v2[2] & 0xFFF) + (v2[4] & 0xFFF);
  return *(*(a1 + 40) + 32 * a2 + (48 * v3 + 32 * v4) + ((24 * (*v2 & 0xFFF) + (((*v2 & 0xFFF) + (v2[5] & 0xFFF) + (v2[6] & 0xFFFu) + v4 + v3 + 65) >> 3)) & 0x3FFFFFF8));
}

uint64_t non-virtual thunk toTUI::Evaluation::Variables::Capture::copy(uint64_t a1, uint64_t a2)
{
  return TUI::Evaluation::Variables::Capture::copy(a1 - 8, a2);
}

{
  return TUI::Evaluation::Variables::Capture::copy(a1 - 8, a2);
}

{
  return TUI::Evaluation::Variables::Capture::copy(a1 - 8, a2);
}

__n128 TUI::Evaluation::Variables::Capture::copy@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *(a1 + 24);
  v4 = (*(a1 + 40) + 48 * a2 + 48 * (v3[1] & 0xFFF) + 32 * (v3[2] & 0xFFFu) + (((((v3[6] & 0xFFF) + ((v3[2] & 0xFFF) + (v3[1] & 0xFFF) + (*v3 & 0xFFF) + (v3[3] & 0xFFF) + (v3[4] & 0xFFF) + (v3[5] & 0xFFFu) + 2) + 63) >> 3) + 24 * (*v3 & 0xFFF)) & 0x3FFFFFF8));
  result = *v4;
  *a3 = *v4;
  a3[1].n128_u64[0] = v4[1].n128_u64[0];
  return result;
}

uint64_t TUI::Evaluation::Variables::Capture::closureAndCapture@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 24);
  v4 = *(result + 40) + 32 * a2 + 48 * (v3[1] & 0xFFF) + (((((v3[6] & 0xFFF) + ((v3[1] & 0xFFF) + (*v3 & 0xFFF) + (v3[2] & 0xFFF) + (v3[3] & 0xFFF) + (v3[4] & 0xFFF) + (v3[5] & 0xFFFu) + 2) + 63) >> 3) + 24 * (*v3 & 0xFFF)) & 0x3FFFFFF8);
  *a3 = *(v4 + 8);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  *(a3 + 8) = v6;
  *(a3 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *(result + 24);
  v4 = *(result + 40) + 48 * a2 + 48 * (v3[1] & 0xFFF) + 32 * (v3[2] & 0xFFFu) + (((((v3[6] & 0xFFF) + ((v3[2] & 0xFFF) + (v3[1] & 0xFFF) + (*v3 & 0xFFF) + (v3[3] & 0xFFF) + (v3[4] & 0xFFF) + (v3[5] & 0xFFFu) + 2) + 63) >> 3) + 24 * (*v3 & 0xFFF)) & 0x3FFFFFF8);
  *a3 = *(v4 + 24);
  v6 = *(v4 + 32);
  v5 = *(v4 + 40);
  *(a3 + 8) = v6;
  *(a3 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *(result + 24);
  v4 = (v3[1] & 0xFFF) + (v3[3] & 0xFFF);
  v5 = *(result + 40) + 32 * a2 + 48 * v4 + 32 * (v3[2] & 0xFFFu) + (((((v3[6] & 0xFFF) + (v4 + (v3[2] & 0xFFF) + (*v3 & 0xFFF) + (v3[4] & 0xFFF) + (v3[5] & 0xFFFu) + 2) + 63) >> 3) + 24 * (*v3 & 0xFFF)) & 0x3FFFFFF8);
  *a3 = *(v5 + 8);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  *(a3 + 8) = v7;
  *(a3 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *(result + 24);
  v4 = (v3[1] & 0xFFF) + (v3[3] & 0xFFF);
  v5 = (v3[2] & 0xFFF) + (v3[4] & 0xFFF);
  v6 = *(result + 40) + 32 * a2 + (48 * v4 + 32 * v5) + ((24 * (*v3 & 0xFFF) + (((*v3 & 0xFFF) + (v3[5] & 0xFFF) + (v3[6] & 0xFFFu) + v5 + v4 + 65) >> 3)) & 0x3FFF8);
  *a3 = *(v6 + 8);
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  *(a3 + 8) = v8;
  *(a3 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *(result + 24);
  v4 = (v3[1] & 0xFFF) + (v3[3] & 0xFFF);
  v5 = (v3[2] & 0xFFF) + (v3[4] & 0xFFF) + (v3[5] & 0xFFF);
  v6 = *(result + 40) + 40 * a2 + (48 * v4 + 32 * v5) + ((24 * (*v3 & 0xFFF) + ((v5 + v4 + (*v3 & 0xFFF) + (v3[6] & 0xFFFu) + 65) >> 3)) & 0x3FFFFFF8);
  *a3 = *(v6 + 16);
  v8 = *(v6 + 24);
  v7 = *(v6 + 32);
  *(a3 + 8) = v8;
  *(a3 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t non-virtual thunk toTUI::Evaluation::Variables::Capture::closureAndCapture@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return TUI::Evaluation::Variables::Capture::closureAndCapture(a1 - 8, a2, a3);
}

{
  return TUI::Evaluation::Variables::Capture::closureAndCapture(a1 - 8, a2, a3);
}

{
  return TUI::Evaluation::Variables::Capture::closureAndCapture(a1 - 8, a2, a3);
}

{
  return TUI::Evaluation::Variables::Capture::closureAndCapture(a1 - 8, a2, a3);
}

{
  return TUI::Evaluation::Variables::Capture::closureAndCapture(a1 - 8, a2, a3);
}

uint64_t TUI::Evaluation::Variables::Capture::lookup(uint64_t a1, int a2)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  if (!*(a1 + 24))
  {
    return 0;
  }

  v4 = [*(a1 + 16) packageBuffer];
  if ((~a2 & 0xFFFF0000) != 0)
  {
    v5 = a2 == 0xFFFF ? TUINameNil : a2;
  }

  else
  {
    v5 = TUINameNil;
  }

  v7 = *(*(a1 + 24) + 4);
  v10[0] = v7 >> 12;
  v10[1] = v7 & 0xFFF;
  Name = TUI::Package::Buffer::findName(v4, v5, v10);
  if (Name == -1)
  {
    return 0;
  }

  v9 = (**(a1 + 24) & 0xFFF) + Name + 2;
  if (((1 << v9) & *(*(a1 + 40) + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0)
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a1 + 40))
  {
    return 0;
  }

  if (!*(a1 + 24))
  {
    return 0;
  }

  v4 = [*(a1 + 16) packageBuffer];
  if ((~a2 & 0xFFFF0000) != 0)
  {
    v5 = a2 == 0xFFFF ? TUINameNil : a2;
  }

  else
  {
    v5 = TUINameNil;
  }

  v7 = **(a1 + 24);
  v9[0] = v7 >> 12;
  v9[1] = v7 & 0xFFF;
  Name = TUI::Package::Buffer::findName(v4, v5, v9);
  if (Name == -1)
  {
    return 0;
  }

  if ((*(*(a1 + 40) + (((Name + 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << (Name + 2))) != 0)
  {
    return a1 + 8;
  }

  return 0;
}

{
  if (!*(a1 + 40))
  {
    return 0;
  }

  if (!*(a1 + 24))
  {
    return 0;
  }

  v4 = [*(a1 + 16) packageBuffer];
  if ((~a2 & 0xFFFF0000) != 0)
  {
    v5 = a2 == 0xFFFF ? TUINameNil : a2;
  }

  else
  {
    v5 = TUINameNil;
  }

  v7 = *(*(a1 + 24) + 8);
  v9[0] = v7 >> 12;
  v9[1] = v7 & 0xFFF;
  Name = TUI::Package::Buffer::findName(v4, v5, v9);
  if (Name == -1)
  {
    return 0;
  }

  if (((1 << (Name + **(a1 + 24) + *(*(a1 + 24) + 4) + 2)) & *(*(a1 + 40) + (((Name + ((**(a1 + 24) & 0xFFF) + (*(*(a1 + 24) + 4) & 0xFFFu) + 2)) >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0)
  {
    return a1 + 8;
  }

  return 0;
}

{
  if (!*(a1 + 40))
  {
    return 0;
  }

  if (!*(a1 + 24))
  {
    return 0;
  }

  v4 = [*(a1 + 16) packageBuffer];
  if ((~a2 & 0xFFFF0000) != 0)
  {
    v5 = a2 == 0xFFFF ? TUINameNil : a2;
  }

  else
  {
    v5 = TUINameNil;
  }

  v7 = *(*(a1 + 24) + 12);
  v9[0] = v7 >> 12;
  v9[1] = v7 & 0xFFF;
  Name = TUI::Package::Buffer::findName(v4, v5, v9);
  if (Name == -1)
  {
    return 0;
  }

  if (((1 << (Name + **(a1 + 24) + *(*(a1 + 24) + 4) + *(*(a1 + 24) + 8) + 2)) & *(*(a1 + 40) + (((Name + ((**(a1 + 24) & 0xFFF) + (*(*(a1 + 24) + 4) & 0xFFF) + (*(*(a1 + 24) + 8) & 0xFFFu) + 2)) >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0)
  {
    return a1 + 8;
  }

  return 0;
}

{
  if (!*(a1 + 40))
  {
    return 0;
  }

  if (!*(a1 + 24))
  {
    return 0;
  }

  v4 = [*(a1 + 16) packageBuffer];
  if ((~a2 & 0xFFFF0000) != 0)
  {
    v5 = a2 == 0xFFFF ? TUINameNil : a2;
  }

  else
  {
    v5 = TUINameNil;
  }

  v7 = *(*(a1 + 24) + 16);
  v9[0] = v7 >> 12;
  v9[1] = v7 & 0xFFF;
  Name = TUI::Package::Buffer::findName(v4, v5, v9);
  if (Name == -1)
  {
    return 0;
  }

  if (((1 << (Name + **(a1 + 24) + *(*(a1 + 24) + 4) + *(*(a1 + 24) + 8) + *(*(a1 + 24) + 12) + 2)) & *(*(a1 + 40) + (((Name + ((**(a1 + 24) & 0xFFF) + (*(*(a1 + 24) + 4) & 0xFFF) + (*(*(a1 + 24) + 8) & 0xFFF) + (*(*(a1 + 24) + 12) & 0xFFFu) + 2)) >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0)
  {
    return a1 + 8;
  }

  return 0;
}

{
  if (!*(a1 + 40))
  {
    return 0;
  }

  if (!*(a1 + 24))
  {
    return 0;
  }

  v4 = [*(a1 + 16) packageBuffer];
  if ((~a2 & 0xFFFF0000) != 0)
  {
    v5 = a2 == 0xFFFF ? TUINameNil : a2;
  }

  else
  {
    v5 = TUINameNil;
  }

  v7 = *(*(a1 + 24) + 20);
  v11[0] = v7 >> 12;
  v11[1] = v7 & 0xFFF;
  Name = TUI::Package::Buffer::findName(v4, v5, v11);
  if (Name == -1)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = Name + (*v9 & 0xFFF) + (v9[1] & 0xFFF) + (v9[2] & 0xFFF) + (v9[3] & 0xFFF) + (v9[4] & 0xFFFu) + 2;
  if (((1 << v10) & *(*(a1 + 40) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0)
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a1 + 40))
  {
    return 0;
  }

  if (!*(a1 + 24))
  {
    return 0;
  }

  v4 = [*(a1 + 16) packageBuffer];
  if ((~a2 & 0xFFFF0000) != 0)
  {
    v5 = a2 == 0xFFFF ? TUINameNil : a2;
  }

  else
  {
    v5 = TUINameNil;
  }

  v7 = *(*(a1 + 24) + 24);
  v11[0] = v7 >> 12;
  v11[1] = v7 & 0xFFF;
  Name = TUI::Package::Buffer::findName(v4, v5, v11);
  if (Name == -1)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = Name + (*v9 & 0xFFF) + (v9[1] & 0xFFF) + (v9[2] & 0xFFF) + (v9[3] & 0xFFF) + (v9[4] & 0xFFF) + (v9[5] & 0xFFFu) + 2;
  if (((1 << v10) & *(*(a1 + 40) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0)
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL TUI::Evaluation::Variables::Capture::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a2 + 32));
  v2 = WeakRetained == v7;

  v8 = *(a1 + 24);
  if (!v8 || !*(a2 + 24))
  {
    return v2;
  }

  if (WeakRetained != v7)
  {
    return 0;
  }

  v9 = *(a2 + 40);
  v10 = *v8 & 0xFFF;
  v11 = v8 + 1;
  v12 = v8 + 2;
  v13 = v8 + 3;
  v14 = v8 + 4;
  v15 = v8 + 5;
  v16 = v8 + 6;
  v17 = (((*v8 & 0xFFF) + (v8[1] & 0xFFF) + (v8[2] & 0xFFF) + (v8[3] & 0xFFF) + (v8[4] & 0xFFF) + (v8[5] & 0xFFF) + (v8[6] & 0xFFFu) + 65) >> 3) & 0x1FFFFFF8;
  v79 = v9;
  v80 = *(a1 + 40);
  v18 = *(a1 + 24);
  if (memcmp(v80, v9, v17))
  {
    return 0;
  }

  if (v10)
  {
    v19 = 0;
    v20 = &v80[v17];
    v21 = v17 + v79;
    v22 = 1;
    v23 = v10;
    do
    {
      if (((*&v80[((v22 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v22 + 1)) & 1) != 0 && !TUI::Evaluation::ResolvedValue::operator==(v20, v21))
      {
        break;
      }

      v19 = v22 >= v10;
      v21 += 24;
      v20 += 24;
      ++v22;
      --v23;
    }

    while (v23);
    if (!v19)
    {
      return 0;
    }

    v24 = *(a1 + 24);
    v16 = v24 + 6;
    v25 = *v24 & 0xFFF;
    v26 = v25 + 2;
    v11 = v24 + 1;
    v12 = v24 + 2;
    v13 = v24 + 3;
    v14 = v24 + 4;
    v15 = v24 + 5;
    v27 = 24 * v25;
  }

  else
  {
    v27 = 0;
    v26 = 2;
    v24 = v18;
  }

  v28 = v24[1];
  v29 = v28 & 0xFFF;
  if ((v28 & 0xFFF) == 0)
  {
    goto LABEL_32;
  }

  v30 = 0;
  v31 = 0;
  v32 = v26;
  v33 = ((((v24[6] & 0xFFF) + (v26 + v29 + (v24[2] & 0xFFF) + (v24[3] & 0xFFF) + (v24[4] & 0xFFF) + (v24[5] & 0xFFF)) + 63) >> 3) + v27) & 0x3FFFFFF8;
  v34 = v80;
  v35 = &v80[v33];
  v36 = v33 + v79;
  v37 = 48 * v29;
  v38 = 1;
  v78 = v28 & 0xFFF;
  do
  {
    if ((*&v34[((v32 + v38 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v32 + v38 - 1)))
    {
      if (*&v35[v30 + 2] != *(v36 + v30 + 2))
      {
        break;
      }

      if (*&v35[v30] != *(v36 + v30))
      {
        break;
      }

      if (*&v35[v30 + 6] != *(v36 + v30 + 6))
      {
        break;
      }

      if (*&v35[v30 + 4] != *(v36 + v30 + 4))
      {
        break;
      }

      if (((*(v36 + v30 + 8) ^ v35[v30 + 8]) & 3) != 0)
      {
        break;
      }

      if (*&v35[v30 + 16] != *(v36 + v30 + 16))
      {
        break;
      }

      v39 = *&v35[v30 + 24];
      if (v39 != *(v36 + v30 + 24))
      {
        v40 = [v39 isEqual:?];
        v29 = v78;
        if (!v40)
        {
          break;
        }
      }

      v41 = *&v35[v30 + 32];
      v34 = v80;
      if (v41 != *(v36 + v30 + 32))
      {
        v42 = [v41 isEqual:?];
        v29 = v78;
        if (!v42)
        {
          break;
        }
      }
    }

    v31 = v38 >= v29;
    v30 += 48;
    ++v38;
  }

  while (v37 != v30);
  if (!v31)
  {
    return 0;
  }

  v24 = *(a1 + 24);
  v16 = v24 + 6;
  v43 = *v24 & 0xFFF;
  v26 = v43 + 2;
  v11 = v24 + 1;
  v12 = v24 + 2;
  v13 = v24 + 3;
  v14 = v24 + 4;
  v15 = v24 + 5;
  v27 = 24 * v43;
LABEL_32:
  v44 = v26 + (*v11 & 0xFFF);
  v45 = *v13 & 0xFFF;
  v46 = *v12 & 0xFFF;
  v47 = v44 + (*v12 & 0xFFF);
  v48 = v47 + (*v13 & 0xFFF);
  v49 = ((((*v16 & 0xFFF) + (v48 + (*v14 & 0xFFF) + (*v15 & 0xFFF)) + 63) >> 3) + v27) & 0x3FFFFFF8;
  if ((*v12 & 0xFFF) != 0)
  {
    v50 = 0;
    v51 = 0;
    v52 = v49 + 48 * (*v11 & 0xFFF);
    v53 = &v80[v52];
    v54 = v52 + v79 + 8;
    v55 = v53 + 8;
    do
    {
      if ((*&v80[((v44 + v51) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v44 + v51)))
      {
        if (*(v55 - 2) != *(v54 - 8) || *(v55 - 1) != *(v54 - 4))
        {
          break;
        }

        if (*v55 != *v54 || *(v55 + 1) != *(v54 + 8))
        {
          break;
        }
      }

      v50 = ++v51 >= v46;
      v54 += 32;
      v55 += 32;
    }

    while (v46 != v51);
    if (!v50)
    {
      return 0;
    }
  }

  if ((*v13 & 0xFFF) != 0)
  {
    v58 = 0;
    v59 = 0;
    v60 = v49 + 48 * (*v11 & 0xFFF) + 32 * (*v12 & 0xFFFu);
    v61 = &v80[v60];
    v62 = v60 + v79;
    v63 = 1;
    do
    {
      if ((*&v80[((v47 + v63 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v47 + v63 - 1)))
      {
        if (*&v61[v58] != *(v62 + v58))
        {
          break;
        }

        v64 = &v61[v58];
        v65 = v62 + v58;
        if (*&v61[v58 + 4] != *(v62 + v58 + 4) || *&v61[v58 + 8] != *(v62 + v58 + 8))
        {
          break;
        }

        if (*(v64 + 3) != *(v65 + 12))
        {
          break;
        }

        if (*(v64 + 4) != *(v65 + 16))
        {
          break;
        }

        v67 = &v61[v58];
        v68 = v62 + v58;
        if (*&v61[v58 + 20] != *(v62 + v58 + 20) || *(v67 + 6) != *(v68 + 24) || *(v67 + 4) != *(v68 + 32))
        {
          break;
        }
      }

      v59 = v63 >= v45;
      v58 += 48;
      ++v63;
    }

    while (48 * v45 != v58);
    if (!v59)
    {
      return 0;
    }
  }

  v69 = sub_54E30(v24, 0);
  v70 = *(a1 + 24);
  if (!sub_56B74(v80, v48, v80, v79, v69, v70[4] >> 12, v70[4] & 0xFFFLL))
  {
    return 0;
  }

  v71 = sub_54EA8(v70);
  v72 = sub_54EE0(*(a1 + 24), 0);
  v73 = *(a1 + 24);
  if (!sub_56B74(v80, v71, v80, v79, v72, v73[5] >> 12, v73[5] & 0xFFFLL))
  {
    return 0;
  }

  v74 = sub_54EA8(v73);
  v75 = v73[5] & 0xFFFLL;
  v76 = sub_54F58(*(a1 + 24), 0);
  v77 = *(*(a1 + 24) + 24);

  return sub_56C04(v80, v74 + v75, v80, v79, v76, v77 >> 12, v77 & 0xFFF);
}

BOOL sub_56B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a7)
  {
    v7 = 0;
    v8 = 0;
    v9 = a5 + a4 + 8;
    v10 = a5 + a3 + 8;
    do
    {
      if ((*(a1 + (((a2 + v8) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (a2 + v8)))
      {
        if (*(v10 - 8) != *(v9 - 8) || *(v10 - 4) != *(v9 - 4))
        {
          break;
        }

        if (*v10 != *v9 || *(v10 + 8) != *(v9 + 8))
        {
          break;
        }
      }

      v7 = ++v8 >= a7;
      v9 += 32;
      v10 += 32;
    }

    while (a7 != v8);
  }

  else
  {
    return 1;
  }

  return v7;
}

BOOL sub_56C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a7)
  {
    v10 = 0;
    v11 = 0;
    v12 = a5 + a4 + 16;
    v13 = a5 + a3 + 16;
    do
    {
      if ((*(a1 + (((a2 + v11) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (a2 + v11)))
      {
        if (*(v13 - 8) != *(v12 - 8))
        {
          break;
        }

        v14 = *(v13 - 16);
        if (v14 != *(v12 - 16) && ![v14 isEqual:?])
        {
          break;
        }

        if (*v13 != *v12 || *(v13 + 8) != *(v12 + 8))
        {
          break;
        }
      }

      v10 = ++v11 >= a7;
      v12 += 40;
      v13 += 40;
    }

    while (a7 != v11);
  }

  else
  {
    return 1;
  }

  return v10;
}

void TUI::Evaluation::Variables::Capture::enumerate(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = [*(a1 + 16) packageBuffer];
  v6 = *(a1 + 24);
  v8 = *v6;
  v7 = v6[1];
  v9 = v7 & 0xFFF;
  v10 = v6[2];
  v11 = v6[3];
  v13 = v6[4];
  v12 = v6[5];
  v19 = v6[6];
  v20 = v3;
  if ((v7 & 0xFFF) != 0)
  {
    v14 = v8 & 0xFFF;
    v15 = (v8 & 0xFFF) + 2;
    v16 = v7 >> 12;
    v17 = (((((v19 & 0xFFF) + (v15 + v9 + (v10 & 0xFFF) + (v11 & 0xFFF) + (v13 & 0xFFF) + (v12 & 0xFFFu)) + 63) >> 3) + 24 * v14) & 0x3FFFFFF8) + v4;
    v18 = 4 * v16;
    do
    {
      if ((*(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15))
      {
        v3 = v3 & 0xFFFFFFFF00000000 | *(v18 + v5[42]) | (*(v18 + v5[42] + 2) << 16);
        v20[2](v20, v3, v17);
      }

      v17 += 48;
      v18 += 4;
      ++v15;
      --v9;
    }

    while (v9);
  }
}

void sub_56ECC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_199C88(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_56EE8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_56F20(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t sub_56F50(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_56F90@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a3;
  v10 = *a1;
  *a5 = v10;
  v12 = *(a1 + 1);
  v11 = *(a1 + 2);
  *(a5 + 8) = v12;
  *(a5 + 16) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12 || (v13 = *(v12 + 40)) != 0 && (*v13 & 1) == 0)
  {
    v19 = v9;
    v14 = [v9 packageBuffer];
    v15 = TUIClosureNotNil(v10);
    if (v14[47] > v10 && v15)
    {
      v17 = v14[46] + 28 * v10;
      if (v17)
      {
        TUI::Evaluation::Variables::Capture::create(&v20, v17, 0, 0, v12, a2, v19, a4);
        *(a5 + 8) = v20;
        if (v11)
        {
          sub_11420(v11);
        }
      }
    }
  }

  return _objc_release_x5();
}

void sub_5709C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
    sub_11420(v10);
  }

  _Unwind_Resume(a1);
}

__n128 *sub_57480(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      sub_4050();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      sub_21464(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    sub_596D8(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1], __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_5761C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_57B10(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 computedTransformedSize];
  *(*(*(a1 + 32) + 8) + 24) = fmax(*(*(*(a1 + 32) + 8) + 24), v3);
  *(*(*(a1 + 40) + 8) + 24) = v4 + *(*(*(a1 + 40) + 8) + 24);
}

void sub_57F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_57F44(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_4050();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_21464(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_58150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_582C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_596D8(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      sub_21464(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

void sub_59FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_59FF0(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (v11 && a2)
    {
      [WeakRetained setDictionary:?];
      v7 = *(a1 + 32);
      v8 = [v6 data];
      (*(v7 + 16))(v7, 1, v8);
    }

    else
    {
      v9 = *(a1 + 32);
      v10 = [WeakRetained data];
      (*(v9 + 16))(v9, a2, v10);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

id TUIStatsPhaseToString(uint64_t a1)
{
  if (qword_2E6220 != -1)
  {
    sub_199D24();
  }

  v2 = qword_2E6218;

  return [v2 objectAtIndexedSubscript:a1];
}

void sub_5A8C0(id a1)
{
  v1 = qword_2E6218;
  qword_2E6218 = &off_273268;
}

id TUIStatsEventToString(uint64_t a1)
{
  if (qword_2E6230 != -1)
  {
    sub_199D38();
  }

  v2 = qword_2E6228;

  return [v2 objectAtIndexedSubscript:a1];
}

void sub_5A92C(id a1)
{
  v1 = qword_2E6228;
  qword_2E6228 = &off_273280;
}

__CFString *TUIStatsReasonToString(char a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if ((a1 & 8) != 0)
  {
    [v2 addObject:@"load-entry"];
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"update-entry"];
  if ((a1 & 2) == 0)
  {
LABEL_4:
    if ((a1 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  [v3 addObject:@"environment"];
  if (a1)
  {
LABEL_5:
    [v3 addObject:@"dynamic"];
  }

LABEL_6:
  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"none";
  }

  return v4;
}

void sub_5AA20(void *a1, void *a2, __CFString *a3)
{
  v16 = a1;
  v5 = a2;
  v6 = @"\n";
  if (a3)
  {
    v6 = a3;
  }

  v7 = v6;
  for (i = 0; i != 5; ++i)
  {
    [v5 elapsedTimeForPhase:i];
    if (v9 > 0.0)
    {
      v10 = v16;
      v11 = v5;
      v12 = v7;
      v13 = TUIStatsPhaseToString(i);
      [v11 elapsedTimeForPhase:i];
      v15 = v14;

      [v10 appendFormat:@"%@: %fms%@", v13, v15 * 1000.0, v12];
    }
  }
}

void sub_5AB50(void *a1, void *a2, __CFString *a3)
{
  v10 = a1;
  v5 = a2;
  v6 = @"\n";
  if (a3)
  {
    v6 = a3;
  }

  v7 = v6;
  for (i = 0; i != 29; ++i)
  {
    if ([v5 countForEvent:i])
    {
      v9 = TUIStatsEventToString(i);
      [v10 appendFormat:@"%@: %lu %@", v9, objc_msgSend(v5, "countForEvent:", i), v7];
    }
  }
}

void sub_5B4FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[TUIStatsFeedEntry alloc] initWithCollector:v5];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

id sub_5B86C(uint64_t a1, void *a2)
{
  v3 = 0;
  v4 = *(a1 + 32) + 48;
  do
  {
    result = [a2 countForEvent:v3];
    *(v4 + 8 * v3++) += result;
  }

  while (v3 != 29);
  return result;
}

unint64_t sub_5B8C4(uint64_t a1, void *a2)
{
  result = [a2 reason];
  *(*(a1 + 32) + 280) |= result;
  return result;
}

void sub_5C668(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = *(*(a1 + 32) + 80);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [v5 UUID];
  }

  v9 = v8;
  v10 = *(*(a1 + 32) + 88);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  }

  v12 = v11;
  v13 = *(a1 + 48);
  if (!v13 || [v13 matchesUUID:v9 uid:v12])
  {
    [v6 offset];
    memset(&v22, 0, sizeof(v22));
    CGAffineTransformMakeTranslation(&t2, v14, v15);
    v16 = *(a1 + 88);
    *&v20.a = *(a1 + 72);
    *&v20.c = v16;
    *&v20.tx = *(a1 + 104);
    CGAffineTransformConcat(&v22, &v20, &t2);
    v17 = [*(a1 + 48) queryMatchedWithUUID:v9 uid:v12];
    [*(a1 + 56) setSectionUUID:v9];
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    t2 = v22;
    [v6 appendReferencesToCollector:v18 transform:&t2 query:v17 liveTransformResolver:v19];
  }
}

void sub_5D7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_5D810(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_5D888;
  v4[3] = &unk_25F5E8;
  v4[4] = *(a1 + 32);
  return [a3 enumerateObjectsUsingBlock:v4];
}

void sub_5D888(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  [a2 frame];
  v8.origin.x = v4;
  v8.origin.y = v5;
  v8.size.width = v6;
  v8.size.height = v7;
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(v3[1], v8);
}

void sub_5DD40(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1[4] + 24);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) appendToBuilder:a1[5] context:{a1[6], v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_5DFCC(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1[4] + 16);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) appendToBuilder:a1[5] context:{a1[6], v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_5E15C(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v2 = [v1 mutableCopy];

  v6[0] = @"color";
  v6[1] = @"text-alignment";
  v6[2] = @"max-lines";
  v6[3] = @"min-lines";
  v6[4] = @"hide-ellipses";
  v6[5] = @"font";
  v6[6] = @"html-tags";
  v6[7] = @"role";
  v6[8] = @"line-balancing";
  v6[9] = @"should-hyphenate";
  v6[10] = @"allow-hanging-punctuation";
  v6[11] = @"allow-shrink-to-fit";
  v6[12] = @"blend-mode";
  v3 = [NSArray arrayWithObjects:v6 count:13];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E6238;
  qword_2E6238 = v4;
}

unint64_t sub_5E5B8(void *a1, unint64_t a2)
{
  v3 = a1;
  if ([v3 length])
  {
    v4 = [v3 componentsSeparatedByString:{@", "}];
    v5 = a2 & 0xFFFFFFFFFFFFFFFCLL | [v4 containsObject:@"parse"];
    if ([v4 containsObject:@"interpret"])
    {
      a2 |= 3uLL;
    }

    else
    {
      a2 = v5;
    }
  }

  return a2;
}

id sub_5F898(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6.receiver = *(a1 + 64);
  v6.super_class = &OBJC_METACLASS___TUIElementTextAInstantiator;
  return objc_msgSendSuper2(&v6, "instantiateChildrenOfNode:object:containingBuilder:context:block:", *(a1 + 72), v2, v3, v4, v1);
}

id sub_5FDA4(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6.receiver = *(a1 + 64);
  v6.super_class = &OBJC_METACLASS___TUIElementTextDropCapInstantiator;
  return objc_msgSendSuper2(&v6, "instantiateChildrenOfNode:object:containingBuilder:context:block:", *(a1 + 72), v2, v3, v4, v1);
}

id sub_60324(const xmlNode *a1, unint64_t a2, uint64_t a3)
{
  if (xmlNodeIsText(a1))
  {
    v6 = [TUIStringTextFragment alloc];
    v7 = [[NSString alloc] initWithBytes:a1->content length:xmlStrlen(a1->content) encoding:4];
    v8 = [(TUIStringTextFragment *)v6 initWithString:v7];

    v32 = v8;
    v9 = &v32;
LABEL_3:
    v10 = [NSArray arrayWithObjects:v9 count:1];
LABEL_4:
    v11 = v10;
LABEL_5:

    goto LABEL_24;
  }

  if (!xmlStrcasecmp(a1->name, "br"))
  {
    if (a3)
    {
      v8 = [[TUIStringTextFragment alloc] initWithString:@"\n"];
      v31 = v8;
      v9 = &v31;
      goto LABEL_3;
    }

    goto LABEL_23;
  }

  if (!xmlStrcasecmp(a1->name, "str") || !xmlStrcasecmp(a1->name, "attr"))
  {
LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  if (a2 <= 0x32)
  {
    v8 = objc_opt_new();
    for (i = a1->children; i; i = i->next)
    {
      v13 = sub_60324(i, a2 + 1, a3);
      [(TUIStringTextFragment *)v8 addObjectsFromArray:v13];
    }

    if ((a3 & 1) == 0)
    {
      goto LABEL_20;
    }

    if (xmlStrcasecmp(a1->name, "span"))
    {
      if (xmlStrcasecmp(a1->name, "em") && xmlStrcasecmp(a1->name, "i"))
      {
        if (xmlStrcasecmp(a1->name, "b") && xmlStrcasecmp(a1->name, "strong"))
        {
          if (xmlStrcasecmp(a1->name, "s"))
          {
            if (xmlStrcasecmp(a1->name, "a"))
            {
LABEL_20:
              v10 = [(TUIStringTextFragment *)v8 copy];
              goto LABEL_4;
            }

            Prop = xmlGetProp(a1, "href");
            if (Prop && (v23 = [[NSString alloc] initWithBytes:Prop length:xmlStrlen(Prop) encoding:4]) != 0)
            {
              v16 = v23;
              v24 = [NSURL URLWithString:v23];
              free(Prop);
              if (v24)
              {
                v25 = [[TUIHyperlinkTextFragment alloc] initWithURL:v24 fragments:v8];
                v26 = v25;
                v11 = [NSArray arrayWithObjects:&v26 count:1];

                goto LABEL_33;
              }
            }

            else
            {
              free(Prop);
              v16 = 0;
            }

            v20 = [(TUIStringTextFragment *)v8 copy];
LABEL_32:
            v11 = v20;
LABEL_33:

            goto LABEL_5;
          }

          v21 = [TUIStyledTextFragment alloc];
          v16 = [(TUIStyledTextFragment *)v21 initWithStyle:8 attributes:TUIAttributesNil fragments:v8];
          v27 = v16;
          v17 = &v27;
        }

        else
        {
          v19 = [TUIStyledTextFragment alloc];
          v16 = [(TUIStyledTextFragment *)v19 initWithStyle:1 attributes:TUIAttributesNil fragments:v8];
          v28 = v16;
          v17 = &v28;
        }
      }

      else
      {
        v15 = [TUIStyledTextFragment alloc];
        v16 = [(TUIStyledTextFragment *)v15 initWithStyle:2 attributes:TUIAttributesNil fragments:v8];
        v29 = v16;
        v17 = &v29;
      }
    }

    else
    {
      v18 = [TUIStyledTextFragment alloc];
      v16 = [(TUIStyledTextFragment *)v18 initWithStyle:0 attributes:TUIAttributesNil fragments:v8];
      v30 = v16;
      v17 = &v30;
    }

    v20 = [NSArray arrayWithObjects:v17 count:1];
    goto LABEL_32;
  }

  v11 = &__NSArray0__struct;
LABEL_24:

  return v11;
}

void sub_6076C(id a1)
{
  v1 = [NSCharacterSet characterSetWithCharactersInString:@"<>&"];
  v2 = qword_2E6248;
  qword_2E6248 = v1;
}

void sub_61718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_639A8(&a43);

  _Unwind_Resume(a1);
}

uint64_t *sub_61808(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        v8 = *v4;
        *v4 = 0;
        v9 = *v7;
        *v7 = v8;

        v10 = *(v4 + 1);
        *(v7 + 3) = *(v4 + 3);
        *(v7 + 1) = v10;
        v4 += 5;
        v7 += 5;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v11 = *(v6 - 5);
      v6 -= 5;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_618AC(uint64_t a1, id a2)
{
  v2 = *(a1 + 32);
  if (*(a1 + 24) != v2)
  {
    v2 = *(a1 + 24);
    while (1)
    {
      v5 = *(v2 + 32);
      v6 = [v5 role];

      if (v6 == a2)
      {
        break;
      }

      v2 += 96;
      if (v2 == *(a1 + 32))
      {
        return *(a1 + 32);
      }
    }
  }

  return v2;
}

double sub_61938(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  v4 = a2 + v3 - 1;
  v5 = *(a1 + 112);
  if (v5)
  {
    v6 = v4 / v5 * v5;
    v4 %= v5;
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    v9 = v8 + v7;
    if (v8 == 0.0)
    {
      v12 = v9 * v6;
      v11 = *(a1 + 104);
      if (v11 > 0.0)
      {
        v12 = floor(v12 * v11) / v11;
      }
    }

    else
    {
      v10 = -(v8 - v9 * (v6 + 1));
      v11 = *(a1 + 104);
      if (v11 > 0.0)
      {
        v10 = floor(v10 * v11) / v11;
      }

      v12 = v10 - v7;
    }
  }

  else
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    v11 = *(a1 + 104);
    v9 = v8 + v7;
    v12 = 0.0;
  }

  if (v8 == 0.0)
  {
    v17 = -(v8 - v9 * (v4 + 1));
    if (v11 > 0.0)
    {
      v17 = floor(v11 * v17) / v11;
    }

    if (v5)
    {
      v18 = a2 / v5 * v5;
      v19 = (a2 - v18);
      v20 = v9 * v18;
      if (v11 <= 0.0)
      {
        v21 = v9 * v19;
        goto LABEL_31;
      }

      v21 = v9 * v19;
      v20 = floor(v11 * v20) / v11;
    }

    else
    {
      v21 = v9 * a2;
      v20 = 0.0;
      if (v11 <= 0.0)
      {
LABEL_31:
        v24 = v12 + v17;
        v25 = v20 + v21;
        return v24 - v25;
      }
    }

    v21 = floor(v11 * v21) / v11;
    goto LABEL_31;
  }

  v13 = v8 * -2.0 + v9 * (v4 + 2);
  if (v11 > 0.0)
  {
    v13 = floor(v11 * v13) / v11;
  }

  if (v5)
  {
    v14 = a2 / v5 * v5;
    a2 -= v14;
    v15 = -(v8 - v9 * (v14 + 1));
    if (v11 > 0.0)
    {
      v15 = floor(v11 * v15) / v11;
    }

    v16 = v15 - v7;
  }

  else
  {
    v16 = 0.0;
  }

  v22 = v12 + v13;
  v23 = -(v8 - v9 * (a2 + 1));
  if (v11 > 0.0)
  {
    v23 = floor(v11 * v23) / v11;
  }

  v24 = v22 - v7;
  v25 = v16 + v23 - v7;
  return v24 - v25;
}

void sub_61AFC(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 88);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        [v7 setHidden:{a2, v8}];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_61C34(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v16 = 0;
  v17 = 0;
  sub_6767C(a2, a1, &v16);
  v6 = v17;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_676EC;
  v13[3] = &unk_25F6A0;
  v15 = a1;
  v7 = v5;
  v14 = v7;
  [v6 enumerateIndexesUsingBlock:v13];

  v8 = v16;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_67704;
  v10[3] = &unk_25F6A0;
  v12 = a1;
  v9 = v7;
  v11 = v9;
  [v8 enumerateIndexesUsingBlock:v10];
}

uint64_t sub_61DD8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  objc_storeStrong((a1 + 16), *(a2 + 16));
  sub_638C4((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return a1;
}

double sub_61E30(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1)
  {
    v2 = *(a1 + 8) - 1;
    v3 = v2 / v1 * v1;
    v4 = v2 % v1;
    v6 = *(a1 + 72);
    v5 = *(a1 + 80);
    v7 = v5 + v6;
    if (v5 == 0.0)
    {
      v20 = v7 * v3;
      v21 = *(a1 + 104);
      if (v21 > 0.0)
      {
        v20 = floor(v20 * v21) / v21;
      }

      v22 = -(v5 - v7 * (v4 + 1));
      if (v21 > 0.0)
      {
        v22 = floor(v21 * v22) / v21;
      }

      return v20 + v22;
    }

    else
    {
      v8 = -(v5 - v7 * (v3 + 1));
      v9 = *(a1 + 104);
      if (v9 > 0.0)
      {
        v8 = floor(v8 * v9) / v9;
      }

      v10 = v8 - v6;
      v11 = v5 * -2.0 + v7 * (v4 + 2);
      if (v9 > 0.0)
      {
        v11 = floor(v9 * v11) / v9;
      }

      return v10 + v11 - v6;
    }
  }

  else
  {
    v13 = *(a1 + 8);
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    v16 = v15 + v14;
    v17 = *(a1 + 104);
    if (v15 == 0.0)
    {
      v23 = -(v15 - v16 * v13);
      if (v17 > 0.0)
      {
        v23 = floor(v17 * v23) / v17;
      }

      v19 = v23 + 0.0;
    }

    else
    {
      v18 = v15 * -2.0 + v16 * (v13 + 1);
      if (v17 > 0.0)
      {
        v18 = floor(v17 * v18) / v17;
      }

      v19 = v18 + 0.0 - v14;
    }

    return *(a1 + 32) + v19 + *(a1 + 48);
  }
}

double sub_61F88(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  if (!a4)
  {
    v8 = *(a1 + 16);
    v66 = *a1;
    v67 = v8;
    v4 = 1;
    while (*(&v66 + 1) != *(a1 + 40) || *(&v67 + 1) != *(a1 + 56))
    {
      if (v4 <= (*(*(*v66 + 88 * *(&v66 + 1) + 24) + 96 * *(&v67 + 1) + 48) - *(*(*v66 + 88 * *(&v66 + 1) + 24) + 96 * *(&v67 + 1) + 40)) >> 6)
      {
        v4 = (*(*(*v66 + 88 * *(&v66 + 1) + 24) + 96 * *(&v67 + 1) + 48) - *(*(*v66 + 88 * *(&v66 + 1) + 24) + 96 * *(&v67 + 1) + 40)) >> 6;
      }

      ++*(&v67 + 1);
      sub_67714(&v66);
    }

    v6 = a2;
  }

  *&v66 = 0;
  sub_677F4(&v68, v4, &v66);
  v9 = *(a1 + 16);
  v66 = *a1;
  v67 = v9;
  while (1)
  {
    v10 = *(&v67 + 1);
    if (*(&v66 + 1) == *(a1 + 40) && *(&v67 + 1) == *(a1 + 56))
    {
      break;
    }

    v11 = (*(*v66 + 88 * *(&v66 + 1) + 24) + 96 * *(&v67 + 1));
    v12 = v11[5];
    v13 = v11[6];
    if (v12 != v13)
    {
      v14 = 0;
      do
      {
        v15 = sub_61938(v6, *v11, v11[2]);
        sub_67498(v12, 0, &v65, v15);
        if (v14 < v4)
        {
          *(v68 + v14) = fmax(*(v68 + v14), v16);
        }

        ++v14;
        v12 += 64;
      }

      while (v12 != v13);
      v10 = *(&v67 + 1);
    }

    *(&v67 + 1) = v10 + 1;
    sub_67714(&v66);
  }

  memset(__p, 0, sizeof(__p));
  *&v66 = 0;
  sub_677F4(__p, v4 + 1, &v66);
  v17 = v68;
  v18 = v69;
  v19 = __p[0];
  if (v68 == v69)
  {
    v24 = 0;
    v21 = 0.0;
  }

  else
  {
    v20 = 0;
    v21 = 0.0;
    v22 = __p[0];
    do
    {
      v23 = *v17++;
      *v22++ = v21;
      v21 = v21 + v23;
      --v20;
    }

    while (v17 != v18);
    v24 = -v20;
  }

  v19[v24] = v21;
  v25 = *(a1 + 16);
  v66 = *a1;
  v67 = v25;
  v26 = *(a1 + 48);
  v63[0] = *(a1 + 32);
  v63[1] = v26;
  *&v61 = v6;
  *(&v61 + 1) = __p;
  v62 = a1;
  sub_67824(a3, &v66, v63, &v61);
  v27 = *(a1 + 120);
  v28 = *&__p[1];
  v29 = *(__p[1] - 1);
  v30 = *(a1 + 104);
  *(a1 + 104) = __p[0];
  *__p = v30;
  *(a1 + 112) = v28;
  __p[2] = v27;
  v59 = sub_61E30(v6);
  v31 = *(a1 + 16);
  v66 = *a1;
  v67 = v31;
  while (*(&v66 + 1) != *(a1 + 40) || *(&v67 + 1) != *(a1 + 56))
  {
    v32 = (*(*v66 + 88 * *(&v66 + 1) + 24) + 96 * *(&v67 + 1));
    v33 = *(a1 + 80);
    if (v33)
    {
      v34 = v32[5];
      v35 = 0.0;
      while (v34 != v32[6])
      {
        v35 = v35 + *(v34 + 56);
        v34 += 64;
      }

      v36 = 0.0;
      if (v33 == 5)
      {
        v36 = 1.0;
      }

      if (v33 == 3)
      {
        v36 = 1.0;
      }

      if (v33 == 2)
      {
        v37 = 0.5;
      }

      else
      {
        v37 = v36;
      }
    }

    else
    {
      v37 = 0.0;
      v35 = 0.0;
    }

    sub_67BF8(v6, *v32, v32[2], 1);
    v40 = v32[5];
    v39 = v32[6];
    if (v40 != v39)
    {
      v41 = v38;
      v42 = 0;
      v43 = v37 * (v29 - v35);
      do
      {
        v44 = 0.0;
        v45 = 0.0;
        if (v42 < v4)
        {
          v45 = *(v68 + v42);
        }

        if (*(a1 + 80))
        {
          v45 = *(v40 + 56);
        }

        else
        {
          v46 = [*v40 valign];
          v47 = 0.0;
          if ((v46 - 1) <= 3)
          {
            v47 = dbl_24CD30[(v46 - 1)];
          }

          v44 = v47 * (v45 - *(v40 + 56));
        }

        v48 = v41 + *(a1 + 64);
        v49 = v44 + v43 + *(a1 + 72);
        *(v40 + 32) = v48;
        *(v40 + 40) = v49;
        v51 = *(v40 + 8);
        v50 = *(v40 + 16);
        while (v51 != v50)
        {
          v52 = *(v51 + 56);
          v53 = a3[14] + 152 * v52;
          v54 = (v53 + 136);
          p_y = (v53 + 144);
          v56 = v52 == -1;
          if (v52 == -1)
          {
            v57 = &CGPointZero;
          }

          else
          {
            v57 = v54;
          }

          if (v56)
          {
            p_y = &CGPointZero.y;
          }

          sub_6850C((v51 + 8), v48 - v57->x + *(v51 + 72), v49 - *p_y + *(v51 + 64));
          v51 += 96;
        }

        v43 = v43 + v45;
        ++v42;
        v40 += 64;
        v6 = a2;
      }

      while (v40 != v39);
    }

    ++*(&v67 + 1);
    sub_67714(&v66);
  }

  *(a1 + 88) = v59;
  *(a1 + 96) = v29;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  return v59;
}

void sub_62418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_62474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (*(a1 + 16))
  {
    v6 = a3 == a4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v10 = a3;
    do
    {
      if (*(v10 + 16) == 1)
      {
        sub_67BF8(a2, *v10, 1uLL, 1);
        v14 = v13;
        v15 = *(a2 + 88);
        v16 = *(a1 + 8);
        v17 = *(v10 + 32);
        v18 = [v17 identifier];
        sub_6858C(a1, v18, a5 + v14, a6 - (v16 * -0.5 + v15 * 0.5));
      }

      v10 += 96;
    }

    while (v10 != a4);
  }
}

double sub_62580(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v4 = a4;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  if (!a4)
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    v4 = 1;
    if (v9 != *a1)
    {
      do
      {
        if (v4 <= (v8[7] - v8[6]) >> 6)
        {
          v4 = (v8[7] - v8[6]) >> 6;
        }

        v8 += 12;
      }

      while (v8 != v9);
    }
  }

  __p[0] = 0;
  sub_677F4(&v65, v4, __p);
  v11 = *a1;
  v10 = *(a1 + 8);
  if (v10 != *a1)
  {
    do
    {
      v12 = v11[6];
      v13 = v11[7];
      if (v12 != v13)
      {
        v14 = 0;
        do
        {
          v15 = sub_61938(a2, *v11, v11[2]);
          sub_67498(v12, 0, &v64, v15);
          if (v14 < v4)
          {
            *(v65 + v14) = fmax(*(v65 + v14), v16);
          }

          ++v14;
          v12 += 64;
        }

        while (v12 != v13);
        v10 = *(a1 + 8);
      }

      v11 += 12;
    }

    while (v11 != v10);
  }

  memset(__p, 0, sizeof(__p));
  *&v61 = 0;
  sub_677F4(__p, v4 + 1, &v61);
  v17 = v65;
  v18 = v66;
  v19 = __p[0];
  if (v65 == v66)
  {
    v24 = 0;
    v21 = 0.0;
  }

  else
  {
    v20 = 0;
    v21 = 0.0;
    v22 = __p[0];
    do
    {
      v23 = *v17++;
      *v22++ = v21;
      v21 = v21 + v23;
      --v20;
    }

    while (v17 != v18);
    v24 = -v20;
  }

  v19[v24] = v21;
  v25 = *a1;
  v26 = *(a1 + 8);
  *&v61 = a2;
  *(&v61 + 1) = __p;
  v62 = a1;
  sub_68844(a3, v25, v26, &v61);
  v27 = *(a1 + 72);
  v28 = *&__p[1];
  v29 = *(__p[1] - 1);
  v30 = *(a1 + 56);
  *(a1 + 56) = __p[0];
  *__p = v30;
  *(a1 + 64) = v28;
  __p[2] = v27;
  v58 = sub_61E30(a2);
  v31 = *a1;
  if (*(a1 + 8) != *a1)
  {
    v59 = a2;
    do
    {
      v32 = *(a1 + 32);
      v33 = 0.0;
      v34 = 0.0;
      if (v32)
      {
        for (i = v31[6]; i != v31[7]; i += 64)
        {
          v34 = v34 + *(i + 56);
        }

        v36 = 0.0;
        if (v32 == 5)
        {
          v36 = 1.0;
        }

        if (v32 == 3)
        {
          v36 = 1.0;
        }

        if (v32 == 2)
        {
          v33 = 0.5;
        }

        else
        {
          v33 = v36;
        }
      }

      sub_67BF8(a2, *v31, v31[2], 1);
      v38 = v31[6];
      v39 = v31[7];
      v60 = v31;
      if (v38 != v39)
      {
        v40 = v37;
        v41 = 0;
        v42 = v33 * (v29 - v34);
        do
        {
          v43 = 0.0;
          v44 = 0.0;
          if (v41 < v4)
          {
            v44 = *(v65 + v41);
          }

          if (*(a1 + 32))
          {
            v44 = *(v38 + 56);
          }

          else
          {
            v45 = [*v38 valign];
            v46 = 0.0;
            if ((v45 - 1) <= 3)
            {
              v46 = dbl_24CD30[(v45 - 1)];
            }

            v43 = v46 * (v44 - *(v38 + 56));
          }

          v47 = v40 + *(a1 + 16);
          v48 = v43 + v42 + *(a1 + 24);
          *(v38 + 32) = v47;
          *(v38 + 40) = v48;
          v49 = *(v38 + 8);
          v50 = *(v38 + 16);
          while (v49 != v50)
          {
            v51 = *(v49 + 56);
            v52 = a3[14] + 152 * v51;
            v53 = (v52 + 136);
            p_y = (v52 + 144);
            v55 = v51 == -1;
            if (v51 == -1)
            {
              v56 = &CGPointZero;
            }

            else
            {
              v56 = v53;
            }

            if (v55)
            {
              p_y = &CGPointZero.y;
            }

            sub_6850C((v49 + 8), v47 - v56->x + *(v49 + 72), v48 - *p_y + *(v49 + 64));
            v49 += 96;
          }

          v42 = v42 + v44;
          ++v41;
          v38 += 64;
        }

        while (v38 != v39);
      }

      a2 = v59;
      v31 = v60 + 12;
    }

    while (v60 + 12 != *(a1 + 8));
  }

  *(a1 + 40) = v58;
  *(a1 + 48) = v29;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  return v58;
}

void sub_62934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

double sub_62984(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  if (!a4)
  {
    v8 = *(a1 + 16);
    v66 = *a1;
    v67 = v8;
    v4 = 1;
    while (*(&v66 + 1) != *(a1 + 40) || *(&v67 + 1) != *(a1 + 56))
    {
      if (v4 <= (*(*(*v66 + 88 * *(&v66 + 1) + 24) + 96 * *(&v67 + 1) + 48) - *(*(*v66 + 88 * *(&v66 + 1) + 24) + 96 * *(&v67 + 1) + 40)) >> 6)
      {
        v4 = (*(*(*v66 + 88 * *(&v66 + 1) + 24) + 96 * *(&v67 + 1) + 48) - *(*(*v66 + 88 * *(&v66 + 1) + 24) + 96 * *(&v67 + 1) + 40)) >> 6;
      }

      ++*(&v67 + 1);
      sub_690A0(&v66);
    }

    v6 = a2;
  }

  *&v66 = 0;
  sub_677F4(&v68, v4, &v66);
  v9 = *(a1 + 16);
  v66 = *a1;
  v67 = v9;
  while (1)
  {
    v10 = *(&v67 + 1);
    if (*(&v66 + 1) == *(a1 + 40) && *(&v67 + 1) == *(a1 + 56))
    {
      break;
    }

    v11 = (*(*v66 + 88 * *(&v66 + 1) + 24) + 96 * *(&v67 + 1));
    v12 = v11[5];
    v13 = v11[6];
    if (v12 != v13)
    {
      v14 = 0;
      do
      {
        v15 = sub_61938(v6, *v11, v11[2]);
        sub_67498(v12, 0, &v65, v15);
        if (v14 < v4)
        {
          *(v68 + v14) = fmax(*(v68 + v14), v16);
        }

        ++v14;
        v12 += 64;
      }

      while (v12 != v13);
      v10 = *(&v67 + 1);
    }

    *(&v67 + 1) = v10 + 1;
    sub_690A0(&v66);
  }

  memset(__p, 0, sizeof(__p));
  *&v66 = 0;
  sub_677F4(__p, v4 + 1, &v66);
  v17 = v68;
  v18 = v69;
  v19 = __p[0];
  if (v68 == v69)
  {
    v24 = 0;
    v21 = 0.0;
  }

  else
  {
    v20 = 0;
    v21 = 0.0;
    v22 = __p[0];
    do
    {
      v23 = *v17++;
      *v22++ = v21;
      v21 = v21 + v23;
      --v20;
    }

    while (v17 != v18);
    v24 = -v20;
  }

  v19[v24] = v21;
  v25 = *(a1 + 16);
  v66 = *a1;
  v67 = v25;
  v26 = *(a1 + 48);
  v63[0] = *(a1 + 32);
  v63[1] = v26;
  *&v61 = v6;
  *(&v61 + 1) = __p;
  v62 = a1;
  sub_69180(a3, &v66, v63, &v61);
  v27 = *(a1 + 120);
  v28 = *&__p[1];
  v29 = *(__p[1] - 1);
  v30 = *(a1 + 104);
  *(a1 + 104) = __p[0];
  *__p = v30;
  *(a1 + 112) = v28;
  __p[2] = v27;
  v59 = sub_61E30(v6);
  v31 = *(a1 + 16);
  v66 = *a1;
  v67 = v31;
  while (*(&v66 + 1) != *(a1 + 40) || *(&v67 + 1) != *(a1 + 56))
  {
    v32 = (*(*v66 + 88 * *(&v66 + 1) + 24) + 96 * *(&v67 + 1));
    v33 = *(a1 + 80);
    if (v33)
    {
      v34 = v32[5];
      v35 = 0.0;
      while (v34 != v32[6])
      {
        v35 = v35 + *(v34 + 56);
        v34 += 64;
      }

      v36 = 0.0;
      if (v33 == 5)
      {
        v36 = 1.0;
      }

      if (v33 == 3)
      {
        v36 = 1.0;
      }

      if (v33 == 2)
      {
        v37 = 0.5;
      }

      else
      {
        v37 = v36;
      }
    }

    else
    {
      v37 = 0.0;
      v35 = 0.0;
    }

    sub_67BF8(v6, *v32, v32[2], 1);
    v40 = v32[5];
    v39 = v32[6];
    if (v40 != v39)
    {
      v41 = v38;
      v42 = 0;
      v43 = v37 * (v29 - v35);
      do
      {
        v44 = 0.0;
        v45 = 0.0;
        if (v42 < v4)
        {
          v45 = *(v68 + v42);
        }

        if (*(a1 + 80))
        {
          v45 = *(v40 + 56);
        }

        else
        {
          v46 = [*v40 valign];
          v47 = 0.0;
          if ((v46 - 1) <= 3)
          {
            v47 = dbl_24CD30[(v46 - 1)];
          }

          v44 = v47 * (v45 - *(v40 + 56));
        }

        v48 = v41 + *(a1 + 64);
        v49 = v44 + v43 + *(a1 + 72);
        *(v40 + 32) = v48;
        *(v40 + 40) = v49;
        v51 = *(v40 + 8);
        v50 = *(v40 + 16);
        while (v51 != v50)
        {
          v52 = *(v51 + 56);
          v53 = a3[14] + 152 * v52;
          v54 = (v53 + 136);
          p_y = (v53 + 144);
          v56 = v52 == -1;
          if (v52 == -1)
          {
            v57 = &CGPointZero;
          }

          else
          {
            v57 = v54;
          }

          if (v56)
          {
            p_y = &CGPointZero.y;
          }

          sub_6850C((v51 + 8), v48 - v57->x + *(v51 + 72), v49 - *p_y + *(v51 + 64));
          v51 += 96;
        }

        v43 = v43 + v45;
        ++v42;
        v40 += 64;
        v6 = a2;
      }

      while (v40 != v39);
    }

    ++*(&v67 + 1);
    sub_690A0(&v66);
  }

  *(a1 + 88) = v59;
  *(a1 + 96) = v29;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  return v59;
}

void sub_62E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_62E70(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 88);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        [v7 setHidden:{a2, v8}];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_6320C(uint64_t a1, unint64_t a2, double *a3, void *a4, void *a5)
{
  v9 = a4;
  v42 = a5;
  if ([*(a1 + 16) count])
  {
    v10 = objc_opt_new();
    memset(&v50, 0, sizeof(v50));
    CGAffineTransformMakeTranslation(&v50, *a1 * 0.5, *(a1 + 8) * 0.5);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v40 = a1;
    v11 = *(a1 + 16);
    v12 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v12)
    {
      v13 = *v47;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v47 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v46 + 1) + 8 * i);
          v45 = v50;
          [v15 appendRenderModelIgnoreHiddenCompatibleWithKind:a2 context:v9 transform:&v45 toModels:v10];
        }

        v12 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v12);
    }

    v16 = v40;
    if (a2 < 4)
    {
      v17 = 0;
      if (a2 != 3)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v17 = [[TUIRenderModelSubviews alloc] initWithSubmodels:v10];
      [(TUIRenderModelSubviews *)v17 setSize:*v40, v40[1]];
    }

    v19 = *(v40 + 3);
    v18 = *(v40 + 4);
    v41 = v18;
    while (v19 != v18)
    {
      v20 = *v19;
      v43 = *(v19 + 16);
      v44 = *(v19 + 8);
      v21 = v20;
      if (a2 < 4)
      {
        v23 = [[TUIContainerLayerConfig alloc] initWithSize:*v16, v16[1]];
        v22 = [[TUIRenderModelLayer alloc] initWithSubmodels:v10 config:v23 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
        [(TUIRenderModelLayer *)v22 setIdentifier:v21];

        v16 = v40;
      }

      else
      {
        v22 = [TUIContainerView renderModelWithSubviewsModel:v17 style:0 identifier:?];
      }

      v25 = *v16;
      v24 = v16[1];
      v26 = *a3;
      v27 = a3[1];
      v29 = a3[2];
      v28 = a3[3];
      v31 = a3[4];
      v30 = a3[5];
      [v9 contentsScale];
      v32 = v31 + v43 * v29 + v26 * v44;
      v33 = v30 + v43 * v28 + v27 * v44;
      v35 = TUIPointRoundedForScale(v32, v33, v34);
      v37 = v36;
      v38 = [[TUIRenderModelTransform alloc] initWithSubmodel:v22];
      [(TUIRenderModelTransform *)v38 setSize:*v16, v16[1]];
      [(TUIRenderModelTransform *)v38 setCenter:v44 + v25 * 0.5 + v35 - v32, v43 + v24 * 0.5 + v37 - v33];
      v39 = *(a3 + 1);
      *&v45.a = *a3;
      *&v45.c = v39;
      *&v45.tx = *(a3 + 2);
      [(TUIRenderModelTransform *)v38 setTransform:&v45];
      [v42 addObject:v38];

      v19 += 24;
      v18 = v41;
    }

    goto LABEL_18;
  }

LABEL_19:
}

void sub_638C4(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 3);
        v3 -= 24;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_63928(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_639A8(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    *(a1 + 96) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  v6 = (a1 + 24);
  sub_63A20(&v6);
  v6 = a1;
  sub_63C64(&v6);
  return a1;
}

void sub_63A20(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_63A74(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_63A74(uint64_t a1, id *a2)
{
  for (i = *(a1 + 8); i != a2; sub_63AC8(a1, i))
  {
    i -= 12;
  }

  *(a1 + 8) = a2;
}

void sub_63AC8(uint64_t a1, id *a2)
{
  v3 = a2 + 5;
  sub_63B5C(&v3);
}

id *sub_63B10(id *a1)
{
  v3 = a1 + 5;
  sub_63B5C(&v3);

  return a1;
}

void sub_63B5C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 64;
        sub_63BE4(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_63BE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    *(a2 + 16) = v3;
    operator delete(v3);
  }

  v4 = *a2;
}

uint64_t sub_63C28(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_63C64(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_63CB8(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_63CB8(uint64_t a1, void **a2)
{
  for (i = *(a1 + 8); i != a2; sub_63D0C(a1, i))
  {
    i -= 11;
  }

  *(a1 + 8) = a2;
}

void sub_63D0C(uint64_t a1, void **a2)
{
  v3 = a2 + 3;
  sub_63A20(&v3);
  v3 = a2;
  sub_63DA8(&v3);
}

void **sub_63D58(void **a1)
{
  v3 = a1 + 3;
  sub_63A20(&v3);
  v3 = a1;
  sub_63DA8(&v3);
  return a1;
}

void sub_63DA8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_63DFC(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_63DFC(uint64_t a1, id *a2)
{
  for (i = *(a1 + 8); i != a2; sub_63E50(a1, i))
  {
    i -= 12;
  }

  *(a1 + 8) = a2;
}

void sub_63E50(uint64_t a1, id *a2)
{
  v3 = a2 + 6;
  sub_63B5C(&v3);
}

id *sub_63E98(id *a1)
{
  v3 = a1 + 6;
  sub_63B5C(&v3);

  return a1;
}

uint64_t sub_63EE4(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  *(a1 + 64) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  sub_63FE4(a1, v7, -1, a4, v8);
  sub_644A8(a1);
  sub_645D8(a1, v8);
  sub_64C74(a1);

  return a1;
}

void sub_63F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v15 = *(v11 + 112);
  if (v15)
  {
    *(v11 + 120) = v15;
    operator delete(v15);
  }

  sub_199D74((v11 + 88), v13, v11);
  a10 = (v11 + 24);
  sub_63A20(&a10);
  a10 = v11;
  sub_63C64(&a10);

  _Unwind_Resume(a1);
}

void sub_63FE4(void *a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v55 = a2;
  v61 = a5;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v55;
  v9 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v9)
  {
    v57 = *v63;
    do
    {
      v10 = 0;
      v60 = v9;
      do
      {
        if (*v63 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v62 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;
        v14 = v13;
        if (v13)
        {
          v15 = a4 ^ 1;
        }

        else
        {
          v15 = 0;
        }

        if (v15 == 1 && [v13 groupedContainingIsGrouped])
        {
          v16 = [v11 model];
          v17 = v16;
          if (v16)
          {
            v18 = v16 == v61;
          }

          else
          {
            v18 = 1;
          }

          if (!v18)
          {
            while (objc_opt_class() != v7 && objc_opt_class() != v8)
            {
              v19 = [v17 parentModel];

              if (v19)
              {
                v17 = v19;
                if (v19 != v61)
                {
                  continue;
                }
              }

              goto LABEL_20;
            }
          }

          v19 = v17;
LABEL_20:
          v21 = objc_opt_class() == v8 && v19 != 0;
        }

        else
        {
          v21 = 0;
        }

        if (a4)
        {
          if (!v14)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v14)
          {
            v22 = v21;
          }

          else
          {
            v22 = 0;
          }

          if (!v22)
          {
            goto LABEL_42;
          }
        }

        if ([v14 groupedContainingIsGrouped])
        {
          v23 = sub_64DEC(a1, v14, a3);
          v25 = a1[8];
          v24 = a1[9];
          v26 = [v14 groupedContainingLayouts];
          sub_63FE4(a1, v26, v23, 1, v61);

          v27 = (a1[9] - a1[8]) >> 3;
          v28 = a1[14] + 152 * v23;
          *(v28 + 56) = (v24 - v25) >> 3;
          *(v28 + 64) = v27;
          goto LABEL_66;
        }

LABEL_42:
        v30 = a1[9];
        v29 = a1[10];
        if (v30 >= v29)
        {
          v32 = a1[8];
          v33 = (v30 - v32) >> 3;
          if ((v33 + 1) >> 61)
          {
            sub_4050();
          }

          v34 = v29 - v32;
          v35 = v34 >> 2;
          if (v34 >> 2 <= (v33 + 1))
          {
            v35 = v33 + 1;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFF8)
          {
            v36 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v35;
          }

          if (v36)
          {
            sub_396BC((a1 + 8), v36);
          }

          *(8 * v33) = v11;
          v31 = 8 * v33 + 8;
          v37 = a1[8];
          v38 = a1[9] - v37;
          v39 = (8 * v33 - v38);
          memcpy(v39, v37, v38);
          v40 = a1[8];
          a1[8] = v39;
          a1[9] = v31;
          a1[10] = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v30 = v11;
          v31 = (v30 + 1);
        }

        a1[9] = v31;
        v42 = a1[12];
        v41 = a1[13];
        if (v42 >= v41)
        {
          v44 = a1[11];
          v45 = v42 - v44;
          v46 = (v42 - v44) >> 3;
          v47 = v46 + 1;
          if ((v46 + 1) >> 61)
          {
            sub_4050();
          }

          v48 = v41 - v44;
          if (v48 >> 2 > v47)
          {
            v47 = v48 >> 2;
          }

          v49 = v48 >= 0x7FFFFFFFFFFFFFF8;
          v50 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v49)
          {
            v50 = v47;
          }

          if (v50)
          {
            sub_65004((a1 + 11), v50);
          }

          v51 = (v42 - v44) >> 3;
          v52 = (8 * v46);
          v53 = (8 * v46 - 8 * v51);
          *v52 = a3;
          v43 = v52 + 1;
          memcpy(v53, v44, v45);
          v54 = a1[11];
          a1[11] = v53;
          a1[12] = v43;
          a1[13] = 0;
          if (v54)
          {
            operator delete(v54);
          }
        }

        else
        {
          *v42 = a3;
          v43 = v42 + 1;
        }

        a1[12] = v43;
LABEL_66:

        v10 = v10 + 1;
      }

      while (v10 != v60);
      v9 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v9);
  }
}

void sub_644A8(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = *(a1 + 120);
  if (v1 != v2)
  {
    v4 = v1 + 64;
    do
    {
      [*(v4 + 56) groupedContainingInsets];
      *(v4 + 8) = v5;
      *(v4 + 16) = v6;
      *(v4 + 24) = v7;
      *(v4 + 32) = v8;
      *(v4 + 40) = [*(v4 + 56) groupedContainingInsetsMode];
      v9 = [*(v4 + 56) groupedContainingContentMode];
      v10 = v9;
      v11 = *(v4 + 64);
      if (v11 == -1)
      {
        if ((v9 & 0xFFFFFFFFFFFFFFFDLL) != 0)
        {
          v17 = 0;
        }

        else
        {
          v17 = 3;
        }
      }

      else
      {
        v12.f64[0] = sub_6504C(*(a1 + 112) + 152 * v11, *(v4 - 8), *v4);
        v12.f64[1] = v13;
        *(v4 + 8) = vaddq_f64(*(v4 + 8), v12);
        v15.f64[1] = v14;
        *(v4 + 24) = vaddq_f64(v15, *(v4 + 24));
        if (v10 == 2)
        {
          v17 = 3;
        }

        else if (v10)
        {
          v17 = 0;
        }

        else
        {
          v16 = (*(a1 + 112) + 152 * *(v4 + 64));
          if (v16[7] == *(v4 - 8))
          {
            v17 = v16[14] & 1;
          }

          else
          {
            v17 = 0;
          }

          if (v16[8] == *v4)
          {
            v17 |= v16[14] & 2;
          }
        }
      }

      *(v4 + 48) = v17;
      v18 = v4 + 88;
      v4 += 152;
    }

    while (v18 != v2);
  }
}

void sub_645D8(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v62 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v61 = objc_opt_class();
  v8 = a1[8];
  v7 = a1[9];
  if (v8 == v7)
  {
    v55 = 0;
    v56 = 0;
    v42 = 0;
    v58 = 0;
    v9 = 0;
  }

  else
  {
    v55 = 0;
    v56 = 0;
    v9 = 0;
    v57 = 0;
    v58 = 0;
    v50 = a1[8];
    v10 = v50;
    v53 = v5;
    v54 = a1;
    do
    {
      v11 = [*v10 model];
      v12 = v11;
      if (v11)
      {
        v13 = v11 == v3;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        while (objc_opt_class() != v62 && objc_opt_class() != v4 && objc_opt_class() != v6)
        {
          v14 = [v12 parentModel];

          if (v14)
          {
            v12 = v14;
            if (v14 != v3)
            {
              continue;
            }
          }

          goto LABEL_9;
        }
      }

      v14 = v12;
LABEL_9:
      if (objc_opt_class() == v62)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v60 = v15;
      if (v14 && v14 != v3)
      {
        while (objc_opt_class() != v4 && objc_opt_class() != v6 && objc_opt_class() != v61)
        {
          v16 = [v14 parentModel];

          if (v16)
          {
            v14 = v16;
            if (v16 != v3)
            {
              continue;
            }
          }

          goto LABEL_27;
        }
      }

      v16 = v14;
LABEL_27:
      if (objc_opt_class() == v61)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
      if (v16 && v16 != v3)
      {
        while (objc_opt_class() != v4 && objc_opt_class() != v6)
        {
          v19 = [v16 parentModel];

          if (v19)
          {
            v16 = v19;
            if (v19 != v3)
            {
              continue;
            }
          }

          goto LABEL_38;
        }
      }

      v19 = v16;
LABEL_38:
      if (objc_opt_class() == v4)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      if (objc_opt_class() == v6)
      {
        v22 = v19;
      }

      else
      {
        v22 = 0;
      }

      v59 = v22;
      if (v19 && v19 != v3)
      {
        while (objc_opt_class() != v5)
        {
          v23 = [v19 parentModel];

          if (v23)
          {
            v19 = v23;
            if (v23 != v3)
            {
              continue;
            }
          }

          goto LABEL_51;
        }
      }

      v23 = v19;
LABEL_51:
      if (objc_opt_class() == v5)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;
      v27 = v58 == v21 && v57 == v59 && v9 == v18;
      v28 = v27;
      if (v27 && v55 == v60 && v56 == v25)
      {
        v29 = v18;
        v31 = v59;
        v30 = v60;
      }

      else
      {
        v51 = v25;
        v52 = v18;
        if (v50 != v10)
        {
          if (v55)
          {
            v28 = 1;
          }

          if (v55 != v60 || (v28 & 1) == 0)
          {
            v73 = CGPointZero;
            v72 = CGSizeZero;
            v32 = sub_650D0(v54, v50, v10);
            *&v63 = v9;
            *(&v63 + 1) = v50;
            v65 = v73;
            v66 = v72;
            v64 = v10;
            v67 = v32;
            v68 = sub_656E8(v54, v32, v50, v10);
            v69 = v33;
            v70 = v34;
            v71 = v35;
            if (v58)
            {
              v36 = sub_65124(v54, v56, v58, v55);
              sub_65314(v36, &v63);
            }

            else if (v56 && v57)
            {
              v37 = sub_6542C(v54, v56, v57, v55);
              sub_65314(v37, &v63);
            }

            else if (v57)
            {
              v38 = sub_655D8(v54, v57, v55);
              sub_65314(v38, &v63);
            }

            v50 = v10;
          }
        }

        v39 = v21;

        v31 = v59;
        v40 = v59;

        v41 = v51;
        v25 = v51;
        v56 = v41;
        v57 = v40;
        v58 = v39;
        v29 = v52;
        v9 = v52;
        v30 = v60;
        v55 = v60;
      }

      ++v10;
      v5 = v53;
      a1 = v54;
      v7 = v54[9];
    }

    while (v10 != v7);
    v42 = v57;
    v8 = v50;
  }

  if (v8 != v7 && v58 | v42)
  {
    v73 = CGPointZero;
    v72 = CGSizeZero;
    v43 = sub_650D0(a1, v8, v7);
    *&v63 = v9;
    *(&v63 + 1) = v8;
    v64 = v7;
    v65 = v73;
    v66 = v72;
    v67 = v43;
    v68 = sub_656E8(a1, v43, v8, v7);
    v69 = v44;
    v70 = v45;
    v71 = v46;
    if (v58)
    {
      v47 = sub_65124(a1, v56, v58, v55);
      sub_65314(v47, &v63);
    }

    else if (v56 && v42)
    {
      v48 = sub_6542C(a1, v56, v42, v55);
      sub_65314(v48, &v63);
    }

    else if (v42)
    {
      v49 = sub_655D8(a1, v42, v55);
      sub_65314(v49, &v63);
    }
  }
}

void sub_64B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18)
{
  v21 = v19;

  _Unwind_Resume(a1);
}

void sub_64C74(uint64_t *a1)
{
  v2 = a1[3];
  for (i = a1[4]; v2 != i; v2 += 12)
  {
    v4 = objc_opt_new();
    sub_61C34(a1, v2, v4);
    v5 = v4;
    v6 = [v5 copy];
    v7 = v2[11];
    v2[11] = v6;
  }

  v8 = *a1;
  v9 = a1[1];
  if (*a1 != v9)
  {
    do
    {
      v10 = *v8;
      v11 = *(v8 + 8);
      while (v10 != v11)
      {
        v12 = objc_opt_new();
        sub_67064(a1, v10, v12);
        v13 = v12;
        v14 = [v13 copy];
        v15 = v10[11];
        v10[11] = v14;

        v10 += 12;
      }

      v16 = *(v8 + 24);
      v17 = *(v8 + 32);
      while (v16 != v17)
      {
        v18 = objc_opt_new();
        sub_61C34(a1, v16, v18);
        v19 = v18;
        v20 = [v19 copy];
        v21 = v16[11];
        v16[11] = v20;

        v16 += 12;
      }

      v8 += 88;
    }

    while (v8 != v9);
  }
}

unint64_t sub_64DEC(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = a1[14];
  v6 = a1[15];
  v8 = a1[16];
  v21 = *&UIEdgeInsetsZero.top;
  v22 = *&UIEdgeInsetsZero.bottom;
  v9 = 0x86BCA1AF286BCA1BLL * ((v6 - v7) >> 3);
  v20 = CGPointZero;
  if (v6 >= v8)
  {
    if (v9 + 1 > 0x1AF286BCA1AF286)
    {
      sub_4050();
    }

    v11 = 0x86BCA1AF286BCA1BLL * ((v8 - v7) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= v9 + 1)
    {
      v12 = v9 + 1;
    }

    if (v11 >= 0xD79435E50D7943)
    {
      v13 = 0x1AF286BCA1AF286;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      sub_64FA8((a1 + 14), v13);
    }

    v14 = 152 * v9;
    *(v14 + 8) = 0u;
    *(v14 + 24) = 0u;
    *(v14 + 40) = 0u;
    *(v14 + 72) = v21;
    *v14 = -1;
    *(v14 + 56) = -1;
    *(v14 + 64) = -1;
    *(v14 + 88) = v22;
    *(v14 + 120) = v5;
    *(v14 + 128) = a3;
    *(v14 + 136) = v20;
    v10 = 152 * v9 + 152;
    v15 = a1[14];
    v16 = a1[15] - v15;
    v17 = (152 * v9 - v16);
    memcpy(v17, v15, v16);
    v18 = a1[14];
    a1[14] = v17;
    a1[15] = v10;
    a1[16] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 72) = v21;
    *v6 = -1;
    *(v6 + 56) = -1;
    *(v6 + 64) = -1;
    *(v6 + 88) = v22;
    *(v6 + 120) = v5;
    *(v6 + 128) = a3;
    v10 = v6 + 152;
    *(v6 + 136) = v20;
  }

  a1[15] = v10;

  return v9;
}

void sub_64FA8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  sub_3AAC();
}

void sub_65004(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_3AAC();
}

double sub_6504C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 104);
  if (v3 != 1)
  {
    if (!v3)
    {
      if (*(a1 + 56) == a2)
      {
        return *(a1 + 72);
      }

      else
      {
        return 0.0;
      }
    }

    return 0.0;
  }

  if (*(a1 + 56) > a2)
  {
    return 0.0;
  }

  result = 0.0;
  if (a3 <= *(a1 + 64))
  {
    return *(a1 + 72);
  }

  return result;
}

uint64_t sub_650D0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[8];
  v4 = a2 - v3;
  v5 = (a2 - v3) >> 3;
  v6 = a3 - v3;
  if (v5 >= v6 >> 3)
  {
    return -1;
  }

  v7 = *(a1[11] + v4);
  if (v7 == -1)
  {
    return -1;
  }

  v8 = a1[14] + 152 * v7;
  v9 = *(v8 + 56);
  if ((v6 >> 3) <= *(v8 + 64))
  {
    v10 = v9 >= v5;
    v11 = v9 == v5;
  }

  else
  {
    v10 = 1;
    v11 = 0;
  }

  if (!v11 && v10)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

id *sub_65124(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1[1];
  if (*a1 == v10 || *(v10 - 40) != v7)
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v24 = 0;
    v23 = v7;
    v25 = vdupq_n_s64(1uLL);
    sub_65744(a1, &v20);

    v27 = &v21 + 1;
    sub_63A20(&v27);
    v27 = &v20;
    sub_63DA8(&v27);
  }

  v11 = a1[1];
  v12 = *(v11 - 80);
  if (*(v11 - 88) == v12 || *(v12 - 64) != v8)
  {
    sub_669FC(&v20, v8);
    v13 = *(v11 - 80);
    if (v13 >= *(v11 - 72))
    {
      v17 = sub_66708(v11 - 88, &v20);
    }

    else
    {
      v14 = v21;
      *v13 = v20;
      *(v13 + 16) = v14;
      v15 = v22;
      *&v22 = 0;
      *(v13 + 32) = v15;
      *(v13 + 40) = BYTE8(v22);
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      *(v13 + 48) = 0;
      *(v13 + 48) = v23;
      *(v13 + 64) = v24;
      v23 = 0uLL;
      *(v13 + 72) = v25;
      v16 = v26;
      v24 = 0;
      v26 = 0;
      *(v13 + 88) = v16;
      v17 = v13 + 96;
    }

    *(v11 - 80) = v17;

    v27 = &v23;
    sub_63B5C(&v27);
  }

  v18 = sub_6578C((*(v11 - 80) - 48), v9);

  return v18 + 1;
}

void sub_652D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  sub_63E98(&a9);

  _Unwind_Resume(a1);
}

void sub_65314(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    v12 = v11 + 1;
    if (v11 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_4050();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x155555555555555)
    {
      v14 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_661E4(a1, v14);
    }

    v15 = 96 * v11;
    v16 = a2[1];
    *v15 = *a2;
    *(v15 + 16) = v16;
    v17 = a2[2];
    v18 = a2[3];
    v19 = a2[5];
    *(v15 + 64) = a2[4];
    *(v15 + 80) = v19;
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    v10 = 96 * v11 + 96;
    v20 = *(a1 + 8) - *a1;
    v21 = v15 - v20;
    memcpy((v15 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[5];
    v4[4] = a2[4];
    v4[5] = v9;
    v4[2] = v7;
    v4[3] = v8;
    v10 = (v4 + 6);
  }

  *(a1 + 8) = v10;
}

id *sub_6542C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1[1];
  if (*a1 == v10 || *(v10 - 40) != v7)
  {
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v20 = 0;
    v21 = 0;
    v19 = v7;
    v22 = vdupq_n_s64(1uLL);
    sub_65744(a1, &v16);

    v24 = &v17.i64[1];
    sub_63A20(&v24);
    v24 = &v16;
    sub_63DA8(&v24);
  }

  v11 = a1[1];
  v12 = *(v11 - 56);
  if (*(v11 - 64) == v12 || *(v12 - 64) != v8)
  {
    v13 = v8;
    v16 = 0uLL;
    v17 = vdupq_n_s64(1uLL);
    v18 = v13;
    v19 = 0;
    v20 = 0;
    LOBYTE(v21) = 0;
    v22 = CGSizeZero;
    v23 = 0;
    sub_66CEC(v11 - 64, &v16);

    v24 = &v18 + 1;
    sub_63B5C(&v24);
  }

  v14 = sub_6578C((*(v11 - 56) - 56), v9);

  return v14 + 1;
}

void sub_655A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  sub_63B10(&a9);

  _Unwind_Resume(a1);
}

id *sub_655D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (*(a1 + 24) == v7 || *(v7 - 64) != v5)
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = vdupq_n_s64(1uLL);
    v12 = v5;
    memset(v13, 0, sizeof(v13));
    v14 = 0;
    v15 = CGSizeZero;
    v16 = 0;
    sub_66CEC(a1 + 24, v10);

    v17 = v13;
    sub_63B5C(&v17);
  }

  v8 = sub_6578C((*(a1 + 32) - 56), v6);

  return v8 + 1;
}

void sub_656C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_63B10(va);

  _Unwind_Resume(a1);
}

double sub_656E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == -1)
  {
    return UIEdgeInsetsZero.top;
  }

  else
  {
    return sub_6504C(*(a1 + 112) + 152 * a2, (a3 - *(a1 + 64)) >> 3, (a4 - *(a1 + 64)) >> 3);
  }
}

uint64_t sub_65744(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_65978(a1, a2);
  }

  else
  {
    result = sub_65ABC(v3, a2) + 88;
  }

  *(a1 + 8) = result;
  return result;
}

id *sub_6578C(uint64_t *a1, void *a2)
{
  v3 = a2;
  for (i = *a1; i != a1[1]; i += 8)
  {
    v5 = *i;
    v6 = v5;
    if (v5 == v3)
    {
      goto LABEL_13;
    }

    v7 = [v5 identifier];
    v8 = [v3 identifier];
    v9 = v8;
    if (v7 == v8)
    {

LABEL_13:
      goto LABEL_14;
    }

    v10 = [v6 identifier];
    v11 = [v3 identifier];
    v12 = [v10 isEqual:v11];

    if (v12)
    {
      goto LABEL_13;
    }
  }

  v13 = v3;
  v20 = v13;
  __p = 0;
  v22 = 0;
  v23 = 0;
  v14 = CGSizeZero;
  v24 = CGPointZero;
  v25 = v14;
  v15 = a1[1];
  if (v15 >= a1[2])
  {
    v17 = sub_66A70(a1, &v20);
    v18 = __p;
    a1[1] = v17;
    if (v18)
    {
      v22 = v18;
      operator delete(v18);
    }
  }

  else
  {
    v20 = 0;
    *v15 = v13;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    __p = 0;
    v22 = 0;
    v23 = 0;
    v16 = v25;
    *(v15 + 32) = v24;
    *(v15 + 48) = v16;
    a1[1] = v15 + 64;
  }

  i = (a1[1] - 64);
LABEL_14:

  return i;
}

void sub_65924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_63C28(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_65978(uint64_t a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_4050();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_65B3C(a1, v6);
  }

  v13 = 0;
  v14 = 88 * v2;
  sub_65ABC(88 * v2, a2);
  v15 = (88 * v2 + 88);
  v7 = *(a1 + 8);
  v8 = 88 * v2 + *a1 - v7;
  sub_65B98(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_66688(&v13);
  return v12;
}

void sub_65AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_66688(va);
  _Unwind_Resume(a1);
}

uint64_t sub_65ABC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_65B3C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_3AAC();
}

uint64_t sub_65B98(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_65C64(a4, v7);
      v7 += 88;
      a4 = v12 + 88;
      v12 += 88;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_63D0C(a1, v5);
      v5 += 11;
    }
  }

  return sub_665FC(v9);
}

uint64_t sub_65C64(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_65D18(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_66354(a1 + 24, *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 5));
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_65D00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_63DA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_65D18(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_65DA0(result, a4);
  }

  return result;
}

void sub_65D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_63DA8(&a9);
  _Unwind_Resume(a1);
}

void sub_65DA0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_65DEC(a1, a2);
  }

  sub_4050();
}

void sub_65DEC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_3AAC();
}

uint64_t sub_65E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *v4 = *v6;
      *(v4 + 16) = v7;
      v8 = *(v6 + 32);
      v9 = *(v6 + 40);
      *(v4 + 48) = 0;
      *(v4 + 32) = v8;
      *(v4 + 40) = v9;
      *(v4 + 56) = 0;
      *(v4 + 64) = 0;
      sub_65F34(v4 + 48, *(v6 + 48), *(v6 + 56), (*(v6 + 56) - *(v6 + 48)) >> 6);
      *(v4 + 72) = *(v6 + 72);
      *(v4 + 88) = *(v6 + 88);
      v6 += 96;
      v4 = v14 + 96;
      v14 += 96;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_662C8(v11);
  return v4;
}

uint64_t sub_65F34(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_65FBC(result, a4);
  }

  return result;
}

void sub_65F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_63B5C(&a9);
  _Unwind_Resume(a1);
}

void sub_65FBC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    sub_65FF8(a1, a2);
  }

  sub_4050();
}

void sub_65FF8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_3AAC();
}

uint64_t sub_66040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      sub_6611C(v4 + 8, *(v6 + 8), *(v6 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 16) - *(v6 + 8)) >> 5));
      v7 = *(v6 + 48);
      *(v4 + 32) = *(v6 + 32);
      *(v4 + 48) = v7;
      v6 += 64;
      v4 = v12 + 64;
      v12 += 64;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_6623C(v9);
  return v4;
}

uint64_t sub_6611C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_66198(result, a4);
  }

  return result;
}

void sub_6617C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_66198(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_661E4(a1, a2);
  }

  sub_4050();
}

void sub_661E4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_3AAC();
}

uint64_t sub_6623C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_66274(a1);
  }

  return a1;
}

void sub_66274(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 64;
      sub_63BE4(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_662C8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_66300(a1);
  }

  return a1;
}

void sub_66300(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 12;
      sub_63E50(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_66354(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_663DC(result, a4);
  }

  return result;
}

void sub_663BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_63A20(&a9);
  _Unwind_Resume(a1);
}

void sub_663DC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_66428(a1, a2);
  }

  sub_4050();
}

void sub_66428(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_3AAC();
}

uint64_t sub_66480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *v4 = *v6;
      *(v4 + 16) = v7;
      v8 = *(v6 + 32);
      *(v4 + 40) = 0;
      *(v4 + 32) = v8;
      *(v4 + 48) = 0;
      *(v4 + 56) = 0;
      sub_65F34(v4 + 40, *(v6 + 40), *(v6 + 48), (*(v6 + 48) - *(v6 + 40)) >> 6);
      v9 = *(v6 + 64);
      *(v4 + 80) = *(v6 + 80);
      *(v4 + 64) = v9;
      *(v4 + 88) = *(v6 + 88);
      v6 += 96;
      v4 = v14 + 96;
      v14 += 96;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_66570(v11);
  return v4;
}

uint64_t sub_66570(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_665A8(a1);
  }

  return a1;
}

void sub_665A8(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 12;
      sub_63AC8(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_665FC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_66634(a1);
  }

  return a1;
}

void sub_66634(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 11;
      sub_63D0C(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_66688(uint64_t a1)
{
  sub_666C0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_666C0(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 88;
    sub_63D0C(v5, (v4 - 88));
  }
}

uint64_t sub_66708(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_4050();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_65DEC(a1, v6);
  }

  v7 = 96 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  v9 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(v7 + 32) = v9;
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 48) = 0;
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(v7 + 72) = *(a2 + 72);
  v10 = *(a2 + 88);
  *(a2 + 88) = 0;
  *(v7 + 88) = v10;
  *&v19 = 96 * v2 + 96;
  v11 = *(a1 + 8);
  v12 = 96 * v2 + *a1 - v11;
  sub_66878(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_6697C(&v17);
  return v16;
}

void sub_66864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_6697C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_66878(uint64_t a1, id *a2, id *a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 1);
      *a4 = *v7;
      *(a4 + 16) = v8;
      v9 = v7[4];
      v7[4] = 0;
      *(a4 + 32) = v9;
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = 0;
      *(a4 + 48) = *(v7 + 3);
      *(a4 + 64) = v7[8];
      v7[6] = 0;
      v7[7] = 0;
      v7[8] = 0;
      *(a4 + 72) = *(v7 + 9);
      v10 = v7[11];
      v7[11] = 0;
      *(a4 + 88) = v10;
      v7 += 12;
      a4 += 96;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      sub_63E50(a1, v5);
      v5 += 12;
    }
  }

  return sub_662C8(v12);
}

uint64_t sub_6697C(uint64_t a1)
{
  sub_669B4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_669B4(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    sub_63E50(v5, (v4 - 96));
  }
}

uint64_t sub_669FC(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = [v3 columnSpan];
  *(a1 + 24) = [v3 rowSpan];
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = CGSizeZero;
  *(a1 + 88) = 0;
  return a1;
}

uint64_t sub_66A70(uint64_t *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_4050();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    sub_65FF8(a1, v7);
  }

  v8 = v2 << 6;
  v17 = 0;
  v18 = v2 << 6;
  *(&v19 + 1) = 0;
  v9 = *a2;
  *a2 = 0;
  *v8 = v9;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = *(a2 + 1);
  *(v8 + 24) = a2[3];
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  v10 = *(a2 + 3);
  *(v8 + 32) = *(a2 + 2);
  *(v8 + 48) = v10;
  *&v19 = (v2 << 6) + 64;
  v11 = a1[1];
  v12 = (v2 << 6) + *a1 - v11;
  sub_66BA0(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_66C70(&v17);
  return v16;
}

void sub_66B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_66C70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_66BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *v7 = 0;
      *a4 = v8;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      v9 = *(v7 + 48);
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = v9;
      v7 += 64;
      a4 += 64;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      sub_63BE4(a1, v5);
      v5 += 64;
    }
  }

  return sub_6623C(v11);
}

void **sub_66C70(void **a1)
{
  sub_66CA4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_66CA4(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 64;
    sub_63BE4(v4, i - 64);
  }
}

uint64_t sub_66CEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_66D78(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    v5 = *(a2 + 32);
    *(a2 + 32) = 0;
    *(v3 + 32) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v6 = *(a2 + 64);
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 64) = v6;
    v7 = *(a2 + 88);
    *(a2 + 88) = 0;
    *(v3 + 88) = v7;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_66D78(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_4050();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_66428(a1, v6);
  }

  v7 = 96 * v2;
  v18 = 0;
  v19 = v7;
  *(&v20 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  v9 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(v7 + 32) = v9;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v10 = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 64) = v10;
  v11 = *(a2 + 88);
  *(a2 + 88) = 0;
  *(v7 + 88) = v11;
  *&v20 = 96 * v2 + 96;
  v12 = *(a1 + 8);
  v13 = 96 * v2 + *a1 - v12;
  sub_66EE4(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_66FE4(&v18);
  return v17;
}

void sub_66ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_66FE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_66EE4(uint64_t a1, id *a2, id *a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 1);
      *a4 = *v7;
      *(a4 + 16) = v8;
      v9 = v7[4];
      v7[4] = 0;
      *(a4 + 32) = v9;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v7 + 5);
      *(a4 + 56) = v7[7];
      v7[5] = 0;
      v7[6] = 0;
      v7[7] = 0;
      v10 = *(v7 + 4);
      *(a4 + 80) = v7[10];
      *(a4 + 64) = v10;
      v11 = v7[11];
      v7[11] = 0;
      *(a4 + 88) = v11;
      v7 += 12;
      a4 += 96;
    }

    while (v7 != a3);
    v16 = a4;
    v14 = 1;
    while (v5 != a3)
    {
      sub_63AC8(a1, v5);
      v5 += 12;
    }
  }

  return sub_66570(v13);
}

uint64_t sub_66FE4(uint64_t a1)
{
  sub_6701C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_6701C(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    sub_63AC8(v5, (v4 - 96));
  }
}

void sub_67064(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v16 = 0;
  v17 = 0;
  sub_67208(a2, a1, &v16);
  v6 = v17;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_67278;
  v13[3] = &unk_25F6A0;
  v15 = a1;
  v7 = v5;
  v14 = v7;
  [v6 enumerateIndexesUsingBlock:v13];

  v8 = v16;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_67290;
  v10[3] = &unk_25F6A0;
  v12 = a1;
  v9 = v7;
  v11 = v9;
  [v8 enumerateIndexesUsingBlock:v10];
}

void *sub_67208(void *result, void *a2, uint64_t *a3)
{
  v3 = result[6];
  for (i = result[7]; v3 != i; v3 += 64)
  {
    v7 = *(v3 + 8);
    v8 = *(v3 + 16);
    while (v7 != v8)
    {
      result = sub_672A0(a3, *(v7 + 8), *(v7 + 16), a2);
      v7 += 96;
    }
  }

  return result;
}

id sub_672A0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_650D0(a4, a2, a3);
  if (result == -1)
  {
    v9 = a4[8];
    v10 = (a3 - v9) >> 3;
    if (v10 > (a2 - v9) >> 3)
    {
      v11 = (a2 - v9) >> 3;
      v12 = *a1;
      if (!*a1)
      {
        v13 = objc_opt_new();
        v14 = *a1;
        *a1 = v13;

        v12 = *a1;
      }

      return [v12 addIndexesInRange:{v11, v10 - v11}];
    }
  }

  else
  {

    return sub_67378(a1, result, a4);
  }

  return result;
}

id sub_67378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == -1)
  {
    v4 = -1;
  }

  else
  {
    do
    {
      v4 = a2;
      a2 = *(*(a3 + 112) + 152 * a2 + 128);
    }

    while (a2 != -1);
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v6 = objc_opt_new();
    v7 = *(a1 + 8);
    *(a1 + 8) = v6;

    v5 = *(a1 + 8);
  }

  return [v5 addIndex:v4];
}

void sub_673FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = 0.0;
  v7 = 0.0;
  if (a3 != a4)
  {
    v9 = a3;
    do
    {
      v12 = sub_67498(v9, a2, a1, a5);
      if (v6 < v12)
      {
        v6 = v12;
      }

      v7 = v7 + v13;
      v9 += 64;
    }

    while (v9 != a4);
  }
}

double sub_67498(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  width = CGSizeZero.width;
  for (i = CGSizeZero.height; v5 != v6; v5 += 96)
  {
    v12 = sub_67540(v5, a2, a3, a4);
    if (width < v12)
    {
      width = v12;
    }

    if (i < v13)
    {
      i = v13;
    }
  }

  *(a1 + 48) = width;
  *(a1 + 56) = i;
  return width;
}

double sub_67540(uint64_t a1, int a2, uint64_t a3, double a4)
{
  sub_675BC(a4 - (*(a1 + 72) + *(a1 + 88)), a3, a2, *(a1 + 8), *(a1 + 16));
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  return v5 + *(a1 + 72) + *(a1 + 88);
}

id sub_675BC(double a1, uint64_t a2, int a3, id *a4, id *a5)
{
  v6 = 0.0;
  v7 = 0.0;
  if (a4 != a5)
  {
    v9 = a4;
    if (a3)
    {
      v10 = a1;
    }

    else
    {
      v10 = NAN;
    }

    do
    {
      [*v9 setContainingWidth:a1];
      [*v9 setContainingHeight:NAN];
      [*v9 setFlexedWidth:v10];
      [*v9 setFlexedHeight:NAN];
      [*v9 validateLayout];
      v11 = *v9++;
      result = [v11 computedNaturalSize];
      if (v6 < v13)
      {
        v6 = v13;
      }

      v7 = v7 + v14;
    }

    while (v9 != a5);
  }

  return result;
}

void *sub_6767C(void *result, void *a2, uint64_t *a3)
{
  v3 = result[5];
  for (i = result[6]; v3 != i; v3 += 64)
  {
    v7 = *(v3 + 8);
    v8 = *(v3 + 16);
    while (v7 != v8)
    {
      result = sub_672A0(a3, *(v7 + 8), *(v7 + 16), a2);
      v7 += 96;
    }
  }

  return result;
}

void sub_67714(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v3 < v2)
  {
    v4 = *(a1 + 24);
    do
    {
      v5 = *(**a1 + 88 * v3 + 24);
      if (v4 >= 0xAAAAAAAAAAAAAAABLL * ((*(**a1 + 88 * v3 + 32) - v5) >> 5))
      {
        v4 = 0;
        *(a1 + 8) = ++v3;
      }

      else
      {
        v6 = *(v5 + 96 * v4 + 32);
        v7 = [v6 role];

        v3 = *(a1 + 8);
        v2 = *(a1 + 16);
        if (v7 == &dword_0 + 3)
        {
          break;
        }

        v4 = *(a1 + 24) + 1;
      }

      *(a1 + 24) = v4;
    }

    while (v3 < v2);
  }

  if (v3 >= v2)
  {
    *(a1 + 8) = v2;
    *(a1 + 24) = 0;
  }
}

void sub_677F4(void *a1, unint64_t a2, uint64_t *a3)
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
    sub_67F74(a1, a2 - v3, a3);
  }
}

void sub_67824(void *a1, __int128 *size, uint64_t a3, __int128 *a4)
{
  if (a1[14] != a1[15])
  {
    v4 = a3;
    v25 = a4;
    v6 = 0;
    v7 = 0;
    memset(ptr, 0, sizeof(ptr));
    v8 = 64;
    v9 = size[1];
    v10 = ptr;
    v41 = *size;
    v42 = v9;
    while (1)
    {
      v11 = *(&v42 + 1);
      if (*(&v41 + 1) == *(v4 + 8) && *(&v42 + 1) == *(v4 + 24))
      {
        break;
      }

      v12 = *(*v41 + 88 * *(&v41 + 1) + 24);
      if (v6 >= v8)
      {
        v8 += 64;
        if (v10 == ptr)
        {
          v10 = malloc_type_malloc(8 * v8, 0x2004093837F09uLL);
          memcpy(v10, ptr, 8 * v6);
        }

        else
        {
          v10 = malloc_type_realloc(v10, 8 * v8, 0x2004093837F09uLL);
        }
      }

      v27 = v8;
      v28 = v10;
      v13 = (v12 + 96 * v11);
      *(v10 + v6) = v13;
      v14 = v13[5];
      v29 = v13[6];
      if (v14 != v29)
      {
        v15 = 0;
        do
        {
          v30 = v14;
          v17 = *(v14 + 8);
          v16 = *(v14 + 16);
          v31 = v16;
          while (v17 != v16)
          {
            v18 = a1[8];
            v32 = v17;
            v19 = (*(v17 + 8) - v18) >> 3;
            v20 = *(v17 + 16) - v18;
            if (v19 < v20 >> 3)
            {
              v21 = v20 >> 3;
              do
              {
                v22 = *(a1[11] + 8 * v19);
                if (v22 != -1)
                {
                  if (!v7)
                  {
                    v7 = objc_opt_new();
                  }

                  do
                  {
                    if (([v7 containsIndex:{v22, v25}] & 1) == 0)
                    {
                      v23 = a1[14] + 152 * v22;
                      *v23 = -1;
                      *(v23 + 8) = 0u;
                      *(v23 + 24) = 0u;
                      *(v23 + 40) = 0u;
                      [v7 addIndex:v22];
                    }

                    v24 = (a1[14] + 152 * v22);
                    sub_68144(v24, v6, *v13, v13[1], v15, v13[2], v13[3], 1uLL);
                    v22 = v24[16];
                  }

                  while (v22 != -1);
                }

                ++v19;
              }

              while (v19 != v21);
            }

            v16 = v31;
            v17 = v32 + 96;
          }

          ++v15;
          v14 = v30 + 64;
        }

        while (v30 + 64 != v29);
      }

      ++v6;
      ++*(&v42 + 1);
      sub_67714(&v41);
      v4 = a3;
      v8 = v27;
      v10 = v28;
    }

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_681B0;
    v37[3] = &unk_25F6C0;
    v37[4] = a1;
    v38 = *v25;
    v39 = *(v25 + 2);
    v40 = v10;
    [v7 enumerateRangesUsingBlock:v37];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_6842C;
    v33[3] = &unk_25F6C0;
    v33[4] = a1;
    v34 = *v25;
    v35 = *(v25 + 2);
    v36 = v10;
    [v7 enumerateRangesWithOptions:2 usingBlock:v33];
    if (v10 != ptr)
    {
      free(v10);
    }
  }
}

void sub_67BF8(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v8 = *(a1 + 96);
  if (*(a1 + 112))
  {
    if (v8 != 2)
    {
      return;
    }
  }

  else if (v8 != 2)
  {
    return;
  }

  sub_61E30(a1);
  if (a4)
  {
    sub_61938(a1, a2, a3);
  }
}

void sub_67F74(uint64_t a1, unint64_t a2, uint64_t *a3)
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
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_24CD00)));
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
      sub_4050();
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
      sub_65004(a1, v11);
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
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_24CD00)));
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

void *sub_68144(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (*result == -1)
  {
    *result = a2;
  }

  if (!result[4])
  {
    result[1] = a3;
    result[4] = a6;
  }

  if (!result[5])
  {
    result[2] = a4;
    result[5] = a7;
  }

  v8 = result[6];
  if (v8)
  {
    v9 = result[3];
    if (v9 >= a5)
    {
      v10 = a5;
    }

    else
    {
      v10 = result[3];
    }

    v11 = v9 + v8;
    if (v11 <= a8 + a5)
    {
      v11 = a8 + a5;
    }

    result[3] = v10;
    a8 = v11 - v10;
  }

  else
  {
    result[3] = a5;
  }

  result[6] = a8;
  return result;
}

void *sub_681B0(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    v5 = result[4];
    v6 = 152 * a2;
    do
    {
      v7 = *(v5 + 112) + v6;
      v8 = *(v4[8] + 8 * *v7);
      v9 = *(v7 + 112);
      v10 = *v7;
      v11 = *(v7 + 16);
      v12 = *(v7 + 32);
      v22 = *(v7 + 48);
      v21[1] = v11;
      v21[2] = v12;
      v21[0] = v10;
      v13 = sub_6829C(v4 + 5, v8, v9, v21);
      v15 = *(v7 + 128);
      if (v15 == -1)
      {
        p_y = &CGPointZero.y;
        v17 = &CGPointZero;
      }

      else
      {
        v16 = *(v5 + 112) + 152 * v15;
        v17 = (v16 + 136);
        p_y = (v16 + 144);
      }

      v19 = *p_y;
      x = v17->x;
      *(v7 + 136) = v13;
      *(v7 + 144) = v14;
      result = [*(v7 + 120) setComputedOrigin:{v13 - x, v14 - v19}];
      v6 += 152;
      --v3;
    }

    while (v3);
  }

  return result;
}

double sub_6829C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v8 = a1[2];
  sub_67BF8(*a1, a4[1], a4[4], 1);
  v10 = v9;
  sub_61938(*a1, a4[1], a4[4]);
  if (a3 && !*(v8 + 80))
  {
    [*(*(a2 + 40) + (a4[3] << 6)) valign];
    [*(*(a2 + 40) + ((a4[6] + a4[3] - 1) << 6)) valign];
  }

  return v10 + *(v8 + 64);
}

void sub_6842C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = a1[4];
    v6 = 152 * a3 + 152 * a2;
    do
    {
      v7 = *(v5 + 112) + v6;
      v8 = *(a1[8] + 8 * *(v7 - 152));
      v9 = *(v7 - 40);
      v10 = *(v7 - 152);
      v11 = *(v7 - 136);
      v12 = *(v7 - 120);
      v20 = *(v7 - 104);
      v19[1] = v11;
      v19[2] = v12;
      v19[0] = v10;
      v13 = sub_6829C(a1 + 5, v8, v9, v19);
      v15 = v14;
      v17 = v16;
      v18 = [*(v7 - 32) controller];
      [v18 validateGroupedContainingLayout:*(v7 - 32) withSize:{v15, v17}];

      v6 -= 152;
      --v3;
    }

    while (v3);
  }
}

double *sub_6850C(double *result, double a2, double a3)
{
  result[2] = a2;
  result[3] = a3;
  v3 = *result;
  if (*(result + 1) != *result)
  {
    v4 = a3;
    v6 = result;
    do
    {
      [*v3 computedNaturalSize];
      v8 = v7;
      v10 = *v3++;
      result = [v10 setComputedOrigin:{a2 + (v6[4] - v9) * 0.5, v4}];
      v4 = v4 + v8;
    }

    while (v3 != *(v6 + 1));
  }

  return result;
}

void sub_6858C(void *a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v8 = v7;
  v10 = a1[4];
  v9 = a1[5];
  if (v10 >= v9)
  {
    v12 = a1[3];
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v12) >> 3);
    v14 = v13 + 1;
    if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_4050();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v14;
    }

    v18[4] = a1 + 3;
    if (v16)
    {
      sub_68798((a1 + 3), v16);
    }

    v17 = 24 * v13;
    v18[0] = 0;
    v18[1] = v17;
    *v17 = v7;
    *(v17 + 8) = a3;
    *(v17 + 16) = a4;
    v18[2] = 24 * v13 + 24;
    v18[3] = 0;
    sub_686D8((a1 + 3), v18);
    v11 = a1[4];
    sub_687F0(v18);
  }

  else
  {
    *v10 = v7;
    v11 = v10 + 24;
    *(v10 + 8) = a3;
    *(v10 + 16) = a4;
  }

  a1[4] = v11;
}

void sub_686AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_687F0(va);

  _Unwind_Resume(a1);
}

void sub_686D8(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      *(v8 + 8) = *(v7 + 1);
      v7 += 3;
      v8 += 24;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5;
      v5 += 3;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void sub_68798(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_3AAC();
}

uint64_t sub_687F0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_68844(void *a1, uint64_t *size, uint64_t *a3, __int128 *a4)
{
  if (a1[14] != a1[15])
  {
    v4 = size;
    v22 = a4;
    memset(ptr, 0, sizeof(ptr));
    if (size == a3)
    {
      v6 = 0;
      v7 = ptr;
    }

    else
    {
      v6 = 0;
      v9 = 0;
      v10 = 64;
      v7 = ptr;
      do
      {
        if (v9 >= v10)
        {
          v10 += 64;
          if (v7 == ptr)
          {
            v7 = malloc_type_malloc(8 * v10, 0x2004093837F09uLL);
            memcpy(v7, ptr, 8 * v9);
          }

          else
          {
            v7 = malloc_type_realloc(v7, 8 * v10, 0x2004093837F09uLL);
          }
        }

        v24 = v10;
        v25 = v7;
        *(v7 + v9) = v4;
        v11 = v4[6];
        v26 = v4[7];
        if (v11 != v26)
        {
          v12 = 0;
          do
          {
            v27 = v11;
            v14 = *(v11 + 8);
            v13 = *(v11 + 16);
            v28 = v13;
            while (v14 != v13)
            {
              v15 = a1[8];
              v29 = v14;
              v16 = (*(v14 + 8) - v15) >> 3;
              v17 = *(v14 + 16) - v15;
              if (v16 < v17 >> 3)
              {
                v18 = v17 >> 3;
                do
                {
                  v19 = *(a1[11] + 8 * v16);
                  if (v19 != -1)
                  {
                    if (!v6)
                    {
                      v6 = objc_opt_new();
                    }

                    do
                    {
                      if (([v6 containsIndex:{v19, v22}] & 1) == 0)
                      {
                        v20 = a1[14] + 152 * v19;
                        *v20 = -1;
                        *(v20 + 8) = 0u;
                        *(v20 + 24) = 0u;
                        *(v20 + 40) = 0u;
                        [v6 addIndex:v19];
                      }

                      v21 = (a1[14] + 152 * v19);
                      sub_68144(v21, v9, *v4, v4[1], v12, v4[2], v4[3], 1uLL);
                      v19 = v21[16];
                    }

                    while (v19 != -1);
                  }

                  ++v16;
                }

                while (v16 != v18);
              }

              v13 = v28;
              v14 = v29 + 96;
            }

            ++v12;
            v11 = v27 + 64;
          }

          while (v27 + 64 != v26);
        }

        ++v9;
        v4 += 12;
        v10 = v24;
        v7 = v25;
      }

      while (v4 != a3);
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_68BD0;
    v34[3] = &unk_25F6C0;
    v34[4] = a1;
    v8 = v22;
    v35 = *v22;
    v36 = *(v22 + 2);
    v37 = v7;
    [v6 enumerateRangesUsingBlock:{v34, v22}];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_68E4C;
    v30[3] = &unk_25F6C0;
    v30[4] = a1;
    v31 = *v8;
    v32 = *(v8 + 2);
    v33 = v7;
    [v6 enumerateRangesWithOptions:2 usingBlock:v30];
    if (v7 != ptr)
    {
      free(v7);
    }
  }
}

void *sub_68BD0(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    v5 = result[4];
    v6 = 152 * a2;
    do
    {
      v7 = *(v5 + 112) + v6;
      v8 = *(v4[8] + 8 * *v7);
      v9 = *(v7 + 112);
      v10 = *v7;
      v11 = *(v7 + 16);
      v12 = *(v7 + 32);
      v22 = *(v7 + 48);
      v21[1] = v11;
      v21[2] = v12;
      v21[0] = v10;
      v13 = sub_68CBC(v4 + 5, v8, v9, v21);
      v15 = *(v7 + 128);
      if (v15 == -1)
      {
        p_y = &CGPointZero.y;
        v17 = &CGPointZero;
      }

      else
      {
        v16 = *(v5 + 112) + 152 * v15;
        v17 = (v16 + 136);
        p_y = (v16 + 144);
      }

      v19 = *p_y;
      x = v17->x;
      *(v7 + 136) = v13;
      *(v7 + 144) = v14;
      result = [*(v7 + 120) setComputedOrigin:{v13 - x, v14 - v19}];
      v6 += 152;
      --v3;
    }

    while (v3);
  }

  return result;
}

double sub_68CBC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v8 = a1[2];
  sub_67BF8(*a1, a4[1], a4[4], 1);
  v10 = v9;
  sub_61938(*a1, a4[1], a4[4]);
  if (a3 && !*(v8 + 32))
  {
    [*(*(a2 + 48) + (a4[3] << 6)) valign];
    [*(*(a2 + 48) + ((a4[6] + a4[3] - 1) << 6)) valign];
  }

  return v10 + *(v8 + 16);
}

void sub_68E4C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = a1[4];
    v6 = 152 * a3 + 152 * a2;
    do
    {
      v7 = *(v5 + 112) + v6;
      v8 = *(a1[8] + 8 * *(v7 - 152));
      v9 = *(v7 - 40);
      v10 = *(v7 - 152);
      v11 = *(v7 - 136);
      v12 = *(v7 - 120);
      v20 = *(v7 - 104);
      v19[1] = v11;
      v19[2] = v12;
      v19[0] = v10;
      v13 = sub_68CBC(a1 + 5, v8, v9, v19);
      v15 = v14;
      v17 = v16;
      v18 = [*(v7 - 32) controller];
      [v18 validateGroupedContainingLayout:*(v7 - 32) withSize:{v15, v17}];

      v6 -= 152;
      --v3;
    }

    while (v3);
  }
}

void sub_68F2C(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      v10 = *(v7 + 1);
      *(v8 + 24) = *(v7 + 3);
      *(v8 + 8) = v10;
      v7 += 5;
      v8 += 40;
    }

    while (v7 != v4);
    do
    {
      v11 = *v5;
      v5 += 5;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  *(a1 + 8) = v12;
  a2[1] = v12;
  v13 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v13;
  v14 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

void sub_68FF4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_3AAC();
}

uint64_t sub_6904C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_690A0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v3 < v2)
  {
    v4 = *(a1 + 24);
    do
    {
      v5 = *(**a1 + 88 * v3 + 24);
      if (v4 >= 0xAAAAAAAAAAAAAAABLL * ((*(**a1 + 88 * v3 + 32) - v5) >> 5))
      {
        v4 = 0;
        *(a1 + 8) = ++v3;
      }

      else
      {
        v6 = *(v5 + 96 * v4 + 32);
        v7 = [v6 role];

        v3 = *(a1 + 8);
        v2 = *(a1 + 16);
        if (v7 == &dword_4)
        {
          break;
        }

        v4 = *(a1 + 24) + 1;
      }

      *(a1 + 24) = v4;
    }

    while (v3 < v2);
  }

  if (v3 >= v2)
  {
    *(a1 + 8) = v2;
    *(a1 + 24) = 0;
  }
}

void sub_69180(void *a1, __int128 *size, uint64_t a3, __int128 *a4)
{
  if (a1[14] != a1[15])
  {
    v4 = a3;
    v25 = a4;
    v6 = 0;
    v7 = 0;
    memset(ptr, 0, sizeof(ptr));
    v8 = 64;
    v9 = size[1];
    v10 = ptr;
    v41 = *size;
    v42 = v9;
    while (1)
    {
      v11 = *(&v42 + 1);
      if (*(&v41 + 1) == *(v4 + 8) && *(&v42 + 1) == *(v4 + 24))
      {
        break;
      }

      v12 = *(*v41 + 88 * *(&v41 + 1) + 24);
      if (v6 >= v8)
      {
        v8 += 64;
        if (v10 == ptr)
        {
          v10 = malloc_type_malloc(8 * v8, 0x2004093837F09uLL);
          memcpy(v10, ptr, 8 * v6);
        }

        else
        {
          v10 = malloc_type_realloc(v10, 8 * v8, 0x2004093837F09uLL);
        }
      }

      v27 = v8;
      v28 = v10;
      v13 = (v12 + 96 * v11);
      *(v10 + v6) = v13;
      v14 = v13[5];
      v29 = v13[6];
      if (v14 != v29)
      {
        v15 = 0;
        do
        {
          v30 = v14;
          v17 = *(v14 + 8);
          v16 = *(v14 + 16);
          v31 = v16;
          while (v17 != v16)
          {
            v18 = a1[8];
            v32 = v17;
            v19 = (*(v17 + 8) - v18) >> 3;
            v20 = *(v17 + 16) - v18;
            if (v19 < v20 >> 3)
            {
              v21 = v20 >> 3;
              do
              {
                v22 = *(a1[11] + 8 * v19);
                if (v22 != -1)
                {
                  if (!v7)
                  {
                    v7 = objc_opt_new();
                  }

                  do
                  {
                    if (([v7 containsIndex:{v22, v25}] & 1) == 0)
                    {
                      v23 = a1[14] + 152 * v22;
                      *v23 = -1;
                      *(v23 + 8) = 0u;
                      *(v23 + 24) = 0u;
                      *(v23 + 40) = 0u;
                      [v7 addIndex:v22];
                    }

                    v24 = (a1[14] + 152 * v22);
                    sub_68144(v24, v6, *v13, v13[1], v15, v13[2], v13[3], 1uLL);
                    v22 = v24[16];
                  }

                  while (v22 != -1);
                }

                ++v19;
              }

              while (v19 != v21);
            }

            v16 = v31;
            v17 = v32 + 96;
          }

          ++v15;
          v14 = v30 + 64;
        }

        while (v30 + 64 != v29);
      }

      ++v6;
      ++*(&v42 + 1);
      sub_690A0(&v41);
      v4 = a3;
      v8 = v27;
      v10 = v28;
    }

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_69554;
    v37[3] = &unk_25F6C0;
    v37[4] = a1;
    v38 = *v25;
    v39 = *(v25 + 2);
    v40 = v10;
    [v7 enumerateRangesUsingBlock:v37];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_69640;
    v33[3] = &unk_25F6C0;
    v33[4] = a1;
    v34 = *v25;
    v35 = *(v25 + 2);
    v36 = v10;
    [v7 enumerateRangesWithOptions:2 usingBlock:v33];
    if (v10 != ptr)
    {
      free(v10);
    }
  }
}

void *sub_69554(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    v5 = result[4];
    v6 = 152 * a2;
    do
    {
      v7 = *(v5 + 112) + v6;
      v8 = *(v4[8] + 8 * *v7);
      v9 = *(v7 + 112);
      v10 = *v7;
      v11 = *(v7 + 16);
      v12 = *(v7 + 32);
      v22 = *(v7 + 48);
      v21[1] = v11;
      v21[2] = v12;
      v21[0] = v10;
      v13 = sub_6829C(v4 + 5, v8, v9, v21);
      v15 = *(v7 + 128);
      if (v15 == -1)
      {
        p_y = &CGPointZero.y;
        v17 = &CGPointZero;
      }

      else
      {
        v16 = *(v5 + 112) + 152 * v15;
        v17 = (v16 + 136);
        p_y = (v16 + 144);
      }

      v19 = *p_y;
      x = v17->x;
      *(v7 + 136) = v13;
      *(v7 + 144) = v14;
      result = [*(v7 + 120) setComputedOrigin:{v13 - x, v14 - v19}];
      v6 += 152;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_69640(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = a1[4];
    v6 = 152 * a3 + 152 * a2;
    do
    {
      v7 = *(v5 + 112) + v6;
      v8 = *(a1[8] + 8 * *(v7 - 152));
      v9 = *(v7 - 40);
      v10 = *(v7 - 152);
      v11 = *(v7 - 136);
      v12 = *(v7 - 120);
      v20 = *(v7 - 104);
      v19[1] = v11;
      v19[2] = v12;
      v19[0] = v10;
      v13 = sub_6829C(a1 + 5, v8, v9, v19);
      v15 = v14;
      v17 = v16;
      v18 = [*(v7 - 32) controller];
      [v18 validateGroupedContainingLayout:*(v7 - 32) withSize:{v15, v17}];

      v6 -= 152;
      --v3;
    }

    while (v3);
  }
}

void sub_69720(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 5);
        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

id sub_69EB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 lastObject];
  v5 = [v4 value];
  LOBYTE(a1) = [v5 isEqual:*(*(a1 + 32) + 24)];

  if (a1)
  {
    v6 = &__NSArray0__struct;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

void sub_6A120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_6A138(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_6CA14(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 48) = 0;
  v3 = *(a1 + 32);
  v4 = v3[5];
  if (v2 == v4)
  {
    v3[5] = 0;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    [WeakRetained hoverInteractionDidSettle:*(a1 + 32)];
  }

  else if (v4)
  {

    [v3 _checkIfSettledWithTime:?];
  }
}

void sub_6CC28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6CCE4;
  v7[3] = &unk_25F750;
  v10 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

id sub_6CCE4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 CGRectValue];
  result = CGRectContainsPoint(v7, *(a1 + 48));
  if (result)
  {
    result = [*(a1 + 32) addObject:*(a1 + 40)];
    *a4 = 1;
  }

  return result;
}

void sub_6DFE8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_6E3AC(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_4050();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_701F4(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void sub_6F288(uint64_t a1)
{
  [*(a1 + 32) setApplyPhase:1];
  if ([*(*(a1 + 40) + 96) layoutDirection] == &dword_0 + 2 && objc_msgSend(*(a1 + 32), "effectiveUserInterfaceLayoutDirection") != &dword_0 + 1)
  {
    v2 = 4;
    goto LABEL_7;
  }

  if ([*(*(a1 + 40) + 96) layoutDirection] == &dword_0 + 1 && objc_msgSend(*(a1 + 32), "effectiveUserInterfaceLayoutDirection"))
  {
    v2 = 3;
LABEL_7:
    [*(a1 + 32) setSemanticContentAttribute:v2];
  }

  [*(a1 + 32) contentOffset];
  v4 = v3;
  v6 = v5;
  [*(a1 + 32) bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *(a1 + 40);
  v16 = *(v15 + 128);
  if (v16)
  {
    if ((v16 & 2) != 0)
    {
      v18 = [*(a1 + 32) renderModel];
      v19 = [v18 anchorSet];
      v17 = [v19 scrollAnchorWithScrollView:*(a1 + 32) offset:{v4, v6}];
    }

    else
    {
      v17 = [*(v15 + 104) feedScrollAnchor];
    }

    y = CGPointZero.y;
    if (v17)
    {
      v21 = [v17 anchor];
      v22 = [v21 identifier];

      v23 = [*(*(a1 + 40) + 96) sections];
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_6F95C;
      v65[3] = &unk_25F7A0;
      v24 = v22;
      v66 = v24;
      v25 = [v23 indexOfObjectPassingTest:v65];

      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = [*(*(a1 + 40) + 96) sections];
        v27 = [v26 objectAtIndexedSubscript:v25];

        v28 = objc_opt_class();
        v29 = [*(*(a1 + 40) + 96) content];
        v30 = [v29 currentStackName];
        v31 = [v30 value];
        v32 = TUIDynamicCast(v28, v31);

        v33 = [v27 entry];
        v34 = [v33 stackNames];

        if ([v34 count] && v32 && !objc_msgSend(v34, "containsObject:", v32))
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v25 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v35 = [*(*(a1 + 40) + 96) sections];
          v36 = [v35 objectAtIndexedSubscript:v25];

          [v36 size];
          v38 = v37;
          [*(a1 + 32) bounds];
          v56 = v39;
          v40 = [v17 anchor];
          v41 = [v40 position];

          if (v41)
          {
            if (v41 == &dword_0 + 1)
            {
              [*(a1 + 32) adjustedContentInset];
              v42 = v56 - v38 - v43;
            }

            else
            {
              v42 = 0.0;
              if (v41 == &dword_0 + 2)
              {
                v42 = (v56 - v38) * 0.5;
              }
            }
          }

          else
          {
            [*(a1 + 32) adjustedContentInset];
            v42 = v44;
          }

          [v17 relativeDistance];
          v46 = v45;
          [v36 offset];
          y = v47 - (v42 + v56 * 0.5 * v46) - v6;
        }
      }
    }

    v4 = v4 + CGPointZero.x;
    v6 = v6 + y;
  }

  if (+[TUIFeedView areFeedUpdatesAnimated])
  {
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_6F9B0;
    v62[3] = &unk_25F840;
    v57 = *(a1 + 32);
    v48 = v57.i64[0];
    v63 = vextq_s8(v57, v57, 8uLL);
    v64[0] = *(a1 + 48);
    v64[1] = v8;
    v64[2] = v10;
    v64[3] = v12;
    v64[4] = v14;
    *&v64[5] = v4;
    *&v64[6] = v6;
    [TUIFeedView performAnimatedFeedUpdates:v62];
    v49 = &v63.i64[1];
    v50 = v64;
  }

  else
  {
    v51 = *(a1 + 32);
    v52 = [*(*(a1 + 40) + 152) model];
    v53 = *(a1 + 32);
    v54 = *(a1 + 40);
    v55 = *(v54 + 128);
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_6FFE0;
    v60[3] = &unk_25F7C8;
    v60[4] = v54;
    v61 = v53;
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_7006C;
    v58[3] = &unk_25F7F0;
    v59 = *(a1 + 48);
    [v51 performBatchUpdatesWithRenderModel:v52 flags:v55 block:v60 completion:v58];
    v49 = &v61;
    v50 = &v59;

    if (*(*(a1 + 40) + 128))
    {
      [*(a1 + 32) setContentOffset:0 animated:{v4, v6}];
    }
  }

  *(*(a1 + 40) + 112) = 4;
}

id sub_6F95C(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_6F9B0(uint64_t a1)
{
  if (*(*(a1 + 32) + 160))
  {
    [*(a1 + 40) setApplyPhase:2];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_6FB34;
    v14[3] = &unk_25F7C8;
    v2 = *(a1 + 40);
    v3 = *(a1 + 32);
    v15 = v2;
    v16 = v3;
    [UIView performWithoutAnimation:v14];
  }

  [*(a1 + 40) setApplyPhase:3];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6FC98;
  v7[3] = &unk_25F840;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v10 = *(a1 + 48);
  v6 = *(a1 + 72);
  v11 = *(a1 + 56);
  v12 = v6;
  v13 = *(a1 + 88);
  [TUIFeedView performAnimatedFeedUpdates:v7];
}

void sub_6FB34(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 160) model];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v5 + 128);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6FC0C;
  v7[3] = &unk_25F7C8;
  v7[4] = v5;
  v8 = v4;
  [v2 performBatchUpdatesWithRenderModel:v3 flags:v6 block:v7 completion:0];
}

void sub_6FC0C(uint64_t a1)
{
  [*(a1 + 32) _applyUpdates:*(a1 + 32) + 32 toFeedView:*(a1 + 40)];
  v2 = objc_alloc_init(TUIFeedViewInvalidationContext);
  [*(*(a1 + 32) + 160) applyToContext:?];
  [*(a1 + 40) invalidateWithContext:v2];
}

void sub_6FC98(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 168) model];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v5 + 128);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_6FF28;
  v20[3] = &unk_25F7C8;
  v20[4] = v5;
  v21 = v4;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_6FFB4;
  v18[3] = &unk_25F7F0;
  v19 = *(a1 + 48);
  [v2 performBatchUpdatesWithRenderModel:v3 flags:v6 block:v20 completion:v18];

  v7 = *(*(a1 + 40) + 128);
  if (v7)
  {
    if ((v7 & 4) != 0)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_6FFCC;
      v14[3] = &unk_25F818;
      v15 = *(a1 + 32);
      v16 = *(a1 + 88);
      v17 = 0;
      [UIView performWithoutAnimation:v14];
      v8 = v15;
    }

    else
    {
      v8 = +[_TUIAnimationState currentState];
      v9 = [v8 customAnimationForContentOffset];
      if (!v9 || (MaxY = CGRectGetMaxY(*(a1 + 56)), [*(a1 + 32) renderModel], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "size"), v13 = v12, v11, MaxY > v13))
      {
        [*(a1 + 32) setContentOffset:1 animated:{*(a1 + 88), *(a1 + 96)}];
      }
    }
  }
}

void sub_6FF28(uint64_t a1)
{
  [*(a1 + 32) _applyUpdates:*(a1 + 32) + 56 toFeedView:*(a1 + 40)];
  v2 = objc_alloc_init(TUIFeedViewInvalidationContext);
  [*(*(a1 + 32) + 168) applyToContext:?];
  [*(a1 + 40) invalidateWithContext:v2];
}

uint64_t sub_6FFB4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_6FFE0(uint64_t a1)
{
  [*(a1 + 32) _applyUpdates:*(a1 + 32) + 8 toFeedView:*(a1 + 40)];
  v2 = objc_alloc_init(TUIFeedViewInvalidationContext);
  [*(*(a1 + 32) + 152) applyToContext:?];
  [*(a1 + 40) invalidateWithContext:v2];
}

uint64_t sub_7006C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_701F4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_3AAC();
}

void sub_70468(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 32) "superclass")];
  v2 = [v1 mutableCopy];

  v3 = +[TUIAttributeSet supportedAttributesTextStyling];
  [v2 unionSet:v3];

  v6[0] = @"insets";
  v6[1] = @"text";
  v6[2] = @"return-key-type";
  v4 = [NSArray arrayWithObjects:v6 count:3];
  [v2 addAttributesFromArray:v4];

  v5 = qword_2E6258;
  qword_2E6258 = v2;
}

void sub_705C0(id a1)
{
  v4 = @"binding";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6268;
  qword_2E6268 = v2;
}

void sub_70CB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

id sub_70CD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v8 = [WeakRetained enabled];
  v9 = *(a1 + 48);
  v10 = objc_loadWeakRetained((a1 + 88));
  v11 = [v10 identifier];
  v12 = [TUITextView renderModelWithStates:v6 actionHandler:v4 viewState:v5 enabled:v8 name:v9 identifier:v11 editingInsets:*(a1 + 96) style:*(a1 + 104) placeholderText:*(a1 + 112) text:*(a1 + 120) returnKeyType:*(a1 + 56) keyboardAppearance:*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 128)];

  return v12;
}

uint64_t sub_71A28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = WeakRetained;
  if (WeakRetained && (v4 = [WeakRetained visibleBoundsGeneration], v5 = *(a1 + 32), v4 == *(v5 + 32)))
  {
    if (*(a1 + 40) == 1)
    {
      v6 = [*(v5 + 88) windowLowerLoadTriggered];
    }

    else
    {
      v6 = 0;
    }

    if (*(a1 + 41) == 1)
    {
      v6 |= [*(*(a1 + 32) + 88) windowLowerUnloadTriggered];
    }

    if (*(a1 + 42) == 1)
    {
      v6 |= [*(*(a1 + 32) + 88) windowUpperLoadTriggered];
    }

    if (*(a1 + 43) == 1)
    {
      LOBYTE(v6) = [*(*(a1 + 32) + 88) windowUpperUnloadTriggered] | v6;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

void sub_71C74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(*(a1 + 32) + 56) mapData:a2];
  (*(v2 + 16))(v2, v3);
}

void sub_71DA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(*(a1 + 32) + 56) mapData:a2];
  (*(v2 + 16))(v2, v3);
}

void sub_74520(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v14 = TUIDynamicCast(v4, v3);

  v5 = [v14 objectForKeyedSubscript:@"bindings"];
  v6 = objc_opt_class();
  v7 = [v14 objectForKeyedSubscript:@"template"];
  v8 = TUIDynamicCast(v6, v7);

  v9 = [NSURL URLWithString:v8 relativeToURL:*(*(a1 + 32) + 56)];
  v10 = [TUIFeedEntry feedEntryFromTemplateURL:v9 data:0 behaviors:0];
  v11 = [_TUIFeedCaptureSectionLoader alloc];
  v12 = [v10 uuid];
  v13 = [(_TUIFeedCaptureSectionLoader *)v11 initWithTemplateURL:v9 uuid:v12 bindings:v5];

  [v10 setDelegate:v13];
  [*(a1 + 40) addObject:v10];
  [*(a1 + 48) addObject:v13];
}

void sub_747FC(uint64_t a1, unint64_t a2)
{
  if ([*(*(a1 + 32) + 72) count] > a2 && objc_msgSend(*(a1 + 40), "count") > a2)
  {
    v4 = objc_opt_class();
    v5 = [*(a1 + 40) objectAtIndexedSubscript:a2];
    v12 = TUIDynamicCast(v4, v5);

    v6 = [v12 objectForKeyedSubscript:@"bindings"];
    v7 = objc_opt_class();
    v8 = [v12 objectForKeyedSubscript:@"template"];
    v9 = TUIDynamicCast(v7, v8);

    v10 = [NSURL URLWithString:v9 relativeToURL:*(*(a1 + 32) + 56)];
    v11 = [*(*(a1 + 32) + 72) objectAtIndexedSubscript:a2];
    [v11 updateTemplateURL:v10 bindings:v6];
  }
}

id sub_75584(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_77C48;
  v14[3] = &unk_25FAE0;
  v8 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v15 = v8;
  v16 = v5;
  v17 = v6;
  v9 = v6;
  v10 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v14];

  v11 = v17;
  v12 = v8;

  return v8;
}

id sub_756A4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isFileURL] && objc_msgSend(v4, "isFileURL"))
  {
    v5 = [v3 standardizedURL];
    v6 = [v5 pathComponents];

    v7 = [v4 standardizedURL];
    v8 = [v7 pathComponents];

    v9 = 0;
    if ([v6 count])
    {
      do
      {
        if (v9 >= [v8 count])
        {
          break;
        }

        v10 = [v6 objectAtIndexedSubscript:v9];
        v11 = [v8 objectAtIndexedSubscript:v9];
        v12 = [v10 isEqualToString:v11];

        if (!v12)
        {
          break;
        }

        ++v9;
      }

      while (v9 < [v6 count]);
    }

    v13 = objc_opt_new();
    v14 = [v6 subarrayWithRange:{v9, objc_msgSend(v6, "count") - v9}];
    [v13 addObjectsFromArray:v14];

    while (v9 < [v8 count])
    {
      [v13 insertObject:@".." atIndex:0];
    }

    v15 = [v13 componentsJoinedByString:@"/"];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_7608C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dictionaryRepresentation];
  [v2 addObject:v3];
}

void sub_762EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 aTemplate];
  v3 = [v4 package];
  [v2 addObject:v3];
}

void sub_76680(uint64_t a1, void *a2)
{
  v3 = [a2 dynamicStates];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_76720;
  v4[3] = &unk_25F978;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void sub_76720(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 kind];
  [v2 addObject:v3];
}

void sub_76778(uint64_t a1, void *a2)
{
  v3 = [a2 dynamicStates];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_7681C;
  v5[3] = &unk_25F9A0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 enumerateObjectsUsingBlock:v5];
}

void sub_7681C(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 kind];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [v10 instance];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (!v7)
    {
      v7 = objc_alloc_init(NSMutableSet);
      v8 = *(a1 + 40);
      v9 = [v10 instance];
      [v8 setObject:v7 forKeyedSubscript:v9];
    }

    [v7 addObject:v10];
  }
}

void sub_76900(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_7698C;
  v4[3] = &unk_25F9F0;
  v5 = *(a1 + 32);
  [a3 enumerateObjectsUsingBlock:v4];
}

void sub_7698C(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = objc_opt_new();
  v4 = [v3 instance];
  v5 = sub_76B20(v4, 0, 0);
  [v12 setObject:v5 forKeyedSubscript:@"instance"];

  v6 = [v3 parameters];
  v7 = sub_76B20(v6, 0, 0);
  [v12 setObject:v7 forKeyedSubscript:@"parameters"];

  v8 = objc_opt_new();
  v9 = [v3 value];

  v10 = sub_76B20(v9, v8, @"value");
  [v12 setObject:v10 forKeyedSubscript:@"value"];

  [v8 removeObject:@"value"];
  if ([v8 count])
  {
    v11 = [v8 allObjects];
    [v12 setObject:v11 forKeyedSubscript:@"dynamicKeyPaths"];
  }

  [*(a1 + 32) addObject:v12];
}

id sub_76B20(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v15 = 0;
    goto LABEL_23;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = v5;
    v9 = objc_alloc_init(_TUIFeedCaptureDynamicObserver);
    v10 = [v8 instanceForObserver:v9];
    v11 = TUIProtocolCast(&OBJC_PROTOCOL___TUIDynamicArrayInstance, v10);
    v12 = TUIProtocolCast(&OBJC_PROTOCOL___TUIDynamicValueInstance, v10);
    v13 = v12;
    if (v11)
    {
      if (v7)
      {
        [v6 addObject:v7];
      }

      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = sub_77D10;
      v35 = sub_77D20;
      v36 = 0;
      v14 = [v11 count];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_77D28;
      v27[3] = &unk_25FB08;
      v30 = &v31;
      v28 = v6;
      v29 = v7;
      [v11 objectsInRange:0 block:{v14, v27}];
      v15 = v32[5];

      v16 = v28;
    }

    else
    {
      if (!v12)
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v15 = [NSString stringWithFormat:@"invalid dynamic instance -- %@", v20];

        goto LABEL_17;
      }

      if (v7)
      {
        [v6 addObject:v7];
      }

      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = sub_77D10;
      v35 = sub_77D20;
      v36 = 0;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_77E9C;
      v23[3] = &unk_25FB30;
      v26 = &v31;
      v24 = v6;
      v25 = v7;
      [v13 valueWithBlock:v23];
      v15 = v32[5];

      v16 = v24;
    }

    _Block_object_dispose(&v31, 8);
LABEL_17:

    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = sub_77D7C(v5, v6, v7);
LABEL_22:
    v15 = v17;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = sub_75584(v5, v6, v7);
    goto LABEL_22;
  }

  if ([NSJSONSerialization isValidJSONObject:v5]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = v5;
    goto LABEL_22;
  }

  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v15 = [NSString stringWithFormat:@"invalid JSON object -- %@", v22];

LABEL_23:

  return v15;
}

void sub_76F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_772A0(uint64_t a1, void *a2)
{
  v3 = [a2 imageResources];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_77340;
  v4[3] = &unk_25FA40;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void sub_77340(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 kind];
  [v2 addObject:v3];
}

void sub_77398(uint64_t a1, void *a2)
{
  v3 = [a2 imageResources];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_7743C;
  v5[3] = &unk_25FA68;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 enumerateObjectsUsingBlock:v5];
}

void sub_7743C(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 kind];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [v10 instance];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (!v7)
    {
      v7 = objc_alloc_init(NSMutableSet);
      v8 = *(a1 + 40);
      v9 = [v10 instance];
      [v8 setObject:v7 forKeyedSubscript:v9];
    }

    [v7 addObject:v10];
  }
}

void sub_77520(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_775C4;
  v5[3] = &unk_25FA90;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [a3 enumerateObjectsUsingBlock:v5];
}

void sub_775C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 instance];
  v6 = sub_76B20(v5, 0, 0);
  [v4 setObject:v6 forKeyedSubscript:@"instance"];

  v7 = [v3 options];
  v8 = sub_76B20(v7, 0, 0);
  [v4 setObject:v8 forKeyedSubscript:@"options"];

  v9 = [v3 resource];
  v10 = [v9 imageContentWithOptions:2];

  if (([v10 flags] & 1) == 0)
  {
    [v10 intrinsicSize];
    v12 = v11;
    v60[0] = @"width";
    v13 = [NSNumber numberWithDouble:?];
    v60[1] = @"height";
    v61[0] = v13;
    v14 = [NSNumber numberWithDouble:v12];
    v61[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
    [v4 setObject:v15 forKeyedSubscript:@"intrinsicSize"];
  }

  v16 = [v3 resource];
  v17 = [v16 imageContentWithOptions:2];

  v18 = [v17 image];

  if (v18)
  {
    v19 = [v17 image];
    v20 = [v19 newImage];

    v55 = v17;
    [v17 insets];
    v25.f64[0] = v24;
    v25.f64[1] = v21;
    v26.f64[0] = v22;
    v26.f64[1] = v23;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v25, *&UIEdgeInsetsZero.top), vceqq_f64(v26, *&UIEdgeInsetsZero.bottom)))) & 1) == 0)
    {
      v58[0] = @"top";
      v56 = v22;
      v51 = v21;
      v53 = v23;
      v27 = [NSNumber numberWithDouble:?];
      v59[0] = v27;
      v58[1] = @"left";
      v28 = [NSNumber numberWithDouble:v51];
      v59[1] = v28;
      v58[2] = @"right";
      v29 = [NSNumber numberWithDouble:v53];
      v59[2] = v29;
      v58[3] = @"bottom";
      [NSNumber numberWithDouble:v56];
      v31 = v30 = a1;
      v59[3] = v31;
      v32 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:4];
      [v4 setObject:v32 forKeyedSubscript:@"insets"];

      a1 = v30;
    }

    v54 = v20;
    v52 = UIImagePNGRepresentation(v20);
    v33 = objc_opt_class();
    v34 = [v3 instance];
    v35 = TUIDynamicCast(v33, v34);

    v36 = @"image";
    if (v35)
    {
      v36 = v35;
    }

    v50 = v36;
    v57 = a1;
    v37 = *(a1 + 32);
    v38 = [v3 instance];
    v39 = [NSString stringWithFormat:@"%@.png", v38];
    v40 = [v37 URLByAppendingPathComponent:v39];

    v41 = +[NSFileManager defaultManager];
    v42 = [v40 path];
    LODWORD(v39) = [v41 fileExistsAtPath:v42];

    if (v39)
    {
      v43 = 1;
      do
      {
        v44 = [v3 instance];
        v45 = [NSString stringWithFormat:@"%@-%lu.png", v44, v43];
        v46 = [v40 URLByAppendingPathComponent:v45];

        v47 = +[NSFileManager defaultManager];
        v48 = [v46 path];
        LOBYTE(v44) = [v47 fileExistsAtPath:v48];

        ++v43;
        v40 = v46;
      }

      while ((v44 & 1) != 0);
    }

    else
    {
      v46 = v40;
    }

    [v52 writeToURL:v46 atomically:0];
    a1 = v57;
    v49 = sub_756A4(v46, *(v57 + 32));
    [v4 setObject:v49 forKeyedSubscript:@"url"];

    v17 = v55;
  }

  [*(a1 + 40) addObject:v4];
}

void sub_77C48(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  if (v6)
  {
    v8 = [v6 stringByAppendingFormat:@".%@", v10];
  }

  else
  {
    v8 = v10;
  }

  v9 = sub_76B20(v5, v7, v8);
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];

  if (v6)
  {
  }
}

uint64_t sub_77D10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_77D28(uint64_t a1, void *a2)
{
  v3 = sub_77D7C(a2, *(a1 + 32), *(a1 + 40));
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_77D7C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_77EF0;
  v14[3] = &unk_25FB58;
  v15 = v5;
  v16 = v6;
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v17 = v8;
  v9 = v6;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:v14];

  v11 = v17;
  v12 = v8;

  return v8;
}

void sub_77E9C(void *a1, uint64_t a2)
{
  v3 = sub_76B20(a2, a1[4], a1[5]);
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_77EF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_76B20(a2, *(a1 + 32), *(a1 + 40));
  if (v3)
  {
    v4 = v3;
    [*(a1 + 48) addObject:v3];
    v3 = v4;
  }
}

void sub_78438(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_78454(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = *(a1 + 32);
    v9[0] = WeakRetained;
    v9[1] = v3;
    v7 = [NSArray arrayWithObjects:v9 count:2];
    v8 = [v6 callWithArguments:v7];
  }
}

id TUIBundle()
{
  if (qword_2E6280 != -1)
  {
    sub_199DE4();
  }

  v1 = qword_2E6278;

  return v1;
}

void sub_7867C(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = qword_2E6278;
  qword_2E6278 = v1;
}

void sub_78AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_78B10(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [*(a1 + 32) addObject:{@", "}];
  }

  [*(a1 + 32) addObject:v8];
  [*(a1 + 32) addObject:@" = "];
  v6 = *(a1 + 32);
  v7 = [v5 description];
  [v6 addObject:v7];

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_796D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_796F0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [*(a1 + 32) addObject:{@", "}];
  }

  [*(a1 + 32) addObject:v8];
  [*(a1 + 32) addObject:@" = "];
  v6 = *(a1 + 32);
  v7 = [v5 description];
  [v6 addObject:v7];

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void *sub_7A100(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      sub_7AC0C(result, a2);
    }

    sub_4050();
  }

  return result;
}

void sub_7A1D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7ADEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7A93C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 != a2)
  {
    sub_7AED4(&v7, a3, *(a1 + 8), a2);
    sub_7AE80(a1, v5);
  }

  return a2;
}

uint64_t sub_7A994(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_7AF68(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *v3 = v4;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 32) = v6;
    *(v3 + 48) = v7;
    *(v3 + 16) = v5;
    result = v3 + 72;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_7AC0C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_3AAC();
}

uint64_t sub_7AC68(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      v4[1] = 0;
      *a4 = v5;
      v6 = *(v4 + 1);
      v7 = *(v4 + 2);
      v8 = *(v4 + 3);
      *(a4 + 64) = v4[8];
      *(a4 + 32) = v7;
      *(a4 + 48) = v8;
      *(a4 + 16) = v6;
      v4 += 9;
      a4 += 72;
    }

    while (v4 != a3);
    v13 = a4;
  }

  v11 = 1;
  sub_7AD10(a1, a2, a3);
  return sub_7AD58(v10);
}

void sub_7AD10(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 9;
    }

    while (v4 != a3);
  }
}

uint64_t sub_7AD58(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_7ADA4(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_7ADA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 72);
      v6 -= 72;
    }

    while (v6 != a5);
  }
}

uint64_t sub_7ADEC(uint64_t a1)
{
  sub_7AE24(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_7AE24(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
  }
}

void sub_7AE80(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 72)
  {

    v5 = *(i - 72);
  }

  *(a1 + 8) = a2;
}

uint64_t *sub_7AED4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      v8 = *a4;
      *a4 = v7;

      v9 = v5[1];
      v5[1] = 0;
      v10 = *(a4 + 8);
      *(a4 + 8) = v9;

      v11 = *(v5 + 1);
      v12 = *(v5 + 2);
      v13 = *(v5 + 3);
      *(a4 + 64) = v5[8];
      *(a4 + 32) = v12;
      *(a4 + 48) = v13;
      *(a4 + 16) = v11;
      v5 += 9;
      a4 += 72;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_7AF68(uint64_t a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_4050();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_7AC0C(a1, v6);
  }

  v7 = 72 * v2;
  v18 = 0;
  v19 = 72 * v2;
  *(&v20 + 1) = 0;
  v8 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *v7 = v8;
  v10 = a2[2];
  v9 = a2[3];
  v11 = *(a2 + 8);
  *(v7 + 16) = a2[1];
  *(v7 + 32) = v10;
  *(v7 + 64) = v11;
  *(v7 + 48) = v9;
  *&v20 = 72 * v2 + 72;
  v12 = *(a1 + 8);
  v13 = 72 * v2 + *a1 - v12;
  sub_7AC68(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_7ADEC(&v18);
  return v17;
}

void sub_7B0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_7ADEC(va);
  _Unwind_Resume(a1);
}

void sub_7B0C4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_7AE80(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_7B720(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  v5 = *(a1 + 32);
  v6 = [v7 description];
  [v5 appendString:v6];
}

void sub_7BDD0(id a1)
{
  v4 = @"n";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6288;
  qword_2E6288 = v2;
}

void sub_7C088(id a1)
{
  v4 = @"n";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6298;
  qword_2E6298 = v2;
}

void sub_7C330(id a1)
{
  v4[0] = @"n";
  v4[1] = @"v";
  v1 = [NSArray arrayWithObjects:v4 count:2];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E62A8;
  qword_2E62A8 = v2;
}

void sub_7C75C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4 = a2;
  v7 = [v3 objectForKey:v4];
  v5 = [*(*(a1 + 32) + 32) objectForKey:v4];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained scrollToItemsMatchingQuery:v4 atScrollPosition:1 animated:objc_msgSend(v7 skipVoiceOverFocus:{"BOOLValue"), objc_msgSend(v5, "BOOLValue")}];
}

void sub_7CA20(id a1)
{
  v1 = objc_alloc_init(TUIStarRatingImageCache);
  v2 = qword_2E62B8;
  qword_2E62B8 = v1;
}

double *sub_7CE74(double *result)
{
  if (*(result + 5))
  {
    v1 = result;
    v2 = 0;
    do
    {
      result = [*(v1 + 4) drawAtPoint:{floor((v1[10] + v1[12]) * v2++) - v1[7], -v1[6]}];
    }

    while (v2 < *(v1 + 5));
  }

  return result;
}

void sub_7D574(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v49 = a3;
  v50 = a2;
  [*(a1 + 32) containingWidth];
  [v50 setContainingWidth:?];
  [*(a1 + 32) containingHeight];
  [v50 setContainingHeight:?];
  [*(a1 + 32) flexedWidth];
  [v50 setFlexedWidth:?];
  [*(a1 + 32) flexedHeight];
  [v50 setFlexedHeight:?];
  v7 = [v50 box];
  [v7 minScale];
  v9 = v8;

  v10 = [v50 box];
  [v10 maxScale];
  v12 = v11;

  v13 = fmax(v9, 0.01);
  v14 = fmax(v13, fmin(v12, 1.0));
  v15 = (v14 * 100.0);
  v16 = (v13 * 100.0);
  v17 = (v14 * 100.0 + 1.0);
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    [v50 setScale:{v15 / 100.0, v49}];
    [v50 validateLayout];
    [v50 computedBoundsWithFlags:3];
    x = v52.origin.x;
    y = v52.origin.y;
    width = v52.size.width;
    height = v52.size.height;
    MinX = CGRectGetMinX(v52);
    if (TUICGFloatIsGreaterThanOrAlmostEqualFloat(MinX, 0.0) && (v53.origin.x = x, v53.origin.y = y, v53.size.width = width, v53.size.height = height, MinY = CGRectGetMinY(v53), TUICGFloatIsGreaterThanOrAlmostEqualFloat(MinY, 0.0)) && ([*(a1 + 32) containingWidth], v54.origin.x = x, v54.origin.y = y, v54.size.width = width, v54.size.height = height, MaxX = CGRectGetMaxX(v54), objc_msgSend(*(a1 + 32), "containingWidth"), TUICGFloatIsLessThanOrAlmostEqualFloat(MaxX, v26)) && (objc_msgSend(*(a1 + 32), "containingHeight"), v55.origin.x = x, v55.origin.y = y, v55.size.width = width, v55.size.height = height, MaxY = CGRectGetMaxY(v55), objc_msgSend(*(a1 + 32), "containingHeight"), TUICGFloatIsLessThanOrAlmostEqualFloat(MaxY, v28)) && (objc_msgSend(*(a1 + 32), "flexedWidth"), v56.origin.x = x, v56.origin.y = y, v56.size.width = width, v56.size.height = height, v29 = CGRectGetMaxX(v56), objc_msgSend(*(a1 + 32), "flexedWidth"), TUICGFloatIsLessThanOrAlmostEqualFloat(v29, v30)) && (objc_msgSend(*(a1 + 32), "flexedHeight"), v57.origin.x = x, v57.origin.y = y, v57.size.width = width, v57.size.height = height, v31 = CGRectGetMaxY(v57), objc_msgSend(*(a1 + 32), "flexedHeight"), TUICGFloatIsLessThanOrAlmostEqualFloat(v31, v32)) && (v33 = objc_msgSend(*(a1 + 32), "specifiedWidth"), v35 = v34, v36 = *(&v33 + 1), v37 = objc_msgSend(*(a1 + 32), "specifiedHeight"), v39 = v38, v58.origin.x = x, v58.origin.y = y, v58.size.width = width, v58.size.height = height, v40 = CGRectGetMaxX(v58), TUICGFloatIsGreaterThanOrAlmostEqualFloat(v40, v36)) && (v59.origin.x = x, v59.origin.y = y, v59.size.width = width, v59.size.height = height, v41 = CGRectGetMaxX(v59), TUICGFloatIsLessThanOrAlmostEqualFloat(v41, v35)) && (v60.origin.x = x, v60.origin.y = y, v60.size.width = width, v60.size.height = height, v42 = CGRectGetMaxY(v60), TUICGFloatIsGreaterThanOrAlmostEqualFloat(v42, *(&v37 + 1))) && (v61.origin.x = x, v61.origin.y = y, v61.size.width = width, v61.size.height = height, v43 = CGRectGetMaxY(v61), TUICGFloatIsLessThanOrAlmostEqualFloat(v43, v39)))
    {
      objc_storeStrong((*(a1 + 32) + 112), a2);
      v44 = 0;
      *(*(a1 + 32) + 104) = v49;
      v45 = v15 + v17 + 1;
      v16 = v15;
      v18 = v15;
    }

    else
    {
      v45 = v16 + v15;
      v44 = 1;
      v17 = v15;
    }

    v15 = v45 >> 1;
  }

  while (v45 >> 1 < v17 && v16 < v17);
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0;
  }

  if (v46)
  {
    v47 = (v13 * 100.0);
  }

  else
  {
    v47 = v18;
  }

  if (v47 != 0x7FFFFFFFFFFFFFFFLL && v47 != v15)
  {
    [v50 setScale:v47 / 100.0];
    [v50 validateLayout];
  }

  if ((v46 & 1) == 0)
  {
    *a4 = 1;
  }
}

void sub_7DE00(id a1)
{
  v4 = @"binding";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E62C8;
  qword_2E62C8 = v2;
}

void sub_7E498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 88));
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  objc_destroyWeak((v22 - 88));
  _Unwind_Resume(a1);
}

id sub_7E4DC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v53 = a5;
  v52 = a4;
  v51 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v9 = [WeakRetained menuContainer];
  v10 = [v9 menuModel];
  v11 = objc_loadWeakRetained((a1 + 80));
  v12 = [v11 menuIsPrimary];
  v13 = *(a1 + 32);
  v14 = objc_loadWeakRetained((a1 + 88));
  v46 = [v10 menuWithIsPrimary:v12 actionObject:v13 actionDelegate:v14];

  v42 = *(a1 + 40);
  v45 = *(a1 + 48);
  v50 = objc_loadWeakRetained((a1 + 80));
  v43 = [v50 linkEntities];
  v49 = objc_loadWeakRetained((a1 + 80));
  v40 = [v49 enabled];
  v48 = objc_loadWeakRetained((a1 + 80));
  [v48 pressedScale];
  v16 = v15;
  v47 = objc_loadWeakRetained((a1 + 80));
  [v47 touchInsets];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v44 = objc_loadWeakRetained((a1 + 80));
  v37 = [v44 identifier];
  v38 = *(a1 + 56);
  v41 = objc_loadWeakRetained((a1 + 80));
  v25 = [v41 pointer];
  v39 = objc_loadWeakRetained((a1 + 80));
  v26 = [v39 focusStyle];
  v27 = objc_loadWeakRetained((a1 + 80));
  LOBYTE(v12) = [v27 menuIsPrimary];
  v29 = *(a1 + 64);
  v28 = *(a1 + 72);
  v30 = objc_loadWeakRetained((a1 + 80));
  LOBYTE(WeakRetained) = [v30 enableBackgroundForHighlightPreview];
  v31 = objc_loadWeakRetained((a1 + 80));
  BYTE1(v36) = [v31 enableShadowForHighlightPreview];
  LOBYTE(v36) = WeakRetained;
  LOBYTE(v35) = v12;
  LOBYTE(v34) = v40;
  v32 = [TUIControlView renderModelWithStateToButtonAttributes:0 stateToRenderModel:v51 imageModelIDToResource:v52 actionHandler:v42 viewState:v45 linkEntities:v43 type:v16 role:v18 userInterfaceStyle:v20 enabled:v22 pressScale:v24 touchInsets:0 identifier:0 style:0 pointer:v34 focusStyle:v37 menu:v38 contextMenuIsPrimaryAction:v25 name:v26 axAttributes:v46 enableBackgroundForHighlightPreview:v35 enableShadowForHighlightPreview:v29, v28, v36];

  [v32 setAnimationGroups:v53];

  return v32;
}

const __CFString *NSStringFromTUITriggerState(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_260488[a1 - 1];
  }
}

void sub_7FF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_7FF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateVisible:a3];
}

void sub_80D88(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 appendObjectsWithProtocol:*(a1 + 32) toArray:*(a1 + 40)];
  }
}

id sub_810FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = [WeakRetained invalidateInstantiation:*(a1 + 32)];

  return v3;
}

void sub_81274(void *a1, void *a2)
{
  v5 = a1[4];
  v4 = a1[5];
  v6 = *(v5 + 80) & 0xFFFFFFFFFFFFFFFDLL;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_81330;
  v10[3] = &unk_260500;
  v10[4] = v5;
  v7 = v4;
  v9 = a1[6];
  v8 = a1[7];
  v11 = v7;
  v13 = v8;
  v14 = v6;
  v12 = v9;
  [a2 enumerateObjectsUsingBlock:v10];
}

void sub_81330(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v16 = objc_opt_new();
  v6 = TUIEnumeratorNotNil(*(*(a1 + 32) + 16));
  v7 = objc_alloc_init(*(*(a1 + 32) + 64));
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(a1 + 56);
  v11 = [*(v9 + 72) uniqueID];
  v12 = *(a1 + 64);
  v13 = *(*(a1 + 32) + 20);
  if (v6)
  {
    v14 = [v8 evaluateEnumerator:*(v9 + 16) withObject:v5 atIndex:a3 count:v10 uniqueID:v11 nodes:v13 flags:v12 containingObject:v16 builder:v7];
  }

  else
  {
    v14 = [v8 evaluateBinding:*(v9 + 28) withObject:v5 atIndex:a3 count:v10 uniqueID:v11 nodes:v13 flags:v12 containingObject:v16 builder:v7];
  }

  v15 = v14;

  [v7 finalizeModelsWithParent:v16 context:*(a1 + 40)];
  [v16 setInstantiateResult:v15];
  [*(a1 + 48) addObject:v16];
}

void sub_81610(uint64_t a1)
{
  v106 = [*(*(a1 + 32) + 8) mutableCopy];
  if (!v106)
  {
    v106 = objc_alloc_init(NSMutableArray);
  }

  v3 = *(a1 + 32);
  if (*(a1 + 64) == 1 && (*(v3 + 104) & 4) != 0)
  {
    v4 = [*(v3 + 72) fetchWindow];
    v3 = *(a1 + 32);
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [*(v3 + 72) fetchWindow];
      v3 = *(a1 + 32);
      if (v5 < *(v3 + 96))
      {
        v6 = [*(v3 + 72) fetchDelta];
        if (v6)
        {
          v7 = v6 == 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v7 = 1;
        }

        if (v7)
        {
          v8 = 1;
        }

        else
        {
          v8 = v6;
        }

        v9 = (a1 + 32);
        if (v8 >= *(*(a1 + 32) + 96))
        {
          v10 = *(*(a1 + 32) + 96);
        }

        else
        {
          v10 = v8;
        }

        [v106 removeObjectsInRange:{0, v10}];
        *(*v9 + 96) -= v10;
        *(*v9 + 88) += v10;
        v11 = [*(a1 + 40) statsCollector];
        [v11 recordEvent:21];

        v3 = *v9;
      }
    }
  }

  *(v3 + 104) &= ~4u;
  v12 = *(a1 + 32);
  if (*(a1 + 64) == 1 && (*(v12 + 104) & 8) != 0)
  {
    v13 = [*(v12 + 72) fetchWindow];
    v12 = *(a1 + 32);
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [*(v12 + 72) fetchWindow];
      v12 = *(a1 + 32);
      if (v14 < *(v12 + 96))
      {
        v15 = [*(v12 + 72) fetchDelta];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        v17 = (a1 + 32);
        v18 = *(*(a1 + 32) + 96);
        if (v16 >= v18)
        {
          v19 = *(*(a1 + 32) + 96);
        }

        else
        {
          v19 = v16;
        }

        [v106 removeObjectsInRange:{v18 - v19, v19}];
        *(*v17 + 96) -= v19;
        v20 = [*(a1 + 40) statsCollector];
        [v20 recordEvent:23];

        v12 = *v17;
      }
    }
  }

  *(v12 + 104) &= ~8u;
  v21 = *(a1 + 32);
  if (*(a1 + 64) == 1 && (*(v21 + 104) & 1) != 0)
  {
    v22 = [*(v21 + 72) fetchDelta];
    v21 = *(a1 + 32);
    v23 = *(v21 + 88);
    if (v23)
    {
      if (v22 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v22 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v22;
        }

        if (v22 <= v23)
        {
          v25 = v24;
        }

        else
        {
          v25 = *(v21 + 88);
        }

        if (v22 <= v23)
        {
          v26 = v23 - v24;
        }

        else
        {
          v26 = 0;
        }

        if (v25)
        {
          v27 = *(v21 + 32);
          v140[0] = _NSConcreteStackBlock;
          v140[1] = 3221225472;
          v140[2] = sub_82254;
          v140[3] = &unk_260550;
          v140[4] = v21;
          v141 = *(a1 + 40);
          v143 = v26;
          v144 = v25;
          v142 = v106;
          [v27 objectsInRange:v26 block:{v25, v140}];
          *(*(a1 + 32) + 88) = v26;
          *(*(a1 + 32) + 96) += v25;
        }

        v28 = [*(a1 + 40) statsCollector];
        [v28 recordEvent:20];

        v21 = *(a1 + 32);
      }
    }
  }

  *(v21 + 104) &= ~1u;
  v29 = *(a1 + 32);
  if (*(a1 + 64) == 1 && (*(v29 + 104) & 2) != 0)
  {
    v31 = [*(v29 + 72) fetchDelta];
    v32 = *(a1 + 32);
    v33 = *(v32 + 88);
    v34 = *(v32 + 96);
    v35 = [*(v32 + 32) count];
    v29 = *(a1 + 32);
    if (v34 + v33 < v35 && v31 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v36 = *(v29 + 88);
      v37 = *(v29 + 96);
      v38 = [*(v29 + 32) count];
      v29 = *(a1 + 32);
      v39 = &v38[-*(v29 + 96) - *(v29 + 88)];
      if (v39)
      {
        if (v31 <= 1)
        {
          v40 = 1;
        }

        else
        {
          v40 = v31;
        }

        if (v40 >= v39)
        {
          v41 = &v38[-*(v29 + 96) - *(v29 + 88)];
        }

        else
        {
          v41 = v40;
        }

        v42 = v37 + v36;
        v43 = *(v29 + 32);
        v135[0] = _NSConcreteStackBlock;
        v135[1] = 3221225472;
        v135[2] = sub_82410;
        v135[3] = &unk_260550;
        v135[4] = v29;
        v136 = *(a1 + 40);
        v138 = v42;
        v139 = v41;
        v137 = v106;
        [v43 objectsInRange:v42 block:{v41, v135}];
        *(*(a1 + 32) + 96) += v41;
        v44 = [*(a1 + 40) statsCollector];
        [v44 recordEvent:22];

        v29 = *(a1 + 32);
      }
    }
  }

  *(v29 + 104) &= ~2u;
  if (*(a1 + 64) == 1 && [*(*(a1 + 32) + 72) fetchWindow] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v45 = *(a1 + 32);
    v46 = *(v45 + 96);
    v30 = v46 < [*(v45 + 72) fetchWindow];
  }

  else
  {
    v30 = 1;
  }

  v105 = v30;
  v102 = v109;
  v103 = v116;
  v104 = v129 | 0x6AE1000000000000;
  *&v2 = 134218498;
  v101 = v2;
  while (1)
  {
    v47 = *(a1 + 32);
    v49 = *(v47 + 88);
    v48 = *(v47 + 96);
    v50 = [*(v47 + 32) count];
    v51 = -[TUIIndexMapper initWithCount:]([TUIIndexMapper alloc], "initWithCount:", [*(*(a1 + 32) + 32) count]);
    v52 = *(a1 + 32);
    v53 = *(v52 + 32);
    v54 = *(a1 + 48);
    v129[0] = _NSConcreteStackBlock;
    v129[1] = 3221225472;
    v129[2] = sub_825C8;
    v129[3] = &unk_260578;
    v129[4] = v52;
    v134 = v105;
    v55 = v106;
    v130 = v55;
    v131 = *(a1 + 40);
    v56 = v51;
    v132 = v56;
    v133 = *(a1 + 56);
    v107 = [v53 applyUpdatesForTransactionGroup:v54 withBlock:v129];
    if (!v107)
    {
      break;
    }

    v57 = [(TUIIndexMapper *)v56 fetchIndexes];
    v58 = [*(*(a1 + 32) + 32) count];
    v123 = 0;
    v124 = &v123;
    v125 = 0x3032000000;
    v126 = sub_8299C;
    v127 = sub_829AC;
    v128 = 0;
    v59 = *(a1 + 32);
    v60 = v59[9];
    if (v60)
    {
      v61 = [v60 fetchWindow];
      v59 = *(a1 + 32);
      if ((v61 != 0x7FFFFFFFFFFFFFFFLL || v58 < v50) && (v49 != v59[11] || v48 != v59[12]))
      {
        v62 = (v58 - v48);
        if (v49 < &v48[v49] - v58)
        {
          v62 = 0;
        }

        if (&v48[v49] <= v58)
        {
          v63 = v49;
        }

        else
        {
          v63 = v62;
        }

        if (&v48[v63] <= v58)
        {
          v64 = v48;
        }

        else
        {
          v64 = v58;
        }

        if (&v48[v63] <= v58)
        {
          v65 = v63;
        }

        else
        {
          v65 = 0;
        }

        v66 = [v57 mutableCopy];
        v67 = v124[5];
        v124[5] = v66;

        while (1)
        {
          v68 = *(a1 + 32);
          v69 = *(v68 + 88);
          if (v65 >= v69 || *(v68 + 96) + v69 >= v58)
          {
            break;
          }

          v70 = +[NSNull null];
          [v55 insertObject:v70 atIndex:0];

          --*(*(a1 + 32) + 88);
          ++*(*(a1 + 32) + 96);
          [v124[5] addIndex:*(*(a1 + 32) + 88)];
        }

        while (v69 < v65 && *(v68 + 96))
        {
          [v55 removeObjectAtIndex:0];
          ++*(*(a1 + 32) + 88);
          --*(*(a1 + 32) + 96);
          v68 = *(a1 + 32);
          v69 = *(v68 + 88);
        }

        while (1)
        {
          v72 = *(v68 + 96);
          if (v72 >= v64 || *(v68 + 88) + v72 >= v58)
          {
            break;
          }

          v71 = +[NSNull null];
          [v55 addObject:v71];

          [v124[5] addIndex:*(*(a1 + 32) + 96) + *(*(a1 + 32) + 88)];
          ++*(*(a1 + 32) + 96);
          v68 = *(a1 + 32);
        }

        v73 = [*(v68 + 72) fetchWindow];
        if (v73 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v74 = [*(*(a1 + 32) + 72) fetchDelta];
          if (v74 <= 1)
          {
            v75 = 1;
          }

          else
          {
            v75 = v74;
          }

          v76 = &v73[2 * v75];
          if (v73 <= v64)
          {
            v77 = v64;
          }

          else
          {
            v77 = v73;
          }

          if (v76 >= v77)
          {
            v64 = v77;
          }

          else
          {
            v64 = v76;
          }
        }

        v59 = *(a1 + 32);
        if (v64 >= &v58[-v59[11]])
        {
          v78 = &v58[-v59[11]];
        }

        else
        {
          v78 = v64;
        }

        for (; v59[12] > v78; v59 = *(a1 + 32))
        {
          [v55 removeLastObject];
          --*(*(a1 + 32) + 96);
        }
      }
    }

    v79 = v59[11];
    v80 = v59[12];
    if (v80)
    {
      if (v79)
      {
        v81 = 0;
      }

      else
      {
        v81 = v80 == v58;
      }

      if (!v81)
      {
        goto LABEL_115;
      }
    }

    else
    {
      if (v79)
      {
        v82 = v79 == 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v82 = 1;
      }

      if (!v82)
      {
LABEL_115:
        if (v124[5])
        {
          if (v79)
          {
            goto LABEL_117;
          }

LABEL_119:
          v83 = 0;
        }

        else
        {
          v84 = [v57 mutableCopy];
          v85 = v124[5];
          v124[5] = v84;

          v59 = *(a1 + 32);
          if (!v59[11])
          {
            goto LABEL_119;
          }

LABEL_117:
          [v124[5] removeIndexesInRange:0];
          v59 = *(a1 + 32);
          v83 = v59[11];
        }

        if (v58 > v59[12] + v83)
        {
          [v124[5] removeIndexesInRange:?];
        }
      }
    }

    v86 = objc_opt_class();
    v115[0] = _NSConcreteStackBlock;
    v115[1] = 3221225472;
    v116[0] = sub_829B4;
    v116[1] = &unk_2605A0;
    v87 = *(a1 + 32);
    v120 = v86;
    v116[2] = v87;
    v88 = v56;
    v121 = v58;
    v122 = v50;
    v117 = v88;
    v119 = &v123;
    v89 = v57;
    v118 = v89;
    [v55 enumerateObjectsUsingBlock:v115];
    v90 = v124[5];
    if (v90)
    {
      v91 = [v90 copy];

      v89 = v91;
    }

    v92 = *(*(a1 + 32) + 96);
    if (v92 != [v55 count])
    {
      v93 = TUIInstantiationLog();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        v98 = [*(a1 + 40) feedId];
        v99 = NSStringFromRange(*(*(a1 + 32) + 88));
        v100 = [v55 count];
        *buf = v101;
        v146 = v98;
        v147 = 2114;
        v148 = v99;
        v149 = 2048;
        v150 = v100;
        _os_log_error_impl(&dword_0, v93, OS_LOG_TYPE_ERROR, "[fid:%lu] instantiateWindow %{public}@ has different length than children %lu", buf, 0x20u);
      }

      if (_TUIDeviceHasInternalInstall())
      {
        objc_exception_throw([[NSException alloc] initWithName:@"InstatiateWindowAndChildrenMismatch" reason:@"The instantiateWindow and children has mismatching length" userInfo:0]);
      }
    }

    v94 = *(*(a1 + 32) + 32);
    v108[0] = _NSConcreteStackBlock;
    v108[1] = 3221225472;
    v109[0] = sub_82B0C;
    v109[1] = &unk_2605F0;
    v95 = v89;
    v110 = v95;
    v96 = *(a1 + 40);
    v97 = *(a1 + 32);
    v111 = v96;
    v112 = v97;
    v114 = v58;
    v113 = v55;
    [v94 objectsAtIndexes:v95 block:v108];

    _Block_object_dispose(&v123, 8);
    if ((v107 & 1) == 0)
    {
      goto LABEL_131;
    }
  }

LABEL_131:
  [*(a1 + 32) updateModelChildren:v55];
  [*(a1 + 56) layoutUpdateWindowRange:{*(*(a1 + 32) + 88), *(*(a1 + 32) + 96)}];
}