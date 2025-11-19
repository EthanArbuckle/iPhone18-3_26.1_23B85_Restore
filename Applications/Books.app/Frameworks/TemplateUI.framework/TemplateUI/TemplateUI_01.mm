id sub_223D0(uint64_t a1)
{
  [*(*(a1 + 32) + 24) clearImpressions];
  sub_22428(*(*(a1 + 32) + 48), *(*(a1 + 32) + 24), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 q_updateSnapshotIfNeededWithTime:v3];
}

void sub_22428(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v5 identifiers];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = [v5 attributesMap];
        v14 = [v13 objectForKeyedSubscript:v12];

        v15 = [v14 data];
        [v14 size];
        v16 = [v6 impressionForData:v15 size:1 create:?];

        [v16 becameVisibleAtTime:a3];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v17 = [v5 identifierNodeMap];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_22B58;
  v19[3] = &unk_25E328;
  v21 = a3;
  v20 = v6;
  v18 = v6;
  [v17 enumerateKeysAndObjectsUsingBlock:v19];
}

void sub_22748(uint64_t a1)
{
  v6 = objc_opt_new();
  [*(a1 + 32) q_collectImpressions:*(a1 + 48) time:? flush:? stats:?];
  if (*(a1 + 56) == 1)
  {
    sub_22428(*(*(a1 + 32) + 48), *(*(a1 + 32) + 24), *(a1 + 48));
    v2 = *(a1 + 32);
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;
  }

  v4 = v6;
  if (*(a1 + 40))
  {
    v5 = [[TUIImpressionSnapshot alloc] initWithMap:v6];
    (*(*(a1 + 40) + 16))();

    v4 = v6;
  }
}

void sub_228C8(uint64_t a1)
{
  v4 = objc_alloc_init(_TUIImpressionStats);
  sub_22428(*(*(a1 + 32) + 48), v4, *(a1 + 48));
  v2 = objc_opt_new();
  [*(a1 + 32) q_collectImpressions:v2 time:0 threshold:v4 flush:*(a1 + 48) stats:0.0];
  v3 = [[TUIImpressionSnapshot alloc] initWithMap:v2];
  (*(*(a1 + 40) + 16))();
}

void sub_229C8(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_2E6040 = [v1 BOOLForKey:@"TUIOverlayImpressions"];
}

void sub_237A8(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSizeAndIntrinsic];
  v2 = [v1 mutableCopy];

  v6[0] = @"play-state";
  v6[1] = @"color";
  v6[2] = @"parameters";
  v3 = [NSArray arrayWithObjects:v6 count:3];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E6048;
  qword_2E6048 = v4;
}

uint64_t TUI::Evaluation::Variables::Modern::Modern(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_25E378;
  *(a1 + 8) = off_25E4A8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  v8 = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = a4;
  TUI::Evaluation::Variables::Scope::Scope((a1 + 72));
  TUI::Evaluation::Variables::Scope::Scope((a1 + 920));
  *(a1 + 1848) = 0u;
  *(a1 + 1864) = 0u;
  *(a1 + 1816) = 0u;
  *(a1 + 1832) = 0u;
  *(a1 + 1784) = 0u;
  *(a1 + 1800) = 0u;
  *(a1 + 1768) = 0u;
  *(a1 + 1880) = 1065353216;

  return a1;
}

void sub_23A28(_Unwind_Exception *a1)
{
  TUI::Evaluation::Variables::Scope::~Scope((v1 + 72));

  v4 = *(v1 + 24);
  if (v4)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void TUI::Evaluation::Variables::Modern::~Modern(TUI::Evaluation::Variables::Modern *this)
{
  *this = off_25E378;
  *(this + 1) = off_25E4A8;
  sub_28770(this + 1848);
  v6 = (this + 1824);
  sub_286D0(&v6);
  v2 = *(this + 227);
  if (v2)
  {
    sub_11420(v2);
  }

  v3 = *(this + 225);
  if (v3)
  {
    sub_11420(v3);
  }

  v4 = *(this + 221);
  if (v4)
  {
    *(this + 222) = v4;
    operator delete(v4);
  }

  TUI::Evaluation::Variables::Scope::~Scope((this + 920));
  TUI::Evaluation::Variables::Scope::~Scope((this + 72));

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }
}

{
  TUI::Evaluation::Variables::Modern::~Modern(this);

  operator delete();
}

id TUI::Evaluation::Variables::Modern::setupGlobalBindings(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_23BF0;
  v3[3] = &unk_25E4E8;
  v3[4] = a1;
  return [a2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_23BF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  v9 = [v5 UTF8String];
  v10 = strlen(v9);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_6768();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v17 = v10;
  if (v10)
  {
    memmove(&__p, v9, v10);
  }

  *(&__p + v11) = 0;
  v12 = TUI::Symbol::Tab::lookupEntry(v8, &__p);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v12 <= 0xFFFEFFFF && v12 != 0xFFFF)
  {
    v14 = -65536;
    v15 = v12;
    TUI::Evaluation::Enumerator::State::State(&__p, v14, v15);
    objc_storeStrong(&v18, a3);
    TUI::Evaluation::Variables::Scope::define(v7 + 72, v12, &__p);
    TUI::Evaluation::Enumerator::State::~State(&__p);
  }
}

void sub_23D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  TUI::Evaluation::Enumerator::State::~State(&__p);

  _Unwind_Resume(a1);
}

void TUI::Evaluation::Variables::Modern::_popCapture(TUI::Evaluation::Variables::Modern *this)
{
  v2 = *(this + 222);
  v4 = *(v2 - 16);
  v3 = *(v2 - 8);
  *(this + 222) = v2 - 16;
  v5 = TUI::Evaluation::Variables::Scope::popClosure((this + 920));
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 32));

    if (WeakRetained)
    {
      TUI::Evaluation::Variables::Modern::popComponent(this, 0);
    }
  }

  if (v3)
  {
    *(this + 2) = v3;
    [v3 model];
    v7 = *(this + 227);
    *(this + 113) = v8;
    if (v7)
    {
      sub_11420(v7);
    }
  }
}

void TUI::Evaluation::Variables::Modern::popComponent(TUI::Evaluation::Variables::Modern *this, int a2)
{
  v4 = *(this + 3);
  v3 = *(this + 4);
  *(this + 4) = v3 - 120;
  if (v4 == v3 - 120)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v3 - 240);
  }

  *(this + 2) = v5;
  if (a2)
  {
    TUI::Evaluation::Variables::Modern::_popCapture(this);
  }

  TUI::Evaluation::Variables::Scope::popScope((this + 920));
}

void TUI::Evaluation::Variables::Modern::_pushCapture(uint64_t a1, TUI::Evaluation::Variables::Capture **a2)
{
  if (*a2)
  {
    WeakRetained = objc_loadWeakRetained(*a2 + 4);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = *a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 1776);
  v7 = *(a1 + 1784);
  if (v6 >= v7)
  {
    v9 = *(a1 + 1768);
    v10 = (v6 - v9) >> 4;
    v11 = v10 + 1;
    if ((v10 + 1) >> 60)
    {
      sub_4050();
    }

    v12 = v7 - v9;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_287F4(a1 + 1768, v13);
    }

    v14 = (16 * v10);
    *v14 = v4;
    v14[1] = v5;
    v8 = 16 * v10 + 16;
    v15 = *(a1 + 1768);
    v16 = *(a1 + 1776) - v15;
    v17 = (16 * v10 - v16);
    memcpy(v17, v15, v16);
    v18 = *(a1 + 1768);
    *(a1 + 1768) = v17;
    *(a1 + 1776) = v8;
    *(a1 + 1784) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v6 = v4;
    v6[1] = v5;
    v8 = (v6 + 2);
  }

  *(a1 + 1776) = v8;
  v19 = *a2;
  if (*a2)
  {
    if (*(v19 + 5))
    {
      v20 = TUI::Evaluation::Variables::Capture::_bitCheck(v19, 0);
    }

    else
    {
      v20 = 1;
    }

    v21 = v20 ^ 1;
  }

  else
  {
    v21 = 1;
  }

  TUI::Evaluation::Variables::Scope::pushClosure((a1 + 920), v21);
  if (WeakRetained)
  {
    TUI::Evaluation::Variables::Modern::pushComponent(a1, WeakRetained, 1, 0);
  }

  else
  {
    v22 = *a2;
    if (*a2 && (!*(v22 + 5) || TUI::Evaluation::Variables::Capture::_bitCheck(v22, 0) && (!*(*a2 + 5) || (TUI::Evaluation::Variables::Capture::_bitCheck(*a2, 1uLL) & 1) == 0)))
    {
      *(a1 + 16) = 0;
      v23 = *(a1 + 1816);
      *(a1 + 1808) = 0u;
      if (v23)
      {
        sub_11420(v23);
      }
    }
  }
}

void TUI::Evaluation::Variables::Modern::pushComponent(TUI::Evaluation::Variables::Modern *this, TUIComponent *a2, int a3, char a4)
{
  v7 = a2;
  v8 = v7;
  *(this + 2) = v7;
  if (v7)
  {
    [(TUIComponent *)v7 model];
    v9 = v53;
  }

  else
  {
    v9 = 0uLL;
  }

  v53 = 0uLL;
  v10 = *(this + 227);
  *(this + 113) = v9;
  if (v10)
  {
    sub_11420(v10);
    if (*(&v53 + 1))
    {
      sub_11420(*(&v53 + 1));
    }
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  if (a3)
  {
    v11 = *(this + 4);
    while (v11 != *(this + 3))
    {
      v12 = *(v11 - 120);
      v11 -= 120;
      if (v12 == v8)
      {
        v13 = 0;
        v14 = *(v11 + 8);
        v15 = *(v11 + 40);
        v54 = *(v11 + 24);
        v55 = v15;
        v53 = v14;
        v16 = *(v11 + 56);
        v17 = *(v11 + 72);
        v18 = *(v11 + 104);
        v58 = *(v11 + 88);
        v59 = v18;
        v56 = v16;
        v57 = v17;
        goto LABEL_14;
      }
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

LABEL_14:
  TUI::Evaluation::Variables::Scope::pushScope((this + 920), 63);
  TUI::Evaluation::Variables::Capture::emptyClosedComponentPassthrough(&v51);
  TUI::Evaluation::Variables::Modern::_pushCapture(this, &v51);
  if (v52)
  {
    sub_11420(v52);
  }

  if (v13)
  {
    TUI::Evaluation::Variables::Scope::beginMark((this + 920), &v44);
    v57 = v48;
    v58 = v49;
    v59 = v50;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v56 = v47;
    if (a3)
    {
      v19 = *(*(this + 226) + 72);
      if ([v19 count])
      {
        v20 = *(this + 226);
        v22 = *(v20 + 24);
        v21 = *(v20 + 32);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_11420(v21);
        }

        if (v22)
        {
          v23 = *(this + 226);
          v24 = *(v23 + 24);
          v25 = *(v23 + 32);
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_264C4;
          v43[3] = &unk_25E508;
          v43[4] = this;
          TUI::Evaluation::Variables::Capture::enumerate(v24, v43);
          if (v25)
          {
            sub_11420(v25);
          }
        }
      }

      else
      {
      }

      v26 = *(this + 6);
      v27 = *(this + 227);
      v41 = *(this + 226);
      v42 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      TUI::Evaluation::Context::evaluateComponentLocals(v26, &v41);
      if (v42)
      {
        sub_11420(v42);
      }
    }

    TUI::Evaluation::Variables::Scope::endMark(this + 115, &v53);
  }

  if ((a4 & 1) == 0)
  {
    TUI::Evaluation::Variables::Modern::_popCapture(this);
  }

  v49 = v58;
  v50 = v59;
  v44 = v53;
  v45 = v54;
  v47 = v56;
  v48 = v57;
  v46 = v55;
  v28 = *(this + 4);
  v29 = *(this + 5);
  if (v28 >= v29)
  {
    v31 = *(this + 3);
    v32 = 0xEEEEEEEEEEEEEEEFLL * ((v28 - v31) >> 3);
    v33 = v32 + 1;
    if (v32 + 1 > 0x222222222222222)
    {
      sub_4050();
    }

    v34 = 0xEEEEEEEEEEEEEEEFLL * ((v29 - v31) >> 3);
    if (2 * v34 > v33)
    {
      v33 = 2 * v34;
    }

    if (v34 >= 0x111111111111111)
    {
      v35 = 0x222222222222222;
    }

    else
    {
      v35 = v33;
    }

    if (v35)
    {
      sub_290E0(this + 24, v35);
    }

    v36 = 120 * v32;
    *v36 = v8;
    *(v36 + 56) = v47;
    *(v36 + 72) = v48;
    *(v36 + 88) = v49;
    *(v36 + 104) = v50;
    *(v36 + 8) = v44;
    *(v36 + 24) = v45;
    *(v36 + 40) = v46;
    v30 = 120 * v32 + 120;
    v37 = *(this + 3);
    v38 = *(this + 4) - v37;
    v39 = 120 * v32 - v38;
    memcpy((v36 - v38), v37, v38);
    v40 = *(this + 3);
    *(this + 3) = v39;
    *(this + 4) = v30;
    *(this + 5) = 0;
    if (v40)
    {
      operator delete(v40);
    }
  }

  else
  {
    *v28 = v8;
    *(v28 + 56) = v47;
    *(v28 + 72) = v48;
    *(v28 + 88) = v49;
    *(v28 + 104) = v50;
    *(v28 + 8) = v44;
    *(v28 + 24) = v45;
    *(v28 + 40) = v46;
    v30 = v28 + 120;
  }

  *(this + 4) = v30;
}

void sub_24444(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_11420(v2);
  }

  _Unwind_Resume(a1);
}

void TUI::Evaluation::Variables::Modern::newSnapshot(uint64_t a1, unsigned int a2)
{
  v4 = [*(a1 + 56) packageBuffer];
  if (TUIClosureNotNil(a2) && v4[47] > a2)
  {
    if (v4[46] + 28 * a2)
    {
      TUI::Evaluation::Variables::Capture::create(*(a1 + 16), *(a1 + 56), &v5);
    }
  }

  TUI::Evaluation::Variables::Capture::create(*(a1 + 16), &v5);
  operator new();
}

void sub_245C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_11420(a14);
  }

  _Unwind_Resume(exception_object);
}

void TUI::Evaluation::Variables::Modern::evaluateWithSnapshot(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 1792);
  v7 = *(a1 + 1800);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  TUI::Evaluation::Variables::Scope::Scope(v32);
  v30 = 0uLL;
  v31 = 0;
  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1792) = v9;
  v10 = *(a1 + 1800);
  *(a1 + 1800) = v8;
  if (v10)
  {
    sub_11420(v10);
  }

  TUI::Evaluation::Variables::Scope::swap((a1 + 920), v32);
  v11 = *(a1 + 1768);
  *(a1 + 1768) = 0;
  v12 = *(a1 + 1784);
  *(a1 + 1776) = 0u;
  v13 = *(a1 + 1824);
  *(a1 + 1824) = v30;
  v29 = v11;
  v30 = v13;
  v14 = *(a1 + 1840);
  *(a1 + 1840) = v31;
  v31 = v14;
  v15 = *(a1 + 16);
  v16 = *(a1 + 1808);
  v17 = *(a1 + 1816);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  WeakRetained = objc_loadWeakRetained((*(*(a1 + 1792) + 8) + 32));
  if (WeakRetained)
  {
    TUI::Evaluation::Variables::Modern::pushComponent(a1, WeakRetained, 1, 0);
  }

  else
  {
    *(a1 + 16) = 0;
    v19 = *(a1 + 1816);
    *(a1 + 1808) = 0u;
    if (v19)
    {
      sub_11420(v19);
    }
  }

  v5[2](v5);
  if (WeakRetained)
  {
    v21 = *(a1 + 24);
    v20 = *(a1 + 32);
    *(a1 + 32) = v20 - 120;
    if (v21 == v20 - 120)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v20 - 240);
    }

    *(a1 + 16) = v22;
    TUI::Evaluation::Variables::Scope::popScope((a1 + 920));
  }

  *(a1 + 16) = v15;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 1808) = v16;
  v23 = *(a1 + 1816);
  *(a1 + 1816) = v17;
  if (v23)
  {
    sub_11420(v23);
  }

  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 1792) = v6;
  v24 = *(a1 + 1800);
  *(a1 + 1800) = v7;
  if (v24)
  {
    sub_11420(v24);
  }

  TUI::Evaluation::Variables::Scope::swap((a1 + 920), v32);
  v25 = *(a1 + 1768);
  v26 = v30;
  *(a1 + 1768) = v29;
  *(a1 + 1784) = v12;
  v27 = *(a1 + 1824);
  *(a1 + 1824) = v26;
  v30 = v27;
  v28 = *(a1 + 1840);
  *(a1 + 1840) = v31;
  v31 = v28;

  if (v17)
  {
    sub_11420(v17);
  }

  v33 = &v30;
  sub_286D0(&v33);
  if (v25)
  {
    operator delete(v25);
  }

  TUI::Evaluation::Variables::Scope::~Scope(v32);
  if (v7)
  {
    sub_11420(v7);
  }
}

void sub_2486C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  *(v5 - 96) = va;
  sub_286D0((v5 - 96));
  TUI::Evaluation::Variables::Scope::~Scope(va1);
  if (v4)
  {
    sub_11420(v4);
  }

  _Unwind_Resume(a1);
}

double sub_248F0@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a2;
  *(a4 + 16) = 0;
  *(a4 + 8) = 0;
  v5 = (a4 + 8);
  if (a3)
  {
    v7 = [*(a1 + 56) packageBuffer];
    if (TUIClosureNotNil(a2) && v7[47] > a2 && v7[46] + 28 * a2)
    {
      TUI::Evaluation::Variables::Capture::create(*(a1 + 16), *(a1 + 56), &v10);
    }

    if (TUIClosureIsNil(a2))
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        TUI::Evaluation::Variables::Capture::create(v9, &v10);
      }

      else
      {
        TUI::Evaluation::Variables::Capture::emptyClosed(&v10);
      }

      result = *&v10;
      *v5 = v10;
    }
  }

  return result;
}

void TUI::Evaluation::Variables::Modern::pushClosure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a2 + 80))(&v5, a2, a3);
  v4 = v7;
  v8[0] = v6;
  v8[1] = v7;
  v6 = 0;
  v7 = 0;
  TUI::Evaluation::Variables::Modern::_pushCapture(a1, v8);
  if (v4)
  {
    sub_11420(v4);
  }

  if (v7)
  {
    sub_11420(v7);
  }
}

{
  (*(*a2 + 104))(&v5, a2, a3);
  v4 = v7;
  v8[0] = v6;
  v8[1] = v7;
  v6 = 0;
  v7 = 0;
  TUI::Evaluation::Variables::Modern::_pushCapture(a1, v8);
  if (v4)
  {
    sub_11420(v4);
  }

  if (v7)
  {
    sub_11420(v7);
  }
}

{
  (*(*a2 + 112))(&v5, a2, a3);
  v4 = v7;
  v8[0] = v6;
  v8[1] = v7;
  v6 = 0;
  v7 = 0;
  TUI::Evaluation::Variables::Modern::_pushCapture(a1, v8);
  if (v4)
  {
    sub_11420(v4);
  }

  if (v7)
  {
    sub_11420(v7);
  }
}

{
  (*(*a2 + 88))(&v5, a2, a3);
  v4 = v7;
  v8[0] = v6;
  v8[1] = v7;
  v6 = 0;
  v7 = 0;
  TUI::Evaluation::Variables::Modern::_pushCapture(a1, v8);
  if (v4)
  {
    sub_11420(v4);
  }

  if (v7)
  {
    sub_11420(v7);
  }
}

{
  (*(*a2 + 96))(&v5, a2, a3);
  v4 = v7;
  v8[0] = v6;
  v8[1] = v7;
  v6 = 0;
  v7 = 0;
  TUI::Evaluation::Variables::Modern::_pushCapture(a1, v8);
  if (v4)
  {
    sub_11420(v4);
  }

  if (v7)
  {
    sub_11420(v7);
  }
}

void sub_24A48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    sub_11420(v12);
  }

  if (a12)
  {
    sub_11420(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    sub_11420(v12);
  }

  if (a12)
  {
    sub_11420(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    sub_11420(v12);
  }

  if (a12)
  {
    sub_11420(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    sub_11420(v12);
  }

  if (a12)
  {
    sub_11420(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    sub_11420(v12);
  }

  if (a12)
  {
    sub_11420(a12);
  }

  _Unwind_Resume(exception_object);
}

void TUI::Evaluation::Variables::Modern::pushClosure(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2 + 1, 1uLL, memory_order_relaxed);
  }

  TUI::Evaluation::Variables::Modern::_pushCapture(a1, v3);
  if (v2)
  {

    sub_11420(v2);
  }
}

void sub_24D88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_11420(v1);
  }

  _Unwind_Resume(exception_object);
}

void TUI::Evaluation::Variables::Modern::define(uint64_t a1, unsigned int a2, uint64_t a3)
{
  (*(*a1 + 112))(v6);
  TUI::Evaluation::Variables::Scope::define(a1 + 920, a2, a3, v6);
  if (v7)
  {
    sub_11420(v7);
  }
}

{
  (*(*a1 + 112))(v6);
  TUI::Evaluation::Variables::Scope::define(a1 + 920, a2, a3, v6);
  if (v7)
  {
    sub_11420(v7);
  }
}

{
  (*(*a1 + 112))(v6);
  TUI::Evaluation::Variables::Scope::define(a1 + 920, a2, a3, v6);
  if (v7)
  {
    sub_11420(v7);
  }
}

void sub_24E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_11420(a12);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toTUI::Evaluation::Variables::Modern::define(uint64_t a1, unsigned int a2, uint64_t a3)
{
  TUI::Evaluation::Variables::Modern::define(a1 - 8, a2, a3);
}

{
  TUI::Evaluation::Variables::Modern::define(a1 - 8, a2, a3);
}

{
  TUI::Evaluation::Variables::Modern::define(a1 - 8, a2, a3);
}

void TUI::Evaluation::Variables::Modern::define(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, int a5)
{
  v9 = *a3;
  v10 = *(a3 + 16);
  sub_248F0(a1, a4, a5, v7);
  TUI::Evaluation::Variables::Scope::define(a1 + 920, a2, &v9, v7);
  if (v8)
  {
    sub_11420(v8);
  }
}

{
  sub_248F0(a1, a4, a5, v8);
  TUI::Evaluation::Variables::Scope::define(a1 + 920, a2, a3, v8);
  if (v9)
  {
    sub_11420(v9);
  }
}

void sub_24EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_11420(a12);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toTUI::Evaluation::Variables::Modern::define(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, int a5)
{
  TUI::Evaluation::Variables::Modern::define(a1 - 8, a2, a3, a4, a5);
}

{
  TUI::Evaluation::Variables::Modern::define(a1 - 8, a2, a3, a4, a5);
}

void sub_24F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_11420(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_25028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_11420(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_250D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_11420(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TUI::Evaluation::Variables::Modern::evaluateGlobalsDependencies(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = [*(a1 + 56) packageBuffer];
  v11 = *(a2 + 10);
  if (!*(a2 + 10))
  {
    return 0;
  }

  v12 = v10;
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = v14 + *(a2 + 4);
    if (v12[43] > v15)
    {
      v16 = (v12[42] + 4 * v15);
      if (v16)
      {
        v5 = v5 & 0xFFFFFFFF00000000 | *v16 | (v16[1] << 16);
        TUI::Evaluation::Variables::Modern::globalsWithName(&v19, a1, v5, a3, a4);
        if (v19)
        {
          sub_257C4((a1 + 1824), &v19);
          v13 |= *(v19 + 72) | *(v19 + 80);
        }

        else
        {
          v4 = v4 & 0xFFFFFFFF00000000 | *v16 | (v16[1] << 16);
          v17 = TUI::Symbol::Tab::string(*(a1 + 64), v4);
          TUI::Evaluation::Context::reportError(a4, 1012, v17);
        }

        if (*(&v19 + 1))
        {
          sub_11420(*(&v19 + 1));
        }

        v11 = *(a2 + 10);
      }
    }

    ++v14;
  }

  while (v14 < v11);
  return v13;
}

void sub_2525C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_11420(a10);
  }

  _Unwind_Resume(a1);
}

void TUI::Evaluation::Variables::Modern::globalsWithName(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  v40 = a2;
  v10 = sub_26874(a3, &v40);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }

    *a5 = v12;
    a5[1] = v11;
  }

  else
  {
    v13 = TUI::Package::Buffer::globalsWithName([*(a1 + 56) packageBuffer], a2);
    if (v13)
    {
      v14 = *(a1 + 16);
      *(a1 + 16) = 0;
      TUI::Evaluation::Variables::Scope::Scope(v39);
      TUI::Evaluation::Variables::Scope::swap((a1 + 920), v39);
      v34 = *(a1 + 1784);
      v35 = *(a1 + 1768);
      *(a1 + 1768) = 0;
      *(a1 + 1776) = 0u;
      v36 = *(a1 + 1800);
      *(a1 + 1792) = 0u;
      v15 = *(a1 + 1824);
      *(a1 + 1824) = 0uLL;
      v37 = v15;
      v16 = *(a1 + 1840);
      *(a1 + 1840) = 0;
      v38 = v16;
      TUI::Evaluation::Variables::Modern::evaluateGlobalsDependencies(a1, v13, a3, a4);
      v17 = *(a4 + 768);
      if (v17)
      {
        v18 = v40;
        *v45 = v40;
        v19 = sub_26874((v17 + 48), v45);
        if (!v19)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          LODWORD(v41) = *v45;
          v19 = sub_26940((v17 + 48), &v41);
        }

        v19[3] = (v19[3] + 1);
        *(v17 + 3208 + 16 * *(v17 + 3224)) = v18;
        v20 = mach_absolute_time();
        v21 = *(v17 + 3224);
        *(v17 + 3208 + 16 * v21 + 8) = v20;
        *(v17 + 3224) = v21 + 1;
        v22 = *(a4 + 768);
        *v45 = v40;
        v23 = sub_26874((v22 + 48), v45);
        if (!v23)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          LODWORD(v41) = *v45;
          v23 = sub_26940((v22 + 48), &v41);
        }

        v23[4] = (v23[4] + 1);
      }

      v33 = v14;
      TUI::Evaluation::Context::evaluateGlobals(a4, *v13 | (*(v13 + 4) << 32));
      v24 = *(a4 + 768);
      if (v24)
      {
        v25 = *(v24 + 3224) - 1;
        *(v24 + 3224) = v25;
        v26 = v24 + 16 * v25;
        v27 = *(v26 + 3208);
        v28 = *(v26 + 3216);
        v29 = mach_absolute_time();
        *v45 = v27;
        v30 = sub_26874((v24 + 48), v45);
        if (!v30)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          LODWORD(v41) = *v45;
          v30 = sub_26940((v24 + 48), &v41);
        }

        v31 = v29 - v28;
        if (v28 >= v29)
        {
          v31 = v28 - v29;
        }

        v30[5] = (v30[5] + v31);
      }

      TUI::Evaluation::Variables::Scope::swap((a1 + 920), v39);
      *(a1 + 1768) = v35;
      *(a1 + 1784) = v34;
      *(a1 + 1800) = v36;
      *(a1 + 1824) = v37;
      *(a1 + 1840) = v38;
      *(a1 + 16) = v33;
      TUI::Symbol::Tab::string(*(a1 + 64), v40);
      objc_claimAutoreleasedReturnValue();
      operator new();
    }

    v32 = TUI::Symbol::Tab::string(*(a1 + 64), v40);
    TUI::Evaluation::Context::reportError(a4, 1012, v32);
  }
}

void **sub_257C4(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_4050();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_28584(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_289BC(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void TUI::Evaluation::Variables::Modern::useGlobalsWithName(uint64_t a1)
{
  (*(*a1 + 192))(&v8);
  if (v8)
  {
    v2 = *(a1 + 1824);
    v3 = *(a1 + 1832);
    while (v2 != v3)
    {
      if (*v2 == v8)
      {
        sub_28F64(&v9, (v2 + 16), v3, v2);
        v5 = v4;
        for (i = *(a1 + 1832); i != v5; i -= 16)
        {
          v7 = *(i - 8);
          if (v7)
          {
            sub_11420(v7);
          }
        }

        *(a1 + 1832) = v5;
        break;
      }

      v2 += 16;
    }

    sub_257C4((a1 + 1824), &v8);
  }

  if (*(&v8 + 1))
  {
    sub_11420(*(&v8 + 1));
  }
}

void sub_259BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_11420(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_259E8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_28F64(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          sub_11420(v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t TUI::Evaluation::Variables::Modern::globalsEnvironmentUseMask(TUI::Evaluation::Variables::Modern *this)
{
  v1 = *(this + 228);
  v2 = *(this + 229);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v5 = *v1;
    v4 = v1[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *(v5 + 80) | *(v5 + 72);
      sub_11420(v4);
    }

    else
    {
      v6 = *(v5 + 80) | *(v5 + 72);
    }

    v3 |= v6;
    v1 += 2;
  }

  while (v1 != v2);
  return v3;
}

void TUI::Evaluation::Variables::Modern::updateGlobalsWithEnvironment(TUI::Evaluation::Variables::Modern *this, TUIEnvironment *a2, TUI::Evaluation::Context *a3)
{
  v75 = a2;
  v76 = a3;
  v4 = *(a3 + 96);
  if (v4)
  {
    *(v4 + 27880) = mach_absolute_time();
  }

  v5 = TUIInstantiationLog();
  v6 = os_signpost_id_generate(v5);

  v7 = TUIInstantiationLog();
  v8 = v7;
  spid = v6;
  v72 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Variables::Modern::updateGlobalsWithEnvironment", "", buf, 2u);
  }

  memset(v81, 0, sizeof(v81));
  v82 = 1065353216;
  v9 = [*(this + 7) packageBuffer];
  v10 = v9;
  v11 = v9[51];
  if (v11)
  {
    v73 = (this + 1768);
    v12 = v9[50];
    v13 = 4 * v12;
    while (1)
    {
      if (v10[43] <= v12 || (v14 = v10[42], !(v13 + v14)))
      {
        v51 = TUIInstantiationLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v52 = TUI::Evaluation::Context::feedId(*(this + 6));
          *buf = 134218240;
          *&buf[4] = v52;
          *&buf[12] = 2048;
          *&buf[14] = v12;
          _os_log_error_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "[fid:%lu] couldn't find component name with index: %lu", buf, 0x16u);
        }

        goto LABEL_39;
      }

      v15 = (v14 + v13);
      v16 = *v15;
      v17 = v15[1];
      *buf = *v15;
      *&buf[2] = v17;
      v18 = sub_26874(this + 231, buf);
      if (v18)
      {
        break;
      }

LABEL_39:
      ++v12;
      v13 += 4;
      if (!--v11)
      {
        goto LABEL_61;
      }
    }

    v20 = v18[3];
    v19 = v18[4];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = *(v20 + 80) | *(v20 + 72);
    if (*(v20 + 72) == 0)
    {
      goto LABEL_54;
    }

    v77 = v19;
    v22 = *(v20 + 64);
    v23 = [(TUIEnvironment *)v75 differenceMaskWithEnvironment:v22];

    if ((v23 & v21) != 0)
    {
      v24 = *(v20 + 80) & v23;
      v25 = *(v20 + 72) & v23;
      v26 = v25 != 0;
      v27 = *(v20 + 16);
      if (v24)
      {
        v28 = 1;
      }

      else
      {
        v28 = v25 == 0;
      }

      v74 = *(v20 + 16);
      if (!v28)
      {
        v29 = *(this + 114);
        *(this + 114) = 0u;
        *buf = v29;
        v30 = *(this + 230);
        *(this + 230) = 0;
        *&buf[16] = v30;
        TUI::Evaluation::Variables::Modern::evaluateGlobalsDependencies(this, v27, v81, v76);
        v31 = *(this + 114);
        *(this + 114) = *buf;
        *buf = v31;
        v32 = *(this + 230);
        *(this + 230) = *&buf[16];
        *&buf[16] = v32;
        v26 = (v25 != 0) & ~TUI::Evaluation::Variables::Globals::equivalentTo(v20, buf);
        v83 = buf;
        sub_286D0(&v83);
      }

      if (v24)
      {
        v33 = 0;
      }

      else
      {
        v33 = v26 == 0;
      }

      v19 = v77;
      if (v33)
      {
        goto LABEL_54;
      }

      v34 = *(this + 2);
      *(this + 2) = 0;
      TUI::Evaluation::Variables::Scope::Scope(buf);
      v66 = v34;
      v79 = 0uLL;
      v80 = 0;
      TUI::Evaluation::Variables::Scope::swap((this + 920), buf);
      v68 = *v73;
      v65 = *(this + 1784);
      *(this + 221) = 0;
      *(this + 111) = 0u;
      v35 = *(this + 225);
      *(this + 112) = 0u;
      v36 = *(this + 114);
      *(this + 114) = v79;
      v79 = v36;
      v37 = *(this + 230);
      *(this + 230) = v80;
      v80 = v37;
      v38 = *(v76 + 96);
      if (v38)
      {
        *v87 = v16 | (v17 << 16);
        v39 = sub_26874((v38 + 48), v87);
        if (!v39)
        {
          v84 = 0;
          v85 = 0;
          v86 = 0;
          LODWORD(v83) = *v87;
          v39 = sub_26940((v38 + 48), &v83);
        }

        v39[3] = (v39[3] + 1);
        *(v38 + 3208 + 16 * *(v38 + 3224)) = v16 | (v17 << 16);
        v40 = mach_absolute_time();
        v41 = *(v38 + 3224);
        *(v38 + 3208 + 16 * v41 + 8) = v40;
        *(v38 + 3224) = v41 + 1;
      }

      TUI::Evaluation::Variables::Modern::evaluateGlobalsDependencies(this, v74, v81, v76);
      TUI::Evaluation::Context::evaluateGlobals(v76, *v74 | (*(v74 + 4) << 32));
      v42 = *(v76 + 96);
      if (v42)
      {
        v63 = v35;
        v43 = *(v42 + 3224) - 1;
        *(v42 + 3224) = v43;
        v44 = v42 + 16 * v43;
        v45 = *(v44 + 3208);
        __p = *(v44 + 3216);
        v46 = mach_absolute_time();
        *v87 = v45;
        v47 = sub_26874((v42 + 48), v87);
        v35 = v63;
        if (!v47)
        {
          v84 = 0;
          v85 = 0;
          v86 = 0;
          LODWORD(v83) = *v87;
          v47 = sub_26940((v42 + 48), &v83);
        }

        v48 = (v46 - __p);
        if (__p >= v46)
        {
          v48 = &__p[-v46];
        }

        v47[5] = &v48[v47[5]];
      }

      TUI::Evaluation::Variables::Scope::swap((this + 920), buf);
      __pa = *(this + 221);
      *v73 = v68;
      *(this + 1784) = v65;
      v69 = *(this + 225);
      *(this + 225) = v35;
      v49 = *(this + 114);
      *(this + 114) = v79;
      v79 = v49;
      v50 = *(this + 230);
      *(this + 230) = v80;
      v80 = v50;
      *(this + 2) = v66;
      v67 = TUI::Evaluation::Variables::Globals::equivalentTo(v20, buf);
      if ((v67 & 1) == 0)
      {
        v53 = *(v76 + 96);
        if (v53)
        {
          *v87 = v16 | (v17 << 16);
          v54 = sub_26874((v53 + 48), v87);
          if (!v54)
          {
            v84 = 0;
            v85 = 0;
            v86 = 0;
            LODWORD(v83) = *v87;
            v54 = sub_26940((v53 + 48), &v83);
          }

          v54[4] = (v54[4] + 1);
        }

        *(v20 + 8);
        operator new();
      }

      v83 = &v79;
      sub_286D0(&v83);
      if (v69)
      {
        sub_11420(v69);
      }

      if (__pa)
      {
        operator delete(__pa);
      }

      TUI::Evaluation::Variables::Scope::~Scope(buf);
      if (!v67)
      {
        v19 = v77;
LABEL_58:
        if (v19)
        {
          sub_11420(v19);
        }

        goto LABEL_39;
      }
    }

    v19 = v77;
LABEL_54:
    LOWORD(v83) = v16;
    WORD1(v83) = v17;
    *buf = &v83;
    v55 = sub_28C9C(v81, &v83);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56 = v55[4];
    v55[3] = v20;
    v55[4] = v19;
    if (v56)
    {
      sub_11420(v56);
    }

    goto LABEL_58;
  }

LABEL_61:
  sub_28FD0(this + 1848, v81);
  v57 = TUIInstantiationLog();
  v58 = v57;
  if (v72 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v58, OS_SIGNPOST_INTERVAL_END, spid, "Variables::Modern::updateGlobalsWithEnvironment", "", buf, 2u);
  }

  v59 = *(v76 + 96);
  if (v59)
  {
    v60 = *(v59 + 27880);
    v61 = mach_absolute_time();
    v62 = -v60;
    if (v60 >= v61)
    {
      v62 = ~v60;
    }

    *(v59 + 27840) += v62 + v61;
  }

  sub_28770(v81);
}

void sub_26318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char *a49, char a50)
{
  a49 = &a34;
  sub_286D0(&a49);
  if (a21)
  {
    sub_11420(a21);
  }

  if (__p)
  {
    operator delete(__p);
  }

  TUI::Evaluation::Variables::Scope::~Scope(&a50);
  if (a30)
  {
    sub_11420(a30);
  }

  sub_28770(&a38);

  _Unwind_Resume(a1);
}

void sub_264C4(uint64_t a1, unsigned int a2, id *a3)
{
  v5 = *(a1 + 32);
  v6 = a3[4];
  if (objc_opt_respondsToSelector())
  {
    v7 = v6;
    v11 = 0;
    v8 = [v7 tui_unwrapDynamicWithError:&v11];
    if (v11)
    {
      TUI::Evaluation::Context::reportError(*(v5 + 48), v11, v7);
    }

    TUI::Evaluation::Enumerator::State::State(v9, a3);
    objc_storeStrong(&v10, v8);
    TUI::Evaluation::Variables::Scope::define(v5 + 920, a2, v9);
    TUI::Evaluation::Enumerator::State::~State(v9);
  }
}

void TUI::Evaluation::Variables::Modern::evaluateWithComponent(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v13 = a2;
  v8 = a5;
  if (v13 && v8)
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 1808);
    v11 = *(a1 + 1816);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    TUI::Evaluation::Variables::Modern::pushComponent(a1, v13, a4, 1);
    TUI::Evaluation::Variables::Scope::pushScope((a1 + 920), 63);
    v8[2](v8);
    TUI::Evaluation::Variables::Scope::popScope((a1 + 920));
    TUI::Evaluation::Variables::Modern::popComponent(a1, 1);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(a1 + 1808) = v10;
    v12 = *(a1 + 1816);
    *(a1 + 1816) = v11;
    if (v12)
    {
      sub_11420(v12);
    }

    *(a1 + 16) = v9;
    if (v11)
    {
      sub_11420(v11);
    }
  }
}

void sub_266E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v12)
  {
    sub_11420(v12);
  }

  _Unwind_Resume(a1);
}

void *TUI::Evaluation::Variables::Modern::Snapshot::Snapshot(void *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = off_25E538;
  a1[1] = v5;
  a1[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_284C0((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_26784(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_11420(v3);
  }

  _Unwind_Resume(exception_object);
}

void TUI::Evaluation::Variables::Modern::Snapshot::~Snapshot(TUI::Evaluation::Variables::Modern::Snapshot *this)
{
  *this = off_25E538;
  v3 = (this + 24);
  sub_286D0(&v3);
  v2 = *(this + 2);
  if (v2)
  {
    sub_11420(v2);
  }
}

{
  TUI::Evaluation::Variables::Modern::Snapshot::~Snapshot(this);

  operator delete();
}

uint64_t **sub_26874(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = (v3 << 16) | v4;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v3 << 16) | v4;
    if (*&v2 <= v5)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (*(result + 9) == v4 && *(result + 8) == v3)
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
  }

  return result;
}

uint64_t **sub_26940(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v2 << 16) | v3;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v2 << 16) | v3;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 9) != v3 || *(v9 + 8) != v2)
  {
    goto LABEL_21;
  }

  return v9;
}

uint64_t sub_26B94(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t *a5, void *a6, uint64_t a7, uint64_t a8, int a9)
{
  v16 = a2;
  v17 = a6;
  *a1 = off_25E5F0;
  v18 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = a3;
  v19 = a4[1];
  *(a1 + 24) = *a4;
  *(a1 + 32) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_284C0(a1 + 40, *a5, a5[1], (a5[1] - *a5) >> 4);
  v20 = v17;
  *(a1 + 64) = v20;
  *(a1 + 72) = a8;
  *(a1 + 80) = a7;
  *(a1 + 88) = a9;
  TUI::Evaluation::Variables::Scope::symbolUsage(*(a1 + 24), (a1 + 96));
  v21 = *(a1 + 40);
  for (i = *(a1 + 48); v21 != i; v21 += 2)
  {
    v24 = *v21;
    v23 = v21[1];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    for (j = 0; j != 32; j += 8)
    {
      *(a1 + 96 + j) |= *(v24 + 96 + j);
    }

    v26 = 0;
    v27 = v24 + 128;
    do
    {
      *(a1 + 128 + v26) |= *(v27 + v26);
      v26 += 8;
    }

    while (v26 != 256);
    if (v23)
    {
      sub_11420(v23);
    }
  }

  return a1;
}

void sub_26D18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_286D0(va);
  v6 = *(v2 + 32);
  if (v6)
  {
    sub_11420(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26D68(uint64_t a1, unint64_t a2)
{
  if ((*(a1 + 8 * (a2 >> 6) + 96) & (1 << a2)) != 0 && (*(a1 + 8 * ((a2 >> 22) & 0x1F) + 128) & (1 << SBYTE2(a2))) != 0)
  {
    return (*(**(a1 + 24) + 8))(*(a1 + 24), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26DF8(uint64_t a1, unint64_t a2)
{
  if ((*(a1 + 8 * (a2 >> 6) + 96) & (1 << a2)) != 0 && (*(a1 + 8 * ((a2 >> 22) & 0x1F) + 128) & (1 << SBYTE2(a2))) != 0)
  {
    return (*(**(a1 + 24) + 16))(*(a1 + 24), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26E88(uint64_t a1, unint64_t a2)
{
  if ((*(a1 + 8 * (a2 >> 6) + 96) & (1 << a2)) != 0 && (*(a1 + 8 * ((a2 >> 22) & 0x1F) + 128) & (1 << SBYTE2(a2))) != 0)
  {
    return (*(**(a1 + 24) + 24))(*(a1 + 24), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F18(uint64_t a1, unint64_t a2)
{
  if ((*(a1 + 8 * (a2 >> 6) + 96) & (1 << a2)) != 0 && (*(a1 + 8 * ((a2 >> 22) & 0x1F) + 128) & (1 << SBYTE2(a2))) != 0)
  {
    return (*(**(a1 + 24) + 32))(*(a1 + 24), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26FA8(uint64_t a1, unint64_t a2)
{
  if ((*(a1 + 8 * (a2 >> 6) + 96) & (1 << a2)) != 0 && (*(a1 + 8 * ((a2 >> 22) & 0x1F) + 128) & (1 << SBYTE2(a2))) != 0)
  {
    return (*(**(a1 + 24) + 40))(*(a1 + 24), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27038(uint64_t a1, unint64_t a2)
{
  if ((*(a1 + 8 * (a2 >> 6) + 96) & (1 << a2)) != 0 && (*(a1 + 8 * ((a2 >> 22) & 0x1F) + 128) & (1 << SBYTE2(a2))) != 0)
  {
    return (*(**(a1 + 24) + 48))(*(a1 + 24), a2);
  }

  else
  {
    return 0;
  }
}

void sub_270CC(uint64_t a1)
{
  sub_27104(a1);

  operator delete();
}

uint64_t sub_27104(uint64_t a1)
{
  *a1 = off_25E5F0;

  v4 = (a1 + 40);
  sub_286D0(&v4);
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_11420(v2);
  }

  return a1;
}

uint64_t sub_27178(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  result = TUI::Evaluation::Variables::Scope::lookup(a1 + 920, a2);
  if (v6 != -1)
  {
    return result;
  }

  v7 = *(a1 + 1776);
  v8 = *(a1 + 1768);
  while (v7 != v8)
  {
    v10 = *(v7 - 16);
    v7 -= 16;
    v9 = v10;
    if (v10)
    {
      v2 = v2 & 0xFFFFFFFF00000000 | v4;
      result = (**v9)(v9, v2);
      if (v11 != -1)
      {
        return result;
      }

      if (!*(v9 + 5) || (TUI::Evaluation::Variables::Capture::_bitCheck(v9, 0) & 1) != 0)
      {
        break;
      }

      v8 = *(a1 + 1768);
    }
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    v15 = *(a1 + 1832);
    if (*(a1 + 1824) != v15)
    {
      while (v15 != *(a1 + 1824))
      {
        v16 = *(v15 - 16);
        v15 -= 16;
        result = (**v16)(v16, v4);
        if (v17 != -1)
        {
          return result;
        }
      }
    }

LABEL_19:
    v18 = *(a1 + 1792);
    if (!v18)
    {
      return TUI::Evaluation::Variables::Scope::lookup(a1 + 72, v4);
    }

    result = sub_2732C(v18, v4);
    if (v19 == -1)
    {
      return TUI::Evaluation::Variables::Scope::lookup(a1 + 72, v4);
    }

    return result;
  }

  v13 = *(a1 + 32);
  if (*(a1 + 24) != v13 && *(v13 - 120) == v12)
  {
    sub_273DC((a1 + 936), v4, *(v13 - 112), *(v13 - 104));
    if (v20 != -1)
    {
      return a1 + 928;
    }
  }

  result = (***(a1 + 1808))(*(a1 + 1808), v4);
  if (v14 == -1)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_2732C(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  result = (***(a1 + 8))(*(a1 + 8), a2);
  if (v5 == -1)
  {
    v6 = *(a1 + 32);
    if (*(a1 + 24) != v6)
    {
      do
      {
        v7 = *(v6 - 16);
        v6 -= 16;
        result = (**v7)(v7, v3);
      }

      while (v8 == -1 && v6 != *(a1 + 24));
    }
  }

  return result;
}

void *sub_273DC(void *a1, int a2, unint64_t a3, unint64_t a4)
{
  v13 = a2;
  if (a3 >= a4)
  {
    return 0;
  }

  v6 = a1;
  v7 = sub_26874(a1 + 3, &v13);
  if (!v7)
  {
    return 0;
  }

    ;
  }

  if (i < a3 || i >= a4)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_27474(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  v5 = TUI::Evaluation::Variables::Scope::lookup(a1 + 920, a2);
  if (v6 != -1)
  {
    return v5;
  }

  v8 = *(a1 + 1776);
  v9 = *(a1 + 1768);
  while (v8 != v9)
  {
    v11 = *(v8 - 16);
    v8 -= 16;
    v10 = v11;
    if (v11)
    {
      v2 = v2 & 0xFFFFFFFF00000000 | v4;
      v5 = (*(*v10 + 8))(v10, v2);
      if (v12 != -1)
      {
        return v5;
      }

      if (!*(v10 + 5) || (TUI::Evaluation::Variables::Capture::_bitCheck(v10, 0) & 1) != 0)
      {
        break;
      }

      v9 = *(a1 + 1768);
    }
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(a1 + 32);
    if (*(a1 + 24) != v14 && *(v14 - 120) == v13)
    {
      sub_276E0((a1 + 1048), v4, *(v14 - 96), *(v14 - 88));
      if (v20 != -1)
      {
        return a1 + 928;
      }
    }

    v5 = (*(**(a1 + 1808) + 8))(*(a1 + 1808), v4);
    if (v15 == -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v16 = *(a1 + 1832);
    if (*(a1 + 1824) == v16)
    {
LABEL_18:
      v19 = *(a1 + 1792);
      if (v19)
      {
        return sub_27630(v19, v4);
      }

      return v5;
    }

    while (1)
    {
      v17 = *(v16 - 16);
      v16 -= 16;
      v5 = (*(*v17 + 8))(v17, v4);
      if (v18 != -1)
      {
        break;
      }

      if (v16 == *(a1 + 1824))
      {
        goto LABEL_18;
      }
    }
  }

  return v5;
}

uint64_t sub_27630(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  result = (*(**(a1 + 8) + 8))(*(a1 + 8), a2);
  if (v5 == -1)
  {
    v6 = *(a1 + 32);
    if (*(a1 + 24) != v6)
    {
      do
      {
        v7 = *(v6 - 16);
        v6 -= 16;
        result = (*(*v7 + 8))(v7, v3);
      }

      while (v8 == -1 && v6 != *(a1 + 24));
    }
  }

  return result;
}

void *sub_276E0(void *a1, int a2, unint64_t a3, unint64_t a4)
{
  v13 = a2;
  if (a3 >= a4)
  {
    return 0;
  }

  v6 = a1;
  v7 = sub_26874(a1 + 3, &v13);
  if (!v7)
  {
    return 0;
  }

    ;
  }

  if (i < a3 || i >= a4)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_27778(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  v5 = TUI::Evaluation::Variables::Scope::lookup(a1 + 920, a2);
  if (v6 != -1)
  {
    return v5;
  }

  v8 = *(a1 + 1776);
  v9 = *(a1 + 1768);
  while (v8 != v9)
  {
    v11 = *(v8 - 16);
    v8 -= 16;
    v10 = v11;
    if (v11)
    {
      v2 = v2 & 0xFFFFFFFF00000000 | v4;
      v5 = (*(*v10 + 16))(v10, v2);
      if (v12 != -1)
      {
        return v5;
      }

      if (!*(v10 + 5) || (TUI::Evaluation::Variables::Capture::_bitCheck(v10, 0) & 1) != 0)
      {
        break;
      }

      v9 = *(a1 + 1768);
    }
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(a1 + 32);
    if (*(a1 + 24) != v14 && *(v14 - 120) == v13)
    {
      sub_276E0((a1 + 1160), v4, *(v14 - 80), *(v14 - 72));
      if (v20 != -1)
      {
        return a1 + 928;
      }
    }

    v5 = (*(**(a1 + 1808) + 16))(*(a1 + 1808), v4);
    if (v15 == -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v16 = *(a1 + 1832);
    if (*(a1 + 1824) == v16)
    {
LABEL_18:
      v19 = *(a1 + 1792);
      if (v19)
      {
        return sub_27934(v19, v4);
      }

      return v5;
    }

    while (1)
    {
      v17 = *(v16 - 16);
      v16 -= 16;
      v5 = (*(*v17 + 16))(v17, v4);
      if (v18 != -1)
      {
        break;
      }

      if (v16 == *(a1 + 1824))
      {
        goto LABEL_18;
      }
    }
  }

  return v5;
}

uint64_t sub_27934(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  result = (*(**(a1 + 8) + 16))(*(a1 + 8), a2);
  if (v5 == -1)
  {
    v6 = *(a1 + 32);
    if (*(a1 + 24) != v6)
    {
      do
      {
        v7 = *(v6 - 16);
        v6 -= 16;
        result = (*(*v7 + 16))(v7, v3);
      }

      while (v8 == -1 && v6 != *(a1 + 24));
    }
  }

  return result;
}

uint64_t sub_279E4(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  v5 = TUI::Evaluation::Variables::Scope::lookup(a1 + 920, a2);
  if (v6 != -1)
  {
    return v5;
  }

  v8 = *(a1 + 1776);
  v9 = *(a1 + 1768);
  while (v8 != v9)
  {
    v11 = *(v8 - 16);
    v8 -= 16;
    v10 = v11;
    if (v11)
    {
      v2 = v2 & 0xFFFFFFFF00000000 | v4;
      v5 = (*(*v10 + 24))(v10, v2);
      if (v12 != -1)
      {
        return v5;
      }

      if (!*(v10 + 5) || (TUI::Evaluation::Variables::Capture::_bitCheck(v10, 0) & 1) != 0)
      {
        break;
      }

      v9 = *(a1 + 1768);
    }
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(a1 + 32);
    if (*(a1 + 24) != v14 && *(v14 - 120) == v13)
    {
      sub_27C50((a1 + 1272), v4, *(v14 - 64), *(v14 - 56));
      if (v20 != -1)
      {
        return a1 + 928;
      }
    }

    v5 = (*(**(a1 + 1808) + 24))(*(a1 + 1808), v4);
    if (v15 == -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v16 = *(a1 + 1832);
    if (*(a1 + 1824) == v16)
    {
LABEL_18:
      v19 = *(a1 + 1792);
      if (v19)
      {
        return sub_27BA0(v19, v4);
      }

      return v5;
    }

    while (1)
    {
      v17 = *(v16 - 16);
      v16 -= 16;
      v5 = (*(*v17 + 24))(v17, v4);
      if (v18 != -1)
      {
        break;
      }

      if (v16 == *(a1 + 1824))
      {
        goto LABEL_18;
      }
    }
  }

  return v5;
}

uint64_t sub_27BA0(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  result = (*(**(a1 + 8) + 24))(*(a1 + 8), a2);
  if (v5 == -1)
  {
    v6 = *(a1 + 32);
    if (*(a1 + 24) != v6)
    {
      do
      {
        v7 = *(v6 - 16);
        v6 -= 16;
        result = (*(*v7 + 24))(v7, v3);
      }

      while (v8 == -1 && v6 != *(a1 + 24));
    }
  }

  return result;
}

void *sub_27C50(void *a1, int a2, unint64_t a3, unint64_t a4)
{
  v13 = a2;
  if (a3 >= a4)
  {
    return 0;
  }

  v6 = a1;
  v7 = sub_26874(a1 + 3, &v13);
  if (!v7)
  {
    return 0;
  }

    ;
  }

  if (i < a3 || i >= a4)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_27CE4(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  v5 = TUI::Evaluation::Variables::Scope::lookup(a1 + 920, a2);
  if (v6 != -1)
  {
    return v5;
  }

  v8 = *(a1 + 1776);
  v9 = *(a1 + 1768);
  while (v8 != v9)
  {
    v11 = *(v8 - 16);
    v8 -= 16;
    v10 = v11;
    if (v11)
    {
      v2 = v2 & 0xFFFFFFFF00000000 | v4;
      v5 = (*(*v10 + 32))(v10, v2);
      if (v12 != -1)
      {
        return v5;
      }

      if (!*(v10 + 5) || (TUI::Evaluation::Variables::Capture::_bitCheck(v10, 0) & 1) != 0)
      {
        break;
      }

      v9 = *(a1 + 1768);
    }
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(a1 + 32);
    if (*(a1 + 24) != v14 && *(v14 - 120) == v13)
    {
      sub_276E0((a1 + 1384), v4, *(v14 - 48), *(v14 - 40));
      if (v20 != -1)
      {
        return a1 + 928;
      }
    }

    v5 = (*(**(a1 + 1808) + 32))(*(a1 + 1808), v4);
    if (v15 == -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v16 = *(a1 + 1832);
    if (*(a1 + 1824) == v16)
    {
LABEL_18:
      v19 = *(a1 + 1792);
      if (v19)
      {
        return sub_27EA0(v19, v4);
      }

      return v5;
    }

    while (1)
    {
      v17 = *(v16 - 16);
      v16 -= 16;
      v5 = (*(*v17 + 32))(v17, v4);
      if (v18 != -1)
      {
        break;
      }

      if (v16 == *(a1 + 1824))
      {
        goto LABEL_18;
      }
    }
  }

  return v5;
}

uint64_t sub_27EA0(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), a2);
  if (v5 == -1)
  {
    v6 = *(a1 + 32);
    if (*(a1 + 24) != v6)
    {
      do
      {
        v7 = *(v6 - 16);
        v6 -= 16;
        result = (*(*v7 + 32))(v7, v3);
      }

      while (v8 == -1 && v6 != *(a1 + 24));
    }
  }

  return result;
}

uint64_t sub_27F50(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  v5 = TUI::Evaluation::Variables::Scope::lookup(a1 + 920, a2);
  if (v6 != -1)
  {
    return v5;
  }

  v8 = *(a1 + 1776);
  v9 = *(a1 + 1768);
  while (v8 != v9)
  {
    v11 = *(v8 - 16);
    v8 -= 16;
    v10 = v11;
    if (v11)
    {
      v2 = v2 & 0xFFFFFFFF00000000 | v4;
      v5 = (*(*v10 + 40))(v10, v2);
      if (v12 != -1)
      {
        return v5;
      }

      if (!*(v10 + 5) || (TUI::Evaluation::Variables::Capture::_bitCheck(v10, 0) & 1) != 0)
      {
        break;
      }

      v9 = *(a1 + 1768);
    }
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(a1 + 32);
    if (*(a1 + 24) != v14 && *(v14 - 120) == v13)
    {
      sub_276E0((a1 + 1496), v4, *(v14 - 32), *(v14 - 24));
      if (v20 != -1)
      {
        return a1 + 928;
      }
    }

    v5 = (*(**(a1 + 1808) + 40))(*(a1 + 1808), v4);
    if (v15 == -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v16 = *(a1 + 1832);
    if (*(a1 + 1824) == v16)
    {
LABEL_18:
      v19 = *(a1 + 1792);
      if (v19)
      {
        return sub_2810C(v19, v4);
      }

      return v5;
    }

    while (1)
    {
      v17 = *(v16 - 16);
      v16 -= 16;
      v5 = (*(*v17 + 40))(v17, v4);
      if (v18 != -1)
      {
        break;
      }

      if (v16 == *(a1 + 1824))
      {
        goto LABEL_18;
      }
    }
  }

  return v5;
}

uint64_t sub_2810C(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  result = (*(**(a1 + 8) + 40))(*(a1 + 8), a2);
  if (v5 == -1)
  {
    v6 = *(a1 + 32);
    if (*(a1 + 24) != v6)
    {
      do
      {
        v7 = *(v6 - 16);
        v6 -= 16;
        result = (*(*v7 + 40))(v7, v3);
      }

      while (v8 == -1 && v6 != *(a1 + 24));
    }
  }

  return result;
}

uint64_t sub_281BC(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  v5 = TUI::Evaluation::Variables::Scope::lookup(a1 + 920, a2);
  if (v6 != -1)
  {
    return v5;
  }

  v8 = *(a1 + 1776);
  v9 = *(a1 + 1768);
  while (v8 != v9)
  {
    v11 = *(v8 - 16);
    v8 -= 16;
    v10 = v11;
    if (v11)
    {
      v2 = v2 & 0xFFFFFFFF00000000 | v4;
      v5 = (*(*v10 + 48))(v10, v2);
      if (v12 != -1)
      {
        return v5;
      }

      if (!*(v10 + 5) || (TUI::Evaluation::Variables::Capture::_bitCheck(v10, 0) & 1) != 0)
      {
        break;
      }

      v9 = *(a1 + 1768);
    }
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(a1 + 32);
    if (*(a1 + 24) != v14 && *(v14 - 120) == v13)
    {
      sub_28428((a1 + 1608), v4, *(v14 - 16), *(v14 - 8));
      if (v20 != -1)
      {
        return a1 + 928;
      }
    }

    v5 = (*(**(a1 + 1808) + 48))(*(a1 + 1808), v4);
    if (v15 == -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v16 = *(a1 + 1832);
    if (*(a1 + 1824) == v16)
    {
LABEL_18:
      v19 = *(a1 + 1792);
      if (v19)
      {
        return sub_28378(v19, v4);
      }

      return v5;
    }

    while (1)
    {
      v17 = *(v16 - 16);
      v16 -= 16;
      v5 = (*(*v17 + 48))(v17, v4);
      if (v18 != -1)
      {
        break;
      }

      if (v16 == *(a1 + 1824))
      {
        goto LABEL_18;
      }
    }
  }

  return v5;
}

uint64_t sub_28378(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  result = (*(**(a1 + 8) + 48))(*(a1 + 8), a2);
  if (v5 == -1)
  {
    v6 = *(a1 + 32);
    if (*(a1 + 24) != v6)
    {
      do
      {
        v7 = *(v6 - 16);
        v6 -= 16;
        result = (*(*v7 + 48))(v7, v3);
      }

      while (v8 == -1 && v6 != *(a1 + 24));
    }
  }

  return result;
}

void *sub_28428(void *a1, int a2, unint64_t a3, unint64_t a4)
{
  v13 = a2;
  if (a3 >= a4)
  {
    return 0;
  }

  v6 = a1;
  v7 = sub_26874(a1 + 3, &v13);
  if (!v7)
  {
    return 0;
  }

    ;
  }

  if (i < a3 || i >= a4)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_284C0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_28548(result, a4);
  }

  return result;
}

void sub_28528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_286D0(&a9);
  _Unwind_Resume(a1);
}

void sub_28548(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_28584(a1, a2);
  }

  sub_4050();
}

void sub_28584(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_3AAC();
}

void *sub_285CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_28654(v7);
  return v4;
}

uint64_t sub_28654(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2868C(a1);
  }

  return a1;
}

void sub_2868C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_11420(v3);
    }

    v1 -= 16;
  }
}

void sub_286D0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_28724(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_28724(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_11420(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_28770(uint64_t a1)
{
  sub_287AC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_287AC(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        sub_11420(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_287F4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_3AAC();
}

void sub_288A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19980C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_288C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_288F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_28928(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_28968(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void **sub_289BC(void **a1)
{
  sub_289F0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_289F0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_11420(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void sub_28AAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_199830(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_28AC8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_28B00(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t sub_28B30(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_28BD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_199854(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_28BF4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_28C2C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t sub_28C5C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t **sub_28C9C(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v2 << 16) | v3;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v2 << 16) | v3;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 9) != v3 || *(v9 + 8) != v2)
  {
    goto LABEL_21;
  }

  return v9;
}

void sub_28F04(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      sub_11420(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

__int128 *sub_28F64(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_11420(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_28FD0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *a2;
  *a2 = v4;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 8);
  v10 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  v11 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  v12 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v12;
  if (*(a1 + 24))
  {
    v13 = *(a1 + 8);
    v14 = *(*(a1 + 16) + 8);
    if ((v13 & (v13 - 1)) != 0)
    {
      if (v14 >= v13)
      {
        v14 %= v13;
      }
    }

    else
    {
      v14 &= v13 - 1;
    }

    *(*a1 + 8 * v14) = a1 + 16;
  }

  if (v11)
  {
    v15 = *(a2 + 8);
    v16 = *(*(a2 + 16) + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v16 >= v15)
      {
        v16 %= v15;
      }
    }

    else
    {
      v16 &= v15 - 1;
    }

    *(*a2 + 8 * v16) = a2 + 16;
  }
}

void sub_290E0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  sub_3AAC();
}

void sub_294F4(id *a1)
{
  v2 = objc_opt_new();
  [a1[4] computedNaturalSize];
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeTranslation(&v10, v3 * 0.5, v4 * 0.5);
  v5 = a1[4];
  v6 = a1[5];
  v9 = v10;
  [v5 appendChildRenderModelCompatibleWithKind:4 context:v6 transform:&v9 toModels:v2];
  v7 = [a1[5] renderModelConvertModels:v2 toKind:4];
  v8 = [[TUIRenderModelSubviews alloc] initWithSubmodels:v7];
  [a1[6] setObject:v8 forKeyedSubscript:@"default"];
}

void sub_2A3CC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

uint64_t sub_2A3EC(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

void sub_2B6C4(id a1)
{
  v4 = @"param";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6058;
  qword_2E6058 = v2;
}

int64_t sub_2C300(id a1, TUIRenderModelTransform *a2, TUIRenderModelTransform *a3)
{
  v4 = a3;
  v5 = [(TUIRenderModelTransform *)a2 zIndex];
  v6 = [(TUIRenderModelTransform *)v4 zIndex];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

void sub_2C358(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void sub_2D094(uint64_t a1)
{
  v2 = [*(a1 + 32) subviews];
  if ([v2 count])
  {
    v3 = [v2 lastObject];
    v4 = TUIProtocolCast(&OBJC_PROTOCOL___TUIReusableRenderView, v3);

    if (v4 && ([v4 layoutAttributes], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "zIndex"), v7 = *(a1 + 64), v5, v6 <= v7))
    {
      [*(a1 + 32) addSubview:*(a1 + 40)];
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = v2;
      v8 = v2;
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
LABEL_6:
        v12 = 0;
        while (1)
        {
          v13 = v4;
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v20 + 1) + 8 * v12);
          v4 = TUIProtocolCast(&OBJC_PROTOCOL___TUIReusableRenderView, v14);

          if (v4 && v4 != *(a1 + 40))
          {
            v15 = [v4 layoutAttributes];
            v16 = [v15 zIndex];

            v17 = *(a1 + 64);
            if (v17 < v16)
            {
              [*(a1 + 32) insertSubview:*(a1 + 40) belowSubview:v14];
LABEL_20:

              goto LABEL_21;
            }

            if (v17 == v16)
            {
              [*(a1 + 32) insertSubview:*(a1 + 40) aboveSubview:v4];
              goto LABEL_20;
            }
          }

          if (v10 == ++v12)
          {
            v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v10)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }

      [*(a1 + 32) addSubview:*(a1 + 40)];
LABEL_21:
      v2 = v19;
    }
  }

  else
  {
    [*(a1 + 32) addSubview:*(a1 + 40)];
  }

  v18 = [*(a1 + 48) tui_hostingView];
  [v18 addSubview:*(a1 + 40)];

  [*(a1 + 40) viewWillDisplay];
  (*(*(a1 + 56) + 16))();
}

int64_t sub_2D2E0(id a1, UIView *a2, UIView *a3)
{
  v4 = a3;
  v5 = TUIProtocolCast(&OBJC_PROTOCOL___TUIReusableRenderView, a2);
  v6 = TUIProtocolCast(&OBJC_PROTOCOL___TUIReusableRenderView, v4);

  if (v5 | v6)
  {
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 == 0;
    }

    if (v7)
    {
      if (v5)
      {
        v8 = v6 == 0;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        v14 = 1;
      }

      else
      {
        v9 = [v5 layoutAttributes];
        v10 = [v9 zIndex];

        v11 = [v6 layoutAttributes];
        v12 = [v11 zIndex];

        v13 = -1;
        if (v10 >= v12)
        {
          v13 = 1;
        }

        if (v10 == v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v13;
        }
      }
    }

    else
    {
      v14 = -1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_2D3D8(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 32) allValues];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) viewDidEndDisplay];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_2E4E4(id a1)
{
  v4 = @"binding";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6068;
  qword_2E6068 = v2;
}

void sub_2EC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 88));
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  objc_destroyWeak((v22 - 88));
  _Unwind_Resume(a1);
}

id sub_2ECAC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v56 = a5;
  v54 = a4;
  v53 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v9 = [WeakRetained menuContainer];
  v10 = [v9 menuModel];
  v11 = objc_loadWeakRetained((a1 + 80));
  v12 = [v11 menuIsPrimary];
  v13 = *(a1 + 32);
  v14 = objc_loadWeakRetained((a1 + 88));
  v57 = [v10 menuWithIsPrimary:v12 actionObject:v13 actionDelegate:v14];

  v55 = objc_loadWeakRetained((a1 + 80));
  v39 = [v55 stateButtonAttributesMap];
  v15 = *(a1 + 40);
  v47 = *(a1 + 48);
  v52 = objc_loadWeakRetained((a1 + 80));
  v46 = [v52 linkEntities];
  v51 = objc_loadWeakRetained((a1 + 80));
  v43 = [v51 buttonType];
  v50 = objc_loadWeakRetained((a1 + 80));
  v41 = [v50 buttonRole];
  v49 = objc_loadWeakRetained((a1 + 80));
  v40 = [v49 userInterfaceStyle];
  v48 = objc_loadWeakRetained((a1 + 80));
  v38 = [v48 enabled];
  v45 = objc_loadWeakRetained((a1 + 80));
  [v45 pressedScale];
  v17 = v16;
  v44 = objc_loadWeakRetained((a1 + 80));
  [v44 touchInsets];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v42 = objc_loadWeakRetained((a1 + 80));
  v26 = [v42 identifier];
  v27 = *(a1 + 56);
  v28 = objc_loadWeakRetained((a1 + 80));
  v29 = [v28 pointer];
  v30 = objc_loadWeakRetained((a1 + 80));
  v31 = [v30 focusStyle];
  v32 = objc_loadWeakRetained((a1 + 80));
  LOWORD(v37) = 0;
  LOBYTE(v36) = [v32 menuIsPrimary];
  LOBYTE(v35) = v38;
  v33 = [TUIControlView renderModelWithStateToButtonAttributes:v39 stateToRenderModel:v53 imageModelIDToResource:v54 actionHandler:v15 viewState:v47 linkEntities:v46 type:v17 role:v19 userInterfaceStyle:v21 enabled:v23 pressScale:v25 touchInsets:v43 identifier:v41 style:v40 pointer:v35 focusStyle:v26 menu:v27 contextMenuIsPrimaryAction:v29 name:v31 axAttributes:v57 enableBackgroundForHighlightPreview:v36 enableShadowForHighlightPreview:*(a1 + 64), *(a1 + 72), v37];

  [v33 setAnimationGroups:v56];

  return v33;
}

id TUISignpostDefault()
{
  if (qword_2E6080 != -1)
  {
    sub_199A10();
  }

  v1 = qword_2E6078;

  return v1;
}

void sub_2F030(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "TemplateUI");
  v2 = qword_2E6078;
  qword_2E6078 = v1;
}

id TUISignpostFeedViewController()
{
  if (qword_2E6090 != -1)
  {
    sub_199A24();
  }

  v1 = qword_2E6088;

  return v1;
}

void sub_2F0B8(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "TemplateUI.FeedViewController");
  v2 = qword_2E6088;
  qword_2E6088 = v1;
}

uint64_t TUI::Evaluation::Enumerator::Each::Each(uint64_t result, int a2, int a3, int a4)
{
  *result = off_25E9D0;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a4;
  return result;
}

{
  *result = off_25E9D0;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a4;
  return result;
}

id TUI::Evaluation::Enumerator::Each::object(TUI::Evaluation::Enumerator::Each *this, TUI::Symbol::Tab **a2)
{
  TUI::Evaluation::Context::resolve(a2, *(this + 4), v5);
  v3 = TUI::Evaluation::ResolvedValue::objectValue(v5, a2);

  return v3;
}

void TUI::Evaluation::Enumerator::Each::evaluate(Entry *a1, TUI::Evaluation::Context *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    TUI::Evaluation::Context::beginScope(a2);
    v6 = a1[2];
    v7 = a1[3];
    TUI::Evaluation::Enumerator::State::State(v9, v6, v7);
    v10[0] = TUI::Evaluation::Context::pushBinding(a2);
    v10[1] = v8;
    TUI::Evaluation::Enumerator::State::~State(v9);
    v5[2](v5, v10);
    TUI::Evaluation::Context::endScope(a2);
  }
}

void sub_319DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  TUI::Evaluation::Enumerator::State::~State(&a9);

  _Unwind_Resume(a1);
}

void TUI::Evaluation::Enumerator::Each::enumerate(uint64_t a1, TUI::Evaluation::Context *a2, void *a3)
{
  v5 = a3;
  if (v5 && TUIValueNotNil(*(a1 + 16)))
  {
    TUI::Evaluation::Context::beginScope(a2);
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    TUI::Evaluation::Enumerator::State::State(v60, v6, v7);
    v8 = TUI::Evaluation::Context::pushBinding(a2);
    v46 = v9;
    v10 = v8;
    TUI::Evaluation::Enumerator::State::~State(v60);
    TUI::Evaluation::Context::resolve(a2, *(a1 + 16), v59);
    v45 = a2;
    obj = TUI::Evaluation::ResolvedValue::objectValue(v59, a2);

    if (*(a1 + 10) == -1 || *(a1 + 8) == -1 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      if (*(a1 + 14) == -1 || *(a1 + 12) == -1)
      {
        goto LABEL_27;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = obj;
        v23 = [v43 count];
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v24 = v43;
        v25 = [v24 countByEnumeratingWithState:&v51 objects:v62 count:16];
        if (v25)
        {
          v26 = 0;
          v27 = *v52;
          v28 = v23 - 1;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v52 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v30 = *(*(&v51 + 1) + 8 * i);
              v31 = (*(*v10 + 24))(v10, v46);
              *(v31 + 16) = v26;
              objc_storeStrong((v31 + 32), v30);
              *(v31 + 8) = (v26 == 0) | (2 * (v28 == v26)) | *(v31 + 8) & 0xFC;
              TUI::Evaluation::Context::evaluateWithIdentifier(v45, v26++, v5);
            }

            v25 = [v24 countByEnumeratingWithState:&v51 objects:v62 count:16];
          }

          while (v25);
        }

        v11 = v24;
      }

      else
      {
        if (*(a1 + 14) == -1 || *(a1 + 12) == -1)
        {
          goto LABEL_27;
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          if (*(a1 + 14) != -1 && *(a1 + 12) != -1)
          {
            if (obj)
            {
              v38 = TUIProtocolCast(&OBJC_PROTOCOL___TUIDynamicProviding, obj);
              v39 = v38 == 0;

              if (v39)
              {
                v40 = (*(*v10 + 24))(v10, v46);
                objc_storeStrong((v40 + 32), obj);
                v5[2](v5);
              }
            }
          }

          goto LABEL_27;
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v11 = [obj objectEnumerator];
        v32 = [v11 countByEnumeratingWithState:&v47 objects:v61 count:16];
        if (v32)
        {
          v33 = 0;
          v34 = *v48;
          do
          {
            for (j = 0; j != v32; j = j + 1)
            {
              if (*v48 != v34)
              {
                objc_enumerationMutation(v11);
              }

              v36 = *(*(&v47 + 1) + 8 * j);
              v37 = (*(*v10 + 24))(v10, v46);
              objc_storeStrong((v37 + 32), v36);
              TUI::Evaluation::Context::evaluateWithIdentifier(v45, v33++, v5);
            }

            v32 = [v11 countByEnumeratingWithState:&v47 objects:v61 count:16];
          }

          while (v32);
        }
      }
    }

    else
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v11 = [obj keyEnumerator];
      v42 = v11;
      v12 = [v11 countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v12)
      {
        v41 = *v56;
        do
        {
          for (k = 0; k != v12; k = k + 1)
          {
            if (*v56 != v41)
            {
              objc_enumerationMutation(v11);
            }

            v14 = *(*(&v55 + 1) + 8 * k);
            v15 = [obj objectForKey:v14];
            v16 = (*(*v10 + 24))(v10, v46);
            v17 = v14;
            v18 = v15;
            v19 = v5;
            v20 = *(v16 + 24);
            *(v16 + 24) = v17;
            v21 = v17;

            v5 = v19;
            v22 = *(v16 + 32);
            *(v16 + 32) = v18;

            v19[2](v19);
            v11 = v42;
          }

          v12 = [v42 countByEnumeratingWithState:&v55 objects:v63 count:16];
        }

        while (v12);
      }
    }

LABEL_27:
    TUI::Evaluation::Context::endScope(v45);
  }
}

uint64_t TUI::Evaluation::Enumerator::Assign::Assign(uint64_t result, int a2, int a3)
{
  *result = off_25EA08;
  *(result + 8) = a2;
  *(result + 12) = a3;
  return result;
}

{
  *result = off_25EA08;
  *(result + 8) = a2;
  *(result + 12) = a3;
  return result;
}

id TUI::Evaluation::Enumerator::Assign::object(TUI::Evaluation::Enumerator::Assign *this, TUI::Symbol::Tab **a2)
{
  TUI::Evaluation::Context::resolve(a2, *(this + 3), v5);
  v3 = TUI::Evaluation::ResolvedValue::objectValue(v5, a2);

  return v3;
}

void TUI::Evaluation::Enumerator::Assign::evaluate(Entry *a1, TUI::Evaluation::Context *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    TUI::Evaluation::Context::beginScope(a2);
    v6 = a1[2];
    v7 = -65536;
    TUI::Evaluation::Enumerator::State::State(v9, v7, v6);
    v10[0] = TUI::Evaluation::Context::pushBinding(a2);
    v10[1] = v8;
    TUI::Evaluation::Enumerator::State::~State(v9);
    v5[2](v5, v10);
    TUI::Evaluation::Context::endScope(a2);
  }
}

void sub_321AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  TUI::Evaluation::Enumerator::State::~State(&a9);

  _Unwind_Resume(a1);
}

void TUI::Evaluation::Enumerator::Assign::enumerate(uint64_t a1, TUI::Symbol::Tab **a2, void *a3)
{
  v5 = a3;
  if (v5 && TUIValueNotNil(*(a1 + 12)))
  {
    TUI::Evaluation::Context::resolve(a2, *(a1 + 12), v14);
    v6 = TUI::Evaluation::ResolvedValue::objectValue(v14, a2);

    if (v6 && *(a1 + 10) != -1 && *(a1 + 8) != -1)
    {
      TUI::Evaluation::Context::beginScope(a2);
      v7 = *(a1 + 8);
      v8 = -65536;
      TUI::Evaluation::Enumerator::State::State(v13, v8, v7);
      v9 = TUI::Evaluation::Context::pushBinding(a2);
      v11 = v10;
      TUI::Evaluation::Enumerator::State::~State(v13);
      v12 = (*(*v9 + 24))(v9, v11);
      objc_storeStrong((v12 + 32), v6);
      v5[2](v5);
      TUI::Evaluation::Context::endScope(a2);
    }
  }
}

void sub_322FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TUI::Evaluation::Enumerator::State::~State(va);

  _Unwind_Resume(a1);
}

void sub_32484(uint64_t a1)
{
  v2 = [*(a1 + 40) queryGenerationToken];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_326AC(uint64_t a1)
{
  [*(*(a1 + 32) + 40) setQueryGenerationFromToken:*(*(a1 + 32) + 16) error:0];
  v2 = [*(*(a1 + 32) + 40) executeFetchRequest:*(*(a1 + 32) + 48) error:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void sub_32A04(uint64_t a1, void *a2)
{
  v11 = a2;
  if (!*(a1 + 32) || (v3 = *(a1 + 48) + *(a1 + 40), v3 > [v11 count]))
  {
    v6 = NSStringFromRange(*(a1 + 40));
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 count]);
    v8 = [NSString stringWithFormat:@"%@ is out-of-range with %@ fetched objects", v6, v7];
    v9 = [NSException exceptionWithName:@"OutOfRange" reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  v4 = *(a1 + 32);
  v5 = [v11 subarrayWithRange:{*(a1 + 40), *(a1 + 48)}];
  (*(v4 + 16))(v4, v5);
}

void sub_32BF8(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 count];
  if (!*(a1 + 40) || [*(a1 + 32) lastIndex] >= v3)
  {
    v6 = *(a1 + 32);
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 count]);
    v8 = [NSString stringWithFormat:@"%@ is out-of-range with %@ fetched objects", v6, v7];
    v9 = [NSException exceptionWithName:@"OutOfRange" reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  v4 = *(a1 + 40);
  v5 = [v11 objectsAtIndexes:*(a1 + 32)];
  (*(v4 + 16))(v4, v5);
}

void sub_32E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_32E40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_32E58(void *a1)
{
  [*(a1[4] + 32) performFetch:0];
  v2 = [_TUICoreDataGeneration alloc];
  v3 = a1[5];
  v4 = [*(a1[4] + 32) fetchRequest];
  v13 = [(_TUICoreDataGeneration *)v2 initWithContext:v3 fetchRequest:v4];

  v5 = [*(a1[4] + 32) fetchedObjects];
  -[_TUICoreDataGeneration updateCount:](v13, "updateCount:", [v5 count]);

  v6 = [(TUIDynamicArray *)[TUIMutableDynamicArray alloc] initWithDataProvider:a1[4] generation:v13 count:0];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [(_TUICoreDataGeneration *)v13 captureTokenFromContext:a1[5]];
  objc_storeWeak((a1[4] + 8), *(*(a1[6] + 8) + 40));
  [*(*(a1[6] + 8) + 40) _updateProvider:a1[4] count:-[_TUICoreDataGeneration count](v13 generation:{"count"), v13}];
  v9 = *(a1[4] + 24);
  if (v9)
  {
    v10 = [*(*(a1[6] + 8) + 40) tui_subarrayWithStart:0 end:v9 - 1];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    objc_storeWeak((a1[4] + 16), *(*(a1[6] + 8) + 40));
  }
}

void sub_33120(void *a1)
{
  v2 = [*(a1[4] + 32) managedObjectContext];
  v3 = [v2 executeFetchRequest:a1[5] error:0];

  v4 = [*(a1[4] + 32) managedObjectContext];
  v5 = [v4 executeFetchRequest:a1[6] error:0];

  v6 = a1[7];
  v7 = [*(a1[4] + 32) fetchRequest];
  [v7 setPredicate:v6];

  [*(a1[4] + 32) performFetch:0];
  v8 = [v5 differenceFromArray:v3 withOptions:7];
  v9 = [_TUICoreDataGeneration alloc];
  v10 = [*(a1[4] + 32) managedObjectContext];
  v11 = [*(a1[4] + 32) fetchRequest];
  v12 = [(_TUICoreDataGeneration *)v9 initWithContext:v10 fetchRequest:v11];

  v13 = [*(a1[4] + 32) managedObjectContext];
  [(_TUICoreDataGeneration *)v12 captureTokenFromContext:v13];

  v29 = v5;
  -[_TUICoreDataGeneration updateCount:](v12, "updateCount:", [v5 count]);
  v28 = +[TUITransaction currentOrImplicitTransaction];
  [v28 tx];
  v27 = v30 = v3;
  v14 = -[_TUIDynamicArrayUpdateGroup initWithGeneration:count:transaction:]([_TUIDynamicArrayUpdateGroup alloc], "initWithGeneration:count:transaction:", v12, [v3 count], v27);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v31 + 1) + 8 * i);
        v21 = [v20 changeType];
        if (v21 == &dword_0 + 1)
        {
          if ([v20 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
          {
            -[_TUIDynamicArrayUpdateGroup deleteItemAtIndex:](v14, "deleteItemAtIndex:", [v20 index]);
          }
        }

        else if (!v21)
        {
          if ([v20 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
          {
            -[_TUIDynamicArrayUpdateGroup insertItemAtIndex:](v14, "insertItemAtIndex:", [v20 index]);
          }

          else
          {
            -[_TUIDynamicArrayUpdateGroup moveItemFromIndex:toIndex:](v14, "moveItemFromIndex:toIndex:", [v20 associatedIndex], objc_msgSend(v20, "index"));
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v17);
  }

  [(_TUIDynamicArrayUpdateGroup *)v14 finalizeUpdates];
  v22 = a1[4];
  if (*(v22 + 24))
  {
    WeakRetained = objc_loadWeakRetained((v22 + 16));
    [WeakRetained _enqueueUpdate:v14];

    v24 = [*(a1[4] + 32) managedObjectContext];
    v25 = [v24 countForFetchRequest:a1[6] error:0];

    v26 = objc_loadWeakRetained((a1[4] + 8));
    [v26 _updateCount:v25 generation:v12];
  }

  else
  {
    v26 = objc_loadWeakRetained((v22 + 8));
    [v26 _enqueueUpdate:v14];
  }
}

void sub_33FA4(void *a1, uint64_t *a2, uint64_t *a3)
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
        v9 = *(a2 + 8);
        *(v8 + 8) = v9;
        *(v8 + 5) = *(a2 + 5);
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_340B8(a1, v9, v8 + 8);
        sub_34218(a1, v8, v11);
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
    sub_3456C();
  }
}

void sub_34084(void *a1)
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

uint64_t sub_340B8(uint64_t a1, unint64_t a2, unsigned __int16 *a3)
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

    sub_34300(a1, v13);
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

void *sub_34218(void *result, void *a2, void *a3)
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

void sub_34300(uint64_t a1, size_t __n)
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

      sub_343F0(a1, prime);
    }
  }
}

void sub_343F0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_3AAC();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *sub_345F8(void *a1, unsigned __int16 *a2)
{
  result = sub_11F88(a1, a2);
  if (result)
  {
    sub_34630(a1, result);
    return (&dword_0 + 1);
  }

  return result;
}

uint64_t sub_34630(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_34674(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_34674@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

uint64_t **sub_347B0(void *a1, unsigned __int16 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_349EC(void *a1, void *a2, void *a3)
{
  v4 = a2;
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
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v14[0] = v8 + 2;
        v14[1] = v8 + 3;
        sub_34B54(v14, (v4 + 2));
        v10 = *v8;
        v11 = *(v8 + 8);
        v8[1] = v11;
        v12 = sub_340B8(a1, v11, v8 + 8);
        sub_34218(a1, v8, v12);
        v4 = *v4;
        if (v10)
        {
          v13 = v4 == a3;
        }

        else
        {
          v13 = 1;
        }

        v8 = v10;
      }

      while (!v13);
    }

    sub_34B10(a1, v10);
  }

  if (v4 != a3)
  {
    sub_34BAC();
  }
}

void sub_34AE4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_34B10(v1, v2);
  __cxa_rethrow();
}

void sub_34B10(uint64_t a1, id *a2)
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

uint64_t sub_34B54(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  **a1 = *a2;
  *v4 = *(a2 + 8);
  objc_storeStrong((v4 + 8), *(a2 + 16));
  *(v4 + 16) = *(a2 + 24);
  return a1;
}

void sub_34C14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34CB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_34CB0(uint64_t a1)
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

uint64_t sub_34CFC(uint64_t a1)
{
  sub_34B10(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t **sub_34D38(void *a1, unsigned __int16 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_34F90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34CB0(va);
  _Unwind_Resume(a1);
}

uint64_t _TUIDeviceHasInternalInstall()
{
  if (qword_2E60A0 != -1)
  {
    sub_199A38();
  }

  return byte_2E6098;
}

void sub_35B0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 appendObjectsWithProtocol:*(a1 + 32) toArray:*(a1 + 40)];
  }
}

id sub_35C54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = [WeakRetained invalidateInstantiation:*(a1 + 32)];

  return v3;
}

void sub_35D30(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = TUIEnumeratorNotNil(*(*(a1 + 32) + 8));
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = objc_alloc_init(*(v4 + 72));
    [*(a1 + 40) evaluateEnumerator:*(*(a1 + 32) + 8) withObject:v6 nodes:*(*(a1 + 32) + 12) containingObject:*(a1 + 32) builder:v5];
  }

  else
  {
    if (!TUINameIsValid(*(v4 + 20)))
    {
      goto LABEL_6;
    }

    v5 = objc_alloc_init(*(*(a1 + 32) + 72));
    [*(a1 + 40) evaluateBinding:*(*(a1 + 32) + 20) withObject:v6 nodes:*(*(a1 + 32) + 12) containingObject:*(a1 + 32) builder:v5];
  }

  [v5 finalizeModelsWithParent:*(a1 + 32) context:*(a1 + 40)];

LABEL_6:
}

void sub_35ED4(uint64_t a1)
{
  v2 = 0;
  do
  {
    v3 = v2;
    v4 = [*(*(a1 + 32) + 32) applyUpdatesForTransactionGroup:*(a1 + 40)];
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  if (v3)
  {
    v5 = [*(a1 + 48) statsCollector];
    [v5 recordEvent:19];

    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_35FA8;
    v8[3] = &unk_25EBA8;
    v8[4] = v6;
    v9 = *(a1 + 48);
    [v7 valueWithBlock:v8];
  }
}

void sub_35FA8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = TUIEnumeratorNotNil(*(*(a1 + 32) + 8));
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = objc_alloc_init(*(v4 + 72));
    [*(a1 + 40) evaluateEnumerator:*(*(a1 + 32) + 8) withObject:v6 nodes:*(*(a1 + 32) + 12) containingObject:*(a1 + 32) builder:v5];
  }

  else
  {
    if (!TUINameIsValid(*(v4 + 20)))
    {
      goto LABEL_6;
    }

    v5 = objc_alloc_init(*(*(a1 + 32) + 72));
    [*(a1 + 40) evaluateBinding:*(*(a1 + 32) + 20) withObject:v6 nodes:*(*(a1 + 32) + 12) containingObject:*(a1 + 32) builder:v5];
  }

  [v5 finalizeModelsWithParent:*(a1 + 32) context:*(a1 + 40)];

LABEL_6:
}

void sub_361EC(id a1)
{
  v4[0] = @"kind";
  v4[1] = @"instance";
  v4[2] = @"parameters";
  v1 = [NSArray arrayWithObjects:v4 count:3];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E60A8;
  qword_2E60A8 = v2;
}

void sub_36390(id a1)
{
  v4 = @"binding";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E60B8;
  qword_2E60B8 = v2;
}

uint64_t TUIShouldStopInDebugger()
{
  if (TUIGrantDebuggerPermissionToStopExecution == 1 && qword_2E60D0 != -1)
  {
    sub_199A74();
  }

  return 0;
}

uint64_t TUIIsRunningTests()
{
  if (qword_2E60D0 != -1)
  {
    sub_199A74();
  }

  return byte_2E60C8;
}

void TUIHaltDebugger()
{
  if (TUIGrantDebuggerPermissionToStopExecution == 1 && qword_2E60D0 != -1)
  {
    sub_199A74();
  }
}

void sub_366F4(id a1)
{
  v1 = +[NSProcessInfo processInfo];
  v3 = [v1 environment];

  v2 = [v3 objectForKeyedSubscript:@"XCTestConfigurationFilePath"];
  byte_2E60C8 = v2 != 0;
}

void TUIReportAssertionFailureWithMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a5;
  if ([v13 length])
  {
    v14 = [[NSString alloc] initWithFormat:v13 arguments:&a9];
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_5:
    v15 = [NSString stringWithCString:a1 encoding:1];
    v16 = [v15 lastPathComponent];

    if (v16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v14 = &stru_264550;
  if (a1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v16 = &stru_264550;
LABEL_7:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v17 = [NSNumber numberWithInt:a2];
    *buf = 136316162;
    v19 = a4;
    v20 = 2080;
    v21 = a3;
    v22 = 2112;
    v23 = v16;
    v24 = 2112;
    v25 = v17;
    v26 = 2112;
    v27 = v14;
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure: %s in %s - %@:%@ %@", buf, 0x34u);
  }
}

void TUICrashFinalThrow(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if ([v9 length])
  {
    v10 = [[NSString alloc] initWithFormat:v9 arguments:&a9];
  }

  else
  {
    v10 = &stru_264550;
  }

  v11 = [NSException exceptionWithName:@"TUICrash" reason:v10 userInfo:0];
  objc_exception_throw(v11);
}

uint64_t sub_36E68(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 24) optimizeUpdatesForTransactionGroup:v3] && objc_msgSend(*(*(a1 + 32) + 24), "applyUpdatesForTransactionGroup:", v3))
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_36F2C;
    v6[3] = &unk_25EC30;
    v6[4] = *(a1 + 32);
    [v3 appendUpdateBlock:v6];
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_36F2C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) value];
  if ([v2 isObject])
  {
    v5 = *(a1 + 32);
    v3 = [NSArray arrayWithObjects:&v5 count:1];
    v4 = [v2 callWithArguments:v3];
  }
}

void sub_37114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3712C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_372A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3757C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 40) hoverRegions];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3764C;
  v6[3] = &unk_25EC80;
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_3764C(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  [a3 bounds];
  v9 = v6;
  v10 = v7;
  v11 = v8;
  if (*(a1 + 40) == 1)
  {
    v5 = *(a1 + 48) - CGRectGetMidX(*&v5) + v7 * -0.5;
  }

  [*(a1 + 32) addRegionWithKey:v12 rect:{v5, v9, v10, v11}];
}

void sub_37928(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  [*(a1 + 32) convertPoint:v11 toView:{*(a1 + 56), *(a1 + 64)}];
  v7 = v6;
  v9 = v8;
  if (([v11 isHidden] & 1) == 0)
  {
    [v11 alpha];
    if (v10 > 0.0 && [v11 isUserInteractionEnabled] && objc_msgSend(v11, "pointInside:withEvent:", *(a1 + 40), v7, v9))
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

void sub_38DBC(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = [v7 box];
  v5 = [v4 role];

  if (v5 == &dword_0 + 3)
  {
    [v7 setHidden:0];
    v6 = &OBJC_IVAR___TUIHFadeLayout__decorator;
    goto LABEL_5;
  }

  if (!v5)
  {
    [v7 setHidden:0];
    v6 = &OBJC_IVAR___TUIHFadeLayout__content;
LABEL_5:
    objc_storeStrong((*(a1 + 32) + *v6), a2);
    goto LABEL_7;
  }

  [v7 setHidden:1];
LABEL_7:
}

void sub_39134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_39158(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_4050();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_396BC(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

double sub_3922C(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8) == *a1)
  {
    v3 = 0;
    v6 = 0.0;
    v7 = *a1;
    v5 = 0.0;
    v4 = 0.0;
  }

  else
  {
    v3 = 0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = *a1;
    do
    {
      v8 = [*v7 box];
      v9 = [v8 valign];

      v10 = *v7;
      if (v9 > 1)
      {
        [v10 computedNaturalSize];
        if (v6 < v16)
        {
          v6 = v16;
        }
      }

      else
      {
        [v10 computedHeightAbovePivot];
        if (v4 < v11)
        {
          v4 = v11;
        }

        [*v7 computedNaturalSize];
        v13 = v12;
        [*v7 computedHeightAbovePivot];
        v15 = v13 - v14;
        if (v5 < v15)
        {
          v5 = v15;
        }

        v3 = 1;
      }

      ++v7;
    }

    while (v7 != *(a1 + 8));
    v2 = *a1;
  }

  if (v6 >= v5 + v4)
  {
    v17 = v6;
  }

  else
  {
    v17 = v5 + v4;
  }

  if (v7 != v2)
  {
    do
    {
      v18 = [*v2 box];
      v19 = [v18 valign];

      if (v19 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      if (v20 == 3)
      {
        goto LABEL_26;
      }

      if (v20 == 2)
      {
        goto LABEL_27;
      }

      if (v20 != 1)
      {
LABEL_26:
        [*v2 computedNaturalSize];
      }

      else
      {
        [*v2 computedHeightAbovePivot];
      }

LABEL_27:
      [*v2 computedOrigin];
      v21 = *v2++;
      [v21 setComputedOrigin:?];
    }

    while (v2 != *(a1 + 8));
  }

  if (v3)
  {
    v22 = v4 + (v17 - (v5 + v4)) * 0.5;
  }

  else
  {
    v22 = v17;
  }

  *(a1 + 16) = v22;
  return v17;
}

void sub_396BC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_3AAC();
}

void sub_39B1C(id a1)
{
  v1 = objc_alloc_init(TUIImagePrefetchControllerManager);
  v2 = qword_2E60D8;
  qword_2E60D8 = v1;
}

void sub_39E00(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_39E90;
  v4[3] = &unk_25DCA0;
  v4[4] = v2;
  v5 = v1;
  dispatch_sync(v3, v4);
}

void sub_39E90(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allKeys];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v7];
        if ([v8 stopTrackingController:*(a1 + 40)])
        {
          [*(*(a1 + 32) + 16) removeObjectForKey:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

uint64_t sub_3A0D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_3A0EC(void *a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 24);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = a1[5];
        v9 = [v7 controllerID];
        LODWORD(v8) = [v8 isEqual:v9];

        if (v8)
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_3A314(uint64_t a1)
{
  v2 = [*(a1 + 32) _controllerWithID:*(a1 + 40)];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = *(a1 + 48);
  v3 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v3)
  {
    v4 = *v45;
    v25 = &v42;
    v26 = &v41;
    v23 = v33;
    v24 = v35;
    v22 = v29;
    v21 = v2;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v45 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v44 + 1) + 8 * i);
        v7 = [v6 resource];
        if ([v7 isFileURL])
        {
          [v2 urlLoaded:v7];
        }

        else
        {
          v38 = 0;
          v39 = &v38;
          v40 = 0x3032000000;
          v41 = sub_3A0D4;
          v42 = sub_3A0E4;
          v43 = 0;
          v8 = *(a1 + 32);
          v9 = *(v8 + 32);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v35[0] = sub_3A6F8;
          v35[1] = &unk_25ED40;
          v37 = &v38;
          v35[2] = v8;
          v10 = v7;
          v36 = v10;
          dispatch_sync(v9, block);
          v11 = v39[5];
          if (v11)
          {
            [v6 priority];
            [v11 updatePriorty:*(a1 + 40) forController:?];
          }

          else
          {
            v12 = *(a1 + 56);
            [v6 priority];
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v33[0] = sub_3A748;
            v33[1] = &unk_25ED68;
            v33[2] = *(a1 + 32);
            v14 = [v12 resourceLoaderTaskWithURL:v10 priority:v32 completion:v13];
            v15 = v14;
            if (v14 && ([v14 isLoaded] & 1) == 0)
            {
              v16 = objc_opt_new();
              v17 = *(a1 + 32);
              v18 = *(v17 + 32);
              v28[0] = _NSConcreteStackBlock;
              v28[1] = 3221225472;
              v29[0] = sub_3AAC0;
              v29[1] = &unk_25E7C0;
              v29[2] = v17;
              v19 = v16;
              v30 = v19;
              v31 = v10;
              dispatch_sync(v18, v28);
              [v19 setResourceLoaderTask:v15];
              [v6 priority];
              [v19 updatePriorty:*(a1 + 40) forController:?];
              v20 = [v19 resourceLoaderTask];
              [v20 resume];

              v2 = v21;
            }

            else
            {
              [v2 urlLoaded:v10];
            }
          }

          _Block_object_dispose(&v38, 8);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v3);
  }
}

void sub_3A6F8(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_3A748(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3A7E4;
  v7[3] = &unk_25DCA0;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_3A7E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_3A0D4;
    v22 = sub_3A0E4;
    v23 = 0;
    v3 = *(a1 + 40);
    v4 = *(v3 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3AA00;
    block[3] = &unk_25DC78;
    block[4] = v3;
    v16 = v1;
    v17 = &v18;
    dispatch_sync(v4, block);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v19[5];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v24 count:16];
    if (v6)
    {
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(a1 + 40) _controllerWithID:{*(*(&v11 + 1) + 8 * v8), v11}];
          v10 = [*(a1 + 32) URL];
          [v9 urlLoaded:v10];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v11 objects:v24 count:16];
      }

      while (v6);
    }

    _Block_object_dispose(&v18, 8);
  }
}

void sub_3A9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3AA00(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) URL];
  v11 = [v2 objectForKey:v3];

  v4 = [v11 controllers];
  v5 = [v4 copy];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 16);
  v10 = [v8 URL];
  [v9 removeObjectForKey:v10];
}

void sub_3AE68(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 actionHandlerDelegate];
  [v8 performDropWithSession:*(a1 + 40) actionObject:v6 behavior:v7];
}

void sub_3AFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3AFEC(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = a2;
  v8 = [v5 actionHandlerDelegate];
  LOBYTE(v5) = [v8 canHandleDropSession:a1[5] actionObject:v6 behavior:v7];

  *(*(a1[6] + 8) + 24) = v5;
}

void sub_3C5B0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_3DE70(_Unwind_Exception *a1)
{
  v9 = v3;

  _Unwind_Resume(a1);
}

uint64_t TUI::Evaluation::ResolvedValue::isConvertibleToKind(id *this, int a2, TUI::Evaluation::Context *a3)
{
  v3 = *this;
  if (*this == a2)
  {
    return 1;
  }

  v4 = 0;
  if (a2 > 5)
  {
    if (a2 <= 10)
    {
      if (a2 == 6)
      {
        if (v3 != 7)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (a2 != 9)
        {
          return v4;
        }

        if ((v3 - 6) >= 2)
        {
          if (v3 != 16)
          {
            return 0;
          }

LABEL_29:
          v10 = TUI::Evaluation::ResolvedValue::_stringValue(this, a3);
          v4 = v10 != 0;

          return v4;
        }
      }

      return 1;
    }

    if (a2 == 12)
    {
      if (v3 != 16)
      {
        return 0;
      }

      v8 = this[1];
      if (v8)
      {
        v4 = *(a3 + 8) == objc_opt_class();
LABEL_39:

        return v4;
      }
    }

    else
    {
      if (a2 != 11)
      {
        return v4;
      }

      if (v3 != 6)
      {
        if (v3 == 9)
        {
          v8 = TUI::Evaluation::ResolvedValue::_stringValue(this, a3);
          v9 = [UIColor tui_colorWithHexString:v8];
LABEL_35:
          v4 = v9 != 0;

          goto LABEL_39;
        }

        if (v3 == 16)
        {
          if (sub_3FF80(a3 + 64, this[1]))
          {
            return 1;
          }

          v8 = TUI::Evaluation::ResolvedValue::_stringValue(this, a3);
          v9 = [UIColor tui_colorWithHexString:v8];
          goto LABEL_35;
        }

        return 0;
      }

      v8 = TUI::Symbol::Tab::string(*(a3 + 70), *(this + 8));
      if (v8)
      {
        v11 = [*(a3 + 19) colorRegistry];
        v12 = [v11 colorWithName:v8];
        v4 = v12 != 0;

        goto LABEL_39;
      }
    }

    v4 = 0;
    goto LABEL_39;
  }

  if (a2 == 1)
  {
    if (v3 == 2)
    {
      return 1;
    }
  }

  else
  {
    if (a2 != 2 && a2 != 5)
    {
      return v4;
    }

    if ((v3 - 1) < 2)
    {
      return 1;
    }
  }

  if (v3 != 16)
  {
    return 0;
  }

  return _NSIsNSNumber();
}

uint64_t sub_3FF80(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10[0] = objc_opt_class();
    v4 = sub_3D34((a1 + 48), v10);
    if (v4)
    {
      v5 = *(v4 + 24);
    }

    else
    {
      v6 = objc_opt_class();
      v7 = TUIDynamicCast(v6, v3);

      v10[2] = v10;
      v8 = sub_42708((a1 + 48), v10);
      v5 = v7 != 0;
      *(v8 + 24) = v7 != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

id TUI::Evaluation::ResolvedValue::_stringValue(TUI::Evaluation::ResolvedValue *this, const TUI::Evaluation::Context *a2)
{
  v3 = 0;
  v4 = *this;
  if (*this <= 6)
  {
    switch(v4)
    {
      case 1:
        v8 = [NSNumber numberWithDouble:*(this + 2)];
        v9 = [v8 stringValue];
        break;
      case 2:
        v8 = [NSNumber numberWithInteger:*(this + 2)];
        v9 = [v8 stringValue];
        break;
      case 6:
        v6 = *(a2 + 70);
        v7 = *(this + 8);
LABEL_23:
        v5 = TUI::Symbol::Tab::string(v6, v7);
        goto LABEL_24;
      default:
        goto LABEL_25;
    }

LABEL_21:
    v3 = v9;

    goto LABEL_25;
  }

  if (v4 <= 11)
  {
    if (v4 != 7)
    {
      if (v4 != 9)
      {
        goto LABEL_25;
      }

      v5 = *(this + 1);
      goto LABEL_24;
    }

    v6 = *(a2 + 70);
    v10 = *(this + 2);
    v11 = *(v6 + 5);
    if (v10 >= (*(v6 + 6) - v11) >> 1)
    {
      v7 = 0xFFFF;
    }

    else
    {
      v7 = *(v11 + 2 * v10);
    }

    goto LABEL_23;
  }

  if (v4 == 12)
  {
    v8 = [NSNumber numberWithBool:*(this + 16)];
    v9 = [v8 stringValue];
    goto LABEL_21;
  }

  if (v4 == 16 && (!_NSIsNSString() || (v3 = *(this + 1)) == 0))
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [*(this + 1) stringValue];
LABEL_24:
      v3 = v5;
      goto LABEL_25;
    }

    v3 = 0;
  }

LABEL_25:

  return v3;
}

uint64_t TUI::Evaluation::ResolvedValue::integerValue(TUI::Evaluation::ResolvedValue *this, const TUI::Evaluation::Context *a2)
{
  if (*this == 2)
  {
    return *(this + 2);
  }

  else
  {
    return TUI::Evaluation::ResolvedValue::floatValue(this, a2);
  }
}

double TUI::Evaluation::ResolvedValue::floatValue(TUI::Evaluation::ResolvedValue *this, const TUI::Evaluation::Context *a2)
{
  v4 = *this;
  if (*this != 16)
  {
    if (v4 == 2)
    {
      return *(this + 2);
    }

    if (v4 == 1)
    {
      return *(this + 2);
    }

    goto LABEL_10;
  }

  if (!_NSIsNSNumber())
  {
LABEL_10:
    TUI::Evaluation::Context::reportError(a2, 1000, 0);
    return 0.0;
  }

  v6 = *(this + 1);

  [v6 doubleValue];
  return result;
}

double TUI::Evaluation::ResolvedValue::floatOrDefaultValue(TUI::Evaluation::ResolvedValue *this, const TUI::Evaluation::Context *a2)
{
  v4 = *this;
  if (*this <= 5)
  {
    if (v4 == 1)
    {
      return *(this + 2);
    }

    if (v4 == 2)
    {
      return *(this + 2);
    }

LABEL_15:
    TUI::Evaluation::Context::reportError(a2, 1000, 0);
    return 0.0;
  }

  if (v4 == 6)
  {
    v7 = *(*(a2 + 70) + 40);
    if ((*(*(a2 + 70) + 48) - v7) < 0x9F)
    {
      v8 = 0xFFFF;
    }

    else
    {
      v8 = *(v7 + 158);
    }

    if (*(this + 8) != v8)
    {
      goto LABEL_15;
    }

    return NAN;
  }

  if (v4 == 7)
  {
    if (*(this + 2) != 79)
    {
      goto LABEL_15;
    }

    return NAN;
  }

  if (v4 != 16 || !_NSIsNSNumber())
  {
    goto LABEL_15;
  }

  v5 = *(this + 1);

  [v5 doubleValue];
  return result;
}

uint64_t TUI::Evaluation::ResolvedValue::symbolValue(TUI::Evaluation::ResolvedValue *this, const TUI::Evaluation::Context *a2)
{
  v2 = *this;
  if (*this <= 8)
  {
    if (v2 == 6)
    {
      return *(this + 8);
    }

    if (v2 == 7)
    {
      v3 = *(this + 2);
      v4 = *(*(a2 + 70) + 40);
      if (v3 < (*(*(a2 + 70) + 48) - v4) >> 1)
      {
        return *(v4 + 2 * v3);
      }

      return 0xFFFFLL;
    }

LABEL_15:
    TUI::Evaluation::Context::reportError(a2, 1000, 0);
    return 0xFFFFLL;
  }

  if (v2 != 9 && v2 != 16)
  {
    goto LABEL_15;
  }

  v7 = *(a2 + 70);
  v8 = TUI::Evaluation::ResolvedValue::_stringValue(this, a2);
  v9 = [v8 UTF8String];
  v10 = strlen(v9);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_6768();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v14 = v10;
  if (v10)
  {
    memmove(&__dst, v9, v10);
  }

  *(&__dst + v11) = 0;
  v5 = TUI::Symbol::Tab::lookup(v7, &__dst);
  if (v14 < 0)
  {
    operator delete(__dst);
  }

  return v5;
}

void sub_4050C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t TUI::Evaluation::ResolvedValue::nameValue(TUI::Evaluation::ResolvedValue *this, const TUI::Evaluation::Context *a2)
{
  if (*this == 8)
  {
    return *(this + 4);
  }

  v2 = TUI::Symbol::Entry::invalid;
  TUI::Evaluation::Context::reportError(a2, 1000, 0);
  return v2;
}

double TUI::Evaluation::ResolvedValue::transformValue@<D0>(TUI::Evaluation::ResolvedValue *this@<X0>, const TUI::Evaluation::Context *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *&CGAffineTransformIdentity.c;
  *a3 = *&CGAffineTransformIdentity.a;
  a3[1] = v4;
  a3[2] = *&CGAffineTransformIdentity.tx;
  if (*this == 13)
  {
    v5 = *(this + 1);
    if (v5)
    {
      [v5 CGAffineTransformValue];
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
      v7 = 0u;
    }

    *a3 = v7;
    a3[1] = v8;
    result = *&v9;
    a3[2] = v9;
  }

  else
  {

    TUI::Evaluation::Context::reportError(a2, 1000, 0);
  }

  return result;
}

id TUI::Evaluation::ResolvedValue::colorValue(id *this, const TUI::Evaluation::Context *a2)
{
  v4 = *this;
  v5 = 1000;
  if (*this <= 10)
  {
    if (v4 == 6)
    {
      v6 = TUI::Symbol::Tab::string(*(a2 + 70), *(this + 8));
      if (!v6)
      {
        v7 = 0;
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    if (v4 == 9)
    {
      v6 = TUI::Evaluation::ResolvedValue::_stringValue(this, a2);
      v7 = [UIColor tui_colorWithHexString:v6];
      if (v7 || !v6)
      {
        goto LABEL_19;
      }

LABEL_13:
      v8 = [*(a2 + 19) colorRegistry];
      v7 = [v8 colorWithName:v6];

      goto LABEL_19;
    }

LABEL_17:
    TUI::Evaluation::Context::reportError(a2, v5, 0);
    v7 = 0;
    goto LABEL_20;
  }

  if (v4 == 11)
  {
    v9 = this[1];
    v7 = v9;
    if (this[1] && !v9)
    {
      v5 = 1005;
      goto LABEL_17;
    }
  }

  else
  {
    if (v4 != 16)
    {
      goto LABEL_17;
    }

    if (!sub_3FF80(a2 + 64, this[1]) || (v7 = this[1]) == 0)
    {
      v6 = TUI::Evaluation::ResolvedValue::_stringValue(this, a2);
      v7 = [UIColor tui_colorWithHexString:v6];
LABEL_19:
    }
  }

LABEL_20:

  return v7;
}

id TUI::Evaluation::ResolvedValue::guideValue(id *this, const TUI::Evaluation::Context *a2)
{
  if (*this == 10)
  {
    v2 = this[1];
  }

  else
  {
    TUI::Evaluation::Context::reportError(a2, 1000, 0);
    v2 = 0;
  }

  return v2;
}

double TUI::Evaluation::ResolvedValue::sizeValue(id *this, const TUI::Evaluation::Context *a2)
{
  if (*this == 3)
  {
    [this[1] CGSizeValue];
    return v2;
  }

  else
  {
    width = CGSizeZero.width;
    TUI::Evaluation::Context::reportError(a2, 1000, 0);
  }

  return width;
}

double TUI::Evaluation::ResolvedValue::insetsValue(id *this, const TUI::Evaluation::Context *a2)
{
  v4 = *&UIEdgeInsetsZero.bottom;
  v7 = *&UIEdgeInsetsZero.top;
  v8 = v4;
  v5 = *this;
  if ((*this - 1) < 2)
  {
    goto LABEL_6;
  }

  if (v5 != 16)
  {
    if (v5 == 4)
    {
      [this[1] getBytes:&v7 length:32];
      return *&v7;
    }

    goto LABEL_7;
  }

  if (_NSIsNSNumber())
  {
LABEL_6:
    result = TUI::Evaluation::ResolvedValue::floatValue(this, a2);
    *(&v7 + 1) = result;
    *&v8 = result;
    *(&v8 + 1) = result;
    return result;
  }

LABEL_7:
  TUI::Evaluation::Context::reportError(a2, 1000, 0);
  return *&v7;
}

uint64_t TUI::Evaluation::ResolvedValue::lengthValue(id *this, const TUI::Evaluation::Context *a2)
{
  v10 = TUILengthNull;
  v4 = *this;
  if ((*this - 1) < 2)
  {
    goto LABEL_6;
  }

  if (v4 == 16)
  {
    if (!_NSIsNSNumber())
    {
      goto LABEL_9;
    }

LABEL_6:
    v5 = TUI::Evaluation::ResolvedValue::floatValue(this, a2);
    if (v5 <= -3.40282347e38)
    {
      v8 = 4286578687;
    }

    else
    {
      if (v5 < 3.40282347e38)
      {
        *&v6 = v5;
        v7 = v6 | 0x7FC0000000000000;
LABEL_13:
        *&v10 = v7;
        *(&v10 + 1) = 0x1700007FC00000;
        return v10;
      }

      v8 = 2139095039;
    }

    v7 = v8 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000;
    goto LABEL_13;
  }

  if (v4 != 5)
  {
LABEL_9:
    TUI::Evaluation::Context::reportError(a2, 1000, 0);
    return v10;
  }

  [this[1] getBytes:&v10 length:16];
  return v10;
}

id TUI::Evaluation::ResolvedValue::objectValue(TUI::Evaluation::ResolvedValue *this, TUI::Symbol::Tab **a2)
{
  v4 = *this;
  if (*this <= 8)
  {
    if (v4 <= 2)
    {
      if (v4 == 1)
      {
        v5 = [NSNumber numberWithDouble:*(this + 2)];
        goto LABEL_18;
      }

      if (v4 == 2)
      {
        v5 = [NSNumber numberWithInteger:*(this + 2)];
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    if (v4 != 3)
    {
      if (v4 == 4)
      {
        [*(this + 1) getBytes:v8 length:32];
        v5 = [NSValue valueWithUIEdgeInsets:v8[0], v8[1], v8[2], v8[3]];
        goto LABEL_18;
      }

      goto LABEL_23;
    }

LABEL_17:
    v5 = *(this + 1);
    goto LABEL_18;
  }

  if (v4 > 11)
  {
    if (v4 == 12)
    {
      v5 = [NSNumber numberWithBool:*(this + 16)];
      goto LABEL_18;
    }

    if (v4 == 16)
    {
      goto LABEL_17;
    }
  }

  else if (v4 == 9 || v4 == 11)
  {
    goto LABEL_17;
  }

LABEL_23:
  if (TUI::Evaluation::ResolvedValue::isConvertibleToKind(this, 9, a2))
  {
    v5 = TUI::Evaluation::ResolvedValue::stringValue(this, a2);
  }

  else
  {
    TUI::Evaluation::Context::reportError(a2, 1000, 0);
    v5 = 0;
  }

LABEL_18:

  return v5;
}

id TUI::Evaluation::ResolvedValue::stringValue(TUI::Evaluation::ResolvedValue *this, TUI::Symbol::Tab **a2)
{
  v3 = *this;
  if (*this > 0x10u)
  {
    goto LABEL_10;
  }

  if (((1 << v3) & 0x11206) != 0)
  {
    v5 = TUI::Evaluation::ResolvedValue::_stringValue(this, a2);
    if (v5)
    {
      goto LABEL_15;
    }

    if (!*(this + 1))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v3 != 6)
  {
    if (v3 == 7)
    {
      v6 = a2[70];
      v7 = *(this + 2);
      v8 = *(v6 + 5);
      if (v7 >= (*(v6 + 6) - v8) >> 1)
      {
        v9 = 0xFFFF;
      }

      else
      {
        v9 = *(v8 + 2 * v7);
      }

      goto LABEL_14;
    }

LABEL_10:
    TUI::Evaluation::Context::reportError(a2, 1000, 0);
LABEL_11:
    v5 = 0;
    goto LABEL_15;
  }

  v6 = a2[70];
  v9 = *(this + 8);
LABEL_14:
  v5 = TUI::Symbol::Tab::string(v6, v9);
LABEL_15:

  return v5;
}

id TUI::Evaluation::ResolvedValue::_objectValue(TUI::Evaluation::ResolvedValue *this)
{
  v1 = *this;
  if (*this == 1)
  {
    v3 = [NSNumber numberWithDouble:*(this + 2)];
  }

  else if (v1 == 16 || v1 == 9)
  {
    v3 = *(this + 1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id TUI::Evaluation::ResolvedValue::arrayValue(id *this, const TUI::Evaluation::Context *a2)
{
  if (*this == 16 && _NSIsNSArray())
  {
    v4 = this[1];
  }

  else
  {
    TUI::Evaluation::Context::reportError(a2, 1000, 0);
    v4 = 0;
  }

  return v4;
}

id TUI::Evaluation::ResolvedValue::colorArrayValue(id *this, const TUI::Evaluation::Context *a2)
{
  v3 = TUI::Evaluation::ResolvedValue::arrayValue(this, a2);
  if (v3)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if ((sub_3FF80(a2 + 64, *(*(&v9 + 1) + 8 * i)) & 1) == 0)
          {

            TUI::Evaluation::Context::reportError(a2, 1000, 0);
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
LABEL_12:
    v4 = 0;
  }

  return v4;
}

id TUI::Evaluation::ResolvedValue::stringArrayValue(id *this, const TUI::Evaluation::Context *a2)
{
  v3 = TUI::Evaluation::ResolvedValue::arrayValue(this, a2);
  if (v3)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if ((_NSIsNSString() & 1) == 0)
          {

            TUI::Evaluation::Context::reportError(a2, 1000, 0);
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
LABEL_12:
    v4 = 0;
  }

  return v4;
}

void TUI::Evaluation::ResolvedValue::springTimingParameters(id *this@<X0>, const TUI::Evaluation::Context *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = TUISpringTimingParametersZero;
  *(a3 + 16) = unk_24CEC0;
  *(a3 + 32) = 0;
  if (*this == 14)
  {
    [this[1] getBytes:a3 length:40];
  }

  else
  {
    TUI::Evaluation::Context::reportError(a2, 1000, 0);
  }
}

id TUI::Evaluation::ResolvedValue::BOOLValue(TUI::Evaluation::ResolvedValue *this, const TUI::Evaluation::Context *a2)
{
  if (*this != 16)
  {
    if (*this == 12)
    {
      v4 = *(this + 16);
      return (v4 & 1);
    }

    goto LABEL_9;
  }

  v5 = _NSIsNSNumber();
  v6 = *(this + 1);
  if (!v5)
  {
    if (!v6)
    {
LABEL_10:
      v4 = 0;
      return (v4 & 1);
    }

LABEL_9:
    TUI::Evaluation::Context::reportError(a2, 1000, 0);
    goto LABEL_10;
  }

  return [v6 BOOLValue];
}

id TUI::Evaluation::ResolvedValue::elementValue(id *this, const TUI::Evaluation::Context *a2)
{
  if (*this == 15)
  {
    v2 = this[1];
  }

  else
  {
    TUI::Evaluation::Context::reportError(a2, 1000, 0);
    v2 = 0;
  }

  return v2;
}

id TUI::Evaluation::ResolvedValue::fontSpecValue(id *this, const TUI::Evaluation::Context *a2)
{
  if (*this != 16)
  {
    if (*this == 17)
    {
      v2 = this[1];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (this[1])
  {
LABEL_5:
    TUI::Evaluation::Context::reportError(a2, 1000, 0);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

id TUI::Evaluation::ResolvedValue::structValue(id *this, const TUI::Evaluation::Context *a2)
{
  if (*this == 18)
  {
    v2 = this[1];
  }

  else
  {
    TUI::Evaluation::Context::reportError(a2, 1000, 0);
    v2 = 0;
  }

  return v2;
}

void TUI::Evaluation::ResolvedValue::resolveProperty(id *this@<X0>, const TUI::Evaluation::Context *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v81 = 0;
  *a4 = 0;
  *(a4 + 8) = 0;
  v8 = (a4 + 8);
  v9 = *(a2 + 70);
  v10 = *this;
  if (*this <= 13)
  {
    if (v10 != 3)
    {
      if (v10 == 4)
      {
        [this[1] getBytes:&v85 length:32];
        v11 = *(v9 + 40);
        v12 = (*(v9 + 48) - v11) >> 1;
        if (v12 < 3)
        {
          v13 = 0xFFFF;
        }

        else
        {
          v13 = v11[2];
        }

        if (v13 != a3)
        {
          if (v12 < 4)
          {
            v28 = 0xFFFF;
          }

          else
          {
            v28 = v11[3];
          }

          if (v28 != a3)
          {
            if (v12 < 5)
            {
              v40 = 0xFFFF;
            }

            else
            {
              v40 = v11[4];
            }

            if (v40 != a3)
            {
              if (v12 < 6)
              {
                v50 = 0xFFFF;
              }

              else
              {
                v50 = v11[5];
              }

              if (v50 == a3)
              {
                LODWORD(v82) = 1;
                v83 = 0;
                v84 = v88;
                sub_41C10(a4, &v82);

                return;
              }

              goto LABEL_80;
            }

LABEL_69:
            v29 = v87;
            goto LABEL_70;
          }

LABEL_48:
          v29 = v86;
          goto LABEL_70;
        }

        goto LABEL_27;
      }

      goto LABEL_33;
    }

    [this[1] CGSizeValue];
    v19 = v18;
    v21 = v20;
    v22 = *(v9 + 40);
    v23 = *(v9 + 48) - v22;
    if (v23)
    {
      if (*v22 != a3)
      {
        if (v23 < 3)
        {
          v24 = 0xFFFF;
        }

        else
        {
          v24 = v22[1];
        }

        goto LABEL_57;
      }
    }

    else
    {
      v24 = 0xFFFF;
      if (a3 != 0xFFFF)
      {
LABEL_57:
        if (v24 == a3)
        {
          *a4 = 1;
          v47 = *(a4 + 8);
          *(a4 + 8) = 0;

          *(a4 + 16) = v21;
          return;
        }

        v81 = TUI::Symbol::Tab::string(*(a2 + 70), a3);
        TUI::Evaluation::Context::reportError(a2, 1004, v81);
        goto LABEL_92;
      }
    }

    *a4 = 1;
    v31 = *(a4 + 8);
    *(a4 + 8) = 0;

    *(a4 + 16) = v19;
    return;
  }

  if (v10 == 14)
  {
    [this[1] getBytes:&v85 length:40];
    v25 = *(v9 + 40);
    v26 = (*(v9 + 48) - v25) >> 1;
    if (v26 < 0x49)
    {
      v27 = 0xFFFF;
    }

    else
    {
      v27 = v25[72];
    }

    if (v27 != a3)
    {
      if (v26 < 0x4A)
      {
        v30 = 0xFFFF;
      }

      else
      {
        v30 = v25[73];
      }

      if (v30 != a3)
      {
        if (v26 < 0x4B)
        {
          v41 = 0xFFFF;
        }

        else
        {
          v41 = v25[74];
        }

        if (v41 != a3)
        {
LABEL_80:
          v55 = TUI::Symbol::Tab::string(*(a2 + 70), a3);
          TUI::Evaluation::Context::reportError(a2, 1004, v55);

          return;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_27:
    v29 = v85;
LABEL_70:
    *a4 = 1;
    v51 = *(a4 + 8);
    *(a4 + 8) = 0;

    *(a4 + 16) = v29;
    return;
  }

  if (v10 != 16)
  {
    goto LABEL_33;
  }

  if (sub_41C50(a2 + 64, this[1]))
  {
    v14 = this[1];
    v80 = TUI::Symbol::Tab::string(*(a2 + 70), a3);
    v15 = [v14 tui_hasProperty:v80];
    v16 = v80;
    if (v15)
    {
      v17 = [this[1] tui_valueForProperty:v80];
      *a4 = 16;
      objc_storeStrong(v8, v17);

      goto LABEL_62;
    }
  }

  else
  {
    v16 = 0;
  }

  v10 = *this;
  if (*this != 16)
  {
    v81 = v16;
LABEL_33:
    if (v10 == 18)
    {
      v35 = this[1];
      if (v35)
      {
        v36 = v35;
        while (1)
        {
          v37 = sub_41D40([v36 value], a3);
          v38 = v37;
          if (v37)
          {
            break;
          }

          v39 = [v36 basedOn];

          v36 = v39;
          if (!v39)
          {
            goto LABEL_41;
          }
        }

        *a4 = *v37;
        objc_storeStrong(v8, *(v37 + 8));
        *(a4 + 16) = *(v38 + 16);
      }

      else
      {
LABEL_41:
        v36 = TUI::Symbol::Tab::string(*(a2 + 70), a3);
        TUI::Evaluation::Context::reportError(a2, 1004, v36);
      }

      goto LABEL_90;
    }

    if (v10 == 17)
    {
      v32 = *(v9 + 40);
      v33 = *(v9 + 48) - v32;
      if (v33 < 0x7D)
      {
        v34 = 0xFFFF;
      }

      else
      {
        v34 = v32[62];
      }

      if (v34 == a3)
      {
        v42 = this[1];
        v43 = *(a2 + 73);
        v44 = [v42 mappedSpecIfNeededWithEnvironment:v43];

        [v44 scale];
LABEL_84:
        v58 = v45;
        *a4 = 1;
        v59 = *(a4 + 8);
        *(a4 + 8) = 0;

        *(a4 + 16) = v58;
LABEL_92:
        v49 = v81;
        goto LABEL_93;
      }

      if (v33 < 0x81)
      {
        v46 = 0xFFFF;
      }

      else
      {
        v46 = v32[64];
      }

      if (v46 == a3)
      {
        v52 = this[1];
        v53 = *(a2 + 73);
        v44 = [v52 mappedSpecIfNeededWithEnvironment:v53];

        [v44 leading];
        goto LABEL_84;
      }

      if (v33 < 0xD1)
      {
        v54 = 0xFFFF;
      }

      else
      {
        v54 = v32[104];
      }

      if (v54 == a3)
      {
        v56 = this[1];
        v57 = *(a2 + 73);
        v44 = [v56 mappedSpecIfNeededWithEnvironment:v57];

        [v44 pointSize];
        goto LABEL_84;
      }
    }

LABEL_85:
    if (TUI::Evaluation::ResolvedValue::isConvertibleToKind(this, 11, a2))
    {
      v60 = TUI::Evaluation::ResolvedValue::colorValue(this, a2);
      v61 = v60;
      v62 = *(v9 + 40);
      v63 = (*(v9 + 48) - v62) >> 1;
      if (v63 < 0x27)
      {
        v64 = 0xFFFF;
      }

      else
      {
        v64 = v62[38];
      }

      if (v64 == a3)
      {
        v82 = 0;
        [v60 getRed:&v82 green:0 blue:0 alpha:0];
      }

      else
      {
        if (v63 < 0x28)
        {
          v69 = 0xFFFF;
        }

        else
        {
          v69 = v62[39];
        }

        if (v69 == a3)
        {
          v82 = 0;
          [v60 getRed:0 green:&v82 blue:0 alpha:0];
        }

        else
        {
          if (v63 < 0x29)
          {
            v70 = 0xFFFF;
          }

          else
          {
            v70 = v62[40];
          }

          if (v70 == a3)
          {
            v82 = 0;
            [v60 getRed:0 green:0 blue:&v82 alpha:0];
          }

          else
          {
            if (v63 < 0x2A)
            {
              v71 = 0xFFFF;
            }

            else
            {
              v71 = v62[41];
            }

            if (v71 == a3)
            {
              v82 = 0x3FF0000000000000;
              [v60 getRed:0 green:0 blue:0 alpha:&v82];
            }

            else
            {
              if (v63 < 0x3D)
              {
                v72 = 0xFFFF;
              }

              else
              {
                v72 = v62[60];
              }

              if (v72 != a3)
              {
                if (v63 < 0x6A)
                {
                  v73 = 0xFFFF;
                }

                else
                {
                  v73 = v62[105];
                }

                if (v73 == a3)
                {
                  v74 = *(a2 + 73);
                  v75 = [v74 traitCollection];
                  v76 = sub_41DC4(v61, v75, 1);
                }

                else
                {
                  if (v63 < 0x6B)
                  {
                    v77 = 0xFFFF;
                  }

                  else
                  {
                    v77 = v62[106];
                  }

                  if (v77 != a3)
                  {
                    v79 = TUI::Symbol::Tab::string(*(a2 + 70), a3);
                    TUI::Evaluation::Context::reportError(a2, 1004, v79);

                    goto LABEL_120;
                  }

                  v74 = *(a2 + 73);
                  v75 = [v74 traitCollection];
                  v76 = sub_41DC4(v61, v75, 2);
                }

                LODWORD(v85) = 11;
                v86 = v76;
                v78 = v76;
                sub_41C10(a4, &v85);

LABEL_120:
                return;
              }

              v82 = 0;
              [v60 getHue:0 saturation:0 brightness:&v82 alpha:0];
            }
          }
        }
      }

      LODWORD(v85) = 1;
      v86 = 0;
      v87 = v82;
      sub_41C10(a4, &v85);

      goto LABEL_120;
    }

    if (*this != 16)
    {
      v68 = TUI::Symbol::Tab::string(*(a2 + 70), a3);
      TUI::Evaluation::Context::reportError(a2, 1004, v68);

      goto LABEL_92;
    }

    v65 = objc_opt_class();
    v36 = NSStringFromClass(v65);
    v66 = TUI::Symbol::Tab::string(*(a2 + 70), a3);
    v67 = [NSString stringWithFormat:@"%@.%@", v36, v66];
    TUI::Evaluation::Context::reportError(a2, 1024, v67);

LABEL_90:
    goto LABEL_92;
  }

  if (this[1])
  {
    v81 = v16;
    goto LABEL_85;
  }

  *a4 = 16;
  v48 = *(a4 + 8);
  *(a4 + 8) = 0;
  v80 = v16;

LABEL_62:
  v49 = v80;
LABEL_93:
}

uint64_t sub_41C10(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t sub_41C50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_NSIsNSDictionary() & 1) != 0 || (_NSIsNSArray())
  {
    v4 = 1;
  }

  else if (v3)
  {
    v9[0] = objc_opt_class();
    v6 = sub_3D34((a1 + 8), v9);
    if (v6)
    {
      v4 = *(v6 + 24);
    }

    else
    {
      v7 = TUIProtocolCast(&OBJC_PROTOCOL___TUIPropertyAccessing, v3);

      v9[2] = v9;
      v8 = sub_42708((a1 + 8), v9);
      v4 = v7 != 0;
      *(v8 + 24) = v7 != 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_41D40(void *a1, unsigned int a2)
{
  v2 = (*(**a1 + 8))(*a1, a2 << 16);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = *(*v2 + 32);

  return v4();
}

id sub_41DC4(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_4293C;
  v19 = sub_4294C;
  v7 = v5;
  v20 = v7;
  if (v6)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_42954;
    v14[3] = &unk_25EDF0;
    v14[4] = a3;
    v8 = [v6 traitCollectionByModifyingTraits:v14];
    if (v8)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_42960;
      v11[3] = &unk_25EE18;
      v13 = &v15;
      v12 = v7;
      [v8 performAsCurrentTraitCollection:v11];
    }
  }

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void sub_41F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void TUI::Evaluation::ResolvedValue::testProperty(TUI::Evaluation::ResolvedValue *this@<X0>, const TUI::Evaluation::Context *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v38 = 0;
  v8 = *(a2 + 70);
  v9 = *this;
  if (*this <= 13)
  {
    if (v9 == 3)
    {
      v25 = *(v8 + 40);
      v26 = *(v8 + 48) - v25;
      if (v26)
      {
        if (*v25 == a3)
        {
          goto LABEL_59;
        }

        if (v26 < 3)
        {
          goto LABEL_62;
        }

        v27 = v25[1];
      }

      else
      {
        v27 = 0xFFFF;
        if (a3 == 0xFFFF)
        {
          goto LABEL_59;
        }
      }

LABEL_63:
      v10 = 0;
      v14 = v27 == a3;
      goto LABEL_77;
    }

    if (v9 != 4)
    {
      goto LABEL_46;
    }

    v16 = *(v8 + 40);
    v17 = (*(v8 + 48) - v16) >> 1;
    if (v17 < 3)
    {
      v18 = 0xFFFF;
    }

    else
    {
      v18 = v16[2];
    }

    if (v18 != a3)
    {
      v29 = v17 < 4 ? 0xFFFF : v16[3];
      if (v29 != a3)
      {
        v30 = v17 < 5 ? 0xFFFF : v16[4];
        if (v30 != a3)
        {
          if (v17 >= 6)
          {
            v27 = v16[5];
            goto LABEL_63;
          }

          goto LABEL_62;
        }
      }
    }

LABEL_59:
    v10 = 0;
    v14 = 1;
    goto LABEL_77;
  }

  if (v9 == 14)
  {
    v19 = *(v8 + 40);
    v20 = (*(v8 + 48) - v19) >> 1;
    if (v20 < 0x49)
    {
      v21 = 0xFFFF;
    }

    else
    {
      v21 = v19[72];
    }

    if (v21 != a3)
    {
      v28 = v20 < 0x4A ? 0xFFFF : v19[73];
      if (v28 != a3)
      {
        if (v20 >= 0x4B)
        {
          v27 = v19[74];
          goto LABEL_63;
        }

LABEL_62:
        v27 = 0xFFFF;
        goto LABEL_63;
      }
    }

    goto LABEL_59;
  }

  if (v9 == 16)
  {
    if (sub_41C50(a2 + 64, *(this + 1)))
    {
      v22 = *(this + 1);
      v23 = TUI::Symbol::Tab::string(*(a2 + 70), a3);
      if ([v22 tui_hasProperty:v23])
      {
        v24 = [*(this + 1) tui_valueForProperty:v23];
        v14 = v24 != 0;

        v10 = v23;
        goto LABEL_77;
      }

      v38 = v23;
    }

    else
    {
      v38 = 0;
    }

    goto LABEL_46;
  }

  if (v9 != 18)
  {
LABEL_46:
    v14 = 0;
    if (TUI::Evaluation::ResolvedValue::isConvertibleToKind(this, 11, a2))
    {
      v31 = *(v8 + 40);
      v32 = (*(v8 + 48) - v31) >> 1;
      v33 = v32 < 0x27 ? 0xFFFF : v31[38];
      if (v33 == a3 || (v32 < 0x28 ? (v34 = 0xFFFF) : (v34 = v31[39]), v34 == a3 || (v32 < 0x29 ? (v35 = 0xFFFF) : (v35 = v31[40]), v35 == a3 || (v32 < 0x2A ? (v36 = 0xFFFF) : (v36 = v31[41]), v36 == a3 || (v32 < 0x3D ? (v37 = 0xFFFF) : (v37 = v31[60]), v37 == a3)))))
      {
        v14 = 1;
      }
    }

    v10 = v38;
    goto LABEL_77;
  }

  v10 = *(this + 1);
  if (v10)
  {
    v11 = a3 << 16;
    while (1)
    {
      v39 = v10;
      v12 = [v10 value];
      (*(**v12 + 8))(*v12, v11);
      v14 = v13 != -1;
      if (v13 != -1)
      {
        break;
      }

      v15 = [v39 basedOn];

      v10 = v15;
      if (!v15)
      {
        goto LABEL_36;
      }
    }

    v10 = v39;
LABEL_36:

    v10 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_77:
  *a4 = 12;
  *(a4 + 8) = 0;
  *(a4 + 16) = v14;
}

id TUI::Evaluation::ResolvedValue::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  result = &dword_0 + 1;
  if (v2 <= 5)
  {
    if ((v2 - 3) >= 3)
    {
      if (v2 == 1)
      {
        return (*(a1 + 16) == *(a2 + 16));
      }

      if (v2 != 2)
      {
        return result;
      }

      return (*(a1 + 16) == *(a2 + 16));
    }
  }

  else
  {
    if (v2 > 0x12)
    {
LABEL_15:
      if (v2 == 6)
      {
        v5 = *(a1 + 16);
        v6 = *(a2 + 16);
        return (v5 == v6);
      }

      if (v2 != 7)
      {
        return result;
      }

      return (*(a1 + 16) == *(a2 + 16));
    }

    if (((1 << v2) & 0x7EE00) == 0)
    {
      if (v2 != 8)
      {
        if (v2 == 12)
        {
          v5 = *(a1 + 16);
          v6 = *(a2 + 16);
          return (v5 == v6);
        }

        goto LABEL_15;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v5 = *(a1 + 18);
        v6 = *(a2 + 18);
        return (v5 == v6);
      }

      return 0;
    }
  }

  v7 = *(a1 + 8);
  if (v7 == *(a2 + 8))
  {
    return &dword_0 + 1;
  }

  else
  {
    return [v7 isEqual:?];
  }
}

uint64_t sub_42610(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  if (v5)
  {
    sub_11420(v5);
  }

  return a1;
}

void *sub_42708(void *a1, unint64_t *a2)
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

uint64_t sub_4293C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_42960(uint64_t a1)
{
  v2 = [[UIColor alloc] initWithCGColor:{objc_msgSend(*(a1 + 32), "CGColor")}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_42FB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_42FDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _addTransactionAndProcess:*(a1 + 32)];
}

id sub_4302C(uint64_t a1)
{
  result = [*(a1 + 32) isCommitted];
  if ((result & 1) == 0)
  {
    v3 = [NSException alloc];
    v4 = *(a1 + 40);
    v8 = @"callstack";
    v9 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v6 = [v3 initWithName:@"UncommittedTransaction" reason:@"Transaction was scheduled but not committed in timely fashion (after 0.2s)" userInfo:v5];
    v7 = v6;

    objc_exception_throw(v6);
  }

  return result;
}

id sub_43254(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 56))
  {
    v3 = 1;
  }

  else
  {
    v3 = [*(v2 + 24) count] == 0;
  }

  *(*(a1[6] + 8) + 24) = v3;
  v4 = a1[5];
  v5 = *(a1[4] + 24);

  return [v5 addObject:v4];
}

uint64_t sub_433D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_433EC(uint64_t a1)
{
  v2 = [*(a1 + 32) _aq_instanceForTransaction:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_436F0(id *a1)
{
  v2 = [a1[4] _aq_instanceForTransaction:a1[5]];
  v3 = a1[5];
  v4 = [*(a1[4] + 5) dependencyToken];
  [v3 dependentOn:v4];

  objc_storeStrong(a1[4] + 5, a1[5]);
  ++*(a1[4] + 7);
  v5 = TUITransactionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = a1[4];
    v7 = v6[12];
    v8 = v6[5];
    *buf = 134218242;
    v26 = v7;
    v27 = 2114;
    v28 = v8;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[fid:%lu] scheduling sync transaction: %{public}@", buf, 0x16u);
  }

  v9 = [a1[6] options];
  v10 = [v9 flags];

  if ((v10 & 8) != 0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = *(a1[4] + 3);
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * v15);
          if (a1[6] != v16)
          {
            v17 = a1[5];
            v18 = [v16 dependencyToken];
            [v17 dependentOn:v18];
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  return [*(a1[4] + 3) addObject:{a1[5], v20}];
}

uint64_t sub_43A28(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_43F58(void *a1)
{
  if ([*(a1[4] + 48) containsTransaction:a1[5]])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 48));
    if (a1[5] == *(a1[4] + 40))
    {
      v2 = TUITransactionLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = a1[4];
        v4 = *(v3 + 96);
        v5 = *(v3 + 40);
        v8 = 134218242;
        v9 = v4;
        v10 = 2114;
        v11 = v5;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "[fid:%lu] clearing sync transaction: %{public}@", &v8, 0x16u);
      }

      v6 = a1[4];
      v7 = *(v6 + 40);
      *(v6 + 40) = 0;
    }
  }
}

id sub_4405C(void *a1)
{
  v2 = [*(a1[4] + 32) indexOfObjectIdenticalTo:*(*(a1[6] + 8) + 40)];
  v3 = a1[5];
  v4 = *(a1[4] + 32);
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {

    return [v4 addObject:v3];
  }

  else
  {

    return [v4 insertObject:v3 atIndex:?];
  }
}

void *sub_440D8(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 56);
  if (v2)
  {
    *(v1 + 56) = v2 - 1;
    v3 = result[4];
    if (!*(v3 + 56))
    {
      return [*(v3 + 8) setSynchronousTransactionInProgress:0];
    }
  }

  return result;
}

void sub_44338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4435C(uint64_t a1)
{
  v2 = [*(a1 + 32) _aq_instanceForTransaction:*(a1 + 40)];
  [v2 _aq_appendLayoutBlock:*(a1 + 56)];

  *(*(*(a1 + 64) + 8) + 24) = *(*(a1 + 32) + 56) != 0;
  v3 = [*(a1 + 48) options];
  v4 = [v3 flags];

  if ((v4 & 8) != 0)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = *(*(a1 + 32) + 24);
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          v11 = *(a1 + 40);
          if (v11 != v10)
          {
            v12 = [v10 dependencyToken];
            [v11 dependentOn:v12];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

void sub_45170(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Unwind_Resume(a1);
}

void sub_45250(void *a1)
{
  v2 = [*(a1[4] + 24) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 40));
  v5 = a1[4];
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  *(*(a1[7] + 8) + 24) = *(a1[4] + 56) != 0;
  if (*(*(a1[6] + 8) + 40))
  {
    v7 = TUITransactionLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1[4] + 96);
      v9 = *(*(a1[6] + 8) + 40);
      v10 = 134218242;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "[fid:%lu] picked up sync transaction for processing: %{public}@", &v10, 0x16u);
    }
  }
}

void sub_453B8(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 24) removeObject:{*(*(&v12 + 1) + 8 * v6), v12}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  if (*(a1 + 56))
  {
    v10 = a1 + 40;
    v9 = *(a1 + 40);
    v11 = *(v10 + 8);
    v8 = *(v9 + 48);
    *(v9 + 48) = v11;
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(v7 + 48);
    *(v7 + 48) = 0;
  }
}

void sub_45B28(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) removeCompletionDeferral];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_45C14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v1 + 48);
  if (v2 == v3)
  {
    *(v1 + 48) = 0;
  }
}

id sub_45C34(uint64_t a1)
{
  [*(a1 + 32) _invokeHandlersForUpdatesApplied];
  v2 = *(a1 + 32);

  return [v2 _invokeCompletions];
}

id sub_45ED0(void *a1)
{
  if (![*(a1[4] + 32) count])
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v2 = a1[4];
  v3 = *(v2 + 48);
  if (a1[5] == v3)
  {
    *(v2 + 48) = 0;

    v2 = a1[4];
  }

  if (*(v2 + 81) == 1)
  {
    *(*(a1[6] + 8) + 24) = 0;
    v2 = a1[4];
  }

  v4 = *(v2 + 32);
  v5 = a1[5];

  return [v4 addObject:v5];
}

id sub_46298(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) count];
  if (result)
  {
    *&v3 = 134218242;
    v9 = v3;
    do
    {
      v4 = *(a1 + 32);
      if (*(v4 + 64))
      {
        if (*(a1 + 48) != 1)
        {
          return result;
        }

        result = [*(v4 + 32) indexOfObjectPassingTest:&stru_25EFA0];
        if (result == 0x7FFFFFFFFFFFFFFFLL)
        {
          return result;
        }

        v4 = *(a1 + 32);
      }

      v5 = [*(v4 + 32) firstObject];
      [*(*(a1 + 32) + 32) removeObjectAtIndex:0];
      v6 = TUITransactionLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(*(a1 + 32) + 96);
        *buf = v9;
        v12 = v7;
        v13 = 2114;
        v14 = v5;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "[fid:%lu] dequeue group %{public}@", buf, 0x16u);
      }

      [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
      v8 = [v5 options];
      if (([v8 flags] & 4) != 0)
      {
        if ([v8 animate])
        {
          ++*(*(a1 + 32) + 64);
          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v10[2] = sub_464DC;
          v10[3] = &unk_25DE30;
          v10[4] = *(a1 + 32);
          [v5 addCompletion:v10];
        }
      }

      result = [*(*(a1 + 32) + 32) count];
    }

    while (result);
  }

  return result;
}

BOOL sub_464AC(id a1, TUITransactionGroup *a2, unint64_t a3, BOOL *a4)
{
  result = [(TUITransactionGroup *)a2 flags]& 1;
  *a4 = result;
  return result;
}

void sub_46764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_46790(uint64_t a1)
{
  v2 = [*(a1 + 32) _aq_layoutBlocksToApply];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_46A28(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_46C18(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_4734C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_47424(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a1 + 40) + *(*(*(a1 + 32) + 8) + 24);
  }

  v6 = *(*(*(a1 + 32) + 8) + 24);
  v7 = *(a1 + 48);
  v9 = v5;
  [v5 setComputedWidth:*(a1 + 56)];
  [v9 computeLayoutWithOrigin:{v7, v6}];
  [v9 layoutSize];
  *(*(*(a1 + 32) + 8) + 24) = v8 + *(*(*(a1 + 32) + 8) + 24);
}

void sub_47658(id a1)
{
  v4[0] = @"n";
  v4[1] = @"inherit-from";
  v1 = [NSArray arrayWithObjects:v4 count:2];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E60E8;
  qword_2E60E8 = v2;
}

void sub_49794(id a1)
{
  v4[0] = @"halign";
  v4[1] = @"vpivot";
  v4[2] = @"halign";
  v4[3] = @"vcompressed";
  v4[4] = @"estimated-width";
  v4[5] = @"estimated-height";
  v1 = [NSArray arrayWithObjects:v4 count:6];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E60F8;
  qword_2E60F8 = v2;
}

void sub_49B10(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v2 = [v1 mutableCopy];

  v6[0] = @"halign";
  v6[1] = @"layout-mode";
  v3 = [NSArray arrayWithObjects:v6 count:2];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E6108;
  qword_2E6108 = v4;
}

void sub_49C28(id a1)
{
  v4[0] = @"valign";
  v4[1] = @"hcompressed";
  v4[2] = @"estimated-width";
  v4[3] = @"estimated-height";
  v4[4] = @"estimated-height-above-pivot";
  v1 = [NSArray arrayWithObjects:v4 count:5];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6118;
  qword_2E6118 = v2;
}

void sub_4A184(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 32) "superclass")];
  v2 = [v1 mutableCopy];

  v3 = +[TUIAttributeSet supportedAttributesTextStyling];
  [v2 unionSet:v3];

  v6[0] = @"insets";
  v6[1] = @"text";
  v6[2] = @"return-key-type";
  v6[3] = @"cancel-text";
  v6[4] = @"tint";
  v6[5] = @"show-cancel-button";
  v4 = [NSArray arrayWithObjects:v6 count:6];
  [v2 addAttributesFromArray:v4];

  v5 = qword_2E6128;
  qword_2E6128 = v2;
}

void sub_4A304(id a1)
{
  v4 = @"binding";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6138;
  qword_2E6138 = v2;
}

void sub_4AA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 128));
  _Unwind_Resume(a1);
}

id sub_4AA98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v8 = [WeakRetained enabled];
  v9 = *(a1 + 48);
  v10 = objc_loadWeakRetained((a1 + 96));
  v11 = [v10 identifier];
  LOBYTE(v14) = *(a1 + 144);
  v12 = [TUISearchBarView renderModelWithStates:v6 actionHandler:v4 viewState:v5 enabled:v8 name:v9 identifier:v11 editingInsets:*(a1 + 104) placeholderText:*(a1 + 112) style:*(a1 + 120) text:*(a1 + 128) returnKeyType:*(a1 + 56) keyboardAppearance:*(a1 + 64) cancelText:*(a1 + 72) showCancel:*(a1 + 80), *(a1 + 136), *(a1 + 88), v14];

  return v12;
}

void sub_4BDB8(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v4 = [v1 mutableCopy];

  [v4 addAttributesFromArray:&__NSArray0__struct];
  v2 = [v4 copy];
  v3 = qword_2E6148;
  qword_2E6148 = v2;
}

void sub_4BE9C(id a1)
{
  v4 = @"binding";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6158;
  qword_2E6158 = v2;
}

void sub_4E584(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSizeAndIntrinsic];
  v2 = [v1 mutableCopy];

  v6[0] = @"background-color";
  v6[1] = @"chart-type";
  v6[2] = @"color";
  v6[3] = @"columns";
  v6[4] = @"corner-radius";
  v6[5] = @"font";
  v6[6] = @"progress";
  v6[7] = @"shadow-color";
  v6[8] = @"spacing";
  v6[9] = @"text";
  v6[10] = @"title";
  v3 = [NSArray arrayWithObjects:v6 count:11];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E6168;
  qword_2E6168 = v4;
}

void sub_4F0DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (([a3 hostedViewFlags] & 4) != 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

void sub_4F33C(id a1)
{
  v3 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 bounds];
  qword_2E6178 = v1;
  qword_2E6180 = v2;
}

id sub_5126C(uint64_t a1)
{
  [*(a1 + 32) _computeCurrentValue:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 48);

  return [v2 setValue:?];
}

id sub_5308C(void *a1, void *a2, int a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = 0;
  if (v7 && v8 != v7)
  {
    v11 = [v7 box];
    v12 = [v11 refId];
    v13 = [v12 isEqualToString:v9];

    if (v13)
    {
      v10 = v7;
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = [v7 children];
      v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v23 + 1) + 8 * i);
            if (([v19 hidden] & 1) == 0)
            {
              v20 = sub_5308C(v19, v8, 0, v9);
              if (v20)
              {
                v10 = v20;

                goto LABEL_18;
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      if (a3)
      {
        v21 = [v7 layoutAncestor];
        v10 = sub_5308C(v21, v7, 1, v9);
      }

      else
      {
        v10 = 0;
      }
    }
  }

LABEL_18:

  return v10;
}

void sub_533AC(id a1)
{
  v1 = qword_2E6190;
  qword_2E6190 = &off_275788;
}

void sub_53440(id a1)
{
  v1 = qword_2E61A0;
  qword_2E61A0 = &off_2757B0;
}

void TUI::Evaluation::Variables::Capture::create(void *a1@<X1>, void *a2@<X5>, void *a3@<X8>)
{
  v5 = a1;
  v6 = a2;
  *a3 = 0;
  a3[1] = 0;
  operator new();
}

void TUI::Evaluation::Variables::Capture::create(TUI::Evaluation::Variables::Capture *this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    operator new();
  }

  TUI::Evaluation::Variables::Capture::emptyClosed(a2);
}

void TUI::Evaluation::Variables::Capture::emptyClosed(void *a1@<X8>)
{
  if (qword_2E61C0 != -1)
  {
    sub_199C60();
  }

  v3 = qword_2E61B8;
  *a1 = qword_2E61B0;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }
}

void TUI::Evaluation::Variables::Capture::emptyClosedComponentPassthrough(void *a1@<X8>)
{
  if (qword_2E61D8 != -1)
  {
    sub_199C74();
  }

  v3 = qword_2E61D0;
  *a1 = qword_2E61C8;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t TUI::Evaluation::Variables::Capture::Capture(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = off_25F2D8;
  *(a1 + 8) = off_25F398;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  objc_storeWeak((a1 + 32), 0);
  return a1;
}

uint64_t TUI::Evaluation::Variables::Capture::Capture(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  *a1 = off_25F2D8;
  *(a1 + 8) = off_25F398;
  v11 = v9;
  *(a1 + 32) = 0;
  *(a1 + 16) = v11;
  *(a1 + 24) = 0;
  *(a1 + 40) = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  objc_storeWeak((a1 + 32), v10);
  v12 = *(a1 + 40);
  bzero(v12, 8uLL);
  if (a4)
  {
    *v12 |= 1uLL;
  }

  if (a5)
  {
    *v12 |= 2uLL;
  }

  return a1;
}

void sub_53C7C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v4);

  _Unwind_Resume(a1);
}

uint64_t TUI::Evaluation::Variables::Capture::Capture(uint64_t a1, unsigned int *a2, void *a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v13 = a3;
  v14 = a7;
  *a1 = off_25F2D8;
  *(a1 + 8) = off_25F398;
  v15 = v14;
  *(a1 + 32) = 0;
  *(a1 + 16) = v15;
  v16 = (a2[1] & 0xFFF) + (a2[3] & 0xFFF);
  v17 = (a2[4] & 0xFFF) + (a2[5] & 0xFFF) + (a2[2] & 0xFFF);
  v18 = 40 * (a2[6] & 0xFFF) + 48 * v16 + 32 * v17 + ((24 * (*a2 & 0xFFF) + (((a2[6] & 0xFFF) + v16 + v17 + (*a2 & 0xFFF) + 65) >> 3)) & 0x3FFFFFF8);
  *(a1 + 24) = a2;
  objc_storeWeak((a1 + 32), v13);
  v19 = malloc_type_malloc(v18, 0xCC66D99EuLL);
  v159 = a1 + 32;
  v182 = v13;
  *(a1 + 40) = v19;
  bzero(v19, (((*a2 & 0xFFF) + (a2[1] & 0xFFF) + (a2[2] & 0xFFF) + (a2[3] & 0xFFF) + (a2[4] & 0xFFF) + (a2[5] & 0xFFF) + (a2[6] & 0xFFF) + 65) >> 3) & 0x1FFFFFF8);
  if (a4)
  {
    *v19 |= 1uLL;
  }

  v200 = v19;
  v183 = a2;
  v184 = a1;
  v20 = *(a1 + 24);
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[2];
  v24 = v20[3];
  v25 = v20[5];
  v175 = v20[4];
  v185 = v20[6];
  v26 = *a2;
  v192 = v15;
  v27 = [v192 packageBuffer];
  if ((v26 & 0xFFF) != 0)
  {
    v28 = v27;
    v29 = 0;
    v30 = (v200 + ((((v21 & 0xFFF) + (v22 & 0xFFF) + (v23 & 0xFFF) + (v24 & 0xFFFu) + (v175 & 0xFFF) + (v25 & 0xFFF) + (v185 & 0xFFF) + 65) >> 3) & 0x1FFFFFF8) + 16);
    v31 = 4 * (v26 >> 12);
    do
    {
      v32 = *(v31 + v28[42]);
      v25 = v32 | v25 & 0xFFFFFFFF00000000;
      v33 = (*(*a6 + 8))(a6, v25);
      if (a5)
      {
        if (v34 != -1)
        {
          goto LABEL_9;
        }

        v22 = v32 | v22 & 0xFFFFFFFF00000000;
        v33 = (*(*a5 + 8))(a5, v22);
      }

      if (v34 != -1)
      {
LABEL_9:
        *(v200 + (((v29 + 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v29 + 2);
        v35 = (*(*v33 + 32))(v33);
        *(v30 - 4) = *v35;
        *(v30 - 1) = *(v35 + 8);
        *v30 = *(v35 + 16);
      }

      ++v29;
      v30 += 3;
      v31 += 4;
    }

    while ((v26 & 0xFFF) != v29);
  }

  v36 = *(v184 + 24);
  v37 = *v36;
  v38 = v36[1];
  v39 = v36[2];
  v40 = v36[3];
  v41 = v36[5];
  v176 = v36[4];
  v186 = v36[6];
  v43 = *a2;
  v42 = a2[1];
  v193 = v192;
  v44 = [v193 packageBuffer];
  v45 = v42 & 0xFFF;
  if ((v42 & 0xFFF) != 0)
  {
    v46 = v44;
    v47 = (v43 & 0xFFF) + 2;
    v48 = (v200 + (((((v186 & 0xFFF) + (v37 & 0xFFF) + (v38 & 0xFFF) + (v39 & 0xFFF) + (v40 & 0xFFFu) + (v176 & 0xFFF) + (v41 & 0xFFFu) + 2 + 63) >> 3) + 24 * (v37 & 0xFFF)) & 0x3FFFFFF8));
    v49 = 4 * (v42 >> 12);
    do
    {
      v50 = *(v49 + v46[42]);
      v42 = v50 | v42 & 0xFFFFFFFF00000000;
      v51 = (**a6)(a6, v42);
      if (a5)
      {
        if (v52 != -1)
        {
          goto LABEL_17;
        }

        v38 = v50 | v38 & 0xFFFFFFFF00000000;
        v51 = (**a5)(a5, v38);
      }

      if (v52 != -1)
      {
LABEL_17:
        *(v200 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
        v53 = (*(*v51 + 16))(v51);
        TUI::Evaluation::Enumerator::State::State(v48, v53);
      }

      v48 = (v48 + 48);
      ++v47;
      v49 += 4;
      --v45;
    }

    while (v45);
  }

  v54 = *v183;
  v55 = v183[1];
  v56 = *(v184 + 24);
  v57 = v56[1];
  v170 = *v56;
  v58 = v56[2];
  v59 = v56[3];
  v60 = v56[4];
  v61 = v56[5];
  v177 = v56[6];
  v62 = v183[2];
  v187 = v193;
  v194 = [v187 packageBuffer];
  v63 = v62 & 0xFFF;
  if ((v62 & 0xFFF) != 0)
  {
    v64 = (v54 & 0xFFF) + (v55 & 0xFFF) + 2;
    v65 = (&v200[6 * (v57 & 0xFFF) + 2] + (((((v177 & 0xFFF) + (v57 & 0xFFF) + (v170 & 0xFFF) + (v58 & 0xFFF) + (v59 & 0xFFFu) + (v60 & 0xFFF) + (v61 & 0xFFFu) + 2 + 63) >> 3) + 24 * (v170 & 0xFFF)) & 0x3FFFFFF8));
    v66 = 4 * (v62 >> 12);
    do
    {
      v67 = *(v66 + v194[42]);
      v55 = v67 | v55 & 0xFFFFFFFF00000000;
      v69 = (*(*a6 + 16))(a6, v55);
      v70 = v68;
      if (a5)
      {
        if (v68 != -1)
        {
          goto LABEL_25;
        }

        v57 = v67 | v57 & 0xFFFFFFFF00000000;
        v69 = (*(*a5 + 16))(a5, v57);
        v70 = v71;
      }

      if (v70 != -1)
      {
LABEL_25:
        *(v200 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
        v72 = (*(*v69 + 40))(v69, v70);
        (*(*v69 + 80))(v206, v69, v70);
        *(v65 - 2) = v72;
        *(v65 - 2) = *v206;
        *v65 = *&v206[8];
      }

      v65 += 2;
      ++v64;
      v66 += 4;
      --v63;
    }

    while (v63);
  }

  v74 = *v183;
  v73 = v183[1];
  v75 = *(v184 + 24);
  v166 = *v75;
  v171 = v75[1];
  v76 = v75[2];
  v77 = v75[3];
  v78 = v75[4];
  v79 = v75[5];
  v178 = v75[6];
  v81 = v183[2];
  v80 = v183[3];
  v188 = v187;
  v195 = [v188 packageBuffer];
  v82 = v80 & 0xFFF;
  if ((v80 & 0xFFF) != 0)
  {
    v83 = (v74 & 0xFFF) + (v73 & 0xFFF) + (v81 & 0xFFF) + 2;
    v84 = v171 & 0xFFF;
    v85 = ((((v178 & 0xFFF) + (v76 & 0xFFF) + v84 + (v166 & 0xFFF) + (v77 & 0xFFFu) + (v78 & 0xFFF) + (v79 & 0xFFFu) + 2 + 63) >> 3) + 24 * (v166 & 0xFFF)) & 0x3FFFFFF8;
    v86 = 4 * (v80 >> 12);
    v87 = (&v200[6 * v84 + 4 + 4 * (v76 & 0xFFF)] + v85);
    do
    {
      v88 = *(v86 + v195[42]);
      v81 = v88 | v81 & 0xFFFFFFFF00000000;
      v90 = (*(*a6 + 24))(a6, v81);
      v91 = v89;
      if (a5)
      {
        if (v89 != -1)
        {
          goto LABEL_33;
        }

        v76 = v88 | v76 & 0xFFFFFFFF00000000;
        v90 = (*(*a5 + 24))(a5, v76);
        v91 = v92;
      }

      if (v91 != -1)
      {
LABEL_33:
        *(v200 + ((v83 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v83;
        (*(*v90 + 48))(v206, v90, v91);
        (*(*v90 + 88))(v202, v90, v91);
        sub_56F90(v202, a6, v188, a8, &v204);
        v93 = v87 - 2;
        v94 = *v206;
        *(v93 + 2) = *&v206[16];
        *v93 = v94;
        *(v87 - 2) = v204;
        *v87 = v205;
        if (v203)
        {
          sub_11420(v203);
        }
      }

      v86 += 4;
      ++v83;
      v87 += 3;
      --v82;
    }

    while (v82);
  }

  v95 = *v183;
  v96 = v183[1];
  v97 = v183[2];
  v98 = v183[3];
  v99 = *(v184 + 24);
  v172 = v99[2];
  v179 = v99[3];
  v100 = *v99;
  v101 = v99[4];
  v163 = v99[5];
  v167 = v99[1];
  v102 = v99[6];
  v103 = v183[4];
  v189 = v188;
  v196 = [v189 packageBuffer];
  v104 = v103 & 0xFFF;
  if ((v103 & 0xFFF) != 0)
  {
    v105 = (v95 & 0xFFF) + (v96 & 0xFFF) + (v97 & 0xFFF) + (v98 & 0xFFF) + 2;
    v106 = v172 & 0xFFF;
    v107 = (v167 & 0xFFF) + (v179 & 0xFFF);
    v108 = ((((v102 & 0xFFF) + v107 + v106 + (v100 & 0xFFF) + (v101 & 0xFFF) + (v163 & 0xFFFu) + 2 + 63) >> 3) + 24 * (v100 & 0xFFF)) & 0x3FFFFFF8;
    v109 = 4 * (v103 >> 12);
    v110 = (v200 + (48 * v107 + 32 * v106) + v108 + 16);
    do
    {
      v111 = *(v109 + v196[42]);
      v95 = v111 | v95 & 0xFFFFFFFF00000000;
      v113 = (*(*a6 + 32))(a6, v95);
      v114 = v112;
      if (a5)
      {
        if (v112 != -1)
        {
          goto LABEL_42;
        }

        v102 = v111 | v102 & 0xFFFFFFFF00000000;
        v113 = (*(*a5 + 32))(a5);
        v114 = v115;
      }

      if (v114 != -1)
      {
LABEL_42:
        *(v200 + ((v105 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v105;
        v116 = (*(*v113 + 56))(v113, v114);
        (*(*v113 + 96))(&v204, v113, v114);
        sub_56F90(&v204, a6, v189, a8, v206);
        *(v110 - 2) = v116;
        *(v110 - 2) = *v206;
        *v110 = *&v206[8];
        if (*(&v205 + 1))
        {
          sub_11420(*(&v205 + 1));
        }
      }

      v109 += 4;
      ++v105;
      v110 += 2;
      --v104;
    }

    while (v104);
  }

  v173 = v183[1];
  v180 = *v183;
  v164 = v183[3];
  v168 = v183[2];
  v117 = *(v184 + 24);
  v119 = v117[2];
  v118 = v117[3];
  v120 = *v117;
  v161 = v117[1];
  v122 = v117[4];
  v121 = v117[5];
  v123 = v117[6];
  v125 = v183[4];
  v124 = v183[5];
  v190 = v189;
  v197 = [v190 packageBuffer];
  v126 = v124 & 0xFFF;
  if ((v124 & 0xFFF) != 0)
  {
    v127 = (v161 & 0xFFF) + (v118 & 0xFFF);
    v128 = 4 * (v124 >> 12);
    v129 = (v180 & 0xFFF) + (v173 & 0xFFF) + (v168 & 0xFFF) + (v164 & 0xFFF) + (v125 & 0xFFF) + 2;
    v130 = (&v200[6 * v127 + 2 + 4 * (v119 & 0xFFF) + 4 * (v122 & 0xFFFu)] + ((24 * (v120 & 0xFFF) + (((v119 & 0xFFF) + (v122 & 0xFFF) + v127 + (v120 & 0xFFF) + (v121 & 0xFFF) + (v123 & 0xFFF) + 65) >> 3)) & 0x3FFFFFF8));
    do
    {
      v131 = *(v128 + v197[42]);
      v121 = v131 | v121 & 0xFFFFFFFF00000000;
      v133 = (*(*a6 + 40))(a6, v121);
      v134 = v132;
      if (a5)
      {
        if (v132 != -1)
        {
          goto LABEL_51;
        }

        v123 = v131 | v123 & 0xFFFFFFFF00000000;
        v133 = (*(*a5 + 40))(a5);
        v134 = v135;
      }

      if (v134 != -1)
      {
LABEL_51:
        *(v200 + ((v129 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v129;
        v136 = (*(*v133 + 64))(v133, v134);
        (*(*v133 + 104))(&v204, v133, v134);
        sub_56F90(&v204, a6, v190, a8, v206);
        *(v130 - 2) = v136;
        *(v130 - 2) = *v206;
        *v130 = *&v206[8];
        if (*(&v205 + 1))
        {
          sub_11420(*(&v205 + 1));
        }
      }

      v128 += 4;
      ++v129;
      v130 += 2;
      --v126;
    }

    while (v126);
  }

  v174 = v183[1];
  v181 = *v183;
  v165 = v183[3];
  v169 = v183[2];
  v160 = v183[5];
  v162 = v183[4];
  v137 = *(v184 + 24);
  v139 = v137[4];
  v138 = v137[5];
  v141 = v137[2];
  v140 = v137[3];
  v142 = *v137;
  v143 = v137[1];
  v144 = v137[6];
  v145 = v183[6];
  v191 = v190;
  v198 = [v191 packageBuffer];
  v146 = v145 & 0xFFF;
  if ((v145 & 0xFFF) != 0)
  {
    v147 = (v141 & 0xFFF) + (v139 & 0xFFF) + (v138 & 0xFFF);
    v148 = &v200[6 * (v143 & 0xFFF) + 6 * (v140 & 0xFFF) + 4 * v147] + ((24 * (v142 & 0xFFF) + ((v147 + (v143 & 0xFFF) + (v140 & 0xFFF) + (v142 & 0xFFF) + (v144 & 0xFFF) + 65) >> 3)) & 0x3FFFFFF8);
    v149 = 4 * (v145 >> 12);
    v150 = (v181 & 0xFFF) + (v174 & 0xFFF) + (v169 & 0xFFF) + (v165 & 0xFFF) + (v162 & 0xFFF) + (v160 & 0xFFF) + 2;
    v151 = v148 + 16;
    do
    {
      v152 = *(v149 + v198[42]);
      v139 = v152 | v139 & 0xFFFFFFFF00000000;
      v154 = (*(*a6 + 48))(a6, v139);
      v155 = v153;
      if (a5)
      {
        if (v153 != -1)
        {
          goto LABEL_60;
        }

        v144 = v152 | v144 & 0xFFFFFFFF00000000;
        v154 = (*(*a5 + 48))(a5);
        v155 = v156;
      }

      if (v155 != -1)
      {
LABEL_60:
        *(v200 + ((v150 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v150;
        v157 = (*(*v154 + 72))(v154, v155);
        (*(*v154 + 112))(&v204, v154, v155);
        sub_56F90(&v204, a6, v191, a8, v206);
        *(v151 - 2) = *v157;
        *(v151 - 2) = *(v157 + 8);
        *v151 = *v206;
        *(v151 + 8) = *&v206[8];
        if (*(&v205 + 1))
        {
          sub_11420(*(&v205 + 1));
        }
      }

      v149 += 4;
      ++v150;
      v151 += 40;
      --v146;
    }

    while (v146);
  }

  return v184;
}