@interface sec_LWCRExecutor
+ (id)executor;
- (BOOL)evaluateRequirements:(id)a3 withFacts:(id)a4;
@end

@implementation sec_LWCRExecutor

- (BOOL)evaluateRequirements:(id)a3 withFacts:(id)a4
{
  v5 = a3;
  v6 = a4;
  memset(&v28[1], 170, 24);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__sec_LWCRExecutor_evaluateRequirements_withFacts___block_invoke;
  aBlock[3] = &unk_1E70D7110;
  v27 = v6;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __51__sec_LWCRExecutor_evaluateRequirements_withFacts___block_invoke_2;
  v24[3] = &unk_1E70D7138;
  v25 = v27;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __51__sec_LWCRExecutor_evaluateRequirements_withFacts___block_invoke_3;
  v22[3] = &unk_1E70D7160;
  v7 = v25;
  v23 = v7;
  v28[0] = &unk_1EFA88B40;
  v8 = v22;
  v9 = v24;
  v28[1] = _Block_copy(aBlock);
  v10 = _Block_copy(v9);

  v28[2] = v10;
  v11 = _Block_copy(v8);

  v28[3] = v11;
  v21[0] = v28;
  v21[1] = 0;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = *(v5 + 4);
  *&v32.runtime = *(v5 + 3);
  *&v32.lookup.index_count = v12;
  *&v32.sorted = *(v5 + 5);
  v32.var0.ccstate.der_end = *(v5 + 12);
  if (der_vm_context_is_valid())
  {
    v13 = *(v5 + 4);
    *&v32.runtime = *(v5 + 3);
    *&v32.lookup.index_count = v13;
    *&v32.sorted = *(v5 + 5);
    v32.var0.ccstate.der_end = *(v5 + 12);
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    LODWORD(v29) = 0;
    v30 = 0;
    v31 = 0;
    TLE::Executor::getDependentOpsFromDictionary(&v33, v21, &v32);
    if (v33)
    {
      v19 = v33;
      v20 = v34;
    }

    else
    {
      if (v35 != 1)
      {
        operator new();
      }

      if (!*(&v34 + 1))
      {
        goto LABEL_19;
      }

      v16 = 8 * v35;
      if (*(&v34 + 1) + v16 < *(&v34 + 1) || HIDWORD(v16))
      {
        os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v14);
      }

      if (v16 < 8)
      {
LABEL_19:
        os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v14);
      }

      v19 = 0;
      v20 = 0u;
      libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(&v20 + 1, **(&v34 + 1));
    }

    if (*(&v34 + 1))
    {
      libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(*(&v34 + 1), v35);
    }

    if (v19)
    {
      v15 = 0;
    }

    else
    {
      *&v17 = 0xAAAAAAAAAAAAAAAALL;
      *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v32.runtime = v17;
      *&v32.lookup.index_count = v17;
      (*(**(&v20 + 1) + 16))(&v32);
      v15 = (LODWORD(v32.runtime) == 0) & v32.dictionary_tag;
    }
  }

  else
  {
    v15 = 0;
    v20 = 0x12uLL;
  }

  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(&v20 + 1);

  return v15;
}

+ (id)executor
{
  v2 = objc_alloc_init(sec_LWCRExecutor);

  return v2;
}

@end