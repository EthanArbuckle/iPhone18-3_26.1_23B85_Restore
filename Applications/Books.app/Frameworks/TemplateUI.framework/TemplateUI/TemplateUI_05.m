void TUI::Evaluation::Context::pushNamedElement(TUI::Instruction::Evaluation **a1, unsigned int a2, TUI::Instruction::Decoder *a3)
{
  if (TUIValueNotNil(a3))
  {
    TUI::Instruction::Evaluation::evaluate(&v15, a1[1], a3);
    v6 = TUI::Evaluation::ResolvedValue::elementValue(&v15, a1);

    if (v6 && (~a2 & 0xFFFF0000) != 0 && a2 != 0xFFFFLL)
    {
      v7 = [v6 parsedElement];

      v8 = *a1 + 8;
      if (v7)
      {
        v9 = [v6 parsedElement];
        v15 = v9;
        LODWORD(v16) = TUIElementNodeNil;
        [v6 closureAndCapture];
        (*(*v8 + 56))(v8, a2, &v15, v13);
        if (v14)
        {
          sub_11420(v14);
        }
      }

      else
      {
        v10 = [v6 node];
        v15 = 0;
        LODWORD(v16) = v10;
        [v6 closureAndCapture];
        (*(*v8 + 56))(v8, a2, &v15, v11);
        if (v12)
        {
          sub_11420(v12);
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }
}

void sub_FADD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a12)
  {
    sub_11420(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t TUI::Evaluation::Context::pushStyle(uint64_t *a1, int *a2)
{
  result = TUIDefinitionNotNil(*a2);
  if (result)
  {
    v5 = a1[72];
    v6 = *a2;
    if (*(v5 + 184) > v6 && (v7 = *(v5 + 176) + 12 * v6) != 0)
    {
      v8 = *(v7 + 2);
      v9 = *(v7 + 4) << 16;
    }

    else
    {
      v8 = 0;
      v9 = 4294901760;
    }

    v10 = *a1;
    v11 = *a2;
    v12 = *(a2 + 2);
    return (*(*(v10 + 8) + 24))(v10 + 8, v8 | v9, &v11);
  }

  return result;
}

uint64_t TUI::Evaluation::Context::pushAnimation(void *a1, unsigned int a2)
{
  v3 = a2;
  result = TUIDefinitionNotNil(a2);
  if (result)
  {
    v5 = a1[72];
    if (*(v5 + 184) > v3)
    {
      v6 = *(v5 + 176) + 12 * v3;
      if (v6)
      {
        if (*(v6 + 4) != 0xFFFFLL && *(v6 + 2) != 0xFFFF)
        {
          v8 = *(*(*a1 + 8) + 32);

          return v8();
        }
      }
    }
  }

  return result;
}

uint64_t TUI::Evaluation::Context::pushDefinedElement(void *a1, unsigned int a2)
{
  v3 = a2;
  result = TUIDefinitionNotNil(a2);
  if (result)
  {
    v5 = a1[72];
    if (*(v5 + 184) > v3)
    {
      v6 = *(v5 + 176) + 12 * v3;
      if (v6)
      {
        if (*(v6 + 4) != 0xFFFFLL && *(v6 + 2) != 0xFFFF)
        {
          v8 = *(*(*a1 + 8) + 40);

          return v8();
        }
      }
    }
  }

  return result;
}

uint64_t TUI::Evaluation::Context::pushClosure(uint64_t a1)
{
  return (*(**a1 + 120))();
}

{
  return (*(**a1 + 128))();
}

{
  return (*(**a1 + 136))();
}

{
  return (*(**a1 + 144))();
}

{
  return (*(**a1 + 152))();
}

id TUI::Evaluation::Context::lastError(id *this)
{
  v1 = [this[85] lastObject];
  v2 = [v1 code];

  return v2;
}

void sub_FB2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_11420(a12);
  }

  operator delete();
}

void sub_FB334(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  *a2 = v3;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 544);
  v5 = *(a1 + 752);
  v6 = *(a1 + 208);
  v7 = *(a1 + 760);
  if (v3[1] != v4 || v3[2] != v5 || v3[3] != v7)
  {

    goto LABEL_8;
  }

  v8 = v3[4];

  if (v8 != v6)
  {
LABEL_8:
    operator new();
  }
}

void sub_FB468(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_11420(v1);
  }

  _Unwind_Resume(exception_object);
}

void TUI::Evaluation::Context::evaluateWithSnapshot(uint64_t *a1, uint64_t **a2, void *a3)
{
  v57 = a3;
  v5 = a1[68];
  v52 = v5;
  v56 = *(a1 + 41);
  *(a1 + 41) = 0u;
  v55 = a1[84];
  a1[84] = 0;
  v6 = a1[76];
  v7 = a1[75];
  v54 = a1[94];
  v53 = a1[95];
  objc_storeStrong(a1 + 68, *((*a2)[2] + 8));
  v8 = *a2;
  if (a1 + 82 != *a2 + 6)
  {
    sub_10739C(a1 + 82, v8[6], v8[7], (v8[7] - v8[6]) >> 2);
    v8 = *a2;
  }

  objc_storeStrong(a1 + 76, v8[5]);
  objc_storeStrong(a1 + 75, (*a2)[4]);
  objc_storeStrong(a1 + 94, *((*a2)[2] + 16));
  objc_storeStrong(a1 + 95, *((*a2)[2] + 24));
  v51 = a1[26];
  a1[26] = *((*a2)[2] + 32);
  v50 = *(a1 + 61);
  v65 = 1065353216;
  memset(v66, 0, sizeof(v66));
  v67 = 1065353216;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v9 = (a1 + 31);
  v10 = *(a1 + 33);
  v60 = *(a1 + 31);
  v61 = v10;
  *(a1 + 31) = 0u;
  *(a1 + 33) = 0u;
  v11 = (a1 + 35);
  v12 = *(a1 + 37);
  v62 = *(a1 + 35);
  v63 = v12;
  *(a1 + 35) = 0u;
  *(a1 + 37) = 0u;
  memset(v64, 0, sizeof(v64));
  sub_28FD0((a1 + 39), v64);
  sub_28FD0((a1 + 44), v66);
  v13 = (a1 + 49);
  v15 = *(a1 + 49);
  v14 = *(a1 + 51);
  v16 = v69;
  *(a1 + 49) = v68;
  *(a1 + 51) = v16;
  v68 = v15;
  v69 = v14;
  v17 = (a1 + 53);
  v19 = *(a1 + 55);
  v72 = *(a1 + 53);
  v18 = v72;
  v73 = v19;
  v20 = v71;
  *(a1 + 53) = v70;
  *(a1 + 55) = v20;
  v70 = v18;
  v71 = v19;
  v49 = a1[27];
  v21 = *a2;
  a1[27] = (*a2)[10];
  a1[28] = 0;
  v48 = *(a1 + 60);
  *(a1 + 60) = *(v21 + 22);
  v22 = a1[29];
  a1[29] = v21[12];
  v46 = a1[92];
  v47 = v22;
  WeakRetained = objc_loadWeakRetained(v21 + 9);
  a1[92] = WeakRetained;

  v24 = *a1;
  v25 = (*a2)[1];
  v58 = **a2;
  v59 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v24 + 104))(v24, &v58, v57);
  if (v59)
  {
    sub_11420(v59);
  }

  objc_storeStrong(a1 + 68, v5);
  v26 = a1[82];
  *(a1 + 41) = v56;
  a1[84] = v55;
  v27 = a1[76];
  a1[76] = v6;
  v28 = v6;

  v29 = a1[75];
  a1[75] = v7;
  v30 = v7;

  a1[26] = v51;
  *(a1 + 61) = v50;
  v32 = *v9;
  v31 = *(a1 + 33);
  v33 = v61;
  *v9 = v60;
  *(a1 + 33) = v33;
  v60 = v32;
  v61 = v31;
  v35 = *v11;
  v34 = *(a1 + 37);
  v36 = v63;
  *v11 = v62;
  *(a1 + 37) = v36;
  v62 = v35;
  v63 = v34;
  sub_28FD0((a1 + 39), v64);
  sub_28FD0((a1 + 44), v66);
  v38 = *v13;
  v37 = *(a1 + 51);
  v39 = v69;
  *v13 = v68;
  *(a1 + 51) = v39;
  v68 = v38;
  v69 = v37;
  v41 = *v17;
  v40 = *(a1 + 55);
  v42 = v71;
  *v17 = v70;
  *(a1 + 55) = v42;
  v70 = v41;
  v71 = v40;
  a1[27] = v49;
  a1[28] = 0;
  *(a1 + 60) = v48;
  a1[29] = v47;
  a1[92] = v46;
  v43 = a1[94];
  a1[94] = v54;
  v44 = v54;

  v45 = a1[95];
  a1[95] = v53;

  sub_34CFC(v66);
  sub_11694(v64);

  if (v26)
  {
    operator delete(v26);
  }
}

void sub_FB860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

id TUI::Evaluation::Context::locationForNode(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 576);
  if (v4[27] <= a2)
  {
    v5 = &dword_18;
  }

  else
  {
    v5 = (v4[26] + 28 * a2 + 24);
  }

  v6 = *v5;
  if (v4[17] > v6 >> 12 && (v7 = (v4[16] + 8 * (v6 >> 12))) != 0)
  {
    v8 = *v7;
    v9 = *(v7 + 1) << 32;
    v10 = v8 << 16;
  }

  else
  {
    v9 = 0xFFFFFFFF00000000;
    v10 = 4294901760;
  }

  v16 = v9 | v10 | v6 & 0xFFF;
  v11 = TUI::Package::Location::Entry::xpathString(&v16, v4);
  v12 = TUI::Package::Location::Entry::pathURL(&v16, *(a1 + 576));
  v13 = [v12 lastPathComponent];

  v14 = [NSString stringWithFormat:@"[%@] %@", v13, v11];

  return v14;
}

void TUI::Evaluation::Context::evaluateWithNodeIdentifier(uint64_t a1, unsigned int a2, void *a3)
{
  v12 = a3;
  v5 = a2;
  v6 = !TUIElementNodeNotNil(a2);
  if (!v12)
  {
    v6 = 1;
  }

  v7 = v12;
  if (!v6)
  {
    v8 = *(a1 + 608);
    v9 = [*(a1 + 600) identifierWithNode:v5 baseIdentifier:*(a1 + 608)];
    v10 = *(a1 + 608);
    *(a1 + 608) = v9;

    (*(v12 + 2))();
    v11 = *(a1 + 608);
    *(a1 + 608) = v8;

    v7 = v12;
  }
}

void TUI::Evaluation::Context::evaluateWithUnmappedIdentifier(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (v13 && v5)
  {
    v6 = *(a1 + 608);
    v7 = *(a1 + 608);
    if (v7)
    {
      v8 = [v7 tui_identifierByAppendingString:v13];
      v9 = *(a1 + 608);
      *(a1 + 608) = v8;
    }

    else
    {
      v9 = [[NSIndexPath alloc] initWithIndexes:0 length:0];
      v10 = [v9 tui_identifierByAppendingString:v13];
      v11 = *(a1 + 608);
      *(a1 + 608) = v10;
    }

    v5[2](v5);
    v12 = *(a1 + 608);
    *(a1 + 608) = v6;
  }
}

id TUI::Evaluation::Context::identifierWithNode(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 576);
  v4 = a2;
  if (*(v3 + 216) > a2 && (v5 = *(v3 + 208) + 28 * a2) != 0)
  {
    v6 = (v5 + 12);
  }

  else
  {
    v6 = &TUIValueNil;
  }

  v7 = *v6;
  if (!TUIValueNotNil(*v6) || TUI::Instruction::Decoder::offsetKind(v7) == 7 || (TUI::Instruction::Evaluation::evaluate(v11, *(a1 + 8), v7), TUI::Evaluation::ResolvedValue::stringValue(v11, a1), v8 = objc_claimAutoreleasedReturnValue(), *&v11[1], !v8) || ([*(a1 + 608) tui_identifierByAppendingString:v8], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v9 = [*(a1 + 600) identifierWithNode:v4 baseIdentifier:*(a1 + 608)];
  }

  return v9;
}

void TUI::Evaluation::Context::evaluateWithIdentifier(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v11 = v5;
    v6 = *(a1 + 608);
    v7 = *(a1 + 608);
    if (v7)
    {
      [v7 tui_identifierByAppendingIndex:a2];
    }

    else
    {
      [NSNumber numberWithUnsignedInteger:a2];
    }
    v8 = ;
    v9 = *(a1 + 608);
    *(a1 + 608) = v8;

    v11[2]();
    v10 = *(a1 + 608);
    *(a1 + 608) = v6;

    v5 = v11;
  }
}

void TUI::Evaluation::Context::evaluateEnumerator(void *a1, unint64_t a2, Entry a3, void *a4)
{
  v7 = a4;
  if (v7)
  {
    (*(**a1 + 72))(*a1, 1);
    v8 = HIDWORD(a2);
    v9 = a3;
    TUI::Evaluation::Enumerator::State::State(v13, v8, v9);
    v10 = (**(*a1 + 8))(*a1 + 8, HIDWORD(v13[0]), v13);
    v12 = v11;
    TUI::Evaluation::Enumerator::State::~State(v13);
    v7[2](v7, v10, v12);
    (*(**a1 + 80))();
  }
}

void sub_FBF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  TUI::Evaluation::Enumerator::State::~State(&a9);

  _Unwind_Resume(a1);
}

void TUI::Evaluation::Context::enumerate(TUI::Symbol::Tab **a1, unint64_t a2, unint64_t a3, void *a4)
{
  v56 = a4;
  if (!v56)
  {
    goto LABEL_45;
  }

  v7 = HIDWORD(a3);
  if (!TUIValueNotNil(SHIDWORD(a3)))
  {
    goto LABEL_45;
  }

  v8 = a3;
  v9 = WORD1(a3);
  v55 = a1;
  if (!a2)
  {
    (*(**a1 + 72))(*a1, 1);
    v16 = WORD2(a2) | (HIWORD(a2) << 16);
    v17 = a3;
    TUI::Evaluation::Enumerator::State::State(v77, v16, v17);
    v18 = (**(*a1 + 1))(*a1 + 8, HIDWORD(v77[0]), v77);
    v20 = v19;
    TUI::Evaluation::Enumerator::State::~State(v77);
    TUI::Instruction::Evaluation::evaluate(&v75, a1[1], v7);
    obj = TUI::Evaluation::ResolvedValue::objectValue(&v75, a1);

    if (HIWORD(a2) == 0xFFFF || (a2 & 0xFFFF00000000) == 0xFFFF00000000 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      if (v9 == 0xFFFF || v8 == 0xFFFF)
      {
        goto LABEL_43;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v53 = obj;
        v33 = [v53 count];
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v32 = v53;
        v34 = [v32 countByEnumeratingWithState:&v67 objects:v79 count:16];
        if (v34)
        {
          v35 = 0;
          v36 = *v68;
          v37 = v33 - 1;
          do
          {
            for (i = 0; i != v34; i = i + 1)
            {
              if (*v68 != v36)
              {
                objc_enumerationMutation(v32);
              }

              v39 = *(*(&v67 + 1) + 8 * i);
              v40 = (*(*v18 + 24))(v18, v20);
              *(v40 + 16) = v35;
              objc_storeStrong((v40 + 32), v39);
              *(v40 + 8) = (v35 == 0) | (2 * (v37 == v35)) | *(v40 + 8) & 0xFC;
              TUI::Evaluation::Context::evaluateWithIdentifier(v55, v35++, v56);
            }

            v34 = [v32 countByEnumeratingWithState:&v67 objects:v79 count:16];
          }

          while (v34);
        }
      }

      else if (objc_opt_respondsToSelector())
      {
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v41 = [obj objectEnumerator];
        v42 = [v41 countByEnumeratingWithState:&v63 objects:v78 count:16];
        if (v42)
        {
          v43 = 0;
          v44 = *v64;
          do
          {
            for (j = 0; j != v42; j = j + 1)
            {
              if (*v64 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = *(*(&v63 + 1) + 8 * j);
              v47 = (*(*v18 + 24))(v18, v20);
              objc_storeStrong((v47 + 32), v46);
              TUI::Evaluation::Context::evaluateWithIdentifier(v55, v43++, v56);
            }

            v42 = [v41 countByEnumeratingWithState:&v63 objects:v78 count:16];
          }

          while (v42);
        }

        v32 = v41;
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          if (obj)
          {
            v48 = TUIProtocolCast(&OBJC_PROTOCOL___TUIDynamicProviding, obj);
            v49 = v48 == 0;

            if (v49)
            {
              v50 = (*(*v18 + 24))(v18, v20);
              objc_storeStrong((v50 + 32), obj);
              v56[2]();
            }
          }

          goto LABEL_43;
        }

        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_FC7B4;
        v58[3] = &unk_261A68;
        v60 = a1;
        v61 = v18;
        v62 = v20;
        v59 = v56;
        [obj tui_unwwrapEnumeratorWithBlock:v58];
        v32 = v59;
      }
    }

    else
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v51 = [obj keyEnumerator];
      v21 = [v51 countByEnumeratingWithState:&v71 objects:v80 count:16];
      if (v21)
      {
        v52 = *v72;
        do
        {
          for (k = 0; k != v21; k = k + 1)
          {
            if (*v72 != v52)
            {
              objc_enumerationMutation(v51);
            }

            v23 = *(*(&v71 + 1) + 8 * k);
            v24 = [obj objectForKey:v23];
            v25 = (*(*v18 + 24))(v18, v20);
            v26 = v23;
            v27 = v24;
            v28 = v20;
            v29 = *(v25 + 24);
            *(v25 + 24) = v26;
            v30 = v26;

            v20 = v28;
            v31 = *(v25 + 32);
            *(v25 + 32) = v27;

            v56[2]();
          }

          v21 = [v51 countByEnumeratingWithState:&v71 objects:v80 count:16];
        }

        while (v21);
      }

      v32 = v51;
    }

    a1 = v55;
LABEL_43:
    (*(**a1 + 80))();
LABEL_44:

    goto LABEL_45;
  }

  if (a2 == 1)
  {
    TUI::Instruction::Evaluation::evaluate(&v75, a1[1], HIDWORD(a3));
    obj = TUI::Evaluation::ResolvedValue::objectValue(&v75, a1);

    if (WORD1(a3) != 0xFFFF && a3 != 0xFFFF)
    {
      (*(**a1 + 72))(*a1, 1);
      v10 = a3;
      v11 = -65536;
      TUI::Evaluation::Enumerator::State::State(v57, v11, v10);
      v12 = (**(*a1 + 1))(*a1 + 8, HIDWORD(v57[0]), v57);
      v14 = v13;
      TUI::Evaluation::Enumerator::State::~State(v57);
      v15 = (*(*v12 + 24))(v12, v14);
      objc_storeStrong((v15 + 32), obj);
      v56[2]();
      (*(**a1 + 80))();
    }

    goto LABEL_44;
  }

LABEL_45:
}

void sub_FC7B4(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v6 = *(a1 + 40);
  v7 = (*(**(a1 + 48) + 24))(*(a1 + 48), *(a1 + 56));
  objc_storeStrong((v7 + 32), a2);
  TUI::Evaluation::Context::evaluateWithIdentifier(v6, a3, *(a1 + 32));
}

uint64_t TUI::Evaluation::Context::Snapshot::Snapshot(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4[1];
  *a1 = *a4;
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 24) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = *(a2 + 600);
  v8 = *(a2 + 608);
  *(a1 + 48) = 0;
  *(a1 + 40) = v8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_107504(a1 + 48, *(a2 + 656), *(a2 + 664), (*(a2 + 664) - *(a2 + 656)) >> 2);
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  objc_storeWeak((a1 + 72), *(a2 + 736));
  objc_storeStrong((a1 + 80), *(a2 + 216));
  *(a1 + 88) = *(a2 + 240);
  objc_storeStrong((a1 + 96), *(a2 + 232));
  return a1;
}

void sub_FC940(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_11420(v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    sub_11420(v4);
  }

  _Unwind_Resume(a1);
}

void TUI::Evaluation::Context::Snapshot::~Snapshot(id *this)
{
  objc_destroyWeak(this + 9);
  v2 = this[6];
  if (v2)
  {
    this[7] = v2;
    operator delete(v2);
  }

  v3 = this[3];
  if (v3)
  {
    sub_11420(v3);
  }

  v4 = this[1];
  if (v4)
  {
    sub_11420(v4);
  }
}

id TUI::Evaluation::Context::errors(id *this)
{
  v2 = [this[85] count];
  if (v2)
  {
    v2 = [this[85] copy];
  }

  return v2;
}

void TUI::Evaluation::Context::instantiateNodeWithBuilder(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v12 = *(a1 + 192);
  v6 = *(a1 + 208);
  v7 = *(a1 + 168);
  v8 = *(a1 + 176);
  *(a1 + 168) = v5;
  v9 = *(a1 + 32);
  v13 = v5;
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = TUI::ElementInstantiating::BuilderCache::computeProtocolsFromClass(v9, v10);
    v5 = v13;
  }

  else
  {
    v11 = **(a1 + 24);
  }

  *(a1 + 176) = v11;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = v5;
  TUI::Evaluation::Context::instantiateChildNode(a1, a2);
  *(a1 + 168) = v7;
  *(a1 + 176) = v8;
  *(a1 + 192) = v12;
  *(a1 + 208) = v6;
}

void TUI::Evaluation::Context::instantiateChildNode(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 576);
  if (*(v3 + 216) <= a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (*(v3 + 208) + 28 * a2);
  }

  v6 = *(a1 + 24);
  v7 = *(v6 + 72);
  v8 = 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 80) - v7) >> 4);
  v9 = v7 + 48 * *v5;
  v10 = v6 + 24;
  if (v8 <= *v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(v11 + 40);
  if ((v12 & 1) != 0 || (v13 = *(v11 + 32)) != 0 && (v13 & ~*(a1 + 176)) == 0)
  {
    if ((*(a1 + 40) & 1) != 0 || (*(v11 + 43) & 0x1F80) == 0)
    {
      if ((*(v11 + 42) & 0x40) != 0)
      {
        TUI::Evaluation::Context::instantiateNodeWithEnumeration(a1, a2, v11);
      }

      else
      {
        TUI::Evaluation::Context::instantiateNode(a1, a2);
      }
      v19 = ;
      v22 = *(a1 + 224);
      if (v22)
      {
        *(a1 + 216) = v22;
      }

      *(a1 + 224) = 0;
    }

    else
    {
      v14 = *(a1 + 216);
      v15 = *(a1 + 224);
      v16 = *(a1 + 240);
      v17 = *(a1 + 232);
      if ((*(v11 + 43) & 0x1000) != 0)
      {
        if (v15)
        {
          *(a1 + 216) = v15;
        }

        *(a1 + 240) = a2;
        v18 = *(a1 + 608);
        *(a1 + 224) = 0;
        *(a1 + 232) = v18;
      }

      (*(**a1 + 72))();
      if ((*(v11 + 42) & 0x40) != 0)
      {
        TUI::Evaluation::Context::instantiateNodeWithEnumeration(a1, a2, v11);
      }

      else
      {
        TUI::Evaluation::Context::instantiateNode(a1, a2);
      }
      loga = ;
      (*(**a1 + 80))();
      if ((*(v11 + 43) & 0x1000) != 0)
      {
        *(a1 + 224) = v15;
      }

      *(a1 + 216) = v14;
      *(a1 + 240) = v16;
      *(a1 + 232) = v17;
      v19 = loga;
    }

    logb = v19;
    if (v19 && (v12 & 1) == 0)
    {
      if ((*(v11 + 42) & 0x10) != 0)
      {
        [*v11 addObject:v19 toContainingBuilder:*(a1 + 168) context:*(a1 + 16)];
      }

      else if ((*(v11 + 43) & 8) != 0)
      {
        [*(a1 + 168) addBox:v19];
      }
    }
  }

  else
  {
    log = TUIInstantiationLog();
    v20 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    v21 = log;
    if (v20)
    {
      v23 = [*(a1 + 16) feedId];
      v24 = *(a1 + 576);
      v25 = *v5;
      if (v24[55] <= v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = v24[54] + *(v24[56] + 4 * v25);
      }

      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 134218498;
      v33 = v23;
      v34 = 2082;
      v35 = v26;
      v36 = 2114;
      v37 = v28;
      _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "[fid:%lu] child element name=%{public}s not allowed by current builder %{public}@", buf, 0x20u);

      v21 = log;
    }
  }
}

id TUI::Evaluation::Context::instantiateNodeWithEnumeration(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a1 + 576);
  v6 = a2;
  if (*(v5 + 216) <= a2 || (v7 = *(v5 + 208) + 28 * a2) == 0)
  {
    v13 = TUIInstantiationLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_19B7E8(v30, [*(a1 + 16) feedId], v6);
    }

    goto LABEL_30;
  }

  v9 = *(v7 + 16);
  v10 = *(v7 + 2);
  sub_FD220(a1 + 248, 0);
  *(a1 + 432) &= 0xFFFFFFFFFFC3FFFFLL;
  if (v10)
  {
    TUI::Evaluation::Context::computeAttributes(a1, v9 | (v10 << 32), 0, a1 + 248);
  }

  *(a1 + 244) = a2;
  LOWORD(v30[0]) = 85;
  v11 = *(a1 + 288);
  if ((v11 & 0x200000) != 0)
  {
    v12 = (sub_11F88((a1 + 352), v30) + 3);
    v11 = *(a1 + 288);
  }

  else
  {
    v12 = 0;
  }

  LOWORD(v30[0]) = 83;
  if ((v11 & 0x80000) != 0)
  {
    v14 = (sub_11F88((a1 + 352), v30) + 3);
    v11 = *(a1 + 288);
  }

  else
  {
    v14 = 0;
  }

  LOWORD(v30[0]) = 82;
  if ((v11 & 0x40000) != 0)
  {
    v15 = (sub_11F88((a1 + 352), v30) + 3);
    v11 = *(a1 + 288);
  }

  else
  {
    v15 = 0;
  }

  LOWORD(v30[0]) = 84;
  if ((v11 & 0x100000) != 0)
  {
    v16 = (sub_11F88((a1 + 352), v30) + 3);
    if (v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v16 = 0;
    if (v12)
    {
LABEL_18:
      v17 = TUI::Evaluation::ResolvedValue::integerValue(v12, a1);
      v18 = TUI::Evaluation::ResolvedValue::integerValue(v14, a1);
      v19 = TUI::Evaluation::ResolvedValue::integerValue(v15, a1);
      v20 = TUI::Evaluation::ResolvedValue::integerValue(v16, a1);
      goto LABEL_21;
    }
  }

  v19 = 0x7FFFFFFFFFFFFFFFLL;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_21:
  LOWORD(v30[0]) = 70;
  if ((*(a1 + 256) & 0x40) != 0)
  {
    v21 = sub_11F88((a1 + 312), v30) + 5;
  }

  else
  {
    v21 = &TUIValueNil;
  }

  v13 = [TUIDynamicInstantiateOptions optionsWithFetchWindow:v17 fetchInitial:v18 fetchDelta:v19 fetchPadding:v20 uniqueID:*v21, v30[0]];
  LOWORD(v30[0]) = 185;
  if ((*(a1 + 271) & 2) != 0)
  {
    v23 = sub_11F88((a1 + 312), v30) + 5;
  }

  else
  {
    v23 = &TUIValueNil;
  }

  v24 = TUI::Instruction::Decoder::enumerator(*v23, a1, v22);
  *(a1 + 244) = TUIElementNodeNil;
  sub_F9510(a1 + 248);
  if (TUIEnumeratorIsNil(v24))
  {
    if ((*(a3 + 42) & 0x80000000) == 0)
    {
      TUI::Evaluation::Context::reportError(a1, 1033, @"nil enumerator used when not allowed");
LABEL_30:
      v25 = 0;
      goto LABEL_37;
    }

    v28 = TUI::Evaluation::Context::instantiateNode(a1, v6);
  }

  else
  {
    v26 = TUI::Evaluation::Context::closureForElement(a1, v7);
    if (*(a1 + 184))
    {
      v27 = 3;
    }

    else
    {
      v27 = 1;
    }

    v28 = TUI::Evaluation::Context::instantiateEnumeratorWithNodes(a1, v24, v6 | 0x100000000, v26, v13, v27);
  }

  v25 = v28;
LABEL_37:

  return v25;
}

void sub_FD220(uint64_t a1, int a2)
{
  *&v4 = a1;
  DWORD2(v4) = 0;
  sub_1067A0(&v4, 0x100uLL);
  *&v4 = a1 + 32;
  DWORD2(v4) = 0;
  sub_1067A0(&v4, 0x100uLL);
  if (*(a1 + 88))
  {
    v4 = 0u;
    v5 = 0u;
    v6 = 1065353216;
    sub_8BFC8(a1 + 64, &v4);
    sub_11694(&v4);
  }

  if (*(a1 + 128))
  {
    v4 = 0u;
    v5 = 0u;
    v6 = 1065353216;
    sub_106850(a1 + 104, &v4);
    sub_34CFC(&v4);
  }

  *&v4 = a1 + 144;
  DWORD2(v4) = 0;
  sub_1066EC(&v4, 0x100uLL);
  *&v4 = a1 + 176;
  DWORD2(v4) = 0;
  if (a2)
  {
    sub_1067A0(&v4, 0x100uLL);
  }

  else
  {
    sub_1066EC(&v4, 0x100uLL);
  }
}

void TUI::Evaluation::Context::computeAttributes(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v37 = TUIStyleReferenceNil;
  v40 = WORD2(a2);
  if (WORD2(a2))
  {
    v5 = 0;
    v6 = *(a1 + 576);
    v39 = a2;
    v36 = a4 + 144;
    v34 = a4 + 176;
    v32 = a4 + 32;
    do
    {
      if (v6[31] > (v5 + v39) && (v7 = (v6[30] + 8 * (v5 + v39))) != 0)
      {
        v8 = *v7;
        v9 = v6[60];
        if (v8 >= (v6[61] - v9) >> 1)
        {
          v10 = 0xFFFFLL;
        }

        else
        {
          v10 = *(v9 + 2 * v8);
        }

        v11 = v7[1];
        v16 = *(v7 + 1);
        v13 = 0;
        v15 = 0xFFFFLL;
        if (v10 == 0xFFFF)
        {
          LOBYTE(v12) = 0;
          v41 = 1;
          v14 = -1;
        }

        else
        {
          if (v10 >= 0x100)
          {
            sub_8BEBC("bitset test argument out of range");
          }

          v41 = 0;
          v12 = (*(v36 + ((v10 >> 3) & 0x1FF8)) >> v10) & 1;
          v14 = v10;
          v15 = v10;
        }
      }

      else
      {
        v11 = 0;
        LOBYTE(v12) = 0;
        v13 = 0;
        v14 = -1;
        v41 = 1;
        v15 = 0xFFFFLL;
        v16 = 0xFFFFFFFFLL;
      }

      v17 = v12 ^ 1;
      if (v15 == 201)
      {
        v17 = 0;
      }

      if ((v17 & 1) == 0 && v11)
      {
        v38 = v14;
        v18 = 12 * v16;
        while (1)
        {
          if (v6[29] <= v16)
          {
            v20 = &TUIConditionNil;
            v19 = &TUIValueNil;
          }

          else
          {
            v19 = (v18 + v6[28]);
            v20 = v19 + 1;
            if (!v19)
            {
              v20 = &TUIConditionNil;
              v19 = &TUIValueNil;
            }
          }

          v13 = *v19;
          TUI::Evaluation::Context::resolve(a1, *v20, &v42);
          v21 = TUI::Evaluation::ResolvedValue::BOOLValue(&v42, a1);

          if (v21)
          {
            break;
          }

          v18 += 12;
          ++v16;
          if (!--v11)
          {
            v13 = 0;
            break;
          }
        }

        v14 = v38;
      }

      if (!TUIValueNotNil(v13))
      {
        goto LABEL_29;
      }

      if (v15 == 201)
      {
        v37 = TUI::Instruction::Decoder::styleReference(v13, a1, v22);
      }

      else
      {
        LOWORD(v46) = v14;
        if (v41)
        {
          goto LABEL_29;
        }

        if (v15 >= 0x100 || (v23 = v14, v24 = v15 >> 6, v25 = 1 << v15, *(a4 + 8 * (v15 >> 6)) |= 1 << v15, v42 = &v46, *(sub_347B0((a4 + 64), &v46) + 5) = v13, v46 >= 0x100uLL))
        {
          sub_8BEBC("bitset set argument out of range");
        }

        *(v36 + ((v46 >> 3) & 0x1FF8)) &= ~(1 << v46);
        if ((*(v34 + 8 * v24) & v25) != 0)
        {
          goto LABEL_29;
        }

        if (a3)
        {
          if (v15 - 106 <= 0x2B && ((1 << (v15 - 106)) & 0x80080000001) != 0 || v15 == 1)
          {
            goto LABEL_29;
          }
        }

        else if (v15 == 1 || v15 == 149)
        {
          goto LABEL_29;
        }

        TUI::Instruction::Evaluation::evaluate(&v42, *(a1 + 8), v13);
        v45 = v23;
        *(v32 + 8 * v24) |= v25;
        v46 = &v45;
        v26 = sub_34D38((a4 + 104), &v45);
        *(v26 + 6) = v42;
        objc_storeStrong(v26 + 4, obj);
        v27 = obj;
        v26[5] = v44;
      }

LABEL_29:
      ++v5;
    }

    while (v5 != v40);
  }

  if (TUIReferenceListNotNil(v37))
  {
    v28 = -192;
    v29 = 144;
    do
    {
      v30 = *(a4 + v29);
      v29 += 8;
      if (v30)
      {
        v31 = 1;
      }

      else
      {
        v31 = v28 == 0;
      }

      v28 += 64;
    }

    while (!v31);
    if (v30)
    {
      TUI::Evaluation::Context::computeStyle(a1, v37, a4);
    }
  }
}

NSObject *TUI::Evaluation::Context::instantiateNode(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 576);
  v5 = a2;
  if (*(v4 + 216) <= a2 || (v6 = (*(v4 + 208) + 28 * a2)) == 0)
  {
    v17 = TUIInstantiationLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_19B7E8(buf, [*(a1 + 16) feedId], v5);
    }

    goto LABEL_14;
  }

  v7 = *(a1 + 24);
  v8 = *(v7 + 72);
  v9 = 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 80) - v8) >> 4);
  v10 = v8 + 48 * *v6;
  v11 = v7 + 24;
  if (v9 <= *v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (!*v12)
  {
    v17 = TUIInstantiationLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v82 = [*(a1 + 16) feedId];
      v83 = *(a1 + 576);
      v84 = *v6;
      if (v83[55] <= v84)
      {
        v85 = 0;
      }

      else
      {
        v85 = v83[54] + *(v83[56] + 4 * v84);
      }

      *buf = 134218242;
      v103 = v82;
      v104 = 2082;
      v105 = v85;
      _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "[fid:%lu] no registered instantiator class for: %{public}s", buf, 0x16u);
    }

LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  if (*(a1 + 552) == 1)
  {
    v13 = *(v6 + 6);
    if (TUILocationNotNil(v13))
    {
      v14 = *(a1 + 664);
      v15 = *(a1 + 672);
      if (v14 >= v15)
      {
        v20 = *(a1 + 656);
        v21 = v14 - v20;
        v22 = (v14 - v20) >> 2;
        v23 = v22 + 1;
        if ((v22 + 1) >> 62)
        {
          sub_4050();
        }

        v24 = v15 - v20;
        if (v24 >> 1 > v23)
        {
          v23 = v24 >> 1;
        }

        v25 = v24 >= 0x7FFFFFFFFFFFFFFCLL;
        v26 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v25)
        {
          v26 = v23;
        }

        if (v26)
        {
          sub_106BA0(a1 + 656, v26);
        }

        v27 = (v14 - v20) >> 2;
        v28 = (4 * v22);
        v29 = (4 * v22 - 4 * v27);
        *v28 = v13;
        v16 = v28 + 1;
        memcpy(v29, v20, v21);
        v30 = *(a1 + 656);
        *(a1 + 656) = v29;
        *(a1 + 664) = v16;
        *(a1 + 672) = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v14 = v13;
        v16 = v14 + 1;
      }

      *(a1 + 664) = v16;
    }
  }

  v31 = *(v12 + 16);
  if (!v31 || (*(v12 + 43) & 0x10) != 0 && (*(v12 + 40) & 4) != 0)
  {
    v32 = 0;
  }

  else
  {
    v32 = objc_alloc_init(v31);
  }

  v33 = *(a1 + 168);
  v34 = *(a1 + 176);
  v87 = *(v6 + 5);
  v93 = *(v12 + 40);
  v88 = v6[2];
  if ((v93 & 6) == 0 && v6[2] != 0)
  {
    if (v32 && (v93 & 4) == 0 && (*(v12 + 43) & 0x10) != 0)
    {
      v37 = v32;
      *(a1 + 168) = v37;
      v38 = (v12 + 24);
LABEL_49:
      *(a1 + 176) = *v38;
      v36 = 1;
      goto LABEL_50;
    }

    v39 = *(v12 + 8);
    if (v39 && (*(v12 + 42) & 8) != 0)
    {
      v40 = objc_alloc_init(v39);
      *(a1 + 168) = v40;
      v38 = (v12 + 24);
      goto LABEL_48;
    }

    if ((*(v12 + 43) & 4) != 0)
    {
      v40 = objc_alloc_init(TUIBoxBuilder);
      *(a1 + 168) = v40;
      v38 = *(a1 + 24);
LABEL_48:
      v37 = v40;
      goto LABEL_49;
    }
  }

  v36 = 0;
  v37 = 0;
LABEL_50:
  v41 = *(v12 + 40);
  if ((v41 & 8) != 0)
  {
    v89 = v36;
    v42 = v34;
    v43 = v33;
    v91 = v37;
    v86 = *(v6 + 4);
    v44 = v6[1];
    sub_FD220(a1 + 248, (v41 >> 4) & 1);
    if (v44)
    {
      if ((*(v12 + 40) & 0x100) != 0)
      {
        v45 = [*v12 attributesToIgnoreWhenResolving];
        v46 = [v45 _bitset];
        for (i = 0; i != 32; i += 8)
        {
          *(a1 + 424 + i) |= *&v46[i];
        }
      }

      if ((*(v12 + 42) & 0x40) != 0)
      {
        *(a1 + 432) = vorrq_s8(*(a1 + 432), xmmword_24CFC0);
      }

      if ((*(v12 + 40) & 0x40) != 0)
      {
        v48 = [*v12 attributesToEvaluate];
        v49 = [v48 _bitset];
        v50 = v49[1];
        *(a1 + 392) = *v49;
        *(a1 + 408) = v50;
      }

      TUI::Evaluation::Context::computeAttributes(a1, v86 | (v44 << 32), 0, a1 + 248);
    }

    *(a1 + 244) = a2;
    LOWORD(v41) = *(v12 + 40);
    v37 = v91;
    v33 = v43;
    v34 = v42;
    v36 = v89;
  }

  if ((v41 & 0x400) != 0)
  {
    [*v12 preconfigureBox:v32 context:*(a1 + 16)];
  }

  if ((*(v12 + 43) & 8) != 0)
  {
    v51 = v32;
    TUI::Evaluation::Context::configureBox(a1, v51, v52, v5);
  }

  v53 = *(v12 + 40);
  if ((v53 & 0x800) != 0 && v32)
  {
    v54 = v32;
    [*v12 configureBox:v54 withNode:v5 attributes:*(a1 + 16) context:*(a1 + 16)];

    v53 = *(v12 + 40);
  }

  if ((v53 & 0x1000) != 0 && v32)
  {
    [*v12 configureObject:v32 withNode:v5 attributes:*(a1 + 16) context:*(a1 + 16)];
  }

  if ((v93 & 2) == 0 && (*(v12 + 40) & 4) != 0)
  {
    v55 = [*v12 builderWithNode:v5 object:v32 attributes:*(a1 + 16) context:*(a1 + 16)];

    *(a1 + 168) = v55;
    *(a1 + 176) = *(v12 + 24);
    if ((*(v12 + 43) & 0x10) != 0)
    {
      v37 = v55;

      v36 = 1;
      v32 = v37;
    }

    else
    {
      v36 = 1;
      v37 = v55;
    }
  }

  v56 = *(a1 + 208);
  if (v56)
  {
    if ((*(v56 + 40) & 0x4000) != 0)
    {
      if (v32)
      {
        if ((*(v12 + 43) & 8) != 0)
        {
          v57 = *(a1 + 192);
          if (v57)
          {
            [*v56 configureChildBox:v32 withChildNode:v5 attributes:*(a1 + 16) builder:v57 context:*(a1 + 16)];
          }
        }
      }
    }
  }

  v58 = *(v12 + 43);
  if (*(v12 + 40) & 8) != 0 && (v58)
  {
    v59 = *(a1 + 208);
    if (v59)
    {
      if ((*(v59 + 43) & 2) != 0)
      {
        v60 = *(a1 + 192);
        if (v60)
        {
          [v60 configureWithChildNode:v5 attributes:*(a1 + 16)];
          v58 = *(v12 + 43);
        }
      }
    }
  }

  if ((v58 & 8) != 0 && v32)
  {
    v61 = v32;
    [(TUIBoxBuilder *)v61 _compressStorage];
  }

  if ((*(v12 + 40) & 0x2000) != 0)
  {
    v62 = v36;
  }

  else
  {
    v62 = 1;
  }

  if ((v62 & 1) == 0)
  {
    [*v12 configureContainingBuilder:*(a1 + 168) withNode:v5 attributes:*(a1 + 16) context:*(a1 + 16)];
  }

  v90 = v34;
  v63 = v33;
  *(a1 + 244) = TUIElementNodeNil;
  sub_F9510(a1 + 248);
  v92 = *(a1 + 192);
  v64 = *(a1 + 208);
  if (v64 && (*(v64 + 42) & 0x20) != 0)
  {
    *(a1 + 208) = 0;
    *(a1 + 192) = 0;
  }

  v65 = *(a1 + 184);
  if (v32)
  {
    v66 = *(v12 + 43);
    if ((v66 & 0x20) != 0)
    {
      if ((v66 & 0x40) != 0)
      {
        v67 = [(TUIBoxBuilder *)v32 allowDynamicWindowInstantiation];
      }

      else
      {
        v67 = 0;
      }

      *(a1 + 184) = *(a1 + 184) & 0xFE | v67;
    }

    if (v88)
    {
      v68 = v36;
    }

    else
    {
      v68 = 0;
    }

    if (v68 == 1)
    {
      *(a1 + 192) = v37;
      *(a1 + 208) = v12;
      if (v37)
      {
        if ((*(*(a1 + 24) + 16) & *(v12 + 24)) != 0)
        {
          v69 = v37;
          *(a1 + 200) = v69;
        }
      }
    }
  }

  v70 = *(v12 + 40);
  if ((*(v12 + 42) & 4) != 0 && v32)
  {
    [*v12 instantiateNode:v5 withObject:v32 context:*(a1 + 16)];
  }

  else if ((*(v12 + 40) & 0x8000) != 0)
  {
    if (v36 & 1 | ((v70 & 2) == 0) & (v93 >> 1) | ((*(v12 + 42) & 1) == 0))
    {
      v75 = v36 ^ 1;
      if ((*(v12 + 42) & 2) == 0)
      {
        v75 = 1;
      }

      if (v75)
      {
        if (v88)
        {
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 168) onlyInstantiateFirstChildPassingConditionForEnumeratorChildren];
          }

          TUI::Evaluation::Context::instantiateChildren(a1, v87 | (v88 << 32));
        }
      }

      else if (v88)
      {
        v76 = *v12;
        v77 = *(a1 + 168);
        v78 = *(a1 + 16);
        v94[0] = _NSConcreteStackBlock;
        v94[1] = 3221225472;
        v94[2] = sub_FF388;
        v94[3] = &unk_261AA8;
        v94[4] = a1;
        v95 = v87;
        v96 = v88;
        v97 = 0;
        [v76 instantiateChildrenOfNode:v5 object:v32 builder:v77 context:v78 block:v94];
      }
    }

    else if (v88)
    {
      if ((v70 & 2) == 0)
      {
        *(a1 + 176) = *(v12 + 24);
      }

      v79 = *v12;
      v80 = *(a1 + 168);
      v81 = *(a1 + 16);
      v98[0] = _NSConcreteStackBlock;
      v98[1] = 3221225472;
      v98[2] = sub_FEE4C;
      v98[3] = &unk_261A88;
      v98[4] = a1;
      v99 = v87;
      v100 = v88;
      v101 = 0;
      [v79 instantiateChildrenOfNode:v5 object:v32 containingBuilder:v80 context:v81 block:{v98, v86}];
    }
  }

  *(a1 + 184) = v65;
  *(a1 + 208) = v64;
  *(a1 + 192) = v92;
  v71 = v36 ^ 1;
  if (!v32)
  {
    v71 = 1;
  }

  if ((v71 & 1) == 0)
  {
    if ((*(v12 + 42) & 8) != 0)
    {
      [*v12 configureObject:v32 withBuilder:*(a1 + 168) context:*(a1 + 16)];
    }

    else if ((*(v12 + 43) & 4) != 0)
    {
      v72 = v32;
      v73 = *(a1 + 168);
      v74 = [v73 finalizeModelsWithParent:v72 box:v72 context:*(a1 + 16)];
    }
  }

  *(a1 + 168) = v63;
  *(a1 + 176) = v90;
  if (*(a1 + 552) == 1 && TUILocationNotNil(*(v6 + 6)))
  {
    *(a1 + 664) -= 4;
  }

  v17 = v32;

  v18 = v17;
LABEL_15:

  return v18;
}

uint64_t TUI::Evaluation::Context::closureForElement(uint64_t a1, uint64_t a2)
{
  v2 = TUIClosureNil;
  if (!a2 || TUI::Package::Buffer::findAttribute(*(a1 + 576), 1u, *(a2 + 16) | (*(a2 + 2) << 32)) != 65537)
  {
    return v2;
  }

  v5 = *(a1 + 576);
  v6 = &TUIValueNil;
  if (*(v5 + 232) > v4)
  {
    v7 = *(v5 + 224) + 12 * v4;
    if (v7)
    {
      v6 = v7;
    }
  }

  v8 = *v6;

  return TUI::Evaluation::Context::closure(a1, v8);
}

id TUI::Evaluation::Context::instantiateEnumeratorWithNodes(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5, uint64_t a6)
{
  v11 = a5;
  if (*(a1 + 168) && (v12 = a2, TUIEnumeratorNotNil(a2)))
  {
    v13 = *(a1 + 576);
    if (*(v13 + 264) <= a2)
    {
      v14 = 0;
    }

    else
    {
      v14 = (*(v13 + 256) + 16 * a2);
    }

    sub_8BE78(&v26, v14);
    v16 = v26;
    v17 = v27;
    TUI::Instruction::Evaluation::evaluate(&v26, *(a1 + 8), HIDWORD(v27));
    v18 = TUI::Evaluation::ResolvedValue::objectValue(&v26, a1);

    if (objc_opt_respondsToSelector())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    if (v20)
    {
      if (objc_opt_respondsToSelector())
      {
        v21 = objc_opt_class();
        if (objc_opt_respondsToSelector())
        {
          v21 = [*(a1 + 168) builderClassForDynamicInstantiation];
        }

        v22 = v21;
        v23 = [*(a1 + 16) snapshotWithClosure:a4];
        v15 = [v20 instantiateAsEnumerator:v12 options:v11 flags:a6 builderClass:v21 nodes:a3 snapshot:v23 context:*(a1 + 16)];
      }

      else
      {
        v23 = [NSString stringWithFormat:@"%@ not allowing dynamic", *(a1 + 168)];
        TUI::Evaluation::Context::reportError(a1, 1000, v23);
        v15 = 0;
      }
    }

    else
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_FF398;
      v25[3] = &unk_261AC8;
      v25[4] = a1;
      v25[5] = a6;
      v25[6] = a3;
      TUI::Evaluation::Context::enumerate(a1, v16, v17, v25);
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void TUI::Evaluation::Context::configureBox(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v6 = a2;
  v7 = TUI::Evaluation::Context::identifierWithNode(a1, a4);
  [v6 setIdentifier:v7];

  LOWORD(v76) = 225;
  if ((*(a1 + 308) & 2) != 0)
  {
    v10 = sub_11F88((a1 + 352), &v76);
    v8 = TUI::Evaluation::ResolvedValue::lengthValue(v10 + 3, a1);
    v9 = v11;
  }

  else
  {
    v8 = 0x7FC000007FC00000;
    v9 = 0x200007FC00000;
  }

  [v6 setWidth:{v8, v9}];
  LOWORD(v76) = 98;
  if ((*(a1 + 292) & 4) != 0)
  {
    v14 = sub_11F88((a1 + 352), &v76);
    v12 = TUI::Evaluation::ResolvedValue::lengthValue(v14 + 3, a1);
    v13 = v15;
  }

  else
  {
    v12 = 0x7FC000007FC00000;
    v13 = 0x200007FC00000;
  }

  [v6 setHeight:{v12, v13}];
  LOWORD(v76) = 218;
  if ((*(a1 + 307) & 4) != 0)
  {
    v17 = sub_11F88((a1 + 352), &v76);
    v16 = TUI::Evaluation::ResolvedValue::stringValue((v17 + 3), a1);
  }

  else
  {
    v16 = 0;
  }

  [v6 setValign:{+[TUIBox valignFromString:](TUIBox, "valignFromString:", v16)}];

  LOWORD(v76) = 96;
  if (*(a1 + 292))
  {
    v19 = sub_11F88((a1 + 352), &v76);
    v18 = TUI::Evaluation::ResolvedValue::stringValue((v19 + 3), a1);
  }

  else
  {
    v18 = 0;
  }

  [v6 setHalign:{+[TUIBox halignFromString:](TUIBox, "halignFromString:", v18)}];

  LOWORD(v76) = 10;
  if ((*(a1 + 281) & 4) != 0)
  {
    v21 = sub_11F88((a1 + 352), &v76);
    v20 = TUI::Evaluation::ResolvedValue::stringValue((v21 + 3), a1);
  }

  else
  {
    v20 = 0;
  }

  [v6 setAnchorPosition:{+[TUIBox anchorPositionFromString:](TUIBox, "anchorPositionFromString:", v20)}];

  LOWORD(v76) = 169;
  if ((*(a1 + 301) & 2) != 0)
  {
    v23 = sub_11F88((a1 + 352), &v76);
    v22 = TUI::Evaluation::ResolvedValue::stringValue((v23 + 3), a1);
  }

  else
  {
    v22 = 0;
  }

  [v6 setRenderModelKind:{+[TUIBox renderModelFromString:](TUIBox, "renderModelFromString:", v22)}];

  LOWORD(v76) = 178;
  if ((*(a1 + 302) & 4) != 0 && (v24 = sub_11F88((a1 + 352), &v76), TUI::Evaluation::ResolvedValue::stringValue((v24 + 3), a1), (v25 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v26 = [TUIBox roleFromString:v25];
  }

  else
  {
    v25 = 0;
    v26 = [objc_opt_class() defaultRole];
  }

  [v6 setRole:v26];
  LOWORD(v76) = 228;
  if ((*(a1 + 308) & 0x10) != 0)
  {
    v28 = sub_11F88((a1 + 352), &v76);
    v27 = TUI::Evaluation::ResolvedValue::integerValue((v28 + 3), a1);
  }

  else
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [v6 setZIndex:v27];
  v29 = [*(a1 + 16) UUID];
  v30 = [v6 identifier];
  LOWORD(v76) = 108;
  if ((*(a1 + 293) & 0x10) != 0)
  {
    v32 = sub_11F88((a1 + 352), &v76);
    v31 = TUI::Evaluation::ResolvedValue::objectValue((v32 + 3), a1);
  }

  else
  {
    v31 = 0;
  }

  v33 = [TUIImpressionData newImpressionWithUUID:v29 identifier:v30 data:v31];
  [v6 setImpressionData:v33];

  LOWORD(v76) = 210;
  if ((*(a1 + 306) & 4) != 0)
  {
    v35 = sub_11F88((a1 + 352), &v76);
    TUI::Evaluation::ResolvedValue::transformValue((v35 + 3), a1, &v79);
  }

  else
  {
    v34 = *&CGAffineTransformIdentity.c;
    v79 = *&CGAffineTransformIdentity.a;
    v80 = v34;
    v81 = *&CGAffineTransformIdentity.tx;
  }

  v76 = v79;
  v77 = v80;
  v78 = v81;
  [v6 setTransform:&v76];
  LOWORD(v76) = 171;
  if ((*(a1 + 301) & 8) != 0)
  {
    v37 = sub_11F88((a1 + 352), &v76);
    TUI::Evaluation::ResolvedValue::transformValue((v37 + 3), a1, &v73);
  }

  else
  {
    v36 = *&CGAffineTransformIdentity.c;
    v73 = *&CGAffineTransformIdentity.a;
    v74 = v36;
    v75 = *&CGAffineTransformIdentity.tx;
  }

  v76 = v73;
  v77 = v74;
  v78 = v75;
  [v6 setRenderTransform:{&v76, v73, v74, v75}];
  LOWORD(v76) = 119;
  if ((*(a1 + 294) & 0x80) != 0)
  {
    v39 = sub_11F88((a1 + 352), &v76);
    v38 = TUI::Evaluation::ResolvedValue::stringValue((v39 + 3), a1);
  }

  else
  {
    v38 = 0;
  }

  [v6 setLayoutDirection:{+[TUIBox interfaceLayoutDirectionFromString:](TUIBox, "interfaceLayoutDirectionFromString:", v38)}];

  LOWORD(v76) = 124;
  if ((*(a1 + 295) & 0x10) != 0)
  {
    v41 = sub_11F88((a1 + 352), &v76);
    v40 = TUI::Evaluation::ResolvedValue::stringValue((v41 + 3), a1);
  }

  else
  {
    v40 = 0;
  }

  [v6 setLiveTransformKind:{+[TUIBox liveTransformFromString:](TUIBox, "liveTransformFromString:", v40)}];

  LOWORD(v76) = 170;
  if ((*(a1 + 301) & 4) != 0)
  {
    v46 = sub_11F88((a1 + 352), &v76);
    top = TUI::Evaluation::ResolvedValue::insetsValue(v46 + 3, a1);
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  [v6 setRenderOutsets:{top, left, bottom, right}];
  v47 = sub_10206C(a1);
  [v6 setGuides:v47];

  LOWORD(v76) = 165;
  if ((*(a1 + 300) & 0x20) != 0)
  {
    v49 = sub_11F88((a1 + 352), &v76);
    v48 = TUI::Evaluation::ResolvedValue::stringValue((v49 + 3), a1);
  }

  else
  {
    v48 = 0;
  }

  [v6 setRefId:v48];

  LOWORD(v76) = 166;
  if ((*(a1 + 300) & 0x40) != 0)
  {
    v51 = sub_11F88((a1 + 352), &v76);
    v50 = TUI::Evaluation::ResolvedValue::stringValue((v51 + 3), a1);
  }

  else
  {
    v50 = 0;
  }

  [v6 setRefInstance:v50];

  LOWORD(v76) = 17;
  v52 = *(a1 + 280);
  if ((v52 & 0x20000) != 0)
  {
    v53 = sub_11F88((a1 + 352), &v76);
    [v6 setAxAdjustable:{TUI::Evaluation::ResolvedValue::BOOLValue((v53 + 3), a1)}];
    v52 = *(a1 + 280);
  }

  LOWORD(v76) = 18;
  if ((v52 & 0x40000) != 0)
  {
    v54 = sub_11F88((a1 + 352), &v76);
    [v6 setAxButton:{TUI::Evaluation::ResolvedValue::BOOLValue((v54 + 3), a1)}];
    v52 = *(a1 + 280);
  }

  LOWORD(v76) = 20;
  if ((v52 & 0x100000) != 0)
  {
    v56 = sub_11F88((a1 + 352), &v76);
    [v6 setAxDisabled:{TUI::Evaluation::ResolvedValue::BOOLValue((v56 + 3), a1)}];
  }

  else
  {
    LOWORD(v76) = 74;
    if ((*(a1 + 289) & 4) != 0)
    {
      v55 = sub_11F88((a1 + 352), &v76);
      [v6 setAxDisabled:{TUI::Evaluation::ResolvedValue::BOOLValue((v55 + 3), a1) ^ 1}];
    }
  }

  LOWORD(v76) = 21;
  v57 = *(a1 + 280);
  if ((v57 & 0x200000) != 0)
  {
    v58 = sub_11F88((a1 + 352), &v76);
    [v6 setAXElement:{TUI::Evaluation::ResolvedValue::BOOLValue((v58 + 3), a1)}];
    v57 = *(a1 + 280);
  }

  LOWORD(v76) = 25;
  if ((v57 & 0x2000000) != 0)
  {
    v59 = sub_11F88((a1 + 352), &v76);
    [v6 setAxImage:{TUI::Evaluation::ResolvedValue::BOOLValue((v59 + 3), a1)}];
    v57 = *(a1 + 280);
  }

  LOWORD(v76) = 24;
  if ((v57 & 0x1000000) != 0)
  {
    v61 = sub_11F88((a1 + 352), &v76);
    v60 = TUI::Evaluation::ResolvedValue::stringValue((v61 + 3), a1);
    if (v60)
    {
      [v6 setAxIdentifier:v60];
    }
  }

  else
  {
    v60 = 0;
  }

  LOWORD(v76) = 26;
  if ((*(a1 + 283) & 4) != 0)
  {
    v63 = sub_11F88((a1 + 352), &v76);
    v62 = TUI::Evaluation::ResolvedValue::stringValue((v63 + 3), a1);
    if (v62)
    {
      [v6 setAxLabel:v62];
    }
  }

  else
  {
    v62 = 0;
  }

  LOWORD(v76) = 22;
  v64 = *(a1 + 280);
  if ((v64 & 0x400000) != 0)
  {
    v65 = sub_11F88((a1 + 352), &v76);
    [v6 setAxHeading:{TUI::Evaluation::ResolvedValue::BOOLValue((v65 + 3), a1)}];
    v64 = *(a1 + 280);
  }

  LOWORD(v76) = 23;
  if ((v64 & 0x800000) != 0)
  {
    v67 = sub_11F88((a1 + 352), &v76);
    v66 = TUI::Evaluation::ResolvedValue::stringValue((v67 + 3), a1);
    if (v66)
    {
      [v6 setAxHint:v66];
    }
  }

  else
  {
    v66 = 0;
  }

  LOWORD(v76) = 27;
  v68 = *(a1 + 280);
  if ((v68 & 0x8000000) != 0)
  {
    v69 = sub_11F88((a1 + 352), &v76);
    [v6 setAxToggle:{TUI::Evaluation::ResolvedValue::BOOLValue((v69 + 3), a1)}];
    v68 = *(a1 + 280);
  }

  LOWORD(v76) = 28;
  if ((v68 & 0x10000000) != 0)
  {
    v70 = sub_11F88((a1 + 352), &v76);
    [v6 setAxTouchContainer:{TUI::Evaluation::ResolvedValue::BOOLValue((v70 + 3), a1)}];
    v68 = *(a1 + 280);
  }

  LOWORD(v76) = 29;
  if ((v68 & 0x20000000) != 0)
  {
    v72 = sub_11F88((a1 + 352), &v76);
    v71 = TUI::Evaluation::ResolvedValue::stringValue((v72 + 3), a1);
    if (v71)
    {
      [v6 setAxValue:v71];
    }
  }

  else
  {
    v71 = 0;
  }
}

uint64_t sub_FEE4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *(v2 + 168) = a2;
  return TUI::Evaluation::Context::instantiateChildren(v2, *(a1 + 40));
}

void TUI::Evaluation::Context::instantiateChildren(const TUI::Evaluation::Context *a1, uint64_t a2, char a3)
{
  v3 = WORD2(a2);
  if (WORD2(a2))
  {
    v4 = a3;
    v5 = a2;
    do
    {
      v7 = *(a1 + 72);
      if (*(v7 + 216) <= v5 || (v8 = (*(v7 + 208) + 28 * v5)) == 0)
      {
        v25 = TUIInstantiationLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v32 = [*(a1 + 2) feedId];
          *buf = 134218240;
          *v48 = v32;
          *&v48[8] = 2048;
          *&v48[10] = v5;
          _os_log_error_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "[fid:%lu] failed to find child element: %lu", buf, 0x16u);
        }

        goto LABEL_24;
      }

      v9 = *(a1 + 3);
      v10 = *(v9 + 72);
      v11 = 0xAAAAAAAAAAAAAAABLL * ((*(v9 + 80) - v10) >> 4);
      v12 = v10 + 48 * *v8;
      v13 = v9 + 24;
      if (v11 <= *v8)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      v15 = *(v14 + 40);
      if ((v15 & 1) == 0)
      {
        v16 = *(v14 + 32);
        if (!v16 || (v16 & ~*(a1 + 22)) != 0)
        {
          v25 = TUIInstantiationLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = [*(a1 + 2) feedId];
            v27 = *(a1 + 72);
            v28 = *v8;
            if (v27[55] <= v28)
            {
              v29 = 0;
            }

            else
            {
              v29 = v27[54] + *(v27[56] + 4 * v28);
            }

            v35 = objc_opt_class();
            v36 = NSStringFromClass(v35);
            v37 = *(a1 + 4);
            if (v37)
            {
              v44 = TUI::ElementInstantiating::BuilderCache::description(*(a1 + 4), *(v14 + 32));
              v41 = *(a1 + 4);
              if (v41)
              {
                v42 = TUI::ElementInstantiating::BuilderCache::description(v41, *(a1 + 22));
                v40 = 0;
                v38 = v44;
                v43 = v42;
                v39 = v42;
              }

              else
              {
                v39 = 0;
                v40 = 1;
                v38 = v44;
              }
            }

            else
            {
              v38 = 0;
              v39 = 0;
              v40 = 1;
            }

            *buf = 134219010;
            *v48 = v26;
            *&v48[8] = 2082;
            *&v48[10] = v29;
            v49 = 2114;
            v50 = v36;
            v51 = 2112;
            v52 = v38;
            v53 = 2112;
            v54 = v39;
            _os_log_error_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "[fid:%lu] child element name=%{public}s not allowed by current builder %{public}@; required:%@ builder:%@", buf, 0x34u);
            if ((v40 & 1) == 0)
            {
            }

            v4 = a3;
            if (v37)
            {
            }
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      if ((v4 & 1) == 0)
      {
        v17 = *(v8 + 2);
        if (!TUIConditionIsNil(*(v8 + 2)))
        {
          TUI::Evaluation::Context::resolve(a1, v17, buf);
          v18 = TUI::Evaluation::ResolvedValue::BOOLValue(buf, a1);

          if (!v18)
          {
            goto LABEL_25;
          }
        }
      }

      v19 = *(v14 + 43);
      if ((v19 & 0x1F80) != 0)
      {
        v21 = *(a1 + 27);
        v20 = *(a1 + 28);
        v22 = *(a1 + 60);
        v45 = *(a1 + 29);
        if ((v19 & 0x1000) != 0)
        {
          if (v20)
          {
            *(a1 + 27) = v20;
          }

          *(a1 + 60) = v5;
          v23 = *(a1 + 76);
          *(a1 + 28) = 0;
          *(a1 + 29) = v23;
          v19 = *(v14 + 43);
        }

        (*(**a1 + 72))(*a1, (v19 >> 7) & 0x3F);
        if ((a3 & 4) != 0 || (*(v14 + 42) & 0x40) == 0)
        {
          v24 = TUI::Evaluation::Context::instantiateNode(a1, v5);
        }

        else
        {
          v24 = TUI::Evaluation::Context::instantiateNodeWithEnumeration(a1, v5, v14);
        }

        v31 = v24;
        (*(**a1 + 80))();
        if ((*(v14 + 43) & 0x1000) != 0)
        {
          *(a1 + 28) = v20;
        }

        *(a1 + 27) = v21;
        *(a1 + 60) = v22;
        v4 = a3;
        *(a1 + 29) = v45;
        if (v31)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if ((v4 & 4) != 0 || (*(v14 + 42) & 0x40) == 0)
        {
          v30 = TUI::Evaluation::Context::instantiateNode(a1, v5);
        }

        else
        {
          v30 = TUI::Evaluation::Context::instantiateNodeWithEnumeration(a1, v5, v14);
        }

        v31 = v30;
        v33 = *(a1 + 28);
        if (v33)
        {
          *(a1 + 27) = v33;
        }

        *(a1 + 28) = 0;
        if (v30)
        {
LABEL_42:
          if ((v15 & 1) == 0)
          {
            if ((*(v14 + 42) & 0x10) != 0)
            {
              [*v14 addObject:v31 toContainingBuilder:*(a1 + 21) context:*(a1 + 2)];
            }

            else if ((*(v14 + 43) & 8) != 0)
            {
              v34 = *(a1 + 21);
              [v34 addBox:v31];
            }
          }
        }
      }

      if ((v4 & 2) != 0)
      {
        return;
      }

LABEL_25:
      ++v5;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_FF398(void *a1)
{
  v2 = a1[4];
  if (objc_opt_respondsToSelector())
  {
    [*(v2 + 168) onlyInstantiateFirstChildPassingConditionForEnumeratorChildren];
  }

  v3 = *(v2 + 184);
  *(v2 + 184) = v3 & 0xFE | ((a1[5] & 2) != 0);
  result = TUI::Evaluation::Context::instantiateChildren(v2, a1[6]);
  *(v2 + 184) = v3;
  return result;
}

id TUI::Evaluation::Context::instantiateEntry(id *a1, void *a2)
{
  v4 = a2;
  objc_storeStrong(a1 + 94, a2);
  v5 = [v4 actionObject];
  v6 = a1[68];
  a1[68] = v5;

  v7 = [v4 aTemplate];
  v8 = a1[95];
  a1[95] = v7;

  (*(**a1 + 72))(*a1, 1);
  v9 = *a1;
  v10 = [v4 bindings];
  v11 = [v10 data];
  (*(*v9 + 88))(v9, v11);

  v12 = [v4 aTemplate];
  v13 = TUI::Evaluation::Context::instantiateNode(a1, [v12 rootElementNode]);

  (*(**a1 + 80))();
  v14 = a1[68];
  a1[68] = 0;

  v15 = a1[94];
  a1[94] = 0;

  v16 = a1[95];
  a1[95] = 0;

  a1[92] = 0;
  a1[21] = 0;

  return v13;
}

uint64_t TUI::Evaluation::Context::updateEntryWithBuilderEnvironmentContainer(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = *(a1 + 544);
  v39 = v11;
  v12 = *(a1 + 752);
  v38 = v12;
  v13 = *(a1 + 760);
  v14 = v13;
  v35 = *(a1 + 736);
  v37 = v14;
  v31 = *(a1 + 168);
  v33 = *(a1 + 208);
  v29 = *(a1 + 176);
  objc_storeStrong((a1 + 752), a2);
  v40 = v10;
  v15 = [v8 actionObject];
  v16 = *(a1 + 544);
  *(a1 + 544) = v15;

  v17 = [v8 aTemplate];
  v18 = *(a1 + 760);
  *(a1 + 760) = v17;

  v19 = *(a1 + 592);
  *(a1 + 592) = 0;
  *(a1 + 168) = v9;
  v20 = *(a1 + 32);
  if (v20)
  {
    v21 = objc_opt_class();
    v22 = TUI::ElementInstantiating::BuilderCache::computeProtocolsFromClass(v20, v21);
  }

  else
  {
    v22 = **(a1 + 24);
  }

  *(a1 + 176) = v22;
  *(a1 + 208) = 0;
  *(a1 + 736) = v10;
  v23 = *(a1 + 576);
  v24 = [v8 aTemplate];
  v25 = [v24 rootElementNode];
  if (*(v23 + 216) <= v25)
  {
  }

  else
  {
    v26 = *(v23 + 208) + 28 * v25;

    if (v26)
    {
      TUI::Evaluation::Context::instantiateChildren(a1, *(v26 + 20) | (*(v26 + 4) << 32), 0);
    }
  }

  v27 = *(a1 + 592);
  *(a1 + 592) = v19;
  objc_storeStrong((a1 + 544), v11);
  objc_storeStrong((a1 + 752), v12);
  objc_storeStrong((a1 + 760), v13);
  *(a1 + 736) = v36;
  *(a1 + 208) = v34;
  *(a1 + 168) = v32;
  *(a1 + 176) = v30;
  if (([v9 containsSingleComponent] & 1) == 0)
  {
    v27 |= (*(**a1 + 216))();
  }

  return v27;
}

void TUI::Evaluation::Context::includeTemplate(uint64_t a1, void *a2)
{
  v11 = a2;
  v4 = (a1 + 760);
  v5 = *(a1 + 760);
  objc_storeStrong((a1 + 760), a2);
  v6 = [v11 rootElementNode];
  v7 = *(a1 + 576);
  if (*(v7 + 216) > v6)
  {
    v8 = *(v7 + 208) + 28 * v6;
    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      TUI::Evaluation::Context::instantiateChildren(a1, *(v8 + 20) | (*(v8 + 4) << 32), 0);
      objc_autoreleasePoolPop(v9);
    }
  }

  v10 = *v4;
  *v4 = v5;
}

uint64_t TUI::Evaluation::Context::evaluateEnumeratorWithNodes(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, char a8, void *a9, void *a10)
{
  v38 = a3;
  v37 = a9;
  v14 = a10;
  v15 = *(a1 + 168);
  v16 = *(a1 + 176);
  v17 = *(a1 + 192);
  v18 = *(a1 + 208);
  v36 = *(a1 + 184);
  *(a1 + 168) = v14;
  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = objc_opt_class();
    v21 = TUI::ElementInstantiating::BuilderCache::computeProtocolsFromClass(v19, v20);
  }

  else
  {
    v21 = **(a1 + 24);
  }

  *(a1 + 176) = v21;
  *(a1 + 192) = v14;
  v22 = TUIEnumeratorNotNil(a2);
  if ((a7 & 0xFFFF00000000) != 0 && v22)
  {
    v24 = *(a1 + 576);
    if (*(v24 + 264) <= a2)
    {
      v25 = 0;
    }

    else
    {
      v25 = (*(v24 + 256) + 16 * a2);
    }

    sub_8BE78(&v40, v25);
    v28 = v40;
    v27 = v41;
    if (objc_opt_respondsToSelector())
    {
      v29 = [*(a1 + 168) onlyInstantiateFirstChildPassingConditionForEnumeratorChildren];
      v30 = 2;
      if ((v29 & 1) == 0)
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    *(a1 + 184) = *(a1 + 184) & 0xFE | ((a8 & 2) != 0);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_FFCEC;
    v39[3] = &unk_261AC8;
    v39[6] = a7;
    v39[4] = a1;
    v39[5] = v30 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a8 & 1));
    v31 = v27;
    v26 = TUI::Evaluation::Context::evaluateEnumeratorWithBlock(a1, v28, v31, v38, a4, a5, a6, v39);
  }

  else
  {
    v26 = 0;
  }

  *(a1 + 168) = v15;
  *(a1 + 176) = v16;
  *(a1 + 192) = v17;
  *(a1 + 208) = v18;
  *(a1 + 184) = v36;

  return v26;
}

uint64_t TUI::Evaluation::Context::evaluateEnumeratorWithBlock(void *a1, unint64_t a2, Entry a3, void *a4, uint64_t a5, uint64_t a6, int a7, void *a8)
{
  v15 = a4;
  v16 = a8;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (v16)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_102248;
    v20[3] = &unk_261B78;
    v24 = a1;
    v25 = a5;
    v26 = a6;
    v21 = v15;
    v27 = a7;
    v22 = v16;
    v23 = &v28;
    v17 = a3;
    TUI::Evaluation::Context::evaluateEnumerator(a1, a2, v17, v20);

    v18 = v29[3];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v28, 8);

  return v18;
}

void sub_FFCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TUI::Evaluation::Context::evaluateBindingWithNodes(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, char a8, uint64_t a9, void *a10)
{
  v17 = a3;
  v18 = a10;
  v31 = *(a1 + 168);
  v33 = *(a1 + 176);
  v32 = *(a1 + 184);
  v19 = **(a1 + 24);
  *(a1 + 168) = v18;
  *(a1 + 176) = v19;
  IsValid = TUINameIsValid(a2);
  if ((a7 & 0xFFFF00000000) != 0 && IsValid)
  {
    v23 = TUI::Package::Enumerator::Entry::binding(a2, v21);
    v25 = v24;
    if (objc_opt_respondsToSelector())
    {
      v26 = [*(a1 + 168) onlyInstantiateFirstChildPassingConditionForEnumeratorChildren];
      v27 = 2;
      if ((v26 & 1) == 0)
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    v29 = v25;
    *(a1 + 184) = *(a1 + 184) & 0xFE | ((a8 & 2) != 0);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_FFEC4;
    v34[3] = &unk_261AC8;
    v34[6] = a7;
    v34[4] = a1;
    v34[5] = v27 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a8 & 1));
    v28 = TUI::Evaluation::Context::evaluateEnumeratorWithBlock(a1, v23, v29, v17, a4, a5, a6, v34);
  }

  else
  {
    v28 = 0;
  }

  *(a1 + 168) = v31;
  *(a1 + 176) = v33;
  *(a1 + 184) = v32;

  return v28;
}

void TUI::Evaluation::Context::evaluateEnumeratorWithNodes(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = *(a1 + 168);
  v15 = *(a1 + 176);
  v16 = **(a1 + 24);
  *(a1 + 168) = v13;
  *(a1 + 176) = v16;
  v17 = TUIEnumeratorNotNil(a2);
  if ((a4 & 0xFFFF00000000) != 0 && v17)
  {
    v19 = *(a1 + 576);
    if (*(v19 + 264) <= a2)
    {
      v20 = 0;
    }

    else
    {
      v20 = (*(v19 + 256) + 16 * a2);
    }

    sub_8BE78(&v28, v20);
    v21 = v28;
    v22 = v29;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100068;
    v24[3] = &unk_261AF0;
    v26 = a1;
    v25 = v11;
    v27 = a4;
    v23 = v22;
    TUI::Evaluation::Context::evaluateEnumerator(a1, v21, v23, v24);
  }

  *(a1 + 168) = v14;
  *(a1 + 176) = v15;
}

void sub_100068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = (*(*a2 + 24))(a2, a3);
  objc_storeStrong((v5 + 32), *(a1 + 32));
  v6 = *(a1 + 48);

  TUI::Evaluation::Context::instantiateChildren(v4, v6, 0);
}

void TUI::Evaluation::Context::evaluateBindingWithNodes(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a3;
  v11 = a6;
  v12 = *(a1 + 168);
  v13 = *(a1 + 176);
  v14 = **(a1 + 24);
  *(a1 + 168) = v11;
  *(a1 + 176) = v14;
  IsValid = TUINameIsValid(a2);
  if ((a4 & 0xFFFF00000000) != 0 && IsValid)
  {
    v18 = TUI::Package::Enumerator::Entry::binding(a2, v16);
    v20 = v19;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100234;
    v22[3] = &unk_261AF0;
    v24 = a1;
    v23 = v10;
    v25 = a4;
    v21 = v20;
    TUI::Evaluation::Context::evaluateEnumerator(a1, v18, v21, v22);
  }

  *(a1 + 168) = v12;
  *(a1 + 176) = v13;
}

void sub_100234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = (*(*a2 + 24))(a2, a3);
  objc_storeStrong((v5 + 32), *(a1 + 32));
  v6 = *(a1 + 48);

  TUI::Evaluation::Context::instantiateChildren(v4, v6, 0);
}

id TUI::Evaluation::Context::instantiateAnimationReference(void *a1, unint64_t a2)
{
  if (TUIReferenceListNotNil(a2))
  {
    v64 = a1[22];
    v65 = a1[21];
    v4 = a1[72];
    v5 = HIDWORD(a2);
    v66 = objc_opt_new();
    if (!HIDWORD(a2))
    {
LABEL_3:
      v6 = v66;
      [v66 sortUsingComparator:&stru_261B30];
      a1[21] = v65;
      a1[22] = v64;
      goto LABEL_5;
    }

    v8 = 0;
    v9 = a2;
    v62 = a1 + 49;
    v63 = a1 + 53;
    while (1)
    {
      if (v4[19] <= (v8 + v9))
      {
        goto LABEL_59;
      }

      v10 = v4[18] + 12 * (v8 + v9);
      if (!v10)
      {
        goto LABEL_59;
      }

      v11 = *(v10 + 2);
      v12 = *(v10 + 8);
      v13 = *(v10 + 6);
      v14 = *(v10 + 4);
      v69 = v11 | (v14 << 16);
      if (v14 == 0xFFFF || v11 == 0xFFFF)
      {
        goto LABEL_59;
      }

      if (!sub_26874(a1 + 62, &v69))
      {
        break;
      }

      v68 = v68 & 0xFFFFFFFF00000000 | v69;
      v16 = TUI::Symbol::Tab::string(a1[70], v68);
      TUI::Evaluation::Context::reportError(a1, 1002, v16);

LABEL_59:
      if (++v8 == v5)
      {
        goto LABEL_3;
      }
    }

    v17 = objc_alloc_init(TUIAnimationBuilder);
    v18 = *(a1[3] + 8);
    v67 = v17;
    a1[21] = v17;
    a1[22] = v18;
    sub_107580(a1 + 62, &v69);
    v19 = (*(**a1 + 32))(*a1, v69);
    v21 = v19;
    v22 = v20;
    if (v20 == -1)
    {
      v24 = TUIAnimationDefinitionNil;
      v25 = unk_2E3DE4;
    }

    else
    {
      v23 = (*(*v19 + 56))(v19, v20);
      v24 = v23;
      v25 = HIDWORD(v23);
    }

    if (v4[27] <= v25 || (v26 = v4[26], (v27 = (v26 + 28 * v25)) == 0))
    {
      v44 = TUIInstantiationLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v54 = [a1[2] feedId];
        *buf = 134217984;
        v71 = v54;
        _os_log_error_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "[fid:%lu] invalid animation defintion node", buf, 0xCu);
      }

      goto LABEL_58;
    }

    v60 = v25;
    v61 = v26 + 28 * v25;
    v28 = a1[3];
    v29 = *v27;
    v30 = *(v28 + 72);
    v31 = 0xAAAAAAAAAAAAAAABLL * ((*(v28 + 80) - v30) >> 4);
    v32 = v30 + 48 * v29;
    v33 = v28 + 24;
    if (v31 > v29)
    {
      v33 = v32;
    }

    v58 = *v33;
    v59 = *(v33 + 40);
    if (!TUIDefinitionNotNil(v24))
    {
      v57 = v57 & 0xFFFFFFFF00000000 | v69;
      v45 = TUI::Symbol::Tab::string(a1[70], v57);
      TUI::Evaluation::Context::reportError(a1, 1006, v45);
LABEL_57:

      v53 = sub_26874(a1 + 62, &v69);
      sub_34630(a1 + 62, v53);
LABEL_58:

      goto LABEL_59;
    }

    if (v4[23] <= v24 || (v34 = v4[22] + 12 * v24) == 0 || (v35 = *(v34 + 8), v35 == -1))
    {
      if (v12 != -1)
      {
        v56 = v56 & 0xFFFFFFFF00000000 | v69;
        v46 = TUI::Symbol::Tab::string(a1[70], v56);
        TUI::Evaluation::Context::reportError(a1, 1018, v46);

LABEL_54:
        v45 = [(TUIAnimationBuilder *)v67 finalizeAnimationWithContext:a1[2]];
        if (v45)
        {
          [v66 addObject:v45];
        }

        a1[21] = 0;
        goto LABEL_57;
      }

      (*(**a1 + 72))(*a1, 3);
      (*(**a1 + 136))(*a1, v21, v22);
      if ((v59 & 8) != 0)
      {
        v36 = *(v61 + 16);
        v37 = *(v61 + 2);
        sub_FD220((a1 + 31), (v59 >> 5) & 1);
        if (v37)
        {
          if ((v59 & 0x200) != 0)
          {
            v47 = [v58 attributesToIgnoreWhenResolvingInvocation];
            v48 = [v47 _bitset];
            for (i = 0; i != 4; ++i)
            {
              v63[i] |= *&v48[i * 8];
            }
          }

          if ((v59 & 0x80) != 0)
          {
            v50 = [v58 attributesToEvaluateForInvocation];
            v51 = [v50 _bitset];
            v52 = v51[1];
            *v62 = *v51;
            *(a1 + 51) = v52;
          }

          goto LABEL_51;
        }

LABEL_52:
        *(a1 + 61) = v60;
      }
    }

    else
    {
      v55 = *(v34 + 6);
      (*(**a1 + 72))(*a1, 3);
      TUI::Evaluation::Context::evaluateParams(a1, v12 | (v13 << 32));
      (*(**a1 + 136))(*a1, v21, v22);
      TUI::Evaluation::Context::evaluateParams(a1, v35 | (v55 << 32));
      if ((v59 & 8) != 0)
      {
        v36 = *(v61 + 16);
        v37 = *(v61 + 2);
        sub_FD220((a1 + 31), (v59 >> 5) & 1);
        if (v37)
        {
          if ((v59 & 0x200) != 0)
          {
            v38 = [v58 attributesToIgnoreWhenResolvingInvocation];
            v39 = [v38 _bitset];
            for (j = 0; j != 4; ++j)
            {
              v63[j] |= *&v39[j * 8];
            }
          }

          if ((v59 & 0x80) != 0)
          {
            v41 = [v58 attributesToEvaluateForInvocation];
            v42 = [v41 _bitset];
            v43 = v42[1];
            *v62 = *v42;
            *(a1 + 51) = v43;
          }

LABEL_51:
          TUI::Evaluation::Context::computeAttributes(a1, v36 | (v37 << 32), 0, (a1 + 31));
          goto LABEL_52;
        }

        goto LABEL_52;
      }
    }

    [(TUIAnimationBuilder *)v67 configureWithNode:v60 attributes:a1[2]];
    *(a1 + 61) = TUIElementNodeNil;
    sub_F9510((a1 + 31));
    TUI::Evaluation::Context::instantiateChildren(a1, *(v61 + 20) | (*(v61 + 4) << 32), 0);
    (*(**a1 + 168))();
    (*(**a1 + 80))();
    goto LABEL_54;
  }

  v6 = 0;
LABEL_5:

  return v6;
}

int64_t sub_100A48(id a1, TUIAnimation *a2, TUIAnimation *a3)
{
  v4 = a3;
  [(TUIAnimation *)a2 delay];
  v6 = v5;
  [(TUIAnimation *)v4 delay];
  if (v6 >= v7)
  {
    v8 = v6 > v7;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

void TUI::Evaluation::Context::instantiateElementReferenceWithChildrenOfNode(uint64_t a1, int a2, unsigned int a3)
{
  v4 = *(a1 + 576);
  if (*(v4 + 216) > a3 && (v6 = *(v4 + 208) + 28 * a3) != 0 && TUIElementReferenceNotNil(a2))
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100BBC;
    v8[3] = &unk_261B50;
    v9 = a2;
    v8[4] = a1;
    v8[5] = v6;
    v8[6] = v4;
    TUI::Evaluation::Context::evaluateWithNodeIdentifier(a1, a3, v8);
  }

  else
  {

    TUI::Evaluation::Context::reportError(a1, 1011, 0);
  }
}

void sub_100BBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  v4 = *(a1 + 56);
  if (*(v3 + 152) > v4 && (v5 = *(v3 + 144) + 12 * v4) != 0)
  {
    v6 = *(v5 + 2);
    v83 = *(v5 + 8);
    v7 = *(v5 + 4) << 16;
    v80 = *(v5 + 6) << 32;
  }

  else
  {
    v6 = 0;
    v80 = 0;
    v83 = 0xFFFFFFFFLL;
    v7 = 4294901760;
  }

  v8 = *v2;
  v9 = TUI::Evaluation::Context::closureForElement(v2, *(a1 + 40));
  (*(*v8 + 112))(&v93, v8, v9);
  v82 = v93;
  v10 = v95;
  v81 = v94;
  v11 = *(a1 + 40);
  v12 = *(v11 + 20);
  v13 = *(v11 + 4);
  v93 = 0;
  v94 = 0;
  v95 = 0;
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    do
    {
      v92 = v14;
      v16 = *(a1 + 48);
      if (*(v16 + 216) > v14)
      {
        v17 = *(v16 + 208) + 28 * v14;
        if (v17)
        {
          v18 = *(v17 + 8);
          if (TUIConditionIsNil(*(v17 + 8)) || (TUI::Evaluation::Context::resolve(v2, v18, &v90), v19 = TUI::Evaluation::ResolvedValue::BOOLValue(&v90, v2), v91, v19))
          {
            sub_101404(&v93, &v92);
          }
        }
      }

      ++v14;
      --v15;
    }

    while (v15);
  }

  [*(v2 + 67) recordEvent:15];
  v20 = (*(**v2 + 40))(*v2, v6 | v7);
  v22 = v20;
  v23 = v21;
  if (v21 == -1)
  {
    LODWORD(v24) = TUIElementDefinitionNil;
    LODWORD(v25) = unk_2E3DEC;
  }

  else
  {
    v24 = (*(*v20 + 64))(v20, v21);
    v25 = HIDWORD(v24);
  }

  v26 = *(a1 + 48);
  if (*(v26 + 216) > v25)
  {
    v27 = *(v26 + 208) + 28 * v25;
    if (v27)
    {
      v28 = v24;
      if (TUIDefinitionNotNil(v24))
      {
        if (*(v2 + 552) == 1)
        {
          v78 = *(v27 + 24);
          if (TUILocationNotNil(v78))
          {
            v76 = v27;
            v29 = *(v2 + 83);
            v30 = *(v2 + 84);
            if (v29 >= v30)
            {
              v32 = *(v2 + 82);
              v33 = v29 - v32;
              v34 = (v29 - v32) >> 2;
              v35 = v34 + 1;
              if ((v34 + 1) >> 62)
              {
                sub_4050();
              }

              v36 = v30 - v32;
              if (v36 >> 1 > v35)
              {
                v35 = v36 >> 1;
              }

              v37 = v36 >= 0x7FFFFFFFFFFFFFFCLL;
              v38 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v37)
              {
                v38 = v35;
              }

              if (v38)
              {
                sub_106BA0(v2 + 656, v38);
              }

              v39 = v34;
              v40 = (4 * v34);
              v41 = &v40[-v39];
              v73 = v41;
              v75 = 0;
              *v40 = v78;
              v31 = v40 + 1;
              memcpy(v41, v32, v33);
              v42 = *(v2 + 82);
              *(v2 + 82) = v73;
              *(v2 + 83) = v31;
              *(v2 + 84) = 0;
              if (v42)
              {
                operator delete(v42);
              }
            }

            else
            {
              *v29 = v78;
              v31 = v29 + 1;
            }

            *(v2 + 83) = v31;
            v27 = v76;
          }
        }

        v79 = *(v27 + 20);
        v77 = *(v27 + 4);
        v43 = *(v2 + 72);
        if (*(v43 + 184) <= v28 || (v44 = *(v43 + 176) + 12 * v28) == 0 || (v74 = *(v44 + 8), v74 == -1))
        {
          if (v83 != 0xFFFFFFFF)
          {
            v70 = TUI::Symbol::Tab::string(*(v2 + 70), v6 | v7);
            TUI::Evaluation::Context::reportError(v2, 1018, v70);

LABEL_74:
            if (*(v2 + 552) == 1 && TUILocationNotNil(*(v27 + 24)))
            {
              *(v2 + 83) -= 4;
            }

            goto LABEL_77;
          }

          v57 = *(**v2 + 72);
          if (v13)
          {
            v57();
            v59 = v93;
            for (i = v94; v59 != i; ++v59)
            {
              v60 = *v59;
              v61 = *(a1 + 48);
              if (v61[27] > v60)
              {
                v62 = v61[26] + 28 * v60;
                if (v62)
                {
                  if (TUI::Package::Buffer::findAttribute(v61, 0x95u, *(v62 + 16) | (*(v62 + 2) << 32)) == 65685)
                  {
                    v64 = *(a1 + 48);
                    if (*(v64 + 232) > v63 && (v65 = (*(v64 + 224) + 12 * v63)) != 0)
                    {
                      v66 = v65 + 1;
                    }

                    else
                    {
                      v66 = &TUIConditionNil;
                      v65 = &TUIValueNil;
                    }

                    v67 = *v65;
                    if (!TUIConditionNotNil(*v66))
                    {
                      v69 = TUI::Instruction::Decoder::elementName(v67, v2, v68);
                      v83 = v83 & 0xFFFFFFFF00000000 | v69;
                      if (TUINameIsValid(v83))
                      {
                        v84 = v82;
                        v85 = v81;
                        v86 = v10;
                        if (v10)
                        {
                          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        v90 = 0;
                        LODWORD(v91) = v60;
                        v80 = v80 & 0xFFFFFFFF00000000 | v69;
                        TUI::Evaluation::Context::pushNamedElement(v2, v69, &v84, &v90);

                        if (v10)
                        {
                          sub_11420(v10);
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            v57();
          }

          (*(**v2 + 144))(*v2, v22, v23);
        }

        else
        {
          v72 = *(v44 + 6);
          (*(**v2 + 72))(*v2, 63);
          v46 = v93;
          for (j = v94; v46 != j; ++v46)
          {
            v47 = *v46;
            v48 = *(a1 + 48);
            if (v48[27] > v47)
            {
              v49 = v48[26] + 28 * v47;
              if (v49)
              {
                if (TUI::Package::Buffer::findAttribute(v48, 0x95u, *(v49 + 16) | (*(v49 + 2) << 32)) == 65685)
                {
                  v51 = *(a1 + 48);
                  if (*(v51 + 232) > v50 && (v52 = (*(v51 + 224) + 12 * v50)) != 0)
                  {
                    v53 = v52 + 1;
                  }

                  else
                  {
                    v53 = &TUIConditionNil;
                    v52 = &TUIValueNil;
                  }

                  v54 = *v52;
                  if (!TUIConditionNotNil(*v53))
                  {
                    v56 = TUI::Instruction::Decoder::elementName(v54, v2, v55);
                    v75 = v75 & 0xFFFFFFFF00000000 | v56;
                    if (TUINameIsValid(v75))
                    {
                      v87 = v82;
                      v88 = v81;
                      v89 = v10;
                      if (v10)
                      {
                        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v90 = 0;
                      LODWORD(v91) = v47;
                      v71 = v71 & 0xFFFFFFFF00000000 | v56;
                      TUI::Evaluation::Context::pushNamedElement(v2, v56, &v87, &v90);

                      if (v10)
                      {
                        sub_11420(v10);
                      }
                    }
                  }
                }
              }
            }
          }

          TUI::Evaluation::Context::evaluateParams(v2, v83 | v80);
          (*(**v2 + 144))(*v2, v22, v23);
          TUI::Evaluation::Context::evaluateParams(v2, v74 | (v72 << 32));
        }

        TUI::Evaluation::Context::instantiateChildren(v2, v79 | (v77 << 32), 0);
        (*(**v2 + 168))();
        (*(**v2 + 80))();
        goto LABEL_74;
      }
    }
  }

LABEL_77:
  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  if (v10)
  {
    sub_11420(v10);
  }
}

void sub_101374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (v25)
  {
    sub_11420(v25);
  }

  v28 = *(v26 - 112);
  if (v28)
  {
    *(v26 - 104) = v28;
    operator delete(v28);
  }

  if (v25)
  {
    sub_11420(v25);
  }

  _Unwind_Resume(a1);
}

void sub_101404(const void **a1, _DWORD *a2)
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
      sub_4050();
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
      sub_106BA0(a1, v12);
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

void TUI::Evaluation::Context::instantiateNamedElementReference(void *a1, unsigned int a2)
{
  v3 = a2;
  if (!TUIElementReferenceNotNil(a2) || ((v4 = a1[72], *(v4 + 152) <= v3) || (v5 = *(v4 + 144) + 12 * v3) == 0 ? (v6 = 0, v9 = 0, v7 = 0xFFFFFFFFLL, v8 = 4294901760) : (v6 = *(v5 + 2), v7 = *(v5 + 8), v8 = *(v5 + 4) << 16, v9 = *(v5 + 6) << 32), [a1[67] recordEvent:15], v10 = (*(**a1 + 48))(*a1, v6 | v8), v11 == -1))
  {
    v16 = a1;
    v17 = 1011;
  }

  else
  {
    v12 = v10;
    v13 = v11;
    v14 = *((*(*v10 + 72))(v10) + 8);
    if (TUIElementNodeNotNil(v14))
    {
      (*(**a1 + 72))(*a1, 63);
      if (v7 != 0xFFFFFFFFLL)
      {
        TUI::Evaluation::Context::evaluateParams(a1, v7 | v9);
      }

      (*(**a1 + 152))(*a1, v12, v13);
      TUI::Evaluation::Context::instantiateChildNode(a1, v14);
      (*(**a1 + 168))();
      v15 = *(**a1 + 80);

      v15();
      return;
    }

    v16 = a1;
    v17 = 1000;
  }

  TUI::Evaluation::Context::reportError(v16, v17, 0);
}

id TUI::Evaluation::Context::debugDescribeAttributes(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  if (WORD2(a2))
  {
    v5 = 0;
    v6 = *(a1 + 576);
    do
    {
      v19 = v5;
      if (v6[31] > v5 + a2 && (v7 = (v6[30] + 8 * (v5 + a2))) != 0)
      {
        v8 = *v7;
        v9 = v6[60];
        if (v8 >= (v6[61] - v9) >> 1)
        {
          v10 = 0xFFFFLL;
        }

        else
        {
          v10 = *(v9 + 2 * v8);
        }

        v12 = *(v7 + 1);
        v11 = v7[1] << 16;
      }

      else
      {
        v11 = 0;
        v12 = 0xFFFFFFFFLL;
        v10 = 0xFFFFLL;
      }

      v13 = [TUIAttributeRegistry nameForAttribute:v10];
      v14 = v11 >> 16;
      [v4 appendFormat:@"[%@] values=%lu (offset=%lu)\n", v13, v11 >> 16, v12];

      if ((v10 | v11) >= 0x10000)
      {
        v15 = 12 * v12;
        do
        {
          if (v6[29] <= v12)
          {
            v17 = &TUIConditionNil;
            v16 = &TUIValueNil;
          }

          else
          {
            v16 = (v15 + v6[28]);
            v17 = v16 + 1;
            if (!v16)
            {
              v17 = &TUIConditionNil;
              v16 = &TUIValueNil;
            }
          }

          [v4 appendFormat:@"  v=%08x c=%08x\n", *v16, *v17];
          v15 += 12;
          ++v12;
          --v14;
        }

        while (v14);
      }

      v5 = v19 + 1;
    }

    while (v19 + 1 != WORD2(a2));
  }

  return v4;
}

void TUI::Evaluation::Context::computeStyle(TUI::Evaluation::Context *a1, unint64_t a2, uint64_t a3)
{
  v6 = (a3 + 144);
  v7 = -192;
  v8 = 144;
  do
  {
    v9 = *(a3 + v8);
    v8 += 8;
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7 == 0;
    }

    v7 += 64;
  }

  while (!v10);
  if (v9)
  {
    if (TUIReferenceListNotNil(a2))
    {
      v11 = HIDWORD(a2);
      if (HIDWORD(a2))
      {
        v12 = 0;
        v13 = a2;
        v14 = *(a1 + 72);
        v57 = HIDWORD(a2);
        v59 = a2;
        do
        {
          if (*(v14 + 152) <= (v12 + v13))
          {
            v16 = 0;
            v20 = 0;
            v15 = 0;
          }

          else
          {
            v15 = *(v14 + 144) + 12 * (v12 + v13);
            if (v15)
            {
              v16 = *(v15 + 2);
              v17 = *(v15 + 8);
              v18 = *(v15 + 4) << 16;
              v19 = *(v15 + 6);
              v15 = *v15 << 32;
              v20 = v19 << 32;
              goto LABEL_17;
            }

            v16 = 0;
            v20 = 0;
          }

          v18 = 4294901760;
          v17 = 0xFFFFFFFFLL;
LABEL_17:
          v21 = v16 | v18;
          v61 = v16 | v18;
          if ((~v18 & 0xFFFF0000) == 0)
          {
            goto LABEL_51;
          }

          if (v16 != 0xFFFF && !((v15 | v18) >> 32))
          {
            if (sub_26874(a1 + 57, &v61))
            {
              v58 = v58 & 0xFFFFFFFF00000000 | v61;
              v22 = TUI::Symbol::Tab::string(*(a1 + 70), v58);
              TUI::Evaluation::Context::reportError(a1, 1002, v22);
LABEL_22:

              goto LABEL_51;
            }

            sub_107580(a1 + 57, &v61);
            v31 = v61;
            [*(a1 + 67) recordEvent:16];
            v32 = (*(**a1 + 24))(*a1, v31);
            v34 = v32;
            v35 = v33;
            memset(v60, 0, sizeof(v60));
            if (v33 == -1)
            {
              *v60 = TUIStyleDefinitionNil;
              *&v60[16] = qword_2E3DD8;
            }

            else
            {
              (*(*v32 + 48))(v60, v32, v33);
            }

            if (TUIDefinitionNotNil(*v60))
            {
              v36 = *(a1 + 72);
              if (*(v36 + 184) > *v60)
              {
                v37 = *(v36 + 176) + 12 * *v60;
                if (v37)
                {
                  v38 = *(v37 + 8);
                  if (v38 != -1)
                  {
                    v39 = v38 | (*(v37 + 6) << 32);
                    (*(**a1 + 72))(*a1, 7);
                    TUI::Evaluation::Context::evaluateParams(a1, v17 | v20);
                    (*(**a1 + 128))(*a1, v34, v35);
                    TUI::Evaluation::Context::evaluateParams(a1, v39);
                    goto LABEL_42;
                  }
                }
              }

              if (v17 == 0xFFFFFFFFLL)
              {
                (*(**a1 + 72))(*a1, 63);
                (*(**a1 + 128))(*a1, v34, v35);
LABEL_42:
                TUI::Evaluation::Context::computeAttributes(a1, *&v60[4], 1, a3);
                if (TUIReferenceListNotNil(*&v60[12]))
                {
                  TUI::Evaluation::Context::computeStyle(a1, *&v60[12], a3);
                }

                (*(**a1 + 168))();
                (*(**a1 + 80))();
LABEL_45:
                v11 = v57;
                v13 = v59;
              }

              else
              {
                v53 = v53 & 0xFFFFFFFF00000000 | v61;
                v45 = TUI::Symbol::Tab::string(*(a1 + 70), v53);
                TUI::Evaluation::Context::reportError(a1, 1018, v45);
                v11 = v57;
                v13 = v59;
              }

              v46 = sub_26874(a1 + 57, &v61);
              sub_34630(a1 + 57, v46);
              goto LABEL_51;
            }

            v56 = v56 & 0xFFFFFFFF00000000 | v61;
            v40 = TUI::Symbol::Tab::string(*(a1 + 70), v56);
            TUI::Evaluation::Context::reportError(a1, 1009, v40);

            goto LABEL_45;
          }

          if (v16 != 0xFFFF)
          {
            v23 = HIDWORD(v15);
            if ((HIDWORD(v15) - 1) > 1)
            {
              v13 = v59;
            }

            else
            {
              [*(a1 + 67) recordEvent:15];
              v24 = (*(**a1 + 48))(*a1, v21);
              if (v25 == -1)
              {
                if (v23 != 2)
                {
                  v54 = v54 & 0xFFFFFFFF00000000 | v61;
                  v22 = TUI::Symbol::Tab::string(*(a1 + 70), v54);
                  TUI::Evaluation::Context::reportError(a1, 1011, v22);
                  v13 = v59;
                  goto LABEL_22;
                }
              }

              else
              {
                v26 = v24;
                v27 = v25;
                v28 = objc_opt_class();
                v29 = *(*(*v26 + 72))(v26, v27);
                v30 = TUIDynamicCast(v28, v29);

                if (v30)
                {
                  (*(**a1 + 72))(*a1, 7);
                  (*(**a1 + 152))(*a1, v26, v27);
                  TUI::Evaluation::Context::computeStyle(a1, [v30 styleReference], a3);
                  (*(**a1 + 168))();
                  (*(**a1 + 80))();
                }

                else
                {
                  v55 = v55 & 0xFFFFFFFF00000000 | v61;
                  v41 = TUI::Symbol::Tab::string(*(a1 + 70), v55);
                  v42 = *(*(*v26 + 72))(v26, v27);
                  v43 = NSStringFromClass(v42);
                  v44 = [NSString stringWithFormat:@"%@: %@", v41, v43];
                  TUI::Evaluation::Context::reportError(a1, 1000, v44);
                }

                v11 = v57;
              }

              v13 = v59;
            }
          }

LABEL_51:
          v47 = -192;
          v48 = v6;
          do
          {
            v50 = *v48++;
            v49 = v50;
            if (v50)
            {
              v51 = 1;
            }

            else
            {
              v51 = v47 == 0;
            }

            v47 += 64;
          }

          while (!v51);
          ++v12;
          if (v49)
          {
            v52 = v12 == v11;
          }

          else
          {
            v52 = 1;
          }
        }

        while (!v52);
      }
    }
  }
}

TUIGuides *sub_10206C(TUI::Evaluation::Context *a1)
{
  v10 = 121;
  if ((*(a1 + 295) & 2) != 0)
  {
    v2 = (sub_11F88(a1 + 44, &v10) + 3);
  }

  else
  {
    v2 = 0;
  }

  v11 = 209;
  v3 = *(a1 + 38);
  if ((v3 & 0x20000) != 0)
  {
    v4 = (sub_11F88(a1 + 44, &v11) + 3);
    v3 = *(a1 + 38);
  }

  else
  {
    v4 = 0;
  }

  v12 = 207;
  if ((v3 & 0x8000) != 0)
  {
    v5 = (sub_11F88(a1 + 44, &v12) + 3);
  }

  else
  {
    v5 = 0;
  }

  v13 = 43;
  if ((*(a1 + 285) & 8) != 0)
  {
    v6 = (sub_11F88(a1 + 44, &v13) + 3);
    if (!v2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v6 = 0;
  if (v2)
  {
LABEL_14:
    v2 = TUI::Evaluation::ResolvedValue::guideValue(v2, a1);
  }

LABEL_15:
  if (v4)
  {
    v4 = TUI::Evaluation::ResolvedValue::guideValue(v4, a1);
  }

  if (v5)
  {
    v5 = TUI::Evaluation::ResolvedValue::guideValue(v5, a1);
  }

  if (v6)
  {
    v7 = TUI::Evaluation::ResolvedValue::guideValue(v6, a1);
    if (v2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v7 = 0;
    if (v2)
    {
      goto LABEL_27;
    }
  }

  if (!v4 && !v5 && !v7)
  {
    v8 = 0;
    goto LABEL_28;
  }

LABEL_27:
  v8 = [[TUIGuides alloc] initWithLeading:v2 trailing:v4 top:v5 bottom:v7];
LABEL_28:

  return v8;
}

void sub_102248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 56);
  v7 = (*(*a2 + 24))(a2, a3);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 32);
  *(v7 + 16) = v8;
  objc_storeStrong((v7 + 32), v10);
  *(v7 + 8) = (v8 == 0) | (2 * (v8 + 1 == v9)) | *(v7 + 8) & 0xFC;
  if (TUIValueNotNil(*(a1 + 80)))
  {
    TUI::Instruction::Evaluation::evaluate(v14, v6[1], *(a1 + 80));
    v11 = TUI::Evaluation::ResolvedValue::stringValue(v14, v6);

    TUI::Evaluation::Context::evaluateWithUnmappedIdentifier(v6, v11, *(a1 + 40));
  }

  else
  {
    TUI::Evaluation::Context::evaluateWithIdentifier(v6, *(a1 + 64), *(a1 + 40));
  }

  v12 = (*(*a2 + 16))(a2, a3);
  TUI::Evaluation::Enumerator::State::State(v14, v12);
  v13 = v15;
  if ((v15 & 1) == 0)
  {
    if ((v15 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    *(*(*(a1 + 48) + 8) + 24) |= 2uLL;
    if ((v15 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(*(*(a1 + 48) + 8) + 24) |= 1uLL;
  v13 = v15;
  if ((v15 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v13 & 4) != 0)
  {
LABEL_7:
    *(*(*(a1 + 48) + 8) + 24) |= 4uLL;
  }

LABEL_8:
  TUI::Evaluation::Enumerator::State::~State(v14);
}

TUIMutableDynamicValue *TUI::Evaluation::Context::viewStateForNode(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a3;
  if (TUINameIsValid(a3))
  {
    v5 = *(*a1 + 16);
    if (v5)
    {
      [v5 model];
      v6 = [*(v18 + 88) viewStateForBinding:v4];
      if (v19)
      {
        sub_11420(v19);
      }
    }

    else
    {
      v7 = [*(a1 + 224) viewStateForBinding:v4];
      if (v7)
      {
        v6 = v7;
      }

      else
      {
        v8 = *(a1 + 216);
        if (v8)
        {
          v9 = v8;
          while (1)
          {
            v10 = [v9 viewStateForBinding:v4];
            if (v10)
            {
              break;
            }

            v11 = [v9 parent];

            v9 = v11;
            if (!v11)
            {
              goto LABEL_14;
            }
          }

          v11 = v9;
        }

        else
        {
          v11 = 0;
LABEL_14:
          v12 = [*(a1 + 600) identifierWithNode:*(a1 + 240) baseIdentifier:*(a1 + 232)];
          if (v12)
          {
            v13 = *(a1 + 160);
            if (!v13)
            {
              v14 = objc_opt_new();
              v15 = *(a1 + 160);
              *(a1 + 160) = v14;

              v13 = *(a1 + 160);
            }

            v16 = [v13 objectForKeyedSubscript:v12];
            if (!v16)
            {
              v16 = [[_TUIViewStateMapping alloc] initWithParent:*(a1 + 216)];
              [*(a1 + 160) setObject:? forKeyedSubscript:?];
            }

            *(a1 + 224) = v16;
            v10 = [(_TUIViewStateMapping *)v16 viewStateForBinding:v4];
            if (!v10)
            {
              v10 = [(TUIDynamicValue *)[TUIMutableDynamicValue alloc] initWithValue:0];
              [(_TUIViewStateMapping *)v16 setViewState:v10 forBinding:v4];
            }
          }

          else
          {
            v10 = 0;
          }
        }

        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id TUI::Evaluation::Context::fontSpecForNode(uint64_t a1)
{
  v12 = 89;
  if ((*(a1 + 291) & 2) != 0)
  {
    v2 = (sub_11F88((a1 + 352), &v12) + 3);
  }

  else
  {
    v2 = 0;
  }

  v13 = 51;
  if ((*(a1 + 286) & 8) != 0)
  {
    v3 = sub_11F88((a1 + 352), &v13);
    v4 = TUI::Evaluation::ResolvedValue::colorValue(v3 + 3, a1);
    if (v4)
    {
      if (!v2)
      {
        goto LABEL_10;
      }

LABEL_9:
      v5 = TUI::Evaluation::ResolvedValue::fontSpecValue(v2, a1);
      v6 = [v5 mappedSpecIfNeededWithEnvironment:*(a1 + 584)];

      if (v6)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  v4 = [*(a1 + 200) color];
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v7 = *(a1 + 200);
  if (!v7 || ([v7 fontSpec], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = +[TUIFontSpec defaultFontSpec];
    v6 = [v8 mappedSpecIfNeededWithEnvironment:*(a1 + 584)];
  }

LABEL_13:
  if (v4)
  {
    v9 = [v6 fontSpecWithColor:v4];

    v6 = v9;
  }

  v10 = [v6 textStyle];

  if (v10)
  {
    *(a1 + 592) |= 0x20uLL;
  }

  return v6;
}

id TUI::Evaluation::Context::pointerForNode(uint64_t a1)
{
  v10 = 152;
  if (*(a1 + 299))
  {
    v3 = sub_11F88((a1 + 352), &v10);
    v1 = TUI::Evaluation::ResolvedValue::stringValue((v3 + 3), a1);
    if (v1)
    {
      v4 = objc_opt_class();
      v11 = 153;
      if ((*(a1 + 299) & 2) != 0)
      {
        v7 = sub_11F88((a1 + 352), &v11);
        v5 = TUI::Evaluation::ResolvedValue::objectValue((v7 + 3), a1);
      }

      else
      {
        v5 = 0;
      }

      v8 = TUIDynamicCast(v4, v5);

      v6 = [TUIPointer pointerWithRefId:v1 style:v8];

      goto LABEL_9;
    }
  }

  else
  {
    v1 = 0;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

uint64_t TUI::Evaluation::Context::closure(uint64_t a1, TUI::Instruction::Decoder *a2)
{
  v4 = TUIClosureNil;
  if (!TUIValueNotNil(a2))
  {
    return v4;
  }

  if (TUI::Instruction::Decoder::offsetKind(a2) != 18)
  {
    TUI::Evaluation::Context::reportError(a1, 1000, 0);
    return v4;
  }

  return TUI::Instruction::Decoder::offsetIndex(a2);
}

uint64_t TUI::Evaluation::Context::closureForNode(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 576);
  if (*(v2 + 216) <= a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 208) + 28 * a2;
  }

  return TUI::Evaluation::Context::closureForElement(a1, v3);
}

uint64_t TUI::Evaluation::Context::evaluateGlobals(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 592);
  *(a1 + 40) = 1;
  TUI::Evaluation::Context::instantiateChildren(a1, a2, 0);
  *(a1 + 40) = v3;
  result = *(a1 + 592);
  *(a1 + 592) = v4;
  return result;
}

void TUI::Evaluation::Context::setEnvironment(id *this, TUIEnvironment *a2)
{
  objc_storeStrong(this + 73, a2);
  v4 = a2;
  (*(**this + 184))();
}

void TUI::Evaluation::Context::instantiateComponentWithChildrenOfNode(const TUI::Evaluation::Context *a1, unsigned int a2, unsigned int a3)
{
  v7 = a2;
  if (TUINameReferenceIsNil(a2))
  {
    v8 = a1;
    v9 = 1013;
LABEL_24:

    TUI::Evaluation::Context::reportError(v8, v9, 0);
    return;
  }

  v10 = *(a1 + 72);
  if (*(v10 + 152) <= v7 || (v11 = *(v10 + 144) + 12 * v7) == 0)
  {
    v13 = -65536;
    v14 = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  v12 = *(v11 + 4);
  v13 = *(v11 + 2) | (v12 << 16);
  v14 = *(v11 + 8) | (*(v11 + 6) << 32);
  if (v12 == 0xFFFF)
  {
LABEL_9:
    v15 = TUINameNil;
    goto LABEL_10;
  }

  v15 = TUINameNil;
  if (*(v11 + 2) != 0xFFFF)
  {
    v15 = *(v11 + 2) | (v12 << 16);
  }

LABEL_10:
  v16 = TUI::Package::Buffer::componentWithName(v10, v15);
  if (v16)
  {
    v17 = *(a1 + 72);
    if (*(v17 + 216) <= a3 || (v18 = a3, (v19 = *(v17 + 208) + 28 * a3) == 0))
    {
      v8 = a1;
      v9 = 1011;
      goto LABEL_24;
    }

    v20 = v16;
    v105 = TUI::Evaluation::Context::identifierWithNode(a1, v18);
    v21 = *(v19 + 20);
    v22 = *(v19 + 4);
    v124 = 0;
    v125 = 0;
    v126 = 0;
    if (!v22)
    {
      goto LABEL_30;
    }

    v3 = (v22 << 32) + v21;
    v4 = 28;
    do
    {
      LODWORD(v118[0]) = v3;
      v23 = *(a1 + 72);
      if (*(v23 + 216) > v3)
      {
        v24 = *(v23 + 208) + 28 * v3;
        if (v24)
        {
          v25 = *(v24 + 8);
          if (TUIConditionIsNil(*(v24 + 8)) || (TUI::Evaluation::Context::resolve(a1, v25, &v127), v26 = TUI::Evaluation::ResolvedValue::BOOLValue(&v127, a1), v128, v26))
          {
            sub_101404(&v124, v118);
          }
        }
      }

      ++v3;
      --v22;
    }

    while (v22);
    if (v124 == v125)
    {
LABEL_30:
      v108 = 0;
      v29 = 0;
      v107 = 0;
    }

    else
    {
      v27 = *a1;
      v28 = TUI::Evaluation::Context::closureForElement(a1, v19);
      (*(*v27 + 112))(&v127, v27, v28);
      v108 = v127;
      v29 = *(&v128 + 1);
      v107 = v128;
    }

    v114 = v29;
    v30 = *(a1 + 72);
    v31 = *(v20 + 2);
    if (*(v30 + 184) > v31 && (v32 = *(v30 + 176) + 12 * v31) != 0)
    {
      v110 = *(v32 + 8);
      v111 = *(v32 + 6) << 32;
    }

    else
    {
      v110 = 0xFFFFFFFFLL;
      v111 = 0;
    }

    (*(**a1 + 72))(*a1, 63);
    v113 = v20;
    v33 = v124;
    for (i = v125; v33 != i; ++v33)
    {
      v35 = *v33;
      v36 = *(a1 + 72);
      if (v36[27] > v35)
      {
        v37 = v36[26] + 28 * v35;
        if (v37)
        {
          if (TUI::Package::Buffer::findAttribute(v36, 0x95u, *(v37 + 16) | (*(v37 + 2) << 32)) == 65685)
          {
            v39 = *(a1 + 72);
            if (*(v39 + 232) > v38 && (v40 = (*(v39 + 224) + 12 * v38)) != 0)
            {
              v41 = v40 + 1;
            }

            else
            {
              v41 = &TUIConditionNil;
              v40 = &TUIValueNil;
            }

            v42 = *v40;
            if (!TUIConditionNotNil(*v41))
            {
              v44 = TUI::Instruction::Decoder::elementName(v42, a1, v43);
              v3 = v3 & 0xFFFFFFFF00000000 | v44;
              if (TUINameIsValid(v3))
              {
                v121 = v108;
                v122 = v107;
                v123 = v114;
                if (v114)
                {
                  atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v127 = 0;
                LODWORD(v128) = v35;
                v4 = v4 & 0xFFFFFFFF00000000 | v44;
                TUI::Evaluation::Context::pushNamedElement(a1, v4, &v121, &v127);

                if (v114)
                {
                  sub_11420(v114);
                }
              }
            }
          }
        }
      }
    }

    TUI::Evaluation::Context::evaluateParams(a1, v14);
    v45 = v20;
    v46 = *a1;
    TUI::Evaluation::Variables::Capture::emptyClosed(&v119);
    (*(*v46 + 160))(v46, &v119);
    if (v120)
    {
      sub_11420(v120);
    }

    TUI::Evaluation::Context::evaluateParams(a1, v110 | v111);
    v47 = *a1;
    v48 = TUI::Evaluation::Context::closure(a1, *(v20 + 9));
    (*(*v47 + 112))(&v127, v47, v48);
    v49 = v128;
    (*(**a1 + 168))();
    (*(**a1 + 80))();
    v50 = *(a1 + 92);
    v51 = *(a1 + 91);
    v52 = v105;
    v53 = [v51 objectForKey:v50];
    v112 = [v53 objectForKey:v52];

    v109 = v52;
    v104 = *v113;
    v106 = v104 != 0;
    v54 = *(v113 + 8);
    v55 = v113[3];
    memset(v118, 0, sizeof(v118));
    if (v55)
    {
      v116 = 0;
      v56 = 0;
      v57 = 4 * v54;
      do
      {
        v58 = *(a1 + 72);
        if (*(v58 + 344) > v54 && (v59 = *(v58 + 336), (v60 = (v57 + v59)) != 0))
        {
          v61 = v59 + v57;
          v45 = v45 & 0xFFFFFFFF00000000 | *(v59 + v57) | (*(v59 + v57 + 2) << 16);
          (*(**a1 + 192))(&v127);
          if (v127)
          {
            v62 = *(v127 + 22);
            v63 = v127[9];
            v64 = v127[10];
            sub_257C4(v118, &v127);
            v56 += v62;
            v116 |= v63 | v64;
          }

          else
          {
            v53 = v53 & 0xFFFFFFFF00000000 | *v60 | (*(v61 + 2) << 16);
            v65 = TUI::Symbol::Tab::string(*(a1 + 70), v53);
            TUI::Evaluation::Context::reportError(a1, 1012, v65);
          }

          if (v128)
          {
            sub_11420(v128);
          }
        }

        else
        {
          TUI::Evaluation::Context::reportError(a1, 1012, 0);
        }

        v57 += 4;
        ++v54;
        --v55;
      }

      while (v55);
    }

    else
    {
      v56 = 0;
      v116 = 0;
    }

    bzero(&v117, 1uLL);
    if (*(a1 + 184))
    {
      v117 |= 1u;
    }

    v66 = v112;
    if (v112)
    {
      [(TUIComponent *)v112 model];
      v67 = v127[1];
      v68 = v127[2];
      if (v68)
      {
        atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v69 = TUI::Evaluation::Variables::Capture::operator==(v67, v49);
      if (v68)
      {
        sub_11420(v68);
      }

      if (v128)
      {
        sub_11420(v128);
      }

      [(TUIComponent *)v112 model];
      v70 = v127[10];
      if (v128)
      {
        sub_11420(v128);
      }

      [(TUIComponent *)v112 model];
      v71 = *(v127 + 96);
      v72 = v117;
      if (v128)
      {
        sub_11420(v128);
      }

      if (v70 == v56 && v69)
      {
        v74 = 0;
        v75 = (v72 ^ v71) & 1;
        v106 = (v72 ^ v71) & (v104 != 0);
      }

      else
      {
        v75 = 1;
        v74 = 1;
      }

      v66 = v112;
    }

    else
    {
      v75 = 1;
      v74 = 1;
    }

    v135 = 0;
    v76 = *(a1 + 96);
    if (v76)
    {
      v77 = *(a1 + 72);
      v78 = *(v113 + 2);
      if (*(v77 + 184) > v78 && (v79 = *(v77 + 176) + 12 * v78) != 0)
      {
        v80 = *(v79 + 2);
        v81 = *(v79 + 4) << 16;
      }

      else
      {
        v80 = 0;
        v81 = -65536;
      }

      v134 = v80 | v81;
      v82 = sub_26874((v76 + 8), &v134);
      if (!v82)
      {
        v133 = 0;
        v132 = 0u;
        v131 = 0u;
        v130 = 0u;
        v129 = 0u;
        v128 = 0u;
        LODWORD(v127) = v134;
        v82 = sub_106BE8((v76 + 8), &v127);
      }

      v82[7] = (v82[7] + 1);
    }

    v83 = *(a1 + 96);
    if (!v66)
    {
      if (v83)
      {
        v89 = *(a1 + 72);
        v90 = *(v113 + 2);
        if (*(v89 + 184) > v90 && (v91 = *(v89 + 176) + 12 * v90) != 0)
        {
          v92 = *(v91 + 2);
          v93 = *(v91 + 4) << 16;
        }

        else
        {
          v92 = 0;
          v93 = -65536;
        }

        v134 = v92 | v93;
        v100 = sub_26874((v83 + 8), &v134);
        if (!v100)
        {
          v133 = 0;
          v132 = 0u;
          v131 = 0u;
          v130 = 0u;
          v129 = 0u;
          v128 = 0u;
          LODWORD(v127) = v134;
          v100 = sub_106BE8((v83 + 8), &v127);
        }

        v100[8] = (v100[8] + 1);
      }

      operator new();
    }

    if (v74)
    {
      if (v83)
      {
        v84 = *(a1 + 72);
        v85 = *(v113 + 2);
        if (*(v84 + 184) > v85 && (v86 = *(v84 + 176) + 12 * v85) != 0)
        {
          v87 = *(v86 + 2);
          v88 = *(v86 + 4) << 16;
        }

        else
        {
          v87 = 0;
          v88 = -65536;
        }

        v134 = v87 | v88;
        v101 = sub_26874((v83 + 8), &v134);
        if (!v101)
        {
          v133 = 0;
          v132 = 0u;
          v131 = 0u;
          v130 = 0u;
          v129 = 0u;
          v128 = 0u;
          LODWORD(v127) = v134;
          v101 = sub_106BE8((v83 + 8), &v127);
        }

        v101[9] = (v101[9] + 1);
      }

      operator new();
    }

    if (v83)
    {
      v94 = *(a1 + 72);
      v95 = *(v113 + 2);
      v96 = *(&v49 + 1);
      if (*(v94 + 184) > v95 && (v97 = *(v94 + 176) + 12 * v95) != 0)
      {
        v98 = *(v97 + 2);
        v99 = *(v97 + 4) << 16;
      }

      else
      {
        v98 = 0;
        v99 = -65536;
      }

      v134 = v98 | v99;
      v102 = sub_26874((v83 + 8), &v134);
      if (!v102)
      {
        v133 = 0;
        v132 = 0u;
        v131 = 0u;
        v130 = 0u;
        v129 = 0u;
        v128 = 0u;
        LODWORD(v127) = v134;
        v102 = sub_106BE8((v83 + 8), &v127);
      }

      v102[10] = (v102[10] + 1);
    }

    else
    {
      v96 = *(&v49 + 1);
    }

    [(TUIComponent *)v66 setGlobalsEnvironmentUseMask:v116];
    v103 = *(a1 + 93);
    if (v116)
    {
      [v103 addObject:v66];
    }

    else
    {
      [v103 removeObject:v66];
    }

    if (v106)
    {
      TUI::Evaluation::Context::evaluateComponentBindings(a1, v66, &v135);
    }

    if (v75)
    {
      TUI::Evaluation::Context::instantiateComponentBody(a1, v66, 0);
    }

    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 21) addModel:v66];
    }

    v127 = v118;
    sub_286D0(&v127);

    if (v96)
    {
      sub_11420(v96);
    }

    if (v114)
    {
      sub_11420(v114);
    }

    if (v124)
    {
      v125 = v124;
      operator delete(v124);
    }
  }

  else
  {
    v115 = TUI::Symbol::Tab::string(*(a1 + 70), v13);
    TUI::Evaluation::Context::reportError(a1, 1013, v115);
  }
}

void sub_1038C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, uint64_t a17, std::__shared_weak_count *a18, id a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  *(v41 - 96) = &a37;
  sub_286D0((v41 - 96));

  if (a15)
  {
    sub_11420(a15);
  }

  if (a18)
  {
    sub_11420(a18);
  }

  v43 = *(v41 - 224);
  if (v43)
  {
    *(v41 - 216) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

void TUI::Evaluation::Context::evaluateComponentBindings(TUI::Evaluation::Context *this, TUIComponent *a2, TUI::Model::Component **a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    [(TUIComponent *)v5 model];
    v7 = *(v30 + 40);
    if (v31)
    {
      sub_11420(v31);
    }
  }

  else
  {
    v30 = 0;
    *&v31 = 0;
    v7 = 0x545845545F5FLL;
  }

  if (*v7)
  {
    v8 = [(TUIComponent *)v6 identifier];
    v9 = *(this + 96);
    if (v9)
    {
      v10 = *(this + 72);
      v11 = v6;
      [(TUIComponent *)v11 model];
      v12 = *(*(v30 + 40) + 8);
      if (*(v10 + 184) > v12 && (v13 = *(v10 + 176) + 12 * v12) != 0)
      {
        v14 = *(v13 + 2);
        v15 = *(v13 + 4) << 16;
      }

      else
      {
        v14 = 0;
        v15 = -65536;
      }

      v16 = v14 | v15;
      if (v31)
      {
        sub_11420(v31);
      }

      v37 = v16;
      v17 = sub_26874((v9 + 8), &v37);
      if (!v17)
      {
        v36 = 0;
        v35 = 0u;
        v34 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        LODWORD(v30) = v37;
        v17 = sub_106BE8((v9 + 8), &v30);
      }

      v17[3] = (v17[3] + 1);
    }

    *(this + 88) = v6;
    v18 = [[NSHashTable alloc] initWithOptions:512 capacity:0];
    v19 = *(this + 89);
    *(this + 89) = v18;

    v20 = *this;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1045B0;
    v24[3] = &unk_261BA0;
    v27 = this;
    v21 = v8;
    v25 = v21;
    v28 = v7;
    v29 = a3;
    v26 = v6;
    (*(*v20 + 208))(v20, v26, this, 0, v24);
    v22 = *(this + 89);
    *(this + 44) = 0u;

    v23 = *(this + 90);
    *(this + 90) = 0;
  }
}

void TUI::Evaluation::Context::instantiateComponentBody(TUI::Evaluation::Context *this, TUIComponent *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  v7 = *(this + 96);
  if (v7)
  {
    v8 = *(this + 72);
    v9 = v5;
    [(TUIComponent *)v9 model];
    v10 = *(v74[5] + 8);
    if (*(v8 + 184) > v10 && (v11 = *(v8 + 176) + 12 * v10) != 0)
    {
      v12 = *(v11 + 2);
      v13 = *(v11 + 4) << 16;
    }

    else
    {
      v12 = 0;
      v13 = -65536;
    }

    v14 = v12 | v13;
    if (v75)
    {
      sub_11420(v75);
    }

    LODWORD(v72) = v14;
    v15 = sub_26874((v7 + 8), &v72);
    if (!v15)
    {
      v80 = 0;
      v79 = 0u;
      v78 = 0u;
      v77 = 0u;
      v76 = 0u;
      v75 = 0u;
      LODWORD(v74) = v72;
      v15 = sub_106BE8((v7 + 8), &v74);
    }

    v15[6] = (v15[6] + 1);
    *(v7 + 128 + 24 * *(v7 + 3200)) = v14;
    *(v7 + 128 + 24 * *(v7 + 3200) + 16) = 0;
    v16 = mach_absolute_time();
    v17 = *(v7 + 3200);
    *(v7 + 128 + 24 * v17 + 8) = v16;
    *(v7 + 3200) = v17 + 1;
  }

  v18 = *(this + 26);
  v19 = *(this + 21);
  v66 = *(this + 22);
  v20 = *(this + 92);
  v21 = *(this + 68);
  v22 = v21;
  obj = *(this + 94);
  v69 = obj;
  v64 = *(this + 95);
  v68 = v64;
  v70 = *(this + 41);
  *(this + 41) = 0u;
  v23 = *(this + 84);
  *(this + 84) = 0;
  if (a3)
  {
    [(TUIComponent *)v6 model];
    v25 = v74[13];
    v24 = v74[14];
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_11420(v24);
    }

    if (v75)
    {
      sub_11420(v75);
    }

    objc_storeStrong(this + 68, *(v25 + 8));
    objc_storeStrong(this + 94, *(v25 + 16));
    objc_storeStrong(this + 95, *(v25 + 24));
    *(this + 26) = *(v25 + 32);
  }

  v61 = v19;
  v62 = v21;
  v63 = v20;
  *(this + 92) = v6;
  v26 = *(this + 76);
  v67 = v26;
  v27 = [(TUIComponent *)v6 identifier];
  v28 = *(this + 76);
  *(this + 76) = v27;

  v29 = objc_alloc_init(TUIBoxBuilder);
  v60 = v23;
  *(this + 21) = v29;
  *(this + 22) = **(this + 3);
  [(TUIComponent *)v6 model];
  v30 = v72;
  v31 = *(this + 74);
  *(this + 74) = 0;
  v32 = *(v30 + 40);
  v33 = *(v32 + 12);
  if (*(this + 552) == 1 && TUILocationNotNil(*(v32 + 12)))
  {
    v59 = v22;
    v34 = *(this + 83);
    v35 = *(this + 84);
    if (v34 >= v35)
    {
      v37 = *(this + 82);
      v38 = v34 - v37;
      v58 = (v34 - v37) >> 2;
      v39 = v58 + 1;
      if ((v58 + 1) >> 62)
      {
        sub_4050();
      }

      v40 = v35 - v37;
      if (v40 >> 1 > v39)
      {
        v39 = v40 >> 1;
      }

      v41 = v40 >= 0x7FFFFFFFFFFFFFFCLL;
      v42 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v41)
      {
        v42 = v39;
      }

      if (v42)
      {
        sub_106BA0(this + 656, v42);
      }

      *(4 * v58) = v33;
      v36 = 4 * v58 + 4;
      memcpy(0, v37, v38);
      v43 = *(this + 82);
      *(this + 82) = 0;
      *(this + 83) = v36;
      *(this + 84) = 0;
      if (v43)
      {
        operator delete(v43);
      }
    }

    else
    {
      *v34 = v33;
      v36 = (v34 + 1);
    }

    *(this + 83) = v36;
    v22 = v59;
  }

  v44 = *this;
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10490C;
  v71[3] = &unk_261BC0;
  v71[4] = this;
  v71[5] = v32;
  (*(*v44 + 208))(v44, v6, this, 1, v71);
  if (*(this + 552) == 1 && TUILocationNotNil(v33))
  {
    *(this + 83) -= 4;
  }

  v45 = *(this + 74);
  *(this + 74) = v31;
  v46 = *(this + 82);
  *(this + 41) = v70;
  *(this + 84) = v60;
  [(TUIBoxBuilder *)v29 finalizeModelsWithParent:v6];
  [(TUIComponent *)v6 setDirectEnvironmentUseMask:v45];
  *(this + 21) = v61;
  *(this + 22) = v66;
  objc_storeStrong(this + 68, v62);
  objc_storeStrong(this + 94, obj);
  objc_storeStrong(this + 95, v64);
  *(this + 26) = v18;
  objc_storeStrong(this + 76, v26);
  *(this + 92) = v63;
  v47 = *(this + 96);
  if (v47)
  {
    v48 = *(v47 + 3200) - 1;
    *(v47 + 3200) = v48;
    v49 = v47 + 128;
    v50 = v47 + 128 + 24 * v48;
    v51 = *v50;
    v52 = *(v50 + 8);
    v53 = mach_absolute_time();
    *v81 = v51;
    v54 = sub_26874((v47 + 8), v81);
    if (!v54)
    {
      v80 = 0;
      v79 = 0u;
      v78 = 0u;
      v77 = 0u;
      v76 = 0u;
      v75 = 0u;
      LODWORD(v74) = *v81;
      v54 = sub_106BE8((v47 + 8), &v74);
    }

    v55 = v53 - v52;
    if (v52 >= v53)
    {
      v55 = v52 - v53;
    }

    v56 = v54[11];
    v54[12] = (v54[12] + v55);
    v57 = *(v47 + 3200);
    v54[11] = (v56 + v55 - *(v49 + 24 * v57 + 16));
    if (v57)
    {
      *(v49 + 24 * v57 - 8) += v55;
    }
  }

  if (v73)
  {
    sub_11420(v73);
  }

  if (v46)
  {
    operator delete(v46);
  }
}

void sub_104360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23)
{
  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t TUI::Evaluation::Context::evaluateComponentLocals(uint64_t a1, uint64_t a2)
{
  v4 = TUIElementNodeNil;
  v26 = 1065353216;
  memset(v27, 0, sizeof(v27));
  v28 = 1065353216;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = (a1 + 248);
  v21 = *(a1 + 248);
  v22 = *(a1 + 264);
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  v6 = (a1 + 280);
  memset(v25, 0, sizeof(v25));
  v23 = *(a1 + 280);
  v24 = *(a1 + 296);
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  sub_28FD0(v25, a1 + 312);
  sub_28FD0(v27, a1 + 352);
  v8 = v29;
  v7 = v30;
  v9 = *(a1 + 408);
  v29 = *(a1 + 392);
  v30 = v9;
  *(a1 + 392) = v8;
  *(a1 + 408) = v7;
  v11 = v31;
  v10 = v32;
  v12 = *(a1 + 440);
  v31 = *(a1 + 424);
  v32 = v12;
  *(a1 + 424) = v11;
  *(a1 + 440) = v10;
  v13 = *(a1 + 244);
  *(a1 + 244) = v4;
  TUI::Evaluation::Context::instantiateChildren(a1, *(*(*a2 + 40) + 20) | (*(*(*a2 + 40) + 2) << 32), 0);
  *v5 = v21;
  v5[1] = v22;
  *v6 = v23;
  v6[1] = v24;
  sub_28FD0(v25, a1 + 312);
  sub_28FD0(v27, a1 + 352);
  v15 = v29;
  v14 = v30;
  v16 = *(a1 + 408);
  v29 = *(a1 + 392);
  v30 = v16;
  *(a1 + 392) = v15;
  *(a1 + 408) = v14;
  v18 = v31;
  v17 = v32;
  v19 = *(a1 + 440);
  v31 = *(a1 + 424);
  v32 = v19;
  *(a1 + 424) = v18;
  *(a1 + 440) = v17;
  *(a1 + 244) = v13;
  sub_34CFC(v27);
  return sub_11694(v25);
}

void sub_104594(_Unwind_Exception *a1)
{
  sub_34CFC(v1 + 104);
  sub_11694(v1 + 64);
  _Unwind_Resume(a1);
}

void sub_1045B0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [v2[20] objectForKeyedSubscript:*(a1 + 32)];
  v4 = v2 + 90;
  objc_storeStrong(v2 + 90, v3);
  TUI::Evaluation::Context::instantiateChildren(v2, *(*(a1 + 56) + 16) | (**(a1 + 56) << 32), 0);
  v5 = *v2;
  v6 = TUI::Evaluation::Context::closure(v2, *(*(a1 + 56) + 40));
  (*(*v5 + 112))(&v13, v5, v6);
  v8 = v14;
  v7 = v15;
  if (!v3 && *v4)
  {
    [v2[20] setObject:*v4 forKeyedSubscript:*(a1 + 32)];
  }

  v9 = **(a1 + 64);
  if (v9)
  {
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(v9 + 32);
    *(v9 + 24) = v8;
    *(v9 + 32) = v7;
    if (v10)
    {
      sub_11420(v10);
    }

    if (v7)
    {
      sub_11420(v7);
    }

    objc_storeStrong((**(a1 + 64) + 72), v2[89]);
    objc_storeStrong((**(a1 + 64) + 88), v2[90]);
  }

  else
  {
    [*(a1 + 40) model];
    v12 = *(v13 + 24);
    v11 = *(v13 + 32);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_11420(v11);
    }

    if (v14)
    {
      sub_11420(v14);
    }

    if (!v12 || !v8 || !TUI::Evaluation::Variables::Capture::operator==(v12, v8))
    {
      operator new();
    }
  }

  if (v7)
  {
    sub_11420(v7);
  }
}

void sub_10490C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = TUI::Package::Buffer::renderBodyForComponent(*(v1 + 576), *(a1 + 40));
  v3 = v2;
  v4 = *(v2 + 8);
  if (*(v1 + 552) == 1 && TUILocationNotNil(*(v2 + 8)))
  {
    v5 = *(v1 + 664);
    v6 = *(v1 + 672);
    if (v5 >= v6)
    {
      v8 = *(v1 + 656);
      v9 = v5 - v8;
      v10 = (v5 - v8) >> 2;
      v11 = v10 + 1;
      if ((v10 + 1) >> 62)
      {
        sub_4050();
      }

      v12 = v6 - v8;
      if (v12 >> 1 > v11)
      {
        v11 = v12 >> 1;
      }

      v13 = v12 >= 0x7FFFFFFFFFFFFFFCLL;
      v14 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v13)
      {
        v14 = v11;
      }

      if (v14)
      {
        sub_106BA0(v1 + 656, v14);
      }

      v15 = (v5 - v8) >> 2;
      v16 = (4 * v10);
      v17 = (4 * v10 - 4 * v15);
      *v16 = v4;
      v7 = v16 + 1;
      memcpy(v17, v8, v9);
      v18 = *(v1 + 656);
      *(v1 + 656) = v17;
      *(v1 + 664) = v7;
      *(v1 + 672) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v5 = v4;
      v7 = v5 + 1;
    }

    *(v1 + 664) = v7;
  }

  TUI::Evaluation::Context::instantiateChildren(v1, *(v3 + 4) | (*(v3 + 12) << 32), 0);
  if (*(v1 + 552) == 1 && TUILocationNotNil(v4))
  {
    *(v1 + 664) -= 4;
  }
}

BOOL TUI::Evaluation::Context::updateComponentGlobalsIfNeeded(TUI::Evaluation::Context *this, TUIComponent *a2)
{
  v3 = &v55;
  v4 = a2;
  v5 = v4;
  v6 = *(this + 96);
  v51 = v4;
  if (v6)
  {
    v7 = *(this + 72);
    v8 = v4;
    [(TUIComponent *)v8 model];
    v9 = *(v55[5] + 2);
    if (*(v7 + 184) > v9 && (v10 = *(v7 + 176) + 12 * v9) != 0)
    {
      v11 = *(v10 + 2);
      v12 = *(v10 + 4) << 16;
    }

    else
    {
      v11 = 0;
      v12 = -65536;
    }

    v13 = v11 | v12;
    if (v56)
    {
      sub_11420(v56);
    }

    LODWORD(v54[0]) = v13;
    v14 = sub_26874((v6 + 8), v54);
    if (!v14)
    {
      v61 = 0;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
      v57 = 0u;
      v56 = 0u;
      LODWORD(v55) = v54[0];
      v14 = sub_106BE8((v6 + 8), &v55);
    }

    v14[4] = (v14[4] + 1);
    *(v6 + 3208 + 16 * *(v6 + 3224)) = v13;
    v15 = mach_absolute_time();
    v16 = *(v6 + 3224);
    *(v6 + 3208 + 16 * v16 + 8) = v15;
    *(v6 + 3224) = v16 + 1;
  }

  [v5 model];
  v17 = v55;
  if (v56)
  {
    sub_11420(v56);
  }

  v18 = v17[5];
  v19 = v18[8];
  v20 = *(v18 + 3);
  memset(v54, 0, sizeof(v54));
  if (v20)
  {
    v52 = 0;
    v21 = 0;
    v22 = 4 * v19;
    do
    {
      v23 = *(this + 72);
      if (*(v23 + 344) > v19 && (v24 = *(v23 + 336), (v25 = (v22 + v24)) != 0))
      {
        v26 = v24 + v22;
        v3 = v3 & 0xFFFFFFFF00000000 | *(v24 + v22) | (*(v24 + v22 + 2) << 16);
        (*(**this + 192))(&v55);
        if (v55)
        {
          v27 = *(v55 + 22);
          v28 = v55[9];
          v29 = v55[10];
          sub_257C4(v54, &v55);
          v52 += v27;
          v21 |= v28 | v29;
        }

        else
        {
          v5 = v5 & 0xFFFFFFFF00000000 | *v25 | (*(v26 + 2) << 16);
          v30 = TUI::Symbol::Tab::string(*(this + 70), v5);
          TUI::Evaluation::Context::reportError(this, 1012, v30);
        }

        if (v56)
        {
          sub_11420(v56);
        }
      }

      else
      {
        TUI::Evaluation::Context::reportError(this, 1012, 0);
      }

      v22 += 4;
      ++v19;
      --v20;
    }

    while (v20);
  }

  else
  {
    v21 = 0;
    v52 = 0;
  }

  [(TUIComponent *)v51 setGlobalsEnvironmentUseMask:v21];
  v31 = *(this + 93);
  if (v21)
  {
    [v31 addObject:v51];
  }

  else
  {
    [v31 removeObject:v51];
  }

  [(TUIComponent *)v51 model];
  v32 = v55[10];
  if (v56)
  {
    sub_11420(v56);
  }

  if (v52 != v32)
  {
    v33 = *(this + 96);
    if (v33)
    {
      v34 = *(this + 72);
      v35 = v51;
      [(TUIComponent *)v35 model];
      v36 = *(v55[5] + 2);
      if (*(v34 + 184) > v36 && (v37 = *(v34 + 176) + 12 * v36) != 0)
      {
        v38 = *(v37 + 2);
        v39 = *(v37 + 4) << 16;
      }

      else
      {
        v38 = 0;
        v39 = -65536;
      }

      v40 = v38 | v39;
      if (v56)
      {
        sub_11420(v56);
      }

      LODWORD(v53) = v40;
      v41 = sub_26874((v33 + 8), &v53);
      if (!v41)
      {
        v61 = 0;
        v60 = 0u;
        v59 = 0u;
        v58 = 0u;
        v57 = 0u;
        v56 = 0u;
        LODWORD(v55) = v53;
        v41 = sub_106BE8((v33 + 8), &v55);
      }

      v41[5] = (v41[5] + 1);
    }

    operator new();
  }

  v42 = *(this + 96);
  if (v42)
  {
    v43 = *(v42 + 3224) - 1;
    *(v42 + 3224) = v43;
    v44 = v42 + 16 * v43;
    v45 = *(v44 + 3208);
    v46 = *(v44 + 3216);
    v47 = mach_absolute_time();
    LODWORD(v53) = v45;
    v48 = sub_26874((v42 + 8), &v53);
    if (!v48)
    {
      v61 = 0;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
      v57 = 0u;
      v56 = 0u;
      LODWORD(v55) = v53;
      v48 = sub_106BE8((v42 + 8), &v55);
    }

    v49 = v47 - v46;
    if (v46 >= v47)
    {
      v49 = v46 - v47;
    }

    v48[13] = (v48[13] + v49);
  }

  v55 = v54;
  sub_286D0(&v55);

  return v52 != v32;
}

void sub_104FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  a16 = &a25;
  sub_286D0(&a16);

  _Unwind_Resume(a1);
}

void TUI::Evaluation::Context::instantiateComponentRender(id *a1, unsigned int a2, unsigned int a3)
{
  v6 = a1[72];
  v7 = a3;
  if (v6[27] <= a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6[26] + 28 * a3;
  }

  v9 = *(*a1 + 2);
  if (!v9 || ((v10 = a2, IsNil = TUINameReferenceIsNil(a2), !v8) ? (v12 = 1) : (v12 = IsNil), v12 == 1))
  {
    TUI::Evaluation::Context::reportError(a1, 1005, 0);
    goto LABEL_10;
  }

  [v9 model];
  shared_weak_owners = v80[1].__shared_weak_owners_;
  if (v81)
  {
    sub_11420(v81);
  }

  v14 = a1[72];
  if (v14[19] > v10 && (v15 = v14[18] + 12 * v10) != 0)
  {
    v16 = *(v15 + 4);
    v17 = *(v15 + 2) | (v16 << 16);
    v18 = *(v15 + 8) | (*(v15 + 6) << 32);
    if (v16 != 0xFFFF)
    {
      v19 = TUINameNil;
      if (*(v15 + 2) != 0xFFFF)
      {
        v19 = *(v15 + 2) | (v16 << 16);
      }

      goto LABEL_20;
    }
  }

  else
  {
    v17 = -65536;
    v18 = 0xFFFFFFFFLL;
  }

  v19 = TUINameNil;
LABEL_20:
  v20 = TUI::Package::Buffer::renderMethodForComponent(v14, shared_weak_owners, v19);
  if (v20)
  {
    v21 = *(v8 + 20);
    v22 = *(v8 + 4);
    v80 = 0;
    v81 = 0;
    v82 = 0;
    if (!v22)
    {
      goto LABEL_31;
    }

    v23 = v21;
    do
    {
      v79 = v23;
      v24 = a1[72];
      if (v24[27] > v23)
      {
        v25 = v24[26] + 28 * v23;
        if (v25)
        {
          v3 = *(v25 + 8);
          if (TUIConditionIsNil(*(v25 + 8)) || (TUI::Evaluation::Context::resolve(a1, v3, &v76), v3 = TUI::Evaluation::ResolvedValue::BOOLValue(&v76, a1), v77, v3))
          {
            sub_101404(&v80, &v79);
          }
        }
      }

      ++v23;
      --v22;
    }

    while (v22);
    if (v80 == v81)
    {
LABEL_31:
      v64 = 0;
      v27 = 0;
      v63 = 0;
    }

    else
    {
      v3 = *a1;
      v26 = TUI::Evaluation::Context::closureForElement(a1, v8);
      (*(*v3 + 112))(&v76, v3, v26);
      v64 = v76;
      v27 = v78;
      v63 = v77;
    }

    v70 = v27;
    v28 = a1[72];
    v29 = *v20;
    if (v28[23] > v29 && (v30 = v28[22] + 12 * v29) != 0)
    {
      v65 = *(v30 + 8);
      v66 = *(v30 + 6) << 32;
    }

    else
    {
      v65 = 0xFFFFFFFFLL;
      v66 = 0;
    }

    v69 = v18;
    (*(**a1 + 72))(*a1, 63);
    v67 = v20;
    v68 = v7;
    v31 = v80;
    for (i = v81; v31 != i; v31 = (v31 + 4))
    {
      v33 = LODWORD(v31->__vftable);
      v34 = a1[72];
      if (v34[27] > v33)
      {
        v35 = v34[26] + 28 * v33;
        if (v35)
        {
          if (TUI::Package::Buffer::findAttribute(v34, 0x95u, *(v35 + 16) | (*(v35 + 2) << 32)) == 65685)
          {
            v37 = a1[72];
            if (v37[29] > v36 && (v38 = (v37[28] + 12 * v36)) != 0)
            {
              v39 = v38 + 1;
            }

            else
            {
              v39 = &TUIConditionNil;
              v38 = &TUIValueNil;
            }

            v40 = *v38;
            if (!TUIConditionNotNil(*v39))
            {
              v42 = TUI::Instruction::Decoder::elementName(v40, a1, v41);
              v7 = v7 & 0xFFFFFFFF00000000 | v42;
              if (TUINameIsValid(v7))
              {
                v73 = v64;
                v74 = v63;
                v75 = v70;
                if (v70)
                {
                  atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v76 = 0;
                LODWORD(v77) = v33;
                v3 = v3 & 0xFFFFFFFF00000000 | v42;
                TUI::Evaluation::Context::pushNamedElement(a1, v3, &v73, &v76);

                if (v70)
                {
                  sub_11420(v70);
                }
              }
            }
          }
        }
      }
    }

    TUI::Evaluation::Context::evaluateParams(a1, v69);
    v43 = *a1;
    TUI::Evaluation::Variables::Capture::emptyClosedComponentPassthrough(&v71);
    (*(*v43 + 160))(v43, &v71);
    if (v72)
    {
      sub_11420(v72);
    }

    TUI::Evaluation::Context::evaluateParams(a1, v65 | v66);
    v44 = TUI::Evaluation::Context::identifierWithNode(a1, v68);
    v45 = a1[76];
    v46 = v45;
    objc_storeStrong(a1 + 76, v44);
    v47 = v67[2];
    if (*(a1 + 552) == 1 && TUILocationNotNil(v67[2]))
    {
      v48 = a1[83];
      v49 = a1[84];
      if (v48 >= v49)
      {
        v52 = a1[82];
        v53 = v48 - v52;
        v54 = (v48 - v52) >> 2;
        v55 = v54 + 1;
        if ((v54 + 1) >> 62)
        {
          sub_4050();
        }

        v56 = v49 - v52;
        if (v56 >> 1 > v55)
        {
          v55 = v56 >> 1;
        }

        v57 = v56 >= 0x7FFFFFFFFFFFFFFCLL;
        v58 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v57)
        {
          v58 = v55;
        }

        if (v58)
        {
          sub_106BA0((a1 + 82), v58);
        }

        v59 = v54;
        v60 = (4 * v54);
        v61 = &v60[-v59];
        *v60 = v47;
        v50 = v60 + 1;
        memcpy(v61, v52, v53);
        v62 = a1[82];
        a1[82] = v61;
        a1[83] = v50;
        a1[84] = 0;
        if (v62)
        {
          operator delete(v62);
        }
      }

      else
      {
        *v48 = v47;
        v50 = v48 + 1;
      }

      a1[83] = v50;
    }

    TUI::Evaluation::Context::instantiateChildren(a1, v67[1] | (*(v67 + 6) << 32), 0);
    if (*(a1 + 552) == 1 && TUILocationNotNil(v47))
    {
      a1[83] = a1[83] - 4;
    }

    objc_storeStrong(a1 + 76, v45);
    (*(**a1 + 168))();
    (*(**a1 + 80))();

    if (v70)
    {
      sub_11420(v70);
    }

    if (v80)
    {
      v81 = v80;
      operator delete(v80);
    }
  }

  else
  {
    v51 = TUI::Symbol::Tab::string(a1[70], v17);
    TUI::Evaluation::Context::reportError(a1, 1014, v51);
  }

LABEL_10:
}

void TUI::Evaluation::Context::defineComponentBinding(uint64_t a1, Entry a2, void *a3)
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = v5;
    v7 = [v6 instanceForObserver:*(a1 + 704)];
    if (v7)
    {
      [*(a1 + 712) addObject:v7];
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = -65536;
  v9 = a2;
  TUI::Evaluation::Enumerator::State::State(v10, v8, v9);
  objc_storeStrong(&v11, v7);
  (**(*a1 + 8))(*a1 + 8, *&a2, v10);
  TUI::Evaluation::Enumerator::State::~State(v10);
}

TUIMutableDynamicValue *TUI::Evaluation::Context::componentViewStateWithName(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 704))
  {
    v4 = *(a1 + 720);
    if (!v4)
    {
      v5 = [[_TUIViewStateMapping alloc] initWithParent:0];
      v6 = *(a1 + 720);
      *(a1 + 720) = v5;

      v4 = *(a1 + 720);
    }

    v7 = [v4 viewStateForBinding:a2];
    if (!v7)
    {
      v7 = [(TUIDynamicValue *)[TUIMutableDynamicValue alloc] initWithValue:0];
      [*(a1 + 720) setViewState:v7 forBinding:a2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id TUI::Evaluation::Context::environmentChildContainersForContainer(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 728) objectForKey:a2];
  v3 = [v2 objectEnumerator];

  return v3;
}

unint64_t TUI::Evaluation::Context::childrenOfNode(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 576);
  if (*(v2 + 216) > a2 && (v3 = *(v2 + 208) + 28 * a2) != 0)
  {
    return *(v3 + 20) | (*(v3 + 4) << 32);
  }

  else
  {
    return TUIElementNodesNil;
  }
}

uint64_t TUI::Evaluation::Context::evaluateCconditionForNode(const TUI::Evaluation::Context *a1, unsigned int a2)
{
  v2 = *(a1 + 72);
  if (*(v2 + 216) <= a2)
  {
    return 1;
  }

  v3 = *(v2 + 208) + 28 * a2;
  if (!v3)
  {
    return 1;
  }

  TUI::Evaluation::Context::resolve(a1, *(v3 + 8), v7);
  v5 = TUI::Evaluation::ResolvedValue::BOOLValue(v7, a1);

  return v5;
}

uint64_t TUI::Evaluation::Context::evaluateAttributeForNode(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a1 + 576);
  if (v5[27] <= a3)
  {
    return 0;
  }

  v6 = v5[26] + 28 * a3;
  if (!v6)
  {
    return 0;
  }

  Attribute = TUI::Package::Buffer::findAttribute(v5, a2, *(v6 + 16) | (*(v6 + 2) << 32));
  if (Attribute == 0xFFFF)
  {
    return 0;
  }

  v10 = HIWORD(Attribute);
  if (!HIWORD(Attribute))
  {
    return 0;
  }

  v11 = v9;
  for (i = 12 * v9; ; i += 12)
  {
    v13 = *(a1 + 576);
    if (*(v13 + 232) <= v11)
    {
      v15 = &TUIConditionNil;
      v14 = &TUIValueNil;
    }

    else
    {
      v14 = (i + *(v13 + 224));
      v15 = v14 + 1;
      if (!v14)
      {
        v15 = &TUIConditionNil;
        v14 = &TUIValueNil;
      }
    }

    v16 = *v14;
    TUI::Evaluation::Context::resolve(a1, *v15, &v20);
    v17 = TUI::Evaluation::ResolvedValue::BOOLValue(&v20, a1);

    if (v17)
    {
      break;
    }

    ++v11;
    if (!--v10)
    {
      return 0;
    }
  }

  TUI::Instruction::Evaluation::evaluate(&v20, *(a1 + 8), v16);
  *a4 = LODWORD(v20);
  objc_storeStrong((a4 + 8), obj);
  v19 = obj;
  *(a4 + 16) = v22;

  return 1;
}

id TUI::Evaluation::Context::snapForAttribute(uint64_t a1, unsigned int a2)
{
  v10 = a2;
  if (a2 == 0xFFFF)
  {
    goto LABEL_7;
  }

  if (a2 >= 0x100)
  {
    sub_8BEBC("bitset test argument out of range");
  }

  if (((*(a1 + ((a2 >> 3) & 0x1FF8) + 280) >> a2) & 1) == 0)
  {
LABEL_7:
    v5 = 0;
  }

  else
  {
    v3 = sub_11F88((a1 + 352), &v10);
    v4 = TUI::Evaluation::ResolvedValue::objectValue((v3 + 3), a1);
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [NSString stringWithFormat:@"expected TUISnap, got %@", v7];
      TUI::Evaluation::Context::reportError(a1, 1000, v8);

      v5 = 0;
    }

    else
    {
      v5 = v4;
    }
  }

  return v5;
}

void TUI::Evaluation::Context::evaluateStates(void *a1, void *a2, void *a3)
{
  v20 = a2;
  v25 = a3;
  if (v25)
  {
    v23 = a1[76];
    v24 = v23;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v20;
    v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v5)
    {
      v6 = (a1 + 76);
      v22 = *v31;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v30 + 1) + 8 * i);
          if (*(a1 + 552) == 1 && ([a1[86] containsObject:*(*(&v30 + 1) + 8 * i)] & 1) == 0)
          {
            v9 = [NSString stringWithFormat:@"'%@' not a valid state", v8];
            TUI::Evaluation::Context::reportError(a1, 1034, v9);
          }

          (*(**a1 + 72))(*a1, 63);
          v10 = a1[70];
          v11 = v8;
          v12 = [v8 UTF8String];
          v13 = strlen(v12);
          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_6768();
          }

          v14 = v13;
          if (v13 >= 0x17)
          {
            operator new();
          }

          v29 = v13;
          if (v13)
          {
            memmove(&__dst, v12, v13);
          }

          *(&__dst + v14) = 0;
          v15 = TUI::Symbol::Tab::lookup(v10, &__dst);
          if (v29 < 0)
          {
            operator delete(__dst);
          }

          v16 = *(a1[70] + 40);
          if ((*(a1[70] + 48) - v16) < 0xAB)
          {
            v17 = 4294901760;
          }

          else
          {
            v17 = *(v16 + 170) << 16;
          }

          LODWORD(__dst) = 6;
          v27 = 0;
          v28 = v15;
          (*(*(*a1 + 8) + 8))(*a1 + 8, v17, &__dst);

          v18 = [v24 tui_identifierByAppendingString:v8];
          v19 = *v6;
          *v6 = v18;

          v25[2](v25, v8);
          objc_storeStrong(a1 + 76, v23);
          (*(**a1 + 80))();
        }

        v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v5);
    }
  }
}

id TUI::Evaluation::Context::debugDumpEnvironmentContainerStructure(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  sub_10622C(a1, v3, 0, v4);

  return v4;
}

void sub_10622C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v29 = a2;
  v7 = a4;
  v8 = [&stru_264550 stringByPaddingToLength:2 * a3 withString:@" " startingAtIndex:0];
  [v7 appendString:v8];

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v7 appendFormat:@"<%@ %p", v10, v29];

  v11 = objc_opt_class();
  v28 = TUIDynamicCast(v11, v29);
  if (v28)
  {
    v12 = *(a1 + 560);
    v13 = *(a1 + 576);
    [v28 model];
    v14 = TUI::Package::Buffer::nameForComponent(v13, *(v34 + 40));
    v15 = TUI::Symbol::Tab::string(v12, v14);
    [v7 appendFormat:@" %@", v15];

    if (v35)
    {
      sub_11420(v35);
    }
  }

  v16 = [v29 identifier];
  v17 = [v16 tui_identifierToString];
  v18 = sub_106E5C([v29 directEnvironmentUseMask]);
  [v7 appendFormat:@" id=%@ useMask=%@", v17, v18];

  if (objc_opt_respondsToSelector())
  {
    v19 = v29;
    v20 = sub_106E5C([v19 globalsEnvironmentUseMask]);
    [v7 appendFormat:@" globalsUseMask=%@", v20];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = TUI::Evaluation::Context::environmentChildContainersForContainer(a1, v29);
  v22 = [v21 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v22)
  {
    v23 = 0;
    v24 = *v31;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v30 + 1) + 8 * i);
        if ((v23 & 1) == 0)
        {
          [v7 appendString:@" {\n"];
        }

        sub_10622C(a1, v26, a3 + 1, v7);
        v23 = 1;
      }

      v22 = [v21 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v22);

    v27 = [&stru_264550 stringByPaddingToLength:2 * a3 withString:@" " startingAtIndex:0];
    [v7 appendString:v27];

    [v7 appendString:@"}"];
  }

  else
  {
  }

  [v7 appendString:@"\n"];
}

void TUI::Evaluation::Context::defineStruct(TUI::Evaluation::Context *this, unsigned int a2, TUIStruct *a3)
{
  v5 = a3;
  v6 = *this;
  v10 = 18;
  v11 = v5;
  v7 = a2;
  v8 = *(*(v6 + 8) + 8);
  v9 = v5;
  v8(v6 + 8, v7, &v10);
}

void *sub_1066EC(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void sub_1067A0(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void sub_106850(uint64_t a1, uint64_t *a2)
{
  sub_1068F4(a1);
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

void sub_1068F4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_34B10(a1, *(a1 + 16));
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

uint64_t sub_106950(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  objc_initWeak(a1, a2);
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = a6;
  return a1;
}

void sub_1069C0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_106A40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_106A54(va);
  _Unwind_Resume(a1);
}

id **sub_106A54(id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_106B5C(v2);
    operator delete();
  }

  return a1;
}

void sub_106AA0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id *sub_106AD8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_106B5C(result);

    operator delete();
  }

  return result;
}

uint64_t sub_106B1C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_106BA0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_3AAC();
}

uint64_t **sub_106BE8(void *a1, unsigned __int16 *a2)
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

id sub_106E5C(char a1)
{
  v2 = objc_opt_new();
  objc_msgSend(v2, "appendString:", @"(");
  if (a1)
  {
    [v2 appendString:@"size"];
    if ((a1 & 4) == 0)
    {
LABEL_10:
      if ((a1 & 8) == 0)
      {
LABEL_13:
        if ((a1 & 0x10) == 0)
        {
LABEL_16:
          if ((a1 & 0x20) == 0)
          {
            goto LABEL_19;
          }

          [v2 appendString:{@", "}];
          goto LABEL_18;
        }

        [v2 appendString:{@", "}];
LABEL_15:
        [v2 appendString:@"style"];
        goto LABEL_16;
      }

      [v2 appendString:{@", "}];
LABEL_12:
      [v2 appendString:@"configuration"];
      goto LABEL_13;
    }

    [v2 appendString:{@", "}];
LABEL_9:
    [v2 appendString:@"sizeClass"];
    goto LABEL_10;
  }

  if ((a1 & 4) != 0)
  {
    goto LABEL_9;
  }

  if ((a1 & 8) != 0)
  {
    goto LABEL_12;
  }

  if ((a1 & 0x10) != 0)
  {
    goto LABEL_15;
  }

  if ((a1 & 0x20) != 0)
  {
LABEL_18:
    [v2 appendString:@"other"];
  }

LABEL_19:
  [v2 appendString:@""]);

  return v2;
}

uint64_t **sub_106F88(void *a1, unsigned __int16 *a2)
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

void sub_1071EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_11F3C(va);
  _Unwind_Resume(a1);
}

void sub_107200(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_107280(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_107294(va);
  _Unwind_Resume(a1);
}

id **sub_107294(id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    TUI::Evaluation::Context::Snapshot::~Snapshot(v2);
    operator delete();
  }

  return a1;
}

void sub_1072E0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id *sub_107318(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    TUI::Evaluation::Context::Snapshot::~Snapshot(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10735C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_10739C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1074C8(v6, v10);
    }

    sub_4050();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_1074C8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_106BA0(a1, a2);
  }

  sub_4050();
}

uint64_t sub_107504(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1074C8(result, a4);
  }

  return result;
}

void sub_107564(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_107580(void *a1, unsigned __int16 *a2)
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

void sub_10782C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B830(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_107848(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_107880(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t sub_1078B0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1078F0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *result = a4;
  *(result + 4) = a2;
  *(result + 12) = 2048;
  *(result + 14) = a3;
  return result;
}

void sub_108858(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if ([v6 length])
  {
    [v6 appendString:@"\n"];
  }

  if (a3)
  {
    v7 = 1;
    do
    {
      [v6 appendString:@"   | "];
      ++v7;
    }

    while (v7 <= a3);
  }

  if (v5)
  {
    v8 = [v5 description];
    v9 = v8;
    if (!v8)
    {
      v9 = [NSString stringWithFormat:@"-desc was nil!-"];
    }

    [v6 appendString:v9];
    if (!v8)
    {
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v10 = [v5 children];
  v11 = [v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v11)
  {
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v10);
        }

        sub_108858(*(*(&v14 + 1) + 8 * i), v6, (a3 + 1));
      }

      v11 = [v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

void sub_10D048(uint64_t a1, _OWORD *a2)
{
  v4 = [*(a1 + 32) shouldUseSubviewRenderModelWithContext:*(a1 + 40)];
  if (v4)
  {
    v5 = (a1 + 48);
    v6 = *(a1 + 48);
    v7 = a2[1];
    *&v33.a = *a2;
    *&v33.c = v7;
    *&v33.tx = a2[2];
    [*(a1 + 32) computedNaturalSize];
    CGAffineTransformMakeTranslation(&v33, v8 * 0.5, v9 * 0.5);
    v10 = objc_opt_new();

    v11 = v10;
  }

  else
  {
    v12 = [*(*(a1 + 32) + 24) submodel];
    v5 = (a1 + 48);
    v11 = *(a1 + 48);
    v13 = a2[1];
    *&v33.a = *a2;
    *&v33.c = v13;
    *&v33.tx = a2[2];
    if (v12)
    {
      goto LABEL_6;
    }
  }

  v14 = [*(a1 + 32) newRenderModelCompatibleWithKind:*(a1 + 56) context:*(a1 + 40)];
  if (!v14)
  {
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  v12 = v14;
LABEL_6:
  v15 = [*(a1 + 40) convertRenderModel:v12 toKind:*(a1 + 56)];

  v32 = v33;
  v16 = [*(a1 + 32) _transformedRenderModel:v15 transform:&v32 context:*(a1 + 40) allowCache:v4 ^ 1];
  v17 = [*(a1 + 40) currentLiveTransform];
  [v16 setLiveTransform:v17];

  [v11 addObject:v16];
  if (!v15)
  {
    goto LABEL_10;
  }

  v18 = v15;
  if (![*(a1 + 32) shouldAppendChildRenderModels])
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v19 = *(a1 + 56);
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v32 = v33;
  [v20 appendChildRenderModelCompatibleWithKind:v19 context:v21 transform:&v32 toModels:v11];
  v15 = v18;
  if (v4)
  {
LABEL_12:
    v22 = [*(a1 + 40) renderModelForLayout:*(a1 + 32) submodels:v11 kind:6];
    v23 = [*(a1 + 32) box];
    v24 = [v23 identifier];
    v25 = [TUIContainerView renderModelWithSubviewsModel:v22 style:0 identifier:v24];

    [*(a1 + 32) renderModelSizeWithContext:*(a1 + 40)];
    [v25 setSize:?];
    v26 = a2[1];
    *&v32.a = *a2;
    *&v32.c = v26;
    *&v32.tx = a2[2];
    v27 = [*(a1 + 32) _transformedRenderModel:v25 transform:&v32 context:*(a1 + 40) allowCache:1];
    v28 = [*(a1 + 40) currentLiveTransform];
    [v27 setLiveTransform:v28];

    [*v5 addObject:v27];
  }

LABEL_13:
  if (*(*(a1 + 32) + 24))
  {
    v29 = [v15 animationGroups];

    if (v29)
    {
      v30 = [v15 animationGroups];
      v31 = [v30 generateAllGroupRenderModelsFromSource:*(*(a1 + 32) + 24)];
      [*(*(a1 + 32) + 24) setAnimationRenderModels:v31];
    }
  }
}

uint64_t sub_10D404(uint64_t a1)
{
  [*(a1 + 32) computedTransformedSize];
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeTranslation(&v10, v2 * 0.5, v3 * 0.5);
  v4 = *(a1 + 40);
  v9 = v10;
  return (*(v4 + 16))(v4, &v9, 0, v5, v6, v7);
}

id TUILayoutDump(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 componentsSeparatedByString:{@", "}];
  v5 = [v4 containsObject:@"ptr"];
  v6 = [v4 containsObject:@"box"];
  v7 = [v4 containsObject:@"id"];
  v8 = [v4 containsObject:@"content"];
  v9 = objc_opt_new();
  v10 = v9;
  v11 = 2;
  if (!v6)
  {
    v11 = 0;
  }

  v12 = v11 | v5;
  v13 = 4;
  if (!v7)
  {
    v13 = 0;
  }

  v14 = 8;
  if (!v8)
  {
    v14 = 0;
  }

  sub_10F314(v9, v3, v12 | v13 | v14, 0);

  return v10;
}

void sub_10F314(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [&stru_264550 stringByPaddingToLength:2 * a4 withString:@" " startingAtIndex:0];
  [v7 appendString:v9];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v8 computedFrame];
  v12 = NSStringFromRect(v35);
  [v7 appendFormat:@"%@ %@", v11, v12];

  if (a3)
  {
    [v7 appendFormat:@" %p", v8];
  }

  if ((a3 & 4) != 0)
  {
    v13 = [v8 box];
    v14 = [v13 identifier];
    v15 = [v14 tui_identifierToString];
    [v7 appendFormat:@" id=%@", v15];
  }

  if ((a3 & 2) != 0)
  {
    v16 = [v8 box];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v8 box];
    [v7 appendFormat:@" box=<%@ %p/>", v18, v19];
  }

  if ((a3 & 8) != 0)
  {
    v20 = [v8 debugContentDescription];
    v21 = v20;
    if (v20)
    {
      [v7 appendFormat:@" %@", v20];
    }
  }

  v22 = [v8 children];
  v23 = [v22 count];

  if (v23)
  {
    [v7 appendString:@"{\n"];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v24 = [v8 children];
    v25 = [v24 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v25)
    {
      v26 = *v31;
      do
      {
        v27 = 0;
        do
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(v24);
          }

          sub_10F314(v7, *(*(&v30 + 1) + 8 * v27), a3, a4 + 1);
          v27 = v27 + 1;
        }

        while (v25 != v27);
        v25 = [v24 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v25);
    }

    v28 = [&stru_264550 stringByPaddingToLength:2 * a4 withString:@" " startingAtIndex:0];
    [v7 appendString:v28];

    v29 = @"}\n";
  }

  else
  {
    v29 = @"\n";
  }

  [v7 appendString:v29];
}

void sub_10F6B0(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = [v1 URLForResource:@"TUILayout" withExtension:@"ppkg"];
  v6 = 0;
  v3 = [NSData dataWithContentsOfURL:v2 options:8 error:&v6];
  v4 = v6;
  v5 = qword_2E6518;
  qword_2E6518 = v3;
}

void sub_11113C(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v2 = *&a2;
  v3 = [*(a1 + 32) posterFrameImageView];
  [v3 setAlpha:v2];
}

void sub_111194(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v2 = *&a2;
  v3 = [*(a1 + 32) posterFrameImageView];
  [v3 setAlpha:v2];
}

void sub_111360(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v2 = *&a2;
  v3 = [*(a1 + 32) playButton];
  [v3 setAlpha:v2];
}

void sub_1113B8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) playButton];
  [v3 setEnabled:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) playButton];
  [v5 setUserInteractionEnabled:v4];
}

void sub_111438(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v3 = *&a2;
  v4 = [*(a1 + 32) playButton];
  [v4 setAlpha:v3];

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) playButton];
  [v6 setEnabled:v5];

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) playButton];
  [v8 setUserInteractionEnabled:v7];
}

void sub_1123B4(uint64_t a1)
{
  v5 = [*(a1 + 32) imageContentWithOptions:1];
  v2 = [v5 image];
  v3 = [v2 newImage];

  if (v3)
  {
    v4 = [*(a1 + 40) posterFrameImageView];
    [v4 setImage:v3];
  }
}

void sub_112D3C(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) == 0)
  {
    *(*(a1 + 32) + 32) = 1;
    v3 = [*(a1 + 32) feedControllerHost];
    v4 = [v3 videoPlayerManager];
    v5 = [*(*(a1 + 32) + 24) videoId];
    [v4 setMuteStateForPlayerWithVideoId:v5 muted:0 requestingHost:*(a1 + 32) isTriggerInitiated:1];

    [*(a1 + 32) _configureVideoViewController];
    [*(a1 + 32) _updateStateBasedSubviewsAnimated:1];
    [*(a1 + 32) _updateStateBasedTapGestureRecognizers];
    v6 = *(a1 + 32);
    [v6 currentTime];
    v8 = v7;
    v9 = [*(*(a1 + 32) + 24) videoId];
    [v6 _reportEvent:5 mediaTimePlayed:v9 videoId:v8];

    v10 = [*(a1 + 32) videoViewController];
    [v10 flashPlaybackControlsWithDuration:3.0];
  }

  *(*(a1 + 32) + 33) = 0;
}

void sub_112EFC(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) == 0)
  {
    *(*(a1 + 32) + 32) = 0;
    v3 = [*(a1 + 32) feedControllerHost];
    v4 = [v3 videoPlayerManager];
    v5 = [*(*(a1 + 32) + 24) videoId];
    [v4 setMuteStateForPlayerWithVideoId:v5 muted:1 requestingHost:*(a1 + 32) isTriggerInitiated:1];

    [*(a1 + 32) _configureVideoViewController];
    [*(a1 + 32) _updateStateBasedSubviewsAnimated:1];
    [*(a1 + 32) _updateStateBasedTapGestureRecognizers];
    v6 = *(a1 + 32);
    [v6 currentTime];
    v8 = v7;
    v9 = [*(*(a1 + 32) + 24) videoId];
    [v6 _reportEvent:6 mediaTimePlayed:v9 videoId:v8];
  }

  *(*(a1 + 32) + 33) = 0;
}

void sub_1130C0(uint64_t a1)
{
  v1 = [*(a1 + 32) videoViewController];
  [v1 flashPlaybackControlsWithDuration:100.0];
}

void sub_113D40(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_1154F0(a1, a2 - v2);
  }
}

void sub_1147AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_114F10(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id TUIIdentifierIsEqualToIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v10 = &dword_0 + 1;
  }

  else if ((v3 == 0) == (v4 != 0))
  {
    v10 = 0;
  }

  else
  {
    v6 = objc_opt_class();
    v7 = TUIDynamicCast(v6, v3);
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = TUIDynamicCast(v8, v5);
      if (v9)
      {
        v10 = [v7 isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v11 = objc_opt_class();
      v9 = TUIDynamicCast(v11, v3);
      if (v9)
      {
        v12 = objc_opt_class();
        v13 = TUIDynamicCast(v12, v5);
        if (v13)
        {
          v10 = [v9 isEqual:v13];
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v13 = [v3 tui_identifierToString];
        v14 = [v5 tui_identifierToString];
        v10 = [v13 isEqualToString:v14];
      }
    }
  }

  return v10;
}

id TUIIdentifierHash(void *a1)
{
  v1 = [a1 tui_identifierToString];
  v2 = [v1 hash];

  return v2;
}

void sub_1154F0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_4050();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_106BA0(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

id sub_115814(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 lastObject];
  v5 = [v4 count];

  if (v5 == *(a1 + 32))
  {
    v6 = &__NSArray0__struct;
  }

  else
  {
    v7 = [v3 lastObject];
    v9 = v7;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v6;
}

void sub_115F30(id a1)
{
  v1 = objc_alloc_init(_TUIRunLoopWaiter);
  v2 = qword_2E6528;
  qword_2E6528 = v1;
}

void sub_116120(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v2 = [*(*(a1 + 32) + 40) copy];
  [*(*(a1 + 32) + 40) removeAllObjects];
  *(*(a1 + 32) + 8) &= ~1u;
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v15 + 1) + 8 * i) + 16))();
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v8 = TUISignpostFeedViewController();
  v9 = os_signpost_id_generate(v8);

  v10 = TUISignpostFeedViewController();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RunLoopWaitForReadyAssertion", "", v14, 2u);
  }

  dispatch_group_wait(*(*(a1 + 32) + 32), 0xFFFFFFFFFFFFFFFFLL);
  v12 = TUISignpostFeedViewController();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v13, OS_SIGNPOST_INTERVAL_END, v9, "RunLoopWaitForReadyAssertion", "", v14, 2u);
  }
}

void sub_116494(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 24));
  --*(*(a1 + 32) + 16);
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  v2 = *(*(a1 + 32) + 32);

  dispatch_group_leave(v2);
}

void sub_1174E4(id a1, TUIRenderModelSection *a2, double a3, id a4)
{
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(TUIRenderModelSection *)a2 impressions];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 data];
        v14 = [v13 identifier];
        v6[2](v6, v12, v14, a3);
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

void sub_11763C(id a1, TUIRenderModelSection *a2, double a3, id a4)
{
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(TUIRenderModelSection *)a2 linkEntities];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [v12 identifier];
        v6[2](v6, v12, v13, a3);
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

void sub_118344(uint64_t a1)
{
  v1 = [*(a1 + 32) viewIfLoaded];
  [v1 setNeedsLayout];
}

void sub_118E84(uint64_t a1)
{
  --*(*(a1 + 32) + 48);
  v1 = [*(*(a1 + 32) + 248) imageResourceCache];
  [v1 deferLoadsEnd];
}

void sub_119548(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1195E8;
  v3[3] = &unk_25E7C0;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  TUIDispatchAsyncViaRunLoop(v3);
}

id sub_1195E8(void *a1)
{
  v2 = [*(a1[4] + 472) transactionCoordinator];
  [v2 finalizeSyncTransaction:a1[5]];

  v3 = a1[6];

  return [v3 invalidate];
}

void sub_11987C(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_11991C;
  v3[3] = &unk_25E7C0;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  TUIDispatchAsyncViaRunLoop(v3);
}

id sub_11991C(void *a1)
{
  v2 = [*(a1[4] + 472) transactionCoordinator];
  [v2 finalizeSyncTransaction:a1[5]];

  v3 = a1[6];

  return [v3 invalidate];
}

void sub_119B18(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[312] & 6) != 0)
  {
    v3 = [v2 view];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [*(*(a1 + 32) + 464) bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = *(a1 + 32);
    v21 = *(v20 + 312);
    v22 = 1.0;
    v29 = v5;
    if ((v21 & 2) != 0)
    {
      v32.origin.x = v5;
      v32.origin.y = v7;
      v32.size.width = v9;
      v32.size.height = v11;
      Width = CGRectGetWidth(v32);
      v33.origin.x = v13;
      v33.origin.y = v15;
      v33.size.width = v17;
      v33.size.height = v19;
      v25 = CGRectGetWidth(v33);
      v22 = 1.0;
      v20 = *(a1 + 32);
      v23 = Width / v25;
      if ((*(v20 + 312) & 4) == 0)
      {
LABEL_7:
        CGAffineTransformMakeScale(&v31, v23, v22);
        v28 = [*(v20 + 464) layer];
        v30 = v31;
        [v28 setAffineTransform:&v30];

        return;
      }
    }

    else
    {
      v23 = 1.0;
      if ((v21 & 4) == 0)
      {
        goto LABEL_7;
      }
    }

    v34.origin.x = v29;
    v34.origin.y = v7;
    v34.size.width = v9;
    v34.size.height = v11;
    Height = CGRectGetHeight(v34);
    v35.origin.x = v13;
    v35.origin.y = v15;
    v35.size.width = v17;
    v35.size.height = v19;
    v27 = CGRectGetHeight(v35);
    v20 = *(a1 + 32);
    v22 = Height / v27;
    goto LABEL_7;
  }
}

void sub_119C90(uint64_t a1)
{
  --*(*(a1 + 32) + 48);
  v1 = [*(*(a1 + 32) + 248) imageResourceCache];
  [v1 deferLoadsEnd];
}

uint64_t sub_11A8DC(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_11A930(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_11A9B0;
  v2[3] = &unk_25DCA0;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  TUIDispatchAsyncViaRunLoop(v2);
}

void sub_11A9B0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 472) transactionCoordinator];
  [v2 finalizeSyncTransaction:*(a1 + 40)];
}

void sub_11CD10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 352);
  v4 = *(a1 + 40);
  v5 = *(v2 + 352);
  *(v2 + 352) = v4;
  v6 = v3;

  [*(a1 + 32) _updateNavigationBarItems];
  [*(a1 + 32) _updateNavigationItemTriggerObservanceForCurrentRenderModel:*(a1 + 40) previous:v6];
}

void sub_11DE38(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 reset];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_11DF24;
  v10[3] = &unk_261F08;
  v11 = *(a1 + 32);
  [v6 enumerateObjectsUsingBlock:v10];

  v8 = [*(a1 + 32) imageResources];
  v9 = [v8 copy];
  [*(a1 + 40) setObject:v9 forKeyedSubscript:v7];
}

void sub_11DF24(uint64_t a1, void *a2)
{
  v3 = [a2 renderModel];
  v4 = *(a1 + 32);
  v5 = *&CGAffineTransformIdentity.c;
  v6[0] = *&CGAffineTransformIdentity.a;
  v6[1] = v5;
  v6[2] = *&CGAffineTransformIdentity.tx;
  [v3 appendResourcesToCollector:v4 transform:v6];
}

void sub_11E298(void *a1)
{
  [*(a1[4] + 464) visibleBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1[4] + 464) currentViewState];
  v11 = [TUIResourceCollector createImageResourceCollectorForNotLoadedInVisibleBounds:v10 viewState:v3, v5, v7, v9];

  v12 = [*(a1[4] + 464) renderModel];
  v13 = *&CGAffineTransformIdentity.c;
  v25 = *&CGAffineTransformIdentity.a;
  v26 = v13;
  v27 = *&CGAffineTransformIdentity.tx;
  [v12 appendResourcesToCollector:v11 transform:&v25];

  *&v25 = 0;
  *(&v25 + 1) = &v25;
  *&v26 = 0x3032000000;
  *(&v26 + 1) = sub_11E4C0;
  *&v27 = sub_11E4D0;
  v14 = [_TUIImageResourceReadyWaiter alloc];
  v15 = [v11 imageResources];
  v16 = a1[5];
  v17 = [*(a1[4] + 416) userInteractiveCallbackQueue];
  *(&v27 + 1) = [(_TUIImageResourceReadyWaiter *)v14 initWithImageResources:v15 assertion:v16 assertionQueue:v17];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_11E4D8;
  v21[3] = &unk_261F58;
  v18 = a1[7];
  v20 = a1[5];
  v19 = a1[6];
  v23 = &v25;
  v24 = v18;
  v22 = v19;
  [v20 onInvalidate:v21];

  _Block_object_dispose(&v25, 8);
}

void sub_11E4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_11E4C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_11E4D8(void *a1)
{
  v2 = TUISignpostFeedViewController();
  v3 = v2;
  v4 = a1[6];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v3, OS_SIGNPOST_INTERVAL_END, v4, "waitForVisibleImageResources", "", v8, 2u);
  }

  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  result = a1[4];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_11E79C(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id sub_11E7D0(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_11E840;
  v2[3] = &unk_2607A8;
  v2[4] = *(a1 + 32);
  return TUIDispatchAsyncViaRunLoop(v2);
}

void sub_11E840(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void sub_11E8AC(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void sub_11E918(uint64_t a1)
{
  [*(*(a1 + 32) + 464) visibleBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(*(a1 + 32) + 464) currentViewState];
  v11 = [TUIResourceCollector createImageResourceCollectorForNotLoadedInVisibleBounds:v10 viewState:v3, v5, v7, v9];

  v12 = [*(*(a1 + 32) + 464) renderModel];
  v13 = *&CGAffineTransformIdentity.c;
  v20 = *&CGAffineTransformIdentity.a;
  v21 = v13;
  v22 = *&CGAffineTransformIdentity.tx;
  [v12 appendResourcesToCollector:v11 transform:&v20];

  *&v20 = 0;
  *(&v20 + 1) = &v20;
  *&v21 = 0x3032000000;
  *(&v21 + 1) = sub_11E4C0;
  *&v22 = sub_11E4D0;
  v14 = [_TUIImageResourceReadyWaiter alloc];
  v15 = [v11 imageResources];
  v16 = *(a1 + 40);
  v17 = [*(*(a1 + 32) + 416) userInitiatedCallbackQueue];
  *(&v22 + 1) = [(_TUIImageResourceReadyWaiter *)v14 initWithImageResources:v15 assertion:v16 assertionQueue:v17];

  v18 = *(a1 + 40);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_11EB28;
  v19[3] = &unk_2607A8;
  v19[4] = &v20;
  [v18 onInvalidate:v19];
  _Block_object_dispose(&v20, 8);
}

void sub_11EB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_11EB28(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_11ED94(uint64_t a1)
{
  [*(*(a1 + 32) + 168) addRenderOverride:*(a1 + 40)];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

void sub_11EED0(uint64_t a1)
{
  [*(*(a1 + 32) + 168) removeRenderOverride:*(a1 + 40)];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

id sub_11F368(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6)
{
  v10 = *(*(a1 + 32) + 248);
  v11 = a3;
  v12 = a2;
  v13 = [v10 imageResourceCache];
  v14 = [v13 imageResourceForTemplatedURL:v12 baseURL:v11 naturalSize:a4 contentsScale:{a5, a6}];

  v15 = [v14 unprocessedImageResource];

  return v15;
}

id sub_11F6DC(uint64_t a1)
{
  [*(*(a1 + 32) + 464) setImpressionSnapshot:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 144);

  return [v3 updateWithImpressionSnapshot:v2];
}

void sub_12102C(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 overscrollingLiveTransform];
  [v13 defaultScale];
  v5 = v4;
  if (*(*(a1 + 32) + 40) < 0.0)
  {
    [v13 defaultSize];
    v7 = *(*(a1 + 32) + 40);
    if (v7 < 0.0)
    {
      v7 = -v7;
    }

    v5 = (v6 + v7) / v6;
  }

  [v13 currentScale];
  if (v8 != v5)
  {
    [v13 setCurrentScale:v5];
    v9 = [*(*(a1 + 32) + 16) liveTransformViewInvalidationMap];
    v10 = [v9 objectForKey:v3];

    v11 = *(a1 + 40);
    v12 = [v10 allObjects];
    [v11 invalidateIndexPaths:v12];
  }
}

BOOL _isLargePad(void)
{
  if (qword_2E6540 != -1)
  {
    sub_19BAC4();
  }

  return dword_2E6538 != 0;
}

void sub_121534(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = v3 == 1366.0;
  if (v5 == 1366.0)
  {
    v6 = 1;
  }

  dword_2E6538 = v6;
}

uint64_t _determineLayoutDirection(UITraitCollection *a1, UIViewController *a2)
{
  v3 = a1;
  v4 = a2;
  if ([(UITraitCollection *)v3 layoutDirection])
  {
    if ([(UITraitCollection *)v3 layoutDirection]== &dword_0 + 1)
    {
      v5 = 2;
    }

    else if (_UIApplicationIsExtension())
    {
      v6 = [(UIViewController *)v4 viewIfLoaded];
      if ([v6 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t _determineActiveAppearance(UITraitCollection *a1)
{
  v1 = a1;
  if ([(UITraitCollection *)v1 _userInterfaceActiveAppearance]== &dword_0 + 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = [(UITraitCollection *)v1 _userInterfaceActiveAppearance]== 0;
  }

  return v2;
}

void sub_121CE4(id a1, UIMutableTraits *a2)
{
  v2 = a2;
  [(UIMutableTraits *)v2 setActiveAppearance:1];
  [(UIMutableTraits *)v2 setUserInterfaceLevel:0];
  [(UIMutableTraits *)v2 setUserInterfaceStyle:1];
  [(UIMutableTraits *)v2 setHorizontalSizeClass:2];
  [(UIMutableTraits *)v2 setVerticalSizeClass:2];
}

void sub_12416C(id a1)
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  qword_2E6548 = v1;
  qword_2E6550 = v2;
}

uint64_t **sub_1241E0(void *a1, unsigned __int16 *a2)
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

uint64_t **sub_124414(void *a1, unsigned __int16 *a2)
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

void sub_12467C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34CB0(va);
  _Unwind_Resume(a1);
}

void sub_124B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_124B40(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (a4)
  {
    [WeakRetained _updatePopoverLayout];
  }

  else
  {
    [WeakRetained _updateVisible:a3];
  }
}

void sub_1258F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_125908(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_125920(void *a1, void *a2)
{
  v12 = a2;
  v3 = a1[4];
  v4 = [v12 refId];
  v5 = [v12 refInstance];
  v6 = [v12 identifier];
  LODWORD(v3) = [v3 matchesRefId:v4 refInstance:v5 identifier:v6];

  if (v3)
  {
    v7 = *(a1[5] + 16);
    v8 = [v12 identifier];
    v9 = [v7 objectForKey:v8];
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

BOOL sub_125E08(id a1, id a2, BOOL *a3)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *a3 = 1;
  }

  return isKindOfClass & 1;
}

id sub_127F1C(uint64_t a1)
{
  [*(a1 + 32) setContentInset:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  v6 = *(a1 + 32);

  return [v6 setScrollIndicatorInsets:{v2, v3, v4, v5}];
}

void TUI::Model::Component::~Component(TUI::Model::Component *this)
{
  *this = off_262188;
  v2 = *(this + 14);
  if (v2)
  {
    sub_11420(v2);
  }

  v5 = (this + 48);
  sub_286D0(&v5);
  v3 = *(this + 4);
  if (v3)
  {
    sub_11420(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    sub_11420(v4);
  }
}

{
  TUI::Model::Component::~Component(this);

  operator delete();
}

TUI::Model::Component *TUI::Model::Component::Component(TUI::Model::Component *this)
{
  *this = off_262188;
  *(this + 11) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  bzero(this + 96, 1uLL);
  *(this + 13) = 0;
  *(this + 14) = 0;
  return this;
}

{
  *this = off_262188;
  *(this + 11) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  bzero(this + 96, 1uLL);
  *(this + 13) = 0;
  *(this + 14) = 0;
  return this;
}

uint64_t TUI::Model::Component::Component(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t a6, char a7, void *a8)
{
  v13 = *a3;
  v12 = a3[1];
  *a1 = off_262188;
  *(a1 + 8) = v13;
  *(a1 + 16) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a4[1];
  *(a1 + 24) = *a4;
  *(a1 + 32) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = 0;
  *(a1 + 40) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_284C0(a1 + 48, *a5, a5[1], (a5[1] - *a5) >> 4);
  *(a1 + 72) = 0;
  *(a1 + 80) = a6;
  *(a1 + 88) = 0;
  *(a1 + 96) = a7;
  v15 = a8[1];
  *(a1 + 104) = *a8;
  *(a1 + 112) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

{
  return TUI::Model::Component::Component(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_1283AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_11420(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    sub_11420(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TUI::Model::Component::Component(uint64_t result, uint64_t a2)
{
  *result = off_262188;
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(result + 40) = *(a2 + 40);
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = *(a2 + 48);
  *(result + 64) = *(a2 + 64);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  v2 = *(a2 + 80);
  *(result + 72) = 0;
  *(result + 80) = v2;
  *(result + 88) = 0;
  *(result + 96) = *(a2 + 96);
  v3 = *(a2 + 112);
  *(result + 104) = *(a2 + 104);
  *(result + 112) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t TUI::Model::Component::Component(uint64_t a1, void *a2, int a3, uint64_t *a4, int a5, uint64_t *a6, char a7)
{
  v10 = a2 + 1;
  if (a3)
  {
    v10 = a4;
  }

  v12 = *v10;
  v11 = v10[1];
  *a1 = off_262188;
  *(a1 + 8) = v12;
  *(a1 + 16) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a2 + 3;
  if (a5)
  {
    v13 = a6;
  }

  v15 = *v13;
  v14 = v13[1];
  *(a1 + 24) = v15;
  *(a1 + 32) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = a2[5];
  *(a1 + 48) = 0;
  *(a1 + 40) = v16;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_284C0(a1 + 48, a2[6], a2[7], (a2[7] - a2[6]) >> 4);
  v17 = a2[10];
  *(a1 + 72) = 0;
  *(a1 + 80) = v17;
  *(a1 + 88) = 0;
  *(a1 + 96) = a7;
  v18 = a2[14];
  *(a1 + 104) = a2[13];
  *(a1 + 112) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

{
  return TUI::Model::Component::Component(a1, a2, a3, a4, a5, a6, a7);
}

void sub_128548(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_11420(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    sub_11420(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TUI::Model::Component::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(a1 + 16);
  *(a1 + 8) = v4;
  if (v5)
  {
    sub_11420(v5);
  }

  v6 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v7 = *(a1 + 32);
  *(a1 + 24) = v6;
  if (v7)
  {
    sub_11420(v7);
  }

  *(a1 + 40) = *(a2 + 40);
  sub_128CD4((a1 + 48));
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v9 = *(a2 + 104);
  v8 = *(a2 + 112);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 112);
  *(a1 + 104) = v9;
  *(a1 + 112) = v8;
  if (v10)
  {
    sub_11420(v10);
  }

  return a1;
}

uint64_t (***sub_128628(void *a1, unsigned int a2))(void, void)
{
  v3 = a2;
  result = a1[3];
  if (!result || (result = (**result)(result, a2), v5 == -1))
  {
    v6 = a1[1];
    if (!v6 || (result = (**v6)(a1[1], v3), v7 == -1))
    {
      v8 = a1[7];
      if (a1[6] != v8)
      {
        do
        {
          v9 = *(v8 - 16);
          v8 -= 16;
          result = (**v9)(v9, v3);
        }

        while (v10 == -1 && v8 != a1[6]);
      }
    }
  }

  return result;
}

uint64_t sub_12871C(void *a1, unsigned int a2)
{
  v3 = a2;
  result = a1[3];
  if (!result || (result = (*(*result + 8))(result, a2), v5 == -1))
  {
    v6 = a1[1];
    if (!v6 || (result = (*(*v6 + 8))(a1[1], v3), v7 == -1))
    {
      v8 = a1[7];
      if (a1[6] != v8)
      {
        do
        {
          v9 = *(v8 - 16);
          v8 -= 16;
          result = (*(*v9 + 8))(v9, v3);
        }

        while (v10 == -1 && v8 != a1[6]);
      }
    }
  }

  return result;
}

uint64_t sub_128810(void *a1, unsigned int a2)
{
  v3 = a2;
  result = a1[3];
  if (!result || (result = (*(*result + 16))(result, a2), v5 == -1))
  {
    v6 = a1[1];
    if (!v6 || (result = (*(*v6 + 16))(a1[1], v3), v7 == -1))
    {
      v8 = a1[7];
      if (a1[6] != v8)
      {
        do
        {
          v9 = *(v8 - 16);
          v8 -= 16;
          result = (*(*v9 + 16))(v9, v3);
        }

        while (v10 == -1 && v8 != a1[6]);
      }
    }
  }

  return result;
}

uint64_t sub_128904(void *a1, unsigned int a2)
{
  v3 = a2;
  result = a1[3];
  if (!result || (result = (*(*result + 24))(result, a2), v5 == -1))
  {
    v6 = a1[1];
    if (!v6 || (result = (*(*v6 + 24))(a1[1], v3), v7 == -1))
    {
      v8 = a1[7];
      if (a1[6] != v8)
      {
        do
        {
          v9 = *(v8 - 16);
          v8 -= 16;
          result = (*(*v9 + 24))(v9, v3);
        }

        while (v10 == -1 && v8 != a1[6]);
      }
    }
  }

  return result;
}

uint64_t sub_1289F8(void *a1, unsigned int a2)
{
  v3 = a2;
  result = a1[3];
  if (!result || (result = (*(*result + 32))(result, a2), v5 == -1))
  {
    v6 = a1[1];
    if (!v6 || (result = (*(*v6 + 32))(a1[1], v3), v7 == -1))
    {
      v8 = a1[7];
      if (a1[6] != v8)
      {
        do
        {
          v9 = *(v8 - 16);
          v8 -= 16;
          result = (*(*v9 + 32))(v9, v3);
        }

        while (v10 == -1 && v8 != a1[6]);
      }
    }
  }

  return result;
}

uint64_t sub_128AEC(void *a1, unsigned int a2)
{
  v3 = a2;
  result = a1[3];
  if (!result || (result = (*(*result + 40))(result, a2), v5 == -1))
  {
    v6 = a1[1];
    if (!v6 || (result = (*(*v6 + 40))(a1[1], v3), v7 == -1))
    {
      v8 = a1[7];
      if (a1[6] != v8)
      {
        do
        {
          v9 = *(v8 - 16);
          v8 -= 16;
          result = (*(*v9 + 40))(v9, v3);
        }

        while (v10 == -1 && v8 != a1[6]);
      }
    }
  }

  return result;
}

uint64_t sub_128BE0(void *a1, unsigned int a2)
{
  v3 = a2;
  result = a1[3];
  if (!result || (result = (*(*result + 48))(result, a2), v5 == -1))
  {
    v6 = a1[1];
    if (!v6 || (result = (*(*v6 + 48))(a1[1], v3), v7 == -1))
    {
      v8 = a1[7];
      if (a1[6] != v8)
      {
        do
        {
          v9 = *(v8 - 16);
          v8 -= 16;
          result = (*(*v9 + 48))(v9, v3);
        }

        while (v10 == -1 && v8 != a1[6]);
      }
    }
  }

  return result;
}

void sub_128CD4(uint64_t *a1)
{
  if (*a1)
  {
    sub_28724(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_129978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  sub_11694(&a56);

  _Unwind_Resume(a1);
}

void sub_129C60(uint64_t a1)
{
  v16 = [*(a1 + 32) subviews];
  if (![v16 count])
  {
    [*(a1 + 32) addSubview:*(a1 + 40)];
    goto LABEL_22;
  }

  v2 = [v16 lastObject];
  v3 = TUIProtocolCast(&OBJC_PROTOCOL___TUIReusableRenderView, v2);

  if (v3)
  {
    v4 = [v3 layoutAttributes];
    v5 = [v4 zIndex];
    v6 = *(a1 + 64);

    if (v5 <= v6)
    {
      [*(a1 + 32) addSubview:*(a1 + 40)];
      goto LABEL_21;
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v16;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = *v18;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v17 + 1) + 8 * i);
      v12 = TUIProtocolCast(&OBJC_PROTOCOL___TUIReusableRenderView, v11);

      v3 = v12;
      if (v12 && v12 != *(a1 + 40))
      {
        v13 = [v12 layoutAttributes];
        v14 = [v13 zIndex];

        v15 = *(a1 + 64);
        if (v15 < v14)
        {
          [*(a1 + 32) insertSubview:*(a1 + 40) belowSubview:v11];
        }

        else
        {
          if (v15 != v14)
          {
            continue;
          }

          [*(a1 + 32) insertSubview:*(a1 + 40) aboveSubview:v3];
        }

        goto LABEL_21;
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_15:

  [*(a1 + 32) addSubview:*(a1 + 40)];
LABEL_21:

LABEL_22:
  [*(a1 + 40) setSemanticContentAttribute:*(*(a1 + 48) + 168)];
  sub_129F0C(*(a1 + 40));
  TUIReusableSubviewApplyLayoutAttributes(*(a1 + 40), *(a1 + 56));
}