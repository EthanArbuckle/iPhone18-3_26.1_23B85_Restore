uint64_t sub_23C080C98()
{
  qword_27E1EDDC0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void sub_23C080EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id obj, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23C080EF0(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    objc_sync_enter(v8);
    if (*(v8 + 16) == 1)
    {
      [v15 userAcceleration];
      *(v8 + 4) = v9;
      *(v8 + 5) = v10;
      *(v8 + 6) = v11;
      [v15 rotationRate];
      *(v8 + 7) = v12;
      *(v8 + 8) = v13;
      *(v8 + 9) = v14;
    }

    objc_sync_exit(v8);
  }
}

void sub_23C081E00(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 912));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_23C081EA8;
  v3[3] = &unk_278BAC5C8;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void sub_23C081EA8(uint64_t a1)
{
  v2 = dispatch_group_create();
  [*(*(a1 + 32) + 856) renderSynchronouslyWithImageQueueDiscard:1 inGroup:v2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23C081F64;
  block[3] = &unk_278BAC5A0;
  v4 = *(a1 + 40);
  dispatch_group_notify(v2, MEMORY[0x277D85CD0], block);
}

uint64_t sub_23C0824B8()
{
  qword_27E1EDDD8 = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

void sub_23C082B4C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v9 = [v5 objectAtIndexedSubscript:a3];
  v7 = *(a1 + 40);
  v8 = MEMORY[0x23EEC5E20](v6, v9, *(a1 + 48));

  [v7 addObject:v8];
}

void sub_23C083490(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 488);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  [*(a1 + 32) _setupWithNode:v4 configureNode:*(a1 + 40)];
}

void sub_23C083928(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CDBB18] begin];
  [MEMORY[0x277CDBB18] setAnimationDuration:0.0];
  if (*(a1 + 32))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
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

          v7 = *(*(&v12 + 1) + 8 * v6);
          v8 = [*(a1 + 48) physicsWorld];
          [v8 removeBehavior:v7];

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v4);
    }

    [*(a1 + 40) removeAllObjects];
    [*(a1 + 32) removeFromParentNode];
  }

  [MEMORY[0x277CDBB18] commit];
  if (*(a1 + 56))
  {
    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 64);
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_23C07F000, v9, OS_LOG_TYPE_DEFAULT, "Snowglobe destroyed digit while loading %@", buf, 0xCu);
    }

    dispatch_group_leave(*(a1 + 56));
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23C083D64(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = [a2 name];
  v5 = [v4 hasPrefix:@"Leg_1"];

  if (v5)
  {
    *a3 = 1;
  }

  return v5;
}

uint64_t sub_23C083DC0(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = [a2 name];
  v5 = [v4 hasPrefix:@"Leg_2"];

  if (v5)
  {
    *a3 = 1;
  }

  return v5;
}

void sub_23C0840DC(uint64_t a1, void *a2)
{
  v6 = [a2 geometry];
  v3 = [v6 firstMaterial];
  LODWORD(v4) = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setValue:v5 forKeyPath:@"grainIntensity"];
}

id sub_23C0851F4(uint64_t a1)
{
  [*(*(a1 + 32) + 376) transitionToState:0 withDuration:0.25];
  v2 = (*(a1 + 32) + 384);

  return objc_storeWeak(v2, 0);
}

void sub_23C08568C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 120));
  _Unwind_Resume(a1);
}

void sub_23C0856C4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _loadDigitNumber:*(a1 + 40)];
  v3[2](v3, v4);
}

void sub_23C085740(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _loadBackgroundObjects];
  v3[2](v3, v4);
}

void sub_23C0857B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _loadDainty];
  v3[2](v3, v4);
}

void sub_23C085918(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23C0859D4;
  v7[3] = &unk_278BAC720;
  v4 = a1[4];
  v7[4] = a1[5];
  v8 = v3;
  v5 = a1[6];
  v10 = a1[7];
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_23C0859D4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CDBB18] begin];
  [MEMORY[0x277CDBB18] setAnimationDuration:0.0];
  v2 = [*(a1 + 32) _copyAndConfigureDigitNode:*(a1 + 40)];
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 56);
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&dword_23C07F000, v3, OS_LOG_TYPE_DEFAULT, "Snowglobe: created a copy of digit %lu", &v6, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
  [MEMORY[0x277CDBB18] commit];

  v5 = *MEMORY[0x277D85DE8];
}

id sub_23C085C88()
{
  if (qword_27E1EDE00 != -1)
  {
    sub_23C08ED64();
  }

  v1 = qword_27E1EDDF8;

  return v1;
}

void sub_23C085D84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23C085E48;
  v10[3] = &unk_278BAC770;
  v7 = *(a1 + 32);
  v10[4] = *(a1 + 40);
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 enumerateHierarchyUsingBlock:v10];
}

void sub_23C085E48(id *a1, void *a2)
{
  v9 = a2;
  v3 = [v9 geometry];
  v4 = [v3 copy];

  v5 = [v4 firstMaterial];
  v6 = [v5 copy];

  [v4 setFirstMaterial:v6];
  [v9 setGeometry:v4];
  [a1[4] _applyCustomShadingToMaterial:v6];
  if (a1[5] == v9 || a1[6] == v9)
  {
    v7 = [v9 morpher];
    v8 = [v7 copy];
    [v9 setMorpher:v8];
  }

  [v9 setCategoryBitMask:2];
}

id sub_23C0861EC(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CDBAB0];
  v3 = a2;
  v4 = [v2 dynamicBody];
  v5 = MEMORY[0x277CDBAD0];
  v6 = [v3 geometry];

  v11 = *MEMORY[0x277CDBBD0];
  v12[0] = *MEMORY[0x277CDBBC0];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v5 shapeWithGeometry:v6 options:v7];
  [v4 setPhysicsShape:v8];

  [v4 setMass:1.0];
  [v4 setAngularDamping:0.6];
  [v4 setLinearRestingThreshold:0.000001];
  [v4 setAngularRestingThreshold:0.000001];
  [v4 setContactTestBitMask:-1];
  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

void sub_23C086600(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v11 = [v5 childNodeWithName:@"ScreenLeft_Eye" recursively:1];
  v8 = [*(a1 + 32) childNodeWithName:@"ScreenRight_Eye" recursively:1];
  v9 = [v7 clone];

  v10 = [v6 clone];

  [v11 position];
  [v9 setPosition:?];
  [v8 position];
  [v10 setPosition:?];
  [*(a1 + 32) replaceChildNode:v11 with:v9];
  [*(a1 + 32) replaceChildNode:v8 with:v10];
  (*(*(a1 + 40) + 16))();
}

void sub_23C0867E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23C08689C;
  v6[3] = &unk_278BAC5C8;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_23C08689C(uint64_t a1)
{
  [MEMORY[0x277CDBB18] begin];
  [MEMORY[0x277CDBB18] setAnimationDuration:0.0];
  v2 = [*(a1 + 32) objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(*(a1 + 32), "count"))}];
  v3 = [v2 clone];

  v4 = objc_alloc_init(MEMORY[0x277CDBA90]);
  [v4 setLightingModelName:*MEMORY[0x277CDBBA0]];
  v5 = [v4 roughness];
  [v5 setContents:&unk_284EDC838];

  [v4 setWritesToDepthBuffer:0];
  [v4 setReadsFromDepthBuffer:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23C0869FC;
  v7[3] = &unk_278BAC7E8;
  v8 = v4;
  v6 = v4;
  [v3 enumerateHierarchyUsingBlock:v7];
  (*(*(a1 + 40) + 16))();
  [MEMORY[0x277CDBB18] commit];
}

void sub_23C0869FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 geometry];
  v7 = [v4 copy];

  [v3 setGeometry:v7];
  v5 = *(a1 + 32);
  v6 = [v3 geometry];
  [v6 setFirstMaterial:v5];

  [v3 setRenderingOrder:-1];
}

void sub_23C086F14(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23C086FC4;
  v7[3] = &unk_278BAC838;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t sub_23C086FC4(uint64_t a1)
{
  [MEMORY[0x277CDBB18] begin];
  [MEMORY[0x277CDBB18] setAnimationDuration:0.0];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) clone];
  (*(v2 + 16))(v2, v3);

  v4 = MEMORY[0x277CDBB18];

  return [v4 commit];
}

uint64_t sub_23C087508()
{
  qword_27E1EDDF8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23C087B14()
{
  qword_27E1EDE08 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void sub_23C087C90()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_284EDC760;
  v3[1] = &unk_284EDC778;
  v4[0] = @"on";
  v4[1] = @"off";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = qword_27E1EDE18;
  qword_27E1EDE18 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23C0883F8(uint64_t a1)
{
  [MEMORY[0x277CDBB18] begin];
  [MEMORY[0x277CDBB18] setAnimationDuration:0.0];
  [*(a1 + 32) _queue_setupScene];
  v2 = MEMORY[0x277CDBB18];

  return [v2 commit];
}

void sub_23C088630(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 256);
  v3 = *(v1 + 264);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23C0886C4;
  block[3] = &unk_278BAC5A0;
  v5 = *(a1 + 40);
  dispatch_group_notify(v2, v3, block);
}

uint64_t sub_23C0886C4(uint64_t a1)
{
  [MEMORY[0x277CDBB18] begin];
  [MEMORY[0x277CDBB18] setAnimationDuration:0.0];
  (*(*(a1 + 32) + 16))();
  v2 = MEMORY[0x277CDBB18];

  return [v2 commit];
}

void sub_23C08943C(uint64_t a1, void *a2, uint64_t a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23C0894CC;
  v5[3] = &unk_278BAC898;
  v6 = *(a1 + 32);
  v7 = a3;
  [a2 fetchWithCompletion:v5];
}

uint64_t sub_23C0894CC(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CDBB18];
  v4 = a2;
  [v3 begin];
  [MEMORY[0x277CDBB18] setAnimationDuration:0.0];
  v5 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 40)];
  v6 = [v4 childNodes];

  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v7 geometry];
  v9 = [v8 firstMaterial];
  v10 = [v9 diffuse];
  [v10 setContents:v5];

  v11 = MEMORY[0x277CDBB18];

  return [v11 commit];
}

void sub_23C08A864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23C08A8A0(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[33]);
    [(dispatch_queue_t *)v4 _queue_configureController:v5 digit:*(a1 + 40)];
    [v5 resetToOrigin];
  }
}

double sub_23C08A994(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a2);
  if ((v2.f32[2] + vaddv_f32(*v2.f32)) >= 0.0)
  {
    v34 = vaddq_f32(a1, a2);
    v35 = vmulq_f32(v34, v34);
    *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
    *v35.f32 = vrsqrte_f32(v36);
    *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
    v37 = vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]);
    v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), vnegq_f32(a1)), v37, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
    v33 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL).u64[0];
  }

  else
  {
    v4 = vmulq_f32(a1, a1);
    v3 = vaddv_f32(*v4.f32);
    v4.i32[1] = 0;
    *&v5 = v4.f32[2] + v3;
    v6 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v3));
    v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
    v8 = vmulq_n_f32(a1, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
    v9 = vmulq_f32(a2, a2);
    *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v11 = vaddq_f32(v8, vmulq_n_f32(a2, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]));
    v12 = vmulq_f32(v11, v11);
    v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    if (v13 <= 1.4211e-14)
    {
      v39 = vabsq_f32(a1);
      v40 = v39.f32[1];
      v41 = v39.f32[2];
      if (v39.f32[0] > v39.f32[1] || v39.f32[0] > v39.f32[2])
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        if (v40 <= v41)
        {
          v43 = vmulq_f32(a1, xmmword_23C0907F0);
          v44 = xmmword_23C090780;
        }

        else
        {
          v43 = vmulq_f32(a1, xmmword_23C090800);
          v44 = xmmword_23C0907D0;
        }
      }

      else
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        v43 = vmulq_f32(a1, xmmword_23C0907E0);
        v44 = xmmword_23C090790;
      }

      v45 = vmlaq_f32(v43, v44, v42);
      v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
      v47 = vmulq_f32(v45, v45);
      *&v48 = v47.f32[1] + (v47.f32[2] + v47.f32[0]);
      *v47.f32 = vrsqrte_f32(v48);
      *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
      v33 = vmulq_n_f32(v46, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]).u64[0];
    }

    else
    {
      v14 = v13;
      v15 = vrsqrte_f32(LODWORD(v13));
      v16 = vmul_f32(v15, vrsqrts_f32(LODWORD(v14), vmul_f32(v15, v15)));
      v17 = vmulq_n_f32(v11, vmul_f32(v16, vrsqrts_f32(LODWORD(v14), vmul_f32(v16, v16))).f32[0]);
      v18 = vaddq_f32(a1, v17);
      v19 = vmulq_f32(v18, v18);
      *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
      *v19.f32 = vrsqrte_f32(v20);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
      v21 = vmulq_n_f32(v18, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
      v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(a1)), v21, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
      v23 = vmulq_f32(v21, a1);
      v24 = vaddq_f32(a2, v17);
      v25 = vmulq_f32(v24, v24);
      v4.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
      *v25.f32 = vrsqrte_f32(*v4.f32);
      *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32)));
      v26 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v17)), v26, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
      v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
      v29 = vmulq_f32(v17, v26);
      v28.f32[3] = v29.f32[2] + vaddv_f32(*v29.f32);
      v30 = vnegq_f32(v28);
      v31 = vtrn2q_s32(v28, vtrn1q_s32(v28, v30));
      v32 = vrev64q_s32(v28);
      v32.i32[0] = v30.i32[1];
      v32.i32[3] = v30.i32[2];
      v33 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v23.f32[2] + vaddv_f32(*v23.f32)), v32, *v22.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v28, v30, 8uLL), v22.f32[0]), vextq_s8(v31, v31, 8uLL), v22, 2)).u64[0];
    }
  }

  return *&v33;
}

void sub_23C08B3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23C08B3FC(uint64_t a1)
{
  [MEMORY[0x277CDBB18] begin];
  [MEMORY[0x277CDBB18] setAnimationDuration:0.0];
  [*(a1 + 32) destroy];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[8] removeObject:*(a1 + 32)];
    [MEMORY[0x277CDBB18] commit];
    WeakRetained = v3;
  }
}

void sub_23C08B47C(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[33]);
    LODWORD(v8) = *(a1 + 48);
    LODWORD(v9) = *(a1 + 52);
    LODWORD(v10) = *(a1 + 56);
    [v5 setPosition:{v8, v9, v10}];
    [v5 position];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v5 presentationNode];
    LODWORD(v18) = v12;
    LODWORD(v19) = v14;
    LODWORD(v20) = v16;
    [v17 setPosition:{v18, v19, v20}];

    v21 = [v5 physicsBody];
    [v21 setCollisionBitMask:1];

    v22 = [v5 physicsBody];
    [v22 setContactTestBitMask:1];

    [(dispatch_queue_t *)v7 _queue_configureController:v23 digit:*(a1 + 40)];
  }
}

uint64_t sub_23C08BAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2 + *(a1 + 40) * a3];
  v4 = [v3 integerValue];

  return v4;
}

id sub_23C08BB14(uint64_t a1, double a2, double a3)
{
  v6 = objc_opt_new();
  v7 = *(a1 + 48);
  v8 = (a2 / v7);
  v9 = (a3 / v7);
  v10 = *(a1 + 56);
  v11 = (v8 - v10) & ~((v8 - v10) >> 63);
  v12 = v10 + v8;
  if (*(a1 + 64) - 1 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(a1 + 64) - 1;
  }

  if (*(a1 + 72) - 1 >= (v10 + v9))
  {
    v14 = v10 + v9;
  }

  else
  {
    v14 = *(a1 + 72) - 1;
  }

  if (v11 <= v13)
  {
    v15 = (v9 - v10) & ~((v9 - v10) >> 63);
    do
    {
      for (i = v15; i <= v14; ++i)
      {
        v17 = *(a1 + 64);
        v18 = *(a1 + 72);
        v19 = (*(*(a1 + 40) + 16))();
        if (v19 != -1)
        {
          v20 = [*(a1 + 32) objectAtIndexedSubscript:v19];
          [v6 addObject:v20];
        }
      }

      ++v11;
    }

    while (v11 <= v13);
  }

  return v6;
}

void sub_23C08BC50(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = *(a1 + 40);
  v6 = (a3 / v5);
  v7 = (a4 / v5);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [*(a1 + 32) setObject:v8 atIndexedSubscript:v6 + *(a1 + 48) * v7];
}

double sub_23C08BCD4(double a1)
{
  v2 = vcvts_n_f32_u32(arc4random(), 0x20uLL);
  v3 = vcvts_n_f32_u32(arc4random(), 0x20uLL);
  return a1 + (v2 + 1.0) * 0.16 * __sincos_stret(v3 * 3.14159265 + v3 * 3.14159265).__sinval;
}

void sub_23C08C2F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NTKSnowglobeAssetLibrary sharedInstance];
  v5 = *(a1 + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23C08C3D8;
  v8[3] = &unk_278BAC9D8;
  v6 = v5;
  v12 = *(a1 + 56);
  v9 = *(a1 + 32);
  v10 = v6;
  v11 = v3;
  v7 = v3;
  [v4 loadRandomBackgroundShapeOnQueue:v6 withCompletion:v8];
}

void sub_23C08C3D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v5 = a2;
  dispatch_assert_queue_V2(v3);
  v4 = *(a1 + 64);
  *&v4 = v4;
  [v5 setSimdScale:{*vdupq_lane_s32(*&v4, 0).i64}];
  [v5 setSimdPosition:*(a1 + 32)];
  (*(*(a1 + 56) + 16))();
}

void sub_23C08C45C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NTKSnowglobeAssetLibrary sharedInstance];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23C08C52C;
  v7[3] = &unk_278BAC618;
  v8 = v5;
  v9 = v3;
  v6 = v3;
  [v4 loadDaintyOnQueue:v8 withCompletion:v7];
}

void sub_23C08C52C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  (*(*(a1 + 40) + 16))();
}

void sub_23C08C674(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23C08C690(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [MEMORY[0x277CDBB18] begin];
    [MEMORY[0x277CDBB18] setAnimationDuration:0.0];
    [WeakRetained[12] addChildNode:v7];
    v4 = arc4random() / 4294967300.0;
    v5 = objc_opt_new();
    [v5 setNode:v7];
    LODWORD(v6) = 1.0;
    [v5 setRotationAxis:{0.0, 0.0, v6}];
    [v5 setRotationSpeed:v4 * 2.0 + -1.0 + v4 * 2.0 + -1.0];
    [WeakRetained[9] addObject:v5];
    [MEMORY[0x277CDBB18] commit];
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_23C08C960(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_23C08C984(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CDBB18];
  v3 = a2;
  [v2 begin];
  [MEMORY[0x277CDBB18] setAnimationDuration:0.0];
  [v3 setOpacity:1.0];

  v4 = MEMORY[0x277CDBB18];

  return [v4 commit];
}

void sub_23C08C9F0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [v3 setOpacity:0.0];
    v5 = WeakRetained[15];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_23C08CAD0;
    v6[3] = &unk_278BACA98;
    v7 = v3;
    v8 = *(a1 + 32);
    [v5 fetchWithCompletion:v6];
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_23C08CAD0(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) simdPosition];
    v6 = v5;
    [*(a1 + 32) simdPosition];
    v8 = v7;
    [*(a1 + 32) simdPosition];
    v12 = 134218496;
    v13 = v6;
    v14 = 2048;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    _os_log_impl(&dword_23C07F000, v4, OS_LOG_TYPE_DEFAULT, "Placed Dainty at %f %f %f", &v12, 0x20u);
  }

  [*(a1 + 32) position];
  [v3 setPosition:?];
  [*(a1 + 32) simdScale];
  [v3 setSimdScale:{*vmulq_f32(v10, vdupq_n_s32(0x3BB60B61u)).i64}];

  dispatch_group_leave(*(a1 + 40));
  v11 = *MEMORY[0x277D85DE8];
}

void sub_23C08CD90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 304));
  [WeakRetained currentRotation];
  [v3 setRotation:?];
}

id sub_23C08D0FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    do
    {
      v4 = v3;
      v5 = [*(*(a1 + 32) + 80) objectForKey:v3];
      v3 = [v3 parentNode];

      if (v5)
      {
        v6 = 1;
      }

      else
      {
        v6 = v3 == 0;
      }
    }

    while (!v6);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_23C08D5C4(uint64_t a1)
{
  [MEMORY[0x277CDBB18] begin];
  [MEMORY[0x277CDBB18] setAnimationDuration:0.0];
  v2 = [*(a1 + 32) appliedSnowglobeState];
  v3 = *(a1 + 32);
  v4 = *(v3 + 249);
  *(v3 + 249) = *(a1 + 48);
  v5 = [v2 tritiumState] == 1 || objc_msgSend(v2, "tritiumState") == 3;
  v6 = *(a1 + 32);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = sub_23C08D6E8;
  v11 = &unk_278BACB30;
  v15 = v5;
  v16 = v4;
  v12 = v2;
  v13 = v6;
  v14 = *(a1 + 40);
  v7 = v2;
  [v6 _queue_enumerateDigitsWithBlock:&v8];
  [MEMORY[0x277CDBB18] commit];
}

void sub_23C08D6E8(uint64_t a1, uint64_t a2)
{
  if (([*(a1 + 32) idealizedState] & 1) != 0 || (*(a1 + 56) & 1) != 0 || *(a1 + 57) == 1)
  {
    v4 = *(a1 + 40);
    v6 = [*(a1 + 48) objectAtIndexedSubscript:a2];
    [v4 _queue_replaceDigit:a2 withCharacter:{objc_msgSend(v6, "unsignedIntegerValue")}];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) objectAtIndexedSubscript:a2];
    [v5 _queue_animatedReplaceDigit:a2 withCharacter:{objc_msgSend(v6, "unsignedIntegerValue")}];
  }
}

uint64_t sub_23C08D854(uint64_t a1)
{
  [MEMORY[0x277CDBB18] begin];
  [MEMORY[0x277CDBB18] setAnimationDuration:0.0];
  [*(a1 + 32) _queue_tapAtPoint:{*(a1 + 40), *(a1 + 48)}];
  v2 = MEMORY[0x277CDBB18];

  return [v2 commit];
}

uint64_t sub_23C08DE7C()
{
  qword_27E1EDE28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23C08DED8(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  [MEMORY[0x277CDBB18] begin];
  [MEMORY[0x277CDBB18] setAnimationDuration:0.0];
  (*(*(a1 + 40) + 16))();
  v2 = MEMORY[0x277CDBB18];

  return [v2 commit];
}

void sub_23C08E138(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [a1[4] pigmentEditOption];
  v6 = [v5 identifier];
  if ([v4 isEqualToString:v6])
  {
  }

  else
  {
    v7 = [v3 identifier];
    v8 = [v7 isEqualToString:@"snowglobe.black"];

    if ((v8 & 1) == 0)
    {
      v9 = [a1[4] pigmentEditOption];
      v10 = [v9 identifier];
      v11 = [v10 isEqualToString:@"snowglobe.black"];

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23C08E2B4;
      v13[3] = &unk_278BACBA8;
      v16 = v11;
      v12 = a1[4];
      v14 = a1[5];
      v15 = a1[6];
      [v12 executeWithOption:v3 block:v13];
    }
  }
}

void sub_23C08E2B4(uint64_t a1, void *a2)
{
  v10 = a2;
  if ((*(a1 + 48) & 1) != 0 || (v3 = *(a1 + 32), [v10 primaryColor], v4 = objc_claimAutoreleasedReturnValue(), CLKContrastRatioForColors(), v6 = v5, v4, v7 = v10, v6 > 1.4))
  {
    v8 = *(a1 + 40);
    v9 = [v10 primaryColor];
    [v8 addObject:v9];

    v7 = v10;
  }
}

uint64_t sub_23C08E370()
{
  qword_27E1EDE38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

double NTKMakeAxisAngleFromEulerAngles(float32x4_t a1)
{
  v1 = __sincosf_stret(0.5 * a1.f32[0]);
  v2 = __sincosf_stret(vmuls_lane_f32(0.5, *a1.f32, 1));
  v3 = __sincosf_stret(vmuls_lane_f32(0.5, a1, 2));
  v4.f32[0] = (v3.__cosval * (v1.__sinval * v2.__sinval)) + ((v1.__cosval * v2.__cosval) * v3.__sinval);
  v4.f32[1] = (v3.__sinval * (v1.__cosval * v2.__sinval)) + ((v1.__sinval * v2.__cosval) * v3.__cosval);
  v4.f32[2] = ((v1.__cosval * v2.__sinval) * v3.__cosval) - ((v1.__sinval * v2.__cosval) * v3.__sinval);
  v11 = v4;
  acosf(((v1.__cosval * v2.__cosval) * v3.__cosval) - ((v1.__sinval * v2.__sinval) * v3.__sinval));
  v5 = vmulq_f32(v11, v11);
  *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  v7 = vrsqrte_f32(v6);
  v8 = vmul_f32(v7, vrsqrts_f32(v6, vmul_f32(v7, v7)));
  *&result = vmulq_n_f32(v11, vmul_f32(v8, vrsqrts_f32(v6, vmul_f32(v8, v8))).f32[0]).u64[0];
  return result;
}

void NTKMakeEulerAnglesFromAxisAngle(float32x4_t a1)
{
  v1 = a1.f32[3];
  v2 = __sincosf_stret(a1.f32[3]);
  v3 = 1.0 - v2.__cosval;
  v4 = vmulq_f32(a1, a1);
  v4.f32[0] = v4.f32[2] + vaddv_f32(*v4.f32);
  v5 = vdupq_lane_s32(*v4.f32, 0);
  v6 = vrsqrteq_f32(v5);
  v7 = vmulq_f32(v6, vrsqrtsq_f32(v5, vmulq_f32(v6, v6)));
  v8 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v4.f32[0] != 0.0)), 0x1FuLL));
  v8.i32[3] = 0;
  v9 = vbslq_s8(vcltzq_s32(v8), vmulq_f32(a1, vmulq_f32(v7, vrsqrtsq_f32(v5, vmulq_f32(v7, v7)))), a1);
  v10 = vmuls_lane_f32(v2.__sinval, v9, 2) + (vmuls_lane_f32(v9.f32[0], *v9.f32, 1) * (1.0 - v2.__cosval));
  v18 = v9.f32[0];
  if (v10 > 0.998)
  {
    v11 = __sincosf_stret(v1 * 0.5);
    atan2f(v11.__sinval * v18, v11.__cosval);
    v12 = &unk_23C090888;
LABEL_5:
    v14 = *v12;
    return;
  }

  if (v10 < -0.998)
  {
    v13 = __sincosf_stret(v1 * 0.5);
    atan2f(v13.__sinval * v18, v13.__cosval);
    v12 = &dword_23C090774;
    goto LABEL_5;
  }

  v15 = v9.f32[1];
  v16 = v9.f32[2];
  atan2f((v3 * -(v9.f32[0] * v9.f32[2])) + (v9.f32[1] * v2.__sinval), 1.0 - (((v16 * v16) + (v15 * v15)) * v3));
  asinf(v10);
  atan2f((v3 * -(v15 * v16)) + (v18 * v2.__sinval), 1.0 - (((v16 * v16) + (v18 * v18)) * v3));
}

__n128 NTKMakeAxisAngleFromQuat(float32x4_t a1, double a2)
{
  _Q4 = a1;
  if (a1.f32[3] > 1.0)
  {
    v3 = vmulq_f32(a1, a1);
    v4 = vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
    if (vaddv_f32(v4) == 0.0)
    {
      _Q4 = xmmword_23C090640;
    }

    else
    {
      v5 = vadd_f32(v4, vdup_lane_s32(v4, 1)).u32[0];
      v6 = vrsqrte_f32(v5);
      v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
      _Q4 = vmulq_n_f32(_Q4, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
    }
  }

  _S0 = _Q4.f32[3];
  __asm { FMLS            S1, S0, V4.S[3] }

  *&a2 = sqrtf(_S1);
  if (*&a2 >= 0.001)
  {
    _Q4 = vdivq_f32(_Q4, vdupq_lane_s32(*&a2, 0));
  }

  v15 = _Q4;
  acosf(_S0);
  return v15;
}

uint64_t sub_23C08EAF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = sub_23C08EB70;
  v7 = &unk_278BACBF8;
  v8 = v1;
  return (*(v2 + 16))();
}

void -[NTKSnowglobePromise _blockCompletedWithObject:](NTKSnowglobePromise *self, SEL a2, id a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  objc_storeStrong(&v6->_object, a3);
  v6->_state = 2;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6->_completions;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v12 + 1) + 8 * v10) + 16))(*(*(&v12 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)v6->_completions removeAllObjects];
  objc_sync_exit(v6);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_23C08ED78(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23C07F000, a2, OS_LOG_TYPE_ERROR, "Error loading Snowglobe background objects: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_23C08EDF0(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23C07F000, a2, OS_LOG_TYPE_ERROR, "Snowglobe: Error loading lighting scene: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_23C08EECC(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_23C07F000, a2, OS_LOG_TYPE_FAULT, "Snowglobe synchronous flush timed out %i", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}