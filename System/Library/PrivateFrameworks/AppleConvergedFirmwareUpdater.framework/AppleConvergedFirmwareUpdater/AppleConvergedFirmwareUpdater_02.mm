void sub_2402CC40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  ACFURTKitROM::init((v11 + 8), (v10 + 8));
  _Unwind_Resume(a1);
}

ACFUROM *ACFURTKitROM::create@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _WORD *a4@<X3>, ACFUROM **a5@<X8>)
{
  v10 = operator new(0x40uLL);
  ACFUROM::ACFUROM(v10);
  *v10 = &unk_28522F210;
  *(v10 + 30) = 0;
  v11 = *a1;
  v12 = a1[1];
  v28[0] = v11;
  v28[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a2;
  v14 = a2[1];
  v27[0] = v13;
  v27[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *a3;
  v16 = a3[1];
  v26[0] = v15;
  v26[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = ACFURTKitROM::init(v10, v28, v27, v26, a4);
  v18 = v17;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v18)
  {
    *a5 = v10;
    result = operator new(0x20uLL);
    *result = &unk_28522F278;
    *(result + 1) = 0;
    *(result + 2) = 0;
    *(result + 3) = v10;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to initialize RTKitROM object\n", v21, v22, v23, v24, v25, "ACFURTKitROM");
    (*(*v10 + 48))(v10);
    result = 0;
    *a5 = 0;
  }

  a5[1] = result;
  return result;
}

void sub_2402CC5C0(_Unwind_Exception *a1)
{
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (!v3)
    {
LABEL_3:
      if (!v2)
      {
LABEL_8:
        (*(*v1 + 48))(v1);
        _Unwind_Resume(a1);
      }

LABEL_7:
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      goto LABEL_8;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  if (!v2)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ACFURTKitROM::gatherPersonalizationParameters(ACFURTKitROM *this@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 1) == 0 && (v5 = (*(**(this + 1) + 32))(*(this + 1)), v5))
  {
    v9 = v5;
    ACFURTKitROM::gatherPersonalizationParameters(v5);
    v8 = 0;
  }

  else
  {
    v6 = (***(this + 1))(&v16);
    v8 = v16;
    v7 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v17;
      v9 = v18;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }
    }

    else
    {
      v9 = v18;
    }

    LogInstance = ACFULogging::getLogInstance(v6);
    if (v9)
    {
      ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get board params (%d)\n", v11, v12, v13, v14, v15, "ACFURTKitROM");
    }

    else
    {
      ACFULogging::handleMessage(LogInstance, 3u, "%s::%s: Successfully gathered personalization parameters\n", v11, v12, v13, v14, v15, "ACFURTKitROM");
    }

    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      *a3 = v8;
      *(a3 + 8) = v7;
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a3 + 16) = v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      return;
    }
  }

  *a3 = v8;
  *(a3 + 8) = 0;
  *(a3 + 16) = v9;
}

void sub_2402CC7B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFURTKitROM::updateFirmware(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 3u, "%s::%s: firmware is not present! Trying to find firmware from restore options...\n", v6, v7, v8, v9, v10, "ACFURTKitROM");
  v11 = (a1 + 24);
  v12 = (***(a1 + 24))();
  if (v12)
  {
    v27 = v12;
    ACFURTKitROM::updateFirmware(v12);
    goto LABEL_56;
  }

  (*(**(a1 + 24) + 8))(*(a1 + 24));
  if (*(a1 + 60) != 1)
  {
    goto LABEL_6;
  }

  v13 = (*(**v11 + 32))();
  if (!v13)
  {
    ACFURTKitROM::updateFirmware(0);
LABEL_67:
    v27 = 1002;
    goto LABEL_56;
  }

  v14 = v13;
  if (CFDataGetLength(v13) != 8)
  {
    ACFURTKitROM::updateFirmware(v14);
    goto LABEL_67;
  }

  v15 = *CFDataGetBytePtr(v14);
  CFRelease(v14);
  v17 = ACFULogging::getLogInstance(v16);
  ACFULogging::handleMessage(v17, 3u, "%s::%s: Has valid boot nonce? %s\n", v18, v19, v20, v21, v22, "ACFURTKitROM");
  if (!v15)
  {
    if (*(a1 + 60))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_6:
  LOBYTE(v15) = 1;
LABEL_7:
  if ((*(a1 + 61) & 1) == 0)
  {
    v23 = (*(**(a1 + 8) + 32))(*(a1 + 8));
    if (v23)
    {
      v27 = v23;
      ACFURTKitROM::updateFirmware(v23);
      goto LABEL_56;
    }
  }

LABEL_9:
  v24 = *(a1 + 16);
  v94 = *(a1 + 8);
  v95 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = *(a1 + 32);
  v92 = *(a1 + 24);
  v93 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = *(a3 + 24);
  if (!v26)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v27 = (*(*v26 + 48))(v26, &v94, &v92);
  if (v93)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v93);
  }

  v28 = v95;
  if (v95)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v95);
  }

  v29 = ACFULogging::getLogInstance(v28);
  if (v27)
  {
    ACFULogging::handleMessage(v29, 2u, "%s::%s: failed to perform preBoot actions (%d)\n", v30, v31, v32, v33, v34, "ACFURTKitROM");
    goto LABEL_56;
  }

  ACFULogging::handleMessage(v29, 0, "%s::%s: booting firmware...\n", v30, v31, v32, v33, v34, "ACFURTKitROM");
  v35 = ACFURTKitROM::bootFirmware(a1, (v15 ^ 1) & *(a1 + 60));
  if (v35)
  {
    v27 = v35;
    ACFURTKitROM::updateFirmware(v35, a1, (a1 + 24));
    goto LABEL_56;
  }

  if (v15 & 1 | ((*(a1 + 60) & 1) == 0))
  {
    goto LABEL_42;
  }

  v36 = (***(a1 + 8))(&v89);
  v27 = v91;
  if (v91)
  {
    v67 = ACFULogging::getLogInstance(v36);
    ACFULogging::handleMessage(v67, 2u, "%s::%s: failed to get board parameters (%d)\n", v68, v69, v70, v71, v72, "ACFURTKitROM");
    v58 = 0;
    goto LABEL_39;
  }

  v38 = v89;
  v37 = v90;
  if (!v90)
  {
    if (*(v89 + 80) == 1)
    {
      v40 = 0;
      v41 = *v11;
      goto LABEL_30;
    }

LABEL_69:
    v73 = ACFULogging::getLogInstance(v37);
    ACFULogging::handleMessage(v73, 2u, "%s::%s: boot nonce is not present post boot. This is a failure.\n", v74, v75, v76, v77, v78, "ACFURTKitROM");
    v58 = 0;
    v27 = 2000;
    goto LABEL_39;
  }

  atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = *(v38 + 80);
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  if ((v39 & 1) == 0)
  {
    goto LABEL_69;
  }

  v38 = v89;
  v40 = v90;
  v41 = *v11;
  if (v90)
  {
    v42 = 0;
    atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_31;
  }

LABEL_30:
  v42 = 1;
LABEL_31:
  v43 = (*(*v41 + 16))(v41, *(v38 + 72));
  if ((v42 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (*(a1 + 61) != 1)
  {
    v27 = 0;
    goto LABEL_38;
  }

  v44 = ACFULogging::getLogInstance(v43);
  ACFULogging::handleMessage(v44, 0, "%s::%s: booting firmware one more time to make sure everything is good...\n", v45, v46, v47, v48, v49, "ACFURTKitROM");
  v50 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v27 = v50;
  if (v50)
  {
    v79 = ACFULogging::getLogInstance(v50);
    ACFULogging::handleMessage(v79, 2u, "%s::%s: failed to reset chip (%d)\n", v80, v81, v82, v83, v84, "ACFURTKitROM");
    goto LABEL_71;
  }

  v51 = ACFURTKitROM::bootFirmware(a1, 0);
  v27 = v51;
  if (!v51)
  {
LABEL_38:
    v58 = 1;
    goto LABEL_39;
  }

  v52 = ACFULogging::getLogInstance(v51);
  ACFULogging::handleMessage(v52, 2u, "%s::%s: failed to boot firmware post update (%d)\n", v53, v54, v55, v56, v57, "ACFURTKitROM");
LABEL_71:
  v58 = 0;
LABEL_39:
  if (v90)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v90);
  }

  if ((v58 & 1) == 0)
  {
    if (!v27)
    {
      return v27;
    }

    goto LABEL_56;
  }

LABEL_42:
  v59 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  if (v59)
  {
    v27 = v59;
    ACFURTKitROM::updateFirmware(v59);
  }

  else
  {
    v60 = *(a1 + 16);
    v87 = *(a1 + 8);
    v88 = v60;
    if (v60)
    {
      atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v61 = *(a1 + 32);
    v85 = *(a1 + 24);
    v86 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v62 = *(a3 + 56);
    if (!v62)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v27 = (*(*v62 + 48))(v62, &v87, &v85);
    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    if (v88)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88);
    }

    if (v27)
    {
      ACFURTKitROM::updateFirmware(v27);
    }

    else
    {
      v63 = (*(**v11 + 24))();
      v27 = v63;
      if (!v63)
      {
        return v27;
      }

      ACFURTKitROM::updateFirmware(v63);
    }
  }

LABEL_56:
  if (ACFUFirmware::getManifest(*v11))
  {
    v65 = *(a1 + 40);
    Manifest = ACFUFirmware::getManifest(*(a1 + 24));
    ACFUDiagnostics::addItem(v65, @"ticket.der", Manifest, 1);
  }

  return v27;
}

void sub_2402CCDCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if ((v21 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFURTKitROM::bootFirmware(ACFUFirmware **this, char a2)
{
  hasValidFirmware = ACFUFirmware::hasValidFirmware(this[3]);
  if (!hasValidFirmware)
  {
    ACFURTKitROM::bootFirmware(hasValidFirmware);
    return 1000;
  }

  if ((a2 & 1) == 0)
  {
    v5 = (*(*this[3] + 32))(this[3]);
    if (v5)
    {
      v6 = v5;
      v7 = this[1];
      BytePtr = CFDataGetBytePtr(v5);
      Length = CFDataGetLength(v6);
      v10 = (*(*v7 + 8))(v7, BytePtr, Length);
      CFRelease(v6);
      if (!v10)
      {
        goto LABEL_5;
      }

      ACFURTKitROM::bootFirmware(v10);
    }

    else
    {
      ACFURTKitROM::bootFirmware(0);
      return 1002;
    }

    return v10;
  }

LABEL_5:
  v11 = *(*this + 2);

  return v11(this);
}

uint64_t ACFURTKitROM::certifyChip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v98 = 0xDEADBEEFDEADBEEFLL;
  v97 = -8531;
  v96 = -8531;
  v7 = (***(a1 + 8))(&v93);
  if (v95)
  {
    LogInstance = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get board params (%d)\n", v58, v59, v60, v61, v62, "ACFURTKitROM");
    v18 = v95;
    goto LABEL_24;
  }

  v8 = v93;
  v9 = v94;
  if (v94)
  {
    atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v8[48] != 1)
  {
    v11 = 1;
    goto LABEL_13;
  }

  v10 = v94;
  if (v94)
  {
    atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v8[16] == 1)
  {
    v7 = v94;
    if (v94)
    {
      atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = v8[32] ^ 1;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = v8[32] ^ 1;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    goto LABEL_13;
  }

  v11 = 1;
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v11)
  {
    v12 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v12, 2u, "%s::%s: query command is missing chip ecid, chipId, or boardId\n", v13, v14, v15, v16, v17, "ACFURTKitROM");
    v18 = 3011;
    goto LABEL_24;
  }

  v19 = v93;
  v20 = v94;
  if (v94)
  {
    atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  DataAs = ACFUCommon::Parameter::GetDataAsType<unsigned short>((v19 + 24), &v96);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v96 == 57005 || !v96)
  {
    v22 = ACFULogging::getLogInstance(DataAs);
    ACFULogging::handleMessage(v22, 2u, "%s::%s: device with board id 0x%04x does not support certification\n", v23, v24, v25, v26, v27, "ACFURTKitROM");
    v18 = 1010;
    goto LABEL_24;
  }

  v31 = v93;
  v32 = v94;
  if (v94)
  {
    atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ACFUCommon::Parameter::GetDataAsType<unsigned short>((v31 + 8), &v97);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = v93;
  v34 = v94;
  if (v94)
  {
    atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ACFUCommon::Parameter::GetDataAsType<unsigned long long>((v33 + 40), &v98);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v35 = (***(a1 + 24))(*(a1 + 24), a4);
  v18 = v35;
  if (v35)
  {
    v63 = ACFULogging::getLogInstance(v35);
    ACFULogging::handleMessage(v63, 2u, "%s::%s: Could not create a valid firmware from restore options (%d).\n", v64, v65, v66, v67, v68, "ACFURTKitROM");
    goto LABEL_24;
  }

  v36 = ACFULogging::getLogInstance(v35);
  ACFULogging::handleMessage(v36, 0, "%s::%s: performing certification...\n", v37, v38, v39, v40, v41, "ACFURTKitROM");
  if (*(a2 + 32) == 2 && !*(a2 + 40))
  {
    v42 = *(a1 + 8);
    v43 = *(a1 + 32);
    v89 = *(a1 + 24);
    v90 = v43;
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v42 + 48))(&v91);
    v44 = v90;
    v45 = v91;
    v18 = v92;
    if (v90)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v90);
    }

    if (v18)
    {
      v81 = ACFULogging::getLogInstance(v44);
      ACFULogging::handleMessage(v81, 2u, "%s::%s: failed to collect sik public key (%d)\n", v82, v83, v84, v85, v86, "ACFURTKitROM");
      goto LABEL_24;
    }

    *(a2 + 40) = v45;
  }

  if (!*(a2 + 48))
  {
    v46 = *(a1 + 8);
    v47 = *(a1 + 32);
    v87 = *(a1 + 24);
    v88 = v47;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v46 + 48))(&v91);
    v48 = v91;
    v18 = v92;
    v49 = v88;
    if (v88)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88);
    }

    if (v18)
    {
      v75 = ACFULogging::getLogInstance(v49);
      ACFULogging::handleMessage(v75, 2u, "%s::%s: failed to collect sik csr blob (%d)\n", v76, v77, v78, v79, v80, "ACFURTKitROM");
      goto LABEL_24;
    }

    *(a2 + 48) = v48;
  }

  if (*(a2 + 64) == 1 && !*(a2 + 56))
  {
    v56 = (*(*a1 + 56))(a1, *(a2 + 72));
    *(a2 + 56) = v56;
    if (!v56)
    {
      v18 = 0;
      goto LABEL_24;
    }

    v50 = 1;
  }

  else
  {
    v50 = 0;
  }

  v51 = *(a2 + 40);
  if (v51)
  {
    ACFUDiagnostics::addItem(*(a1 + 40), @"sikPubKey.bin", v51, 1);
  }

  v52 = *(a2 + 48);
  if (v52)
  {
    ACFUDiagnostics::addItem(*(a1 + 40), @"sikCSR.bin", v52, 1);
  }

  v53 = *(a2 + 56);
  if (v53)
  {
    ACFUDiagnostics::addItem(*(a1 + 40), @"sikManifestSigCert.bin", v53, 1);
  }

  v54 = ACFUFDR::certifyChip(a2, v97, v98, v96);
  if (v54)
  {
    v18 = 0;
    if (!v50)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v69 = ACFULogging::getLogInstance(v54);
    ACFULogging::handleMessage(v69, 2u, "%s::%s: failed to perform FDR certification\n", v70, v71, v72, v73, v74, "ACFURTKitROM");
    v18 = 1011;
    if (!v50)
    {
      goto LABEL_24;
    }
  }

  v55 = *(a2 + 56);
  if (v55)
  {
    CFRelease(v55);
    *(a2 + 56) = 0;
  }

LABEL_24:
  v28 = *(a2 + 48);
  if (v28)
  {
    CFRelease(v28);
    *(a2 + 48) = 0;
  }

  v29 = *(a2 + 40);
  if (v29)
  {
    CFRelease(v29);
    *(a2 + 40) = 0;
  }

  if (v94)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v94);
  }

  return v18;
}

void sub_2402CD4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void ACFURTKitROM::~ACFURTKitROM(ACFURTKitROM *this)
{
  ACFUROM::~ACFUROM(this);

  operator delete(v1);
}

ACFULogging *ACFURTKitROM::copyManifestSigCert(ACFURTKitROM *this, CFDataRef theData)
{
  v42 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  memset(v28, 0, sizeof(v28));
  if (!theData)
  {
    ACFURTKitROM::copyManifestSigCert(this);
LABEL_24:
    v10 = 0;
    goto LABEL_15;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (!BytePtr)
  {
    ACFURTKitROM::copyManifestSigCert(0);
    goto LABEL_24;
  }

  v4 = BytePtr;
  Length = CFDataGetLength(theData);
  if (!Length)
  {
    ACFURTKitROM::copyManifestSigCert(0);
    goto LABEL_24;
  }

  v6 = Length;
  inited = Img4DecodeInitManifest(v4, Length, v28);
  if (inited)
  {
    ACFURTKitROM::copyManifestSigCert(inited);
    goto LABEL_24;
  }

  v8 = *(&v29 + 1) + v30;
  if (*(&v29 + 1) + v30 <= v4)
  {
    ACFURTKitROM::copyManifestSigCert(inited);
    goto LABEL_24;
  }

  if (v8 >= v4 + v6)
  {
    ACFURTKitROM::copyManifestSigCert(inited);
    goto LABEL_24;
  }

  v9 = v4 - v8 + v6;
  if (!v9)
  {
    ACFURTKitROM::copyManifestSigCert(inited);
    goto LABEL_24;
  }

  v10 = CFDataCreate(*MEMORY[0x277CBECE8], (*(&v29 + 1) + v30), v9);
  LogInstance = ACFULogging::getLogInstance(v10);
  v17 = LogInstance;
  if (!v10)
  {
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create data\n", v12, v13, v14, v15, v16, "ACFURTKitROM");
    goto LABEL_24;
  }

  *(&v24.__r_.__value_.__s + 23) = 12;
  strcpy(&v24, "ACFURTKitROM");
  v18 = std::string::append(&v24, "::");
  v19 = *&v18->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v25, "copyManifestSigCert");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v27 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageBinary(v17, __p, 4, v8, v9, 0);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_2402CD7EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<ACFURTKitROM  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ACFURTKitROM  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ACFURTKitROM  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__CFDictionary *ACFURestoreHost::getTags(ACFURestoreHost *this)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    ArrayFromList = ACFURestoreHost::createArrayFromList(this + 5);
    if (ArrayFromList)
    {
      v4 = ArrayFromList;
      v5 = ACFURestoreHost::createArrayFromList(this + 14);
      if (v5)
      {
        v6 = v5;
        Value = CFDictionaryGetValue(*(this + 2), @"DeviceInfo");
        if (Value && (v8 = CFGetTypeID(Value), v8 == CFDictionaryGetTypeID()))
        {
          CFDictionaryAddValue(Mutable, @"BuildIdentityTags", v4);
          CFDictionaryAddValue(Mutable, @"ResponseTags", v6);
          LogInstance = ACFULogging::getLogInstance(v9);
          std::string::basic_string[abi:ne200100]<0>(&v16, "ACFURestoreHost");
          v11 = std::string::append(&v16, "::");
          v12 = *&v11->__r_.__value_.__l.__data_;
          v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
          *&v17.__r_.__value_.__l.__data_ = v12;
          v11->__r_.__value_.__l.__size_ = 0;
          v11->__r_.__value_.__r.__words[2] = 0;
          v11->__r_.__value_.__r.__words[0] = 0;
          v13 = std::string::append(&v17, "getTags");
          v14 = *&v13->__r_.__value_.__l.__data_;
          v19 = v13->__r_.__value_.__r.__words[2];
          *__p = v14;
          v13->__r_.__value_.__l.__size_ = 0;
          v13->__r_.__value_.__r.__words[2] = 0;
          v13->__r_.__value_.__r.__words[0] = 0;
          ACFULogging::handleMessageCFType(LogInstance, __p, 0, "Request Tags:", Mutable);
          if (SHIBYTE(v19) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v17.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v16.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v20, "getTags: failed to get device info list");
          ACFUError::addError(this + 24, v20, 0xFA1uLL, 0);
          ACFURestoreHost::getTags(v20);
        }

        CFRelease(v6);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v21, "getTags: failed to create response tag list");
        ACFUError::addError(this + 24, v21, 0xFA0uLL, 0);
        ACFURestoreHost::getTags(v21);
      }

      CFRelease(v4);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "getTags: failed to create build identity tag list");
      ACFUError::addError(this + 24, v22, 0xFA0uLL, 0);
      ACFURestoreHost::getTags(v22);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v23, "getTags: failed to allocate output dictionary");
    ACFUError::addError(this + 24, v23, 0xFA0uLL, 0);
    ACFURestoreHost::getTags(v23);
  }

  return Mutable;
}

void sub_2402CDB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef ACFURestoreHost::createArrayFromList(const void ***a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v4 = Mutable;
    for (i = *a1; i != a1[1]; ++i)
    {
      v6 = *i;
      CFArrayAppendValue(v4, v6);
    }

    Copy = CFArrayCreateCopy(v2, v4);
    CFRelease(v4);
    return Copy;
  }

  else
  {
    ACFURestoreHost::createArrayFromList(0);
    return 0;
  }
}

const __CFData *ACFURestoreHost::copyFirmware(ACFURestoreHost *this)
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Firmware/%@/Rooted/ftab.bin", *(this + 28));
  if (!v3)
  {
    ACFURestoreHost::copyFirmware(0);
    return 0;
  }

  v4 = v3;
  v5 = CFDictionaryGetValue(*(this + 2), @"DestBundlePath");
  v6 = v5;
  if (v5)
  {
    LogInstance = ACFULogging::getLogInstance(v5);
    v8 = std::string::basic_string[abi:ne200100]<0>(&v186, "ACFURestoreHost");
    v9 = std::string::append(v8, "::");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v187.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v187.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v187, "copyFirmware");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v188.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v188.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(LogInstance, &v188, 0, "personalizedURL: ", v6);
    if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v188.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v187.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v186.__r_.__value_.__l.__data_);
    }
  }

  v13 = CFDictionaryContainsKey(*(this + 2), @"BundleDataDict");
  v14 = v13;
  v15 = ACFULogging::getLogInstance(v13);
  if (!v14)
  {
    ACFULogging::handleMessage(v15, 0, "%s::%s: running host invoked restore info -- using bundleURL\n", v16, v17, v18, v19, v20, "ACFURestoreHost");
    Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      ACFURestoreHost::copyFirmware(0);
      goto LABEL_174;
    }

    v33 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v33)
    {
      ACFURestoreHost::copyFirmware(0);
      goto LABEL_174;
    }

    v25 = v33;
    v34 = CFDictionaryGetValue(*(this + 2), @"BundlePath");
    if (!v34 || (v35 = v34, v36 = CFURLGetTypeID(), v36 != CFGetTypeID(v35)))
    {
      std::string::basic_string[abi:ne200100]<0>(v184, "copyFirmware: failed to get src bundle URL");
      ACFUError::addError(this + 24, v184, 0xFA1uLL, 0);
      ACFURestoreHost::copyFirmware(v184);
      v30 = 0;
LABEL_19:
      v32 = v4;
LABEL_161:
      CFRelease(v32);
      goto LABEL_162;
    }

    v37 = CFDictionaryGetValue(*(this + 2), @"Options");
    v162 = v4;
    if (v37 && (v39 = v37, v40 = CFGetTypeID(v37), v40 == CFDictionaryGetTypeID()))
    {
      cf.__r_.__value_.__r.__words[0] = 0;
      v41 = CFDictionaryGetValue(v39, @"ACFUFirmware");
      if (v41)
      {
        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(v41))
        {
          if (v6)
          {
            AMSupportCopyURLWithAppendedComponent();
            std::string::basic_string[abi:ne200100]<0>(v183, "copyFirmware: failed to create personalized rooted FW URL");
            ACFUError::addError(this + 24, v183, 0xFA0uLL, 0);
            ACFURestoreHost::copyFirmware(v183);
LABEL_181:
            v30 = 0;
            goto LABEL_19;
          }

          URLFromString = AMSupportCreateURLFromString();
          if (!URLFromString)
          {
            std::string::basic_string[abi:ne200100]<0>(v182, "copyFirmware: failed to create src rooted FW URL");
            ACFUError::addError(this + 24, v182, 0xFA0uLL, 0);
            ACFURestoreHost::copyFirmware(v182);
            goto LABEL_181;
          }

          v44 = URLFromString;
          CFDictionaryAddValue(Mutable, *(this + 1), URLFromString);
          CFDictionaryAddValue(v25, *(this + 1), v44);
          CFRelease(v44);
        }
      }

      v161 = v41 != 0;
    }

    else
    {
      v161 = 0;
    }

    v45 = *(this + 17);
    if (v45 != *(this + 18))
    {
      v46 = 0;
      while (1)
      {
        v180 = 0;
        value = 0;
        PathFromBuildID = ACFURestoreHost::getPathFromBuildID(*(this + 2), *v45, v38);
        ACFUCommon::stringFromCFString(*v45, &v188);
        if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v188.__r_.__value_.__l.__size_)
          {
            std::string::__init_copy_ctor_external(&v187, v188.__r_.__value_.__l.__data_, v188.__r_.__value_.__l.__size_);
            goto LABEL_43;
          }
        }

        else if (*(&v188.__r_.__value_.__s + 23))
        {
          v187 = v188;
          goto LABEL_43;
        }

        v48 = std::string::basic_string[abi:ne200100]<0>(&v187, "UNDEF");
LABEL_43:
        if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v188.__r_.__value_.__l.__data_);
        }

        v188 = v187;
        if (PathFromBuildID)
        {
          if (v6)
          {
            if (AMSupportCopyURLWithAppendedComponent() || !v180)
            {
              std::string::basic_string[abi:ne200100]<0>(v175, "copyFirmware: failed to create personalized FW URL");
              v83 = ACFUError::addError(this + 24, v175, 0xFA0uLL, 0);
              if (v176 < 0)
              {
                operator delete(v175[0]);
              }

              v84 = ACFULogging::getLogInstance(v83);
              ACFULogging::handleMessage(v84, 2u, "%s::%s: copyFirmware: failed to create personalized FW URL (status: %d)\n", v85, v86, v87, v88, v89, "ACFURestoreHost");
              goto LABEL_76;
            }

            doesPathExist = ACFUCommon::doesPathExist(v180, v49);
            if (doesPathExist)
            {
              v51 = ACFULogging::getLogInstance(doesPathExist);
              std::string::basic_string[abi:ne200100]<0>(&cf, "ACFURestoreHost");
              v52 = std::string::append(&cf, "::");
              v53 = *&v52->__r_.__value_.__l.__data_;
              v186.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
              *&v186.__r_.__value_.__l.__data_ = v53;
              v52->__r_.__value_.__l.__size_ = 0;
              v52->__r_.__value_.__r.__words[2] = 0;
              v52->__r_.__value_.__r.__words[0] = 0;
              v54 = std::string::append(&v186, "copyFirmware");
              v55 = *&v54->__r_.__value_.__l.__data_;
              v187.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
              *&v187.__r_.__value_.__l.__data_ = v55;
              v54->__r_.__value_.__l.__size_ = 0;
              v54->__r_.__value_.__r.__words[2] = 0;
              v54->__r_.__value_.__r.__words[0] = 0;
              ACFULogging::handleMessageCFType(v51, &v187, 0, "Firmware Object: ", *v45);
              if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v187.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v186.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(cf.__r_.__value_.__l.__data_);
              }

              v57 = ACFULogging::getLogInstance(v56);
              std::string::basic_string[abi:ne200100]<0>(&cf, "ACFURestoreHost");
              v58 = std::string::append(&cf, "::");
              v59 = *&v58->__r_.__value_.__l.__data_;
              v186.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
              *&v186.__r_.__value_.__l.__data_ = v59;
              v58->__r_.__value_.__l.__size_ = 0;
              v58->__r_.__value_.__r.__words[2] = 0;
              v58->__r_.__value_.__r.__words[0] = 0;
              v60 = std::string::append(&v186, "copyFirmware");
              v61 = *&v60->__r_.__value_.__l.__data_;
              v187.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
              *&v187.__r_.__value_.__l.__data_ = v61;
              v60->__r_.__value_.__l.__size_ = 0;
              v60->__r_.__value_.__r.__words[2] = 0;
              v60->__r_.__value_.__r.__words[0] = 0;
              ACFULogging::handleMessageCFType(v57, &v187, 0, "Personalized Bundle FW URL: ", v180);
              if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v187.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v186.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(cf.__r_.__value_.__l.__data_);
              }

              v46 = 1;
            }

            else if (v180)
            {
              CFRelease(v180);
              v46 = 0;
              v180 = 0;
            }

            else
            {
              v46 = 0;
            }
          }

          if (AMSupportCopyURLWithAppendedComponent() || !value)
          {
            std::string::basic_string[abi:ne200100]<0>(v173, "copyFirmware: failed to create default FW URL");
            v76 = ACFUError::addError(this + 24, v173, 0xFA0uLL, 0);
            if (v174 < 0)
            {
              operator delete(v173[0]);
            }

            v77 = ACFULogging::getLogInstance(v76);
            ACFULogging::handleMessage(v77, 2u, "%s::%s: copyFirmware: failed to create default FW URL, (status: %d)\n", v78, v79, v80, v81, v82, "ACFURestoreHost");
LABEL_76:
            v67 = 4;
            goto LABEL_86;
          }

          if (v46)
          {
            v75 = v180;
          }

          else
          {
            v75 = value;
          }

          CFDictionaryAddValue(Mutable, *v45, v75);
          CFDictionaryAddValue(v25, *v45, value);
          if (value)
          {
            CFRelease(value);
            v67 = 0;
            value = 0;
          }

          else
          {
            v67 = 0;
          }
        }

        else
        {
          if (*(v45 + 8) != 1)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "copyFirmware: failed to find FW");
            v68 = ACFUError::addError(this + 24, __p, 0xFA1uLL, 0);
            if (v178 < 0)
            {
              operator delete(__p[0]);
            }

            v69 = ACFULogging::getLogInstance(v68);
            ACFULogging::handleMessage(v69, 2u, "%s::%s: copyFirmware: failed to find FW (%s) in build ID\n", v70, v71, v72, v73, v74, "ACFURestoreHost");
            goto LABEL_76;
          }

          v62 = ACFULogging::getLogInstance(v48);
          std::string::basic_string[abi:ne200100]<0>(&cf, "ACFURestoreHost");
          v63 = std::string::append(&cf, "::");
          v64 = *&v63->__r_.__value_.__l.__data_;
          v186.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
          *&v186.__r_.__value_.__l.__data_ = v64;
          v63->__r_.__value_.__l.__size_ = 0;
          v63->__r_.__value_.__r.__words[2] = 0;
          v63->__r_.__value_.__r.__words[0] = 0;
          v65 = std::string::append(&v186, "copyFirmware");
          v66 = *&v65->__r_.__value_.__l.__data_;
          v187.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
          *&v187.__r_.__value_.__l.__data_ = v66;
          v65->__r_.__value_.__l.__size_ = 0;
          v65->__r_.__value_.__r.__words[2] = 0;
          v65->__r_.__value_.__r.__words[0] = 0;
          ACFULogging::handleMessageCFType(v62, &v187, 0, "skipping optional file...", *v45);
          if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v187.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v186.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(cf.__r_.__value_.__l.__data_);
          }

          v67 = 29;
        }

LABEL_86:
        if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v188.__r_.__value_.__l.__data_);
          if (!v67)
          {
            goto LABEL_91;
          }
        }

        else if (!v67)
        {
          goto LABEL_91;
        }

        if (v67 != 29)
        {
          v30 = 0;
          goto LABEL_160;
        }

LABEL_91:
        v45 += 16;
        if (v45 == *(this + 18))
        {
          goto LABEL_100;
        }
      }
    }

    v46 = 0;
LABEL_100:
    v90 = (*(*this + 40))(this, Mutable, 0);
    v30 = v90;
    if (v90)
    {
      v91 = HIDWORD(v161);
    }

    else
    {
      v91 = HIDWORD(v161);
      if (v46)
      {
        v92 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v92, 0, "%s::%s: attempting copyFirmwareUpdater again with source bundle file map\n", v93, v94, v95, v96, v97, "ACFURestoreHost");
        v90 = (*(*this + 40))(this, v25, 0);
        v30 = v90;
      }

      if (!v30)
      {
        std::string::basic_string[abi:ne200100]<0>(v171, "copyFirmware: updater failed to find firmware data with bundleURL");
        v151 = ACFUError::addError(this + 24, v171, 0xFA0uLL, 0);
        v30 = 0;
        v152 = "%s::%s: updater failed to find firmware data with bundleURL\n";
        if (v172 < 0)
        {
          v153 = v171;
          goto LABEL_168;
        }

        goto LABEL_169;
      }
    }

    v98 = !v161;
    if (!v6)
    {
      v98 = 1;
    }

    if (((v91 | v98) & 1) == 0)
    {
      v99 = ACFULogging::getLogInstance(v90);
      ACFULogging::handleMessage(v99, 0, "%s::%s: copying preflighted rooted firmware into the dst bundle...\n", v100, v101, v102, v103, v104, "ACFURestoreHost");
      v90 = ACFURestoreHost::copyToPersonalizedBundlePath(v105, *(this + 2), v162, v30);
      if (v90)
      {
        std::string::basic_string[abi:ne200100]<0>(v169, "copyFirmware: failed to perform destination bundle copy of rooted firmware");
        v151 = ACFUError::addError(this + 24, v169, 0xFA3uLL, 0);
        v152 = "%s::%s: failed to perform destination bundle copy of rooted firmware\n";
        if (v170 < 0)
        {
          v153 = v169;
LABEL_168:
          operator delete(*v153);
        }

LABEL_169:
        v155 = ACFULogging::getLogInstance(v151);
        ACFULogging::handleMessage(v155, 2u, v152, v156, v157, v158, v159, v160, "ACFURestoreHost");
LABEL_160:
        v32 = v162;
        goto LABEL_161;
      }
    }

    if ((v6 == 0) | v46 & 1)
    {
      if (v46)
      {
        v106 = ACFULogging::getLogInstance(v90);
        ACFULogging::handleMessage(v106, 0, "%s::%s: removing any personalized bits of bundle firmware\n", v107, v108, v109, v110, v111, "ACFURestoreHost");
        v112 = *(this + 17);
        if (v112 != *(this + 18))
        {
          while (1)
          {
            v113 = CFDictionaryGetValue(Mutable, *v112);
            if (v113 || *(v112 + 8) != 1)
            {
              if ((ACFUCommon::removeFileWithURL(v113, v114) & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(v163, "copyFirmware: failed to remove bundle fw personalized bits");
                v151 = ACFUError::addError(this + 24, v163, 0x3ECuLL, 0);
                v152 = "%s::%s: failed to remove bundle fw personalized bits\n";
                if (v164 < 0)
                {
                  v153 = v163;
                  goto LABEL_168;
                }

                goto LABEL_169;
              }
            }

            else
            {
              v115 = ACFULogging::getLogInstance(0);
              v116 = std::string::basic_string[abi:ne200100]<0>(&v186, "ACFURestoreHost");
              v117 = std::string::append(v116, "::");
              v118 = *&v117->__r_.__value_.__l.__data_;
              v187.__r_.__value_.__r.__words[2] = v117->__r_.__value_.__r.__words[2];
              *&v187.__r_.__value_.__l.__data_ = v118;
              v117->__r_.__value_.__l.__size_ = 0;
              v117->__r_.__value_.__r.__words[2] = 0;
              v117->__r_.__value_.__r.__words[0] = 0;
              v119 = std::string::append(&v187, "copyFirmware");
              v120 = *&v119->__r_.__value_.__l.__data_;
              v188.__r_.__value_.__r.__words[2] = v119->__r_.__value_.__r.__words[2];
              *&v188.__r_.__value_.__l.__data_ = v120;
              v119->__r_.__value_.__l.__size_ = 0;
              v119->__r_.__value_.__r.__words[2] = 0;
              v119->__r_.__value_.__r.__words[0] = 0;
              ACFULogging::handleMessageCFType(v115, &v188, 0, "skipping removal of optional file...", *v112);
              if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v188.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v187.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v186.__r_.__value_.__l.__data_);
              }
            }

            v112 += 16;
            if (v112 == *(this + 18))
            {
              goto LABEL_160;
            }
          }
        }
      }

      goto LABEL_160;
    }

    v121 = ACFULogging::getLogInstance(v90);
    ACFULogging::handleMessage(v121, 0, "%s::%s: copying preflighted bundle firmware into the dst bundle...\n", v122, v123, v124, v125, v126, "ACFURestoreHost");
    v128 = *(this + 17);
    if (v128 == *(this + 18))
    {
      goto LABEL_160;
    }

    while (1)
    {
      v129 = ACFURestoreHost::getPathFromBuildID(*(this + 2), *v128, v127);
      ACFUCommon::stringFromCFString(*v128, &v188);
      if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v188.__r_.__value_.__l.__size_)
        {
          std::string::__init_copy_ctor_external(&v187, v188.__r_.__value_.__l.__data_, v188.__r_.__value_.__l.__size_);
          goto LABEL_129;
        }
      }

      else if (*(&v188.__r_.__value_.__s + 23))
      {
        v187 = v188;
        goto LABEL_129;
      }

      v130 = std::string::basic_string[abi:ne200100]<0>(&v187, "UNDEF");
LABEL_129:
      if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v188.__r_.__value_.__l.__data_);
      }

      v188 = v187;
      if (v129)
      {
        if (!ACFURestoreHost::copyToPersonalizedBundlePath(v130, *(this + 2), v129, v30))
        {
          v131 = 0;
          goto LABEL_146;
        }

        std::string::basic_string[abi:ne200100]<0>(v165, "copyFirmware: failed to perform destination bundle copy of rooted firmware");
        v144 = ACFUError::addError(this + 24, v165, 0xFA3uLL, 0);
        if (v166 < 0)
        {
          operator delete(v165[0]);
        }

        v145 = ACFULogging::getLogInstance(v144);
        ACFULogging::handleMessage(v145, 2u, "%s::%s: failed to perform destination bundle copy of rooted firmware\n", v146, v147, v148, v149, v150, "ACFURestoreHost");
        goto LABEL_145;
      }

      if (*(v128 + 8) != 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v167, "copyFirmware: failed to find FW in personalized path");
        v137 = ACFUError::addError(this + 24, v167, 0xFA1uLL, 0);
        if (v168 < 0)
        {
          operator delete(v167[0]);
        }

        v138 = ACFULogging::getLogInstance(v137);
        ACFULogging::handleMessage(v138, 2u, "%s::%s: failed to find FW (%s) in build ID in personalized path\n", v139, v140, v141, v142, v143, "ACFURestoreHost");
LABEL_145:
        v131 = 4;
        goto LABEL_146;
      }

      v132 = ACFULogging::getLogInstance(v130);
      std::string::basic_string[abi:ne200100]<0>(&cf, "ACFURestoreHost");
      v133 = std::string::append(&cf, "::");
      v134 = *&v133->__r_.__value_.__l.__data_;
      v186.__r_.__value_.__r.__words[2] = v133->__r_.__value_.__r.__words[2];
      *&v186.__r_.__value_.__l.__data_ = v134;
      v133->__r_.__value_.__l.__size_ = 0;
      v133->__r_.__value_.__r.__words[2] = 0;
      v133->__r_.__value_.__r.__words[0] = 0;
      v135 = std::string::append(&v186, "copyFirmware");
      v136 = *&v135->__r_.__value_.__l.__data_;
      v187.__r_.__value_.__r.__words[2] = v135->__r_.__value_.__r.__words[2];
      *&v187.__r_.__value_.__l.__data_ = v136;
      v135->__r_.__value_.__l.__size_ = 0;
      v135->__r_.__value_.__r.__words[2] = 0;
      v135->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageCFType(v132, &v187, 0, "skipping copying of optional file...", *v128);
      if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v187.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v186.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(cf.__r_.__value_.__l.__data_);
      }

      v131 = 48;
LABEL_146:
      if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v188.__r_.__value_.__l.__data_);
        if (v131)
        {
LABEL_150:
          if (v131 != 48)
          {
            goto LABEL_160;
          }
        }
      }

      else if (v131)
      {
        goto LABEL_150;
      }

      v128 += 16;
      if (v128 == *(this + 18))
      {
        goto LABEL_160;
      }
    }
  }

  ACFULogging::handleMessage(v15, 0, "%s::%s: running device invoked restore info -- using bundleData\n", v16, v17, v18, v19, v20, "ACFURestoreHost");
  v21 = CFDictionaryGetValue(*(this + 2), @"BundleDataDict");
  if (v21 && (v22 = v21, v23 = CFDictionaryGetTypeID(), v21 = CFGetTypeID(v22), v23 == v21))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v2, 0, v22);
    if (MutableCopy)
    {
      v25 = MutableCopy;
      v26 = CFDictionaryGetValue(*(this + 2), @"FirmwareData");
      if (v26)
      {
        v27 = v26;
        v28 = CFDataGetTypeID();
        if (v28 == CFGetTypeID(v27))
        {
          CFDictionarySetValue(v25, *(this + 1), v27);
        }
      }

      v29 = (*(*this + 40))(this, v25, 1);
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v185, "copyFirmware: updater failed to find firmware data with bundleData");
        ACFUError::addError(this + 24, v185, 0xFA0uLL, 0);
        ACFURestoreHost::copyFirmware(v185);
        v30 = 0;
      }

      Mutable = 0;
      goto LABEL_19;
    }

    ACFURestoreHost::copyFirmware(0);
  }

  else
  {
    ACFURestoreHost::copyFirmware(v21);
  }

  Mutable = 0;
LABEL_174:
  v30 = 0;
  v25 = v4;
LABEL_162:
  CFRelease(v25);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v30;
}

void sub_2402CEE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

ACFULogging *ACFURestoreHost::getPathFromBuildID(ACFURestoreHost *this, const __CFDictionary *a2, const __CFString *a3)
{
  v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@.%@.%@.%@", @"BuildIdentity", a2, @"Info", @"Path");
  if (v3)
  {
    v4 = v3;
    ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
    if (ValueForKeyPathInDict)
    {
      TypeID = CFStringGetTypeID();
      if (TypeID != CFGetTypeID(ValueForKeyPathInDict))
      {
        ACFURestoreHost::getPathFromBuildID(ValueForKeyPathInDict);
      }
    }

    else
    {
      ACFURestoreHost::getPathFromBuildID(0);
    }

    CFRelease(v4);
  }

  else
  {
    ACFURestoreHost::getPathFromBuildID(0);
    return 0;
  }

  return ValueForKeyPathInDict;
}

uint64_t ACFURestoreHost::copyToPersonalizedBundlePath(ACFURestoreHost *this, CFDictionaryRef theDict, const __CFString *a3, const __CFData *a4)
{
  Value = CFDictionaryGetValue(theDict, @"DestBundlePath");
  if (Value && (v5 = Value, v6 = CFURLGetTypeID(), Value = CFGetTypeID(v5), v6 == Value))
  {
    v7 = *MEMORY[0x277CBECE8];
    v8 = AMSupportCopyURLWithAppendedComponent();
    if (v8)
    {
      ACFURestoreHost::copyToPersonalizedBundlePath(v8);
      return 4000;
    }

    v9 = MEMORY[0x245CBE680](0);
    if (v9)
    {
      ACFURestoreHost::copyToPersonalizedBundlePath(v9);
      return 1003;
    }

    v10 = AMSupportWriteDataToFileURL();
    if (v10)
    {
      ACFURestoreHost::copyToPersonalizedBundlePath(v10);
      return 1004;
    }

    doesPathExist = ACFUCommon::doesPathExist(0, v11);
    if (!doesPathExist)
    {
      ACFURestoreHost::copyToPersonalizedBundlePath(doesPathExist);
      return 1004;
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(Value);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: destination bundle was not specified, so we are skipping the copy step...\n", v14, v15, v16, v17, v18, "ACFURestoreHost");
  }

  return 0;
}

__CFDictionary *ACFURestoreHost::createRequest(uint64_t a1, CFDictionaryRef **a2, uint64_t a3)
{
  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    std::string::basic_string[abi:ne200100]<0>(v171, "createRequest: Failed to allocate output dictionary");
    ACFUError::addError(a1 + 24, v171, 0xFA0uLL, 0);
    ACFURestoreHost::createRequest(v171, (a1 + 24));
    return 0;
  }

  v7 = Mutable;
  v8 = *(a1 + 88);
  if (v8 != *(a1 + 96))
  {
    v9 = *MEMORY[0x277CBED28];
    do
    {
      v10 = *v8++;
      CFDictionaryAddValue(v7, v10, v9);
    }

    while (v8 != *(a1 + 96));
  }

  ACFUCommon::parseDebugArgs(*(a1 + 16), "validateDeviceId", &__s);
  v12 = __s.__r_.__value_.__r.__words[0];
  if (!__s.__r_.__value_.__r.__words[0])
  {
    LogInstance = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: skipping device identity validation against build identity\n", v14, v15, v16, v17, v18, "ACFURestoreHost");
  }

  v19 = CFDictionaryGetValue(*(a1 + 16), @"BuildIdentity");
  if (!v19 || (v20 = v19, TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(v20)))
  {
    std::string::basic_string[abi:ne200100]<0>(v170, "createRequest: Failed to get build identity dict from options");
    ACFUError::addError(a1 + 24, v170, 0xFA1uLL, 0);
    ACFURestoreHost::createRequest(v170);
    goto LABEL_124;
  }

  v22 = CFDictionaryGetValue(*(a1 + 16), @"DeviceInfo");
  if (!v22 || (v23 = v22, v24 = CFDictionaryGetTypeID(), v24 != CFGetTypeID(v23)))
  {
    std::string::basic_string[abi:ne200100]<0>(v169, "createRequest: Failed to get build identity dict from options");
    ACFUError::addError(a1 + 24, v169, 0xFA1uLL, 0);
    ACFURestoreHost::createRequest(v169);
    goto LABEL_124;
  }

  if (v12)
  {
    std::map<__CFString const*,unsigned long>::map[abi:ne200100](v168, a1 + 160);
    v25 = ACFURestoreHost::validateDeviceInfoAgainstBuildIdentity((a1 + 64), (a1 + 40), v23, v20, v168);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v168, v168[1]);
    if ((v25 & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v167, "createRequest: Failed to validate device identity tags");
      ACFUError::addError(a1 + 24, v167, 0xFA9uLL, 0);
      ACFURestoreHost::createRequest(v167);
      goto LABEL_124;
    }
  }

  std::map<__CFString const*,unsigned long>::map[abi:ne200100](v166, a1 + 160);
  v26 = ACFURestoreHost::populateDictFromIdentity((a1 + 40), v166, v20, v7);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v166, v166[1]);
  if ((v26 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v165, "createRequest: Failed to build parameters out of build identity");
    ACFUError::addError(a1 + 24, v165, 0xFA4uLL, 0);
    ACFURestoreHost::createRequest(v165);
    goto LABEL_124;
  }

  std::map<__CFString const*,unsigned long>::map[abi:ne200100](v164, a1 + 160);
  v27 = ACFURestoreHost::populateDictFromIdentity((a1 + 64), v164, v23, v7);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v164, v164[1]);
  if ((v27 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v163, "createRequest: Failed to build parameters out of device identity");
    ACFUError::addError(a1 + 24, v163, 0xFA4uLL, 0);
    ACFURestoreHost::createRequest(v163);
    goto LABEL_124;
  }

  if (*a3)
  {
    v29 = CFDictionaryGetValue(v23, *a3);
    if (!v29 || (v30 = v29, v31 = CFDataGetTypeID(), v28 = CFGetTypeID(v30), v31 != v28))
    {
      std::string::basic_string[abi:ne200100]<0>(v162, "createRequest: Production mode not present in device info. This is fatal!");
      ACFUError::addError(a1 + 24, v162, 0xFA1uLL, 0);
      ACFURestoreHost::createRequest(v162);
      goto LABEL_124;
    }
  }

  else
  {
    v30 = 0;
  }

  v32 = *(a3 + 8);
  if (v32)
  {
    v33 = CFDictionaryGetValue(v23, v32);
    if (!v33 || (v34 = v33, v35 = CFDataGetTypeID(), v28 = CFGetTypeID(v34), v35 != v28))
    {
      std::string::basic_string[abi:ne200100]<0>(v161, "createRequest: Security mode not present in device info. This is fatal!");
      ACFUError::addError(a1 + 24, v161, 0xFA1uLL, 0);
      ACFURestoreHost::createRequest(v161);
      goto LABEL_124;
    }
  }

  else
  {
    v34 = 0;
  }

  v140 = v34;
  v141 = v30;
  theDict = v23;
  v36 = *(a1 + 136);
  if (v36 != *(a1 + 144))
  {
    value = *MEMORY[0x277CBED28];
    do
    {
      ACFUCommon::stringFromCFString(*v36, &__s);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__s.__r_.__value_.__l.__size_)
        {
          std::string::__init_copy_ctor_external(&v159, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
          goto LABEL_33;
        }
      }

      else if (*(&__s.__r_.__value_.__s + 23))
      {
        v159 = __s;
        goto LABEL_33;
      }

      std::string::basic_string[abi:ne200100]<0>(&v159, "UNDEF");
LABEL_33:
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      __s = v159;
      v37 = CFDictionaryGetValue(v20, *v36);
      v38 = v37;
      if (!v37)
      {
        if (*(v36 + 8) == 1)
        {
          v41 = ACFULogging::getLogInstance(0);
          v47 = "%s::%s: optional tag %s missing from build identity, skipping\n";
          goto LABEL_42;
        }

LABEL_49:
        std::string::basic_string[abi:ne200100]<0>(__p, "createRequest: could not find FW in build ID");
        v53 = ACFUError::addError(a1 + 24, __p, 0x3EDuLL, 0);
        if (v158 < 0)
        {
          operator delete(__p[0]);
        }

        v54 = ACFULogging::getLogInstance(v53);
        v60 = "%s::%s: could not find FW (%s) in build ID\n";
LABEL_52:
        ACFULogging::handleMessage(v54, 2u, v60, v55, v56, v57, v58, v59, "ACFURestoreHost");
LABEL_53:
        v48 = 4;
        goto LABEL_72;
      }

      v39 = CFGetTypeID(v37);
      if (v39 != CFDictionaryGetTypeID())
      {
        goto LABEL_49;
      }

      if (*a2)
      {
        MeasureDataWithTag = ACFUFirmware::getMeasureDataWithTag(*a2, *v36);
        if (!MeasureDataWithTag)
        {
          v41 = ACFULogging::getLogInstance(0);
          v47 = "%s::%s: tag %s missing from firmware, skipping\n";
LABEL_42:
          ACFULogging::handleMessage(v41, 0, v47, v42, v43, v44, v45, v46, "ACFURestoreHost");
          v48 = 24;
          goto LABEL_72;
        }
      }

      else
      {
        MeasureDataWithTag = CFDictionaryGetValue(v38, @"Digest");
        if (!MeasureDataWithTag)
        {
          std::string::basic_string[abi:ne200100]<0>(v155, "createRequest: no digest in build ID");
          v86 = ACFUError::addError(a1 + 24, v155, 0x3EDuLL, 0);
          if (v156 < 0)
          {
            operator delete(v155[0]);
          }

          v54 = ACFULogging::getLogInstance(v86);
          v60 = "%s::%s: no digest in build ID (%s)\n";
          goto LABEL_52;
        }
      }

      v49 = CFGetTypeID(MeasureDataWithTag);
      if (v49 != CFDataGetTypeID())
      {
        std::string::basic_string[abi:ne200100]<0>(v153, "createRequest: wrong digest type");
        v64 = ACFUError::addError(a1 + 24, v153, 0x3EDuLL, 0);
        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        v54 = ACFULogging::getLogInstance(v64);
        v60 = "%s::%s: wrong digest type (%s)\n";
        goto LABEL_52;
      }

      v50 = CFDictionaryGetValue(v38, @"Trusted");
      v51 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v51)
      {
        std::string::basic_string[abi:ne200100]<0>(v151, "createRequest: failed to allocate internal data structure");
        v65 = ACFUError::addError(a1 + 24, v151, 0xFA0uLL, 0);
        if (v152 < 0)
        {
          operator delete(v151[0]);
        }

        v66 = ACFULogging::getLogInstance(v65);
        ACFULogging::handleMessage(v66, 2u, "%s::%s: failed to allocate internal data structure\n", v67, v68, v69, v70, v71, "ACFURestoreHost");
        goto LABEL_53;
      }

      if (*a3)
      {
        if (*(a3 + 16) == 1)
        {
          v52 = *std::map<__CFString const*,std::string>::at(a1 + 200, v36);
        }

        else
        {
          v52 = 0;
        }

        ACFURestoreHost::createBoolFromData(v141, &v159);
        if (v159.__r_.__value_.__s.__data_[8] == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v149, "createRequest: epro data to BOOLean conversion failure");
          v72 = ACFUError::addError(a1 + 24, v149, 0x3EDuLL, 0);
          if (v150 < 0)
          {
            operator delete(v149[0]);
          }

          v73 = ACFULogging::getLogInstance(v72);
          ACFULogging::handleMessage(v73, 2u, "%s::%s: epro data to BOOLean conversion failure\n", v74, v75, v76, v77, v78, "ACFURestoreHost");
          goto LABEL_53;
        }

        if (v52)
        {
          CFDictionaryAddValue(v51, @"DPRO", value);
          v61 = MEMORY[0x277CBED10];
        }

        else
        {
          v61 = &v159;
        }

        CFDictionaryAddValue(v51, @"EPRO", v61->__r_.__value_.__l.__data_);
      }

      if (*(a3 + 8))
      {
        if (*(a3 + 17) == 1)
        {
          v62 = *(std::map<__CFString const*,std::string>::at(a1 + 200, v36) + 1);
        }

        else
        {
          v62 = 0;
        }

        ACFURestoreHost::createBoolFromData(v140, &v159);
        if (v159.__r_.__value_.__s.__data_[8] == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v147, "createRequest: esec data to BOOLean conversion failure");
          v79 = ACFUError::addError(a1 + 24, v147, 0x3EDuLL, 0);
          if (v148 < 0)
          {
            operator delete(v147[0]);
          }

          v80 = ACFULogging::getLogInstance(v79);
          ACFULogging::handleMessage(v80, 2u, "%s::%s: esec data to BOOLean conversion failure\n", v81, v82, v83, v84, v85, "ACFURestoreHost");
          goto LABEL_53;
        }

        if (v62)
        {
          CFDictionaryAddValue(v51, @"DSEC", value);
          v63 = MEMORY[0x277CBED10];
        }

        else
        {
          v63 = &v159;
        }

        CFDictionaryAddValue(v51, @"ESEC", v63->__r_.__value_.__l.__data_);
      }

      CFDictionaryAddValue(v51, @"Digest", MeasureDataWithTag);
      if (v50)
      {
        CFDictionaryAddValue(v51, @"Trusted", v50);
      }

      CFDictionaryAddValue(v7, *v36, v51);
      CFRelease(v51);
      v48 = 0;
LABEL_72:
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
        if (v48)
        {
LABEL_76:
          if (v48 != 24)
          {
            goto LABEL_124;
          }
        }
      }

      else if (v48)
      {
        goto LABEL_76;
      }

      v36 += 16;
    }

    while (v36 != *(a1 + 144));
  }

  if (!*(a1 + 184))
  {
    goto LABEL_113;
  }

  v87 = CFDictionaryGetValue(*(a1 + 16), @"Options");
  if (v87 && (v88 = v87, v89 = CFDictionaryContainsKey(v87, @"TrustObjectDigest"), v89))
  {
    v90 = ACFULogging::getLogInstance(v89);
    ACFULogging::handleMessage(v90, 0, "%s::%s: Using FDR trust object hash in updater options override\n", v91, v92, v93, v94, v95, "ACFURestoreHost");
    v96 = CFDictionaryGetValue(v88, @"TrustObjectDigest");
    if (!v96 || (v97 = v96, v98 = CFDataGetTypeID(), v99 = CFGetTypeID(v97), v98 != v99))
    {
      std::string::basic_string[abi:ne200100]<0>(v146, "createRequest: Invalid FDR trust object hash in updater options override");
      ACFUError::addError(a1 + 24, v146, 0x3EDuLL, 0);
      ACFURestoreHost::createRequest(v146);
      goto LABEL_124;
    }
  }

  else
  {
    v100 = CFDictionaryContainsKey(theDict, @"ACFU,FDRTrustObjectHash");
    v101 = v100;
    v102 = ACFULogging::getLogInstance(v100);
    if (!v101)
    {
      ACFULogging::handleMessage(v102, 0, "%s::%s: Requesting FDR trust object hash\n", v103, v104, v105, v106, v107, "ACFURestoreHost");
      v117 = CFDataCreateMutable(allocator, 0);
      if (!v117)
      {
        std::string::basic_string[abi:ne200100]<0>(v144, "createRequest: Failed to create empty trust object hash");
        ACFUError::addError(a1 + 24, v144, 0xFA0uLL, 0);
        ACFURestoreHost::createRequest(v144);
        goto LABEL_124;
      }

      v118 = v117;
      CFDictionarySetValue(v7, *(a1 + 184), v117);
      CFRelease(v118);
      v97 = 0;
      goto LABEL_107;
    }

    ACFULogging::handleMessage(v102, 0, "%s::%s: Using FDR trust object hash in client updater override\n", v103, v104, v105, v106, v107, "ACFURestoreHost");
    v108 = CFDictionaryGetValue(theDict, @"ACFU,FDRTrustObjectHash");
    if (!v108 || (v97 = v108, v109 = CFDataGetTypeID(), v99 = CFGetTypeID(v97), v109 != v99))
    {
      std::string::basic_string[abi:ne200100]<0>(v145, "createRequest: Invalid FDR trust object hash in client updater override");
      ACFUError::addError(a1 + 24, v145, 0x3EDuLL, 0);
      ACFURestoreHost::createRequest(v145);
      goto LABEL_124;
    }
  }

  v110 = ACFULogging::getLogInstance(v99);
  ACFULogging::handleMessage(v110, 0, "%s::%s: Applying FDR trust object hash override\n", v111, v112, v113, v114, v115, "ACFURestoreHost");
  CFDictionarySetValue(v7, *(a1 + 184), v97);
LABEL_107:
  v119 = ACFULogging::getLogInstance(v116);
  std::string::basic_string[abi:ne200100]<0>(&v143, "ACFURestoreHost");
  v120 = std::string::append(&v143, "::");
  v121 = *&v120->__r_.__value_.__l.__data_;
  v159.__r_.__value_.__r.__words[2] = v120->__r_.__value_.__r.__words[2];
  *&v159.__r_.__value_.__l.__data_ = v121;
  v120->__r_.__value_.__l.__size_ = 0;
  v120->__r_.__value_.__r.__words[2] = 0;
  v120->__r_.__value_.__r.__words[0] = 0;
  v122 = std::string::append(&v159, "createRequest");
  v123 = *&v122->__r_.__value_.__l.__data_;
  __s.__r_.__value_.__r.__words[2] = v122->__r_.__value_.__r.__words[2];
  *&__s.__r_.__value_.__l.__data_ = v123;
  v122->__r_.__value_.__l.__size_ = 0;
  v122->__r_.__value_.__r.__words[2] = 0;
  v122->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v119, &__s, 4, "FDR Trust Object Digest: ", v97);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v159.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

LABEL_113:
  if (*(a1 + 192))
  {
    v28 = CFDictionaryGetValue(theDict, @"ACFU,FDRAllowUnsealed");
    if (v28)
    {
      v124 = v28;
      v125 = CFGetTypeID(v28);
      v28 = CFBooleanGetTypeID();
      if (v125 == v28)
      {
        v28 = CFBooleanGetValue(v124);
        if (v28)
        {
          v126 = ACFULogging::getLogInstance(v28);
          ACFULogging::handleMessage(v126, 0, "%s::%s: allowing unsealed FDR data\n", v127, v128, v129, v130, v131, "ACFURestoreHost");
          CFDictionaryAddValue(v7, *(a1 + 192), *MEMORY[0x277CBED28]);
        }
      }
    }
  }

  v132 = ACFULogging::getLogInstance(v28);
  std::string::basic_string[abi:ne200100]<0>(&v143, "ACFURestoreHost");
  v133 = std::string::append(&v143, "::");
  v134 = *&v133->__r_.__value_.__l.__data_;
  v159.__r_.__value_.__r.__words[2] = v133->__r_.__value_.__r.__words[2];
  *&v159.__r_.__value_.__l.__data_ = v134;
  v133->__r_.__value_.__l.__size_ = 0;
  v133->__r_.__value_.__r.__words[2] = 0;
  v133->__r_.__value_.__r.__words[0] = 0;
  v135 = std::string::append(&v159, "createRequest");
  v136 = *&v135->__r_.__value_.__l.__data_;
  __s.__r_.__value_.__r.__words[2] = v135->__r_.__value_.__r.__words[2];
  *&__s.__r_.__value_.__l.__data_ = v136;
  v135->__r_.__value_.__l.__size_ = 0;
  v135->__r_.__value_.__r.__words[2] = 0;
  v135->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v132, &__s, 0, "Request Dictionary:", v7);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v159.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

LABEL_124:
  if (ACFUError::hasError((a1 + 24)))
  {
    CFRelease(v7);
    return 0;
  }

  return v7;
}

void sub_2402CFF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ACFURestoreHost::validateDeviceInfoAgainstBuildIdentity(const __CFString ***a1, const __CFString ***a2, const __CFDictionary *a3, const __CFDictionary *a4, uint64_t a5)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
    v88 = 1;
    return v88 & 1;
  }

  cf2 = 0;
  cf = 0;
  v94 = (a5 + 8);
  while (1)
  {
    v10 = *a2;
    v11 = a2[1];
    if (*a2 != v11)
    {
      while (*v10 != *v5)
      {
        if (++v10 == v11)
        {
          goto LABEL_27;
        }
      }
    }

    if (v10 == v11)
    {
      goto LABEL_27;
    }

    ACFUCommon::stringFromCFString(*v5, &v100);
    Value = CFDictionaryGetValue(a3, *v5);
    if (!Value)
    {
      LogInstance = ACFULogging::getLogInstance(0);
      v27 = "%s::%s: tag '%s' not found in device info, skipping validation\n";
      goto LABEL_21;
    }

    v13 = CFDictionaryGetValue(a4, *v5);
    v14 = v13;
    if (!v13)
    {
      LogInstance = ACFULogging::getLogInstance(0);
      v27 = "%s::%s: tag '%s' not found in build identity, skipping validation\n";
      goto LABEL_21;
    }

    v15 = *v94;
    if (!*v94)
    {
      goto LABEL_18;
    }

    v16 = *v5;
    v17 = v94;
    do
    {
      v18 = v15[4];
      v19 = v18 >= v16;
      v20 = v18 < v16;
      if (v19)
      {
        v17 = v15;
      }

      v15 = v15[v20];
    }

    while (v15);
    if (v17 == v94 || v16 < v17[4])
    {
LABEL_18:
      LogInstance = ACFULogging::getLogInstance(v13);
      v27 = "%s::%s: tag '%s' not found in tss-request map, skipping validation\n";
LABEL_21:
      v28 = 3;
      ACFULogging::handleMessage(LogInstance, 3u, v27, v22, v23, v24, v25, v26, "ACFURestoreHost");
      v29 = 0;
      goto LABEL_22;
    }

    v91 = CFGetTypeID(Value);
    v90 = CFGetTypeID(v14);
    v30 = std::map<__CFString const*,std::string>::at(a5, v5);
    v31 = *v30;
    v32 = ACFULogging::getLogInstance(v30);
    ACFUCommon::cfTypeDescription(v91, 1, &v98);
    ACFUCommon::cfTypeDescription(v31, 1, &__p);
    ACFULogging::handleMessage(v32, 4u, "%s::%s: attempting to convert tag '%s' from device info type (%s) to tss-request map type (%s)\n", v33, v34, v35, v36, v37, "ACFURestoreHost");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v99) < 0)
    {
      operator delete(v98);
      if (!cf)
      {
        goto LABEL_36;
      }

LABEL_35:
      CFRelease(cf);
      goto LABEL_36;
    }

    if (cf)
    {
      goto LABEL_35;
    }

LABEL_36:
    v38 = ACFURestoreHost::convertCFType(Value, v31);
    cf = v38;
    if (v38)
    {
      v39 = ACFULogging::getLogInstance(v38);
      ACFUCommon::cfTypeDescription(v90, 1, &v98);
      ACFUCommon::cfTypeDescription(v31, 1, &__p);
      ACFULogging::handleMessage(v39, 4u, "%s::%s: attempting to convert tag '%s' from build identity type (%s) to tss-request map type (%s)\n", v40, v41, v42, v43, v44, "ACFURestoreHost");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99) < 0)
      {
        operator delete(v98);
      }

      if (cf2)
      {
        CFRelease(cf2);
      }

      cf2 = ACFURestoreHost::convertCFType(v14, v31);
      if (cf2)
      {
        v45 = CFEqual(cf, cf2);
        if (v45)
        {
          v28 = 0;
          v29 = 1;
          goto LABEL_22;
        }

        v58 = ACFULogging::getLogInstance(v45);
        ACFULogging::handleMessage(v58, 2u, "%s::%s: tag '%s' has different values in device info and build identity\n", v59, v60, v61, v62, v63, "ACFURestoreHost");
        v65 = ACFULogging::getLogInstance(v64);
        std::string::basic_string[abi:ne200100]<0>(&v96, "ACFURestoreHost");
        v66 = std::string::append(&v96, "::");
        v67 = *&v66->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v67;
        v66->__r_.__value_.__l.__size_ = 0;
        v66->__r_.__value_.__r.__words[2] = 0;
        v66->__r_.__value_.__r.__words[0] = 0;
        v68 = std::string::append(&__p, "validateDeviceInfoAgainstBuildIdentity");
        v69 = *&v68->__r_.__value_.__l.__data_;
        v99 = v68->__r_.__value_.__r.__words[2];
        v98 = v69;
        v68->__r_.__value_.__l.__size_ = 0;
        v68->__r_.__value_.__r.__words[2] = 0;
        v68->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v65, &v98, 2, "device info value: ", Value);
        if (SHIBYTE(v99) < 0)
        {
          operator delete(v98);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        v71 = ACFULogging::getLogInstance(v70);
        std::string::basic_string[abi:ne200100]<0>(&v96, "ACFURestoreHost");
        v72 = std::string::append(&v96, "::");
        v73 = *&v72->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        v74 = std::string::append(&__p, "validateDeviceInfoAgainstBuildIdentity");
        v75 = *&v74->__r_.__value_.__l.__data_;
        v99 = v74->__r_.__value_.__r.__words[2];
        v98 = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v71, &v98, 2, "device info value converted: ", cf);
        if (SHIBYTE(v99) < 0)
        {
          operator delete(v98);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        v77 = ACFULogging::getLogInstance(v76);
        std::string::basic_string[abi:ne200100]<0>(&v96, "ACFURestoreHost");
        v78 = std::string::append(&v96, "::");
        v79 = *&v78->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        v80 = std::string::append(&__p, "validateDeviceInfoAgainstBuildIdentity");
        v81 = *&v80->__r_.__value_.__l.__data_;
        v99 = v80->__r_.__value_.__r.__words[2];
        v98 = v81;
        v80->__r_.__value_.__l.__size_ = 0;
        v80->__r_.__value_.__r.__words[2] = 0;
        v80->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v77, &v98, 2, "build identity value: ", v14);
        if (SHIBYTE(v99) < 0)
        {
          operator delete(v98);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        v83 = ACFULogging::getLogInstance(v82);
        std::string::basic_string[abi:ne200100]<0>(&v96, "ACFURestoreHost");
        v84 = std::string::append(&v96, "::");
        v85 = *&v84->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v85;
        v84->__r_.__value_.__l.__size_ = 0;
        v84->__r_.__value_.__r.__words[2] = 0;
        v84->__r_.__value_.__r.__words[0] = 0;
        v86 = std::string::append(&__p, "validateDeviceInfoAgainstBuildIdentity");
        v87 = *&v86->__r_.__value_.__l.__data_;
        v99 = v86->__r_.__value_.__r.__words[2];
        v98 = v87;
        v86->__r_.__value_.__l.__size_ = 0;
        v86->__r_.__value_.__r.__words[2] = 0;
        v86->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v83, &v98, 2, "build identity value converted: ", cf2);
        if (SHIBYTE(v99) < 0)
        {
          operator delete(v98);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v52 = ACFULogging::getLogInstance(0);
        ACFUCommon::cfTypeDescription(v90, 1, &v98);
        ACFUCommon::cfTypeDescription(v31, 1, &__p);
        ACFULogging::handleMessage(v52, 2u, "%s::%s: failed to convert tag '%s' from build identity type (%s) to tss-request map type (%s)\n", v53, v54, v55, v56, v57, "ACFURestoreHost");
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v99) < 0)
        {
          operator delete(v98);
        }

        cf2 = 0;
      }
    }

    else
    {
      v46 = ACFULogging::getLogInstance(0);
      ACFUCommon::cfTypeDescription(v91, 1, &v98);
      ACFUCommon::cfTypeDescription(v31, 1, &__p);
      ACFULogging::handleMessage(v46, 2u, "%s::%s: failed to convert tag '%s' from device info type (%s) to tss-request map type (%s)\n", v47, v48, v49, v50, v51, "ACFURestoreHost");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99) < 0)
      {
        operator delete(v98);
      }

      cf = 0;
    }

    v29 = 0;
    v28 = 8;
LABEL_22:
    if ((v101 & 0x80000000) == 0)
    {
      break;
    }

    operator delete(v100);
    if ((v29 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_27:
    if (++v5 == v6)
    {
      v88 = 1;
      goto LABEL_82;
    }
  }

  if (v29)
  {
    goto LABEL_27;
  }

LABEL_26:
  if (v28 < 4)
  {
    goto LABEL_27;
  }

  v88 = 0;
LABEL_82:
  if (cf)
  {
    CFRelease(cf);
  }

  if (cf2)
  {
    CFRelease(cf2);
  }

  return v88 & 1;
}

void sub_2402D0A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 121) < 0)
  {
    operator delete(*(v33 - 144));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFURestoreHost::populateDictFromIdentity(unint64_t **a1, uint64_t a2, CFDictionaryRef theDict, __CFDictionary *a4)
{
  v4 = *a1;
  if (*a1 != a1[1])
  {
    v8 = (a2 + 8);
    do
    {
      v9 = *v8;
      v10 = *v4;
      if (!*v8)
      {
        goto LABEL_11;
      }

      v11 = v8;
      do
      {
        v12 = v9[4];
        v13 = v12 >= v10;
        v14 = v12 < v10;
        if (v13)
        {
          v11 = v9;
        }

        v9 = v9[v14];
      }

      while (v9);
      if (v11 != v8 && v10 >= v11[4])
      {
        Value = CFDictionaryGetValue(theDict, v10);
        if (Value)
        {
          v23 = Value;
          v24 = std::map<__CFString const*,std::string>::at(a2, v4);
          result = ACFURestoreHost::convertCFType(v23, *v24);
          if (!result)
          {
            return result;
          }

          v26 = result;
          CFDictionarySetValue(a4, *v4, result);
          CFRelease(v26);
          goto LABEL_17;
        }

        ACFUCommon::stringFromCFString(*v4, __p);
        LogInstance = ACFULogging::getLogInstance(v27);
        ACFULogging::handleMessage(LogInstance, 3u, "%s::%s: tag '%s' not found in identity dictionary, ignoring\n", v29, v30, v31, v32, v33, "ACFURestoreHost");
      }

      else
      {
LABEL_11:
        ACFUCommon::stringFromCFString(*v4, __p);
        v16 = ACFULogging::getLogInstance(v15);
        ACFULogging::handleMessage(v16, 3u, "%s::%s: tag '%s' not found in tss-request map, ignoring\n", v17, v18, v19, v20, v21, "ACFURestoreHost");
      }

      if (v36 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_17:
      ++v4;
    }

    while (v4 != a1[1]);
  }

  return 1;
}

void sub_2402D0D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ACFURestoreHost::createBoolFromData(ACFURestoreHost *this@<X0>, uint64_t a2@<X8>)
{
  v5 = *MEMORY[0x277CBED10];
  otherNumber = 0;
  valuePtr = 0;
  v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  if (v6)
  {
    v8 = v6;
    Num64Num32FromData = ACFURestoreHost::createNum64Num32FromData(this, &otherNumber, v7);
    v10 = Num64Num32FromData;
    if (Num64Num32FromData)
    {
      v11 = otherNumber;
      v12 = CFNumberCompare(v8, otherNumber, 0);
      v13 = *MEMORY[0x277CBED28];
      if (v12)
      {
        v5 = *MEMORY[0x277CBED28];
      }
    }

    else
    {
      LogInstance = ACFULogging::getLogInstance(Num64Num32FromData);
      ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: CFData to CFBoolean conversion failure\n", v16, v17, v18, v19, v20, "ACFURestoreHost");
      v11 = otherNumber;
    }

    v14 = !v10;
    CFRelease(v8);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    ACFURestoreHost::createBoolFromData(0);
    v14 = 1;
  }

  *a2 = v5;
  *(a2 + 8) = v14;
}

CFErrorRef ACFURestoreHost::getError(ACFURestoreHost *this)
{
  if (!ACFUError::hasError((this + 24)))
  {
    return 0;
  }

  return ACFUError::getCFError((this + 24));
}

void ACFURestoreHost::~ACFURestoreHost(ACFURestoreHost *this)
{
  *this = &unk_28522F2D8;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
    *(this + 2) = 0;
  }

  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(this + 200, *(this + 26));
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(this + 160, *(this + 21));
  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    *(this + 6) = v7;
    operator delete(v7);
  }

  ACFUError::~ACFUError((this + 24));
}

uint64_t ACFURestoreHost::init(const void **this, const __CFDictionary *a2, const __CFString *a3)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: ACFU Version: %s\n", v7, v8, v9, v10, v11, "ACFURestoreHost");
  if (a2)
  {
    v13 = a3 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (v13)
  {
    v16 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v16, 2u, "%s::%s: bad parameter: options %p, domain %p\n", v17, v18, v19, v20, v21, "ACFURestoreHost");
  }

  else
  {
    this[2] = a2;
    AMSupportSafeRetain();
    AppendedDomain = ACFUError::createAppendedDomain(this + 3, a3);
  }

  if (this[5] == this[6] || this[17] == this[18] || this[8] == this[9] || this[11] == this[12] || this[14] == this[15] || !this[22] || !this[27] || !this[28])
  {
    v22 = ACFULogging::getLogInstance(AppendedDomain);
    ACFULogging::handleMessage(v22, 2u, "%s::%s: initialization failure due to incomplete parameters\n", v23, v24, v25, v26, v27, "ACFURestoreHost");
    return 0;
  }

  return v14;
}

CFTypeRef ACFURestoreHost::convertCFType(__CFString *this, ACFUCommon *a2)
{
  v4 = CFGetTypeID(this);
  LogInstance = ACFULogging::getLogInstance(v4);
  ACFUCommon::cfTypeDescription(a2, 1, &cf);
  ACFUCommon::cfTypeDescription(v4, 1, __p);
  ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: desired type %s, received type %s\n", v6, v7, v8, v9, v10, "ACFURestoreHost");
  if (v64 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(cf.data) < 0)
  {
    operator delete(cf.isa);
  }

  if (v4 == a2)
  {
    v12 = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(v12, 4u, "%s::%s: no conversion necessary\n", v13, v14, v15, v16, v17, "ACFURestoreHost");
    return CFRetain(this);
  }

  if (CFNumberGetTypeID() != a2 || (v19 = CFStringGetTypeID(), v4 != v19))
  {
    if (CFNumberGetTypeID() == a2 && (v34 = CFDataGetTypeID(), v4 == v34))
    {
      v35 = ACFULogging::getLogInstance(v34);
      ACFULogging::handleMessage(v35, 4u, "%s::%s: converting from data to number\n", v36, v37, v38, v39, v40, "ACFURestoreHost");
      cf.isa = 0;
      Num64Num32FromData = ACFURestoreHost::createNum64Num32FromData(this, &cf, v41);
      if (!Num64Num32FromData)
      {
        v43 = ACFULogging::getLogInstance(Num64Num32FromData);
        ACFULogging::handleMessage(v43, 2u, "%s::%s: failed to convert from number to data\n", v44, v45, v46, v47, v48, "ACFURestoreHost");
        goto LABEL_15;
      }
    }

    else
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID != a2 || (TypeID = CFDataGetTypeID(), v4 != TypeID))
      {
        v57 = ACFULogging::getLogInstance(TypeID);
        ACFUCommon::cfTypeDescription(a2, 1, &cf);
        ACFUCommon::cfTypeDescription(v4, 1, __p);
        ACFULogging::handleMessage(v57, 2u, "%s::%s: unsupported conversion: desired type %s, received type %s\n", v58, v59, v60, v61, v62, "ACFURestoreHost");
        if (v64 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(cf.data) < 0)
        {
          operator delete(cf.isa);
        }

        return 0;
      }

      v50 = ACFULogging::getLogInstance(TypeID);
      ACFULogging::handleMessage(v50, 4u, "%s::%s: converting from data to BOOLean\n", v51, v52, v53, v54, v55, "ACFURestoreHost");
      ACFURestoreHost::createBoolFromData(this, &cf);
      if (LOBYTE(cf.info) == 1)
      {
        ACFURestoreHost::convertCFType(v56);
        return 0;
      }
    }

    return cf.isa;
  }

  v20 = ACFULogging::getLogInstance(v19);
  ACFULogging::handleMessage(v20, 4u, "%s::%s: converting from string to number\n", v21, v22, v23, v24, v25, "ACFURestoreHost");
  cf.isa = 0;
  v27 = ACFURestoreHost::createNum32FromString(this, &cf, v26);
  if (v27)
  {
    return cf.isa;
  }

  v28 = ACFULogging::getLogInstance(v27);
  ACFULogging::handleMessage(v28, 2u, "%s::%s: failed to convert from string to number\n", v29, v30, v31, v32, v33, "ACFURestoreHost");
LABEL_15:
  result = cf.isa;
  if (!cf.isa)
  {
    return result;
  }

  CFRelease(cf.isa);
  return 0;
}

void sub_2402D134C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFURestoreHost::createNum32FromString(const __CFString *this, const __CFString *a2, const __CFNumber **a3)
{
  valuePtr = 0;
  ACFUCommon::stringFromCFString(this, &__str);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    valuePtr = std::stoi(&__str, 0, 0);
    v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
    a2->isa = v6;
    if (v6)
    {
      v7 = 1;
      goto LABEL_6;
    }

    LogInstance = ACFULogging::getLogInstance(0);
    v15 = "%s::%s: Failed to create CF number from int value\n";
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v4);
    v15 = "%s::%s: failed to get string\n";
  }

  ACFULogging::handleMessage(LogInstance, 2u, v15, v10, v11, v12, v13, v14, "ACFURestoreHost");
  v7 = 0;
LABEL_6:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v7;
}

BOOL ACFURestoreHost::createNum64Num32FromData(ACFURestoreHost *this, const __CFData *a2, const __CFNumber **a3)
{
  Length = CFDataGetLength(this);
  BytePtr = CFDataGetBytePtr(this);
  if (Length - 1 >= 8)
  {
    ACFURestoreHost::createNum64Num32FromData(Length);
  }

  else
  {
    if (Length < 5)
    {
      valuePtr = 0;
      memcpy(&valuePtr, BytePtr, Length);
      v7 = *MEMORY[0x277CBECE8];
      p_valuePtr = &valuePtr;
      v9 = kCFNumberSInt32Type;
    }

    else
    {
      __dst = 0;
      memcpy(&__dst, BytePtr, Length);
      v7 = *MEMORY[0x277CBECE8];
      p_valuePtr = &__dst;
      v9 = kCFNumberSInt64Type;
    }

    *a2 = CFNumberCreate(v7, v9, p_valuePtr);
  }

  return Length - 1 < 8;
}

void ACFURestoreHost::ACFURestoreHost(ACFURestoreHost *this)
{
  *this = &unk_28522F2D8;
  *(this + 1) = @"ACFU,RootedFW";
  *(this + 2) = 0;
  ACFUError::ACFUError((this + 24), @"RestoreHost");
  *(this + 21) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = 0;
  *(this + 20) = this + 168;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = this + 208;
}

uint64_t *std::map<__CFString const*,unsigned long>::map[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<__CFString const*,unsigned long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,unsigned long>,std::__tree_node<std::__value_type<__CFString const*,unsigned long>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::map<__CFString const*,unsigned long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,unsigned long>,std::__tree_node<std::__value_type<__CFString const*,unsigned long>,void *> *,long>>>(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,unsigned long> const&>(v5, v5 + 1, v4 + 4, v4 + 2);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,unsigned long> const&>(uint64_t **a1, void *a2, unint64_t *a3, _OWORD *a4)
{
  v6 = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    *(v7 + 2) = *a4;
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__insert_node_at(a1, v11, v8, v7);
  }

  return v7;
}

void std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void ACFUMachO::ACFUMachO(ACFUMachO *this)
{
  *this = &unk_28522F328;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
}

uint64_t ACFUMachO::init(ACFUMachO *this, const unsigned __int8 *a2, unint64_t a3)
{
  if (!a2)
  {
    v4 = "%s::%s: crashLogBuffer is null\n";
LABEL_7:
    ACFUMachO::init(v4);
    return 0;
  }

  if ((ACFUMachO::extractCoreDumpRegions(this, a2, a3) & 1) == 0)
  {
    v4 = "%s::%s: failed to extract coredump regions\n";
    goto LABEL_7;
  }

  return 1;
}

uint64_t ACFUMachO::extractCoreDumpRegions(ACFUMachO *this, const unsigned __int8 *a2, unint64_t a3)
{
  v3 = this;
  if (a3 < 0x31)
  {
    goto LABEL_24;
  }

  v6 = 32;
  while (1)
  {
    v7 = &a2[v6];
    if (*&a2[v6] == 1130587248)
    {
      break;
    }

LABEL_6:
    v6 += *(v7 + 3);
    if (v6 + 16 >= a3)
    {
      goto LABEL_24;
    }
  }

  if (*(v7 + 2) != 512)
  {
    LogInstance = ACFULogging::getLogInstance(this);
    v62 = *(v7 + 2);
    ACFULogging::handleMessage(LogInstance, 3u, "%s::%s: CoredumpRegions version mismatch. Expected: 0x%x Version in Crashlog: 0x%x\n", v9, v10, v11, v12, v13, "ACFUMachO");
    goto LABEL_6;
  }

  v14 = *(v7 + 3);
  if (v6 + v14 > a3)
  {
    *(v3 + 2) = *(v3 + 1);
    v55 = ACFULogging::getLogInstance(this);
    v63 = v6 + *(v7 + 3);
    ACFULogging::handleMessage(v55, 2u, "%s::%s: parsing error while extracting the coredump regions. crashlog size: %zu offset and section size: %lu\n", v56, v57, v58, v59, v60, "ACFUMachO");
    return 0;
  }

  if (v14 < 0x24)
  {
LABEL_24:
    v34 = 0xCCCCCCCCCCCCCCCDLL * ((*(v3 + 2) - *(v3 + 1)) >> 2);
    *(v3 + 40) = v34;
    v35 = v34;
    v36 = ACFULogging::getLogInstance(this);
    if (!v35)
    {
      ACFULogging::handleMessage(v36, 2u, "%s::%s: no coredump region in the crashlog\n", v37, v38, v39, v40, v41, "ACFUMachO");
      return 0;
    }

    v61 = *(v3 + 40);
    ACFULogging::handleMessage(v36, 3u, "%s::%s: Number of coredump sections available: %u\n", v37, v38, v39, v40, v41, "ACFUMachO");
    return 1;
  }

  v15 = 0;
  v16 = &a2[v6];
  while (1)
  {
    v64 = *&v16[v15 + 16];
    v17 = *&v16[v15 + 32];
    if (v17 > 0x200000)
    {
      *(v3 + 2) = *(v3 + 1);
      v43 = ACFULogging::getLogInstance(this);
      ACFULogging::handleMessage(v43, 2u, "%s::%s: Coredump region size is too large: %d\n", v44, v45, v46, v47, v48, "ACFUMachO");
      return 0;
    }

    v19 = *(v3 + 1);
    v18 = *(v3 + 2);
    v20 = v18 - v19;
    v21 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - v19) >> 2);
    if (v21 >= 0x40)
    {
      break;
    }

    v22 = *(v3 + 3);
    if (v18 >= v22)
    {
      if (0x999999999999999ALL * ((v22 - v19) >> 2) <= v21 + 1)
      {
        v24 = v21 + 1;
      }

      else
      {
        v24 = 0x999999999999999ALL * ((v22 - v19) >> 2);
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v22 - v19) >> 2) >= 0x666666666666666)
      {
        v25 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v25 = v24;
      }

      v26 = std::__allocate_at_least[abi:ne200100]<std::allocator<CrashLogCoredumpData_t>>(v3 + 8, v25);
      v27 = &v26[v20];
      v29 = &v26[20 * v28];
      *v27 = v64;
      *(v27 + 4) = v17;
      v23 = &v26[v20 + 20];
      v30 = *(v3 + 1);
      v31 = *(v3 + 2) - v30;
      v32 = &v27[-v31];
      memcpy(&v27[-v31], v30, v31);
      this = *(v3 + 1);
      *(v3 + 1) = v32;
      *(v3 + 2) = v23;
      *(v3 + 3) = v29;
      if (this)
      {
        operator delete(this);
      }
    }

    else
    {
      *v18 = *&v16[v15 + 16];
      *(v18 + 16) = v17;
      v23 = v18 + 20;
    }

    *(v3 + 2) = v23;
    v33 = v15 + 56;
    v15 += 20;
    if (v33 > *(v7 + 3))
    {
      goto LABEL_24;
    }
  }

  *(v3 + 2) = v19;
  v49 = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(v49, 2u, "%s::%s: There are more coredump regions than expected in the crashlog\n", v50, v51, v52, v53, v54, "ACFUMachO");
  return 0;
}

void ACFUMachO::~ACFUMachO(ACFUMachO *this)
{
  *this = &unk_28522F328;
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
    *(this + 4) = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<CrashLogCoredumpData_t>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xCCCCCCCCCCCCCCDLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(20 * a2);
}

void ACFUMachO32::ACFUMachO32(ACFUMachO32 *this)
{
  ACFUMachO::ACFUMachO(this);
  *v1 = &unk_28522F368;
  bzero(v1 + 44, 0xE70uLL);
}

{
  ACFUMachO::ACFUMachO(this);
  *v1 = &unk_28522F368;
  bzero(v1 + 44, 0xE70uLL);
}

void ACFUMachO32::create(ACFUMachO32 *this@<X0>, const unsigned __int8 *a2@<X1>, char **a3@<X8>)
{
  v6 = operator new(0xEA0uLL);
  ACFUMachO::ACFUMachO(v6);
  *v6 = &unk_28522F368;
  bzero(v6 + 44, 0xE70uLL);
  *a3 = v6;
  if ((ACFUMachO32::init(v6, this, a2) & 1) == 0)
  {
    *a3 = 0;
    v7 = (*(*v6 + 8))(v6);
    LogInstance = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to init macho32\n", v9, v10, v11, v12, v13, "ACFUMachO32");
  }
}

uint64_t ACFUMachO32::init(ACFUMachO32 *this, const unsigned __int8 *a2, unint64_t a3)
{
  if (ACFUMachO::init(this, a2, a3))
  {
    *(this + 60) = xmmword_2402E0750;
    v4 = *(this + 40);
    *(this + 19) = v4 + 1;
    *(this + 20) = 56 * v4 + 84;
    *(this + 44) = xmmword_2402E0760;
    if (v4)
    {
      v5 = 0;
      v6 = 56 * v4 + 112;
      v7 = 56 * v4;
      v8 = (*(this + 1) + 16);
      do
      {
        v9 = this + v5;
        *(v9 + 156) = 0x3800000001;
        *(v9 + 41) = 1163157343;
        *(v9 + 84) = 21592;
        v10 = *(v8 - 2);
        v11 = *v8;
        v8 += 5;
        *(v9 + 45) = v10;
        *(v9 + 46) = v11;
        *(v9 + 47) = v6;
        *(v9 + 48) = v11;
        v6 += v11;
        v5 += 56;
      }

      while (v7 != v5);
    }

    if ((*(*this + 24))(this))
    {
      return 1;
    }

    v13 = "%s::%s: Failed to create macho header data\n";
  }

  else
  {
    v13 = "%s::%s: failed to init ACFUMachO\n";
  }

  ACFUMachO32::init(v13);
  return 0;
}

uint64_t ACFUMachO32::createMachoHeaderData(ACFUMachO32 *this)
{
  if (*(this + 40))
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
    *(this + 4) = Mutable;
    if (Mutable)
    {
      CFDataAppendBytes(Mutable, this + 60, 28);
      CFDataAppendBytes(*(this + 4), this + 44, 8);
      CFDataAppendBytes(*(this + 4), this + 52, 8);
      CFDataAppendBytes(*(this + 4), this + 88, 68);
      CFDataAppendBytes(*(this + 4), this + 156, 56 * *(this + 40));
      return 1;
    }

    ACFUMachO32::createMachoHeaderData(0);
  }

  else
  {
    ACFUMachO32::createMachoHeaderData(this);
  }

  return 0;
}

void ACFUMachO32::~ACFUMachO32(ACFUMachO32 *this)
{
  ACFUMachO::~ACFUMachO(this);

  operator delete(v1);
}

void ACFUMachO64::ACFUMachO64(ACFUMachO64 *this)
{
  ACFUMachO::ACFUMachO(this);
  *v1 = &unk_28522F3B0;
  *(v1 + 44) = 0u;
  *(v1 + 60) = 0u;
  *(v1 + 76) = 0u;
  bzero((v1 + 96), 0x1310uLL);
}

{
  ACFUMachO::ACFUMachO(this);
  *v1 = &unk_28522F3B0;
  *(v1 + 44) = 0u;
  *(v1 + 60) = 0u;
  *(v1 + 76) = 0u;
  bzero((v1 + 96), 0x1310uLL);
}

void ACFUMachO64::create(ACFUMachO64 *this@<X0>, const unsigned __int8 *a2@<X1>, char **a3@<X8>)
{
  v6 = operator new(0x1370uLL);
  ACFUMachO::ACFUMachO(v6);
  *v6 = &unk_28522F3B0;
  *(v6 + 44) = 0u;
  *(v6 + 60) = 0u;
  *(v6 + 76) = 0u;
  bzero(v6 + 96, 0x1310uLL);
  *a3 = v6;
  if ((ACFUMachO64::init(v6, this, a2) & 1) == 0)
  {
    *a3 = 0;
    v7 = (*(*v6 + 8))(v6);
    LogInstance = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to init macho64\n", v9, v10, v11, v12, v13, "ACFUMachO64");
  }
}

uint64_t ACFUMachO64::init(ACFUMachO64 *this, const unsigned __int8 *a2, unint64_t a3)
{
  if (ACFUMachO::init(this, a2, a3))
  {
    *(this + 60) = xmmword_2402E0790;
    v4 = *(this + 40);
    *(this + 19) = v4 + 1;
    *(this + 20) = 72 * v4 + 288;
    *(this + 44) = xmmword_2402E07A0;
    bzero(this + 368, 0x1200uLL);
    if (v4)
    {
      v5 = 0;
      v6 = 72 * v4 + 320;
      v7 = (*(this + 1) + 16);
      do
      {
        v8 = this + v5;
        *(v8 + 46) = 0x4800000019;
        *(v8 + 94) = 1163157343;
        *(v8 + 190) = 21592;
        v9 = *(v7 - 2);
        v10 = *v7;
        v7 += 5;
        *(v8 + 49) = v9;
        *(v8 + 50) = v10;
        *(v8 + 51) = v6;
        *(v8 + 52) = v10;
        v6 += v10;
        v5 += 72;
      }

      while (72 * v4 != v5);
    }

    if ((*(*this + 24))(this))
    {
      return 1;
    }

    v12 = "%s::%s: Failed to create macho header data\n";
  }

  else
  {
    v12 = "%s::%s: failed to init ACFUMachO\n";
  }

  ACFUMachO64::init(v12);
  return 0;
}

void ACFUMachO64::~ACFUMachO64(ACFUMachO64 *this)
{
  ACFUMachO::~ACFUMachO(this);

  operator delete(v1);
}

uint64_t ACFUMachO64::createMachoHeaderData(ACFUMachO64 *this)
{
  if (*(this + 40))
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
    *(this + 4) = Mutable;
    if (Mutable)
    {
      CFDataAppendBytes(Mutable, this + 60, 32);
      CFDataAppendBytes(*(this + 4), this + 44, 8);
      CFDataAppendBytes(*(this + 4), this + 52, 8);
      CFDataAppendBytes(*(this + 4), this + 96, 272);
      CFDataAppendBytes(*(this + 4), this + 368, 72 * *(this + 40));
      return 1;
    }

    ACFUMachO64::createMachoHeaderData(0);
  }

  else
  {
    ACFUMachO64::createMachoHeaderData(this);
  }

  return 0;
}

double DERImg4DecodeFindInSequence(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v7 = 0;
  v8 = 0uLL;
  while (!DERDecodeSeqNext(a1, &v7))
  {
    if (v7 == a2)
    {
      result = *&v8;
      *a3 = v8;
      return result;
    }
  }

  return result;
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t DERImg4DecodeManifestCommon(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

uint64_t DERImg4DecodeProperty(void *a1, uint64_t a2, uint64_t a3)
{
  result = 6;
  if (a1)
  {
    if (a3)
    {
      v14 = 0;
      v15 = 0uLL;
      v13 = 0uLL;
      v11 = 0;
      v12 = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      result = DERDecodeSeqInit(a1, &v9, &v10);
      if (!result)
      {
        if (v9 != 0x2000000000000010)
        {
          return 2;
        }

        result = DERDecodeSeqNext(&v10, &v14);
        if (result)
        {
          return result;
        }

        if (v14 != 22)
        {
          return 2;
        }

        result = DERParseInteger(&v15, &v8);
        if (result)
        {
          return result;
        }

        if ((v8 | 0xE000000000000000) != a2)
        {
          return 2;
        }

        *a3 = v15;
        *(a3 + 16) = 0;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result)
        {
          return result;
        }

        *(a3 + 40) = v12;
        *(a3 + 24) = v13;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result != 1)
        {
          return 2;
        }

        v7 = a1[1];
        if (__CFADD__(*a1, v7))
        {
          __break(0x5513u);
        }

        else if (v11 == *a1 + v7)
        {
          return 0;
        }

        else
        {
          return 7;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodeFindPropertyInSequence(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v10 = 0;
  v11 = 0uLL;
  while (1)
  {
    result = DERDecodeSeqNext(a1, &v10);
    if (result)
    {
      break;
    }

    if (v10 == a2)
    {
      v9 = v11;
      return DERImg4DecodePropertyWithItem(&v9, a2, a3, a4);
    }
  }

  return result;
}

uint64_t DERImg4DecodeParseManifestPropertiesInternal(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v11 = 0;
  if (!a1 || !(a2 | a3))
  {
    return 6;
  }

  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  result = DERDecodeItem(a1 + 264, &v14);
  if (!result)
  {
    if (v14 == 0x2000000000000011)
    {
      result = DERParseInteger(a1 + 248, &v11);
      if (!result)
      {
        if (v11 == 2)
        {
          v9 = 0x2000000000000010;
          v10 = a4 | 0xE000000000000000;
        }

        else
        {
          v10 = a4 | 0xE000000000000000;
          v9 = 0x2000000000000011;
        }

        result = DERImg4DecodeFindProperty(v15, v10, v9, v13);
        if (!result)
        {
          if (a2)
          {
            *a2 = *(&v13[1] + 8);
          }

          result = DERImg4DecodeFindProperty(&v13[1] + 1, 0xE00000004D414E50, 0x2000000000000011uLL, v12);
          if (a3)
          {
            if (!result)
            {
              *a3 = *(&v12[1] + 8);
            }
          }
        }
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t Img4DecodeParseLengthFromBufferWithTag(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v11 = 0;
  v12 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v14[1] = 0;
  v15 = 0;
  result = 0xFFFFFFFFLL;
  v13 = 0;
  v14[0] = 0;
  if (a1)
  {
    if (a4)
    {
      v17[0] = a1;
      v17[1] = a2;
      result = DERDecodeItemPartialBufferGetLength(v17, &v15, &v12);
      if (!result)
      {
        if (v12)
        {
          if (v15 != 0x2000000000000010)
          {
            return 2;
          }

          result = DERDecodeItemPartialBufferGetLength(v16, &v13, &v11);
          if (result)
          {
            return result;
          }

          if (v11)
          {
            result = DERImg4DecodeTagCompare(v14, a3);
            if (!result)
            {
              v8 = v16[0] - a1;
              if (v12 >= ~(v16[0] - a1))
              {
                return 7;
              }

              v9 = __CFADD__(v12, v8);
              v10 = v12 + v8;
              if (v9)
              {
                __break(0x5500u);
              }

              else
              {
                result = 0;
                *a4 = v10;
              }

              return result;
            }

            return 2;
          }
        }

        return 3;
      }
    }
  }

  return result;
}

uint64_t Img4DecodePayloadExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 136))
    {
      v4 = *(a1 + 144) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayload(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v2 = (a1 + 136);
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *v2;
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadType(uint64_t a1, _DWORD *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = DERParseInteger(a1 + 104, a2);
    }

    else
    {
      result = 1;
    }
  }

  if (a2)
  {
    if (result)
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t Img4DecodeGetPayloadVersion(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *(a1 + 120);
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodePayloadKeybagExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 152))
    {
      v4 = *(a1 + 160) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadKeybag(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *(a1 + 152);
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodePayloadCompressionInfoExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 168))
    {
      v4 = *(a1 + 176) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadCompressionInfo(void *a1, _DWORD *a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    if (a1[17] && a1[18] && a1[21] && a1[22])
    {
      v7 = 0u;
      v8 = 0u;
      result = DERParseSequenceContentToObject(a1 + 21, 2u, &DERImg4CompressionItemSpecs, &v7, 0x20uLL, 0);
      if (!result)
      {
        result = DERParseInteger(&v7, a2);
        if (!result)
        {
          result = DERParseInteger(&v8, a3);
          if (!result)
          {
            return result;
          }
        }
      }
    }

    else
    {
      result = 1;
    }
  }

  if (a2)
  {
    if (a3)
    {
      *a2 = -1;
      *a3 = -1;
    }
  }

  return result;
}

uint64_t Img4DecodeCopyPayloadHashWithCallback(uint64_t a1, void (*a2)(void, void, __int128 *), uint64_t a3, int a4)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1 || a4 != 20 || !a3)
  {
    result = 6;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!*(a1 + 136) || !*(a1 + 144))
  {
    result = 1;
LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    goto LABEL_12;
  }

  if (*a1 == 1)
  {
    result = 0;
    v7 = *(a1 + 184);
    *(a3 + 16) = *(a1 + 200);
    *a3 = v7;
  }

  else
  {
    v9 = 0uLL;
    v10 = 0;
    a2(*(a1 + 8), *(a1 + 16), &v9);
    result = 0;
    *a3 = v9;
    *(a3 + 16) = v10;
  }

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Img4DecodeManifestExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 24) != 0;
    }
  }

  return result;
}

uint64_t Img4DecodeCopyManifestHashWithCallback(uint64_t a1, void (*a2)(void), uint64_t a3, int a4)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1 || a4 != 20 || !a3)
  {
    result = 6;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (!*(a1 + 24))
  {
    result = 1;
LABEL_10:
    *a3 = 0;
    *(a3 + 8) = 0;
    goto LABEL_12;
  }

  if (*(a1 + 1) == 1)
  {
    result = 0;
    v7 = *(a1 + 328);
    *(a3 + 16) = *(a1 + 344);
    *a3 = v7;
  }

  else
  {
    v9 = *(a1 + 32);
    a2();
    result = 0;
    *a3 = 0uLL;
    *(a3 + 16) = 0;
  }

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Img4DecodeSectionExists(void *a1, unsigned int a2, _BYTE *a3)
{
  result = 6;
  if (a2 <= 1 && a1 && a3)
  {
    if (a2)
    {
      if (a1[55])
      {
        v5 = a1[56];
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else if (a1[33])
    {
      v5 = a1[34];
      if (!v5)
      {
LABEL_12:
        result = 0;
        *a3 = v5;
        return result;
      }

LABEL_10:
      LOBYTE(v5) = 1;
      goto LABEL_12;
    }

    LOBYTE(v5) = 0;
    goto LABEL_12;
  }

  return result;
}

uint64_t Img4DecodeRestoreInfoExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 440))
    {
      v4 = *(a1 + 448) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetBooleanFromSection(uint64_t a1, unsigned int a2, uint64_t a3, BOOL *a4)
{
  memset(v8, 0, sizeof(v8));
  v4 = 6;
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 1uLL, v8);
      v4 = v6;
      if (!v6)
      {
        return DERParseBoolean(&v8[1] + 1, a4);
      }
    }
  }

  return v4;
}

void Img4DecodeGetIntegerFromSection(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (!v5)
      {
        if (DERParseInteger(&v6[1] + 8, a4))
        {
          *a4 = 0;
        }
      }
    }
  }
}

void Img4DecodeGetInteger64FromSection(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (!v5)
      {
        if (DERParseInteger64(&v6[1] + 8, a4))
        {
          *a4 = 0;
        }
      }
    }
  }
}

void Img4DecodeGetDataFromSection(uint64_t a1, unsigned int a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 4uLL, &v9);
    if (v7)
    {
      *a5 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
      *a5 = v8;
    }
  }
}

double Img4DecodeGetObjectProperty(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  v11[0] = 0;
  v11[1] = 0;
  result = 0.0;
  memset(v10, 0, sizeof(v10));
  if (a1 && a5 && (DERImg4DecodeParseManifestProperties(a1, v11, 0) || DERImg4DecodeFindProperty(v11, a2 | 0xE000000000000000, 0x2000000000000011uLL, v10) || DERImg4DecodeFindProperty(&v10[1] + 1, a3, a4, a5)))
  {
    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

void Img4DecodeGetObjectPropertyInteger(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (v5 || DERParseInteger(&v6[1] + 8, a4))
      {
        *a4 = 0;
      }
    }
  }
}

void Img4DecodeGetObjectPropertyInteger64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (v5 || DERParseInteger64(&v6[1] + 8, a4))
      {
        *a4 = 0;
      }
    }
  }
}

void Img4DecodeGetObjectPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 4uLL, &v9);
    if (v7)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
    }

    *a5 = v8;
  }
}

void Img4DecodeGetObjectPropertyString(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 0x16uLL, &v9);
    if (v7)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
    }

    *a5 = v8;
  }
}

double Img4DecodeGetPropertyFromSection(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  *v11 = 0uLL;
  if (a2 <= 1 && a1 && a5)
  {
    v12 = 0;
    if (!Img4DecodeSectionExists(a1, a2, &v12) && v12 == 1)
    {
      if (a2)
      {
        *v11 = *(a1 + 440);
        goto LABEL_9;
      }

      if (!DERImg4DecodeParseManifestProperties(a1, 0, v11))
      {
LABEL_9:
        if (!DERImg4DecodeFindProperty(v11, a3, a4, a5))
        {
          return result;
        }
      }
    }

    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyData(uint64_t *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  result = 6;
  if (a3 && a4)
  {
    v8 = *a1;
    v9 = *(a1 + 2);
    v11[0] = v8;
    v11[1] = v9;
    result = DERImg4DecodeProperty(v11, a2 | 0xE000000000000000, &v12);
    if (!result)
    {
      if (*(&v14 + 1) == 4)
      {
        v10 = v14;
        if (!DWORD1(v14))
        {
          result = 0;
          *a3 = *(&v13 + 1);
LABEL_7:
          *a4 = v10;
          return result;
        }

        result = 7;
      }

      else
      {
        result = 2;
      }
    }

    v10 = 0;
    *a3 = 0;
    goto LABEL_7;
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, a3 + 88) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

double Img4DecodeInitPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3)
  {
    *&v5 = a1;
    *(&v5 + 1) = a2;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 336) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 368) = 0u;
    *(a3 + 384) = 0u;
    *(a3 + 400) = 0u;
    *(a3 + 416) = 0u;
    *(a3 + 432) = 0u;
    *(a3 + 448) = 0;
    if (!DERImg4DecodePayload(&v5, a3 + 88))
    {
      result = *&v5;
      *(a3 + 8) = v5;
    }
  }

  return result;
}

uint64_t Img4DecodeInitManifestCommon(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = 6;
  if (a1 && a4)
  {
    v15 = a1;
    v16 = a2;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 240) = 0u;
    *(a4 + 256) = 0u;
    *(a4 + 272) = 0u;
    *(a4 + 288) = 0u;
    *(a4 + 304) = 0u;
    *(a4 + 320) = 0u;
    *(a4 + 336) = 0u;
    *(a4 + 352) = 0u;
    *(a4 + 368) = 0u;
    *(a4 + 384) = 0u;
    *(a4 + 400) = 0u;
    *(a4 + 416) = 0u;
    *(a4 + 432) = 0u;
    *(a4 + 448) = 0;
    if (a5 == 1229796419)
    {
      v10 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeCertificate(&v15, v10);
      }

      else
      {
        result = DERImg4DecodeUnsignedCertificate(&v15, v10);
      }
    }

    else
    {
      if (a5 != 1229796429)
      {
        return 2;
      }

      v9 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeManifest(&v15, v9);
      }

      else
      {
        result = DERImg4DecodeUnsignedManifest(&v15, v9);
      }
    }

    if (!result)
    {
      if (*(a4 + 264))
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = a1;
        v16 = a2;
        result = DERDecodeItemPartialBufferGetLength(&v15, &v12, 0);
        if (!result)
        {
          *(a4 + 24) = a1;
          v11 = v14 + v13 - a1;
          if (__CFADD__(v14, v13 - a1))
          {
            __break(0x5500u);
          }

          else
          {
            *(a4 + 32) = v11;
            if (v11 == a2)
            {
              return 0;
            }

            else
            {
              return 7;
            }
          }
        }
      }

      else
      {
        return 3;
      }
    }
  }

  return result;
}

uint64_t Img4DecodePerformTrustEvaluation(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = a3;
  return _Img4DecodePerformTrustEvaluationWithCallbacksInternal(a1, a2, v6, a4, 0, a5);
}

uint64_t Img4DecodePerformTrustEvaluatation(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = a3;
  return _Img4DecodePerformTrustEvaluationWithCallbacksInternal(a1, a2, v6, a4, 0, a5);
}

uint64_t _Img4DecodeValidateManifestPropertyInterposer(unsigned int a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = a1;
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *a4;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v12[0] = 0;
  v12[1] = 0;
  memset(v11, 0, sizeof(v11));
  if (v8 && !DERImg4DecodeProperty(v8, 0xE00000006D616E78, &v13) && *(&v15 + 1) == 0x2000000000000011 && !DERDecodeSeqContentInit(&v14 + 1, v12))
  {
    v9 = a1 | 0xE000000000000000;
    while (!DERDecodeSeqNext(v12, v11))
    {
      if (v11[0] == v9)
      {
        (*(*(*a4 + 24) + 8))(*(*(*a4 + 16) + 32), a4 + 24, 4, &v10);
        return 0;
      }
    }
  }

  (*(*(*a4 + 24) + 8))(*(*(*a4 + 16) + 32), a4 + 24, *(a2 + 8), *a2);
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13)
{
  a12 = 0u;
  a13 = 0u;
  a11 = 0u;
  v14 = *(a1 + 2);
  a9 = *a1;
  a10 = v14;
  v15 = a2 | 0xE000000000000000;

  return DERImg4DecodeProperty(&a9, v15, &a11);
}

void OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  _Img4DecodePayloadPropertyExistsWithValue(a1, a2, 2uLL, &a9, 0);
}

void OUTLINED_FUNCTION_5_0(uint64_t a1, ...)
{
  va_start(va, a1);

  bzero(va, 0xA0uLL);
}

void *OUTLINED_FUNCTION_6(uint64_t a1, const void *a2)
{

  return memcpy(v3, a2, v2);
}

void _Img4DecodePayloadPropertyExistsWithValue(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, BOOL *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    bzero(v19, 0xA0uLL);
    v18 = 0uLL;
    v17 = 0uLL;
    v16 = 0uLL;
    v11 = *(a1 + 8);
    v10 = a1 + 8;
    if (v11)
    {
      bzero(v19, 0xA0uLL);
      if (!DERImg4DecodePayloadWithProperties(v10, v19))
      {
        if (v20[0])
        {
          DERImg4DecodeContentFindItemWithTag(v20, 0x2000000000000010, &v18);
          if (!v12)
          {
            DERImg4DecodeContentFindItemWithTag(&v18, 0x2000000000000011, &v17);
            if (!v13)
            {
              if (a5)
              {
                DERImg4DecodeContentFindItemWithTag(&v17, a2, &v16);
                if (v14)
                {
                  goto LABEL_12;
                }

                *a5 = v16 != 0;
              }

              if (a4)
              {
                DERImg4DecodeFindProperty(&v17, a2, a3, a4);
              }
            }
          }
        }
      }
    }
  }

LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
}

void Img4DecodeEvaluateCertificatePropertiesInternal(void *a1, _OWORD *a2)
{
  v21[0] = 0;
  v21[1] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19 = 0;
  v18 = 0uLL;
  __n = 0;
  v17 = 0;
  v14 = 0;
  __s1 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  __s2 = 0uLL;
  v7 = 0uLL;
  if (a1 && a1[40] && !DERDecodeSeqInit((a1 + 39), &v19, v21) && v19 == 0x2000000000000011)
  {
    while (1)
    {
      if (DERDecodeSeqNext(v21, &v17))
      {
        return;
      }

      v4 = (a1 + 7);
      switch(v17)
      {
        case 0xE00000004D414E50:
LABEL_11:
          v7 = *v4;
          if (DERImg4DecodeProperty(&v18, v17, &v11) || *(&v13 + 1) != 0x2000000000000011 || DERDecodeSeqContentInit(&v12 + 1, v20))
          {
            return;
          }

          while (1)
          {
            v5 = DERDecodeSeqNext(v20, &v14);
            if (v5)
            {
              break;
            }

            if (DERImg4DecodeProperty(&__s1, v14, v9))
            {
              return;
            }

            DERImg4DecodeContentFindItemWithTag(&v7, v14, &__s2);
            if (*(&v10 + 1) <= 4uLL && ((1 << SBYTE8(v10)) & 0x16) != 0)
            {
              if (v6)
              {
                return;
              }

              if (__n != *(&__s2 + 1))
              {
                return;
              }

              v6 = memcmp(__s1, __s2, __n);
              if (v6)
              {
                return;
              }
            }

            else if (*(&v10 + 1) != 0xA000000000000000)
            {
              if (*(&v10 + 1) != 0xA000000000000001 || v6 != 1)
              {
                return;
              }

              v6 = 0;
            }

            if (v6)
            {
              return;
            }
          }

          if (v5 != 1)
          {
            return;
          }

          break;
        case 0xE00000006D616E78:
          if (a2)
          {
            *a2 = v18;
          }

          break;
        case 0xE00000004F424A50:
          v4 = (a1 + 9);
          if (a1[9])
          {
            goto LABEL_11;
          }

          v4 = (a1 + 9);
          if (a1[10])
          {
            goto LABEL_11;
          }

          break;
        default:
          return;
      }
    }
  }
}

uint64_t _Img4DecodePerformTrustEvaluationWithCallbacksInternal(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v21 = 0;
  v22 = 0;
  memset(v23, 0, sizeof(v23));
  result = 6;
  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  if (!*a3)
  {
    return result;
  }

  if (!*a4)
  {
    return result;
  }

  if (!*(a4 + 24))
  {
    return result;
  }

  if (!*(a4 + 8))
  {
    return result;
  }

  if (!*(a4 + 16))
  {
    return result;
  }

  v10 = *(a4 + 32);
  if (!v10)
  {
    return result;
  }

  if (!*(a2 + 24))
  {
    return 6;
  }

  if (*v10 > 0x30uLL)
  {
    return 7;
  }

  v14 = *(a2 + 32);
  result = (*a4)();
  if (result)
  {
    return result;
  }

  *(a2 + 1) = 1;
  v15 = *(a3 + 8);
  if (v15 && (v16 = v15(a2, a6)) != 0 && !memcmp((a2 + 328), v16, **(a4 + 32)))
  {
    v17 = 0;
  }

  else
  {
    result = (*(a4 + 8))(*(a2 + 296), *(a2 + 304), &v21, &v22, a2 + 312, a2 + 320, a4, a6);
    if (result)
    {
      return result;
    }

    if (**(a4 + 32) > 0x30uLL)
    {
      return 7;
    }

    result = (*a4)(*(a2 + 264), *(a2 + 272), a2 + 376);
    if (result)
    {
      return result;
    }

    result = (*(a4 + 16))(v21, v22, *(a2 + 280), *(a2 + 288), a2 + 376, **(a4 + 32), a4, a6);
    if (result)
    {
      return result;
    }

    v17 = 1;
  }

  result = DERImg4DecodeParseManifestProperties(a2, a2 + 40, a2 + 56);
  if (result)
  {
    return result;
  }

  if ((a5 & 1) == 0)
  {
    v18 = *(a3 + 16);
    v19 = (a2 + 40);
    v20 = a1 | 0xE000000000000000;
    if (v18)
    {
      result = v18(v19, v20, 0x2000000000000011, v23, a6);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = DERImg4DecodeFindProperty(v19, v20, 0x2000000000000011uLL, v23);
      if (result)
      {
        return result;
      }
    }

    *(a2 + 72) = *(&v23[1] + 8);
  }

  if (v17)
  {
    result = (*(a4 + 24))(a2, a6);
    if (result)
    {
      return result;
    }
  }

  if (**(a4 + 32) > 0x30uLL)
  {
    return 7;
  }

  if (*(a2 + 136) && *(a2 + 144))
  {
    result = (*a4)(*(a2 + 8), *(a2 + 16), a2 + 184);
    if (result)
    {
      return result;
    }

    *a2 = 1;
  }

  result = Img4DecodeEvaluateDictionaryProperties((a2 + 56), 0, *a3, a6);
  if (!result)
  {
    if (a5)
    {
      return 0;
    }

    result = Img4DecodeEvaluateDictionaryProperties((a2 + 72), 1, *a3, a6);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t verify_signature_rsa3k(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a7 + 32);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *v8;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v9 != a6)
  {
    return 0xFFFFFFFFLL;
  }

  result = verify_pkcs1_sig(v13, v9[4], v11, v12, 3072);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t verify_pkcs1_sig(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v24[4] = *MEMORY[0x277D85DE8];
  if (a5 != 4096 && a5 != 3072)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  v24[2] = 0;
  v24[3] = 0;
  v8 = (a5 + 63) >> 6;
  MEMORY[0x28223BE20](a1, (24 * v8 + 71) & 0x7FFFFFFFFFFFFFE0);
  v10 = (v23 - v9);
  bzero(v23 - v9, v9);
  *v10 = v8;
  v11 = *(a1 + 8);
  v24[0] = *a1;
  v24[1] = v11;
  memset(v23, 0, sizeof(v23));
  if (DERParseSequenceToObject(v24, DERNumRSAPubKeyPKCS1ItemSpecs, &DERRSAPubKeyPKCS1ItemSpecs, v23, 0x20uLL, 0x20uLL) || ccrsa_pub_init(v10, *(&v23[0] + 1), *&v23[0]))
  {
    goto LABEL_9;
  }

  if (MEMORY[0x277D85C38] && MEMORY[0x28223BE48])
  {
    v13 = *a3;
    v12 = a3[1];
    v15 = *a4;
    v14 = a4[1];
    if (ccrsa_verify_pkcs1v15_digest() || cc_cmp_safe())
    {
LABEL_9:
      result = 0xFFFFFFFFLL;
      goto LABEL_14;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  LOBYTE(v23[0]) = 0;
  v18 = *a3;
  v17 = a3[1];
  v20 = *a4;
  v19 = a4[1];
  v21 = ccrsa_verify_pkcs1v15();
  result = 0xFFFFFFFFLL;
  if (!v21 && (v23[0] & 1) != 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t verify_signature_rsa(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a7 + 32);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *v8;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v9 != a6)
  {
    return 0xFFFFFFFFLL;
  }

  result = verify_pkcs1_sig(v13, v9[4], v11, v12, 4096);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t verify_signature_rsa4096_fixed(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  result = 6;
  if (!a1)
  {
    goto LABEL_26;
  }

  if (!a2)
  {
    goto LABEL_26;
  }

  if (!a3)
  {
    goto LABEL_26;
  }

  if (!a4)
  {
    goto LABEL_26;
  }

  if (!a5)
  {
    goto LABEL_26;
  }

  if (!a6)
  {
    goto LABEL_26;
  }

  if (!a7)
  {
    goto LABEL_26;
  }

  v9 = *(a7 + 32);
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = *v10;
  if (!*v10)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  result = 0xFFFFFFFFLL;
  if (a2 != 516 || *v11 != a6)
  {
    goto LABEL_26;
  }

  if (a1 < 0xFFFFFFFFFFFFFE00)
  {
    MEMORY[0x28223BE20](0xFFFFFFFFLL, 516);
    bzero(&v16, 0x638uLL);
    v15 = 64;
    result = ccrsa_pub_init(&v15, 0x200uLL, a1);
    if (!result)
    {
      if (!MEMORY[0x277D85C38] || !MEMORY[0x28223BE48])
      {
        v17 = 0;
        v13 = v11[4];
        LODWORD(result) = ccrsa_verify_pkcs1v15();
        if (result || (v17 & 1) == 0)
        {
          if (result)
          {
            result = result;
          }

          else
          {
            result = 0xFFFFFFFFLL;
          }

          goto LABEL_26;
        }

        goto LABEL_22;
      }

      v12 = v11[4];
      result = ccrsa_verify_pkcs1v15_digest();
      if (!result)
      {
        if (cc_cmp_safe())
        {
          result = 0xFFFFFFFFLL;
          goto LABEL_26;
        }

LABEL_22:
        result = 0;
      }
    }

LABEL_26:
    v14 = *MEMORY[0x277D85DE8];
    return result;
  }

  __break(0x5513u);
  return result;
}

uint64_t ccrsa_pub_init(unint64_t *a1, unint64_t a2, _BYTE *a3)
{
  v4 = a2;
  if (a2)
  {
    while (!*a3)
    {
      if (a3 == -1)
      {
        __break(0x5513u);
        goto LABEL_10;
      }

      ++a3;
      if (!--v4)
      {
        break;
      }
    }
  }

  if (v4 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_10:
    __break(0x5500u);
  }

  else
  {
    v5 = (v4 + 7) >> 3;
    if (v5 > *a1)
    {
      return 0xFFFFFFFFLL;
    }

    *a1 = v5;
  }

  return MEMORY[0x282201880]();
}

void verify_signature_ecdsa(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              if (a7)
              {
                v9 = *(a7 + 32);
                if (v9)
                {
                  if (v9[2] && *(a7 + 48) && *v9 == a6)
                  {
                    v12[2] = v7;
                    v12[3] = v8;
                    v12[0] = a1;
                    v12[1] = a2;
                    v11[0] = a3;
                    v11[1] = a4;
                    v10[0] = a5;
                    v10[1] = a6;
                    verify_ecdsa_sig(v12, v10, v11);
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void verify_ecdsa_sig(void *a1, uint64_t *a2, uint64_t *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v22[7] = 0;
  v6 = a1[1];
  ccec_x963_import_pub_size();
  if (!ccec_keysize_is_supported())
  {
    goto LABEL_9;
  }

  cp = ccec_get_cp();
  v8 = *cp;
  if (*cp >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
    __break(0x550Cu);
    goto LABEL_12;
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || (v10 = __CFADD__(v11, 16), v12 = v11 + 16, v10))
  {
LABEL_12:
    __break(0x5500u);
  }

  v13 = cp;
  v14 = v12 - 1;
  MEMORY[0x28223BE20](cp, (v12 - 1) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v22[-v15];
  bzero(&v22[-v15], v15);
  if (v14 >= 0x10)
  {
    *v16 = v13;
    if (!MEMORY[0x245CBEF00](v13, a1[1], *a1, v16))
    {
      v18 = *a2;
      v17 = a2[1];
      v20 = *a3;
      v19 = a3[1];
      ccec_verify();
    }

LABEL_9:
    v21 = *MEMORY[0x277D85DE8];
    return;
  }

  __break(1u);
}

uint64_t verify_chain_img4_v1(unint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v9 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(&v31, 0x2F0uLL);
        v29[0] = a1;
        v29[1] = v9;
        v30[0] = &ROOT_CA_CERTIFICATE;
        v30[1] = 1215;
        if (!_crack_chain_with_anchor(v29, v30, 3u) && !parse_chain(v30, 3u, &v32, v34, v37, v40))
        {
          v27 = a3;
          v25 = a6;
          v26 = a5;
          v15 = v35;
          v16 = &v33;
          v17 = 0;
          v18 = 2;
          v19 = v35;
          while (1)
          {
            v20 = &v34[10 * v17];
            v21 = *(v20 + 11);
            v22 = *v19;
            v19 += 20;
            if (v21 != v22)
            {
              break;
            }

            if (memcmp(*(v20 + 10), *(v15 - 1), v21))
            {
              break;
            }

            result = verify_chain_signatures(&v37[v17], v16, a7);
            if (result)
            {
              break;
            }

            v16 += 6;
            ++v17;
            v15 = v19;
            if (!--v18)
            {
              v28 = 0uLL;
              if (v34 > 0xFFFFFFFFFFFFFF5FLL)
              {
LABEL_34:
                __break(0x5513u);
                return result;
              }

              v45[0] = 0;
              v45[1] = 0;
              v43 = 0;
              v44[0] = 0;
              v44[1] = 0;
              if (DERDecodeSeqContentInit(v36, v45))
              {
                return 0xFFFFFFFFLL;
              }

LABEL_14:
              if (!DERDecodeSeqNext(v45, &v43) && v43 == 0x2000000000000011)
              {
                v50[0] = 0;
                v50[1] = 0;
                v48 = 0;
                v49[0] = 0;
                v49[1] = 0;
                v46 = 0u;
                v47 = 0u;
                if (!DERDecodeSeqContentInit(v44, v50))
                {
                  do
                  {
                    v23 = DERDecodeSeqNext(v50, &v48);
                    if (v23)
                    {
                      if (v23 == 1)
                      {
                        goto LABEL_14;
                      }

                      return 0xFFFFFFFFLL;
                    }

                    if (v48 != 0x2000000000000010 || DERParseSequenceContentToObject(v49, DERNumAttributeTypeAndValueItemSpecs, &DERAttributeTypeAndValueItemSpecs, &v46, 0x20uLL, 0x20uLL))
                    {
                      return 0xFFFFFFFFLL;
                    }
                  }

                  while (!DEROidCompare(&oidCommonName, &v46));
                  v28 = v47;
                  result = DEROidCompare(&verify_chain_img4_v1_sboot_item, &v28);
                  if (!result)
                  {
                    return 0xFFFFFFFFLL;
                  }

                  if (v37 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  *v27 = v38;
                  *a4 = v39;
                  if (v40 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  if (!v41)
                  {
                    return 0;
                  }

                  v24 = v42;
                  if (!v42)
                  {
                    return 0;
                  }

                  result = 0;
                  if (v26)
                  {
                    if (v25)
                    {
                      result = 0;
                      *v26 = v41;
                      *v25 = v24;
                    }
                  }

                  return result;
                }
              }

              return 0xFFFFFFFFLL;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t parse_chain(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v7 = result;
  v8 = 0;
  v19 = ~result;
  v18 = ~a3;
  v16 = ~a4;
  v14 = ~a5;
  v9 = ~a6;
  v10 = a2;
  while (1)
  {
    v11 = 16 * v8;
    if (16 * v8 > v19 || 48 * v8 > v18)
    {
      break;
    }

    result = DERParseSequenceToObject(v7 + 16 * v8, DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, a3 + 48 * v8, 0x30uLL, 0x30uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (160 * v8 > v16)
    {
      break;
    }

    v12 = a4 + 160 * v8;
    result = DERParseSequenceToObject(a3 + 48 * v8, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v12, 0xA0uLL, 0xA0uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v14)
    {
      break;
    }

    v23 = 0u;
    v24 = 0u;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    if (DERParseSequenceContentToObject((v12 + 96), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v23, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseSequenceContentToObject(&v23, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v20, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    result = DEROidCompare(&v20, &oidRsa);
    if (!result)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(&v21 + 1))
    {
      if (*(&v21 + 1) != 2 || *v21 != 5)
      {
        return 0xFFFFFFFFLL;
      }

      if (v21 == -1)
      {
        break;
      }

      if (*(v21 + 1))
      {
        return 0xFFFFFFFFLL;
      }
    }

    result = DERParseBitString(&v24, (a5 + 16 * v8), &v22);
    if (result || v22)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v9)
    {
      break;
    }

    result = parse_extensions(v12, (a6 + 16 * v8));
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (++v8 == v10)
    {
      return 0;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t verify_chain_signatures(void *a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_22;
  }

  if (!a2)
  {
    goto LABEL_22;
  }

  if (!a3)
  {
    goto LABEL_22;
  }

  v12 = 0u;
  v13 = 0u;
  v11 = 0;
  memset(v14, 0, sizeof(v14));
  v9 = 0;
  v10 = 0;
  v5 = *(a3 + 32);
  if (!v5 || !v5[2] || !*a3 || !*(a3 + 40) || *v5 > 0x30uLL || DERParseSequenceContentToObject(a2 + 2, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v12, 0x20uLL, 0x20uLL))
  {
    goto LABEL_22;
  }

  if (!*(&v13 + 1) || (result = DEROidCompare(&v12, &oidEcPubKey), (result & 1) != 0))
  {
LABEL_16:
    if (DEROidCompare(&v12, *(a3 + 40)) && !(*a3)(*a2, a2[1], v14, **(a3 + 32), a3) && !DERParseBitString((a2 + 4), &v9, &v11) && !v11)
    {
      result = (*(a3 + 16))(*a1, a1[1], v9, v10, v14, **(a3 + 32), a3, 0);
      if (!result)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_22;
  }

  if (*(&v13 + 1) != 2 || *v13 != 5)
  {
LABEL_22:
    result = 0xFFFFFFFFLL;
LABEL_21:
    v8 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v13 != -1)
  {
    if (!*(v13 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  __break(0x5513u);
  return result;
}

uint64_t verify_chain_img4_v2_with_crack_callback(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(v22, 0x300uLL);
        v21[0] = a1;
        v21[1] = v10;
        if (a8(v21, v22, 2))
        {
          return 0xFFFFFFFFLL;
        }

        result = parse_chain(v22, 2u, v23, v24, v27, v28);
        if (result)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          v15 = 1;
          v16 = 1;
          while ((v15 & 1) != 0)
          {
            v17 = &v24[10 * v16];
            if (__n == *(v17 + 7) && !memcmp(__s1, *(v17 + 6), __n))
            {
              result = verify_chain_signatures(v27, &v23[3 * v16], a7);
              v15 = 0;
              v16 = 2;
              if (!result)
              {
                continue;
              }
            }

            return 0xFFFFFFFFLL;
          }

          if (v27 > 0xFFFFFFFFFFFFFFEFLL || (*a3 = v27[2], *a4 = v27[3], v28 > 0xFFFFFFFFFFFFFFEFLL))
          {
            __break(0x5513u);
          }

          else if (v29 && (v18 = v30) != 0)
          {
            result = 0;
            if (a5 && a6)
            {
              result = 0;
              *a5 = v29;
              *a6 = v18;
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t crack_chain_rsa4k_sha384_x86(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_X86_ROOT_CA_CERTIFICATE;
  a2[1] = 1382;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_ROOT_CA_CERTIFICATE;
  a2[1] = 1394;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_global(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_GLOBAL_ROOT_CA_CERTIFICATE;
  a2[1] = 1404;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_fake(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_FAKE_ROOT_CA_CERTIFICATE;
  a2[1] = 1425;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_fake_global(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_FAKE_GLOBAL_ROOT_CA_CERTIFICATE;
  a2[1] = 1435;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_avp(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_AVP_ROOT_CA_CERTIFICATE;
  a2[1] = 1431;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_tatsu_local_policy(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 1382;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_tatsu_local_policy_hacktivate(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &LOCAL_RSA4K_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 1442;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa3k_sha384(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA3K_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 1118;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 1374;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_AWG1(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_ROOT_CA_CERTIFICATE_AWG1;
  a2[1] = 1404;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_PED(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_PED_ROOT_CA_CERTIFICATE;
  a2[1] = 1400;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t verify_chain_img4_ec_v1(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(v28, 0x330uLL);
        v27[0] = a1;
        v27[1] = v10;
        if (!a8(v27, v28, 3) && !parse_ec_chain(v28, 3u, &v29, v31, v33, &v36, v37))
        {
          v26 = a3;
          v15 = v32;
          v16 = &v30;
          v17 = 0;
          v18 = 2;
          v19 = v32;
          while (1)
          {
            v20 = &v31[10 * v17];
            v21 = *(v20 + 11);
            v22 = *v19;
            v19 += 20;
            if (v21 != v22)
            {
              break;
            }

            if (memcmp(*(v20 + 10), *(v15 - 1), v21))
            {
              break;
            }

            result = verify_chain_signatures(&v33[v17], v16, a7);
            if (result)
            {
              break;
            }

            v16 += 6;
            ++v17;
            v15 = v19;
            if (!--v18)
            {
              if (v33 > 0xFFFFFFFFFFFFFFDFLL || (*v26 = v34, *a4 = v35, v37 > 0xFFFFFFFFFFFFFFDFLL))
              {
                __break(0x5513u);
              }

              else if (v38 && (v23 = v39) != 0)
              {
                result = 0;
                if (a5)
                {
                  if (a6)
                  {
                    result = 0;
                    *a5 = v38;
                    *a6 = v23;
                  }
                }
              }

              else
              {
                return 0;
              }

              return result;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t parse_ec_chain(uint64_t result, unsigned int a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    return 0;
  }

  v7 = a4;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v22 = result;
  v24 = ~result;
  v23 = ~a3;
  v21 = ~a4;
  if (a5 <= a6)
  {
    v12 = a6;
  }

  else
  {
    v12 = a5;
  }

  v20 = ~v12;
  v14 = ~a7;
  v15 = 16 * a2;
  while (v11 <= v24 && v10 <= v23)
  {
    result = DERParseSequenceToObject(v22 + v11, DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, v8, 0x30uLL, 0x30uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v9 > v21)
    {
      break;
    }

    result = DERParseSequenceToObject(v8, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v7, 0xA0uLL, 0xA0uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v20)
    {
      break;
    }

    v31 = 0u;
    v32 = 0u;
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    if (DERParseSequenceContentToObject((v7 + 96), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v31, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseSequenceContentToObject(&v31, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v28, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (!DEROidCompare(&v28, &oidEcPubKey))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseBitString(&v32, (a5 + v11), &v30))
    {
      return 0xFFFFFFFFLL;
    }

    if (v30)
    {
      return 0xFFFFFFFFLL;
    }

    v25 = 0;
    v26 = 0;
    v27 = 0;
    result = DERDecodeItem(&v29, &v25);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    v16 = (a6 + v11);
    v17 = v27;
    *v16 = v26;
    v16[1] = v17;
    if (v11 > v14)
    {
      break;
    }

    result = parse_extensions(v7, (a7 + v11));
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    v11 += 16;
    v8 += 48;
    v7 += 160;
    v10 += 48;
    v9 += 160;
    if (v15 == v11)
    {
      return 0;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t verify_chain_img4_ec_v2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (!a1)
  {
    return result;
  }

  v10 = a2;
  if (!a2 || !a3 || !a4)
  {
    return result;
  }

  bzero(v20, 0x220uLL);
  v19[0] = a1;
  v19[1] = v10;
  if (a8(v19, v20, 2))
  {
    return 0xFFFFFFFFLL;
  }

  result = parse_ec_chain(v20, 2u, v21, v23, v28, &v29, v30);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v23 > 0xFFFFFFFFFFFFFF5FLL)
  {
    goto LABEL_22;
  }

  if (__n != v27)
  {
    return 0xFFFFFFFFLL;
  }

  result = memcmp(__s1, __s2, __n);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v21 > 0xFFFFFFFFFFFFFFCFLL)
  {
LABEL_22:
    __break(0x5513u);
    return result;
  }

  result = verify_chain_signatures(v28, v22, a7);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v28 > 0xFFFFFFFFFFFFFFEFLL)
  {
    goto LABEL_22;
  }

  v17 = v28[3];
  *a3 = v28[2];
  *a4 = v17;
  if (v30 > 0xFFFFFFFFFFFFFFEFLL)
  {
    goto LABEL_22;
  }

  if (!v31)
  {
    return 0;
  }

  v18 = v32;
  if (!v32)
  {
    return 0;
  }

  result = 0;
  if (a5)
  {
    if (a6)
    {
      result = 0;
      *a5 = v31;
      *a6 = v18;
    }
  }

  return result;
}

uint64_t crack_chain_ecdsa256_sha256(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &LOCAL_EC256_SHA256_ROOT_CA_CERTIFICATE;
  a2[1] = 551;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384_hacktivate(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &LOCAL_EC384_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 610;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &EC384_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 542;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384_qa(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &QA_EC384_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 540;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t img4_verify_signature_with_chain(unint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, void *a7, void *a8)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  if (verify_chain_img4_v1(a1, a2, &v17, &v18, &v15, &v16, kImg4DecodeSecureBootRsa1kSha1))
  {
    return 0xFFFFFFFFLL;
  }

  *a7 = v15;
  *a8 = v16;
  result = verify_signature_rsa(v17, v18, a3, a4, a5, a6, kImg4DecodeSecureBootRsa1kSha1);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t _crack_chain_with_anchor(unint64_t *a1, uint64_t a2, unsigned int a3)
{
  v18 = 0;
  v19 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v5 = ~a2;
  v6 = 1;
  v7 = *a1;
  v8 = a1[1];
  while (1)
  {
    v18 = v7;
    v19 = v8;
    result = DERDecodeItem(&v18, &v15);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (__CFADD__(v16, v17))
    {
      break;
    }

    v10 = v16 + v17;
    v11 = v16 + v17 - v7;
    v12 = !(v11 >> 17) && v8 >= v11;
    if (!v12 || v6 >= a3)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5 < 16 * v6)
    {
      break;
    }

    v14 = (a2 + 16 * v6);
    *v14 = v7;
    v14[1] = v11;
    if (v10 < v7)
    {
      break;
    }

    v12 = v8 >= v11;
    v8 -= v11;
    if (!v12)
    {
      goto LABEL_21;
    }

    ++v6;
    v7 = v10;
    if (!v8)
    {
      if (v6 == a3)
      {
        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  __break(0x5513u);
LABEL_21:
  __break(0x5515u);
  return result;
}

uint64_t parse_extensions(uint64_t a1, void *a2)
{
  v11[0] = 0;
  v11[1] = 0;
  v9[1] = 0;
  v10 = 0;
  v8 = 0;
  v9[0] = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  *a2 = 0;
  a2[1] = 0;
  if (!*(a1 + 152))
  {
    return 0;
  }

  if (DERDecodeSeqInit(a1 + 144, &v10, v11) || v10 != 0x2000000000000010)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 1;
  while (1)
  {
    v4 = DERDecodeSeqNext(v11, &v8);
    if (v4)
    {
      break;
    }

    if (v8 != 0x2000000000000010 || DERParseSequenceContentToObject(v9, DERNumExtensionItemSpecs, &DERExtensionItemSpecs, v6, 0x30uLL, 0x30uLL))
    {
      return 0xFFFFFFFFLL;
    }

    v3 = 0;
    if (DEROidCompare(&oidAppleImg4ManifestCertSpec, v6))
    {
      memset(v12, 0, sizeof(v12));
      if (DERDecodeItem(&v7, v12) || v12[0] != 0x2000000000000011)
      {
        return 0xFFFFFFFFLL;
      }

      v3 = 0;
      *a2 = v7;
    }
  }

  if (v4 != 1 || (v3 & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t hybrid_scheme3_pubkey_cast(uint64_t result, uint64_t a2)
{
  if (a2 != 3129)
  {
    return 0;
  }

  v2 = *result == 0xC8233E0E5C386FFLL && *(result + 8) == 0x282042C0C823030;
  if (!v2 || *(result + 16) != 4)
  {
    return 0;
  }

  if (*(result + 533) != 537559556)
  {
    return 0;
  }

  return result;
}

uint64_t hybrid_scheme3_signature_cast(uint64_t result, uint64_t a2)
{
  if (a2 != 5160 || *result ^ 0x148233CEE5C386FFLL | *(result + 8) ^ 0x282041B1482301FLL | *(result + 16))
  {
    return 0;
  }

  if (*(result + 529) != 319980036)
  {
    return 0;
  }

  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBuffer(uint64_t result, unint64_t *a2, int a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_54;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_55;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        v17 = v16 < v15 && a3 == 0;
        v18 = (v12 + 1);
        if (v17)
        {
          return 3;
        }

LABEL_28:
        if (v15 > (~v18 & 0x7FFFFFFFFFFFFFFFLL))
        {
          return 7;
        }

        if (v18 <= v18 + v15)
        {
          result = 0;
          a2[1] = v18;
          a2[2] = v15;
          return result;
        }

        goto LABEL_55;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
LABEL_55:
        __break(0x5519u);
LABEL_56:
        __break(0x5515u);
        return result;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v18 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_55;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_56;
        }

        v23 = *v14++;
        v15 = (v15 << 8) | v23;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (v15 <= v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = a3;
          }

          result = 3;
          if (v15 >= 0x80 && (v24 & 1) != 0)
          {
            goto LABEL_28;
          }

          return result;
        }
      }
    }

LABEL_54:
    __break(0x5513u);
    goto LABEL_55;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_54;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_55;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseBooleanWithDefault(unsigned __int8 **a1, BOOL a2, BOOL *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
    v4 = **a1;
    if (v4 == 255 || v4 == 0)
    {
      a2 = v4 != 0;
LABEL_9:
      result = 0;
      *a3 = a2;
      return result;
    }
  }

  return 3;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, v5);
  if (!result)
  {
    if (HIDWORD(v5[0]))
    {
      result = 7;
    }

    else
    {
      result = 0;
      *a2 = v5[0];
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERParseIntegerSigned(uint64_t a1, _DWORD *a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64Signed(a1, v5);
  if (!result)
  {
    if (v5[0] == SLODWORD(v5[0]))
    {
      result = 0;
      *a2 = v5[0];
    }

    else
    {
      result = 7;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DERParseInteger64Signed(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  v4 = *result + v2;
  v5 = **result;
  if (**result)
  {
    if (v5 != 255)
    {
      goto LABEL_7;
    }

    if (v2 != 1)
    {
      if ((v3 + 1) < v4)
      {
        if ((v3[1] & 0x80000000) == 0)
        {
LABEL_7:
          if (v2 > 8)
          {
            return 7;
          }

          goto LABEL_10;
        }

        return 3;
      }

LABEL_21:
      __break(0x5519u);
      return result;
    }
  }

  else if (v2 != 1)
  {
    if ((v3 + 1) >= v4)
    {
      goto LABEL_21;
    }

    if ((v3[1] & 0x80000000) == 0)
    {
      return 3;
    }

    if (v2 > 9)
    {
      return 7;
    }
  }

LABEL_10:
  v6 = v5 >> 7;
  do
  {
    v7 = v6;
    v8 = *v3++;
    v6 = v8 | (v6 << 8);
    --v2;
  }

  while (v2);
  if ((v5 & 0x80000000) == 0 && v7 << 8 < 0)
  {
    return 7;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  v9[3] = *MEMORY[0x277D85DE8];
  memset(v9, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v9, 0);
  if (result)
  {
    goto LABEL_7;
  }

  v6 = v9[0];
  *a2 = v9[0];
  if (v6 >> 1 != 0x1000000000000008)
  {
    result = 2;
    goto LABEL_7;
  }

  if (__CFADD__(v9[1], v9[2]))
  {
    __break(0x5513u);
  }

  else
  {
    v7 = v9[1] + v9[2];
    if (v9[1] <= v9[1] + v9[2])
    {
      result = 0;
      *a3 = v9[1];
      a3[1] = v7;
LABEL_7:
      v8 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    result = 1;
    goto LABEL_8;
  }

  v11[0] = *a1;
  v11[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v11, a2, 0);
  if (result)
  {
LABEL_8:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v8 = a2[1];
  v7 = a2[2];
  if (!__CFADD__(v8, v7))
  {
    v9 = v8 + v7;
    if (v9 <= a1[1] && *a1 <= v9)
    {
      result = 0;
      *a1 = v9;
      goto LABEL_8;
    }

    __break(0x5519u);
  }

  __break(0x5513u);
  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v13[3] = *MEMORY[0x277D85DE8];
  memset(v13, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v13, 0);
  if (!result)
  {
    if (v13[0] == 0x2000000000000010)
    {
      result = DERParseSequenceContentToObject(&v13[1], a2, a3, a4, a5, a6);
    }

    else
    {
      result = 2;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v38 = *MEMORY[0x277D85DE8];
  v36 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v36 = *a1;
  v37 = v13;
  if (a2)
  {
    v14 = 0;
    while (1)
    {
      memset(v35, 170, sizeof(v35));
      v16 = v36;
      v15 = v37;
      result = DERDecodeSeqNext(&v36, v35);
      if (result)
      {
        if (result == 1)
        {
          if (a2 <= v14)
          {
            result = 0;
          }

          else
          {
            v29 = (a3 + 24 * v14 + 16);
            v30 = a2 - v14;
            result = 0;
            while (1)
            {
              v31 = *v29;
              v29 += 12;
              if ((v31 & 1) == 0)
              {
                break;
              }

              if (!--v30)
              {
                goto LABEL_51;
              }
            }

            result = 5;
          }
        }

        goto LABEL_51;
      }

      if (a2 <= v14)
      {
        result = 2;
        goto LABEL_51;
      }

      while (1)
      {
        if (24 * v14 > ~a3)
        {
          goto LABEL_58;
        }

        v18 = a3 + 24 * v14;
        v19 = *(v18 + 16);
        if ((v19 & 2) != 0 || v35[0] == *(v18 + 8))
        {
          break;
        }

        result = 2;
        if ((v19 & 1) != 0 && a2 > ++v14)
        {
          continue;
        }

        goto LABEL_51;
      }

      if ((v19 & 4) == 0)
      {
        v20 = *v18;
        v21 = *v18 + 16;
        if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
        {
          result = 7;
          goto LABEL_51;
        }

        if (v20 > ~a4)
        {
          goto LABEL_58;
        }

        v23 = (a4 + v20);
        v24 = v23 + 16;
        if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
        {
          goto LABEL_59;
        }

        *v23 = *&v35[1];
        if ((v19 & 8) != 0)
        {
          if (v16 >= v35[1])
          {
            if (v15 < v16 || *(v23 + 1) > v15 - v16)
            {
              goto LABEL_59;
            }

            *v23 = v16;
            result = 3;
            goto LABEL_51;
          }

          v27 = *(v23 + 1);
          v28 = v27 + v35[1] - v16;
          if (__CFADD__(v27, v35[1] - v16))
          {
            __break(0x5500u);
            return result;
          }

          if (v15 < v16 || v28 > v15 - v16)
          {
            goto LABEL_59;
          }

          *v23 = v16;
          *(v23 + 1) = v28;
        }
      }

      if (a2 == ++v14)
      {
        if (!__CFADD__(v35[1], v35[2]))
        {
          v32 = a1[1];
          if (!__CFADD__(*a1, v32))
          {
            v11 = v35[1] + v35[2];
            v13 = *a1 + v32;
            break;
          }
        }

LABEL_58:
        __break(0x5513u);
        goto LABEL_59;
      }

      if (a2 <= v14)
      {
        v11 = v36;
        v13 = v37;
        break;
      }
    }
  }

  if (v11 == v13)
  {
    result = 0;
  }

  else
  {
    result = 3;
  }

LABEL_51:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  memset(v5, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v5, 0);
  if (!result)
  {
    if (v5[0] - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      result = DERDecodeSequenceContentWithBlock(&v5[1], a2);
    }

    else
    {
      result = 2;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DERDecodeSequenceContentWithBlock(unint64_t *a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (__CFADD__(*a1, v3))
  {
    __break(0x5513u);
LABEL_13:
    __break(0x5519u);
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_13;
  }

  v10[0] = *a1;
  v10[1] = v4;
  memset(v9, 170, sizeof(v9));
  v8 = 0;
  do
  {
    if (v8)
    {
      result = 0;
      goto LABEL_11;
    }

    LODWORD(result) = DERDecodeSeqNext(v10, v9);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v9, &v8);
  }

  while (!result);
  if (result <= 1)
  {
    result = 0;
  }

  else
  {
    result = result;
  }

LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL DEROidCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    return v4 == *(a2 + 8) && memcmp(*a1, *a2, v4) == 0;
  }

  return result;
}

void ACFURTKitNVRMGenerator::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, a1, v3, v4, v5, v6, v7, "ACFURTKitNVRMGenerator");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed: NVRM allocation failure\n", v2, v3, v4, v5, v6, "ACFURTKitNVRMGenerator");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed: max length reservation is not equal to the data buffer\n", v2, v3, v4, v5, v6, "ACFURTKitNVRMGenerator");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed: could not allocate variable\n", v2, v3, v4, v5, v6, "ACFURTKitNVRMGenerator");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed: unsupported NV flags\n", v2, v3, v4, v5, v6, "ACFURTKitNVRMGenerator");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed: header length check validation failed\n", v2, v3, v4, v5, v6, "ACFURTKitNVRMGenerator");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed: data buffer is empty\n", v2, v3, v4, v5, v6, "ACFURTKitNVRMGenerator");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed: bad input parameter\n", v2, v3, v4, v5, v6, "ACFURTKitNVRMGenerator");
}

void ACFURTKitNVRMGenerator::copy(ACFULogging *a1, uint64_t a2)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  v10 = *a1;
  v11 = *(*a2 + 8);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: length reservation requirements not met (max: %d, actual:%d)\n", v5, v6, v7, v8, v9, "ACFURTKitNVRMGenerator");
}

void ACFURTKitNVRMGenerator::add(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: cowardly retreating since overwrite was not requested\n", v2, v3, v4, v5, v6, "ACFURTKitNVRMGenerator");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to allocate NVRM data\n", v2, v3, v4, v5, v6, "ACFURTKitNVRMGenerator");
}

void ACFUDiagnostics::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create debug directory (status: %d)\n", v2, v3, v4, v5, v6, "ACFUDiagnostics");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to allocate debugPathToCreate\n", v2, v3, v4, v5, v6, "ACFUDiagnostics");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to allocate fDebugLogPath\n", v2, v3, v4, v5, v6, "ACFUDiagnostics");
}

void ACFUDiagnostics::saveLogFile(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to write data to output URL (%d)\n", v2, v3, v4, v5, v6, "ACFUDiagnostics");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: bad parameter: there is no data in the container\n", v3, v4, v5, v6, v7, "ACFUDiagnostics");

  CFRelease(a1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create output URL\n", v2, v3, v4, v5, v6, "ACFUDiagnostics");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: bad parameter: inputs to function are invalid\n", v2, v3, v4, v5, v6, "ACFUDiagnostics");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no debug log path provided by restore\n", v2, v3, v4, v5, v6, "ACFUDiagnostics");
}

void ACFURestore::getStepName(void **a1)
{
  do
  {
    v2 = *(a1 - 1);
    a1 -= 3;
    if (v2 < 0)
    {
      operator delete(*a1);
    }
  }

  while (a1 != ACFURestore::getStepName(ACFURestore::UpdateSteps)::UpdateStepString);
}

void ACFURestore::copyFDRTrustObjectDigest(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to decode manifest object (status: %d)\n", v2, v3, v4, v5, v6, "ACFURestore");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to decode manifest property object (status: %d)\n", v2, v3, v4, v5, v6, "ACFURestore");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to allocate hash digest\n", v2, v3, v4, v5, v6, "ACFURestore");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get AP ticket\n", v2, v3, v4, v5, v6, "ACFURestore");
}

void ACFURestore::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: unexpected debug log path type\n", v2, v3, v4, v5, v6, "ACFURestore");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: ticket key is of unsupported type\n", v2, v3, v4, v5, v6, "ACFURestore");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: ticket key must be provided\n", v2, v3, v4, v5, v6, "ACFURestore");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to setup diagnostics\n", v2, v3, v4, v5, v6, "ACFURestore");
}

uint64_t ACFUROM::init(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (!*a3 || !*a4)
  {
    return 0;
  }

  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a1[2];
  a1[1] = v4;
  a1[2] = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v11 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a1[4];
  a1[3] = v11;
  a1[4] = v10;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v14 = *a4;
  v13 = a4[1];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a1[6];
  a1[5] = v14;
  a1[6] = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return 1;
}

void ACFUROM::bootFirmware(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware not present to boot\n", v2, v3, v4, v5, v6, "ACFUROM");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to push firmware (%d)\n", v2, v3, v4, v5, v6, "ACFUROM");
}

BOOL ACFUTransport::init(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = a2[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v4 = *(a1 + 16);
    *(a1 + 8) = v2;
    *(a1 + 16) = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return v2 != 0;
}

void ACFUDataContainer::copyData(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: object does not hold any data\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: offset out of range\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create mutable data in unoptimized path\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create mutable data in optimized path\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  v2 = __error();
  strerror(*v2);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to map file: (%s)\n", v3, v4, v5, v6, v7, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: invalid file descriptor\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get backing length\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: invalid length value\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

void ACFUDataContainer::setData(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to overwrite file (%d)\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create path url\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file path has not been initialized\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed obtain new file data\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: cannot setData for a memory optimized data container.\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

const __CFData *ACFUCommon::Parameter::GetDataAsType<unsigned char>(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(*a1);
    if (Length > 1)
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  return result;
}

const __CFData *ACFUCommon::Parameter::GetDataAsType<unsigned short>(uint64_t a1, _WORD *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(*a1);
    if (Length > 2)
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  return result;
}

void ACFUCommon::getFileSize(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get file stats\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  v2 = __error();
  strerror(*v2);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to open file (%s)\n", v3, v4, v5, v6, v7, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get file system reprensetation\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

void *ACFUCommon::Parameter::dataAsString(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: invalid destination size indicated\n", v3, v4, v5, v6, v7, "ACFUCommon");

  return std::string::basic_string[abi:ne200100]<0>(a1, "BORKED");
}

void ACFUCommon::createURLByAppendingStrings(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create url from string\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to append strings together\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to allocate strings to join array\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed with bad input parameters\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

void ACFUCommon::createFileDatafromFilePath(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create file data from file path (status: %u)\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create url from string.\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no file path provided.\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

void ACFUCommon::createMutableFileDatafromFilePath(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ferror(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file i/o error (code: %d)\n", v3, v4, v5, v6, v7, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create mutable data\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get file system reprensetation\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: bad input file parameters\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file is empty (file size: %zu)\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create url from string\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no file path provided\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

void ACFUCommon::parseDebugArgs(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Invalid Type of Updater Options dict\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Invalid Type of DebugArgs\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Missing = for key: %s\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to get DebugArgs buffer\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Empty DebugArgs\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Invalid arguments to parseDebugArgs\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Empty options dict\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

void ACFUFile::fileVersionLog(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: data exceeds local buffer size\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no data to log\n", v2, v3, v4, v5, v6, "ACFUFile");
}

void ACFUFile::saveToPath(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create directory to save firmware (status: %d)\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to save file (%d)\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to write some or all of data\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to obtain reference of data from data container\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not create URL to file\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: cannot save data using optimized flow\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no file data?!\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file name not specified\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: bad parameters\n", v2, v3, v4, v5, v6, "ACFUFile");
}

void ACFUFile::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: data is of an unsupported type\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create data container\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: bad parameter!\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no file name specified\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: data is of an unsupported type\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create data container\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create ftab file path\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file name does not exist\n", v2, v3, v4, v5, v6, "ACFUFile");
}

void ACFUTrace::getTrace()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    *(&qword_2814622B0 + 5) = 0;
    qword_2814622B0 = 0;

    __cxa_guard_release(&_MergedGlobals);
  }
}

void ACFUFirmware::saveFirmware(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create directory to save firmware (status: %d)\n", v2, v3, v4, v5, v6, "ACFUFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to save packaged firmware file\n", v2, v3, v4, v5, v6, "ACFUFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: savePath for FW not specified. This needs to be specified.\n", v2, v3, v4, v5, v6, "ACFUFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: fFirmwareFile has not been initialized.\n", v2, v3, v4, v5, v6, "ACFUFirmware");
}

void ACFUFirmware::hashData(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: empty file\n", v2, v3, v4, v5, v6, "ACFUFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: SHA512 failed\n", v2, v3, v4, v5, v6, "ACFUFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: SHA384 failed\n", v2, v3, v4, v5, v6, "ACFUFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: SHA256 failed\n", v2, v3, v4, v5, v6, "ACFUFirmware");
}

void ACFUFirmware::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to allocate measurements dict\n", v2, v3, v4, v5, v6, "ACFUFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, a1, v3, v4, v5, v6, v7, "ACFUFirmware");
}

void ACFUFTABFile::setManifestOnData(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware data is invalid and does not meet ftab standards\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware data container is invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: something went wrong, extra bytes in file\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not obtain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: manifest data has no bytes\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no manifest input provided\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: function cannot directly manipulate file data with optimized flow\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data must be valid or firmware data must be provided\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::isValidFileData(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: manifest present beyond the bounds of the file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: invalid FTAB file\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Payload is out of valid range\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: File indicated is within header space\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: payload is out of valid range\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file indicated is within header space\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to acquire cf data byte pointer\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to acquire ftab file header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: manifest present in space allocated for header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  v8 = *a1;
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: too many files specified or there are no files. Limit is %d. Num Files: %d\n", v3, v4, v5, v6, v7, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: header is bigger than the file\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file is smaller than the ftab header size\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::setManifestToTopOnData(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware data is invalid and does not meet ftab standards\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware data container is invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed obtain new file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not allocate data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not obtain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: function cannot directly manipulate file data with optimized flow\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data must be valid or firmware data must be provided\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::removeManifestPadding(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no manifest preset in dataref\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no dataref\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::isCacheValid(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: number of files in cache is invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy ftab file header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy ftab header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no file data?!\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::updateCache(ACFULogging *a1)
{
  OUTLINED_FUNCTION_4(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: specified tag name is invalid! Tag name: %s\n", v2, v3, v4, v5, v6, v7);
}

void ACFUFTABFile::copyManifest(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy ftab header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::setBootNonce(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not obtain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: function is not supported in memory optimized flow. Memory optimized files are read only\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::getBootNonce(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy ftab header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::addNewFileToFTABOnData(ACFULogging *a1)
{
  OUTLINED_FUNCTION_4(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: tag is either larger or smaller than limit %u (size: %lu)\n", v2, v3, v4, v5, v6, v7);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware data is invalid and does not meet ftab standards\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware data container is invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to obtain copy of manifest\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to update manifest\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed obtain new file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to update file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to update cache\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not allocate data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not obtain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  OUTLINED_FUNCTION_4(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: cowardly retreating because tag '%s' exists in runtime MMIO File Data. I refuse to overwrite existing files!\n", v2, v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_4(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: cowardly retreating because tag '%s' exists. I refuse to overwrite existing files!\n", v2, v3, v4, v5, v6, v7);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data has no bytes\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data provided is not valid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data must be valid or firmware data must be provided\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::updateFileInFTABOnData(ACFULogging *a1)
{
  OUTLINED_FUNCTION_4(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: tag is either larger or smaller than limit %u (size: %lu)\n", v2, v3, v4, v5, v6, v7);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware data is invalid and does not meet ftab standards\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: cannot update a file if no files exist\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy ftab header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware data container is invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  OUTLINED_FUNCTION_4(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: cannot update tag '%s' because it does not exist\n", v2, v3, v4, v5, v6, v7);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to obtain copy of manifest\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to update manifest\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not obtain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: input data has no bytes\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data provided is not valid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data must be valid or firmware data must be provided\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::removeFileFromFTAB(ACFULogging *a1)
{
  OUTLINED_FUNCTION_4(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: tag is either larger or smaller than limit %u (size: %lu)\n", v2, v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_4(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: tag '%s' doesn't exist\n", v2, v3, v4, v5, v6, v7);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not remove file entry from ftab cache\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not obtain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: function is not supported in memory optimized flow. Memory optimized files are read only\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::moveFileToTop(ACFULogging *a1)
{
  OUTLINED_FUNCTION_4(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: tag is either larger or smaller than limit %u (size: %lu)\n", v2, v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_4(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: tag '%s' doesn't exist\n", v2, v3, v4, v5, v6, v7);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: didn't find requested tag\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  v3 = OUTLINED_FUNCTION_4(a1);
  v9 = *(CFDataGetBytePtr(v2) + 4);
  CFDataGetLength(v1);
  ACFULogging::handleMessage(v3, 2u, "%s::%s: beginning manifest offset mismatch: %u != %ld\n", v4, v5, v6, v7, v8, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to update file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to reinit cache\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  v8 = *(CFDataGetBytePtr(a1) + 13);
  CFDataGetLength(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: first file offset mismatch: %u < %ld\n", v3, v4, v5, v6, v7, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create new data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not obtain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: function is not supported in memory optimized flow. Memory optimized files are read only\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::initCache(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy file header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy ftab file header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy ftab header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no file data?!\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::setFTABValidity(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not obtain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: function is not supported in memory optimized flow. Memory optimized files are read only\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::copyFWDataByName(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to retain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: specified tag name is invalid!\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  OUTLINED_FUNCTION_4(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: file '%s' does not exist\n", v2, v3, v4, v5, v6, v7);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::copyFirmwareContainer(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to add new file\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to update file\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to obtain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::getFileSizeByFileName(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed obtain file size\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUDataAccess::createPersonalizedFirmwarePath(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create path to firmware directory\n", v2, v3, v4, v5, v6, "ACFUDataAccess");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get firmware root path\n", v2, v3, v4, v5, v6, "ACFUDataAccess");
}

void RTKitFirmware::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to initialize base object\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create manifest\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create firmware\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to initialize base object\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: No save path specified\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

void RTKitFirmware::setFirmwareNonce(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Bad parameter\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Invalid firmware file\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

void RTKitFirmware::openFirmwareInRestoreOptions(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Unrecognized CF object!\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to open firmware in restore options\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to find firmware in restore options\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

void RTKitFirmware::saveFirmware(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to set ftab validity\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: No manifest provided with firmware. Manifest is required!\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Invalid firmware file\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

void ACFULogging::getLogInstance()
{
  if (__cxa_guard_acquire(&_MergedGlobals_0))
  {
    ACFULogging::ACFULogging(&unk_2814622C8);
    __cxa_atexit(ACFULogging::~ACFULogging, &unk_2814622C8, &dword_2402B0000);

    __cxa_guard_release(&_MergedGlobals_0);
  }
}

void ACFUACIPCTransport::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to init ACFUTransport\n", v2, v3, v4, v5, v6, "ACFUACIPCTransport");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create dispatch queue\n", v2, v3, v4, v5, v6, "ACFUACIPCTransport");
}

void ACFUACIPCTransport::processWriteCommand(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: unexpected (too many) amount of bytes were received from device, bailing\n", v2, v3, v4, v5, v6, "ACFUACIPCTransport");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to send response to device error: 0x%x\n", v2, v3, v4, v5, v6, "ACFUACIPCTransport");
}

void ACFUACIPCTransport::processDoneCommand(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file transfer session still not closed\n", v2, v3, v4, v5, v6, "ACFUACIPCTransport");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to send response to device error: 0x%x\n\n", v2, v3, v4, v5, v6, "ACFUACIPCTransport");
}

void ACFUACIPCTransport::processCommandFromDevice(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to process read command\n", v2, v3, v4, v5, v6, "ACFUACIPCTransport");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to process close command\n", v2, v3, v4, v5, v6, "ACFUACIPCTransport");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to process open command for write\n", v2, v3, v4, v5, v6, "ACFUACIPCTransport");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to process open command for read\n", v2, v3, v4, v5, v6, "ACFUACIPCTransport");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: invalid parameter (done)\n", v2, v3, v4, v5, v6, "ACFUACIPCTransport");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: invalid parameter (acipcInterface)\n", v2, v3, v4, v5, v6, "ACFUACIPCTransport");
}

const __CFData *ACFUCommon::Parameter::GetDataAsType<unsigned long long>(uint64_t a1, void *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(*a1);
    if (Length > 8)
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  return result;
}

void ACFURTKitROM::init(std::__shared_weak_count **a1, std::__shared_weak_count **a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a2);
  }
}

void ACFURTKitROM::gatherPersonalizationParameters(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: failed to reset chip (%d)\n", v2, v3, v4, v5, v6, v7);
}

void ACFURTKitROM::updateFirmware(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: could not find firmware in restore options (%d)\n", v2, v3, v4, v5, v6, v7);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to read boot nonce from firmware\n", v3, v4, v5, v6, v7, "ACFURTKitROM");

  CFRelease(a1);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: failed to reset chip (%d)\n", v2, v3, v4, v5, v6, v7);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: failed to ping device after firmware push (%d)\n", v2, v3, v4, v5, v6, v7);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: failed to perform preSave actions (%d)\n", v2, v3, v4, v5, v6, v7);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: failed to save firmware (%d)\n", v2, v3, v4, v5, v6, v7);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to read boot nonce from firmware\n", v2, v3, v4, v5, v6, "ACFURTKitROM");
}

uint64_t ACFURTKitROM::updateFirmware(ACFULogging *a1, uint64_t a2, ACFUFirmware **a3)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to boot firmware (%d)\n", v6, v7, v8, v9, v10, "ACFURTKitROM");
  v11 = *(a2 + 40);
  v12 = ACFUFirmware::copyFWContainer(*a3);
  return ACFUDiagnostics::addItem(v11, @"ftab.bin", v12, 1);
}

void ACFURTKitROM::bootFirmware(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware not present to boot\n", v2, v3, v4, v5, v6, "ACFURTKitROM");
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: failed to set the boot nonce (%d)\n", v2, v3, v4, v5, v6, v7);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: boot nonce missing\n", v2, v3, v4, v5, v6, "ACFURTKitROM");
}

void ACFURTKitROM::copyManifestSigCert(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_0();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: failed to decode manifest: %d\n", v2, v3, v4, v5, v6, v7);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: sig cert start falls before start of manifest\n", v2, v3, v4, v5, v6, "ACFURTKitROM");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: sig cert start falls after end of manifest\n", v2, v3, v4, v5, v6, "ACFURTKitROM");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: invalid sig cert length\n", v2, v3, v4, v5, v6, "ACFURTKitROM");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get manifest length\n", v2, v3, v4, v5, v6, "ACFURTKitROM");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get manifest start\n", v2, v3, v4, v5, v6, "ACFURTKitROM");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no manifest\n", v2, v3, v4, v5, v6, "ACFURTKitROM");
}

const void *ACFURestoreHost::copyDataFromFileDictionary(ACFULogging *key, CFDictionaryRef theDict, int a3)
{
  if (!key)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: key value not provided\n", v9, v10, v11, v12, v13, "ACFURestoreHost");
    return 0;
  }

  if (!theDict)
  {
    v14 = ACFULogging::getLogInstance(key);
    ACFULogging::handleMessage(v14, 2u, "%s::%s: firmware file dictionary not provided\n", v15, v16, v17, v18, v19, "ACFURestoreHost");
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, key);
  v5 = Value;
  if (a3)
  {
    if (Value)
    {
      AMSupportSafeRetain();
    }
  }

  else
  {
    v6 = *MEMORY[0x277CBECE8];
    AMSupportCreateDataFromFileURL();
    return 0;
  }

  return v5;
}