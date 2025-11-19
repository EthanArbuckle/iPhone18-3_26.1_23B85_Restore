void sub_23C0A7DC4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23C0A7EB4;
  v5[3] = &unk_278BAEC18;
  v5[4] = *(a1 + 32);
  v5[5] = a3;
  v3 = a2[1];
  v6 = *a2;
  v7 = v3;
  v8 = a2[2];
  v4 = MEMORY[0x23EEC6B40](v5);
  v4[2](v4, *MEMORY[0x277D2BF08]);
  v4[2](v4, *MEMORY[0x277D2BF10]);
  v4[2](v4, *MEMORY[0x277D2BEE0]);
  v4[2](v4, *MEMORY[0x277D2BEE8]);
}

void sub_23C0A7EB4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) complicationLayoutforSlot:a2];
  v4 = [v3 defaultLayoutRuleForState:*(a1 + 40)];
  v5 = *(a1 + 64);
  v6[0] = *(a1 + 48);
  v6[1] = v5;
  v6[2] = *(a1 + 80);
  [v4 setContentTransform:v6];
}

void sub_23C0A853C(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_27E1EE6A8);
  if (qword_27E1EE6B0)
  {
    v3 = qword_27E1EE6B0 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_27E1EE6B8))
  {
    qword_27E1EE6B0 = v6;
    qword_27E1EE6B8 = [v6 version];
    sub_23C0A8618(v6, v7);
    xmmword_27E1EE680 = v7[0];
    *algn_27E1EE690 = v7[1];
    qword_27E1EE6A0 = v8;
  }

  v5 = *algn_27E1EE690;
  *a2 = xmmword_27E1EE680;
  *(a2 + 16) = v5;
  *(a2 + 32) = qword_27E1EE6A0;
  os_unfair_lock_unlock(&unk_27E1EE6A8);
}

void sub_23C0A8618(void *a1@<X1>, void *a2@<X8>)
{
  v31[5] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v5 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  [MEMORY[0x277D2BF60] largeDialDiameterForDevice:v4];
  v7 = v6;

  *a2 = v7;
  v30[0] = &unk_284EDFB18;
  v25 = xmmword_23C0AD510;
  v8 = [MEMORY[0x277CCAE60] valueWithBytes:&v25 objCType:"{CGSize=dd}"];
  v31[0] = v8;
  v30[1] = &unk_284EDFB30;
  v24 = xmmword_23C0AD520;
  v9 = [MEMORY[0x277CCAE60] valueWithBytes:&v24 objCType:"{CGSize=dd}"];
  v31[1] = v9;
  v30[2] = &unk_284EDFB48;
  v23 = xmmword_23C0AD530;
  v10 = [MEMORY[0x277CCAE60] valueWithBytes:&v23 objCType:"{CGSize=dd}"];
  v31[2] = v10;
  v30[3] = &unk_284EDFB60;
  v22 = xmmword_23C0AD540;
  v11 = [MEMORY[0x277CCAE60] valueWithBytes:&v22 objCType:"{CGSize=dd}"];
  v31[3] = v11;
  v30[4] = &unk_284EDFB78;
  v21 = xmmword_23C0AD540;
  v12 = [MEMORY[0x277CCAE60] valueWithBytes:&v21 objCType:"{CGSize=dd}"];
  v31[4] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:5];
  [v5 scaledSize:v13 withOverrides:{31.5, 11.5}];
  a2[1] = v14;
  a2[2] = v15;

  v28[0] = &unk_284EDFB18;
  v28[1] = &unk_284EDFB30;
  v29[0] = &unk_284EDFD40;
  v29[1] = &unk_284EDFD50;
  v28[2] = &unk_284EDFB48;
  v28[3] = &unk_284EDFB60;
  v29[2] = &unk_284EDFD60;
  v29[3] = &unk_284EDFD70;
  v28[4] = &unk_284EDFB78;
  v28[5] = &unk_284EDFB90;
  v29[4] = &unk_284EDFD80;
  v29[5] = &unk_284EDFD90;
  v28[6] = &unk_284EDFBA8;
  v28[7] = &unk_284EDFBC0;
  v29[6] = &unk_284EDFD80;
  v29[7] = &unk_284EDFDA0;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:8];
  [v5 scaledValue:v16 withOverrides:148.5];
  a2[3] = v17;

  v26[0] = &unk_284EDFB18;
  v26[1] = &unk_284EDFB30;
  v27[0] = &unk_284EDFDB0;
  v27[1] = &unk_284EDFDC0;
  v26[2] = &unk_284EDFB48;
  v26[3] = &unk_284EDFB60;
  v27[2] = &unk_284EDFDD0;
  v27[3] = &unk_284EDFDE0;
  v26[4] = &unk_284EDFB78;
  v26[5] = &unk_284EDFB90;
  v27[4] = &unk_284EDFDF0;
  v27[5] = &unk_284EDFE00;
  v26[6] = &unk_284EDFBA8;
  v26[7] = &unk_284EDFBC0;
  v27[6] = &unk_284EDFE10;
  v27[7] = &unk_284EDFE20;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:8];
  [v5 scaledValue:v18 withOverrides:65.0];
  a2[4] = v19;

  v20 = *MEMORY[0x277D85DE8];
}

void sub_23C0A8DE0(uint64_t a1, void *a2, uint64_t a3)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D2C020];
  v5 = a2;
  if (a3)
  {
    v6 = 4000;
    v7 = [v4 placementWithWatchOS12Group:13 zOrder:4000];
    v14 = v7;
    v8 = &v14;
    v9 = 2;
  }

  else
  {
    v7 = [v4 placementWithWatchOS12Group:2 zOrder:4000];
    v15[0] = v7;
    v8 = v15;
    v6 = 9000;
    v9 = 13;
  }

  v10 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:v9 zOrder:4000];
  v8[1] = v10;
  v11 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:20 zOrder:v6];
  v8[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  [v5 setCurationPlacements:v12];

  v13 = *MEMORY[0x277D85DE8];
}

void sub_23C0A8F1C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) defaultFaceForDevice:*(a1 + 40)];
  if (v3)
  {
    v4 = [MEMORY[0x277D2C0B0] pigmentNamed:v5];
    [v3 selectOption:v4 forCustomEditMode:10 slot:0];
    [*(a1 + 48) addObject:v3];
  }
}

void sub_23C0A9358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23C0A937C(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateGlobeImage];
}

void sub_23C0A96F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) _tritiumGlobe];
    os_unfair_lock_lock(WeakRetained + 116);
    v4 = *&WeakRetained[110]._os_unfair_lock_opaque;
    *&WeakRetained[110]._os_unfair_lock_opaque = v3;
    v5 = v3;

    LOBYTE(WeakRetained[108]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(WeakRetained + 116);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23C0A9838;
    block[3] = &unk_278BAECF8;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C0A6000, v5, OS_LOG_TYPE_DEFAULT, "Vivaldi globe view went away while loading default image", buf, 2u);
    }
  }
}

void sub_23C0A9AE4(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 116);
    if (*&v3[122]._os_unfair_lock_opaque == -1)
    {
      v4 = *(a1 + 48);
    }

    else
    {
      v4 = -1;
    }

    if (*&v3[126]._os_unfair_lock_opaque == -1)
    {
      v6 = *(a1 + 56);
    }

    else
    {
      v6 = -1;
    }

    os_unfair_lock_unlock(v3 + 116);
    if (v4 != -1)
    {
      v7 = [*(a1 + 32) _globeImageForSecond:v4];
      if (v7)
      {
        v5 = v7;
        os_unfair_lock_lock(v3 + 116);
        *&v3[122]._os_unfair_lock_opaque = v4;
        objc_storeStrong(&v3[124], v5);
        os_unfair_lock_unlock(v3 + 116);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23C0A9E00;
        v15[3] = &unk_278BAED48;
        v15[4] = *(a1 + 32);
        v16 = *(a1 + 64);
        dispatch_async(MEMORY[0x277D85CD0], v15);
LABEL_17:
        v10 = [*(a1 + 32) _globeImageForSecond:v6];
        os_unfair_lock_lock(v3 + 116);
        if (v10)
        {
          *&v3[126]._os_unfair_lock_opaque = v6;
          v11 = v10;
          v12 = *&v3[128]._os_unfair_lock_opaque;
          *&v3[128]._os_unfair_lock_opaque = v11;
        }

        else
        {
          v12 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [*(a1 + 32) _assetNameForSecond:v6];
            *buf = 138412290;
            v18 = v13;
            _os_log_impl(&dword_23C0A6000, v12, OS_LOG_TYPE_DEFAULT, "Vivaldi globe image failed to load %@", buf, 0xCu);
          }
        }

        LOBYTE(v3[120]._os_unfair_lock_opaque) = 0;
        os_unfair_lock_unlock(v3 + 116);

        goto LABEL_22;
      }

      v8 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 32) _assetNameForSecond:v4];
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&dword_23C0A6000, v8, OS_LOG_TYPE_DEFAULT, "Vivaldi globe image failed to load %@", buf, 0xCu);
      }
    }

    v5 = 0;
    goto LABEL_17;
  }

  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C0A6000, v5, OS_LOG_TYPE_DEFAULT, "Vivaldi globe view went away while loading images", buf, 2u);
  }

LABEL_22:

  v14 = *MEMORY[0x277D85DE8];
}

double sub_23C0AA3A4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_27E1EE6D0);
  if (qword_27E1EE6D8)
  {
    v3 = qword_27E1EE6D8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_27E1EE6E0))
  {
    v5 = *&qword_27E1EE6C0;
  }

  else
  {
    qword_27E1EE6D8 = v2;
    qword_27E1EE6E0 = [v2 version];
    [MEMORY[0x277D2BF60] largeDialDiameterForDevice:v2];
    v5 = *&v6;
    qword_27E1EE6C0 = v6;
    qword_27E1EE6C8 = 0x4008000000000000;
  }

  os_unfair_lock_unlock(&unk_27E1EE6D0);

  return v5;
}

void sub_23C0AAF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23C0AAF68(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLabels];
}

void sub_23C0AB5E4(uint64_t a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D74388];
  v17[0] = *MEMORY[0x277D74398];
  v17[1] = v2;
  v18[0] = &unk_284EDFC08;
  v18[1] = &unk_284EDFC20;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() vivaldiFontDescriptor];
  v6 = qword_27E1EE6E8;
  qword_27E1EE6E8 = v5;

  v7 = qword_27E1EE6E8;
  v8 = *MEMORY[0x277D74338];
  v14 = v3;
  v15 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v16 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v11 = [v7 fontDescriptorByAddingAttributes:v10];
  v12 = qword_27E1EE6E8;
  qword_27E1EE6E8 = v11;

  v13 = *MEMORY[0x277D85DE8];
}

void sub_23C0AB7D0(uint64_t a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D74388];
  v17[0] = *MEMORY[0x277D74398];
  v17[1] = v2;
  v18[0] = &unk_284EDFC08;
  v18[1] = &unk_284EDFC38;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() vivaldiFontDescriptor];
  v6 = qword_27E1EE6F8;
  qword_27E1EE6F8 = v5;

  v7 = qword_27E1EE6F8;
  v8 = *MEMORY[0x277D74338];
  v14 = v3;
  v15 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v16 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v11 = [v7 fontDescriptorByAddingAttributes:v10];
  v12 = qword_27E1EE6F8;
  qword_27E1EE6F8 = v11;

  v13 = *MEMORY[0x277D85DE8];
}

void sub_23C0AB9BC(uint64_t a1)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D74388];
  v20[0] = *MEMORY[0x277D74398];
  v20[1] = v2;
  v21[0] = &unk_284EDFC08;
  v21[1] = &unk_284EDFC20;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:TextToFourCharCode()];
  v18 = v4;
  v19 = &unk_284EDFC50;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  v6 = *MEMORY[0x277D74338];
  v15 = v3;
  v16[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v16[1] = *MEMORY[0x277CC4990];
  v17[0] = v7;
  v17[1] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v9 = *(a1 + 32);
  v10 = [objc_opt_class() vivaldiOutlineFontDescriptor];
  v11 = qword_27E1EE708;
  qword_27E1EE708 = v10;

  v12 = [qword_27E1EE708 fontDescriptorByAddingAttributes:v8];
  v13 = qword_27E1EE708;
  qword_27E1EE708 = v12;

  v14 = *MEMORY[0x277D85DE8];
}

void sub_23C0ABC10(uint64_t a1)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D74388];
  v20[0] = *MEMORY[0x277D74398];
  v20[1] = v2;
  v21[0] = &unk_284EDFC08;
  v21[1] = &unk_284EDFC38;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:TextToFourCharCode()];
  v18 = v4;
  v19 = &unk_284EDFC50;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  v6 = *MEMORY[0x277D74338];
  v15 = v3;
  v16[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v16[1] = *MEMORY[0x277CC4990];
  v17[0] = v7;
  v17[1] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v9 = *(a1 + 32);
  v10 = [objc_opt_class() vivaldiOutlineFontDescriptor];
  v11 = qword_27E1EE718;
  qword_27E1EE718 = v10;

  v12 = [qword_27E1EE718 fontDescriptorByAddingAttributes:v8];
  v13 = qword_27E1EE718;
  qword_27E1EE718 = v12;

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23C0ABE08()
{
  qword_27E1EE728 = [MEMORY[0x277D2C050] fontDescriptorForSectName:@"__Vivaldi-Reg" fromMachO:&dword_23C0A6000];

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23C0ABE9C()
{
  qword_27E1EE738 = [MEMORY[0x277D2C050] fontDescriptorForSectName:@"__Vivaldi-Otl" fromMachO:&dword_23C0A6000];

  return MEMORY[0x2821F96F8]();
}

double sub_23C0AC0AC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_27E1EE760);
  if (qword_27E1EE768)
  {
    v3 = qword_27E1EE768 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_27E1EE770))
  {
    v5 = qword_27E1EE748;
  }

  else
  {
    qword_27E1EE768 = v2;
    qword_27E1EE770 = [v2 version];
    v5 = sub_23C0AC194(qword_27E1EE770, v2);
    qword_27E1EE748 = v5;
    qword_27E1EE750 = v6;
    qword_27E1EE758 = v7;
  }

  os_unfair_lock_unlock(&unk_27E1EE760);

  return *&v5;
}

double sub_23C0AC194(uint64_t a1, uint64_t a2)
{
  v15[8] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v14[0] = &unk_284EDFC68;
  v14[1] = &unk_284EDFC80;
  v15[0] = &unk_284EDFE30;
  v15[1] = &unk_284EDFE40;
  v14[2] = &unk_284EDFC98;
  v14[3] = &unk_284EDFCB0;
  v15[2] = &unk_284EDFE50;
  v15[3] = &unk_284EDFE60;
  v14[4] = &unk_284EDFCC8;
  v14[5] = &unk_284EDFCE0;
  v15[4] = &unk_284EDFE60;
  v15[5] = &unk_284EDFE70;
  v14[6] = &unk_284EDFCF8;
  v14[7] = &unk_284EDFD10;
  v15[6] = &unk_284EDFE80;
  v15[7] = &unk_284EDFE90;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:8];
  [v2 scaledValue:v3 withOverrides:70.0];
  v5 = v4;

  v12[0] = &unk_284EDFC68;
  v12[1] = &unk_284EDFC80;
  v13[0] = &unk_284EDFEA0;
  v13[1] = &unk_284EDFEB0;
  v12[2] = &unk_284EDFC98;
  v12[3] = &unk_284EDFCB0;
  v13[2] = &unk_284EDFEC0;
  v13[3] = &unk_284EDFED0;
  v12[4] = &unk_284EDFCC8;
  v12[5] = &unk_284EDFCE0;
  v13[4] = &unk_284EDFEE0;
  v13[5] = &unk_284EDFEF0;
  v12[6] = &unk_284EDFCF8;
  v12[7] = &unk_284EDFD10;
  v13[6] = &unk_284EDFF00;
  v13[7] = &unk_284EDFF10;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:8];
  [v2 scaledValue:v6 withOverrides:93.5];

  v10[0] = &unk_284EDFC68;
  v10[1] = &unk_284EDFC80;
  v11[0] = &unk_284EDFF20;
  v11[1] = &unk_284EDFF30;
  v10[2] = &unk_284EDFC98;
  v10[3] = &unk_284EDFCB0;
  v11[2] = &unk_284EDFF40;
  v11[3] = &unk_284EDFF50;
  v10[4] = &unk_284EDFCC8;
  v10[5] = &unk_284EDFCE0;
  v11[4] = &unk_284EDFF60;
  v11[5] = &unk_284EDFF70;
  v10[6] = &unk_284EDFCF8;
  v10[7] = &unk_284EDFD10;
  v11[6] = &unk_284EDFF80;
  v11[7] = &unk_284EDFF90;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:8];
  [v2 scaledValue:v7 withOverrides:147.0];

  v8 = *MEMORY[0x277D85DE8];
  return v5 * 0.9;
}

uint64_t sub_23C0AC544()
{
  qword_27E1EE778 = objc_alloc_init(MEMORY[0x277D2BFD0]);

  return MEMORY[0x2821F96F8]();
}